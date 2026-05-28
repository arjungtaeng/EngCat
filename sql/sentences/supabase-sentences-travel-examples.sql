-- EngCat — Travel topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko 추가 (42 patterns)
-- Each example applies the same grammatical/functional pattern in a different context
-- Idempotent (UPDATE only)
-- Generated: 2026-05-26

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Where are you going this weekend?', ex1_ko = '이번 주말에 어디 가세요?',
  ex2 = 'Where are you going after the meeting?', ex2_ko = '회의 끝나고 어디 가세요?',
  ex3 = 'Where are you going for your holiday?', ex3_ko = '휴가 때 어디 가세요?',
  ex4 = 'Where are you going with that bag?', ex4_ko = '그 가방 들고 어디 가세요?',
  ex5 = 'Where are you going so early in the morning?', ex5_ko = '이른 아침에 어디 가시는 거예요?'
WHERE id = 's_travel_A1_01';

UPDATE sentences SET
  ex1 = 'How do I get to the train station?', ex1_ko = '기차역까지 어떻게 가나요?',
  ex2 = 'How do I get to the city centre from here?', ex2_ko = '여기서 시내 중심가까지 어떻게 가나요?',
  ex3 = 'How do I get to the nearest bus stop?', ex3_ko = '가장 가까운 버스 정류장까지 어떻게 가나요?',
  ex4 = 'How do I get to the museum from the airport?', ex4_ko = '공항에서 박물관까지 어떻게 가나요?',
  ex5 = 'How do I get to the beach from here?', ex5_ko = '여기서 해변까지 어떻게 가나요?'
WHERE id = 's_travel_A1_02';

UPDATE sentences SET
  ex1 = 'Is this the right train to London?', ex1_ko = '이게 런던 가는 기차가 맞나요?',
  ex2 = 'Is this the right platform for the express?', ex2_ko = '여기가 급행 열차 플랫폼이 맞나요?',
  ex3 = 'Is this the right road to the airport?', ex3_ko = '이 길이 공항 가는 길이 맞나요?',
  ex4 = 'Is this the right stop for the old town?', ex4_ko = '여기가 구시가지 내리는 정류장이 맞나요?',
  ex5 = 'Is this the right direction for the harbour?', ex5_ko = '이 방향이 항구 가는 방향이 맞나요?'
WHERE id = 's_travel_A1_03';

UPDATE sentences SET
  ex1 = 'Where is the bus station?', ex1_ko = '버스 터미널이 어디에 있나요?',
  ex2 = 'Where is the nearest taxi rank?', ex2_ko = '가장 가까운 택시 승강장이 어디예요?',
  ex3 = 'Where is the tourist information centre?', ex3_ko = '관광 안내소가 어디에 있나요?',
  ex4 = 'Where is the baggage claim area?', ex4_ko = '수하물 찾는 곳이 어디예요?',
  ex5 = 'Where is the nearest ATM?', ex5_ko = '가장 가까운 ATM이 어디에 있나요?'
WHERE id = 's_travel_A1_04';

UPDATE sentences SET
  ex1 = 'I need a timetable, please.', ex1_ko = '시간표 좀 주세요.',
  ex2 = 'I need a receipt, please.', ex2_ko = '영수증 좀 주세요.',
  ex3 = 'I need a single ticket, please.', ex3_ko = '편도 티켓 한 장 주세요.',
  ex4 = 'I need a taxi, please.', ex4_ko = '택시 한 대 불러 주세요.',
  ex5 = 'I need some local information, please.', ex5_ko = '현지 정보 좀 알려주세요.'
WHERE id = 's_travel_A1_05';

UPDATE sentences SET
  ex1 = 'What time does the museum open?', ex1_ko = '박물관은 몇 시에 열어요?',
  ex2 = 'What time does the last train leave?', ex2_ko = '막차는 몇 시에 출발해요?',
  ex3 = 'What time does the tour start?', ex3_ko = '투어는 몇 시에 시작해요?',
  ex4 = 'What time does the restaurant close?', ex4_ko = '식당은 몇 시에 닫아요?',
  ex5 = 'What time does check-in start?', ex5_ko = '체크인은 몇 시부터 시작해요?'
WHERE id = 's_travel_A1_06';

UPDATE sentences SET
  ex1 = 'How much is the bus fare?', ex1_ko = '버스 요금이 얼마예요?',
  ex2 = 'How much is the entrance fee?', ex2_ko = '입장료가 얼마예요?',
  ex3 = 'How much is the taxi to the station?', ex3_ko = '역까지 택시비가 얼마예요?',
  ex4 = 'How much is the guided tour?', ex4_ko = '가이드 투어가 얼마예요?',
  ex5 = 'How much is a single room per night?', ex5_ko = '1인실 1박에 얼마예요?'
