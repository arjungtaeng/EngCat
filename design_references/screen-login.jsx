// EngCat — Login screen (Google Sign-In + email fallback)

function ECScreenLogin() {
  const T = ECTokens;
  const CLIENT_ID = '292056702798-dstidce7221dgl95e7a56gu1cjrs6akq.apps.googleusercontent.com';

  const [showEmail, setShowEmail] = React.useState(false);
  const [mode, setMode] = React.useState('login');
  const [name, setName] = React.useState('');
  const [email, setEmail] = React.useState('');
  const [password, setPassword] = React.useState('');
  const [error, setError] = React.useState('');
  const [gsiReady, setGsiReady] = React.useState(false);

  const handleGoogleResponse = (response) => {
    try {
      // JWT payload decode (client-side, no server needed)
      const b64 = response.credential.split('.')[1].replace(/-/g, '+').replace(/_/g, '/');
      const payload = JSON.parse(atob(b64));
      const user = { name: payload.name, email: payload.email, picture: payload.picture || null };
      localStorage.setItem('engcat_user', JSON.stringify(user));
      window.ECNav?.go('home');
    } catch (e) {
      setError('구글 로그인 중 오류가 발생했어요. 다시 시도해주세요.');
    }
  };

  const renderGSIButton = () => {
    const container = document.getElementById('gsi-btn');
    if (!container || !window.google?.accounts) return;
    container.innerHTML = '';
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

  React.useEffect(() => {
    const init = () => {
      if (!window.google?.accounts) return;
      window.google.accounts.id.initialize({
        client_id: CLIENT_ID,
        callback: handleGoogleResponse,
        ux_mode: 'popup',
      });
      // renderButton needs the DOM node to exist — slight delay for safety
      setTimeout(renderGSIButton, 80);
    };

    if (window.google?.accounts) {
      init();
    } else {
      const prev = window.onGoogleLibraryLoad;
      window.onGoogleLibraryLoad = () => { if (prev) prev(); init(); };
    }
  }, []);

  // Re-render button when email panel closes (DOM slot becomes visible again)
  React.useEffect(() => {
    if (!showEmail && window.google?.accounts) {
      setTimeout(renderGSIButton, 80);
    }
  }, [showEmail]);

  const inputStyle = {
    width: '100%', padding: '14px 16px',
    background: T.bg3, border: `1px solid ${T.hair}`,
    borderRadius: 12, color: T.text,
    fontSize: 15, fontFamily: T.sans,
    outline: 'none', WebkitAppearance: 'none',
    appearance: 'none', boxSizing: 'border-box',
  };

  const handleEmailSubmit = () => {
    setError('');
    if (mode === 'register') {
      if (!name.trim() || !email.trim() || !password.trim()) { setError('모든 항목을 입력해주세요.'); return; }
      if (password.length < 6) { setError('비밀번호는 6자 이상이어야 해요.'); return; }
      localStorage.setItem('engcat_user', JSON.stringify({ name: name.trim(), email: email.trim() }));
      window.ECNav?.go('home');
    } else {
      if (!email.trim() || !password.trim()) { setError('이메일과 비밀번호를 입력해주세요.'); return; }
      const stored = localStorage.getItem('engcat_user');
      if (stored) {
        const u = JSON.parse(stored);
        if (u.email !== email.trim()) { setError('이메일 또는 비밀번호가 올바르지 않아요.'); return; }
      } else {
        localStorage.setItem('engcat_user', JSON.stringify({ name: email.split('@')[0], email: email.trim() }));
      }
      window.ECNav?.go('home');
    }
  };

  return (
    <div style={{
      height: '100%', background: T.bg1,
      display: 'flex', flexDirection: 'column',
      alignItems: 'center', justifyContent: 'center',
      padding: '0 24px',
      overflowY: 'auto', WebkitOverflowScrolling: 'touch',
    }}>

      {/* Brand */}
      <div style={{ marginBottom: 48, textAlign: 'center' }}>
        <div style={{
          fontFamily: T.serif, fontSize: 72, color: T.accent,
          fontStyle: 'italic', lineHeight: 1, letterSpacing: -3,
        }}>EC</div>
        <div style={{
          fontFamily: T.mono, fontSize: 9.5, letterSpacing: 2.5,
          color: T.textMute, textTransform: 'uppercase', marginTop: 10,
        }}>EngCat</div>
        <div style={{
          fontFamily: T.sans, fontSize: 13.5, color: T.textDim,
          marginTop: 14, lineHeight: 1.65,
        }}>매일 10단어, 5문장으로<br/>영어 실력을 키워보세요.</div>
      </div>

      {/* Form area */}
      <div style={{ width: '100%', maxWidth: 380 }}>

        {/* Google Sign-In button slot */}
        <div
          id="gsi-btn"
          style={{
            width: '100%', borderRadius: 12, overflow: 'hidden',
            minHeight: 46,
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            background: gsiReady ? 'transparent' : T.bg3,
            transition: 'background 0.2s',
          }}
        >
          {!gsiReady && (
            <div style={{ fontSize: 13, color: T.textMute }}>구글 로그인 불러오는 중...</div>
          )}
        </div>

        {/* Divider */}
        <div style={{ display: 'flex', alignItems: 'center', gap: 12, margin: '18px 0' }}>
          <div style={{ flex: 1, height: 1, background: T.hair }} />
          <div style={{ fontSize: 11, color: T.textMute, fontFamily: T.mono, letterSpacing: 0.6 }}>또는</div>
          <div style={{ flex: 1, height: 1, background: T.hair }} />
        </div>

        {/* Email — collapsed toggle / expanded form */}
        {!showEmail ? (
          <button
            onClick={() => setShowEmail(true)}
            style={{
              width: '100%', padding: '14px',
              background: T.bg2, borderRadius: 12,
              border: `1px solid ${T.hair}`,
              color: T.textDim, fontSize: 14, fontFamily: T.sans,
              cursor: 'pointer', WebkitAppearance: 'none', appearance: 'none',
            }}
          >
            이메일로 계속하기
          </button>
        ) : (
          <div style={{
            background: T.bg2, borderRadius: 18,
            border: `1px solid ${T.hair}`, padding: '20px 18px',
          }}>
            {/* Form header */}
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 18 }}>
              <div style={{ fontFamily: T.serif, fontSize: 19, color: T.text, letterSpacing: -0.3 }}>
                {mode === 'login' ? '이메일 로그인' : '이메일 가입'}
              </div>
              <div onClick={() => { setShowEmail(false); setError(''); }} style={{ cursor: 'pointer' }}>
                {ECIcon.close(T.textMute, 18)}
              </div>
            </div>

            {mode === 'register' && (
              <div style={{ marginBottom: 10 }}>
                <input type="text" placeholder="이름" value={name}
                  onChange={e => { setName(e.target.value); setError(''); }} style={inputStyle} />
              </div>
            )}
            <div style={{ marginBottom: 10 }}>
              <input type="email" placeholder="이메일" value={email}
                onChange={e => { setEmail(e.target.value); setError(''); }} style={inputStyle} />
            </div>
            <div style={{ marginBottom: error ? 12 : 18 }}>
              <input type="password" placeholder="비밀번호" value={password}
                onChange={e => { setPassword(e.target.value); setError(''); }}
                onKeyDown={e => { if (e.key === 'Enter') handleEmailSubmit(); }}
                style={inputStyle} />
            </div>

            {error && (
              <div style={{
                fontSize: 12.5, color: T.bad, marginBottom: 14,
                padding: '9px 12px', background: T.badSoft, borderRadius: 8, lineHeight: 1.5,
              }}>{error}</div>
            )}

            <button onClick={handleEmailSubmit} style={{
              width: '100%', padding: '14px',
              background: T.accent, borderRadius: 12, border: 'none',
              color: '#1A1200', fontSize: 15, fontWeight: 700,
              fontFamily: T.sans, cursor: 'pointer',
              WebkitAppearance: 'none', appearance: 'none',
            }}>
              {mode === 'login' ? '로그인' : '가입하기'}
            </button>

            <div style={{ marginTop: 14, textAlign: 'center', fontSize: 13, color: T.textDim }}>
              {mode === 'login' ? '계정이 없으신가요?' : '이미 계정이 있으신가요?'}
              {' '}
              <span
                onClick={() => { setMode(m => m === 'login' ? 'register' : 'login'); setError(''); }}
                style={{ color: T.accent, cursor: 'pointer', fontWeight: 600 }}
              >
                {mode === 'login' ? '회원가입' : '로그인'}
              </span>
            </div>
          </div>
        )}
      </div>

      {/* Guest shortcut */}
      <div style={{ marginTop: 40, textAlign: 'center' }}>
        <span
          onClick={() => {
            localStorage.setItem('engcat_user', JSON.stringify({ name: '게스트', email: 'guest@engcat.app', picture: null }));
            window.ECNav?.go('home');
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
