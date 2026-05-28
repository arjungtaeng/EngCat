-- EngCat — Academic topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Can you explain that again, please?', ex1_ko = '다시 설명해 주실 수 있나요?',
  ex2 = 'Can you explain that again more slowly?', ex2_ko = '더 천천히 다시 설명해 주실 수 있나요?',
  ex3 = 'Can you explain that again with an example?', ex3_ko = '예시를 들어 다시 설명해 주실 수 있나요?',
  ex4 = 'Can you explain that again in simple words?', ex4_ko = '쉬운 말로 다시 설명해 주실 수 있나요?',
  ex5 = 'Can you explain that again from the beginning?', ex5_ko = '처음부터 다시 설명해 주실 수 있나요?'
WHERE id = 's_academic_A1_01';

UPDATE sentences SET
  ex1 = 'How do you spell that word in English?', ex1_ko = '영어로 그 단어의 철자가 어떻게 되나요?',
  ex2 = 'How do you spell that word, please?', ex2_ko = '그 단어의 철자가 어떻게 되나요?',
  ex3 = 'How do you spell that word — letter by letter?', ex3_ko = '한 글자씩 그 단어의 철자가 어떻게 되나요?',
  ex4 = 'How do you spell that word in your language?', ex4_ko = '당신의 언어로 그 단어의 철자가 어떻게 되나요?',
  ex5 = 'How do you spell that word correctly?', ex5_ko = '그 단어의 정확한 철자가 어떻게 되나요?'
WHERE id = 's_academic_A1_02';

UPDATE sentences SET
  ex1 = 'I don''t understand. Can you speak more slowly?', ex1_ko = '이해가 안 돼요. 더 천천히 말씀해 주실 수 있나요?',
  ex2 = 'Can you speak more slowly, please?', ex2_ko = '더 천천히 말씀해 주실 수 있나요?',
  ex3 = 'Can you speak more slowly and clearly?', ex3_ko = '더 천천히 그리고 명확하게 말씀해 주실 수 있나요?',
  ex4 = 'Can you speak more slowly for me?', ex4_ko = '저를 위해 더 천천히 말씀해 주실 수 있나요?',
  ex5 = 'Can you speak more slowly when explaining new words?', ex5_ko = '새 단어를 설명하실 때는 더 천천히 말씀해 주실 수 있나요?'
WHERE id = 's_academic_A1_03';

UPDATE sentences SET
  ex1 = 'What does this word mean in English?', ex1_ko = '영어로 이 단어는 무슨 의미인가요?',
  ex2 = 'What does this word mean in the sentence?', ex2_ko = '문장에서 이 단어는 무슨 의미인가요?',
  ex3 = 'What does this word mean exactly?', ex3_ko = '이 단어는 정확히 무슨 의미인가요?',
  ex4 = 'What does this word mean here?', ex4_ko = '여기서 이 단어는 무슨 의미인가요?',
  ex5 = 'What does this word mean in this context?', ex5_ko = '이 맥락에서 이 단어는 무슨 의미인가요?'
WHERE id = 's_academic_A1_04';

UPDATE sentences SET
  ex1 = 'May I ask a question about the homework?', ex1_ko = '숙제에 대해 질문해도 되나요?',
  ex2 = 'May I ask a question before we move on?', ex2_ko = '넘어가기 전에 질문해도 되나요?',
  ex3 = 'May I ask a question about chapter three?', ex3_ko = '3장에 대해 질문해도 되나요?',
  ex4 = 'May I ask a question quickly?', ex4_ko = '빠르게 질문해도 되나요?',
  ex5 = 'May I ask a question at the end?', ex5_ko = '마지막에 질문해도 되나요?'
WHERE id = 's_academic_A1_05';

UPDATE sentences SET
  ex1 = 'Is this the right answer to the problem?', ex1_ko = '이게 그 문제에 대한 맞는 답인가요?',
  ex2 = 'Is this the right answer for question five?', ex2_ko = '이게 5번 문제의 맞는 답인가요?',
  ex3 = 'Is this the right answer or did I make a mistake?', ex3_ko = '이게 맞는 답인가요, 아니면 제가 실수했나요?',
  ex4 = 'Is this the right answer for the test?', ex4_ko = '이게 시험의 맞는 답인가요?',
  ex5 = 'Is this the right answer in the textbook?', ex5_ko = '이게 교과서에 있는 맞는 답인가요?'
WHERE id = 's_academic_A1_06';

UPDATE sentences SET
  ex1 = 'Please write it on the board so we can see.', ex1_ko = '우리가 볼 수 있게 칠판에 적어 주세요.',
  ex2 = 'Please write it on the board clearly.', ex2_ko = '명확하게 칠판에 적어 주세요.',
  ex3 = 'Please write it on the board with the answer.', ex3_ko = '답과 함께 칠판에 적어 주세요.',
  ex4 = 'Please write it on the board in big letters.', ex4_ko = '큰 글씨로 칠판에 적어 주세요.',
  ex5 = 'Please write it on the board, the spelling is hard.', ex5_ko = '칠판에 적어 주세요, 철자가 어려워요.'
