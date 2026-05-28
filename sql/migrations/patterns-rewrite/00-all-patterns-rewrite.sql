-- ============================================
-- Pattern Rewrite — All Batches Combined
-- 966개 검토, 915개 재작성, 51개 유지
-- 가짜 패턴을 진짜 grammar template으로 변환
-- ============================================


-- ============================================
-- batch-1-everyday.sql
-- ============================================
-- Rewrite fake patterns to real grammar templates
-- Batch 1: cafe, work, travel, shopping, home
-- 210 reviewed, 186 rewritten, 24 kept as-is

-- =====================================================================
-- CAFE (42 cards: 10 kept, 32 rewritten)
-- =====================================================================

-- s_cafe_A1_07: "This is delicious!" → kept (short fixed expression)
-- s_cafe_A1_05: "How much is this?" → kept (short fixed expression)
-- s_cafe_A1_04: "Is this seat taken?" → kept (short fixed question)
-- s_cafe_A1_06: "The bill, please." → kept (short fixed expression)
-- s_cafe_A1_01: "A table for two, please." → rewrite to template
UPDATE sentences SET en = 'A table for N, please.', ko = 'N명 자리 부탁드려요.', highlight = 'A table for N' WHERE id = 's_cafe_A1_01';

-- s_cafe_A1_02: "Can I see the menu, please?" → rewrite to generalize
UPDATE sentences SET en = 'Can I see N, please?', ko = 'N 좀 볼 수 있을까요?', highlight = 'Can I see N' WHERE id = 's_cafe_A1_02';

-- s_cafe_A1_03: "I'll have this one, please." → kept (short fixed expression for pointing)
-- s_cafe_A2_04: "Could we split the bill?" → kept (short fixed question)
-- s_cafe_A2_05: "Can I have a refill, please?" → rewrite
UPDATE sentences SET en = 'Can I have N, please?', ko = 'N 좀 주실 수 있을까요?', highlight = 'Can I have N' WHERE id = 's_cafe_A2_05';

-- s_cafe_A2_01: "What do you recommend?" → kept (short fixed question)
-- s_cafe_A2_02: "Can I get this to go, please?" → kept (fixed phrase, "to go" highlight)
-- s_cafe_A2_03: "Is there anything without meat?" → rewrite
UPDATE sentences SET en = 'Is there anything without N?', ko = 'N 없는 거 있나요?', highlight = 'Is there anything without N' WHERE id = 's_cafe_A2_03';

-- s_cafe_A2_06: "How long is the wait?" → kept (short fixed question)
-- s_cafe_A2_07: "Do you have a vegetarian option?" → rewrite
UPDATE sentences SET en = 'Do you have N?', ko = 'N 있나요?', highlight = 'Do you have N' WHERE id = 's_cafe_A2_07';

-- s_cafe_B1_03: "Could you make it without onions, please?" → rewrite
UPDATE sentences SET en = 'Could you make it without N, please?', ko = 'N 없이 만들어 주실 수 있을까요?', highlight = 'make it without N' WHERE id = 's_cafe_B1_03';

-- s_cafe_B1_04: "Is the kitchen able to accommodate dietary restrictions?" → rewrite
UPDATE sentences SET en = 'Is S able to V?', ko = 'S가 V할 수 있나요?', highlight = 'Is S able to V' WHERE id = 's_cafe_B1_04';

-- s_cafe_B1_06: "I think there's a mistake in the bill." → rewrite
UPDATE sentences SET en = 'I think there''s a mistake in N.', ko = 'N에 실수가 있는 것 같아요.', highlight = 'I think there''s a mistake in N' WHERE id = 's_cafe_B1_06';

-- s_cafe_B1_05: "Could I substitute the fries for a salad?" → rewrite
UPDATE sentences SET en = 'Could I substitute A for B?', ko = 'A를 B로 바꿀 수 있을까요?', highlight = 'substitute A for B' WHERE id = 's_cafe_B1_05';

-- s_cafe_B1_07: "What's the house specialty today?" → kept (short fixed question)
-- s_cafe_B1_01: "What do you recommend for someone who doesn't eat meat?" → rewrite
UPDATE sentences SET en = 'What do you recommend for someone who V?', ko = 'V하는 사람에게 무엇을 추천하시나요?', highlight = 'recommend for someone who V' WHERE id = 's_cafe_B1_01';

-- s_cafe_B1_02: "I have a nut allergy — could you check the ingredients?" → rewrite
UPDATE sentences SET en = 'I have a N allergy — could you V?', ko = 'N 알레르기가 있어서 V해 주실 수 있을까요?', highlight = 'I have a N allergy' WHERE id = 's_cafe_B1_02';

-- s_cafe_B2_01: "The dish has a beautiful balance of acidity and richness." → rewrite
UPDATE sentences SET en = 'S has a beautiful balance of A and B.', ko = 'S는 A와 B의 균형이 아름다워요.', highlight = 'balance of A and B' WHERE id = 's_cafe_B2_01';

-- s_cafe_B2_04: "I noticed the menu focuses heavily on locally sourced, seasonal produce." → rewrite
UPDATE sentences SET en = 'I noticed S focuses heavily on N.', ko = 'S가 N에 크게 중점을 두고 있는 것 같아요.', highlight = 'focuses heavily on N' WHERE id = 's_cafe_B2_04';

-- s_cafe_B2_06: "Could you tell me more about the provenance of the ingredients?" → rewrite
UPDATE sentences SET en = 'Could you tell me more about N?', ko = 'N에 대해 더 알려주실 수 있을까요?', highlight = 'Could you tell me more about N' WHERE id = 's_cafe_B2_06';

-- s_cafe_B2_07: "I think the fermentation adds a wonderful complexity to the bread." → rewrite
UPDATE sentences SET en = 'I think S adds a wonderful complexity to N.', ko = 'S가 N에 훌륭한 복잡성을 더해주는 것 같아요.', highlight = 'S adds a wonderful complexity to N' WHERE id = 's_cafe_B2_07';

-- s_cafe_B2_05: "The texture of the mousse is incredibly light — it almost dissolves on the palate." → rewrite
UPDATE sentences SET en = 'The texture of N is incredibly ADJ — it almost V on the palate.', ko = 'N의 식감이 믿을 수 없을 만큼 ADJ해요. 입안에서 V하는 것 같아요.', highlight = 'The texture of N is ADJ' WHERE id = 's_cafe_B2_05';

-- s_cafe_B2_03: "The sauce has a lovely depth of flavor with just a hint of smokiness." → rewrite
UPDATE sentences SET en = 'S has a lovely depth of flavor with just a hint of N.', ko = 'S에 N가 살짝 감도는 깊은 풍미가 있어요.', highlight = 'a hint of N' WHERE id = 's_cafe_B2_03';

-- s_cafe_B2_02: "Would you be able to suggest a wine pairing for this dish?" → rewrite
UPDATE sentences SET en = 'Would you be able to V?', ko = 'V해 주실 수 있을까요?', highlight = 'Would you be able to V' WHERE id = 's_cafe_B2_02';

-- s_cafe_C1_06: "The Michelin inspector would certainly appreciate the restraint shown in the plating." → rewrite
UPDATE sentences SET en = 'S would certainly appreciate the N shown in ~.', ko = 'S라면 ~에 드러난 N을 분명히 높이 평가할 거예요.', highlight = 'would certainly appreciate the N shown in' WHERE id = 's_cafe_C1_06';

-- s_cafe_C1_04: "I appreciate how the reduction ties all the elements of the dish together." → rewrite
UPDATE sentences SET en = 'I appreciate how S ties all the elements together.', ko = 'S가 모든 요소를 하나로 묶어주는 방식이 마음에 들어요.', highlight = 'I appreciate how S ties ~ together' WHERE id = 's_cafe_C1_04';

-- s_cafe_C1_01: "The mise en place here is impeccable — every element of the dish arrives perfectly timed." → rewrite
UPDATE sentences SET en = 'S is impeccable — every element of ~ arrives perfectly timed.', ko = 'S는 완벽해요. ~의 모든 요소가 정확한 타이밍에 나와요.', highlight = 'S is impeccable' WHERE id = 's_cafe_C1_01';

-- s_cafe_C1_03: "The charcuterie board is a study in contrast — the saltiness of the cured meats beautifully offsets the sweetness of the compote." → rewrite
UPDATE sentences SET en = 'S is a study in N — A beautifully offsets B.', ko = 'S는 N의 예술이에요. A가 B를 아름답게 상쇄해요.', highlight = 'a study in N' WHERE id = 's_cafe_C1_03';

-- s_cafe_C1_02: "The tasting menu does a remarkable job of showcasing the terroir of this region." → rewrite
UPDATE sentences SET en = 'S does a remarkable job of V-ing N.', ko = 'S가 N을 V하는 데 탁월한 역할을 해요.', highlight = 'does a remarkable job of V-ing' WHERE id = 's_cafe_C1_02';

-- s_cafe_C1_05: "Could you walk me through the foraging philosophy behind this seasonal menu?" → rewrite
UPDATE sentences SET en = 'Could you walk me through N?', ko = 'N에 대해 설명해 주실 수 있을까요?', highlight = 'walk me through N' WHERE id = 's_cafe_C1_05';

-- s_cafe_C1_07: "The sous vide preparation ensures a consistency that would be impossible to achieve with traditional methods." → rewrite
UPDATE sentences SET en = 'S ensures a N that would be impossible to V with traditional methods.', ko = 'S는 전통 방식으로는 V하기 불가능한 N을 보장해요.', highlight = 'ensures a N that would be impossible to V' WHERE id = 's_cafe_C1_07';

-- s_cafe_C2_05: "The chef's application of spherification transforms a classic ponzu into tiny caviar pearls that burst with umami on the palate." → rewrite
UPDATE sentences SET en = 'S transforms A into B that V on the palate.', ko = 'S가 A를 입안에서 V하는 B로 변환시켜요.', highlight = 'transforms A into B' WHERE id = 's_cafe_C2_05';

-- s_cafe_C2_04: "The appellation laws in Champagne strictly regulate the permitted varieties, yield per hectare, and minimum aging on lees." → rewrite
UPDATE sentences SET en = 'S strictly regulate A, B, and C.', ko = 'S는 A, B, C를 엄격히 규제해요.', highlight = 'S strictly regulate A, B, and C' WHERE id = 's_cafe_C2_04';

-- s_cafe_C2_07: "The biodynamic viticulture practiced here treats the entire estate as a self-sustaining organism, eschewing synthetic inputs in favor of astronomical planting calendars and herbal preparations." → rewrite
UPDATE sentences SET en = 'S treats N as a self-sustaining organism, eschewing A in favor of B.', ko = 'S는 N을 자급자족하는 유기체로 취급하며, A 대신 B를 선호해요.', highlight = 'eschewing A in favor of B' WHERE id = 's_cafe_C2_07';

-- s_cafe_C2_02: "The high tannin structure of this Barolo demands either a fatty red meat or a good decade of cellaring to soften its edges." → rewrite
UPDATE sentences SET en = 'S demands either A or B to V.', ko = 'S는 V하기 위해 A나 B를 필요로 해요.', highlight = 'demands either A or B' WHERE id = 's_cafe_C2_02';

-- s_cafe_C2_01: "The malolactic fermentation gives this Chardonnay a buttery, almost creamy quality that beautifully complements the lobster bisque." → rewrite
UPDATE sentences SET en = 'S gives N a quality that beautifully complements ~.', ko = 'S가 N에 ~와 완벽하게 어울리는 품질을 부여해요.', highlight = 'gives N a quality that complements ~' WHERE id = 's_cafe_C2_01';

-- s_cafe_C2_06: "What distinguishes a Grand Cru from a Premier Cru in Burgundy is ultimately a question of terroir specificity and the geological composition of the soil." → rewrite
UPDATE sentences SET en = 'What distinguishes A from B is ultimately a question of N.', ko = 'A와 B를 구별하는 것은 결국 N의 문제예요.', highlight = 'What distinguishes A from B is' WHERE id = 's_cafe_C2_06';

-- s_cafe_C2_03: "The organoleptic assessment reveals a wine of extraordinary complexity — layers of terroir expressing themselves with each successive sip." → rewrite
UPDATE sentences SET en = 'S reveals a N of extraordinary complexity — ~.', ko = 'S에서 놀라운 복잡성의 N이 드러나요. ~.', highlight = 'S reveals a N of extraordinary complexity' WHERE id = 's_cafe_C2_03';

-- =====================================================================
-- WORK (42 cards: 3 kept, 39 rewritten)
-- =====================================================================

-- s_work_A1_07: "Let's take a short break." → kept (short fixed expression)
-- s_work_A1_04: "I have a meeting this afternoon." → rewrite
UPDATE sentences SET en = 'I have a N this afternoon.', ko = '저는 오늘 오후에 N가 있어요.', highlight = 'I have a N' WHERE id = 's_work_A1_04';

-- s_work_A1_05: "Can you send me an email about that?" → rewrite
UPDATE sentences SET en = 'Can you V about that?', ko = '그것에 대해 V해 주실 수 있어요?', highlight = 'Can you V' WHERE id = 's_work_A1_05';

-- s_work_A1_01: "What do you do for work?" → kept (short fixed question)
-- s_work_A1_02: "I work at a company downtown." → rewrite
UPDATE sentences SET en = 'I work at N.', ko = '저는 N에서 일해요.', highlight = 'I work at N' WHERE id = 's_work_A1_02';

-- s_work_A1_03: "My job starts at nine in the morning." → rewrite
UPDATE sentences SET en = 'S starts at N.', ko = 'S는 N에 시작해요.', highlight = 'S starts at N' WHERE id = 's_work_A1_03';

-- s_work_A1_06: "My boss is very easy to work with." → rewrite
UPDATE sentences SET en = 'S is very easy to V with.', ko = 'S는 V하기 매우 편해요.', highlight = 'easy to V with' WHERE id = 's_work_A1_06';

-- s_work_A2_03: "The deadline is next Monday. Can we manage that?" → kept (Can we manage that? is fixed)
-- s_work_A2_02: "I need your feedback on this draft." → rewrite
UPDATE sentences SET en = 'I need your feedback on N.', ko = 'N에 대한 피드백이 필요해요.', highlight = 'I need your feedback on N' WHERE id = 's_work_A2_02';

-- s_work_A2_01: "Could you send the report by Friday?" → rewrite
UPDATE sentences SET en = 'Could you V by N?', ko = 'N까지 V해 주실 수 있을까요?', highlight = 'Could you V by N' WHERE id = 's_work_A2_01';

-- s_work_A2_07: "I am working on the project report right now." → rewrite
UPDATE sentences SET en = 'I am working on N right now.', ko = '지금 N을 작업 중이에요.', highlight = 'I am working on N' WHERE id = 's_work_A2_07';

-- s_work_A2_06: "Can you approve this by tomorrow?" → rewrite
UPDATE sentences SET en = 'Can you V by N?', ko = 'N까지 V해 주실 수 있어요?', highlight = 'V by N' WHERE id = 's_work_A2_06';

-- s_work_A2_05: "I will follow up with the client this week." → rewrite
UPDATE sentences SET en = 'I will follow up with N.', ko = 'N에게 후속 연락을 할게요.', highlight = 'follow up with N' WHERE id = 's_work_A2_05';

-- s_work_A2_04: "Please submit your timesheet by end of day." → rewrite
UPDATE sentences SET en = 'Please V by end of day.', ko = '오늘 업무 종료 전에 V해 주세요.', highlight = 'Please V by end of day' WHERE id = 's_work_A2_04';

-- s_work_B1_06: "We need to finalize the agenda before Thursday's meeting." → rewrite
UPDATE sentences SET en = 'We need to finalize N before ~.', ko = '~ 전에 N을 확정해야 해요.', highlight = 'finalize N before ~' WHERE id = 's_work_B1_06';

-- s_work_B1_01: "Could we schedule a call to align on the agenda?" → rewrite
UPDATE sentences SET en = 'Could we schedule a call to align on N?', ko = 'N에 대해 의견을 맞추기 위해 통화 일정을 잡을 수 있을까요?', highlight = 'schedule a call to align on N' WHERE id = 's_work_B1_01';

-- s_work_B1_02: "Let me check the stakeholders' availability and get back to you." → rewrite
UPDATE sentences SET en = 'Let me check N and get back to you.', ko = 'N을 확인하고 다시 연락드릴게요.', highlight = 'check N and get back to you' WHERE id = 's_work_B1_02';

-- s_work_B1_03: "I am writing to follow up on our meeting last Tuesday." → rewrite
UPDATE sentences SET en = 'I am writing to follow up on N.', ko = 'N에 대한 후속 조치로 이 이메일을 드려요.', highlight = 'I am writing to follow up on N' WHERE id = 's_work_B1_03';

-- s_work_B1_04: "Please find the briefing document attached." → rewrite
UPDATE sentences SET en = 'Please find N attached.', ko = 'N을 첨부파일로 확인해주세요.', highlight = 'Please find N attached' WHERE id = 's_work_B1_04';

-- s_work_B1_05: "Could you delegate this task to someone on your team?" → rewrite
UPDATE sentences SET en = 'Could you delegate N to ~?', ko = 'N을 ~에게 위임해 주실 수 있을까요?', highlight = 'delegate N to ~' WHERE id = 's_work_B1_05';

-- s_work_B1_07: "The project is on track to meet the milestone by Q3." → rewrite
UPDATE sentences SET en = 'S is on track to V by N.', ko = 'S는 N까지 V할 궤도에 있어요.', highlight = 'on track to V by N' WHERE id = 's_work_B1_07';

-- s_work_B2_02: "I would like to walk you through our quarterly results." → rewrite
UPDATE sentences SET en = 'I would like to walk you through N.', ko = 'N에 대해 안내해 드리고자 해요.', highlight = 'walk you through N' WHERE id = 's_work_B2_02';

-- s_work_B2_03: "To leverage our competitive advantage, we need to scale faster." → rewrite
UPDATE sentences SET en = 'To leverage N, we need to V.', ko = 'N을 활용하려면 V해야 해요.', highlight = 'To leverage N, we need to V' WHERE id = 's_work_B2_03';

-- s_work_B2_04: "The pivot to a subscription model improved our retention by twenty percent." → rewrite
UPDATE sentences SET en = 'The pivot to N improved S by N percent.', ko = 'N으로의 전환이 S를 N퍼센트 향상시켰어요.', highlight = 'pivot to N improved S by N percent' WHERE id = 's_work_B2_04';

-- s_work_B2_06: "Let me highlight the key takeaways from this fiscal year." → rewrite
UPDATE sentences SET en = 'Let me highlight the key takeaways from N.', ko = 'N의 핵심 시사점을 강조하겠어요.', highlight = 'highlight the key takeaways from N' WHERE id = 's_work_B2_06';

-- s_work_B2_05: "Our onboarding process is now fully scalable across markets." → rewrite
UPDATE sentences SET en = 'S is now fully scalable across N.', ko = 'S는 이제 N에 걸쳐 완전히 확장 가능해요.', highlight = 'fully scalable across N' WHERE id = 's_work_B2_05';

-- s_work_B2_01: "Our Q3 revenue exceeded the KPI by fifteen percent." → rewrite
UPDATE sentences SET en = 'S exceeded N by N percent.', ko = 'S가 N을 N퍼센트 초과달성했어요.', highlight = 'exceeded N by N percent' WHERE id = 's_work_B2_01';

-- s_work_B2_07: "We are benchmarking against top industry performers to close the gap." → rewrite
UPDATE sentences SET en = 'We are benchmarking against N to V.', ko = 'V하기 위해 N과 비교 기준을 삼고 있어요.', highlight = 'benchmarking against N' WHERE id = 's_work_B2_07';

-- s_work_C1_03: "Our fiduciary duty requires us to act in shareholders' best interests." → rewrite
UPDATE sentences SET en = 'S requires us to V in ~''s best interests.', ko = 'S에 따라 ~의 최선의 이익을 위해 V해야 해요.', highlight = 'requires us to V in ~''s best interests' WHERE id = 's_work_C1_03';

-- s_work_C1_07: "The governance framework must align with international best practices." → rewrite
UPDATE sentences SET en = 'S must align with N.', ko = 'S는 N과 일치해야 해요.', highlight = 'must align with N' WHERE id = 's_work_C1_07';

-- s_work_C1_06: "We need to conduct a thorough audit before the restructuring begins." → rewrite
UPDATE sentences SET en = 'We need to conduct a thorough N before ~.', ko = '~ 전에 철저한 N을 실시해야 해요.', highlight = 'conduct a thorough N before ~' WHERE id = 's_work_C1_06';

-- s_work_C1_05: "Any dispute shall be resolved through binding arbitration in Seoul." → rewrite
UPDATE sentences SET en = 'Any N shall be resolved through ~.', ko = '모든 N은 ~를 통해 해결되어야 해요.', highlight = 'shall be resolved through ~' WHERE id = 's_work_C1_05';

-- s_work_C1_04: "The indemnification clause protects both parties from third-party claims." → rewrite
UPDATE sentences SET en = 'S protects both parties from N.', ko = 'S는 양측을 N으로부터 보호해요.', highlight = 'protects both parties from N' WHERE id = 's_work_C1_04';

-- s_work_C1_02: "The acquisition is subject to due diligence and board approval." → rewrite
UPDATE sentences SET en = 'S is subject to A and B.', ko = 'S는 A 및 B를 조건으로 해요.', highlight = 'is subject to A and B' WHERE id = 's_work_C1_02';

-- s_work_C1_01: "We must ensure full compliance with the regulatory framework before closing." → rewrite
UPDATE sentences SET en = 'We must ensure full compliance with N before ~.', ko = '~ 전에 N을 완전히 준수해야 해요.', highlight = 'ensure full compliance with N' WHERE id = 's_work_C1_01';

-- s_work_C2_07: "The recapitalization plan involves converting mezzanine debt to equity at par." → rewrite
UPDATE sentences SET en = 'S involves converting A to B at par.', ko = 'S는 A를 액면가로 B로 전환하는 것을 포함해요.', highlight = 'involves converting A to B' WHERE id = 's_work_C2_07';

-- s_work_C2_01: "The securitization structure requires a bankruptcy-remote special purpose vehicle." → rewrite
UPDATE sentences SET en = 'S requires N.', ko = 'S는 N을 필요로 해요.', highlight = 'S requires N' WHERE id = 's_work_C2_01';

-- s_work_C2_04: "The force majeure clause was invoked following the regulatory shutdown." → rewrite
UPDATE sentences SET en = 'S was invoked following N.', ko = 'N 이후 S가 발동되었어요.', highlight = 'was invoked following N' WHERE id = 's_work_C2_04';

-- s_work_C2_03: "We need to model the EBITDA accretion from the proposed divestiture." → rewrite
UPDATE sentences SET en = 'We need to model the N from ~.', ko = '~로 인한 N을 모델링해야 해요.', highlight = 'model the N from ~' WHERE id = 's_work_C2_03';

-- s_work_C2_06: "Subrogation rights allow the insurer to step into the insured's shoes legally." → rewrite
UPDATE sentences SET en = 'S rights allow N to step into ~''s shoes.', ko = 'S 권리는 N이 ~의 지위를 대신할 수 있게 해요.', highlight = 'allow N to step into ~''s shoes' WHERE id = 's_work_C2_06';

-- s_work_C2_05: "A leveraged buyout financed at six times EBITDA requires careful covenant monitoring." → rewrite
UPDATE sentences SET en = 'S financed at N times EBITDA requires careful covenant monitoring.', ko = 'N배 EBITDA로 조달된 S는 신중한 약정 모니터링이 필요해요.', highlight = 'financed at N times EBITDA' WHERE id = 's_work_C2_05';

-- s_work_C2_02: "The covenant package restricts the borrower from additional subordinated debt." → rewrite
UPDATE sentences SET en = 'S restricts N from V-ing.', ko = 'S는 N이 V하는 것을 제한해요.', highlight = 'S restricts N from V-ing' WHERE id = 's_work_C2_02';

-- =====================================================================
-- TRAVEL (42 cards: 5 kept, 37 rewritten)
-- =====================================================================

-- s_travel_A1_07: "How much is the ticket?" → rewrite
UPDATE sentences SET en = 'How much is N?', ko = 'N가 얼마예요?', highlight = 'How much is N' WHERE id = 's_travel_A1_07';

-- s_travel_A1_01: "Where are you going?" → kept (short fixed question)
-- s_travel_A1_02: "How do I get to the hotel?" → rewrite
UPDATE sentences SET en = 'How do I get to N?', ko = 'N까지 어떻게 가요?', highlight = 'How do I get to N' WHERE id = 's_travel_A1_02';

-- s_travel_A1_03: "Is this the right bus?" → rewrite
UPDATE sentences SET en = 'Is this the right N?', ko = '이 N가 맞나요?', highlight = 'Is this the right N' WHERE id = 's_travel_A1_03';

-- s_travel_A1_04: "Where is the airport?" → rewrite
UPDATE sentences SET en = 'Where is N?', ko = 'N가 어디에 있어요?', highlight = 'Where is N' WHERE id = 's_travel_A1_04';

-- s_travel_A1_05: "I need a map, please." → rewrite
UPDATE sentences SET en = 'I need N, please.', ko = 'N가 필요해요.', highlight = 'I need N' WHERE id = 's_travel_A1_05';

-- s_travel_A1_06: "What time does it open?" → kept (short fixed question)
-- s_travel_A2_01: "I have a reservation under the name Kim." → rewrite
UPDATE sentences SET en = 'I have a reservation under the name N.', ko = 'N라는 이름으로 예약했어요.', highlight = 'I have a reservation under the name N' WHERE id = 's_travel_A2_01';

-- s_travel_A2_06: "Can I see the room first?" → kept (short fixed question)
-- s_travel_A2_05: "Is breakfast included in the price?" → rewrite
UPDATE sentences SET en = 'Is N included in ~?', ko = '~에 N이 포함되어 있나요?', highlight = 'Is N included in ~' WHERE id = 's_travel_A2_05';

-- s_travel_A2_04: "I'd like to book a room for two nights." → rewrite
UPDATE sentences SET en = 'I''d like to V.', ko = 'V하고 싶어요.', highlight = 'I''d like to V' WHERE id = 's_travel_A2_04';

-- s_travel_A2_03: "What time is check-out?" → kept (short fixed question)
-- s_travel_A2_02: "Could I check in now, please?" → rewrite
UPDATE sentences SET en = 'Could I V now, please?', ko = '지금 V할 수 있을까요?', highlight = 'Could I V' WHERE id = 's_travel_A2_02';

-- s_travel_A2_07: "Do you have any rooms available?" → rewrite
UPDATE sentences SET en = 'Do you have any N available?', ko = '이용 가능한 N가 있나요?', highlight = 'any N available' WHERE id = 's_travel_A2_07';

-- s_travel_B1_02: "Do I need a visa to travel to this country?" → rewrite
UPDATE sentences SET en = 'Do I need N to V?', ko = 'V하려면 N가 필요한가요?', highlight = 'Do I need N to V' WHERE id = 's_travel_B1_02';

-- s_travel_B1_03: "I think I'm on the wrong train — where does this go?" → rewrite
UPDATE sentences SET en = 'I think I''m on the wrong N — where does this go?', ko = '잘못된 N을 탄 것 같아요. 이건 어디로 가나요?', highlight = 'I think I''m on the wrong N' WHERE id = 's_travel_B1_03';

-- s_travel_B1_04: "Excuse me, is this seat taken?" → kept (short fixed question)
-- s_travel_B1_05: "How long does it take to get there by taxi?" → rewrite
UPDATE sentences SET en = 'How long does it take to V?', ko = 'V하는 데 얼마나 걸려요?', highlight = 'How long does it take to V' WHERE id = 's_travel_B1_05';

-- s_travel_B1_06: "My passport expires next month — will that be a problem?" → rewrite
UPDATE sentences SET en = 'S V — will that be a problem?', ko = 'S가 V해요. 문제가 될까요?', highlight = 'will that be a problem' WHERE id = 's_travel_B1_06';

-- s_travel_B1_07: "Could you recommend a good local area to stay in?" → rewrite
UPDATE sentences SET en = 'Could you recommend a good N?', ko = '좋은 N을 추천해 주실 수 있을까요?', highlight = 'Could you recommend a good N' WHERE id = 's_travel_B1_07';

-- s_travel_B1_01: "Could you tell me how to get to the nearest metro station?" → rewrite
UPDATE sentences SET en = 'Could you tell me how to V?', ko = 'V하는 방법을 알려 주실 수 있을까요?', highlight = 'Could you tell me how to V' WHERE id = 's_travel_B1_01';

-- s_travel_B2_02: "The most memorable part of the trip was getting lost in the old quarter." → rewrite
UPDATE sentences SET en = 'The most memorable part of N was V-ing.', ko = 'N에서 가장 기억에 남는 부분은 V한 것이었어요.', highlight = 'The most memorable part of N was V-ing' WHERE id = 's_travel_B2_02';

-- s_travel_B2_05: "If I could go back, I'd spend more time in the countryside and less in the city." → rewrite
UPDATE sentences SET en = 'If I could go back, I''d V.', ko = '다시 갈 수 있다면 V할 것 같아요.', highlight = 'If I could go back, I''d V' WHERE id = 's_travel_B2_05';

-- s_travel_B2_07: "Immersing yourself in the local language, even just a few phrases, opens so many doors." → rewrite
UPDATE sentences SET en = 'V-ing yourself in N opens so many doors.', ko = 'N에 V하면 정말 많은 문이 열려요.', highlight = 'V-ing yourself in N' WHERE id = 's_travel_B2_07';

-- s_travel_B2_03: "I'd highly recommend staying off the tourist trail if you want an authentic experience." → rewrite
UPDATE sentences SET en = 'I''d highly recommend V-ing if you want ~.', ko = '~을 원한다면 V하는 것을 적극 추천해요.', highlight = 'I''d highly recommend V-ing' WHERE id = 's_travel_B2_03';

-- s_travel_B2_06: "The culture shock hit me harder than I expected when I first arrived." → rewrite
UPDATE sentences SET en = 'S hit me harder than I expected.', ko = 'S가 예상보다 훨씬 더 심하게 와닿았어요.', highlight = 'harder than I expected' WHERE id = 's_travel_B2_06';

-- s_travel_B2_01: "Travelling solo completely changed my perspective on life." → rewrite
UPDATE sentences SET en = 'V-ing completely changed my perspective on N.', ko = 'V한 것이 N에 대한 제 시각을 완전히 바꿨어요.', highlight = 'completely changed my perspective on N' WHERE id = 's_travel_B2_01';

-- s_travel_B2_04: "What really surprised me was how welcoming the locals were despite the language barrier." → rewrite
UPDATE sentences SET en = 'What really surprised me was how ADJ S was.', ko = '정말 놀라웠던 것은 S가 얼마나 ADJ였는지예요.', highlight = 'What really surprised me was' WHERE id = 's_travel_B2_04';

-- s_travel_C1_07: "The most transformative journeys are those that shatter your assumptions, not confirm them." → rewrite
UPDATE sentences SET en = 'The most ~ S are those that V, not ~.', ko = '가장 ~한 S는 ~하지 않고 V하는 것이에요.', highlight = 'those that V, not ~' WHERE id = 's_travel_C1_07';

-- s_travel_C1_06: "Having lived as an expat for a decade, I no longer think of nationality as fixed." → rewrite
UPDATE sentences SET en = 'Having V-ed for ~, I no longer think of N as ~.', ko = '~동안 V하면서 더 이상 N을 ~로 생각하지 않아요.', highlight = 'Having V-ed' WHERE id = 's_travel_C1_06';

-- s_travel_C1_05: "What strikes me most about long-term travel is the way it erodes your sense of home." → rewrite
UPDATE sentences SET en = 'What strikes me most about N is ~.', ko = 'N에서 가장 인상 깊은 점은 ~이에요.', highlight = 'What strikes me most about N' WHERE id = 's_travel_C1_05';

-- s_travel_C1_02: "There's something profoundly humbling about navigating a world that doesn't speak your language." → rewrite
UPDATE sentences SET en = 'There''s something ADJ about V-ing.', ko = 'V하는 것에는 ADJ한 무언가가 있어요.', highlight = 'There''s something ADJ about V-ing' WHERE id = 's_travel_C1_02';

