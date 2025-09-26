(function immediateApply() {
  try {
    var saved = null;
    try { saved = localStorage.getItem('estudadores-theme'); } catch (e) {}
    var theme = (saved === 'light' || saved === 'dark') ? saved : (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light');
    var html = document.documentElement;
    html.removeAttribute('data-theme');
    if (theme === 'dark') html.setAttribute('data-theme', 'dark');
    window.__currentTheme = theme;
  } catch (e) {}
})();

(function observeSystemPreference() {
  try {
    if (!window.matchMedia) return;
    var mq = window.matchMedia('(prefers-color-scheme: dark)');
    mq.addEventListener('change', function (e) {
      try {
        if (!localStorage.getItem('estudadores-theme')) {
          setTheme(e.matches ? 'dark' : 'light');
        }
      } catch (err) {}
    });
  } catch (e) {}
})();

function setTheme(theme) {
  if (theme !== 'light' && theme !== 'dark') return;
  var html = document.documentElement;
  html.removeAttribute('data-theme');
  if (theme === 'dark') html.setAttribute('data-theme', 'dark');
  try { localStorage.setItem('estudadores-theme', theme); } catch (e) {}
  window.__currentTheme = theme;
  updateToggleIcon();
  var ev = new CustomEvent('themeChanged', { detail: { theme: theme } });
  document.dispatchEvent(ev);
}

function toggleTheme() {
  setTheme(window.__currentTheme === 'dark' ? 'light' : 'dark');
}

function createToggle() {
  var existing = document.querySelector('.light-dark');
  if (existing) return existing;
  var wrapper = document.createElement('div');
  wrapper.className = 'light-dark ms-2';
  wrapper.setAttribute('title', 'Alternar tema');
  wrapper.setAttribute('aria-label', 'Alternar tema claro/escuro');
  wrapper.innerHTML = '\n    <div class="moon p-1">\n      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-moon" viewBox="0 0 16 16">\n        <path d="M6 .278a.77.77 0 0 1 .08.858 7.2 7.2 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277q.792-.001 1.533-.16a.79.79 0 0 1 .81.316.73.73 0 0 1-.031.893A8.35 8.35 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.75.75 0 0 1 6 .278M4.858 1.311A7.27 7.27 0 0 0 1.025 7.71c0 4.02 3.279 7.276 7.319 7.276a7.32 7.32 0 0 0 5.205-2.162q-.506.063-1.029.063c-4.61 0-8.343-3.714-8.343-8.29 0-1.167.242-2.278.681-3.286"/>\n      </svg>\n    </div>\n    <div class="sun p-1 d-none">\n      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-brightness-high" viewBox="0 0 16 16">\n        <path d="M8 11a3 3 0 1 1 0-6 3 3 0 0 1 0 6m0 1a4 4 0 1 0 0-8 4 4 0 0 0 0 8M8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0m0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13m8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5M3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8m10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0m-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0m9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707M4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708"/>\n      </svg>\n    </div>\n  ';
  wrapper.addEventListener('click', function (e) { e.preventDefault(); e.stopPropagation(); toggleTheme(); });
  return wrapper;
}

function updateToggleIcon() {
  try {
    var toggle = document.querySelector('.light-dark');
    if (!toggle) return;
    var sun = toggle.querySelector('.sun');
    var moon = toggle.querySelector('.moon');
    if (!sun || !moon) return;
    if (window.__currentTheme === 'dark') {
      sun.classList.remove('d-none');
      moon.classList.add('d-none');
    } else {
      sun.classList.add('d-none');
      moon.classList.remove('d-none');
    }
  } catch (e) {}
}

function tryInsertToggle() {
  try {
    if (document.querySelector('.light-dark')) { updateToggleIcon(); return; }
    var header = document.querySelector('header');
    var toggle = createToggle();
    if (!header) {
      toggle.style.position = 'fixed';
      toggle.style.top = '12px';
      toggle.style.right = '12px';
      toggle.style.zIndex = '9999';
      document.body.appendChild(toggle);
      updateToggleIcon();
      return;
    }
    var container = header.querySelector('.container-fluid, .row, .col');
    (container || header).appendChild(toggle);
    updateToggleIcon();
  } catch (e) {}
}


document.addEventListener('DOMContentLoaded', function () {
  tryInsertToggle();
});


var observer = new MutationObserver(function () { tryInsertToggle(); });
observer.observe(document.documentElement, { childList: true, subtree: true });

// Expor funções utilitárias
window.darkMode = { setTheme: setTheme, toggle: toggleTheme, current: function(){ return window.__currentTheme; } };


