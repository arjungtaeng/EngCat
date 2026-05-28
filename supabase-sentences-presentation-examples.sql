-- EngCat — Presentation topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Let me introduce myself briefly.', ex1_ko = '자기소개를 간략히 하겠습니다.',
  ex2 = 'Let me introduce my team to you.', ex2_ko = '저희 팀을 소개해 드리겠습니다.',
  ex3 = 'Let me introduce today''s topic.', ex3_ko = '오늘의 주제를 소개해 드리겠습니다.',
  ex4 = 'Let me introduce a special guest.', ex4_ko = '특별 게스트를 소개해 드리겠습니다.',
  ex5 = 'Let me introduce our latest research.', ex5_ko = '저희 최신 연구를 소개해 드리겠습니다.'
WHERE id = 's_presentation_A1_01';

UPDATE sentences SET
  ex1 = 'Today I will talk about our new product.', ex1_ko = '오늘 저희 새 제품에 대해 이야기하겠습니다.',
  ex2 = 'Today I will talk about market trends.', ex2_ko = '오늘 시장 동향에 대해 이야기하겠습니다.',
  ex3 = 'Today I will talk about our research findings.', ex3_ko = '오늘 저희 연구 결과에 대해 이야기하겠습니다.',
  ex4 = 'Today I will talk about customer feedback.', ex4_ko = '오늘 고객 피드백에 대해 이야기하겠습니다.',
  ex5 = 'Today I will talk about next quarter''s plan.', ex5_ko = '오늘 다음 분기 계획에 대해 이야기하겠습니다.'
WHERE id = 's_presentation_A1_02';

UPDATE sentences SET
  ex1 = 'My name is John and I am from the marketing team.', ex1_ko = '제 이름은 존이고 마케팅팀에 있습니다.',
  ex2 = 'My name is Soyeon and I am from the engineering team.', ex2_ko = '제 이름은 소연이고 엔지니어링팀에 있습니다.',
  ex3 = 'My name is Carlos and I am from the customer success team.', ex3_ko = '제 이름은 카를로스이고 고객 성공팀에 있습니다.',
  ex4 = 'My name is Hana and I am from the data team.', ex4_ko = '제 이름은 하나이고 데이터팀에 있습니다.',
  ex5 = 'My name is Daniel and I am from the product team.', ex5_ko = '제 이름은 다니엘이고 프로덕트팀에 있습니다.'
WHERE id = 's_presentation_A1_03';

UPDATE sentences SET
  ex1 = 'Please look at this chart on the screen.', ex1_ko = '화면의 이 차트를 봐주세요.',
  ex2 = 'Please look at this diagram for a moment.', ex2_ko = '잠시 이 도표를 봐주세요.',
  ex3 = 'Please look at this image carefully.', ex3_ko = '이 이미지를 자세히 봐주세요.',
  ex4 = 'Please look at this graph showing the trend.', ex4_ko = '추세를 보여주는 이 그래프를 봐주세요.',
  ex5 = 'Please look at this comparison table.', ex5_ko = '이 비교표를 봐주세요.'
WHERE id = 's_presentation_A1_04';

UPDATE sentences SET
  ex1 = 'First, I will show you the project timeline.', ex1_ko = '먼저 프로젝트 일정을 보여드리겠습니다.',
  ex2 = 'First, I will show you the customer segments.', ex2_ko = '먼저 고객 세그먼트를 보여드리겠습니다.',
  ex3 = 'First, I will show you the survey results.', ex3_ko = '먼저 설문 결과를 보여드리겠습니다.',
  ex4 = 'First, I will show you the user journey.', ex4_ko = '먼저 사용자 여정을 보여드리겠습니다.',
  ex5 = 'First, I will show you the team structure.', ex5_ko = '먼저 팀 구조를 보여드리겠습니다.'
WHERE id = 's_presentation_A1_05';

UPDATE sentences SET
  ex1 = 'Are there any questions about the timeline?', ex1_ko = '일정에 대해 질문이 있으신가요?',
  ex2 = 'Are there any questions before we move on?', ex2_ko = '계속 진행하기 전에 질문이 있으신가요?',
  ex3 = 'Are there any questions about the methodology?', ex3_ko = '방법론에 대해 질문이 있으신가요?',
  ex4 = 'Are there any questions about the numbers?', ex4_ko = '수치에 대해 질문이 있으신가요?',
  ex5 = 'Are there any questions about the next steps?', ex5_ko = '다음 단계에 대해 질문이 있으신가요?'
WHERE id = 's_presentation_A1_06';

UPDATE sentences SET
  ex1 = 'That is the end of my talk. Thank you for listening.', ex1_ko = '발표를 마치겠습니다. 들어주셔서 감사합니다.',
  ex2 = 'That is the end of our update. Thank you for your time.', ex2_ko = '업데이트를 마치겠습니다. 시간 내주셔서 감사합니다.',
  ex3 = 'That is the end of the demo. Thank you for joining.', ex3_ko = '데모를 마치겠습니다. 참석해 주셔서 감사합니다.',
  ex4 = 'That is the end of today''s session. Thank you.', ex4_ko = '오늘 세션을 마치겠습니다. 감사합니다.',
  ex5 = 'That is the end of my report. Thank you for your attention.', ex5_ko = '제 보고를 마치겠습니다. 주목해 주셔서 감사합니다.'
