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

-- ══════════════════════════════════════
-- MEDIA
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I watched two episodes before bed last night.', ex4_ko = '어젯밤 자기 전에 두 화를 봤어요.', ex5 = 'Did you see that incredible play in the game?', ex5_ko = '경기에서 그 놀라운 플레이 봤어요?' WHERE id = 'nuc_media_01';
UPDATE nuances SET ex4 = 'I read the news every morning over coffee.', ex4_ko = '저는 매일 아침 커피 마시며 뉴스를 읽어요.', ex5 = 'She wrote a detailed report on the local elections.', ex5_ko = '그녀는 지방 선거에 대한 자세한 보도를 썼어요.' WHERE id = 'nuc_media_02';
UPDATE nuances SET ex4 = 'I never watch live TV — I just stream channels online.', ex4_ko = '저는 실시간 TV를 보지 않고 — 온라인으로 채널을 스트리밍해요.', ex5 = 'YouTube is the most popular video platform in many countries.', ex5_ko = '유튜브는 많은 나라에서 가장 인기 있는 동영상 플랫폼이에요.' WHERE id = 'nuc_media_03';
UPDATE nuances SET ex4 = 'Subscribe to the newsletter to get weekly updates.', ex4_ko = '주간 업데이트를 받으려면 뉴스레터를 구독하세요.', ex5 = 'Thousands of people follow her cooking account.', ex5_ko = '수천 명이 그녀의 요리 계정을 팔로우해요.' WHERE id = 'nuc_media_04';
UPDATE nuances SET ex4 = 'I saw the advertisement on the side of a bus.', ex4_ko = '저는 버스 옆면의 광고를 봤어요.', ex5 = 'A 30-second commercial during the playoffs is expensive.', ex5_ko = '플레이오프 중 30초 광고는 비싸요.' WHERE id = 'nuc_media_05';
UPDATE nuances SET ex4 = 'The interview was streamed live to millions of viewers.', ex4_ko = '인터뷰는 수백만 명의 시청자에게 생방송으로 스트리밍됐어요.', ex5 = 'The recorded podcast goes out every Tuesday morning.', ex5_ko = '녹화된 팟캐스트는 매주 화요일 아침에 나가요.' WHERE id = 'nuc_media_06';
UPDATE nuances SET ex4 = 'The dance went viral on multiple platforms in two days.', ex4_ko = '그 춤은 이틀 만에 여러 플랫폼에서 입소문이 났어요.', ex5 = 'That song is trending in five different countries right now.', ex5_ko = '그 노래는 지금 다섯 개 다른 나라에서 트렌딩이에요.' WHERE id = 'nuc_media_07';
UPDATE nuances SET ex4 = 'Every news source has some kind of bias.', ex4_ko = '모든 뉴스 출처에는 어떤 종류의 편향이 있어요.', ex5 = 'Hearing different perspectives helps you understand the issue.', ex5_ko = '다양한 관점을 듣는 것이 문제를 이해하는 데 도움이 돼요.' WHERE id = 'nuc_media_08';
UPDATE nuances SET ex4 = 'Censorship of social media is a sensitive topic.', ex4_ko = '소셜 미디어 검열은 민감한 주제예요.', ex5 = 'Better regulation could protect users without limiting speech.', ex5_ko = '더 나은 규제는 발언을 제한하지 않으면서 사용자를 보호할 수 있어요.' WHERE id = 'nuc_media_09';
UPDATE nuances SET ex4 = 'The late-night show is famous for political satire.', ex4_ko = '그 심야 쇼는 정치 풍자로 유명해요.', ex5 = 'Their parody of the music video got a million views.', ex5_ko = '그들의 뮤직비디오 패러디가 백만 뷰를 기록했어요.' WHERE id = 'nuc_media_10';
UPDATE nuances SET ex4 = 'The film follows a clear three-act narrative.', ex4_ko = '그 영화는 명확한 3막 서사를 따라가요.', ex5 = 'Public discourse on AI is growing more nuanced.', ex5_ko = 'AI에 대한 공개 담론이 점점 더 섬세해지고 있어요.' WHERE id = 'nuc_media_11';
UPDATE nuances SET ex4 = 'Wartime propaganda often relies on simple visual symbols.', ex4_ko = '전시 선전은 종종 단순한 시각 상징에 의존해요.', ex5 = 'Disinformation can spread faster than the truth on social media.', ex5_ko = '허위 정보는 소셜 미디어에서 진실보다 빠르게 퍼질 수 있어요.' WHERE id = 'nuc_media_12';
UPDATE nuances SET ex4 = 'Semiotics helps us understand why certain symbols feel powerful.', ex4_ko = '기호학은 특정 상징이 왜 강력하게 느껴지는지 이해하는 데 도움이 돼요.', ex5 = 'Religious iconography shapes much of Western art history.', ex5_ko = '종교 도상학이 서양 미술사의 많은 부분을 형성해요.' WHERE id = 'nuc_media_13';

