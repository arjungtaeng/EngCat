// EngCat — Expression card (패턴 · 콜로 · 이디엄 · 뉘앙스)
// 단일 카드 화면에서 4가지 표현 타입을 모두 처리합니다.
// 진입 소스(window.ECCardSource.expressions)가 있으면 그 리스트를 사용,
// 없으면 사용자 레벨에 맞는 ECData.patterns만 보여줍니다.

const EC_TYPE_LABELS = { pattern: '패턴', collocation: '콜로', idiom: '이디엄', nuance: '뉘앙스' };

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

  // 진입 소스: 홈에서 표현 리스트로 들어온 경우 그 목록을 사용
  const cardSource = React.useRef(window.ECCardSource || null);
  React.useEffect(() => { window.ECCardSource = null; }, []);

  // 데이터 소스: 외부 source가 있으면 그걸, 아니면 사용자 레벨의 패턴들
  const allPatterns = (window.ECData && window.ECData.patterns) || [];
  const externalList = cardSource.current && cardSource.current.expressions;
  const patterns = (externalList && externalList.length > 0)
    ? externalList
    : allPatterns.filter(p => p.level === userLevel);

  const [idx, setIdx] = React.useState(
    (cardSource.current && typeof cardSource.current.startIndex === 'number')
      ? cardSource.current.startIndex
      : (session && session.sentenceIndex) || 0
  );

  // sentenceIndex가 범위를 벗어나면 0으로 보정
  React.useEffect(() => {
    if (patterns.length > 0 && idx >= patterns.length) {
      setIdx(0);
      if (session) session.sentenceIndex = 0;
    }
  }, [patterns.length]);

  const [animKey, setAnimKey] = React.useState(0);
  const [bookmarked, setBookmarked] = React.useState(() => new Set((session && session.bookmarkedIds) || []));
  const [heroDim, setHeroDim] = React.useState(0);
  const touchStartX = React.useRef(null);
  const touchStartY = React.useRef(null);

  const handleScrollDim = React.useCallback((e) => {
    const st = e.currentTarget.scrollTop;
    const triggerEnd = window.innerHeight * 0.30;
    const opacity = Math.min(st / triggerEnd, 1) * 0.65;
    setHeroDim(opacity);
  }, []);

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
    session.sentenceIndex = next;
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
    if (Math.abs(dx) < window.innerWidth * 0.25) return;
    if (Math.abs(dy) > Math.abs(dx)) return;
    if (dx < 0) goTo('next');
    else if (dx > 0 && !isFirst) goTo('prev');
  };

  const toggleBookmark = () => {
    const next = new Set(bookmarked);
    if (next.has(p.id)) { next.delete(p.id); session.bookmarkedIds.delete(p.id); }
    else { next.add(p.id); session.bookmarkedIds.add(p.id); }
    session.saveBookmarks();
    setBookmarked(next);
  };

  const speak = (text) => window.ECSpeak && window.ECSpeak(text);

  // ───── Type-based field derivation ─────────────────────────────────────────
  const type = p.type
    || (p.pattern ? 'pattern'
      : (p.verb || p.noun) ? 'collocation'
      : p.literalKo ? 'idiom'
      : (p.wordA || p.wordB) ? 'nuance'
      : 'pattern');

  const title = type === 'pattern' ? p.pattern
    : type === 'nuance' ? `${p.wordA || ''} vs ${p.wordB || ''}${p.wordC ? ` vs ${p.wordC}` : ''}`
    : (p.en || '');

  const desc = type === 'pattern' ? p.explanation
    : type === 'nuance' ? p.comparison
    : p.ko;

  const literal = type === 'idiom' ? (p.literalKo || '') : '';
  const tip = (type !== 'pattern') ? (p.tip || '') : '';

  const examples = type === 'pattern' ? (p.examples || [])
    : type === 'nuance' ? [
        p.exA ? { en: p.exA, ko: `${p.wordA}${p.koA ? ` · ${p.koA}` : ''}` } : null,
        p.exB ? { en: p.exB, ko: `${p.wordB}${p.koB ? ` · ${p.koB}` : ''}` } : null,
        p.exC ? { en: p.exC, ko: `${p.wordC}${p.koC ? ` · ${p.koC}` : ''}` } : null,
        p.ex4 ? { en: p.ex4, ko: p.ex4Ko || '' } : null,
        p.ex5 ? { en: p.ex5, ko: p.ex5Ko || '' } : null,
      ].filter(Boolean)
    : [
        p.ex1 ? { en: p.ex1, ko: p.ex1Ko || '' } : null,
        p.ex2 ? { en: p.ex2, ko: p.ex2Ko || '' } : null,
        p.ex3 ? { en: p.ex3, ko: p.ex3Ko || '' } : null,
        p.ex4 ? { en: p.ex4, ko: p.ex4Ko || '' } : null,
        p.ex5 ? { en: p.ex5, ko: p.ex5Ko || '' } : null,
      ].filter(Boolean);

  const levelLabel = p.level || p.cefr || '';
  const topicLabel = p.topic || p.topicId || '';
  const typeLabel = EC_TYPE_LABELS[type] || '표현';

  // Resolve hero image — prefer own image, fallback to a word sharing the topic
  const heroImg = React.useMemo(() => {
    if (p.img) return p.img;
    const words = (window.ECData && window.ECData.words) || [];
    const match = words.find(w => w.topicId === topicLabel && w.img);
    return match ? match.img : null;
  }, [p.id, p.img, topicLabel, dataVersion]);
  const heroTint = React.useMemo(() => {
    if (p.tint) return p.tint;
    const words = (window.ECData && window.ECData.words) || [];
    const match = words.find(w => w.topicId === topicLabel);
    return (match && match.tint) || '#1a2a3a';
  }, [p.id, p.tint, topicLabel, dataVersion]);

  const btnLabel = isLast ? '홈으로' : `다음 ${typeLabel}`;

  return (
    <div
      style={{ flex: 1, minHeight: 0, background: T.bg1, position: 'relative', overflow: 'hidden' }}
      onTouchStart={handleTouchStart}
      onTouchEnd={handleTouchEnd}
    >

      {/* Top chrome */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10, paddingTop: 'env(safe-area-inset-top, 0px)' }}>
        <ECStatusBar/>
        <div style={{ padding: '6px 18px 12px', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          <div onClick={() => window.ECNav?.go('home')} style={{
            width: 36, height: 36, borderRadius: 999,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`,
            backdropFilter: 'blur(20px)', WebkitBackdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
          }}>{ECIcon.chev('left', T.text, 18)}</div>
          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: isDark ? 'rgba(0,0,0,0.35)' : `${T.bg2}CC`,
            backdropFilter: 'blur(20px)', WebkitBackdropFilter: 'blur(20px)',
            border: `1px solid ${isDark ? 'rgba(255,255,255,0.12)' : T.hair}`,
            fontFamily: T.mono, fontSize: 10.5, color: T.textDim, letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {patterns.length} · {typeLabel}</div>
          <div style={{ width: 36 }}/>
        </div>
      </div>

      {/* Card content layers (no horizontal transform — swipe navigates but doesn't move) */}
      <div
        style={{
          position: 'absolute',
          top: 0,
          bottom: 'calc(env(safe-area-inset-bottom, 0px) + 132px)',
          left: 0, right: 0,
        }}
      >
        {/* Hero — fixed background at top (z:1). Bottom gradient fades into body bg. */}
        <div style={{
          position: 'absolute', top: 0, left: 0, right: 0, height: '70%',
          zIndex: 1, overflow: 'hidden',
        }}>
          {heroImg
            ? <img src={heroImg} style={{ width: '100%', height: '100%', objectFit: 'cover', objectPosition: 'center', display: 'block' }} alt={title} />
            : <ECPlaceholder height="100%" tint={heroTint} radius={0} label={`hero · ${topicLabel}`}/>
          }
          <div style={{
            position: 'absolute', inset: 0,
            background: isDark
              ? `linear-gradient(to bottom, rgba(0,0,0,0.45) 0%, transparent 30%, transparent 55%, ${T.bg1} 100%)`
              : `linear-gradient(to bottom, rgba(0,0,0,0.15) 0%, transparent 25%, transparent 55%, ${T.bg1} 100%)`,
          }}/>
          {/* 스크롤 딤 오버레이 — 다크: 어둡게, 라이트: bg1 그라데이션 색으로 밝게 */}
          <div style={{ position: 'absolute', inset: 0, background: isDark ? '#000' : T.bg1, opacity: heroDim, pointerEvents: 'none' }}/>
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


          {/* Type + Level + Topic chips */}
          <div style={{ display: 'flex', gap: 8, marginBottom: 18, flexWrap: 'wrap' }}>
            <div style={{
              display: 'inline-flex', alignItems: 'center', gap: 6,
              padding: '5px 10px', borderRadius: 6,
              background: T.accentSoft, color: T.accent,
              fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase', fontWeight: 600,
            }}>
              {typeLabel}
            </div>
            {levelLabel && (
              <div style={{
                display: 'inline-flex', alignItems: 'center',
                padding: '5px 10px', borderRadius: 6,
                background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2, color: T.textDim,
                fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase', fontWeight: 600,
              }}>
                {levelLabel}
              </div>
            )}
            {topicLabel && (
              <div style={{
                display: 'inline-flex', alignItems: 'center',
                padding: '5px 10px', borderRadius: 6,
                background: isDark ? 'rgba(255,255,255,0.08)' : T.bg2, color: T.textDim,
                fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase',
              }}>
                {topicLabel}
              </div>
            )}
          </div>

          {/* Title — pattern/en/comparison head (단어 카드와 같은 T.thin 폰트) */}
          <div style={{
            fontFamily: T.thin, fontWeight: isDark ? 200 : 300, fontSize: 38, lineHeight: 1.15,
            color: T.text, letterSpacing: -0.5, marginBottom: 14, wordBreak: 'break-word',
          }}>
            {title}
          </div>

          {/* Korean explanation */}
          {desc && (
            <div style={{
              fontSize: 14.5, color: T.textDim, lineHeight: 1.55, marginBottom: literal || tip ? 14 : 28, letterSpacing: -0.1,
            }}>
              {desc}
            </div>
          )}

          {/* Literal (idiom only) */}
          {literal && (
            <div style={{
              fontFamily: T.mono, fontSize: 12, color: T.textMute, lineHeight: 1.5,
              padding: '10px 14px', borderRadius: 10,
              background: isDark ? 'rgba(255,255,255,0.04)' : T.bg2,
              border: `1px dashed ${T.hair}`,
              marginBottom: tip ? 14 : 28,
            }}>
              <span style={{ color: T.accent, letterSpacing: 1.2, textTransform: 'uppercase', fontWeight: 600, fontSize: 9.5 }}>직역 </span>
              <span style={{ marginLeft: 6 }}>{literal}</span>
            </div>
          )}

          {/* Tip (collocation / idiom / nuance) */}
          {tip && (
            <div style={{
              fontSize: 13, color: T.text, lineHeight: 1.5,
              padding: '12px 14px', borderRadius: 12,
              background: T.accentSoft,
              border: `1px solid ${T.accent}22`,
              marginBottom: 28,
            }}>
              <div style={{ fontFamily: T.mono, fontSize: 9.5, color: T.accent, letterSpacing: 1.2, textTransform: 'uppercase', fontWeight: 600, marginBottom: 4 }}>Tip</div>
              {tip}
            </div>
          )}

          {/* Examples section */}
          {examples && examples.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
              <div style={{
                fontFamily: T.mono, fontSize: 9.5, color: T.textMute,
                letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 4,
              }}>예문</div>
              {examples.map((ex, i) => (
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
          <div onClick={() => goTo('next')} style={{
            flex: 1, height: 46, borderRadius: 14,
            background: T.accent,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
            color: T.accentText, fontSize: 14, fontWeight: 600, cursor: 'pointer',
          }}>
            <span>{btnLabel}</span>
            {!isLast && ECIcon.chev('right', T.accentText, 14)}
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
