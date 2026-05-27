-- EngCat: RLS 보안 수정
-- words, topics 테이블 Row-Level Security 활성화
-- 실행: Supabase 대시보드 > SQL Editor에 붙여넣기 후 Run
--
-- 결과:
--   - anon 사용자: SELECT만 가능 (앱 정상 동작)
--   - INSERT/UPDATE/DELETE: anon 불가 (service_role/대시보드는 RLS 우회하므로 관리 가능)

-- ============================================================
-- 1. words 테이블
-- ============================================================
ALTER TABLE words ENABLE ROW LEVEL SECURITY;

CREATE POLICY "public read words"
  ON words
  FOR SELECT
  USING (true);

-- ============================================================
-- 2. topics 테이블
-- ============================================================
ALTER TABLE topics ENABLE ROW LEVEL SECURITY;

CREATE POLICY "public read topics"
  ON topics
  FOR SELECT
  USING (true);

-- ============================================================
-- 확인 쿼리 (실행 후 아래로 결과 확인)
-- ============================================================
SELECT
  schemaname,
  tablename,
  rowsecurity AS rls_enabled
FROM pg_tables
WHERE schemaname = 'public'
ORDER BY tablename;
