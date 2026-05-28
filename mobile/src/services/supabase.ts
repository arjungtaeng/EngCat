import { createClient } from '@supabase/supabase-js';
import type { WordCard, SentenceCard } from '../store/useCardsStore';

const SUPABASE_URL = 'https://zknqzjrymkswkqotrion.supabase.co';
const SUPABASE_ANON = 'sb_publishable_-PyhiOHtQJsKafpoDZIMLg_q09S3yRJ';

export const supabase = createClient(SUPABASE_URL, SUPABASE_ANON, {
  auth: { persistSession: false },
});

const TOPIC_TINTS: Record<string, string> = {
  greeting:     '#1a3a2c', emotion:      '#2a1a3a', weather:     '#1a2a4a',
  shopping:     '#3a2a1c', cafe:         '#3a2a1a', transport:   '#1a2a3a',
  health:       '#1a3a2a', travel:       '#1a3a5c', home:        '#2a2a1a',
  work:         '#1a2a3c', education:    '#1c2a3a', media:       '#2a1a2c',
  environment:  '#1a3a20', economy:      '#2a2a1a', culture:     '#3a1a2a',
  sports:       '#1a2c3a', discussion:   '#2a1c3a', presentation: '#1a2a3c',
  negotiation:  '#2a1a2a', humanities:   '#3a2a2a', technology:  '#1a2a3c',
  news:         '#2a2a2a', academic:     '#1c1c3a',
};

const tintFor = (topicId: string) => TOPIC_TINTS[topicId] || '#1a2a3a';

export interface LoadResult {
  words: WordCard[];
  sentences: SentenceCard[];
  expressions: SentenceCard[];
  error?: string;
}

function inCefrRange(cefr: string, userLevel: string): boolean {
  const order: Record<string, number> = { A1: 0, A2: 1, B1: 2, B2: 3, C1: 4, C2: 5 };
  const userIdx = order[userLevel] ?? 2;
  const idx = order[cefr] ?? 2;
  return idx >= Math.max(0, userIdx - 1) && idx <= Math.min(5, userIdx + 1);
}

