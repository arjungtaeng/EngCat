import { useColorScheme } from 'react-native';
import { dark, light, typography, radius } from './tokens';

export function useTokens() {
  const scheme = useColorScheme();
  const colors = scheme === 'light' ? light : dark;
  return { ...colors, ...typography, r: radius };
}
