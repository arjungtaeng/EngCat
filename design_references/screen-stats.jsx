// EngCat — Progress / Stats screen

function ECScreenStats() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

  // 사용자 ID
  const userId = React.useMemo(() => {
    try { return JSON.parse(localStorage.getItem('engcat_user') || '{}').email || 'guest'; }
    catch(e) { return 'guest'; }
  }, []);

  // 전체 학습 이력 집계
  const learningStats = React.useMemo(() => {
    const prefix = 'ec_learned_' + userId + '_';
    const totalWords = new Set();
    const totalSentences = new Set();
    const dailyCounts = {}; // { 'YYYY-MM-DD': cardCount }

    for (let i = 0; i < localStorage.length; i++) {
      const key = localStorage.key(i);
      if (key && key.startsWith(prefix)) {
        const date = key.slice(prefix.length);
        try {
          const d = JSON.parse(localStorage.getItem(key) || '{}');
          const wIds = d.wordIds || [];
          const sIds = d.sentenceIds || [];
          wIds.forEach(id => totalWords.add(id));
          sIds.forEach(id => totalSentences.add(id));
          dailyCounts[date] = (dailyCounts[date] || 0) + wIds.length + sIds.length;
        } catch(e) {}
      }
    }

    // 연속 학습 계산: 오늘 학습했으면 오늘부터, 아니면 어제부터 거슬러 올라감
    const today = new Date();
    const todayStr = today.toISOString().slice(0, 10);
    const startOffset = (dailyCounts[todayStr] || 0) > 0 ? 0 : 1;
    let streak = 0;
    for (let i = startOffset; i < 365; i++) {
      const d = new Date(today);
      d.setDate(today.getDate() - i);
      const ds = d.toISOString().slice(0, 10);
      if ((dailyCounts[ds] || 0) > 0) streak++;
      else break;
    }

    return { totalWords: totalWords.size, totalSentences: totalSentences.size, streak, dailyCounts };
  }, [userId]);

  // 퀴즈 정답률
  const quizRate = React.useMemo(() => {
    try {
      const qs = JSON.parse(localStorage.getItem('ec_quiz_stats_' + userId) || '{}');
      let correct = 0, wrong = 0;
      Object.values(qs).forEach(s => { correct += (s.c || 0); wrong += (s.w || 0); });
      const total = correct + wrong;
      return total > 0 ? Math.round((correct / total) * 100) + '%' : '—';
    } catch(e) { return '—'; }
  }, [userId]);

  // 이번 주 요일별 카드 수 (월~일)
  const { weekBars, todayIdx, weekTotal } = React.useMemo(() => {
    const today = new Date();
    const dow = today.getDay();
    const mondayOffset = dow === 0 ? 6 : dow - 1;
    const bars = Array(7).fill(0);
    let total = 0;
    for (let i = 0; i < 7; i++) {
      const d = new Date(today);
      d.setDate(today.getDate() - mondayOffset + i);
      const ds = d.toISOString().slice(0, 10);
      bars[i] = learningStats.dailyCounts[ds] || 0;
      total += bars[i];
    }
    return { weekBars: bars, todayIdx: mondayOffset, weekTotal: total };
  }, [learningStats]);
  const maxBar = Math.max(...weekBars, 1);

  // 12주(84일) 활동 그리드
  const grid = React.useMemo(() => {
    const g = Array(84).fill(0);
    const today = new Date();
    for (let i = 0; i < 84; i++) {
      const d = new Date(today);
      d.setDate(today.getDate() - (83 - i));
      const ds = d.toISOString().slice(0, 10);
      const count = learningStats.dailyCounts[ds] || 0;
      g[i] = count === 0 ? 0 : count < 6 ? 1 : count < 15 ? 2 : 3;
    }
    return g;
  }, [learningStats]);

  // 연속 학습 일수에 따른 불꽃 단계 (0~6) — 6일이면 최고 단계
  const flameStage = learningStats.streak === 0 ? 0
    : learningStats.streak < 2 ? 1
    : learningStats.streak < 3 ? 2
    : learningStats.streak < 4 ? 3
    : learningStats.streak < 5 ? 4
    : learningStats.streak < 6 ? 5
    : 6;

  const flameMeta = [
    { desc: '아직 학습 기록이 없어요. 오늘 시작해 보세요!' },
    { desc: '첫 번째 불꽃이 켜졌어요! 내일도 이어가 보세요.' },
    { desc: `${learningStats.streak}일 연속 학습 중이에요!` },
    { desc: `${learningStats.streak}일 연속! 불꽃이 자라나고 있어요.` },
    { desc: `${learningStats.streak}일 연속! 꾸준히 타오르고 있어요.` },
    { desc: `${learningStats.streak}일 연속! 불꽃이 강해지고 있어요!` },
    { desc: `${learningStats.streak}일 연속! 전설의 불꽃이 활활 타고 있어요!` },
  ][flameStage];

  // 커스텀 7단계 불꽃 SVG — 0: 차가운 재 → 6: 전설의 불꽃
  const FlameIcon = ({ stage, size }) => {
    const s = size || 24;
    if (stage === 0) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <path d="M 7 18 Q 12 16.5 17 18 L 16 20 L 8 20 Z" fill="#5a5560" opacity="0.7"/>
        <circle cx="12" cy="17.5" r="0.6" fill="#5a5560" opacity="0.9"/>
        <path d="M 11.5 15 Q 11 13.5 12 12 Q 13 10.5 12.3 9" stroke="#5a5560" strokeWidth="0.6" strokeLinecap="round" fill="none" opacity="0.35"/>
      </svg>
    );
    if (stage === 1) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <ellipse cx="12" cy="20" rx="3" ry="0.8" fill="#8a6a52" opacity="0.5"/>
        <path d="M 12 20 Q 9.6 17.5 10.8 14 Q 11.5 12.3 12.4 13 Q 13.3 15 12.9 17 Q 14 16.3 13.3 20 Z" fill="#E8B26A"/>
        <ellipse cx="12.3" cy="18" rx="0.7" ry="1.5" fill="#FFE4B0"/>
      </svg>
    );
    if (stage === 2) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <path d="M 12 20 Q 8.5 17 10 13 Q 11 11 12 11.5 Q 12.5 13 12.2 14.5 Q 13.8 13.5 14 11.5 Q 15.5 14 15 17 Q 14 19.5 12 20 Z" fill="#E8B26A"/>
        <path d="M 12 19 Q 10.5 17 11.5 15 Q 12 14 12.3 14.5 Q 13 16 12.7 17 Q 13.5 16.5 13 18.5 Z" fill="#F0C878"/>
        <ellipse cx="12.3" cy="17" rx="0.6" ry="1.2" fill="#FFE4B0"/>
      </svg>
    );
    if (stage === 3) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <path d="M 12 21 Q 7 18 8.5 13 Q 9.5 10 11.5 9.5 Q 11.8 11 12 12.5 Q 13.5 11 14.5 8.5 Q 16.5 12 16 16 Q 15 20 12 21 Z" fill="#E89A6A"/>
        <path d="M 12 20 Q 9 17.5 10 14 Q 11 12 12 12.5 Q 12.3 14 12.5 15 Q 13.5 14 14 12 Q 15 14.5 14.5 17 Q 14 19 12 20 Z" fill="#E8B26A"/>
        <path d="M 12 19 Q 10.5 17 11.5 15 Q 12 14 12.3 14.5 Q 13 16 12.7 17 Q 13.5 17 13 18.5 Z" fill="#FFE4B0"/>
      </svg>
    );
    if (stage === 4) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <path d="M 12 21.5 Q 6 18 7.5 12.5 Q 9 8.5 11 8 Q 11.5 10 12 12 Q 13.5 9 15 6 Q 17.5 11 17 16 Q 16 21 12 21.5 Z" fill="#E89A6A"/>
        <path d="M 12 20.5 Q 8 17.5 9 13 Q 10 10 11.5 10.5 Q 12 12.5 12.3 14 Q 13.5 12 14.5 9.5 Q 16 13 15.5 16.5 Q 14.5 19.5 12 20.5 Z" fill="#E8B26A"/>
        <path d="M 12 19.5 Q 9.5 17 10.5 14 Q 11.5 12 12.3 12.5 Q 12.5 14 13 15 Q 14 13.5 14.3 12 Q 14.8 15 14.5 17 Q 13.5 19 12 19.5 Z" fill="#F0C878"/>
        <ellipse cx="12.5" cy="17" rx="0.7" ry="1.4" fill="#FFE4B0"/>
        <circle cx="17" cy="9" r="0.5" fill="#FFD27A"/>
        <circle cx="6.5" cy="11" r="0.4" fill="#FFD27A"/>
      </svg>
    );
    if (stage === 5) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <ellipse cx="12" cy="14" rx="6" ry="8" fill="rgba(232,178,106,0.4)"/>
        <path d="M 12 22 Q 5 18 6 11.5 Q 7.5 7 9.5 6 Q 10 9 11 11 Q 12.5 7 13 4 Q 14 7 13.8 10 Q 15.5 7.5 16.5 5 Q 18.5 10 18 16 Q 17 21.5 12 22 Z" fill="#E89A6A"/>
        <path d="M 12 21 Q 7 18 8 13 Q 9 9.5 10.5 9 Q 11 11 11.8 12 Q 13 9 13.5 7 Q 15 11 14.5 13 Q 16 11 16 9 Q 17 13 16.5 17 Q 15.5 20 12 21 Z" fill="#E8B26A"/>
        <path d="M 12 20 Q 9 18 10 14 Q 11 12 12 12 Q 12.3 14 12.8 15 Q 14 13 14.3 11 Q 15 14 14.5 17 Q 13.5 19.5 12 20 Z" fill="#F0C878"/>
        <path d="M 12 19 Q 11 17 12 14.5 Q 12.7 13.5 13 14.5 Q 13.5 16 13.2 17 Q 13.5 18 12.7 19 Z" fill="#FFE4B0"/>
        <circle cx="18" cy="8" r="0.5" fill="#FFD27A"/>
        <circle cx="5" cy="10" r="0.45" fill="#FFD27A"/>
        <circle cx="16" cy="4" r="0.35" fill="#FFD27A" opacity="0.7"/>
        <circle cx="7" cy="6" r="0.3" fill="#FFD27A" opacity="0.6"/>
      </svg>
    );
    // stage === 6: 전설의 불꽃 — 6일+
    return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none"
        style={{ filter: 'drop-shadow(0 0 4px rgba(232,178,106,0.7)) drop-shadow(0 0 10px rgba(232,178,106,0.4))' }}>
        <ellipse cx="12" cy="13" rx="8" ry="10" fill="rgba(232,178,106,0.4)"/>
        <ellipse cx="12" cy="14" rx="6" ry="8" fill="rgba(232,178,106,0.4)" opacity="0.6"/>
        <path d="M 12 22.5 Q 3.5 19 4.5 11 Q 6 5 8.5 4 Q 9 8 10 10.5 Q 11.5 5 12 1.5 Q 13 5.5 13 10 Q 14.5 4.5 15.5 2.5 Q 16.5 7 16 10 Q 18 7 19.5 4.5 Q 21 11 20.5 17 Q 19 22 12 22.5 Z" fill="#E89A6A"/>
        <path d="M 12 22 Q 5 19 6 12 Q 7.5 7 9.5 7 Q 10 10 11 12 Q 12.5 6 13 3.5 Q 14 7 13.8 10.5 Q 15.5 6.5 16.5 4.5 Q 18 9 17.5 14 Q 17 19 12 22 Z" fill="#E8B26A"/>
        <path d="M 12 21 Q 7 18.5 8 13 Q 9.5 9 11 9 Q 11.5 11 12 12.5 Q 13 8.5 13.5 6.5 Q 14.5 10 14.3 13 Q 16 10 16 8.5 Q 17 13 16 17 Q 15 20 12 21 Z" fill="#F0C878"/>
        <path d="M 12 20 Q 9.5 18 10.5 14 Q 11.5 12 12 12.5 Q 12.5 14 13 15 Q 14 12.5 14.3 11 Q 15 14 14.5 17 Q 13.5 19 12 20 Z" fill="#FFE4B0"/>
        <path d="M 12 19 Q 11 17 12 14.5 Q 12.7 13.5 13 14.5 Q 13.5 16 13.2 17 Q 13.5 18 12.7 19 Z" fill="#FFF1D0"/>
        <circle cx="20" cy="6" r="0.6" fill="#FFD27A"/>
        <circle cx="4" cy="8" r="0.55" fill="#FFD27A"/>
        <circle cx="18" cy="2" r="0.4" fill="#FFD27A" opacity="0.8"/>
        <circle cx="6" cy="3" r="0.4" fill="#FFD27A" opacity="0.7"/>
        <circle cx="22" cy="11" r="0.35" fill="#FFD27A" opacity="0.6"/>
        <circle cx="2.5" cy="13" r="0.35" fill="#FFD27A" opacity="0.5"/>
        <circle cx="15" cy="0.5" r="0.3" fill="#FFD27A" opacity="0.5"/>
      </svg>
    );
  };

  // ── 캐러셀 상태 ────────────────────────────────────────────────
  const [carouselIdx, setCarouselIdx] = React.useState(flameStage);
  const [dragDx, setDragDx] = React.useState(0);
  const [returnDur, setReturnDur] = React.useState(0.6); // 복귀 트랜지션 시간(s) — 거리 비례
  const dragging = React.useRef(false);
  const startX = React.useRef(0);
  const lastDx = React.useRef(0);

  const ITEM_W = 42;           // 아이템 간 간격(px) — 더 좁게
  const CENTER_SIZE = 70;      // 가운데 불꽃 크기
  const SIDE_SCALE = 42 / 70; // 양쪽 불꽃 스케일 비율 (42px 상당)

  const carouselStart = (x) => { dragging.current = true; startX.current = x; };
  const carouselMove  = (x) => {
    if (!dragging.current) return;
    const dx = x - startX.current;
    lastDx.current = dx;
    setDragDx(dx);
  };
  const carouselEnd = () => {
    if (!dragging.current) return;
    dragging.current = false;
    // 복귀 속도를 일정하게: 이동 거리에 비례해 시간 조정 (옆 불꽃이든 먼 불꽃이든 같은 속도감)
    const dist = Math.abs(lastDx.current);
    setReturnDur(Math.min(1.8, Math.max(0.45, (dist / ITEM_W) * 0.6)));
    lastDx.current = 0;
    setDragDx(0);
    setCarouselIdx(flameStage); // 손을 떼면 현재 단계(컬러 불꽃)로 자동 복귀
  };

  const tints = ['rgba(244,241,235,0.06)', 'rgba(232,178,106,0.28)', 'rgba(232,178,106,0.6)', T.accent];

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div ref={scrollRef} style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>
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
      <div style={{ padding: '10px 18px 0' }}>
        <div style={{
          padding: 18, borderRadius: 22,
          background: `linear-gradient(150deg, ${T.bg3} 0%, ${T.bg2} 100%)`,
          border: `1px solid ${T.hair}`, position: 'relative', overflow: 'hidden',
        }}>
          <div style={{
            position: 'absolute', top: -18, right: 0, width: 140, height: 140, borderRadius: '50%',
            background: `radial-gradient(circle, ${T.accentSoft} 0%, transparent 70%)`,
          }} />

          {/* 불꽃 캐러셀 — 우측 상단 고정 */}
          <div
            style={{
              position: 'absolute',
              top: 4,
              right: -18,
              width: 176,
              height: 96,
              overflow: 'hidden',
              cursor: 'grab',
              touchAction: 'none',
              userSelect: 'none',
            }}
            onTouchStart={e => carouselStart(e.touches[0].clientX)}
            onTouchMove={e => { e.preventDefault(); carouselMove(e.touches[0].clientX); }}
            onTouchEnd={carouselEnd}
            onMouseDown={e => carouselStart(e.clientX)}
            onMouseMove={e => dragging.current && carouselMove(e.clientX)}
            onMouseUp={carouselEnd}
            onMouseLeave={carouselEnd}
          >
            {[0,1,2,3,4,5,6].map(s => {
              const off = (s - carouselIdx) * ITEM_W + dragDx;
              if (Math.abs(off) > ITEM_W * 1.6) return null;
              const t = Math.max(0, 1 - Math.abs(off) / ITEM_W);
              const scale = SIDE_SCALE + (1 - SIDE_SCALE) * t;
              const isColor = s === flameStage;
              return (
                <div
                  key={s}
                  style={{
                    position: 'absolute',
                    left: '50%',
                    top: '50%',
                    transform: `translate(calc(-50% + ${off}px), -50%) scale(${scale.toFixed(3)})`,
                    transition: dragging.current ? 'none' : `transform ${returnDur}s cubic-bezier(0.22, 1, 0.36, 1)`,
                    filter: isColor ? 'none' : 'grayscale(100%)',
                    opacity: isColor ? 1 : Math.max(0.35, 0.35 + 0.5 * t),
                    pointerEvents: 'none',
                  }}
                >
                  <FlameIcon stage={s} size={CENTER_SIZE} />
                </div>
              );
            })}
          </div>

          {/* 스트릭 텍스트 — 우측 캐러셀 공간 확보 */}
          <div style={{ paddingRight: 178 }}>
            <div style={{ fontFamily: T.mono, fontSize: 10, color: T.accent, letterSpacing: 1.4, textTransform: 'uppercase' }}>
              연속 학습
            </div>
            <div style={{ display: 'flex', alignItems: 'baseline', gap: 6, marginTop: 6 }}>
              <div style={{ fontFamily: T.serif, fontSize: 56, color: T.text, lineHeight: 1, letterSpacing: -1.5 }}>{learningStats.streak}</div>
              <div style={{ fontSize: 16, color: T.textDim }}>일</div>
            </div>
            <div style={{ marginTop: 8, fontSize: 12.5, color: T.textDim }}>
              {flameMeta.desc}
            </div>
          </div>
        </div>
      </div>

      {/* Three stat tiles */}
      <div style={{ padding: '12px 18px 0', display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: 8 }}>
        {[
          { num: learningStats.totalWords, label: '익힌 단어' },
          { num: learningStats.totalSentences, label: '익힌 표현' },
          { num: quizRate, label: '정답률' },
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
        <div style={{ fontSize: 16, fontWeight: 600, color: T.text }}>이번 주 학습</div>
        <div style={{ fontSize: 12, color: T.textDim, fontFamily: T.mono }}>총 {weekTotal}장</div>
      </div>

      <div style={{ padding: '14px 22px 0' }}>
        <div style={{
          padding: '20px 16px 14px', borderRadius: 18, background: T.bg2, border: `1px solid ${T.hair}`,
          display: 'flex', justifyContent: 'space-between', alignItems: 'flex-end', height: 160,
        }}>
          {['월','화','수','목','금','토','일'].map((d, i) => {
            const isToday = i === todayIdx;
            const barH = weekBars[i] > 0 ? Math.max(8, Math.round((weekBars[i] / maxBar) * 100)) : 0;
            return (
              <div key={i} style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 8, flex: 1 }}>
                <div style={{
                  width: 16, height: barH, borderRadius: 6,
                  background: isToday ? T.accent : T.bg4,
                  transition: 'height 0.3s',
                }} />
                <div style={{ fontSize: 11, color: isToday ? T.accent : T.textDim, fontWeight: isToday ? 600 : 500 }}>{d}</div>
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

      </div>
    </div>
  );
}

Object.assign(window, { ECScreenStats });
