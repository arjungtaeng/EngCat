-- supabase-words-emotion-examples.sql
-- emotion topic: 기존 단어에 예문 2~5번 추가
-- 210 UPDATE statements
-- Generated: 2026-05-25

-- ══════════════════════════════════════
-- A1 (35개)
-- ══════════════════════════════════════

UPDATE words SET
  example_en_2 = 'She was happy when her best friend came to visit.',
  example_ko_2 = '그녀는 가장 친한 친구가 방문했을 때 행복했어요.',
  example_en_3 = 'The kids felt happy after a long day at the park.',
  example_ko_3 = '아이들은 공원에서 긴 하루를 보낸 후 행복해했어요.',
  example_en_4 = 'I am happy with how everything turned out.',
  example_ko_4 = '모든 게 잘 풀려서 저는 행복해요.',
  example_en_5 = 'He looked happy carrying the flowers home.',
  example_ko_5 = '그는 꽃을 집에 가져가며 행복해 보였어요.'
WHERE id = 'w_emotion_A1_01';

UPDATE words SET
  example_en_2 = 'I felt sad when my cat ran away.',
  example_ko_2 = '고양이가 도망갔을 때 슬펐어요.',
  example_en_3 = 'She gets sad on rainy days like this.',
  example_ko_3 = '그녀는 이런 비 오는 날에 슬퍼해요.',
  example_en_4 = 'Don''t be sad — things will get better soon.',
  example_ko_4 = '슬퍼하지 마세요. 곧 나아질 거예요.',
  example_en_5 = 'The little boy looked very sad at the bus stop.',
  example_ko_5 = '그 어린 소년은 버스 정류장에서 매우 슬퍼 보였어요.'
WHERE id = 'w_emotion_A1_02';

UPDATE words SET
  example_en_2 = 'My dad got angry when I broke the window.',
  example_ko_2 = '제가 창문을 깨자 아빠가 화를 냈어요.',
  example_en_3 = 'Please don''t be angry with me.',
  example_ko_3 = '저한테 화내지 마세요.',
  example_en_4 = 'She was angry about the noise next door.',
  example_ko_4 = '그녀는 옆집 소음 때문에 화가 났어요.',
  example_en_5 = 'He looked angry but said nothing.',
  example_ko_5 = '그는 화나 보였지만 아무 말도 하지 않았어요.'
WHERE id = 'w_emotion_A1_03';

UPDATE words SET
  example_en_2 = 'She felt tired after running every morning.',
  example_ko_2 = '매일 아침 달리기 후에 그녀는 피곤했어요.',
  example_en_3 = 'My eyes are tired from too much screen time.',
  example_ko_3 = '화면을 너무 많이 봐서 눈이 피곤해요.',
  example_en_4 = 'The kids were tired and went to bed early.',
  example_ko_4 = '아이들은 피곤해서 일찍 잠자리에 들었어요.',
  example_en_5 = 'I get tired easily these days.',
  example_ko_5 = '요즘 쉽게 피곤해져요.'
WHERE id = 'w_emotion_A1_04';

UPDATE words SET
  example_en_2 = 'I am scared of big dogs.',
  example_ko_2 = '저는 큰 개가 무서워요.',
  example_en_3 = 'She was scared during the thunderstorm.',
  example_ko_3 = '그녀는 천둥 번개 동안 무서워했어요.',
  example_en_4 = 'Don''t be scared — I''m right here with you.',
  example_ko_4 = '무서워하지 마세요. 제가 옆에 있어요.',
  example_en_5 = 'He felt scared on his first day of school.',
  example_ko_5 = '그는 학교 첫날에 무서웠어요.'
WHERE id = 'w_emotion_A1_05';

UPDATE words SET
  example_en_2 = 'I''m so excited to see you tomorrow!',
  example_ko_2 = '내일 만날 생각에 너무 신나요!',
  example_en_3 = 'The kids were excited about the trip to the zoo.',
  example_ko_3 = '아이들은 동물원 여행에 신나 있었어요.',
  example_en_4 = 'He was excited when he opened the present.',
  example_ko_4 = '그는 선물을 열어보고 신이 났어요.',
  example_en_5 = 'We''re all excited for the weekend.',
  example_ko_5 = '우리는 모두 주말이 기대돼요.'
WHERE id = 'w_emotion_A1_06';

UPDATE words SET
  example_en_2 = 'I feel good after a warm shower.',
  example_ko_2 = '따뜻한 샤워 후에 기분이 좋아요.',
  example_en_3 = 'She looks good in that blue dress.',
  example_ko_3 = '그녀는 그 파란 드레스를 입으니 좋아 보여요.',
  example_en_4 = 'The food smells really good.',
  example_ko_4 = '음식 냄새가 정말 좋아요.',
  example_en_5 = 'It''s good to see you again.',
  example_ko_5 = '다시 만나서 좋아요.'
WHERE id = 'w_emotion_A1_07';

UPDATE words SET
  example_en_2 = 'I had a bad day at work today.',
  example_ko_2 = '오늘 회사에서 안 좋은 하루를 보냈어요.',
  example_en_3 = 'The weather is bad this morning.',
  example_ko_3 = '오늘 아침 날씨가 안 좋아요.',
  example_en_4 = 'I feel bad about missing your call.',
  example_ko_4 = '전화를 못 받아서 미안해요.',
  example_en_5 = 'That was a bad joke.',
  example_ko_5 = '그건 별로인 농담이었어요.'
WHERE id = 'w_emotion_A1_08';

UPDATE words SET
  example_en_2 = 'The weather is fine for a walk today.',
  example_ko_2 = '오늘 산책하기에 날씨가 좋아요.',
  example_en_3 = 'She said she was fine, but her eyes said otherwise.',
  example_ko_3 = '그녀는 괜찮다고 했지만 눈빛은 그렇지 않았어요.',
  example_en_4 = 'Everything will be fine in the end.',
  example_ko_4 = '결국 다 괜찮아질 거예요.',
  example_en_5 = 'I''m fine, just a little tired.',
  example_ko_5 = '괜찮아요, 조금 피곤할 뿐이에요.'
WHERE id = 'w_emotion_A1_09';

UPDATE words SET
  example_en_2 = 'Is it okay if I sit here?',
  example_ko_2 = '여기 앉아도 괜찮을까요?',
  example_en_3 = 'She''s okay now after taking some rest.',
  example_ko_3 = '그녀는 쉬고 나서 이제 괜찮아요.',
  example_en_4 = 'It''s okay to ask for help.',
  example_ko_4 = '도움을 요청해도 괜찮아요.',
  example_en_5 = 'Are you okay after the long flight?',
  example_ko_5 = '긴 비행 후에 괜찮으세요?'
WHERE id = 'w_emotion_A1_10';

UPDATE words SET
  example_en_2 = 'She loves to read books before bed.',
  example_ko_2 = '그녀는 자기 전에 책 읽는 것을 정말 좋아해요.',
  example_en_3 = 'I love my new puppy so much.',
  example_ko_3 = '새로 온 강아지를 정말 사랑해요.',
  example_en_4 = 'They love going to the beach in summer.',
  example_ko_4 = '그들은 여름에 해변에 가는 것을 정말 좋아해요.',
  example_en_5 = 'He loves his grandmother very much.',
  example_ko_5 = '그는 할머니를 매우 사랑해요.'
WHERE id = 'w_emotion_A1_11';

UPDATE words SET
  example_en_2 = 'I like coffee more than tea.',
  example_ko_2 = '저는 차보다 커피를 더 좋아해요.',
  example_en_3 = 'She likes playing the piano on weekends.',
  example_ko_3 = '그녀는 주말에 피아노 치는 것을 좋아해요.',
  example_en_4 = 'My kids like animated movies.',
  example_ko_4 = '저희 아이들은 애니메이션 영화를 좋아해요.',
  example_en_5 = 'I really like your new haircut.',
  example_ko_5 = '새로운 헤어스타일이 정말 마음에 들어요.'
WHERE id = 'w_emotion_A1_12';

UPDATE words SET
  example_en_2 = 'She hates waking up early.',
  example_ko_2 = '그녀는 일찍 일어나는 걸 정말 싫어해요.',
  example_en_3 = 'I hate when people are rude on the phone.',
  example_ko_3 = '전화로 무례하게 구는 사람들이 정말 싫어요.',
  example_en_4 = 'He hates spicy food.',
  example_ko_4 = '그는 매운 음식을 싫어해요.',
  example_en_5 = 'They hate cleaning the kitchen.',
  example_ko_5 = '그들은 부엌 청소하는 것을 싫어해요.'
WHERE id = 'w_emotion_A1_13';

UPDATE words SET
  example_en_2 = 'The baby began to cry in the middle of the night.',
  example_ko_2 = '아기가 한밤중에 울기 시작했어요.',
  example_en_3 = 'He tried not to cry at the funeral.',
  example_ko_3 = '그는 장례식에서 울지 않으려고 했어요.',
  example_en_4 = 'Some people cry when they are very happy.',
  example_ko_4 = '어떤 사람들은 너무 기쁠 때 울어요.',
  example_en_5 = 'It''s okay to cry — you don''t have to hold it in.',
  example_ko_5 = '울어도 괜찮아요. 참지 않아도 돼요.'
WHERE id = 'w_emotion_A1_14';

UPDATE words SET
  example_en_2 = 'The baby smiled at her mother.',
  example_ko_2 = '아기는 엄마를 보고 미소 지었어요.',
  example_en_3 = 'Please smile for the photo.',
  example_ko_3 = '사진을 위해 웃어 주세요.',
  example_en_4 = 'She smiled politely at the stranger.',
  example_ko_4 = '그녀는 낯선 사람에게 공손히 미소 지었어요.',
  example_en_5 = 'He smiled at the memory of that summer.',
  example_ko_5 = '그는 그 여름의 추억에 미소 지었어요.'
WHERE id = 'w_emotion_A1_15';

UPDATE words SET
  example_en_2 = 'The kids laughed when the dog rolled over.',
  example_ko_2 = '강아지가 구르자 아이들이 웃었어요.',
  example_en_3 = 'She laughed so hard her stomach hurt.',
  example_ko_3 = '그녀는 너무 웃어서 배가 아팠어요.',
  example_en_4 = 'Don''t laugh at me, I''m serious.',
  example_ko_4 = '저를 비웃지 마세요. 진심이에요.',
  example_en_5 = 'We laughed all night during the comedy show.',
  example_ko_5 = '코미디 쇼 동안 우리는 밤새 웃었어요.'
WHERE id = 'w_emotion_A1_16';

UPDATE words SET
  example_en_2 = 'I feel happy when I see my dog.',
  example_ko_2 = '강아지를 보면 행복함을 느껴요.',
  example_en_3 = 'She felt cold and put on a sweater.',
  example_ko_3 = '그녀는 추워서 스웨터를 입었어요.',
  example_en_4 = 'How do you feel about the new plan?',
  example_ko_4 = '새 계획에 대해 어떻게 느끼세요?',
  example_en_5 = 'I feel a little nervous before the test.',
  example_ko_5 = '시험 전에 조금 긴장돼요.'
WHERE id = 'w_emotion_A1_17';

UPDATE words SET
  example_en_2 = 'You did a great job on the presentation.',
  example_ko_2 = '발표 정말 잘하셨어요.',
  example_en_3 = 'The food at this restaurant is great.',
  example_ko_3 = '이 식당 음식이 정말 좋아요.',
  example_en_4 = 'It''s great to hear from you again.',
  example_ko_4 = '다시 연락받게 되어 정말 좋아요.',
  example_en_5 = 'We had a great time at the beach.',
  example_ko_5 = '우리는 해변에서 정말 즐거운 시간을 보냈어요.'
WHERE id = 'w_emotion_A1_18';

UPDATE words SET
  example_en_2 = 'I''m sorry I''m late.',
  example_ko_2 = '늦어서 죄송해요.',
  example_en_3 = 'She felt sorry for the lost puppy.',
  example_ko_3 = '그녀는 길 잃은 강아지가 안쓰러웠어요.',
  example_en_4 = 'I''m sorry to hear about your grandfather.',
  example_ko_4 = '할아버지 일은 정말 안타까워요.',
  example_en_5 = 'He said sorry, but it was too late.',
  example_ko_5 = '그는 미안하다고 했지만 너무 늦었어요.'
WHERE id = 'w_emotion_A1_19';

UPDATE words SET
  example_en_2 = 'My mom is always worried about my driving.',
  example_ko_2 = '엄마는 항상 제 운전을 걱정해요.',
  example_en_3 = 'She had a worried look on her face.',
  example_ko_3 = '그녀의 얼굴에 걱정스러운 표정이 있었어요.',
  example_en_4 = 'Don''t look so worried — everything is fine.',
  example_ko_4 = '그렇게 걱정하지 마세요. 다 괜찮아요.',
  example_en_5 = 'He sounded worried on the phone.',
  example_ko_5 = '그는 전화상으로 걱정스러워 보였어요.'
WHERE id = 'w_emotion_A1_20';

UPDATE words SET
  example_en_2 = 'The kids got bored after an hour of waiting.',
  example_ko_2 = '아이들은 한 시간 기다린 후 지루해했어요.',
  example_en_3 = 'I never get bored when I read good books.',
  example_ko_3 = '좋은 책을 읽으면 절대 지루하지 않아요.',
  example_en_4 = 'She was bored during the long flight.',
  example_ko_4 = '그녀는 긴 비행 동안 지루해했어요.',
  example_en_5 = 'He looked bored at the family dinner.',
  example_ko_5 = '그는 가족 저녁 식사에서 지루해 보였어요.'
WHERE id = 'w_emotion_A1_21';

UPDATE words SET
  example_en_2 = 'I get hungry around three in the afternoon.',
  example_ko_2 = '오후 세 시쯤 배가 고파져요.',
  example_en_3 = 'The kids were hungry after playing all day.',
  example_ko_3 = '아이들은 하루 종일 놀고 나서 배가 고팠어요.',
  example_en_4 = 'I''m always hungry after a workout.',
  example_ko_4 = '운동 후에는 항상 배가 고파요.',
  example_en_5 = 'Are you hungry? I made some pasta.',
  example_ko_5 = '배고프세요? 파스타 만들어 놨어요.'
WHERE id = 'w_emotion_A1_22';

UPDATE words SET
  example_en_2 = 'He felt lonely during the holidays.',
  example_ko_2 = '그는 휴일 동안 외로움을 느꼈어요.',
  example_en_3 = 'It''s lonely working from home all day.',
  example_ko_3 = '하루 종일 재택근무를 하면 외로워요.',
  example_en_4 = 'The old man looked lonely in the park.',
  example_ko_4 = '공원에서 그 노인은 외로워 보였어요.',
  example_en_5 = 'Sometimes I feel lonely even in a crowd.',
  example_ko_5 = '가끔은 사람들 속에서도 외로움을 느껴요.'
WHERE id = 'w_emotion_A1_23';

UPDATE words SET
  example_en_2 = 'She has a calm voice that puts people at ease.',
  example_ko_2 = '그녀는 사람들을 편안하게 하는 차분한 목소리를 가지고 있어요.',
  example_en_3 = 'The lake was calm in the early morning.',
  example_ko_3 = '이른 아침 호수가 평온했어요.',
  example_en_4 = 'Try to stay calm during the interview.',
  example_ko_4 = '면접 동안 침착함을 유지하려고 해보세요.',
  example_en_5 = 'He remained calm even when things got tough.',
  example_ko_5 = '상황이 어려워졌을 때도 그는 차분했어요.'
WHERE id = 'w_emotion_A1_24';

UPDATE words SET
  example_en_2 = 'Look at the baby''s cute little shoes.',
  example_ko_2 = '아기의 귀여운 작은 신발 좀 보세요.',
  example_en_3 = 'She has such a cute smile.',
  example_ko_3 = '그녀는 정말 귀여운 미소를 가지고 있어요.',
  example_en_4 = 'What a cute idea for the party!',
  example_ko_4 = '파티에 정말 귀여운 아이디어네요!',
  example_en_5 = 'The cute kitten followed me home.',
  example_ko_5 = '귀여운 새끼 고양이가 저를 따라 집에 왔어요.'
WHERE id = 'w_emotion_A1_25';

UPDATE words SET
  example_en_2 = 'Don''t be mad — it was just a joke.',
  example_ko_2 = '화내지 마세요. 그냥 농담이었어요.',
  example_en_3 = 'She got mad at me for being late.',
  example_ko_3 = '제가 늦었다고 그녀가 화를 냈어요.',
  example_en_4 = 'He looked mad after reading the email.',
  example_ko_4 = '그는 이메일을 읽고 화나 보였어요.',
  example_en_5 = 'I''m not mad, just a little disappointed.',
  example_ko_5 = '화난 게 아니에요, 좀 실망스러울 뿐이에요.'
WHERE id = 'w_emotion_A1_26';

UPDATE words SET
  example_en_2 = 'She looked surprised when I called her name.',
  example_ko_2 = '제가 이름을 부르자 그녀가 놀란 표정을 지었어요.',
  example_en_3 = 'I was surprised to find a letter in the mailbox.',
  example_ko_3 = '우편함에서 편지를 발견하고 놀랐어요.',
  example_en_4 = 'He was surprised by how kind everyone was.',
  example_ko_4 = '그는 모두가 얼마나 친절한지에 놀랐어요.',
  example_en_5 = 'Don''t be surprised if she says no.',
  example_ko_5 = '그녀가 거절해도 놀라지 마세요.'
WHERE id = 'w_emotion_A1_27';

UPDATE words SET
  example_en_2 = 'My little brother is afraid of the dark.',
  example_ko_2 = '제 남동생은 어둠을 무서워해요.',
  example_en_3 = 'She was afraid to speak in front of everyone.',
  example_ko_3 = '그녀는 모든 사람 앞에서 말하는 게 무서웠어요.',
  example_en_4 = 'Don''t be afraid to ask questions.',
  example_ko_4 = '질문하는 것을 두려워하지 마세요.',
  example_en_5 = 'I''m afraid we are out of milk.',
  example_ko_5 = '안타깝게도 우유가 다 떨어졌어요.'
WHERE id = 'w_emotion_A1_28';

UPDATE words SET
  example_en_2 = 'I was hurt by his sudden silence.',
  example_ko_2 = '그의 갑작스러운 침묵에 상처받았어요.',
  example_en_3 = 'She felt hurt when no one called her.',
  example_ko_3 = '아무도 전화하지 않아서 그녀는 상처받았어요.',
  example_en_4 = 'It hurt to hear what he said.',
  example_ko_4 = '그가 한 말을 듣고 상처가 됐어요.',
  example_en_5 = 'My feelings were hurt by their joke.',
  example_ko_5 = '그들의 농담에 제 기분이 상했어요.'
WHERE id = 'w_emotion_A1_29';

UPDATE words SET
  example_en_2 = 'I felt sick after eating too much candy.',
  example_ko_2 = '사탕을 너무 많이 먹어서 속이 안 좋았어요.',
  example_en_3 = 'She''s been sick all week with the flu.',
  example_ko_3 = '그녀는 독감으로 일주일 내내 아팠어요.',
  example_en_4 = 'The smell made me feel sick.',
  example_ko_4 = '그 냄새 때문에 속이 안 좋아졌어요.',
  example_en_5 = 'He stayed home because he was sick.',
  example_ko_5 = '그는 아파서 집에 있었어요.'
WHERE id = 'w_emotion_A1_30';

UPDATE words SET
  example_en_2 = 'She was scared to go on stage alone.',
  example_ko_2 = '그녀는 혼자 무대에 오르는 게 겁났어요.',
  example_en_3 = 'I''m a little scared about moving to a new city.',
  example_ko_3 = '새 도시로 이사 가는 게 조금 겁나요.',
  example_en_4 = 'He looked scared but didn''t back down.',
  example_ko_4 = '그는 겁먹어 보였지만 물러서지 않았어요.',
  example_en_5 = 'The cat seems scared of the vacuum cleaner.',
  example_ko_5 = '고양이가 청소기를 겁내는 것 같아요.'
WHERE id = 'w_emotion_A1_31';

