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

  // Inject keyframes once
  React.useEffect(function() {
    const id = 'ec-login-keyframes';
    if (!document.getElementById(id)) {
      const s = document.createElement('style');
      s.id = id;
      s.textContent = `
        @keyframes ec-float {
          0%, 100% { transform: translateY(0px); }
          50%       { transform: translateY(-10px); }
        }
        @keyframes ec-glow {
          0%, 100% { opacity: 0.5; transform: translate(-50%,-50%) scale(1); }
          50%       { opacity: 1;   transform: translate(-50%,-50%) scale(1.2); }
        }
        @keyframes ec-fade-up {
          from { opacity: 0; transform: translateY(20px); }
          to   { opacity: 1; transform: translateY(0); }
        }
      `;
      document.head.appendChild(s);
    }
  }, []);

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

  const anim = (delay) => ({
    animation: 'ec-fade-up 0.65s cubic-bezier(0.16,1,0.3,1) both',
    animationDelay: delay,
  });

  return (
    <div style={{
      height: '100%',
      background: T.bg1,
      backgroundImage: 'radial-gradient(ellipse 70% 45% at 50% 20%, rgba(232,178,106,0.07) 0%, transparent 100%)',
      display: 'flex', flexDirection: 'column',
      alignItems: 'center', justifyContent: 'center',
      padding: '0 32px',
    }}>

      {/* Logo + glow */}
      <div style={{ ...anim('0s'), position: 'relative', textAlign: 'center', marginBottom: 6 }}>

        {/* Amber glow behind cat */}
        <div style={{
          position: 'absolute', top: '50%', left: '50%',
          width: 220, height: 220, borderRadius: '50%',
          background: 'radial-gradient(circle, rgba(232,178,106,0.22) 0%, transparent 70%)',
          animation: 'ec-glow 4s ease-in-out infinite',
          pointerEvents: 'none',
        }} />

        <img
          src="icons/icon-1024.png"
          alt="EngCat"
          style={{
            width: 140, height: 140,
            mixBlendMode: 'lighten',
            animation: 'ec-float 4s ease-in-out infinite',
            position: 'relative', zIndex: 1,
          }}
        />
      </div>

      {/* Label */}
      <div style={{
        ...anim('0.12s'),
        fontFamily: T.mono, fontSize: 9.5, letterSpacing: 2.8,
        color: T.textMute, textTransform: 'uppercase', marginBottom: 10,
      }}>EngCat</div>

      {/* Tagline */}
      <div style={{
        ...anim('0.22s'),
        fontFamily: T.sans, fontSize: 13.5, color: T.textDim,
        lineHeight: 1.7, textAlign: 'center', marginBottom: 52,
      }}>
        매일 10단어, 5문장으로<br/>영어 실력을 키워보세요.
      </div>

      {/* Google button */}
      <div style={{ ...anim('0.36s'), width: '100%', maxWidth: 380 }}>
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
      <div style={{ ...anim('0.5s'), marginTop: 32, textAlign: 'center' }}>
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
