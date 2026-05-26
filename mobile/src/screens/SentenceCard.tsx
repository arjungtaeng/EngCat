import React, { useState, useMemo } from 'react';
import {
  View, Text, StyleSheet, TouchableOpacity, ScrollView, Dimensions,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useTokens } from '../theme/useTokens';
import { useCardsStore, SentenceCard } from '../store/useCardsStore';
import { useUserStore } from '../store/useUserStore';
import { Icon } from '../components/icons';
import { Placeholder } from '../components/primitives/Placeholder';
import { getTodaySession } from '../utils/todaySession';

const { height: H } = Dimensions.get('window');

const TYPE_LABELS: Record<string, string> = {
  pattern: '패턴', collocation: '콜로케이션', idiom: '이디엄', nuance: '뉘앙스',
};

interface Props { navigation: any }

export default function SentenceCardScreen({ navigation }: Props) {
  const T = useTokens();
  const store = useCardsStore();
  const { level, id: userId } = useUserStore();
  const session = useMemo(
    () => getTodaySession(store.words, store.expressions, level),
    [store.words, store.expressions, level],
  );
  const expressions = session.expressions.length ? session.expressions : (store.expressions.length ? store.expressions : store.sentences);

  const [idx, setIdx] = useState(store.sentenceIndex);

  const s = expressions[idx];
  const isLast = idx === expressions.length - 1;
  const typeLabel = s ? (TYPE_LABELS[s.type] || '표현') : '';

  const goNext = () => {
    if (!s) return;
    useCardsStore.getState().markSentenceDone(userId, s.id);
    if (isLast) {
      useCardsStore.getState().setSentenceIndex(0);
      navigation.navigate('Quiz');
    } else {
      const next = idx + 1;
      useCardsStore.getState().setSentenceIndex(next);
      setIdx(next);
    }
  };

  if (!s) {
    return (
      <SafeAreaView style={[styles.safe, { backgroundColor: T.bg0 }]}>
        <View style={styles.empty}>
          <Text style={{ color: T.textDim, fontFamily: T.mono, fontSize: 13 }}>
            표현을 불러오는 중이에요...
          </Text>
        </View>
      </SafeAreaView>
    );
  }

  const TypeChip = () => (
    <View style={[styles.typeChip, { backgroundColor: T.accentSoft }]}>
      <View style={[styles.typeDot, { backgroundColor: T.accent }]} />
      <Text style={[styles.typeText, { color: T.accent, fontFamily: T.mono }]}>
        {(s.type === 'pattern' && s.sit) ? s.sit : typeLabel}
      </Text>
    </View>
  );

  const TipBox = ({ label, text }: { label: string; text?: string }) =>
    text ? (
      <View style={[styles.tipBox, { backgroundColor: 'rgba(255,255,255,0.06)', borderColor: T.hair }]}>
        <Icon.sparkle color={T.accent} size={14} />
        <Text style={[styles.tipText, { color: T.textDim }]}>
          <Text style={{ color: T.text, fontWeight: '600' }}>{label} · </Text>
          {text}
        </Text>
      </View>
    ) : null;

  const ExRow = ({ en, ko }: { en?: string; ko?: string }) =>
    en ? (
      <View style={[styles.exRow, { borderLeftColor: T.hairStr }]}>
        <Text style={[styles.exEn, { color: T.text, fontFamily: T.thin }]}>{en}</Text>
        {ko ? <Text style={[styles.exKo, { color: T.textDim }]}>{ko}</Text> : null}
      </View>
    ) : null;

  const renderContent = () => {
    if (s.type === 'collocation') {
      return (
        <View style={styles.contentPad}>
          <TypeChip />
          <Text style={[styles.collocMain, { color: T.text, fontFamily: T.thin }]}>
            <Text style={{ color: T.accent }}>{s.verb} </Text>
            {s.noun}
          </Text>
          <Text style={[styles.collocKo, { color: T.textDim }]}>{s.ko}</Text>
          {s.wrongVerb ? (
            <View style={[styles.wrongPill, { backgroundColor: T.badSoft, borderColor: T.bad }]}>
              <Text style={[styles.wrongText, { color: T.bad }]}>
                ✗  {s.wrongVerb} {s.noun}
              </Text>
            </View>
          ) : null}
          <TipBox label="표현 팁" text={s.tip} />
          <ExRow en={s.ex1} ko={s.ex1Ko} />
          <ExRow en={s.ex2} ko={s.ex2Ko} />
        </View>
      );
    }

    if (s.type === 'idiom') {
      return (
        <View style={styles.contentPad}>
          <TypeChip />
          <Text style={[styles.idiomEn, { color: T.text, fontFamily: T.serif }]}>
            "{s.en}"
          </Text>
          <Text style={[styles.idiomKo, { color: T.text }]}>{s.ko}</Text>
          {s.literalKo ? (
            <Text style={[styles.literalKo, { color: T.textDim }]}>직역: "{s.literalKo}"</Text>
          ) : null}
          <TipBox label="사용 맥락" text={s.tip} />
          <ExRow en={s.ex1} ko={s.ex1Ko} />
          <ExRow en={s.ex2} ko={s.ex2Ko} />
          <ExRow en={s.ex3} ko={s.ex3Ko} />
        </View>
      );
    }

    if (s.type === 'nuance') {
      const items = [
        { word: s.wordA, ko: s.koA, ex: s.exA },
        { word: s.wordB, ko: s.koB, ex: s.exB },
        s.wordC ? { word: s.wordC, ko: s.koC, ex: s.exC } : null,
      ].filter(Boolean) as { word?: string; ko?: string; ex?: string }[];

      return (
        <View style={styles.contentPad}>
          <TypeChip />
          <View style={styles.nuanceRow}>
            {items.map((item, i) => (
              <View
                key={i}
                style={[
                  styles.nuanceCard,
                  {
                    flex: 1,
                    backgroundColor: i === 0 ? T.accentSoft : 'rgba(255,255,255,0.06)',
                    borderColor: i === 0 ? T.accent : T.hair,
                  },
                ]}
              >
                <Text style={[styles.nuanceWord, { color: i === 0 ? T.accent : T.text, fontFamily: T.serif }]}>
                  {item.word}
                </Text>
                <Text style={[styles.nuanceKo, { color: T.textDim }]}>{item.ko}</Text>
                {item.ex ? (
                  <Text style={[styles.nuanceEx, { color: T.textDim }]}>"{item.ex}"</Text>
                ) : null}
              </View>
            ))}
          </View>
          <Text style={[styles.comparison, { color: T.textDim }]}>{s.comparison}</Text>
          <TipBox label="사용 팁" text={s.tip} />
        </View>
      );
    }

    // Default: pattern (C option: replace {vars} with ___, highlight core phrase in accent)
    const displayEn = (s.en || '').replace(/\{[^}]+\}/g, '___');
    const hlParts = s.highlight && displayEn.includes(s.highlight)
      ? displayEn.split(s.highlight)
      : null;
    return (
      <View style={styles.contentPad}>
        <TypeChip />
        <Text style={[styles.patternEn, { color: T.text, fontFamily: T.thin }]}>
          {hlParts && hlParts.length >= 2 ? (
            <>
              {hlParts[0]}
              <Text style={{ color: T.accent }}>{s.highlight}</Text>
              {hlParts.slice(1).join(s.highlight!)}
            </>
          ) : displayEn}
        </Text>
        <Text style={[styles.patternKo, { color: T.textDim }]}>{s.ko}</Text>
        <TipBox label="표현 팁" text={s.tip} />
        {s.examples && s.examples.length > 0 && (
          <View style={styles.examplesSection}>
            <Text style={[styles.examplesLabel, { color: T.textMute, fontFamily: T.mono }]}>
              사용 예시
            </Text>
            {s.examples.map((ex, i) => (
              <View key={i} style={[styles.exBox, { backgroundColor: 'rgba(255,255,255,0.06)', borderColor: T.hair }]}>
                <View style={{ flex: 1 }}>
                  <Text style={[styles.exBoxEn, { color: T.text, fontFamily: T.thin }]}>{ex.en}</Text>
                  {ex.ko ? <Text style={[styles.exBoxKo, { color: T.textDim }]}>{ex.ko}</Text> : null}
                </View>
                <TouchableOpacity style={[styles.speakerBtn, { backgroundColor: T.accentSoft, borderColor: T.accentSoft }]}>
                  <Icon.speaker color={T.accent} size={15} />
                </TouchableOpacity>
              </View>
            ))}
          </View>
        )}
      </View>
    );
  };

  return (
    <View style={[styles.safe, { backgroundColor: T.bg0 }]}>
      {/* Background */}
      <Placeholder height={H * 0.60} tint={s.tint} radius={0} style={styles.heroBg} />
      <View style={[StyleSheet.absoluteFill, styles.overlayBottom]} />

      {/* Top chrome */}
      <SafeAreaView edges={['top']} style={styles.topChrome}>
        <TouchableOpacity
          onPress={() => navigation.goBack()}
          style={[styles.closeBtn, { backgroundColor: 'rgba(0,0,0,0.35)', borderColor: 'rgba(255,255,255,0.12)' }]}
        >
          <Icon.close color={T.textDim} size={18} />
        </TouchableOpacity>
        <View style={[styles.pill, { backgroundColor: 'rgba(0,0,0,0.35)', borderColor: 'rgba(255,255,255,0.12)' }]}>
          <Text style={[styles.pillText, { color: T.textDim, fontFamily: T.mono }]}>
            {idx + 1} / {expressions.length} · {typeLabel}
          </Text>
        </View>
        <View style={[styles.closeBtn, { backgroundColor: 'transparent', borderColor: 'transparent' }]} />
      </SafeAreaView>

      {/* Scrollable content */}
      <ScrollView
        style={styles.scrollArea}
        contentContainerStyle={{ flexGrow: 1 }}
        showsVerticalScrollIndicator={false}
      >
        <View style={{ height: H * 0.60 }} />
        {renderContent()}
        <View style={{ height: 120 }} />
      </ScrollView>

      {/* Bottom bar */}
      <SafeAreaView edges={['bottom']} style={styles.bottomBar}>
        <View style={styles.stripRow}>
          {expressions.map((expr, i) => (
            <View
              key={expr.id}
              style={[styles.stripBar, {
                height: i === idx ? 4 : 2.5,
                backgroundColor: store.completedSentenceIds.has(expr.id)
                  ? T.accent : i === idx ? T.text : T.hairStr,
              }]}
            />
          ))}
        </View>
        <View style={styles.btnRow}>
          <TouchableOpacity
            style={[styles.shadowBtn, { backgroundColor: 'rgba(255,255,255,0.10)', borderColor: T.hair }]}
          >
            <Icon.mic color={T.text} size={16} />
            <Text style={[styles.shadowBtnText, { color: T.text }]}>따라 말하기</Text>
          </TouchableOpacity>
          <TouchableOpacity
            onPress={goNext}
            style={[styles.nextBtn, { backgroundColor: T.accent }]}
          >
            <Text style={[styles.nextBtnText, { color: T.accentText }]}>
              {isLast ? '퀴즈 시작하기' : '다음'}
            </Text>
            <Icon.chevRight color={T.accentText} size={16} />
          </TouchableOpacity>
        </View>
      </SafeAreaView>
    </View>
  );
}

