-- EngCat — Emotion topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns: A1×7, A2×7, B1×7, B2×7, C1×7, C2×7)
-- Each example applies the same grammatical/functional pattern in a different context
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I''m so happy to see you!', ex1_ko = '만나서 너무 행복해요!',
  ex2 = 'I''m so happy about the news.', ex2_ko = '그 소식 너무 행복해요.',
  ex3 = 'I''m so happy with my new job.', ex3_ko = '새 직장이 너무 행복해요.',
  ex4 = 'I''m so happy you came today.', ex4_ko = '오늘 와 줘서 너무 행복해요.',
  ex5 = 'I''m so happy right now!', ex5_ko = '지금 너무 행복해요!'
WHERE id = 's_emotion_A1_01';

UPDATE sentences SET
  ex1 = 'I feel sad when it rains.', ex1_ko = '비가 오면 슬픈 기분이에요.',
  ex2 = 'I feel sad about leaving.', ex2_ko = '떠나는 게 슬퍼요.',
  ex3 = 'I feel sad without my family.', ex3_ko = '가족 없이는 슬퍼요.',
  ex4 = 'I feel sad watching this movie.', ex4_ko = '이 영화를 보니 슬퍼요.',
  ex5 = 'I feel sad but I''ll be okay.', ex5_ko = '슬프지만 괜찮아질 거예요.'
WHERE id = 's_emotion_A1_02';

UPDATE sentences SET
  ex1 = 'I''m really tired after work.', ex1_ko = '일 끝나고 정말 피곤해요.',
  ex2 = 'I''m really tired this morning.', ex2_ko = '오늘 아침 정말 피곤해요.',
  ex3 = 'I''m really tired from the trip.', ex3_ko = '여행 때문에 정말 피곤해요.',
  ex4 = 'I''m really tired, need some sleep.', ex4_ko = '정말 피곤해요, 잠 좀 자야겠어요.',
  ex5 = 'I''m really tired but happy.', ex5_ko = '정말 피곤하지만 행복해요.'
WHERE id = 's_emotion_A1_03';

UPDATE sentences SET
  ex1 = 'Are you okay? You look pale.', ex1_ko = '괜찮아요? 창백해 보여요.',
  ex2 = 'Are you okay after that fall?', ex2_ko = '넘어진 거 괜찮아요?',
  ex3 = 'Are you okay with the plan?', ex3_ko = '그 계획 괜찮아요?',
  ex4 = 'Are you okay sitting here?', ex4_ko = '여기 앉아도 괜찮아요?',
  ex5 = 'Are you okay alone tonight?', ex5_ko = '오늘 밤 혼자 괜찮아요?'
WHERE id = 's_emotion_A1_04';

UPDATE sentences SET
  ex1 = 'I''m scared of the dark.', ex1_ko = '어둠이 무서워요.',
  ex2 = 'I''m scared to ask the question.', ex2_ko = '질문하기 무서워요.',
  ex3 = 'I''m scared of heights.', ex3_ko = '높은 곳이 무서워요.',
  ex4 = 'I''m scared about tomorrow''s test.', ex4_ko = '내일 시험이 무서워요.',
  ex5 = 'I''m scared but I''ll try.', ex5_ko = '무섭지만 해볼게요.'
WHERE id = 's_emotion_A1_05';

UPDATE sentences SET
  ex1 = 'I feel good after exercising.', ex1_ko = '운동하고 나니 기분이 좋아요.',
  ex2 = 'I feel good about my decision.', ex2_ko = '제 결정에 대해 기분이 좋아요.',
  ex3 = 'I feel good today, finally.', ex3_ko = '오늘은 드디어 기분이 좋아요.',
  ex4 = 'I feel good when I help others.', ex4_ko = '남을 도울 때 기분이 좋아요.',
  ex5 = 'I feel good about the future.', ex5_ko = '미래에 대해 기분이 좋아요.'
WHERE id = 's_emotion_A1_06';

UPDATE sentences SET
  ex1 = 'I''m not okay today, honestly.', ex1_ko = '솔직히 오늘 괜찮지 않아요.',
  ex2 = 'I''m not okay with this.', ex2_ko = '이건 괜찮지 않아요.',
  ex3 = 'I''m not okay, but I will be.', ex3_ko = '괜찮지 않지만, 괜찮아질 거예요.',
  ex4 = 'I''m not okay after the news.', ex4_ko = '그 소식 듣고 괜찮지 않아요.',
  ex5 = 'I''m not okay alone right now.', ex5_ko = '지금 혼자는 괜찮지 않아요.'
