// EngCat — Today's session helper (web)
// 토픽: 일주일 단위로 변경 (사용자가 선택 가능)
// 복습: 어제 학습한 단어/패턴
// 첫날 (복습 없음): 예습 단어/패턴 무작위

window.EC_TOPIC_NAMES = {
  greeting: '인사·소개', emotion: '감정 표현', weather: '날씨', shopping: '쇼핑',
  cafe: '카페·식당', transport: '교통', health: '건강', travel: '여행', home: '주거·생활',
  work: '직장·비즈니스', education: '교육', media: '미디어·SNS', environment: '환경',
  economy: '경제', culture: '문화·예술', sports: '스포츠',
  discussion: '의견·토론', presentation: '발표·프레젠테이션', negotiation: '협상',
  humanities: '문학·인문', technology: '과학·기술', news: '시사·뉴스', academic: '학술',
};

window.EC_TOPIC_ORDER = [
  'greeting','emotion','weather','shopping','cafe','transport','health','travel','home',
  'work','education','media','environment','economy','culture','sports',
  'discussion','presentation','negotiation','humanities','technology','news','academic',
];

window.EC_CEFR_COMPOSITIONS = {
  A1: { words: 10, patterns: 5, collocations: 0, idioms: 0, nuances: 0 },
  A2: { words: 10, patterns: 5, collocations: 0, idioms: 0, nuances: 0 },
  B1: { words: 10, patterns: 4, collocations: 3, idioms: 0, nuances: 0 },
  B2: { words: 10, patterns: 4, collocations: 3, idioms: 0, nuances: 0 },
  C1: { words: 10, patterns: 3, collocations: 3, idioms: 2, nuances: 1 },
  C2: { words: 10, patterns: 3, collocations: 3, idioms: 2, nuances: 1 },
};

window.ECGetDayOfYear = function(now) {
  const n = now || new Date();
  return Math.floor((n - new Date(n.getFullYear(), 0, 0)) / 86400000);
};

window.ECGetWeekOfYear = function(now) {
  const n = now || new Date();
  return Math.floor(window.ECGetDayOfYear(n) / 7);
};

function _shuffleStable(arr, seed) {
  return [...arr]
    .map((x, i) => ({ x, s: ((i * 9301 + seed * 49297) % 233280) / 233280 }))
    .sort((a, b) => a.s - b.s)
    .map(o => o.x);
}

// ── 레벨별 콘텐츠 분배 알고리즘 (mobile의 leveledSession.ts와 동일) ──
const _CEFR_LEVELS = ['A1','A2','B1','B2','C1','C2'];
const _LEVEL_DISTRIBUTION = {
  A1: { prev: 0,  current: 85, next: 15 },
  A2: { prev: 15, current: 75, next: 10 },
  B1: { prev: 10, current: 75, next: 15 },
  B2: { prev: 10, current: 75, next: 15 },
  C1: { prev: 10, current: 75, next: 15 },
  C2: { prev: 15, current: 85, next: 0  },
};

function _matchesLevel(item, target, position) {
  if (!item.cefr) return false;
  const i = _CEFR_LEVELS.indexOf(item.cefr);
  const t = _CEFR_LEVELS.indexOf(target);
  if (position === 'current') return item.cefr === target;
  if (position === 'prev') {
    if (i === t - 1) return true;
    if (i === t - 2 && (item.usageFrequency || item.usage_frequency || 0) >= 3) return true;
    return false;
  }
  if (position === 'next') {
    if (i === t + 1) return true;
    if (i === t + 2 && (item.usageFrequency || item.usage_frequency || 0) >= 4) return true;
    return false;
  }
  return false;
}

