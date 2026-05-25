// EngCat — Saved Cards screen

function ECScreenSavedCards() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);
  const session = window.ECSession;

  const [tab, setTab] = React.useState('words');
  const [bookmarked, setBookmarked] = React.useState(() => new Set(session?.bookmarkedIds || []));

  const savedWords = (window.ECData?.words || []).filter(w => bookmarked.has(w.id));
  const allExpressions = [
    ...(window.ECData?.sentences || []),
    ...(window.ECData?.collocations || []),
    ...(window.ECData?.idioms || []),
    ...(window.ECData?.nuances || []),
  ];
  const savedSentences = allExpressions.filter(s => bookmarked.has(s.id));

  const remove = (id) => {
    session?.bookmarkedIds?.delete(id);
    session?.saveBookmarks?.();
    setBookmarked(new Set(session?.bookmarkedIds || []));
  };

  const isEmpty = tab === 'words' ? savedWords.length === 0 : savedSentences.length === 0;

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div ref={scrollRef} style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>
        <ECStatusBar />

        {/* Header */}
        <div style={{ padding: '8px 22px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>저장</div>
          <div style={{ fontSize: 13, color: T.textDim, fontFamily: T.mono }}>
            {savedWords.length + savedSentences.length}개
          </div>
        </div>

        {/* Tabs */}
        <div style={{ padding: '16px 22px 0', display: 'flex', gap: 8 }}>
          {[
            { id: 'words', label: '단어', count: savedWords.length },
            { id: 'expressions', label: '패턴·표현', count: savedSentences.length },
          ].map(t => (
            <div key={t.id} onClick={() => setTab(t.id)} style={{
              padding: '7px 16px', borderRadius: 999, fontSize: 13, fontWeight: 600, cursor: 'pointer',
              background: tab === t.id ? T.accent : T.bg2,
              color: tab === t.id ? T.accentText : T.textMute,
              border: `1px solid ${tab === t.id ? T.accent : T.hair}`,
              transition: 'all 0.15s',
              display: 'flex', alignItems: 'center', gap: 6,
            }}>
              {t.label}
              <span style={{
                fontSize: 11, fontFamily: T.mono,
                color: tab === t.id ? T.accentText : T.textFaint,
              }}>{t.count}</span>
            </div>
          ))}
        </div>

        {/* Empty state */}
        {isEmpty && (
          <div style={{ padding: '60px 32px', textAlign: 'center', display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 16 }}>
            {ECIcon.heart(T.textFaint, 36)}
            <div style={{ fontSize: 15, color: T.textDim, lineHeight: 1.6 }}>
              아직 저장한 {tab === 'words' ? '단어' : '표현'}가 없어요.<br/>
              카드에서 하트를 눌러 저장해 보세요.
            </div>
          </div>
        )}

        {/* Words list */}
        {tab === 'words' && savedWords.length > 0 && (
          <div style={{ padding: '16px 18px 0', display: 'flex', flexDirection: 'column', gap: 10 }}>
            {savedWords.map((w) => (
              <div key={w.id} style={{
                borderRadius: 16, background: T.bg2,
                border: `1px solid ${T.hair}`,
                display: 'flex', alignItems: 'center', gap: 14,
                overflow: 'hidden', position: 'relative',
              }}>
                {/* Image thumbnail */}
                <div style={{ flexShrink: 0, padding: '12px 0 12px 14px' }}>
                  {w.img
                    ? <img src={w.img} style={{ width: 52, height: 52, borderRadius: 10, objectFit: 'cover' }} alt={w.en} />
                    : <ECPlaceholder height={52} tint={w.tint} radius={10} label={w.en} />
                  }
                </div>
                {/* Text content */}
                <div
                  onClick={() => { const i = (window.ECData?.words || []).findIndex(x => x.id === w.id); if (i >= 0) { window.ECSession.wordIndex = i; window.ECNav?.go('word-card'); } }}
                  style={{ flex: 1, minWidth: 0, padding: '14px 0', cursor: 'pointer' }}
                >
                  <div style={{ fontFamily: T.display, fontWeight: 400, fontSize: 19, color: T.text }}>{w.en}</div>
                  {w.ipa && <div style={{ fontSize: 11, color: T.textMute, fontFamily: T.mono, marginTop: 1 }}>{w.ipa}</div>}
                  <div style={{ fontSize: 13, color: T.textDim, marginTop: 3 }}>{w.ko}</div>
                </div>
                {/* Remove button */}
                <div onClick={() => remove(w.id)} style={{ flexShrink: 0, padding: '14px 10px', cursor: 'pointer', color: T.accent }}>
                  {ECIcon.heart(T.accent, 18, true)}
                </div>
                {/* Right accent stripe */}
                <div style={{
                  position: 'absolute', right: 0, top: 0, bottom: 0, width: 4,
                  background: T.accent, borderRadius: '0 16px 16px 0',
                }} />
              </div>
            ))}
          </div>
        )}

        {/* Expressions list */}
        {tab === 'expressions' && savedSentences.length > 0 && (
          <div style={{ padding: '16px 18px 0', display: 'flex', flexDirection: 'column', gap: 10 }}>
            {savedSentences.map((s) => {
              const typeLabels = { pattern: '패턴', collocation: '콜로케이션', idiom: '이디엄', nuance: '뉘앙스' };
              const typeLabel = typeLabels[s.type] || '패턴';
              return (
                <div key={s.id} style={{
                  borderRadius: 16, background: T.bg2,
                  border: `1px solid ${T.hair}`,
                  overflow: 'hidden', position: 'relative',
                }}>
                  <div
                    onClick={() => { const exprs = window.ECData?.expressions || window.ECData?.sentences || []; const i = exprs.findIndex(x => x.id === s.id); if (i >= 0) { window.ECSession.sentenceIndex = i; window.ECNav?.go('sentence-card'); } }}
                    style={{ padding: '14px 14px 14px 16px', cursor: 'pointer', paddingRight: 32 }}
                  >
                    {/* Type badge */}
                    <div style={{ marginBottom: 8 }}>
                      <span style={{
                        display: 'inline-block', padding: '3px 8px', borderRadius: 6,
                        background: T.accentSoft, color: T.accent,
                        fontSize: 10.5, fontFamily: T.mono, letterSpacing: 0.5, fontWeight: 600,
                      }}>{typeLabel}</span>
                    </div>
                    {/* Pattern text */}
                    <div style={{ fontFamily: T.thin, fontWeight: 200, fontSize: 17, color: T.text, lineHeight: 1.35 }}>{s.en}</div>
                    <div style={{ fontSize: 12.5, color: T.textDim, marginTop: 4 }}>{s.ko}</div>
                  </div>
                  {/* Remove button — top right */}
                  <div onClick={() => remove(s.id)} style={{
                    position: 'absolute', top: 12, right: 12,
                    padding: 4, cursor: 'pointer', color: T.accent,
                  }}>
                    {ECIcon.heart(T.accent, 16, true)}
                  </div>
                  {/* Right accent stripe */}
                  <div style={{
                    position: 'absolute', right: 0, top: 0, bottom: 0, width: 4,
                    background: T.accent, borderRadius: '0 16px 16px 0',
                  }} />
                </div>
              );
            })}
          </div>
        )}

        <div style={{ height: 24 }} />
      </div>
    </div>
  );
}

Object.assign(window, { ECScreenSavedCards });