WHERE id = 's_presentation_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'My talk is divided into three parts.', ex1_ko = '제 발표는 세 부분으로 나뉩니다.',
  ex2 = 'My presentation is divided into four sections.', ex2_ko = '제 발표는 네 섹션으로 나뉩니다.',
  ex3 = 'This session is divided into two main themes.', ex3_ko = '이 세션은 두 가지 주요 테마로 나뉩니다.',
  ex4 = 'The agenda is divided into morning and afternoon blocks.', ex4_ko = '안건은 오전과 오후 블록으로 나뉩니다.',
  ex5 = 'The workshop is divided into theory and practice.', ex5_ko = '워크숍은 이론과 실습으로 나뉩니다.'
WHERE id = 's_presentation_A2_01';

UPDATE sentences SET
  ex1 = 'First I will cover the goals, then the methods, and finally the results.', ex1_ko = '먼저 목표를 다루고, 그다음 방법, 마지막으로 결과를 다루겠습니다.',
  ex2 = 'First I will cover the context, then the challenges, and finally the solutions.', ex2_ko = '먼저 맥락을 다루고, 그다음 과제, 마지막으로 해결책을 다루겠습니다.',
  ex3 = 'First I will cover the users, then the product, and finally the metrics.', ex3_ko = '먼저 사용자를 다루고, 그다음 제품, 마지막으로 지표를 다루겠습니다.',
  ex4 = 'First I will cover the history, then the present state, and finally the future.', ex4_ko = '먼저 역사를 다루고, 그다음 현황, 마지막으로 미래를 다루겠습니다.',
  ex5 = 'First I will cover the why, then the what, and finally the how.', ex5_ko = '먼저 이유를 다루고, 그다음 내용, 마지막으로 방법을 다루겠습니다.'
WHERE id = 's_presentation_A2_02';

UPDATE sentences SET
  ex1 = 'Please feel free to ask questions at any time.', ex1_ko = '언제든지 자유롭게 질문해 주세요.',
  ex2 = 'Please feel free to interrupt if anything is unclear.', ex2_ko = '명확하지 않은 점이 있으면 자유롭게 끼어들어 주세요.',
  ex3 = 'Please feel free to share your thoughts in the chat.', ex3_ko = '채팅창에 자유롭게 의견을 공유해 주세요.',
  ex4 = 'Please feel free to email me with follow-up questions.', ex4_ko = '후속 질문은 자유롭게 이메일로 보내 주세요.',
  ex5 = 'Please feel free to take notes during the demo.', ex5_ko = '데모 중에 자유롭게 메모해 주세요.'
WHERE id = 's_presentation_A2_03';

UPDATE sentences SET
  ex1 = 'Let me give you a brief overview before we begin.', ex1_ko = '시작하기 전에 간략한 개요를 말씀드리겠습니다.',
  ex2 = 'Let me give you a brief overview of the project background.', ex2_ko = '프로젝트 배경에 대한 간략한 개요를 말씀드리겠습니다.',
  ex3 = 'Let me give you a brief overview of the methodology.', ex3_ko = '방법론에 대한 간략한 개요를 말씀드리겠습니다.',
  ex4 = 'Let me give you a brief overview of the timeline.', ex4_ko = '일정에 대한 간략한 개요를 말씀드리겠습니다.',
  ex5 = 'Let me give you a brief overview of the structure.', ex5_ko = '구조에 대한 간략한 개요를 말씀드리겠습니다.'
WHERE id = 's_presentation_A2_04';

UPDATE sentences SET
  ex1 = 'The main topic of today''s presentation is digital transformation.', ex1_ko = '오늘 발표의 주요 주제는 디지털 전환입니다.',
  ex2 = 'The main topic of today''s session is team alignment.', ex2_ko = '오늘 세션의 주요 주제는 팀 정렬입니다.',
  ex3 = 'The main topic of today''s workshop is design thinking.', ex3_ko = '오늘 워크숍의 주요 주제는 디자인 씽킹입니다.',
  ex4 = 'The main topic of today''s meeting is goal setting.', ex4_ko = '오늘 회의의 주요 주제는 목표 설정입니다.',
  ex5 = 'The main topic of today''s talk is sustainable growth.', ex5_ko = '오늘 강연의 주요 주제는 지속 가능한 성장입니다.'
WHERE id = 's_presentation_A2_05';

UPDATE sentences SET
  ex1 = 'By the end of this presentation, you will understand our key strategy.', ex1_ko = '이 발표가 끝날 때쯤이면 저희 핵심 전략을 이해하게 될 것입니다.',
  ex2 = 'By the end of this presentation, you will see why this matters.', ex2_ko = '이 발표가 끝날 때쯤이면 이것이 왜 중요한지 보게 될 것입니다.',
  ex3 = 'By the end of this presentation, you will know how to apply this framework.', ex3_ko = '이 발표가 끝날 때쯤이면 이 프레임워크를 어떻게 적용하는지 알게 될 것입니다.',
  ex4 = 'By the end of this presentation, you will have three concrete takeaways.', ex4_ko = '이 발표가 끝날 때쯤이면 세 가지 구체적인 시사점을 가지시게 될 것입니다.',
  ex5 = 'By the end of this presentation, you will be ready to take action.', ex5_ko = '이 발표가 끝날 때쯤이면 행동에 나설 준비가 되실 것입니다.'
