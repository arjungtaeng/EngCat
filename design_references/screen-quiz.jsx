// EngCat — Quiz / Spaced repetition review

function ECScreenQuiz() {
  const T = ECTokens;
  const [selected, setSelected] = React.useState(null);
  const choices = [
    { id: 'A', en: 'an emergency exit', ko: '비상구',     ok: false },
    { id: 'B', en: 'a layover',          ko: '경유',       ok: true  },
    { id: 'C', en: 'a duty-free shop',   ko: '면세점',     ok: false },
    { id: 'D', en: 'a boarding pass',    ko: '탑승권',     ok: false },
  ];
  const answered = selected !== null;
  const isCorrect = answered && (choices.find(c => c.id === selected)?.ok ?? false);

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, position: 'relative', display: 'flex', flexDirection: 'column' }}>
      <ECStatusBar />

      {/* Top: progress + lives */}
      <div style={{ padding: '4px 20px 12px', display: 'flex', alignItems: 'center', gap: 12 }}>
        <div onClick={() => window.ECNav?.go('home')} style={{
          width: 36, height: 36, borderRadius: 12, background: T.bg2, border: `1px solid ${T.hair}`,
          display: 'flex', alignItems: 'center', justifyContent: 'center', cursor: 'pointer',
        }}>{ECIcon.close(T.textDim, 18)}</div>

        <div style={{ flex: 1, height: 8, borderRadius: 4, background: T.bg2, overflow: 'hidden' }}>
          <div style={{ width: '55%', height: '100%', background: T.accent, borderRadius: 4 }} />
        </div>

        <div style={{
          display: 'flex', alignItems: 'center', gap: 4,
          padding: '5px 9px', borderRadius: 999, background: T.bg2, border: `1px solid ${T.hair}`,
        }}>
          {ECIcon.heart(T.bad, 14, true)}
          <span style={{ fontSize: 12.5, fontWeight: 600, color: T.text }}>3</span>
        </div>
      </div>

      {/* Quiz prompt */}
      <div style={{ padding: '24px 22px 16px' }}>
        <div style={{ fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase', marginBottom: 10 }}>
          QUESTION 06 / 10
        </div>
        <div style={{ fontFamily: T.serif, fontSize: 24, lineHeight: 1.25, color: T.text, letterSpacing: -0.3 }}>
          이 상황에 알맞은 표현을<br/>
          <span style={{ fontStyle: 'italic', color: T.accent }}>골라주세요.</span>
        </div>
      </div>

      {/* Visual prompt */}
      <div style={{ padding: '0 20px' }}>
        <div style={{ borderRadius: 18, overflow: 'hidden', position: 'relative' }}>
          <ECPlaceholder height={170} tint={T.art2} radius={18} label="scene · airport transfer"/>
          <div style={{
            position: 'absolute', bottom: 12, left: 12,
            padding: '6px 10px', borderRadius: 6,
            background: 'rgba(0,0,0,0.55)', backdropFilter: 'blur(20px)',
            fontFamily: T.mono, fontSize: 13.5, color: T.text,
          }}>
            "My flight from Seoul stops in Tokyo before Hawaii."
          </div>
        </div>
      </div>

      {/* Choices */}
      <div style={{ padding: '20px 20px 0', display: 'flex', flexDirection: 'column', gap: 10, flex: 1 }}>
        {choices.map(c => {
          const state = !answered ? 'idle' : c.ok ? 'correct' : c.id === selected ? 'wrong' : 'idle';
          return (
            <div key={c.id} onClick={() => !answered && setSelected(c.id)} style={{
              padding: '14px 16px', borderRadius: 14,
              background: state === 'correct' ? T.goodSoft : state === 'wrong' ? T.badSoft : T.bg2,
              border: `1px solid ${state === 'correct' ? T.good : state === 'wrong' ? T.bad : T.hair}`,
              display: 'flex', alignItems: 'center', gap: 12,
              cursor: answered ? 'default' : 'pointer',
            }}>
              <div style={{
                width: 30, height: 30, borderRadius: 8,
                background: state === 'correct' ? T.good : state === 'wrong' ? T.bad : T.bg3,
                color: state !== 'idle' ? T.bg0 : T.textDim,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                fontFamily: T.mono, fontSize: 12, fontWeight: 600, flexShrink: 0,
              }}>{state === 'correct' ? ECIcon.check(T.bg0, 16) : state === 'wrong' ? ECIcon.close(T.bg0, 16) : c.id}</div>
              <div style={{ flex: 1 }}>
                <div style={{ fontFamily: T.mono, fontSize: 16, color: T.text }}>{c.en}</div>
                <div style={{ fontSize: 12, color: T.textDim, marginTop: 1 }}>{c.ko}</div>
              </div>
            </div>
          );
        })}
      </div>

      {answered && (
        <div style={{ padding: '14px 20px 24px' }}>
          <div style={{
            padding: '14px 16px', borderRadius: 14,
            background: isCorrect ? T.goodSoft : T.badSoft,
            border: `1px solid ${isCorrect ? T.good : T.bad}`,
            display: 'flex', alignItems: 'center', gap: 12,
          }}>
            <div style={{
              width: 32, height: 32, borderRadius: 16,
              background: isCorrect ? T.good : T.bad,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
            }}>{isCorrect ? ECIcon.check(T.bg0, 18) : ECIcon.close(T.bg0, 18)}</div>
            <div style={{ flex: 1 }}>
              <div style={{ fontSize: 14, fontWeight: 600, color: isCorrect ? T.good : T.bad }}>
                {isCorrect ? '정답이에요!' : '아쉽네요...'}
              </div>
              <div style={{ fontSize: 12, color: T.textDim, marginTop: 1 }}>
                {isCorrect ? '경유 = layover. 잘 기억하고 계시네요.' : '정답은 a layover (경유)예요.'}
              </div>
            </div>
            <div onClick={() => window.ECNav?.go('home')} style={{
              padding: '8px 14px', borderRadius: 10,
              background: isCorrect ? T.good : T.bad, color: T.bg0,
              fontSize: 13, fontWeight: 600, cursor: 'pointer',
            }}>다음</div>
          </div>
        </div>
      )}
    </div>
  );
}

Object.assign(window, { ECScreenQuiz });
