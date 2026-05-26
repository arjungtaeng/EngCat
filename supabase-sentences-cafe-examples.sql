-- EngCat — Cafe pattern examples backfill
-- ex1 ~ ex5: 각 패턴 핵심 구조를 다른 상황에서 사용한 예문 5개
-- 톤: 공손한 존댓말, B1-B2 학습자 친화 자연스러운 영어
-- Idempotent (UPDATE)
-- 선행 조건: supabase-migration-sentences-examples.sql 먼저 실행

-- ══════════════════════════════════════
-- A1 (7 patterns)
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'A table for two, please.', ex1_ko = '두 명이에요.',
  ex2 = 'A table for four by the window, please.', ex2_ko = '창가 4인석 자리 부탁드려요.',
  ex3 = 'Do you have a table for three?', ex3_ko = '3인석 자리 있어요?',
  ex4 = 'A quiet table for two, if possible.', ex4_ko = '가능하면 2인 조용한 자리로 부탁드려요.',
  ex5 = 'A table for one, please.', ex5_ko = '혼자 앉을 자리 주세요.'
WHERE id = 's_cafe_A1_01';

UPDATE sentences SET
  ex1 = 'Can I see the menu, please?', ex1_ko = '메뉴판 볼 수 있을까요?',
  ex2 = 'Could I see the dessert menu, please?', ex2_ko = '디저트 메뉴 볼 수 있을까요?',
  ex3 = 'Can I see the drinks list?', ex3_ko = '음료 리스트 볼 수 있을까요?',
  ex4 = 'Could we see the wine list, please?', ex4_ko = '와인 리스트 볼 수 있을까요?',
  ex5 = 'Can I see the kids'' menu?', ex5_ko = '어린이 메뉴 볼 수 있을까요?'
WHERE id = 's_cafe_A1_02';

UPDATE sentences SET
  ex1 = 'I''ll have this one, please.', ex1_ko = '이걸로 주세요.',
  ex2 = 'I''ll have the soup, please.', ex2_ko = '수프로 주세요.',
  ex3 = 'I''ll have a latte and a croissant.', ex3_ko = '라떼와 크루아상으로 주세요.',
  ex4 = 'I''ll have the same as her.', ex4_ko = '저분이랑 똑같은 걸로 주세요.',
  ex5 = 'I''ll have the chef''s recommendation.', ex5_ko = '셰프 추천 메뉴로 주세요.'
WHERE id = 's_cafe_A1_03';

UPDATE sentences SET
  ex1 = 'Is this seat taken?', ex1_ko = '이 자리 비어 있나요?',
  ex2 = 'Excuse me, is this seat taken?', ex2_ko = '실례지만 이 자리 비어 있나요?',
  ex3 = 'Is this table taken?', ex3_ko = '이 테이블 자리 있나요?',
  ex4 = 'Are these two seats taken?', ex4_ko = '여기 두 자리 비어 있나요?',
  ex5 = 'Sorry, is the chair next to you taken?', ex5_ko = '죄송한데 옆 의자 자리 있나요?'
WHERE id = 's_cafe_A1_04';

UPDATE sentences SET
  ex1 = 'How much is this?', ex1_ko = '이거 얼마예요?',
  ex2 = 'How much is the cheesecake?', ex2_ko = '치즈케이크 얼마예요?',
  ex3 = 'How much is an iced americano?', ex3_ko = '아이스 아메리카노 얼마예요?',
  ex4 = 'How much is it for the small size?', ex4_ko = '작은 사이즈로 얼마예요?',
  ex5 = 'How much is the set menu?', ex5_ko = '세트 메뉴 얼마예요?'
WHERE id = 's_cafe_A1_05';

UPDATE sentences SET
  ex1 = 'The bill, please.', ex1_ko = '계산서 주세요.',
  ex2 = 'Could I have the bill, please?', ex2_ko = '계산서 주실 수 있을까요?',
  ex3 = 'The bill, please — we''re in a bit of a hurry.', ex3_ko = '계산서 부탁드려요. 좀 서둘러야 해서요.',
  ex4 = 'Excuse me, the bill please.', ex4_ko = '저기요, 계산서 부탁드려요.',
  ex5 = 'Can we have the bill whenever you''re ready?', ex5_ko = '시간 되실 때 계산서 주실 수 있나요?'
WHERE id = 's_cafe_A1_06';

UPDATE sentences SET
  ex1 = 'This is delicious!', ex1_ko = '정말 맛있어요!',
  ex2 = 'Wow, this pasta is delicious!', ex2_ko = '와, 이 파스타 정말 맛있어요!',
  ex3 = 'Everything is delicious here.', ex3_ko = '여기 다 맛있어요.',
  ex4 = 'The cake is absolutely delicious.', ex4_ko = '케이크 정말 맛있어요.',
  ex5 = 'This is the most delicious soup I''ve had.', ex5_ko = '제가 먹어본 수프 중에 제일 맛있어요.'
WHERE id = 's_cafe_A1_07';

