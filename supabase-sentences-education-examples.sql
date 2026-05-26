-- EngCat — Education topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns: A1×7, A2×7, B1×7, B2×7, C1×7, C2×7)
-- Each example applies the same grammatical/functional pattern in a different context
-- Idempotent (UPDATE only)
-- Generated: 2026-05-26

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'What subject do you like best?', ex1_ko = '어떤 과목을 제일 좋아하세요?',
  ex2 = 'What sport do you like best?', ex2_ko = '어떤 운동을 제일 좋아하세요?',
  ex3 = 'What food do you like best?', ex3_ko = '어떤 음식을 제일 좋아하세요?',
  ex4 = 'What season do you like best?', ex4_ko = '어떤 계절을 제일 좋아하세요?',
  ex5 = 'What colour do you like best?', ex5_ko = '어떤 색깔을 제일 좋아하세요?'
WHERE id = 's_education_A1_01';

UPDATE sentences SET
  ex1 = 'I like English because it''s interesting.', ex1_ko = '영어가 흥미로워서 좋아요.',
  ex2 = 'I like science because it''s fun.', ex2_ko = '과학이 재미있어서 좋아요.',
  ex3 = 'I like art because it''s relaxing.', ex3_ko = '미술이 편안해서 좋아요.',
  ex4 = 'I like history because it''s exciting.', ex4_ko = '역사가 흥미진진해서 좋아요.',
  ex5 = 'I like PE because it''s enjoyable.', ex5_ko = '체육이 즐거워서 좋아요.'
WHERE id = 's_education_A1_02';

UPDATE sentences SET
  ex1 = 'How do you spell that word?', ex1_ko = '그 단어 철자가 어떻게 돼요?',
  ex2 = 'How do you spell your name?', ex2_ko = '이름 철자가 어떻게 돼요?',
  ex3 = 'How do you spell "necessary"?', ex3_ko = '"necessary"는 철자가 어떻게 돼요?',
  ex4 = 'How do you spell that city?', ex4_ko = '그 도시 철자가 어떻게 돼요?',
  ex5 = 'How do you spell "beautiful"?', ex5_ko = '"beautiful"은 철자가 어떻게 돼요?'
WHERE id = 's_education_A1_03';

UPDATE sentences SET
  ex1 = 'Can you say that again, please?', ex1_ko = '다시 한 번 말씀해 주실 수 있어요?',
  ex2 = 'Can you write that down, please?', ex2_ko = '그거 써 주실 수 있어요?',
  ex3 = 'Can you speak more slowly, please?', ex3_ko = '좀 더 천천히 말씀해 주실 수 있어요?',
  ex4 = 'Can you show me again, please?', ex4_ko = '다시 한 번 보여 주실 수 있어요?',
  ex5 = 'Can you explain that, please?', ex5_ko = '그것을 설명해 주실 수 있어요?'
WHERE id = 's_education_A1_04';

UPDATE sentences SET
  ex1 = 'What does this word mean?', ex1_ko = '이 단어는 무슨 뜻이에요?',
  ex2 = 'What does "fluent" mean?', ex2_ko = '"fluent"는 무슨 뜻이에요?',
  ex3 = 'What does that symbol mean?', ex3_ko = '저 기호는 무슨 뜻이에요?',
  ex4 = 'What does "assignment" mean?', ex4_ko = '"assignment"는 무슨 뜻이에요?',
  ex5 = 'What does that abbreviation mean?', ex5_ko = '그 약어는 무슨 뜻이에요?'
WHERE id = 's_education_A1_05';

UPDATE sentences SET
  ex1 = 'I don''t understand this question.', ex1_ko = '이 질문을 이해하지 못하겠어요.',
  ex2 = 'I don''t understand this diagram.', ex2_ko = '이 도표를 이해하지 못하겠어요.',
  ex3 = 'I don''t understand this rule.', ex3_ko = '이 규칙을 이해하지 못하겠어요.',
  ex4 = 'I don''t understand this sentence.', ex4_ko = '이 문장을 이해하지 못하겠어요.',
  ex5 = 'I don''t understand this exercise.', ex5_ko = '이 연습 문제를 이해하지 못하겠어요.'
WHERE id = 's_education_A1_06';

UPDATE sentences SET
  ex1 = 'We have a test tomorrow.', ex1_ko = '내일 시험이 있어요.',
  ex2 = 'We have a class tomorrow.', ex2_ko = '내일 수업이 있어요.',
  ex3 = 'We have a presentation tomorrow.', ex3_ko = '내일 발표가 있어요.',
  ex4 = 'We have a quiz tomorrow.', ex4_ko = '내일 퀴즈가 있어요.',
  ex5 = 'We have a meeting tomorrow.', ex5_ko = '내일 회의가 있어요.'