WHERE id = 's_presentation_A2_06';

UPDATE sentences SET
  ex1 = 'In conclusion, the data shows a clear positive trend.', ex1_ko = '결론적으로, 데이터는 명확한 긍정적 추세를 보여줍니다.',
  ex2 = 'In conclusion, our hypothesis is strongly supported.', ex2_ko = '결론적으로, 저희 가설은 강력히 뒷받침됩니다.',
  ex3 = 'In conclusion, three actions emerge as priorities.', ex3_ko = '결론적으로, 세 가지 행동이 우선순위로 부상합니다.',
  ex4 = 'In conclusion, the investment has paid off across all metrics.', ex4_ko = '결론적으로, 그 투자는 모든 지표에 걸쳐 성과를 냈습니다.',
  ex5 = 'In conclusion, further research will deepen our understanding.', ex5_ko = '결론적으로, 추가 연구가 저희의 이해를 심화시킬 것입니다.'
WHERE id = 's_presentation_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Now let''s move on to the next point about pricing.', ex1_ko = '이제 가격에 관한 다음 요점으로 넘어가겠습니다.',
  ex2 = 'Now let''s move on to the survey methodology.', ex2_ko = '이제 설문 방법론으로 넘어가겠습니다.',
  ex3 = 'Now let''s move on to the implementation plan.', ex3_ko = '이제 실행 계획으로 넘어가겠습니다.',
  ex4 = 'Now let''s move on to the customer testimonials.', ex4_ko = '이제 고객 후기로 넘어가겠습니다.',
  ex5 = 'Now let''s move on to the financial projections.', ex5_ko = '이제 재무 전망으로 넘어가겠습니다.'
WHERE id = 's_presentation_B1_01';

UPDATE sentences SET
  ex1 = 'Having looked at the data, let''s now consider what it means in practice.', ex1_ko = '데이터를 살펴봤으니, 이제 실무에서 무엇을 의미하는지 생각해 보겠습니다.',
  ex2 = 'Having looked at the market, let''s now consider our positioning options.', ex2_ko = '시장을 살펴봤으니, 이제 저희 포지셔닝 옵션을 생각해 보겠습니다.',
  ex3 = 'Having looked at the risks, let''s now consider the mitigation strategies.', ex3_ko = '위험을 살펴봤으니, 이제 완화 전략을 생각해 보겠습니다.',
  ex4 = 'Having looked at the competition, let''s now consider our differentiation.', ex4_ko = '경쟁사를 살펴봤으니, 이제 저희 차별화 요소를 생각해 보겠습니다.',
  ex5 = 'Having looked at the past, let''s now consider what comes next.', ex5_ko = '과거를 살펴봤으니, 이제 다음에 무엇이 올지 생각해 보겠습니다.'
WHERE id = 's_presentation_B1_02';

UPDATE sentences SET
  ex1 = 'I''d like to draw your attention to this key data point.', ex1_ko = '이 핵심 데이터 포인트에 주목해 주시기 바랍니다.',
  ex2 = 'I''d like to draw your attention to this customer quote.', ex2_ko = '이 고객 인용문에 주목해 주시기 바랍니다.',
  ex3 = 'I''d like to draw your attention to the trend over time.', ex3_ko = '시간 흐름에 따른 추세에 주목해 주시기 바랍니다.',
  ex4 = 'I''d like to draw your attention to this critical milestone.', ex4_ko = '이 중요한 마일스톤에 주목해 주시기 바랍니다.',
  ex5 = 'I''d like to draw your attention to the highlighted figure.', ex5_ko = '강조된 수치에 주목해 주시기 바랍니다.'
WHERE id = 's_presentation_B1_03';

UPDATE sentences SET
  ex1 = 'This brings me to my second point about resourcing.', ex1_ko = '이것이 저를 자원 배분에 관한 두 번째 요점으로 이끕니다.',
  ex2 = 'This brings me to our biggest opportunity.', ex2_ko = '이것이 저를 저희의 가장 큰 기회로 이끕니다.',
  ex3 = 'This brings me to a critical question for the team.', ex3_ko = '이것이 저를 팀에 중요한 질문으로 이끕니다.',
  ex4 = 'This brings me to the heart of our proposal.', ex4_ko = '이것이 저를 저희 제안의 핵심으로 이끕니다.',
  ex5 = 'This brings me to my final recommendation.', ex5_ko = '이것이 저를 마지막 권고 사항으로 이끕니다.'
WHERE id = 's_presentation_B1_04';

UPDATE sentences SET
  ex1 = 'To illustrate this point, let me share a recent case study.', ex1_ko = '이 요점을 설명하기 위해 최근 사례 연구를 공유하겠습니다.',
  ex2 = 'To illustrate this point, let me show you a real customer story.', ex2_ko = '이 요점을 설명하기 위해 실제 고객 이야기를 보여드리겠습니다.',
  ex3 = 'To illustrate this point, let me walk you through an example.', ex3_ko = '이 요점을 설명하기 위해 한 가지 예를 안내해 드리겠습니다.',
  ex4 = 'To illustrate this point, let me play a brief clip.', ex4_ko = '이 요점을 설명하기 위해 짧은 영상을 재생하겠습니다.',
  ex5 = 'To illustrate this point, let me share a personal experience.', ex5_ko = '이 요점을 설명하기 위해 개인적 경험을 공유하겠습니다.'
