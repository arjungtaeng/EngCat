// EngCat — Home screen (오늘의 학습)
// Premium dark, B1-B2 learner. Polite formal tone.

function ECScreenHome() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);
  const session = window.ECSession || { completedWordIds: new Set(), completedSentenceIds: new Set() };
  const doneWords = session.completedWordIds.size;
  const doneSentences = session.completedSentenceIds.size;

  // 어제 학습 기록
  const yesterday = new Date(); yesterday.setDate(yesterday.getDate() - 1);
  const yKey = 'ec_learned_' + yesterday.toISOString().slice(0, 10);
  const yData = (() => { try { return JSON.parse(localStorage.getItem(yKey) || '{}'); } catch(e) { return {}; } })();
  const yWordIds = new Set(yData.wordIds || []);
  const ySentenceIds = new Set(yData.sentenceIds || []);
  const reviewWords = (window.ECData?.words || []).filter(w => yWordIds.has(w.id));
  const reviewSentences = (window.ECData?.sentences || []).filter(s => ySentenceIds.has(s.id));
  const totalDone = doneWords + doneSentences;
  const totalCards = 15;
  const progressPct = Math.round((totalDone / totalCards) * 100);

  const user = (() => { try { return JSON.parse(localStorage.getItem('engcat_user')); } catch(e) { return null; } })();
  const now = new Date();
  const day = now.getDate();
  const dayNames  = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
  const monthNames = ['January','February','March','April','May','June','July','August','September','October','November','December'];
  const dateStr = `${dayNames[now.getDay()]}, ${monthNames[now.getMonth()]} ${day}`;
  const greetings = [
    'Good to see you,',
    'Welcome back,',
    "Let's learn today,",
    'Ready to level up?',
    'Time to practice,',
    'Keep it going,',
    'Great to have you,',
    "Let's make progress,",
  ];
  const dayOfYear = Math.floor((now - new Date(now.getFullYear(), 0, 0)) / 86400000);
  const greetingWord = greetings[dayOfYear % greetings.length];
  const savedNick = localStorage.getItem('engcat_nickname');
  const rawName = user?.name || '학습자';
  const displayName = savedNick
    ? savedNick
    : rawName.includes(' ')
      ? rawName.split(' ')[0]                                      // 서양식: 첫 토큰 (given name)
      : /^[가-힣]+$/.test(rawName) && rawName.length >= 3
        ? rawName.slice(1)                                         // 한국식: 성(첫 글자) 제외
        : rawName;

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div ref={scrollRef} style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>
      <ECStatusBar />

      {/* Top bar */}
      <div style={{ padding: '6px 22px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div style={{ display: 'flex', alignItems: 'baseline', gap: 6 }}>
          <div style={{ fontFamily: T.serif, fontSize: 22, letterSpacing: -0.4, color: T.text }}>
            EngCat
          </div>
          <div style={{ fontFamily: T.mono, fontSize: 10, letterSpacing: 0.5, color: T.textMute }}>{'v' + (window.EC_VER || 1)}</div>
        </div>
        <div style={{ display: 'flex', gap: 10, alignItems: 'center' }}>
          <div style={{
            display: 'flex', alignItems: 'center', gap: 5,
            padding: '6px 11px', borderRadius: 999,
            background: T.bg2, border: `1px solid ${T.hair}`,
          }}>
            <span style={{ color: T.accent }}>{ECIcon.flame(T.accent, 14)}</span>
            <span style={{ fontSize: 13, fontWeight: 600, color: T.text }}>0</span>
          </div>
          <div onClick={() => window.ECNav?.go('profile')} style={{
            width: 36, height: 36, borderRadius: 999, background: T.bg2,
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            border: `1px solid ${T.hair}`, color: T.textDim, cursor: 'pointer',
          }}>
            {ECIcon.user(T.textDim, 18)}
          </div>
        </div>
      </div>

      {/* Greeting */}
      <div style={{ padding: '24px 22px 18px' }}>
        <div style={{ fontSize: 13, color: T.textDim, marginBottom: 6 }}>
          {dateStr}
        </div>
        <div style={{ fontFamily: T.serif, fontSize: 30, lineHeight: 1.18, color: T.text, letterSpacing: -0.4 }}>
          {greetingWord}<br/>
          <span style={{ fontStyle: 'italic', color: T.accent }}>{displayName}.</span>
        </div>
      </div>

      {/* Today's mission card — hero */}
      <div style={{ padding: '0 18px' }}>
        <div style={{
          borderRadius: 24, padding: 18,
          background: `linear-gradient(155deg, ${T.bg3} 0%, ${T.bg2} 100%)`,
          border: `1px solid ${T.hair}`, position: 'relative', overflow: 'hidden',
        }}>
          <div style={{
            position: 'absolute', top: -40, right: -40, width: 160, height: 160, borderRadius: '50%',
            background: `radial-gradient(circle, ${T.accentSoft} 0%, transparent 70%)`,
          }} />
          <div style={{ fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.accent, textTransform: 'uppercase' }}>
            오늘의 학습
          </div>
          <div style={{ marginTop: 8, fontFamily: T.serif, fontSize: 26, color: T.text, lineHeight: 1.15 }}>
            여행과 일상 표현
          </div>
          <div style={{ marginTop: 6, fontSize: 13.5, color: T.textDim, lineHeight: 1.45 }}>
            공항·호텔·길찾기 상황에서 자연스럽게 쓰는 단어 10개와 문장 5개
          </div>

          {/* progress */}
          <div style={{ marginTop: 18, display: 'flex', alignItems: 'center', gap: 12 }}>
            <div style={{ flex: 1, height: 6, borderRadius: 3, background: T.hair, overflow: 'hidden' }}>
              <div style={{ width: progressPct + '%', height: '100%', background: T.accent, borderRadius: 3, transition: 'width 0.4s ease' }} />
            </div>
            <div style={{ fontSize: 12, color: T.textDim, fontFamily: T.mono }}>{totalDone} / {totalCards}</div>
          </div>

          {/* CTA */}
          <div onClick={() => window.ECNav?.go('word-card')} style={{
            marginTop: 16, height: 50, borderRadius: 14, background: T.accent,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
            color: T.bg0, fontWeight: 600, fontSize: 15, cursor: 'pointer',
          }}>
            {ECIcon.play(T.bg0, 16)}
            <span>{totalDone > 0 ? '이어서 학습하기' : '학습 시작하기'}</span>
          </div>
        </div>
      </div>

      {/* Section: Review */}
      {(reviewWords.length > 0 || reviewSentences.length > 0) && (<>
        <div style={{ padding: '28px 22px 6px', display: 'flex', alignItems: 'baseline', gap: 8 }}>
          <div style={{ fontSize: 17, fontWeight: 600, color: T.text, letterSpacing: -0.2 }}>어제 배운 것 복습</div>
          <div style={{ fontSize: 11, fontFamily: T.mono, color: T.textMute, letterSpacing: 0.5 }}>REVIEW</div>
        </div>

        {reviewWords.length > 0 && (
          <div style={{ padding: '8px 22px 0', display: 'flex', gap: 10, overflowX: 'auto' }}>
            {reviewWords.map((c, i) => (
              <div key={c.id} onClick={() => { const wi = (window.ECData?.words || []).findIndex(w => w.id === c.id); if (wi >= 0) { window.ECSession.wordIndex = wi; window.ECNav?.go('word-card'); }}} style={{ flex: '0 0 110px', cursor: 'pointer' }}>
                {c.img
                  ? <img src={c.img} style={{ width: '100%', height: 120, objectFit: 'cover', objectPosition: 'center', borderRadius: 12 }} alt={c.en} />
                  : <ECPlaceholder height={120} tint={c.tint} radius={12} label={c.en}/>
                }
                <div style={{ marginTop: 6, fontFamily: T.display, fontWeight: 400, fontSize: 15, color: T.text }}>{c.en}</div>
                <div style={{ fontSize: 11, color: T.textDim, marginTop: 1 }}>{c.ko.split(',')[0]}</div>
              </div>
            ))}
          </div>
        )}

        {reviewSentences.length > 0 && (
          <div style={{ padding: '12px 22px 0', display: 'flex', flexDirection: 'column', gap: 8 }}>
            {reviewSentences.map((s, i) => (
              <div key={s.id} onClick={() => { const si = (window.ECData?.sentences || []).findIndex(x => x.id === s.id); if (si >= 0) { window.ECSession.sentenceIndex = si; window.ECNav?.go('sentence-card'); }}} style={{
                padding: '12px 14px', borderRadius: 12,
                background: T.bg2, border: `1px solid ${T.hair}`,
                display: 'flex', alignItems: 'center', gap: 10, cursor: 'pointer',
              }}>
                <div style={{ width: 32, height: 32, borderRadius: 8, background: T.bg3, display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
                  {ECIcon.speaker(T.accent, 15)}
                </div>
                <div style={{ flex: 1, minWidth: 0 }}>
                  <div style={{ fontFamily: T.display, fontWeight: 400, fontSize: 14.5, color: T.text, lineHeight: 1.25 }}>{s.en}</div>
                  <div style={{ fontSize: 11.5, color: T.textDim, marginTop: 1 }}>{s.ko}</div>
                </div>
              </div>
            ))}
          </div>
        )}
        <div style={{ height: 24 }} />
      </>)}

      </div>{/* end scrollable */}
    </div>
  );
}

function ECTabBar({ active = 'home', visible = true }) {
  const T = ECTokens;
  const items = [
    { id: 'home',   label: '홈',      icon: ECIcon.home,  screen: 'home' },
    { id: 'cards',  label: '저장',    icon: ECIcon.cards, screen: 'saved-cards' },
    { id: 'stats',  label: '진도',    icon: ECIcon.chart, screen: 'stats' },
    { id: 'me',     label: '내 정보', icon: ECIcon.user,  screen: 'profile' },
  ];
  return (
    <div id="ec-tabbar" style={{
      position: 'fixed',
      bottom: 0,
      left: 0, right: 0, zIndex: 1050,
      background: T.bg1,
      borderTop: `1px solid ${T.hair}`,
      paddingBottom: 'env(safe-area-inset-bottom, 0px)',
      display: 'flex', flexDirection: 'column',
      opacity: visible ? 1 : 0,
      transform: visible ? 'translateY(0)' : 'translateY(80px)',
      transition: 'opacity 0.25s ease, transform 0.25s ease',
      pointerEvents: visible ? 'auto' : 'none',
    }}>
      <div style={{ paddingTop: 8, display: 'flex', justifyContent: 'space-around', alignItems: 'center' }}>
        {items.map(it => {
          const on = active === it.id;
          const c = on ? T.text : T.textMute;
          return (
            <div key={it.id} onClick={() => window.ECNav?.go(it.screen)} style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 2, flex: 1, cursor: 'pointer' }}>
              <div style={{ color: c }}>{it.icon(c, 20)}</div>
              <div style={{ fontSize: 10, color: c, fontWeight: on ? 600 : 500 }}>{it.label}</div>
            </div>
          );
        })}
      </div>
    </div>
  );
}

Object.assign(window, { ECScreenHome, ECTabBar });