WHERE id = 's_education_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I need to study for the exam this weekend.', ex1_ko = '이번 주말에 시험 공부를 해야 해요.',
  ex2 = 'I need to prepare for the presentation this weekend.', ex2_ko = '이번 주말에 발표 준비를 해야 해요.',
  ex3 = 'I need to review my notes this weekend.', ex3_ko = '이번 주말에 노트를 복습해야 해요.',
  ex4 = 'I need to finish my homework this weekend.', ex4_ko = '이번 주말에 숙제를 끝내야 해요.',
  ex5 = 'I need to read three chapters this weekend.', ex5_ko = '이번 주말에 세 챕터를 읽어야 해요.'
WHERE id = 's_education_A2_01';

UPDATE sentences SET
  ex1 = 'Did you pass the test? I got a B.', ex1_ko = '시험 통과했어요? 저는 B 받았어요.',
  ex2 = 'Did you finish the assignment? I got it done last night.', ex2_ko = '과제 끝냈어요? 저는 어젯밤에 끝냈어요.',
  ex3 = 'Did you go to the lecture? I missed it.', ex3_ko = '강의에 갔어요? 저는 놓쳤어요.',
  ex4 = 'Did you understand the homework? I found it difficult.', ex4_ko = '숙제 이해했어요? 저는 어렵더라고요.',
  ex5 = 'Did you take notes? I forgot my notebook.', ex5_ko = '노트 필기했어요? 저는 공책을 잊고 왔어요.'
WHERE id = 's_education_A2_02';

UPDATE sentences SET
  ex1 = 'I''m really struggling with this subject.', ex1_ko = '이 과목이 정말 어려워요.',
  ex2 = 'I''m really struggling with this grammar rule.', ex2_ko = '이 문법 규칙이 정말 어려워요.',
  ex3 = 'I''m really struggling with the reading list.', ex3_ko = '독서 목록이 정말 버거워요.',
  ex4 = 'I''m really struggling with the workload this term.', ex4_ko = '이번 학기 학업 부담이 정말 힘들어요.',
  ex5 = 'I''m really struggling with my dissertation topic.', ex5_ko = '논문 주제가 정말 막막해요.'
WHERE id = 's_education_A2_03';

UPDATE sentences SET
  ex1 = 'What chapter is the exam on?', ex1_ko = '시험 범위가 몇 챕터예요?',
  ex2 = 'What topic is the quiz on?', ex2_ko = '퀴즈 주제가 뭐예요?',
  ex3 = 'What unit is the test covering?', ex3_ko = '시험이 몇 단원까지 나와요?',
  ex4 = 'What material is included in the final?', ex4_ko = '기말고사 범위에 어떤 내용이 포함돼요?',
  ex5 = 'What part of the textbook should we focus on?', ex5_ko = '교재의 어느 부분에 집중해야 해요?'
WHERE id = 's_education_A2_04';

UPDATE sentences SET
  ex1 = 'The homework is due on Friday.', ex1_ko = '숙제 마감이 금요일이에요.',
  ex2 = 'The essay is due next Monday.', ex2_ko = '에세이 마감이 다음 월요일이에요.',
  ex3 = 'The project is due at the end of the month.', ex3_ko = '프로젝트 마감이 이달 말이에요.',
  ex4 = 'The report is due by five o''clock today.', ex4_ko = '보고서 마감이 오늘 5시예요.',
  ex5 = 'The reading response is due before class.', ex5_ko = '읽기 반응 과제 마감이 수업 전이에요.'
WHERE id = 's_education_A2_05';

UPDATE sentences SET
  ex1 = 'I failed the quiz, so I need to try harder.', ex1_ko = '퀴즈에서 떨어져서 더 열심히 해야 해요.',
  ex2 = 'I missed the deadline, so I need to speak to my tutor.', ex2_ko = '마감을 놓쳐서 지도 교수님께 말씀드려야 해요.',
  ex3 = 'I got a low grade, so I need to improve my writing.', ex3_ko = '낮은 점수를 받아서 글쓰기를 향상시켜야 해요.',
  ex4 = 'I didn''t finish the reading, so I need to catch up.', ex4_ko = '읽기를 다 못 해서 따라잡아야 해요.',
  ex5 = 'I made a lot of mistakes, so I need to review the basics.', ex5_ko = '실수를 많이 해서 기초를 복습해야 해요.'
WHERE id = 's_education_A2_06';

UPDATE sentences SET
  ex1 = 'Can I borrow your notes from yesterday?', ex1_ko = '어제 노트 빌려도 될까요?',
  ex2 = 'Can I borrow your dictionary for a moment?', ex2_ko = '잠깐 사전 빌려도 될까요?',
  ex3 = 'Can I borrow your textbook until tomorrow?', ex3_ko = '내일까지 교재 빌려도 될까요?',
  ex4 = 'Can I borrow your pen for a second?', ex4_ko = '잠깐 펜 빌려도 될까요?',
  ex5 = 'Can I borrow your charger after class?', ex5_ko = '수업 끝나고 충전기 빌려도 될까요?'
