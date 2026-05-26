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
