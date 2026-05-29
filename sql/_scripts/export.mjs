#!/usr/bin/env node
// EngCat — 통합 스냅샷(seed) 생성기
//
// DB가 정답(source of truth). 이 스크립트는 DB 전체를 하나의 INSERT 파일로 뽑아
// seed 파일과 backup 사본을 갱신합니다. (손으로 합칠 필요 없음)
//
// 사용법:
//   node sql/_scripts/export.mjs words       # words-seed.sql 갱신
//   node sql/_scripts/export.mjs sentences   # sentences-seed.sql 갱신
//   node sql/_scripts/export.mjs all         # 둘 다
//
// 환경변수(없으면 기본값): SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY

import fs from 'fs';
import { createClient } from '@supabase/supabase-js';

const URL = process.env.SUPABASE_URL || 'https://zknqzjrymkswkqotrion.supabase.co';
const KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
if (!KEY) { console.error('환경변수 SUPABASE_SERVICE_ROLE_KEY 가 필요합니다.\n  export SUPABASE_SERVICE_ROLE_KEY=...  후 다시 실행하세요.'); process.exit(1); }
const supabase = createClient(URL, KEY, { auth: { persistSession: false } });

const TABLES = {
  words: {
    cols: ['id','en','ipa','pos','ko','definition','example_en','example_ko','example_en_2','example_ko_2','example_en_3','example_ko_3','example_en_4','example_ko_4','example_en_5','example_ko_5','highlight','cefr','topic_id','priority','image_keyword'],
    seed: 'sql/words/words-seed.sql',
    backup: 'sql/backup/words-seed.sql',
    order: ['topic_id','cefr','id'],
  },
  sentences: {
    cols: ['id','en','ko','highlight','tip','situation','cefr','topic_id','type','beats','sort_order','priority','ex1','ex1_ko','ex2','ex2_ko','ex3','ex3_ko','ex4','ex4_ko','ex5','ex5_ko','image_keyword'],
    seed: 'sql/sentences/sentences-seed.sql',
    backup: 'sql/backup/sentences-seed.sql',
    order: ['topic_id','cefr','sort_order'],
  },
  collocations: {
    cols: ['id','verb','noun','en','ko','wrong_verb','tip','cefr','topic_id','priority','sort_order','image_keyword','ex1','ex1_ko','ex2','ex2_ko','ex3','ex3_ko','ex4','ex4_ko','ex5','ex5_ko'],
    seed: 'sql/expressions/collocations-seed.sql',
    backup: 'sql/backup/collocations-seed.sql',
    order: ['topic_id','cefr','id'],
  },
  idioms: {
    cols: ['id','en','ko','literal_ko','tip','cefr','topic_id','priority','sort_order','image_keyword','ex1','ex1_ko','ex2','ex2_ko','ex3','ex3_ko','ex4','ex4_ko','ex5','ex5_ko'],
    seed: 'sql/expressions/idioms-seed.sql',
    backup: 'sql/backup/idioms-seed.sql',
    order: ['topic_id','cefr','id'],
  },
  nuances: {
    cols: ['id','word_a','word_b','word_c','ko_a','ko_b','ko_c','comparison','tip','cefr','topic_id','priority','sort_order','image_keyword','ex_a','ex_a_ko','ex_b','ex_b_ko','ex_c','ex_c_ko','ex4','ex4_ko','ex5','ex5_ko'],
    seed: 'sql/expressions/nuances-seed.sql',
    backup: 'sql/backup/nuances-seed.sql',
    order: ['topic_id','cefr','id'],
  },
};
const NUMERIC = new Set(['priority','sort_order','beats']);

const q = v => (v === null || v === undefined) ? 'NULL' : "'" + String(v).replace(/'/g, "''") + "'";
const fmt = (v, c) => NUMERIC.has(c) ? (v === null || v === undefined ? 'NULL' : v) : q(v);

async function exportTable(name) {
  const t = TABLES[name];
  if (!t) { console.error('알 수 없는 테이블:', name); return; }

  // 전체 로드 (페이지네이션)
  let qy = supabase.from(name).select(t.cols.join(','));
  for (const o of t.order) qy = qy.order(o);
  const all = [];
  let from = 0;
  while (true) {
    const { data, error } = await qy.range(from, from + 999);
    if (error) { console.error(error.message); return; }
    if (!data || !data.length) break;
    all.push(...data);
    if (data.length < 1000) break;
    from += 1000;
  }

  const head =
`-- EngCat — ${name} 통합 스냅샷 (seed)
-- ${all.length}개. DB에서 자동 생성된 전체 현재 상태. 손으로 편집하지 마세요.
-- 추가는 sql/${name}/additions/ 에 넣고 upload.mjs → 이 파일은 export.mjs 로 재생성.

INSERT INTO ${name} (${t.cols.join(', ')}) VALUES
`;
  const body = all.map(r => '(' + t.cols.map(c => fmt(r[c], c)).join(',') + ')').join(',\n') + ';\n';
  fs.writeFileSync(t.seed, head + body);
  fs.writeFileSync(t.backup, head + body);
  const mb = (fs.statSync(t.seed).size / 1024 / 1024).toFixed(2);
  console.log(`✅ ${name}: ${all.length}개 → ${t.seed} + ${t.backup} (${mb}MB)`);
}

const arg = process.argv[2] || 'all';
const targets = arg === 'all' ? Object.keys(TABLES) : [arg];
for (const t of targets) await exportTable(t);
