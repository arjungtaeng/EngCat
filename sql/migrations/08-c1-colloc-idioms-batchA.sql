-- ============================================================
-- C1 Collocations & Idioms — Batch A
-- Topics: cafe, work, travel, home, shopping
-- 5 collocations + 5 idioms per topic = 50 entries
-- ============================================================

-- ============================================================
-- CAFE (카페·식당)
-- ============================================================

INSERT INTO collocations (id, verb, noun, en, ko, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, cefr, topic_id, priority, image_keyword) VALUES
('col_cafe_C1_01', 'place', 'an order', 'place an order', '주문을 넣다', 'make', '''place an order''는 격식 있는 표현으로, 식당이나 카페에서 직원에게 정중하게 주문할 때 자주 써요. ''make an order''보다 더 자연스러워요.', 'Would you like to place an order, sir?', '주문하시겠어요, 손님?', 'I''d like to place an order for delivery, please.', '배달 주문을 넣고 싶어요.', 'C1', 'cafe', 2, 'restaurant order menu'),
('col_cafe_C1_02', 'split', 'the bill', 'split the bill', '계산을 나누다', 'divide', '친구나 동료와 식사 후 더치페이할 때 쓰는 표준 표현이에요. ''divide''보다 ''split''이 훨씬 자연스럽게 들려요.', 'Shall we split the bill evenly?', '계산을 똑같이 나눌까요?', 'Let''s split the bill three ways.', '셋이서 나눠서 계산해요.', 'C1', 'cafe', 2, 'restaurant bill payment'),
('col_cafe_C1_03', 'settle', 'the tab', 'settle the tab', '계산을 정산하다', 'pay', '바나 카페에서 미리 주문한 음료/음식 값을 마지막에 한꺼번에 정산할 때 써요. 격식 있고 세련된 표현이에요.', 'I''ll settle the tab on my way out.', '나갈 때 정산할게요.', 'He kindly offered to settle the tab for everyone.', '그가 친절하게 모두의 계산을 해주겠다고 했어요.', 'C1', 'cafe', 2, 'bar tab payment'),
('col_cafe_C1_04', 'savor', 'the moment', 'savor the moment', '순간을 음미하다', 'enjoy', '단순히 즐기는 것을 넘어, 천천히 깊이 음미한다는 뉘앙스예요. 카페에서 여유롭게 시간을 보낼 때 어울려요.', 'She closed her eyes to savor the moment.', '그녀는 그 순간을 음미하려 눈을 감았어요.', 'I love to savor the moment with a quiet espresso.', '조용히 에스프레소 한 잔과 그 순간을 음미하는 걸 좋아해요.', 'C1', 'cafe', 2, 'coffee moment relax'),
('col_cafe_C1_05', 'linger', 'over coffee', 'linger over coffee', '커피를 마시며 오래 머물다', 'stay', '커피 한 잔을 두고 오래 앉아 대화하거나 시간을 보낸다는 우아한 표현이에요. 카페 문화를 묘사할 때 자주 등장해요.', 'We lingered over coffee for hours.', '우린 커피를 마시며 몇 시간이나 머물렀어요.', 'Parisians love to linger over coffee in the afternoon.', '파리지앵들은 오후에 커피를 천천히 즐기는 걸 좋아해요.', 'C1', 'cafe', 2, 'paris cafe coffee')
ON CONFLICT (id) DO NOTHING;

INSERT INTO idioms (id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('idm_cafe_C1_01', 'grab a bite', '간단히 한 끼 먹다', '한 입 잡다', '바쁜 일정 사이에 가볍게 식사할 때 쓰는 캐주얼한 표현이에요. 동료나 친구에게 점심 제안할 때 자연스러워요.', 'Want to grab a bite before the meeting?', '회의 전에 뭐 좀 먹을래요?', 'I only had time to grab a bite at the airport.', '공항에서 간단히 먹을 시간밖에 없었어요.', NULL, NULL, 'C1', 'cafe', 2, 'quick lunch sandwich', 1),
('idm_cafe_C1_02', 'my treat', '내가 살게', '내 대접', '식사나 커피값을 내가 내겠다고 친근하게 말할 때 쓰는 표현이에요. 격식 자리보다 친한 사이에 더 어울려요.', 'Order whatever you like — my treat!', '먹고 싶은 거 뭐든 시켜요 — 제가 살게요!', 'Lunch is on me today; it''s my treat.', '오늘 점심은 제가 살게요.', NULL, NULL, 'C1', 'cafe', 2, 'paying restaurant friend', 2),
('idm_cafe_C1_03', 'on the house', '가게에서 서비스로 주는', '집(가게) 위에', '식당이나 바에서 무료로 제공하는 음식/음료를 말해요. 단골이거나 특별한 상황에서 자주 듣게 돼요.', 'The dessert is on the house tonight.', '오늘 디저트는 서비스예요.', 'The chef sent over a glass of wine on the house.', '셰프가 와인 한 잔을 서비스로 보내줬어요.', NULL, NULL, 'C1', 'cafe', 2, 'complimentary wine glass', 3),
('idm_cafe_C1_04', 'a hole in the wall', '작지만 매력 있는 가게', '벽에 난 구멍', '작고 눈에 잘 안 띄지만 음식이 맛있는 숨은 맛집을 가리켜요. 부정적이지 않고 오히려 칭찬에 가까운 표현이에요.', 'It''s a real hole in the wall, but the noodles are incredible.', '진짜 허름한 가게인데 국수가 끝내줘요.', 'We found this lovely hole in the wall in a side alley.', '골목길에서 작고 멋진 숨은 가게를 발견했어요.', NULL, NULL, 'C1', 'cafe', 2, 'tiny restaurant alley', 4),
('idm_cafe_C1_05', 'for here or to go', '드시고 가세요 아니면 포장이세요', '여기에서 또는 가져가기', '카페·패스트푸드에서 직원이 거의 항상 묻는 표현이에요. ''eat in or take away''(영국식)와 같은 뜻이에요.', 'Is that for here or to go?', '드시고 가세요, 아니면 포장이세요?', 'Two lattes to go, please.', '라테 두 잔 포장해 주세요.', NULL, NULL, 'C1', 'cafe', 2, 'takeaway coffee cup', 5)
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- WORK (직장)
-- ============================================================

INSERT INTO collocations (id, verb, noun, en, ko, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, cefr, topic_id, priority, image_keyword) VALUES
('col_work_C1_01', 'meet', 'a deadline', 'meet a deadline', '마감을 지키다', 'keep', '직장에서 가장 자주 쓰이는 콜로케이션 중 하나예요. ''keep a deadline''은 어색하고 반드시 ''meet''을 써야 해요.', 'We''re struggling to meet the deadline.', '마감을 맞추느라 고전하고 있어요.', 'She always meets her deadlines, no matter what.', '그녀는 무슨 일이 있어도 늘 마감을 지켜요.', 'C1', 'work', 2, 'deadline calendar work'),
('col_work_C1_02', 'delegate', 'tasks', 'delegate tasks', '업무를 위임하다', 'give', '관리자가 부하 직원에게 일을 맡기는 격식 있는 표현이에요. ''give tasks''보다 훨씬 전문적으로 들려요.', 'Good managers know how to delegate tasks effectively.', '훌륭한 관리자는 업무를 효과적으로 위임할 줄 알아요.', 'I need to delegate more tasks to focus on strategy.', '전략에 집중하려면 업무를 더 많이 위임해야 해요.', 'C1', 'work', 2, 'manager delegating team'),
('col_work_C1_03', 'step', 'up', 'step up', '책임지고 나서다', 'stand', '필요할 때 자발적으로 더 큰 역할이나 책임을 맡는다는 뜻이에요. 리더십 맥락에서 자주 들려요.', 'When the manager left, she stepped up immediately.', '매니저가 떠나자 그녀가 바로 나섰어요.', 'We need someone to step up and lead the project.', '나서서 프로젝트를 이끌 사람이 필요해요.', 'C1', 'work', 2, 'leadership team meeting'),
('col_work_C1_04', 'weigh', 'in', 'weigh in on', '의견을 제시하다', 'say', '논의나 결정에 본인의 의견을 보태는 격식 있는 표현이에요. 회의에서 ''Could you weigh in on this?''처럼 자주 써요.', 'Would you like to weigh in on the proposal?', '이 제안에 의견 주실래요?', 'Several experts weighed in on the debate.', '여러 전문가가 그 논쟁에 의견을 보탰어요.', 'C1', 'work', 2, 'meeting discussion opinion'),
('col_work_C1_05', 'follow', 'through', 'follow through', '끝까지 해내다', 'finish', '시작한 일을 끝까지 책임지고 완수한다는 뜻이에요. 약속이나 계획을 지키는 신뢰성을 강조할 때 써요.', 'He always follows through on his commitments.', '그는 늘 약속을 끝까지 지켜요.', 'Talking is easy, but you have to follow through.', '말은 쉬워요, 끝까지 해내는 게 중요해요.', 'C1', 'work', 2, 'project completion checklist')
ON CONFLICT (id) DO NOTHING;

INSERT INTO idioms (id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('idm_work_C1_01', 'burn the midnight oil', '밤늦게까지 일하다', '한밤중의 기름을 태우다', '예전에 기름 램프로 밤늦게 일하던 것에서 유래한 표현이에요. 야근이나 시험공부를 묘사할 때 어울려요.', 'I''ve been burning the midnight oil to finish the report.', '보고서 끝내려고 밤늦게까지 일하고 있어요.', 'She burned the midnight oil all week before the launch.', '출시 전 일주일 내내 밤샘 작업했어요.', NULL, NULL, 'C1', 'work', 2, 'office late night work', 1),
('idm_work_C1_02', 'go the extra mile', '한 발 더 노력하다', '추가로 1마일을 가다', '기대 이상으로 노력하거나 헌신할 때 쓰는 칭찬 표현이에요. 평가나 추천서에 자주 등장해요.', 'She always goes the extra mile for her clients.', '그녀는 늘 고객을 위해 한 발 더 노력해요.', 'Going the extra mile makes all the difference.', '한 발 더 가는 노력이 큰 차이를 만들어요.', NULL, NULL, 'C1', 'work', 2, 'employee dedication effort', 2),
('idm_work_C1_03', 'in the loop', '진행 상황을 공유받는', '고리(루프) 안에', '정보 공유 대상에 포함되어 있다는 뜻이에요. 비즈니스 이메일에서 ''Please keep me in the loop''로 자주 써요.', 'Please keep me in the loop on any updates.', '업데이트 있으면 저한테도 공유 부탁드려요.', 'Make sure HR is in the loop before you announce it.', '발표 전에 인사팀에 꼭 공유하세요.', NULL, NULL, 'C1', 'work', 2, 'email communication team', 3),
('idm_work_C1_04', 'back to square one', '원점으로 돌아가다', '1번 칸으로 돌아가기', '진행하던 일이 무산되어 처음부터 다시 시작해야 할 때 써요. 보드게임에서 유래한 표현이에요.', 'The client rejected our proposal — back to square one.', '고객이 제안을 거절했어요 — 원점이네요.', 'After the merger fell through, we were back to square one.', '합병이 무산된 뒤 다시 처음으로 돌아갔어요.', NULL, NULL, 'C1', 'work', 2, 'restart frustration project', 4),
('idm_work_C1_05', 'wear many hats', '여러 역할을 동시에 하다', '많은 모자를 쓰다', '한 사람이 여러 직책이나 업무를 동시에 수행할 때 써요. 특히 스타트업이나 중소기업 환경에서 자주 들려요.', 'In a startup, you have to wear many hats.', '스타트업에서는 여러 역할을 동시에 해야 해요.', 'As a freelancer, I wear many hats every day.', '프리랜서로서 매일 여러 역할을 해요.', NULL, NULL, 'C1', 'work', 2, 'startup multitasking roles', 5)
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- TRAVEL (여행)
-- ============================================================

INSERT INTO collocations (id, verb, noun, en, ko, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, cefr, topic_id, priority, image_keyword) VALUES
('col_travel_C1_01', 'book', 'accommodations', 'book accommodations', '숙소를 예약하다', 'reserve', '''book''이 영어권에서 훨씬 자연스러워요. ''accommodations''(미국식 복수)는 호텔·숙박 시설을 포괄하는 격식 단어예요.', 'Have you booked your accommodations yet?', '숙소 예약은 하셨어요?', 'I always book my accommodations months in advance.', '저는 늘 몇 달 전에 숙소를 예약해요.', 'C1', 'travel', 2, 'hotel booking laptop'),
('col_travel_C1_02', 'settle', 'into a routine', 'settle into a routine', '일상에 적응하다', 'enter', '새로운 환경에 점차 익숙해져 안정된 패턴을 만든다는 뜻이에요. 장기 여행이나 이주 후의 적응 과정을 표현할 때 어울려요.', 'It took a week to settle into a routine abroad.', '해외 일상에 적응하는 데 일주일 걸렸어요.', 'Once you settle into a routine, travel feels easier.', '일상이 자리 잡히면 여행이 더 수월해져요.', 'C1', 'travel', 2, 'morning routine abroad'),
('col_travel_C1_03', 'wander', 'aimlessly', 'wander aimlessly', '정처 없이 거닐다', 'walk', '뚜렷한 목적지 없이 자유롭게 돌아다닌다는 낭만적인 뉘앙스가 있어요. 여행 에세이나 일기에 자주 등장해요.', 'I love to wander aimlessly through old towns.', '오래된 도시를 정처 없이 거니는 걸 좋아해요.', 'We wandered aimlessly until we found a hidden plaza.', '숨겨진 광장을 발견할 때까지 정처 없이 걸었어요.', 'C1', 'travel', 2, 'old town wander walking'),
('col_travel_C1_04', 'absorb', 'the culture', 'absorb the culture', '문화를 흡수하다', 'learn', '단순히 보거나 배우는 게 아니라 깊이 체험하고 받아들인다는 의미예요. 문화 여행이나 어학연수 설명에 잘 어울려요.', 'Living there really lets you absorb the culture.', '거기 살면 문화를 제대로 흡수하게 돼요.', 'She traveled slowly to absorb the local culture.', '그녀는 현지 문화를 체득하려 천천히 여행했어요.', 'C1', 'travel', 2, 'local market culture'),
('col_travel_C1_05', 'soak', 'up the atmosphere', 'soak up the atmosphere', '분위기를 만끽하다', 'feel', '한 장소의 분위기와 정취를 천천히 즐긴다는 표현이에요. 카페, 광장, 축제 같은 장소 묘사에 자주 써요.', 'We just sat there and soaked up the atmosphere.', '그냥 거기 앉아 분위기를 만끽했어요.', 'I soaked up the atmosphere of the night market.', '야시장의 분위기를 흠뻑 즐겼어요.', 'C1', 'travel', 2, 'night market atmosphere')
ON CONFLICT (id) DO NOTHING;

INSERT INTO idioms (id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('idm_travel_C1_01', 'off the beaten path', '잘 알려지지 않은 곳에', '다져진 길에서 벗어난', '관광객이 잘 가지 않는 숨은 장소를 묘사할 때 써요. 여행 블로그나 가이드북에 단골로 등장하는 표현이에요.', 'We love restaurants that are off the beaten path.', '저희는 잘 알려지지 않은 식당을 좋아해요.', 'This village is truly off the beaten path.', '이 마을은 정말 잘 알려지지 않은 곳이에요.', NULL, NULL, 'C1', 'travel', 2, 'hidden village mountain', 1),
('idm_travel_C1_02', 'live out of a suitcase', '여행지를 떠돌며 지내다', '여행 가방에서 살다', '짐을 풀지 못한 채 여기저기 옮겨 다니며 사는 생활을 의미해요. 출장이 잦은 사람이나 장기 여행자가 자주 써요.', 'I''ve been living out of a suitcase for months.', '몇 달째 가방 들고 떠돌고 있어요.', 'Frequent business travelers live out of a suitcase.', '출장이 잦은 사람들은 가방 들고 사는 셈이죠.', NULL, NULL, 'C1', 'travel', 2, 'suitcase hotel room', 2),
('idm_travel_C1_03', 'the road less traveled', '남들이 가지 않는 길', '덜 다녀진 길', '로버트 프로스트의 시에서 유래한 표현으로, 남들과 다른 선택이나 여정을 의미해요. 다소 시적이고 격조 있는 어조예요.', 'She chose the road less traveled and moved to Iceland.', '그녀는 남들이 안 가는 길을 택해 아이슬란드로 갔어요.', 'Sometimes the road less traveled is the most rewarding.', '때로는 덜 가본 길이 가장 보람 있어요.', NULL, NULL, 'C1', 'travel', 2, 'lonely forest path', 3),
('idm_travel_C1_04', 'catch a flight', '비행기를 잡다', '비행기를 잡다', '비행기를 시간 안에 타다는 표현이에요. ''miss a flight''(놓치다)의 반대로, 일상적으로 자주 써요.', 'I need to catch a flight at 6 a.m.', '아침 6시 비행기를 타야 해요.', 'We barely caught our connecting flight.', '환승 비행기를 간신히 잡았어요.', NULL, NULL, 'C1', 'travel', 2, 'airport boarding gate', 4),
('idm_travel_C1_05', 'in transit', '이동 중인', '운송 중인', '한 장소에서 다른 장소로 이동 중이라는 격식 있는 표현이에요. 공항 환승 구역이나 우편물 추적에도 흔히 보여요.', 'Your package is currently in transit.', '소포가 현재 이동 중이에요.', 'I''ll be in transit between flights all day.', '하루 종일 환승 중일 거예요.', NULL, NULL, 'C1', 'travel', 2, 'transit airport passenger', 5)
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- HOME (주거·생활)
-- ============================================================

INSERT INTO collocations (id, verb, noun, en, ko, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, cefr, topic_id, priority, image_keyword) VALUES
('col_home_C1_01', 'settle', 'in', 'settle in', '새 집에 자리 잡다', 'enter', '이사 후 새로운 공간에 익숙해지고 짐을 정리하며 안정되는 과정을 표현해요. 이사 인사나 안부에서 자주 들려요.', 'Have you settled in yet?', '이사 잘 적응하셨어요?', 'It takes about a month to fully settle in.', '완전히 자리 잡는 데 한 달 정도 걸려요.', 'C1', 'home', 2, 'new apartment unpacking'),
('col_home_C1_02', 'do', 'up a place', 'do up a place', '집을 꾸미다·수리하다', 'decorate', '낡은 집을 보수하거나 새 집을 멋지게 꾸미는 것을 영국식으로 표현해요. 인테리어 잡지에서 자주 등장해요.', 'They did up the cottage beautifully.', '그들은 그 별장을 멋지게 꾸몄어요.', 'We''re doing up the kitchen next month.', '다음 달에 부엌을 리모델링할 거예요.', 'C1', 'home', 2, 'kitchen renovation home'),
('col_home_C1_03', 'share', 'a flat', 'share a flat', '집을 함께 쓰다', 'live', '주로 영국식 표현으로, 한 아파트를 룸메이트와 공유한다는 뜻이에요. 미국식은 ''share an apartment''예요.', 'I shared a flat with two friends in London.', '런던에서 친구 둘과 집을 함께 썼어요.', 'Sharing a flat helps cut down on rent.', '집을 함께 쓰면 월세를 줄일 수 있어요.', 'C1', 'home', 2, 'roommates flat london'),
('col_home_C1_04', 'set', 'up home', 'set up home', '살림을 차리다', 'make', '결혼이나 이주 후 새 보금자리를 마련한다는 뜻으로, 다소 격식 있고 따뜻한 뉘앙스예요.', 'They set up home in a quiet coastal town.', '그들은 조용한 해안 도시에 살림을 차렸어요.', 'After marriage, they set up home in Seoul.', '결혼 후 그들은 서울에 보금자리를 마련했어요.', 'C1', 'home', 2, 'coastal town house'),
('col_home_C1_05', 'feel', 'at home', 'feel at home', '편안하다·내 집 같다', 'be', '낯선 장소나 상황에서 편안함을 느낀다는 따뜻한 표현이에요. 손님맞이 인사에 자주 써요.', 'Please make yourself comfortable — feel at home.', '편하게 계세요 — 내 집처럼요.', 'I felt at home from the moment I arrived.', '도착한 순간부터 편안했어요.', 'C1', 'home', 2, 'cozy living room')
ON CONFLICT (id) DO NOTHING;

INSERT INTO idioms (id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('idm_home_C1_01', 'make yourself at home', '편하게 계세요', '스스로를 집에 있게 하다', '손님이 왔을 때 격식 없이 편하게 지내라고 권하는 따뜻한 표현이에요. 호스트가 거의 반드시 쓰는 인사말이에요.', 'Come in, make yourself at home!', '들어오세요, 편히 계세요!', 'He told us to make ourselves at home while he cooked.', '그가 요리하는 동안 편히 있으라고 했어요.', NULL, NULL, 'C1', 'home', 2, 'guest welcoming sofa', 1),
('idm_home_C1_02', 'home sweet home', '내 집이 최고', '집, 달콤한 집', '여행이나 외출 후 집에 돌아왔을 때의 안도감을 표현해요. 진심 어린 감탄이나 가벼운 농담으로 모두 쓸 수 있어요.', 'Finally back — home sweet home!', '드디어 돌아왔다 — 역시 내 집이 최고!', 'After a long trip, nothing beats home sweet home.', '긴 여행 끝에 내 집만 한 곳이 없어요.', NULL, NULL, 'C1', 'home', 2, 'cozy bedroom returning', 2),
('idm_home_C1_03', 'under one roof', '한 지붕 아래에', '하나의 지붕 아래', '여러 사람이 한 집에 함께 산다는 뜻으로, 대가족이나 셰어하우스를 묘사할 때 자주 써요.', 'Three generations live under one roof.', '삼대가 한 지붕 아래 살아요.', 'It''s rare to have so many cousins under one roof.', '사촌이 이렇게 많이 한집에 사는 건 드물어요.', NULL, NULL, 'C1', 'home', 2, 'large family house', 3),
('idm_home_C1_04', 'right at home', '아주 편안한', '곧바로 집처럼', '어떤 장소나 상황이 마치 내 집인 듯 자연스럽고 편안하다는 강조 표현이에요. ''feel at home''보다 더 강한 어감이에요.', 'She felt right at home with the team.', '그녀는 그 팀과 곧바로 편안함을 느꼈어요.', 'You''ll feel right at home in this neighborhood.', '이 동네에서 금방 편안해질 거예요.', NULL, NULL, 'C1', 'home', 2, 'neighborhood community comfort', 4),
('idm_home_C1_05', 'a roof over your head', '머물 곳·살 곳', '머리 위의 지붕', '거창하지 않아도 살 집이 있다는 것을 강조할 때 써요. 감사함이나 기본적인 안정을 이야기할 때 자주 등장해요.', 'At least we have a roof over our heads.', '적어도 살 집은 있잖아요.', 'Be grateful for a roof over your head.', '살 곳이 있다는 것에 감사하세요.', NULL, NULL, 'C1', 'home', 2, 'simple house shelter', 5)
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SHOPPING (쇼핑)
-- ============================================================

INSERT INTO collocations (id, verb, noun, en, ko, wrong_verb, tip, ex1, ex1_ko, ex2, ex2_ko, cefr, topic_id, priority, image_keyword) VALUES
('col_shopping_C1_01', 'browse', 'the shelves', 'browse the shelves', '진열대를 둘러보다', 'look', '특정 상품을 정하지 않고 천천히 진열대를 구경한다는 뜻이에요. 서점이나 마트 묘사에 자주 어울려요.', 'I love browsing the shelves at the bookstore.', '서점에서 책장 둘러보는 걸 좋아해요.', 'She spent an hour browsing the shelves.', '그녀는 한 시간 동안 진열대를 둘러봤어요.', 'C1', 'shopping', 2, 'bookstore shelves browsing'),
('col_shopping_C1_02', 'snap', 'up a bargain', 'snap up a bargain', '특가 상품을 잽싸게 사다', 'get', '좋은 물건이 매진되기 전 재빨리 낚아챈다는 활기찬 표현이에요. 세일이나 한정 판매 맥락에 잘 어울려요.', 'Shoppers snapped up the bargains within minutes.', '쇼핑객들이 몇 분 만에 특가 상품을 다 채갔어요.', 'I snapped up a bargain on a winter coat.', '겨울 코트를 특가로 잽싸게 샀어요.', 'C1', 'shopping', 2, 'sale rush shoppers'),
('col_shopping_C1_03', 'compare', 'prices', 'compare prices', '가격을 비교하다', 'check', '구매 전 여러 가게나 사이트의 가격을 따져본다는 기본적인 쇼핑 표현이에요. 온라인 쇼핑 맥락에서 더 자주 들려요.', 'I always compare prices before I buy.', '저는 늘 사기 전에 가격을 비교해요.', 'You can compare prices across multiple sites.', '여러 사이트에서 가격을 비교할 수 있어요.', 'C1', 'shopping', 2, 'price comparison online'),
('col_shopping_C1_04', 'splash', 'out on', 'splash out on', '큰돈을 쓰다', 'spend', '평소보다 큰돈을 흔쾌히 쓴다는 뉘앙스로, 약간의 사치를 즐기는 어감이에요. 영국식에서 더 자주 들려요.', 'They splashed out on a designer handbag.', '그들은 명품 가방에 큰돈을 썼어요.', 'I splashed out on a nice dinner last night.', '어젯밤 멋진 저녁에 꽤 돈을 썼어요.', 'C1', 'shopping', 2, 'luxury handbag boutique'),
('col_shopping_C1_05', 'stick', 'to a budget', 'stick to a budget', '예산을 지키다', 'keep', '미리 정한 예산 범위 안에서 쇼핑한다는 책임 있는 표현이에요. 가계부나 재테크 맥락에 자주 등장해요.', 'It''s hard to stick to a budget during the holidays.', '연말엔 예산을 지키기가 어려워요.', 'She always sticks to her shopping budget.', '그녀는 늘 쇼핑 예산을 지켜요.', 'C1', 'shopping', 2, 'budget planner wallet')
ON CONFLICT (id) DO NOTHING;

INSERT INTO idioms (id, en, ko, literal_ko, tip, ex1, ex1_ko, ex2, ex2_ko, ex3, ex3_ko, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('idm_shopping_C1_01', 'shop around', '여러 곳을 비교해서 사다', '돌아다니며 쇼핑하다', '한 곳에서 바로 사지 않고 여러 가게나 사이트를 비교해 본다는 뜻이에요. 똑똑한 소비자의 행동을 묘사할 때 자주 써요.', 'Shop around before committing to a purchase.', '사기 전에 여러 곳을 비교해 보세요.', 'I shopped around for the best insurance deal.', '가장 좋은 보험 상품을 찾아 비교해 봤어요.', NULL, NULL, 'C1', 'shopping', 2, 'comparing shops customer', 1),
('idm_shopping_C1_02', 'a steal', '거저나 다름없는 가격', '훔친 것', '가격에 비해 정말 가치 있는 좋은 거래를 표현해요. ''bargain''보다 더 강한 어감이에요.', 'At that price, it''s an absolute steal.', '그 가격이면 거저예요.', 'The vintage jacket was a real steal.', '그 빈티지 자켓은 정말 거저였어요.', NULL, NULL, 'C1', 'shopping', 2, 'vintage jacket sale', 2),
('idm_shopping_C1_03', 'window shopping', '아이쇼핑', '창문 쇼핑', '실제로 사지 않고 구경만 한다는 뜻이에요. 한국어 ''아이쇼핑''과 비슷하지만 ''eye shopping''은 콩글리시예요.', 'I went window shopping all afternoon.', '오후 내내 아이쇼핑 했어요.', 'Window shopping is my favorite weekend activity.', '아이쇼핑이 제일 좋아하는 주말 활동이에요.', NULL, NULL, 'C1', 'shopping', 2, 'shop window display', 3),
('idm_shopping_C1_04', 'break the bank', '돈을 거덜내다', '은행을 부수다', '큰돈을 써서 재정에 부담이 된다는 뜻이에요. 부정문(''won''t break the bank'')으로 ''비싸지 않다''는 뜻으로도 자주 써요.', 'A nice meal out won''t break the bank.', '괜찮은 외식 한 번으론 거덜 나지 않아요.', 'That handbag would totally break the bank.', '그 가방은 완전히 거덜 낼 거예요.', NULL, NULL, 'C1', 'shopping', 2, 'empty wallet expensive', 4),
('idm_shopping_C1_05', 'drive a hard bargain', '깐깐하게 흥정하다', '강한 흥정을 몰다', '쉽게 양보하지 않고 끈질기게 좋은 조건을 이끌어낸다는 뜻이에요. 협상이나 사업 거래에서도 자주 써요.', 'She drives a hard bargain at every market.', '그녀는 시장마다 깐깐하게 흥정해요.', 'The supplier drives a hard bargain.', '그 공급업체는 흥정이 만만치 않아요.', NULL, NULL, 'C1', 'shopping', 2, 'market negotiating buyer', 5)
ON CONFLICT (id) DO NOTHING;