-- ══════════════════════════════════════
-- A2 (7 patterns)
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'What do you recommend?', ex1_ko = '무엇을 추천하시나요?',
  ex2 = 'What do you recommend for dessert?', ex2_ko = '디저트로 뭘 추천하시나요?',
  ex3 = 'What would you recommend for a first-time visitor?', ex3_ko = '처음 오는 사람에게 뭘 추천하시나요?',
  ex4 = 'What do you recommend with this wine?', ex4_ko = '이 와인이랑 뭘 같이 추천하시나요?',
  ex5 = 'What do you recommend if I like spicy food?', ex5_ko = '매운 음식 좋아하면 뭘 추천하시나요?'
WHERE id = 's_cafe_A2_01';

UPDATE sentences SET
  ex1 = 'Can I get this to go, please?', ex1_ko = '포장으로 주실 수 있나요?',
  ex2 = 'Can I get the rest to go?', ex2_ko = '남은 거 포장해 주실 수 있나요?',
  ex3 = 'Could I get two coffees to go?', ex3_ko = '커피 두 잔 포장으로 주실 수 있나요?',
  ex4 = 'Can I get the cake to go, please?', ex4_ko = '케이크 포장해 주실 수 있나요?',
  ex5 = 'Could I get this salad to go, please?', ex5_ko = '이 샐러드 포장으로 주실 수 있나요?'
WHERE id = 's_cafe_A2_02';

UPDATE sentences SET
  ex1 = 'Is there anything without meat?', ex1_ko = '고기가 안 들어간 메뉴가 있나요?',
  ex2 = 'Is there anything without dairy?', ex2_ko = '유제품이 안 들어간 메뉴가 있나요?',
  ex3 = 'Is there anything without nuts on the menu?', ex3_ko = '메뉴에 견과류 안 들어간 거 있나요?',
  ex4 = 'Is there anything without onions?', ex4_ko = '양파가 안 들어간 거 있나요?',
  ex5 = 'Is there anything without gluten you''d recommend?', ex5_ko = '글루텐 없는 메뉴 중에 추천해 주실 수 있나요?'
WHERE id = 's_cafe_A2_03';

UPDATE sentences SET
  ex1 = 'Could we split the bill?', ex1_ko = '계산을 따로 할 수 있나요?',
  ex2 = 'Could we split the bill three ways?', ex2_ko = '계산서를 셋이서 나눠 낼 수 있나요?',
  ex3 = 'Could we split the bill evenly?', ex3_ko = '계산서 똑같이 나눠 낼 수 있나요?',
  ex4 = 'Could we split the bill by what we ordered?', ex4_ko = '주문한 대로 따로 계산할 수 있나요?',
  ex5 = 'Could we split the bill — half on each card?', ex5_ko = '카드 두 개에 반반씩 계산할 수 있나요?'
WHERE id = 's_cafe_A2_04';

UPDATE sentences SET
  ex1 = 'Can I have a refill, please?', ex1_ko = '리필 해주실 수 있나요?',
  ex2 = 'Can I have a refill on my coffee?', ex2_ko = '커피 리필 받을 수 있나요?',
  ex3 = 'Could I have a refill of water, please?', ex3_ko = '물 리필 좀 해주실 수 있나요?',
  ex4 = 'Can I have a refill when you have a moment?', ex4_ko = '시간 되시면 리필 좀 부탁드려요.',
  ex5 = 'Is a refill free, or is there an extra charge?', ex5_ko = '리필은 무료인가요, 아니면 추가 요금이 있나요?'
WHERE id = 's_cafe_A2_05';

UPDATE sentences SET
  ex1 = 'How long is the wait?', ex1_ko = '얼마나 기다려야 하나요?',
  ex2 = 'How long is the wait for a table?', ex2_ko = '자리까지 얼마나 기다려야 하나요?',
  ex3 = 'How long is the wait for takeaway?', ex3_ko = '포장 주문은 얼마나 걸려요?',
  ex4 = 'How long is the wait for the chef''s special?', ex4_ko = '셰프 특선은 얼마나 걸려요?',
  ex5 = 'How long is the wait — about thirty minutes?', ex5_ko = '얼마나 기다려야 해요? 30분 정도?'
WHERE id = 's_cafe_A2_06';

UPDATE sentences SET
  ex1 = 'Do you have a vegetarian option?', ex1_ko = '채식 메뉴가 있나요?',
  ex2 = 'Do you have a vegan option on the menu?', ex2_ko = '메뉴에 비건 옵션 있나요?',
  ex3 = 'Do you have a gluten-free option?', ex3_ko = '글루텐 프리 옵션 있나요?',
  ex4 = 'Do you have a vegetarian option for the set menu?', ex4_ko = '세트 메뉴에 채식 옵션 있나요?',
  ex5 = 'Do you have a dairy-free option for dessert?', ex5_ko = '디저트 중에 유제품 없는 거 있나요?'
WHERE id = 's_cafe_A2_07';

-- ══════════════════════════════════════
-- B1 (7 patterns)
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'What do you recommend for someone who doesn''t eat meat?', ex1_ko = '고기를 먹지 않는 사람에게는 무엇을 추천하시나요?',
  ex2 = 'What do you recommend for someone who prefers light meals?', ex2_ko = '담백한 식사를 선호하는 사람에게는 뭘 추천하시나요?',
  ex3 = 'What do you recommend for someone who likes spicy food?', ex3_ko = '매운 음식을 좋아하는 사람에게는 뭘 추천하시나요?',
  ex4 = 'What do you recommend for someone who hates cilantro?', ex4_ko = '고수를 싫어하는 사람에게는 뭘 추천하시나요?',
  ex5 = 'What do you recommend for someone trying Korean food for the first time?', ex5_ko = '한국 음식이 처음인 사람에게는 뭘 추천하시나요?'
