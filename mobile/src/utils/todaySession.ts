import type { WordCard, SentenceCard } from '../store/useCardsStore';
import type { LearningRecord } from './learningRecord';
import { getLeveledContent, type CEFRLevel } from './leveledSession';

export const TOPIC_NAMES: Record<string, string> = {
  greeting:     '인사·소개',
  emotion:      '감정 표현',
  weather:      '날씨',
  shopping:     '쇼핑',
  cafe:         '카페·식당',
  transport:    '교통',
  health:       '건강',
  travel:       '여행',
  home:         '주거·생활',
  work:         '직장·비즈니스',
  education:    '교육',
  media:        '미디어·SNS',
  environment:  '환경',
  economy:      '경제',
  culture:      '문화·예술',
  sports:       '스포츠',
  discussion:   '의견·토론',
  presentation: '발표·프레젠테이션',
  negotiation:  '협상',
  humanities:   '문학·인문',
  technology:   '과학·기술',
  news:         '시사·뉴스',
  academic:     '학술',
};

export const TOPIC_ORDER = [
  'greeting','emotion','weather','shopping','cafe','transport','health','travel','home',
  'work','education','media','environment','economy','culture','sports',
  'discussion','presentation','negotiation','humanities','technology','news','academic',
];

interface Composition {
  words:        number;
  patterns:     number;
  collocations: number;
  idioms:       number;
  nuances:      number;
}

export const CEFR_COMPOSITIONS: Record<string, Composition> = {
  A1: { words: 10, patterns: 5, collocations: 0, idioms: 0, nuances: 0 },
  A2: { words: 10, patterns: 5, collocations: 0, idioms: 0, nuances: 0 },
  B1: { words: 10, patterns: 4, collocations: 3, idioms: 0, nuances: 0 },
  B2: { words: 10, patterns: 4, collocations: 3, idioms: 0, nuances: 0 },
  C1: { words: 10, patterns: 3, collocations: 3, idioms: 2, nuances: 1 },
  C2: { words: 10, patterns: 3, collocations: 3, idioms: 2, nuances: 1 },
};

export function getDayOfYear(now: Date = new Date()): number {
  const start = new Date(now.getFullYear(), 0, 0);
  return Math.floor((now.getTime() - start.getTime()) / 86400000);
}

export function shuffleStable<T>(arr: T[], seed: number): T[] {
  return [...arr]
    .map((x, i) => ({ x, s: ((i * 9301 + seed * 49297) % 233280) / 233280 }))
    .sort((a, b) => a.s - b.s)
    .map(o => o.x);
}

export function getTodayTopic(words: WordCard[]): string | null {
  const availableTopics = Array.from(new Set(words.map(w => w.topicId).filter(Boolean)));
  if (availableTopics.length === 0) return null;

  // 토픽별 이미지 보유 수 계산
  const topicScore = new Map<string, number>();
  for (const w of words) {
    if (!w.topicId) continue;
    if (w.img) topicScore.set(w.topicId, (topicScore.get(w.topicId) ?? 0) + 1);
    else if (!topicScore.has(w.topicId)) topicScore.set(w.topicId, 0);
  }

  // 이미지 있는 토픽 우선, 없는 토픽 후순위
  const withImg = TOPIC_ORDER.filter(t => (topicScore.get(t) ?? 0) > 0);
  const withoutImg = TOPIC_ORDER.filter(t => availableTopics.includes(t) && (topicScore.get(t) ?? 0) === 0);
  const ordered = [...withImg, ...withoutImg];
  if (ordered.length === 0) return availableTopics[0];
  return ordered[getDayOfYear() % ordered.length];
}

export interface TodaySession {
  topic:        string | null;
  topicLabel:   string;
  words:        WordCard[];
  patterns:     SentenceCard[];
  collocations: SentenceCard[];
  idioms:       SentenceCard[];
  nuances:      SentenceCard[];
  expressions:  SentenceCard[];
  composition:  Composition;
  totalCards:   number;
}