WHERE id = 's_presentation_B1_05';

UPDATE sentences SET
  ex1 = 'As I mentioned earlier, the key challenge is timing.', ex1_ko = '앞서 언급했듯이, 핵심 과제는 타이밍입니다.',
  ex2 = 'As I mentioned earlier, our users have three main jobs to be done.', ex2_ko = '앞서 언급했듯이, 저희 사용자에게는 세 가지 주요 과업이 있습니다.',
  ex3 = 'As I mentioned earlier, retention is our north-star metric.', ex3_ko = '앞서 언급했듯이, 유지율이 저희의 북극성 지표입니다.',
  ex4 = 'As I mentioned earlier, the budget is fixed for this quarter.', ex4_ko = '앞서 언급했듯이, 이번 분기 예산은 고정되어 있습니다.',
  ex5 = 'As I mentioned earlier, this work builds on last year''s findings.', ex5_ko = '앞서 언급했듯이, 이 작업은 작년 연구 결과를 기반으로 합니다.'
WHERE id = 's_presentation_B1_06';

UPDATE sentences SET
  ex1 = 'Before I move on, are there any questions so far?', ex1_ko = '계속 진행하기 전에, 지금까지 질문 있으신가요?',
  ex2 = 'Before I move on, do you need me to clarify anything?', ex2_ko = '계속 진행하기 전에, 명확히 설명드릴 게 있을까요?',
  ex3 = 'Before I move on, let me check if everyone is following.', ex3_ko = '계속 진행하기 전에, 모두 따라오고 계신지 확인하겠습니다.',
  ex4 = 'Before I move on, would anyone like to share an example?', ex4_ko = '계속 진행하기 전에, 예시를 공유하고 싶으신 분 계신가요?',
  ex5 = 'Before I move on, is the framework clear to everyone?', ex5_ko = '계속 진행하기 전에, 프레임워크가 모두에게 명확한가요?'
WHERE id = 's_presentation_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'What I want to emphasize here is the long-term impact of this decision.', ex1_ko = '제가 여기서 강조하고 싶은 것은 이 결정의 장기적인 영향입니다.',
  ex2 = 'What I want to emphasize here is the strategic value over short-term cost.', ex2_ko = '제가 여기서 강조하고 싶은 것은 단기 비용보다 전략적 가치입니다.',
  ex3 = 'What I want to emphasize here is the consistency of customer feedback.', ex3_ko = '제가 여기서 강조하고 싶은 것은 고객 피드백의 일관성입니다.',
  ex4 = 'What I want to emphasize here is the urgency of acting now.', ex4_ko = '제가 여기서 강조하고 싶은 것은 지금 행동해야 할 시급성입니다.',
  ex5 = 'What I want to emphasize here is the cross-team collaboration required.', ex5_ko = '제가 여기서 강조하고 싶은 것은 필요한 팀 간 협업입니다.'
WHERE id = 's_presentation_B2_01';

UPDATE sentences SET
  ex1 = 'It is worth noting that this trend has been consistent across markets.', ex1_ko = '이 추세가 시장 전반에 걸쳐 일관되게 유지되어 왔다는 점은 주목할 만합니다.',
  ex2 = 'It is worth noting that the early adopters are already seeing results.', ex2_ko = '얼리 어답터들이 이미 결과를 보고 있다는 점은 주목할 만합니다.',
  ex3 = 'It is worth noting that this approach is now an industry standard.', ex3_ko = '이 접근법이 이제 업계 표준이 되었다는 점은 주목할 만합니다.',
  ex4 = 'It is worth noting that the data spans five different regions.', ex4_ko = '데이터가 다섯 개의 다른 지역에 걸쳐 있다는 점은 주목할 만합니다.',
  ex5 = 'It is worth noting that satisfaction scores have doubled.', ex5_ko = '만족도 점수가 두 배가 되었다는 점은 주목할 만합니다.'
WHERE id = 's_presentation_B2_02';

UPDATE sentences SET
  ex1 = 'The data compellingly demonstrates that our approach is working.', ex1_ko = '데이터는 우리의 접근법이 효과적이라는 것을 설득력 있게 증명합니다.',
  ex2 = 'The evidence compellingly demonstrates that early intervention pays off.', ex2_ko = '증거는 조기 개입이 성과를 낸다는 것을 설득력 있게 증명합니다.',
  ex3 = 'The research compellingly demonstrates that user trust drives adoption.', ex3_ko = '연구는 사용자 신뢰가 채택을 이끈다는 것을 설득력 있게 증명합니다.',
  ex4 = 'The case study compellingly demonstrates that the model scales.', ex4_ko = '사례 연구는 그 모델이 확장 가능하다는 것을 설득력 있게 증명합니다.',
  ex5 = 'The analysis compellingly demonstrates that we have product-market fit.', ex5_ko = '분석은 저희가 제품-시장 적합성을 가지고 있다는 것을 설득력 있게 증명합니다.'
