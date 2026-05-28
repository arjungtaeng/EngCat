import React, { useMemo, useState } from 'react';
import {
  View, Text, ScrollView, StyleSheet, TouchableOpacity, Image,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useFocusEffect } from '@react-navigation/native';
import { useTokens } from '../theme/useTokens';
import { useCardsStore } from '../store/useCardsStore';
import { useUserStore } from '../store/useUserStore';
import { Icon } from '../components/icons';
import { Placeholder } from '../components/primitives/Placeholder';
import { Logo } from '../components/Logo';
import { getTodaySession, getReviewSession, getDayOfYear } from '../utils/todaySession';
import { loadRecord, yesterdayKey, LearningRecord } from '../utils/learningRecord';

const COMP_LABELS: Record<keyof ReturnType<typeof getTodaySession>['composition'], string> = {
  words:        '단어',
  patterns:     '패턴',
  collocations: '콜로',
  idioms:       '이디엄',
  nuances:      '뉘앙스',
};

const GREETINGS = [
  'Good to see you,',
  'Welcome back,',
  "Let's learn today,",
  'Ready to level up?',
  'Time to practice,',
  'Keep it going,',
  'Great to have you,',
  "Let's make progress,",
];

const DAY_NAMES   = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
const MONTH_NAMES = ['January','February','March','April','May','June',
                     'July','August','September','October','November','December'];

interface Props {
  navigation: any;
}