WHERE id = 's_education_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I''m having trouble understanding the main argument in this chapter.', ex1_ko = '이 챕터의 주요 논지를 이해하는 데 어려움을 겪고 있어요.',
  ex2 = 'I''m having trouble following the structure of the lecture.', ex2_ko = '강의의 구조를 따라가는 데 어려움을 겪고 있어요.',
  ex3 = 'I''m having trouble analysing the data for my project.', ex3_ko = '프로젝트 데이터를 분석하는 데 어려움을 겪고 있어요.',
  ex4 = 'I''m having trouble keeping up with the reading each week.', ex4_ko = '매주 읽기 과제를 따라가는 데 어려움을 겪고 있어요.',
  ex5 = 'I''m having trouble organising my ideas for the essay.', ex5_ko = '에세이를 위해 아이디어를 정리하는 데 어려움을 겪고 있어요.'
WHERE id = 's_education_B1_01';

UPDATE sentences SET
  ex1 = 'Could you explain that concept in more detail?', ex1_ko = '그 개념을 좀 더 자세히 설명해 주실 수 있어요?',
  ex2 = 'Could you clarify the distinction between those two terms?', ex2_ko = '그 두 용어의 차이를 명확히 설명해 주실 수 있어요?',
  ex3 = 'Could you give an example of that in practice?', ex3_ko = '실제 사례를 하나 들어 주실 수 있어요?',
  ex4 = 'Could you go over the feedback on my essay?', ex4_ko = '제 에세이 피드백을 검토해 주실 수 있어요?',
  ex5 = 'Could you recommend any further reading on this topic?', ex5_ko = '이 주제에 관해 더 읽을 만한 자료를 추천해 주실 수 있어요?'
WHERE id = 's_education_B1_02';

UPDATE sentences SET
  ex1 = 'My assignment is to write an essay on climate change.', ex1_ko = '과제는 기후 변화에 관한 에세이를 쓰는 거예요.',
  ex2 = 'My assignment is to analyse a case study in marketing.', ex2_ko = '과제는 마케팅 사례 연구를 분석하는 거예요.',
  ex3 = 'My assignment is to present research findings to the class.', ex3_ko = '과제는 수업에서 연구 결과를 발표하는 거예요.',
  ex4 = 'My assignment is to compare two literary texts.', ex4_ko = '과제는 두 편의 문학 텍스트를 비교하는 거예요.',
  ex5 = 'My assignment is to design a lesson plan for a mixed-ability class.', ex5_ko = '과제는 다양한 수준의 학급을 위한 수업 계획안을 설계하는 거예요.'
WHERE id = 's_education_B1_03';

UPDATE sentences SET
  ex1 = 'In my presentation, I will cover three main points.', ex1_ko = '제 발표에서는 세 가지 주요 포인트를 다룰 거예요.',
  ex2 = 'In my presentation, I will discuss the causes and effects.', ex2_ko = '제 발표에서는 원인과 결과를 다룰 거예요.',
  ex3 = 'In my presentation, I will argue for a change in policy.', ex3_ko = '제 발표에서는 정책 변화를 주장할 거예요.',
  ex4 = 'In my presentation, I will compare two different approaches.', ex4_ko = '제 발표에서는 두 가지 다른 접근법을 비교할 거예요.',
  ex5 = 'In my presentation, I will summarise the key findings.', ex5_ko = '제 발표에서는 주요 연구 결과를 요약할 거예요.'
WHERE id = 's_education_B1_04';

UPDATE sentences SET
  ex1 = 'I''d like to apply for the scholarship — could you write me a reference?', ex1_ko = '장학금에 지원하고 싶은데, 추천서를 써 주실 수 있어요?',
  ex2 = 'I''d like to apply for the exchange programme — could you advise me?', ex2_ko = '교환학생 프로그램에 지원하고 싶은데, 조언해 주실 수 있어요?',
  ex3 = 'I''d like to join the research group — could you tell me how?', ex3_ko = '연구 그룹에 참여하고 싶은데, 방법을 알려 주실 수 있어요?',
  ex4 = 'I''d like to extend my submission deadline — could you help?', ex4_ko = '제출 기한을 연장하고 싶은데, 도움을 받을 수 있어요?',
  ex5 = 'I''d like to switch tutorial groups — could you approve that?', ex5_ko = '튜토리얼 그룹을 바꾸고 싶은데, 승인해 주실 수 있어요?'
WHERE id = 's_education_B1_05';

UPDATE sentences SET
  ex1 = 'To sum up, the evidence suggests that practice improves fluency.', ex1_ko = '요약하면, 증거는 연습이 유창성을 향상시킨다는 것을 시사해요.',
  ex2 = 'To sum up, the data indicate a clear link between sleep and performance.', ex2_ko = '요약하면, 데이터는 수면과 성과 사이의 명확한 연관성을 나타내요.',
  ex3 = 'To sum up, we have examined three competing theories.', ex3_ko = '요약하면, 우리는 세 가지 경쟁 이론을 살펴봤어요.',
  ex4 = 'To sum up, the findings have significant implications for policy.', ex4_ko = '요약하면, 연구 결과는 정책에 중요한 시사점을 제공해요.',
  ex5 = 'To sum up, further research is needed before firm conclusions can be drawn.', ex5_ko = '요약하면, 확실한 결론을 내리기 전에 추가 연구가 필요해요.'
