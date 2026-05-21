# Claude Code 시작 프롬프트

아래 프롬프트들을 **순서대로** Claude Code에 붙여넣어 사용하세요. 각 프롬프트는 한 단계의 작업을 마무리하도록 설계되었습니다.

> **사용 방법:**
> 1. 이 핸드오프 폴더(`design_handoff_engcat/`) 전체를 비어있는 새 폴더에 압축 해제
> 2. 해당 폴더에서 `claude` 실행 (Claude Code)
> 3. 아래 프롬프트 0번부터 차례로 붙여넣기

---

## 🟡 프롬프트 0 — 오리엔테이션 (가장 먼저)

```
이 폴더는 EngCat 영어 학습 앱의 디자인 핸드오프 패키지입니다.

먼저 다음 파일들을 순서대로 정독한 뒤, 본인이 무엇을 만들 것인지 1-2단락으로 요약해 주세요.
바로 코드를 짜지 마세요. 우선 이해부터 합니다.

1. CLAUDE.md (작업 지침 — 최우선)
2. README.md (디자인 명세)
3. design_references/tokens.jsx (디자인 토큰)
4. design_references/screen-home.jsx (가장 자주 진입하는 화면)
5. design_references/screen-word-card.jsx (가장 어려운 인터랙션)

읽은 뒤 다음을 알려주세요:
- 제품의 핵심 컨셉
- 디자인 시스템 요약 (컬러 3-4개, 폰트 3개, radius 스케일)
- Phase 1 MVP에 포함될 화면 목록
- 기술 스택 추천 (CLAUDE.md 권장안에 동의하는지, 아니면 다른 안)
- 막히는 점 / 사용자에게 질문할 것
```

---

## 🟡 프롬프트 1 — Expo 프로젝트 세팅

```
좋아요. 이제 Expo + TypeScript 프로젝트를 초기화하고 디자인 토큰까지 셋업해 주세요.

1. 현재 폴더 위에서 `npx create-expo-app@latest engcat --template expo-template-blank-typescript`
   실행해서 engcat/ 폴더 안에 RN 앱을 만드세요.
2. 의존성 추가:
   - zustand
   - react-native-reanimated
   - react-native-gesture-handler
   - expo-font, expo-av, expo-haptics, expo-blur
   - lucide-react-native, react-native-svg
   - @react-navigation/native, @react-navigation/native-stack, @react-navigation/bottom-tabs
3. README.md §3의 모든 디자인 토큰을 src/theme/tokens.ts에 TypeScript로 옮기세요
   ( `as const` 사용, 인덱스 시그니처보다 명시적 키 사용 ).
4. 폰트(Pretendard Variable, Instrument Serif, JetBrains Mono)를 expo-font로 로드하는 useFonts 훅을 src/theme/typography.ts에 만드세요.
5. App.tsx에서 폰트가 로드될 때까지 SplashScreen.preventAutoHideAsync()로 대기.

작업 후 `npm start`가 깨끗하게 실행되는 것까지 확인하고 마무리하세요. 그리고 다음 단계에서 무엇을 할 지 한 줄로 알려주세요.
```

---

## 🟡 프롬프트 2 — 공통 컴포넌트

```
src/components/primitives/에 다음 공통 컴포넌트를 만드세요. 모두 다크 모드 전용이며,
design_references/tokens.jsx의 ECPhone, ECStatusBar, ECPlaceholder, ECHomeIndicator를 RN으로 옮긴 버전입니다.

- ScreenContainer.tsx — SafeArea + bg1 배경 + 기본 padding
- Placeholder.tsx — gradient + 줄무늬 + 모노스페이스 caption (ECPlaceholder 동등 구현, expo-linear-gradient 사용)
- TabBar.tsx — 4탭 (홈/카드/진도/내정보), screen-home.jsx의 ECTabBar 참고
- GlassButton.tsx — expo-blur 사용한 원형 글래스 버튼 (단어 카드 액션 레일용)
- Chip.tsx — 작은 라벨 chip (accentSoft, bg2, bg3 variant)

아이콘은 src/components/icons/ 아래에 design_references/icons.jsx에서 사용된 것들을 react-native-svg로 한 파일씩 옮기세요.
- 또는 동등한 lucide-react-native 아이콘을 export하는 래퍼를 만드세요.

작업 후 Storybook 같은 건 필요 없고, 임시로 App.tsx에서 한번에 렌더링해서 시각 확인이 되도록 해주세요.
```