// 사용자 레벨에 따른 콘텐츠 믹스 + 폴백
// seed를 주면 deterministic (하루 동안 동일), 없으면 Math.random
window.ECGetLeveledContent = function(allItems, userLevel, countNeeded, seed) {
  if (countNeeded <= 0) return [];
  const dist = _LEVEL_DISTRIBUTION[userLevel];
  if (!dist) return [];
  const pCount = Math.round((countNeeded * dist.prev) / 100);
  const cCount = Math.round((countNeeded * dist.current) / 100);
  const nCount = Math.round((countNeeded * dist.next) / 100);
  const prev = allItems.filter(x => _matchesLevel(x, userLevel, 'prev'));
  const curr = allItems.filter(x => _matchesLevel(x, userLevel, 'current'));
  const next = allItems.filter(x => _matchesLevel(x, userLevel, 'next'));
  // seed가 있으면 stable shuffle, 없으면 random
  const sh = seed != null
    ? (a) => _shuffleStable(a, seed)
    : (a) => [...a].sort(() => Math.random() - 0.5);
  const result = [];
  const used = new Set();
  const take = (pool, n) => {
    const picked = sh(pool.filter(x => !used.has(x))).slice(0, n);
    picked.forEach(x => used.add(x));
    return picked;
  };
  if (pCount > 0) result.push(...take(prev, pCount));
  if (cCount > 0) result.push(...take(curr, cCount));
  if (nCount > 0) result.push(...take(next, nCount));
  // 폴백: current → next → prev → 전체
  if (result.length < countNeeded) result.push(...take(curr, countNeeded - result.length));
  if (result.length < countNeeded) result.push(...take(next, countNeeded - result.length));
  if (result.length < countNeeded) result.push(...take(prev, countNeeded - result.length));
  if (result.length < countNeeded) result.push(...take(allItems, countNeeded - result.length));
  return sh(result).slice(0, countNeeded);
};

function _getUserId() {
  try {
    const u = JSON.parse(localStorage.getItem('engcat_user') || '{}');
    return u.email || 'guest';
  } catch(e) { return 'guest'; }
}

function _todayKey() {
  return 'ec_learned_' + _getUserId() + '_' + new Date().toISOString().slice(0, 10);
}

function _loadLearned(key) {
  try { return JSON.parse(localStorage.getItem(key) || '{}'); }
  catch(e) { return {}; }
}

// 이번 주 토픽: 사용자가 선택한 토픽이 있으면 사용, 없으면 주차별 자동 순환
window.ECGetTodayTopic = function(words) {
  const userTopic = localStorage.getItem('ec_user_topic');
  if (userTopic && window.EC_TOPIC_NAMES[userTopic]) return userTopic;

  const available = Array.from(new Set((words || []).map(w => w.topicId).filter(Boolean)));
  if (available.length === 0) {
    const patterns = (window.ECData && window.ECData.patterns) || [];
    const patternTopics = Array.from(new Set(patterns.map(p => p.topic).filter(Boolean)));
    if (patternTopics.length === 0) return null;
    return patternTopics[window.ECGetWeekOfYear() % patternTopics.length];
  }

  const ordered = window.EC_TOPIC_ORDER.filter(t => available.includes(t));
  if (ordered.length === 0) return available[0];
  return ordered[window.ECGetWeekOfYear() % ordered.length];
};

// 레벨 읽기: ec_user_level 우선, 없으면 engcat_user.level (온보딩 저장) 사용
function _getLevel() {
  const v = localStorage.getItem('ec_user_level');
  if (v) return v;
  try { return JSON.parse(localStorage.getItem('engcat_user') || '{}').level || 'B1'; }
  catch(e) { return 'B1'; }
}