WHERE id = 's_education_B1_06';

UPDATE sentences SET
  ex1 = 'I applied for a scholarship and I''ve been shortlisted.', ex1_ko = '장학금에 지원했는데 후보에 올랐어요.',
  ex2 = 'I applied for the MA programme and I''ve been offered a place.', ex2_ko = '석사 과정에 지원했는데 합격 통보를 받았어요.',
  ex3 = 'I applied for the internship and I''ve got an interview.', ex3_ko = '인턴십에 지원했는데 면접 기회를 얻었어요.',
  ex4 = 'I applied for the grant and I''m waiting to hear back.', ex4_ko = '보조금에 지원했는데 결과를 기다리고 있어요.',
  ex5 = 'I applied for an extension and it was approved.', ex5_ko = '기한 연장을 신청했는데 승인됐어요.'
WHERE id = 's_education_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I see your point, but I''d argue the evidence doesn''t fully support it.', ex1_ko = '요점은 알겠지만, 증거가 그것을 충분히 뒷받침하지 않는다고 주장하고 싶어요.',
  ex2 = 'I see your point, but I''d contend the methodology is flawed.', ex2_ko = '요점은 알겠지만, 방법론에 결함이 있다고 주장하고 싶어요.',
  ex3 = 'I see your point, but I''d suggest the counterevidence is stronger.', ex3_ko = '요점은 알겠지만, 반론 증거가 더 강력하다고 말씀드리고 싶어요.',
  ex4 = 'I see your point, but I''d argue the comparison is not quite valid.', ex4_ko = '요점은 알겠지만, 비교가 완전히 타당하지는 않다고 주장하고 싶어요.',
  ex5 = 'I see your point, but I''d question whether the sample is representative.', ex5_ko = '요점은 알겠지만, 표본이 대표성을 갖는지 의문을 제기하고 싶어요.'
WHERE id = 's_education_B2_01';

UPDATE sentences SET
  ex1 = 'The methodology used in this study has some significant limitations.', ex1_ko = '이 연구에서 사용된 방법론에는 몇 가지 중요한 한계가 있어요.',
  ex2 = 'The sample used in this study has some significant limitations.', ex2_ko = '이 연구에서 사용된 표본에는 몇 가지 중요한 한계가 있어요.',
  ex3 = 'The theoretical framework used in this study has some significant limitations.', ex3_ko = '이 연구에서 사용된 이론적 틀에는 몇 가지 중요한 한계가 있어요.',
  ex4 = 'The data collection process used in this study has some significant limitations.', ex4_ko = '이 연구에서 사용된 데이터 수집 과정에는 몇 가지 중요한 한계가 있어요.',
  ex5 = 'The analytical approach used in this study has some significant limitations.', ex5_ko = '이 연구에서 사용된 분석 접근법에는 몇 가지 중요한 한계가 있어요.'
WHERE id = 's_education_B2_02';

UPDATE sentences SET
  ex1 = 'Could you elaborate on how you operationalised that variable?', ex1_ko = '그 변수를 어떻게 조작화했는지 자세히 설명해 주실 수 있어요?',
  ex2 = 'Could you elaborate on what you mean by "critical engagement"?', ex2_ko = '"비판적 참여"라는 것이 어떤 의미인지 자세히 설명해 주실 수 있어요?',
  ex3 = 'Could you elaborate on the selection criteria for your participants?', ex3_ko = '참여자 선정 기준에 대해 자세히 설명해 주실 수 있어요?',
  ex4 = 'Could you elaborate on the implications of these findings?', ex4_ko = '이 연구 결과의 시사점에 대해 자세히 설명해 주실 수 있어요?',
  ex5 = 'Could you elaborate on why you chose a qualitative rather than quantitative approach?', ex5_ko = '양적 접근법 대신 질적 접근법을 선택한 이유를 자세히 설명해 주실 수 있어요?'
WHERE id = 's_education_B2_03';

UPDATE sentences SET
  ex1 = 'Building on the previous speaker''s point, I''d like to add...', ex1_ko = '앞 분의 요점을 바탕으로, 추가하고 싶은 말씀이 있어요...',
  ex2 = 'Building on what was discussed earlier, I''d like to suggest...', ex2_ko = '앞서 논의된 내용을 바탕으로, 제안하고 싶은 것이 있어요...',
  ex3 = 'Building on the evidence presented, we might also consider...', ex3_ko = '제시된 증거를 바탕으로, 다음도 고려해볼 수 있을 것 같아요...',
  ex4 = 'Building on this framework, I would argue that...', ex4_ko = '이 틀을 바탕으로, 저는 다음과 같이 주장하고 싶어요...',
  ex5 = 'Building on the findings of the first study, this research aims to...', ex5_ko = '첫 번째 연구의 결과를 바탕으로, 이 연구는 다음을 목표로 해요...'
