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
  travel:   '#1a3a5c',
  cafe:     '#3a2a1a',
  daily:    '#2a3a4a',
  work:     '#1a2a3a',
  emotions: '#2a1a3a',
};

window.ECData = { words: [], sentences: [] };

window.ECDataLoaded = (async () => {
  try {
    const db = window.ECSupabaseClient;
    const [wordsRes, sentencesRes] = await Promise.all([
      db.from('words').select('*').order('topic_id').order('sort_order'),
      db.from('sentences').select('*').order('topic_id').order('sort_order'),
    ]);

    if (wordsRes.error) throw wordsRes.error;
    if (sentencesRes.error) throw sentencesRes.error;

    window.ECData.words = wordsRes.data.map(w => ({
      id:   w.id,
      en:   w.en,
      ipa:  w.ipa || '',
      pos:  w.pos || '',
      ko:   w.ko,
      def:  w.definition || '',
      ex:       w.example_en || '',
      exKo:     w.example_ko || '',
      examples: [w.example_en_2, w.example_en_3, w.example_en_4].filter(Boolean),
      tint: TOPIC_TINTS[w.topic_id] || '#1a2a3a',
      img:  w.image_url || null,
    }));

    window.ECData.sentences = sentencesRes.data.map(s => ({
      id:       s.id,
      en:       s.en,
      ko:       s.ko,
      highlight: s.highlight || '',
      tip:      s.tip || '',
      sit:      s.situation || '',
      img:      s.image_url || null,
      tint:     TOPIC_TINTS[s.topic_id] || '#1a2a3a',
      examples: [s.ex1, s.ex2, s.ex3, s.ex4].filter(Boolean),
    }));
  } catch (err) {
    console.error('Supabase 데이터 로딩 실패:', err);
  }
})();

Object.assign(window, { ECData, ECSession });