-- s_travel_C1_04: "I've come to believe that it's the unplanned moments that define a journey, not the itinerary." → rewrite
UPDATE sentences SET en = 'I''ve come to believe that ~.', ko = '~라고 생각하게 됐어요.', highlight = 'I''ve come to believe that' WHERE id = 's_travel_C1_04';

-- s_travel_C1_03: "The longer I travel, the more I realise how little I truly understand about the world." → rewrite
UPDATE sentences SET en = 'The more I V, the more I V.', ko = 'V할수록 더욱 V해요.', highlight = 'The more I V, the more I V' WHERE id = 's_travel_C1_03';

-- s_travel_C1_01: "Travel, at its best, is not a form of escape but a means of deeper self-understanding." → rewrite
UPDATE sentences SET en = 'S, at its best, is not A but B.', ko = 'S는 최선의 상태에서 A가 아니라 B예요.', highlight = 'at its best, is not A but B' WHERE id = 's_travel_C1_01';

-- s_travel_C2_03: "Authentic cultural exchange demands vulnerability on both sides, not merely the observer's curiosity." → rewrite
UPDATE sentences SET en = 'S demands N, not merely ~.', ko = 'S는 단순히 ~가 아니라 N을 요구해요.', highlight = 'demands N, not merely ~' WHERE id = 's_travel_C2_03';

-- s_travel_C2_01: "To travel is to hold a paradox: the more borders you cross, the less certain you become of your own." → rewrite
UPDATE sentences SET en = 'To V is to V: the more ~, the less ~.', ko = 'V하는 것은 V하는 것이에요. ~할수록 ~가 적어져요.', highlight = 'To V is to V' WHERE id = 's_travel_C2_01';

-- s_travel_C2_02: "The notion that travel broadens the mind is complicated by the reality that it can also entrench privilege." → rewrite
UPDATE sentences SET en = 'The notion that ~ is complicated by the reality that ~.', ko = '~라는 개념은 ~라는 현실에 의해 복잡해져요.', highlight = 'is complicated by the reality that' WHERE id = 's_travel_C2_02';

-- s_travel_C2_04: "What separates tourism from travel is not the distance covered but the degree of self-interrogation involved." → rewrite
UPDATE sentences SET en = 'What separates A from B is not X but Y.', ko = 'A와 B를 구분하는 것은 X가 아니라 Y예요.', highlight = 'What separates A from B is not X but Y' WHERE id = 's_travel_C2_04';

-- s_travel_C2_05: "There is an inherent ethical tension between the desire to witness poverty tourism and respecting local dignity." → rewrite
UPDATE sentences SET en = 'There is an inherent ethical tension between A and B.', ko = 'A와 B 사이에는 내재적 윤리적 긴장이 있어요.', highlight = 'inherent ethical tension between A and B' WHERE id = 's_travel_C2_05';

-- s_travel_C2_06: "The peripatetic intellectual tradition — from Aristotle to Ibn Battuta — equates movement with enlightenment." → rewrite
UPDATE sentences SET en = 'S — from A to B — equates X with Y.', ko = 'A부터 B까지의 S는 X를 Y와 동일시해요.', highlight = 'equates X with Y' WHERE id = 's_travel_C2_06';

-- s_travel_C2_07: "To sojourn is not merely to visit; it is to suspend one's prior self and allow a place to reconstitute you." → rewrite
UPDATE sentences SET en = 'To V is not merely to V; it is to V.', ko = 'V하는 것은 단순히 V하는 것이 아니에요. V하는 것이에요.', highlight = 'To V is not merely to V; it is to V' WHERE id = 's_travel_C2_07';

-- =====================================================================
-- SHOPPING (42 cards: 6 kept, 36 rewritten)
-- =====================================================================

-- s_shopping_A1_02: "How much does this cost?" → kept (short fixed question)
-- s_shopping_A1_04: "Can I pay by card?" → rewrite
UPDATE sentences SET en = 'Can I pay by N?', ko = 'N로 지불해도 될까요?', highlight = 'Can I pay by N' WHERE id = 's_shopping_A1_04';

-- s_shopping_A1_01: "How much is this?" → kept (short fixed question)
-- s_shopping_A1_06: "Can I have a bag, please?" → rewrite
UPDATE sentences SET en = 'Can I have N, please?', ko = 'N 좀 주실 수 있을까요?', highlight = 'Can I have N' WHERE id = 's_shopping_A1_06';

-- s_shopping_A1_05: "Do you have this in a bigger size?" → rewrite
UPDATE sentences SET en = 'Do you have this in N?', ko = '이거 N로 있나요?', highlight = 'Do you have this in N' WHERE id = 's_shopping_A1_05';

-- s_shopping_A1_07: "Where is the checkout?" → rewrite
UPDATE sentences SET en = 'Where is N?', ko = 'N이 어디예요?', highlight = 'Where is N' WHERE id = 's_shopping_A1_07';

-- s_shopping_A1_03: "I'll take this one, please." → kept (short fixed expression)
-- s_shopping_A2_02: "Can I try this on?" → kept (short fixed question)
-- s_shopping_A2_01: "Do you have this in blue?" → rewrite
UPDATE sentences SET en = 'Do you have this in N?', ko = '이거 N로 있나요?', highlight = 'in N' WHERE id = 's_shopping_A2_01';

-- s_shopping_A2_03: "Where is the fitting room?" → rewrite
UPDATE sentences SET en = 'Where is N?', ko = 'N이 어디예요?', highlight = 'Where is N' WHERE id = 's_shopping_A2_03';

-- s_shopping_A2_07: "Do you accept credit cards?" → rewrite
UPDATE sentences SET en = 'Do you accept N?', ko = 'N도 받나요?', highlight = 'Do you accept N' WHERE id = 's_shopping_A2_07';

-- s_shopping_A2_06: "Is there a discount for members?" → rewrite
UPDATE sentences SET en = 'Is there a discount for N?', ko = 'N 할인이 있나요?', highlight = 'Is there a discount for N' WHERE id = 's_shopping_A2_06';

-- s_shopping_A2_04: "I'd like to return this, please." → rewrite
UPDATE sentences SET en = 'I''d like to V, please.', ko = 'V하고 싶어요.', highlight = 'I''d like to V' WHERE id = 's_shopping_A2_04';

-- s_shopping_A2_05: "Can I get a refund?" → kept (short fixed question)
-- s_shopping_B1_05: "Can I use this coupon with the sale price?" → rewrite
UPDATE sentences SET en = 'Can I use N with ~?', ko = '~에 N도 같이 쓸 수 있나요?', highlight = 'use N with ~' WHERE id = 's_shopping_B1_05';

-- s_shopping_B1_07: "What's the best price you can do?" → kept (fixed negotiation question)
-- s_shopping_B1_06: "I'd like to pay in installments. Is that possible?" → rewrite
UPDATE sentences SET en = 'I''d like to V. Is that possible?', ko = 'V하고 싶은데 가능할까요?', highlight = 'Is that possible' WHERE id = 's_shopping_B1_06';

-- s_shopping_B1_01: "Is there any room to negotiate the price?" → rewrite
UPDATE sentences SET en = 'Is there any room to V?', ko = 'V할 여지가 있을까요?', highlight = 'room to V' WHERE id = 's_shopping_B1_01';

-- s_shopping_B1_03: "I found it cheaper at another store. Can you match the price?" → rewrite
UPDATE sentences SET en = 'I found it cheaper at ~. Can you V?', ko = '~에서 더 싸게 봤어요. V해 주실 수 있어요?', highlight = 'Can you V' WHERE id = 's_shopping_B1_03';

-- s_shopping_B1_02: "Would you be able to give me a discount if I bought two?" → rewrite
UPDATE sentences SET en = 'Would you be able to V if I V-ed?', ko = '제가 V하면 V해 주실 수 있을까요?', highlight = 'Would you be able to V if I V-ed' WHERE id = 's_shopping_B1_02';

-- s_shopping_B1_04: "I'm a regular customer. Is there any special deal for me?" → rewrite
UPDATE sentences SET en = 'I''m S. Is there any special deal for me?', ko = '저 S예요. 특별히 해주실 수 있는 게 있나요?', highlight = 'Is there any special deal for me' WHERE id = 's_shopping_B1_04';

-- s_shopping_B2_05: "I'm torn between these two options. Which one would you recommend?" → rewrite
UPDATE sentences SET en = 'I''m torn between A and B. Which one would you recommend?', ko = 'A와 B 사이에서 결정을 못 하겠어요. 어떤 걸 추천하세요?', highlight = 'torn between A and B' WHERE id = 's_shopping_B2_05';

-- s_shopping_B2_07: "I'd like to dispute this charge on my credit card statement." → rewrite
UPDATE sentences SET en = 'I''d like to dispute N.', ko = 'N에 이의를 제기하고 싶어요.', highlight = 'I''d like to dispute N' WHERE id = 's_shopping_B2_07';

-- s_shopping_B2_06: "Is there an extended warranty available for this product?" → rewrite
UPDATE sentences SET en = 'Is there N available for ~?', ko = '~에 N가 있나요?', highlight = 'Is there N available for ~' WHERE id = 's_shopping_B2_06';

-- s_shopping_B2_01: "I'm not satisfied with the quality of this product. I'd like to speak to a manager." → rewrite
UPDATE sentences SET en = 'I''m not satisfied with N. I''d like to speak to ~.', ko = 'N가 만족스럽지 않아요. ~와 이야기하고 싶어요.', highlight = 'I''m not satisfied with N' WHERE id = 's_shopping_B2_01';

-- s_shopping_B2_03: "I've been comparing prices online and found this significantly cheaper elsewhere." → rewrite
UPDATE sentences SET en = 'I''ve been V-ing and found ~.', ko = 'V하고 있었는데 ~인 걸 발견했어요.', highlight = 'I''ve been V-ing' WHERE id = 's_shopping_B2_03';

-- s_shopping_B2_04: "I believe I was overcharged. Could you check the receipt?" → rewrite
UPDATE sentences SET en = 'I believe S V. Could you V?', ko = 'S가 V한 것 같아요. V해 주실 수 있을까요?', highlight = 'I believe S V' WHERE id = 's_shopping_B2_04';

-- s_shopping_B2_02: "This item arrived damaged. What's your policy on returns?" → rewrite
UPDATE sentences SET en = 'S arrived ADJ. What''s your policy on N?', ko = 'S가 ADJ한 상태로 도착했어요. N 정책이 어떻게 되나요?', highlight = 'What''s your policy on N' WHERE id = 's_shopping_B2_02';

-- s_shopping_C1_06: "We're concerned about potential grey market activity undermining our exclusive distribution rights." → rewrite
UPDATE sentences SET en = 'We''re concerned about N V-ing ~.', ko = 'N가 ~를 V할 것을 우려하고 있어요.', highlight = 'concerned about N V-ing' WHERE id = 's_shopping_C1_06';

-- s_shopping_C1_05: "Our brand's provenance and artisan heritage justify the premium pricing." → rewrite
UPDATE sentences SET en = 'S justify N.', ko = 'S가 N을 정당화해요.', highlight = 'S justify N' WHERE id = 's_shopping_C1_05';

-- s_shopping_C1_04: "We'd like to explore whether there's scope for a bespoke arrangement." → rewrite
UPDATE sentences SET en = 'We''d like to explore whether there''s scope for N.', ko = 'N의 여지가 있는지 검토하고 싶어요.', highlight = 'whether there''s scope for N' WHERE id = 's_shopping_C1_04';

-- s_shopping_C1_03: "Could you provide a detailed invoice, including a breakdown of costs?" → rewrite
UPDATE sentences SET en = 'Could you provide N, including ~?', ko = '~를 포함한 N을 제공해 주실 수 있을까요?', highlight = 'Could you provide N, including ~' WHERE id = 's_shopping_C1_03';

-- s_shopping_C1_02: "We need to carry out due diligence on your supply chain before finalising the contract." → rewrite
UPDATE sentences SET en = 'We need to carry out N before V-ing.', ko = 'V하기 전에 N을 진행해야 해요.', highlight = 'carry out N before V-ing' WHERE id = 's_shopping_C1_02';

-- s_shopping_C1_01: "We're looking to establish a long-term procurement relationship and would like to discuss volume pricing." → rewrite
UPDATE sentences SET en = 'We''re looking to V and would like to discuss N.', ko = 'V하고자 하며, N에 대해 논의하고 싶어요.', highlight = 'We''re looking to V' WHERE id = 's_shopping_C1_01';

-- s_shopping_C1_07: "We propose a consignment model to reduce your inventory risk while ensuring product availability." → rewrite
UPDATE sentences SET en = 'We propose N to V while V-ing.', ko = 'V하면서 V하기 위해 N을 제안해요.', highlight = 'We propose N to V while V-ing' WHERE id = 's_shopping_C1_07';

-- s_shopping_C2_01: "The proposed markup structure fails to account for the asymmetric information between the manufacturer and the end retailer." → rewrite
UPDATE sentences SET en = 'S fails to account for N.', ko = 'S는 N을 반영하지 못해요.', highlight = 'S fails to account for N' WHERE id = 's_shopping_C2_01';

-- s_shopping_C2_04: "We must factor in both the net present value of the contract and potential depreciation of key assets over the agreement's lifetime." → rewrite
UPDATE sentences SET en = 'We must factor in both A and B.', ko = 'A와 B 모두를 고려해야 해요.', highlight = 'must factor in both A and B' WHERE id = 's_shopping_C2_04';

-- s_shopping_C2_02: "The cartel-like behaviour among suppliers constitutes a restraint of trade and may attract regulatory scrutiny." → rewrite
UPDATE sentences SET en = 'S constitutes N and may attract ~.', ko = 'S는 N에 해당하며 ~를 받을 수 있어요.', highlight = 'S constitutes N and may attract ~' WHERE id = 's_shopping_C2_02';

-- s_shopping_C2_03: "Commodification of artisan products risks eroding the very brand equity that justifies their premium positioning." → rewrite
UPDATE sentences SET en = 'N of ~ risks V-ing the very N that justifies ~.', ko = '~의 N는 ~를 정당화하는 바로 그 N을 V할 위험이 있어요.', highlight = 'risks V-ing the very N that justifies' WHERE id = 's_shopping_C2_03';

-- s_shopping_C2_05: "The franchisee's obligations under the agreement must be clearly delineated to prevent any regulatory arbitrage." → rewrite
UPDATE sentences SET en = 'S''s obligations under N must be clearly delineated to prevent ~.', ko = 'N상 S의 의무는 ~를 방지하기 위해 명확하게 명시돼야 해요.', highlight = 'must be clearly delineated to prevent ~' WHERE id = 's_shopping_C2_05';

-- s_shopping_C2_07: "As a monopsony buyer, we have significant leverage, but exercising it aggressively risks triggering predatory pricing accusations and antitrust investigations." → rewrite
UPDATE sentences SET en = 'As S, we have significant leverage, but V-ing risks V-ing ~.', ko = 'S로서 우리는 상당한 협상력을 갖지만, V하면 ~를 V할 위험이 있어요.', highlight = 'As S, ~ risks V-ing' WHERE id = 's_shopping_C2_07';

-- s_shopping_C2_06: "Planned obsolescence strategies, while boosting short-term sales, create negative externalities that increasingly expose brands to reputational and regulatory risk." → rewrite
UPDATE sentences SET en = 'S, while V-ing, create N that expose ~ to ~.', ko = 'S는 V하는 반면, ~를 ~에 노출시키는 N을 창출해요.', highlight = 'S, while V-ing, create N' WHERE id = 's_shopping_C2_06';

-- =====================================================================
-- HOME (42 cards: 0 kept, 42 rewritten)
-- =====================================================================

-- s_home_A1_07: "There is a big table in the dining room." → rewrite
UPDATE sentences SET en = 'There is N in ~.', ko = '~에 N가 있어요.', highlight = 'There is N in ~' WHERE id = 's_home_A1_07';

-- s_home_A1_02: "My house has three bedrooms." → rewrite
UPDATE sentences SET en = 'My house has N.', ko = '우리 집에는 N가 있어요.', highlight = 'My house has N' WHERE id = 's_home_A1_02';

-- s_home_A1_04: "I sleep in the bedroom." → rewrite
UPDATE sentences SET en = 'I V in N.', ko = 'N에서 V해요.', highlight = 'I V in N' WHERE id = 's_home_A1_04';

-- s_home_A1_01: "I live in an apartment." → rewrite
UPDATE sentences SET en = 'I live in N.', ko = 'N에 살아요.', highlight = 'I live in N' WHERE id = 's_home_A1_01';

-- s_home_A1_03: "Where is the bathroom, please?" → rewrite
UPDATE sentences SET en = 'Where is N, please?', ko = 'N가 어디에 있나요?', highlight = 'Where is N' WHERE id = 's_home_A1_03';

-- s_home_A1_05: "The kitchen is next to the living room." → rewrite
UPDATE sentences SET en = 'A is next to B.', ko = 'A는 B 옆에 있어요.', highlight = 'A is next to B' WHERE id = 's_home_A1_05';

-- s_home_A1_06: "I open the window every morning." → rewrite
UPDATE sentences SET en = 'I V every morning.', ko = '저는 매일 아침 V해요.', highlight = 'V every morning' WHERE id = 's_home_A1_06';

-- s_home_A2_01: "My apartment is quite small but very cosy." → rewrite
UPDATE sentences SET en = 'S is quite ADJ but very ADJ.', ko = 'S는 꽤 ADJ하지만 매우 ADJ해요.', highlight = 'quite ADJ but very ADJ' WHERE id = 's_home_A2_01';

-- s_home_A2_02: "How much is the rent per month?" → rewrite
UPDATE sentences SET en = 'How much is N per month?', ko = '월 N가 얼마예요?', highlight = 'How much is N per month' WHERE id = 's_home_A2_02';

-- s_home_A2_06: "The heating isn't working properly." → rewrite
UPDATE sentences SET en = 'S isn''t working properly.', ko = 'S가 제대로 작동하지 않아요.', highlight = 'S isn''t working properly' WHERE id = 's_home_A2_06';

-- s_home_A2_05: "Could you please turn down the music? The walls are thin." → rewrite
UPDATE sentences SET en = 'Could you please V?', ko = 'V해 주실 수 있나요?', highlight = 'Could you please V' WHERE id = 's_home_A2_05';

-- s_home_A2_04: "We need to clean the apartment before moving out." → rewrite
UPDATE sentences SET en = 'We need to V before V-ing.', ko = 'V하기 전에 V해야 해요.', highlight = 'before V-ing' WHERE id = 's_home_A2_04';

-- s_home_A2_07: "I share a flat with two other people." → rewrite
UPDATE sentences SET en = 'I share N with ~.', ko = '~와 함께 N을 같이 써요.', highlight = 'I share N with ~' WHERE id = 's_home_A2_07';

-- s_home_A2_03: "The landlord is responsible for repairs." → rewrite
UPDATE sentences SET en = 'S is responsible for N.', ko = 'S가 N에 대한 책임이 있어요.', highlight = 'S is responsible for N' WHERE id = 's_home_A2_03';

-- s_home_B1_07: "The property comes with off-street parking." → rewrite
UPDATE sentences SET en = 'S comes with N.', ko = 'S에는 N가 포함돼요.', highlight = 'S comes with N' WHERE id = 's_home_B1_07';

-- s_home_B1_04: "We're thinking of having the kitchen renovated." → rewrite
UPDATE sentences SET en = 'We''re thinking of having N V-ed.', ko = 'N을 V하는 것을 고려하고 있어요.', highlight = 'thinking of having N V-ed' WHERE id = 's_home_B1_04';

-- s_home_B1_01: "I'd like to sign a twelve-month lease if possible." → rewrite
UPDATE sentences SET en = 'I''d like to V if possible.', ko = '가능하다면 V하고 싶어요.', highlight = 'V if possible' WHERE id = 's_home_B1_01';

-- s_home_B1_03: "The landlord agreed to refund the deposit within two weeks." → rewrite
UPDATE sentences SET en = 'S agreed to V within ~.', ko = 'S가 ~ 이내에 V하기로 했어요.', highlight = 'agreed to V within ~' WHERE id = 's_home_B1_03';

-- s_home_B1_02: "Are utilities included in the rent?" → rewrite
UPDATE sentences SET en = 'Are N included in ~?', ko = '~에 N가 포함되어 있나요?', highlight = 'Are N included in ~' WHERE id = 's_home_B1_02';

-- s_home_B1_06: "We need to give one month's notice before moving out." → rewrite
UPDATE sentences SET en = 'We need to give ~ notice before V-ing.', ko = 'V하기 전에 ~ 통보를 해야 해요.', highlight = 'give ~ notice before V-ing' WHERE id = 's_home_B1_06';

-- s_home_B1_05: "The maintenance fee covers communal area cleaning." → rewrite
UPDATE sentences SET en = 'S covers N.', ko = 'S에 N가 포함돼요.', highlight = 'S covers N' WHERE id = 's_home_B1_05';

-- s_home_B2_03: "We're hoping to get planning permission for a rear extension." → rewrite
UPDATE sentences SET en = 'We''re hoping to V.', ko = 'V하기를 바라고 있어요.', highlight = 'We''re hoping to V' WHERE id = 's_home_B2_03';

-- s_home_B2_07: "There is a restrictive covenant preventing any alteration to the façade." → rewrite
UPDATE sentences SET en = 'There is N preventing ~.', ko = '~를 금지하는 N가 있어요.', highlight = 'N preventing ~' WHERE id = 's_home_B2_07';

-- s_home_B2_06: "The location is ideal for commuters, with excellent transport links." → rewrite
UPDATE sentences SET en = 'S is ideal for N.', ko = 'S는 N에게 이상적이에요.', highlight = 'S is ideal for N' WHERE id = 's_home_B2_06';

-- s_home_B2_05: "We decided to invest in eco-friendly insulation to cut our energy bills." → rewrite
UPDATE sentences SET en = 'We decided to invest in N to V.', ko = 'V하기 위해 N에 투자하기로 했어요.', highlight = 'decided to invest in N' WHERE id = 's_home_B2_05';

-- s_home_B2_04: "The current market valuation sits at around four hundred thousand." → rewrite
UPDATE sentences SET en = 'S sits at around N.', ko = 'S는 약 N 정도예요.', highlight = 'sits at around N' WHERE id = 's_home_B2_04';

-- s_home_B2_02: "The interior design blends minimalist and industrial styles." → rewrite
UPDATE sentences SET en = 'S blends A and B.', ko = 'S는 A와 B를 혼합해요.', highlight = 'blends A and B' WHERE id = 's_home_B2_02';

-- s_home_B2_01: "The property has been recently renovated to a high standard." → rewrite
UPDATE sentences SET en = 'S has been recently V-ed to a high standard.', ko = 'S는 최근에 고급 수준으로 V됐어요.', highlight = 'V-ed to a high standard' WHERE id = 's_home_B2_01';

-- s_home_C1_02: "The lease contains an alienation clause that prohibits subletting without consent." → rewrite
UPDATE sentences SET en = 'S contains N that prohibits ~.', ko = 'S에는 ~를 금지하는 N가 포함돼 있어요.', highlight = 'contains N that prohibits ~' WHERE id = 's_home_C1_02';

-- s_home_C1_04: "The arbitration panel ruled in favour of the tenant regarding the deposit." → rewrite
UPDATE sentences SET en = 'S ruled in favour of N regarding ~.', ko = 'S가 ~에 대해 N에게 유리한 판결을 내렸어요.', highlight = 'ruled in favour of N' WHERE id = 's_home_C1_04';

-- s_home_C1_03: "We submitted a claim for dilapidations at the end of the tenancy." → rewrite
UPDATE sentences SET en = 'We submitted a claim for N.', ko = 'N에 대한 청구를 제출했어요.', highlight = 'submitted a claim for N' WHERE id = 's_home_C1_03';

-- s_home_C1_06: "The property is subject to a restrictive covenant that limits its use to residential purposes only." → rewrite
UPDATE sentences SET en = 'S is subject to N.', ko = 'S는 N의 적용을 받아요.', highlight = 'is subject to N' WHERE id = 's_home_C1_06';

-- s_home_C1_05: "An easement was granted to the utility company for access to the underground pipes." → rewrite
UPDATE sentences SET en = 'N was granted to ~ for ~.', ko = '~를 위해 ~에게 N가 부여됐어요.', highlight = 'N was granted to ~' WHERE id = 's_home_C1_05';

-- s_home_C1_01: "The solicitor advised us to conduct full due diligence before exchanging contracts." → rewrite
UPDATE sentences SET en = 'S advised us to V before V-ing.', ko = 'S가 V하기 전에 V하라고 조언했어요.', highlight = 'advised us to V before V-ing' WHERE id = 's_home_C1_01';

-- s_home_C1_07: "Failure to disclose a known encumbrance may constitute a breach of contract." → rewrite
UPDATE sentences SET en = 'Failure to V may constitute N.', ko = 'V하지 않으면 N에 해당할 수 있어요.', highlight = 'Failure to V may constitute N' WHERE id = 's_home_C1_07';

-- s_home_C2_07: "The strata committee voted to levy a special assessment to fund roof remediation works." → rewrite
UPDATE sentences SET en = 'S voted to V to fund ~.', ko = 'S가 ~ 비용 마련을 위해 V하기로 의결했어요.', highlight = 'voted to V to fund ~' WHERE id = 's_home_C2_07';

-- s_home_C2_01: "The cadastral survey revealed a significant encroachment across the boundary line." → rewrite
UPDATE sentences SET en = 'S revealed a significant N.', ko = 'S 결과 상당한 N가 밝혀졌어요.', highlight = 'S revealed a significant N' WHERE id = 's_home_C2_01';

-- s_home_C2_02: "The mortgagee exercised its right to possession following persistent arrears." → rewrite
UPDATE sentences SET en = 'S exercised its right to N following ~.', ko = '~를 이유로 S가 N에 대한 권리를 행사했어요.', highlight = 'exercised its right to N' WHERE id = 's_home_C2_02';

-- s_home_C2_06: "A lis pendens was registered to protect the plaintiff's equitable interest pending trial." → rewrite
UPDATE sentences SET en = 'N was registered to protect ~ pending ~.', ko = '~ 계류 중 ~를 보호하기 위해 N가 등록됐어요.', highlight = 'to protect ~ pending ~' WHERE id = 's_home_C2_06';

-- s_home_C2_03: "The court implied a right of way as a quasi-easement arising from the prior common ownership." → rewrite
UPDATE sentences SET en = 'S implied N as A arising from ~.', ko = 'S가 ~에서 발생하는 A로서 N을 묵시적으로 인정했어요.', highlight = 'implied N as A arising from ~' WHERE id = 's_home_C2_03';

-- s_home_C2_04: "Under the doctrine of adverse possession, he claimed title to the strip of land." → rewrite
UPDATE sentences SET en = 'Under the doctrine of N, S claimed ~.', ko = 'N 원칙에 따라 S는 ~를 주장했어요.', highlight = 'Under the doctrine of N' WHERE id = 's_home_C2_04';

-- s_home_C2_05: "The beneficial interest vested in the claimant was not apparent from the registered title." → rewrite
UPDATE sentences SET en = 'N vested in S was not apparent from ~.', ko = 'S에게 귀속된 N는 ~에서 명확하지 않았어요.', highlight = 'N vested in S' WHERE id = 's_home_C2_05';

-- ============================================
-- batch-2-life.sql
-- ============================================
-- Batch 2: health, weather, transport, media, education
-- 210 reviewed, 205 rewritten, 5 kept as-is
-- Kept: s_health_A1_01, s_health_A1_03, s_weather_A1_01, s_education_A1_04, s_education_A1_06

-- ============================================================
-- HEALTH (35)
-- ============================================================
UPDATE sentences SET en='I have a N.', ko='N이 있어요.', highlight='have a N' WHERE id='s_health_A1_02';
-- s_health_A1_01 kept (fixed idiom)
UPDATE sentences SET en='I need to V.', ko='V해야 해요.', highlight='need to V' WHERE id='s_health_A1_05';
UPDATE sentences SET en='I feel Adj today.', ko='오늘 Adj해요.', highlight='feel Adj' WHERE id='s_health_A1_06';
UPDATE sentences SET en='My N hurts.', ko='N이 아파요.', highlight='My N hurts' WHERE id='s_health_A1_04';
UPDATE sentences SET en='I think I V-ed.', ko='V한 것 같아요.', highlight='I think S' WHERE id='s_health_A1_07';
-- s_health_A1_03 kept (parallel to A1_02 redundant)
UPDATE sentences SET en='I''d like to V, please.', ko='V하고 싶어요.', highlight='I''d like to V' WHERE id='s_health_A2_01';
UPDATE sentences SET en='Is there a N near here?', ko='근처에 N이 있나요?', highlight='Is there a N near here' WHERE id='s_health_A2_07';
UPDATE sentences SET en='How often should I V?', ko='얼마나 자주 V해야 하나요?', highlight='How often should I V' WHERE id='s_health_A2_05';
UPDATE sentences SET en='I''m allergic to N.', ko='저는 N 알레르기가 있어요.', highlight='allergic to N' WHERE id='s_health_A2_04';
UPDATE sentences SET en='My N is ~.', ko='제 N은 ~예요.', highlight='My N is ~' WHERE id='s_health_A2_06';
UPDATE sentences SET en='Do I need N for this?', ko='이거 N이 필요한가요?', highlight='Do I need N for' WHERE id='s_health_A2_03';
UPDATE sentences SET en='I''ve been V-ing for ~.', ko='~동안 V해 왔어요.', highlight='have been V-ing for' WHERE id='s_health_A2_02';
UPDATE sentences SET en='I''ve been prescribed N for ~.', ko='~동안 N을 처방받았어요.', highlight='have been prescribed N for' WHERE id='s_health_B1_07';
UPDATE sentences SET en='S told me to V.', ko='S가 V하라고 했어요.', highlight='told me to V' WHERE id='s_health_B1_06';
UPDATE sentences SET en='What are the N of this?', ko='이것의 N은 무엇인가요?', highlight='What are the N of' WHERE id='s_health_B1_04';
UPDATE sentences SET en='I''ve been under a lot of N lately.', ko='요즘 N을 많이 받고 있어요.', highlight='been under a lot of N' WHERE id='s_health_B1_05';
UPDATE sentences SET en='I''ve been experiencing N for about ~.', ko='약 ~동안 N을 겪고 있어요.', highlight='have been experiencing N for' WHERE id='s_health_B1_01';
UPDATE sentences SET en='S gets worse when S V.', ko='S할 때 S가 더 심해져요.', highlight='gets worse when S V' WHERE id='s_health_B1_02';
UPDATE sentences SET en='Could you refer me to N?', ko='N에게 의뢰해 주실 수 있나요?', highlight='Could you refer me to N' WHERE id='s_health_B1_03';
UPDATE sentences SET en='S can have a profound impact on N.', ko='S는 N에 심각한 영향을 미칠 수 있어요.', highlight='have a profound impact on N' WHERE id='s_health_B2_03';
UPDATE sentences SET en='V-ing N is crucial for ~.', ko='N을 V하는 것이 ~에 매우 중요해요.', highlight='V-ing N is crucial for' WHERE id='s_health_B2_01';
UPDATE sentences SET en='I''ve adopted a more Adj approach to V-ing.', ko='V하는 데 더 Adj한 접근 방식을 채택했어요.', highlight='adopted a more Adj approach to V-ing' WHERE id='s_health_B2_04';
UPDATE sentences SET en='S is closely linked to N.', ko='S는 N과 밀접한 관련이 있어요.', highlight='closely linked to N' WHERE id='s_health_B2_05';
UPDATE sentences SET en='S depends largely on how S V.', ko='S는 S가 어떻게 V하는지에 크게 달려 있어요.', highlight='depends largely on how' WHERE id='s_health_B2_06';
UPDATE sentences SET en='S is far more Adj than V-ing N.', ko='S는 N을 V하는 것보다 훨씬 더 Adj해요.', highlight='far more Adj than' WHERE id='s_health_B2_07';
UPDATE sentences SET en='S can significantly reduce the risk of N.', ko='S는 N의 위험을 크게 줄일 수 있어요.', highlight='significantly reduce the risk of N' WHERE id='s_health_B2_02';
UPDATE sentences SET en='We should consider N to V.', ko='V하기 위해 N을 고려해야 해요.', highlight='consider N to V' WHERE id='s_health_C1_03';
UPDATE sentences SET en='S''s symptoms are consistent with N.', ko='S의 증상은 N과 일치해요.', highlight='consistent with N' WHERE id='s_health_C1_07';
UPDATE sentences SET en='S has been in remission for ~.', ko='S는 ~동안 관해 상태를 유지하고 있어요.', highlight='been in remission for' WHERE id='s_health_C1_05';
UPDATE sentences SET en='Given the N involved, we need to V.', ko='관련된 N을 고려할 때 V해야 해요.', highlight='Given the N involved' WHERE id='s_health_C1_01';
UPDATE sentences SET en='There is a significant risk of N with ~.', ko='~할 경우 N의 위험이 상당히 높아요.', highlight='significant risk of N with' WHERE id='s_health_C1_06';
UPDATE sentences SET en='Elevated N suggest the presence of N.', ko='높은 N은 N의 존재를 시사해요.', highlight='Elevated N suggest the presence of' WHERE id='s_health_C1_04';
UPDATE sentences SET en='The N of this condition remains poorly understood.', ko='이 상태의 N은 아직 제대로 이해되지 않았어요.', highlight='N remains poorly understood' WHERE id='s_health_C1_02';
UPDATE sentences SET en='N findings confirmed the presence of N.', ko='N 소견이 N의 존재를 확인했어요.', highlight='findings confirmed the presence of' WHERE id='s_health_C2_02';
UPDATE sentences SET en='The N of this compound are highly variable between patients.', ko='이 화합물의 N은 환자마다 상당히 다양해요.', highlight='highly variable between patients' WHERE id='s_health_C2_01';
UPDATE sentences SET en='The N of the event require ongoing N.', ko='그 사건의 N은 지속적인 N이 필요해요.', highlight='require ongoing N' WHERE id='s_health_C2_04';
UPDATE sentences SET en='N effects were observed in N, warranting caution in N.', ko='N에서 N 효과가 관찰됐으며, N에서 주의가 필요해요.', highlight='warranting caution in N' WHERE id='s_health_C2_06';
UPDATE sentences SET en='Prolonged N increases the risk of N.', ko='장기적인 N은 N의 위험을 높여요.', highlight='increases the risk of N' WHERE id='s_health_C2_03';
UPDATE sentences SET en='N were documented in ~ percent of cases.', ko='N이 사례의 ~퍼센트에서 기록됐어요.', highlight='N were documented in' WHERE id='s_health_C2_05';
UPDATE sentences SET en='S was attributed to N.', ko='S는 N에 기인했어요.', highlight='was attributed to N' WHERE id='s_health_C2_07';

