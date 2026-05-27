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
