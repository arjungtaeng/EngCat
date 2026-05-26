#!/usr/bin/env bash
# Bundle pending Supabase backfill SQL into one runnable file.
# Run: bash scripts/build-backfill-bundle.sh
# Output: supabase-backfill-bundle.sql

set -euo pipefail
cd "$(dirname "$0")/.."

OUT=supabase-backfill-bundle.sql

cat > "$OUT" << 'HEADER'
-- ============================================================
-- EngCat — Backfill bundle (pending content)
-- 한번에 Supabase SQL Editor 에 paste & Run 하면 됩니다.
-- 모두 멱등(idempotent) — 재실행 안전.
--
-- 포함:
--   1) migration-5-examples       (ALTER TABLE … IF NOT EXISTS)
--   2) content-examples-all       (콜로 460 + 이디엄 345 + 뉘앙스 299 UPDATE)
--   3) words-emotion-examples     (emotion 단어 210 UPDATE)
--   4) words-greeting-v2          (greeting 단어 210 UPDATE + 150 INSERT/UPSERT)
-- ============================================================

HEADER

echo "" >> "$OUT"
echo "-- ─── 1) migration-5-examples ─────────────────────────" >> "$OUT"
cat supabase-migration-5-examples.sql >> "$OUT"

echo "" >> "$OUT"
echo "-- ─── 2) content-examples-all ────────────────────────" >> "$OUT"
cat supabase-content-examples-all.sql >> "$OUT"

echo "" >> "$OUT"
echo "-- ─── 3) words-emotion-examples ──────────────────────" >> "$OUT"
cat supabase-words-emotion-examples.sql >> "$OUT"

echo "" >> "$OUT"
echo "-- ─── 4) words-greeting-v2 ───────────────────────────" >> "$OUT"
# Original ends with ');' on the last VALUES row — append ON CONFLICT DO UPDATE
# to make INSERT idempotent.
python3 - "$OUT" << 'PYEOF'
import sys, re
out = sys.argv[1]
with open('supabase-words-greeting-v2.sql', 'r', encoding='utf-8') as f:
    content = f.read()

# Find the INSERT statement and rewrite its terminator from ');\n' (last row)
# to ')\nON CONFLICT (id) DO UPDATE SET ...;'
ins_marker = "INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, example_en_2, example_ko_2, example_en_3, example_ko_3, example_en_4, example_ko_4, example_en_5, example_ko_5, cefr, topic_id, priority, image_keyword, sort_order) VALUES"
idx = content.find(ins_marker)
if idx == -1:
    raise SystemExit("INSERT marker not found")

# Replace the final ");" that ends the VALUES list with ON CONFLICT clause.
# The file ends with ");\n" so trim that.
content = content.rstrip()
assert content.endswith(');'), "expected file to end with ');'"
content = content[:-2]  # remove ");"

on_conflict = """)
ON CONFLICT (id) DO UPDATE SET
  en              = EXCLUDED.en,
  ipa             = EXCLUDED.ipa,
  pos             = EXCLUDED.pos,
  ko              = EXCLUDED.ko,
  definition      = EXCLUDED.definition,
  example_en      = EXCLUDED.example_en,
  example_ko      = EXCLUDED.example_ko,
  example_en_2    = EXCLUDED.example_en_2,
  example_ko_2    = EXCLUDED.example_ko_2,
  example_en_3    = EXCLUDED.example_en_3,
  example_ko_3    = EXCLUDED.example_ko_3,
  example_en_4    = EXCLUDED.example_en_4,
  example_ko_4    = EXCLUDED.example_ko_4,
  example_en_5    = EXCLUDED.example_en_5,
  example_ko_5    = EXCLUDED.example_ko_5,
  cefr            = EXCLUDED.cefr,
  topic_id        = EXCLUDED.topic_id,
  priority        = EXCLUDED.priority,
  image_keyword   = EXCLUDED.image_keyword,
  sort_order      = EXCLUDED.sort_order;
"""

with open(out, 'a', encoding='utf-8') as f:
    f.write(content + on_conflict)
PYEOF

echo "" >> "$OUT"
echo "-- ─── Done ──────────────────────────────────────────" >> "$OUT"

wc -l "$OUT"