-- ============================================================
-- WEATHER (35)
-- ============================================================
UPDATE sentences SET en='It''s V-ing outside.', ko='밖에 V하고 있어요.', highlight='It''s V-ing' WHERE id='s_weather_A1_04';
UPDATE sentences SET en='It is Adj today, isn''t it?', ko='오늘 Adj하죠, 그렇지 않나요?', highlight='isn''t it' WHERE id='s_weather_A1_07';
UPDATE sentences SET en='It''s Adj today.', ko='오늘은 Adj해요.', highlight='It''s Adj today' WHERE id='s_weather_A1_03';
UPDATE sentences SET en='Is it A or B outside?', ko='밖에 A인가요, B인가요?', highlight='A or B' WHERE id='s_weather_A1_02';
-- s_weather_A1_01 kept (fixed pattern phrase itself)
UPDATE sentences SET en='What is the weather like in N?', ko='N 날씨는 어때요?', highlight='weather like in N' WHERE id='s_weather_A1_06';
UPDATE sentences SET en='Don''t forget your N!', ko='N 챙기는 거 잊지 마세요!', highlight='Don''t forget your N' WHERE id='s_weather_A1_05';
UPDATE sentences SET en='S is really Adj today, don''t you think?', ko='오늘 S가 정말 Adj하죠, 그렇지 않나요?', highlight='don''t you think' WHERE id='s_weather_A2_01';
UPDATE sentences SET en='It was so Adj that S could barely V.', ko='너무 Adj해서 S가 V하기 어려웠어요.', highlight='so Adj that S could barely V' WHERE id='s_weather_A2_05';
UPDATE sentences SET en='S dropped suddenly overnight.', ko='S가 밤 사이에 갑자기 떨어졌어요.', highlight='dropped suddenly overnight' WHERE id='s_weather_A2_06';
UPDATE sentences SET en='I prefer A to B.', ko='B보다 A를 더 좋아해요.', highlight='prefer A to B' WHERE id='s_weather_A2_07';
UPDATE sentences SET en='It''s getting Adj-er these days.', ko='요즘 점점 Adj해지고 있어요.', highlight='It''s getting Adj-er' WHERE id='s_weather_A2_02';
UPDATE sentences SET en='It looks like S is going to V.', ko='S가 V할 것 같아요.', highlight='It looks like S is going to V' WHERE id='s_weather_A2_03';
UPDATE sentences SET en='The forecast says S will V.', ko='예보에서 S가 V할 거라고 해요.', highlight='The forecast says S will V' WHERE id='s_weather_A2_04';
UPDATE sentences SET en='You should V — S is expected to V later.', ko='V하는 게 좋겠어요 — 나중에 S가 V할 거예요.', highlight='expected to V' WHERE id='s_weather_B1_02';
UPDATE sentences SET en='I would recommend V-ing in case S V.', ko='S가 V할 경우를 대비해 V하길 권해요.', highlight='in case S V' WHERE id='s_weather_B1_04';
UPDATE sentences SET en='There''s a N warning in place for N.', ko='N에 N 경보가 발령되어 있어요.', highlight='There''s a N warning in place' WHERE id='s_weather_B1_06';
UPDATE sentences SET en='According to the forecast, there''s a high chance of N.', ko='예보에 따르면 N의 가능성이 높아요.', highlight='According to the forecast' WHERE id='s_weather_B1_01';
UPDATE sentences SET en='S is making it feel Adj-er than it actually is.', ko='S 때문에 실제보다 더 Adj하게 느껴져요.', highlight='S is making it feel Adj-er' WHERE id='s_weather_B1_03';
UPDATE sentences SET en='With N above ~, N is not advisable.', ko='N이 ~를 넘으니 N은 권장하지 않아요.', highlight='With N above ~, not advisable' WHERE id='s_weather_B1_07';
UPDATE sentences SET en='S has been unusually Adj for this time of year.', ko='이맘때치고는 S가 유난히 Adj해요.', highlight='unusually Adj for this time of year' WHERE id='s_weather_B1_05';
UPDATE sentences SET en='S has become increasingly Adj due to N.', ko='N으로 인해 S가 점점 더 Adj해지고 있어요.', highlight='increasingly Adj due to N' WHERE id='s_weather_B2_02';
UPDATE sentences SET en='The correlation between A and B is well established.', ko='A와 B 사이의 상관관계는 잘 확립되어 있어요.', highlight='correlation between A and B is well established' WHERE id='s_weather_B2_04';
UPDATE sentences SET en='Prolonged N are threatening N for ~.', ko='장기 N이 ~의 N을 위협하고 있어요.', highlight='threatening N' WHERE id='s_weather_B2_05';
UPDATE sentences SET en='S is intensifying the frequency and severity of N.', ko='S가 N의 빈도와 심각성을 증가시키고 있어요.', highlight='intensifying the frequency and severity of N' WHERE id='s_weather_B2_01';
UPDATE sentences SET en='S must implement ambitious policies to V.', ko='S는 V하기 위한 야심찬 정책을 시행해야 해요.', highlight='implement ambitious policies to V' WHERE id='s_weather_B2_07';
UPDATE sentences SET en='S poses an existential threat to N.', ko='S는 N에 실존적 위협을 가하고 있어요.', highlight='pose an existential threat to N' WHERE id='s_weather_B2_06';
UPDATE sentences SET en='There is growing scientific consensus that S V.', ko='S가 V한다는 과학적 공감대가 커지고 있어요.', highlight='growing scientific consensus that' WHERE id='s_weather_B2_03';
UPDATE sentences SET en='S illustrate how N can reverse N.', ko='S는 N이 N을 되돌릴 수 있다는 것을 보여줘요.', highlight='illustrate how N can reverse' WHERE id='s_weather_C1_01';
UPDATE sentences SET en='The N of N relative to N — often termed N — is V-ing N.', ko='N에 비한 N, 즉 N 현상이 N을 V하고 있어요.', highlight='relative to ~, often termed' WHERE id='s_weather_C1_02';
UPDATE sentences SET en='N such as ~ have profound implications for N.', ko='~와 같은 N은 N에 심대한 영향을 미쳐요.', highlight='have profound implications for N' WHERE id='s_weather_C1_03';
UPDATE sentences SET en='Without significant reductions in N, V-ing becomes increasingly probable.', ko='N을 크게 줄이지 않으면 V할 가능성이 점점 높아져요.', highlight='Without significant reductions in N, becomes increasingly probable' WHERE id='s_weather_C1_04';
UPDATE sentences SET en='S is sensitive to N, which could disrupt N.', ko='S는 N에 민감하며, 이는 N을 교란할 수 있어요.', highlight='sensitive to N, which could disrupt' WHERE id='s_weather_C1_05';
UPDATE sentences SET en='S project N, altering N.', ko='S는 N을 예측하며, 이는 N을 변화시켜요.', highlight='project N, altering N' WHERE id='s_weather_C1_06';
UPDATE sentences SET en='Robust N have established that S was virtually impossible without N.', ko='강력한 N은 S가 N 없이는 사실상 불가능했음을 규명했어요.', highlight='virtually impossible without N' WHERE id='s_weather_C1_07';
UPDATE sentences SET en='N triggered by N — notably N — could render N insufficient.', ko='N으로 촉발된 N, 특히 N은 N을 불충분하게 만들 수 있어요.', highlight='render N insufficient' WHERE id='s_weather_C2_02';
UPDATE sentences SET en='The N challenge of V-ing N lies in the N of N, which resist N.', ko='N을 V하는 N 과제는 N에 저항하는 N의 N에 있어요.', highlight='challenge of V-ing lies in N, which resist' WHERE id='s_weather_C2_07';
UPDATE sentences SET en='N proxies, including N, reveal that S is anomalous relative to N.', ko='N을 포함한 N 대리 지표는 S가 N에 비해 이례적임을 보여줘요.', highlight='reveal that S is anomalous relative to' WHERE id='s_weather_C2_01';
UPDATE sentences SET en='N from N, particularly N, constitutes a non-trivial fraction of N that N could rapidly reverse.', ko='특히 N의 N은 N이 신속히 되돌릴 수 있는 N의 비무시적 비율을 구성해요.', highlight='non-trivial fraction of N that N could rapidly reverse' WHERE id='s_weather_C2_06';
UPDATE sentences SET en='N corroborate N, lending credibility to projections that S will V.', ko='N은 N을 입증하며, S가 V할 것이라는 전망에 신뢰성을 부여해요.', highlight='corroborate, lending credibility to projections that' WHERE id='s_weather_C2_05';
UPDATE sentences SET en='The convergence of A, B, and C represents a compound risk that N may underestimate.', ko='A, B, C의 수렴은 N이 과소평가할 수 있는 복합적 위험을 나타내요.', highlight='convergence of A, B, and C represents a compound risk' WHERE id='s_weather_C2_04';
UPDATE sentences SET en='Disentangling A from B requires N that account for N.', ko='A와 B를 분리하려면 N을 고려하는 N이 필요해요.', highlight='Disentangling A from B requires' WHERE id='s_weather_C2_03';

-- ============================================================
-- TRANSPORT (35)
-- ============================================================
UPDATE sentences SET en='Excuse me, can you show me the way to N?', ko='실례합니다, N 가는 길을 알려주실 수 있나요?', highlight='can you show me the way to N' WHERE id='s_transport_A1_07';
UPDATE sentences SET en='How do I get to N?', ko='N에 어떻게 가나요?', highlight='How do I get to N' WHERE id='s_transport_A1_02';
UPDATE sentences SET en='V and then V.', ko='V한 후에 V하세요.', highlight='V and then V' WHERE id='s_transport_A1_06';
UPDATE sentences SET en='Is N far from here?', ko='N이 여기서 멀어요?', highlight='Is N far from here' WHERE id='s_transport_A1_03';
UPDATE sentences SET en='Where is N?', ko='N이 어디예요?', highlight='Where is N' WHERE id='s_transport_A1_01';
UPDATE sentences SET en='Turn ~ at N.', ko='N에서 ~쪽으로 도세요.', highlight='Turn ~ at N' WHERE id='s_transport_A1_05';
UPDATE sentences SET en='Which N goes to N?', ko='N까지 어느 N이 가나요?', highlight='Which N goes to N' WHERE id='s_transport_A1_04';
UPDATE sentences SET en='Can I use this N to pay for N?', ko='이 N으로 N 요금을 낼 수 있나요?', highlight='Can I use this N to pay for' WHERE id='s_transport_A2_07';
UPDATE sentences SET en='Where do I transfer for N?', ko='N으로 환승하려면 어디서 갈아타나요?', highlight='Where do I transfer for N' WHERE id='s_transport_A2_04';
UPDATE sentences SET en='Is there a discount for N?', ko='N 할인이 있나요?', highlight='Is there a discount for N' WHERE id='s_transport_A2_05';
UPDATE sentences SET en='What time is the next N to N?', ko='다음 N행 N은 몇 시예요?', highlight='What time is the next N to N' WHERE id='s_transport_A2_06';
UPDATE sentences SET en='How much is the fare to N?', ko='N까지 요금이 얼마예요?', highlight='How much is the fare to N' WHERE id='s_transport_A2_02';
UPDATE sentences SET en='I''d like a single ticket to N, please.', ko='N까지 편도 표 한 장 주세요.', highlight='I''d like a single ticket to N' WHERE id='s_transport_A2_01';
UPDATE sentences SET en='Do I need to transfer to get to N?', ko='N까지 가려면 환승해야 하나요?', highlight='Do I need to transfer to get to N' WHERE id='s_transport_A2_03';
UPDATE sentences SET en='There are N, so S had to take a detour through N.', ko='N이 있어서 S는 N을 통해 우회해야 했어요.', highlight='take a detour through N' WHERE id='s_transport_B1_05';
UPDATE sentences SET en='Is there a more direct route, or do we have to go through N?', ko='더 직접적인 경로가 있나요, 아니면 N을 통해야 하나요?', highlight='a more direct route, or' WHERE id='s_transport_B1_06';
UPDATE sentences SET en='I''m sorry, I''m going to be a bit late — there''s N on N.', ko='죄송해요, N에 N 때문에 조금 늦을 것 같아요.', highlight='I''m going to be a bit late' WHERE id='s_transport_B1_01';
UPDATE sentences SET en='Watch out — there''s a N just after N ahead.', ko='주의하세요 — 바로 앞 N 지나서 N이 있어요.', highlight='Watch out — there''s a N' WHERE id='s_transport_B1_07';
UPDATE sentences SET en='Could you take A instead of B? It might be Adj-er.', ko='B 대신 A로 가주실 수 있나요? 더 Adj할 수 있어요.', highlight='A instead of B' WHERE id='s_transport_B1_02';
UPDATE sentences SET en='S is really getting to me — S V.', ko='S가 정말 힘들어요 — S V.', highlight='S is getting to me' WHERE id='s_transport_B1_03';
UPDATE sentences SET en='I usually V with N to save on N.', ko='N을 아끼려고 N과 V를 해요.', highlight='V with N to save on N' WHERE id='s_transport_B1_04';
UPDATE sentences SET en='S has reached a critical point and something has to be done.', ko='S가 임계점에 달했으며 조치가 필요해요.', highlight='reached a critical point' WHERE id='s_transport_B2_01';
UPDATE sentences SET en='S missed N because S arrived ~ behind schedule.', ko='S가 ~ 늦게 도착해서 N을 놓쳤어요.', highlight='behind schedule' WHERE id='s_transport_B2_05';
UPDATE sentences SET en='S will require significant N spread over ~ years.', ko='S는 ~년에 걸친 상당한 N가 필요해요.', highlight='significant N spread over ~ years' WHERE id='s_transport_B2_06';
UPDATE sentences SET en='S are advised to V due to N.', ko='N으로 인해 S는 V하시기 바랍니다.', highlight='are advised to V' WHERE id='s_transport_B2_07';
UPDATE sentences SET en='S was caused by N, which disrupted N.', ko='S는 N으로 발생했으며, 이로 인해 N이 중단됐어요.', highlight='S was caused by N, which disrupted' WHERE id='s_transport_B2_02';
UPDATE sentences SET en='The introduction of N has significantly reduced N.', ko='N의 도입이 N을 크게 줄였어요.', highlight='significantly reduced N' WHERE id='s_transport_B2_04';
UPDATE sentences SET en='Despite N, N were put in place within ~.', ko='N에도 불구하고 ~ 안에 N이 마련됐어요.', highlight='were put in place within' WHERE id='s_transport_B2_03';
UPDATE sentences SET en='The challenge lies in V-ing without disproportionately burdening N.', ko='N에 과도한 부담을 주지 않고 V하는 것이 과제예요.', highlight='without disproportionately burdening N' WHERE id='s_transport_C1_03';
UPDATE sentences SET en='S is central to N''s strategy for V-ing N.', ko='S는 N의 N V 전략의 핵심이에요.', highlight='central to N''s strategy for' WHERE id='s_transport_C1_04';
UPDATE sentences SET en='S holds considerable promise, but N have yet to keep pace with N.', ko='S는 상당한 가능성을 지니고 있지만, N은 아직 N을 따라가지 못하고 있어요.', highlight='have yet to keep pace with N' WHERE id='s_transport_C1_05';
UPDATE sentences SET en='S have disrupted N, compelling N to V.', ko='S가 N을 혼란에 빠뜨려 N이 V하도록 압박했어요.', highlight='compelling N to V' WHERE id='s_transport_C1_07';
UPDATE sentences SET en='S has proven effective in N that have V-ed.', ko='V한 N에서 S가 효과적임이 입증됐어요.', highlight='has proven effective in N that' WHERE id='s_transport_C1_02';
UPDATE sentences SET en='V-ing N is critical if S is to V.', ko='S가 V하려면 N을 V하는 것이 필수적이에요.', highlight='is critical if S is to V' WHERE id='s_transport_C1_06';
UPDATE sentences SET en='S requires not only A but also B.', ko='S는 A뿐 아니라 B도 필요로 해요.', highlight='not only A but also B' WHERE id='s_transport_C1_01';
UPDATE sentences SET en='The proliferation of N demands a rethinking of N.', ko='N의 확산은 N의 재고를 요구해요.', highlight='demands a rethinking of N' WHERE id='s_transport_C2_03';
UPDATE sentences SET en='S, often overlooked in N, disproportionately affects N.', ko='N에서 종종 간과되는 S는 N에 불균형적인 영향을 미쳐요.', highlight='disproportionately affects N' WHERE id='s_transport_C2_06';
UPDATE sentences SET en='V-ing N will require breakthroughs in N, given that S remains insufficient for N.', ko='S가 N에 부족하다는 점을 감안할 때, N을 V하는 것은 N의 혁신이 필요해요.', highlight='given that S remains insufficient' WHERE id='s_transport_C2_02';
UPDATE sentences SET en='N, when coupled with N, enables S to V.', ko='N은 N과 결합될 때 S가 V할 수 있게 해요.', highlight='when coupled with N, enables S to V' WHERE id='s_transport_C2_05';
UPDATE sentences SET en='The N associated with N — including ~ — are rarely captured in N, necessitating N.', ko='N과 관련된 N(~ 포함)은 N에 반영되는 경우가 드물어 N이 필요해요.', highlight='necessitating N' WHERE id='s_transport_C2_01';
UPDATE sentences SET en='S presupposes N across N, a condition that N alone are unlikely to deliver without N.', ko='S는 N에서의 N을 전제로 하며, 이는 N 없이는 N만으로 실현되기 어려운 조건이에요.', highlight='presupposes N, a condition that N alone are unlikely to deliver' WHERE id='s_transport_C2_07';
UPDATE sentences SET en='V-ing N hinges on resolving both A and B that currently impede N.', ko='N을 V하는 것은 N을 방해하는 A와 B 모두를 해결하는 데 달려 있어요.', highlight='hinges on resolving both A and B' WHERE id='s_transport_C2_04';

-- ============================================================
-- MEDIA (35)
-- ============================================================
UPDATE sentences SET en='Did you see N?', ko='N 봤어요?', highlight='Did you see N' WHERE id='s_media_A1_01';
UPDATE sentences SET en='Have you heard N?', ko='N 들었어요?', highlight='Have you heard N' WHERE id='s_media_A1_05';
UPDATE sentences SET en='I V on my N every day.', ko='저는 매일 N으로 V해요.', highlight='V on my N every day' WHERE id='s_media_A1_07';
UPDATE sentences SET en='This N is Adj — where did you V it?', ko='이 N 정말 Adj해요. 어디서 V했어요?', highlight='where did you V it' WHERE id='s_media_A1_06';
UPDATE sentences SET en='What are you V-ing?', ko='뭐 V하고 있어요?', highlight='What are you V-ing' WHERE id='s_media_A1_04';
UPDATE sentences SET en='I''ll V you N right now.', ko='지금 N을 V해 줄게요.', highlight='I''ll V you N' WHERE id='s_media_A1_03';
UPDATE sentences SET en='You should V this — it''s really Adj.', ko='이거 V해요. 정말 Adj해요.', highlight='You should V' WHERE id='s_media_A1_02';
UPDATE sentences SET en='I just V-ed N — go check it out!', ko='방금 N을 V했어요. 가서 확인해 봐요!', highlight='I just V-ed, go check it out' WHERE id='s_media_A2_01';
UPDATE sentences SET en='S V-ed N — it already has ~.', ko='S가 N을 V했어요. 벌써 ~이에요.', highlight='already has ~' WHERE id='s_media_A2_05';
UPDATE sentences SET en='I''ve been V-ing N for ~.', ko='~동안 N을 V해 왔어요.', highlight='I''ve been V-ing N for' WHERE id='s_media_A2_03';
UPDATE sentences SET en='Don''t forget to V!', ko='V하는 거 잊지 마세요!', highlight='Don''t forget to V' WHERE id='s_media_A2_02';
UPDATE sentences SET en='Have you seen what''s V-ing today?', ko='오늘 V 중인 게 뭔지 봤어요?', highlight='Have you seen what''s V-ing' WHERE id='s_media_A2_04';
UPDATE sentences SET en='You can find me on N at ~.', ko='N에서 ~으로 찾을 수 있어요.', highlight='You can find me on N at' WHERE id='s_media_A2_06';
UPDATE sentences SET en='I''ve been spending too much time V-ing lately.', ko='요즘 V하면서 시간을 너무 많이 보내고 있어요.', highlight='spending too much time V-ing' WHERE id='s_media_A2_07';
UPDATE sentences SET en='S tells you whether S V.', ko='S가 S가 V하는지 알려줘요.', highlight='tells you whether' WHERE id='s_media_B1_04';
UPDATE sentences SET en='I''m thinking of V-ing — what do you think?', ko='V할까 생각 중이에요. 어떻게 생각해요?', highlight='I''m thinking of V-ing' WHERE id='s_media_B1_05';
UPDATE sentences SET en='Did you see that N went viral overnight?', ko='N이 하룻밤 사이에 바이럴된 거 봤어요?', highlight='went viral overnight' WHERE id='s_media_B1_06';
UPDATE sentences SET en='S keeps V-ing N.', ko='S가 계속 N을 V해요.', highlight='keeps V-ing' WHERE id='s_media_B1_01';
UPDATE sentences SET en='I always V before V-ing N.', ko='N을 V하기 전에 항상 V해요.', highlight='before V-ing N' WHERE id='s_media_B1_07';
UPDATE sentences SET en='If you want N, you need to V.', ko='N을 원하면 V해야 해요.', highlight='If you want N, you need to V' WHERE id='s_media_B1_03';
UPDATE sentences SET en='I''ve been trying to V for about ~ now.', ko='약 ~동안 V하려고 노력 중이에요.', highlight='I''ve been trying to V' WHERE id='s_media_B1_02';
UPDATE sentences SET en='The way S was V-ed really influenced how S V.', ko='S가 V된 방식이 S V에 정말 영향을 줬어요.', highlight='The way S was V-ed' WHERE id='s_media_B2_04';
UPDATE sentences SET en='You need to V before you V N.', ko='N을 V하기 전에 V해야 해요.', highlight='V before you V N' WHERE id='s_media_B2_03';
UPDATE sentences SET en='I''m concerned about how S V.', ko='S가 V하는 게 걱정돼요.', highlight='I''m concerned about how S V' WHERE id='s_media_B2_02';
UPDATE sentences SET en='What concerns me most is N.', ko='가장 걱정되는 건 N이에요.', highlight='What concerns me most is' WHERE id='s_media_B2_07';
UPDATE sentences SET en='S tend to V N.', ko='S는 N을 V하는 경향이 있어요.', highlight='tend to V' WHERE id='s_media_B2_06';
UPDATE sentences SET en='S is clearly designed to V.', ko='S는 명백히 V하도록 설계됐어요.', highlight='clearly designed to V' WHERE id='s_media_B2_01';
UPDATE sentences SET en='It''s hard to tell whether S V.', ko='S가 V한지 판단하기 어려워요.', highlight='It''s hard to tell whether' WHERE id='s_media_B2_05';
UPDATE sentences SET en='The proliferation of N has fundamentally V-ed N.', ko='N의 확산은 N을 근본적으로 V했어요.', highlight='fundamentally V-ed' WHERE id='s_media_C1_02';
UPDATE sentences SET en='Unless S V, S will remain Adj to N.', ko='S가 V하지 않으면 S는 N에 Adj한 상태가 지속돼요.', highlight='Unless S V, S will remain' WHERE id='s_media_C1_07';
UPDATE sentences SET en='S''s N shapes which N S V.', ko='S의 N이 S가 V하는 N을 형성해요.', highlight='N shapes which N' WHERE id='s_media_C1_01';
UPDATE sentences SET en='The erosion of N poses a long-term threat to N.', ko='N의 침식은 N에 장기적인 위협이 돼요.', highlight='poses a long-term threat to N' WHERE id='s_media_C1_06';
UPDATE sentences SET en='S needs to balance A with B.', ko='S는 A와 B의 균형을 잡아야 해요.', highlight='needs to balance A with B' WHERE id='s_media_C1_05';
UPDATE sentences SET en='One could argue that S V.', ko='S가 V한다고 주장할 수 있어요.', highlight='One could argue that' WHERE id='s_media_C1_03';
UPDATE sentences SET en='What''s particularly Adj is the way S V N.', ko='특히 Adj한 것은 S가 N을 V하는 방식이에요.', highlight='What''s particularly Adj is the way' WHERE id='s_media_C1_04';
UPDATE sentences SET en='To the extent that S V, V-ing N is not merely A but B.', ko='S가 V하는 한, N을 V하는 것은 A가 아니라 B예요.', highlight='To the extent that, not merely A but B' WHERE id='s_media_C2_07';
UPDATE sentences SET en='S''s concept of N suggests that S no longer V N but has V-ed N.', ko='S의 N 개념은 S가 더 이상 N을 V하지 않고 N을 V했음을 시사해요.', highlight='no longer V but has V-ed' WHERE id='s_media_C2_01';
UPDATE sentences SET en='S reveals how N encode N that S may V without N.', ko='S는 N이 S가 N 없이 V할 수 있는 N을 어떻게 코드화하는지 드러내요.', highlight='encode N that S may V' WHERE id='s_media_C2_06';
UPDATE sentences SET en='From a N perspective, S fundamentally V N.', ko='N적 관점에서 보면 S는 N을 근본적으로 V해요.', highlight='From a N perspective' WHERE id='s_media_C2_02';
UPDATE sentences SET en='The N of N is arguably the defining logic of N.', ko='N의 N은 N의 결정적 논리라고 볼 수 있어요.', highlight='is arguably the defining logic of' WHERE id='s_media_C2_03';
UPDATE sentences SET en='One cannot disentangle A from B.', ko='A는 B에서 분리할 수 없어요.', highlight='One cannot disentangle A from B' WHERE id='s_media_C2_04';
UPDATE sentences SET en='The N implications of N call into question the N status of N.', ko='N의 N 함의는 N의 N 지위에 의문을 제기해요.', highlight='call into question the N status of' WHERE id='s_media_C2_05';