WHERE id = 's_academic_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Could you give me an example of that rule?', ex1_ko = '그 규칙의 예시를 들어 주실 수 있나요?',
  ex2 = 'Could you give me an example from real life?', ex2_ko = '실생활의 예시를 들어 주실 수 있나요?',
  ex3 = 'Could you give me an example in a sentence?', ex3_ko = '문장 속 예시를 들어 주실 수 있나요?',
  ex4 = 'Could you give me an example I can remember?', ex4_ko = '기억하기 쉬운 예시를 들어 주실 수 있나요?',
  ex5 = 'Could you give me an example for the homework?', ex5_ko = '숙제 예시를 들어 주실 수 있나요?'
WHERE id = 's_academic_A2_01';

UPDATE sentences SET
  ex1 = 'What is the main point of the lecture?', ex1_ko = '강의의 핵심 요점은 무엇인가요?',
  ex2 = 'What is the main point of chapter two?', ex2_ko = '2장의 핵심 요점은 무엇인가요?',
  ex3 = 'What is the main point of the author''s argument?', ex3_ko = '저자 주장의 핵심 요점은 무엇인가요?',
  ex4 = 'What is the main point of the conclusion?', ex4_ko = '결론의 핵심 요점은 무엇인가요?',
  ex5 = 'What is the main point of the study?', ex5_ko = '이 연구의 핵심 요점은 무엇인가요?'
WHERE id = 's_academic_A2_02';

UPDATE sentences SET
  ex1 = 'I think I understand, but let me try one more time.', ex1_ko = '이해한 것 같은데, 한 번 더 해볼게요.',
  ex2 = 'I think I understand, but please clarify.', ex2_ko = '이해한 것 같은데, 명확히 해 주세요.',
  ex3 = 'I think I understand the concept overall.', ex3_ko = '전체적으로 개념을 이해한 것 같아요.',
  ex4 = 'I think I understand now, thank you.', ex4_ko = '이제 이해한 것 같아요, 감사해요.',
  ex5 = 'I think I understand, but the second part is unclear.', ex5_ko = '이해한 것 같은데, 두 번째 부분이 명확하지 않아요.'
WHERE id = 's_academic_A2_03';

UPDATE sentences SET
  ex1 = 'Can you summarize what we discussed in class?', ex1_ko = '수업에서 토론한 것을 요약해 주실 수 있나요?',
  ex2 = 'Can you summarize what we read for next week?', ex2_ko = '다음 주를 위해 읽은 것을 요약해 주실 수 있나요?',
  ex3 = 'Can you summarize what we covered in the workshop?', ex3_ko = '워크숍에서 다룬 것을 요약해 주실 수 있나요?',
  ex4 = 'Can you summarize what we found in the lab?', ex4_ko = '실험실에서 발견한 것을 요약해 주실 수 있나요?',
  ex5 = 'Can you summarize what we agreed on?', ex5_ko = '우리가 합의한 것을 요약해 주실 수 있나요?'
WHERE id = 's_academic_A2_04';

UPDATE sentences SET
  ex1 = 'In my opinion, the experiment was successful.', ex1_ko = '제 의견으로는, 실험이 성공적이었어요.',
  ex2 = 'In my opinion, this theory has some weaknesses.', ex2_ko = '제 의견으로는, 이 이론에는 약점이 있어요.',
  ex3 = 'In my opinion, more research is needed.', ex3_ko = '제 의견으로는, 더 많은 연구가 필요해요.',
  ex4 = 'In my opinion, the author makes a strong case.', ex4_ko = '제 의견으로는, 저자가 강력한 주장을 펼쳐요.',
  ex5 = 'In my opinion, the data is clear.', ex5_ko = '제 의견으로는, 데이터가 명확해요.'
WHERE id = 's_academic_A2_05';

UPDATE sentences SET
  ex1 = 'Where did you find that information about the topic?', ex1_ko = '그 주제에 대한 정보를 어디서 찾으셨나요?',
  ex2 = 'Where did you find that information online?', ex2_ko = '그 정보를 온라인 어디서 찾으셨나요?',
  ex3 = 'Where did you find that information in the book?', ex3_ko = '책 어디서 그 정보를 찾으셨나요?',
  ex4 = 'Where did you find that information for your paper?', ex4_ko = '논문을 위해 그 정보를 어디서 찾으셨나요?',
  ex5 = 'Where did you find that information about the author?', ex5_ko = '저자에 대한 그 정보를 어디서 찾으셨나요?'
WHERE id = 's_academic_A2_06';

UPDATE sentences SET
  ex1 = 'Let''s discuss the article together in groups.', ex1_ko = '함께 그룹으로 이 글을 토론해 봐요.',
  ex2 = 'Let''s discuss the case study together.', ex2_ko = '함께 사례 연구를 토론해 봐요.',
  ex3 = 'Let''s discuss the assignment together briefly.', ex3_ko = '함께 과제를 잠깐 토론해 봐요.',
  ex4 = 'Let''s discuss the chapter together before class.', ex4_ko = '수업 전에 함께 그 챕터를 토론해 봐요.',
  ex5 = 'Let''s discuss the findings together.', ex5_ko = '함께 결과를 토론해 봐요.'
