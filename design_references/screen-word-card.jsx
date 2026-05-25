// EngCat — Word Card
// Full-bleed hero. No scroll — swipe left/right to navigate cards.

// TTS — 사용자 설정(목소리/속도)만 localStorage에서 읽고, 키는 Edge Function이 보유
const EC_SUPABASE_URL  = 'https://zknqzjrymkswkqotrion.supabase.co';
const EC_SUPABASE_ANON = window.EC_SUPABASE_ANON_KEY || '';

const getTTSSettings = () => ({
  voice: localStorage.getItem('ec_azure_voice') || 'en-US-JennyNeural',
  rate:  'medium',
});

function ECScreenWordCard() {
  const T = ECTokens;
  const session = window.ECSession;
  const [dataVersion, setDataVersion] = React.useState(0);

  React.useEffect(() => {
    window.ECDataLoaded && window.ECDataLoaded.then(() => setDataVersion(v => v + 1));
  }, []);

  const todaySession = React.useMemo(() => window.ECGetTodaySession(), [dataVersion]);
  const words = todaySession.words.length > 0 ? todaySession.words : ((window.ECData && window.ECData.words) || []);

  const [idx, setIdx] = React.useState(session.wordIndex);

  // wordIndex가 오늘 단어 범위를 벗어나면 0으로 보정 (홈에서 ECData 인덱스로 진입한 경우 대비)
  React.useEffect(() => {
    if (words.length > 0 && idx >= words.length) {
      setIdx(0);
      session.wordIndex = 0;
    }
  }, [words.length]);

  const [animKey, setAnimKey] = React.useState(0);
  const [bookmarked, setBookmarked] = React.useState(() => new Set(session.bookmarkedIds));
  const [swipeX, setSwipeX] = React.useState(0);
  const [slideOut, setSlideOut] = React.useState(0);
  const [showExamples, setShowExamples] = React.useState(false);
  const [retrying, setRetrying] = React.useState(false);
  const touchStartX = React.useRef(null);

  const word = words[idx] || null;
  if (!word) {
    const isLoading = dataVersion === 0 || retrying;
    const ec = window.ECData || {};
    const diag = `v${window.EC_VER} · words:${(ec.words||[]).length} sent:${(ec.sentences||[]).length} coll:${(ec.collocations||[]).length} idiom:${(ec.idioms||[]).length} nuance:${(ec.nuances||[]).length}`;
    return (
      <div style={{ flex: 1, display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', background: T.bg0, padding: '0 32px', gap: 16 }}>
        <div style={{ color: T.textDim, fontFamily: T.mono, fontSize: 13, textAlign: 'center' }}>
          {isLoading ? '데이터 불러오는 중...' : '단어를 불러오지 못했어요.'}
        </div>
        {!isLoading && (
          <div style={{ color: T.textMute, fontFamily: T.mono, fontSize: 10, textAlign: 'center', lineHeight: 1.5, wordBreak: 'break-all' }}>
            {diag}
            {window.ECDataError && <><br/>{window.ECDataError}</>}
          </div>
        )}
        {!isLoading && (
          <div onClick={() => {
            setRetrying(true);
            (window.ECReloadData ? window.ECReloadData() : Promise.resolve())
              .then(() => { setRetrying(false); setDataVersion(v => v + 1); });
          }} style={{
            padding: '12px 28px', borderRadius: 12, background: T.accent,
            color: T.accentText, fontFamily: T.mono, fontSize: 12, fontWeight: 600, cursor: 'pointer',
          }}>다시 시도</div>
        )}
      </div>
    );
  }
  const isLast = idx === words.length - 1;
  const isFirst = idx === 0;
  const isBookmarked = bookmarked.has(word.id);

  const goTo = (dir) => {
    if (dir === 'next') {
      session.markWordDone(word.id);
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
      setShowExamples(false);
    }, 240);
  };

  const handleTouchStart = (e) => {
    if (slideOut !== 0 || showExamples) return;
    touchStartX.current = e.touches[0].clientX;
  };
  const handleTouchMove = (e) => {
    if (touchStartX.current === null || slideOut !== 0) return;
    setSwipeX((e.touches[0].clientX - touchStartX.current) * 0.9);
  };
  const handleTouchEnd = () => {
    if (touchStartX.current === null) return;
    const threshold = window.innerWidth * 0.5;
    if (swipeX < -threshold) goTo('next');
    else if (swipeX > threshold && !isFirst) goTo('prev');
    else setSwipeX(0);
    touchStartX.current = null;
  };

  const toggleBookmark = () => {
    const next = new Set(bookmarked);
    if (next.has(word.id)) { next.delete(word.id); session.bookmarkedIds.delete(word.id); }
    else { next.add(word.id); session.bookmarkedIds.add(word.id); }
    session.saveBookmarks();
    setBookmarked(next);
  };

  const stripMarkers = (text) => text.replace(/\{([^}]+)\}/g, '$1');

  const speak = (text) => window.ECSpeak(stripMarkers(text));

  const speakWordAndExample = async () => {
    await speak(word.en);
    await speak(word.ex);
  };

  function renderEx(ex) {
    const parts = ex.split(/\{([^}]+)\}/);
    return parts.map((part, i) =>
      i % 2 === 1 ? React.createElement('span', { key: i, style: { color: T.accent } }, part) : part
    );
  }

  const contentTransform = slideOut !== 0
    ? `translateX(${slideOut}%)`
    : `translateX(${swipeX}px)`;
  const contentTransition = slideOut !== 0
    ? 'transform 0.24s cubic-bezier(0.4,0,0.2,1)'
    : 'none';

  const swipingPrev = swipeX > 30 && !isFirst;
  const btnLabel = swipingPrev ? '이전 카드' : isLast ? '문장 학습하기' : '다음 카드';
  const isDark = T.text === '#F8F5EF';
  const btnBg = swipingPrev ? T.bg3 : T.accent;
  const btnColor = swipingPrev ? T.text : T.accentText;

  const overlayGrad = isDark
    ? 'linear-gradient(to bottom, rgba(0,0,0,0.5) 0%, transparent 28%, rgba(0,0,0,0.5) 65%, rgba(0,0,0,0.95) 88%, #000 100%)'
    : `linear-gradient(to bottom, rgba(0,0,0,0.2) 0%, transparent 20%, transparent 55%, ${T.bg0}CC 75%, ${T.bg0} 90%)`;
  const glassC   = isDark ? 'rgba(255,255,255,' : 'rgba(0,0,0,';
  const railIcon = isDark ? 'rgba(255,255,255,0.9)' : T.text;
  const railBg   = isDark ? 'rgba(255,255,255,0.10)' : T.bg2;
  const railBd   = isDark ? 'rgba(255,255,255,0.14)' : T.hair;
  const railLbl  = isDark ? 'rgba(255,255,255,0.75)' : T.textDim;

  return (
    <div
      style={{ flex: 1, minHeight: 0, background: T.bg0, position: 'relative', overflow: 'hidden' }}
      onTouchStart={handleTouchStart}
      onTouchMove={handleTouchMove}
      onTouchEnd={handleTouchEnd}
    >

      {/* ── Hero image (상단 55%) + gradient ── */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, height: '55%', overflow: 'hidden' }}>
        {word.img
          ? <img src={word.img} style={{ width: '100%', height: '100%', objectFit: 'cover', objectPosition: 'center', display: 'block' }} alt={word.en} />
          : <ECPlaceholder height="100%" tint={word.tint} radius={0} label={`hero · ${word.en}`}/>
        }
        <div style={{ position: 'absolute', inset: 0, background: overlayGrad }}/>
      </div>

      {/* ── Top chrome ── */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10 }}>
        <ECStatusBar/>
        <div style={{ padding: '6px 18px 0', display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`, backdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            fontFamily: T.mono, fontSize: 10.5, color: T.textDim,
            letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {words.length} · 다단어</div>
        </div>
      </div>

      {/* ── Content (moves with swipe) ── */}
      <div
        key={animKey}
        className="ec-fade-up"
        style={{
          position: 'absolute',
          top: 0,
          bottom: 'calc(env(safe-area-inset-bottom, 0px) + 132px)',
          left: 0,
          right: 0,
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
            background: isDark ? 'rgba(255,255,255,0.12)' : T.bg3,
            fontFamily: T.mono, fontSize: 10, color: T.textDim,
            letterSpacing: 0.5, textTransform: 'uppercase',
          }}>{word.pos}</div>
          <div style={{ fontFamily: T.mono, fontSize: 11, color: T.textMute }}>{word.ipa}</div>
        </div>

        {/* Word + speaker */}
        <div style={{ display: 'flex', alignItems: 'flex-end', gap: 8, marginBottom: 4 }}>
          <div style={{
            fontFamily: T.display, fontWeight: 400,
            fontSize: 56, lineHeight: 1, color: T.text,
            letterSpacing: -1,
            whiteSpace: 'nowrap', overflow: 'visible',
          }}>{word.en}</div>
          <div onClick={() => speak(word.en)} style={{
            marginBottom: 5, cursor: 'pointer', flexShrink: 0,
            display: 'flex', alignItems: 'center',
          }}>{ECIcon.speaker(isDark ? 'rgba(255,255,255,0.4)' : 'rgba(0,0,0,0.3)', 19)}</div>
        </div>

        {/* Korean meaning */}
        <div style={{ fontSize: 17, color: T.accent, fontWeight: 500, marginBottom: 10, letterSpacing: -0.2 }}>
          {word.ko}
        </div>

        {/* Definition */}
        <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5, marginBottom: 10 }}>
          {word.def}
        </div>

        {/* Example sentence */}
        <div style={{
          padding: '10px 14px', borderRadius: 12,
          background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2,
          border: `1px solid ${T.hair}`,
          marginBottom: 0, position: 'relative',
        }}>
          <div style={{
            fontSize: 9.5, fontFamily: T.mono, color: T.textMute,
            letterSpacing: 1, marginBottom: 4, textTransform: 'uppercase',
          }}>예문</div>
          <div style={{ fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 14.5, color: T.text, lineHeight: 1.35, paddingRight: 26 }}>
            "{renderEx(word.ex)}"
          </div>
          {word.exKo && (
            <div style={{ fontSize: 12, color: T.textDim, marginTop: 5, lineHeight: 1.4, paddingRight: 26 }}>
              {word.exKo}
            </div>
          )}
          <div onClick={() => speak(word.ex)} style={{
            position: 'absolute', bottom: 8, right: 10,
            cursor: 'pointer', padding: 4,
            display: 'flex', alignItems: 'center', justifyContent: 'center',
          }}>{ECIcon.speaker(isDark ? 'rgba(255,255,255,0.4)' : 'rgba(0,0,0,0.3)', 15)}</div>
        </div>

      </div>

      {/* ── 하단 고정 바: 버튼 + 진행바 ── */}
      <div style={{
        position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 12,
        padding: '0 18px',
        paddingBottom: 'calc(env(safe-area-inset-bottom, 0px) + 66px)',
      }}>
        <div style={{ display: 'flex', gap: 8 }}>
          <div
            onClick={() => goTo(swipingPrev ? 'prev' : 'next')}
            style={{
              flex: 1, height: 46, borderRadius: 14,
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
          <div onClick={toggleBookmark} style={{
            width: 46, height: 46, borderRadius: 14, flexShrink: 0,
            background: isBookmarked ? T.accent : railBg,
            border: `1px solid ${isBookmarked ? T.accent : railBd}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
          }}>{ECIcon.heart(isBookmarked ? T.accentText : railIcon, 18, isBookmarked)}</div>
        </div>
        <div style={{ marginTop: 12, display: 'flex', gap: 3, alignItems: 'center' }}>
          {words.map((_, i) => (
            <div key={i} style={{
              flex: 1, height: 2.5, borderRadius: 2,
              background: i <= idx ? T.accent : (isDark ? 'rgba(255,255,255,0.22)' : T.hairStr),
            }} />
          ))}
        </div>
      </div>

      {/* ── 추가 예문 바텀시트 ── */}
      <div
        onTouchStart={(e) => e.stopPropagation()}
        onClick={() => setShowExamples(false)}
        style={{
          position: 'fixed', inset: 0, zIndex: 2000,
          background: 'rgba(0,0,0,0.55)',
          opacity: showExamples ? 1 : 0,
          pointerEvents: showExamples ? 'auto' : 'none',
          transition: 'opacity 0.25s',
        }}
      />
      <div
        onTouchStart={(e) => e.stopPropagation()}
        style={{
          position: 'fixed', bottom: 0, left: 0, right: 0, zIndex: 2001,
          background: T.bg1, borderRadius: '20px 20px 0 0',
          paddingBottom: 'calc(env(safe-area-inset-bottom, 0px) + 64px)',
          maxHeight: '70vh', overflowY: 'auto',
          transform: showExamples ? 'translateY(0)' : 'translateY(100%)',
          transition: 'transform 0.3s cubic-bezier(0.4,0,0.2,1)',
        }}
      >
        <div style={{ display: 'flex', justifyContent: 'center', padding: '12px 0 8px', position: 'sticky', top: 0, background: T.bg1, zIndex: 1 }}>
          <div style={{ width: 36, height: 4, borderRadius: 2, background: T.hairStr }}/>
        </div>
        <div style={{ padding: '4px 20px 0' }}>
          <div style={{
            fontFamily: T.mono, fontSize: 9.5, color: T.textMute,
            letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 14,
          }}>추가 예문 · {word.en}</div>
          {word.examples.length <= 1 ? (
            <div style={{ padding: '24px 0', textAlign: 'center', fontSize: 13, color: T.textDim, lineHeight: 1.6 }}>
              추가 예문이 아직 없어요.
            </div>
          ) : (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 12, paddingBottom: 8 }}>
              {word.examples.slice(1).map((ex, i) => (
                <div key={i} style={{
                  padding: '14px 16px', borderRadius: 14,
                  background: T.bg2, border: `1px solid ${T.hair}`,
                  position: 'relative',
                }}>
                  <div style={{ fontFamily: T.mono, fontSize: 9.5, color: T.textMute, letterSpacing: 1, marginBottom: 4, textTransform: 'uppercase' }}>예문 {i + 2}</div>
                  <div style={{ fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 15, color: T.text, lineHeight: 1.5, paddingRight: 28 }}>
                    "{renderEx(ex.en)}"
                  </div>
                  {ex.ko && (
                    <div style={{ fontSize: 12, color: T.textDim, marginTop: 5, lineHeight: 1.4, paddingRight: 28 }}>
                      {ex.ko}
                    </div>
                  )}
                  <div onClick={() => speak(ex.en)} style={{
                    position: 'absolute', bottom: 10, right: 12,
                    cursor: 'pointer', padding: 4,
                    display: 'flex', alignItems: 'center', justifyContent: 'center',
                  }}>{ECIcon.speaker(isDark ? 'rgba(255,255,255,0.4)' : 'rgba(0,0,0,0.3)', 15)}</div>
                </div>
              ))}
            </div>
          )}
        </div>
      </div>

    </div>
  );
}

Object.assign(window, { ECScreenWordCard });
