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
