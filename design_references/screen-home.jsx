// EngCat — Home screen (오늘의 학습)
// Premium dark, B1-B2 learner. Polite formal tone.

const TOPIC_NAMES = {
  greeting: '인사·소개', emotion: '감정 표현', weather: '날씨', shopping: '쇼핑',
  cafe: '카페·식당', transport: '교통', health: '건강', travel: '여행', home: '주거·생활',
  work: '직장·비즈니스', education: '교육', media: '미디어·SNS', environment: '환경',
  economy: '경제', culture: '문화·예술', sports: '스포츠',
  discussion: '의견·토론', presentation: '발표·프레젠테이션', negotiation: '협상',
  humanities: '문학·인문', technology: '과학·기술', news: '시사·뉴스', academic: '학술',
};
const TOPIC_ORDER = ['greeting','emotion','weather','shopping','cafe','transport','health','travel','home','work','education','media','environment','economy','culture','sports','discussion','presentation','negotiation','humanities','technology','news','academic'];
const CEFR_COMPOSITIONS = {
  A1: { '단어': 10, '패턴': 5 },
  A2: { '단어': 10, '패턴': 5 },
  B1: { '단어': 8,  '패턴': 4, '콜로': 3 },
  B2: { '단어': 8,  '패턴': 4, '콜로': 3 },
  C1: { '단어': 6,  '패턴': 3, '콜로': 3, '이디엄': 2, '뉘앙스': 1 },
  C2: { '단어': 6,  '패턴': 3, '콜로': 3, '이디엄': 2, '뉘앙스': 1 },
};

