// EngCat — Profile / Settings screen

function ECScreenProfile() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

  const user = (() => {
    try { return JSON.parse(localStorage.getItem('engcat_user')); } catch(e) { return null; }
  })();

  const [editingNick, setEditingNick] = React.useState(false);
  const [nickVal, setNickVal] = React.useState(() => localStorage.getItem('engcat_nickname') || '');
  const [ttsVoice, setTtsVoice] = React.useState(() => localStorage.getItem('ec_azure_voice') || 'en-US-JennyNeural');
  const [themePref, setThemePref] = React.useState(() => localStorage.getItem('ec_theme') || 'system');
  const changeTheme = (v) => { setThemePref(v); window.ECSetTheme?.(v); };

  const speakPreview = async (voice, rate) => {
    const text = 'Hello! I am your English learning assistant.';
    try {
      const res = await fetch('https://zknqzjrymkswkqotrion.supabase.co/functions/v1/tts', {
        method: 'POST',
        headers: {
          'Authorization': 'Bearer sb_publishable_-PyhiOHtQJsKafpoDZIMLg_q09S3yRJ',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ text, voice, rate }),
      });
      if (!res.ok) throw new Error(`TTS ${res.status}`);
      const blob = await res.blob();
      const url = URL.createObjectURL(blob);
      const audio = new Audio(url);
      audio.onended = () => URL.revokeObjectURL(url);
      audio.play();
      return;
    } catch (_) {}
    window.speechSynthesis.cancel();
    const utt = new SpeechSynthesisUtterance(text);
    utt.lang = 'en-US';
    utt.rate = rate === 'slow' ? 0.7 : rate === 'fast' ? 1.2 : 0.85;
    window.speechSynthesis.speak(utt);
  };

  const setVoice = (v) => { setTtsVoice(v); localStorage.setItem('ec_azure_voice', v); speakPreview(v, 'medium'); };

  const saveNick = () => {
    const trimmed = nickVal.trim();
    if (trimmed) localStorage.setItem('engcat_nickname', trimmed);
    else localStorage.removeItem('engcat_nickname');
    setNickVal(trimmed);
    setEditingNick(false);
  };

  const handleLogout = () => {
    localStorage.removeItem('engcat_user');
    window.ECNav?.go('login');
  };

  const Seg = ({ options, value, onChange }) => (
    <div style={{ display: 'flex', gap: 4, flexWrap: 'wrap', justifyContent: 'flex-end' }}>
      {options.map(o => (
        <div key={o.value} onClick={() => onChange(o.value)} style={{
          padding: '5px 10px', borderRadius: 8, fontSize: 12, fontWeight: 600,
          background: value === o.value ? T.accent : 'transparent',
          color: value === o.value ? '#fff' : T.textMute,
          border: `1px solid ${value === o.value ? T.accent : T.hairStr}`,
          cursor: 'pointer', transition: 'all 0.15s',
        }}>{o.label}</div>
      ))}
    </div>
  );

  const SegRow = ({ label, options, value, onChange, last }) => (
    <div style={{
      padding: '13px 18px', display: 'flex', alignItems: 'center', gap: 12,
      borderBottom: last ? 'none' : `1px solid ${T.hair}`,
    }}>
      <div style={{ flex: 1, fontSize: 15, color: T.text, fontWeight: 500 }}>{label}</div>
      <Seg options={options} value={value} onChange={onChange} />
    </div>
  );

  const Row = ({ label, value, last, danger, onPress }) => (
    <div
      onClick={onPress}
      style={{
        padding: '15px 18px', display: 'flex', alignItems: 'center', gap: 12,
        borderBottom: last ? 'none' : `1px solid ${T.hair}`,
        cursor: onPress ? 'pointer' : 'default',
      }}
    >
      <div style={{ flex: 1, fontSize: 15, color: danger ? T.bad : T.text, fontWeight: 500 }}>{label}</div>
      {value && <div style={{ fontSize: 13, color: T.textDim }}>{value}</div>}
      {!danger && <div style={{ color: T.textMute }}>{ECIcon.chev('right', T.textMute, 14)}</div>}
    </div>
  );

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div ref={scrollRef} style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>
      <ECStatusBar />

      {/* Header */}
      <div style={{ padding: '8px 22px 0' }}>
        <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>내 정보</div>
      </div>

      {/* Profile card */}
      <div style={{ padding: '20px 18px 0' }}>
        <div style={{
          padding: 20, borderRadius: 22,
          background: T.bg2, border: `1px solid ${T.hair}`,
          display: 'flex', alignItems: 'center', gap: 16,
        }}>
          {user?.picture
            ? <img src={user.picture} alt={user.name} referrerPolicy="no-referrer" style={{ width: 64, height: 64, borderRadius: 999, objectFit: 'cover', border: `1px solid ${T.hairStr}` }} />
            : <div style={{
                width: 64, height: 64, borderRadius: 999,
                background: `linear-gradient(135deg, ${T.art1} 0%, ${T.art2} 100%)`,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                fontFamily: T.serif, fontSize: 24, color: T.text, fontStyle: 'italic',
                border: `1px solid ${T.hairStr}`,
              }}>{(user?.name || '?').slice(0, 2)}</div>
          }
          <div style={{ flex: 1, minWidth: 0 }}>
            <div style={{ fontFamily: T.serif, fontSize: 22, color: T.text, lineHeight: 1.1, letterSpacing: -0.3 }}>{user?.name || '사용자'}</div>
            <div style={{ fontSize: 12.5, color: T.textDim, marginTop: 4 }}>{user?.email || ''}</div>

            {/* Nickname */}
            {editingNick ? (
              <div style={{ marginTop: 8, display: 'flex', gap: 6, alignItems: 'center' }}>
                <input
                  value={nickVal}
                  onChange={e => setNickVal(e.target.value)}
                  onKeyDown={e => { if (e.key === 'Enter') saveNick(); }}
                  placeholder="불리고 싶은 이름"
                  autoFocus
                  style={{
                    flex: 1, minWidth: 0, width: '100%', padding: '5px 10px', borderRadius: 8,
                    background: T.bg3, border: `1px solid ${T.hairStr}`,
                    color: T.text, fontSize: 16, fontFamily: T.sans, outline: 'none', boxSizing: 'border-box',
                  }}
                />
                <span
                  onClick={saveNick}
                  style={{ fontSize: 12, color: T.accent, fontFamily: T.mono, cursor: 'pointer', whiteSpace: 'nowrap', flexShrink: 0 }}
                >완료</span>
              </div>
            ) : (
              <div
                onClick={() => setEditingNick(true)}
                style={{ marginTop: 7, display: 'inline-flex', alignItems: 'center', gap: 5, cursor: 'pointer' }}
              >
                <span style={{ fontSize: 10.5, color: T.textMute, fontFamily: T.mono, letterSpacing: 0.5 }}>호칭</span>
                <span style={{ fontSize: 13, color: nickVal ? T.text : T.textMute }}>
                  {nickVal || '설정하기'}
                </span>
                <span style={{ fontSize: 11, color: T.textMute }}>✎</span>
              </div>
            )}

            <div style={{ marginTop: 8, display: 'flex', gap: 6 }}>
              <span style={{
                padding: '3px 8px', borderRadius: 6, background: T.accentSoft,
                color: T.accent, fontSize: 10.5, fontWeight: 600, fontFamily: T.mono, letterSpacing: 0.4,
              }}>B1 · 중급</span>
              <span style={{
                padding: '3px 8px', borderRadius: 6, background: T.bg3,
                color: T.textDim, fontSize: 10.5, fontWeight: 600, fontFamily: T.mono, letterSpacing: 0.4,
              }}>PRO</span>
            </div>
          </div>
        </div>
      </div>

      {/* Quick stats row */}
      <div style={{ padding: '12px 18px 0', display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: 0 }}>
        <div style={{
          padding: '14px 8px', borderRadius: '16px 0 0 16px',
          background: T.bg2, borderTop: `1px solid ${T.hair}`, borderLeft: `1px solid ${T.hair}`, borderBottom: `1px solid ${T.hair}`,
          textAlign: 'center',
        }}>
          <div style={{ fontFamily: T.serif, fontSize: 22, color: T.text, lineHeight: 1 }}>0</div>
          <div style={{ fontSize: 10.5, color: T.textDim, marginTop: 5, letterSpacing: 0.3 }}>스트릭</div>
        </div>
        <div style={{
          padding: '14px 8px', background: T.bg2, border: `1px solid ${T.hair}`, textAlign: 'center',
        }}>
          <div style={{ fontFamily: T.serif, fontSize: 22, color: T.text, lineHeight: 1 }}>0</div>
          <div style={{ fontSize: 10.5, color: T.textDim, marginTop: 5, letterSpacing: 0.3 }}>단어</div>
        </div>
        <div style={{
          padding: '14px 8px', borderRadius: '0 16px 16px 0',
          background: T.bg2, borderTop: `1px solid ${T.hair}`, borderRight: `1px solid ${T.hair}`, borderBottom: `1px solid ${T.hair}`,
          textAlign: 'center',
        }}>
          <div style={{ fontFamily: T.serif, fontSize: 22, color: T.text, lineHeight: 1 }}>—</div>
          <div style={{ fontSize: 10.5, color: T.textDim, marginTop: 5, letterSpacing: 0.3 }}>랭킹</div>
        </div>
      </div>

      {/* Section: Learning */}
      <div style={{ padding: '24px 22px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        학습
      </div>
      <div style={{ padding: '0 18px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}` }}>
          <Row label="레벨 · B1 중급"   value="변경"/>
          <Row label="하루 목표"        value="15분"/>
          <Row label="알림"             value="오전 8:00"/>
          <SegRow
            label="음성"
            options={[{ label: 'Jenny', value: 'en-US-JennyNeural' }, { label: 'Aria', value: 'en-US-AriaNeural' }, { label: 'Guy', value: 'en-US-GuyNeural' }, { label: 'Davis', value: 'en-US-DavisNeural' }]}
            value={ttsVoice}
            onChange={setVoice}
            last
          />
        </div>
      </div>

      {/* Section: App */}
      <div style={{ padding: '20px 22px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        앱
      </div>
      <div style={{ padding: '0 18px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}` }}>
          <SegRow
            label="테마"
            options={[{ label: '시스템', value: 'system' }, { label: '다크', value: 'dark' }, { label: '라이트', value: 'light' }]}
            value={themePref}
            onChange={changeTheme}
          />
          <Row label="저장한 카드"      value="68"/>
          <Row label="친구 / 랭킹"      value=""/>
          <Row label="구독 관리"        value="EngCat Pro"/>
          <Row label="도움말"           value="" last/>
        </div>
      </div>

      {/* Section: Account */}
      <div style={{ padding: '20px 22px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        계정
      </div>
      <div style={{ padding: '0 18px 24px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}` }}>
          <Row label="개인정보 보호"  value=""/>
          <Row label="로그아웃" danger last onPress={handleLogout}/>
        </div>
      </div>

      {/* Credits */}
      <div style={{ padding: '8px 22px 28px', textAlign: 'center' }}>
        <div style={{ fontSize: 11, color: T.textFaint, lineHeight: 1.8, fontFamily: T.mono, letterSpacing: 0.3 }}>
          App icon "Cat" by Icojam, SVG Repo · CC BY 4.0
        </div>
      </div>

      </div>{/* end scrollable */}
    </div>
  );
}

Object.assign(window, { ECScreenProfile });
