import React, { useState, useCallback, useRef, useMemo } from 'react';
import {
  View, Text, StyleSheet, TouchableOpacity,
  ScrollView, Dimensions,
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
const HERO_HEIGHT = H * 0.60;
const SPACER_HEIGHT = H * 0.60;

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
  const { level } = useUserStore();
  const session = useMemo(
    () => getTodaySession(store.words, store.expressions, level),
    [store.words, store.expressions, level],
  );
  const words = session.words;

  const [idx, setIdx] = useState(store.wordIndex);

  const idxRef = useRef(idx);
  idxRef.current = idx;

  const translateX = useSharedValue(0);
  const isAnimating = useSharedValue(false);

  const word = words[idx];
  const isBookmarked = word ? store.bookmarkedIds.has(word.id) : false;
  const isLast = idx === words.length - 1;

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
      useCardsStore.getState().setWordIndex(next);
      idxRef.current = next;
      translateX.value = dir === 'next' ? W * 0.7 : -W * 0.7;
      translateX.value = withSpring(0, { damping: 20, stiffness: 180 });
      setTimeout(() => { isAnimating.value = false; }, 350);
    }, 210);
  }, [navigation, translateX, isAnimating, words]);

  const panGesture = Gesture.Pan()
    .activeOffsetX([-15, 15])
    .failOffsetY([-10, 10])
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
          {/* Hero — top portion only */}
          <View style={[styles.heroWrap, { height: HERO_HEIGHT }]}>
            <Placeholder height={HERO_HEIGHT} tint={word.tint} radius={0} style={StyleSheet.absoluteFill} />
            <View style={[StyleSheet.absoluteFill, { backgroundColor: 'rgba(0,0,0,0.25)' }]} />
          </View>
          <View style={[StyleSheet.absoluteFill, styles.overlayBottom]} />

          {/* Top chrome */}
          <SafeAreaView edges={['top']} style={styles.topChrome}>
            <View style={[styles.pill, { backgroundColor: 'rgba(0,0,0,0.35)', borderColor: 'rgba(255,255,255,0.12)' }]}>
              <Text style={[styles.pillText, { color: T.textDim, fontFamily: T.mono }]}>
                {idx + 1} / {words.length} · 단어
              </Text>
            </View>
          </SafeAreaView>

          {/* Right rail */}
          <View style={styles.rail}>
            {[
              { icon: <Icon.speaker color="rgba(255,255,255,0.9)" size={22} />, label: '듣기', onPress: () => {} },
              {
                icon: <Icon.bookmark color={isBookmarked ? T.accent : 'rgba(255,255,255,0.9)'} size={22} filled={isBookmarked} />,
                label: '저장',
                onPress: () => useCardsStore.getState().toggleBookmark(word.id),
              },
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

          {/* Scrollable content */}
          <ScrollView
            style={styles.scrollArea}
            contentContainerStyle={{ flexGrow: 1 }}
            showsVerticalScrollIndicator={false}
          >
            <View style={{ height: SPACER_HEIGHT }} />
            <View style={styles.contentPad}>
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
              {word.def ? (
                <Text style={[styles.def, { color: T.textDim }]}>{word.def}</Text>
              ) : null}

              {/* Examples — all available, up to 5 */}
              {word.examples.length > 0 ? (
                <View style={styles.examplesSection}>
                  <Text style={[styles.examplesLabel, { color: T.textMute, fontFamily: T.mono }]}>
                    예문
                  </Text>
                  {word.examples.map((ex, i) => (
                    <View key={i} style={[styles.exRow, { backgroundColor: 'rgba(255,255,255,0.06)', borderColor: T.hair }]}>
                      <View style={{ flex: 1 }}>
                        <HighlightText
                          text={`"${ex.en}"`}
                          accent={T.accent}
                          style={[styles.exEn, { color: T.text, fontFamily: T.thin }]}
                        />
                        {ex.ko ? <Text style={[styles.exKo, { color: T.textDim }]}>{ex.ko}</Text> : null}
                      </View>
                      <TouchableOpacity style={[styles.speakerBtn, { backgroundColor: T.accentSoft, borderColor: T.accentSoft }]}>
                        <Icon.speaker color={T.accent} size={15} />
                      </TouchableOpacity>
                    </View>
                  ))}
                </View>
              ) : (
                <Text style={[styles.emptyEx, { color: T.textMute }]}>예문이 아직 없어요.</Text>
              )}
            </View>
            <View style={{ height: 140 }} />
          </ScrollView>

          {/* Bottom bar */}
          <SafeAreaView edges={['bottom']} style={styles.bottomBar}>
            <View style={styles.stripRow}>
              {words.map((_, i) => (
                <View
                  key={i}
                  style={[styles.stripBar, {
                    height: i === idx ? 4 : 2.5,
                    backgroundColor: i <= idx ? T.accent : 'rgba(255,255,255,0.22)',
                  }]}
                />
              ))}
            </View>
            <TouchableOpacity
              onPress={() => doNavigate('next')}
              style={[styles.cta, { backgroundColor: T.accent }]}
            >
              <Text style={[styles.ctaText, { color: T.accentText }]}>
                {isLast ? '문장 학습하기' : '다음 카드'}
              </Text>
              <Icon.chevRight color={T.accentText} size={18} />
            </TouchableOpacity>
          </SafeAreaView>
        </Animated.View>
      </GestureDetector>
    </View>
  );
}

