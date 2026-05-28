-- EngCat — Home topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns: A1×7, A2×7, B1×7, B2×7, C1×7, C2×7)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I live in a small house.', ex1_ko = '작은 집에 살아요.',
  ex2 = 'I live in a studio downtown.', ex2_ko = '시내 스튜디오에 살아요.',
  ex3 = 'I live in a flat near the park.', ex3_ko = '공원 근처 아파트에 살아요.',
  ex4 = 'I live in a quiet neighborhood.', ex4_ko = '조용한 동네에 살아요.',
  ex5 = 'I live in a shared house.', ex5_ko = '셰어하우스에 살아요.'
WHERE id = 's_home_A1_01';

UPDATE sentences SET
  ex1 = 'My house has a small garden.', ex1_ko = '우리 집에는 작은 정원이 있어요.',
  ex2 = 'My house has two bathrooms.', ex2_ko = '우리 집에는 화장실이 두 개 있어요.',
  ex3 = 'My house has a large kitchen.', ex3_ko = '우리 집에는 큰 주방이 있어요.',
  ex4 = 'My house has wooden floors.', ex4_ko = '우리 집에는 나무 바닥이 있어요.',
  ex5 = 'My house has a balcony.', ex5_ko = '우리 집에는 발코니가 있어요.'
WHERE id = 's_home_A1_02';

UPDATE sentences SET
  ex1 = 'Where is the kitchen, please?', ex1_ko = '주방이 어디에 있나요?',
  ex2 = 'Where is the laundry room?', ex2_ko = '세탁실이 어디에 있나요?',
  ex3 = 'Where is the closet?', ex3_ko = '옷장이 어디에 있나요?',
  ex4 = 'Where is the front door?', ex4_ko = '현관이 어디에 있나요?',
  ex5 = 'Where is the light switch?', ex5_ko = '전등 스위치가 어디에 있나요?'
WHERE id = 's_home_A1_03';

UPDATE sentences SET
  ex1 = 'I eat in the kitchen.', ex1_ko = '주방에서 먹어요.',
  ex2 = 'I work in the study.', ex2_ko = '서재에서 일해요.',
  ex3 = 'I relax in the living room.', ex3_ko = '거실에서 쉬어요.',
  ex4 = 'I read in the bedroom.', ex4_ko = '침실에서 책 읽어요.',
  ex5 = 'I cook in the kitchen.', ex5_ko = '주방에서 요리해요.'
WHERE id = 's_home_A1_04';

UPDATE sentences SET
  ex1 = 'The bathroom is next to my bedroom.', ex1_ko = '화장실은 제 침실 옆에 있어요.',
  ex2 = 'The garage is next to the house.', ex2_ko = '차고는 집 옆에 있어요.',
  ex3 = 'The closet is next to the bed.', ex3_ko = '옷장은 침대 옆에 있어요.',
  ex4 = 'The dining room is next to the kitchen.', ex4_ko = '식당은 주방 옆에 있어요.',
  ex5 = 'The garden is next to the patio.', ex5_ko = '정원은 테라스 옆에 있어요.'
WHERE id = 's_home_A1_05';

UPDATE sentences SET
  ex1 = 'I clean the house every morning.', ex1_ko = '저는 매일 아침 집을 청소해요.',
  ex2 = 'I water the plants every morning.', ex2_ko = '저는 매일 아침 화초에 물을 줘요.',
  ex3 = 'I make the bed every morning.', ex3_ko = '저는 매일 아침 침대를 정리해요.',
  ex4 = 'I check the mail every morning.', ex4_ko = '저는 매일 아침 우편함을 확인해요.',
  ex5 = 'I drink coffee every morning.', ex5_ko = '저는 매일 아침 커피를 마셔요.'
WHERE id = 's_home_A1_06';

UPDATE sentences SET
  ex1 = 'There is a sofa in the living room.', ex1_ko = '거실에 소파가 있어요.',
  ex2 = 'There is a desk in my room.', ex2_ko = '제 방에 책상이 있어요.',
  ex3 = 'There is a mirror in the hallway.', ex3_ko = '복도에 거울이 있어요.',
  ex4 = 'There is a fridge in the kitchen.', ex4_ko = '주방에 냉장고가 있어요.',
  ex5 = 'There is a lamp on the table.', ex5_ko = '테이블에 램프가 있어요.'
