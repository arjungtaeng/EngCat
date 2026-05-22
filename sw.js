// 배포할 때 이 값만 올리면 됩니다
const CACHE = 'engcat-v16';

const ASSETS = [
  '/',
  '/manifest.json',
  '/vendor/react.development.js',
  '/vendor/react-dom.development.js',
  '/vendor/babel.min.js',
  '/design_references/tokens.jsx',
  '/design_references/icons.jsx',
  '/design_references/screen-login.jsx',
  '/design_references/screen-onboarding.jsx',
  '/design_references/screen-home.jsx',
  '/design_references/screen-word-card.jsx',
  '/design_references/screen-sentence-card.jsx',
  '/design_references/screen-quiz.jsx',
  '/design_references/screen-stats.jsx',
  '/design_references/screen-profile.jsx',
  '/icons/icon-180.png',
  '/icons/icon-167.png',
  '/icons/icon-152.png',
];

self.addEventListener('install', e => {
  e.waitUntil(
    caches.open(CACHE)
      .then(c => c.addAll(ASSETS.map(url => new Request(url, { cache: 'reload' }))))
      .then(() => self.skipWaiting())
  );
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys()
      .then(keys => Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k))))
      .then(() => self.clients.claim())
  );
});

self.addEventListener('fetch', e => {
  if (!e.request.url.startsWith(self.location.origin)) return;
  e.respondWith(
    caches.match(e.request).then(cached => cached || fetch(e.request).then(res => {
      const clone = res.clone();
      caches.open(CACHE).then(c => c.put(e.request, clone));
      return res;
    }))
  );
});
