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

  // 나의 랭킹 (이번 주, 같은 리그 내)
  const [myRank, setMyRank] = React.useState(null);
  React.useEffect(() => {
    let alive = true;
    (async () => {
      try {
        if (window.ECDataLoaded) { try { await window.ECDataLoaded; } catch (_) {} }
        const res = window.ECGetLeaderboard ? await window.ECGetLeaderboard('weekly') : null;
        if (alive && res && !res.error) setMyRank(res.myRank || null);
      } catch (_) {}
    })();
    return () => { alive = false; };
  }, [userId]);
  const rankDisplay = myRank ? String(myRank) : '—';

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

  // 7단계 불꽃은 공용 아이콘 사용 (icons.jsx의 ECIcon.flameStage)
  const FlameIcon = ({ stage, size }) => ECIcon.flameStage(stage, size || 24);

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
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <div onClick={() => window.ECNav?.go('friends')} style={{
            width: 36, height: 36, borderRadius: 12, background: T.bg2, cursor: 'pointer',
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            border: `1px solid ${T.hair}`,
          }}>{ECIcon.userPlus(T.text, 18)}</div>
          <div onClick={() => window.ECNav?.go('leaderboard')} style={{
            width: 36, height: 36, borderRadius: 12, background: T.bg2, cursor: 'pointer',
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            border: `1px solid ${T.hair}`,
          }}>{ECIcon.trophy(T.accent, 18)}</div>
        </div>
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
              // 7개를 항상 렌더링(부드러운 복귀)하되, 중앙±1만 보이게 페이드 → 화면엔 3개만
              const off = (s - carouselIdx) * ITEM_W + dragDx;
              const t = Math.max(0, 1 - Math.abs(off) / ITEM_W);
              const scale = SIDE_SCALE + (1 - SIDE_SCALE) * t;
              const isColor = s === flameStage;
              const edge = Math.abs(off) / ITEM_W;
              const vis = edge >= 1.5 ? 0 : edge <= 1 ? 1 : (1.5 - edge) / 0.5;
              const baseOp = isColor ? 1 : Math.max(0.35, 0.35 + 0.5 * t);
              const ease = dragging.current ? 'none' : `transform ${returnDur}s cubic-bezier(0.22, 1, 0.36, 1), opacity ${returnDur}s cubic-bezier(0.22, 1, 0.36, 1)`;
              return (
                <div
                  key={s}
                  style={{
                    position: 'absolute',
                    left: '50%',
                    top: '50%',
                    transform: `translate(calc(-50% + ${off}px), -50%) scale(${scale.toFixed(3)})`,
                    transition: ease,
                    filter: isColor ? 'none' : 'grayscale(100%)',
                    opacity: baseOp * vis,
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
            <div style={{ marginTop: 8, fontSize: 12.5, color: T.textDim, whiteSpace: 'nowrap', marginRight: -178 }}>
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
          { num: rankDisplay, label: '나의 랭킹',
            numColor: (myRank && myRank <= 3) ? T.accent : T.text },
        ].map((s, i) => (
          <div key={i} onClick={s.onClick} style={{
            padding: '14px 14px', borderRadius: 16, background: T.bg2, border: `1px solid ${T.hair}`,
            cursor: s.onClick ? 'pointer' : 'default',
          }}>
            <div style={{ fontFamily: T.serif, fontSize: 26, color: s.numColor || T.text, lineHeight: 1, letterSpacing: -0.5 }}>{s.num}</div>
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