WHERE id = 's_cafe_B1_01';

UPDATE sentences SET
  ex1 = 'I have a nut allergy — could you check the ingredients?', ex1_ko = '견과류 알레르기가 있어서 재료를 확인해 주실 수 있나요?',
  ex2 = 'I have a shellfish allergy — could you check the ingredients?', ex2_ko = '조개류 알레르기가 있어서 재료 확인 좀 부탁드려요.',
  ex3 = 'I have a dairy allergy — is there anything I should avoid?', ex3_ko = '유제품 알레르기가 있어서요. 피해야 할 메뉴 있을까요?',
  ex4 = 'I have a gluten intolerance — could you let me know what''s safe?', ex4_ko = '글루텐을 못 먹는데, 먹어도 되는 메뉴 알려주실 수 있나요?',
  ex5 = 'I have a soy allergy — could you double-check with the kitchen?', ex5_ko = '콩 알레르기가 있어서요. 주방에 한 번 확인해 주실 수 있나요?'
WHERE id = 's_cafe_B1_02';

UPDATE sentences SET
  ex1 = 'Could you make it without onions, please?', ex1_ko = '양파 없이 만들어 주실 수 있나요?',
  ex2 = 'Could you make it without garlic, please?', ex2_ko = '마늘 빼고 만들어 주실 수 있나요?',
  ex3 = 'Could you make it without cilantro, please?', ex3_ko = '고수 빼고 만들어 주실 수 있나요?',
  ex4 = 'Could you make it less spicy, please?', ex4_ko = '덜 맵게 만들어 주실 수 있나요?',
  ex5 = 'Could you make it without dairy, please?', ex5_ko = '유제품 빼고 만들어 주실 수 있나요?'
WHERE id = 's_cafe_B1_03';

UPDATE sentences SET
  ex1 = 'Is the kitchen able to accommodate dietary restrictions?', ex1_ko = '식이 제한에 맞춰 조리가 가능한가요?',
  ex2 = 'Is the kitchen able to accommodate vegan diets?', ex2_ko = '주방에서 비건 식단도 맞춰 주시나요?',
  ex3 = 'Is the kitchen able to accommodate halal requests?', ex3_ko = '주방에서 할랄 요청도 가능한가요?',
  ex4 = 'Is the kitchen able to accommodate severe food allergies?', ex4_ko = '심한 식품 알레르기도 주방에서 대응 가능한가요?',
  ex5 = 'Is the kitchen able to accommodate low-sodium diets?', ex5_ko = '저염 식단도 주방에서 맞춰 주실 수 있나요?'
WHERE id = 's_cafe_B1_04';

UPDATE sentences SET
  ex1 = 'Could I substitute the fries for a salad?', ex1_ko = '감자튀김 대신 샐러드로 바꿀 수 있나요?',
  ex2 = 'Could I substitute the rice for quinoa?', ex2_ko = '밥을 퀴노아로 바꿀 수 있나요?',
  ex3 = 'Could I substitute the chicken for tofu?', ex3_ko = '닭고기를 두부로 바꿀 수 있나요?',
  ex4 = 'Could I substitute the cream sauce for tomato?', ex4_ko = '크림 소스를 토마토 소스로 바꿀 수 있나요?',
  ex5 = 'Could I substitute the bread for a gluten-free option?', ex5_ko = '빵을 글루텐 프리로 바꿀 수 있나요?'
WHERE id = 's_cafe_B1_05';

UPDATE sentences SET
  ex1 = 'I think there''s a mistake in the bill.', ex1_ko = '계산서에 실수가 있는 것 같아요.',
  ex2 = 'I think there''s a mistake — we didn''t order the wine.', ex2_ko = '실수가 있는 것 같아요. 저희 와인은 주문 안 했거든요.',
  ex3 = 'I think there''s a mistake — the price seems higher than the menu.', ex3_ko = '뭔가 잘못된 것 같아요. 메뉴보다 가격이 더 높네요.',
  ex4 = 'I think there''s a mistake — this item appears twice.', ex4_ko = '실수가 있는 것 같은데, 이 항목이 두 번 들어가 있어요.',
  ex5 = 'I think there''s a mistake — the discount wasn''t applied.', ex5_ko = '뭔가 잘못된 것 같은데, 할인이 적용 안 됐어요.'
WHERE id = 's_cafe_B1_06';

UPDATE sentences SET
  ex1 = 'What''s the house specialty today?', ex1_ko = '오늘의 특선 요리는 무엇인가요?',
  ex2 = 'What''s the house specialty for lunch?', ex2_ko = '점심 특선 메뉴는 뭐가 있나요?',
  ex3 = 'What''s the house specialty I should try?', ex3_ko = '꼭 먹어봐야 할 특선 메뉴가 있나요?',
  ex4 = 'What''s the house specialty — meat or seafood?', ex4_ko = '여기 특선은 고기예요, 해산물이에요?',
  ex5 = 'What''s the house specialty that''s only available today?', ex5_ko = '오늘만 되는 특선 메뉴 있나요?'