---

## 🟡 프롬프트 3 — Home 화면

```
src/screens/Home.tsx를 만드세요. 참고: design_references/screen-home.jsx (ECScreenHome 함수).

요구사항:
- 상단 바: EngCat 로고 + 스트릭 chip (🔥 27) + 프로필 아바타
- 인사말: "좋은 아침이에요, {name}님." — 시간대(아침/점심/저녁)별 변경
- 히어로 카드: 오늘의 학습 — 제목, 설명, 진행률 (6/15), "이어서 학습하기" CTA
- "오늘의 단어" horizontal scroll: 4-10개 Placeholder 카드
- "오늘의 문장": 2개 카드 (스피커 아이콘 + 영문 italic + 한글)
- 하단 TabBar (이전 단계에서 만든 것)

데이터는 src/data/cards.ts에 mock으로 시작 (여행/공항 주제, B1-B2 레벨 단어 10개 + 문장 5개).
모든 측정값은 screen-home.jsx의 인라인 스타일을 그대로 따르세요.

완료 후 시뮬레이터 스크린샷을 디자인 레퍼런스와 비교해 보고, 차이점이 있으면 자체 수정해 주세요.
```

---

## 🟡 프롬프트 4 — Word Card (세로 스와이프 피드)

```
src/screens/WordCard.tsx를 만드세요. 참고: design_references/screen-word-card.jsx.

이건 가장 어려운 화면입니다 — TikTok/Reels 스타일 세로 스와이프 피드.

요구사항:
- react-native-reanimated v3 + react-native-gesture-handler 사용
- 세로 PanGesture: 위로 스와이프 → 다음 카드, 아래로 스와이프 → 이전 카드
- threshold 화면 높이의 25%, velocity 800 이상이면 즉시 전환
- 카드는 absolute 포지션으로 stack, 현재/다음/이전 3장 동시 마운트
- spring 애니메이션: stiffness 280, damping 30
- 풀블리드 Placeholder + dark gradient overlay (top 45%, bottom 92%)
- 글래스 액션 레일 (오른쪽, 48px 원형, 4개)
- 하단 콘텐츠: POS + IPA + 영문 단어 (Instrument Serif italic 56px) + 한글 + 정의 + 예문 카드
- 하단 진행 strip: 10개 카드 인디케이터

데이터: cards.ts에서 type === 'word'인 것 10개.
완료 후 시뮬레이터에서 실제로 스와이프해 보고, 부드럽지 않으면 튜닝하세요.
```

---

## 🟡 프롬프트 5 — 나머지 화면들

```
다음 화면들을 순서대로 구현하세요. 각 화면 완료마다 시뮬레이터로 확인하고 디자인과 비교하세요.

1. src/screens/SentenceCard.tsx — design_references/screen-sentence-card.jsx 참고
   - WordCard와 같은 세로 스와이프 패턴 재사용
   - 3컷 storyboard viewport (4:3) + speech bubble overlay
   - 표현 팁 카드

2. src/screens/Quiz.tsx — design_references/screen-quiz.jsx 참고
   - 4지선다 + 정답/오답 피드백
   - 시각 프롬프트 + 선택지 카드 + 결과 배너
   - 정답 시 살짝 bounce 애니메이션 (1.0 → 1.04 → 1.0, 300ms spring)

3. src/screens/Stats.tsx — design_references/screen-stats.jsx 참고
   - 스트릭 히어로
   - 3개 통계 타일
   - 주간 막대 차트 (7개 막대, 오늘은 accent)
   - 12주 활동 히트맵 (12 columns × 7 rows, 4단계 amber)

4. src/screens/Profile.tsx — design_references/screen-profile.jsx 참고
   - 프로필 카드 + 3분할 통계 + 그룹화된 리스트 3개 섹션

5. src/screens/OnboardingLevel.tsx & OnboardingGoal.tsx
   — design_references/screen-onboarding.jsx 참고
```

