import React, { useState } from 'react';
import {
  View, Text, StyleSheet, ScrollView, TouchableOpacity, TextInput,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { useTokens } from '../theme/useTokens';
import { useUserStore, CefrLevel } from '../store/useUserStore';
import { Icon } from '../components/icons';

const CEFR_OPTIONS: { value: CefrLevel; label: string; ko: string }[] = [
  { value: 'A1', label: 'A1', ko: '왕초보' },
  { value: 'A2', label: 'A2', ko: '초보' },
  { value: 'B1', label: 'B1', ko: '중급' },
  { value: 'B2', label: 'B2', ko: '중상급' },
  { value: 'C1', label: 'C1', ko: '고급' },
  { value: 'C2', label: 'C2', ko: '원어민급' },
];

const VOICE_OPTIONS = [
  { value: 'en-US-JennyNeural', label: 'Jenny' },
  { value: 'en-US-AriaNeural', label: 'Aria' },
  { value: 'en-US-GuyNeural', label: 'Guy' },
  { value: 'en-US-DavisNeural', label: 'Davis' },
];

interface RowProps {
  label: string;
  value?: string;
  danger?: boolean;
  last?: boolean;
  onPress?: () => void;
}

export default function ProfileScreen() {
  const T = useTokens();
  const { name, level, setName, setLevel, streakDays, totalLearned } = useUserStore();

  const [editingName, setEditingName] = useState(false);
  const [nameInput, setNameInput] = useState(name);
  const [voice, setVoice] = useState('en-US-JennyNeural');

  const saveName = () => {
    const trimmed = nameInput.trim();
    setName(trimmed);
    setNameInput(trimmed);
    setEditingName(false);
  };

  const Row = ({ label, value, danger, last, onPress }: RowProps) => (
    <TouchableOpacity
      onPress={onPress}
      activeOpacity={onPress ? 0.7 : 1}
      style={[styles.row, { borderBottomWidth: last ? 0 : 1, borderBottomColor: T.hair }]}
    >
      <Text style={[styles.rowLabel, { color: danger ? T.accent : T.text }]}>{label}</Text>
      {value ? <Text style={[styles.rowValue, { color: T.textDim }]}>{value}</Text> : null}
      {!danger && onPress && <Icon.chevRight color={T.textMute} size={14} />}
    </TouchableOpacity>
  );

  const SegRow = ({
    label, options, value, onChange, last,
  }: {
    label: string;
    options: { value: string; label: string }[];
    value: string;
    onChange: (v: string) => void;
    last?: boolean;
  }) => (
    <View style={[styles.segRow, { borderBottomWidth: last ? 0 : 1, borderBottomColor: T.hair }]}>
      <Text style={[styles.rowLabel, { color: T.text }]}>{label}</Text>
      <View style={styles.segGroup}>
        {options.map(o => (
          <TouchableOpacity
            key={o.value}
            onPress={() => onChange(o.value)}
            style={[
              styles.segChip,
              {
                backgroundColor: value === o.value ? T.accent : 'transparent',
                borderColor: value === o.value ? T.accent : T.hairStr,
              },
            ]}
          >
            <Text style={[styles.segText, { color: value === o.value ? T.accentText : T.textMute }]}>
              {o.label}
            </Text>
          </TouchableOpacity>
        ))}
      </View>
    </View>
  );

  return (
    <SafeAreaView style={[styles.safe, { backgroundColor: T.bg1 }]} edges={['top']}>
      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 100 }}>
        {/* Header */}
        <View style={styles.header}>
          <Text style={[styles.title, { color: T.text, fontFamily: T.serif }]}>내 정보</Text>
        </View>

        {/* Profile card */}
        <View style={[styles.profileCard, { backgroundColor: T.bg2, borderColor: T.hair }]}>
          <View style={[styles.avatar, { backgroundColor: T.art1, borderColor: T.hairStr }]}>
            <Text style={[styles.avatarText, { color: T.text, fontFamily: T.serif }]}>
              {(name || '사').slice(0, 2)}
            </Text>
          </View>
          <View style={{ flex: 1, minWidth: 0 }}>
            <Text style={[styles.profileName, { color: T.text, fontFamily: T.serif }]}>
              {name || '사용자'}
            </Text>

            {/* Name edit */}
            {editingName ? (
              <View style={styles.nameEditRow}>
                <TextInput
                  value={nameInput}
                  onChangeText={setNameInput}
                  onSubmitEditing={saveName}
                  placeholder="불리고 싶은 이름"
                  placeholderTextColor={T.textMute}
                  autoFocus
                  style={[styles.nameInput, { backgroundColor: T.bg3, borderColor: T.hairStr, color: T.text, fontFamily: T.sans }]}
                />
                <TouchableOpacity onPress={saveName}>
                  <Text style={[styles.nameSave, { color: T.accent, fontFamily: T.mono }]}>완료</Text>
                </TouchableOpacity>
              </View>
            ) : (
              <TouchableOpacity onPress={() => setEditingName(true)} style={styles.nameEditBtn}>
                <Text style={[styles.nameEditLabel, { color: T.textMute, fontFamily: T.mono }]}>이름</Text>
                <Text style={[styles.nameEditValue, { color: name ? T.text : T.textMute }]}>
                  {name || '설정하기'}
                </Text>
                <Text style={[{ color: T.textMute, fontSize: 11 }]}>✎</Text>
              </TouchableOpacity>
            )}

            {/* Level badge */}
            <View style={styles.badgeRow}>
              <View style={[styles.badge, { backgroundColor: T.accentSoft }]}>
                <Text style={[styles.badgeText, { color: T.accent, fontFamily: T.mono }]}>
                  {level} · {CEFR_OPTIONS.find(o => o.value === level)?.ko}
                </Text>
              </View>
            </View>
          </View>
        </View>

        {/* Quick stats */}
        <View style={styles.statsRow}>
          <View style={[styles.statLeft, { backgroundColor: T.bg2, borderColor: T.hair }]}>
            <Text style={[styles.statNum, { color: T.text, fontFamily: T.serif }]}>{streakDays}</Text>
            <Text style={[styles.statLabel, { color: T.textDim }]}>스트릭</Text>
          </View>
          <View style={[styles.statMid, { backgroundColor: T.bg2, borderColor: T.hair }]}>
            <Text style={[styles.statNum, { color: T.text, fontFamily: T.serif }]}>{totalLearned}</Text>
            <Text style={[styles.statLabel, { color: T.textDim }]}>단어</Text>
          </View>
          <View style={[styles.statRight, { backgroundColor: T.bg2, borderColor: T.hair }]}>
            <Text style={[styles.statNum, { color: T.text, fontFamily: T.serif }]}>—</Text>
            <Text style={[styles.statLabel, { color: T.textDim }]}>랭킹</Text>
          </View>
        </View>

        {/* Section: Learning */}
        <Text style={[styles.sectionLabel, { color: T.textMute, fontFamily: T.mono }]}>학습</Text>
        <View style={[styles.section, { backgroundColor: T.bg2, borderColor: T.hair }]}>
          <SegRow
            label="레벨"
            options={CEFR_OPTIONS.map(o => ({ value: o.value, label: o.label }))}
            value={level}
            onChange={v => setLevel(v as CefrLevel)}
          />
          <Row label="하루 목표" value="15분" onPress={() => {}} />
          <SegRow
            label="음성"
            options={VOICE_OPTIONS}
            value={voice}
            onChange={setVoice}
            last
          />
        </View>

        {/* Section: App */}
        <Text style={[styles.sectionLabel, { color: T.textMute, fontFamily: T.mono }]}>앱</Text>
        <View style={[styles.section, { backgroundColor: T.bg2, borderColor: T.hair }]}>
          <Row label="저장한 카드" value="0개" onPress={() => {}} />
          <Row label="구독 관리" value="무료" onPress={() => {}} />
          <Row label="도움말" last onPress={() => {}} />
        </View>

        {/* Credits */}
        <Text style={[styles.credits, { color: T.textFaint, fontFamily: T.mono }]}>
          EngCat v279
        </Text>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safe:          { flex: 1 },
  header:        { paddingHorizontal: 22, paddingTop: 8, paddingBottom: 16 },
  title:         { fontSize: 26, letterSpacing: -0.3 },
  profileCard:   { marginHorizontal: 18, borderRadius: 22, borderWidth: 1, padding: 20, flexDirection: 'row', alignItems: 'center', gap: 16, marginBottom: 12 },
  avatar:        { width: 64, height: 64, borderRadius: 32, borderWidth: 1, alignItems: 'center', justifyContent: 'center' },
  avatarText:    { fontSize: 24, fontStyle: 'italic' },
  profileName:   { fontSize: 22, lineHeight: 26, letterSpacing: -0.3, marginBottom: 4 },
  nameEditRow:   { flexDirection: 'row', alignItems: 'center', gap: 8, marginTop: 8 },
  nameInput:     { flex: 1, padding: 8, borderRadius: 8, borderWidth: 1, fontSize: 15 },
  nameSave:      { fontSize: 12, letterSpacing: 0.5 },
  nameEditBtn:   { flexDirection: 'row', alignItems: 'center', gap: 5, marginTop: 7 },
  nameEditLabel: { fontSize: 10.5, letterSpacing: 0.5 },
  nameEditValue: { fontSize: 13 },
  badgeRow:      { flexDirection: 'row', gap: 6, marginTop: 8 },
  badge:         { paddingHorizontal: 8, paddingVertical: 3, borderRadius: 6 },
  badgeText:     { fontSize: 10.5, fontWeight: '600', letterSpacing: 0.4 },
  statsRow:      { flexDirection: 'row', marginHorizontal: 18, marginBottom: 24 },
  statLeft:      { flex: 1, padding: 14, borderTopLeftRadius: 16, borderBottomLeftRadius: 16, borderWidth: 1, alignItems: 'center' },
  statMid:       { flex: 1, padding: 14, borderTopWidth: 1, borderBottomWidth: 1, borderLeftWidth: 0, borderRightWidth: 0, borderColor: undefined, alignItems: 'center' },
  statRight:     { flex: 1, padding: 14, borderTopRightRadius: 16, borderBottomRightRadius: 16, borderWidth: 1, alignItems: 'center' },
  statNum:       { fontSize: 22, lineHeight: 24, marginBottom: 5 },
  statLabel:     { fontSize: 10.5, letterSpacing: 0.3 },
  sectionLabel:  { paddingHorizontal: 22, paddingTop: 20, paddingBottom: 8, fontSize: 10, letterSpacing: 1.4, textTransform: 'uppercase' },
  section:       { marginHorizontal: 18, borderRadius: 18, borderWidth: 1, marginBottom: 8, overflow: 'hidden' },
  row:           { paddingHorizontal: 18, paddingVertical: 15, flexDirection: 'row', alignItems: 'center', gap: 12 },
  rowLabel:      { flex: 1, fontSize: 15, fontWeight: '500' },
  rowValue:      { fontSize: 13 },
  segRow:        { paddingHorizontal: 18, paddingVertical: 13, flexDirection: 'row', alignItems: 'center', gap: 12 },
  segGroup:      { flexDirection: 'row', flexWrap: 'wrap', gap: 4, justifyContent: 'flex-end' },
  segChip:       { paddingHorizontal: 10, paddingVertical: 5, borderRadius: 8, borderWidth: 1 },
  segText:       { fontSize: 12, fontWeight: '600' },
  credits:       { textAlign: 'center', padding: 24, fontSize: 11, letterSpacing: 0.3 },
});
