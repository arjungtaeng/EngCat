// EngCat — Onboarding screen
// Adaptive 5-question level test → Home

const questionPool = {
  A1: {
    scenario: '처음 만난 사람에게 이름을 물어보려 해요.',
    choices: [
      { id: 'A', en: "What's your name?",          ok: true  },
      { id: 'B', en: 'How do I call you?',          ok: false },
      { id: 'C', en: 'What should I call you?',     ok: false },
      { id: 'D', en: 'Can you tell me your name?',  ok: false },
    ],
  },
  A2: {
    scenario: '친구에게 문자로 지금 뭐 하는지 물어보려 해요.',
    choices: [
      { id: 'A', en: 'What are you doing now?',         ok: true  },
      { id: 'B', en: 'What do you do now?',             ok: false },
      { id: 'C', en: 'Now what are you doing?',         ok: false },
      { id: 'D', en: 'Are you doing something now?',    ok: false },
    ],
  },
  'A2-B1': {
    scenario: '어제 본 영화가 너무 좋아서 친구에게 추천하려 해요.',
    choices: [
      { id: 'A', en: "I saw a great movie yesterday — you should watch it!", ok: true  },
      { id: 'B', en: 'I watched great movie yesterday. I recommend you.',    ok: false },
      { id: 'C', en: "Yesterday's movie was great. You must watch it.",      ok: false },
      { id: 'D', en: 'I saw a great movie yesterday. I recommend it to you.', ok: false },
    ],
  },
  B1: {
    scenario: '영어로 회의 중인데 원어민이 너무 빠르게 말해서 다시 말해달라고 하고 싶어요.',
    choices: [
      { id: 'A', en: 'Could you say that again more slowly, please?',   ok: true  },
      { id: 'B', en: "Please speak slowly. Too fast.",                   ok: false },
      { id: 'C', en: "Can you repeat? I didn't understand.",             ok: false },
      { id: 'D', en: "Sorry, I didn't catch that. Can you speak again?", ok: false },
    ],
  },
  'B1-B2': {
    scenario: '회의에서 상사 의견에 부드럽게 반대하고 싶어요.',
    choices: [
      { id: 'A', en: "I see your point, but I'd look at it a bit differently.", ok: true  },
      { id: 'B', en: "I understand, but I don't agree with that.",               ok: false },
      { id: 'C', en: "That's interesting, but I have a different opinion.",      ok: false },
      { id: 'D', en: "I respect your view, but I think we should reconsider.",   ok: false },
    ],
  },
  B2: {
    scenario: '친구가 중요한 발표를 앞두고 많이 긴장해 있어요. 격려하는 말은?',
    choices: [
      { id: 'A', en: "You've got this. I know you'll do great.",      ok: true  },
      { id: 'B', en: "Don't be nervous, you'll be fine.",             ok: false },
      { id: 'C', en: "Good luck! I hope everything goes well.",       ok: false },
      { id: 'D', en: "I'm sure you'll be okay. Just relax.",          ok: false },
    ],
  },
  'B2-C1': {
    scenario: '프레젠테이션 도중 다음 주제로 자연스럽게 넘어가려 해요.',
    choices: [
      { id: 'A', en: "Moving on, let's take a look at our next point.",       ok: true  },
      { id: 'B', en: "Okay, now let's go to the next part.",                  ok: false },
      { id: 'C', en: "So, the next thing I want to talk about is...",         ok: false },
      { id: 'D', en: 'Now I will explain the next topic.',                    ok: false },
    ],
  },
  C1: {
    scenario: '협상에서 상대방 제안이 예산을 넘어서지만 대화는 계속하고 싶어요.',
    choices: [
      { id: 'A', en: "I hear you, though that's a stretch for our budget. Is there any flexibility on your end?", ok: true  },
      { id: 'B', en: "That's over our budget, but we'd like to keep talking.",                                     ok: false },
      { id: 'C', en: "We appreciate the offer, but that price is too high for us.",                                ok: false },
      { id: 'D', en: "I understand, but we were hoping for something more affordable.",                            ok: false },
    ],
  },
};

