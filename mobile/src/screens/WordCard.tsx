import React, { useState, useCallback, useRef, useMemo } from 'react';
import {
  View, Text, StyleSheet, TouchableOpacity,
  ScrollView, Dimensions, Modal,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import Animated, {
  useSharedValue, useAnimatedStyle, withTiming, withSpring, runOnJS,
} from 'react-native-reanimated';
import { Gesture, GestureDetector } from 'react-native-gesture-handler';
import { useTokens } from '../theme/useTokens';
import { useCardsStore } from '../store/useCardsStore';
import { useUserStore } from '../store/useUserStore';
import { Icon } from '../components/icons';
import { Placeholder } from '../components/primitives/Placeholder';
import { getTodaySession } from '../utils/todaySession';

const { width: W, height: H } = Dimensions.get('window');

function HighlightText({ text, accent, style }: { text: string; accent: string; style?: any }) {
  const parts = text.split(/\{([^}]+)\}/);
  return (
    <Text style={style}>
      {parts.map((part, i) =>
        i % 2 === 1 ? <Text key={i} style={{ color: accent }}>{part}</Text> : part
      )}
    </Text>
  );
}

interface Props { navigation: any }

export default function WordCardScreen({ navigation }: Props) {
  const T = useTokens();
  const store = useCardsStore();
  const level = useUserStore(s => s.level);
  const session = useMemo(
    () => getTodaySession(store.words, store.expressions, level),
    [store.words, store.expressions, level],
  );
  const words = session.words;

  const [idx, setIdx] = useState(store.wordIndex);
  const [showExamples, setShowExamples] = useState(false);

  const idxRef = useRef(idx);
  idxRef.current = idx;

  const translateX = useSharedValue(0);
  const isAnimating = useSharedValue(false);

  const word = words[idx];
  const isBookmarked = word ? store.bookmarkedIds.has(word.id) : false;

  const cardStyle = useAnimatedStyle(() => ({
    transform: [{ translateX: translateX.value }],
  }));

  const doNavigate = useCallback((dir: 'next' | 'prev') => {
    const cur = idxRef.current;
    const storeSnap = useCardsStore.getState();
    const w = words[cur];
    if (!w) { isAnimating.value = false; return; }

    if (dir === 'prev' && cur === 0) {
      isAnimating.value = false;
      translateX.value = withSpring(0);
      return;
    }

    if (dir === 'next') {
      storeSnap.markWordDone(w.id);
      if (cur === words.length - 1) {
        isAnimating.value = false;
        storeSnap.setWordIndex(0);
        navigation.navigate('SentenceCard');
        return;
      }
    }

    const next = cur + (dir === 'next' ? 1 : -1);
    isAnimating.value = true;
    translateX.value = withTiming(dir === 'next' ? -W : W, { duration: 200 });

    setTimeout(() => {
      setIdx(next);
      setShowExamples(false);
      useCardsStore.getState().setWordIndex(next);
      idxRef.current = next;
      translateX.value = dir === 'next' ? W * 0.7 : -W * 0.7;
      translateX.value = withSpring(0, { damping: 20, stiffness: 180 });
      setTimeout(() => { isAnimating.value = false; }, 350);
    }, 210);
  }, [navigation, translateX, isAnimating]);

  const panGesture = Gesture.Pan()
    .activeOffsetX([-15, 15])
    .onUpdate((e) => {
      if (!isAnimating.value) {
        translateX.value = e.translationX * 0.65;
      }
    })
    .onEnd((e) => {
      if (isAnimating.value) { translateX.value = withSpring(0); return; }
      const threshold = W * 0.32;
      if (e.translationX < -threshold) {
        isAnimating.value = true;
        runOnJS(doNavigate)('next');
      } else if (e.translationX > threshold && idxRef.current > 0) {
        isAnimating.value = true;
        runOnJS(doNavigate)('prev');
      } else {
        translateX.value = withSpring(0);
      }
    });

  if (!word) {
    return (
      <SafeAreaView style={[styles.safe, { backgroundColor: T.bg0 }]}>
        <View style={styles.empty}>
          <Text style={{ color: T.textDim, fontFamily: T.mono, fontSize: 13 }}>
            단어를 불러오는 중이에요...
          </Text>
        </View>
      </SafeAreaView>
    );
  }

  return (
    <View style={[styles.safe, { backgroundColor: T.bg0 }]}>
      <GestureDetector gesture={panGesture}>
        <Animated.View style={[StyleSheet.absoluteFill, cardStyle]}>
          {/* Full-bleed background */}
          <Placeholder height={H} tint={word.tint} radius={0} style={StyleSheet.absoluteFill} />

          {/* Gradient overlays */}
          <View style={[StyleSheet.absoluteFill, styles.overlayTop]} />
          <View style={[StyleSheet.absoluteFill, styles.overlayBottom]} />

          {/* Top chrome */}
          <SafeAreaView edges={['top']} style={styles.topChrome}>
            <View style={[styles.pill, { backgroundColor: 'rgba(0,0,0,0.35)', borderColor: 'rgba(255,255,255,0.12)' }]}>
              <Text style={[styles.pillText, { color: T.textDim, fontFamily: T.mono }]}>
                {idx + 1} / {words.length} · 단어
              </Text>
            </View>
          </SafeAreaView>

          {/* Right action rail */}
          <View style={styles.rail}>
            {[
              { icon: <Icon.speaker color="rgba(255,255,255,0.9)" size={22} />, label: '듣기', onPress: () => {} },
              {
                icon: <Icon.bookmark color={isBookmarked ? T.accent : 'rgba(255,255,255,0.9)'} size={22} filled={isBookmarked} />,
                label: '저장',
                onPress: () => useCardsStore.getState().toggleBookmark(word.id),
              },
              { icon: <Icon.notes color="rgba(255,255,255,0.9)" size={20} />, label: '예문', onPress: () => setShowExamples(true) },
            ].map((a, i) => (
              <View key={i} style={styles.railItem}>
                <TouchableOpacity
                  onPress={a.onPress}
                  style={[styles.railBtn, { backgroundColor: 'rgba(255,255,255,0.10)', borderColor: 'rgba(255,255,255,0.14)' }]}
                >
                  {a.icon}
                </TouchableOpacity>
                <Text style={[styles.railLabel, { color: 'rgba(255,255,255,0.75)', fontFamily: T.mono }]}>{a.label}</Text>
              </View>
            ))}
          </View>

          {/* Card content */}
          <SafeAreaView edges={['bottom']} style={styles.contentArea}>
            {/* POS + IPA */}
            <View style={styles.chipRow}>
              <View style={[styles.posChip, { backgroundColor: 'rgba(255,255,255,0.12)' }]}>
                <Text style={[styles.posText, { color: T.textDim, fontFamily: T.mono }]}>{word.pos}</Text>
              </View>
              <Text style={[styles.ipa, { color: T.textMute, fontFamily: T.mono }]}>{word.ipa}</Text>
            </View>

            {/* Word */}
            <Text
              style={[styles.wordEn, { color: T.text, fontFamily: T.serif }]}
              numberOfLines={2}
              adjustsFontSizeToFit
              minimumFontScale={0.5}
            >{word.en}</Text>

            {/* Korean meaning */}
            <Text style={[styles.wordKo, { color: T.accent }]}>{word.ko}</Text>

            {/* Definition */}
            <Text style={[styles.def, { color: T.textDim }]}>{word.def}</Text>

            {/* Primary example */}
            {word.examples.length > 0 && (
              <View style={[styles.exBox, { backgroundColor: 'rgba(255,255,255,0.08)', borderColor: T.hair }]}>
                <Text style={[styles.exLabel, { color: T.textMute, fontFamily: T.mono }]}>예문</Text>
                <HighlightText
                  text={`"${word.examples[0].en}"`}
                  accent={T.accent}
                  style={[styles.exEn, { color: T.text, fontFamily: T.thin }]}
                />
                {word.examples[0].ko ? (
                  <Text style={[styles.exKo, { color: T.textDim }]}>{word.examples[0].ko}</Text>
                ) : null}
              </View>
            )}

            {/* CTA */}
            <TouchableOpacity
              onPress={() => doNavigate('next')}
              style={[styles.cta, { backgroundColor: T.accent }]}
            >
              <Text style={[styles.ctaText, { color: T.accentText }]}>
                {idx === words.length - 1 ? '문장 학습하기' : '다음 카드'}
              </Text>
              <Icon.chevRight color={T.accentText} size={18} />
            </TouchableOpacity>

            {/* Progress strip */}
            <View style={styles.strip}>
              {words.map((w, i) => (
                <View
                  key={w.id}
                  style={[styles.stripBar, {
                    height: i === idx ? 4 : 2.5,
                    backgroundColor: store.completedWordIds.has(w.id)
                      ? T.accent : i === idx ? T.text : T.hairStr,
                  }]}
                />
              ))}
            </View>
          </SafeAreaView>
        </Animated.View>
      </GestureDetector>

      {/* Examples bottom sheet */}
      <Modal visible={showExamples} transparent animationType="slide" onRequestClose={() => setShowExamples(false)}>
        <TouchableOpacity style={styles.sheetBg} activeOpacity={1} onPress={() => setShowExamples(false)} />
        <View style={[styles.sheet, { backgroundColor: T.bg1 }]}>
          <View style={styles.sheetDragArea}>
            <View style={[styles.sheetHandle, { backgroundColor: T.hairStr }]} />
          </View>
          <Text style={[styles.sheetTitle, { color: T.textMute, fontFamily: T.mono }]}>
            추가 예문 · {word.en}
          </Text>
          <ScrollView contentContainerStyle={{ paddingBottom: 40 }} showsVerticalScrollIndicator={false}>
            {word.examples.length <= 1 ? (
              <Text style={[styles.sheetEmpty, { color: T.textDim }]}>추가 예문이 아직 없어요.</Text>
            ) : (
              word.examples.slice(1).map((ex, i) => (
                <View key={i} style={[styles.exSheetRow, { backgroundColor: T.bg2, borderColor: T.hair }]}>
                  <View style={{ flex: 1 }}>
                    <Text style={[styles.exRowNum, { color: T.textMute, fontFamily: T.mono }]}>예문 {i + 2}</Text>
                    <HighlightText
                      text={`"${ex.en}"`}
                      accent={T.accent}
                      style={[styles.exRowEn, { color: T.text, fontFamily: T.thin }]}
                    />
                    {ex.ko ? <Text style={[styles.exRowKo, { color: T.textDim }]}>{ex.ko}</Text> : null}
                  </View>
                  <TouchableOpacity style={[styles.speakerBtn, { backgroundColor: T.bg3, borderColor: T.hair }]}>
                    <Icon.speaker color={T.accent} size={15} />
                  </TouchableOpacity>
                </View>
              ))
            )}
          </ScrollView>
        </View>
      </Modal>
    </View>
  );
}

