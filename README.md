# EngCat — Design Handoff

> **B1-B2 한국인 영어 학습자를 위한 프리미엄 다크 모드 학습 앱**
> 매일 단어 10개 + 문장 5개를 이미지·짧은 애니메이션과 함께 제공

---

## 1. 이 문서에 대하여

이 폴더의 모든 파일은 **디자인 레퍼런스(prototype HTML)** 입니다 — 의도된 모양과 동작을 보여주는 목업이며, 그대로 프로덕션에 복사할 코드가 아닙니다.

**여러분의 작업**: 이 HTML 디자인을 **타겟 코드베이스의 환경(React Native / Expo / Flutter / SwiftUI 등)** 에서, 그 코드베이스의 패턴과 라이브러리를 따라 재구현하시면 됩니다. 아직 코드베이스가 없다면 **Expo + React Native** (iOS·Android 둘 다 모바일 위주이므로) 또는 **Next.js + React** (웹 프로토타입용)를 권장합니다.

### Fidelity
**Hi-fi 목업** — 최종 컬러, 타이포그래피, 간격, 인터랙션이 결정된 상태입니다. 픽셀 단위 재현을 목표로 하되, 타겟 코드베이스의 기존 디자인 시스템이 있다면 그것과 조율하세요.

### 이미지 자리표시자
모든 일러스트/사진 영역은 **줄무늬 placeholder + 모노스페이스 캡션**으로 표시되어 있습니다 (예: `hero · airport scene`). 실제 에셋이 정해지지 않았으므로, 구현 시에는 같은 모양의 자리표시자로 두거나, 실제 이미지가 준비되면 그 자리에 넣으면 됩니다.

---

## 2. 제품 개요

| 항목 | 값 |
|---|---|
| **타겟 사용자** | B1-B2 레벨 한국인 영어 학습자 |
| **플랫폼** | iOS + Android (모바일 위주) |
| **하루 분량** | 단어 10개 + 문장 5개 |
| **카드 인터랙션** | 위아래 수직 스와이프 (틱톡/릴스 스타일) |
| **마스코트** | 없음 |
| **UI 톤** | 공손한 존댓말 (격식) |
| **테마** | 다크 모드 우선 (라이트 모드는 추후) |
| **시각 스타일** | 프리미엄 / 세련 / 미니멀 |

### 핵심 기능
1. 오늘의 단어/문장 카드 (10 + 5)
2. 이미지·일러스트로 의미 시각화
3. 짧은 애니메이션/움짤로 상황 설명
4. 원어민 발음 듣기 (오디오)
5. 내가 직접 발음 녹음
6. 예문 + 다양한 활용
7. 퀴즈 / 간격 반복 복습
8. 학습 진도 / 스트릭
9. 북마크 / 즐겨찾기
10. AI 회화 연습 (Phase 2)
11. 친구 / 랭킹

---

## 3. 디자인 토큰 (정확한 값)

### 컬러

```ts
// Background scale (warm-cool neutral, 매우 낮은 saturation)
const bg = {
  bg0: '#0B0B0E',  // deepest (단어 카드 풀블리드 배경 같은 곳)
  bg1: '#131318',  // app background (대부분의 화면)
  bg2: '#1A1A21',  // card surface
  bg3: '#22222B',  // raised surface (활성 토글, hover)
  bg4: '#2C2C37',  // pressed
};

// Text
const text = {
  text:      '#F4F1EB',                       // primary (warm off-white)
  textDim:   'rgba(244, 241, 235, 0.62)',     // secondary
  textMute:  'rgba(244, 241, 235, 0.38)',     // tertiary / labels
  textFaint: 'rgba(244, 241, 235, 0.18)',
};

// Accent — warm amber, single signature color
const accent = {
  accent:     '#E8B26A',
  accentSoft: 'rgba(232, 178, 106, 0.14)',    // tinted background
  accentDeep: '#C8904A',                       // pressed accent
};

// Semantic
const semantic = {
  good:     '#8CCBA8',  // 정답 / 마스터
  goodSoft: 'rgba(140, 203, 168, 0.14)',
  warn:     '#E89A6A',
  bad:      '#E07A7A',  // 오답 / 위험
  badSoft:  'rgba(224, 122, 122, 0.14)',
};

// Hairlines (subtle borders)
const hair = {
  hair:    'rgba(244, 241, 235, 0.08)',       // 모든 카드 border
  hairStr: 'rgba(244, 241, 235, 0.16)',       // 강조 border
};

// Card art tints (image placeholder 배경용 — 무드 다양화)
const art = {
  art1: '#2D3548',  // dusky indigo
  art2: '#3B3344',  // plum
  art3: '#3A4039',  // moss
  art4: '#43352A',  // cocoa
  art5: '#2D3D3F',  // teal-slate
  art6: '#4A3A48',  // mauve
};
```

