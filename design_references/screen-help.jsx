// EngCat — Help screen (with icons)

function ECScreenHelp() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

  const StepCard = ({ idx, icon, title, desc }) => (
    <div style={{
      padding: 18,
      borderBottom: idx < 2 ? `1px solid ${T.hair}` : 'none',
      display: 'flex',
      gap: 12,
      alignItems: 'flex-start',
    }}>
      <div style={{
        width: 48, height: 48, borderRadius: 14,
        background: T.accentSoft, color: T.accent,
        display: 'flex', alignItems: 'center', justifyContent: 'center',
        flexShrink: 0, fontSize: 24,
      }}>
        {icon}
      </div>
      <div style={{ flex: 1, minWidth: 0 }}>
        <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 4 }}>
          {title}
        </div>
        <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>
          {desc}
        </div>
      </div>
    </div>
  );

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <ECStatusBar />

      <div ref={scrollRef} style={{ flex: 1, minHeight: 0, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>

      {/* Header */}
      <div style={{ padding: '8px 22px 0' }}>
        <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>도움말</div>
      </div>

      {/* Section 1: 매일 학습 흐름 */}
      <div style={{ padding: '28px 22px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        학습 흐름
      </div>
      <div style={{ padding: '0 18px 28px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, overflow: 'hidden' }}>
          <StepCard
            idx={0}
            icon={ECIcon.cards(T.accent, 28)}
            title="단어 학습"
            desc="한 단어씩 뜻과 예문을 학습합니다. 위아래로 스와이프해서 다음 단어로 넘어가세요."
          />

          <StepCard
            idx={1}
            icon={<span style={{ fontSize: 28 }}>📝</span>}
            title="문장 학습"
            desc="실제 상황의 문장과 표현을 학습합니다. 패턴, 콜로, 이디엄 등 다양한 형태가 있어요."
          />

          <StepCard
            idx={2}
            icon={ECIcon.trophy(T.accent, 28)}
            title="퀴즈"
            desc="오늘 배운 내용으로 4지선다 10문제를 풉니다. 틀린 부분은 복습할 때 더 자주 나와요."
          />
        </div>
      </div>

      {/* Section 2: 복습 시스템 */}
      <div style={{ padding: '28px 22px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        복습 시스템
      </div>
      <div style={{ padding: '0 18px 28px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 18, marginBottom: 12 }}>
          <div style={{ display: 'flex', gap: 12, marginBottom: 16 }}>
            <div style={{
              width: 44, height: 44, borderRadius: 12,
              background: T.accentSoft, color: T.accent,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              flexShrink: 0, fontWeight: 600, fontSize: 14,
            }}>
              ⬅️
            </div>
            <div style={{ flex: 1 }}>
              <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 4 }}>
                복습
              </div>
              <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>
                어제 배운 내용입니다. 자주 틀린 부분은 더 많이 나와요.
              </div>
            </div>
          </div>
          <div style={{ display: 'flex', gap: 12 }}>
            <div style={{
              width: 44, height: 44, borderRadius: 12,
              background: T.accentSoft, color: T.accent,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              flexShrink: 0, fontWeight: 600, fontSize: 14,
            }}>
              ⭐
            </div>
            <div style={{ flex: 1 }}>
              <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 4 }}>
                예습
              </div>
              <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>
                처음 배우는 새 단어와 표현입니다.
              </div>
            </div>
          </div>
        </div>

        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 18 }}>
          <div style={{ display: 'flex', gap: 12, alignItems: 'flex-start' }}>
            <div style={{
              width: 44, height: 44, borderRadius: 12,
              background: T.accentSoft, color: T.accent,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              flexShrink: 0,
            }}>
              {ECIcon.flame(T.accent, 28)}
            </div>
            <div style={{ flex: 1 }}>
              <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6 }}>
                매일 학습하면 <strong style={{ color: T.accent }}>스트릭</strong>이 쌓여요. 하루도 빠지지 않으면 불이 커집니다!
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Section 3: Credits */}
      <div style={{ padding: '28px 22px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        앱 정보
      </div>
      <div style={{ padding: '0 18px 28px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 18, textAlign: 'center' }}>
          <div style={{ fontSize: 11, color: T.textFaint, lineHeight: 1.8, fontFamily: T.mono, letterSpacing: 0.3 }}>
            App icon "Cat" by Icojam, SVG Repo · CC BY 4.0
          </div>
        </div>
      </div>

      </div>{/* end scrollable */}
    </div>
  );
}

Object.assign(window, { ECScreenHelp });
