// EngCat — Sentence card

function ECScreenSentenceCard() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  const sentences = ECData.sentences;
  const session = ECSession;

  const [idx, setIdx] = React.useState(session.sentenceIndex);
  const [animKey, setAnimKey] = React.useState(0);
  const scrollRef = React.useRef(null);

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
      if (scrollRef.current) scrollRef.current.scrollTop = 0;
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

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div style={{ flex: 1, position: 'relative', overflow: 'hidden', display: 'flex', flexDirection: 'column' }}>
        <ECStatusBar/>

        {/* Top bar */}
        <div style={{ padding: '4px 18px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexShrink: 0 }}>
          <div
            onClick={() => window.ECNav?.go('home')}
            style={{
              width: 36, height: 36, borderRadius: 12, background: T.bg2,
              border: `1px solid ${T.hair}`,
              display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
            }}
          >{ECIcon.close(T.textDim, 18)}</div>

          <div style={{
            padding: '6px 12px', borderRadius: 999, background: T.bg2,
            border: `1px solid ${T.hair}`,
            fontFamily: T.mono, fontSize: 10.5, color: T.textDim, letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {sentences.length} · 문장</div>

          <div style={{
            width: 36, height: 36, borderRadius: 12, background: T.bg2,
            border: `1px solid ${T.hair}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center',
          }}>{ECIcon.more(T.textDim, 18)}</div>
        </div>

        {/* Scrollable body */}
        <div
          ref={scrollRef}
          key={animKey}
          className="ec-fade-up"
          style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 160 }}
        >
          {/* Situation tag */}
          <div style={{ padding: '20px 22px 0' }}>
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

          {/* Image */}
          <div style={{ padding: '14px 18px 0' }}>
            <div style={{
              borderRadius: 22, overflow: 'hidden',
              background: T.bg2, border: `1px solid ${T.hair}`,
              position: 'relative', aspectRatio: '4 / 3',
            }}>
              {s.img
                ? <img src={s.img} style={{ width: '100%', height: '100%', objectFit: 'cover', objectPosition: 'center' }} alt={s.en} />
                : <ECPlaceholder height="100%" tint={s.tint} radius={0} label={s.sit}/>
              }

              {/* Speech bubble */}
              <div style={{
                position: 'absolute', bottom: 18, left: 18, right: 18,
                background: 'rgba(255,255,255,0.96)', borderRadius: 14,
                padding: '12px 14px', display: 'flex', alignItems: 'center', gap: 10,
                boxShadow: '0 6px 20px rgba(0,0,0,0.3)',
              }}>
                <div style={{
                  width: 28, height: 28, borderRadius: 999, background: T.bg1,
                  display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0,
                }}>{ECIcon.speaker(T.accent, 14)}</div>
                <div style={{ flex: 1, fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 15, color: T.bg0, lineHeight: 1.25 }}>
                  "{renderSentence(s.en, s.highlight)}"
                </div>
              </div>
            </div>
          </div>

          {/* Sentence + translation */}
          <div style={{ padding: '20px 22px 0' }}>
            <div style={{
              fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 26, lineHeight: 1.2, color: T.text,
              letterSpacing: -0.3,
            }}>
              "{renderSentence(s.en, s.highlight)}"
            </div>
            <div style={{ marginTop: 8, fontSize: 14, color: T.textDim, lineHeight: 1.4 }}>
              {s.ko}
            </div>

            {/* Tip */}
            <div style={{
              marginTop: 14, padding: '12px 14px', borderRadius: 12,
              background: T.bg2, border: `1px solid ${T.hair}`,
              display: 'flex', gap: 10, alignItems: 'flex-start',
            }}>
              <div style={{ color: T.accent, flexShrink: 0, marginTop: 1 }}>{ECIcon.sparkle(T.accent, 14)}</div>
              <div style={{ fontSize: 12.5, color: T.textDim, lineHeight: 1.45 }}>
                <span style={{ color: T.text, fontWeight: 600 }}>표현 팁 · </span>{s.tip}
              </div>
            </div>
          </div>
        </div>

        {/* Fixed bottom controls */}
        <div style={{
          position: 'absolute', bottom: 'calc(env(safe-area-inset-bottom, 0px) + 72px)', left: 0, right: 0, padding: '0 18px',
          display: 'flex', gap: 10, zIndex: 10,
        }}>
          <div style={{
            flex: 1, height: 50, borderRadius: 14, background: T.bg2, border: `1px solid ${T.hair}`,
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

        {/* Side progress rail */}
        <div style={{
          position: 'absolute', right: 6, top: '46%', transform: 'translateY(-50%)',
          display: 'flex', flexDirection: 'column', gap: 4, zIndex: 5,
        }}>
          {sentences.map((sent, i) => (
            <div
              key={i}
              style={{
                width: 3,
                height: i === idx ? 24 : 16,
                borderRadius: 2,
                background: session.completedSentenceIds.has(sent.id)
                  ? T.accent
                  : i === idx
                    ? T.text
                    : T.hairStr,
                transition: 'all 0.2s ease',
              }}
            />
          ))}
        </div>

      </div>
    </div>
  );
}

Object.assign(window, { ECScreenSentenceCard });
