// EngCat — Progress / Stats screen

function ECScreenStats() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);
  const tabVisible = ECUseHideOnScroll(scrollRef);

  // 12 weeks streak grid data — value 0..3 represents activity
  const grid = Array(84).fill(0);
  const tints = ['rgba(244,241,235,0.06)', 'rgba(232,178,106,0.28)', 'rgba(232,178,106,0.6)', T.accent];

  const weekBars = [0, 0, 0, 0, 0, 0, 0];

  return (
    <div style={{ height: '100%', background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div ref={scrollRef} style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch' }}>
      <ECStatusBar />

      {/* Header */}
      <div style={{ padding: '8px 22px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>나의 진도</div>
        <div style={{
          width: 36, height: 36, borderRadius: 12, background: T.bg2,
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          border: `1px solid ${T.hair}`,
        }}>{ECIcon.share(T.textDim, 18)}</div>
      </div>

      {/* Streak hero */}
      <div style={{ padding: '20px 18px 0' }}>
        <div style={{
          padding: 18, borderRadius: 22,
          background: `linear-gradient(150deg, ${T.bg3} 0%, ${T.bg2} 100%)`,
          border: `1px solid ${T.hair}`, position: 'relative', overflow: 'hidden',
        }}>
          <div style={{
            position: 'absolute', top: -30, right: -30, width: 140, height: 140, borderRadius: '50%',
            background: `radial-gradient(circle, ${T.accentSoft} 0%, transparent 70%)`,
          }} />
          <div style={{ display: 'flex', alignItems: 'baseline', justifyContent: 'space-between' }}>
            <div>
              <div style={{ fontFamily: T.mono, fontSize: 10, color: T.accent, letterSpacing: 1.4, textTransform: 'uppercase' }}>
                연속 학습
              </div>
              <div style={{ display: 'flex', alignItems: 'baseline', gap: 6, marginTop: 6 }}>
                <div style={{ fontFamily: T.serif, fontSize: 56, color: T.text, lineHeight: 1, letterSpacing: -1.5 }}>0</div>
                <div style={{ fontSize: 16, color: T.textDim }}>일</div>
              </div>
              <div style={{ marginTop: 8, fontSize: 12.5, color: T.textDim }}>
                아직 학습 기록이 없어요. 오늘 시작해 보세요!
              </div>
            </div>
            <div style={{ color: T.accent }}>{ECIcon.flame(T.accent, 48)}</div>
          </div>
        </div>
      </div>

      {/* Three stat tiles */}
      <div style={{ padding: '12px 18px 0', display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: 8 }}>
        {[
          { num: '0', label: '익힌 단어' },
          { num: '0', label: '문장' },
          { num: '—', label: '정답률' },
        ].map((s, i) => (
          <div key={i} style={{
            padding: '14px 14px', borderRadius: 16, background: T.bg2, border: `1px solid ${T.hair}`,
          }}>
            <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, lineHeight: 1, letterSpacing: -0.5 }}>{s.num}</div>
            <div style={{ fontSize: 11.5, color: T.textDim, marginTop: 6 }}>{s.label}</div>
          </div>
        ))}
      </div>

      {/* Weekly chart */}
      <div style={{ padding: '22px 22px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'baseline' }}>
        <div style={{ fontSize: 16, fontWeight: 600, color: T.text }}>이번 주 학습 시간</div>
        <div style={{ fontSize: 12, color: T.textDim, fontFamily: T.mono }}>총 0분</div>
      </div>

      <div style={{ padding: '14px 22px 0' }}>
        <div style={{
          padding: '20px 16px 14px', borderRadius: 18, background: T.bg2, border: `1px solid ${T.hair}`,
          display: 'flex', justifyContent: 'space-between', alignItems: 'flex-end', height: 160,
        }}>
          {['월','화','수','목','금','토','일'].map((d, i) => {
            const today = i === 3;
            return (
              <div key={i} style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 8, flex: 1 }}>
                <div style={{
                  width: 16, height: weekBars[i] * 1.0, borderRadius: 6,
                  background: today ? T.accent : T.bg4,
                }} />
                <div style={{ fontSize: 11, color: today ? T.accent : T.textDim, fontWeight: today ? 600 : 500 }}>{d}</div>
              </div>
            );
          })}
        </div>
      </div>

      {/* Activity grid (mastery heatmap) */}
      <div style={{ padding: '22px 22px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'baseline' }}>
        <div style={{ fontSize: 16, fontWeight: 600, color: T.text }}>12주 활동</div>
        <div style={{ fontSize: 12, color: T.textDim }}>밝을수록 많이 학습한 날</div>
      </div>

      <div style={{ padding: '14px 22px 0' }}>
        <div style={{
          padding: 16, borderRadius: 18, background: T.bg2, border: `1px solid ${T.hair}`,
        }}>
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(12, 1fr)', gap: 4 }}>
            {Array.from({ length: 12 }).map((_, col) => (
              <div key={col} style={{ display: 'grid', gridTemplateRows: 'repeat(7, 1fr)', gap: 4 }}>
                {Array.from({ length: 7 }).map((_, row) => {
                  const v = grid[col * 7 + row] ?? 0;
                  return (
                    <div key={row} style={{
                      width: '100%', aspectRatio: '1/1', borderRadius: 3,
                      background: tints[v],
                    }} />
                  );
                })}
              </div>
            ))}
          </div>
          <div style={{ marginTop: 10, display: 'flex', alignItems: 'center', gap: 6, justifyContent: 'flex-end' }}>
            <span style={{ fontSize: 10, color: T.textMute, fontFamily: T.mono }}>LESS</span>
            {tints.map((t, i) => (
              <div key={i} style={{ width: 10, height: 10, borderRadius: 2, background: t }} />
            ))}
            <span style={{ fontSize: 10, color: T.textMute, fontFamily: T.mono }}>MORE</span>
          </div>
        </div>
      </div>

      </div>{/* end scrollable */}
      <ECTabBar active="stats" visible={tabVisible} />
    </div>
  );
}

Object.assign(window, { ECScreenStats });
