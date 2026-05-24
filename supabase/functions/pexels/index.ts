// EngCat — Pexels image search proxy
// PEXELS_API_KEY must be set in Supabase Edge Function secrets — NEVER in code

import { serve } from 'https://deno.land/std@0.168.0/http/server.ts';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, content-type',
};

serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    const { keyword, per_page = 1 } = await req.json();
    if (!keyword) return new Response(JSON.stringify({ error: 'keyword required' }), { status: 400, headers: corsHeaders });

    const apiKey = Deno.env.get('PEXELS_API_KEY');
    if (!apiKey) return new Response(JSON.stringify({ error: 'not configured' }), { status: 500, headers: corsHeaders });

    const url = `https://api.pexels.com/v1/search?query=${encodeURIComponent(keyword)}&per_page=${per_page}&orientation=landscape`;
    const res = await fetch(url, { headers: { Authorization: apiKey } });
    if (!res.ok) throw new Error(`Pexels ${res.status}`);

    const data = await res.json();
    const photos = (data.photos || []).map((p: any) => ({
      id: p.id,
      url: p.src.large,
      thumb: p.src.medium,
      photographer: p.photographer,
    }));

    return new Response(JSON.stringify({ photos }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' },
    });
  } catch (e) {
    return new Response(JSON.stringify({ error: String(e) }), { status: 500, headers: corsHeaders });
  }
});
