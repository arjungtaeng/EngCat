// EngCat — Card data + session state (Supabase 연동)

if (!window.ECSession) {
  const savedBookmarks = (() => { try { return new Set(JSON.parse(localStorage.getItem('ec_bookmarks') || '[]')); } catch(e) { return new Set(); } })();
  window.ECSession = {
    wordIndex: 0,
    sentenceIndex: 0,
    completedWordIds: new Set(),
    completedSentenceIds: new Set(),
    bookmarkedIds: savedBookmarks,
    saveBookmarks() {
      localStorage.setItem('ec_bookmarks', JSON.stringify([...this.bookmarkedIds]));
    },
    markWordDone(id) {
      this.completedWordIds.add(id);
      const key = 'ec_learned_' + new Date().toISOString().slice(0, 10);
      const stored = (() => { try { return JSON.parse(localStorage.getItem(key) || '{}'); } catch(e) { return {}; } })();
      const wordIds = new Set(stored.wordIds || []);
      wordIds.add(id);
      stored.wordIds = [...wordIds];
      localStorage.setItem(key, JSON.stringify(stored));
    },
    markSentenceDone(id) {
      this.completedSentenceIds.add(id);
      const key = 'ec_learned_' + new Date().toISOString().slice(0, 10);
      const stored = (() => { try { return JSON.parse(localStorage.getItem(key) || '{}'); } catch(e) { return {}; } })();
      const sentenceIds = new Set(stored.sentenceIds || []);
      sentenceIds.add(id);
      stored.sentenceIds = [...sentenceIds];
      localStorage.setItem(key, JSON.stringify(stored));
    },
    resetDaily() {
      this.wordIndex = 0;
      this.sentenceIndex = 0;
      this.completedWordIds = new Set();
      this.completedSentenceIds = new Set();
    },
  };
}

(function () {
  if (document.getElementById('ec-anim-styles')) return;
  const s = document.createElement('style');
  s.id = 'ec-anim-styles';
  s.textContent = `
    @keyframes ecFadeUp {
      from { opacity: 0; transform: translateY(28px); }
      to   { opacity: 1; transform: translateY(0); }
    }
    @keyframes ecFadeDown {
      from { opacity: 0; transform: translateY(-28px); }
      to   { opacity: 1; transform: translateY(0); }
    }
    .ec-fade-up   { animation: ecFadeUp   0.28s cubic-bezier(0.2,0.8,0.2,1) both; }
    .ec-fade-down { animation: ecFadeDown 0.28s cubic-bezier(0.2,0.8,0.2,1) both; }
  `;
  document.head.appendChild(s);
})();

const TOPIC_TINTS = {
  // daily
  greeting:     '#1a3a2c',
  emotion:      '#2a1a3a',
  weather:      '#1a2a4a',
  shopping:     '#3a2a1c',
  cafe:         '#3a2a1a',
  transport:    '#1a2a3a',
  health:       '#1a3a2a',
  travel:       '#1a3a5c',
  home:         '#2a2a1a',
  // social
  work:         '#1a2a3c',
  education:    '#1c2a3a',
  media:        '#2a1a2c',
  environment:  '#1a3a20',
  economy:      '#2a2a1a',
  culture:      '#3a1a2a',
  sports:       '#1a2c3a',
  // advanced
  discussion:   '#2a1c3a',
  presentation: '#1a2a3c',
  negotiation:  '#2a1a2a',
  humanities:   '#3a2a2a',
  technology:   '#1a2a3c',
  news:         '#2a2a2a',
  academic:     '#1c1c3a',
};

window.ECData = { words: [], sentences: [], collocations: [], idioms: [], nuances: [], expressions: [], patterns: [] };
window.ECDataError = null;

function _formatSupabaseError(err) {
  if (!err) return '';
  const parts = [];
  if (err.message)  parts.push(err.message);
  if (err.code)     parts.push('code: ' + err.code);
  if (err.details)  parts.push('details: ' + err.details);
  if (err.hint)     parts.push('hint: ' + err.hint);
  if (err.status)   parts.push('status: ' + err.status);
  return parts.length > 0 ? parts.join(' | ') : String(err);
}

