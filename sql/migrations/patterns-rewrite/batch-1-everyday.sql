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
