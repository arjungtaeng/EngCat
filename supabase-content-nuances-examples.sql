-- EngCat Nuances — ex4/ex5 backfill (hand-written)
-- 299 rows × 2 general example sentences each (en + ko)
-- Style: natural B1-B2 English using one or more of the compared words
-- Run once in Supabase SQL Editor

-- ══════════════════════════════════════
-- GREETING
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'It''s lovely to meet you in person after so many emails.', ex4_ko = '그렇게 많은 이메일을 주고받은 후 직접 만나뵙게 되어 반가워요.', ex5 = 'I hope to see you again at the next conference.', ex5_ko = '다음 컨퍼런스에서 다시 뵙기를 바라요.' WHERE id = 'nuc_greeting_01';
UPDATE nuances SET ex4 = 'She told us a fascinating story over dinner.', ex4_ko = '그녀는 저녁 식사 중에 흥미로운 이야기를 들려줬어요.', ex5 = 'Could you say that one more time, please?', ex5_ko = '한 번 더 말씀해 주시겠어요?' WHERE id = 'nuc_greeting_02';
UPDATE nuances SET ex4 = 'I''d like to speak to someone in the finance department.', ex4_ko = '재무부서에 계신 분과 통화하고 싶어요.', ex5 = 'We talked for hours about our weekend plans.', ex5_ko = '우리는 주말 계획에 대해 몇 시간 동안 이야기했어요.' WHERE id = 'nuc_greeting_03';
UPDATE nuances SET ex4 = 'The teacher greeted every student by name.', ex4_ko = '선생님은 모든 학생을 이름으로 인사했어요.', ex5 = 'They welcomed us with warm hugs at the airport.', ex5_ko = '그들은 공항에서 따뜻한 포옹으로 우리를 환영했어요.' WHERE id = 'nuc_greeting_04';
UPDATE nuances SET ex4 = 'May I introduce you to our project manager?', ex4_ko = '저희 프로젝트 매니저를 소개해 드릴게요.', ex5 = 'She presented the award to last year''s winner.', ex5_ko = '그녀는 작년 수상자에게 상을 수여했어요.' WHERE id = 'nuc_greeting_05';
UPDATE nuances SET ex4 = 'They said a quiet farewell at the airport gate.', ex4_ko = '그들은 공항 게이트에서 조용한 작별 인사를 나눴어요.', ex5 = 'Goodbye for now — see you next week!', ex5_ko = '오늘은 안녕히 가세요 — 다음 주에 봐요!' WHERE id = 'nuc_greeting_06';
UPDATE nuances SET ex4 = 'I have a few acquaintances in the neighborhood.', ex4_ko = '저는 동네에 지인들이 몇 명 있어요.', ex5 = 'A true friend listens without judging.', ex5_ko = '진정한 친구는 판단하지 않고 들어줘요.' WHERE id = 'nuc_greeting_07';
UPDATE nuances SET ex4 = 'The street felt familiar even after twenty years away.', ex4_ko = '20년 떠나 있었는데도 그 거리는 친숙하게 느껴졌어요.', ex5 = 'They share an intimate bond after going through that together.', ex5_ko = '그 일을 함께 겪은 후 그들은 친밀한 유대를 나눠요.' WHERE id = 'nuc_greeting_08';
UPDATE nuances SET ex4 = 'The dinner was formal and required a black tie.', ex4_ko = '그 저녁 식사는 격식 있고 정장이 필요했어요.', ex5 = 'She''s always polite, even when she disagrees.', ex5_ko = '그녀는 의견이 다를 때도 항상 정중해요.' WHERE id = 'nuc_greeting_09';
UPDATE nuances SET ex4 = 'We chatted briefly in the lobby before the meeting.', ex4_ko = '회의 전에 우리는 로비에서 잠깐 잡담을 나눴어요.', ex5 = 'They conversed politely throughout the dinner.', ex5_ko = '그들은 저녁 식사 내내 정중하게 대화했어요.' WHERE id = 'nuc_greeting_10';
UPDATE nuances SET ex4 = 'In formal letters, please address the recipient as "Dear Madam."', ex4_ko = '공식 편지에서는 수신자를 "Dear Madam"이라고 호칭하세요.', ex5 = 'Everyone just calls him by his first name at the office.', ex5_ko = '사무실에서 모두가 그를 이름으로 불러요.' WHERE id = 'nuc_greeting_11';
UPDATE nuances SET ex4 = 'The CEO gave a cordial response to the journalist''s questions.', ex4_ko = 'CEO는 기자의 질문에 정중하고 친절하게 답했어요.', ex5 = 'Her smile was so warm that it instantly relaxed everyone.', ex5_ko = '그녀의 미소가 너무 따뜻해서 즉시 모두를 편안하게 했어요.' WHERE id = 'nuc_greeting_12';
UPDATE nuances SET ex4 = 'The salutation in formal emails matters more than most people think.', ex4_ko = '공식 이메일의 인사말은 사람들이 생각하는 것보다 더 중요해요.', ex5 = 'A simple greeting can change someone''s entire day.', ex5_ko = '간단한 인사가 누군가의 하루를 완전히 바꿀 수 있어요.' WHERE id = 'nuc_greeting_13';

