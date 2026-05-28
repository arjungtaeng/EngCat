-- EngCat — Greeting topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns: A1×7, A2×7, B1×7, B2×7, C1×7, C2×7)
-- Each example applies the same grammatical/functional pattern in a different context
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Nice to meet you, I''m Sarah!', ex1_ko = '만나서 반갑습니다, 저는 사라예요!',
  ex2 = 'Nice to meet you too!', ex2_ko = '저도 만나서 반갑습니다!',
  ex3 = 'Nice to meet you, please come in.', ex3_ko = '만나서 반갑습니다, 어서 들어오세요.',
  ex4 = 'Nice to meet you finally!', ex4_ko = '드디어 만나서 반갑습니다!',
  ex5 = 'Nice to meet you, I''ve heard great things.', ex5_ko = '만나서 반갑습니다, 좋은 얘기 많이 들었어요.'
WHERE id = 's_greeting_A1_01';

UPDATE sentences SET
  ex1 = 'How are you doing today?', ex1_ko = '오늘 어떻게 지내세요?',
  ex2 = 'How are you feeling this morning?', ex2_ko = '오늘 아침 기분이 어떠세요?',
  ex3 = 'How are you, long time no see?', ex3_ko = '어떻게 지내세요, 오랜만이네요?',
  ex4 = 'How are you, everything good?', ex4_ko = '어떻게 지내세요, 다 잘 되고 있나요?',
  ex5 = 'How are you holding up?', ex5_ko = '어떻게 버티고 있어요?'
WHERE id = 's_greeting_A1_02';

UPDATE sentences SET
  ex1 = 'Good morning! Did you sleep well?', ex1_ko = '좋은 아침이에요! 잘 주무셨어요?',
  ex2 = 'Good morning! Coffee is ready.', ex2_ko = '좋은 아침이에요! 커피 준비됐어요.',
  ex3 = 'Good morning! How was your weekend?', ex3_ko = '좋은 아침이에요! 주말 잘 보내셨어요?',
  ex4 = 'Good morning! Ready for the meeting?', ex4_ko = '좋은 아침이에요! 회의 준비 되셨어요?',
  ex5 = 'Good morning! Beautiful day, isn''t it?', ex5_ko = '좋은 아침이에요! 날씨 좋네요, 그렇죠?'
WHERE id = 's_greeting_A1_03';

UPDATE sentences SET
  ex1 = 'What''s your name? Mine is Alex.', ex1_ko = '성함이 어떻게 되세요? 저는 알렉스예요.',
  ex2 = 'What''s your name, by the way?', ex2_ko = '그런데 성함이 어떻게 되세요?',
  ex3 = 'Sorry, what''s your name again?', ex3_ko = '죄송한데, 성함이 어떻게 되신다고 하셨죠?',
  ex4 = 'What''s your name in English?', ex4_ko = '영어 이름이 어떻게 되세요?',
  ex5 = 'What''s your name on the list?', ex5_ko = '명단에 성함이 어떻게 되어 있으세요?'
WHERE id = 's_greeting_A1_04';

UPDATE sentences SET
  ex1 = 'Thank you so much for your help today!', ex1_ko = '오늘 도와주셔서 정말 감사해요!',
  ex2 = 'Thank you so much for the gift!', ex2_ko = '선물 정말 감사해요!',
  ex3 = 'Thank you so much for inviting me.', ex3_ko = '초대해 주셔서 정말 감사해요.',
  ex4 = 'Thank you so much for everything.', ex4_ko = '여러모로 정말 감사해요.',
  ex5 = 'Thank you so much, that means a lot.', ex5_ko = '정말 감사해요, 큰 의미가 있어요.'
WHERE id = 's_greeting_A1_05';

UPDATE sentences SET
  ex1 = 'See you later, have a great day!', ex1_ko = '나중에 봐요, 좋은 하루 보내세요!',
  ex2 = 'See you later at the party!', ex2_ko = '이따 파티에서 봐요!',
  ex3 = 'See you later, drive safely.', ex3_ko = '나중에 봐요, 운전 조심하세요.',
  ex4 = 'See you later, take care.', ex4_ko = '나중에 봐요, 잘 지내요.',
  ex5 = 'See you later — same time tomorrow?', ex5_ko = '나중에 봐요 — 내일 같은 시간에?'
WHERE id = 's_greeting_A1_06';

UPDATE sentences SET
  ex1 = 'Can you say that again, more slowly?', ex1_ko = '다시 말씀해 주시겠어요, 좀 더 천천히요?',
  ex2 = 'Sorry, can you say that again?', ex2_ko = '죄송한데, 다시 말씀해 주시겠어요?',
  ex3 = 'Can you say that again in English?', ex3_ko = '영어로 다시 말씀해 주시겠어요?',
  ex4 = 'Can you say that again, I missed it.', ex4_ko = '다시 말씀해 주시겠어요, 못 들었어요.',
  ex5 = 'Can you say that again louder, please?', ex5_ko = '다시 좀 더 크게 말씀해 주시겠어요?'
