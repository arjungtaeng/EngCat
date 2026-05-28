-- ============================================
-- EngCat Priority Topic Bulk Migration
-- 우선순위 토픽 단어/패턴 일괄 추가
-- 토픽: cafe, health, home, shopping, education, news, emotion, academic
-- 각 토픽: 210 단어 + 42 패턴
-- 총 1,680개 단어 + 336개 패턴 추가 (중복 자동 무시)
-- ============================================


-- ============================================
-- TOPIC: cafe
-- ============================================
-- EngCat — Cafe & Dining (카페·식당) 확장 단어/문장 데이터
-- 210 words (35 per CEFR level: A1~C2) + 42 patterns (7 per level)
-- NOTE: w_cafe_01~10 already exist — new IDs start from w_cafe_A1_01

-- ══════════════════════════════════════
-- WORDS — A1 (35개)
-- 핵심 테마: eat, drink, food, water, coffee, tea, menu, table, hungry, delicious
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_cafe_A1_01','eat','/iːt/','verb','먹다','To put food in your mouth and swallow it.','Let''s {eat} together.','같이 먹어요.','eat','A1','cafe',1,'eating food restaurant meal together'),
('w_cafe_A1_02','drink','/drɪŋk/','verb','마시다','To take liquid into your mouth and swallow it.','I want to {drink} some water.','물을 마시고 싶어요.','drink','A1','cafe',1,'drinking water glass cafe'),
('w_cafe_A1_03','food','/fuːd/','noun','음식','Things that people or animals eat.','This {food} is so good.','이 음식 정말 맛있어요.','food','A1','cafe',1,'food plate restaurant delicious'),
('w_cafe_A1_04','water','/ˈwɔːtər/','noun','물','The clear liquid that comes from rain.','Can I have some {water}, please?','물 좀 주실 수 있나요?','water','A1','cafe',1,'water glass restaurant table'),
('w_cafe_A1_05','coffee','/ˈkɒfi/','noun','커피','A hot drink made from roasted coffee beans.','I''d like a {coffee}, please.','커피 한 잔 주세요.','coffee','A1','cafe',1,'coffee cup hot drink cafe'),
('w_cafe_A1_06','tea','/tiː/','noun','차','A hot drink made by soaking tea leaves in boiling water.','I prefer {tea} in the morning.','아침에는 차를 더 좋아해요.','tea','A1','cafe',1,'tea cup hot drink morning'),
('w_cafe_A1_07','menu','/ˈmenjuː/','noun','메뉴','A list of dishes available in a restaurant.','Could I see the {menu}?','메뉴판 볼 수 있을까요?','menu','A1','cafe',1,'restaurant menu book reading'),
('w_cafe_A1_08','table','/ˈteɪbl/','noun','테이블','A piece of furniture with a flat top at which people sit to eat.','Is this {table} free?','이 테이블 비어 있나요?','table','A1','cafe',1,'restaurant table chairs empty'),
('w_cafe_A1_09','hungry','/ˈhʌŋɡri/','adjective','배고픈','Feeling the need to eat food.','I''m so {hungry} right now.','지금 너무 배고파요.','hungry','A1','cafe',1,'hungry person stomach food craving'),
('w_cafe_A1_10','delicious','/dɪˈlɪʃəs/','adjective','맛있는','Having a very pleasant taste or smell.','This cake is absolutely {delicious}!','이 케이크 정말 맛있어요!','delicious','A1','cafe',1,'delicious food cake smile enjoyment'),
('w_cafe_A1_11','please','/pliːz/','adverb','부탁해요','Used to make a request more polite.','One coffee, {please}.','커피 하나 부탁해요.','please','A1','cafe',1,'polite request service staff cafe'),
('w_cafe_A1_12','hot','/hɒt/','adjective','뜨거운','Having a high temperature.','Be careful, the soup is very {hot}.','조심하세요, 수프가 매우 뜨거워요.','hot','A1','cafe',1,'hot soup steam food bowl'),
('w_cafe_A1_13','cold','/kəʊld/','adjective','차가운','Having a low temperature.','I''d like a {cold} drink.','차가운 음료를 주세요.','cold','A1','cafe',1,'cold drink ice glass refreshing'),
('w_cafe_A1_14','big','/bɪɡ/','adjective','큰','Of large size.','Can I have the {big} size?','큰 사이즈로 주세요.','big','A1','cafe',2,'large size cup coffee drink'),
('w_cafe_A1_15','small','/smɔːl/','adjective','작은','Of little size.','Just a {small} cup, thank you.','작은 컵으로 주세요.','small','A1','cafe',2,'small cup coffee size drink'),
('w_cafe_A1_16','more','/mɔːr/','adverb','더','A greater amount.','Can I have {more} bread?','빵 더 주실 수 있나요?','more','A1','cafe',1,'bread basket restaurant refill more'),
('w_cafe_A1_17','ready','/ˈredi/','adjective','준비된','Prepared to do something.','Are you {ready} to order?','주문하실 준비 됐나요?','ready','A1','cafe',1,'ready order restaurant waiter'),
('w_cafe_A1_18','good','/ɡʊd/','adjective','좋은','Of high quality or pleasant standard.','Everything here is so {good}.','여기 모든 게 다 맛있어요.','good','A1','cafe',1,'good food restaurant smile happy'),
('w_cafe_A1_19','open','/ˈəʊpən/','adjective','영업 중인','Ready to receive customers.','Is the café still {open}?','카페 아직 문 열었나요?','open','A1','cafe',2,'cafe open sign door entrance'),
('w_cafe_A1_20','close','/kləʊz/','verb','문을 닫다','To stop being available to customers.','What time do you {close}?','몇 시에 문 닫아요?','close','A1','cafe',2,'cafe closing time sign door'),
('w_cafe_A1_21','price','/praɪs/','noun','가격','The amount of money expected for something.','What''s the {price} of this?','이거 얼마예요?','price','A1','cafe',1,'price tag menu cost cafe'),
('w_cafe_A1_22','milk','/mɪlk/','noun','우유','A white liquid produced by cows.','Can I add {milk} to my coffee?','커피에 우유 넣어줄 수 있나요?','milk','A1','cafe',1,'milk pour coffee white cup'),
('w_cafe_A1_23','sugar','/ˈʃʊɡər/','noun','설탕','A sweet substance used to sweeten food or drinks.','No {sugar}, please.','설탕은 빼주세요.','sugar','A1','cafe',2,'sugar spoon coffee sweet white'),
('w_cafe_A1_24','bread','/bred/','noun','빵','A food made from flour, water, and yeast.','The {bread} here is freshly baked.','여기 빵은 막 구운 거예요.','bread','A1','cafe',1,'fresh bread bakery loaf oven'),
('w_cafe_A1_25','cake','/keɪk/','noun','케이크','A sweet food made by baking a mixture.','I''ll have a slice of {cake}.','케이크 한 조각 주세요.','cake','A1','cafe',2,'slice cake plate dessert fork'),
('w_cafe_A1_26','soup','/suːp/','noun','수프','A liquid food made by cooking vegetables or meat.','The {soup} of the day is tomato.','오늘의 수프는 토마토예요.','soup','A1','cafe',2,'soup bowl spoon hot restaurant'),
('w_cafe_A1_27','juice','/dʒuːs/','noun','주스','A drink made from the liquid of fruit or vegetables.','Can I get an orange {juice}?','오렌지 주스 주실 수 있나요?','juice','A1','cafe',1,'orange juice glass fresh fruit'),
('w_cafe_A1_28','bill','/bɪl/','noun','계산서','A document listing the price of things you have bought.','Can we get the {bill}, please?','계산서 주세요.','bill','A1','cafe',1,'restaurant bill check payment table'),
('w_cafe_A1_29','free','/friː/','adjective','무료의','Not costing any money.','Is the Wi-Fi {free} here?','여기 와이파이 무료인가요?','free','A1','cafe',2,'wifi free cafe sign internet'),
('w_cafe_A1_30','wait','/weɪt/','verb','기다리다','To stay in a place until something happens.','How long do we have to {wait}?','얼마나 기다려야 하나요?','wait','A1','cafe',2,'waiting line queue restaurant entrance'),
('w_cafe_A1_31','seat','/siːt/','noun','자리','A place where someone sits.','Is this {seat} taken?','이 자리 있나요?','seat','A1','cafe',1,'cafe seat chair empty taken'),
('w_cafe_A1_32','outside','/ˌaʊtˈsaɪd/','adverb','바깥에','In the open air, not inside a building.','Can we sit {outside}?','바깥에 앉을 수 있나요?','outside','A1','cafe',2,'outdoor seating cafe terrace sunny'),
('w_cafe_A1_33','inside','/ˌɪnˈsaɪd/','adverb','안쪽에','In the interior of a building.','I prefer to sit {inside}.','안쪽에 앉고 싶어요.','inside','A1','cafe',2,'cafe interior inside cozy warm'),
('w_cafe_A1_34','fresh','/freʃ/','adjective','신선한','Recently made or obtained.','Is this {fresh} today?','오늘 신선한 건가요?','fresh','A1','cafe',1,'fresh ingredients vegetables market morning'),
('w_cafe_A1_35','sweet','/swiːt/','adjective','단','Having the pleasant taste of sugar.','This is really {sweet}.','이게 정말 달아요.','sweet','A1','cafe',2,'sweet dessert cake sugar taste')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — A2 (35개)
-- 핵심 테마: order, waiter, bill, reservation, takeaway, portion, dessert, vegetarian, spicy, mild
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_cafe_A2_01','order','/ˈɔːrdər/','verb','주문하다','To ask for food or drink in a restaurant.','Are you ready to {order}?','주문하실 준비 됐나요?','order','A2','cafe',1,'waiter order restaurant customer menu'),
('w_cafe_A2_02','waiter','/ˈweɪtər/','noun','웨이터','A man who brings food and drinks to people in a restaurant.','Excuse me, {waiter}!','저기요, 웨이터!','waiter','A2','cafe',1,'waiter apron restaurant service smile'),
('w_cafe_A2_03','reservation','/ˌrezərˈveɪʃən/','noun','예약','An arrangement to have a seat kept for you.','I have a {reservation} for six o''clock.','6시로 예약했어요.','reservation','A2','cafe',1,'restaurant reservation booking table'),
('w_cafe_A2_04','takeaway','/ˈteɪkəweɪ/','noun','포장 주문','Food bought to eat somewhere other than the restaurant.','I''ll get that as a {takeaway}.','그걸 포장으로 주세요.','takeaway','A2','cafe',1,'takeaway coffee cup bag carry street'),
('w_cafe_A2_05','dessert','/dɪˈzɜːrt/','noun','디저트','The sweet food eaten at the end of a meal.','Do you have room for {dessert}?','디저트 드실 수 있어요?','dessert','A2','cafe',1,'dessert chocolate cake plate sweet'),
('w_cafe_A2_06','vegetarian','/ˌvedʒɪˈteəriən/','adjective','채식의','Not containing meat or fish.','Do you have {vegetarian} options?','채식 옵션이 있나요?','vegetarian','A2','cafe',1,'vegetarian salad green healthy food'),
('w_cafe_A2_07','spicy','/ˈspaɪsi/','adjective','매운','Having a strong, hot flavor from spices.','Is this dish very {spicy}?','이 요리 많이 매워요?','spicy','A2','cafe',1,'spicy chili food red hot pepper'),
('w_cafe_A2_08','mild','/maɪld/','adjective','순한, 맵지 않은','Not strongly flavored or spicy.','I''d prefer something {mild}.','순한 걸로 주세요.','mild','A2','cafe',1,'mild food gentle flavor soup light'),
('w_cafe_A2_09','portion','/ˈpɔːrʃən/','noun','1인분, 양','An amount of food served to one person.','The {portion} is very generous here.','여기 양이 정말 넉넉해요.','portion','A2','cafe',1,'large portion food plate generous restaurant'),
('w_cafe_A2_10','tip','/tɪp/','noun','팁','Money given to a waiter as a reward for good service.','Should we leave a {tip}?','팁을 남길까요?','tip','A2','cafe',1,'tip money restaurant table service'),
('w_cafe_A2_11','receipt','/rɪˈsiːt/','noun','영수증','A piece of paper showing money paid.','Can I have a {receipt}, please?','영수증 주실 수 있나요?','receipt','A2','cafe',1,'receipt paper payment purchase cafe'),
('w_cafe_A2_12','change','/tʃeɪndʒ/','noun','거스름돈','Money returned when you have paid more than the cost.','Keep the {change}.','잔돈은 가지세요.','change','A2','cafe',2,'change coins money cash payment'),
('w_cafe_A2_13','flavor','/ˈfleɪvər/','noun','맛, 풍미','The taste of a food or drink.','What {flavor} is this ice cream?','이 아이스크림 무슨 맛이에요?','flavor','A2','cafe',1,'ice cream flavors colors dessert shop'),
('w_cafe_A2_14','sauce','/sɔːs/','noun','소스','A liquid served with food to add flavor.','Can I get extra {sauce}?','소스 더 주실 수 있나요?','sauce','A2','cafe',2,'sauce bottle dipping food restaurant'),
('w_cafe_A2_15','side','/saɪd/','noun','사이드 메뉴','A small dish served alongside the main course.','What {side} dishes come with it?','사이드 메뉴는 뭐가 나와요?','side','A2','cafe',2,'side dish salad restaurant plate food'),
('w_cafe_A2_16','main','/meɪn/','adjective','메인의','Most important or biggest.','What''s today''s {main} course?','오늘 메인 요리는 뭔가요?','main','A2','cafe',1,'main course dish plate restaurant dinner'),
('w_cafe_A2_17','starter','/ˈstɑːrtər/','noun','전채 요리','A small dish eaten at the start of a meal.','Shall we skip the {starter}?','전채 요리는 건너뛸까요?','starter','A2','cafe',1,'starter appetizer small plate food restaurant'),
('w_cafe_A2_18','gluten','/ˈɡluːtən/','noun','글루텐','A protein found in wheat that some people cannot eat.','Is this {gluten}-free?','이거 글루텐 프리인가요?','gluten','A2','cafe',2,'gluten free label bread wheat food'),
('w_cafe_A2_19','ingredient','/ɪnˈɡriːdiənt/','noun','재료','One of the items used to make a dish.','What are the {ingredients} in this?','이 재료가 뭔가요?','ingredient','A2','cafe',1,'ingredients cooking kitchen food preparation'),
('w_cafe_A2_20','sharing','/ˈʃeərɪŋ/','adjective','공유용','Intended to be divided among people.','Is this a {sharing} platter?','이게 쉐어링 플레터인가요?','sharing','A2','cafe',2,'sharing platter food friends table together'),
('w_cafe_A2_21','dine','/daɪn/','verb','식사하다','To eat dinner, especially in a formal setting.','We''d like to {dine} here tonight.','오늘 저녁 여기서 식사하고 싶어요.','dine','A2','cafe',1,'dining restaurant elegant dinner table candle'),
('w_cafe_A2_22','takeout','/ˈteɪkaʊt/','noun','포장','Food ordered from a restaurant to eat elsewhere.','Can I place a {takeout} order?','포장 주문 할 수 있나요?','takeout','A2','cafe',1,'takeout bag food packaging restaurant counter'),
('w_cafe_A2_23','combo','/ˈkɒmbəʊ/','noun','세트','A meal that includes several items together at a discount.','I''ll have the lunch {combo}.','점심 세트로 주세요.','combo','A2','cafe',2,'combo meal set food drink fries'),
('w_cafe_A2_24','refund','/ˈriːfʌnd/','noun','환불','Money paid back to a customer.','Can I get a {refund} for this order?','이 주문 환불 받을 수 있나요?','refund','A2','cafe',2,'refund receipt return policy customer'),
('w_cafe_A2_25','napkin','/ˈnæpkɪn/','noun','냅킨','A piece of cloth or paper used when eating.','Could you bring some {napkins}?','냅킨 좀 가져다 주실 수 있나요?','napkins','A2','cafe',2,'napkin table restaurant folded cloth'),
('w_cafe_A2_26','fork','/fɔːrk/','noun','포크','A utensil with prongs used to eat food.','I need another {fork}.','포크가 하나 더 필요해요.','fork','A2','cafe',2,'fork cutlery restaurant table setting'),
('w_cafe_A2_27','straw','/strɔː/','noun','빨대','A thin tube used to suck up a drink.','Could I get a {straw}?','빨대 주실 수 있나요?','straw','A2','cafe',2,'straw drink cup cafe plastic paper'),
('w_cafe_A2_28','half','/hɑːf/','noun','절반','One of two equal parts.','Can we get a {half} portion?','반 인분으로 주실 수 있나요?','half','A2','cafe',2,'half portion food plate sharing'),
('w_cafe_A2_29','busy','/ˈbɪzi/','adjective','바쁜','Having a lot of customers or activity.','Is the restaurant very {busy} tonight?','오늘 저녁 식당 많이 바빠요?','busy','A2','cafe',2,'busy restaurant crowded evening dinner rush'),
('w_cafe_A2_30','wait time','/weɪt taɪm/','noun','대기 시간','The time spent waiting for a table or food.','What''s the {wait time} for a table?','테이블까지 대기 시간이 얼마나 돼요?','wait time','A2','cafe',1,'waiting line restaurant queue time estimate'),
('w_cafe_A2_31','wrap','/ræp/','noun','랩 샌드위치','Food wrapped in a thin piece of bread or tortilla.','I''ll have the chicken {wrap}.','치킨 랩으로 주세요.','wrap','A2','cafe',2,'wrap sandwich food lunch cafe counter'),
('w_cafe_A2_32','bowl','/bəʊl/','noun','그릇','A round dish used to serve food.','Can I get that in a {bowl}?','그걸 그릇에 담아 줄 수 있나요?','bowl','A2','cafe',2,'bowl soup rice food ceramic restaurant'),
('w_cafe_A2_33','extra','/ˈekstrə/','adjective','추가의','More than what is usual or expected.','Can I get {extra} cheese?','치즈 추가로 주실 수 있나요?','extra','A2','cafe',1,'extra cheese topping food add-on restaurant'),
('w_cafe_A2_34','cut','/kʌt/','verb','자르다','To divide food into pieces.','Can you {cut} the pizza into eight slices?','피자를 여덟 조각으로 잘라주실 수 있나요?','cut','A2','cafe',2,'cutting pizza slices board knife restaurant'),
('w_cafe_A2_35','enjoy','/ɪnˈdʒɔɪ/','verb','즐기다','To take pleasure in something.','I hope you {enjoy} your meal.','식사 맛있게 하세요.','enjoy','A2','cafe',1,'enjoying meal restaurant happy customer smile')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B1 (35개)
-- 핵심 테마: cuisine, appetizer, entrée, pairing, ambience, allergies, complimentary, specialty, recommend, refill
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_cafe_B1_01','cuisine','/kwɪˈziːn/','noun','요리, 요리법','A style of cooking associated with a particular country or region.','I love Italian {cuisine}.','이탈리아 요리를 정말 좋아해요.','cuisine','B1','cafe',1,'italian cuisine food restaurant pasta'),
('w_cafe_B1_02','entrée','/ˈɒntreɪ/','noun','메인 요리','The main dish of a meal.','What {entrée} would you recommend?','메인 요리로 뭘 추천하시나요?','entrée','B1','cafe',1,'main dish entree plate restaurant dinner'),
('w_cafe_B1_03','pairing','/ˈpeərɪŋ/','noun','페어링, 조합','A combination of food and wine or other items that complement each other.','The sommelier suggested a wine {pairing}.','소믈리에가 와인 페어링을 추천해 줬어요.','pairing','B1','cafe',2,'wine pairing food restaurant glass dinner'),
('w_cafe_B1_04','ambience','/ˈæmbiəns/','noun','분위기','The character and atmosphere of a place.','The {ambience} here is perfect for a date.','여기 분위기가 데이트하기 딱 좋아요.','ambience','B1','cafe',1,'restaurant ambience lighting romantic atmosphere'),
('w_cafe_B1_05','allergies','/ˈælədʒiz/','noun','알레르기들','Medical conditions causing reactions to certain substances.','I have {allergies} to shellfish.','저는 조개류 알레르기가 있어요.','allergies','B1','cafe',1,'food allergy shellfish restriction menu'),
('w_cafe_B1_06','complimentary','/ˌkɒmplɪˈmentri/','adjective','무료 제공되는','Given free of charge as a courtesy.','The appetizers are {complimentary} today.','오늘 애피타이저는 서비스예요.','complimentary','B1','cafe',2,'complimentary service free food restaurant'),
('w_cafe_B1_07','specialty','/ˈspeʃəlti/','noun','특선 요리, 전문','The dish or item that a place is best known for.','The lamb is the house {specialty}.','양고기가 이 집 특선 요리예요.','specialty','B1','cafe',1,'chef special dish restaurant signature'),
('w_cafe_B1_08','refill','/ˈriːfɪl/','noun','리필','A fresh supply of a drink after the first is consumed.','Free {refills} on soft drinks.','탄산음료는 리필 무료예요.','refill','B1','cafe',1,'refill drink glass water restaurant free'),
('w_cafe_B1_09','seasonal','/ˈsiːzənəl/','adjective','제철의, 시즌별','Related to a particular time of year.','We use only {seasonal} produce.','저희는 제철 재료만 사용해요.','seasonal','B1','cafe',1,'seasonal vegetables fresh market produce autumn'),
('w_cafe_B1_10','authentic','/ɔːˈθentɪk/','adjective','정통의','Genuine, made in the traditional way.','This is {authentic} Korean barbecue.','이건 정통 한국식 바비큐예요.','authentic','B1','cafe',1,'authentic traditional cooking restaurant culture'),
('w_cafe_B1_11','reservation','/ˌrezərˈveɪʃən/','noun','예약','An arrangement to hold something for future use.','I''d like to make a {reservation} for Friday.','금요일로 예약하고 싶어요.','reservation','B1','cafe',1,'restaurant reservation booking table phone'),
('w_cafe_B1_12','dietary','/ˈdaɪətri/','adjective','식이의, 식단과 관련된','Relating to a person''s diet or dietary requirements.','Do you cater for {dietary} restrictions?','식이 제한이 있는 경우도 되나요?','dietary','B1','cafe',1,'dietary restriction menu special needs food'),
('w_cafe_B1_13','homemade','/ˌhəʊmˈmeɪd/','adjective','직접 만든','Made at home, not commercially produced.','The pasta here is {homemade}.','여기 파스타는 직접 만들어요.','homemade','B1','cafe',1,'homemade pasta kitchen handmade restaurant'),
('w_cafe_B1_14','tender','/ˈtendər/','adjective','연한','Easy to chew, not tough (of meat).','The steak is perfectly {tender}.','스테이크가 완벽하게 연해요.','tender','B1','cafe',1,'tender steak meat fork restaurant'),
('w_cafe_B1_15','crispy','/ˈkrɪspi/','adjective','바삭한','Pleasantly firm and making a crackling sound when bitten.','I love the {crispy} skin on this chicken.','이 치킨 껍질이 바삭해서 좋아요.','crispy','B1','cafe',1,'crispy fried chicken skin restaurant crunchy'),
('w_cafe_B1_16','savory','/ˈseɪvəri/','adjective','짭짤한, 감칠맛 나는','Having a pleasant, salty, or spicy taste.','I prefer {savory} food over sweet.','저는 단것보다 짭짤한 걸 더 좋아해요.','savory','B1','cafe',2,'savory food salty herbs bread snack'),
('w_cafe_B1_17','portion size','/ˈpɔːrʃən saɪz/','noun','1인분 크기','The amount of food given as one serving.','The {portion size} is very generous here.','여기 1인분이 정말 넉넉해요.','portion size','B1','cafe',1,'large portion food plate restaurant serving'),
('w_cafe_B1_18','atmosphere','/ˈætməsfɪər/','noun','분위기','The tone or mood of a place.','The {atmosphere} is very relaxed here.','여기 분위기가 매우 편안해요.','atmosphere','B1','cafe',1,'cafe atmosphere cozy warm lighting interior'),
('w_cafe_B1_19','overflow','/ˌəʊvərˈfləʊ/','verb','꽉 차다','To be too full or have too many customers.','The place was {overflowing} with people.','그 곳은 사람으로 가득했어요.','overflowing','B1','cafe',3,'crowded busy restaurant full people queue'),
('w_cafe_B1_20','selection','/sɪˈlekʃən/','noun','선택, 선별','A range of items to choose from.','The wine {selection} is excellent.','와인 선택지가 훌륭해요.','selection','B1','cafe',1,'wine selection bottles menu restaurant cellar'),
('w_cafe_B1_21','accompaniment','/əˈkʌmpənimənt/','noun','곁들이는 것','Something served alongside a main dish.','What {accompaniment} comes with the fish?','생선에는 어떤 게 곁들어 나와요?','accompaniment','B1','cafe',2,'side dish accompaniment food plate restaurant'),
('w_cafe_B1_22','garnish','/ˈɡɑːrnɪʃ/','noun','고명, 가니시','A decoration added to a dish or drink.','The cocktail has a lemon {garnish}.','칵테일에 레몬 가니시가 있어요.','garnish','B1','cafe',2,'garnish lemon herb cocktail decoration plate'),
('w_cafe_B1_23','well-done','/ˌwel ˈdʌn/','adjective','완전히 익힌','Cooked thoroughly, not rare.','I''d like my steak {well-done}.','스테이크는 완전히 익혀주세요.','well-done','B1','cafe',1,'well done steak meat cooked brown grill'),
('w_cafe_B1_24','medium','/ˈmiːdiəm/','adjective','미디엄으로 익힌','Cooked to an intermediate level, between rare and well-done.','Can I get the lamb {medium}?','양고기는 미디엄으로 해주세요.','medium','B1','cafe',1,'medium steak grill pink inside restaurant'),
('w_cafe_B1_25','rare','/reər/','adjective','레어로 익힌','Cooked so the outside is browned but the inside is still red.','I''ll have the steak {rare}, please.','스테이크는 레어로 주세요.','rare','B1','cafe',1,'rare steak red inside grill meat plate'),
('w_cafe_B1_26','substitute','/ˈsʌbstɪtjuːt/','verb','대체하다','To replace one thing with another.','Can I {substitute} the fries for a salad?','감자튀김 대신 샐러드로 바꿀 수 있나요?','substitute','B1','cafe',1,'substitute swap food salad fries restaurant'),
('w_cafe_B1_27','organic','/ɔːˈɡænɪk/','adjective','유기농의','Produced without artificial chemicals.','Do you use {organic} ingredients?','유기농 재료를 사용하나요?','organic','B1','cafe',1,'organic vegetables fresh market natural food'),
('w_cafe_B1_28','locally sourced','/ˈləʊkəli sɔːrst/','adjective','로컬 식재료의','Obtained from nearby farms or producers.','All our vegetables are {locally sourced}.','저희 채소는 모두 지역 농장에서 가져와요.','locally sourced','B1','cafe',2,'local farm fresh market vegetables produce'),
('w_cafe_B1_29','grilled','/ɡrɪld/','adjective','구운','Cooked on a grill using direct heat.','I''ll have the {grilled} salmon.','그릴에 구운 연어로 주세요.','grilled','B1','cafe',1,'grilled salmon fish restaurant grill marks'),
('w_cafe_B1_30','steamed','/stiːmd/','adjective','찐','Cooked using steam.','The {steamed} dumplings are delicious.','찐 만두가 맛있어요.','steamed','B1','cafe',1,'steamed dumplings dim sum restaurant chinese'),
('w_cafe_B1_31','braised','/breɪzd/','adjective','끓여 익힌','Slowly cooked in a small amount of liquid.','The {braised} short ribs melt in your mouth.','브레이즈드 갈비가 입에서 살살 녹아요.','braised','B1','cafe',2,'braised short ribs beef restaurant slow cooked'),
('w_cafe_B1_32','marinated','/ˈmærɪneɪtɪd/','adjective','양념에 재운','Soaked in a sauce or seasoning before cooking.','The {marinated} chicken is so juicy.','양념에 재운 치킨이 정말 촉촉해요.','marinated','B1','cafe',1,'marinated chicken seasoning herbs restaurant grill'),
('w_cafe_B1_33','dietary restriction','/ˈdaɪətri rɪˈstrɪkʃən/','noun','식이 제한','A limitation on what foods a person can eat.','I have a {dietary restriction} — no dairy.','저는 유제품을 먹지 못해요.','dietary restriction','B1','cafe',1,'dietary restriction dairy free menu restaurant'),
('w_cafe_B1_34','course','/kɔːrs/','noun','코스','One of several dishes that make up a meal.','This is a three-{course} meal.','이건 3코스 식사예요.','course','B1','cafe',1,'three course meal restaurant dinner elegant'),
('w_cafe_B1_35','halal','/həˈlɑːl/','adjective','할랄의','Permissible according to Muslim law.','Is there a {halal} option available?','할랄 옵션이 있나요?','halal','B1','cafe',2,'halal food certification menu restaurant mosque')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B2 (35개)
-- 핵심 테마: connoisseur, sommelier, palate, gastronomy, gourmet, fermentation, artisanal, decant, curation, fusion
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_cafe_B2_01','connoisseur','/ˌkɒnəˈsɜːr/','noun','미식가, 감별사','An expert judge in matters of taste.','He is a true wine {connoisseur}.','그는 진정한 와인 감별사예요.','connoisseur','B2','cafe',1,'wine connoisseur expert tasting glass cellar'),
('w_cafe_B2_02','sommelier','/ˌsɒməˈljeɪ/','noun','소믈리에','A trained wine steward in a restaurant.','The {sommelier} suggested a Burgundy.','소믈리에가 부르고뉴를 추천했어요.','sommelier','B2','cafe',1,'sommelier wine restaurant bottle recommend'),
('w_cafe_B2_03','palate','/ˈpælɪt/','noun','미각, 입맛','A person''s ability to appreciate fine food and drink.','This wine suits my {palate} perfectly.','이 와인이 제 입맛에 딱 맞아요.','palate','B2','cafe',1,'palate wine tasting taste flavor sensory'),
('w_cafe_B2_04','gastronomy','/ɡæˈstrɒnəmi/','noun','미식학, 요리의 예술','The practice of choosing, cooking, and eating good food.','The city is known for its fine {gastronomy}.','그 도시는 훌륭한 미식 문화로 유명해요.','gastronomy','B2','cafe',1,'gastronomy fine dining restaurant elegant food'),
('w_cafe_B2_05','gourmet','/ˈɡɔːrmeɪ/','adjective','고급 미식의','Of very high quality and usually expensive.','This is a {gourmet} burger restaurant.','이건 고급 버거 레스토랑이에요.','gourmet','B2','cafe',1,'gourmet burger food upscale restaurant quality'),
('w_cafe_B2_06','fermentation','/ˌfɜːrmenˈteɪʃən/','noun','발효','The process by which microorganisms convert sugars into acids or alcohol.','The bread benefits from long {fermentation}.','긴 발효 과정이 빵을 더 맛있게 해요.','fermentation','B2','cafe',1,'fermentation bread sourdough jar kitchen process'),
('w_cafe_B2_07','artisanal','/ɑːrˈtɪzənəl/','adjective','장인이 만든','Made in a traditional or non-mechanized way using skilled craftsmanship.','We only serve {artisanal} cheeses.','저희는 장인이 만든 치즈만 제공해요.','artisanal','B2','cafe',1,'artisanal cheese handmade craft market food'),
('w_cafe_B2_08','decant','/dɪˈkænt/','verb','(와인을) 디캔팅하다','To pour wine into a decanter to allow it to breathe.','The sommelier offered to {decant} the red wine.','소믈리에가 레드 와인을 디캔팅해 주겠다고 했어요.','decant','B2','cafe',2,'decant wine pour decanter glass restaurant'),
('w_cafe_B2_09','curation','/kjʊˈreɪʃən/','noun','큐레이션','The process of selecting and organizing items from a large range.','Their menu is a careful {curation} of seasonal dishes.','메뉴는 제철 요리들을 세심하게 선별한 것이에요.','curation','B2','cafe',2,'menu curation selection restaurant chef seasonal'),
('w_cafe_B2_10','fusion','/ˈfjuːʒən/','noun','퓨전','A combination of two or more distinct culinary styles.','This restaurant serves Korean-Mexican {fusion}.','이 식당은 한국-멕시코 퓨전 요리를 제공해요.','fusion','B2','cafe',1,'fusion food restaurant korean mexican creative'),
('w_cafe_B2_11','infuse','/ɪnˈfjuːz/','verb','우려내다, 불어넣다','To soak something in liquid to extract flavor.','The tea is {infused} with jasmine.','차에 재스민 향이 우려져 있어요.','infused','B2','cafe',1,'infuse tea jasmine herbs pot flavor'),
('w_cafe_B2_12','umami','/uːˈmɑːmi/','noun','감칠맛','A savory taste that is one of the five basic tastes.','This broth has a deep {umami} flavor.','이 육수에는 깊은 감칠맛이 있어요.','umami','B2','cafe',1,'umami flavor broth soup savory depth'),
('w_cafe_B2_13','emulsify','/ɪˈmʌlsɪfaɪ/','verb','유화시키다','To combine two immiscible liquids into a stable mixture.','Whisk vigorously to {emulsify} the dressing.','드레싱을 유화시키려면 힘차게 휘저으세요.','emulsify','B2','cafe',2,'emulsify dressing salad oil vinegar whisk kitchen'),
('w_cafe_B2_14','reduction','/rɪˈdʌkʃən/','noun','리덕션 소스','A sauce made by boiling liquid until it becomes concentrated.','The dish is topped with a balsamic {reduction}.','요리 위에 발사믹 리덕션이 올려져 있어요.','reduction','B2','cafe',1,'balsamic reduction sauce plate gourmet restaurant'),
('w_cafe_B2_15','deglaze','/diːˈɡleɪz/','verb','데글레이즈하다','To loosen browned bits from a pan using liquid.','The chef used wine to {deglaze} the pan.','셰프가 와인으로 팬을 데글레이즈했어요.','deglaze','B2','cafe',2,'deglaze pan wine cooking kitchen chef'),
('w_cafe_B2_16','provenance','/ˈprɒvənəns/','noun','산지, 출처','The place of origin or earliest known history of something.','We proudly display the {provenance} of all our ingredients.','저희는 모든 재료의 산지를 자랑스럽게 표시해요.','provenance','B2','cafe',1,'provenance ingredients origin farm food label'),
('w_cafe_B2_17','infusion','/ɪnˈfjuːʒən/','noun','우린 것, 인퓨전','A liquid obtained by soaking herbs or other substances.','Try our seasonal herbal {infusion}.','시즌별 허브 인퓨전을 드셔보세요.','infusion','B2','cafe',2,'herbal infusion tea herbs cup warm'),
('w_cafe_B2_18','macerate','/ˈmæsəreɪt/','verb','(과일 등을) 재우다','To soften food by soaking it in liquid.','{Macerate} the strawberries in sugar overnight.','딸기를 설탕에 하룻밤 재워두세요.','macerate','B2','cafe',2,'macerate strawberries sugar fruit soaking'),
('w_cafe_B2_19','rendered','/ˈrendərd/','adjective','지방이 녹아 바삭한','Cooked so that the fat melts out.','The duck skin is perfectly {rendered}.','오리 껍질이 완벽하게 바삭하게 구워졌어요.','rendered','B2','cafe',2,'rendered duck skin crispy fat restaurant'),
('w_cafe_B2_20','char','/tʃɑːr/','verb','살짝 태우다','To partially burn or blacken the surface of food.','We lightly {char} the vegetables over an open flame.','채소를 직화로 살짝 태워요.','char','B2','cafe',1,'char grilled vegetables fire flame restaurant'),
('w_cafe_B2_21','brine','/braɪn/','noun','소금물','A highly concentrated salt solution used to preserve food.','The chicken is soaked in {brine} for 24 hours.','치킨을 24시간 소금물에 담가요.','brine','B2','cafe',2,'brine salt water chicken preservation jar'),
('w_cafe_B2_22','cure','/kjʊər/','verb','절이다, 염장하다','To preserve food by salting, smoking, or drying.','This salmon is {cured} with dill and salt.','이 연어는 딜과 소금으로 절여요.','cured','B2','cafe',1,'cured salmon dill salt lox restaurant'),
('w_cafe_B2_23','forage','/ˈfɒrɪdʒ/','verb','채집하다','To search for and collect wild food from natural environments.','The chef {forages} for mushrooms every morning.','셰프가 매일 아침 버섯을 채집해요.','forages','B2','cafe',2,'foraging mushrooms forest chef wild food'),
('w_cafe_B2_24','drizzle','/ˈdrɪzl/','verb','살짝 뿌리다','To pour a thin stream of liquid over food.','{Drizzle} the olive oil over the salad.','샐러드 위에 올리브 오일을 살짝 뿌려요.','drizzle','B2','cafe',1,'drizzle oil dressing salad plate restaurant'),
('w_cafe_B2_25','caramelized','/ˈkærəməlaɪzd/','adjective','카라멜화된','Cooked until the natural sugars turn brown.','The onions are slowly {caramelized}.','양파가 천천히 카라멜화돼요.','caramelized','B2','cafe',1,'caramelized onions brown sweet pan cooking'),
('w_cafe_B2_26','mouthfeel','/ˈmaʊθfiːl/','noun','입안의 식감','The physical sensations in the mouth caused by food.','The sauce has a lovely creamy {mouthfeel}.','소스의 크리미한 식감이 정말 좋아요.','mouthfeel','B2','cafe',2,'texture creamy sauce food mouth sensation'),
('w_cafe_B2_27','sear','/sɪər/','verb','(고온에) 겉을 굽다','To cook the surface of food quickly at high heat.','{Sear} the tuna for just thirty seconds each side.','참치를 각 면마다 30초씩 세어링하세요.','sear','B2','cafe',1,'sear tuna steak high heat pan restaurant'),
('w_cafe_B2_28','blanch','/blɑːntʃ/','verb','살짝 데치다','To briefly boil food and then cool it immediately in cold water.','{Blanch} the broccoli before sautéing.','볶기 전에 브로콜리를 살짝 데쳐요.','blanch','B2','cafe',2,'blanch vegetables boiling water broccoli kitchen'),
('w_cafe_B2_29','glaze','/ɡleɪz/','noun','글레이즈, 윤기 나는 소스','A glossy coating applied to food.','The ham is finished with a honey {glaze}.','햄 위에 꿀 글레이즈를 발라 마무리해요.','glaze','B2','cafe',1,'glaze honey ham shiny coating oven baked'),
('w_cafe_B2_30','al dente','/æl ˈdenti/','adjective','알 덴테 (약간 씹히게)','Cooked to be firm to the bite.','I like my pasta {al dente}.','파스타는 알 덴테로 좋아해요.','al dente','B2','cafe',1,'pasta al dente fork plate italian restaurant'),
('w_cafe_B2_31','pairing','/ˈpeərɪŋ/','noun','마리아주, 페어링','A combination of food and drink that complement each other.','The cheese {pairing} was thoughtfully selected.','치즈 페어링이 세심하게 선정됐어요.','pairing','B2','cafe',1,'cheese wine pairing selection restaurant board'),
('w_cafe_B2_32','tartness','/ˈtɑːrtnəs/','noun','새콤함','The quality of having a sharp, acidic taste.','The lemon curd has a pleasant {tartness}.','레몬 커드에 기분 좋은 새콤함이 있어요.','tartness','B2','cafe',2,'lemon curd tart sharp sour taste citrus'),
('w_cafe_B2_33','acidity','/əˈsɪdɪti/','noun','산도','The level of acid in food or wine.','The wine has a high {acidity} that cuts through the fat.','이 와인의 높은 산도가 기름기를 잡아줘요.','acidity','B2','cafe',1,'wine acidity glass tasting flavor profile'),
('w_cafe_B2_34','texture','/ˈtekstʃər/','noun','식감','The feel of a food in the mouth.','The {texture} of the mousse is incredibly smooth.','무스의 식감이 믿을 수 없을 만큼 부드러워요.','texture','B2','cafe',1,'mousse smooth texture spoon plate dessert'),
('w_cafe_B2_35','flambé','/flæmˈbeɪ/','verb','플람베하다','To pour alcohol over food and set it alight briefly.','The waiter {flambéed} the crêpes at the table.','웨이터가 테이블 옆에서 크레이프를 플람베했어요.','flambéed','B2','cafe',2,'flambe crepe fire alcohol tableside restaurant')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C1 (35개)
-- 핵심 테마: terroir, umami, molecular, foraging, provenance, Michelin, tasting menu, mise en place, charcuterie, reduction
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_cafe_C1_01','terroir','/tɛˈrwɑːr/','noun','테루아','The environmental conditions, especially soil and climate, in which grapes are grown.','This wine reflects the {terroir} of the Burgundy region.','이 와인은 부르고뉴 지역의 테루아를 반영해요.','terroir','C1','cafe',1,'terroir vineyard grapes soil climate wine'),
('w_cafe_C1_02','umami','/uːˈmɑːmi/','noun','감칠맛 (제5미각)','A category of taste in food corresponding to a savory, meaty flavor.','The miso adds an intense {umami} depth.','된장이 깊은 감칠맛을 더해줘요.','umami','C1','cafe',1,'umami miso broth savory depth flavor'),
('w_cafe_C1_03','molecular gastronomy','/məˈlekjʊlər ɡæˈstrɒnəmi/','noun','분자 요리학','A scientific approach to cooking that examines physical and chemical processes.','The chef trained in {molecular gastronomy} in Catalonia.','셰프는 카탈로니아에서 분자 요리학을 배웠어요.','molecular gastronomy','C1','cafe',1,'molecular gastronomy chef science food lab'),
('w_cafe_C1_04','foraging','/ˈfɒrɪdʒɪŋ/','noun','채집','The practice of searching for and collecting wild food from natural environments.','{Foraging} for wild herbs defines this restaurant''s ethos.','야생 허브를 채집하는 것이 이 레스토랑의 철학이에요.','foraging','C1','cafe',1,'foraging wild herbs forest chef nature food'),
('w_cafe_C1_05','provenance','/ˈprɒvənəns/','noun','(식재료의) 산지와 이력','The origin and history of ingredients.','Every dish on the menu lists the {provenance} of its ingredients.','메뉴의 모든 요리에 재료의 산지가 적혀 있어요.','provenance','C1','cafe',1,'provenance farm ingredient origin label traceability'),
('w_cafe_C1_06','Michelin star','/ˈmɪʃəlɪn stɑːr/','noun','미슐랭 스타','A prestigious award given by the Michelin Guide to exceptional restaurants.','This is the chef''s first {Michelin star} restaurant.','이 레스토랑은 셰프의 첫 미슐랭 스타 식당이에요.','Michelin star','C1','cafe',1,'michelin star restaurant chef award fine dining'),
('w_cafe_C1_07','tasting menu','/ˈteɪstɪŋ ˈmenjuː/','noun','테이스팅 메뉴','A series of small dishes showcasing a chef''s range of cooking.','The {tasting menu} consists of twelve courses.','테이스팅 메뉴는 12코스로 구성돼 있어요.','tasting menu','C1','cafe',1,'tasting menu small plates restaurant fine dining'),
('w_cafe_C1_08','mise en place','/ˌmiːz ɒn ˈplɑːs/','noun','미장 플라스 (사전 준비)','The practice of preparing and organizing all ingredients before cooking.','Good {mise en place} is the foundation of professional cooking.','좋은 미장 플라스는 전문 요리의 기본이에요.','mise en place','C1','cafe',1,'mise en place prep kitchen chef organized'),
('w_cafe_C1_09','charcuterie','/ʃɑːrˈkuːtəri/','noun','샤르퀴트리','A branch of cooking involving dressed meats, especially pork.','The {charcuterie} board comes with three house-cured meats.','샤르퀴트리 보드에는 직접 염장한 고기 3종이 나와요.','charcuterie','C1','cafe',1,'charcuterie board meat cheese wine restaurant'),
('w_cafe_C1_10','reduction','/rɪˈdʌkʃən/','noun','리덕션 (농축 소스)','A sauce made by simmering liquid until it is concentrated and thickened.','The dish is plated with a port wine {reduction}.','요리에 포트 와인 리덕션이 곁들여져요.','reduction','C1','cafe',1,'reduction sauce wine plate fine dining gourmet'),
('w_cafe_C1_11','consommé','/ˈkɒnsəmeɪ/','noun','콩소메','A clear soup made from rich stock clarified by egg whites.','The meal begins with a delicate chicken {consommé}.','식사는 섬세한 치킨 콩소메로 시작돼요.','consommé','C1','cafe',1,'consomme clear soup elegant restaurant fine dining'),
('w_cafe_C1_12','velouté','/vəˈluːteɪ/','noun','벨루테 소스','A smooth white sauce made from stock thickened with a roux.','The fish is served in a saffron {velouté}.','생선은 사프란 벨루테에 담겨 나와요.','velouté','C1','cafe',2,'veloute sauce white fish saffron fine dining'),
('w_cafe_C1_13','coulis','/ˈkuːli/','noun','쿨리 (체로 거른 소스)','A thin sauce made from puréed and strained fruit or vegetables.','The plate is decorated with a raspberry {coulis}.','접시에 라즈베리 쿨리가 장식돼 있어요.','coulis','C1','cafe',2,'coulis raspberry sauce dessert plate decoration'),
('w_cafe_C1_14','sous vide','/suː ˈviːd/','noun','수비드 조리법','A method of cooking food sealed in bags submerged in a water bath.','The egg is prepared using {sous vide} at sixty-three degrees.','달걀은 63도에서 수비드 방식으로 조리돼요.','sous vide','C1','cafe',1,'sous vide cooking bag water bath precision'),
('w_cafe_C1_15','emulsion','/ɪˈmʌlʃən/','noun','에멀션, 유화액','A mixture of two liquids normally impossible to combine.','The dressing is a light oil-and-vinegar {emulsion}.','드레싱은 오일과 식초의 가벼운 에멀션이에요.','emulsion','C1','cafe',2,'emulsion oil vinegar dressing salad kitchen'),
('w_cafe_C1_16','deconstructed','/ˌdiːkənˈstrʌktɪd/','adjective','해체된, 재해석된','Presented in a way that breaks down a traditional dish into its components.','The {deconstructed} tiramisu is a work of art.','해체된 티라미수는 예술 작품 같아요.','deconstructed','C1','cafe',1,'deconstructed dessert modern restaurant artistic plate'),
('w_cafe_C1_17','amuse-bouche','/əˌmjuːz ˈbuːʃ/','noun','아뮤즈 부슈','A single bite-sized hors d''œuvre served before the meal.','We received a truffle {amuse-bouche} to start.','트러플 아뮤즈 부슈로 시작했어요.','amuse-bouche','C1','cafe',2,'amuse bouche truffle bite restaurant fine dining'),
('w_cafe_C1_18','intermezzo','/ˌɪntərˈmetsəʊ/','noun','인터메조 (코스 사이의 셔벗)','A small dish served between courses to cleanse the palate.','A lemon sorbet {intermezzo} was served between courses.','코스 사이에 레몬 셔벗 인터메조가 나왔어요.','intermezzo','C1','cafe',2,'intermezzo sorbet lemon course palate cleanser'),
('w_cafe_C1_19','foie gras','/ˌfwɑː ˈɡrɑː/','noun','푸아그라','A luxury food product made from the liver of a specially fattened duck or goose.','The {foie gras} terrine is the signature starter.','푸아그라 테린이 대표 전채 요리예요.','foie gras','C1','cafe',2,'foie gras liver duck luxury restaurant starter'),
('w_cafe_C1_20','tartare','/ˈtɑːrtɑːr/','noun','타르타르','A dish of raw chopped meat or fish mixed with seasonings.','I''d like the beef {tartare} with quail egg.','메추리알을 얹은 비프 타르타르를 주세요.','tartare','C1','cafe',2,'tartare beef raw chopped egg fine dining'),
('w_cafe_C1_21','quenelle','/kəˈnel/','noun','크넬 (달걀형 가니시)','An oval-shaped portion of mousse, cream, or ice cream formed between two spoons.','The ice cream was served as a {quenelle}.','아이스크림이 크넬 모양으로 제공됐어요.','quenelle','C1','cafe',3,'quenelle ice cream mousse oval spoon plate'),
('w_cafe_C1_22','brunoise','/ˈbruːnwɑːz/','noun','브루누아즈 (깍뚝썰기)','Vegetables diced into very small uniform cubes.','The soup is garnished with a carrot {brunoise}.','수프는 당근 브루누아즈로 장식돼요.','brunoise','C1','cafe',2,'brunoise dice vegetables carrot kitchen knife'),
('w_cafe_C1_23','julienne','/dʒuːliˈen/','noun','줄리엔 (채 썰기)','Vegetables cut into long thin matchstick-shaped strips.','The salad features {julienned} daikon.','샐러드에 채 썬 무가 들어가요.','julienned','C1','cafe',2,'julienne daikon vegetable strips salad knife'),
('w_cafe_C1_24','nappe','/næp/','verb','소스를 고르게 입히다','To coat food with a sauce of the right consistency.','The sauce should {nappe} the spoon.','소스는 숟가락을 고르게 입혀야 해요.','nappe','C1','cafe',3,'nappe sauce spoon coating consistency kitchen'),
('w_cafe_C1_25','fond','/fɒnd/','noun','퐁 (팬에 눌은 육즙)','The browned bits that stick to the bottom of a pan after searing.','Deglaze the pan to lift the {fond}.','팬의 퐁을 데글레이즈로 들어올리세요.','fond','C1','cafe',2,'fond pan brown bits deglaze cooking chef'),
('w_cafe_C1_26','temper','/ˈtempər/','verb','템퍼링하다 (초콜릿 등)','To bring chocolate to a specific temperature sequence for the right texture.','The chef {tempered} the chocolate to achieve a glossy finish.','셰프가 윤기 있는 마감을 위해 초콜릿을 템퍼링했어요.','tempered','C1','cafe',2,'tempering chocolate glossy finish kitchen pastry'),
('w_cafe_C1_27','ganache','/ɡəˈnæʃ/','noun','가나슈','A smooth, rich chocolate mixture made from chocolate and cream.','The tart is filled with dark chocolate {ganache}.','타르트에 다크 초콜릿 가나슈가 채워져 있어요.','ganache','C1','cafe',2,'ganache chocolate tart dark pastry rich'),
('w_cafe_C1_28','jus','/dʒuː/','noun','주 (고기 육즙 소스)','The natural juices from meat or the sauce made from them.','The lamb comes with a rosemary {jus}.','양고기에 로즈메리 주가 곁들여져요.','jus','C1','cafe',1,'jus sauce meat lamb rosemary restaurant plate'),
('w_cafe_C1_29','roulade','/ruːˈlɑːd/','noun','루라드 (돌돌 만 요리)','A dish made from a flat piece of food that is rolled around a filling.','The pork {roulade} is stuffed with herbs and garlic.','돼지고기 루라드에는 허브와 마늘이 채워져 있어요.','roulade','C1','cafe',2,'roulade pork rolled stuffed herbs restaurant'),
('w_cafe_C1_30','galette','/ɡæˈlet/','noun','갈레트','A flat, round cake or pastry, often savory.','We started with a buckwheat {galette}.','메밀 갈레트로 시작했어요.','galette','C1','cafe',2,'galette buckwheat crepe savory restaurant french'),
('w_cafe_C1_31','verrines','/verˈiːn/','noun','버린 (유리컵 요리)','A dish served in a small glass jar or cup, showing layers of ingredients.','The amuse-bouche was served as {verrines}.','아뮤즈 부슈가 버린으로 제공됐어요.','verrines','C1','cafe',3,'verrines glass jar layers food restaurant'),
('w_cafe_C1_32','praline','/ˈprɑːliːn/','noun','프랄린','A sweet candy made from nuts and caramelized sugar.','The dessert is topped with hazelnut {praline}.','디저트 위에 헤이즐넛 프랄린이 얹혀 있어요.','praline','C1','cafe',2,'praline hazelnut caramel sweet dessert'),
('w_cafe_C1_33','beurre blanc','/ˌbɜːr ˈblɒŋk/','noun','뵈르 블랑 소스','A classic French white butter sauce made with wine and shallots.','The halibut rests in a delicate {beurre blanc}.','광어가 섬세한 뵈르 블랑에 담겨 나와요.','beurre blanc','C1','cafe',2,'beurre blanc sauce butter fish restaurant french'),
('w_cafe_C1_34','confit','/ˈkɒnfi/','noun','콩피 (저온에 기름에 익힌)','Food slowly cooked in its own fat at a low temperature.','The duck leg {confit} is fall-off-the-bone tender.','오리 다리 콩피가 뼈에서 살이 쉽게 떨어질 만큼 연해요.','confit','C1','cafe',1,'duck confit leg fat slow cooked restaurant'),
('w_cafe_C1_35','crémeux','/kreɪˈmø/','noun','크레뫼 (크리미 가나슈)','A very smooth, creamy ganache-based dessert component.','The plate features a dark chocolate {crémeux}.','접시에 다크 초콜릿 크레뫼가 올려져 있어요.','crémeux','C1','cafe',2,'cremeux chocolate creamy smooth dessert pastry')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C2 (35개)
-- 핵심 테마: oenology, viticulture, organoleptic, terroir, appellation, maceration, maillard, emulsification, sous vide, deglazing
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_cafe_C2_01','oenology','/iːˈnɒlədʒi/','noun','포도주학, 와인학','The study of wines and winemaking.','She has a degree in {oenology} from Bordeaux.','그녀는 보르도에서 포도주학 학위를 받았어요.','oenology','C2','cafe',1,'oenology wine study bordeaux laboratory'),
('w_cafe_C2_02','viticulture','/ˈvɪtɪkʌltʃər/','noun','포도 재배학','The cultivation and harvesting of grapes.','Advances in {viticulture} have transformed the region''s wines.','포도 재배학의 발전이 그 지역의 와인을 완전히 바꿔 놓았어요.','viticulture','C2','cafe',1,'viticulture vineyard grapes cultivation harvest'),
('w_cafe_C2_03','organoleptic','/ˌɔːrɡənəˈleptɪk/','adjective','관능적인 (맛·향·외관)','Relating to properties of food perceived by the senses.','The panel assessed the {organoleptic} qualities of each sample.','패널이 각 샘플의 관능 품질을 평가했어요.','organoleptic','C2','cafe',2,'organoleptic tasting panel sensory evaluation food'),
('w_cafe_C2_04','appellation','/ˌæpəˈleɪʃən/','noun','원산지 명칭 보호','A legally defined geographical indication used to identify wine.','This wine carries the Châteauneuf-du-Pape {appellation}.','이 와인에는 샤토뇌프뒤파프 원산지 명칭이 붙어 있어요.','appellation','C2','cafe',1,'appellation wine label region france origin'),
('w_cafe_C2_05','maceration','/ˌmæsəˈreɪʃən/','noun','침용, 마세라시옹','The process of soaking grape skins in the juice to extract color and tannins.','Extended {maceration} gives this red wine its depth of color.','장시간 침용이 이 레드 와인에 깊은 색을 부여해요.','maceration','C2','cafe',1,'maceration red wine grapes skins tannin'),
('w_cafe_C2_06','Maillard reaction','/maɪˈɑːr riˈækʃən/','noun','마이야르 반응','A chemical reaction between amino acids and sugars that produces browning.','The golden crust is created by the {Maillard reaction}.','황금빛 껍질은 마이야르 반응으로 만들어져요.','Maillard reaction','C2','cafe',1,'maillard reaction browning crust bread chemistry cooking'),
('w_cafe_C2_07','emulsification','/ɪˌmʌlsɪfɪˈkeɪʃən/','noun','유화 과정','The process of combining two immiscible liquids into a stable mixture.','Lecithin aids in the {emulsification} of the sauce.','레시틴이 소스의 유화를 도와줘요.','emulsification','C2','cafe',2,'emulsification lecithin sauce oil water kitchen'),
('w_cafe_C2_08','deglazing','/diːˈɡleɪzɪŋ/','noun','데글레이징','Adding liquid to a hot pan to loosen and dissolve browned food bits.','{Deglazing} with cognac adds complexity to the sauce.','코냑으로 데글레이징하면 소스에 복잡한 깊이가 생겨요.','deglazing','C2','cafe',1,'deglazing pan cognac sauce cooking restaurant'),
('w_cafe_C2_09','transglutaminase','/ˌtrænsˈɡluːtəmɪneɪz/','noun','트랜스글루타미나아제 (고기 접착 효소)','An enzyme used in molecular gastronomy to bind proteins together.','The chef used {transglutaminase} to form a scallop noodle.','셰프가 가리비 국수를 만들기 위해 트랜스글루타미나아제를 사용했어요.','transglutaminase','C2','cafe',2,'transglutaminase enzyme molecular gastronomy chef lab'),
('w_cafe_C2_10','spherification','/ˌsfɪərɪfɪˈkeɪʃən/','noun','구형화 (분자요리 기법)','A culinary technique that creates liquid-filled spheres resembling caviar.','The cocktail is served with elderflower {spherification}.','칵테일에 엘더플라워 구형화 알갱이가 곁들여져요.','spherification','C2','cafe',1,'spherification molecular gastronomy caviar cocktail restaurant'),
('w_cafe_C2_11','phenolic compounds','/fɪˈnɒlɪk ˈkɒmpaʊndz/','noun','페놀 화합물','Naturally occurring compounds in plants that contribute to taste and health benefits.','Red wine is rich in {phenolic compounds} such as resveratrol.','레드 와인에는 레스베라트롤 등 페놀 화합물이 풍부해요.','phenolic compounds','C2','cafe',2,'phenolic compounds wine grape antioxidant health'),
('w_cafe_C2_12','tannins','/ˈtænɪnz/','noun','타닌','Bitter plant compounds that create a drying sensation in wine.','The {tannins} in this Cabernet are still quite gripping.','이 카베르네의 타닌이 아직 상당히 강렬해요.','tannins','C2','cafe',1,'tannins wine cabernet red astringent grape'),
('w_cafe_C2_13','malolactic fermentation','/ˌmæləˌlæktɪk fɜːrmenˈteɪʃən/','noun','유산 발효','A winemaking process that converts tart malic acid into softer lactic acid.','{Malolactic fermentation} gives the Chardonnay its buttery character.','유산 발효가 샤르도네에 버터 같은 풍미를 부여해요.','malolactic fermentation','C2','cafe',2,'malolactic fermentation chardonnay wine buttery process'),
('w_cafe_C2_14','lees','/liːz/','noun','효모 찌꺼기','The sediment of yeast and other particles that settle in wine after fermentation.','Aging on the {lees} adds richness and complexity.','효모 찌꺼기 위에서의 숙성이 풍부함과 복잡성을 더해줘요.','lees','C2','cafe',2,'lees yeast sediment wine barrel aging'),
('w_cafe_C2_15','brix','/brɪks/','noun','브릭스 (당도 측정 단위)','A unit measuring the sugar content in grapes or other food liquids.','The grapes were harvested at twenty-four {brix}.','포도는 24 브릭스에서 수확했어요.','brix','C2','cafe',2,'brix sugar content grapes harvest measurement'),
('w_cafe_C2_16','volatile acidity','/ˈvɒlətaɪl əˈsɪdɪti/','noun','휘발성 산도','Gaseous acids in wine, primarily acetic acid, that can produce a vinegar aroma.','High {volatile acidity} is considered a wine fault.','높은 휘발성 산도는 와인의 결점으로 여겨져요.','volatile acidity','C2','cafe',2,'volatile acidity wine flaw vinegar aroma'),
('w_cafe_C2_17','biodynamic','/ˌbaɪəʊdaɪˈnæmɪk/','adjective','생명역동적인','Relating to a holistic approach to farming that treats the farm as a living system.','The estate farms using strict {biodynamic} principles.','그 와이너리는 엄격한 생명역동 원칙에 따라 농사를 짓고 있어요.','biodynamic','C2','cafe',2,'biodynamic farming vineyard natural organic wine'),
('w_cafe_C2_18','remuage','/rəˈmjuːɑːʒ/','noun','르뮈아주 (샴페인 숙성 공정)','The process of gradually turning Champagne bottles to consolidate the sediment.','The cellar master oversees the daily {remuage}.','셀러 마스터가 매일 르뮈아주를 관리해요.','remuage','C2','cafe',3,'remuage champagne riddling bottles cellar'),
('w_cafe_C2_19','disgorgement','/dɪsˈɡɔːrdʒmənt/','noun','데고르주망 (침전물 제거)','The removal of the yeast sediment plug from Champagne bottles.','The vintage date marks the time of {disgorgement}.','빈티지 날짜는 데고르주망 시점을 나타내요.','disgorgement','C2','cafe',3,'disgorgement champagne sediment removal bottle process'),
('w_cafe_C2_20','micro-oxygenation','/ˌmaɪkrəʊ ˌɒksɪdʒəˈneɪʃən/','noun','마이크로산소 주입법','A technique that exposes wine to controlled quantities of oxygen.','{Micro-oxygenation} softens the tannins and stabilizes the color.','마이크로산소 주입법이 타닌을 부드럽게 하고 색을 안정시켜요.','micro-oxygenation','C2','cafe',2,'micro oxygenation wine technique barrel tannin'),
('w_cafe_C2_21','élevage','/ˌeleɪˈvɑːʒ/','noun','엘르바주 (와인 육성)','The stage of winemaking after fermentation, where wine is nurtured to maturity.','The {élevage} in French oak lasts eighteen months.','프렌치 오크에서의 엘르바주는 18개월간 지속돼요.','élevage','C2','cafe',2,'elevage wine barrel french oak aging cellar'),
('w_cafe_C2_22','mouthfeel','/ˈmaʊθfiːl/','noun','마우스필 (입안의 촉감)','The tactile sensations experienced in the mouth when drinking wine.','The wine has a plush, velvety {mouthfeel}.','와인이 풍부하고 벨벳 같은 마우스필을 가지고 있어요.','mouthfeel','C2','cafe',1,'mouthfeel wine velvet texture tasting sensation'),
('w_cafe_C2_23','phenolics','/fɪˈnɒlɪks/','noun','페놀류 (와인 구성 성분)','A group of chemical compounds found in wine that influence color, taste, and stability.','The {phenolics} in this wine need more time to integrate.','이 와인의 페놀류는 융합되려면 더 많은 시간이 필요해요.','phenolics','C2','cafe',2,'phenolics wine chemical color taste stability'),
('w_cafe_C2_24','polyphenols','/ˌpɒliˈfiːnɒlz/','noun','폴리페놀','Compounds with antioxidant properties found abundantly in red wine.','Red wine is praised for its {polyphenols}.','레드 와인은 폴리페놀로 칭찬받아요.','polyphenols','C2','cafe',1,'polyphenols red wine antioxidant health grapes'),
('w_cafe_C2_25','extraction','/ɪkˈstrækʃən/','noun','추출 (와인 양조)','The process of drawing color, tannin, and flavor from grape skins into wine.','Gentle {extraction} preserves the wine''s elegance.','부드러운 추출이 와인의 우아함을 보존해요.','extraction','C2','cafe',2,'extraction wine grapes skins tannin color process'),
('w_cafe_C2_26','terpenes','/ˈtɜːrpiːnz/','noun','테르펜 (향기 성분)','Aromatic compounds in grapes that contribute floral and fruity aromas to wine.','The {terpenes} in Gewürztraminer produce its distinctive rose aroma.','게뷔르츠트라미너의 테르펜이 독특한 장미 향을 만들어요.','terpenes','C2','cafe',2,'terpenes gewurztraminer aroma rose wine floral'),
('w_cafe_C2_27','oxidative aging','/ˈɒksɪdeɪtɪv ˈeɪdʒɪŋ/','noun','산화 숙성','Wine aging that allows contact with oxygen, developing nutty, complex flavors.','Sherry undergoes {oxidative aging} in open barrels.','셰리는 열린 배럴에서 산화 숙성을 거쳐요.','oxidative aging','C2','cafe',2,'oxidative aging sherry barrel nutty complex wine'),
('w_cafe_C2_28','encépagement','/ɒnˌsepɑːʒˈmɒn/','noun','포도 품종 비율','The proportion of different grape varieties used in a wine blend.','The {encépagement} is dominated by Cabernet Sauvignon.','카베르네 소비뇽이 포도 품종 비율을 지배해요.','encépagement','C2','cafe',3,'encepagement grape variety blend proportion bordeaux'),
('w_cafe_C2_29','autolysis','/ɔːˈtɒlɪsɪs/','noun','자가 분해 (샴페인 숙성)','The breakdown of yeast cells that contributes to a wine''s bready, creamy character.','Long {autolysis} gives this champagne a brioche-like quality.','오랜 자가 분해가 이 샴페인에 브리오슈 같은 품질을 부여해요.','autolysis','C2','cafe',2,'autolysis champagne yeast bready creamy aging'),
('w_cafe_C2_30','assemblage','/əˈsɒmbliːdʒ/','noun','아상블라주 (혼합)','The art of blending different wines or grape varieties to create the final cuvée.','The winemaker''s skill is revealed in the {assemblage}.','와인 메이커의 기술이 아상블라주에서 드러나요.','assemblage','C2','cafe',1,'assemblage blending wine varieties cellar winemaker'),
('w_cafe_C2_31','volatile esters','/ˈvɒlətaɪl ˈestərz/','noun','휘발성 에스테르','Compounds that contribute fruity and floral aromas to wine.','The {volatile esters} in this Riesling are brilliantly expressive.','이 리슬링의 휘발성 에스테르가 눈부시게 표현적이에요.','volatile esters','C2','cafe',2,'volatile esters riesling aroma fruity floral wine'),
('w_cafe_C2_32','cru','/kruː/','noun','크뤼 (특정 포도밭)','A term for a vineyard or group of vineyards recognized for producing superior wine.','This is a Grand {Cru} Burgundy.','이것은 그랑 크뤼 부르고뉴예요.','cru','C2','cafe',1,'grand cru burgundy vineyard classified wine superior'),
('w_cafe_C2_33','négociant','/neɪˈɡɒʃɪənt/','noun','네고시앙 (와인 중개상)','A wine merchant who buys grapes or wine from growers to blend and bottle.','The {négociant} purchased juice from several domaines.','네고시앙이 여러 도멘에서 와인 원액을 구입했어요.','négociant','C2','cafe',2,'negociant merchant wine buyer burgundy bottle'),
('w_cafe_C2_34','bâtonnage','/bɑːtɒˈnɑːʒ/','noun','바토나주 (효모 찌꺼기 젓기)','The process of stirring wine lees to add richness and texture.','Weekly {bâtonnage} enriches the texture of this Chardonnay.','주 1회 바토나주가 이 샤르도네의 질감을 풍부하게 해줘요.','bâtonnage','C2','cafe',2,'batonnage stirring lees chardonnay texture barrel'),
('w_cafe_C2_35','microbiome','/ˈmaɪkrəʊbaɪəʊm/','noun','미생물군 (발효 환경)','The community of microorganisms present in a fermentation environment.','Each winery''s {microbiome} is unique and shapes its wines.','각 와이너리의 미생물군은 고유하며 와인의 특성을 형성해요.','microbiome','C2','cafe',2,'microbiome winery fermentation unique bacteria yeast')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — A1 (7개)
-- 테마: 주문, 자리
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_A1_01','A table for two, please.','두 명이에요.','A table for two','식당에 들어갈 때 인원수를 말하는 가장 자연스러운 표현이에요.','자리 안내','A1','cafe','pattern',NULL,1),
('s_cafe_A1_02','Can I see the menu, please?','메뉴판 볼 수 있을까요?','Can I see','레스토랑에서 주문 전에 메뉴를 요청하는 가장 기본적인 표현이에요.','메뉴 요청','A1','cafe','pattern',NULL,2),
('s_cafe_A1_03','I''ll have this one, please.','이걸로 주세요.','I''ll have','메뉴를 손으로 가리키며 주문할 때 쓰는 가장 간단한 표현이에요.','주문','A1','cafe','pattern',NULL,3),
('s_cafe_A1_04','Is this seat taken?','이 자리 비어 있나요?','Is this seat taken','카페나 식당에서 빈자리를 확인할 때 쓰는 기본 표현이에요.','자리 확인','A1','cafe','pattern',NULL,4),
('s_cafe_A1_05','How much is this?','이거 얼마예요?','How much is','가격을 물어볼 때 쓰는 가장 기본적인 표현이에요.','가격 문의','A1','cafe','pattern',NULL,5),
('s_cafe_A1_06','The bill, please.','계산서 주세요.','The bill, please','식사 후 계산을 요청하는 가장 간결한 표현이에요.','계산 요청','A1','cafe','pattern',NULL,6),
('s_cafe_A1_07','This is delicious!','정말 맛있어요!','This is delicious','음식이 맛있을 때 바로 칭찬할 수 있는 가장 자연스러운 표현이에요.','음식 칭찬','A1','cafe','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — A2 (7개)
-- 테마: 메뉴 문의, 계산
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_A2_01','What do you recommend?','무엇을 추천하시나요?','What do you recommend','웨이터에게 추천 메뉴를 물어볼 때 쓰는 가장 자연스러운 표현이에요.','메뉴 추천 문의','A2','cafe','pattern',NULL,1),
('s_cafe_A2_02','Can I get this to go, please?','포장으로 주실 수 있나요?','to go','"to go"는 포장을 의미하는 미국식 표현이에요. 영국에서는 "takeaway"를 써요.','포장 요청','A2','cafe','pattern',NULL,2),
('s_cafe_A2_03','Is there anything without meat?','고기가 안 들어간 메뉴가 있나요?','without meat','식이 제한이 있을 때 특정 재료를 제외한 메뉴를 물어보는 표현이에요.','채식 문의','A2','cafe','pattern',NULL,3),
('s_cafe_A2_04','Could we split the bill?','계산을 따로 할 수 있나요?','split the bill','여러 명이 함께 식사 후 각자 계산하고 싶을 때 쓰는 표현이에요.','계산 분리','A2','cafe','pattern',NULL,4),
('s_cafe_A2_05','Can I have a refill, please?','리필 해주실 수 있나요?','a refill','음료나 물이 비었을 때 다시 채워달라고 요청하는 표현이에요.','리필 요청','A2','cafe','pattern',NULL,5),
('s_cafe_A2_06','How long is the wait?','얼마나 기다려야 하나요?','How long is the wait','식당이 꽉 찼을 때 대기 시간을 묻는 표현이에요.','대기 시간 문의','A2','cafe','pattern',NULL,6),
('s_cafe_A2_07','Do you have a vegetarian option?','채식 메뉴가 있나요?','a vegetarian option','채식주의자이거나 고기를 먹지 않을 때 메뉴를 확인하는 표현이에요.','채식 메뉴 확인','A2','cafe','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — B1 (7개)
-- 테마: 추천 요청, 알레르기
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_B1_01','What do you recommend for someone who doesn''t eat meat?','고기를 먹지 않는 사람에게는 무엇을 추천하시나요?','recommend for someone who','"recommend for someone who ~"는 조건에 맞는 추천을 구할 때 쓰는 표현이에요.','맞춤 추천 요청','B1','cafe','pattern',NULL,1),
('s_cafe_B1_02','I have a nut allergy — could you check the ingredients?','견과류 알레르기가 있어서 재료를 확인해 주실 수 있나요?','I have a nut allergy','알레르기를 직접적으로 알려주는 것이 안전을 위해 중요해요. 이 표현을 기억해 두세요.','알레르기 고지','B1','cafe','pattern',NULL,2),
('s_cafe_B1_03','Could you make it without onions, please?','양파 없이 만들어 주실 수 있나요?','make it without','특정 재료를 빼달라고 할 때 "make it without ~" 패턴이 유용해요.','재료 제외 요청','B1','cafe','pattern',NULL,3),
('s_cafe_B1_04','Is the kitchen able to accommodate dietary restrictions?','식이 제한에 맞춰 조리가 가능한가요?','accommodate dietary restrictions','"accommodate"는 요구를 수용한다는 뜻으로 레스토랑 맥락에서 자연스러운 표현이에요.','식이 제한 문의','B1','cafe','pattern',NULL,4),
('s_cafe_B1_05','Could I substitute the fries for a salad?','감자튀김 대신 샐러드로 바꿀 수 있나요?','substitute the fries for','"substitute A for B"는 A를 B로 교체한다는 표현이에요. 메뉴 커스터마이즈에 유용해요.','메뉴 변경 요청','B1','cafe','pattern',NULL,5),
('s_cafe_B1_06','I think there''s a mistake in the bill.','계산서에 실수가 있는 것 같아요.','I think there''s a mistake','"I think"를 앞에 붙이면 직접적인 항의보다 훨씬 예의 바르게 들려요.','계산서 오류 지적','B1','cafe','pattern',NULL,6),
('s_cafe_B1_07','What''s the house specialty today?','오늘의 특선 요리는 무엇인가요?','the house specialty','레스토랑에서 셰프가 자신 있는 요리를 물어볼 때 쓰는 표현이에요.','특선 요리 문의','B1','cafe','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — B2 (7개)
-- 테마: 요리 묘사, 와인 페어링
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_B2_01','The dish has a beautiful balance of acidity and richness.','이 요리는 산미와 풍미의 균형이 아름다워요.','balance of acidity and richness','음식의 맛의 균형을 묘사할 때 "balance of"를 활용하면 세련되게 들려요.','요리 묘사','B2','cafe','pattern',NULL,1),
('s_cafe_B2_02','Would you be able to suggest a wine pairing for this dish?','이 요리에 어울리는 와인 페어링을 추천해 주실 수 있나요?','suggest a wine pairing','"Would you be able to..."는 정중한 요청의 표현이에요. 고급 레스토랑에서 유용해요.','와인 페어링 요청','B2','cafe','pattern',NULL,2),
('s_cafe_B2_03','The sauce has a lovely depth of flavor with just a hint of smokiness.','소스에 훈연향이 살짝 감도는 깊은 풍미가 있어요.','depth of flavor with a hint of','"a hint of"는 풍미가 약간 느껴진다는 뜻의 세련된 표현이에요.','요리 평가','B2','cafe','pattern',NULL,3),
('s_cafe_B2_04','I noticed the menu focuses heavily on locally sourced, seasonal produce.','메뉴가 로컬 식재료와 제철 재료를 중심으로 구성된 것 같아요.','locally sourced, seasonal produce','레스토랑의 철학을 인식하고 표현할 줄 아는 것은 미식가의 언어예요.','레스토랑 철학 언급','B2','cafe','pattern',NULL,4),
('s_cafe_B2_05','The texture of the mousse is incredibly light — it almost dissolves on the palate.','무스의 식감이 믿을 수 없을 만큼 가벼워요. 입안에서 녹아버리는 것 같아요.','dissolves on the palate','"on the palate"은 "입안에서"라는 뜻으로 음식 리뷰에서 자주 쓰는 표현이에요.','디저트 묘사','B2','cafe','pattern',NULL,5),
('s_cafe_B2_06','Could you tell me more about the provenance of the ingredients?','재료의 산지에 대해 더 알려주실 수 있나요?','provenance of the ingredients','좋은 레스토랑에서는 재료의 출처를 자랑스럽게 이야기해요. 이 질문으로 대화를 유도하세요.','재료 출처 문의','B2','cafe','pattern',NULL,6),
('s_cafe_B2_07','I think the fermentation adds a wonderful complexity to the bread.','발효 과정이 빵에 훌륭한 복잡성을 더해주는 것 같아요.','fermentation adds a wonderful complexity','음식 제조 과정을 이해하고 표현하는 것은 B2 수준의 핵심 역량이에요.','요리 과정 언급','B2','cafe','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — C1 (7개)
-- 테마: 음식 평론, 전문 용어
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_C1_01','The mise en place here is impeccable — every element of the dish arrives perfectly timed.','여기의 미장 플라스는 완벽해요. 요리의 모든 요소가 정확한 타이밍에 나와요.','mise en place is impeccable','미장 플라스는 요리 전 준비를 뜻해요. 레스토랑의 전문성을 높이 평가할 때 쓰는 표현이에요.','레스토랑 평론','C1','cafe','pattern',NULL,1),
('s_cafe_C1_02','The tasting menu does a remarkable job of showcasing the terroir of this region.','테이스팅 메뉴가 이 지역의 테루아를 탁월하게 보여주고 있어요.','showcasing the terroir','"terroir"는 원래 와인 용어지만 요리에서도 지역의 환경과 특색을 표현할 때 써요.','테이스팅 메뉴 평가','C1','cafe','pattern',NULL,2),
('s_cafe_C1_03','The charcuterie board is a study in contrast — the saltiness of the cured meats beautifully offsets the sweetness of the compote.','샤르퀴트리 보드는 대비의 예술이에요. 염장 고기의 짠맛이 콩포트의 단맛을 아름답게 상쇄해요.','a study in contrast','"a study in ~"은 어떤 특성의 완벽한 예시를 뜻하는 표현이에요.','음식 묘사','C1','cafe','pattern',NULL,3),
('s_cafe_C1_04','I appreciate how the reduction ties all the elements of the dish together.','리덕션이 요리의 모든 요소를 하나로 묶어주는 방식이 마음에 들어요.','the reduction ties all the elements together','"ties together"는 요소들을 통합한다는 뜻으로 요리 평론에서 유용한 표현이에요.','요리 기법 평론','C1','cafe','pattern',NULL,4),
('s_cafe_C1_05','Could you walk me through the foraging philosophy behind this seasonal menu?','이 시즌 메뉴의 채집 철학에 대해 설명해 주실 수 있나요?','walk me through the foraging philosophy','"walk me through"는 단계별로 설명해 달라는 뜻이에요. 지적 호기심을 표현하는 세련된 표현이에요.','레스토랑 철학 탐구','C1','cafe','pattern',NULL,5),
('s_cafe_C1_06','The Michelin inspector would certainly appreciate the restraint shown in the plating.','미슐랭 심사위원이라면 플레이팅의 절제미를 분명히 높이 평가할 거예요.','restraint shown in the plating','"restraint in plating"은 과하지 않은 절제된 플레이팅을 뜻해요. 파인 다이닝의 핵심 미학이에요.','파인 다이닝 평론','C1','cafe','pattern',NULL,6),
('s_cafe_C1_07','The sous vide preparation ensures a consistency that would be impossible to achieve with traditional methods.','수비드 조리법으로 전통 방식으로는 불가능한 일관성을 달성해요.','ensures a consistency that would be impossible','"ensures a consistency"는 균일한 품질을 보장한다는 뜻이에요.','조리 기법 설명','C1','cafe','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — C2 (7개)
-- 테마: 와인 전문 용어, 고급 미식 평론
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_C2_01','The malolactic fermentation gives this Chardonnay a buttery, almost creamy quality that beautifully complements the lobster bisque.','유산 발효가 이 샤르도네에 버터 같은 크리미한 품질을 부여해서 바닷가재 비스크와 완벽하게 어울려요.','malolactic fermentation gives a buttery quality','유산 발효는 사과산을 젖산으로 전환하는 과정이에요. 샤르도네의 크리미한 특성의 원인이 돼요.','와인 페어링 설명','C2','cafe','pattern',NULL,1),
('s_cafe_C2_02','The high tannin structure of this Barolo demands either a fatty red meat or a good decade of cellaring to soften its edges.','이 바롤로의 강한 타닌 구조는 기름진 적색육이나 10년의 셀러링을 필요로 해요.','high tannin structure demands','타닌은 와인의 수렴성을 만드는 폴리페놀 화합물이에요. 음식 페어링의 핵심 요소예요.','와인 전문 평론','C2','cafe','pattern',NULL,2),
('s_cafe_C2_03','The organoleptic assessment reveals a wine of extraordinary complexity — layers of terroir expressing themselves with each successive sip.','관능 평가에서 놀라운 복잡성을 가진 와인이 드러나요. 한 모금씩 마실 때마다 테루아의 층위가 표현돼요.','organoleptic assessment reveals','관능 평가(organoleptic assessment)는 시각, 후각, 미각을 통한 종합적 와인 평가예요.','와인 관능 평가','C2','cafe','pattern',NULL,3),
('s_cafe_C2_04','The appellation laws in Champagne strictly regulate the permitted varieties, yield per hectare, and minimum aging on lees.','샴페인의 원산지 명칭 법률은 허용 품종, 헥타르당 수확량, 효모 찌꺼기 위 최소 숙성 기간을 엄격히 규제해요.','appellation laws strictly regulate','원산지 명칭(appellation) 법률은 와인의 품질과 정체성을 보호하기 위한 법적 장치예요.','와인 원산지 명칭 설명','C2','cafe','pattern',NULL,4),
('s_cafe_C2_05','The chef''s application of spherification transforms a classic ponzu into tiny caviar pearls that burst with umami on the palate.','셰프의 구형화 기법이 클래식 폰즈를 입안에서 감칠맛이 터지는 작은 캐비어 구슬로 변환시켜요.','spherification transforms into caviar pearls','구형화는 분자 요리의 대표 기법으로 액체를 얇은 막으로 감싸 캐비어 형태로 만들어요.','분자 요리 묘사','C2','cafe','pattern',NULL,5),
('s_cafe_C2_06','What distinguishes a Grand Cru from a Premier Cru in Burgundy is ultimately a question of terroir specificity and the geological composition of the soil.','부르고뉴에서 그랑 크뤼와 프리미에 크뤼를 구별하는 것은 결국 테루아의 특수성과 토양의 지질학적 구성의 문제예요.','distinguishes Grand Cru from Premier Cru','그랑 크뤼와 프리미에 크뤼는 부르고뉴의 포도밭 등급 체계예요. 토양과 위치가 핵심이에요.','와인 등급 설명','C2','cafe','pattern',NULL,6),
('s_cafe_C2_07','The biodynamic viticulture practiced here treats the entire estate as a self-sustaining organism, eschewing synthetic inputs in favor of astronomical planting calendars and herbal preparations.','여기서 시행하는 생명역동 포도 재배는 합성 투입물 대신 천문학적 식재 달력과 허브 제제를 선호하며 전체 부동산을 자급자족하는 유기체로 취급해요.','biodynamic viticulture treats the entire estate as a self-sustaining organism','생명역동 농업은 루돌프 슈타이너의 철학에 기반한 총체적 유기 농업 접근법이에요.','생명역동 농업 설명','C2','cafe','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;


-- ============================================
-- TOPIC: health
-- ============================================
-- EngCat: Health Topic (건강)
-- 210 words (35 per CEFR level A1~C2) + 42 sentence patterns (7 per level)
-- Generated: 2026-05-24

-- ============================================================
-- WORDS
-- ============================================================

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES

-- ----------------------------------------------------------------
-- A1 — 35 words
-- ----------------------------------------------------------------
('w_health_A1_01','sick','/sɪk/','adjective','아픈','Feeling ill or unwell.','She stayed home because she was {sick}.','그녀는 아파서 집에 있었어요.','sick','A1','health',1,'sick person bed resting'),
('w_health_A1_02','pain','/peɪn/','noun','통증','An unpleasant physical feeling caused by injury or illness.','He felt a sharp {pain} in his chest.','그는 가슴에 날카로운 통증을 느꼈어요.','pain','A1','health',1,'person holding chest pain'),
('w_health_A1_03','doctor','/ˈdɒk.tər/','noun','의사','A person who is qualified to treat people who are ill.','The {doctor} checked her temperature.','의사가 그녀의 체온을 확인했어요.','doctor','A1','health',1,'doctor stethoscope clinic'),
('w_health_A1_04','hospital','/ˈhɒs.pɪ.t̬əl/','noun','병원','A place where sick or injured people are treated by doctors and nurses.','He was taken to the {hospital} by ambulance.','그는 구급차로 병원에 옮겨졌어요.','hospital','A1','health',1,'hospital building entrance'),
('w_health_A1_05','medicine','/ˈmed.ɪ.sɪn/','noun','약','A substance used to treat illness or injury.','Take this {medicine} twice a day.','이 약을 하루에 두 번 드세요.','medicine','A1','health',1,'medicine pills bottle'),
('w_health_A1_06','sleep','/sliːp/','verb','자다','To rest with your eyes closed and your mind unconscious.','You should {sleep} at least eight hours.','적어도 여덟 시간은 주무셔야 해요.','sleep','A1','health',1,'person sleeping bed night'),
('w_health_A1_07','tired','/taɪərd/','adjective','피곤한','Feeling that you need to rest or sleep.','She felt very {tired} after the long walk.','그녀는 긴 산책 후 매우 피곤했어요.','tired','A1','health',1,'tired person exhausted'),
('w_health_A1_08','hurt','/hɜːrt/','verb','아프다','To feel pain, or to cause pain.','My back {hurts} when I sit too long.','너무 오래 앉아 있으면 허리가 아파요.','hurts','A1','health',1,'person back pain hurting'),
('w_health_A1_09','fever','/ˈfiː.vər/','noun','열','A higher-than-normal body temperature, usually caused by illness.','The child had a high {fever} all night.','아이는 밤새 고열이 있었어요.','fever','A1','health',1,'child fever thermometer forehead'),
('w_health_A1_10','head','/hed/','noun','머리','The part of the body above the neck containing the brain.','My {head} hurts — I think I have a headache.','머리가 아파요 — 두통인 것 같아요.','head','A1','health',1,'person holding head headache'),
('w_health_A1_11','cold','/koʊld/','noun','감기','A common illness that causes a runny nose and sore throat.','I caught a {cold} last week.','지난주에 감기에 걸렸어요.','cold','A1','health',2,'person sneezing cold tissues'),
('w_health_A1_12','cough','/kɒf/','verb','기침하다','To push air out of your throat with a sudden loud sound.','He kept {coughing} during the meeting.','그는 회의 중에 계속 기침했어요.','coughing','A1','health',2,'person coughing covering mouth'),
('w_health_A1_13','water','/ˈwɔː.tər/','noun','물','A clear liquid that we drink to stay healthy.','Drink plenty of {water} when you are sick.','아플 때는 물을 많이 드세요.','water','A1','health',2,'glass of water hydration'),
('w_health_A1_14','rest','/rest/','verb','쉬다','To relax and not do anything active.','You need to {rest} and recover.','쉬면서 회복하셔야 해요.','rest','A1','health',2,'person resting sofa relaxing'),
('w_health_A1_15','nurse','/nɜːrs/','noun','간호사','A person whose job is to care for sick or injured people.','The {nurse} gave me an injection.','간호사가 주사를 놔줬어요.','nurse','A1','health',2,'nurse hospital uniform care'),
('w_health_A1_16','arm','/ɑːrm/','noun','팔','The long part of your body from your shoulder to your hand.','She broke her {arm} in a fall.','그녀는 넘어져서 팔이 부러졌어요.','arm','A1','health',2,'broken arm cast'),
('w_health_A1_17','leg','/leɡ/','noun','다리','One of the limbs of a human used for walking.','His {leg} was swollen after the accident.','사고 후 그의 다리가 부어올랐어요.','leg','A1','health',2,'leg swollen injury'),
('w_health_A1_18','eye','/aɪ/','noun','눈','One of the two organs in your face that you use to see.','Her {eyes} were red and irritated.','그녀의 눈이 빨갛게 충혈됐어요.','eyes','A1','health',2,'red irritated eyes'),
('w_health_A1_19','mouth','/maʊθ/','noun','입','The opening in your face used for eating and speaking.','Open your {mouth} wide for the doctor.','의사 선생님께 입을 크게 벌려보세요.','mouth','A1','health',2,'open mouth examination'),
('w_health_A1_20','throat','/θroʊt/','noun','목(구멍)','The passage inside the neck through which food and air pass.','My {throat} is really sore.','목이 많이 아파요.','throat','A1','health',2,'sore throat pain'),
('w_health_A1_21','stomach','/ˈstʌm.ək/','noun','배(위)','The organ in the body where food goes after being swallowed.','She has a {stomach} ache.','그녀는 배가 아파요.','stomach','A1','health',2,'stomach ache pain'),
('w_health_A1_22','help','/help/','verb','돕다','To make it easier for someone to do something.','Can you {help} me get to the clinic?','병원까지 데려다 주실 수 있어요?','help','A1','health',3,'person helping another clinic'),
('w_health_A1_23','pill','/pɪl/','noun','알약','A small tablet of medicine you swallow.','Take one {pill} before meals.','식사 전에 알약 한 개를 드세요.','pill','A1','health',3,'pill tablet medicine hand'),
('w_health_A1_24','hot','/hɒt/','adjective','뜨거운 / 열이 나는','Having a high temperature; also used to describe a fever.','His forehead feels very {hot}.','그의 이마가 많이 뜨겁네요.','hot','A1','health',3,'person hot forehead fever'),
('w_health_A1_25','better','/ˈbet.ər/','adjective','나아진','Improved in health compared to before.','I feel much {better} today.','오늘은 훨씬 나아진 것 같아요.','better','A1','health',3,'person smiling recovery'),
('w_health_A1_26','bad','/bæd/','adjective','나쁜 / 심한','Unpleasant or severe; used to describe worsening symptoms.','The pain is really {bad} today.','오늘은 통증이 정말 심해요.','bad','A1','health',3,'person pain grimace'),
('w_health_A1_27','call','/kɔːl/','verb','전화하다','To contact someone by phone.','Please {call} the doctor right away.','바로 의사에게 전화해 주세요.','call','A1','health',3,'person calling phone emergency'),
('w_health_A1_28','ear','/ɪər/','noun','귀','One of the two organs on the sides of your head for hearing.','My {ear} hurts a lot.','귀가 많이 아파요.','ear','A1','health',3,'ear pain infection'),
('w_health_A1_29','back','/bæk/','noun','등 / 허리','The part of your body from your shoulders to your hips.','I hurt my {back} lifting the box.','박스를 들다가 허리를 다쳤어요.','back','A1','health',3,'back pain person stretching'),
('w_health_A1_30','body','/ˈbɒd.i/','noun','몸','The whole physical structure of a person.','My whole {body} aches.','온몸이 쑤셔요.','body','A1','health',3,'person aching body sore'),
('w_health_A1_31','food','/fuːd/','noun','음식','Things that people eat for energy and nutrition.','I have no appetite — I can''t eat any {food}.','입맛이 없어서 음식을 못 먹겠어요.','food','A1','health',3,'no appetite food untouched'),
('w_health_A1_32','drink','/drɪŋk/','verb','마시다','To take liquid into your mouth and swallow it.','{Drink} plenty of fluids to stay hydrated.','수분 보충을 위해 음료를 많이 드세요.','Drink','A1','health',3,'drinking water hydration'),
('w_health_A1_33','hot water','/hɒt ˈwɔː.tər/','noun phrase','따뜻한 물','Warm water, often recommended when sick.','Try drinking some {hot water} with honey.','꿀을 넣은 따뜻한 물을 마셔보세요.','hot water','A1','health',3,'hot water honey mug'),
('w_health_A1_34','ambulance','/ˈæm.bjʊ.ləns/','noun','구급차','A vehicle used to take sick or injured people to hospital.','They called an {ambulance} immediately.','즉시 구급차를 불렀어요.','ambulance','A1','health',3,'ambulance emergency vehicle'),
('w_health_A1_35','healthy','/ˈhel.θi/','adjective','건강한','In good physical condition; not sick.','Eating vegetables keeps you {healthy}.','채소를 먹으면 건강을 유지할 수 있어요.','healthy','A1','health',1,'healthy person vegetables salad'),

-- ----------------------------------------------------------------
-- A2 — 35 words
-- ----------------------------------------------------------------
('w_health_A2_01','symptom','/ˈsɪmp.təm/','noun','증상','A sign or indication that something is wrong with your body.','Headache is a common {symptom} of flu.','두통은 독감의 흔한 증상이에요.','symptom','A2','health',1,'symptoms checklist clipboard doctor'),
('w_health_A2_02','cough','/kɒf/','noun','기침','The act or sound of coughing; also used as a noun.','His {cough} has lasted for two weeks.','그의 기침이 2주째 계속되고 있어요.','cough','A2','health',1,'person coughing persistent'),
('w_health_A2_03','allergy','/ˈæl.ər.dʒi/','noun','알레르기','An immune reaction causing symptoms like sneezing or rash.','She has a dust {allergy}.','그녀는 먼지 알레르기가 있어요.','allergy','A2','health',1,'allergy sneezing pollen'),
('w_health_A2_04','appointment','/əˈpɔɪnt.mənt/','noun','예약','A scheduled meeting with a doctor or other professional.','I made an {appointment} for Friday morning.','금요일 아침에 예약을 잡았어요.','appointment','A2','health',1,'doctor appointment calendar booking'),
('w_health_A2_05','pharmacy','/ˈfɑːr.mə.si/','noun','약국','A shop where medicines and health products are sold.','Go to the {pharmacy} to pick up your medicine.','약을 받으러 약국에 가세요.','pharmacy','A2','health',1,'pharmacy drugstore counter'),
('w_health_A2_06','prescription','/prɪˈskrɪp.ʃən/','noun','처방전','A written order from a doctor for medicine.','You need a {prescription} for that antibiotic.','그 항생제는 처방전이 필요해요.','prescription','A2','health',1,'prescription paper doctor writing'),
('w_health_A2_07','exercise','/ˈek.sər.saɪz/','noun','운동','Physical activity done to improve health and fitness.','Regular {exercise} is good for your heart.','규칙적인 운동은 심장에 좋아요.','exercise','A2','health',1,'person exercising jogging park'),
('w_health_A2_08','diet','/ˈdaɪ.ɪt/','noun','식단','The kind of food a person eats regularly.','A balanced {diet} helps prevent disease.','균형 잡힌 식단은 질병 예방에 도움이 돼요.','diet','A2','health',1,'balanced diet vegetables protein'),
('w_health_A2_09','swollen','/ˈswoʊ.lən/','adjective','부어오른','Larger than normal due to fluid or inflammation.','My ankle is {swollen} after the fall.','넘어진 후 발목이 부어올랐어요.','swollen','A2','health',1,'swollen ankle injury ice'),
('w_health_A2_10','bleed','/bliːd/','verb','피가 나다','To lose blood from the body.','The cut on his hand was {bleeding} badly.','그의 손 상처에서 피가 심하게 났어요.','bleeding','A2','health',2,'cut hand bleeding bandage'),
('w_health_A2_11','bandage','/ˈbæn.dɪdʒ/','noun','붕대','A strip of material used to cover a wound.','Wrap a {bandage} around the wound.','상처에 붕대를 감아주세요.','bandage','A2','health',2,'bandage wound first aid'),
('w_health_A2_12','injection','/ɪnˈdʒek.ʃən/','noun','주사','A shot of medicine given through a needle.','The doctor gave her an {injection}.','의사가 그녀에게 주사를 놨어요.','injection','A2','health',2,'injection needle doctor syringe'),
('w_health_A2_13','antibiotic','/ˌæn.ti.baɪˈɒt.ɪk/','noun','항생제','A medicine used to kill bacteria.','The doctor prescribed an {antibiotic} for the infection.','의사가 감염 치료를 위해 항생제를 처방했어요.','antibiotic','A2','health',2,'antibiotic capsule medicine'),
('w_health_A2_14','vitamin','/ˈvaɪ.tə.mɪn/','noun','비타민','A nutrient the body needs to stay healthy.','Take a {vitamin} C supplement every day.','매일 비타민 C 보충제를 드세요.','vitamin','A2','health',2,'vitamin supplement bottle'),
('w_health_A2_15','rash','/ræʃ/','noun','발진','Red spots or patches on the skin caused by an allergy or illness.','She developed a {rash} after eating shellfish.','그녀는 조개류를 먹은 후 발진이 생겼어요.','rash','A2','health',2,'skin rash red spots'),
('w_health_A2_16','dizzy','/ˈdɪz.i/','adjective','어지러운','Feeling as if everything is spinning around you.','I felt {dizzy} when I stood up too quickly.','너무 빨리 일어서서 어지러웠어요.','dizzy','A2','health',2,'dizzy spinning person'),
('w_health_A2_17','nausea','/ˈnɔː.zi.ə/','noun','메스꺼움','An unpleasant feeling of wanting to vomit.','She experienced {nausea} after taking the medication.','그녀는 약을 먹은 후 메스꺼움을 느꼈어요.','nausea','A2','health',2,'nausea person uncomfortable'),
('w_health_A2_18','vomit','/ˈvɒm.ɪt/','verb','구토하다','To bring food or liquid up from the stomach through the mouth.','He {vomited} three times overnight.','그는 밤새 세 번 구토했어요.','vomited','A2','health',2,'person nausea vomiting bathroom'),
('w_health_A2_19','temperature','/ˈtem.prɪ.tʃər/','noun','체온','The degree of heat in a person''s body.','My {temperature} is 38.5 degrees.','체온이 38.5도예요.','temperature','A2','health',2,'thermometer temperature checking'),
('w_health_A2_20','checkup','/ˈtʃek.ʌp/','noun','건강 검진','A medical examination to check your health.','I get a {checkup} every year.','매년 건강 검진을 받아요.','checkup','A2','health',2,'annual checkup doctor physical'),
('w_health_A2_21','blood pressure','/blʌd ˈpreʃ.ər/','noun','혈압','The force with which blood moves through the body.','Your {blood pressure} is a little high.','혈압이 약간 높네요.','blood pressure','A2','health',3,'blood pressure cuff measuring'),
('w_health_A2_22','weight','/weɪt/','noun','체중','How heavy a person or object is.','She is trying to lose {weight} by eating less.','그녀는 적게 먹어서 체중을 줄이려고 해요.','weight','A2','health',3,'scale weight loss health'),
('w_health_A2_23','sneeze','/sniːz/','verb','재채기하다','To expel air suddenly through the nose and mouth.','He kept {sneezing} due to the pollen.','꽃가루 때문에 계속 재채기를 했어요.','sneezing','A2','health',3,'sneezing pollen allergy tissue'),
('w_health_A2_24','runny nose','/ˌrʌn.i ˈnoʊz/','noun phrase','콧물','A condition where liquid comes out of the nose.','She had a {runny nose} all morning.','그녀는 오전 내내 콧물이 났어요.','runny nose','A2','health',3,'runny nose tissue cold flu'),
('w_health_A2_25','headache','/ˈhed.eɪk/','noun','두통','A pain felt inside the head.','I have a terrible {headache} right now.','지금 두통이 심해요.','headache','A2','health',3,'headache person pain'),
('w_health_A2_26','sore throat','/sɔːr θroʊt/','noun phrase','목 통증','Pain or irritation in the throat.','She had a {sore throat} for three days.','그녀는 사흘 동안 목이 아팠어요.','sore throat','A2','health',3,'sore throat pain drinking tea'),
('w_health_A2_27','ache','/eɪk/','noun','통증(지속적인)','A continuous dull pain in part of the body.','I have a dull {ache} in my lower back.','허리 아래쪽에 둔한 통증이 있어요.','ache','A2','health',3,'back ache dull pain'),
('w_health_A2_28','bruise','/bruːz/','noun','멍','A dark mark on the skin caused by a hit or injury.','She had a large {bruise} on her arm.','그녀의 팔에 큰 멍이 들었어요.','bruise','A2','health',3,'bruise arm injury discolored skin'),
('w_health_A2_29','inhaler','/ɪnˈheɪ.lər/','noun','흡입기','A device used to breathe in medicine for asthma.','Always carry your {inhaler} with you.','흡입기는 항상 가지고 다니세요.','inhaler','A2','health',3,'inhaler asthma device'),
('w_health_A2_30','asthma','/ˈæz.mə/','noun','천식','A condition that makes breathing difficult.','His {asthma} gets worse in cold weather.','그의 천식은 추운 날씨에 더 심해져요.','asthma','A2','health',3,'asthma breathing inhaler'),
('w_health_A2_31','clinic','/ˈklɪn.ɪk/','noun','의원 / 클리닉','A place where medical care is given, smaller than a hospital.','The local {clinic} opens at 9 a.m.','지역 의원은 오전 9시에 열어요.','clinic','A2','health',2,'clinic medical center entrance'),
('w_health_A2_32','operation','/ˌɒp.ərˈeɪ.ʃən/','noun','수술','A medical procedure performed on the body.','He had a minor {operation} on his knee.','그는 무릎에 소수술을 받았어요.','operation','A2','health',2,'knee operation surgery'),
('w_health_A2_33','painkiller','/ˈpeɪnˌkɪl.ər/','noun','진통제','A medicine that reduces or removes pain.','She took a {painkiller} for the headache.','그녀는 두통 때문에 진통제를 먹었어요.','painkiller','A2','health',2,'painkiller tablet pain relief'),
('w_health_A2_34','blood test','/blʌd test/','noun phrase','혈액 검사','A laboratory analysis of a blood sample.','The doctor ordered a {blood test}.','의사가 혈액 검사를 지시했어요.','blood test','A2','health',2,'blood test lab needle'),
('w_health_A2_35','first aid','/fɜːrst eɪd/','noun phrase','응급 처치','Basic medical care given to someone who is injured or ill.','Everyone should know basic {first aid}.','모든 사람이 기본 응급 처치를 알아야 해요.','first aid','A2','health',2,'first aid kit bandage'),

-- ----------------------------------------------------------------
-- B1 — 35 words
-- ----------------------------------------------------------------
('w_health_B1_01','diagnosis','/ˌdaɪ.əɡˈnoʊ.sɪs/','noun','진단','The identification of an illness by examining symptoms.','The {diagnosis} was Type 2 diabetes.','진단 결과 제2형 당뇨병이었어요.','diagnosis','B1','health',1,'diagnosis doctor report results'),
('w_health_B1_02','chronic','/ˈkrɒn.ɪk/','adjective','만성의','Lasting for a long time or recurring frequently.','He suffers from {chronic} back pain.','그는 만성 허리 통증을 앓고 있어요.','chronic','B1','health',1,'chronic pain long term treatment'),
('w_health_B1_03','recovery','/rɪˈkʌv.ər.i/','noun','회복','The process of getting better after illness or injury.','Her {recovery} after surgery was fast.','수술 후 그녀의 회복은 빨랐어요.','recovery','B1','health',1,'recovery hospital bed resting'),
('w_health_B1_04','nutrition','/njuːˈtrɪʃ.ən/','noun','영양','The process of eating the right foods to stay healthy.','Good {nutrition} supports a strong immune system.','좋은 영양 섭취는 면역력을 강화해요.','nutrition','B1','health',1,'nutrition balanced meal food'),
('w_health_B1_05','immune','/ɪˈmjuːn/','adjective','면역의','Resistant to a particular disease or condition.','His body is not {immune} to the virus.','그의 몸은 그 바이러스에 면역이 없어요.','immune','B1','health',1,'immune system body defense'),
('w_health_B1_06','therapy','/ˈθer.ə.pi/','noun','치료 / 요법','Treatment intended to relieve or heal a disorder.','She started physical {therapy} after the accident.','그녀는 사고 후 물리치료를 시작했어요.','therapy','B1','health',1,'physical therapy session stretching'),
('w_health_B1_07','surgery','/ˈsɜːr.dʒər.i/','noun','수술','A medical procedure involving cutting the body.','He is scheduled for knee {surgery} next month.','그는 다음 달 무릎 수술이 예정되어 있어요.','surgery','B1','health',1,'surgery operating room doctors'),
('w_health_B1_08','anxiety','/æŋˈzaɪ.ə.ti/','noun','불안','A feeling of worry or fear, often affecting health.','Her {anxiety} made it hard to sleep.','불안 때문에 잠을 자기가 어려웠어요.','anxiety','B1','health',1,'anxiety stress person worried'),
('w_health_B1_09','stress','/stres/','noun','스트레스','Mental or emotional strain caused by pressure.','Chronic {stress} can weaken the immune system.','만성 스트레스는 면역 체계를 약화시킬 수 있어요.','stress','B1','health',1,'stress work mental health'),
('w_health_B1_10','lifestyle','/ˈlaɪf.staɪl/','noun','생활 방식','The way a person lives, including habits and behaviors.','A healthy {lifestyle} prevents many diseases.','건강한 생활 방식은 많은 질병을 예방해요.','lifestyle','B1','health',1,'healthy lifestyle exercise diet'),
('w_health_B1_11','inflammation','/ˌɪn.fləˈmeɪ.ʃən/','noun','염증','Redness, swelling, and pain in a part of the body.','The doctor said there is some {inflammation} in the joint.','의사가 관절에 염증이 좀 있다고 했어요.','inflammation','B1','health',2,'joint inflammation swelling red'),
('w_health_B1_12','fracture','/ˈfræk.tʃər/','noun','골절','A break or crack in a bone.','The X-ray showed a hairline {fracture}.','X선에서 미세 골절이 발견됐어요.','fracture','B1','health',2,'bone fracture xray cast'),
('w_health_B1_13','obesity','/oʊˈbiː.sɪ.ti/','noun','비만','The condition of being dangerously overweight.','{Obesity} increases the risk of heart disease.','비만은 심장 질환의 위험을 높여요.','Obesity','B1','health',2,'obesity health risk weight'),
('w_health_B1_14','dehydration','/ˌdiː.haɪˈdreɪ.ʃən/','noun','탈수','A condition caused by the loss of too much water from the body.','Severe {dehydration} requires immediate treatment.','심한 탈수는 즉각적인 치료가 필요해요.','dehydration','B1','health',2,'dehydration dry lips water'),
('w_health_B1_15','depression','/dɪˈpreʃ.ən/','noun','우울증','A mental health condition causing persistent sadness.','She was diagnosed with clinical {depression}.','그녀는 임상적 우울증 진단을 받았어요.','depression','B1','health',2,'depression sad mental health'),
('w_health_B1_16','concussion','/kənˈkʌʃ.ən/','noun','뇌진탕','A brain injury caused by a blow to the head.','He got a {concussion} during the football game.','그는 축구 경기 중 뇌진탕을 입었어요.','concussion','B1','health',2,'concussion head injury sports'),
('w_health_B1_17','migraine','/ˈmaɪ.ɡreɪn/','noun','편두통','A severe headache often with nausea and light sensitivity.','She suffers from frequent {migraines}.','그녀는 편두통을 자주 앓아요.','migraines','B1','health',2,'migraine headache dark room'),
('w_health_B1_18','insomnia','/ɪnˈsɒm.ni.ə/','noun','불면증','The inability to fall asleep or stay asleep.','Work stress caused his {insomnia}.','업무 스트레스가 그의 불면증을 유발했어요.','insomnia','B1','health',2,'insomnia awake night clock'),
('w_health_B1_19','sprain','/spreɪn/','noun','염좌','An injury to a ligament caused by sudden movement.','She had a bad ankle {sprain}.','그녀는 발목 염좌가 심했어요.','sprain','A2','health',2,'sprained ankle wrapped ice'),
('w_health_B1_20','infection','/ɪnˈfek.ʃən/','noun','감염','The invasion of the body by harmful microorganisms.','The wound developed an {infection}.','상처에 감염이 생겼어요.','infection','B1','health',2,'wound infection swollen red'),
('w_health_B1_21','vaccine','/ˈvæk.siːn/','noun','백신','A substance that helps the body fight a specific disease.','Have you had the flu {vaccine} this year?','올해 독감 백신을 맞으셨나요?','vaccine','B1','health',3,'vaccine injection arm flu shot'),
('w_health_B1_22','scan','/skæn/','noun','스캔 / 촬영','An image of the inside of the body produced by a machine.','They did an MRI {scan} of her brain.','그들은 그녀의 뇌 MRI 스캔을 촬영했어요.','scan','B1','health',3,'mri scan brain medical'),
('w_health_B1_23','dose','/doʊs/','noun','복용량','The amount of a medicine taken at one time.','Take the correct {dose} as directed.','안내에 따라 올바른 복용량을 드세요.','dose','B1','health',3,'medicine dose pill measurement'),
('w_health_B1_24','specialist','/ˈspeʃ.ə.lɪst/','noun','전문의','A doctor who is an expert in a particular area of medicine.','She was referred to a heart {specialist}.','그녀는 심장 전문의에게 의뢰됐어요.','specialist','B1','health',3,'specialist doctor cardiology'),
('w_health_B1_25','symptom relief','/ˈsɪmp.təm rɪˈliːf/','noun phrase','증상 완화','The reduction or easing of symptoms.','This medicine provides {symptom relief} within an hour.','이 약은 한 시간 안에 증상 완화 효과가 있어요.','symptom relief','B1','health',3,'symptom relief medicine comfort'),
('w_health_B1_26','hypertension','/ˌhaɪ.pəˈten.ʃən/','noun','고혈압','Persistently high blood pressure.','He was diagnosed with {hypertension} at 45.','그는 45세에 고혈압 진단을 받았어요.','hypertension','B1','health',3,'hypertension blood pressure monitor'),
('w_health_B1_27','diabetes','/ˌdaɪ.əˈbiː.tiːz/','noun','당뇨병','A disease where the body cannot regulate blood sugar.','Managing {diabetes} requires dietary changes.','당뇨병 관리는 식단 변화가 필요해요.','diabetes','B1','health',3,'diabetes blood sugar monitor'),
('w_health_B1_28','reflex','/ˈriː.fleks/','noun','반사 반응','An automatic response of the body to a stimulus.','The doctor tested her {reflexes} with a hammer.','의사가 망치로 그녀의 반사 반응을 검사했어요.','reflexes','B1','health',3,'reflex test doctor hammer'),
('w_health_B1_29','vital signs','/ˈvaɪ.t̬əl saɪnz/','noun phrase','활력 징후','Measurements that show the state of essential body functions.','The nurse checked his {vital signs} every hour.','간호사가 한 시간마다 그의 활력 징후를 확인했어요.','vital signs','B1','health',3,'vital signs monitor hospital'),
('w_health_B1_30','ward','/wɔːrd/','noun','병동','A room or section in a hospital for patients.','She was moved to a private {ward}.','그녀는 1인실 병동으로 옮겨졌어요.','ward','B1','health',3,'hospital ward beds patients'),
('w_health_B1_31','physical','/ˈfɪz.ɪ.kəl/','adjective','신체적인','Relating to the body rather than the mind.','{Physical} activity every day improves well-being.','매일 신체 활동을 하면 건강이 향상돼요.','Physical','B1','health',2,'physical activity daily routine'),
('w_health_B1_32','side effect','/saɪd ɪˈfekt/','noun phrase','부작용','An unwanted effect of a medicine or treatment.','Drowsiness is a common {side effect} of this drug.','졸음은 이 약의 흔한 부작용이에요.','side effect','B1','health',2,'side effect medicine warning'),
('w_health_B1_33','organ','/ˈɔːr.ɡən/','noun','장기','A part of the body that performs a specific function.','The liver is a vital {organ}.','간은 매우 중요한 장기예요.','organ','B1','health',2,'organ body liver heart diagram'),
('w_health_B1_34','surgeon','/ˈsɜːr.dʒən/','noun','외과 의사','A doctor who performs surgical operations.','The {surgeon} operated for six hours.','외과 의사는 여섯 시간 동안 수술했어요.','surgeon','B1','health',2,'surgeon operating room gown'),
('w_health_B1_35','rehabilitation','/ˌriː.həˌbɪl.ɪˈteɪ.ʃən/','noun','재활','The process of restoring health or ability after injury.','{Rehabilitation} helped him walk again.','재활 치료 덕분에 그는 다시 걸을 수 있었어요.','Rehabilitation','B1','health',1,'rehabilitation therapy walking exercise'),

-- ----------------------------------------------------------------
-- B2 — 35 words
-- ----------------------------------------------------------------
('w_health_B2_01','metabolism','/məˈtæb.ə.lɪz.əm/','noun','신진대사','The chemical processes in the body that convert food into energy.','A fast {metabolism} helps maintain a healthy weight.','빠른 신진대사는 건강한 체중 유지에 도움이 돼요.','metabolism','B2','health',1,'metabolism body energy food'),
('w_health_B2_02','cardiovascular','/ˌkɑːr.di.oʊˈvæs.kjʊ.lər/','adjective','심혈관의','Relating to the heart and blood vessels.','Running improves {cardiovascular} health.','달리기는 심혈관 건강을 향상시켜요.','cardiovascular','B2','health',1,'cardiovascular exercise running heart'),
('w_health_B2_03','inflammation','/ˌɪn.fləˈmeɪ.ʃən/','noun','염증','The body''s response to injury or infection, causing redness and swelling.','Chronic {inflammation} is linked to many diseases.','만성 염증은 많은 질병과 관련이 있어요.','inflammation','B2','health',1,'chronic inflammation body cells'),
('w_health_B2_04','prognosis','/prɒɡˈnoʊ.sɪs/','noun','예후','A prediction of the likely outcome of a disease.','The doctor gave a positive {prognosis}.','의사는 긍정적인 예후를 내렸어요.','prognosis','B2','health',1,'prognosis doctor patient results'),
('w_health_B2_05','pathology','/pæˈθɒl.ə.dʒi/','noun','병리학','The study of diseases and their causes and effects.','The {pathology} report confirmed the diagnosis.','병리학 보고서가 진단을 확인해줬어요.','pathology','B2','health',1,'pathology lab microscope'),
('w_health_B2_06','epidemiology','/ˌep.ɪ.diː.miˈɒl.ə.dʒi/','noun','역학','The study of how diseases spread in populations.','{Epidemiology} helped track the outbreak.','역학 연구가 발병 추적에 도움이 됐어요.','Epidemiology','B2','health',1,'epidemiology disease map population'),
('w_health_B2_07','wellness','/ˈwel.nəs/','noun','건강(웰니스)','The state of being in good health as an active goal.','The company promotes employee {wellness}.','회사는 직원 건강(웰니스)을 장려해요.','wellness','B2','health',1,'wellness yoga mindfulness healthy'),
('w_health_B2_08','holistic','/hoʊˈlɪs.tɪk/','adjective','전인적인','Treating the whole person, not just the symptoms.','She prefers a {holistic} approach to healing.','그녀는 치유에 전인적 접근법을 선호해요.','holistic','B2','health',1,'holistic health mind body spirit'),
('w_health_B2_09','syndrome','/ˈsɪn.droʊm/','noun','증후군','A group of symptoms that consistently occur together.','He was diagnosed with metabolic {syndrome}.','그는 대사 증후군 진단을 받았어요.','syndrome','B2','health',1,'syndrome diagnosis medical chart'),
('w_health_B2_10','sedentary','/ˈsed.ən.ter.i/','adjective','앉아서 생활하는','Tending to spend much time seated; involving little exercise.','A {sedentary} lifestyle raises the risk of obesity.','앉아서 생활하는 습관은 비만 위험을 높여요.','sedentary','B2','health',2,'sedentary lifestyle sitting desk'),
('w_health_B2_11','antioxidant','/ˌæn.tiˈɒk.sɪ.dənt/','noun','항산화제','A substance that protects cells from damage.','Berries are rich in {antioxidants}.','베리류에는 항산화제가 풍부해요.','antioxidants','B2','health',2,'antioxidant berries food colorful'),
('w_health_B2_12','cortisol','/ˈkɔːr.tɪ.sɒl/','noun','코르티솔','A hormone released in response to stress.','High {cortisol} levels disrupt sleep patterns.','높은 코르티솔 수치는 수면 패턴을 방해해요.','cortisol','B2','health',2,'cortisol stress hormone brain'),
('w_health_B2_13','placebo','/pləˈsiː.boʊ/','noun','위약','A treatment with no active ingredient used in trials.','The {placebo} effect can be surprisingly powerful.','위약 효과는 놀라울 정도로 강력할 수 있어요.','placebo','B2','health',2,'placebo pill clinical trial'),
('w_health_B2_14','biopsy','/ˈbaɪ.ɒp.si/','noun','생검','The removal of a tissue sample for examination.','The doctor ordered a {biopsy} of the lump.','의사가 혹에 대한 생검을 지시했어요.','biopsy','B2','health',2,'biopsy tissue sample lab'),
('w_health_B2_15','complication','/ˌkɒm.plɪˈkeɪ.ʃən/','noun','합병증','A secondary condition that makes treatment more difficult.','Pneumonia can be a {complication} of flu.','폐렴은 독감의 합병증이 될 수 있어요.','complication','B2','health',2,'complication medical chart hospital'),
('w_health_B2_16','deteriorate','/dɪˈtɪər.i.ə.reɪt/','verb','악화되다','To become progressively worse in quality or condition.','Her condition began to {deteriorate} rapidly.','그녀의 상태가 급속히 악화되기 시작했어요.','deteriorate','B2','health',2,'condition worsening hospital monitor'),
('w_health_B2_17','dosage','/ˈdoʊ.sɪdʒ/','noun','복용량(처방)','The recommended amount and frequency of a medicine.','Do not exceed the recommended {dosage}.','권장 복용량을 초과하지 마세요.','dosage','B2','health',2,'dosage prescription label medicine'),
('w_health_B2_18','genetic','/dʒɪˈnet.ɪk/','adjective','유전적인','Relating to genes or inherited characteristics.','Some cancers have a {genetic} component.','일부 암에는 유전적 요인이 있어요.','genetic','B2','health',2,'genetic dna helix testing'),
('w_health_B2_19','immune system','/ɪˈmjuːn ˈsɪs.təm/','noun phrase','면역 체계','The body''s defense system against disease.','Stress weakens the {immune system}.','스트레스는 면역 체계를 약화시켜요.','immune system','B2','health',2,'immune system body defense cells'),
('w_health_B2_20','malnutrition','/ˌmæl.njuːˈtrɪʃ.ən/','noun','영양실조','Lack of proper nutrients in the diet.','{Malnutrition} affects children''s development.','영양실조는 아이들의 발달에 영향을 미쳐요.','Malnutrition','B2','health',2,'malnutrition thin child food'),
('w_health_B2_21','respiratory','/rɪˈspɪr.ə.tər.i/','adjective','호흡기의','Relating to breathing and the lungs.','He has a {respiratory} infection.','그는 호흡기 감염이 있어요.','respiratory','B2','health',3,'respiratory infection lungs breathing'),
('w_health_B2_22','endocrine','/ˈen.dəʊ.kraɪn/','adjective','내분비의','Relating to glands that secrete hormones directly into blood.','The {endocrine} system regulates growth.','내분비 체계는 성장을 조절해요.','endocrine','B2','health',3,'endocrine system hormones gland diagram'),
('w_health_B2_23','incubation period','/ˌɪŋ.kjʊˈbeɪ.ʃən ˌpɪər.i.əd/','noun phrase','잠복기','The time between infection and the first symptoms.','The {incubation period} is about five days.','잠복기는 약 5일이에요.','incubation period','B2','health',3,'incubation period virus timeline'),
('w_health_B2_24','mutation','/mjuːˈteɪ.ʃən/','noun','돌연변이','A change in the DNA of an organism.','A viral {mutation} made treatment harder.','바이러스 돌연변이로 치료가 더 어려워졌어요.','mutation','B2','health',3,'mutation virus dna change'),
('w_health_B2_25','neurological','/ˌnjʊər.əˈlɒdʒ.ɪ.kəl/','adjective','신경학적인','Relating to the nervous system or neurology.','She showed {neurological} symptoms after the accident.','사고 후 신경학적 증상이 나타났어요.','neurological','B2','health',3,'neurological brain nervous system'),
('w_health_B2_26','prediabetes','/ˌpriː.daɪ.əˈbiː.tiːz/','noun','당뇨 전단계','A condition where blood sugar is high but not yet diabetic.','His test revealed {prediabetes}.','검사 결과 당뇨 전단계가 발견됐어요.','prediabetes','B2','health',3,'prediabetes blood sugar test'),
('w_health_B2_27','ophthalmology','/ˌɒf.θælˈmɒl.ə.dʒi/','noun','안과학','The branch of medicine dealing with eye disorders.','She studied {ophthalmology} for five years.','그녀는 5년간 안과학을 공부했어요.','ophthalmology','B2','health',3,'ophthalmology eye exam doctor'),
('w_health_B2_28','pulmonary','/ˈpʌl.mə.ner.i/','adjective','폐의','Relating to the lungs.','He was diagnosed with {pulmonary} fibrosis.','그는 폐섬유증 진단을 받았어요.','pulmonary','B2','health',3,'pulmonary lungs breathing xray'),
('w_health_B2_29','hypertrophy','/haɪˈpɜːr.trə.fi/','noun','비대증','Enlargement of an organ or tissue from increased cell size.','Muscle {hypertrophy} results from resistance training.','근육 비대증은 저항 운동의 결과예요.','hypertrophy','B2','health',3,'muscle hypertrophy gym fitness'),
('w_health_B2_30','pathogen','/ˈpæθ.ə.dʒən/','noun','병원체','A bacterium, virus, or other microorganism causing disease.','The {pathogen} was identified in the lab.','병원체가 실험실에서 확인됐어요.','pathogen','B2','health',3,'pathogen virus bacteria microscope'),
('w_health_B2_31','immunization','/ˌɪm.jʊ.naɪˈzeɪ.ʃən/','noun','예방접종','The process of making a person immune to a disease.','Childhood {immunization} prevents many diseases.','어린 시절 예방접종은 많은 질병을 예방해요.','immunization','B2','health',2,'immunization vaccine child injection'),
('w_health_B2_32','anemia','/əˈniː.mi.ə/','noun','빈혈','A condition with too few red blood cells or hemoglobin.','She was fatigued due to {anemia}.','그녀는 빈혈로 인해 피로감을 느꼈어요.','anemia','B2','health',2,'anemia pale tired blood test'),
('w_health_B2_33','fibromyalgia','/ˌfaɪ.broʊ.maɪˈæl.dʒi.ə/','noun','섬유근육통','A disorder causing widespread musculoskeletal pain.','{Fibromyalgia} causes fatigue and sleep problems.','섬유근육통은 피로와 수면 문제를 일으켜요.','Fibromyalgia','B2','health',2,'fibromyalgia pain fatigue body'),
('w_health_B2_34','inflammatory','/ɪnˈflæm.ə.tər.i/','adjective','염증성의','Causing or relating to inflammation.','He avoids {inflammatory} foods like sugar.','그는 설탕 같은 염증성 식품을 피해요.','inflammatory','B2','health',2,'inflammatory food diet avoid'),
('w_health_B2_35','palliative','/ˈpæl.i.ə.tɪv/','adjective','완화적인','Relieving symptoms without curing the underlying cause.','She received {palliative} care at home.','그녀는 집에서 완화 치료를 받았어요.','palliative','B2','health',2,'palliative care comfort home nursing'),

-- ----------------------------------------------------------------
-- C1 — 35 words
-- ----------------------------------------------------------------
('w_health_C1_01','etiology','/ˌiː.ti.ˈɒl.ə.dʒi/','noun','병인론','The study of the causes or origins of a disease.','The {etiology} of the disorder is still unknown.','그 장애의 병인은 아직 알려지지 않았어요.','etiology','C1','health',1,'etiology disease cause research'),
('w_health_C1_02','comorbidity','/ˌkoʊ.mɔːrˈbɪd.ɪ.ti/','noun','동반 이환','The presence of two or more chronic diseases in one patient.','Hypertension and diabetes often occur as {comorbidities}.','고혈압과 당뇨는 종종 동반 이환으로 나타나요.','comorbidities','C1','health',1,'comorbidity multiple conditions patient'),
('w_health_C1_03','pharmacology','/ˌfɑːr.məˈkɒl.ə.dʒi/','noun','약리학','The branch of medicine dealing with drugs and their effects.','She specializes in clinical {pharmacology}.','그녀는 임상 약리학을 전공해요.','pharmacology','C1','health',1,'pharmacology drugs lab research'),
('w_health_C1_04','endocrinology','/ˌen.dəʊ.krɪˈnɒl.ə.dʒi/','noun','내분비학','The study of hormones and the endocrine system.','He was referred to an {endocrinology} clinic.','그는 내분비학 클리닉에 의뢰됐어요.','endocrinology','C1','health',1,'endocrinology hormones gland doctor'),
('w_health_C1_05','neurology','/njʊəˈrɒl.ə.dʒi/','noun','신경학','The branch of medicine dealing with disorders of the nervous system.','She was referred to {neurology} for her tremors.','그녀는 손 떨림으로 신경과에 의뢰됐어요.','neurology','C1','health',1,'neurology brain scan neurologist'),
('w_health_C1_06','prophylactic','/ˌprɒf.ɪˈlæk.tɪk/','adjective','예방적인','Done to prevent disease rather than treat it.','The doctor prescribed {prophylactic} antibiotics.','의사가 예방 목적으로 항생제를 처방했어요.','prophylactic','C1','health',1,'prophylactic medicine prevention shield'),
('w_health_C1_07','autoimmune','/ˌɔː.toʊ.ɪˈmjuːn/','adjective','자가면역의','Relating to a condition where the immune system attacks the body.','Rheumatoid arthritis is an {autoimmune} disease.','류마티스 관절염은 자가면역 질환이에요.','autoimmune','C1','health',1,'autoimmune disease immune attack cells'),
('w_health_C1_08','biomarker','/ˈbaɪ.oʊˌmɑːr.kər/','noun','생체표지자','A biological molecule used to detect a disease.','Elevated PSA is a {biomarker} for prostate issues.','높은 PSA 수치는 전립선 문제의 생체표지자예요.','biomarker','C1','health',1,'biomarker blood test cancer detection'),
('w_health_C1_09','remission','/rɪˈmɪʃ.ən/','noun','관해','A period when a disease is less severe or not active.','Her cancer has been in {remission} for two years.','그녀의 암은 2년째 관해 상태예요.','remission','C1','health',1,'remission cancer recovery hope'),
('w_health_C1_10','thrombosis','/θrɒmˈboʊ.sɪs/','noun','혈전증','The formation of a blood clot inside a blood vessel.','Deep vein {thrombosis} can be life-threatening.','심부 정맥 혈전증은 생명을 위협할 수 있어요.','thrombosis','C1','health',1,'thrombosis blood clot vein leg'),
('w_health_C1_11','oncology','/ɒŋˈkɒl.ə.dʒi/','noun','종양학','The branch of medicine dealing with cancer.','She works in the {oncology} ward.','그녀는 종양과 병동에서 근무해요.','oncology','C1','health',2,'oncology cancer treatment ward'),
('w_health_C1_12','anaphylaxis','/ˌæn.ə.fɪˈlæk.sɪs/','noun','과민성 쇼크','A severe, potentially life-threatening allergic reaction.','Bee stings can cause {anaphylaxis} in some people.','벌침은 일부 사람들에게 과민성 쇼크를 일으킬 수 있어요.','anaphylaxis','C1','health',2,'anaphylaxis allergic reaction epipen'),
('w_health_C1_13','hematology','/ˌhiː.məˈtɒl.ə.dʒi/','noun','혈액학','The study of blood and blood diseases.','The {hematology} report showed low platelets.','혈액학 보고서에서 혈소판 수치가 낮게 나왔어요.','hematology','C1','health',2,'hematology blood test lab'),
('w_health_C1_14','immunotherapy','/ɪˌmjuː.noʊˈθer.ə.pi/','noun','면역 요법','Using the immune system to treat disease, especially cancer.','{Immunotherapy} is a breakthrough in cancer treatment.','면역 요법은 암 치료의 획기적인 발전이에요.','Immunotherapy','C1','health',2,'immunotherapy cancer treatment infusion'),
('w_health_C1_15','catheter','/ˈkæθ.ɪ.tər/','noun','카테터','A thin tube inserted into the body to drain fluids.','The nurse inserted a {catheter} before the surgery.','간호사가 수술 전 카테터를 삽입했어요.','catheter','C1','health',2,'catheter tube medical procedure'),
('w_health_C1_16','tachycardia','/ˌtæk.ɪˈkɑːr.di.ə/','noun','빈맥','An abnormally fast heart rate.','The patient presented with {tachycardia}.','환자는 빈맥 증상을 보였어요.','tachycardia','C1','health',2,'tachycardia fast heartbeat ecg'),
('w_health_C1_17','hemostasis','/ˌhiː.məˈsteɪ.sɪs/','noun','지혈','The process that stops bleeding.','Proper {hemostasis} is essential during surgery.','수술 중 적절한 지혈이 필수적이에요.','hemostasis','C1','health',2,'hemostasis bleeding stop surgery'),
('w_health_C1_18','sepsis','/ˈsep.sɪs/','noun','패혈증','A life-threatening response to infection causing organ failure.','{Sepsis} requires immediate intensive care.','패혈증은 즉각적인 집중 치료가 필요해요.','Sepsis','C1','health',2,'sepsis infection intensive care hospital'),
('w_health_C1_19','embolism','/ˈem.bə.lɪz.əm/','noun','색전증','A blockage in an artery caused by a blood clot or other substance.','A pulmonary {embolism} can be fatal.','폐색전증은 치명적일 수 있어요.','embolism','C1','health',2,'embolism clot artery lung'),
('w_health_C1_20','vasodilation','/ˌveɪ.zoʊ.daɪˈleɪ.ʃən/','noun','혈관 확장','The widening of blood vessels to increase blood flow.','Exercise causes {vasodilation} in the muscles.','운동은 근육의 혈관 확장을 유발해요.','vasodilation','C1','health',2,'vasodilation blood vessel flow exercise'),
('w_health_C1_21','cytokine','/ˈsaɪ.tə.kaɪn/','noun','사이토카인','A protein released by cells that affects the immune system.','A {cytokine} storm can cause severe inflammation.','사이토카인 폭풍은 심한 염증을 일으킬 수 있어요.','cytokine','C1','health',3,'cytokine immune response cells'),
('w_health_C1_22','histamine','/ˈhɪs.tə.miːn/','noun','히스타민','A compound released in allergic reactions.','Antihistamines block the effects of {histamine}.','항히스타민제는 히스타민의 효과를 차단해요.','histamine','C1','health',3,'histamine allergy reaction cells'),
('w_health_C1_23','lymph node','/lɪmf noʊd/','noun phrase','림프절','A small gland that filters lymph fluid and fights infection.','The swollen {lymph nodes} suggested an infection.','부은 림프절은 감염을 시사했어요.','lymph nodes','C1','health',3,'lymph node swollen neck throat'),
('w_health_C1_24','fibrin','/ˈfaɪ.brɪn/','noun','피브린','A protein involved in blood clotting.','{Fibrin} forms a mesh to stop bleeding.','피브린은 출혈을 멈추기 위한 그물을 형성해요.','Fibrin','C1','health',3,'fibrin clotting blood wound'),
('w_health_C1_25','contraindication','/ˌkɒn.trə.ɪn.dɪˈkeɪ.ʃən/','noun','금기 사항','A condition that makes a treatment inadvisable.','Pregnancy is a {contraindication} for this drug.','임신은 이 약의 금기 사항이에요.','contraindication','C1','health',3,'contraindication medicine warning label'),
('w_health_C1_26','platelets','/ˈpleɪt.lɪts/','noun','혈소판','Small blood cells that help form clots to stop bleeding.','Low {platelets} increase the risk of bleeding.','혈소판 수치가 낮으면 출혈 위험이 높아져요.','platelets','C1','health',3,'platelets blood clot microscope'),
('w_health_C1_27','intubation','/ˌɪn.tjuːˈbeɪ.ʃən/','noun','삽관','Inserting a tube into the airway to help a patient breathe.','Emergency {intubation} was necessary.','응급 삽관이 필요했어요.','intubation','C1','health',3,'intubation airway tube emergency'),
('w_health_C1_28','lesion','/ˈliː.ʒən/','noun','병변','An area of tissue that is damaged or abnormal.','The MRI showed a {lesion} on the brain.','MRI에서 뇌의 병변이 발견됐어요.','lesion','C1','health',3,'lesion brain mri scan'),
('w_health_C1_29','hypoglycemia','/ˌhaɪ.poʊ.ɡlaɪˈsiː.mi.ə/','noun','저혈당증','A condition with abnormally low blood sugar levels.','She fainted due to {hypoglycemia}.','그녀는 저혈당으로 기절했어요.','hypoglycemia','C1','health',3,'hypoglycemia blood sugar low fainting'),
('w_health_C1_30','prion','/ˈpriː.ɒn/','noun','프리온','An abnormal protein that can cause brain disease.','{Prion} diseases are always fatal.','프리온 질환은 항상 치명적이에요.','Prion','C1','health',3,'prion brain disease protein'),
('w_health_C1_31','renal','/ˈriː.nəl/','adjective','신장의','Relating to the kidneys.','He has chronic {renal} failure.','그는 만성 신부전이 있어요.','renal','C1','health',2,'renal kidney failure medical'),
('w_health_C1_32','myocardial infarction','/ˌmaɪ.əˈkɑːr.di.əl ɪnˈfɑːrk.ʃən/','noun phrase','심근경색','The medical term for a heart attack.','He was hospitalized after a {myocardial infarction}.','심근경색으로 그는 입원했어요.','myocardial infarction','C1','health',2,'myocardial infarction heart attack ecg'),
('w_health_C1_33','cerebrospinal','/ˌser.ɪ.broʊˈspaɪ.nəl/','adjective','뇌척수의','Relating to both the brain and spinal cord.','They analyzed the {cerebrospinal} fluid.','뇌척수액을 분석했어요.','cerebrospinal','C1','health',2,'cerebrospinal fluid spinal brain'),
('w_health_C1_34','metastasis','/mɪˈtæs.tə.sɪs/','noun','전이','The spread of cancer from its original site to another part.','The cancer showed signs of {metastasis}.','암이 전이 징후를 보였어요.','metastasis','C1','health',2,'metastasis cancer spread body'),
('w_health_C1_35','carcinogen','/kɑːrˈsɪn.ə.dʒən/','noun','발암 물질','A substance capable of causing cancer.','Tobacco smoke contains many {carcinogens}.','담배 연기에는 많은 발암 물질이 들어 있어요.','carcinogens','C1','health',2,'carcinogen tobacco smoke cancer risk'),

-- ----------------------------------------------------------------
-- C2 — 35 words
-- ----------------------------------------------------------------
('w_health_C2_01','pharmacokinetics','/ˌfɑːr.mə.koʊ.kɪˈnet.ɪks/','noun','약동학','The study of how drugs are absorbed, distributed, and eliminated.','Understanding {pharmacokinetics} is essential for dosing.','약동학 이해는 복용량 결정에 필수적이에요.','pharmacokinetics','C2','health',1,'pharmacokinetics drug absorption graph'),
('w_health_C2_02','histopathology','/ˌhɪs.toʊ.pæˈθɒl.ə.dʒi/','noun','조직 병리학','The study of diseased tissue under a microscope.','The {histopathology} confirmed malignancy.','조직 병리학 검사에서 악성이 확인됐어요.','histopathology','C2','health',1,'histopathology microscope tissue slide'),
('w_health_C2_03','immunosuppression','/ɪˌmjuː.noʊ.səˈpreʃ.ən/','noun','면역 억제','The reduction of the immune system''s activity.','Organ transplant patients need {immunosuppression}.','장기 이식 환자는 면역 억제가 필요해요.','immunosuppression','C2','health',1,'immunosuppression transplant drugs'),
('w_health_C2_04','nosocomial','/ˌnoʊ.zəˈkoʊ.mi.əl/','adjective','병원 내 감염의','Originating in or acquired in a hospital.','He developed a {nosocomial} infection after surgery.','그는 수술 후 병원 내 감염이 생겼어요.','nosocomial','C2','health',1,'nosocomial hospital infection icu'),
('w_health_C2_05','teratogenic','/ˌter.ə.toʊˈdʒen.ɪk/','adjective','기형 유발성의','Capable of causing abnormal fetal development.','Thalidomide is known to be {teratogenic}.','탈리도마이드는 기형 유발성으로 알려져 있어요.','teratogenic','C2','health',1,'teratogenic fetal development warning'),
('w_health_C2_06','sequelae','/sɪˈkwiː.liː/','noun','후유증','Conditions that are consequences of a previous disease.','He suffered cognitive {sequelae} after the stroke.','그는 뇌졸중 후 인지적 후유증을 겪었어요.','sequelae','C2','health',1,'sequelae stroke aftermath recovery'),
('w_health_C2_07','iatrogenic','/aɪˌæt.rəˈdʒen.ɪk/','adjective','의원성의','Caused unintentionally by medical treatment or physicians.','The complication was {iatrogenic} in origin.','그 합병증은 의원성 원인이었어요.','iatrogenic','C2','health',1,'iatrogenic medical error complication'),
('w_health_C2_08','thrombosis','/θrɒmˈboʊ.sɪs/','noun','혈전증','The local coagulation of blood in a vessel.','Portal vein {thrombosis} impairs liver function.','문맥 혈전증은 간 기능을 손상시켜요.','thrombosis','C2','health',1,'portal thrombosis liver vein'),
('w_health_C2_09','anaphylaxis','/ˌæn.ə.fɪˈlæk.sɪs/','noun','과민성 쇼크','A severe systemic allergic reaction requiring immediate treatment.','Failure to treat {anaphylaxis} can be fatal.','과민성 쇼크를 치료하지 않으면 치명적일 수 있어요.','anaphylaxis','C2','health',1,'anaphylaxis severe reaction treatment'),
('w_health_C2_10','carcinogenesis','/ˌkɑːr.sɪ.noʊˈdʒen.ɪ.sɪs/','noun','발암 과정','The process by which normal cells are transformed into cancer cells.','UV exposure accelerates skin {carcinogenesis}.','자외선 노출은 피부 발암 과정을 가속화해요.','carcinogenesis','C2','health',1,'carcinogenesis cell mutation cancer'),
('w_health_C2_11','xenotransplantation','/ˌzen.oʊˌtræns.plænˈteɪ.ʃən/','noun','이종 이식','Transplanting organs or tissues between different species.','Research in {xenotransplantation} offers hope for organ shortages.','이종 이식 연구는 장기 부족 문제에 희망을 줘요.','xenotransplantation','C2','health',2,'xenotransplantation organ pig human research'),
('w_health_C2_12','cytotoxic','/ˌsaɪ.tə.ˈtɒk.sɪk/','adjective','세포독성의','Toxic to living cells, especially cancer cells.','The patient received {cytotoxic} chemotherapy.','환자는 세포독성 화학요법을 받았어요.','cytotoxic','C2','health',2,'cytotoxic chemotherapy cancer cells'),
('w_health_C2_13','apoptosis','/ˌæp.əˈtoʊ.sɪs/','noun','세포 자멸사','The programmed death of cells in a biological process.','Cancer cells evade {apoptosis} to survive.','암세포는 생존을 위해 세포 자멸사를 회피해요.','apoptosis','C2','health',2,'apoptosis cell death cancer biology'),
('w_health_C2_14','vasopressor','/ˌveɪ.zoʊˈpres.ər/','noun','혈관 수축제','A drug that raises blood pressure by constricting blood vessels.','The ICU team administered a {vasopressor}.','중환자실 팀이 혈관 수축제를 투여했어요.','vasopressor','C2','health',2,'vasopressor icu blood pressure drug'),
('w_health_C2_15','bronchodilator','/ˌbrɒŋ.koʊˈdaɪ.leɪ.tər/','noun','기관지 확장제','A drug that widens the airways to ease breathing.','The {bronchodilator} provided immediate relief.','기관지 확장제가 즉각적인 완화를 제공했어요.','bronchodilator','C2','health',2,'bronchodilator inhaler lungs asthma'),
('w_health_C2_16','glycosylation','/ˌɡlaɪ.kəˈsɪ.leɪ.ʃən/','noun','당화 반응','The attachment of sugar molecules to proteins or lipids.','Abnormal {glycosylation} is linked to metabolic disease.','비정상적인 당화 반응은 대사 질환과 관련이 있어요.','glycosylation','C2','health',2,'glycosylation protein sugar biology'),
('w_health_C2_17','nociception','/ˌnoʊ.sɪˈsep.ʃən/','noun','통각 수용','The neural process of encoding noxious stimuli as pain.','Opioids modulate {nociception} in the brain.','오피오이드는 뇌에서 통각 수용을 조절해요.','nociception','C2','health',2,'nociception pain neural signal brain'),
('w_health_C2_18','dysregulation','/ˌdɪs.reɡ.jʊˈleɪ.ʃən/','noun','조절 이상','The failure of a biological process to be regulated properly.','Emotional {dysregulation} is a feature of PTSD.','감정 조절 이상은 PTSD의 특징이에요.','dysregulation','C2','health',2,'dysregulation emotion brain ptsd'),
('w_health_C2_19','hemodynamic','/ˌhiː.moʊˈdaɪ.næm.ɪk/','adjective','혈역학적인','Relating to the circulation and movement of blood.','The patient remained {hemodynamically} stable.','환자는 혈역학적으로 안정적인 상태를 유지했어요.','hemodynamically','C2','health',2,'hemodynamic blood flow monitor icu'),
('w_health_C2_20','hyponatremia','/ˌhaɪ.poʊ.nəˈtriː.mi.ə/','noun','저나트륨혈증','A condition with abnormally low sodium in the blood.','Marathon runners are at risk of {hyponatremia}.','마라톤 선수들은 저나트륨혈증 위험이 있어요.','hyponatremia','C2','health',2,'hyponatremia sodium blood electrolyte'),
('w_health_C2_21','proteomics','/ˌproʊ.tiˈoʊ.mɪks/','noun','단백질체학','The large-scale study of proteins in an organism.','{Proteomics} helps identify disease biomarkers.','단백질체학은 질병 생체표지자 식별에 도움이 돼요.','Proteomics','C2','health',3,'proteomics protein research lab'),
('w_health_C2_22','mutagenic','/ˌmjuː.tə.ˈdʒen.ɪk/','adjective','돌연변이 유발성의','Capable of causing genetic mutation.','The chemical was found to be {mutagenic}.','그 화학물질은 돌연변이 유발성으로 밝혀졌어요.','mutagenic','C2','health',3,'mutagenic chemical dna mutation'),
('w_health_C2_23','homeostasis','/ˌhoʊ.mi.oʊˈsteɪ.sɪs/','noun','항상성','The body''s ability to maintain stable internal conditions.','Fever disrupts the body''s {homeostasis}.','열은 몸의 항상성을 방해해요.','homeostasis','C2','health',3,'homeostasis body balance temperature'),
('w_health_C2_24','allograft','/ˈæl.ə.ɡrɑːft/','noun','동종 이식편','Tissue transplanted from a donor of the same species.','The {allograft} was accepted by the patient''s immune system.','이식편은 환자의 면역 체계에 의해 수용됐어요.','allograft','C2','health',3,'allograft transplant tissue donor'),
('w_health_C2_25','pleiotropic','/ˌplaɪ.əˈtrɒp.ɪk/','adjective','다면발현성의','Having multiple effects from a single gene or drug.','Statins have {pleiotropic} effects beyond cholesterol.','스타틴은 콜레스테롤 외에 다면발현 효과가 있어요.','pleiotropic','C2','health',3,'pleiotropic gene multiple effects'),
('w_health_C2_26','ischemia','/ɪˈskiː.mi.ə/','noun','허혈','Insufficient blood supply to a tissue or organ.','Myocardial {ischemia} leads to chest pain.','심근 허혈은 흉통을 유발해요.','ischemia','C2','health',3,'ischemia blood flow heart muscle'),
('w_health_C2_27','exacerbation','/ɪɡˌzæs.əˈbeɪ.ʃən/','noun','악화','A worsening of symptoms in a chronic disease.','Cold air can trigger an asthma {exacerbation}.','차가운 공기는 천식 악화를 유발할 수 있어요.','exacerbation','C2','health',3,'exacerbation asthma trigger cold air'),
('w_health_C2_28','xenobiotic','/ˌzen.ə.baɪˈɒt.ɪk/','noun','외래 화학물질','A chemical substance foreign to the biological system.','The liver metabolizes {xenobiotics}.','간은 외래 화학물질을 대사해요.','xenobiotics','C2','health',3,'xenobiotic liver detox chemical'),
('w_health_C2_29','erythropoietin','/ɪˌrɪθ.roʊˈpɔɪ.ɪ.tɪn/','noun','에리스로포이에틴','A hormone that stimulates red blood cell production.','Kidney disease reduces {erythropoietin} production.','신장 질환은 에리스로포이에틴 생산을 감소시켜요.','erythropoietin','C2','health',3,'erythropoietin hormone kidney red blood cells'),
('w_health_C2_30','osmolality','/ˌɒz.məˈlæl.ɪ.ti/','noun','삼투질 농도','A measure of solute concentration in body fluids.','High blood {osmolality} indicates dehydration.','높은 혈액 삼투질 농도는 탈수를 나타내요.','osmolality','C2','health',3,'osmolality blood concentration dehydration'),
('w_health_C2_31','phagocytosis','/ˌfæɡ.ə.saɪˈtoʊ.sɪs/','noun','식작용','The process by which cells engulf and destroy pathogens.','Macrophages eliminate bacteria through {phagocytosis}.','대식세포는 식작용으로 박테리아를 제거해요.','phagocytosis','C2','health',3,'phagocytosis macrophage bacteria immune'),
('w_health_C2_32','neoplasm','/ˈniː.ə.plæz.əm/','noun','신생물(종양)','An abnormal growth of tissue, either benign or malignant.','The biopsy revealed a malignant {neoplasm}.','생검 결과 악성 신생물이 발견됐어요.','neoplasm','C2','health',3,'neoplasm tumor biopsy malignant'),
('w_health_C2_33','coagulopathy','/koʊˌæɡ.jʊˈlɒp.ə.θi/','noun','응고 장애','A condition in which the blood''s ability to clot is impaired.','Liver failure often causes {coagulopathy}.','간부전은 종종 응고 장애를 일으켜요.','coagulopathy','C2','health',3,'coagulopathy blood clotting disorder liver'),
('w_health_C2_34','stenosis','/stɪˈnoʊ.sɪs/','noun','협착증','The abnormal narrowing of a blood vessel or other passage.','Aortic {stenosis} reduces blood flow from the heart.','대동맥 협착증은 심장에서의 혈류를 감소시켜요.','stenosis','C2','health',3,'stenosis aortic narrowing heart valve'),
('w_health_C2_35','encephalopathy','/ɪnˌsef.ə.ˈlɒp.ə.θi/','noun','뇌병증','A disease or disorder affecting the brain''s function.','Hepatic {encephalopathy} causes confusion.','간성 뇌병증은 혼란을 유발해요.','encephalopathy','C2','health',3,'encephalopathy brain hepatic confusion')
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SENTENCE PATTERNS
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES

-- ----------------------------------------------------------------
-- A1 — 7 patterns (증상 표현)
-- ----------------------------------------------------------------
('s_health_A1_01','I don''t feel well.','몸이 좋지 않아요.','don''t feel well','"I don''t feel well"이 "I''m sick"보다 더 부드러운 표현이에요.','건강 상태','A1','health','pattern',NULL,1),
('s_health_A1_02','I have a headache.','두통이 있어요.','have a headache','"have a + 증상" 패턴으로 많은 증상을 표현할 수 있어요.','증상 표현','A1','health','pattern',NULL,2),
('s_health_A1_03','I have a fever.','열이 있어요.','have a fever','fever 앞에는 항상 관사 "a"를 써요.','증상 표현','A1','health','pattern',NULL,3),
('s_health_A1_04','My stomach hurts.','배가 아파요.','hurts','"My + 신체 부위 + hurts" 패턴으로 어디가 아픈지 말할 수 있어요.','통증 표현','A1','health','pattern',NULL,4),
('s_health_A1_05','I need to see a doctor.','의사 선생님을 만나야 해요.','need to see a doctor','병원에 가야 할 때 자주 쓰는 표현이에요.','진료 요청','A1','health','pattern',NULL,5),
('s_health_A1_06','I feel very tired today.','오늘 너무 피곤해요.','feel very tired','"feel + 형용사" 패턴으로 몸 상태를 표현해요.','몸 상태','A1','health','pattern',NULL,6),
('s_health_A1_07','I think I caught a cold.','감기에 걸린 것 같아요.','caught a cold','"catch a cold"는 감기에 걸리다는 표현이에요. catch의 과거형은 caught.','감기 증상','A1','health','pattern',NULL,7),

-- ----------------------------------------------------------------
-- A2 — 7 patterns (병원 예약)
-- ----------------------------------------------------------------
('s_health_A2_01','I''d like to make an appointment, please.','예약을 하고 싶어요.','make an appointment','"make an appointment"은 예약을 잡을 때 가장 기본적인 표현이에요.','병원 예약','A2','health','pattern',NULL,8),
('s_health_A2_02','I''ve been coughing for three days.','3일째 기침을 하고 있어요.','been coughing for','현재완료진행 "have been + -ing"으로 얼마나 오래 증상이 있었는지 표현해요.','증상 기간','A2','health','pattern',NULL,9),
('s_health_A2_03','Do I need a prescription for this medicine?','이 약은 처방전이 필요한가요?','need a prescription','처방약과 일반약을 구별할 때 쓰는 표현이에요.','약국 방문','A2','health','pattern',NULL,10),
('s_health_A2_04','I''m allergic to penicillin.','저는 페니실린 알레르기가 있어요.','allergic to','"be allergic to + 물질"로 알레르기를 표현해요.','알레르기 고지','A2','health','pattern',NULL,11),
('s_health_A2_05','How often should I take this medicine?','이 약은 얼마나 자주 먹어야 하나요?','How often','복용 빈도를 물어볼 때 "How often" 으로 시작해요.','복용 방법','A2','health','pattern',NULL,12),
('s_health_A2_06','My temperature is 38 degrees.','체온이 38도예요.','temperature is','의사에게 체온을 알려줄 때 쓰는 표현이에요.','진료 중','A2','health','pattern',NULL,13),
('s_health_A2_07','Is there a pharmacy near here?','근처에 약국이 있나요?','pharmacy near here','길을 찾거나 가까운 시설을 찾을 때 "Is there a ~ near here?" 패턴을 써요.','약국 찾기','A2','health','pattern',NULL,14),

-- ----------------------------------------------------------------
-- B1 — 7 patterns (증상 설명 / 처방)
-- ----------------------------------------------------------------
('s_health_B1_01','I''ve been experiencing lower back pain for about a week.','약 일주일 동안 허리 아래쪽에 통증이 있어요.','experiencing lower back pain','의사에게 증상을 설명할 때 "have been experiencing"으로 시작하면 더 자연스러워요.','진료 중 증상 설명','B1','health','pattern',NULL,15),
('s_health_B1_02','The pain gets worse when I sit for a long time.','오래 앉아 있으면 통증이 더 심해져요.','gets worse when','"get worse when + 상황"으로 언제 증상이 악화되는지 설명해요.','증상 악화 상황','B1','health','pattern',NULL,16),
('s_health_B1_03','Could you refer me to a specialist?','전문의에게 의뢰해 주실 수 있나요?','refer me to a specialist','"refer someone to a specialist"는 전문의에게 연결해 달라는 공손한 요청이에요.','전문의 의뢰','B1','health','pattern',NULL,17),
('s_health_B1_04','What are the side effects of this medication?','이 약의 부작용은 무엇인가요?','side effects of this medication','약을 받을 때 부작용을 꼭 확인하는 것이 좋아요.','처방 확인','B1','health','pattern',NULL,18),
('s_health_B1_05','I''ve been under a lot of stress lately.','요즘 스트레스를 많이 받고 있어요.','been under a lot of stress','"under stress"는 스트레스를 받는 상태를 표현하는 관용구예요.','스트레스 상담','B1','health','pattern',NULL,19),
('s_health_B1_06','The doctor told me to avoid spicy food.','의사 선생님이 매운 음식을 피하라고 했어요.','told me to avoid','간접 명령: "tell someone to do something" 패턴이에요.','식단 지시','B1','health','pattern',NULL,20),
('s_health_B1_07','I''ve been prescribed antibiotics for ten days.','열흘 동안 항생제를 처방받았어요.','been prescribed antibiotics','수동태 "have been prescribed"로 처방받은 상황을 표현해요.','처방 설명','B1','health','pattern',NULL,21),

-- ----------------------------------------------------------------
-- B2 — 7 patterns (건강 습관)
-- ----------------------------------------------------------------
('s_health_B2_01','Maintaining a balanced diet is crucial for long-term health.','균형 잡힌 식단을 유지하는 것이 장기적인 건강에 매우 중요해요.','Maintaining a balanced diet','동명사 주어 "Maintaining ~"으로 중요성을 강조하는 표현이에요.','건강 습관','B2','health','pattern',NULL,22),
('s_health_B2_02','Regular cardiovascular exercise can significantly reduce the risk of heart disease.','규칙적인 유산소 운동은 심장 질환의 위험을 크게 줄일 수 있어요.','cardiovascular exercise','학술적인 조언을 줄 때 "can significantly"을 쓰면 설득력이 높아져요.','운동 조언','B2','health','pattern',NULL,23),
('s_health_B2_03','Chronic stress can have a profound impact on your immune system.','만성 스트레스는 면역 체계에 심각한 영향을 미칠 수 있어요.','profound impact on','학술적·의학적 글쓰기에서 "have a profound impact on"을 자주 써요.','스트레스 영향','B2','health','pattern',NULL,24),
('s_health_B2_04','I''ve adopted a more holistic approach to managing my health.','건강 관리에 더 전인적인 접근 방식을 채택했어요.','adopted a more holistic approach','"adopt an approach"은 방법론을 받아들였다는 표현이에요.','건강 철학','B2','health','pattern',NULL,25),
('s_health_B2_05','Poor sleep hygiene is closely linked to metabolic disorders.','불량한 수면 위생은 대사 장애와 밀접한 관련이 있어요.','closely linked to','"be closely linked to"는 두 개념 사이의 강한 연관성을 나타내요.','수면과 건강','B2','health','pattern',NULL,26),
('s_health_B2_06','The prognosis depends largely on how early the condition is detected.','예후는 상태가 얼마나 일찍 발견되느냐에 크게 달려 있어요.','depends largely on','"depend largely on"으로 주요 변수를 설명하는 표현이에요.','의학적 예후','B2','health','pattern',NULL,27),
('s_health_B2_07','Preventive healthcare is far more cost-effective than treating illness.','예방 의료는 질병 치료보다 훨씬 비용 효율적이에요.','Preventive healthcare','비교급 강조 "far more"를 써서 차이를 강조해요.','예방 의학','B2','health','pattern',NULL,28),

-- ----------------------------------------------------------------
-- C1 — 7 patterns (의학 상담)
-- ----------------------------------------------------------------
('s_health_C1_01','Given the comorbidities involved, we need to approach treatment cautiously.','관련된 동반 이환을 고려할 때 신중하게 치료에 접근해야 해요.','comorbidities involved','"Given the ~"은 특정 상황을 전제로 결론을 제시하는 학술적 표현이에요.','다학제 의학 상담','C1','health','pattern',NULL,29),
('s_health_C1_02','The etiology of this autoimmune condition remains poorly understood.','이 자가면역 질환의 병인은 아직 제대로 이해되지 않았어요.','etiology of this autoimmune condition','의학 논문에서 "remains poorly understood"는 연구 공백을 나타내는 표현이에요.','의학 발표','C1','health','pattern',NULL,30),
('s_health_C1_03','We should consider prophylactic treatment to prevent recurrence.','재발 방지를 위해 예방적 치료를 고려해야 해요.','prophylactic treatment','예방적 접근을 논의할 때 임상 환경에서 자주 쓰는 표현이에요.','임상 논의','C1','health','pattern',NULL,31),
('s_health_C1_04','Elevated biomarkers suggest the presence of systemic inflammation.','높은 생체표지자 수치는 전신 염증의 존재를 시사해요.','Elevated biomarkers suggest','연구나 보고에서 "suggest"를 써서 조심스럽게 결론을 제시해요.','의학 보고','C1','health','pattern',NULL,32),
('s_health_C1_05','The patient has been in remission for over eighteen months.','환자는 18개월 이상 관해 상태를 유지하고 있어요.','been in remission for','현재완료 "have been in remission"으로 관해가 얼마나 지속됐는지 표현해요.','암 치료 상담','C1','health','pattern',NULL,33),
('s_health_C1_06','There is a significant risk of thrombosis with prolonged immobility.','장기간 움직이지 않을 경우 혈전증 위험이 상당히 높아요.','risk of thrombosis with','의학 경고를 줄 때 "significant risk of"를 써요.','수술 후 주의 사항','C1','health','pattern',NULL,34),
('s_health_C1_07','Her symptoms are consistent with an autoimmune etiology.','그녀의 증상은 자가면역 병인과 일치해요.','consistent with an autoimmune etiology','진단에서 "be consistent with"는 증상이 특정 진단과 부합함을 나타내요.','진단 토론','C1','health','pattern',NULL,35),

-- ----------------------------------------------------------------
-- C2 — 7 patterns (전문 용어)
-- ----------------------------------------------------------------
('s_health_C2_01','The pharmacokinetics of this compound are highly variable between patients.','이 화합물의 약동학은 환자마다 상당히 다양해요.','pharmacokinetics of this compound','연구 발표에서 "highly variable between patients"는 개인차를 강조해요.','의약학 연구','C2','health','pattern',NULL,36),
('s_health_C2_02','Histopathological findings confirmed the presence of carcinogenesis at the cellular level.','조직 병리학적 소견이 세포 수준에서 발암 과정의 존재를 확인했어요.','Histopathological findings confirmed','"findings confirmed"는 연구 결과를 발표할 때 쓰는 형식적인 표현이에요.','병리학 보고','C2','health','pattern',NULL,37),
('s_health_C2_03','Prolonged immunosuppression increases the risk of nosocomial infections.','장기적인 면역 억제는 병원 내 감염의 위험을 높여요.','immunosuppression increases the risk of','원인과 결과를 논할 때 "increases the risk of"를 써요.','이식 후 관리','C2','health','pattern',NULL,38),
('s_health_C2_04','The sequelae of the cerebrovascular event require ongoing neurological monitoring.','뇌혈관 사건의 후유증은 지속적인 신경학적 모니터링이 필요해요.','sequelae of the cerebrovascular event','복잡한 의학 상황을 서술할 때 쓰는 수준 높은 전문 표현이에요.','신경과 회진','C2','health','pattern',NULL,39),
('s_health_C2_05','Iatrogenic complications were documented in three percent of cases.','의원성 합병증이 사례의 3퍼센트에서 기록됐어요.','Iatrogenic complications were documented','수동태 "were documented"는 의학 문헌에서 사실을 객관적으로 서술할 때 써요.','의학 연구 발표','C2','health','pattern',NULL,40),
('s_health_C2_06','Teratogenic effects were observed in preclinical studies, warranting caution in pregnant patients.','전임상 연구에서 기형 유발 효과가 관찰됐으며, 임산부 환자에서는 주의가 필요해요.','Teratogenic effects were observed','"warranting caution"은 주의를 정당화하는 의학적 표현이에요.','임상 시험 보고','C2','health','pattern',NULL,41),
('s_health_C2_07','The anaphylactic response was attributed to cross-reactivity between structurally similar antigens.','과민성 쇼크 반응은 구조적으로 유사한 항원 간의 교차 반응성에 기인했어요.','anaphylactic response was attributed to','인과 관계를 설명할 때 "was attributed to"로 원인을 밝혀요.','면역학 세미나','C2','health','pattern',NULL,42)
ON CONFLICT (id) DO NOTHING;


-- ============================================
-- TOPIC: home
-- ============================================
-- EngCat — Home (주거·생활) 단어 210개 + 패턴 42개
-- CEFR A1~C2 각 35단어, 각 레벨 7패턴
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (35개)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_home_A1_01','house','/haʊs/','noun','집','A building where people live.','This is my {house}.','이것이 제 집이에요.','house','A1','home',1,'house building home exterior'),
('w_home_A1_02','room','/ruːm/','noun','방','A separate section inside a building.','My {room} is on the second floor.','제 방은 2층에 있어요.','room','A1','home',1,'bedroom interior room'),
('w_home_A1_03','door','/dɔːr/','noun','문','A movable barrier used to open and close an entrance.','Please close the {door} when you leave.','나가실 때 문을 닫아 주세요.','door','A1','home',1,'door entrance home'),
('w_home_A1_04','window','/ˈwɪndoʊ/','noun','창문','An opening in a wall fitted with glass to let in light.','I opened the {window} to let in some fresh air.','신선한 공기를 위해 창문을 열었어요.','window','A1','home',1,'window glass light room'),
('w_home_A1_05','kitchen','/ˈkɪtʃɪn/','noun','주방','The room where food is prepared and cooked.','We eat breakfast in the {kitchen}.','우리는 주방에서 아침을 먹어요.','kitchen','A1','home',1,'kitchen cooking food interior'),
('w_home_A1_06','bed','/bed/','noun','침대','A piece of furniture used for sleeping.','She made the {bed} every morning.','그녀는 매일 아침 침대를 정리해요.','bed','A1','home',1,'bed bedroom sleep'),
('w_home_A1_07','floor','/flɔːr/','noun','바닥, 층','The lower surface of a room; also a level of a building.','Please take your shoes off before walking on the {floor}.','바닥에 걷기 전에 신발을 벗어 주세요.','floor','A1','home',1,'floor interior home'),
('w_home_A1_08','wall','/wɔːl/','noun','벽','A vertical surface that encloses or divides a room.','There is a painting on the {wall}.','벽에 그림이 걸려 있어요.','wall','A1','home',1,'wall interior room paint'),
('w_home_A1_09','chair','/tʃer/','noun','의자','A separate seat for one person, with a back.','Please sit on the {chair} next to the desk.','책상 옆 의자에 앉아 주세요.','chair','A1','home',1,'chair furniture home'),
('w_home_A1_10','table','/ˈteɪbəl/','noun','테이블, 식탁','A piece of furniture with a flat top and legs.','Put the books on the {table}, please.','책을 테이블 위에 올려 주세요.','table','A1','home',1,'table furniture dining'),
('w_home_A1_11','key','/kiː/','noun','열쇠','A small metal device used to open a lock.','I forgot my {key} and can''t get in.','열쇠를 잊어버려서 들어갈 수 없어요.','key','A1','home',2,'key lock door home'),
('w_home_A1_12','light','/laɪt/','noun','조명, 빛','A device that produces brightness in a room.','Can you turn off the {light} before you sleep?','자기 전에 불 꺼 주실 수 있어요?','light','A1','home',2,'light lamp interior'),
('w_home_A1_13','stairs','/sterz/','noun','계단','Steps used to go from one floor to another.','Be careful on the {stairs} when it is wet.','계단이 젖었을 때 조심하세요.','stairs','A1','home',2,'stairs steps building'),
('w_home_A1_14','roof','/ruːf/','noun','지붕','The top covering of a building.','The {roof} needs to be repaired after the storm.','태풍 이후 지붕을 수리해야 해요.','roof','A1','home',2,'roof building exterior'),
('w_home_A1_15','home','/hoʊm/','noun','집, 가정','The place where a person lives or feels they belong.','There is no place like {home}.','집만한 곳은 없어요.','home','A1','home',1,'home cozy interior'),
('w_home_A1_16','yard','/jɑːrd/','noun','마당','The outdoor area around a house.','The children play in the {yard}.','아이들이 마당에서 놀아요.','yard','A1','home',2,'yard garden outdoor house'),
('w_home_A1_17','garden','/ˈɡɑːrdən/','noun','정원','A piece of ground where plants or flowers are grown.','We grow tomatoes in our {garden}.','우리는 정원에서 토마토를 키워요.','garden','A1','home',2,'garden plants flowers outdoor'),
('w_home_A1_18','garage','/ɡəˈrɑːʒ/','noun','차고','A building where cars are kept or repaired.','Park your car in the {garage}.','차를 차고에 주차하세요.','garage','A1','home',2,'garage car parking'),
('w_home_A1_19','sink','/sɪŋk/','noun','싱크대','A fixed basin with a water supply for washing.','Rinse the dishes in the {sink}.','싱크대에서 그릇을 헹궈 주세요.','sink','A1','home',2,'sink kitchen washing'),
('w_home_A1_20','sofa','/ˈsoʊfə/','noun','소파','A long comfortable seat with a back and arms.','We sat on the {sofa} and watched a movie.','우리는 소파에 앉아 영화를 봤어요.','sofa','A1','home',2,'sofa couch living room'),
('w_home_A1_21','mirror','/ˈmɪrər/','noun','거울','A glass surface that reflects images.','She looked at herself in the {mirror}.','그녀는 거울을 보았어요.','mirror','A1','home',2,'mirror glass bathroom'),
('w_home_A1_22','lamp','/læmp/','noun','램프, 스탠드','A device for giving light, usually with a shade.','I read by the {lamp} on the bedside table.','침대 옆 램프 아래에서 책을 읽어요.','lamp','A1','home',2,'lamp light bedroom'),
('w_home_A1_23','box','/bɑːks/','noun','상자','A container with flat sides used for storage.','Put your toys in the {box}.','장난감을 상자에 넣어 주세요.','box','A1','home',3,'box storage moving'),
('w_home_A1_24','cupboard','/ˈkʌbərd/','noun','찬장, 수납장','A piece of furniture with shelves inside for storing things.','The cups are in the {cupboard}.','컵은 찬장에 있어요.','cupboard','A1','home',2,'cupboard cabinet kitchen'),
('w_home_A1_25','curtain','/ˈkɜːrtən/','noun','커튼','A piece of fabric hung at a window for privacy.','Draw the {curtain} so the sunlight doesn''t wake you up.','햇빛에 깨지 않도록 커튼을 쳐 주세요.','curtain','A1','home',2,'curtain window fabric interior'),
('w_home_A1_26','bath','/bæθ/','noun','욕조, 목욕','A container for bathing; also the act of bathing.','I take a {bath} every evening.','저는 매일 저녁 목욕해요.','bath','A1','home',2,'bath bathtub bathroom'),
('w_home_A1_27','shelf','/ʃelf/','noun','선반','A flat horizontal surface fixed to a wall for storing things.','The books are on the top {shelf}.','책은 맨 위 선반에 있어요.','shelf','A1','home',2,'shelf bookshelf storage'),
('w_home_A1_28','ceiling','/ˈsiːlɪŋ/','noun','천장','The upper interior surface of a room.','The {ceiling} in this room is very high.','이 방의 천장이 매우 높아요.','ceiling','A1','home',3,'ceiling interior room'),
('w_home_A1_29','lock','/lɑːk/','noun','자물쇠, 잠금장치','A device for fastening a door or gate.','Always check that the {lock} is secure.','자물쇠가 잘 잠겨 있는지 항상 확인하세요.','lock','A1','home',2,'lock door security'),
('w_home_A1_30','flat','/flæt/','noun','아파트 (영식)','An apartment on one floor of a building (British English).','She rents a small {flat} in the city centre.','그녀는 시내 중심에 작은 아파트를 임차하고 있어요.','flat','A1','home',2,'apartment flat building'),
('w_home_A1_31','bedroom','/ˈbedrʊm/','noun','침실','A room used for sleeping.','The children share a {bedroom}.','아이들이 침실을 함께 써요.','bedroom','A1','home',1,'bedroom sleep interior'),
('w_home_A1_32','toilet','/ˈtɔɪlɪt/','noun','화장실','A sanitary device used to dispose of bodily waste.','The {toilet} is at the end of the hallway.','화장실은 복도 끝에 있어요.','toilet','A1','home',2,'toilet bathroom sanitary'),
('w_home_A1_33','rug','/rʌɡ/','noun','깔개, 러그','A floor covering, usually smaller than a carpet.','There is a colourful {rug} in the living room.','거실에 알록달록한 러그가 있어요.','rug','A1','home',3,'rug carpet floor interior'),
('w_home_A1_34','pillow','/ˈpɪloʊ/','noun','베개','A soft bag filled with material, used to rest the head on.','I need an extra {pillow} on my bed.','침대에 베개가 하나 더 필요해요.','pillow','A1','home',3,'pillow bed sleep bedroom'),
('w_home_A1_35','blanket','/ˈblæŋkɪt/','noun','담요','A large piece of soft cloth used to keep warm in bed.','It is cold; grab a {blanket}.','추우니까 담요를 가져오세요.','blanket','A1','home',3,'blanket warm bed sleep')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — A2 (35개)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_home_A2_01','rent','/rent/','noun','임대료, 월세','A regular payment made by a tenant to a landlord for the use of property.','The monthly {rent} is quite reasonable.','월 임대료가 꽤 합리적이에요.','rent','A2','home',1,'rent apartment money'),
('w_home_A2_02','neighbor','/ˈneɪbər/','noun','이웃','A person who lives next to or near another person.','My {neighbor} is very friendly.','제 이웃이 매우 친절해요.','neighbor','A2','home',1,'neighbor community residential'),
('w_home_A2_03','furniture','/ˈfɜːrnɪtʃər/','noun','가구','The movable objects used in a room for comfort or convenience.','We need to buy new {furniture} for the living room.','거실에 새 가구를 사야 해요.','furniture','A2','home',1,'furniture interior design'),
('w_home_A2_04','clean','/kliːn/','verb','청소하다','To remove dirt or mess from a place.','I {clean} the bathroom every Saturday.','저는 매주 토요일에 화장실을 청소해요.','clean','A2','home',1,'cleaning chores home'),
('w_home_A2_05','repair','/rɪˈper/','verb','수리하다','To fix something that is broken or damaged.','The plumber came to {repair} the leaking pipe.','배관공이 새는 파이프를 수리하러 왔어요.','repair','A2','home',1,'repair fix maintenance'),
('w_home_A2_06','bathroom','/ˈbæθruːm/','noun','욕실','A room containing a bath or shower and usually a toilet.','The {bathroom} is just down the hall.','욕실은 복도 저 끝에 있어요.','bathroom','A2','home',1,'bathroom shower interior'),
('w_home_A2_07','living room','/ˈlɪvɪŋ ruːm/','noun','거실','The main room in a house used for relaxing and entertaining guests.','Everyone gathered in the {living room} after dinner.','저녁 식사 후 모두 거실에 모였어요.','living room','A2','home',1,'living room interior lounge'),
('w_home_A2_08','balcony','/ˈbælkəni/','noun','발코니','A platform projecting from the wall of a building with a railing.','I drink my morning coffee on the {balcony}.','저는 발코니에서 아침 커피를 마셔요.','balcony','A2','home',2,'balcony outdoor apartment'),
('w_home_A2_09','parking','/ˈpɑːrkɪŋ/','noun','주차','The action of stopping a vehicle in a particular place.','There is free {parking} behind the building.','건물 뒤편에 무료 주차 공간이 있어요.','parking','A2','home',2,'parking car lot'),
('w_home_A2_10','move','/muːv/','verb','이사하다','To go and live in a different place.','We are planning to {move} to a bigger apartment.','더 큰 아파트로 이사할 계획이에요.','move','A2','home',1,'moving boxes packing'),
('w_home_A2_11','address','/ˈædrəs/','noun','주소','The details of where a person lives or works.','Could you write down your {address} for me?','주소를 적어 주실 수 있나요?','address','A2','home',1,'address home location'),
('w_home_A2_12','apartment','/əˈpɑːrtmənt/','noun','아파트','A set of rooms forming a single home in a larger building.','She lives in a two-bedroom {apartment}.','그녀는 방 두 개짜리 아파트에 살아요.','apartment','A2','home',1,'apartment building urban'),
('w_home_A2_13','electricity','/ɪˌlekˈtrɪsɪti/','noun','전기','The energy supply used to power lights and appliances.','The {electricity} bill is higher in winter.','겨울에는 전기 요금이 더 높아요.','electricity','A2','home',2,'electricity power utility'),
('w_home_A2_14','heating','/ˈhiːtɪŋ/','noun','난방','A system that keeps a building or room warm.','The {heating} system was broken all week.','일주일 내내 난방 시스템이 고장났어요.','heating','A2','home',2,'heating warm interior'),
('w_home_A2_15','landlord','/ˈlændlɔːrd/','noun','집주인','A person who rents out property to tenants.','The {landlord} lives on the top floor.','집주인은 맨 위층에 살아요.','landlord','A2','home',2,'landlord property rental'),
('w_home_A2_16','storage','/ˈstɔːrɪdʒ/','noun','수납, 보관','The space or place for keeping things.','We need more {storage} in the garage.','차고에 수납 공간이 더 필요해요.','storage','A2','home',2,'storage boxes organise'),
('w_home_A2_17','hallway','/ˈhɔːlweɪ/','noun','복도','A corridor in a building that leads to rooms.','Hang your coat in the {hallway}.','복도에 코트를 걸어 두세요.','hallway','A2','home',2,'hallway corridor interior'),
('w_home_A2_18','rubbish','/ˈrʌbɪʃ/','noun','쓰레기','Waste material; garbage (British English).','Take the {rubbish} out on Monday evenings.','월요일 저녁에 쓰레기를 내놓으세요.','rubbish','A2','home',2,'rubbish bin trash'),
('w_home_A2_19','dishwasher','/ˈdɪʃwɒʃər/','noun','식기세척기','A machine that washes dishes automatically.','Load the cups into the {dishwasher}.','컵을 식기세척기에 넣어 주세요.','dishwasher','A2','home',3,'dishwasher kitchen appliance'),
('w_home_A2_20','vacuum','/ˈvækjuːm/','verb','진공청소기로 청소하다','To clean a floor or surface using a vacuum cleaner.','I need to {vacuum} the carpet today.','오늘 카펫을 청소기로 돌려야 해요.','vacuum','A2','home',2,'vacuum cleaner cleaning'),
('w_home_A2_21','laundry','/ˈlɔːndri/','noun','세탁물, 세탁','Clothes that need to be washed, or the act of washing them.','I do {laundry} twice a week.','저는 일주일에 두 번 세탁해요.','laundry','A2','home',2,'laundry washing clothes'),
('w_home_A2_22','tap','/tæp/','noun','수도꼭지','A device that controls the flow of water from a pipe.','Turn off the {tap} after you wash your hands.','손을 씻은 후 수도꼭지를 잠그세요.','tap','A2','home',2,'tap water faucet kitchen'),
('w_home_A2_23','fridge','/frɪdʒ/','noun','냉장고','An appliance that keeps food and drink cold.','There is some milk in the {fridge}.','냉장고에 우유가 있어요.','fridge','A2','home',1,'fridge refrigerator kitchen'),
('w_home_A2_24','oven','/ˈʌvən/','noun','오븐','A cooking device with a closed compartment heated to cook food.','Preheat the {oven} to 180 degrees.','오븐을 180도로 예열하세요.','oven','A2','home',2,'oven cooking kitchen baking'),
('w_home_A2_25','leak','/liːk/','noun','누수, 누출','An unintended crack or hole through which liquid escapes.','There is a {leak} under the kitchen sink.','주방 싱크대 아래에 누수가 있어요.','leak','A2','home',2,'leak pipe water repair'),
('w_home_A2_26','switch','/swɪtʃ/','noun','스위치','A small device for turning electrical equipment on or off.','Flip the {switch} to turn on the light.','스위치를 올려서 불을 켜세요.','switch','A2','home',2,'switch electricity interior'),
('w_home_A2_27','stairs','/sterz/','noun','계단','Steps that allow movement between floors of a building.','Take the {stairs} instead of the lift.','엘리베이터 대신 계단을 이용하세요.','stairs','A2','home',2,'stairs steps building interior'),
('w_home_A2_28','bill','/bɪl/','noun','청구서','A statement of money owed for goods or services.','I have to pay the electricity {bill} today.','오늘 전기 청구서를 내야 해요.','bill','A2','home',1,'bill payment utility'),
('w_home_A2_29','shower','/ˈʃaʊər/','noun','샤워, 샤워기','A device that sprays water to wash the body.','I take a {shower} every morning.','저는 매일 아침 샤워해요.','shower','A2','home',1,'shower bathroom morning'),
('w_home_A2_30','socket','/ˈsɒkɪt/','noun','콘센트','An electrical fitting in a wall into which a plug is inserted.','Plug the charger into that {socket}.','그 콘센트에 충전기를 꽂으세요.','socket','A2','home',2,'socket electricity plug'),
('w_home_A2_31','bin','/bɪn/','noun','쓰레기통','A container for throwing away rubbish.','Throw that paper in the {bin}.','그 종이를 쓰레기통에 버리세요.','bin','A2','home',2,'bin trash rubbish'),
('w_home_A2_32','neighborhood','/ˈneɪbərhʊd/','noun','동네, 주거 지역','The area around where a person lives.','This is a very safe {neighborhood}.','이 동네는 매우 안전해요.','neighborhood','A2','home',2,'neighborhood street residential'),
('w_home_A2_33','furniture','/ˈfɜːrnɪtʃər/','noun','가구 (배치)','Large movable objects in a home for use and decoration.','We rearranged the {furniture} over the weekend.','주말에 가구를 재배치했어요.','furniture','A2','home',1,'furniture arrangement interior'),
('w_home_A2_34','paint','/peɪnt/','verb','페인트를 칠하다','To apply paint to a surface to change its colour.','We decided to {paint} the walls white.','벽을 흰색으로 칠하기로 했어요.','paint','A2','home',2,'painting wall colour interior'),
('w_home_A2_35','security','/sɪˈkjʊərɪti/','noun','보안, 경비','Measures taken to protect a place or person from danger.','The building has a twenty-four-hour {security} system.','건물에 24시간 보안 시스템이 있어요.','security','A2','home',2,'security camera lock building')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B1 (35개)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_home_B1_01','lease','/liːs/','noun','임대 계약','A legal agreement by which one party pays another for the use of property.','We signed a one-year {lease} on the apartment.','아파트 1년 임대 계약을 체결했어요.','lease','B1','home',1,'lease contract rental agreement'),
('w_home_B1_02','mortgage','/ˈmɔːrɡɪdʒ/','noun','주택담보대출','A loan taken to purchase property, repaid over time with interest.','We applied for a {mortgage} to buy the house.','집을 사기 위해 주택담보대출을 신청했어요.','mortgage','B1','home',1,'mortgage bank loan property'),
('w_home_B1_03','utilities','/juːˈtɪlɪtiz/','noun','공과금','Services such as electricity, gas, and water supplied to a home.','The {utilities} are included in the rent.','공과금이 임대료에 포함되어 있어요.','utilities','B1','home',1,'utilities electricity gas water'),
('w_home_B1_04','appliance','/əˈplaɪəns/','noun','가전제품','A machine or device, especially for household use.','All the kitchen {appliances} are brand new.','주방 가전제품이 모두 새것이에요.','appliance','B1','home',1,'appliance kitchen machine'),
('w_home_B1_05','renovation','/ˌrenəˈveɪʃən/','noun','수리, 리모델링','The process of repairing and improving a building.','The {renovation} took three months to complete.','리모델링이 완료되는 데 3개월이 걸렸어요.','renovation','B1','home',1,'renovation construction interior'),
('w_home_B1_06','tenant','/ˈtenənt/','noun','세입자, 임차인','A person who pays rent to live in a property owned by another.','The {tenant} reported the broken heating to the landlord.','세입자가 고장난 난방을 집주인에게 신고했어요.','tenant','B1','home',1,'tenant rental apartment'),
('w_home_B1_07','deposit','/dɪˈpɒzɪt/','noun','보증금','A sum of money paid as security when renting a property.','You need to pay a {deposit} equal to two months'' rent.','두 달치 임대료에 해당하는 보증금을 내야 해요.','deposit','B1','home',1,'deposit money rental security'),
('w_home_B1_08','maintenance','/ˈmeɪntənəns/','noun','유지 보수','The work of keeping a property in good condition.','Regular {maintenance} keeps the boiler running safely.','정기적인 유지 보수로 보일러가 안전하게 작동해요.','maintenance','B1','home',1,'maintenance repair building'),
('w_home_B1_09','interior','/ɪnˈtɪəriər/','noun','인테리어, 내부','The inside of a building and its decoration.','They hired a designer to redesign the {interior}.','인테리어를 다시 설계하기 위해 디자이너를 고용했어요.','interior','B1','home',2,'interior design home decoration'),
('w_home_B1_10','contractor','/ˈkɒntræktər/','noun','시공 업체','A person or company hired to carry out construction work.','We hired a {contractor} to remodel the kitchen.','주방 리모델링을 위해 시공 업체를 고용했어요.','contractor','B1','home',2,'contractor construction renovation'),
('w_home_B1_11','insulation','/ˌɪnsjuˈleɪʃən/','noun','단열재, 단열','Material that prevents heat or sound from passing through walls.','Good {insulation} keeps energy costs down.','좋은 단열재는 에너지 비용을 낮춰요.','insulation','B1','home',2,'insulation energy home building'),
('w_home_B1_12','ventilation','/ˌventɪˈleɪʃən/','noun','환기, 환기 시스템','The provision of fresh air to a room or building.','Proper {ventilation} prevents mould from forming.','적절한 환기는 곰팡이 발생을 막아요.','ventilation','B1','home',2,'ventilation air fresh building'),
('w_home_B1_13','plumbing','/ˈplʌmɪŋ/','noun','배관 (시스템)','The system of pipes and fittings installed in a building.','There is a problem with the {plumbing} in the basement.','지하실 배관에 문제가 있어요.','plumbing','B1','home',2,'plumbing pipes water repair'),
('w_home_B1_14','flooring','/ˈflɔːrɪŋ/','noun','바닥재','Material used to cover the floor of a room.','We chose hardwood {flooring} for the living room.','거실에 원목 바닥재를 선택했어요.','flooring','B1','home',2,'flooring hardwood interior'),
('w_home_B1_15','housemate','/ˈhaʊsmeɪt/','noun','룸메이트 (동거인)','A person who shares a house or flat with another.','My {housemate} and I share the cleaning duties.','룸메이트와 제가 청소를 나눠서 해요.','housemate','B1','home',2,'housemate sharing living'),
('w_home_B1_16','extension','/ɪkˈstenʃən/','noun','증축','An additional room or section added to a building.','They built a rear {extension} for a new dining area.','새 식사 공간을 위해 뒤쪽에 증축했어요.','extension','B1','home',2,'extension construction home'),
('w_home_B1_17','basement','/ˈbeɪsmənt/','noun','지하실','The floor of a building below ground level.','The laundry room is in the {basement}.','세탁실은 지하실에 있어요.','basement','B1','home',2,'basement underground storage'),
('w_home_B1_18','rooftop','/ˈruːftɒp/','noun','옥상','The flat surface of the roof of a building.','We had a barbecue on the {rooftop} terrace.','옥상 테라스에서 바베큐를 했어요.','rooftop','B1','home',3,'rooftop terrace urban view'),
('w_home_B1_19','loft','/lɒft/','noun','다락방, 로프트','The space or room just below the roof of a building.','The artist converted the warehouse {loft} into a studio.','예술가가 창고 로프트를 스튜디오로 개조했어요.','loft','B1','home',3,'loft attic interior'),
('w_home_B1_20','patio','/ˈpætioʊ/','noun','파티오 (야외 테라스)','A paved outdoor area adjoining a house for relaxing.','We had dinner outside on the {patio}.','파티오에서 야외 저녁을 먹었어요.','patio','B1','home',3,'patio outdoor garden home'),
('w_home_B1_21','mould','/moʊld/','noun','곰팡이','A fungus that grows in damp conditions on walls or ceilings.','There is {mould} on the bathroom ceiling.','욕실 천장에 곰팡이가 있어요.','mould','B1','home',2,'mould damp wall interior'),
('w_home_B1_22','boiler','/ˈbɔɪlər/','noun','보일러','A device that heats water for central heating or hot water supply.','The {boiler} needs servicing once a year.','보일러는 1년에 한 번 점검이 필요해요.','boiler','B1','home',2,'boiler heating hot water'),
('w_home_B1_23','survey','/ˈsɜːrveɪ/','noun','(주택) 감정, 조사','An inspection of a building to assess its condition or value.','We commissioned a {survey} before buying the house.','집을 사기 전에 감정 조사를 의뢰했어요.','survey','B1','home',2,'survey property inspection'),
('w_home_B1_24','moving company','/ˈmuːvɪŋ ˈkʌmpəni/','noun','이사 업체','A business that transports furniture and belongings during a move.','The {moving company} packed everything in one day.','이사 업체가 하루 만에 모든 것을 포장했어요.','moving company','B1','home',2,'moving truck packing'),
('w_home_B1_25','studio','/ˈstuːdioʊ/','noun','원룸 (스튜디오)','A self-contained apartment consisting of one main room.','She rents a {studio} apartment near the university.','그녀는 대학교 근처 원룸을 임차해요.','studio','B1','home',2,'studio apartment small interior'),
('w_home_B1_26','detached','/dɪˈtætʃt/','adjective','단독주택의','(Of a house) not joined to any other house.','They prefer a {detached} house to an apartment.','그들은 아파트보다 단독주택을 선호해요.','detached','B1','home',2,'detached house building suburban'),
('w_home_B1_27','semi-detached','/ˌsemi dɪˈtætʃt/','adjective','반단독주택의','(Of a house) joined to another house on one side only.','We bought a {semi-detached} house in the suburbs.','교외에 반단독주택을 샀어요.','semi-detached','B1','home',3,'semi detached house suburban'),
('w_home_B1_28','terrace','/ˈterəs/','noun','테라스식 연립주택 (영식)','A row of houses joined together in a continuous line.','She lives in a Victorian {terrace} in east London.','그녀는 런던 동부의 빅토리안 테라스에 살아요.','terrace','B1','home',3,'terrace house row suburban'),
('w_home_B1_29','communal','/kəˈmjuːnəl/','adjective','공용의','Shared by all members of a community.','The building has a {communal} garden.','건물에 공용 정원이 있어요.','communal','B1','home',2,'communal shared garden building'),
('w_home_B1_30','refurbish','/riːˈfɜːrbɪʃ/','verb','새단장하다','To clean and decorate a room or building to improve its condition.','The landlord agreed to {refurbish} the kitchen.','집주인이 주방을 새단장하기로 했어요.','refurbish','B1','home',2,'refurbish renovation interior'),
('w_home_B1_31','energy bill','/ˈenədʒi bɪl/','noun','에너지 요금','A bill for the amount of electricity or gas used in a home.','The {energy bill} doubled after winter.','겨울이 지나고 에너지 요금이 두 배로 올랐어요.','energy bill','B1','home',2,'energy bill utility payment'),
('w_home_B1_32','fuse box','/ˈfjuːz bɒks/','noun','두꺼비집, 배전반','A box containing the fuses or circuit breakers for a building.','The power went out; check the {fuse box}.','정전됐어요. 두꺼비집을 확인해 보세요.','fuse box','B1','home',3,'fuse box electricity panel'),
('w_home_B1_33','water meter','/ˈwɔːtər miːtər/','noun','수도 계량기','A device that measures the amount of water used.','The {water meter} reading was much higher this month.','이번 달 수도 계량기 수치가 훨씬 높아요.','water meter','B1','home',3,'water meter utility reading'),
('w_home_B1_34','move in','/muːv ɪn/','phrasal verb','입주하다','To begin to live in a new home.','We are planning to {move in} next Friday.','다음 주 금요일에 입주할 계획이에요.','move in','B1','home',1,'moving boxes new home'),
('w_home_B1_35','move out','/muːv aʊt/','phrasal verb','이사 나가다','To stop living in a place and leave permanently.','The tenants will {move out} at the end of the month.','세입자들이 월말에 이사 나갈 거예요.','move out','B1','home',1,'moving packing boxes leaving')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B2 (35개)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_home_B2_01','property','/ˈprɒpərti/','noun','부동산, 재산','A building and the land it stands on, considered as an asset.','Investing in {property} is popular in this city.','이 도시에서는 부동산 투자가 인기 있어요.','property','B2','home',1,'property real estate building'),
('w_home_B2_02','amenity','/əˈmenɪti/','noun','편의 시설','A desirable feature of a place that contributes to comfort.','The apartment complex offers many {amenities}.','이 아파트 단지는 다양한 편의 시설을 갖추고 있어요.','amenity','B2','home',1,'amenity gym pool building'),
('w_home_B2_03','architecture','/ˈɑːrkɪtektʃər/','noun','건축 양식','The art and practice of designing buildings.','The building''s {architecture} blends modern and traditional styles.','그 건물의 건축 양식은 현대와 전통을 혼합해요.','architecture','B2','home',2,'architecture building design'),
('w_home_B2_04','blueprint','/ˈbluːprɪnt/','noun','설계도','A technical drawing that shows the design of a building.','The architect presented the {blueprint} at the meeting.','건축가가 회의에서 설계도를 발표했어요.','blueprint','B2','home',2,'blueprint design floor plan'),
('w_home_B2_05','real estate','/riːl ɪˈsteɪt/','noun','부동산 (시장)','Property, especially buildings or land, as a business asset.','The {real estate} market has been volatile recently.','최근 부동산 시장이 불안정해요.','real estate','B2','home',1,'real estate market property'),
('w_home_B2_06','equity','/ˈekwɪti/','noun','주택 자산','The value of an owner''s share in a property after debt is deducted.','Building up {equity} in your home takes time.','주택 자산을 늘리는 데는 시간이 걸려요.','equity','B2','home',2,'equity property value finance'),
('w_home_B2_07','valuation','/ˌvæljuˈeɪʃən/','noun','감정 평가액','An assessment of the market value of a property.','The bank requires a {valuation} before approving the mortgage.','은행은 대출 승인 전에 감정 평가가 필요해요.','valuation','B2','home',2,'valuation property appraisal'),
('w_home_B2_08','zoning','/ˈzoʊnɪŋ/','noun','용도 지역 지정','The division of an area into zones with different permitted land uses.','The new {zoning} law restricts commercial development.','새 용도 지역 지정법이 상업 개발을 제한해요.','zoning','B2','home',2,'zoning map urban planning'),
('w_home_B2_09','suburban','/səˈbɜːrbən/','adjective','교외의','Relating to a suburb or the suburbs.','Many families prefer the quieter {suburban} lifestyle.','많은 가족이 더 조용한 교외 생활을 선호해요.','suburban','B2','home',2,'suburban neighborhood house'),
('w_home_B2_10','urban','/ˈɜːrbən/','adjective','도시의','Relating to a city or town and its characteristics.','The {urban} housing market is highly competitive.','도시 주택 시장은 매우 경쟁이 치열해요.','urban','B2','home',2,'urban city apartment'),
('w_home_B2_11','floor plan','/ˈflɔːr plæn/','noun','평면도','A scale drawing showing the arrangement of rooms in a building.','Study the {floor plan} before choosing a unit.','호실을 선택하기 전에 평면도를 살펴보세요.','floor plan','B2','home',2,'floor plan layout interior'),
('w_home_B2_12','foreclosure','/fɔːrˈkloʊʒər/','noun','담보권 실행 (차압)','The legal process by which a lender takes ownership of a property when the borrower defaults.','After missing payments, the bank began {foreclosure} proceedings.','납부를 연체한 후 은행이 차압 절차를 시작했어요.','foreclosure','B2','home',2,'foreclosure bank finance'),
('w_home_B2_13','conveyance','/kənˈveɪəns/','noun','부동산 양도 (절차)','The process of transferring ownership of property from one party to another.','The solicitor managed the {conveyance} of the property.','변호사가 부동산 양도 절차를 처리했어요.','conveyance','B2','home',3,'conveyance property transfer'),
('w_home_B2_14','appraisal','/əˈpreɪzəl/','noun','감정, 감정 평가','A formal assessment of the value of a property.','The {appraisal} came back lower than expected.','감정 평가액이 예상보다 낮게 나왔어요.','appraisal','B2','home',2,'appraisal property value'),
('w_home_B2_15','homeowner','/ˈhoʊmoʊnər/','noun','주택 소유자','A person who owns the home they live in.','Being a {homeowner} comes with many responsibilities.','주택 소유자가 되면 많은 책임이 따라요.','homeowner','B2','home',2,'homeowner property ownership'),
('w_home_B2_16','tenancy','/ˈtenənsi/','noun','임차 계약','The right to occupy a property in exchange for rent.','The {tenancy} agreement runs for twelve months.','임차 계약은 12개월 동안 유효해요.','tenancy','B2','home',2,'tenancy contract rental'),
('w_home_B2_17','renovation permit','/ˌrenəˈveɪʃən ˈpɜːrmɪt/','noun','공사 허가증','Official permission to carry out construction or renovation work.','You need a {renovation permit} for structural changes.','구조 변경을 위해서는 공사 허가증이 필요해요.','renovation permit','B2','home',3,'permit construction renovation'),
('w_home_B2_18','property tax','/ˈprɒpərti tæks/','noun','재산세','A tax levied on property ownership by a local authority.','{Property tax} is due at the end of each year.','재산세는 매년 말에 납부해야 해요.','property tax','B2','home',2,'property tax finance'),
('w_home_B2_19','market value','/ˈmɑːrkɪt ˈvæljuː/','noun','시장 가치','The price a property would sell for on the open market.','The {market value} of the house has risen significantly.','그 집의 시장 가치가 상당히 올랐어요.','market value','B2','home',2,'market value property'),
('w_home_B2_20','down payment','/ˈdaʊn ˈpeɪmənt/','noun','계약금, 선불금','An initial payment made when buying a property on credit.','They saved for five years to afford the {down payment}.','그들은 5년 동안 저축해서 계약금을 마련했어요.','down payment','B2','home',2,'down payment savings property'),
('w_home_B2_21','interest rate','/ˈɪntrəst reɪt/','noun','이자율','The proportion of a loan charged as interest over a period.','The rising {interest rate} has affected mortgage repayments.','이자율 상승이 담보대출 상환에 영향을 미쳤어요.','interest rate','B2','home',2,'interest rate finance bank'),
('w_home_B2_22','home inspection','/hoʊm ɪnˈspekʃən/','noun','주택 점검','An official examination of a property''s condition before purchase.','The {home inspection} revealed a damp problem.','주택 점검에서 습기 문제가 발견됐어요.','home inspection','B2','home',2,'inspection property home'),
('w_home_B2_23','structural','/ˈstrʌktʃərəl/','adjective','구조적인','Relating to the framework or load-bearing parts of a building.','The engineer identified a {structural} defect in the wall.','엔지니어가 벽에서 구조적 결함을 발견했어요.','structural','B2','home',2,'structural building engineering'),
('w_home_B2_24','listing','/ˈlɪstɪŋ/','noun','매물 (부동산)','A property advertised for sale or rent.','We found several interesting {listings} online.','온라인에서 흥미로운 매물을 몇 가지 찾았어요.','listing','B2','home',2,'listing property real estate'),
('w_home_B2_25','bidding war','/ˈbɪdɪŋ wɔːr/','noun','경쟁 입찰','A situation where multiple buyers compete to purchase a property.','The house attracted a {bidding war} from three buyers.','그 집에 구매자 세 명의 경쟁 입찰이 붙었어요.','bidding war','B2','home',3,'bidding war property auction'),
('w_home_B2_26','escrow','/ˈeskroʊ/','noun','에스크로 (부동산 거래 신탁)','A financial arrangement where a third party holds funds until transaction conditions are met.','The funds are being held in {escrow} until closing.','계약 완료까지 자금이 에스크로에 보관돼요.','escrow','B2','home',3,'escrow finance property'),
('w_home_B2_27','density','/ˈdensɪti/','noun','(주거) 밀도','The number of housing units in a given area.','High-{density} housing is common in city centres.','도심에는 고밀도 주거가 흔해요.','density','B2','home',3,'density urban building'),
('w_home_B2_28','gentrification','/ˌdʒentrɪfɪˈkeɪʃən/','noun','젠트리피케이션','The process of renovating an area so that it attracts wealthier residents.','{Gentrification} has changed the character of this neighbourhood.','젠트리피케이션이 이 동네의 성격을 바꿔놓았어요.','gentrification','B2','home',3,'gentrification urban neighbourhood'),
('w_home_B2_29','mixed-use','/mɪkst juːs/','adjective','복합 용도의','Combining residential and commercial uses in the same area or building.','The {mixed-use} development includes shops and flats.','그 복합 용도 개발에는 상점과 아파트가 있어요.','mixed-use','B2','home',3,'mixed use development building'),
('w_home_B2_30','capital gains','/ˈkæpɪtəl ɡeɪnz/','noun','양도 차익','The profit made from selling a property for more than its purchase price.','You may be liable for {capital gains} tax on the sale.','매각 시 양도 차익세가 부과될 수 있어요.','capital gains','B2','home',3,'capital gains tax finance'),
('w_home_B2_31','stamp duty','/stæmp ˈdjuːti/','noun','취득세','A tax paid when buying property above a certain value.','We had to pay {stamp duty} on top of the purchase price.','매입가 외에 취득세도 내야 했어요.','stamp duty','B2','home',3,'stamp duty tax property'),
('w_home_B2_32','surveyor','/sərˈveɪər/','noun','감정사, 측량사','A professional who assesses the condition or value of a property.','The {surveyor} found cracks in the foundation.','감정사가 기초에서 균열을 발견했어요.','surveyor','B2','home',2,'surveyor property inspection'),
('w_home_B2_33','repossession','/ˌriːpəˈzeʃən/','noun','압류, 회수','The taking back of property when a buyer fails to keep up payments.','The bank threatened {repossession} after months of missed payments.','수개월 연체 후 은행이 압류를 경고했어요.','repossession','B2','home',3,'repossession bank finance'),
('w_home_B2_34','eco-friendly','/ˌiːkoʊ ˈfrendli/','adjective','친환경적인','Designed to have minimal impact on the environment.','They chose {eco-friendly} materials for the renovation.','리모델링에 친환경 소재를 선택했어요.','eco-friendly','B2','home',2,'eco friendly green building'),
('w_home_B2_35','smart home','/smɑːrt hoʊm/','noun','스마트홈','A home equipped with devices that can be controlled remotely or automatically.','They installed a {smart home} system that controls lighting.','조명을 제어하는 스마트홈 시스템을 설치했어요.','smart home','B2','home',2,'smart home technology interior')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C1 (35개)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_home_C1_01','gentrification','/ˌdʒentrɪfɪˈkeɪʃən/','noun','젠트리피케이션','The transformation of a neighbourhood through an influx of wealthier residents displacing existing communities.','Longtime residents are being forced out by {gentrification}.','장기 거주자들이 젠트리피케이션으로 인해 내몰리고 있어요.','gentrification','C1','home',2,'gentrification urban change neighbourhood'),
('w_home_C1_02','infrastructure','/ˈɪnfrəstrʌktʃər/','noun','기반 시설','The basic systems and services, such as roads and utilities, that a community needs.','Poor {infrastructure} can lower residential property values.','열악한 기반 시설은 주거용 부동산 가치를 낮출 수 있어요.','infrastructure','C1','home',2,'infrastructure city road utilities'),
('w_home_C1_03','conveyancing','/kənˈveɪənsɪŋ/','noun','부동산 권리 이전 업무','The legal work involved in transferring property from one owner to another.','A solicitor handles the {conveyancing} when you buy a home.','집을 살 때 변호사가 부동산 권리 이전 업무를 처리해요.','conveyancing','C1','home',2,'conveyancing legal property'),
('w_home_C1_04','easement','/ˈiːzmənt/','noun','지역권','A legal right to use another person''s land for a specific purpose.','The utility company has an {easement} to access the pipes.','공공 설비 회사가 파이프에 접근할 수 있는 지역권을 갖고 있어요.','easement','C1','home',2,'easement land access legal'),
('w_home_C1_05','encumbrance','/ɪnˈkʌmbrəns/','noun','담보, 부담 (부동산)','A claim or liability attached to a property that may limit its use or transfer.','The bank identified an old {encumbrance} on the title.','은행이 권리증서에서 오래된 담보를 발견했어요.','encumbrance','C1','home',2,'encumbrance property legal'),
('w_home_C1_06','eminent domain','/ˌemɪnənt dəˈmeɪn/','noun','공용 수용권','The government''s power to take private property for public use, usually with compensation.','Their home was seized under {eminent domain} for a new highway.','새 고속도로를 위해 공용 수용권에 의해 집이 수용됐어요.','eminent domain','C1','home',2,'eminent domain government property'),
('w_home_C1_07','cohabitation','/koʊˌhæbɪˈteɪʃən/','noun','동거','The act of living together as a couple without being married.','{Cohabitation} agreements protect both parties in a shared home.','동거 계약서는 공동 주거에서 양측을 보호해요.','cohabitation','C1','home',2,'cohabitation couple living'),
('w_home_C1_08','co-ownership','/koʊ ˈoʊnərʃɪp/','noun','공동 소유','A situation where two or more people own a property jointly.','They entered into {co-ownership} of the property.','그들은 부동산 공동 소유를 시작했어요.','co-ownership','C1','home',2,'co-ownership joint property'),
('w_home_C1_09','arbitration','/ˌɑːrbɪˈtreɪʃən/','noun','중재','A legal process to resolve disputes outside of court, often used in property matters.','The tenancy dispute was settled through {arbitration}.','임대차 분쟁이 중재를 통해 해결됐어요.','arbitration','C1','home',2,'arbitration legal dispute'),
('w_home_C1_10','covenant','/ˈkʌvənənt/','noun','(부동산) 약정','A legally binding agreement restricting or requiring certain uses of land.','There is a {covenant} prohibiting commercial use of the land.','해당 토지의 상업적 사용을 금지하는 약정이 있어요.','covenant','C1','home',2,'covenant legal property restriction'),
('w_home_C1_11','title deed','/ˈtaɪtəl diːd/','noun','소유권 증서','A legal document proving who owns a property.','The solicitor registered the new {title deed} after completion.','변호사가 거래 완료 후 새 소유권 증서를 등록했어요.','title deed','C1','home',2,'title deed property legal'),
('w_home_C1_12','leasehold','/ˈliːshoʊld/','noun','임차 소유권','Ownership of a property for a fixed period under a lease.','They bought the flat on a ninety-nine-year {leasehold}.','그들은 99년 임차 소유권으로 아파트를 구입했어요.','leasehold','C1','home',2,'leasehold property ownership'),
('w_home_C1_13','freehold','/ˈfriːhoʊld/','noun','완전 소유권','Permanent and absolute ownership of a property and the land it stands on.','Buying a {freehold} property gives you full ownership.','완전 소유권 부동산을 구입하면 완전한 소유권이 생겨요.','freehold','C1','home',2,'freehold property ownership'),
('w_home_C1_14','due diligence','/djuː ˈdɪlɪdʒəns/','noun','실사 (부동산)','A thorough investigation of a property before finalising a purchase.','Conduct proper {due diligence} before signing any contract.','계약서에 서명하기 전에 적절한 실사를 진행하세요.','due diligence','C1','home',2,'due diligence investigation property'),
('w_home_C1_15','sublet','/ˈsʌblet/','verb','전대하다','To rent a property that you yourself rent to another person.','The tenant sublet the flat without the landlord''s permission.','세입자가 집주인의 허가 없이 전대했어요.','sublet','C1','home',2,'sublet rental apartment'),
('w_home_C1_16','dilapidated','/dɪˈlæpɪdeɪtɪd/','adjective','황폐한, 낡은','In a state of disrepair, especially through age or neglect.','The council condemned the {dilapidated} building.','지방 의회가 그 낡은 건물을 철거 대상으로 지정했어요.','dilapidated','C1','home',3,'dilapidated building old ruin'),
('w_home_C1_17','rectification','/ˌrektɪfɪˈkeɪʃən/','noun','(결함) 시정','The process of correcting faults or errors, especially in a building.','The contractor was ordered to carry out {rectification} works.','시공 업체에 결함 시정 공사를 명령했어요.','rectification','C1','home',3,'rectification repair building'),
('w_home_C1_18','snagging','/ˈsnæɡɪŋ/','noun','하자 점검','The process of identifying minor defects in a newly built property.','We prepared a {snagging} list before moving in.','입주 전에 하자 점검 목록을 작성했어요.','snagging','C1','home',3,'snagging inspection new build'),
('w_home_C1_19','restrictive covenant','/rɪˈstrɪktɪv ˈkʌvənənt/','noun','토지 사용 제한 약정','A clause in a contract that restricts what an owner can do with a property.','A {restrictive covenant} prevents building an extension.','토지 사용 제한 약정으로 인해 증축이 금지돼요.','restrictive covenant','C1','home',3,'restrictive covenant legal property'),
('w_home_C1_20','adverse possession','/ˈædvɜːrs pəˈzeʃən/','noun','시효 취득','A legal principle by which a person can gain ownership of land they have occupied for a long time.','The neighbour claimed the garden strip under {adverse possession}.','이웃이 시효 취득으로 정원 일부를 주장했어요.','adverse possession','C1','home',3,'adverse possession land legal'),
('w_home_C1_21','planning permission','/ˈplænɪŋ pərˈmɪʃən/','noun','개발 허가','Official consent to carry out a building project in a certain area.','They applied for {planning permission} to extend the house.','집 증축을 위해 개발 허가를 신청했어요.','planning permission','C1','home',2,'planning permission building permit'),
('w_home_C1_22','compulsory purchase','/kəmˈpʌlsəri ˈpɜːrtʃɪs/','noun','강제 매수','The legal power of an authority to acquire private property for public purposes.','Their land was acquired through {compulsory purchase} for the railway.','철도 건설을 위해 그들의 토지가 강제 매수됐어요.','compulsory purchase','C1','home',3,'compulsory purchase land government'),
('w_home_C1_23','collateral','/kəˈlætərəl/','noun','담보 자산','An asset pledged as security for repayment of a loan.','The property serves as {collateral} for the loan.','그 부동산이 대출의 담보 자산이에요.','collateral','C1','home',2,'collateral loan finance property'),
('w_home_C1_24','service charge','/ˈsɜːrvɪs tʃɑːrdʒ/','noun','관리비','A fee paid by residents to cover the maintenance of communal areas.','The monthly {service charge} covers the upkeep of the lobby.','월 관리비에 로비 유지 관리가 포함돼요.','service charge','C1','home',2,'service charge fee building'),
('w_home_C1_25','ground rent','/ˈɡraʊnd rent/','noun','지대 (토지 임대료)','A rent paid by the owner of a leasehold property to the freeholder.','The annual {ground rent} is fifty pounds.','연간 지대는 50파운드예요.','ground rent','C1','home',3,'ground rent lease property'),
('w_home_C1_26','offset mortgage','/ˈɒfset ˈmɔːrɡɪdʒ/','noun','오프셋 모기지','A mortgage linked to a savings account to reduce the amount of interest charged.','An {offset mortgage} can cut the overall interest you pay.','오프셋 모기지는 납부 이자를 줄여줄 수 있어요.','offset mortgage','C1','home',3,'offset mortgage finance bank'),
('w_home_C1_27','probate','/ˈproʊbeɪt/','noun','유언 검인','The legal process of validating a will and administering an estate.','The property cannot be sold until {probate} is granted.','유언 검인이 허가될 때까지 부동산을 매각할 수 없어요.','probate','C1','home',3,'probate legal estate'),
('w_home_C1_28','indemnity','/ɪnˈdemnɪti/','noun','배상, 보상','Protection against financial loss, often a clause in property contracts.','The seller provided an {indemnity} for the title defect.','매도인이 권리 결함에 대한 배상을 제공했어요.','indemnity','C1','home',3,'indemnity legal insurance'),
('w_home_C1_29','abatement','/əˈbeɪtmənt/','noun','(소음·폐해) 감소 조치','A reduction or removal of something harmful, such as noise or structural defects.','The council issued an {abatement} notice for the noise.','지방 의회가 소음에 대한 감소 조치 통보를 발부했어요.','abatement','C1','home',3,'abatement noise legal'),
('w_home_C1_30','solicitor','/səˈlɪsɪtər/','noun','(부동산 전담) 변호사','A lawyer who gives legal advice and handles property transactions.','Hire a {solicitor} to review the contract before signing.','서명 전에 변호사를 고용해 계약서를 검토하세요.','solicitor','C1','home',2,'solicitor lawyer legal property'),
('w_home_C1_31','sitting tenant','/ˈsɪtɪŋ ˈtenənt/','noun','거주 중인 세입자','A tenant who is already living in a property that is being sold.','The buyer must respect the rights of the {sitting tenant}.','구매자는 거주 중인 세입자의 권리를 존중해야 해요.','sitting tenant','C1','home',3,'tenant property legal'),
('w_home_C1_32','exchange of contracts','/ɪksˈtʃeɪndʒ əv ˈkɒntræks/','noun','계약서 교환','The point in a property transaction where both parties sign and exchange legal contracts.','After the {exchange of contracts}, neither party can withdraw without penalty.','계약서 교환 후에는 위약금 없이 철회할 수 없어요.','exchange of contracts','C1','home',2,'exchange contracts legal property'),
('w_home_C1_33','gazumping','/ɡəˈzʌmpɪŋ/','noun','가즈엄핑 (뒤늦은 경쟁 입찰로 거래 훼방)','The practice of a seller accepting a higher offer from a new buyer after already accepting one from another.','They lost the house to {gazumping} at the last minute.','마지막 순간에 가즈엄핑으로 집을 빼앗겼어요.','gazumping','C1','home',3,'gazumping property sale'),
('w_home_C1_34','chain','/tʃeɪn/','noun','(부동산) 연쇄 거래','A series of linked house purchases where each depends on the others completing.','The sale collapsed because someone in the {chain} dropped out.','연쇄 거래 중 누군가가 빠지면서 매각이 무산됐어요.','chain','C1','home',3,'chain property transaction'),
('w_home_C1_35','completion','/kəmˈpliːʃən/','noun','계약 완료 (잔금 납입)','The final stage of a property purchase when money is transferred and keys are handed over.','On the day of {completion}, we got the keys to our new home.','계약 완료일에 새 집 열쇠를 받았어요.','completion','C1','home',2,'completion property keys')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C2 (35개)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_home_C2_01','strata','/ˈstrɑːtə/','noun','구분 소유 (층별 소유 제도)','A form of ownership dividing a building into individually owned lots with shared common property.','Under the {strata} scheme, owners pay levies for common areas.','구분 소유 제도 하에서 소유자는 공용 구역 부담금을 납부해요.','strata','C2','home',3,'strata title property building'),
('w_home_C2_02','fiduciary','/fɪˈdjuːʃɪeri/','adjective','신탁적, 수탁자의','Involving a trust relationship in which one party is obligated to act in another''s best interests.','The agent owes the buyer a {fiduciary} duty.','중개인은 구매자에게 신탁 의무를 갖고 있어요.','fiduciary','C2','home',3,'fiduciary legal trust'),
('w_home_C2_03','deed','/diːd/','noun','날인 증서','A legal document that formally transfers property ownership.','The {deed} was signed and notarised before the transfer.','권리 이전 전에 날인 증서에 서명하고 공증을 받았어요.','deed','C2','home',2,'deed legal property document'),
('w_home_C2_04','encroachment','/ɪnˈkroʊtʃmənt/','noun','침범, 경계 침해','The illegal extension of a structure or use onto neighbouring land.','A survey revealed an {encroachment} from the adjacent building.','측량 결과 인접 건물이 경계를 침범한 것이 밝혀졌어요.','encroachment','C2','home',3,'encroachment boundary land'),
('w_home_C2_05','probate','/ˈproʊbeɪt/','noun','유언 검인 (법적 절차)','The formal legal process by which a deceased person''s will is authenticated and estate administered.','The property was frozen during {probate} proceedings.','유언 검인 절차 중에 부동산이 동결됐어요.','probate','C2','home',3,'probate estate will legal'),
('w_home_C2_06','alienation','/ˌeɪliəˈneɪʃən/','noun','(재산) 양도','The legal transfer of ownership of property from one party to another.','An {alienation} clause prevents subletting without consent.','양도 조항은 동의 없는 전대를 방지해요.','alienation','C2','home',3,'alienation transfer property legal'),
('w_home_C2_07','mortgagee','/ˌmɔːrɡɪˈdʒiː/','noun','저당권자 (대출 기관)','The lender in a mortgage agreement, typically a bank.','The {mortgagee} initiated repossession proceedings after defaults.','연체 후 저당권자가 압류 절차를 시작했어요.','mortgagee','C2','home',3,'mortgagee bank lender'),
('w_home_C2_08','usufruct','/ˈjuːzjuːfrʌkt/','noun','용익권','The legal right to use and enjoy another''s property without damaging or diminishing it.','The widow was granted a {usufruct} over the estate.','그 미망인에게 재산에 대한 용익권이 부여됐어요.','usufruct','C2','home',3,'usufruct legal property use'),
('w_home_C2_09','servitude','/ˈsɜːrvɪtjuːd/','noun','지역권, 통행 지역권','A right over another''s land allowing limited use, such as access or passage.','A right-of-way {servitude} crosses the rear of the plot.','부지 뒷편을 가로지르는 통행 지역권이 있어요.','servitude','C2','home',3,'servitude easement land legal'),
('w_home_C2_10','cadastral','/kəˈdæstrəl/','adjective','지적(地籍)의','Relating to an official register or survey of the boundaries, ownership, and value of land.','The {cadastral} map showed the exact boundary of the plot.','지적도에 부지의 정확한 경계가 표시돼 있어요.','cadastral','C2','home',3,'cadastral map land survey'),
('w_home_C2_11','mesne profits','/miːn ˈprɒfɪts/','noun','불법 점유 이익금','Damages payable by a person who has wrongfully occupied property.','The court ordered payment of {mesne profits} to the landlord.','법원이 집주인에게 불법 점유 이익금 지급을 명령했어요.','mesne profits','C2','home',3,'mesne profits legal property'),
('w_home_C2_12','subrogation','/ˌsʌbrəˈɡeɪʃən/','noun','대위권 (보험·법률)','The substitution of one party for another in a legal claim, often used in property insurance.','Through {subrogation}, the insurer recovered the loss from the contractor.','대위권을 통해 보험사가 시공 업체로부터 손실을 회수했어요.','subrogation','C2','home',3,'subrogation insurance legal'),
('w_home_C2_13','curtilage','/ˈkɜːrtɪlɪdʒ/','noun','건물 부속 토지','The area of land attached to and surrounding a house, forming part of the property.','The shed falls within the {curtilage} of the property.','그 창고는 부동산 부속 토지 내에 있어요.','curtilage','C2','home',3,'curtilage land boundary property'),
('w_home_C2_14','riparian','/rɪˈpeəriən/','adjective','수변(水邊)의','Relating to or situated on the bank of a river or stream.','The homeowners have {riparian} rights over the adjacent stream.','주택 소유자들은 인접 개울에 대한 수변권을 갖고 있어요.','riparian','C2','home',3,'riparian river land property'),
('w_home_C2_15','chattel','/ˈtʃætəl/','noun','동산 (부동 자산 이외의 재산)','Any personal property that is movable, as opposed to real estate or fixtures.','The inventory lists all {chattels} included in the sale.','목록에 매각에 포함된 모든 동산이 기재돼요.','chattel','C2','home',3,'chattel property legal inventory'),
('w_home_C2_16','lien','/liːn/','noun','유치권','A legal right to keep or sell someone''s property until a debt is paid.','The contractor placed a {lien} on the property for unpaid work.','시공 업체가 미지급 공사비로 유치권을 행사했어요.','lien','C2','home',3,'lien debt property legal'),
('w_home_C2_17','indefeasible','/ˌɪndɪˈfiːzɪbəl/','adjective','박탈 불가능한 (권리)','Describing a property right that cannot be lost or voided.','The Torrens system grants an {indefeasible} title to the registered owner.','토렌스 제도는 등기 소유자에게 박탈 불가능한 소유권을 부여해요.','indefeasible','C2','home',3,'indefeasible title property'),
('w_home_C2_18','restrictive covenant','/rɪˈstrɪktɪv ˈkʌvənənt/','noun','토지 이용 제한 약정','A binding legal obligation attached to a property that limits what the owner can do.','A {restrictive covenant} prevents any commercial use of the site.','토지 이용 제한 약정으로 해당 부지의 상업적 이용이 금지돼요.','restrictive covenant','C2','home',3,'restrictive covenant legal land'),
('w_home_C2_19','forfeiture','/ˈfɔːrfɪtʃər/','noun','몰수, 상실','The loss of rights or property as a penalty for breach of an obligation.','The lease contains a {forfeiture} clause for unpaid rent.','임대 계약에 미납 임대료에 대한 몰수 조항이 있어요.','forfeiture','C2','home',3,'forfeiture legal lease property'),
('w_home_C2_20','equity of redemption','/ˈekwɪti əv rɪˈdempʃən/','noun','상환 형평권','The right of a mortgagor to reclaim property by paying off the mortgage.','The borrower exercised their {equity of redemption} before the deadline.','차주가 기한 전에 상환 형평권을 행사했어요.','equity of redemption','C2','home',3,'equity redemption mortgage legal'),
('w_home_C2_21','noxious use','/ˈnɒkʃəs juːs/','noun','유해 사용','A use of land that causes harm or damage to neighbouring properties.','The tribunal ruled the factory constituted a {noxious use}.','심판부는 그 공장이 유해 사용에 해당한다고 판결했어요.','noxious use','C2','home',3,'noxious use land legal'),
('w_home_C2_22','torrens system','/ˈtɒrənz ˈsɪstəm/','noun','토렌스 제도 (부동산 등기)','A land registration system providing guaranteed title by government registration.','Under the {Torrens system}, title is guaranteed by the state.','토렌스 제도에서는 국가가 소유권을 보장해요.','Torrens system','C2','home',3,'torrens registration land title'),
('w_home_C2_23','beneficial interest','/ˌbenɪˈfɪʃəl ˈɪntrəst/','noun','수익적 권리 (부동산)','The right to enjoy the benefits of a property, even if legal title is held by another.','She holds a {beneficial interest} in the property despite not being on the title.','그녀는 권리증에 이름이 없어도 부동산에 대한 수익적 권리를 갖고 있어요.','beneficial interest','C2','home',3,'beneficial interest property legal'),
('w_home_C2_24','wayleave','/ˈweɪliːv/','noun','통선권 (전선·파이프 설치권)','A right granted to a company to install cables or pipes over private land.','The utility firm applied for a {wayleave} to lay cables.','공공 설비 회사가 케이블 부설을 위한 통선권을 신청했어요.','wayleave','C2','home',3,'wayleave utility land access'),
('w_home_C2_25','demise','/dɪˈmaɪz/','noun','임대 양도 (법률)','A legal transfer of a lease or interest in land for a fixed period.','The property was transferred by way of {demise} for 99 years.','해당 부동산은 99년 임대 양도로 이전됐어요.','demise','C2','home',3,'demise lease property legal'),
('w_home_C2_26','overriding interest','/ˌoʊvəˈraɪdɪŋ ˈɪntrəst/','noun','우선적 이익 (등기 불요)','A property right that binds a new owner even if not registered on the title.','The tenant''s long occupation created an {overriding interest}.','세입자의 장기 점유가 우선적 이익을 형성했어요.','overriding interest','C2','home',3,'overriding interest property legal'),
('w_home_C2_27','transmutation','/ˌtrænzmjuːˈteɪʃən/','noun','(혼인 중) 재산 성격 변환','The legal conversion of separate property into marital property, or vice versa.','Commingling funds can lead to {transmutation} of separate property.','자산 혼합은 별산 재산의 성격 변환을 초래할 수 있어요.','transmutation','C2','home',3,'transmutation property marital legal'),
('w_home_C2_28','statutory nuisance','/ˌstætʃətɔːri ˈnjuːsəns/','noun','법정 공해','A condition defined by law as harmful to health or a nuisance to the community.','Excessive damp was declared a {statutory nuisance}.','과도한 습기가 법정 공해로 선언됐어요.','statutory nuisance','C2','home',3,'statutory nuisance legal building'),
('w_home_C2_29','dominant tenement','/ˈdɒmɪnənt ˈtenəmənt/','noun','요역지 (편익을 받는 토지)','The land that benefits from an easement or right over another land.','The right of way benefits the {dominant tenement}.','통행권은 요역지에 편익을 줘요.','dominant tenement','C2','home',3,'dominant tenement easement land'),
('w_home_C2_30','servient tenement','/ˈsɜːrviənt ˈtenəmənt/','noun','승역지 (의무를 부담하는 토지)','The land over which an easement is exercised in favour of the dominant tenement.','The pipeline crosses the {servient tenement}.','파이프라인이 승역지를 가로질러요.','servient tenement','C2','home',3,'servient tenement easement land'),
('w_home_C2_31','quasi-easement','/ˈkweɪzaɪ ˈiːzmənt/','noun','준지역권','A right resembling an easement exercised within a single property before it is divided.','The court implied a {quasi-easement} to allow vehicular access.','법원이 차량 통행을 허용하는 준지역권을 묵시적으로 인정했어요.','quasi-easement','C2','home',3,'quasi easement land legal'),
('w_home_C2_32','lis pendens','/lɪs ˈpendənz/','noun','소송 계류 통지 (부동산)','A formal notice that a lawsuit has been filed concerning title to a property.','A {lis pendens} was recorded to protect the claimant''s interest.','청구인의 권리를 보호하기 위해 소송 계류 통지가 등록됐어요.','lis pendens','C2','home',3,'lis pendens legal property lawsuit'),
('w_home_C2_33','seisin','/ˈsiːzɪn/','noun','토지 점유권 (영미 법률)','Lawful possession of a feudal estate; in modern use, the legal possession of freehold land.','The doctrine of {seisin} underpins ancient English land law.','점유권 원칙은 고대 영국 토지법의 기반이에요.','seisin','C2','home',3,'seisin possession land legal'),
('w_home_C2_34','inter vivos trust','/ˌɪntər ˈvaɪvɒs trʌst/','noun','생전 신탁','A trust created during the settlor''s lifetime to manage or transfer property.','He placed his estate in an {inter vivos trust} to avoid probate.','그는 유언 검인을 피하기 위해 재산을 생전 신탁에 넣었어요.','inter vivos trust','C2','home',3,'inter vivos trust property legal'),
('w_home_C2_35','profit à prendre','/ˈprɒfɪt ə ˈprɑːndr/','noun','수익권 (타인 토지에서의 자원 채취권)','A right to take natural resources from someone else''s land.','The farmer held a {profit à prendre} to graze cattle on the common.','그 농부는 공유지에서 가축을 방목할 수 있는 수익권을 갖고 있었어요.','profit à prendre','C2','home',3,'profit a prendre land rights legal')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS (sentences) — A1 (7개)
-- 거주지 소개
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_A1_01','I live in an apartment.','아파트에 살아요.','I live in','거주 형태를 말할 때 "I live in a/an..."을 사용해요. house, flat, studio 등으로 바꿀 수 있어요.','거주지 소개','A1','home','pattern',NULL,1),
('s_home_A1_02','My house has three bedrooms.','우리 집에는 침실이 세 개 있어요.','My house has','집의 특징을 소개할 때 "My house/room has..." 패턴을 써요.','집 구조 소개','A1','home','pattern',NULL,2),
('s_home_A1_03','Where is the bathroom, please?','화장실이 어디에 있나요?','Where is the','"Where is the...?"는 장소를 물어보는 가장 기본적인 표현이에요.','장소 묻기','A1','home','pattern',NULL,3),
('s_home_A1_04','I sleep in the bedroom.','침실에서 자요.','I sleep in','방의 기능을 설명할 때 "I ... in the ..." 구조를 써요.','방 용도 설명','A1','home','pattern',NULL,4),
('s_home_A1_05','The kitchen is next to the living room.','주방은 거실 옆에 있어요.','next to','위치 관계를 설명할 때 next to, in front of, behind 같은 전치사구를 사용해요.','위치 설명','A1','home','pattern',NULL,5),
('s_home_A1_06','I open the window every morning.','저는 매일 아침 창문을 열어요.','every morning','일상적 행동을 말할 때 "I ... every morning/day/week"를 써요.','일상 표현','A1','home','pattern',NULL,6),
('s_home_A1_07','There is a big table in the dining room.','식당에 큰 테이블이 있어요.','There is','존재를 나타낼 때 "There is/are..." 구조를 사용해요.','집 묘사','A1','home','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS (sentences) — A2 (7개)
-- 집 묘사
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_A2_01','My apartment is quite small but very cosy.','제 아파트는 꽤 작지만 아늑해요.','quite ... but very','"quite ... but very ..."는 단점을 인정하면서 장점을 강조하는 자연스러운 표현이에요.','집 묘사','A2','home','pattern',NULL,8),
('s_home_A2_02','How much is the rent per month?','월 임대료가 얼마예요?','How much is','가격을 물어볼 때 "How much is/are...?" 패턴을 써요.','임대료 문의','A2','home','pattern',NULL,9),
('s_home_A2_03','The landlord is responsible for repairs.','집주인이 수리에 대한 책임이 있어요.','is responsible for','책임 소재를 설명할 때 "be responsible for ..." 구조를 사용해요.','책임 표현','A2','home','pattern',NULL,10),
('s_home_A2_04','We need to clean the apartment before moving out.','이사 나가기 전에 아파트를 청소해야 해요.','before moving out','동작의 순서를 나타낼 때 "before/after ~ing"를 써요.','이사 준비','A2','home','pattern',NULL,11),
('s_home_A2_05','Could you please turn down the music? The walls are thin.','음악 소리를 줄여 주실 수 있나요? 벽이 얇아서요.','Could you please','"Could you please...?"는 이웃에게 정중하게 부탁할 때 유용해요.','이웃 소통','A2','home','pattern',NULL,12),
('s_home_A2_06','The heating isn''t working properly.','난방이 제대로 작동하지 않아요.','isn''t working properly','가전·시설 문제를 신고할 때 "isn''t/aren''t working properly" 패턴을 써요.','시설 문제 신고','A2','home','pattern',NULL,13),
('s_home_A2_07','I share a flat with two other people.','두 명의 다른 사람들과 함께 아파트에 살아요.','I share ... with','주거를 함께 한다는 표현은 "I share ... with ..."을 사용해요.','동거 표현','A2','home','pattern',NULL,14)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS (sentences) — B1 (7개)
-- 임대차, 이사
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_B1_01','I''d like to sign a twelve-month lease if possible.','가능하다면 12개월 임대 계약을 체결하고 싶어요.','if possible','"if possible"을 덧붙이면 요청이 훨씬 부드럽고 유연하게 들려요.','임대 계약 협의','B1','home','pattern',NULL,15),
('s_home_B1_02','Are utilities included in the rent?','공과금이 임대료에 포함되어 있나요?','Are ... included in','포함 여부를 물을 때 "Is/Are ... included in ...?" 패턴을 사용해요.','임대 조건 문의','B1','home','pattern',NULL,16),
('s_home_B1_03','The landlord agreed to refund the deposit within two weeks.','집주인이 2주 이내에 보증금을 반환하기로 했어요.','agreed to refund','합의 결과를 설명할 때 "agreed to + 동사원형" 구조를 써요.','보증금 협의','B1','home','pattern',NULL,17),
('s_home_B1_04','We''re thinking of having the kitchen renovated.','주방을 리모델링하는 것을 고려하고 있어요.','thinking of having ... renovated','"have something done"은 제3자에게 작업을 맡기는 것을 표현해요.','리모델링 계획','B1','home','pattern',NULL,18),
('s_home_B1_05','The maintenance fee covers communal area cleaning.','관리비에 공용 구역 청소가 포함돼요.','covers','포함 범위를 설명할 때 "covers ..." 동사를 활용해요.','관리비 설명','B1','home','pattern',NULL,19),
('s_home_B1_06','We need to give one month''s notice before moving out.','이사 나가기 전에 한 달 전 통보를 해야 해요.','give one month''s notice','임대차 종료 절차를 설명할 때 "give notice" 표현을 사용해요.','이사 절차','B1','home','pattern',NULL,20),
('s_home_B1_07','The property comes with off-street parking.','이 부동산에는 전용 주차 공간이 포함돼요.','comes with','포함 사항을 설명할 때 "comes with ..."는 매우 자연스러운 표현이에요.','매물 설명','B1','home','pattern',NULL,21)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS (sentences) — B2 (7개)
-- 인테리어, 부동산
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_B2_01','The property has been recently renovated to a high standard.','이 부동산은 최근에 고급 수준으로 리모델링됐어요.','to a high standard','품질 수준을 강조할 때 "to a high standard"는 부동산 광고에서 자주 쓰이는 표현이에요.','부동산 소개','B2','home','pattern',NULL,22),
('s_home_B2_02','The interior design blends minimalist and industrial styles.','인테리어 디자인이 미니멀리스트 스타일과 인더스트리얼 스타일을 혼합해요.','blends ... and','두 가지 스타일이 조화를 이룬다는 표현에는 "blends A and B"를 써요.','인테리어 묘사','B2','home','pattern',NULL,23),
('s_home_B2_03','We''re hoping to get planning permission for a rear extension.','뒷편 증축을 위한 개발 허가를 받고 싶어요.','hoping to get','소망·의도를 말할 때 "be hoping to ..." 구조는 공손하고 자연스러워요.','증축 계획','B2','home','pattern',NULL,24),
('s_home_B2_04','The current market valuation sits at around four hundred thousand.','현재 시장 감정 평가액은 약 40만 파운드예요.','sits at around','수치를 개략적으로 표현할 때 "sits at around ..."를 사용해요.','부동산 가치','B2','home','pattern',NULL,25),
('s_home_B2_05','We decided to invest in eco-friendly insulation to cut our energy bills.','에너지 요금을 줄이기 위해 친환경 단열재에 투자하기로 했어요.','decided to invest in','투자 결정을 말할 때 "decided to invest in ..." 패턴을 사용해요.','에너지 효율','B2','home','pattern',NULL,26),
('s_home_B2_06','The location is ideal for commuters, with excellent transport links.','이 위치는 통근자에게 이상적이며 대중교통 연결이 훌륭해요.','ideal for','대상에 적합하다는 표현은 "ideal for ..." 구조를 사용해요.','입지 설명','B2','home','pattern',NULL,27),
('s_home_B2_07','There is a restrictive covenant preventing any alteration to the façade.','정면 외관 변경을 금지하는 토지 사용 제한 약정이 있어요.','preventing','금지 사항을 설명할 때 "preventing + 동명사"를 활용해요.','계약 조항 설명','B2','home','pattern',NULL,28)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS (sentences) — C1 (7개)
-- 계약, 법적 용어
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_C1_01','The solicitor advised us to conduct full due diligence before exchanging contracts.','변호사가 계약서 교환 전에 전면 실사를 진행하라고 조언했어요.','conduct full due diligence','실사 절차를 강조할 때 "conduct due diligence"는 법률·부동산 맥락에서 표준 표현이에요.','계약 전 절차','C1','home','pattern',NULL,29),
('s_home_C1_02','The lease contains an alienation clause that prohibits subletting without consent.','임대 계약에는 동의 없는 전대를 금지하는 양도 조항이 포함돼 있어요.','contains ... that prohibits','제한 조항을 설명할 때 "contains a clause that ..." 구조를 사용해요.','계약 조항 설명','C1','home','pattern',NULL,30),
('s_home_C1_03','We submitted a claim for dilapidations at the end of the tenancy.','임차 계약 종료 시 훼손 손해 배상 청구를 제출했어요.','submitted a claim for','손해 배상 청구를 표현할 때 "submit a claim for ..." 구조를 써요.','임대차 분쟁','C1','home','pattern',NULL,31),
('s_home_C1_04','The arbitration panel ruled in favour of the tenant regarding the deposit.','중재 위원단이 보증금 문제에서 세입자에게 유리한 판결을 내렸어요.','ruled in favour of','판결 결과를 설명할 때 "rule in favour of ..."는 격식체 법률 표현이에요.','분쟁 해결','C1','home','pattern',NULL,32),
('s_home_C1_05','An easement was granted to the utility company for access to the underground pipes.','공공 설비 회사에 지하 파이프 접근을 위한 지역권이 부여됐어요.','was granted to','피동태를 사용한 법률 문장에서 "was granted to ..." 구조는 매우 자연스러워요.','지역권 설명','C1','home','pattern',NULL,33),
('s_home_C1_06','The property is subject to a restrictive covenant that limits its use to residential purposes only.','이 부동산은 거주 목적으로만 사용을 제한하는 약정의 적용을 받아요.','is subject to','법적 제한을 설명할 때 "is subject to ..." 패턴이 격식 있는 표현이에요.','법적 제한 설명','C1','home','pattern',NULL,34),
('s_home_C1_07','Failure to disclose a known encumbrance may constitute a breach of contract.','알려진 담보를 공개하지 않으면 계약 위반에 해당할 수 있어요.','may constitute','법적 가능성을 논할 때 "may constitute ..." 구조는 격식체에서 자주 써요.','법적 의무 설명','C1','home','pattern',NULL,35)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS (sentences) — C2 (7개)
-- 법적 용어, 고급 계약·권리
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_C2_01','The cadastral survey revealed a significant encroachment across the boundary line.','지적 측량 결과 경계선을 상당히 침범한 것이 밝혀졌어요.','revealed a significant encroachment','조사 결과를 보고할 때 "revealed a ..." 구조는 공식 문서에서 자주 사용돼요.','경계 분쟁','C2','home','pattern',NULL,36),
('s_home_C2_02','The mortgagee exercised its right to possession following persistent arrears.','저당권자가 지속적인 연체를 이유로 점유권을 행사했어요.','exercised its right to','권리 행사를 표현할 때 "exercised its right to ..." 구조를 사용해요.','담보 집행','C2','home','pattern',NULL,37),
('s_home_C2_03','The court implied a right of way as a quasi-easement arising from the prior common ownership.','법원이 이전 공동 소유에서 발생하는 준지역권으로서 통행권을 묵시적으로 인정했어요.','implied ... as a quasi-easement','법원이 권리를 묵시적으로 인정할 때 "implied ... as a ..." 구조를 써요.','묵시적 권리','C2','home','pattern',NULL,38),
('s_home_C2_04','Under the doctrine of adverse possession, he claimed title to the strip of land.','시효 취득 원칙에 따라 그는 그 토지 조각에 대한 소유권을 주장했어요.','Under the doctrine of','법적 원칙을 인용할 때 "Under the doctrine of ..." 구조가 격식 있는 표현이에요.','소유권 주장','C2','home','pattern',NULL,39),
('s_home_C2_05','The beneficial interest vested in the claimant was not apparent from the registered title.','청구인에게 귀속된 수익적 권리는 등기 소유권에서 명확하지 않았어요.','vested in','권리 귀속을 설명할 때 "vested in ..." 구조는 신탁법·부동산법에서 핵심 표현이에요.','수익적 권리','C2','home','pattern',NULL,40),
('s_home_C2_06','A lis pendens was registered to protect the plaintiff''s equitable interest pending trial.','재판 계류 중 원고의 형평법적 권리를 보호하기 위해 소송 계류 통지가 등록됐어요.','to protect ... pending trial','목적과 조건을 결합할 때 "to protect ... pending ..." 구조를 사용해요.','소송 중 보전','C2','home','pattern',NULL,41),
('s_home_C2_07','The strata committee voted to levy a special assessment to fund roof remediation works.','구분 소유 위원회가 지붕 보수 공사 비용 마련을 위해 특별 부과금을 부과하기로 의결했어요.','voted to levy','결의 사항을 보고할 때 "voted to + 동사원형" 구조는 공식 회의록에서 자주 등장해요.','구분 소유 관리','C2','home','pattern',NULL,42)
ON CONFLICT (id) DO NOTHING;


-- ============================================
-- TOPIC: shopping
-- ============================================
-- EngCat · Shopping (쇼핑) seed data
-- Words  : 35 per CEFR level (A1–C2) = 210 total
-- Patterns: 7 per CEFR level (A1–C2) = 42 total
-- Generated : 2026-05-24

-- ============================================================
-- WORDS
-- ============================================================

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES

-- ────────────────────────────────────────────────────────────
-- A1 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_A1_01','buy','/baɪ/','verb','사다','To get something by paying money for it.','I want to {buy} new shoes.','새 신발을 사고 싶어요.','buy','A1','shopping',1,'shopping store buying purchase'),
('w_shopping_A1_02','sell','/sɛl/','verb','팔다','To exchange something for money.','They {sell} fresh fruit here.','여기서 신선한 과일을 팔아요.','sell','A1','shopping',1,'market vendor selling fruit'),
('w_shopping_A1_03','shop','/ʃɒp/','noun/verb','가게 / 쇼핑하다','A place where goods are sold; to visit shops to buy things.','Let''s go to the {shop} after lunch.','점심 식사 후에 가게에 가요.','shop','A1','shopping',1,'retail shop storefront'),
('w_shopping_A1_04','price','/praɪs/','noun','가격','The amount of money for which something is bought or sold.','What is the {price} of this bag?','이 가방의 가격이 얼마예요?','price','A1','shopping',1,'price tag label cost'),
('w_shopping_A1_05','cheap','/tʃiːp/','adjective','저렴한','Low in price; not expensive.','This jacket is very {cheap}.','이 재킷은 매우 저렴해요.','cheap','A1','shopping',1,'sale discount affordable'),
('w_shopping_A1_06','expensive','/ɪkˈspɛnsɪv/','adjective','비싼','Costing a lot of money.','That watch is too {expensive} for me.','저 시계는 저한테 너무 비싸요.','expensive','A1','shopping',1,'luxury expensive watch'),
('w_shopping_A1_07','money','/ˈmʌni/','noun','돈','Coins and paper notes used to buy things.','I don''t have enough {money} today.','오늘 돈이 충분하지 않아요.','money','A1','shopping',1,'cash coins money wallet'),
('w_shopping_A1_08','pay','/peɪ/','verb','지불하다','To give money in exchange for goods or a service.','Can I {pay} by card?','카드로 지불해도 될까요?','pay','A1','shopping',1,'payment card cashier'),
('w_shopping_A1_09','market','/ˈmɑːkɪt/','noun','시장','A place where goods are bought and sold.','The {market} opens at eight.','시장은 8시에 열려요.','market','A1','shopping',1,'outdoor market stalls vendors'),
('w_shopping_A1_10','store','/stɔːr/','noun','상점','A building where goods are sold to customers.','The {store} is closed on Sundays.','그 상점은 일요일에 문을 닫아요.','store','A1','shopping',1,'department store entrance'),
('w_shopping_A1_11','bag','/bæɡ/','noun','가방','A container made of paper, plastic, or leather used to carry things.','Can I have a {bag} for this, please?','이거 봉투에 넣어 주실 수 있어요?','bag','A1','shopping',1,'shopping bag paper bag'),
('w_shopping_A1_12','new','/njuː/','adjective','새로운','Recently made or bought; not used before.','I like your {new} coat.','새 코트 좋아 보여요.','new','A1','shopping',1,'new product unboxing'),
('w_shopping_A1_13','old','/oʊld/','adjective','오래된','Having existed for a long time; not new.','This is an {old} style.','이건 오래된 스타일이에요.','old','A1','shopping',1,'vintage old item secondhand'),
('w_shopping_A1_14','big','/bɪɡ/','adjective','큰','Large in size.','Do you have a {big} size?','큰 사이즈 있나요?','big','A1','shopping',1,'large size clothing'),
('w_shopping_A1_15','small','/smɔːl/','adjective','작은','Little in size.','This is too {small} for me.','이건 저한테 너무 작아요.','small','A1','shopping',1,'small item size comparison'),
('w_shopping_A1_16','open','/ˈoʊpən/','adjective','열린','Not closed; allowing entry.','Is the shop {open} now?','지금 가게 문 열었나요?','open','A1','shopping',1,'open sign store door'),
('w_shopping_A1_17','closed','/kloʊzd/','adjective','닫힌','Not open; not allowing entry.','The mall is {closed} today.','오늘 쇼핑몰이 닫혀 있어요.','closed','A1','shopping',1,'closed sign store'),
('w_shopping_A1_18','want','/wɒnt/','verb','원하다','To feel a desire for something.','I {want} to buy a gift.','선물을 사고 싶어요.','want','A1','shopping',1,'wish list shopping desire'),
('w_shopping_A1_19','need','/niːd/','verb','필요하다','To require something because it is essential.','I {need} new socks.','새 양말이 필요해요.','need','A1','shopping',1,'grocery list essentials'),
('w_shopping_A1_20','look','/lʊk/','verb','보다 / 찾다','To direct your eyes toward something; to search for.','I''m just {looking}, thank you.','그냥 구경하는 거예요, 감사해요.','looking','A1','shopping',1,'browsing window shopping'),
('w_shopping_A1_21','free','/friː/','adjective','무료의','Costing nothing.','Is delivery {free}?','배달은 무료인가요?','free','A1','shopping',1,'free shipping gift'),
('w_shopping_A1_22','gift','/ɡɪft/','noun','선물','Something given to someone without expecting payment.','I bought a {gift} for my friend.','친구에게 선물을 샀어요.','gift','A1','shopping',1,'wrapped gift present'),
('w_shopping_A1_23','total','/ˈtoʊtl/','noun','합계','The complete sum of all amounts.','What is the {total}?','합계가 얼마예요?','total','A1','shopping',1,'receipt total bill'),
('w_shopping_A1_24','cash','/kæʃ/','noun','현금','Money in the form of coins or paper notes.','Do you accept {cash}?','현금도 받나요?','cash','A1','shopping',1,'cash banknotes wallet'),
('w_shopping_A1_25','card','/kɑːrd/','noun','카드','A small plastic card used to pay for things.','I''ll pay by {card}.','카드로 낼게요.','card','A1','shopping',1,'credit card payment'),
('w_shopping_A1_26','help','/hɛlp/','verb','돕다','To make it easier for someone to do something.','Can you {help} me find a shirt?','셔츠 찾는 걸 도와주실 수 있어요?','help','A1','shopping',1,'shop assistant helping customer'),
('w_shopping_A1_27','find','/faɪnd/','verb','찾다','To discover or locate something.','Can you {find} size medium?','미디엄 사이즈 찾아줄 수 있어요?','find','A1','shopping',1,'searching store shelf'),
('w_shopping_A1_28','take','/teɪk/','verb','가져가다','To carry or accept something.','I''ll {take} this one.','이걸로 할게요.','take','A1','shopping',1,'picking item shelf'),
('w_shopping_A1_29','get','/ɡɛt/','verb','얻다 / 사다','To obtain or receive something.','Where can I {get} a map?','지도는 어디서 구할 수 있어요?','get','A1','shopping',1,'obtaining item store'),
('w_shopping_A1_30','give','/ɡɪv/','verb','주다','To hand something to someone.','Can you {give} me a receipt?','영수증을 주실 수 있어요?','give','A1','shopping',1,'handing receipt cashier'),
('w_shopping_A1_31','food','/fuːd/','noun','음식','Things you eat.','I''m looking for {food} items.','식품 코너를 찾고 있어요.','food','A1','shopping',1,'supermarket food aisle'),
('w_shopping_A1_32','clothes','/kloʊðz/','noun','옷','Things you wear on your body.','She loves buying new {clothes}.','그녀는 새 옷 사는 걸 좋아해요.','clothes','A1','shopping',1,'clothing rack fashion'),
('w_shopping_A1_33','book','/bʊk/','noun','책','A written or printed work.','I want to buy a {book}.','책을 사고 싶어요.','book','A1','shopping',1,'bookstore book shelf'),
('w_shopping_A1_34','color','/ˈkʌlər/','noun','색깔','A visual quality such as red, blue, or green.','Do you have this in another {color}?','다른 색깔로도 있나요?','color','A1','shopping',1,'colorful fabric swatches'),
('w_shopping_A1_35','number','/ˈnʌmbər/','noun','번호 / 숫자','A figure representing a quantity; also a shoe/size number.','What {number} is your shoe size?','신발 사이즈가 몇 번이에요?','number','A1','shopping',1,'size chart number label'),

-- ────────────────────────────────────────────────────────────
-- A2 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_A2_01','discount','/ˈdɪskaʊnt/','noun','할인','A reduction in the usual price of something.','Is there a {discount} for students?','학생 할인이 있나요?','discount','A2','shopping',2,'sale discount percent tag'),
('w_shopping_A2_02','sale','/seɪl/','noun','세일','A period when goods are sold at reduced prices.','Everything is on {sale} this weekend.','이번 주말에 모든 게 세일 중이에요.','sale','A2','shopping',2,'sale banner store'),
('w_shopping_A2_03','receipt','/rɪˈsiːt/','noun','영수증','A written acknowledgement of payment.','Please keep your {receipt}.','영수증을 보관해 주세요.','receipt','A2','shopping',2,'paper receipt cashier'),
('w_shopping_A2_04','size','/saɪz/','noun','사이즈','The measurement of how big or small something is.','Do you have this in my {size}?','제 사이즈로 있나요?','size','A2','shopping',2,'size label clothing tag'),
('w_shopping_A2_05','brand','/brænd/','noun','브랜드','A type of product made by a particular company.','What {brand} is this bag?','이 가방은 어느 브랜드예요?','brand','A2','shopping',2,'brand logo label'),
('w_shopping_A2_06','cashier','/kæˈʃɪər/','noun','계산원','A person who takes payments in a shop.','The {cashier} gave me the wrong change.','계산원이 잔돈을 잘못 줬어요.','cashier','A2','shopping',2,'cashier counter checkout'),
('w_shopping_A2_07','change','/tʃeɪndʒ/','noun','거스름돈','Money returned when you pay more than the cost.','Keep the {change}.','거스름돈은 가지세요.','change','A2','shopping',2,'coins change money'),
('w_shopping_A2_08','refund','/ˈriːfʌnd/','noun','환불','Money returned after returning a product.','I''d like a {refund}, please.','환불을 받고 싶어요.','refund','A2','shopping',2,'refund counter service desk'),
('w_shopping_A2_09','credit card','/ˈkrɛdɪt kɑːrd/','noun','신용카드','A card that lets you buy now and pay later.','Can I use a {credit card}?','신용카드 사용할 수 있나요?','credit card','A2','shopping',2,'credit card payment terminal'),
('w_shopping_A2_10','try on','/traɪ ɒn/','phrasal verb','입어보다','To put on clothing to see if it fits.','Can I {try on} this dress?','이 원피스 입어봐도 될까요?','try on','A2','shopping',2,'fitting room mirror clothes'),
('w_shopping_A2_11','fitting room','/ˈfɪtɪŋ ruːm/','noun','탈의실','A small room in a shop where you try on clothes.','Where is the {fitting room}?','탈의실이 어디예요?','fitting room','A2','shopping',2,'fitting room curtain mirror'),
('w_shopping_A2_12','queue','/kjuː/','noun','줄','A line of people waiting for something.','The {queue} is very long today.','오늘 줄이 정말 길어요.','queue','A2','shopping',2,'queue line checkout'),
('w_shopping_A2_13','trolley','/ˈtrɒli/','noun','카트','A large basket on wheels used in supermarkets.','I need a {trolley} for all these items.','이 물건들을 담을 카트가 필요해요.','trolley','A2','shopping',2,'shopping cart supermarket'),
('w_shopping_A2_14','basket','/ˈbɑːskɪt/','noun','장바구니','A container used for carrying shopping.','I only need a small {basket}.','작은 장바구니면 충분해요.','basket','A2','shopping',2,'shopping basket handle'),
('w_shopping_A2_15','aisle','/aɪl/','noun','통로','A passage between shelves in a shop.','Bread is in {aisle} three.','빵은 3번 통로에 있어요.','aisle','A2','shopping',2,'supermarket aisle shelf'),
('w_shopping_A2_16','shelf','/ʃɛlf/','noun','선반','A flat surface fixed to a wall for storing things.','The item is on the top {shelf}.','그 물건은 맨 위 선반에 있어요.','shelf','A2','shopping',2,'store shelf products'),
('w_shopping_A2_17','label','/ˈleɪbl/','noun','라벨','A piece of paper attached to an item with information.','Check the {label} for washing instructions.','세탁 방법은 라벨을 확인해 주세요.','label','A2','shopping',2,'clothing label tag'),
('w_shopping_A2_18','offer','/ˈɒfər/','noun','제안 / 특가','A price reduction or special deal.','This is a limited-time {offer}.','이건 기간 한정 특가 상품이에요.','offer','A2','shopping',2,'special offer promotion sign'),
('w_shopping_A2_19','exchange','/ɪksˈtʃeɪndʒ/','verb','교환하다','To return something and get a different item.','Can I {exchange} this for a larger size?','이걸 더 큰 사이즈로 교환할 수 있나요?','exchange','A2','shopping',2,'exchange return counter'),
('w_shopping_A2_20','popular','/ˈpɒpjʊlər/','adjective','인기 있는','Liked or enjoyed by many people.','This is our most {popular} product.','이게 저희 가장 인기 있는 상품이에요.','popular','A2','shopping',2,'bestseller tag popular item'),
('w_shopping_A2_21','quality','/ˈkwɒlɪti/','noun','품질','The standard of something as measured against others.','The {quality} of this fabric is excellent.','이 원단의 품질이 정말 좋아요.','quality','A2','shopping',2,'quality control fabric'),
('w_shopping_A2_22','choose','/tʃuːz/','verb','선택하다','To pick one from several options.','It''s hard to {choose} between these two.','이 둘 중에서 고르기가 어려워요.','choose','A2','shopping',2,'choosing between products'),
('w_shopping_A2_23','pay for','/peɪ fɔː/','phrasal verb','계산하다','To hand over money in exchange for something.','I''ll {pay for} dinner tonight.','오늘 저녁은 제가 낼게요.','pay for','A2','shopping',2,'paying bill restaurant'),
('w_shopping_A2_24','spend','/spɛnd/','verb','소비하다','To use money to buy something.','I always {spend} too much on clothes.','저는 항상 옷에 돈을 너무 많이 써요.','spend','A2','shopping',2,'spending money shopping'),
('w_shopping_A2_25','save','/seɪv/','verb','절약하다','To keep money instead of spending it.','I''m trying to {save} money this month.','이번 달에 돈을 절약하려고 해요.','save','A2','shopping',2,'piggy bank saving money'),
('w_shopping_A2_26','order','/ˈɔːrdər/','verb','주문하다','To request a product or service.','I''d like to {order} online.','온라인으로 주문하고 싶어요.','order','A2','shopping',2,'online order laptop'),
('w_shopping_A2_27','delivery','/dɪˈlɪvəri/','noun','배달 / 배송','The process of bringing goods to a buyer.','Free {delivery} on orders over fifty dollars.','50달러 이상 주문 시 무료 배송이에요.','delivery','A2','shopping',2,'delivery box parcel'),
('w_shopping_A2_28','wrap','/ræp/','verb','포장하다','To cover something with paper or material.','Could you {wrap} it as a gift?','선물 포장해 주실 수 있어요?','wrap','A2','shopping',2,'gift wrapping ribbon'),
('w_shopping_A2_29','warranty','/ˈwɒrənti/','noun','보증','A written guarantee on a product.','Does this come with a {warranty}?','이 제품에 보증이 포함되어 있나요?','warranty','A2','shopping',2,'warranty card electronics'),
('w_shopping_A2_30','return','/rɪˈtɜːrn/','verb','반품하다','To take a product back to the shop.','I need to {return} this jacket.','이 재킷을 반품해야 해요.','return','A2','shopping',2,'return counter bag'),
('w_shopping_A2_31','damaged','/ˈdæmɪdʒd/','adjective','손상된','Harmed or broken.','This item is {damaged}.','이 물건이 손상되어 있어요.','damaged','A2','shopping',2,'damaged product broken box'),
('w_shopping_A2_32','available','/əˈveɪləbl/','adjective','구매 가능한','In stock; ready to be bought or used.','Is this model {available} in blue?','이 모델 파란색으로 있나요?','available','A2','shopping',2,'in stock available sign'),
('w_shopping_A2_33','stock','/stɒk/','noun','재고','The goods available for sale.','We''re out of {stock} right now.','지금 재고가 없어요.','stock','A2','shopping',2,'out of stock empty shelf'),
('w_shopping_A2_34','member','/ˈmɛmbər/','noun','회원','A person who belongs to a club or loyalty programme.','Are you a {member} of our rewards club?','저희 포인트 클럽 회원이세요?','member','A2','shopping',2,'membership card rewards'),
('w_shopping_A2_35','point','/pɔɪnt/','noun','포인트','A unit in a reward scheme earned by buying things.','You''ve earned 200 {points} today.','오늘 200포인트 적립하셨어요.','point','A2','shopping',2,'loyalty points card app'),

-- ────────────────────────────────────────────────────────────
-- B1 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_B1_01','bargain','/ˈbɑːrɡɪn/','noun','흥정 / 특가품','Something bought at a low price; to negotiate a price.','That coat was a real {bargain}.','그 코트는 정말 특가품이었어요.','bargain','B1','shopping',3,'bargain deal sale price'),
('w_shopping_B1_02','checkout','/ˈtʃɛkaʊt/','noun','계산대','The place in a supermarket where you pay for goods.','Please go to {checkout} number five.','5번 계산대로 가주세요.','checkout','B1','shopping',3,'checkout counter cashier'),
('w_shopping_B1_03','browse','/braʊz/','verb','둘러보다','To look through items in a shop without a specific plan to buy.','I''m just {browsing} for now.','지금은 그냥 둘러보는 중이에요.','browsing','B1','shopping',3,'browsing store window shopping'),
('w_shopping_B1_04','wholesale','/ˈhoʊlseɪl/','adjective','도매의','Relating to selling goods in large quantities at low prices.','We buy goods at {wholesale} prices.','저희는 도매가로 물건을 구입해요.','wholesale','B1','shopping',3,'wholesale warehouse bulk'),
('w_shopping_B1_05','retail','/ˈriːteɪl/','noun','소매','The sale of goods directly to the public.','The {retail} price is higher than the wholesale price.','소매가가 도매가보다 높아요.','retail','B1','shopping',3,'retail store shopping mall'),
('w_shopping_B1_06','coupon','/ˈkuːpɒn/','noun','쿠폰','A voucher giving a discount on a product.','I have a {coupon} for ten percent off.','10% 할인 쿠폰이 있어요.','coupon','B1','shopping',3,'coupon discount voucher'),
('w_shopping_B1_07','loyalty','/ˈlɔɪəlti/','noun','충성도 (고객 충성)','Faithfulness to a brand or company, often rewarded by programmes.','Do you have a {loyalty} card?','포인트 카드 있으세요?','loyalty','B1','shopping',3,'loyalty card rewards programme'),
('w_shopping_B1_08','invoice','/ˈɪnvɔɪs/','noun','청구서 / 인보이스','A document listing goods sold and the amount owed.','Please send me the {invoice} by email.','이메일로 인보이스를 보내 주세요.','invoice','B1','shopping',3,'invoice document billing'),
('w_shopping_B1_09','vendor','/ˈvɛndər/','noun','판매자 / 노점상','A person or company that sells goods.','The street {vendor} sold fresh juice.','노점 판매자가 신선한 주스를 팔았어요.','vendor','B1','shopping',3,'street vendor stall market'),
('w_shopping_B1_10','negotiate','/nɪˈɡoʊʃieɪt/','verb','협상하다','To discuss terms in order to reach an agreement.','Can we {negotiate} the price?','가격을 협상할 수 있을까요?','negotiate','B1','shopping',3,'negotiation business deal'),
('w_shopping_B1_11','budget','/ˈbʌdʒɪt/','noun','예산','The amount of money available to spend.','I''m shopping on a tight {budget}.','빠듯한 예산으로 쇼핑하고 있어요.','budget','B1','shopping',3,'budget planning calculator'),
('w_shopping_B1_12','comparison','/kəmˈpærɪsən/','noun','비교','The act of looking at two or more things to judge similarities.','Price {comparison} apps save a lot of money.','가격 비교 앱으로 돈을 많이 아낄 수 있어요.','comparison','B1','shopping',3,'price comparison chart'),
('w_shopping_B1_13','purchase','/ˈpɜːrtʃəs/','noun/verb','구매 / 구매하다','The act of buying something; to buy.','Keep this as proof of {purchase}.','이걸 구매 증빙으로 보관하세요.','purchase','B1','shopping',3,'purchase receipt confirmation'),
('w_shopping_B1_14','transaction','/trænˈzækʃən/','noun','거래','An instance of buying or selling something.','The {transaction} was completed successfully.','거래가 성공적으로 완료됐어요.','transaction','B1','shopping',3,'transaction payment terminal'),
('w_shopping_B1_15','installment','/ɪnˈstɔːlmənt/','noun','할부','One of several payments made over time.','I''ll pay in twelve {installments}.','12개월 할부로 낼게요.','installment','B1','shopping',3,'installment plan payment'),
('w_shopping_B1_16','shipping','/ˈʃɪpɪŋ/','noun','배송 (비용)','The process of sending goods to a buyer; the cost of sending.','How much is the {shipping} fee?','배송비가 얼마예요?','shipping','B1','shopping',3,'shipping box delivery truck'),
('w_shopping_B1_17','tracking','/ˈtræk ɪŋ/','noun','배송 추적','Following the progress of a shipped order online.','I''m checking the {tracking} status.','배송 추적 상태를 확인하고 있어요.','tracking','B1','shopping',3,'tracking number parcel'),
('w_shopping_B1_18','subscription','/səbˈskrɪpʃən/','noun','구독 / 정기 결제','A regular payment for access to a service or product.','This is a monthly {subscription} box.','이건 월정기 구독 박스예요.','subscription','B1','shopping',3,'subscription box monthly service'),
('w_shopping_B1_19','bulk','/bʌlk/','noun','대량','A large quantity of something.','It''s cheaper to buy in {bulk}.','대량으로 사면 더 저렴해요.','bulk','B1','shopping',3,'bulk buy wholesale warehouse'),
('w_shopping_B1_20','second-hand','/ˌsɛkənd ˈhænd/','adjective','중고의','Previously owned by another person.','I found a {second-hand} camera for half the price.','반값에 중고 카메라를 구했어요.','second-hand','B1','shopping',3,'secondhand thrift store vintage'),
('w_shopping_B1_21','outlet','/ˈaʊtlɛt/','noun','아울렛','A shop selling surplus or discounted goods.','We drove to the {outlet} mall.','아울렛 쇼핑몰로 드라이브했어요.','outlet','B1','shopping',3,'outlet mall shopping'),
('w_shopping_B1_22','impulse','/ˈɪmpʌls/','noun','충동','A sudden desire to do something.','That was an {impulse} buy.','그건 충동구매였어요.','impulse','B1','shopping',3,'impulse buy checkout candy'),
('w_shopping_B1_23','complaint','/kəmˈpleɪnt/','noun','불만 / 항의','A statement that something is unsatisfactory.','I''d like to make a {complaint}.','불만 사항을 접수하고 싶어요.','complaint','B1','shopping',3,'complaint customer service'),
('w_shopping_B1_24','guarantee','/ˌɡærənˈtiː/','noun','보장 / 품질 보증','A formal promise that something will work or be fixed.','This product comes with a two-year {guarantee}.','이 제품은 2년 품질 보증이 있어요.','guarantee','B1','shopping',3,'guarantee certificate product'),
('w_shopping_B1_25','surplus','/ˈsɜːrpləs/','noun','잉여 / 남은 재고','An amount that is more than what is needed.','They sell {surplus} stock at reduced prices.','잉여 재고를 할인된 가격에 팔아요.','surplus','B1','shopping',3,'surplus stock clearance sale'),
('w_shopping_B1_26','clearance','/ˈklɪərəns/','noun','재고 정리 세일','A sale of remaining stock at low prices.','Everything in the {clearance} section is fifty percent off.','재고 정리 구역의 모든 상품이 50% 할인이에요.','clearance','B1','shopping',3,'clearance sale rack'),
('w_shopping_B1_27','merchant','/ˈmɜːrtʃənt/','noun','상인','A person who buys and sells goods.','The {merchant} offered a fair deal.','그 상인이 공정한 거래를 제안했어요.','merchant','B1','shopping',3,'merchant market stall trader'),
('w_shopping_B1_28','checkout process','/ˈtʃɛkaʊt ˈprəʊsɛs/','noun phrase','결제 과정','The steps involved in completing a purchase online or in-store.','The online {checkout process} is very simple.','온라인 결제 과정이 매우 간단해요.','checkout process','B1','shopping',3,'online checkout ecommerce'),
('w_shopping_B1_29','demand','/dɪˈmɑːnd/','noun','수요','The desire of consumers to purchase goods.','High {demand} caused the price to rise.','높은 수요로 가격이 올랐어요.','demand','B1','shopping',3,'demand supply economics'),
('w_shopping_B1_30','supply','/səˈplaɪ/','noun','공급','The amount of goods available for purchase.','The {supply} of masks ran low during the pandemic.','팬데믹 동안 마스크 공급이 부족했어요.','supply','B1','shopping',3,'supply chain warehouse'),
('w_shopping_B1_31','promotion','/prəˈmoʊʃən/','noun','판촉 / 프로모션','An activity to increase sales or awareness of a product.','We have a special {promotion} this week.','이번 주에 특별 프로모션이 있어요.','promotion','B1','shopping',3,'promotion sale advertisement'),
('w_shopping_B1_32','advertisement','/ˌædvərˈtaɪzmənt/','noun','광고','A notice promoting a product or service.','I saw an {advertisement} for this product.','이 제품 광고를 봤어요.','advertisement','B1','shopping',3,'advertisement poster billboard'),
('w_shopping_B1_33','consignment','/kənˈsaɪnmənt/','noun','위탁 판매','Goods sent to a retailer to sell on behalf of the supplier.','This boutique operates on a {consignment} basis.','이 부티크는 위탁 판매 방식으로 운영돼요.','consignment','B1','shopping',3,'consignment shop boutique'),
('w_shopping_B1_34','price tag','/praɪs tæɡ/','noun','가격표','A label attached to an item showing its price.','The {price tag} says it''s on sale.','가격표를 보니 세일 중이네요.','price tag','B1','shopping',3,'price tag label product'),
('w_shopping_B1_35','afterthought','/ˈɑːftərθɔːt/','noun','나중에 든 생각 / 부가품','Something added or considered after the main plan.','I bought the scarf as an {afterthought}.','스카프는 나중에 생각나서 샀어요.','afterthought','B1','shopping',3,'extra purchase addon item'),

-- ────────────────────────────────────────────────────────────
-- B2 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_B2_01','markup','/ˈmɑːrkʌp/','noun','마진 / 가격 인상','The amount added to the cost price to determine the selling price.','The {markup} on designer goods is often over 200%.','디자이너 상품의 마진은 흔히 200%가 넘어요.','markup','B2','shopping',4,'markup pricing profit margin'),
('w_shopping_B2_02','niche','/niːʃ/','adjective','틈새의','Relating to a small, specialised market segment.','They target a {niche} market of eco-conscious consumers.','친환경 소비자라는 틈새 시장을 공략해요.','niche','B2','shopping',4,'niche market specialty store'),
('w_shopping_B2_03','premium','/ˈpriːmiəm/','adjective','프리미엄의','Of higher quality and usually higher price.','This is a {premium} product line.','이건 프리미엄 제품 라인이에요.','premium','B2','shopping',4,'premium luxury product'),
('w_shopping_B2_04','authentic','/ɔːˈθɛntɪk/','adjective','정품의 / 진짜의','Genuine, not a copy or imitation.','Always check that the product is {authentic}.','제품이 정품인지 항상 확인하세요.','authentic','B2','shopping',4,'authentic certificate genuine'),
('w_shopping_B2_05','counterfeit','/ˈkaʊntərfɪt/','adjective','위조품의','Made to look like the real thing in order to deceive.','Be careful of {counterfeit} goods online.','온라인에서 위조품을 조심하세요.','counterfeit','B2','shopping',4,'counterfeit fake product'),
('w_shopping_B2_06','procurement','/prəˈkjʊərmənt/','noun','조달','The process of obtaining goods or services.','The company streamlined its {procurement} process.','회사가 조달 과정을 간소화했어요.','procurement','B2','shopping',4,'procurement supply chain'),
('w_shopping_B2_07','consumerism','/kənˈsjuːmərɪzəm/','noun','소비주의','The theory that increasing consumption is economically desirable.','Modern {consumerism} drives overproduction.','현대 소비주의가 과잉 생산을 초래해요.','consumerism','B2','shopping',4,'consumerism shopping mall crowd'),
('w_shopping_B2_08','impulse buying','/ˈɪmpʌls ˈbaɪɪŋ/','noun phrase','충동구매','Buying something without planning to do so.','{impulse buying} is triggered by clever store layouts.','매장 레이아웃이 충동구매를 유발해요.','impulse buying','B2','shopping',4,'impulse buy checkout display'),
('w_shopping_B2_09','price elasticity','/praɪs ˌɪlæˈstɪsɪti/','noun phrase','가격 탄력성','The degree to which demand changes in response to price changes.','{price elasticity} determines how much demand drops when prices rise.','가격 탄력성은 가격 상승 시 수요 감소 폭을 결정해요.','price elasticity','B2','shopping',4,'price elasticity chart economics'),
('w_shopping_B2_10','value for money','/ˈvæljuː fɔː ˈmʌni/','noun phrase','가성비','The extent to which something is worth what you pay for it.','This product offers great {value for money}.','이 제품은 가성비가 정말 좋아요.','value for money','B2','shopping',4,'value for money rating'),
('w_shopping_B2_11','comparison shopping','/kəmˈpærɪsən ˈʃɒpɪŋ/','noun phrase','비교 쇼핑','Checking prices across multiple stores before buying.','{comparison shopping} helps you find the best deal.','비교 쇼핑을 하면 최상의 거래를 찾을 수 있어요.','comparison shopping','B2','shopping',4,'price comparison website'),
('w_shopping_B2_12','upsell','/ˈʌpsɛl/','verb','추가 판매하다','To persuade a customer to buy something more expensive.','The salesperson tried to {upsell} me to a larger model.','영업 직원이 더 큰 모델을 사도록 유도했어요.','upsell','B2','shopping',4,'upsell upgrade salesperson'),
('w_shopping_B2_13','cross-sell','/ˈkrɒs sɛl/','verb','교차 판매하다','To sell an additional related product to an existing buyer.','The app {cross-sells} accessories with every device purchase.','앱이 기기 구매 시마다 액세서리를 교차 판매해요.','cross-sell','B2','shopping',4,'cross sell bundle deal'),
('w_shopping_B2_14','overcharge','/ˌoʊvərˈtʃɑːrdʒ/','verb','바가지 씌우다','To charge too high a price.','I think they {overcharged} me by ten dollars.','저한테 10달러 바가지를 씌운 것 같아요.','overcharged','B2','shopping',4,'overcharge bill mistake'),
('w_shopping_B2_15','rebate','/ˈriːbeɪt/','noun','리베이트 / 환급금','A partial refund to someone who has paid too much.','You''ll receive a {rebate} after submitting the form.','양식 제출 후 환급금을 받으실 거예요.','rebate','B2','shopping',4,'rebate check refund form'),
('w_shopping_B2_16','surcharge','/ˈsɜːrtʃɑːrdʒ/','noun','추가 요금','An extra charge added to the basic price.','There is a {surcharge} for weekend delivery.','주말 배송에는 추가 요금이 있어요.','surcharge','B2','shopping',4,'surcharge extra fee receipt'),
('w_shopping_B2_17','tariff','/ˈtærɪf/','noun','관세 / 요금표','A tax imposed on imported goods.','The new {tariff} has raised the price of electronics.','새 관세로 전자제품 가격이 올랐어요.','tariff','B2','shopping',4,'tariff customs border'),
('w_shopping_B2_18','consumer behaviour','/kənˈsjuːmər bɪˈheɪvjər/','noun phrase','소비자 행동','The actions and decisions of buyers in the marketplace.','Understanding {consumer behaviour} is key to marketing.','소비자 행동 이해가 마케팅의 핵심이에요.','consumer behaviour','B2','shopping',4,'consumer behaviour research'),
('w_shopping_B2_19','profit margin','/ˈprɒfɪt ˈmɑːrdʒɪn/','noun phrase','이익률','The percentage of revenue that is profit.','High {profit margins} depend on controlling costs.','높은 이익률은 비용 관리에 달려 있어요.','profit margin','B2','shopping',4,'profit margin chart business'),
('w_shopping_B2_20','brick-and-mortar','/ˌbrɪk ən ˈmɔːrtər/','adjective','오프라인 매장의','Relating to a physical shop, not online.','Many {brick-and-mortar} stores are struggling against online retailers.','많은 오프라인 매장들이 온라인 유통업체와의 경쟁으로 어려움을 겪고 있어요.','brick-and-mortar','B2','shopping',4,'physical store retail building'),
('w_shopping_B2_21','e-commerce','/ˈiːkɒmɜːrs/','noun','전자상거래','Buying and selling goods and services over the internet.','{e-commerce} sales have surged in recent years.','최근 몇 년간 전자상거래 매출이 급증했어요.','e-commerce','B2','shopping',4,'ecommerce online shopping laptop'),
('w_shopping_B2_22','supply chain','/səˈplaɪ tʃeɪn/','noun phrase','공급망','The network between a company and its suppliers to produce and distribute goods.','The pandemic disrupted global {supply chains}.','팬데믹이 글로벌 공급망을 교란했어요.','supply chain','B2','shopping',4,'supply chain logistics map'),
('w_shopping_B2_23','inventory','/ˈɪnvəntɔːri/','noun','재고 목록 / 재고','A complete list of goods held in stock.','We do a monthly {inventory} check.','매달 재고 점검을 해요.','inventory','B2','shopping',4,'inventory warehouse stock'),
('w_shopping_B2_24','seasonal','/ˈsiːzənl/','adjective','계절적인','Occurring at or relating to a particular time of year.','{seasonal} discounts are biggest in January.','계절 할인은 1월에 가장 커요.','seasonal','B2','shopping',4,'seasonal sale winter clearance'),
('w_shopping_B2_25','flagship','/ˈflæɡʃɪp/','noun','대표 / 기함 (매장)','The best or most important product or store of a brand.','The brand opened its {flagship} store in Seoul.','브랜드가 서울에 대표 매장을 열었어요.','flagship','B2','shopping',4,'flagship store luxury brand'),
('w_shopping_B2_26','currency','/ˈkʌrənsi/','noun','통화','A system of money used in a country.','The price changes depending on the {currency}.','통화에 따라 가격이 달라져요.','currency','B2','shopping',4,'currency exchange money'),
('w_shopping_B2_27','exchange rate','/ɪksˈtʃeɪndʒ reɪt/','noun phrase','환율','The value of one currency relative to another.','Check the {exchange rate} before shopping abroad.','해외 쇼핑 전에 환율을 확인하세요.','exchange rate','B2','shopping',4,'exchange rate board travel'),
('w_shopping_B2_28','loyalty programme','/ˈlɔɪəlti ˈprəʊɡræm/','noun phrase','고객 충성도 프로그램','A marketing scheme rewarding repeat customers.','Join our {loyalty programme} to earn cashback.','현금 적립을 위해 고객 충성도 프로그램에 가입하세요.','loyalty programme','B2','shopping',4,'loyalty programme card app'),
('w_shopping_B2_29','consumer rights','/kənˈsjuːmər raɪts/','noun phrase','소비자 권리','The rights that protect buyers from unfair business practices.','You should know your {consumer rights}.','소비자 권리를 알고 있어야 해요.','consumer rights','B2','shopping',4,'consumer rights protection law'),
('w_shopping_B2_30','product recall','/ˈprɒdʌkt rɪˈkɔːl/','noun phrase','제품 리콜','The process of taking back defective products from the market.','The company issued a {product recall} for safety reasons.','회사가 안전상의 이유로 제품 리콜을 실시했어요.','product recall','B2','shopping',4,'product recall announcement'),
('w_shopping_B2_31','sustainable','/səˈsteɪnəbl/','adjective','지속 가능한','Causing little or no damage to the environment.','I prefer {sustainable} fashion brands.','저는 지속 가능한 패션 브랜드를 선호해요.','sustainable','B2','shopping',4,'sustainable eco fashion'),
('w_shopping_B2_32','fast fashion','/fɑːst ˈfæʃən/','noun phrase','패스트 패션','Cheaply made clothes produced rapidly to follow trends.','{Fast fashion} creates enormous textile waste.','패스트 패션은 엄청난 섬유 폐기물을 만들어요.','fast fashion','B2','shopping',4,'fast fashion clothing pile'),
('w_shopping_B2_33','ethical shopping','/ˈɛθɪkl ˈʃɒpɪŋ/','noun phrase','윤리적 쇼핑','Buying goods that are produced in socially responsible ways.','{Ethical shopping} considers workers'' conditions and environmental impact.','윤리적 쇼핑은 노동자 환경과 생태적 영향을 고려해요.','ethical shopping','B2','shopping',4,'ethical trade fair fashion'),
('w_shopping_B2_34','price sensitive','/praɪs ˈsɛnsɪtɪv/','adjective','가격에 민감한','Strongly affected by changes in price.','Our customers are very {price sensitive}.','저희 고객들은 가격에 매우 민감해요.','price sensitive','B2','shopping',4,'price sensitive consumer chart'),
('w_shopping_B2_35','competitive pricing','/kəmˈpɛtɪtɪv ˈpraɪsɪŋ/','noun phrase','경쟁력 있는 가격 책정','Setting prices based on what competitors charge.','{Competitive pricing} keeps our market share high.','경쟁력 있는 가격 책정으로 시장 점유율을 유지해요.','competitive pricing','B2','shopping',4,'competitive pricing strategy chart'),

-- ────────────────────────────────────────────────────────────
-- C1 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_C1_01','arbitrage','/ˈɑːrbɪtrɑːʒ/','noun','차익거래','The practice of buying and selling to profit from a price difference.','He profits from currency {arbitrage}.','그는 환율 차익거래로 수익을 올려요.','arbitrage','C1','shopping',5,'arbitrage trade profit'),
('w_shopping_C1_02','liquidation','/ˌlɪkwɪˈdeɪʃən/','noun','청산 / 재고 처분','The process of closing a business and selling all its assets.','The company entered {liquidation} after filing for bankruptcy.','회사가 파산 신청 후 청산에 들어갔어요.','liquidation','C1','shopping',5,'liquidation sale clearance'),
('w_shopping_C1_03','franchise','/ˈfræntʃaɪz/','noun','프랜차이즈','A licence to operate a business using another company''s brand.','She opened a {franchise} of a popular coffee chain.','그녀는 인기 커피 체인의 프랜차이즈를 열었어요.','franchise','C1','shopping',5,'franchise business brand'),
('w_shopping_C1_04','monopoly','/məˈnɒpəli/','noun','독점','Exclusive control of supply of a product or service.','The government broke up the retail {monopoly}.','정부가 소매 독점을 해체했어요.','monopoly','C1','shopping',5,'monopoly market dominance'),
('w_shopping_C1_05','oligopoly','/ˌɒlɪˈɡɒpəli/','noun','과점','A market dominated by a small number of large sellers.','The smartphone market is essentially an {oligopoly}.','스마트폰 시장은 사실상 과점 구조예요.','oligopoly','C1','shopping',5,'oligopoly market few companies'),
('w_shopping_C1_06','bespoke','/bɪˈspoʊk/','adjective','맞춤 제작의','Made to order for a specific customer.','He ordered a {bespoke} suit from the tailor.','그는 재단사에게 맞춤 정장을 주문했어요.','bespoke','C1','shopping',5,'bespoke tailored suit custom'),
('w_shopping_C1_07','boutique','/buːˈtiːk/','noun','부티크','A small shop selling fashionable clothes or luxury goods.','She found a vintage dress in a tiny {boutique}.','그녀는 작은 부티크에서 빈티지 드레스를 발견했어요.','boutique','C1','shopping',5,'boutique fashion store luxury'),
('w_shopping_C1_08','artisan','/ˈɑːrtɪzən/','noun','장인','A skilled craftsman who makes goods by hand.','This bag is handmade by a local {artisan}.','이 가방은 지역 장인이 수작업으로 만든 거예요.','artisan','C1','shopping',5,'artisan craft handmade workshop'),
('w_shopping_C1_09','exclusive','/ɪkˈskluːsɪv/','adjective','독점적인 / 한정판의','Available only to particular people; luxury and restricted.','This is an {exclusive} limited edition release.','이건 한정판 단독 출시예요.','exclusive','C1','shopping',5,'exclusive limited edition luxury'),
('w_shopping_C1_10','provenance','/ˈprɒvənəns/','noun','원산지 / 출처','The place of origin or history of an item.','The {provenance} of this antique is well documented.','이 골동품의 출처가 잘 문서화되어 있어요.','provenance','C1','shopping',5,'provenance antique certificate'),
('w_shopping_C1_11','connoisseur','/ˌkɒnəˈsɜːr/','noun','감정가 / 전문가','An expert judge in matters of taste.','She is a {connoisseur} of Japanese ceramics.','그녀는 일본 도자기 감정가예요.','connoisseur','C1','shopping',5,'connoisseur expert tasting'),
('w_shopping_C1_12','valuation','/ˌvæljuˈeɪʃən/','noun','감정 평가','An estimate of the worth of something.','We need a professional {valuation} of the estate.','부동산의 전문적인 감정 평가가 필요해요.','valuation','C1','shopping',5,'valuation appraisal property'),
('w_shopping_C1_13','appraisal','/əˈpreɪzl/','noun','평가 / 감정','A formal assessment of the value of an item.','The jewellery store offered a free {appraisal}.','귀금속 가게에서 무료 감정을 제공했어요.','appraisal','C1','shopping',5,'appraisal jewelry value'),
('w_shopping_C1_14','price point','/praɪs pɔɪnt/','noun phrase','가격대','A specific price at which something is offered.','This product targets the mid-range {price point}.','이 제품은 중간 가격대를 겨냥하고 있어요.','price point','C1','shopping',5,'price point target market'),
('w_shopping_C1_15','margin compression','/ˈmɑːrdʒɪn kəmˈprɛʃən/','noun phrase','마진 압박','The reduction of the difference between the selling price and the cost.','{Margin compression} forces retailers to cut costs.','마진 압박으로 소매업체들이 비용을 절감해야 해요.','margin compression','C1','shopping',5,'margin squeeze profit decline'),
('w_shopping_C1_16','shelf life','/ʃɛlf laɪf/','noun phrase','유통 기한','The length of time a product remains usable.','Check the {shelf life} before purchasing perishables.','부패하기 쉬운 식품은 구매 전 유통 기한을 확인하세요.','shelf life','C1','shopping',5,'shelf life expiry date food'),
('w_shopping_C1_17','brand equity','/brænd ˈɛkwɪti/','noun phrase','브랜드 가치','The commercial value derived from consumer perception of a brand.','{Brand equity} allows premium pricing.','브랜드 가치는 프리미엄 가격 책정을 가능하게 해요.','brand equity','C1','shopping',5,'brand equity marketing'),
('w_shopping_C1_18','market penetration','/ˈmɑːrkɪt ˌpɛnɪˈtreɪʃən/','noun phrase','시장 침투','A strategy of selling more of an existing product in existing markets.','{Market penetration} pricing uses low prices to gain share.','시장 침투 가격 전략은 점유율을 높이기 위해 낮은 가격을 사용해요.','market penetration','C1','shopping',5,'market penetration strategy'),
('w_shopping_C1_19','acquisition cost','/ˌækwɪˈzɪʃən kɒst/','noun phrase','고객 획득 비용','The cost of gaining a new customer.','Reducing {acquisition cost} improves profitability.','고객 획득 비용을 줄이면 수익성이 개선돼요.','acquisition cost','C1','shopping',5,'customer acquisition marketing'),
('w_shopping_C1_20','price discrimination','/praɪs ˌdɪskrɪmɪˈneɪʃən/','noun phrase','가격 차별','Selling the same product at different prices to different customers.','{Price discrimination} is common in airline ticketing.','가격 차별은 항공권 판매에서 흔해요.','price discrimination','C1','shopping',5,'price discrimination airlines'),
('w_shopping_C1_21','vertically integrated','/ˌvɜːrtɪkli ˈɪntɪɡreɪtɪd/','adjective','수직 통합된','Describing a company that controls multiple stages of production and distribution.','Apple is {vertically integrated} from chip design to retail.','애플은 칩 설계부터 소매까지 수직 통합되어 있어요.','vertically integrated','C1','shopping',5,'vertical integration supply chain'),
('w_shopping_C1_22','disintermediation','/ˌdɪsɪntəˌmiːdiˈeɪʃən/','noun','중간상 제거','Removing intermediaries from a supply chain.','{Disintermediation} allows brands to sell directly to consumers.','중간상 제거로 브랜드가 소비자에게 직접 판매할 수 있어요.','disintermediation','C1','shopping',5,'direct to consumer brand'),
('w_shopping_C1_23','ancillary revenue','/ænˈsɪləri ˈrɛvənjuː/','noun phrase','부가 수익','Income from additional products or services beyond the main offering.','Airlines rely heavily on {ancillary revenue} from baggage fees.','항공사는 수하물 요금 같은 부가 수익에 크게 의존해요.','ancillary revenue','C1','shopping',5,'ancillary revenue airline fees'),
('w_shopping_C1_24','market segmentation','/ˈmɑːrkɪt ˌsɛɡmɛnˈteɪʃən/','noun phrase','시장 세분화','Dividing consumers into groups based on shared characteristics.','{Market segmentation} helps tailor marketing messages.','시장 세분화는 마케팅 메시지를 맞춤화하는 데 도움이 돼요.','market segmentation','C1','shopping',5,'market segmentation demographics'),
('w_shopping_C1_25','loss leader','/lɒs ˈliːdər/','noun phrase','미끼 상품','A product sold at a loss to attract customers who then buy other items.','Supermarkets use milk as a {loss leader}.','슈퍼마켓은 우유를 미끼 상품으로 활용해요.','loss leader','C1','shopping',5,'loss leader grocery sale'),
('w_shopping_C1_26','dynamic pricing','/daɪˈnæmɪk ˈpraɪsɪŋ/','noun phrase','동적 가격 책정','Adjusting prices in real time based on demand and other factors.','{Dynamic pricing} allows airlines to maximise revenue.','동적 가격 책정으로 항공사가 수익을 극대화해요.','dynamic pricing','C1','shopping',5,'dynamic pricing surge algorithm'),
('w_shopping_C1_27','bundle pricing','/ˈbʌndl ˈpraɪsɪŋ/','noun phrase','묶음 가격 책정','Selling multiple products together at a combined price.','{Bundle pricing} increases perceived value.','묶음 가격 책정은 체감 가치를 높여요.','bundle pricing','C1','shopping',5,'bundle deal products package'),
('w_shopping_C1_28','anchor pricing','/ˈæŋkər ˈpraɪsɪŋ/','noun phrase','앵커 가격 전략','Presenting a higher price first to make a lower price seem cheaper.','{Anchor pricing} influences how customers perceive value.','앵커 가격 전략은 고객이 가치를 인식하는 방식에 영향을 줘요.','anchor pricing','C1','shopping',5,'anchor price tag sale'),
('w_shopping_C1_29','shrinkage','/ˈʃrɪŋkɪdʒ/','noun','재고 손실','Retail inventory loss due to theft, damage, or error.','{Shrinkage} costs retailers billions each year.','재고 손실은 소매업체에 매년 수십억의 비용을 발생시켜요.','shrinkage','C1','shopping',5,'shrinkage theft store loss'),
('w_shopping_C1_30','grey market','/ɡreɪ ˈmɑːrkɪt/','noun phrase','회색 시장','The trade of goods through unofficial channels.','He bought the phone through the {grey market}.','그는 회색 시장을 통해 폰을 구입했어요.','grey market','C1','shopping',5,'grey market parallel import'),
('w_shopping_C1_31','price floor','/praɪs flɔːr/','noun phrase','가격 하한선','The minimum price allowed by law or regulation.','The government set a {price floor} for wheat.','정부가 밀에 대한 가격 하한선을 설정했어요.','price floor','C1','shopping',5,'price floor minimum wage'),
('w_shopping_C1_32','price ceiling','/praɪs ˈsiːlɪŋ/','noun phrase','가격 상한선','The maximum price set by law for a product.','Rent control is a type of {price ceiling}.','임대료 통제는 가격 상한선의 한 유형이에요.','price ceiling','C1','shopping',5,'price ceiling regulation'),
('w_shopping_C1_33','customer lifetime value','/ˈkʌstəmər ˈlaɪftaɪm ˈvæljuː/','noun phrase','고객 생애 가치','The total revenue a business can expect from a single customer.','Increasing {customer lifetime value} is a core business goal.','고객 생애 가치를 높이는 것이 핵심 사업 목표예요.','customer lifetime value','C1','shopping',5,'customer value analytics'),
('w_shopping_C1_34','omnichannel','/ˈɒmnɪˌtʃænl/','adjective','옴니채널의','Using all available channels of retail to give customers a seamless experience.','The brand offers an {omnichannel} shopping experience.','브랜드가 옴니채널 쇼핑 경험을 제공해요.','omnichannel','C1','shopping',5,'omnichannel retail digital store'),
('w_shopping_C1_35','stockout','/ˈstɒkaʊt/','noun','품절 / 재고 소진','A situation where a retailer runs out of a product.','Frequent {stockouts} damage brand reputation.','잦은 품절은 브랜드 평판을 손상시켜요.','stockout','C1','shopping',5,'stockout empty shelf sold out'),

-- ────────────────────────────────────────────────────────────
-- C2 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_C2_01','commodification','/kəˌmɒdɪfɪˈkeɪʃən/','noun','상품화','The transformation of something into a commercial product.','{Commodification} of personal data is a modern concern.','개인 데이터의 상품화는 현대의 주요 우려 사항이에요.','commodification','C2','shopping',6,'commodification data digital'),
('w_shopping_C2_02','mercantilism','/ˈmɜːrkəntɪlɪzəm/','noun','중상주의','An economic theory holding that wealth is maximised by exporting more than importing.','{Mercantilism} shaped colonial trade policies.','중상주의가 식민지 무역 정책을 형성했어요.','mercantilism','C2','shopping',6,'mercantilism trade history'),
('w_shopping_C2_03','arbitrageur','/ˌɑːrbɪtrɑːˈʒɜːr/','noun','차익거래자','A person who profits from price differences across markets.','The {arbitrageur} exploited exchange rate discrepancies.','차익거래자가 환율 차이를 이용했어요.','arbitrageur','C2','shopping',6,'arbitrageur trader finance'),
('w_shopping_C2_04','conglomerate','/kənˈɡlɒmərɪt/','noun','대기업 (복합 기업)','A corporation owning a variety of businesses in different sectors.','The retail {conglomerate} operates in twelve countries.','그 유통 대기업은 12개국에서 운영돼요.','conglomerate','C2','shopping',6,'conglomerate corporation multinational'),
('w_shopping_C2_05','cartel','/kɑːrˈtɛl/','noun','카르텔','An association of businesses that agree to fix prices.','The authorities broke up the oil-price {cartel}.','당국이 석유 가격 카르텔을 해체했어요.','cartel','C2','shopping',6,'cartel monopoly price fixing'),
('w_shopping_C2_06','monopsony','/mɒˈnɒpsəni/','noun','수요 독점 (단일 구매자 시장)','A market where there is only one major buyer.','A large retailer can act as a {monopsony} for local suppliers.','대형 소매업체는 지역 공급업체에 대해 수요 독점처럼 행동할 수 있어요.','monopsony','C2','shopping',6,'monopsony market power buyer'),
('w_shopping_C2_07','depreciation','/dɪˌpriːʃiˈeɪʃən/','noun','감가상각','The reduction in value of an asset over time.','Electronics suffer rapid {depreciation}.','전자제품은 빠른 감가상각을 겪어요.','depreciation','C2','shopping',6,'depreciation asset value chart'),
('w_shopping_C2_08','amortization','/əˌmɔːrtɪˈzeɪʃən/','noun','상각 / 분할 상환','The gradual writing off of an asset''s value.','{Amortization} spreads costs over the useful life of an asset.','상각은 자산의 내용 연수에 걸쳐 비용을 배분해요.','amortization','C2','shopping',6,'amortization schedule finance'),
('w_shopping_C2_09','asset','/ˈæsɛt/','noun','자산','A resource owned by a business or individual with economic value.','Brand recognition is an intangible {asset}.','브랜드 인지도는 무형 자산이에요.','asset','C2','shopping',6,'asset balance sheet business'),
('w_shopping_C2_10','liability','/laɪəˈbɪlɪti/','noun','부채 / 법적 책임','A debt or legal obligation owed by a business or individual.','Excess debt is a serious {liability}.','과도한 부채는 심각한 부담이에요.','liability','C2','shopping',6,'liability debt balance sheet'),
('w_shopping_C2_11','oligopsony','/ˌɒlɪˈɡɒpsəni/','noun','소수 구매자 과점','A market in which a small number of buyers control demand.','The fashion industry resembles an {oligopsony} with a few powerful retailers.','패션 업계는 소수의 강력한 소매업체가 지배하는 소수 구매자 과점과 유사해요.','oligopsony','C2','shopping',6,'oligopsony market economics'),
('w_shopping_C2_12','externality','/ˌɛkstɜːrˈnælɪti/','noun','외부 효과','A cost or benefit affecting parties not involved in a transaction.','Pollution from production is a negative {externality}.','생산에서 발생하는 오염은 부정적 외부 효과예요.','externality','C2','shopping',6,'externality pollution economics'),
('w_shopping_C2_13','price gouging','/praɪs ˈɡaʊdʒɪŋ/','noun phrase','폭리 (부당 가격 인상)','Charging excessively high prices during an emergency.','{Price gouging} for medical supplies during a crisis is illegal.','위기 상황에서 의료용품에 폭리를 취하는 건 불법이에요.','price gouging','C2','shopping',6,'price gouging disaster supply'),
('w_shopping_C2_14','regulatory arbitrage','/ˈrɛɡjʊlətɔːri ˈɑːrbɪtrɑːʒ/','noun phrase','규제 차익거래','Taking advantage of differences in regulations between jurisdictions.','{Regulatory arbitrage} allows firms to circumvent local laws.','규제 차익거래로 기업이 현지 법규를 우회할 수 있어요.','regulatory arbitrage','C2','shopping',6,'regulatory arbitrage law finance'),
('w_shopping_C2_15','planned obsolescence','/plænd ˌɒbsəˈlɛsns/','noun phrase','계획적 노후화','Designing products to become obsolete quickly to encourage repurchasing.','{Planned obsolescence} drives consumer electronics sales.','계획적 노후화가 소비자 전자제품 판매를 촉진해요.','planned obsolescence','C2','shopping',6,'planned obsolescence electronics'),
('w_shopping_C2_16','conspicuous consumption','/kənˈspɪkjuəs kənˈsʌmpʃən/','noun phrase','과시적 소비','Buying expensive things to display wealth or status.','{Conspicuous consumption} is central to luxury brand strategy.','과시적 소비는 명품 브랜드 전략의 핵심이에요.','conspicuous consumption','C2','shopping',6,'conspicuous consumption luxury status'),
('w_shopping_C2_17','veblen good','/ˈvɛblən ɡʊd/','noun phrase','베블런 재화','A product for which demand increases as price rises, due to its status symbol.','Luxury handbags are classic {veblen goods}.','명품 핸드백은 전형적인 베블런 재화예요.','veblen good','C2','shopping',6,'veblen good luxury demand'),
('w_shopping_C2_18','moral hazard','/ˈmɒrəl ˈhæzərd/','noun phrase','도덕적 해이','A situation where someone takes risks because others bear the cost.','{Moral hazard} arises when buyers are insured against loss.','구매자가 손실에 대해 보험에 가입되어 있을 때 도덕적 해이가 발생해요.','moral hazard','C2','shopping',6,'moral hazard risk insurance'),
('w_shopping_C2_19','asymmetric information','/eɪˌsɪmɪtrɪk ˌɪnfəˈmeɪʃən/','noun phrase','정보 비대칭','A situation where one party in a transaction has more information than the other.','{Asymmetric information} can lead to market failure.','정보 비대칭은 시장 실패로 이어질 수 있어요.','asymmetric information','C2','shopping',6,'information asymmetry economics'),
('w_shopping_C2_20','predatory pricing','/ˈprɛdətɔːri ˈpraɪsɪŋ/','noun phrase','약탈적 가격 책정','Setting prices very low to drive competitors out of the market.','{Predatory pricing} by dominant firms is often illegal.','지배적 기업의 약탈적 가격 책정은 종종 불법이에요.','predatory pricing','C2','shopping',6,'predatory pricing competition law'),
('w_shopping_C2_21','transfer pricing','/ˈtrænsfɜːr ˈpraɪsɪŋ/','noun phrase','이전 가격 책정','Setting prices for transactions between related business entities.','{Transfer pricing} is used to shift profits to lower-tax jurisdictions.','이전 가격 책정은 이익을 세금이 낮은 지역으로 이전하는 데 사용돼요.','transfer pricing','C2','shopping',6,'transfer pricing tax corporate'),
('w_shopping_C2_22','demand curve','/dɪˈmɑːnd kɜːrv/','noun phrase','수요 곡선','A graph showing the relationship between price and quantity demanded.','The {demand curve} shifts right when consumer income rises.','소비자 소득이 증가하면 수요 곡선이 오른쪽으로 이동해요.','demand curve','C2','shopping',6,'demand curve economics graph'),
('w_shopping_C2_23','deadweight loss','/ˈdɛdweɪt lɒs/','noun phrase','사중손실','The loss of economic efficiency due to market distortion.','{Deadweight loss} occurs when prices are above the competitive equilibrium.','가격이 경쟁 균형보다 높을 때 사중손실이 발생해요.','deadweight loss','C2','shopping',6,'deadweight loss economics chart'),
('w_shopping_C2_24','liquidity','/lɪˈkwɪdɪti/','noun','유동성','The availability of liquid assets to a market or company.','High {liquidity} allows quick asset conversion to cash.','높은 유동성은 자산을 현금으로 빠르게 전환할 수 있게 해요.','liquidity','C2','shopping',6,'liquidity cash flow finance'),
('w_shopping_C2_25','solvency','/ˈsɒlvənsi/','noun','지급 능력','The ability of a business to meet its long-term financial obligations.','Maintaining {solvency} is critical for long-term business survival.','지급 능력 유지는 장기적 사업 생존에 핵심이에요.','solvency','C2','shopping',6,'solvency finance balance sheet'),
('w_shopping_C2_26','net present value','/nɛt ˈprɛznt ˈvæljuː/','noun phrase','순현재가치','The present value of future cash flows minus the initial investment.','{Net present value} guides investment decisions.','순현재가치는 투자 결정을 안내해요.','net present value','C2','shopping',6,'NPV finance investment'),
('w_shopping_C2_27','capital expenditure','/ˈkæpɪtl ɪkˈspɛndɪtʃər/','noun phrase','자본 지출','Money spent on acquiring or upgrading long-term assets.','{Capital expenditure} in new stores improves customer experience.','신규 매장의 자본 지출이 고객 경험을 개선해요.','capital expenditure','C2','shopping',6,'capital expenditure investment business'),
('w_shopping_C2_28','venture capital','/ˈvɛntʃər ˈkæpɪtl/','noun phrase','벤처 캐피탈','Investment provided to start-ups and small businesses with high growth potential.','{Venture capital} fuelled the rise of e-commerce startups.','벤처 캐피탈이 전자상거래 스타트업의 성장을 촉진했어요.','venture capital','C2','shopping',6,'venture capital startup funding'),
('w_shopping_C2_29','due diligence','/djuː ˈdɪlɪdʒəns/','noun phrase','실사 (사전 조사)','Thorough research before signing a business deal.','Conduct full {due diligence} before acquiring a supplier.','공급업체 인수 전 완전한 실사를 수행하세요.','due diligence','C2','shopping',6,'due diligence audit business'),
('w_shopping_C2_30','intellectual property','/ˌɪntəˈlɛktʃuəl ˈprɒpərti/','noun phrase','지식재산권','Creations of the mind protected by law, such as brands and designs.','{Intellectual property} infringement is rampant in fast fashion.','패스트 패션에서 지식재산권 침해가 만연해요.','intellectual property','C2','shopping',6,'intellectual property trademark patent'),
('w_shopping_C2_31','economies of scale','/ɪˈkɒnəmɪz əv skeɪl/','noun phrase','규모의 경제','Cost advantages gained by increased levels of production.','{Economies of scale} allow supermarkets to offer lower prices.','규모의 경제가 슈퍼마켓이 더 낮은 가격을 제공하게 해줘요.','economies of scale','C2','shopping',6,'economies of scale production cost'),
('w_shopping_C2_32','diseconomies of scale','/dɪsɪˈkɒnəmɪz əv skeɪl/','noun phrase','규모의 비경제','The cost disadvantages that arise with increasing scale of production.','{Diseconomies of scale} arise when organisations grow too large.','조직이 너무 커지면 규모의 비경제가 발생해요.','diseconomies of scale','C2','shopping',6,'diseconomies scale management'),
('w_shopping_C2_33','gig economy','/ɡɪɡ ɪˈkɒnəmi/','noun phrase','긱 경제','An economy characterised by short-term contracts rather than permanent jobs.','Many delivery workers are part of the {gig economy}.','많은 배달 종사자가 긱 경제의 일원이에요.','gig economy','C2','shopping',6,'gig economy freelance delivery'),
('w_shopping_C2_34','trade surplus','/treɪd ˈsɜːrpləs/','noun phrase','무역 흑자','When a country exports more than it imports.','South Korea has maintained a {trade surplus} for decades.','한국은 수십 년간 무역 흑자를 유지해왔어요.','trade surplus','C2','shopping',6,'trade surplus export import'),
('w_shopping_C2_35','trade deficit','/treɪd ˈdɛfɪsɪt/','noun phrase','무역 적자','When a country imports more than it exports.','A growing {trade deficit} can weaken a national currency.','무역 적자가 증가하면 자국 통화가 약해질 수 있어요.','trade deficit','C2','shopping',6,'trade deficit import economy')
ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SENTENCES (PATTERNS)
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES

-- ────────────────────────────────────────────────────────────
-- A1 — 가격 문의 & 계산 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_A1_01','How much is this?','이거 얼마예요?','How much is this','"How much is this?"는 가격을 물을 때 가장 기본적인 표현이에요. 매장 어디서든 바로 쓸 수 있어요.','가격 문의','A1','shopping','pattern',NULL,1),
('s_shopping_A1_02','How much does this cost?','이게 얼마예요?','How much does this cost','"How much does this cost?"는 "How much is this?"보다 조금 더 격식 있는 표현이에요.','가격 문의','A1','shopping','pattern',NULL,2),
('s_shopping_A1_03','I''ll take this one, please.','이걸로 할게요.','I''ll take this one','"I''ll take this one."은 구매 결정을 표현하는 가장 자연스럽고 예의 바른 방법이에요.','구매 결정','A1','shopping','pattern',NULL,3),
('s_shopping_A1_04','Can I pay by card?','카드로 지불해도 될까요?','Can I pay by card','"Can I pay by card?"는 신용카드·체크카드 모두에 쓸 수 있는 표현이에요.','계산','A1','shopping','pattern',NULL,4),
('s_shopping_A1_05','Do you have this in a bigger size?','이거 더 큰 사이즈 있나요?','bigger size','사이즈를 물을 때 "bigger/smaller/different size"를 함께 기억하면 유용해요.','사이즈 문의','A1','shopping','pattern',NULL,5),
('s_shopping_A1_06','Can I have a bag, please?','봉투 주실 수 있어요?','Can I have a bag','영국식 영어에서는 "carrier bag", 미국식에서는 "shopping bag"이라고도 해요.','쇼핑백 요청','A1','shopping','pattern',NULL,6),
('s_shopping_A1_07','Where is the checkout?','계산대가 어디예요?','Where is the checkout','"checkout"은 대형마트의 계산대, "cash register"는 소규모 매장에서도 쓰여요.','위치 문의','A1','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- A2 — 사이즈·색상 / 환불 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_A2_01','Do you have this in blue?','이거 파란색으로도 있나요?','in blue','색상을 물을 때는 "in + 색깔" 구조를 쓰면 자연스러워요. 예: "in red", "in black".','색상 문의','A2','shopping','pattern',NULL,1),
('s_shopping_A2_02','Can I try this on?','이거 입어봐도 될까요?','Can I try this on','"try on"은 옷·신발을 직접 착용해보는 행위예요. "try out"은 기계·서비스를 시험해볼 때 써요.','착용 요청','A2','shopping','pattern',NULL,2),
('s_shopping_A2_03','Where is the fitting room?','탈의실이 어디예요?','fitting room','"fitting room", "changing room", "dressing room" 모두 같은 의미예요. 나라마다 선호하는 표현이 달라요.','위치 문의','A2','shopping','pattern',NULL,3),
('s_shopping_A2_04','I''d like to return this, please.','이 제품을 반품하고 싶어요.','I''d like to return','"I''d like to ..."는 "I want to ..."보다 더 공손한 표현이에요. 반품·교환 시 꼭 사용하세요.','반품 요청','A2','shopping','pattern',NULL,4),
('s_shopping_A2_05','Can I get a refund?','환불받을 수 있나요?','Can I get a refund','"refund"는 돈을 돌려받는 것, "exchange"는 다른 상품으로 교환하는 것이에요.','환불 요청','A2','shopping','pattern',NULL,5),
('s_shopping_A2_06','Is there a discount for members?','회원 할인이 있나요?','discount for members','포인트 카드나 앱 회원증을 제시하면서 쓰기 좋은 표현이에요.','할인 문의','A2','shopping','pattern',NULL,6),
('s_shopping_A2_07','Do you accept credit cards?','신용카드도 받나요?','Do you accept credit cards','"Do you accept ...?"는 지불 방법을 확인하는 표현이에요. "cash", "contactless" 등으로 바꿔 쓸 수 있어요.','결제 수단 문의','A2','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- B1 — 흥정 & 할인 요청 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_B1_01','Is there any room to negotiate the price?','가격을 좀 조정해 주실 수 있어요?','room to negotiate','"room to negotiate"는 협상 여지가 있는지 부드럽게 묻는 표현이에요. 직접적으로 "Can you lower the price?"보다 자연스러워요.','흥정','B1','shopping','pattern',NULL,1),
('s_shopping_B1_02','Would you be able to give me a discount if I bought two?','두 개 사면 할인해 주실 수 있어요?','give me a discount','수량 할인을 요청할 때 쓰는 표현이에요. "if I bought ..."로 조건부 요청이 가능해요.','수량 할인 요청','B1','shopping','pattern',NULL,2),
('s_shopping_B1_03','I found it cheaper at another store. Can you match the price?','다른 매장에서 더 싸게 봤어요. 가격을 맞춰 주실 수 있어요?','match the price','가격 매칭(price matching)을 요청하는 표현이에요. 대형 소매점에서 특히 효과적이에요.','가격 매칭','B1','shopping','pattern',NULL,3),
('s_shopping_B1_04','I''m a regular customer. Is there any special deal for me?','저 단골 고객이에요. 특별히 해주실 수 있는 게 있나요?','regular customer / special deal','단골임을 강조해 추가 혜택을 요청하는 방법이에요.','특별 혜택 요청','B1','shopping','pattern',NULL,4),
('s_shopping_B1_05','Can I use this coupon with the sale price?','세일가에 이 쿠폰도 같이 쓸 수 있나요?','use this coupon with the sale price','쿠폰과 세일을 중복 적용할 수 있는지 확인하는 표현이에요.','쿠폰 적용 문의','B1','shopping','pattern',NULL,5),
('s_shopping_B1_06','I''d like to pay in installments. Is that possible?','할부로 낼 수 있을까요?','pay in installments','분할 납부를 요청하는 표현이에요. "monthly installments"라고 하면 월별 할부를 뜻해요.','할부 결제 요청','B1','shopping','pattern',NULL,6),
('s_shopping_B1_07','What''s the best price you can do?','제일 낮은 가격이 얼마예요?','the best price you can do','협상할 때 상대방이 제시할 수 있는 최선의 가격을 묻는 표현이에요.','최저가 문의','B1','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- B2 — 불만 표현 & 비교 쇼핑 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_B2_01','I''m not satisfied with the quality of this product. I''d like to speak to a manager.','이 제품의 품질이 만족스럽지 않아요. 매니저와 이야기하고 싶어요.','not satisfied / speak to a manager','불만을 표현하면서도 공손하게 상위 담당자를 요청하는 표현이에요.','불만 제기','B2','shopping','pattern',NULL,1),
('s_shopping_B2_02','This item arrived damaged. What''s your policy on returns?','상품이 파손된 상태로 도착했어요. 반품 정책이 어떻게 되나요?','arrived damaged / returns policy','온라인 구매 후 파손 배송을 신고할 때 쓰는 표현이에요.','파손 상품 신고','B2','shopping','pattern',NULL,2),
('s_shopping_B2_03','I''ve been comparing prices online and found this significantly cheaper elsewhere.','온라인으로 가격을 비교해 봤는데 다른 곳이 훨씬 저렴하더라고요.','comparing prices / significantly cheaper','비교 쇼핑 결과를 근거로 협상하는 고급 표현이에요.','비교 쇼핑 협상','B2','shopping','pattern',NULL,3),
('s_shopping_B2_04','I believe I was overcharged. Could you check the receipt?','제가 바가지를 쓴 것 같아요. 영수증을 확인해 주실 수 있어요?','overcharged / check the receipt','청구 오류를 공손하게 지적하는 표현이에요. "I believe"를 붙이면 단정하지 않아 더 자연스러워요.','청구 오류 지적','B2','shopping','pattern',NULL,4),
('s_shopping_B2_05','I''m torn between these two options. Which one would you recommend?','두 가지 중 어떤 걸 선택해야 할지 모르겠어요. 어떤 걸 추천하세요?','torn between / recommend','"torn between"은 두 가지 사이에서 결정을 못 하는 상황을 표현해요.','구매 추천 요청','B2','shopping','pattern',NULL,5),
('s_shopping_B2_06','Is there an extended warranty available for this product?','이 제품에 연장 보증 서비스가 있나요?','extended warranty','기본 보증 이후 추가 보장을 요청하는 표현이에요. 전자제품 구매 시 유용해요.','연장 보증 문의','B2','shopping','pattern',NULL,6),
('s_shopping_B2_07','I''d like to dispute this charge on my credit card statement.','신용카드 명세서의 이 청구 내역에 이의를 제기하고 싶어요.','dispute this charge','카드 청구 오류나 미승인 결제에 대해 이의를 제기하는 격식 표현이에요.','청구 이의 제기','B2','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- C1 — 협상 & 비즈니스 구매 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_C1_01','We''re looking to establish a long-term procurement relationship and would like to discuss volume pricing.','장기 조달 관계를 구축하고자 하며, 대량 구매 가격에 대해 논의하고 싶습니다.','long-term procurement / volume pricing','B2B 협상에서 장기 거래를 조건으로 단가 인하를 요청하는 고급 비즈니스 표현이에요.','B2B 협상','C1','shopping','pattern',NULL,1),
('s_shopping_C1_02','We need to carry out due diligence on your supply chain before finalising the contract.','계약을 확정하기 전에 귀사의 공급망에 대한 실사를 진행해야 합니다.','due diligence / supply chain','계약 전 공급업체를 검토하는 비즈니스 절차를 표현하는 고급 문장이에요.','계약 전 실사','C1','shopping','pattern',NULL,2),
('s_shopping_C1_03','Could you provide a detailed invoice, including a breakdown of costs?','비용 내역을 포함한 상세 인보이스를 제공해 주실 수 있나요?','detailed invoice / breakdown of costs','비용 구조를 투명하게 요청할 때 쓰는 격식 비즈니스 표현이에요.','인보이스 요청','C1','shopping','pattern',NULL,3),
('s_shopping_C1_04','We''d like to explore whether there''s scope for a bespoke arrangement.','맞춤형 계약 여지가 있는지 검토하고 싶습니다.','bespoke arrangement','"bespoke"는 주로 영국 영어에서 사용하며 "맞춤 제작의"라는 뜻이에요. B2B 협상에서 특별 조건을 협의할 때 씁니다.','맞춤 계약 제안','C1','shopping','pattern',NULL,4),
('s_shopping_C1_05','Our brand''s provenance and artisan heritage justify the premium pricing.','우리 브랜드의 출처와 장인 정신의 역사가 프리미엄 가격을 정당화합니다.','provenance / artisan heritage / premium pricing','프리미엄 가격을 설득력 있게 정당화하는 세일즈 표현이에요.','프리미엄 가격 정당화','C1','shopping','pattern',NULL,5),
('s_shopping_C1_06','We''re concerned about potential grey market activity undermining our exclusive distribution rights.','회색 시장 활동이 저희의 독점 유통권을 약화시킬 것을 우려하고 있어요.','grey market / exclusive distribution rights','독점 유통권 보호를 위한 법적·비즈니스적 표현이에요.','유통 권한 논의','C1','shopping','pattern',NULL,6),
('s_shopping_C1_07','We propose a consignment model to reduce your inventory risk while ensuring product availability.','귀사의 재고 위험을 줄이면서 상품 가용성을 확보하기 위해 위탁 판매 모델을 제안합니다.','consignment model / inventory risk','위탁 판매 계약을 제안하는 비즈니스 협상 표현이에요.','위탁 판매 제안','C1','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- C2 — 협상 & 비즈니스 구매 (고급) (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_C2_01','The proposed markup structure fails to account for the asymmetric information between the manufacturer and the end retailer.','제안된 마진 구조는 제조업체와 최종 소매업체 간의 정보 비대칭을 반영하지 못하고 있습니다.','markup structure / asymmetric information','정보 비대칭 이론을 실제 협상에 적용하는 고급 비즈니스 표현이에요.','가격 구조 비판','C2','shopping','pattern',NULL,1),
('s_shopping_C2_02','The cartel-like behaviour among suppliers constitutes a restraint of trade and may attract regulatory scrutiny.','공급업체들의 카르텔과 같은 행동은 거래 제한에 해당하며 규제 당국의 조사를 받을 수 있습니다.','cartel-like behaviour / restraint of trade','공정거래법 위반 가능성을 지적하는 법적·경제적 표현이에요.','공정거래 위반 지적','C2','shopping','pattern',NULL,2),
('s_shopping_C2_03','Commodification of artisan products risks eroding the very brand equity that justifies their premium positioning.','장인 상품의 상품화는 프리미엄 포지셔닝을 정당화하는 브랜드 가치 자체를 훼손할 위험이 있어요.','commodification / brand equity / premium positioning','상품화의 역설적 위험을 설명하는 마케팅 전략 표현이에요.','브랜드 가치 보호 논의','C2','shopping','pattern',NULL,3),
('s_shopping_C2_04','We must factor in both the net present value of the contract and potential depreciation of key assets over the agreement''s lifetime.','계약의 순현재가치와 계약 기간 동안의 핵심 자산 감가상각 가능성 모두를 고려해야 합니다.','net present value / depreciation','재무적 관점에서 계약을 평가하는 고급 비즈니스 표현이에요.','재무 평가 표현','C2','shopping','pattern',NULL,4),
('s_shopping_C2_05','The franchisee''s obligations under the agreement must be clearly delineated to prevent any regulatory arbitrage.','가맹점주의 계약상 의무는 규제 차익거래를 방지하기 위해 명확하게 명시돼야 합니다.','franchisee obligations / regulatory arbitrage','프랜차이즈 계약의 법적 엄밀성을 강조하는 표현이에요.','프랜차이즈 계약 논의','C2','shopping','pattern',NULL,5),
('s_shopping_C2_06','Planned obsolescence strategies, while boosting short-term sales, create negative externalities that increasingly expose brands to reputational and regulatory risk.','계획적 노후화 전략은 단기 매출을 높이는 반면, 브랜드를 평판 및 규제 리스크에 점점 더 노출시키는 부정적 외부 효과를 창출합니다.','planned obsolescence / negative externalities / reputational risk','기업 전략의 장단기 트레이드오프를 분석하는 고급 경영 표현이에요.','기업 전략 비판','C2','shopping','pattern',NULL,6),
('s_shopping_C2_07','As a monopsony buyer, we have significant leverage, but exercising it aggressively risks triggering predatory pricing accusations and antitrust investigations.','수요 독점 구매자로서 우리는 상당한 협상력을 갖지만, 이를 공격적으로 행사하면 약탈적 가격 책정 혐의와 독점금지 조사를 유발할 위험이 있습니다.','monopsony / predatory pricing / antitrust','독점적 구매력의 법적 리스크를 논의하는 최고급 법경제학 표현이에요.','독점금지 리스크 논의','C2','shopping','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;


-- ============================================
-- TOPIC: education
-- ============================================
-- EngCat — Education (교육) 단어 + 패턴
-- 210 words (35 per CEFR level A1~C2) + 42 patterns (7 per level)
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (35)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_education_A1_01','school','/skuːl/','noun','학교','A place where children go to learn.','I go to {school} every day.','저는 매일 학교에 가요.','school','A1','education',1,'school building students classroom'),
('w_education_A1_02','teacher','/ˈtiːtʃər/','noun','선생님','A person who teaches, especially in a school.','My {teacher} explains things clearly.','우리 선생님은 설명을 잘 해주세요.','teacher','A1','education',1,'teacher classroom whiteboard students'),
('w_education_A1_03','student','/ˈstjuːdənt/','noun','학생','A person who is studying at a school or college.','She is a hard-working {student}.','그녀는 열심히 공부하는 학생이에요.','student','A1','education',1,'student studying desk books'),
('w_education_A1_04','learn','/lɜːrn/','verb','배우다','To gain knowledge or skill by studying or being taught.','I want to {learn} English every day.','저는 매일 영어를 배우고 싶어요.','learn','A1','education',1,'person learning studying book'),
('w_education_A1_05','book','/bʊk/','noun','책','A set of written or printed pages, usually bound with covers.','I read a {book} before bed.','저는 자기 전에 책을 읽어요.','book','A1','education',1,'open book reading library'),
('w_education_A1_06','class','/klɑːs/','noun','수업','A group of students taught together; a lesson.','English {class} starts at nine.','영어 수업은 9시에 시작해요.','class','A1','education',1,'classroom students lesson teacher'),
('w_education_A1_07','study','/ˈstʌdi/','verb','공부하다','To spend time learning about a subject.','I {study} for two hours every evening.','저는 매일 저녁 두 시간씩 공부해요.','study','A1','education',1,'studying desk lamp notebook'),
('w_education_A1_08','test','/test/','noun','시험','An assessment to measure knowledge or ability.','We have a {test} on Friday.','금요일에 시험이 있어요.','test','A1','education',1,'exam paper pencil test'),
('w_education_A1_09','write','/raɪt/','verb','쓰다','To mark letters or words on paper or a surface.','Please {write} your name here.','여기에 이름을 써 주세요.','write','A1','education',1,'writing pen paper notebook'),
('w_education_A1_10','read','/riːd/','verb','읽다','To look at and understand written words.','Can you {read} this sentence?','이 문장을 읽을 수 있어요?','read','A1','education',1,'reading book open pages'),
('w_education_A1_11','pencil','/ˈpensəl/','noun','연필','A thin stick used for writing or drawing.','I need a {pencil} to write.','쓰려면 연필이 필요해요.','pencil','A1','education',2,'pencil desk writing stationery'),
('w_education_A1_12','pen','/pen/','noun','펜','A device used for writing with ink.','Can I borrow your {pen}?','펜 빌려도 될까요?','pen','A1','education',2,'pen writing ink stationery'),
('w_education_A1_13','question','/ˈkwestʃən/','noun','질문','A sentence asking for information.','Do you have a {question}?','질문이 있으세요?','question','A1','education',1,'person raising hand question classroom'),
('w_education_A1_14','answer','/ˈɑːnsər/','noun','답','A response to a question.','What is the {answer} to this?','이것의 답이 뭐예요?','answer','A1','education',1,'answer sheet test solution'),
('w_education_A1_15','number','/ˈnʌmbər/','noun','숫자','A value used for counting or measuring.','Write the {number} next to each word.','각 단어 옆에 숫자를 쓰세요.','number','A1','education',2,'numbers math counting board'),
('w_education_A1_16','letter','/ˈletər/','noun','글자, 편지','A character representing a sound; also a written message.','The first {letter} of the alphabet is A.','알파벳의 첫 번째 글자는 A예요.','letter','A1','education',2,'alphabet letters writing board'),
('w_education_A1_17','word','/wɜːrd/','noun','단어','A single unit of language with meaning.','What does this {word} mean?','이 단어는 무슨 뜻이에요?','word','A1','education',1,'word dictionary vocabulary language'),
('w_education_A1_18','sentence','/ˈsentəns/','noun','문장','A set of words expressing a complete thought.','Please read the {sentence} aloud.','문장을 소리 내어 읽어 주세요.','sentence','A1','education',1,'sentence writing grammar text'),
('w_education_A1_19','listen','/ˈlɪsən/','verb','듣다','To pay attention to sounds.','Please {listen} carefully.','주의해서 들어주세요.','listen','A1','education',1,'listening headphones audio learning'),
('w_education_A1_20','speak','/spiːk/','verb','말하다','To say words; to communicate verbally.','Don''t be afraid to {speak} English.','영어로 말하는 것을 두려워하지 마세요.','speak','A1','education',1,'speaking conversation talking people'),
('w_education_A1_21','understand','/ˌʌndərˈstænd/','verb','이해하다','To know the meaning of something.','Do you {understand} the rule?','규칙을 이해하셨어요?','understand','A1','education',1,'person thinking understanding light bulb'),
('w_education_A1_22','homework','/ˈhoʊmwɜːrk/','noun','숙제','School work done at home.','I do my {homework} after dinner.','저는 저녁 식사 후에 숙제를 해요.','homework','A1','education',1,'homework books desk studying home'),
('w_education_A1_23','classroom','/ˈklɑːsruːm/','noun','교실','A room used for lessons.','The {classroom} has thirty desks.','교실에 책상이 30개 있어요.','classroom','A1','education',2,'classroom desks chairs teacher board'),
('w_education_A1_24','lesson','/ˈlesən/','noun','수업, 레슨','A period of learning or teaching.','Today''s {lesson} is about animals.','오늘 수업은 동물에 관한 거예요.','lesson','A1','education',1,'lesson classroom teaching board'),
('w_education_A1_25','paper','/ˈpeɪpər/','noun','종이','A thin flat material used for writing.','Write your name on the {paper}.','종이에 이름을 쓰세요.','paper','A1','education',2,'paper writing desk student'),
('w_education_A1_26','correct','/kəˈrekt/','adjective','맞는, 옳은','Free from mistakes; right.','That is the {correct} answer.','그것이 맞는 답이에요.','correct','A1','education',1,'correct answer checkmark right'),
('w_education_A1_27','wrong','/rɒŋ/','adjective','틀린','Not correct; mistaken.','Sorry, that''s {wrong} — try again.','죄송하지만 틀렸어요. 다시 해보세요.','wrong','A1','education',1,'wrong answer incorrect mistake'),
('w_education_A1_28','spell','/spel/','verb','철자를 쓰다','To write the letters of a word in the correct order.','How do you {spell} your name?','이름 철자가 어떻게 되세요?','spell','A1','education',2,'spelling letters alphabet words'),
('w_education_A1_29','repeat','/rɪˈpiːt/','verb','반복하다','To say or do something again.','Please {repeat} after me.','저를 따라 다시 말해 주세요.','repeat','A1','education',2,'repeat practice drilling language'),
('w_education_A1_30','open','/ˈoʊpən/','verb','열다, 펼치다','To move so as to allow access; to turn to a page.','Please {open} your books to page ten.','책 10페이지를 펼쳐 주세요.','open','A1','education',2,'open book page textbook'),
('w_education_A1_31','close','/kloʊz/','verb','닫다','To move so as to cover an opening.','Please {close} your notebooks.','노트를 닫아 주세요.','close','A1','education',2,'close book notebook desk'),
('w_education_A1_32','name','/neɪm/','noun','이름','A word used to identify a person or thing.','What is your {name}?','이름이 어떻게 되세요?','name','A1','education',2,'name tag label identity'),
('w_education_A1_33','grade','/ɡreɪd/','noun','학년, 성적','A class level in school; a mark showing quality of work.','I am in the third {grade}.','저는 3학년이에요.','grade','A1','education',1,'grade school level report card'),
('w_education_A1_34','easy','/ˈiːzi/','adjective','쉬운','Not difficult; achieved without much effort.','This exercise is very {easy}.','이 연습 문제는 매우 쉬워요.','easy','A1','education',2,'easy simple exercise learning'),
('w_education_A1_35','difficult','/ˈdɪfɪkəlt/','adjective','어려운','Needing much effort or skill.','The grammar rule is {difficult}.','그 문법 규칙은 어려워요.','difficult','A1','education',2,'difficult challenge hard studying')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — A2 (35)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_education_A2_01','homework','/ˈhoʊmwɜːrk/','noun','숙제','Schoolwork assigned to be done at home.','Did you finish your {homework} last night?','어제 숙제 다 했어요?','homework','A2','education',1,'homework books desk studying'),
('w_education_A2_02','exam','/ɪɡˈzæm/','noun','시험','A formal test of knowledge or ability.','The final {exam} is next week.','기말 시험이 다음 주예요.','exam','A2','education',1,'exam test paper student writing'),
('w_education_A2_03','grade','/ɡreɪd/','noun','성적, 점수','A mark indicating quality of schoolwork.','She got a good {grade} on the test.','그녀는 시험에서 좋은 성적을 받았어요.','grade','A2','education',1,'grade score report card marks'),
('w_education_A2_04','subject','/ˈsʌbdʒɪkt/','noun','과목','A branch of knowledge studied in school.','My favorite {subject} is English.','제가 가장 좋아하는 과목은 영어예요.','subject','A2','education',1,'school subjects textbooks curriculum'),
('w_education_A2_05','university','/ˌjuːnɪˈvɜːrsɪti/','noun','대학교','An institution of higher education and research.','She wants to go to {university} next year.','그녀는 내년에 대학교에 가고 싶어해요.','university','A2','education',1,'university campus building students'),
('w_education_A2_06','library','/ˈlaɪbreri/','noun','도서관','A place where books and other materials are available to borrow.','I study at the {library} every weekend.','저는 매주 주말 도서관에서 공부해요.','library','A2','education',1,'library books shelves studying'),
('w_education_A2_07','lecture','/ˈlektʃər/','noun','강의','A talk given to a group, especially at a university.','The {lecture} starts at ten o''clock.','강의는 10시에 시작해요.','lecture','A2','education',1,'lecture hall professor students university'),
('w_education_A2_08','notes','/noʊts/','noun','필기, 노트','Written records of what was said or learned.','I always take {notes} in class.','저는 항상 수업에서 필기를 해요.','notes','A2','education',1,'notes notebook writing class'),
('w_education_A2_09','pass','/pɑːs/','verb','합격하다, 통과하다','To succeed in an exam or test.','I hope to {pass} the exam.','시험에 합격하면 좋겠어요.','pass','A2','education',1,'pass exam success celebration'),
('w_education_A2_10','fail','/feɪl/','verb','불합격하다, 실패하다','To not succeed in an exam or test.','She didn''t want to {fail} the test.','그녀는 시험에서 떨어지고 싶지 않았어요.','fail','A2','education',1,'fail exam disappointed student'),
('w_education_A2_11','practice','/ˈpræktɪs/','verb','연습하다','To repeat an activity in order to improve.','You need to {practice} speaking every day.','매일 말하기 연습을 해야 해요.','practice','A2','education',1,'practice sports skill learning repetition'),
('w_education_A2_12','review','/rɪˈvjuː/','verb','복습하다','To look at something again to check or improve it.','Let''s {review} what we learned last week.','지난주에 배운 것을 복습해 볼게요.','review','A2','education',1,'review notes studying textbook'),
('w_education_A2_13','dictionary','/ˈdɪkʃəneri/','noun','사전','A book or program listing words with their meanings.','I use a {dictionary} to look up new words.','저는 새 단어를 찾을 때 사전을 사용해요.','dictionary','A2','education',2,'dictionary book reference vocabulary'),
('w_education_A2_14','vocabulary','/voʊˈkæbjʊleri/','noun','어휘','The body of words used in a language or subject.','Building {vocabulary} takes time.','어휘를 쌓는 데는 시간이 걸려요.','vocabulary','A2','education',1,'vocabulary words language learning'),
('w_education_A2_15','grammar','/ˈɡræmər/','noun','문법','The rules governing the use of a language.','English {grammar} can be tricky.','영어 문법은 까다로울 수 있어요.','grammar','A2','education',1,'grammar rules language textbook'),
('w_education_A2_16','score','/skɔːr/','noun','점수','The number of points or marks received.','What {score} did you get on the test?','시험에서 몇 점 받았어요?','score','A2','education',1,'score test results marks paper'),
('w_education_A2_17','report card','/ˈrɪpɔːrt kɑːrd/','noun','성적표','A document showing a student''s grades.','My parents checked my {report card}.','부모님이 제 성적표를 확인하셨어요.','report card','A2','education',2,'report card grades school marks'),
('w_education_A2_18','semester','/sɪˈmestər/','noun','학기','Half of the academic year.','The spring {semester} begins in March.','봄 학기는 3월에 시작해요.','semester','A2','education',1,'semester school year calendar academic'),
('w_education_A2_19','club','/klʌb/','noun','동아리, 클럽','A group that meets regularly for a shared interest.','I joined the English speaking {club}.','저는 영어 회화 동아리에 가입했어요.','club','A2','education',2,'club activity group students school'),
('w_education_A2_20','project','/ˈprɒdʒekt/','noun','과제, 프로젝트','A planned piece of work, often done over time.','We are doing a group {project} this week.','이번 주에 모둠 과제를 하고 있어요.','project','A2','education',1,'project group work students desk'),
('w_education_A2_21','quiz','/kwɪz/','noun','쪽지 시험','A short test to check knowledge.','There is a {quiz} at the end of class.','수업 끝에 쪽지 시험이 있어요.','quiz','A2','education',2,'quiz test paper classroom student'),
('w_education_A2_22','absent','/ˈæbsənt/','adjective','결석한','Not present at school or class.','He was {absent} from class yesterday.','그는 어제 수업에 결석했어요.','absent','A2','education',2,'absent empty seat classroom'),
('w_education_A2_23','present','/ˈprezənt/','adjective','출석한','At school or class; here.','All students are {present} today.','오늘 모든 학생이 출석했어요.','present','A2','education',2,'present attendance classroom students'),
('w_education_A2_24','explain','/ɪkˈspleɪn/','verb','설명하다','To make something clear or understandable.','Can you {explain} the rule again?','규칙을 다시 설명해 주실 수 있어요?','explain','A2','education',1,'explain teacher whiteboard students'),
('w_education_A2_25','example','/ɪɡˈzɑːmpəl/','noun','예, 예시','Something that illustrates a rule or point.','Give me an {example} of that word.','그 단어의 예를 들어 주세요.','example','A2','education',1,'example illustration board teaching'),
('w_education_A2_26','textbook','/ˈtekstbʊk/','noun','교과서','A book used in school for a particular subject.','Open your {textbook} to chapter three.','교과서 3장을 펼쳐 주세요.','textbook','A2','education',1,'textbook open book student desk'),
('w_education_A2_27','worksheet','/ˈwɜːrkʃiːt/','noun','학습지','A printed sheet with exercises for students.','Fill in the {worksheet} before class.','수업 전에 학습지를 작성해 주세요.','worksheet','A2','education',2,'worksheet paper exercises student'),
('w_education_A2_28','tutor','/ˈtjuːtər/','noun','개인 교사, 튜터','A private teacher who teaches one student or a small group.','My {tutor} helps me with math.','튜터가 수학을 도와줘요.','tutor','A2','education',2,'tutor teaching student one on one'),
('w_education_A2_29','certificate','/sərˈtɪfɪkɪt/','noun','자격증, 수료증','An official document proving an achievement.','I got a {certificate} for completing the course.','과정을 이수하고 수료증을 받았어요.','certificate','A2','education',2,'certificate document achievement award'),
('w_education_A2_30','enroll','/ɪnˈroʊl/','verb','등록하다','To register for a course or school.','I want to {enroll} in an English class.','영어 수업에 등록하고 싶어요.','enroll','A2','education',2,'enroll registration school form'),
('w_education_A2_31','attend','/əˈtend/','verb','참석하다, 다니다','To go to or be present at a place regularly.','She {attends} school every day.','그녀는 매일 학교에 다녀요.','attend','A2','education',1,'attend school class students'),
('w_education_A2_32','break','/breɪk/','noun','휴식 시간','A short period of rest during school.','We have a {break} at eleven.','11시에 쉬는 시간이 있어요.','break','A2','education',2,'break recess students playground'),
('w_education_A2_33','schedule','/ˈskedʒuːl/','noun','시간표, 일정','A timetable of classes or events.','Check your {schedule} for tomorrow.','내일 시간표를 확인해 주세요.','schedule','A2','education',2,'schedule timetable planner school'),
('w_education_A2_34','classmate','/ˈklɑːsmeɪt/','noun','반 친구','A member of the same class at school.','My {classmate} helped me with the homework.','반 친구가 숙제를 도와줬어요.','classmate','A2','education',2,'classmates students friends school'),
('w_education_A2_35','knowledge','/ˈnɒlɪdʒ/','noun','지식','Facts and information gained through learning.','Reading builds your {knowledge}.','독서는 지식을 쌓아줘요.','knowledge','A2','education',1,'knowledge books learning brain')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B1 (35)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_education_B1_01','curriculum','/kəˈrɪkjʊləm/','noun','교육 과정','The subjects and content making up a course of study.','The new {curriculum} focuses on critical thinking.','새 교육 과정은 비판적 사고에 초점을 맞춰요.','curriculum','B1','education',1,'curriculum education plan subjects'),
('w_education_B1_02','semester','/sɪˈmestər/','noun','학기','A half-year term in an academic year.','We have exams at the end of every {semester}.','매 학기 말에 시험이 있어요.','semester','B1','education',1,'semester academic year university'),
('w_education_B1_03','scholarship','/ˈskɒlərʃɪp/','noun','장학금','Financial aid given to students based on merit or need.','She received a full {scholarship} to study abroad.','그녀는 해외 유학을 위한 전액 장학금을 받았어요.','scholarship','B1','education',1,'scholarship award money student education'),
('w_education_B1_04','degree','/dɪˈɡriː/','noun','학위','An academic award given by a university.','He earned his {degree} in computer science.','그는 컴퓨터 공학 학위를 받았어요.','degree','B1','education',1,'degree diploma graduation university'),
('w_education_B1_05','research','/rɪˈsɜːrtʃ/','noun','연구','Systematic investigation to discover new knowledge.','She is doing {research} on climate change.','그녀는 기후 변화에 관한 연구를 하고 있어요.','research','B1','education',1,'research laboratory studying data'),
('w_education_B1_06','thesis','/ˈθiːsɪs/','noun','논문(학사/석사)','A long written piece of research for a degree.','He is writing his {thesis} on urban development.','그는 도시 개발에 관한 논문을 쓰고 있어요.','thesis','B1','education',1,'thesis paper writing university research'),
('w_education_B1_07','assignment','/əˈsaɪnmənt/','noun','과제','A task given to students to complete.','The {assignment} is due next Monday.','과제 제출 기한은 다음 주 월요일이에요.','assignment','B1','education',1,'assignment task homework deadline'),
('w_education_B1_08','professor','/prəˈfesər/','noun','교수','A senior university teacher and researcher.','The {professor} gave an inspiring lecture.','교수님이 감동적인 강의를 해주셨어요.','professor','B1','education',1,'professor university lecture teaching'),
('w_education_B1_09','tuition','/tjuːˈɪʃən/','noun','수업료, 등록금','Fees charged for teaching at a school or university.','{Tuition} at private schools can be expensive.','사립학교의 수업료는 비쌀 수 있어요.','tuition','B1','education',1,'tuition fees university money education'),
('w_education_B1_10','campus','/ˈkæmpəs/','noun','캠퍼스','The grounds and buildings of a university.','I walked across {campus} to get to the library.','도서관에 가기 위해 캠퍼스를 가로질러 걸었어요.','campus','B1','education',1,'campus university buildings grounds'),
('w_education_B1_11','graduation','/ˌɡrædʒuˈeɪʃən/','noun','졸업','The ceremony at which degrees are awarded.','Her {graduation} ceremony is in June.','그녀의 졸업식은 6월이에요.','graduation','B1','education',1,'graduation ceremony diploma cap gown'),
('w_education_B1_12','major','/ˈmeɪdʒər/','noun','전공','The main subject studied at university.','His {major} is economics.','그의 전공은 경제학이에요.','major','B1','education',1,'major university subject study'),
('w_education_B1_13','minor','/ˈmaɪnər/','noun','부전공','A secondary subject studied alongside the major.','She chose linguistics as her {minor}.','그녀는 언어학을 부전공으로 선택했어요.','minor','B1','education',2,'minor secondary subject university'),
('w_education_B1_14','deadline','/ˈdedlaɪn/','noun','마감 기한','The last date by which an assignment must be submitted.','The {deadline} for the paper is Thursday.','논문 마감 기한은 목요일이에요.','deadline','B1','education',1,'deadline calendar due date assignment'),
('w_education_B1_15','presentation','/ˌprezənˈteɪʃən/','noun','발표','A talk or demonstration to an audience.','I have to give a {presentation} next week.','다음 주에 발표를 해야 해요.','presentation','B1','education',1,'presentation public speaking audience'),
('w_education_B1_16','essay','/ˈeseɪ/','noun','에세이, 작문','A piece of writing on a particular topic.','The {essay} should be at least five hundred words.','에세이는 최소 500단어 이상이어야 해요.','essay','B1','education',1,'essay writing paper academic'),
('w_education_B1_17','outline','/ˈaʊtlaɪn/','noun','개요','A plan or summary of the main points.','Write an {outline} before you start the essay.','에세이를 시작하기 전에 개요를 작성하세요.','outline','B1','education',2,'outline plan structure writing'),
('w_education_B1_18','debate','/dɪˈbeɪt/','noun','토론, 논쟁','A formal discussion on a topic with opposing arguments.','We had a class {debate} about technology.','기술에 대한 수업 토론을 했어요.','debate','B1','education',1,'debate discussion argument classroom'),
('w_education_B1_19','seminar','/ˈsemɪnɑːr/','noun','세미나','A small group session for discussion and study.','The professor runs a weekly {seminar}.','교수님이 매주 세미나를 진행해요.','seminar','B1','education',2,'seminar group discussion university'),
('w_education_B1_20','internship','/ˈɪntɜːrnʃɪp/','noun','인턴십','A temporary work experience placement for students.','She completed an {internship} at a media company.','그녀는 미디어 회사에서 인턴십을 마쳤어요.','internship','B1','education',2,'internship work experience office student'),
('w_education_B1_21','elective','/ɪˈlektɪv/','noun','선택 과목','A course students can choose to take.','I picked photography as my {elective}.','저는 선택 과목으로 사진을 골랐어요.','elective','B1','education',2,'elective course choice subject'),
('w_education_B1_22','mandatory','/ˈmændətɔːri/','adjective','필수적인','Required; compulsory.','Attendance is {mandatory} for this course.','이 수업은 출석이 필수예요.','mandatory','B1','education',1,'mandatory required rules attendance'),
('w_education_B1_23','extracurricular','/ˌekstrəkəˈrɪkjʊlər/','adjective','과외 활동의','Outside of the regular curriculum.','{extracurricular} activities improve teamwork.','과외 활동은 팀워크를 향상시켜요.','extracurricular','B1','education',2,'extracurricular sports clubs school activities'),
('w_education_B1_24','academic','/ˌækəˈdemɪk/','adjective','학문적인','Relating to education and scholarly activities.','Her {academic} record is excellent.','그녀의 학업 성적은 우수해요.','academic','B1','education',1,'academic university study records'),
('w_education_B1_25','feedback','/ˈfiːdbæk/','noun','피드백','Information given to help improve performance.','The teacher gave useful {feedback} on my essay.','선생님이 에세이에 유용한 피드백을 주셨어요.','feedback','B1','education',1,'feedback review comments paper'),
('w_education_B1_26','assessment','/əˈsesmənt/','noun','평가','The process of evaluating performance or knowledge.','The {assessment} includes both written and oral parts.','평가는 필기와 구술 두 부분을 포함해요.','assessment','B1','education',1,'assessment evaluation test grade'),
('w_education_B1_27','credit','/ˈkredɪt/','noun','학점','A unit used to measure the completion of a course.','This course is worth three {credits}.','이 수업은 3학점이에요.','credit','B1','education',1,'credit academic hours university'),
('w_education_B1_28','apply','/əˈplaɪ/','verb','지원하다, 신청하다','To formally request something such as a place at university.','She plans to {apply} to ten universities.','그녀는 열 개의 대학교에 지원할 계획이에요.','apply','B1','education',1,'apply application form university'),
('w_education_B1_29','scholarship','/ˈskɒlərʃɪp/','noun','장학금','Money given to fund a student''s education.','He applied for a merit-based {scholarship}.','그는 성적 우수 장학금을 신청했어요.','scholarship','B1','education',1,'scholarship money award student'),
('w_education_B1_30','qualify','/ˈkwɒlɪfaɪ/','verb','자격을 갖추다','To meet the necessary conditions for something.','You must pass an exam to {qualify}.','자격을 갖추려면 시험에 합격해야 해요.','qualify','B1','education',2,'qualify exam certificate credential'),
('w_education_B1_31','submit','/səbˈmɪt/','verb','제출하다','To hand in a piece of work for assessment.','Please {submit} your essay by midnight.','에세이를 자정까지 제출해 주세요.','submit','B1','education',1,'submit paper upload assignment deadline'),
('w_education_B1_32','revise','/rɪˈvaɪz/','verb','수정하다, 복습하다','To change or improve written work; to study for an exam.','I need to {revise} my essay before submitting it.','제출 전에 에세이를 수정해야 해요.','revise','B1','education',1,'revise edit paper studying'),
('w_education_B1_33','concentrate','/ˈkɒnsəntreɪt/','verb','집중하다','To focus your thoughts and attention.','It''s hard to {concentrate} when it''s noisy.','시끄러울 때 집중하기 어려워요.','concentrate','B1','education',1,'concentrate focus study quiet'),
('w_education_B1_34','comprehension','/ˌkɒmprɪˈhenʃən/','noun','이해력, 독해','The ability to understand written or spoken language.','The exam includes a {comprehension} passage.','시험에 독해 지문이 포함돼요.','comprehension','B1','education',1,'comprehension reading text understanding'),
('w_education_B1_35','plagiarism','/ˈpleɪdʒərɪzəm/','noun','표절','Using someone else''s work or ideas without permission.','{Plagiarism} can result in failing the course.','표절은 수업 낙제로 이어질 수 있어요.','plagiarism','B1','education',1,'plagiarism copying academic dishonesty')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B2 (35)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_education_B2_01','methodology','/ˌmeθəˈdɒlədʒi/','noun','방법론','A system of methods used in a particular field of study.','The research used a qualitative {methodology}.','연구는 질적 방법론을 사용했어요.','methodology','B2','education',1,'methodology research systematic approach'),
('w_education_B2_02','hypothesis','/haɪˈpɒθɪsɪs/','noun','가설','A proposed explanation made on the basis of limited evidence.','The scientist tested her {hypothesis} carefully.','과학자는 가설을 신중하게 검증했어요.','hypothesis','B2','education',1,'hypothesis experiment science research'),
('w_education_B2_03','peer review','/pɪər rɪˈvjuː/','noun','동료 검토','Evaluation of work by others in the same field.','The article passed {peer review} before publication.','기사는 출판 전에 동료 검토를 통과했어요.','peer review','B2','education',1,'peer review academic journal evaluation'),
('w_education_B2_04','dissertation','/ˌdɪsərˈteɪʃən/','noun','(박사) 학위 논문','A long written work submitted for a doctoral degree.','She spent three years writing her {dissertation}.','그녀는 학위 논문을 쓰는 데 3년을 보냈어요.','dissertation','B2','education',1,'dissertation thesis research university'),
('w_education_B2_05','citation','/saɪˈteɪʃən/','noun','인용','A reference to a source in academic writing.','Every claim needs a {citation} in academic writing.','학술 글쓰기에서는 모든 주장에 인용이 필요해요.','citation','B2','education',1,'citation reference academic paper source'),
('w_education_B2_06','abstract','/ˈæbstrækt/','noun','초록, 요약','A short summary of a research paper.','Read the {abstract} before the full paper.','전체 논문 읽기 전에 초록을 읽으세요.','abstract','B2','education',1,'abstract summary research paper academic'),
('w_education_B2_07','empirical','/ɪmˈpɪrɪkəl/','adjective','경험적인, 실증적인','Based on observation or experiment rather than theory.','The study provides {empirical} evidence.','이 연구는 실증적 증거를 제공해요.','empirical','B2','education',1,'empirical data evidence experiment research'),
('w_education_B2_08','academic','/ˌækəˈdemɪk/','noun','학자','A person who works as a researcher or teacher at a university.','Several {academics} attended the conference.','여러 학자가 학회에 참석했어요.','academic','B2','education',1,'academic professor university scholar'),
('w_education_B2_09','faculty','/ˈfækəlti/','noun','교수진','The teaching staff of a university.','The {faculty} met to discuss the new syllabus.','교수진이 새 강의 계획서를 논의하기 위해 모였어요.','faculty','B2','education',1,'faculty staff university professors meeting'),
('w_education_B2_10','postgraduate','/ˌpoʊstˈɡrædʒuɪt/','noun','대학원생','A student doing advanced study after their first degree.','She is a {postgraduate} student in linguistics.','그녀는 언어학 대학원생이에요.','postgraduate','B2','education',1,'postgraduate university graduate student research'),
('w_education_B2_11','semiotics','/ˌsiːmiˈɒtɪks/','noun','기호학','The study of signs and symbols and their use or interpretation.','Her course introduces {semiotics} and media.','그녀의 강의는 기호학과 미디어를 소개해요.','semiotics','B2','education',2,'semiotics signs symbols language meaning'),
('w_education_B2_12','discourse','/ˈdɪskɔːrs/','noun','담론, 담화','Written or spoken communication and its social context.','Academic {discourse} requires formal language.','학술 담론에는 격식체 언어가 필요해요.','discourse','B2','education',2,'discourse communication language academic'),
('w_education_B2_13','inference','/ˈɪnfərəns/','noun','추론','A conclusion reached on the basis of evidence and reasoning.','Drawing {inference} from data is a key skill.','데이터에서 추론하는 것은 핵심 능력이에요.','inference','B2','education',1,'inference reasoning logic conclusion'),
('w_education_B2_14','synthesis','/ˈsɪnθɪsɪs/','noun','종합, 통합','The combination of elements to form a whole.','The essay requires a {synthesis} of various sources.','이 에세이는 다양한 자료의 통합을 요구해요.','synthesis','B2','education',1,'synthesis combine integrate research'),
('w_education_B2_15','critique','/krɪˈtiːk/','noun','비평, 비판적 분석','A detailed analysis and assessment of something.','Write a {critique} of the article for next week.','다음 주까지 기사 비평을 작성해 주세요.','critique','B2','education',1,'critique analysis review academic'),
('w_education_B2_16','framework','/ˈfreɪmwɜːrk/','noun','틀, 체계','A basic structure underlying a system or concept.','The {framework} guides the analysis.','이 틀이 분석을 이끌어요.','framework','B2','education',1,'framework structure system analysis'),
('w_education_B2_17','variable','/ˈveəriəbəl/','noun','변수','An element that may change in an experiment.','The study controls for several {variables}.','이 연구는 여러 변수를 통제해요.','variable','B2','education',1,'variable experiment research data'),
('w_education_B2_18','quantitative','/ˈkwɒntɪtətɪv/','adjective','양적인','Relating to, measuring, or measured by quantity.','A {quantitative} study uses numerical data.','양적 연구는 수치 데이터를 사용해요.','quantitative','B2','education',1,'quantitative data numbers research statistics'),
('w_education_B2_19','qualitative','/ˈkwɒlɪtətɪv/','adjective','질적인','Relating to or measured by quality rather than quantity.','The {qualitative} approach explores meanings.','질적 접근은 의미를 탐구해요.','qualitative','B2','education',1,'qualitative interview observation research'),
('w_education_B2_20','rhetoric','/ˈretərɪk/','noun','수사학, 수사법','The art of persuasive speaking or writing.','Strong {rhetoric} can win an argument.','강한 수사법은 논쟁을 이길 수 있어요.','rhetoric','B2','education',2,'rhetoric persuasion speech argument'),
('w_education_B2_21','annotate','/ˈænəteɪt/','verb','주석을 달다','To add notes or comments to a text.','Students {annotate} their texts during reading.','학생들은 읽으면서 텍스트에 주석을 달아요.','annotate','B2','education',2,'annotate notes margin text book'),
('w_education_B2_22','rationale','/ˌræʃəˈnɑːl/','noun','근거, 이유','The fundamental reason or basis for something.','Explain the {rationale} behind your argument.','주장의 근거를 설명해 주세요.','rationale','B2','education',2,'rationale reason basis argument'),
('w_education_B2_23','peer','/pɪər/','noun','동료, 동급생','A person of the same age or status.','Discuss your ideas with your {peers}.','동료들과 아이디어를 토론해 보세요.','peer','B2','education',1,'peer colleagues students group discussion'),
('w_education_B2_24','collaborate','/kəˈlæbəreɪt/','verb','협력하다, 공동 연구하다','To work jointly with others on a project.','Students {collaborate} on group assignments.','학생들은 그룹 과제를 위해 협력해요.','collaborate','B2','education',1,'collaborate teamwork group project students'),
('w_education_B2_25','curriculum vitae','/ˌkɜːrɪkjʊləm ˈviːtaɪ/','noun','이력서 (CV)','A written overview of a person''s qualifications and experience.','Submit your {curriculum vitae} with the application.','지원서와 함께 이력서를 제출해 주세요.','curriculum vitae','B2','education',2,'CV resume qualifications academic'),
('w_education_B2_26','bibliography','/ˌbɪbliˈɒɡrəfi/','noun','참고 문헌 목록','A list of books and sources used in a research paper.','Include a full {bibliography} at the end.','마지막에 전체 참고 문헌 목록을 포함하세요.','bibliography','B2','education',1,'bibliography references sources academic paper'),
('w_education_B2_27','syllabus','/ˈsɪləbəs/','noun','강의 계획서','An outline of the topics covered in a course.','Review the {syllabus} on the first day.','첫날 강의 계획서를 검토하세요.','syllabus','B2','education',1,'syllabus course outline plan university'),
('w_education_B2_28','tenure','/ˈtenjər/','noun','종신 재직권','The permanent status granted to a university professor.','She was granted {tenure} last year.','그녀는 작년에 종신 재직권을 받았어요.','tenure','B2','education',2,'tenure professor university permanent position'),
('w_education_B2_29','accreditation','/əˌkredɪˈteɪʃən/','noun','인가, 인증','Official recognition that an institution meets standards.','The university received full {accreditation}.','대학교는 완전한 인증을 받았어요.','accreditation','B2','education',2,'accreditation certification standard quality'),
('w_education_B2_30','transcript','/ˈtrænskrɪpt/','noun','성적 증명서','An official record of a student''s academic performance.','Send your official {transcript} with the application.','공식 성적 증명서를 지원서와 함께 보내주세요.','transcript','B2','education',2,'transcript academic record certificate'),
('w_education_B2_31','grant','/ɡrɑːnt/','noun','연구비, 보조금','Money given for a specific purpose such as research.','She received a research {grant} from the government.','그녀는 정부로부터 연구비를 받았어요.','grant','B2','education',1,'grant funding research money academic'),
('w_education_B2_32','cohort','/ˈkoʊhɔːrt/','noun','(동기) 집단','A group of students who begin study at the same time.','The 2024 {cohort} has fifty students.','2024년 동기는 50명이에요.','cohort','B2','education',2,'cohort group students year class'),
('w_education_B2_33','interdisciplinary','/ˌɪntərdɪˈsɪplɪneri/','adjective','학제 간의','Involving two or more academic disciplines.','The course takes an {interdisciplinary} approach.','이 강의는 학제 간 접근법을 취해요.','interdisciplinary','B2','education',2,'interdisciplinary cross-subject research academic'),
('w_education_B2_34','prerequisite','/ˌpriːˈrekwɪzɪt/','noun','선수 과목, 전제 조건','A required course or condition before another can be taken.','Statistics is a {prerequisite} for this module.','통계학은 이 모듈의 선수 과목이에요.','prerequisite','B2','education',2,'prerequisite requirement course condition'),
('w_education_B2_35','pedagogy','/ˈpedəɡɒdʒi/','noun','교수법','The method and practice of teaching.','Modern {pedagogy} emphasizes active learning.','현대 교수법은 능동적 학습을 강조해요.','pedagogy','B2','education',1,'pedagogy teaching method education practice')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C1 (35)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_education_C1_01','epistemology','/ɪˌpɪstɪˈmɒlədʒi/','noun','인식론','The branch of philosophy concerned with the nature and scope of knowledge.','Her research draws on {epistemology} and cognitive science.','그녀의 연구는 인식론과 인지 과학을 바탕으로 해요.','epistemology','C1','education',1,'epistemology philosophy knowledge mind'),
('w_education_C1_02','pedagogy','/ˈpedəɡɒdʒi/','noun','교육학, 교수법','The art and science of teaching.','Critical {pedagogy} encourages students to question assumptions.','비판적 교수법은 학생들이 가정을 의심하도록 독려해요.','pedagogy','C1','education',1,'pedagogy teaching method classroom'),
('w_education_C1_03','paradigm','/ˈpærədaɪm/','noun','패러다임','A typical example or pattern; a framework of ideas.','Kuhn described scientific revolutions as {paradigm} shifts.','쿤은 과학 혁명을 패러다임 전환으로 설명했어요.','paradigm','C1','education',1,'paradigm shift concept framework science'),
('w_education_C1_04','dialectic','/ˌdaɪəˈlektɪk/','noun','변증법','A method of logical argument through discussion.','Hegel''s {dialectic} moves through thesis, antithesis, and synthesis.','헤겔의 변증법은 정, 반, 합으로 나아가요.','dialectic','C1','education',1,'dialectic argument logic philosophy'),
('w_education_C1_05','hermeneutics','/ˌhɜːrmɪˈnjuːtɪks/','noun','해석학','The theory and methodology of text interpretation.','{Hermeneutics} informs how we read ancient texts.','해석학은 우리가 고대 문헌을 읽는 방식에 영향을 줘요.','hermeneutics','C1','education',1,'hermeneutics interpretation text meaning'),
('w_education_C1_06','constructivism','/kənˈstrʌktɪvɪzəm/','noun','구성주의','The theory that learners actively construct knowledge.','{Constructivism} supports project-based learning.','구성주의는 프로젝트 기반 학습을 지지해요.','constructivism','C1','education',1,'constructivism learning building knowledge'),
('w_education_C1_07','positivism','/ˈpɒzɪtɪvɪzəm/','noun','실증주의','The philosophical view that knowledge comes from empirical evidence.','{Positivism} dominates natural science research.','실증주의는 자연 과학 연구를 지배해요.','positivism','C1','education',1,'positivism evidence science philosophy research'),
('w_education_C1_08','ontology','/ɒnˈtɒlədʒi/','noun','존재론','The branch of philosophy dealing with the nature of being.','The study''s {ontology} assumes social reality is constructed.','이 연구의 존재론은 사회 현실이 구성된다고 가정해요.','ontology','C1','education',1,'ontology being existence philosophy'),
('w_education_C1_09','axiom','/ˈæksiəm/','noun','공리, 자명한 이치','A statement accepted as true without proof.','"All men are mortal" is a classic {axiom}.','"모든 인간은 죽는다"는 고전적인 공리예요.','axiom','C1','education',1,'axiom truth principle self-evident'),
('w_education_C1_10','deductive','/dɪˈdʌktɪv/','adjective','연역적인','Moving from general principles to specific conclusions.','The study uses {deductive} reasoning.','이 연구는 연역적 추론을 사용해요.','deductive','C1','education',1,'deductive reasoning logic conclusion'),
('w_education_C1_11','inductive','/ɪnˈdʌktɪv/','adjective','귀납적인','Moving from specific observations to general principles.','{Inductive} logic moves from data to theory.','귀납적 논리는 데이터에서 이론으로 나아가요.','inductive','C1','education',1,'inductive logic data observation'),
('w_education_C1_12','critical thinking','/ˈkrɪtɪkəl ˈθɪŋkɪŋ/','noun','비판적 사고','The ability to analyse and evaluate information carefully.','{Critical thinking} is the cornerstone of good scholarship.','비판적 사고는 좋은 학문의 초석이에요.','critical thinking','C1','education',1,'critical thinking analysis evaluation'),
('w_education_C1_13','heuristic','/hjʊˈrɪstɪk/','adjective','발견적인, 경험에 기반한','Enabling a person to discover or learn by trial and error.','A {heuristic} approach helps students explore solutions.','발견적 접근은 학생들이 해결책을 탐색하도록 도와요.','heuristic','C1','education',2,'heuristic discovery learning problem solving'),
('w_education_C1_14','metacognition','/ˌmetəkɒɡˈnɪʃən/','noun','메타인지','Awareness and understanding of one''s own thought processes.','{Metacognition} helps learners monitor their progress.','메타인지는 학습자가 자신의 발전을 모니터하도록 도와요.','metacognition','C1','education',1,'metacognition thinking awareness learning'),
('w_education_C1_15','scaffolding','/ˈskæfəldɪŋ/','noun','발판식 교수법','Temporary support given to help a learner achieve a goal.','The teacher used {scaffolding} to guide the group.','선생님은 발판식 교수법을 사용해 그룹을 이끌었어요.','scaffolding','C1','education',2,'scaffolding support teaching learning'),
('w_education_C1_16','autonomy','/ɔːˈtɒnəmi/','noun','자율성','The right or condition of self-governance; independence in learning.','Student {autonomy} improves motivation.','학습자 자율성은 동기를 향상시켜요.','autonomy','C1','education',1,'autonomy independence self-directed learning'),
('w_education_C1_17','acculturation','/əˌkʌltʃəˈreɪʃən/','noun','문화 적응','The process of adapting to a different culture.','{Acculturation} affects international students deeply.','문화 적응은 유학생에게 깊은 영향을 미쳐요.','acculturation','C1','education',2,'acculturation culture adaptation students'),
('w_education_C1_18','triangulation','/traɪˌæŋɡjʊˈleɪʃən/','noun','삼각 검증법','Using multiple methods to validate research findings.','The study used {triangulation} to strengthen reliability.','연구는 신뢰성을 높이기 위해 삼각 검증법을 사용했어요.','triangulation','C1','education',2,'triangulation research method validation'),
('w_education_C1_19','reflexivity','/ˌriːflekˈsɪvɪti/','noun','성찰성','The capacity to reflect on one''s own biases in research.','{eflexivity} is essential in qualitative research.','성찰성은 질적 연구에서 필수적이에요.','reflexivity','C1','education',2,'reflexivity reflection bias research'),
('w_education_C1_20','epistemological','/ɪˌpɪstɪməˈlɒdʒɪkəl/','adjective','인식론적인','Relating to the theory of knowledge.','The paper raises {epistemological} questions.','논문은 인식론적 질문을 제기해요.','epistemological','C1','education',2,'epistemological knowledge philosophy'),
('w_education_C1_21','normative','/ˈnɔːrmətɪv/','adjective','규범적인','Relating to a standard or norm of behaviour.','The study takes a {normative} stance.','이 연구는 규범적 입장을 취해요.','normative','C1','education',2,'normative standard norm behaviour'),
('w_education_C1_22','praxis','/ˈpræksɪs/','noun','실천, 프락시스','The process of translating theory into practice.','Freire''s concept of {praxis} unites reflection and action.','프레이리의 프락시스 개념은 성찰과 행동을 결합해요.','praxis','C1','education',1,'praxis practice theory action education'),
('w_education_C1_23','discourse analysis','/ˈdɪskɔːrs əˈnæləsɪs/','noun','담화 분석','The study of language use in texts and social contexts.','{iscourse analysis} reveals power structures in texts.','담화 분석은 텍스트의 권력 구조를 드러내요.','discourse analysis','C1','education',2,'discourse analysis language text power'),
('w_education_C1_24','generalisability','/ˌdʒenrəlaɪzəˈbɪlɪti/','noun','일반화 가능성','The extent to which findings apply beyond the study sample.','Small samples limit {generalisability}.','작은 표본은 일반화 가능성을 제한해요.','generalisability','C1','education',2,'generalisability research sample findings'),
('w_education_C1_25','validity','/vəˈlɪdɪti/','noun','타당성','The degree to which a test or study measures what it claims to.','Ensure the instrument has strong {validity}.','측정 도구가 강한 타당성을 갖추도록 하세요.','validity','C1','education',1,'validity research measurement testing'),
('w_education_C1_26','reliability','/rɪˌlaɪəˈbɪlɪti/','noun','신뢰성','The consistency of a measure or research result.','Test-retest {reliability} was confirmed.','검사-재검사 신뢰성이 확인됐어요.','reliability','C1','education',1,'reliability consistency research measurement'),
('w_education_C1_27','replication','/ˌreplɪˈkeɪʃən/','noun','재현, 복제','Repeating a study to verify its findings.','{eplication} is central to scientific credibility.','재현은 과학적 신뢰성의 핵심이에요.','replication','C1','education',2,'replication experiment science research'),
('w_education_C1_28','peer-reviewed','/ˈpɪər rɪˌvjuːd/','adjective','동료 심사를 거친','Evaluated by experts before publication.','Only cite {peer-reviewed} sources in your paper.','논문에서는 동료 심사를 거친 자료만 인용하세요.','peer-reviewed','C1','education',1,'peer-reviewed journal academic publication'),
('w_education_C1_29','conceptual framework','/kənˈseptʃuəl ˈfreɪmwɜːrk/','noun','개념적 틀','A structured set of concepts used to guide research.','The {conceptual framework} draws on three theories.','개념적 틀은 세 이론을 바탕으로 해요.','conceptual framework','C1','education',1,'conceptual framework theory research guide'),
('w_education_C1_30','literature review','/ˈlɪtrətʃər rɪˈvjuː/','noun','문헌 검토','A survey of existing research on a topic.','The {literature review} identifies gaps in knowledge.','문헌 검토는 지식의 공백을 파악해요.','literature review','C1','education',1,'literature review research academic sources'),
('w_education_C1_31','sampling','/ˈsæmplɪŋ/','noun','표본 추출','The process of selecting individuals for a study.','Random {sampling} reduces selection bias.','무작위 표본 추출은 선택 편향을 줄여요.','sampling','C1','education',2,'sampling research data population'),
('w_education_C1_32','operationalise','/ˌɒpərˈeɪʃənəlaɪz/','verb','조작화하다','To define a concept in measurable terms for research.','You need to {operationalise} the variable.','변수를 조작화해야 해요.','operationalise','C1','education',2,'operationalise measure define research'),
('w_education_C1_33','posit','/ˈpɒzɪt/','verb','가정하다, 상정하다','To put forward as a fact or basis for argument.','The author {posits} that education shapes identity.','저자는 교육이 정체성을 형성한다고 상정해요.','posit','C1','education',2,'posit argue claim academic'),
('w_education_C1_34','substantiate','/səbˈstænʃieɪt/','verb','입증하다, 뒷받침하다','To provide evidence to support a claim.','You must {substantiate} every claim with evidence.','모든 주장을 증거로 뒷받침해야 해요.','substantiate','C1','education',1,'substantiate evidence support proof'),
('w_education_C1_35','nuanced','/ˈnjuːɑːnst/','adjective','미묘한 차이가 있는','Showing subtle distinctions and complexities.','A {nuanced} reading reveals deeper meaning.','미묘한 독해는 더 깊은 의미를 드러내요.','nuanced','C1','education',2,'nuanced subtle complex analysis')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C2 (35)
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_education_C2_01','heuristics','/hjʊˈrɪstɪks/','noun','발견술, 휴리스틱스','Mental shortcuts that enable quick decision-making, especially in learning.','Cognitive {heuristics} can lead to systematic errors.','인지적 발견술은 체계적 오류로 이어질 수 있어요.','heuristics','C2','education',1,'heuristics cognition decision learning'),
('w_education_C2_02','phenomenology','/fɪˌnɒmɪˈnɒlədʒi/','noun','현상학','A philosophical method examining lived experience.','{henomenology} captures the essence of human experience.','현상학은 인간 경험의 본질을 포착해요.','phenomenology','C2','education',1,'phenomenology experience philosophy research'),
('w_education_C2_03','reductionism','/rɪˈdʌkʃənɪzəm/','noun','환원주의','The view that complex phenomena can be explained by simpler parts.','{eductionism} is criticised for oversimplifying social behaviour.','환원주의는 사회 행동을 지나치게 단순화한다는 비판을 받아요.','reductionism','C2','education',1,'reductionism simplify complex system philosophy'),
('w_education_C2_04','falsifiability','/fɔːlsɪfaɪəˈbɪlɪti/','noun','반증 가능성','The capacity for a claim to be proven false by evidence.','Popper argued that {falsifiability} distinguishes science from pseudoscience.','포퍼는 반증 가능성이 과학을 사이비 과학과 구별한다고 주장했어요.','falsifiability','C2','education',1,'falsifiability Popper science research theory'),
('w_education_C2_05','epistemological','/ɪˌpɪstɪməˈlɒdʒɪkəl/','adjective','인식론적인','Relating to the philosophical study of knowledge and its limits.','The article makes an {epistemological} argument about evidence.','이 논문은 증거에 관한 인식론적 주장을 해요.','epistemological','C2','education',1,'epistemological knowledge philosophy limits'),
('w_education_C2_06','praxis','/ˈpræksɪs/','noun','이론과 실천의 통합','The integration of theory and practice in transformative education.','Freire''s {praxis} model challenges oppressive structures.','프레이리의 프락시스 모델은 억압적 구조에 도전해요.','praxis','C2','education',1,'praxis Freire education liberation theory'),
('w_education_C2_07','deconstruction','/ˌdiːkənˈstrʌkʃən/','noun','해체주의','A method of critical analysis that questions fixed meanings.','Derrida''s {deconstruction} destabilises binary oppositions.','데리다의 해체주의는 이항 대립을 불안정하게 해요.','deconstruction','C2','education',1,'deconstruction Derrida postmodern text'),
('w_education_C2_08','semiotic','/ˌsiːmiˈɒtɪk/','adjective','기호학적인','Relating to signs and symbols and their interpretation.','A {semiotic} reading of the curriculum reveals hidden values.','교육 과정의 기호학적 독해는 숨겨진 가치를 드러내요.','semiotic','C2','education',1,'semiotic signs symbols meaning language'),
('w_education_C2_09','poststructuralism','/ˌpoʊstˈstrʌktʃərəlɪzəm/','noun','후기 구조주의','A theoretical approach questioning fixed meanings in language and culture.','{oststructuralism} rejects the idea of a stable text.','후기 구조주의는 안정적인 텍스트라는 개념을 거부해요.','poststructuralism','C2','education',1,'poststructuralism theory language culture'),
('w_education_C2_10','scholasticism','/skəˈlæstɪsɪzəm/','noun','스콜라주의','A medieval theological and philosophical method emphasising systematic reasoning.','{cholasticism} sought to reconcile faith and reason.','스콜라주의는 신앙과 이성을 화해시키려 했어요.','scholasticism','C2','education',1,'scholasticism medieval philosophy theology'),
('w_education_C2_11','ontological','/ˌɒntəˈlɒdʒɪkəl/','adjective','존재론적인','Relating to the nature of being or existence.','The research takes an {ontological} stance on social reality.','이 연구는 사회 현실에 대해 존재론적 입장을 취해요.','ontological','C2','education',2,'ontological being existence philosophy'),
('w_education_C2_12','intersubjectivity','/ˌɪntərsʌbdʒekˈtɪvɪti/','noun','상호 주관성','Shared understanding between different subjects or minds.','{ntersubjectivity} is central to collaborative learning.','상호 주관성은 협력 학습의 핵심이에요.','intersubjectivity','C2','education',2,'intersubjectivity shared understanding learning'),
('w_education_C2_13','logocentrism','/ˌloʊɡoʊˈsentrɪzəm/','noun','로고스 중심주의','The privileging of speech over writing in Western thought.','Derrida critiqued {logocentrism} in philosophical traditions.','데리다는 철학 전통에서 로고스 중심주의를 비판했어요.','logocentrism','C2','education',2,'logocentrism language philosophy Derrida'),
('w_education_C2_14','noumenon','/ˈnuːmɪnɒn/','noun','물자체, 누메논','The thing as it is in itself, independent of perception.','Kant distinguished between phenomenon and {noumenon}.','칸트는 현상과 물자체를 구별했어요.','noumenon','C2','education',2,'noumenon Kant philosophy thing itself'),
('w_education_C2_15','teleology','/ˌteliˈɒlədʒi/','noun','목적론','The explanation of phenomena in terms of goals or purposes.','{eleology} argues that education has an inherent purpose.','목적론은 교육에 내재적 목적이 있다고 주장해요.','teleology','C2','education',2,'teleology purpose goal philosophy'),
('w_education_C2_16','intertextuality','/ˌɪntətekstʃuˈælɪti/','noun','상호 텍스트성','The relationship between texts and their mutual influences.','{ntertextuality} shapes how readers interpret meaning.','상호 텍스트성은 독자가 의미를 해석하는 방식을 형성해요.','intertextuality','C2','education',2,'intertextuality text literature meaning'),
('w_education_C2_17','relativism','/ˈrelətɪvɪzəm/','noun','상대주의','The view that knowledge and truth are relative to context.','{elativism} challenges universal educational standards.','상대주의는 보편적 교육 기준에 도전해요.','relativism','C2','education',2,'relativism truth context culture philosophy'),
('w_education_C2_18','dialectical materialism','/ˌdaɪəˈlektɪkəl məˈtɪəriəlɪzəm/','noun','변증법적 유물론','Marx''s philosophical framework combining dialectics and materialism.','{ialectical materialism} views education as shaped by economic forces.','변증법적 유물론은 교육이 경제적 힘에 의해 형성된다고 봐요.','dialectical materialism','C2','education',2,'dialectical materialism Marx philosophy education'),
('w_education_C2_19','aporia','/əˈpɔːriə/','noun','난제, 아포리아','A philosophical puzzle or state of puzzlement.','The text leaves the reader in a state of {aporia}.','텍스트는 독자를 아포리아 상태에 남겨두어요.','aporia','C2','education',2,'aporia puzzle philosophy doubt'),
('w_education_C2_20','heteroglossia','/ˌhetərəˈɡlɒsiə/','noun','다성성, 이종 언어성','The coexistence of multiple voices or languages in a text.','Bakhtin''s concept of {heteroglossia} challenges monolithic discourse.','바흐친의 다성성 개념은 일원적 담론에 도전해요.','heteroglossia','C2','education',2,'heteroglossia voices language Bakhtin'),
('w_education_C2_21','abduction','/æbˈdʌkʃən/','noun','귀추법','Reasoning from observation to the most likely explanation.','{bduction} generates hypotheses in qualitative research.','귀추법은 질적 연구에서 가설을 생성해요.','abduction','C2','education',2,'abduction reasoning hypothesis research'),
('w_education_C2_22','phronesis','/ˈfrɒnɪsɪs/','noun','실천적 지혜','Aristotle''s concept of practical wisdom in ethical action.','{hronesis} guides teachers in morally complex situations.','실천적 지혜는 도덕적으로 복잡한 상황에서 교사를 이끌어요.','phronesis','C2','education',2,'phronesis wisdom practical Aristotle'),
('w_education_C2_23','liminality','/ˌlɪmɪˈnælɪti/','noun','경계성, 리미널리티','The transitional quality of being between two states.','{iminality} describes the in-between state of new learners.','경계성은 새로운 학습자의 중간 상태를 설명해요.','liminality','C2','education',2,'liminality transition threshold learning'),
('w_education_C2_24','hegemony','/hɪˈdʒeməni/','noun','패권, 헤게모니','Dominant control exerted over others, especially in education.','Gramsci examined {hegemony} in educational institutions.','그람시는 교육 기관의 헤게모니를 검토했어요.','hegemony','C2','education',1,'hegemony power dominance education Gramsci'),
('w_education_C2_25','interlocutor','/ˌɪntəˈlɒkjʊtər/','noun','대화 상대자','A person who participates in a dialogue or interaction.','The {interlocutor} plays a key role in oral assessment.','대화 상대자는 구술 평가에서 핵심 역할을 해요.','interlocutor','C2','education',2,'interlocutor dialogue conversation assessment'),
('w_education_C2_26','verisimilitude','/ˌverɪsɪˈmɪlɪtjuːd/','noun','진실성, 사실성','The appearance of being true or real in research.','{erisimilitude} strengthens the credibility of qualitative findings.','진실성은 질적 연구 결과의 신뢰성을 강화해요.','verisimilitude','C2','education',2,'verisimilitude truth research credibility'),
('w_education_C2_27','episteme','/ˈepɪstiːm/','noun','에피스테메','Foucault''s term for the underlying system of thought in an era.','Each era has its own {episteme} shaping what counts as knowledge.','각 시대는 지식으로 여겨지는 것을 형성하는 자체 에피스테메를 가져요.','episteme','C2','education',2,'episteme Foucault knowledge era'),
('w_education_C2_28','bricolage','/ˌbrɪkəˈlɑːʒ/','noun','브리콜라주','Using whatever tools are available to construct meaning.','Qualitative researchers engage in intellectual {bricolage}.','질적 연구자들은 지적 브리콜라주에 참여해요.','bricolage','C2','education',2,'bricolage construct tools meaning research'),
('w_education_C2_29','sedimentation','/ˌsedɪmenˈteɪʃən/','noun','침전, 층적 형성','The gradual accumulation and layering of cultural meaning.','{edimentation} of beliefs resists change in institutions.','믿음의 침전은 기관의 변화에 저항해요.','sedimentation','C2','education',2,'sedimentation accumulation layer meaning culture'),
('w_education_C2_30','rhizome','/ˈraɪzoʊm/','noun','리좀, 근경','Deleuze and Guattari''s metaphor for non-hierarchical knowledge networks.','{hizome} thinking challenges linear curricula.','리좀적 사고는 선형 교육 과정에 도전해요.','rhizome','C2','education',2,'rhizome network knowledge nonlinear'),
('w_education_C2_31','logomachy','/lɒˈɡɒməki/','noun','말다툼, 언어 논쟁','A dispute over the meaning of words.','The philosophical {logomachy} obscured the real issue.','철학적 말다툼이 진짜 문제를 흐렸어요.','logomachy','C2','education',3,'logomachy debate words philosophy'),
('w_education_C2_32','propaedeutic','/ˌprɒpɪˈdjuːtɪk/','adjective','예비 교육의','Serving as an introduction to further study.','Logic is a {propaedeutic} discipline for philosophy.','논리학은 철학을 위한 예비 교육 분야예요.','propaedeutic','C2','education',3,'propaedeutic preparatory study foundation'),
('w_education_C2_33','catharsis','/kəˈθɑːrsɪs/','noun','카타르시스, 정화','A release of emotion through artistic or learning experience.','Reading great literature can provide {catharsis}.','위대한 문학을 읽으면 카타르시스를 얻을 수 있어요.','catharsis','C2','education',2,'catharsis emotion release learning'),
('w_education_C2_34','cogito','/ˈkɒdʒɪtoʊ/','noun','코기토','Descartes'' principle "I think, therefore I am".','The {cogito} is the foundation of Cartesian philosophy.','코기토는 데카르트 철학의 토대예요.','cogito','C2','education',2,'cogito Descartes thinking existence philosophy'),
('w_education_C2_35','anamnesis','/ˌænæmˈniːsɪs/','noun','상기, 아남네시스','Plato''s theory that learning is a process of recollection.','Plato''s {anamnesis} theory suggests knowledge is innate.','플라톤의 상기 이론은 지식이 내재적이라고 제안해요.','anamnesis','C2','education',2,'anamnesis Plato recollection knowledge')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS (sentences) — A1 (7)
-- 주제: 과목 소개 / 학교생활 기본 표현
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_A1_01','What''s your favorite subject?','제일 좋아하는 과목이 뭐예요?','favorite subject','favorite를 써서 선호를 물어볼 수 있어요.','수업 대화','A1','education','pattern',NULL,1),
('s_education_A1_02','I like math because it''s interesting.','수학이 재미있어서 좋아요.','I like ... because','이유를 말할 때 because를 쓰면 자연스러워요.','과목 소개','A1','education','pattern',NULL,2),
('s_education_A1_03','How do you spell that word?','그 단어 철자가 어떻게 돼요?','How do you spell','모르는 단어 철자를 물어볼 때 쓰는 표현이에요.','수업 중 질문','A1','education','pattern',NULL,3),
('s_education_A1_04','Can you say that again, please?','다시 한 번 말씀해 주실 수 있어요?','Can you say that again','이해 못했을 때 정중하게 다시 말해달라고 하는 표현이에요.','수업 중','A1','education','pattern',NULL,4),
('s_education_A1_05','What does this word mean?','이 단어는 무슨 뜻이에요?','What does ... mean','모르는 단어의 뜻을 물어볼 때 가장 기본적인 표현이에요.','어휘 확인','A1','education','pattern',NULL,5),
('s_education_A1_06','I don''t understand. Can you help me?','이해가 안 돼요. 도와주실 수 있어요?','I don''t understand','솔직하게 모른다고 말하는 것이 배움의 첫 걸음이에요.','도움 요청','A1','education','pattern',NULL,6),
('s_education_A1_07','We have a test tomorrow.','내일 시험이 있어요.','We have a test','시험을 안내할 때 쓰는 가장 간단한 표현이에요.','시험 안내','A1','education','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — A2 (7)
-- 주제: 시험 준비 / 성적 표현
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_A2_01','I need to study for the exam this weekend.','이번 주말에 시험 공부를 해야 해요.','need to study for','need to를 쓰면 해야 할 일을 자연스럽게 표현할 수 있어요.','시험 준비','A2','education','pattern',NULL,1),
('s_education_A2_02','Did you pass the test? I got a B.','시험 합격했어요? 저는 B 받았어요.','Did you pass','시험 결과를 물어보거나 공유할 때 쓰는 표현이에요.','성적 대화','A2','education','pattern',NULL,2),
('s_education_A2_03','I''m going to review my notes tonight.','오늘 밤에 필기 내용을 복습할 거예요.','review my notes','review를 써서 복습 계획을 말할 수 있어요.','공부 계획','A2','education','pattern',NULL,3),
('s_education_A2_04','What chapter is the exam on?','시험 범위가 몇 장이에요?','What chapter is ... on','시험 범위를 확인할 때 꼭 필요한 표현이에요.','시험 준비','A2','education','pattern',NULL,4),
('s_education_A2_05','The homework is due on Friday.','숙제 제출 기한은 금요일이에요.','is due on','마감일을 표현할 때 be due on을 사용해요.','과제 안내','A2','education','pattern',NULL,5),
('s_education_A2_06','I failed the quiz, so I need to try harder.','쪽지 시험에서 떨어져서 더 열심히 해야 해요.','I failed ... so I need to','결과와 다짐을 연결할 때 so를 사용해요.','자기 반성','A2','education','pattern',NULL,6),
('s_education_A2_07','Can I borrow your notes from yesterday''s class?','어제 수업 필기 빌릴 수 있어요?','Can I borrow','정중하게 빌려달라고 부탁하는 표현이에요.','친구에게 부탁','A2','education','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — B1 (7)
-- 주제: 발표 / 수업 중 질문
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_B1_01','I''d like to talk about the importance of lifelong learning.','평생 학습의 중요성에 대해 말씀드리려고 해요.','I''d like to talk about','발표를 시작할 때 I''d like to를 쓰면 공손하고 자연스럽게 들려요.','발표 시작','B1','education','pattern',NULL,1),
('s_education_B1_02','Could you explain that concept in more detail?','그 개념을 좀 더 자세히 설명해 주실 수 있어요?','Could you explain ... in more detail','수업에서 추가 설명을 요청할 때 쓰는 정중한 표현이에요.','수업 중 질문','B1','education','pattern',NULL,2),
('s_education_B1_03','My assignment is to write an essay on climate change.','제 과제는 기후 변화에 관한 에세이를 쓰는 거예요.','My assignment is to','과제 내용을 설명할 때 쓰는 자연스러운 표현이에요.','과제 설명','B1','education','pattern',NULL,3),
('s_education_B1_04','In my presentation, I will cover three main points.','발표에서 세 가지 주요 논점을 다룰 거예요.','I will cover','발표 구조를 미리 안내할 때 쓰는 표현이에요.','발표 구조 안내','B1','education','pattern',NULL,4),
('s_education_B1_05','I''m not sure I understand the difference between these two terms.','이 두 용어의 차이를 잘 모르겠어요.','I''m not sure I understand','확신이 없을 때 부드럽게 물어보는 정중한 표현이에요.','개념 확인','B1','education','pattern',NULL,5),
('s_education_B1_06','To sum up, the evidence suggests that practice improves fluency.','요약하면, 증거는 연습이 유창성을 향상시킨다고 제안해요.','To sum up','발표나 에세이를 마무리할 때 쓰는 전형적인 표현이에요.','발표 마무리','B1','education','pattern',NULL,6),
('s_education_B1_07','I applied for a scholarship and I''m waiting to hear back.','장학금을 신청했고 결과를 기다리고 있어요.','waiting to hear back','결과를 기다리는 상황을 표현할 때 쓰는 관용 표현이에요.','장학금 지원','B1','education','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — B2 (7)
-- 주제: 토론 참여 / 학술 토론
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_B2_01','I see your point, but I''d argue that the data supports a different conclusion.','말씀하시는 바는 이해하지만, 데이터는 다른 결론을 지지한다고 생각해요.','I see your point, but I''d argue','반박할 때 상대방을 인정하면서 부드럽게 반론을 제시하는 표현이에요.','학술 토론','B2','education','pattern',NULL,1),
('s_education_B2_02','The methodology used in this study has some significant limitations.','이 연구에 사용된 방법론에는 몇 가지 중요한 한계가 있어요.','significant limitations','연구의 한계를 지적할 때 쓰는 학술적 표현이에요.','연구 비평','B2','education','pattern',NULL,2),
('s_education_B2_03','Could you elaborate on how you operationalised that variable?','그 변수를 어떻게 조작화했는지 좀 더 설명해 주실 수 있어요?','Could you elaborate on','학술 발표에서 방법론을 더 물어볼 때 쓰는 정중한 표현이에요.','연구 방법 질문','B2','education','pattern',NULL,3),
('s_education_B2_04','Building on the previous speaker''s argument, I would like to add that...','이전 발언자의 주장을 바탕으로, 추가하고 싶은 것은...','Building on','토론에서 앞선 의견을 이어받아 자신의 논점을 더할 때 쓰는 표현이에요.','토론 참여','B2','education','pattern',NULL,4),
('s_education_B2_05','The empirical evidence does not fully support this hypothesis.','실증적 증거가 이 가설을 완전히 지지하지는 않아요.','empirical evidence ... does not fully support','학술 글쓰기에서 가설의 한계를 조심스럽게 언급할 때 쓰는 표현이에요.','연구 결과 평가','B2','education','pattern',NULL,5),
('s_education_B2_06','This dissertation critically examines the relationship between pedagogy and identity.','이 논문은 교수법과 정체성의 관계를 비판적으로 검토해요.','critically examines','학위 논문의 목적을 설명할 때 쓰는 학술적 표현이에요.','논문 소개','B2','education','pattern',NULL,6),
('s_education_B2_07','I would contend that peer learning is as effective as direct instruction.','동료 학습이 직접 교수만큼 효과적이라고 주장하고 싶어요.','I would contend that','토론에서 신중하게 주장을 제시할 때 contend를 쓰면 격식 있게 들려요.','학술 주장','B2','education','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — C1 (7)
-- 주제: 논문 표현 / 고급 학술 쓰기
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_C1_01','This study seeks to interrogate the epistemological assumptions underlying conventional pedagogy.','이 연구는 전통적 교수법의 기저에 있는 인식론적 가정을 비판적으로 검토하고자 해요.','interrogate the epistemological assumptions','interrogate는 단순한 검토를 넘어 비판적 질문을 던지는 것을 의미해요.','논문 서론','C1','education','pattern',NULL,1),
('s_education_C1_02','The conceptual framework draws on constructivist and sociocultural theories of learning.','개념적 틀은 구성주의와 사회문화적 학습 이론을 바탕으로 해요.','draws on ... theories','draws on은 이론적 토대를 설명할 때 쓰는 학술적 표현이에요.','이론적 배경','C1','education','pattern',NULL,2),
('s_education_C1_03','The findings substantiate the hypothesis that scaffolding enhances learner autonomy.','연구 결과는 발판식 교수법이 학습자 자율성을 향상시킨다는 가설을 뒷받침해요.','substantiate the hypothesis','substantiate는 주장이나 가설을 증거로 뒷받침함을 의미해요.','연구 결과 기술','C1','education','pattern',NULL,3),
('s_education_C1_04','It is worth noting that the sample size limits the generalisability of these findings.','표본 크기가 연구 결과의 일반화 가능성을 제한한다는 점을 언급할 필요가 있어요.','It is worth noting that','학술 글쓰기에서 한계나 주의사항을 부드럽게 제시하는 표현이에요.','연구 한계 기술','C1','education','pattern',NULL,4),
('s_education_C1_05','Reflexivity demands that the researcher acknowledge their own positionality.','성찰성은 연구자가 자신의 위치성을 인정할 것을 요구해요.','demands that the researcher acknowledge','연구 윤리 논의에서 연구자의 성찰을 강조하는 학술 표현이에요.','연구 윤리','C1','education','pattern',NULL,5),
('s_education_C1_06','The literature review reveals a significant lacuna in studies on postgraduate wellbeing.','문헌 검토는 대학원생 복지에 관한 연구의 중요한 공백을 드러내요.','reveals a significant lacuna','lacuna는 지식이나 연구의 빈 공간을 뜻하는 고급 학술 어휘예요.','문헌 검토','C1','education','pattern',NULL,6),
('s_education_C1_07','This paper posits that critical pedagogy must account for the socioeconomic context of learners.','이 논문은 비판적 교수법이 학습자의 사회경제적 맥락을 고려해야 한다고 상정해요.','posits that','posit은 논문에서 핵심 가정이나 전제를 제시할 때 쓰는 정확한 학술어예요.','논문 핵심 주장','C1','education','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — C2 (7)
-- 주제: 최고급 학술 표현 / 철학적 논증
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_C2_01','Derrida''s deconstructive reading destabilises the binary between teacher authority and learner agency.','데리다의 해체적 독해는 교사 권위와 학습자 주체성의 이분법을 불안정하게 해요.','destabilises the binary between','destabilise a binary는 후기 구조주의 담론에서 핵심적인 표현이에요.','철학적 비평','C2','education','pattern',NULL,1),
('s_education_C2_02','Foucault''s episteme provides a lens through which to examine the archaeology of educational knowledge.','푸코의 에피스테메는 교육 지식의 고고학을 검토하는 렌즈를 제공해요.','provides a lens through which to examine','provides a lens through which는 고급 학술 글쓰기에서 분석 도구를 소개할 때 쓰는 전형적 표현이에요.','담론 분석','C2','education','pattern',NULL,2),
('s_education_C2_03','The falsifiability criterion challenges normative assumptions embedded in positivist research paradigms.','반증 가능성 기준은 실증주의 연구 패러다임에 내재된 규범적 가정에 도전해요.','challenges normative assumptions embedded in','embedded in은 무언가가 더 큰 구조 속에 깊이 자리 잡고 있음을 표현해요.','과학 철학 논의','C2','education','pattern',NULL,3),
('s_education_C2_04','Hegemonic discourse in curricula reproduces socioeconomic inequalities through the hidden curriculum.','교육 과정의 헤게모니적 담론은 잠재적 교육 과정을 통해 사회경제적 불평등을 재생산해요.','reproduces ... through the hidden curriculum','hidden curriculum은 공식 과목 외에 무의식적으로 전달되는 가치를 뜻하는 교육학 용어예요.','비판 교육학','C2','education','pattern',NULL,4),
('s_education_C2_05','Phenomenological inquiry foregrounds the lived experience of learners as the primary unit of analysis.','현상학적 탐구는 학습자의 살아있는 경험을 분석의 주요 단위로 전면에 내세워요.','foregrounds the lived experience','foreground는 무언가를 중심이나 전면에 배치한다는 의미의 학술적 동사예요.','연구 방법론 논의','C2','education','pattern',NULL,5),
('s_education_C2_06','Rhizomatic learning theory, as advanced by Cormier, resists arborescent models of knowledge transmission.','코미에가 발전시킨 리좀적 학습 이론은 나무형 지식 전달 모델에 저항해요.','resists arborescent models','arborescent은 나무처럼 계층적이고 선형적인 구조를 뜻하는 들뢰즈 철학 용어예요.','교육 이론 논의','C2','education','pattern',NULL,6),
('s_education_C2_07','The praxis-oriented approach collapses the distinction between knowledge production and social transformation.','프락시스 지향 접근은 지식 생산과 사회 변혁 사이의 구분을 무너뜨려요.','collapses the distinction between','collapse a distinction은 두 개념 사이의 경계를 허물 때 쓰는 고급 학술 표현이에요.','비판 이론','C2','education','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;


-- ============================================
-- TOPIC: news
-- ============================================
-- EngCat — 시사·뉴스 (news) 단어 + 패턴 데이터
-- 210 words (35 per CEFR A1~C2) + 42 patterns (7 per CEFR A1~C2)
-- Schema: words v2 (cefr, priority, image_keyword) + sentences v2 (type, cefr)

-- ══════════════════════════════════════
-- WORDS — A1
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_A1_01','news','/njuːz/','noun','뉴스','New information about recent events or happenings.','Did you watch the {news} last night?','어젯밤 뉴스 봤어요?','news','A1','news',1,'news television broadcast anchor'),
('w_news_A1_02','report','/rɪˈpɔːrt/','noun','보도, 보고서','A spoken or written account of an event or situation.','The {report} says the storm will arrive tomorrow.','보도에 따르면 내일 폭풍이 온대요.','report','A1','news',1,'newspaper reporter microphone'),
('w_news_A1_03','country','/ˈkʌntri/','noun','나라, 국가','A nation with its own government and territory.','Which {country} is hosting the next World Cup?','다음 월드컵은 어느 나라에서 열려요?','country','A1','news',1,'world map flag nation'),
('w_news_A1_04','people','/ˈpiːpəl/','noun','사람들','A group of human beings in general.','Many {people} are watching the news online now.','이제 많은 사람들이 온라인으로 뉴스를 봐요.','people','A1','news',1,'crowd public gathering community'),
('w_news_A1_05','government','/ˈɡʌvərnmənt/','noun','정부','The group of people who officially lead a country.','The {government} announced a new health plan.','정부가 새로운 보건 계획을 발표했어요.','government','A1','news',1,'parliament building official policy'),
('w_news_A1_06','war','/wɔːr/','noun','전쟁','Armed conflict between nations or groups.','The {war} ended after many years of fighting.','긴 전투 끝에 전쟁이 끝났어요.','war','A1','news',1,'soldier military conflict battlefield'),
('w_news_A1_07','election','/ɪˈlekʃən/','noun','선거','A formal process in which people vote to choose a leader.','The {election} will be held next month.','선거는 다음 달에 열려요.','election','A1','news',1,'ballot voting booth democracy'),
('w_news_A1_08','money','/ˈmʌni/','noun','돈, 자금','A medium of exchange used to buy goods or services.','The government is spending a lot of {money} on hospitals.','정부가 병원에 많은 돈을 쓰고 있어요.','money','A1','news',1,'coins currency economy finance'),
('w_news_A1_09','event','/ɪˈvent/','noun','사건, 행사','A thing that happens, especially one of importance.','This {event} changed the history of the country.','이 사건은 나라의 역사를 바꿨어요.','event','A1','news',1,'newspaper headline breaking news'),
('w_news_A1_10','world','/wɜːrld/','noun','세계','The earth and all the people and things on it.','The {world} is watching what happens next.','세계가 다음에 무슨 일이 일어날지 지켜보고 있어요.','world','A1','news',1,'globe earth international satellite'),
('w_news_A1_11','story','/ˈstɔːri/','noun','기사, 이야기','A news article or broadcast report about an event.','This {story} is on the front page today.','이 기사가 오늘 1면에 실렸어요.','story','A1','news',2,'newspaper front page article'),
('w_news_A1_12','today','/təˈdeɪ/','adverb','오늘','On this present day.','What happened in the news {today}?','오늘 뉴스에서 무슨 일이 있었어요?','today','A1','news',2,'calendar morning daily current'),
('w_news_A1_13','live','/lɪv/','adjective','생방송의','Broadcast at the time of happening, not pre-recorded.','We are watching the speech {live}.','연설을 생방송으로 보고 있어요.','live','A1','news',2,'broadcast television camera live stream'),
('w_news_A1_14','fire','/faɪər/','noun','화재','The rapid burning of something, especially a building.','A big {fire} destroyed the building last night.','어젯밤 큰 화재가 건물을 태웠어요.','fire','A1','news',2,'firefighter flames smoke emergency'),
('w_news_A1_15','police','/pəˈliːs/','noun','경찰','The civil force responsible for law and order.','The {police} arrived at the scene quickly.','경찰이 현장에 빠르게 도착했어요.','police','A1','news',2,'police car siren officer badge'),
('w_news_A1_16','flood','/flʌd/','noun','홍수','An overflow of water onto normally dry land.','The {flood} damaged hundreds of homes.','홍수가 수백 채의 집을 손상시켰어요.','flood','A1','news',2,'flood water disaster rescue'),
('w_news_A1_17','city','/ˈsɪti/','noun','도시','A large and important town.','The {city} held a public meeting about the news.','그 도시는 뉴스에 대한 공개 회의를 열었어요.','city','A1','news',2,'cityscape urban buildings downtown'),
('w_news_A1_18','year','/jɪər/','noun','해, 연도','A period of twelve months.','This has been a historic {year} for the country.','올해는 나라에 역사적인 해였어요.','year','A1','news',2,'calendar timeline annual'),
('w_news_A1_19','help','/help/','verb','돕다','To make it easier for someone to do something.','Volunteers came to {help} after the disaster.','재난 후 자원봉사자들이 도우러 왔어요.','help','A1','news',2,'volunteer aid relief charity'),
('w_news_A1_20','new','/njuː/','adjective','새로운','Not existing before; recently made or discovered.','A {new} law was passed in the parliament.','의회에서 새로운 법이 통과됐어요.','new','A1','news',2,'announcement fresh update policy'),
('w_news_A1_21','true','/truː/','adjective','사실인','In accordance with fact or reality.','Is this news story {true}?','이 뉴스 기사가 사실인가요?','true','A1','news',2,'fact verification truth check'),
('w_news_A1_22','press','/pres/','noun','언론','Newspapers and journalists considered as a group.','The {press} was not allowed at the meeting.','회의에 언론이 허용되지 않았어요.','press','A1','news',2,'journalist camera microphone media'),
('w_news_A1_23','leader','/ˈliːdər/','noun','지도자, 대표','A person who leads a group or country.','The world {leader} spoke at the United Nations.','세계 지도자가 유엔에서 연설했어요.','leader','A1','news',2,'president podium speech flag'),
('w_news_A1_24','army','/ˈɑːrmi/','noun','군대','The military forces of a country.','The {army} was sent to the border.','군대가 국경으로 파견됐어요.','army','A1','news',2,'military soldiers uniform base'),
('w_news_A1_25','attack','/əˈtæk/','noun','공격','A violent action against a person or place.','The {attack} happened in the capital city.','공격은 수도에서 일어났어요.','attack','A1','news',3,'security threat defense emergency'),
('w_news_A1_26','meeting','/ˈmiːtɪŋ/','noun','회의, 회담','A gathering of people for discussion.','The leaders held an emergency {meeting} today.','지도자들이 오늘 긴급 회의를 열었어요.','meeting','A1','news',2,'conference table leaders discussion'),
('w_news_A1_27','food','/fuːd/','noun','식량','Substances eaten to provide energy and nutrition.','Many people do not have enough {food} after the disaster.','재난 후 많은 사람들이 충분한 식량이 없어요.','food','A1','news',2,'aid food relief supply'),
('w_news_A1_28','school','/skuːl/','noun','학교','A place where children are educated.','The government will build more {schools} next year.','정부가 내년에 학교를 더 지을 거예요.','school','A1','news',2,'education children classroom building'),
('w_news_A1_29','hospital','/ˈhɒspɪtəl/','noun','병원','A place where sick or injured people receive medical care.','Three new {hospitals} will open this year.','올해 세 곳의 새 병원이 문을 열어요.','hospital','A1','news',2,'medical care healthcare building'),
('w_news_A1_30','power','/ˈpaʊər/','noun','권력, 전력','The ability to control people or events; also electricity.','The storm cut the {power} for thousands of homes.','폭풍이 수천 채의 집의 전력을 끊었어요.','power','A1','news',2,'electricity grid blackout energy'),
('w_news_A1_31','north','/nɔːrθ/','noun','북쪽, 북부','The direction toward the North Pole; the northern part of a region.','The storm is moving toward the {north}.','폭풍이 북쪽으로 이동하고 있어요.','north','A1','news',3,'compass map direction region'),
('w_news_A1_32','winner','/ˈwɪnər/','noun','승자, 당선자','A person or group that wins an election or competition.','The {winner} of the election was announced this morning.','선거 당선자가 오늘 아침 발표됐어요.','winner','A1','news',2,'election result vote celebrate'),
('w_news_A1_33','dead','/ded/','adjective','사망한','No longer living.','The official said ten people are {dead}.','관리는 열 명이 사망했다고 말했어요.','dead','A1','news',2,'memorial funeral tragedy loss'),
('w_news_A1_34','safe','/seɪf/','adjective','안전한','Protected from danger or risk.','Rescue teams confirmed all passengers are {safe}.','구조대는 모든 승객이 안전하다고 확인했어요.','safe','A1','news',2,'rescue safety relief team'),
('w_news_A1_35','map','/mæp/','noun','지도','A diagram representing the geographic features of an area.','The news showed a {map} of the affected regions.','뉴스에서 피해 지역의 지도를 보여줬어요.','map','A1','news',2,'geography region area borders')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — A2
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_A2_01','politics','/ˈpɒlɪtɪks/','noun','정치','Activities associated with governing a country or area.','She is very interested in {politics} and current affairs.','그녀는 정치와 시사에 매우 관심이 있어요.','politics','A2','news',1,'parliament politics debate vote'),
('w_news_A2_02','economy','/ɪˈkɒnəmi/','noun','경제','The system of trade and industry in a country.','The {economy} grew by three percent last year.','경제는 지난해 3% 성장했어요.','economy','A2','news',1,'chart growth finance money'),
('w_news_A2_03','protest','/ˈprəʊtest/','noun','시위','A public demonstration against a policy or action.','Thousands joined the {protest} in the capital.','수천 명이 수도에서 시위에 참가했어요.','protest','A2','news',1,'crowd sign banner street march'),
('w_news_A2_04','vote','/vəʊt/','verb','투표하다','To express a choice in an election or poll.','Citizens went to the polls to {vote} yesterday.','시민들이 어제 투표하러 투표소에 갔어요.','vote','A2','news',1,'ballot box election democracy'),
('w_news_A2_05','president','/ˈprezɪdənt/','noun','대통령','The elected head of a republic.','The {president} gave a speech about national security.','대통령이 국가 안보에 대한 연설을 했어요.','president','A2','news',1,'flag podium speech official'),
('w_news_A2_06','law','/lɔː/','noun','법률','A rule made by a government that must be obeyed.','A new {law} banning single-use plastics was passed.','일회용 플라스틱을 금지하는 새 법이 통과됐어요.','law','A2','news',1,'gavel justice legal court'),
('w_news_A2_07','crime','/kraɪm/','noun','범죄','An illegal act that can be punished by law.','The government promised to reduce {crime} in cities.','정부는 도시 범죄를 줄이겠다고 약속했어요.','crime','A2','news',1,'police handcuffs justice court'),
('w_news_A2_08','health','/helθ/','noun','건강, 보건','The state of physical and mental well-being.','The ministry of {health} released new guidelines.','보건부가 새 지침을 발표했어요.','health','A2','news',1,'hospital medical healthcare policy'),
('w_news_A2_09','disaster','/dɪˈzɑːstər/','noun','재난','A sudden event causing great damage or suffering.','International aid arrived after the natural {disaster}.','자연재난 이후 국제 원조가 도착했어요.','disaster','A2','news',1,'earthquake flood rescue emergency'),
('w_news_A2_10','international','/ˌɪntəˈnæʃənəl/','adjective','국제적인','Involving two or more countries.','The summit attracted {international} media coverage.','정상 회담은 국제 언론의 주목을 받았어요.','international','A2','news',1,'globe flag summit diplomacy'),
('w_news_A2_11','minister','/ˈmɪnɪstər/','noun','장관','A senior government official in charge of a department.','The finance {minister} announced a new budget plan.','재무 장관이 새로운 예산안을 발표했어요.','minister','A2','news',1,'government official suit briefing'),
('w_news_A2_12','agreement','/əˈɡriːmənt/','noun','합의, 협정','A negotiated arrangement between parties.','The two countries signed a trade {agreement}.','두 나라가 무역 협정에 서명했어요.','agreement','A2','news',1,'handshake signing document treaty'),
('w_news_A2_13','border','/ˈbɔːrdər/','noun','국경','A line dividing two countries or regions.','Thousands of refugees are waiting at the {border}.','수천 명의 난민이 국경에서 기다리고 있어요.','border','A2','news',2,'fence gate border checkpoint'),
('w_news_A2_14','refugee','/ˌrefjʊˈdʒiː/','noun','난민','A person who has fled their home country due to danger.','The UN is helping {refugees} find safe shelter.','유엔이 난민들이 안전한 피난처를 찾도록 돕고 있어요.','refugees','A2','news',2,'camp shelter aid UN'),
('w_news_A2_15','statement','/ˈsteɪtmənt/','noun','성명','A formal declaration made by an official or organization.','The president released a {statement} on the crisis.','대통령이 위기에 대한 성명을 발표했어요.','statement','A2','news',2,'press conference podium microphone'),
('w_news_A2_16','announce','/əˈnaʊns/','verb','발표하다','To make a public declaration about something.','The prime minister will {announce} new measures today.','총리가 오늘 새로운 조치를 발표할 거예요.','announce','A2','news',2,'microphone podium press briefing'),
('w_news_A2_17','tax','/tæks/','noun','세금','A compulsory payment to the government.','The new budget will raise income {tax}.','새 예산은 소득세를 올릴 거예요.','tax','A2','news',2,'money finance government revenue'),
('w_news_A2_18','trade','/treɪd/','noun','무역','The buying and selling of goods between countries.','The new deal will boost {trade} between the two nations.','새 협정이 두 나라 사이의 무역을 촉진할 거예요.','trade','A2','news',2,'cargo ship port exchange'),
('w_news_A2_19','climate','/ˈklaɪmɪt/','noun','기후','The weather conditions of a region over a long period.','World leaders discussed {climate} change at the summit.','세계 지도자들이 정상 회담에서 기후 변화를 논의했어요.','climate','A2','news',2,'environment earth green energy'),
('w_news_A2_20','victim','/ˈvɪktɪm/','noun','피해자, 희생자','A person who suffers as a result of an event.','Aid organizations are helping the {victims} of the flood.','구호 단체들이 홍수 피해자들을 돕고 있어요.','victims','A2','news',2,'rescue aid relief flood'),
('w_news_A2_21','judge','/dʒʌdʒ/','noun','판사','An official who decides cases in a court of law.','The {judge} sentenced the man to five years in prison.','판사가 그 남자에게 5년 징역형을 선고했어요.','judge','A2','news',2,'court gavel justice legal'),
('w_news_A2_22','survey','/ˈsɜːrveɪ/','noun','여론 조사','A study of people''s opinions on a particular topic.','A recent {survey} shows most people support the new law.','최근 여론 조사에 따르면 대부분의 사람들이 새 법을 지지해요.','survey','A2','news',2,'poll data chart statistics'),
('w_news_A2_23','official','/əˈfɪʃəl/','noun','관리, 공무원','A person holding a position of authority in an organization.','A government {official} confirmed the news.','정부 관리가 소식을 확인해 줬어요.','official','A2','news',2,'suit badge authority government'),
('w_news_A2_24','peace','/piːs/','noun','평화','A state of freedom from war or conflict.','Both sides agreed to work toward {peace}.','양측이 평화를 향해 노력하기로 합의했어요.','peace','A2','news',1,'dove hands flag diplomacy'),
('w_news_A2_25','poverty','/ˈpɒvərti/','noun','빈곤','The state of being extremely poor.','The new policy aims to reduce {poverty} in rural areas.','새 정책은 농촌 지역의 빈곤을 줄이는 것을 목표로 해요.','poverty','A2','news',2,'village aid development charity'),
('w_news_A2_26','media','/ˈmiːdiə/','noun','미디어, 언론','Television, radio, newspapers, and the internet as a group.','The {media} reported on the scandal all week.','미디어가 일주일 내내 스캔들을 보도했어요.','media','A2','news',2,'television newspaper internet broadcast'),
('w_news_A2_27','population','/ˌpɒpjʊˈleɪʃən/','noun','인구','All the people living in a particular country or area.','The {population} of the city grew by five percent.','그 도시 인구가 5% 증가했어요.','population','A2','news',2,'crowd city demographic growth'),
('w_news_A2_28','education','/ˌedʒʊˈkeɪʃən/','noun','교육','The process of teaching and learning in a society.','The government will invest more in {education} this year.','정부가 올해 교육에 더 많이 투자할 거예요.','education','A2','news',2,'school books children classroom'),
('w_news_A2_29','security','/sɪˈkjʊərɪti/','noun','보안, 안보','The state of being free from danger or threat.','The summit required tight {security} measures.','정상 회담에는 엄격한 보안 조치가 필요했어요.','security','A2','news',2,'guard gate camera safety'),
('w_news_A2_30','injury','/ˈɪndʒəri/','noun','부상','Physical harm or damage to a person''s body.','The report confirmed twelve {injuries} in the accident.','보도는 사고에서 12명의 부상을 확인했어요.','injuries','A2','news',2,'ambulance hospital medical emergency'),
('w_news_A2_31','crisis','/ˈkraɪsɪs/','noun','위기','A time of intense difficulty or danger.','The government is responding to the economic {crisis}.','정부가 경제 위기에 대응하고 있어요.','crisis','A2','news',1,'alarm emergency red alert warning'),
('w_news_A2_32','army','/ˈɑːrmi/','noun','군대','The land-based armed forces of a country.','The {army} was deployed to control the situation.','군대가 상황을 통제하기 위해 배치됐어요.','army','A2','news',2,'military soldiers uniform patrol'),
('w_news_A2_33','protest','/prəˈtest/','verb','항의하다','To express strong objection to something publicly.','Students {protested} outside the parliament building.','학생들이 의회 건물 밖에서 항의했어요.','protested','A2','news',2,'rally sign banner street'),
('w_news_A2_34','prime','/praɪm/','adjective','주요한, 최고의','Of first importance; most excellent.','The {prime} minister addressed the nation on television.','총리가 텔레비전으로 국민에게 연설했어요.','prime','A2','news',1,'parliament speech podium flag'),
('w_news_A2_35','budget','/ˈbʌdʒɪt/','noun','예산','An estimate of income and expenditure for a set period.','The government presented its annual {budget} today.','정부가 오늘 연간 예산을 발표했어요.','budget','A2','news',1,'finance money chart government')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B1
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_B1_01','policy','/ˈpɒlɪsi/','noun','정책','A course of action adopted by a government or organization.','The new energy {policy} will reduce carbon emissions.','새 에너지 정책이 탄소 배출을 줄일 거예요.','policy','B1','news',1,'document government plan strategy'),
('w_news_B1_02','reform','/rɪˈfɔːrm/','noun','개혁','A change made to improve a system or institution.','The party is pushing for major economic {reforms}.','그 정당은 주요 경제 개혁을 추진하고 있어요.','reforms','B1','news',1,'parliament chart change progress'),
('w_news_B1_03','parliament','/ˈpɑːrləmənt/','noun','의회','The group of elected representatives who make the laws.','The bill passed through {parliament} with a large majority.','그 법안은 큰 다수결로 의회를 통과했어요.','parliament','B1','news',1,'legislative building democracy vote'),
('w_news_B1_04','controversy','/ˈkɒntrəvɜːrsi/','noun','논란','Prolonged public disagreement or heated debate.','The decision sparked {controversy} across the country.','그 결정은 전국적으로 논란을 일으켰어요.','controversy','B1','news',2,'debate protest media opinion'),
('w_news_B1_05','scandal','/ˈskændəl/','noun','스캔들, 추문','An action or event causing public outrage or shock.','The financial {scandal} forced the minister to resign.','금융 스캔들로 장관이 사임해야 했어요.','scandal','B1','news',2,'headlines media expose tabloid'),
('w_news_B1_06','minister','/ˈmɪnɪstər/','noun','장관','A member of the cabinet in charge of a government department.','The defense {minister} briefed the parliament on the threat.','국방 장관이 의회에 위협에 대해 브리핑했어요.','minister','B1','news',1,'suit official parliament policy'),
('w_news_B1_07','legislation','/ˌledʒɪˈsleɪʃən/','noun','입법, 법률','Laws that have been enacted by a legislature.','New {legislation} on data privacy was introduced this week.','이번 주 데이터 프라이버시에 관한 새 입법이 도입됐어요.','legislation','B1','news',1,'law book parliament document'),
('w_news_B1_08','opposition','/ˌɒpəˈzɪʃən/','noun','야당, 반대 세력','The political parties that are not in government.','The {opposition} called for an independent inquiry.','야당이 독립 조사를 요구했어요.','opposition','B1','news',2,'parliament debate politics dissent'),
('w_news_B1_09','coalition','/ˌkəʊəˈlɪʃən/','noun','연립 정부','A temporary union of political parties to form a government.','The two parties formed a {coalition} government.','두 정당이 연립 정부를 구성했어요.','coalition','B1','news',2,'handshake agreement politics alliance'),
('w_news_B1_10','bilateral','/ˌbaɪˈlætərəl/','adjective','양자 간의','Involving two parties, especially two countries.','The presidents met for {bilateral} trade talks.','대통령들이 양자 무역 회담을 위해 만났어요.','bilateral','B1','news',2,'flags handshake diplomacy summit'),
('w_news_B1_11','inquiry','/ɪnˈkwaɪəri/','noun','조사, 심의','An official investigation into something.','A public {inquiry} was opened into the accident.','사고에 대한 공개 조사가 시작됐어요.','inquiry','B1','news',2,'investigation report judge committee'),
('w_news_B1_12','campaign','/kæmˈpeɪn/','noun','선거 운동, 캠페인','A series of planned activities to achieve a particular goal.','She launched a {campaign} to raise awareness of poverty.','그녀는 빈곤 인식 제고를 위한 캠페인을 시작했어요.','campaign','B1','news',2,'poster rally vote awareness'),
('w_news_B1_13','resign','/rɪˈzaɪn/','verb','사임하다','To officially leave a job or position.','The minister was forced to {resign} over the scandal.','장관은 스캔들로 인해 사임해야 했어요.','resign','B1','news',2,'press conference exit politics'),
('w_news_B1_14','corruption','/kəˈrʌpʃən/','noun','부패','Dishonest or illegal behavior, especially by those in power.','The investigation exposed widespread {corruption} in the ministry.','조사는 부처 내 광범위한 부패를 드러냈어요.','corruption','B1','news',2,'money briefcase bribe illegal'),
('w_news_B1_15','inflation','/ɪnˈfleɪʃən/','noun','인플레이션','A general increase in prices over time.','High {inflation} is making everyday goods more expensive.','높은 인플레이션이 일상 용품을 더 비싸게 만들고 있어요.','inflation','B1','news',2,'price chart rising cost money'),
('w_news_B1_16','treaty','/ˈtriːti/','noun','조약','A formal agreement between countries.','The two nations signed a historic peace {treaty}.','두 나라가 역사적인 평화 조약에 서명했어요.','treaty','B1','news',2,'document signing ceremony flag'),
('w_news_B1_17','ceasefire','/ˈsiːsfaɪər/','noun','휴전','A temporary stop of fighting, agreed between warring sides.','Both sides agreed to a {ceasefire} starting at midnight.','양측이 자정부터 시작하는 휴전에 합의했어요.','ceasefire','B1','news',2,'soldiers white flag peace calm'),
('w_news_B1_18','summit','/ˈsʌmɪt/','noun','정상 회담','A meeting between the leaders of two or more countries.','The G7 {summit} will address climate change this year.','G7 정상 회담이 올해 기후 변화를 다룰 거예요.','summit','B1','news',2,'leaders flags conference table'),
('w_news_B1_19','sanction','/ˈsæŋkʃən/','noun','제재','A penalty or restriction imposed against a country or entity.','New economic {sanctions} were imposed on the regime.','그 정권에 새로운 경제 제재가 부과됐어요.','sanctions','B1','news',2,'trade restriction penalty embargo'),
('w_news_B1_20','humanitarian','/hjuːˌmænɪˈteəriən/','adjective','인도주의적','Concerned with or seeking to promote human welfare.','The UN called for {humanitarian} aid to be allowed in.','유엔은 인도주의적 지원이 허용되어야 한다고 촉구했어요.','humanitarian','B1','news',2,'aid relief UN charity'),
('w_news_B1_21','infrastructure','/ˈɪnfrəstrʌktʃər/','noun','사회 기반 시설','The basic physical systems of a country or region.','The government plans to invest in {infrastructure} projects.','정부가 사회 기반 시설 프로젝트에 투자할 계획이에요.','infrastructure','B1','news',2,'bridge road construction building'),
('w_news_B1_22','negotiation','/nɪˌɡəʊʃiˈeɪʃən/','noun','협상','Discussion aimed at reaching an agreement.','Peace {negotiations} are expected to resume next week.','평화 협상이 다음 주에 재개될 것으로 예상돼요.','negotiations','B1','news',2,'table diplomacy handshake talk'),
('w_news_B1_23','demonstrate','/ˈdemənstreɪt/','verb','시위하다','To publicly protest or show support for a cause.','Thousands {demonstrated} against the new tax policy.','수천 명이 새 세금 정책에 반대하여 시위했어요.','demonstrated','B1','news',2,'march banner protest crowd'),
('w_news_B1_24','unemployment','/ˌʌnɪmˈplɔɪmənt/','noun','실업','The condition of being without a paid job.','The latest figures show {unemployment} has risen to 8%.','최신 수치에 따르면 실업률이 8%로 올랐어요.','unemployment','B1','news',2,'job center queue line economy'),
('w_news_B1_25','verdict','/ˈvɜːrdɪkt/','noun','평결, 판결','A decision reached by a jury or judge in a legal trial.','The court delivered its {verdict} this morning.','법원이 오늘 아침 판결을 내렸어요.','verdict','B1','news',2,'courtroom gavel judge jury'),
('w_news_B1_26','press conference','/pres ˈkɒnfərəns/','noun','기자 회견','A meeting at which an official speaks to journalists.','The prime minister held a {press conference} after the vote.','총리가 투표 후 기자 회견을 열었어요.','press conference','B1','news',2,'microphone journalist podium camera'),
('w_news_B1_27','majority','/məˈdʒɒrɪti/','noun','과반수, 다수','The greater number or part of something.','The bill passed with a narrow {majority} in parliament.','그 법안은 의회에서 간신히 과반수로 통과됐어요.','majority','B1','news',2,'vote election graph result'),
('w_news_B1_28','accusation','/ˌækjʊˈzeɪʃən/','noun','고발, 혐의','A claim that someone has done something wrong or illegal.','He denied all {accusations} of wrongdoing.','그는 모든 비리 혐의를 부인했어요.','accusations','B1','news',2,'court legal press denial'),
('w_news_B1_29','turnout','/ˈtɜːrnaʊt/','noun','투표율, 참여율','The number of people attending or participating in an event.','Voter {turnout} reached a record high this election.','이번 선거에서 투표율이 역대 최고를 기록했어요.','turnout','B1','news',2,'ballot box queue voters'),
('w_news_B1_30','impose','/ɪmˈpəʊz/','verb','부과하다','To establish a rule, tax, or restriction by authority.','The government will {impose} stricter penalties for tax evasion.','정부가 탈세에 더 엄격한 처벌을 부과할 거예요.','impose','B1','news',2,'authority law gavel penalty'),
('w_news_B1_31','ally','/ˈælaɪ/','noun','동맹국','A country formally cooperating with another for a common goal.','The US called on its {allies} to support the resolution.','미국이 결의안을 지지해 달라고 동맹국들에 촉구했어요.','allies','B1','news',2,'flags alliance partnership military'),
('w_news_B1_32','evidence','/ˈevɪdəns/','noun','증거','Facts or information showing whether something is true.','The court examined new {evidence} in the case.','법원이 사건에서 새로운 증거를 검토했어요.','evidence','B1','news',2,'courtroom document investigation files'),
('w_news_B1_33','democracy','/dɪˈmɒkrəsi/','noun','민주주의','A system of government in which people vote for their leaders.','Protecting {democracy} requires active citizen participation.','민주주의를 보호하려면 시민의 적극적인 참여가 필요해요.','democracy','B1','news',1,'ballot box flag parliament constitution'),
('w_news_B1_34','refugee','/ˌrefjʊˈdʒiː/','noun','난민','A person forced to flee their country due to conflict or disaster.','The crisis has created over a million {refugees}.','위기로 인해 백만 명 이상의 난민이 생겼어요.','refugees','B1','news',2,'camp tent border UNHCR'),
('w_news_B1_35','deadline','/ˈdedlaɪn/','noun','시한, 기한','A point in time by which something must be done.','The government missed the {deadline} for submitting the budget.','정부가 예산 제출 시한을 놓쳤어요.','deadline','B1','news',2,'clock calendar urgent time')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B2
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_B2_01','geopolitics','/ˌdʒiːəʊˈpɒlɪtɪks/','noun','지정학','The study of how geography and power shape world affairs.','{Geopolitics} in East Asia has shifted significantly this decade.','이번 십 년간 동아시아 지정학이 크게 변했어요.','Geopolitics','B2','news',1,'map region power rivalry strategy'),
('w_news_B2_02','sanctions','/ˈsæŋkʃənz/','noun','제재 조치','Economic or political penalties imposed by one country on another.','The UN imposed sweeping {sanctions} on the regime.','유엔이 그 정권에 광범위한 제재를 부과했어요.','sanctions','B2','news',1,'trade restriction penalty embargo'),
('w_news_B2_03','diplomatic','/ˌdɪpləˈmætɪk/','adjective','외교적인','Relating to the management of international relations.','Both governments agreed to resume {diplomatic} ties.','두 정부가 외교 관계를 재개하기로 합의했어요.','diplomatic','B2','news',1,'embassy flag handshake diplomat'),
('w_news_B2_04','incumbent','/ɪnˈkʌmbənt/','adjective','현직의','Currently holding a particular office or position.','The {incumbent} president won re-election by a wide margin.','현직 대통령이 큰 차이로 재선에 성공했어요.','incumbent','B2','news',2,'election result president podium'),
('w_news_B2_05','sovereignty','/ˈsɒvrɪnti/','noun','주권','The full right and power of a country to govern itself.','The treaty was seen as a threat to national {sovereignty}.','그 조약은 국가 주권에 대한 위협으로 여겨졌어요.','sovereignty','B2','news',2,'flag border constitution nation'),
('w_news_B2_06','multilateral','/ˌmʌltiˈlætərəl/','adjective','다자간의','Involving three or more parties, especially countries.','A {multilateral} approach is needed to solve the climate crisis.','기후 위기를 해결하려면 다자간 접근이 필요해요.','multilateral','B2','news',2,'UN globe summit delegates'),
('w_news_B2_07','referendum','/ˌrefəˈrendəm/','noun','국민 투표','A direct vote by the electorate on a single political question.','Citizens voted in a {referendum} on independence.','시민들이 독립에 관한 국민 투표에 참여했어요.','referendum','B2','news',2,'ballot box vote democracy flag'),
('w_news_B2_08','austerity','/ɒˈsterɪti/','noun','긴축 재정','Difficult economic conditions created by government spending cuts.','The {austerity} measures triggered widespread protests.','긴축 조치가 광범위한 시위를 촉발했어요.','austerity','B2','news',2,'budget cuts economy protest'),
('w_news_B2_09','coup','/kuː/','noun','쿠데타','A sudden, violent seizure of power from a government.','The military staged a {coup} in the early hours of the morning.','군이 이른 아침에 쿠데타를 일으켰어요.','coup','B2','news',2,'military tanks government overthrow'),
('w_news_B2_10','insurgency','/ɪnˈsɜːrdʒənsi/','noun','반란','An active revolt or uprising against an authority or government.','The army is battling a long-running {insurgency} in the north.','군은 북부에서 오래 지속된 반란과 싸우고 있어요.','insurgency','B2','news',3,'soldiers jungle conflict militia'),
('w_news_B2_11','accountability','/əˌkaʊntəˈbɪlɪti/','noun','책임 (제도적)','The fact of being held responsible for one''s actions or decisions.','There is growing demand for political {accountability}.','정치적 책임에 대한 요구가 높아지고 있어요.','accountability','B2','news',2,'audit investigation report committee'),
('w_news_B2_12','populism','/ˈpɒpjʊlɪzəm/','noun','포퓰리즘','A political approach that appeals to ordinary people''s concerns against elites.','The rise of {populism} has reshaped politics in many countries.','포퓰리즘의 부상이 많은 나라의 정치를 바꿔놓았어요.','populism','B2','news',2,'rally crowd speech election'),
('w_news_B2_13','authoritarian','/ɔːˌθɒrɪˈteəriən/','adjective','권위주의적인','Favoring or enforcing strict obedience to authority.','Critics say the new laws are {authoritarian} in nature.','비평가들은 새 법이 권위주의적 성격이라고 말해요.','authoritarian','B2','news',2,'control surveillance power state'),
('w_news_B2_14','propaganda','/ˌprɒpəˈɡændə/','noun','선전','Information spread to promote a particular political agenda.','The report accused the government of spreading {propaganda}.','그 보도는 정부가 선전을 퍼뜨리고 있다고 비난했어요.','propaganda','B2','news',2,'poster media broadcast bias'),
('w_news_B2_15','disinformation','/dɪsˌɪnfəˈmeɪʃən/','noun','허위 정보','False information spread deliberately to deceive people.','Social media has become a major source of {disinformation}.','소셜 미디어가 허위 정보의 주요 출처가 됐어요.','disinformation','B2','news',2,'fake news screen social media'),
('w_news_B2_16','embargo','/ɪmˈbɑːrɡəʊ/','noun','금수 조치','An official ban on trade with a particular country.','An arms {embargo} was placed on the country by the UN.','유엔이 그 나라에 무기 금수 조치를 부과했어요.','embargo','B2','news',2,'trade ban cargo ship restriction'),
('w_news_B2_17','mediation','/ˌmiːdiˈeɪʃən/','noun','조정, 중재','Intervention in a dispute to bring about a settlement.','International {mediation} helped end the conflict.','국제 조정이 분쟁 종식에 도움이 됐어요.','mediation','B2','news',2,'diplomacy negotiation peace table'),
('w_news_B2_18','polarization','/ˌpəʊlərɪˈzeɪʃən/','noun','양극화','The division of something into two sharply contrasting groups.','Political {polarization} has deepened in recent years.','최근 몇 년간 정치적 양극화가 심화됐어요.','polarization','B2','news',2,'divide society left right politics'),
('w_news_B2_19','narrative','/ˈnærətɪv/','noun','서사, 담론','A story or explanation that shapes how people understand events.','Both sides tried to control the public {narrative}.','양측이 공적 담론을 통제하려고 했어요.','narrative','B2','news',2,'media story framing perspective'),
('w_news_B2_20','transparency','/trænsˈpærənsi/','noun','투명성','The quality of being open and not concealing information.','Citizens are demanding greater {transparency} in government.','시민들이 정부의 더 큰 투명성을 요구하고 있어요.','transparency','B2','news',2,'glass open document accountability'),
('w_news_B2_21','allegation','/ˌælɪˈɡeɪʃən/','noun','혐의, 주장','A claim that someone has done something wrong or illegal.','The minister denied all {allegations} of corruption.','장관은 모든 부패 혐의를 부인했어요.','allegations','B2','news',2,'court legal press accusation'),
('w_news_B2_22','ratification','/ˌrætɪfɪˈkeɪʃən/','noun','비준','The official confirmation or approval of a treaty or agreement.','The treaty awaits {ratification} by all member states.','조약은 모든 회원국의 비준을 기다리고 있어요.','ratification','B2','news',2,'signing document ceremony flag'),
('w_news_B2_23','veto','/ˈviːtəʊ/','noun','거부권','The right to reject a decision or proposal unilaterally.','Russia used its {veto} power to block the UN resolution.','러시아가 거부권을 사용해 유엔 결의안을 막았어요.','veto','B2','news',2,'UN Security Council vote power'),
('w_news_B2_24','credibility','/ˌkredɪˈbɪlɪti/','noun','신뢰성','The quality of being trusted and believed by others.','The scandal damaged the government''s {credibility}.','스캔들이 정부의 신뢰성을 훼손했어요.','credibility','B2','news',2,'trust press opinion poll'),
('w_news_B2_25','mandate','/ˈmændeɪt/','noun','권한 위임, 임무','An official order or authorization given to a party by voters.','The new leader claimed a strong {mandate} from voters.','새 지도자는 유권자들로부터 강력한 권한을 받았다고 주장했어요.','mandate','B2','news',2,'election result vote authority'),
('w_news_B2_26','dissent','/dɪˈsent/','noun','반대 의견','The holding or expression of opinions contrary to authority.','Political {dissent} is suppressed in authoritarian states.','권위주의 국가에서 정치적 반대 의견은 탄압돼요.','dissent','B2','news',2,'protest speech freedom opposition'),
('w_news_B2_27','broker','/ˈbrəʊkər/','verb','중재하다','To arrange or negotiate an agreement between parties.','The US agreed to {broker} a peace deal between the two nations.','미국이 두 나라 간의 평화 협상을 중재하기로 했어요.','broker','B2','news',2,'diplomacy negotiation mediation handshake'),
('w_news_B2_28','consensus','/kənˈsensəs/','noun','합의, 컨센서스','General agreement among a group of people or states.','There is growing {consensus} on the need for climate action.','기후 행동의 필요성에 대한 공감대가 커지고 있어요.','consensus','B2','news',2,'agreement UN summit delegates'),
('w_news_B2_29','intervention','/ˌɪntəˈvenʃən/','noun','개입','The act of becoming involved in a situation to alter its course.','Military {intervention} was debated at the UN Security Council.','유엔 안보리에서 군사적 개입이 논의됐어요.','intervention','B2','news',2,'UN military peacekeeping security'),
('w_news_B2_30','impasse','/ˈɪmpæs/','noun','교착 상태','A situation in which no progress is possible; deadlock.','Negotiations reached an {impasse} after three days of talks.','3일간의 회담 끝에 협상이 교착 상태에 빠졌어요.','impasse','B2','news',2,'deadlock negotiation stalled diplomacy'),
('w_news_B2_31','annexation','/ˌænɪkˈseɪʃən/','noun','합병, 병합','The action of taking over a territory by a country.','The international community condemned the {annexation} of the territory.','국제 사회가 그 영토 합병을 규탄했어요.','annexation','B2','news',3,'border map territory flag'),
('w_news_B2_32','faction','/ˈfækʃən/','noun','파벌','A small, dissenting group within a larger political party.','A rebel {faction} within the party opposed the leader''s plans.','당 내 반대 파벌이 지도자의 계획에 반대했어요.','faction','B2','news',3,'politics party divide group'),
('w_news_B2_33','cease','/siːs/','verb','중단하다','To come to an end or bring something to an end.','Fighting must {cease} immediately, the UN demanded.','유엔은 전투가 즉각 중단되어야 한다고 요구했어요.','cease','B2','news',2,'stop end peacekeeping soldiers'),
('w_news_B2_34','denounce','/dɪˈnaʊns/','verb','규탄하다','To publicly declare something to be wrong or evil.','The opposition {denounced} the new law as unconstitutional.','야당은 새 법을 위헌이라고 규탄했어요.','denounced','B2','news',2,'protest speech condemnation press'),
('w_news_B2_35','coalition','/ˌkəʊəˈlɪʃən/','noun','연합, 연립','A temporary alliance of distinct political parties or groups.','A {coalition} of opposition parties challenged the government.','야당 연합이 정부에 도전했어요.','coalition','B2','news',2,'alliance partnership politics flag')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C1
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_C1_01','hegemony','/hɪˈdʒeməni/','noun','패권','Leadership or dominance, especially of one country over others.','American {hegemony} in the post-Cold War era is being challenged.','냉전 이후 미국 패권이 도전받고 있어요.','hegemony','C1','news',1,'power globe superpower dominance'),
('w_news_C1_02','realpolitik','/reɪˈɑːlpɒlɪtɪk/','noun','현실 정치','Politics based on practical considerations rather than moral norms.','The decision to ally with the regime reflected pure {realpolitik}.','그 정권과의 동맹 결정은 순수한 현실 정치를 반영했어요.','realpolitik','C1','news',2,'strategy power diplomacy chess'),
('w_news_C1_03','extraterritorial','/ˌekstrəˌterɪˈtɔːriəl/','adjective','역외적인','Existing or taking effect outside the territory of a state.','The law has {extraterritorial} jurisdiction over its citizens abroad.','그 법은 해외 자국 시민에 대한 역외 관할권을 가지고 있어요.','extraterritorial','C1','news',3,'law border international jurisdiction'),
('w_news_C1_04','jurisprudence','/ˌdʒʊərɪsˈpruːdəns/','noun','법리학','The theory and practice of law; a body of legal decisions.','The ruling set a new precedent in international {jurisprudence}.','그 판결은 국제 법리학에 새로운 선례를 세웠어요.','jurisprudence','C1','news',2,'law books court legal theory'),
('w_news_C1_05','multilateralism','/ˌmʌltiˈlætərəlɪzəm/','noun','다자주의','The practice of diplomacy involving multiple countries.','The summit reaffirmed a commitment to {multilateralism}.','정상 회담은 다자주의에 대한 의지를 재확인했어요.','multilateralism','C1','news',2,'UN globe summit cooperation'),
('w_news_C1_06','precedent','/ˈpresɪdənt/','noun','선례','An earlier event or ruling used as an example for later situations.','The court''s decision set a dangerous {precedent} for press freedom.','법원의 결정은 언론 자유에 위험한 선례를 남겼어요.','precedent','C1','news',2,'court legal history ruling'),
('w_news_C1_07','jurisdiction','/ˌdʒʊərɪsˈdɪkʃən/','noun','관할권','The official power to make legal decisions in a given area.','The crime falls outside this court''s {jurisdiction}.','그 범죄는 이 법원의 관할권 밖이에요.','jurisdiction','C1','news',2,'court law territory authority'),
('w_news_C1_08','ratification','/ˌrætɪfɪˈkeɪʃən/','noun','비준','Formal confirmation or approval of an international agreement.','The climate accord requires {ratification} by 55 countries.','그 기후 협약은 55개국의 비준이 필요해요.','ratification','C1','news',2,'treaty signing ceremony document'),
('w_news_C1_09','embargo','/ɪmˈbɑːrɡəʊ/','noun','수출입 금지령','An official ban on trade or other commercial activity with a country.','The oil {embargo} crippled the nation''s economy.','석유 금수 조치가 국가 경제를 무력화했어요.','embargo','C1','news',2,'trade ban ship cargo oil'),
('w_news_C1_10','deterrence','/dɪˈterəns/','noun','억제력','The action of discouraging an action through fear of consequences.','Nuclear {deterrence} has prevented major wars for decades.','핵 억제력은 수십 년 동안 대규모 전쟁을 막아왔어요.','deterrence','C1','news',2,'nuclear missile defense shield'),
('w_news_C1_11','geopolitical','/ˌdʒiːəʊpəˈlɪtɪkəl/','adjective','지정학적','Relating to politics affected by geographical factors.','The pipeline holds enormous {geopolitical} significance.','그 파이프라인은 엄청난 지정학적 의미를 가지고 있어요.','geopolitical','C1','news',2,'map energy pipeline power'),
('w_news_C1_12','bellicose','/ˈbelɪkəʊs/','adjective','호전적인','Demonstrating aggression and willingness to fight.','The government''s {bellicose} rhetoric alarmed its neighbors.','정부의 호전적인 수사가 이웃 나라들을 불안하게 했어요.','bellicose','C1','news',3,'military threat tension hostility'),
('w_news_C1_13','oligarchy','/ˈɒlɪɡɑːki/','noun','과두 정치','A system in which power is held by a small number of people.','Critics accuse the ruling elite of establishing an {oligarchy}.','비평가들은 집권 엘리트가 과두 정치를 수립했다고 비난해요.','oligarchy','C1','news',2,'power elite wealth control'),
('w_news_C1_14','reprisal','/rɪˈpraɪzəl/','noun','보복 행위','An act of retaliation against an enemy or opponent.','The strike was carried out in {reprisal} for the earlier attack.','그 공격은 이전 공격에 대한 보복으로 감행됐어요.','reprisal','C1','news',3,'retaliation military response strike'),
('w_news_C1_15','subversion','/səbˈvɜːrʒən/','noun','전복, 체제 해체','The undermining of the power and authority of an established system.','He was charged with {subversion} of the state.','그는 국가 전복 혐의로 기소됐어요.','subversion','C1','news',3,'underground threat security law'),
('w_news_C1_16','proxy','/ˈprɒksi/','noun','대리인, 위임','A person or group acting on behalf of another, especially in conflict.','The two superpowers fought a {proxy} war through local factions.','두 강대국이 지역 파벌을 통해 대리전을 치렀어요.','proxy','C1','news',2,'war factions superpower conflict'),
('w_news_C1_17','ostracize','/ˈɒstrəsaɪz/','verb','추방하다, 따돌리다','To exclude someone from a society or community by consensus.','The regime was {ostracized} by the international community.','그 정권은 국제 사회에서 추방당했어요.','ostracized','C1','news',2,'isolation exclusion sanctions community'),
('w_news_C1_18','proliferation','/prəˌlɪfəˈreɪʃən/','noun','확산','A rapid increase in the number of something, especially weapons.','Nuclear {proliferation} remains one of the world''s gravest threats.','핵 확산은 여전히 세계에서 가장 심각한 위협 중 하나예요.','proliferation','C1','news',2,'nuclear weapons spread global'),
('w_news_C1_19','junta','/ˈhʊntə/','noun','군사 정권','A military group that has seized power following a coup.','The military {junta} suspended the constitution.','군사 정권이 헌법을 정지시켰어요.','junta','C1','news',2,'military coup power governance'),
('w_news_C1_20','disenfranchise','/ˌdɪsɪnˈfræntʃaɪz/','verb','선거권을 박탈하다','To deprive someone of the right to vote or participate.','Critics say the new law will {disenfranchise} millions of voters.','비평가들은 새 법이 수백만 명의 유권자의 선거권을 박탈할 것이라고 말해요.','disenfranchise','C1','news',2,'vote election rights democracy'),
('w_news_C1_21','tribunal','/traɪˈbjuːnəl/','noun','재판소, 심판소','A court or committee appointed to deal with a specific issue.','The war crimes {tribunal} handed down its verdict.','전쟁 범죄 재판소가 판결을 내렸어요.','tribunal','C1','news',2,'court justice international legal'),
('w_news_C1_22','culpability','/ˌkʌlpəˈbɪlɪti/','noun','유책성','Responsibility for a fault or wrong; blameworthiness.','The inquiry examined the {culpability} of senior officials.','조사는 고위 관리들의 유책성을 검토했어요.','culpability','C1','news',3,'responsibility blame inquiry legal'),
('w_news_C1_23','capitulation','/kəˌpɪtʃʊˈleɪʃən/','noun','항복, 굴복','The act of surrendering or giving in to demands or pressure.','Critics called the government''s response a {capitulation} to pressure.','비평가들은 정부의 반응을 압력에 대한 굴복이라고 불렀어요.','capitulation','C1','news',3,'surrender defeat compromise pressure'),
('w_news_C1_24','reparation','/ˌrepəˈreɪʃən/','noun','배상','Compensation for war damage paid by a defeated country.','The debate over war {reparations} resurfaced this year.','올해 전쟁 배상금 논쟁이 다시 불거졌어요.','reparations','C1','news',2,'history war justice compensation'),
('w_news_C1_25','acquittal','/əˈkwɪtəl/','noun','무죄 선고','A formal judicial finding of not guilty.','The {acquittal} shocked the victims'' families.','무죄 선고는 피해자 가족들에게 충격을 줬어요.','acquittal','C1','news',2,'court verdict judge jury not guilty'),
('w_news_C1_26','complicity','/kəmˈplɪsɪti/','noun','공모, 연루','Partnership in a wrongdoing or crime; being involved in guilt.','The report alleged government {complicity} in the cover-up.','보고서는 정부의 은폐 공모를 주장했어요.','complicity','C1','news',2,'corruption crime involvement investigation'),
('w_news_C1_27','rapprochement','/ˌræprəʊʃˈmɒŋ/','noun','화해, 관계 개선','The establishment of harmonious relations between countries.','The two nations are moving toward diplomatic {rapprochement}.','두 나라가 외교적 화해를 향해 나아가고 있어요.','rapprochement','C1','news',2,'diplomacy flag handshake peace'),
('w_news_C1_28','coercive','/kəʊˈɜːrsɪv/','adjective','강압적인','Using force or threats to make someone act in a certain way.','The opposition condemned the government''s {coercive} tactics.','야당은 정부의 강압적인 전술을 규탄했어요.','coercive','C1','news',2,'force authority control pressure'),
('w_news_C1_29','demagogue','/ˈdeməɡɒɡ/','noun','선동가','A political leader who gains support through emotional appeals.','The opposition accused the president of being a {demagogue}.','야당은 대통령이 선동가라고 비난했어요.','demagogue','C1','news',3,'speech crowd politics emotion'),
('w_news_C1_30','intransigence','/ɪnˈtrænsɪdʒəns/','noun','완고함, 비타협성','Refusal to change one''s views or to reach a compromise.','The talks collapsed due to both sides'' {intransigence}.','양측의 비타협적인 태도로 회담이 결렬됐어요.','intransigence','C1','news',3,'deadlock negotiation stalemate rigid'),
('w_news_C1_31','concession','/kənˈseʃən/','noun','양보','A thing granted in response to demands during negotiation.','The government offered {concessions} to end the strike.','정부가 파업을 끝내기 위해 양보를 제시했어요.','concessions','C1','news',2,'negotiation compromise offer deal'),
('w_news_C1_32','asymmetric','/ˌeɪsɪˈmetrɪk/','adjective','비대칭적인','Having unequal distribution of power or strategy between parties.','The conflict has become an {asymmetric} guerrilla war.','분쟁이 비대칭적인 게릴라 전쟁이 됐어요.','asymmetric','C1','news',3,'war strategy power difference'),
('w_news_C1_33','incendiary','/ɪnˈsendiəri/','adjective','선동적인, 도발적인','Tending to stir up conflict or strong reactions.','The senator''s {incendiary} remarks caused national outrage.','상원 의원의 선동적인 발언이 국가적 분노를 일으켰어요.','incendiary','C1','news',3,'speech protest fire rhetoric'),
('w_news_C1_34','sequestration','/ˌsiːkwɪˈstreɪʃən/','noun','자산 동결, 강제 삭감','The seizure or holding of assets, or automatic budget cuts by authority.','Budget {sequestration} resulted in automatic spending cuts.','예산 강제 삭감으로 자동적인 지출 삭감이 발생했어요.','sequestration','C1','news',3,'budget finance government cut'),
('w_news_C1_35','peremptory','/pəˈremptəri/','adjective','강압적이고 단호한','Insisting on immediate compliance without allowing debate.','The court issued a {peremptory} demand for documents.','법원이 서류에 대한 강압적인 요구를 내렸어요.','peremptory','C1','news',3,'court order authority legal command')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C2
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_C2_01','epistemic','/ˌepɪˈstiːmɪk/','adjective','인식론적인','Relating to knowledge or the degree of its validation.','The article examines {epistemic} challenges in journalism.','그 기사는 저널리즘의 인식론적 도전을 다뤄요.','epistemic','C2','news',2,'knowledge theory truth philosophy'),
('w_news_C2_02','Westphalian','/westˈfeɪliən/','adjective','베스트팔렌적인','Relating to the Westphalian system of sovereign nation-states.','The humanitarian intervention challenged {Westphalian} norms.','인도주의적 개입이 베스트팔렌적 규범에 도전했어요.','Westphalian','C2','news',3,'sovereignty international law norms'),
('w_news_C2_03','securitization','/sɪˌkjʊərɪtɪˈzeɪʃən/','noun','안보화','The process of framing an issue as a security threat to justify emergency measures.','The {securitization} of migration has dominated political debates.','이주의 안보화가 정치 논쟁을 지배하고 있어요.','securitization','C2','news',3,'security border threat policy'),
('w_news_C2_04','normative','/ˈnɔːrmətɪv/','adjective','규범적인','Relating to or deriving from a standard or norm of expected behavior.','The UN Charter established a {normative} framework for world order.','유엔 헌장은 세계 질서의 규범적 틀을 확립했어요.','normative','C2','news',2,'law standard framework international'),
('w_news_C2_05','constructivist','/kənˈstrʌktɪvɪst/','adjective','구성주의적인','Relating to the theory that social reality is constructed through ideas and norms.','A {constructivist} reading of the crisis focuses on shared identities.','위기에 대한 구성주의적 해석은 공유된 정체성에 집중해요.','constructivist','C2','news',3,'theory identity norms society'),
('w_news_C2_06','ontological','/ˌɒntəˈlɒdʒɪkəl/','adjective','존재론적인','Relating to the branch of philosophy concerned with the nature of being.','The annexation threatened the country''s {ontological} security.','합병은 그 나라의 존재론적 안보감을 위협했어요.','ontological','C2','news',3,'identity state theory security'),
('w_news_C2_07','postcolonial','/ˌpəʊstˈkɒləniəl/','adjective','탈식민적인','Relating to the period after colonial rule ended and its lingering effects.','The conflict has deep {postcolonial} roots.','그 분쟁은 깊은 탈식민적 뿌리가 있어요.','postcolonial','C2','news',2,'history empire colony Africa Asia'),
('w_news_C2_08','subaltern','/ˈsʌbəltɜːrn/','adjective','하위 주체적인','Relating to those whose voices are marginalized or suppressed in society.','The report amplifies {subaltern} perspectives often ignored by media.','그 보고서는 미디어에서 종종 무시되는 하위 주체적 관점을 증폭시켜요.','subaltern','C2','news',3,'minority voice marginalized society'),
('w_news_C2_09','neocolonialism','/ˌniːəʊˈkɒləniəlɪzəm/','noun','신식민주의','The use of economic or political pressure to control developing countries.','Critics accuse wealthy nations of practicing {neocolonialism}.','비평가들은 부유한 나라들이 신식민주의를 실천한다고 비난해요.','neocolonialism','C2','news',3,'power Africa dependency aid'),
('w_news_C2_10','intergovernmentalism','/ˌɪntəˌɡʌvənˈmentəlɪzəm/','noun','정부 간주의','A theory of international cooperation in which states retain sovereignty.','{Intergovernmentalism} limits the EU''s ability to act as a single entity.','정부 간주의는 EU가 단일 주체로 행동하는 능력을 제한해요.','Intergovernmentalism','C2','news',3,'EU Europe cooperation sovereignty'),
('w_news_C2_11','liminality','/ˌlɪmɪˈnælɪti/','noun','경계성, 과도기 상태','The quality of being in an ambiguous transitional state between two phases.','The country exists in political {liminality} between democracy and authoritarianism.','그 나라는 민주주의와 권위주의 사이의 정치적 경계성 속에 있어요.','liminality','C2','news',3,'transition threshold ambiguity change'),
('w_news_C2_12','praxis','/ˈpræksɪs/','noun','실천 (이론 대비)','The practice and practical application of a theory or belief.','The movement struggled to convert ideology into {praxis}.','그 운동은 이념을 실천으로 전환하는 데 어려움을 겪었어요.','praxis','C2','news',3,'action theory practice policy'),
('w_news_C2_13','polity','/ˈpɒlɪti/','noun','정치 공동체','A form of government or political organization of a state.','The question is whether the EU constitutes a single {polity}.','문제는 EU가 단일 정치 공동체를 구성하는지 여부예요.','polity','C2','news',3,'governance state EU community'),
('w_news_C2_14','hegemon','/ˈheɡɪmɒn/','noun','패권국','A dominant state exercising preponderant power over others.','The US remains the world''s sole military {hegemon}.','미국은 여전히 세계 유일의 군사적 패권국이에요.','hegemon','C2','news',3,'superpower dominance military power'),
('w_news_C2_15','legitimation','/lɪˌdʒɪtɪˈmeɪʃən/','noun','정당화','The process of making something legitimate or lawful in others'' eyes.','The regime sought international {legitimation} through elections.','그 정권은 선거를 통해 국제적 정당화를 추구했어요.','legitimation','C2','news',2,'election credibility recognition power'),
('w_news_C2_16','heterodox','/ˈhetərədɒks/','adjective','이단적인, 비정통적인','Not conforming with accepted or orthodox standards or beliefs.','His {heterodox} interpretation of the treaty provoked debate.','그의 비정통적인 조약 해석이 논쟁을 불러일으켰어요.','heterodox','C2','news',3,'unusual theory challenge orthodox'),
('w_news_C2_17','dialectical','/ˌdaɪəˈlektɪkəl/','adjective','변증법적인','Relating to inquiry into truth by discussion and logical argument.','The analyst offered a {dialectical} reading of the peace process.','분석가는 평화 프로세스에 대한 변증법적 해석을 제공했어요.','dialectical','C2','news',3,'argument theory logic analysis'),
('w_news_C2_18','reification','/ˌriːɪfɪˈkeɪʃən/','noun','물화, 실체화','The process of treating an abstraction as if it were a concrete thing.','The speech was criticized for its {reification} of national identity.','그 연설은 국가 정체성의 물화로 비판받았어요.','reification','C2','news',3,'abstract concept identity society'),
('w_news_C2_19','exceptionalism','/ɪkˈsepʃənəlɪzəm/','noun','예외주의','The belief that a nation is exceptional and not bound by normal rules.','American {exceptionalism} has long shaped its foreign policy.','미국 예외주의는 오랫동안 미국 외교 정책을 형성해 왔어요.','exceptionalism','C2','news',3,'national identity foreign policy US'),
('w_news_C2_20','transnational','/trænsˈnæʃənəl/','adjective','초국가적인','Extending or operating across national boundaries.','The campaign is a {transnational} effort to combat misinformation.','그 캠페인은 허위 정보와 싸우기 위한 초국가적 노력이에요.','transnational','C2','news',2,'global cooperation border internet'),
('w_news_C2_21','agonistic','/ˌæɡəˈnɪstɪk/','adjective','투쟁적인, 갈등 지향적인','Relating to the view that political conflict is inherently productive.','Mouffe''s {agonistic} model sees disagreement as essential to democracy.','무페의 투쟁적 모델은 의견 불일치를 민주주의의 본질로 봐요.','agonistic','C2','news',3,'democracy conflict theory politics'),
('w_news_C2_22','discursive','/dɪˈskɜːrsɪv/','adjective','담론적인','Relating to discourse; proceeding by argument rather than intuition.','The editorial took a {discursive} approach to the crisis.','그 사설은 위기에 대한 담론적 접근을 취했어요.','discursive','C2','news',3,'language analysis text theory'),
('w_news_C2_23','counterfactual','/ˌkaʊntəˈfæktʃʊəl/','adjective','반사실적인','Relating to what might have happened under different circumstances.','Historians offer a {counterfactual} view of the failed negotiations.','역사가들은 실패한 협상에 대한 반사실적 관점을 제시해요.','counterfactual','C2','news',3,'history analysis alternative scenario'),
('w_news_C2_24','semiotic','/ˌsiːmiˈɒtɪk/','adjective','기호학적인','Relating to the study of signs and symbols and their meanings.','The flag-burning carries powerful {semiotic} significance.','국기 소각은 강력한 기호학적 의미를 지니고 있어요.','semiotic','C2','news',3,'symbol meaning sign analysis'),
('w_news_C2_25','extrapolate','/ɪkˈstræpəleɪt/','verb','외삽하다, 추론하다','To extend data or conclusions into unknown areas by inference.','Analysts {extrapolate} future trends from current data.','분석가들은 현재 데이터에서 미래 추세를 추론해요.','extrapolate','C2','news',2,'data analysis forecast prediction'),
('w_news_C2_26','temporality','/ˌtempəˈrælɪti/','noun','시간성, 임시성','The state of existing within or having some relationship with time.','The analyst explored the {temporality} of the political crisis.','분석가는 정치 위기의 시간성을 탐구했어요.','temporality','C2','news',3,'time theory analysis phase'),
('w_news_C2_27','ideological','/ˌaɪdiəˈlɒdʒɪkəl/','adjective','이데올로기적인','Based on or relating to a system of ideas and ideals forming a worldview.','The conflict has deep {ideological} roots.','그 분쟁은 깊은 이데올로기적 뿌리가 있어요.','ideological','C2','news',2,'ideas belief system politics'),
('w_news_C2_28','genealogy','/ˌdʒiːniˈælədʒi/','noun','계보, 기원 추적','The study of the origin and historical development of something.','Foucault''s {genealogy} of power influenced media criticism.','푸코의 권력 계보학은 미디어 비평에 영향을 미쳤어요.','genealogy','C2','news',3,'history origin theory Foucault'),
('w_news_C2_29','hermeneutic','/ˌhɜːrmɪˈnjuːtɪk/','adjective','해석학적인','Relating to the interpretation of texts, especially political or legal ones.','A {hermeneutic} reading of the resolution reveals ambiguities.','결의문의 해석학적 독해는 모호성을 드러내요.','hermeneutic','C2','news',3,'interpretation text law analysis'),
('w_news_C2_30','hegemonic','/ˌheɡɪˈmɒnɪk/','adjective','패권적인','Relating to the exercise of hegemony; dominant in power or influence.','The US sought to preserve its {hegemonic} position in the Pacific.','미국은 태평양에서 패권적 위치를 유지하려 했어요.','hegemonic','C2','news',3,'superpower dominance power Pacific'),
('w_news_C2_31','intersubjectivity','/ˌɪntəsʌbdʒekˈtɪvɪti/','noun','상호주관성','The sharing of cognitive or subjective states between individuals or groups.','Diplomatic norms emerge from {intersubjectivity} among states.','외교 규범은 국가들 간의 상호주관성에서 나와요.','intersubjectivity','C2','news',3,'theory norms shared understanding'),
('w_news_C2_32','deterritorialization','/diːˌterɪtɔːriəlaɪˈzeɪʃən/','noun','탈영토화','The loosening of the connection between culture and geographic territory.','Globalization has accelerated the {deterritorialization} of political identity.','세계화가 정치적 정체성의 탈영토화를 가속화했어요.','deterritorialization','C2','news',3,'globalization identity border culture'),
('w_news_C2_33','dialectic','/ˌdaɪəˈlektɪk/','noun','변증법','A method of examining opposing ideas to reach the truth.','The editorial used a {dialectic} of freedom versus security.','그 사설은 자유 대 안보의 변증법을 사용했어요.','dialectic','C2','news',3,'logic argument theory analysis'),
('w_news_C2_34','disarticulation','/dɪsɑːˌtɪkjʊˈleɪʃən/','noun','연결 해체','The unraveling of coherent political or social structures.','The crisis led to the {disarticulation} of the ruling coalition.','위기는 집권 연합의 연결 해체로 이어졌어요.','disarticulation','C2','news',3,'collapse breakdown coalition fragmentation'),
('w_news_C2_35','epistemocracy','/ɪˌpiːstɪˈmɒkrəsi/','noun','지식 기반 정치 체제','A form of government where political power rests on epistemic competence.','Advocates argue that {epistemocracy} can improve policy quality.','지지자들은 지식 기반 정치 체제가 정책 품질을 높일 수 있다고 주장해요.','epistemocracy','C2','news',3,'expertise knowledge governance theory')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — A1 (뉴스 공유)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_A1_01','Did you hear about...?','...에 대해 들었어요?','Did you hear about','최근 소식이나 뉴스를 자연스럽게 공유할 때 쓰는 첫 마디예요. "Did you hear about the fire?" 처럼 명사를 바로 이어 붙여요.','뉴스 공유','A1','news','pattern',NULL,1),
('s_news_A1_02','I saw on the news that...','뉴스에서 ...라는 걸 봤어요.','I saw on the news','TV나 온라인 뉴스에서 본 내용을 전달할 때 써요. "I saw on the news that there was a big flood." 처럼 that절을 이어요.','뉴스 전달','A1','news','pattern',NULL,2),
('s_news_A1_03','What happened?','무슨 일이 있었어요?','What happened','사건에 대해 더 알고 싶을 때 쓰는 가장 기본적인 질문이에요. 간단하지만 어디서든 쓸 수 있어요.','사건 질문','A1','news','pattern',NULL,3),
('s_news_A1_04','Is it true that...?','...가 사실이에요?','Is it true that','들은 이야기가 사실인지 확인할 때 써요. "Is it true that the president resigned?" 처럼 that절을 이어요.','사실 확인','A1','news','pattern',NULL,4),
('s_news_A1_05','They said on the news that...','뉴스에서 ...라고 했어요.','They said on the news','불특정 뉴스 출처를 인용할 때 "They said"를 써요. 구어체에서 아주 자주 쓰이는 표현이에요.','뉴스 인용','A1','news','pattern',NULL,5),
('s_news_A1_06','A lot of people were hurt.','많은 사람들이 다쳤어요.','A lot of people were hurt','사고나 재난 보도에서 자주 나오는 문장 구조예요. "were hurt"는 수동태로 피해를 표현해요.','피해 상황','A1','news','pattern',NULL,6),
('s_news_A1_07','The government said...','정부가 ...라고 했어요.','The government said','공식 발표나 성명을 인용할 때 가장 기본적인 구조예요. 뒤에 직접 또는 간접 인용을 붙여요.','공식 발표 인용','A1','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — A2 (사건 설명)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_A2_01','According to reports, ...','보도에 따르면, ...','According to reports','뉴스 출처를 인용할 때 쓰는 표현이에요. 좀 더 격식 있는 느낌이 나고 사실 여부를 단정하지 않는 표현이에요.','출처 인용','A2','news','pattern',NULL,1),
('s_news_A2_02','The police are investigating...','경찰이 ...을 조사하고 있어요.','are investigating','범죄나 사고에 관한 뉴스에서 매우 자주 나오는 표현이에요. 현재진행형으로 진행 중임을 나타내요.','사건 보도','A2','news','pattern',NULL,2),
('s_news_A2_03','It is believed that...','...라고 여겨져요.','It is believed that','확실하지 않은 정보를 전달할 때 쓰는 수동태 표현이에요. 직접 단정하는 것을 피할 수 있어요.','불확실 정보','A2','news','pattern',NULL,3),
('s_news_A2_04','Protests broke out in...','...에서 시위가 발생했어요.','broke out','갑작스럽게 시작된 시위나 사건을 설명할 때 "break out"을 써요. 폭동, 화재, 전쟁 등에도 써요.','시위·사건 발생','A2','news','pattern',NULL,4),
('s_news_A2_05','The government has announced that...','정부는 ...라고 발표했어요.','has announced','현재완료형으로 방금 또는 최근에 이루어진 공식 발표를 자연스럽게 표현해요.','공식 발표','A2','news','pattern',NULL,5),
('s_news_A2_06','Thousands of people took to the streets.','수천 명이 거리로 나왔어요.','took to the streets','많은 사람들이 시위를 위해 나온 것을 표현할 때 "take to the streets"를 써요. 뉴스에서 자주 보이는 관용 표현이에요.','시위 묘사','A2','news','pattern',NULL,6),
('s_news_A2_07','A ceasefire has been agreed.','휴전이 합의됐어요.','has been agreed','수동태로 협상 결과를 간결하게 전달하는 뉴스 문체 표현이에요. 주어가 누구인지 모르거나 중요하지 않을 때 써요.','협상 결과','A2','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — B1 (정치·경제 논의)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_B1_01','The government is under pressure to...','정부가 ...에 대한 압박을 받고 있어요.','is under pressure to','정치·외교 논의에서 자주 쓰이는 표현이에요. "under pressure to reform" 처럼 동사 원형을 이어 써요.','정치 논의','B1','news','pattern',NULL,1),
('s_news_B1_02','Critics have accused the minister of...','비평가들이 장관을 ...혐의로 비난했어요.','Critics have accused','현재완료형으로 최근의 비난·고발을 전달해요. "of + 동명사" 패턴을 외워두면 편리해요.','비난·고발','B1','news','pattern',NULL,2),
('s_news_B1_03','The opposition has called for an inquiry into...','야당이 ...에 대한 조사를 요구했어요.','has called for an inquiry into','야당의 공식 요구를 표현할 때 써요. "call for"는 공식적으로 요구하다는 뜻이에요.','야당 성명','B1','news','pattern',NULL,3),
('s_news_B1_04','Unemployment figures rose to... percent.','실업률이 ...%로 올랐어요.','rose to','경제 지표를 보도할 때 쓰는 패턴이에요. "rose to", "fell to", "hit a record high/low"와 함께 외워두세요.','경제 지표','B1','news','pattern',NULL,4),
('s_news_B1_05','The legislation was passed by a majority of...','법안이 ...의 다수결로 통과됐어요.','was passed by a majority','의회에서 법안이 통과됐을 때 쓰는 수동태 표현이에요. "slim majority(근소한 다수)" 등의 수식어를 붙여요.','입법 보도','B1','news','pattern',NULL,5),
('s_news_B1_06','The minister resigned amid allegations of...','장관이 ...혐의 속에 사임했어요.','resigned amid allegations of','스캔들로 인한 사임 보도에서 자주 나오는 구조예요. "amid"는 "~속에/~가운데"라는 뜻이에요.','스캔들 보도','B1','news','pattern',NULL,6),
('s_news_B1_07','Inflation has reached its highest level in... years.','인플레이션이 ...년 만에 최고치에 달했어요.','has reached its highest level','경제 기사에서 최고점을 강조할 때 쓰는 현재완료 표현이에요. "lowest level", "highest point" 등을 바꿔 써요.','경제 보도','B1','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — B2 (국제 정세)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_B2_01','Diplomatic tensions have escalated between... and...','...와 ... 사이의 외교적 긴장이 고조됐어요.','Diplomatic tensions have escalated','두 나라 간의 갈등 고조를 표현할 때 써요. "escalate"는 상황이 점점 심각해지는 것을 나타내요.','국제 분쟁','B2','news','pattern',NULL,1),
('s_news_B2_02','Sanctions have been imposed on... in response to...','...에 대응해 ...에 제재가 부과됐어요.','Sanctions have been imposed on','제재 부과를 수동태로 표현하는 국제 뉴스 정형 문구예요. "in response to"는 이유를 나타내요.','제재 보도','B2','news','pattern',NULL,2),
('s_news_B2_03','The two nations agreed to resume diplomatic talks.','두 나라가 외교 회담 재개에 합의했어요.','agreed to resume diplomatic talks','관계 정상화를 향한 첫 걸음을 표현할 때 써요. "resume"은 중단됐다가 다시 시작함을 의미해요.','외교 관계','B2','news','pattern',NULL,3),
('s_news_B2_04','The international community has condemned the attack.','국제 사회가 공격을 규탄했어요.','has condemned','규탄 성명에서 항상 나오는 표현이에요. "condemn"은 "강하게 비난하다"는 뜻이에요.','국제 규탄','B2','news','pattern',NULL,4),
('s_news_B2_05','A multilateral agreement was reached at the summit.','정상 회담에서 다자간 합의가 이루어졌어요.','multilateral agreement was reached','다자 외교의 결과를 보도할 때 쓰는 표현이에요. "bilateral"(양자), "multilateral"(다자)을 구분해서 써요.','정상 회담','B2','news','pattern',NULL,5),
('s_news_B2_06','The regime faces growing pressure from the international community.','그 정권은 국제 사회로부터 점점 커지는 압박에 직면해 있어요.','faces growing pressure','정권이 국내외 압박을 받는 상황을 설명할 때 써요. "growing"은 압박이 점점 강해지고 있음을 나타내요.','국제 압박','B2','news','pattern',NULL,6),
('s_news_B2_07','The referendum resulted in a vote for independence.','국민 투표 결과 독립 찬성으로 나왔어요.','referendum resulted in','국민 투표 결과를 보도할 때 쓰는 표현이에요. "result in"은 특정 결과로 이어짐을 나타내요.','국민 투표','B2','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — C1 (외교·정책 분석)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_C1_01','The decision sets a significant precedent for international law.','그 결정은 국제법에 중요한 선례를 남겨요.','sets a significant precedent','법적·외교적 판단이 미래에 미치는 영향을 설명할 때 써요. "landmark precedent", "dangerous precedent"도 자주 쓰여요.','국제법 분석','C1','news','pattern',NULL,1),
('s_news_C1_02','The sanctions regime has failed to achieve its stated objectives.','제재 체제가 명시된 목표를 달성하는 데 실패했어요.','has failed to achieve its stated objectives','정책 효과를 비판적으로 분석할 때 쓰는 표현이에요. "stated objectives"는 공식적으로 밝힌 목표를 뜻해요.','정책 비판 분석','C1','news','pattern',NULL,2),
('s_news_C1_03','The bilateral relationship has deteriorated significantly in recent months.','양자 관계가 최근 몇 달 동안 크게 악화됐어요.','has deteriorated significantly','관계 악화를 표현할 때 "deteriorate"를 써요. "improve dramatically", "stabilize gradually"와 반대 표현으로 외워요.','외교 분석','C1','news','pattern',NULL,3),
('s_news_C1_04','There are growing concerns about the erosion of democratic norms.','민주주의 규범 침식에 대한 우려가 커지고 있어요.','growing concerns about the erosion of','추상적인 제도나 가치의 약화를 표현할 때 써요. "erosion of"는 서서히 무너지는 것을 나타내요.','민주주의 분석','C1','news','pattern',NULL,4),
('s_news_C1_05','The court''s ruling may have far-reaching implications for...','법원의 판결은 ...에 광범위한 영향을 미칠 수 있어요.','may have far-reaching implications for','법적 판결이 더 넓은 영역에 미치는 파급 효과를 분석할 때 써요. "far-reaching"은 "광범위한"이라는 뜻이에요.','사법 분석','C1','news','pattern',NULL,5),
('s_news_C1_06','The government invoked emergency powers to suppress dissent.','정부가 반대 의견을 억압하기 위해 비상 권한을 발동했어요.','invoked emergency powers to suppress','강압적 통치를 보도하거나 분석할 때 쓰는 표현이에요. "invoke"는 법이나 권한을 공식 발동하는 뜻이에요.','권위주의 분석','C1','news','pattern',NULL,6),
('s_news_C1_07','Analysts warn of the risk of further escalation in the region.','분석가들은 지역 내 추가 확전 위험을 경고해요.','warn of the risk of further escalation','분쟁 지역 상황 분석에서 자주 쓰이는 표현이에요. "escalation"은 갈등 심화를, "further"는 추가적임을 나타내요.','분쟁 분석','C1','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — C2 (외교·정책 심층 분석)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_C2_01','The hegemon''s unilateral actions undermine the multilateral rules-based order.','패권국의 일방적 행동이 다자 규칙 기반 질서를 약화시켜요.','unilateral actions undermine the multilateral rules-based order','국제 정치 분석에서 핵심 패턴이에요. "rules-based order"는 현 국제 체계를 가리키는 전문 용어예요.','국제 질서 분석','C2','news','pattern',NULL,1),
('s_news_C2_02','The conflict can be read as a manifestation of postcolonial tensions.','그 분쟁은 탈식민적 긴장의 표현으로 읽힐 수 있어요.','can be read as a manifestation of','학문적·비판적 분석에서 쓰이는 표현이에요. "manifestation of"는 어떤 현상의 구체적 발현을 뜻해요.','탈식민 분석','C2','news','pattern',NULL,2),
('s_news_C2_03','Securitization of the issue has foreclosed alternative policy responses.','그 문제의 안보화가 대안적 정책 대응을 차단했어요.','Securitization of the issue has foreclosed','코펜하겐 학파의 안보화 이론을 적용한 분석 표현이에요. "foreclose"는 가능성을 원천 봉쇄하는 것을 뜻해요.','안보화 이론','C2','news','pattern',NULL,3),
('s_news_C2_04','The normative framework underpinning the international order is being contested.','국제 질서를 뒷받침하는 규범적 틀이 도전받고 있어요.','normative framework underpinning the international order is being contested','국제 규범의 위기를 설명하는 학술적 표현이에요. "underpin"은 "뒷받침하다", "contest"는 "이의를 제기하다"는 뜻이에요.','규범 분석','C2','news','pattern',NULL,4),
('s_news_C2_05','The crisis exposes the epistemic limits of mainstream IR theory.','위기는 주류 국제 관계 이론의 인식론적 한계를 드러내요.','exposes the epistemic limits of','국제 관계(IR) 학문에서 이론의 설명력 한계를 비판할 때 써요. "epistemic"은 지식·인식에 관련된 형용사예요.','IR 이론 비판','C2','news','pattern',NULL,5),
('s_news_C2_06','Subaltern voices remain systematically excluded from diplomatic discourse.','하위 주체의 목소리는 외교 담론에서 체계적으로 배제돼요.','Subaltern voices remain systematically excluded','탈식민 이론과 비판 IR에서 쓰이는 표현이에요. "subaltern"은 권력 구조에서 소외된 주체를 뜻해요.','탈식민 비판','C2','news','pattern',NULL,6),
('s_news_C2_07','The state''s ontological security imperative drove its foreign policy choices.','국가의 존재론적 안보 요구가 외교 정책 선택을 이끌었어요.','ontological security imperative drove its foreign policy choices','미어샤이머나 스틸(Steele) 등의 이론에서 나온 분석 틀이에요. "ontological security"는 국가의 정체성 안정감을 뜻해요.','존재론적 안보','C2','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;


-- ============================================
-- TOPIC: emotion
-- ============================================
-- EngCat — Emotion (감정 표현) Topic
-- 210 words (35 per CEFR level A1~C2) + 42 sentence patterns (7 per level)
-- IDs: w_emotion_{CEFR}_{nn} / s_emotion_{CEFR}_{nn}
-- Note: existing w_emo_01~10 use topic_id='emotions'; these use topic_id='emotion' — no conflict.

-- ══════════════════════════════════════
-- WORDS — A1 (35 words)
-- Theme: happy, sad, angry, tired, scared, excited, good, bad, fine, okay + 25 more core basics
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_A1_01','happy','/ˈhæpi/','adjective','행복한','Feeling or showing pleasure and contentment.','She was {happy} to see her friend.','그녀는 친구를 보고 행복했어요.','happy','A1','emotion',1,'happy smiling person joyful'),
('w_emotion_A1_02','sad','/sæd/','adjective','슬픈','Feeling or causing sorrow or unhappiness.','He looked {sad} after hearing the news.','그는 소식을 듣고 슬퍼 보였어요.','sad','A1','emotion',1,'sad person unhappy downcast'),
('w_emotion_A1_03','angry','/ˈæŋɡri/','adjective','화난','Feeling strong displeasure or hostility.','She was {angry} because he was late.','그가 늦어서 그녀는 화가 났어요.','angry','A1','emotion',1,'angry person upset frustrated'),
('w_emotion_A1_04','tired','/ˈtaɪərd/','adjective','피곤한','In need of sleep or rest; exhausted.','I''m so {tired} after a long day.','긴 하루를 보내고 너무 피곤해요.','tired','A1','emotion',1,'tired person sleepy exhausted'),
('w_emotion_A1_05','scared','/skerd/','adjective','무서운, 두려운','Feeling fear or anxiety.','The child was {scared} of the dark.','그 아이는 어둠을 무서워했어요.','scared','A1','emotion',1,'scared person afraid fearful dark'),
('w_emotion_A1_06','excited','/ɪkˈsaɪtɪd/','adjective','신난, 설레는','Very enthusiastic and eager.','She was {excited} about her birthday party.','그녀는 생일 파티를 기대하며 신나 있었어요.','excited','A1','emotion',1,'excited person celebrating happy energetic'),
('w_emotion_A1_07','good','/ɡʊd/','adjective','좋은, 기분 좋은','Having positive qualities; feeling well.','I feel {good} today — it''s sunny outside!','오늘 기분이 좋아요. 밖에 햇살이 좋아요!','good','A1','emotion',1,'good mood positive sunny day'),
('w_emotion_A1_08','bad','/bæd/','adjective','나쁜, 기분 나쁜','Not good; unpleasant or unfortunate.','I feel {bad} about forgetting your name.','이름을 잊어버려서 기분이 나빠요.','bad','A1','emotion',1,'bad mood regret unhappy person'),
('w_emotion_A1_09','fine','/faɪn/','adjective','괜찮은','In a satisfactory or acceptable condition.','I''m {fine}, thanks for asking.','괜찮아요, 물어봐 주셔서 감사해요.','fine','A1','emotion',1,'person okay calm neutral expression'),
('w_emotion_A1_10','okay','/oʊˈkeɪ/','adjective','괜찮은, 좋은','Satisfactory but not exceptional.','Everything is {okay} now, don''t worry.','이제 다 괜찮아요, 걱정하지 마세요.','okay','A1','emotion',1,'person reassured calm okay gesture'),
('w_emotion_A1_11','love','/lʌv/','verb','사랑하다, 매우 좋아하다','To feel a deep affection for someone or something.','I {love} spending time with my family.','가족과 시간을 보내는 걸 정말 좋아해요.','love','A1','emotion',1,'family together love warm'),
('w_emotion_A1_12','like','/laɪk/','verb','좋아하다','To find pleasant or attractive.','Do you {like} this song?','이 노래 좋아해요?','like','A1','emotion',1,'person enjoying music happy'),
('w_emotion_A1_13','hate','/heɪt/','verb','싫어하다','To feel intense dislike for.','I {hate} being late.','늦는 게 너무 싫어요.','hate','A1','emotion',2,'person dislike frustrated clock'),
('w_emotion_A1_14','cry','/kraɪ/','verb','울다','To shed tears, usually because of sadness or pain.','She started to {cry} during the movie.','그녀는 영화를 보다가 울기 시작했어요.','cry','A1','emotion',2,'person crying sad emotional'),
('w_emotion_A1_15','smile','/smaɪl/','verb','미소 짓다','To make a pleased or happy expression.','He {smiled} when he saw the gift.','그는 선물을 보고 미소 지었어요.','smile','A1','emotion',1,'person smiling happy gift'),
('w_emotion_A1_16','laugh','/læf/','verb','웃다','To make sounds that express amusement or happiness.','We {laughed} at the funny joke.','우리는 재미있는 농담에 웃었어요.','laugh','A1','emotion',1,'friends laughing together fun'),
('w_emotion_A1_17','feel','/fiːl/','verb','느끼다','To be aware of a sensation or emotion.','How do you {feel} today?','오늘 기분이 어때요?','feel','A1','emotion',1,'person introspective calm feeling'),
('w_emotion_A1_18','great','/ɡreɪt/','adjective','정말 좋은, 훌륭한','Excellent or very good.','I feel {great} after exercise.','운동 후에 기분이 정말 좋아요.','great','A1','emotion',1,'person energetic active sports'),
('w_emotion_A1_19','sorry','/ˈsɒri/','adjective','미안한','Feeling regret or sadness about something.','I''m {sorry} for being rude.','무례하게 굴어서 미안해요.','sorry','A1','emotion',1,'person apologizing regret'),
('w_emotion_A1_20','worried','/ˈwʌrid/','adjective','걱정되는','Feeling anxious or troubled.','I was {worried} when you didn''t call.','전화하지 않아서 걱정됐어요.','worried','A1','emotion',2,'person worried anxious phone'),
('w_emotion_A1_21','bored','/bɔːrd/','adjective','지루한','Feeling weary because of dullness.','I''m so {bored} at home today.','오늘 집에 있으니 너무 지루해요.','bored','A1','emotion',2,'person bored sitting indoors'),
('w_emotion_A1_22','hungry','/ˈhʌŋɡri/','adjective','배고픈','Feeling the need to eat.','I''m {hungry} — can we get some food?','배고파요. 뭔가 먹을 수 있을까요?','hungry','A1','emotion',2,'person hungry stomach food'),
('w_emotion_A1_23','lonely','/ˈloʊnli/','adjective','외로운','Feeling sad because of having no friends or company.','She felt {lonely} in the new city.','그녀는 새 도시에서 외로움을 느꼈어요.','lonely','A1','emotion',2,'person alone city street'),
('w_emotion_A1_24','calm','/kɑːm/','adjective','차분한, 평온한','Not excited or anxious; peaceful.','Take a deep breath and stay {calm}.','심호흡하고 차분하게 있으세요.','calm','A1','emotion',1,'person calm peaceful breathing'),
('w_emotion_A1_25','cute','/kjuːt/','adjective','귀여운','Attractive in a pretty or endearing way.','That puppy is so {cute}!','저 강아지 너무 귀여워요!','cute','A1','emotion',3,'cute puppy adorable fluffy'),
('w_emotion_A1_26','mad','/mæd/','adjective','화난','Very angry.','He was {mad} because I broke his phone.','내가 그의 폰을 망가뜨려서 화났어요.','mad','A1','emotion',2,'person angry mad upset'),
('w_emotion_A1_27','surprised','/sərˈpraɪzd/','adjective','놀란','Feeling or showing surprise.','I was so {surprised} by the party.','파티에 정말 놀랐어요.','surprised','A1','emotion',1,'person surprised party shock'),
('w_emotion_A1_28','afraid','/əˈfreɪd/','adjective','두려운, 무서운','Feeling fear in a situation.','I''m {afraid} of flying.','저는 비행기 타는 게 무서워요.','afraid','A1','emotion',2,'person afraid anxious airplane'),
('w_emotion_A1_29','hurt','/hɜːrt/','adjective','상처받은','Feeling emotional pain.','She felt {hurt} by his words.','그녀는 그의 말에 상처를 받았어요.','hurt','A1','emotion',2,'person hurt sad emotional pain'),
('w_emotion_A1_30','sick','/sɪk/','adjective','아픈, 기분 나쁜','Physically or emotionally unwell.','I feel {sick} when I''m stressed.','스트레스를 받으면 기분이 안 좋아요.','sick','A1','emotion',3,'person sick tired unwell'),
('w_emotion_A1_31','scared','/skerd/','adjective','겁먹은','Frightened by something unexpected.','I''m {scared} of making mistakes.','실수하는 게 겁나요.','scared','A1','emotion',2,'person nervous worried mistake'),
('w_emotion_A1_32','proud','/praʊd/','adjective','자랑스러운','Feeling deep pleasure from achievement.','I''m so {proud} of my little sister.','여동생이 너무 자랑스러워요.','proud','A1','emotion',1,'person proud achievement award'),
('w_emotion_A1_33','shy','/ʃaɪ/','adjective','수줍은','Nervous or timid in the company of others.','She is very {shy} around new people.','그녀는 새로운 사람들 앞에서 매우 수줍어해요.','shy','A1','emotion',2,'shy person quiet introvert'),
('w_emotion_A1_34','kind','/kaɪnd/','adjective','친절한','Having a gentle, caring nature.','She is so {kind} to everyone.','그녀는 모든 사람에게 정말 친절해요.','kind','A1','emotion',2,'person kind helping others'),
('w_emotion_A1_35','fun','/fʌn/','adjective','즐거운, 재미있는','Providing amusement or enjoyment.','The trip was so {fun}!','그 여행은 정말 즐거웠어요!','fun','A1','emotion',1,'friends having fun travel trip')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — A2 (35 words)
-- Theme: surprised, worried, bored, confused, proud, nervous, upset, relaxed, grateful, lonely + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_A2_01','surprised','/sərˈpraɪzd/','adjective','놀란','Feeling or showing astonishment at something unexpected.','I was completely {surprised} by the gift.','선물에 완전히 놀랐어요.','surprised','A2','emotion',1,'person surprised unexpected gift reaction'),
('w_emotion_A2_02','worried','/ˈwʌrid/','adjective','걱정되는','Feeling anxious about actual or potential problems.','She looked {worried} about the test results.','그녀는 시험 결과에 대해 걱정스러워 보였어요.','worried','A2','emotion',1,'person worried anxious test results'),
('w_emotion_A2_03','bored','/bɔːrd/','adjective','지루한','Feeling weary and uninterested.','He was {bored} during the long meeting.','그는 긴 회의 동안 지루해했어요.','bored','A2','emotion',1,'person bored long meeting office'),
('w_emotion_A2_04','confused','/kənˈfjuːzd/','adjective','혼란스러운','Unable to think clearly; not understanding.','I was {confused} by the complicated instructions.','복잡한 설명에 혼란스러웠어요.','confused','A2','emotion',1,'person confused instructions puzzled'),
('w_emotion_A2_05','proud','/praʊd/','adjective','뿌듯한, 자랑스러운','Feeling deep satisfaction from achievement.','She was {proud} of passing the exam.','그녀는 시험에 합격해서 뿌듯했어요.','proud','A2','emotion',1,'person proud exam success achievement'),
('w_emotion_A2_06','nervous','/ˈnɜːrvəs/','adjective','긴장한','Easily agitated; feeling anxiety.','He was {nervous} before his first date.','그는 첫 데이트 전에 긴장했어요.','nervous','A2','emotion',1,'person nervous first date anxious'),
('w_emotion_A2_07','upset','/ʌpˈset/','adjective','속상한, 화난','Unhappy, disappointed, or worried.','She was {upset} after the argument.','그녀는 다툼 이후에 속상했어요.','upset','A2','emotion',1,'person upset argument sad'),
('w_emotion_A2_08','relaxed','/rɪˈlækst/','adjective','편안한, 느긋한','Free from tension; calm and at ease.','I feel so {relaxed} after the massage.','마사지 후에 정말 편안해요.','relaxed','A2','emotion',1,'person relaxed massage spa calm'),
('w_emotion_A2_09','grateful','/ˈɡreɪtfəl/','adjective','감사한','Feeling thankful for kindness received.','I''m very {grateful} for your support.','당신의 지원에 정말 감사해요.','grateful','A2','emotion',1,'person grateful thankful warm'),
('w_emotion_A2_10','lonely','/ˈloʊnli/','adjective','외로운','Unhappy because of being alone.','He felt {lonely} living far from family.','그는 가족과 멀리 살면서 외로움을 느꼈어요.','lonely','A2','emotion',1,'person lonely alone home window'),
('w_emotion_A2_11','disappointed','/ˌdɪsəˈpɔɪntɪd/','adjective','실망한','Sad because things did not happen as hoped.','I was {disappointed} that the concert was cancelled.','콘서트가 취소되어서 실망했어요.','disappointed','A2','emotion',1,'person disappointed sad cancelled'),
('w_emotion_A2_12','excited','/ɪkˈsaɪtɪd/','adjective','흥분된, 기대되는','Very enthusiastic and eager about something.','I''m so {excited} about the trip to Japan.','일본 여행이 너무 기대돼요.','excited','A2','emotion',1,'person excited travel packing suitcase'),
('w_emotion_A2_13','jealous','/ˈdʒeləs/','adjective','질투하는','Feeling envy toward someone.','She was {jealous} of her friend''s success.','그녀는 친구의 성공을 질투했어요.','jealous','A2','emotion',2,'person jealous envious comparison'),
('w_emotion_A2_14','embarrassed','/ɪmˈbærəst/','adjective','당황한, 창피한','Feeling ashamed or self-conscious.','He was {embarrassed} when he forgot her name.','그는 그녀의 이름을 잊어버려서 창피했어요.','embarrassed','A2','emotion',1,'person embarrassed blushing awkward'),
('w_emotion_A2_15','hopeful','/ˈhoʊpfəl/','adjective','희망찬','Feeling or inspiring optimism about a future event.','She was {hopeful} about getting the job.','그녀는 취업이 될 것 같아 희망찼어요.','hopeful','A2','emotion',2,'person hopeful optimistic bright future'),
('w_emotion_A2_16','angry','/ˈæŋɡri/','adjective','화난, 분노한','Feeling strong displeasure at something unfair.','He was {angry} about the unfair decision.','그는 불공평한 결정에 화가 났어요.','angry','A2','emotion',2,'person angry unfair decision'),
('w_emotion_A2_17','cheerful','/ˈtʃɪrfəl/','adjective','쾌활한, 명랑한','Noticeably happy and optimistic.','She is always so {cheerful} in the morning.','그녀는 아침에 항상 명랑해요.','cheerful','A2','emotion',2,'person cheerful morning bright smiling'),
('w_emotion_A2_18','confident','/ˈkɒnfɪdənt/','adjective','자신감 있는','Feeling sure about one''s abilities.','She felt {confident} after practising her speech.','연습 후에 자신감이 생겼어요.','confident','A2','emotion',2,'person confident speech presentation'),
('w_emotion_A2_19','anxious','/ˈæŋkʃəs/','adjective','불안한','Experiencing worry or nervousness.','I always feel {anxious} before exams.','시험 전에는 항상 불안해요.','anxious','A2','emotion',2,'person anxious exam nervous'),
('w_emotion_A2_20','comfortable','/ˈkʌmftəbəl/','adjective','편안한','Physically at ease; not worried.','I feel very {comfortable} talking to her.','그녀와 이야기하면 매우 편안해요.','comfortable','A2','emotion',2,'person comfortable talking friends'),
('w_emotion_A2_21','scared','/skerd/','adjective','겁먹은','Fearful of something specific.','She was {scared} of public speaking.','그녀는 대중 앞에서 말하는 게 겁났어요.','scared','A2','emotion',2,'person scared public speaking stage'),
('w_emotion_A2_22','content','/kənˈtent/','adjective','만족하는','In a state of peaceful happiness.','I''m {content} with my simple life.','단순한 삶에 만족해요.','content','A2','emotion',2,'person content simple life cozy'),
('w_emotion_A2_23','stressed','/strest/','adjective','스트레스받은','Feeling mental or emotional pressure.','I''ve been very {stressed} about work.','일 때문에 많이 스트레스받고 있어요.','stressed','A2','emotion',1,'person stressed work overload'),
('w_emotion_A2_24','delighted','/dɪˈlaɪtɪd/','adjective','기쁜, 매우 좋아하는','Feeling very pleased.','She was {delighted} with the surprise.','그녀는 깜짝 선물에 매우 기뻤어요.','delighted','A2','emotion',2,'person delighted surprise joyful'),
('w_emotion_A2_25','ashamed','/əˈʃeɪmd/','adjective','부끄러운','Feeling shame due to wrong behaviour.','He was {ashamed} of his rude comment.','그는 자신의 무례한 말에 부끄러워했어요.','ashamed','A2','emotion',2,'person ashamed regret embarrassed'),
('w_emotion_A2_26','touched','/tʌtʃt/','adjective','감동받은','Emotionally affected by something kind.','I was deeply {touched} by her speech.','그녀의 연설에 깊이 감동받았어요.','touched','A2','emotion',2,'person touched moved emotional speech'),
('w_emotion_A2_27','thrilled','/θrɪld/','adjective','매우 기대되는, 설레는','Extremely pleased and excited.','We were {thrilled} to win first prize.','1등을 받아서 너무 설렜어요.','thrilled','A2','emotion',2,'person thrilled winning prize excited'),
('w_emotion_A2_28','miserable','/ˈmɪzərəbəl/','adjective','비참한','Very unhappy or uncomfortable.','He felt {miserable} after the breakup.','이별 후 그는 비참함을 느꼈어요.','miserable','A2','emotion',3,'person miserable sad breakup rainy'),
('w_emotion_A2_29','awkward','/ˈɔːkwərd/','adjective','어색한','Causing or feeling embarrassment or inconvenience.','There was an {awkward} silence between them.','그들 사이에 어색한 침묵이 흘렀어요.','awkward','A2','emotion',2,'two people awkward silence'),
('w_emotion_A2_30','relieved','/rɪˈliːvd/','adjective','안도한','No longer feeling anxious about something.','I was so {relieved} to hear the good news.','좋은 소식을 듣고 정말 안도했어요.','relieved','A2','emotion',1,'person relieved good news smile'),
('w_emotion_A2_31','impatient','/ɪmˈpeɪʃənt/','adjective','초조한, 참을성 없는','Unable to wait calmly; easily annoyed.','He gets {impatient} when people are slow.','사람들이 느릴 때 초조해해요.','impatient','A2','emotion',3,'person impatient waiting tapping'),
('w_emotion_A2_32','jealous','/ˈdʒeləs/','adjective','부러운','Feeling envy of someone''s advantages.','I''m a little {jealous} of your lifestyle.','당신의 라이프스타일이 좀 부러워요.','jealous','A2','emotion',2,'person envious admiring others'),
('w_emotion_A2_33','overwhelmed','/ˌoʊvərˈwelmd/','adjective','압도된','Buried under too much at once.','I feel {overwhelmed} by all the choices.','선택지가 너무 많아서 압도돼요.','overwhelmed','A2','emotion',2,'person overwhelmed too many options'),
('w_emotion_A2_34','upset','/ʌpˈset/','adjective','기분이 상한','Emotionally disturbed or troubled.','She was {upset} because nobody remembered her birthday.','아무도 생일을 기억하지 않아서 기분이 상했어요.','upset','A2','emotion',2,'person upset birthday forgotten'),
('w_emotion_A2_35','cheerful','/ˈtʃɪrfəl/','adjective','쾌활한','Positive and happy in manner.','He stayed {cheerful} even when things went wrong.','일이 잘못되어도 쾌활함을 유지했어요.','cheerful','A2','emotion',2,'person cheerful positive attitude')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B1 (35 words)
-- Theme: frustrated, relieved, anxious, embarrassed, overwhelmed, content, hopeful, jealous, guilty, enthusiastic + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_B1_01','frustrated','/ˈfrʌstreɪtɪd/','adjective','답답한, 좌절한','Feeling annoyed or upset due to inability to change or achieve something.','I get {frustrated} when the internet is slow.','인터넷이 느릴 때 답답해요.','frustrated','B1','emotion',1,'person frustrated slow internet laptop'),
('w_emotion_B1_02','relieved','/rɪˈliːvd/','adjective','안도한','No longer feeling anxious because a problem has been resolved.','I was so {relieved} when the surgery went well.','수술이 잘 돼서 정말 안도했어요.','relieved','B1','emotion',1,'person relieved hospital surgery recovery'),
('w_emotion_B1_03','anxious','/ˈæŋkʃəs/','adjective','불안한, 초조한','Experiencing worry, unease, or nervousness about something uncertain.','She felt {anxious} waiting for the interview results.','면접 결과를 기다리며 불안해했어요.','anxious','B1','emotion',1,'person anxious waiting results office'),
('w_emotion_B1_04','embarrassed','/ɪmˈbærəst/','adjective','당황한, 창피한','Feeling ashamed or self-conscious because of something awkward.','I was so {embarrassed} when I tripped in public.','공공장소에서 넘어져서 너무 창피했어요.','embarrassed','B1','emotion',1,'person embarrassed tripping public'),
('w_emotion_B1_05','overwhelmed','/ˌoʊvərˈwelmd/','adjective','압도된, 너무 힘든','Feeling completely overcome by too much at once.','I feel {overwhelmed} with all the deadlines.','마감이 너무 많아서 압도돼요.','overwhelmed','B1','emotion',1,'person overwhelmed deadlines stress work'),
('w_emotion_B1_06','content','/kənˈtent/','adjective','만족스러운','In a state of peaceful happiness and satisfaction.','She felt {content} with her simple lifestyle.','그녀는 단순한 삶에 만족감을 느꼈어요.','content','B1','emotion',1,'person content cozy home simple life'),
('w_emotion_B1_07','hopeful','/ˈhoʊpfəl/','adjective','희망에 찬','Feeling optimism about a future event or outcome.','We were {hopeful} about the new project.','새 프로젝트에 희망을 품었어요.','hopeful','B1','emotion',1,'person hopeful new project start sunrise'),
('w_emotion_B1_08','jealous','/ˈdʒeləs/','adjective','질투하는, 시기하는','Feeling or showing envy of someone''s possessions or advantages.','He felt {jealous} when she got the promotion.','그녀가 승진했을 때 그는 질투를 느꼈어요.','jealous','B1','emotion',2,'person jealous promotion work colleague'),
('w_emotion_B1_09','guilty','/ˈɡɪlti/','adjective','죄책감이 드는','Feeling responsible for doing something wrong.','She felt {guilty} for forgetting his birthday.','그의 생일을 잊어버린 것에 죄책감을 느꼈어요.','guilty','B1','emotion',1,'person guilty regret forgetting'),
('w_emotion_B1_10','enthusiastic','/ɪnˌθjuːziˈæstɪk/','adjective','열정적인, 열의 있는','Having or showing intense enjoyment or eagerness.','He was {enthusiastic} about learning Korean.','그는 한국어 배우는 것에 열정적이었어요.','enthusiastic','B1','emotion',1,'person enthusiastic learning studying happy'),
('w_emotion_B1_11','irritated','/ˈɪrɪteɪtɪd/','adjective','짜증난','Feeling mild anger; slightly annoyed.','She felt {irritated} by the constant noise.','끊임없는 소음에 짜증이 났어요.','irritated','B1','emotion',2,'person irritated noise annoyed'),
('w_emotion_B1_12','motivated','/ˈmoʊtɪveɪtɪd/','adjective','동기부여된','Eager and determined to do or achieve something.','I feel {motivated} to exercise every morning.','매일 아침 운동할 동기부여가 돼요.','motivated','B1','emotion',1,'person motivated exercise morning energy'),
('w_emotion_B1_13','discouraged','/dɪˈskʌrɪdʒd/','adjective','낙담한','Feeling less confident or enthusiastic.','She felt {discouraged} after failing the test.','시험에 실패한 후 낙담했어요.','discouraged','B1','emotion',2,'person discouraged failure test sad'),
('w_emotion_B1_14','determined','/dɪˈtɜːrmɪnd/','adjective','결연한, 단호한','Having made a firm decision and resolved not to change it.','She was {determined} to finish the race.','그녀는 레이스를 끝내기로 단호했어요.','determined','B1','emotion',2,'person determined race running strong'),
('w_emotion_B1_15','shocked','/ʃɒkt/','adjective','충격받은','Greatly disturbed or distressed by something unexpected.','We were {shocked} by the sudden resignation.','갑작스러운 사퇴에 충격을 받았어요.','shocked','B1','emotion',1,'person shocked news unexpected surprised'),
('w_emotion_B1_16','fascinated','/ˈfæsɪneɪtɪd/','adjective','매혹된, 흥미를 느끼는','Strongly attracted and interested by something.','She was {fascinated} by the history of Korea.','그녀는 한국 역사에 매혹됐어요.','fascinated','B1','emotion',2,'person fascinated history museum interested'),
('w_emotion_B1_17','disappointed','/ˌdɪsəˈpɔɪntɪd/','adjective','실망한','Sad or displeased because expectations were not met.','He was {disappointed} with his exam score.','시험 점수에 실망했어요.','disappointed','B1','emotion',1,'person disappointed exam score sad'),
('w_emotion_B1_18','inspired','/ɪnˈspaɪərd/','adjective','영감을 받은','Feeling creative or enthusiastic as a result of an influence.','She felt {inspired} after the lecture.','강의를 들은 후 영감을 받았어요.','inspired','B1','emotion',2,'person inspired lecture ideas notes'),
('w_emotion_B1_19','amused','/əˈmjuːzd/','adjective','즐거운, 재미있는','Finding something funny or entertaining.','He was {amused} by the children''s antics.','아이들의 장난에 즐거워했어요.','amused','B1','emotion',2,'person amused children funny'),
('w_emotion_B1_20','irritable','/ˈɪrɪtəbəl/','adjective','짜증을 잘 내는','Easily annoyed or made angry.','She was {irritable} after a poor night''s sleep.','잠을 잘 못 자서 짜증을 잘 냈어요.','irritable','B1','emotion',2,'person irritable tired mornings'),
('w_emotion_B1_21','offended','/əˈfendɪd/','adjective','기분이 상한, 불쾌한','Resentful or annoyed because of a perceived insult.','He was {offended} by the careless remark.','부주의한 말에 기분이 상했어요.','offended','B1','emotion',2,'person offended remark upset'),
('w_emotion_B1_22','comfortable','/ˈkʌmftəbəl/','adjective','편안한','At ease with a situation or person.','I felt {comfortable} sharing my feelings.','감정을 나누는 것이 편안하게 느껴졌어요.','comfortable','B1','emotion',2,'person comfortable sharing conversation'),
('w_emotion_B1_23','pessimistic','/ˌpesɪˈmɪstɪk/','adjective','비관적인','Tending to see the worst aspect of things.','He was {pessimistic} about finding a new job.','새 직장 찾는 것에 비관적이었어요.','pessimistic','B1','emotion',3,'person pessimistic gloomy job search'),
('w_emotion_B1_24','optimistic','/ˌɒptɪˈmɪstɪk/','adjective','낙관적인','Hopeful and confident about the future.','She remained {optimistic} despite the setbacks.','어려움에도 불구하고 낙관적이었어요.','optimistic','B1','emotion',2,'person optimistic bright future confident'),
('w_emotion_B1_25','sentimental','/ˌsentɪˈmentəl/','adjective','감상적인','Prompted by feelings of tenderness or nostalgia.','He felt {sentimental} looking at old photos.','오래된 사진을 보며 감상적인 기분이 들었어요.','sentimental','B1','emotion',2,'person sentimental old photos memories'),
('w_emotion_B1_26','regretful','/rɪˈɡretfəl/','adjective','후회스러운','Feeling or showing regret.','She was {regretful} about not studying harder.','더 열심히 공부하지 않은 것을 후회했어요.','regretful','B1','emotion',2,'person regretful reflection past'),
('w_emotion_B1_27','drained','/dreɪnd/','adjective','기진맥진한','Having all energy used up; exhausted.','I felt completely {drained} after the busy week.','바쁜 한 주 후에 완전히 지쳤어요.','drained','B1','emotion',2,'person drained exhausted tired week'),
('w_emotion_B1_28','resentful','/rɪˈzentfəl/','adjective','억울한, 분개한','Feeling bitterness or indignation at unfair treatment.','She felt {resentful} about being left out.','제외된 것에 억울함을 느꼈어요.','resentful','B1','emotion',3,'person resentful excluded group'),
('w_emotion_B1_29','restless','/ˈrestləs/','adjective','안절부절못하는','Unable to rest or relax due to anxiety.','He was {restless} the night before the presentation.','발표 전날 밤 안절부절못했어요.','restless','B1','emotion',2,'person restless night before event'),
('w_emotion_B1_30','moved','/muːvd/','adjective','감동받은','Deeply emotionally affected by something.','She was deeply {moved} by the documentary.','다큐멘터리에 깊이 감동받았어요.','moved','B1','emotion',1,'person moved emotional documentary film'),
('w_emotion_B1_31','fulfilled','/fʊlˈfɪld/','adjective','성취감을 느끼는','Satisfied and happy because of fully achieving potential.','He felt {fulfilled} after helping the community.','지역 사회를 도운 후 성취감을 느꼈어요.','fulfilled','B1','emotion',2,'person fulfilled volunteering community'),
('w_emotion_B1_32','grateful','/ˈɡreɪtfəl/','adjective','깊이 감사하는','Feeling or showing appreciation for kindness.','I''m deeply {grateful} for this opportunity.','이 기회에 깊이 감사드려요.','grateful','B1','emotion',1,'person grateful opportunity hand gesture'),
('w_emotion_B1_33','energetic','/ˌenərˈdʒetɪk/','adjective','활기찬','Having or showing great energy or vitality.','She felt {energetic} after a good night''s sleep.','숙면 후에 활기차게 느껴졌어요.','energetic','B1','emotion',2,'person energetic morning active'),
('w_emotion_B1_34','withdrawn','/wɪðˈdrɔːn/','adjective','내성적인, 말이 없어진','Retreating from others; emotionally detached.','He became {withdrawn} after the loss.','상실 후 그는 말이 없어졌어요.','withdrawn','B1','emotion',3,'person withdrawn alone quiet sad'),
('w_emotion_B1_35','vulnerable','/ˈvʌlnərəbəl/','adjective','취약한, 상처받기 쉬운','Open to emotional hurt or attack.','She felt {vulnerable} opening up about her past.','과거에 대해 털어놓으면서 마음이 연약하게 느껴졌어요.','vulnerable','B1','emotion',2,'person vulnerable opening up sharing feelings')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B2 (35 words)
-- Theme: melancholic, empathetic, nostalgic, apprehensive, exhilarated, remorseful, indignant, compassionate, bewildered, elated + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_B2_01','melancholic','/ˌmelənˈkɒlɪk/','adjective','우울한, 침울한','Having a feeling of pensive sadness with no obvious cause.','She had a {melancholic} expression as she stared at the rain.','그녀는 빗속을 바라보며 침울한 표정을 지었어요.','melancholic','B2','emotion',1,'person melancholic rain window sad pensive'),
('w_emotion_B2_02','empathetic','/ˌempəˈθetɪk/','adjective','공감하는','Showing an ability to understand and share the feelings of another.','She is very {empathetic} toward people in difficult situations.','그녀는 힘든 상황에 있는 사람들에게 매우 공감해요.','empathetic','B2','emotion',1,'person empathetic listening compassion support'),
('w_emotion_B2_03','nostalgic','/nɒˈstældʒɪk/','adjective','향수를 느끼는','Experiencing a sentimental longing for the past.','I felt {nostalgic} listening to the old songs.','오래된 노래를 들으며 향수를 느꼈어요.','nostalgic','B2','emotion',1,'person nostalgic old music memories'),
('w_emotion_B2_04','apprehensive','/ˌæprɪˈhensɪv/','adjective','걱정되는, 불안한','Worried that something bad might happen.','She was {apprehensive} about meeting her partner''s parents.','파트너의 부모님을 만나는 것에 불안해했어요.','apprehensive','B2','emotion',1,'person apprehensive meeting nervous formal'),
('w_emotion_B2_05','exhilarated','/ɪɡˈzɪləreɪtɪd/','adjective','활기에 넘치는, 신나는','Feeling very happy, animated, or elated.','She felt {exhilarated} after the bungee jump.','번지점프 후에 온몸이 짜릿했어요.','exhilarated','B2','emotion',1,'person exhilarated bungee jump adventure thrilled'),
('w_emotion_B2_06','remorseful','/rɪˈmɔːrsfəl/','adjective','뉘우치는, 후회하는','Feeling deep regret or guilt for wrongdoing.','He was deeply {remorseful} after hurting his friend.','친구에게 상처를 줘서 깊이 후회했어요.','remorseful','B2','emotion',1,'person remorseful regret apology sorry'),
('w_emotion_B2_07','indignant','/ɪnˈdɪɡnənt/','adjective','분개한','Feeling or showing anger about unjust treatment.','She was {indignant} when accused without evidence.','증거 없이 비난을 받자 분개했어요.','indignant','B2','emotion',2,'person indignant unfair accusation angry'),
('w_emotion_B2_08','compassionate','/kəmˈpæʃənət/','adjective','연민 어린, 동정심 있는','Feeling or showing sympathy and concern for others.','She was {compassionate} toward those who were suffering.','고통받는 사람들을 향해 연민을 느꼈어요.','compassionate','B2','emotion',1,'person compassionate helping others care'),
('w_emotion_B2_09','bewildered','/bɪˈwɪldərd/','adjective','당혹스러운, 어리둥절한','Completely puzzled or confused.','He looked {bewildered} by the contradictory instructions.','모순된 지시에 어리둥절해 보였어요.','bewildered','B2','emotion',1,'person bewildered confused contradictory'),
('w_emotion_B2_10','elated','/ɪˈleɪtɪd/','adjective','매우 기쁜, 의기양양한','Ecstatically happy and in high spirits.','She was {elated} when she got the scholarship.','장학금을 받았을 때 너무 기뻤어요.','elated','B2','emotion',1,'person elated scholarship success celebration'),
('w_emotion_B2_11','resentful','/rɪˈzentfəl/','adjective','억울한, 원망스러운','Feeling bitter and angry about unfair treatment.','He was {resentful} about being passed over for promotion.','승진에서 제외되어 억울함을 느꼈어요.','resentful','B2','emotion',2,'person resentful passed over work'),
('w_emotion_B2_12','ambivalent','/æmˈbɪvələnt/','adjective','양면적 감정을 가진','Having mixed or contradictory feelings about something.','She felt {ambivalent} about leaving her hometown.','고향을 떠나는 것에 복잡한 감정을 느꼈어요.','ambivalent','B2','emotion',2,'person ambivalent hometown leaving mixed feelings'),
('w_emotion_B2_13','serene','/səˈriːn/','adjective','평온한, 고요한','Calm, peaceful, and untroubled.','She felt {serene} sitting by the mountain lake.','산 호수 옆에 앉아 평온함을 느꼈어요.','serene','B2','emotion',2,'person serene mountain lake peaceful nature'),
('w_emotion_B2_14','agitated','/ˈædʒɪteɪtɪd/','adjective','동요된, 안절부절못하는','Feeling or appearing troubled or nervous.','He seemed {agitated} throughout the meeting.','그는 회의 내내 안절부절못하는 것 같았어요.','agitated','B2','emotion',2,'person agitated restless meeting nervous'),
('w_emotion_B2_15','despondent','/dɪˈspɒndənt/','adjective','낙심한','In low spirits from loss of hope.','She became {despondent} after repeated failures.','반복된 실패 후에 낙심했어요.','despondent','B2','emotion',2,'person despondent low spirits failure'),
('w_emotion_B2_16','elusive','/ɪˈluːsɪv/','adjective','잡히지 않는, 모호한','(of a feeling) difficult to define or describe.','Happiness sometimes feels {elusive} when you chase it.','행복은 쫓을수록 잡히지 않는 것 같아요.','elusive','B2','emotion',3,'abstract happiness chasing feeling'),
('w_emotion_B2_17','conflicted','/kənˈflɪktɪd/','adjective','내적으로 갈등하는','Having or showing confused or contradictory feelings.','She felt {conflicted} about accepting the job overseas.','해외 취업 제안을 수락할지 내적으로 갈등했어요.','conflicted','B2','emotion',2,'person conflicted decision making choice'),
('w_emotion_B2_18','devastated','/ˈdevəsteɪtɪd/','adjective','망연자실한, 크게 상심한','Very shocked and upset.','He was {devastated} by the sudden loss.','갑작스러운 상실에 크게 상심했어요.','devastated','B2','emotion',2,'person devastated grief loss sad'),
('w_emotion_B2_19','invigorated','/ɪnˈvɪɡəreɪtɪd/','adjective','활력을 얻은','Made to feel strong, healthy, and full of energy.','She felt {invigorated} after the cold shower.','찬물 샤워 후에 활력이 생겼어요.','invigorated','B2','emotion',2,'person invigorated shower morning energy'),
('w_emotion_B2_20','appalled','/əˈpɔːld/','adjective','경악한','Greatly dismayed or horrified.','She was {appalled} by the conditions in the shelter.','쉼터의 환경에 경악했어요.','appalled','B2','emotion',2,'person appalled horrified dismayed situation'),
('w_emotion_B2_21','humiliated','/hjuːˈmɪlɪeɪtɪd/','adjective','굴욕감을 느끼는','Made to feel ashamed and foolish.','He felt {humiliated} after being criticised in front of everyone.','모든 사람 앞에서 비판받아 굴욕감을 느꼈어요.','humiliated','B2','emotion',2,'person humiliated public criticism'),
('w_emotion_B2_22','vindicated','/ˈvɪndɪkeɪtɪd/','adjective','억울함이 풀린, 무죄를 증명받은','Cleared of blame or suspicion.','She felt completely {vindicated} when the truth came out.','진실이 밝혀지자 억울함이 완전히 풀렸어요.','vindicated','B2','emotion',3,'person vindicated truth revealed justice'),
('w_emotion_B2_23','anxious','/ˈæŋkʃəs/','adjective','몹시 열망하는','Very eager or concerned to do something.','He was {anxious} to make a good impression.','좋은 인상을 남기려고 몹시 애썼어요.','anxious','B2','emotion',2,'person eager impression meeting'),
('w_emotion_B2_24','disheartened','/dɪsˈhɑːrtənd/','adjective','낙담한, 의기소침한','Having lost determination or confidence.','She was {disheartened} by the lack of progress.','진전이 없어 의기소침해졌어요.','disheartened','B2','emotion',2,'person disheartened no progress discouraged'),
('w_emotion_B2_25','euphoric','/juːˈfɒrɪk/','adjective','행복감에 넘치는','Intensely happy and confident.','He felt {euphoric} after completing the marathon.','마라톤을 완주한 후 행복감에 넘쳤어요.','euphoric','B2','emotion',2,'person euphoric marathon finish line celebration'),
('w_emotion_B2_26','sullen','/ˈsʌlən/','adjective','시무룩한, 쌀쌀한','Bad-tempered and sulky; not social.','He sat in {sullen} silence after the argument.','다툼 이후 시무룩하게 침묵을 지켰어요.','sullen','B2','emotion',3,'person sullen silent after argument'),
('w_emotion_B2_27','wistful','/ˈwɪstfəl/','adjective','아쉬운, 그리운','Having or showing a feeling of vague or regretful longing.','She gave a {wistful} smile as she left the old house.','오래된 집을 떠나며 아쉬운 미소를 지었어요.','wistful','B2','emotion',2,'person wistful leaving old house nostalgic'),
('w_emotion_B2_28','content','/kənˈtent/','adjective','내적으로 평안한','In a state of quiet happiness.','He was quietly {content} with the life he had built.','그는 자신이 만들어 온 삶에 조용히 평안함을 느꼈어요.','content','B2','emotion',2,'person content quiet life simple home'),
('w_emotion_B2_29','troubled','/ˈtrʌbəld/','adjective','마음이 불편한','Burdened by problems or distress.','She looked {troubled} by something she couldn''t explain.','뭔가 설명하기 어려운 것에 마음이 불편해 보였어요.','troubled','B2','emotion',2,'person troubled worried unexplained feeling'),
('w_emotion_B2_30','cathartic','/kəˈθɑːrtɪk/','adjective','정서적으로 해방되는','Providing psychological relief through the open expression of emotion.','Crying during the film was strangely {cathartic}.','영화를 보며 우는 것이 묘하게 카타르시스를 줬어요.','cathartic','B2','emotion',3,'person crying film cathartic emotional relief'),
('w_emotion_B2_31','overwhelmed','/ˌoʊvərˈwelmd/','adjective','감사함에 압도된','Overcome by a positive feeling (e.g., gratitude).','She was {overwhelmed} with gratitude for their kindness.','그들의 친절함에 감사함으로 압도됐어요.','overwhelmed','B2','emotion',2,'person overwhelmed gratitude kindness emotional'),
('w_emotion_B2_32','disillusioned','/ˌdɪsɪˈluːʒənd/','adjective','환멸을 느끼는','Disappointed by the reality of something once idealised.','He became {disillusioned} with politics.','그는 정치에 환멸을 느끼게 됐어요.','disillusioned','B2','emotion',3,'person disillusioned politics disappointed reality'),
('w_emotion_B2_33','yearning','/ˈjɜːrnɪŋ/','adjective','갈망하는','Feeling a tender or urgent desire for something.','She had a deep {yearning} for connection.','그녀는 유대감에 대한 깊은 갈망이 있었어요.','yearning','B2','emotion',2,'person yearning connection longing desire'),
('w_emotion_B2_34','liberated','/ˈlɪbəreɪtɪd/','adjective','해방된, 자유로운 기분인','Free from social conventions or oppressive situations.','She felt {liberated} after quitting the toxic job.','독성적인 직장을 그만두고 해방된 기분이었어요.','liberated','B2','emotion',2,'person liberated quitting job free'),
('w_emotion_B2_35','conflicted','/kənˈflɪktɪd/','adjective','복잡한 심경인','Experiencing inner conflict between opposing feelings.','He felt deeply {conflicted} about the decision.','그 결정에 대해 깊이 복잡한 심경이었어요.','conflicted','B2','emotion',2,'person conflicted decision complexity inner')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C1 (35 words)
-- Theme: despondent, euphoric, ambivalent, disenchanted, forlorn, jubilant, mortified, pensive, wistful, appalled + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_C1_01','despondent','/dɪˈspɒndənt/','adjective','낙심한, 절망에 빠진','In low spirits from loss of hope or courage.','She was {despondent} after losing the election.','선거에서 지고 낙심에 빠졌어요.','despondent','C1','emotion',1,'person despondent election failure hopeless'),
('w_emotion_C1_02','euphoric','/juːˈfɒrɪk/','adjective','극도의 행복감에 찬','Intensely happy and excited.','He felt {euphoric} after the team''s victory.','팀의 승리 후 극도의 행복감을 느꼈어요.','euphoric','C1','emotion',1,'team victory celebration euphoric crowd'),
('w_emotion_C1_03','ambivalent','/æmˈbɪvələnt/','adjective','상반된 감정이 공존하는','Having mixed and contradictory feelings simultaneously.','She felt {ambivalent} about the new opportunity.','새 기회에 대해 상반된 감정을 느꼈어요.','ambivalent','C1','emotion',1,'person ambivalent mixed feelings decision crossroads'),
('w_emotion_C1_04','disenchanted','/ˌdɪsɪnˈtʃɑːntɪd/','adjective','환멸을 느끼는','Disappointed that something was less good than you believed.','He became {disenchanted} with the corporate world.','그는 기업 세계에 환멸을 느끼게 됐어요.','disenchanted','C1','emotion',1,'person disenchanted office corporate disappointed'),
('w_emotion_C1_05','forlorn','/fərˈlɔːrn/','adjective','쓸쓸한, 버려진 느낌의','Pitifully sad and abandoned.','She looked {forlorn} sitting alone in the empty café.','텅 빈 카페에 혼자 앉아 쓸쓸해 보였어요.','forlorn','C1','emotion',2,'person forlorn alone empty cafe sad lonely'),
('w_emotion_C1_06','jubilant','/ˈdʒuːbɪlənt/','adjective','환호하는, 의기양양한','Feeling or expressing great happiness and triumph.','The crowd was {jubilant} after the championship win.','챔피언십 우승 후 군중은 환호했어요.','jubilant','C1','emotion',1,'crowd jubilant championship winning celebration'),
('w_emotion_C1_07','mortified','/ˈmɔːrtɪfaɪd/','adjective','몹시 창피한, 굴욕스러운','Feeling intense embarrassment or shame.','She was {mortified} when she called the teacher ''mum''.','선생님을 ''엄마''라고 불러서 몹시 창피했어요.','mortified','C1','emotion',1,'person mortified embarrassed mistake classroom'),
('w_emotion_C1_08','pensive','/ˈpensɪv/','adjective','생각에 잠긴','Engaged in deep or serious thought.','He sat in a {pensive} mood, staring at the horizon.','그는 수평선을 바라보며 생각에 잠겨 있었어요.','pensive','C1','emotion',1,'person pensive thinking horizon deep thought'),
('w_emotion_C1_09','wistful','/ˈwɪstfəl/','adjective','그리움이 섞인 아쉬움','Having a feeling of vague longing or regretful yearning.','She had a {wistful} look as she recalled her childhood.','어린 시절을 떠올리며 아쉬운 눈빛을 보냈어요.','wistful','C1','emotion',1,'person wistful childhood memories nostalgic'),
('w_emotion_C1_10','appalled','/əˈpɔːld/','adjective','경악한, 충격을 받은','Greatly dismayed or horrified by something.','He was {appalled} at the level of corruption.','부패의 수준에 경악했어요.','appalled','C1','emotion',1,'person appalled corruption shocked dismayed'),
('w_emotion_C1_11','disquieted','/dɪsˈkwaɪətɪd/','adjective','불안하게 된','Made to feel anxious or unsettled.','She felt {disquieted} by his evasive answers.','그의 얼버무리는 답변에 불안해졌어요.','disquieted','C1','emotion',2,'person disquieted uneasy evasive answer'),
('w_emotion_C1_12','elated','/ɪˈleɪtɪd/','adjective','기쁨에 넘치는','Ecstatically happy.','They were {elated} at the unexpected promotion.','예기치 않은 승진에 기쁨에 넘쳤어요.','elated','C1','emotion',2,'person elated promotion joyful work'),
('w_emotion_C1_13','perturbed','/pərˈtɜːrbd/','adjective','마음이 어지러운','Anxious or unsettled; troubled.','She was {perturbed} by the sudden change in plans.','갑작스러운 계획 변경에 마음이 어지러웠어요.','perturbed','C1','emotion',2,'person perturbed troubled anxious change'),
('w_emotion_C1_14','disconsolate','/dɪsˈkɒnsələt/','adjective','위안받을 수 없는','Unhappy and unable to be comforted.','He was {disconsolate} after his dog passed away.','개가 죽은 후 위안받을 수 없을 정도로 슬펐어요.','disconsolate','C1','emotion',2,'person disconsolate grief pet loss'),
('w_emotion_C1_15','buoyant','/ˈbɔɪənt/','adjective','낙관적인, 기분이 들뜬','Cheerful and optimistic, especially in a difficult situation.','Despite the criticism, she remained {buoyant} and positive.','비판에도 불구하고 그녀는 기분이 들뜬 채 긍정적이었어요.','buoyant','C1','emotion',2,'person buoyant positive upbeat criticism'),
('w_emotion_C1_16','contemptuous','/kənˈtemptʃuəs/','adjective','경멸하는','Showing contempt; scornful.','He gave a {contemptuous} glance at the offer.','제안을 경멸하듯 쳐다봤어요.','contemptuous','C1','emotion',3,'person contemptuous scornful dismissive'),
('w_emotion_C1_17','incredulous','/ɪnˈkredjʊləs/','adjective','믿을 수 없다는','Unwilling or unable to believe something.','She stared at him with an {incredulous} expression.','그녀는 믿을 수 없다는 표정으로 그를 바라봤어요.','incredulous','C1','emotion',2,'person incredulous disbelief staring'),
('w_emotion_C1_18','mournful','/ˈmɔːrnfəl/','adjective','애도하는, 슬픔에 잠긴','Feeling or expressing sorrow or grief.','A {mournful} silence fell over the room.','슬픔에 잠긴 침묵이 방을 감쌌어요.','mournful','C1','emotion',2,'person mournful grief silence'),
('w_emotion_C1_19','exasperated','/ɪɡˈzæspəreɪtɪd/','adjective','극도로 짜증난','Intensely irritated and frustrated.','She was {exasperated} by his constant complaints.','그의 끊임없는 불평에 극도로 짜증이 났어요.','exasperated','C1','emotion',2,'person exasperated constant complaints'),
('w_emotion_C1_20','melancholy','/ˈmelənkɒli/','noun','우울함','A feeling of pensive sadness.','He was overcome by a deep sense of {melancholy}.','깊은 우울감에 사로잡혔어요.','melancholy','C1','emotion',2,'person deep melancholy sad pensive'),
('w_emotion_C1_21','trepidation','/ˌtrepɪˈdeɪʃən/','noun','불안, 공포감','A feeling of fear or agitation about something that may happen.','She entered the interview room with some {trepidation}.','그녀는 다소 불안한 마음으로 면접실에 들어섰어요.','trepidation','C1','emotion',2,'person trepidation nervous interview'),
('w_emotion_C1_22','compunction','/kəmˈpʌŋkʃən/','noun','양심의 가책','A feeling of guilt or moral scruple about something.','He showed no {compunction} about his actions.','그는 자신의 행동에 대해 아무런 양심의 가책도 보이지 않았어요.','compunction','C1','emotion',3,'person no remorse guilt moral'),
('w_emotion_C1_23','elation','/ɪˈleɪʃən/','noun','크나큰 기쁨','Great happiness and exhilaration.','A wave of {elation} swept over her when she passed.','합격했을 때 크나큰 기쁨의 물결이 덮쳤어요.','elation','C1','emotion',2,'person wave elation happiness result'),
('w_emotion_C1_24','despondency','/dɪˈspɒndənsi/','noun','낙담, 절망감','A state of low spirits caused by loss of hope or courage.','His {despondency} was evident in his slumped posture.','굽은 자세에 그의 낙담이 역력히 드러났어요.','despondency','C1','emotion',2,'person despondency slumped sad hopeless'),
('w_emotion_C1_25','ambiguity','/ˌæmbɪˈɡjuːɪti/','noun','감정적 모호함','An emotion or situation that can be understood in more than one way.','She sat with the {ambiguity} of her feelings for a while.','그녀는 잠시 자신의 감정적 모호함과 함께 앉아 있었어요.','ambiguity','C1','emotion',3,'person sitting contemplating ambiguous feelings'),
('w_emotion_C1_26','resignation','/ˌrezɪɡˈneɪʃən/','noun','체념','Acceptance of something undesirable but inevitable.','He accepted the outcome with quiet {resignation}.','그는 결과를 조용한 체념으로 받아들였어요.','resignation','C1','emotion',2,'person resigned acceptance quiet outcome'),
('w_emotion_C1_27','fervent','/ˈfɜːrvənt/','adjective','열렬한, 열정적인','Having or displaying passionate intensity.','She spoke with {fervent} emotion about her cause.','그녀는 자신의 대의에 대해 열렬한 감정으로 말했어요.','fervent','C1','emotion',2,'person fervent passionate speech cause'),
('w_emotion_C1_28','indifferent','/ɪnˈdɪfrənt/','adjective','무관심한','Having no particular interest or feeling.','He seemed completely {indifferent} to the outcome.','그는 결과에 완전히 무관심한 것 같았어요.','indifferent','C1','emotion',2,'person indifferent no interest outcome'),
('w_emotion_C1_29','tormented','/ˈtɔːrmentɪd/','adjective','고통받는, 괴로움에 시달리는','Suffering from great mental pain.','She was {tormented} by guilt for years.','그녀는 수년간 죄책감에 시달렸어요.','tormented','C1','emotion',2,'person tormented guilt mental pain years'),
('w_emotion_C1_30','solemn','/ˈsɒləm/','adjective','엄숙한','Formal and dignified; not cheerful.','The ceremony was a {solemn} occasion.','그 의식은 엄숙한 자리였어요.','solemn','C1','emotion',2,'ceremony solemn dignified formal occasion'),
('w_emotion_C1_31','bereft','/bɪˈreft/','adjective','크게 상실감을 느끼는','Lacking something or feeling a great loss.','She was {bereft} when her mentor passed away.','스승이 돌아가셨을 때 크게 상실감을 느꼈어요.','bereft','C1','emotion',2,'person bereft loss mentor grief'),
('w_emotion_C1_32','elusive','/ɪˈluːsɪv/','adjective','포착하기 어려운','(of an emotion) difficult to pin down or describe clearly.','True joy felt {elusive} in the midst of success.','성공 속에서도 진정한 기쁨은 포착하기 어려웠어요.','elusive','C1','emotion',3,'abstract elusive joy success'),
('w_emotion_C1_33','tumultuous','/tjuːˈmʌltʃuəs/','adjective','격동적인','Making an uproar; emotionally turbulent.','The years after the loss were {tumultuous}.','상실 이후의 몇 년은 감정적으로 격동적이었어요.','tumultuous','C1','emotion',2,'person tumultuous emotional turbulent years'),
('w_emotion_C1_34','reverent','/ˈrevərənt/','adjective','경외하는','Feeling or showing deep and solemn respect.','She had a {reverent} appreciation for classical music.','그녀는 클래식 음악에 경외에 가까운 감사함을 느꼈어요.','reverent','C1','emotion',3,'person reverent classical music concert'),
('w_emotion_C1_35','disaffected','/ˌdɪsəˈfektɪd/','adjective','불만을 품은, 등을 돌린','No longer satisfied or loyal; dissatisfied.','Many {disaffected} workers left the company.','불만을 품은 많은 직원들이 회사를 떠났어요.','disaffected','C1','emotion',3,'disaffected workers leaving company')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C2 (35 words)
-- Theme: lugubrious, sanguine, lachrymose, disconsolate, ebullient, ineffable, equanimous, magnanimous, stoic, languid + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_C2_01','lugubrious','/luːˈɡuːbriəs/','adjective','음울한, 처량한','Looking or sounding sad and mournful.','He wore a {lugubrious} expression throughout the gathering.','모임 내내 처량한 표정을 하고 있었어요.','lugubrious','C2','emotion',1,'person lugubrious mournful gathering sad expression'),
('w_emotion_C2_02','sanguine','/ˈsæŋɡwɪn/','adjective','낙관적인, 자신감 있는','Optimistic, especially in a difficult situation.','She remained {sanguine} despite the dire forecasts.','암울한 전망에도 불구하고 낙관적이었어요.','sanguine','C2','emotion',1,'person sanguine optimistic confident difficult forecast'),
('w_emotion_C2_03','lachrymose','/ˈlækrɪmoʊs/','adjective','눈물을 잘 흘리는, 슬픔에 젖은','Tearful or given to weeping.','He became {lachrymose} whenever he heard that song.','그 노래를 들을 때마다 눈물이 났어요.','lachrymose','C2','emotion',1,'person lachrymose tearful song emotional'),
('w_emotion_C2_04','disconsolate','/dɪsˈkɒnsələt/','adjective','위로받을 수 없을 만큼 슬픈','Deeply unhappy and unable to be comforted.','She was {disconsolate} after the irreversible mistake.','되돌릴 수 없는 실수 이후 위로받을 수 없을 만큼 슬펐어요.','disconsolate','C2','emotion',1,'person disconsolate grief irreversible mistake'),
('w_emotion_C2_05','ebullient','/ɪˈbʊliənt/','adjective','활기가 넘치는, 넘쳐흐르는','Cheerful and full of energy.','She arrived in an {ebullient} mood, ready to celebrate.','그녀는 축하할 준비를 하며 활기가 넘치는 기분으로 도착했어요.','ebullient','C2','emotion',1,'person ebullient energetic celebrating mood'),
('w_emotion_C2_06','ineffable','/ɪnˈefəbəl/','adjective','말로 표현할 수 없는','Too great or extreme to be expressed in words.','There was an {ineffable} sense of peace in that moment.','그 순간 말로 표현할 수 없는 평화로움이 있었어요.','ineffable','C2','emotion',1,'abstract ineffable peace serene moment'),
('w_emotion_C2_07','equanimous','/ɪˈkwænɪməs/','adjective','평정심을 가진','Having mental calmness and composure.','She remained {equanimous} in the face of crisis.','위기 앞에서도 평정심을 유지했어요.','equanimous','C2','emotion',1,'person equanimous calm crisis composure'),
('w_emotion_C2_08','magnanimous','/mæɡˈnænɪməs/','adjective','관대한, 너그러운','Generous or forgiving, especially toward a rival or enemy.','She was {magnanimous} in victory, praising her opponent.','그녀는 승리 속에서도 관대하게 상대방을 칭찬했어요.','magnanimous','C2','emotion',1,'person magnanimous generous victory praising opponent'),
('w_emotion_C2_09','stoic','/ˈstoʊɪk/','adjective','감정을 드러내지 않는, 의연한','Enduring pain or hardship without showing feelings.','He faced the diagnosis with {stoic} acceptance.','그는 진단을 의연하게 받아들였어요.','stoic','C2','emotion',1,'person stoic diagnosis acceptance calm'),
('w_emotion_C2_10','languid','/ˈlæŋɡwɪd/','adjective','나른한, 무기력한','Having or showing a disinclination for physical effort.','She gazed {languid}ly out of the train window.','그녀는 나른하게 기차 창밖을 바라봤어요.','languid','C2','emotion',1,'person languid train window dreamy'),
('w_emotion_C2_11','turbulent','/ˈtɜːrbjʊlənt/','adjective','격동적인, 혼란스러운','Characterised by conflict, disorder, or confusion.','His teenage years were emotionally {turbulent}.','그의 십대 시절은 감정적으로 격동적이었어요.','turbulent','C2','emotion',2,'turbulent emotional teenage years conflict'),
('w_emotion_C2_12','imperturbable','/ˌɪmpərˈtɜːrbəbəl/','adjective','흔들리지 않는, 침착한','Unable to be upset or excited; remaining calm.','Her {imperturbable} manner inspired confidence in her team.','흔들리지 않는 태도가 팀에게 자신감을 불어넣었어요.','imperturbable','C2','emotion',2,'person imperturbable calm leader team inspired'),
('w_emotion_C2_13','anguish','/ˈæŋɡwɪʃ/','noun','극심한 고뇌','Severe mental or physical pain or suffering.','She cried out in {anguish} at the devastating news.','충격적인 소식에 극심한 고뇌로 울부짖었어요.','anguish','C2','emotion',2,'person anguish devastating news grief'),
('w_emotion_C2_14','rapturous','/ˈræptʃərəs/','adjective','황홀한, 기쁨에 넘치는','Characterized by or expressing great pleasure.','The audience gave a {rapturous} welcome to the singer.','관객은 가수에게 황홀한 환영을 보냈어요.','rapturous','C2','emotion',2,'audience rapturous welcome concert singer'),
('w_emotion_C2_15','doleful','/ˈdoʊlfəl/','adjective','구슬픈, 슬픈','Expressing sorrow; mournful.','He sang in a {doleful} tone that moved everyone.','모두를 감동시키는 구슬픈 음조로 노래했어요.','doleful','C2','emotion',2,'person doleful singing mournful tone'),
('w_emotion_C2_16','placid','/ˈplæsɪd/','adjective','평온한, 차분한','Not easily upset or excited; calm.','She had a {placid} temperament even in chaos.','혼란 속에서도 평온한 기질을 가지고 있었어요.','placid','C2','emotion',2,'person placid calm chaos temperament'),
('w_emotion_C2_17','sulky','/ˈsʌlki/','adjective','삐진, 기분이 상한','Morose, bad-tempered, and resentful; refusing to be communicative.','He gave a {sulky} shrug and left the room.','삐진 채로 어깨를 으쓱하고 방을 나갔어요.','sulky','C2','emotion',3,'person sulky moody shrug room'),
('w_emotion_C2_18','intrepid','/ɪnˈtrepɪd/','adjective','겁 없는, 대담한','Fearless; adventurous.','She remained {intrepid} despite the growing danger.','위험이 커지는 상황에서도 겁 없이 있었어요.','intrepid','C2','emotion',3,'person intrepid fearless adventure danger'),
('w_emotion_C2_19','petulant','/ˈpetʃʊlənt/','adjective','짜증을 잘 부리는','Childishly sulky or bad-tempered.','His {petulant} behaviour embarrassed his colleagues.','그의 짜증스러운 행동이 동료들을 당황케 했어요.','petulant','C2','emotion',3,'person petulant childish behaviour colleagues'),
('w_emotion_C2_20','nonchalant','/ˌnɒnʃəˈlɑːnt/','adjective','태연한, 무심한','Feeling or appearing casually calm; indifferent.','She gave a {nonchalant} wave and walked away.','태연하게 손을 흔들고 걸어갔어요.','nonchalant','C2','emotion',2,'person nonchalant casual wave indifferent'),
('w_emotion_C2_21','fervent','/ˈfɜːrvənt/','adjective','열렬하고 깊은','Having or displaying deep and sincere passion.','His {fervent} hope was that peace would prevail.','그의 열렬한 바람은 평화가 이어지는 것이었어요.','fervent','C2','emotion',2,'person fervent hope peace sincere'),
('w_emotion_C2_22','rueful','/ˈruːfəl/','adjective','후회하는 듯한','Expressing sorrow or regret in a wry way.','She gave a {rueful} smile at her past mistakes.','과거 실수를 떠올리며 후회하는 듯 미소 지었어요.','rueful','C2','emotion',2,'person rueful smile past mistakes'),
('w_emotion_C2_23','convivial','/kənˈvɪviəl/','adjective','유쾌한, 즐거운','Friendly and lively; relating to good company.','The evening had a {convivial} atmosphere.','저녁 자리는 유쾌한 분위기였어요.','convivial','C2','emotion',2,'group convivial evening friendly lively'),
('w_emotion_C2_24','irascible','/ɪˈræsɪbəl/','adjective','성미가 급한','Having or showing a tendency to be easily angered.','His {irascible} nature made him difficult to work with.','성미가 급한 성격 때문에 함께 일하기 어려웠어요.','irascible','C2','emotion',3,'person irascible quick temper difficult'),
('w_emotion_C2_25','mollified','/ˈmɒlɪfaɪd/','adjective','달래진','Appeased in anger or anxiety.','She felt {mollified} after his sincere apology.','그의 진심 어린 사과 후에 마음이 달래졌어요.','mollified','C2','emotion',2,'person mollified apology appeased calm'),
('w_emotion_C2_26','enraptured','/ɪnˈræptʃərd/','adjective','황홀경에 빠진','Filled with great delight; enchanted.','The audience was {enraptured} by the performance.','관객은 공연에 황홀경에 빠졌어요.','enraptured','C2','emotion',2,'audience enraptured performance enchanted'),
('w_emotion_C2_27','querulous','/ˈkweriʊləs/','adjective','불평이 많은, 투정부리는','Complaining in a rather petulant or whining way.','She spoke in a {querulous} tone about everything.','모든 것에 대해 불평하는 투로 말했어요.','querulous','C2','emotion',3,'person querulous complaining tone whining'),
('w_emotion_C2_28','elated','/ɪˈleɪtɪd/','adjective','고양된, 황홀한','In an intensely high-spirited state.','The whole department was {elated} by the news.','부서 전체가 소식에 고양됐어요.','elated','C2','emotion',2,'department elated news celebration high spirits'),
('w_emotion_C2_29','impervious','/ɪmˈpɜːrviəs/','adjective','영향받지 않는','Not susceptible to something.','She was {impervious} to criticism, focused on her goal.','비판에 영향받지 않고 목표에 집중했어요.','impervious','C2','emotion',2,'person impervious criticism focused goal'),
('w_emotion_C2_30','indignant','/ɪnˈdɪɡnənt/','adjective','분개한, 의분에 찬','Feeling or showing anger at something unjust.','She was {indignant} at the blatant injustice.','노골적인 불의에 분개했어요.','indignant','C2','emotion',2,'person indignant injustice anger righteous'),
('w_emotion_C2_31','beatific','/ˌbiːəˈtɪfɪk/','adjective','더없이 행복한','Blissfully happy; showing serenity and joy.','She wore a {beatific} smile as she held the baby.','아기를 안으며 더없이 행복한 미소를 지었어요.','beatific','C2','emotion',2,'person beatific smile baby blissful joyful'),
('w_emotion_C2_32','crestfallen','/ˈkrestfɔːlən/','adjective','풀이 죽은, 의기소침한','Sad and disappointed.','He looked {crestfallen} when his idea was rejected.','아이디어가 거절당하자 풀이 죽어 보였어요.','crestfallen','C2','emotion',2,'person crestfallen idea rejected sad'),
('w_emotion_C2_33','truculent','/ˈtrʌkjʊlənt/','adjective','시비를 걸려는, 공격적인','Eager or quick to argue or fight.','He adopted a {truculent} tone in the negotiation.','협상에서 시비를 거는 어조를 취했어요.','truculent','C2','emotion',3,'person truculent negotiation aggressive tone'),
('w_emotion_C2_34','phlegmatic','/fleɡˈmætɪk/','adjective','냉정한, 감정이 없어 보이는','Having an unemotional and stolidly calm disposition.','He received both praise and blame with {phlegmatic} calm.','칭찬과 비난 모두를 냉정하게 받아들였어요.','phlegmatic','C2','emotion',2,'person phlegmatic calm unemotional stoic'),
('w_emotion_C2_35','ineffable','/ɪnˈefəbəl/','adjective','경외감이 너무 커서 말로 못 할','Too sacred or overwhelming to be expressed.','The beauty of the landscape was {ineffable}.','그 풍경의 아름다움은 말로 표현할 수 없었어요.','ineffable','C2','emotion',2,'landscape ineffable beauty overwhelming awe')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — A1 (7 patterns)
-- Situation: 기분 표현
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_A1_01','I''m so happy!','너무 행복해요!','so happy','감정을 강조할 때 so를 쓰면 더 자연스러워요.','기쁨 표현','A1','emotion','pattern',NULL,1),
('s_emotion_A1_02','I feel sad today.','오늘 슬픈 기분이에요.','feel sad','feel + 감정 형용사는 기분을 표현하는 가장 기본 패턴이에요.','슬픔 표현','A1','emotion','pattern',NULL,2),
('s_emotion_A1_03','I''m really tired.','정말 피곤해요.','really tired','really를 붙이면 감정의 강도를 강조할 수 있어요.','피로감 표현','A1','emotion','pattern',NULL,3),
('s_emotion_A1_04','Are you okay?','괜찮아요?','Are you okay','상대방 걱정을 가볍게 물을 때 쓸 수 있는 표현이에요.','걱정 표현','A1','emotion','pattern',NULL,4),
('s_emotion_A1_05','I''m scared.','무서워요.','I''m scared','감정 형용사 앞에 I''m을 붙이면 바로 기분을 전달할 수 있어요.','공포 표현','A1','emotion','pattern',NULL,5),
('s_emotion_A1_06','I feel good!','기분이 좋아요!','feel good','feel good은 신체적으로도, 감정적으로도 쓸 수 있는 표현이에요.','긍정 감정','A1','emotion','pattern',NULL,6),
('s_emotion_A1_07','I''m not okay.','괜찮지 않아요.','not okay','부정형으로 솔직하게 감정을 표현하는 표현이에요.','솔직한 감정 표현','A1','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — A2 (7 patterns)
-- Situation: 감정 공유
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_A2_01','I''m a little worried about it.','그것에 대해 좀 걱정돼요.','a little worried','a little을 붙이면 감정을 부드럽게, 덜 직접적으로 표현할 수 있어요.','걱정 공유','A2','emotion','pattern',NULL,1),
('s_emotion_A2_02','She seemed upset when I saw her.','내가 봤을 때 그녀는 속상해 보였어요.','seemed upset','seemed + 감정 형용사는 다른 사람의 감정을 묘사할 때 써요.','감정 묘사','A2','emotion','pattern',NULL,2),
('s_emotion_A2_03','I got so nervous before the speech.','발표 전에 너무 긴장했어요.','got so nervous','got + 형용사는 감정 변화를 나타낼 때 쓰는 자연스러운 패턴이에요.','긴장 공유','A2','emotion','pattern',NULL,3),
('s_emotion_A2_04','I felt really grateful for your help.','도움에 정말 감사함을 느꼈어요.','felt really grateful','과거에 느낀 감정을 felt로 표현하는 패턴이에요.','감사 표현','A2','emotion','pattern',NULL,4),
('s_emotion_A2_05','He was so surprised by the news.','그는 그 소식에 정말 놀랐어요.','so surprised','so + 감정 형용사로 감정의 강도를 표현해요.','놀람 표현','A2','emotion','pattern',NULL,5),
('s_emotion_A2_06','I''m feeling a bit bored at home.','집에서 좀 지루하게 느껴지고 있어요.','feeling a bit bored','현재진행형 am feeling은 지금 이 순간의 감정에 집중하는 표현이에요.','지루함 표현','A2','emotion','pattern',NULL,6),
('s_emotion_A2_07','I was so relieved to hear that.','그 말을 듣고 정말 안도했어요.','so relieved to hear','relieved to + 동사원형은 안도의 이유를 함께 표현하는 패턴이에요.','안도 표현','A2','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — B1 (7 patterns)
-- Situation: 위로, 공감
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_B1_01','I completely understand how you feel.','어떤 기분인지 완전히 이해해요.','completely understand','완전히 공감할 때 completely understand를 쓰면 진심이 더 잘 전달돼요.','공감 표현','B1','emotion','pattern',NULL,1),
('s_emotion_B1_02','It''s okay to feel that way.','그렇게 느끼는 건 괜찮아요.','It''s okay to feel','상대방의 감정을 인정할 때 It''s okay to feel that way는 따뜻한 위로가 돼요.','위로 표현','B1','emotion','pattern',NULL,2),
('s_emotion_B1_03','I''ve been feeling a bit overwhelmed lately.','요즘 좀 압도되는 기분이에요.','feeling a bit overwhelmed','lately를 붙이면 최근의 지속적인 감정 상태를 표현할 수 있어요.','감정 공유','B1','emotion','pattern',NULL,3),
('s_emotion_B1_04','That must have been really frustrating for you.','그게 당신에게 정말 답답했겠어요.','must have been really frustrating','must have been은 상대방이 겪었을 감정에 공감할 때 쓰는 표현이에요.','공감 표현','B1','emotion','pattern',NULL,4),
('s_emotion_B1_05','I felt so guilty about what happened.','일어난 일에 대해 정말 죄책감을 느꼈어요.','felt so guilty','felt guilty about + 명사/동명사는 죄책감을 표현하는 자연스러운 패턴이에요.','죄책감 표현','B1','emotion','pattern',NULL,5),
('s_emotion_B1_06','She seemed really enthusiastic about the project.','그녀는 프로젝트에 정말 열의를 보이는 것 같았어요.','seemed really enthusiastic','seemed + 부사 + 감정 형용사로 다른 사람의 감정을 자연스럽게 묘사해요.','감정 묘사','B1','emotion','pattern',NULL,6),
('s_emotion_B1_07','I''m so relieved it all worked out in the end.','결국 다 잘 풀려서 정말 안도돼요.','so relieved it all worked out','it all worked out은 일이 잘 해결됐을 때 쓰는 표현이에요.','안도 표현','B1','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — B2 (7 patterns)
-- Situation: 감정 묘사
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_B2_01','I couldn''t help feeling a sense of melancholy as I left.','떠나면서 우울한 기분이 드는 걸 어쩔 수 없었어요.','couldn''t help feeling','couldn''t help + 동명사는 감정이나 충동을 참을 수 없었다는 뜻이에요.','감정 묘사','B2','emotion','pattern',NULL,1),
('s_emotion_B2_02','I felt a deep sense of nostalgia looking at those old photos.','그 오래된 사진들을 보며 깊은 향수를 느꼈어요.','a deep sense of nostalgia','a deep sense of + 감정 명사는 감정의 깊이를 세련되게 표현해요.','감정 묘사','B2','emotion','pattern',NULL,2),
('s_emotion_B2_03','She was visibly shaken by the news.','그녀는 그 소식에 눈에 띄게 동요했어요.','visibly shaken','visibly + 감정 형용사는 감정이 표면에 드러난 상태를 묘사해요.','감정 묘사','B2','emotion','pattern',NULL,3),
('s_emotion_B2_04','I find it hard to put into words how grateful I am.','얼마나 감사한지 말로 표현하기가 어려워요.','hard to put into words','put into words는 감정을 언어로 담기 어려울 때 쓰는 세련된 표현이에요.','감사 표현','B2','emotion','pattern',NULL,4),
('s_emotion_B2_05','There''s something bittersweet about saying goodbye.','작별 인사를 하는 것에는 달콤씁쓸한 무언가가 있어요.','something bittersweet','bittersweet는 기쁨과 슬픔이 혼재하는 감정을 한 단어로 표현해요.','복잡한 감정','B2','emotion','pattern',NULL,5),
('s_emotion_B2_06','I was completely overwhelmed with gratitude.','감사함으로 완전히 압도됐어요.','overwhelmed with gratitude','overwhelmed with + 긍정 감정은 강한 긍정 감정 상태를 표현해요.','감사 표현','B2','emotion','pattern',NULL,6),
('s_emotion_B2_07','The situation left me feeling utterly bewildered.','그 상황은 저를 완전히 어리둥절하게 만들었어요.','left me feeling utterly bewildered','left me feeling + 형용사는 상황이 어떤 감정을 남겼는지 표현하는 B2 패턴이에요.','혼란 표현','B2','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — C1 (7 patterns)
-- Situation: 심리 표현
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_C1_01','There''s a certain ambivalence I feel whenever I think about it.','그것에 대해 생각할 때마다 묘한 양면적 감정이 들어요.','a certain ambivalence','a certain + 감정 명사는 정확히 정의하기 어렵지만 실재하는 감정을 표현해요.','심리 표현','C1','emotion','pattern',NULL,1),
('s_emotion_C1_02','She seemed to carry a quiet sense of resignation.','그녀는 조용한 체념을 지닌 것 같았어요.','carry a quiet sense of resignation','carry a sense of + 감정은 감정을 지속적으로 안고 있다는 뉘앙스를 줘요.','심리 묘사','C1','emotion','pattern',NULL,2),
('s_emotion_C1_03','I was left with a profound feeling of disenchantment.','깊은 환멸감이 남았어요.','a profound feeling of disenchantment','a profound feeling of + 감정은 깊고 지속적인 감정 상태를 묘사해요.','심리 표현','C1','emotion','pattern',NULL,3),
('s_emotion_C1_04','His pensive silence spoke volumes about how he truly felt.','그의 생각에 잠긴 침묵이 그가 실제로 어떻게 느끼는지 많은 것을 말해줬어요.','pensive silence spoke volumes','spoke volumes는 말보다 행동이나 표정이 더 많은 것을 전달한다는 뜻이에요.','감정 묘사','C1','emotion','pattern',NULL,4),
('s_emotion_C1_05','I couldn''t shake the feeling that something was deeply wrong.','뭔가 심각하게 잘못됐다는 느낌을 떨쳐낼 수 없었어요.','couldn''t shake the feeling','couldn''t shake the feeling은 불안한 직감이 계속 남아있을 때 쓰는 표현이에요.','불안 표현','C1','emotion','pattern',NULL,5),
('s_emotion_C1_06','There was an overwhelming sense of trepidation as the moment approached.','그 순간이 다가오면서 압도적인 불안감이 밀려왔어요.','overwhelming sense of trepidation','overwhelming + 감정 명사는 감정이 밀려오는 강도를 극적으로 표현해요.','긴장 표현','C1','emotion','pattern',NULL,6),
('s_emotion_C1_07','She experienced a strange mix of jubilation and loss.','그녀는 기쁨과 상실감이 묘하게 뒤섞인 감정을 경험했어요.','a strange mix of jubilation and loss','a strange mix of A and B는 상반된 두 감정이 공존하는 상태를 표현해요.','복합 감정','C1','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — C2 (7 patterns)
-- Situation: 감정 뉘앙스
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_C2_01','He bore his grief with a stoic equanimity that was both admirable and heartbreaking.','그는 감탄스럽기도 하고 가슴 아프기도 한 의연한 평정심으로 슬픔을 견뎌냈어요.','stoic equanimity','stoic equanimity는 감정을 억누르는 것이 아니라 평정심으로 받아들이는 태도를 의미해요.','감정 뉘앙스','C2','emotion','pattern',NULL,1),
('s_emotion_C2_02','There is something ineffable about the longing one feels for a place that no longer exists.','더 이상 존재하지 않는 장소에 대한 그리움에는 말로 표현할 수 없는 무언가가 있어요.','something ineffable about the longing','ineffable은 언어 너머의 감정을 암시할 때 쓰는 C2 수준의 표현이에요.','감정 뉘앙스','C2','emotion','pattern',NULL,2),
('s_emotion_C2_03','She remained sanguine in adversity, which struck me as either courage or delusion.','그녀는 역경 속에서도 낙관적이었는데, 그것이 용기인지 착각인지 가늠이 어려웠어요.','sanguine in adversity','sanguine + in adversity는 역경 속 낙관주의를 묘사하는 세련된 조합이에요.','감정 뉘앙스','C2','emotion','pattern',NULL,3),
('s_emotion_C2_04','The lugubrious atmosphere of the old house seemed to seep into my very bones.','오래된 집의 음울한 분위기가 내 뼛속까지 스며드는 것 같았어요.','lugubrious atmosphere seemed to seep','seep into one''s bones는 분위기나 감정이 깊숙이 침투함을 표현하는 문학적 표현이에요.','감정 묘사','C2','emotion','pattern',NULL,4),
('s_emotion_C2_05','His magnanimous response to the criticism left everyone in the room humbled.','비판에 대한 그의 관대한 반응이 방 안의 모든 사람을 겸허하게 만들었어요.','magnanimous response left everyone humbled','left everyone humbled는 특정 행동이 주변 사람들에게 깊은 인상을 남겼음을 표현해요.','감정 뉘앙스','C2','emotion','pattern',NULL,5),
('s_emotion_C2_06','She was ebullient on the surface, yet I sensed an undercurrent of lachrymose longing.','그녀는 겉으로는 활기차 보였지만, 눈물 어린 그리움의 저류가 느껴졌어요.','ebullient on the surface, yet undercurrent of lachrymose','undercurrent of + 감정은 표면 아래 숨겨진 감정을 암시하는 문학적 표현이에요.','복합 감정','C2','emotion','pattern',NULL,6),
('s_emotion_C2_07','It is only in retrospect that I can appreciate the bittersweet richness of those years.','이제 돌이켜보니 그 시절의 달콤씁쓸한 풍요로움이 비로소 감사하게 느껴져요.','only in retrospect that I can appreciate','only in retrospect는 지나고 나서야 알 수 있는 통찰을 전달하는 고급 표현이에요.','감정 뉘앙스','C2','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;


-- ============================================
-- TOPIC: academic
-- ============================================
-- EngCat: Academic (학술) Topic
-- 210 words (35 per CEFR level A1~C2) + 42 patterns (7 per level)
-- Generated: 2026-05-24

-- ============================================================
-- WORDS
-- ============================================================

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES

-- ============================================================
-- A1 — 35 words
-- ============================================================
('w_academic_A1_01','learn','/lɜːrn/','verb','배우다','To gain knowledge or skill through study or experience.','I want to {learn} English every day.','저는 매일 영어를 배우고 싶어요.','learn','A1','academic',1,'learning study books knowledge'),
('w_academic_A1_02','know','/noʊ/','verb','알다','To have information or understanding about something.','Do you {know} the answer?','답을 알고 있나요?','know','A1','academic',1,'knowledge mind lightbulb'),
('w_academic_A1_03','understand','/ˌʌndərˈstænd/','verb','이해하다','To know the meaning of something.','I do not {understand} this question.','이 질문을 이해하지 못하겠어요.','understand','A1','academic',1,'comprehension thinking'),
('w_academic_A1_04','read','/riːd/','verb','읽다','To look at written words and take in their meaning.','Please {read} the first chapter.','첫 번째 챕터를 읽어 주세요.','read','A1','academic',1,'book reading page text'),
('w_academic_A1_05','write','/raɪt/','verb','쓰다','To form letters, words, or sentences on paper.','Please {write} your name here.','여기에 이름을 써 주세요.','write','A1','academic',1,'writing pen notebook paper'),
('w_academic_A1_06','question','/ˈkwɛstʃən/','noun','질문','A sentence that asks for information.','Do you have a {question}?','질문이 있나요?','question','A1','academic',1,'question mark inquiry'),
('w_academic_A1_07','answer','/ˈænsər/','noun','답','A response to a question.','Write the {answer} on your paper.','종이에 답을 써 주세요.','answer','A1','academic',1,'answer solution correct'),
('w_academic_A1_08','right','/raɪt/','adjective','맞는','Correct or true.','That is the {right} answer!','그게 맞는 답이에요!','right','A1','academic',2,'correct checkmark success'),
('w_academic_A1_09','wrong','/rɒŋ/','adjective','틀린','Not correct or true.','Sorry, that is {wrong}.','죄송해요, 그건 틀렸어요.','wrong','A1','academic',2,'incorrect mistake error'),
('w_academic_A1_10','class','/klæs/','noun','수업','A period of teaching in school.','The {class} starts at nine.','수업은 9시에 시작해요.','class','A1','academic',1,'classroom school desks students'),
('w_academic_A1_11','book','/bʊk/','noun','책','A set of printed pages bound together.','Please open your {book} to page ten.','책 10페이지를 펴 주세요.','book','A1','academic',1,'book pages library reading'),
('w_academic_A1_12','test','/tɛst/','noun','시험','An examination of knowledge.','We have a {test} tomorrow.','내일 시험이 있어요.','test','A1','academic',1,'exam test paper pencil'),
('w_academic_A1_13','study','/ˈstʌdi/','verb','공부하다','To spend time learning a subject.','I need to {study} for my exam.','시험을 위해 공부해야 해요.','study','A1','academic',1,'study desk lamp books'),
('w_academic_A1_14','school','/skuːl/','noun','학교','A place where children are educated.','She goes to {school} every day.','그녀는 매일 학교에 가요.','school','A1','academic',1,'school building education'),
('w_academic_A1_15','teacher','/ˈtiːtʃər/','noun','선생님','A person who teaches in a school.','The {teacher} explained the lesson clearly.','선생님이 수업을 명확하게 설명해 주셨어요.','teacher','A1','academic',1,'teacher classroom whiteboard'),
('w_academic_A1_16','student','/ˈstjuːdənt/','noun','학생','A person who is studying at school.','Every {student} must do the homework.','모든 학생이 숙제를 해야 해요.','student','A1','academic',1,'student desk learning'),
('w_academic_A1_17','lesson','/ˈlɛsən/','noun','수업 내용','A period of learning or teaching.','Today''s {lesson} is about grammar.','오늘 수업 내용은 문법이에요.','lesson','A1','academic',2,'lesson plan teaching'),
('w_academic_A1_18','homework','/ˈhoʊmwɜːrk/','noun','숙제','Work that a student is given to do at home.','Did you finish your {homework}?','숙제를 다 끝냈나요?','homework','A1','academic',2,'homework assignment notebook'),
('w_academic_A1_19','word','/wɜːrd/','noun','단어','A single unit of language.','Please look up the {word} in the dictionary.','사전에서 그 단어를 찾아 주세요.','word','A1','academic',1,'word vocabulary dictionary'),
('w_academic_A1_20','sentence','/ˈsɛntəns/','noun','문장','A group of words that expresses a complete thought.','Write one {sentence} about your school.','학교에 대해 문장 하나를 써 주세요.','sentence','A1','academic',2,'sentence grammar text'),
('w_academic_A1_21','number','/ˈnʌmbər/','noun','숫자','A mathematical value.','What {number} comes next?','다음 숫자는 무엇인가요?','number','A1','academic',2,'number math digits'),
('w_academic_A1_22','correct','/kəˈrɛkt/','adjective','정확한','Free from error.','Your spelling is {correct}.','철자가 정확해요.','correct','A1','academic',2,'correct accurate checkmark'),
('w_academic_A1_23','repeat','/rɪˈpiːt/','verb','반복하다','To say or do something again.','Please {repeat} after me.','저를 따라 반복해 주세요.','repeat','A1','academic',2,'repeat cycle again'),
('w_academic_A1_24','listen','/ˈlɪsən/','verb','듣다','To pay attention to sound.','Please {listen} carefully.','주의 깊게 들어 주세요.','listen','A1','academic',1,'listening ear audio'),
('w_academic_A1_25','speak','/spiːk/','verb','말하다','To express oneself in words.','Can you {speak} more slowly?','더 천천히 말씀해 주실 수 있나요?','speak','A1','academic',1,'speaking mouth conversation'),
('w_academic_A1_26','page','/peɪdʒ/','noun','페이지','One side of a sheet of paper in a book.','Turn to {page} five.','5페이지로 넘겨 주세요.','page','A1','academic',2,'page book number'),
('w_academic_A1_27','name','/neɪm/','noun','이름','The word used to identify a person or thing.','Write your {name} at the top.','맨 위에 이름을 써 주세요.','name','A1','academic',2,'name identity label'),
('w_academic_A1_28','meaning','/ˈmiːnɪŋ/','noun','의미','What a word or idea represents.','What is the {meaning} of this word?','이 단어의 의미가 무엇인가요?','meaning','A1','academic',2,'meaning definition symbol'),
('w_academic_A1_29','example','/ɪɡˈzɑːmpəl/','noun','예시','Something that shows what something is like.','Can you give an {example}?','예시를 들어 주실 수 있나요?','example','A1','academic',1,'example sample illustration'),
('w_academic_A1_30','difficult','/ˈdɪfɪkəlt/','adjective','어려운','Not easy; requiring effort.','This question is {difficult}.','이 질문은 어려워요.','difficult','A1','academic',2,'difficult challenge hard'),
('w_academic_A1_31','easy','/ˈiːzi/','adjective','쉬운','Not requiring much effort.','The first exercise is {easy}.','첫 번째 연습 문제는 쉬워요.','easy','A1','academic',2,'easy simple straightforward'),
('w_academic_A1_32','ask','/æsk/','verb','질문하다','To seek information by saying a question.','Please {ask} if you need help.','도움이 필요하면 질문해 주세요.','ask','A1','academic',1,'asking question inquiry'),
('w_academic_A1_33','help','/hɛlp/','verb','도와주다','To make it easier for someone to do something.','Can you {help} me with this?','이것 좀 도와주실 수 있나요?','help','A1','academic',1,'help support assistance'),
('w_academic_A1_34','grade','/ɡreɪd/','noun','성적','A mark indicating quality of school work.','I got a good {grade} on my test.','시험에서 좋은 성적을 받았어요.','grade','A1','academic',2,'grade score academic performance'),
('w_academic_A1_35','topic','/ˈtɒpɪk/','noun','주제','The subject of a talk or piece of writing.','What is the {topic} of today''s class?','오늘 수업의 주제가 무엇인가요?','topic','A1','academic',2,'topic subject theme'),

-- ============================================================
-- A2 — 35 words
-- ============================================================
('w_academic_A2_01','research','/rɪˈsɜːrtʃ/','noun','연구','Careful study to find facts or information.','She did a lot of {research} for her report.','그녀는 보고서를 위해 많은 연구를 했어요.','research','A2','academic',1,'research laboratory science study'),
('w_academic_A2_02','theory','/ˈθɪəri/','noun','이론','A set of ideas that explains something.','Darwin''s {theory} changed science.','다윈의 이론은 과학을 바꿨어요.','theory','A2','academic',1,'theory idea science evolution'),
('w_academic_A2_03','fact','/fækt/','noun','사실','Something that is known to be true.','It is a {fact} that the Earth is round.','지구가 둥글다는 것은 사실이에요.','fact','A2','academic',1,'fact truth information'),
('w_academic_A2_04','idea','/aɪˈdɪə/','noun','아이디어','A thought or suggestion.','That is a great {idea}!','그건 훌륭한 아이디어예요!','idea','A2','academic',1,'idea lightbulb creativity'),
('w_academic_A2_05','subject','/ˈsʌbdʒɪkt/','noun','과목','An area of study.','My favorite {subject} is history.','제가 가장 좋아하는 과목은 역사예요.','subject','A2','academic',1,'subject school course study'),
('w_academic_A2_06','paper','/ˈpeɪpər/','noun','논문','A written piece of academic work.','I need to write a {paper} by Friday.','금요일까지 논문을 써야 해요.','paper','A2','academic',1,'paper writing academic document'),
('w_academic_A2_07','present','/prɪˈzɛnt/','verb','발표하다','To show or explain something to an audience.','I will {present} my project tomorrow.','내일 제 프로젝트를 발표할 거예요.','present','A2','academic',1,'presentation slides audience'),
('w_academic_A2_08','method','/ˈmɛθəd/','noun','방법','A particular way of doing something.','What {method} did you use?','어떤 방법을 사용하셨나요?','method','A2','academic',1,'method process steps plan'),
('w_academic_A2_09','result','/rɪˈzʌlt/','noun','결과','The outcome of an action or experiment.','What were the {results} of the study?','연구 결과가 어떻게 되었나요?','result','A2','academic',1,'result outcome data graph'),
('w_academic_A2_10','review','/rɪˈvjuː/','verb','검토하다','To examine or assess something carefully.','Please {review} your notes before the test.','시험 전에 노트를 검토해 주세요.','review','A2','academic',1,'review checklist evaluation'),
('w_academic_A2_11','explain','/ɪkˈspleɪn/','verb','설명하다','To make something clear and understandable.','Can you {explain} this concept?','이 개념을 설명해 주실 수 있나요?','explain','A2','academic',1,'explain diagram whiteboard'),
('w_academic_A2_12','compare','/kəmˈpɛr/','verb','비교하다','To examine the similarities and differences.','{Compare} the two graphs.','두 그래프를 비교해 보세요.','compare','A2','academic',2,'compare contrast analysis'),
('w_academic_A2_13','describe','/dɪˈskraɪb/','verb','묘사하다','To say what something is like.','Please {describe} the experiment.','실험을 묘사해 주세요.','describe','A2','academic',2,'describe illustration detail'),
('w_academic_A2_14','opinion','/əˈpɪnjən/','noun','의견','A personal view or judgment.','In my {opinion}, this is correct.','제 의견으로는, 이것이 맞아요.','opinion','A2','academic',1,'opinion thought viewpoint'),
('w_academic_A2_15','information','/ˌɪnfərˈmeɪʃən/','noun','정보','Facts or knowledge about something.','Where did you find this {information}?','이 정보를 어디서 찾으셨나요?','information','A2','academic',1,'information data internet research'),
('w_academic_A2_16','notes','/noʊts/','noun','필기','Written information for later use.','Take {notes} during the lecture.','강의 중에 필기를 해 주세요.','notes','A2','academic',2,'notes notebook pen writing'),
('w_academic_A2_17','assignment','/əˈsaɪnmənt/','noun','과제','A task given to a student.','The {assignment} is due on Monday.','과제는 월요일까지예요.','assignment','A2','academic',1,'assignment task homework deadline'),
('w_academic_A2_18','project','/ˈprɒdʒɛkt/','noun','프로젝트','A planned piece of work.','Our group {project} is about climate change.','우리 그룹 프로젝트는 기후 변화에 관한 거예요.','project','A2','academic',1,'project team collaboration'),
('w_academic_A2_19','source','/sɔːrs/','noun','출처','A place from which information is obtained.','Always cite your {sources}.','출처를 항상 인용해 주세요.','source','A2','academic',1,'source reference bibliography'),
('w_academic_A2_20','conclusion','/kənˈkluːʒən/','noun','결론','The final part of an argument or study.','What is the {conclusion} of your paper?','논문의 결론이 무엇인가요?','conclusion','A2','academic',1,'conclusion summary end'),
('w_academic_A2_21','argument','/ˈɑːrɡjumənt/','noun','주장','A reason given to support an idea.','Her {argument} was very convincing.','그녀의 주장은 매우 설득력 있었어요.','argument','A2','academic',2,'argument debate discussion'),
('w_academic_A2_22','suggest','/səˈdʒɛst/','verb','제안하다','To put forward an idea for consideration.','I would like to {suggest} a different approach.','다른 접근법을 제안하고 싶어요.','suggest','A2','academic',2,'suggest proposal idea'),
('w_academic_A2_23','lecture','/ˈlɛktʃər/','noun','강의','A talk given to an audience on a subject.','The {lecture} starts at ten o''clock.','강의는 10시에 시작해요.','lecture','A2','academic',1,'lecture hall professor university'),
('w_academic_A2_24','professor','/prəˈfɛsər/','noun','교수','A teacher at a university.','The {professor} gave us extra time.','교수님이 추가 시간을 주셨어요.','professor','A2','academic',1,'professor university classroom'),
('w_academic_A2_25','university','/ˌjuːnɪˈvɜːrsɪti/','noun','대학교','A place of higher education.','She studies at a top {university}.','그녀는 최고 대학교에서 공부해요.','university','A2','academic',1,'university campus building'),
('w_academic_A2_26','knowledge','/ˈnɒlɪdʒ/','noun','지식','Information and understanding of a subject.','She has a lot of {knowledge} about history.','그녀는 역사에 대한 지식이 많아요.','knowledge','A2','academic',1,'knowledge books brain learning'),
('w_academic_A2_27','skill','/skɪl/','noun','기술','The ability to do something well.','Critical thinking is an important {skill}.','비판적 사고는 중요한 기술이에요.','skill','A2','academic',2,'skill ability talent'),
('w_academic_A2_28','practice','/ˈpræktɪs/','noun','연습','Repeated exercise to improve ability.','Daily {practice} improves your writing.','매일 연습하면 글쓰기가 향상돼요.','practice','A2','academic',2,'practice repetition improvement'),
('w_academic_A2_29','problem','/ˈprɒbləm/','noun','문제','A question or difficulty that needs solving.','We need to solve this {problem} together.','이 문제를 함께 해결해야 해요.','problem','A2','academic',1,'problem solving puzzle'),
('w_academic_A2_30','solution','/səˈluːʃən/','noun','해결책','A way of solving a problem.','They found a good {solution}.','그들은 좋은 해결책을 찾았어요.','solution','A2','academic',1,'solution answer problem solving'),
('w_academic_A2_31','improve','/ɪmˈpruːv/','verb','향상시키다','To make something better.','Reading helps to {improve} your vocabulary.','독서는 어휘를 향상시키는 데 도움이 돼요.','improve','A2','academic',2,'improve growth progress chart'),
('w_academic_A2_32','choose','/tʃuːz/','verb','선택하다','To pick from a number of options.','{Choose} the best answer.','가장 좋은 답을 선택해 주세요.','choose','A2','academic',2,'choose select option decision'),
('w_academic_A2_33','discuss','/dɪˈskʌs/','verb','토론하다','To talk about something with others.','Let''s {discuss} the main points.','주요 논점을 토론해 봅시다.','discuss','A2','academic',1,'discussion group debate'),
('w_academic_A2_34','summary','/ˈsʌməri/','noun','요약','A brief statement of the main points.','Write a {summary} of the article.','기사를 요약해 주세요.','summary','A2','academic',1,'summary overview brief'),
('w_academic_A2_35','point','/pɔɪnt/','noun','요점','The main idea or purpose.','That is a very good {point}.','그것은 매우 좋은 요점이에요.','point','A2','academic',2,'point key idea highlight'),

-- ============================================================
-- B1 — 35 words
-- ============================================================
('w_academic_B1_01','hypothesis','/haɪˈpɒθɪsɪs/','noun','가설','A proposed explanation made on limited evidence.','We need to test the {hypothesis}.','가설을 검증해야 해요.','hypothesis','B1','academic',1,'hypothesis science experiment test'),
('w_academic_B1_02','evidence','/ˈɛvɪdəns/','noun','증거','Facts or information that support a claim.','The {evidence} supports the theory.','증거가 그 이론을 뒷받침해요.','evidence','B1','academic',1,'evidence data proof research'),
('w_academic_B1_03','analyze','/ˈænəlaɪz/','verb','분석하다','To examine something in detail.','We will {analyze} the data carefully.','데이터를 주의 깊게 분석할 거예요.','analyze','B1','academic',1,'analysis data chart graph'),
('w_academic_B1_04','conclude','/kənˈkluːd/','verb','결론 내리다','To reach a decision after considering facts.','We can {conclude} that the hypothesis is correct.','가설이 옳다고 결론 내릴 수 있어요.','conclude','B1','academic',1,'conclusion result finding'),
('w_academic_B1_05','cite','/saɪt/','verb','인용하다','To refer to a source of information.','Always {cite} your references.','항상 참고 문헌을 인용해 주세요.','cite','B1','academic',1,'citation reference bibliography'),
('w_academic_B1_06','abstract','/ˈæbstrækt/','noun','초록','A brief summary of a research paper.','Read the {abstract} before the full paper.','전체 논문 전에 초록을 읽어 주세요.','abstract','B1','academic',1,'abstract summary journal'),
('w_academic_B1_07','journal','/ˈdʒɜːrnəl/','noun','학술지','A publication containing research articles.','This was published in a peer-reviewed {journal}.','이것은 동료 심사 학술지에 게재되었어요.','journal','B1','academic',1,'journal magazine academic publication'),
('w_academic_B1_08','empirical','/ɪmˈpɪrɪkəl/','adjective','경험적인','Based on observation or experiment.','The study relies on {empirical} data.','그 연구는 경험적 데이터에 의존해요.','empirical','B1','academic',2,'empirical experiment observation data'),
('w_academic_B1_09','variable','/ˈvɛriəbəl/','noun','변수','A factor that can change in an experiment.','Control all {variables} in the experiment.','실험에서 모든 변수를 통제해 주세요.','variable','B1','academic',1,'variable factor experiment control'),
('w_academic_B1_10','methodology','/ˌmɛθəˈdɒlədʒi/','noun','방법론','The system of methods used in research.','Describe the {methodology} in detail.','방법론을 자세히 설명해 주세요.','methodology','B1','academic',1,'methodology research method approach'),
('w_academic_B1_11','argument','/ˈɑːrɡjumənt/','noun','논증','A set of reasons given to support a claim.','Build a strong {argument} with evidence.','증거로 강력한 논증을 구축해 주세요.','argument','B1','academic',1,'argument logic evidence debate'),
('w_academic_B1_12','evaluate','/ɪˈvæljueɪt/','verb','평가하다','To judge or assess something carefully.','We need to {evaluate} the results.','결과를 평가해야 해요.','evaluate','B1','academic',1,'evaluation assessment judgment'),
('w_academic_B1_13','interpret','/ɪnˈtɜːrprɪt/','verb','해석하다','To explain the meaning of something.','How do you {interpret} these findings?','이 연구 결과를 어떻게 해석하시나요?','interpret','B1','academic',2,'interpretation meaning analysis'),
('w_academic_B1_14','significant','/sɪɡˈnɪfɪkənt/','adjective','유의미한','Important or noteworthy; statistically meaningful.','The difference is {significant}.','그 차이는 유의미해요.','significant','B1','academic',1,'significance importance statistics'),
('w_academic_B1_15','correlation','/ˌkɒrəˈleɪʃən/','noun','상관관계','A relationship between two or more things.','There is a {correlation} between study time and grades.','학습 시간과 성적 사이에는 상관관계가 있어요.','correlation','B1','academic',2,'correlation relationship graph data'),
('w_academic_B1_16','objective','/əbˈdʒɛktɪv/','adjective','객관적인','Not influenced by personal feelings.','Try to remain {objective} in your analysis.','분석 시 객관적을 유지해 주세요.','objective','B1','academic',1,'objective neutral analysis'),
('w_academic_B1_17','subjective','/səbˈdʒɛktɪv/','adjective','주관적인','Based on personal feelings or opinions.','This judgment is {subjective}.','이 판단은 주관적이에요.','subjective','B1','academic',2,'subjective opinion personal'),
('w_academic_B1_18','define','/dɪˈfaɪn/','verb','정의하다','To state the exact meaning of a word or concept.','Please {define} the key terms.','핵심 용어를 정의해 주세요.','define','B1','academic',1,'definition meaning dictionary'),
('w_academic_B1_19','concept','/ˈkɒnsɛpt/','noun','개념','An abstract idea or general notion.','This {concept} is central to the theory.','이 개념은 이론의 핵심이에요.','concept','B1','academic',1,'concept idea abstract'),
('w_academic_B1_20','framework','/ˈfreɪmwɜːrk/','noun','틀','A structure supporting ideas or a system.','We used a theoretical {framework}.','우리는 이론적 틀을 사용했어요.','framework','B1','academic',2,'framework structure model'),
('w_academic_B1_21','critical','/ˈkrɪtɪkəl/','adjective','비판적인','Expressing careful judgment and analysis.','Develop {critical} thinking skills.','비판적 사고 능력을 개발해 주세요.','critical','B1','academic',1,'critical thinking analysis'),
('w_academic_B1_22','implication','/ˌɪmplɪˈkeɪʃən/','noun','함의','A conclusion that can be drawn from something.','What are the {implications} of this finding?','이 결과의 함의는 무엇인가요?','implication','B1','academic',2,'implication meaning consequence'),
('w_academic_B1_23','relevant','/ˈrɛlɪvənt/','adjective','관련 있는','Closely connected to what is being discussed.','Only include {relevant} information.','관련 있는 정보만 포함해 주세요.','relevant','B1','academic',2,'relevant connected related'),
('w_academic_B1_24','reference','/ˈrɛfərəns/','noun','참고 문헌','A mention of a source of information.','List all your {references} at the end.','마지막에 모든 참고 문헌을 나열해 주세요.','reference','B1','academic',1,'reference bibliography citation'),
('w_academic_B1_25','data','/ˈdeɪtə/','noun','데이터','Facts and statistics collected for analysis.','The {data} shows a clear trend.','데이터는 명확한 추세를 보여줘요.','data','B1','academic',1,'data statistics chart analysis'),
('w_academic_B1_26','sample','/ˈsæmpəl/','noun','표본','A small part taken to represent the whole.','The {sample} size was too small.','표본 크기가 너무 작았어요.','sample','B1','academic',2,'sample size research statistics'),
('w_academic_B1_27','survey','/ˈsɜːrveɪ/','noun','설문 조사','A study of opinions using questionnaires.','We conducted a {survey} of 200 students.','우리는 200명의 학생을 대상으로 설문 조사를 실시했어요.','survey','B1','academic',2,'survey questionnaire research'),
('w_academic_B1_28','demonstrate','/ˈdɛmənstreɪt/','verb','증명하다','To show clearly by using examples or evidence.','The results {demonstrate} a significant change.','결과는 유의미한 변화를 증명해요.','demonstrate','B1','academic',2,'demonstrate proof show evidence'),
('w_academic_B1_29','limitation','/ˌlɪmɪˈteɪʃən/','noun','한계','A restriction on the extent of something.','Every study has its {limitations}.','모든 연구에는 한계가 있어요.','limitation','B1','academic',2,'limitation restriction boundary'),
('w_academic_B1_30','assumption','/əˈsʌmpʃən/','noun','가정','Something taken to be true without proof.','State your {assumptions} clearly.','가정을 명확하게 기술해 주세요.','assumption','B1','academic',2,'assumption premise belief'),
('w_academic_B1_31','observation','/ˌɒbzərˈveɪʃən/','noun','관찰','The action of watching something carefully.','Record your {observations} in a notebook.','관찰 내용을 노트에 기록해 주세요.','observation','B1','academic',2,'observation watching recording science'),
('w_academic_B1_32','pattern','/ˈpætərn/','noun','패턴','A regular and repeated arrangement.','Can you identify a {pattern} in the data?','데이터에서 패턴을 파악할 수 있나요?','pattern','B1','academic',2,'pattern repetition data'),
('w_academic_B1_33','perspective','/pərˈspɛktɪv/','noun','관점','A particular way of thinking about something.','Consider the problem from a different {perspective}.','다른 관점에서 문제를 생각해 보세요.','perspective','B1','academic',1,'perspective viewpoint angle'),
('w_academic_B1_34','influence','/ˈɪnfluəns/','noun','영향','The power to affect someone or something.','Culture has a strong {influence} on learning.','문화는 학습에 강한 영향을 미쳐요.','influence','B1','academic',2,'influence effect impact'),
('w_academic_B1_35','approach','/əˈproʊtʃ/','noun','접근 방식','A way of dealing with a problem or situation.','Try a different {approach}.','다른 접근 방식을 시도해 보세요.','approach','B1','academic',1,'approach method strategy'),

-- ============================================================
-- B2 — 35 words
-- ============================================================
('w_academic_B2_01','peer review','/pɪr rɪˈvjuː/','noun','동료 심사','Evaluation of work by experts in the same field.','The paper passed {peer review}.','그 논문은 동료 심사를 통과했어요.','peer review','B2','academic',1,'peer review journal evaluation expert'),
('w_academic_B2_02','dissertation','/ˌdɪsərˈteɪʃən/','noun','학위 논문','A long essay written for a university degree.','She spent two years on her {dissertation}.','그녀는 학위 논문에 2년을 보냈어요.','dissertation','B2','academic',1,'dissertation thesis university degree'),
('w_academic_B2_03','framework','/ˈfreɪmwɜːrk/','noun','이론적 틀','A conceptual structure used to analyze a topic.','The study uses a sociocultural {framework}.','그 연구는 사회문화적 틀을 사용해요.','framework','B2','academic',1,'framework theory model structure'),
('w_academic_B2_04','paradigm','/ˈpærədaɪm/','noun','패러다임','A typical example or model; a set of assumptions.','This research challenges the existing {paradigm}.','이 연구는 기존 패러다임에 도전해요.','paradigm','B2','academic',1,'paradigm model worldview shift'),
('w_academic_B2_05','qualitative','/ˈkwɒlɪtətɪv/','adjective','질적인','Relating to qualities rather than quantities.','We used {qualitative} interviews to gather data.','데이터 수집을 위해 질적 인터뷰를 사용했어요.','qualitative','B2','academic',1,'qualitative research interview observation'),
('w_academic_B2_06','quantitative','/ˈkwɒntɪtətɪv/','adjective','양적인','Relating to numbers or amounts.','The {quantitative} analysis showed a clear trend.','양적 분석은 명확한 추세를 보여줬어요.','quantitative','B2','academic',1,'quantitative data statistics numbers'),
('w_academic_B2_07','epistemology','/ɪˌpɪstɪˈmɒlədʒi/','noun','인식론','The branch of philosophy dealing with knowledge.','Her thesis draws on {epistemology}.','그녀의 논문은 인식론을 바탕으로 해요.','epistemology','B2','academic',2,'epistemology philosophy knowledge'),
('w_academic_B2_08','inference','/ˈɪnfərəns/','noun','추론','A conclusion reached from evidence and reasoning.','The {inference} drawn from the data is clear.','데이터에서 도출된 추론은 명확해요.','inference','B2','academic',1,'inference reasoning conclusion logic'),
('w_academic_B2_09','validity','/vəˈlɪdɪti/','noun','타당성','The quality of being logically sound.','Check the {validity} of your argument.','주장의 타당성을 확인해 주세요.','validity','B2','academic',1,'validity logic accuracy research'),
('w_academic_B2_10','reliability','/rɪˌlaɪəˈbɪlɪti/','noun','신뢰도','The quality of producing consistent results.','The {reliability} of the study was tested.','연구의 신뢰도가 검증되었어요.','reliability','B2','academic',1,'reliability consistency research'),
('w_academic_B2_11','triangulation','/traɪˌæŋɡjuˈleɪʃən/','noun','삼각검증','Using multiple methods to verify findings.','We used {triangulation} to confirm the results.','결과를 확인하기 위해 삼각검증을 사용했어요.','triangulation','B2','academic',2,'triangulation methods verification research'),
('w_academic_B2_12','bias','/ˈbaɪəs/','noun','편향','Unfair preference for one thing over another.','Researcher {bias} can affect the results.','연구자 편향은 결과에 영향을 미칠 수 있어요.','bias','B2','academic',1,'bias prejudice unfair skew'),
('w_academic_B2_13','generalize','/ˈdʒɛnərəlaɪz/','verb','일반화하다','To draw a broad conclusion from limited data.','It is difficult to {generalize} from this sample.','이 표본에서 일반화하기는 어려워요.','generalize','B2','academic',2,'generalization sample conclusion'),
('w_academic_B2_14','theoretical','/ˌθɪəˈrɛtɪkəl/','adjective','이론적인','Concerned with theory rather than practice.','This is a {theoretical} model.','이것은 이론적 모델이에요.','theoretical','B2','academic',2,'theoretical model abstract'),
('w_academic_B2_15','empiricism','/ɪmˈpɪrɪsɪzəm/','noun','경험주의','The theory that knowledge comes from experience.','{Empiricism} emphasizes observable evidence.','경험주의는 관찰 가능한 증거를 강조해요.','empiricism','B2','academic',2,'empiricism observation experience'),
('w_academic_B2_16','rhetoric','/ˈrɛtərɪk/','noun','수사학','The art of using language persuasively.','His use of {rhetoric} was very effective.','그의 수사학 사용은 매우 효과적이었어요.','rhetoric','B2','academic',2,'rhetoric persuasion language'),
('w_academic_B2_17','discourse','/ˈdɪskɔːrs/','noun','담론','Written or spoken communication or debate.','Academic {discourse} requires clear language.','학술 담론에는 명확한 언어가 필요해요.','discourse','B2','academic',1,'discourse language communication'),
('w_academic_B2_18','critique','/krɪˈtiːk/','noun','비평','A detailed analysis and assessment.','Write a {critique} of the article.','기사에 대한 비평을 써 주세요.','critique','B2','academic',1,'critique review analysis'),
('w_academic_B2_19','synthesis','/ˈsɪnθɪsɪs/','noun','종합','Combining elements to form a new whole.','The paper provides a {synthesis} of the literature.','논문은 문헌의 종합을 제공해요.','synthesis','B2','academic',1,'synthesis combination integration'),
('w_academic_B2_20','coherent','/koʊˈhɪərənt/','adjective','일관된','Logical and consistent.','Your argument must be {coherent}.','주장은 일관되어야 해요.','coherent','B2','academic',2,'coherent logical consistent'),
('w_academic_B2_21','annotate','/ˈænəteɪt/','verb','주석을 달다','To add notes explaining parts of a text.','{Annotate} the source as you read.','읽으면서 출처에 주석을 달아 주세요.','annotate','B2','academic',2,'annotation notes text comment'),
('w_academic_B2_22','literature review','/ˈlɪtərɪtʃər rɪˈvjuː/','noun','문헌 검토','A survey of existing research on a topic.','Write a {literature review} first.','먼저 문헌 검토를 작성해 주세요.','literature review','B2','academic',1,'literature review research survey'),
('w_academic_B2_23','longitudinal','/ˌlɒŋɡɪˈtjuːdɪnəl/','adjective','종단적인','Relating to data collected over a long period.','A {longitudinal} study tracks subjects over years.','종단 연구는 수년에 걸쳐 대상을 추적해요.','longitudinal','B2','academic',2,'longitudinal study time series'),
('w_academic_B2_24','cross-sectional','/ˈkrɒs ˌsɛkʃənəl/','adjective','횡단적인','Relating to data collected at one point in time.','A {cross-sectional} survey was conducted.','횡단 설문 조사가 실시되었어요.','cross-sectional','B2','academic',2,'cross-sectional study snapshot'),
('w_academic_B2_25','causality','/kɔːˈzælɪti/','noun','인과관계','The relationship between cause and effect.','Correlation does not imply {causality}.','상관관계가 인과관계를 의미하지는 않아요.','causality','B2','academic',2,'causality cause effect relationship'),
('w_academic_B2_26','replicate','/ˈrɛplɪkeɪt/','verb','재현하다','To repeat an experiment to verify results.','Other researchers could not {replicate} the study.','다른 연구자들은 그 연구를 재현할 수 없었어요.','replicate','B2','academic',2,'replication experiment verification'),
('w_academic_B2_27','citation','/saɪˈteɪʃən/','noun','인용','A reference to a source used in a paper.','Include the {citation} in APA format.','APA 형식으로 인용을 포함해 주세요.','citation','B2','academic',1,'citation reference bibliography APA'),
('w_academic_B2_28','paraphrase','/ˈpærəfreɪz/','verb','바꿔 말하다','To restate text in different words.','{Paraphrase} the quotation rather than copying it.','그대로 복사하지 말고 인용문을 바꿔 말해 주세요.','paraphrase','B2','academic',2,'paraphrase rewrite rephrase'),
('w_academic_B2_29','plagiarism','/ˈpleɪdʒɪərɪzəm/','noun','표절','Using someone else''s work without credit.','{Plagiarism} is a serious academic offense.','표절은 심각한 학문적 위반이에요.','plagiarism','B2','academic',1,'plagiarism copying academic integrity'),
('w_academic_B2_30','rationale','/ˌræʃəˈnæl/','noun','근거','A set of reasons for a course of action.','Explain the {rationale} for your study.','연구의 근거를 설명해 주세요.','rationale','B2','academic',2,'rationale reason justification'),
('w_academic_B2_31','scope','/skoʊp/','noun','범위','The extent of the area or subject matter.','Define the {scope} of your research.','연구의 범위를 정의해 주세요.','scope','B2','academic',2,'scope range extent boundary'),
('w_academic_B2_32','thematic','/θɪˈmætɪk/','adjective','주제별의','Relating to or based on themes.','The study uses {thematic} analysis.','연구는 주제별 분석을 사용해요.','thematic','B2','academic',2,'thematic theme analysis coding'),
('w_academic_B2_33','rigorous','/ˈrɪɡərəs/','adjective','엄격한','Extremely thorough and careful.','The review process is very {rigorous}.','검토 과정은 매우 엄격해요.','rigorous','B2','academic',2,'rigorous thorough strict'),
('w_academic_B2_34','refute','/rɪˈfjuːt/','verb','반박하다','To prove a statement or theory to be wrong.','The new data {refutes} the original claim.','새 데이터가 원래 주장을 반박해요.','refute','B2','academic',2,'refute disprove counter argument'),
('w_academic_B2_35','substantiate','/səbˈstænʃieɪt/','verb','입증하다','To provide evidence to support a claim.','Can you {substantiate} this claim with data?','데이터로 이 주장을 입증할 수 있나요?','substantiate','B2','academic',2,'substantiate prove evidence support'),

-- ============================================================
-- C1 — 35 words
-- ============================================================
('w_academic_C1_01','ontology','/ɒnˈtɒlədʒi/','noun','존재론','The branch of philosophy dealing with the nature of being.','Researchers must clarify their {ontology}.','연구자는 자신의 존재론을 명확히 해야 해요.','ontology','C1','academic',2,'ontology philosophy being existence'),
('w_academic_C1_02','axiology','/ˌæksiˈɒlədʒi/','noun','가치론','The study of values and value judgments.','{Axiology} shapes the ethical stance of research.','가치론은 연구의 윤리적 입장을 형성해요.','axiology','C1','academic',2,'axiology values ethics philosophy'),
('w_academic_C1_03','deductive','/dɪˈdʌktɪv/','adjective','연역적인','Moving from general principles to specific conclusions.','A {deductive} approach starts with a theory.','연역적 접근법은 이론에서 시작해요.','deductive','C1','academic',1,'deductive reasoning logic theory'),
('w_academic_C1_04','inductive','/ɪnˈdʌktɪv/','adjective','귀납적인','Moving from specific observations to general conclusions.','{Inductive} reasoning builds theory from data.','귀납적 추론은 데이터에서 이론을 구축해요.','inductive','C1','academic',1,'inductive reasoning data pattern'),
('w_academic_C1_05','abductive','/æbˈdʌktɪv/','adjective','귀추적인','Inferring the best explanation from observations.','{Abductive} reasoning seeks the most likely explanation.','귀추적 추론은 가장 가능성 있는 설명을 찾아요.','abductive','C1','academic',2,'abductive reasoning inference explanation'),
('w_academic_C1_06','hermeneutics','/ˌhɜːrmɪˈnjuːtɪks/','noun','해석학','The theory and methodology of text interpretation.','{Hermeneutics} is central to qualitative research.','해석학은 질적 연구의 핵심이에요.','hermeneutics','C1','academic',2,'hermeneutics interpretation text meaning'),
('w_academic_C1_07','phenomenology','/fɪˌnɒmɪˈnɒlədʒi/','noun','현상학','The study of conscious experience and its structures.','{Phenomenology} explores lived human experience.','현상학은 살아있는 인간 경험을 탐구해요.','phenomenology','C1','academic',2,'phenomenology experience consciousness'),
('w_academic_C1_08','positivism','/ˈpɒzɪtɪvɪzəm/','noun','실증주의','The view that knowledge comes from empirical evidence.','{Positivism} favors measurable, observable data.','실증주의는 측정 가능하고 관찰 가능한 데이터를 선호해요.','positivism','C1','academic',2,'positivism science empirical data'),
('w_academic_C1_09','constructivism','/kənˈstrʌktɪvɪzəm/','noun','구성주의','The view that knowledge is constructed by the learner.','{Constructivism} holds that reality is socially created.','구성주의는 현실이 사회적으로 구성된다고 봐요.','constructivism','C1','academic',2,'constructivism knowledge learning'),
('w_academic_C1_10','pragmatism','/ˈpræɡmətɪzəm/','noun','실용주의','The approach that assesses theories by their practical results.','{Pragmatism} values what works in practice.','실용주의는 실제로 효과 있는 것을 중요시해요.','pragmatism','C1','academic',2,'pragmatism practice utility'),
('w_academic_C1_11','dialectic','/ˌdaɪəˈlɛktɪk/','noun','변증법','A method of examining opposing ideas to find truth.','Hegel''s {dialectic} shaped modern philosophy.','헤겔의 변증법은 현대 철학을 형성했어요.','dialectic','C1','academic',2,'dialectic debate thesis antithesis'),
('w_academic_C1_12','reflexivity','/ˌriːflɛkˈsɪvɪti/','noun','성찰성','The awareness of a researcher''s influence on their research.','{Reflexivity} is essential in qualitative inquiry.','성찰성은 질적 탐구에서 필수적이에요.','reflexivity','C1','academic',2,'reflexivity self awareness research'),
('w_academic_C1_13','hegemony','/hɪˈdʒɛməni/','noun','헤게모니','Dominance of one group over others.','The study examines cultural {hegemony}.','연구는 문화적 헤게모니를 분석해요.','hegemony','C1','academic',2,'hegemony power dominance culture'),
('w_academic_C1_14','discourse analysis','/ˈdɪskɔːrs əˈnælɪsɪs/','noun','담론 분석','The study of language in its social context.','{Discourse analysis} reveals power relations in texts.','담론 분석은 텍스트의 권력 관계를 드러내요.','discourse analysis','C1','academic',2,'discourse analysis language power'),
('w_academic_C1_15','meta-analysis','/ˌmɛtə əˈnælɪsɪs/','noun','메타 분석','Statistical analysis combining results from multiple studies.','The {meta-analysis} included 50 studies.','메타 분석은 50개의 연구를 포함했어요.','meta-analysis','C1','academic',1,'meta-analysis statistics systematic review'),
('w_academic_C1_16','grounded theory','/ˈɡraʊndɪd ˈθɪəri/','noun','근거 이론','A qualitative method where theory emerges from data.','She used {grounded theory} to analyze interviews.','그녀는 인터뷰 분석에 근거 이론을 사용했어요.','grounded theory','C1','academic',2,'grounded theory qualitative research'),
('w_academic_C1_17','ethnography','/ɛθˈnɒɡrəfi/','noun','민족지학','The study of people and cultures through observation.','{Ethnography} involves deep immersion in a community.','민족지학은 공동체에 깊이 침잠하는 것을 포함해요.','ethnography','C1','academic',2,'ethnography culture fieldwork observation'),
('w_academic_C1_18','critical realism','/ˈkrɪtɪkəl ˈrɪəlɪzəm/','noun','비판적 실재론','The view that reality exists independently but is interpreted.','{Critical realism} bridges positivism and constructivism.','비판적 실재론은 실증주의와 구성주의를 잇는 교량이에요.','critical realism','C1','academic',2,'critical realism philosophy research'),
('w_academic_C1_19','agency','/ˈeɪdʒənsi/','noun','행위성','The capacity of individuals to act independently.','The study examines human {agency} in social structures.','연구는 사회 구조 안에서 인간의 행위성을 살펴봐요.','agency','C1','academic',2,'agency action freedom individual'),
('w_academic_C1_20','structure','/ˈstrʌktʃər/','noun','구조','The way parts are organized in a system.','The tension between {structure} and agency is central.','구조와 행위성 사이의 긴장이 핵심이에요.','structure','C1','academic',2,'structure system organization'),
('w_academic_C1_21','intersubjective','/ˌɪntərsəbˈdʒɛktɪv/','adjective','상호주관적인','Shared between subjects; existing between people.','Meaning is {intersubjective} in nature.','의미는 본질적으로 상호주관적이에요.','intersubjective','C1','academic',2,'intersubjective shared meaning communication'),
('w_academic_C1_22','normative','/ˈnɔːrmətɪv/','adjective','규범적인','Establishing a standard or norm.','The study takes a {normative} approach.','연구는 규범적 접근법을 취해요.','normative','C1','academic',2,'normative standard norm ethics'),
('w_academic_C1_23','teleology','/ˌtɛliˈɒlədʒi/','noun','목적론','The study of purpose or final causes.','{Teleology} asks what something is designed to achieve.','목적론은 무언가가 달성하도록 설계된 것을 물어봐요.','teleology','C1','academic',2,'teleology purpose goal design'),
('w_academic_C1_24','binary','/ˈbaɪnəri/','adjective','이분법적인','Consisting of two opposing elements.','The paper challenges the {binary} of nature and culture.','논문은 자연과 문화의 이분법에 도전해요.','binary','C1','academic',2,'binary opposition duality'),
('w_academic_C1_25','ideology','/ˌaɪdiˈɒlədʒi/','noun','이데올로기','A system of ideas forming the basis of economic or political theory.','{Ideology} shapes how we perceive reality.','이데올로기는 우리가 현실을 인식하는 방식을 형성해요.','ideology','C1','academic',2,'ideology belief system politics'),
('w_academic_C1_26','abstraction','/æbˈstrækʃən/','noun','추상화','The process of forming general concepts from specific examples.','High levels of {abstraction} can obscure meaning.','높은 수준의 추상화는 의미를 흐릴 수 있어요.','abstraction','C1','academic',2,'abstraction concept theory general'),
('w_academic_C1_27','articulate','/ɑːrˈtɪkjuleɪt/','verb','명확히 표현하다','To express ideas clearly and fluently.','She could {articulate} her argument precisely.','그녀는 자신의 주장을 정확하게 표현할 수 있었어요.','articulate','C1','academic',2,'articulate express clear language'),
('w_academic_C1_28','nuance','/ˈnjuːɑːns/','noun','뉘앙스','A subtle difference in meaning or expression.','The translation loses important {nuances}.','번역은 중요한 뉘앙스를 잃어요.','nuance','C1','academic',2,'nuance subtle difference meaning'),
('w_academic_C1_29','contingent','/kənˈtɪndʒənt/','adjective','우연적인','Dependent on circumstances; not certain.','The outcome is {contingent} on several factors.','결과는 여러 요인에 따라 달라져요.','contingent','C1','academic',2,'contingent dependent circumstances'),
('w_academic_C1_30','problematize','/ˈprɒbləmətaɪz/','verb','문제화하다','To treat something as a problem requiring analysis.','We should {problematize} the assumption.','우리는 그 가정을 문제화해야 해요.','problematize','C1','academic',2,'problematize question challenge'),
('w_academic_C1_31','contextualize','/kənˈtɛkstjuəlaɪz/','verb','맥락화하다','To place something in its wider context.','Always {contextualize} your findings.','항상 연구 결과를 맥락화해 주세요.','contextualize','C1','academic',2,'contextualize context situate'),
('w_academic_C1_32','operationalize','/ˌɒpəreɪʃənəlaɪz/','verb','조작화하다','To define a variable so it can be measured.','{Operationalize} each concept before collecting data.','데이터 수집 전에 각 개념을 조작화해 주세요.','operationalize','C1','academic',2,'operationalize define measure variable'),
('w_academic_C1_33','heuristic','/hjʊˈrɪstɪk/','adjective','발견적인','Enabling discovery through exploration.','This model serves as a {heuristic} tool.','이 모델은 발견적 도구 역할을 해요.','heuristic','C1','academic',2,'heuristic discovery exploration tool'),
('w_academic_C1_34','tautology','/tɔːˈtɒlədʒi/','noun','동어반복','A statement that repeats itself unnecessarily.','Avoid {tautology} in academic writing.','학술 글쓰기에서 동어반복을 피해 주세요.','tautology','C1','academic',2,'tautology repetition logic'),
('w_academic_C1_35','juxtapose','/ˈdʒʌkstəpoʊz/','verb','나란히 놓다','To place two things together for contrast.','{Juxtapose} the two theories to highlight differences.','차이를 강조하기 위해 두 이론을 나란히 놓아 주세요.','juxtapose','C1','academic',2,'juxtapose contrast comparison'),

-- ============================================================
-- C2 — 35 words
-- ============================================================
('w_academic_C2_01','deconstruction','/ˌdiːkənˈstrʌkʃən/','noun','해체','A method of critical analysis of texts developed by Derrida.','{Deconstruction} exposes internal contradictions in texts.','해체는 텍스트의 내부 모순을 드러내요.','deconstruction','C2','academic',2,'deconstruction Derrida philosophy text'),
('w_academic_C2_02','logocentrism','/ˌloʊɡoʊˈsɛntrɪzəm/','noun','로고스중심주의','The privileging of speech and reason over writing.','{Logocentrism} assumes a fixed center of meaning.','로고스중심주의는 의미의 고정된 중심을 가정해요.','logocentrism','C2','academic',2,'logocentrism Derrida language philosophy'),
('w_academic_C2_03','différance','/ˌdɪfəˈrɑːns/','noun','차연','Derrida''s term for the endless deferral of meaning.','{Différance} shows that meaning is never fully present.','차연은 의미가 결코 완전히 현존하지 않음을 보여줘요.','différance','C2','academic',2,'différance Derrida meaning language'),
('w_academic_C2_04','praxis','/ˈpræksɪs/','noun','실천','The process of putting theory into transformative action.','{Praxis} unites theory and transformative action.','실천은 이론과 변혁적 행동을 결합해요.','praxis','C2','academic',2,'praxis practice theory action'),
('w_academic_C2_05','intersubjectivity','/ˌɪntərsəbdʒɛkˈtɪvɪti/','noun','상호주관성','Shared understanding between different subjects.','{Intersubjectivity} is the basis of social meaning.','상호주관성은 사회적 의미의 기반이에요.','intersubjectivity','C2','academic',2,'intersubjectivity shared understanding social'),
('w_academic_C2_06','rhizome','/ˈraɪzoʊm/','noun','리좀','Deleuze''s metaphor for non-hierarchical knowledge networks.','{Rhizome} thinking challenges linear models of knowledge.','리좀적 사고는 선형적 지식 모델에 도전해요.','rhizome','C2','academic',2,'rhizome Deleuze network philosophy'),
('w_academic_C2_07','bricolage','/ˌbrɪkəˈlɑːʒ/','noun','브리콜라주','Using existing materials in new ways to create meaning.','{Bricolage} in research combines multiple methods.','연구에서의 브리콜라주는 다양한 방법을 결합해요.','bricolage','C2','academic',2,'bricolage creative method research'),
('w_academic_C2_08','heteroglossia','/ˌhɛtərəˈɡlɒsiə/','noun','이언론','Bakhtin''s concept of diverse voices within a text.','{Heteroglossia} reveals the multiplicity of voices in discourse.','이언론은 담론 속 목소리의 다양성을 드러내요.','heteroglossia','C2','academic',2,'heteroglossia Bakhtin language voices'),
('w_academic_C2_09','aporia','/əˈpɔːriə/','noun','아포리아','A philosophical puzzle with no apparent solution.','The text ends in deliberate {aporia}.','텍스트는 의도적인 아포리아로 끝나요.','aporia','C2','academic',2,'aporia paradox puzzle philosophy'),
('w_academic_C2_10','episteme','/ɛˈpɪstɪmi/','noun','에피스테메','Foucault''s term for the underlying knowledge structure of an era.','Each historical period has its own {episteme}.','각 역사적 시기는 고유한 에피스테메를 가져요.','episteme','C2','academic',2,'episteme Foucault knowledge era'),
('w_academic_C2_11','biopower','/ˈbaɪoʊpaʊər/','noun','생체권력','Foucault''s concept of power over biological life.','{Biopower} regulates populations through scientific knowledge.','생체권력은 과학적 지식을 통해 인구를 통제해요.','biopower','C2','academic',2,'biopower Foucault power body'),
('w_academic_C2_12','simulacrum','/ˌsɪmjʊˈleɪkrəm/','noun','시뮬라크르','A copy or image that replaces and obscures the original.','{Simulacrum} is a key concept in Baudrillard''s work.','시뮬라크르는 보드리야르의 핵심 개념이에요.','simulacrum','C2','academic',2,'simulacrum Baudrillard copy image'),
('w_academic_C2_13','subaltern','/ˈsʌbəltərn/','noun','서발턴','Groups marginalized in colonial and postcolonial discourse.','Spivak asks, "Can the {subaltern} speak?"','스피박은 "서발턴은 말할 수 있는가?"라고 물어요.','subaltern','C2','academic',2,'subaltern Spivak postcolonial marginalized'),
('w_academic_C2_14','hybridity','/haɪˈbrɪdɪti/','noun','혼종성','Bhabha''s concept of cultural mixing in colonial contexts.','{Hybridity} unsettles fixed cultural identities.','혼종성은 고정된 문화적 정체성을 흔들어요.','hybridity','C2','academic',2,'hybridity Bhabha culture colonial'),
('w_academic_C2_15','genealogy','/ˌdʒiːniˈælədʒi/','noun','계보학','Foucault''s method of tracing the history of ideas.','{Genealogy} reveals how power shapes knowledge.','계보학은 권력이 지식을 어떻게 형성하는지 드러내요.','genealogy','C2','academic',2,'genealogy Foucault history power'),
('w_academic_C2_16','alterity','/ɔːlˈtɛrɪti/','noun','타자성','The state of being other or different.','Levinas emphasizes {alterity} as an ethical encounter.','레비나스는 타자성을 윤리적 만남으로 강조해요.','alterity','C2','academic',2,'alterity other difference ethics'),
('w_academic_C2_17','immanence','/ˈɪmənəns/','noun','내재성','The quality of being inherent within experience.','{Immanence} contrasts with transcendence in philosophy.','내재성은 철학에서 초월성과 대비돼요.','immanence','C2','academic',2,'immanence experience philosophy being'),
('w_academic_C2_18','transcendence','/trænˈsɛndəns/','noun','초월성','The existence or experience beyond normal physical limits.','{Transcendence} refers to going beyond ordinary limits.','초월성은 일상적인 한계를 넘어가는 것을 의미해요.','transcendence','C2','academic',2,'transcendence beyond limits philosophy'),
('w_academic_C2_19','autopoiesis','/ˌɔːtəpɔɪˈiːsɪs/','noun','자기생산','A system''s ability to produce and maintain itself.','{Autopoiesis} describes self-organizing biological systems.','자기생산은 자기 조직화 생물학적 시스템을 설명해요.','autopoiesis','C2','academic',2,'autopoiesis system self organizing'),
('w_academic_C2_20','onto-epistemology','/ˈɒntoʊ ɪˌpɪstɪˈmɒlədʒi/','noun','존재-인식론','The inseparability of ontology and epistemology.','{Onto-epistemology} rejects the divide between being and knowing.','존재-인식론은 존재와 앎의 분리를 거부해요.','onto-epistemology','C2','academic',2,'onto-epistemology philosophy knowledge being'),
('w_academic_C2_21','intertextuality','/ˌɪntərtɛkstʃuˈælɪti/','noun','상호텍스트성','The relationship between texts referencing each other.','{Intertextuality} shows that no text exists in isolation.','상호텍스트성은 어떤 텍스트도 고립되어 존재하지 않음을 보여줘요.','intertextuality','C2','academic',2,'intertextuality text reference relationship'),
('w_academic_C2_22','polyphony','/pəˈlɪfəni/','noun','다성성','The presence of multiple independent voices.','{Polyphony} in a novel reflects social diversity.','소설에서의 다성성은 사회적 다양성을 반영해요.','polyphony','C2','academic',2,'polyphony voices dialogue Bakhtin'),
('w_academic_C2_23','deterritorialization','/diːˌtɛrɪtɔːriəlaɪˈzeɪʃən/','noun','탈영토화','The process of disrupting established social and cultural codes.','{Deterritorialization} breaks fixed structures of thought.','탈영토화는 사고의 고정된 구조를 해체해요.','deterritorialization','C2','academic',2,'deterritorialization Deleuze social code'),
('w_academic_C2_24','nomadology','/ˌnoʊməˈdɒlədʒi/','noun','유목론','Deleuze''s philosophy of non-fixed identity and movement.','{Nomadology} resists stable categorization.','유목론은 안정적 범주화에 저항해요.','nomadology','C2','academic',2,'nomadology Deleuze movement identity'),
('w_academic_C2_25','pharmakon','/ˈfɑːrməkɒn/','noun','파르마콘','Derrida''s term for something that is both remedy and poison.','Writing is a {pharmakon} — both aid and threat to memory.','글쓰기는 기억에 도움이자 위협인 파르마콘이에요.','pharmakon','C2','academic',2,'pharmakon Derrida remedy poison'),
('w_academic_C2_26','metanarrative','/ˈmɛtəˌnærətɪv/','noun','거대서사','An overarching story that gives meaning to all events.','Lyotard critiques the collapse of {metanarratives}.','리오타르는 거대서사의 붕괴를 비판해요.','metanarrative','C2','academic',2,'metanarrative grand narrative Lyotard'),
('w_academic_C2_27','semiosis','/ˌsiːmiˈoʊsɪs/','noun','기호작용','The process of making and interpreting signs.','{Semiosis} underpins all communicative activity.','기호작용은 모든 의사소통 활동의 바탕이 돼요.','semiosis','C2','academic',2,'semiosis sign meaning communication'),
('w_academic_C2_28','dialectical materialism','/ˌdaɪəˈlɛktɪkəl məˈtɪərɪəlɪzəm/','noun','변증법적 유물론','Marx''s application of dialectic to material conditions.','{Dialectical materialism} links ideas to economic forces.','변증법적 유물론은 사상을 경제력과 연결해요.','dialectical materialism','C2','academic',2,'dialectical materialism Marx philosophy'),
('w_academic_C2_29','panopticon','/pænˈɒptɪkɒn/','noun','판옵티콘','Bentham''s prison design used by Foucault to describe surveillance.','The modern workplace resembles a {panopticon}.','현대 직장은 판옵티콘과 닮았어요.','panopticon','C2','academic',2,'panopticon Foucault surveillance power'),
('w_academic_C2_30','habitus','/ˈhæbɪtəs/','noun','아비투스','Bourdieu''s concept of durable social dispositions.','{Habitus} shapes how people perceive and act in the world.','아비투스는 사람들이 세상을 인식하고 행동하는 방식을 형성해요.','habitus','C2','academic',2,'habitus Bourdieu social disposition'),
('w_academic_C2_31','symbolic capital','/ˈsɪmbɒlɪk ˈkæpɪtəl/','noun','상징 자본','Bourdieu''s concept of prestige and recognition as a social resource.','{Symbolic capital} confers social authority.','상징 자본은 사회적 권위를 부여해요.','symbolic capital','C2','academic',2,'symbolic capital Bourdieu prestige'),
('w_academic_C2_32','doxa','/ˈdɒksə/','noun','독사','Bourdieu''s term for unquestioned social beliefs.','{Doxa} is the set of assumptions we take for granted.','독사는 당연시하는 가정들의 집합이에요.','doxa','C2','academic',2,'doxa Bourdieu belief assumption'),
('w_academic_C2_33','liminality','/ˌlɪmɪˈnælɪti/','noun','경계성','The ambiguous transitional state between two phases.','{Liminality} describes in-between spaces of transformation.','경계성은 변환의 중간 공간을 묘사해요.','liminality','C2','academic',2,'liminality threshold transition ritual'),
('w_academic_C2_34','apophatic','/ˌæpəˈfætɪk/','adjective','부정적 신학적인','Describing something by what it is not.','The author uses an {apophatic} approach to define the concept.','저자는 개념을 정의하기 위해 부정적 접근법을 사용해요.','apophatic','C2','academic',2,'apophatic negation definition philosophy'),
('w_academic_C2_35','exegesis','/ˌɛksɪˈdʒiːsɪs/','noun','주석','Critical interpretation of a text, especially religious scripture.','Her {exegesis} of the poem was groundbreaking.','그녀의 시에 대한 주석은 획기적이었어요.','exegesis','C2','academic',2,'exegesis interpretation text commentary')
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- PATTERNS (sentences)
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES

-- ============================================================
-- A1 — 7 patterns (수업 중 표현)
-- ============================================================
('s_academic_A1_01','Can you explain that again?','다시 설명해 주실 수 있나요?','explain that again','이해 못했을 때 정중하게 다시 설명을 요청하는 표현이에요.','수업 중','A1','academic','pattern',NULL,1),
('s_academic_A1_02','How do you spell that word?','그 단어의 철자가 어떻게 되나요?','spell that word','단어 철자를 모를 때 물어보는 기본 표현이에요.','수업 중','A1','academic','pattern',NULL,2),
('s_academic_A1_03','I don''t understand. Can you speak more slowly?','이해가 안 돼요. 더 천천히 말씀해 주실 수 있나요?','speak more slowly','속도가 너무 빠를 때 정중하게 요청하는 표현이에요.','수업 중','A1','academic','pattern',NULL,3),
('s_academic_A1_04','What does this word mean?','이 단어는 무슨 의미인가요?','this word mean','새로운 단어를 만났을 때 뜻을 묻는 가장 기본적인 표현이에요.','수업 중','A1','academic','pattern',NULL,4),
('s_academic_A1_05','May I ask a question?','질문해도 되나요?','May I ask a question','수업 중에 조용히 질문 허락을 구하는 표현이에요.','수업 중','A1','academic','pattern',NULL,5),
('s_academic_A1_06','Is this the right answer?','이게 맞는 답인가요?','the right answer','자신의 답이 맞는지 확인할 때 쓰는 표현이에요.','수업 중','A1','academic','pattern',NULL,6),
('s_academic_A1_07','Please write it on the board.','칠판에 적어 주세요.','write it on the board','선생님에게 칠판에 적어달라고 부탁하는 표현이에요.','수업 중','A1','academic','pattern',NULL,7),

-- ============================================================
-- A2 — 7 patterns (질문·이해)
-- ============================================================
('s_academic_A2_01','Could you give me an example?','예시를 들어 주실 수 있나요?','give me an example','설명을 더 잘 이해하고 싶을 때 예시를 요청하는 표현이에요.','수업·토론 중','A2','academic','pattern',NULL,1),
('s_academic_A2_02','What is the main point of this article?','이 글의 핵심 요점은 무엇인가요?','main point','글을 읽고 중심 내용을 파악할 때 쓰는 표현이에요.','독서·발표 후','A2','academic','pattern',NULL,2),
('s_academic_A2_03','I think I understand, but let me check.','이해한 것 같은데, 확인해 볼게요.','I think I understand','완전히 확신하지 못할 때 겸손하게 확인하는 표현이에요.','수업·학습 중','A2','academic','pattern',NULL,3),
('s_academic_A2_04','Can you summarize what we learned today?','오늘 배운 것을 요약해 주실 수 있나요?','summarize what we learned','수업이 끝날 때 내용을 정리하며 묻는 표현이에요.','수업 마무리','A2','academic','pattern',NULL,4),
('s_academic_A2_05','In my opinion, the results are interesting.','제 의견으로는, 결과가 흥미로워요.','In my opinion','자신의 견해를 부드럽게 제시하는 표현이에요.','토론·발표 중','A2','academic','pattern',NULL,5),
('s_academic_A2_06','Where did you find that information?','그 정보를 어디서 찾으셨나요?','find that information','출처를 확인할 때 쓰는 표현이에요.','연구·토론 중','A2','academic','pattern',NULL,6),
('s_academic_A2_07','Let''s discuss the topic together.','함께 주제를 토론해 봐요.','discuss the topic together','그룹 토론을 시작할 때 쓰는 자연스러운 표현이에요.','그룹 학습','A2','academic','pattern',NULL,7),

-- ============================================================
-- B1 — 7 patterns (논거 제시)
-- ============================================================
('s_academic_B1_01','The evidence suggests that this hypothesis is correct.','증거는 이 가설이 옳다는 것을 시사해요.','evidence suggests','데이터가 이론을 뒷받침할 때 쓰는 학술적 표현이에요.','논문·발표','B1','academic','pattern',NULL,1),
('s_academic_B1_02','Based on the data, we can conclude that the method is effective.','데이터를 바탕으로, 그 방법이 효과적이라고 결론 내릴 수 있어요.','Based on the data','데이터 근거로 결론을 이끌어낼 때 쓰는 표현이에요.','연구 발표','B1','academic','pattern',NULL,2),
('s_academic_B1_03','This study aims to analyze the correlation between variables.','이 연구는 변수 간의 상관관계를 분석하는 것을 목표로 해요.','analyze the correlation between variables','연구 목적을 설명할 때 쓰는 공식적인 표현이에요.','논문 서론','B1','academic','pattern',NULL,3),
('s_academic_B1_04','One limitation of this study is the small sample size.','이 연구의 한 가지 한계는 표본 크기가 작다는 점이에요.','limitation of this study','연구의 약점을 솔직하게 인정하는 학술적 표현이에요.','논문 결론','B1','academic','pattern',NULL,4),
('s_academic_B1_05','The results demonstrate a significant improvement.','결과는 유의미한 향상을 보여줘요.','demonstrate a significant improvement','통계적으로 유의미한 결과를 발표할 때 쓰는 표현이에요.','연구 결과 발표','B1','academic','pattern',NULL,5),
('s_academic_B1_06','It is important to cite all your sources correctly.','모든 출처를 정확하게 인용하는 것이 중요해요.','cite all your sources correctly','학술 글쓰기에서 인용의 중요성을 강조하는 표현이에요.','글쓰기 지도','B1','academic','pattern',NULL,6),
('s_academic_B1_07','We need to consider the methodological limitations.','방법론적 한계를 고려해야 해요.','methodological limitations','연구 방법의 제약을 논의할 때 쓰는 표현이에요.','논문 심사','B1','academic','pattern',NULL,7),

-- ============================================================
-- B2 — 7 patterns (연구 방법)
-- ============================================================
('s_academic_B2_01','A mixed-methods approach was adopted to ensure both validity and reliability.','타당성과 신뢰도를 모두 확보하기 위해 혼합 방법론을 채택했어요.','validity and reliability','두 개의 핵심 연구 품질 지표를 동시에 다루는 표현이에요.','연구 방법 섹션','B2','academic','pattern',NULL,1),
('s_academic_B2_02','The qualitative data were analyzed using thematic analysis.','질적 데이터는 주제별 분석을 사용하여 분석되었어요.','qualitative data were analyzed using thematic analysis','질적 연구 방법을 설명할 때 쓰는 공식 표현이에요.','연구 방법','B2','academic','pattern',NULL,2),
('s_academic_B2_03','The findings must be interpreted within the theoretical framework outlined earlier.','연구 결과는 앞서 제시한 이론적 틀 안에서 해석되어야 해요.','interpreted within the theoretical framework','이론과 결과를 연결할 때 쓰는 학술적 표현이에요.','논문 논의','B2','academic','pattern',NULL,3),
('s_academic_B2_04','Peer review ensures the quality and credibility of published research.','동료 심사는 게재된 연구의 질과 신뢰성을 보장해요.','Peer review ensures the quality','학술 출판 시스템을 설명하는 표현이에요.','연구 윤리 논의','B2','academic','pattern',NULL,4),
('s_academic_B2_05','The study operationalized the concept of engagement as time-on-task.','연구는 참여도 개념을 과제 시간으로 조작화했어요.','operationalized the concept of engagement','추상적 개념을 측정 가능하게 정의하는 방법을 설명하는 표현이에요.','연구 설계','B2','academic','pattern',NULL,5),
('s_academic_B2_06','The literature review revealed a significant gap in existing research.','문헌 검토는 기존 연구에서 상당한 공백을 드러냈어요.','literature review revealed a significant gap','연구의 필요성을 정당화하는 표현이에요.','논문 서론','B2','academic','pattern',NULL,6),
('s_academic_B2_07','Triangulation of data sources strengthened the credibility of the findings.','데이터 출처의 삼각검증은 연구 결과의 신뢰성을 강화했어요.','Triangulation of data sources','여러 데이터 출처로 결과를 검증하는 방법을 설명하는 표현이에요.','연구 방법','B2','academic','pattern',NULL,7),

-- ============================================================
-- C1 — 7 patterns (학술 토론)
-- ============================================================
('s_academic_C1_01','The ontological assumptions underlying this research privilege a realist view of knowledge.','이 연구의 기저에 있는 존재론적 가정은 지식에 대한 실재론적 관점을 우선시해요.','ontological assumptions underlying','연구의 철학적 기반을 비판적으로 검토하는 표현이에요.','학술 세미나','C1','academic','pattern',NULL,1),
('s_academic_C1_02','The deductive framework constrains the researcher''s ability to uncover emergent themes.','연역적 틀은 연구자가 출현하는 주제를 발견하는 능력을 제한해요.','deductive framework constrains','연역적 방법론의 한계를 논의하는 표현이에요.','방법론 토론','C1','academic','pattern',NULL,2),
('s_academic_C1_03','A phenomenological approach foregrounds the lived experience of the participants.','현상학적 접근법은 참여자의 살아있는 경험을 전면에 내세워요.','phenomenological approach foregrounds','현상학적 연구 방법의 핵심 특성을 설명하는 표현이에요.','연구 설계 발표','C1','academic','pattern',NULL,3),
('s_academic_C1_04','This paper problematizes the binary opposition between objective and subjective knowledge.','이 논문은 객관적 지식과 주관적 지식 사이의 이분법적 대립을 문제화해요.','problematizes the binary opposition','이분법적 사고를 비판적으로 다루는 학술 논문 표현이에요.','논문 서론·토론','C1','academic','pattern',NULL,4),
('s_academic_C1_05','Reflexivity requires the researcher to critically examine their own positionality.','성찰성은 연구자가 자신의 위치성을 비판적으로 검토할 것을 요구해요.','Reflexivity requires','질적 연구에서 성찰성의 역할을 설명하는 표현이에요.','연구 방법 발표','C1','academic','pattern',NULL,5),
('s_academic_C1_06','The hegemonic discourse normalizes certain assumptions while marginalizing others.','헤게모니적 담론은 특정 가정을 정상화하면서 다른 것들을 소외시켜요.','hegemonic discourse normalizes','권력과 담론의 관계를 분석하는 표현이에요.','비판 이론 세미나','C1','academic','pattern',NULL,6),
('s_academic_C1_07','Grounded theory allows theory to emerge inductively from the data rather than being imposed a priori.','근거 이론은 이론이 사전에 부과되는 것이 아니라 데이터에서 귀납적으로 출현하도록 해요.','emerge inductively from the data','근거 이론의 핵심 원리를 설명하는 표현이에요.','연구 방법론 강의','C1','academic','pattern',NULL,7),

-- ============================================================
-- C2 — 7 patterns (논문 표현)
-- ============================================================
('s_academic_C2_01','Derrida''s concept of différance destabilizes the logocentric assumption that meaning is fixed and present.','데리다의 차연 개념은 의미가 고정되어 현존한다는 로고스중심주의적 가정을 불안정하게 해요.','différance destabilizes the logocentric assumption','해체론적 분석을 적용하는 고급 학술 논문 표현이에요.','철학 세미나·논문','C2','academic','pattern',NULL,1),
('s_academic_C2_02','Foucauldian genealogy traces how the episteme of an era disciplines and normalizes subjects.','푸코적 계보학은 한 시대의 에피스테메가 어떻게 주체를 규율하고 정상화하는지 추적해요.','Foucauldian genealogy traces','푸코의 계보학적 방법을 적용한 논문 서술 방식이에요.','비판 이론 논문','C2','academic','pattern',NULL,2),
('s_academic_C2_03','The rhizomatic structure of the text resists linear reading and hierarchical interpretation.','텍스트의 리좀적 구조는 선형적 읽기와 위계적 해석에 저항해요.','rhizomatic structure resists','들뢰즈의 리좀 개념을 텍스트 분석에 적용하는 표현이에요.','문학 이론 논문','C2','academic','pattern',NULL,3),
('s_academic_C2_04','Bakhtin''s heteroglossia reveals the polyphonic nature of academic discourse itself.','바흐친의 이언론은 학술 담론 자체의 다성적 특성을 드러내요.','heteroglossia reveals the polyphonic nature','바흐친 이론을 담론 분석에 적용하는 표현이에요.','담론 분석 논문','C2','academic','pattern',NULL,4),
('s_academic_C2_05','The subaltern''s aporia lies in the impossibility of articulating resistance within the very language of the oppressor.','서발턴의 아포리아는 억압자의 언어 안에서 저항을 표현하는 것의 불가능성에 있어요.','subaltern''s aporia lies in the impossibility','포스트식민 이론의 핵심 긴장을 표현하는 고급 학술 문장이에요.','포스트식민 이론 논문','C2','academic','pattern',NULL,5),
('s_academic_C2_06','Bourdieu''s concept of habitus explains how doxa is reproduced across generations without conscious awareness.','부르디외의 아비투스 개념은 독사가 의식적 인식 없이 세대에 걸쳐 재생산되는 방식을 설명해요.','habitus explains how doxa is reproduced','부르디외의 핵심 개념을 연결하는 학술적 표현이에요.','사회학 이론 논문','C2','academic','pattern',NULL,6),
('s_academic_C2_07','The onto-epistemological stance of the researcher inevitably shapes what counts as legitimate knowledge within the study.','연구자의 존재-인식론적 입장은 연구 내에서 무엇이 정당한 지식으로 인정되는지를 필연적으로 형성해요.','onto-epistemological stance','연구자의 철학적 입장이 연구 전체에 미치는 영향을 설명하는 표현이에요.','연구 방법론 논문','C2','academic','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