WHERE id = 's_cafe_B1_07';

-- ══════════════════════════════════════
-- B2 (7 patterns)
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The dish has a beautiful balance of acidity and richness.', ex1_ko = '이 요리는 산미와 풍미의 균형이 아름다워요.',
  ex2 = 'This wine has a beautiful balance of fruit and tannin.', ex2_ko = '이 와인은 과일향과 타닌의 균형이 아름다워요.',
  ex3 = 'The dessert has a beautiful balance of sweetness and tartness.', ex3_ko = '이 디저트는 단맛과 새콤함의 균형이 아름다워요.',
  ex4 = 'The sauce has a beautiful balance of heat and sweetness.', ex4_ko = '이 소스는 매운맛과 단맛의 균형이 아름다워요.',
  ex5 = 'The cocktail has a beautiful balance of bitter and floral notes.', ex5_ko = '이 칵테일은 쓴맛과 꽃향의 균형이 아름다워요.'
WHERE id = 's_cafe_B2_01';

UPDATE sentences SET
  ex1 = 'Would you be able to suggest a wine pairing for this dish?', ex1_ko = '이 요리에 어울리는 와인 페어링을 추천해 주실 수 있나요?',
  ex2 = 'Would you be able to suggest a wine pairing for the lamb?', ex2_ko = '양고기에 어울리는 와인 페어링을 추천해 주실 수 있나요?',
  ex3 = 'Would you be able to suggest a non-alcoholic pairing?', ex3_ko = '논알콜 페어링을 추천해 주실 수 있나요?',
  ex4 = 'Would you be able to suggest a dessert wine pairing?', ex4_ko = '디저트 와인 페어링을 추천해 주실 수 있나요?',
  ex5 = 'Would you be able to suggest a pairing within our budget?', ex5_ko = '저희 예산 안에서 페어링 추천해 주실 수 있나요?'
WHERE id = 's_cafe_B2_02';

UPDATE sentences SET
  ex1 = 'The sauce has a lovely depth of flavor with just a hint of smokiness.', ex1_ko = '소스에 훈연향이 살짝 감도는 깊은 풍미가 있어요.',
  ex2 = 'The broth has a lovely depth of flavor with just a hint of ginger.', ex2_ko = '국물에 생강향이 살짝 감도는 깊은 풍미가 있어요.',
  ex3 = 'The cheese has a lovely depth of flavor with just a hint of nuttiness.', ex3_ko = '치즈에 견과류 향이 살짝 감도는 깊은 풍미가 있어요.',
  ex4 = 'The coffee has a lovely depth of flavor with just a hint of chocolate.', ex4_ko = '커피에 초콜릿 향이 살짝 감도는 깊은 풍미가 있어요.',
  ex5 = 'The cocktail has a lovely depth of flavor with just a hint of citrus.', ex5_ko = '칵테일에 시트러스 향이 살짝 감도는 깊은 풍미가 있어요.'
WHERE id = 's_cafe_B2_03';

UPDATE sentences SET
  ex1 = 'I noticed the menu focuses heavily on locally sourced, seasonal produce.', ex1_ko = '메뉴가 로컬 식재료와 제철 재료를 중심으로 구성된 것 같아요.',
  ex2 = 'I noticed the menu focuses heavily on plant-based dishes.', ex2_ko = '메뉴가 채식 요리 중심으로 구성된 것 같아요.',
  ex3 = 'I noticed the menu focuses heavily on small sharing plates.', ex3_ko = '메뉴가 나눠 먹는 작은 접시 중심으로 구성된 것 같아요.',
  ex4 = 'I noticed the menu focuses heavily on traditional French techniques.', ex4_ko = '메뉴가 전통 프랑스 조리법 중심으로 구성된 것 같아요.',
  ex5 = 'I noticed the menu focuses heavily on fermentation and pickling.', ex5_ko = '메뉴가 발효와 피클링 중심으로 구성된 것 같아요.'
WHERE id = 's_cafe_B2_04';

UPDATE sentences SET
  ex1 = 'The texture of the mousse is incredibly light — it almost dissolves on the palate.', ex1_ko = '무스의 식감이 믿을 수 없을 만큼 가벼워요. 입안에서 녹아버리는 것 같아요.',
  ex2 = 'The texture of this sashimi is incredibly silky — it almost dissolves on the palate.', ex2_ko = '이 사시미 식감이 정말 실키해요. 입안에서 녹는 것 같아요.',
  ex3 = 'The texture of the pâté is incredibly smooth — it almost dissolves on the palate.', ex3_ko = '파테 식감이 정말 부드러워요. 입안에서 녹는 것 같아요.',
  ex4 = 'The texture of this cheese is incredibly creamy — it almost dissolves on the palate.', ex4_ko = '치즈 식감이 정말 크리미해요. 입안에서 녹는 것 같아요.',
  ex5 = 'The texture of this gelato is incredibly velvety — it almost dissolves on the palate.', ex5_ko = '젤라토 식감이 정말 벨벳 같아요. 입안에서 녹는 것 같아요.'
