# SQL Files

Supabase seed and migration history, organized by data type.

```
sql/
├─ schema/         스키마 정의, 마이그레이션 (7)
├─ words/          토픽별 단어 데이터 + examples backfill (64)
├─ sentences/      토픽별 문장 패턴 examples + image_keyword (27)
├─ expressions/    collocations / idioms / nuances (12)
└─ archive/
   ├─ bundles/     번들 묶음 업로드 (8)
   ├─ legacy/      구 시드 데이터, 이미지 키워드 v1 (2)
   ├─ applied/     일회성 적용 완료 마이그레이션 (3)
   └─ stash/       .session-stash 보관본 (22)
```

## 폴더별 설명

### `schema/`
테이블/타입 정의, 컬럼 추가, 마이그레이션. DB를 처음 세팅하거나 스키마 변경할 때 참고.

### `words/`
각 토픽별 `supabase-words-{topic}.sql` (210단어 = 35 × 6 CEFR), 그리고 `-examples.sql` 짝꿍 (예문 ex_en_2~5 backfill UPDATE).

### `sentences/`
각 토픽별 `supabase-sentences-{topic}-examples.sql` (42 패턴 × ex1~ex5). 그리고 `supabase-sentences-image-keywords.sql` (Pexels 검색용 키워드).

### `expressions/`
`supabase-content-collocations.sql`, `-idioms.sql`, `-nuances.sql` 및 각 examples 파일.

### `archive/`
이미 Supabase에 적용 완료된 일회성 SQL, 옛 번들, 레거시 시드. **참고용 보관**이지 재실행 대상 아님.

## 데이터 현황 (2026-05-28 기준)

| 테이블 | 행 수 |
|---|---|
| words | 5485 |
| sentences | 966 |
| collocations | 460 |
| idioms | 345 |
| nuances | 299 |
| topics | 28 |