WHERE id = 's_home_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'My room is quite dark but very quiet.', ex1_ko = '제 방은 꽤 어둡지만 아주 조용해요.',
  ex2 = 'My kitchen is quite old but very functional.', ex2_ko = '제 주방은 꽤 오래됐지만 아주 기능적이에요.',
  ex3 = 'My garden is quite tiny but very pretty.', ex3_ko = '제 정원은 꽤 작지만 아주 예뻐요.',
  ex4 = 'My flat is quite simple but very comfortable.', ex4_ko = '제 아파트는 꽤 단순하지만 아주 편해요.',
  ex5 = 'My neighborhood is quite far but very peaceful.', ex5_ko = '제 동네는 꽤 멀지만 아주 평화로워요.'
WHERE id = 's_home_A2_01';

UPDATE sentences SET
  ex1 = 'How much is the electricity bill?', ex1_ko = '전기 요금이 얼마예요?',
  ex2 = 'How much is the maintenance fee?', ex2_ko = '관리비가 얼마예요?',
  ex3 = 'How much is the water bill per month?', ex3_ko = '월 수도 요금이 얼마예요?',
  ex4 = 'How much is the deposit for the flat?', ex4_ko = '아파트 보증금이 얼마예요?',
  ex5 = 'How much is the parking fee?', ex5_ko = '주차료가 얼마예요?'
WHERE id = 's_home_A2_02';

UPDATE sentences SET
  ex1 = 'The tenant is responsible for utility bills.', ex1_ko = '세입자가 공과금에 대한 책임이 있어요.',
  ex2 = 'The owner is responsible for the property tax.', ex2_ko = '소유자가 재산세에 대한 책임이 있어요.',
  ex3 = 'You are responsible for keeping the common area clean.', ex3_ko = '공용 구역을 깨끗이 유지하는 책임은 당신에게 있어요.',
  ex4 = 'The management company is responsible for security.', ex4_ko = '관리 회사가 보안에 대한 책임이 있어요.',
  ex5 = 'Each resident is responsible for their own trash.', ex5_ko = '각 거주자가 자신의 쓰레기에 대한 책임이 있어요.'
WHERE id = 's_home_A2_03';

UPDATE sentences SET
  ex1 = 'We need to pack everything before moving out.', ex1_ko = '이사 나가기 전에 모든 걸 짐 싸야 해요.',
  ex2 = 'Please return the keys before moving out.', ex2_ko = '이사 나가기 전에 열쇠를 반납해 주세요.',
  ex3 = 'Take photos of the place before moving out.', ex3_ko = '이사 나가기 전에 집 사진을 찍어 두세요.',
  ex4 = 'I want to host one party before moving out.', ex4_ko = '이사 나가기 전에 파티 한 번 열고 싶어요.',
  ex5 = 'You should give notice before moving out.', ex5_ko = '이사 나가기 전에 통보해야 해요.'
WHERE id = 's_home_A2_04';

UPDATE sentences SET
  ex1 = 'Could you please close the window?', ex1_ko = '창문을 닫아 주실 수 있나요?',
  ex2 = 'Could you please fix the leaking tap?', ex2_ko = '새는 수도꼭지를 고쳐 주실 수 있나요?',
  ex3 = 'Could you please replace the light bulb?', ex3_ko = '전구를 교체해 주실 수 있나요?',
  ex4 = 'Could you please send me the contract?', ex4_ko = '계약서를 보내 주실 수 있나요?',
  ex5 = 'Could you please call a plumber?', ex5_ko = '배관공을 불러 주실 수 있나요?'
WHERE id = 's_home_A2_05';

UPDATE sentences SET
  ex1 = 'The shower isn''t working properly.', ex1_ko = '샤워기가 제대로 작동하지 않아요.',
  ex2 = 'The washing machine isn''t working properly.', ex2_ko = '세탁기가 제대로 작동하지 않아요.',
  ex3 = 'The doorbell isn''t working properly.', ex3_ko = '초인종이 제대로 작동하지 않아요.',
  ex4 = 'The oven isn''t working properly.', ex4_ko = '오븐이 제대로 작동하지 않아요.',
  ex5 = 'The air conditioner isn''t working properly.', ex5_ko = '에어컨이 제대로 작동하지 않아요.'