UPDATE words SET
  example_en_2 = 'His parents were proud when he graduated.',
  example_ko_2 = '그가 졸업했을 때 부모님은 자랑스러워했어요.',
  example_en_3 = 'I''m proud to be part of this team.',
  example_ko_3 = '이 팀의 일원이라는 게 자랑스러워요.',
  example_en_4 = 'She felt proud after finishing the marathon.',
  example_ko_4 = '그녀는 마라톤을 완주하고 자랑스러웠어요.',
  example_en_5 = 'He wore a proud smile at the awards.',
  example_ko_5 = '그는 시상식에서 자랑스러운 미소를 지었어요.'
WHERE id = 'w_emotion_A1_32';

UPDATE words SET
  example_en_2 = 'He''s shy and doesn''t talk much in class.',
  example_ko_2 = '그는 수줍어서 수업 중에 말을 많이 하지 않아요.',
  example_en_3 = 'I used to be shy when I was younger.',
  example_ko_3 = '어렸을 때는 저도 수줍은 편이었어요.',
  example_en_4 = 'The shy girl smiled and looked away.',
  example_ko_4 = '수줍은 소녀가 웃으며 시선을 돌렸어요.',
  example_en_5 = 'Don''t be shy — come and say hi.',
  example_ko_5 = '수줍어하지 말고 와서 인사해요.'
WHERE id = 'w_emotion_A1_33';

UPDATE words SET
  example_en_2 = 'It was very kind of you to help me.',
  example_ko_2 = '저를 도와주셔서 정말 친절하셨어요.',
  example_en_3 = 'The kind neighbour brought us soup.',
  example_ko_3 = '친절한 이웃이 저희에게 수프를 가져다줬어요.',
  example_en_4 = 'She is kind to everyone she meets.',
  example_ko_4 = '그녀는 만나는 모든 사람에게 친절해요.',
  example_en_5 = 'Thank you for your kind words.',
  example_ko_5 = '친절한 말씀 감사해요.'
WHERE id = 'w_emotion_A1_34';

UPDATE words SET
  example_en_2 = 'We had so much fun at the party.',
  example_ko_2 = '우리는 파티에서 정말 즐거웠어요.',
  example_en_3 = 'Learning a new language can be fun.',
  example_ko_3 = '새로운 언어를 배우는 건 즐거울 수 있어요.',
  example_en_4 = 'The kids had fun playing in the snow.',
  example_ko_4 = '아이들은 눈에서 놀며 재미있게 보냈어요.',
  example_en_5 = 'It''s fun to cook with friends.',
  example_ko_5 = '친구들과 요리하는 건 즐거워요.'
WHERE id = 'w_emotion_A1_35';

-- ══════════════════════════════════════
-- A2 (35개)
-- ══════════════════════════════════════

UPDATE words SET
  example_en_2 = 'She was surprised to see her old friend at the café.',
  example_ko_2 = '그녀는 카페에서 옛 친구를 보고 놀랐어요.',
  example_en_3 = 'I''m a little surprised that he hasn''t called yet.',
  example_ko_3 = '그가 아직 전화하지 않아서 좀 놀랐어요.',
  example_en_4 = 'He looked genuinely surprised by the result.',
  example_ko_4 = '그는 결과에 진심으로 놀란 듯 보였어요.',
  example_en_5 = 'Everyone was surprised at how well she performed.',
  example_ko_5 = '그녀의 훌륭한 연기에 모두가 놀랐어요.'
WHERE id = 'w_emotion_A2_01';

UPDATE words SET
  example_en_2 = 'My parents get worried if I don''t text them back.',
  example_ko_2 = '제가 답장하지 않으면 부모님이 걱정해요.',
  example_en_3 = 'She seemed worried during the entire flight.',
  example_ko_3 = '그녀는 비행 내내 걱정스러워 보였어요.',
  example_en_4 = 'I''m worried that we might miss the train.',
  example_ko_4 = '기차를 놓칠까 봐 걱정돼요.',
  example_en_5 = 'He was worried about his mother''s health.',
  example_ko_5 = '그는 어머니의 건강을 걱정했어요.'
WHERE id = 'w_emotion_A2_02';

UPDATE words SET
  example_en_2 = 'The students looked bored during the lecture.',
  example_ko_2 = '학생들이 강의 동안 지루해 보였어요.',
  example_en_3 = 'I get bored when there''s nothing to do at home.',
  example_ko_3 = '집에 할 일이 없으면 지루해져요.',
  example_en_4 = 'She was bored of doing the same job every day.',
  example_ko_4 = '그녀는 매일 같은 일을 하는 게 지루했어요.',
  example_en_5 = 'Don''t get bored — we''ll be there soon.',
  example_ko_5 = '지루해하지 마세요. 곧 도착해요.'
WHERE id = 'w_emotion_A2_03';

UPDATE words SET
  example_en_2 = 'I''m confused about which bus to take.',
  example_ko_2 = '어떤 버스를 타야 할지 헷갈려요.',
  example_en_3 = 'She looked confused when the teacher explained it.',
  example_ko_3 = '선생님이 설명할 때 그녀는 혼란스러워 보였어요.',
  example_en_4 = 'He gave me a confused look and walked away.',
  example_ko_4 = '그는 혼란스러운 표정을 짓고 가버렸어요.',
  example_en_5 = 'Sorry, I''m a little confused about the schedule.',
  example_ko_5 = '죄송한데, 일정이 좀 헷갈려요.'
WHERE id = 'w_emotion_A2_04';

UPDATE words SET
  example_en_2 = 'His parents were proud when he got the scholarship.',
  example_ko_2 = '그가 장학금을 받자 부모님이 뿌듯해했어요.',
  example_en_3 = 'I felt proud of my team after the win.',
  example_ko_3 = '승리 후에 우리 팀이 자랑스러웠어요.',
  example_en_4 = 'She is proud of how far she has come.',
  example_ko_4 = '그녀는 자신이 얼마나 성장했는지 자랑스러워해요.',
  example_en_5 = 'Be proud of yourself for trying.',
  example_ko_5 = '시도한 것에 대해 자신을 자랑스러워하세요.'
WHERE id = 'w_emotion_A2_05';

UPDATE words SET
  example_en_2 = 'She was nervous about meeting his family.',
  example_ko_2 = '그녀는 그의 가족을 만나는 것에 긴장했어요.',
  example_en_3 = 'I always get nervous when I have to speak in public.',
  example_ko_3 = '대중 앞에서 말해야 할 때 항상 긴장해요.',
  example_en_4 = 'Don''t be nervous — you''ll do great.',
  example_ko_4 = '긴장하지 마세요. 잘 하실 거예요.',
  example_en_5 = 'He felt nervous walking into the interview room.',
  example_ko_5 = '그는 면접실에 들어가며 긴장했어요.'
WHERE id = 'w_emotion_A2_06';

UPDATE words SET
  example_en_2 = 'She was upset because her flight was cancelled.',
  example_ko_2 = '그녀는 비행기가 취소되어 속상해했어요.',
  example_en_3 = 'Please don''t be upset with me.',
  example_ko_3 = '저한테 속상해하지 마세요.',
  example_en_4 = 'He got upset when he heard the news.',
  example_ko_4 = '그는 그 소식을 듣고 속상해했어요.',
  example_en_5 = 'I''m upset that you didn''t tell me earlier.',
  example_ko_5 = '더 일찍 말해주지 않은 게 속상해요.'
WHERE id = 'w_emotion_A2_07';

UPDATE words SET
  example_en_2 = 'I feel relaxed when I listen to soft music.',
  example_ko_2 = '잔잔한 음악을 들으면 편안해져요.',
  example_en_3 = 'She looked relaxed sitting on the balcony.',
  example_ko_3 = '그녀는 발코니에 앉아 편안해 보였어요.',
  example_en_4 = 'The atmosphere of the café was very relaxed.',
  example_ko_4 = '그 카페의 분위기는 매우 편안했어요.',
  example_en_5 = 'He felt more relaxed after the holiday.',
  example_ko_5 = '그는 휴가 후에 더 편안해졌어요.'
WHERE id = 'w_emotion_A2_08';

UPDATE words SET
  example_en_2 = 'I''m grateful for everything my parents have done.',
  example_ko_2 = '부모님이 해주신 모든 것에 감사해요.',
  example_en_3 = 'She felt grateful to have such kind friends.',
  example_ko_3 = '그녀는 그런 친절한 친구들이 있어서 감사했어요.',
  example_en_4 = 'He sent a grateful message after the favour.',
  example_ko_4 = '그는 도움을 받은 후 감사한 메시지를 보냈어요.',
  example_en_5 = 'We''re so grateful for your patience.',
  example_ko_5 = '인내심에 정말 감사드려요.'
WHERE id = 'w_emotion_A2_09';

UPDATE words SET
  example_en_2 = 'She felt lonely after her best friend moved abroad.',
  example_ko_2 = '가장 친한 친구가 외국으로 이사 간 후 외로웠어요.',
  example_en_3 = 'The empty house felt lonely without him.',
  example_ko_3 = '그가 없는 빈 집은 외롭게 느껴졌어요.',
  example_en_4 = 'Sometimes I get lonely on Sunday afternoons.',
  example_ko_4 = '가끔 일요일 오후에 외로움을 느껴요.',
  example_en_5 = 'He looked lonely sitting by himself in the park.',
  example_ko_5 = '그는 공원에 혼자 앉아 외로워 보였어요.'
WHERE id = 'w_emotion_A2_10';

UPDATE words SET
  example_en_2 = 'She was disappointed when she didn''t get the job.',
  example_ko_2 = '그녀는 일자리를 얻지 못해 실망했어요.',
  example_en_3 = 'I felt disappointed by the movie''s ending.',
  example_ko_3 = '영화 결말에 실망스러웠어요.',
  example_en_4 = 'Don''t be disappointed — there will be other chances.',
  example_ko_4 = '실망하지 마세요. 다른 기회들이 있을 거예요.',
  example_en_5 = 'He was disappointed that his friends forgot.',
  example_ko_5 = '친구들이 잊은 것에 그는 실망했어요.'
WHERE id = 'w_emotion_A2_11';

UPDATE words SET
  example_en_2 = 'The kids were excited to open their presents.',
  example_ko_2 = '아이들은 선물을 열어보는 것에 신나 있었어요.',
  example_en_3 = 'She was excited about starting her new job.',
  example_ko_3 = '그녀는 새 직장을 시작하는 것에 기대돼 있었어요.',
  example_en_4 = 'I''m excited to try the new restaurant downtown.',
  example_ko_4 = '시내 새 식당을 가보는 게 기대돼요.',
  example_en_5 = 'He sounded excited on the phone.',
  example_ko_5 = '그는 전화상으로 신난 목소리였어요.'
WHERE id = 'w_emotion_A2_12';

UPDATE words SET
  example_en_2 = 'He was jealous of his brother''s new bike.',
  example_ko_2 = '그는 형의 새 자전거를 부러워했어요.',
  example_en_3 = 'I''m a little jealous of how easily she makes friends.',
  example_ko_3 = '그녀가 친구를 쉽게 사귀는 게 좀 부러워요.',
  example_en_4 = 'She tried not to feel jealous of her colleague.',
  example_ko_4 = '그녀는 동료를 질투하지 않으려 했어요.',
  example_en_5 = 'Don''t get jealous over little things.',
  example_ko_5 = '사소한 일로 질투하지 마세요.'
WHERE id = 'w_emotion_A2_13';

UPDATE words SET
  example_en_2 = 'I was so embarrassed when I spilled coffee on my boss.',
  example_ko_2 = '상사에게 커피를 쏟아서 너무 창피했어요.',
  example_en_3 = 'She felt embarrassed singing in front of everyone.',
  example_ko_3 = '그녀는 모든 사람 앞에서 노래하는 게 창피했어요.',
  example_en_4 = 'Don''t be embarrassed — everyone makes mistakes.',
  example_ko_4 = '창피해하지 마세요. 누구나 실수해요.',
  example_en_5 = 'He looked embarrassed by all the attention.',
  example_ko_5 = '그는 모든 관심에 당황한 듯 보였어요.'
WHERE id = 'w_emotion_A2_14';

UPDATE words SET
  example_en_2 = 'She felt hopeful after talking with her mentor.',
  example_ko_2 = '그녀는 멘토와 이야기한 후 희망이 생겼어요.',
  example_en_3 = 'I''m hopeful that things will improve soon.',
  example_ko_3 = '곧 상황이 나아질 거라고 희망을 품고 있어요.',
  example_en_4 = 'The team was hopeful about winning the next game.',
  example_ko_4 = '팀은 다음 경기에서 이길 것에 희망적이었어요.',
  example_en_5 = 'Stay hopeful, even when things are hard.',
  example_ko_5 = '힘들 때도 희망을 잃지 마세요.'
WHERE id = 'w_emotion_A2_15';

UPDATE words SET
  example_en_2 = 'He was angry that no one listened to him.',
  example_ko_2 = '아무도 자기 말을 듣지 않아서 그는 화가 났어요.',
  example_en_3 = 'She gets angry when she''s hungry.',
  example_ko_3 = '그녀는 배고프면 화를 내요.',
  example_en_4 = 'I''m angry with myself for forgetting again.',
  example_ko_4 = '또 잊어버린 자신에게 화가 나요.',
  example_en_5 = 'The customer was angry about the long wait.',
  example_ko_5 = '손님은 긴 기다림 때문에 화가 났어요.'
WHERE id = 'w_emotion_A2_16';

UPDATE words SET
  example_en_2 = 'Her cheerful greeting brightened my day.',
  example_ko_2 = '그녀의 명랑한 인사가 제 하루를 밝게 해줬어요.',
  example_en_3 = 'He gave a cheerful wave from across the street.',
  example_ko_3 = '그는 길 건너편에서 쾌활하게 손을 흔들었어요.',
  example_en_4 = 'The cheerful music made everyone dance.',
  example_ko_4 = '명랑한 음악에 모두가 춤을 췄어요.',
  example_en_5 = 'She tried to sound cheerful on the phone.',
  example_ko_5 = '그녀는 전화상으로 밝게 들리려고 했어요.'
WHERE id = 'w_emotion_A2_17';

UPDATE words SET
  example_en_2 = 'She felt confident walking into the interview.',
  example_ko_2 = '그녀는 면접에 들어가며 자신감을 느꼈어요.',
  example_en_3 = 'He''s confident that the plan will work.',
  example_ko_3 = '그는 계획이 잘 될 거라고 확신해요.',
  example_en_4 = 'I''m more confident in English now.',
  example_ko_4 = '이제 영어에 더 자신감이 있어요.',
  example_en_5 = 'A confident smile can change everything.',
  example_ko_5 = '자신감 있는 미소가 모든 걸 바꿀 수 있어요.'
WHERE id = 'w_emotion_A2_18';

UPDATE words SET
  example_en_2 = 'He felt anxious waiting for the results.',
  example_ko_2 = '그는 결과를 기다리며 불안했어요.',
  example_en_3 = 'She gets anxious in crowded places.',
  example_ko_3 = '그녀는 사람이 많은 곳에서 불안해해요.',
  example_en_4 = 'I''m a bit anxious about the trip.',
  example_ko_4 = '여행에 대해 조금 불안해요.',
  example_en_5 = 'He sounded anxious on the phone last night.',
  example_ko_5 = '그는 어젯밤 전화상으로 불안해 보였어요.'
WHERE id = 'w_emotion_A2_19';

UPDATE words SET
  example_en_2 = 'I feel comfortable in this old sweater.',
  example_ko_2 = '이 오래된 스웨터를 입으면 편안해요.',
  example_en_3 = 'She made me feel comfortable from the start.',
  example_ko_3 = '그녀는 처음부터 저를 편안하게 해줬어요.',
  example_en_4 = 'The couch is so comfortable I could sleep here.',
  example_ko_4 = '소파가 너무 편해서 여기서 잘 수도 있을 것 같아요.',
  example_en_5 = 'Are you comfortable with the temperature?',
  example_ko_5 = '온도가 편안하세요?'
WHERE id = 'w_emotion_A2_20';

UPDATE words SET
  example_en_2 = 'She was scared to drive in the snow for the first time.',
  example_ko_2 = '그녀는 처음으로 눈길에서 운전하는 게 무서웠어요.',
  example_en_3 = 'He''s scared of heights, so he avoids tall buildings.',
  example_ko_3 = '그는 고소공포증이 있어서 높은 건물을 피해요.',
  example_en_4 = 'I''m a little scared of trying new food.',
  example_ko_4 = '새로운 음식을 먹어 보는 게 좀 무서워요.',
  example_en_5 = 'The dog looked scared during the storm.',
  example_ko_5 = '강아지가 폭풍 동안 겁먹어 보였어요.'
WHERE id = 'w_emotion_A2_21';

UPDATE words SET
  example_en_2 = 'She felt content with a cup of tea and a book.',
  example_ko_2 = '그녀는 차 한 잔과 책으로 만족했어요.',
  example_en_3 = 'He''s content living in a small village.',
  example_ko_3 = '그는 작은 마을에 사는 것에 만족해요.',
  example_en_4 = 'I''m content as long as my family is healthy.',
  example_ko_4 = '가족이 건강한 한 저는 만족해요.',
  example_en_5 = 'They looked content sitting together by the lake.',
  example_ko_5 = '그들은 호수 옆에 함께 앉아 만족스러워 보였어요.'
WHERE id = 'w_emotion_A2_22';

UPDATE words SET
  example_en_2 = 'She felt stressed before the big presentation.',
  example_ko_2 = '그녀는 큰 발표 전에 스트레스를 받았어요.',
  example_en_3 = 'He''s been stressed about money lately.',
  example_ko_3 = '그는 요즘 돈 때문에 스트레스를 받고 있어요.',
  example_en_4 = 'I get stressed when there are too many deadlines.',
  example_ko_4 = '마감이 너무 많을 때 스트레스를 받아요.',
  example_en_5 = 'You look stressed — let''s take a break.',
  example_ko_5 = '스트레스 받아 보이세요. 잠시 쉬어요.'
WHERE id = 'w_emotion_A2_23';

UPDATE words SET
  example_en_2 = 'She was delighted by the unexpected gift.',
  example_ko_2 = '그녀는 뜻밖의 선물에 기뻤어요.',
  example_en_3 = 'He looked delighted to see his cousin again.',
  example_ko_3 = '그는 사촌을 다시 만나서 기뻐 보였어요.',
  example_en_4 = 'I''m delighted to hear that you''re doing well.',
  example_ko_4 = '잘 지내신다는 소식에 기뻐요.',
  example_en_5 = 'The audience was delighted by the performance.',
  example_ko_5 = '관객은 공연에 기뻐했어요.'
WHERE id = 'w_emotion_A2_24';

UPDATE words SET
  example_en_2 = 'She felt ashamed of how she had spoken.',
  example_ko_2 = '그녀는 자신의 말투가 부끄러웠어요.',
  example_en_3 = 'He was ashamed of forgetting his mother''s birthday.',
  example_ko_3 = '그는 어머니의 생신을 잊은 것이 부끄러웠어요.',
  example_en_4 = 'Don''t be ashamed of asking for help.',
  example_ko_4 = '도움을 요청하는 것을 부끄러워하지 마세요.',
  example_en_5 = 'I''m ashamed to admit I didn''t finish the book.',
  example_ko_5 = '책을 다 읽지 못한 게 부끄러워요.'
WHERE id = 'w_emotion_A2_25';

UPDATE words SET
  example_en_2 = 'She was touched by the handwritten card.',
  example_ko_2 = '그녀는 손으로 쓴 카드에 감동받았어요.',
  example_en_3 = 'I was touched when he remembered my birthday.',
  example_ko_3 = '그가 제 생일을 기억해줘서 감동했어요.',
  example_en_4 = 'He looked touched after reading the letter.',
  example_ko_4 = '그는 편지를 읽고 감동한 듯 보였어요.',
  example_en_5 = 'We were touched by their kindness.',
  example_ko_5 = '우리는 그들의 친절에 감동받았어요.'
WHERE id = 'w_emotion_A2_26';

