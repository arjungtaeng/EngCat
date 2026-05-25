import React, { useState } from 'react';
import {
  View, Text, StyleSheet, TouchableOpacity, ScrollView,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useTokens } from '../theme/useTokens';
import { useCardsStore, WordCard } from '../store/useCardsStore';
import { Icon } from '../components/icons';

const MAX_LIVES = 3;
const TOTAL_Q = 10;

interface Choice { id: string; ko: string; en: string; ok: boolean }
interface Question { word: WordCard; choices: Choice[] }

function buildQuestions(words: WordCard[], count = TOTAL_Q): Question[] {
  if (!words || words.length < 4) return [];
  const pool = [...words].sort(() => Math.random() - 0.5).slice(0, Math.min(words.length, 40));
  const questions: Question[] = [];
  for (let i = 0; i < Math.min(count, pool.length); i++) {
    const correct = pool[i];
    const wrong = words
      .filter(w => w.id !== correct.id)
      .sort(() => Math.random() - 0.5)
      .slice(0, 3);
    if (wrong.length < 3) break;
    const choices: Choice[] = [
      { id: 'A', ko: correct.ko, en: correct.en, ok: true },
      { id: 'B', ko: wrong[0].ko, en: wrong[0].en, ok: false },
      { id: 'C', ko: wrong[1].ko, en: wrong[1].en, ok: false },
      { id: 'D', ko: wrong[2].ko, en: wrong[2].en, ok: false },
    ]
      .sort(() => Math.random() - 0.5)
      .map((c, j) => ({ ...c, id: 'ABCD'[j] }));
    questions.push({ word: correct, choices });
  }
  return questions;
}

interface Props { navigation: any }