-- ══════════════════════════════════════
-- ENVIRONMENT
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'Sort plastics carefully before you recycle.', ex4_ko = '재활용하기 전에 플라스틱을 신중히 분류하세요.', ex5 = 'Try to reuse jars and containers when you can.', ex5_ko = '가능할 때 병과 용기를 재사용해 보세요.' WHERE id = 'nuc_environment_01';
UPDATE nuances SET ex4 = 'Climate change is already affecting daily life around the world.', ex4_ko = '기후 변화는 이미 전 세계 일상에 영향을 미치고 있어요.', ex5 = 'The weather has been unusually warm this winter.', ex5_ko = '이번 겨울 날씨가 이례적으로 따뜻해요.' WHERE id = 'nuc_environment_02';
UPDATE nuances SET ex4 = 'Air pollution levels are highest near busy roads.', ex4_ko = '대기 오염 수준은 번잡한 도로 근처에서 가장 높아요.', ex5 = 'The water supply was contaminated by industrial runoff.', ex5_ko = '수돗물이 산업 폐수로 오염됐어요.' WHERE id = 'nuc_environment_03';
UPDATE nuances SET ex4 = 'Many countries are investing heavily in renewable energy.', ex4_ko = '많은 나라들이 재생에너지에 대규모로 투자하고 있어요.', ex5 = 'Sustainable practices benefit both businesses and the planet.', ex5_ko = '지속 가능한 관행은 기업과 지구 모두에게 이로워요.' WHERE id = 'nuc_environment_04';
UPDATE nuances SET ex4 = 'Wildlife conservation depends on community involvement.', ex4_ko = '야생동물 보전은 지역사회 참여에 달려 있어요.', ex5 = 'Historic preservation has saved many beautiful buildings.', ex5_ko = '역사 보존은 많은 아름다운 건물을 살려왔어요.' WHERE id = 'nuc_environment_05';
UPDATE nuances SET ex4 = 'Reducing carbon emissions is a global priority.', ex4_ko = '탄소 배출량 감소는 세계적 우선과제예요.', ex5 = 'The factory was fined for discharging waste into the river.', ex5_ko = '공장은 강에 폐기물을 방류한 혐의로 벌금을 받았어요.' WHERE id = 'nuc_environment_06';
UPDATE nuances SET ex4 = 'Deforestation contributes significantly to climate change.', ex4_ko = '삼림 벌채는 기후 변화에 크게 기여해요.', ex5 = 'Desertification is making farming impossible in some regions.', ex5_ko = '사막화로 일부 지역에서는 농사가 불가능해지고 있어요.' WHERE id = 'nuc_environment_07';
UPDATE nuances SET ex4 = 'Flying often increases your carbon footprint the most.', ex4_ko = '비행이 종종 탄소 발자국을 가장 많이 늘려요.', ex5 = 'Our ecological footprint per person is unsustainable.', ex5_ko = '1인당 생태 발자국이 지속 불가능해요.' WHERE id = 'nuc_environment_08';
UPDATE nuances SET ex4 = 'Biodiversity is essential for healthy food systems.', ex4_ko = '생물 다양성은 건강한 식량 시스템에 필수적이에요.', ex5 = 'The coral reef ecosystem supports an incredible variety of life.', ex5_ko = '산호초 생태계는 놀라운 다양한 생명을 지지해요.' WHERE id = 'nuc_environment_09';
UPDATE nuances SET ex4 = 'Mitigation strategies focus on reducing future emissions.', ex4_ko = '완화 전략은 미래 배출량을 줄이는 데 집중해요.', ex5 = 'Climate adaptation includes building flood defenses.', ex5_ko = '기후 적응은 홍수 방지 시설 건설을 포함해요.' WHERE id = 'nuc_environment_10';
UPDATE nuances SET ex4 = 'Critics accused the company of greenwashing its packaging claims.', ex4_ko = '비평가들은 회사가 포장 주장으로 그린워싱을 한다고 비난했어요.', ex5 = 'We try to buy eco-friendly products whenever possible.', ex5_ko = '가능할 때마다 친환경 제품을 사려고 노력해요.' WHERE id = 'nuc_environment_11';
UPDATE nuances SET ex4 = 'Anthropogenic factors account for most recent warming.', ex4_ko = '인위적 요인들이 최근 온난화의 대부분을 차지해요.', ex5 = 'Natural climate variability also plays a smaller role.', ex5_ko = '자연 기후 변동성도 작은 역할을 해요.' WHERE id = 'nuc_environment_12';
UPDATE nuances SET ex4 = 'Cities are building resilience against extreme weather.', ex4_ko = '도시들은 극한 날씨에 대한 회복력을 쌓고 있어요.', ex5 = 'Poor communities often have the highest vulnerability to disasters.', ex5_ko = '가난한 지역사회들이 재난에 대한 취약성이 가장 높은 경우가 많아요.' WHERE id = 'nuc_environment_13';