const styles = StyleSheet.create({
  safe:        { flex: 1 },
  empty:       { flex: 1, alignItems: 'center', justifyContent: 'center' },
  overlayTop:  { background: undefined, backgroundColor: 'transparent', backgroundImage: undefined } as any,
  overlayBottom: { backgroundColor: 'rgba(0,0,0,0.55)' },
  topChrome:   { position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10, alignItems: 'center', paddingTop: 6 },
  pill:        { paddingHorizontal: 14, paddingVertical: 7, borderRadius: 999, borderWidth: 1 },
  pillText:    { fontSize: 10.5, letterSpacing: 1, textTransform: 'uppercase' },
  rail:        { position: 'absolute', right: 14, top: '42%', zIndex: 10, gap: 18, alignItems: 'center' },
  railItem:    { alignItems: 'center', gap: 4 },
  railBtn:     { width: 48, height: 48, borderRadius: 999, borderWidth: 1, alignItems: 'center', justifyContent: 'center' },
  railLabel:   { fontSize: 10, fontWeight: '500' },
  contentArea: { position: 'absolute', bottom: 0, left: 0, right: 76, paddingHorizontal: 22, paddingBottom: 8, zIndex: 5 },
  chipRow:     { flexDirection: 'row', alignItems: 'center', gap: 8, marginBottom: 8 },
  posChip:     { paddingHorizontal: 9, paddingVertical: 3, borderRadius: 6 },
  posText:     { fontSize: 10, letterSpacing: 0.5, textTransform: 'uppercase' },
  ipa:         { fontSize: 11 },
  wordEn:      { fontSize: 50, lineHeight: 52, letterSpacing: -1, marginBottom: 4 },
  wordKo:      { fontSize: 17, fontWeight: '500', marginBottom: 8, letterSpacing: -0.2 },
  def:         { fontSize: 13, lineHeight: 1.5 * 13, marginBottom: 10 },
  exBox:       { borderRadius: 12, padding: 12, borderWidth: 1, marginBottom: 12 },
  exLabel:     { fontSize: 9.5, letterSpacing: 1, textTransform: 'uppercase', marginBottom: 4 },
  exEn:        { fontSize: 14.5, lineHeight: 20 },
  exKo:        { fontSize: 12, marginTop: 4, lineHeight: 18 },
  cta:         { borderRadius: 14, height: 46, flexDirection: 'row', alignItems: 'center', justifyContent: 'center', gap: 6, marginBottom: 14 },
  ctaText:     { fontSize: 14, fontWeight: '600' },
  strip:       { flexDirection: 'row', gap: 3, marginBottom: 8 },
  stripBar:    { flex: 1, borderRadius: 2 },
  sheetBg:     { ...StyleSheet.absoluteFill, backgroundColor: 'rgba(0,0,0,0.55)' },
  sheet:       { borderTopLeftRadius: 20, borderTopRightRadius: 20, paddingHorizontal: 20, maxHeight: '72%' },
  sheetDragArea: { alignItems: 'center', paddingTop: 12, paddingBottom: 8 },
  sheetHandle: { width: 36, height: 4, borderRadius: 2 },
  sheetTitle:  { fontSize: 9.5, letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 14 },
  sheetEmpty:  { paddingVertical: 24, textAlign: 'center', fontSize: 13, lineHeight: 20 },
  exSheetRow:  { borderRadius: 14, padding: 14, borderWidth: 1, flexDirection: 'row', alignItems: 'flex-start', gap: 12, marginBottom: 12 },
  exRowNum:    { fontSize: 9.5, letterSpacing: 1, textTransform: 'uppercase', marginBottom: 4 },
  exRowEn:     { fontSize: 15, lineHeight: 22 },
  exRowKo:     { fontSize: 12, marginTop: 4, lineHeight: 18 },
  speakerBtn:  { width: 34, height: 34, borderRadius: 999, borderWidth: 1, alignItems: 'center', justifyContent: 'center', marginTop: 2 },
});
