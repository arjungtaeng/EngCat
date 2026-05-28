import type { WordCard, SentenceCard } from '../store/useCardsStore';

export const CEFR_LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'] as const;
export type CEFRLevel = typeof CEFR_LEVELS[number];

/**
 * 사용자 레벨에 따른 콘텐츠 분배 비율
 * 각 레벨은: { prev: 이전레벨%, current: 현재레벨%, next: 다음레벨% }
 */
const LEVEL_DISTRIBUTION: Record<CEFRLevel, { prev: number; current: number; next: number }> = {
  A1: { prev: 0, current: 85, next: 15 },    // 초보: 현재 집중 + A2 미리보기
  A2: { prev: 15, current: 75, next: 10 },   // A1 복습 + 현재 + B1 미리보기
  B1: { prev: 10, current: 75, next: 15 },   // A2 복습 + 현재 + B2 미리보기
  B2: { prev: 10, current: 75, next: 15 },   // B1 복습 + 현재 + C1 미리보기
  C1: { prev: 10, current: 75, next: 15 },   // B2 복습 + 현재 + C2 미리보기
  C2: { prev: 15, current: 85, next: 0 },    // 이전 복습 + 현재 집중 (최상급)
};

/**
 * 레벨에 맞는 콘텐츠인지 확인
 * - usage_frequency가 높으면 하위 레벨에서도 제시 가능
 * - 너무 어려운 콘텐츠는 상위 레벨에서만 제시
 */
function matchesLevel<T extends { cefr?: string; usageFrequency?: number }>(
  item: T,
  targetLevel: CEFRLevel,
  position: 'prev' | 'current' | 'next',
): boolean {
  if (!item.cefr) return false;

  const itemLevel = CEFR_LEVELS.indexOf(item.cefr as CEFRLevel);
  const targetIdx = CEFR_LEVELS.indexOf(targetLevel);

  // 현재 레벨: 정확히 일치
  if (position === 'current') {
    return item.cefr === targetLevel;
  }

  // 이전 레벨: 1~2 레벨 아래, 자주 사용되는 표현은 포함
  if (position === 'prev') {
    if (itemLevel === targetIdx - 1) return true;
    if (itemLevel === targetIdx - 2 && (item.usageFrequency || 0) >= 3) return true;
    return false;
  }

  // 다음 레벨: 1~2 레벨 위, 기초적이거나 자주 사용되는 것
  if (position === 'next') {
    if (itemLevel === targetIdx + 1) return true;
    if (itemLevel === targetIdx + 2 && (item.usageFrequency || 0) >= 4) return true;
    return false;
  }

  return false;
}

/**
 * 사용자 레벨에 맞는 콘텐츠 믹스 생성
 * seed를 주면 deterministic (하루 동안 동일), 없으면 Math.random
 */
export function getLeveledContent<T extends { cefr?: string; usageFrequency?: number }>(
  allItems: T[],
  userLevel: CEFRLevel,
  countNeeded: number,
  seed?: number,
): T[] {
  const dist = LEVEL_DISTRIBUTION[userLevel];
  const prevCount = Math.round((countNeeded * dist.prev) / 100);
  const currentCount = Math.round((countNeeded * dist.current) / 100);
  const nextCount = Math.round((countNeeded * dist.next) / 100);

  const prev = allItems.filter(item => matchesLevel(item, userLevel, 'prev'));
  const current = allItems.filter(item => matchesLevel(item, userLevel, 'current'));
  const next = allItems.filter(item => matchesLevel(item, userLevel, 'next'));

  // seed가 있으면 LCG 기반 deterministic shuffle, 없으면 Math.random
  const shuffle = <U,>(arr: U[]): U[] => {
    const result = [...arr];
    let s = seed != null ? Math.abs(seed) || 1 : null;
    const rand = (): number => {
      if (s == null) return Math.random();
      s = (s * 9301 + 49297) % 233280;
      return s / 233280;
    };
    for (let i = result.length - 1; i > 0; i--) {
      const j = Math.floor(rand() * (i + 1));
      [result[i], result[j]] = [result[j], result[i]];
    }
    return result;
  };

  const result: T[] = [];
  const used = new Set<T>();
  const take = (pool: T[], n: number) => {
    const picked = shuffle(pool.filter(x => !used.has(x))).slice(0, n);
    picked.forEach(x => used.add(x));
    return picked;
  };

  // 각 카테고리에서 필요한 개수만큼 선택
  if (prevCount > 0) result.push(...take(prev, prevCount));
  if (currentCount > 0) result.push(...take(current, currentCount));
  if (nextCount > 0) result.push(...take(next, nextCount));

  // 폴백: 부족분을 인접 레벨에서 보충 (current → next → prev 우선순위)
  if (result.length < countNeeded) {
    result.push(...take(current, countNeeded - result.length));
  }
  if (result.length < countNeeded) {
    result.push(...take(next, countNeeded - result.length));
  }
  if (result.length < countNeeded) {
    result.push(...take(prev, countNeeded - result.length));
  }
  // 최후 폴백: 레벨 무관하게 남은 풀에서
  if (result.length < countNeeded) {
    result.push(...take(allItems, countNeeded - result.length));
  }

  // 섞기
  return shuffle(result).slice(0, countNeeded);
}

/**
 * 사용 빈도 설정 (높을수록 여러 레벨에서 제시됨)
 * - 1-2: 낮음 (해당 레벨에서만)
 * - 3-4: 중간 (인접 레벨에서도)
 * - 5: 높음 (2레벨 떨어져도 제시)
 */
export function estimateUsageFrequency(item: { en?: string; type?: string }): number {
  // 자주 사용되는 표현 판단 로직
  const commonPatterns = [
    'can you',
    'could you',
    'would you',
    'please',
    'thank you',
    'i\'d like',
    'have you',
    'do you',
    'is there',
    'what',
  ];

  if (!item.en) return 1;
  const text = item.en.toLowerCase();
  const matches = commonPatterns.filter(p => text.includes(p)).length;

  // 기본값 2에서 매칭된 패턴당 +1
  return Math.min(5, 2 + matches);
}