-- ══════════════════════════════════════
-- ECONOMY
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'The price of fuel has fluctuated wildly this year.', ex4_ko = '연료 가격이 올해 크게 요동쳤어요.', ex5 = 'There''s a small service charge for online bookings.', ex5_ko = '온라인 예약에는 작은 서비스 요금이 있어요.' WHERE id = 'nuc_economy_01';
UPDATE nuances SET ex4 = 'Household income has barely kept up with inflation.', ex4_ko = '가계 소득이 인플레이션을 거의 따라가지 못했어요.', ex5 = 'The company''s revenue grew 20% last quarter.', ex5_ko = '회사의 매출이 지난 분기에 20% 성장했어요.' WHERE id = 'nuc_economy_02';
UPDATE nuances SET ex4 = 'I invested a small amount in an index fund.', ex4_ko = '저는 인덱스 펀드에 적은 금액을 투자했어요.', ex5 = 'They spent too much on the wedding and regret it now.', ex5_ko = '그들은 결혼식에 너무 많이 써서 지금 후회해요.' WHERE id = 'nuc_economy_03';
UPDATE nuances SET ex4 = 'Inflation has made everyday groceries noticeably more expensive.', ex4_ko = '인플레이션으로 일상 식료품이 눈에 띄게 더 비싸졌어요.', ex5 = 'Long deflation can be just as harmful as inflation.', ex5_ko = '장기 디플레이션은 인플레이션만큼이나 해로울 수 있어요.' WHERE id = 'nuc_economy_04';
UPDATE nuances SET ex4 = 'The bakery made a small profit in its first year.', ex4_ko = '그 빵집은 첫해에 작은 이익을 냈어요.', ex5 = 'Working remotely has many benefits, including more family time.', ex5_ko = '재택근무는 더 많은 가족 시간을 포함해 많은 혜택이 있어요.' WHERE id = 'nuc_economy_05';
UPDATE nuances SET ex4 = 'We''re sticking to a strict budget this year.', ex4_ko = '우리는 올해 엄격한 예산을 따르고 있어요.', ex5 = 'The forecast for next quarter is cautiously optimistic.', ex5_ko = '다음 분기 예측은 조심스럽게 낙관적이에요.' WHERE id = 'nuc_economy_06';
UPDATE nuances SET ex4 = 'Korea exports electronics and cars to many countries.', ex4_ko = '한국은 전자제품과 자동차를 많은 나라에 수출해요.', ex5 = 'The country imports most of its raw materials.', ex5_ko = '그 나라는 대부분의 원자재를 수입해요.' WHERE id = 'nuc_economy_07';
UPDATE nuances SET ex4 = 'Property taxes vary widely between regions.', ex4_ko = '재산세는 지역마다 크게 달라요.', ex5 = 'New tariffs raised the cost of imported electronics.', ex5_ko = '새 관세가 수입 전자제품 비용을 올렸어요.' WHERE id = 'nuc_economy_08';
UPDATE nuances SET ex4 = 'Many countries entered a recession after the global crisis.', ex4_ko = '많은 나라들이 글로벌 위기 후 경기 침체에 진입했어요.', ex5 = 'The Great Depression reshaped how governments approach the economy.', ex5_ko = '대공황은 정부가 경제에 접근하는 방식을 재형성했어요.' WHERE id = 'nuc_economy_09';
UPDATE nuances SET ex4 = 'The government announced new fiscal stimulus measures.', ex4_ko = '정부가 새 재정 부양책을 발표했어요.', ex5 = 'Monetary policy is the central bank''s main tool.', ex5_ko = '통화 정책은 중앙은행의 주요 도구예요.' WHERE id = 'nuc_economy_10';
UPDATE nuances SET ex4 = 'During the crisis, many banks faced a liquidity shortage.', ex4_ko = '위기 동안 많은 은행이 유동성 부족에 직면했어요.', ex5 = 'The firm remains solvent despite the recent losses.', ex5_ko = '회사는 최근 손실에도 불구하고 지급 능력을 유지하고 있어요.' WHERE id = 'nuc_economy_11';
UPDATE nuances SET ex4 = 'Austerity measures often hurt the most vulnerable people.', ex4_ko = '긴축 조치는 종종 가장 취약한 사람들에게 타격을 줘요.', ex5 = 'The stimulus package helped revive struggling small businesses.', ex5_ko = '경기 부양책이 어려움을 겪던 소상공인들을 회복시키는 데 도움이 됐어요.' WHERE id = 'nuc_economy_12';
UPDATE nuances SET ex4 = 'A few firms hold a near monopoly on cloud services.', ex4_ko = '소수 기업이 클라우드 서비스에서 거의 독점을 차지하고 있어요.', ex5 = 'The mobile market is essentially an oligopoly of three brands.', ex5_ko = '모바일 시장은 본질적으로 세 브랜드의 과점이에요.' WHERE id = 'nuc_economy_13';

