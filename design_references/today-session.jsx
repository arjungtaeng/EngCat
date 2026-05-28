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
  for (let i = 0; i < Math.min(n, pool.length); i++) {
    const total = pool.reduce((acc, x) => acc + x.w, 0);
    let r = rand() * total;
    let idx = 0;
    for (; idx < pool.length - 1; idx++) { r -= pool[idx].w; if (r <= 0) break; }
    result.push(pool[idx].item);
    pool.splice(idx, 1);
  }
  return result;
}

// 지금까지 학습한 모든 단어/표현 ID 수집 (날짜 무관)
function _getAllLearnedIds() {
  const prefix = 'ec_learned_' + _getUserId() + '_';
  const wordIds = new Set(), sentenceIds = new Set();
  for (let i = 0; i < localStorage.length; i++) {
    const key = localStorage.key(i);
    if (key && key.startsWith(prefix)) {
      try {
        const d = JSON.parse(localStorage.getItem(key) || '{}');
        (d.wordIds || []).forEach(id => wordIds.add(id));
        (d.sentenceIds || []).forEach(id => sentenceIds.add(id));
      } catch(e) {}
    }
  }
  return { wordIds, sentenceIds };
}

// 복습 세션: 전체 학습 이력에서 가중치 기반 무작위 복습
// - 퀴즈에서 많이 틀린 카드 → weight↑ (더 자주)
// - 퀴즈에서 많이 맞은 카드 → weight↓ (덜 자주, 하한 0.2)
// - 학습 이력 없으면 isPreview: true (예습)
window.ECGetReviewSession = function() {
  const level = _getLevel();
  const comp = window.EC_CEFR_COMPOSITIONS[level] || window.EC_CEFR_COMPOSITIONS.B1;
  const data = window.ECData || { words: [], sentences: [], collocations: [], idioms: [], nuances: [] };
  const allWords    = data.words        || [];
  // 패턴은 DB의 sentences (type='pattern')에서 가져옴. 정적 data.patterns는 사용 안 함.
  const allPatterns = (data.sentences || []).filter(s => s.type === 'pattern' || !s.type);
  const allColloc   = data.collocations || [];
  const allIdioms   = data.idioms       || [];
  const allNuances  = data.nuances      || [];

  const tagType = (arr, type) => arr.map(x => Object.assign({}, x, { _type: x._type || type }));

  // "더 보기" 클릭마다 +1 — 같은 날에도 새 셋을 보여줌
  const offset = (window.ECReviewSeedOffset || 0);
  const seed = window.ECGetDayOfYear() + offset * 1000;

  const { wordIds: learnedWordIds, sentenceIds: learnedSentenceIds } = _getAllLearnedIds();

  // 학습 이력이 있으면 가중치 기반 복습 (하루 + offset 동안 동일)
  if (learnedWordIds.size > 0 || learnedSentenceIds.size > 0) {
    const quizStats = _loadQuizStats();
    const getW = item => _getItemWeight(item.id, quizStats);

    const learnedWords    = allWords.filter(w => learnedWordIds.has(w.id));
    const learnedPatterns = allPatterns.filter(p => learnedSentenceIds.has(p.id));
    const learnedColloc   = allColloc.filter(c => learnedSentenceIds.has(c.id));
    const learnedIdioms   = allIdioms.filter(i => learnedSentenceIds.has(i.id));
    const learnedNuances  = allNuances.filter(n => learnedSentenceIds.has(n.id));

    const reviewWords    = _weightedSample(learnedWords,    getW, comp.words,            seed);
    const reviewPatterns = tagType(_weightedSample(learnedPatterns, getW, comp.patterns,            seed + 1), 'pattern');
    const reviewColloc   = tagType(_weightedSample(learnedColloc,   getW, comp.collocations || 0,   seed + 2), 'collocation');
    const reviewIdioms   = tagType(_weightedSample(learnedIdioms,   getW, comp.idioms       || 0,   seed + 3), 'idiom');
    const reviewNuances  = tagType(_weightedSample(learnedNuances,  getW, comp.nuances      || 0,   seed + 4), 'nuance');


    return {
      isPreview: false,
      topic: null,
      topicLabel: null,
      words: reviewWords,
      patterns: reviewPatterns,
      collocations: reviewColloc,
      idioms: reviewIdioms,
      nuances: reviewNuances,
      expressions: [...reviewPatterns, ...reviewColloc, ...reviewIdioms, ...reviewNuances],
    };
  }

  // 첫날 (학습 이력 없음): 예습 — 레벨별 분배 (하루 + offset 동안 동일)
  const previewWords    = window.ECGetLeveledContent(allWords,    level, comp.words,            seed);
  const previewPatterns = tagType(window.ECGetLeveledContent(allPatterns, level, comp.patterns,            seed + 1), 'pattern');
  const previewColloc   = tagType(window.ECGetLeveledContent(allColloc,   level, comp.collocations || 0,   seed + 2), 'collocation');
  const previewIdioms   = tagType(window.ECGetLeveledContent(allIdioms,   level, comp.idioms       || 0,   seed + 3), 'idiom');
  const previewNuances  = tagType(window.ECGetLeveledContent(allNuances,  level, comp.nuances      || 0,   seed + 4), 'nuance');

  return {
    isPreview: true,
    topic: null,
    topicLabel: null,
    words: previewWords,
    patterns: previewPatterns,
    collocations: previewColloc,
    idioms: previewIdioms,
    nuances: previewNuances,
    expressions: [...previewPatterns, ...previewColloc, ...previewIdioms, ...previewNuances],
  };
};