WHERE id = 's_travel_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I have a reservation under the name Park.', ex1_ko = '박 이름으로 예약이 되어 있어요.',
  ex2 = 'I have a reservation under the name Lee for two nights.', ex2_ko = '이 이름으로 2박 예약이 되어 있어요.',
  ex3 = 'I have a reservation under the name Choi for a double room.', ex3_ko = '최 이름으로 더블룸 예약이 되어 있어요.',
  ex4 = 'I have a reservation under Johnson — checking in today.', ex4_ko = '존슨 이름으로 예약이 되어 있는데 오늘 체크인이에요.',
  ex5 = 'I have a reservation under my company name for three rooms.', ex5_ko = '저희 회사 이름으로 3개 방이 예약되어 있어요.'
WHERE id = 's_travel_A2_01';

UPDATE sentences SET
  ex1 = 'Could I order now, please?', ex1_ko = '지금 주문해도 될까요?',
  ex2 = 'Could I see the menu, please?', ex2_ko = '메뉴 좀 볼 수 있을까요?',
  ex3 = 'Could I have an early check-in, please?', ex3_ko = '조기 체크인이 가능할까요?',
  ex4 = 'Could I leave my bags here until check-in, please?', ex4_ko = '체크인 전까지 여기에 짐을 맡길 수 있을까요?',
  ex5 = 'Could I pay by card, please?', ex5_ko = '카드로 결제해도 될까요?'
WHERE id = 's_travel_A2_02';

UPDATE sentences SET
  ex1 = 'What time is the last bus?', ex1_ko = '막차는 몇 시예요?',
  ex2 = 'What time is the breakfast served?', ex2_ko = '아침 식사는 몇 시에 제공되나요?',
  ex3 = 'What time is the guided tour tomorrow?', ex3_ko = '내일 가이드 투어는 몇 시예요?',
  ex4 = 'What time is the earliest flight out?', ex4_ko = '가장 이른 출발 항공편이 몇 시예요?',
  ex5 = 'What time is the shuttle to the airport?', ex5_ko = '공항 셔틀버스는 몇 시예요?'
WHERE id = 's_travel_A2_03';

UPDATE sentences SET
  ex1 = 'I''d like a table by the window.', ex1_ko = '창가 자리로 주세요.',
  ex2 = 'I''d like a non-smoking room, please.', ex2_ko = '금연 객실로 주세요.',
  ex3 = 'I''d like a seat near the front of the plane.', ex3_ko = '비행기 앞쪽 좌석으로 주세요.',
  ex4 = 'I''d like a quiet room away from the street.', ex4_ko = '길가에서 떨어진 조용한 방으로 주세요.',
  ex5 = 'I''d like a twin room rather than a double.', ex5_ko = '더블보다는 트윈 룸으로 주세요.'
WHERE id = 's_travel_A2_04';

UPDATE sentences SET
  ex1 = 'Is a city tour included in the package?', ex1_ko = '패키지에 시티 투어가 포함되어 있나요?',
  ex2 = 'Is airport transfer included in the rate?', ex2_ko = '요금에 공항 이동이 포함되어 있나요?',
  ex3 = 'Is Wi-Fi included in the room price?', ex3_ko = '객실 요금에 와이파이가 포함되어 있나요?',
  ex4 = 'Is parking included in the hotel rate?', ex4_ko = '호텔 요금에 주차가 포함되어 있나요?',
  ex5 = 'Is a welcome drink included in the package?', ex5_ko = '패키지에 웰컴 드링크가 포함되어 있나요?'
WHERE id = 's_travel_A2_05';

UPDATE sentences SET
  ex1 = 'Can I try the jacket on first?', ex1_ko = '재킷 먼저 입어봐도 될까요?',
  ex2 = 'Can I taste it before I decide?', ex2_ko = '결정하기 전에 먹어봐도 될까요?',
  ex3 = 'Can I check the view from the balcony first?', ex3_ko = '발코니에서 전망 먼저 확인해봐도 될까요?',
  ex4 = 'Can I see the contract before I sign?', ex4_ko = '서명 전에 계약서를 먼저 볼 수 있을까요?',
  ex5 = 'Can I check the internet connection first?', ex5_ko = '인터넷 연결 먼저 확인해봐도 될까요?'
WHERE id = 's_travel_A2_06';

UPDATE sentences SET
  ex1 = 'Do you have any seats available on tonight''s flight?', ex1_ko = '오늘 밤 항공편에 자리가 있나요?',
  ex2 = 'Do you have any tours available this afternoon?', ex2_ko = '오늘 오후 투어가 있나요?',
  ex3 = 'Do you have any double rooms available for this weekend?', ex3_ko = '이번 주말에 더블룸이 있나요?',
  ex4 = 'Do you have any cheaper options available?', ex4_ko = '더 저렴한 선택지가 있나요?',
  ex5 = 'Do you have any late checkout available tomorrow?', ex5_ko = '내일 레이트 체크아웃이 가능한가요?'
WHERE id = 's_travel_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Could you tell me how to get to the castle from here?', ex1_ko = '여기서 성까지 어떻게 가는지 알려주실 수 있나요?',
  ex2 = 'Could you tell me how to get to the harbour by public transport?', ex2_ko = '대중교통으로 항구까지 어떻게 가는지 알려주실 수 있나요?',
  ex3 = 'Could you tell me how to get to the old town on foot?', ex3_ko = '걸어서 구시가지까지 어떻게 가는지 알려주실 수 있나요?',
  ex4 = 'Could you tell me how to get to the embassy from the city centre?', ex4_ko = '시내 중심가에서 대사관까지 어떻게 가는지 알려주실 수 있나요?',
  ex5 = 'Could you tell me how to get to the ski resort from the train station?', ex5_ko = '기차역에서 스키 리조트까지 어떻게 가는지 알려주실 수 있나요?'
