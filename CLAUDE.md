# Claude Code Instructions — EngCat

이 파일은 Claude Code가 이 프로젝트에서 작업할 때 항상 참고하는 지침입니다.

## 프로젝트
**EngCat** — B1-B2 한국인 영어 학습자용 프리미엄 다크 모드 학습 앱. 매일 단어 10개 + 문장 5개를 이미지·짧은 애니메이션과 함께 제공. iOS + Android 모바일 우선.

## 작업 시작 전 반드시 읽을 것
1. `README.md` — 전체 디자인 명세 (디자인 토큰, 화면별 인터랙션, 상태 모델)
2. `design_references/EngCat App Design.html` — HTML 디자인 레퍼런스 (브라우저로 열어보기)
3. `design_references/tokens.jsx` — 모든 디자인 토큰 정의 위치 (그대로 TS 객체로 이식)
4. `design_references/screen-*.jsx` — 화면별 인라인 스타일/구조 그대로 명시되어 있음

## 기술 스택 (권장)
- **Expo + React Native + TypeScript**
- 상태: **Zustand**
- 애니메이션: **react-native-reanimated v3** + **gesture-handler**
- 폰트: **expo-font** (Pretendard, Instrument Serif, JetBrains Mono)
- 오디오: **expo-av** / **expo-audio**
- 햅틱: **expo-haptics**
- 블러: **expo-blur**
- 백엔드(선택): **Supabase**

다른 스택을 쓰고 싶다면 사용자에게 먼저 확인하세요.

## 폴더 구조 (권장)
```
src/
  theme/
    tokens.ts        ← README §3의 컬러/타입/스페이싱
    typography.ts
  components/
    icons/           ← icons.jsx의 SVG들을 react-native-svg로
    primitives/      ← Phone, StatusBar, Placeholder, Chip, GlassButton
  screens/
    OnboardingLevel.tsx
    OnboardingGoal.tsx
    Home.tsx
    WordCard.tsx
    SentenceCard.tsx
    Quiz.tsx
    Stats.tsx
    Profile.tsx
  navigation/
    RootNavigator.tsx
  store/
    useUserStore.ts
    useCardsStore.ts
    useStreakStore.ts
  data/
    cards.ts         ← 시드 데이터
    spacedRepetition.ts
  hooks/
  utils/
```

## 우선순위 (Phase 1 = MVP)
**다음 화면을 이 순서로 구현하세요:**
1. 디자인 토큰 + 공통 컴포넌트 (Phone shell, StatusBar는 RN에서 불필요 — 대신 SafeArea)
2. **Home (홈)** — 가장 자주 진입하는 화면
3. **Word Card (단어 카드)** — 세로 스와이프 피드, 가장 어려운 인터랙션
4. **Sentence Card (문장 카드)** — Word Card 패턴 재사용
5. **Quiz (퀴즈)** — 4지선다 + 정답 피드백
6. **Stats (진도)** — 차트 + 히트맵
7. **Profile (프로필)** — 설정 리스트
8. **Onboarding** — 마지막 (개발 중에는 mock user로 우회)

## 코드 컨벤션
- **타입스크립트 strict mode**
- 인라인 스타일 대신 `StyleSheet.create` 또는 styled-components/restyle
- 디자인 토큰은 `as const`로 export, 절대 매직 넘버 쓰지 않기
- 한글 문자열은 컴포넌트 안에 직접 작성해도 OK (Phase 1) — i18n은 Phase 2
- 모든 텍스트는 톤이 **공손한 존댓말 (격식)** — "~하세요", "~해주세요", "~할 수 있어요"
- 단수 vs 복수 영문은 그대로 (예: "STEP 02 — 레벨")

## UI 톤
- "좋은 아침이에요, {name}님" — 인사
- "이어서 학습하기" / "다음으로" / "시작하기" — CTA
- "정답이에요!" / "다시 한 번 해볼까요?" — 피드백
- 절대 반말 안 됨. 마스코트 캐릭터 없음.

## 시각 스타일 원칙
- **다크 모드만** (라이트 모드는 Phase 2)
- 단일 액센트 컬러 (`#E8B26A` warm amber). 다른 색 추가 금지
- 영어 단어/문장은 **Instrument Serif italic**. 한글은 **Pretendard**. 라벨은 **JetBrains Mono**
- 모든 카드 border는 `rgba(244,241,235,0.08)` hairline
- 이미지 영역은 **줄무늬 placeholder 유지** — 실제 에셋이 들어올 때까지 (`ECPlaceholder` 동등 구현)
- 절대 emoji 사용 금지. 모든 아이콘은 inline SVG / lucide-react-native

## 데이터
초기 카드 데이터는 `src/data/cards.ts`에 정적 JSON으로 시작. B1-B2 레벨 일상 회화 주제별로 묶기:
- 여행 (공항·호텔·길찾기) ← 현재 mock에 있음
- 카페·식당
- 일상 잡담
- 업무·미팅
- 감정 표현

각 카드 데이터 모양은 README §5 `Card` 인터페이스 참고.

## 테스트
- Jest + React Native Testing Library
- 핵심 우선: spaced repetition 알고리즘, 스트릭 계산, 카드 상태 전이

## 막혔을 때
사용자에게 확인 요청. 특히:
- 실제 카드 콘텐츠 (영문/한글/예문) — placeholder만으로는 부족
- 백엔드/인증 정책
- 결제 (Pro 구독) 흐름
- 알림 정책 (시간대, 빈도)