WHERE id = 's_academic_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The evidence suggests that the treatment is effective.', ex1_ko = '증거는 그 치료가 효과적이라는 것을 시사해요.',
  ex2 = 'The evidence suggests that climate change is accelerating.', ex2_ko = '증거는 기후 변화가 가속화되고 있다는 것을 시사해요.',
  ex3 = 'The evidence suggests that this model needs revision.', ex3_ko = '증거는 이 모델이 수정되어야 함을 시사해요.',
  ex4 = 'The evidence suggests that the assumption was wrong.', ex4_ko = '증거는 그 가정이 잘못됐다는 것을 시사해요.',
  ex5 = 'The evidence suggests that further investigation is required.', ex5_ko = '증거는 추가 조사가 필요함을 시사해요.'
WHERE id = 's_academic_B1_01';

UPDATE sentences SET
  ex1 = 'Based on the data, we can conclude that the intervention worked.', ex1_ko = '데이터를 바탕으로, 그 개입이 효과가 있었다고 결론 내릴 수 있어요.',
  ex2 = 'Based on the data, we can conclude that more samples are needed.', ex2_ko = '데이터를 바탕으로, 더 많은 표본이 필요하다고 결론 내릴 수 있어요.',
  ex3 = 'Based on the data, we can conclude that there is a strong correlation.', ex3_ko = '데이터를 바탕으로, 강한 상관관계가 있다고 결론 내릴 수 있어요.',
  ex4 = 'Based on the data, we can conclude that the hypothesis is supported.', ex4_ko = '데이터를 바탕으로, 그 가설이 지지된다고 결론 내릴 수 있어요.',
  ex5 = 'Based on the data, we can conclude that the trend will continue.', ex5_ko = '데이터를 바탕으로, 그 추세가 계속될 것이라고 결론 내릴 수 있어요.'
WHERE id = 's_academic_B1_02';

UPDATE sentences SET
  ex1 = 'This study aims to analyze the impact of sleep on learning.', ex1_ko = '이 연구는 수면이 학습에 미치는 영향을 분석하는 것을 목표로 해요.',
  ex2 = 'This study aims to analyze the effect of social media on teens.', ex2_ko = '이 연구는 소셜 미디어가 청소년에게 미치는 영향을 분석하는 것을 목표로 해요.',
  ex3 = 'This study aims to analyze the difference between groups.', ex3_ko = '이 연구는 그룹 간의 차이를 분석하는 것을 목표로 해요.',
  ex4 = 'This study aims to analyze the factors that influence retention.', ex4_ko = '이 연구는 보존에 영향을 미치는 요인을 분석하는 것을 목표로 해요.',
  ex5 = 'This study aims to analyze the relationship between income and health.', ex5_ko = '이 연구는 소득과 건강의 관계를 분석하는 것을 목표로 해요.'
WHERE id = 's_academic_B1_03';

UPDATE sentences SET
  ex1 = 'One limitation of this study is the lack of long-term follow-up.', ex1_ko = '이 연구의 한 가지 한계는 장기 추적이 없다는 점이에요.',
  ex2 = 'One limitation of this study is the geographic scope.', ex2_ko = '이 연구의 한 가지 한계는 지리적 범위예요.',
  ex3 = 'One limitation of this study is the self-reported data.', ex3_ko = '이 연구의 한 가지 한계는 자기 보고 데이터예요.',
  ex4 = 'One limitation of this study is the lack of a control group.', ex4_ko = '이 연구의 한 가지 한계는 대조군이 없다는 점이에요.',
  ex5 = 'One limitation of this study is the short observation period.', ex5_ko = '이 연구의 한 가지 한계는 짧은 관찰 기간이에요.'
WHERE id = 's_academic_B1_04';

UPDATE sentences SET
  ex1 = 'The results demonstrate a significant reduction in errors.', ex1_ko = '결과는 오류의 유의미한 감소를 보여줘요.',
  ex2 = 'The results demonstrate a significant change in behavior.', ex2_ko = '결과는 행동의 유의미한 변화를 보여줘요.',
  ex3 = 'The results demonstrate a significant gap between groups.', ex3_ko = '결과는 그룹 간 유의미한 격차를 보여줘요.',
  ex4 = 'The results demonstrate a significant impact on outcomes.', ex4_ko = '결과는 결과에 미치는 유의미한 영향을 보여줘요.',
  ex5 = 'The results demonstrate a significant increase in engagement.', ex5_ko = '결과는 참여도의 유의미한 증가를 보여줘요.'
WHERE id = 's_academic_B1_05';