WHERE id = 's_cafe_B2_05';

UPDATE sentences SET
  ex1 = 'Could you tell me more about the provenance of the ingredients?', ex1_ko = '재료의 산지에 대해 더 알려주실 수 있나요?',
  ex2 = 'Could you tell me more about the provenance of the wine?', ex2_ko = '이 와인의 산지에 대해 더 알려주실 수 있나요?',
  ex3 = 'Could you tell me more about the provenance of the beef?', ex3_ko = '소고기 산지에 대해 더 알려주실 수 있나요?',
  ex4 = 'Could you tell me more about the provenance of these oysters?', ex4_ko = '이 굴의 산지에 대해 더 알려주실 수 있나요?',
  ex5 = 'Could you tell me more about the provenance of the coffee beans?', ex5_ko = '커피 원두의 산지에 대해 더 알려주실 수 있나요?'
WHERE id = 's_cafe_B2_06';

UPDATE sentences SET
  ex1 = 'I think the fermentation adds a wonderful complexity to the bread.', ex1_ko = '발효 과정이 빵에 훌륭한 복잡성을 더해주는 것 같아요.',
  ex2 = 'I think the fermentation adds a wonderful complexity to the kimchi.', ex2_ko = '발효가 김치에 훌륭한 복잡성을 더해주는 것 같아요.',
  ex3 = 'I think the long aging adds a wonderful complexity to the cheese.', ex3_ko = '오랜 숙성이 치즈에 훌륭한 복잡성을 더해주는 것 같아요.',
  ex4 = 'I think the smoking process adds a wonderful complexity to the meat.', ex4_ko = '훈연 과정이 고기에 훌륭한 복잡성을 더해주는 것 같아요.',
  ex5 = 'I think the slow cooking adds a wonderful complexity to the stew.', ex5_ko = '천천히 익히는 게 스튜에 훌륭한 복잡성을 더해주는 것 같아요.'
WHERE id = 's_cafe_B2_07';

-- ══════════════════════════════════════
-- C1 (7 patterns)
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The mise en place here is impeccable — every element of the dish arrives perfectly timed.', ex1_ko = '여기의 미장 플라스는 완벽해요. 요리의 모든 요소가 정확한 타이밍에 나와요.',
  ex2 = 'The service here is impeccable — every glass is refilled before you ask.', ex2_ko = '여기 서비스가 완벽해요. 부탁하기 전에 잔을 채워줘요.',
  ex3 = 'The plating here is impeccable — every dish looks like a work of art.', ex3_ko = '여기 플레이팅이 완벽해요. 모든 요리가 예술 작품 같아요.',
  ex4 = 'The hospitality here is impeccable — they remember every guest''s preferences.', ex4_ko = '여기 환대가 완벽해요. 모든 손님의 취향을 기억해 줘요.',
  ex5 = 'The wine program here is impeccable — every pairing is thoughtfully considered.', ex5_ko = '여기 와인 프로그램이 완벽해요. 모든 페어링이 세심하게 고려돼 있어요.'
WHERE id = 's_cafe_C1_01';

UPDATE sentences SET
  ex1 = 'The tasting menu does a remarkable job of showcasing the terroir of this region.', ex1_ko = '테이스팅 메뉴가 이 지역의 테루아를 탁월하게 보여주고 있어요.',
  ex2 = 'The chef does a remarkable job of showcasing traditional Korean fermentation.', ex2_ko = '셰프가 한국 전통 발효를 탁월하게 보여주고 있어요.',
  ex3 = 'The wine list does a remarkable job of showcasing small-producer estates.', ex3_ko = '와인 리스트가 소규모 생산자들의 와이너리를 탁월하게 보여주고 있어요.',
  ex4 = 'The dessert course does a remarkable job of showcasing seasonal stone fruit.', ex4_ko = '디저트 코스가 제철 과일을 탁월하게 보여주고 있어요.',
  ex5 = 'The opening course does a remarkable job of showcasing the kitchen''s ambition.', ex5_ko = '첫 코스가 주방의 야심을 탁월하게 보여주고 있어요.'
WHERE id = 's_cafe_C1_02';

UPDATE sentences SET
  ex1 = 'The charcuterie board is a study in contrast — the saltiness of the cured meats beautifully offsets the sweetness of the compote.', ex1_ko = '샤르퀴트리 보드는 대비의 예술이에요. 염장 고기의 짠맛이 콩포트의 단맛을 아름답게 상쇄해요.',
  ex2 = 'This dish is a study in contrast — the heat of the chili beautifully offsets the cooling cucumber.', ex2_ko = '이 요리는 대비의 예술이에요. 칠리의 매운맛이 시원한 오이와 아름답게 어우러져요.',
  ex3 = 'The dessert is a study in contrast — the bitterness of the chocolate beautifully offsets the fruit''s acidity.', ex3_ko = '디저트는 대비의 예술이에요. 초콜릿의 쓴맛이 과일의 산미와 아름답게 어우러져요.',
  ex4 = 'The salad is a study in contrast — the crunch of the nuts beautifully offsets the softness of the cheese.', ex4_ko = '샐러드는 대비의 예술이에요. 견과류의 바삭함이 치즈의 부드러움과 아름답게 어우러져요.',
  ex5 = 'The cocktail is a study in contrast — the smokiness of the mezcal beautifully offsets the bright citrus.', ex5_ko = '칵테일은 대비의 예술이에요. 메즈칼의 훈연향이 상큼한 시트러스와 아름답게 어우러져요.'