UPDATE words SET
  example_en_2 = 'I''m thrilled about my upcoming trip to Paris.',
  example_ko_2 = '곧 다가오는 파리 여행이 너무 기대돼요.',
  example_en_3 = 'She was thrilled when she got the call.',
  example_ko_3 = '그녀는 전화를 받고 매우 설렜어요.',
  example_en_4 = 'He sounded thrilled by the news.',
  example_ko_4 = '그는 그 소식에 매우 들뜬 듯했어요.',
  example_en_5 = 'The kids were thrilled to see the fireworks.',
  example_ko_5 = '아이들은 불꽃놀이를 보고 매우 신나 있었어요.'
WHERE id = 'w_emotion_A2_27';

UPDATE words SET
  example_en_2 = 'He felt miserable on the cold, rainy day.',
  example_ko_2 = '그는 춥고 비 오는 날에 비참함을 느꼈어요.',
  example_en_3 = 'She was miserable working at that job.',
  example_ko_3 = '그녀는 그 일을 하면서 비참했어요.',
  example_en_4 = 'I felt miserable with a heavy cold all week.',
  example_ko_4 = '심한 감기로 일주일 내내 비참한 기분이었어요.',
  example_en_5 = 'Don''t make yourself miserable over small things.',
  example_ko_5 = '작은 일로 비참해지지 마세요.'
WHERE id = 'w_emotion_A2_28';

UPDATE words SET
  example_en_2 = 'There was an awkward moment when we both spoke at once.',
  example_ko_2 = '우리가 동시에 말하는 어색한 순간이 있었어요.',
  example_en_3 = 'She felt awkward at the party where she knew nobody.',
  example_ko_3 = '그녀는 아는 사람이 아무도 없는 파티에서 어색했어요.',
  example_en_4 = 'It was an awkward conversation about money.',
  example_ko_4 = '돈에 관한 어색한 대화였어요.',
  example_en_5 = 'He gave an awkward laugh and changed the subject.',
  example_ko_5 = '그는 어색한 웃음을 짓고 주제를 바꿨어요.'
WHERE id = 'w_emotion_A2_29';

UPDATE words SET
  example_en_2 = 'She was relieved when her son arrived home safely.',
  example_ko_2 = '그녀는 아들이 무사히 집에 도착해서 안도했어요.',
  example_en_3 = 'I felt relieved after the dentist appointment was over.',
  example_ko_3 = '치과 예약이 끝나고 안도감을 느꼈어요.',
  example_en_4 = 'He looked relieved after his test results came back.',
  example_ko_4 = '그는 검사 결과를 받고 안도한 듯 보였어요.',
  example_en_5 = 'We were all relieved that nothing was broken.',
  example_ko_5 = '아무것도 부러지지 않아서 우리 모두 안도했어요.'
WHERE id = 'w_emotion_A2_30';

UPDATE words SET
  example_en_2 = 'He gets impatient when the line is too long.',
  example_ko_2 = '그는 줄이 너무 길면 초조해해요.',
  example_en_3 = 'She''s impatient to start her new project.',
  example_ko_3 = '그녀는 새 프로젝트를 빨리 시작하고 싶어 해요.',
  example_en_4 = 'Don''t be impatient — good things take time.',
  example_ko_4 = '초조해하지 마세요. 좋은 일은 시간이 걸려요.',
  example_en_5 = 'The kids were impatient for the trip to begin.',
  example_ko_5 = '아이들은 여행이 시작되기를 초조하게 기다렸어요.'
WHERE id = 'w_emotion_A2_31';

UPDATE words SET
  example_en_2 = 'I''m jealous of your beautiful garden.',
  example_ko_2 = '당신의 아름다운 정원이 부러워요.',
  example_en_3 = 'She felt jealous seeing his close family.',
  example_ko_3 = '그녀는 그의 화목한 가족을 보고 부러움을 느꼈어요.',
  example_en_4 = 'He was jealous of her artistic talent.',
  example_ko_4 = '그는 그녀의 예술적 재능이 부러웠어요.',
  example_en_5 = 'I''m a little jealous of how relaxed you seem.',
  example_ko_5 = '당신이 편안해 보이는 게 살짝 부러워요.'
WHERE id = 'w_emotion_A2_32';

UPDATE words SET
  example_en_2 = 'She felt overwhelmed by all the emails.',
  example_ko_2 = '그녀는 수많은 이메일에 압도됐어요.',
  example_en_3 = 'I''m overwhelmed by everyone''s kindness.',
  example_ko_3 = '모두의 친절에 압도돼요.',
  example_en_4 = 'He looked overwhelmed by the responsibility.',
  example_ko_4 = '그는 책임감에 압도된 듯 보였어요.',
  example_en_5 = 'It''s easy to feel overwhelmed in a new city.',
  example_ko_5 = '새 도시에서는 압도되기 쉬워요.'
WHERE id = 'w_emotion_A2_33';

UPDATE words SET
  example_en_2 = 'He was upset to hear that the picnic was cancelled.',
  example_ko_2 = '그는 피크닉이 취소됐다는 소식에 기분이 상했어요.',
  example_en_3 = 'She gets upset when people interrupt her.',
  example_ko_3 = '그녀는 사람들이 말을 끊으면 기분이 상해요.',
  example_en_4 = 'I''m upset that no one told me about the change.',
  example_ko_4 = '변경 사항에 대해 아무도 말해주지 않아서 기분이 상해요.',
  example_en_5 = 'Don''t get upset over a small mistake.',
  example_ko_5 = '작은 실수로 기분 상하지 마세요.'
WHERE id = 'w_emotion_A2_34';

UPDATE words SET
  example_en_2 = 'She has a cheerful attitude even on bad days.',
  example_ko_2 = '그녀는 안 좋은 날에도 쾌활한 태도를 가지고 있어요.',
  example_en_3 = 'His cheerful laugh filled the room.',
  example_ko_3 = '그의 쾌활한 웃음이 방을 가득 채웠어요.',
  example_en_4 = 'I love her cheerful way of speaking.',
  example_ko_4 = '그녀의 쾌활한 말투가 정말 좋아요.',
  example_en_5 = 'He gave a cheerful nod and walked on.',
  example_ko_5 = '그는 쾌활하게 고개를 끄덕이고 걸어갔어요.'
WHERE id = 'w_emotion_A2_35';

-- ══════════════════════════════════════
-- B1 (35개)
-- ══════════════════════════════════════

UPDATE words SET
  example_en_2 = 'She felt frustrated after trying the same recipe three times.',
  example_ko_2 = '그녀는 같은 레시피를 세 번이나 시도하고 답답함을 느꼈어요.',
  example_en_3 = 'He gets frustrated when his ideas are ignored at meetings.',
  example_ko_3 = '회의에서 자기 아이디어가 무시될 때 그는 답답해해요.',
  example_en_4 = 'I was so frustrated with the broken printer all morning.',
  example_ko_4 = '오전 내내 고장 난 프린터 때문에 너무 답답했어요.',
  example_en_5 = 'It''s natural to feel frustrated when progress is slow.',
  example_ko_5 = '진전이 느릴 때 답답함을 느끼는 건 당연해요.'
WHERE id = 'w_emotion_B1_01';

UPDATE words SET
  example_en_2 = 'She felt relieved when her son passed his driving test.',
  example_ko_2 = '아들이 운전 시험에 합격해서 그녀는 안도했어요.',
  example_en_3 = 'I was relieved to find my wallet in the taxi.',
  example_ko_3 = '택시 안에서 지갑을 찾아 안도했어요.',
  example_en_4 = 'He looked relieved once the meeting was finally over.',
  example_ko_4 = '회의가 드디어 끝나자 그는 안도한 모습이었어요.',
  example_en_5 = 'We were all relieved to hear that no one was hurt.',
  example_ko_5 = '아무도 다치지 않았다는 소식에 우리는 모두 안도했어요.'
WHERE id = 'w_emotion_B1_02';

UPDATE words SET
  example_en_2 = 'He felt anxious about meeting his future in-laws.',
  example_ko_2 = '그는 미래의 처가 식구를 만나는 것에 불안해했어요.',
  example_en_3 = 'She always feels anxious before flying.',
  example_ko_3 = '그녀는 비행기를 타기 전에 늘 불안해해요.',
  example_en_4 = 'I''ve been anxious about the medical test all week.',
  example_ko_4 = '일주일 내내 건강 검진 결과 때문에 불안했어요.',
  example_en_5 = 'It''s normal to feel anxious in new situations.',
  example_ko_5 = '새로운 상황에서 불안한 건 정상이에요.'
WHERE id = 'w_emotion_B1_03';

UPDATE words SET
  example_en_2 = 'She was embarrassed when her phone rang loudly in class.',
  example_ko_2 = '수업 중에 휴대폰이 크게 울려서 창피했어요.',
  example_en_3 = 'He felt embarrassed about not knowing the answer.',
  example_ko_3 = '그는 답을 모르는 것이 창피했어요.',
  example_en_4 = 'I was embarrassed by the unexpected compliment.',
  example_ko_4 = '예상치 못한 칭찬에 당황스러웠어요.',
  example_en_5 = 'Don''t be embarrassed about asking for help with English.',
  example_ko_5 = '영어 도움을 요청하는 걸 부끄러워하지 마세요.'
WHERE id = 'w_emotion_B1_04';

UPDATE words SET
  example_en_2 = 'She felt overwhelmed by the number of choices on the menu.',
  example_ko_2 = '메뉴의 선택지가 너무 많아 그녀는 압도됐어요.',
  example_en_3 = 'I get overwhelmed when too many people speak at once.',
  example_ko_3 = '한꺼번에 너무 많은 사람들이 말하면 압도돼요.',
  example_en_4 = 'He looked overwhelmed by the workload after the holiday.',
  example_ko_4 = '휴가 후 업무량에 그는 압도된 듯 보였어요.',
  example_en_5 = 'New parents often feel overwhelmed in the first weeks.',
  example_ko_5 = '새내기 부모는 첫 몇 주 동안 압도감을 자주 느껴요.'
WHERE id = 'w_emotion_B1_05';

UPDATE words SET
  example_en_2 = 'She felt content after a peaceful morning in the garden.',
  example_ko_2 = '정원에서 평온한 아침을 보낸 후 그녀는 만족스러웠어요.',
  example_en_3 = 'He is content with a small group of close friends.',
  example_ko_3 = '그는 가까운 친구 몇 명에게 만족해요.',
  example_en_4 = 'I''m content as long as my work feels meaningful.',
  example_ko_4 = '일이 의미 있게 느껴지는 한 저는 만족해요.',
  example_en_5 = 'They lead a content life in the countryside.',
  example_ko_5 = '그들은 시골에서 만족스러운 삶을 살고 있어요.'
WHERE id = 'w_emotion_B1_06';

UPDATE words SET
  example_en_2 = 'She remained hopeful even after months of job searching.',
  example_ko_2 = '몇 달간 구직을 했지만 그녀는 희망을 잃지 않았어요.',
  example_en_3 = 'He sounded hopeful in his last message to me.',
  example_ko_3 = '마지막 메시지에서 그는 희망에 차 보였어요.',
  example_en_4 = 'I''m hopeful that the treatment will help her recover.',
  example_ko_4 = '치료가 그녀의 회복에 도움이 될 거라고 희망을 가지고 있어요.',
  example_en_5 = 'Staying hopeful is sometimes the hardest part.',
  example_ko_5 = '희망을 유지하는 게 가끔 가장 어려운 부분이에요.'
WHERE id = 'w_emotion_B1_07';

UPDATE words SET
  example_en_2 = 'He felt jealous when his best friend got engaged first.',
  example_ko_2 = '가장 친한 친구가 먼저 약혼하자 그는 질투를 느꼈어요.',
  example_en_3 = 'She tried not to feel jealous of her sister''s success.',
  example_ko_3 = '그녀는 언니의 성공에 질투를 느끼지 않으려 했어요.',
  example_en_4 = 'I''m a little jealous of how quickly you learn languages.',
  example_ko_4 = '당신이 언어를 빨리 배우는 게 살짝 질투 나요.',
  example_en_5 = 'Jealous feelings can be hard to talk about openly.',
  example_ko_5 = '질투 감정은 솔직히 이야기하기 어려울 수 있어요.'
WHERE id = 'w_emotion_B1_08';

UPDATE words SET
  example_en_2 = 'She felt guilty for not visiting her grandmother more often.',
  example_ko_2 = '할머니를 자주 뵙지 못해서 그녀는 죄책감을 느꼈어요.',
  example_en_3 = 'He looked guilty when his mom found the broken vase.',
  example_ko_3 = '엄마가 깨진 꽃병을 발견했을 때 그는 죄책감이 든 표정이었어요.',
  example_en_4 = 'I feel guilty about eating dessert every night this week.',
  example_ko_4 = '이번 주 매일 밤 디저트를 먹은 것에 죄책감이 들어요.',
  example_en_5 = 'There''s no need to feel guilty for taking time off.',
  example_ko_5 = '쉬는 것에 대해 죄책감을 느낄 필요는 없어요.'
WHERE id = 'w_emotion_B1_09';

UPDATE words SET
  example_en_2 = 'She is enthusiastic about her new role at the company.',
  example_ko_2 = '그녀는 회사에서의 새 역할에 열정적이에요.',
  example_en_3 = 'He gave an enthusiastic speech at the welcome dinner.',
  example_ko_3 = '그는 환영 만찬에서 열의 있는 연설을 했어요.',
  example_en_4 = 'The students were enthusiastic about the field trip.',
  example_ko_4 = '학생들은 현장 학습에 열의를 보였어요.',
  example_en_5 = 'I''m enthusiastic about helping with the charity event.',
  example_ko_5 = '자선 행사를 돕는 것에 저는 열정적이에요.'
WHERE id = 'w_emotion_B1_10';

UPDATE words SET
  example_en_2 = 'He was irritated by the slow service at the restaurant.',
  example_ko_2 = '그는 식당의 느린 서비스에 짜증이 났어요.',
  example_en_3 = 'She felt irritated when her plans kept changing.',
  example_ko_3 = '계획이 자꾸 바뀌어서 그녀는 짜증이 났어요.',
  example_en_4 = 'I get irritated when the printer jams again.',
  example_ko_4 = '프린터가 또 막히면 짜증이 나요.',
  example_en_5 = 'Her irritated tone surprised everyone in the meeting.',
  example_ko_5 = '그녀의 짜증 섞인 말투에 회의의 모두가 놀랐어요.'
WHERE id = 'w_emotion_B1_11';

UPDATE words SET
  example_en_2 = 'She felt motivated after watching the documentary.',
  example_ko_2 = '그녀는 다큐멘터리를 본 후 동기부여를 받았어요.',
  example_en_3 = 'He stays motivated by setting small daily goals.',
  example_ko_3 = '그는 작은 일일 목표를 세워 동기를 유지해요.',
  example_en_4 = 'I''m motivated to save more money this year.',
  example_ko_4 = '올해는 돈을 더 모으고 싶은 동기가 있어요.',
  example_en_5 = 'A motivated team can achieve almost anything.',
  example_ko_5 = '동기부여된 팀은 거의 무엇이든 이룰 수 있어요.'
WHERE id = 'w_emotion_B1_12';

UPDATE words SET
  example_en_2 = 'She felt discouraged after her third rejection letter.',
  example_ko_2 = '그녀는 세 번째 거절 편지를 받고 낙담했어요.',
  example_en_3 = 'Don''t get discouraged by one bad performance.',
  example_ko_3 = '한 번의 부진한 성과에 낙담하지 마세요.',
  example_en_4 = 'He sounded discouraged after the long phone call.',
  example_ko_4 = '긴 통화 후 그는 낙담한 목소리였어요.',
  example_en_5 = 'It''s easy to feel discouraged when learning a new skill.',
  example_ko_5 = '새로운 기술을 배울 때는 쉽게 낙담할 수 있어요.'
WHERE id = 'w_emotion_B1_13';

UPDATE words SET
  example_en_2 = 'He was determined to learn Korean within a year.',
  example_ko_2 = '그는 일 년 안에 한국어를 배우기로 단호히 결심했어요.',
  example_en_3 = 'She had a determined look as she started her project.',
  example_ko_3 = '그녀는 프로젝트를 시작하며 단호한 표정을 지었어요.',
  example_en_4 = 'I''m determined to make this year count.',
  example_ko_4 = '올해를 의미 있게 만들기로 결심했어요.',
  example_en_5 = 'A determined attitude often beats raw talent.',
  example_ko_5 = '단호한 태도가 종종 타고난 재능을 이겨요.'
WHERE id = 'w_emotion_B1_14';

UPDATE words SET
  example_en_2 = 'She was shocked to find her bike missing from the rack.',
  example_ko_2 = '그녀는 자전거 거치대에서 자전거가 없어진 것을 보고 충격받았어요.',
  example_en_3 = 'He looked shocked when he heard the announcement.',
  example_ko_3 = '그 발표를 듣고 그는 충격받은 듯 보였어요.',
  example_en_4 = 'I was shocked at how much the prices had risen.',
  example_ko_4 = '가격이 얼마나 올랐는지에 충격받았어요.',
  example_en_5 = 'The whole community was shocked by the sudden closure.',
  example_ko_5 = '갑작스러운 폐쇄에 지역 사회 전체가 충격을 받았어요.'
WHERE id = 'w_emotion_B1_15';

UPDATE words SET
  example_en_2 = 'She was fascinated by the documentary about deep oceans.',
  example_ko_2 = '그녀는 심해에 관한 다큐멘터리에 매혹됐어요.',
  example_en_3 = 'He looked fascinated as the magician revealed the trick.',
  example_ko_3 = '마술사가 트릭을 공개할 때 그는 매혹된 듯 보였어요.',
  example_en_4 = 'I''m fascinated by how the brain processes language.',
  example_ko_4 = '뇌가 언어를 처리하는 방식에 매혹돼요.',
  example_en_5 = 'The children were fascinated by the tide pools.',
  example_ko_5 = '아이들은 해변의 작은 웅덩이에 매혹됐어요.'
WHERE id = 'w_emotion_B1_16';

UPDATE words SET
  example_en_2 = 'She was disappointed that the package arrived a week late.',
  example_ko_2 = '그녀는 소포가 일주일 늦게 도착해서 실망했어요.',
  example_en_3 = 'He sounded disappointed but tried to stay polite.',
  example_ko_3 = '그는 실망한 듯했지만 예의를 지키려고 했어요.',
  example_en_4 = 'I''m disappointed in myself for missing the deadline.',
  example_ko_4 = '마감을 놓친 자신에게 실망스러워요.',
  example_en_5 = 'The fans were disappointed by the last-minute change.',
  example_ko_5 = '팬들은 막판 변경에 실망했어요.'
WHERE id = 'w_emotion_B1_17';

UPDATE words SET
  example_en_2 = 'She felt inspired after meeting her favourite author.',
  example_ko_2 = '그녀는 좋아하는 작가를 만난 후 영감을 받았어요.',
  example_en_3 = 'He felt inspired to start painting again last summer.',
  example_ko_3 = '그는 작년 여름 다시 그림을 그릴 영감을 받았어요.',
  example_en_4 = 'I''m inspired by how kind she is to strangers.',
  example_ko_4 = '낯선 사람들에게 친절한 그녀의 모습에 영감을 받아요.',
  example_en_5 = 'Their story inspired a whole generation of young people.',
  example_ko_5 = '그들의 이야기는 한 세대의 젊은이들에게 영감을 줬어요.'
WHERE id = 'w_emotion_B1_18';

UPDATE words SET
  example_en_2 = 'She was amused by the cat''s attempt to catch its tail.',
  example_ko_2 = '꼬리를 잡으려는 고양이의 모습에 그녀는 즐거워했어요.',
  example_en_3 = 'He looked amused as the kids told their wild story.',
  example_ko_3 = '아이들이 엉뚱한 이야기를 하자 그는 즐거워 보였어요.',
  example_en_4 = 'I was amused by the unexpected ending of the film.',
  example_ko_4 = '영화의 예상치 못한 결말이 재미있었어요.',
  example_en_5 = 'Her amused smile made the whole room relax.',
  example_ko_5 = '그녀의 재미있어하는 미소에 방 전체가 편안해졌어요.'