### 타이포그래피

3개 패밀리만 사용:

| 용도 | 패밀리 | 출처 |
|---|---|---|
| **한글 본문** | Pretendard Variable | `https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/variable/pretendardvariable.css` (또는 npm `pretendard`) |
| **영어 강조 (제목·단어·문장)** | Instrument Serif (italic 자주 사용) | Google Fonts |
| **라벨·메타 (모노)** | JetBrains Mono | Google Fonts |

```ts
const font = {
  sans:  '"Pretendard Variable", -apple-system, system-ui, sans-serif',
  serif: '"Instrument Serif", Georgia, serif',
  mono:  '"JetBrains Mono", ui-monospace, "SF Mono", Menlo, monospace',
};
```

**Type scale** (모두 mock에서 사용된 정확한 값):

| 토큰 | size / line / weight / letter-spacing | 용도 |
|---|---|---|
| `display-serif` | 38px / 1.08 / 400 / -0.5 | 온보딩 제목 |
| `serif-xl`      | 30px / 1.18 / 400 / -0.4 | 홈 인사말 |
| `serif-lg`      | 26px / 1.15 / 400 / -0.3 | 화면 제목 |
| `serif-md`      | 22px / 1.1  / 400 / -0.3 | 프로필 이름 |
| `word-hero`     | 56px / 1.0  / 400 (italic) / -1.0 | 단어 카드 메인 단어 |
| `serif-sm`      | 17px / 1.25 / 400 (italic) | 영문 예문 |
| `body`          | 14-15px / 1.45 / 500 | 한글 본문 |
| `secondary`     | 12.5-13px / 1.4 / 400 | 부가 설명 |
| `caption`       | 11-12px / 1.4 / 500 | 라벨 |
| `mono-label`    | 10px mono / 1 / 500 / +1.4 (uppercase) | 섹션 라벨 |
| `mono-meta`     | 9-10px mono / 1 / 500 / +0.5 | 진행 카운터 |

### 간격 · radius

```ts
const radius = {
  sm: 10,    // 작은 버튼, 칩
  md: 14,    // 표준 카드, 입력
  lg: 18,    // 큰 카드, 리스트 그룹
  xl: 22,    // 히어로 카드
  pill: 999, // pill / circle
};

const spacing = {
  // 4px 기반. 자주 쓰이는 값:
  s1: 4, s2: 8, s3: 10, s4: 12, s5: 14, s6: 16, s7: 18, s8: 22, s9: 28, s10: 36,
};

// 표준 화면 padding (좌우): 18-22px (콘텐츠 종류에 따라)
// Status bar padding-top: 18px
// Home indicator padding-bottom: 30px
```

### Shadow / glass

```css
/* Phone shell */
box-shadow: 0 30px 60px rgba(0,0,0,0.4),
            0 0 0 1px rgba(255,255,255,0.06),
            inset 0 0 0 1px rgba(255,255,255,0.04);

/* Liquid glass pill (단어 카드 액션 버튼) */
background: rgba(255,255,255,0.10);
backdrop-filter: blur(20px) saturate(180%);
border: 1px solid rgba(255,255,255,0.14);
```

---

## 4. 화면 명세

전체 화면은 6개 + 온보딩 2단계:

