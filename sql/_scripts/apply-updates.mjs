#!/usr/bin/env node
// 커밋된 UPDATE 마이그레이션 SQL을 현재 DB에 재적용 (UPDATE만, DELETE/INSERT 없음)
// 사용법: node sql/_scripts/apply-updates.mjs <table> <SQL파일>
//   예) node sql/_scripts/apply-updates.mjs sentences sql/migrations/patterns-rewrite/01-convert-to-tildes.sql
import fs from 'fs';
import { createClient } from '@supabase/supabase-js';

const URL = process.env.SUPABASE_URL || 'https://zknqzjrymkswkqotrion.supabase.co';
const KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
if (!KEY) { console.error('SUPABASE_SERVICE_ROLE_KEY 필요'); process.exit(1); }
const supabase = createClient(URL, KEY, { auth: { persistSession: false } });

const table = process.argv[2];
const file = process.argv[3];
if (!table || !file) { console.error('사용법: apply-updates.mjs <table> <file>'); process.exit(1); }

const content = fs.readFileSync(file, 'utf-8');

// UPDATE <table> SET <set> WHERE id = '<id>';  (멀티라인 허용)
// 문장 단위로 분리: "UPDATE" 로 시작해 ";"(따옴표 밖)로 끝남
function splitStatements(txt) {
  const out = []; let i = 0;
  while (i < txt.length) {
    const idx = txt.indexOf('UPDATE', i);
    if (idx === -1) break;
    // 따옴표 밖의 다음 ';' 찾기
    let j = idx, q = false;
    for (; j < txt.length; j++) {
      const ch = txt[j], nx = txt[j+1];
      if (ch === "'" && nx === "'") { j++; continue; }
      if (ch === "'") q = !q;
      else if (ch === ';' && !q) break;
    }
    out.push(txt.slice(idx, j));
    i = j + 1;
  }
  return out;
}

// "col = 'val', col2 = 'val2'" → {col:val,...}  ('' 이스케이프 처리)
function parseSet(setStr) {
  const obj = {}; let i = 0; const s = setStr;
  while (i < s.length) {
    // skip space/comma
    while (i < s.length && /[\s,]/.test(s[i])) i++;
    // read column name
    let col = '';
    while (i < s.length && /[\w]/.test(s[i])) { col += s[i]; i++; }
    if (!col) break;
    while (i < s.length && /[\s=]/.test(s[i])) i++; // skip ' = '
    // read value
    if (s[i] === "'") {
      i++; let v = '';
      while (i < s.length) { const ch = s[i], nx = s[i+1];
        if (ch === "'" && nx === "'") { v += "'"; i += 2; continue; }
        if (ch === "'") { i++; break; }
        v += ch; i++;
      }
      obj[col] = v;
    } else { // NULL or number
      let v = '';
      while (i < s.length && !/[,]/.test(s[i])) { v += s[i]; i++; }
      v = v.trim();
      obj[col] = (v === 'NULL') ? null : (isNaN(Number(v)) ? v : Number(v));
    }
  }
  return obj;
}

const stmts = splitStatements(content);
const updates = [];
for (const st of stmts) {
  const m = st.match(/^UPDATE\s+(\w+)\s+SET\s+([\s\S]+?)\s+WHERE\s+id\s*=\s*'([^']+)'\s*$/i);
  if (!m) continue;
  if (m[1].toLowerCase() !== table.toLowerCase()) continue;
  updates.push({ id: m[3], set: parseSet(m[2]) });
}

console.log(`📄 ${file}`);
console.log(`   파싱된 UPDATE: ${updates.length}건 (table=${table})\n`);
if (!updates.length) process.exit(0);

let ok = 0, miss = 0, fail = 0; const fails = [];
const CONC = 10;
for (let i = 0; i < updates.length; i += CONC) {
  const batch = updates.slice(i, i + CONC);
  await Promise.all(batch.map(async u => {
    const { data, error } = await supabase.from(table).update(u.set).eq('id', u.id).select('id');
    if (error) { fail++; fails.push(`${u.id}: ${error.message.slice(0,50)}`); }
    else if (!data || !data.length) miss++; // 해당 id 없음(스킵)
    else ok++;
  }));
  process.stdout.write(`   ${i + batch.length}/${updates.length}\r`);
}
console.log(`\n✅ 적용 ${ok} / 대상없음(skip) ${miss} / 실패 ${fail}`);
if (fails.length) fails.slice(0, 8).forEach(x => console.log('   ❌ ' + x));