-- ============================================================
-- EDUCATION (35)
-- ============================================================
-- s_education_A1_04 kept (fixed polite request)
UPDATE sentences SET en='I like N because S V.', ko='S V해서 N이 좋아요.', highlight='I like N because' WHERE id='s_education_A1_02';
UPDATE sentences SET en='What''s your favorite N?', ko='제일 좋아하는 N이 뭐예요?', highlight='What''s your favorite N' WHERE id='s_education_A1_01';
UPDATE sentences SET en='S have N ~.', ko='S는 ~에 N이 있어요.', highlight='S have N' WHERE id='s_education_A1_07';
UPDATE sentences SET en='What does N mean?', ko='N은 무슨 뜻이에요?', highlight='What does N mean' WHERE id='s_education_A1_05';
-- s_education_A1_06 kept (fixed help-request idiom)
UPDATE sentences SET en='How do you spell N?', ko='N 철자가 어떻게 돼요?', highlight='How do you spell N' WHERE id='s_education_A1_03';
UPDATE sentences SET en='I failed N, so I need to V.', ko='N에서 떨어져서 V해야 해요.', highlight='I failed N, so I need to V' WHERE id='s_education_A2_06';
UPDATE sentences SET en='I need to V for N ~.', ko='~에 N을 위해 V해야 해요.', highlight='need to V for N' WHERE id='s_education_A2_01';
UPDATE sentences SET en='Did you pass N? I got N.', ko='N 합격했어요? 저는 N 받았어요.', highlight='Did you pass N' WHERE id='s_education_A2_02';
UPDATE sentences SET en='I''m going to V N tonight.', ko='오늘 밤에 N을 V할 거예요.', highlight='I''m going to V N' WHERE id='s_education_A2_03';
UPDATE sentences SET en='N is due on ~.', ko='N 제출 기한은 ~예요.', highlight='is due on' WHERE id='s_education_A2_05';
UPDATE sentences SET en='Can I borrow your N from ~?', ko='~의 N 빌릴 수 있어요?', highlight='Can I borrow your N' WHERE id='s_education_A2_07';
UPDATE sentences SET en='What chapter is N on?', ko='N 범위가 몇 장이에요?', highlight='What chapter is N on' WHERE id='s_education_A2_04';
UPDATE sentences SET en='In my N, I will cover ~.', ko='제 N에서 ~을 다룰 거예요.', highlight='I will cover ~' WHERE id='s_education_B1_04';
UPDATE sentences SET en='My assignment is to V N on N.', ko='제 과제는 N에 관한 N을 V하는 거예요.', highlight='My assignment is to V' WHERE id='s_education_B1_03';
UPDATE sentences SET en='To sum up, N suggests that S V.', ko='요약하면, N은 S가 V함을 제안해요.', highlight='To sum up, N suggests that' WHERE id='s_education_B1_06';
UPDATE sentences SET en='Could you explain N in more detail?', ko='N을 더 자세히 설명해 주실 수 있어요?', highlight='Could you explain N in more detail' WHERE id='s_education_B1_02';
UPDATE sentences SET en='I''d like to talk about N.', ko='N에 대해 말씀드리려고 해요.', highlight='I''d like to talk about N' WHERE id='s_education_B1_01';
UPDATE sentences SET en='I applied for N and I''m waiting to hear back.', ko='N을 신청했고 결과를 기다리고 있어요.', highlight='waiting to hear back' WHERE id='s_education_B1_07';
UPDATE sentences SET en='I''m not sure I understand N.', ko='N을 잘 모르겠어요.', highlight='I''m not sure I understand N' WHERE id='s_education_B1_05';
UPDATE sentences SET en='I would contend that S is as Adj as N.', ko='S가 N만큼 Adj하다고 주장하고 싶어요.', highlight='I would contend that' WHERE id='s_education_B2_07';
UPDATE sentences SET en='S critically examines the relationship between A and B.', ko='S는 A와 B의 관계를 비판적으로 검토해요.', highlight='critically examines the relationship between' WHERE id='s_education_B2_06';
UPDATE sentences SET en='The N does not fully support N.', ko='N가 N을 완전히 지지하지는 않아요.', highlight='does not fully support' WHERE id='s_education_B2_05';
UPDATE sentences SET en='Building on N''s argument, I would like to add that S V.', ko='N의 주장을 바탕으로, S V를 추가하고 싶어요.', highlight='Building on N''s argument' WHERE id='s_education_B2_04';
UPDATE sentences SET en='I see your point, but I''d argue that S V.', ko='말씀하시는 바는 이해하지만, S V라고 생각해요.', highlight='I see your point, but I''d argue that' WHERE id='s_education_B2_01';
UPDATE sentences SET en='The N used in N has some significant limitations.', ko='N에 사용된 N에는 몇 가지 중요한 한계가 있어요.', highlight='significant limitations' WHERE id='s_education_B2_02';
UPDATE sentences SET en='Could you elaborate on how you V-ed N?', ko='N을 어떻게 V했는지 더 설명해 주실 수 있어요?', highlight='Could you elaborate on how you V-ed' WHERE id='s_education_B2_03';
UPDATE sentences SET en='It is worth noting that S V.', ko='S가 V한다는 점을 언급할 필요가 있어요.', highlight='It is worth noting that' WHERE id='s_education_C1_04';
UPDATE sentences SET en='The findings substantiate the hypothesis that S V.', ko='연구 결과는 S가 V한다는 가설을 뒷받침해요.', highlight='substantiate the hypothesis that' WHERE id='s_education_C1_03';
UPDATE sentences SET en='The literature review reveals a significant lacuna in studies on N.', ko='문헌 검토는 N에 관한 연구의 중요한 공백을 드러내요.', highlight='reveals a significant lacuna in' WHERE id='s_education_C1_06';
UPDATE sentences SET en='The conceptual framework draws on A and B theories of N.', ko='개념적 틀은 N의 A와 B 이론을 바탕으로 해요.', highlight='draws on A and B theories of' WHERE id='s_education_C1_02';
UPDATE sentences SET en='This study seeks to interrogate the N assumptions underlying N.', ko='이 연구는 N의 기저에 있는 N 가정을 비판적으로 검토하고자 해요.', highlight='interrogate the N assumptions underlying' WHERE id='s_education_C1_01';
UPDATE sentences SET en='This paper posits that S must V N.', ko='이 논문은 S가 N을 V해야 한다고 상정해요.', highlight='posits that S must V' WHERE id='s_education_C1_07';
UPDATE sentences SET en='S demands that the researcher acknowledge N.', ko='S는 연구자가 N을 인정할 것을 요구해요.', highlight='demands that the researcher acknowledge' WHERE id='s_education_C1_05';
UPDATE sentences SET en='The N criterion challenges N assumptions embedded in N.', ko='N 기준은 N에 내재된 N 가정에 도전해요.', highlight='assumptions embedded in' WHERE id='s_education_C2_03';
UPDATE sentences SET en='The N approach collapses the distinction between A and B.', ko='N 접근은 A와 B 사이의 구분을 무너뜨려요.', highlight='collapses the distinction between A and B' WHERE id='s_education_C2_07';
UPDATE sentences SET en='S''s N provides a lens through which to examine N.', ko='S의 N은 N을 검토하는 렌즈를 제공해요.', highlight='provides a lens through which to examine' WHERE id='s_education_C2_02';
UPDATE sentences SET en='S, as advanced by N, resists N models of N.', ko='N이 발전시킨 S는 N의 N 모델에 저항해요.', highlight='resists N models of' WHERE id='s_education_C2_06';
UPDATE sentences SET en='S''s N reading destabilises the binary between A and B.', ko='S의 N 독해는 A와 B의 이분법을 불안정하게 해요.', highlight='destabilises the binary between A and B' WHERE id='s_education_C2_01';
UPDATE sentences SET en='S inquiry foregrounds N as the primary unit of analysis.', ko='S 탐구는 N을 분석의 주요 단위로 전면에 내세워요.', highlight='foregrounds N as the primary unit of' WHERE id='s_education_C2_05';
UPDATE sentences SET en='N discourse in N reproduces N through N.', ko='N의 N 담론은 N을 통해 N을 재생산해요.', highlight='reproduces N through N' WHERE id='s_education_C2_04';

-- ============================================
-- batch-3-society.sql
-- ============================================
-- Batch 3: economy, technology, environment, news, sports
-- Rewrites specific-noun sentences into reusable grammar templates.
-- Real patterns (already generic / already templated) are skipped.

-- ============================================================
-- TOPIC: economy
-- ============================================================

-- s_economy_A1_04 — KEEP (idiom, already minimal)
-- s_economy_A1_05 — KEEP ("Can I get N, please?" — generalize)
UPDATE sentences SET en='Can I get N, please?', ko='N 주실 수 있나요?', highlight='Can I get N' WHERE id='s_economy_A1_05';

-- s_economy_A1_06 — REWRITE
UPDATE sentences SET en='Is there a N?', ko='N가 있나요?', highlight='Is there a N' WHERE id='s_economy_A1_06';

-- s_economy_A1_01 — KEEP (already a template question "How much does N cost?")
UPDATE sentences SET en='How much does N cost?', ko='N가 얼마예요?', highlight='How much does N cost' WHERE id='s_economy_A1_01';

-- s_economy_A1_02 — REWRITE
UPDATE sentences SET en='Can I pay by N?', ko='N로 계산할 수 있나요?', highlight='pay by N' WHERE id='s_economy_A1_02';

-- s_economy_A1_07 — KEEP (idiom)
-- s_economy_A1_03 — REWRITE
UPDATE sentences SET en='Do you have anything A-er?', ko='더 A한 것이 있나요?', highlight='anything A-er' WHERE id='s_economy_A1_03';

-- s_economy_A2_03 — REWRITE
UPDATE sentences SET en='Can I apply for N here?', ko='여기서 N 신청을 할 수 있나요?', highlight='apply for N' WHERE id='s_economy_A2_03';

-- s_economy_A2_01 — REWRITE
UPDATE sentences SET en='I''m trying to save up for N.', ko='N를 위해 저축하려고 해요.', highlight='save up for N' WHERE id='s_economy_A2_01';

-- s_economy_A2_02 — REWRITE
UPDATE sentences SET en='I need to V this month.', ko='이번 달은 V해야 해요.', highlight='need to V' WHERE id='s_economy_A2_02';

-- s_economy_A2_05 — REWRITE
UPDATE sentences SET en='I get paid at ~.', ko='~에 급여를 받아요.', highlight='get paid at ~' WHERE id='s_economy_A2_05';

-- s_economy_A2_04 — REWRITE
UPDATE sentences SET en='N came out to a lot this month.', ko='이번 달 N가 많이 나왔어요.', highlight='N came out to a lot' WHERE id='s_economy_A2_04';

-- s_economy_A2_07 — REWRITE
UPDATE sentences SET en='Could you transfer N to A?', ko='A로 N를 이체해 주실 수 있나요?', highlight='transfer N to A' WHERE id='s_economy_A2_07';

-- s_economy_A2_06 — REWRITE
UPDATE sentences SET en='I''m in N right now, so I can''t afford it.', ko='지금 N 상태라 그것을 살 여유가 없어요.', highlight='in N' WHERE id='s_economy_A2_06';

-- s_economy_B1_01 — REWRITE
UPDATE sentences SET en='S has been V-ing steadily over the past few months.', ko='지난 몇 달 동안 S가 꾸준히 V해 왔어요.', highlight='has been V-ing steadily' WHERE id='s_economy_B1_01';

-- s_economy_B1_02 — REWRITE
UPDATE sentences SET en='S dropped to its lowest level in N years.', ko='S가 N년 만에 최저 수준으로 떨어졌어요.', highlight='dropped to its lowest level in N years' WHERE id='s_economy_B1_02';

-- s_economy_B1_03 — REWRITE
UPDATE sentences SET en='S is expected to V next month.', ko='S가 다음 달 V할 것으로 예상돼요.', highlight='S is expected to V' WHERE id='s_economy_B1_03';

-- s_economy_B1_05 — REWRITE
UPDATE sentences SET en='There is a growing concern about N.', ko='N에 대한 우려가 커지고 있어요.', highlight='growing concern about N' WHERE id='s_economy_B1_05';

-- s_economy_B1_07 — REWRITE
UPDATE sentences SET en='S has V-ed significantly this quarter.', ko='S가 이번 분기에 크게 V했어요.', highlight='has V-ed significantly' WHERE id='s_economy_B1_07';

-- s_economy_B1_06 — REWRITE
UPDATE sentences SET en='S is showing signs of N.', ko='S가 N 조짐을 보이고 있어요.', highlight='showing signs of N' WHERE id='s_economy_B1_06';

-- s_economy_B1_04 — REWRITE
UPDATE sentences SET en='S grew by N percent compared to last year.', ko='S가 작년 대비 N% 성장했어요.', highlight='compared to last year' WHERE id='s_economy_B1_04';

-- s_economy_B2_02 — REWRITE
UPDATE sentences SET en='S was A-er than analysts had predicted.', ko='S가 애널리스트들의 예상보다 더 A했어요.', highlight='A-er than analysts had predicted' WHERE id='s_economy_B2_02';

-- s_economy_B2_07 — REWRITE
UPDATE sentences SET en='S rebounded after N.', ko='N 이후 S가 반등했어요.', highlight='rebounded after N' WHERE id='s_economy_B2_07';

-- s_economy_B2_04 — REWRITE
UPDATE sentences SET en='S tend to V well in N.', ko='S는 N에서 V를 잘 하는 경향이 있어요.', highlight='tend to V well in N' WHERE id='s_economy_B2_04';

-- s_economy_B2_01 — REWRITE
UPDATE sentences SET en='V-ing S is key to N.', ko='S를 V하는 것이 N의 핵심이에요.', highlight='V-ing S is key to N' WHERE id='s_economy_B2_01';

-- s_economy_B2_06 — REWRITE
UPDATE sentences SET en='S are fleeing to N amid A.', ko='A 속에서 S가 N로 이동하고 있어요.', highlight='fleeing to N amid A' WHERE id='s_economy_B2_06';

-- s_economy_B2_05 — REWRITE
UPDATE sentences SET en='S rose sharply following N.', ko='N 이후 S가 급격히 상승했어요.', highlight='S rose sharply following N' WHERE id='s_economy_B2_05';

-- s_economy_B2_03 — REWRITE
UPDATE sentences SET en='S dried up quickly as A V-ed.', ko='A가 V하면서 S가 빠르게 말랐어요.', highlight='S dried up' WHERE id='s_economy_B2_03';

-- s_economy_C1_06 — REWRITE
UPDATE sentences SET en='Excessive reliance on N can distort A and reduce B.', ko='N에 대한 과도한 의존은 A를 왜곡하고 B를 낮출 수 있어요.', highlight='reliance on N can distort A' WHERE id='s_economy_C1_06';

-- s_economy_C1_04 — REWRITE
UPDATE sentences SET en='S may V A but ultimately harm B.', ko='S는 A를 V할 수 있지만 결국 B에게 해를 끼쳐요.', highlight='may V A but ultimately harm B' WHERE id='s_economy_C1_04';

-- s_economy_C1_01 — REWRITE
UPDATE sentences SET en='S have been criticized for V-ing N.', ko='S는 N을 V한다는 비판을 받아왔어요.', highlight='criticized for V-ing N' WHERE id='s_economy_C1_01';

-- s_economy_C1_03 — REWRITE
UPDATE sentences SET en='S has faced strong opposition from A.', ko='S는 A의 강한 반대에 직면했어요.', highlight='faced strong opposition from A' WHERE id='s_economy_C1_03';

-- s_economy_C1_02 — REWRITE
UPDATE sentences SET en='S is often linked to N.', ko='S는 종종 N과 연결지어져요.', highlight='S is often linked to N' WHERE id='s_economy_C1_02';

-- s_economy_C1_05 — REWRITE
UPDATE sentences SET en='S theory suggests that N leads to A.', ko='S 이론은 N이 A로 이어진다고 주장해요.', highlight='theory suggests that' WHERE id='s_economy_C1_05';

-- s_economy_C1_07 — REWRITE
UPDATE sentences SET en='S arises when A is insulated from the consequences of B.', ko='S는 A가 B의 결과로부터 보호받을 때 발생해요.', highlight='is insulated from the consequences of' WHERE id='s_economy_C1_07';

-- s_economy_C2_02 — REWRITE
UPDATE sentences SET en='S obscured the underlying N from A.', ko='S는 A로부터 내재된 N을 가렸어요.', highlight='obscured the underlying N from A' WHERE id='s_economy_C2_02';

-- s_economy_C2_06 — REWRITE
UPDATE sentences SET en='S measures the extent to which A deviates from B.', ko='S는 A가 B에서 얼마나 벗어나는지를 측정해요.', highlight='measures the extent to which' WHERE id='s_economy_C2_06';

-- s_economy_C2_03 — REWRITE
UPDATE sentences SET en='S undermines N by V-ing A toward B.', ko='S는 A를 B로 V함으로써 N을 훼손해요.', highlight='undermines N by V-ing' WHERE id='s_economy_C2_03';

-- s_economy_C2_07 — REWRITE
UPDATE sentences SET en='S renders N ineffective, as A fails to V B.', ko='S는 A가 B를 V하지 못하면서 N을 무효화해요.', highlight='renders N ineffective' WHERE id='s_economy_C2_07';

-- s_economy_C2_05 — REWRITE
UPDATE sentences SET en='S between A and B leads to N.', ko='A와 B 간의 S는 N으로 이어져요.', highlight='S leads to N' WHERE id='s_economy_C2_05';

-- s_economy_C2_01 — REWRITE
UPDATE sentences SET en='S rely on N to identify causal relationships between A.', ko='S는 A 간의 인과 관계를 파악하기 위해 N에 의존해요.', highlight='identify causal relationships between A' WHERE id='s_economy_C2_01';

-- s_economy_C2_04 — REWRITE
UPDATE sentences SET en='S challenge the assumption that A V.', ko='S는 A가 V한다는 가정에 도전해요.', highlight='challenge the assumption that' WHERE id='s_economy_C2_04';

-- ============================================================
-- TOPIC: technology
-- ============================================================

-- s_technology_A1_06 — REWRITE
UPDATE sentences SET en='I don''t know N.', ko='N을 모르겠어요.', highlight='I don''t know N' WHERE id='s_technology_A1_06';

-- s_technology_A1_05 — REWRITE
UPDATE sentences SET en='Please V N.', ko='N를 V해주세요.', highlight='Please V N' WHERE id='s_technology_A1_05';

-- s_technology_A1_07 — REWRITE
UPDATE sentences SET en='S is too A.', ko='S가 너무 A해요.', highlight='S is too A' WHERE id='s_technology_A1_07';

-- s_technology_A1_04 — REWRITE
UPDATE sentences SET en='Where can I V?', ko='어디서 V할 수 있나요?', highlight='Where can I V' WHERE id='s_technology_A1_04';

-- s_technology_A1_01 — REWRITE
UPDATE sentences SET en='How do I V N?', ko='N을 어떻게 V해요?', highlight='How do I V' WHERE id='s_technology_A1_01';

-- s_technology_A1_03 — REWRITE
UPDATE sentences SET en='S is not working.', ko='S가 작동하지 않아요.', highlight='S is not working' WHERE id='s_technology_A1_03';

-- s_technology_A1_02 — REWRITE
UPDATE sentences SET en='Can you V N, please?', ko='N을 V해 주시겠어요?', highlight='Can you V N' WHERE id='s_technology_A1_02';

-- s_technology_A2_07 — REWRITE
UPDATE sentences SET en='S is taking forever.', ko='S가 너무 오래 걸려요.', highlight='S is taking forever' WHERE id='s_technology_A2_07';

-- s_technology_A2_05 — REWRITE
UPDATE sentences SET en='Make sure to V N before V-ing.', ko='V하기 전에 반드시 N을 V하세요.', highlight='Make sure to V' WHERE id='s_technology_A2_05';

-- s_technology_A2_04 — REWRITE
UPDATE sentences SET en='S keeps V-ing so A-ly.', ko='S가 너무 A하게 V해요.', highlight='S keeps V-ing' WHERE id='s_technology_A2_04';

-- s_technology_A2_01 — REWRITE
UPDATE sentences SET en='Have you tried V-ing?', ko='V해 보셨나요?', highlight='Have you tried V-ing' WHERE id='s_technology_A2_01';

-- s_technology_A2_03 — REWRITE
UPDATE sentences SET en='You need to V N first.', ko='먼저 N을 V해야 해요.', highlight='You need to V' WHERE id='s_technology_A2_03';

-- s_technology_A2_06 — REWRITE
UPDATE sentences SET en='I accidentally V-ed N. Can I get it back?', ko='실수로 N을 V했어요. 복구할 수 있나요?', highlight='I accidentally V-ed' WHERE id='s_technology_A2_06';

-- s_technology_A2_02 — REWRITE
UPDATE sentences SET en='S isn''t V-ing. What should I do?', ko='S가 V되지 않아요. 어떻게 하면 좋을까요?', highlight='What should I do' WHERE id='s_technology_A2_02';

-- s_technology_B1_02 — REWRITE
UPDATE sentences SET en='In simple terms, S is like N.', ko='쉽게 말하면, S는 N 같은 거예요.', highlight='In simple terms, S is like N' WHERE id='s_technology_B1_02';

-- s_technology_B1_06 — REWRITE
UPDATE sentences SET en='One of the downsides is that S V.', ko='단점 중 하나는 S가 V한다는 거예요.', highlight='One of the downsides is that' WHERE id='s_technology_B1_06';

-- s_technology_B1_01 — REWRITE
UPDATE sentences SET en='Basically, it works by V-ing N.', ko='기본적으로, N을 V하는 방식으로 작동해요.', highlight='Basically, it works by V-ing' WHERE id='s_technology_B1_01';

-- s_technology_B1_04 — REWRITE
UPDATE sentences SET en='Have you heard of N? It''s supposed to be A.', ko='N 들어봤어요? A하다고 해요.', highlight='It''s supposed to be A' WHERE id='s_technology_B1_04';

-- s_technology_B1_03 — REWRITE
UPDATE sentences SET en='The main advantage of S is that it V.', ko='S의 가장 큰 장점은 V한다는 거예요.', highlight='The main advantage of S is that' WHERE id='s_technology_B1_03';

-- s_technology_B1_05 — REWRITE
UPDATE sentences SET en='The reason S is A is that it V.', ko='S가 A한 이유는 V하기 때문이에요.', highlight='The reason S is A is that' WHERE id='s_technology_B1_05';

-- s_technology_B1_07 — REWRITE
UPDATE sentences SET en='S was designed to V.', ko='S는 V하기 위해 설계됐어요.', highlight='S was designed to V' WHERE id='s_technology_B1_07';

-- s_technology_B2_03 — REWRITE
UPDATE sentences SET en='What sets S apart is its ability to V.', ko='S를 차별화하는 것은 V하는 능력이에요.', highlight='What sets S apart is' WHERE id='s_technology_B2_03';

-- s_technology_B2_06 — REWRITE
UPDATE sentences SET en='It remains to be seen whether S will V.', ko='S가 V할지는 아직 두고 봐야 해요.', highlight='It remains to be seen whether' WHERE id='s_technology_B2_06';

-- s_technology_B2_07 — REWRITE
UPDATE sentences SET en='To put it simply, S V N.', ko='쉽게 말하면, S는 N을 V해요.', highlight='To put it simply' WHERE id='s_technology_B2_07';

-- s_technology_B2_01 — REWRITE
UPDATE sentences SET en='S is increasingly being used to V N.', ko='S는 N을 V하는 데 점점 더 많이 활용되고 있어요.', highlight='increasingly being used to V' WHERE id='s_technology_B2_01';

-- s_technology_B2_02 — REWRITE
UPDATE sentences SET en='One concern with S is N.', ko='S의 한 가지 우려점은 N이에요.', highlight='One concern with S is N' WHERE id='s_technology_B2_02';

-- s_technology_B2_04 — REWRITE
UPDATE sentences SET en='The way I see it, S should be A.', ko='제 생각에는 S가 A여야 해요.', highlight='The way I see it' WHERE id='s_technology_B2_04';

-- s_technology_B2_05 — REWRITE
UPDATE sentences SET en='There is growing evidence that S V.', ko='S가 V한다는 증거가 점점 늘고 있어요.', highlight='There is growing evidence that' WHERE id='s_technology_B2_05';

-- s_technology_C1_01 — REWRITE
UPDATE sentences SET en='The implications of S for N are profound.', ko='S가 N에 미치는 영향은 심대해요.', highlight='implications of S for N are profound' WHERE id='s_technology_C1_01';

-- s_technology_C1_05 — REWRITE
UPDATE sentences SET en='It would be premature to conclude that S has V-ed.', ko='S가 V했다고 결론짓는 것은 시기상조예요.', highlight='It would be premature to conclude that' WHERE id='s_technology_C1_05';

-- s_technology_C1_04 — REWRITE
UPDATE sentences SET en='The challenge lies not in V-ing A, but in V-ing B.', ko='어려운 점은 A를 V하는 것이 아니라 B를 V하는 것이에요.', highlight='The challenge lies not in... but in' WHERE id='s_technology_C1_04';

-- s_technology_C1_03 — REWRITE
UPDATE sentences SET en='S fundamentally shifts N.', ko='S는 N을 근본적으로 변화시켜요.', highlight='S fundamentally shifts N' WHERE id='s_technology_C1_03';

-- s_technology_C1_07 — REWRITE
UPDATE sentences SET en='S is evolving so rapidly that N is still being V-ed.', ko='S가 너무 빠르게 발전해서 N이 아직 V되고 있는 중이에요.', highlight='is evolving so rapidly that' WHERE id='s_technology_C1_07';

-- s_technology_C1_06 — REWRITE
UPDATE sentences SET en='A and B are often in tension with each other in N.', ko='N에서 A와 B는 종종 서로 상충 관계에 있어요.', highlight='are often in tension with each other' WHERE id='s_technology_C1_06';

-- s_technology_C1_02 — REWRITE
UPDATE sentences SET en='We must grapple with the ethical dimensions of V-ing N.', ko='N을 V하는 것의 윤리적 측면을 진지하게 다뤄야 해요.', highlight='must grapple with the ethical dimensions of' WHERE id='s_technology_C1_02';

-- s_technology_C2_05 — REWRITE
UPDATE sentences SET en='S opens the door to N of unprecedented A.', ko='S는 전례 없는 A의 N의 문을 열어요.', highlight='opens the door to N of unprecedented' WHERE id='s_technology_C2_05';

-- s_technology_C2_01 — REWRITE
UPDATE sentences SET en='The notion of S raises fundamental questions about the nature of N.', ko='S 개념은 N의 본질에 관한 근본적인 질문을 제기해요.', highlight='raises fundamental questions about the nature of N' WHERE id='s_technology_C2_01';

-- s_technology_C2_07 — REWRITE
UPDATE sentences SET en='S and A converge on the insight that N.', ko='S와 A는 N이라는 통찰로 수렴해요.', highlight='converge on the insight that' WHERE id='s_technology_C2_07';

-- s_technology_C2_02 — REWRITE
UPDATE sentences SET en='Whether S V A or B remains deeply contested.', ko='S가 A를 V하는지 아니면 B를 V하는지는 아직 깊이 논쟁 중이에요.', highlight='remains deeply contested' WHERE id='s_technology_C2_02';

-- s_technology_C2_04 — REWRITE
UPDATE sentences SET en='The N of S make A an inherently unattainable goal.', ko='S의 N으로 인해 A는 본질적으로 달성 불가능한 목표예요.', highlight='make A an inherently unattainable goal' WHERE id='s_technology_C2_04';

-- s_technology_C2_03 — REWRITE
UPDATE sentences SET en='S tends toward N regardless of A.', ko='S는 A와 무관하게 N 방향으로 수렴해요.', highlight='tends toward N regardless of A' WHERE id='s_technology_C2_03';

-- s_technology_C2_06 — REWRITE
UPDATE sentences SET en='A and B exist in inherent tension — a more capable S may naturally resist N.', ko='A와 B는 본질적인 긴장 관계에 있어요 — 더 유능한 S는 자연스럽게 N에 저항할 수 있어요.', highlight='exist in inherent tension' WHERE id='s_technology_C2_06';

-- ============================================================
-- TOPIC: environment
-- ============================================================

-- s_environment_A1_03 — REWRITE
UPDATE sentences SET en='Please V N.', ko='N을 V해주세요.', highlight='Please V N' WHERE id='s_environment_A1_03';

-- s_environment_A1_04 — REWRITE
UPDATE sentences SET en='S looks very A today.', ko='오늘 S가 정말 A해 보여요.', highlight='S looks very A' WHERE id='s_environment_A1_04';

-- s_environment_A1_01 — REWRITE
UPDATE sentences SET en='Let''s V N.', ko='N을 V해요.', highlight='Let''s V N' WHERE id='s_environment_A1_01';

-- s_environment_A1_06 — REWRITE
UPDATE sentences SET en='We need N to V.', ko='우리는 V하기 위해 N이 필요해요.', highlight='need N to V' WHERE id='s_environment_A1_06';

-- s_environment_A1_07 — REWRITE
UPDATE sentences SET en='V N when you V.', ko='V할 때 N을 V해주세요.', highlight='V N when you V' WHERE id='s_environment_A1_07';

-- s_environment_A1_05 — REWRITE
UPDATE sentences SET en='I love V-ing in N.', ko='저는 N에서 V하는 걸 좋아해요.', highlight='love V-ing' WHERE id='s_environment_A1_05';

-- s_environment_A1_02 — REWRITE
UPDATE sentences SET en='Don''t V N.', ko='N을 V하지 마세요.', highlight='Don''t V N' WHERE id='s_environment_A1_02';

-- s_environment_A2_02 — REWRITE
UPDATE sentences SET en='Try to V less N every day.', ko='매일 N을 덜 V하려고 노력해보세요.', highlight='Try to V less N' WHERE id='s_environment_A2_02';

-- s_environment_A2_03 — REWRITE
UPDATE sentences SET en='V-ing N reduces A.', ko='N을 V하는 것이 A를 줄여요.', highlight='V-ing N reduces A' WHERE id='s_environment_A2_03';

-- s_environment_A2_04 — REWRITE
UPDATE sentences SET en='Have you tried V-ing N?', ko='N을 V해 보셨어요?', highlight='Have you tried V-ing N' WHERE id='s_environment_A2_04';

-- s_environment_A2_05 — REWRITE
UPDATE sentences SET en='It''s important to V N at A.', ko='A에서 N을 V하는 것이 중요해요.', highlight='It''s important to V' WHERE id='s_environment_A2_05';

-- s_environment_A2_06 — REWRITE
UPDATE sentences SET en='I always V my own N to A.', ko='저는 항상 A에 개인 N을 V해요.', highlight='always V my own N' WHERE id='s_environment_A2_06';

-- s_environment_A2_07 — REWRITE
UPDATE sentences SET en='Why don''t we V N this weekend?', ko='이번 주말에 N을 V하는 건 어때요?', highlight='Why don''t we V N' WHERE id='s_environment_A2_07';

-- s_environment_A2_01 — REWRITE
UPDATE sentences SET en='You should V N.', ko='N을 V해야 해요.', highlight='You should V N' WHERE id='s_environment_A2_01';

-- s_environment_B1_03 — REWRITE
UPDATE sentences SET en='S is becoming A-er every year.', ko='S는 매년 더 A해지고 있어요.', highlight='is becoming A-er' WHERE id='s_environment_B1_03';

-- s_environment_B1_01 — REWRITE
UPDATE sentences SET en='S is affecting every N in the world.', ko='S는 세계 모든 N에 영향을 미치고 있어요.', highlight='is affecting every N' WHERE id='s_environment_B1_01';

-- s_environment_B1_04 — REWRITE
UPDATE sentences SET en='S have warned us about the dangers of N.', ko='S는 N의 위험성에 대해 경고해왔어요.', highlight='have warned us about the dangers of N' WHERE id='s_environment_B1_04';

-- s_environment_B1_07 — REWRITE
UPDATE sentences SET en='V-ing to N would significantly cut A.', ko='N로 V하면 A를 크게 줄일 수 있어요.', highlight='would significantly cut A' WHERE id='s_environment_B1_07';

-- s_environment_B1_05 — REWRITE
UPDATE sentences SET en='We need to find a balance between A and B.', ko='A와 B 사이의 균형을 찾아야 해요.', highlight='find a balance between A and B' WHERE id='s_environment_B1_05';

-- s_environment_B1_02 — REWRITE
UPDATE sentences SET en='If we V N now, we can V A.', ko='지금 N을 V하면 A를 V할 수 있어요.', highlight='If we V...we can V' WHERE id='s_environment_B1_02';

-- s_environment_B1_06 — REWRITE
UPDATE sentences SET en='Many S are at risk of N due to A.', ko='A로 인해 많은 S가 N 위기에 처해 있어요.', highlight='at risk of N due to A' WHERE id='s_environment_B1_06';

-- s_environment_B2_06 — REWRITE
UPDATE sentences SET en='By V-ing in N, we can partially offset A.', ko='N에 V함으로써 A를 부분적으로 상쇄할 수 있어요.', highlight='By V-ing in N, we can partially offset A' WHERE id='s_environment_B2_06';

-- s_environment_B2_04 — REWRITE
UPDATE sentences SET en='S requires balancing A with B.', ko='S는 A와 B의 균형을 필요로 해요.', highlight='requires balancing A with B' WHERE id='s_environment_B2_04';

-- s_environment_B2_03 — REWRITE
UPDATE sentences SET en='Unless N is taken, we will V A.', ko='N이 취해지지 않으면 A를 V할 거예요.', highlight='Unless N is taken' WHERE id='s_environment_B2_03';

-- s_environment_B2_01 — REWRITE
UPDATE sentences SET en='S must implement stricter N without delay.', ko='S는 지체 없이 더 엄격한 N을 시행해야 해요.', highlight='must implement stricter N' WHERE id='s_environment_B2_01';

-- s_environment_B2_07 — REWRITE
UPDATE sentences SET en='S have proven effective in V-ing N.', ko='S는 N을 V하는 데 효과적인 것으로 입증됐어요.', highlight='have proven effective in V-ing' WHERE id='s_environment_B2_07';

-- s_environment_B2_02 — REWRITE
UPDATE sentences SET en='S could incentivise A to V.', ko='S는 A가 V하도록 유도할 수 있어요.', highlight='could incentivise A to V' WHERE id='s_environment_B2_02';

-- s_environment_B2_05 — REWRITE
UPDATE sentences SET en='S obliges all A to V annually.', ko='S는 모든 A가 매년 V하도록 의무화해요.', highlight='obliges all A to V' WHERE id='s_environment_B2_05';

-- s_environment_C1_05 — REWRITE
UPDATE sentences SET en='S suggest that A is unprecedented in N years.', ko='S는 A가 N년 중 전례 없는 것임을 시사해요.', highlight='suggest that A is unprecedented in N years' WHERE id='s_environment_C1_05';

-- s_environment_C1_01 — REWRITE
UPDATE sentences SET en='S have unequivocally altered N.', ko='S가 N을 명백히 변화시켰어요.', highlight='have unequivocally altered N' WHERE id='s_environment_C1_01';

-- s_environment_C1_02 — REWRITE
UPDATE sentences SET en='S dictates that we V before A is fully established.', ko='S는 A가 완전히 형성되기 전에 V하도록 요구해요.', highlight='dictates that we V before' WHERE id='s_environment_C1_02';

-- s_environment_C1_04 — REWRITE
UPDATE sentences SET en='S illustrate how the removal of A can destabilise N.', ko='S는 A의 제거가 N을 불안정하게 만들 수 있음을 보여줘요.', highlight='how the removal of A can destabilise N' WHERE id='s_environment_C1_04';

-- s_environment_C1_06 — REWRITE
UPDATE sentences SET en='S must be evaluated against the risk of N.', ko='S는 N의 위험과 대비해 평가돼야 해요.', highlight='must be evaluated against the risk of N' WHERE id='s_environment_C1_06';