WHERE id = 's_home_A2_06';

UPDATE sentences SET
  ex1 = 'I share a kitchen with my roommates.', ex1_ko = '룸메이트들과 함께 주방을 써요.',
  ex2 = 'I share a bathroom with my sister.', ex2_ko = '언니와 함께 화장실을 써요.',
  ex3 = 'I share the laundry room with five neighbors.', ex3_ko = '다섯 명의 이웃과 함께 세탁실을 써요.',
  ex4 = 'I share the rent with a friend.', ex4_ko = '친구와 함께 임대료를 나눠요.',
  ex5 = 'I share the garage with the upstairs tenant.', ex5_ko = '위층 세입자와 함께 차고를 써요.'
WHERE id = 's_home_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'We''d like to extend our stay if possible.', ex1_ko = '가능하다면 체류를 연장하고 싶어요.',
  ex2 = 'I''d like to schedule a viewing if possible.', ex2_ko = '가능하다면 집을 보러 갈 약속을 잡고 싶어요.',
  ex3 = 'We''d like to keep our pet here if possible.', ex3_ko = '가능하다면 반려동물을 여기서 키우고 싶어요.',
  ex4 = 'I''d like to start the lease in March if possible.', ex4_ko = '가능하다면 3월부터 계약을 시작하고 싶어요.',
  ex5 = 'We''d like to negotiate the rent if possible.', ex5_ko = '가능하다면 임대료를 협상하고 싶어요.'
WHERE id = 's_home_B1_01';

UPDATE sentences SET
  ex1 = 'Are utilities included in the maintenance fee?', ex1_ko = '공과금이 관리비에 포함되어 있나요?',
  ex2 = 'Is wifi included in the rent?', ex2_ko = '와이파이가 임대료에 포함되어 있나요?',
  ex3 = 'Are appliances included in the lease?', ex3_ko = '가전제품이 임대 계약에 포함되어 있나요?',
  ex4 = 'Is parking included in the agreement?', ex4_ko = '주차가 계약에 포함되어 있나요?',
  ex5 = 'Are cleaning services included in the contract?', ex5_ko = '청소 서비스가 계약에 포함되어 있나요?'
WHERE id = 's_home_B1_02';

UPDATE sentences SET
  ex1 = 'The agency agreed to refund the application fee.', ex1_ko = '중개사가 신청 수수료를 환불하기로 했어요.',
  ex2 = 'The landlord agreed to refund the cleaning deposit.', ex2_ko = '집주인이 청소 보증금을 환불하기로 했어요.',
  ex3 = 'The company agreed to refund the moving costs.', ex3_ko = '회사가 이사 비용을 환불하기로 했어요.',
  ex4 = 'The seller agreed to refund the broken appliance cost.', ex4_ko = '판매자가 고장난 가전 비용을 환불하기로 했어요.',
  ex5 = 'The agent agreed to refund the holding fee.', ex5_ko = '에이전트가 예약금을 환불하기로 했어요.'
WHERE id = 's_home_B1_03';

UPDATE sentences SET
  ex1 = 'We''re thinking of having the bathroom redesigned.', ex1_ko = '욕실을 다시 디자인하는 것을 고려하고 있어요.',
  ex2 = 'We''re thinking of having the floors refinished.', ex2_ko = '바닥을 다시 마감하는 것을 고려하고 있어요.',
  ex3 = 'We''re thinking of having the walls repainted.', ex3_ko = '벽을 다시 페인트칠하는 것을 고려하고 있어요.',
  ex4 = 'We''re thinking of having the roof replaced.', ex4_ko = '지붕을 교체하는 것을 고려하고 있어요.',
  ex5 = 'We''re thinking of having the windows insulated.', ex5_ko = '창문에 단열재를 시공하는 것을 고려하고 있어요.'
WHERE id = 's_home_B1_04';