WHERE id = 's_cafe_C1_03';

UPDATE sentences SET
  ex1 = 'I appreciate how the reduction ties all the elements of the dish together.', ex1_ko = '리덕션이 요리의 모든 요소를 하나로 묶어주는 방식이 마음에 들어요.',
  ex2 = 'I appreciate how the citrus dressing ties all the elements of the salad together.', ex2_ko = '시트러스 드레싱이 샐러드의 모든 요소를 하나로 묶어주는 방식이 마음에 들어요.',
  ex3 = 'I appreciate how the garlic oil ties all the elements of the pasta together.', ex3_ko = '갈릭 오일이 파스타의 모든 요소를 하나로 묶어주는 방식이 마음에 들어요.',
  ex4 = 'I appreciate how the broth ties all the elements of the ramen together.', ex4_ko = '국물이 라멘의 모든 요소를 하나로 묶어주는 방식이 마음에 들어요.',
  ex5 = 'I appreciate how the dashi ties all the elements of the kaiseki together.', ex5_ko = '다시가 가이세키의 모든 요소를 하나로 묶어주는 방식이 마음에 들어요.'
WHERE id = 's_cafe_C1_04';

UPDATE sentences SET
  ex1 = 'Could you walk me through the foraging philosophy behind this seasonal menu?', ex1_ko = '이 시즌 메뉴의 채집 철학에 대해 설명해 주실 수 있나요?',
  ex2 = 'Could you walk me through the sourcing philosophy behind the seafood program?', ex2_ko = '해산물 프로그램의 소싱 철학에 대해 설명해 주실 수 있나요?',
  ex3 = 'Could you walk me through the fermentation philosophy behind these pickles?', ex3_ko = '이 피클의 발효 철학에 대해 설명해 주실 수 있나요?',
  ex4 = 'Could you walk me through the aging philosophy behind this cheese selection?', ex4_ko = '이 치즈 셀렉션의 숙성 철학에 대해 설명해 주실 수 있나요?',
  ex5 = 'Could you walk me through the design philosophy behind this tasting menu?', ex5_ko = '이 테이스팅 메뉴의 구성 철학에 대해 설명해 주실 수 있나요?'
WHERE id = 's_cafe_C1_05';

UPDATE sentences SET
  ex1 = 'The Michelin inspector would certainly appreciate the restraint shown in the plating.', ex1_ko = '미슐랭 심사위원이라면 플레이팅의 절제미를 분명히 높이 평가할 거예요.',
  ex2 = 'A seasoned critic would certainly appreciate the restraint shown in the seasoning.', ex2_ko = '노련한 비평가라면 간의 절제미를 분명히 높이 평가할 거예요.',
  ex3 = 'A trained sommelier would certainly appreciate the restraint shown in the wine list.', ex3_ko = '훈련된 소믈리에라면 와인 리스트의 절제미를 분명히 높이 평가할 거예요.',
  ex4 = 'A pastry expert would certainly appreciate the restraint shown in the dessert design.', ex4_ko = '페이스트리 전문가라면 디저트 디자인의 절제미를 분명히 높이 평가할 거예요.',
  ex5 = 'A serious diner would certainly appreciate the restraint shown in the menu length.', ex5_ko = '진지한 식객이라면 메뉴 길이의 절제미를 분명히 높이 평가할 거예요.'
WHERE id = 's_cafe_C1_06';

UPDATE sentences SET
  ex1 = 'The sous vide preparation ensures a consistency that would be impossible to achieve with traditional methods.', ex1_ko = '수비드 조리법으로 전통 방식으로는 불가능한 일관성을 달성해요.',
  ex2 = 'The fermentation chamber ensures a precision that would be impossible to achieve at room temperature.', ex2_ko = '발효 챔버로 상온에서는 불가능한 정밀도를 달성해요.',
  ex3 = 'The dehydrator ensures a texture that would be impossible to achieve with an oven.', ex3_ko = '디하이드레이터로 오븐으로는 불가능한 식감을 달성해요.',
  ex4 = 'The smoker ensures a depth of flavor that would be impossible to achieve with seasoning alone.', ex4_ko = '훈제 기기로 양념만으로는 불가능한 풍미의 깊이를 달성해요.',
  ex5 = 'The wood-fired oven ensures a char that would be impossible to achieve with a gas grill.', ex5_ko = '장작 오븐으로 가스 그릴로는 불가능한 그을음을 달성해요.'
WHERE id = 's_cafe_C1_07';

