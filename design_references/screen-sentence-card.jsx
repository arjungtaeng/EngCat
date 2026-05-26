// EngCat — Pattern card
// 패턴("I want to ~") + 한글 설명 + 예문 리스트 (영문 + 번역 + 듣기 버튼)
// 데이터 소스: window.ECData.patterns (레벨/토픽별로 분류)

function ECScreenSentenceCard() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  const session = window.ECSession;
  const [dataVersion, setDataVersion] = React.useState(0);

  React.useEffect(() => {
    window.ECDataLoaded && window.ECDataLoaded.then(() => setDataVersion(v => v + 1));
  }, []);

  // 사용자 레벨 가져오기
  const userLevel = (() => {
    try { return JSON.parse(localStorage.getItem('engcat_user'))?.level || 'B1'; }
    catch(e) { return 'B1'; }
  })();

  // 사용자 레벨에 맞는 패턴들만 필터링
  const allPatterns = (window.ECData && window.ECData.patterns) || [];
  const patterns = allPatterns.filter(p => p.level === userLevel);

  const [idx, setIdx] = React.useState((session && session.sentenceIndex) || 0);

  // sentenceIndex가 범위를 벗어나면 0으로 보정
  React.useEffect(() => {
    if (patterns.length > 0 && idx >= patterns.length) {
      setIdx(0);
      if (session) session.sentenceIndex = 0;
    }
  }, [patterns.length]);

  const [animKey, setAnimKey] = React.useState(0);
  const [bookmarked, setBookmarked] = React.useState(() => new Set((session && session.bookmarkedIds) || []));
  const [swipeX, setSwipeX] = React.useState(0);
  const [slideOut, setSlideOut] = React.useState(0);
  const touchStartX = React.useRef(null);
  const touchStartY = React.useRef(null);
  const swipeDir = React.useRef(null);

  const p = patterns[idx] || null;
  if (!p) {
    const isLoading = dataVersion === 0;
    return (
      <div style={{ flex: 1, display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', background: T.bg0, padding: '0 32px', gap: 16 }}>
        <div style={{ color: T.textDim, fontFamily: T.mono, fontSize: 13, textAlign: 'center' }}>
          {isLoading ? '데이터 불러오는 중...' : `${userLevel} 레벨의 패턴이 아직 없어요.`}
        </div>
        <div onClick={() => window.ECNav?.go('home')} style={{
          padding: '12px 28px', borderRadius: 12, background: T.accent,
          color: T.accentText, fontFamily: T.mono, fontSize: 12, fontWeight: 600, cursor: 'pointer',
        }}>홈으로</div>
      </div>
    );
  }

  const isLast = idx === patterns.length - 1;
  const isFirst = idx === 0;
  const isBookmarked = bookmarked.has(p.id);

  const goTo = (dir) => {
    if (dir === 'next') {
      session.markSentenceDone(p.id);
      if (isLast) { session.sentenceIndex = 0; window.ECNav?.go('home'); return; }
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
    if (next.has(p.id)) { next.delete(p.id); session.bookmarkedIds.delete(p.id); }
    else { next.add(p.id); session.bookmarkedIds.add(p.id); }
    session.saveBookmarks();
    setBookmarked(next);
  };

  const speak = (text) => window.ECSpeak && window.ECSpeak(text);

  const swipingPrev = swipeX > 30 && !isFirst;
  const btnLabel = swipingPrev ? '이전 패턴' : isLast ? '홈으로' : '다음 패턴';
  const btnBg    = swipingPrev ? (isDark ? 'rgba(255,255,255,0.10)' : T.bg2) : T.accent;
  const btnColor = swipingPrev ? T.text : T.accentText;
  const btnBd    = swipingPrev ? T.hair : 'none';

  const contentTransform = slideOut !== 0 ? `translateX(${slideOut}%)` : `translateX(${swipeX}px)`;
  const contentTransition = slideOut !== 0 ? 'transform 0.24s cubic-bezier(0.4,0,0.2,1)' : 'none';

  return (
    <div
      style={{ flex: 1, minHeight: 0, background: T.bg1, position: 'relative', overflow: 'hidden' }}
      onTouchStart={handleTouchStart}
      onTouchMove={handleTouchMove}
      onTouchEnd={handleTouchEnd}
    >

      {/* Top chrome */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10 }}>
        <ECStatusBar/>
        <div style={{ padding: '6px 18px 12px', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          <div onClick={() => window.ECNav?.go('home')} style={{
            width: 36, height: 36, borderRadius: 999,
            background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2,
            border: `1px solid ${T.hair}`, display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
          }}>{ECIcon.chev('left', T.text, 18)}</div>
          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2,
            border: `1px solid ${T.hair}`,
            fontFamily: T.mono, fontSize: 10.5, color: T.textDim, letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {patterns.length} · 패턴</div>
          <div style={{ width: 36 }}/>
        </div>
      </div>

      {/* Scrollable content */}
      <div
        key={animKey}
        className="ec-fade-up"
        style={{
          position: 'absolute',
          top: 'calc(env(safe-area-inset-top, 0px) + 70px)',
          bottom: 'calc(env(safe-area-inset-bottom, 0px) + 132px)',
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
        {/* Hero image (단어 카드와 동일 패턴: placeholder) */}
        <ECPlaceholder height={220} tint="#1a2a3a" radius={0} label={`hero · ${p.pattern}`} />

        <div style={{ padding: '20px 22px 20px' }}>

          {/* Level + Topic chips */}
          <div style={{ display: 'flex', gap: 8, marginBottom: 18 }}>
            <div style={{
              display: 'inline-flex', alignItems: 'center', gap: 6,
              padding: '5px 10px', borderRadius: 6,
              background: T.accentSoft, color: T.accent,
              fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase', fontWeight: 600,
            }}>
              {p.level}
            </div>
            <div style={{
              display: 'inline-flex', alignItems: 'center',
              padding: '5px 10px', borderRadius: 6,
              background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2, color: T.textDim,
              fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase',
            }}>
              {p.topic}
            </div>
          </div>

          {/* Pattern title — "I want to ~" (단어 카드 예문과 같은 T.thin 폰트) */}
          <div style={{
            fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 38, lineHeight: 1.15,
            color: T.text, letterSpacing: -0.5, marginBottom: 14, wordBreak: 'break-word',
          }}>
            {p.pattern}
          </div>

          {/* Korean explanation */}
          <div style={{
            fontSize: 14.5, color: T.textDim, lineHeight: 1.55, marginBottom: 28, letterSpacing: -0.1,
          }}>
            {p.explanation}
          </div>

          {/* Examples section */}
          {p.examples && p.examples.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
              <div style={{
                fontFamily: T.mono, fontSize: 9.5, color: T.textMute,
                letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 4,
              }}>예문</div>
              {p.examples.map((ex, i) => (
                <div key={i} style={{
                  padding: '14px 16px', borderRadius: 14,
                  background: isDark ? 'rgba(255,255,255,0.05)' : T.bg2,
                  border: `1px solid ${T.hair}`,
                  display: 'flex', alignItems: 'flex-start', gap: 12,
                }}>
                  <div style={{ flex: 1, minWidth: 0 }}>
                    <div style={{
                      fontFamily: T.thin, fontWeight: isDark ? 200 : 300,
                      fontSize: 17, color: T.text, lineHeight: 1.4, letterSpacing: -0.2,
                    }}>
                      {ex.en}
                    </div>
                    <div style={{ fontSize: 13, color: T.textDim, marginTop: 4, lineHeight: 1.5 }}>
                      {ex.ko}
                    </div>
                  </div>
                  <div onClick={() => speak(ex.en)} style={{
                    width: 36, height: 36, borderRadius: 999, flexShrink: 0, marginTop: 2,
                    background: T.accentSoft,
                    border: `1px solid ${T.accentSoft}`,
                    display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
                  }}>{ECIcon.speaker(T.accent, 15)}</div>
                </div>
              ))}
            </div>
          ) : (
            <div style={{ padding: '20px 0', textAlign: 'center', fontSize: 13, color: T.textMute, lineHeight: 1.6 }}>
              예문이 아직 없어요.
            </div>
          )}
        </div>
      </div>

      {/* Bottom nav */}
      <div style={{
        position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 12,
        padding: '0 18px',
        paddingBottom: 'calc(env(safe-area-inset-bottom, 0px) + 66px)',
        background: `linear-gradient(to top, ${T.bg1} 70%, ${T.bg1}00 100%)`,
        paddingTop: 16,
      }}>
        <div style={{ display: 'flex', gap: 8 }}>
          <div onClick={() => goTo(swipingPrev ? 'prev' : 'next')} style={{
            flex: 1, height: 46, borderRadius: 14,
            background: btnBg, border: `1px solid ${btnBd}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
            color: btnColor, fontSize: 14, fontWeight: 600, cursor: 'pointer',
            transition: 'background 0.15s, color 0.15s',
          }}>
            {swipingPrev && ECIcon.chev('left', btnColor, 14)}
            <span>{btnLabel}</span>
            {!swipingPrev && !isLast && ECIcon.chev('right', btnColor, 14)}
          </div>
          <div onClick={toggleBookmark} style={{
            width: 46, height: 46, borderRadius: 14, flexShrink: 0,
            background: isBookmarked ? T.accent : (isDark ? 'rgba(255,255,255,0.10)' : T.bg2),
            border: `1px solid ${isBookmarked ? T.accent : T.hair}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
          }}>{ECIcon.heart(isBookmarked ? T.accentText : T.text, 18, isBookmarked)}</div>
        </div>

        {/* Progress strip */}
        <div style={{ marginTop: 12, display: 'flex', gap: 3, alignItems: 'center' }}>
          {patterns.map((_, i) => (
            <div key={i} style={{
              flex: 1, height: 2.5, borderRadius: 2,
              background: i <= idx ? T.accent : (isDark ? 'rgba(255,255,255,0.22)' : T.hairStr),
            }} />
          ))}
        </div>
      </div>

    </div>
  );
}

Object.assign(window, { ECScreenSentenceCard });
