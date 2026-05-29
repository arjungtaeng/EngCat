// EngCat — Quiz / Spaced repetition review

// 퀴즈 결과 저장: ec_quiz_stats_{userId} = { wordId: { c: 정답수, w: 오답수 } }
function _saveQuizStat(wordId, correct) {
  if (!wordId) return;
  try {
    const u = JSON.parse(localStorage.getItem('engcat_user') || '{}');
    const key = 'ec_quiz_stats_' + (u.email || 'guest');
    const stats = JSON.parse(localStorage.getItem(key) || '{}');
    if (!stats[wordId]) stats[wordId] = { c: 0, w: 0 };
    if (correct) stats[wordId].c++; else stats[wordId].w++;
    localStorage.setItem(key, JSON.stringify(stats));
  } catch(e) {}
}

function buildWordQuizQuestions(words, count = 10) {
  if (!words || words.length < 4) return [];
  const pool = [...words].sort(() => Math.random() - 0.5).slice(0, Math.min(words.length, 40));
  const questions = [];
  for (let i = 0; i < Math.min(count, pool.length); i++) {
    const correct = pool[i];
    const wrong = words.filter(w => w.id !== correct.id).sort(() => Math.random() - 0.5).slice(0, 3);
    if (wrong.length < 3) break;
    const choices = [
      { id: 'A', ko: correct.ko, en: correct.en, ok: true },
      { id: 'B', ko: wrong[0].ko, en: wrong[0].en, ok: false },
      { id: 'C', ko: wrong[1].ko, en: wrong[1].en, ok: false },
      { id: 'D', ko: wrong[2].ko, en: wrong[2].en, ok: false },
    ].sort(() => Math.random() - 0.5).map((c, j) => ({ ...c, id: 'ABCD'[j] }));
    questions.push({ type: 'word-ko', word: correct, choices });
  }
  return questions;
}