-- ══════════════════════════════════════
-- EMOTION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I''m so glad you decided to join us tonight.', ex4_ko = '오늘 밤 함께해 주셔서 정말 기뻐요.', ex5 = 'After years of stress, she finally feels content with her life.', ex5_ko = '몇 년간의 스트레스 끝에 그녀는 마침내 자기 삶에 만족해요.' WHERE id = 'nuc_emotion_01';
UPDATE nuances SET ex4 = 'He was sad to leave his childhood home behind.', ex4_ko = '그는 어린 시절의 집을 떠나는 것이 슬펐어요.', ex5 = 'She was upset to find out she wasn''t invited.', ex5_ko = '그녀는 자기가 초대받지 못했다는 걸 알고 속상했어요.' WHERE id = 'nuc_emotion_02';
UPDATE nuances SET ex4 = 'I get annoyed when people interrupt during meetings.', ex4_ko = '저는 회의 중에 사람들이 말을 끊으면 짜증이 나요.', ex5 = 'He was furious about the unfair decision.', ex5_ko = '그는 불공정한 결정에 격노했어요.' WHERE id = 'nuc_emotion_03';
UPDATE nuances SET ex4 = 'I''m a little scared of presenting in front of so many people.', ex4_ko = '저는 그렇게 많은 사람 앞에서 발표하는 게 조금 무서워요.', ex5 = 'She was terrified during the turbulence on the flight.', ex5_ko = '그녀는 비행기 난기류 동안 공포에 질렸어요.' WHERE id = 'nuc_emotion_04';
UPDATE nuances SET ex4 = 'The kids were excited to open their birthday gifts.', ex4_ko = '아이들은 생일 선물을 열어보는 것에 신이 났어요.', ex5 = 'He''s enthusiastic about cooking and learns a new recipe every week.', ex5_ko = '그는 요리에 열정적이어서 매주 새 요리법을 배워요.' WHERE id = 'nuc_emotion_05';
UPDATE nuances SET ex4 = 'I felt embarrassed when I tripped in front of everyone.', ex4_ko = '저는 모두 앞에서 넘어졌을 때 부끄러웠어요.', ex5 = 'He was ashamed of the way he had spoken to her.', ex5_ko = '그는 그녀에게 말한 방식이 부끄러웠어요.' WHERE id = 'nuc_emotion_06';
UPDATE nuances SET ex4 = 'We''re worried that the train might be cancelled.', ex4_ko = '우리는 기차가 취소될까 봐 걱정해요.', ex5 = 'She felt anxious before her first day at the new job.', ex5_ko = '그녀는 새 직장 첫날 전에 불안했어요.' WHERE id = 'nuc_emotion_07';
UPDATE nuances SET ex4 = 'He felt lonely on holidays when his family was far away.', ex4_ko = '그는 가족이 멀리 있는 휴일에 외로움을 느꼈어요.', ex5 = 'She prefers to walk alone in the morning.', ex5_ko = '그녀는 아침에 혼자 걷는 걸 선호해요.' WHERE id = 'nuc_emotion_08';
UPDATE nuances SET ex4 = 'He''s jealous of the attention his sister gets.', ex4_ko = '그는 누나가 받는 관심을 질투해요.', ex5 = 'I''m envious of how organized her closet is.', ex5_ko = '저는 그녀의 옷장이 얼마나 정리되어 있는지 부러워요.' WHERE id = 'nuc_emotion_09';
UPDATE nuances SET ex4 = 'We were disappointed by the slow service at the restaurant.', ex4_ko = '우리는 식당의 느린 서비스에 실망했어요.', ex5 = 'He felt discouraged but kept practicing every day.', ex5_ko = '그는 낙담했지만 매일 연습을 계속했어요.' WHERE id = 'nuc_emotion_10';
UPDATE nuances SET ex4 = 'We received many messages of sympathy after the loss.', ex4_ko = '상실 후 우리는 많은 동정의 메시지를 받았어요.', ex5 = 'Empathy helps us truly understand other people''s experiences.', ex5_ko = '공감은 우리가 다른 사람의 경험을 진정으로 이해하는 데 도움이 돼요.' WHERE id = 'nuc_emotion_11';
UPDATE nuances SET ex4 = 'There was a quiet melancholy in the old photograph.', ex4_ko = '오래된 사진 속에 조용한 우울함이 있었어요.', ex5 = 'The community shared in his sorrow at the funeral.', ex5_ko = '지역사회는 장례식에서 그의 슬픔을 함께했어요.' WHERE id = 'nuc_emotion_12';
UPDATE nuances SET ex4 = 'She was elated when she received the acceptance letter.', ex4_ko = '그녀는 합격 통지서를 받았을 때 들뜬 기분이었어요.', ex5 = 'He felt euphoric after crossing the marathon finish line.', ex5_ko = '그는 마라톤 결승선을 넘은 후 황홀한 기분을 느꼈어요.' WHERE id = 'nuc_emotion_13';

-- ══════════════════════════════════════
-- WEATHER
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'It looks like it''s going to rain all weekend.', ex4_ko = '주말 내내 비가 올 것 같아요.', ex5 = 'A light drizzle is falling outside the window.', ex5_ko = '창문 밖에는 가벼운 이슬비가 내리고 있어요.' WHERE id = 'nuc_weather_01';
UPDATE nuances SET ex4 = 'A cool breeze made the afternoon perfect for a picnic.', ex4_ko = '시원한 산들바람이 오후를 소풍하기에 완벽하게 만들었어요.', ex5 = 'A strong wind blew dust across the road.', ex5_ko = '강한 바람이 도로 너머로 먼지를 날렸어요.' WHERE id = 'nuc_weather_02';
UPDATE nuances SET ex4 = 'It''s a bit cloudy, but I think the sun will come out.', ex4_ko = '약간 흐리지만 해가 나올 것 같아요.', ex5 = 'The morning was overcast and cool.', ex5_ko = '아침은 완전히 흐리고 시원했어요.' WHERE id = 'nuc_weather_03';
UPDATE nuances SET ex4 = 'It''s too hot to walk outside at midday.', ex4_ko = '한낮에는 밖에서 걷기 너무 더워요.', ex5 = 'The kitchen was warm and smelled of fresh bread.', ex5_ko = '주방은 따뜻하고 갓 구운 빵 냄새가 났어요.' WHERE id = 'nuc_weather_04';
UPDATE nuances SET ex4 = 'It''s a bit chilly tonight — grab a sweater.', ex4_ko = '오늘 밤 좀 쌀쌀해요 — 스웨터 챙기세요.', ex5 = 'It''s absolutely freezing — my fingers are numb.', ex5_ko = '진짜 너무 추워요 — 손가락이 무감각해요.' WHERE id = 'nuc_weather_05';
UPDATE nuances SET ex4 = 'A big storm is heading toward the coast tonight.', ex4_ko = '큰 폭풍이 오늘 밤 해안으로 향하고 있어요.', ex5 = 'There were scattered showers throughout the morning.', ex5_ko = '아침 내내 곳곳에 소나기가 내렸어요.' WHERE id = 'nuc_weather_06';
UPDATE nuances SET ex4 = 'Thick fog made driving very dangerous.', ex4_ko = '짙은 안개로 운전이 매우 위험했어요.', ex5 = 'A soft mist covered the valley at dawn.', ex5_ko = '새벽에 부드러운 안개가 골짜기를 덮었어요.' WHERE id = 'nuc_weather_07';
UPDATE nuances SET ex4 = 'It was so humid that my hair frizzed up.', ex4_ko = '너무 습해서 제 머리가 부풀어 올랐어요.', ex5 = 'It''s muggy outside — I''d rather stay indoors.', ex5_ko = '밖이 후텁지근해서 — 그냥 실내에 있고 싶어요.' WHERE id = 'nuc_weather_08';
UPDATE nuances SET ex4 = 'Lightning lit up the whole sky for a second.', ex4_ko = '번개가 1초간 하늘 전체를 비췄어요.', ex5 = 'The thunder rumbled for almost ten seconds.', ex5_ko = '천둥이 거의 10초 동안 울렸어요.' WHERE id = 'nuc_weather_09';
UPDATE nuances SET ex4 = 'The forecast says it''ll be sunny all weekend.', ex4_ko = '예보에 따르면 주말 내내 맑을 거예요.', ex5 = 'Economists predicted rising prices for the next year.', ex5_ko = '경제학자들은 내년 가격 상승을 예측했어요.' WHERE id = 'nuc_weather_10';
UPDATE nuances SET ex4 = 'A blizzard kept us inside for the entire day.', ex4_ko = '눈보라로 우리는 하루 종일 실내에 있었어요.', ex5 = 'A heavy snowstorm closed every road in the area.', ex5_ko = '폭설로 그 지역 모든 도로가 폐쇄됐어요.' WHERE id = 'nuc_weather_11';
UPDATE nuances SET ex4 = 'The temperate climate makes spring last for weeks.', ex4_ko = '온화한 기후 덕분에 봄이 몇 주간 지속돼요.', ex5 = 'It was a mild day perfect for a long walk.', ex5_ko = '긴 산책에 완벽한 온화한 날이었어요.' WHERE id = 'nuc_weather_12';
UPDATE nuances SET ex4 = 'The arid landscape stretched for miles without any trees.', ex4_ko = '건조한 풍경이 나무 한 그루 없이 몇 마일 펼쳐졌어요.', ex5 = 'The drought finally ended after months of light rain.', ex5_ko = '가뭄이 몇 달간의 약한 비 끝에 마침내 끝났어요.' WHERE id = 'nuc_weather_13';