const styles = StyleSheet.create({
  safe:           { flex: 1 },
  empty:          { flex: 1, alignItems: 'center', justifyContent: 'center' },
  heroBg:         { position: 'absolute', top: 0, left: 0, right: 0 },
  overlayBottom:  { backgroundColor: 'rgba(0,0,0,0.50)' },
  topChrome:      { position: 'absolute', top: 0, left: 0, right: 0, zIndex: 10, flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center', paddingHorizontal: 18, paddingTop: 6 },
  closeBtn:       { width: 36, height: 36, borderRadius: 12, borderWidth: 1, alignItems: 'center', justifyContent: 'center' },
  pill:           { paddingHorizontal: 14, paddingVertical: 7, borderRadius: 999, borderWidth: 1 },
  pillText:       { fontSize: 10.5, letterSpacing: 1, textTransform: 'uppercase' },
  scrollArea:     { flex: 1, zIndex: 5 },
  contentPad:     { paddingHorizontal: 22, paddingBottom: 20 },
  typeChip:       { flexDirection: 'row', alignItems: 'center', gap: 6, paddingHorizontal: 10, paddingVertical: 5, borderRadius: 6, alignSelf: 'flex-start', marginBottom: 12 },
  typeDot:        { width: 5, height: 5, borderRadius: 3 },
  typeText:       { fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase' },
  tipBox:         { flexDirection: 'row', gap: 10, alignItems: 'flex-start', padding: 12, borderRadius: 12, borderWidth: 1, marginTop: 12 },
  tipText:        { fontSize: 12.5, lineHeight: 18, flex: 1 },
  exRow:          { marginTop: 10, paddingLeft: 12, borderLeftWidth: 2 },
  exEn:           { fontSize: 14, lineHeight: 20 },
  exKo:           { fontSize: 12, marginTop: 2, lineHeight: 18 },
  // Collocation
  collocMain:     { fontSize: 30, lineHeight: 36, letterSpacing: -0.5, marginBottom: 6 },
  collocKo:       { fontSize: 15, marginBottom: 12 },
  wrongPill:      { flexDirection: 'row', alignItems: 'center', alignSelf: 'flex-start', paddingHorizontal: 9, paddingVertical: 4, borderRadius: 6, borderWidth: 1, marginBottom: 12 },
  wrongText:      { fontSize: 12, textDecorationLine: 'line-through' },
  // Idiom
  idiomEn:        { fontSize: 26, lineHeight: 32, letterSpacing: -0.3, marginBottom: 6 },
  idiomKo:        { fontSize: 15, fontWeight: '600', marginBottom: 2 },
  literalKo:      { fontSize: 12.5, marginBottom: 12 },
  // Nuance
  nuanceRow:      { flexDirection: 'row', gap: 8, marginBottom: 14 },
  nuanceCard:     { padding: 12, borderRadius: 12, borderWidth: 1 },
  nuanceWord:     { fontSize: 20, marginBottom: 3 },
  nuanceKo:       { fontSize: 12 },
  nuanceEx:       { fontSize: 11.5, marginTop: 6, lineHeight: 16, fontStyle: 'italic' },
  comparison:     { fontSize: 13.5, lineHeight: 20, marginBottom: 4 },
  // Pattern
  patternEn:      { fontSize: 26, lineHeight: 32, letterSpacing: -0.3, marginBottom: 10 },
  patternKo:      { fontSize: 15, lineHeight: 22, marginBottom: 16 },
  examplesSection: { marginTop: 16 },
  examplesLabel:  { fontSize: 9.5, letterSpacing: 1.2, textTransform: 'uppercase', marginBottom: 10 },
  exBox:          { borderRadius: 14, padding: 14, borderWidth: 1, flexDirection: 'row', alignItems: 'flex-start', gap: 12, marginBottom: 10 },
  exBoxEn:        { fontSize: 15, lineHeight: 22 },
  exBoxKo:        { fontSize: 12, marginTop: 4, lineHeight: 18 },
  speakerBtn:     { width: 34, height: 34, borderRadius: 999, borderWidth: 1, alignItems: 'center', justifyContent: 'center', marginTop: 2 },
  // Bottom
  bottomBar:      { position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 12, paddingHorizontal: 18 },
  stripRow:       { flexDirection: 'row', gap: 3, paddingBottom: 8, height: 24, alignItems: 'center' },
  stripBar:       { flex: 1, borderRadius: 2 },
  btnRow:         { flexDirection: 'row', gap: 10, paddingBottom: 8 },
  shadowBtn:      { flex: 1, height: 50, borderRadius: 14, borderWidth: 1, flexDirection: 'row', alignItems: 'center', justifyContent: 'center', gap: 8 },
  shadowBtnText:  { fontSize: 14, fontWeight: '500' },
  nextBtn:        { height: 50, paddingHorizontal: 22, borderRadius: 14, flexDirection: 'row', alignItems: 'center', gap: 8 },
  nextBtnText:    { fontSize: 14, fontWeight: '600' },
});
