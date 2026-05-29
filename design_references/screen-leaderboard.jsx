// EngCat — 리더보드 (리그 랭킹)
// 같은 리그(비기너/인터/어드밴스드) 안에서 [이번 주] 주간 XP 순위와
// [명예의 전당] 누적 리그 포인트 순위를 보여준다. 내 순위도 표시.

function ECScreenLeaderboard() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  const [tab, setTab] = React.useState('weekly');     // 'weekly' | 'alltime'
  const [state, setState] = React.useState({ loading: true, data: null, error: null });

  React.useEffect(() => {
    let alive = true;
    setState({ loading: true, data: null, error: null });
    (async () => {
      try {
        if (window.ECDataLoaded) { try { await window.ECDataLoaded; } catch (_) {} }
        const res = window.ECGetLeaderboard ? await window.ECGetLeaderboard(tab) : null;
        if (!alive) return;
        if (!res || res.error) setState({ loading: false, data: res, error: (res && res.error) || '불러오기 실패' });
        else setState({ loading: false, data: res, error: null });
      } catch (e) {
        if (alive) setState({ loading: false, data: null, error: String(e && e.message || e) });
      }
    })();
    return () => { alive = false; };
  }, [tab]);

  const LEAGUE_KO = { beginner: '비기너', intermediate: '인터미디어트', advanced: '어드밴스드' };
  const d = state.data;
  const leagueKo = d ? (LEAGUE_KO[d.league] || d.league) : '';
  const scoreOf = (r) => tab === 'alltime' ? (r.league_points || 0) : (r.weekly_score || 0);
  const unit = tab === 'alltime' ? 'P' : 'pt';
  const medal = (rank) => rank === 1 ? '🥇' : rank === 2 ? '🥈' : rank === 3 ? '🥉' : null;

  const Row = ({ rank, nickname, score, streak, me }) => (
    <div style={{
      display: 'flex', alignItems: 'center', gap: 12, padding: '12px 14px', borderRadius: 14,
      background: me ? T.accentSoft : (isDark ? 'rgba(255,255,255,0.05)' : T.bg2),
      border: `1px solid ${me ? T.accent : T.hair}`, marginBottom: 8,
    }}>
      <div style={{ width: 30, textAlign: 'center', fontFamily: T.mono, fontSize: 15, fontWeight: 700, color: rank <= 3 ? T.accent : T.textDim }}>
        {medal(rank) || rank}
      </div>
      <div style={{ flex: 1, minWidth: 0 }}>
        <div style={{ fontSize: 15, fontWeight: me ? 700 : 500, color: T.text, whiteSpace: 'nowrap', overflow: 'hidden', textOverflow: 'ellipsis' }}>
          {nickname || '학습자'}{me ? ' (나)' : ''}
        </div>
        {streak > 0 && (
          <div style={{ fontSize: 11, color: T.textDim, marginTop: 1 }}>🔥 {streak}일 연속</div>
        )}
      </div>
      <div style={{ fontFamily: T.mono, fontSize: 15, fontWeight: 700, color: T.text }}>
        {score.toLocaleString()}<span style={{ fontSize: 11, color: T.textDim, marginLeft: 2 }}>{unit}</span>
      </div>
    </div>
  );

  // 상위 100 안에 내가 없으면 별도 내 순위 카드 표시
  const meInList = d && (d.rows || []).some(r => r.nickname === d.myNickname && scoreOf(r) === d.myScore);

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 100 }}>
        <ECStatusBar />

        {/* Header */}
        <div style={{ padding: '8px 18px 0', display: 'flex', alignItems: 'center', gap: 10 }}>
          <div onClick={() => window.ECNav?.go('stats')} style={{
            width: 36, height: 36, borderRadius: 12, background: T.bg2, cursor: 'pointer',
            display: 'flex', alignItems: 'center', justifyContent: 'center', border: `1px solid ${T.hair}`,
            transform: 'scaleX(-1)',
          }}>{ECIcon.chev(T.text, 18)}</div>
          <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>랭킹</div>
          {d && <div style={{ marginLeft: 'auto', fontFamily: T.mono, fontSize: 11, color: T.accent, letterSpacing: 1, textTransform: 'uppercase' }}>{leagueKo} 리그</div>}
        </div>

        {/* Tabs */}
        <div style={{ display: 'flex', gap: 8, padding: '14px 18px 6px' }}>
          {[['weekly', '이번 주'], ['alltime', '명예의 전당']].map(([k, label]) => (
            <div key={k} onClick={() => setTab(k)} style={{
              flex: 1, textAlign: 'center', padding: '10px 0', borderRadius: 12, cursor: 'pointer',
              fontSize: 14, fontWeight: 600,
              background: tab === k ? T.accent : (isDark ? 'rgba(255,255,255,0.06)' : T.bg2),
              color: tab === k ? T.accentText : T.textDim,
              border: `1px solid ${tab === k ? T.accent : T.hair}`,
            }}>{label}</div>
          ))}
        </div>

        <div style={{ fontSize: 12, color: T.textMute, padding: '2px 22px 12px', lineHeight: 1.5 }}>
          {tab === 'weekly'
            ? '이번 주 학습·퀴즈·출석 점수. 매주 월요일 초기화돼요.'
            : '매주 순위로 쌓인 누적 포인트. 초기화되지 않아요.'}
        </div>

        <div style={{ padding: '0 18px' }}>
          {state.loading && <div style={{ textAlign: 'center', color: T.textMute, fontSize: 13, padding: '40px 0' }}>불러오는 중...</div>}

          {!state.loading && state.error && (
            <div style={{ textAlign: 'center', color: T.textMute, fontSize: 13, padding: '40px 16px', lineHeight: 1.6 }}>
              랭킹을 불러오지 못했어요.<br />로그인 후 학습하면 순위가 집계돼요.
            </div>
          )}

          {!state.loading && !state.error && d && (
            <>
              {(d.rows || []).length === 0 && (
                <div style={{ textAlign: 'center', color: T.textMute, fontSize: 13, padding: '40px 16px', lineHeight: 1.6 }}>
                  {tab === 'weekly' ? '이번 주 첫 주자가 되어 보세요!' : '아직 집계된 누적 포인트가 없어요.'}
                </div>
              )}
              {(d.rows || []).map((r, i) => (
                <Row key={i} rank={i + 1} nickname={r.nickname} score={scoreOf(r)} streak={r.streak || 0}
                     me={!meInList ? false : (r.nickname === d.myNickname && scoreOf(r) === d.myScore)} />
              ))}

              {/* 내가 100위 밖이면 내 순위 별도 표시 */}
              {!meInList && d.myRank && (
                <>
                  <div style={{ textAlign: 'center', color: T.textMute, fontSize: 12, padding: '6px 0' }}>· · ·</div>
                  <Row rank={d.myRank} nickname={d.myNickname} score={d.myScore || 0} streak={d.myStreak || 0} me={true} />
                </>
              )}
            </>
          )}
        </div>
      </div>
    </div>
  );
}