const styles = StyleSheet.create({
  safe:           { flex: 1 },
  empty:          { flex: 1, alignItems: 'center', justifyContent: 'center' },
  heroWrap:       { position: 'absolute', top: 0, left: 0, right: 0, zIndex: 1, overflow: 'hidden' },
  overlayBottom:  { backgroundColor: 'transparent' },
  topChrome:      { position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10, alignItems: 'center', paddingTop: 6 },
  pill:           { paddingHorizontal: 14, paddingVertical: 7, borderRadius: 999, borderWidth: 1 },
  pillText:       { fontSize: 10.5, letterSpacing: 1, textTransform: 'uppercase' },
  rail:           { position: 'absolute', right: 14, top: '40%', zIndex: 10, gap: 18, alignItems: 'center' },
  railItem:       { alignItems: 'center', gap: 4 },
  railBtn:        { width: 48, height: 48, borderRadius: 999, borderWidth: 1, alignItems: 'center', justifyContent: 'center' },
  railLabel:      { fontSize: 10, fontWeight: '500' },
  scrollArea:     { flex: 1, zIndex: 5 },
  contentPad:     { paddingHorizontal: 22, paddingBottom: 20 },
  chipRow:        { flexDirection: 'row', alignItems: 'center', gap: 8, marginBottom: 8 },
  posChip:        { paddingHorizontal: 9, paddingVertical: 3, borderRadius: 6 },
  posText:        { fontSize: 10, letterSpacing: 0.5, textTransform: 'uppercase' },
  ipa:            { fontSize: 11 },
  wordEn:         { fontSize: 50, lineHeight: 52, letterSpacing: -1, marginBottom: 4 },
  wordKo:         { fontSize: 17, fontWeight: '500', marginBottom: 8, letterSpacing: -0.2 },
  def:            { fontSize: 13, lineHeight: 1.5 * 13, marginBottom: 18 },
  examplesSection: { marginTop: 4 },
  examplesLabel:  { fontSize: 9.5, letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 10 },
  exRow:          { borderRadius: 14, padding: 14, borderWidth: 1, flexDirection: 'row', alignItems: 'flex-start', gap: 12, marginBottom: 10 },
  exEn:           { fontSize: 15, lineHeight: 22 },
  exKo:           { fontSize: 12, marginTop: 4, lineHeight: 18 },
  emptyEx:        { fontSize: 12.5, lineHeight: 20, marginTop: 6 },
  speakerBtn:     { width: 34, height: 34, borderRadius: 999, borderWidth: 1, alignItems: 'center', justifyContent: 'center', marginTop: 2 },
  bottomBar:      { position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 12, paddingHorizontal: 18 },
  stripRow:       { flexDirection: 'row', gap: 3, paddingBottom: 10, height: 24, alignItems: 'center' },
  stripBar:       { flex: 1, borderRadius: 2 },
  cta:            { borderRadius: 14, height: 50, flexDirection: 'row', alignItems: 'center', justifyContent: 'center', gap: 8, marginBottom: 8 },
  ctaText:        { fontSize: 14, fontWeight: '600' },
});
