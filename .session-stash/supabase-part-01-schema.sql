-- Part 01: Schema (RUN FIRST)

-- ══════════════════════════════════════════════════════════════
-- EngCat Combined Supabase Migration
-- Run this in Supabase SQL Editor in one shot
-- ══════════════════════════════════════════════════════════════

-- ─── 1. Schema (v3): add example_en_2~5 columns + content tables ───
-- EngCat — DB 스키마 v3
-- 단어 예문 5개, 패턴 사용예문 5개 지원

-- ══════════════════════════════════════
-- words 테이블: 예문 2~5 추가
-- ══════════════════════════════════════
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_en_2 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_ko_2 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_en_3 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_ko_3 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_en_4 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_ko_4 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_en_5 TEXT;
ALTER TABLE words ADD COLUMN IF NOT EXISTS example_ko_5 TEXT;

-- ══════════════════════════════════════
-- sentences 테이블: 패턴 사용 예문 5개 추가
-- ══════════════════════════════════════
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex1     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex1_ko  TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex2     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex2_ko  TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex3     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex3_ko  TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex4     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex4_ko  TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex5     TEXT;
ALTER TABLE sentences ADD COLUMN IF NOT EXISTS ex5_ko  TEXT;

-- ─── 2. Words (23 topics) ───

-- supabase-words-greeting.sql
-- EngCat — Greeting (인사·소개) 단어 210개 + 패턴 42개
-- CEFR A1~C2 각 35단어 × 6레벨 = 210단어
-- CEFR A1~C2 각 7패턴 × 6레벨 = 42패턴
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- A1 WORDS (35개)
-- ══════════════════════════════════════