WHERE id = 's_emotion_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I''m a little worried about the exam.', ex1_ko = '시험에 대해 좀 걱정돼요.',
  ex2 = 'I''m a little worried about my mom''s health.', ex2_ko = '엄마 건강이 좀 걱정돼요.',
  ex3 = 'I''m a little worried about being late.', ex3_ko = '늦을까 봐 좀 걱정돼요.',
  ex4 = 'I''m a little worried about the weather.', ex4_ko = '날씨가 좀 걱정돼요.',
  ex5 = 'I''m a little worried but trying to stay calm.', ex5_ko = '좀 걱정되지만 침착하려고 해요.'
WHERE id = 's_emotion_A2_01';

UPDATE sentences SET
  ex1 = 'He seemed upset after the meeting.', ex1_ko = '회의 후 그는 속상해 보였어요.',
  ex2 = 'She seemed upset on the phone.', ex2_ko = '전화에서 그녀는 속상해 보였어요.',
  ex3 = 'They seemed upset by the decision.', ex3_ko = '그들은 그 결정에 속상해 보였어요.',
  ex4 = 'My dad seemed upset all evening.', ex4_ko = '아빠는 저녁 내내 속상해 보였어요.',
  ex5 = 'The kids seemed upset when we left.', ex5_ko = '우리가 떠날 때 아이들은 속상해 보였어요.'
WHERE id = 's_emotion_A2_02';

UPDATE sentences SET
  ex1 = 'I got so nervous before the interview.', ex1_ko = '면접 전에 너무 긴장했어요.',
  ex2 = 'I got so nervous on stage.', ex2_ko = '무대에서 너무 긴장했어요.',
  ex3 = 'I got so nervous meeting her parents.', ex3_ko = '그녀 부모님을 만나면서 너무 긴장했어요.',
  ex4 = 'I got so nervous waiting for the results.', ex4_ko = '결과를 기다리면서 너무 긴장했어요.',
  ex5 = 'I got so nervous my voice shook.', ex5_ko = '목소리가 떨릴 정도로 너무 긴장했어요.'
WHERE id = 's_emotion_A2_03';

UPDATE sentences SET
  ex1 = 'I felt really grateful for the gift.', ex1_ko = '선물에 정말 감사함을 느꼈어요.',
  ex2 = 'I felt really grateful to my teacher.', ex2_ko = '선생님께 정말 감사함을 느꼈어요.',
  ex3 = 'I felt really grateful after the kindness.', ex3_ko = '그 친절함에 정말 감사함을 느꼈어요.',
  ex4 = 'I felt really grateful when she remembered.', ex4_ko = '그녀가 기억해 줘서 정말 감사함을 느꼈어요.',
  ex5 = 'I felt really grateful for the support.', ex5_ko = '응원에 정말 감사함을 느꼈어요.'
WHERE id = 's_emotion_A2_04';

UPDATE sentences SET
  ex1 = 'I was so surprised when he showed up.', ex1_ko = '그가 나타났을 때 정말 놀랐어요.',
  ex2 = 'She was so surprised by the gift.', ex2_ko = '그녀는 선물에 정말 놀랐어요.',
  ex3 = 'We were so surprised by the result.', ex3_ko = '우리는 결과에 정말 놀랐어요.',
  ex4 = 'They were so surprised by the proposal.', ex4_ko = '그들은 그 제안에 정말 놀랐어요.',
  ex5 = 'I was so surprised to see you here.', ex5_ko = '여기서 만나서 정말 놀랐어요.'
WHERE id = 's_emotion_A2_05';

UPDATE sentences SET
  ex1 = 'I''m feeling a bit bored at work today.', ex1_ko = '오늘 직장에서 좀 지루하게 느껴지고 있어요.',
  ex2 = 'I''m feeling a bit bored with this routine.', ex2_ko = '이 일상이 좀 지루하게 느껴지고 있어요.',
  ex3 = 'I''m feeling a bit bored on weekends.', ex3_ko = '주말이 좀 지루하게 느껴지고 있어요.',
  ex4 = 'I''m feeling a bit bored without you.', ex4_ko = '당신 없이 좀 지루하게 느껴지고 있어요.',
  ex5 = 'I''m feeling a bit bored watching this.', ex5_ko = '이걸 보는 게 좀 지루하게 느껴지고 있어요.'
WHERE id = 's_emotion_A2_06';

