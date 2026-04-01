(function () {
  'use strict';

  var TARGET = 'S4m';
  var INSTRUCTORS = ['S4m', 'D5e', 'C3s', 'A8o', 'M6o', 'M4m', 'G5y', 'A4a'];
  var SCORE_KEY = 'learnk8s_shooter_score';
  var score = 0;
  var hudEl = null;

  // Only activate on homepage and about-us
  var path = window.location.pathname;
  if (path !== '/' && path !== '/about-us') return;

  // Wait for DOM
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }

  function init() {
    document.body.classList.add('game-active');

    // Load persisted score
    try { score = parseInt(localStorage.getItem(SCORE_KEY)) || 0; } catch (e) { score = 0; }

    createHUD();
    findAndMarkInstructors();
  }

  function createHUD() {
    hudEl = document.createElement('div');
    hudEl.className = 'game-hud';
    hudEl.innerHTML =
      '<div class="game-hud__score">SCORE: <span id="game-score">' + score + '</span></div>';
    document.body.appendChild(hudEl);
  }

  function updateHUD() {
    var el = document.getElementById('game-score');
    if (el) el.textContent = score;
  }

  function findAndMarkInstructors() {
    var imgs = document.querySelectorAll('img');
    imgs.forEach(function (img) {
      var alt = img.getAttribute('alt') || '';
      var matched = null;
      for (var i = 0; i < INSTRUCTORS.length; i++) {
        if (alt.indexOf(INSTRUCTORS[i]) !== -1) {
          matched = INSTRUCTORS[i];
          break;
        }
      }
      if (!matched) return;

      img.classList.add('shootable');
      img.setAttribute('data-instructor', matched);

      img.addEventListener('click', function (e) {
        e.preventDefault();
        e.stopPropagation();
        shoot(img, matched, e);
      });

      // On about-us, images use aspect-ratio positioning with 0 click height.
      // Add click handler on the parent container too.
      var parent = img.parentElement;
      if (parent && parent.classList.contains('aspect-ratio')) {
        parent.classList.add('shootable');
        parent.style.cursor = 'crosshair';
        parent.addEventListener('click', function (e) {
          e.preventDefault();
          e.stopPropagation();
          shoot(img, matched, e);
        });
      }
    });
  }

  function shoot(imgEl, name, e) {
    var isTarget = (name === TARGET);
    var isMiriam = (name === 'M4m');
    var delta = isTarget ? 100 : (isMiriam ? -1000000 : -500);

    score += delta;
    try { localStorage.setItem(SCORE_KEY, score); } catch (e2) {}
    updateHUD();

    // Muzzle flash at click position
    muzzleFlash(e.clientX, e.clientY);

    // Hit animation on the image
    imgEl.classList.remove('hit-target', 'hit-friendly');
    void imgEl.offsetWidth; // force reflow
    imgEl.classList.add(isTarget ? 'hit-target' : 'hit-friendly');

    if (isTarget) {
      showCelebration();
    } else if (isMiriam) {
      showGameOver();
    } else {
      showFriendlyFire();
    }
  }

  function muzzleFlash(x, y) {
    var flash = document.createElement('div');
    flash.className = 'muzzle-flash';
    flash.style.left = (x - 20) + 'px';
    flash.style.top = (y - 20) + 'px';
    document.body.appendChild(flash);
    setTimeout(function () { flash.remove(); }, 200);
  }

  function showCelebration() {
    var overlay = document.createElement('div');
    overlay.className = 'game-overlay game-overlay--celebrate';
    overlay.innerHTML =
      '<div class="game-overlay__content">' +
        '<div class="game-overlay__points">+100</div>' +
        '<div class="game-overlay__message">TARGET ELIMINATED</div>' +
        '<div class="game-overlay__sub">S4m has been neutralised</div>' +
      '</div>';
    document.body.appendChild(overlay);
    requestAnimationFrame(function () {
      overlay.classList.add('game-overlay--visible');
    });
    spawnConfetti();
    setTimeout(function () {
      overlay.classList.remove('game-overlay--visible');
      setTimeout(function () { overlay.remove(); }, 400);
    }, 2500);
  }

  function showFriendlyFire() {
    var overlay = document.createElement('div');
    overlay.className = 'game-overlay game-overlay--penalty';
    overlay.innerHTML =
      '<div class="game-overlay__content">' +
        '<div class="game-overlay__points">-500</div>' +
        '<div class="game-overlay__message">FRIENDLY FIRE</div>' +
        '<div class="game-overlay__sub">Wrong target! Shoot S4m!</div>' +
      '</div>';
    document.body.appendChild(overlay);
    requestAnimationFrame(function () {
      overlay.classList.add('game-overlay--visible');
    });
    setTimeout(function () {
      overlay.classList.remove('game-overlay--visible');
      setTimeout(function () { overlay.remove(); }, 400);
    }, 2500);
  }

  function showGameOver() {
    var overlay = document.createElement('div');
    overlay.className = 'game-overlay game-overlay--gameover';
    overlay.innerHTML =
      '<div class="game-overlay__content">' +
        '<div class="game-overlay__points">-1,000,000</div>' +
        '<div class="game-overlay__message">ARE YOU F*CKING STUPID?</div>' +
        '<div class="game-overlay__sub">GAME OVER</div>' +
      '</div>';
    document.body.appendChild(overlay);
    requestAnimationFrame(function () {
      overlay.classList.add('game-overlay--visible');
    });
    // This one stays longer — you deserve it
    setTimeout(function () {
      overlay.classList.remove('game-overlay--visible');
      setTimeout(function () { overlay.remove(); }, 400);
    }, 5000);
  }

  function spawnConfetti() {
    var colors = ['#ff0', '#0f0', '#0ff', '#f0f', '#ff4444', '#44ff44', '#4444ff', '#ffaa00'];
    for (var i = 0; i < 60; i++) {
      (function (idx) {
        setTimeout(function () {
          var c = document.createElement('div');
          c.className = 'confetti';
          c.style.left = (Math.random() * 100) + 'vw';
          c.style.top = '-10px';
          c.style.width = (6 + Math.random() * 10) + 'px';
          c.style.height = (6 + Math.random() * 10) + 'px';
          c.style.background = colors[Math.floor(Math.random() * colors.length)];
          c.style.borderRadius = Math.random() > 0.5 ? '50%' : '2px';
          c.style.animationDuration = (1 + Math.random() * 2) + 's';
          document.body.appendChild(c);
          setTimeout(function () { c.remove(); }, 3000);
        }, idx * 30);
      })(i);
    }
  }

})();
