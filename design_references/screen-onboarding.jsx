// EngCat — Onboarding screen
// Level selection step (B1 focus) — minimal, premium, no mascot

function ECScreenOnboarding() {
  const T = ECTokens;
  const [selected, setSelected] = React.useState('B1');

  const levels = [
    { id: 'A1', name: 'A1 · 입문',     hint: '기초 단어와 인사' },
    { id: 'A2', name: 'A2 · 초급',     hint: '간단한 일상 표현' },
    { id: 'B1', name: 'B1 · 중급',     hint: '일상 대화와 의견' },
    { id: 'B2', name: 'B2 · 중상급',   hint: '복잡한 주제 토론' },
    { id: 'C1', name: 'C1 · 고급',     hint: '유창한 표현' },
  ];

  return (
    <div style={{ height: '100%', background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <ECStatusBar />

      {/* progress dots */}
      <div style={{ padding: '8px 28px 0', display: 'flex', gap: 6 }}>
        {[0,1,2,3].map(i => (
          <div key={i} style={{
            flex: 1, height: 3, borderRadius: 2,
            background: i <= 1 ? T.accent : T.hairStr,
          }} />
        ))}
      </div>

      {/* header */}
      <div style={{ padding: '40px 28px 28px' }}>
        <div style={{
          fontFamily: T.mono, fontSize: 10, letterSpacing: 1.6,
          color: T.textMute, textTransform: 'uppercase', marginBottom: 18,
        }}>STEP 02 — 레벨</div>
        <div style={{
          fontFamily: T.serif, fontSize: 38, lineHeight: 1.08,
          letterSpacing: -0.5, color: T.text, fontWeight: 400,
        }}>
          현재 영어 수준을<br/>
          <span style={{ fontStyle: 'italic', color: T.accent }}>알려주세요</span>
        </div>
        <div style={{
          marginTop: 14, fontSize: 14.5, lineHeight: 1.5,
          color: T.textDim, maxWidth: 280,
        }}>
          맞춤형 학습 카드를 준비해 드릴게요. 언제든 설정에서 변경하실 수 있습니다.
        </div>
      </div>

      {/* level list */}
      <div style={{ padding: '0 20px', flex: 1, display: 'flex', flexDirection: 'column', gap: 8 }}>
        {levels.map(l => {
          const active = selected === l.id;
          return (
            <div key={l.id} onClick={() => setSelected(l.id)} style={{
              padding: '18px 20px', borderRadius: 18,
              background: active ? T.accentSoft : T.bg2,
              border: `1px solid ${active ? T.accent : T.hair}`,
              display: 'flex', alignItems: 'center', gap: 14, cursor: 'pointer',
              transition: 'all .15s',
            }}>
              <div style={{
                width: 38, height: 38, borderRadius: 10,
                background: active ? T.accent : T.bg3,
                color: active ? T.bg1 : T.textDim,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                fontFamily: T.serif, fontSize: 18, fontWeight: 500,
              }}>{l.id}</div>
              <div style={{ flex: 1 }}>
                <div style={{ fontSize: 16, fontWeight: 600, color: T.text, letterSpacing: -0.2 }}>{l.name}</div>
                <div style={{ fontSize: 13, color: T.textDim, marginTop: 2 }}>{l.hint}</div>
              </div>
              {active && <div style={{ color: T.accent }}>{ECIcon.check(T.accent, 22)}</div>}
            </div>
          );
        })}
      </div>

      {/* CTA */}
      <div style={{ padding: '24px 20px 36px' }}>
        <div onClick={() => window.ECNav?.go('onboarding-goal')} style={{
          height: 56, borderRadius: 16, background: T.text, color: T.bg0,
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontSize: 16, fontWeight: 600, letterSpacing: -0.2, cursor: 'pointer',
        }}>
          다음으로
        </div>
      </div>
    </div>
  );
}

// Goal selection (alt step shown for variety)
function ECScreenOnboardingGoal() {
  const T = ECTokens;
  const [goal, setGoal] = React.useState(15);
  const opts = [
    { v: 5,  label: '가볍게',    sub: '5분 / 단어 3개' },
    { v: 10, label: '꾸준히',    sub: '10분 / 단어 6개' },
    { v: 15, label: '몰입하기',  sub: '15분 / 단어 10개' },
    { v: 30, label: '집중 학습', sub: '30분 / 단어 20개' },
  ];

  return (
    <div style={{ height: '100%', background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <ECStatusBar />

      <div style={{ padding: '8px 28px 0', display: 'flex', gap: 6 }}>
        {[0,1,2,3].map(i => (
          <div key={i} style={{ flex: 1, height: 3, borderRadius: 2, background: i <= 2 ? T.accent : T.hairStr }} />
        ))}
      </div>

      <div style={{ padding: '40px 28px 32px' }}>
        <div style={{ fontFamily: T.mono, fontSize: 10, letterSpacing: 1.6, color: T.textMute, textTransform: 'uppercase', marginBottom: 18 }}>STEP 03 — 목표</div>
        <div style={{ fontFamily: T.serif, fontSize: 38, lineHeight: 1.08, letterSpacing: -0.5, color: T.text }}>
          하루 학습량을<br/>
          <span style={{ fontStyle: 'italic', color: T.accent }}>정해보세요</span>
        </div>
      </div>

      <div style={{ padding: '0 20px', display: 'flex', flexDirection: 'column', gap: 10, flex: 1 }}>
        {opts.map(o => {
          const active = goal === o.v;
          return (
            <div key={o.v} onClick={() => setGoal(o.v)} style={{
              padding: '18px 22px', borderRadius: 18,
              background: active ? T.bg3 : T.bg2,
              border: `1px solid ${active ? T.accent : T.hair}`,
              display: 'flex', alignItems: 'baseline', gap: 16, cursor: 'pointer',
            }}>
              <div style={{
                fontFamily: T.serif, fontSize: 32, color: active ? T.accent : T.textDim,
                lineHeight: 1, width: 56,
              }}>{o.v}<span style={{ fontSize: 14, marginLeft: 2 }}>분</span></div>
              <div style={{ flex: 1 }}>
                <div style={{ fontSize: 16, fontWeight: 600, color: T.text }}>{o.label}</div>
                <div style={{ fontSize: 13, color: T.textDim, marginTop: 2 }}>{o.sub}</div>
              </div>
              <div style={{
                width: 22, height: 22, borderRadius: 11,
                border: `1.5px solid ${active ? T.accent : T.textFaint}`,
                background: active ? T.accent : 'transparent',
                display: 'flex', alignItems: 'center', justifyContent: 'center',
              }}>
                {active && <div style={{ width: 8, height: 8, borderRadius: 4, background: T.bg1 }} />}
              </div>
            </div>
          );
        })}
      </div>

      <div style={{ padding: '24px 20px 36px' }}>
        <div onClick={() => window.ECNav?.go('home')} style={{
          height: 56, borderRadius: 16, background: T.accent, color: T.bg0,
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontSize: 16, fontWeight: 600, letterSpacing: -0.2, cursor: 'pointer',
        }}>
          시작하기
        </div>
      </div>
    </div>
  );
}

Object.assign(window, { ECScreenOnboarding, ECScreenOnboardingGoal });