UPDATE sentences SET
  ex1 = 'I was so relieved to hear the good news.', ex1_ko = '좋은 소식을 듣고 정말 안도했어요.',
  ex2 = 'I was so relieved to find my wallet.', ex2_ko = '지갑을 찾고 정말 안도했어요.',
  ex3 = 'I was so relieved to see her safe.', ex3_ko = '그녀가 무사한 걸 보고 정말 안도했어요.',
  ex4 = 'I was so relieved to get the call.', ex4_ko = '그 전화를 받고 정말 안도했어요.',
  ex5 = 'I was so relieved to finish the exam.', ex5_ko = '시험을 끝내고 정말 안도했어요.'
WHERE id = 's_emotion_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I completely understand why you''re upset.', ex1_ko = '왜 속상한지 완전히 이해해요.',
  ex2 = 'I completely understand your concerns.', ex2_ko = '우려를 완전히 이해해요.',
  ex3 = 'I completely understand the situation now.', ex3_ko = '이제 상황을 완전히 이해해요.',
  ex4 = 'I completely understand if you need time.', ex4_ko = '시간이 필요하다면 완전히 이해해요.',
  ex5 = 'I completely understand where you''re coming from.', ex5_ko = '당신의 입장을 완전히 이해해요.'
WHERE id = 's_emotion_B1_01';

UPDATE sentences SET
  ex1 = 'It''s okay to feel sad sometimes.', ex1_ko = '가끔 슬픈 것은 괜찮아요.',
  ex2 = 'It''s okay to feel overwhelmed.', ex2_ko = '압도되는 기분이 드는 건 괜찮아요.',
  ex3 = 'It''s okay to feel uncertain about the future.', ex3_ko = '미래가 불안한 건 괜찮아요.',
  ex4 = 'It''s okay to feel proud of yourself.', ex4_ko = '스스로를 자랑스러워하는 건 괜찮아요.',
  ex5 = 'It''s okay to feel both happy and scared.', ex5_ko = '행복하면서도 무서운 건 괜찮아요.'
WHERE id = 's_emotion_B1_02';

UPDATE sentences SET
  ex1 = 'I''ve been feeling a bit overwhelmed at work lately.', ex1_ko = '요즘 직장에서 좀 압도되는 기분이에요.',
  ex2 = 'I''ve been feeling a bit overwhelmed by the responsibilities.', ex2_ko = '책임감에 좀 압도되는 기분이에요.',
  ex3 = 'I''ve been feeling a bit overwhelmed with all the changes.', ex3_ko = '모든 변화에 좀 압도되는 기분이에요.',
  ex4 = 'I''ve been feeling a bit overwhelmed by my schedule.', ex4_ko = '스케줄에 좀 압도되는 기분이에요.',
  ex5 = 'I''ve been feeling a bit overwhelmed but I''m managing.', ex5_ko = '좀 압도되는 기분이지만 잘 견디고 있어요.'
WHERE id = 's_emotion_B1_03';

UPDATE sentences SET
  ex1 = 'That must have been really frustrating to deal with.', ex1_ko = '그걸 다루는 게 정말 답답했겠어요.',
  ex2 = 'That must have been really frustrating after waiting so long.', ex2_ko = '그렇게 오래 기다린 후라 정말 답답했겠어요.',
  ex3 = 'That must have been really frustrating for the whole team.', ex3_ko = '팀 전체에게 정말 답답했겠어요.',
  ex4 = 'That must have been really frustrating to hear.', ex4_ko = '듣기에 정말 답답했겠어요.',
  ex5 = 'That must have been really frustrating, I''m sorry.', ex5_ko = '정말 답답했겠어요, 안타까워요.'
WHERE id = 's_emotion_B1_04';

UPDATE sentences SET
  ex1 = 'I felt so guilty about missing her birthday.', ex1_ko = '그녀 생일을 놓친 것에 대해 정말 죄책감을 느꼈어요.',
  ex2 = 'I felt so guilty about not calling sooner.', ex2_ko = '더 일찍 전화하지 않은 것에 대해 정말 죄책감을 느꼈어요.',
  ex3 = 'I felt so guilty about leaving the dog alone.', ex3_ko = '개를 혼자 두고 간 것에 대해 정말 죄책감을 느꼈어요.',
  ex4 = 'I felt so guilty about forgetting our anniversary.', ex4_ko = '결혼기념일을 잊은 것에 대해 정말 죄책감을 느꼈어요.',
  ex5 = 'I felt so guilty about losing my temper.', ex5_ko = '화를 낸 것에 대해 정말 죄책감을 느꼈어요.'
WHERE id = 's_emotion_B1_05';

