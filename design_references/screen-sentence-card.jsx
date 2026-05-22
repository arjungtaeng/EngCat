// EngCat — Sentence card with situational mini-animation
// 5-card study deck. Storyboard beats are tappable. Swipe or button to advance.

function ECScreenSentenceCard() {
  const T = ECTokens;
  const sentences = ECData.sentences;
  const session = ECSession;

  const [idx, setIdx] = React.useState(session.sentenceIndex);
  const [dir, setDir] = React.useState('up');
  const [animKey, setAnimKey] = React.useState(0);
  const [activeBeat, setActiveBeat] = React.useState(0);

  const s = sentences[idx];
  const isLast = idx === sentences.length - 1;

  // Reset beat when sentence changes
  React.useEffect(() => { setActiveBeat(0); }, [idx]);

  // Touch / swipe gesture
  const touchRef = React.useRef({ startY: null });
  const onTouchStart = (e) => { touchRef.current.startY = e.touches[0].clientY; };
  const onTouchEnd = (e) => {
    if (touchRef.current.startY === null) return;
    const delta = touchRef.current.startY - e.changedTouches[0].clientY;
    touchRef.current.startY = null;
    if (Math.abs(delta) > 50) delta > 0 ? goNext() : goPrev();
  };

  const goNext = () => {
    session.completedSentenceIds.add(s.id);
    if (isLast) {
      session.sentenceIndex = 0;
      window.ECNav?.go('quiz');
    } else {
      const next = idx + 1;
      session.sentenceIndex = next;
      setDir('up');
      setIdx(next);
      setAnimKey(k => k + 1);
    }
  };

  const goPrev = () => {
    if (idx === 0) return;
    const prev = idx - 1;
    session.sentenceIndex = prev;
    setDir('down');
    setIdx(prev);
    setAnimKey(k => k + 1);
  };

  // Keyboard navigation
  React.useEffect(() => {
    const handler = (e) => {
      if (e.key === 'ArrowUp'   || e.key === 'ArrowRight') goNext();
      if (e.key === 'ArrowDown' || e.key === 'ArrowLeft')  goPrev();
    };
    window.addEventListener('keydown', handler);
    return () => window.removeEventListener('keydown', handler);
  });

  // Render sentence with highlighted phrase
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

  const animClass = dir === 'up' ? 'ec-fade-up' : 'ec-fade-down';
  const currentBeat = s.beats[activeBeat];

  return (
    <div
      style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}
      onTouchStart={onTouchStart}
      onTouchEnd={onTouchEnd}
    >
      <div style={{ flex: 1, position: 'relative', overflow: 'hidden' }}>
        <ECStatusBar/>

        {/* Top bar */}
        <div style={{ padding: '4px 18px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
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
        <div style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>

          {/* Situation tag */}
          <div style={{ padding: '16px 22px 0' }}>
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

          {/* Animation viewport — current beat scene */}
          <div key={animKey} className={animClass} style={{ padding: '14px 18px 0' }}>
            <div style={{
              borderRadius: 22, overflow: 'hidden',
              background: T.bg2, border: `1px solid ${T.hair}`,
              position: 'relative', aspectRatio: '4 / 3',
            }}>
              {/* Scene placeholder */}
              <ECPlaceholder height="100%" tint={currentBeat.tint} radius={0} label={currentBeat.label}/>

              {/* Scene label + play button */}
              <div style={{
                position: 'absolute', top: 14, left: 14, right: 14,
                display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start',
              }}>
                <div style={{
                  padding: '5px 10px', borderRadius: 6,
                  background: 'rgba(0,0,0,0.5)', backdropFilter: 'blur(20px)',
                  fontFamily: T.mono, fontSize: 9.5, color: 'rgba(255,255,255,0.85)', letterSpacing: 0.8,
                }}>SCENE {String(activeBeat + 1).padStart(2,'0')} / {s.beats.length.toString().padStart(2,'0')}</div>

                <div
                  onClick={() => setActiveBeat((activeBeat + 1) % s.beats.length)}
                  style={{
                    width: 38, height: 38, borderRadius: 999,
                    background: 'rgba(0,0,0,0.5)', backdropFilter: 'blur(20px)',
                    display: 'flex', alignItems: 'center', justifyContent: 'center',
                    border: '1px solid rgba(255,255,255,0.18)', cursor: 'pointer',
                  }}
                >{ECIcon.play(T.text, 14)}</div>
              </div>

              {/* Speech bubble */}
              <div style={{
                position: 'absolute', bottom: 18, left: 18, right: 18,
                background: 'rgba(255,255,255,0.96)', borderRadius: 14,
                padding: '12px 14px', display: 'flex', alignItems: 'center', gap: 10,
                boxShadow: '0 6px 20px rgba(0,0,0,0.3)',
              }}>
                <div style={{
                  width: 28, height: 28, borderRadius: 999, background: T.bg1, color: T.accent,
                  display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0,
                }}>{ECIcon.speaker(T.accent, 14)}</div>
                <div style={{
                  flex: 1, fontFamily: T.serif, fontSize: 15, fontStyle: 'italic', color: T.bg0, lineHeight: 1.25,
                }}>
                  "{renderSentence(s.en, s.highlight)}"
                </div>
              </div>
            </div>

            {/* Storyboard beat selector */}
            <div style={{ display: 'flex', gap: 6, marginTop: 12, padding: '0 4px' }}>
              {s.beats.map((b, i) => (
                <div
                  key={i}
                  onClick={() => setActiveBeat(i)}
                  style={{ flex: 1, cursor: 'pointer' }}
                >
                  <div style={{
                    height: 28, borderRadius: 6, overflow: 'hidden', position: 'relative',
                    opacity: i === activeBeat ? 1 : 0.45,
                    border: i === activeBeat ? `1.5px solid ${T.accent}` : `1px solid ${T.hair}`,
                    transition: 'opacity 0.2s ease, border-color 0.2s ease',
                  }}>
                    <ECPlaceholder height="100%" tint={b.tint} radius={0}/>
                  </div>
                  <div style={{
                    fontFamily: T.mono, fontSize: 8.5, color: i === activeBeat ? T.accent : T.textMute,
                    marginTop: 4, letterSpacing: 0.5, transition: 'color 0.2s ease',
                  }}>{b.time}</div>
                </div>
              ))}
            </div>
          </div>

          {/* Sentence text + translation */}
          <div key={`text-${animKey}`} className={animClass} style={{ padding: '20px 22px 0' }}>
            <div style={{
              fontFamily: T.serif, fontSize: 24, lineHeight: 1.25, color: T.text,
              fontStyle: 'italic', letterSpacing: -0.3,
            }}>
              "{renderSentence(s.en, s.highlight)}"
            </div>
            <div style={{ marginTop: 8, fontSize: 14, color: T.textDim, lineHeight: 1.4 }}>
              {s.ko}
            </div>

            {/* Expression tip */}
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

        </div>{/* end scrollable */}

        {/* Bottom controls — fixed inside the screen */}
        <div style={{
          position: 'absolute', bottom: 28, left: 0, right: 0, padding: '0 18px',
          display: 'flex', gap: 10, zIndex: 10,
        }}>
          <div style={{
            flex: 1, height: 50, borderRadius: 14, background: T.bg2, border: `1px solid ${T.hair}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
            color: T.text, fontSize: 14, fontWeight: 500, cursor: 'default',
          }}>
            {ECIcon.mic(T.text, 16)}
            <span>따라 말하기</span>
          </div>
          <div
            onClick={goNext}
            style={{
              height: 50, padding: '0 22px', borderRadius: 14, background: T.accent,
              display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
              color: T.bg0, fontSize: 14, fontWeight: 600, cursor: 'pointer', whiteSpace: 'nowrap',
            }}
          >
            {isLast ? '퀴즈 시작하기' : '다음'}
            {ECIcon.chev('right', T.bg0, 16)}
          </div>
        </div>

        {/* Side progress rail */}
        <div style={{
          position: 'absolute', right: 6, top: '45%', transform: 'translateY(-50%)',
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
