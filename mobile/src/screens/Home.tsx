import React from 'react';
import {
  View, Text, ScrollView, StyleSheet, TouchableOpacity,
  Image, Dimensions,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useTokens } from '../theme/useTokens';
import { useCardsStore } from '../store/useCardsStore';
import { useUserStore } from '../store/useUserStore';
import { Icon } from '../components/icons';
import { Placeholder } from '../components/primitives/Placeholder';

const HOUR = new Date().getHours();
const GREETING = HOUR < 12 ? '좋은 아침이에요' : HOUR < 18 ? '안녕하세요' : '좋은 저녁이에요';

const CEFR_COMPOSITIONS: Record<string, Record<string, number>> = {
  A1: { 단어: 10, 패턴: 5 },
  A2: { 단어: 10, 패턴: 5 },
  B1: { 단어: 8, 패턴: 4, 콜로케이션: 3 },
  B2: { 단어: 8, 패턴: 4, 콜로케이션: 3 },
  C1: { 단어: 6, 패턴: 3, 콜로케이션: 3, 이디엄: 2, 뉘앙스: 1 },
  C2: { 단어: 6, 패턴: 3, 콜로케이션: 3, 이디엄: 2, 뉘앙스: 1 },
};

interface Props {
  navigation: any;
}

export default function HomeScreen({ navigation }: Props) {
  const T = useTokens();
  const { name, level } = useUserStore();
  const {
    words, expressions,
    completedWordIds, completedSentenceIds,
    wordIndex, sentenceIndex,
  } = useCardsStore();

  const comp = CEFR_COMPOSITIONS[level] ?? CEFR_COMPOSITIONS.B1;
  const totalCards = Object.values(comp).reduce((a, b) => a + b, 0);
  const totalDone = completedWordIds.size + completedSentenceIds.size;
  const progress = Math.min(totalDone / totalCards, 1);

  const todayWords = words.slice(0, comp['단어'] ?? 8);
  const quizUnlocked = totalDone >= totalCards;
  const isDark = T.text === '#F8F5EF';

  return (
    <SafeAreaView style={[styles.safe, { backgroundColor: T.bg1 }]} edges={['top']}>
      <ScrollView
        style={{ flex: 1 }}
        contentContainerStyle={{ paddingBottom: 100 }}
        showsVerticalScrollIndicator={false}
      >
        {/* ── Header ── */}
        <View style={styles.header}>
          <View>
            <Text style={[styles.greeting, { color: T.textMute, fontFamily: T.mono }]}>
              {GREETING}{name ? `, ${name}님` : ''}
            </Text>
            <Text style={[styles.title, { color: T.text, fontFamily: T.serif }]}>
              오늘의 학습
            </Text>
          </View>
          <TouchableOpacity
            onPress={() => navigation.navigate('Profile')}
            style={[styles.avatarBtn, { backgroundColor: T.bg3, borderColor: T.hair, borderWidth: 1 }]}
          >
            <Icon.user color={T.textMute} size={20} />
          </TouchableOpacity>
        </View>

        {/* ── Progress card ── */}
        <View style={[styles.progressCard, { backgroundColor: T.bg2, borderColor: T.hair }]}>
          <View style={styles.progressRow}>
            <Text style={[styles.progressLabel, { color: T.textMute, fontFamily: T.mono }]}>오늘 진도</Text>
            <Text style={[styles.progressPct, { color: T.accent, fontFamily: T.mono }]}>
              {Math.round(progress * 100)}%
            </Text>
          </View>
          <View style={[styles.progressBar, { backgroundColor: T.bg3 }]}>
            <View style={[styles.progressFill, { width: `${progress * 100}%` as any, backgroundColor: T.accent }]} />
          </View>
          <Text style={[styles.progressSub, { color: T.textFaint, fontFamily: T.mono }]}>
            {Object.entries(comp).map(([k, v]) => `${k} ${v}`).join(' · ')}
          </Text>
        </View>

        {/* ── Today's words preview ── */}
        <View style={styles.sectionHeader}>
          <Text style={[styles.sectionTitle, { color: T.text }]}>단어 카드</Text>
          <Text style={[styles.sectionCount, { color: T.textMute, fontFamily: T.mono }]}>
            {completedWordIds.size} / {comp['단어'] ?? 8}
          </Text>
        </View>

        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={{ paddingHorizontal: 20, gap: 12 }}
          style={{ marginBottom: 24 }}
        >
          {todayWords.map((w, i) => {
            const done = completedWordIds.has(w.id);
            return (
              <TouchableOpacity
                key={w.id}
                onPress={() => {
                  useCardsStore.getState().setWordIndex(i);
                  navigation.navigate('WordCard');
                }}
                style={[
                  styles.wordChip,
                  {
                    backgroundColor: done ? T.accentSoft : T.bg2,
                    borderColor: done ? T.accent : T.hair,
                  },
                ]}
              >
                <Text style={[
                  styles.wordChipEn,
                  { color: done ? T.accent : T.text, fontFamily: T.serif },
                ]}>{w.en}</Text>
                <Text style={[styles.wordChipKo, { color: T.textMute }]}>{w.ko}</Text>
              </TouchableOpacity>
            );
          })}
        </ScrollView>

        {/* ── CTA buttons ── */}
        <View style={{ paddingHorizontal: 20, gap: 12 }}>
          {/* Start / Continue word learning */}
          <TouchableOpacity
            onPress={() => navigation.navigate('WordCard')}
            style={[styles.ctaBtn, { backgroundColor: T.accent }]}
          >
            <View style={styles.ctaInner}>
              <View>
                <Text style={[styles.ctaTitle, { color: T.accentText }]}>
                  {completedWordIds.size === 0 ? '단어 학습 시작하기' : '이어서 학습하기'}
                </Text>
                <Text style={[styles.ctaSub, { color: T.accentText, opacity: 0.7 }]}>
                  단어 · 발음 · 예문
                </Text>
              </View>
              <Icon.chevRight color={T.accentText} size={20} />
            </View>
          </TouchableOpacity>

          {/* Sentence / expression cards */}
          <TouchableOpacity
            onPress={() => navigation.navigate('SentenceCard')}
            style={[styles.ctaBtn, { backgroundColor: T.bg2, borderColor: T.hair, borderWidth: 1 }]}
          >
            <View style={styles.ctaInner}>
              <View>
                <Text style={[styles.ctaTitle, { color: T.text }]}>패턴·표현 학습</Text>
                <Text style={[styles.ctaSub, { color: T.textMute }]}>
                  패턴 · 콜로케이션 · 이디엄
                </Text>
              </View>
              <Icon.chevRight color={T.textMute} size={20} />
            </View>
          </TouchableOpacity>

          {/* Quiz */}
          <TouchableOpacity
            onPress={() => quizUnlocked && navigation.navigate('Quiz')}
            style={[
              styles.ctaBtn,
              {
                backgroundColor: quizUnlocked ? T.bg2 : T.bg3,
                borderColor: quizUnlocked ? T.hair : 'transparent',
                borderWidth: 1,
                opacity: quizUnlocked ? 1 : 0.5,
              },
            ]}
          >
            <View style={styles.ctaInner}>
              <View>
                <Text style={[styles.ctaTitle, { color: T.text }]}>퀴즈</Text>
                <Text style={[styles.ctaSub, { color: T.textMute }]}>
                  {quizUnlocked ? '복습 퀴즈 풀기' : `학습 완료 후 해제 (${totalDone}/${totalCards})`}
                </Text>
              </View>
              <Icon.chevRight color={T.textMute} size={20} />
            </View>
          </TouchableOpacity>
        </View>

        {/* ── Streak ── */}
        <View style={[styles.streakCard, { backgroundColor: T.bg2, borderColor: T.hair }]}>
          <Text style={[styles.streakNum, { color: T.accent, fontFamily: T.mono }]}>
            {useUserStore.getState().streakDays}
          </Text>
          <Text style={[styles.streakLabel, { color: T.textDim }]}>일 연속 학습 중이에요 🔥</Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safe:           { flex: 1 },
  header:         { paddingHorizontal: 22, paddingTop: 8, paddingBottom: 16, flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center' },
  greeting:       { fontSize: 12, letterSpacing: 0.5, marginBottom: 4, textTransform: 'uppercase' },
  title:          { fontSize: 28, letterSpacing: -0.3 },
  avatarBtn:      { width: 40, height: 40, borderRadius: 20, alignItems: 'center', justifyContent: 'center' },
  progressCard:   { marginHorizontal: 20, borderRadius: 16, padding: 16, borderWidth: 1, marginBottom: 28 },
  progressRow:    { flexDirection: 'row', justifyContent: 'space-between', marginBottom: 10 },
  progressLabel:  { fontSize: 11, letterSpacing: 1, textTransform: 'uppercase' },
  progressPct:    { fontSize: 13, fontWeight: '700' },
  progressBar:    { height: 5, borderRadius: 3, overflow: 'hidden', marginBottom: 8 },
  progressFill:   { height: '100%', borderRadius: 3 },
  progressSub:    { fontSize: 10.5, letterSpacing: 0.3 },
  sectionHeader:  { paddingHorizontal: 22, flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center', marginBottom: 12 },
  sectionTitle:   { fontSize: 17, fontWeight: '600' },
  sectionCount:   { fontSize: 12 },
  wordChip:       { paddingHorizontal: 14, paddingVertical: 12, borderRadius: 12, borderWidth: 1, minWidth: 90, alignItems: 'center' },
  wordChipEn:     { fontSize: 17, marginBottom: 3 },
  wordChipKo:     { fontSize: 12 },
  ctaBtn:         { borderRadius: 16, paddingHorizontal: 18, paddingVertical: 16 },
  ctaInner:       { flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center' },
  ctaTitle:       { fontSize: 16, fontWeight: '600', marginBottom: 2 },
  ctaSub:         { fontSize: 12.5 },
  streakCard:     { marginHorizontal: 20, marginTop: 24, borderRadius: 16, borderWidth: 1, padding: 20, alignItems: 'center' },
  streakNum:      { fontSize: 36, fontWeight: '700', marginBottom: 4 },
  streakLabel:    { fontSize: 14 },
});
