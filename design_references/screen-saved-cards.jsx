// EngCat — Saved Cards screen

function ECScreenSavedCards() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);
  const session = window.ECSession;

  const [tab, setTab] = React.useState('words');
  const [bookmarked, setBookmarked] = React.useState(() => new Set(session.bookmarkedIds));

  // 최근 저장 순서대로 정렬 (Set은 삽입 순서 보존 → 역순 = 최신이 위)
  const bookmarkedOrder = [...bookmarked].reverse();
  const wordById = new Map((window.ECData?.words || []).map(w => [w.id, w]));
  const sentenceById = new Map((window.ECData?.sentences || []).map(s => [s.id, s]));
  const savedWords = bookmarkedOrder.map(id => wordById.get(id)).filter(Boolean);
  const savedSentences = bookmarkedOrder.map(id => sentenceById.get(id)).filter(Boolean);

  const removeWord = (id) => {
    session.bookmarkedIds.delete(id);
    session.saveBookmarks();
    setBookmarked(new Set(session.bookmarkedIds));
  };

  const isEmpty = tab === 'words' ? savedWords.length === 0 : savedSentences.length === 0;

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div ref={scrollRef} style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>
        <ECStatusBar />

        {/* Header */}
        <div style={{ padding: '8px 22px 0' }}>
          <div style={{ fontFamily: T.serif, fontSize: 26, color: T.text, letterSpacing: -0.3 }}>저장한 카드</div>
        </div>

        {/* Tab */}
        <div style={{ padding: '16px 22px 0', display: 'flex', gap: 8 }}>
          {[{ id: 'words', label: `단어 ${savedWords.length}` }, { id: 'sentences', label: `문장 ${savedSentences.length}` }].map(t => (
            <div key={t.id} onClick={() => setTab(t.id)} style={{
              padding: '7px 16px', borderRadius: 999, fontSize: 13, fontWeight: 600, cursor: 'pointer',
              background: tab === t.id ? T.accent : T.bg2,
              color: tab === t.id ? T.accentText : T.textMute,
              border: `1px solid ${tab === t.id ? T.accent : T.hair}`,
              transition: 'all 0.15s',
            }}>{t.label}</div>
          ))}
        </div>

        {/* Empty state */}
        {isEmpty && (
          <div style={{ padding: '60px 32px', textAlign: 'center' }}>
            <div style={{ fontSize: 40, marginBottom: 12 }}>
              {ECIcon.heart(T.textFaint, 40)}
            </div>
            <div style={{ fontSize: 15, color: T.textDim, lineHeight: 1.6 }}>
              아직 저장한 {tab === 'words' ? '단어' : '문장'}가 없어요.<br/>
              카드에서 하트를 눌러 저장해 보세요.
            </div>
          </div>
        )}

        {/* Words list */}
        {tab === 'words' && savedWords.length > 0 && (
          <div style={{ padding: '16px 18px 0', display: 'flex', flexDirection: 'column', gap: 10 }}>
            {savedWords.map((w) => (
              <div key={w.id} style={{
                padding: '10px 10px', borderRadius: 16,
                background: T.bg2, border: `1px solid ${T.hair}`,
                display: 'flex', alignItems: 'center', gap: 14,
              }}>
                <div
                  onClick={() => {
                    const i = Math.max(0, savedWords.findIndex(x => x.id === w.id));
                    // 저장 목록을 그대로 카드 소스로 전달 → 탭한 카드가 정확히 열림 (저장 카드끼리 스와이프)
                    window.ECCardSource = { mode: 'review', words: savedWords, expressions: [], startIndex: i };
                    window.ECSession.wordIndex = i;
                    window.ECNav?.go('word-card');
                  }}
                  style={{ flex: 1, minWidth: 0, cursor: 'pointer', display: 'flex', alignItems: 'center', gap: 14 }}
                >
                  {/* 프로필 아바타처럼 왼쪽 원형 썸네일 */}
                  {w.img
                    ? <img src={w.img} alt={w.en} style={{ width: 85, height: 65, borderRadius: 12, objectFit: 'cover', flexShrink: 0, border: `1px solid ${T.hairStr}` }} />
                    : <ECPlaceholder height={65} tint={w.tint} radius={12} style={{ width: 85, flexShrink: 0 }} />
                  }
                  <div style={{ flex: 1, minWidth: 0 }}>
                    <div style={{ fontFamily: T.display, fontWeight: 400, fontSize: 19, color: T.text }}>{w.en}</div>
                    {w.ipa && <div style={{ fontSize: 11.5, color: T.textMute, fontFamily: T.mono, marginTop: 1 }}>{w.ipa}</div>}
                    <div style={{ fontSize: 13, color: T.textDim, marginTop: 3 }}>{w.ko}</div>
                  </div>
                </div>
                <div
                  onClick={() => removeWord(w.id)}
                  style={{ flexShrink: 0, padding: 6, cursor: 'pointer', color: T.accent }}
                >
                  {ECIcon.heart(T.accent, 20, true)}
                </div>
              </div>
            ))}
          </div>
        )}

        {/* Sentences list */}
        {tab === 'sentences' && savedSentences.length > 0 && (
          <div style={{ padding: '16px 18px 0', display: 'flex', flexDirection: 'column', gap: 10 }}>
            {savedSentences.map((s) => (
              <div
                key={s.id}
                onClick={() => {
                  const i = Math.max(0, savedSentences.findIndex(x => x.id === s.id));
                  // 저장 문장 목록을 카드 소스로 전달 → 탭한 카드가 정확히 열림
                  window.ECCardSource = { mode: 'review', words: [], expressions: savedSentences, startIndex: i };
                  window.ECSession.sentenceIndex = i;
                  window.ECNav?.go('sentence-card');
                }}
                style={{
                  padding: '10px 10px', borderRadius: 16,
                  background: T.bg2, border: `1px solid ${T.hair}`,
                  cursor: 'pointer',
                  display: 'flex', alignItems: 'center', gap: 14,
                }}
              >
                {/* 프로필 아바타처럼 왼쪽 원형 썸네일 */}
                {s.img
                  ? <img src={s.img} alt={s.en} style={{ width: 85, height: 65, borderRadius: 12, objectFit: 'cover', flexShrink: 0, border: `1px solid ${T.hairStr}` }} />
                  : <ECPlaceholder height={65} tint={s.tint} radius={12} style={{ width: 85, flexShrink: 0 }} />
                }
                <div style={{ flex: 1, minWidth: 0 }}>
                  <div style={{ fontFamily: T.display, fontWeight: 400, fontSize: 16, color: T.text, lineHeight: 1.35 }}>{s.en}</div>
                  <div style={{ fontSize: 12.5, color: T.textDim, marginTop: 4 }}>{s.ko}</div>
                </div>
              </div>
            ))}
          </div>
        )}

        <div style={{ height: 24 }} />
      </div>
    </div>
  );
}

Object.assign(window, { ECScreenSavedCards });