UPDATE sentences SET
  ex1 = 'It is important to cite all your sources correctly to avoid plagiarism.', ex1_ko = '표절을 피하기 위해 모든 출처를 정확하게 인용하는 것이 중요해요.',
  ex2 = 'It is important to cite all your sources correctly in academic papers.', ex2_ko = '학술 논문에서 모든 출처를 정확하게 인용하는 것이 중요해요.',
  ex3 = 'It is important to cite all your sources correctly in the bibliography.', ex3_ko = '참고문헌에서 모든 출처를 정확하게 인용하는 것이 중요해요.',
  ex4 = 'It is important to cite all your sources correctly using APA format.', ex4_ko = 'APA 형식을 사용하여 모든 출처를 정확하게 인용하는 것이 중요해요.',
  ex5 = 'It is important to cite all your sources correctly to maintain credibility.', ex5_ko = '신뢰성 유지를 위해 모든 출처를 정확하게 인용하는 것이 중요해요.'
WHERE id = 's_academic_B1_06';

UPDATE sentences SET
  ex1 = 'We need to consider the ethical implications of the research.', ex1_ko = '연구의 윤리적 함의를 고려해야 해요.',
  ex2 = 'We need to consider the cultural context of the participants.', ex2_ko = '참여자들의 문화적 맥락을 고려해야 해요.',
  ex3 = 'We need to consider the financial constraints of the project.', ex3_ko = '프로젝트의 재정적 제약을 고려해야 해요.',
  ex4 = 'We need to consider the long-term effects of the policy.', ex4_ko = '정책의 장기적 효과를 고려해야 해요.',
  ex5 = 'We need to consider the practical challenges of implementation.', ex5_ko = '실행상의 실질적 어려움을 고려해야 해요.'
WHERE id = 's_academic_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'A longitudinal design was adopted to ensure both validity and reliability of the findings.', ex1_ko = '결과의 타당성과 신뢰도를 모두 확보하기 위해 종단 설계를 채택했어요.',
  ex2 = 'Cross-checking procedures were used to ensure both validity and reliability of the data.', ex2_ko = '데이터의 타당성과 신뢰도를 모두 확보하기 위해 교차 확인 절차를 사용했어요.',
  ex3 = 'A pilot test was conducted to ensure both validity and reliability of the instrument.', ex3_ko = '도구의 타당성과 신뢰도를 모두 확보하기 위해 사전 테스트를 실시했어요.',
  ex4 = 'Multiple coders were employed to ensure both validity and reliability of the analysis.', ex4_ko = '분석의 타당성과 신뢰도를 모두 확보하기 위해 여러 코더를 활용했어요.',
  ex5 = 'Standardized protocols were followed to ensure both validity and reliability throughout.', ex5_ko = '전 과정에서 타당성과 신뢰도를 모두 확보하기 위해 표준화된 프로토콜을 따랐어요.'
WHERE id = 's_academic_B2_01';

UPDATE sentences SET
  ex1 = 'The interview transcripts were analyzed using thematic analysis.', ex1_ko = '면담 녹취록은 주제별 분석을 사용하여 분석되었어요.',
  ex2 = 'The qualitative responses were analyzed using grounded theory.', ex2_ko = '질적 응답은 근거 이론을 사용하여 분석되었어요.',
  ex3 = 'The open-ended survey data were analyzed using content analysis.', ex3_ko = '개방형 설문 데이터는 내용 분석을 사용하여 분석되었어요.',
  ex4 = 'The narrative accounts were analyzed using discourse analysis.', ex4_ko = '서사적 진술은 담론 분석을 사용하여 분석되었어요.',
  ex5 = 'The focus group transcripts were analyzed using framework analysis.', ex5_ko = '포커스 그룹 녹취록은 프레임워크 분석을 사용하여 분석되었어요.'
WHERE id = 's_academic_B2_02';

UPDATE sentences SET
  ex1 = 'The findings must be interpreted within the cultural framework of the community studied.', ex1_ko = '연구 결과는 연구된 공동체의 문화적 틀 안에서 해석되어야 해요.',
  ex2 = 'The findings must be interpreted within the historical framework of the period.', ex2_ko = '연구 결과는 그 시대의 역사적 틀 안에서 해석되어야 해요.',
  ex3 = 'The findings must be interpreted within the conceptual framework proposed earlier.', ex3_ko = '연구 결과는 앞서 제시한 개념적 틀 안에서 해석되어야 해요.',
  ex4 = 'The findings must be interpreted within the methodological framework of the study.', ex4_ko = '연구 결과는 연구의 방법론적 틀 안에서 해석되어야 해요.',
  ex5 = 'The findings must be interpreted within the broader framework of the literature.', ex5_ko = '연구 결과는 문헌의 더 넓은 틀 안에서 해석되어야 해요.'
WHERE id = 's_academic_B2_03';

UPDATE sentences SET
  ex1 = 'Peer review ensures the quality and rigor of published academic work.', ex1_ko = '동료 심사는 게재된 학술 작업의 질과 엄격성을 보장해요.',
  ex2 = 'Peer review ensures the quality and accuracy of scientific claims.', ex2_ko = '동료 심사는 과학적 주장의 질과 정확성을 보장해요.',
  ex3 = 'Peer review ensures the quality and integrity of the research process.', ex3_ko = '동료 심사는 연구 과정의 질과 무결성을 보장해요.',
  ex4 = 'Peer review ensures the quality and transparency of methodology.', ex4_ko = '동료 심사는 방법론의 질과 투명성을 보장해요.',
  ex5 = 'Peer review ensures the quality and originality of submitted manuscripts.', ex5_ko = '동료 심사는 제출된 원고의 질과 독창성을 보장해요.'