export function getTodaySession(
  words:       WordCard[],
  expressions: SentenceCard[],
  level:       string,
): TodaySession {
  const comp = CEFR_COMPOSITIONS[level] ?? CEFR_COMPOSITIONS.B1;
  const seed = getDayOfYear();
  const topic = getTodayTopic(words);
  const topicLabel = topic ? (TOPIC_NAMES[topic] ?? topic) : '오늘의 학습';

  if (!topic) {
    return {
      topic: null, topicLabel,
      words: [], patterns: [], collocations: [], idioms: [], nuances: [],
      expressions: [], composition: comp, totalCards: 0,
    };
  }

  // 토픽 내에서 레벨별 분배 적용 — 하루 동안 동일 (seed = dayOfYear)
  const topicWordsAll = words.filter(w => w.topicId === topic);
  const leveledWords = getLeveledContent(topicWordsAll, level as CEFRLevel, comp.words, seed);
  const wordsWithImg    = shuffleStable(leveledWords.filter(w => w.img), seed);
  const wordsWithoutImg = shuffleStable(leveledWords.filter(w => !w.img), seed);
  const todayWords = [...wordsWithImg, ...wordsWithoutImg].slice(0, comp.words);

  const topicExp = expressions.filter(e => e.topicId === topic);
  const pickWithImg = (arr: SentenceCard[], n: number) => {
    if (n === 0) return [];
    // 레벨별 분배 적용 (seed로 하루 동안 고정)
    const leveledArr = getLeveledContent(arr, level as CEFRLevel, n, seed);
    const withImg = shuffleStable(leveledArr.filter(e => e.img), seed);
    const noImg   = shuffleStable(leveledArr.filter(e => !e.img), seed);
    return [...withImg, ...noImg].slice(0, n);
  };
  const patterns     = pickWithImg(topicExp.filter(e => e.type === 'pattern'),     comp.patterns);
  const collocations = pickWithImg(topicExp.filter(e => e.type === 'collocation'), comp.collocations);
  const idioms       = pickWithImg(topicExp.filter(e => e.type === 'idiom'),       comp.idioms);
  const nuances      = pickWithImg(topicExp.filter(e => e.type === 'nuance'),      comp.nuances);
  const allExpressions = [...patterns, ...collocations, ...idioms, ...nuances];

  return {
    topic, topicLabel,
    words: todayWords,
    patterns, collocations, idioms, nuances,
    expressions: allExpressions,
    composition: comp,
    totalCards: todayWords.length + allExpressions.length,
  };
}

export interface ReviewSession {
  isPreview:   boolean;
  topic:       string | null;
  topicLabel:  string | null;
  words:       WordCard[];
  expressions: SentenceCard[];
}

// 어제 학습한 기록이 있으면 복습 세션, 없으면 (첫날) 무작위 예습 세션
export function getReviewSession(
  yesterday:      LearningRecord,
  allWords:       WordCard[],
  allExpressions: SentenceCard[],
  level:          string,
): ReviewSession {
  const comp = CEFR_COMPOSITIONS[level] ?? CEFR_COMPOSITIONS.B1;
  const yWordIds     = new Set(yesterday.wordIds);
  const ySentenceIds = new Set(yesterday.sentenceIds);

  if (yWordIds.size > 0 || ySentenceIds.size > 0) {
    const reviewWords       = allWords.filter(w => yWordIds.has(w.id));
    const reviewExpressions = allExpressions.filter(e => ySentenceIds.has(e.id));

    let topic: string | null = null;
    if (reviewWords.length > 0 && reviewWords[0].topicId) {
      topic = reviewWords[0].topicId;
    } else if (reviewExpressions.length > 0 && reviewExpressions[0].topicId) {
      topic = reviewExpressions[0].topicId;
    }

    return {
      isPreview:   false,
      topic,
      topicLabel:  topic ? (TOPIC_NAMES[topic] ?? topic) : null,
      words:       reviewWords,
      expressions: reviewExpressions,
    };
  }

  // 첫날: 레벨별 분배를 적용한 예습 세션 — 하루 동안 고정 (seed = dayOfYear)
  const seed = getDayOfYear();
  const previewWords = getLeveledContent(allWords, level as CEFRLevel, comp.words, seed);

  const pickByType = (type: SentenceCard['type'], n: number, seedOffset: number) => {
    if (n === 0) return [];
    const pool = allExpressions.filter(e => e.type === type);
    const leveledPool = getLeveledContent(pool, level as CEFRLevel, n, seed + seedOffset);
    return shuffleStable(leveledPool, seed).slice(0, n);
  };
  const previewExpressions = [
    ...pickByType('pattern',     comp.patterns,     1),
    ...pickByType('collocation', comp.collocations, 2),
    ...pickByType('idiom',       comp.idioms,       3),
    ...pickByType('nuance',      comp.nuances,      4),
  ];

  return {
    isPreview:   true,
    topic:       null,
    topicLabel:  null,
    words:       previewWords,
    expressions: previewExpressions,
  };
}