-- ══════════════════════════════════════
-- SHOPPING
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I''m going to buy some bread on the way home.', ex4_ko = '저는 집에 가는 길에 빵을 좀 사려고 해요.', ex5 = 'You can purchase tickets in advance through the app.', ex5_ko = '앱으로 미리 티켓을 구매하실 수 있어요.' WHERE id = 'nuc_shopping_01';
UPDATE nuances SET ex4 = 'The shoes were cheap, but they fell apart in a month.', ex4_ko = '신발은 쌌지만 한 달 만에 망가졌어요.', ex5 = 'This restaurant is surprisingly inexpensive and delicious.', ex5_ko = '이 식당은 놀라울 정도로 저렴하고 맛있어요.' WHERE id = 'nuc_shopping_02';
UPDATE nuances SET ex4 = 'Students get a discount with a valid ID.', ex4_ko = '학생들은 유효한 학생증으로 할인을 받아요.', ex5 = 'Everything in the shop is on sale this week.', ex5_ko = '이번 주에는 매장 모든 것이 세일이에요.' WHERE id = 'nuc_shopping_03';
UPDATE nuances SET ex4 = 'I''d like a refund — the item was faulty.', ex4_ko = '환불받고 싶어요 — 물건에 결함이 있었어요.', ex5 = 'Can I exchange this jacket for a smaller size?', ex5_ko = '이 재킷을 더 작은 사이즈로 교환할 수 있어요?' WHERE id = 'nuc_shopping_04';
UPDATE nuances SET ex4 = 'The price of vegetables has gone up sharply.', ex4_ko = '채소 가격이 가파르게 올랐어요.', ex5 = 'The cost of living is high in big cities.', ex5_ko = '대도시의 생활비가 높아요.' WHERE id = 'nuc_shopping_05';
UPDATE nuances SET ex4 = 'I got a real bargain at the antique fair last weekend.', ex4_ko = '지난 주말 골동품 박람회에서 정말 싸게 잘 샀어요.', ex5 = 'You can negotiate the price if you''re buying in bulk.', ex5_ko = '대량으로 구매한다면 가격을 협상할 수 있어요.' WHERE id = 'nuc_shopping_06';
UPDATE nuances SET ex4 = 'Always keep your receipt in case of returns.', ex4_ko = '반품에 대비해 항상 영수증을 보관하세요.', ex5 = 'The invoice will be sent to your email after payment.', ex5_ko = '결제 후 청구서가 이메일로 발송돼요.' WHERE id = 'nuc_shopping_07';
UPDATE nuances SET ex4 = 'I was just browsing — nothing in particular caught my eye.', ex4_ko = '그냥 구경 중이었어요 — 특별히 눈에 띄는 건 없었어요.', ex5 = 'She searched online for the best price.', ex5_ko = '그녀는 최고의 가격을 찾으려 온라인에서 검색했어요.' WHERE id = 'nuc_shopping_08';
UPDATE nuances SET ex4 = 'They sell fabric wholesale to local designers.', ex4_ko = '그들은 지역 디자이너들에게 원단을 도매로 팔아요.', ex5 = 'Retail prices vary widely between stores.', ex5_ko = '소매 가격은 매장마다 크게 달라요.' WHERE id = 'nuc_shopping_09';
UPDATE nuances SET ex4 = 'Authorities seized large amounts of counterfeit goods at the border.', ex4_ko = '당국은 국경에서 대량의 위조품을 압수했어요.', ex5 = 'The reviews seemed fake, so I checked more sources.', ex5_ko = '리뷰가 가짜 같아서 더 많은 출처를 확인했어요.' WHERE id = 'nuc_shopping_10';
UPDATE nuances SET ex4 = 'She made an impulse purchase she later regretted.', ex4_ko = '그녀는 나중에 후회한 충동 구매를 했어요.', ex5 = 'It was a spontaneous decision to fly somewhere warm.', ex5_ko = '따뜻한 곳으로 비행기를 타기로 한 즉흥적인 결정이었어요.' WHERE id = 'nuc_shopping_11';
UPDATE nuances SET ex4 = 'She lives a frugal life and saves most of her salary.', ex4_ko = '그녀는 검소한 삶을 살며 월급의 대부분을 저축해요.', ex5 = 'He''s known for being stingy with tips at restaurants.', ex5_ko = '그는 식당 팁에 인색한 것으로 알려져 있어요.' WHERE id = 'nuc_shopping_12';
UPDATE nuances SET ex4 = 'Consumers expect transparency about product ingredients.', ex4_ko = '소비자들은 제품 성분에 대한 투명성을 기대해요.', ex5 = 'The customer asked for a recommendation from the staff.', ex5_ko = '그 고객은 직원에게 추천을 부탁했어요.' WHERE id = 'nuc_shopping_13';

