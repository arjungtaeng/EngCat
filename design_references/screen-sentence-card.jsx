// EngCat — Sentence card (pattern-based)
// 패턴("I'd like ~")과 그 패턴을 활용한 예문 3~4개를 한 카드에 표시.
// Supabase sentences 테이블에 ex1~ex4 컬럼 필요.

function ECScreenSentenceCard() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  const sentences = ECData.sentences;
  const session = ECSession;

  const [idx, setIdx] = React.useState(session.sentenceIndex);
  const [animKey, setAnimKey] = React.useState(0);
  const [bookmarked, setBookmarked] = React.useState(() => new Set(session.bookmarkedIds));
  const [swipeX, setSwipeX] = React.useState(0);
  const [slideOut, setSlideOut] = React.useState(0);
  const touchStartX = React.useRef(null);
  const touchStartY = React.useRef(null);
  const swipeDir = React.useRef(null);

  const s = sentences[idx];
  const isLast = idx === sentences.length - 1;
  const isFirst = idx === 0;
  const isBookmarked = bookmarked.has(s.id);

  const goTo = (dir) => {
    if (dir === 'next') {
      session.markSentenceDone(s.id);
      if (isLast) { session.sentenceIndex = 0; window.ECNav?.go('quiz'); return; }
    }
    if (dir === 'prev' && isFirst) return;
    const next = idx + (dir === 'next' ? 1 : -1);
    setSlideOut(dir === 'next' ? -110 : 110);
    setTimeout(() => {
      session.sentenceIndex = next;
      setIdx(next);
      setAnimKey(k => k + 1);
      setSlideOut(0);
      setSwipeX(0);
    }, 240);
  };

  const handleTouchStart = (e) => {
    if (slideOut !== 0) return;
    touchStartX.current = e.touches[0].clientX;
    touchStartY.current = e.touches[0].clientY;
    swipeDir.current = null;
  };

  const handleTouchMove = (e) => {
    if (touchStartX.current === null || slideOut !== 0) return;
    const dx = e.touches[0].clientX - touchStartX.current;
    const dy = e.touches[0].clientY - touchStartY.current;
    if (swipeDir.current === null) {
      if (Math.abs(dx) > Math.abs(dy) + 8) swipeDir.current = 'h';
      else if (Math.abs(dy) > Math.abs(dx) + 8) swipeDir.current = 'v';
    }
    if (swipeDir.current === 'h') setSwipeX(dx * 0.9);
  };

  const handleTouchEnd = () => {
    if (touchStartX.current === null) return;
    const threshold = window.innerWidth * 0.5;
    if (swipeX < -threshold) goTo('next');
    else if (swipeX > threshold && !isFirst) goTo('prev');
    else setSwipeX(0);
    touchStartX.current = null;
    swipeDir.current = null;
  };

  const toggleBookmark = () => {
    const next = new Set(bookmarked);
    if (next.has(s.id)) { next.delete(s.id); session.bookmarkedIds.delete(s.id); }
    else { next.add(s.id); session.bookmarkedIds.add(s.id); }
    session.saveBookmarks();
    setBookmarked(next);
  };

  const speak = (text) => window.ECSpeak(text || s.en);

  const swipeProgress = Math.min(1, Math.abs(swipeX) / (window.innerWidth * 0.4));
  const prevArrowOpacity = (swipeX > 10 && !isFirst) ? 0.35 + swipeProgress * 0.65 : 0.35;
  const nextArrowOpacity = swipeX < -10 ? 0.35 + swipeProgress * 0.65 : 0.35;
  const contentTransform = slideOut !== 0 ? `translateX(${slideOut}%)` : `translateX(${swipeX}px)`;
  const contentTransition = slideOut !== 0 ? 'transform 0.24s cubic-bezier(0.4,0,0.2,1)' : 'none';

  const overlayGrad = isDark
    ? 'linear-gradient(to bottom, rgba(0,0,0,0.25) 0%, transparent 15%, transparent 26%, rgba(0,0,0,0.88) 42%, #000 50%)'
    : `linear-gradient(to bottom, rgba(0,0,0,0.15) 0%, transparent 14%, transparent 26%, ${T.bg1}D0 38%, ${T.bg1} 50%)`;

  return (
    <div
      style={{ flex: 1, minHeight: 0, background: T.bg0, position: 'relative', overflow: 'hidden' }}
      onTouchStart={handleTouchStart}
      onTouchMove={handleTouchMove}
      onTouchEnd={handleTouchEnd}
    >

      {/* Full-bleed landscape image */}
      <div style={{ position: 'absolute', inset: 0, overflow: 'hidden' }}>
        {s.img
          ? <img src={s.img} style={{ width: '100%', height: '50%', objectFit: 'cover', objectPosition: 'center' }} alt={s.en} />
          : <div style={{ width: '100%', height: '50%' }}><ECPlaceholder height="100%" tint={s.tint} radius={0} label={s.sit}/></div>
        }
        <div style={{ position: 'absolute', inset: 0, background: overlayGrad }}/>
      </div>

      {/* Top chrome */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10 }}>
        <ECStatusBar/>
        <div style={{ padding: '6px 18px 0', display: 'flex', justifyContent: 'center', alignItems: 'center', position: 'relative' }}>
          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`, backdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            fontFamily: T.mono, fontSize: 10.5, color: T.textDim, letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {sentences.length} · 패턴</div>
          {/* 듣기 / 저장 아이콘 — 가로 배치 */}
          <div style={{ position: 'absolute', right: 18, display: 'flex', gap: 2, alignItems: 'center' }}>
            <div onClick={() => speak(s.en)} style={{
              width: 38, height: 38, display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
            }}>{ECIcon.speaker('rgba(255,255,255,0.75)', 21)}</div>
            <div onClick={toggleBookmark} style={{
              width: 38, height: 38, display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
            }}>{ECIcon.heart(isBookmarked ? T.accent : 'rgba(255,255,255,0.75)', 21, isBookmarked)}</div>
          </div>
        </div>
      </div>

      {/* < > Navigation arrows — 이미지 중간, 배경 없이 */}
      {!isFirst && (
        <div onClick={() => goTo('prev')} style={{
          position: 'absolute', left: 10, top: '20%', zIndex: 10,
          width: 44, height: 44,
          display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
          opacity: prevArrowOpacity, transition: 'opacity 0.1s',
        }}>{ECIcon.chev('left', '#fff', 28)}</div>
      )}
      <div onClick={() => goTo('next')} style={{
        position: 'absolute', right: 10, top: '20%', zIndex: 10,
        width: 44, height: 44,
        display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
        opacity: nextArrowOpacity, transition: 'opacity 0.1s',
      }}>{ECIcon.chev('right', '#fff', 28)}</div>

      {/* Scrollable content */}
      <div
        key={animKey}
        className="ec-fade-up"
        style={{
          position: 'absolute',
          top: 0,
          bottom: 'calc(env(safe-area-inset-bottom, 0px) + 58px)',
          left: 0, right: 0,
          overflowY: 'auto',
          WebkitOverflowScrolling: 'touch',
          zIndex: 5,
          display: 'flex',
          flexDirection: 'column',
          transform: contentTransform,
          transition: contentTransition,
        }}
      >
        <div style={{ flex: '0 0 40%', minHeight: 120 }} />

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

          {/* Pattern */}
          <div style={{
            fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 36, lineHeight: 1.15, color: T.text,
            letterSpacing: -0.3, marginBottom: 6,
          }}>{s.en}</div>

          {/* Ko explanation */}
          <div style={{ fontSize: 16, color: T.accent, fontWeight: 500, marginBottom: 14, letterSpacing: -0.2 }}>
            {s.ko}
          </div>

          {/* Tip */}
          {s.tip ? (
            <div style={{
              padding: '11px 14px', borderRadius: 12, marginBottom: 20,
              background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2,
              border: `1px solid ${T.hair}`,
              display: 'flex', gap: 10, alignItems: 'flex-start',
            }}>
              <div style={{ color: T.accent, flexShrink: 0, marginTop: 1 }}>{ECIcon.sparkle(T.accent, 14)}</div>
              <div style={{ fontSize: 12.5, color: T.textDim, lineHeight: 1.45 }}>
                <span style={{ color: T.text, fontWeight: 600 }}>패턴 팁 · </span>{s.tip}
              </div>
            </div>
          ) : <div style={{ marginBottom: 20 }}/>}

          {/* Pattern examples */}
          {s.examples.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 8 }}>
              <div style={{
                fontFamily: T.mono, fontSize: 9.5, color: T.textMute,
                letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 4,
              }}>패턴 예문</div>
              {s.examples.map((ex, i) => (
                <div key={i} style={{
                  padding: '12px 14px', borderRadius: 12,
                  background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2,
                  border: `1px solid ${T.hair}`,
                  display: 'flex', alignItems: 'center', gap: 12,
                }}>
                  <div style={{ flex: 1 }}>
                    <div style={{ fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 15, color: T.text, lineHeight: 1.35 }}>
                      {ex}
                    </div>
                  </div>
                  <div onClick={() => speak(ex)} style={{
                    width: 32, height: 32, borderRadius: 999, flexShrink: 0,
                    background: isDark ? 'rgba(255,255,255,0.10)' : T.bg3,
                    border: `1px solid ${T.hair}`,
                    display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
                  }}>{ECIcon.speaker(T.accent, 13)}</div>
                </div>
              ))}
            </div>
          ) : (
            <div style={{ padding: '20px 0', textAlign: 'center', fontSize: 13, color: T.textMute, lineHeight: 1.6 }}>
              패턴 예문이 아직 없어요.<br/>
              <span style={{ fontSize: 11 }}>Supabase sentences 테이블에 ex1~ex4 컬럼을 추가하면 표시돼요.</span>
            </div>
          )}
        </div>
      </div>


    </div>
  );
}

Object.assign(window, { ECScreenSentenceCard });