UPDATE sentences SET
  ex1 = 'He seemed really enthusiastic about the new role.', ex1_ko = '그는 새 역할에 정말 열의를 보이는 것 같았어요.',
  ex2 = 'They seemed really enthusiastic about working together.', ex2_ko = '그들은 함께 일하는 데 정말 열의를 보이는 것 같았어요.',
  ex3 = 'My students seemed really enthusiastic about the topic.', ex3_ko = '제 학생들은 그 주제에 정말 열의를 보이는 것 같았어요.',
  ex4 = 'The audience seemed really enthusiastic about the performance.', ex4_ko = '관객들은 공연에 정말 열의를 보이는 것 같았어요.',
  ex5 = 'She seemed really enthusiastic when discussing her plans.', ex5_ko = '그녀는 계획을 논의할 때 정말 열의를 보이는 것 같았어요.'
WHERE id = 's_emotion_B1_06';

UPDATE sentences SET
  ex1 = 'I''m so relieved it all worked out for the best.', ex1_ko = '결국 다 잘 풀려서 정말 안도돼요.',
  ex2 = 'I''m so relieved it all worked out before the deadline.', ex2_ko = '마감 전에 다 잘 풀려서 정말 안도돼요.',
  ex3 = 'I''m so relieved it all worked out for the family.', ex3_ko = '가족 모두에게 다 잘 풀려서 정말 안도돼요.',
  ex4 = 'I''m so relieved it all worked out despite the setbacks.', ex4_ko = '난관에도 불구하고 다 잘 풀려서 정말 안도돼요.',
  ex5 = 'I''m so relieved it all worked out after all that worry.', ex5_ko = '그 많은 걱정 끝에 다 잘 풀려서 정말 안도돼요.'
WHERE id = 's_emotion_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I couldn''t help feeling sentimental as I packed her room.', ex1_ko = '그녀 방을 정리하면서 감상적인 기분이 드는 걸 어쩔 수 없었어요.',
  ex2 = 'I couldn''t help feeling apprehensive about the journey ahead.', ex2_ko = '앞으로의 여정에 대해 불안한 기분이 드는 걸 어쩔 수 없었어요.',
  ex3 = 'I couldn''t help feeling proud as she crossed the stage.', ex3_ko = '그녀가 무대를 가로지를 때 자랑스러운 기분이 드는 걸 어쩔 수 없었어요.',
  ex4 = 'I couldn''t help feeling skeptical about the new policy.', ex4_ko = '새 정책에 회의적인 기분이 드는 걸 어쩔 수 없었어요.',
  ex5 = 'I couldn''t help feeling envious of their close friendship.', ex5_ko = '그들의 친한 우정이 부러운 기분이 드는 걸 어쩔 수 없었어요.'
WHERE id = 's_emotion_B2_01';

UPDATE sentences SET
  ex1 = 'I felt a deep sense of nostalgia walking through my old school.', ex1_ko = '옛 학교를 걸으며 깊은 향수를 느꼈어요.',
  ex2 = 'I felt a deep sense of nostalgia hearing that old song.', ex2_ko = '그 옛 노래를 들으며 깊은 향수를 느꼈어요.',
  ex3 = 'I felt a deep sense of nostalgia for my grandmother''s cooking.', ex3_ko = '할머니의 요리에 대한 깊은 향수를 느꼈어요.',
  ex4 = 'I felt a deep sense of nostalgia visiting my hometown.', ex4_ko = '고향을 방문하며 깊은 향수를 느꼈어요.',
  ex5 = 'I felt a deep sense of nostalgia reading my old letters.', ex5_ko = '옛 편지를 읽으며 깊은 향수를 느꼈어요.'
WHERE id = 's_emotion_B2_02';

UPDATE sentences SET
  ex1 = 'He was visibly shaken after the accident.', ex1_ko = '그는 사고 후 눈에 띄게 동요했어요.',
  ex2 = 'They were visibly shaken by the verdict.', ex2_ko = '그들은 평결에 눈에 띄게 동요했어요.',
  ex3 = 'The witness was visibly shaken during the testimony.', ex3_ko = '증인은 증언하는 동안 눈에 띄게 동요했어요.',
  ex4 = 'My colleague was visibly shaken by the criticism.', ex4_ko = '제 동료는 비판에 눈에 띄게 동요했어요.',
  ex5 = 'The crowd was visibly shaken when the news broke.', ex5_ko = '소식이 전해지자 군중은 눈에 띄게 동요했어요.'
WHERE id = 's_emotion_B2_03';