window.ECGetTodaySession = function() {
  const level = _getLevel();
  const comp = window.EC_CEFR_COMPOSITIONS[level] || window.EC_CEFR_COMPOSITIONS.B1;
  const seed = window.ECGetDayOfYear();
  const data = window.ECData || { words: [], sentences: [], collocations: [], idioms: [], nuances: [], patterns: [] };

  const topic = window.ECGetTodayTopic(data.words || []);
  const topicLabel = topic ? (window.EC_TOPIC_NAMES[topic] || topic) : '오늘의 학습';
  // DEBUG: 화면에서 보이는 토픽과 실제 단어의 topicId 일치 여부 확인용
  if (window.EC_DEBUG) {
    console.log('[ECGetTodaySession]', { level, topic, topicLabel, seed, dataWords: (data.words||[]).length });
  }

  if (!topic) {
    return {
      topic: null, topicLabel,
      words: [], patterns: [], collocations: [], idioms: [], nuances: [],
      expressions: [], composition: comp, totalCards: 0,
    };
  }

  // 토픽 내에서 레벨별 분배 적용 — 하루 동안 동일하게 (seed = dayOfYear)
  const wordsForTopic = (data.words || []).filter(w => w.topicId === topic);
  const todayWords = window.ECGetLeveledContent(wordsForTopic, level, comp.words, seed);

  // 패턴: DB의 sentences (type='pattern')에서 레벨 분배. 정적 데이터(window.ECData.patterns)는 사용하지 않음 — 다른 토픽 패턴 섞임 방지.
  const sentences = data.sentences || [];
  const sentencePool = sentences.filter(s => s.topicId === topic && (s.type === 'pattern' || !s.type));
  const patterns = window.ECGetLeveledContent(sentencePool, level, comp.patterns, seed);

  const collPool = (data.collocations || []).filter(c => c.topicId === topic);
  const collocations = window.ECGetLeveledContent(collPool, level, comp.collocations, seed);

  const idiomPool = (data.idioms || []).filter(i => i.topicId === topic);
  const idioms = window.ECGetLeveledContent(idiomPool, level, comp.idioms, seed);

  const nuancePool = (data.nuances || []).filter(n => n.topicId === topic);
  const nuances = window.ECGetLeveledContent(nuancePool, level, comp.nuances, seed);

  // DEBUG: 실제 카드의 topicId 일치 검증
  if (window.EC_DEBUG) {
    const mismatch = [
      ...todayWords.filter(w => w.topicId !== topic).map(w => ({ kind: 'word', id: w.id, topicId: w.topicId, en: w.en })),
      ...collocations.filter(c => c.topicId !== topic).map(c => ({ kind: 'colloc', id: c.id, topicId: c.topicId, en: c.en })),
      ...idioms.filter(i => i.topicId !== topic).map(i => ({ kind: 'idiom', id: i.id, topicId: i.topicId, en: i.en })),
      ...nuances.filter(n => n.topicId !== topic).map(n => ({ kind: 'nuance', id: n.id, topicId: n.topicId, en: n.en })),
    ];
    console.log('[ECGetTodaySession result]', {
      topic,
      counts: { words: todayWords.length, patterns: patterns.length, collocations: collocations.length, idioms: idioms.length, nuances: nuances.length },
      wordSample: todayWords.slice(0, 3).map(w => `${w.cefr}/${w.topicId}/${w.en}`),
      mismatch: mismatch.length === 0 ? 'NONE — 모든 카드가 토픽 일치 ✓' : mismatch,
    });
  }

  const expressions = [...patterns, ...collocations, ...idioms, ...nuances];

  return {
    topic, topicLabel,
    words: todayWords,
    patterns, collocations, idioms, nuances,
    expressions,
    composition: comp,
    totalCards: todayWords.length + expressions.length,
  };
};

// ── 복습용 헬퍼 ────────────────────────────────────────────────

// 퀴즈 통계 로드: { wordId: { c: 정답수, w: 오답수 } }
function _loadQuizStats() {
  try { return JSON.parse(localStorage.getItem('ec_quiz_stats_' + _getUserId()) || '{}'); }
  catch(e) { return {}; }
}

// 가중치 계산: 퀴즈 결과 기반
// weight = clamp(0.2 ~ 3.0, (오답+1)/(정답+1))
// - 데이터 없음 → 1.0 (균등)
// - 정답 5회, 오답 0 → 0.17 → 하한 0.2
// - 오답 3회, 정답 0 → 4.0 → 상한 3.0
function _getItemWeight(id, quizStats) {
  const s = quizStats[id] || { c: 0, w: 0 };
  return Math.max(0.2, Math.min(3.0, (s.w + 1) / (s.c + 1)));
}

