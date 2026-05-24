// EngCat — Sentence card (patterns, collocations, idioms, nuances)

function ECScreenSentenceCard() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  const expressions = ECData.expressions && ECData.expressions.length ? ECData.expressions : ECData.sentences;
  const session = ECSession;

  const [idx, setIdx] = React.useState(session.sentenceIndex);
  const [animKey, setAnimKey] = React.useState(0);

  const s = expressions[idx];
  const isLast = idx === expressions.length - 1;

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

  function renderHighlight(text, highlight) {
    if (!highlight || !text) return text;
    const parts = text.split(highlight);
    if (parts.length < 2) return text;
    return [
      parts[0],
      React.createElement('span', { key: 'h', style: { color: T.accent } }, highlight),
      parts.slice(1).join(highlight),
    ];
  }

  const TYPE_LABELS = { pattern: '패턴', collocation: '콜로케이션', idiom: '이디엄', nuance: '뉘앙스 비교' };
  const typeLabel = TYPE_LABELS[s.type] || '표현';

  const overlayGrad = isDark
    ? 'linear-gradient(to bottom, rgba(0,0,0,0.25) 0%, transparent 18%, transparent 34%, rgba(0,0,0,0.82) 56%, rgba(0,0,0,0.97) 70%, #000 82%)'
    : `linear-gradient(to bottom, rgba(0,0,0,0.15) 0%, transparent 15%, transparent 32%, ${T.bg1}CC 52%, ${T.bg1}F5 66%, ${T.bg1} 78%)`;

  const tipBox = (label, text) => text ? (
    <div style={{
      padding: '12px 14px', borderRadius: 12,
      background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2,
      border: `1px solid ${T.hair}`,
      display: 'flex', gap: 10, alignItems: 'flex-start', marginTop: 12,
    }}>
      <div style={{ color: T.accent, flexShrink: 0, marginTop: 1 }}>{ECIcon.sparkle(T.accent, 14)}</div>
      <div style={{ fontSize: 12.5, color: T.textDim, lineHeight: 1.45 }}>
        <span style={{ color: T.text, fontWeight: 600 }}>{label} · </span>{text}
      </div>
    </div>
  ) : null;

  const exampleRow = (en, ko) => en ? (
    <div style={{ marginTop: 10, paddingLeft: 12, borderLeft: `2px solid ${T.hairStr}` }}>
      <div style={{ fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 14, color: T.text, lineHeight: 1.4 }}>{en}</div>
      {ko && <div style={{ fontSize: 12, color: T.textDim, marginTop: 2 }}>{ko}</div>}
    </div>
  ) : null;

  const renderContent = () => {
    if (s.type === 'collocation') {
      return (
        <div style={{ padding: '0 22px 20px' }}>
          <div style={{ marginBottom: 12 }}>
            <div style={{
              display: 'inline-flex', alignItems: 'center', gap: 6,
              padding: '5px 10px', borderRadius: 6,
              background: T.accentSoft, color: T.accent,
              fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase',
            }}>
              <span style={{ width: 5, height: 5, borderRadius: 3, background: T.accent }}/>{typeLabel}
            </div>
          </div>
          <div style={{ fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 30, lineHeight: 1.15, color: T.text, letterSpacing: -0.5, marginBottom: 6 }}>
            <span style={{ color: T.accent }}>{s.verb}</span> {s.noun}
          </div>
          <div style={{ fontSize: 15, color: isDark ? 'rgba(248,245,239,0.55)' : T.textDim, marginBottom: 4 }}>{s.ko}</div>
          {s.wrongVerb && (
            <div style={{
              display: 'inline-flex', alignItems: 'center', gap: 6,
              padding: '4px 9px', borderRadius: 6,
              background: T.badSoft, border: `1px solid ${T.bad}`,
              fontSize: 12, color: T.bad, marginBottom: 12,
            }}>
              ✗ <span style={{ textDecoration: 'line-through' }}>{s.wrongVerb} {s.noun}</span>
            </div>
          )}
          {tipBox('표현 팁', s.tip)}
          {exampleRow(s.ex1, s.ex1Ko)}
          {exampleRow(s.ex2, s.ex2Ko)}
        </div>
      );
    }

    if (s.type === 'idiom') {
      return (
        <div style={{ padding: '0 22px 20px' }}>
          <div style={{ marginBottom: 12 }}>
            <div style={{
              display: 'inline-flex', alignItems: 'center', gap: 6,
              padding: '5px 10px', borderRadius: 6,
              background: T.accentSoft, color: T.accent,
              fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase',
            }}>
              <span style={{ width: 5, height: 5, borderRadius: 3, background: T.accent }}/>{typeLabel}
            </div>
          </div>
          <div style={{ fontFamily: T.serif, fontStyle: 'italic', fontSize: 26, lineHeight: 1.2, color: T.text, letterSpacing: -0.3, marginBottom: 6 }}>
            "{s.en}"
          </div>
          <div style={{ fontSize: 15, fontWeight: 600, color: T.text, marginBottom: 2 }}>{s.ko}</div>
          {s.literalKo && <div style={{ fontSize: 12.5, color: T.textDim, marginBottom: 12 }}>직역: "{s.literalKo}"</div>}
          {tipBox('사용 맥락', s.tip)}
          {exampleRow(s.ex1, s.ex1Ko)}
          {exampleRow(s.ex2, s.ex2Ko)}
          {exampleRow(s.ex3, s.ex3Ko)}
        </div>
      );
    }

    if (s.type === 'nuance') {
      return (
        <div style={{ padding: '0 22px 20px' }}>
          <div style={{ marginBottom: 12 }}>
            <div style={{
              display: 'inline-flex', alignItems: 'center', gap: 6,
              padding: '5px 10px', borderRadius: 6,
              background: T.accentSoft, color: T.accent,
              fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase',
            }}>
              <span style={{ width: 5, height: 5, borderRadius: 3, background: T.accent }}/>{typeLabel}
            </div>
          </div>
          <div style={{ display: 'flex', gap: 10, marginBottom: 14 }}>
            {[{ word: s.wordA, ko: s.koA, ex: s.exA }, { word: s.wordB, ko: s.koB, ex: s.exB }, s.wordC ? { word: s.wordC, ko: s.koC, ex: s.exC } : null].filter(Boolean).map((item, i) => (
              <div key={i} style={{
                flex: 1, padding: '12px 12px', borderRadius: 12,
                background: i === 0 ? T.accentSoft : isDark ? 'rgba(255,255,255,0.06)' : T.bg2,
                border: `1px solid ${i === 0 ? T.accent : T.hair}`,
              }}>
                <div style={{ fontFamily: T.serif, fontStyle: 'italic', fontSize: 20, color: i === 0 ? T.accent : T.text, marginBottom: 3 }}>{item.word}</div>
                <div style={{ fontSize: 12, color: T.textDim }}>{item.ko}</div>
                {item.ex && <div style={{ fontSize: 11.5, color: T.textDim, marginTop: 6, lineHeight: 1.35, fontStyle: 'italic' }}>"{item.ex}"</div>}
              </div>
            ))}
          </div>
          <div style={{ fontSize: 13.5, color: T.textDim, lineHeight: 1.5, marginBottom: 4 }}>{s.comparison}</div>
          {tipBox('사용 팁', s.tip)}
        </div>
      );
    }

    // Default: pattern
    return (
      <div style={{ padding: '0 22px 20px' }}>
        <div style={{ marginBottom: 12 }}>
          <div style={{
            display: 'inline-flex', alignItems: 'center', gap: 6,
            padding: '5px 10px', borderRadius: 6,
            background: T.accentSoft, color: T.accent,
            fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase',
          }}>
            <span style={{ width: 5, height: 5, borderRadius: 3, background: T.accent }}/>
            {s.sit || typeLabel}
          </div>
        </div>
        <div style={{ fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 27, lineHeight: 1.2, color: T.text, letterSpacing: -0.3, marginBottom: 10 }}>
          "{renderHighlight(s.en, s.highlight)}"
        </div>
        <div style={{ fontSize: 15, color: isDark ? 'rgba(248,245,239,0.55)' : T.textDim, lineHeight: 1.45, marginBottom: 16 }}>
          {s.ko}
        </div>
        {tipBox('표현 팁', s.tip)}
      </div>
    );
  };

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg0, position: 'relative', overflow: 'hidden' }}>

      {/* Full-bleed landscape image */}
      <div style={{ position: 'absolute', inset: 0, overflow: 'hidden' }}>
        {s.img
          ? <img src={s.img} style={{ width: '100%', height: '56%', objectFit: 'cover', objectPosition: 'center' }} alt={s.en || s.wordA} />
          : <div style={{ width: '100%', height: '56%' }}><ECPlaceholder height="100%" tint={s.tint} radius={0} label={s.sit || s.topicId}/></div>
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
          }}>{idx + 1} / {expressions.length} · {typeLabel}</div>

          <div style={{
            width: 36, height: 36, borderRadius: 12,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`, backdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center',
          }}>{ECIcon.more(T.textDim, 18)}</div>
        </div>
      </div>

      {/* Scrollable content */}
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
        <div style={{ flex: '0 0 43%', minHeight: 130 }} />
        {renderContent()}
      </div>

      {/* Bottom area: progress strip + controls */}
      <div style={{
        position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 12,
        paddingBottom: 'calc(env(safe-area-inset-bottom, 0px) + 8px)',
      }}>
        <div style={{ display: 'flex', gap: 3, padding: '0 16px 8px', alignItems: 'center', height: 24 }}>
          {expressions.map((expr, i) => (
            <div key={i} style={{
              flex: 1, height: i === idx ? 4 : 2.5, borderRadius: 2,
              background: session.completedSentenceIds.has(expr.id)
                ? T.accent : i === idx ? T.text : T.hairStr,
              transition: 'all 0.2s ease',
            }}/>
          ))}
        </div>

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
