-- EngCat — DB 스키마 v2
-- 5가지 카드 타입: words, patterns, collocations, idioms, nuances
-- 기존 words/sentences 테이블에 컬럼 추가 + 신규 테이블 생성

-- ══════════════════════════════════════
-- 기존 words 테이블 컬럼 추가
-- ══════════════════════════════════════

ALTER TABLE words ADD COLUMN IF NOT EXISTS cefr     TEXT DEFAULT 'B1'; -- A1/A2/B1/B2/C1/C2
ALTER TABLE words ADD COLUMN IF NOT EXISTS priority  INT  DEFAULT 3;    -- 1(핵심)~5(선택)
ALTER TABLE words ADD COLUMN IF NOT EXISTS image_url TEXT;              -- Pexels URL

-- 기존 level 컬럼을 cefr로 마이그레이션
UPDATE words SET cefr = level WHERE cefr = 'B1' AND level IS NOT NULL;

-- ══════════════════════════════════════
-- 기존 sentences 테이블 → 패턴 카드 용도
-- (type 컬럼으로 pattern/collocation/idiom/nuance 구분)
-- ══════════════════════════════════════

ALTER TABLE sentences ADD COLUMN IF NOT EXISTS type     TEXT DEFAULT 'pattern'; -- pattern/collocation/idiom/nuance
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS cefr     TEXT DEFAULT 'B1';
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS priority  INT  DEFAULT 3;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS tip       TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS image_url TEXT;

-- 기존 sentences는 pattern 타입
UPDATE sentences SET type = 'pattern' WHERE type IS NULL;

-- ══════════════════════════════════════
-- patterns 테이블 (전용 — 향후 sentences에서 분리 시)
-- ══════════════════════════════════════

CREATE TABLE IF NOT EXISTS patterns (
  id           TEXT PRIMARY KEY,
  en           TEXT NOT NULL,          -- 패턴 (e.g. "I was wondering if you could...")
  ko           TEXT NOT NULL,          -- 한국어 번역
  highlight    TEXT,                   -- 핵심 구문
  tip          TEXT,                   -- 뉘앙스/사용 팁
  situation    TEXT,                   -- 사용 상황 (e.g. '부탁', '거절', '제안')
  ex1          TEXT,                   -- 예문 1 (영어)
  ex1_ko       TEXT,                   -- 예문 1 (한국어)
  ex2          TEXT,
  ex2_ko       TEXT,
  ex3          TEXT,
  ex3_ko       TEXT,
  ex4          TEXT,
  ex4_ko       TEXT,
  cefr         TEXT DEFAULT 'B1',
  topic_id     TEXT,
  priority     INT  DEFAULT 3,
  image_keyword TEXT,
  image_url    TEXT,
  sort_order   INT  DEFAULT 0,
  created_at   TIMESTAMPTZ DEFAULT NOW()
);

-- ══════════════════════════════════════
-- collocations 테이블
-- ══════════════════════════════════════

CREATE TABLE IF NOT EXISTS collocations (
  id           TEXT PRIMARY KEY,
  verb         TEXT NOT NULL,          -- make, do, have, take, get ...
  noun         TEXT NOT NULL,          -- a decision, a mistake ...
  en           TEXT NOT NULL,          -- "make a decision"
  ko           TEXT NOT NULL,          -- "결정을 내리다"
  wrong_verb   TEXT,                   -- 자주 틀리는 동사 (e.g. "do" for "make a decision")
  tip          TEXT,                   -- "do a decision은 틀린 표현"
  ex1          TEXT,
  ex1_ko       TEXT,
  ex2          TEXT,
  ex2_ko       TEXT,
  cefr         TEXT DEFAULT 'B1',
  topic_id     TEXT,
  priority     INT  DEFAULT 3,
  image_keyword TEXT,
  image_url    TEXT,
  sort_order   INT  DEFAULT 0,
  created_at   TIMESTAMPTZ DEFAULT NOW()
);

-- ══════════════════════════════════════
-- idioms 테이블
-- ══════════════════════════════════════

CREATE TABLE IF NOT EXISTS idioms (
  id           TEXT PRIMARY KEY,
  en           TEXT NOT NULL,          -- "bite the bullet"
  ko           TEXT NOT NULL,          -- "고통을 감수하고 결행하다"
  literal_ko   TEXT,                   -- 직역: "총알을 깨물다"
  tip          TEXT,                   -- 사용 맥락 설명
  ex1          TEXT,
  ex1_ko       TEXT,
  ex2          TEXT,
  ex2_ko       TEXT,
  ex3          TEXT,
  ex3_ko       TEXT,
  cefr         TEXT DEFAULT 'B2',
  topic_id     TEXT,
  priority     INT  DEFAULT 3,
  image_keyword TEXT,
  image_url    TEXT,
  sort_order   INT  DEFAULT 0,
  created_at   TIMESTAMPTZ DEFAULT NOW()
);

-- ══════════════════════════════════════
-- nuances 테이블
-- ══════════════════════════════════════