WHERE id = 's_greeting_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Let me introduce myself — I''m new to the team.', ex1_ko = '제 소개를 할게요 — 저는 팀에 새로 왔어요.',
  ex2 = 'Let me introduce myself — I''m the project manager.', ex2_ko = '제 소개를 할게요 — 저는 프로젝트 매니저예요.',
  ex3 = 'Let me introduce myself — I just moved here.', ex3_ko = '제 소개를 할게요 — 막 이사 왔어요.',
  ex4 = 'Let me introduce myself — I''ll be your guide today.', ex4_ko = '제 소개를 할게요 — 오늘 가이드를 맡을 거예요.',
  ex5 = 'Let me introduce myself before we start.', ex5_ko = '시작하기 전에 제 소개를 할게요.'
WHERE id = 's_greeting_A2_01';

UPDATE sentences SET
  ex1 = 'I''ve heard a lot about you from your colleagues.', ex1_ko = '동료분들께 많이 들었어요.',
  ex2 = 'I''ve heard a lot about you — all good things!', ex2_ko = '많이 들었어요 — 다 좋은 얘기들이요!',
  ex3 = 'I''ve heard a lot about you from my sister.', ex3_ko = '제 동생한테 많이 들었어요.',
  ex4 = 'I''ve heard a lot about you at our last meeting.', ex4_ko = '지난 회의에서 많이 들었어요.',
  ex5 = 'I''ve heard a lot about you, it''s an honor.', ex5_ko = '많이 들었어요, 영광이에요.'
WHERE id = 's_greeting_A2_02';

UPDATE sentences SET
  ex1 = 'Please call me Mike — Michael feels too formal.', ex1_ko = '마이크라고 불러 주세요 — 마이클은 너무 격식 차린 것 같아요.',
  ex2 = 'Please call me by my first name.', ex2_ko = '이름으로 불러 주세요.',
  ex3 = 'Please call me anytime you need help.', ex3_ko = '도움이 필요하면 언제든 불러 주세요.',
  ex4 = 'Please call me Jin, that''s easier.', ex4_ko = '진이라고 불러 주세요, 그게 편해요.',
  ex5 = 'Please call me whenever you''re free.', ex5_ko = '시간 되실 때 언제든 불러 주세요.'
WHERE id = 's_greeting_A2_03';

UPDATE sentences SET
  ex1 = 'Take care, and let''s catch up soon!', ex1_ko = '잘 지내요, 곧 다시 봐요!',
  ex2 = 'Take care on your way home.', ex2_ko = '집에 가는 길 조심하세요.',
  ex3 = 'Take care, get some rest.', ex3_ko = '잘 지내요, 좀 쉬세요.',
  ex4 = 'Take care of yourself, OK?', ex4_ko = '몸 잘 챙기세요, 아셨죠?',
  ex5 = 'Take care, message me when you get home.', ex5_ko = '잘 지내요, 집에 도착하면 연락 주세요.'
WHERE id = 's_greeting_A2_04';

UPDATE sentences SET
  ex1 = 'Where are you from originally?', ex1_ko = '원래 어디 출신이세요?',
  ex2 = 'Where are you from in Korea?', ex2_ko = '한국 어디 출신이세요?',
  ex3 = 'Where are you from, if you don''t mind me asking?', ex3_ko = '혹시 어디 출신이신지 여쭤봐도 될까요?',
  ex4 = 'Where are you from? Your accent is lovely.', ex4_ko = '어디 출신이세요? 발음이 예쁘시네요.',
  ex5 = 'Where are you from? I''m guessing London?', ex5_ko = '어디 출신이세요? 런던인가요?'
WHERE id = 's_greeting_A2_05';

UPDATE sentences SET
  ex1 = 'Would you mind if I sat here?', ex1_ko = '여기 앉아도 될까요?',
  ex2 = 'Would you mind if I opened the window?', ex2_ko = '창문 열어도 될까요?',
  ex3 = 'Would you mind if I asked a question?', ex3_ko = '질문 하나 드려도 될까요?',
  ex4 = 'Would you mind if I borrowed your pen?', ex4_ko = '펜 좀 빌려도 될까요?',
  ex5 = 'Would you mind if I joined the conversation?', ex5_ko = '대화에 끼어도 될까요?'
WHERE id = 's_greeting_A2_06';

