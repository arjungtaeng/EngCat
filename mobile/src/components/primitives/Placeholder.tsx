import React from 'react';
import { View, Text, StyleSheet, ViewStyle } from 'react-native';
import { useTokens } from '../../theme/useTokens';

interface Props {
  height: number;
  tint?: string;
  radius?: number;
  label?: string;
  style?: ViewStyle;
}

export function Placeholder({ height, tint, radius = 16, label, style }: Props) {
  const T = useTokens();
  const color = tint ?? T.art1;
  return (
    <View style={[{ height, borderRadius: radius, overflow: 'hidden', backgroundColor: color }, style]}>
      <View style={[StyleSheet.absoluteFill, styles.stripes]} />
      {label && (
        <Text style={[styles.label, { fontFamily: T.mono, color: 'rgba(255,255,255,0.4)' }]}>
          {label}
        </Text>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  stripes: {
    opacity: 0.3,
  },
  label: {
    position: 'absolute',
    bottom: 10,
    left: 12,
    fontSize: 9,
    letterSpacing: 0.4,
    textTransform: 'uppercase',
  },
});