UPDATE sentences SET
  ex1 = 'I find it hard to put into words how much this means.', ex1_ko = '이게 얼마나 의미 있는지 말로 표현하기가 어려워요.',
  ex2 = 'I find it hard to put into words my disappointment.', ex2_ko = '제 실망을 말로 표현하기가 어려워요.',
  ex3 = 'I find it hard to put into words the beauty of that moment.', ex3_ko = '그 순간의 아름다움을 말로 표현하기가 어려워요.',
  ex4 = 'I find it hard to put into words how I feel about her.', ex4_ko = '그녀에 대한 제 감정을 말로 표현하기가 어려워요.',
  ex5 = 'I find it hard to put into words the impact you''ve had.', ex5_ko = '당신이 미친 영향을 말로 표현하기가 어려워요.'
WHERE id = 's_emotion_B2_04';

UPDATE sentences SET
  ex1 = 'There''s something bittersweet about watching them grow up.', ex1_ko = '아이들이 커가는 걸 보는 것에는 달콤씁쓸한 무언가가 있어요.',
  ex2 = 'There''s something bittersweet about coming home after years away.', ex2_ko = '오랜만에 집에 돌아오는 것에는 달콤씁쓸한 무언가가 있어요.',
  ex3 = 'There''s something bittersweet about finishing a long project.', ex3_ko = '긴 프로젝트를 끝내는 것에는 달콤씁쓸한 무언가가 있어요.',
  ex4 = 'There''s something bittersweet about graduation day.', ex4_ko = '졸업식 날에는 달콤씁쓸한 무언가가 있어요.',
  ex5 = 'There''s something bittersweet about old photographs.', ex5_ko = '오래된 사진에는 달콤씁쓸한 무언가가 있어요.'
WHERE id = 's_emotion_B2_05';

UPDATE sentences SET
  ex1 = 'I was completely overwhelmed with gratitude when she remembered.', ex1_ko = '그녀가 기억해 줬을 때 감사함으로 완전히 압도됐어요.',
  ex2 = 'I was completely overwhelmed with joy at the news.', ex2_ko = '그 소식에 기쁨으로 완전히 압도됐어요.',
  ex3 = 'I was completely overwhelmed with relief when he called.', ex3_ko = '그가 전화했을 때 안도감으로 완전히 압도됐어요.',
  ex4 = 'I was completely overwhelmed with pride watching her.', ex4_ko = '그녀를 보며 자부심으로 완전히 압도됐어요.',
  ex5 = 'I was completely overwhelmed with emotion at the ceremony.', ex5_ko = '그 행사에서 감정으로 완전히 압도됐어요.'
WHERE id = 's_emotion_B2_06';

UPDATE sentences SET
  ex1 = 'The conversation left me feeling utterly bewildered.', ex1_ko = '그 대화는 저를 완전히 어리둥절하게 만들었어요.',
  ex2 = 'The lecture left me feeling utterly inspired.', ex2_ko = '그 강의는 저를 완전히 영감받게 만들었어요.',
  ex3 = 'The breakup left me feeling utterly devastated.', ex3_ko = '그 이별은 저를 완전히 무너지게 만들었어요.',
  ex4 = 'Their kindness left me feeling utterly humbled.', ex4_ko = '그들의 친절은 저를 완전히 겸허하게 만들었어요.',
  ex5 = 'The experience left me feeling utterly transformed.', ex5_ko = '그 경험은 저를 완전히 변화시키게 만들었어요.'
WHERE id = 's_emotion_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'There''s a certain ambivalence I feel about returning home.', ex1_ko = '집에 돌아가는 것에 대해 묘한 양면적 감정이 들어요.',
  ex2 = 'There''s a certain ambivalence I feel whenever the topic arises.', ex2_ko = '그 주제가 나올 때마다 묘한 양면적 감정이 들어요.',
  ex3 = 'There''s a certain ambivalence I feel about her offer.', ex3_ko = '그녀의 제안에 대해 묘한 양면적 감정이 들어요.',
  ex4 = 'There''s a certain ambivalence I feel about the changes ahead.', ex4_ko = '앞으로의 변화에 대해 묘한 양면적 감정이 들어요.',
  ex5 = 'There''s a certain ambivalence I feel about leaving this place.', ex5_ko = '이곳을 떠나는 것에 대해 묘한 양면적 감정이 들어요.'
WHERE id = 's_emotion_C1_01';

