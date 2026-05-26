#!/usr/bin/env node
// EngCat — Claude API example-sentence backfill
//
// Generates ex3/ex4/ex5 for collocations/idioms (and ex4/ex5 for nuances)
// using Claude Opus 4.7 with structured outputs. Runs from GitHub Actions
// hourly; processes a small batch per invocation, idempotent (skips rows
// already filled).
//
// Required env:
//   ANTHROPIC_API_KEY
//   SUPABASE_SERVICE_ROLE_KEY

import Anthropic from '@anthropic-ai/sdk';
import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://zknqzjrymkswkqotrion.supabase.co';
const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
const ANTHROPIC_KEY = process.env.ANTHROPIC_API_KEY;

if (!SERVICE_KEY) { console.error('ERROR: SUPABASE_SERVICE_ROLE_KEY required'); process.exit(1); }
if (!ANTHROPIC_KEY) { console.error('ERROR: ANTHROPIC_API_KEY required'); process.exit(1); }

const db = createClient(SUPABASE_URL, SERVICE_KEY, { auth: { persistSession: false } });
const anthropic = new Anthropic({ apiKey: ANTHROPIC_KEY });

const BATCH_PER_TABLE = 20;     // rows per table per run (60 total worst case)
const DELAY_MS = 600;            // gap between Claude calls
const MODEL = 'claude-opus-4-7';

const SYSTEM_PROMPT = `You generate B1-B2 level English example sentences for a Korean ESL learning app called EngCat.

Rules:
- Natural, conversational English suitable for everyday B1-B2 learners.
- Each example must use the target expression naturally and unambiguously.
- Vary contexts and grammatical structures across the 3 examples (don't repeat the same situation).
- Sentences are 8-15 words. No proper-noun-heavy or culturally niche references.
- Korean translation: polite formal tone (해요/입니다 style). Natural, idiomatic — NOT literal word-for-word.
- Match the existing examples' style and difficulty.

Output: JSON only matching the schema. No prose, no markdown.`;

const SCHEMA_3 = {
  type: 'object',
  additionalProperties: false,
  required: ['ex3', 'ex3_ko', 'ex4', 'ex4_ko', 'ex5', 'ex5_ko'],
  properties: {
    ex3:    { type: 'string' }, ex3_ko: { type: 'string' },
    ex4:    { type: 'string' }, ex4_ko: { type: 'string' },
    ex5:    { type: 'string' }, ex5_ko: { type: 'string' },
  },
};

const SCHEMA_2 = {
  type: 'object',
  additionalProperties: false,
  required: ['ex4', 'ex4_ko', 'ex5', 'ex5_ko'],
  properties: {
    ex4: { type: 'string' }, ex4_ko: { type: 'string' },
    ex5: { type: 'string' }, ex5_ko: { type: 'string' },
  },
};

function buildPrompt(table, row) {
  if (table === 'collocations') {
    return `Collocation: "${row.en}" (Korean: ${row.ko})
Verb-Noun: ${row.verb} + ${row.noun}${row.wrong_verb ? `   (common error: "${row.wrong_verb} ${row.noun}")` : ''}
${row.tip ? `Tip: ${row.tip}` : ''}

Existing examples:
1. ${row.ex1 || '(none)'} — ${row.ex1_ko || ''}
2. ${row.ex2 || '(none)'} — ${row.ex2_ko || ''}

Generate 3 more example sentences (ex3, ex4, ex5) using "${row.en}". Each with Korean translation.`;
  }
  if (table === 'idioms') {
    return `Idiom: "${row.en}" (Korean meaning: ${row.ko})
${row.literal_ko ? `Literal Korean: ${row.literal_ko}` : ''}
${row.tip ? `Tip: ${row.tip}` : ''}

Existing examples:
1. ${row.ex1 || '(none)'} — ${row.ex1_ko || ''}
2. ${row.ex2 || '(none)'} — ${row.ex2_ko || ''}
3. ${row.ex3 || '(none)'} — ${row.ex3_ko || ''}

Generate 2 more example sentences (ex4, ex5) using "${row.en}". Each with Korean translation.`;
  }
  // nuances
  const words = [row.word_a, row.word_b, row.word_c].filter(Boolean).join(' vs ');
  return `Nuance comparison: ${words}
${row.comparison ? `Comparison: ${row.comparison}` : ''}
${row.tip ? `Tip: ${row.tip}` : ''}

Word-specific examples:
A (${row.word_a}): ${row.ex_a || '(none)'}
B (${row.word_b}): ${row.ex_b || '(none)'}
${row.word_c ? `C (${row.word_c}): ${row.ex_c || '(none)'}` : ''}

Generate 2 more general example sentences (ex4, ex5) that demonstrate one or more of these words in natural use. Each with Korean translation.`;
}