-- ══════════════════════════════════════
-- CAFE
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'What kind of drink would you like with your meal?', ex4_ko = '식사와 함께 어떤 음료를 드시겠어요?', ex5 = 'They serve a wide selection of beverages all day.', ex5_ko = '그들은 종일 다양한 음료를 제공해요.' WHERE id = 'nuc_cafe_01';
UPDATE nuances SET ex4 = 'I asked for a strong coffee with no sugar.', ex4_ko = '저는 설탕 없는 진한 커피를 부탁했어요.', ex5 = 'This dark roast has a bold, smoky finish.', ex5_ko = '이 다크 로스트는 풍부하고 스모키한 풍미가 있어요.' WHERE id = 'nuc_cafe_02';
UPDATE nuances SET ex4 = 'I''d like to order two croissants and a flat white.', ex4_ko = '크루아상 두 개와 플랫 화이트 하나 주문할게요.', ex5 = 'Could I ask for a second napkin, please?', ex5_ko = '냅킨 한 장 더 부탁드려도 될까요?' WHERE id = 'nuc_cafe_03';
UPDATE nuances SET ex4 = 'A latte, please — takeaway.', ex4_ko = '라테 하나요 — 포장이요.', ex5 = 'Is that for here or to go?', ex5_ko = '드시고 가실 건가요, 포장이세요?' WHERE id = 'nuc_cafe_04';
UPDATE nuances SET ex4 = 'A hot chocolate sounds wonderful right now.', ex4_ko = '뜨거운 초콜릿이 지금 딱이겠어요.', ex5 = 'I''ll have an iced americano with two extra shots.', ex5_ko = '아이스 아메리카노에 샷 두 번 추가로 주세요.' WHERE id = 'nuc_cafe_05';
UPDATE nuances SET ex4 = 'This dark chocolate is quite bitter.', ex4_ko = '이 다크 초콜릿은 꽤 써요.', ex5 = 'The yogurt tastes a little sour, but I like it.', ex5_ko = '요거트가 약간 시지만 저는 좋아요.' WHERE id = 'nuc_cafe_06';
UPDATE nuances SET ex4 = 'I''ll have a decaf latte before bed.', ex4_ko = '저는 자기 전에 디카페인 라테 마실게요.', ex5 = 'Most herbal teas are caffeine-free.', ex5_ko = '대부분의 허브차는 무카페인이에요.' WHERE id = 'nuc_cafe_07';
UPDATE nuances SET ex4 = 'A double espresso, please — I''m exhausted.', ex4_ko = '더블 에스프레소 부탁해요 — 너무 피곤해요.', ex5 = 'I usually have an Americano with breakfast.', ex5_ko = '저는 보통 아침 식사와 함께 아메리카노를 마셔요.' WHERE id = 'nuc_cafe_08';
UPDATE nuances SET ex4 = 'The aroma of cinnamon filled the entire cafe.', ex4_ko = '시나몬 향이 카페 전체를 가득 채웠어요.', ex5 = 'This blend has a chocolatey, nutty flavor.', ex5_ko = '이 블렌드는 초콜릿 향과 견과류 풍미가 있어요.' WHERE id = 'nuc_cafe_09';
UPDATE nuances SET ex4 = 'This little cafe is so cozy on rainy days.', ex4_ko = '비 오는 날 이 작은 카페는 정말 아늑해요.', ex5 = 'These chairs are surprisingly comfortable for long study sessions.', ex5_ko = '이 의자들은 긴 공부 시간에 놀랍게 편안해요.' WHERE id = 'nuc_cafe_06b';
UPDATE nuances SET ex4 = 'They sell artisan bread baked fresh every morning.', ex4_ko = '그들은 매일 아침 신선하게 구운 장인 빵을 팔아요.', ex5 = 'This specialty coffee comes from a single farm in Ethiopia.', ex5_ko = '이 스페셜티 커피는 에티오피아의 한 농장에서 와요.' WHERE id = 'nuc_cafe_11';
UPDATE nuances SET ex4 = 'The ambient music made the studying easier.', ex4_ko = '배경 음악이 공부를 더 쉽게 만들었어요.', ex5 = 'The atmosphere in that bookshop is calm and inviting.', ex5_ko = '그 서점의 분위기는 차분하고 따뜻해요.' WHERE id = 'nuc_cafe_12';
UPDATE nuances SET ex4 = 'A coffee connoisseur can tell beans apart by aroma alone.', ex4_ko = '커피 전문 감식가는 향만으로도 원두를 구별할 수 있어요.', ex5 = 'He''s a coffee enthusiast who visits a new cafe each weekend.', ex5_ko = '그는 매 주말 새 카페를 방문하는 커피 애호가예요.' WHERE id = 'nuc_cafe_13';