export default function HomeScreen({ navigation }: Props) {
  const T = useTokens();
  const { id: userId, name, level, streakDays } = useUserStore();
  const {
    words, expressions,
    completedWordIds, completedSentenceIds,
  } = useCardsStore();

  const now    = new Date();
  const dateStr = `${DAY_NAMES[now.getDay()]}, ${MONTH_NAMES[now.getMonth()]} ${now.getDate()}`;
  const dayOfYear = getDayOfYear(now);
  const greetingWord = GREETINGS[dayOfYear % GREETINGS.length];

  const session = useMemo(
    () => getTodaySession(words, expressions, level),
    [words, expressions, level],
  );
  const { topicLabel: todayTopicLabel, composition, totalCards } = session;

  const totalDone = completedWordIds.size + completedSentenceIds.size;
  const progress  = totalCards > 0 ? Math.min(totalDone / totalCards, 1) : 0;
  const quizUnlocked = totalDone >= totalCards && totalCards > 0;

  // 어제 학습 기록 (있으면 복습, 없으면 예습)
  const [yesterday, setYesterday] = useState<LearningRecord>({ wordIds: [], sentenceIds: [] });
  useFocusEffect(
    React.useCallback(() => {
      let cancelled = false;
      loadRecord(yesterdayKey(userId)).then(r => { if (!cancelled) setYesterday(r); });
      return () => { cancelled = true; };
    }, [userId]),
  );

  const review = useMemo(
    () => getReviewSession(yesterday, words, expressions, level),
    [yesterday, words, expressions, level],
  );
  const reviewWords       = review.words;
  const reviewExpressions = review.expressions;
  const reviewCount       = reviewWords.length + reviewExpressions.length;

  const compEntries = (Object.keys(composition) as (keyof typeof composition)[])
    .filter(k => composition[k] > 0)
    .map(k => [COMP_LABELS[k], composition[k]] as const);

  const displayName = name
    ? (name.includes(' ')
        ? name.split(' ')[0]
        : /^[가-힣]+$/.test(name) && name.length >= 3 ? name.slice(1) : name)
    : '학습자';

  return (
    <SafeAreaView style={[styles.safe, { backgroundColor: T.bg1 }]} edges={['top']}>
      <ScrollView
        style={{ flex: 1 }}
        contentContainerStyle={{ paddingBottom: 100 }}
        showsVerticalScrollIndicator={false}
      >
        {/* ── Top bar ── */}
        <View style={styles.topbar}>
          <Logo size="sm" style={{ width: 32, height: 32 }} />
          <View style={{ flexDirection: 'row', alignItems: 'center', gap: 6 }} />
          <View style={{ flexDirection: 'row', alignItems: 'center', gap: 10 }}>
            <View style={[styles.streakChip, { backgroundColor: T.bg2, borderColor: T.hair }]}>
              <Icon.flame color={T.accent} size={14} />
              <Text style={[styles.streakChipText, { color: T.text }]}>{streakDays}</Text>
            </View>
            <TouchableOpacity
              onPress={() => navigation.navigate('Profile')}
              style={[styles.avatarBtn, { backgroundColor: T.bg2, borderColor: T.hair }]}
            >
              <Icon.user color={T.textDim} size={18} />
            </TouchableOpacity>
          </View>
        </View>

        {/* ── Greeting ── */}
        <View style={{ paddingHorizontal: 22, paddingTop: 24, paddingBottom: 18, flexDirection: 'row', alignItems: 'flex-start', justifyContent: 'space-between', gap: 16 }}>
          <View style={{ flex: 1 }}>
            <Text style={[styles.date, { color: T.textDim }]}>{dateStr}</Text>
            <Text style={[styles.greeting, { color: T.text, fontFamily: T.serif }]}>
              {greetingWord}{'\n'}
              <Text style={{ fontFamily: 'InstrumentSerif-Italic', color: T.accent, fontStyle: 'italic' }}>
                {displayName}.
              </Text>
            </Text>
          </View>
          <Logo size="sm" style={{ width: 56, height: 56, marginTop: 4 }} />
        </View>

        {/* ── Hero card: 오늘의 학습 ── */}
        <View style={{ paddingHorizontal: 18 }}>
          <View style={[styles.heroCard, { backgroundColor: T.bg3, borderColor: T.hair }]}>
            <Text style={[styles.heroLabel, { color: T.accent, fontFamily: T.mono }]}>
              오늘의 학습
            </Text>
            <Text style={[styles.heroTopic, { color: T.text, fontFamily: T.serif }]}>
              {todayTopicLabel}
            </Text>
            <Text style={[styles.heroComp, { color: T.textDim, fontFamily: T.mono }]}>
              {compEntries.map(([k, v]) => `${k} ${v}`).join(' · ')}
            </Text>

            {/* progress */}
            <View style={styles.progressRow}>
              <View style={[styles.progressBar, { backgroundColor: T.hair }]}>
                <View style={[styles.progressFill, { width: `${progress * 100}%` as any, backgroundColor: T.accent }]} />
              </View>
              <Text style={[styles.progressText, { color: T.textDim, fontFamily: T.mono }]}>
                {totalDone} / {totalCards}
              </Text>
            </View>

            {/* CTA */}
            <TouchableOpacity
              onPress={() => navigation.navigate('WordCard')}
              style={[styles.ctaBtn, { backgroundColor: T.accent }]}
            >
              <Text style={[styles.ctaText, { color: T.accentText }]}>
                {totalDone > 0 ? '이어서 학습하기' : '학습 시작하기'}
              </Text>
              <Icon.chevRight color={T.accentText} size={18} />
            </TouchableOpacity>
          </View>
        </View>

        {/* ── 복습할 것 / 예습하기 ── */}
        {reviewCount > 0 && (
          <>
            <View style={styles.sectionHeader}>
              <Text style={[styles.sectionTitle, { color: T.text }]}>
                {review.isPreview ? '예습하기' : '복습할 것'}
              </Text>
              <Text style={[styles.sectionCount, { color: T.textDim }]}>{reviewCount}개</Text>
            </View>
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ paddingHorizontal: 22, gap: 10 }}
              style={{ marginBottom: 4 }}
            >
              {reviewWords.map(w => (
                <TouchableOpacity
                  key={`w-${w.id}`}
                  onPress={() => {
                    const idx = words.findIndex(x => x.id === w.id);
                    if (idx >= 0) {
                      useCardsStore.getState().setWordIndex(idx);
                      navigation.navigate('WordCard');
                    }
                  }}
                  style={{ width: 130 }}
                >
                  {w.img
                    ? <Image source={{ uri: w.img }} style={{ width: '100%', height: 150, borderRadius: 14 }} />
                    : <Placeholder height={150} tint={w.tint} radius={14} label={w.en} />}
                  <Text style={[styles.reviewEn, { color: T.text, fontFamily: T.display }]}>{w.en}</Text>
                  <Text style={[styles.reviewKo, { color: T.textDim }]}>{w.ko.split(',')[0]}</Text>
                </TouchableOpacity>
              ))}
              {reviewExpressions.map(e => (
                <TouchableOpacity
                  key={`e-${e.id}`}
                  onPress={() => {
                    const idx = expressions.findIndex(x => x.id === e.id);
                    if (idx >= 0) {
                      useCardsStore.getState().setSentenceIndex(idx);
                      navigation.navigate('SentenceCard');
                    }
                  }}
                  style={{ width: 130 }}
                >
                  {e.img
                    ? <Image source={{ uri: e.img }} style={{ width: '100%', height: 150, borderRadius: 14 }} />
                    : <Placeholder height={150} tint={e.tint} radius={14} label={e.en} />}
                  <Text
                    style={[styles.reviewEn, { color: T.text, fontFamily: T.display }]}
                    numberOfLines={2}
                  >{e.en}</Text>
                  <Text
                    style={[styles.reviewKo, { color: T.textDim }]}
                    numberOfLines={1}
                  >{e.ko}</Text>
                </TouchableOpacity>
              ))}
            </ScrollView>
          </>
        )}

        {/* ── 오늘의 퀴즈 ── */}
        <View style={{ paddingHorizontal: 22, marginTop: 28 }}>
          <Text style={[styles.sectionTitle, { color: T.text, marginBottom: 10 }]}>오늘의 퀴즈</Text>
          <TouchableOpacity
            disabled={!quizUnlocked}
            onPress={() => navigation.navigate('Quiz')}
            style={[
              styles.quizCard,
              {
                backgroundColor: quizUnlocked ? T.accentSoft : T.bg2,
                borderColor:     quizUnlocked ? T.accent     : T.hair,
                opacity:         quizUnlocked ? 1 : 0.7,
              },
            ]}
          >
            <View style={{ flex: 1 }}>
              <Text style={[styles.quizTitle, { color: quizUnlocked ? T.accent : T.textDim }]}>
                {quizUnlocked ? '복습 퀴즈 풀기' : '학습을 완료하면 열려요'}
              </Text>
              <Text style={[styles.quizSub, { color: T.textMute, fontFamily: T.mono }]}>
                {quizUnlocked
                  ? '오늘 배운 내용으로 4지선다 10문제'
                  : `${totalDone} / ${totalCards} 완료`}
              </Text>
            </View>
            <Icon.chevRight color={quizUnlocked ? T.accent : T.textMute} size={20} />
          </TouchableOpacity>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safe:          { flex: 1 },
  topbar:        { paddingHorizontal: 22, paddingTop: 6, flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center' },
  logo:          { fontSize: 22, letterSpacing: -0.4 },
  streakChip:    { flexDirection: 'row', alignItems: 'center', gap: 5, paddingHorizontal: 11, paddingVertical: 6, borderRadius: 999, borderWidth: 1 },
  streakChipText:{ fontSize: 13, fontWeight: '600' },
  avatarBtn:     { width: 36, height: 36, borderRadius: 999, alignItems: 'center', justifyContent: 'center', borderWidth: 1 },
  date:          { fontSize: 13, marginBottom: 6 },
  greeting:      { fontSize: 30, lineHeight: 36, letterSpacing: -0.4 },
  heroCard:      { borderRadius: 24, padding: 18, borderWidth: 1, overflow: 'hidden' },
  heroLabel:     { fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase' },
  heroTopic:     { marginTop: 8, fontSize: 26, lineHeight: 30 },
  heroComp:      { marginTop: 6, fontSize: 12, letterSpacing: 0.3 },
  progressRow:   { marginTop: 18, flexDirection: 'row', alignItems: 'center', gap: 12 },
  progressBar:   { flex: 1, height: 6, borderRadius: 3, overflow: 'hidden' },
  progressFill:  { height: '100%', borderRadius: 3 },
  progressText:  { fontSize: 12 },
  ctaBtn:        { marginTop: 16, height: 50, borderRadius: 14, flexDirection: 'row', alignItems: 'center', justifyContent: 'center', gap: 8 },
  ctaText:       { fontSize: 15, fontWeight: '600' },
  sectionHeader: { paddingHorizontal: 22, paddingTop: 28, paddingBottom: 10, flexDirection: 'row', justifyContent: 'space-between', alignItems: 'baseline' },
  sectionTitle:  { fontSize: 17, fontWeight: '600', letterSpacing: -0.2 },
  sectionCount:  { fontSize: 12 },
  reviewEn:      { marginTop: 8, fontSize: 17 },
  reviewKo:      { fontSize: 12, marginTop: 1 },
  quizCard:      { borderRadius: 16, padding: 16, borderWidth: 1, flexDirection: 'row', alignItems: 'center', gap: 12 },
  quizTitle:     { fontSize: 15, fontWeight: '600', marginBottom: 4 },
  quizSub:       { fontSize: 11.5 },
});