async function _runECDataLoad() {
  window.ECDataError = null;
  const db = window.ECSupabaseClient;
  if (!db) throw new Error('Supabase CDN 미로드 — 네트워크를 확인하고 새로고침해 주세요.');
  try {
    const [wordsRes, sentencesRes, collocRes, idiomsRes, nuancesRes] = await Promise.all([
      db.from('words').select('*').order('topic_id').order('sort_order'),
      db.from('sentences').select('*').order('topic_id').order('sort_order'),
      db.from('collocations').select('*').order('topic_id').order('sort_order'),
      db.from('idioms').select('*').order('topic_id').order('sort_order'),
      db.from('nuances').select('*').order('topic_id').order('sort_order'),
    ]);

    if (wordsRes.error) throw wordsRes.error;
    if (sentencesRes.error) throw sentencesRes.error;

    window.ECData.words = wordsRes.data.map(w => ({
      id:       w.id,
      type:     'word',
      en:       w.en,
      ipa:      w.ipa || '',
      pos:      w.pos || '',
      ko:       w.ko,
      def:      w.definition || '',
      ex:       w.example_en || '',
      exKo:     w.example_ko || '',
      examples: [
        w.example_en   ? { en: w.example_en,   ko: w.example_ko   } : null,
        w.example_en_2 ? { en: w.example_en_2, ko: w.example_ko_2 } : null,
        w.example_en_3 ? { en: w.example_en_3, ko: w.example_ko_3 } : null,
        w.example_en_4 ? { en: w.example_en_4, ko: w.example_ko_4 } : null,
        w.example_en_5 ? { en: w.example_en_5, ko: w.example_ko_5 } : null,
      ].filter(Boolean),
      cefr:     w.cefr || w.level || 'B1',
      priority: w.priority || 3,
      topicId:  w.topic_id || '',
      tint:     TOPIC_TINTS[w.topic_id] || '#1a2a3a',
      img:      w.image_url || null,
      imgKey:   w.image_keyword || '',
    }));

    window.ECData.sentences = sentencesRes.data.map(s => ({
      id:        s.id,
      type:      s.type || 'pattern',
      en:        s.en,
      ko:        s.ko,
      highlight: s.highlight || '',
      tip:       s.tip || '',
      sit:       s.situation || '',
      cefr:      s.cefr || s.level || 'B1',
      priority:  s.priority || 3,
      topicId:   s.topic_id || '',
      img:       s.image_url || null,
      tint:      TOPIC_TINTS[s.topic_id] || '#1a2a3a',
      examples: [
        s.ex1 ? { en: s.ex1, ko: s.ex1_ko } : null,
        s.ex2 ? { en: s.ex2, ko: s.ex2_ko } : null,
        s.ex3 ? { en: s.ex3, ko: s.ex3_ko } : null,
        s.ex4 ? { en: s.ex4, ko: s.ex4_ko } : null,
        s.ex5 ? { en: s.ex5, ko: s.ex5_ko } : null,
      ].filter(Boolean),
    }));

    if (!collocRes.error && collocRes.data) {
      window.ECData.collocations = collocRes.data.map(c => ({
        id:        c.id,
        type:      'collocation',
        en:        c.en,
        ko:        c.ko,
        verb:      c.verb,
        noun:      c.noun,
        wrongVerb: c.wrong_verb || '',
        tip:       c.tip || '',
        ex1:       c.ex1 || '',
        ex1Ko:     c.ex1_ko || '',
        ex2:       c.ex2 || '',
        ex2Ko:     c.ex2_ko || '',
        cefr:      c.cefr || 'B1',
        priority:  c.priority || 3,
        topicId:   c.topic_id || '',
        tint:      TOPIC_TINTS[c.topic_id] || '#1a2a3a',
        img:       c.image_url || null,
        imgKey:    c.image_keyword || '',
      }));
    }

    if (!idiomsRes.error && idiomsRes.data) {
      window.ECData.idioms = idiomsRes.data.map(i => ({
        id:        i.id,
        type:      'idiom',
        en:        i.en,
        ko:        i.ko,
        literalKo: i.literal_ko || '',
        tip:       i.tip || '',
        ex1:       i.ex1 || '',
        ex1Ko:     i.ex1_ko || '',
        ex2:       i.ex2 || '',
        ex2Ko:     i.ex2_ko || '',
        ex3:       i.ex3 || '',
        ex3Ko:     i.ex3_ko || '',
        cefr:      i.cefr || 'B2',
        priority:  i.priority || 3,
        topicId:   i.topic_id || '',
        tint:      TOPIC_TINTS[i.topic_id] || '#1a2a3a',
        img:       i.image_url || null,
        imgKey:    i.image_keyword || '',
      }));
    }

    if (!nuancesRes.error && nuancesRes.data) {
      window.ECData.nuances = nuancesRes.data.map(n => ({
        id:         n.id,
        type:       'nuance',
        wordA:      n.word_a,
        wordB:      n.word_b,
        wordC:      n.word_c || '',
        koA:        n.ko_a,
        koB:        n.ko_b,
        koC:        n.ko_c || '',
        comparison: n.comparison,
        exA:        n.ex_a || '',
        exB:        n.ex_b || '',
        exC:        n.ex_c || '',
        tip:        n.tip || '',
        cefr:       n.cefr || 'B2',
        priority:   n.priority || 3,
        topicId:    n.topic_id || '',
        tint:       TOPIC_TINTS[n.topic_id] || '#1a2a3a',
        img:        n.image_url || null,
        imgKey:     n.image_keyword || '',
      }));
    }
    // Merged expression feed: patterns first, then collocations, idioms, nuances (sorted by priority)
    const userLevel = localStorage.getItem('ec_user_level') || 'B1';
    const cefrOrder = { A1:0, A2:1, B1:2, B2:3, C1:4, C2:5 };
    const userCefrIdx = cefrOrder[userLevel] ?? 2;
    const inRange = (cefr) => {
      const idx = cefrOrder[cefr] ?? 2;
      return idx >= Math.max(0, userCefrIdx - 1) && idx <= Math.min(5, userCefrIdx + 1);
    };

    window.ECData.expressions = [
      ...window.ECData.sentences.filter(s => s.type === 'pattern' && inRange(s.cefr)),
      ...window.ECData.collocations.filter(c => inRange(c.cefr)),
      ...window.ECData.idioms.filter(i => inRange(i.cefr)),
      ...window.ECData.nuances.filter(n => inRange(n.cefr)),
    ];
  } catch (err) {
    window.ECDataError = _formatSupabaseError(err);
    console.error('Supabase 데이터 로딩 실패:', err);
    throw err;
  }
}