---

## 🟡 프롬프트 6 — 네비게이션 + 상태

```
이제 화면들을 연결합니다.

1. src/navigation/RootNavigator.tsx
   - 첫 실행: Onboarding stack (Level → Goal → "시작하기"는 메인으로 reset)
   - 메인: BottomTabNavigator (Home, Cards-WordCard, Stats, Profile)
   - 모달: Quiz (Home의 "퀴즈" 진입점에서)
   - Card 화면들은 fullscreen modal로 진입 (push transition)

2. src/store/
   - useUserStore.ts — User 상태, AsyncStorage 영속화
   - useCardsStore.ts — Card 리스트, 학습 상태, 북마크
   - useStreakStore.ts — 스트릭 계산, 매일 자정 체크
   - useSessionStore.ts — 오늘의 DailySession 진행

3. src/data/spacedRepetition.ts
   - SM-2 알고리즘 단순화 버전
   - mastery 0→1→2→3, 다음 review: 1d → 3d → 7d → 21d

완료 후 풀 플로우 (온보딩 → 홈 → 단어 카드 → 퀴즈 → 진도)가 작동하는지 확인하세요.
```

---

## 🟡 프롬프트 7 — 다듬기 & 햅틱 & 오디오

```
마지막 단계입니다.

1. expo-haptics 추가:
   - 카드 스와이프 전환: Haptics.impactAsync(ImpactFeedbackStyle.Light)
   - 퀴즈 정답: Haptics.notificationAsync(NotificationFeedbackType.Success)
   - 퀴즈 오답: Haptics.notificationAsync(NotificationFeedbackType.Error)
   - 탭바 탭: Selection

2. 발음 재생 (placeholder TTS):
   - expo-av 또는 expo-speech (영문 TTS)로 일단 시작
   - 추후 실제 mp3 파일로 교체할 수 있는 구조

3. 화면 전환 애니메이션:
   - native-stack의 기본 push/pop (slide_from_right) 사용
   - 카드 모달은 modal presentation

4. 시뮬레이터에서 풀 플로우를 한 번 끝까지 돌려보고, 어색한 부분 자가 수정.

완료 후 README.md를 업데이트해서 어떻게 빌드/실행하는지 적어주세요.
```

---

## 💡 팁

- 각 프롬프트가 끝나면 **시뮬레이터로 확인** 후 다음 단계로 가세요. 한꺼번에 다 짜면 디자인이 어긋날 가능성이 높아요.
- 막히면 Claude Code에 "design_references/screen-XXX.jsx를 다시 한 번 보고 인라인 스타일 측정값을 정확히 옮겨줘"라고 요청하세요.
- 실제 카드 콘텐츠(영문/한글/예문)는 mock 데이터입니다 — 진짜 콘텐츠를 채우려면 별도 작업이 필요합니다.
- 백엔드(Supabase)는 Phase 2로 미뤄두고, Phase 1은 AsyncStorage + 정적 JSON으로 끝내는 게 가장 빠릅니다.

---

## 📦 이 폴더에 포함된 것

- `README.md` — 디자인 명세 (디자인 토큰, 화면별 인터랙션, 상태 모델)
- `CLAUDE.md` — Claude Code 자동 지침 (Claude Code가 모든 작업에서 참고)
- `PROMPT.md` — 이 파일 (시작 프롬프트)
- `design_references/` — 모든 디자인 레퍼런스 HTML/JSX
