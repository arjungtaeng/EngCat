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