UPDATE sentences SET
  ex1 = 'Thanks for having me — the dinner was amazing.', ex1_ko = '초대해 주셔서 감사해요 — 저녁 정말 맛있었어요.',
  ex2 = 'Thanks for having me on the show.', ex2_ko = '방송에 불러 주셔서 감사해요.',
  ex3 = 'Thanks for having me at your home.', ex3_ko = '집에 초대해 주셔서 감사해요.',
  ex4 = 'Thanks for having me, I had a great time.', ex4_ko = '초대해 주셔서 감사해요, 즐거운 시간이었어요.',
  ex5 = 'Thanks for having me — let me know if you''re ever in town.', ex5_ko = '초대해 주셔서 감사해요 — 이쪽 동네 오시면 연락 주세요.'
WHERE id = 's_greeting_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I don''t think we''ve been formally introduced — please call me Jane.', ex1_ko = '공식적으로 소개받지 못한 것 같아요 — 제인이라고 불러 주세요.',
  ex2 = 'I don''t think we''ve been formally introduced at this event.', ex2_ko = '이 행사에서 공식적으로 소개받지 못한 것 같아요.',
  ex3 = 'I don''t think we''ve been formally introduced, despite seeing each other.', ex3_ko = '서로 본 적은 있지만 공식적으로 소개받지 못한 것 같아요.',
  ex4 = 'I don''t think we''ve been formally introduced — let me fix that.', ex4_ko = '공식적으로 소개받지 못한 것 같아요 — 제가 소개할게요.',
  ex5 = 'I don''t think we''ve been formally introduced — I''m the new director.', ex5_ko = '공식적으로 소개받지 못한 것 같아요 — 저는 신임 디렉터예요.'
WHERE id = 's_greeting_B1_01';

UPDATE sentences SET
  ex1 = 'It''s great to finally put a face to the name after all these emails.', ex1_ko = '그동안 이메일만 주고받다가 드디어 얼굴을 보게 되어 반가워요.',
  ex2 = 'It''s great to finally put a face to the voice.', ex2_ko = '드디어 목소리만 알던 분을 직접 뵙게 되어 반가워요.',
  ex3 = 'It''s great to finally put a face to the name — I''ve read all your articles.', ex3_ko = '드디어 얼굴을 보게 되어 반가워요 — 글은 다 읽어봤어요.',
  ex4 = 'It''s great to finally put a face to the name from our calls.', ex4_ko = '전화로만 알던 분을 드디어 직접 뵙게 되어 반가워요.',
  ex5 = 'It''s great to finally put a face to the name we''ve been talking about.', ex5_ko = '얘기만 듣던 분을 드디어 직접 뵙게 되어 반가워요.'
WHERE id = 's_greeting_B1_02';

UPDATE sentences SET
  ex1 = 'I believe we have some mutual friends in the music industry.', ex1_ko = '음악 업계에 공통 친구가 있는 것 같아요.',
  ex2 = 'I believe we have some mutual friends from university.', ex2_ko = '대학교 시절 공통 친구가 있는 것 같아요.',
  ex3 = 'I believe we have some mutual friends — does that ring a bell?', ex3_ko = '공통 친구가 있는 것 같아요 — 짚이는 게 있으세요?',
  ex4 = 'I believe we have some mutual friends through work.', ex4_ko = '일을 통해 공통 친구가 있는 것 같아요.',
  ex5 = 'I believe we have some mutual friends on LinkedIn.', ex5_ko = '링크드인에 공통 친구가 있는 것 같아요.'
WHERE id = 's_greeting_B1_03';

UPDATE sentences SET
  ex1 = 'How have you been keeping since we last spoke?', ex1_ko = '저번에 통화한 이후로 어떻게 지내셨어요?',
  ex2 = 'How have you been keeping during the pandemic?', ex2_ko = '팬데믹 동안 어떻게 지내셨어요?',
  ex3 = 'How have you been keeping with the new job?', ex3_ko = '새 직장에서는 어떻게 지내고 계세요?',
  ex4 = 'How have you been keeping in this cold weather?', ex4_ko = '이 추운 날씨에 어떻게 지내고 계세요?',
  ex5 = 'How have you been keeping yourself busy?', ex5_ko = '요즘 뭐 하면서 바쁘게 지내세요?'
WHERE id = 's_greeting_B1_04';

UPDATE sentences SET
  ex1 = 'Allow me to introduce my business partner, David.', ex1_ko = '제 비즈니스 파트너 데이비드를 소개해 드릴게요.',
  ex2 = 'Allow me to introduce the newest member of our team.', ex2_ko = '저희 팀의 새 멤버를 소개해 드릴게요.',
  ex3 = 'Allow me to introduce our guest speaker for today.', ex3_ko = '오늘의 초청 연사를 소개해 드릴게요.',
  ex4 = 'Allow me to introduce my mentor and friend.', ex4_ko = '제 멘토이자 친구를 소개해 드릴게요.',
  ex5 = 'Allow me to introduce a few people you should meet.', ex5_ko = '꼭 만나보셔야 할 몇 분을 소개해 드릴게요.'
WHERE id = 's_greeting_B1_05';

