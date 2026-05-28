import React from 'react';
import { Image, ImageProps, useColorScheme } from 'react-native';

type LogoSize = 'sm' | 'md' | 'lg';

interface LogoProps extends Omit<ImageProps, 'source'> {
  size?: LogoSize;
}

const logoDark = require('../../assets/logo/cat-dark-512.png');
const logoLight = require('../../assets/logo/cat-light-512.png');

export function Logo({ size = 'md', style, ...props }: LogoProps) {
  const scheme = useColorScheme();
  const source = scheme === 'light' ? logoLight : logoDark;

  return (
    <Image
      source={source}
      style={style}
      {...props}
    />
  );
}
