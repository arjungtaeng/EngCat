// EngCat — Supabase 클라이언트 초기화
const EC_SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InprbnF6anJ5bWtzd2txb3RyaW9uIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzk0NjU4NTEsImV4cCI6MjA5NTA0MTg1MX0.yyHg9Yck3pRlkzL4xIATdnwDKZcA1ANhflrbynnlVIk';
window.EC_SUPABASE_ANON_KEY = EC_SUPABASE_ANON_KEY;

if (window.supabase && window.supabase.createClient) {
  window.ECSupabaseClient = window.supabase.createClient(
    'https://zknqzjrymkswkqotrion.supabase.co',
    EC_SUPABASE_ANON_KEY
  );
} else {
  console.error('Supabase CDN 로드 실패 — window.supabase 없음');
}

// ── IndexedDB 오디오 캐시 ──────────────────────────────────────
window.ECTTSCache = {
  _db: null,
  async _open() {
    if (this._db) return this._db;
    return new Promise((resolve, reject) => {
      const req = indexedDB.open('ec-tts-v1', 1);
      req.onupgradeneeded = e => e.target.result.createObjectStore('audio');
      req.onsuccess = e => { this._db = e.target.result; resolve(this._db); };
      req.onerror = () => reject(req.error);
    });
  },
  async get(key) {
    try {
      const db = await this._open();
      return new Promise((resolve) => {
        const req = db.transaction('audio').objectStore('audio').get(key);
        req.onsuccess = () => resolve(req.result || null);
        req.onerror = () => resolve(null);
      });
    } catch (_) { return null; }
  },
  async set(key, blob) {
    try {
      const db = await this._open();
      return new Promise((resolve) => {
        const tx = db.transaction('audio', 'readwrite');
        tx.objectStore('audio').put(blob, key);
        tx.oncomplete = resolve;
        tx.onerror = resolve;
      });
    } catch (_) {}
  },
};

// ── 공유 TTS 함수 ──────────────────────────────────────────────
window.ECSpeak = async function(text, voice) {
  const v = voice || localStorage.getItem('ec_azure_voice') || 'en-US-JennyNeural';
  const cacheKey = `${text}::${v}`;

  // 캐시 확인
  const cached = await window.ECTTSCache.get(cacheKey);
  if (cached) {
    return new Promise((resolve) => {
      const url = URL.createObjectURL(cached);
      const audio = new Audio(url);
      audio.onended = () => { URL.revokeObjectURL(url); resolve(); };
      audio.onerror  = () => { URL.revokeObjectURL(url); resolve(); };
      audio.play();
    });
  }

  // Edge Function 호출
  try {
    const res = await fetch('https://zknqzjrymkswkqotrion.supabase.co/functions/v1/tts', {
      method: 'POST',
      headers: {
        'Authorization': 'Bearer ' + EC_SUPABASE_ANON_KEY,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ text, voice: v, rate: 'medium' }),
    });
    if (!res.ok) throw new Error(`TTS ${res.status}`);
    const blob = await res.blob();
    window.ECTTSCache.set(cacheKey, blob);
    return new Promise((resolve) => {
      const url = URL.createObjectURL(blob);
      const audio = new Audio(url);
      audio.onended = () => { URL.revokeObjectURL(url); resolve(); };
      audio.onerror  = () => { URL.revokeObjectURL(url); resolve(); };
      audio.play();
    });
  } catch (_) {}

  // 폴백: Web Speech API
  return new Promise((resolve) => {
    window.speechSynthesis.cancel();
    const utt = new SpeechSynthesisUtterance(text);
    utt.lang = 'en-US';
    utt.rate = 0.85;
    utt.onend = resolve;
    utt.onerror = resolve;
    window.speechSynthesis.speak(utt);
  });
};