WHERE id = 's_presentation_B2_03';

UPDATE sentences SET
  ex1 = 'To summarize the key takeaways from today''s presentation...', ex1_ko = '오늘 발표의 핵심 시사점을 요약하자면...',
  ex2 = 'To summarize the key takeaways from this research...', ex2_ko = '이 연구의 핵심 시사점을 요약하자면...',
  ex3 = 'To summarize the key takeaways from our discussion...', ex3_ko = '저희 토론의 핵심 시사점을 요약하자면...',
  ex4 = 'To summarize the key takeaways from the workshop...', ex4_ko = '워크숍의 핵심 시사점을 요약하자면...',
  ex5 = 'To summarize the key takeaways from these case studies...', ex5_ko = '이 사례 연구들의 핵심 시사점을 요약하자면...'
WHERE id = 's_presentation_B2_04';

UPDATE sentences SET
  ex1 = 'I would like to leave you with one final thought to consider.', ex1_ko = '마지막으로 한 가지 생각을 남기고 싶습니다.',
  ex2 = 'I would like to leave you with one final question to ponder.', ex2_ko = '마지막으로 한 가지 숙고할 질문을 남기고 싶습니다.',
  ex3 = 'I would like to leave you with one final image to remember.', ex3_ko = '마지막으로 한 가지 기억할 이미지를 남기고 싶습니다.',
  ex4 = 'I would like to leave you with one final invitation to act.', ex4_ko = '마지막으로 한 가지 행동을 향한 초대를 남기고 싶습니다.',
  ex5 = 'I would like to leave you with one final story to reflect on.', ex5_ko = '마지막으로 한 가지 성찰할 이야기를 남기고 싶습니다.'
WHERE id = 's_presentation_B2_05';

UPDATE sentences SET
  ex1 = 'In light of this evidence, I strongly recommend proceeding with option B.', ex1_ko = '이 증거에 비추어 볼 때, 저는 옵션 B를 강력히 권장합니다.',
  ex2 = 'In light of this evidence, I strongly recommend revising our approach.', ex2_ko = '이 증거에 비추어 볼 때, 저는 저희 접근법을 수정하실 것을 강력히 권장합니다.',
  ex3 = 'In light of this evidence, I strongly recommend further investment.', ex3_ko = '이 증거에 비추어 볼 때, 저는 추가 투자를 강력히 권장합니다.',
  ex4 = 'In light of this evidence, I strongly recommend pausing the rollout.', ex4_ko = '이 증거에 비추어 볼 때, 저는 출시 일시 중단을 강력히 권장합니다.',
  ex5 = 'In light of this evidence, I strongly recommend bringing in expert review.', ex5_ko = '이 증거에 비추어 볼 때, 저는 전문가 검토 도입을 강력히 권장합니다.'
WHERE id = 's_presentation_B2_06';

UPDATE sentences SET
  ex1 = 'Should you have any further questions, please do not hesitate to reach out by email.', ex1_ko = '추가 질문이 있으시면 이메일로 언제든지 연락 주시기 바랍니다.',
  ex2 = 'Should you have any concerns, please do not hesitate to reach out directly.', ex2_ko = '우려 사항이 있으시면 언제든지 직접 연락 주시기 바랍니다.',
  ex3 = 'Should you want a deeper dive, please do not hesitate to reach out for a follow-up.', ex3_ko = '더 깊이 있는 내용을 원하시면 후속 미팅을 위해 언제든지 연락 주시기 바랍니다.',
  ex4 = 'Should you need clarification, please do not hesitate to reach out via Slack.', ex4_ko = '명확한 설명이 필요하시면 슬랙으로 언제든지 연락 주시기 바랍니다.',
  ex5 = 'Should you have suggestions, please do not hesitate to reach out at any time.', ex5_ko = '제안 사항이 있으시면 언제든지 연락 주시기 바랍니다.'
WHERE id = 's_presentation_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The empirical evidence overwhelmingly supports the hypothesis that engagement drives retention.', ex1_ko = '경험적 증거는 참여가 유지율을 이끈다는 가설을 압도적으로 뒷받침합니다.',
  ex2 = 'The empirical evidence overwhelmingly supports the case for proactive intervention.', ex2_ko = '경험적 증거는 선제적 개입에 대한 주장을 압도적으로 뒷받침합니다.',
  ex3 = 'The empirical evidence overwhelmingly supports the claim that trust precedes loyalty.', ex3_ko = '경험적 증거는 신뢰가 충성도에 선행한다는 주장을 압도적으로 뒷받침합니다.',
  ex4 = 'The empirical evidence overwhelmingly supports the value of cross-functional collaboration.', ex4_ko = '경험적 증거는 부서 간 협업의 가치를 압도적으로 뒷받침합니다.',
  ex5 = 'The empirical evidence overwhelmingly supports our proposed reallocation of resources.', ex5_ko = '경험적 증거는 저희가 제안한 자원 재배분을 압도적으로 뒷받침합니다.'
WHERE id = 's_presentation_C1_01';

