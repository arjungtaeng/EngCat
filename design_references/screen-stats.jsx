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
    const dow = today.getDay(); // 0=일, 1=월 ...
    const mondayOffset = dow === 0 ? 6 : dow - 1; // 월요일까지 며칠 전인지
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
      d.setDate(today.getDate() - (83 - i)); // i=0: 83일 전, i=83: 오늘
      const ds = d.toISOString().slice(0, 10);
      const count = learningStats.dailyCounts[ds] || 0;
      g[i] = count === 0 ? 0 : count < 6 ? 1 : count < 15 ? 2 : 3;
    }
    return g;
  }, [learningStats]);

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
            position: 'absolute', top: -30, right: -30, width: 140, height: 140, borderRadius: '50%',
            background: `radial-gradient(circle, ${T.accentSoft} 0%, transparent 70%)`,
          }} />
          {/* 불꽃 아이콘 — absolute로 빼서 텍스트 위치에 영향 없도록 */}
          <div style={{ position: 'absolute', top: 18, right: 18, color: T.accent }}>
            {ECIcon.flame(T.accent, 48)}
          </div>
          <div>
            <div style={{ fontFamily: T.mono, fontSize: 10, color: T.accent, letterSpacing: 1.4, textTransform: 'uppercase' }}>
              연속 학습
            </div>
            <div style={{ display: 'flex', alignItems: 'baseline', gap: 6, marginTop: 6 }}>
              <div style={{ fontFamily: T.serif, fontSize: 56, color: T.text, lineHeight: 1, letterSpacing: -1.5 }}>{learningStats.streak}</div>
              <div style={{ fontSize: 16, color: T.textDim }}>일</div>
            </div>
            <div style={{ marginTop: 8, fontSize: 12.5, color: T.textDim }}>
              {learningStats.streak === 0
                ? '아직 학습 기록이 없어요. 오늘 시작해 보세요!'
                : `${learningStats.streak}일 연속 학습 중이에요!`}
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

      </div>{/* end scrollable */}
    </div>
  );
}

Object.assign(window, { ECScreenStats });