UPDATE sentences SET
  ex1 = 'He seemed to carry a quiet sense of resignation about the situation.', ex1_ko = '그는 그 상황에 대해 조용한 체념을 지닌 것 같았어요.',
  ex2 = 'She seemed to carry a quiet sense of dignity in adversity.', ex2_ko = '그녀는 역경 속에서도 조용한 품위를 지닌 것 같았어요.',
  ex3 = 'My father seemed to carry a quiet sense of pride for his work.', ex3_ko = '아버지는 일에 대한 조용한 자부심을 지닌 것 같았어요.',
  ex4 = 'They seemed to carry a quiet sense of hope despite everything.', ex4_ko = '그들은 모든 것에도 불구하고 조용한 희망을 지닌 것 같았어요.',
  ex5 = 'The elder seemed to carry a quiet sense of wisdom in his words.', ex5_ko = '그 어르신은 말씀 속에 조용한 지혜를 지닌 것 같았어요.'
WHERE id = 's_emotion_C1_02';

UPDATE sentences SET
  ex1 = 'I was left with a profound feeling of disenchantment after the meeting.', ex1_ko = '그 회의 후 깊은 환멸감이 남았어요.',
  ex2 = 'I was left with a profound feeling of gratitude after their visit.', ex2_ko = '그들의 방문 후 깊은 감사가 남았어요.',
  ex3 = 'I was left with a profound feeling of unease about the proposal.', ex3_ko = '그 제안에 대한 깊은 불안감이 남았어요.',
  ex4 = 'I was left with a profound feeling of clarity after our conversation.', ex4_ko = '우리 대화 후 깊은 명료함이 남았어요.',
  ex5 = 'I was left with a profound feeling of loss when she moved away.', ex5_ko = '그녀가 이사 갔을 때 깊은 상실감이 남았어요.'
WHERE id = 's_emotion_C1_03';

UPDATE sentences SET
  ex1 = 'Her thoughtful silence spoke volumes about her grief.', ex1_ko = '그녀의 사려 깊은 침묵이 슬픔에 대해 많은 것을 말해줬어요.',
  ex2 = 'His hesitant smile spoke volumes about his uncertainty.', ex2_ko = '그의 망설이는 미소가 불확실함에 대해 많은 것을 말해줬어요.',
  ex3 = 'The empty chair spoke volumes about her absence.', ex3_ko = '빈 의자가 그녀의 부재에 대해 많은 것을 말해줬어요.',
  ex4 = 'His weary eyes spoke volumes about the long journey.', ex4_ko = '그의 지친 눈이 긴 여정에 대해 많은 것을 말해줬어요.',
  ex5 = 'The lingering pause spoke volumes about what wasn''t said.', ex5_ko = '그 머뭇거리는 침묵이 말하지 않은 것에 대해 많은 것을 말해줬어요.'
WHERE id = 's_emotion_C1_04';

UPDATE sentences SET
  ex1 = 'I couldn''t shake the feeling that we were being watched.', ex1_ko = '우리가 감시당하고 있다는 느낌을 떨쳐낼 수 없었어요.',
  ex2 = 'I couldn''t shake the feeling that something was off.', ex2_ko = '뭔가 어긋났다는 느낌을 떨쳐낼 수 없었어요.',
  ex3 = 'I couldn''t shake the feeling that I had forgotten something important.', ex3_ko = '중요한 무언가를 잊었다는 느낌을 떨쳐낼 수 없었어요.',
  ex4 = 'I couldn''t shake the feeling that she was hiding the truth.', ex4_ko = '그녀가 진실을 숨기고 있다는 느낌을 떨쳐낼 수 없었어요.',
  ex5 = 'I couldn''t shake the feeling that this moment mattered.', ex5_ko = '이 순간이 중요하다는 느낌을 떨쳐낼 수 없었어요.'
WHERE id = 's_emotion_C1_05';

UPDATE sentences SET
  ex1 = 'There was an overwhelming sense of trepidation in the room before the verdict.', ex1_ko = '평결 전 방 안에 압도적인 불안감이 가득했어요.',
  ex2 = 'There was an overwhelming sense of joy at the wedding reception.', ex2_ko = '결혼식 피로연에 압도적인 기쁨이 가득했어요.',
  ex3 = 'There was an overwhelming sense of solidarity among the protesters.', ex3_ko = '시위대 사이에 압도적인 연대감이 있었어요.',
  ex4 = 'There was an overwhelming sense of grief at the funeral.', ex4_ko = '장례식에 압도적인 슬픔이 있었어요.',
  ex5 = 'There was an overwhelming sense of awe as the curtain rose.', ex5_ko = '막이 올라가면서 압도적인 경외감이 밀려왔어요.'
WHERE id = 's_emotion_C1_06';

