// EngCat — Login / Register screen

function ECScreenLogin() {
  const T = ECTokens;
  const [mode, setMode] = React.useState('login'); // 'login' | 'register'
  const [name, setName] = React.useState('');
  const [email, setEmail] = React.useState('');
  const [password, setPassword] = React.useState('');
  const [error, setError] = React.useState('');

  const inputStyle = {
    width: '100%', padding: '14px 16px',
    background: T.bg3, border: `1px solid ${T.hair}`,
    borderRadius: 12, color: T.text,
    fontSize: 15, fontFamily: T.sans,
    outline: 'none', WebkitAppearance: 'none',
    appearance: 'none', boxSizing: 'border-box',
  };

  const handleSubmit = () => {
    setError('');
    if (mode === 'register') {
      if (!name.trim() || !email.trim() || !password.trim()) {
        setError('모든 항목을 입력해주세요.');
        return;
      }
      if (password.length < 6) {
        setError('비밀번호는 6자 이상이어야 해요.');
        return;
      }
      const user = { name: name.trim(), email: email.trim() };
      localStorage.setItem('engcat_user', JSON.stringify(user));
      window.ECNav?.go('home');
    } else {
      if (!email.trim() || !password.trim()) {
        setError('이메일과 비밀번호를 입력해주세요.');
        return;
      }
      const stored = localStorage.getItem('engcat_user');
      if (stored) {
        const user = JSON.parse(stored);
        if (user.email !== email.trim()) {
          setError('이메일 또는 비밀번호가 올바르지 않아요.');
          return;
        }
        window.ECNav?.go('home');
      } else {
        // 첫 로그인 — 계정 생성
        const user = { name: email.split('@')[0], email: email.trim() };
        localStorage.setItem('engcat_user', JSON.stringify(user));
        window.ECNav?.go('home');
      }
    }
  };

  const switchMode = () => {
    setMode(mode === 'login' ? 'register' : 'login');
    setError('');
    setName('');
    setEmail('');
    setPassword('');
  };

  return (
    <div style={{
      height: '100%', background: T.bg1,
      display: 'flex', flexDirection: 'column',
      alignItems: 'center', justifyContent: 'center',
      padding: '0 24px',
      overflowY: 'auto', WebkitOverflowScrolling: 'touch',
    }}>

      {/* Brand mark */}
      <div style={{ marginBottom: 44, textAlign: 'center' }}>
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
          marginTop: 14, lineHeight: 1.6,
        }}>매일 10단어, 5문장으로<br/>영어 실력을 키워보세요.</div>
      </div>

      {/* Form card */}
      <div style={{
        width: '100%', maxWidth: 380,
        background: T.bg2, borderRadius: 24,
        border: `1px solid ${T.hair}`, padding: '24px 22px',
      }}>
        <div style={{
          fontFamily: T.serif, fontSize: 23, color: T.text,
          letterSpacing: -0.3, marginBottom: 22,
        }}>
          {mode === 'login' ? '다시 오셨군요.' : '계정 만들기'}
        </div>

        {mode === 'register' && (
          <div style={{ marginBottom: 10 }}>
            <input
              type="text"
              placeholder="이름"
              value={name}
              onChange={e => { setName(e.target.value); setError(''); }}
              style={inputStyle}
            />
          </div>
        )}

        <div style={{ marginBottom: 10 }}>
          <input
            type="email"
            placeholder="이메일"
            value={email}
            onChange={e => { setEmail(e.target.value); setError(''); }}
            style={inputStyle}
          />
        </div>

        <div style={{ marginBottom: error ? 12 : 20 }}>
          <input
            type="password"
            placeholder="비밀번호"
            value={password}
            onChange={e => { setPassword(e.target.value); setError(''); }}
            onKeyDown={e => { if (e.key === 'Enter') handleSubmit(); }}
            style={inputStyle}
          />
        </div>

        {error && (
          <div style={{
            fontSize: 12.5, color: T.bad, marginBottom: 16,
            padding: '9px 12px', background: T.badSoft, borderRadius: 8,
            lineHeight: 1.5,
          }}>{error}</div>
        )}

        <button
          onClick={handleSubmit}
          style={{
            width: '100%', padding: '15px',
            background: T.accent, borderRadius: 12,
            border: 'none', color: '#1A1200',
            fontSize: 15, fontWeight: 700, fontFamily: T.sans,
            cursor: 'pointer', letterSpacing: 0.2,
            WebkitAppearance: 'none', appearance: 'none',
          }}
        >
          {mode === 'login' ? '로그인' : '가입하기'}
        </button>
      </div>

      {/* Toggle */}
      <div style={{
        marginTop: 22, fontSize: 13.5, color: T.textDim, textAlign: 'center', lineHeight: 1.8,
      }}>
        {mode === 'login' ? '아직 계정이 없으신가요?' : '이미 계정이 있으신가요?'}
        {' '}
        <span
          onClick={switchMode}
          style={{ color: T.accent, cursor: 'pointer', fontWeight: 600 }}
        >
          {mode === 'login' ? '회원가입' : '로그인'}
        </span>
      </div>

      {/* Demo shortcut */}
      <div style={{ marginTop: 36, textAlign: 'center' }}>
        <span
          onClick={() => { localStorage.setItem('engcat_user', JSON.stringify({ name: '게스트', email: 'guest@engcat.app' })); window.ECNav?.go('home'); }}
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