WHERE id = 's_academic_B2_04';

UPDATE sentences SET
  ex1 = 'The study operationalized the concept of trust as response time to requests.', ex1_ko = '연구는 신뢰 개념을 요청에 대한 응답 시간으로 조작화했어요.',
  ex2 = 'The study operationalized the concept of wellbeing as a composite score.', ex2_ko = '연구는 행복 개념을 합성 점수로 조작화했어요.',
  ex3 = 'The study operationalized the concept of motivation as self-reported effort.', ex3_ko = '연구는 동기 개념을 자기 보고 노력으로 조작화했어요.',
  ex4 = 'The study operationalized the concept of fluency as words per minute.', ex4_ko = '연구는 유창성 개념을 분당 단어 수로 조작화했어요.',
  ex5 = 'The study operationalized the concept of social capital as network size.', ex5_ko = '연구는 사회적 자본 개념을 네트워크 규모로 조작화했어요.'
WHERE id = 's_academic_B2_05';

UPDATE sentences SET
  ex1 = 'The literature review revealed a significant gap in studies on rural populations.', ex1_ko = '문헌 검토는 농촌 인구에 대한 연구에서 상당한 공백을 드러냈어요.',
  ex2 = 'The literature review revealed a significant gap in longitudinal data.', ex2_ko = '문헌 검토는 종단 데이터에서 상당한 공백을 드러냈어요.',
  ex3 = 'The literature review revealed a significant gap regarding minority voices.', ex3_ko = '문헌 검토는 소수자 목소리와 관련하여 상당한 공백을 드러냈어요.',
  ex4 = 'The literature review revealed a significant gap in interdisciplinary work.', ex4_ko = '문헌 검토는 학제간 작업에서 상당한 공백을 드러냈어요.',
  ex5 = 'The literature review revealed a significant gap in post-pandemic research.', ex5_ko = '문헌 검토는 팬데믹 이후 연구에서 상당한 공백을 드러냈어요.'
WHERE id = 's_academic_B2_06';

UPDATE sentences SET
  ex1 = 'Triangulation of methods strengthened the credibility of the conclusions.', ex1_ko = '방법의 삼각검증은 결론의 신뢰성을 강화했어요.',
  ex2 = 'Triangulation of researchers strengthened the objectivity of the coding.', ex2_ko = '연구자의 삼각검증은 코딩의 객관성을 강화했어요.',
  ex3 = 'Triangulation of theories strengthened the depth of the interpretation.', ex3_ko = '이론의 삼각검증은 해석의 깊이를 강화했어요.',
  ex4 = 'Triangulation of timeframes strengthened the robustness of the patterns observed.', ex4_ko = '시간대의 삼각검증은 관찰된 패턴의 견고함을 강화했어요.',
  ex5 = 'Triangulation of participant perspectives strengthened the validity of the analysis.', ex5_ko = '참여자 관점의 삼각검증은 분석의 타당성을 강화했어요.'
WHERE id = 's_academic_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The epistemological assumptions underlying this research privilege a constructivist view of knowledge.', ex1_ko = '이 연구의 기저에 있는 인식론적 가정은 지식에 대한 구성주의적 관점을 우선시해요.',
  ex2 = 'The methodological assumptions underlying this analysis privilege quantitative measurement.', ex2_ko = '이 분석의 기저에 있는 방법론적 가정은 양적 측정을 우선시해요.',
  ex3 = 'The political assumptions underlying this framework privilege liberal democratic norms.', ex3_ko = '이 틀의 기저에 있는 정치적 가정은 자유민주주의 규범을 우선시해요.',
  ex4 = 'The cultural assumptions underlying this model privilege Western individualist values.', ex4_ko = '이 모델의 기저에 있는 문화적 가정은 서구 개인주의적 가치를 우선시해요.',
  ex5 = 'The disciplinary assumptions underlying this approach privilege a particular canon.', ex5_ko = '이 접근법의 기저에 있는 학문적 가정은 특정 정전을 우선시해요.'
WHERE id = 's_academic_C1_01';

UPDATE sentences SET
  ex1 = 'The inductive framework constrains the researcher''s ability to test established hypotheses.', ex1_ko = '귀납적 틀은 연구자가 확립된 가설을 검증하는 능력을 제한해요.',
  ex2 = 'The positivist framework constrains the researcher''s ability to engage with subjective experience.', ex2_ko = '실증주의적 틀은 연구자가 주관적 경험을 다루는 능력을 제한해요.',
  ex3 = 'The structuralist framework constrains the researcher''s ability to account for individual agency.', ex3_ko = '구조주의적 틀은 연구자가 개인의 행위자성을 설명하는 능력을 제한해요.',
  ex4 = 'The neoliberal framework constrains the researcher''s ability to critique market logic.', ex4_ko = '신자유주의적 틀은 연구자가 시장 논리를 비판하는 능력을 제한해요.',
  ex5 = 'The Eurocentric framework constrains the researcher''s ability to engage with diverse epistemes.', ex5_ko = '유럽 중심적 틀은 연구자가 다양한 인식 체계를 다루는 능력을 제한해요.'
