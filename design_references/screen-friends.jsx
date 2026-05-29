// EngCat — 친구 관리
// 이메일로 친구 요청, 받은 요청 수락/거절, 친구 목록 관리.
// 양방향 수락 모델(friend_edges 테이블).

function ECScreenFriends() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  const [data, setData] = React.useState(null);
  const [loading, setLoading] = React.useState(true);
  const [email, setEmail] = React.useState('');
  const [busy, setBusy] = React.useState(false);
  const [toast, setToast] = React.useState(null);   // { kind:'ok'|'err', msg }

  const load = React.useCallback(async () => {
    setLoading(true);
    try {
      if (window.ECDataLoaded) { try { await window.ECDataLoaded; } catch (_) {} }
      const res = window.ECGetFriends ? await window.ECGetFriends() : null;
      setData(res);
    } finally { setLoading(false); }
  }, []);

  React.useEffect(() => { load(); }, [load]);

  const flash = (kind, msg) => { setToast({ kind, msg }); setTimeout(() => setToast(null), 2400); };

  const onAdd = async () => {
    if (busy || !email.trim()) return;
    setBusy(true);
    const res = await window.ECSendFriendRequest(email);
    setBusy(false);
    if (res && res.error) { flash('err', res.error); return; }
    flash('ok', (res && res.msg) || '요청을 보냈어요.');
    setEmail('');
    load();
  };

  const onAccept = async (em) => { await window.ECAcceptFriend(em); flash('ok', '친구가 되었어요!'); load(); };
  const onRemove = async (em) => { await window.ECRemoveFriend(em); load(); };

  const nameOf = (p) => p.nickname || (p.email ? p.email.split('@')[0] : '학습자');
  const leagueTag = (p) => {
    const m = { beginner: 'A1·A2', intermediate: 'B1·B2', advanced: 'C1·C2' };
    return p.league ? (m[p.league] || '') : '';
  };

  const PersonRow = ({ p, right }) => (
    <div style={{
      display: 'flex', alignItems: 'center', gap: 12, padding: '12px 14px', borderRadius: 14,
      background: isDark ? 'rgba(255,255,255,0.05)' : T.bg2, border: `1px solid ${T.hair}`, marginBottom: 8,
    }}>
      <div style={{
        width: 38, height: 38, borderRadius: 11, background: T.bg3, flexShrink: 0,
        display: 'flex', alignItems: 'center', justifyContent: 'center',
      }}>{ECIcon.user(T.textDim, 18)}</div>
      <div style={{ flex: 1, minWidth: 0 }}>
        <div style={{ fontSize: 15, fontWeight: 600, color: T.text, whiteSpace: 'nowrap', overflow: 'hidden', textOverflow: 'ellipsis' }}>{nameOf(p)}</div>
        <div style={{ fontSize: 11, color: T.textDim, fontFamily: T.mono, marginTop: 1 }}>
          {leagueTag(p)}{leagueTag(p) && p.streak > 0 ? ' · ' : ''}{p.streak > 0 ? `🔥 ${p.streak}일` : ''}
        </div>
      </div>
      {right}
    </div>
  );

  const SmallBtn = ({ label, onClick, kind }) => (
    <div onClick={onClick} style={{
      padding: '7px 12px', borderRadius: 10, cursor: 'pointer', fontSize: 13, fontWeight: 600,
      background: kind === 'primary' ? T.accent : 'transparent',
      color: kind === 'primary' ? T.accentText : (kind === 'danger' ? T.textDim : T.text),
      border: kind === 'primary' ? 'none' : `1px solid ${T.hair}`,
      whiteSpace: 'nowrap',
    }}>{label}</div>
  );

  const Section = ({ title, count, children }) => (
    <div style={{ marginTop: 22 }}>
      <div style={{ fontFamily: T.mono, fontSize: 11, color: T.textMute, letterSpacing: 1, textTransform: 'uppercase', marginBottom: 10 }}>
        {title}{typeof count === 'number' ? ` (${count})` : ''}
      </div>
      {children}
    </div>
  );

  const d = data || {};
  const incoming = d.incoming || [], friends = d.friends || [], outgoing = d.outgoing || [];

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>
        <ECStatusBar />

        {/* Header */}
        <div style={{ padding: '8px 18px 0', display: 'flex', alignItems: 'center', gap: 10 }}>
          <div onClick={() => window.ECNav?.go('stats')} style={{
            width: 36, height: 36, borderRadius: 12, background: T.bg2, cursor: 'pointer',
            display: 'flex', alignItems: 'center', justifyContent: 'center', border: `1px solid ${T.hair}`,
          }}>{ECIcon.chev('left', T.text, 18)}</div>
          <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>친구</div>
        </div>

        <div style={{ padding: '16px 18px 0' }}>
          {/* 친구 추가 */}
          <div style={{ fontFamily: T.mono, fontSize: 11, color: T.textMute, letterSpacing: 1, textTransform: 'uppercase', marginBottom: 10 }}>이메일로 친구 추가</div>
          <div style={{ display: 'flex', gap: 8 }}>
            <input
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              onKeyDown={(e) => { if (e.key === 'Enter') onAdd(); }}
              placeholder="friend@example.com"
              inputMode="email" autoCapitalize="none" autoCorrect="off" spellCheck={false}
              style={{
                flex: 1, minWidth: 0, padding: '12px 14px', borderRadius: 12, fontSize: 15,
                background: isDark ? 'rgba(255,255,255,0.05)' : T.bg2, color: T.text,
                border: `1px solid ${T.hair}`, outline: 'none', fontFamily: T.mono,
              }}
            />
            <div onClick={onAdd} style={{
              padding: '0 18px', borderRadius: 12, cursor: 'pointer', display: 'flex', alignItems: 'center',
              background: T.accent, color: T.accentText, fontWeight: 700, fontSize: 14, opacity: busy ? 0.6 : 1,
            }}>{busy ? '...' : '추가'}</div>
          </div>
          <div style={{ fontSize: 12, color: T.textMute, marginTop: 8, lineHeight: 1.5 }}>
            상대가 EngCat 사용자여야 하고, 양쪽이 수락해야 친구가 돼요.
          </div>

          {toast && (
            <div style={{
              marginTop: 12, padding: '10px 14px', borderRadius: 12, fontSize: 13,
              background: toast.kind === 'ok' ? T.accentSoft : 'rgba(220,80,80,0.12)',
              color: toast.kind === 'ok' ? T.accent : '#e57373',
              border: `1px solid ${toast.kind === 'ok' ? T.accent : 'rgba(220,80,80,0.4)'}`,
            }}>{toast.msg}</div>
          )}

          {loading ? (
            <div style={{ textAlign: 'center', color: T.textMute, fontSize: 13, padding: '40px 0' }}>불러오는 중…</div>
          ) : (
            <>
              {incoming.length > 0 && (
                <Section title="받은 요청" count={incoming.length}>
                  {incoming.map((p) => (
                    <PersonRow key={p.email} p={p} right={
                      <div style={{ display: 'flex', gap: 6 }}>
                        <SmallBtn label="수락" kind="primary" onClick={() => onAccept(p.email)} />
                        <SmallBtn label="거절" kind="danger" onClick={() => onRemove(p.email)} />
                      </div>
                    } />
                  ))}
                </Section>
              )}

              <Section title="내 친구" count={friends.length}>
                {friends.length === 0 ? (
                  <div style={{ textAlign: 'center', color: T.textMute, fontSize: 13, padding: '24px 0', lineHeight: 1.6 }}>
                    아직 친구가 없어요.<br/>이메일로 친구를 추가해 보세요!
                  </div>
                ) : friends.map((p) => (
                  <PersonRow key={p.email} p={p} right={
                    <SmallBtn label="삭제" kind="danger" onClick={() => onRemove(p.email)} />
                  } />
                ))}
              </Section>

              {outgoing.length > 0 && (
                <Section title="보낸 요청" count={outgoing.length}>
                  {outgoing.map((p) => (
                    <PersonRow key={p.email} p={p} right={
                      <SmallBtn label="취소" kind="danger" onClick={() => onRemove(p.email)} />
                    } />
                  ))}
                </Section>
              )}
            </>
          )}
        </div>
      </div>
    </div>
  );
}