-- ══════════════════════════════════════
-- CULTURE
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'Removing your shoes is a custom in many Asian homes.', ex4_ko = '신발을 벗는 것은 많은 아시아 가정의 관습이에요.', ex5 = 'Lunar New Year is a tradition that has lasted thousands of years.', ex5_ko = '음력 설은 수천 년 동안 이어진 전통이에요.' WHERE id = 'nuc_culture_01';
UPDATE nuances SET ex4 = 'It''s polite to thank the chef after a special meal.', ex4_ko = '특별한 식사 후 셰프에게 감사를 표하는 것은 예의예요.', ex5 = 'She was respectful of every elder in the village.', ex5_ko = '그녀는 마을의 모든 어르신을 존중했어요.' WHERE id = 'nuc_culture_02';
UPDATE nuances SET ex4 = 'The summer festival lit up the entire town.', ex4_ko = '여름 축제가 마을 전체를 밝혔어요.', ex5 = 'The opening ceremony was elegant and well-organized.', ex5_ko = '개회식은 우아하고 잘 진행됐어요.' WHERE id = 'nuc_culture_03';
UPDATE nuances SET ex4 = 'They wanted to share their cultural heritage with their kids.', ex4_ko = '그들은 자녀들과 문화유산을 나누고 싶어 했어요.', ex5 = 'Her legacy as a teacher continues through her former students.', ex5_ko = '그녀의 교사로서의 유산은 옛 학생들을 통해 계속돼요.' WHERE id = 'nuc_culture_04';
UPDATE nuances SET ex4 = 'New York is a deeply multicultural city.', ex4_ko = '뉴욕은 깊이 다문화적인 도시예요.', ex5 = 'The team became stronger with more diverse perspectives.', ex5_ko = '팀은 더 다양한 관점으로 더 강해졌어요.' WHERE id = 'nuc_culture_05';
UPDATE nuances SET ex4 = 'Some societies expect newcomers to fully assimilate.', ex4_ko = '어떤 사회들은 새로 온 사람들이 완전히 동화하기를 기대해요.', ex5 = 'Helping immigrants integrate enriches everyone.', ex5_ko = '이민자들의 통합을 돕는 것이 모두를 풍요롭게 해요.' WHERE id = 'nuc_culture_06';
UPDATE nuances SET ex4 = 'Movies often rely on stereotypes for quick characterization.', ex4_ko = '영화는 빠른 캐릭터 묘사를 위해 종종 고정관념에 의존해요.', ex5 = 'Prejudice can be reduced through meaningful contact.', ex5_ko = '편견은 의미 있는 접촉을 통해 줄어들 수 있어요.' WHERE id = 'nuc_culture_07';
UPDATE nuances SET ex4 = 'In some cultures, discussing personal income is a taboo.', ex4_ko = '어떤 문화에서는 개인 소득을 논하는 것이 금기예요.', ex5 = 'Business etiquette varies a lot across cultures.', ex5_ko = '비즈니스 예절은 문화마다 많이 달라요.' WHERE id = 'nuc_culture_08';
UPDATE nuances SET ex4 = 'Indigenous knowledge is helping researchers understand local ecosystems.', ex4_ko = '원주민 지식이 연구자들이 지역 생태계를 이해하는 데 도움을 주고 있어요.', ex5 = 'She''s a native speaker of three languages.', ex5_ko = '그녀는 세 가지 언어의 모국어 화자예요.' WHERE id = 'nuc_culture_09';
UPDATE nuances SET ex4 = 'Acculturation can lead to interesting blends of food and music.', ex4_ko = '문화 변용은 흥미로운 음식과 음악의 융합으로 이어질 수 있어요.', ex5 = 'Globalization has connected economies and cultures in new ways.', ex5_ko = '세계화는 경제와 문화를 새로운 방식으로 연결했어요.' WHERE id = 'nuc_culture_10';
UPDATE nuances SET ex4 = 'Cosmopolitan cities tend to attract people from many countries.', ex4_ko = '세계적인 도시들은 많은 나라 사람들을 끌어들이는 경향이 있어요.', ex5 = 'A parochial worldview can limit personal growth.', ex5_ko = '협소한 세계관은 개인 성장을 제한할 수 있어요.' WHERE id = 'nuc_culture_11';
UPDATE nuances SET ex4 = 'Ethnocentrism makes it hard to appreciate other ways of life.', ex4_ko = '자문화 중심주의는 다른 삶의 방식을 감상하기 어렵게 만들어요.', ex5 = 'Cultural relativism encourages us to suspend judgment.', ex5_ko = '문화 상대주의는 우리가 판단을 유보하도록 격려해요.' WHERE id = 'nuc_culture_12';
UPDATE nuances SET ex4 = 'Each generation captures its own zeitgeist in music.', ex4_ko = '각 세대는 음악으로 자기 시대정신을 포착해요.', ex5 = 'The rise of AI represents a new paradigm in work.', ex5_ko = 'AI의 부상은 일에서의 새로운 패러다임을 나타내요.' WHERE id = 'nuc_culture_13';