-- s_environment_C1_07 — REWRITE
UPDATE sentences SET en='S are increasingly being overwhelmed by N.', ko='S는 N에 점점 압도당하고 있어요.', highlight='are increasingly being overwhelmed by N' WHERE id='s_environment_C1_07';

-- s_environment_C1_03 — REWRITE
UPDATE sentences SET en='V-ing N is widely regarded as the most urgent A.', ko='N을 V하는 것은 가장 시급한 A로 널리 여겨지고 있어요.', highlight='is widely regarded as the most urgent A' WHERE id='s_environment_C1_03';

-- s_environment_C2_01 — REWRITE
UPDATE sentences SET en='S confirm that A are amplifying N.', ko='S는 A가 N을 증폭시키고 있음을 확인해줘요.', highlight='confirm that A are amplifying N' WHERE id='s_environment_C2_01';

-- s_environment_C2_04 — REWRITE
UPDATE sentences SET en='V-ing N simultaneously increases the likelihood of abrupt, nonlinear A.', ko='N을 동시에 V하면 갑작스럽고 비선형적인 A의 가능성이 높아져요.', highlight='increases the likelihood of abrupt, nonlinear A' WHERE id='s_environment_C2_04';

-- s_environment_C2_03 — REWRITE
UPDATE sentences SET en='S is projected to release N, potentially creating A.', ko='S는 N을 방출해 A를 만들 가능성이 있어요.', highlight='is projected to release N, potentially creating A' WHERE id='s_environment_C2_03';

-- s_environment_C2_05 — REWRITE
UPDATE sentences SET en='S demonstrate that A can propagate N across B.', ko='S는 A가 B를 가로질러 N을 전파할 수 있음을 보여줘요.', highlight='demonstrate that A can propagate N across B' WHERE id='s_environment_C2_05';

-- s_environment_C2_07 — REWRITE
UPDATE sentences SET en='V-ing N necessitates a systemic transformation of A.', ko='N을 V하는 것은 A의 전면적 전환을 필요로 해요.', highlight='necessitates a systemic transformation of A' WHERE id='s_environment_C2_07';

-- s_environment_C2_06 — REWRITE
UPDATE sentences SET en='S corroborate A, strengthening confidence in N.', ko='S는 A를 뒷받침하여 N에 대한 신뢰도를 높여요.', highlight='corroborate A, strengthening confidence in N' WHERE id='s_environment_C2_06';

-- s_environment_C2_02 — REWRITE
UPDATE sentences SET en='S could have cascading consequences for N.', ko='S는 N에 연쇄적 결과를 초래할 수 있어요.', highlight='could have cascading consequences for N' WHERE id='s_environment_C2_02';

-- ============================================================
-- TOPIC: news
-- ============================================================

-- s_news_A1_05 — KEEP (already templated "They said on the news that...")
-- s_news_A1_03 — KEEP (idiom "What happened?")
-- s_news_A1_02 — KEEP (already templated "I saw on the news that...")
-- s_news_A1_01 — KEEP (already templated "Did you hear about...?")
-- s_news_A1_07 — REWRITE (specific subject — generalize)
UPDATE sentences SET en='S said...', ko='S가 ...라고 했어요.', highlight='S said' WHERE id='s_news_A1_07';

-- s_news_A1_06 — REWRITE
UPDATE sentences SET en='A lot of S were V-ed.', ko='많은 S가 V됐어요.', highlight='A lot of S were V-ed' WHERE id='s_news_A1_06';

-- s_news_A1_04 — KEEP (already templated "Is it true that...?")

-- s_news_A2_03 — KEEP (already templated "It is believed that...")
-- s_news_A2_02 — REWRITE (specific subject)
UPDATE sentences SET en='S are investigating N.', ko='S가 N을 조사하고 있어요.', highlight='S are investigating N' WHERE id='s_news_A2_02';

-- s_news_A2_01 — KEEP (templated connector "According to reports, ...")

-- s_news_A2_06 — REWRITE
UPDATE sentences SET en='Thousands of S took to the streets.', ko='수천 명의 S가 거리로 나왔어요.', highlight='S took to the streets' WHERE id='s_news_A2_06';

-- s_news_A2_07 — REWRITE
UPDATE sentences SET en='S has been agreed.', ko='S가 합의됐어요.', highlight='S has been agreed' WHERE id='s_news_A2_07';

-- s_news_A2_05 — REWRITE
UPDATE sentences SET en='S has announced that A V.', ko='S는 A가 V한다고 발표했어요.', highlight='S has announced that' WHERE id='s_news_A2_05';

-- s_news_A2_04 — REWRITE
UPDATE sentences SET en='S broke out in N.', ko='N에서 S가 발생했어요.', highlight='S broke out in N' WHERE id='s_news_A2_04';

-- s_news_B1_03 — REWRITE
UPDATE sentences SET en='S has called for an inquiry into N.', ko='S가 N에 대한 조사를 요구했어요.', highlight='has called for an inquiry into N' WHERE id='s_news_B1_03';

-- s_news_B1_01 — REWRITE (textbook example)
UPDATE sentences SET en='S is under pressure to V.', ko='S는 V할 압박을 받고 있어요.', highlight='is under pressure to V' WHERE id='s_news_B1_01';

-- s_news_B1_02 — REWRITE
UPDATE sentences SET en='S have accused A of V-ing.', ko='S가 A를 V한 혐의로 비난했어요.', highlight='S have accused A of V-ing' WHERE id='s_news_B1_02';

-- s_news_B1_04 — REWRITE
UPDATE sentences SET en='S figures rose to N percent.', ko='S가 N%로 올랐어요.', highlight='rose to N percent' WHERE id='s_news_B1_04';

-- s_news_B1_07 — REWRITE (textbook example)
UPDATE sentences SET en='S has reached its highest level in N years.', ko='S가 N년 만에 최고치에 달했어요.', highlight='has reached its highest level in N years' WHERE id='s_news_B1_07';

-- s_news_B1_05 — REWRITE
UPDATE sentences SET en='S was passed by a majority of N.', ko='S가 N의 다수결로 통과됐어요.', highlight='was passed by a majority of N' WHERE id='s_news_B1_05';

-- s_news_B1_06 — REWRITE
UPDATE sentences SET en='S resigned amid allegations of N.', ko='S가 N 혐의 속에 사임했어요.', highlight='resigned amid allegations of N' WHERE id='s_news_B1_06';

-- s_news_B2_03 — REWRITE
UPDATE sentences SET en='S agreed to resume N.', ko='S가 N 재개에 합의했어요.', highlight='agreed to resume N' WHERE id='s_news_B2_03';

-- s_news_B2_05 — REWRITE
UPDATE sentences SET en='S was reached at N.', ko='N에서 S가 이루어졌어요.', highlight='S was reached at N' WHERE id='s_news_B2_05';

-- s_news_B2_04 — REWRITE
UPDATE sentences SET en='S has condemned N.', ko='S가 N을 규탄했어요.', highlight='S has condemned N' WHERE id='s_news_B2_04';

-- s_news_B2_06 — REWRITE
UPDATE sentences SET en='S faces growing pressure from A.', ko='S는 A로부터 점점 커지는 압박에 직면해 있어요.', highlight='faces growing pressure from A' WHERE id='s_news_B2_06';

-- s_news_B2_01 — REWRITE (textbook example)
UPDATE sentences SET en='S have escalated between A and B.', ko='A와 B 사이의 S가 고조됐어요.', highlight='S have escalated between A and B' WHERE id='s_news_B2_01';

-- s_news_B2_02 — REWRITE
UPDATE sentences SET en='S have been imposed on A in response to B.', ko='B에 대응해 A에 S가 부과됐어요.', highlight='S have been imposed on A' WHERE id='s_news_B2_02';

-- s_news_B2_07 — REWRITE
UPDATE sentences SET en='S resulted in a vote for N.', ko='S 결과 N 찬성으로 나왔어요.', highlight='S resulted in a vote for N' WHERE id='s_news_B2_07';

-- s_news_C1_05 — REWRITE
UPDATE sentences SET en='S may have far-reaching implications for N.', ko='S는 N에 광범위한 영향을 미칠 수 있어요.', highlight='may have far-reaching implications for N' WHERE id='s_news_C1_05';

-- s_news_C1_03 — REWRITE
UPDATE sentences SET en='S has deteriorated significantly in recent months.', ko='S가 최근 몇 달 동안 크게 악화됐어요.', highlight='S has deteriorated significantly' WHERE id='s_news_C1_03';

-- s_news_C1_02 — REWRITE
UPDATE sentences SET en='S has failed to achieve its stated objectives.', ko='S가 명시된 목표를 달성하는 데 실패했어요.', highlight='S has failed to achieve its stated objectives' WHERE id='s_news_C1_02';

-- s_news_C1_07 — REWRITE
UPDATE sentences SET en='S warn of the risk of further N in A.', ko='S는 A 내 추가 N 위험을 경고해요.', highlight='warn of the risk of further N' WHERE id='s_news_C1_07';

-- s_news_C1_06 — REWRITE
UPDATE sentences SET en='S invoked N to V A.', ko='S가 A를 V하기 위해 N을 발동했어요.', highlight='invoked N to V A' WHERE id='s_news_C1_06';

-- s_news_C1_04 — REWRITE
UPDATE sentences SET en='There are growing concerns about the erosion of N.', ko='N 침식에 대한 우려가 커지고 있어요.', highlight='growing concerns about the erosion of N' WHERE id='s_news_C1_04';

-- s_news_C1_01 — REWRITE
UPDATE sentences SET en='S sets a significant precedent for N.', ko='S는 N에 중요한 선례를 남겨요.', highlight='sets a significant precedent for N' WHERE id='s_news_C1_01';

-- s_news_C2_04 — REWRITE
UPDATE sentences SET en='S underpinning N is being contested.', ko='N을 뒷받침하는 S가 도전받고 있어요.', highlight='S underpinning N is being contested' WHERE id='s_news_C2_04';

-- s_news_C2_05 — REWRITE
UPDATE sentences SET en='S exposes the epistemic limits of N.', ko='S는 N의 인식론적 한계를 드러내요.', highlight='exposes the epistemic limits of N' WHERE id='s_news_C2_05';

-- s_news_C2_02 — REWRITE
UPDATE sentences SET en='S can be read as a manifestation of N.', ko='S는 N의 표현으로 읽힐 수 있어요.', highlight='S can be read as a manifestation of N' WHERE id='s_news_C2_02';

-- s_news_C2_03 — REWRITE
UPDATE sentences SET en='S of N has foreclosed A.', ko='N의 S가 A를 차단했어요.', highlight='S of N has foreclosed A' WHERE id='s_news_C2_03';

-- s_news_C2_06 — REWRITE
UPDATE sentences SET en='S remain systematically excluded from N.', ko='S는 N에서 체계적으로 배제돼요.', highlight='S remain systematically excluded from N' WHERE id='s_news_C2_06';

-- s_news_C2_01 — REWRITE
UPDATE sentences SET en='S''s unilateral actions undermine N.', ko='S의 일방적 행동이 N을 약화시켜요.', highlight='unilateral actions undermine N' WHERE id='s_news_C2_01';

-- s_news_C2_07 — REWRITE
UPDATE sentences SET en='S''s N drove its A choices.', ko='S의 N이 A 선택을 이끌었어요.', highlight='S''s N drove its A choices' WHERE id='s_news_C2_07';

-- ============================================================
-- TOPIC: sports
-- ============================================================

-- s_sports_A1_06 — REWRITE
UPDATE sentences SET en='S won N!', ko='S가 N에서 이겼어요!', highlight='S won' WHERE id='s_sports_A1_06';

-- s_sports_A1_02 — REWRITE
UPDATE sentences SET en='I like to V in N.', ko='저는 N에 V하는 걸 좋아해요.', highlight='I like to V' WHERE id='s_sports_A1_02';

-- s_sports_A1_03 — REWRITE
UPDATE sentences SET en='Can you V A?', ko='A하게 V할 수 있어요?', highlight='Can you V' WHERE id='s_sports_A1_03';

-- s_sports_A1_07 — REWRITE
UPDATE sentences SET en='I go to N every week.', ko='저는 매주 N에 가요.', highlight='I go to N every week' WHERE id='s_sports_A1_07';

-- s_sports_A1_04 — REWRITE
UPDATE sentences SET en='What is your favourite N?', ko='제일 좋아하는 N이 뭐예요?', highlight='What is your favourite N' WHERE id='s_sports_A1_04';

-- s_sports_A1_05 — REWRITE
UPDATE sentences SET en='Let''s V together after N!', ko='N 후에 같이 V해요!', highlight='Let''s V together' WHERE id='s_sports_A1_05';

-- s_sports_A1_01 — REWRITE
UPDATE sentences SET en='Do you play any N?', ko='N 하세요?', highlight='Do you play any N' WHERE id='s_sports_A1_01';

-- s_sports_A2_07 — REWRITE
UPDATE sentences SET en='S broke N by A.', ko='S가 N을 A 차이로 깼어요.', highlight='broke N by A' WHERE id='s_sports_A2_07';

-- s_sports_A2_02 — REWRITE
UPDATE sentences SET en='The N was A.', ko='N은 A이었어요.', highlight='The N was A' WHERE id='s_sports_A2_02';

-- s_sports_A2_05 — REWRITE
UPDATE sentences SET en='S ended in N.', ko='S가 N로 끝났어요.', highlight='S ended in N' WHERE id='s_sports_A2_05';

-- s_sports_A2_04 — REWRITE
UPDATE sentences SET en='I can''t believe S V.', ko='S가 V했다니 믿을 수가 없어요.', highlight='I can''t believe S V' WHERE id='s_sports_A2_04';

-- s_sports_A2_03 — REWRITE
UPDATE sentences SET en='S V-ed A times in N.', ko='S가 N에 A번 V했어요.', highlight='V-ed A times' WHERE id='s_sports_A2_03';

-- s_sports_A2_01 — REWRITE
UPDATE sentences SET en='Did you V N last night?', ko='어젯밤 N을 V했어요?', highlight='Did you V N' WHERE id='s_sports_A2_01';

-- s_sports_A2_06 — REWRITE
UPDATE sentences SET en='Who do you think will V N?', ko='N에서 누가 V할 것 같아요?', highlight='Who do you think will V' WHERE id='s_sports_A2_06';

-- s_sports_B1_05 — REWRITE
UPDATE sentences SET en='S should have V-ed N in that situation.', ko='S는 그 상황에서 N을 V했어야 했어요.', highlight='should have V-ed' WHERE id='s_sports_B1_05';

-- s_sports_B1_02 — REWRITE
UPDATE sentences SET en='Our strategy was to V and V quickly.', ko='우리 전략은 V하고 빠르게 V하는 것이었어요.', highlight='Our strategy was to V' WHERE id='s_sports_B1_02';

-- s_sports_B1_07 — REWRITE
UPDATE sentences SET en='S matters more than V-ing at all costs.', ko='S는 어떤 대가를 치르더라도 V하는 것보다 더 중요해요.', highlight='S matters more than V-ing' WHERE id='s_sports_B1_07';

-- s_sports_B1_06 — REWRITE
UPDATE sentences SET en='I''m not sure why S didn''t V A earlier.', ko='왜 S가 A를 더 일찍 V하지 않았는지 모르겠어요.', highlight='I''m not sure why S didn''t V' WHERE id='s_sports_B1_06';

-- s_sports_B1_01 — REWRITE
UPDATE sentences SET en='S changed N at halftime.', ko='S가 하프타임에 N을 바꿨어요.', highlight='S changed N at halftime' WHERE id='s_sports_B1_01';

-- s_sports_B1_03 — REWRITE
UPDATE sentences SET en='If S had V-ed first, N might have been A.', ko='S가 먼저 V했다면, N이 A했을 수도 있어요.', highlight='If S had V-ed, N might have been A' WHERE id='s_sports_B1_03';

-- s_sports_B1_04 — REWRITE
UPDATE sentences SET en='S focused on V-ing N throughout A.', ko='S는 A 내내 N을 V하는 데 집중했어요.', highlight='focused on V-ing N' WHERE id='s_sports_B1_04';

-- s_sports_B2_06 — REWRITE
UPDATE sentences SET en='Despite N, S managed to V.', ko='N에도 불구하고, S는 V에 성공했어요.', highlight='Despite N, S managed to V' WHERE id='s_sports_B2_06';

-- s_sports_B2_01 — REWRITE
UPDATE sentences SET en='S has transformed the way A V.', ko='S가 A가 V하는 방식을 바꿔놨어요.', highlight='has transformed the way A V' WHERE id='s_sports_B2_01';

-- s_sports_B2_02 — REWRITE
UPDATE sentences SET en='The data suggests that S significantly V A.', ko='데이터에 따르면 S가 A를 크게 V해요.', highlight='The data suggests that' WHERE id='s_sports_B2_02';

-- s_sports_B2_07 — REWRITE
UPDATE sentences SET en='It''s worth noting that S V N.', ko='S가 N을 V한다는 점은 주목할 만해요.', highlight='It''s worth noting that' WHERE id='s_sports_B2_07';

-- s_sports_B2_03 — REWRITE
UPDATE sentences SET en='Without N, S risk V-ing and A.', ko='N 없이는 S가 V와 A의 위험에 처해요.', highlight='risk V-ing' WHERE id='s_sports_B2_03';

-- s_sports_B2_04 — REWRITE
UPDATE sentences SET en='S''s N sets her apart from A.', ko='S의 N이 A와 그녀를 구별해줘요.', highlight='sets her apart from A' WHERE id='s_sports_B2_04';

-- s_sports_B2_05 — REWRITE
UPDATE sentences SET en='S is reviewing N to V A.', ko='S가 A를 V하기 위해 N을 검토 중이에요.', highlight='is reviewing N to V A' WHERE id='s_sports_B2_05';

-- s_sports_C1_02 — REWRITE
UPDATE sentences SET en='S are commonly observed following N in A.', ko='S는 A의 N 후에 흔히 관찰돼요.', highlight='S are commonly observed following N' WHERE id='s_sports_C1_02';

-- s_sports_C1_05 — REWRITE
UPDATE sentences SET en='Without N, A accumulates and B deteriorates.', ko='N 없이는 A가 쌓이고 B가 저하돼요.', highlight='accumulates and deteriorates' WHERE id='s_sports_C1_05';

-- s_sports_C1_04 — REWRITE
UPDATE sentences SET en='S within N have eroded A significantly.', ko='N 내의 S가 A를 크게 잠식했어요.', highlight='have eroded A significantly' WHERE id='s_sports_C1_04';

-- s_sports_C1_01 — REWRITE
UPDATE sentences SET en='V-ing at N elicits significant A over time.', ko='N에서 V하는 것은 시간이 지남에 따라 상당한 A를 이끌어내요.', highlight='elicits significant A' WHERE id='s_sports_C1_01';

-- s_sports_C1_07 — REWRITE
UPDATE sentences SET en='S in N extend well beyond A itself.', ko='N의 S는 A 자체를 훨씬 넘어서요.', highlight='extend well beyond A' WHERE id='s_sports_C1_07';

-- s_sports_C1_03 — REWRITE
UPDATE sentences SET en='S can help A reframe N as B.', ko='S는 A가 N을 B로 재해석하도록 도울 수 있어요.', highlight='reframe N as B' WHERE id='s_sports_C1_03';

-- s_sports_C1_06 — REWRITE
UPDATE sentences SET en='S must account for individual variation in N.', ko='S는 N의 개인 차이를 반드시 고려해야 해요.', highlight='must account for N' WHERE id='s_sports_C1_06';

-- s_sports_C2_01 — REWRITE
UPDATE sentences SET en='S provides a non-invasive means of quantifying N.', ko='S는 N을 정량화하는 비침습적 수단을 제공해요.', highlight='non-invasive means of quantifying N' WHERE id='s_sports_C2_01';

-- s_sports_C2_02 — REWRITE
UPDATE sentences SET en='S, including N, critically modulate A across B.', ko='N을 포함한 S가 B에서 A를 결정적으로 조절해요.', highlight='critically modulate A' WHERE id='s_sports_C2_02';

-- s_sports_C2_07 — REWRITE
UPDATE sentences SET en='S, if left unaddressed, may perpetuate N and predispose A to B.', ko='S가 방치될 경우 N을 지속시키고 A를 B에 취약하게 할 수 있어요.', highlight='if left unaddressed' WHERE id='s_sports_C2_07';

-- s_sports_C2_05 — REWRITE
UPDATE sentences SET en='S must be applied when comparing N across A.', ko='A 간의 N을 비교할 때 S를 적용해야 해요.', highlight='must be applied when comparing N' WHERE id='s_sports_C2_05';

-- s_sports_C2_03 — REWRITE
UPDATE sentences SET en='The N of S remains a subject of ongoing inquiry.', ko='S의 N은 계속 진행 중인 연구의 주제로 남아 있어요.', highlight='remains a subject of ongoing inquiry' WHERE id='s_sports_C2_03';

-- s_sports_C2_06 — REWRITE
UPDATE sentences SET en='The N of S necessitate A that replicates B.', ko='S의 N은 B를 재현하는 A를 필요로 해요.', highlight='necessitate A that replicates B' WHERE id='s_sports_C2_06';

-- s_sports_C2_04 — REWRITE
UPDATE sentences SET en='S to N are mediated by both A and B mechanisms.', ko='N에 대한 S는 A와 B 메커니즘 모두에 의해 매개돼요.', highlight='are mediated by A and B' WHERE id='s_sports_C2_04';

-- ============================================
-- batch-4-culture.sql
-- ============================================
-- Batch 4: emotion, culture, humanities, presentation, greeting
-- Rewriting non-pattern cards into true grammar templates with explicit variables.
-- Variables: V (verb), N (noun), S (subject), A/B (alternatives), ~ (placeholder), Adj (adjective)

-- ===== EMOTION =====

-- s_emotion_A1_01: "I'm so happy!" → "I'm so Adj"
UPDATE sentences SET en='I''m so Adj!', ko='저 정말 Adj해요!', highlight='I''m so Adj' WHERE id='s_emotion_A1_01';

-- s_emotion_A1_06: "I feel good!" → "I feel Adj"
UPDATE sentences SET en='I feel Adj!', ko='저 Adj한 기분이에요!', highlight='I feel Adj' WHERE id='s_emotion_A1_06';

-- s_emotion_A1_05: "I'm scared." → "I'm Adj"
UPDATE sentences SET en='I''m Adj.', ko='저 Adj해요.', highlight='I''m Adj' WHERE id='s_emotion_A1_05';

-- s_emotion_A1_03: "I'm really tired." → "I'm really Adj"
UPDATE sentences SET en='I''m really Adj.', ko='저 정말 Adj해요.', highlight='I''m really Adj' WHERE id='s_emotion_A1_03';

-- s_emotion_A1_07: "I'm not okay." → "I'm not Adj"
UPDATE sentences SET en='I''m not Adj.', ko='저 Adj하지 않아요.', highlight='I''m not Adj' WHERE id='s_emotion_A1_07';

-- s_emotion_A1_02: "I feel sad today." → "I feel Adj today"
UPDATE sentences SET en='I feel Adj today.', ko='오늘 Adj한 기분이에요.', highlight='I feel Adj today' WHERE id='s_emotion_A1_02';

-- s_emotion_A1_04: "Are you okay?" → "Are you Adj?"
UPDATE sentences SET en='Are you Adj?', ko='Adj해요?', highlight='Are you Adj' WHERE id='s_emotion_A1_04';

-- s_emotion_A2_01: "I'm a little worried about it." → "I'm a little Adj about ~"
UPDATE sentences SET en='I''m a little Adj about ~.', ko='~에 대해 좀 Adj해요.', highlight='a little Adj about ~' WHERE id='s_emotion_A2_01';

-- s_emotion_A2_06: "I'm feeling a bit bored at home." → "I'm feeling a bit Adj"
UPDATE sentences SET en='I''m feeling a bit Adj ~.', ko='~에서 좀 Adj하게 느껴져요.', highlight='feeling a bit Adj' WHERE id='s_emotion_A2_06';

-- s_emotion_A2_04: "I felt really grateful for your help." → "I felt really Adj for ~"
UPDATE sentences SET en='I felt really Adj for ~.', ko='~에 대해 정말 Adj함을 느꼈어요.', highlight='felt really Adj for ~' WHERE id='s_emotion_A2_04';

-- s_emotion_A2_02: "She seemed upset when I saw her." → "S seemed Adj when ~"
UPDATE sentences SET en='S seemed Adj when ~.', ko='~할 때 S는 Adj해 보였어요.', highlight='S seemed Adj' WHERE id='s_emotion_A2_02';

-- s_emotion_A2_03: "I got so nervous before the speech." → "I got so Adj before ~"
UPDATE sentences SET en='I got so Adj before ~.', ko='~ 전에 너무 Adj해졌어요.', highlight='got so Adj before ~' WHERE id='s_emotion_A2_03';

-- s_emotion_A2_07: "I was so relieved to hear that." → "I was so Adj to V"
UPDATE sentences SET en='I was so Adj to V that.', ko='그 말을 V해서 정말 Adj했어요.', highlight='so Adj to V' WHERE id='s_emotion_A2_07';

-- s_emotion_A2_05: "He was so surprised by the news." → "S was so Adj by N"
UPDATE sentences SET en='S was so Adj by N.', ko='S는 N에 정말 Adj했어요.', highlight='so Adj by N' WHERE id='s_emotion_A2_05';

-- s_emotion_B1_03: "I've been feeling a bit overwhelmed lately." → "I've been feeling a bit Adj lately"
UPDATE sentences SET en='I''ve been feeling a bit Adj lately.', ko='요즘 좀 Adj한 기분이에요.', highlight='feeling a bit Adj lately' WHERE id='s_emotion_B1_03';

-- s_emotion_B1_02: "It's okay to feel that way." → already pattern-like, keep as "It's okay to V"
UPDATE sentences SET en='It''s okay to V that way.', ko='그렇게 V하는 건 괜찮아요.', highlight='It''s okay to V' WHERE id='s_emotion_B1_02';

-- s_emotion_B1_04: "That must have been really frustrating for you." → "That must have been really Adj for ~"
UPDATE sentences SET en='That must have been really Adj for ~.', ko='그게 ~에게 정말 Adj했겠어요.', highlight='must have been really Adj' WHERE id='s_emotion_B1_04';

-- s_emotion_B1_07: "I'm so relieved it all worked out in the end." → "I'm so Adj (that) S V"
UPDATE sentences SET en='I''m so Adj that S V in the end.', ko='결국 S가 V해서 정말 Adj해요.', highlight='so Adj that S V' WHERE id='s_emotion_B1_07';

-- s_emotion_B1_06: "She seemed really enthusiastic about the project." → "S seemed really Adj about N"
UPDATE sentences SET en='S seemed really Adj about N.', ko='S는 N에 정말 Adj해 보였어요.', highlight='seemed really Adj about N' WHERE id='s_emotion_B1_06';

-- s_emotion_B1_05: "I felt so guilty about what happened." → "I felt so Adj about ~"
UPDATE sentences SET en='I felt so Adj about ~.', ko='~에 대해 정말 Adj함을 느꼈어요.', highlight='felt so Adj about ~' WHERE id='s_emotion_B1_05';

-- s_emotion_B1_01: "I completely understand how you feel." → "I completely V how S V"
UPDATE sentences SET en='I completely V how you feel.', ko='어떤 기분인지 완전히 V해요.', highlight='completely V how' WHERE id='s_emotion_B1_01';

-- s_emotion_B2_07: "The situation left me feeling utterly bewildered." → "N left me feeling Adj"
UPDATE sentences SET en='N left me feeling utterly Adj.', ko='N은 저를 완전히 Adj하게 만들었어요.', highlight='left me feeling Adj' WHERE id='s_emotion_B2_07';

-- s_emotion_B2_01: "I couldn't help feeling a sense of melancholy as I left." → "I couldn't help V-ing"
UPDATE sentences SET en='I couldn''t help V-ing ~.', ko='~하는 걸 어쩔 수 없었어요.', highlight='couldn''t help V-ing' WHERE id='s_emotion_B2_01';

-- s_emotion_B2_04: "I find it hard to put into words how grateful I am." → "I find it hard to V"
UPDATE sentences SET en='I find it hard to V ~.', ko='~을 V하기가 어려워요.', highlight='find it hard to V' WHERE id='s_emotion_B2_04';

-- s_emotion_B2_03: "She was visibly shaken by the news." → "S was visibly Adj by N"
UPDATE sentences SET en='S was visibly Adj by N.', ko='S는 N에 눈에 띄게 Adj했어요.', highlight='visibly Adj by N' WHERE id='s_emotion_B2_03';

-- s_emotion_B2_06: "I was completely overwhelmed with gratitude." → "I was completely Adj with N"
UPDATE sentences SET en='I was completely Adj with N.', ko='N으로 완전히 Adj됐어요.', highlight='completely Adj with N' WHERE id='s_emotion_B2_06';

-- s_emotion_B2_05: "There's something bittersweet about saying goodbye." → "There's something Adj about V-ing"
UPDATE sentences SET en='There''s something Adj about V-ing.', ko='V하는 것에는 Adj한 무언가가 있어요.', highlight='something Adj about V-ing' WHERE id='s_emotion_B2_05';

-- s_emotion_B2_02: "I felt a deep sense of nostalgia looking at those old photos." → "I felt a deep sense of N V-ing"
UPDATE sentences SET en='I felt a deep sense of N V-ing ~.', ko='~을 V하며 깊은 N을 느꼈어요.', highlight='a deep sense of N' WHERE id='s_emotion_B2_02';

-- s_emotion_C1_01: "There's a certain ambivalence I feel whenever I think about it." → "There's a certain N I feel whenever ~"
UPDATE sentences SET en='There''s a certain N I feel whenever S V.', ko='S가 V할 때마다 묘한 N이 들어요.', highlight='a certain N I feel whenever' WHERE id='s_emotion_C1_01';

-- s_emotion_C1_06: "There was an overwhelming sense of trepidation as the moment approached." → "There was an overwhelming sense of N as ~"
UPDATE sentences SET en='There was an overwhelming sense of N as S V.', ko='S가 V하면서 압도적인 N이 밀려왔어요.', highlight='overwhelming sense of N' WHERE id='s_emotion_C1_06';

-- s_emotion_C1_04: "His pensive silence spoke volumes about how he truly felt." → "S's N spoke volumes about ~"
UPDATE sentences SET en='S''s N spoke volumes about ~.', ko='S의 N이 ~에 대해 많은 것을 말해줬어요.', highlight='spoke volumes about ~' WHERE id='s_emotion_C1_04';

-- s_emotion_C1_07: "She experienced a strange mix of jubilation and loss." → "S experienced a strange mix of A and B"
UPDATE sentences SET en='S experienced a strange mix of A and B.', ko='S는 A와 B가 묘하게 뒤섞인 감정을 경험했어요.', highlight='a strange mix of A and B' WHERE id='s_emotion_C1_07';

-- s_emotion_C1_05: "I couldn't shake the feeling that something was deeply wrong." → "I couldn't shake the feeling that S V"
UPDATE sentences SET en='I couldn''t shake the feeling that S V.', ko='S가 V한다는 느낌을 떨쳐낼 수 없었어요.', highlight='couldn''t shake the feeling that S V' WHERE id='s_emotion_C1_05';

-- s_emotion_C1_03: "I was left with a profound feeling of disenchantment." → "I was left with a profound feeling of N"
UPDATE sentences SET en='I was left with a profound feeling of N.', ko='깊은 N이 남았어요.', highlight='a profound feeling of N' WHERE id='s_emotion_C1_03';

-- s_emotion_C1_02: "She seemed to carry a quiet sense of resignation." → "S seemed to carry a quiet sense of N"
UPDATE sentences SET en='S seemed to carry a quiet sense of N.', ko='S는 조용한 N을 지닌 것 같았어요.', highlight='carry a quiet sense of N' WHERE id='s_emotion_C1_02';

-- s_emotion_C2_04: "The lugubrious atmosphere of the old house seemed to seep into my very bones." → "The Adj N of ~ seemed to seep into my very bones"
UPDATE sentences SET en='The Adj N of ~ seemed to seep into my very bones.', ko='~의 Adj한 N이 제 뼛속까지 스며드는 것 같았어요.', highlight='Adj N seemed to seep into my very bones' WHERE id='s_emotion_C2_04';