-- ══════════════════════════════════════
-- C2 (7 patterns)
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The malolactic fermentation gives this Chardonnay a buttery, almost creamy quality that beautifully complements the lobster bisque.', ex1_ko = '유산 발효가 이 샤르도네에 버터 같은 크리미한 품질을 부여해서 바닷가재 비스크와 완벽하게 어울려요.',
  ex2 = 'The malolactic fermentation gives this Burgundy a rounded mouthfeel that beautifully complements the roasted poultry.', ex2_ko = '유산 발효가 이 부르고뉴에 둥근 마우스필을 부여해서 구운 가금류와 완벽하게 어울려요.',
  ex3 = 'The barrel aging gives this Cabernet a tannic structure that beautifully complements the dry-aged ribeye.', ex3_ko = '배럴 숙성이 이 카베르네에 타닌 구조를 부여해서 드라이 에이지드 립아이와 완벽하게 어울려요.',
  ex4 = 'The skin contact gives this orange wine a textural grip that beautifully complements the cured fish.', ex4_ko = '스킨 컨택트가 이 오렌지 와인에 텍스처를 부여해서 절인 생선과 완벽하게 어울려요.',
  ex5 = 'The extended lees aging gives this Champagne a brioche-like richness that beautifully complements the truffle risotto.', ex5_ko = '오랜 효모 숙성이 이 샴페인에 브리오슈 같은 풍성함을 부여해서 트러플 리조토와 완벽하게 어울려요.'
WHERE id = 's_cafe_C2_01';

UPDATE sentences SET
  ex1 = 'The high tannin structure of this Barolo demands either a fatty red meat or a good decade of cellaring to soften its edges.', ex1_ko = '이 바롤로의 강한 타닌 구조는 기름진 적색육이나 10년의 셀러링을 필요로 해요.',
  ex2 = 'The high acidity of this Riesling demands either an oily fish dish or several years of bottle age to find its balance.', ex2_ko = '이 리슬링의 강한 산도는 기름진 생선 요리나 몇 년의 병 숙성을 거쳐야 균형을 찾아요.',
  ex3 = 'The intense smokiness of this mezcal demands either a charred protein or a careful dilution to reveal its layers.', ex3_ko = '이 메즈칼의 강한 훈연향은 그을린 단백질이나 신중한 희석을 통해 층위를 드러내요.',
  ex4 = 'The pronounced bitterness of this Negroni demands either a rich appetizer or significant aeration to mellow.', ex4_ko = '이 네그로니의 도드라진 쓴맛은 풍성한 애피타이저나 충분한 에어레이션이 필요해요.',
  ex5 = 'The bold spice of this Nebbiolo demands either game meat or another five years in bottle to integrate fully.', ex5_ko = '이 네비올로의 진한 스파이스는 사냥 고기나 추가 5년의 병 숙성을 통해 완전히 통합돼요.'
WHERE id = 's_cafe_C2_02';

UPDATE sentences SET
  ex1 = 'The organoleptic assessment reveals a wine of extraordinary complexity — layers of terroir expressing themselves with each successive sip.', ex1_ko = '관능 평가에서 놀라운 복잡성을 가진 와인이 드러나요. 한 모금씩 마실 때마다 테루아의 층위가 표현돼요.',
  ex2 = 'The organoleptic profile reveals a coffee of extraordinary depth — notes of bergamot and dark cocoa unfolding with each sip.', ex2_ko = '관능 프로파일에서 놀라운 깊이의 커피가 드러나요. 한 모금씩 마실 때마다 베르가못과 다크 코코아 향이 펼쳐져요.',
  ex3 = 'The organoleptic experience reveals a sake of extraordinary nuance — floral and umami notes weaving together with each successive sip.', ex3_ko = '관능적 경험에서 놀라운 뉘앙스의 사케가 드러나요. 한 모금씩 마실 때마다 꽃향과 감칠맛이 어우러져요.',
  ex4 = 'The organoleptic analysis reveals a whisky of extraordinary refinement — peat and honey notes harmonizing with each successive sip.', ex4_ko = '관능 분석에서 놀라운 세련됨을 가진 위스키가 드러나요. 한 모금씩 마실 때마다 피트와 꿀향이 조화를 이뤄요.',
  ex5 = 'The organoleptic study reveals a tea of extraordinary subtlety — minerality and stone fruit revealing themselves with each successive sip.', ex5_ko = '관능 연구에서 놀라운 섬세함을 가진 차가 드러나요. 한 모금씩 마실 때마다 미네랄과 석과 향이 드러나요.'
WHERE id = 's_cafe_C2_03';

UPDATE sentences SET
  ex1 = 'The appellation laws in Champagne strictly regulate the permitted varieties, yield per hectare, and minimum aging on lees.', ex1_ko = '샴페인의 원산지 명칭 법률은 허용 품종, 헥타르당 수확량, 효모 찌꺼기 위 최소 숙성 기간을 엄격히 규제해요.',
  ex2 = 'The appellation laws in Burgundy strictly regulate the permitted varieties, vineyard boundaries, and minimum alcohol content.', ex2_ko = '부르고뉴의 원산지 명칭 법률은 허용 품종, 포도밭 경계, 최소 알코올 도수를 엄격히 규제해요.',
  ex3 = 'The appellation laws in Rioja strictly regulate the aging categories, oak requirements, and bottle aging minimums.', ex3_ko = '리오하의 원산지 명칭 법률은 숙성 카테고리, 오크 요건, 병 숙성 최소 기간을 엄격히 규제해요.',
  ex4 = 'The appellation laws in Barolo strictly regulate the permitted grape, minimum aging period, and labeling standards.', ex4_ko = '바롤로의 원산지 명칭 법률은 허용 포도, 최소 숙성 기간, 라벨링 기준을 엄격히 규제해요.',
  ex5 = 'The appellation laws in Chablis strictly regulate the grape variety, vineyard zones, and harvest practices.', ex5_ko = '샤블리의 원산지 명칭 법률은 포도 품종, 포도밭 구역, 수확 관행을 엄격히 규제해요.'