-- ══════════════════════════════════════
-- SPORTS
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'The boxing match went all twelve rounds.', ex4_ko = '권투 경기는 12라운드 끝까지 갔어요.', ex5 = 'Tonight''s baseball game starts at seven.', ex5_ko = '오늘 밤 야구 경기는 7시에 시작해요.' WHERE id = 'nuc_sports_01';
UPDATE nuances SET ex4 = 'We won the local league for the first time.', ex4_ko = '저희가 지역 리그에서 처음으로 우승했어요.', ex5 = 'She beat the defending champion in straight sets.', ex5_ko = '그녀는 디펜딩 챔피언을 스트레이트 세트로 이겼어요.' WHERE id = 'nuc_sports_02';
UPDATE nuances SET ex4 = 'I practice the piano for an hour every day.', ex4_ko = '저는 매일 한 시간씩 피아노를 연습해요.', ex5 = 'He trains hard during the off-season to stay in shape.', ex5_ko = '그는 비시즌에 컨디션 유지를 위해 열심히 훈련해요.' WHERE id = 'nuc_sports_03';
UPDATE nuances SET ex4 = 'She scored the winning goal in the last minute.', ex4_ko = '그녀는 마지막 1분에 결승 골을 넣었어요.', ex5 = 'A perfect game in bowling is 300 points.', ex5_ko = '볼링에서 퍼펙트 게임은 300점이에요.' WHERE id = 'nuc_sports_04';
UPDATE nuances SET ex4 = 'The referee called a foul on the goalkeeper.', ex4_ko = '심판이 골키퍼에게 반칙을 선언했어요.', ex5 = 'They were given a penalty after the late tackle.', ex5_ko = '늦은 태클 후 그들은 페널티를 받았어요.' WHERE id = 'nuc_sports_05';
UPDATE nuances SET ex4 = 'The coach motivated the players with a powerful speech.', ex4_ko = '코치는 강력한 연설로 선수들에게 동기를 부여했어요.', ex5 = 'Her personal trainer designed a recovery program after the injury.', ex5_ko = '그녀의 개인 트레이너가 부상 후 회복 프로그램을 짜줬어요.' WHERE id = 'nuc_sports_06';
UPDATE nuances SET ex4 = 'He started boxing as an amateur in his teens.', ex4_ko = '그는 십대 때 아마추어로 권투를 시작했어요.', ex5 = 'She turned professional after winning the national title.', ex5_ko = '그녀는 전국 타이틀을 따낸 후 프로로 전향했어요.' WHERE id = 'nuc_sports_07';
UPDATE nuances SET ex4 = 'Long-distance runners build stamina over many months.', ex4_ko = '장거리 주자들은 몇 달에 걸쳐 체력을 쌓아요.', ex5 = 'Endurance training helps her finish strong races.', ex5_ko = '지구력 훈련이 그녀가 어려운 경주를 끝까지 마치는 데 도움이 돼요.' WHERE id = 'nuc_sports_08';
UPDATE nuances SET ex4 = 'He is the reigning world champion in chess.', ex4_ko = '그는 체스의 현 세계 챔피언이에요.', ex5 = 'The winner of the local race got a small trophy.', ex5_ko = '지역 경주의 승자는 작은 트로피를 받았어요.' WHERE id = 'nuc_sports_09';
UPDATE nuances SET ex4 = 'Thousands of spectators cheered from the stands.', ex4_ko = '수천 명의 관중이 관중석에서 응원했어요.', ex5 = 'She''s been a loyal fan since she was a child.', ex5_ko = '그녀는 어렸을 때부터 충성스러운 팬이었어요.' WHERE id = 'nuc_sports_10';
UPDATE nuances SET ex4 = 'Real sportsmanship means winning and losing with grace.', ex4_ko = '진정한 스포츠맨십은 우아하게 이기고 지는 것을 의미해요.', ex5 = 'Some athletes use gamesmanship to gain a psychological edge.', ex5_ko = '어떤 선수들은 심리적 우위를 얻기 위해 게임즈맨십을 사용해요.' WHERE id = 'nuc_sports_11';
UPDATE nuances SET ex4 = 'The runner was banned after testing positive for doping.', ex4_ko = '그 주자는 도핑 양성 판정 후 출전 정지를 받았어요.', ex5 = 'Good nutrition is a key form of performance enhancement.', ex5_ko = '좋은 영양 섭취는 경기력 향상의 핵심 방법이에요.' WHERE id = 'nuc_sports_12';
UPDATE nuances SET ex4 = 'Dancers develop kinesthesia through years of training.', ex4_ko = '무용수들은 몇 년의 훈련을 통해 운동 감각을 개발해요.', ex5 = 'Good proprioception helps athletes stay balanced.', ex5_ko = '좋은 고유 감각은 운동선수들이 균형을 유지하는 데 도움이 돼요.' WHERE id = 'nuc_sports_13';