// 초기 로딩: 실패 시 5초 후 1회 자동 재시도
window.ECDataLoaded = _runECDataLoad().catch(async (err) => {
  await new Promise(r => setTimeout(r, 5000));
  return _runECDataLoad().catch(e => {
    window.ECDataError = _formatSupabaseError(e);
    console.error('Supabase 재시도 실패:', e);
  });
});

// 수동 재시도용 (카드 화면에서 호출)
window.ECReloadData = function() {
  window.ECData = { words: [], sentences: [], collocations: [], idioms: [], nuances: [], expressions: [], patterns: [] };
  window.ECDataLoaded = _runECDataLoad().catch(e => {
    window.ECDataError = _formatSupabaseError(e);
    console.error('Supabase 수동 재시도 실패:', e);
  });
  return window.ECDataLoaded;
};

// Pattern templates by level & topic
window.ECData.patterns = [
  // ─── A1 LEVEL ───────────────────────────────────────────────────────────────
  // A1 - Travel
  { id: 'p_A1_travel_001', pattern: 'I want to ~', explanation: '~하고 싶다는 의사를 나타낼 때 쓰는 패턴입니다. 동사의 원형을 사용합니다.', level: 'A1', topic: 'travel', examples: [
    { en: 'I want to go to the airport.', ko: '나는 공항에 가고 싶어요.' },
    { en: 'I want to visit Paris next year.', ko: '나는 내년에 파리를 방문하고 싶어요.' },
    { en: 'I want to stay in a nice hotel.', ko: '나는 좋은 호텔에 묵고 싶어요.' },
    { en: 'I want to take a flight tomorrow.', ko: '나는 내일 비행기를 타고 싶어요.' },
    { en: 'I want to book a room.', ko: '나는 방을 예약하고 싶어요.' },
  ]},
  { id: 'p_A1_travel_002', pattern: 'Where is ~?', explanation: '장소를 묻는 기본 패턴입니다.', level: 'A1', topic: 'travel', examples: [
    { en: 'Where is the airport?', ko: '공항은 어디에 있어요?' },
    { en: 'Where is the hotel?', ko: '호텔은 어디에 있어요?' },
    { en: 'Where is the bathroom?', ko: '화장실은 어디에 있어요?' },
    { en: 'Where is the train station?', ko: '기차역은 어디에 있어요?' },
    { en: 'Where is the restaurant?', ko: '레스토랑은 어디에 있어요?' },
  ]},
  // A1 - Cafe
  { id: 'p_A1_cafe_001', pattern: 'I\'d like ~', explanation: '~을 원한다는 정중한 표현입니다.', level: 'A1', topic: 'cafe', examples: [
    { en: 'I\'d like a coffee, please.', ko: '커피 한 잔 주세요.' },
    { en: 'I\'d like a tea with sugar.', ko: '설탕을 넣은 차를 주세요.' },
    { en: 'I\'d like a sandwich.', ko: '샌드위치를 주세요.' },
    { en: 'I\'d like some water.', ko: '물을 주세요.' },
    { en: 'I\'d like a piece of cake.', ko: '케이크 한 조각을 주세요.' },
  ]},
  { id: 'p_A1_cafe_002', pattern: 'Can I have ~?', explanation: '뭔가를 달라고 요청하는 패턴입니다.', level: 'A1', topic: 'cafe', examples: [
    { en: 'Can I have a menu?', ko: '메뉴를 주시겠어요?' },
    { en: 'Can I have the bill?', ko: '계산서를 주시겠어요?' },
    { en: 'Can I have cream and sugar?', ko: '크림과 설탕을 주시겠어요?' },
    { en: 'Can I have a fork?', ko: '포크를 주시겠어요?' },
    { en: 'Can I have some ice cream?', ko: '아이스크림을 좀 주시겠어요?' },
  ]},
  // A1 - Greeting
  { id: 'p_A1_greeting_001', pattern: 'Nice to meet ~', explanation: '처음 만날 때 인사하는 표현입니다.', level: 'A1', topic: 'greeting', examples: [
    { en: 'Nice to meet you.', ko: '만나서 반가워요.' },
    { en: 'Nice to meet you too.', ko: '저도 만나서 반가워요.' },
    { en: 'It\'s nice to meet you.', ko: '당신을 만나니 좋아요.' },
  ]},
  { id: 'p_A1_greeting_002', pattern: 'How are ~?', explanation: '상대의 상태를 묻는 표현입니다.', level: 'A1', topic: 'greeting', examples: [
    { en: 'How are you?', ko: '어떻게 지내세요?' },
    { en: 'How are things?', ko: '요즘 어때요?' },
    { en: 'How are you doing?', ko: '잘 지내고 있어요?' },
  ]},

  // ─── B1 LEVEL ───────────────────────────────────────────────────────────────
  // B1 - Travel
  { id: 'p_B1_travel_001', pattern: 'Could you please ~?', explanation: '정중하게 도움을 요청하는 패턴입니다.', level: 'B1', topic: 'travel', examples: [
    { en: 'Could you please recommend a good hotel?', ko: '좋은 호텔을 추천해 주시겠어요?' },
    { en: 'Could you please check my reservation?', ko: '제 예약을 확인해 주시겠어요?' },
    { en: 'Could you please call a taxi for me?', ko: '저를 위해 택시를 불러 주시겠어요?' },
    { en: 'Could you please give me directions?', ko: '길을 알려 주시겠어요?' },
    { en: 'Could you please help me with my luggage?', ko: '제 수하물을 도와주시겠어요?' },
  ]},
  { id: 'p_B1_travel_002', pattern: 'I\'m looking forward to ~', explanation: '앞으로 있을 일을 기대한다는 표현입니다.', level: 'B1', topic: 'travel', examples: [
    { en: 'I\'m looking forward to visiting Paris.', ko: '나는 파리 방문을 기대하고 있어요.' },
    { en: 'I\'m looking forward to the trip.', ko: '나는 여행을 기대하고 있어요.' },
    { en: 'I\'m looking forward to seeing you.', ko: '나는 당신을 만나는 것을 기대하고 있어요.' },
    { en: 'I\'m looking forward to relaxing at the beach.', ko: '나는 해변에서 쉬는 것을 기대하고 있어요.' },
  ]},
  // B1 - Work
  { id: 'p_B1_work_001', pattern: 'I\'m afraid ~ is not ~', explanation: '안타깝게도 무언가가 불가능함을 말할 때 쓰는 패턴입니다.', level: 'B1', topic: 'work', examples: [
    { en: 'I\'m afraid that\'s not possible.', ko: '안타깝게도 그것은 불가능해요.' },
    { en: 'I\'m afraid I don\'t have the information.', ko: '안타깝게도 그 정보를 가지고 있지 않아요.' },
    { en: 'I\'m afraid he\'s not available.', ko: '안타깝게도 그는 이용할 수 없어요.' },
    { en: 'I\'m afraid the meeting is cancelled.', ko: '안타깝게도 회의는 취소되었어요.' },
  ]},
  { id: 'p_B1_work_002', pattern: 'Could I ~?', explanation: '상대에게 무언가를 할 수 있는지 물어보는 정중한 표현입니다.', level: 'B1', topic: 'work', examples: [
    { en: 'Could I have a few minutes to think about this?', ko: '이것에 대해 생각할 시간을 가져도 될까요?' },
    { en: 'Could I ask you a question?', ko: '당신에게 질문을 물어봐도 될까요?' },
    { en: 'Could I send you the document?', ko: '당신에게 문서를 보내도 될까요?' },
    { en: 'Could I schedule a meeting with you?', ko: '당신과 회의 일정을 짜도 될까요?' },
  ]},
  // B1 - Environment
  { id: 'p_B1_environment_001', pattern: 'It looks like ~', explanation: '보이는 모습이나 상황을 설명하는 패턴입니다.', level: 'B1', topic: 'environment', examples: [
    { en: 'It looks like it\'s going to rain.', ko: '비가 올 것 같아요.' },
    { en: 'It looks like you\'re busy.', ko: '당신이 바쁜 것 같아요.' },
    { en: 'It looks like the weather is getting worse.', ko: '날씨가 악화되는 것 같아요.' },
    { en: 'It looks like everyone is here.', ko: '모두가 여기 있는 것 같아요.' },
  ]},

  // ─── C1 LEVEL ───────────────────────────────────────────────────────────────
  // C1 - Travel
  { id: 'p_C1_travel_001', pattern: 'It would be more convenient if ~', explanation: '조건을 제시하면서 더 편할 것 같다고 말하는 패턴입니다.', level: 'C1', topic: 'travel', examples: [
    { en: 'It would be more convenient if we left earlier.', ko: '우리가 더 일찍 떠나면 더 편할 것 같아요.' },
    { en: 'It would be more convenient if you confirmed the time.', ko: '당신이 시간을 확인하면 더 편할 것 같아요.' },
    { en: 'It would be more convenient if the hotel provided transport.', ko: '호텔이 교통편을 제공하면 더 편할 것 같아요.' },
  ]},
  { id: 'p_C1_travel_002', pattern: 'Provided that ~', explanation: '특정 조건을 가정하는 패턴입니다.', level: 'C1', topic: 'travel', examples: [
    { en: 'Provided that the weather is good, we\'ll go hiking.', ko: '날씨가 좋다면 우리는 등산을 갈 거예요.' },
    { en: 'Provided that you have time, let\'s meet tomorrow.', ko: '시간이 있다면 내일 만나요.' },
    { en: 'Provided that everything is arranged, the trip will be smooth.', ko: '모든 것이 준비되면 여행이 순탄할 거예요.' },
  ]},
  // C1 - Work
  { id: 'p_C1_work_001', pattern: 'Rather than ~, I would prefer ~', explanation: '두 가지 옵션 중 하나를 더 선호한다는 표현입니다.', level: 'C1', topic: 'work', examples: [
    { en: 'Rather than email, I would prefer to call.', ko: '이메일보다는 전화하는 것이 더 좋아요.' },
    { en: 'Rather than wait, I would prefer to take action now.', ko: '기다리기보다는 지금 조치를 취하는 것이 더 좋아요.' },
    { en: 'Rather than postpone, I would prefer to discuss it today.', ko: '미루기보다는 오늘 그것을 논의하는 것이 더 좋아요.' },
  ]},
  { id: 'p_C1_work_002', pattern: 'It is imperative that ~', explanation: '무언가가 매우 중요하다는 표현입니다.', level: 'C1', topic: 'work', examples: [
    { en: 'It is imperative that we complete this project on time.', ko: '우리가 이 프로젝트를 제때 완료하는 것이 매우 중요해요.' },
    { en: 'It is imperative that you understand the requirements.', ko: '당신이 요구사항을 이해하는 것이 매우 중요해요.' },
    { en: 'It is imperative that the data be accurate.', ko: '데이터가 정확해야 하는 것이 매우 중요해요.' },
  ]},
];