WHERE id = 's_education_B2_04';

UPDATE sentences SET
  ex1 = 'The empirical evidence does not fully support this hypothesis.', ex1_ko = '경험적 증거가 이 가설을 완전히 뒷받침하지는 않아요.',
  ex2 = 'The empirical evidence suggests a more nuanced picture.', ex2_ko = '경험적 증거는 좀 더 복잡한 양상을 시사해요.',
  ex3 = 'The empirical evidence points to a significant correlation.', ex3_ko = '경험적 증거는 유의미한 상관관계를 가리켜요.',
  ex4 = 'The empirical evidence is, at best, inconclusive on this point.', ex4_ko = '이 점에 대한 경험적 증거는 기껏해야 결정적이지 않아요.',
  ex5 = 'The empirical evidence challenges long-held theoretical assumptions.', ex5_ko = '경험적 증거는 오래된 이론적 전제에 도전해요.'
WHERE id = 's_education_B2_05';

UPDATE sentences SET
  ex1 = 'This dissertation critically examines the relationship between pedagogy and identity.', ex1_ko = '이 논문은 교육학과 정체성의 관계를 비판적으로 검토해요.',
  ex2 = 'This dissertation critically examines the effects of standardised testing on motivation.', ex2_ko = '이 논문은 표준화 시험이 동기 부여에 미치는 영향을 비판적으로 검토해요.',
  ex3 = 'This dissertation critically examines the role of feedback in second language writing.', ex3_ko = '이 논문은 제2언어 글쓰기에서 피드백의 역할을 비판적으로 검토해요.',
  ex4 = 'This dissertation critically examines the assumptions underlying communicative language teaching.', ex4_ko = '이 논문은 의사소통 언어 교수법의 기저에 있는 전제를 비판적으로 검토해요.',
  ex5 = 'This dissertation critically examines inclusion policy in mainstream secondary education.', ex5_ko = '이 논문은 일반 중등 교육에서의 통합 교육 정책을 비판적으로 검토해요.'
WHERE id = 's_education_B2_06';

UPDATE sentences SET
  ex1 = 'I would contend that peer learning is as effective as direct instruction.', ex1_ko = '동료 학습이 직접 교수만큼 효과적이라고 주장하고 싶어요.',
  ex2 = 'I would contend that formative assessment drives learning more than summative.', ex2_ko = '형성 평가가 총괄 평가보다 학습을 더 이끈다고 주장하고 싶어요.',
  ex3 = 'I would contend that motivation is a stronger predictor of success than aptitude.', ex3_ko = '동기 부여가 적성보다 성공의 더 강력한 예측 변수라고 주장하고 싶어요.',
  ex4 = 'I would contend that the current curriculum fails to develop critical thinking.', ex4_ko = '현재 교육과정이 비판적 사고를 함양하는 데 실패하고 있다고 주장하고 싶어요.',
  ex5 = 'I would contend that teacher autonomy is essential to educational quality.', ex5_ko = '교사 자율성이 교육의 질에 필수적이라고 주장하고 싶어요.'
WHERE id = 's_education_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'This study seeks to interrogate the epistemological assumptions underlying conventional pedagogy.', ex1_ko = '이 연구는 기존 교육학의 기저에 있는 인식론적 전제를 비판적으로 검토하고자 해요.',
  ex2 = 'This study seeks to interrogate the normative assumptions embedded in standardised assessment.', ex2_ko = '이 연구는 표준화 평가에 내재된 규범적 전제를 비판적으로 검토하고자 해요.',
  ex3 = 'This study seeks to interrogate the power dynamics inherent in teacher-student relationships.', ex3_ko = '이 연구는 교사-학생 관계에 내재된 권력 역학을 비판적으로 검토하고자 해요.',
  ex4 = 'This study seeks to interrogate the ideological underpinnings of national curriculum frameworks.', ex4_ko = '이 연구는 국가 교육과정 틀의 이데올로기적 토대를 비판적으로 검토하고자 해요.',
  ex5 = 'This study seeks to interrogate how neoliberal discourse reshapes the purpose of higher education.', ex5_ko = '이 연구는 신자유주의 담론이 고등 교육의 목적을 어떻게 재편하는지를 비판적으로 검토하고자 해요.'
WHERE id = 's_education_C1_01';

UPDATE sentences SET
  ex1 = 'The conceptual framework draws on constructivist and sociocultural theories of learning.', ex1_ko = '개념적 틀은 구성주의 및 사회문화적 학습 이론을 기반으로 해요.',
  ex2 = 'The conceptual framework draws on critical race theory and intersectionality.', ex2_ko = '개념적 틀은 비판적 인종 이론과 교차성을 기반으로 해요.',
  ex3 = 'The conceptual framework draws on postcolonial and feminist scholarship.', ex3_ko = '개념적 틀은 탈식민주의 및 페미니즘 학문을 기반으로 해요.',
  ex4 = 'The conceptual framework draws on systemic functional linguistics and multimodality theory.', ex4_ko = '개념적 틀은 체계 기능 언어학과 다중 양식성 이론을 기반으로 해요.',
  ex5 = 'The conceptual framework draws on complexity theory and ecological models of language learning.', ex5_ko = '개념적 틀은 복잡성 이론과 언어 학습의 생태학적 모델을 기반으로 해요.'
