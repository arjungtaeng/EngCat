// EngCat — Help screen (Spaced Repetition + 3 core advantages)

function ECScreenHelp() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

  // 망각 곡선 시각화 (간단한 SVG)
  const ForgettingCurve = () => (
    <svg viewBox="0 0 300 140" style={{ width: '100%', height: 'auto' }}>
      <defs>
        <linearGradient id="curveGradient" x1="0%" y1="0%" x2="0%" y2="100%">
          <stop offset="0%" stopColor={T.accent} stopOpacity="0.15" />
          <stop offset="100%" stopColor={T.accent} stopOpacity="0.02" />
        </linearGradient>
      </defs>

      <line x1="30" y1="120" x2="290" y2="120" stroke={T.hairStr} strokeWidth="1" />
      <line x1="30" y1="20" x2="30" y2="120" stroke={T.hairStr} strokeWidth="1" />

      <text x="50" y="135" fontSize="10" fill={T.textMute} textAnchor="middle">학습</text>
      <text x="120" y="135" fontSize="10" fill={T.textMute} textAnchor="middle">1일</text>
      <text x="180" y="135" fontSize="10" fill={T.textMute} textAnchor="middle">3일</text>
      <text x="240" y="135" fontSize="10" fill={T.textMute} textAnchor="middle">1주</text>

      <path
        d="M 50 35 Q 85 60 120 85 T 180 100 T 240 110"
        fill="none"
        stroke={T.textMute}
        strokeWidth="1.5"
        strokeDasharray="3,3"
        opacity="0.5"
      />

      <path
        d="M 50 35 L 120 40 L 180 50 L 240 60"
        fill="url(#curveGradient)"
        stroke={T.accent}
        strokeWidth="2"
      />

      <circle cx="120" cy="40" r="3" fill={T.accent} />
      <circle cx="180" cy="50" r="3" fill={T.accent} />
      <circle cx="240" cy="60" r="3" fill={T.accent} />

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
        <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>도움말</div>
      </div>

      {/* Main: 스페이스드 레피티션 */}
      <div style={{ padding: '28px 18px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        효율적인 학습의 원리
      </div>
      <div style={{ padding: '0 18px 28px' }}>
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 20 }}>
          <div style={{ marginBottom: 16 }}>
            <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 8 }}>
              뇌는 반복으로 기억해요
            </div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.6 }}>
              한 번 배운 것도 시간이 지나면 잊어버립니다. 하지만 <strong style={{ color: T.accent }}>적절한 시간에 반복하면</strong> 오래 기억할 수 있어요.
            </div>
          </div>

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

      {/* Sub: 3가지 장점 */}
      <div style={{ padding: '28px 18px 8px', fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase' }}>
        EngCat의 3가지 장점
      </div>
      <div style={{ padding: '0 18px 28px' }}>
        {/* Advantage 1 */}
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 16, marginBottom: 12, display: 'flex', gap: 14, alignItems: 'flex-start' }}>
          <div style={{ fontSize: 20, fontWeight: 600, color: T.accent, minWidth: 28 }}>1</div>
          <div style={{ flex: 1 }}>
            <div style={{ fontSize: 14, fontWeight: 600, color: T.text, marginBottom: 4 }}>이미지로 배워요</div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>
              뇌는 시각 정보를 텍스트보다 훨씬 오래 기억합니다.
            </div>
          </div>
        </div>

        {/* Advantage 2 */}
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 16, marginBottom: 12, display: 'flex', gap: 14, alignItems: 'flex-start' }}>
          <div style={{ fontSize: 20, fontWeight: 600, color: T.accent, minWidth: 28 }}>2</div>
          <div style={{ flex: 1 }}>
            <div style={{ fontSize: 14, fontWeight: 600, color: T.text, marginBottom: 4 }}>다양한 상황을 배워요</div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>
              매일 다른 토픽. 카페, 여행, 회의, 일상...
            </div>
          </div>
        </div>

        {/* Advantage 3 */}
        <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 16, display: 'flex', gap: 14, alignItems: 'flex-start' }}>
          <div style={{ fontSize: 20, fontWeight: 600, color: T.accent, minWidth: 28 }}>3</div>
          <div style={{ flex: 1 }}>
            <div style={{ fontSize: 14, fontWeight: 600, color: T.text, marginBottom: 4 }}>매일 짧게만 하면 돼요</div>
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5 }}>
              10개 단어 + 5개 문장. 꾸준히 할 수 있어요.
            </div>
          </div>
        </div>
      </div>

      {/* Credits */}
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