UPDATE sentences SET
  ex1 = 'I''ve been looking forward to working with you on this project.', ex1_ko = '이 프로젝트에서 함께 일할 날을 기대하고 있었어요.',
  ex2 = 'I''ve been looking forward to your presentation all week.', ex2_ko = '한 주 내내 발표를 기대하고 있었어요.',
  ex3 = 'I''ve been looking forward to our conversation today.', ex3_ko = '오늘 대화를 기대하고 있었어요.',
  ex4 = 'I''ve been looking forward to meeting your team.', ex4_ko = '팀을 만날 날을 기대하고 있었어요.',
  ex5 = 'I''ve been looking forward to this opportunity for some time.', ex5_ko = '이 기회를 한동안 기대하고 있었어요.'
WHERE id = 's_greeting_B1_06';

UPDATE sentences SET
  ex1 = 'It was wonderful catching up over coffee.', ex1_ko = '커피 마시면서 근황 나눠서 좋았어요.',
  ex2 = 'It was wonderful catching up with old classmates.', ex2_ko = '옛 친구들과 근황 나눠서 좋았어요.',
  ex3 = 'It was wonderful catching up after all these years.', ex3_ko = '오랜만에 근황 나눠서 좋았어요.',
  ex4 = 'It was wonderful catching up at the reunion.', ex4_ko = '동창회에서 근황 나눠서 좋았어요.',
  ex5 = 'It was wonderful catching up — let''s not leave it so long next time.', ex5_ko = '근황 나눠서 좋았어요 — 다음번엔 너무 오래 두지 말아요.'
WHERE id = 's_greeting_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'On behalf of the entire staff, I''d like to thank you for coming.', ex1_ko = '전 직원을 대표하여 와 주셔서 감사드립니다.',
  ex2 = 'On behalf of our company, please accept this small gift.', ex2_ko = '저희 회사를 대표하여 이 작은 선물을 받아 주세요.',
  ex3 = 'On behalf of our department, congratulations on the achievement.', ex3_ko = '저희 부서를 대표하여 이번 성과를 축하드립니다.',
  ex4 = 'On behalf of the team, I want to express our gratitude.', ex4_ko = '팀을 대표하여 감사의 말씀을 드리고 싶습니다.',
  ex5 = 'On behalf of everyone here, welcome to the family.', ex5_ko = '여기 계신 모든 분들을 대표하여, 저희 가족이 되신 것을 환영합니다.'
WHERE id = 's_greeting_B2_01';

UPDATE sentences SET
  ex1 = 'Your reputation precedes you in academic circles.', ex1_ko = '학계에서 명성은 익히 들었어요.',
  ex2 = 'Your reputation precedes you — your colleagues speak highly of you.', ex2_ko = '명성은 익히 들었어요 — 동료분들이 칭찬을 많이 하시더라고요.',
  ex3 = 'Your reputation precedes you in the design industry.', ex3_ko = '디자인 업계에서 명성은 익히 들었어요.',
  ex4 = 'Your reputation precedes you, and I can see why.', ex4_ko = '명성은 익히 들었어요, 왜 그런지 알겠어요.',
  ex5 = 'Your reputation precedes you — it''s wonderful to finally meet.', ex5_ko = '명성은 익히 들었어요 — 드디어 만나게 되어 정말 기쁘네요.'
WHERE id = 's_greeting_B2_02';

UPDATE sentences SET
  ex1 = 'I''ve heard excellent things about your research methodology.', ex1_ko = '연구 방법론에 대해 정말 좋은 이야기를 들었어요.',
  ex2 = 'I''ve heard excellent things about your leadership style.', ex2_ko = '리더십 스타일에 대해 정말 좋은 이야기를 들었어요.',
  ex3 = 'I''ve heard excellent things about your latest book.', ex3_ko = '최근 책에 대해 정말 좋은 이야기를 들었어요.',
  ex4 = 'I''ve heard excellent things about the work your team does.', ex4_ko = '팀이 하는 일에 대해 정말 좋은 이야기를 들었어요.',
  ex5 = 'I''ve heard excellent things about your contributions to the field.', ex5_ko = '분야에 대한 공헌에 대해 정말 좋은 이야기를 들었어요.'
WHERE id = 's_greeting_B2_03';

UPDATE sentences SET
  ex1 = 'Please, allow me to extend a warm welcome to our new colleagues.', ex1_ko = '새로 오신 동료분들께 따뜻한 환영의 말씀을 전합니다.',
  ex2 = 'Please, allow me to extend a warm welcome to all our visitors.', ex2_ko = '모든 방문객 여러분께 따뜻한 환영의 말씀을 전합니다.',
  ex3 = 'Please, allow me to extend a warm welcome to the keynote speaker.', ex3_ko = '기조 연설자께 따뜻한 환영의 말씀을 전합니다.',
  ex4 = 'Please, allow me to extend a warm welcome on behalf of the host.', ex4_ko = '주최 측을 대표하여 따뜻한 환영의 말씀을 전합니다.',
  ex5 = 'Please, allow me to extend a warm welcome before we begin.', ex5_ko = '시작하기 전에 따뜻한 환영의 말씀을 전합니다.'
