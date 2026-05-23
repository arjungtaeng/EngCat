// EngCat — Supabase 클라이언트 초기화
const { createClient } = window.supabase;
window.ECSupabaseClient = createClient(
  'https://zknqzjrymkswkqotrion.supabase.co',
  'sb_publishable_-PyhiOHtQJsKafpoDZIMLg_q09S3yRJ'
);