WHERE id = 's_academic_C1_02';

UPDATE sentences SET
  ex1 = 'A narrative approach foregrounds the storied dimensions of participants'' experiences.', ex1_ko = '서사적 접근법은 참여자 경험의 서사적 차원을 전면에 내세워요.',
  ex2 = 'An ethnographic approach foregrounds the cultural meanings within the community.', ex2_ko = '민족지학적 접근법은 공동체 내의 문화적 의미를 전면에 내세워요.',
  ex3 = 'A participatory approach foregrounds the voices of those traditionally marginalized.', ex3_ko = '참여적 접근법은 전통적으로 소외된 이들의 목소리를 전면에 내세워요.',
  ex4 = 'A critical approach foregrounds the power relations embedded in everyday practices.', ex4_ko = '비판적 접근법은 일상적 관행에 내재된 권력 관계를 전면에 내세워요.',
  ex5 = 'A decolonial approach foregrounds indigenous ways of knowing.', ex5_ko = '탈식민적 접근법은 토착민의 지식 방식을 전면에 내세워요.'
WHERE id = 's_academic_C1_03';

UPDATE sentences SET
  ex1 = 'This paper problematizes the binary opposition between theory and practice.', ex1_ko = '이 논문은 이론과 실천 사이의 이분법적 대립을 문제화해요.',
  ex2 = 'This paper problematizes the binary opposition between nature and culture.', ex2_ko = '이 논문은 자연과 문화 사이의 이분법적 대립을 문제화해요.',
  ex3 = 'This paper problematizes the binary opposition between local and global.', ex3_ko = '이 논문은 지역적인 것과 세계적인 것 사이의 이분법적 대립을 문제화해요.',
  ex4 = 'This paper problematizes the binary opposition between mind and body.', ex4_ko = '이 논문은 정신과 신체 사이의 이분법적 대립을 문제화해요.',
  ex5 = 'This paper problematizes the binary opposition between public and private spheres.', ex5_ko = '이 논문은 공적 영역과 사적 영역 사이의 이분법적 대립을 문제화해요.'
WHERE id = 's_academic_C1_04';

UPDATE sentences SET
  ex1 = 'Reflexivity requires the researcher to interrogate their assumptions throughout the process.', ex1_ko = '성찰성은 연구자가 전 과정에서 자신의 가정을 검토할 것을 요구해요.',
  ex2 = 'Reflexivity requires the researcher to acknowledge their relational entanglements with participants.', ex2_ko = '성찰성은 연구자가 참여자와의 관계적 얽힘을 인정할 것을 요구해요.',
  ex3 = 'Reflexivity requires the researcher to make their analytical choices transparent.', ex3_ko = '성찰성은 연구자가 분석적 선택을 투명하게 만들 것을 요구해요.',
  ex4 = 'Reflexivity requires the researcher to document moments of personal discomfort.', ex4_ko = '성찰성은 연구자가 개인적 불편의 순간을 기록할 것을 요구해요.',
  ex5 = 'Reflexivity requires the researcher to consider how their identity shapes the inquiry.', ex5_ko = '성찰성은 연구자가 자신의 정체성이 연구를 어떻게 형성하는지 고려할 것을 요구해요.'
WHERE id = 's_academic_C1_05';

UPDATE sentences SET
  ex1 = 'The hegemonic discourse normalizes certain identities while pathologizing others.', ex1_ko = '헤게모니적 담론은 특정 정체성을 정상화하면서 다른 것들을 병리화해요.',
  ex2 = 'The hegemonic discourse normalizes existing inequalities as natural and inevitable.', ex2_ko = '헤게모니적 담론은 기존 불평등을 자연스럽고 필연적인 것으로 정상화해요.',
  ex3 = 'The hegemonic discourse normalizes individual responsibility while obscuring structural causes.', ex3_ko = '헤게모니적 담론은 구조적 원인을 가리면서 개인의 책임을 정상화해요.',
  ex4 = 'The hegemonic discourse normalizes consumption as a marker of personal worth.', ex4_ko = '헤게모니적 담론은 소비를 개인의 가치 지표로 정상화해요.',
  ex5 = 'The hegemonic discourse normalizes certain knowledge claims while delegitimizing alternative epistemologies.', ex5_ko = '헤게모니적 담론은 특정 지식 주장을 정상화하면서 대안적 인식론을 탈정당화해요.'
WHERE id = 's_academic_C1_06';

