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

  // 진입 소스: 홈에서 복습/예습 단어로 들어온 경우 그 목록을 사용
  const cardSource = React.useRef(window.ECCardSource || null);
  React.useEffect(() => { window.ECCardSource = null; }, []);

  const todaySession = React.useMemo(() => window.ECGetTodaySession(), [dataVersion]);
  const reviewWords = (cardSource.current && cardSource.current.words) || null;
  const words = reviewWords && reviewWords.length > 0
    ? reviewWords
    : (todaySession.words.length > 0 ? todaySession.words : ((window.ECData && window.ECData.words) || []));

  const [idx, setIdx] = React.useState(
    (cardSource.current && typeof cardSource.current.startIndex === 'number')
      ? cardSource.current.startIndex
      : session.wordIndex
  );

  // wordIndex가 오늘 단어 범위를 벗어나면 0으로 보정 (홈에서 ECData 인덱스로 진입한 경우 대비)
  React.useEffect(() => {
    if (words.length > 0 && idx >= words.length) {
      setIdx(0);
      session.wordIndex = 0;
    }
  }, [words.length]);

  const [animKey, setAnimKey] = React.useState(0);
  const [bookmarked, setBookmarked] = React.useState(() => new Set(session.bookmarkedIds));
  const [retrying, setRetrying] = React.useState(false);
  const [heroDim, setHeroDim] = React.useState(0);
  const touchStartX = React.useRef(null);
  const touchStartY = React.useRef(null);

  const handleScrollDim = React.useCallback((e) => {
    const st = e.currentTarget.scrollTop;
    const triggerEnd = window.innerHeight * 0.30;
    const opacity = Math.min(st / triggerEnd, 1) * 0.65;
    setHeroDim(opacity);
  }, []);

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
    session.wordIndex = next;
    setIdx(next);
    setAnimKey(k => k + 1);
  };

  const handleTouchStart = (e) => {
    touchStartX.current = e.touches[0].clientX;
    touchStartY.current = e.touches[0].clientY;
  };
  const handleTouchEnd = (e) => {
    if (touchStartX.current === null) return;
    const t = e.changedTouches[0];
    const dx = t.clientX - touchStartX.current;
    const dy = t.clientY - touchStartY.current;
    touchStartX.current = null;
    touchStartY.current = null;
    // Only treat as horizontal swipe if mostly horizontal and beyond threshold
    if (Math.abs(dx) < window.innerWidth * 0.25) return;
    if (Math.abs(dy) > Math.abs(dx)) return;
    if (dx < 0) goTo('next');
    else if (dx > 0 && !isFirst) goTo('prev');
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

  function renderEx(ex) {
    const parts = ex.split(/\{([^}]+)\}/);
    return parts.map((part, i) =>
      i % 2 === 1 ? React.createElement('span', { key: i, style: { color: T.accent } }, part) : part
    );
  }

  const btnLabel = isLast ? '문장 학습하기' : '다음 카드';
  const isDark = T.text === '#F8F5EF';

  const railIcon = isDark ? 'rgba(255,255,255,0.9)' : T.text;
  const railBg   = isDark ? 'rgba(255,255,255,0.10)' : T.bg2;
  const railBd   = isDark ? 'rgba(255,255,255,0.14)' : T.hair;

  return (
    <div
      style={{ flex: 1, minHeight: 0, background: T.bg0, position: 'relative', overflow: 'hidden' }}
      onTouchStart={handleTouchStart}
      onTouchEnd={handleTouchEnd}
    >

      {/* ── Top chrome ── */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10, paddingTop: 'env(safe-area-inset-top, 0px)' }}>
        <ECStatusBar/>
        <div style={{ padding: '6px 18px 0', display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`, backdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            fontFamily: T.mono, fontSize: 10.5, color: T.textDim,
            letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {words.length} · 단어</div>
        </div>
      </div>

      {/* ── Card content layers (no horizontal transform — swipe navigates but doesn't move) ── */}
      <div
        style={{
          position: 'absolute',
          top: 0,
          bottom: 'calc(env(safe-area-inset-bottom, 0px) + 132px)',
          left: 0,
          right: 0,
        }}
      >
        {/* Hero — fixed background at top (z:1). Bottom gradient fades into body bg. */}
        <div style={{
          position: 'absolute', top: 0, left: 0, right: 0, height: '70%',
          zIndex: 1, overflow: 'hidden',
        }}>
          {word.img
            ? <img src={word.img} style={{ width: '100%', height: '100%', objectFit: 'cover', objectPosition: 'center', display: 'block' }} alt={word.en} />
            : <ECPlaceholder height="100%" tint={word.tint} radius={0} label={`hero · ${word.en}`}/>
          }
          <div style={{
            position: 'absolute', inset: 0,
            background: isDark
              ? `linear-gradient(to bottom, rgba(0,0,0,0.45) 0%, transparent 30%, transparent 55%, ${T.bg0} 100%)`
              : `linear-gradient(to bottom, rgba(0,0,0,0.15) 0%, transparent 25%, transparent 55%, ${T.bg0} 100%)`,
          }}/>
          {/* 스크롤 딤 오버레이 — 다크: 어둡게, 라이트: bg0 그라데이션 색으로 밝게 */}
          <div style={{ position: 'absolute', inset: 0, background: isDark ? '#000' : T.bg0, opacity: heroDim, pointerEvents: 'none' }}/>
        </div>

        {/* Text scroll layer (z:5) — flows over the hero as the user scrolls up */}
        <div
          key={animKey}
          className="ec-fade-up"
          style={{
            position: 'absolute', inset: 0,
            overflowY: 'auto',
            WebkitOverflowScrolling: 'touch',
            zIndex: 5,
          }}
          onScroll={handleScrollDim}
        >
          {/* Peek-through spacer matching hero height — text starts just below hero */}
          <div style={{ height: '52%', flexShrink: 0, pointerEvents: 'none' }} />
          <div style={{ padding: '4px 22px 24px' }}>
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
              wordBreak: 'break-word',
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
          {word.def && (
            <div style={{ fontSize: 13, color: T.textDim, lineHeight: 1.5, marginBottom: 22 }}>
              {word.def}
            </div>
          )}

          {/* Examples list */}
          {word.examples && word.examples.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
              <div style={{
                fontFamily: T.mono, fontSize: 9.5, color: T.textMute,
                letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 4,
              }}>예문</div>
              {word.examples.map((ex, i) => (
                <div key={i} style={{
                  padding: '14px 16px', borderRadius: 14,
                  background: isDark ? 'rgba(255,255,255,0.05)' : 'rgba(0,0,0,0.05)',
                  border: `1px solid ${T.hair}`,
                  display: 'flex', alignItems: 'flex-start', gap: 12,
                }}>
                  <div style={{ flex: 1, minWidth: 0 }}>
                    <div style={{
                      fontFamily: T.thin, fontWeight: isDark ? 200 : 300,
                      fontSize: 17, color: T.text, lineHeight: 1.4, letterSpacing: -0.2,
                    }}>
                      {renderEx(ex.en)}
                    </div>
                    {ex.ko && (
                      <div style={{ fontSize: 13, color: T.textDim, marginTop: 4, lineHeight: 1.5 }}>
                        {ex.ko}
                      </div>
                    )}
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
      </div>

      {/* ── 하단 고정 바: 버튼 + 진행바 ── */}
      <div style={{
        position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 12,
        padding: '0 18px',
        paddingBottom: 'calc(env(safe-area-inset-bottom, 0px) + 66px)',
      }}>
        <div style={{ display: 'flex', gap: 8 }}>
          <div
            onClick={() => goTo('next')}
            style={{
              flex: 1, height: 46, borderRadius: 14,
              background: T.accent, color: T.accentText,
              display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
              fontSize: 14, fontWeight: 600, cursor: 'pointer',
            }}
          >
            {btnLabel}
            {ECIcon.chev('right', T.accentText, 14)}
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

    </div>
  );
}

Object.assign(window, { ECScreenWordCard });