WHERE id = 'w_emotion_B1_19';

UPDATE words SET
  example_en_2 = 'He gets irritable when he skips his morning coffee.',
  example_ko_2 = '그는 아침 커피를 거르면 짜증을 잘 내요.',
  example_en_3 = 'She felt irritable due to the long, hot afternoon.',
  example_ko_3 = '길고 더운 오후 때문에 그녀는 짜증이 잘 났어요.',
  example_en_4 = 'I tend to be irritable when I''m hungry.',
  example_ko_4 = '저는 배고프면 짜증을 잘 내는 편이에요.',
  example_en_5 = 'His irritable mood made everyone tiptoe around him.',
  example_ko_5 = '그의 짜증 잘 내는 기분 탓에 모두가 조심스럽게 행동했어요.'
WHERE id = 'w_emotion_B1_20';

UPDATE words SET
  example_en_2 = 'She felt offended by the unfair comparison.',
  example_ko_2 = '그녀는 부당한 비교에 기분이 상했어요.',
  example_en_3 = 'He looked offended but said nothing in response.',
  example_ko_3 = '그는 불쾌해 보였지만 아무 대꾸도 하지 않았어요.',
  example_en_4 = 'I''m not offended — I just need a moment to think.',
  example_ko_4 = '기분이 상한 건 아니에요, 잠시 생각할 시간이 필요해요.',
  example_en_5 = 'Some readers were offended by the article''s tone.',
  example_ko_5 = '일부 독자들은 기사의 어조에 불쾌해했어요.'
WHERE id = 'w_emotion_B1_21';

UPDATE words SET
  example_en_2 = 'She felt comfortable enough to share her honest opinion.',
  example_ko_2 = '그녀는 솔직한 의견을 나눌 만큼 편안함을 느꼈어요.',
  example_en_3 = 'He felt comfortable around his new colleagues right away.',
  example_ko_3 = '그는 새 동료들 사이에서 곧바로 편안함을 느꼈어요.',
  example_en_4 = 'I''m comfortable letting you take the lead on this.',
  example_ko_4 = '이 일은 당신이 주도해도 편하게 느껴져요.',
  example_en_5 = 'A comfortable silence settled between the old friends.',
  example_ko_5 = '오랜 친구들 사이에 편안한 침묵이 자리잡았어요.'
WHERE id = 'w_emotion_B1_22';

UPDATE words SET
  example_en_2 = 'He was pessimistic about the economy improving soon.',
  example_ko_2 = '그는 경제가 곧 개선될 것에 비관적이었어요.',
  example_en_3 = 'She sounded pessimistic during the team meeting.',
  example_ko_3 = '팀 회의 동안 그녀는 비관적으로 들렸어요.',
  example_en_4 = 'I try not to be pessimistic when things are uncertain.',
  example_ko_4 = '상황이 불확실할 때 비관적이지 않으려 노력해요.',
  example_en_5 = 'A pessimistic outlook can drain your energy over time.',
  example_ko_5 = '비관적인 시각은 시간이 지나면서 에너지를 고갈시킬 수 있어요.'
WHERE id = 'w_emotion_B1_23';

UPDATE words SET
  example_en_2 = 'She stayed optimistic throughout the long recovery.',
  example_ko_2 = '그녀는 긴 회복 기간 내내 낙관적이었어요.',
  example_en_3 = 'He has an optimistic view of the company''s future.',
  example_ko_3 = '그는 회사의 미래에 대해 낙관적인 시각을 가지고 있어요.',
  example_en_4 = 'I''m cautiously optimistic about the new project.',
  example_ko_4 = '새 프로젝트에 대해 조심스럽게 낙관하고 있어요.',
  example_en_5 = 'Optimistic people often inspire those around them.',
  example_ko_5 = '낙관적인 사람들은 주변 사람들에게 영감을 주는 경우가 많아요.'
WHERE id = 'w_emotion_B1_24';

UPDATE words SET
  example_en_2 = 'She gets sentimental whenever she hears that song.',
  example_ko_2 = '그녀는 그 노래를 들을 때마다 감상적이 돼요.',
  example_en_3 = 'He felt sentimental flipping through his college yearbook.',
  example_ko_3 = '대학 졸업 앨범을 넘기며 그는 감상적인 기분이 들었어요.',
  example_en_4 = 'I get a little sentimental around the holidays.',
  example_ko_4 = '저는 명절이 되면 약간 감상적이 돼요.',
  example_en_5 = 'The sentimental letter brought tears to her eyes.',
  example_ko_5 = '감상적인 편지에 그녀의 눈에 눈물이 맺혔어요.'
WHERE id = 'w_emotion_B1_25';

UPDATE words SET
  example_en_2 = 'She was regretful about missing her friend''s wedding.',
  example_ko_2 = '그녀는 친구 결혼식을 놓친 것을 후회했어요.',
  example_en_3 = 'He gave a regretful sigh after reading the email.',
  example_ko_3 = '그는 이메일을 읽고 후회스러운 한숨을 내쉬었어요.',
  example_en_4 = 'I''m regretful that I didn''t speak up sooner.',
  example_ko_4 = '더 빨리 말하지 못한 것이 후회스러워요.',
  example_en_5 = 'His regretful tone showed how much he had changed.',
  example_ko_5 = '후회스러운 그의 어조가 그가 얼마나 변했는지 보여줬어요.'
WHERE id = 'w_emotion_B1_26';

UPDATE words SET
  example_en_2 = 'She felt completely drained after the all-day workshop.',
  example_ko_2 = '하루 종일 워크숍 후에 그녀는 완전히 지쳤어요.',
  example_en_3 = 'He looked drained from caring for his sick child.',
  example_ko_3 = '아픈 아이를 돌보느라 그는 기진맥진해 보였어요.',
  example_en_4 = 'I''m emotionally drained from the difficult conversation.',
  example_ko_4 = '힘든 대화 때문에 감정적으로 지쳤어요.',
  example_en_5 = 'A drained mind needs more than just sleep.',
  example_ko_5 = '지친 정신은 잠 이상의 것이 필요해요.'
WHERE id = 'w_emotion_B1_27';

UPDATE words SET
  example_en_2 = 'He felt resentful that no one acknowledged his effort.',
  example_ko_2 = '그는 아무도 자기 노력을 인정해주지 않아서 억울했어요.',
  example_en_3 = 'She tried not to sound resentful about the change.',
  example_ko_3 = '그녀는 그 변화에 대해 분개하는 말투를 내지 않으려 했어요.',
  example_en_4 = 'I don''t want to be resentful, but it hurts.',
  example_ko_4 = '억울해하고 싶지 않지만 마음이 아파요.',
  example_en_5 = 'Resentful feelings can ruin even close relationships.',
  example_ko_5 = '억울한 감정은 가까운 관계도 망칠 수 있어요.'
WHERE id = 'w_emotion_B1_28';

UPDATE words SET
  example_en_2 = 'She felt restless and decided to go for a long walk.',
  example_ko_2 = '그녀는 안절부절못해서 긴 산책을 가기로 했어요.',
  example_en_3 = 'He gets restless when he doesn''t have a project.',
  example_ko_3 = '그는 프로젝트가 없으면 안절부절못해요.',
  example_en_4 = 'I''ve been restless lately for no clear reason.',
  example_ko_4 = '요즘 뚜렷한 이유 없이 안절부절못하고 있어요.',
  example_en_5 = 'The restless audience grew louder as time passed.',
  example_ko_5 = '시간이 흐르면서 안절부절못하는 관객들이 더 시끄러워졌어요.'
WHERE id = 'w_emotion_B1_29';

UPDATE words SET
  example_en_2 = 'She was deeply moved by the speech at the graduation.',
  example_ko_2 = '그녀는 졸업식 연설에 깊이 감동받았어요.',
  example_en_3 = 'He looked moved as he watched his daughter perform.',
  example_ko_3 = '딸이 공연하는 것을 보며 그는 감동한 듯 보였어요.',
  example_en_4 = 'I was moved by the strangers'' kindness that day.',
  example_ko_4 = '그날 낯선 사람들의 친절에 감동받았어요.',
  example_en_5 = 'The audience sat in moved silence after the final scene.',
  example_ko_5 = '마지막 장면 후 관객은 감동한 침묵 속에 앉아 있었어요.'
WHERE id = 'w_emotion_B1_30';

UPDATE words SET
  example_en_2 = 'She felt fulfilled after teaching the class for a year.',
  example_ko_2 = '그녀는 일 년 동안 수업을 가르치며 성취감을 느꼈어요.',
  example_en_3 = 'He looked fulfilled in his new role as a mentor.',
  example_ko_3 = '그는 멘토라는 새 역할에서 성취감을 느끼는 듯 보였어요.',
  example_en_4 = 'I feel fulfilled when I see my students succeed.',
  example_ko_4 = '제 학생들이 성공하는 모습을 볼 때 성취감을 느껴요.',
  example_en_5 = 'A fulfilled life rarely comes from money alone.',
  example_ko_5 = '성취감 있는 삶은 돈만으로 오는 경우는 드물어요.'
WHERE id = 'w_emotion_B1_31';

UPDATE words SET
  example_en_2 = 'She felt grateful for every small kindness during recovery.',
  example_ko_2 = '회복 중 모든 작은 친절에 그녀는 감사했어요.',
  example_en_3 = 'He sent a grateful note to his former teacher.',
  example_ko_3 = '그는 옛 선생님께 감사 편지를 보냈어요.',
  example_en_4 = 'I''m grateful for the time we spent together.',
  example_ko_4 = '함께 보낸 시간이 정말 감사해요.',
  example_en_5 = 'Living a grateful life can shift your perspective.',
  example_ko_5 = '감사하는 삶은 시각을 바꿔 줄 수 있어요.'
WHERE id = 'w_emotion_B1_32';

UPDATE words SET
  example_en_2 = 'She felt energetic after starting her morning yoga routine.',
  example_ko_2 = '아침 요가 루틴을 시작한 후 그녀는 활기차게 느껴졌어요.',
  example_en_3 = 'He''s usually energetic in the morning and calm at night.',
  example_ko_3 = '그는 보통 아침에는 활기차고 밤에는 차분해요.',
  example_en_4 = 'I feel energetic after a strong cup of coffee.',
  example_ko_4 = '진한 커피 한 잔 후에 활기차게 느껴져요.',
  example_en_5 = 'An energetic team can lift everyone''s mood.',
  example_ko_5 = '활기찬 팀은 모두의 기분을 끌어올릴 수 있어요.'
WHERE id = 'w_emotion_B1_33';

UPDATE words SET
  example_en_2 = 'She became withdrawn after losing her closest friend.',
  example_ko_2 = '가장 가까운 친구를 잃은 후 그녀는 말이 없어졌어요.',
  example_en_3 = 'He grew withdrawn during his last year of school.',
  example_ko_3 = '그는 학교 마지막 해에 내성적으로 변했어요.',
  example_en_4 = 'I noticed she has been a bit withdrawn lately.',
  example_ko_4 = '최근 그녀가 좀 말이 없어진 것을 느꼈어요.',
  example_en_5 = 'Withdrawn behaviour can be a quiet sign of distress.',
  example_ko_5 = '말이 없어지는 행동은 조용한 고통의 신호일 수 있어요.'
WHERE id = 'w_emotion_B1_34';

UPDATE words SET
  example_en_2 = 'She felt vulnerable sharing her writing for the first time.',
  example_ko_2 = '그녀는 처음으로 자신의 글을 공유하며 취약함을 느꼈어요.',
  example_en_3 = 'He felt vulnerable after the operation, even with family near.',
  example_ko_3 = '가족이 곁에 있어도 수술 후 그는 취약함을 느꼈어요.',
  example_en_4 = 'I feel vulnerable when I have to ask for help.',
  example_ko_4 = '도움을 요청해야 할 때 취약함을 느껴요.',
  example_en_5 = 'Being vulnerable is often the first step toward real connection.',
  example_ko_5 = '취약해지는 것이 진정한 유대의 첫걸음일 때가 많아요.'
WHERE id = 'w_emotion_B1_35';

-- ══════════════════════════════════════
-- B2 (35개)
-- ══════════════════════════════════════

UPDATE words SET
  example_en_2 = 'A melancholic tune drifted through the empty hallway that evening.',
  example_ko_2 = '그날 저녁 텅 빈 복도로 우울한 선율이 흘러왔어요.',
  example_en_3 = 'He gave a melancholic smile when he spoke of his hometown.',
  example_ko_3 = '그는 고향을 이야기할 때 침울한 미소를 지었어요.',
  example_en_4 = 'I felt strangely melancholic on the last day of autumn.',
  example_ko_4 = '가을의 마지막 날에 묘하게 우울한 기분이 들었어요.',
  example_en_5 = 'Her paintings often carry a melancholic atmosphere that draws viewers in.',
  example_ko_5 = '그녀의 그림은 종종 보는 사람을 끌어들이는 우울한 분위기를 띠어요.'
WHERE id = 'w_emotion_B2_01';

UPDATE words SET
  example_en_2 = 'She is naturally empathetic and notices when others are struggling.',
  example_ko_2 = '그녀는 본래 공감 능력이 뛰어나 다른 사람들이 힘들 때를 알아차려요.',
  example_en_3 = 'He gave an empathetic response that made her feel truly heard.',
  example_ko_3 = '그가 공감 어린 반응을 보여 그녀는 진심으로 이해받았다고 느꼈어요.',
  example_en_4 = 'I try to be empathetic, even when I disagree with someone.',
  example_ko_4 = '의견이 다를 때도 공감하려 노력해요.',
  example_en_5 = 'An empathetic leader builds trust faster than a strict one.',
  example_ko_5 = '공감하는 리더는 엄격한 리더보다 더 빨리 신뢰를 쌓아요.'
WHERE id = 'w_emotion_B2_02';

UPDATE words SET
  example_en_2 = 'She felt nostalgic walking through her old university campus again.',
  example_ko_2 = '옛 대학 캠퍼스를 다시 걸으며 그녀는 향수를 느꼈어요.',
  example_en_3 = 'He grew nostalgic flipping through old letters from his grandfather.',
  example_ko_3 = '할아버지에게서 받은 옛 편지들을 넘기며 그는 향수에 잠겼어요.',
  example_en_4 = 'I get nostalgic whenever the first snow of the year falls.',
  example_ko_4 = '그 해의 첫눈이 내릴 때마다 저는 향수를 느껴요.',
  example_en_5 = 'Nostalgic memories can comfort us during difficult times.',
  example_ko_5 = '향수 어린 추억은 힘든 시기에 위로가 될 수 있어요.'
WHERE id = 'w_emotion_B2_03';

UPDATE words SET
  example_en_2 = 'She felt apprehensive about giving her first public talk.',
  example_ko_2 = '그녀는 첫 공개 강연을 하는 것에 불안함을 느꼈어요.',
  example_en_3 = 'He looked apprehensive as the doctor entered the room.',
  example_ko_3 = '의사가 방에 들어오자 그는 불안한 표정을 지었어요.',
  example_en_4 = 'I''m a bit apprehensive about flying through the storm.',
  example_ko_4 = '폭풍을 뚫고 비행하는 것에 좀 불안해요.',
  example_en_5 = 'It''s natural to feel apprehensive before any major life change.',
  example_ko_5 = '큰 인생 변화 전에 불안함을 느끼는 것은 자연스러워요.'
WHERE id = 'w_emotion_B2_04';

UPDATE words SET
  example_en_2 = 'She felt exhilarated after crossing the finish line for the first time.',
  example_ko_2 = '그녀는 처음으로 결승선을 통과하고 짜릿함을 느꼈어요.',
  example_en_3 = 'He looked exhilarated coming off the rollercoaster ride.',
  example_ko_3 = '롤러코스터에서 내리며 그는 신나 보였어요.',
  example_en_4 = 'I felt exhilarated standing on the mountain peak at sunrise.',
  example_ko_4 = '해돋이 무렵 산 정상에 서 있는 것이 짜릿했어요.',
  example_en_5 = 'The exhilarated crowd cheered until their voices were hoarse.',
  example_ko_5 = '신난 군중은 목이 쉴 때까지 환호했어요.'
WHERE id = 'w_emotion_B2_05';

UPDATE words SET
  example_en_2 = 'She was remorseful for the harsh words she had said.',
  example_ko_2 = '그녀는 자신이 한 거친 말에 대해 뉘우쳤어요.',
  example_en_3 = 'He looked remorseful as he handed back the borrowed book.',
  example_ko_3 = '그는 빌렸던 책을 돌려주며 후회하는 표정을 지었어요.',
  example_en_4 = 'I''m remorseful about how I treated her last year.',
  example_ko_4 = '작년에 그녀를 대했던 방식에 대해 후회해요.',
  example_en_5 = 'A truly remorseful apology requires more than just words.',
  example_ko_5 = '진정으로 뉘우치는 사과는 말 이상의 것이 필요해요.'
WHERE id = 'w_emotion_B2_06';

UPDATE words SET
  example_en_2 = 'She was indignant about the way the policy was changed without notice.',
  example_ko_2 = '그녀는 정책이 통보도 없이 변경된 방식에 분개했어요.',
  example_en_3 = 'He spoke in an indignant tone about the unfair ruling.',
  example_ko_3 = '그는 부당한 판결에 대해 분개한 어조로 말했어요.',
  example_en_4 = 'I felt indignant on her behalf after hearing the story.',
  example_ko_4 = '그 이야기를 듣고 그녀를 대신해 분개했어요.',
  example_en_5 = 'Indignant letters poured into the newspaper office that week.',
  example_ko_5 = '그 주에 분개한 편지들이 신문사에 쏟아져 들어왔어요.'
WHERE id = 'w_emotion_B2_07';

UPDATE words SET
  example_en_2 = 'She is deeply compassionate toward animals in need.',
  example_ko_2 = '그녀는 도움이 필요한 동물들에게 깊은 연민을 느껴요.',
  example_en_3 = 'He gave a compassionate look when she shared her story.',
  example_ko_3 = '그녀가 자신의 이야기를 나눌 때 그는 연민 어린 시선을 보냈어요.',
  example_en_4 = 'I try to be compassionate even with people who disagree with me.',
  example_ko_4 = '제 의견에 동의하지 않는 사람들에게도 연민을 가지려 해요.',
  example_en_5 = 'A compassionate community supports its most vulnerable members.',
  example_ko_5 = '연민 있는 공동체는 가장 취약한 구성원을 지지해요.'
WHERE id = 'w_emotion_B2_08';

UPDATE words SET
  example_en_2 = 'She looked bewildered when she opened the door to a crowd of guests.',
  example_ko_2 = '문을 열어 손님들이 가득한 것을 보고 그녀는 어리둥절해 보였어요.',
  example_en_3 = 'He felt bewildered by the sudden change in plans.',
  example_ko_3 = '갑작스러운 계획 변경에 그는 당혹스러웠어요.',
  example_en_4 = 'I''m a little bewildered by the new software updates.',
  example_ko_4 = '새 소프트웨어 업데이트가 좀 당혹스러워요.',
  example_en_5 = 'Bewildered tourists wandered around the unfamiliar station.',
  example_ko_5 = '어리둥절한 관광객들이 낯선 역 주변을 헤매고 있었어요.'
WHERE id = 'w_emotion_B2_09';

UPDATE words SET
  example_en_2 = 'She was elated to receive an offer from her dream company.',
  example_ko_2 = '그녀는 꿈에 그리던 회사로부터 제안을 받고 매우 기뻤어요.',
  example_en_3 = 'He looked elated as he held his newborn for the first time.',
  example_ko_3 = '그는 처음으로 신생아를 안으며 매우 기뻐 보였어요.',
  example_en_4 = 'I felt elated when my book was finally published.',
  example_ko_4 = '제 책이 드디어 출간되었을 때 매우 기뻤어요.',
  example_en_5 = 'The elated team celebrated long into the night.',
  example_ko_5 = '의기양양한 팀은 밤늦게까지 축하했어요.'
WHERE id = 'w_emotion_B2_10';

