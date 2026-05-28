import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useTokens } from '../theme/useTokens';
import { useUserStore } from '../store/useUserStore';
import { useCardsStore } from '../store/useCardsStore';
import { Icon } from '../components/icons';
import { Logo } from '../components/Logo';

const DAYS_KO = ['월', '화', '수', '목', '금', '토', '일'];

export default function StatsScreen() {
  const T = useTokens();
  const { streakDays, totalLearned } = useUserStore();
  const { completedWordIds, completedSentenceIds } = useCardsStore();

  const todayCards = completedWordIds.size + completedSentenceIds.size;

  // Weekly bars — using today's progress for the last day, rest zeroed
  const weekBars = Array.from({ length: 7 }, (_, i) => i === 6 ? todayCards : 0);
  const maxBar = Math.max(...weekBars, 1);

  // Heatmap (84 days = 12 weeks × 7 days)
  const tints = [
    'rgba(244,241,235,0.06)',
    'rgba(232,178,106,0.28)',
    'rgba(232,178,106,0.60)',
    T.accent,
  ];
  const getHeatLevel = (daysAgo: number) => {
    if (daysAgo === 0 && todayCards > 0) {
      return todayCards <= 5 ? 1 : todayCards <= 10 ? 2 : 3;
    }
    return 0;
  };

  const streakLabel = streakDays > 0
    ? `${streakDays}일 연속 학습 중이에요!`
    : '아직 학습 기록이 없어요. 오늘 시작해 보세요!';

  return (
    <SafeAreaView style={[styles.safe, { backgroundColor: T.bg1 }]} edges={['top']}>
      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 100 }}>
        {/* Header */}
        <View style={styles.header}>
          <Logo size="sm" style={{ width: 28, height: 28 }} />
          <Text style={[styles.title, { color: T.text, fontFamily: T.serif }]}>나의 진도</Text>
        </View>

        {/* Streak hero */}
        <View style={[styles.streakCard, { backgroundColor: T.bg3, borderColor: T.hair }]}>
          <View style={[styles.streakGlow, { backgroundColor: T.accentSoft }]} />
          <View style={{ flex: 1 }}>
            <Text style={[styles.streakSubLabel, { color: T.accent, fontFamily: T.mono }]}>연속 학습</Text>
            <View style={styles.streakRow}>
              <Text style={[styles.streakNum, { color: T.text, fontFamily: T.serif }]}>{streakDays}</Text>
              <Text style={[styles.streakUnit, { color: T.textDim }]}>일</Text>
            </View>
            <Text style={[styles.streakLabel, { color: T.textDim }]}>{streakLabel}</Text>
          </View>
          <Icon.flame color={T.accent} size={48} />
        </View>

        {/* Stat tiles */}
        <View style={styles.tiles}>
          {[
            { num: String(totalLearned), label: '익힌 단어' },
            { num: String(completedSentenceIds.size), label: '표현' },
            { num: '—', label: '정답률' },
          ].map((s, i) => (
            <View key={i} style={[styles.tile, { backgroundColor: T.bg2, borderColor: T.hair }]}>
              <Text style={[styles.tileNum, { color: T.text, fontFamily: T.serif }]}>{s.num}</Text>
              <Text style={[styles.tileLabel, { color: T.textDim }]}>{s.label}</Text>
            </View>
          ))}
        </View>

        {/* Weekly chart */}
        <View style={styles.sectionHeader}>
          <Text style={[styles.sectionTitle, { color: T.text }]}>이번 주 학습</Text>
          <Text style={[styles.sectionSub, { color: T.textDim, fontFamily: T.mono }]}>
            총 {Math.round(todayCards * 1.2)}분
          </Text>
        </View>
        <View style={[styles.chartCard, { backgroundColor: T.bg2, borderColor: T.hair }]}>
          {DAYS_KO.map((d, i) => {
            const isToday = i === 6;
            const barH = Math.max((weekBars[i] / maxBar) * 80, 0);
            return (
              <View key={i} style={styles.barGroup}>
                <View style={[styles.barTrack, { height: 80 }]}>
                  <View style={[
                    styles.barFill,
                    { height: barH, backgroundColor: isToday ? T.accent : T.bg4, borderRadius: 6 },
                  ]} />
                </View>
                <Text style={[styles.barLabel, { color: isToday ? T.accent : T.textDim, fontWeight: isToday ? '600' : '400' }]}>
                  {d}
                </Text>
              </View>
            );
          })}
        </View>

        {/* Activity heatmap */}
        <View style={styles.sectionHeader}>
          <Text style={[styles.sectionTitle, { color: T.text }]}>12주 활동</Text>
          <Text style={[styles.sectionSub, { color: T.textDim }]}>밝을수록 많이 학습한 날</Text>
        </View>
        <View style={[styles.heatmapCard, { backgroundColor: T.bg2, borderColor: T.hair }]}>
          <View style={styles.heatmapGrid}>
            {Array.from({ length: 12 }).map((_, col) => (
              <View key={col} style={styles.heatmapCol}>
                {Array.from({ length: 7 }).map((_, row) => {
                  const daysAgo = (11 - col) * 7 + (6 - row);
                  const level = getHeatLevel(daysAgo);
                  return (
                    <View
                      key={row}
                      style={[styles.heatCell, { backgroundColor: tints[level] }]}
                    />
                  );
                })}
              </View>
            ))}
          </View>
          <View style={styles.heatmapLegend}>
            <Text style={[styles.legendText, { color: T.textMute, fontFamily: T.mono }]}>LESS</Text>
            {tints.map((t, i) => (
              <View key={i} style={[styles.legendDot, { backgroundColor: t }]} />
            ))}
            <Text style={[styles.legendText, { color: T.textMute, fontFamily: T.mono }]}>MORE</Text>
          </View>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safe:          { flex: 1 },
  header:        { paddingHorizontal: 22, paddingTop: 8, paddingBottom: 16, flexDirection: 'row', alignItems: 'center', gap: 12 },
  title:         { fontSize: 26, letterSpacing: -0.3 },
  streakCard:    { marginHorizontal: 18, borderRadius: 22, borderWidth: 1, padding: 18, flexDirection: 'row', alignItems: 'center', position: 'relative', overflow: 'hidden', marginBottom: 12 },
  streakGlow:    { position: 'absolute', top: -30, right: -30, width: 140, height: 140, borderRadius: 70 },
  streakSubLabel: { fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase', marginBottom: 6 },
  streakRow:     { flexDirection: 'row', alignItems: 'baseline', gap: 6, marginBottom: 8 },
  streakNum:     { fontSize: 56, lineHeight: 58, letterSpacing: -1.5 },
  streakUnit:    { fontSize: 16 },
  streakLabel:   { fontSize: 12.5 },
  tiles:         { flexDirection: 'row', paddingHorizontal: 18, gap: 8, marginBottom: 24 },
  tile:          { flex: 1, padding: 14, borderRadius: 16, borderWidth: 1 },
  tileNum:       { fontSize: 26, lineHeight: 28, letterSpacing: -0.5, marginBottom: 6 },
  tileLabel:     { fontSize: 11.5 },
  sectionHeader: { paddingHorizontal: 22, flexDirection: 'row', justifyContent: 'space-between', alignItems: 'baseline', marginBottom: 12 },
  sectionTitle:  { fontSize: 16, fontWeight: '600' },
  sectionSub:    { fontSize: 12 },
  chartCard:     { marginHorizontal: 22, borderRadius: 18, borderWidth: 1, padding: 20, flexDirection: 'row', justifyContent: 'space-between', alignItems: 'flex-end', height: 140, marginBottom: 24 },
  barGroup:      { flex: 1, alignItems: 'center', gap: 8 },
  barTrack:      { justifyContent: 'flex-end', width: 16 },
  barFill:       { width: '100%' },
  barLabel:      { fontSize: 11 },
  heatmapCard:   { marginHorizontal: 22, borderRadius: 18, borderWidth: 1, padding: 16, marginBottom: 24 },
  heatmapGrid:   { flexDirection: 'row', gap: 4 },
  heatmapCol:    { flex: 1, gap: 4 },
  heatCell:      { aspectRatio: 1, borderRadius: 3 },
  heatmapLegend: { flexDirection: 'row', alignItems: 'center', gap: 6, justifyContent: 'flex-end', marginTop: 10 },
  legendText:    { fontSize: 10 },
  legendDot:     { width: 10, height: 10, borderRadius: 2 },
});
