// EngCat — Word Card
// Full-bleed hero. No scroll — swipe left/right to navigate cards.

function ECScreenWordCard() {
  const T = ECTokens;
  const words = ECData.words;
  const session = ECSession;

  const [idx, setIdx] = React.useState(session.wordIndex);
  const [animKey, setAnimKey] = React.useState(0);
  const [bookmarked, setBookmarked] = React.useState(() => new Set(session.bookmarkedIds));
  const [swipeX, setSwipeX] = React.useState(0);
  const [slideOut, setSlideOut] = React.useState(0); // % to slide on exit
  const touchStartX = React.useRef(null);

  const word = words[idx];
  const isLast = idx === words.length - 1;
  const isFirst = idx === 0;
  const isBookmarked = bookmarked.has(word.id);

  const goTo = (dir) => {
    if (dir === 'next') {
      session.completedWordIds.add(word.id);
      if (isLast) { session.wordIndex = 0; window.ECNav?.go('sentence-card'); return; }
    }
    if (dir === 'prev' && isFirst) return;

    const next = idx + (dir === 'next' ? 1 : -1);
    setSlideOut(dir === 'next' ? -110 : 110);

    setTimeout(() => {
      session.wordIndex = next;
      setIdx(next);
      setAnimKey(k => k + 1);
      setSlideOut(0);
      setSwipeX(0);
    }, 240);
  };

  const handleTouchStart = (e) => {
    if (slideOut !== 0) return;
    touchStartX.current = e.touches[0].clientX;
  };

  const handleTouchMove = (e) => {
    if (touchStartX.current === null || slideOut !== 0) return;
    setSwipeX((e.touches[0].clientX - touchStartX.current) * 0.9);
  };

  const handleTouchEnd = () => {
    if (touchStartX.current === null) return;
    if (swipeX < -60) goTo('next');
    else if (swipeX > 60 && !isFirst) goTo('prev');
    else setSwipeX(0);
    touchStartX.current = null;
  };

  const toggleBookmark = () => {
    const next = new Set(bookmarked);
    if (next.has(word.id)) { next.delete(word.id); session.bookmarkedIds.delete(word.id); }
    else { next.add(word.id); session.bookmarkedIds.add(word.id); }
    setBookmarked(next);
  };

  function renderEx(ex) {
    const parts = ex.split(/\{([^}]+)\}/);
    return parts.map((part, i) =>
      i % 2 === 1 ? React.createElement('span', { key: i, style: { color: T.accent } }, part) : part
    );
  }

  // Content transform: follows finger while dragging, exits on card change
  const contentTransform = slideOut !== 0
    ? `translateX(${slideOut}%)`
    : `translateX(${swipeX}px)`;
  const contentTransition = slideOut !== 0
    ? 'transform 0.24s cubic-bezier(0.4,0,0.2,1)'
    : 'none';

  // Button adapts to swipe direction
  const swipingPrev = swipeX > 30 && !isFirst;
  const swipingNext = swipeX < -30;
  const btnLabel = swipingPrev ? '이전 카드' : isLast ? '문장 학습하기' : '다음 카드';
  const btnBg = swipingPrev ? T.bg3 : T.accent;
  const btnColor = swipingPrev ? T.text : T.bg0;

  return (
    <div
      style={{ flex: 1, minHeight: 0, background: '#000', position: 'relative', overflow: 'hidden' }}
      onTouchStart={handleTouchStart}
      onTouchMove={handleTouchMove}
      onTouchEnd={handleTouchEnd}
    >

      {/* ── Full-bleed hero + gradient ── */}
      <div style={{ position: 'absolute', inset: 0, overflow: 'hidden' }}>
        {word.img
          ? <img src={word.img} style={{ width: '100%', height: 'auto', display: 'block' }} alt={word.en} />
          : <ECPlaceholder height="100%" tint={word.tint} radius={0} label={`hero · ${word.en}`}/>
        }
        <div style={{
          position: 'absolute', inset: 0,
          background: 'linear-gradient(to bottom, rgba(0,0,0,0.45) 0%, transparent 22%, transparent 40%, rgba(0,0,0,0.88) 58%, rgba(0,0,0,0.98) 72%, #000 85%)',
        }}/>
      </div>

      {/* ── Top chrome (fixed, doesn't swipe) ── */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10 }}>
        <ECStatusBar/>
        <div style={{ padding: '6px 18px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          <div onClick={() => window.ECNav?.go('home')} style={{
            width: 36, height: 36, borderRadius: 12,
            background: 'rgba(0,0,0,0.35)', backdropFilter: 'blur(20px)',
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            border: '1px solid rgba(255,255,255,0.12)', cursor: 'pointer',
          }}>{ECIcon.close('rgba(255,255,255,0.9)', 18)}</div>

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

      {/* ── Right action rail (fixed, doesn't swipe) ── */}
      <div style={{
        position: 'absolute', right: 14, top: '22%', zIndex: 10,
        display: 'flex', flexDirection: 'column', gap: 18, alignItems: 'center',
      }}>
        {[
          { icon: ECIcon.speaker('rgba(255,255,255,0.9)', 22), label: '듣기',  onClick: null },
          { icon: ECIcon.mic('rgba(255,255,255,0.9)', 22),     label: '말하기', onClick: null },
          { icon: ECIcon.heart(isBookmarked ? T.accent : 'rgba(255,255,255,0.9)', 22, isBookmarked), label: '저장', onClick: toggleBookmark },
          { icon: ECIcon.share('rgba(255,255,255,0.9)', 20),   label: '공유',  onClick: null },
        ].map((a, i) => (
          <div key={i} style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 4 }}>
            <div onClick={a.onClick || undefined} style={{
              width: 48, height: 48, borderRadius: 999,
              background: 'rgba(255,255,255,0.10)', backdropFilter: 'blur(20px)',
              border: '1px solid rgba(255,255,255,0.14)',
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              cursor: a.onClick ? 'pointer' : 'default',
            }}>{a.icon}</div>
            <div style={{ fontSize: 10, color: 'rgba(255,255,255,0.75)', fontWeight: 500 }}>{a.label}</div>
          </div>
        ))}
      </div>

      {/* ── Content (moves with swipe) ── */}
      <div
        key={animKey}
        className="ec-fade-up"
        style={{
          position: 'absolute',
          top: 0,
          bottom: 'calc(env(safe-area-inset-bottom, 0px) + 82px)',
          left: 0,
          right: 68,
          display: 'flex',
          flexDirection: 'column',
          justifyContent: 'flex-end',
          padding: '0 22px 20px',
          transform: contentTransform,
          transition: contentTransition,
          zIndex: 5,
        }}
      >
        {/* POS chip + IPA */}
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 8 }}>
          <div style={{
            padding: '3px 9px', borderRadius: 6,
            background: 'rgba(255,255,255,0.12)', backdropFilter: 'blur(20px)',
            fontFamily: T.mono, fontSize: 10, color: 'rgba(255,255,255,0.9)',
            letterSpacing: 0.5, textTransform: 'uppercase',
          }}>{word.pos}</div>
          <div style={{ fontFamily: T.mono, fontSize: 11, color: 'rgba(255,255,255,0.55)' }}>{word.ipa}</div>
        </div>

        {/* Word */}
        <div style={{
          fontFamily: T.display, fontSize: 52, lineHeight: 1, color: T.text,
          fontStyle: 'italic', letterSpacing: -1, marginBottom: 4,
        }}>{word.en}</div>

        {/* Korean meaning */}
        <div style={{ fontSize: 17, color: T.accent, fontWeight: 500, marginBottom: 10, letterSpacing: -0.2 }}>
          {word.ko}
        </div>

        {/* Definition */}
        <div style={{ fontSize: 13, color: 'rgba(255,255,255,0.78)', lineHeight: 1.5, marginBottom: 10 }}>
          {word.def}
        </div>

        {/* Example sentence */}
        <div style={{
          padding: '10px 14px', borderRadius: 12,
          background: 'rgba(255,255,255,0.08)', backdropFilter: 'blur(20px)',
          border: '1px solid rgba(255,255,255,0.10)',
          marginBottom: 12,
        }}>
          <div style={{
            fontSize: 9.5, fontFamily: T.mono, color: 'rgba(255,255,255,0.5)',
            letterSpacing: 1, marginBottom: 4, textTransform: 'uppercase',
          }}>예문</div>
          <div style={{ fontFamily: T.display, fontSize: 14.5, color: T.text, fontStyle: 'italic', lineHeight: 1.35 }}>
            "{renderEx(word.ex)}"
          </div>
        </div>

        {/* Button — label and style change with swipe direction */}
        <div
          onClick={() => goTo(swipingPrev ? 'prev' : 'next')}
          style={{
            height: 46, borderRadius: 14,
            background: btnBg, color: btnColor,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
            fontSize: 14, fontWeight: 600, cursor: 'pointer',
            transition: 'background 0.15s, color 0.15s',
          }}
        >
          {swipingPrev && ECIcon.chev('left', btnColor, 14)}
          {btnLabel}
          {!swipingPrev && ECIcon.chev('right', btnColor, 14)}
        </div>
      </div>

      {/* ── Progress strip ── */}
      <div style={{
        position: 'absolute', bottom: 'calc(env(safe-area-inset-bottom, 0px) + 58px)', left: 0, right: 0, height: 24, zIndex: 12,
        display: 'flex', gap: 3, padding: '0 16px', alignItems: 'center',
      }}>
        {words.map((w, i) => (
          <div key={i} style={{
            flex: 1, height: i === idx ? 4 : 2.5, borderRadius: 2,
            background: session.completedWordIds.has(w.id)
              ? T.accent : i === idx ? T.text : 'rgba(255,255,255,0.22)',
            transition: 'all 0.2s ease',
          }}/>
        ))}
      </div>

    </div>
  );
}

Object.assign(window, { ECScreenWordCard });