| # | 이름 | 파일 | 용도 |
|---|---|---|---|
| 01 | 홈 (오늘의 학습) | `screen-home.jsx` | 첫 진입 화면 — 오늘의 미션 + 단어/문장 미리보기 |
| 02 | 단어 카드 | `screen-word-card.jsx` | 풀블리드 이미지 + 정의 + 예문, 세로 스와이프 |
| 03 | 문장 카드 | `screen-sentence-card.jsx` | 3컷 스토리보드 + 발화 풍선, 상황 설명 |
| 04 | 퀴즈 | `screen-quiz.jsx` | 4지선다 + 정답 피드백, 간격 반복 |
| 05 | 진도 | `screen-stats.jsx` | 스트릭 + 주간 차트 + 12주 활동 히트맵 |
| 06 | 프로필·설정 | `screen-profile.jsx` | 사용자 정보 + 그룹화된 설정 리스트 |
| A | 온보딩 — 레벨 | `screen-onboarding.jsx` (ECScreenOnboarding) | A1-C1 중 자기 레벨 선택 |
| B | 온보딩 — 목표 | `screen-onboarding.jsx` (ECScreenOnboardingGoal) | 하루 학습량 선택 (5/10/15/30분) |

각 화면의 픽셀 단위 상세 명세는 해당 `.jsx` 파일을 그대로 참고하세요 — 모든 size·color·spacing이 인라인 스타일로 명시되어 있습니다.

### 화면별 주요 인터랙션

#### 01. 홈
- **상단 바**: EngCat 로고 (serif italic) · 스트릭 칩 (🔥 27) · 프로필 아바타
- **인사말**: "좋은 아침이에요, {이름}님." — 시간대(아침/점심/저녁)에 따라 변경
- **히어로 카드**: 오늘의 학습 — 제목·설명·진행률 바 (`6/15`) · "이어서 학습하기" CTA → 단어 카드 화면으로 이동
- **오늘의 단어 horizontal scroll**: 4-10개 미리보기 카드 — 탭하면 단어 카드 화면 (해당 인덱스에서 시작)
- **오늘의 문장**: 발화 아이콘 + 영문 + 한글 — 탭하면 문장 카드 화면
- **하단 탭바**: 홈 · 카드 · 진도 · 내 정보 (4개)

#### 02. 단어 카드 — 세로 스와이프 피드
- **풀블리드 배경 이미지** + 어두운 gradient overlay
- **상단 floating 글래스 버튼**: 닫기 · `3/10 · 단어` 카운터 · 더보기
- **오른쪽 액션 레일** (액션 4개, 글래스 원형 버튼 48px): 듣기 · 말하기 · 저장 · 공유
- **하단 콘텐츠 영역**: POS chip + IPA · 단어 (`Instrument Serif italic 56px`) · 한글 뜻 · 정의 · 예문 카드 (글래스)
- **하단 진행 strip**: 10개 카드 중 현재 위치를 점선으로 표시
- **인터랙션**: 위로 스와이프 → 다음 카드, 아래로 스와이프 → 이전 카드, 왼쪽으로 스와이프 → 닫고 홈으로

#### 03. 문장 카드
- **상황 태그**: amber chip (예: `CAFÉ · 화장실 가기 직전`)
- **3컷 스토리보드 viewport**: 4:3 비율, 현재 비트 표시, 재생 버튼 floating
  - "SCENE 03 / 03" 카운터 (top-left)
  - 흰색 speech bubble overlay (영문 문장 + 핵심구 amber 강조)
- **3컷 dots**: 각 비트의 작은 썸네일 + 타임코드
- **문장**: serif italic, 핵심구는 `accent` 색
- **한글 번역** + **표현 팁** 카드 (sparkle 아이콘 + 설명)
- **하단**: 따라 말하기 (secondary) · 다음 (primary CTA)

#### 04. 퀴즈
- **상단**: 닫기 · 진행률 바 (`55%`) · 하트 3개 (남은 라이프)
- **프롬프트**: serif "이 상황에 알맞은 표현을 골라주세요."
- **시각 프롬프트**: 16:9 이미지 + speech bubble overlay ("My flight from Seoul stops in Tokyo before Hawaii.")
- **선택지**: 4개 (A/B/C/D) — 영문 (italic) + 한글 + 글자 칩
  - **정답 선택 시**: 카드 배경 → `goodSoft`, border → `good`, 칩 → check 아이콘
  - **오답 선택 시**: 카드 배경 → `badSoft`, border → `bad`
- **결과 배너**: 정답이에요! / 다시 한 번 — 설명 + "다음" 버튼

