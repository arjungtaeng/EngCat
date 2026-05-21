// EngCat — Profile / Settings screen

function ECScreenProfile() {
  const T = ECTokens;

  const user = (() => {
    try { return JSON.parse(localStorage.getItem('engcat_user')); } catch(e) { return null; }
  })();

  const handleLogout = () => {
    localStorage.removeItem('engcat_user');
    window.ECNav?.go('login');
  };

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
    <div style={{ height: '100%', background: T.bg1, overflowY: 'auto', WebkitOverflowScrolling: 'touch' }}>
      <ECStatusBar />

      {/* Header */}
      <div style={{ padding: '8px 22px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>내 정보</div>
        <div style={{
          width: 36, height: 36, borderRadius: 12, background: T.bg2,
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          border: `1px solid ${T.hair}`,
        }}>{ECIcon.more(T.textDim, 18)}</div>
      </div>

      {/* Profile card */}
      <div style={{ padding: '20px 18px 0' }}>
        <div style={{
          padding: 20, borderRadius: 22,
          background: T.bg2, border: `1px solid ${T.hair}`,
          display: 'flex', alignItems: 'center', gap: 16,
        }}>
          <div style={{
            width: 64, height: 64, borderRadius: 999,
            background: `linear-gradient(135deg, ${T.art1} 0%, ${T.art2} 100%)`,
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            fontFamily: T.serif, fontSize: 24, color: T.text, fontStyle: 'italic',
            border: `1px solid ${T.hairStr}`,
          }}>{(user?.name || '?').slice(0, 2)}</div>
          <div style={{ flex: 1 }}>
            <div style={{ fontFamily: T.serif, fontSize: 22, color: T.text, lineHeight: 1.1, letterSpacing: -0.3 }}>{user?.name || '사용자'}</div>
            <div style={{ fontSize: 12.5, color: T.textDim, marginTop: 4 }}>{user?.email || ''}</div>
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
          <div style={{ fontFamily: T.serif, fontSize: 22, color: T.text, lineHeight: 1 }}>27</div>
          <div style={{ fontSize: 10.5, color: T.textDim, marginTop: 5, letterSpacing: 0.3 }}>스트릭</div>
        </div>
        <div style={{
          padding: '14px 8px', background: T.bg2, border: `1px solid ${T.hair}`, textAlign: 'center',
        }}>
          <div style={{ fontFamily: T.serif, fontSize: 22, color: T.text, lineHeight: 1 }}>342</div>
          <div style={{ fontSize: 10.5, color: T.textDim, marginTop: 5, letterSpacing: 0.3 }}>단어</div>
        </div>
        <div style={{
          padding: '14px 8px', borderRadius: '0 16px 16px 0',
          background: T.bg2, borderTop: `1px solid ${T.hair}`, borderRight: `1px solid ${T.hair}`, borderBottom: `1px solid ${T.hair}`,
          textAlign: 'center',
        }}>
          <div style={{ fontFamily: T.serif, fontSize: 22, color: T.text, lineHeight: 1 }}>14</div>
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
          <Row label="음성 속도"        value="보통" last/>
        </div>
      </div>

      {/* Section: App */}
      <div style={{ padding: '20px 22px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        앱
      </div>
      <div style={{ padding: '0 18px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}` }}>
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

      <div style={{ height: 100 }} />
      <ECTabBar active="me" />
    </div>
  );
}

Object.assign(window, { ECScreenProfile });
