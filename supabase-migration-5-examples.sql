-- EngCat — Expand example columns to 5 across all expression tables
-- Run once in Supabase SQL editor.

-- Collocations: previously ex1/ex2 → add ex3/ex4/ex5
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex3    TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex3_ko TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex4    TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex4_ko TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex5    TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex5_ko TEXT;

-- Idioms: previously ex1/ex2/ex3 → add ex4/ex5
ALTER TABLE idioms ADD COLUMN IF NOT EXISTS ex4    TEXT;
ALTER TABLE idioms ADD COLUMN IF NOT EXISTS ex4_ko TEXT;
ALTER TABLE idioms ADD COLUMN IF NOT EXISTS ex5    TEXT;
ALTER TABLE idioms ADD COLUMN IF NOT EXISTS ex5_ko TEXT;

-- Nuances: previously only ex_a/ex_b/ex_c (one per compared word) → add
-- two extra general examples ex4/ex5 to round out to 5 total.
ALTER TABLE nuances ADD COLUMN IF NOT EXISTS ex4    TEXT;
ALTER TABLE nuances ADD COLUMN IF NOT EXISTS ex4_ko TEXT;
ALTER TABLE nuances ADD COLUMN IF NOT EXISTS ex5    TEXT;
ALTER TABLE nuances ADD COLUMN IF NOT EXISTS ex5_ko TEXT;