WHERE id = 's_travel_B1_01';

UPDATE sentences SET
  ex1 = 'Do I need a visa to enter Japan as a Korean citizen?', ex1_ko = '한국 시민으로서 일본에 입국하려면 비자가 필요한가요?',
  ex2 = 'Do I need a permit to hike in this national park?', ex2_ko = '이 국립공원에서 하이킹하려면 허가증이 필요한가요?',
  ex3 = 'Do I need a vaccination certificate to enter this country?', ex3_ko = '이 나라에 입국하려면 예방접종 증명서가 필요한가요?',
  ex4 = 'Do I need travel insurance to join this tour?', ex4_ko = '이 투어에 참가하려면 여행자 보험이 필요한가요?',
  ex5 = 'Do I need to book in advance or can I just turn up?', ex5_ko = '미리 예약해야 하나요, 아니면 그냥 나타나도 되나요?'
WHERE id = 's_travel_B1_02';

UPDATE sentences SET
  ex1 = 'I think I left my jacket in the taxi.', ex1_ko = '택시에 재킷을 두고 내린 것 같아요.',
  ex2 = 'I think I left my phone at the reception desk.', ex2_ko = '프런트 데스크에 휴대폰을 두고 온 것 같아요.',
  ex3 = 'I think I left my passport in the hotel room.', ex3_ko = '호텔 방에 여권을 두고 온 것 같아요.',
  ex4 = 'I think I left my camera at the last sightseeing stop.', ex4_ko = '마지막 관광지에서 카메라를 두고 온 것 같아요.',
  ex5 = 'I think I left my travel adapter at the airport lounge.', ex5_ko = '공항 라운지에 여행용 어댑터를 두고 온 것 같아요.'
WHERE id = 's_travel_B1_03';

UPDATE sentences SET
  ex1 = 'Excuse me, is this the queue for customs?', ex1_ko = '실례합니다, 이게 세관 줄인가요?',
  ex2 = 'Excuse me, is this the way to the departure gate?', ex2_ko = '실례합니다, 여기가 출발 게이트 가는 길인가요?',
  ex3 = 'Excuse me, is this the correct platform for Rome?', ex3_ko = '실례합니다, 여기가 로마 가는 플랫폼이 맞나요?',
  ex4 = 'Excuse me, is this the lost and found office?', ex4_ko = '실례합니다, 여기가 분실물 보관소인가요?',
  ex5 = 'Excuse me, is this the bus for the city centre?', ex5_ko = '실례합니다, 이게 시내 중심가 가는 버스인가요?'
WHERE id = 's_travel_B1_04';

UPDATE sentences SET
  ex1 = 'How long does it take to get there by train?', ex1_ko = '기차로 거기까지 얼마나 걸려요?',
  ex2 = 'How long does it take to get to the airport by bus?', ex2_ko = '버스로 공항까지 얼마나 걸려요?',
  ex3 = 'How long does it take to walk to the nearest beach?', ex3_ko = '가장 가까운 해변까지 걸어서 얼마나 걸려요?',
  ex4 = 'How long does it take to clear customs at this airport?', ex4_ko = '이 공항에서 세관 통과하는 데 얼마나 걸려요?',
  ex5 = 'How long does it take to get a refund processed?', ex5_ko = '환불 처리가 얼마나 걸려요?'
WHERE id = 's_travel_B1_05';

UPDATE sentences SET
  ex1 = 'My connecting flight leaves in an hour — will that be a problem?', ex1_ko = '환승 항공편이 한 시간 후에 출발하는데 문제가 될까요?',
  ex2 = 'My visa expires in two weeks — will that be a problem?', ex2_ko = '비자가 2주 후에 만료되는데 문제가 될까요?',
  ex3 = 'My travel insurance doesn''t cover water sports — will that be a problem?', ex3_ko = '여행자 보험이 수상 스포츠를 보장하지 않는데 문제가 될까요?',
  ex4 = 'My surname is spelled differently on my ticket — will that be a problem?', ex4_ko = '티켓에 성씨 철자가 다르게 되어 있는데 문제가 될까요?',
  ex5 = 'I only have a digital copy of my booking — will that be a problem?', ex5_ko = '예약 확인서가 디지털 사본밖에 없는데 문제가 될까요?'
WHERE id = 's_travel_B1_06';

