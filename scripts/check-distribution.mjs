import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://zknqzjrymkswkqotrion.supabase.co';
const SUPABASE_ANON = 'sb_publishable_-PyhiOHtQJsKafpoDZIMLg_q09S3yRJ';
const supabase = createClient(SUPABASE_URL, SUPABASE_ANON, { auth: { persistSession: false } });

const LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'];

async function analyze(tableName, label) {
  // Supabase는 기본 1000개 제한 — 페이지네이션으로 전체 가져오기
  let all = [];
  let from = 0;
  const pageSize = 1000;
  while (true) {
    const { data, error } = await supabase
      .from(tableName)
      .select('cefr, topic_id')
      .range(from, from + pageSize - 1);
    if (error) {
      console.log(`\n❌ ${tableName}:`, error.message);
      return;
    }
    if (!data || data.length === 0) break;
    all = all.concat(data);
    if (data.length < pageSize) break;
    from += pageSize;
  }
  const data = all;

  // 1. 전체 카운트
  console.log(`\n=== ${label} (${tableName}) — 총 ${data.length}개 ===`);

  // 2. 레벨별 분포
  const byLevel = {};
  LEVELS.forEach(L => byLevel[L] = 0);
  data.forEach(d => {
    const lvl = d.cefr || 'unknown';
    byLevel[lvl] = (byLevel[lvl] || 0) + 1;
  });
  console.log('레벨별:', LEVELS.map(L => `${L}=${byLevel[L]}`).join(', '));

  // 3. 토픽별 분포
  const byTopic = {};
  data.forEach(d => {
    const t = d.topic_id || 'unknown';
    byTopic[t] = (byTopic[t] || 0) + 1;
  });
  console.log('토픽 수:', Object.keys(byTopic).length);

  // 4. 토픽 × 레벨 교차표
  const grid = {};
  data.forEach(d => {
    const t = d.topic_id || 'unknown';
    const l = d.cefr || 'unknown';
    if (!grid[t]) grid[t] = {};
    grid[t][l] = (grid[t][l] || 0) + 1;
  });

  console.log('\n토픽 × 레벨 (각 토픽에서 레벨 분포):');
  const topicNames = Object.keys(grid).sort();
  console.log(`${'topic'.padEnd(15)} ${LEVELS.map(L => L.padStart(4)).join(' ')}  total`);
  topicNames.forEach(t => {
    const row = LEVELS.map(L => String(grid[t][L] || 0).padStart(4)).join(' ');
    const total = LEVELS.reduce((s, L) => s + (grid[t][L] || 0), 0);
    console.log(`${t.padEnd(15)} ${row}  ${String(total).padStart(4)}`);
  });
}

console.log('🔍 EngCat 콘텐츠 분포 분석');
await analyze('words', '단어');
await analyze('sentences', '패턴');
await analyze('collocations', '콜로케이션');
await analyze('idioms', '이디엄');
await analyze('nuances', '뉘앙스');
