-- Part 00: Schema v2 (RUN THIS FIRST, BEFORE part-01)
-- Adds cefr/priority columns to words & sentences
-- Creates collocations, idioms, nuances, topics tables

ALTER TABLE words ADD COLUMN IF NOT EXISTS cefr         TEXT DEFAULT 'B1';
ALTER TABLE words ADD COLUMN IF NOT EXISTS priority      INT  DEFAULT 3;
ALTER TABLE words ADD COLUMN IF NOT EXISTS image_url     TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS image_keyword TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS highlight     TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS topic_id      TEXT;

UPDATE words SET cefr = level WHERE cefr = 'B1' AND level IS NOT NULL;

ALTER TABLE sentences ADD COLUMN IF NOT EXISTS type      TEXT DEFAULT 'pattern';
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS cefr      TEXT DEFAULT 'B1';
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS priority  INT  DEFAULT 3;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS tip       TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS image_url     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS image_keyword TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS topic_id  TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS sort_order INT DEFAULT 0;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS beats     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS situation TEXT;

UPDATE sentences SET type = 'pattern' WHERE type IS NULL;

CREATE TABLE IF NOT EXISTS collocations (
  id            TEXT PRIMARY KEY,
  verb          TEXT NOT NULL,
  noun          TEXT NOT NULL,
  en            TEXT NOT NULL,
  ko            TEXT NOT NULL,
  wrong_verb    TEXT,
  tip           TEXT,
  ex1           TEXT,
  ex1_ko        TEXT,
  ex2           TEXT,
  ex2_ko        TEXT,
  cefr          TEXT DEFAULT 'B1',
  topic_id      TEXT,
  priority      INT  DEFAULT 3,
  image_keyword TEXT,
  image_url     TEXT,
  sort_order    INT  DEFAULT 0,
  created_at    TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS idioms (
  id            TEXT PRIMARY KEY,
  en            TEXT NOT NULL,
  ko            TEXT NOT NULL,
  literal_ko    TEXT,
  tip           TEXT,
  ex1           TEXT,
  ex1_ko        TEXT,
  ex2           TEXT,
  ex2_ko        TEXT,
  ex3           TEXT,
  ex3_ko        TEXT,
  cefr          TEXT DEFAULT 'B2',
  topic_id      TEXT,
  priority      INT  DEFAULT 3,
  image_keyword TEXT,
  image_url     TEXT,
  sort_order    INT  DEFAULT 0,
  created_at    TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS nuances (
  id            TEXT PRIMARY KEY,
  word_a        TEXT NOT NULL,
  word_b        TEXT NOT NULL,
  word_c        TEXT,
  ko_a          TEXT NOT NULL,
  ko_b          TEXT NOT NULL,
  ko_c          TEXT,
  comparison    TEXT NOT NULL,
  ex_a          TEXT,
  ex_b          TEXT,
  ex_c          TEXT,
  tip           TEXT,
  cefr          TEXT DEFAULT 'B2',
  topic_id      TEXT,
  priority      INT  DEFAULT 3,
  image_keyword TEXT,
  image_url     TEXT,
  sort_order    INT  DEFAULT 0,
  created_at    TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS topics (
  id         TEXT PRIMARY KEY,
  name_ko    TEXT NOT NULL,
  name_en    TEXT NOT NULL,
  category   TEXT NOT NULL DEFAULT 'daily',
  sort_order INT  DEFAULT 0
);

-- topics 테이블이 이미 존재할 경우 누락 컬럼 추가
ALTER TABLE topics ADD COLUMN IF NOT EXISTS name_ko    TEXT;
ALTER TABLE topics ADD COLUMN IF NOT EXISTS name_en    TEXT;
ALTER TABLE topics ADD COLUMN IF NOT EXISTS category   TEXT DEFAULT 'daily';
ALTER TABLE topics ADD COLUMN IF NOT EXISTS sort_order INT  DEFAULT 0;

INSERT INTO topics (id, name_ko, name_en, category, sort_order) VALUES
('greeting','인사·소개','Greeting & Introduction','daily',1),
('emotion','감정 표현','Emotions','daily',2),
('weather','날씨','Weather','daily',3),
('shopping','쇼핑','Shopping','daily',4),
('cafe','카페·식당','Cafe & Dining','daily',5),
('transport','교통','Transport','daily',6),
('health','건강','Health','daily',7),
('travel','여행','Travel','daily',8),
('home','주거·생활','Home & Living','daily',9),
('work','직장·비즈니스','Work & Business','social',10),
('education','교육','Education','social',11),
('media','미디어·SNS','Media & SNS','social',12),
('environment','환경','Environment','social',13),
('economy','경제','Economy','social',14),
('culture','문화·예술','Culture & Arts','social',15),
('sports','스포츠','Sports','social',16),
('discussion','의견·토론','Opinion & Discussion','advanced',17),
('presentation','발표·프레젠테이션','Presentation','advanced',18),
('negotiation','협상','Negotiation','advanced',19),
('humanities','문학·인문','Literature & Humanities','advanced',20),
('technology','과학·기술','Science & Technology','advanced',21),
('news','시사·뉴스','Current Affairs','advanced',22),
('academic','학술','Academic','advanced',23)
ON CONFLICT (id) DO NOTHING;