UPDATE words SET
  example_en_2 = 'She felt resentful about being asked to work yet another weekend.',
  example_ko_2 = '또 주말에 일하라는 요청에 그녀는 억울했어요.',
  example_en_3 = 'He grew resentful as his ideas kept being credited to others.',
  example_ko_3 = '자신의 아이디어가 계속 다른 사람의 공으로 돌아가자 그는 원망스러워졌어요.',
  example_en_4 = 'I don''t want to feel resentful, but the silence is painful.',
  example_ko_4 = '원망하고 싶지 않지만 그 침묵이 아파요.',
  example_en_5 = 'Resentful undercurrents poisoned what could have been a good team.',
  example_ko_5 = '억울함의 저류가 좋을 수도 있었던 팀을 망쳤어요.'
WHERE id = 'w_emotion_B2_11';

UPDATE words SET
  example_en_2 = 'She felt ambivalent about returning to her old job.',
  example_ko_2 = '그녀는 옛 직장에 돌아가는 것에 대해 양가적인 감정을 느꼈어요.',
  example_en_3 = 'He gave an ambivalent answer when asked about the merger.',
  example_ko_3 = '합병에 대한 질문에 그는 양면적인 답변을 했어요.',
  example_en_4 = 'I''m ambivalent about moving abroad next year.',
  example_ko_4 = '내년에 해외로 이사 가는 것에 양가적 감정이 들어요.',
  example_en_5 = 'Ambivalent feelings often emerge during major life decisions.',
  example_ko_5 = '양가적 감정은 큰 인생 결정 중에 자주 떠올라요.'
WHERE id = 'w_emotion_B2_12';

UPDATE words SET
  example_en_2 = 'She had a serene expression as she meditated in the garden.',
  example_ko_2 = '그녀는 정원에서 명상하며 평온한 표정을 지었어요.',
  example_en_3 = 'He looked serene watching the sunset from the balcony.',
  example_ko_3 = '발코니에서 일몰을 보며 그는 평온해 보였어요.',
  example_en_4 = 'I feel serene whenever I walk through the bamboo forest.',
  example_ko_4 = '대나무 숲을 걸을 때마다 저는 평온함을 느껴요.',
  example_en_5 = 'A serene atmosphere settled over the small mountain village.',
  example_ko_5 = '작은 산골 마을에 평온한 분위기가 내려앉았어요.'
WHERE id = 'w_emotion_B2_13';

UPDATE words SET
  example_en_2 = 'She felt agitated waiting for the test results to come back.',
  example_ko_2 = '검사 결과를 기다리며 그녀는 동요했어요.',
  example_en_3 = 'He paced the room in an agitated manner before the call.',
  example_ko_3 = '그는 통화 전 안절부절못하며 방을 서성였어요.',
  example_en_4 = 'I get agitated when I''m late for important appointments.',
  example_ko_4 = '중요한 약속에 늦으면 저는 동요해요.',
  example_en_5 = 'His agitated voice betrayed how worried he really was.',
  example_ko_5 = '그의 동요한 목소리가 그가 얼마나 걱정하는지 드러냈어요.'
WHERE id = 'w_emotion_B2_14';

UPDATE words SET
  example_en_2 = 'She felt despondent after months without any progress.',
  example_ko_2 = '몇 달간 진전이 없자 그녀는 낙심했어요.',
  example_en_3 = 'He looked despondent sitting alone in the empty office.',
  example_ko_3 = '텅 빈 사무실에 혼자 앉아 그는 낙심해 보였어요.',
  example_en_4 = 'I felt despondent until a friend reached out to talk.',
  example_ko_4 = '친구가 이야기하자고 연락하기 전까지 저는 낙심해 있었어요.',
  example_en_5 = 'A despondent mood can be eased by small acts of kindness.',
  example_ko_5 = '낙심한 기분은 작은 친절로 누그러질 수 있어요.'
WHERE id = 'w_emotion_B2_15';

UPDATE words SET
  example_en_2 = 'Calm felt elusive during the noisy holiday weekend.',
  example_ko_2 = '시끄러운 명절 주말 동안 평온은 잡히지 않는 것 같았어요.',
  example_en_3 = 'Her smile was warm but somehow elusive whenever cameras appeared.',
  example_ko_3 = '카메라가 나타날 때마다 그녀의 미소는 따뜻하지만 어딘가 잡히지 않았어요.',
  example_en_4 = 'I find inner peace elusive on stressful workdays.',
  example_ko_4 = '스트레스 많은 근무일에 내면의 평화는 잡기 어려워요.',
  example_en_5 = 'The elusive feeling of belonging takes time to build.',
  example_ko_5 = '소속감이라는 잡히지 않는 감정은 쌓는 데 시간이 걸려요.'
WHERE id = 'w_emotion_B2_16';

UPDATE words SET
  example_en_2 = 'She felt conflicted about lending money to her brother again.',
  example_ko_2 = '동생에게 다시 돈을 빌려주는 것에 대해 그녀는 갈등했어요.',
  example_en_3 = 'He looked conflicted as he read the resignation letter.',
  example_ko_3 = '사직서를 읽으며 그는 내적으로 갈등하는 듯 보였어요.',
  example_en_4 = 'I''m conflicted about telling her what I overheard.',
  example_ko_4 = '제가 우연히 들은 것을 그녀에게 말할지 갈등이 돼요.',
  example_en_5 = 'A conflicted heart often makes the wisest decision in time.',
  example_ko_5 = '갈등하는 마음이 결국 가장 현명한 결정을 내릴 때가 많아요.'
WHERE id = 'w_emotion_B2_17';

UPDATE words SET
  example_en_2 = 'She was devastated when she learned her project had been cancelled.',
  example_ko_2 = '자신의 프로젝트가 취소되었다는 소식에 그녀는 망연자실했어요.',
  example_en_3 = 'He looked devastated after hearing the verdict in court.',
  example_ko_3 = '법정에서 판결을 들은 후 그는 크게 상심한 듯 보였어요.',
  example_en_4 = 'I was devastated by the loss of my childhood home.',
  example_ko_4 = '어린 시절 집을 잃어 망연자실했어요.',
  example_en_5 = 'The devastated families gathered together for support.',
  example_ko_5 = '크게 상심한 가족들이 위로를 위해 함께 모였어요.'
WHERE id = 'w_emotion_B2_18';

UPDATE words SET
  example_en_2 = 'She felt invigorated after her morning swim in the lake.',
  example_ko_2 = '호수에서 아침 수영을 한 후 그녀는 활력을 얻었어요.',
  example_en_3 = 'He looked invigorated by the long discussion about new ideas.',
  example_ko_3 = '새 아이디어에 관한 긴 토론에 그는 활력을 얻은 듯 보였어요.',
  example_en_4 = 'I feel invigorated whenever I take a walk in the woods.',
  example_ko_4 = '숲속을 걸을 때마다 저는 활력을 느껴요.',
  example_en_5 = 'An invigorated team can move mountains in a short time.',
  example_ko_5 = '활력을 얻은 팀은 짧은 시간에 산을 옮길 수 있어요.'
WHERE id = 'w_emotion_B2_19';

UPDATE words SET
  example_en_2 = 'She was appalled by the rude behaviour at the meeting.',
  example_ko_2 = '그녀는 회의에서의 무례한 행동에 경악했어요.',
  example_en_3 = 'He looked appalled as he heard the details of the scandal.',
  example_ko_3 = '스캔들의 세부 사항을 듣고 그는 경악한 듯 보였어요.',
  example_en_4 = 'I was appalled to see the state of the abandoned building.',
  example_ko_4 = '버려진 건물의 상태를 보고 경악했어요.',
  example_en_5 = 'Appalled silence filled the room when the news was announced.',
  example_ko_5 = '소식이 발표되자 경악한 침묵이 방을 채웠어요.'
WHERE id = 'w_emotion_B2_20';

UPDATE words SET
  example_en_2 = 'She felt humiliated when her mistake was pointed out in the meeting.',
  example_ko_2 = '회의에서 자신의 실수가 지적되자 그녀는 굴욕감을 느꼈어요.',
  example_en_3 = 'He looked humiliated walking out of the courtroom.',
  example_ko_3 = '법정을 나서며 그는 굴욕감이 든 표정이었어요.',
  example_en_4 = 'I felt humiliated by the way I was treated at the store.',
  example_ko_4 = '그 가게에서 대접받은 방식에 굴욕감을 느꼈어요.',
  example_en_5 = 'Public humiliation can leave deeper scars than people realise.',
  example_ko_5 = '대중적 굴욕은 사람들이 생각하는 것보다 더 깊은 상처를 남길 수 있어요.'
WHERE id = 'w_emotion_B2_21';

UPDATE words SET
  example_en_2 = 'She felt vindicated when the report finally confirmed her warning.',
  example_ko_2 = '보고서가 마침내 그녀의 경고를 확인해주자 그녀는 억울함이 풀렸어요.',
  example_en_3 = 'He looked vindicated as the new evidence cleared his name.',
  example_ko_3 = '새로운 증거가 그의 누명을 벗기자 그는 억울함이 풀린 듯 보였어요.',
  example_en_4 = 'I felt vindicated when my early prediction proved correct.',
  example_ko_4 = '초기에 한 제 예측이 맞다고 증명되자 억울함이 풀렸어요.',
  example_en_5 = 'A vindicated whistleblower rarely receives the recognition they deserve.',
  example_ko_5 = '억울함이 풀린 내부 고발자는 마땅한 인정을 받기 어려워요.'
WHERE id = 'w_emotion_B2_22';

UPDATE words SET
  example_en_2 = 'She was anxious to finish the report before her vacation.',
  example_ko_2 = '그녀는 휴가 전에 보고서를 끝내려고 몹시 애썼어요.',
  example_en_3 = 'He was anxious to apologise as soon as he could.',
  example_ko_3 = '그는 가능한 한 빨리 사과하려고 몹시 열망했어요.',
  example_en_4 = 'I was anxious to hear how the interview had gone.',
  example_ko_4 = '면접이 어떻게 됐는지 몹시 듣고 싶었어요.',
  example_en_5 = 'She was anxious to make a good first impression at the firm.',
  example_ko_5 = '그녀는 회사에서 좋은 첫인상을 남기려고 애썼어요.'
WHERE id = 'w_emotion_B2_23';

UPDATE words SET
  example_en_2 = 'She felt disheartened by the constant negative feedback.',
  example_ko_2 = '끊임없는 부정적 피드백에 그녀는 의기소침해졌어요.',
  example_en_3 = 'He looked disheartened after his proposal was rejected.',
  example_ko_3 = '제안이 거절된 후 그는 낙담한 듯 보였어요.',
  example_en_4 = 'I felt disheartened until a colleague encouraged me to keep going.',
  example_ko_4 = '동료가 계속하라고 격려해주기 전까지 저는 의기소침해 있었어요.',
  example_en_5 = 'Disheartened employees rarely produce their best work.',
  example_ko_5 = '의기소침한 직원들은 최선의 결과를 내기 어려워요.'
WHERE id = 'w_emotion_B2_24';

UPDATE words SET
  example_en_2 = 'She felt euphoric after winning her first international competition.',
  example_ko_2 = '첫 국제 대회에서 우승한 후 그녀는 행복감에 넘쳤어요.',
  example_en_3 = 'He looked euphoric as the audience gave him a standing ovation.',
  example_ko_3 = '관객이 기립 박수를 보내자 그는 행복감에 넘쳐 보였어요.',
  example_en_4 = 'I felt euphoric when I finally finished writing the novel.',
  example_ko_4 = '드디어 소설을 다 썼을 때 행복감에 넘쳤어요.',
  example_en_5 = 'A euphoric mood after success can be misleading about the future.',
  example_ko_5 = '성공 후의 행복감은 미래에 대해 오해를 일으킬 수 있어요.'
WHERE id = 'w_emotion_B2_25';

UPDATE words SET
  example_en_2 = 'She remained sullen throughout the entire family dinner.',
  example_ko_2 = '그녀는 가족 저녁 식사 내내 시무룩한 채로 있었어요.',
  example_en_3 = 'He gave a sullen reply and refused to explain further.',
  example_ko_3 = '그는 쌀쌀한 대답을 하고는 더 설명하기를 거부했어요.',
  example_en_4 = 'I shouldn''t have been so sullen at the gathering.',
  example_ko_4 = '모임에서 그렇게 시무룩하지 말았어야 했어요.',
  example_en_5 = 'The sullen teenager eventually opened up to his counsellor.',
  example_ko_5 = '시무룩한 청소년은 결국 상담사에게 마음을 열었어요.'
WHERE id = 'w_emotion_B2_26';

UPDATE words SET
  example_en_2 = 'She felt wistful looking through her grandmother''s old recipes.',
  example_ko_2 = '할머니의 옛 요리법을 보며 그녀는 아쉬운 감정을 느꼈어요.',
  example_en_3 = 'He gave a wistful sigh while watching the sunset.',
  example_ko_3 = '일몰을 보며 그는 그리운 한숨을 내쉬었어요.',
  example_en_4 = 'I get wistful when I hear songs from my school days.',
  example_ko_4 = '학창 시절 노래를 들으면 아쉬운 감정이 들어요.',
  example_en_5 = 'A wistful look passed over her face as she remembered.',
  example_ko_5 = '회상에 잠긴 그녀의 얼굴에 아쉬운 표정이 스쳤어요.'
WHERE id = 'w_emotion_B2_27';

UPDATE words SET
  example_en_2 = 'She felt deeply content after years of working toward her own studio.',
  example_ko_2 = '자신만의 스튜디오를 위해 일한 수년 후 그녀는 깊이 평안함을 느꼈어요.',
  example_en_3 = 'He looked content sitting by the fire with his dog beside him.',
  example_ko_3 = '강아지를 옆에 두고 벽난로 옆에 앉아 그는 평안해 보였어요.',
  example_en_4 = 'I''m content with the slower pace of country life.',
  example_ko_4 = '시골 생활의 느린 속도에 만족해요.',
  example_en_5 = 'A content life often looks ordinary from the outside.',
  example_ko_5 = '평안한 삶은 종종 겉으로는 평범해 보여요.'
WHERE id = 'w_emotion_B2_28';

UPDATE words SET
  example_en_2 = 'She looked troubled by something she had read that morning.',
  example_ko_2 = '그날 아침 읽은 무언가에 그녀는 마음이 불편해 보였어요.',
  example_en_3 = 'He has been troubled by recurring dreams about his childhood.',
  example_ko_3 = '그는 어린 시절에 대한 반복되는 꿈에 마음이 불편했어요.',
  example_en_4 = 'I''m troubled by the rumours, even if they aren''t true.',
  example_ko_4 = '소문이 사실이 아니더라도 마음이 불편해요.',
  example_en_5 = 'A troubled silence settled between the two of them.',
  example_ko_5 = '두 사람 사이에 마음이 불편한 침묵이 자리잡았어요.'
WHERE id = 'w_emotion_B2_29';

UPDATE words SET
  example_en_2 = 'Writing in her journal was cathartic after the difficult conversation.',
  example_ko_2 = '힘든 대화 후에 일기를 쓰는 것이 정서적으로 해방감을 줬어요.',
  example_en_3 = 'He found running long distances strangely cathartic.',
  example_ko_3 = '그는 장거리 달리기가 묘하게 카타르시스를 준다고 느꼈어요.',
  example_en_4 = 'I had a cathartic cry watching that documentary last night.',
  example_ko_4 = '어젯밤 그 다큐멘터리를 보고 정서적 해방감을 느끼며 울었어요.',
  example_en_5 = 'A cathartic conversation can heal what years of silence created.',
  example_ko_5 = '카타르시스 같은 대화는 수년의 침묵이 만든 것을 치유할 수 있어요.'
WHERE id = 'w_emotion_B2_30';

UPDATE words SET
  example_en_2 = 'She was overwhelmed by the kindness of strangers during her recovery.',
  example_ko_2 = '회복 중 낯선 사람들의 친절에 그녀는 압도됐어요.',
  example_en_3 = 'He looked overwhelmed by the warm welcome at the airport.',
  example_ko_3 = '공항에서의 따뜻한 환영에 그는 압도된 듯 보였어요.',
  example_en_4 = 'I was overwhelmed by how supportive my colleagues were.',
  example_ko_4 = '제 동료들의 지지가 얼마나 따뜻한지에 압도됐어요.',
  example_en_5 = 'Being overwhelmed with gratitude is a feeling worth chasing.',
  example_ko_5 = '감사함에 압도되는 것은 추구할 만한 가치가 있는 감정이에요.'
WHERE id = 'w_emotion_B2_31';

UPDATE words SET
  example_en_2 = 'She became disillusioned with the company after the broken promises.',
  example_ko_2 = '약속이 깨진 후 그녀는 그 회사에 환멸을 느끼게 됐어요.',
  example_en_3 = 'He grew disillusioned with the industry over the years.',
  example_ko_3 = '세월이 흐르며 그는 그 업계에 환멸을 느끼게 됐어요.',
  example_en_4 = 'I''m disillusioned by how superficial social media has become.',
  example_ko_4 = '소셜 미디어가 얼마나 피상적이 됐는지에 환멸을 느껴요.',
  example_en_5 = 'Many disillusioned workers eventually leave for smaller, more honest firms.',
  example_ko_5 = '환멸을 느낀 많은 직원들이 결국 더 작고 정직한 회사로 떠나요.'
WHERE id = 'w_emotion_B2_32';

UPDATE words SET
  example_en_2 = 'She felt a yearning for the simple pace of her hometown.',
  example_ko_2 = '그녀는 고향의 단순한 속도에 대한 갈망을 느꼈어요.',
  example_en_3 = 'He looked at the old photo with a quiet yearning in his eyes.',
  example_ko_3 = '그는 옛 사진을 조용한 갈망이 담긴 눈으로 바라봤어요.',
  example_en_4 = 'I have a deep yearning to travel through Eastern Europe.',
  example_ko_4 = '동유럽을 여행하고 싶은 깊은 갈망이 있어요.',
  example_en_5 = 'A yearning for meaning often appears in our thirties.',
  example_ko_5 = '의미에 대한 갈망은 종종 삼십 대에 나타나요.'
WHERE id = 'w_emotion_B2_33';

UPDATE words SET
  example_en_2 = 'She felt liberated after finally telling her parents the truth.',
  example_ko_2 = '드디어 부모님께 진실을 말한 후 그녀는 해방감을 느꼈어요.',
  example_en_3 = 'He felt liberated taking a year off to travel.',
  example_ko_3 = '여행을 위해 일 년을 쉬면서 그는 자유로운 기분이었어요.',
  example_en_4 = 'I felt liberated cutting my hair for the first time in years.',
  example_ko_4 = '몇 년 만에 처음으로 머리를 자르고 해방감을 느꼈어요.',
  example_en_5 = 'A liberated mindset can transform how you face daily challenges.',
  example_ko_5 = '해방된 마음가짐은 일상의 도전을 마주하는 방식을 바꿀 수 있어요.'
WHERE id = 'w_emotion_B2_34';

UPDATE words SET
  example_en_2 = 'She felt conflicted between her career goals and family expectations.',
  example_ko_2 = '그녀는 자기 커리어 목표와 가족의 기대 사이에서 갈등을 느꼈어요.',
  example_en_3 = 'He looked conflicted as he weighed both sides of the offer.',
  example_ko_3 = '제안의 양쪽 면을 따져보며 그는 복잡한 심경이었어요.',
  example_en_4 = 'I''m conflicted about confronting him at the next meeting.',
  example_ko_4 = '다음 회의에서 그와 대면하는 것에 대해 갈등이 돼요.',
  example_en_5 = 'A conflicted heart often produces the most honest creative work.',
  example_ko_5 = '복잡한 심경은 종종 가장 진솔한 창작물을 만들어내요.'
WHERE id = 'w_emotion_B2_35';

-- ══════════════════════════════════════
-- C1 (35개)
-- ══════════════════════════════════════

