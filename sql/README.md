# EngCat SQL 데이터 관리

## 원칙
- **DB가 정답(source of truth).** `*-seed.sql`은 DB에서 자동으로 뽑은 스냅샷일 뿐입니다.
- **손으로 합치지 않습니다.** 추가는 작은 파일로, 통합본은 스크립트가 재생성합니다.
- **DELETE 안 함.** 업로더는 INSERT만 하고, 이미 있는 id는 자동 skip합니다.

## 구조
```
sql/
  words/
    words-seed.sql          ← 단어 전체 스냅샷 (자동 생성, 직접 편집 금지)
    additions/              ← 새로 추가할 단어를 여기에
  sentences/
    sentences-seed.sql      ← 문장(패턴) 전체 스냅샷 (자동 생성)
    additions/              ← 새로 추가할 문장을 여기에
  expressions/
    collocations-seed.sql   ← 콜로케이션 전체 스냅샷 (자동 생성)
    idioms-seed.sql         ← 이디엄 전체 스냅샷 (자동 생성)
    nuances-seed.sql        ← 뉘앙스 전체 스냅샷 (자동 생성)
    additions/              ← 새로 추가할 표현을 여기에
  backup/                   ← seed 백업 사본 (5개 테이블 전부)
  schema/                   ← 테이블/타입 정의, 마이그레이션
  _scripts/
    upload.mjs              ← 파일을 DB에 추가 (INSERT only, 중복 skip)
    export.mjs              ← DB → seed 재생성
  archive/                  ← 옛 일회성 SQL 보관 (재실행 대상 아님)
```

## 새 데이터 추가하는 법
1. `sql/words/additions/2026-06-01-<주제>.sql` 파일을 만들어 **INSERT 문**으로 작성
   (헤더 컬럼 순서는 seed와 동일하게, 한 줄에 한 행 권장)
2. DB에 추가:
   ```
   node sql/_scripts/upload.mjs sql/words/additions/2026-06-01-<주제>.sql
   ```
3. 통합본(seed) 갱신:
   ```
   node sql/_scripts/export.mjs words      # 또는 sentences / all
   ```

→ 손으로 합치는 작업 0회. 추가는 작은 파일, 통합본은 항상 자동 생성.

## 새 데이터 추가 (모든 테이블 동일)
`words` 자리에 `sentences` / `collocations` / `idioms` / `nuances` 를 넣으면 됩니다.
```
node sql/_scripts/export.mjs all     # 5개 테이블 seed 한 번에 갱신
```

## 전체 복구 (DB가 비었을 때)
```
node sql/_scripts/upload.mjs sql/words/words-seed.sql
node sql/_scripts/upload.mjs sql/sentences/sentences-seed.sql
node sql/_scripts/upload.mjs sql/expressions/collocations-seed.sql
node sql/_scripts/upload.mjs sql/expressions/idioms-seed.sql
node sql/_scripts/upload.mjs sql/expressions/nuances-seed.sql
```

## 이미지
이미지(`image_url`)는 파일에 저장하지 않습니다. `image_keyword` 기반으로
`scripts/backfill-pexels.mjs`(GitHub Actions 매시간 자동 실행)가 채웁니다.

## 현황 (2026-05-29 기준)
| 테이블 | 행 수 |
|---|---|
| words | 5,481 |
| sentences | 1,092 |
| collocations | 830 |
| idioms | 635 |
| nuances | 385 |