#### 05. 진도
- **스트릭 히어로**: "27일" 큰 serif + 개인 최고 기록 + 🔥 flame 아이콘
- **3개 통계 타일**: 익힌 단어 (342) · 문장 (128) · 정답률 (94%)
- **이번 주 차트**: 막대 7개 (오늘은 accent 색)
- **12주 활동 히트맵**: GitHub 컨트리뷰션 스타일, 4단계 amber 그라데이션

#### 06. 프로필 · 설정
- **프로필 카드**: 이니셜 아바타 + 이름 + 이메일 + 레벨/PRO 배지
- **3분할 통계 row**: 스트릭 · 단어 · 랭킹
- **그룹화된 리스트**:
  - 학습: 레벨 · 하루 목표 · 알림 · 음성 속도
  - 앱: 저장한 카드 · 친구/랭킹 · 구독 관리 · 도움말
  - 계정: 개인정보 보호 · 로그아웃 (red)

#### A. 온보딩 — 레벨
- 4단계 프로그레스 (점선)
- "STEP 02 — 레벨" mono label
- "현재 영어 수준을 *알려주세요*" (italic accent)
- A1-C1 5개 라디오 리스트 — 선택 시 카드 배경 `accentSoft` + border `accent` + check 아이콘
- "다음으로" CTA (primary text inverse — `bg0` 위에 `text`)

#### B. 온보딩 — 목표
- "STEP 03 — 목표"
- "하루 학습량을 *정해보세요*"
- 4개 옵션 (5/10/15/30분) — 라디오 dot + 큰 serif 숫자 + 라벨 + 설명
- "시작하기" CTA (accent background)

---

## 5. 상태 관리

```ts
type UserLevel = 'A1' | 'A2' | 'B1' | 'B2' | 'C1';
type DailyGoal = 5 | 10 | 15 | 30; // minutes

interface User {
  id: string;
  name: string;
  email: string;
  level: UserLevel;
  dailyGoalMinutes: DailyGoal;
  notificationTime: string; // "HH:mm"
  voiceSpeed: 'slow' | 'normal' | 'fast';
  isPro: boolean;
  createdAt: string;
}

interface Streak {
  current: number;        // 27
  best: number;           // 42
  lastStudiedAt: string;
}

interface Card {
  id: string;
  type: 'word' | 'sentence';
  // word
  en?: string;
  ipa?: string;
  pos?: string;           // noun, verb, ...
  ko?: string;
  definition?: string;
  examples?: string[];
  // sentence
  text?: string;
  translation?: string;
  scenario?: string;      // "CAFÉ · 화장실 가기 직전"
  beats?: Beat[];         // 3-shot storyboard
  tip?: string;
  // shared
  imageUrl?: string;
  audioUrl?: string;
  bookmarked: boolean;
  masteryLevel: 0 | 1 | 2 | 3;  // for spaced repetition
  nextReviewAt: string;
}

interface DailySession {
  date: string; // YYYY-MM-DD
  wordsCompleted: number; // out of 10
  sentencesCompleted: number; // out of 5
  minutesStudied: number;
  quizAccuracy: number; // 0..1
}
```

### 데이터 흐름

1. **온보딩 완료** → `User` 생성 → 첫 `DailySession` 만들기
2. **홈 진입** → 오늘의 `DailySession` 로드, 미완료 카드 fetch
3. **카드 학습** → 카드별 완료 표시 → spaced repetition 다음 review 시간 계산
4. **퀴즈** → 정답률 기록 → mastery level 업데이트
5. **스트릭** → 매일 자정에 어제 활동 확인, 끊김 여부 판단

### 간격 반복 (Spaced Repetition)
SM-2 알고리즘 권장. mastery 0→1→2→3 단계로 진행하며, 다음 review 간격: 1일 → 3일 → 7일 → 21일.

---

## 6. 인터랙션 · 애니메이션

| 위치 | 동작 | 권장 값 |
|---|---|---|
| 카드 스와이프 | 손가락 따라 카드 이동, threshold 넘으면 다음/이전 | spring, stiffness 280, damping 30 |
| 글래스 버튼 hover/press | scale 0.96 + opacity 0.85 | 120ms ease-out |
| 카드 선택 (퀴즈/온보딩) | border + background 페이드 | 150ms ease |
| 정답 표시 | 카드 살짝 bounce (1.0 → 1.04 → 1.0) | 300ms spring |
| 스트릭 카운트 업 | 숫자 1씩 카운팅 | 600ms ease-out |
| 진행률 바 | 좌→우 채워짐 | 400ms ease-out |
| 화면 전환 | 가로 슬라이드 (push/pop) | 300ms ease-in-out |
| 문장 카드 storyboard | 3비트 자동 재생 (3초 / beat) + 사용자 탭으로 일시정지 | — |

