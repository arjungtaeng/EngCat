-- ============================================================
-- COOKING (요리) — Collocations, Idioms, Nuances
-- 20 collocations + 20 idioms + 6 nuances = 46 entries
-- ============================================================

-- ============================================================
-- A. COLLOCATIONS (20 entries: 5 each at B1/B2/C1/C2)
-- ============================================================

-- ----- B1 (5 entries) -----
INSERT INTO collocations (id, verb, noun, en, ko, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, cefr, topic_id, priority, image_keyword) VALUES
('col_cooking_B1_01', 'chop', 'onions', 'chop onions', '양파를 다지다', 'cut', '''chop''은 칼로 잘게 토막내는 동작이에요. 단순한 ''cut''보다 요리 맥락에서 훨씬 자연스러워요.', 'Could you chop the onions for me?', '양파 좀 다져 줄래요?', 'I always cry when I chop onions.', '저는 양파를 다질 때마다 눈물이 나요.', 'B1', 'cooking', 1, 'chopping onions cutting board'),
('col_cooking_B1_02', 'boil', 'water', 'boil water', '물을 끓이다', 'heat', '''boil''은 100도까지 끓여서 기포가 올라오게 하는 거예요. ''heat water''는 단순히 데우는 느낌이라 차이가 있어요.', 'First, boil some water in a large pot.', '먼저 큰 냄비에 물을 끓이세요.', 'It takes about five minutes to boil water.', '물을 끓이는 데 5분 정도 걸려요.', 'B1', 'cooking', 1, 'boiling water pot stove'),
('col_cooking_B1_03', 'stir', 'the pot', 'stir the pot', '냄비를 젓다', 'mix', '냄비 안 재료를 숟가락으로 빙빙 돌리며 섞는 동작이에요. ''mix''보다 요리할 때 더 자연스러워요.', 'Please stir the pot every few minutes.', '몇 분마다 냄비를 저어 주세요.', 'He stirred the pot slowly with a wooden spoon.', '그는 나무 숟가락으로 천천히 냄비를 저었어요.', 'B1', 'cooking', 1, 'stirring pot wooden spoon'),
('col_cooking_B1_04', 'preheat', 'the oven', 'preheat the oven', '오븐을 예열하다', 'warm', '굽기 전에 오븐을 미리 데우는 필수 단계예요. ''warm''보다 ''preheat''이 요리 레시피의 표준 표현이에요.', 'Preheat the oven to 180 degrees.', '오븐을 180도로 예열하세요.', 'Don''t forget to preheat the oven first.', '오븐 먼저 예열하는 거 잊지 마세요.', 'B1', 'cooking', 1, 'oven preheat dial'),
('col_cooking_B1_05', 'add', 'salt', 'add salt', '소금을 넣다', 'put', '''add''는 요리에 재료를 ''넣어 더한다''는 표준 표현이에요. ''put salt''도 가능하지만 ''add''가 훨씬 자연스러워요.', 'Add a pinch of salt to the soup.', '수프에 소금을 조금만 넣으세요.', 'I usually add salt at the end.', '저는 보통 마지막에 소금을 넣어요.', 'B1', 'cooking', 1, 'adding salt soup')
ON CONFLICT (id) DO NOTHING;

-- ----- B2 (5 entries) -----
INSERT INTO collocations (id, verb, noun, en, ko, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, cefr, topic_id, priority, image_keyword) VALUES
('col_cooking_B2_01', 'season', 'to taste', 'season to taste', '입맛에 맞게 간하다', 'salt', '레시피 마지막에 자주 등장하는 표현이에요. 소금/후추 등으로 본인 입맛에 맞춰 간을 한다는 뜻이에요.', 'Season to taste with salt and pepper.', '소금과 후추로 입맛에 맞게 간하세요.', 'Always season to taste before serving.', '내기 전에 꼭 입맛에 맞춰 간을 보세요.', 'B2', 'cooking', 2, 'salt pepper seasoning dish'),
('col_cooking_B2_02', 'marinate', 'overnight', 'marinate overnight', '하룻밤 재워두다', 'soak', '고기나 생선을 양념에 ''재워서'' 맛이 배게 하는 거예요. ''soak''은 그냥 담그는 거라 요리에서는 ''marinate''가 정확해요.', 'Marinate the chicken overnight for the best flavor.', '닭고기를 하룻밤 재워야 맛이 제일 좋아요.', 'The beef needs to marinate overnight in soy sauce.', '소고기는 간장에 하룻밤 재워야 해요.', 'B2', 'cooking', 2, 'marinated meat bowl fridge'),
('col_cooking_B2_03', 'drain', 'the pasta', 'drain the pasta', '파스타 물을 빼다', 'remove', '삶은 파스타에서 물을 따라내는 동작이에요. 체(콜랜더)에 부어 물을 빼는 표준 표현이에요.', 'Drain the pasta but save a cup of water.', '파스타 물을 빼되 한 컵은 남겨두세요.', 'I always drain the pasta in the sink.', '저는 항상 싱크대에서 파스타 물을 빼요.', 'B2', 'cooking', 2, 'draining pasta colander'),
('col_cooking_B2_04', 'whisk', 'eggs', 'whisk eggs', '계란을 휘젓다', 'beat', '거품기로 빠르게 휘저어 공기를 넣는 동작이에요. ''beat eggs''도 가능하지만 ''whisk''가 도구를 강조해요.', 'Whisk the eggs until light and fluffy.', '계란이 폭신해질 때까지 휘저으세요.', 'She whisked the eggs vigorously.', '그녀는 계란을 힘차게 휘저었어요.', 'B2', 'cooking', 2, 'whisking eggs bowl'),
('col_cooking_B2_05', 'sauté', 'vegetables', 'sauté vegetables', '채소를 볶다', 'cook', '소량의 기름에 센 불로 빠르게 볶는 거예요. 프랑스어에서 온 요리 전문 용어로 ''cook''보다 정확해요.', 'Sauté the vegetables until tender.', '채소가 부드러워질 때까지 볶으세요.', 'He sautéed the mushrooms in butter.', '그는 버터에 버섯을 볶았어요.', 'B2', 'cooking', 2, 'sauteing vegetables pan')
ON CONFLICT (id) DO NOTHING;

-- ----- C1 (5 entries) -----
INSERT INTO collocations (id, verb, noun, en, ko, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, cefr, topic_id, priority, image_keyword) VALUES
('col_cooking_C1_01', 'render', 'fat', 'render fat', '기름을 녹여내다', 'melt', '베이컨이나 삼겹살 같은 고기에서 지방을 천천히 녹여 추출하는 요리 전문 표현이에요. ''melt''보다 훨씬 전문적이에요.', 'Render the bacon fat over low heat.', '약불에 베이컨 기름을 녹여내세요.', 'Chefs render the duck fat for extra flavor.', '셰프들은 풍미를 더하려고 오리 기름을 녹여내요.', 'C1', 'cooking', 2, 'bacon fat rendering pan'),
('col_cooking_C1_02', 'reduce', 'a sauce', 'reduce a sauce', '소스를 졸이다', 'thicken', '소스를 약불에 끓여서 수분을 날려 농축시키는 요리 기법이에요. ''thicken''은 결과만 말하지만 ''reduce''는 과정을 정확히 표현해요.', 'Reduce the sauce by half before serving.', '내기 전에 소스를 반으로 졸이세요.', 'The wine sauce needs to reduce for 20 minutes.', '와인 소스는 20분간 졸여야 해요.', 'C1', 'cooking', 2, 'reducing sauce pan stove'),
('col_cooking_C1_03', 'garnish', 'a dish', 'garnish a dish', '요리를 장식하다', 'decorate', '허브나 채소로 음식 위에 마무리 장식을 얹는 요리 표준 표현이에요. ''decorate''는 케이크에나 쓰고 요리에는 ''garnish''가 맞아요.', 'Garnish the dish with fresh parsley.', '신선한 파슬리로 요리를 장식하세요.', 'A good chef always garnishes the plate carefully.', '훌륭한 셰프는 항상 접시를 정성껏 장식해요.', 'C1', 'cooking', 2, 'garnished plate parsley dish'),
('col_cooking_C1_04', 'infuse', 'with flavor', 'infuse with flavor', '풍미를 우려내다', 'add', '오일이나 액체에 허브/향신료의 맛을 천천히 우려내는 격조 있는 표현이에요. ''add''보다 훨씬 세련되게 들려요.', 'Infuse the oil with garlic and herbs.', '오일에 마늘과 허브의 풍미를 우려내세요.', 'Slowly infuse the milk with vanilla.', '우유에 바닐라 향을 천천히 우려내세요.', 'C1', 'cooking', 2, 'infused oil herbs jar'),
('col_cooking_C1_05', 'carve', 'a roast', 'carve a roast', '구이를 썰다', 'cut', '큰 덩어리 고기를 식탁에서 우아하게 얇게 썰어내는 동작이에요. ''cut''은 너무 일반적이라 격식 자리에는 ''carve''가 정확해요.', 'Father always carves the roast at Christmas.', '아버지는 항상 크리스마스에 구이를 썰어요.', 'He carved the roast with a sharp knife.', '그는 날카로운 칼로 구이를 썰었어요.', 'C1', 'cooking', 2, 'carving roast turkey knife')
ON CONFLICT (id) DO NOTHING;

-- ----- C2 (5 entries) -----
INSERT INTO collocations (id, verb, noun, en, ko, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, cefr, topic_id, priority, image_keyword) VALUES
('col_cooking_C2_01', 'emulsify', 'a vinaigrette', 'emulsify a vinaigrette', '비네그레트를 유화시키다', 'mix', '서로 섞이지 않는 기름과 식초를 강제로 결합시키는 화학적 요리 기법이에요. ''mix''와 차원이 다른 전문 용어예요.', 'Whisk vigorously to emulsify the vinaigrette.', '힘차게 저어 비네그레트를 유화시키세요.', 'A good dressing must be properly emulsified.', '좋은 드레싱은 제대로 유화되어야 해요.', 'C2', 'cooking', 3, 'emulsified vinaigrette dressing jar'),
('col_cooking_C2_02', 'caramelize', 'sugar', 'caramelize sugar', '설탕을 캐러멜화하다', 'burn', '설탕을 천천히 가열해 갈색으로 변하게 하는 정밀한 요리 기법이에요. ''burn''은 실패이고 ''caramelize''는 완벽한 결과를 뜻해요.', 'Slowly caramelize the sugar until amber.', '설탕이 호박색이 될 때까지 천천히 캐러멜화하세요.', 'Caramelizing onions takes at least 30 minutes.', '양파를 캐러멜화하려면 최소 30분은 걸려요.', 'C2', 'cooking', 3, 'caramelized sugar golden pan'),
('col_cooking_C2_03', 'macerate', 'berries', 'macerate berries', '베리를 절이다', 'soak', '베리에 설탕이나 술을 뿌려 즙이 우러나오게 하는 디저트 기법이에요. ''soak''보다 훨씬 전문적인 페이스트리 용어예요.', 'Macerate the strawberries in sugar for an hour.', '딸기를 설탕에 한 시간 절이세요.', 'Macerated berries make a wonderful dessert topping.', '절인 베리는 훌륭한 디저트 토핑이 돼요.', 'C2', 'cooking', 3, 'macerated strawberries sugar bowl'),
('col_cooking_C2_04', 'brine', 'poultry', 'brine poultry', '가금류를 염지하다', 'salt', '소금물에 닭이나 칠면조를 담가 부드럽고 촉촉하게 만드는 전문 기법이에요. ''salt''와는 차원이 다른 정밀한 표현이에요.', 'Brine the turkey for 24 hours before roasting.', '칠면조를 굽기 전 24시간 동안 염지하세요.', 'Brining poultry guarantees juicy meat.', '가금류를 염지하면 육즙이 풍부해져요.', 'C2', 'cooking', 3, 'brining turkey saltwater container'),
('col_cooking_C2_05', 'deconstruct', 'a classic', 'deconstruct a classic', '클래식 요리를 해체하다', 'remake', '전통 요리를 구성 요소별로 분해해 새로운 형태로 재구성하는 모더니즘 요리 철학이에요. ''remake''는 너무 단순해요.', 'The chef deconstructed a classic tiramisu.', '셰프는 클래식 티라미수를 해체해서 재구성했어요.', 'Deconstructed dishes are popular in fine dining.', '해체 요리는 파인 다이닝에서 인기예요.', 'C2', 'cooking', 3, 'deconstructed dessert modern plate')
ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- B. IDIOMS (20 entries: 5 each at B1/B2/C1/C2)
-- ============================================================

-- ----- B1 (5 entries) -----
INSERT INTO idioms (id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('idm_cooking_B1_01', 'piece of cake', '식은 죽 먹기', '케이크 한 조각', '아주 쉬운 일을 표현할 때 쓰는 가장 흔한 표현이에요. 한국어 ''식은 죽 먹기''와 거의 같은 뉘앙스예요.', 'The test was a piece of cake!', '시험은 식은 죽 먹기였어요!', 'Driving here was a piece of cake.', '여기까지 운전은 정말 쉬웠어요.', NULL, NULL, 'B1', 'cooking', 1, 'easy cake slice plate', 1),
('idm_cooking_B1_02', 'in hot water', '곤란한 상황에 빠진', '뜨거운 물 속에', '문제나 곤경에 빠진 상태를 표현해요. ''in trouble''과 비슷하지만 좀 더 생생한 표현이에요.', 'He''s in hot water with his boss.', '그는 상사한테 찍혔어요.', 'I''ll be in hot water if I''m late again.', '또 늦으면 진짜 곤란해질 거예요.', NULL, NULL, 'B1', 'cooking', 1, 'boiling water trouble', 2),
('idm_cooking_B1_03', 'cool as a cucumber', '매우 침착한', '오이처럼 차가운', '긴장되는 상황에서도 흔들리지 않고 침착한 사람을 묘사해요. 오이가 차가운 느낌에서 유래했어요.', 'She stayed cool as a cucumber during the interview.', '그녀는 면접 내내 매우 침착했어요.', 'He''s cool as a cucumber under pressure.', '그는 압박 속에서도 침착해요.', NULL, NULL, 'B1', 'cooking', 1, 'cucumber calm relaxed', 3),
('idm_cooking_B1_04', 'bring home the bacon', '돈을 벌어오다', '베이컨을 집에 가져오다', '가족을 위해 생계를 책임진다는 뜻이에요. ''make money''보다 따뜻하고 정겨운 뉘앙스예요.', 'My mom brings home the bacon in our family.', '저희 집은 엄마가 가장이에요.', 'He works two jobs to bring home the bacon.', '그는 생계를 위해 두 가지 일을 해요.', NULL, NULL, 'B1', 'cooking', 1, 'family income bacon table', 4),
('idm_cooking_B1_05', 'spill the beans', '비밀을 누설하다', '콩을 쏟다', '비밀을 무심코 또는 일부러 말해버릴 때 써요. ''tell a secret''보다 생동감 있고 친근해요.', 'Don''t spill the beans about the surprise party!', '깜짝 파티 비밀 누설하지 마세요!', 'She finally spilled the beans about her engagement.', '그녀가 드디어 약혼 비밀을 말했어요.', NULL, NULL, 'B1', 'cooking', 1, 'spilled beans secret', 5)
ON CONFLICT (id) DO NOTHING;

-- ----- B2 (5 entries) -----
INSERT INTO idioms (id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('idm_cooking_B2_01', 'too many cooks spoil the broth', '사공이 많으면 배가 산으로 간다', '요리사가 너무 많으면 국을 망친다', '한 가지 일에 사람이 너무 많이 관여하면 오히려 망친다는 속담이에요. 한국 속담과 거의 같은 뜻이에요.', 'Too many cooks spoil the broth — let me handle it.', '사공이 많으면 배가 산으로 가요, 제가 처리할게요.', 'The project failed because too many cooks spoiled the broth.', '관여하는 사람이 너무 많아 프로젝트가 망했어요.', NULL, NULL, 'B2', 'cooking', 2, 'crowded kitchen cooks', 1),
('idm_cooking_B2_02', 'have your cake and eat it too', '두 마리 토끼를 잡다', '케이크를 가지고 그리고 먹기도 한다', '양립할 수 없는 두 가지를 모두 가지려 한다는 뜻이에요. 주로 부정적인 비판의 뉘앙스로 써요.', 'You can''t have your cake and eat it too.', '두 마리 토끼를 다 잡을 수는 없어요.', 'He wants to have his cake and eat it too.', '그는 욕심이 너무 많아요.', NULL, NULL, 'B2', 'cooking', 2, 'cake decision choice', 2),
('idm_cooking_B2_03', 'the icing on the cake', '금상첨화', '케이크 위의 아이싱', '이미 좋은 일에 더 좋은 일이 더해질 때 써요. 한국어 ''금상첨화''와 같은 뉘앙스예요.', 'Getting a bonus was the icing on the cake.', '보너스까지 받으니 금상첨화였어요.', 'The view was the icing on the cake.', '경치까지 좋아서 더할 나위가 없었어요.', NULL, NULL, 'B2', 'cooking', 2, 'iced cake celebration', 3),
('idm_cooking_B2_04', 'out of the frying pan into the fire', '갈수록 태산', '프라이팬에서 불 속으로', '한 어려움에서 빠져나왔는데 더 큰 어려움에 빠지는 상황이에요. 한국어 ''갈수록 태산''과 똑같아요.', 'Changing jobs was out of the frying pan into the fire.', '이직했더니 갈수록 태산이에요.', 'He went out of the frying pan into the fire.', '그는 상황이 갈수록 나빠졌어요.', NULL, NULL, 'B2', 'cooking', 2, 'frying pan fire flame', 4),
('idm_cooking_B2_05', 'egg someone on', '누군가를 부추기다', '누군가에게 계란을 던지다', '다른 사람에게 (대개 안 좋은) 행동을 하도록 부추기거나 자극하는 뜻이에요. ''encourage''와 달리 부정적 어감이에요.', 'His friends egged him on to fight.', '친구들이 그에게 싸우라고 부추겼어요.', 'Don''t egg her on — she''s already angry.', '걔를 더 부추기지 마세요, 이미 화났어요.', NULL, NULL, 'B2', 'cooking', 2, 'egging on encouragement', 5)
ON CONFLICT (id) DO NOTHING;

-- ----- C1 (5 entries) -----
INSERT INTO idioms (id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('idm_cooking_C1_01', 'a recipe for disaster', '재앙을 부르는 일', '재앙의 레시피', '문제나 실패가 뻔히 보이는 상황을 표현해요. 비유적으로 ''망할 게 뻔한 상황''이라는 강한 뉘앙스예요.', 'Driving while tired is a recipe for disaster.', '졸음운전은 재앙을 부르는 일이에요.', 'Mixing those two chemicals is a recipe for disaster.', '그 두 화학물질을 섞는 건 위험천만해요.', NULL, NULL, 'C1', 'cooking', 2, 'disaster recipe danger', 1),
('idm_cooking_C1_02', 'cook the books', '회계 장부를 조작하다', '책을 요리하다', '회사의 재무 기록을 부정하게 조작하는 범죄적 행위를 뜻해요. 비즈니스/뉴스 맥락에서 자주 등장해요.', 'The CEO was caught cooking the books.', 'CEO가 장부 조작으로 적발됐어요.', 'They cooked the books to hide losses.', '그들은 손실을 숨기려고 장부를 조작했어요.', NULL, NULL, 'C1', 'cooking', 2, 'fraud accounting books', 2),
('idm_cooking_C1_03', 'stir up trouble', '문제를 일으키다', '문제를 휘젓다', '평화로운 상황에 일부러 갈등이나 문제를 만든다는 뜻이에요. ''cause trouble''보다 의도성이 강한 표현이에요.', 'He always stirs up trouble at meetings.', '그는 회의에서 늘 문제를 일으켜요.', 'Don''t stir up trouble between them.', '그들 사이에 분란 만들지 마세요.', NULL, NULL, 'C1', 'cooking', 2, 'stirring trouble conflict', 3),
('idm_cooking_C1_04', 'in a stew', '걱정으로 안절부절못하는', '스튜 속에', '걱정과 불안으로 마음이 끓는 듯한 상태를 묘사해요. 스튜가 부글부글 끓는 이미지에서 왔어요.', 'She''s been in a stew about the results.', '그녀는 결과 때문에 안절부절못하고 있어요.', 'Don''t get in a stew over it.', '그것 때문에 너무 걱정하지 마세요.', NULL, NULL, 'C1', 'cooking', 2, 'worried stew anxious', 4),
('idm_cooking_C1_05', 'half-baked', '설익은, 어설픈', '반쯤 구워진', '제대로 준비되지 않은 어설픈 아이디어나 계획을 비판할 때 써요. 빵이 덜 익은 이미지에서 왔어요.', 'That''s a half-baked idea.', '그건 어설픈 아이디어예요.', 'Don''t go with a half-baked plan.', '설익은 계획으로 진행하지 마세요.', NULL, NULL, 'C1', 'cooking', 2, 'half baked bread idea', 5)
ON CONFLICT (id) DO NOTHING;

-- ----- C2 (5 entries) -----
INSERT INTO idioms (id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('idm_cooking_C2_01', 'the proof of the pudding is in the eating', '백문이 불여일견', '푸딩의 증명은 먹어보는 데 있다', '말로는 부족하고 직접 해봐야 진가를 안다는 격언이에요. 영어권 고전 속담으로 격식 있는 글에 어울려요.', 'Try it yourself — the proof of the pudding is in the eating.', '직접 해보세요, 백문이 불여일견이에요.', 'The proof of the pudding is in the eating, so test the product.', '진가는 써봐야 아니까 제품을 테스트해 보세요.', NULL, NULL, 'C2', 'cooking', 3, 'pudding proof tasting', 1),
('idm_cooking_C2_02', 'you cannot make an omelette without breaking eggs', '희생 없이 얻을 수 있는 건 없다', '계란을 깨지 않고 오믈렛을 만들 순 없다', '큰 성과를 얻으려면 어느 정도의 희생이나 어려움은 감수해야 한다는 격언이에요. 정치/비즈니스 맥락에 자주 등장해요.', 'Reform is hard — you can''t make an omelette without breaking eggs.', '개혁은 어려워요, 희생 없이는 아무것도 못 얻어요.', 'You can''t make an omelette without breaking eggs.', '얻는 게 있으면 잃는 것도 있는 법이에요.', NULL, NULL, 'C2', 'cooking', 3, 'broken eggs omelette', 2),
('idm_cooking_C2_03', 'have bigger fish to fry', '더 중요한 일이 있다', '튀길 더 큰 생선이 있다', '지금 일보다 우선순위가 높은 일이 있다는 뜻이에요. 회의나 협상에서 부드럽게 거절할 때 자주 써요.', 'I''ve got bigger fish to fry right now.', '저 지금 더 중요한 일이 있어요.', 'Don''t worry about that — we have bigger fish to fry.', '그건 신경 쓰지 마세요, 더 큰 일이 있어요.', NULL, NULL, 'C2', 'cooking', 3, 'big fish frying priority', 3),
('idm_cooking_C2_04', 'from soup to nuts', '처음부터 끝까지 완전히', '수프에서 견과류까지', '코스 요리의 시작(수프)부터 끝(견과류)까지 전체를 의미해요. ''완전히, 빠짐없이''라는 격식 있는 표현이에요.', 'He planned the wedding from soup to nuts.', '그는 결혼식을 처음부터 끝까지 다 계획했어요.', 'We covered the topic from soup to nuts.', '우리는 그 주제를 완전히 다 다뤘어요.', NULL, NULL, 'C2', 'cooking', 3, 'full course meal soup nuts', 4),
('idm_cooking_C2_05', 'the gravy train', '쉽게 돈 버는 자리', '그레이비 기차', '별다른 노력 없이 큰돈을 버는 자리나 상황을 의미해요. 종종 부정적이거나 비판적인 뉘앙스로 써요.', 'He''s been riding the gravy train for years.', '그는 몇 년째 꿀빠는 자리에 있어요.', 'The gravy train finally ended.', '꿀자리가 드디어 끝났어요.', NULL, NULL, 'C2', 'cooking', 3, 'gravy train money easy', 5)
ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- C. NUANCES (6 entries)
-- ============================================================

INSERT INTO nuances (id, word_a, word_b, word_c, ko_a, ko_b, ko_c, comparison, ex_a, ex_b, ex_c, ex4, ex4_ko, ex5, ex5_ko, tip, cefr, topic_id, priority, image_keyword) VALUES
('nuc_cooking_01', 'cook', 'bake', 'fry', '요리하다(일반)', '오븐에 굽다', '기름에 튀기다/볶다', '''cook''은 요리 전반을 뜻하는 가장 일반적인 단어예요. ''bake''는 오븐에서 마른 열로 굽는 것(빵·케이크·쿠키), ''fry''는 기름에 튀기거나 볶는 것(계란·치킨·채소)을 가리켜요.', 'I cook dinner every night.', 'She bakes bread on weekends.', 'He fries eggs for breakfast.', NULL, NULL, NULL, NULL, '요리 방법을 정확히 말하고 싶을 땐 ''cook'' 대신 ''bake''나 ''fry''로 구체화하세요. 한국어 ''굽다''와 ''튀기다''의 구분과 비슷해요.', 'B1', 'cooking', 1, 'cooking baking frying methods'),
('nuc_cooking_02', 'taste', 'flavor', 'savor', '맛(느낌)', '풍미(특징)', '음미하다(동사)', '''taste''는 혀로 느끼는 ''맛'' 자체예요. ''flavor''는 그 음식 고유의 ''풍미·특징''을 뜻하고, ''savor''는 동사로 ''천천히 음미하다''라는 의미예요.', 'The soup has a salty taste.', 'This wine has a fruity flavor.', 'I savor every bite of dessert.', NULL, NULL, NULL, NULL, '''taste''는 일반적인 맛, ''flavor''는 그 요리만의 개성을, ''savor''는 ''즐겨 음미한다''는 동작을 나타내요. 한국어 ''맛''을 어떻게 풀어 쓸지 결정하는 데 도움이 돼요.', 'B2', 'cooking', 2, 'tasting wine flavor savor'),
('nuc_cooking_03', 'boil', 'simmer', NULL, '팔팔 끓이다', '약하게 끓이다', NULL, '''boil''은 100도에서 큰 기포가 올라오게 ''팔팔'' 끓이는 거예요. ''simmer''는 그보다 약한 불에 보글보글 끓이는 거예요. 요리 결과가 완전히 달라져요.', 'Boil the water for pasta.', 'Simmer the sauce for 30 minutes.', NULL, NULL, NULL, NULL, NULL, '레시피에서 ''bring to a boil, then simmer''(끓인 다음 약불로 줄여서 보글보글)는 가장 흔한 지시예요. 둘을 구분하면 요리 실력이 올라가요.', 'B2', 'cooking', 2, 'boiling simmering pot'),
('nuc_cooking_04', 'slice', 'chop', 'dice', '얇게 썰다', '잘게 다지다', '깍둑썰기 하다', '''slice''는 ''얇은 조각''으로 써는 것(빵·고기·치즈), ''chop''은 ''잘게 다지는'' 것(양파·마늘·허브), ''dice''는 ''작은 정육면체''로 깍둑썰기하는 것(감자·당근)을 뜻해요.', 'Slice the bread thinly.', 'Chop the garlic finely.', 'Dice the carrots into small cubes.', NULL, NULL, NULL, NULL, '레시피에서 자르는 방식이 결과를 크게 좌우해요. 한국어 ''썰다''만 쓰지 말고 영어로는 형태에 맞춰 구분해서 표현하세요.', 'C1', 'cooking', 2, 'slice chop dice cutting'),
('nuc_cooking_05', 'spicy', 'hot', 'pungent', '향신료가 풍부한', '얼얼하게 매운', '톡 쏘는', '''spicy''는 향신료(허브·후추)가 풍부해 ''풍미가 강한'' 느낌이에요. ''hot''은 고추처럼 ''얼얼하게 매운'' 정도가 강한 매움이고, ''pungent''는 마늘·겨자처럼 ''톡 쏘는 자극적인'' 향과 맛이에요.', 'Indian food is often spicy.', 'This curry is too hot for me.', 'Mustard has a pungent taste.', NULL, NULL, NULL, NULL, '한국어 ''맵다''는 영어에서 세 단어로 나뉘어요. 단순히 매운 정도가 강할 땐 ''hot'', 향신료가 풍부하면 ''spicy'', 톡 쏘는 자극이면 ''pungent''를 골라 쓰세요.', 'C1', 'cooking', 2, 'spicy chili pungent mustard'),
('nuc_cooking_06', 'tender', 'succulent', 'juicy', '연한', '즙이 풍부하고 풍미가 깊은', '육즙이 많은', '''tender''는 부드럽게 잘 씹히는 ''식감''이에요. ''juicy''는 ''육즙''이 많아 촉촉한 느낌이고, ''succulent''는 ''즙이 풍부하면서 풍미까지 깊은'' 격조 있는 표현으로 고급 요리 평론에 자주 써요.', 'The steak was incredibly tender.', 'The peaches were succulent and sweet.', 'This burger is so juicy.', NULL, NULL, NULL, NULL, '''tender''는 식감 중심, ''juicy''는 수분 중심, ''succulent''는 둘 다에 풍미까지 더한 최상급 표현이에요. 음식 평론을 쓸 땐 ''succulent''로 격을 높이세요.', 'C2', 'cooking', 3, 'tender succulent juicy meat')
ON CONFLICT (id) DO NOTHING;
