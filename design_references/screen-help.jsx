// EngCat — Help screen (3 core advantages)

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

      {/* Advantage 1: 이미지로 배우기 */}
      <div style={{ padding: '28px 18px 0' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, overflow: 'hidden', marginBottom: 12 }}>
          <div style={{ padding: 20 }}>
            <div style={{ fontSize: 32, marginBottom: 12 }}>🖼️</div>
            <div style={{ fontSize: 17, fontWeight: 600, color: T.text, marginBottom: 8 }}>이미지로 배워요</div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6, marginBottom: 12 }}>
              단어는 텍스트로만이 아니라 <strong style={{ color: T.accent }}>이미지와 함께</strong> 배웁니다. 뇌는 시각 정보를 텍스트보다 훨씬 오래 기억해요.
            </div>
            <div style={{ fontSize: 12, color: T.textMute, lineHeight: 1.5, paddingTop: 12, borderTop: `1px solid ${T.hair}` }}>
              이미지와 함께 배운 단어는 오래오래 남습니다.
            </div>
          </div>
        </div>
      </div>

      {/* Advantage 2: 토픽이 매일 바뀜 */}
      <div style={{ padding: '12px 18px 0' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, overflow: 'hidden', marginBottom: 12 }}>
          <div style={{ padding: 20 }}>
            <div style={{ fontSize: 32, marginBottom: 12 }}>🌍</div>
            <div style={{ fontSize: 17, fontWeight: 600, color: T.text, marginBottom: 8 }}>다양한 상황에 대비해요</div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6, marginBottom: 12 }}>
              <strong style={{ color: T.accent }}>토픽이 매일 바뀌어요.</strong> 카페, 여행, 회의, 일상... 실제로 필요한 상황의 표현들을 배웁니다.
            </div>
            <div style={{ fontSize: 12, color: T.textMute, lineHeight: 1.5, paddingTop: 12, borderTop: `1px solid ${T.hair}` }}>
              한 주제만 파고드는 게 아니라 다양한 상황을 경험하세요.
            </div>
          </div>
        </div>
      </div>

      {/* Advantage 3: 매일 짧게 */}
      <div style={{ padding: '12px 18px 0' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, overflow: 'hidden', marginBottom: 28 }}>
          <div style={{ padding: 20 }}>
            <div style={{ fontSize: 32, marginBottom: 12 }}>⏱️</div>
            <div style={{ fontSize: 17, fontWeight: 600, color: T.text, marginBottom: 8 }}>매일 짧게만 하면 돼요</div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6, marginBottom: 12 }}>
              <strong style={{ color: T.accent }}>10개 단어 + 5개 문장.</strong> 바쁜 와중에도 매일 할 수 있어요. 그래서 꾸준히 할 수 있습니다.
            </div>
            <div style={{ fontSize: 12, color: T.textMute, lineHeight: 1.5, paddingTop: 12, borderTop: `1px solid ${T.hair}` }}>
              시간 부담 없이 지속 가능한 학습을 경험하세요.
            </div>
          </div>
        </div>
      </div>

      {/* Section: Credits */}
      <div style={{ padding: '28px 18px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
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
