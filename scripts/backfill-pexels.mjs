#!/usr/bin/env node
// EngCat — Pexels image URL backfill
//
// Usage:
//   export PEXELS_API_KEY=...
//   export SUPABASE_SERVICE_ROLE_KEY=...
//   node scripts/backfill-pexels.mjs
//
// What it does:
//   1. Reads rows from words, sentences, collocations, idioms, nuances with
//      image_keyword IS NOT NULL AND image_url IS NULL
//   2. Searches Pexels API for matching landscape photo
//   3. UPDATEs row with src.large URL
//
// Pexels rate limit: 200 req/hr (free tier).
// Script throttles to 1 req per 200ms (~5 req/sec) and stops after 180/hr.

import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://zknqzjrymkswkqotrion.supabase.co';
const SERVICE_KEY  = process.env.SUPABASE_SERVICE_ROLE_KEY;
const PEXELS_KEY   = process.env.PEXELS_API_KEY;

if (!SERVICE_KEY) {
  console.error('ERROR: SUPABASE_SERVICE_ROLE_KEY env var required');
  console.error('Find it in: Supabase Dashboard → Project Settings → API → service_role key');
  process.exit(1);
}
if (!PEXELS_KEY) {
  console.error('ERROR: PEXELS_API_KEY env var required');
  process.exit(1);
}

const db = createClient(SUPABASE_URL, SERVICE_KEY, { auth: { persistSession: false } });

const TABLES = [
  { name: 'words',        idCol: 'id', topicCol: 'topic_id' },
  { name: 'sentences',    idCol: 'id', topicCol: 'topic_id' },
  { name: 'collocations', idCol: 'id', topicCol: 'topic_id' },
  { name: 'idioms',       idCol: 'id', topicCol: 'topic_id' },
  { name: 'nuances',      idCol: 'id', topicCol: 'topic_id' },
];

const HOURLY_LIMIT = 180;
const DELAY_MS     = 250;
let calls = 0;

async function searchPexels(keyword) {
  const url = `https://api.pexels.com/v1/search?query=${encodeURIComponent(keyword)}&per_page=1&orientation=landscape`;
  const res = await fetch(url, { headers: { Authorization: PEXELS_KEY } });
  if (!res.ok) {
    if (res.status === 429) throw new Error('Pexels rate limit hit');
    return null;
  }
  const data = await res.json();
  return data.photos?.[0]?.src?.large ?? null;
}

// 토픽별로 순환(round-robin)하여 모든 토픽에 골고루 이미지를 채웁니다.
// 이렇게 하면 첫 1회 실행만으로 모든 토픽에 최소 1개씩 이미지가 채워집니다.
function roundRobinByTopic(rows, topicCol) {
  const byTopic = new Map();
  for (const row of rows) {
    const t = row[topicCol] || '__none__';
    if (!byTopic.has(t)) byTopic.set(t, []);
    byTopic.get(t).push(row);
  }
  const result = [];
  const queues = [...byTopic.values()];
  let maxLen = Math.max(...queues.map(q => q.length));
  for (let i = 0; i < maxLen; i++) {
    for (const q of queues) {
      if (i < q.length) result.push(q[i]);
    }
  }
  return result;
}

async function backfillTable(table) {
  console.log(`\n=== ${table.name} ===`);
  const { data: rows, error } = await db
    .from(table.name)
    .select(`${table.idCol}, ${table.topicCol}, image_keyword`)
    .not('image_keyword', 'is', null)
    .is('image_url', null)
    .order(table.topicCol)
    .order('priority')
    .limit(5000);

  if (error) {
    console.error(`  fetch error: ${error.message}`);
    return;
  }
  if (!rows || rows.length === 0) {
    console.log('  nothing to backfill');
    return;
  }
  console.log(`  ${rows.length} rows to process (round-robin by topic)`);

  const ordered = roundRobinByTopic(rows, table.topicCol);
  let ok = 0, fail = 0, skip = 0;
  for (const row of ordered) {
    if (calls >= HOURLY_LIMIT) {
      console.log(`  reached hourly limit (${HOURLY_LIMIT}), stopping`);
      break;
    }
    const keyword = (row.image_keyword || '').trim();
    if (!keyword) { skip++; continue; }

    try {
      const url = await searchPexels(keyword);
      calls++;
      if (!url) { fail++; continue; }

      const { error: upErr } = await db
        .from(table.name)
        .update({ image_url: url })
        .eq(table.idCol, row[table.idCol]);
      if (upErr) { console.error(`  update fail ${row[table.idCol]}: ${upErr.message}`); fail++; continue; }
      ok++;
      if (ok % 25 === 0) console.log(`  progress: ${ok} done, ${fail} failed`);
    } catch (e) {
      console.error(`  ${row[table.idCol]} ${keyword}: ${e.message}`);
      fail++;
      if (String(e.message).includes('rate limit')) break;
    }
    await new Promise(r => setTimeout(r, DELAY_MS));
  }
  console.log(`  result: ${ok} ok, ${fail} failed, ${skip} skipped`);
}

(async () => {
  console.log(`Backfilling Pexels image URLs (limit ${HOURLY_LIMIT}/run, ~${DELAY_MS}ms/req)`);
  for (const t of TABLES) {
    await backfillTable(t);
    if (calls >= HOURLY_LIMIT) break;
  }
  console.log(`\nDone. Total Pexels calls: ${calls}`);
  if (calls >= HOURLY_LIMIT) {
    console.log('Wait an hour and run again to continue.');
  }
})();
