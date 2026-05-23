// EngCat — Word Card
// Hero image at top (fixed height) + scrollable content below.
// Navigation via button only — no swipe-to-next.

function ECScreenWordCard() {
  const T = ECTokens;
  const words = ECData.words;
  const session = ECSession;

  const [idx, setIdx] = React.useState(session.wordIndex);
  const [animKey, setAnimKey] = React.useState(0);
  const [bookmarked, setBookmarked] = React.useState(() => new Set(session.bookmarkedIds));
  const scrollRef = React.useRef(null);

  const word = words[idx];
  const isLast = idx === words.length - 1;
  const isBookmarked = bookmarked.has(word.id);

  const goNext = () => {
    session.completedWordIds.add(word.id);
    if (isLast) {
      session.wordIndex = 0;
      window.ECNav?.go('sentence-card');
    } else {
      const next = idx + 1;
      session.wordIndex = next;
      setIdx(next);
      setAnimKey(k => k + 1);
      if (scrollRef.current) scrollRef.current.scrollTop = 0;
    }
  };

  const toggleBookmark = () => {
    const next = new Set(bookmarked);
    if (next.has(word.id)) {
      next.delete(word.id);
      session.bookmarkedIds.delete(word.id);
    } else {
      next.add(word.id);
      session.bookmarkedIds.add(word.id);
    }
    setBookmarked(next);
  };

  function renderEx(ex) {
    const parts = ex.split(/\{([^}]+)\}/);
    return parts.map((part, i) =>
      i % 2 === 1
        ? React.createElement('span', { key: i, style: { color: T.accent } }, part)
        : part
    );
  }

  return (
    <div style={{ flex: 1, minHeight: 0, background: '#000', display: 'flex', flexDirection: 'column' }}>

      {/* ── Hero (fixed height) ── */}
      <div style={{ position: 'relative', height: '42%', flexShrink: 0 }}>
        <ECPlaceholder height="100%" tint={word.tint} radius={0} label={`hero · ${word.en}`}/>
        <div style={{
          position: 'absolute', inset: 0,
          background: 'linear-gradient(to bottom, rgba(0,0,0,0.5) 0%, transparent 35%, rgba(0,0,0,0.55) 100%)',
        }}/>

        {/* Top chrome */}
        <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 5 }}>
          <ECStatusBar/>
          <div style={{ padding: '6px 18px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <div
              onClick={() => window.ECNav?.go('home')}
              style={{
                width: 36, height: 36, borderRadius: 12,
                background: 'rgba(0,0,0,0.35)', backdropFilter: 'blur(20px)',
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                border: '1px solid rgba(255,255,255,0.12)', cursor: 'pointer',
              }}
            >{ECIcon.close('rgba(255,255,255,0.9)', 18)}</div>

            <div style={{
              padding: '7px 14px', borderRadius: 999,
              background: 'rgba(0,0,0,0.35)', backdropFilter: 'blur(20px)',
              border: '1px solid rgba(255,255,255,0.12)',
              fontFamily: T.mono, fontSize: 10.5, color: 'rgba(255,255,255,0.85)',
              letterSpacing: 1, textTransform: 'uppercase',
            }}>{idx + 1} / {words.length} · 단어</div>

            <div style={{
              width: 36, height: 36, borderRadius: 12,
              background: 'rgba(0,0,0,0.35)', backdropFilter: 'blur(20px)',
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              border: '1px solid rgba(255,255,255,0.12)',
            }}>{ECIcon.more('rgba(255,255,255,0.9)', 18)}</div>
          </div>
        </div>

        {/* Right action rail */}
        <div style={{
          position: 'absolute', right: 14, bottom: 16, zIndex: 6,
          display: 'flex', flexDirection: 'column', gap: 14, alignItems: 'center',
        }}>
          {[
            { icon: ECIcon.speaker('rgba(255,255,255,0.9)', 20), label: '듣기',  onClick: null },
            { icon: ECIcon.mic('rgba(255,255,255,0.9)', 20),     label: '말하기', onClick: null },
            {
              icon: ECIcon.heart(isBookmarked ? T.accent : 'rgba(255,255,255,0.9)', 20, isBookmarked),
              label: '저장', onClick: toggleBookmark,
            },
            { icon: ECIcon.share('rgba(255,255,255,0.9)', 18),   label: '공유',  onClick: null },
          ].map((a, i) => (
            <div key={i} style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 3 }}>
              <div
                onClick={a.onClick || undefined}
                style={{
                  width: 42, height: 42, borderRadius: 999,
                  background: 'rgba(255,255,255,0.10)', backdropFilter: 'blur(20px)',
                  border: '1px solid rgba(255,255,255,0.14)',
                  display: 'flex', alignItems: 'center', justifyContent: 'center',
                  cursor: a.onClick ? 'pointer' : 'default',
                }}
              >{a.icon}</div>
              <div style={{ fontSize: 9.5, color: 'rgba(255,255,255,0.7)', fontWeight: 500 }}>{a.label}</div>
            </div>
          ))}
        </div>
      </div>

      {/* ── Scrollable content ── */}
      <div
        ref={scrollRef}
        key={animKey}
        className="ec-fade-up"
        style={{
          flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch',
          background: '#000', padding: '20px 22px 36px',
        }}
      >
        {/* POS + IPA */}
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 12 }}>
          <div style={{
            padding: '3px 9px', borderRadius: 6,
            background: 'rgba(255,255,255,0.12)',
            fontFamily: T.mono, fontSize: 10, color: 'rgba(255,255,255,0.9)',
            letterSpacing: 0.5, textTransform: 'uppercase',
          }}>{word.pos}</div>
          <div style={{ fontFamily: T.mono, fontSize: 11, color: 'rgba(255,255,255,0.5)' }}>{word.ipa}</div>
        </div>

        {/* Word */}
        <div style={{
          fontFamily: T.serif, fontSize: 52, lineHeight: 1, color: T.text,
          fontStyle: 'italic', letterSpacing: -1, marginBottom: 8,
        }}>{word.en}</div>

        {/* Korean meaning */}
        <div style={{ fontSize: 18, color: T.accent, fontWeight: 500, marginBottom: 16, letterSpacing: -0.2 }}>
          {word.ko}
        </div>

        {/* Definition */}
        <div style={{ fontSize: 14, color: 'rgba(255,255,255,0.78)', lineHeight: 1.6, marginBottom: 18 }}>
          {word.def}
        </div>

        {/* Example sentence */}
        <div style={{
          padding: '14px 16px', borderRadius: 14,
          background: 'rgba(255,255,255,0.07)',
          border: '1px solid rgba(255,255,255,0.10)',
          marginBottom: 20,
        }}>
          <div style={{
            fontSize: 9.5, fontFamily: T.mono, color: 'rgba(255,255,255,0.45)',
            letterSpacing: 1, marginBottom: 8, textTransform: 'uppercase',
          }}>예문</div>
          <div style={{ fontFamily: T.serif, fontSize: 16, color: T.text, fontStyle: 'italic', lineHeight: 1.45 }}>
            "{renderEx(word.ex)}"
          </div>
        </div>

        {/* Next button */}
        <div
          onClick={goNext}
          style={{
            height: 50, borderRadius: 14, background: T.accent, color: T.bg0,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
            fontSize: 15, fontWeight: 600, cursor: 'pointer',
          }}
        >
          {isLast ? '문장 학습하기' : '다음 카드'}
          {ECIcon.chev('right', T.bg0, 14)}
        </div>
      </div>

      {/* ── Progress strip ── */}
      <div style={{
        height: 20, flexShrink: 0,
        display: 'flex', gap: 3, padding: '0 16px', alignItems: 'center',
        background: '#000',
      }}>
        {words.map((w, i) => (
          <div
            key={i}
            style={{
              flex: 1, height: i === idx ? 4 : 2.5, borderRadius: 2,
              background: session.completedWordIds.has(w.id)
                ? T.accent
                : i === idx
                  ? T.text
                  : 'rgba(255,255,255,0.22)',
              transition: 'all 0.2s ease',
            }}
          />
        ))}
      </div>

    </div>
  );
}

Object.assign(window, { ECScreenWordCard });
