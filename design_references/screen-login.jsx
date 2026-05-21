// EngCat — Login screen (Google Sign-In)

function ECScreenLogin() {
  const T = ECTokens;
  const CLIENT_ID = '292056702798-dstidce7221dgl95e7a56gu1cjrs6akq.apps.googleusercontent.com';

  const [gsiReady, setGsiReady] = React.useState(false);

  const renderGSIButton = () => {
    const container = document.getElementById('gsi-btn');
    if (!container || !window.google || !window.google.accounts) return;
    window.google.accounts.id.renderButton(container, {
      theme: 'filled_black',
      size: 'large',
      width: container.offsetWidth || 332,
      locale: 'ko',
      text: 'signin_with',
      shape: 'rectangular',
      logo_alignment: 'left',
    });
    setGsiReady(true);
  };

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
      setTimeout(renderGSIButton, 100);
    };

    if (window.google && window.google.accounts) {
      init();
    } else {
      const prev = window.onGoogleLibraryLoad;
      window.onGoogleLibraryLoad = function() {
        if (prev) prev();
        init();
      };
    }
  }, []);

  return (
    <div style={{
      height: '100%', background: T.bg1,
      display: 'flex', flexDirection: 'column',
      alignItems: 'center', justifyContent: 'center',
      padding: '0 32px',
    }}>

      {/* Logo */}
      <div style={{ marginBottom: 36, textAlign: 'center' }}>
        <img
          src="icons/icon-1024.png"
          alt="EngCat"
          style={{ width: 140, height: 140, mixBlendMode: 'lighten' }}
        />
        <div style={{
          fontFamily: T.mono, fontSize: 9.5, letterSpacing: 2.5,
          color: T.textMute, textTransform: 'uppercase', marginTop: 4,
        }}>EngCat</div>
        <div style={{
          fontFamily: T.sans, fontSize: 13.5, color: T.textDim,
          marginTop: 10, lineHeight: 1.65,
        }}>매일 10단어, 5문장으로<br/>영어 실력을 키워보세요.</div>
      </div>

      {/* Google Sign-In */}
      <div style={{ width: '100%', maxWidth: 380 }}>

        {/* Loading placeholder — React-managed, separate from gsi-btn */}
        {!gsiReady && (
          <div style={{
            width: '100%', minHeight: 46, borderRadius: 12,
            background: T.bg3, display: 'flex',
            alignItems: 'center', justifyContent: 'center',
          }}>
            <div style={{ fontSize: 13, color: T.textMute }}>구글 로그인 불러오는 중...</div>
          </div>
        )}

        {/* Google button container — NO React children, Google owns this DOM node */}
        <div
          id="gsi-btn"
          style={{
            width: '100%', borderRadius: 12, overflow: 'hidden',
            display: gsiReady ? 'block' : 'none',
          }}
        />
      </div>

      {/* Guest shortcut */}
      <div style={{ marginTop: 36, textAlign: 'center' }}>
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