-- ══════════════════════════════════════
-- TRANSPORT
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I ride my bike to school every day.', ex4_ko = '저는 매일 자전거를 타고 학교에 가요.', ex5 = 'She drives a small electric car for her commute.', ex5_ko = '그녀는 작은 전기차로 출퇴근해요.' WHERE id = 'nuc_transport_01';
UPDATE nuances SET ex4 = 'The bus is rarely on time during rush hour.', ex4_ko = '버스는 출퇴근 시간에 거의 정시에 오지 않아요.', ex5 = 'I made it in time for the last train home.', ex5_ko = '저는 마지막 귀가 기차를 놓치지 않게 도착했어요.' WHERE id = 'nuc_transport_02';
UPDATE nuances SET ex4 = 'I lost my ticket somewhere on the platform.', ex4_ko = '저는 플랫폼 어디선가 표를 잃어버렸어요.', ex5 = 'A monthly pass saves a lot of money if you ride daily.', ex5_ko = '매일 타신다면 월 정기권이 돈을 많이 절약해 줘요.' WHERE id = 'nuc_transport_03';
UPDATE nuances SET ex4 = 'Our flight was delayed by an hour due to weather.', ex4_ko = '저희 비행기가 날씨로 한 시간 지연됐어요.', ex5 = 'They had to cancel the trip because of the typhoon.', ex5_ko = '태풍 때문에 그들은 여행을 취소해야 했어요.' WHERE id = 'nuc_transport_04';
UPDATE nuances SET ex4 = 'The bus fare has gone up by 20% this year.', ex4_ko = '버스 요금이 올해 20% 올랐어요.', ex5 = 'There''s a toll booth just before the bridge.', ex5_ko = '다리 직전에 통행료 부스가 있어요.' WHERE id = 'nuc_transport_05';
UPDATE nuances SET ex4 = 'You can transfer to the green line at the next stop.', ex4_ko = '다음 정류장에서 녹색 노선으로 환승할 수 있어요.', ex5 = 'We''re in transit and our luggage is on the next plane.', ex5_ko = '저희는 경유 중이고 짐은 다음 비행기에 있어요.' WHERE id = 'nuc_transport_06';
UPDATE nuances SET ex4 = 'Passengers will begin to board in five minutes.', ex4_ko = '승객들은 5분 안에 탑승을 시작합니다.', ex5 = 'The crew prepared to embark on the long voyage.', ex5_ko = '승무원들은 긴 항해를 떠날 준비를 했어요.' WHERE id = 'nuc_transport_07';
UPDATE nuances SET ex4 = 'There''s always heavy traffic in the city centre after five.', ex4_ko = '시내 중심부에는 5시 이후 항상 교통량이 많아요.', ex5 = 'Congestion charges are common in many large cities now.', ex5_ko = '많은 대도시에서 이제 혼잡 통행료가 흔해요.' WHERE id = 'nuc_transport_08';
UPDATE nuances SET ex4 = 'Her daily commute takes about an hour each way.', ex4_ko = '그녀의 매일 통근은 편도 약 한 시간이 걸려요.', ex5 = 'They travel to a different city every weekend.', ex5_ko = '그들은 매 주말 다른 도시로 여행해요.' WHERE id = 'nuc_transport_09';
UPDATE nuances SET ex4 = 'We had to take a long detour because of the closure.', ex4_ko = '폐쇄로 우리는 긴 우회로를 가야 했어요.', ex5 = 'She always takes a shortcut through the back streets.', ex5_ko = '그녀는 항상 뒷길로 지름길을 가요.' WHERE id = 'nuc_transport_10';
UPDATE nuances SET ex4 = 'Our travel agent sent us a beautifully detailed itinerary.', ex4_ko = '여행사가 아름답게 자세한 일정표를 보내줬어요.', ex5 = 'The bus schedule is posted at every stop.', ex5_ko = '버스 시간표가 모든 정류장에 게시되어 있어요.' WHERE id = 'nuc_transport_11';
UPDATE nuances SET ex4 = 'It took twenty minutes to hail a taxi during the storm.', ex4_ko = '폭풍 동안 택시를 잡는 데 20분이 걸렸어요.', ex5 = 'He flagged down a bus that wasn''t on his usual line.', ex5_ko = '그는 평소 노선이 아닌 버스를 손짓으로 세웠어요.' WHERE id = 'nuc_transport_12';
UPDATE nuances SET ex4 = 'The city is upgrading its transport infrastructure.', ex4_ko = '도시가 교통 인프라를 업그레이드하고 있어요.', ex5 = 'Strong logistics make next-day delivery possible.', ex5_ko = '강력한 물류 시스템 덕분에 익일 배송이 가능해요.' WHERE id = 'nuc_transport_13';

-- ══════════════════════════════════════
-- HEALTH
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'She''s been sick with the flu for three days.', ex4_ko = '그녀는 3일째 독감으로 아파요.', ex5 = 'He was too ill to attend the meeting.', ex5_ko = '그는 회의에 참석하기 너무 아팠어요.' WHERE id = 'nuc_health_01';
UPDATE nuances SET ex4 = 'A sudden pain in my knee made me sit down.', ex4_ko = '무릎에 갑작스러운 통증이 와서 저는 앉았어요.', ex5 = 'I''ve had a dull ache in my shoulder all day.', ex5_ko = '하루 종일 어깨에 은은한 통증이 있어요.' WHERE id = 'nuc_health_02';
UPDATE nuances SET ex4 = 'List your symptoms so the doctor can help.', ex4_ko = '의사가 도울 수 있도록 증상을 나열해 주세요.', ex5 = 'A high fever can be a sign of infection.', ex5_ko = '고열은 감염의 징후일 수 있어요.' WHERE id = 'nuc_health_03';
UPDATE nuances SET ex4 = 'Scientists are searching for a cure for the disease.', ex4_ko = '과학자들은 그 질병의 치료법을 찾고 있어요.', ex5 = 'The clinic treats patients of all ages.', ex5_ko = '그 병원은 모든 연령의 환자를 치료해요.' WHERE id = 'nuc_health_04';
UPDATE nuances SET ex4 = 'Please consult a physician about long-term medication.', ex4_ko = '장기 약물 복용에 대해서는 의사와 상의하세요.', ex5 = 'My doctor recommended more exercise and better sleep.', ex5_ko = '의사가 더 많은 운동과 더 나은 수면을 권장했어요.' WHERE id = 'nuc_health_05';
UPDATE nuances SET ex4 = 'A balanced diet is more sustainable than extreme rules.', ex4_ko = '균형 잡힌 식단이 극단적인 규칙보다 지속 가능해요.', ex5 = 'Good nutrition supports immune health.', ex5_ko = '좋은 영양 섭취가 면역 건강을 뒷받침해요.' WHERE id = 'nuc_health_06';
UPDATE nuances SET ex4 = 'She has a severe peanut allergy and carries an EpiPen.', ex4_ko = '그녀는 심한 땅콩 알레르기가 있어 에피펜을 가지고 다녀요.', ex5 = 'Many people have lactose intolerance without knowing it.', ex5_ko = '많은 사람들이 자기도 모르게 유당 불내성이 있어요.' WHERE id = 'nuc_health_07';
UPDATE nuances SET ex4 = 'The pharmacy is open 24 hours near the hospital.', ex4_ko = '병원 근처 약국은 24시간 영업해요.', ex5 = 'I picked up shampoo and ibuprofen at the drugstore.', ex5_ko = '저는 드럭스토어에서 샴푸와 이부프로펜을 샀어요.' WHERE id = 'nuc_health_08';
UPDATE nuances SET ex4 = 'He''s lived with chronic pain for years.', ex4_ko = '그는 수년간 만성 통증과 함께 살아왔어요.', ex5 = 'Acute stress can affect your sleep quickly.', ex5_ko = '급성 스트레스는 수면에 빠르게 영향을 줄 수 있어요.' WHERE id = 'nuc_health_09';
UPDATE nuances SET ex4 = 'The flu epidemic peaked in mid-January.', ex4_ko = '독감 유행이 1월 중순에 정점을 찍었어요.', ex5 = 'The pandemic changed how the whole world worked.', ex5_ko = '팬데믹은 전 세계가 일하는 방식을 바꿨어요.' WHERE id = 'nuc_health_10';
UPDATE nuances SET ex4 = 'A clear diagnosis can take several tests.', ex4_ko = '명확한 진단을 받으려면 여러 검사가 필요할 수 있어요.', ex5 = 'The prognosis improved after the new treatment.', ex5_ko = '새 치료 후 예후가 개선됐어요.' WHERE id = 'nuc_health_11';
UPDATE nuances SET ex4 = 'The placebo effect can be surprisingly strong in pain studies.', ex4_ko = '위약 효과는 통증 연구에서 놀랍게 강력할 수 있어요.', ex5 = 'The nocebo effect explains how negative expectations cause real symptoms.', ex5_ko = '노시보 효과는 부정적 기대가 실제 증상을 일으키는 방식을 설명해요.' WHERE id = 'nuc_health_12';
UPDATE nuances SET ex4 = 'Her rehabilitation included daily physical therapy.', ex4_ko = '그녀의 재활은 매일 물리치료를 포함했어요.', ex5 = 'His recovery surprised even his doctors.', ex5_ko = '그의 회복은 의사들조차 놀라게 했어요.' WHERE id = 'nuc_health_13';

