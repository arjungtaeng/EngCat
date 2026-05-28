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