function ECScreenHome() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);
  const [dataVersion, setDataVersion] = React.useState(0);

  React.useEffect(() => {
    if (window.ECDataLoaded) {
      window.ECDataLoaded.then(() => setDataVersion(v => v + 1));
    }
  }, []);

  const session = window.ECSession || { completedWordIds: new Set(), completedSentenceIds: new Set() };
  const doneWords = session.completedWordIds.size;
  const doneSentences = session.completedSentenceIds.size;
  const userLevel = localStorage.getItem('ec_user_level') || 'B1';
  const comp = CEFR_COMPOSITIONS[userLevel] || CEFR_COMPOSITIONS.B1;
  const compEntries = Object.entries(comp).filter(([, v]) => v > 0);

  // 어제 학습 기록
  const yesterday = new Date(); yesterday.setDate(yesterday.getDate() - 1);
  const yKey = 'ec_learned_' + yesterday.toISOString().slice(0, 10);
  const yData = (() => { try { return JSON.parse(localStorage.getItem(yKey) || '{}'); } catch(e) { return {}; } })();
  const yWordIds = new Set(yData.wordIds || []);
  const ySentenceIds = new Set(yData.sentenceIds || []);

  // 토픽 사이클: dayOfYear % 사용 가능한 토픽 수
  const _now = new Date();
  const _dayOfYear = Math.floor((_now - new Date(_now.getFullYear(), 0, 0)) / 86400000);
  const _availableTopics = Array.from(new Set((window.ECData?.words || []).map(w => w.topicId).filter(Boolean)));
  const _ordered = TOPIC_ORDER.filter(t => _availableTopics.includes(t));
  const todayTopic = _ordered.length > 0 ? _ordered[_dayOfYear % _ordered.length] : null;
  const todayTopicLabel = todayTopic ? TOPIC_NAMES[todayTopic] : '오늘의 학습';

  // 어제 학습한 카드 (복습) — 비어 있으면 오늘 토픽에서 무작위로 (예습) fallback
  const _shuffle = (arr) => {
    const seed = _dayOfYear;
    return [...arr]
      .map((x, i) => ({ x, s: ((i * 9301 + seed * 49297) % 233280) / 233280 }))
      .sort((a, b) => a.s - b.s)
      .map(o => o.x);
  };
  const _yWords     = (window.ECData?.words     || []).filter(w => yWordIds.has(w.id));
  const _ySentences = (window.ECData?.sentences || []).filter(s => ySentenceIds.has(s.id));
  const isPreviewWords     = _yWords.length === 0;
  const isPreviewSentences = _ySentences.length === 0;
  const reviewWords = isPreviewWords
    ? _shuffle((window.ECData?.words || []).filter(w => w.topicId === todayTopic)).slice(0, 7)
    : _yWords;
  const reviewSentences = isPreviewSentences
    ? _shuffle((window.ECData?.sentences || []).filter(s => s.topicId === todayTopic)).slice(0, 5)
    : _ySentences;

  const totalDone = doneWords + doneSentences;
  const totalCards = Object.values(comp).reduce((a, b) => a + (b || 0), 0);
  const progressPct = Math.round((totalDone / totalCards) * 100);
  const quizUnlocked = totalDone >= totalCards && totalCards > 0;

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
    : user?.nickname
      ? user.nickname                                              // 저장된 닉네임 우선
      : rawName.includes(' ')
        ? rawName.split(' ')[0]                                    // 서양식: 첫 토큰 (given name)
        : /^[가-힣]+$/.test(rawName) && rawName.length === 3
          ? rawName.slice(1)                                       // 한국식 3글자 이름: 성(첫 글자) 제외
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
            {todayTopicLabel}
          </div>
          <div style={{ marginTop: 6, fontFamily: T.mono, fontSize: 12, color: T.textDim, letterSpacing: 0.3 }}>
            {compEntries.map(([k, v]) => `${k} ${v}`).join(' · ')}
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

      {/* Section: Review Words */}
      {reviewWords.length > 0 && (<>
        <div style={{ padding: '28px 22px 8px', display: 'flex', justifyContent: 'space-between', alignItems: 'baseline' }}>
          <div style={{ fontSize: 17, fontWeight: 600, color: T.text, letterSpacing: -0.2 }}>{isPreviewWords ? '예습 단어' : '복습 단어'}</div>
          <div style={{ fontSize: 12, color: T.textDim }}>{reviewWords.length}개</div>
        </div>
        <div style={{ padding: '0 22px', display: 'flex', gap: 10, overflowX: 'auto' }}>
          {reviewWords.map((c) => (
            <div key={c.id} onClick={() => { const todayWords = (window.ECGetTodaySession?.()?.words) || []; const tIdx = todayWords.findIndex(w => w.id === c.id); window.ECSession.wordIndex = tIdx >= 0 ? tIdx : 0; window.ECNav?.go('word-card'); }} style={{ flex: '0 0 130px', cursor: 'pointer' }}>
              <div style={{ position: 'relative' }}>
                {c.img
                  ? <img src={c.img} style={{ width: '100%', height: 150, objectFit: 'cover', objectPosition: 'center', borderRadius: 14 }} alt={c.en} />
                  : <ECPlaceholder height={150} tint={c.tint} radius={14} label={c.en}/>
                }
              </div>
              <div style={{ marginTop: 8, fontFamily: T.display, fontWeight: 400, fontSize: 17, color: T.text }}>{c.en}</div>
              <div style={{ fontSize: 12, color: T.textDim, marginTop: 1 }}>{c.ko.split(',')[0]}</div>
            </div>
          ))}
        </div>
      </>)}

      {/* Section: Review Sentences */}
      {reviewSentences.length > 0 && (<>
        <div style={{ padding: '28px 22px 10px', display: 'flex', justifyContent: 'space-between', alignItems: 'baseline' }}>
          <div style={{ fontSize: 17, fontWeight: 600, color: T.text, letterSpacing: -0.2 }}>{isPreviewSentences ? '예습 패턴' : '복습 패턴'}</div>
          <div onClick={() => window.ECNav?.go('sentence-card')} style={{ fontSize: 12, color: T.accent, cursor: 'pointer' }}>전체 보기</div>
        </div>
        <div style={{ padding: '0 22px', display: 'flex', flexDirection: 'column', gap: 10 }}>
          {reviewSentences.map((s) => (
            <div key={s.id} onClick={() => { const todayExprs = (window.ECGetTodaySession?.()?.expressions) || []; const tIdx = todayExprs.findIndex(x => x.id === s.id); window.ECSession.sentenceIndex = tIdx >= 0 ? tIdx : 0; window.ECNav?.go('sentence-card'); }} style={{
              padding: '14px 16px', borderRadius: 14,
              background: T.bg2, border: `1px solid ${T.hair}`,
              display: 'flex', alignItems: 'center', gap: 12, cursor: 'pointer',
            }}>
              <div style={{ width: 38, height: 38, borderRadius: 10, background: T.bg3, display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
                {ECIcon.speaker(T.accent, 18)}
              </div>
              <div style={{ flex: 1, minWidth: 0 }}>
                <div style={{ fontFamily: T.display, fontWeight: 400, fontSize: 16, color: T.text, lineHeight: 1.25 }}>{s.en}</div>
                <div style={{ fontSize: 12.5, color: T.textDim, marginTop: 2 }}>{s.ko}</div>
              </div>
            </div>
          ))}
        </div>
      </>)}

      {/* Section: 오늘의 퀴즈 */}
      <div style={{ padding: '28px 22px 24px' }}>
        <div style={{ fontSize: 17, fontWeight: 600, color: T.text, letterSpacing: -0.2, marginBottom: 10 }}>
          오늘의 퀴즈
        </div>
        <div
          onClick={() => quizUnlocked && window.ECNav?.go('quiz')}
          style={{
            padding: '16px',
            borderRadius: 16,
            background: quizUnlocked ? T.accentSoft : T.bg2,
            border: `1px solid ${quizUnlocked ? T.accent : T.hair}`,
            display: 'flex', alignItems: 'center', gap: 12,
            cursor: quizUnlocked ? 'pointer' : 'default',
            opacity: quizUnlocked ? 1 : 0.7,
          }}>
          <div style={{ flex: 1 }}>
            <div style={{ fontSize: 15, fontWeight: 600, color: quizUnlocked ? T.accent : T.textDim, marginBottom: 4 }}>
              {quizUnlocked ? '복습 퀴즈 풀기' : '학습을 완료하면 열려요'}
            </div>
            <div style={{ fontFamily: T.mono, fontSize: 11.5, color: T.textMute }}>
              {quizUnlocked ? '오늘 배운 내용으로 4지선다 10문제' : `${totalDone} / ${totalCards} 완료`}
            </div>
          </div>
          <div style={{ color: quizUnlocked ? T.accent : T.textMute }}>
            {ECIcon.chev('right', quizUnlocked ? T.accent : T.textMute, 20)}
          </div>
        </div>
      </div>

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
