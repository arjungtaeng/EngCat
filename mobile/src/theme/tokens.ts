export const dark = {
  bg0:        '#08080C',
  bg1:        '#0D0D11',
  bg2:        '#161619',
  bg3:        '#1E1E26',
  bg4:        '#27272F',
  text:       '#F8F5EF',
  textDim:    'rgba(248,245,239,0.70)',
  textMute:   'rgba(248,245,239,0.50)',
  textFaint:  'rgba(248,245,239,0.22)',
  accent:     '#E8B26A',
  accentSoft: 'rgba(232,178,106,0.14)',
  accentDeep: '#C8904A',
  accentText: '#2C1A06',
  good:       '#8CCBA8',
  goodSoft:   'rgba(140,203,168,0.14)',
  warn:       '#E89A6A',
  bad:        '#E07A7A',
  badSoft:    'rgba(224,122,122,0.14)',
  art1: '#2D3548', art2: '#3B3344', art3: '#3A4039',
  art4: '#43352A', art5: '#2D3D3F', art6: '#4A3A48',
  hair:       'rgba(244,241,235,0.08)',
  hairStr:    'rgba(244,241,235,0.16)',
} as const;

export const light = {
  bg0:        '#F9F5EE',
  bg1:        '#FEFDF9',
  bg2:        '#FFFFFF',
  bg3:        '#F0EBE1',
  bg4:        '#E6DFD4',
  text:       '#1C1610',
  textDim:    'rgba(28,22,16,0.65)',
  textMute:   'rgba(28,22,16,0.45)',
  textFaint:  'rgba(28,22,16,0.20)',
  accent:     '#B06010',
  accentSoft: 'rgba(176,96,16,0.14)',
  accentDeep: '#8A4808',
  accentText: '#FFFFFF',
  good:       '#28885C',
  goodSoft:   'rgba(40,136,92,0.13)',
  warn:       '#C87830',
  bad:        '#C83838',
  badSoft:    'rgba(200,56,56,0.13)',
  art1: '#B8CCDF', art2: '#D2BEDD', art3: '#B4D0BA',
  art4: '#DBBEA8', art5: '#B0CBCF', art6: '#D4BAC8',
  hair:       'rgba(28,22,16,0.09)',
  hairStr:    'rgba(28,22,16,0.18)',
} as const;

export const typography = {
  sans:    'Pretendard',
  serif:   'InstrumentSerif',
  display: 'Outfit',
  thin:    'Raleway',
  mono:    'JetBrainsMono',
} as const;

export const radius = {
  sm:   10,
  md:   14,
  lg:   20,
  xl:   28,
  pill: 999,
} as const;

export type ColorTokens = typeof dark;
export type TypographyTokens = typeof typography;

export const defaultTokens = { ...dark, ...typography, r: radius };
export type Tokens = typeof defaultTokens;