UPDATE sentences SET
  ex1 = 'The lease covers minor repairs and gardening.', ex1_ko = '임대 계약에 소규모 수리와 정원 관리가 포함돼요.',
  ex2 = 'The fee covers building insurance and security.', ex2_ko = '관리비에 건물 보험과 보안이 포함돼요.',
  ex3 = 'The service covers weekly cleaning and trash removal.', ex3_ko = '서비스에 주간 청소와 쓰레기 수거가 포함돼요.',
  ex4 = 'The contract covers all utilities except internet.', ex4_ko = '계약에 인터넷을 제외한 모든 공과금이 포함돼요.',
  ex5 = 'The insurance covers fire and theft damages.', ex5_ko = '보험에 화재와 도난 손해가 포함돼요.'
WHERE id = 's_home_B1_05';

UPDATE sentences SET
  ex1 = 'You need to give two weeks'' notice before moving out.', ex1_ko = '이사 나가기 전에 2주 전 통보를 해야 해요.',
  ex2 = 'I had to give one month''s notice to terminate the contract.', ex2_ko = '계약 해지 위해 한 달 전 통보를 해야 했어요.',
  ex3 = 'Tenants must give three months'' notice for early termination.', ex3_ko = '조기 해지 시 세입자는 3개월 전 통보를 해야 해요.',
  ex4 = 'The landlord gave us six weeks'' notice before raising rent.', ex4_ko = '집주인이 임대료 인상 전 6주 전 통보를 줬어요.',
  ex5 = 'We need to give one month''s notice if we want to renew.', ex5_ko = '재계약 원하면 한 달 전 통보를 해야 해요.'
WHERE id = 's_home_B1_06';

UPDATE sentences SET
  ex1 = 'The apartment comes with all major appliances.', ex1_ko = '이 아파트에는 주요 가전제품이 모두 포함돼요.',
  ex2 = 'The house comes with a private garden.', ex2_ko = '이 집에는 개인 정원이 포함돼요.',
  ex3 = 'The flat comes with high-speed broadband.', ex3_ko = '이 아파트에는 초고속 인터넷이 포함돼요.',
  ex4 = 'The studio comes with weekly housekeeping.', ex4_ko = '이 스튜디오에는 주간 청소 서비스가 포함돼요.',
  ex5 = 'The property comes with two parking spaces.', ex5_ko = '이 부동산에는 주차 공간 두 개가 포함돼요.'
WHERE id = 's_home_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The kitchen has been fitted to a high standard.', ex1_ko = '주방은 고급 수준으로 시공됐어요.',
  ex2 = 'The bathroom was refurbished to a high standard last year.', ex2_ko = '욕실은 작년에 고급 수준으로 리노베이션됐어요.',
  ex3 = 'The entire flat has been redecorated to a high standard.', ex3_ko = '아파트 전체가 고급 수준으로 재단장됐어요.',
  ex4 = 'The building was constructed to a high standard.', ex4_ko = '건물은 고급 수준으로 시공됐어요.',
  ex5 = 'The flooring was installed to a high standard.', ex5_ko = '바닥재가 고급 수준으로 시공됐어요.'
WHERE id = 's_home_B2_01';

UPDATE sentences SET
  ex1 = 'The design blends traditional and modern elements.', ex1_ko = '디자인이 전통적 요소와 현대적 요소를 혼합해요.',
  ex2 = 'The architecture blends Scandinavian and Japanese aesthetics.', ex2_ko = '건축이 스칸디나비아 미학과 일본 미학을 혼합해요.',
  ex3 = 'The renovation blends rustic and contemporary touches.', ex3_ko = '리노베이션이 시골풍과 현대적 감각을 혼합해요.',
  ex4 = 'The decor blends warm tones and natural materials.', ex4_ko = '인테리어가 따뜻한 톤과 자연 소재를 혼합해요.',
  ex5 = 'The layout blends open-plan and intimate spaces.', ex5_ko = '레이아웃이 개방형 공간과 아늑한 공간을 혼합해요.'
WHERE id = 's_home_B2_02';

UPDATE sentences SET
  ex1 = 'We''re hoping to get an early move-in date.', ex1_ko = '이른 입주일을 받고 싶어요.',
  ex2 = 'We''re hoping to get a rent reduction for the broken heater.', ex2_ko = '고장난 난방기 때문에 임대료 인하를 받고 싶어요.',
  ex3 = 'We''re hoping to get permission for a small renovation.', ex3_ko = '소규모 리노베이션 허가를 받고 싶어요.',
  ex4 = 'We''re hoping to get our deposit back this month.', ex4_ko = '이번 달에 보증금을 돌려받고 싶어요.',
  ex5 = 'We''re hoping to get the contract signed by Friday.', ex5_ko = '금요일까지 계약을 체결받고 싶어요.'
