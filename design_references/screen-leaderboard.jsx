// EngCat — 리더보드 (리그 랭킹)
// 같은 리그(비기너/인터/어드밴스드) 안에서 [이번 주] 주간 XP 순위와
// [명예의 전당] 누적 리그 포인트 순위를 보여준다. 내 순위도 표시.

function ECScreenLeaderboard() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  const [tab, setTab] = React.useState('daily');      // 'daily' | 'weekly' | 'alltime'
  const [state, setState] = React.useState({ loading: true, data: null, error: null });

  React.useEffect(() => {
    let alive = true;
    setState({ loading: true, data: null, error: null });
    (async () => {
      try {
        if (window.ECDataLoaded) { try { await window.ECDataLoaded; } catch (_) {} }
        const res = tab === 'friends'
          ? (window.ECGetFriends ? await window.ECGetFriends() : null)
          : (window.ECGetLeaderboard ? await window.ECGetLeaderboard(tab) : null);
        if (!alive) return;
        if (!res || res.error) setState({ loading: false, data: res, error: (res && res.error) || '불러오기 실패' });
        else setState({ loading: false, data: res, error: null });
      } catch (e) {
        if (alive) setState({ loading: false, data: null, error: String(e && e.message || e) });
      }
    })();
    return () => { alive = false; };
  }, [tab]);

  const LEAGUE_INFO = {
    beginner:     { name: 'Beginner',     levels: 'A1·A2' },
    intermediate: { name: 'Intermediate', levels: 'B1·B2' },
    advanced:     { name: 'Advanced',     levels: 'C1·C2' },
  };
  const d = state.data;
  const leagueInfo = (d && d.league) ? (LEAGUE_INFO[d.league] || { name: d.league, levels: '' }) : null;
  const scoreOf = (r) => tab === 'alltime' ? (r.league_points || 0) : tab === 'daily' ? (r.today_score || 0) : (r.weekly_score || 0);
  const unit = tab === 'alltime' ? 'P' : 'pt';
  const medal = (rank) => rank === 1 ? '🥇' : rank === 2 ? '🥈' : rank === 3 ? '🥉' : null;

  // 이름 가리기: 본인·친구는 전체, 모르는 사람은 마스킹 (홍길동→홍*동, 김구→김*)
  const friendEmails = new Set((d && d.friendEmails) || []);
  const maskName = (name) => {
    const ch = [...((name || '').trim())];
    if (ch.length === 0) return '학습자';
    if (ch.length === 1) return ch[0];
    if (ch.length === 2) return ch[0] + '*';
    return ch[0] + '*'.repeat(ch.length - 2) + ch[ch.length - 1];
  };
  const displayName = (r, isMe) => {
    if (isMe || (r.email && friendEmails.has(r.email))) return r.nickname || '학습자';
    return maskName(r.nickname);
  };

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
  const meInList = d && d.myEmail && (d.rows || []).some(r => r.email === d.myEmail);

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 100 }}>
        <ECStatusBar />

        {/* Header */}
        <div style={{ padding: '8px 18px 0', display: 'flex', alignItems: 'center', gap: 10 }}>
          <div onClick={() => window.ECNav?.go('stats')} style={{
            width: 36, height: 36, borderRadius: 12, background: T.bg2, cursor: 'pointer',
            display: 'flex', alignItems: 'center', justifyContent: 'center', border: `1px solid ${T.hair}`,
          }}>{ECIcon.chev('left', T.text, 18)}</div>
          <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>랭킹</div>
          {leagueInfo && (
            <div style={{ marginLeft: 'auto', textAlign: 'right' }}>
              <div style={{ fontFamily: T.mono, fontSize: 10, color: T.textMute, letterSpacing: 0.5 }}>{leagueInfo.levels}</div>
              <div style={{ fontFamily: T.mono, fontSize: 12, color: T.accent, letterSpacing: 0.5, fontWeight: 600 }}>{leagueInfo.name} League</div>
            </div>
          )}
        </div>

        {/* Tabs */}
        <div style={{ display: 'flex', gap: 6, padding: '14px 18px 6px' }}>
          {[['daily', '오늘'], ['weekly', '이번 주'], ['alltime', '명예의 전당'], ['friends', '친구']].map(([k, label]) => (
            <div key={k} onClick={() => setTab(k)} style={{
              flex: 1, textAlign: 'center', padding: '10px 0', borderRadius: 12, cursor: 'pointer',
              fontSize: 13, fontWeight: 600, whiteSpace: 'nowrap',
              background: tab === k ? T.accent : (isDark ? 'rgba(255,255,255,0.06)' : T.bg2),
              color: tab === k ? T.accentText : T.textDim,
              border: `1px solid ${tab === k ? T.accent : T.hair}`,
            }}>{label}</div>
          ))}
        </div>

        <div style={{ fontSize: 12, color: T.textMute, padding: '2px 22px 12px', lineHeight: 1.5 }}>
          {tab === 'daily'
            ? '오늘 학습·퀴즈·출석 점수. 매일 자정에 초기화돼요.'
            : tab === 'weekly'
            ? '이번 주 학습·퀴즈·출석 점수. 매주 월요일 초기화돼요.'
            : tab === 'alltime'
            ? '매주 순위로 쌓인 누적 포인트. 초기화되지 않아요.'
            : '내 친구들의 이번 주 점수. 친구는 이름이 전부 보여요.'}
        </div>

        <div style={{ padding: '0 18px' }}>
          {state.loading && <div style={{ textAlign: 'center', color: T.textMute, fontSize: 13, padding: '40px 0' }}>불러오는 중...</div>}

          {!state.loading && state.error && (
            <div style={{ textAlign: 'center', color: T.textMute, fontSize: 13, padding: '40px 16px', lineHeight: 1.6 }}>
              {tab === 'friends'
                ? <>{state.error}</>
                : <>랭킹을 불러오지 못했어요.<br />로그인 후 학습하면 순위가 집계돼요.</>}
            </div>
          )}

          {/* 순위 탭 (오늘/이번 주/명예의 전당) */}
          {!state.loading && !state.error && d && tab !== 'friends' && (
            <>
              {(d.rows || []).length === 0 && (
                <div style={{ textAlign: 'center', color: T.textMute, fontSize: 13, padding: '40px 16px', lineHeight: 1.6 }}>
                  {tab === 'daily' ? '오늘 첫 주자가 되어 보세요!' : tab === 'weekly' ? '이번 주 첫 주자가 되어 보세요!' : '아직 집계된 누적 포인트가 없어요.'}
                </div>
              )}
              {(d.rows || []).map((r, i) => (
                <Row key={i} rank={i + 1} nickname={displayName(r, !!d.myEmail && r.email === d.myEmail)} score={scoreOf(r)} streak={r.streak || 0}
                     me={!!d.myEmail && r.email === d.myEmail} />
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

          {/* 친구 탭 */}
          {!state.loading && !state.error && d && tab === 'friends' && (() => {
            const ranking = [d.mine, ...(d.friends || [])]
              .filter(p => p && p.email)
              .sort((a, b) => (b.weekly_score || 0) - (a.weekly_score || 0));
            const inc = (d.incoming || []).length;
            return (
              <>
                {inc > 0 && (
                  <div onClick={() => window.ECNav?.go('friends')} style={{
                    display: 'flex', alignItems: 'center', gap: 8, padding: '12px 14px', borderRadius: 14, marginBottom: 10,
                    background: T.accentSoft, border: `1px solid ${T.accent}`, cursor: 'pointer',
                  }}>
                    <div style={{ flex: 1, fontSize: 13, fontWeight: 600, color: T.accent }}>받은 친구 요청 {inc}건</div>
                    <div style={{ fontSize: 12, color: T.accent }}>확인 ›</div>
                  </div>
                )}
                {(d.friends || []).length === 0 ? (
                  <div style={{ textAlign: 'center', color: T.textMute, fontSize: 13, padding: '36px 16px', lineHeight: 1.7 }}>
                    아직 친구가 없어요.<br />이메일로 친구를 추가하면 함께 순위를 겨룰 수 있어요.
                    <div onClick={() => window.ECNav?.go('friends')} style={{
                      marginTop: 16, display: 'inline-block', padding: '10px 18px', borderRadius: 12, cursor: 'pointer',
                      background: T.accent, color: T.accentText, fontWeight: 700, fontSize: 14,
                    }}>친구 추가하기</div>
                  </div>
                ) : (
                  <>
                    {ranking.map((p, i) => (
                      <Row key={p.email} rank={i + 1} nickname={p.nickname || p.email.split('@')[0]}
                           score={p.weekly_score || 0} streak={p.streak || 0} me={p.email === d.myEmail} />
                    ))}
                    <div onClick={() => window.ECNav?.go('friends')} style={{
                      marginTop: 6, textAlign: 'center', padding: '12px 0', borderRadius: 12, cursor: 'pointer',
                      border: `1px solid ${T.hair}`, color: T.textDim, fontSize: 13, fontWeight: 600,
                    }}>친구 추가·관리</div>
                  </>
                )}
              </>
            );
          })()}
        </div>
      </div>
    </div>
  );
}