-- ══════════════════════════════════════
-- TRAVEL
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'We''re taking a short trip to the countryside this weekend.', ex4_ko = '이번 주말 시골로 짧은 여행을 가요.', ex5 = 'The long journey home felt even longer in traffic.', ex5_ko = '집에 가는 긴 여정은 교통 체증 속에서 더 길게 느껴졌어요.' WHERE id = 'nuc_travel_01';
UPDATE nuances SET ex4 = 'My luggage was too heavy to lift onto the train.', ex4_ko = '제 짐이 너무 무거워서 기차에 올리기 힘들었어요.', ex5 = 'We''ll collect our baggage at carousel three.', ex5_ko = '저희는 3번 컨베이어에서 짐을 찾을 거예요.' WHERE id = 'nuc_travel_02';
UPDATE nuances SET ex4 = 'Don''t forget to check your passport expiration date.', ex4_ko = '여권 만료일 확인을 잊지 마세요.', ex5 = 'Some countries grant visas on arrival.', ex5_ko = '일부 나라들은 도착 시 비자를 발급해 줘요.' WHERE id = 'nuc_travel_03';
UPDATE nuances SET ex4 = 'We chose a small boutique hotel near the river.', ex4_ko = '강 근처 작은 부티크 호텔을 골랐어요.', ex5 = 'Hostels are great places to meet other travelers.', ex5_ko = '호스텔은 다른 여행자들을 만나기 좋은 곳이에요.' WHERE id = 'nuc_travel_04';
UPDATE nuances SET ex4 = 'I''d like to make a reservation for two at 7 p.m.', ex4_ko = '저녁 7시에 2인 예약하고 싶어요.', ex5 = 'You can confirm your booking by email.', ex5_ko = '이메일로 예약을 확인할 수 있어요.' WHERE id = 'nuc_travel_05';
UPDATE nuances SET ex4 = 'We spent the morning sightseeing in the old town.', ex4_ko = '오전에 구시가지에서 관광했어요.', ex5 = 'Tourism is a major industry for this small country.', ex5_ko = '관광은 이 작은 나라의 주요 산업이에요.' WHERE id = 'nuc_travel_06';
UPDATE nuances SET ex4 = 'She brought back a small souvenir from each city.', ex4_ko = '그녀는 각 도시에서 작은 기념품을 가져왔어요.', ex5 = 'I keep this seashell as a memento of our beach trip.', ex5_ko = '저는 이 조개껍데기를 우리 해변 여행의 추억으로 간직해요.' WHERE id = 'nuc_travel_07';
UPDATE nuances SET ex4 = 'The itinerary lists three museums for tomorrow.', ex4_ko = '여행 일정표에는 내일 세 박물관이 적혀 있어요.', ex5 = 'We took the coastal route to enjoy the views.', ex5_ko = '경치를 즐기기 위해 해안 경로로 갔어요.' WHERE id = 'nuc_travel_08';
UPDATE nuances SET ex4 = 'Some countries don''t use their own currency anymore.', ex4_ko = '어떤 나라들은 더 이상 자국 통화를 쓰지 않아요.', ex5 = 'The exchange rate is best at official kiosks.', ex5_ko = '환율은 공식 키오스크가 가장 좋아요.' WHERE id = 'nuc_travel_09';
UPDATE nuances SET ex4 = 'Jet lag hit me hard after the trip to New York.', ex4_ko = '뉴욕 여행 후 시차 피로가 심하게 왔어요.', ex5 = 'Travel fatigue can build up over many short trips.', ex5_ko = '여행 피로는 여러 짧은 여행에 걸쳐 쌓일 수 있어요.' WHERE id = 'nuc_travel_10';
UPDATE nuances SET ex4 = 'Many expats settle in Seoul for the food and culture.', ex4_ko = '많은 주재원들이 음식과 문화 때문에 서울에 정착해요.', ex5 = 'Immigrants bring rich cultural diversity to their new countries.', ex5_ko = '이민자들은 새 나라에 풍부한 문화적 다양성을 가져와요.' WHERE id = 'nuc_travel_11';
UPDATE nuances SET ex4 = 'She lives a nomadic life working from cafes around the world.', ex4_ko = '그녀는 세계 곳곳의 카페에서 일하며 유목적인 삶을 살아요.', ex5 = 'A transient crowd fills the train station every weekend.', ex5_ko = '주말마다 일시적인 인파가 기차역을 가득 채워요.' WHERE id = 'nuc_travel_12';
UPDATE nuances SET ex4 = 'They traversed the desert in just over a week.', ex4_ko = '그들은 일주일 조금 넘게 사막을 횡단했어요.', ex5 = 'I had to navigate through unfamiliar streets late at night.', ex5_ko = '저는 늦은 밤 낯선 거리를 찾아가야 했어요.' WHERE id = 'nuc_travel_13';