CREATE TABLE IF NOT EXISTS nuances (
  id           TEXT PRIMARY KEY,
  word_a       TEXT NOT NULL,          -- "say"
  word_b       TEXT NOT NULL,          -- "tell"
  word_c       TEXT,                   -- "speak" (선택)
  ko_a         TEXT NOT NULL,          -- "말하다 (내용 중심)"
  ko_b         TEXT NOT NULL,          -- "말하다 (상대방 중심)"
  ko_c         TEXT,
  comparison   TEXT NOT NULL,          -- "say는 내용 중심, tell은 상대방 중심"
  ex_a         TEXT,                   -- say 예문
  ex_b         TEXT,                   -- tell 예문
  ex_c         TEXT,
  tip          TEXT,
  cefr         TEXT DEFAULT 'B2',
  topic_id     TEXT,
  priority     INT  DEFAULT 3,
  image_keyword TEXT,
  image_url    TEXT,
  sort_order   INT  DEFAULT 0,
  created_at   TIMESTAMPTZ DEFAULT NOW()
);

-- ══════════════════════════════════════
-- user_progress 테이블 (스페이스드 리피티션)
-- ══════════════════════════════════════

CREATE TABLE IF NOT EXISTS user_progress (
  id           BIGSERIAL PRIMARY KEY,
  user_id      UUID NOT NULL,
  card_type    TEXT NOT NULL,          -- word/pattern/collocation/idiom/nuance
  card_id      TEXT NOT NULL,
  interval     INT  DEFAULT 1,         -- SM-2: 다음 복습까지 일수
  ease_factor  REAL DEFAULT 2.5,       -- SM-2: 난이도 계수
  repetitions  INT  DEFAULT 0,         -- 복습 횟수
  due_date     DATE DEFAULT CURRENT_DATE,
  last_quality INT,                    -- 0~5 (마지막 응답 품질)
  created_at   TIMESTAMPTZ DEFAULT NOW(),
  updated_at   TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, card_type, card_id)
);

-- ══════════════════════════════════════
-- topics 테이블
-- ══════════════════════════════════════

CREATE TABLE IF NOT EXISTS topics (
  id           TEXT PRIMARY KEY,
  name_ko      TEXT NOT NULL,
  name_en      TEXT NOT NULL,
  category     TEXT NOT NULL,          -- daily/social/advanced
  sort_order   INT  DEFAULT 0
);

INSERT INTO topics (id, name_ko, name_en, category, sort_order) VALUES
-- 일상
('greeting',      '인사·소개',         'Greeting & Introduction',    'daily',    1),
('emotion',       '감정 표현',          'Emotions',                    'daily',    2),
('weather',       '날씨',               'Weather',                     'daily',    3),
('shopping',      '쇼핑',               'Shopping',                    'daily',    4),
('cafe',          '카페·식당',          'Cafe & Dining',               'daily',    5),
('transport',     '교통',               'Transport',                   'daily',    6),
('health',        '건강',               'Health',                      'daily',    7),
('travel',        '여행',               'Travel',                      'daily',    8),
('home',          '주거·생활',          'Home & Living',               'daily',    9),
-- 사회
('work',          '직장·비즈니스',      'Work & Business',             'social',  10),
('education',     '교육',               'Education',                   'social',  11),
('media',         '미디어·SNS',         'Media & SNS',                 'social',  12),
('environment',   '환경',               'Environment',                 'social',  13),
('economy',       '경제',               'Economy',                     'social',  14),
('culture',       '문화·예술',          'Culture & Arts',              'social',  15),
('sports',        '스포츠',             'Sports',                      'social',  16),
-- 심화
('discussion',    '의견·토론',          'Opinion & Discussion',        'advanced',17),
('presentation',  '발표·프레젠테이션',  'Presentation',                'advanced',18),
('negotiation',   '협상',               'Negotiation',                 'advanced',19),
('humanities',    '문학·인문',          'Literature & Humanities',     'advanced',20),
('technology',    '과학·기술',          'Science & Technology',        'advanced',21),
('news',          '시사·뉴스',          'Current Affairs',             'advanced',22),
('academic',      '학술',               'Academic',                    'advanced',23)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- RLS (Row Level Security) — 기본 설정
-- ══════════════════════════════════════

ALTER TABLE patterns     ENABLE ROW LEVEL SECURITY;
ALTER TABLE collocations ENABLE ROW LEVEL SECURITY;
ALTER TABLE idioms       ENABLE ROW LEVEL SECURITY;
ALTER TABLE nuances      ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_progress ENABLE ROW LEVEL SECURITY;

-- 읽기: 모든 인증 사용자
CREATE POLICY "read_patterns"     ON patterns     FOR SELECT USING (true);
CREATE POLICY "read_collocations" ON collocations FOR SELECT USING (true);
CREATE POLICY "read_idioms"       ON idioms       FOR SELECT USING (true);
CREATE POLICY "read_nuances"      ON nuances      FOR SELECT USING (true);

-- user_progress: 본인 데이터만
CREATE POLICY "own_progress" ON user_progress
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);
