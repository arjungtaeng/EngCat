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

function _getUserId() {
  try {
    const u = JSON.parse(localStorage.getItem('engcat_user') || '{}');
    return u.email || 'guest';
  } catch(e) { return 'guest'; }
}

function _todayKey() {
  return 'ec_learned_' + _getUserId() + '_' + new Date().toISOString().slice(0, 10);
}

function _yesterdayKey() {
  const d = new Date();
  d.setDate(d.getDate() - 1);
  return 'ec_learned_' + _getUserId() + '_' + d.toISOString().slice(0, 10);
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
    // words 데이터가 없으면 patterns에서 토픽 추출
    const patterns = (window.ECData && window.ECData.patterns) || [];
    const patternTopics = Array.from(new Set(patterns.map(p => p.topic).filter(Boolean)));
    if (patternTopics.length === 0) return null;
    return patternTopics[window.ECGetWeekOfYear() % patternTopics.length];
  }

  const ordered = window.EC_TOPIC_ORDER.filter(t => available.includes(t));
  if (ordered.length === 0) return available[0];
  // 주 단위 변경: ECGetWeekOfYear 사용
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

  if (!topic) {
    return {
      topic: null, topicLabel,
      words: [], patterns: [], collocations: [], idioms: [], nuances: [],
      expressions: [], composition: comp, totalCards: 0,
    };
  }

  const pick = (arr, n) => n <= 0 ? [] : _shuffleStable(arr, seed).slice(0, n);

  // 오늘의 단어: 토픽 + 레벨에 맞는 단어 (단어는 cefr 필드)
  const wordsForTopic = (data.words || []).filter(w => w.topicId === topic && (!w.cefr || w.cefr === level));
  const todayWords = pick(wordsForTopic.length > 0 ? wordsForTopic : (data.words || []).filter(w => w.topicId === topic), comp.words);

  // 오늘의 패턴: 새 patterns 데이터에서 토픽 + 레벨 매캄5
  const newPatterns = ((window.ECData && window.ECData.patterns) || []).filter(p => p.topic === topic && p.level === level);
  // 기존 sentences도 지원 (B1+의 collocations 등을 위해)
  const sentences = data.sentences || [];
  const sentencePool = sentences.filter(s => s.topicId === topic && (s.type === 'pattern' || !s.type));

  const patternPool = newPatterns.length > 0 ? newPatterns : sentencePool;
  const patterns = _shuffleStable(patternPool, seed).slice(0, comp.patterns);

  const collPool = (data.collocations || []).filter(c => c.topicId === topic);
  const collocations = pick(collPool, comp.collocations);

  const idiomPool = (data.idioms || []).filter(i => i.topicId === topic);
  const idioms = pick(idiomPool, comp.idioms);

  const nuancePool = (data.nuances || []).filter(n => n.topicId === topic);
  const nuances = pick(nuancePool, comp.nuances);

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

// 복습 세션: 어제 학습한 단어/표현 (패턴+콜로+이디엄+뢜앙스)
// 첫날 (어제 학습 없음): 무작위 예습 단어/표현
window.ECGetReviewSession = function() {
  const level = _getLevel();
  const comp = window.EC_CEFR_COMPOSITIONS[level] || window.EC_CEFR_COMPOSITIONS.B1;
  const data = window.ECData || { words: [], patterns: [], collocations: [], idioms: [], nuances: [] };
  const allWords    = data.words        || [];
  const allPatterns = data.patterns     || [];
  const allColloc   = data.collocations || [];
  const allIdioms   = data.idioms       || [];
  const allNuances  = data.nuances      || [];

  const tagType = (arr, type) => arr.map(x => Object.assign({}, x, { _type: x._type || type }));

  // 어제 학습한 ID들 조회 (sentenceIds 는 패턴/콜로/이디엄/뢜앙스 모두 포함될 수 있음)
  const yesterday = _loadLearned(_yesterdayKey());
  const yesterdayWordIds = new Set(yesterday.wordIds || []);
  const yesterdaySentenceIds = new Set(yesterday.sentenceIds || []);

  // 어제의 토픽 알아내기 (어제 단어들의 topicId)
  let reviewTopic = null;
  if (yesterdayWordIds.size > 0) {
    const yesterdayWords = allWords.filter(w => yesterdayWordIds.has(w.id));
    if (yesterdayWords.length > 0 && yesterdayWords[0].topicId) {
      reviewTopic = yesterdayWords[0].topicId;
    }
  }
  if (!reviewTopic && yesterdaySentenceIds.size > 0) {
    const yp = allPatterns.find(p => yesterdaySentenceIds.has(p.id));
    if (yp) reviewTopic = yp.topic;
    else {
      const ye = [...allColloc, ...allIdioms, ...allNuances].find(e => yesterdaySentenceIds.has(e.id));
      if (ye) reviewTopic = ye.topicId;
    }
  }

  // 어제 학습 데이터가 있으면 복습으로 사용 (현재 레벨 구성 개수로 제한)
  if (yesterdayWordIds.size > 0 || yesterdaySentenceIds.size > 0) {
    const reviewWords    = allWords.filter(w => yesterdayWordIds.has(w.id)).slice(0, comp.words);
    const reviewPatterns = tagType(allPatterns.filter(p => yesterdaySentenceIds.has(p.id)), 'pattern').slice(0, comp.patterns);
    const reviewColloc   = tagType(allColloc.filter(c => yesterdaySentenceIds.has(c.id)), 'collocation').slice(0, comp.collocations || 0);
    const reviewIdioms   = tagType(allIdioms.filter(i => yesterdaySentenceIds.has(i.id)), 'idiom').slice(0, comp.idioms || 0);
    const reviewNuances  = tagType(allNuances.filter(n => yesterdaySentenceIds.has(n.id)), 'nuance').slice(0, comp.nuances || 0);
    return {
      isPreview: false,
      topic: reviewTopic,
      topicLabel: reviewTopic ? (window.EC_TOPIC_NAMES[reviewTopic] || reviewTopic) : null,
      words: reviewWords,
      patterns: reviewPatterns,
      collocations: reviewColloc,
      idioms: reviewIdioms,
      nuances: reviewNuances,
      expressions: [...reviewPatterns, ...reviewColloc, ...reviewIdioms, ...reviewNuances],
    };
  }

  // 첫날: 예습 (레벨 composition에 따라)
  const seed = window.ECGetDayOfYear();
  const wordsForLevel    = allWords.filter(w => !w.cefr || w.cefr === level);
  const patternsForLevel = allPatterns.filter(p => p.level === level);
  const collForLevel     = allColloc.filter(c => !c.cefr || c.cefr === level);
  const idiomForLevel    = allIdioms.filter(i => !i.cefr || i.cefr === level);
  const nuanceForLevel   = allNuances.filter(n => !n.cefr || n.cefr === level);

  const previewWords    = _shuffleStable(wordsForLevel,    seed).slice(0, comp.words);
  const previewPatterns = tagType(_shuffleStable(patternsForLevel, seed).slice(0, comp.patterns),       'pattern');
  const previewColloc   = tagType(_shuffleStable(collForLevel,     seed).slice(0, comp.collocations || 0), 'collocation');
  const previewIdioms   = tagType(_shuffleStable(idiomForLevel,    seed).slice(0, comp.idioms       || 0), 'idiom');
  const previewNuances  = tagType(_shuffleStable(nuanceForLevel,   seed).slice(0, comp.nuances      || 0), 'nuance');

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