-- ══════════════════════════════════════
-- DISCUSSION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'Let''s discuss the next steps over coffee.', ex4_ko = '커피 마시며 다음 단계를 논의해요.', ex5 = 'They argued for hours but couldn''t agree.', ex5_ko = '그들은 몇 시간 동안 언쟁했지만 동의할 수 없었어요.' WHERE id = 'nuc_discussion_01';
UPDATE nuances SET ex4 = 'I''d love to hear your opinion on the new policy.', ex4_ko = '새 정책에 대한 당신의 의견을 듣고 싶어요.', ex5 = 'From a parent''s point of view, the school is excellent.', ex5_ko = '부모의 관점에서 그 학교는 훌륭해요.' WHERE id = 'nuc_discussion_02';
UPDATE nuances SET ex4 = 'I agree with most of what she said.', ex4_ko = '그녀가 말한 대부분에 동의해요.', ex5 = 'Patients must give consent before any procedure.', ex5_ko = '환자들은 어떤 시술 전에도 동의를 해야 해요.' WHERE id = 'nuc_discussion_03';
UPDATE nuances SET ex4 = 'The class debated whether AI should be regulated.', ex4_ko = '수업에서는 AI가 규제되어야 하는지 토론했어요.', ex5 = 'The committee deliberated late into the night.', ex5_ko = '위원회는 밤늦게까지 심의했어요.' WHERE id = 'nuc_discussion_04';
UPDATE nuances SET ex4 = 'I''ll concede that you''re right about that detail.', ex4_ko = '그 세부 사항에 대해서는 당신이 옳다는 걸 인정할게요.', ex5 = 'They reached a fair compromise on the price.', ex5_ko = '그들은 가격에서 공정한 타협을 이뤘어요.' WHERE id = 'nuc_discussion_05';
UPDATE nuances SET ex4 = 'She asserted her position confidently in the meeting.', ex4_ko = '그녀는 회의에서 자신 있게 자기 입장을 주장했어요.', ex5 = 'He claimed to have data, but never showed any.', ex5_ko = '그는 데이터가 있다고 주장했지만 보여주지 않았어요.' WHERE id = 'nuc_discussion_06';
UPDATE nuances SET ex4 = 'The research convinced me to change my approach.', ex4_ko = '그 연구가 제가 접근 방식을 바꾸도록 납득시켰어요.', ex5 = 'She persuaded her parents to let her study abroad.', ex5_ko = '그녀는 부모님이 해외 유학을 허락하시도록 설득했어요.' WHERE id = 'nuc_discussion_07';
UPDATE nuances SET ex4 = 'His later statement contradicted what he said earlier.', ex4_ko = '그의 나중 발언은 앞서 한 말과 모순됐어요.', ex5 = 'She countered his argument with three solid examples.', ex5_ko = '그녀는 세 가지 탄탄한 예시로 그의 주장에 반론했어요.' WHERE id = 'nuc_discussion_08';
UPDATE nuances SET ex4 = 'The implication of her tone was disappointment.', ex4_ko = '그녀 어조의 함의는 실망이었어요.', ex5 = 'From the data, we can make a reasonable inference.', ex5_ko = '데이터에서 우리는 합리적인 추론을 할 수 있어요.' WHERE id = 'nuc_discussion_09';
UPDATE nuances SET ex4 = 'That argument contains a classic logical fallacy.', ex4_ko = '그 주장은 고전적인 논리적 오류를 담고 있어요.', ex5 = 'Everyone has some unconscious bias to work on.', ex5_ko = '모든 사람은 다뤄야 할 어느 정도의 무의식적 편향이 있어요.' WHERE id = 'nuc_discussion_10';
UPDATE nuances SET ex4 = 'Political speeches often rely on hollow rhetoric.', ex4_ko = '정치 연설은 종종 공허한 수사학에 의존해요.', ex5 = 'Her eloquence held the audience for the full hour.', ex5_ko = '그녀의 웅변이 청중을 한 시간 내내 사로잡았어요.' WHERE id = 'nuc_discussion_11';
UPDATE nuances SET ex4 = 'His speech was sophistry wrapped in fancy words.', ex4_ko = '그의 연설은 화려한 말로 포장된 궤변이었어요.', ex5 = 'Hegelian dialectic moves through thesis, antithesis, and synthesis.', ex5_ko = '헤겔의 변증법은 정-반-합을 거쳐 진행돼요.' WHERE id = 'nuc_discussion_12';
UPDATE nuances SET ex4 = 'Some statements are accepted as axioms in mathematics.', ex4_ko = '수학에서 어떤 진술들은 공리로 받아들여져요.', ex5 = 'A postulate forms the starting point of a theory.', ex5_ko = '공준은 이론의 출발점을 형성해요.' WHERE id = 'nuc_discussion_13';

