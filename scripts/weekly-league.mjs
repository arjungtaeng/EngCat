#!/usr/bin/env node
// EngCat — 주간 리그 정산
// 매주 월요일 실행: 지난주 점수(데이터로 재계산)로 리그별 순위를 매겨
// 누적 리그 포인트(league_points)를 적립한다. 멱등(같은 주 재실행 시 스킵).
//
// 점수 = 카드 학습×2 + 퀴즈 정답×3 + 출석일×20  (data.learned + data.quizLog, 지난주 분)
// 적립 = 1위 100 / 2위 70 / 3위 50 / 상위10% 30 / 상위50% 10 / 참가 5
//
// env: SUPABASE_SERVICE_ROLE_KEY

import { createClient } from '@supabase/supabase-js';

const URL = 'https://zknqzjrymkswkqotrion.supabase.co';
const KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
if (!KEY) { console.error('SUPABASE_SERVICE_ROLE_KEY 필요'); process.exit(1); }
const db = createClient(URL, KEY, { auth: { persistSession: false } });

function weekId(d) {
  const date = new Date(Date.UTC(d.getUTCFullYear(), d.getUTCMonth(), d.getUTCDate()));
  const day = (date.getUTCDay() + 6) % 7;
  date.setUTCDate(date.getUTCDate() - day + 3);
  const firstThu = new Date(Date.UTC(date.getUTCFullYear(), 0, 4));
  const week = 1 + Math.round(((date - firstThu) / 86400000 - 3 + ((firstThu.getUTCDay() + 6) % 7)) / 7);
  return date.getUTCFullYear() + '-W' + String(week).padStart(2, '0');
}

const META = '__meta__';
const lastWeek = weekId(new Date(Date.now() - 2 * 86400000)); // 2일 전 = 지난 주

// 멱등 체크
const metaRow = await db.from('user_progress').select('data').eq('email', META).maybeSingle();
const lastFin = metaRow.data && metaRow.data.data && metaRow.data.data.lastFinalizedWeek;
if (lastFin === lastWeek) { console.log('이미 정산됨:', lastWeek); process.exit(0); }

// 전체 로드
const all = []; let from = 0;
while (true) {
  const { data, error } = await db.from('user_progress').select('email, data, league, league_points').range(from, from + 999);
  if (error) { console.error(error.message); process.exit(1); }
  if (!data || !data.length) break;
  all.push(...data);
  if (data.length < 1000) break; from += 1000;
}
const users = all.filter(u => u.email !== META && u.league);

function lastWeekScore(data) {
  if (!data) return 0;
  let cards = 0; const days = new Set();
  const learned = data.learned || {};
  for (const date in learned) {
    if (weekId(new Date(date + 'T00:00:00Z')) !== lastWeek) continue;
    const n = ((learned[date].wordIds || []).length) + ((learned[date].sentenceIds || []).length);
    if (n > 0) { cards += n; days.add(date); }
  }
  let quiz = 0; const ql = data.quizLog || {};
  for (const date in ql) {
    if (weekId(new Date(date + 'T00:00:00Z')) === lastWeek) quiz += (ql[date].c || 0);
  }
  return cards * 2 + quiz * 3 + days.size * 20;
}

function award(rank, total) {
  if (rank === 1) return 100;
  if (rank === 2) return 70;
  if (rank === 3) return 50;
  if (rank <= Math.ceil(total * 0.1)) return 30;
  if (rank <= Math.ceil(total * 0.5)) return 10;
  return 5;
}

const byLeague = {};
for (const u of users) {
  const sc = lastWeekScore(u.data);
  if (sc > 0) (byLeague[u.league] = byLeague[u.league] || []).push({ email: u.email, sc, lp: u.league_points || 0 });
}

let updated = 0;
for (const lg in byLeague) {
  const arr = byLeague[lg].sort((a, b) => b.sc - a.sc);
  for (let i = 0; i < arr.length; i++) {
    const pts = award(i + 1, arr.length);
    const { error } = await db.from('user_progress').update({ league_points: (arr[i].lp || 0) + pts }).eq('email', arr[i].email);
    if (!error) updated++;
  }
  console.log(`  ${lg}: ${arr.length}명 정산`);
}

await db.from('user_progress').upsert({ email: META, data: { lastFinalizedWeek: lastWeek }, updated_at: new Date().toISOString() }, { onConflict: 'email' });
console.log(`✅ 주간 정산 완료 (${lastWeek}) — 리그 ${Object.keys(byLeague).length}개, ${updated}명 포인트 적립`);
