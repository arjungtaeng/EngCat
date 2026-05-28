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
const COMP_LABELS = { words: '단어', patterns: '패턴', collocations: '콜로', idioms: '이디엄', nuances: '뉘앙스' };
const EXPR_TYPE_LABELS = { pattern: '패턴', collocation: '콜로', idiom: '이디엄', nuance: '뉘앙스' };

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
  const COMPS = window.EC_CEFR_COMPOSITIONS || { B1: { words: 10, patterns: 4, collocations: 3, idioms: 0, nuances: 0 } };
  const comp = COMPS[userLevel] || COMPS.B1;
  const compEntries = Object.entries(comp).filter(([, v]) => v > 0);

  // 복습 세션 (어제 학습 / 첫날엔 예습 랜덤)
  const reviewSession = (window.ECGetReviewSession && window.ECGetReviewSession()) || {
    isPreview: true, topic: null, topicLabel: null, words: [], patterns: [], expressions: [],
  };
  const reviewWords = reviewSession.words;
  const reviewExpressions = reviewSession.expressions || reviewSession.patterns || [];
  const isPreview = reviewSession.isPreview;
  const reviewTopicLabel = reviewSession.topicLabel;

  // 토픽 사이클: 주 단위 (today-session.jsx와 동기)
  const _now = new Date();
  const _dayOfYear = Math.floor((_now - new Date(_now.getFullYear(), 0, 0)) / 86400000);
  const todaySession = (window.ECGetTodaySession && window.ECGetTodaySession()) || { topic: null, topicLabel: '오늘의 학습' };
  const todayTopic = todaySession.topic;
  const todayTopicLabel = todaySession.topicLabel;

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

  // 연속 학습일 (진도 화면과 동일한 localStorage 기반 계산)
  const streak = React.useMemo(() => {
    const userId = (user && user.email) || 'guest';
    const prefix = 'ec_learned_' + userId + '_';
    const dailyCounts = {};
    for (let i = 0; i < localStorage.length; i++) {
      const key = localStorage.key(i);
      if (key && key.startsWith(prefix)) {
        const date = key.slice(prefix.length);
        try {
          const d = JSON.parse(localStorage.getItem(key) || '{}');
          dailyCounts[date] = (dailyCounts[date] || 0) + (d.wordIds || []).length + (d.sentenceIds || []).length;
        } catch(e) {}
      }
    }
    const t = new Date();
    const todayStr = t.toISOString().slice(0, 10);
    const startOffset = (dailyCounts[todayStr] || 0) > 0 ? 0 : 1;
    let s = 0;
    for (let i = startOffset; i < 365; i++) {
      const dd = new Date(t);
      dd.setDate(t.getDate() - i);
      const ds = dd.toISOString().slice(0, 10);
      if ((dailyCounts[ds] || 0) > 0) s++;
      else break;
    }
    return s;
  }, [dataVersion]);

  // 연속일 → 불꽃 단계 (진도 화면과 동일 매핑)
  const homeFlameStage = streak === 0 ? 0 : streak < 2 ? 1 : streak < 3 ? 2 : streak < 4 ? 3 : streak < 5 ? 4 : streak < 6 ? 5 : 6;
  // 단계별로 불꽃이 viewBox에서 차지하는 세로 비율 → 어느 단계든 같은 크기로 보이게 정규화
  const FLAME_FILL = [0.26, 0.26, 0.38, 0.52, 0.66, 0.76, 0.94];
  const flameScale = 0.62 / FLAME_FILL[homeFlameStage];

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column', overflow: 'hidden' }}>
      <ECStatusBar />

      <div ref={scrollRef} style={{ flex: 1, minHeight: 0, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 90 }}>

      {/* Top bar — sticky pinned to top of scroll container */}
      <div style={{
        position: 'sticky', top: 0, zIndex: 50,
        padding: '6px 22px 10px',
        display: 'flex', justifyContent: 'space-between', alignItems: 'center',
        background: T.bg1,
      }}>
        <div style={{ display: 'flex', alignItems: 'baseline', gap: 6 }}>
          <div style={{ fontFamily: T.serif, fontSize: 22, letterSpacing: -0.4, color: T.text }}>
            EngCat
          </div>
          <div style={{ fontFamily: T.mono, fontSize: 10, letterSpacing: 0.5, color: T.textMute }}>{'v' + (window.EC_VER || 1)}</div>
        </div>
        <div style={{
          display: 'flex', alignItems: 'center', gap: 5,
          padding: '6px 11px', borderRadius: 999,
          background: T.bg2, border: `1px solid ${T.hair}`,
        }}>
          <span style={{ width: 24, height: 24, display: 'inline-flex', alignItems: 'flex-end', justifyContent: 'center', overflow: 'visible' }}>
            <span style={{ display: 'flex', transform: `scale(${flameScale.toFixed(2)})`, transformOrigin: 'center bottom' }}>
              {ECIcon.flameStage(homeFlameStage, 24)}
            </span>
          </span>
          <span style={{ fontSize: 13, fontWeight: 600, color: T.text }}>{streak}</span>
        </div>
      </div>

      {/* Greeting */}
      <div style={{ padding: '24px 22px 18px', display: 'flex', justifyContent: 'space-between', alignItems: 'center', gap: 16 }}>
        <div style={{ flex: 1, minWidth: 0 }}>
          <div style={{ fontSize: 13, color: T.textDim, marginBottom: 6 }}>
            {dateStr}
          </div>
          <div style={{ fontFamily: T.serif, fontSize: 30, lineHeight: 1.18, color: T.text, letterSpacing: -0.4 }}>
            {greetingWord}<br/>
            <span style={{ fontStyle: 'italic', color: T.accent }}>{displayName}.</span>
          </div>
        </div>
        <span style={{ flexShrink: 0, display: 'flex', marginRight: 12 }}>{ECIcon.mascot(T.text === '#F8F5EF', 56)}</span>
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
            {compEntries.map(([k, v]) => `${COMP_LABELS[k] || k} ${v}`).join(' · ')}
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

      {/* Section: 복습 단어 (or 예습 단어) */}
      {reviewWords.length > 0 && (<>
        <div style={{ padding: '28px 22px 8px', display: 'flex', justifyContent: 'space-between', alignItems: 'baseline' }}>
          <div>
            <div style={{ fontSize: 17, fontWeight: 600, color: T.text, letterSpacing: -0.2 }}>{isPreview ? '예습 단어' : '복습 단어'}</div>
            {!isPreview && reviewTopicLabel && (
              <div style={{ fontFamily: T.mono, fontSize: 10, color: T.accent, letterSpacing: 1.2, textTransform: 'uppercase', marginTop: 4, fontWeight: 600 }}>
                복습 토픽 · {reviewTopicLabel}
              </div>
            )}
          </div>
          <div style={{ fontSize: 12, color: T.textDim }}>{reviewWords.length}개</div>
        </div>
        <div style={{ padding: '0 22px', display: 'flex', gap: 10, overflowX: 'auto' }}>
          {reviewWords.map((c, i) => (
            <div key={c.id} onClick={() => {
              window.ECCardSource = { mode: isPreview ? 'preview' : 'review', words: reviewWords, startIndex: i };
              window.ECSession.wordIndex = i;
              window.ECNav?.go('word-card');
            }} style={{ flex: '0 0 130px', cursor: 'pointer' }}>
              <div style={{ position: 'relative' }}>
                {c.img
                  ? <img src={c.img} style={{ width: '100%', height: 150, objectFit: 'cover', objectPosition: 'center', borderRadius: 14 }} alt={c.en} />
                  : <ECPlaceholder height={150} tint={c.tint} radius={14} label={c.en}/>
                }
              </div>
              <div style={{ marginTop: 8, fontFamily: T.display, fontWeight: 400, fontSize: 17, color: T.text }}>{c.en}</div>
              <div style={{ fontSize: 12, color: T.textDim, marginTop: 1 }}>{(c.ko || '').split(',')[0]}</div>
            </div>
          ))}
        </div>
      </>)}

      {/* Section: 복습 표현 (or 예습 표현) — 패턴 + 콜로 + 이디엄 + 뉘앙스 */}
      {reviewExpressions.length > 0 && (<>
        <div style={{ padding: '28px 22px 10px', display: 'flex', justifyContent: 'space-between', alignItems: 'baseline' }}>
          <div>
            <div style={{ fontSize: 17, fontWeight: 600, color: T.text, letterSpacing: -0.2 }}>{isPreview ? '예습 표현' : '복습 표현'}</div>
            {!isPreview && reviewTopicLabel && (
              <div style={{ fontFamily: T.mono, fontSize: 10, color: T.accent, letterSpacing: 1.2, textTransform: 'uppercase', marginTop: 4, fontWeight: 600 }}>
                복습 토픽 · {reviewTopicLabel}
              </div>
            )}
          </div>
          <div onClick={() => {
            // "더 보기" — offset을 올려 복습 단어/표현 모두 새 셋으로 교체
            window.ECReviewSeedOffset = (window.ECReviewSeedOffset || 0) + 1;
            setDataVersion(v => v + 1);
          }} style={{ fontSize: 12, color: T.accent, cursor: 'pointer' }}>더 보기</div>
        </div>
        <div style={{ padding: '0 22px', display: 'flex', flexDirection: 'column', gap: 8 }}>
          {reviewExpressions.map((e, i) => {
            const type = e._type || e.type || (e.pattern ? 'pattern' : (e.verb || e.noun) ? 'collocation' : e.literalKo ? 'idiom' : (e.wordA || e.wordB) ? 'nuance' : 'pattern');
            const typeLabel = EXPR_TYPE_LABELS[type] || '패턴';
            const title = e.pattern || e.en || (e.wordA && e.wordB ? `${e.wordA} vs ${e.wordB}` : '');
            const desc  = e.explanation || e.ko || e.comparison || '';
            return (
              <div key={e.id || i} onClick={() => {
                window.ECCardSource = {
                  mode: isPreview ? 'preview' : 'review',
                  expressions: reviewExpressions,
                  startIndex: i,
                };
                window.ECSession.sentenceIndex = i;
                window.ECNav?.go('sentence-card');
              }} style={{
                padding: '14px 16px', borderRadius: 14,
                background: T.bg2, border: `1px solid ${T.hair}`,
                display: 'flex', alignItems: 'center', gap: 12,
                cursor: 'pointer',
              }}>
                <div style={{ flex: 1, minWidth: 0 }}>
                  <div style={{ display: 'flex', alignItems: 'center', gap: 6, marginBottom: 4 }}>
                    <div style={{
                      padding: '2px 7px', borderRadius: 5,
                      background: T.accentSoft, color: T.accent,
                      fontFamily: T.mono, fontSize: 9, letterSpacing: 1, textTransform: 'uppercase', fontWeight: 600,
                    }}>{typeLabel}</div>
                  </div>
                  <div style={{
                    fontFamily: T.display, fontWeight: 400,
                    fontSize: 18, color: T.text, lineHeight: 1.2, letterSpacing: -0.2,
                  }}>{title}</div>
                  {desc && (
                    <div style={{ fontSize: 12, color: T.textDim, marginTop: 4, lineHeight: 1.4 }}>
                      {desc.length > 40 ? desc.substring(0, 40) + '...' : desc}
                    </div>
                  )}
                </div>
                <div style={{ color: T.textMute, flexShrink: 0 }}>
                  {ECIcon.chev('right', T.textMute, 16)}
                </div>
              </div>
            );
          })}
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