WHERE id = 's_cafe_C2_04';

UPDATE sentences SET
  ex1 = 'The chef''s application of spherification transforms a classic ponzu into tiny caviar pearls that burst with umami on the palate.', ex1_ko = '셰프의 구형화 기법이 클래식 폰즈를 입안에서 감칠맛이 터지는 작은 캐비어 구슬로 변환시켜요.',
  ex2 = 'The chef''s application of foam transforms a classic broth into airy clouds that dissolve on the palate.', ex2_ko = '셰프의 폼 기법이 클래식 국물을 입안에서 녹는 공기 같은 구름으로 변환시켜요.',
  ex3 = 'The chef''s application of dehydration transforms ripe tomatoes into intense flavor crystals.', ex3_ko = '셰프의 디하이드레이션 기법이 잘 익은 토마토를 진한 풍미의 결정체로 변환시켜요.',
  ex4 = 'The chef''s application of liquid nitrogen transforms a fruit purée into instant sorbet at the table.', ex4_ko = '셰프의 액체 질소 기법이 과일 퓨레를 테이블에서 즉석 셔벗으로 변환시켜요.',
  ex5 = 'The chef''s application of smoking transforms simple butter into a savory accent for the bread.', ex5_ko = '셰프의 훈연 기법이 단순한 버터를 빵에 어울리는 감칠맛 악센트로 변환시켜요.'
WHERE id = 's_cafe_C2_05';

UPDATE sentences SET
  ex1 = 'What distinguishes a Grand Cru from a Premier Cru in Burgundy is ultimately a question of terroir specificity and the geological composition of the soil.', ex1_ko = '부르고뉴에서 그랑 크뤼와 프리미에 크뤼를 구별하는 것은 결국 테루아의 특수성과 토양의 지질학적 구성의 문제예요.',
  ex2 = 'What distinguishes a vintage Champagne from a non-vintage is ultimately a question of harvest exceptionality and the producer''s confidence in the year.', ex2_ko = '빈티지 샴페인과 논빈티지를 구별하는 것은 결국 수확의 탁월함과 생산자의 그 해에 대한 확신의 문제예요.',
  ex3 = 'What distinguishes a single-malt Scotch from a blend is ultimately a question of distillery character and aging cohesion.', ex3_ko = '싱글 몰트 스카치와 블렌드를 구별하는 것은 결국 증류소의 특성과 숙성의 일관성의 문제예요.',
  ex4 = 'What distinguishes a true Neapolitan pizza from imitations is ultimately a question of dough hydration and oven temperature.', ex4_ko = '진정한 나폴리 피자와 모방품을 구별하는 것은 결국 도우의 수분과 오븐 온도의 문제예요.',
  ex5 = 'What distinguishes a great sushi master from a competent one is ultimately a question of rice technique and ingredient curation.', ex5_ko = '훌륭한 스시 마스터와 능숙한 사람을 구별하는 것은 결국 밥짓는 기술과 재료 큐레이션의 문제예요.'
WHERE id = 's_cafe_C2_06';

UPDATE sentences SET
  ex1 = 'The biodynamic viticulture practiced here treats the entire estate as a self-sustaining organism, eschewing synthetic inputs in favor of astronomical planting calendars and herbal preparations.', ex1_ko = '여기서 시행하는 생명역동 포도 재배는 합성 투입물 대신 천문학적 식재 달력과 허브 제제를 선호하며 전체 부동산을 자급자족하는 유기체로 취급해요.',
  ex2 = 'The natural fermentation practiced here treats wild yeast as a partner, eschewing commercial inoculants in favor of indigenous microbial diversity.', ex2_ko = '여기서 시행하는 자연 발효는 상업 균주 대신 토착 미생물의 다양성을 선호하며 야생 효모를 동반자로 취급해요.',
  ex3 = 'The regenerative farming practiced here treats soil health as paramount, eschewing tillage in favor of cover crops and rotational grazing.', ex3_ko = '여기서 시행하는 재생 농업은 경운 대신 피복 작물과 윤환 방목을 선호하며 토양 건강을 최우선으로 취급해요.',
  ex4 = 'The zero-waste philosophy practiced here treats every offcut as an ingredient, eschewing disposal in favor of fermentation and preservation.', ex4_ko = '여기서 시행하는 제로 웨이스트 철학은 폐기 대신 발효와 보존을 선호하며 모든 자투리를 재료로 취급해요.',
  ex5 = 'The slow-food approach practiced here treats craftsmanship as essential, eschewing shortcuts in favor of multi-day curing and traditional techniques.', ex5_ko = '여기서 시행하는 슬로우 푸드 접근은 단축 대신 며칠에 걸친 큐어링과 전통 기법을 선호하며 장인 정신을 본질로 취급해요.'
WHERE id = 's_cafe_C2_07';