UPDATE sentences SET
  ex1 = 'She experienced a strange mix of relief and regret after signing.', ex1_ko = '그녀는 서명 후 안도와 후회가 묘하게 뒤섞인 감정을 경험했어요.',
  ex2 = 'He experienced a strange mix of pride and sadness watching her leave.', ex2_ko = '그는 그녀가 떠나는 걸 보며 자부심과 슬픔이 묘하게 뒤섞인 감정을 경험했어요.',
  ex3 = 'They experienced a strange mix of hope and fear about the move.', ex3_ko = '그들은 이사에 대해 희망과 두려움이 묘하게 뒤섞인 감정을 경험했어요.',
  ex4 = 'I experienced a strange mix of nostalgia and discomfort returning there.', ex4_ko = '저는 그곳에 돌아가며 향수와 불편함이 묘하게 뒤섞인 감정을 경험했어요.',
  ex5 = 'We experienced a strange mix of triumph and exhaustion at the end.', ex5_ko = '우리는 마지막에 승리와 피로가 묘하게 뒤섞인 감정을 경험했어요.'
WHERE id = 's_emotion_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'She bore her loss with a stoic equanimity that defied the magnitude of her grief.', ex1_ko = '그녀는 슬픔의 크기에 비해 의연한 평정심으로 상실을 견뎌냈어요.',
  ex2 = 'He bore his diagnosis with a stoic equanimity that astonished those around him.', ex2_ko = '그는 주변 사람들을 놀라게 할 만큼 의연한 평정심으로 진단을 받아들였어요.',
  ex3 = 'They bore the public scrutiny with a stoic equanimity rare in our age.', ex3_ko = '그들은 우리 시대에 보기 드문 의연한 평정심으로 대중의 시선을 견뎌냈어요.',
  ex4 = 'My grandmother bore her hardships with a stoic equanimity that I still admire.', ex4_ko = '할머니는 제가 여전히 존경하는 의연한 평정심으로 고난을 견뎌내셨어요.',
  ex5 = 'He bore the criticism with a stoic equanimity worthy of a true statesman.', ex5_ko = '그는 진정한 정치인다운 의연한 평정심으로 비판을 견뎌냈어요.'
WHERE id = 's_emotion_C2_01';

UPDATE sentences SET
  ex1 = 'There is something ineffable about the longing for a homeland one has never known.', ex1_ko = '한 번도 알지 못한 고향에 대한 그리움에는 말로 표현할 수 없는 무언가가 있어요.',
  ex2 = 'There is something ineffable about the longing parents feel as children grow.', ex2_ko = '아이들이 자라가는 것을 보는 부모의 그리움에는 말로 표현할 수 없는 무언가가 있어요.',
  ex3 = 'There is something ineffable about the longing evoked by an old melody.', ex3_ko = '옛 멜로디가 불러일으키는 그리움에는 말로 표현할 수 없는 무언가가 있어요.',
  ex4 = 'There is something ineffable about the longing one carries for lost time.', ex4_ko = '잃어버린 시간에 대한 그리움에는 말로 표현할 수 없는 무언가가 있어요.',
  ex5 = 'There is something ineffable about the longing we share for human connection.', ex5_ko = '인간적 연결에 대한 우리의 그리움에는 말로 표현할 수 없는 무언가가 있어요.'
WHERE id = 's_emotion_C2_02';

UPDATE sentences SET
  ex1 = 'She remained sanguine in adversity, an attitude that inspired her entire team.', ex1_ko = '그녀는 역경 속에서도 낙관적이었고, 그 태도가 팀 전체에 영감을 주었어요.',
  ex2 = 'He remained sanguine in adversity, refusing to surrender to despair.', ex2_ko = '그는 역경 속에서도 낙관적이었고, 절망에 굴복하기를 거부했어요.',
  ex3 = 'They remained sanguine in adversity, even as the markets collapsed around them.', ex3_ko = '그들은 시장이 무너지는 와중에도 역경 속에서 낙관적이었어요.',
  ex4 = 'My mother remained sanguine in adversity, a trait I never quite mastered.', ex4_ko = '어머니는 역경 속에서도 낙관적이셨는데, 그 자질은 제가 끝내 익히지 못한 것이에요.',
  ex5 = 'The community remained sanguine in adversity, leaning on shared traditions.', ex5_ko = '그 공동체는 공유하는 전통에 기대어 역경 속에서도 낙관적이었어요.'
WHERE id = 's_emotion_C2_03';

