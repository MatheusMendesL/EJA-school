self.addEventListener("install", event => {
  event.waitUntil(
    caches.open("estudadores-cache").then(cache => {
      return cache.addAll([
        "/",
        "/index.html",
        "/home.html",
        "/login.html",
        "/signup.html",
        "/task.html",
        "/lessons.html",
        "/finalTask.html",
        "/icons/icon-192.png",
        "/icons/icon-512.png"
      ]);
    })
  );
});

self.addEventListener("fetch", event => {
  event.respondWith(
    caches.match(event.request).then(response => {
      return response || fetch(event.request);
    })
  );
});