WHERE id = 's_education_C1_02';

UPDATE sentences SET
  ex1 = 'The findings substantiate the hypothesis that scaffolding enhances learner autonomy.', ex1_ko = '연구 결과는 비계 설정이 학습자 자율성을 향상시킨다는 가설을 입증해요.',
  ex2 = 'The findings substantiate the claim that formative feedback reduces anxiety.', ex2_ko = '연구 결과는 형성적 피드백이 불안을 줄인다는 주장을 입증해요.',
  ex3 = 'The findings substantiate the view that collaborative tasks promote deeper processing.', ex3_ko = '연구 결과는 협력 과제가 더 깊은 처리를 촉진한다는 견해를 입증해요.',
  ex4 = 'The findings substantiate the argument that class size affects student engagement.', ex4_ko = '연구 결과는 학급 규모가 학생 참여도에 영향을 미친다는 주장을 입증해요.',
  ex5 = 'The findings substantiate the proposition that motivation mediates the effect of instruction.', ex5_ko = '연구 결과는 동기 부여가 교수법의 효과를 매개한다는 명제를 입증해요.'
WHERE id = 's_education_C1_03';

UPDATE sentences SET
  ex1 = 'It is worth noting that the sample size limits the generalisability of these findings.', ex1_ko = '표본 크기가 이 연구 결과의 일반화 가능성을 제한한다는 점을 주목할 필요가 있어요.',
  ex2 = 'It is worth noting that these data were collected in a single institutional context.', ex2_ko = '이 데이터가 단일 기관 맥락에서 수집됐다는 점을 주목할 필요가 있어요.',
  ex3 = 'It is worth noting that the theoretical framework may not translate across cultures.', ex3_ko = '이 이론적 틀이 문화 간에 동일하게 적용되지 않을 수도 있다는 점을 주목할 필요가 있어요.',
  ex4 = 'It is worth noting that the study was conducted during an exceptional period.', ex4_ko = '연구가 예외적인 시기에 진행됐다는 점을 주목할 필요가 있어요.',
  ex5 = 'It is worth noting that participant self-report data carry inherent limitations.', ex5_ko = '참여자 자기 보고 데이터에는 본질적인 한계가 있다는 점을 주목할 필요가 있어요.'
WHERE id = 's_education_C1_04';

UPDATE sentences SET
  ex1 = 'Reflexivity demands that the researcher acknowledge their own positionality.', ex1_ko = '반성성은 연구자가 자신의 위치성을 인정할 것을 요구해요.',
  ex2 = 'Reflexivity demands that the researcher examine how their background shapes interpretation.', ex2_ko = '반성성은 연구자가 자신의 배경이 해석에 어떻게 영향을 미치는지 살펴볼 것을 요구해요.',
  ex3 = 'Reflexivity demands that the researcher remain open to disconfirming evidence.', ex3_ko = '반성성은 연구자가 반증 증거에 열린 태도를 유지할 것을 요구해요.',
  ex4 = 'Reflexivity demands that the researcher document their decisions and uncertainties.', ex4_ko = '반성성은 연구자가 자신의 결정과 불확실성을 기록할 것을 요구해요.',
  ex5 = 'Reflexivity demands that the researcher question the power relations embedded in the research design.', ex5_ko = '반성성은 연구자가 연구 설계에 내재된 권력 관계에 의문을 제기할 것을 요구해요.'
WHERE id = 's_education_C1_05';

UPDATE sentences SET
  ex1 = 'The literature review reveals a significant lacuna in studies on postgraduate wellbeing.', ex1_ko = '문헌 검토는 대학원생 웰빙에 관한 연구에서 중요한 공백을 드러내요.',
  ex2 = 'The literature review reveals a significant lacuna in studies on multilingual assessment.', ex2_ko = '문헌 검토는 다언어 평가에 관한 연구에서 중요한 공백을 드러내요.',
  ex3 = 'The literature review reveals a significant lacuna in studies on informal learning environments.', ex3_ko = '문헌 검토는 비형식 학습 환경에 관한 연구에서 중요한 공백을 드러내요.',
  ex4 = 'The literature review reveals a significant lacuna in longitudinal studies of teacher attrition.', ex4_ko = '문헌 검토는 교사 이직에 관한 종단 연구에서 중요한 공백을 드러내요.',
  ex5 = 'The literature review reveals a significant lacuna in research on refugee learners in higher education.', ex5_ko = '문헌 검토는 고등 교육 내 난민 학습자 연구에서 중요한 공백을 드러내요.'
WHERE id = 's_education_C1_06';

