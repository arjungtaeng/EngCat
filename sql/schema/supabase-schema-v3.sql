-- EngCat — DB 스키마 v3
-- 단어 예문 5개, 패턴 사용예문 5개 지원

-- ══════════════════════════════════════
-- words 테이블: 예문 2~5 추가
-- ══════════════════════════════════════
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_en_2 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_ko_2 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_en_3 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_ko_3 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_en_4 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_ko_4 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_en_5 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_ko_5 TEXT;

-- ══════════════════════════════════════
-- sentences 테이블: 패턴 사용 예문 5개 추가
-- ══════════════════════════════════════
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex1     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex1_ko  TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex2     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex2_ko  TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex3     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex3_ko  TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex4     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex4_ko  TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex5     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex5_ko  TEXT;
