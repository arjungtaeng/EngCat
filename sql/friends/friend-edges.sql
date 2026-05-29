-- EngCat — 친구 관계 테이블 (양방향 수락 모델)
-- Supabase 대시보드 SQL Editor 에서 한 번 실행하세요.
-- 관계는 행 1개로 표현: requester 가 addressee 에게 요청 → 수락 시 status='accepted'.
-- 행 1개가 양쪽 친구 관계를 모두 표현하므로 상대 데이터를 덮어쓸 위험이 없습니다.

create table if not exists public.friend_edges (
  id          bigint generated always as identity primary key,
  requester   text not null,           -- 요청 보낸 사람 이메일
  addressee   text not null,           -- 요청 받은 사람 이메일
  status      text not null default 'pending'  -- 'pending' | 'accepted'
              check (status in ('pending','accepted')),
  created_at  timestamptz not null default now(),
  unique (requester, addressee)
);

create index if not exists friend_edges_requester_idx on public.friend_edges (requester);
create index if not exists friend_edges_addressee_idx on public.friend_edges (addressee);

-- RLS: user_progress 와 동일한 trust 모델(anon 키 사용). 누구나 read/write 가능.
alter table public.friend_edges enable row level security;

drop policy if exists friend_edges_all on public.friend_edges;
create policy friend_edges_all on public.friend_edges
  for all using (true) with check (true);