export default function QuizScreen({ navigation }: Props) {
  const T = useTokens();
  const words = useCardsStore(s => s.words);

  const [questions] = useState<Question[]>(() => buildQuestions(words, TOTAL_Q));
  const [qIdx, setQIdx] = useState(0);
  const [selected, setSelected] = useState<string | null>(null);
  const [lives, setLives] = useState(MAX_LIVES);
  const [score, setScore] = useState(0);
  const [done, setDone] = useState(false);

  if (!words.length || questions.length === 0) {
    return (
      <SafeAreaView style={[styles.safe, { backgroundColor: T.bg1 }]}>
        <View style={styles.emptyContainer}>
          <Text style={[styles.emptyTitle, { color: T.text, fontFamily: T.serif }]}>
            단어를 먼저 학습해 주세요
          </Text>
          <Text style={[styles.emptySub, { color: T.textDim }]}>
            단어 카드를 학습하면 퀴즈를 시작할 수 있어요.
          </Text>
          <TouchableOpacity
            onPress={() => navigation.navigate('WordCard')}
            style={[styles.emptyBtn, { backgroundColor: T.accent }]}
          >
            <Text style={[styles.emptyBtnText, { color: T.accentText }]}>단어 학습하기</Text>
          </TouchableOpacity>
        </View>
      </SafeAreaView>
    );
  }

  const q = questions[qIdx];
  const answered = selected !== null;
  const isCorrect = answered && (q.choices.find(c => c.id === selected)?.ok ?? false);
  const progressPct = Math.round((qIdx / questions.length) * 100);
  const isGameOver = lives <= 0;

  const handleSelect = (id: string) => {
    if (answered || isGameOver) return;
    setSelected(id);
    const ok = q.choices.find(c => c.id === id)?.ok;
    if (ok) setScore(s => s + 1);
    else {
      const newLives = lives - 1;
      setLives(newLives);
      if (newLives <= 0) setTimeout(() => setDone(true), 800);
    }
  };

  const handleNext = () => {
    if (qIdx + 1 >= questions.length) {
      setDone(true);
    } else {
      setQIdx(i => i + 1);
      setSelected(null);
    }
  };

  const handleRestart = () => {
    setQIdx(0);
    setSelected(null);
    setLives(MAX_LIVES);
    setScore(0);
    setDone(false);
  };

  if (done) {
    const pct = Math.round((score / questions.length) * 100);
    const isGood = pct >= 80;
    const isOk = pct >= 50;
    return (
      <SafeAreaView style={[styles.safe, { backgroundColor: T.bg1 }]}>
        <ScrollView contentContainerStyle={styles.resultContainer}>
          <Text style={[styles.resultEmoji, { color: T.accent, fontFamily: T.serif }]}>
            {isGood ? '훌륭해요!' : isOk ? '잘 하셨어요!' : '다시 도전해 보세요!'}
          </Text>
          <Text style={[styles.resultSub, { color: T.textDim }]}>
            {questions.length}문제 중 {score}개 정답
          </Text>
          <View style={[styles.statsCard, { backgroundColor: T.bg2, borderColor: T.hair }]}>
            <View style={styles.statItem}>
              <Text style={[styles.statNum, { color: T.accent, fontFamily: T.mono }]}>{pct}%</Text>
              <Text style={[styles.statLabel, { color: T.textMute }]}>정답률</Text>
            </View>
            <View style={[styles.statDivider, { backgroundColor: T.hair }]} />
            <View style={styles.statItem}>
              <Text style={[styles.statNum, { color: T.good, fontFamily: T.mono }]}>{score}</Text>
              <Text style={[styles.statLabel, { color: T.textMute }]}>정답</Text>
            </View>
            <View style={[styles.statDivider, { backgroundColor: T.hair }]} />
            <View style={styles.statItem}>
              <Text style={[styles.statNum, { color: T.bad, fontFamily: T.mono }]}>{questions.length - score}</Text>
              <Text style={[styles.statLabel, { color: T.textMute }]}>오답</Text>
            </View>
          </View>
          <View style={styles.resultBtns}>
            <TouchableOpacity
              onPress={() => navigation.navigate('Home')}
              style={[styles.resultBtn, { backgroundColor: T.bg2, borderColor: T.hair, borderWidth: 1 }]}
            >
              <Text style={[styles.resultBtnText, { color: T.text }]}>홈으로</Text>
            </TouchableOpacity>
            <TouchableOpacity
              onPress={handleRestart}
              style={[styles.resultBtn, { backgroundColor: T.accent }]}
            >
              <Text style={[styles.resultBtnText, { color: T.accentText }]}>다시 풀기</Text>
            </TouchableOpacity>
          </View>
        </ScrollView>
      </SafeAreaView>
    );
  }

  return (
    <SafeAreaView style={[styles.safe, { backgroundColor: T.bg1 }]}>
      {/* Top bar */}
      <View style={styles.topBar}>
        <TouchableOpacity
          onPress={() => navigation.navigate('Home')}
          style={[styles.closeBtn, { backgroundColor: T.bg2, borderColor: T.hair }]}
        >
          <Icon.close color={T.textDim} size={18} />
        </TouchableOpacity>
        <View style={[styles.progressBar, { backgroundColor: T.bg2 }]}>
          <View style={[styles.progressFill, { width: `${progressPct}%` as any, backgroundColor: T.accent }]} />
        </View>
        <View style={[styles.livesPill, { backgroundColor: T.bg2, borderColor: T.hair }]}>
          {Array.from({ length: MAX_LIVES }).map((_, i) => (
            <Icon.heart key={i} color={i < lives ? T.bad : T.hairStr} size={14} filled={i < lives} />
          ))}
        </View>
      </View>

      {/* Question area */}
      <ScrollView contentContainerStyle={styles.questionArea} showsVerticalScrollIndicator={false}>
        <Text style={[styles.qCounter, { color: T.textMute, fontFamily: T.mono }]}>
          QUESTION {String(qIdx + 1).padStart(2, '0')} / {String(questions.length).padStart(2, '0')}
        </Text>
        <Text style={[styles.qPrompt, { color: T.textDim }]}>알맞은 한국어 뜻을 골라주세요.</Text>

        {/* Word prompt card */}
        <View style={[styles.wordCard, { backgroundColor: T.bg2, borderColor: T.hair }]}>
          {q.word.pos && (
            <Text style={[styles.wordPos, { color: T.textMute, fontFamily: T.mono }]}>{q.word.pos}</Text>
          )}
          <Text style={[styles.wordEn, { color: T.text, fontFamily: T.serif }]}>{q.word.en}</Text>
          {q.word.ipa && (
            <Text style={[styles.wordIpa, { color: T.textMute, fontFamily: T.mono }]}>{q.word.ipa}</Text>
          )}
        </View>

        {/* Choices */}
        <View style={styles.choices}>
          {q.choices.map(c => {
            const state = !answered ? 'idle' : c.ok ? 'correct' : c.id === selected ? 'wrong' : 'idle';
            return (
              <TouchableOpacity
                key={c.id}
                onPress={() => handleSelect(c.id)}
                activeOpacity={answered ? 1 : 0.75}
                style={[
                  styles.choice,
                  {
                    backgroundColor: state === 'correct' ? T.goodSoft : state === 'wrong' ? T.badSoft : T.bg2,
                    borderColor: state === 'correct' ? T.good : state === 'wrong' ? T.bad : T.hair,
                  },
                ]}
              >
                <View style={[
                  styles.choiceId,
                  { backgroundColor: state === 'correct' ? T.good : state === 'wrong' ? T.bad : T.bg3 },
                ]}>
                  {state === 'correct'
                    ? <Icon.check color={T.bg0} size={16} />
                    : state === 'wrong'
                      ? <Icon.close color={T.bg0} size={16} />
                      : <Text style={[styles.choiceIdText, { color: T.textDim, fontFamily: T.mono }]}>{c.id}</Text>
                  }
                </View>
                <Text style={[styles.choiceKo, { color: T.text, fontFamily: T.mono }]}>{c.ko}</Text>
              </TouchableOpacity>
            );
          })}
        </View>
      </ScrollView>

      {/* Feedback bar */}
      {answered && (
        <View style={[
          styles.feedbackBar,
          { backgroundColor: isCorrect ? T.goodSoft : T.badSoft, borderColor: isCorrect ? T.good : T.bad },
        ]}>
          <View style={[styles.feedbackIcon, { backgroundColor: isCorrect ? T.good : T.bad }]}>
            {isCorrect
              ? <Icon.check color={T.bg0} size={18} />
              : <Icon.close color={T.bg0} size={18} />
            }
          </View>
          <View style={{ flex: 1 }}>
            <Text style={[styles.feedbackTitle, { color: isCorrect ? T.good : T.bad }]}>
              {isCorrect ? '정답이에요!' : '아쉽네요...'}
            </Text>
            <Text style={[styles.feedbackSub, { color: T.textDim }]}>
              {isCorrect ? `${q.word.en} = ${q.word.ko}` : `정답은 "${q.word.ko}"예요.`}
            </Text>
          </View>
          <TouchableOpacity
            onPress={handleNext}
            style={[styles.feedbackBtn, { backgroundColor: isCorrect ? T.good : T.bad }]}
          >
            <Text style={[styles.feedbackBtnText, { color: T.bg0 }]}>
              {qIdx + 1 >= questions.length ? '완료' : '다음'}
            </Text>
          </TouchableOpacity>
        </View>
      )}
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safe:           { flex: 1 },
  emptyContainer: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 32, gap: 16 },
  emptyTitle:     { fontSize: 22, textAlign: 'center' },
  emptySub:       { fontSize: 14, textAlign: 'center', lineHeight: 20 },
  emptyBtn:       { paddingHorizontal: 24, paddingVertical: 12, borderRadius: 12 },
  emptyBtnText:   { fontSize: 14, fontWeight: '600' },
  topBar:         { flexDirection: 'row', alignItems: 'center', paddingHorizontal: 20, paddingVertical: 4, gap: 12 },
  closeBtn:       { width: 36, height: 36, borderRadius: 12, borderWidth: 1, alignItems: 'center', justifyContent: 'center' },
  progressBar:    { flex: 1, height: 8, borderRadius: 4, overflow: 'hidden' },
  progressFill:   { height: '100%', borderRadius: 4 },
  livesPill:      { flexDirection: 'row', alignItems: 'center', gap: 4, paddingHorizontal: 9, paddingVertical: 5, borderRadius: 999, borderWidth: 1 },
  questionArea:   { padding: 20, paddingBottom: 100 },
  qCounter:       { fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase', marginBottom: 10 },
  qPrompt:        { fontSize: 13.5, marginBottom: 12 },
  wordCard:       { borderRadius: 18, padding: 22, borderWidth: 1, marginBottom: 20 },
  wordPos:        { fontSize: 9.5, letterSpacing: 1, textTransform: 'uppercase', marginBottom: 6 },
  wordEn:         { fontSize: 38, letterSpacing: -0.8, lineHeight: 40 },
  wordIpa:        { fontSize: 12, marginTop: 4 },
  choices:        { gap: 10 },
  choice:         { padding: 14, borderRadius: 14, borderWidth: 1, flexDirection: 'row', alignItems: 'center', gap: 12 },
  choiceId:       { width: 30, height: 30, borderRadius: 8, alignItems: 'center', justifyContent: 'center' },
  choiceIdText:   { fontSize: 12, fontWeight: '600' },
  choiceKo:       { fontSize: 15.5 },
  feedbackBar:    { position: 'absolute', bottom: 0, left: 0, right: 0, padding: 14, borderTopWidth: 1, flexDirection: 'row', alignItems: 'center', gap: 12 },
  feedbackIcon:   { width: 32, height: 32, borderRadius: 16, alignItems: 'center', justifyContent: 'center' },
  feedbackTitle:  { fontSize: 14, fontWeight: '600' },
  feedbackSub:    { fontSize: 12, marginTop: 1 },
  feedbackBtn:    { paddingHorizontal: 14, paddingVertical: 8, borderRadius: 10 },
  feedbackBtnText: { fontSize: 13, fontWeight: '600' },
  resultContainer: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 32, gap: 24 },
  resultEmoji:    { fontSize: 22, textAlign: 'center' },
  resultSub:      { fontSize: 14, textAlign: 'center' },
  statsCard:      { width: '100%', borderRadius: 18, borderWidth: 1, padding: 20, flexDirection: 'row', justifyContent: 'space-around' },
  statItem:       { alignItems: 'center' },
  statNum:        { fontSize: 28, fontWeight: '700', marginBottom: 2 },
  statLabel:      { fontSize: 11, marginTop: 2 },
  statDivider:    { width: 1 },
  resultBtns:     { flexDirection: 'row', gap: 10, width: '100%' },
  resultBtn:      { flex: 1, height: 48, borderRadius: 14, alignItems: 'center', justifyContent: 'center' },
  resultBtnText:  { fontSize: 14, fontWeight: '600' },
});
