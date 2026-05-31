// EngCat — Help screen (Spaced Repetition focused)

function ECScreenHelp() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

  // 망각 곡선 시각화 (간단한 SVG)
  const ForgettingCurve = () => (
    <svg viewBox="0 0 300 140" style={{ width: '100%', height: 'auto' }}>
      {/* 배경 */}
      <defs>
        <linearGradient id="curveGradient" x1="0%" y1="0%" x2="0%" y2="100%">
          <stop offset="0%" stopColor={T.accent} stopOpacity="0.15" />
          <stop offset="100%" stopColor={T.accent} stopOpacity="0.02" />
        </linearGradient>
      </defs>

      {/* 축 */}
      <line x1="30" y1="120" x2="290" y2="120" stroke={T.hairStr} strokeWidth="1" />
      <line x1="30" y1="20" x2="30" y2="120" stroke={T.hairStr} strokeWidth="1" />

      {/* 시간 라벨 */}
      <text x="50" y="135" fontSize="10" fill={T.textMute} textAnchor="middle">학습</text>
      <text x="120" y="135" fontSize="10" fill={T.textMute} textAnchor="middle">1일</text>
      <text x="180" y="135" fontSize="10" fill={T.textMute} textAnchor="middle">3일</text>
      <text x="240" y="135" fontSize="10" fill={T.textMute} textAnchor="middle">1주</text>

      {/* 망각 곡선 (복습 없음) */}
      <path
        d="M 50 35 Q 85 60 120 85 T 180 100 T 240 110"
        fill="none"
        stroke={T.textMute}
        strokeWidth="1.5"
        strokeDasharray="3,3"
        opacity="0.5"
      />

      {/* 복습으로 올라간 곡선 */}
      <path
        d="M 50 35 L 120 40 L 180 50 L 240 60"
        fill="url(#curveGradient)"
        stroke={T.accent}
        strokeWidth="2"
      />

      {/* 복습 포인트 */}
      <circle cx="120" cy="40" r="3" fill={T.accent} />
      <circle cx="180" cy="50" r="3" fill={T.accent} />
      <circle cx="240" cy="60" r="3" fill={T.accent} />

      {/* Y축 라벨 */}
      <text x="20" y="25" fontSize="9" fill={T.textMute} textAnchor="end">100%</text>
      <text x="20" y="125" fontSize="9" fill={T.textMute} textAnchor="end">0%</text>
    </svg>
  );

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <ECStatusBar />

      <div ref={scrollRef} style={{ flex: 1, minHeight: 0, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>

      {/* Header */}
      <div style={{ padding: '8px 22px 0' }}>
        <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>효율적인 학습</div>
      </div>

      {/* Section 1: 스페이스드 레피티션 설명 */}
      <div style={{ padding: '28px 18px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        스페이스드 레피티션
      </div>
      <div style={{ padding: '0 18px 28px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 20 }}>
          <div style={{ marginBottom: 16 }}>
            <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 8, display: 'flex', alignItems: 'center', gap: 8 }}>
              <span>💭</span> 뇌는 반복으로 기억해요
            </div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6 }}>
              한 번 배운 것도 시간이 지나면 잊어버립니다. 하지만 <strong style={{ color: T.accent }}>적절한 시간에 반복하면</strong> 오래 기억할 수 있어요.
            </div>
          </div>

          {/* 그래프 */}
          <div style={{ margin: '20px 0', padding: '16px', background: T.bg1, borderRadius: 12 }}>
            <ForgettingCurve />
            <div style={{ fontSize: 10, color: T.textMute, textAlign: 'center', marginTop: 8 }}>
              점선: 복습 없음 | 실선: EngCat으로 복습
            </div>
          </div>

          <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6, paddingTop: 12, borderTop: `1px solid ${T.hair}` }}>
            <strong style={{ color: T.accent }}>EngCat은</strong> 이 원리를 기반으로 매일 복습할 단어와 표현을 자동으로 선택해줍니다.
          </div>
        </div>
      </div>

      {/* Section 2: EngCat의 역할 */}
      <div style={{ padding: '28px 18px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        EngCat이 해주는 것
      </div>
      <div style={{ padding: '0 18px 28px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, overflow: 'hidden' }}>
          <div style={{ padding: 18, borderBottom: `1px solid ${T.hair}` }}>
            <div style={{ display: 'flex', gap: 12, alignItems: 'flex-start' }}>
              <div style={{ fontSize: 20 }}>📚</div>
              <div style={{ flex: 1 }}>
                <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 4 }}>새로 배우기</div>
                <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>매일 새 단어와 문장을 학습합니다.</div>
              </div>
            </div>
          </div>

          <div style={{ padding: 18, borderBottom: `1px solid ${T.hair}` }}>
            <div style={{ display: 'flex', gap: 12, alignItems: 'flex-start' }}>
              <div style={{ fontSize: 20 }}>⏰</div>
              <div style={{ flex: 1 }}>
                <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 4 }}>최적의 타이밍에 복습</div>
                <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>어제 배운 것, 잘못한 것을 자동으로 보여줍니다.</div>
              </div>
            </div>
          </div>

          <div style={{ padding: 18 }}>
            <div style={{ display: 'flex', gap: 12, alignItems: 'flex-start' }}>
              <div style={{ fontSize: 20 }}>📊</div>
              <div style={{ flex: 1 }}>
                <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 4 }}>진도 추적</div>
                <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>얼마나 배웠는지, 얼마나 기억하는지 보여줍니다.</div>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Section 3: Credits */}
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