WHERE id = 's_home_B2_03';

UPDATE sentences SET
  ex1 = 'The asking price sits at around five hundred thousand.', ex1_ko = '호가는 약 50만이에요.',
  ex2 = 'The monthly rent sits at around two thousand euros.', ex2_ko = '월 임대료는 약 2천 유로예요.',
  ex3 = 'The property tax sits at around three percent annually.', ex3_ko = '재산세는 연 약 3%예요.',
  ex4 = 'The maintenance fee sits at around two hundred a month.', ex4_ko = '관리비는 월 약 200이에요.',
  ex5 = 'The renovation budget sits at around fifty thousand.', ex5_ko = '리노베이션 예산은 약 5만이에요.'
WHERE id = 's_home_B2_04';

UPDATE sentences SET
  ex1 = 'We decided to invest in solar panels to reduce electricity costs.', ex1_ko = '전기 비용을 줄이기 위해 태양광 패널에 투자하기로 했어요.',
  ex2 = 'We decided to invest in double glazing for better insulation.', ex2_ko = '더 나은 단열을 위해 이중창에 투자하기로 했어요.',
  ex3 = 'We decided to invest in a smart heating system.', ex3_ko = '스마트 난방 시스템에 투자하기로 했어요.',
  ex4 = 'We decided to invest in quality kitchen appliances.', ex4_ko = '고품질 주방 가전제품에 투자하기로 했어요.',
  ex5 = 'We decided to invest in water-saving fixtures throughout.', ex5_ko = '전체적으로 절수 설비에 투자하기로 했어요.'
WHERE id = 's_home_B2_05';

UPDATE sentences SET
  ex1 = 'This neighborhood is ideal for young families.', ex1_ko = '이 동네는 젊은 가족에게 이상적이에요.',
  ex2 = 'The flat is ideal for working professionals.', ex2_ko = '이 아파트는 직장인들에게 이상적이에요.',
  ex3 = 'The location is ideal for university students.', ex3_ko = '이 위치는 대학생들에게 이상적이에요.',
  ex4 = 'The house is ideal for those seeking peace and quiet.', ex4_ko = '이 집은 평화와 조용함을 찾는 사람들에게 이상적이에요.',
  ex5 = 'The community is ideal for retirees.', ex5_ko = '이 단지는 은퇴자들에게 이상적이에요.'
WHERE id = 's_home_B2_06';

UPDATE sentences SET
  ex1 = 'There is a clause preventing any pets in the building.', ex1_ko = '건물 내 반려동물 사육을 금지하는 조항이 있어요.',
  ex2 = 'There is a rule preventing short-term rentals.', ex2_ko = '단기 임대를 금지하는 규정이 있어요.',
  ex3 = 'There is a covenant preventing commercial use of the property.', ex3_ko = '이 부동산의 상업적 사용을 금지하는 약정이 있어요.',
  ex4 = 'There is a regulation preventing exterior modifications.', ex4_ko = '외부 변경을 금지하는 규정이 있어요.',
  ex5 = 'There is a policy preventing smoking on the premises.', ex5_ko = '건물 내 흡연을 금지하는 정책이 있어요.'
WHERE id = 's_home_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Our advisors urged us to conduct full due diligence on the title deeds.', ex1_ko = '저희 자문단이 등기 권리증에 대해 전면 실사를 진행하라고 권고했어요.',
  ex2 = 'The buyer must conduct full due diligence before completion.', ex2_ko = '매수인은 거래 완료 전 전면 실사를 진행해야 해요.',
  ex3 = 'We were advised to conduct full due diligence on the property history.', ex3_ko = '부동산 이력에 대한 전면 실사를 진행하라는 조언을 받았어요.',
  ex4 = 'It is prudent to conduct full due diligence on any structural issues.', ex4_ko = '구조적 문제에 대한 전면 실사를 진행하는 것이 신중한 처사예요.',
  ex5 = 'The bank insisted we conduct full due diligence on the seller.', ex5_ko = '은행은 매도인에 대한 전면 실사 진행을 요구했어요.'
