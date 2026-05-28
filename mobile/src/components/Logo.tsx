import React from 'react';
import { Image, ImageProps, useColorScheme } from 'react-native';

type LogoSize = 'sm' | 'md' | 'lg';

interface LogoProps extends Omit<ImageProps, 'source'> {
  size?: LogoSize;
}

const sizeMap: Record<LogoSize, number> = {
  sm: 256,
  md: 512,
  lg: 1024,
};

export function Logo({ size = 'md', style, ...props }: LogoProps) {
  const scheme = useColorScheme();
  const dimension = sizeMap[size];

  const source = scheme === 'light'
    ? require('../../assets/logo/cat-light-256.png')
    : require('../../assets/logo/cat-dark-256.png');

  return (
    <Image
      source={source}
      style={[{ width: dimension, height: dimension }, style]}
      {...props}
    />
  );
}