-- s_emotion_C2_02: "There is something ineffable about the longing one feels for a place that no longer exists." → "There is something Adj about N"
UPDATE sentences SET en='There is something Adj about N that S V.', ko='S가 V하는 N에는 Adj한 무언가가 있어요.', highlight='something Adj about N' WHERE id='s_emotion_C2_02';

-- s_emotion_C2_03: "She remained sanguine in adversity, which struck me as either courage or delusion." → "S remained Adj in N, which struck me as either A or B"
UPDATE sentences SET en='S remained Adj in N, which struck me as either A or B.', ko='S는 N 속에서도 Adj했는데, 그것이 A인지 B인지 가늠이 어려웠어요.', highlight='remained Adj in N ... either A or B' WHERE id='s_emotion_C2_03';

-- s_emotion_C2_01: "He bore his grief with a stoic equanimity that was both admirable and heartbreaking." → "S bore ~ with a N that was both A and B"
UPDATE sentences SET en='S bore ~ with a N that was both A and B.', ko='S는 A이기도 하고 B이기도 한 N으로 ~을 견뎌냈어요.', highlight='bore ~ with a N that was both A and B' WHERE id='s_emotion_C2_01';

-- s_emotion_C2_06: "She was ebullient on the surface, yet I sensed an undercurrent of lachrymose longing." → "S was Adj on the surface, yet I sensed an undercurrent of N"
UPDATE sentences SET en='S was Adj on the surface, yet I sensed an undercurrent of N.', ko='S는 겉으로는 Adj해 보였지만, N의 저류가 느껴졌어요.', highlight='Adj on the surface, yet undercurrent of N' WHERE id='s_emotion_C2_06';

-- s_emotion_C2_07: "It is only in retrospect that I can appreciate the bittersweet richness of those years." → "It is only in retrospect that I can V ~"
UPDATE sentences SET en='It is only in retrospect that I can V ~.', ko='이제 돌이켜보니 ~을 비로소 V할 수 있어요.', highlight='only in retrospect that I can V' WHERE id='s_emotion_C2_07';

-- s_emotion_C2_05: "His magnanimous response to the criticism left everyone in the room humbled." → "S's Adj N to ~ left everyone Adj"
UPDATE sentences SET en='S''s Adj N to ~ left everyone Adj.', ko='~에 대한 S의 Adj한 N이 모두를 Adj하게 만들었어요.', highlight='Adj N left everyone Adj' WHERE id='s_emotion_C2_05';

-- ===== CULTURE =====

-- s_culture_A1_05: "Can you dance?" → "Can you V?" (already pattern-like, keep)
UPDATE sentences SET en='Can you V?', ko='V할 수 있어요?', highlight='Can you V' WHERE id='s_culture_A1_05';

-- s_culture_A1_06: "Do you play any instruments?" → "Do you V any N?"
UPDATE sentences SET en='Do you V any N?', ko='N을 V하세요?', highlight='Do you V any N' WHERE id='s_culture_A1_06';

-- s_culture_A1_04: "I love listening to music." → "I love V-ing N"
UPDATE sentences SET en='I love V-ing N.', ko='저는 N을 V하는 걸 좋아해요.', highlight='I love V-ing' WHERE id='s_culture_A1_04';

-- s_culture_A1_07: "I enjoy watching shows at the theatre." → "I enjoy V-ing N"
UPDATE sentences SET en='I enjoy V-ing N.', ko='저는 N을 V하는 걸 즐겨요.', highlight='I enjoy V-ing' WHERE id='s_culture_A1_07';

-- s_culture_A1_01: "What kind of music do you like?" → "What kind of N do you V?"
UPDATE sentences SET en='What kind of N do you V?', ko='어떤 N을 V하세요?', highlight='What kind of N' WHERE id='s_culture_A1_01';

-- s_culture_A1_02: "Do you like movies or books more?" → "Do you like A or B more?"
UPDATE sentences SET en='Do you like A or B more?', ko='A를 더 좋아해요, 아니면 B를 더 좋아해요?', highlight='Do you like A or B more' WHERE id='s_culture_A1_02';

-- s_culture_A1_03: "What is your favourite song?" → "What is your favourite N?"
UPDATE sentences SET en='What is your favourite N?', ko='가장 좋아하는 N이 뭐예요?', highlight='What is your favourite N' WHERE id='s_culture_A1_03';

-- s_culture_A2_04: already true pattern "I'd like ~" — KEEP
-- (no update needed)

-- s_culture_A2_03: "Is there a ticket office nearby?" → "Is there a N nearby?"
UPDATE sentences SET en='Is there a N nearby?', ko='근처에 N이 있나요?', highlight='Is there a N nearby' WHERE id='s_culture_A2_03';

-- s_culture_A2_02: "What time does the concert start?" → "What time does N V?"
UPDATE sentences SET en='What time does N V?', ko='N이 몇 시에 V해요?', highlight='What time does N V' WHERE id='s_culture_A2_02';

-- s_culture_A2_05: "The exhibition was really impressive." → "N was really Adj"
UPDATE sentences SET en='N was really Adj.', ko='N이 정말 Adj했어요.', highlight='N was really Adj' WHERE id='s_culture_A2_05';

-- s_culture_A2_01: "Have you ever been to a music festival?" → "Have you ever been to N?"
UPDATE sentences SET en='Have you ever been to N?', ko='N에 가본 적 있어요?', highlight='Have you ever been to N' WHERE id='s_culture_A2_01';

-- s_culture_A2_06: "Can I take photos inside the gallery?" → "Can I V N inside ~?"
UPDATE sentences SET en='Can I V N inside ~?', ko='~ 안에서 N을 V해도 될까요?', highlight='Can I V N inside ~' WHERE id='s_culture_A2_06';

-- s_culture_A2_07: "How long does the performance last?" → "How long does N V?"
UPDATE sentences SET en='How long does N V?', ko='N이 얼마나 V해요?', highlight='How long does N V' WHERE id='s_culture_A2_07';

-- s_culture_B1_06: "The atmosphere in the concert hall was absolutely electric." → "N was absolutely Adj"
UPDATE sentences SET en='N was absolutely Adj.', ko='N이 완전히 Adj했어요.', highlight='absolutely Adj' WHERE id='s_culture_B1_06';

-- s_culture_B1_07: "I'd strongly recommend this exhibition to anyone interested in modern art." → "I'd strongly recommend N to anyone interested in ~"
UPDATE sentences SET en='I''d strongly recommend N to anyone interested in ~.', ko='~에 관심 있는 분이라면 N을 강력히 추천해요.', highlight='strongly recommend N to anyone interested in ~' WHERE id='s_culture_B1_07';

-- s_culture_B1_05: "Have you had a chance to see the new exhibition at the gallery?" → "Have you had a chance to V?"
UPDATE sentences SET en='Have you had a chance to V ~?', ko='~을 V할 기회가 있으셨어요?', highlight='Have you had a chance to V' WHERE id='s_culture_B1_05';

-- s_culture_B1_04: "There's something deeply moving about the way the story unfolds." → "There's something Adj about the way S V"
UPDATE sentences SET en='There''s something Adj about the way S V.', ko='S가 V하는 방식에는 Adj한 무언가가 있어요.', highlight='something Adj about the way S V' WHERE id='s_culture_B1_04';

-- s_culture_B1_03: "I wasn't sure what to make of it at first, but it grew on me." → "I wasn't sure what to make of ~ at first, but it grew on me"
UPDATE sentences SET en='I wasn''t sure what to make of N at first, but it grew on me.', ko='처음엔 N을 어떻게 받아들여야 할지 몰랐지만, 점점 좋아졌어요.', highlight='wasn''t sure what to make of N ... grew on me' WHERE id='s_culture_B1_03';

-- s_culture_B1_02: "This piece really speaks to me on an emotional level." → "N really speaks to me on a ~ level"
UPDATE sentences SET en='N really speaks to me on a Adj level.', ko='N은 Adj적으로 정말 제 마음에 와닿아요.', highlight='really speaks to me' WHERE id='s_culture_B1_02';

-- s_culture_B1_01: "What I find most interesting about this painting is the use of colour." → "What I find most interesting about N is ~"
UPDATE sentences SET en='What I find most interesting about N is ~.', ko='N에서 가장 흥미로운 점은 ~예요.', highlight='What I find most interesting about N is' WHERE id='s_culture_B1_01';

-- s_culture_B2_05: "What sets this work apart is its willingness to challenge conventional expectations." → "What sets N apart is ~"
UPDATE sentences SET en='What sets N apart is ~.', ko='N을 돋보이게 하는 것은 ~예요.', highlight='What sets N apart is' WHERE id='s_culture_B2_05';

-- s_culture_B2_01: "While Korean pop culture has a global reach, traditional art forms still hold a central place in national identity." → "While S V, S still V"
UPDATE sentences SET en='While S V, S still V ~.', ko='S가 V하지만, S는 여전히 ~을 V해요.', highlight='While S V, S still V' WHERE id='s_culture_B2_01';

-- s_culture_B2_07: "The debate over cultural appropriation raises uncomfortable but necessary questions." → "The debate over N raises Adj questions"
UPDATE sentences SET en='The debate over N raises Adj questions.', ko='N에 관한 논쟁은 Adj한 질문을 제기해요.', highlight='debate over N raises Adj questions' WHERE id='s_culture_B2_07';

-- s_culture_B2_03: "The way a culture treats its artists says a lot about its values." → "The way S V says a lot about ~"
UPDATE sentences SET en='The way S V says a lot about ~.', ko='S가 V하는 방식은 ~에 대해 많은 것을 말해줘요.', highlight='says a lot about ~' WHERE id='s_culture_B2_03';

-- s_culture_B2_02: "There's a growing tension between preserving cultural heritage and embracing contemporary influences." → "There's a growing tension between A and B"
UPDATE sentences SET en='There''s a growing tension between A and B.', ko='A와 B 사이의 긴장이 커지고 있어요.', highlight='tension between A and B' WHERE id='s_culture_B2_02';

-- s_culture_B2_06: "It's worth noting that the artist's background heavily shaped the work's cultural references." → "It's worth noting that S V"
UPDATE sentences SET en='It''s worth noting that S V.', ko='S가 V한다는 점은 주목할 만해요.', highlight='It''s worth noting that S V' WHERE id='s_culture_B2_06';

-- s_culture_B2_04: "Cross-cultural exchange has always been central to artistic innovation." → "N has always been central to ~"
UPDATE sentences SET en='N has always been central to ~.', ko='N은 항상 ~의 핵심이었어요.', highlight='N has always been central to ~' WHERE id='s_culture_B2_04';

-- s_culture_C1_07: "By foregrounding the constructedness of its own narrative, the novel invites us to question the nature of storytelling itself." → "By V-ing N, S invites us to V"
UPDATE sentences SET en='By V-ing N, S invites us to V ~.', ko='N을 V함으로써, S는 우리가 ~을 V하도록 유도해요.', highlight='By V-ing N, S invites us to V' WHERE id='s_culture_C1_07';

-- s_culture_C1_06: "The film operates on multiple registers simultaneously — aesthetic, political, and psychological." → "N operates on multiple registers simultaneously — A, B, and C"
UPDATE sentences SET en='N operates on multiple registers simultaneously — A, B, and C.', ko='N은 A, B, C로 여러 차원에서 동시에 작동해요.', highlight='operates on multiple registers simultaneously' WHERE id='s_culture_C1_06';

-- s_culture_C1_01: "The work's power lies precisely in its refusal to offer easy resolution." → "N's power lies precisely in its refusal to V"
UPDATE sentences SET en='N''s power lies precisely in its refusal to V.', ko='N의 힘은 바로 V하기를 거부하는 데 있어요.', highlight='lies precisely in its refusal to V' WHERE id='s_culture_C1_01';

-- s_culture_C1_02: "One might argue that the narrative structure mirrors the fragmented nature of modern consciousness." → "One might argue that S mirrors N"
UPDATE sentences SET en='One might argue that S mirrors N.', ko='S가 N을 반영한다고 주장할 수 있어요.', highlight='One might argue that S mirrors N' WHERE id='s_culture_C1_02';

-- s_culture_C1_03: "The tension between form and content is never fully resolved in this piece." → "The tension between A and B is never fully resolved in N"
UPDATE sentences SET en='The tension between A and B is never fully resolved in N.', ko='N에서 A와 B 사이의 긴장은 결코 완전히 해결되지 않아요.', highlight='tension between A and B is never fully resolved' WHERE id='s_culture_C1_03';

-- s_culture_C1_05: "What distinguishes this director's work is the interplay between the personal and the political." → "What distinguishes N is the interplay between A and B"
UPDATE sentences SET en='What distinguishes N is the interplay between A and B.', ko='N을 구별하는 것은 A와 B 사이의 상호작용이에요.', highlight='What distinguishes N is the interplay between A and B' WHERE id='s_culture_C1_05';

-- s_culture_C1_04: "Rather than offering answers, the exhibition poses a series of provocative questions about identity." → "Rather than V-ing N, S poses a series of Adj questions about ~"
UPDATE sentences SET en='Rather than V-ing N, S poses a series of Adj questions about ~.', ko='N을 V하기보다는, S가 ~에 대한 일련의 Adj한 질문을 제기해요.', highlight='Rather than V-ing, S poses questions about ~' WHERE id='s_culture_C1_04';

-- s_culture_C2_02: "To speak of aesthetic autonomy is already to invoke a historically contingent set of assumptions." → "To speak of N is already to V ~"
UPDATE sentences SET en='To speak of N is already to V ~.', ko='N을 말하는 것은 이미 ~을 V하는 것이에요.', highlight='To speak of N is already to V' WHERE id='s_culture_C2_02';

-- s_culture_C2_06: "The sublime, far from being a natural category, is a cultural construction that serves specific ideological ends." → "N, far from being A, is B that serves ~"
UPDATE sentences SET en='N, far from being A, is B that serves ~.', ko='N은 A이기는커녕 ~에 기여하는 B예요.', highlight='far from being A, is B that serves' WHERE id='s_culture_C2_06';

-- s_culture_C2_03: "The question is not whether the text has a meaning, but who has the authority to determine it." → "The question is not whether S V, but who has the authority to V"
UPDATE sentences SET en='The question is not whether S V, but who has the authority to V.', ko='문제는 S가 V하느냐가 아니라 누가 V할 권위를 갖느냐예요.', highlight='not whether S V, but who has the authority to V' WHERE id='s_culture_C2_03';

-- s_culture_C2_01: "The work enacts a deconstruction of the very categories it appears to celebrate." → "N enacts a deconstruction of the very N (that) it appears to V"
UPDATE sentences SET en='N enacts a deconstruction of the very N it appears to V.', ko='N은 자신이 V하는 것처럼 보이는 바로 그 N을 해체하는 것을 수행해요.', highlight='enacts a deconstruction of the very N' WHERE id='s_culture_C2_01';

-- s_culture_C2_04: "Any attempt to stabilise the work's meaning is already a political act." → "Any attempt to V N is already a Adj act"
UPDATE sentences SET en='Any attempt to V N is already a Adj act.', ko='N을 V하려는 모든 시도는 이미 Adj한 행위예요.', highlight='Any attempt to V N is already a Adj act' WHERE id='s_culture_C2_04';

-- s_culture_C2_07: "In displacing the centre, the work opens up a rhizomatic field of possible meanings that resist hierarchical ordering." → "In V-ing N, S opens up a Adj field of ~ that resist ~"
UPDATE sentences SET en='In V-ing N, S opens up a Adj field of ~ that resist N.', ko='N을 V함으로써, S는 N에 저항하는 ~의 Adj한 장을 열어요.', highlight='In V-ing N, S opens up a Adj field' WHERE id='s_culture_C2_07';

-- s_culture_C2_05: "What the archive reveals is not just what was recorded but what was systematically excluded." → "What N reveals is not just ~ but ~"
UPDATE sentences SET en='What N reveals is not just A but B.', ko='N이 드러내는 것은 A뿐만 아니라 B예요.', highlight='What N reveals is not just A but B' WHERE id='s_culture_C2_05';

-- ===== HUMANITIES =====

-- s_humanities_A1_03: "I really like this story." → "I really V this N"
UPDATE sentences SET en='I really V this N.', ko='이 N이 정말 V해요.', highlight='really V this N' WHERE id='s_humanities_A1_03';

-- s_humanities_A1_02: "What is your favorite book?" → "What is your favorite N?"
UPDATE sentences SET en='What is your favorite N?', ko='가장 좋아하는 N이 뭐예요?', highlight='your favorite N' WHERE id='s_humanities_A1_02';

-- s_humanities_A1_01: "Have you read any good books lately?" → "Have you V any Adj N lately?"
UPDATE sentences SET en='Have you V any Adj N lately?', ko='최근에 Adj한 N을 V한 적 있어요?', highlight='V any Adj N lately' WHERE id='s_humanities_A1_01';

-- s_humanities_A1_04: "Can you tell me the name of the book?" → "Can you tell me the N of ~?"
UPDATE sentences SET en='Can you tell me the N of ~?', ko='~의 N을 알려줄 수 있어요?', highlight='tell me the N of ~' WHERE id='s_humanities_A1_04';

-- s_humanities_A1_05: "I want to read more books in English." → "I want to V more N in ~"
UPDATE sentences SET en='I want to V more N in ~.', ko='~로 된 N을 더 V하고 싶어요.', highlight='I want to V more N' WHERE id='s_humanities_A1_05';

-- s_humanities_A1_06: "This poem is very beautiful." → "This N is very Adj"
UPDATE sentences SET en='This N is very Adj.', ko='이 N은 정말 Adj해요.', highlight='This N is very Adj' WHERE id='s_humanities_A1_06';

-- s_humanities_A1_07: "Do you like to read stories?" → "Do you like to V N?"
UPDATE sentences SET en='Do you like to V N?', ko='N을 V하는 걸 좋아하세요?', highlight='Do you like to V N' WHERE id='s_humanities_A1_07';

-- s_humanities_A2_01: "Who is your favorite author and why?" → "Who is your favorite N and why?"
UPDATE sentences SET en='Who is your favorite N and why?', ko='가장 좋아하는 N은 누구이고 왜 그런가요?', highlight='your favorite N and why' WHERE id='s_humanities_A2_01';

-- s_humanities_A2_05: "What kind of books do you usually read?" → "What kind of N do you usually V?"
UPDATE sentences SET en='What kind of N do you usually V?', ko='보통 어떤 N을 V하세요?', highlight='What kind of N do you usually V' WHERE id='s_humanities_A2_05';

-- s_humanities_A2_06: "I prefer historical fiction to fantasy." → "I prefer A to B"
UPDATE sentences SET en='I prefer A to B.', ko='저는 B보다 A를 더 좋아해요.', highlight='prefer A to B' WHERE id='s_humanities_A2_06';

-- s_humanities_A2_07: "The main character in this novel is very interesting." → "The N in this N is very Adj"
UPDATE sentences SET en='The N in this N is very Adj.', ko='이 N의 N이 매우 Adj해요.', highlight='The N in this N is very Adj' WHERE id='s_humanities_A2_07';

-- s_humanities_A2_04: "Have you heard of this author before?" → "Have you heard of N before?"
UPDATE sentences SET en='Have you heard of N before?', ko='N에 대해 들어본 적 있어요?', highlight='Have you heard of N' WHERE id='s_humanities_A2_04';

-- s_humanities_A2_03: "This book is based on a true story." → "This N is based on N"
UPDATE sentences SET en='This N is based on N.', ko='이 N은 N을 바탕으로 했어요.', highlight='based on N' WHERE id='s_humanities_A2_03';

-- s_humanities_A2_02: "I enjoy reading mystery novels." → "I enjoy V-ing N"
UPDATE sentences SET en='I enjoy V-ing N.', ko='저는 N을 V하는 걸 즐겨요.', highlight='enjoy V-ing N' WHERE id='s_humanities_A2_02';

-- s_humanities_B1_07: "Can you give an example from the text to support your idea?" → "Can you give an example from N to support ~?"
UPDATE sentences SET en='Can you give an example from N to support ~?', ko='~을 뒷받침할 N에서의 예시를 들어줄 수 있나요?', highlight='give an example from N to support' WHERE id='s_humanities_B1_07';

-- s_humanities_B1_02: "From whose perspective is the story told?" → "From whose perspective is N V-ed?"
UPDATE sentences SET en='From whose perspective is N V-ed?', ko='N은 누구의 관점에서 V되나요?', highlight='From whose perspective is N V-ed' WHERE id='s_humanities_B1_02';

-- s_humanities_B1_04: "What do you think the writer is trying to say?" → "What do you think S is trying to V?"
UPDATE sentences SET en='What do you think S is trying to V?', ko='S가 무엇을 V하려 한다고 생각하세요?', highlight='What do you think S is trying to V' WHERE id='s_humanities_B1_04';

-- s_humanities_B1_05: "The conflict between tradition and modernity runs throughout the novel." → "The conflict between A and B runs throughout N"
UPDATE sentences SET en='The conflict between A and B runs throughout N.', ko='A와 B 사이의 갈등이 N 전반에 걸쳐 흐르고 있어요.', highlight='conflict between A and B runs throughout N' WHERE id='s_humanities_B1_05';

-- s_humanities_B1_03: "How does the setting influence the characters' behavior?" → "How does N influence N?"
UPDATE sentences SET en='How does N influence N?', ko='N이 N에 어떤 영향을 미치나요?', highlight='How does N influence N' WHERE id='s_humanities_B1_03';

-- s_humanities_B1_06: "I found the narrator unreliable because his account kept changing." → "I found N Adj because S kept V-ing"
UPDATE sentences SET en='I found N Adj because S kept V-ing.', ko='S가 계속 V해서 N을 Adj하다고 느꼈어요.', highlight='found N Adj ... kept V-ing' WHERE id='s_humanities_B1_06';

-- s_humanities_B1_01: "The author uses symbolism to convey the theme of loss." → "S uses N to V N"
UPDATE sentences SET en='S uses N to V N.', ko='S는 N을 V하기 위해 N을 사용해요.', highlight='uses N to V N' WHERE id='s_humanities_B1_01';

-- s_humanities_B2_07: "The paradox at the heart of the novel is that freedom leads to isolation." → "The paradox at the heart of N is that S V"
UPDATE sentences SET en='The paradox at the heart of N is that S V.', ko='N의 핵심에 있는 역설은 S가 V한다는 것이에요.', highlight='paradox at the heart of N is that S V' WHERE id='s_humanities_B2_07';

-- s_humanities_B2_06: "The satirical tone forces the reader to question assumptions they might otherwise take for granted." → "The Adj N forces the reader to V ~"
UPDATE sentences SET en='The Adj N forces the reader to V ~.', ko='Adj한 N은 독자로 하여금 ~을 V하게 만들어요.', highlight='Adj N forces the reader to V' WHERE id='s_humanities_B2_06';

-- s_humanities_B2_02: "One could argue that the novel is more of an allegory than a realist text." → "One could argue that S is more of A than B"
UPDATE sentences SET en='One could argue that S is more of A than B.', ko='S는 B라기보다 A에 가깝다고 주장할 수 있어요.', highlight='One could argue that S is more of A than B' WHERE id='s_humanities_B2_02';

-- s_humanities_B2_05: "Reading the novel against its historical context changes how we interpret the ending." → "Reading N against its ~ context changes how we V ~"
UPDATE sentences SET en='Reading N against its Adj context changes how we V ~.', ko='N을 Adj한 맥락에 비추어 읽으면 우리가 ~을 V하는 방식이 달라져요.', highlight='Reading N against its context changes how we V' WHERE id='s_humanities_B2_05';

-- s_humanities_B2_03: "The motif of water recurs throughout the text, suggesting purification." → "The motif of N recurs throughout N, suggesting ~"
UPDATE sentences SET en='The motif of N recurs throughout N, suggesting ~.', ko='N의 모티프가 N 전반에 반복되며 ~을 암시해요.', highlight='motif of N recurs throughout N, suggesting' WHERE id='s_humanities_B2_03';

-- s_humanities_B2_01: "The irony lies in the gap between what the narrator says and what actually happens." → "The irony lies in the gap between A and B"
UPDATE sentences SET en='The irony lies in the gap between A and B.', ko='아이러니는 A와 B 사이의 간극에 있어요.', highlight='irony lies in the gap between A and B' WHERE id='s_humanities_B2_01';

-- s_humanities_B2_04: "The subtext reveals a deep anxiety about social class." → "The subtext reveals a deep N about ~"
UPDATE sentences SET en='The subtext reveals a deep N about ~.', ko='서브텍스트는 ~에 대한 깊은 N을 드러내요.', highlight='subtext reveals a deep N about ~' WHERE id='s_humanities_B2_04';

-- s_humanities_C1_07: "The sublime, as Burke defines it, involves a blend of terror and awe that exceeds rational comprehension." → "N, as S defines it, involves a blend of A and B that exceeds ~"
UPDATE sentences SET en='N, as S defines it, involves a blend of A and B that exceeds ~.', ko='S가 정의한 N은 ~을 초월하는 A와 B의 혼합을 포함해요.', highlight='involves a blend of A and B that exceeds' WHERE id='s_humanities_C1_07';

-- s_humanities_C1_03: "Intertextuality suggests that no text is fully autonomous; all writing responds to what came before." → "N suggests that no N is fully Adj; all N V ~"
UPDATE sentences SET en='N suggests that no N is fully Adj; all N V ~.', ko='N은 완전히 Adj한 N은 없으며, 모든 N이 ~한다는 것을 시사해요.', highlight='suggests that no N is fully Adj' WHERE id='s_humanities_C1_03';

-- s_humanities_C1_06: "Bakhtin's concept of polyphony challenges the idea of a single authoritative voice in the novel." → "S's concept of N challenges the idea of ~"
UPDATE sentences SET en='S''s concept of N challenges the idea of ~.', ko='S의 N 개념은 ~이라는 생각에 도전해요.', highlight='challenges the idea of ~' WHERE id='s_humanities_C1_06';

-- s_humanities_C1_04: "Deconstruction does not destroy meaning; it reveals the instability that was always already there." → "S does not V N; it reveals the N that was always already there"
UPDATE sentences SET en='S does not V N; it reveals the N that was always already there.', ko='S는 N을 V하지 않고, 항상 이미 그곳에 있던 N을 드러내요.', highlight='always already there' WHERE id='s_humanities_C1_04';

-- s_humanities_C1_01: "A hermeneutic approach asks not what the text means, but how meaning is produced." → "A Adj approach asks not what S V, but how S V"
UPDATE sentences SET en='A Adj approach asks not what S V, but how S V.', ko='Adj한 접근은 S가 무엇을 V하는지가 아니라 S가 어떻게 V하는지를 묻죠.', highlight='asks not what S V, but how S V' WHERE id='s_humanities_C1_01';

-- s_humanities_C1_05: "Phenomenological criticism foregrounds the reader's lived experience of the text." → "S foregrounds N"
UPDATE sentences SET en='S foregrounds N.', ko='S는 N을 전면에 부각시켜요.', highlight='S foregrounds N' WHERE id='s_humanities_C1_05';

-- s_humanities_C1_02: "Through a semiotic lens, the white dress signifies far more than purity." → "Through a Adj lens, N signifies far more than N"
UPDATE sentences SET en='Through a Adj lens, N signifies far more than N.', ko='Adj한 렌즈를 통하면, N은 N 이상의 훨씬 많은 것을 의미해요.', highlight='Through a Adj lens, N signifies far more than' WHERE id='s_humanities_C1_02';

-- s_humanities_C2_01: "Différance operates as the ungraspable condition of possibility for all meaning." → "N operates as the Adj condition of possibility for ~"
UPDATE sentences SET en='N operates as the Adj condition of possibility for ~.', ko='N은 ~의 가능성에 대한 Adj한 조건으로 작동해요.', highlight='operates as the Adj condition of possibility' WHERE id='s_humanities_C2_01';

-- s_humanities_C2_06: "The chronotope of the threshold marks a liminal space where identity is suspended between states." → "The N of N marks a liminal space where S is suspended between ~"
UPDATE sentences SET en='The N of N marks a liminal space where S is suspended between A and B.', ko='N의 N은 S가 A와 B 사이에 유예되는 경계적 공간을 표시해요.', highlight='marks a liminal space where S is suspended between A and B' WHERE id='s_humanities_C2_06';

-- s_humanities_C2_07: "Negative capability, for Keats, is not a weakness but the poet's supreme capacity to inhabit uncertainty without discomfort." → "N, for S, is not A but the N's supreme capacity to V ~"
UPDATE sentences SET en='N, for S, is not A but the N''s supreme capacity to V ~.', ko='S에게 N은 A가 아니라 N의 ~을 V하는 최고 능력이에요.', highlight='not A but the N''s supreme capacity to V' WHERE id='s_humanities_C2_07';

-- s_humanities_C2_04: "As a rhizome, the text resists any single origin or fixed endpoint of meaning." → "As a N, S resists any single A or fixed B of ~"
UPDATE sentences SET en='As a N, S resists any single A or fixed B of ~.', ko='N으로서 S는 ~의 어떠한 단일한 A나 고정된 B에도 저항해요.', highlight='resists any single A or fixed B' WHERE id='s_humanities_C2_04';

-- s_humanities_C2_02: "The palimpsest as a metaphor invites us to read the text's silences as much as its statements." → "N as a metaphor invites us to V A as much as B"
UPDATE sentences SET en='N as a metaphor invites us to V A as much as B.', ko='N을 은유로 취하면, B만큼 A도 V하라는 초대가 돼요.', highlight='invites us to V A as much as B' WHERE id='s_humanities_C2_02';

-- s_humanities_C2_05: "Heteroglossia ensures that the novel can never be reduced to a single ideological position." → "N ensures that S can never be reduced to a single Adj position"
UPDATE sentences SET en='N ensures that S can never be reduced to a single Adj position.', ko='N은 S가 결코 단일한 Adj 입장으로 환원될 수 없음을 보장해요.', highlight='can never be reduced to a single Adj position' WHERE id='s_humanities_C2_05';

-- s_humanities_C2_03: "Defamiliarization, according to the Russian Formalists, is the very purpose of literary language." → "N, according to S, is the very purpose of N"
UPDATE sentences SET en='N, according to S, is the very purpose of N.', ko='S에 따르면, N은 N의 바로 그 목적이에요.', highlight='the very purpose of N' WHERE id='s_humanities_C2_03';

-- ===== PRESENTATION =====

-- s_presentation_A1_07: "That is the end of my talk. Thank you." → "That is the end of N. Thank you."
UPDATE sentences SET en='That is the end of N. Thank you.', ko='N을 마치겠습니다. 감사합니다.', highlight='That is the end of N' WHERE id='s_presentation_A1_07';

-- s_presentation_A1_04: "Please look at this slide." → "Please look at N"
UPDATE sentences SET en='Please look at N.', ko='N을 봐주세요.', highlight='Please look at N' WHERE id='s_presentation_A1_04';

-- s_presentation_A1_02: "Today I will talk about our project." → "Today I will talk about N"
UPDATE sentences SET en='Today I will talk about N.', ko='오늘 N에 대해 이야기하겠습니다.', highlight='talk about N' WHERE id='s_presentation_A1_02';

-- s_presentation_A1_03: "My name is Ji-yeon and I am from the design team." → "My name is ~ and I am from N"
UPDATE sentences SET en='My name is ~ and I am from N.', ko='제 이름은 ~이고 N에 있습니다.', highlight='My name is ~ and I am from N' WHERE id='s_presentation_A1_03';

-- s_presentation_A1_01: "Let me introduce myself." → already true pattern, KEEP but make slightly more flexible
UPDATE sentences SET en='Let me V ~.', ko='제가 ~을 V하겠습니다.', highlight='Let me V' WHERE id='s_presentation_A1_01';

-- s_presentation_A1_05: "First, I will show you the main idea." → "First, I will V you N"
UPDATE sentences SET en='First, I will V you N.', ko='먼저 N을 V해드리겠습니다.', highlight='First, I will V you N' WHERE id='s_presentation_A1_05';

-- s_presentation_A1_06: "Are there any questions?" → "Are there any N?"
UPDATE sentences SET en='Are there any N?', ko='N이 있으신가요?', highlight='Are there any N' WHERE id='s_presentation_A1_06';