WHERE id = 's_home_C1_01';

UPDATE sentences SET
  ex1 = 'The deed contains a clause that prohibits any structural alterations.', ex1_ko = '증서에는 구조 변경을 금지하는 조항이 포함돼 있어요.',
  ex2 = 'The contract contains a clause that prohibits transferring the lease.', ex2_ko = '계약에는 임대권 양도를 금지하는 조항이 포함돼 있어요.',
  ex3 = 'The lease contains a covenant that prohibits keeping livestock.', ex3_ko = '임대 계약에는 가축 사육을 금지하는 약정이 포함돼 있어요.',
  ex4 = 'The agreement contains a provision that prohibits subdivision of the land.', ex4_ko = '계약에는 토지 분할을 금지하는 조항이 포함돼 있어요.',
  ex5 = 'The trust contains a clause that prohibits sale without trustee consent.', ex5_ko = '신탁에는 수탁자 동의 없는 매각을 금지하는 조항이 포함돼 있어요.'
WHERE id = 's_home_C1_02';

UPDATE sentences SET
  ex1 = 'We submitted a claim for unreturned deposit at the end of the tenancy.', ex1_ko = '임차 종료 시 미반환 보증금에 대한 청구를 제출했어요.',
  ex2 = 'The landlord submitted a claim for damages to the property.', ex2_ko = '집주인이 부동산 손해에 대한 청구를 제출했어요.',
  ex3 = 'They submitted a claim for unpaid utility bills.', ex3_ko = '그들이 미납 공과금에 대한 청구를 제출했어요.',
  ex4 = 'The tenants submitted a claim for breach of warranty of habitability.', ex4_ko = '세입자들이 거주 적합성 보증 위반에 대한 청구를 제출했어요.',
  ex5 = 'We submitted a claim for compensation regarding the flooding.', ex5_ko = '저희가 침수와 관련한 보상 청구를 제출했어요.'
WHERE id = 's_home_C1_03';

UPDATE sentences SET
  ex1 = 'The tribunal ruled in favour of the homeowner on the boundary dispute.', ex1_ko = '재판부가 경계 분쟁에서 주택 소유자에게 유리한 판결을 내렸어요.',
  ex2 = 'The court ruled in favour of the tenant regarding unfair eviction.', ex2_ko = '법원이 부당 퇴거 문제에서 세입자에게 유리한 판결을 내렸어요.',
  ex3 = 'The arbitrator ruled in favour of the developer in the dispute.', ex3_ko = '중재인이 분쟁에서 개발업체에게 유리한 판결을 내렸어요.',
  ex4 = 'The judge ruled in favour of the homeowners'' association.', ex4_ko = '판사가 주택소유자협회에게 유리한 판결을 내렸어요.',
  ex5 = 'The panel ruled in favour of the leaseholder on the service charge.', ex5_ko = '위원회가 관리비 문제에서 임차권자에게 유리한 판결을 내렸어요.'
WHERE id = 's_home_C1_04';

UPDATE sentences SET
  ex1 = 'A right of way was granted to the neighboring landowner.', ex1_ko = '인접 토지 소유자에게 통행권이 부여됐어요.',
  ex2 = 'Planning permission was granted to the developer last month.', ex2_ko = '지난달 개발업체에게 개발 허가가 부여됐어요.',
  ex3 = 'A leasehold extension was granted to the long-term tenant.', ex3_ko = '장기 세입자에게 임차권 연장이 부여됐어요.',
  ex4 = 'An exclusive use license was granted to the commercial occupier.', ex4_ko = '상업 점유자에게 독점 사용권이 부여됐어요.',
  ex5 = 'A discount was granted to the buyer for the structural issues.', ex5_ko = '구조적 문제로 인해 매수인에게 할인이 부여됐어요.'
WHERE id = 's_home_C1_05';

