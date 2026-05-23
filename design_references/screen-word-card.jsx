// EngCat — Word Card
// Full-bleed hero. No scroll — swipe left/right to navigate cards.

// Azure key stored in localStorage — set via arschooling.github.io/EngCat/setup.html
const EC_AZURE = {
  key:    localStorage.getItem('ec_azure_key')   || '',
  region: localStorage.getItem('ec_azure_region') || 'koreacentral',
  voice:  localStorage.getItem('ec_azure_voice')  || 'en-US-JennyNeural',
};

function ECScreenWordCard() {
  const T = ECTokens;
  const words = ECData.words;
  const session = ECSession;

  const [idx, setIdx] = React.useState(session.wordIndex);
  const [animKey, setAnimKey] = React.useState(0);
  const [bookmarked, setBookmarked] = React.useState(() => new Set(session.bookmarkedIds));
  const [swipeX, setSwipeX] = React.useState(0);
  const [slideOut, setSlideOut] = React.useState(0);
  const [showExamples, setShowExamples] = React.useState(false);
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
    setBookmarked(next);
  };

  const stripMarkers = (text) => text.replace(/\{([^}]+)\}/g, '$1');

  const speak = async (text) => {
    const plain = stripMarkers(text);
    const xmlEsc = s => s.replace(/[<>&"']/g, c => ({'<':'&lt;','>':'&gt;','&':'&amp;','"':'&quot;',"'":'&apos;'}[c]));
    if (EC_AZURE.key) {
      try {
        const ssml = `<speak version='1.0' xml:lang='en-US'><voice name='${EC_AZURE.voice}'>${xmlEsc(plain)}</voice></speak>`;
        const res = await fetch(`https://${EC_AZURE.region}.tts.speech.microsoft.com/cognitiveservices/v1`, {
          method: 'POST',
          headers: {
            'Ocp-Apim-Subscription-Key': EC_AZURE.key,
            'Content-Type': 'application/ssml+xml',
            'X-Microsoft-OutputFormat': 'audio-16khz-128kbitrate-mono-mp3',
          },
          body: ssml,
        });
        if (!res.ok) throw new Error(`Azure TTS ${res.status}`);
        const blob = await res.blob();
        const url = URL.createObjectURL(blob);
        const audio = new Audio(url);
        audio.onended = () => URL.revokeObjectURL(url);
        audio.play();
        return;
      } catch (_) {}
    }
    window.speechSynthesis.cancel();
    const utt = new SpeechSynthesisUtterance(plain);
    utt.lang = 'en-US';
    utt.rate = 0.85;
    window.speechSynthesis.speak(utt);
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
  const btnBg = swipingPrev ? T.bg3 : T.accent;
  const btnColor = swipingPrev ? T.text : T.bg0;

  const smallBtn = (onClick, icon) => (
    <div onClick={onClick} style={{
      width: 30, height: 30, borderRadius: 999, flexShrink: 0,
      background: 'rgba(255,255,255,0.10)', backdropFilter: 'blur(20px)',
      border: '1px solid rgba(255,255,255,0.14)',
      display: 'flex', alignItems: 'center', justifyContent: 'center',
      cursor: 'pointer',
    }}>{icon}</div>
  );

  const additionalExamples = word.examples || [];

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

      {/* ── Top chrome ── */}
      <div style={{ position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10 }}>
        <ECStatusBar/>
        <div style={{ padding: '6px 18px 0', display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: 'rgba(0,0,0,0.35)', backdropFilter: 'blur(20px)',
            border: '1px solid rgba(255,255,255,0.12)',
            fontFamily: T.mono, fontSize: 10.5, color: 'rgba(255,255,255,0.85)',
            letterSpacing: 1, textTransform: 'uppercase',
          }}>{idx + 1} / {words.length} · 단어</div>
        </div>
      </div>

      {/* ── Content (moves with swipe) ── */}
      <div
        key={animKey}
        className="ec-fade-up"
        style={{
          position: 'absolute',
          top: 0,
          bottom: 'calc(env(safe-area-inset-bottom, 0px) + 82px)',
          left: 0, right: 0,
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

        {/* Word + 듣기 + 저장 */}
        <div style={{ display: 'flex', alignItems: 'center', gap: 10, marginBottom: 4 }}>
          <div style={{
            fontFamily: T.display, fontWeight: 400, fontSize: 52, lineHeight: 1, color: T.text,
            letterSpacing: -1, flex: 1,
          }}>{word.en}</div>
          {smallBtn(() => speak(word.en), ECIcon.speaker('rgba(255,255,255,0.9)', 15))}
          {smallBtn(toggleBookmark, ECIcon.heart(isBookmarked ? T.accent : 'rgba(255,255,255,0.9)', 15, isBookmarked))}
        </div>

        {/* Korean meaning */}
        <div style={{ fontSize: 17, color: T.accent, fontWeight: 500, marginBottom: 10, letterSpacing: -0.2 }}>
          {word.ko}
        </div>

        {/* Definition */}
        <div style={{ fontSize: 13, color: 'rgba(255,255,255,0.78)', lineHeight: 1.5, marginBottom: 10 }}>
          {word.def}
        </div>

        {/* Example sentence + 듣기 + 추가 예문 */}
        <div style={{
          padding: '10px 14px', borderRadius: 12,
          background: 'rgba(255,255,255,0.08)', backdropFilter: 'blur(20px)',
          border: '1px solid rgba(255,255,255,0.10)',
          marginBottom: 12,
        }}>
          <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 4 }}>
            <div style={{
              fontSize: 9.5, fontFamily: T.mono, color: 'rgba(255,255,255,0.5)',
              letterSpacing: 1, textTransform: 'uppercase',
            }}>예문</div>
            <div style={{ display: 'flex', gap: 6 }}>
              {smallBtn(() => speak(word.ex), ECIcon.speaker('rgba(255,255,255,0.8)', 13))}
              {smallBtn(() => setShowExamples(true), ECIcon.notes('rgba(255,255,255,0.8)', 13))}
            </div>
          </div>
          <div style={{ fontFamily: T.thin, fontWeight: 200, fontSize: 14.5, color: T.text, lineHeight: 1.35 }}>
            "{renderEx(word.ex)}"
          </div>
        </div>

        {/* Button */}
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

      {/* ── 추가 예문 바텀 시트 (position: fixed — 탭바 위) ── */}
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
          background: T.bg1,
          borderRadius: '20px 20px 0 0',
          paddingBottom: 'calc(env(safe-area-inset-bottom, 0px) + 64px)',
          maxHeight: '70vh',
          overflowY: 'auto',
          transform: showExamples ? 'translateY(0)' : 'translateY(100%)',
          transition: 'transform 0.3s cubic-bezier(0.4,0,0.2,1)',
        }}
      >
        {/* Handle */}
        <div style={{ display: 'flex', justifyContent: 'center', padding: '12px 0 8px', position: 'sticky', top: 0, background: T.bg1, zIndex: 1 }}>
          <div style={{ width: 36, height: 4, borderRadius: 2, background: 'rgba(255,255,255,0.18)' }}/>
        </div>

        <div style={{ padding: '4px 20px 0' }}>
          <div style={{
            fontFamily: T.mono, fontSize: 9.5, color: T.textMute,
            letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 14,
          }}>추가 예문 · {word.en}</div>

          {additionalExamples.length === 0 ? (
            <div style={{
              padding: '24px 0', textAlign: 'center',
              fontSize: 13, color: T.textDim, lineHeight: 1.6,
            }}>
              추가 예문이 아직 없어요.<br/>
              <span style={{ color: T.textMute, fontSize: 12 }}>Supabase에 example_en_2~4 컬럼을 추가하면 여기 표시돼요.</span>
            </div>
          ) : (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 12, paddingBottom: 8 }}>
              {additionalExamples.map((ex, i) => (
                <div key={i} style={{
                  padding: '14px 16px', borderRadius: 14,
                  background: T.bg2, border: `1px solid ${T.hair}`,
                  display: 'flex', alignItems: 'flex-start', gap: 12,
                }}>
                  <div style={{ flex: 1 }}>
                    <div style={{ fontFamily: T.thin, fontWeight: 200, fontSize: 15, color: T.text, lineHeight: 1.5 }}>
                      "{renderEx(ex)}"
                    </div>
                  </div>
                  <div
                    onClick={() => speak(ex)}
                    style={{
                      width: 34, height: 34, borderRadius: 999, flexShrink: 0,
                      background: T.bg3, border: `1px solid ${T.hair}`,
                      display: 'flex', alignItems: 'center', justifyContent: 'center',
                      cursor: 'pointer', marginTop: 2,
                    }}
                  >{ECIcon.speaker(T.accent, 15)}</div>
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
