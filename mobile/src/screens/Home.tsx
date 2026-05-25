import React, { useMemo } from 'react';
import {
  View, Text, ScrollView, StyleSheet, TouchableOpacity, Image,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useTokens } from '../theme/useTokens';
import { useCardsStore } from '../store/useCardsStore';
import { useUserStore } from '../store/useUserStore';
import { Icon } from '../components/icons';
import { Placeholder } from '../components/primitives/Placeholder';

const TOPIC_NAMES: Record<string, string> = {
  greeting:     '인사·소개',
  emotion:      '감정 표현',
  weather:      '날씨',
  shopping:     '쇼핑',
  cafe:         '카페·식당',
  transport:    '교통',
  health:       '건강',
  travel:       '여행',
  home:         '주거·생활',
  work:         '직장·비즈니스',
  education:    '교육',
  media:        '미디어·SNS',
  environment:  '환경',
  economy:      '경제',
  culture:      '문화·예술',
  sports:       '스포츠',
  discussion:   '의견·토론',
  presentation: '발표·프레젠테이션',
  negotiation:  '협상',
  humanities:   '문학·인문',
  technology:   '과학·기술',
  news:         '시사·뉴스',
  academic:     '학술',
};

const TOPIC_ORDER = [
  'greeting','emotion','weather','shopping','cafe','transport','health','travel','home',
  'work','education','media','environment','economy','culture','sports',
  'discussion','presentation','negotiation','humanities','technology','news','academic',
];

const CEFR_COMPOSITIONS: Record<string, { 단어: number; 패턴: number; 콜로?: number; 이디엄?: number; 뉘앙스?: number }> = {
  A1: { 단어: 10, 패턴: 5 },
  A2: { 단어: 10, 패턴: 5 },
  B1: { 단어: 8,  패턴: 4, 콜로: 3 },
  B2: { 단어: 8,  패턴: 4, 콜로: 3 },
  C1: { 단어: 6,  패턴: 3, 콜로: 3, 이디엄: 2, 뉘앙스: 1 },
  C2: { 단어: 6,  패턴: 3, 콜로: 3, 이디엄: 2, 뉘앙스: 1 },
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
  const { name, level, streakDays } = useUserStore();
  const {
    words, expressions,
    completedWordIds, completedSentenceIds,
  } = useCardsStore();

  const now    = new Date();
  const dateStr = `${DAY_NAMES[now.getDay()]}, ${MONTH_NAMES[now.getMonth()]} ${now.getDate()}`;
  const dayOfYear = Math.floor((now.getTime() - new Date(now.getFullYear(), 0, 0).getTime()) / 86400000);
  const greetingWord = GREETINGS[dayOfYear % GREETINGS.length];

  const comp = CEFR_COMPOSITIONS[level] ?? CEFR_COMPOSITIONS.B1;
  const totalCards = Object.values(comp).reduce((a, b) => a + (b || 0), 0);
  const totalDone  = completedWordIds.size + completedSentenceIds.size;
  const progress   = totalCards > 0 ? Math.min(totalDone / totalCards, 1) : 0;

  // 토픽 사이클: 매일 다른 토픽으로 순환 (사용자가 학습한 데이터의 토픽 중에서)
  const todayTopic = useMemo(() => {
    const availableTopics = Array.from(new Set(words.map(w => w.topicId).filter(Boolean)));
    if (availableTopics.length === 0) return null;
    // 데이터에 있는 토픽만 사이클
    const ordered = TOPIC_ORDER.filter(t => availableTopics.includes(t));
    const idx = dayOfYear % ordered.length;
    return ordered[idx] ?? availableTopics[0];
  }, [words, dayOfYear]);

  const todayTopicLabel = todayTopic ? TOPIC_NAMES[todayTopic] : '오늘의 학습';

  // 첫날 여부: 학습 기록 없으면 예습 모드
  const isFirstDay = totalDone === 0;

  // 첫날엔 무작위 7개 (예습), 이후엔 토픽 단어 처음 7개 (복습)
  const reviewWords = useMemo(() => {
    if (words.length === 0) return [];
    const pool = words.filter(w => w.topicId === todayTopic);
    if (pool.length === 0) return [];
    if (isFirstDay) {
      // 날짜 기반 안정적 셔플 (하루 동안은 같은 순서 유지)
      const seed = dayOfYear;
      return [...pool]
        .map((w, i) => ({ w, s: ((i * 9301 + seed * 49297) % 233280) / 233280 }))
        .sort((a, b) => a.s - b.s)
        .map(x => x.w)
        .slice(0, 7);
    }
    return pool.slice(0, 7);
  }, [words, todayTopic, isFirstDay, dayOfYear]);

  const quizUnlocked = totalDone >= totalCards && totalCards > 0;

  const compEntries = Object.entries(comp).filter(([, v]) => (v ?? 0) > 0);

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
          <View style={{ flexDirection: 'row', alignItems: 'baseline', gap: 6 }}>
            <Text style={[styles.logo, { color: T.text, fontFamily: T.serif }]}>EngCat</Text>
          </View>
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
        <View style={{ paddingHorizontal: 22, paddingTop: 24, paddingBottom: 18 }}>
          <Text style={[styles.date, { color: T.textDim }]}>{dateStr}</Text>
          <Text style={[styles.greeting, { color: T.text, fontFamily: T.serif }]}>
            {greetingWord}{'\n'}
            <Text style={{ fontFamily: 'InstrumentSerif-Italic', color: T.accent, fontStyle: 'italic' }}>
              {displayName}.
            </Text>
          </Text>
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
        {reviewWords.length > 0 && (
          <>
            <View style={styles.sectionHeader}>
              <Text style={[styles.sectionTitle, { color: T.text }]}>
                {isFirstDay ? '예습하기' : '복습할 것'}
              </Text>
              <Text style={[styles.sectionCount, { color: T.textDim }]}>{reviewWords.length}개</Text>
            </View>
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ paddingHorizontal: 22, gap: 10 }}
              style={{ marginBottom: 4 }}
            >
              {reviewWords.map(w => (
                <TouchableOpacity
                  key={w.id}
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