-- ══════════════════════════════════════
-- HOME
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'They bought a beautiful old house by the lake.', ex4_ko = '그들은 호숫가의 아름다운 오래된 집을 샀어요.', ex5 = 'No matter where I go, I always feel best at home.', ex5_ko = '어디를 가든 저는 항상 집에서 가장 편안하게 느껴져요.' WHERE id = 'nuc_home_01';
UPDATE nuances SET ex4 = 'They picked out cozy furniture for the new flat.', ex4_ko = '그들은 새 아파트를 위해 아늑한 가구를 골랐어요.', ex5 = 'Modern appliances make daily chores much easier.', ex5_ko = '현대 가전제품이 일상 잡일을 훨씬 쉽게 만들어줘요.' WHERE id = 'nuc_home_02';
UPDATE nuances SET ex4 = 'She rents a small apartment downtown.', ex4_ko = '그녀는 시내에 작은 아파트를 임대해요.', ex5 = 'They signed a two-year lease last week.', ex5_ko = '그들은 지난주 2년 임대 계약을 체결했어요.' WHERE id = 'nuc_home_03';
UPDATE nuances SET ex4 = 'My daughter''s room is always tidy and welcoming.', ex4_ko = '제 딸의 방은 항상 정돈되어 있고 따뜻해요.', ex5 = 'The kitchen needs a deep clean after the party.', ex5_ko = '파티 후 주방은 대청소가 필요해요.' WHERE id = 'nuc_home_04';
UPDATE nuances SET ex4 = 'We need to repair the leaky faucet this weekend.', ex4_ko = '이번 주말 새는 수도꼭지를 수리해야 해요.', ex5 = 'They renovated the entire basement into a guest suite.', ex5_ko = '그들은 지하실 전체를 게스트 스위트룸으로 리모델링했어요.' WHERE id = 'nuc_home_05';
UPDATE nuances SET ex4 = 'My neighbor brought over freshly baked cookies.', ex4_ko = '제 이웃이 갓 구운 쿠키를 가져다 줬어요.', ex5 = 'Our neighborhood has changed a lot in the last decade.', ex5_ko = '저희 동네는 지난 10년간 많이 변했어요.' WHERE id = 'nuc_home_06';
UPDATE nuances SET ex4 = 'They''re still paying off the mortgage on their first house.', ex4_ko = '그들은 첫 집의 주택 담보 대출을 아직 갚고 있어요.', ex5 = 'She took out a small loan for her home renovation.', ex5_ko = '그녀는 집 리노베이션을 위해 작은 대출을 받았어요.' WHERE id = 'nuc_home_07';
UPDATE nuances SET ex4 = 'It''s a cozy studio with great natural light.', ex4_ko = '자연 채광이 좋은 아늑한 스튜디오예요.', ex5 = 'The apartment felt cramped with all the furniture.', ex5_ko = '모든 가구가 들어가니 아파트가 비좁게 느껴졌어요.' WHERE id = 'nuc_home_08';
UPDATE nuances SET ex4 = 'My landlord responded quickly to the repair request.', ex4_ko = '저희 집주인은 수리 요청에 빠르게 응답했어요.', ex5 = 'The tenant signed the lease and moved in the next day.', ex5_ko = '그 세입자는 계약서에 서명하고 다음 날 이사 들어왔어요.' WHERE id = 'nuc_home_09';
UPDATE nuances SET ex4 = 'The interior is decorated in warm earth tones.', ex4_ko = '내부는 따뜻한 어스 톤으로 꾸며져 있어요.', ex5 = 'The exterior could use a fresh coat of paint.', ex5_ko = '외부는 페인트 새로 칠하면 좋겠어요.' WHERE id = 'nuc_home_10';
UPDATE nuances SET ex4 = 'Utilities and internet are included in the rent.', ex4_ko = '공과금과 인터넷은 임대료에 포함돼 있어요.', ex5 = 'The building''s amenities include a small gym.', ex5_ko = '건물 편의시설로는 작은 헬스장이 있어요.' WHERE id = 'nuc_home_11';
UPDATE nuances SET ex4 = 'The third-floor flat has been vacant since spring.', ex4_ko = '3층 아파트는 봄부터 비어 있어요.', ex5 = 'Is that two-bedroom unit still available for rent?', ex5_ko = '그 침실 두 개짜리 집은 아직 임대 가능한가요?' WHERE id = 'nuc_home_12';
UPDATE nuances SET ex4 = 'The new dwellings meet stricter safety standards.', ex4_ko = '새 거처들은 더 엄격한 안전 기준을 충족해요.', ex5 = '"Welcome to my humble abode," she said with a smile.', ex5_ko = '"제 누추한 거처에 오신 것을 환영해요," 그녀는 미소 지으며 말했어요.' WHERE id = 'nuc_home_13';

-- ══════════════════════════════════════
-- WORK
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I started a new job last month at a small studio.', ex4_ko = '저는 지난달 작은 스튜디오에서 새 직장을 시작했어요.', ex5 = 'Her career in journalism has spanned three decades.', ex5_ko = '그녀의 저널리즘 경력은 30년에 걸쳐요.' WHERE id = 'nuc_work_01';
UPDATE nuances SET ex4 = 'My boss is very supportive of my growth.', ex4_ko = '제 상사는 제 성장을 매우 지지해 주세요.', ex5 = 'The product manager scheduled a kickoff meeting.', ex5_ko = '제품 매니저가 킥오프 회의를 잡았어요.' WHERE id = 'nuc_work_02';
UPDATE nuances SET ex4 = 'Her salary doubled after the promotion.', ex4_ko = '승진 후 그녀의 월급이 두 배가 됐어요.', ex5 = 'Many part-time workers earn an hourly wage.', ex5_ko = '많은 시간제 근로자들이 시급을 받아요.' WHERE id = 'nuc_work_03';
UPDATE nuances SET ex4 = 'Please complete this task before lunch.', ex4_ko = '점심 전에 이 업무를 완료해 주세요.', ex5 = 'The project ran for nine months and involved five teams.', ex5_ko = '그 프로젝트는 9개월간 진행됐고 다섯 팀이 참여했어요.' WHERE id = 'nuc_work_04';
UPDATE nuances SET ex4 = 'I have lunch with my colleagues every Wednesday.', ex4_ko = '저는 매주 수요일 동료들과 점심을 먹어요.', ex5 = 'My coworker brought homemade cookies for everyone.', ex5_ko = '제 동료가 모두를 위해 수제 쿠키를 가져왔어요.' WHERE id = 'nuc_work_05';
UPDATE nuances SET ex4 = 'He plans to resign after finding a better offer.', ex4_ko = '그는 더 나은 제안을 찾은 후 사직할 계획이에요.', ex5 = 'She''s planning to retire and travel the world.', ex5_ko = '그녀는 은퇴하고 세계를 여행할 계획이에요.' WHERE id = 'nuc_work_06';
UPDATE nuances SET ex4 = 'The deadline is tomorrow at 5 p.m. — no extensions.', ex4_ko = '마감은 내일 오후 5시예요 — 연장 없어요.', ex5 = 'Your library book has a due date of June 10.', ex5_ko = '도서관 책의 반납 기한은 6월 10일이에요.' WHERE id = 'nuc_work_07';
UPDATE nuances SET ex4 = 'Working remotely lets me see my kids more often.', ex4_ko = '재택근무 덕분에 아이들을 더 자주 볼 수 있어요.', ex5 = 'Our hybrid model has worked well for the past year.', ex5_ko = '저희 혼합 근무 모델은 작년에 잘 작동했어요.' WHERE id = 'nuc_work_08';
UPDATE nuances SET ex4 = 'Mornings are my most productive time of day.', ex4_ko = '아침이 제 하루 중 가장 생산적인 시간이에요.', ex5 = 'A more efficient process saved the team weeks of work.', ex5_ko = '더 효율적인 프로세스가 팀의 몇 주 작업을 절약해 줬어요.' WHERE id = 'nuc_work_09';
UPDATE nuances SET ex4 = 'A good leader knows how to delegate effectively.', ex4_ko = '좋은 리더는 효과적으로 위임하는 법을 알아요.', ex5 = 'The professor assigned a 10-page paper for next month.', ex5_ko = '교수님은 다음 달까지 10페이지 논문을 배정했어요.' WHERE id = 'nuc_work_10';
UPDATE nuances SET ex4 = 'Her annual appraisal showed strong results.', ex4_ko = '그녀의 연간 인사 고과는 좋은 결과를 보였어요.', ex5 = 'The team conducted a thorough evaluation of the new software.', ex5_ko = '팀은 새 소프트웨어에 대한 철저한 평가를 진행했어요.' WHERE id = 'nuc_work_11';
UPDATE nuances SET ex4 = 'After the merger, several roles faced redundancy.', ex4_ko = '합병 후 여러 직무가 정리 해고에 직면했어요.', ex5 = 'Mass layoffs hit the industry hard last spring.', ex5_ko = '대규모 정리 해고가 지난 봄 그 산업에 큰 타격을 줬어요.' WHERE id = 'nuc_work_12';
UPDATE nuances SET ex4 = 'The remuneration includes a generous bonus structure.', ex4_ko = '보수에는 넉넉한 보너스 구조가 포함돼요.', ex5 = 'Workers received fair compensation for the overtime.', ex5_ko = '근로자들은 초과 근무에 대한 공정한 보상을 받았어요.' WHERE id = 'nuc_work_13';