// 가중치 기반 비복원 샘플링
// seed가 있으면 deterministic (LCG 기반), 없으면 Math.random
function _weightedSample(items, weightFn, n, seed) {
  if (!items.length || n <= 0) return [];
  const pool = items.map(item => ({ item, w: weightFn(item) }));
  // Linear Congruential Generator — seed 기반 deterministic random
  let s = seed != null ? Math.abs(seed) || 1 : null;
  const rand = () => {
    if (s == null) return Math.random();
    s = (s * 9301 + 49297) % 233280;
    return s / 233280;
  };
  const result = [];
  const take = Math.min(n, pool.length);  // 미리 고정 — 루프 중 pool.splice로 줄어드는 length 재평가 방지
  for (let i = 0; i < take; i++) {
    const total = pool.reduce((acc, x) => acc + x.w, 0);
    let r = rand() * total;
    let idx = 0;
    for (; idx < pool.length - 1; idx++) { r -= pool[idx].w; if (r <= 0) break; }
    result.push(pool[idx].item);
    pool.splice(idx, 1);
  }
  return result;
}

// 지금까지 학습한 모든 단어/표현 ID 수집
// excludeToday=true면 오늘 학습한 항목은 제외 — 복습은 "이전에" 익힌 것만 대상.
// (오늘 막 학습한 내용이 같은 날 복습 섹션에 나타나는 문제 방지)
function _getAllLearnedIds(excludeToday) {
  const prefix = 'ec_learned_' + _getUserId() + '_';
  const todayDate = new Date().toISOString().slice(0, 10);
  const wordIds = new Set(), sentenceIds = new Set();
  for (let i = 0; i < localStorage.length; i++) {
    const key = localStorage.key(i);
    if (key && key.startsWith(prefix)) {
      if (excludeToday && key.slice(prefix.length) === todayDate) continue;
      try {
        const d = JSON.parse(localStorage.getItem(key) || '{}');
        (d.wordIds || []).forEach(id => wordIds.add(id));
        (d.sentenceIds || []).forEach(id => sentenceIds.add(id));
      } catch(e) {}
    }
  }
  return { wordIds, sentenceIds };
}

// 오늘(현재 날짜) 이미 학습/복습한 ID — 복습/예습 풀에서 제외 (더 보기 시 오늘 한 카드 재등장 방지)
function _getTodayLearnedIds() {
  const wordIds = new Set(), sentenceIds = new Set();
  try {
    const d = JSON.parse(localStorage.getItem(_todayKey()) || '{}');
    (d.wordIds || []).forEach(id => wordIds.add(id));
    (d.sentenceIds || []).forEach(id => sentenceIds.add(id));
  } catch (e) {}
  return { wordIds, sentenceIds };
}