WHERE id = 's_greeting_B2_04';

UPDATE sentences SET
  ex1 = 'We are delighted to have such distinguished guests at our conference.', ex1_ko = '저희 컨퍼런스에 귀빈 여러분을 모실 수 있어 기쁩니다.',
  ex2 = 'We are delighted to have such distinguished guests joining the panel.', ex2_ko = '패널에 귀빈 여러분이 참여해 주셔서 기쁩니다.',
  ex3 = 'We are delighted to have such distinguished guests from abroad.', ex3_ko = '해외에서 오신 귀빈 여러분을 모실 수 있어 기쁩니다.',
  ex4 = 'We are delighted to have such distinguished guests at this ceremony.', ex4_ko = '이 행사에 귀빈 여러분을 모실 수 있어 기쁩니다.',
  ex5 = 'We are delighted to have such distinguished guests share their insights.', ex5_ko = '귀빈 여러분이 통찰을 나눠 주셔서 기쁩니다.'
WHERE id = 's_greeting_B2_05';

UPDATE sentences SET
  ex1 = 'I was hoping we''d get a chance to connect during the break.', ex1_ko = '쉬는 시간에 연락이 닿을 기회를 바라고 있었어요.',
  ex2 = 'I was hoping we''d get a chance to connect about the project.', ex2_ko = '프로젝트에 대해 연락이 닿을 기회를 바라고 있었어요.',
  ex3 = 'I was hoping we''d get a chance to connect after your talk.', ex3_ko = '발표 후에 연락이 닿을 기회를 바라고 있었어요.',
  ex4 = 'I was hoping we''d get a chance to connect over lunch.', ex4_ko = '점심 시간에 연락이 닿을 기회를 바라고 있었어요.',
  ex5 = 'I was hoping we''d get a chance to connect before you leave.', ex5_ko = '떠나시기 전에 연락이 닿을 기회를 바라고 있었어요.'
WHERE id = 's_greeting_B2_06';

UPDATE sentences SET
  ex1 = 'It''s been far too long since our last collaboration.', ex1_ko = '지난 협업 이후 너무 오래됐어요.',
  ex2 = 'It''s been far too long — what have you been up to?', ex2_ko = '너무 오래됐어요 — 그동안 뭐 하셨어요?',
  ex3 = 'It''s been far too long since I last visited the office.', ex3_ko = '사무실에 마지막으로 들른 지 너무 오래됐어요.',
  ex4 = 'It''s been far too long, we have so much to catch up on.', ex4_ko = '너무 오래됐어요, 나눌 얘기가 정말 많네요.',
  ex5 = 'It''s been far too long since we worked together.', ex5_ko = '함께 일한 지 너무 오래됐어요.'
WHERE id = 's_greeting_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'It is a distinct honor to address such a learned audience this evening.', ex1_ko = '오늘 저녁 이렇게 학식 있는 청중 앞에서 말씀드릴 수 있는 것은 특별한 영광입니다.',
  ex2 = 'It is a distinct honor to receive this prestigious recognition.', ex2_ko = '이 영예로운 인정을 받게 된 것은 특별한 영광입니다.',
  ex3 = 'It is a distinct honor to be invited to speak at this institution.', ex3_ko = '이 기관에서 강연하도록 초청받은 것은 특별한 영광입니다.',
  ex4 = 'It is a distinct honor to serve alongside such dedicated professionals.', ex4_ko = '이렇게 헌신적인 전문가들과 함께 일하는 것은 특별한 영광입니다.',
  ex5 = 'It is a distinct honor to participate in this historic occasion.', ex5_ko = '이 역사적인 자리에 참여하게 된 것은 특별한 영광입니다.'
WHERE id = 's_greeting_C1_01';

UPDATE sentences SET
  ex1 = 'Your contributions to medical research are well recognized and deeply appreciated.', ex1_ko = '의학 연구에 대한 귀하의 공헌은 널리 인정받고 있으며 깊이 감사하게 여겨지고 있습니다.',
  ex2 = 'Your contributions to public policy are well recognized and deeply appreciated.', ex2_ko = '공공 정책에 대한 귀하의 공헌은 널리 인정받고 있으며 깊이 감사하게 여겨지고 있습니다.',
  ex3 = 'Your contributions to this community are well recognized and deeply appreciated.', ex3_ko = '이 공동체에 대한 귀하의 공헌은 널리 인정받고 있으며 깊이 감사하게 여겨지고 있습니다.',
  ex4 = 'Your contributions over the past decade are well recognized and deeply appreciated.', ex4_ko = '지난 10년간의 귀하의 공헌은 널리 인정받고 있으며 깊이 감사하게 여겨지고 있습니다.',
  ex5 = 'Your contributions to the arts are well recognized and deeply appreciated.', ex5_ko = '예술에 대한 귀하의 공헌은 널리 인정받고 있으며 깊이 감사하게 여겨지고 있습니다.'
