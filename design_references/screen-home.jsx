// EngCat — Home screen (오늘의 학습)
// Premium dark, B1-B2 learner. Polite formal tone.

function ECScreenHome() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

  const user = (() => { try { return JSON.parse(localStorage.getItem('engcat_user')); } catch(e) { return null; } })();
  const now = new Date();
  const month = now.getMonth() + 1;
  const day = now.getDate();
  const dayNames = ['일', '월', '화', '수', '목', '금', '토'];
  const dateStr = `${month}월 ${day}일 ${dayNames[now.getDay()]}요일`;
  const hour = now.getHours();
  const greetingWord = hour < 12 ? '좋은 아침이에요,' : hour < 18 ? '안녕하세요,' : '좋은 저녁이에요,';
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
    <div style={{ height: '100%', background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div ref={scrollRef} style={{ flex: 1, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 'calc(42px + env(safe-area-inset-bottom, 0px))' }}>
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
          <span style={{ fontStyle: 'italic', color: T.accent }}>{displayName}님.</span>
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
              <div style={{ width: '0%', height: '100%', background: T.accent, borderRadius: 3 }} />
            </div>
            <div style={{ fontSize: 12, color: T.textDim, fontFamily: T.mono }}>0 / 15</div>
          </div>

          {/* CTA */}
          <div onClick={() => window.ECNav?.go('word-card')} style={{
            marginTop: 16, height: 50, borderRadius: 14, background: T.accent,
            display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
            color: T.bg0, fontWeight: 600, fontSize: 15, cursor: 'pointer',
          }}>
            {ECIcon.play(T.bg0, 16)}
            <span>학습 시작하기</span>
          </div>
        </div>
      </div>

      {/* Section: Daily set */}
      <div style={{ padding: '28px 22px 8px', display: 'flex', justifyContent: 'space-between', alignItems: 'baseline' }}>
        <div style={{ fontSize: 17, fontWeight: 600, color: T.text, letterSpacing: -0.2 }}>오늘의 단어</div>
        <div style={{ fontSize: 12, color: T.textDim }}>10개 중 0개 완료</div>
      </div>

      <div style={{ padding: '0 22px', display: 'flex', gap: 10, overflowX: 'auto' }}>
        {[
          { w: 'itinerary', k: '여정',    tint: T.art1, done: false },
          { w: 'layover',   k: '경유',    tint: T.art2, done: false },
          { w: 'jet lag',   k: '시차',    tint: T.art5, done: false },
          { w: 'boarding',  k: '탑승',    tint: T.art4, done: false },
        ].map((c, i) => (
          <div key={i} onClick={() => window.ECNav?.go('word-card')} style={{ flex: '0 0 130px', cursor: 'pointer' }}>
            <div style={{ position: 'relative' }}>
              <ECPlaceholder height={150} tint={c.tint} radius={14} label={c.w}/>
              {c.done && (
                <div style={{
                  position: 'absolute', top: 8, right: 8, width: 22, height: 22, borderRadius: 11,
                  background: T.good, display: 'flex', alignItems: 'center', justifyContent: 'center',
                }}>
                  {ECIcon.check(T.bg0, 14)}
                </div>
              )}
            </div>
            <div style={{ marginTop: 8, fontFamily: T.serif, fontSize: 17, color: T.text, fontStyle: 'italic' }}>{c.w}</div>
            <div style={{ fontSize: 12, color: T.textDim, marginTop: 1 }}>{c.k}</div>
          </div>
        ))}
      </div>

      {/* Section: Sentence */}
      <div style={{ padding: '28px 22px 10px', display: 'flex', justifyContent: 'space-between', alignItems: 'baseline' }}>
        <div style={{ fontSize: 17, fontWeight: 600, color: T.text, letterSpacing: -0.2 }}>오늘의 문장</div>
        <div onClick={() => window.ECNav?.go('sentence-card')} style={{ fontSize: 12, color: T.accent, cursor: 'pointer' }}>전체 보기</div>
      </div>

      <div style={{ padding: '0 22px 24px', display: 'flex', flexDirection: 'column', gap: 10 }}>
        {[
          { en: 'Could you keep an eye on my bag?', ko: '제 가방 좀 봐주실 수 있을까요?' },
          { en: 'I’d like to check in early, please.',  ko: '일찍 체크인하고 싶어요.' },
        ].map((s, i) => (
          <div key={i} onClick={() => window.ECNav?.go('sentence-card')} style={{
            padding: '14px 16px', borderRadius: 14,
            background: T.bg2, border: `1px solid ${T.hair}`,
            display: 'flex', alignItems: 'center', gap: 12, cursor: 'pointer',
          }}>
            <div style={{
              width: 38, height: 38, borderRadius: 10, background: T.bg3,
              display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0,
              color: T.accent,
            }}>{ECIcon.speaker(T.accent, 18)}</div>
            <div style={{ flex: 1, minWidth: 0 }}>
              <div style={{ fontFamily: T.serif, fontSize: 16, color: T.text, fontStyle: 'italic', lineHeight: 1.25 }}>{s.en}</div>
              <div style={{ fontSize: 12.5, color: T.textDim, marginTop: 2 }}>{s.ko}</div>
            </div>
          </div>
        ))}
      </div>

      </div>{/* end scrollable */}
      <ECTabBar active="home" />
    </div>
  );
}

function ECTabBar({ active = 'home' }) {
  const T = ECTokens;
  const items = [
    { id: 'home',   label: '홈',      icon: ECIcon.home,  screen: 'home' },
    { id: 'cards',  label: '카드',    icon: ECIcon.cards, screen: 'word-card' },
    { id: 'stats',  label: '진도',    icon: ECIcon.chart, screen: 'stats' },
    { id: 'me',     label: '내 정보', icon: ECIcon.user,  screen: 'profile' },
  ];
  return (
    <div style={{
      position: 'fixed',
      bottom: 0, left: 0, right: 0,
      padding: '10px 12px env(safe-area-inset-bottom, 0px)',
      background: T.bg1,
      display: 'flex', justifyContent: 'space-around',
      borderTop: `1px solid ${T.hair}`,
      zIndex: 100,
    }}>
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
  );
}

Object.assign(window, { ECScreenHome, ECTabBar });