UPDATE sentences SET
  ex1 = 'I will now deconstruct the conventional wisdom surrounding this issue.', ex1_ko = '이제 이 문제를 둘러싼 통념을 해체하겠습니다.',
  ex2 = 'I will now deconstruct the conventional wisdom about customer acquisition.', ex2_ko = '이제 고객 확보에 대한 통념을 해체하겠습니다.',
  ex3 = 'I will now deconstruct the conventional wisdom regarding remote work productivity.', ex3_ko = '이제 원격 근무 생산성에 관한 통념을 해체하겠습니다.',
  ex4 = 'I will now deconstruct the conventional wisdom that more features mean more value.', ex4_ko = '이제 기능이 많을수록 가치가 크다는 통념을 해체하겠습니다.',
  ex5 = 'I will now deconstruct the conventional wisdom about market timing.', ex5_ko = '이제 시장 타이밍에 대한 통념을 해체하겠습니다.'
WHERE id = 's_presentation_C1_02';

UPDATE sentences SET
  ex1 = 'This framework allows us to synthesize findings across multiple disciplines.', ex1_ko = '이 프레임워크를 통해 여러 학문 분야의 발견을 종합할 수 있습니다.',
  ex2 = 'This framework allows us to synthesize insights across diverse markets.', ex2_ko = '이 프레임워크를 통해 다양한 시장의 통찰을 종합할 수 있습니다.',
  ex3 = 'This framework allows us to synthesize lessons across multiple product launches.', ex3_ko = '이 프레임워크를 통해 여러 제품 출시의 교훈을 종합할 수 있습니다.',
  ex4 = 'This framework allows us to synthesize patterns across qualitative and quantitative data.', ex4_ko = '이 프레임워크를 통해 정성적 데이터와 정량적 데이터의 패턴을 종합할 수 있습니다.',
  ex5 = 'This framework allows us to synthesize learnings across multiple stakeholder groups.', ex5_ko = '이 프레임워크를 통해 여러 이해관계자 그룹의 배움을 종합할 수 있습니다.'
WHERE id = 's_presentation_C1_03';

UPDATE sentences SET
  ex1 = 'The implications of this paradigm shift extend far beyond our immediate industry.', ex1_ko = '이 패러다임 전환의 함의는 우리의 직접적인 산업을 훨씬 넘어섭니다.',
  ex2 = 'The implications of this regulatory change extend far beyond compliance teams.', ex2_ko = '이 규제 변화의 함의는 컴플라이언스 팀을 훨씬 넘어섭니다.',
  ex3 = 'The implications of this customer insight extend far beyond product design.', ex3_ko = '이 고객 통찰의 함의는 제품 디자인을 훨씬 넘어섭니다.',
  ex4 = 'The implications of this discovery extend far beyond our original hypothesis.', ex4_ko = '이 발견의 함의는 저희의 원래 가설을 훨씬 넘어섭니다.',
  ex5 = 'The implications of this realignment extend far beyond the current quarter.', ex5_ko = '이 재정렬의 함의는 현 분기를 훨씬 넘어섭니다.'
WHERE id = 's_presentation_C1_04';

UPDATE sentences SET
  ex1 = 'While the quantitative data is compelling, the qualitative insights reveal a more nuanced picture.', ex1_ko = '정량적 데이터는 설득력 있지만, 정성적 인사이트는 더 세밀한 그림을 드러냅니다.',
  ex2 = 'While the headline numbers are strong, the underlying drivers reveal a more nuanced picture.', ex2_ko = '주요 수치는 강력하지만, 기저 동인은 더 세밀한 그림을 드러냅니다.',
  ex3 = 'While the survey results are clear, the focus group findings reveal a more nuanced picture.', ex3_ko = '설문 결과는 명확하지만, 포커스 그룹 결과는 더 세밀한 그림을 드러냅니다.',
  ex4 = 'While the financial returns are visible, the cultural impact reveals a more nuanced picture.', ex4_ko = '재무 수익은 가시적이지만, 문화적 영향은 더 세밀한 그림을 드러냅니다.',
  ex5 = 'While the macro trends are obvious, the micro behaviors reveal a more nuanced picture.', ex5_ko = '거시적 추세는 분명하지만, 미시적 행동은 더 세밀한 그림을 드러냅니다.'
WHERE id = 's_presentation_C1_05';

UPDATE sentences SET
  ex1 = 'I would posit that the root cause lies not in the symptom but in the underlying system.', ex1_ko = '근본 원인은 증상이 아니라 기저 시스템에 있다고 주장하고자 합니다.',
  ex2 = 'I would posit that the real opportunity lies not in the product but in the ecosystem around it.', ex2_ko = '진정한 기회는 제품이 아니라 그 주변 생태계에 있다고 주장하고자 합니다.',
  ex3 = 'I would posit that the differentiator lies not in features but in delivery and trust.', ex3_ko = '차별화 요소는 기능이 아니라 전달과 신뢰에 있다고 주장하고자 합니다.',
  ex4 = 'I would posit that the constraint lies not in talent but in organizational design.', ex4_ko = '제약은 인재가 아니라 조직 설계에 있다고 주장하고자 합니다.',
  ex5 = 'I would posit that the bottleneck lies not in technology but in decision-making speed.', ex5_ko = '병목은 기술이 아니라 의사 결정 속도에 있다고 주장하고자 합니다.'
WHERE id = 's_presentation_C1_06';

