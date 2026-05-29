#!/usr/bin/env node
// EngCat — 범용 업로더 (INSERT only, DELETE 절대 안 함)
//
// 사용법:
//   node sql/_scripts/upload.mjs <SQL파일>
//   예) node sql/_scripts/upload.mjs sql/words/additions/2026-06-01-business.sql
//
// 동작:
//   - 파일의 `INSERT INTO <table> (col1, col2, ...) VALUES` 헤더에서 테이블·컬럼을 읽음
//   - 각 데이터 행 `( ... )` 를 파싱해 supabase-js .insert() 로 추가
//   - 이미 있는 id 는 자동 skip (중복 에러 무시). 기존 데이터는 절대 건드리지 않음
//
// 환경변수(없으면 아래 기본값 사용):
//   SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY

import fs from 'fs';
import { createClient } from '@supabase/supabase-js';

const URL = process.env.SUPABASE_URL || 'https://zknqzjrymkswkqotrion.supabase.co';
const KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
if (!KEY) { console.error('환경변수 SUPABASE_SERVICE_ROLE_KEY 가 필요합니다.\n  export SUPABASE_SERVICE_ROLE_KEY=...  후 다시 실행하세요.'); process.exit(1); }
const supabase = createClient(URL, KEY, { auth: { persistSession: false } });

const file = process.argv[2];
if (!file) { console.error('사용법: node sql/_scripts/upload.mjs <SQL파일>'); process.exit(1); }
if (!fs.existsSync(file)) { console.error('파일 없음:', file); process.exit(1); }

const content = fs.readFileSync(file, 'utf-8');

// 1) INSERT 헤더에서 테이블 + 컬럼 추출
const headerMatch = content.match(/INSERT\s+INTO\s+(\w+)\s*\(([^)]+)\)\s*VALUES/i);
if (!headerMatch) { console.error('INSERT INTO ... VALUES 헤더를 찾지 못했습니다.'); process.exit(1); }
const table = headerMatch[1];
const cols = headerMatch[2].split(',').map(c => c.trim());
const NUMERIC = new Set(['priority', 'sort_order', 'beats']);

// 2) 값 파싱 (작은따옴표 '' 이스케이프 처리)
function parseRow(line) {
  let c = line.trim();
  if (c.endsWith(',')) c = c.slice(0, -1);
  if (c.endsWith(');')) c = c.slice(0, -2);
  else if (c.endsWith(')')) c = c.slice(0, -1);
  if (c.startsWith('(')) c = c.slice(1);
  const f = []; let cur = ''; let q = false;
  for (let i = 0; i < c.length; i++) {
    const ch = c[i], nx = c[i + 1];
    if (ch === "'" && nx === "'") { cur += "'"; i++; }
    else if (ch === "'") { q = !q; }
    else if (ch === ',' && !q) { f.push(cur.trim()); cur = ''; }
    else cur += ch;
  }
  f.push(cur.trim());
  return f;
}
function coerce(raw, col) {
  if (raw == null) return null;
  let v = raw.trim();
  if (v === 'NULL' || v === '') return null;
  if (v.startsWith("'") && v.endsWith("'")) v = v.slice(1, -1).replace(/''/g, "'");
  if (NUMERIC.has(col)) return v === '' ? null : parseInt(v);
  return v;
}

// 3) 데이터 행 수집
const rows = [];
for (const line of content.split('\n')) {
  if (!line.trim().startsWith('(')) continue;
  const vals = parseRow(line);
  if (vals.length !== cols.length) {
    console.warn(`⚠️  컬럼 수 불일치 (${vals.length}≠${cols.length}) — 건너뜀: ${vals[0]}`);
    continue;
  }
  const obj = {};
  cols.forEach((c, i) => { obj[c] = coerce(vals[i], c); });
  rows.push(obj);
}

console.log(`📄 ${file}`);
console.log(`   테이블: ${table} / 컬럼 ${cols.length}개 / 데이터 ${rows.length}행\n`);
if (!rows.length) { console.log('업로드할 행이 없습니다.'); process.exit(0); }

// 4) 업로드 (배치 → 실패 시 개별 재시도, 중복 skip)
let up = 0, skip = 0, fail = 0; const failIds = [];
for (let i = 0; i < rows.length; i += 200) {
  const batch = rows.slice(i, i + 200);
  const { error } = await supabase.from(table).insert(batch);
  if (error) {
    for (const r of batch) {
      const { error: e2 } = await supabase.from(table).insert([r]);
      if (e2) { if (/duplicate/i.test(e2.message)) skip++; else { fail++; failIds.push(`${r.id}: ${e2.message.slice(0, 60)}`); } }
      else up++;
    }
  } else up += batch.length;
  process.stdout.write(`   ${up + skip + fail}/${rows.length}\r`);
}
console.log(`\n✅ 추가 ${up} / 중복 skip ${skip} / 실패 ${fail}`);
if (failIds.length) failIds.slice(0, 10).forEach(x => console.log('   ❌ ' + x));

const { count } = await supabase.from(table).select('id', { count: 'exact', head: true });
console.log(`\n🎉 ${table} 총 ${count}개`);
console.log(`\n💡 통합본 갱신: node sql/_scripts/export.mjs ${table}`);