-- s_presentation_A2_02: "First I will cover the background, then the findings, and finally the recommendations." → "First I will V A, then B, and finally C"
UPDATE sentences SET en='First I will V A, then B, and finally C.', ko='먼저 A를 V하고, 그다음 B, 마지막으로 C를 V하겠습니다.', highlight='First ... then ... finally' WHERE id='s_presentation_A2_02';

-- s_presentation_A2_07: "In conclusion, the data shows a clear trend." → "In conclusion, S V ~"
UPDATE sentences SET en='In conclusion, S V ~.', ko='결론적으로, S가 ~을 V합니다.', highlight='In conclusion, S V' WHERE id='s_presentation_A2_07';

-- s_presentation_A2_06: "By the end of this presentation, you will understand the key steps." → "By the end of N, you will V ~"
UPDATE sentences SET en='By the end of N, you will V ~.', ko='N이 끝날 때쯤이면 ~을 V하게 될 것입니다.', highlight='By the end of N, you will V' WHERE id='s_presentation_A2_06';

-- s_presentation_A2_04: "Let me give you a brief overview before we begin." → "Let me V you a brief N before we V"
UPDATE sentences SET en='Let me V you a brief N before we V.', ko='V하기 전에 간략한 N을 V해드리겠습니다.', highlight='Let me V you a brief N' WHERE id='s_presentation_A2_04';

-- s_presentation_A2_03: "Please feel free to ask questions at the end." → "Please feel free to V"
UPDATE sentences SET en='Please feel free to V ~.', ko='편하게 V해 주세요.', highlight='Please feel free to V' WHERE id='s_presentation_A2_03';

-- s_presentation_A2_01: "My talk is divided into three parts." → "N is divided into ~ parts"
UPDATE sentences SET en='N is divided into ~ parts.', ko='N은 ~ 부분으로 나뉩니다.', highlight='N is divided into ~ parts' WHERE id='s_presentation_A2_01';

-- s_presentation_A2_05: "The main topic of today's presentation is customer satisfaction." → "The main topic of N is N"
UPDATE sentences SET en='The main topic of N is N.', ko='N의 주요 주제는 N입니다.', highlight='The main topic of N is' WHERE id='s_presentation_A2_05';

-- s_presentation_B1_06: "As I mentioned earlier, the key challenge is timing." → "As I mentioned earlier, the key N is ~"
UPDATE sentences SET en='As I mentioned earlier, the key N is ~.', ko='앞서 언급했듯이, 핵심 N은 ~입니다.', highlight='As I mentioned earlier' WHERE id='s_presentation_B1_06';

-- s_presentation_B1_05: "To illustrate this point, let me give you a concrete example." → "To illustrate this point, let me V you N"
UPDATE sentences SET en='To illustrate this point, let me V you N.', ko='이 요점을 설명하기 위해 N을 V해드리겠습니다.', highlight='To illustrate this point, let me V you N' WHERE id='s_presentation_B1_05';

-- s_presentation_B1_04: "This brings me to my second point." → "This brings me to my ~ point/N"
UPDATE sentences SET en='This brings me to my ~ point.', ko='이것이 저를 ~ 요점으로 이끕니다.', highlight='This brings me to my ~ point' WHERE id='s_presentation_B1_04';

-- s_presentation_B1_03: "I'd like to draw your attention to this chart." → "I'd like to draw your attention to N"
UPDATE sentences SET en='I''d like to draw your attention to N.', ko='N에 주목해 주시기 바랍니다.', highlight='draw your attention to N' WHERE id='s_presentation_B1_03';

-- s_presentation_B1_01: "Now let's move on to the next point." → "Now let's move on to N"
UPDATE sentences SET en='Now let''s move on to N.', ko='이제 N으로 넘어가겠습니다.', highlight='let''s move on to N' WHERE id='s_presentation_B1_01';

-- s_presentation_B1_02: "Having looked at the problem, let's now consider the solution." → "Having V-ed N, let's now V N"
UPDATE sentences SET en='Having V-ed N, let''s now V N.', ko='N을 V했으니, 이제 N을 V해 보겠습니다.', highlight='Having V-ed N, let''s now V' WHERE id='s_presentation_B1_02';

-- s_presentation_B1_07: "Before I move on, are there any questions so far?" → "Before I V, are there any N so far?"
UPDATE sentences SET en='Before I V, are there any N so far?', ko='V하기 전에, 지금까지 N 있으신가요?', highlight='Before I V' WHERE id='s_presentation_B1_07';

-- s_presentation_B2_04: "To summarize the key takeaways from today's presentation..." → "To summarize the key N from N..."
UPDATE sentences SET en='To summarize the key N from N...', ko='N의 핵심 N을 요약하자면...', highlight='To summarize the key N' WHERE id='s_presentation_B2_04';

-- s_presentation_B2_02: "It is worth noting that this trend has been consistent for three years." → "It is worth noting that S V"
UPDATE sentences SET en='It is worth noting that S V.', ko='S가 V한다는 점은 주목할 만합니다.', highlight='It is worth noting that S V' WHERE id='s_presentation_B2_02';

-- s_presentation_B2_03: "The data compellingly demonstrates that our approach is working." → "N compellingly demonstrates that S V"
UPDATE sentences SET en='N compellingly demonstrates that S V.', ko='N은 S가 V한다는 것을 설득력 있게 증명합니다.', highlight='compellingly demonstrates that S V' WHERE id='s_presentation_B2_03';

-- s_presentation_B2_07: "Should you have any further questions, please do not hesitate to reach out." → "Should you V, please do not hesitate to V"
UPDATE sentences SET en='Should you V ~, please do not hesitate to V.', ko='~을 V하시면 언제든지 V해 주시기 바랍니다.', highlight='Should you V, please do not hesitate to V' WHERE id='s_presentation_B2_07';

-- s_presentation_B2_01: "What I want to emphasize here is the long-term impact of this decision." → "What I want to V here is N"
UPDATE sentences SET en='What I want to V here is N.', ko='제가 여기서 V하고 싶은 것은 N입니다.', highlight='What I want to V here is N' WHERE id='s_presentation_B2_01';

-- s_presentation_B2_06: "In light of this evidence, I strongly recommend proceeding with option B." → "In light of N, I strongly recommend V-ing ~"
UPDATE sentences SET en='In light of N, I strongly recommend V-ing ~.', ko='N에 비추어 볼 때, 저는 ~을 V할 것을 강력히 권장합니다.', highlight='In light of N, I strongly recommend V-ing' WHERE id='s_presentation_B2_06';

-- s_presentation_B2_05: "I would like to leave you with one final thought." → "I would like to leave you with one final N"
UPDATE sentences SET en='I would like to leave you with one final N.', ko='마지막으로 한 가지 N을 남기고 싶습니다.', highlight='leave you with one final N' WHERE id='s_presentation_B2_05';

-- s_presentation_C1_05: "While the quantitative data is compelling, the qualitative insights reveal a more nuanced picture." → "While A is Adj, B reveals a more Adj picture"
UPDATE sentences SET en='While A is Adj, B reveals a more Adj picture.', ko='A는 Adj하지만, B는 더 Adj한 그림을 드러냅니다.', highlight='While A is Adj, B reveals a more Adj picture' WHERE id='s_presentation_C1_05';

-- s_presentation_C1_02: "I will now deconstruct the conventional wisdom surrounding this issue." → "I will now V the conventional wisdom surrounding N"
UPDATE sentences SET en='I will now V the conventional wisdom surrounding N.', ko='이제 N을 둘러싼 통념을 V하겠습니다.', highlight='V the conventional wisdom surrounding N' WHERE id='s_presentation_C1_02';

-- s_presentation_C1_06: "I would posit that the root cause lies not in the symptom but in the underlying system." → "I would posit that S lies not in A but in B"
UPDATE sentences SET en='I would posit that S lies not in A but in B.', ko='S는 A가 아니라 B에 있다고 주장하고자 합니다.', highlight='I would posit that S lies not in A but in B' WHERE id='s_presentation_C1_06';

-- s_presentation_C1_01: "The empirical evidence overwhelmingly supports the hypothesis that engagement drives retention." → "The N overwhelmingly supports the hypothesis that S V"
UPDATE sentences SET en='The N overwhelmingly supports the hypothesis that S V.', ko='N은 S가 V한다는 가설을 압도적으로 뒷받침합니다.', highlight='overwhelmingly supports the hypothesis that S V' WHERE id='s_presentation_C1_01';

-- s_presentation_C1_07: "To conclude, the convergence of these three factors creates an unprecedented opportunity." → "To conclude, the convergence of N creates an Adj N"
UPDATE sentences SET en='To conclude, the convergence of N creates an Adj N.', ko='결론적으로, N의 수렴은 Adj한 N을 만들어냅니다.', highlight='convergence of N creates an Adj N' WHERE id='s_presentation_C1_07';

-- s_presentation_C1_04: "The implications of this paradigm shift extend far beyond our immediate industry." → "The implications of N extend far beyond ~"
UPDATE sentences SET en='The implications of N extend far beyond ~.', ko='N의 함의는 ~을 훨씬 넘어섭니다.', highlight='implications of N extend far beyond ~' WHERE id='s_presentation_C1_04';

-- s_presentation_C1_03: "This framework allows us to synthesize findings across multiple disciplines." → "This N allows us to V N across ~"
UPDATE sentences SET en='This N allows us to V N across ~.', ko='이 N을 통해 ~에 걸친 N을 V할 수 있습니다.', highlight='allows us to V N across ~' WHERE id='s_presentation_C1_03';

-- s_presentation_C2_03: "I invite you to interrogate your own assumptions as we work through this evidence together." → "I invite you to V your own N as we V ~ together"
UPDATE sentences SET en='I invite you to V your own N as we V ~ together.', ko='우리가 함께 ~을 V하면서 자신의 N을 V하시길 권합니다.', highlight='invite you to V your own N' WHERE id='s_presentation_C2_03';

-- s_presentation_C2_02: "What this meta-analysis reveals is not merely correlation but a robust causal mechanism." → "What N reveals is not merely A but B"
UPDATE sentences SET en='What N reveals is not merely A but B.', ko='N이 드러내는 것은 단순한 A가 아니라 B입니다.', highlight='not merely A but B' WHERE id='s_presentation_C2_02';

-- s_presentation_C2_07: "I leave you with a provocation: if our praxis does not challenge existing structures, what exactly are we here to present?" → "I leave you with a provocation: if S does not V N, what exactly ~?"
UPDATE sentences SET en='I leave you with a provocation: if S does not V N, what exactly ~?', ko='하나의 도발을 남깁니다: S가 N을 V하지 않는다면, 정확히 무엇을 ~?', highlight='I leave you with a provocation' WHERE id='s_presentation_C2_07';

-- s_presentation_C2_04: "The epistemological question we must first address is: how do we know what we think we know?" → "The Adj question we must first address is: ~?"
UPDATE sentences SET en='The Adj question we must first address is: ~?', ko='우리가 먼저 다루어야 할 Adj한 질문은 이것입니다: ~?', highlight='The Adj question we must first address is' WHERE id='s_presentation_C2_04';

-- s_presentation_C2_01: "The dialectical tension between efficiency and equity is not a problem to be solved but a dynamic to be managed." → "The N between A and B is not a problem to be V-ed but a N to be V-ed"
UPDATE sentences SET en='The N between A and B is not a problem to be V-ed but a N to be V-ed.', ko='A와 B 사이의 N은 V되어야 할 문제가 아니라 V되어야 할 N입니다.', highlight='not a problem to be V-ed but a N to be V-ed' WHERE id='s_presentation_C2_01';

-- s_presentation_C2_05: "Through a process of triangulation across qualitative, quantitative, and ethnographic sources, we arrive at a remarkably consistent picture." → "Through a process of N across A, B, and C, we arrive at a remarkably Adj picture"
UPDATE sentences SET en='Through a process of N across A, B, and C, we arrive at a remarkably Adj picture.', ko='A, B, C에 걸친 N의 과정을 통해 우리는 놀랍도록 Adj한 그림에 도달합니다.', highlight='Through a process of N ... remarkably Adj picture' WHERE id='s_presentation_C2_05';

-- s_presentation_C2_06: "Far from being a peripheral concern, reflexivity is central to the integrity of this entire analysis." → "Far from being A, N is central to ~"
UPDATE sentences SET en='Far from being A, N is central to ~.', ko='N은 A이기는커녕 ~의 핵심입니다.', highlight='Far from being A, N is central to ~' WHERE id='s_presentation_C2_06';

-- ===== GREETING =====

-- s_greeting_A1_06: "Goodbye! See you later!" — fixed greeting expression, KEEP
-- (no update needed)

-- s_greeting_A1_04: "My name is ___. What's your name?" — already a template form with ___ placeholder, KEEP
-- (no update needed)

-- s_greeting_A1_07: "I'm sorry, I don't understand. Can you say that again?" → "I'm sorry, I don't V. Can you V that again?"
UPDATE sentences SET en='I''m sorry, I don''t V. Can you V that again?', ko='죄송해요, V하지 못했어요. 다시 V해 주시겠어요?', highlight='Can you V that again' WHERE id='s_greeting_A1_07';

-- s_greeting_A1_05: "Thank you so much! You're very kind." → "Thank you so much! You're very Adj."
UPDATE sentences SET en='Thank you so much! You''re very Adj.', ko='정말 감사해요! 정말 Adj하시네요.', highlight='You''re very Adj' WHERE id='s_greeting_A1_05';

-- s_greeting_A1_03: "Good morning! How are you today?" — fixed greeting, KEEP
-- (no update needed)

-- s_greeting_A1_02: "How are you?" — fixed greeting, KEEP
-- (no update needed)

-- s_greeting_A1_01: "Nice to meet you!" → "Nice to V you" (slight pattern expansion)
UPDATE sentences SET en='Nice to V you!', ko='V해서 반갑습니다!', highlight='Nice to V you' WHERE id='s_greeting_A1_01';

-- s_greeting_A2_07: "Thanks for having me — I really enjoyed it." → "Thanks for V-ing me — I really V-ed it"
UPDATE sentences SET en='Thanks for V-ing me — I really V-ed it.', ko='V해 주셔서 감사해요 — 정말 V했어요.', highlight='Thanks for V-ing me' WHERE id='s_greeting_A2_07';

-- s_greeting_A2_06: "Would you mind if I joined you?" → "Would you mind if I V-ed ~?"
UPDATE sentences SET en='Would you mind if I V-ed ~?', ko='~해도 될까요?', highlight='Would you mind if I V-ed' WHERE id='s_greeting_A2_06';

-- s_greeting_A2_03: "Please call me ___. It's easier than my full name." — already template form, KEEP
-- (no update needed)

-- s_greeting_A2_05: "I'm originally from Busan. Where are you from?" → "I'm originally from ~. Where are you from?"
UPDATE sentences SET en='I''m originally from ~. Where are you from?', ko='저는 원래 ~ 출신이에요. 어디서 오셨어요?', highlight='I''m originally from ~' WHERE id='s_greeting_A2_05';

-- s_greeting_A2_01: "Let me introduce myself — I'm ___ and I work as a ___." — already template form, KEEP
-- (no update needed)

-- s_greeting_A2_04: "It was great seeing you. Take care!" → "It was great V-ing you. Take care!"
UPDATE sentences SET en='It was great V-ing you. Take care!', ko='V해서 좋았어요. 잘 지내요!', highlight='It was great V-ing you' WHERE id='s_greeting_A2_04';

-- s_greeting_A2_02: "It's lovely to meet you. I've heard a lot about you." → "It's lovely to V you. I've heard a lot about ~"
UPDATE sentences SET en='It''s lovely to V you. I''ve heard a lot about ~.', ko='V해서 반가워요. ~에 대해 많이 들었어요.', highlight='I''ve heard a lot about ~' WHERE id='s_greeting_A2_02';

-- s_greeting_B1_06: "I've been looking forward to this meeting for a while." → "I've been looking forward to N for a while"
UPDATE sentences SET en='I''ve been looking forward to N for a while.', ko='N을 한동안 기대하고 있었어요.', highlight='I''ve been looking forward to N' WHERE id='s_greeting_B1_06';

-- s_greeting_B1_02: "It's great to finally put a face to the name." → idiom, KEEP (already template-like; final form)
-- (no update needed)

-- s_greeting_B1_03: "I believe we have some mutual friends — do you know ___?" — already template form with ___, KEEP
-- (no update needed)

-- s_greeting_B1_05: "Allow me to introduce my colleague, ___." → "Allow me to V my ~, ___"
UPDATE sentences SET en='Allow me to V my N, ~.', ko='제 N ~을 V하도록 해주세요.', highlight='Allow me to V' WHERE id='s_greeting_B1_05';

-- s_greeting_B1_04: "Long time no see! How have you been keeping?" — fixed greeting, KEEP
-- (no update needed)

-- s_greeting_B1_07: "It was wonderful catching up — we should do this more often." → "It was wonderful V-ing — we should V more often"
UPDATE sentences SET en='It was wonderful V-ing — we should V more often.', ko='V해서 좋았어요 — 더 자주 V해요.', highlight='It was wonderful V-ing' WHERE id='s_greeting_B1_07';

-- s_greeting_B1_01: "I don't think we've been formally introduced — I'm ___." — already template form, KEEP
-- (no update needed)

-- s_greeting_B2_02: "Your reputation precedes you — it's an honor to finally meet." — idiomatic fixed expression, KEEP
-- (no update needed)

-- s_greeting_B2_07: "It's been far too long — I'm so glad we managed to reconnect." → "It's been far too long — I'm so glad we managed to V"
UPDATE sentences SET en='It''s been far too long — I''m so glad we managed to V.', ko='너무 오래됐어요 — V할 수 있어서 정말 기뻐요.', highlight='managed to V' WHERE id='s_greeting_B2_07';

-- s_greeting_B2_06: "I was hoping we'd get a chance to connect at this event." → "I was hoping we'd get a chance to V at N"
UPDATE sentences SET en='I was hoping we''d get a chance to V at N.', ko='N에서 V할 기회를 바라고 있었어요.', highlight='get a chance to V' WHERE id='s_greeting_B2_06';

-- s_greeting_B2_01: "On behalf of our organization, it is my pleasure to welcome you." → "On behalf of N, it is my pleasure to V ~"
UPDATE sentences SET en='On behalf of N, it is my pleasure to V ~.', ko='N을 대표하여 ~을 V하게 되어 기쁩니다.', highlight='On behalf of N' WHERE id='s_greeting_B2_01';

-- s_greeting_B2_05: "We are delighted to have such distinguished guests with us today." → "We are delighted to V such Adj N with us today"
UPDATE sentences SET en='We are delighted to V such Adj N with us today.', ko='오늘 이렇게 Adj한 N과 V할 수 있어 기쁩니다.', highlight='delighted to V such Adj N' WHERE id='s_greeting_B2_05';

-- s_greeting_B2_04: "Please, allow me to extend a warm welcome on this occasion." → "Please, allow me to extend a Adj N on this occasion"
UPDATE sentences SET en='Please, allow me to extend a Adj N on this occasion.', ko='이 자리에서 Adj한 N의 말씀을 전할 수 있어 기쁩니다.', highlight='extend a Adj N' WHERE id='s_greeting_B2_04';

-- s_greeting_B2_03: "I've heard excellent things about your work in this field." → "I've heard Adj things about ~ in N"
UPDATE sentences SET en='I''ve heard Adj things about ~ in N.', ko='N에서 ~에 대해 Adj한 이야기를 들었어요.', highlight='I''ve heard Adj things about ~' WHERE id='s_greeting_B2_03';

-- s_greeting_C1_07: "I hope this occasion will mark the beginning of a fruitful and enduring relationship." → "I hope N will mark the beginning of a Adj and Adj N"
UPDATE sentences SET en='I hope N will mark the beginning of a Adj and Adj N.', ko='N이 Adj하고 Adj한 N의 시작이 되기를 바랍니다.', highlight='mark the beginning of a Adj N' WHERE id='s_greeting_C1_07';

-- s_greeting_C1_03: "Permit me to extend my sincerest greetings and warmest regards." → "Permit me to V my Adj-est A and Adj-est B"
UPDATE sentences SET en='Permit me to V my Adj-est A and Adj-est B.', ko='Adj한 A와 Adj한 B를 V하도록 허락해 주십시오.', highlight='Permit me to V my Adj-est A and Adj-est B' WHERE id='s_greeting_C1_03';

-- s_greeting_C1_06: "Your eloquence and expertise have long been an inspiration to those of us in this field." → "Your A and B have long been an N to ~"
UPDATE sentences SET en='Your A and B have long been an N to ~.', ko='귀하의 A와 B는 오랫동안 ~에게 N이 되어 왔습니다.', highlight='Your A and B have long been an N' WHERE id='s_greeting_C1_06';

-- s_greeting_C1_05: "It goes without saying that we are truly privileged to have you among us." → "It goes without saying that S V"
UPDATE sentences SET en='It goes without saying that S V.', ko='S가 V하다는 것은 두말할 나위가 없습니다.', highlight='It goes without saying that S V' WHERE id='s_greeting_C1_05';

-- s_greeting_C1_02: "Your contributions to the field are well recognized and deeply appreciated." → "Your N to ~ are well V-ed and deeply V-ed"
UPDATE sentences SET en='Your N to ~ are well V-ed and deeply V-ed.', ko='~에 대한 귀하의 N은 잘 V되었고 깊이 V되고 있습니다.', highlight='well V-ed and deeply V-ed' WHERE id='s_greeting_C1_02';

-- s_greeting_C1_04: "I must say, your presence here lends a great deal of prestige to this event." → "I must say, your N here lends a great deal of N to ~"
UPDATE sentences SET en='I must say, your N here lends a great deal of N to ~.', ko='솔직히 말씀드리면, 귀하의 N이 ~에 큰 N을 더해 줍니다.', highlight='lends a great deal of N to ~' WHERE id='s_greeting_C1_04';

-- s_greeting_C1_01: "It is a distinct honor to be in the company of such accomplished individuals." → "It is a distinct honor to V such Adj N"
UPDATE sentences SET en='It is a distinct honor to V such Adj N.', ko='이렇게 Adj한 N과 V하게 된 것은 특별한 영광입니다.', highlight='It is a distinct honor to V' WHERE id='s_greeting_C1_01';

-- s_greeting_C2_01: "We are gathered here today to honor an individual whose contributions have shaped the very fabric of our discipline." → "We are gathered here today to V N whose N have shaped the very fabric of ~"
UPDATE sentences SET en='We are gathered here today to V N whose N have shaped the very fabric of ~.', ko='오늘 우리는 ~의 근본을 형성해온 N을 V하기 위해 이 자리에 모였습니다.', highlight='shaped the very fabric of ~' WHERE id='s_greeting_C2_01';

-- s_greeting_C2_04: "Seldom has it been my privilege to stand before an assembly of such rare collective wisdom and experience." → "Seldom has it been my privilege to V before N of such Adj A and B"
UPDATE sentences SET en='Seldom has it been my privilege to V before N of such Adj A and B.', ko='이처럼 Adj한 A와 B를 가진 N 앞에 V하는 영광은 쉽사리 주어지지 않습니다.', highlight='Seldom has it been my privilege to V' WHERE id='s_greeting_C2_04';

-- s_greeting_C2_07: "It is with the utmost reverence and collegial warmth that I bid you welcome to this convocation." → "It is with the utmost A and Adj B that I V you ~ to N"
UPDATE sentences SET en='It is with the utmost A and Adj B that I V you ~ to N.', ko='최고의 A와 Adj한 B로 N에 여러분을 V합니다.', highlight='It is with the utmost A and Adj B that I V' WHERE id='s_greeting_C2_07';

-- s_greeting_C2_06: "Your stewardship of this discipline has been nothing short of exemplary, and your presence here today is a testament to that legacy." → "Your N of ~ has been nothing short of Adj, and your N here today is a testament to ~"
UPDATE sentences SET en='Your N of ~ has been nothing short of Adj, and your N here today is a testament to ~.', ko='~에 대한 귀하의 N은 더할 나위 없이 Adj했으며, 오늘 이 자리의 N이 ~을 증명합니다.', highlight='nothing short of Adj' WHERE id='s_greeting_C2_06';

-- s_greeting_C2_03: "Allow me to formally inaugurate this meeting with a word of profound gratitude for your esteemed presence." → "Allow me to formally V N with a word of Adj N for ~"
UPDATE sentences SET en='Allow me to formally V N with a word of Adj N for ~.', ko='~에 대한 Adj한 N의 말씀으로 N을 공식적으로 V하도록 허락해 주십시오.', highlight='formally V N with a word of Adj N' WHERE id='s_greeting_C2_03';

-- s_greeting_C2_05: "May I take this opportunity to convey, on behalf of all present, our deepest respect and admiration." → "May I take this opportunity to V, on behalf of ~, our Adj-est A and B"
UPDATE sentences SET en='May I take this opportunity to V, on behalf of ~, our Adj-est A and B.', ko='이 자리를 빌려, ~을 대표하여 가장 Adj한 A와 B를 V하고자 합니다.', highlight='May I take this opportunity to V' WHERE id='s_greeting_C2_05';

-- s_greeting_C2_02: "The distinction and gravitas you bring to this assembly are, without exaggeration, unparalleled." → "The A and B you bring to N are, without exaggeration, Adj"
UPDATE sentences SET en='The A and B you bring to N are, without exaggeration, Adj.', ko='귀하가 N에 가져오시는 A와 B는, 과장 없이 말씀드리면, Adj합니다.', highlight='without exaggeration, Adj' WHERE id='s_greeting_C2_02';

-- ============================================
-- batch-5-academic.sql
-- ============================================
-- ============================================================
-- Batch 5: academic, discussion, negotiation (patterns rewrite)
-- 126 cards reviewed.
-- ============================================================

-- ============================================================
-- TOPIC: academic
-- ============================================================

-- s_academic_A1_06: "Is this the right answer?" → 일반화 (the right N)
UPDATE sentences SET en='Is this the right N?', ko='이게 맞는 ~인가요?', highlight='Is this the right N' WHERE id='s_academic_A1_06';

-- s_academic_A1_02: "How do you spell that word?" → 일반화
UPDATE sentences SET en='How do you V that N?', ko='그 ~을 어떻게 ~하나요?', highlight='How do you V that N' WHERE id='s_academic_A1_02';

-- s_academic_A1_03: "I don't understand. Can you speak more slowly?" → 일반화
UPDATE sentences SET en='I don''t understand. Can you V more A?', ko='이해가 안 돼요. 더 ~하게 ~해 주실 수 있나요?', highlight='Can you V more A' WHERE id='s_academic_A1_03';

-- s_academic_A1_05: "May I ask a question?" → 일반화
UPDATE sentences SET en='May I V?', ko='~해도 되나요?', highlight='May I V' WHERE id='s_academic_A1_05';

-- s_academic_A1_04: "What does this word mean?" → 일반화
UPDATE sentences SET en='What does this N mean?', ko='이 ~은 무슨 의미인가요?', highlight='What does this N mean' WHERE id='s_academic_A1_04';

-- s_academic_A1_01: "Can you explain that again?" → 일반화
UPDATE sentences SET en='Can you V that again?', ko='다시 ~해 주실 수 있나요?', highlight='Can you V that again' WHERE id='s_academic_A1_01';

-- s_academic_A1_07: "Please write it on the board." → 일반화
UPDATE sentences SET en='Please V it on the N.', ko='~에 ~해 주세요.', highlight='Please V it on the N' WHERE id='s_academic_A1_07';

-- s_academic_A2_07: "Let's discuss the topic together." → 일반화
UPDATE sentences SET en='Let''s V the N together.', ko='함께 ~을 ~해 봐요.', highlight='Let''s V the N together' WHERE id='s_academic_A2_07';

-- s_academic_A2_05: "In my opinion, the results are interesting." → 일반화
UPDATE sentences SET en='In my opinion, S is A.', ko='제 의견으로는, ~은 ~해요.', highlight='In my opinion, S is A' WHERE id='s_academic_A2_05';

-- s_academic_A2_03: "I think I understand, but let me check." → 일반화
UPDATE sentences SET en='I think I V, but let me check.', ko='~한 것 같은데, 확인해 볼게요.', highlight='I think I V, but let me check' WHERE id='s_academic_A2_03';

-- s_academic_A2_06: "Where did you find that information?" → 일반화
UPDATE sentences SET en='Where did you V that N?', ko='그 ~을 어디서 ~하셨나요?', highlight='Where did you V that N' WHERE id='s_academic_A2_06';

-- s_academic_A2_04: "Can you summarize what we learned today?" → 일반화
UPDATE sentences SET en='Can you V what we N?', ko='우리가 ~한 것을 ~해 주실 수 있나요?', highlight='Can you V what we N' WHERE id='s_academic_A2_04';

-- s_academic_A2_01: "Could you give me an example?" → 일반화
UPDATE sentences SET en='Could you give me a N?', ko='~을 주실 수 있나요?', highlight='Could you give me a N' WHERE id='s_academic_A2_01';

-- s_academic_A2_02: "What is the main point of this article?" → 일반화
UPDATE sentences SET en='What is the main point of this N?', ko='이 ~의 핵심 요점은 무엇인가요?', highlight='What is the main point of this N' WHERE id='s_academic_A2_02';

-- s_academic_B1_05: "The results demonstrate a significant improvement." → 일반화
UPDATE sentences SET en='S demonstrates a significant N.', ko='~은 유의미한 ~을 보여줘요.', highlight='S demonstrates a significant N' WHERE id='s_academic_B1_05';

-- s_academic_B1_07: "We need to consider the methodological limitations." → 일반화
UPDATE sentences SET en='We need to consider the N.', ko='~을 고려해야 해요.', highlight='We need to consider the N' WHERE id='s_academic_B1_07';

-- s_academic_B1_04: "One limitation of this study is the small sample size." → 일반화
UPDATE sentences SET en='One limitation of this N is S.', ko='이 ~의 한 가지 한계는 ~이에요.', highlight='One limitation of this N is S' WHERE id='s_academic_B1_04';

-- s_academic_B1_06: "It is important to cite all your sources correctly." → 일반화
UPDATE sentences SET en='It is important to V.', ko='~하는 것이 중요해요.', highlight='It is important to V' WHERE id='s_academic_B1_06';

-- s_academic_B1_03: "This study aims to analyze the correlation between variables." → 일반화
UPDATE sentences SET en='This study aims to V the N.', ko='이 연구는 ~을 ~하는 것을 목표로 해요.', highlight='This study aims to V' WHERE id='s_academic_B1_03';

-- s_academic_B1_02: "Based on the data, we can conclude that the method is effective." → 일반화
UPDATE sentences SET en='Based on the N, we can conclude that S.', ko='~을 바탕으로, ~라고 결론 내릴 수 있어요.', highlight='Based on the N, we can conclude that S' WHERE id='s_academic_B1_02';

-- s_academic_B1_01: "The evidence suggests that this hypothesis is correct." → 일반화
UPDATE sentences SET en='The evidence suggests that S.', ko='증거는 ~을 시사해요.', highlight='The evidence suggests that S' WHERE id='s_academic_B1_01';

-- s_academic_B2_01: "A mixed-methods approach was adopted to ensure both validity and reliability." → 일반화
UPDATE sentences SET en='A N approach was adopted to ensure both A and B.', ko='~과 ~을 모두 확보하기 위해 ~ 방법을 채택했어요.', highlight='A N approach was adopted to ensure both A and B' WHERE id='s_academic_B2_01';

-- s_academic_B2_07: "Triangulation of data sources strengthened the credibility of the findings." → 일반화
UPDATE sentences SET en='N of A strengthened the credibility of B.', ko='~의 ~은 ~의 신뢰성을 강화했어요.', highlight='N strengthened the credibility of' WHERE id='s_academic_B2_07';

-- s_academic_B2_03: "The findings must be interpreted within the theoretical framework outlined earlier." → 일반화
UPDATE sentences SET en='S must be interpreted within the N outlined earlier.', ko='~은 앞서 제시한 ~ 안에서 해석되어야 해요.', highlight='S must be interpreted within the N' WHERE id='s_academic_B2_03';

-- s_academic_B2_04: "Peer review ensures the quality and credibility of published research." → 일반화
UPDATE sentences SET en='S ensures the quality and credibility of N.', ko='~은 ~의 질과 신뢰성을 보장해요.', highlight='S ensures the quality and credibility of N' WHERE id='s_academic_B2_04';

