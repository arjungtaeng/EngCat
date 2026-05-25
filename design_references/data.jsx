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

window.ECData = { words: [], sentences: [], collocations: [], idioms: [], nuances: [], expressions: [] };
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
  window.ECData = { words: [], sentences: [], collocations: [], idioms: [], nuances: [], expressions: [] };
  window.ECDataLoaded = _runECDataLoad().catch(e => {
    window.ECDataError = _formatSupabaseError(e);
    console.error('Supabase 수동 재시도 실패:', e);
  });
  return window.ECDataLoaded;
};

Object.assign(window, { ECData, ECSession });