UPDATE sentences SET
  ex1 = 'Could you recommend a good area to eat near the hotel?', ex1_ko = '호텔 근처에서 식사하기 좋은 곳을 추천해 주실 수 있나요?',
  ex2 = 'Could you recommend a reliable local taxi company?', ex2_ko = '믿을 만한 현지 택시 회사를 추천해 주실 수 있나요?',
  ex3 = 'Could you recommend a scenic walking route from here?', ex3_ko = '여기서 경치 좋은 도보 코스를 추천해 주실 수 있나요?',
  ex4 = 'Could you recommend a day trip worth taking from the city?', ex4_ko = '도시에서 떠날 만한 당일치기 여행을 추천해 주실 수 있나요?',
  ex5 = 'Could you recommend a budget-friendly hostel in the old town?', ex5_ko = '구시가지에서 예산 친화적인 호스텔을 추천해 주실 수 있나요?'
WHERE id = 's_travel_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Moving abroad completely changed my perspective on success.', ex1_ko = '해외로 이주하면서 성공에 대한 관점이 완전히 바뀌었어요.',
  ex2 = 'Learning a second language completely changed my perspective on communication.', ex2_ko = '제2외국어를 배우면서 소통에 대한 관점이 완전히 바뀌었어요.',
  ex3 = 'Meeting people from conflict zones completely changed my perspective on peace.', ex3_ko = '분쟁 지역 사람들을 만나면서 평화에 대한 관점이 완전히 바뀌었어요.',
  ex4 = 'Volunteering overseas completely changed my perspective on privilege.', ex4_ko = '해외 봉사활동이 특권에 대한 관점을 완전히 바꿔줬어요.',
  ex5 = 'Taking a sabbatical year completely changed my perspective on work.', ex5_ko = '안식년을 가지면서 일에 대한 관점이 완전히 바뀌었어요.'
WHERE id = 's_travel_B2_01';

UPDATE sentences SET
  ex1 = 'The most memorable part of the trip was meeting a local family for dinner.', ex1_ko = '여행에서 가장 기억에 남는 부분은 현지 가족과 저녁을 먹은 것이었어요.',
  ex2 = 'The most memorable part of the trip was watching the sun set over the ruins.', ex2_ko = '여행에서 가장 기억에 남는 부분은 유적지 위로 지는 해를 바라본 것이었어요.',
  ex3 = 'The most memorable part of the trip was accidentally joining a local festival.', ex3_ko = '여행에서 가장 기억에 남는 부분은 우연히 현지 축제에 참여한 것이었어요.',
  ex4 = 'The most memorable part of the trip was taking a night train through the mountains.', ex4_ko = '여행에서 가장 기억에 남는 부분은 산을 가로지르는 야간 기차를 탄 것이었어요.',
  ex5 = 'The most memorable part of the trip was a spontaneous conversation with a stranger on the ferry.', ex5_ko = '여행에서 가장 기억에 남는 부분은 페리에서 낯선 사람과 나눈 즉흥적인 대화였어요.'
WHERE id = 's_travel_B2_02';

UPDATE sentences SET
  ex1 = 'I''d strongly recommend buying your train pass before you arrive.', ex1_ko = '도착하기 전에 기차 패스를 사두는 것을 강력히 추천해요.',
  ex2 = 'I''d strongly recommend learning a few phrases in the local language.', ex2_ko = '현지 언어로 된 표현을 몇 개 배워두는 것을 강력히 추천해요.',
  ex3 = 'I''d strongly recommend avoiding tourist restaurants near major landmarks.', ex3_ko = '주요 관광 명소 근처의 관광객 식당은 피하는 것을 강력히 추천해요.',
  ex4 = 'I''d strongly recommend visiting the market early to avoid the crowds.', ex4_ko = '붐비는 것을 피하려면 시장에 일찍 방문하는 것을 강력히 추천해요.',
  ex5 = 'I''d strongly recommend travelling by overnight train to save on accommodation.', ex5_ko = '숙박비를 아끼려면 야간 기차 여행을 이용하는 것을 강력히 추천해요.'
WHERE id = 's_travel_B2_03';

UPDATE sentences SET
  ex1 = 'What really surprised me was how affordable street food was throughout Southeast Asia.', ex1_ko = '정말 놀라웠던 것은 동남아시아 전역의 길거리 음식이 얼마나 저렴한지였어요.',
  ex2 = 'What really surprised me was how fluent in English most locals were.', ex2_ko = '정말 놀라웠던 것은 현지인 대부분이 영어를 얼마나 유창하게 구사하는지였어요.',
  ex3 = 'What really surprised me was how small the country felt once I started exploring.', ex3_ko = '정말 놀라웠던 것은 탐험을 시작하니 그 나라가 얼마나 작게 느껴지는지였어요.',
  ex4 = 'What really surprised me was how seriously people took their afternoon rest.', ex4_ko = '정말 놀라웠던 것은 사람들이 오후 낮잠을 얼마나 진지하게 여기는지였어요.',
  ex5 = 'What really surprised me was how easily strangers opened their homes to travellers.', ex5_ko = '정말 놀라웠던 것은 낯선 사람들이 여행자들에게 얼마나 쉽게 집을 열어주는지였어요.'
WHERE id = 's_travel_B2_04';