UPDATE sentences SET
  ex1 = 'This paper posits that critical pedagogy must account for the socioeconomic context of learners.', ex1_ko = '이 논문은 비판 교육학이 학습자의 사회경제적 맥락을 고려해야 한다고 주장해요.',
  ex2 = 'This paper posits that identity negotiation is central to second language acquisition.', ex2_ko = '이 논문은 정체성 협상이 제2언어 습득의 핵심이라고 주장해요.',
  ex3 = 'This paper posits that digital literacy cannot be reduced to technical proficiency.', ex3_ko = '이 논문은 디지털 리터러시가 기술적 숙달로 환원될 수 없다고 주장해요.',
  ex4 = 'This paper posits that the assessment regime actively shapes what counts as learning.', ex4_ko = '이 논문은 평가 체제가 학습으로 인정받는 것을 적극적으로 형성한다고 주장해요.',
  ex5 = 'This paper posits that teacher professional development must be context-sensitive and sustained.', ex5_ko = '이 논문은 교사 전문성 개발이 맥락에 민감하고 지속적이어야 한다고 주장해요.'
WHERE id = 's_education_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Derrida''s critique of logocentrism disrupts the assumed primacy of speech over writing in Western epistemology.', ex1_ko = '데리다의 로고중심주의 비판은 서양 인식론에서 글쓰기에 대한 말하기의 우위성이라는 전제를 교란해요.',
  ex2 = 'Derrida''s critique of presence disrupts the assumed transparency of language in structuralist thought.', ex2_ko = '데리다의 현존 비판은 구조주의 사상에서 언어의 투명성이라는 전제를 교란해요.',
  ex3 = 'Butler''s critique of gender performativity disrupts the assumed naturalness of binary sex categories.', ex3_ko = '버틀러의 젠더 수행성 비판은 이항적 성 범주의 자연스러움이라는 전제를 교란해요.',
  ex4 = 'Foucault''s critique of the subject disrupts the assumed coherence of the sovereign self in liberal thought.', ex4_ko = '푸코의 주체 비판은 자유주의 사상에서 주권적 자아의 일관성이라는 전제를 교란해요.',
  ex5 = 'Said''s critique of Orientalism disrupts the assumed objectivity of Western scholarly representations of the East.', ex5_ko = '사이드의 오리엔탈리즘 비판은 동양에 대한 서양 학술적 표상의 객관성이라는 전제를 교란해요.'
WHERE id = 's_education_C2_01';

UPDATE sentences SET
  ex1 = 'Foucault''s genealogical method reveals how educational discourse constructs subject positions.', ex1_ko = '푸코의 계보학적 방법은 교육 담론이 어떻게 주체 위치를 구성하는지를 드러내요.',
  ex2 = 'Foucault''s genealogical method reveals how medical discourse pathologises non-normative bodies.', ex2_ko = '푸코의 계보학적 방법은 의학 담론이 어떻게 비규범적 신체를 병리화하는지를 드러내요.',
  ex3 = 'Foucault''s genealogical method reveals how disciplinary mechanisms produce docile subjects.', ex3_ko = '푸코의 계보학적 방법은 규율 메커니즘이 어떻게 순종적 주체를 생산하는지를 드러내요.',
  ex4 = 'Foucault''s genealogical method reveals how legal discourse normalises certain conceptions of justice.', ex4_ko = '푸코의 계보학적 방법은 법적 담론이 어떻게 특정 정의 개념을 정상화하는지를 드러내요.',
  ex5 = 'Foucault''s genealogical method reveals how psychological discourse governs individual conduct.', ex5_ko = '푸코의 계보학적 방법은 심리학적 담론이 어떻게 개인의 행동을 지배하는지를 드러내요.'
WHERE id = 's_education_C2_02';

UPDATE sentences SET
  ex1 = 'The falsifiability criterion challenges normative assumptions embedded in positivist research paradigms.', ex1_ko = '반증 가능성 기준은 실증주의 연구 패러다임에 내재된 규범적 전제에 도전해요.',
  ex2 = 'The falsifiability criterion challenges the legitimacy of purely interpretive knowledge claims.', ex2_ko = '반증 가능성 기준은 순수하게 해석적인 지식 주장의 정당성에 도전해요.',
  ex3 = 'The falsifiability criterion challenges psychoanalytic theory''s status as a scientific enterprise.', ex3_ko = '반증 가능성 기준은 과학적 사업으로서의 정신분석 이론의 지위에 도전해요.',
  ex4 = 'The falsifiability criterion challenges the credibility of grand narratives in social science.', ex4_ko = '반증 가능성 기준은 사회과학의 거대 서사의 신뢰성에 도전해요.',
  ex5 = 'The falsifiability criterion challenges researchers to make their assumptions transparent and testable.', ex5_ko = '반증 가능성 기준은 연구자들이 자신의 전제를 투명하고 검증 가능하게 만들 것을 요구해요.'
WHERE id = 's_education_C2_03';

