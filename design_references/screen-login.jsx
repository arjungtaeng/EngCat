// EngCat — Login screen (Google Sign-In)

const GoogleIcon = () => (
  <svg width="18" height="18" viewBox="0 0 24 24" style={{ flexShrink: 0 }}>
    <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
    <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
    <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
    <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
  </svg>
);

function ECScreenLogin() {
  const T = ECTokens;
  const CLIENT_ID = '292056702798-dstidce7221dgl95e7a56gu1cjrs6akq.apps.googleusercontent.com';

  const [gsiReady, setGsiReady] = React.useState(false);
  const [pressing, setPressing] = React.useState(false);
  const [taglineVisible, setTaglineVisible] = React.useState(false);
  const [buttonsVisible, setButtonsVisible] = React.useState(false);

  // ── Collapse-scramble effect ──────────────────────────────────────
  const POOL = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const TARGET = 'ENGCAT';
  const START_COUNT = 14;
  const START_FONT = 42;
  const END_FONT = 28;
  const START_SPACING = 6;
  const END_SPACING = 3;
  const TOTAL_FRAMES = 52;

  const [scramble, setScramble] = React.useState(() => ({
    text: Array.from({ length: START_COUNT }, () => POOL[Math.floor(Math.random() * POOL.length)]).join(''),
    fontSize: START_FONT,
    letterSpacing: START_SPACING,
  }));

  React.useEffect(() => {
    let frame = 0;
    const id = setInterval(() => {
      frame++;
      const p = frame / TOTAL_FRAMES;

      const eased = 1 - Math.pow(1 - p, 2);
      const currentCount = Math.max(6, Math.round(START_COUNT - (START_COUNT - 6) * eased));
      const fontSize = START_FONT - (START_FONT - END_FONT) * eased;
      const letterSpacing = START_SPACING - (START_SPACING - END_SPACING) * eased;

      const extraCount = currentCount - 6;
      let chars = '';
      for (let i = 0; i < extraCount; i++) {
        chars += POOL[Math.floor(Math.random() * POOL.length)];
      }
      TARGET.split('').forEach((letter, i) => {
        const lockAt = 0.52 + (i / (TARGET.length - 1)) * 0.38;
        chars += p >= lockAt ? letter : POOL[Math.floor(Math.random() * POOL.length)];
      });

      setScramble({ text: chars, fontSize, letterSpacing });

      if (frame === Math.floor(TOTAL_FRAMES * 0.5)) {
        setTaglineVisible(true);
      }
      if (frame >= TOTAL_FRAMES) {
        clearInterval(id);
        setScramble({ text: TARGET, fontSize: END_FONT, letterSpacing: END_SPACING });
        setTimeout(() => setButtonsVisible(true), 260);
      }
    }, 30);
    return () => clearInterval(id);
  }, []);
  // ─────────────────────────────────────────────────────────────────

  const handleGoogleResponse = (response) => {
    try {
      const b64 = response.credential.split('.')[1].replace(/-/g, '+').replace(/_/g, '/');
      const payload = JSON.parse(atob(b64));
      const user = { name: payload.name, email: payload.email, picture: payload.picture || null };
      localStorage.setItem('engcat_user', JSON.stringify(user));
      window.ECNav && window.ECNav.go('home');
    } catch (e) {
      console.error('Google login error', e);
    }
  };

  // Inject pop keyframe
  React.useEffect(() => {
    const s = document.createElement('style');
    s.textContent = `
      @keyframes ec-popcorn {
        0%   { opacity:0; transform: scale(0.2) translateY(0px); }
        45%  { opacity:1; transform: scale(1.35) translateY(-10px); }
        70%  { transform: scale(0.88) translateY(3px); }
        85%  { transform: scale(1.08) translateY(-2px); }
        100% { transform: scale(1) translateY(0px); }
      }
    `;
    document.head.appendChild(s);
    return () => document.head.removeChild(s);
  }, []);

  const taglineWords = [['매일', '10단어,', '5문장으로'], ['영어', '실력을', '키워보세요.']];
  const popcornDelays = [0, 0.1, 0.2, 0.3, 0.4, 0.5];

  React.useEffect(function() {
    const init = function() {
      if (!window.google || !window.google.accounts) return;
      window.google.accounts.id.initialize({
        client_id: CLIENT_ID,
        callback: handleGoogleResponse,
        ux_mode: 'popup',
      });
      setGsiReady(true);
    };
    if (window.google && window.google.accounts) {
      init();
    } else {
      const prev = window.onGoogleLibraryLoad;
      window.onGoogleLibraryLoad = function() { if (prev) prev(); init(); };
    }
  }, []);

  const handleGoogleClick = () => {
    if (window.google && window.google.accounts) {
      window.google.accounts.id.prompt();
    }
  };

  return (
    <div style={{
      height: '100%',
      background: T.bg1,
      display: 'flex', flexDirection: 'column',
      alignItems: 'center', justifyContent: 'center',
      padding: '0 32px',
    }}>

      {/* Logo */}
      <div style={{ textAlign: 'center', marginBottom: 20 }}>
        <img
          src="icons/icon-1024.png"
          alt="EngCat"
          style={{ width: 140, height: 140, mixBlendMode: 'lighten' }}
        />
      </div>

      {/* EngCat headline — collapse scramble (fixed-height wrapper prevents layout shift) */}
      <div style={{ height: 52, marginBottom: 14, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
        <div style={{
          fontFamily: T.mono,
          fontWeight: 500,
          fontSize: scramble.fontSize,
          letterSpacing: scramble.letterSpacing,
          color: T.text,
          overflow: 'hidden',
          maxWidth: '100%',
        }}>{scramble.text}</div>
      </div>

      {/* Tagline — 단어별 팝콘 */}
      <div style={{
        fontFamily: T.sans, fontSize: 13.5, color: T.textDim,
        lineHeight: 1.7, textAlign: 'center', marginBottom: 52,
      }}>
        {taglineWords.map((words, li) => (
          <div key={li}>
            {words.map((word, wi) => {
              const idx = li * 3 + wi;
              return (
                <span key={wi} style={{
                  display: 'inline-block',
                  marginRight: wi < words.length - 1 ? '0.3em' : 0,
                  opacity: taglineVisible ? 1 : 0,
                  animation: taglineVisible
                    ? `ec-popcorn 0.5s cubic-bezier(0.34,1.56,0.64,1) ${popcornDelays[idx]}s both`
                    : 'none',
                }}>{word}</span>
              );
            })}
          </div>
        ))}
      </div>

      {/* Google button */}
      <div style={{
        width: '100%', maxWidth: 380,
        opacity: buttonsVisible ? 1 : 0,
        transition: 'opacity 0.5s ease',
      }}>
        <button
          onClick={handleGoogleClick}
          onMouseDown={() => setPressing(true)}
          onMouseUp={() => setPressing(false)}
          onTouchStart={() => setPressing(true)}
          onTouchEnd={() => setPressing(false)}
          style={{
            width: '100%', padding: '15px 20px',
            background: pressing ? T.bg4 : T.bg2,
            border: '1px solid ' + (pressing ? T.hairStr : T.hair),
            borderRadius: 14,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 10,
            cursor: 'pointer',
            color: T.text, fontSize: 15, fontWeight: 500, fontFamily: T.sans,
            WebkitAppearance: 'none', appearance: 'none',
            transition: 'background 0.12s, border-color 0.12s',
            transform: pressing ? 'scale(0.98)' : 'scale(1)',
            opacity: gsiReady ? 1 : 0.5,
          }}
        >
          <GoogleIcon />
          Google로 계속하기
        </button>
      </div>

      {/* Guest */}
      <div style={{
        marginTop: 32, textAlign: 'center',
        opacity: buttonsVisible ? 1 : 0,
        transition: 'opacity 0.5s ease 0.1s',
      }}>
        <span
          onClick={() => {
            localStorage.setItem('engcat_user', JSON.stringify({ name: '게스트', email: 'guest@engcat.app', picture: null }));
            window.ECNav && window.ECNav.go('home');
          }}
          style={{
            fontFamily: T.mono, fontSize: 9.5, letterSpacing: 1.2,
            color: T.textFaint, cursor: 'pointer', textTransform: 'uppercase',
          }}
        >
          로그인 없이 둘러보기
        </span>
      </div>
    </div>
  );
}

Object.assign(window, { ECScreenLogin });
