const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
};

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    const { text, voice, rate } = await req.json();

    const key    = Deno.env.get('AZURE_SPEECH_KEY')    ?? '';
    const region = Deno.env.get('AZURE_SPEECH_REGION') ?? 'koreacentral';

    if (!key) {
      return new Response(JSON.stringify({ error: 'TTS not configured' }), {
        status: 503,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      });
    }

    const xmlEsc = (s: string) =>
      s.replace(/[<>&"']/g, (c: string) =>
        ({ '<': '&lt;', '>': '&gt;', '&': '&amp;', '"': '&quot;', "'": '&apos;' }[c] ?? c)
      );

    const safeVoice = (voice ?? 'en-US-JennyNeural').replace(/[^a-zA-Z0-9\-]/g, '');
    const safeRate  = ['slow', 'medium', 'fast'].includes(rate) ? rate : 'medium';
    const ssml = `<speak version='1.0' xml:lang='en-US'><voice name='${safeVoice}'><prosody rate='${safeRate}'>${xmlEsc(text ?? '')}</prosody></voice></speak>`;

    const azRes = await fetch(
      `https://${region}.tts.speech.microsoft.com/cognitiveservices/v1`,
      {
        method: 'POST',
        headers: {
          'Ocp-Apim-Subscription-Key': key,
          'Content-Type': 'application/ssml+xml',
          'X-Microsoft-OutputFormat': 'audio-16khz-128kbitrate-mono-mp3',
        },
        body: ssml,
      }
    );

    if (!azRes.ok) {
      return new Response(JSON.stringify({ error: `Azure TTS ${azRes.status}` }), {
        status: azRes.status,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      });
    }

    const audio = await azRes.arrayBuffer();
    return new Response(audio, {
      headers: { ...corsHeaders, 'Content-Type': 'audio/mpeg', 'Cache-Control': 'no-cache' },
    });
  } catch (err) {
    return new Response(JSON.stringify({ error: String(err) }), {
      status: 500,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' },
    });
  }
});