UPDATE sentences SET
  ex1 = 'Hegemonic discourse in curricula reproduces socioeconomic inequalities through the hidden curriculum.', ex1_ko = '교육과정의 헤게모니적 담론은 잠재적 교육과정을 통해 사회경제적 불평등을 재생산해요.',
  ex2 = 'Hegemonic discourse in textbooks normalises Eurocentric perspectives as universal knowledge.', ex2_ko = '교과서의 헤게모니적 담론은 유럽 중심적 관점을 보편적 지식으로 정상화해요.',
  ex3 = 'Hegemonic discourse in assessment practices privileges certain cultural and linguistic repertoires.', ex3_ko = '평가 관행의 헤게모니적 담론은 특정 문화적, 언어적 레퍼토리를 특권화해요.',
  ex4 = 'Hegemonic discourse in academic publishing marginalises non-anglophone scholarly voices.', ex4_ko = '학술 출판의 헤게모니적 담론은 비영어권 학술 목소리를 주변화해요.',
  ex5 = 'Hegemonic discourse in educational policy frames neoliberal reforms as inevitable and neutral.', ex5_ko = '교육 정책의 헤게모니적 담론은 신자유주의적 개혁을 불가피하고 중립적인 것으로 규정해요.'
WHERE id = 's_education_C2_04';

UPDATE sentences SET
  ex1 = 'Phenomenological inquiry foregrounds the lived experience of learners as the primary unit of analysis.', ex1_ko = '현상학적 탐구는 학습자의 살아있는 경험을 분석의 주요 단위로 부각시켜요.',
  ex2 = 'Phenomenological inquiry foregrounds the embodied dimensions of knowing that cognitivism neglects.', ex2_ko = '현상학적 탐구는 인지주의가 외면하는 앎의 신체적 차원을 부각시켜요.',
  ex3 = 'Phenomenological inquiry foregrounds the temporality and situatedness of human understanding.', ex3_ko = '현상학적 탐구는 인간 이해의 시간성과 상황 의존성을 부각시켜요.',
  ex4 = 'Phenomenological inquiry foregrounds the intersubjective structures that underpin shared meaning.', ex4_ko = '현상학적 탐구는 공유된 의미를 뒷받침하는 상호주관적 구조를 부각시켜요.',
  ex5 = 'Phenomenological inquiry foregrounds the role of affect in shaping the educational encounter.', ex5_ko = '현상학적 탐구는 교육적 만남을 형성하는 데 있어 감정의 역할을 부각시켜요.'
WHERE id = 's_education_C2_05';

UPDATE sentences SET
  ex1 = 'Rhizomatic learning theory, as advanced by Cormier, resists arborescent models of knowledge transmission.', ex1_ko = '코미어가 발전시킨 리좀적 학습 이론은 지식 전달의 수목형 모델에 저항해요.',
  ex2 = 'Rhizomatic learning theory challenges the assumption that knowledge has a fixed origin or endpoint.', ex2_ko = '리좀적 학습 이론은 지식에 고정된 기원이나 종착점이 있다는 전제에 도전해요.',
  ex3 = 'Rhizomatic learning theory positions the curriculum as a community-negotiated, ever-shifting enterprise.', ex3_ko = '리좀적 학습 이론은 교육과정을 공동체가 협상하는 항상 변화하는 과업으로 위치 지어요.',
  ex4 = 'Rhizomatic learning theory valorises horizontal connections over hierarchical progressions of knowledge.', ex4_ko = '리좀적 학습 이론은 지식의 위계적 발전보다 수평적 연결을 더 가치 있게 여겨요.',
  ex5 = 'Rhizomatic learning theory has informed open and connectivist approaches to digital pedagogy.', ex5_ko = '리좀적 학습 이론은 디지털 교육학의 열린 연결주의적 접근법에 영향을 주었어요.'
WHERE id = 's_education_C2_06';

UPDATE sentences SET
  ex1 = 'The praxis-oriented approach collapses the distinction between knowledge production and social transformation.', ex1_ko = '프락시스 지향적 접근법은 지식 생산과 사회 변혁 사이의 구분을 허물어요.',
  ex2 = 'The praxis-oriented approach requires researchers to be accountable to the communities they study.', ex2_ko = '프락시스 지향적 접근법은 연구자들이 연구 대상 공동체에 책임을 져야 한다고 요구해요.',
  ex3 = 'The praxis-oriented approach treats participants as co-producers of knowledge, not merely as data sources.', ex3_ko = '프락시스 지향적 접근법은 참여자들을 단순한 데이터 출처가 아니라 지식의 공동 생산자로 대해요.',
  ex4 = 'The praxis-oriented approach renders visible the political dimensions of educational research.', ex4_ko = '프락시스 지향적 접근법은 교육 연구의 정치적 차원을 가시화해요.',
  ex5 = 'The praxis-oriented approach demands that scholars reflect critically on the uses and effects of their work.', ex5_ko = '프락시스 지향적 접근법은 학자들이 자신의 작업의 용도와 효과에 대해 비판적으로 성찰할 것을 요구해요.'
WHERE id = 's_education_C2_07';