UPDATE sentences SET
  ex1 = 'If I could go back, I''d skip the famous sights and explore the outskirts.', ex1_ko = '다시 간다면 유명한 명소는 건너뛰고 외곽을 탐험할 거예요.',
  ex2 = 'If I could go back, I''d stay for at least two weeks instead of one.', ex2_ko = '다시 간다면 1주일이 아니라 최소 2주는 머물 거예요.',
  ex3 = 'If I could go back, I''d learn more of the language before arriving.', ex3_ko = '다시 간다면 도착하기 전에 언어를 더 배울 거예요.',
  ex4 = 'If I could go back, I''d avoid travelling during the national holiday period.', ex4_ko = '다시 간다면 국경일 기간에는 여행을 피할 거예요.',
  ex5 = 'If I could go back, I''d travel by boat instead of flying between cities.', ex5_ko = '다시 간다면 도시 간 이동을 비행기 대신 배로 할 거예요.'
WHERE id = 's_travel_B2_05';

UPDATE sentences SET
  ex1 = 'The reverse culture shock hit me harder than I expected when I returned home.', ex1_ko = '귀국했을 때 역문화 충격이 예상보다 훨씬 크게 왔어요.',
  ex2 = 'The loneliness of solo travel hit me harder than I expected after the first week.', ex2_ko = '1주일 후 혼자 여행하는 외로움이 예상보다 훨씬 크게 왔어요.',
  ex3 = 'The cost of living hit me harder than I expected in Scandinavian cities.', ex3_ko = '스칸디나비아 도시들의 물가가 예상보다 훨씬 크게 와닿았어요.',
  ex4 = 'The physical demands of the trek hit me harder than I expected on day two.', ex4_ko = '트레킹의 체력적 요구가 이틀째에 예상보다 훨씬 크게 와닿았어요.',
  ex5 = 'The complexity of the visa process hit me harder than I expected.', ex5_ko = '비자 발급 과정이 예상보다 훨씬 복잡했어요.'
WHERE id = 's_travel_B2_06';

UPDATE sentences SET
  ex1 = 'Trying local street food, even just once, opens so many doors.', ex1_ko = '현지 길거리 음식을 한 번만 먹어봐도 정말 많은 것이 열려요.',
  ex2 = 'Joining a local community event, even briefly, opens so many doors.', ex2_ko = '현지 커뮤니티 행사에 잠깐이라도 참여하면 정말 많은 것이 열려요.',
  ex3 = 'Smiling and making eye contact with strangers, even shyly, opens so many doors.', ex3_ko = '낯선 사람에게 쑥스럽게라도 미소 짓고 눈을 마주치면 정말 많은 것이 열려요.',
  ex4 = 'Using public transport instead of taxis, even if slower, opens so many doors.', ex4_ko = '택시 대신 대중교통을 이용하면 느리더라도 정말 많은 것이 열려요.',
  ex5 = 'Staying in a family-run guesthouse, even once, opens so many doors.', ex5_ko = '가족 운영 게스트하우스에 한 번만 묵어봐도 정말 많은 것이 열려요.'
WHERE id = 's_travel_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Language learning, at its best, is not a performance but a form of genuine connection.', ex1_ko = '언어 학습은 그 본질에서 공연이 아니라 진정한 연결의 형태예요.',
  ex2 = 'Tourism, at its best, is not consumption but a form of respectful exchange.', ex2_ko = '관광은 그 본질에서 소비가 아니라 상호 존중하는 교류의 형태예요.',
  ex3 = 'Photography, at its best, is not documentation but a form of active attention.', ex3_ko = '사진은 그 본질에서 기록이 아니라 능동적 주의 집중의 형태예요.',
  ex4 = 'Hospitality, at its best, is not a transaction but a form of radical generosity.', ex4_ko = '환대는 그 본질에서 거래가 아니라 급진적 관대함의 형태예요.',
  ex5 = 'Slow travel, at its best, is not inefficiency but a form of deeper presence.', ex5_ko = '느린 여행은 그 본질에서 비효율이 아니라 더 깊은 현재성의 형태예요.'
WHERE id = 's_travel_C1_01';

UPDATE sentences SET
  ex1 = 'There is a particular kind of disorientation that only first-generation immigrants understand.', ex1_ko = '1세대 이민자들만이 이해하는 특별한 방향 감각 상실이 있어요.',
  ex2 = 'There is a particular kind of grief that only those who relocate frequently understand.', ex2_ko = '자주 이사하는 사람들만이 이해하는 특별한 슬픔이 있어요.',
  ex3 = 'There is a particular kind of joy that only spontaneous travellers understand.', ex3_ko = '즉흥 여행자들만이 이해하는 특별한 기쁨이 있어요.',
  ex4 = 'There is a particular kind of silence that only desert travellers understand.', ex4_ko = '사막 여행자들만이 이해하는 특별한 침묵이 있어요.',
  ex5 = 'There is a particular kind of belonging that only diaspora communities understand.', ex5_ko = '이산 커뮤니티만이 이해하는 특별한 소속감이 있어요.'
WHERE id = 's_travel_C1_02';

