// EngCat — Today's session helper (web)
// Same logic as mobile/src/utils/todaySession.ts

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
  B1: { words: 8,  patterns: 4, collocations: 3, idioms: 0, nuances: 0 },
  B2: { words: 8,  patterns: 4, collocations: 3, idioms: 0, nuances: 0 },
  C1: { words: 6,  patterns: 3, collocations: 3, idioms: 2, nuances: 1 },
  C2: { words: 6,  patterns: 3, collocations: 3, idioms: 2, nuances: 1 },
};

window.ECGetDayOfYear = function(now) {
  const n = now || new Date();
  return Math.floor((n - new Date(n.getFullYear(), 0, 0)) / 86400000);
};

function _shuffleStable(arr, seed) {
  return [...arr]
    .map((x, i) => ({ x, s: ((i * 9301 + seed * 49297) % 233280) / 233280 }))
    .sort((a, b) => a.s - b.s)
    .map(o => o.x);
}

window.ECGetTodayTopic = function(words) {
  const available = Array.from(new Set((words || []).map(w => w.topicId).filter(Boolean)));
  if (available.length === 0) return null;

  // 이미지 보유 토픽 우선
  const score = new Map();
  for (const w of words) {
    if (!w.topicId) continue;
    if (w.img) score.set(w.topicId, (score.get(w.topicId) || 0) + 1);
    else if (!score.has(w.topicId)) score.set(w.topicId, 0);
  }
  const withImg = window.EC_TOPIC_ORDER.filter(t => (score.get(t) || 0) > 0);
  const withoutImg = window.EC_TOPIC_ORDER.filter(t => available.includes(t) && (score.get(t) || 0) === 0);
  const ordered = [...withImg, ...withoutImg];
  if (ordered.length === 0) return available[0];
  return ordered[window.ECGetDayOfYear() % ordered.length];
};

window.ECGetTodaySession = function() {
  const level = localStorage.getItem('ec_user_level') || 'B1';
  const comp = window.EC_CEFR_COMPOSITIONS[level] || window.EC_CEFR_COMPOSITIONS.B1;
  const seed = window.ECGetDayOfYear();
  const data = window.ECData || { words: [], sentences: [], collocations: [], idioms: [], nuances: [] };

  const topic = window.ECGetTodayTopic(data.words || []);
  const topicLabel = topic ? (window.EC_TOPIC_NAMES[topic] || topic) : '오늘의 학습';

  if (!topic) {
    return {
      topic: null, topicLabel,
      words: [], patterns: [], collocations: [], idioms: [], nuances: [],
      expressions: [], composition: comp, totalCards: 0,
    };
  }

  const pickWithImg = (arr, n) => {
    if (n <= 0) return [];
    const withImg = _shuffleStable(arr.filter(x => x.img), seed);
    const noImg   = _shuffleStable(arr.filter(x => !x.img), seed);
    return [...withImg, ...noImg].slice(0, n);
  };

  const todayWords = pickWithImg((data.words || []).filter(w => w.topicId === topic), comp.words);

  const sentences = data.sentences || [];
  const patternPool = sentences.filter(s => s.topicId === topic && (s.type === 'pattern' || !s.type));
  const patterns    = pickWithImg(patternPool, comp.patterns);

  const collPool = (data.collocations || []).filter(c => c.topicId === topic);
  const collocations = pickWithImg(collPool, comp.collocations);

  const idiomPool = (data.idioms || []).filter(i => i.topicId === topic);
  const idioms = pickWithImg(idiomPool, comp.idioms);

  const nuancePool = (data.nuances || []).filter(n => n.topicId === topic);
  const nuances = pickWithImg(nuancePool, comp.nuances);

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