// 복습 세션: 복습 우선 → 복습이 부족하면 예습(새 카드)으로 채움.
// - 복습 후보 = 과거에 배운 카드 − 오늘 한 카드 (퀴즈 오답 가중치)
// - 예습 후보 = 아직 안 배운 카드 − 오늘 한 카드 (레벨별 분배)
// - 항목마다 _source: 'review' | 'preview' 태깅 → 섹션 라벨(복습/예습)에 사용
// - "더 보기"(ECReviewSeedOffset)마다 새 셋
// - 카드 스와이프 시 todaySet이 바뀌어도 홈 화면 카드 목록이 바뀌지 않도록
//   offset+날짜 단위로 결과를 캐시. "더 보기" 클릭 시 offset이 올라가 자동 무효화.
window._ecReviewSessionCache = null;
window.ECGetReviewSession = function() {
  const offset = (window.ECReviewSeedOffset || 0);
  const cacheKey = window.ECGetDayOfYear() + '_' + offset;
  if (window._ecReviewSessionCache && window._ecReviewSessionCache.key === cacheKey) {
    return window._ecReviewSessionCache.result;
  }
  const level = _getLevel();
  const comp = window.EC_CEFR_COMPOSITIONS[level] || window.EC_CEFR_COMPOSITIONS.B1;
  const data = window.ECData || { words: [], sentences: [], collocations: [], idioms: [], nuances: [] };
  const allWords    = data.words        || [];
  const allPatterns = (data.sentences || []).filter(s => s.type === 'pattern' || !s.type);
  const allColloc   = data.collocations || [];
  const allIdioms   = data.idioms       || [];
  const allNuances  = data.nuances      || [];

  const seed = window.ECGetDayOfYear() + offset * 1000;

  const { wordIds: learnedWordIds, sentenceIds: learnedSentenceIds } = _getAllLearnedIds(true);
  const { wordIds: todayWordIds, sentenceIds: todaySentIds } = _getTodayLearnedIds();
  const quizStats = _loadQuizStats();
  const getW = item => _getItemWeight(item.id, quizStats);

  // 한 카테고리 채우기: 복습(과거학습−오늘) 우선, 모자라면 예습(미학습−오늘)으로 top-up
  // 단, 같은 표현(en)이 다른 카테고리에서 반복되지 않도록 excludeExpressions 추적
  function fill(allItems, learnedSet, todaySet, target, sd, type, excludeExpressions = new Set()) {
    if (target <= 0) return [];
    const reviewPool  = allItems.filter(x => learnedSet.has(x.id) && !todaySet.has(x.id) && !excludeExpressions.has(x.en || x.pattern || ''));
    const picks = _weightedSample(reviewPool, getW, target, sd)
      .map(x => Object.assign({}, x, { _type: x._type || type, _source: 'review' }));
    if (picks.length < target) {
      const newPool = allItems.filter(x => !learnedSet.has(x.id) && !todaySet.has(x.id) && !excludeExpressions.has(x.en || x.pattern || ''));
      const more = window.ECGetLeveledContent(newPool, level, target - picks.length, sd + 7)
        .map(x => Object.assign({}, x, { _type: x._type || type, _source: 'preview' }));
      picks.push(...more);
    }
    picks.forEach(p => excludeExpressions.add(p.en || p.pattern || ''));
    return picks;
  }

  const excludeExprs = new Set();
  const words       = fill(allWords,    learnedWordIds,     todayWordIds, comp.words,            seed,     'word');
  const patterns    = fill(allPatterns, learnedSentenceIds, todaySentIds, comp.patterns,         seed + 1, 'pattern', excludeExprs);
  const collocations = fill(allColloc,  learnedSentenceIds, todaySentIds, comp.collocations || 0, seed + 2, 'collocation', excludeExprs);
  const idioms      = fill(allIdioms,   learnedSentenceIds, todaySentIds, comp.idioms || 0,       seed + 3, 'idiom', excludeExprs);
  const nuances     = fill(allNuances,  learnedSentenceIds, todaySentIds, comp.nuances || 0,      seed + 4, 'nuance', excludeExprs);
  const expressions = [...patterns, ...collocations, ...idioms, ...nuances];

  // 섹션별 라벨용: 그 섹션에 복습 카드가 하나도 없으면 '예습'
  const isPreviewWords = words.length > 0 && words.every(w => w._source === 'preview');
  const isPreviewExpr  = expressions.length > 0 && expressions.every(e => e._source === 'preview');

  const result = {
    isPreview: isPreviewWords && isPreviewExpr,  // 둘 다 예습일 때만 (대체로 첫날)
    isPreviewWords,
    isPreviewExpr,
    topic: null,
    topicLabel: null,
    words, patterns, collocations, idioms, nuances, expressions,
  };
  // 데이터가 로드된 상태에서만 캐시 — 로드 전 빈 결과가 굳는 것 방지
  if (allWords.length > 0 || allPatterns.length > 0 || allColloc.length > 0) {
    window._ecReviewSessionCache = { key: cacheKey, result };
  }
  return result;
};