WHERE id = 's_greeting_C1_02';

UPDATE sentences SET
  ex1 = 'Permit me to extend my sincerest greetings on behalf of the board.', ex1_ko = '이사회를 대표하여 진심 어린 인사를 전하도록 허락해 주십시오.',
  ex2 = 'Permit me to extend my sincerest condolences during this difficult time.', ex2_ko = '이 어려운 시기에 진심 어린 위로를 전하도록 허락해 주십시오.',
  ex3 = 'Permit me to extend my sincerest congratulations on your appointment.', ex3_ko = '임명에 대해 진심 어린 축하를 전하도록 허락해 주십시오.',
  ex4 = 'Permit me to extend my sincerest gratitude for your generosity.', ex4_ko = '귀하의 관대함에 대해 진심 어린 감사를 전하도록 허락해 주십시오.',
  ex5 = 'Permit me to extend my sincerest welcome to our distinguished delegation.', ex5_ko = '귀빈 사절단께 진심 어린 환영을 전하도록 허락해 주십시오.'
WHERE id = 's_greeting_C1_03';

UPDATE sentences SET
  ex1 = 'I must say, your insights have lent a great deal of clarity to this discussion.', ex1_ko = '솔직히 말씀드리면, 귀하의 통찰이 이 토론에 큰 명확함을 더해 주었습니다.',
  ex2 = 'I must say, your presence here lends a great deal of credibility to our cause.', ex2_ko = '솔직히 말씀드리면, 귀하의 참석이 저희 명분에 큰 신뢰성을 더해 줍니다.',
  ex3 = 'I must say, your contributions have lent a great deal of depth to our work.', ex3_ko = '솔직히 말씀드리면, 귀하의 공헌이 저희 작업에 큰 깊이를 더해 주었습니다.',
  ex4 = 'I must say, your endorsement lends a great deal of weight to the proposal.', ex4_ko = '솔직히 말씀드리면, 귀하의 지지가 이 제안에 큰 무게를 더해 줍니다.',
  ex5 = 'I must say, your perspective lends a great deal of nuance to the debate.', ex5_ko = '솔직히 말씀드리면, 귀하의 관점이 이 논쟁에 큰 미묘함을 더해 줍니다.'
WHERE id = 's_greeting_C1_04';

UPDATE sentences SET
  ex1 = 'It goes without saying that your leadership has been invaluable.', ex1_ko = '귀하의 리더십이 매우 귀중했다는 것은 두말할 나위가 없습니다.',
  ex2 = 'It goes without saying that we are grateful for your support.', ex2_ko = '귀하의 지원에 감사한다는 것은 두말할 나위가 없습니다.',
  ex3 = 'It goes without saying that this event would not be possible without you.', ex3_ko = '귀하 없이 이 행사가 불가능했다는 것은 두말할 나위가 없습니다.',
  ex4 = 'It goes without saying that your wisdom is greatly admired.', ex4_ko = '귀하의 지혜가 깊이 존경받는다는 것은 두말할 나위가 없습니다.',
  ex5 = 'It goes without saying that the entire community owes you a debt of gratitude.', ex5_ko = '온 공동체가 귀하께 감사의 빚을 지고 있다는 것은 두말할 나위가 없습니다.'
WHERE id = 's_greeting_C1_05';

UPDATE sentences SET
  ex1 = 'Your eloquence and expertise have long shaped public discourse on this issue.', ex1_ko = '귀하의 표현력과 전문성은 이 문제에 대한 공적 담론을 오랫동안 형성해 왔습니다.',
  ex2 = 'Your eloquence and expertise have long set the standard in this profession.', ex2_ko = '귀하의 표현력과 전문성은 이 직업에서 오랫동안 기준을 세워 왔습니다.',
  ex3 = 'Your eloquence and expertise have long been a model for younger scholars.', ex3_ko = '귀하의 표현력과 전문성은 오랫동안 후학들의 본보기가 되어 왔습니다.',
  ex4 = 'Your eloquence and expertise have long earned the respect of your peers.', ex4_ko = '귀하의 표현력과 전문성은 오랫동안 동료들의 존경을 받아 왔습니다.',
  ex5 = 'Your eloquence and expertise have long contributed to advancing this field.', ex5_ko = '귀하의 표현력과 전문성은 오랫동안 이 분야의 발전에 기여해 왔습니다.'
WHERE id = 's_greeting_C1_06';

