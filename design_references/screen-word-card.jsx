// EngCat — Word Card vertical feed (TikTok/Reels style)
// Full-screen immersive card. Visual hero on top, definition below, action rail right.

function ECScreenWordCard() {
  const T = ECTokens;
  const word = {
    en: 'itinerary',
    ipa: '/aɪˈtɪnərəri/',
    pos: 'noun',
    ko: '여행 일정, 여정',
    def: 'A planned route or journey, with details of the places you will visit.',
    ex1: 'Our itinerary includes three days in Kyoto.',
    ex2: 'I emailed her my travel itinerary.',
    tint: T.art1,
  };

  return (
    <div style={{ height: '100%', background: '#000', display: 'flex', flexDirection: 'column' }}>
      <div style={{ flex: 1, position: 'relative', overflow: 'hidden' }}>
      {/* Hero image — full bleed, blurred edges */}
      <div style={{ position: 'absolute', inset: 0 }}>
        <ECPlaceholder height="100%" tint={word.tint} radius={0} label="hero · airport scene"/>
        {/* dark gradient overlay */}
        <div style={{
          position: 'absolute', inset: 0,
          background: 'linear-gradient(to bottom, rgba(0,0,0,0.45) 0%, transparent 25%, transparent 50%, rgba(0,0,0,0.92) 100%)',
        }} />
      </div>

      {/* Top chrome */}
      <div style={{ position: 'relative', zIndex: 5 }}>
        <ECStatusBar />
        <div style={{
          padding: '6px 18px 0', display: 'flex', justifyContent: 'space-between', alignItems: 'center',
        }}>
          <div onClick={() => window.ECNav?.go('home')} style={{
            width: 36, height: 36, borderRadius: 12,
            background: 'rgba(0,0,0,0.35)', backdropFilter: 'blur(20px)',
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            border: `1px solid rgba(255,255,255,0.12)`, cursor: 'pointer',
          }}>{ECIcon.close('rgba(255,255,255,0.9)', 18)}</div>

          <div style={{
            padding: '7px 14px', borderRadius: 999,
            background: 'rgba(0,0,0,0.35)', backdropFilter: 'blur(20px)',
            border: `1px solid rgba(255,255,255,0.12)`,
            fontFamily: T.mono, fontSize: 10.5, color: 'rgba(255,255,255,0.85)',
            letterSpacing: 1, textTransform: 'uppercase',
          }}>3 / 10 · 단어</div>

          <div style={{
            width: 36, height: 36, borderRadius: 12,
            background: 'rgba(0,0,0,0.35)', backdropFilter: 'blur(20px)',
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            border: `1px solid rgba(255,255,255,0.12)`,
          }}>{ECIcon.more('rgba(255,255,255,0.9)', 18)}</div>
        </div>
      </div>


      {/* Right action rail */}
      <div style={{
        position: 'absolute', right: 14, bottom: 280, zIndex: 6,
        display: 'flex', flexDirection: 'column', gap: 18, alignItems: 'center',
      }}>
        {[
          { icon: ECIcon.speaker(T.text, 22), label: '듣기' },
          { icon: ECIcon.mic(T.text, 22),     label: '말하기' },
          { icon: ECIcon.heart(T.text, 22),   label: '저장' },
          { icon: ECIcon.share(T.text, 20),   label: '공유' },
        ].map((a, i) => (
          <div key={i} style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 4 }}>
            <div style={{
              width: 48, height: 48, borderRadius: 999,
              background: 'rgba(255,255,255,0.10)', backdropFilter: 'blur(20px)',
              border: `1px solid rgba(255,255,255,0.14)`,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
            }}>{a.icon}</div>
            <div style={{ fontSize: 10, color: 'rgba(255,255,255,0.75)', fontWeight: 500 }}>{a.label}</div>
          </div>
        ))}
      </div>

      {/* Bottom content */}
      <div style={{
        position: 'absolute', bottom: 28, left: 0, right: 70, padding: '0 22px', zIndex: 5,
      }}>
        {/* POS chip */}
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 10 }}>
          <div style={{
            padding: '3px 9px', borderRadius: 6, background: 'rgba(255,255,255,0.12)',
            backdropFilter: 'blur(20px)', fontFamily: T.mono, fontSize: 10,
            color: T.text, letterSpacing: 0.5, textTransform: 'uppercase',
          }}>{word.pos}</div>
          <div style={{ fontFamily: T.mono, fontSize: 11, color: 'rgba(255,255,255,0.55)' }}>
            {word.ipa}
          </div>
        </div>

        {/* Word */}
        <div style={{
          fontFamily: T.serif, fontSize: 56, lineHeight: 1, color: T.text,
          fontStyle: 'italic', letterSpacing: -1, marginBottom: 6,
        }}>{word.en}</div>

        <div style={{
          fontSize: 17, color: T.accent, fontWeight: 500, marginBottom: 14, letterSpacing: -0.2,
        }}>{word.ko}</div>

        <div style={{
          fontSize: 13.5, color: 'rgba(255,255,255,0.78)', lineHeight: 1.5, marginBottom: 14,
        }}>{word.def}</div>

        {/* Example */}
        <div style={{
          padding: '12px 14px', borderRadius: 12,
          background: 'rgba(255,255,255,0.08)', backdropFilter: 'blur(20px)',
          border: `1px solid rgba(255,255,255,0.10)`,
        }}>
          <div style={{ fontSize: 9.5, fontFamily: T.mono, color: 'rgba(255,255,255,0.5)', letterSpacing: 1, marginBottom: 6, textTransform: 'uppercase' }}>예문</div>
          <div style={{ fontFamily: T.serif, fontSize: 15, color: T.text, fontStyle: 'italic', lineHeight: 1.35 }}>
            "Our <span style={{ color: T.accent }}>itinerary</span> includes three days in Kyoto."
          </div>
        </div>

        <div onClick={() => window.ECNav?.go('sentence-card')} style={{
          marginTop: 14, height: 46, borderRadius: 14, background: T.accent, color: T.bg0,
          display: 'flex', alignItems: 'center', justifyContent: 'center', gap: 8,
          fontSize: 14, fontWeight: 600, cursor: 'pointer',
        }}>
          다음 카드
          {ECIcon.chev('right', T.bg0, 14)}
        </div>
      </div>

      {/* Bottom progress strip — current card position in feed */}
      <div style={{
        position: 'absolute', bottom: 0, left: 0, right: 0, height: 24, zIndex: 7,
        display: 'flex', gap: 3, padding: '0 16px', alignItems: 'flex-end', paddingBottom: 14,
      }}>
        {Array.from({ length: 10 }).map((_, i) => (
          <div key={i} style={{
            flex: 1, height: 2.5, borderRadius: 2,
            background: i < 3 ? T.text : 'rgba(255,255,255,0.22)',
          }} />
        ))}
      </div>
    </div>
    <ECTabBar active="cards" />
  </div>
  );
}

Object.assign(window, { ECScreenWordCard });
