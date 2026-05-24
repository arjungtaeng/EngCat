// EngCat — Sentence card (word-card style full-bleed)

function ECScreenSentenceCard() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  const sentences = ECData.sentences;
  const session = ECSession;

  const [idx, setIdx] = React.useState(session.sentenceIndex);
  const [animKey, setAnimKey] = React.useState(0);

  const s = sentences[idx];
  const isLast = idx === sentences.length - 1;

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
        <ECStatusBar/>
        <div style={{ padding: '6px 18px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          <div
            onClick={() => window.ECNav?.go('home')}
            style={{
              width: 36, height: 36, borderRadius: 12,
              background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`, backdropFilter: 'blur(20px)',
              border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
              display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
            }}
          >{ECIcon.close(T.textDim, 18)}</div>

          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`, backdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            fontFamily: T.mono, fontSize: 10.5, color: T.textDim, letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {sentences.length} · 문장</div>

          <div style={{
            width: 36, height: 36, borderRadius: 12,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`, backdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center',
          }}>{ECIcon.more(T.textDim, 18)}</div>
        </div>
      </div>

      {/* Scrollable content — starts at ~43% to sit higher than word card */}
      <div
        key={animKey}
        className="ec-fade-up"
        style={{
          position: 'absolute',
          top: 0,
          bottom: 'calc(env(safe-area-inset-bottom, 0px) + 90px)',
          left: 0, right: 0,
          overflowY: 'auto',
          WebkitOverflowScrolling: 'touch',
          zIndex: 5,
          display: 'flex',
          flexDirection: 'column',
        }}
      >
        {/* Spacer — reveals landscape image area */}
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

      {/* Bottom area: progress strip + controls */}
      <div style={{
        position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 12,
        paddingBottom: 'calc(env(safe-area-inset-bottom, 0px) + 8px)',
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

        {/* Buttons */}
        <div style={{ display: 'flex', gap: 10, padding: '0 18px' }}>
          <div style={{
            flex: 1, height: 50, borderRadius: 14,
            background: isDark ? 'rgba(255,255,255,0.10)' : T.bg2,
            border: `1px solid ${T.hair}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
            color: T.text, fontSize: 14, fontWeight: 500,
          }}>
            {ECIcon.mic(T.text, 16)}
            <span>따라 말하기</span>
          </div>
          <div
            onClick={goNext}
            style={{
              height: 50, padding: '0 22px', borderRadius: 14, background: T.accent,
              display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
              color: T.accentText, fontSize: 14, fontWeight: 600, cursor: 'pointer', whiteSpace: 'nowrap',
            }}
          >
            {isLast ? '퀴즈 시작하기' : '다음'}
            {ECIcon.chev('right', T.accentText, 16)}
          </div>
        </div>
      </div>

    </div>
  );
}

Object.assign(window, { ECScreenSentenceCard });