UPDATE sentences SET
  ex1 = 'I hope this occasion will mark the beginning of meaningful dialogue between our institutions.', ex1_ko = '이 자리가 우리 기관 간 의미 있는 대화의 시작이 되기를 바랍니다.',
  ex2 = 'I hope this occasion will mark the beginning of a new chapter in our partnership.', ex2_ko = '이 자리가 우리 파트너십의 새로운 장의 시작이 되기를 바랍니다.',
  ex3 = 'I hope this occasion will mark the beginning of lasting cooperation.', ex3_ko = '이 자리가 지속적인 협력의 시작이 되기를 바랍니다.',
  ex4 = 'I hope this occasion will mark the beginning of shared progress.', ex4_ko = '이 자리가 함께하는 진전의 시작이 되기를 바랍니다.',
  ex5 = 'I hope this occasion will mark the beginning of a productive exchange of ideas.', ex5_ko = '이 자리가 생산적인 의견 교환의 시작이 되기를 바랍니다.'
WHERE id = 's_greeting_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'We are gathered here today to honor a scholar whose work has shaped the very fabric of modern philosophy.', ex1_ko = '오늘 우리는 현대 철학의 근본 자체를 만들어온 학자를 기리기 위해 이 자리에 모였습니다.',
  ex2 = 'We are gathered here today to honor a pioneer whose research has shaped the very fabric of public health.', ex2_ko = '오늘 우리는 공중 보건의 근본 자체를 만들어온 선구자를 기리기 위해 이 자리에 모였습니다.',
  ex3 = 'We are gathered here today to honor an artist whose vision has shaped the very fabric of contemporary culture.', ex3_ko = '오늘 우리는 현대 문화의 근본 자체를 만들어온 예술가를 기리기 위해 이 자리에 모였습니다.',
  ex4 = 'We are gathered here today to honor a statesman whose service has shaped the very fabric of our democracy.', ex4_ko = '오늘 우리는 우리 민주주의의 근본 자체를 만들어온 정치인을 기리기 위해 이 자리에 모였습니다.',
  ex5 = 'We are gathered here today to honor an educator whose dedication has shaped the very fabric of this institution.', ex5_ko = '오늘 우리는 이 기관의 근본 자체를 만들어온 교육자를 기리기 위해 이 자리에 모였습니다.'
WHERE id = 's_greeting_C2_01';

UPDATE sentences SET
  ex1 = 'The distinction and gravitas you bring to this discussion are, without exaggeration, unparalleled.', ex1_ko = '귀하가 이 토론에 가져오시는 품격과 위엄은, 과장 없이 말씀드리면, 비할 데가 없습니다.',
  ex2 = 'The distinction and gravitas you bring to this bench are, without exaggeration, unparalleled.', ex2_ko = '귀하가 이 자리에 가져오시는 품격과 위엄은, 과장 없이 말씀드리면, 비할 데가 없습니다.',
  ex3 = 'The distinction and gravitas you bring to this profession are, without exaggeration, unparalleled.', ex3_ko = '귀하가 이 직업에 가져오시는 품격과 위엄은, 과장 없이 말씀드리면, 비할 데가 없습니다.',
  ex4 = 'The distinction and gravitas you bring to this institution are, without exaggeration, unparalleled.', ex4_ko = '귀하가 이 기관에 가져오시는 품격과 위엄은, 과장 없이 말씀드리면, 비할 데가 없습니다.',
  ex5 = 'The distinction and gravitas you bring to this assembly are, without exaggeration, beyond compare.', ex5_ko = '귀하가 이 자리에 가져오시는 품격과 위엄은, 과장 없이 말씀드리면, 비교할 수 없습니다.'
WHERE id = 's_greeting_C2_02';

UPDATE sentences SET
  ex1 = 'Allow me to formally inaugurate this symposium with a word of profound gratitude.', ex1_ko = '깊은 감사의 말씀으로 이 심포지엄을 공식적으로 개회하도록 허락해 주십시오.',
  ex2 = 'Allow me to formally inaugurate this exhibition with a tribute to its creators.', ex2_ko = '제작자들에게 헌사를 바치며 이 전시를 공식적으로 개회하도록 허락해 주십시오.',
  ex3 = 'Allow me to formally inaugurate this academic year with words of welcome.', ex3_ko = '환영의 말씀으로 이 학년도를 공식적으로 개회하도록 허락해 주십시오.',
  ex4 = 'Allow me to formally inaugurate these proceedings with a brief reflection.', ex4_ko = '짧은 성찰로 이 의사 진행을 공식적으로 개회하도록 허락해 주십시오.',
  ex5 = 'Allow me to formally inaugurate this gathering with a moment of recognition.', ex5_ko = '인정의 순간으로 이 모임을 공식적으로 개회하도록 허락해 주십시오.'
WHERE id = 's_greeting_C2_03';

