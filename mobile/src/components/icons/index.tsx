import React from 'react';
import Svg, { Path, Rect, Circle, Polyline, Line, G } from 'react-native-svg';

type P = { color: string; size?: number; filled?: boolean };

export const Icon = {
  heart: ({ color, size = 22, filled = false }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill={filled ? color : 'none'} stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"/>
    </Svg>
  ),
  speaker: ({ color, size = 22 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Polyline points="11 5 6 9 2 9 2 15 6 15 11 19 11 5"/>
      <Path d="M19.07 4.93a10 10 0 0 1 0 14.14M15.54 8.46a5 5 0 0 1 0 7.07"/>
    </Svg>
  ),
  chevRight: ({ color, size = 20 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2.5} strokeLinecap="round" strokeLinejoin="round">
      <Path d="M9 18l6-6-6-6"/>
    </Svg>
  ),
  chevLeft: ({ color, size = 20 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2.5} strokeLinecap="round" strokeLinejoin="round">
      <Path d="M15 18l-6-6 6-6"/>
    </Svg>
  ),
  close: ({ color, size = 20 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2} strokeLinecap="round">
      <Line x1="18" y1="6" x2="6" y2="18"/>
      <Line x1="6" y1="6" x2="18" y2="18"/>
    </Svg>
  ),
  check: ({ color, size = 20 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2.5} strokeLinecap="round" strokeLinejoin="round">
      <Polyline points="20 6 9 17 4 12"/>
    </Svg>
  ),
  home: ({ color, size = 22 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/>
      <Polyline points="9 22 9 12 15 12 15 22"/>
    </Svg>
  ),
  book: ({ color, size = 22 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/>
      <Path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/>
    </Svg>
  ),
  bookmark: ({ color, size = 22, filled = false }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill={filled ? color : 'none'} stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"/>
    </Svg>
  ),
  chart: ({ color, size = 22 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Line x1="18" y1="20" x2="18" y2="10"/>
      <Line x1="12" y1="20" x2="12" y2="4"/>
      <Line x1="6" y1="20" x2="6" y2="14"/>
      <Line x1="2" y1="20" x2="22" y2="20"/>
    </Svg>
  ),
  user: ({ color, size = 22 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
      <Circle cx="12" cy="7" r="4"/>
    </Svg>
  ),
  sparkle: ({ color, size = 16 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill={color}>
      <Path d="M12 2l2.4 7.4H22l-6.2 4.5 2.4 7.4L12 17l-6.2 4.3 2.4-7.4L2 9.4h7.6z"/>
    </Svg>
  ),
  mic: ({ color, size = 20 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Rect x="9" y="2" width="6" height="12" rx="3"/>
      <Path d="M19 10c0 3.9-3.1 7-7 7s-7-3.1-7-7"/>
      <Line x1="12" y1="19" x2="12" y2="22"/>
      <Line x1="8" y1="22" x2="16" y2="22"/>
    </Svg>
  ),
  notes: ({ color, size = 20 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/>
      <Polyline points="14 2 14 8 20 8"/>
      <Line x1="16" y1="13" x2="8" y2="13"/>
      <Line x1="16" y1="17" x2="8" y2="17"/>
      <Polyline points="10 9 9 9 8 9"/>
    </Svg>
  ),
  flame: ({ color, size = 24 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill={color}>
      <Path d="M12 2c0 0-5 4-5 9a5 5 0 0 0 10 0c0-3-2-5-2-5s0 3-3 3c0 0 2-4 0-7z"/>
    </Svg>
  ),
  share: ({ color, size = 20 }: P) => (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none" stroke={color} strokeWidth={2} strokeLinecap="round" strokeLinejoin="round">
      <Circle cx="18" cy="5" r="3"/>
      <Circle cx="6" cy="12" r="3"/>
      <Circle cx="18" cy="19" r="3"/>
      <Line x1="8.59" y1="13.51" x2="15.42" y2="17.49"/>
      <Line x1="15.41" y1="6.51" x2="8.59" y2="10.49"/>
    </Svg>
  ),
};
