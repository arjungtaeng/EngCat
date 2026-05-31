// EngCat — Help Detail: 이미지로 배우기

function ECScreenHelpDetailImages() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

  // 예시 단어 카드
  const ExampleWordCard = () => (
    <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 20, marginBottom: 16 }}>
      {/* 이미지 영역 */}
      <div style={{
        background: `linear-gradient(135deg, ${T.art1} 0%, ${T.art2} 100%)`,
        borderRadius: 12, height: 160, marginBottom: 16,
        display: 'flex', alignItems: 'center', justifyContent: 'center',
        fontSize: 48, opacity: 0.8,
      }}>
        🏖️
      </div>

      {/* 영어 단어 */}
      <div style={{ fontFamily: T.serif, fontSize: 28, fontStyle: 'italic', color: T.accent, marginBottom: 8, letterSpacing: -0.5 }}>
        Beach
      </div>

      {/* 한글 뜻 */}
      <div style={{ fontSize: 14, color: T.textDim, marginBottom: 12 }}>해변</div>

      {/* 예시 문장 */}
      <div style={{ fontSize: 13, color: T.textMute, lineHeight: 1.6, paddingTop: 12, borderTop: `1px solid ${T.hair}` }}>
        <div style={{ marginTop: 12 }}>
          <div style={{ fontFamily: T.serif, fontStyle: 'italic', color: T.text, marginBottom: 4 }}>
            "We spent a lovely afternoon at the beach."
          </div>
          <div style={{ color: T.textDim }}>
            우리는 해변에서 멋진 오후를 보냈어요.
          </div>
        </div>
      </div>
    </div>
  );

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <ECStatusBar />

      {/* Header with back button */}
      <div style={{ padding: '16px 18px', display: 'flex', alignItems: 'center', gap: 12, borderBottom: `1px solid ${T.hair}` }}>
        <div onClick={() => window.ECNav?.go('help')} style={{ cursor: 'pointer', color: T.textMute, fontSize: 14 }}>
          ←
        </div>
        <div style={{ fontFamily: T.serif, fontSize: 20, color: T.text, letterSpacing: -0.3, flex: 1 }}>
          이미지로 배워요
        </div>
      </div>

      <div ref={scrollRef} style={{ flex: 1, minHeight: 0, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 40 }}>

      {/* Main content */}
      <div style={{ padding: 20 }}>
        <div style={{ fontSize: 15, color: T.textDim, lineHeight: 1.8, marginBottom: 20 }}>
          <strong style={{ color: T.accent }}>이미지와 함께 배우면</strong> 뇌가 시각적으로 정보를 저장합니다.
          그래서 텍스트만 읽을 때보다 훨씬 오래 기억할 수 있어요.
        </div>

        <div style={{ fontSize: 14, fontWeight: 600, color: T.text, marginBottom: 12 }}>
          단어 카드 예시
        </div>

        <ExampleWordCard />

        <div style={{ fontSize: 13, color: T.textMute, lineHeight: 1.7, marginBottom: 20, paddingTop: 12, borderTop: `1px solid ${T.hair}` }}>
          <div style={{ marginTop: 12 }}>
            <strong style={{ color: T.accent }}>왜 효과적일까?</strong>
          </div>
          <div style={{ marginTop: 8 }}>
            • <strong>이중 부호화:</strong> 이미지 + 텍스트로 정보가 두 가지 방식으로 저장돼요
          </div>
          <div style={{ marginTop: 6 }}>
            • <strong>맥락 연결:</strong> 실제 상황(해변)과 함께 배우니까 기억하기 쉬워요
          </div>
          <div style={{ marginTop: 6 }}>
            • <strong>감정 반응:</strong> 이쁜 이미지를 보면 긍정적인 감정이 생겨서 기억이 더 강해져요
          </div>
        </div>
      </div>

      </div>{/* end scrollable */}
    </div>
  );
}

Object.assign(window, { ECScreenHelpDetailImages });