UPDATE sentences SET
  ex1 = 'To conclude, the convergence of these three factors creates an unprecedented opportunity.', ex1_ko = '결론적으로, 이 세 가지 요소의 수렴은 전례 없는 기회를 만들어냅니다.',
  ex2 = 'To conclude, the convergence of policy and technology creates an unprecedented opportunity.', ex2_ko = '결론적으로, 정책과 기술의 수렴은 전례 없는 기회를 만들어냅니다.',
  ex3 = 'To conclude, the convergence of demand and capacity creates an unprecedented opportunity.', ex3_ko = '결론적으로, 수요와 역량의 수렴은 전례 없는 기회를 만들어냅니다.',
  ex4 = 'To conclude, the convergence of these market shifts creates an unprecedented opportunity.', ex4_ko = '결론적으로, 이러한 시장 변화의 수렴은 전례 없는 기회를 만들어냅니다.',
  ex5 = 'To conclude, the convergence of generations and platforms creates an unprecedented opportunity.', ex5_ko = '결론적으로, 세대와 플랫폼의 수렴은 전례 없는 기회를 만들어냅니다.'
WHERE id = 's_presentation_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The dialectical tension between efficiency and equity is not a problem to be solved but a dynamic to be managed.', ex1_ko = '효율성과 형평성 사이의 변증법적 긴장은 해결해야 할 문제가 아니라 관리해야 할 역동성입니다.',
  ex2 = 'The dialectical tension between speed and quality is not a problem to be solved but a dynamic to be managed.', ex2_ko = '속도와 품질 사이의 변증법적 긴장은 해결해야 할 문제가 아니라 관리해야 할 역동성입니다.',
  ex3 = 'The dialectical tension between innovation and stability is not a problem to be solved but a dynamic to be managed.', ex3_ko = '혁신과 안정성 사이의 변증법적 긴장은 해결해야 할 문제가 아니라 관리해야 할 역동성입니다.',
  ex4 = 'The dialectical tension between autonomy and alignment is not a problem to be solved but a dynamic to be managed.', ex4_ko = '자율성과 정렬 사이의 변증법적 긴장은 해결해야 할 문제가 아니라 관리해야 할 역동성입니다.',
  ex5 = 'The dialectical tension between scale and intimacy is not a problem to be solved but a dynamic to be managed.', ex5_ko = '규모와 친밀성 사이의 변증법적 긴장은 해결해야 할 문제가 아니라 관리해야 할 역동성입니다.'
WHERE id = 's_presentation_C2_01';

UPDATE sentences SET
  ex1 = 'What this meta-analysis reveals is not merely correlation but a robust causal mechanism.', ex1_ko = '이 메타분석이 드러내는 것은 단순한 상관관계가 아니라 견고한 인과 메커니즘입니다.',
  ex2 = 'What this case study reveals is not merely anecdote but a replicable pattern.', ex2_ko = '이 사례 연구가 드러내는 것은 단순한 일화가 아니라 재현 가능한 패턴입니다.',
  ex3 = 'What this dataset reveals is not merely a trend but a structural transformation.', ex3_ko = '이 데이터셋이 드러내는 것은 단순한 추세가 아니라 구조적 변환입니다.',
  ex4 = 'What this finding reveals is not merely a curiosity but a paradigm-shifting insight.', ex4_ko = '이 발견이 드러내는 것은 단순한 호기심이 아니라 패러다임을 바꾸는 통찰입니다.',
  ex5 = 'What this experiment reveals is not merely a result but a generalizable principle.', ex5_ko = '이 실험이 드러내는 것은 단순한 결과가 아니라 일반화 가능한 원리입니다.'
WHERE id = 's_presentation_C2_02';

UPDATE sentences SET
  ex1 = 'I invite you to interrogate your own assumptions as we work through this evidence together.', ex1_ko = '이 증거를 함께 검토하면서 자신의 가정을 면밀히 살펴보시길 권합니다.',
  ex2 = 'I invite you to interrogate your own mental models before reaching for familiar conclusions.', ex2_ko = '익숙한 결론에 다가가기 전에 자신의 정신 모델을 면밀히 살펴보시길 권합니다.',
  ex3 = 'I invite you to interrogate your own priors as we examine the counter-evidence.', ex3_ko = '반대 증거를 살펴보면서 자신의 사전 가정을 면밀히 살펴보시길 권합니다.',
  ex4 = 'I invite you to interrogate your own frames before judging the proposal.', ex4_ko = '제안을 판단하기 전에 자신의 프레임을 면밀히 살펴보시길 권합니다.',
  ex5 = 'I invite you to interrogate your own definitions before debating the conclusion.', ex5_ko = '결론을 논의하기 전에 자신의 정의를 면밀히 살펴보시길 권합니다.'
WHERE id = 's_presentation_C2_03';

