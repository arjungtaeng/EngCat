// 배포할 때 이 값만 올리면 됩니다
const CACHE = 'engcat-v316';

const NETWORK_FIRST = ['/', '/index.html', '/design_references/', '/EngCat/'];
const CACHE_FIRST  = ['/fonts/', '/icons/', '/vendor/'];

self.addEventListener('install', e => {
  self.skipWaiting();
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys()
      .then(keys => Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k))))
      .then(() => self.clients.claim())
  );
});

self.addEventListener('fetch', e => {
  const url = new URL(e.request.url);
  const isNetFirst = NETWORK_FIRST.some(p => url.pathname.startsWith(p));
  const isCacheFirst = CACHE_FIRST.some(p => url.pathname.startsWith(p));

  if (isCacheFirst) {
    e.respondWith(
      caches.match(e.request).then(cached => {
        if (cached) return cached;
        return fetch(e.request).then(res => {
          const clone = res.clone();
          caches.open(CACHE).then(c => c.put(e.request, clone));
          return res;
        });
      })
    );
    return;
  }

  // Network-first (default)
  e.respondWith(
    fetch(e.request)
      .then(res => {
        const clone = res.clone();
        caches.open(CACHE).then(c => c.put(e.request, clone));
        return res;
      })
      .catch(() => caches.match(e.request))
  );
});
