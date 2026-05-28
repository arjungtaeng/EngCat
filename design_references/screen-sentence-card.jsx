// EngCat — Sentence card (pattern-based)
// 패턴("I'd like ~")과 그 패턴을 활용한 예문 3~4개를 한 카드에 표시.
// Supabase sentences 테이블에 ex1~ex4 컬럼 필요.

function ECScreenSentenceCard() {
  const T = ECTokens;
  const isDark = T.text === '#F8F5EF';
  // 홈에서 넘긴 출처가 있으면 그것을 사용 (review / preview 모드 — 홈 화면과 동일한 카드)
  // 없으면 오늘의 학습 expressions를 사용 (학습 시작하기 흐름)
  const cardSource = React.useRef(window.ECCardSource || null);
  React.useEffect(() => { window.ECCardSource = null; }, []);

  const sentences = React.useMemo(() => {
    const src = cardSource.current;
    if (src && Array.isArray(src.expressions) && src.expressions.length > 0) {
      return src.expressions;
    }
    const ts = window.ECGetTodaySession();
    return ts.expressions.length > 0 ? ts.expressions : ECData.sentences;
  }, []);
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

  // 카드 타입(패턴/콜로/이디엄/뉘앙스)별 정규화 — patterns만 examples 배열을 가짐
  const examples = Array.isArray(s.examples) && s.examples.length > 0
    ? s.examples.map(ex => typeof ex === 'string' ? { en: ex } : ex)
    : [
        s.ex1 && { en: s.ex1, ko: s.ex1Ko },
        s.ex2 && { en: s.ex2, ko: s.ex2Ko },
        s.ex3 && { en: s.ex3, ko: s.ex3Ko },
        s.ex4 && { en: s.ex4, ko: s.ex4Ko },
      ].filter(Boolean);
  const typeLabel = s.type === 'collocation' ? '콜로'
                  : s.type === 'idiom'       ? '이디엄'
                  : s.type === 'nuance'      ? '뉘앙스'
                  : '패턴';

  // review / preview 진입 시 퀴즈 X, 홈으로 복귀. today 흐름만 퀴즈로.
  const sourceMode = cardSource.current && cardSource.current.mode;
  const isReviewOrPreview = sourceMode === 'review' || sourceMode === 'preview';
  const sourceWords = (cardSource.current && cardSource.current.words) || [];
  const hasWordsForBack = sourceWords.length > 0;

  const goTo = (dir) => {
    if (dir === 'next') {
      session.markSentenceDone(s.id);
      if (isLast) {
        session.sentenceIndex = 0;
        window.ECNav?.go(isReviewOrPreview ? 'home' : 'quiz');
        return;
      }
    }
    if (dir === 'prev' && isFirst) {
      // 첫 카드에서 뒤로 — 단어가 있으면 단어 마지막으로 이동
      if (hasWordsForBack) {
        window.ECCardSource = {
          mode: sourceMode || 'review',
          words: sourceWords,
          expressions: sentences,
          startIndex: sourceWords.length - 1,
        };
        window.ECSession.wordIndex = sourceWords.length - 1;
        window.ECNav?.go('word-card');
      }
      return;
    }
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

  const swipingPrev = swipeX > 30 && !isFirst;
  const btnLabel = swipingPrev ? '이전 카드' : isLast ? (isReviewOrPreview ? '학습 마치기' : '퀴즈 시작하기') : '다음 카드';
  const btnBg    = swipingPrev ? (isDark ? 'rgba(255,255,255,0.10)' : T.bg2) : T.accent;
  const btnColor = swipingPrev ? T.text : T.accentText;
  const btnBd    = swipingPrev ? T.hair : 'none';

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

      {/* Full-bleed landscape image — 단어 카드와 동일한 70% 높이 */}
      <div style={{ position: 'absolute', inset: 0, overflow: 'hidden' }}>
        {s.img
          ? <img src={s.img} style={{ width: '100%', height: '70%', objectFit: 'cover', objectPosition: 'center' }} alt={s.en} />
          : <div style={{ width: '100%', height: '70%' }}><ECPlaceholder height="100%" tint={s.tint} radius={0} label={s.en}/></div>
        }
        <div style={{ position: 'absolute', inset: 0, background: overlayGrad }}/>
      </div>

      {/* Top chrome */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10 }}>
        <ECStatusBar/>
        <div style={{ padding: '6px 18px 0', display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`, backdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            fontFamily: T.mono, fontSize: 10.5, color: T.textDim, letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {sentences.length} · {typeLabel}</div>
        </div>
      </div>

      {/* Scrollable content */}
      <div
        key={animKey}
        className="ec-fade-up"
        style={{
          position: 'absolute',
          top: 0,
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
        <div style={{ flex: '0 0 52%', minHeight: 120 }} />

        <div style={{ padding: '0 22px 20px' }}>

          {/* Pattern */}
          <div style={{
            fontFamily: T.thin, fontWeight: isDark ? 500 : 600, fontSize: 40, lineHeight: 1.15, color: T.text,
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
                <span style={{ color: T.text, fontWeight: 600 }}>{typeLabel} 팁 · </span>{s.tip}
              </div>
            </div>
          ) : <div style={{ marginBottom: 20 }}/>}

          {/* Examples (pattern / collocation / idiom / nuance) */}
          {examples.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 8 }}>
              <div style={{
                fontFamily: T.mono, fontSize: 9.5, color: T.textMute,
                letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 4,
              }}>{typeLabel} 예문</div>
              {examples.map((ex, i) => (
                <div key={i} style={{
                  padding: '12px 14px', borderRadius: 12,
                  background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2,
                  border: `1px solid ${T.hair}`,
                  display: 'flex', alignItems: 'center', gap: 12,
                }}>
                  <div style={{ flex: 1 }}>
                    <div style={{ fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 15, color: T.text, lineHeight: 1.35 }}>
                      {ex.en}
                    </div>
                    {ex.ko && (
                      <div style={{ fontSize: 12, color: T.textDim, marginTop: 4, lineHeight: 1.4 }}>
                        {ex.ko}
                      </div>
                    )}
                  </div>
                  <div onClick={() => speak(ex.en)} style={{
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
          <div onClick={() => speak(s.en)} style={{
            width: 46, height: 46, borderRadius: 14, flexShrink: 0,
            background: isDark ? 'rgba(255,255,255,0.10)' : T.bg2,
            border: `1px solid ${T.hair}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
          }}>{ECIcon.speaker(T.text, 18)}</div>
          <div onClick={toggleBookmark} style={{
            width: 46, height: 46, borderRadius: 14, flexShrink: 0,
            background: isBookmarked ? T.accent : (isDark ? 'rgba(255,255,255,0.10)' : T.bg2),
            border: `1px solid ${isBookmarked ? T.accent : T.hair}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
          }}>{ECIcon.heart(isBookmarked ? T.accentText : T.text, 18, isBookmarked)}</div>
        </div>

        {/* Progress strip — current pattern position in feed */}
        <div style={{ marginTop: 12, display: 'flex', gap: 3, alignItems: 'center' }}>
          {sentences.map((_, i) => (
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