UPDATE sentences SET
  ex1 = 'The epistemological question we must first address is: how do we know what we think we know?', ex1_ko = '우리가 먼저 다루어야 할 인식론적 질문은 이것입니다: 우리가 안다고 생각하는 것을 우리는 어떻게 알까요?',
  ex2 = 'The strategic question we must first address is: what game are we actually playing?', ex2_ko = '우리가 먼저 다루어야 할 전략적 질문은 이것입니다: 우리는 실제로 어떤 게임을 하고 있는가?',
  ex3 = 'The ethical question we must first address is: whose interests are we ultimately serving?', ex3_ko = '우리가 먼저 다루어야 할 윤리적 질문은 이것입니다: 우리는 결국 누구의 이익을 위하고 있는가?',
  ex4 = 'The architectural question we must first address is: what are we optimising for in the long run?', ex4_ko = '우리가 먼저 다루어야 할 구조적 질문은 이것입니다: 장기적으로 우리는 무엇을 최적화하고 있는가?',
  ex5 = 'The cultural question we must first address is: what behaviors are we implicitly rewarding?', ex5_ko = '우리가 먼저 다루어야 할 문화적 질문은 이것입니다: 우리는 어떤 행동을 암묵적으로 보상하고 있는가?'
WHERE id = 's_presentation_C2_04';

UPDATE sentences SET
  ex1 = 'Through a process of triangulation across qualitative, quantitative, and ethnographic sources, we arrive at a remarkably consistent picture.', ex1_ko = '정성적, 정량적, 민족지적 출처에 걸친 삼각검증 과정을 통해 우리는 놀랍도록 일관된 그림에 도달합니다.',
  ex2 = 'Through a process of triangulation across user interviews, log analytics, and survey data, we arrive at a remarkably consistent picture.', ex2_ko = '사용자 인터뷰, 로그 분석, 설문 데이터에 걸친 삼각검증 과정을 통해 우리는 놀랍도록 일관된 그림에 도달합니다.',
  ex3 = 'Through a process of triangulation across financial, operational, and reputational indicators, we arrive at a remarkably consistent picture.', ex3_ko = '재무, 운영, 평판 지표에 걸친 삼각검증 과정을 통해 우리는 놀랍도록 일관된 그림에 도달합니다.',
  ex4 = 'Through a process of triangulation across multiple time periods and geographies, we arrive at a remarkably consistent picture.', ex4_ko = '여러 시기와 지역에 걸친 삼각검증 과정을 통해 우리는 놀랍도록 일관된 그림에 도달합니다.',
  ex5 = 'Through a process of triangulation across internal data, external benchmarks, and field observations, we arrive at a remarkably consistent picture.', ex5_ko = '내부 데이터, 외부 벤치마크, 현장 관찰에 걸친 삼각검증 과정을 통해 우리는 놀랍도록 일관된 그림에 도달합니다.'
WHERE id = 's_presentation_C2_05';

UPDATE sentences SET
  ex1 = 'Far from being a peripheral concern, reflexivity is central to the integrity of this entire analysis.', ex1_ko = '성찰성은 주변적 관심사가 아니라 이 분석 전체의 무결성의 핵심입니다.',
  ex2 = 'Far from being a marginal detail, this assumption is central to the validity of every conclusion that follows.', ex2_ko = '이 가정은 주변적 세부 사항이 아니라 뒤따르는 모든 결론의 타당성의 핵심입니다.',
  ex3 = 'Far from being an optional add-on, accessibility is central to the legitimacy of any product we ship.', ex3_ko = '접근성은 선택적 추가 사항이 아니라 우리가 출시하는 모든 제품의 정당성의 핵심입니다.',
  ex4 = 'Far from being a soft skill, communication is central to the effectiveness of every leadership role.', ex4_ko = '의사소통은 부드러운 스킬이 아니라 모든 리더십 역할의 효과성의 핵심입니다.',
  ex5 = 'Far from being an afterthought, ethics is central to the sustainability of this entire enterprise.', ex5_ko = '윤리는 사후적인 고려가 아니라 이 기업 전체의 지속가능성의 핵심입니다.'
WHERE id = 's_presentation_C2_06';

UPDATE sentences SET
  ex1 = 'I leave you with a provocation: if our praxis does not challenge existing structures, what exactly are we here to present?', ex1_ko = '하나의 도발을 남깁니다: 우리의 실천이 기존 구조에 도전하지 않는다면, 우리는 정확히 무엇을 발표하러 여기 있는 것입니까?',
  ex2 = 'I leave you with a provocation: if our metrics do not measure what truly matters, what exactly are we optimising for?', ex2_ko = '하나의 도발을 남깁니다: 우리의 지표가 진정 중요한 것을 측정하지 않는다면, 우리는 정확히 무엇을 위해 최적화하고 있는 것입니까?',
  ex3 = 'I leave you with a provocation: if our research does not translate into action, what exactly was its purpose?', ex3_ko = '하나의 도발을 남깁니다: 우리의 연구가 행동으로 이어지지 않는다면, 그 목적은 정확히 무엇이었습니까?',
  ex4 = 'I leave you with a provocation: if our strategy does not name what we will give up, what exactly does it commit to?', ex4_ko = '하나의 도발을 남깁니다: 우리의 전략이 무엇을 포기할지 명명하지 않는다면, 그것이 정확히 무엇을 약속하는 것입니까?',
  ex5 = 'I leave you with a provocation: if our learning does not change our behavior, what exactly have we learned?', ex5_ko = '하나의 도발을 남깁니다: 우리의 배움이 우리의 행동을 바꾸지 않는다면, 우리는 정확히 무엇을 배운 것입니까?'
WHERE id = 's_presentation_C2_07';