UPDATE words SET
  example_en_2 = 'She grew despondent during the long months of waiting for news.',
  example_ko_2 = '그녀는 소식을 기다리는 긴 몇 달 동안 절망에 빠져갔어요.',
  example_en_3 = 'He sounded despondent when he called late that evening.',
  example_ko_3 = '그날 늦은 저녁 그가 전화했을 때 낙심한 목소리였어요.',
  example_en_4 = 'I felt despondent watching the slow decline of my favourite neighbourhood.',
  example_ko_4 = '좋아하던 동네가 천천히 쇠퇴하는 것을 보며 낙심했어요.',
  example_en_5 = 'A despondent expression spread across his face as the verdict was read.',
  example_ko_5 = '판결이 읽혀지자 낙심한 표정이 그의 얼굴에 퍼졌어요.'
WHERE id = 'w_emotion_C1_01';

UPDATE words SET
  example_en_2 = 'She was euphoric when her debut novel topped the bestseller list.',
  example_ko_2 = '데뷔작이 베스트셀러 1위에 올랐을 때 그녀는 극도의 행복감을 느꼈어요.',
  example_en_3 = 'He felt euphoric crossing the finish line of his first ultramarathon.',
  example_ko_3 = '첫 울트라마라톤의 결승선을 통과하며 그는 극도의 행복감을 느꼈어요.',
  example_en_4 = 'I felt euphoric the moment my visa was finally approved.',
  example_ko_4 = '비자가 마침내 승인된 순간 극도의 행복감을 느꼈어요.',
  example_en_5 = 'The euphoric atmosphere of the festival lingered long after sunset.',
  example_ko_5 = '축제의 극도로 행복한 분위기는 일몰 후에도 한참 남아 있었어요.'
WHERE id = 'w_emotion_C1_02';

UPDATE words SET
  example_en_2 = 'She felt ambivalent about accepting the inheritance from her estranged uncle.',
  example_ko_2 = '소원해진 삼촌에게서 유산을 받는 것에 대해 그녀는 상반된 감정을 느꼈어요.',
  example_en_3 = 'He gave an ambivalent answer when asked if he would return to teaching.',
  example_ko_3 = '교직으로 돌아갈지 묻자 그는 상반된 감정이 담긴 답을 했어요.',
  example_en_4 = 'I''m ambivalent about whether to stay or move on next year.',
  example_ko_4 = '내년에 머무를지 떠날지 상반된 감정이 들어요.',
  example_en_5 = 'Ambivalent feelings about success are surprisingly common among first-generation professionals.',
  example_ko_5 = '성공에 대한 상반된 감정은 1세대 전문직 종사자들 사이에서 의외로 흔해요.'
WHERE id = 'w_emotion_C1_03';

UPDATE words SET
  example_en_2 = 'She became disenchanted with city life after years of long commutes.',
  example_ko_2 = '긴 통근 생활 몇 년 후 그녀는 도시 생활에 환멸을 느끼게 됐어요.',
  example_en_3 = 'He sounded disenchanted talking about his time in academia.',
  example_ko_3 = '학계에서 보낸 시간을 이야기하며 그는 환멸을 느끼는 듯했어요.',
  example_en_4 = 'I''m disenchanted by how performative modern social discourse has become.',
  example_ko_4 = '현대 사회 담론이 얼마나 보여주기식이 됐는지에 환멸을 느껴요.',
  example_en_5 = 'Disenchanted voters often choose to abstain rather than support either candidate.',
  example_ko_5 = '환멸을 느낀 유권자들은 종종 어느 후보도 지지하지 않고 기권을 택해요.'
WHERE id = 'w_emotion_C1_04';

UPDATE words SET
  example_en_2 = 'She looked forlorn waiting at the bus stop in the heavy rain.',
  example_ko_2 = '폭우 속 버스 정류장에서 기다리며 그녀는 쓸쓸해 보였어요.',
  example_en_3 = 'He gave a forlorn smile as he packed his last box.',
  example_ko_3 = '마지막 상자를 챙기며 그는 쓸쓸한 미소를 지었어요.',
  example_en_4 = 'The forlorn dog wandered through the abandoned village.',
  example_ko_4 = '버려진 마을을 헤매는 강아지의 모습이 쓸쓸해 보였어요.',
  example_en_5 = 'A forlorn melody drifted from the empty concert hall.',
  example_ko_5 = '텅 빈 콘서트홀에서 쓸쓸한 선율이 흘러나왔어요.'
WHERE id = 'w_emotion_C1_05';

UPDATE words SET
  example_en_2 = 'She was jubilant when her novel received the national literary prize.',
  example_ko_2 = '그녀의 소설이 국가 문학상을 받았을 때 그녀는 환호했어요.',
  example_en_3 = 'He gave a jubilant speech at the team''s championship celebration.',
  example_ko_3 = '그는 팀의 우승 축하 자리에서 의기양양한 연설을 했어요.',
  example_en_4 = 'I felt jubilant when our community project was finally approved.',
  example_ko_4 = '우리 지역 사회 프로젝트가 마침내 승인되었을 때 환호했어요.',
  example_en_5 = 'A jubilant cheer echoed through the stadium as the final whistle blew.',
  example_ko_5 = '경기 종료 휘슬이 울리자 환호성이 경기장에 울려 퍼졌어요.'
WHERE id = 'w_emotion_C1_06';

UPDATE words SET
  example_en_2 = 'She was mortified when her speech notes blew off the podium.',
  example_ko_2 = '연설 메모가 단상에서 날아가 그녀는 몹시 창피했어요.',
  example_en_3 = 'He looked mortified after accidentally addressing the wrong person.',
  example_ko_3 = '실수로 다른 사람의 이름을 부른 후 그는 굴욕스러운 표정을 지었어요.',
  example_en_4 = 'I was mortified to realise I had been pronouncing her name wrong for years.',
  example_ko_4 = '몇 년간 그녀의 이름을 잘못 발음해 왔다는 걸 깨닫고 몹시 창피했어요.',
  example_en_5 = 'A mortified silence followed his unfortunate slip of the tongue.',
  example_ko_5 = '그의 안타까운 실언 후에 몹시 창피한 침묵이 이어졌어요.'
WHERE id = 'w_emotion_C1_07';

UPDATE words SET
  example_en_2 = 'She sat in a pensive mood, replaying the morning''s conversation.',
  example_ko_2 = '그녀는 아침의 대화를 되새기며 생각에 잠겨 있었어요.',
  example_en_3 = 'He gave a pensive look before answering the difficult question.',
  example_ko_3 = '어려운 질문에 답하기 전 그는 생각에 잠긴 표정을 지었어요.',
  example_en_4 = 'I become pensive whenever I revisit my grandparents'' old village.',
  example_ko_4 = '조부모님의 옛 마을을 다시 찾을 때마다 저는 생각에 잠겨요.',
  example_en_5 = 'A pensive silence often reveals more than careless words.',
  example_ko_5 = '생각에 잠긴 침묵은 무심한 말보다 더 많은 것을 드러내요.'
WHERE id = 'w_emotion_C1_08';

UPDATE words SET
  example_en_2 = 'She wore a wistful expression while sorting through her late father''s books.',
  example_ko_2 = '돌아가신 아버지의 책을 정리하며 그녀는 아쉬운 표정을 지었어요.',
  example_en_3 = 'He sang the old song with a wistful tone that moved everyone.',
  example_ko_3 = '그는 모두를 감동시키는 그리움 어린 어조로 옛 노래를 불렀어요.',
  example_en_4 = 'I felt wistful watching the train pull away from the station.',
  example_ko_4 = '기차가 역에서 떠나는 것을 보며 아쉬운 감정이 들었어요.',
  example_en_5 = 'A wistful longing for slower times runs through her writing.',
  example_ko_5 = '느린 시절에 대한 아쉬운 그리움이 그녀의 글에 흘러요.'
WHERE id = 'w_emotion_C1_09';

UPDATE words SET
  example_en_2 = 'She was appalled by the casual cruelty in the comments section.',
  example_ko_2 = '댓글란의 무심한 잔인함에 그녀는 경악했어요.',
  example_en_3 = 'He looked appalled at the unsanitary conditions in the kitchen.',
  example_ko_3 = '주방의 비위생적인 환경에 그는 경악한 듯 보였어요.',
  example_en_4 = 'I was appalled to learn how widespread the practice had become.',
  example_ko_4 = '그 관행이 얼마나 만연해졌는지 알고 경악했어요.',
  example_en_5 = 'An appalled hush fell over the audience after the revelation.',
  example_ko_5 = '폭로 후 관객 사이에 경악한 침묵이 흘렀어요.'
WHERE id = 'w_emotion_C1_10';

UPDATE words SET
  example_en_2 = 'She felt disquieted by his unusual silence at the dinner table.',
  example_ko_2 = '식탁에서의 그의 평소답지 않은 침묵에 그녀는 불안해졌어요.',
  example_en_3 = 'He looked disquieted reading the cryptic message on the card.',
  example_ko_3 = '카드의 알 수 없는 메시지를 읽으며 그는 불안해 보였어요.',
  example_en_4 = 'I was disquieted by how quickly the mood in the room shifted.',
  example_ko_4 = '방 안의 분위기가 얼마나 빨리 바뀌었는지에 마음이 어지러웠어요.',
  example_en_5 = 'A disquieted feeling settled over the otherwise peaceful afternoon.',
  example_ko_5 = '평온했던 오후에 불안한 느낌이 자리잡았어요.'
WHERE id = 'w_emotion_C1_11';

UPDATE words SET
  example_en_2 = 'She was elated to learn she had been selected for the residency.',
  example_ko_2 = '레지던시에 선발됐다는 소식을 듣고 그녀는 기쁨에 넘쳤어요.',
  example_en_3 = 'He looked elated as he hugged his daughter at the graduation.',
  example_ko_3 = '졸업식에서 딸을 안으며 그는 기쁨에 넘쳐 보였어요.',
  example_en_4 = 'I felt elated when I finally received my acceptance letter.',
  example_ko_4 = '마침내 합격 통지서를 받았을 때 기쁨에 넘쳤어요.',
  example_en_5 = 'The elated researchers celebrated their long-awaited breakthrough.',
  example_ko_5 = '기쁨에 넘친 연구원들은 오랫동안 기다려온 돌파구를 축하했어요.'
WHERE id = 'w_emotion_C1_12';

UPDATE words SET
  example_en_2 = 'She felt perturbed by the unexpected message from her old colleague.',
  example_ko_2 = '옛 동료에게서 온 예기치 못한 메시지에 그녀는 마음이 어지러웠어요.',
  example_en_3 = 'He looked perturbed as the meeting took an unexpected turn.',
  example_ko_3 = '회의가 예상치 못한 방향으로 흐르자 그는 마음이 어지러워 보였어요.',
  example_en_4 = 'I was perturbed by the strange tone in her latest email.',
  example_ko_4 = '그녀의 최근 이메일에 담긴 묘한 어조에 마음이 어지러웠어요.',
  example_en_5 = 'A perturbed silence filled the room before anyone dared respond.',
  example_ko_5 = '누구도 답하기 전에 마음이 어지러운 침묵이 방을 채웠어요.'
WHERE id = 'w_emotion_C1_13';

UPDATE words SET
  example_en_2 = 'She was disconsolate for weeks after losing her grandmother.',
  example_ko_2 = '할머니를 잃은 후 그녀는 몇 주 동안 위안받을 수 없었어요.',
  example_en_3 = 'He looked disconsolate watching the family home being sold.',
  example_ko_3 = '가족이 살던 집이 팔리는 것을 보며 그는 위안받을 수 없을 만큼 슬퍼 보였어요.',
  example_en_4 = 'I was disconsolate after the project I had built collapsed overnight.',
  example_ko_4 = '제가 만든 프로젝트가 하룻밤 사이에 무너지자 위안받을 수 없을 만큼 슬펐어요.',
  example_en_5 = 'A disconsolate quiet hung over the household for many days.',
  example_ko_5 = '위안받을 수 없는 적막이 며칠 동안 집 안에 머물렀어요.'
WHERE id = 'w_emotion_C1_14';

UPDATE words SET
  example_en_2 = 'She remained buoyant despite the constant setbacks of her startup.',
  example_ko_2 = '스타트업의 끊임없는 좌절에도 그녀는 기분이 들뜬 채로 있었어요.',
  example_en_3 = 'He greeted the news with a buoyant attitude that surprised everyone.',
  example_ko_3 = '그는 모두를 놀라게 한 낙관적인 태도로 그 소식을 맞이했어요.',
  example_en_4 = 'I find her buoyant energy contagious in difficult meetings.',
  example_ko_4 = '어려운 회의에서 그녀의 들뜬 에너지가 전염성 있다고 느껴요.',
  example_en_5 = 'A buoyant outlook can be your most underrated professional asset.',
  example_ko_5 = '낙관적인 시각은 가장 저평가된 직업적 자산일 수 있어요.'
WHERE id = 'w_emotion_C1_15';

UPDATE words SET
  example_en_2 = 'She gave a contemptuous laugh at the absurd suggestion.',
  example_ko_2 = '말도 안 되는 제안에 그녀는 경멸하는 웃음을 흘렸어요.',
  example_en_3 = 'He spoke in a contemptuous tone about the rival firm''s strategy.',
  example_ko_3 = '그는 경쟁사의 전략에 대해 경멸하는 어조로 말했어요.',
  example_en_4 = 'I was put off by his contemptuous attitude toward the interns.',
  example_ko_4 = '인턴들을 향한 그의 경멸적인 태도에 거부감을 느꼈어요.',
  example_en_5 = 'A contemptuous glance can wound more than the harshest words.',
  example_ko_5 = '경멸하는 시선은 가장 모진 말보다 더 큰 상처를 줄 수 있어요.'
WHERE id = 'w_emotion_C1_16';

UPDATE words SET
  example_en_2 = 'She gave him an incredulous look when he claimed to be vegetarian.',
  example_ko_2 = '그가 채식주의자라고 주장하자 그녀는 믿을 수 없다는 시선을 보냈어요.',
  example_en_3 = 'He sounded incredulous as the witness described what she had seen.',
  example_ko_3 = '목격자가 본 것을 묘사하자 그는 믿을 수 없다는 듯한 목소리였어요.',
  example_en_4 = 'I felt incredulous reading the inflated figures in the report.',
  example_ko_4 = '보고서의 부풀려진 수치를 읽으며 믿을 수 없는 기분이었어요.',
  example_en_5 = 'An incredulous silence fell over the panel after the announcement.',
  example_ko_5 = '발표 후 패널 사이에 믿을 수 없다는 침묵이 흘렀어요.'
WHERE id = 'w_emotion_C1_17';

UPDATE words SET
  example_en_2 = 'She sang a mournful ballad that brought the room to tears.',
  example_ko_2 = '그녀는 방을 눈물로 가득 채우는 슬픔에 잠긴 발라드를 불렀어요.',
  example_en_3 = 'He gave a mournful look at the place where their cottage once stood.',
  example_ko_3 = '예전에 그들의 오두막이 있던 자리를 그는 슬프게 바라봤어요.',
  example_en_4 = 'I heard a mournful cry from across the valley at dusk.',
  example_ko_4 = '해질녘 골짜기 건너편에서 슬픈 울음소리가 들렸어요.',
  example_en_5 = 'A mournful procession made its way through the quiet streets.',
  example_ko_5 = '슬픔에 잠긴 행렬이 고요한 거리를 지나갔어요.'
WHERE id = 'w_emotion_C1_18';

UPDATE words SET
  example_en_2 = 'She was exasperated by the third schedule change in one week.',
  example_ko_2 = '일주일에 세 번이나 일정이 바뀌어 그녀는 극도로 짜증이 났어요.',
  example_en_3 = 'He gave an exasperated sigh and walked out of the room.',
  example_ko_3 = '그는 극도로 짜증 난 한숨을 내쉬고 방을 나갔어요.',
  example_en_4 = 'I felt exasperated explaining the same instructions for the fifth time.',
  example_ko_4 = '같은 지시를 다섯 번째 설명하며 극도로 짜증이 났어요.',
  example_en_5 = 'An exasperated tone crept into her usually patient voice.',
  example_ko_5 = '평소에 인내심 많은 그녀의 목소리에 극도로 짜증 난 어조가 스며들었어요.'
WHERE id = 'w_emotion_C1_19';

UPDATE words SET
  example_en_2 = 'A quiet melancholy filled the room after the last guest had left.',
  example_ko_2 = '마지막 손님이 떠난 후 방은 조용한 우울감으로 가득 찼어요.',
  example_en_3 = 'He spoke with a soft melancholy about his years abroad.',
  example_ko_3 = '그는 해외에서 보낸 시절에 대해 부드러운 우울함을 담아 말했어요.',
  example_en_4 = 'I sometimes welcome a touch of melancholy on rainy autumn evenings.',
  example_ko_4 = '비 오는 가을 저녁에는 가끔 약간의 우울감을 반기기도 해요.',
  example_en_5 = 'The melancholy of late winter often inspires her best paintings.',
  example_ko_5 = '늦겨울의 우울감이 그녀의 최고작에 종종 영감을 줘요.'
WHERE id = 'w_emotion_C1_20';

UPDATE words SET
  example_en_2 = 'She faced the trial with surprising courage despite her clear trepidation.',
  example_ko_2 = '분명한 불안감에도 불구하고 그녀는 놀라운 용기로 재판에 임했어요.',
  example_en_3 = 'He approached the announcement with a quiet sense of trepidation.',
  example_ko_3 = '그는 조용한 불안감을 안고 발표에 다가갔어요.',
  example_en_4 = 'I felt some trepidation about returning to my hometown after so long.',
  example_ko_4 = '오랜만에 고향에 돌아가는 것에 약간의 불안감을 느꼈어요.',
  example_en_5 = 'A wave of trepidation passed through the team as the deadline approached.',
  example_ko_5 = '마감일이 다가오자 팀에 불안감의 물결이 지나갔어요.'
WHERE id = 'w_emotion_C1_21';

UPDATE words SET
  example_en_2 = 'He showed no compunction about taking credit for someone else''s work.',
  example_ko_2 = '그는 다른 사람의 일에 대한 공을 가져가는 것에 아무런 양심의 가책도 없었어요.',
  example_en_3 = 'She felt deep compunction about how she had spoken to her mother.',
  example_ko_3 = '그녀는 어머니께 말한 방식에 대해 깊은 양심의 가책을 느꼈어요.',
  example_en_4 = 'I would have no compunction about reporting the misconduct.',
  example_ko_4 = '그 부정 행위를 신고하는 것에 양심의 가책은 전혀 없을 거예요.',
  example_en_5 = 'A leader without compunction can do tremendous harm to an organisation.',
  example_ko_5 = '양심의 가책이 없는 리더는 조직에 막대한 해를 끼칠 수 있어요.'
WHERE id = 'w_emotion_C1_22';

UPDATE words SET
  example_en_2 = 'A surge of elation filled her chest as she crossed the finish line.',
  example_ko_2 = '결승선을 넘는 순간 크나큰 기쁨이 그녀의 가슴을 채웠어요.',
  example_en_3 = 'He spoke of his early travels with unmistakable elation.',
  example_ko_3 = '그는 초기의 여행에 대해 분명한 기쁨을 담아 이야기했어요.',
  example_en_4 = 'I felt a quiet elation hearing my grandfather laugh again.',
  example_ko_4 = '할아버지가 다시 웃는 소리를 듣고 조용한 기쁨을 느꼈어요.',
  example_en_5 = 'The elation of the breakthrough sustained the team for many months.',
  example_ko_5 = '돌파구의 기쁨이 팀을 몇 달간 지탱해 줬어요.'
WHERE id = 'w_emotion_C1_23';

UPDATE words SET
  example_en_2 = 'A sense of despondency crept into the office after the layoffs.',
  example_ko_2 = '정리해고 후 사무실에 낙담의 기운이 스며들었어요.',
  example_en_3 = 'He sank into deep despondency during the long convalescence.',
  example_ko_3 = '긴 요양 기간 동안 그는 깊은 절망감에 빠졌어요.',
  example_en_4 = 'I worked through my despondency by writing each morning.',
  example_ko_4 = '매일 아침 글을 쓰며 낙담을 극복해 나갔어요.',
  example_en_5 = 'Lifting someone out of despondency requires patience more than advice.',
  example_ko_5 = '누군가를 절망에서 끌어올리는 데는 조언보다 인내가 더 필요해요.'