-- ══════════════════════════════════════
-- EDUCATION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I studied late into the night for the final exam.', ex4_ko = '저는 기말 시험을 위해 밤늦게까지 공부했어요.', ex5 = 'You can learn so much just by traveling.', ex5_ko = '여행만으로도 정말 많은 것을 배울 수 있어요.' WHERE id = 'nuc_education_01';
UPDATE nuances SET ex4 = 'My first English teacher made me love languages.', ex4_ko = '제 첫 영어 선생님이 저에게 언어를 사랑하게 만들어 주셨어요.', ex5 = 'The professor''s lectures attract students from many countries.', ex5_ko = '그 교수님의 강의는 여러 나라의 학생들을 끌어들여요.' WHERE id = 'nuc_education_02';
UPDATE nuances SET ex4 = 'A quick quiz at the start of class keeps everyone alert.', ex4_ko = '수업 시작에 짧은 퀴즈가 모두를 집중하게 해요.', ex5 = 'The final exam covers everything from the semester.', ex5_ko = '기말 시험은 학기 전체를 다뤄요.' WHERE id = 'nuc_education_03';
UPDATE nuances SET ex4 = 'I do my homework at the library after school.', ex4_ko = '저는 방과 후 도서관에서 숙제를 해요.', ex5 = 'The assignment is due next Friday at midnight.', ex5_ko = '과제는 다음 주 금요일 자정까지예요.' WHERE id = 'nuc_education_04';
UPDATE nuances SET ex4 = 'My grade on the project surprised me.', ex4_ko = '그 프로젝트에서 받은 성적이 저를 놀라게 했어요.', ex5 = 'His score on the math test was perfect.', ex5_ko = '수학 시험에서 그의 점수는 만점이었어요.' WHERE id = 'nuc_education_05';
UPDATE nuances SET ex4 = 'She won a full scholarship to an Ivy League school.', ex4_ko = '그녀는 아이비리그 학교의 전액 장학금을 받았어요.', ex5 = 'The lab applied for a research grant from the government.', ex5_ko = '그 실험실은 정부 연구 보조금을 신청했어요.' WHERE id = 'nuc_education_06';
UPDATE nuances SET ex4 = 'The curriculum was updated to include digital literacy.', ex4_ko = '교육과정이 디지털 리터러시를 포함하도록 업데이트됐어요.', ex5 = 'Always read the syllabus carefully on the first day.', ex5_ko = '첫날 강의계획서를 항상 신중히 읽으세요.' WHERE id = 'nuc_education_07';
UPDATE nuances SET ex4 = 'My math tutor helped me improve in just a month.', ex4_ko = '제 수학 튜터가 단 한 달 만에 제가 향상되도록 도와줬어요.', ex5 = 'A good mentor can shape your entire career.', ex5_ko = '좋은 멘토가 당신의 전체 경력을 형성할 수 있어요.' WHERE id = 'nuc_education_08';
UPDATE nuances SET ex4 = 'Rote learning has limits when ideas get complex.', ex4_ko = '암기식 학습은 아이디어가 복잡해질 때 한계가 있어요.', ex5 = 'Critical thinking is the most important skill for university.', ex5_ko = '비판적 사고는 대학에서 가장 중요한 기술이에요.' WHERE id = 'nuc_education_09';
UPDATE nuances SET ex4 = 'She''s a fourth-year undergraduate student in biology.', ex4_ko = '그녀는 생물학 4학년 학부생이에요.', ex5 = 'He''s a graduate student researching marine ecosystems.', ex5_ko = '그는 해양 생태계를 연구하는 대학원생이에요.' WHERE id = 'nuc_education_10';
UPDATE nuances SET ex4 = 'Modern pedagogy focuses on student-centered learning.', ex4_ko = '현대 교육학은 학생 중심 학습에 집중해요.', ex5 = 'Didactics studies how to best teach specific subjects.', ex5_ko = '교수법은 특정 과목을 가장 잘 가르치는 방법을 연구해요.' WHERE id = 'nuc_education_11';
UPDATE nuances SET ex4 = 'The school is currently undergoing accreditation review.', ex4_ko = '그 학교는 현재 인증 심사를 받고 있어요.', ex5 = 'She earned certification as a yoga instructor last year.', ex5_ko = '그녀는 작년에 요가 강사 자격증을 취득했어요.' WHERE id = 'nuc_education_12';
UPDATE nuances SET ex4 = 'Epistemology asks how we can claim to know anything at all.', ex4_ko = '인식론은 우리가 어떻게 무언가를 안다고 주장할 수 있는지 물어요.', ex5 = 'Ontology explores what kinds of things actually exist.', ex5_ko = '존재론은 어떤 종류의 것들이 실제로 존재하는지 탐구해요.' WHERE id = 'nuc_education_13';


