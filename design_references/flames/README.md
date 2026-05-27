# EngCat 스트릭 불꽃 — 7단계 아이콘 시스템

스트릭(연속 학습 일수)에 따라 진화하는 불꽃 아이콘. 모든 SVG는 `24 × 24` viewBox 기준으로 어떤 크기로든 확대 가능합니다.

## 파일 목록

| 단계 | 파일 (SVG) | 파일 (PNG 256×256) | 스트릭 범위 |
|---|---|---|---|
| 0 | `flame-stage-0-cold-ash.svg` | `.png` | 0일 (학습 안 함) |
| 1 | `flame-stage-1-spark.svg` | `.png` | 1-2일 |
| 2 | `flame-stage-2-small-flame.svg` | `.png` | 3-6일 |
| 3 | `flame-stage-3-standard-flame.svg` | `.png` | 7-13일 |
| 4 | `flame-stage-4-active-flame.svg` | `.png` | 14-29일 |
| 5 | `flame-stage-5-strong-flame.svg` | `.png` | 30-59일 |
| 6 | `flame-stage-6-legendary-inferno.svg` | `.png` | 60일+ |

## React Native (react-native-svg)에서 사용하기

### 1. 단계 결정 함수

```ts
// src/utils/flame.ts
export type FlameStage = 0 | 1 | 2 | 3 | 4 | 5 | 6;

export function flameStageForStreak(streak: number): FlameStage {
  if (!streak || streak < 1) return 0;
  if (streak < 3)   return 1;
  if (streak < 7)   return 2;
  if (streak < 14)  return 3;
  if (streak < 30)  return 4;
  if (streak < 60)  return 5;
  return 6;
}
```

### 2. FlameIcon 컴포넌트

react-native-svg의 SvgXml로 SVG 문자열을 그대로 렌더링합니다:

```tsx
// src/components/FlameIcon.tsx
import * as React from 'react';
import { SvgXml } from 'react-native-svg';
import { flameStageForStreak, FlameStage } from '@/utils/flame';

// 7개 SVG를 require로 import — 또는 import as raw string (Metro 설정 필요)
import stage0 from '../assets/flames/flame-stage-0-cold-ash.svg';
import stage1 from '../assets/flames/flame-stage-1-spark.svg';
import stage2 from '../assets/flames/flame-stage-2-small-flame.svg';
import stage3 from '../assets/flames/flame-stage-3-standard-flame.svg';
import stage4 from '../assets/flames/flame-stage-4-active-flame.svg';
import stage5 from '../assets/flames/flame-stage-5-strong-flame.svg';
import stage6 from '../assets/flames/flame-stage-6-legendary-inferno.svg';

const STAGES = [stage0, stage1, stage2, stage3, stage4, stage5, stage6];

interface Props {
  streak?: number;
  stage?: FlameStage;
  size?: number;
}

export function FlameIcon({ streak = 0, stage, size = 24 }: Props) {
  const s = stage !== undefined ? stage : flameStageForStreak(streak);
  return <SvgXml xml={STAGES[s]} width={size} height={size} />;
}
```

### 3. SVG transformer 설정 (Metro)

react-native-svg-transformer를 사용하면 SVG를 컴포넌트로 import할 수 있어요:

```bash
npm install --save-dev react-native-svg-transformer
```

`metro.config.js`:

```js
const { getDefaultConfig } = require('expo/metro-config');

module.exports = (() => {
  const config = getDefaultConfig(__dirname);
  const { transformer, resolver } = config;
  config.transformer = {
    ...transformer,
    babelTransformerPath: require.resolve('react-native-svg-transformer'),
  };
  config.resolver = {
    ...resolver,
    assetExts: resolver.assetExts.filter(ext => ext !== 'svg'),
    sourceExts: [...resolver.sourceExts, 'svg'],
  };
  return config;
})();
```

`declarations.d.ts`:

```ts
declare module '*.svg' {
  import { SvgProps } from 'react-native-svg';
  const content: React.FC<SvgProps>;
  export default content;
}
```

그러면 `import Stage0 from './flame-stage-0.svg'`로 컴포넌트처럼 쓸 수 있어요:

```tsx
<Stage0 width={64} height={64} />
```

## 사용 위치

### 홈 화면 — 상단 스트릭 칩 (작은 사이즈)

```tsx
<View style={styles.streakChip}>
  <FlameIcon streak={user.streak.current} size={14} />
  <Text>{user.streak.current}</Text>
</View>
```

### 진도 화면 — 스트릭 히어로 카드 (큰 사이즈)

```tsx
<View style={styles.heroCard}>
  <View>
    <Text>연속 학습</Text>
    <Text style={styles.bigNumber}>{streak.current}일</Text>
  </View>
  <FlameIcon streak={streak.current} size={64} />
</View>
```

### 진도 화면 — 7단계 진행 바 (모든 단계를 나란히)

```tsx
<View style={styles.stageBar}>
  {([0,1,2,3,4,5,6] as const).map(stage => {
    const currentStage = flameStageForStreak(streak.current);
    const cur = stage === currentStage;
    const reached = stage <= currentStage;
    return (
      <View key={stage} style={{ opacity: reached ? 1 : 0.32 }}>
        <FlameIcon stage={stage} size={28} />
        <Text>{['0','1','3','7','14','30','60+'][stage]}</Text>
      </View>
    );
  })}
</View>
```

## 컬러 토큰

SVG 안에 inline으로 정의되어 있지만, 디자인 시스템과 일관성을 위해 token으로 추출하는 것을 권장합니다:

```ts
export const flameColors = {
  cold:   '#5a5560',                       // 차가운 재
  ember:  '#8a6a52',                       // 어두운 불씨
  flame1: '#E89A6A',                       // 따뜻한 오렌지 (외곽)
  flame2: '#E8B26A',                       // 앰버 (중간)
  flame3: '#F0C878',                       // 밝은 앰버
  inner:  '#FFE4B0',                       // 뜨거운 안쪽
  spark:  '#FFD27A',                       // 불티
  glow:   'rgba(232,178,106,0.4)',         // 외곽 글로우
} as const;
```

SVG에 동적으로 색을 주입하고 싶으면 `SvgXml`의 `override` prop을 쓰거나, SVG 파일 안의 hex 코드를 token 변수로 변환한 컴포넌트 버전을 만들면 됩니다.

## 테스트

```ts
import { flameStageForStreak } from './flame';

describe('flameStageForStreak', () => {
  it.each([
    [0, 0], [1, 1], [2, 1], [3, 2], [6, 2],
    [7, 3], [13, 3], [14, 4], [29, 4],
    [30, 5], [59, 5], [60, 6], [365, 6],
  ])('streak %i → stage %i', (streak, expected) => {
    expect(flameStageForStreak(streak)).toBe(expected);
  });
});
```