UPDATE sentences SET
  ex1 = 'The property is subject to a heritage protection order.', ex1_ko = '이 부동산은 문화재 보호 명령의 적용을 받아요.',
  ex2 = 'The transaction is subject to the buyer''s mortgage approval.', ex2_ko = '이 거래는 매수인의 모기지 승인의 적용을 받아요.',
  ex3 = 'The lease is subject to annual rent reviews.', ex3_ko = '임대 계약은 연례 임대료 재검토의 적용을 받아요.',
  ex4 = 'The sale is subject to satisfactory survey results.', ex4_ko = '이 매매는 만족스러운 측량 결과의 적용을 받아요.',
  ex5 = 'The land is subject to environmental protection regulations.', ex5_ko = '이 토지는 환경 보호 규제의 적용을 받아요.'
WHERE id = 's_home_C1_06';

UPDATE sentences SET
  ex1 = 'Failure to disclose a structural defect may constitute misrepresentation.', ex1_ko = '구조적 결함을 공개하지 않으면 허위 진술에 해당할 수 있어요.',
  ex2 = 'Such conduct may constitute a material breach of the agreement.', ex2_ko = '그런 행위는 계약의 중대한 위반에 해당할 수 있어요.',
  ex3 = 'Unauthorized alterations may constitute grounds for termination.', ex3_ko = '무단 변경은 해지 사유에 해당할 수 있어요.',
  ex4 = 'Persistent noise may constitute a nuisance under the regulations.', ex4_ko = '지속적인 소음은 규제상 방해 행위에 해당할 수 있어요.',
  ex5 = 'Withholding rent without justification may constitute default.', ex5_ko = '정당한 사유 없이 임대료를 보류하면 채무 불이행에 해당할 수 있어요.'
WHERE id = 's_home_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The land survey revealed a significant discrepancy in the boundary records.', ex1_ko = '토지 측량 결과 경계 기록에서 상당한 불일치가 밝혀졌어요.',
  ex2 = 'The inspection revealed a significant infestation in the basement.', ex2_ko = '점검 결과 지하에서 상당한 해충 발생이 밝혀졌어요.',
  ex3 = 'The audit revealed a significant shortfall in the service charge fund.', ex3_ko = '감사 결과 관리비 기금에서 상당한 부족이 밝혀졌어요.',
  ex4 = 'The structural report revealed a significant settlement under the foundations.', ex4_ko = '구조 보고서가 기초 아래의 상당한 침하를 밝혀냈어요.',
  ex5 = 'The valuation revealed a significant deviation from the asking price.', ex5_ko = '감정 결과 호가에서 상당한 편차가 밝혀졌어요.'
WHERE id = 's_home_C2_01';

UPDATE sentences SET
  ex1 = 'The lender exercised its right to repossession after default.', ex1_ko = '대출 기관이 채무 불이행 후 재취득권을 행사했어요.',
  ex2 = 'The freeholder exercised its right to forfeiture under the lease.', ex2_ko = '자유 토지권자가 임대 계약 하 권리 상실권을 행사했어요.',
  ex3 = 'The trustee exercised its right to sell the encumbered property.', ex3_ko = '수탁자가 담보 설정된 부동산을 매각할 권리를 행사했어요.',
  ex4 = 'The local authority exercised its right to compulsory purchase.', ex4_ko = '지방 당국이 강제 수용권을 행사했어요.',
  ex5 = 'The developer exercised its right to terminate the option agreement.', ex5_ko = '개발업체가 옵션 계약 해지권을 행사했어요.'
WHERE id = 's_home_C2_02';

UPDATE sentences SET
  ex1 = 'The court implied an easement as a necessity arising from the partition.', ex1_ko = '법원이 분할에서 발생하는 필요성으로서 지역권을 묵시적으로 인정했어요.',
  ex2 = 'The judge implied a duty as a continuing obligation arising from the conveyance.', ex2_ko = '판사가 양도에서 발생하는 지속적 의무로서 책임을 묵시적으로 인정했어요.',
  ex3 = 'The tribunal implied a right of access as a quasi-easement arising from the prior use.', ex3_ko = '재판부가 이전 사용에서 발생하는 준지역권으로서 접근권을 묵시적으로 인정했어요.',
  ex4 = 'The court implied a covenant as a restriction arising from the original grant.', ex4_ko = '법원이 원래 부여에서 발생하는 제한으로서 약정을 묵시적으로 인정했어요.',
  ex5 = 'The arbitrator implied a term as an obligation arising from custom and practice.', ex5_ko = '중재인이 관습과 관행에서 발생하는 의무로서 조항을 묵시적으로 인정했어요.'
