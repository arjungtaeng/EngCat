-- EngCat — Add example columns to sentences table
-- For pattern cards: 5 example sentences (en + ko) showing different uses of the pattern
-- Run once in Supabase SQL editor. Idempotent.

ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex1    TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex1_ko TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex2    TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex2_ko TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex3    TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex3_ko TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex4    TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex4_ko TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex5    TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex5_ko TEXT;