UPDATE sentences SET
  ex1 = 'Grounded theory allows substantive theory to emerge inductively from the data rather than being imposed in advance.', ex1_ko = '근거 이론은 실질적 이론이 사전에 부과되는 것이 아니라 데이터에서 귀납적으로 출현하도록 해요.',
  ex2 = 'Grounded theory allows analytical frames to emerge inductively from the data rather than being borrowed wholesale.', ex2_ko = '근거 이론은 분석 틀이 통째로 차용되는 것이 아니라 데이터에서 귀납적으로 출현하도록 해요.',
  ex3 = 'Grounded theory allows categories to emerge inductively from the data rather than being imposed a priori from the literature.', ex3_ko = '근거 이론은 범주가 문헌에서 선험적으로 부과되는 것이 아니라 데이터에서 귀납적으로 출현하도록 해요.',
  ex4 = 'Grounded theory allows insights to emerge inductively from the data rather than being assumed at the outset.', ex4_ko = '근거 이론은 통찰이 시작 단계에서 가정되는 것이 아니라 데이터에서 귀납적으로 출현하도록 해요.',
  ex5 = 'Grounded theory allows conceptual structures to emerge inductively from the data rather than being predetermined.', ex5_ko = '근거 이론은 개념 구조가 사전 결정되는 것이 아니라 데이터에서 귀납적으로 출현하도록 해요.'
WHERE id = 's_academic_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Derrida''s concept of différance destabilizes the metaphysical assumption that meaning is self-present.', ex1_ko = '데리다의 차연 개념은 의미가 자기 현존한다는 형이상학적 가정을 불안정하게 해요.',
  ex2 = 'Derrida''s concept of différance destabilizes the structuralist assumption that signs operate within closed systems.', ex2_ko = '데리다의 차연 개념은 기호가 닫힌 체계 안에서 작동한다는 구조주의적 가정을 불안정하게 해요.',
  ex3 = 'Derrida''s concept of différance destabilizes the phonocentric assumption that speech precedes writing.', ex3_ko = '데리다의 차연 개념은 말이 글쓰기에 앞선다는 음성중심주의적 가정을 불안정하게 해요.',
  ex4 = 'Derrida''s concept of différance destabilizes the binary assumption that opposites can be cleanly separated.', ex4_ko = '데리다의 차연 개념은 대립항이 깨끗하게 분리될 수 있다는 이분법적 가정을 불안정하게 해요.',
  ex5 = 'Derrida''s concept of différance destabilizes the foundationalist assumption that thought rests on stable ground.', ex5_ko = '데리다의 차연 개념은 사유가 안정된 기반 위에 있다는 토대주의적 가정을 불안정하게 해요.'
WHERE id = 's_academic_C2_01';

UPDATE sentences SET
  ex1 = 'Foucauldian genealogy traces how the discourse of madness disciplines and normalizes deviance.', ex1_ko = '푸코적 계보학은 광기의 담론이 어떻게 일탈을 규율하고 정상화하는지 추적해요.',
  ex2 = 'Foucauldian genealogy traces how the practice of confession disciplines and normalizes the modern subject.', ex2_ko = '푸코적 계보학은 고백의 실천이 어떻게 근대 주체를 규율하고 정상화하는지 추적해요.',
  ex3 = 'Foucauldian genealogy traces how the clinic disciplines and normalizes bodies through medical gaze.', ex3_ko = '푸코적 계보학은 진료실이 의학적 시선을 통해 어떻게 신체를 규율하고 정상화하는지 추적해요.',
  ex4 = 'Foucauldian genealogy traces how examination practices discipline and normalize student subjectivities.', ex4_ko = '푸코적 계보학은 시험 관행이 어떻게 학생 주체성을 규율하고 정상화하는지 추적해요.',
  ex5 = 'Foucauldian genealogy traces how penal institutions discipline and normalize behavioral conformity.', ex5_ko = '푸코적 계보학은 형벌 기관이 어떻게 행동의 순응을 규율하고 정상화하는지 추적해요.'
WHERE id = 's_academic_C2_02';

UPDATE sentences SET
  ex1 = 'The rhizomatic structure of the network resists centralization and hierarchical control.', ex1_ko = '네트워크의 리좀적 구조는 중앙 집중화와 위계적 통제에 저항해요.',
  ex2 = 'The rhizomatic structure of the movement resists co-optation and disciplinary capture.', ex2_ko = '운동의 리좀적 구조는 포섭과 학문적 포획에 저항해요.',
  ex3 = 'The rhizomatic structure of the archive resists linear narrative and chronological closure.', ex3_ko = '아카이브의 리좀적 구조는 선형 서사와 연대기적 종결에 저항해요.',
  ex4 = 'The rhizomatic structure of the community resists representation by any single voice.', ex4_ko = '공동체의 리좀적 구조는 어떤 단일한 목소리에 의한 대표에도 저항해요.',
  ex5 = 'The rhizomatic structure of the data resists categorical fixation and taxonomic order.', ex5_ko = '데이터의 리좀적 구조는 범주적 고정과 분류학적 질서에 저항해요.'
WHERE id = 's_academic_C2_03';