function getQuestionKey(idx, prevAnswers) {
  const prev = prevAnswers;
  if (idx === 0) return 'B1';
  if (idx === 1) return prev[0] ? 'B2' : 'A2';
  if (idx === 2) {
    if (prev[0] && prev[1])   return 'B2-C1';
    if (prev[0] && !prev[1])  return 'B1-B2';
    if (!prev[0] && prev[1])  return 'A2-B1';
    return 'A1';
  }
  const correct = prev.filter(Boolean).length;
  if (idx === 3) {
    if (correct >= 3) return 'C1';
    if (correct === 2) return 'B2';
    if (correct === 1) return 'B1-B2';
    return 'A2-B1';
  }
  if (idx === 4) {
    if (correct >= 3) return 'B2-C1';
    if (correct === 2) return 'B1-B2';
    if (correct === 1) return 'A2-B1';
    return 'A1';
  }
}

function getFinalLevel(answers) {
  const correct = answers.filter(Boolean).length;
  if (correct >= 5) return 'C1';
  if (correct === 4) return 'B2';
  if (correct === 3) return 'B1';
  if (correct === 2) return 'A2';
  return 'A1';
}

function ECScreenOnboarding() {
  const T = ECTokens;
  const [qIndex, setQIndex]     = React.useState(0);
  const [answers, setAnswers]   = React.useState([]);
  const [selected, setSelected] = React.useState(null);
  const [revealed, setRevealed] = React.useState(false);

  const currentQuestion = questionPool[getQuestionKey(qIndex, answers)];
  const correctChoice   = currentQuestion.choices.find(c => c.ok);
  const isCorrect       = selected === correctChoice?.id;

  function handleReveal() {
    setRevealed(true);
  }

  function handleNext() {
    const newAnswers = [...answers, isCorrect];

    if (qIndex === 4) {
      const level = getFinalLevel(newAnswers);
      localStorage.setItem('ec_user_level', level);
      localStorage.setItem('ec_onboarding_done', '1');
      window.ECNav?.go('home');
    } else {
      setAnswers(newAnswers);
      setQIndex(qIndex + 1);
      setSelected(null);
      setRevealed(false);
    }
  }

  return (
    <div style={{
      flex: 1, minHeight: 0, background: T.bg1,
      display: 'flex', flexDirection: 'column',
    }}>
      <ECStatusBar />

      {/* ── Progress bar ── */}
      <div style={{ padding: '8px 28px 0', display: 'flex', gap: 6 }}>
        {[0, 1, 2, 3, 4].map(i => (
          <div key={i} style={{
            flex: 1, height: 3, borderRadius: 2,
            background: i <= qIndex ? T.accent : T.hairStr,
            transition: 'background 0.3s',
          }} />
        ))}
      </div>

      {/* ── Header ── */}
      <div style={{ padding: '28px 28px 0' }}>
        <div style={{
          fontFamily: T.mono, fontSize: 10, letterSpacing: 1.6,
          color: T.textMute, textTransform: 'uppercase', marginBottom: 16,
        }}>
          {`질문 ${String(qIndex + 1).padStart(2, '0')} / 05`}
        </div>
        <div style={{
          fontFamily: T.serif, fontSize: 30, lineHeight: 1.15,
          color: T.text, letterSpacing: -0.4, fontWeight: 400,
        }}>
          이 상황에서<br />
          <span style={{ fontStyle: 'italic', color: T.accent }}>어떻게 말할까요?</span>
        </div>
      </div>

      {/* ── Scenario box ── */}
      <div style={{ padding: '20px 22px 0' }}>
        <div style={{
          padding: '16px 18px', borderRadius: 16,
          background: T.bg2, border: `1px solid ${T.hair}`,
        }}>
          <div style={{
            fontFamily: T.mono, fontSize: 10, color: T.accent,
            letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 8,
          }}>SITUATION</div>
          <div style={{ fontSize: 15, color: T.text, lineHeight: 1.55 }}>
            {currentQuestion.scenario}
          </div>
        </div>
      </div>

      {/* ── Choices ── */}
      <div style={{
        padding: '16px 22px 0',
        display: 'flex', flexDirection: 'column', gap: 10, flex: 1,
      }}>
        {currentQuestion.choices.map(c => {
          const state = !revealed
            ? 'idle'
            : c.ok
              ? 'correct'
              : c.id === selected
                ? 'wrong'
                : 'idle';

          return (
            <div
              key={c.id}
              onClick={() => !revealed && setSelected(c.id)}
              style={{
                padding: '14px 16px', borderRadius: 14,
                background:
                  state === 'correct' ? T.goodSoft
                  : state === 'wrong'   ? T.badSoft
                  : selected === c.id   ? T.bg3
                  : T.bg2,
                border: `1px solid ${
                  state === 'correct' ? T.good
                  : state === 'wrong'   ? T.bad
                  : selected === c.id   ? T.accent
                  : T.hair
                }`,
                display: 'flex', alignItems: 'center', gap: 12,
                cursor: revealed ? 'default' : 'pointer',
                transition: 'all 0.15s',
              }}
            >
              {/* badge */}
              <div style={{
                width: 30, height: 30, borderRadius: 8, flexShrink: 0,
                background:
                  state === 'correct' ? T.good
                  : state === 'wrong'   ? T.bad
                  : selected === c.id   ? T.accent
                  : T.bg3,
                color: (state !== 'idle' || selected === c.id) ? T.bg0 : T.textDim,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
                fontFamily: T.mono, fontSize: 12, fontWeight: 600,
              }}>
                {state === 'correct'
                  ? ECIcon.check(T.bg0, 16)
                  : state === 'wrong'
                    ? ECIcon.close(T.bg0, 16)
                    : c.id}
              </div>

              {/* label */}
              <div style={{ fontSize: 15, color: T.text, lineHeight: 1.4 }}>
                {c.en}
              </div>
            </div>
          );
        })}
      </div>

      {/* ── Confirm button (before reveal) ── */}
      {selected && !revealed && (
        <div style={{ padding: '16px 22px 24px' }}>
          <div
            onClick={handleReveal}
            style={{
              height: 52, borderRadius: 14,
              background: T.accent, color: T.accentText,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              fontSize: 15, fontWeight: 600, cursor: 'pointer',
            }}
          >
            확인
          </div>
        </div>
      )}

      {/* ── Feedback strip + Next button (after reveal) ── */}
      {revealed && (
        <div style={{ padding: '12px 22px 24px' }}>
          {/* feedback */}
          <div style={{
            padding: '14px 16px', borderRadius: 14,
            background: isCorrect ? T.goodSoft : T.badSoft,
            border: `1px solid ${isCorrect ? T.good : T.bad}`,
            display: 'flex', alignItems: 'center', gap: 12,
            marginBottom: 10,
          }}>
            <div style={{
              width: 32, height: 32, borderRadius: 16,
              background: isCorrect ? T.good : T.bad,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              flexShrink: 0,
            }}>
              {isCorrect ? ECIcon.check(T.bg0, 18) : ECIcon.close(T.bg0, 18)}
            </div>
            <div style={{ flex: 1 }}>
              <div style={{
                fontSize: 14, fontWeight: 600,
                color: isCorrect ? T.good : T.bad,
              }}>
                {isCorrect ? '맞아요!' : '아쉽네요!'}
              </div>
              <div style={{ fontSize: 12, color: T.textDim, marginTop: 1 }}>
                {isCorrect
                  ? '정확한 표현이에요.'
                  : `정답은 "${correctChoice?.en}"이에요.`}
              </div>
            </div>
          </div>

          {/* next / finish */}
          <div
            onClick={handleNext}
            style={{
              height: 52, borderRadius: 14,
              background: T.text, color: T.bg0,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              fontSize: 15, fontWeight: 600, cursor: 'pointer',
            }}
          >
            {qIndex === 4 ? '시작하기' : '다음 질문'}
          </div>
        </div>
      )}
    </div>
  );
}

Object.assign(window, { ECScreenOnboarding });