UPDATE sentences SET
  ex1 = 'Seldom has it been my privilege to address a gathering of such rare distinction.', ex1_ko = '이처럼 드문 품격의 모임 앞에서 말씀드릴 수 있는 영광은 쉽사리 주어지지 않습니다.',
  ex2 = 'Seldom has it been my privilege to introduce a speaker of such caliber.', ex2_ko = '이처럼 뛰어난 연사를 소개할 수 있는 영광은 쉽사리 주어지지 않습니다.',
  ex3 = 'Seldom has it been my privilege to witness such an extraordinary gathering of minds.', ex3_ko = '이처럼 비범한 지성들의 모임을 목격할 수 있는 영광은 쉽사리 주어지지 않습니다.',
  ex4 = 'Seldom has it been my privilege to participate in such a momentous occasion.', ex4_ko = '이처럼 중대한 자리에 참여할 수 있는 영광은 쉽사리 주어지지 않습니다.',
  ex5 = 'Seldom has it been my privilege to be among such pioneering thinkers.', ex5_ko = '이처럼 선구적인 사상가들 가운데 있을 수 있는 영광은 쉽사리 주어지지 않습니다.'
WHERE id = 's_greeting_C2_04';

UPDATE sentences SET
  ex1 = 'May I take this opportunity to convey our heartfelt thanks to the organizing committee.', ex1_ko = '이 자리를 빌려, 조직 위원회에 진심 어린 감사를 전하고자 합니다.',
  ex2 = 'May I take this opportunity to convey, on behalf of our institution, our enduring appreciation.', ex2_ko = '이 자리를 빌려, 저희 기관을 대표하여 변함없는 감사를 전하고자 합니다.',
  ex3 = 'May I take this opportunity to convey our sincere recognition of your service.', ex3_ko = '이 자리를 빌려, 귀하의 봉사에 대한 진심 어린 인정을 전하고자 합니다.',
  ex4 = 'May I take this opportunity to convey, on behalf of the entire community, our deepest respect.', ex4_ko = '이 자리를 빌려, 온 공동체를 대표하여 가장 깊은 존경을 전하고자 합니다.',
  ex5 = 'May I take this opportunity to convey our unreserved admiration for your work.', ex5_ko = '이 자리를 빌려, 귀하의 작업에 대한 거리낌 없는 찬사를 전하고자 합니다.'
WHERE id = 's_greeting_C2_05';

UPDATE sentences SET
  ex1 = 'Your stewardship of this organization has been nothing short of exemplary.', ex1_ko = '이 기관에 대한 귀하의 헌신은 더할 나위 없이 모범적이었습니다.',
  ex2 = 'Your stewardship of this institution has been nothing short of exemplary, transforming it for generations.', ex2_ko = '이 기관에 대한 귀하의 헌신은 더할 나위 없이 모범적이었으며, 여러 세대에 걸쳐 변화시켰습니다.',
  ex3 = 'Your stewardship of this discipline has been nothing short of exemplary, setting new standards.', ex3_ko = '이 학문에 대한 귀하의 헌신은 더할 나위 없이 모범적이었으며, 새로운 기준을 세웠습니다.',
  ex4 = 'Your stewardship of this initiative has been nothing short of exemplary, despite the challenges.', ex4_ko = '이 사업에 대한 귀하의 헌신은 어려움에도 불구하고 더할 나위 없이 모범적이었습니다.',
  ex5 = 'Your stewardship of this legacy has been nothing short of exemplary, preserving its essence.', ex5_ko = '이 유산에 대한 귀하의 헌신은 더할 나위 없이 모범적이었으며, 그 본질을 보존해 왔습니다.'
WHERE id = 's_greeting_C2_06';

UPDATE sentences SET
  ex1 = 'It is with the utmost reverence and collegial warmth that I bid you welcome to this assembly.', ex1_ko = '최고의 경의와 동료적 따뜻함으로 이 모임에 여러분을 환영합니다.',
  ex2 = 'It is with the utmost reverence and collegial warmth that I bid you welcome to our deliberations.', ex2_ko = '최고의 경의와 동료적 따뜻함으로 저희 심의에 여러분을 환영합니다.',
  ex3 = 'It is with the utmost reverence and collegial warmth that I bid you welcome to our academy.', ex3_ko = '최고의 경의와 동료적 따뜻함으로 저희 학회에 여러분을 환영합니다.',
  ex4 = 'It is with the utmost reverence and collegial warmth that I bid you welcome to our shared endeavor.', ex4_ko = '최고의 경의와 동료적 따뜻함으로 저희 공동의 노력에 여러분을 환영합니다.',
  ex5 = 'It is with the utmost reverence and collegial warmth that I bid you welcome to this distinguished gathering.', ex5_ko = '최고의 경의와 동료적 따뜻함으로 이 영예로운 모임에 여러분을 환영합니다.'
WHERE id = 's_greeting_C2_07';