-- ══════════════════════════════════════
-- PRESENTATION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'She presented her findings clearly and persuasively.', ex4_ko = '그녀는 자기 연구 결과를 명확하고 설득력 있게 발표했어요.', ex5 = 'He reported the team''s progress to the executives.', ex5_ko = '그는 임원진에게 팀의 진행 상황을 보고했어요.' WHERE id = 'nuc_presentation_01';
UPDATE nuances SET ex4 = 'Let me give you a quick outline of the agenda.', ex4_ko = '안건의 빠른 개요를 알려드릴게요.', ex5 = 'Here is a one-page summary of the main findings.', ex5_ko = '주요 결과의 한 페이지 요약이 여기 있어요.' WHERE id = 'nuc_presentation_02';
UPDATE nuances SET ex4 = 'Can we go back to the second slide for a moment?', ex4_ko = '잠시 두 번째 슬라이드로 돌아갈 수 있어요?', ex5 = 'Please take a handout from the table on your way in.', ex5_ko = '들어오는 길에 테이블에서 유인물 한 부 가져가세요.' WHERE id = 'nuc_presentation_03';
UPDATE nuances SET ex4 = 'Let me introduce today''s key questions briefly.', ex4_ko = '오늘의 핵심 질문들을 간단히 도입할게요.', ex5 = 'To conclude, we recommend a three-step approach.', ex5_ko = '결론적으로 우리는 3단계 접근법을 권장해요.' WHERE id = 'nuc_presentation_04';
UPDATE nuances SET ex4 = 'She engaged the audience by asking thoughtful questions.', ex4_ko = '그녀는 사려 깊은 질문으로 청중을 참여시켰어요.', ex5 = 'Workshops let participants interact in small groups.', ex5_ko = '워크숍은 참가자들이 소그룹으로 상호작용하게 해줘요.' WHERE id = 'nuc_presentation_05';
UPDATE nuances SET ex4 = 'I''d like to emphasize that this is just the first phase.', ex4_ko = '이건 첫 단계일 뿐이라는 점을 강조하고 싶어요.', ex5 = 'The graph highlights the biggest changes from last year.', ex5_ko = '그래프는 작년 대비 가장 큰 변화를 부각시켜요.' WHERE id = 'nuc_presentation_06';
UPDATE nuances SET ex4 = 'Could you clarify what you mean by "user-first"?', ex4_ko = '"사용자 우선"이 무슨 의미인지 명확히 해주실 수 있어요?', ex5 = 'Could you elaborate on the budget assumptions?', ex5_ko = '예산 가정에 대해 자세히 설명해 주실 수 있어요?' WHERE id = 'nuc_presentation_07';
UPDATE nuances SET ex4 = 'A coherent argument is easier for the audience to follow.', ex4_ko = '논리적으로 일관된 주장이 청중이 따라가기 더 쉬워요.', ex5 = 'The slides were beautifully cohesive in style.', ex5_ko = '슬라이드는 스타일이 아름답게 유기적으로 연결돼 있었어요.' WHERE id = 'nuc_presentation_08';
UPDATE nuances SET ex4 = 'The pitch was persuasive enough to win the contract.', ex4_ko = '그 피치는 계약을 따낼 만큼 설득력이 있었어요.', ex5 = 'The training session was informative and well-paced.', ex5_ko = '교육 세션은 정보가 풍부하고 진행 속도가 좋았어요.' WHERE id = 'nuc_presentation_09';
UPDATE nuances SET ex4 = 'She opened with a moving anecdote about her grandmother.', ex4_ko = '그녀는 할머니에 관한 감동적인 일화로 시작했어요.', ex5 = 'A single striking statistic can change the room.', ex5_ko = '단 하나의 강력한 통계가 회장 분위기를 바꿀 수 있어요.' WHERE id = 'nuc_presentation_10';
UPDATE nuances SET ex4 = 'Good posture sends a message of confidence.', ex4_ko = '좋은 자세는 자신감의 메시지를 전달해요.', ex5 = 'His hand gestures helped emphasize each key point.', ex5_ko = '그의 손짓이 각 핵심 요점을 강조하는 데 도움이 됐어요.' WHERE id = 'nuc_presentation_11';
UPDATE nuances SET ex4 = 'Her ethos as a researcher made the audience trust the data.', ex4_ko = '연구자로서의 그녀의 신뢰성이 청중이 데이터를 신뢰하게 만들었어요.', ex5 = 'The film''s pathos moved many viewers to tears.', ex5_ko = '영화의 감성 호소가 많은 시청자를 눈물 짓게 했어요.' WHERE id = 'nuc_presentation_12';
UPDATE nuances SET ex4 = 'Good prosody can turn a flat speech into an engaging one.', ex4_ko = '좋은 운율은 평이한 연설을 매력적인 연설로 만들 수 있어요.', ex5 = 'Rising intonation at the end signals a question.', ex5_ko = '끝의 상승 억양은 질문을 나타내요.' WHERE id = 'nuc_presentation_13';