UPDATE sentences SET
  ex1 = 'The more languages I learn, the more I realise how little I truly understand about communication.', ex1_ko = '언어를 더 많이 배울수록 소통에 대해 얼마나 모르는지를 더 깨닫게 돼요.',
  ex2 = 'The more countries I visit, the more I realise how little I truly understand about diversity.', ex2_ko = '나라를 더 많이 방문할수록 다양성에 대해 얼마나 모르는지를 더 깨닫게 돼요.',
  ex3 = 'The more history I read, the more I realise how little I truly understand about the present.', ex3_ko = '역사를 더 많이 읽을수록 현재에 대해 얼마나 모르는지를 더 깨닫게 돼요.',
  ex4 = 'The longer I live abroad, the more I realise how little I truly understand about my own country.', ex4_ko = '해외에서 오래 살수록 제 나라에 대해 얼마나 모르는지를 더 깨닫게 돼요.',
  ex5 = 'The deeper I venture off the beaten track, the more I realise how little I truly understand about privilege.', ex5_ko = '외진 곳으로 더 깊이 들어갈수록 특권에 대해 얼마나 모르는지를 더 깨닫게 돼요.'
WHERE id = 's_travel_C1_03';

UPDATE sentences SET
  ex1 = 'I''ve come to believe that the quality of a conversation is determined not by its length, but by how honest you are.', ex1_ko = '대화의 질은 길이가 아니라 얼마나 솔직한지에 달려 있다고 믿게 됐어요.',
  ex2 = 'I''ve come to believe that the quality of a meal is determined not by its price, but by the company you share it with.', ex2_ko = '식사의 질은 가격이 아니라 함께 먹는 사람에 달려 있다고 믿게 됐어요.',
  ex3 = 'I''ve come to believe that the quality of a photograph is determined not by the equipment, but by the moment you capture.', ex3_ko = '사진의 질은 장비가 아니라 포착하는 순간에 달려 있다고 믿게 됐어요.',
  ex4 = 'I''ve come to believe that the quality of a life is determined not by its achievements, but by its relationships.', ex4_ko = '삶의 질은 성취가 아니라 관계에 달려 있다고 믿게 됐어요.',
  ex5 = 'I''ve come to believe that the quality of a culture is determined not by its wealth, but by how it treats strangers.', ex5_ko = '문화의 질은 부가 아니라 낯선 사람을 어떻게 대우하는지에 달려 있다고 믿게 됐어요.'
WHERE id = 's_travel_C1_04';

UPDATE sentences SET
  ex1 = 'What strikes me most about life as an expatriate is the way it complicates your sense of identity.', ex1_ko = '해외 거주자 생활에서 가장 인상적인 것은 정체성 감각을 복잡하게 만드는 방식이에요.',
  ex2 = 'What strikes me most about backpacker culture is the way it democratises exploration.', ex2_ko = '배낭여행 문화에서 가장 인상적인 것은 탐험을 민주화하는 방식이에요.',
  ex3 = 'What strikes me most about solo travel is the way it forces you to be fully present.', ex3_ko = '혼자 여행에서 가장 인상적인 것은 완전히 현재에 집중하게 만드는 방식이에요.',
  ex4 = 'What strikes me most about crossing borders is the way it renders nationality abstract.', ex4_ko = '국경을 넘을 때 가장 인상적인 것은 국적을 추상적으로 만드는 방식이에요.',
  ex5 = 'What strikes me most about travelling in ageing is the way it sharpens appreciation for the ordinary.', ex5_ko = '나이 들어서 여행할 때 가장 인상적인 것은 평범한 것에 대한 감사를 날카롭게 만드는 방식이에요.'
WHERE id = 's_travel_C1_05';

UPDATE sentences SET
  ex1 = 'Having spent three years working remotely, I no longer think of productivity as tied to a desk.', ex1_ko = '3년간 원격 근무를 하고 나서 더 이상 생산성이 책상에 묶여 있다고 생각하지 않아요.',
  ex2 = 'Having visited forty countries, I no longer think of culture as something that can be neatly categorised.', ex2_ko = '40개국을 방문하고 나서 더 이상 문화가 깔끔하게 분류될 수 있다고 생각하지 않아요.',
  ex3 = 'Having lived through a year of lockdown, I no longer think of freedom of movement as something to take for granted.', ex3_ko = '1년간의 봉쇄를 겪고 나서 더 이상 이동의 자유를 당연한 것으로 생각하지 않아요.',
  ex4 = 'Having navigated a foreign healthcare system, I no longer think of language as a mere social courtesy.', ex4_ko = '외국 의료 시스템을 이용해 보고 나서 더 이상 언어를 단순한 사회적 예절로 생각하지 않아요.',
  ex5 = 'Having grown up between two cultures, I no longer think of belonging as something fixed or inherited.', ex5_ko = '두 문화 사이에서 자라고 나서 더 이상 소속감을 고정되거나 물려받는 것으로 생각하지 않아요.'
WHERE id = 's_travel_C1_06';