WHERE id = 's_home_C2_03';

UPDATE sentences SET
  ex1 = 'Under the doctrine of constructive notice, the buyer was deemed aware of the defect.', ex1_ko = '추정적 통지 원칙에 따라 매수인은 결함을 알고 있었던 것으로 간주됐어요.',
  ex2 = 'Under the doctrine of part performance, the oral agreement was upheld.', ex2_ko = '부분 이행 원칙에 따라 구두 계약이 인정됐어요.',
  ex3 = 'Under the doctrine of merger, the lesser interest was extinguished.', ex3_ko = '병합 원칙에 따라 하위 권리가 소멸됐어요.',
  ex4 = 'Under the doctrine of estoppel, the landlord was barred from contesting the lease.', ex4_ko = '금반언 원칙에 따라 집주인은 임대 계약 분쟁을 제기할 수 없게 됐어요.',
  ex5 = 'Under the doctrine of frustration, the contract was discharged.', ex5_ko = '계약 좌절 원칙에 따라 계약이 해소됐어요.'
WHERE id = 's_home_C2_04';

UPDATE sentences SET
  ex1 = 'The fiduciary duty vested in the trustee was strictly enforced.', ex1_ko = '수탁자에게 귀속된 신탁 의무가 엄격하게 집행됐어요.',
  ex2 = 'The legal title vested in the executor pending probate.', ex2_ko = '검인 계류 중 유언 집행자에게 법적 소유권이 귀속됐어요.',
  ex3 = 'The equitable interest vested in the beneficiary was clearly documented.', ex3_ko = '수익자에게 귀속된 형평법적 권리가 명확하게 문서화됐어요.',
  ex4 = 'The remainder interest vested in the heirs upon the death of the life tenant.', ex4_ko = '종신 임차인의 사망 시 잔여 권리가 상속인들에게 귀속됐어요.',
  ex5 = 'The reversionary right vested in the original grantor after the lease expired.', ex5_ko = '임대 계약 만료 후 원 부여자에게 복귀권이 귀속됐어요.'
WHERE id = 's_home_C2_05';

UPDATE sentences SET
  ex1 = 'A caveat was registered to protect the claimant''s interest pending litigation.', ex1_ko = '소송 계류 중 청구인의 권리를 보호하기 위해 이의 신청이 등록됐어요.',
  ex2 = 'An injunction was sought to protect the property pending sale.', ex2_ko = '매각 계류 중 부동산을 보호하기 위해 가처분이 신청됐어요.',
  ex3 = 'A unilateral notice was filed to protect the spouse''s equity pending divorce.', ex3_ko = '이혼 계류 중 배우자의 지분을 보호하기 위해 일방적 통지가 제출됐어요.',
  ex4 = 'A restriction was entered to protect the trust pending administration.', ex4_ko = '관리 계류 중 신탁을 보호하기 위해 제한이 기재됐어요.',
  ex5 = 'A holding deposit was paid to protect the buyer''s position pending exchange.', ex5_ko = '교환 계류 중 매수인의 입지를 보호하기 위해 예약금이 지불됐어요.'
WHERE id = 's_home_C2_06';

UPDATE sentences SET
  ex1 = 'The board voted to levy a maintenance charge across all units.', ex1_ko = '이사회가 모든 세대에 관리비를 부과하기로 의결했어요.',
  ex2 = 'The association voted to levy a one-time assessment for the renovation.', ex2_ko = '협회가 리노베이션을 위한 일회성 부담금 부과를 의결했어요.',
  ex3 = 'The trustees voted to levy a service charge to cover legal fees.', ex3_ko = '수탁자들이 법률 비용 충당을 위해 관리비를 부과하기로 의결했어요.',
  ex4 = 'The committee voted to levy a sinking fund contribution from each owner.', ex4_ko = '위원회가 각 소유자로부터 적립기금 부담금을 부과하기로 의결했어요.',
  ex5 = 'The council voted to levy a heritage preservation surcharge.', ex5_ko = '의회가 문화재 보존 부가금을 부과하기로 의결했어요.'
WHERE id = 's_home_C2_07';
