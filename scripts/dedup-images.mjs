#!/usr/bin/env node
// EngCat — 주제 내 이미지 중복 제거 + 교체된 단어 이미지 갱신
//
// 동작:
//   1) 각 주제별로 "이미 쓰인 image_url" 집합을 만든다.
//   2) 작업 대상(같은 주제 내 사진 중복 그룹의 2번째 이후 + 인자로 받은 강제 갱신 id)에 대해
//      Pexels에서 keyword로 여러 결과를 받아, 그 주제에서 아직 안 쓴 URL을 골라 교체한다.
//   3) Pexels 무료 제한(200/hr) 안에서 회당 최대 HOURLY_LIMIT개 처리.
//
// 환경변수: PEXELS_API_KEY (필수), SUPABASE_SERVICE_ROLE_KEY (필수)
//   node scripts/dedup-images.mjs                 # 중복만
//   node scripts/dedup-images.mjs /tmp/force.json # + 강제 갱신할 id 목록(JSON 배열)

import { createClient } from '@supabase/supabase-js';
import fs from 'fs';

const SUPABASE_URL = 'https://zknqzjrymkswkqotrion.supabase.co';
const KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
const PEXELS = process.env.PEXELS_API_KEY;
if (!KEY || !PEXELS) { console.error('SUPABASE_SERVICE_ROLE_KEY, PEXELS_API_KEY 필요'); process.exit(1); }
const db = createClient(SUPABASE_URL, KEY, { auth: { persistSession: false } });

const HOURLY_LIMIT = 180, DELAY = 250;
const TABLE = 'words';

async function searchPexels(keyword, n = 20) {
  const url = `https://api.pexels.com/v1/search?query=${encodeURIComponent(keyword)}&per_page=${n}&orientation=landscape`;
  const res = await fetch(url, { headers: { Authorization: PEXELS } });
  if (!res.ok) { if (res.status === 429) throw new Error('rate limit'); return []; }
  const data = await res.json();
  return (data.photos || []).map(p => p.src?.large).filter(Boolean);
}

async function loadAll() {
  const all = []; let f = 0;
  while (true) {
    const { data } = await db.from(TABLE).select('id, topic_id, image_url, image_keyword').range(f, f + 999);
    if (!data || !data.length) break; all.push(...data); if (data.length < 1000) break; f += 1000;
  }
  return all;
}

const rows = await loadAll();
const forceIds = new Set(process.argv[2] && fs.existsSync(process.argv[2]) ? JSON.parse(fs.readFileSync(process.argv[2], 'utf-8')) : []);

// 주제별 사용중 URL 집합 + 중복 워크리스트
const usedByTopic = {};
const dupExtras = [];
const seenTopicUrl = {};
for (const r of rows) {
  usedByTopic[r.topic_id] = usedByTopic[r.topic_id] || new Set();
  if (!r.image_url) continue;
  const k = r.topic_id + '|' + r.image_url;
  if (seenTopicUrl[k]) dupExtras.push(r);          // 같은 주제 같은 사진 2번째 이후 → 교체 대상
  else { seenTopicUrl[k] = true; usedByTopic[r.topic_id].add(r.image_url); }
}
// 강제 갱신(교체된 단어): 현재 url은 주제 used에서 빼고 교체 대상에 추가
const forceRows = rows.filter(r => forceIds.has(r.id));
for (const r of forceRows) { if (r.image_url) usedByTopic[r.topic_id]?.delete(r.image_url); }

const worklist = [...forceRows, ...dupExtras.filter(r => !forceIds.has(r.id))];
console.log(`교체 대상: 강제갱신 ${forceRows.length} + 주제내중복 ${dupExtras.length} = ${worklist.length}`);
console.log(`이번 실행 최대 ${HOURLY_LIMIT}개\n`);

let ok = 0, skip = 0, fail = 0, calls = 0;
for (const r of worklist) {
  if (calls >= HOURLY_LIMIT) { console.log(`\n시간당 한도(${HOURLY_LIMIT}) 도달 — 중단`); break; }
  const kw = (r.image_keyword || '').trim();
  if (!kw) { skip++; continue; }
  try {
    const urls = await searchPexels(kw); calls++;
    const used = usedByTopic[r.topic_id];
    const pick = urls.find(u => !used.has(u));
    if (!pick) { fail++; continue; }                  // 새 URL 못 찾음
    const { error } = await db.from(TABLE).update({ image_url: pick }).eq('id', r.id);
    if (error) { fail++; continue; }
    used.add(pick); ok++;
    if (ok % 25 === 0) console.log(`  ${ok} 교체 완료...`);
  } catch (e) { fail++; if (String(e.message).includes('rate limit')) { console.log('Pexels 한도'); break; } }
  await new Promise(r => setTimeout(r, DELAY));
}
console.log(`\n✅ 교체 ${ok} / 스킵 ${skip} / 실패 ${fail} / Pexels호출 ${calls}`);
console.log(ok >= HOURLY_LIMIT ? '남은 건 1시간 뒤 다시 실행하거나 GitHub Actions가 처리합니다.' : '완료');
