// EngCat — Help Detail: 매일 짧게만 하면 돼요

function ECScreenHelpDetailDaily() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

  // 홈 화면 "오늘의 학습" 프리뷰
  const TodaySessionPreview = () => (
    <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 20, marginBottom: 16 }}>
      {/* 헤더 */}
      <div style={{ fontSize: 13, fontFamily: T.mono, letterSpacing: 0.5, color: T.textMute, marginBottom: 12 }}>
        오늘의 학습
      </div>

      {/* 토픽 표시 */}
      <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 16 }}>
        <div style={{ fontSize: 24 }}>☕</div>
        <div>
          <div style={{ fontSize: 13, fontFamily: T.mono, color: T.textMute }}>카페</div>
          <div style={{ fontSize: 15, fontWeight: 600, color: T.text }}>오늘은 커피숍 표현을 배워요</div>
        </div>
      </div>

      {/* 진행 상황 */}
      <div style={{ marginBottom: 16, paddingBottom: 16, borderBottom: `1px solid ${T.hair}` }}>
        <div style={{ fontSize: 12, color: T.textMute, marginBottom: 8 }}>
          단어 <span style={{ fontWeight: 600, color: T.accent }}>10개</span> + 문장 <span style={{ fontWeight: 600, color: T.accent }}>5개</span>
        </div>
        <div style={{ display: 'flex', gap: 6 }}>
          {Array.from({ length: 10 }).map((_, i) => (
            <div key={i} style={{
              flex: 1, height: 6, borderRadius: 3, background: i < 3 ? T.accent : T.bg3,
            }} />
          ))}
        </div>
        <div style={{ fontSize: 11, color: T.textMute, marginTop: 8 }}>
          3개 완료 · 7개 남음
        </div>
      </div>

      {/* 소요 시간 */}
      <div style={{ display: 'flex', gap: 12 }}>
        <div style={{ flex: 1 }}>
          <div style={{ fontSize: 11, color: T.textMute, marginBottom: 4 }}>예상 시간</div>
          <div style={{ fontSize: 15, fontWeight: 600, color: T.text }}>7-10분</div>
        </div>
        <div style={{ flex: 1 }}>
          <div style={{ fontSize: 11, color: T.textMute, marginBottom: 4 }}>지금까지</div>
          <div style={{ fontSize: 15, fontWeight: 600, color: T.accent }}>2분</div>
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
          매일 짧게만 하면 돼요
        </div>
      </div>

      <div ref={scrollRef} style={{ flex: 1, minHeight: 0, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 40 }}>

      {/* Main content */}
      <div style={{ padding: 20 }}>
        <div style={{ fontSize: 15, color: T.textDim, lineHeight: 1.8, marginBottom: 20 }}>
          <strong style={{ color: T.accent }}>7-10분씩 매일 꾸준히</strong> 하는 것이
          한 번에 길게 하는 것보다 훨씬 효과적이에요.
          바쁜 와중에도 쉽게 지속할 수 있습니다.
        </div>

        <div style={{ fontSize: 14, fontWeight: 600, color: T.text, marginBottom: 12 }}>
          홈 화면의 오늘의 학습
        </div>

        <TodaySessionPreview />

        <div style={{ fontSize: 13, color: T.textMute, lineHeight: 1.7, marginBottom: 16, paddingTop: 12, borderTop: `1px solid ${T.hair}` }}>
          <div style={{ marginTop: 12 }}>
            <strong style={{ color: T.accent }}>왜 이 길이일까?</strong>
          </div>
          <div style={{ marginTop: 8 }}>
            • <strong>집중력 유지:</strong> 짧은 시간이라 집중력을 유지하기 쉬워요
          </div>
          <div style={{ marginTop: 6 }}>
            • <strong>일관성:</strong> 10분은 바쁜 일과 속에서도 매일 낼 수 있는 시간이에요
          </div>
          <div style={{ marginTop: 6 }}>
            • <strong>스페이스드 레피티션:</strong> 짧은 시간의 반복이 장기 기억 형성에 가장 효과적이에요
          </div>
        </div>

        <div style={{ background: T.bg2, borderRadius: 12, padding: 16, marginTop: 16, borderLeft: `3px solid ${T.accent}` }}>
          <div style={{ fontSize: 13, fontWeight: 600, color: T.text, marginBottom: 8 }}>
            💡 팁
          </div>
          <div style={{ fontSize: 12, color: T.textDim, lineHeight: 1.6 }}>
            아침에 일어나자마자, 점심 후 잠깐, 저녁 퇴근 후 등
            <br/>
            자신의 루틴에 맞는 시간에 꾸준히 하면 더 효과적이에요.
          </div>
        </div>
      </div>

      </div>{/* end scrollable */}
    </div>
  );
}

Object.assign(window, { ECScreenHelpDetailDaily });