---

## 7. 에셋

### 폰트 (필수)
- Pretendard Variable (한글) — OFL 라이선스, jsdelivr 또는 npm `pretendard`
- Instrument Serif — Google Fonts, OFL
- JetBrains Mono — Google Fonts, OFL

### 이미지
모든 일러스트/사진은 **현재 placeholder 상태**입니다. 실제 에셋 소싱이 필요합니다:
- 단어 카드 hero 이미지 (10장 / 일일)
- 문장 카드 storyboard (3컷 × 5장 / 일일)
- 퀴즈 시각 프롬프트

구현 시 같은 모양의 placeholder를 유지하면 디자인과 시각적 일관성이 유지됩니다 (`design_references/tokens.jsx`의 `ECPlaceholder` 컴포넌트 참고 — 단순한 gradient + 줄무늬 + 모노스페이스 캡션).

### 아이콘
모두 inline SVG, 1.6 stroke-width 기준의 미니멀 라인 아이콘. `design_references/icons.jsx` 그대로 SVG path를 가져다 쓰면 됩니다. 또는 동등한 lucide-react / phosphor 아이콘으로 대체 가능:
- home, cards (= layers), chart-bar, user, flame, bookmark, heart, volume-high, mic, more-vertical, chevron-right/left/up/down, check, x, play, sparkle, globe, share

---

## 8. 파일 목록

```
design_references/
├── EngCat App Design.html      ← 메인 진입점 (브라우저에서 열어 미리보기)
├── design-canvas.jsx           ← 캔버스 wrapper (재구현 불필요)
├── tokens.jsx                  ← 디자인 토큰 + ECPhone, ECStatusBar, ECPlaceholder
├── icons.jsx                   ← 모든 아이콘 SVG
├── screen-onboarding.jsx       ← 화면 A, B
├── screen-home.jsx             ← 화면 01 + ECTabBar
├── screen-word-card.jsx        ← 화면 02
├── screen-sentence-card.jsx    ← 화면 03
├── screen-quiz.jsx             ← 화면 04
├── screen-stats.jsx            ← 화면 05
└── screen-profile.jsx          ← 화면 06
```

각 JSX 파일은 Babel standalone으로 브라우저에서 직접 실행됩니다 (JSX→JS 빌드 단계 없음). 그대로 React/RN에 옮길 수는 없지만, **모든 스타일/구조가 인라인으로 명시되어 있어** 한 화면씩 그대로 옮기기 좋습니다.

---

## 9. 구현 권장 사항

1. **Expo + React Native** (모바일 우선이므로):
   - `expo-font` 로 Pretendard, Instrument Serif, JetBrains Mono 로드
   - `react-native-reanimated` + `react-native-gesture-handler` 로 세로 스와이프 (Reels 스타일)
   - `expo-av` 또는 `expo-audio` 로 발음 재생
   - `expo-haptics` — 정답/오답, 카드 전환 시
   - 다크 모드만 우선 (라이트 모드는 추후)

2. **상태 관리**: Zustand 또는 React Context — 간단한 학습 진도 상태이므로 Redux는 과합니다.

3. **백엔드 (선택)**: Supabase (Postgres + Auth + Storage)가 빠른 MVP에 적합. 카드 데이터는 처음엔 JSON 파일로 시작해도 됩니다.

4. **블러 / 글래스 효과**: RN에서는 `@react-native-community/blur` 또는 `expo-blur` 사용.

5. **타입스크립트** 사용 권장. 디자인 토큰은 `as const` 객체로 export.

---

## 10. 다음 단계 (디자인이 아직 안 된 부분)

- AI 회화 연습 화면
- 친구/랭킹 상세 화면
- 카드 디테일 (예문 더보기, 동의어, 어원)
- 검색
- 라이트 모드 변형
- 위젯 / 잠금화면
- Apple Watch / Wear OS

---

**문의/이슈**: 디자인 변경이 필요하면 원본 디자인 도구로 돌아가 수정한 뒤 다시 핸드오프하면 됩니다.
