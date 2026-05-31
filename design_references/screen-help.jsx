// EngCat — Help screen

function ECScreenHelp() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

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
          {/* Step 1: Word */}
          <div style={{ padding: 18, borderBottom: `1px solid ${T.hair}` }}>
            <div style={{ display: 'flex', gap: 12, alignItems: 'flex-start' }}>
              <div style={{
                width: 40, height: 40, borderRadius: 12,
                background: T.accentSoft, color: T.accent,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                fontWeight: 700, fontSize: 18, flexShrink: 0,
              }}>1</div>
              <div style={{ flex: 1, minWidth: 0 }}>
                <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 4 }}>단어 학습</div>
                <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>
                  한 단어씩 뜻과 예문을 학습합니다. 위아래로 스와이프해서 다음 단어로 넘어가세요.
                </div>
              </div>
            </div>
          </div>

          {/* Step 2: Sentence */}
          <div style={{ padding: 18, borderBottom: `1px solid ${T.hair}` }}>
            <div style={{ display: 'flex', gap: 12, alignItems: 'flex-start' }}>
              <div style={{
                width: 40, height: 40, borderRadius: 12,
                background: T.accentSoft, color: T.accent,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                fontWeight: 700, fontSize: 18, flexShrink: 0,
              }}>2</div>
              <div style={{ flex: 1, minWidth: 0 }}>
                <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 4 }}>문장 학습</div>
                <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>
                  실제 상황의 문장과 표현을 학습합니다. 패턴, 콜로, 이디엄 등 다양한 형태가 있어요.
                </div>
              </div>
            </div>
          </div>

          {/* Step 3: Quiz */}
          <div style={{ padding: 18 }}>
            <div style={{ display: 'flex', gap: 12, alignItems: 'flex-start' }}>
              <div style={{
                width: 40, height: 40, borderRadius: 12,
                background: T.accentSoft, color: T.accent,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                fontWeight: 700, fontSize: 18, flexShrink: 0,
              }}>3</div>
              <div style={{ flex: 1, minWidth: 0 }}>
                <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 4 }}>퀴즈</div>
                <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>
                  오늘 배운 내용으로 4지선다 10문제를 풉니다. 틀린 부분은 복습할 때 더 자주 나와요.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Section 2: 복습 시스템 */}
      <div style={{ padding: '28px 22px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        복습 시스템
      </div>
      <div style={{ padding: '0 18px 28px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 18 }}>
          <div style={{ marginBottom: 16 }}>
            <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 8 }}>
              홈 화면의 복습/예습 섹션
            </div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6 }}>
              <strong style={{ color: T.text }}>복습</strong>은 어제 배운 내용입니다. 자주 틀린 부분은 더 많이 나와요.
            </div>
          </div>
          <div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6 }}>
              <strong style={{ color: T.text }}>예습</strong>은 처음 배우는 새 단어와 표현입니다.
            </div>
          </div>
        </div>

        <div style={{ marginTop: 12, background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 18 }}>
          <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6 }}>
            매일 학습하면 더 많은 복습 카드가 생깁니다. 꾸준히 하루도 빠지지 않으면 스트릭이 쌓여요! 🔥
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