function ECScreenQuiz() {
  const T = ECTokens;
  const MAX_LIVES = 3;
  const TOTAL_Q = 10;

  const words = window.ECData?.words || [];
  const [questions] = React.useState(() => buildWordQuizQuestions(words, TOTAL_Q));
  const [qIdx, setQIdx] = React.useState(0);
  const [selected, setSelected] = React.useState(null);
  const [lives, setLives] = React.useState(MAX_LIVES);
  const [done, setDone] = React.useState(false);
  const [score, setScore] = React.useState(0);
  const [animKey, setAnimKey] = React.useState(0);

  if (!words.length || questions.length === 0) {
    return (
      <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', gap: 16, padding: '0 32px' }}>
        <ECStatusBar />
        <div style={{ fontSize: 15, color: T.textDim, textAlign: 'center', lineHeight: 1.6 }}>
          단어 카드를 먼저 학습하면<br/>퀴즈를 시작할 수 있어요.
        </div>
        <div onClick={() => window.ECNav?.go('word-card')} style={{
          padding: '12px 24px', borderRadius: 12, background: T.accent, color: T.accentText,
          fontSize: 14, fontWeight: 600, cursor: 'pointer',
        }}>단어 학습하기</div>
      </div>
    );
  }

  const q = questions[qIdx];
  const answered = selected !== null;
  const isCorrect = answered && (q.choices.find(c => c.id === selected)?.ok ?? false);
  const progressPct = Math.round((qIdx / questions.length) * 100);

  const handleSelect = (id) => {
    if (answered) return;
    setSelected(id);
    const ok = q.choices.find(c => c.id === id)?.ok;
    _saveQuizStat(q.word.id, ok);   // 복습 가중치용 퀴즈 결과 저장
    if (window.ECLogQuiz) window.ECLogQuiz(!!ok);  // 리더보드 주간 점수용 일자별 기록
    if (ok) setScore(s => s + 1);
    else setLives(l => l - 1);
  };

  const handleNext = () => {
    if (qIdx + 1 >= questions.length || lives <= (isCorrect ? 0 : 1) - 1) {
      setDone(true);
    } else {
      setQIdx(i => i + 1);
      setSelected(null);
      setAnimKey(k => k + 1);
    }
  };

  if (done) {
    const pct = Math.round((score / questions.length) * 100);
    return (
      <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
        <ECStatusBar />
        <div style={{ flex: 1, display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', padding: '0 32px', gap: 24 }}>
          <div style={{ textAlign: 'center' }}>
            <div style={{ fontSize: 48, fontFamily: T.serif, color: T.accent, marginBottom: 8 }}>
              {pct >= 80 ? '🎯' : pct >= 50 ? '👍' : '💪'}
            </div>
            <div style={{ fontSize: 22, fontFamily: T.serif, color: T.text, marginBottom: 4 }}>
              {pct >= 80 ? '후륭해요!' : pct >= 50 ? '잘 하셨어요!' : '다시 도전해 보세요!'}
            </div>
            <div style={{ fontSize: 14, color: T.textDim }}>{questions.length}문제 중 {score}개 정답</div>
          </div>
          <div style={{
            width: '100%', padding: '20px 24px', borderRadius: 18,
            background: T.bg2, border: `1px solid ${T.hair}`,
            display: 'flex', justifyContent: 'space-around',
          }}>
            <div style={{ textAlign: 'center' }}>
              <div style={{ fontFamily: T.mono, fontSize: 28, fontWeight: 700, color: T.accent }}>{pct}%</div>
              <div style={{ fontSize: 11, color: T.textMute, marginTop: 2 }}>정답률</div>
            </div>
            <div style={{ width: 1, background: T.hair }} />
            <div style={{ textAlign: 'center' }}>
              <div style={{ fontFamily: T.mono, fontSize: 28, fontWeight: 700, color: T.good }}>{score}</div>
              <div style={{ fontSize: 11, color: T.textMute, marginTop: 2 }}>정답</div>
            </div>
            <div style={{ width: 1, background: T.hair }} />
            <div style={{ textAlign: 'center' }}>
              <div style={{ fontFamily: T.mono, fontSize: 28, fontWeight: 700, color: T.bad }}>{questions.length - score}</div>
              <div style={{ fontSize: 11, color: T.textMute, marginTop: 2 }}>오답</div>
            </div>
          </div>
          <div style={{ display: 'flex', gap: 10, width: '100%' }}>
            <div onClick={() => window.ECNav?.go('home')} style={{
              flex: 1, height: 48, borderRadius: 14,
              background: T.bg2, border: `1px solid ${T.hair}`,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              fontSize: 14, fontWeight: 600, color: T.text, cursor: 'pointer',
            }}>홈으로</div>
            <div onClick={() => { setQIdx(0); setSelected(null); setLives(MAX_LIVES); setScore(0); setDone(false); setAnimKey(k => k + 1); }} style={{
              flex: 1, height: 48, borderRadius: 14, background: T.accent,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              fontSize: 14, fontWeight: 600, color: T.accentText, cursor: 'pointer',
            }}>다시 풋기</div>
          </div>
        </div>
      </div>
    );
  }

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
          <div style={{ width: `${progressPct}%`, height: '100%', background: T.accent, borderRadius: 4, transition: 'width 0.3s' }} />
        </div>

        <div style={{
          display: 'flex', alignItems: 'center', gap: 4,
          padding: '5px 9px', borderRadius: 999, background: T.bg2, border: `1px solid ${T.hair}`,
        }}>
          {[...Array(MAX_LIVES)].map((_, i) => ECIcon.heart(i < lives ? T.bad : T.hairStr, 14, i < lives))}
        </div>
      </div>

      {/* Quiz prompt */}
      <div key={animKey} className="ec-fade-up" style={{ flex: 1, display: 'flex', flexDirection: 'column' }}>
        <div style={{ padding: '16px 22px 12px' }}>
          <div style={{ fontFamily: T.mono, fontSize: 10, letterSpacing: 1.4, color: T.textMute, textTransform: 'uppercase', marginBottom: 10 }}>
            QUESTION {String(qIdx + 1).padStart(2, '0')} / {String(questions.length).padStart(2, '0')}
          </div>
          <div style={{ fontSize: 13.5, color: T.textDim, marginBottom: 12 }}>
            알맞은 한국어 뜻을 골라주세요.
          </div>

          {/* Word prompt */}
          <div style={{
            padding: '22px 20px', borderRadius: 18,
            background: T.bg2, border: `1px solid ${T.hair}`,
            marginBottom: 20,
          }}>
            {q.word.pos && (
              <div style={{ fontFamily: T.mono, fontSize: 9.5, color: T.textMute, letterSpacing: 1, textTransform: 'uppercase', marginBottom: 6 }}>{q.word.pos}</div>
            )}
            <div style={{ fontFamily: T.display, fontWeight: 400, fontSize: 38, color: T.text, letterSpacing: -0.8, lineHeight: 1 }}>
              {q.word.en}
            </div>
            {q.word.ipa && (
              <div style={{ fontFamily: T.mono, fontSize: 12, color: T.textMute, marginTop: 4 }}>{q.word.ipa}</div>
            )}
          </div>
        </div>

        {/* Choices */}
        <div style={{ padding: '0 20px', display: 'flex', flexDirection: 'column', gap: 10, flex: 1 }}>
          {q.choices.map(c => {
            const state = !answered ? 'idle' : c.ok ? 'correct' : c.id === selected ? 'wrong' : 'idle';
            return (
              <div key={c.id} onClick={() => handleSelect(c.id)} style={{
                padding: '14px 16px', borderRadius: 14,
                background: state === 'correct' ? T.goodSoft : state === 'wrong' ? T.badSoft : T.bg2,
                border: `1px solid ${state === 'correct' ? T.good : state === 'wrong' ? T.bad : T.hair}`,
                display: 'flex', alignItems: 'center', gap: 12,
                cursor: answered ? 'default' : 'pointer',
                transition: 'background 0.15s, border-color 0.15s',
              }}>
                <div style={{
                  width: 30, height: 30, borderRadius: 8, flexShrink: 0,
                  background: state === 'correct' ? T.good : state === 'wrong' ? T.bad : T.bg3,
                  color: state !== 'idle' ? T.bg0 : T.textDim,
                  display: 'flex', alignItems: 'center', justifyContent: 'center',
                  fontFamily: T.mono, fontSize: 12, fontWeight: 600,
                }}>{state === 'correct' ? ECIcon.check(T.bg0, 16) : state === 'wrong' ? ECIcon.close(T.bg0, 16) : c.id}</div>
                <div style={{ fontFamily: T.mono, fontSize: 15.5, color: T.text }}>{c.ko}</div>
              </div>
            );
          })}
        </div>

        {/* Feedback + next */}
        {answered && (
          <div style={{ padding: '14px 20px 28px' }}>
            <div style={{
              padding: '14px 16px', borderRadius: 14,
              background: isCorrect ? T.goodSoft : T.badSoft,
              border: `1px solid ${isCorrect ? T.good : T.bad}`,
              display: 'flex', alignItems: 'center', gap: 12,
            }}>
              <div style={{
                width: 32, height: 32, borderRadius: 16, flexShrink: 0,
                background: isCorrect ? T.good : T.bad,
                display: 'flex', alignItems: 'center', justifyContent: 'center',
              }}>{isCorrect ? ECIcon.check(T.bg0, 18) : ECIcon.close(T.bg0, 18)}</div>
              <div style={{ flex: 1 }}>
                <div style={{ fontSize: 14, fontWeight: 600, color: isCorrect ? T.good : T.bad }}>
                  {isCorrect ? '정답이에요!' : '아쉼울네요...'}
                </div>
                <div style={{ fontSize: 12, color: T.textDim, marginTop: 1 }}>
                  {isCorrect
                    ? `${q.word.en} = ${q.word.ko}`
                    : `정답은 "${q.word.ko}"예요.`
                  }
                </div>
              </div>
              <div onClick={handleNext} style={{
                padding: '8px 14px', borderRadius: 10,
                background: isCorrect ? T.good : T.bad, color: T.bg0,
                fontSize: 13, fontWeight: 600, cursor: 'pointer', whiteSpace: 'nowrap',
              }}>{qIdx + 1 >= questions.length ? '완료' : '다음'}</div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}

Object.assign(window, { ECScreenQuiz });
