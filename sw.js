// 배포할 때 이 값만 올리면 됩니다
const CACHE = 'engcat-v314';

// index.html과 app 파일들은 항상 네트워크 우선
const NETWORK_FIRST = ['/', '/index.html', '/design_references/', '/EngCat/'];

const ASSETS = [
  '/manifest.json',
  '/vendor/react.development.js',
  '/vendor/react-dom.development.js',
  '/vendor/babel.min.js',
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

  const path = new URL(e.request.url).pathname;
  const isNetworkFirst = NETWORK_FIRST.some(p => path === p || path.startsWith(p));

  if (isNetworkFirst) {
    e.respondWith(
      fetch(e.request).then(res => {
        const clone = res.clone();
        caches.open(CACHE).then(c => c.put(e.request, clone));
        return res;
      }).catch(() => caches.match(e.request))
    );
  } else {
    e.respondWith(
      caches.match(e.request).then(cached => cached || fetch(e.request).then(res => {
        const clone = res.clone();
        caches.open(CACHE).then(c => c.put(e.request, clone));
        return res;
      }))
    );
  }
});