-- s_academic_B2_05: "The study operationalized the concept of engagement as time-on-task." → 일반화
UPDATE sentences SET en='The study operationalized the concept of A as B.', ko='연구는 ~ 개념을 ~로 조작화했어요.', highlight='operationalized the concept of A as B' WHERE id='s_academic_B2_05';

-- s_academic_B2_02: "The qualitative data were analyzed using thematic analysis." → 일반화
UPDATE sentences SET en='The N were analyzed using A.', ko='~은 ~을 사용하여 분석되었어요.', highlight='N were analyzed using A' WHERE id='s_academic_B2_02';

-- s_academic_B2_06: "The literature review revealed a significant gap in existing research." → 일반화
UPDATE sentences SET en='S revealed a significant gap in N.', ko='~은 ~에서 상당한 공백을 드러냈어요.', highlight='S revealed a significant gap in N' WHERE id='s_academic_B2_06';

-- s_academic_C1_01: "The ontological assumptions underlying this research privilege a realist view of knowledge." → 일반화
UPDATE sentences SET en='The N underlying this research privilege a A view of B.', ko='이 연구의 기저에 있는 ~은 ~에 대한 ~적 관점을 우선시해요.', highlight='The N underlying this research privilege' WHERE id='s_academic_C1_01';

-- s_academic_C1_03: "A phenomenological approach foregrounds the lived experience of the participants." → 일반화
UPDATE sentences SET en='A N approach foregrounds the A of B.', ko='~ 접근법은 ~의 ~을 전면에 내세워요.', highlight='A N approach foregrounds' WHERE id='s_academic_C1_03';

-- s_academic_C1_04: "This paper problematizes the binary opposition between objective and subjective knowledge." → 일반화
UPDATE sentences SET en='This paper problematizes the binary opposition between A and B.', ko='이 논문은 ~과 ~ 사이의 이분법적 대립을 문제화해요.', highlight='problematizes the binary opposition between A and B' WHERE id='s_academic_C1_04';

-- s_academic_C1_07: "Grounded theory allows theory to emerge inductively from the data rather than being imposed a priori." → 일반화
UPDATE sentences SET en='S allows A to emerge inductively from B rather than being imposed a priori.', ko='~은 ~이 사전에 부과되는 것이 아니라 ~에서 귀납적으로 출현하도록 해요.', highlight='emerge inductively from B rather than being imposed' WHERE id='s_academic_C1_07';

-- s_academic_C1_05: "Reflexivity requires the researcher to critically examine their own positionality." → 일반화
UPDATE sentences SET en='S requires the researcher to critically examine N.', ko='~은 연구자가 ~을 비판적으로 검토할 것을 요구해요.', highlight='S requires the researcher to critically examine N' WHERE id='s_academic_C1_05';

-- s_academic_C1_02: "The deductive framework constrains the researcher's ability to uncover emergent themes." → 일반화
UPDATE sentences SET en='S constrains the researcher''s ability to V N.', ko='~은 연구자가 ~을 ~하는 능력을 제한해요.', highlight='S constrains the researcher''s ability to V' WHERE id='s_academic_C1_02';

-- s_academic_C1_06: "The hegemonic discourse normalizes certain assumptions while marginalizing others." → 일반화
UPDATE sentences SET en='S normalizes certain A while marginalizing others.', ko='~은 특정 ~을 정상화하면서 다른 것들을 소외시켜요.', highlight='S normalizes certain A while marginalizing others' WHERE id='s_academic_C1_06';

-- s_academic_C2_01: "Derrida's concept of différance destabilizes the logocentric assumption that meaning is fixed and present." → 일반화
UPDATE sentences SET en='A''s concept of N destabilizes the assumption that S.', ko='~의 ~ 개념은 ~라는 가정을 불안정하게 해요.', highlight='A''s concept of N destabilizes the assumption that S' WHERE id='s_academic_C2_01';

-- s_academic_C2_04: "Bakhtin's heteroglossia reveals the polyphonic nature of academic discourse itself." → 일반화
UPDATE sentences SET en='A''s N reveals the polyphonic nature of B itself.', ko='~의 ~은 ~ 자체의 다성적 특성을 드러내요.', highlight='A''s N reveals the polyphonic nature of B' WHERE id='s_academic_C2_04';

-- s_academic_C2_07: "The onto-epistemological stance of the researcher inevitably shapes what counts as legitimate knowledge within the study." → 일반화
UPDATE sentences SET en='The N of the researcher inevitably shapes what counts as A within B.', ko='연구자의 ~은 ~ 내에서 무엇이 ~으로 인정되는지를 필연적으로 형성해요.', highlight='inevitably shapes what counts as A' WHERE id='s_academic_C2_07';

-- s_academic_C2_03: "The rhizomatic structure of the text resists linear reading and hierarchical interpretation." → 일반화
UPDATE sentences SET en='The N structure of S resists A and B.', ko='~의 ~적 구조는 ~과 ~에 저항해요.', highlight='The N structure of S resists A and B' WHERE id='s_academic_C2_03';

-- s_academic_C2_02: "Foucauldian genealogy traces how the episteme of an era disciplines and normalizes subjects." → 일반화
UPDATE sentences SET en='A traces how N disciplines and normalizes B.', ko='~은 ~이 어떻게 ~을 규율하고 정상화하는지 추적해요.', highlight='A traces how N disciplines and normalizes B' WHERE id='s_academic_C2_02';

-- s_academic_C2_05: "The subaltern's aporia lies in the impossibility of articulating resistance within the very language of the oppressor." → 일반화
UPDATE sentences SET en='The aporia lies in the impossibility of V A within B.', ko='아포리아는 ~ 안에서 ~을 ~하는 것의 불가능성에 있어요.', highlight='aporia lies in the impossibility of V A' WHERE id='s_academic_C2_05';

-- s_academic_C2_06: "Bourdieu's concept of habitus explains how doxa is reproduced across generations without conscious awareness." → 일반화
UPDATE sentences SET en='A''s concept of N explains how B is reproduced across generations.', ko='~의 ~ 개념은 ~이 세대에 걸쳐 재생산되는 방식을 설명해요.', highlight='A''s concept of N explains how B is reproduced' WHERE id='s_academic_C2_06';

-- ============================================================
-- TOPIC: discussion
-- ============================================================

-- s_discussion_A1_03: "What do you think about that?" → 일반화
UPDATE sentences SET en='What do you think about N?', ko='~에 대해 어떻게 생각해요?', highlight='What do you think about N' WHERE id='s_discussion_A1_03';

-- s_discussion_A1_07: "I like your idea." → 일반화
UPDATE sentences SET en='I like your N.', ko='당신의 ~이/가 마음에 들어요.', highlight='I like your N' WHERE id='s_discussion_A1_07';

-- s_discussion_A1_02: "I do not think that is a good idea." → 이미 어느 정도 패턴이지만 더 일반화
UPDATE sentences SET en='I do not think S.', ko='~인 것 같지 않아요.', highlight='I do not think S' WHERE id='s_discussion_A1_02';

-- s_discussion_A1_06: "That is a good idea." → 일반화
UPDATE sentences SET en='That is a A N.', ko='그건 ~한 ~이에요.', highlight='That is a A N' WHERE id='s_discussion_A1_06';

-- s_discussion_A1_05: "I am not sure about that." → 일반화
UPDATE sentences SET en='I am not sure about N.', ko='~에 대해 잘 모르겠어요.', highlight='I am not sure about N' WHERE id='s_discussion_A1_05';

-- s_discussion_A1_01: "I think so too." → 이미 매우 짧은 표현, 일반화 안 됨 → skip
-- (skip: 변수화하기 어려운 고정 표현)

-- s_discussion_A1_04: "Maybe you are right." → 일반화
UPDATE sentences SET en='Maybe S.', ko='아마도 ~일 수도 있어요.', highlight='Maybe S' WHERE id='s_discussion_A1_04';

-- s_discussion_A2_06: "Can you give me an example?" → 일반화
UPDATE sentences SET en='Can you give me a N?', ko='~을 주실 수 있나요?', highlight='Can you give me a N' WHERE id='s_discussion_A2_06';

-- s_discussion_A2_01: "I agree with your opinion." → 일반화
UPDATE sentences SET en='I agree with your N.', ko='당신의 ~에 동의해요.', highlight='I agree with your N' WHERE id='s_discussion_A2_01';

-- s_discussion_A2_02: "I see your point, but I disagree." → 이미 패턴 + 일반화
UPDATE sentences SET en='I see your point, but S.', ko='당신의 의견은 이해하지만, ~해요.', highlight='I see your point, but S' WHERE id='s_discussion_A2_02';

-- s_discussion_A2_07: "I suggest we discuss this more carefully." → 일반화
UPDATE sentences SET en='I suggest we V N.', ko='~을 ~해 보는 게 어떨까요?', highlight='I suggest we V' WHERE id='s_discussion_A2_07';

-- s_discussion_A2_04: "Could you explain your reason?" → 일반화
UPDATE sentences SET en='Could you V your N?', ko='당신의 ~을 ~해 주실 수 있나요?', highlight='Could you V your N' WHERE id='s_discussion_A2_04';

-- s_discussion_A2_05: "I think both sides have a point." → 일반화
UPDATE sentences SET en='I think S.', ko='~라고 생각해요.', highlight='I think S' WHERE id='s_discussion_A2_05';

-- s_discussion_A2_03: "In my opinion, we should try a different approach." → 일반화
UPDATE sentences SET en='In my opinion, we should V.', ko='제 의견으로는 ~해야 해요.', highlight='In my opinion, we should V' WHERE id='s_discussion_A2_03';

-- s_discussion_B1_05: "That is a valid concern, but consider the following." → 일반화
UPDATE sentences SET en='That is a valid concern, but S.', ko='그건 타당한 우려이지만, ~해요.', highlight='That is a valid concern, but S' WHERE id='s_discussion_B1_05';

-- s_discussion_B1_06: "Could you support that claim with evidence?" → 일반화
UPDATE sentences SET en='Could you support that N with A?', ko='그 ~을 ~로 뒷받침해 주실 수 있나요?', highlight='Could you support that N with A' WHERE id='s_discussion_B1_06';

-- s_discussion_B1_01: "The evidence suggests that this approach is more effective." → 일반화
UPDATE sentences SET en='The evidence suggests that S.', ko='증거에 따르면 ~이에요.', highlight='The evidence suggests that S' WHERE id='s_discussion_B1_01';

-- s_discussion_B1_07: "Taking everything into account, I believe this is the best option." → 일반화
UPDATE sentences SET en='Taking everything into account, I believe S.', ko='모든 것을 고려했을 때, ~라고 생각해요.', highlight='Taking everything into account, I believe S' WHERE id='s_discussion_B1_07';

-- s_discussion_B1_04: "I would argue that the benefits outweigh the risks." → 일반화
UPDATE sentences SET en='I would argue that S.', ko='저는 ~라고 주장하겠어요.', highlight='I would argue that S' WHERE id='s_discussion_B1_04';

-- s_discussion_B1_02: "From my perspective, the main issue is the lack of funding." → 일반화
UPDATE sentences SET en='From my perspective, S.', ko='제 관점에서, ~이에요.', highlight='From my perspective, S' WHERE id='s_discussion_B1_02';

-- s_discussion_B1_03: "To elaborate on that point, let me give you a concrete example." → 일반화
UPDATE sentences SET en='To elaborate on that point, S.', ko='그 부분을 더 설명하자면, ~할게요.', highlight='To elaborate on that point, S' WHERE id='s_discussion_B1_03';

-- s_discussion_B2_02: "I would like to rebut that point directly." → 일반화
UPDATE sentences SET en='I would like to V that N directly.', ko='그 ~을 직접 ~하고 싶어요.', highlight='I would like to V that N directly' WHERE id='s_discussion_B2_02';

-- s_discussion_B2_03: "That claim lacks empirical support." → 일반화
UPDATE sentences SET en='That N lacks A support.', ko='그 ~에는 ~ 근거가 부족해요.', highlight='That N lacks A support' WHERE id='s_discussion_B2_03';

-- s_discussion_B2_05: "While I concede that point, the broader implication is more concerning." → 일반화
UPDATE sentences SET en='While I concede that point, S.', ko='그 부분은 인정하지만, ~해요.', highlight='While I concede that point, S' WHERE id='s_discussion_B2_05';

-- s_discussion_B2_04: "We need to distinguish between correlation and causation here." → 일반화
UPDATE sentences SET en='We need to distinguish between A and B here.', ko='여기서 ~과 ~을 구분해야 해요.', highlight='distinguish between A and B' WHERE id='s_discussion_B2_04';

-- s_discussion_B2_06: "Your reasoning contains an implicit bias worth examining." → 일반화
UPDATE sentences SET en='Your N contains an A worth examining.', ko='당신의 ~에는 검토할 만한 ~이 있어요.', highlight='contains an A worth examining' WHERE id='s_discussion_B2_06';

-- s_discussion_B2_01: "Your argument seems to rest on a flawed premise." → 일반화
UPDATE sentences SET en='Your argument seems to rest on a A N.', ko='당신의 주장은 ~한 ~에 기반하는 것 같아요.', highlight='rest on a A N' WHERE id='s_discussion_B2_01';

-- s_discussion_B2_07: "The nuance of this issue is often lost in simplistic narratives." → 일반화
UPDATE sentences SET en='The nuance of this N is often lost in A.', ko='이 ~의 뉘앙스는 ~에서 종종 사라져요.', highlight='The nuance of this N is often lost in A' WHERE id='s_discussion_B2_07';

-- s_discussion_C1_04: "I would postulate that the causal chain is more complex than suggested." → 일반화
UPDATE sentences SET en='I would postulate that S.', ko='~라고 가정해 볼 수 있어요.', highlight='I would postulate that S' WHERE id='s_discussion_C1_04';

-- s_discussion_C1_02: "Let me deconstruct the underlying assumptions of that argument." → 일반화
UPDATE sentences SET en='Let me deconstruct the underlying N of that A.', ko='그 ~의 근본 ~을 해체해 볼게요.', highlight='deconstruct the underlying N of that A' WHERE id='s_discussion_C1_02';

-- s_discussion_C1_06: "The cogency of your case depends on whether we accept the axiom." → 일반화
UPDATE sentences SET en='The cogency of your case depends on whether S.', ko='당신 논거의 설득력은 ~인지에 달려 있어요.', highlight='The cogency of your case depends on whether S' WHERE id='s_discussion_C1_06';

-- s_discussion_C1_01: "The syllogism you presented is formally valid but materially unsound." → 일반화
UPDATE sentences SET en='The N you presented is formally valid but materially unsound.', ko='당신이 제시한 ~은 형식적으로는 타당하지만 내용상 불건전해요.', highlight='formally valid but materially unsound' WHERE id='s_discussion_C1_01';

-- s_discussion_C1_07: "Even if we grant the premise, the conclusion does not necessarily follow." → 일반화
UPDATE sentences SET en='Even if we grant S, A does not necessarily follow.', ko='~을 인정하더라도, ~이 반드시 따라오는 것은 아니에요.', highlight='Even if we grant S, A does not necessarily follow' WHERE id='s_discussion_C1_07';

-- s_discussion_C1_05: "Your inductive generalization requires a much larger sample to hold." → 일반화
UPDATE sentences SET en='Your N requires a much larger A to hold.', ko='당신의 ~은 성립하려면 훨씬 더 큰 ~이 필요해요.', highlight='requires a much larger A to hold' WHERE id='s_discussion_C1_05';

-- s_discussion_C1_03: "That reasoning commits the fallacy of false dichotomy." → 일반화
UPDATE sentences SET en='That N commits the fallacy of A.', ko='그 ~은 ~의 오류를 범하고 있어요.', highlight='commits the fallacy of A' WHERE id='s_discussion_C1_03';

-- s_discussion_C2_04: "From a hermeneutic standpoint, we must read the text against its historical horizon." → 일반화
UPDATE sentences SET en='From a A standpoint, we must V N.', ko='~적 관점에서, 우리는 ~을 ~해야 해요.', highlight='From a A standpoint' WHERE id='s_discussion_C2_04';

-- s_discussion_C2_03: "Without intersubjectivity, the very possibility of shared meaning collapses." → 일반화
UPDATE sentences SET en='Without N, the very possibility of A collapses.', ko='~ 없이는 ~의 가능성 자체가 붕괴돼요.', highlight='Without N, the very possibility of A collapses' WHERE id='s_discussion_C2_03';

-- s_discussion_C2_02: "This discourse is inherently logocentric in its privileging of spoken reason." → 일반화
UPDATE sentences SET en='S is inherently A in its privileging of N.', ko='~은 ~을 특권화하는 점에서 본질적으로 ~적이에요.', highlight='inherently A in its privileging of N' WHERE id='s_discussion_C2_02';

-- s_discussion_C2_01: "The aporia here is that every attempt to define the term undermines itself." → 일반화
UPDATE sentences SET en='The aporia here is that S.', ko='여기서의 아포리아는 ~라는 거예요.', highlight='The aporia here is that S' WHERE id='s_discussion_C2_01';

-- s_discussion_C2_07: "The praxis of this theory reveals a tension between its normative and descriptive claims." → 일반화
UPDATE sentences SET en='The praxis of this N reveals a tension between A and B.', ko='이 ~의 실천은 ~과 ~ 사이의 긴장을 드러내요.', highlight='reveals a tension between A and B' WHERE id='s_discussion_C2_07';

-- s_discussion_C2_05: "The ontological claim embedded in that statement demands further scrutiny." → 일반화
UPDATE sentences SET en='The N embedded in that A demands further scrutiny.', ko='그 ~에 내재된 ~은 더 면밀한 검토가 필요해요.', highlight='The N embedded in that A demands further scrutiny' WHERE id='s_discussion_C2_05';

-- s_discussion_C2_06: "That paradigmatic case cannot be used to justify the broader theoretical framework." → 일반화
UPDATE sentences SET en='That N cannot be used to justify A.', ko='그 ~은 ~을 정당화하는 데 사용될 수 없어요.', highlight='cannot be used to justify A' WHERE id='s_discussion_C2_06';

-- ============================================================
-- TOPIC: negotiation
-- ============================================================

-- s_negotiation_A1_04: "I need more time to decide." → 일반화
UPDATE sentences SET en='I need more N to V.', ko='~하는 데 ~이 더 필요해요.', highlight='I need more N to V' WHERE id='s_negotiation_A1_04';

-- s_negotiation_A1_07: "I think we can agree on that." → 일반화
UPDATE sentences SET en='I think we can V on N.', ko='~ 부분에서 ~할 수 있을 것 같아요.', highlight='I think we can V on N' WHERE id='s_negotiation_A1_07';

-- s_negotiation_A1_01: "Can we agree on this?" → 일반화
UPDATE sentences SET en='Can we V on N?', ko='~로 ~할 수 있을까요?', highlight='Can we V on N' WHERE id='s_negotiation_A1_01';

-- s_negotiation_A1_03: "Can you give me a discount?" → 일반화
UPDATE sentences SET en='Can you give me a N?', ko='~을 주실 수 있나요?', highlight='Can you give me a N' WHERE id='s_negotiation_A1_03';

-- s_negotiation_A1_02: "I want a better price." → 일반화
UPDATE sentences SET en='I want a A N.', ko='~한 ~을 원해요.', highlight='I want a A N' WHERE id='s_negotiation_A1_02';

-- s_negotiation_A1_06: "Let's try to work this out." → 일반화
UPDATE sentences SET en='Let''s try to V.', ko='~해 보도록 해요.', highlight='Let''s try to V' WHERE id='s_negotiation_A1_06';

-- s_negotiation_A1_05: "Is that your best offer?" → 일반화
UPDATE sentences SET en='Is that your best N?', ko='그게 최선의 ~인가요?', highlight='Is that your best N' WHERE id='s_negotiation_A1_05';

-- s_negotiation_A2_02: "If you lower the price, we'll place a bigger order." → 일반화
UPDATE sentences SET en='If you V A, we''ll V B.', ko='~해 주시면 ~할게요.', highlight='If you V A, we''ll V B' WHERE id='s_negotiation_A2_02';

-- s_negotiation_A2_05: "Can we include free shipping in the deal?" → 일반화
UPDATE sentences SET en='Can we include N in the deal?', ko='거래에 ~을 포함시킬 수 있나요?', highlight='Can we include N in the deal' WHERE id='s_negotiation_A2_05';

-- s_negotiation_A2_06: "We'd like to confirm the payment terms in writing." → 일반화
UPDATE sentences SET en='We''d like to confirm the N in writing.', ko='~을 서면으로 확인하고 싶어요.', highlight='We''d like to confirm the N in writing' WHERE id='s_negotiation_A2_06';

-- s_negotiation_A2_01: "Could you reduce the price a little?" → 일반화
UPDATE sentences SET en='Could you V the N a little?', ko='~을 조금 ~해 주실 수 있나요?', highlight='Could you V the N a little' WHERE id='s_negotiation_A2_01';

-- s_negotiation_A2_07: "Is there any flexibility on the delivery date?" → 일반화
UPDATE sentences SET en='Is there any flexibility on the N?', ko='~에 유연성이 있나요?', highlight='Is there any flexibility on the N' WHERE id='s_negotiation_A2_07';

-- s_negotiation_A2_03: "What discount can you offer for bulk orders?" → 일반화
UPDATE sentences SET en='What N can you offer for A?', ko='~ 시 어떤 ~을 제공할 수 있나요?', highlight='What N can you offer for A' WHERE id='s_negotiation_A2_03';

-- s_negotiation_A2_04: "That's a bit over our budget — can we meet in the middle?" → 일반화
UPDATE sentences SET en='That''s a bit over our N — can we meet in the middle?', ko='~을 조금 초과하네요. 중간 지점에서 만날 수 있을까요?', highlight='meet in the middle' WHERE id='s_negotiation_A2_04';

-- s_negotiation_B1_07: "If we can't reach a compromise today, we may need to involve a mediator." → 일반화
UPDATE sentences SET en='If we can''t V A today, we may need to V B.', ko='오늘 ~하지 못하면 ~해야 할 수도 있어요.', highlight='If we can''t V A today, we may need to V B' WHERE id='s_negotiation_B1_07';

-- s_negotiation_B1_01: "We're prepared to commit to a two-year contract if you can lower the unit price." → 일반화
UPDATE sentences SET en='We''re prepared to commit to A if you can V B.', ko='~해 주시면 ~을 체결할 준비가 돼 있어요.', highlight='We''re prepared to commit to A if you can V B' WHERE id='s_negotiation_B1_01';

-- s_negotiation_B1_04: "We can agree to that clause, provided that payment terms are extended to sixty days." → 일반화
UPDATE sentences SET en='We can agree to N, provided that S.', ko='~한다면 ~에 동의할 수 있어요.', highlight='provided that S' WHERE id='s_negotiation_B1_04';

-- s_negotiation_B1_02: "Would you be open to a counterproposal on the delivery schedule?" → 일반화
UPDATE sentences SET en='Would you be open to a N on the A?', ko='~에 대한 ~을 받아들이실 수 있나요?', highlight='Would you be open to a N on the A' WHERE id='s_negotiation_B1_02';

-- s_negotiation_B1_06: "All stakeholders have agreed on the agenda, so let's move to the binding clauses." → 일반화
UPDATE sentences SET en='All stakeholders have agreed on A, so let''s move to B.', ko='모든 이해관계자가 ~에 동의했으니 ~으로 넘어가요.', highlight='All stakeholders have agreed on A' WHERE id='s_negotiation_B1_06';

-- s_negotiation_B1_05: "We have a firm deadline of the fifteenth, so we'll need a decision by then." → 일반화
UPDATE sentences SET en='We have a firm deadline of N, so we''ll need a decision by then.', ko='~이 확정 마감일이라 그때까지 결정이 필요해요.', highlight='We have a firm deadline of N' WHERE id='s_negotiation_B1_05';

-- s_negotiation_B1_03: "Our position is that the penalty clause needs to be revised." → 일반화
UPDATE sentences SET en='Our position is that S.', ko='~라는 것이 우리의 입장이에요.', highlight='Our position is that S' WHERE id='s_negotiation_B1_03';

-- s_negotiation_B2_07: "Both parties should ratify the final agreement by the end of the month to avoid further delays." → 일반화
UPDATE sentences SET en='Both parties should V N by A to avoid further delays.', ko='추가 지연을 피하기 위해 양 당사자가 ~까지 ~을 ~해야 해요.', highlight='Both parties should V N by A' WHERE id='s_negotiation_B2_07';

-- s_negotiation_B2_06: "The liquidated damages rate of two percent per week is disproportionate and should be reduced." → 일반화
UPDATE sentences SET en='The N of A is disproportionate and should be reduced.', ko='~의 ~은 과도하므로 낮춰야 해요.', highlight='disproportionate and should be reduced' WHERE id='s_negotiation_B2_06';

-- s_negotiation_B2_05: "We need to include a force majeure clause covering pandemics and supply chain disruptions." → 일반화
UPDATE sentences SET en='We need to include a N clause covering A and B.', ko='~과 ~을 포함하는 ~ 조항이 필요해요.', highlight='include a N clause covering A and B' WHERE id='s_negotiation_B2_05';

-- s_negotiation_B2_04: "Payment will be released from escrow only upon satisfactory delivery and inspection." → 일반화
UPDATE sentences SET en='N will be released from escrow only upon A.', ko='~ 후에만 에스크로에서 ~이 해제돼요.', highlight='released from escrow only upon A' WHERE id='s_negotiation_B2_04';

-- s_negotiation_B2_01: "The indemnity clause as drafted exposes us to unlimited liability, which we cannot accept." → 일반화
UPDATE sentences SET en='The N as drafted exposes us to A, which we cannot accept.', ko='현재 초안의 ~은 ~을 노출시켜서 받아들일 수 없어요.', highlight='exposes us to A, which we cannot accept' WHERE id='s_negotiation_B2_01';

-- s_negotiation_B2_03: "The warranty period should be extended to twenty-four months to align with industry standards." → 일반화
UPDATE sentences SET en='The N should be extended to A to align with industry standards.', ko='산업 표준에 맞추기 위해 ~을 ~로 연장해야 해요.', highlight='to align with industry standards' WHERE id='s_negotiation_B2_03';

-- s_negotiation_B2_02: "We propose that any disputes be referred to arbitration under ICC rules." → 일반화
UPDATE sentences SET en='We propose that any N be referred to A under B.', ko='모든 ~은 ~에 따른 ~에 회부할 것을 제안해요.', highlight='We propose that any N be referred to A' WHERE id='s_negotiation_B2_02';

-- s_negotiation_C1_02: "The lien held by the creditor must be discharged prior to transfer of title." → 일반화
UPDATE sentences SET en='The N held by A must be discharged prior to B.', ko='~이 보유한 ~은 ~ 전에 해제돼야 해요.', highlight='must be discharged prior to B' WHERE id='s_negotiation_C1_02';

-- s_negotiation_C1_05: "The jurisdiction clause designates Singapore as the exclusive forum for all disputes." → 일반화
UPDATE sentences SET en='The N clause designates A as the exclusive forum for B.', ko='~ 조항은 ~에 대해 ~을 독점적 법정지로 지정해요.', highlight='designates A as the exclusive forum for B' WHERE id='s_negotiation_C1_05';

-- s_negotiation_C1_01: "The fiduciary obligations imposed on the trustee preclude self-dealing in this transaction." → 일반화
UPDATE sentences SET en='The N imposed on A preclude B in this transaction.', ko='~에게 부과된 ~은 이 거래에서 ~을 배제해요.', highlight='imposed on A preclude B' WHERE id='s_negotiation_C1_01';

-- s_negotiation_C1_06: "Subrogation rights vest in the insurer upon payment of the insured's claim." → 일반화
UPDATE sentences SET en='N rights vest in A upon B.', ko='~ 시 ~에게 ~ 권리가 발생해요.', highlight='N rights vest in A upon B' WHERE id='s_negotiation_C1_06';

-- s_negotiation_C1_07: "The conditions precedent to drawdown have not been satisfied, suspending our obligation to lend." → 일반화
UPDATE sentences SET en='The conditions precedent to N have not been satisfied, suspending A.', ko='~의 선행 조건이 충족되지 않아 ~이 정지됐어요.', highlight='conditions precedent to N have not been satisfied' WHERE id='s_negotiation_C1_07';

-- s_negotiation_C1_04: "The remedy available for breach of this covenant is specific performance, not merely damages." → 일반화
UPDATE sentences SET en='The remedy available for breach of N is A, not merely B.', ko='~ 위반에 대한 구제책은 ~뿐만 아니라 ~이에요.', highlight='The remedy available for breach of N is A' WHERE id='s_negotiation_C1_04';

-- s_negotiation_C1_03: "We are seeking an injunction to restrain the respondent from further breach of the covenant." → 일반화
UPDATE sentences SET en='We are seeking an injunction to restrain A from B.', ko='~의 ~을 막기 위해 금지 명령을 구하고 있어요.', highlight='seeking an injunction to restrain A from B' WHERE id='s_negotiation_C1_03';

-- s_negotiation_C2_07: "Piercing the corporate veil is warranted where the subsidiary was used as a mere facade to evade pre-existing contractual obligations." → 일반화
UPDATE sentences SET en='Piercing the corporate veil is warranted where N was used as a mere facade to V.', ko='~이 ~을 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.', highlight='Piercing the corporate veil is warranted where' WHERE id='s_negotiation_C2_07';

-- s_negotiation_C2_06: "The unjust enrichment claim rests on the defendant's failure to make restitution following rescission of the contract." → 일반화
UPDATE sentences SET en='The N claim rests on A''s failure to V following B.', ko='~ 청구는 ~ 후 ~의 ~ 불이행에 근거해요.', highlight='claim rests on A''s failure to V' WHERE id='s_negotiation_C2_06';

-- s_negotiation_C2_03: "The contract is void ab initio on the grounds of economic duress applied during the execution phase." → 일반화
UPDATE sentences SET en='N is void ab initio on the grounds of A applied during B.', ko='~ 단계에서 가해진 ~을 이유로 ~은 처음부터 무효예요.', highlight='void ab initio on the grounds of A' WHERE id='s_negotiation_C2_03';

-- s_negotiation_C2_01: "The doctrine of promissory estoppel bars the claimant from resiling from the representation made during pre-contractual negotiations." → 일반화
UPDATE sentences SET en='The doctrine of N bars A from V the B made during pre-contractual negotiations.', ko='~ 원칙은 계약 전 협상 중 이루어진 ~에서 ~이 ~하는 것을 막아요.', highlight='The doctrine of N bars A from V' WHERE id='s_negotiation_C2_01';

-- s_negotiation_C2_04: "Novation extinguishes the original obligation and substitutes a new contract between the parties, thereby releasing the original debtor." → 일반화
UPDATE sentences SET en='N extinguishes the original A and substitutes a new B, thereby releasing C.', ko='~은 원래 ~을 소멸시키고 새로운 ~으로 대체해 ~를 면책시켜요.', highlight='extinguishes the original A and substitutes a new B' WHERE id='s_negotiation_C2_04';

-- s_negotiation_C2_02: "Quantum meruit entitles the claimant to reasonable remuneration for services rendered in the absence of an agreed price." → 일반화
UPDATE sentences SET en='N entitles A to B for services rendered in the absence of C.', ko='~이 없는 경우 ~된 서비스에 대해 ~은 ~에게 ~을 청구할 권리를 줘요.', highlight='N entitles A to B in the absence of C' WHERE id='s_negotiation_C2_02';

-- s_negotiation_C2_05: "Under the rule in contra proferentem, the ambiguous exclusion clause is construed against the party who drafted it." → 일반화
UPDATE sentences SET en='Under the rule in N, the ambiguous A is construed against the party who drafted it.', ko='~ 원칙에 따라 모호한 ~은 이를 작성한 당사자에게 불리하게 해석돼요.', highlight='construed against the party who drafted it' WHERE id='s_negotiation_C2_05';

-- ============================================================
-- END OF BATCH 5
-- Reviewed: 126 / Rewritten: 125 / Skipped: 1
-- Skipped:
--   - s_discussion_A1_01 "I think so too." (고정 응답 표현, 변수화 부적합)
-- ============================================================