WHERE id = 'w_emotion_C1_24';

UPDATE words SET
  example_en_2 = 'There was a curious ambiguity in his response to her question.',
  example_ko_2 = '그녀의 질문에 대한 그의 답에는 묘한 모호함이 있었어요.',
  example_en_3 = 'She lived with the ambiguity of their unresolved relationship.',
  example_ko_3 = '그녀는 정리되지 않은 그들 관계의 모호함과 함께 살았어요.',
  example_en_4 = 'I''ve come to accept the ambiguity of certain life choices.',
  example_ko_4 = '저는 특정 인생 선택의 모호함을 받아들이게 됐어요.',
  example_en_5 = 'Comfort with ambiguity is a quiet mark of emotional maturity.',
  example_ko_5 = '모호함에 대한 편안함은 정서적 성숙의 조용한 표지예요.'
WHERE id = 'w_emotion_C1_25';

UPDATE words SET
  example_en_2 = 'She accepted the diagnosis with quiet resignation.',
  example_ko_2 = '그녀는 조용한 체념으로 진단을 받아들였어요.',
  example_en_3 = 'He spoke with a tone of resignation about his retirement.',
  example_ko_3 = '그는 자신의 은퇴에 대해 체념한 어조로 말했어요.',
  example_en_4 = 'I sensed her resignation when she stopped fighting the decision.',
  example_ko_4 = '그녀가 결정에 맞서는 것을 멈추자 그녀의 체념을 감지했어요.',
  example_en_5 = 'A deep resignation settled over the small town after the closure.',
  example_ko_5 = '폐쇄 후 작은 마을에 깊은 체념이 자리잡았어요.'
WHERE id = 'w_emotion_C1_26';

UPDATE words SET
  example_en_2 = 'She delivered a fervent appeal on behalf of the displaced families.',
  example_ko_2 = '그녀는 이재민 가족들을 대신하여 열렬한 호소를 했어요.',
  example_en_3 = 'He was a fervent supporter of the small local theatre.',
  example_ko_3 = '그는 그 작은 동네 극장의 열렬한 지지자였어요.',
  example_en_4 = 'I admired her fervent commitment to teaching beginners.',
  example_ko_4 = '초보자를 가르치는 것에 대한 그녀의 열렬한 헌신을 존경했어요.',
  example_en_5 = 'A fervent silence followed his deeply personal closing remarks.',
  example_ko_5 = '그의 깊이 개인적인 맺음말 뒤에 열렬한 침묵이 이어졌어요.'
WHERE id = 'w_emotion_C1_27';

UPDATE words SET
  example_en_2 = 'She remained indifferent to the rumours circulating about her.',
  example_ko_2 = '그녀는 자신에 대해 도는 소문에 무관심했어요.',
  example_en_3 = 'He gave an indifferent shrug at the offered promotion.',
  example_ko_3 = '제안받은 승진에 그는 무관심하게 어깨를 으쓱했어요.',
  example_en_4 = 'I''m not indifferent — I simply don''t see urgency in the matter.',
  example_ko_4 = '무관심한 게 아니에요, 그 문제에 시급함을 느끼지 못할 뿐이에요.',
  example_en_5 = 'An indifferent leader can cause more harm than an openly hostile one.',
  example_ko_5 = '무관심한 리더는 노골적으로 적대적인 리더보다 더 큰 해를 끼칠 수 있어요.'
WHERE id = 'w_emotion_C1_28';

UPDATE words SET
  example_en_2 = 'She was tormented by memories she couldn''t fully understand.',
  example_ko_2 = '그녀는 완전히 이해할 수 없는 기억들에 시달렸어요.',
  example_en_3 = 'He looked tormented as he prepared to face the courtroom.',
  example_ko_3 = '법정에 맞설 준비를 하며 그는 괴로움에 시달리는 표정이었어요.',
  example_en_4 = 'I''ve been tormented by the question of what I could have done differently.',
  example_ko_4 = '제가 무엇을 다르게 할 수 있었을지에 대한 질문에 시달려 왔어요.',
  example_en_5 = 'A tormented mind rarely finds rest without some form of release.',
  example_ko_5 = '괴로움에 시달리는 마음은 어떤 해방 없이는 쉼을 찾기 어려워요.'
WHERE id = 'w_emotion_C1_29';

UPDATE words SET
  example_en_2 = 'She made a solemn promise to return within a year.',
  example_ko_2 = '그녀는 일 년 안에 돌아오겠다는 엄숙한 약속을 했어요.',
  example_en_3 = 'He spoke in a solemn voice during the memorial service.',
  example_ko_3 = '그는 추도식에서 엄숙한 목소리로 말했어요.',
  example_en_4 = 'I was moved by the solemn dignity of the small village ceremony.',
  example_ko_4 = '작은 마을 의식의 엄숙한 품격에 감동받았어요.',
  example_en_5 = 'A solemn quiet settled over the room as the verdict was read.',
  example_ko_5 = '판결이 읽혀지자 엄숙한 고요가 방에 내려앉았어요.'
WHERE id = 'w_emotion_C1_30';

UPDATE words SET
  example_en_2 = 'She felt bereft after her closest collaborator suddenly left the project.',
  example_ko_2 = '가장 가까운 동료가 갑자기 프로젝트를 떠난 후 그녀는 큰 상실감을 느꼈어요.',
  example_en_3 = 'He looked bereft standing in the empty rooms of his old apartment.',
  example_ko_3 = '옛 아파트의 텅 빈 방들 가운데 서서 그는 상실감에 잠겨 보였어요.',
  example_en_4 = 'I felt bereft of inspiration after months of relentless deadlines.',
  example_ko_4 = '몇 달간의 끊임없는 마감 후에 영감을 완전히 잃은 듯한 상실감을 느꼈어요.',
  example_en_5 = 'A bereft silence lingered in the home after the funeral.',
  example_ko_5 = '장례식 후 집에 상실감의 침묵이 머물렀어요.'
WHERE id = 'w_emotion_C1_31';

UPDATE words SET
  example_en_2 = 'True contentment seemed elusive even after she achieved her goals.',
  example_ko_2 = '목표를 달성한 후에도 진정한 만족은 잡히지 않는 것 같았어요.',
  example_en_3 = 'He found peace of mind to be elusive in the busy season.',
  example_ko_3 = '그는 바쁜 시기에 마음의 평화가 포착하기 어려운 것을 발견했어요.',
  example_en_4 = 'I find quiet joy elusive when I''m always reaching for the next thing.',
  example_ko_4 = '항상 다음 것을 향해 나아갈 때 조용한 기쁨은 잡기 어려워요.',
  example_en_5 = 'An elusive sense of belonging haunted him in every new city.',
  example_ko_5 = '포착하기 어려운 소속감이 새 도시마다 그를 따라다녔어요.'
WHERE id = 'w_emotion_C1_32';

UPDATE words SET
  example_en_2 = 'Her tumultuous adolescence shaped much of her later writing.',
  example_ko_2 = '그녀의 격동적인 청소년기는 후일 그녀의 글에 큰 영향을 줬어요.',
  example_en_3 = 'He emerged from a tumultuous decade with surprising calm.',
  example_ko_3 = '그는 격동의 10년에서 놀라울 만큼 차분하게 빠져나왔어요.',
  example_en_4 = 'I look back on those tumultuous years with more gratitude than regret.',
  example_ko_4 = '그 격동의 시절을 후회보다 감사한 마음으로 돌아봐요.',
  example_en_5 = 'A tumultuous chapter in her career ultimately led to her most honest work.',
  example_ko_5 = '그녀 커리어의 격동적인 한 챕터가 결국 가장 진솔한 작품으로 이어졌어요.'
WHERE id = 'w_emotion_C1_33';

UPDATE words SET
  example_en_2 = 'She spoke of her mentor in reverent tones during the eulogy.',
  example_ko_2 = '추도사 동안 그녀는 자신의 스승에 대해 경외의 어조로 말했어요.',
  example_en_3 = 'He gave a reverent bow before entering the old temple.',
  example_ko_3 = '오래된 사원에 들어가기 전 그는 경외하는 절을 했어요.',
  example_en_4 = 'I feel reverent every time I read her early poems.',
  example_ko_4 = '그녀의 초기 시를 읽을 때마다 저는 경외감을 느껴요.',
  example_en_5 = 'A reverent hush filled the cathedral as the choir began to sing.',
  example_ko_5 = '합창단이 노래를 시작하자 경외하는 정적이 대성당을 채웠어요.'
WHERE id = 'w_emotion_C1_34';

UPDATE words SET
  example_en_2 = 'She became disaffected with the union''s lack of action.',
  example_ko_2 = '그녀는 노조의 행동 부족에 불만을 품게 됐어요.',
  example_en_3 = 'He sounded disaffected when discussing the new leadership.',
  example_ko_3 = '새 지도부를 논할 때 그는 불만을 품은 듯한 목소리였어요.',
  example_en_4 = 'I''m disaffected by how the organisation has drifted from its mission.',
  example_ko_4 = '그 조직이 본래 사명에서 멀어진 것에 불만을 품고 있어요.',
  example_en_5 = 'Disaffected members slowly drifted away from the once-thriving community.',
  example_ko_5 = '불만을 품은 회원들이 한때 번창했던 공동체에서 서서히 멀어졌어요.'
WHERE id = 'w_emotion_C1_35';

-- ══════════════════════════════════════
-- C2 (35개)
-- ══════════════════════════════════════

UPDATE words SET
  example_en_2 = 'She greeted the small audience with a lugubrious expression that fitted her ballad.',
  example_ko_2 = '그녀는 자신의 발라드와 어울리는 처량한 표정으로 작은 관객을 맞이했어요.',
  example_en_3 = 'He delivered a lugubrious account of his years lost to the failed venture.',
  example_ko_3 = '그는 실패한 사업에 잃어버린 세월에 대해 처량한 이야기를 풀어놓았어요.',
  example_en_4 = 'I found his lugubrious storytelling oddly compelling that long evening.',
  example_ko_4 = '그 긴 저녁에 그의 처량한 이야기가 묘하게 매력적으로 느껴졌어요.',
  example_en_5 = 'A lugubrious silence stretched between us long after the news had sunk in.',
  example_ko_5 = '소식이 가라앉은 한참 후에도 우리 사이에 처량한 침묵이 이어졌어요.'
WHERE id = 'w_emotion_C2_01';

UPDATE words SET
  example_en_2 = 'She remained sanguine about the project even as funding sources dried up.',
  example_ko_2 = '자금원이 마르는 와중에도 그녀는 프로젝트에 대해 낙관적이었어요.',
  example_en_3 = 'He took a sanguine view of the regulatory delays that troubled his peers.',
  example_ko_3 = '동료들을 곤혹스럽게 한 규제 지연에 대해 그는 낙관적인 시각을 가졌어요.',
  example_en_4 = 'I''m sanguine that the climate movement will adapt and gather momentum again.',
  example_ko_4 = '기후 운동이 적응하고 다시 추진력을 얻을 것이라고 낙관해요.',
  example_en_5 = 'A sanguine temperament is rare but invaluable in turbulent political times.',
  example_ko_5 = '낙관적인 기질은 격동의 정치 시기에 드물지만 매우 귀해요.'
WHERE id = 'w_emotion_C2_02';

UPDATE words SET
  example_en_2 = 'She became lachrymose during the final scene of the opera.',
  example_ko_2 = '그녀는 오페라의 마지막 장면에서 눈물을 흘렸어요.',
  example_en_3 = 'He gave a lachrymose toast at his oldest friend''s retirement dinner.',
  example_ko_3 = '그는 오랜 친구의 은퇴 만찬에서 눈물 어린 건배사를 했어요.',
  example_en_4 = 'I become a little lachrymose listening to my late mother''s favourite songs.',
  example_ko_4 = '돌아가신 어머니가 좋아하시던 노래를 들으면 약간 눈물을 흘리게 돼요.',
  example_en_5 = 'A lachrymose memoir can move readers if its emotion never tips into sentimentality.',
  example_ko_5 = '눈물 어린 회고록은 감정이 감상주의로 흐르지만 않으면 독자를 움직일 수 있어요.'
WHERE id = 'w_emotion_C2_03';

UPDATE words SET
  example_en_2 = 'She was disconsolate for the entire winter following her brother''s passing.',
  example_ko_2 = '오빠가 세상을 떠난 후 그녀는 겨우내 위로받을 수 없을 만큼 슬펐어요.',
  example_en_3 = 'He looked disconsolate as the museum he had built was finally closed.',
  example_ko_3 = '자신이 세운 박물관이 마침내 문을 닫자 그는 위로받을 수 없는 슬픔에 잠겨 보였어요.',
  example_en_4 = 'I was disconsolate after realising what had been lost in the fire.',
  example_ko_4 = '화재로 잃어버린 것을 깨달은 후 위로받을 수 없을 만큼 슬펐어요.',
  example_en_5 = 'A disconsolate hush gathered over the room as the eulogies began.',
  example_ko_5 = '추도사가 시작되자 위로받을 수 없는 침묵이 방에 모였어요.'
WHERE id = 'w_emotion_C2_04';

UPDATE words SET
  example_en_2 = 'She gave an ebullient welcome to the first group of overseas students.',
  example_ko_2 = '그녀는 첫 해외 학생 그룹에게 활기 넘치는 환영을 했어요.',
  example_en_3 = 'He returned from his sabbatical in an ebullient mood, full of fresh ideas.',
  example_ko_3 = '그는 안식년에서 새로운 아이디어가 가득한 활기 넘치는 기분으로 돌아왔어요.',
  example_en_4 = 'I found her ebullient stage presence completely irresistible.',
  example_ko_4 = '활기 넘치는 그녀의 무대 존재감이 도저히 거부할 수 없게 느껴졌어요.',
  example_en_5 = 'An ebullient crowd can lift a tired performer in ways nothing else can.',
  example_ko_5 = '활기 넘치는 관객은 지친 공연자를 다른 무엇으로도 할 수 없는 방식으로 끌어올릴 수 있어요.'
WHERE id = 'w_emotion_C2_05';

UPDATE words SET
  example_en_2 = 'She described her grandmother''s embrace with an ineffable tenderness.',
  example_ko_2 = '그녀는 할머니의 포옹을 말로 표현할 수 없는 다정함으로 묘사했어요.',
  example_en_3 = 'He spoke of his first symphony performance with an ineffable sense of awe.',
  example_ko_3 = '그는 자신의 첫 교향곡 연주에 대해 말로 표현할 수 없는 경외감으로 이야기했어요.',
  example_en_4 = 'I felt an ineffable lightness watching dawn break over the rice fields.',
  example_ko_4 = '논 위로 새벽이 트는 것을 보며 말로 표현할 수 없는 가벼움을 느꼈어요.',
  example_en_5 = 'An ineffable bond seemed to form between them in those silent hours.',
  example_ko_5 = '그 침묵의 시간 동안 그들 사이에 말로 표현할 수 없는 유대가 형성되는 듯했어요.'
WHERE id = 'w_emotion_C2_06';

UPDATE words SET
  example_en_2 = 'She remained equanimous as the criticism from senior staff intensified.',
  example_ko_2 = '고위직의 비판이 강해지는 와중에도 그녀는 평정심을 유지했어요.',
  example_en_3 = 'He delivered an equanimous response that defused the heated argument.',
  example_ko_3 = '그는 격렬한 논쟁을 가라앉히는 평정심 있는 답변을 했어요.',
  example_en_4 = 'I''ve learned to be more equanimous about outcomes I cannot control.',
  example_ko_4 = '제어할 수 없는 결과에 대해 더 평정심을 갖는 법을 배웠어요.',
  example_en_5 = 'An equanimous leader inspires steadiness in the most turbulent of teams.',
  example_ko_5 = '평정심 있는 리더는 가장 격동적인 팀에도 안정감을 불어넣어요.'
WHERE id = 'w_emotion_C2_07';

UPDATE words SET
  example_en_2 = 'She was magnanimous toward the colleague who had publicly criticised her.',
  example_ko_2 = '그녀는 자신을 공개적으로 비판한 동료에게 관대했어요.',
  example_en_3 = 'He gave a magnanimous concession speech after a long, brutal campaign.',
  example_ko_3 = '길고 가혹한 선거전 후 그는 관대한 패배 인정 연설을 했어요.',
  example_en_4 = 'I admire how magnanimous she remains in the face of constant provocation.',
  example_ko_4 = '끊임없는 도발 앞에서도 그녀가 얼마나 관대하게 있는지 존경해요.',
  example_en_5 = 'A magnanimous gesture from leadership can transform a workplace culture overnight.',
  example_ko_5 = '리더십의 관대한 행동은 직장 문화를 하룻밤 사이에 바꿀 수 있어요.'
WHERE id = 'w_emotion_C2_08';

UPDATE words SET
  example_en_2 = 'She accepted the long convalescence with stoic patience.',
  example_ko_2 = '그녀는 긴 요양 기간을 의연한 인내로 받아들였어요.',
  example_en_3 = 'He bore the loss of his lifelong workshop with stoic dignity.',
  example_ko_3 = '그는 평생 일해온 작업장을 잃은 일을 의연한 품격으로 견뎠어요.',
  example_en_4 = 'I try to be stoic about setbacks, though it isn''t always natural for me.',
  example_ko_4 = '좌절에 대해 의연하려 노력하지만 그게 늘 자연스럽지는 않아요.',
  example_en_5 = 'A stoic silence is sometimes more eloquent than the most polished speech.',
  example_ko_5 = '의연한 침묵이 가장 다듬어진 연설보다 더 웅변적일 때가 있어요.'
WHERE id = 'w_emotion_C2_09';

UPDATE words SET
  example_en_2 = 'She lay on the hammock in languid contentment all afternoon.',
  example_ko_2 = '그녀는 오후 내내 나른한 만족감 속에 해먹에 누워 있었어요.',
  example_en_3 = 'He spoke in a languid voice about the slow summers of his youth.',
  example_ko_3 = '그는 청년 시절의 느린 여름에 대해 나른한 목소리로 이야기했어요.',
  example_en_4 = 'I sank into a languid mood after the heavy lunch and warm wine.',
  example_ko_4 = '푸짐한 점심과 따뜻한 와인 후에 저는 나른한 기분에 잠겼어요.',
  example_en_5 = 'A languid breeze drifted through the open window of the seaside café.',
  example_ko_5 = '해변 카페의 열린 창문으로 나른한 산들바람이 흘러들어왔어요.'
WHERE id = 'w_emotion_C2_10';

UPDATE words SET
  example_en_2 = 'She endured a turbulent year of grief and reinvention.',
  example_ko_2 = '그녀는 슬픔과 재창조의 격동적인 한 해를 견뎌냈어요.',
  example_en_3 = 'He looked back on the turbulent period as the most formative of his life.',
  example_ko_3 = '그는 그 격동의 시기를 자기 인생에서 가장 형성적인 시기로 회상했어요.',
  example_en_4 = 'I rode through turbulent emotions during the months after the diagnosis.',
  example_ko_4 = '진단 후 몇 달간 격동적인 감정 속을 헤쳐 나왔어요.',
  example_en_5 = 'A turbulent inner life often produces a remarkably composed outer presence.',
  example_ko_5 = '격동적인 내면이 종종 놀랍도록 차분한 외면을 만들어내요.'
WHERE id = 'w_emotion_C2_11';

UPDATE words SET
  example_en_2 = 'She remained imperturbable as the press conference grew more hostile.',
  example_ko_2 = '기자 회견이 점점 더 적대적으로 변하는 와중에도 그녀는 흔들리지 않았어요.',
  example_en_3 = 'He gave an imperturbable smile and continued with his prepared remarks.',
  example_ko_3 = '그는 흔들리지 않는 미소를 짓고 준비한 발언을 계속했어요.',
  example_en_4 = 'I''m amazed by her imperturbable focus in high-pressure negotiations.',
  example_ko_4 = '고도의 압박 속 협상에서 흔들리지 않는 그녀의 집중력이 놀라워요.',
  example_en_5 = 'An imperturbable demeanour during crisis sets true leaders apart from the rest.',
  example_ko_5 = '위기 동안의 흔들리지 않는 태도가 진정한 리더를 나머지와 구분 짓게 해요.'
