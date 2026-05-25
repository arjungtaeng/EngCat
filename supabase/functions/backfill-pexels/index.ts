// EngCat — Pexels image URL backfill (server-side)
//
// Reads rows with image_keyword IS NOT NULL AND image_url IS NULL,
// searches Pexels, updates image_url. Run repeatedly until empty.
//
// Required Edge Function secrets:
//   PEXELS_API_KEY              — Pexels API key
//   SUPABASE_URL                — auto-set by platform
//   SUPABASE_SERVICE_ROLE_KEY   — auto-set by platform
//
// Invoke:
//   POST /functions/v1/backfill-pexels
//   body: { "table": "words" | "sentences" | "collocations" | "idioms", "limit": 60 }
//
// Returns: { processed, ok, fail, remaining, hint }

import { serve } from 'https://deno.land/std@0.168.0/http/server.ts';
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
};

const TABLES = ['words', 'sentences', 'collocations', 'idioms'] as const;

async function searchPexels(keyword: string, apiKey: string): Promise<string | null> {
  const url = `https://api.pexels.com/v1/search?query=${encodeURIComponent(keyword)}&per_page=1&orientation=landscape`;
  const res = await fetch(url, { headers: { Authorization: apiKey } });
  if (!res.ok) {
    if (res.status === 429) throw new Error('rate_limit');
    return null;
  }
  const data = await res.json();
  return data.photos?.[0]?.src?.large ?? null;
}

serve(async (req) => {
  if (req.method === 'OPTIONS') return new Response(null, { headers: corsHeaders });

  try {
    const PEXELS_KEY = Deno.env.get('PEXELS_API_KEY');
    if (!PEXELS_KEY) {
      return new Response(
        JSON.stringify({ error: 'PEXELS_API_KEY not configured in Edge Function secrets' }),
        { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } },
      );
    }

    const supabase = createClient(
      Deno.env.get('SUPABASE_URL')!,
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!,
      { auth: { persistSession: false } },
    );

    const body = req.method === 'POST' ? await req.json().catch(() => ({})) : {};
    const table  = (body.table || 'words').toString();
    const limit  = Math.min(Math.max(parseInt(body.limit ?? '60', 10) || 60, 1), 150);

    if (!TABLES.includes(table as any)) {
      return new Response(
        JSON.stringify({ error: `table must be one of ${TABLES.join(', ')}` }),
        { status: 400, headers: { ...corsHeaders, 'Content-Type': 'application/json' } },
      );
    }

    // Fetch a batch
    const { data: rows, error: selErr } = await supabase
      .from(table)
      .select('id, image_keyword')
      .not('image_keyword', 'is', null)
      .is('image_url', null)
      .limit(limit);

    if (selErr) throw new Error(`select: ${selErr.message}`);
    if (!rows || rows.length === 0) {
      return new Response(
        JSON.stringify({ processed: 0, ok: 0, fail: 0, remaining: 0, hint: `${table} fully backfilled` }),
        { headers: { ...corsHeaders, 'Content-Type': 'application/json' } },
      );
    }

    let ok = 0, fail = 0, rateLimitHit = false;
    for (const row of rows) {
      const keyword = (row.image_keyword || '').trim();
      if (!keyword) { fail++; continue; }
      try {
        const url = await searchPexels(keyword, PEXELS_KEY);
        if (!url) { fail++; continue; }
        const { error: upErr } = await supabase
          .from(table)
          .update({ image_url: url })
          .eq('id', row.id);
        if (upErr) { fail++; continue; }
        ok++;
      } catch (e) {
        if ((e as Error).message === 'rate_limit') {
          rateLimitHit = true;
          break;
        }
        fail++;
      }
      // small delay to avoid hammering Pexels (Pexels free: ~5 req/sec)
      await new Promise(r => setTimeout(r, 220));
    }

    // Remaining count
    const { count: remaining } = await supabase
      .from(table)
      .select('id', { count: 'exact', head: true })
      .not('image_keyword', 'is', null)
      .is('image_url', null);

    return new Response(
      JSON.stringify({
        table,
        processed: ok + fail,
        ok, fail,
        remaining: remaining ?? null,
        rateLimitHit,
        hint: rateLimitHit
          ? 'Pexels hourly limit hit — wait 1 hour, then re-invoke'
          : remaining === 0
            ? `${table} fully backfilled`
            : `Re-invoke to continue (${remaining} left)`,
      }),
      { headers: { ...corsHeaders, 'Content-Type': 'application/json' } },
    );
  } catch (e) {
    return new Response(
      JSON.stringify({ error: String(e) }),
      { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } },
    );
  }
});