UPDATE sentences SET
  ex1 = 'The most meaningful relationships are those that survive distance, not proximity.', ex1_ko = '가장 의미 있는 관계는 거리에도 살아남는 관계예요. 근접함이 아니라요.',
  ex2 = 'The most rewarding experiences are those that push your limits, not confirm your comfort.', ex2_ko = '가장 보람 있는 경험은 한계를 밀어붙이는 경험이에요. 편안함을 확인해 주는 것이 아니라요.',
  ex3 = 'The most powerful stories are those that unsettle the reader, not reassure them.', ex3_ko = '가장 강렬한 이야기는 독자를 안심시키는 것이 아니라 흔들어 놓는 이야기예요.',
  ex4 = 'The most honest maps are those that acknowledge uncertainty, not project false certainty.', ex4_ko = '가장 정직한 지도는 거짓 확실성을 투영하는 것이 아니라 불확실성을 인정하는 지도예요.',
  ex5 = 'The most enduring souvenirs are those that carry memory, not price tags.', ex5_ko = '가장 오래가는 기념품은 가격표가 아니라 기억을 담고 있는 것이에요.'
WHERE id = 's_travel_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'To speak another language is to hold a paradox: the more fluent you become, the more you lose of your original self.', ex1_ko = '다른 언어를 말한다는 것은 역설을 안고 있어요. 더 유창해질수록 원래 자아를 더 잃어가요.',
  ex2 = 'To document suffering is to hold a paradox: the closer you look, the more detached you must remain.', ex2_ko = '고통을 기록한다는 것은 역설을 안고 있어요. 더 가까이 볼수록 더 초연해야 해요.',
  ex3 = 'To welcome strangers is to hold a paradox: the more you open your door, the more you risk what is behind it.', ex3_ko = '낯선 사람을 환영한다는 것은 역설을 안고 있어요. 문을 더 열수록 그 뒤에 있는 것이 더 위험해져요.',
  ex4 = 'To photograph beauty is to hold a paradox: the act of capturing a moment can end the moment itself.', ex4_ko = '아름다움을 사진으로 담는다는 것은 역설을 안고 있어요. 순간을 포착하는 행위가 그 순간 자체를 끝낼 수 있어요.',
  ex5 = 'To seek solitude through travel is to hold a paradox: the further you roam, the more present your memories become.', ex5_ko = '여행을 통해 고독을 추구한다는 것은 역설을 안고 있어요. 멀리 떠돌수록 기억이 더 생생해져요.'
WHERE id = 's_travel_C2_01';

UPDATE sentences SET
  ex1 = 'The notion that education eliminates prejudice is complicated by the reality that it can also reinforce it.', ex1_ko = '교육이 편견을 없앤다는 관념은 교육이 편견을 강화할 수도 있다는 현실에 의해 복잡해져요.',
  ex2 = 'The notion that technology connects people is complicated by the reality that it can also deepen division.', ex2_ko = '기술이 사람들을 연결한다는 관념은 기술이 분열을 심화할 수도 있다는 현실에 의해 복잡해져요.',
  ex3 = 'The notion that heritage tourism preserves culture is complicated by the reality that it can also commodify it.', ex3_ko = '문화유산 관광이 문화를 보존한다는 관념은 그것이 문화를 상품화할 수도 있다는 현실에 의해 복잡해져요.',
  ex4 = 'The notion that globalisation levels the playing field is complicated by the reality that it can also export inequality.', ex4_ko = '세계화가 경쟁의 장을 평등하게 만든다는 관념은 그것이 불평등을 수출할 수도 있다는 현실에 의해 복잡해져요.',
  ex5 = 'The notion that open borders promote peace is complicated by the reality that it can also destabilise communities.', ex5_ko = '개방된 국경이 평화를 촉진한다는 관념은 그것이 공동체를 불안정하게 만들 수도 있다는 현실에 의해 복잡해져요.'
WHERE id = 's_travel_C2_02';

UPDATE sentences SET
  ex1 = 'Authentic storytelling demands vulnerability on both sides, not merely the narrator''s craft.', ex1_ko = '진정한 이야기 나누기는 화자의 기술만이 아니라 양측의 취약함을 요구해요.',
  ex2 = 'Authentic scientific inquiry demands scepticism on both sides, not merely the researcher''s method.', ex2_ko = '진정한 과학적 탐구는 연구자의 방법만이 아니라 양측의 회의주의를 요구해요.',
  ex3 = 'Authentic diplomacy demands honesty on both sides, not merely the negotiator''s tact.', ex3_ko = '진정한 외교는 협상가의 재치만이 아니라 양측의 솔직함을 요구해요.',
  ex4 = 'Authentic journalism demands trust on both sides, not merely the reporter''s objectivity.', ex4_ko = '진정한 저널리즘은 기자의 객관성만이 아니라 양측의 신뢰를 요구해요.',
  ex5 = 'Authentic education demands engagement on both sides, not merely the teacher''s knowledge.', ex5_ko = '진정한 교육은 교사의 지식만이 아니라 양측의 참여를 요구해요.'
WHERE id = 's_travel_C2_03';