WHERE id = 'w_emotion_C2_12';

UPDATE words SET
  example_en_2 = 'She wrote a memoir that gave voice to the anguish she had long suppressed.',
  example_ko_2 = '그녀는 오랫동안 억눌러 온 고뇌를 표현한 회고록을 썼어요.',
  example_en_3 = 'He spoke of the anguish that had followed him through every decade.',
  example_ko_3 = '그는 십 년마다 자신을 따라다닌 고뇌에 대해 이야기했어요.',
  example_en_4 = 'I could see the anguish in her eyes despite her composed expression.',
  example_ko_4 = '차분한 표정에도 불구하고 그녀의 눈 속 고뇌가 보였어요.',
  example_en_5 = 'A muted anguish ran beneath the polished surface of his daily routine.',
  example_ko_5 = '그의 다듬어진 일상 표면 아래에는 가라앉은 고뇌가 흐르고 있었어요.'
WHERE id = 'w_emotion_C2_13';

UPDATE words SET
  example_en_2 = 'She received rapturous reviews for her opening night performance.',
  example_ko_2 = '그녀는 개막 공연으로 황홀한 호평을 받았어요.',
  example_en_3 = 'He delivered a rapturous tribute to the conductor''s legacy.',
  example_ko_3 = '그는 지휘자의 유산에 대해 황홀한 헌사를 전했어요.',
  example_en_4 = 'I gave a rapturous account of my first encounter with her novels.',
  example_ko_4 = '저는 그녀의 소설을 처음 접한 경험에 대해 황홀한 이야기를 전했어요.',
  example_en_5 = 'A rapturous ovation greeted the soloist as she stepped onto the stage.',
  example_ko_5 = '독주자가 무대에 오르자 황홀한 기립 박수가 그녀를 맞이했어요.'
WHERE id = 'w_emotion_C2_14';

UPDATE words SET
  example_en_2 = 'She sang in a doleful voice that hushed even the noisiest pub.',
  example_ko_2 = '그녀는 가장 시끄러운 술집조차 조용하게 만드는 구슬픈 목소리로 노래했어요.',
  example_en_3 = 'He gave a doleful nod, unable to find the right words.',
  example_ko_3 = '그는 적절한 말을 찾지 못하고 구슬픈 고갯짓을 했어요.',
  example_en_4 = 'I heard a doleful melody drifting from the violinist on the corner.',
  example_ko_4 = '모퉁이의 바이올린 연주자에게서 구슬픈 선율이 흘러나오는 것을 들었어요.',
  example_en_5 = 'A doleful silence followed his slow, deliberate description of the loss.',
  example_ko_5 = '느리고 신중한 그의 상실 묘사에 구슬픈 침묵이 이어졌어요.'
WHERE id = 'w_emotion_C2_15';

UPDATE words SET
  example_en_2 = 'She has a placid temperament that her colleagues find calming.',
  example_ko_2 = '그녀는 동료들이 마음의 안정을 느끼는 평온한 기질을 가지고 있어요.',
  example_en_3 = 'He gave a placid reply that diffused the rising tension in the room.',
  example_ko_3 = '그는 방 안의 고조되는 긴장을 누그러뜨리는 평온한 답변을 했어요.',
  example_en_4 = 'I admire her placid acceptance of things that would unsettle most people.',
  example_ko_4 = '대부분의 사람들을 불안하게 만들 일을 평온하게 받아들이는 그녀를 존경해요.',
  example_en_5 = 'A placid surface can sometimes conceal a current of deep feeling.',
  example_ko_5 = '평온한 표면이 때로는 깊은 감정의 흐름을 감출 수 있어요.'
WHERE id = 'w_emotion_C2_16';

UPDATE words SET
  example_en_2 = 'She gave a sulky reply and pretended to be busy with her phone.',
  example_ko_2 = '그녀는 삐진 답을 하고 휴대폰으로 바쁜 척했어요.',
  example_en_3 = 'He stayed sulky for the entire car ride home.',
  example_ko_3 = '그는 집까지 가는 차 안 내내 삐져 있었어요.',
  example_en_4 = 'I tried not to be sulky after my proposal was set aside.',
  example_ko_4 = '제 제안이 보류된 후 삐지지 않으려 했어요.',
  example_en_5 = 'A sulky teenager rarely benefits from being confronted directly.',
  example_ko_5 = '삐진 청소년은 직접 대면당하는 것이 도움이 되는 경우가 거의 없어요.'
WHERE id = 'w_emotion_C2_17';

UPDATE words SET
  example_en_2 = 'She remained intrepid even as the trail became increasingly treacherous.',
  example_ko_2 = '길이 점점 더 험해지는 와중에도 그녀는 겁 없이 있었어요.',
  example_en_3 = 'He was an intrepid reporter who covered stories no one else would touch.',
  example_ko_3 = '그는 누구도 손대지 않을 이야기를 다루는 대담한 기자였어요.',
  example_en_4 = 'I admired her intrepid spirit during the early stages of the expedition.',
  example_ko_4 = '탐험 초반 그녀의 대담한 정신을 존경했어요.',
  example_en_5 = 'An intrepid mind is willing to question what everyone else accepts.',
  example_ko_5 = '대담한 정신은 모두가 받아들이는 것을 기꺼이 의심해요.'
WHERE id = 'w_emotion_C2_18';

UPDATE words SET
  example_en_2 = 'She grew petulant whenever her ideas were challenged in workshops.',
  example_ko_2 = '워크숍에서 자기 아이디어가 도전받을 때마다 그녀는 짜증을 부렸어요.',
  example_en_3 = 'He gave a petulant huff and turned away from the discussion.',
  example_ko_3 = '그는 짜증스러운 한숨을 내쉬고는 토론에서 등을 돌렸어요.',
  example_en_4 = 'I shouldn''t have been so petulant in front of the new team.',
  example_ko_4 = '새 팀 앞에서 그렇게 짜증스럽게 굴지 말았어야 했어요.',
  example_en_5 = 'A petulant tone from a senior colleague can poison a whole office.',
  example_ko_5 = '고위 동료의 짜증스러운 어조가 사무실 전체를 망칠 수 있어요.'
WHERE id = 'w_emotion_C2_19';

UPDATE words SET
  example_en_2 = 'She gave a nonchalant shrug when asked about the missed opportunity.',
  example_ko_2 = '놓친 기회에 대한 질문에 그녀는 태연한 어깨를 으쓱했어요.',
  example_en_3 = 'He spoke in a nonchalant tone, as if the achievement had been ordinary.',
  example_ko_3 = '그는 그 성취가 평범했다는 듯 태연한 어조로 말했어요.',
  example_en_4 = 'I tried to look nonchalant when I saw her at the gallery.',
  example_ko_4 = '갤러리에서 그녀를 보았을 때 태연해 보이려 했어요.',
  example_en_5 = 'A nonchalant manner can be charming or infuriating, depending on context.',
  example_ko_5 = '태연한 태도는 맥락에 따라 매력적일 수도 있고 화나게 할 수도 있어요.'
WHERE id = 'w_emotion_C2_20';

UPDATE words SET
  example_en_2 = 'She offered a fervent defence of the controversial new policy.',
  example_ko_2 = '그녀는 논란이 많은 새 정책에 대해 열렬한 옹호를 했어요.',
  example_en_3 = 'He carried a fervent love for traditional pottery throughout his life.',
  example_ko_3 = '그는 평생 전통 도예에 대한 열렬한 사랑을 품고 있었어요.',
  example_en_4 = 'I''ve held a fervent belief in the value of small communities.',
  example_ko_4 = '저는 작은 공동체의 가치에 대한 열렬한 믿음을 지녀 왔어요.',
  example_en_5 = 'A fervent declaration without action becomes empty over time.',
  example_ko_5 = '행동 없는 열렬한 선언은 시간이 지나면 공허해져요.'
WHERE id = 'w_emotion_C2_21';

UPDATE words SET
  example_en_2 = 'She gave a rueful laugh remembering her first attempt at the dish.',
  example_ko_2 = '처음으로 그 요리를 시도했던 일을 떠올리며 그녀는 후회 섞인 웃음을 지었어요.',
  example_en_3 = 'He gave a rueful nod when asked about his early career choices.',
  example_ko_3 = '초반 커리어 선택에 대한 질문에 그는 후회 섞인 고갯짓을 했어요.',
  example_en_4 = 'I shared a rueful look with my brother as our father told the old story.',
  example_ko_4 = '아버지가 옛 이야기를 꺼내자 동생과 후회 섞인 시선을 나눴어요.',
  example_en_5 = 'A rueful smile often carries more honesty than a confident grin.',
  example_ko_5 = '후회 섞인 미소가 종종 자신만만한 웃음보다 더 큰 진실을 담아요.'
WHERE id = 'w_emotion_C2_22';

UPDATE words SET
  example_en_2 = 'She hosted a convivial dinner that brought together neighbours and old friends.',
  example_ko_2 = '그녀는 이웃과 옛 친구들을 모으는 유쾌한 저녁 식사를 열었어요.',
  example_en_3 = 'He has a convivial way of putting strangers at ease within minutes.',
  example_ko_3 = '그는 낯선 사람들도 몇 분 만에 편안하게 만드는 유쾌한 방식을 가지고 있어요.',
  example_en_4 = 'I''ve missed the convivial gatherings we used to have on summer evenings.',
  example_ko_4 = '여름 저녁마다 가졌던 그 유쾌한 모임들이 그리워요.',
  example_en_5 = 'A convivial atmosphere is often built on small acts of generosity.',
  example_ko_5 = '유쾌한 분위기는 종종 작은 너그러움의 행동에서 만들어져요.'
WHERE id = 'w_emotion_C2_23';

UPDATE words SET
  example_en_2 = 'She had an irascible streak that surfaced under stress.',
  example_ko_2 = '그녀에게는 스트레스 받을 때 드러나는 성미 급한 면이 있었어요.',
  example_en_3 = 'He was an irascible editor whose standards were impossibly high.',
  example_ko_3 = '그는 기준이 터무니없이 높은 성미가 급한 편집자였어요.',
  example_en_4 = 'I''ve learned to manage my irascible side better with age.',
  example_ko_4 = '나이가 들면서 제 성미 급한 면을 더 잘 다스리는 법을 배웠어요.',
  example_en_5 = 'An irascible nature can be tempered by deliberate reflection over the years.',
  example_ko_5 = '성미가 급한 성격은 수년에 걸친 의도적인 성찰로 누그러질 수 있어요.'
WHERE id = 'w_emotion_C2_24';

UPDATE words SET
  example_en_2 = 'She felt mollified by his thoughtful explanation of the misunderstanding.',
  example_ko_2 = '오해에 대한 그의 사려 깊은 설명에 그녀의 마음이 달래졌어요.',
  example_en_3 = 'He looked mollified after the manager personally addressed his concerns.',
  example_ko_3 = '매니저가 그의 우려를 직접 해결해 준 후 그는 달래진 듯 보였어요.',
  example_en_4 = 'I was mollified once she promised to follow up by Friday.',
  example_ko_4 = '그녀가 금요일까지 후속 조치를 하겠다고 약속하자 마음이 달래졌어요.',
  example_en_5 = 'A mollified client can become an even more loyal one with care.',
  example_ko_5 = '달래진 고객은 정성 어린 관리로 더 충성스러운 고객이 될 수 있어요.'
WHERE id = 'w_emotion_C2_25';

UPDATE words SET
  example_en_2 = 'She was enraptured by the soprano''s final aria of the evening.',
  example_ko_2 = '그녀는 저녁의 마지막 소프라노 아리아에 황홀경에 빠졌어요.',
  example_en_3 = 'He looked enraptured listening to the elderly fisherman''s story.',
  example_ko_3 = '나이 든 어부의 이야기를 들으며 그는 황홀경에 빠진 듯 보였어요.',
  example_en_4 = 'I was enraptured by the way she described the northern lights.',
  example_ko_4 = '그녀가 오로라를 묘사하는 방식에 황홀경에 빠졌어요.',
  example_en_5 = 'An enraptured audience is the truest reward for any storyteller.',
  example_ko_5 = '황홀경에 빠진 관객이 모든 이야기꾼에게 가장 진정한 보상이에요.'
WHERE id = 'w_emotion_C2_26';

UPDATE words SET
  example_en_2 = 'She offered a querulous complaint about every small inconvenience.',
  example_ko_2 = '그녀는 모든 작은 불편함에 대해 투정 어린 불평을 늘어놓았어요.',
  example_en_3 = 'He gave a querulous response when his itinerary was changed at the last minute.',
  example_ko_3 = '일정이 막판에 변경되자 그는 투정 부리는 듯한 반응을 보였어요.',
  example_en_4 = 'I tried not to sound querulous when describing the difficulties.',
  example_ko_4 = '어려움을 설명할 때 투정 부리는 듯이 들리지 않으려 했어요.',
  example_en_5 = 'A querulous tone can drain goodwill from even the kindest listeners.',
  example_ko_5 = '투정 부리는 어조는 가장 친절한 청자에게서도 호의를 빼앗아 갈 수 있어요.'
WHERE id = 'w_emotion_C2_27';

UPDATE words SET
  example_en_2 = 'She was elated by the rare recognition from the international committee.',
  example_ko_2 = '국제 위원회의 보기 드문 인정에 그녀는 고양됐어요.',
  example_en_3 = 'He looked elated as the long-awaited contract was finally signed.',
  example_ko_3 = '오랫동안 기다려온 계약이 마침내 체결되자 그는 황홀해 보였어요.',
  example_en_4 = 'I felt elated walking through the village I had only read about in books.',
  example_ko_4 = '책으로만 읽었던 그 마을을 걸으며 고양된 기분이었어요.',
  example_en_5 = 'An elated mood after years of effort feels both earned and surreal.',
  example_ko_5 = '수년의 노력 후 찾아온 황홀한 기분은 마땅하면서도 비현실적으로 느껴져요.'
WHERE id = 'w_emotion_C2_28';

UPDATE words SET
  example_en_2 = 'She seemed impervious to the noise around her in the busy café.',
  example_ko_2 = '그녀는 분주한 카페에서 주변 소음에 영향받지 않는 듯했어요.',
  example_en_3 = 'He was impervious to flattery that would have swayed lesser leaders.',
  example_ko_3 = '그는 덜 단단한 리더들을 흔들었을 아첨에도 흔들리지 않았어요.',
  example_en_4 = 'I''ve become more impervious to online criticism over the years.',
  example_ko_4 = '세월이 지나며 저는 온라인 비판에 더 영향받지 않게 됐어요.',
  example_en_5 = 'An impervious calm in the face of provocation requires years of practice.',
  example_ko_5 = '도발 앞에서 영향받지 않는 차분함은 수년의 연습이 필요해요.'
WHERE id = 'w_emotion_C2_29';

UPDATE words SET
  example_en_2 = 'She wrote an indignant essay on the systemic failures she had witnessed.',
  example_ko_2 = '그녀는 자신이 목격한 구조적 실패에 대해 분개한 에세이를 썼어요.',
  example_en_3 = 'He spoke in an indignant tone about the misuse of public funds.',
  example_ko_3 = '그는 공적 자금의 오용에 대해 분개한 어조로 말했어요.',
  example_en_4 = 'I felt indignant on her behalf when I heard how she had been treated.',
  example_ko_4 = '그녀가 어떻게 대접받았는지 듣고 그녀를 대신해 분개했어요.',
  example_en_5 = 'An indignant chorus rose from the audience as the speaker dodged the question.',
  example_ko_5 = '연사가 질문을 회피하자 관객 사이에서 분개한 외침이 일어났어요.'
WHERE id = 'w_emotion_C2_30';

UPDATE words SET
  example_en_2 = 'She wore a beatific smile as the children sang the final song.',
  example_ko_2 = '아이들이 마지막 노래를 부르자 그녀는 더없이 행복한 미소를 지었어요.',
  example_en_3 = 'He looked beatific resting in the garden after the long illness.',
  example_ko_3 = '오랜 투병 후 정원에서 쉬는 그는 더없이 행복해 보였어요.',
  example_en_4 = 'I caught a beatific look on her face during the quiet morning prayer.',
  example_ko_4 = '고요한 아침 기도 중 그녀의 얼굴에서 더없이 행복한 표정을 보았어요.',
  example_en_5 = 'A beatific calm settled over the temple as dawn broke.',
  example_ko_5 = '새벽이 밝아오자 더없이 행복한 평온이 사원에 자리잡았어요.'
WHERE id = 'w_emotion_C2_31';

UPDATE words SET
  example_en_2 = 'She looked crestfallen when she realised the deadline had passed.',
  example_ko_2 = '마감이 지났다는 것을 깨닫고 그녀는 풀이 죽어 보였어요.',
  example_en_3 = 'He returned home crestfallen from the auditions in the city.',
  example_ko_3 = '그는 도시의 오디션에서 풀이 죽어 집에 돌아왔어요.',
  example_en_4 = 'I tried to console my crestfallen friend after the announcement.',
  example_ko_4 = '발표 후 풀이 죽은 친구를 위로하려 했어요.',
  example_en_5 = 'A crestfallen silence followed the news that the project was cancelled.',
  example_ko_5 = '프로젝트가 취소됐다는 소식에 풀이 죽은 침묵이 이어졌어요.'
WHERE id = 'w_emotion_C2_32';

UPDATE words SET
  example_en_2 = 'She adopted a truculent stance whenever her authority was questioned.',
  example_ko_2 = '그녀는 자신의 권위가 의심받을 때마다 시비를 거는 자세를 취했어요.',
  example_en_3 = 'He gave a truculent reply that escalated the entire dispute.',
  example_ko_3 = '그는 분쟁 전체를 격화시키는 시비조의 답변을 했어요.',
  example_en_4 = 'I avoided his truculent emails as much as politely possible.',
  example_ko_4 = '저는 그의 공격적인 이메일을 예의 있게 가능한 한 피했어요.',
  example_en_5 = 'A truculent negotiator often wins battles while losing the larger relationship.',
  example_ko_5 = '시비조의 협상가는 종종 전투에서 이기지만 더 큰 관계는 잃어요.'
WHERE id = 'w_emotion_C2_33';

UPDATE words SET
  example_en_2 = 'She received both promotions and demotions with phlegmatic composure.',
  example_ko_2 = '그녀는 승진과 강등 모두를 냉정한 침착함으로 받아들였어요.',
  example_en_3 = 'He gave a phlegmatic shrug at the news that startled everyone else.',
  example_ko_3 = '다른 모두를 놀라게 한 소식에 그는 냉정한 어깨를 으쓱했어요.',
  example_en_4 = 'I admired her phlegmatic response to what could have been devastating news.',
  example_ko_4 = '망연자실할 수 있는 소식에 대한 그녀의 냉정한 반응을 존경했어요.',
  example_en_5 = 'A phlegmatic outlook can be a quiet strength in chaotic environments.',
  example_ko_5 = '냉정한 시각은 혼란스러운 환경에서 조용한 힘이 될 수 있어요.'
WHERE id = 'w_emotion_C2_34';

UPDATE words SET
  example_en_2 = 'She described the sunrise over the desert as utterly ineffable.',
  example_ko_2 = '그녀는 사막 위로 떠오르는 일출이 도저히 말로 표현할 수 없다고 묘사했어요.',
  example_en_3 = 'He spoke of the cathedral''s interior with an ineffable hush in his voice.',
  example_ko_3 = '그는 대성당 내부에 대해 말로 표현할 수 없는 정적이 담긴 목소리로 이야기했어요.',
  example_en_4 = 'I experienced an ineffable wonder standing before her late paintings.',
  example_ko_4 = '그녀의 만년 그림들 앞에 서서 말로 표현할 수 없는 경이로움을 경험했어요.',
  example_en_5 = 'An ineffable sense of presence filled the small forest clearing at dawn.',
  example_ko_5 = '새벽 작은 숲속 공터에 말로 표현할 수 없는 존재감이 가득했어요.'
WHERE id = 'w_emotion_C2_35';