export async function loadCardsFromSupabase(userLevel: string = 'B1'): Promise<LoadResult> {
  const [wordsRes, sentencesRes, collocRes, idiomsRes, nuancesRes] = await Promise.all([
    supabase.from('words').select('*').order('topic_id').order('sort_order'),
    supabase.from('sentences').select('*').order('topic_id').order('sort_order'),
    supabase.from('collocations').select('*').order('topic_id').order('sort_order'),
    supabase.from('idioms').select('*').order('topic_id').order('sort_order'),
    supabase.from('nuances').select('*').order('topic_id').order('sort_order'),
  ]);

  if (wordsRes.error) return { words: [], sentences: [], expressions: [], error: wordsRes.error.message };

  const words: WordCard[] = (wordsRes.data || []).map((w: any) => ({
    id:       w.id,
    type:     'word',
    en:       w.en,
    ipa:      w.ipa || '',
    pos:      w.pos || '',
    ko:       w.ko,
    def:      w.definition || '',
    examples: [
      w.example_en   ? { en: w.example_en,   ko: w.example_ko   || '' } : null,
      w.example_en_2 ? { en: w.example_en_2, ko: w.example_ko_2 || '' } : null,
      w.example_en_3 ? { en: w.example_en_3, ko: w.example_ko_3 || '' } : null,
      w.example_en_4 ? { en: w.example_en_4, ko: w.example_ko_4 || '' } : null,
      w.example_en_5 ? { en: w.example_en_5, ko: w.example_ko_5 || '' } : null,
    ].filter(Boolean) as { en: string; ko: string }[],
    cefr:     w.cefr || w.level || 'B1',
    priority: w.priority || 3,
    topicId:  w.topic_id || '',
    tint:     tintFor(w.topic_id || ''),
    img:      w.image_url || null,
    imgKey:   w.image_keyword || '',
    usageFrequency: w.usage_frequency || 2,
  }));

  const sentences: SentenceCard[] = (sentencesRes.data || []).map((s: any) => ({
    id:        s.id,
    type:      (s.type || 'pattern') as SentenceCard['type'],
    en:        s.en,
    ko:        s.ko,
    highlight: s.highlight || undefined,
    tip:       s.tip || undefined,
    cefr:      s.cefr || s.level || 'B1',
    priority:  s.priority || 3,
    topicId:   s.topic_id || '',
    tint:      tintFor(s.topic_id || ''),
    img:       s.image_url || null,
    usageFrequency: s.usage_frequency || 2,
    examples: [
      s.ex1 ? { en: s.ex1, ko: s.ex1_ko || '' } : null,
      s.ex2 ? { en: s.ex2, ko: s.ex2_ko || '' } : null,
      s.ex3 ? { en: s.ex3, ko: s.ex3_ko || '' } : null,
      s.ex4 ? { en: s.ex4, ko: s.ex4_ko || '' } : null,
      s.ex5 ? { en: s.ex5, ko: s.ex5_ko || '' } : null,
    ].filter(Boolean) as { en: string; ko: string }[],
  }));

  const collocations: SentenceCard[] = !collocRes.error && collocRes.data
    ? collocRes.data.map((c: any) => ({
        id:        c.id,
        type:      'collocation',
        en:        c.en,
        ko:        c.ko,
        verb:      c.verb,
        noun:      c.noun,
        wrongVerb: c.wrong_verb || undefined,
        tip:       c.tip || undefined,
        ex1:       c.ex1 || undefined,
        ex1Ko:     c.ex1_ko || undefined,
        ex2:       c.ex2 || undefined,
        ex2Ko:     c.ex2_ko || undefined,
        cefr:      c.cefr || 'B1',
        priority:  c.priority || 3,
        topicId:   c.topic_id || '',
        tint:      tintFor(c.topic_id || ''),
        img:       c.image_url || null,
        usageFrequency: c.usage_frequency || 2,
      }))
    : [];

  const idioms: SentenceCard[] = !idiomsRes.error && idiomsRes.data
    ? idiomsRes.data.map((i: any) => ({
        id:        i.id,
        type:      'idiom',
        en:        i.en,
        ko:        i.ko,
        literalKo: i.literal_ko || undefined,
        tip:       i.tip || undefined,
        ex1:       i.ex1 || undefined,
        ex1Ko:     i.ex1_ko || undefined,
        ex2:       i.ex2 || undefined,
        ex2Ko:     i.ex2_ko || undefined,
        ex3:       i.ex3 || undefined,
        ex3Ko:     i.ex3_ko || undefined,
        cefr:      i.cefr || 'B2',
        priority:  i.priority || 3,
        topicId:   i.topic_id || '',
        tint:      tintFor(i.topic_id || ''),
        img:       i.image_url || null,
        usageFrequency: i.usage_frequency || 1,
      }))
    : [];

  const nuances: SentenceCard[] = !nuancesRes.error && nuancesRes.data
    ? nuancesRes.data.map((n: any) => ({
        id:         n.id,
        type:       'nuance',
        en:         `${n.word_a} vs ${n.word_b}${n.word_c ? ` vs ${n.word_c}` : ''}`,
        ko:         '뉘앙스 비교',
        wordA:      n.word_a,
        wordB:      n.word_b,
        wordC:      n.word_c || undefined,
        koA:        n.ko_a,
        koB:        n.ko_b,
        koC:        n.ko_c || undefined,
        comparison: n.comparison,
        exA:        n.ex_a || undefined,
        exB:        n.ex_b || undefined,
        exC:        n.ex_c || undefined,
        tip:        n.tip || undefined,
        cefr:       n.cefr || 'B2',
        priority:   n.priority || 3,
        topicId:    n.topic_id || '',
        tint:       tintFor(n.topic_id || ''),
        img:        n.image_url || null,
        usageFrequency: n.usage_frequency || 1,
      }))
    : [];

  const expressions: SentenceCard[] = [
    ...sentences.filter(s => s.type === 'pattern' && inCefrRange(s.cefr, userLevel)),
    ...collocations.filter(c => inCefrRange(c.cefr, userLevel)),
    ...idioms.filter(i => inCefrRange(i.cefr, userLevel)),
    ...nuances.filter(n => inCefrRange(n.cefr, userLevel)),
  ];

  return { words, sentences, expressions };
}