UPDATE sentences SET
  ex1 = 'Bakhtin''s heteroglossia reveals the polyphonic nature of literary modernism.', ex1_ko = '바흐친의 이언론은 문학적 모더니즘의 다성적 특성을 드러내요.',
  ex2 = 'Bakhtin''s heteroglossia reveals the polyphonic nature of everyday speech communities.', ex2_ko = '바흐친의 이언론은 일상 언어 공동체의 다성적 특성을 드러내요.',
  ex3 = 'Bakhtin''s heteroglossia reveals the polyphonic nature of nationalist propaganda.', ex3_ko = '바흐친의 이언론은 민족주의 선전의 다성적 특성을 드러내요.',
  ex4 = 'Bakhtin''s heteroglossia reveals the polyphonic nature of classroom interaction.', ex4_ko = '바흐친의 이언론은 교실 상호작용의 다성적 특성을 드러내요.',
  ex5 = 'Bakhtin''s heteroglossia reveals the polyphonic nature of contested historical narratives.', ex5_ko = '바흐친의 이언론은 경합하는 역사적 서사의 다성적 특성을 드러내요.'
WHERE id = 's_academic_C2_04';

UPDATE sentences SET
  ex1 = 'The subaltern''s aporia lies in the impossibility of speaking outside the colonial archive.', ex1_ko = '서발턴의 아포리아는 식민지 아카이브 바깥에서 말하는 것의 불가능성에 있어요.',
  ex2 = 'The translator''s aporia lies in the impossibility of perfect equivalence between languages.', ex2_ko = '번역자의 아포리아는 언어 간 완벽한 등가의 불가능성에 있어요.',
  ex3 = 'The historian''s aporia lies in the impossibility of representing the past without imposing the present.', ex3_ko = '역사가의 아포리아는 현재를 부과하지 않고 과거를 재현하는 것의 불가능성에 있어요.',
  ex4 = 'The witness''s aporia lies in the impossibility of bearing testimony to absolute trauma.', ex4_ko = '증인의 아포리아는 절대적 외상에 대한 증언의 불가능성에 있어요.',
  ex5 = 'The ethnographer''s aporia lies in the impossibility of representing the other without appropriation.', ex5_ko = '민족지학자의 아포리아는 전유 없이 타자를 재현하는 것의 불가능성에 있어요.'
WHERE id = 's_academic_C2_05';

UPDATE sentences SET
  ex1 = 'Bourdieu''s concept of habitus explains how class dispositions are reproduced through everyday gesture.', ex1_ko = '부르디외의 아비투스 개념은 계급적 성향이 일상적 몸짓을 통해 재생산되는 방식을 설명해요.',
  ex2 = 'Bourdieu''s concept of habitus explains how gender norms are reproduced through embodied practice.', ex2_ko = '부르디외의 아비투스 개념은 성별 규범이 체현된 실천을 통해 재생산되는 방식을 설명해요.',
  ex3 = 'Bourdieu''s concept of habitus explains how taste is reproduced as a marker of distinction.', ex3_ko = '부르디외의 아비투스 개념은 취향이 구별의 표지로 재생산되는 방식을 설명해요.',
  ex4 = 'Bourdieu''s concept of habitus explains how cultural capital is reproduced across institutional fields.', ex4_ko = '부르디외의 아비투스 개념은 문화 자본이 제도적 장을 가로질러 재생산되는 방식을 설명해요.',
  ex5 = 'Bourdieu''s concept of habitus explains how inequality is reproduced beneath the surface of meritocracy.', ex5_ko = '부르디외의 아비투스 개념은 불평등이 능력주의의 표면 아래에서 재생산되는 방식을 설명해요.'
WHERE id = 's_academic_C2_06';

UPDATE sentences SET
  ex1 = 'The onto-epistemological stance of the researcher inevitably shapes what counts as data within the inquiry.', ex1_ko = '연구자의 존재-인식론적 입장은 연구 내에서 무엇이 데이터로 인정되는지를 필연적으로 형성해요.',
  ex2 = 'The onto-epistemological stance of the researcher inevitably shapes how participants are positioned in the study.', ex2_ko = '연구자의 존재-인식론적 입장은 참여자들이 연구에서 어떻게 위치되는지를 필연적으로 형성해요.',
  ex3 = 'The onto-epistemological stance of the researcher inevitably shapes which voices are amplified and which silenced.', ex3_ko = '연구자의 존재-인식론적 입장은 어떤 목소리가 증폭되고 어떤 목소리가 침묵되는지를 필연적으로 형성해요.',
  ex4 = 'The onto-epistemological stance of the researcher inevitably shapes the analytical categories deemed meaningful.', ex4_ko = '연구자의 존재-인식론적 입장은 의미 있다고 간주되는 분석 범주를 필연적으로 형성해요.',
  ex5 = 'The onto-epistemological stance of the researcher inevitably shapes the very questions that can be posed.', ex5_ko = '연구자의 존재-인식론적 입장은 제기될 수 있는 질문 자체를 필연적으로 형성해요.'
WHERE id = 's_academic_C2_07';