UPDATE sentences SET
  ex1 = 'The lugubrious atmosphere of the abandoned theater seemed to seep into our silence.', ex1_ko = '버려진 극장의 음울한 분위기가 우리의 침묵 속으로 스며드는 것 같았어요.',
  ex2 = 'The lugubrious atmosphere of the courtroom seemed to seep into every word spoken.', ex2_ko = '법정의 음울한 분위기가 모든 말 속으로 스며드는 것 같았어요.',
  ex3 = 'The lugubrious atmosphere of the autumn evening seemed to seep into our conversation.', ex3_ko = '가을 저녁의 음울한 분위기가 우리 대화 속으로 스며드는 것 같았어요.',
  ex4 = 'The lugubrious atmosphere of the empty station seemed to seep into the traveler''s mood.', ex4_ko = '빈 역의 음울한 분위기가 여행자의 기분 속으로 스며드는 것 같았어요.',
  ex5 = 'The lugubrious atmosphere of the rainy funeral seemed to seep into the mourners'' hearts.', ex5_ko = '비 오는 장례식의 음울한 분위기가 조문객들의 마음 속으로 스며드는 것 같았어요.'
WHERE id = 's_emotion_C2_04';

UPDATE sentences SET
  ex1 = 'His magnanimous response to the betrayal left everyone in the room humbled.', ex1_ko = '배신에 대한 그의 관대한 반응이 방 안의 모든 사람을 겸허하게 만들었어요.',
  ex2 = 'Her magnanimous concession in defeat left the audience humbled.', ex2_ko = '패배 속 그녀의 관대한 양보가 청중을 겸허하게 만들었어요.',
  ex3 = 'Their magnanimous gesture toward the rival team left everyone humbled.', ex3_ko = '상대 팀을 향한 그들의 관대한 행동이 모두를 겸허하게 만들었어요.',
  ex4 = 'The leader''s magnanimous apology left the dissidents humbled.', ex4_ko = '그 지도자의 관대한 사과가 반대자들을 겸허하게 만들었어요.',
  ex5 = 'His magnanimous forgiveness left even the harshest critics humbled.', ex5_ko = '그의 관대한 용서가 가장 가혹한 비평가들조차 겸허하게 만들었어요.'
WHERE id = 's_emotion_C2_05';

UPDATE sentences SET
  ex1 = 'He was ebullient on the surface, yet I sensed an undercurrent of lachrymose regret.', ex1_ko = '그는 겉으로는 활기차 보였지만, 눈물 어린 후회의 저류가 느껴졌어요.',
  ex2 = 'They were ebullient on the surface, yet I sensed an undercurrent of lachrymose unease.', ex2_ko = '그들은 겉으로는 활기차 보였지만, 눈물 어린 불안의 저류가 느껴졌어요.',
  ex3 = 'The crowd was ebullient on the surface, yet I sensed an undercurrent of lachrymose nostalgia.', ex3_ko = '군중은 겉으로는 활기차 보였지만, 눈물 어린 향수의 저류가 느껴졌어요.',
  ex4 = 'My uncle was ebullient on the surface, yet I sensed an undercurrent of lachrymose loneliness.', ex4_ko = '삼촌은 겉으로는 활기차 보였지만, 눈물 어린 외로움의 저류가 느껴졌어요.',
  ex5 = 'The reunion was ebullient on the surface, yet I sensed an undercurrent of lachrymose absence.', ex5_ko = '동창회는 겉으로는 활기차 보였지만, 눈물 어린 부재의 저류가 느껴졌어요.'
WHERE id = 's_emotion_C2_06';

UPDATE sentences SET
  ex1 = 'It is only in retrospect that I can appreciate the formative role those struggles played.', ex1_ko = '이제 돌이켜보니 그 시련들이 한 형성적 역할이 비로소 감사하게 느껴져요.',
  ex2 = 'It is only in retrospect that I can appreciate the wisdom of her quiet counsel.', ex2_ko = '이제 돌이켜보니 그녀의 조용한 조언이 가진 지혜가 비로소 감사하게 느껴져요.',
  ex3 = 'It is only in retrospect that I can appreciate how much my mentor shaped me.', ex3_ko = '이제 돌이켜보니 멘토가 저를 얼마나 형성했는지 비로소 감사하게 느껴져요.',
  ex4 = 'It is only in retrospect that I can appreciate the beauty of those ordinary days.', ex4_ko = '이제 돌이켜보니 그 평범한 날들의 아름다움이 비로소 감사하게 느껴져요.',
  ex5 = 'It is only in retrospect that I can appreciate the rarity of such a friendship.', ex5_ko = '이제 돌이켜보니 그런 우정의 희귀함이 비로소 감사하게 느껴져요.'
WHERE id = 's_emotion_C2_07';
