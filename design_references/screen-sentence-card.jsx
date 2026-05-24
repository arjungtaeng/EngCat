// EngCat — Sentence card (word-card style full-bleed)

function ECScreenSentenceCard() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  const sentences = ECData.sentences;
  const session = ECSession;

  const [idx, setIdx] = React.useState(session.sentenceIndex);
  const [animKey, setAnimKey] = React.useState(0);
  const [bookmarked, setBookmarked] = React.useState(() => new Set(session.bookmarkedIds));

  const s = sentences[idx];
  const isLast = idx === sentences.length - 1;
  const isFirst = idx === 0;
  const isBookmarked = bookmarked.has(s.id);

  const goNext = () => {
    session.markSentenceDone(s.id);
    if (isLast) {
      session.sentenceIndex = 0;
      window.ECNav?.go('quiz');
    } else {
      const next = idx + 1;
      session.sentenceIndex = next;
      setIdx(next);
      setAnimKey(k => k + 1);
    }
  };

  const goPrev = () => {
    if (isFirst) return;
    const prev = idx - 1;
    session.sentenceIndex = prev;
    setIdx(prev);
    setAnimKey(k => k + 1);
  };

  const toggleBookmark = () => {
    const next = new Set(bookmarked);
    if (next.has(s.id)) { next.delete(s.id); session.bookmarkedIds.delete(s.id); }
    else { next.add(s.id); session.bookmarkedIds.add(s.id); }
    session.saveBookmarks();
    setBookmarked(next);
  };

  const speak = () => window.ECSpeak(s.en);

  function renderSentence(en, highlight) {
    if (!highlight) return en;
    const parts = en.split(highlight);
    if (parts.length < 2) return en;
    return [
      parts[0],
      React.createElement('span', { key: 'h', style: { color: T.accent } }, highlight),
      parts.slice(1).join(highlight),
    ];
  }

  const overlayGrad = isDark
    ? 'linear-gradient(to bottom, rgba(0,0,0,0.25) 0%, transparent 18%, transparent 34%, rgba(0,0,0,0.82) 56%, rgba(0,0,0,0.97) 70%, #000 82%)'
    : `linear-gradient(to bottom, rgba(0,0,0,0.15) 0%, transparent 15%, transparent 32%, ${T.bg1}CC 52%, ${T.bg1}F5 66%, ${T.bg1} 78%)`;

  const railIcon = isDark ? 'rgba(255,255,255,0.9)' : T.text;
  const railBg   = isDark ? 'rgba(255,255,255,0.10)' : T.bg2;
  const railBd   = isDark ? 'rgba(255,255,255,0.14)' : T.hair;
  const railLbl  = isDark ? 'rgba(255,255,255,0.75)' : T.textDim;

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg0, position: 'relative', overflow: 'hidden' }}>

      {/* Full-bleed landscape image */}
      <div style={{ position: 'absolute', inset: 0, overflow: 'hidden' }}>
        {s.img
          ? <img src={s.img} style={{ width: '100%', height: '56%', objectFit: 'cover', objectPosition: 'center' }} alt={s.en} />
          : <div style={{ width: '100%', height: '56%' }}><ECPlaceholder height="100%" tint={s.tint} radius={0} label={s.sit}/></div>
        }
        <div style={{ position: 'absolute', inset: 0, background: overlayGrad }}/>
      </div>

      {/* Top chrome */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10 }}>
        <div style={{ padding: '6px 18px 0', paddingTop: 'calc(env(safe-area-inset-top, 0px) + 6px)', display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`, backdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            fontFamily: T.mono, fontSize: 10.5, color: T.textDim, letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {sentences.length} · 문장</div>
        </div>
      </div>

      {/* Right action rail */}
      <div style={{
        position: 'absolute', right: 14, top: '45%', zIndex: 10,
        display: 'flex', flexDirection: 'column', gap: 18, alignItems: 'center',
      }}>
        {[
          { icon: ECIcon.speaker(railIcon, 22), label: '듣기', onClick: speak },
          { icon: ECIcon.heart(isBookmarked ? T.accent : railIcon, 22, isBookmarked), label: '저장', onClick: toggleBookmark },
        ].map((a, i) => (
          <div key={i} style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 4 }}>
            <div onClick={a.onClick} style={{
              width: 48, height: 48, borderRadius: 999,
              background: railBg, backdropFilter: 'blur(20px)',
              border: `1px solid ${railBd}`,
              display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
            }}>{a.icon}</div>
            <div style={{ fontSize: 10, color: railLbl, fontWeight: 500 }}>{a.label}</div>
          </div>
        ))}
      </div>

      {/* Scrollable content */}
      <div
        key={animKey}
        className="ec-fade-up"
        style={{
          position: 'absolute',
          top: 0,
          bottom: 'calc(env(safe-area-inset-bottom, 0px) + 140px)',
          left: 0, right: 68,
          overflowY: 'auto',
          WebkitOverflowScrolling: 'touch',
          zIndex: 5,
          display: 'flex',
          flexDirection: 'column',
        }}
      >
        <div style={{ flex: '0 0 43%', minHeight: 130 }} />

        <div style={{ padding: '0 22px 20px' }}>
          {/* Situation tag */}
          <div style={{ marginBottom: 12 }}>
            <div style={{
              display: 'inline-flex', alignItems: 'center', gap: 6,
              padding: '5px 10px', borderRadius: 6,
              background: T.accentSoft, color: T.accent,
              fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase',
            }}>
              <span style={{ width: 5, height: 5, borderRadius: 3, background: T.accent }}/>
              {s.sit}
            </div>
          </div>

          {/* Sentence */}
          <div style={{
            fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 27, lineHeight: 1.2, color: T.text,
            letterSpacing: -0.3, marginBottom: 10,
          }}>
            "{renderSentence(s.en, s.highlight)}"
          </div>

          {/* Korean translation */}
          <div style={{ fontSize: 15, color: isDark ? 'rgba(248,245,239,0.55)' : T.textDim, lineHeight: 1.45, marginBottom: 16 }}>
            {s.ko}
          </div>

          {/* Tip */}
          <div style={{
            padding: '12px 14px', borderRadius: 12,
            background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2,
            border: `1px solid ${T.hair}`,
            display: 'flex', gap: 10, alignItems: 'flex-start',
          }}>
            <div style={{ color: T.accent, flexShrink: 0, marginTop: 1 }}>{ECIcon.sparkle(T.accent, 14)}</div>
            <div style={{ fontSize: 12.5, color: T.textDim, lineHeight: 1.45 }}>
              <span style={{ color: T.text, fontWeight: 600 }}>표현 팁 · </span>{s.tip}
            </div>
          </div>
        </div>
      </div>

      {/* Bottom area: progress strip + nav buttons */}
      <div style={{
        position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 12,
        paddingBottom: 'calc(env(safe-area-inset-bottom, 0px) + 58px)',
      }}>
        {/* Progress strip */}
        <div style={{ display: 'flex', gap: 3, padding: '0 16px 8px', alignItems: 'center', height: 24 }}>
          {sentences.map((sent, i) => (
            <div key={i} style={{
              flex: 1, height: i === idx ? 4 : 2.5, borderRadius: 2,
              background: session.completedSentenceIds.has(sent.id)
                ? T.accent : i === idx ? T.text : T.hairStr,
              transition: 'all 0.2s ease',
            }}/>
          ))}
        </div>

        {/* Nav buttons */}
        <div style={{ display: 'flex', gap: 10, padding: '0 18px' }}>
          {!isFirst && (
            <div onClick={goPrev} style={{
              height: 46, padding: '0 18px', borderRadius: 14,
              background: isDark ? 'rgba(255,255,255,0.10)' : T.bg2,
              border: `1px solid ${T.hair}`,
              display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 6,
              color: T.text, fontSize: 14, fontWeight: 500, cursor: 'pointer', whiteSpace: 'nowrap',
            }}>
              {ECIcon.chev('left', T.text, 14)}
              <span>이전</span>
            </div>
          )}
          <div onClick={goNext} style={{
            flex: 1, height: 46, borderRadius: 14, background: T.accent,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
            color: T.accentText, fontSize: 14, fontWeight: 600, cursor: 'pointer',
          }}>
            <span>{isLast ? '퀴즈 시작하기' : '다음 문장'}</span>
            {ECIcon.chev('right', T.accentText, 14)}
          </div>
        </div>
      </div>

    </div>
  );
}

Object.assign(window, { ECScreenSentenceCard });