-- ══════════════════════════════════════
-- NEGOTIATION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'They offered a generous discount to close the deal.', ex4_ko = '그들은 거래를 성사시키기 위해 넉넉한 할인을 제안했어요.', ex5 = 'I propose we meet again next Tuesday to finalize the terms.', ex5_ko = '조건을 마무리하기 위해 다음 주 화요일에 다시 만날 것을 제안해요.' WHERE id = 'nuc_negotiation_01';
UPDATE nuances SET ex4 = 'She accepted the offer after a day of thought.', ex4_ko = '그녀는 하루의 고민 끝에 제안을 수락했어요.', ex5 = 'We finally agreed on a delivery timeline.', ex5_ko = '우리는 마침내 배송 일정에 합의했어요.' WHERE id = 'nuc_negotiation_02';
UPDATE nuances SET ex4 = 'They demanded a clear explanation for the delay.', ex4_ko = '그들은 지연에 대한 명확한 설명을 요구했어요.', ex5 = 'She politely requested a copy of the contract.', ex5_ko = '그녀는 정중하게 계약서 사본을 요청했어요.' WHERE id = 'nuc_negotiation_03';
UPDATE nuances SET ex4 = 'The deadline for offers is this Friday.', ex4_ko = '제안 마감은 이번 금요일이에요.', ex5 = 'Let''s map out the project timeline together.', ex5_ko = '함께 프로젝트 일정을 그려봐요.' WHERE id = 'nuc_negotiation_04';
UPDATE nuances SET ex4 = 'They made small concessions to keep the deal alive.', ex4_ko = '그들은 거래를 살리기 위해 작은 양보를 했어요.', ex5 = 'There''s always a trade-off between cost and quality.', ex5_ko = '비용과 품질 사이에는 항상 절충이 있어요.' WHERE id = 'nuc_negotiation_05';
UPDATE nuances SET ex4 = 'Having competing offers gave her real leverage.', ex4_ko = '경쟁 제안들이 그녀에게 진정한 협상 우위를 줬어요.', ex5 = 'Workers gain bargaining power when they unite.', ex5_ko = '근로자들은 단결할 때 협상력을 얻어요.' WHERE id = 'nuc_negotiation_06';
UPDATE nuances SET ex4 = 'They signed the contract after months of negotiation.', ex4_ko = '몇 달의 협상 끝에 그들은 계약서에 서명했어요.', ex5 = 'We reached a verbal agreement that still needs to be put in writing.', ex5_ko = '우리는 구두 합의에 이르렀지만 서면화가 필요해요.' WHERE id = 'nuc_negotiation_07';
UPDATE nuances SET ex4 = 'A trained mediator helped them find common ground.', ex4_ko = '훈련된 중재자가 그들이 공통점을 찾도록 도왔어요.', ex5 = 'Disputes that can''t be resolved often go to arbitration.', ex5_ko = '해결되지 않는 분쟁은 종종 중재로 가게 돼요.' WHERE id = 'nuc_negotiation_08';
UPDATE nuances SET ex4 = 'Be clear about your bottom line before walking into the room.', ex4_ko = '회의실에 들어가기 전에 최저 수용 조건을 명확히 하세요.', ex5 = 'Knowing your walkaway point keeps you from settling for less.', ex5_ko = '협상 철수 한계선을 알면 못한 조건에 만족하지 않게 돼요.' WHERE id = 'nuc_negotiation_09';
UPDATE nuances SET ex4 = 'A strong BATNA gives you confidence at the table.', ex4_ko = '강한 BATNA는 협상 자리에서 자신감을 줘요.', ex5 = 'If the ZOPA is too narrow, you won''t reach a deal.', ex5_ko = '합의 가능 영역이 너무 좁으면 거래에 이르지 못해요.' WHERE id = 'nuc_negotiation_10';
UPDATE nuances SET ex4 = 'Principled negotiation focuses on interests, not positions.', ex4_ko = '원칙 기반 협상은 입장이 아닌 이해관계에 집중해요.', ex5 = 'Positional bargaining can turn quickly into a deadlock.', ex5_ko = '입장 기반 협상은 빠르게 교착 상태로 변할 수 있어요.' WHERE id = 'nuc_negotiation_11';
UPDATE nuances SET ex4 = 'The agreement was ratified at the next meeting.', ex4_ko = '그 합의는 다음 회의에서 비준됐어요.', ex5 = 'The mayor publicly endorsed the new community plan.', ex5_ko = '시장은 새 지역사회 계획을 공개적으로 지지했어요.' WHERE id = 'nuc_negotiation_12';
UPDATE nuances SET ex4 = 'Talks reached an impasse over the issue of overtime pay.', ex4_ko = '협상이 초과 근무 수당 문제로 교착 상태에 빠졌어요.', ex5 = 'The complete deadlock surprised everyone in the room.', ex5_ko = '완전한 데드락이 회장 모두를 놀라게 했어요.' WHERE id = 'nuc_negotiation_13';