async function generateExamples(table, row) {
  const userPrompt = buildPrompt(table, row);
  const schema = table === 'collocations' ? SCHEMA_3 : SCHEMA_2;

  const resp = await anthropic.messages.create({
    model: MODEL,
    max_tokens: 1024,
    system: [{ type: 'text', text: SYSTEM_PROMPT, cache_control: { type: 'ephemeral' } }],
    messages: [{ role: 'user', content: userPrompt }],
    output_config: { format: { type: 'json_schema', schema } },
  });

  // Find first text block
  const textBlock = resp.content.find(b => b.type === 'text');
  if (!textBlock) throw new Error('no text in response');
  return JSON.parse(textBlock.text);
}

async function backfillTable(table) {
  console.log(`\n=== ${table} ===`);
  // Pick column list based on table
  const cols = table === 'nuances'
    ? 'id, word_a, word_b, word_c, ko_a, ko_b, ko_c, comparison, ex_a, ex_b, ex_c, tip, ex4, ex5'
    : table === 'collocations'
      ? 'id, en, ko, verb, noun, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, ex4, ex4_ko, ex5, ex5_ko'
      : 'id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, ex4, ex4_ko, ex5, ex5_ko';

  // Need rows where at least one target column is NULL
  // We use .or() to find rows with any target column missing
  const targetCols = table === 'collocations'
    ? ['ex3', 'ex4', 'ex5']
    : ['ex4', 'ex5'];
  const orFilter = targetCols.map(c => `${c}.is.null`).join(',');

  const { data: rows, error } = await db
    .from(table)
    .select(cols)
    .or(orFilter)
    .limit(BATCH_PER_TABLE);

  if (error) { console.error(`  fetch error: ${error.message}`); return; }
  if (!rows || rows.length === 0) { console.log('  nothing to backfill'); return; }
  console.log(`  ${rows.length} rows to process`);

  let ok = 0, fail = 0;
  for (const row of rows) {
    try {
      const gen = await generateExamples(table, row);

      // Build update object only for columns that are currently NULL
      const update = {};
      if (table === 'collocations') {
        if (!row.ex3 && gen.ex3) { update.ex3 = gen.ex3; update.ex3_ko = gen.ex3_ko; }
        if (!row.ex4 && gen.ex4) { update.ex4 = gen.ex4; update.ex4_ko = gen.ex4_ko; }
        if (!row.ex5 && gen.ex5) { update.ex5 = gen.ex5; update.ex5_ko = gen.ex5_ko; }
      } else {
        if (!row.ex4 && gen.ex4) { update.ex4 = gen.ex4; update.ex4_ko = gen.ex4_ko; }
        if (!row.ex5 && gen.ex5) { update.ex5 = gen.ex5; update.ex5_ko = gen.ex5_ko; }
      }

      if (Object.keys(update).length === 0) { fail++; continue; }

      const { error: upErr } = await db.from(table).update(update).eq('id', row.id);
      if (upErr) { console.error(`  update fail ${row.id}: ${upErr.message}`); fail++; continue; }

      ok++;
      if (ok % 5 === 0) console.log(`  progress: ${ok} done, ${fail} failed`);
    } catch (e) {
      console.error(`  ${row.id}: ${e.message}`);
      fail++;
      if (e instanceof Anthropic.RateLimitError) {
        console.error('  rate limited — stopping this table');
        break;
      }
    }
    await new Promise(r => setTimeout(r, DELAY_MS));
  }
  console.log(`  result: ${ok} ok, ${fail} failed`);
}

(async () => {
  console.log(`Backfilling examples via ${MODEL} (≤${BATCH_PER_TABLE}/table/run)`);
  for (const t of ['collocations', 'idioms', 'nuances']) {
    await backfillTable(t);
  }
  console.log('\nDone.');
})();
