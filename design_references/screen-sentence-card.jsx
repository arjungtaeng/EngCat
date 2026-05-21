// EngCat — Sentence card with situational mini-animation
// Vertical feed continues. Shows a short illustrated scenario explaining context.

function ECScreenSentenceCard() {
  const T = ECTokens;
  const s = {
    en: "Could you keep an eye on my bag for a sec?",
    ipa: '/kʊd ju kiːp ən aɪ ɒn maɪ bæɡ/',
    ko: '제 가방 잠시만 봐주실 수 있을까요?',
    tip: '“keep an eye on” = 잠깐 지켜봐 주다. 카페·공항에서 자주 쓰이는 부탁 표현이에요.',
    sit: 'CAFÉ · 화장실 가기 직전',
    tint: T.art4,
  };

  // 3-beat storyboard for the animated scenario
  const beats = [
    { time: '00:01', tint: T.art4, label: '카페에서 노트북 작업 중', emoji: '·' },
    { time: '00:04', tint: T.art2, label: '화장실에 가야 함', emoji: '·' },
    { time: '00:07', tint: T.art5, label: '옆 사람에게 부탁',     emoji: '·' },
  ];

  return (
    <div style={{ height: '100%', background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <div style={{ flex: 1, position: 'relative', overflow: 'hidden' }}>
      <ECStatusBar />

      {/* Top bar */}
      <div style={{ padding: '4px 18px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <div onClick={() => window.ECNav?.go('home')} style={{
          width: 36, height: 36, borderRadius: 12, background: T.bg2,
          border: `1px solid ${T.hair}`,
          display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
        }}>{ECIcon.close(T.textDim, 18)}</div>

        <div style={{
          padding: '6px 12px', borderRadius: 999, background: T.bg2,
          border: `1px solid ${T.hair}`,
          fontFamily: T.mono, fontSize: 10.5, color: T.textDim, letterSpacing: 1, textTransform: 'uppercase',
        }}>3 / 5 · 문장</div>

        <div style={{
          width: 36, height: 36, borderRadius: 12, background: T.bg2,
          border: `1px solid ${T.hair}`,
          display: 'flex', alignItems: 'center', justifyContent: 'center',
        }}>{ECIcon.more(T.textDim, 18)}</div>
      </div>

      {/* Situational tag */}
      <div style={{ padding: '20px 22px 0' }}>
        <div style={{
          display: 'inline-flex', alignItems: 'center', gap: 6,
          padding: '5px 10px', borderRadius: 6,
          background: T.accentSoft, color: T.accent,
          fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase',
        }}>
          <span style={{ width: 5, height: 5, borderRadius: 3, background: T.accent }} />
          {s.sit}
        </div>
      </div>

      {/* Animation viewport — 3-beat storyboard */}
      <div style={{ padding: '14px 18px 0' }}>
        <div style={{
          borderRadius: 22, overflow: 'hidden',
          background: T.bg2, border: `1px solid ${T.hair}`,
          position: 'relative', aspectRatio: '4 / 3',
        }}>
          {/* Main "stage" — current beat */}
          <ECPlaceholder height="100%" tint={s.tint} radius={0} label="scene · request"/>

          {/* Caption like a comic */}
          <div style={{
            position: 'absolute', top: 14, left: 14, right: 14,
            display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start',
          }}>
            <div style={{
              padding: '5px 10px', borderRadius: 6, background: 'rgba(0,0,0,0.5)', backdropFilter: 'blur(20px)',
              fontFamily: T.mono, fontSize: 9.5, color: 'rgba(255,255,255,0.85)', letterSpacing: 0.8,
            }}>SCENE 03 / 03</div>
            <div style={{
              width: 38, height: 38, borderRadius: 999, background: 'rgba(0,0,0,0.5)', backdropFilter: 'blur(20px)',
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              border: '1px solid rgba(255,255,255,0.18)',
            }}>{ECIcon.play(T.text, 14)}</div>
          </div>

          {/* Speech bubble overlay */}
          <div style={{
            position: 'absolute', bottom: 18, left: 18, right: 18,
            background: 'rgba(255,255,255,0.96)', borderRadius: 14,
            padding: '12px 14px', display: 'flex', alignItems: 'center', gap: 10,
            boxShadow: '0 6px 20px rgba(0,0,0,0.3)',
          }}>
            <div style={{
              width: 28, height: 28, borderRadius: 999, background: T.bg1, color: T.accent,
              display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0,
            }}>{ECIcon.speaker(T.accent, 14)}</div>
            <div style={{ flex: 1, fontFamily: T.serif, fontSize: 15, fontStyle: 'italic', color: T.bg0, lineHeight: 1.25 }}>
              "Could you <span style={{ color: T.accentDeep, fontWeight: 600 }}>keep an eye on</span> my bag?"
            </div>
          </div>
        </div>

        {/* Storyboard dots */}
        <div style={{ display: 'flex', gap: 6, marginTop: 12, padding: '0 4px' }}>
          {beats.map((b, i) => (
            <div key={i} style={{ flex: 1 }}>
              <div style={{
                height: 28, borderRadius: 6, overflow: 'hidden', position: 'relative',
                opacity: i === 2 ? 1 : 0.45,
                border: i === 2 ? `1px solid ${T.accent}` : `1px solid ${T.hair}`,
              }}>
                <ECPlaceholder height="100%" tint={b.tint} radius={0}/>
              </div>
              <div style={{ fontFamily: T.mono, fontSize: 8.5, color: T.textMute, marginTop: 4, letterSpacing: 0.5 }}>
                {b.time}
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* Sentence */}
      <div style={{ padding: '20px 22px 0' }}>
        <div style={{ fontFamily: T.serif, fontSize: 26, lineHeight: 1.2, color: T.text, fontStyle: 'italic', letterSpacing: -0.3 }}>
          “Could you <span style={{ color: T.accent }}>keep an eye on</span> my bag for a sec?”
        </div>
        <div style={{ marginTop: 8, fontSize: 14, color: T.textDim, lineHeight: 1.4 }}>
          {s.ko}
        </div>

        {/* Tip */}
        <div style={{
          marginTop: 14, padding: '12px 14px', borderRadius: 12,
          background: T.bg2, border: `1px solid ${T.hair}`,
          display: 'flex', gap: 10, alignItems: 'flex-start',
        }}>
          <div style={{ color: T.accent, flexShrink: 0, marginTop: 1 }}>{ECIcon.sparkle(T.accent, 14)}</div>
          <div style={{ fontSize: 12.5, color: T.textDim, lineHeight: 1.45 }}>
            <span style={{ color: T.text, fontWeight: 600 }}>표현 팁 · </span>{s.tip}
          </div>
        </div>
      </div>

      {/* Bottom controls */}
      <div style={{
        position: 'absolute', bottom: 28, left: 0, right: 0, padding: '0 18px',
        display: 'flex', gap: 10,
      }}>
        <div style={{
          flex: 1, height: 50, borderRadius: 14, background: T.bg2, border: `1px solid ${T.hair}`,
          display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
          color: T.text, fontSize: 14, fontWeight: 500,
        }}>
          {ECIcon.mic(T.text, 16)}
          <span>따라 말하기</span>
        </div>
        <div onClick={() => window.ECNav?.go('quiz')} style={{
          height: 50, padding: '0 22px', borderRadius: 14, background: T.accent,
          display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
          color: T.bg0, fontSize: 14, fontWeight: 600, cursor: 'pointer',
        }}>
          다음
          {ECIcon.chev('right', T.bg0, 16)}
        </div>
      </div>

      {/* Side rail micro indicator */}
      <div style={{ position: 'absolute', right: 6, top: '46%', display: 'flex', flexDirection: 'column', gap: 3 }}>
        {Array.from({ length: 5 }).map((_, i) => (
          <div key={i} style={{
            width: 3, height: 18, borderRadius: 2,
            background: i < 3 ? T.accent : T.hairStr,
          }} />
        ))}
      </div>{/* end card area */}
      <ECTabBar active="cards" />
    </div>
  );
}

Object.assign(window, { ECScreenSentenceCard });