UPDATE sentences SET
  ex1 = 'What separates a conversation from an interview is not the questions asked but the quality of listening involved.', ex1_ko = '대화와 인터뷰를 구분하는 것은 묻는 질문이 아니라 듣기의 질이에요.',
  ex2 = 'What separates an expedition from a holiday is not the difficulty but the degree of intention involved.', ex2_ko = '탐험과 휴가를 구분하는 것은 어려움이 아니라 관련된 의도의 정도예요.',
  ex3 = 'What separates a souvenir from an artefact is not the material but the degree of meaning attached.', ex3_ko = '기념품과 유물을 구분하는 것은 재료가 아니라 부여된 의미의 정도예요.',
  ex4 = 'What separates a tourist from a traveller is not the budget but the degree of openness involved.', ex4_ko = '관광객과 여행자를 구분하는 것은 예산이 아니라 관련된 개방성의 정도예요.',
  ex5 = 'What separates a guide from a companion is not the knowledge but the degree of genuine curiosity involved.', ex5_ko = '가이드와 동반자를 구분하는 것은 지식이 아니라 관련된 진정한 호기심의 정도예요.'
WHERE id = 's_travel_C2_04';

UPDATE sentences SET
  ex1 = 'There is an inherent ethical tension between the desire to document war zones and the risk of aestheticising violence.', ex1_ko = '분쟁 지역을 기록하고자 하는 욕구와 폭력을 미화할 위험 사이에는 내재적 윤리적 긴장이 있어요.',
  ex2 = 'There is an inherent ethical tension between wildlife photography and the risk of disrupting natural behaviour.', ex2_ko = '야생 동물 사진과 자연적 행동을 방해할 위험 사이에는 내재적 윤리적 긴장이 있어요.',
  ex3 = 'There is an inherent ethical tension between the desire to preserve culture and the risk of freezing it in time.', ex3_ko = '문화를 보존하고자 하는 욕구와 그것을 시간 속에 동결시킬 위험 사이에는 내재적 윤리적 긴장이 있어요.',
  ex4 = 'There is an inherent ethical tension between promoting responsible tourism and the risk of gatekeeping access to it.', ex4_ko = '책임감 있는 관광을 장려하는 것과 그 접근을 통제할 위험 사이에는 내재적 윤리적 긴장이 있어요.',
  ex5 = 'There is an inherent ethical tension between sharing travel experiences on social media and the risk of commodifying place.', ex5_ko = '소셜 미디어에 여행 경험을 공유하는 것과 장소를 상품화할 위험 사이에는 내재적 윤리적 긴장이 있어요.'
WHERE id = 's_travel_C2_05';

UPDATE sentences SET
  ex1 = 'The meditative tradition — from Buddhist monks to Sufi mystics — equates stillness with enlightenment.', ex1_ko = '불교 수도승부터 수피 신비주의자까지 명상 전통은 고요함을 깨달음과 동일시해요.',
  ex2 = 'The empirical tradition — from Francis Bacon to modern scientists — equates observation with knowledge.', ex2_ko = '프랜시스 베이컨부터 현대 과학자까지 경험주의 전통은 관찰을 지식과 동일시해요.',
  ex3 = 'The Romantic tradition — from Wordsworth to Thoreau — equates nature with moral renewal.', ex3_ko = '워즈워스부터 소로까지 낭만주의 전통은 자연을 도덕적 갱신과 동일시해요.',
  ex4 = 'The rhetorical tradition — from Cicero to modern orators — equates eloquence with civic virtue.', ex4_ko = '키케로부터 현대 연설가까지 수사학 전통은 웅변을 시민 덕목과 동일시해요.',
  ex5 = 'The Confucian tradition — from early scholars to contemporary educators — equates learning with moral cultivation.', ex5_ko = '초기 학자부터 현대 교육자까지 유교 전통은 배움을 도덕적 수양과 동일시해요.'
WHERE id = 's_travel_C2_06';

UPDATE sentences SET
  ex1 = 'To listen is not merely to hear; it is to suspend one''s own narrative long enough for another''s to emerge.', ex1_ko = '듣는다는 것은 단순히 소리를 듣는 것이 아니에요. 타인의 이야기가 나올 수 있도록 자신의 서사를 충분히 내려놓는 것이에요.',
  ex2 = 'To translate is not merely to swap words; it is to inhabit a space between two worlds long enough for meaning to cross.', ex2_ko = '번역한다는 것은 단순히 단어를 교환하는 것이 아니에요. 의미가 건너갈 수 있도록 두 세계 사이의 공간에 충분히 머무는 것이에요.',
  ex3 = 'To lead is not merely to decide; it is to hold the weight of others'' uncertainty long enough to transform it.', ex3_ko = '이끈다는 것은 단순히 결정하는 것이 아니에요. 타인의 불확실성의 무게를 변환시킬 수 있을 만큼 충분히 짊어지는 것이에요.',
  ex4 = 'To remember is not merely to retrieve; it is to reconstruct the past long enough to illuminate the present.', ex4_ko = '기억한다는 것은 단순히 떠올리는 것이 아니에요. 현재를 밝힐 수 있을 만큼 충분히 과거를 재구성하는 것이에요.',
  ex5 = 'To teach is not merely to inform; it is to remain curious long enough to model the value of not knowing.', ex5_ko = '가르친다는 것은 단순히 정보를 전달하는 것이 아니에요. 모름의 가치를 보여줄 수 있을 만큼 충분히 호기심을 유지하는 것이에요.'
WHERE id = 's_travel_C2_07';
