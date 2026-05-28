-- Combined: sentence examples backfill for 12 remaining topics
-- (greeting, emotion, home, academic, culture, discussion, economy, humanities, media, negotiation, news, presentation)

-- ── greeting ──
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

-- ── emotion ──
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

-- ── home ──
-- EngCat — Home topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns: A1×7, A2×7, B1×7, B2×7, C1×7, C2×7)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I live in a small house.', ex1_ko = '작은 집에 살아요.',
  ex2 = 'I live in a studio downtown.', ex2_ko = '시내 스튜디오에 살아요.',
  ex3 = 'I live in a flat near the park.', ex3_ko = '공원 근처 아파트에 살아요.',
  ex4 = 'I live in a quiet neighborhood.', ex4_ko = '조용한 동네에 살아요.',
  ex5 = 'I live in a shared house.', ex5_ko = '셰어하우스에 살아요.'
WHERE id = 's_home_A1_01';

UPDATE sentences SET
  ex1 = 'My house has a small garden.', ex1_ko = '우리 집에는 작은 정원이 있어요.',
  ex2 = 'My house has two bathrooms.', ex2_ko = '우리 집에는 화장실이 두 개 있어요.',
  ex3 = 'My house has a large kitchen.', ex3_ko = '우리 집에는 큰 주방이 있어요.',
  ex4 = 'My house has wooden floors.', ex4_ko = '우리 집에는 나무 바닥이 있어요.',
  ex5 = 'My house has a balcony.', ex5_ko = '우리 집에는 발코니가 있어요.'
WHERE id = 's_home_A1_02';

UPDATE sentences SET
  ex1 = 'Where is the kitchen, please?', ex1_ko = '주방이 어디에 있나요?',
  ex2 = 'Where is the laundry room?', ex2_ko = '세탁실이 어디에 있나요?',
  ex3 = 'Where is the closet?', ex3_ko = '옷장이 어디에 있나요?',
  ex4 = 'Where is the front door?', ex4_ko = '현관이 어디에 있나요?',
  ex5 = 'Where is the light switch?', ex5_ko = '전등 스위치가 어디에 있나요?'
WHERE id = 's_home_A1_03';

UPDATE sentences SET
  ex1 = 'I eat in the kitchen.', ex1_ko = '주방에서 먹어요.',
  ex2 = 'I work in the study.', ex2_ko = '서재에서 일해요.',
  ex3 = 'I relax in the living room.', ex3_ko = '거실에서 쉬어요.',
  ex4 = 'I read in the bedroom.', ex4_ko = '침실에서 책 읽어요.',
  ex5 = 'I cook in the kitchen.', ex5_ko = '주방에서 요리해요.'
WHERE id = 's_home_A1_04';

UPDATE sentences SET
  ex1 = 'The bathroom is next to my bedroom.', ex1_ko = '화장실은 제 침실 옆에 있어요.',
  ex2 = 'The garage is next to the house.', ex2_ko = '차고는 집 옆에 있어요.',
  ex3 = 'The closet is next to the bed.', ex3_ko = '옷장은 침대 옆에 있어요.',
  ex4 = 'The dining room is next to the kitchen.', ex4_ko = '식당은 주방 옆에 있어요.',
  ex5 = 'The garden is next to the patio.', ex5_ko = '정원은 테라스 옆에 있어요.'
WHERE id = 's_home_A1_05';

UPDATE sentences SET
  ex1 = 'I clean the house every morning.', ex1_ko = '저는 매일 아침 집을 청소해요.',
  ex2 = 'I water the plants every morning.', ex2_ko = '저는 매일 아침 화초에 물을 줘요.',
  ex3 = 'I make the bed every morning.', ex3_ko = '저는 매일 아침 침대를 정리해요.',
  ex4 = 'I check the mail every morning.', ex4_ko = '저는 매일 아침 우편함을 확인해요.',
  ex5 = 'I drink coffee every morning.', ex5_ko = '저는 매일 아침 커피를 마셔요.'
WHERE id = 's_home_A1_06';

UPDATE sentences SET
  ex1 = 'There is a sofa in the living room.', ex1_ko = '거실에 소파가 있어요.',
  ex2 = 'There is a desk in my room.', ex2_ko = '제 방에 책상이 있어요.',
  ex3 = 'There is a mirror in the hallway.', ex3_ko = '복도에 거울이 있어요.',
  ex4 = 'There is a fridge in the kitchen.', ex4_ko = '주방에 냉장고가 있어요.',
  ex5 = 'There is a lamp on the table.', ex5_ko = '테이블에 램프가 있어요.'
WHERE id = 's_home_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'My room is quite dark but very quiet.', ex1_ko = '제 방은 꽤 어둡지만 아주 조용해요.',
  ex2 = 'My kitchen is quite old but very functional.', ex2_ko = '제 주방은 꽤 오래됐지만 아주 기능적이에요.',
  ex3 = 'My garden is quite tiny but very pretty.', ex3_ko = '제 정원은 꽤 작지만 아주 예뻐요.',
  ex4 = 'My flat is quite simple but very comfortable.', ex4_ko = '제 아파트는 꽤 단순하지만 아주 편해요.',
  ex5 = 'My neighborhood is quite far but very peaceful.', ex5_ko = '제 동네는 꽤 멀지만 아주 평화로워요.'
WHERE id = 's_home_A2_01';

UPDATE sentences SET
  ex1 = 'How much is the electricity bill?', ex1_ko = '전기 요금이 얼마예요?',
  ex2 = 'How much is the maintenance fee?', ex2_ko = '관리비가 얼마예요?',
  ex3 = 'How much is the water bill per month?', ex3_ko = '월 수도 요금이 얼마예요?',
  ex4 = 'How much is the deposit for the flat?', ex4_ko = '아파트 보증금이 얼마예요?',
  ex5 = 'How much is the parking fee?', ex5_ko = '주차료가 얼마예요?'
WHERE id = 's_home_A2_02';

UPDATE sentences SET
  ex1 = 'The tenant is responsible for utility bills.', ex1_ko = '세입자가 공과금에 대한 책임이 있어요.',
  ex2 = 'The owner is responsible for the property tax.', ex2_ko = '소유자가 재산세에 대한 책임이 있어요.',
  ex3 = 'You are responsible for keeping the common area clean.', ex3_ko = '공용 구역을 깨끗이 유지하는 책임은 당신에게 있어요.',
  ex4 = 'The management company is responsible for security.', ex4_ko = '관리 회사가 보안에 대한 책임이 있어요.',
  ex5 = 'Each resident is responsible for their own trash.', ex5_ko = '각 거주자가 자신의 쓰레기에 대한 책임이 있어요.'
WHERE id = 's_home_A2_03';

UPDATE sentences SET
  ex1 = 'We need to pack everything before moving out.', ex1_ko = '이사 나가기 전에 모든 걸 짐 싸야 해요.',
  ex2 = 'Please return the keys before moving out.', ex2_ko = '이사 나가기 전에 열쇠를 반납해 주세요.',
  ex3 = 'Take photos of the place before moving out.', ex3_ko = '이사 나가기 전에 집 사진을 찍어 두세요.',
  ex4 = 'I want to host one party before moving out.', ex4_ko = '이사 나가기 전에 파티 한 번 열고 싶어요.',
  ex5 = 'You should give notice before moving out.', ex5_ko = '이사 나가기 전에 통보해야 해요.'
WHERE id = 's_home_A2_04';

UPDATE sentences SET
  ex1 = 'Could you please close the window?', ex1_ko = '창문을 닫아 주실 수 있나요?',
  ex2 = 'Could you please fix the leaking tap?', ex2_ko = '새는 수도꼭지를 고쳐 주실 수 있나요?',
  ex3 = 'Could you please replace the light bulb?', ex3_ko = '전구를 교체해 주실 수 있나요?',
  ex4 = 'Could you please send me the contract?', ex4_ko = '계약서를 보내 주실 수 있나요?',
  ex5 = 'Could you please call a plumber?', ex5_ko = '배관공을 불러 주실 수 있나요?'
WHERE id = 's_home_A2_05';

UPDATE sentences SET
  ex1 = 'The shower isn''t working properly.', ex1_ko = '샤워기가 제대로 작동하지 않아요.',
  ex2 = 'The washing machine isn''t working properly.', ex2_ko = '세탁기가 제대로 작동하지 않아요.',
  ex3 = 'The doorbell isn''t working properly.', ex3_ko = '초인종이 제대로 작동하지 않아요.',
  ex4 = 'The oven isn''t working properly.', ex4_ko = '오븐이 제대로 작동하지 않아요.',
  ex5 = 'The air conditioner isn''t working properly.', ex5_ko = '에어컨이 제대로 작동하지 않아요.'
WHERE id = 's_home_A2_06';

UPDATE sentences SET
  ex1 = 'I share a kitchen with my roommates.', ex1_ko = '룸메이트들과 함께 주방을 써요.',
  ex2 = 'I share a bathroom with my sister.', ex2_ko = '언니와 함께 화장실을 써요.',
  ex3 = 'I share the laundry room with five neighbors.', ex3_ko = '다섯 명의 이웃과 함께 세탁실을 써요.',
  ex4 = 'I share the rent with a friend.', ex4_ko = '친구와 함께 임대료를 나눠요.',
  ex5 = 'I share the garage with the upstairs tenant.', ex5_ko = '위층 세입자와 함께 차고를 써요.'
WHERE id = 's_home_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'We''d like to extend our stay if possible.', ex1_ko = '가능하다면 체류를 연장하고 싶어요.',
  ex2 = 'I''d like to schedule a viewing if possible.', ex2_ko = '가능하다면 집을 보러 갈 약속을 잡고 싶어요.',
  ex3 = 'We''d like to keep our pet here if possible.', ex3_ko = '가능하다면 반려동물을 여기서 키우고 싶어요.',
  ex4 = 'I''d like to start the lease in March if possible.', ex4_ko = '가능하다면 3월부터 계약을 시작하고 싶어요.',
  ex5 = 'We''d like to negotiate the rent if possible.', ex5_ko = '가능하다면 임대료를 협상하고 싶어요.'
WHERE id = 's_home_B1_01';

UPDATE sentences SET
  ex1 = 'Are utilities included in the maintenance fee?', ex1_ko = '공과금이 관리비에 포함되어 있나요?',
  ex2 = 'Is wifi included in the rent?', ex2_ko = '와이파이가 임대료에 포함되어 있나요?',
  ex3 = 'Are appliances included in the lease?', ex3_ko = '가전제품이 임대 계약에 포함되어 있나요?',
  ex4 = 'Is parking included in the agreement?', ex4_ko = '주차가 계약에 포함되어 있나요?',
  ex5 = 'Are cleaning services included in the contract?', ex5_ko = '청소 서비스가 계약에 포함되어 있나요?'
WHERE id = 's_home_B1_02';

UPDATE sentences SET
  ex1 = 'The agency agreed to refund the application fee.', ex1_ko = '중개사가 신청 수수료를 환불하기로 했어요.',
  ex2 = 'The landlord agreed to refund the cleaning deposit.', ex2_ko = '집주인이 청소 보증금을 환불하기로 했어요.',
  ex3 = 'The company agreed to refund the moving costs.', ex3_ko = '회사가 이사 비용을 환불하기로 했어요.',
  ex4 = 'The seller agreed to refund the broken appliance cost.', ex4_ko = '판매자가 고장난 가전 비용을 환불하기로 했어요.',
  ex5 = 'The agent agreed to refund the holding fee.', ex5_ko = '에이전트가 예약금을 환불하기로 했어요.'
WHERE id = 's_home_B1_03';

UPDATE sentences SET
  ex1 = 'We''re thinking of having the bathroom redesigned.', ex1_ko = '욕실을 다시 디자인하는 것을 고려하고 있어요.',
  ex2 = 'We''re thinking of having the floors refinished.', ex2_ko = '바닥을 다시 마감하는 것을 고려하고 있어요.',
  ex3 = 'We''re thinking of having the walls repainted.', ex3_ko = '벽을 다시 페인트칠하는 것을 고려하고 있어요.',
  ex4 = 'We''re thinking of having the roof replaced.', ex4_ko = '지붕을 교체하는 것을 고려하고 있어요.',
  ex5 = 'We''re thinking of having the windows insulated.', ex5_ko = '창문에 단열재를 시공하는 것을 고려하고 있어요.'
WHERE id = 's_home_B1_04';

UPDATE sentences SET
  ex1 = 'The lease covers minor repairs and gardening.', ex1_ko = '임대 계약에 소규모 수리와 정원 관리가 포함돼요.',
  ex2 = 'The fee covers building insurance and security.', ex2_ko = '관리비에 건물 보험과 보안이 포함돼요.',
  ex3 = 'The service covers weekly cleaning and trash removal.', ex3_ko = '서비스에 주간 청소와 쓰레기 수거가 포함돼요.',
  ex4 = 'The contract covers all utilities except internet.', ex4_ko = '계약에 인터넷을 제외한 모든 공과금이 포함돼요.',
  ex5 = 'The insurance covers fire and theft damages.', ex5_ko = '보험에 화재와 도난 손해가 포함돼요.'
WHERE id = 's_home_B1_05';

UPDATE sentences SET
  ex1 = 'You need to give two weeks'' notice before moving out.', ex1_ko = '이사 나가기 전에 2주 전 통보를 해야 해요.',
  ex2 = 'I had to give one month''s notice to terminate the contract.', ex2_ko = '계약 해지 위해 한 달 전 통보를 해야 했어요.',
  ex3 = 'Tenants must give three months'' notice for early termination.', ex3_ko = '조기 해지 시 세입자는 3개월 전 통보를 해야 해요.',
  ex4 = 'The landlord gave us six weeks'' notice before raising rent.', ex4_ko = '집주인이 임대료 인상 전 6주 전 통보를 줬어요.',
  ex5 = 'We need to give one month''s notice if we want to renew.', ex5_ko = '재계약 원하면 한 달 전 통보를 해야 해요.'
WHERE id = 's_home_B1_06';

UPDATE sentences SET
  ex1 = 'The apartment comes with all major appliances.', ex1_ko = '이 아파트에는 주요 가전제품이 모두 포함돼요.',
  ex2 = 'The house comes with a private garden.', ex2_ko = '이 집에는 개인 정원이 포함돼요.',
  ex3 = 'The flat comes with high-speed broadband.', ex3_ko = '이 아파트에는 초고속 인터넷이 포함돼요.',
  ex4 = 'The studio comes with weekly housekeeping.', ex4_ko = '이 스튜디오에는 주간 청소 서비스가 포함돼요.',
  ex5 = 'The property comes with two parking spaces.', ex5_ko = '이 부동산에는 주차 공간 두 개가 포함돼요.'
WHERE id = 's_home_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The kitchen has been fitted to a high standard.', ex1_ko = '주방은 고급 수준으로 시공됐어요.',
  ex2 = 'The bathroom was refurbished to a high standard last year.', ex2_ko = '욕실은 작년에 고급 수준으로 리노베이션됐어요.',
  ex3 = 'The entire flat has been redecorated to a high standard.', ex3_ko = '아파트 전체가 고급 수준으로 재단장됐어요.',
  ex4 = 'The building was constructed to a high standard.', ex4_ko = '건물은 고급 수준으로 시공됐어요.',
  ex5 = 'The flooring was installed to a high standard.', ex5_ko = '바닥재가 고급 수준으로 시공됐어요.'
WHERE id = 's_home_B2_01';

UPDATE sentences SET
  ex1 = 'The design blends traditional and modern elements.', ex1_ko = '디자인이 전통적 요소와 현대적 요소를 혼합해요.',
  ex2 = 'The architecture blends Scandinavian and Japanese aesthetics.', ex2_ko = '건축이 스칸디나비아 미학과 일본 미학을 혼합해요.',
  ex3 = 'The renovation blends rustic and contemporary touches.', ex3_ko = '리노베이션이 시골풍과 현대적 감각을 혼합해요.',
  ex4 = 'The decor blends warm tones and natural materials.', ex4_ko = '인테리어가 따뜻한 톤과 자연 소재를 혼합해요.',
  ex5 = 'The layout blends open-plan and intimate spaces.', ex5_ko = '레이아웃이 개방형 공간과 아늑한 공간을 혼합해요.'
WHERE id = 's_home_B2_02';

UPDATE sentences SET
  ex1 = 'We''re hoping to get an early move-in date.', ex1_ko = '이른 입주일을 받고 싶어요.',
  ex2 = 'We''re hoping to get a rent reduction for the broken heater.', ex2_ko = '고장난 난방기 때문에 임대료 인하를 받고 싶어요.',
  ex3 = 'We''re hoping to get permission for a small renovation.', ex3_ko = '소규모 리노베이션 허가를 받고 싶어요.',
  ex4 = 'We''re hoping to get our deposit back this month.', ex4_ko = '이번 달에 보증금을 돌려받고 싶어요.',
  ex5 = 'We''re hoping to get the contract signed by Friday.', ex5_ko = '금요일까지 계약을 체결받고 싶어요.'
WHERE id = 's_home_B2_03';

UPDATE sentences SET
  ex1 = 'The asking price sits at around five hundred thousand.', ex1_ko = '호가는 약 50만이에요.',
  ex2 = 'The monthly rent sits at around two thousand euros.', ex2_ko = '월 임대료는 약 2천 유로예요.',
  ex3 = 'The property tax sits at around three percent annually.', ex3_ko = '재산세는 연 약 3%예요.',
  ex4 = 'The maintenance fee sits at around two hundred a month.', ex4_ko = '관리비는 월 약 200이에요.',
  ex5 = 'The renovation budget sits at around fifty thousand.', ex5_ko = '리노베이션 예산은 약 5만이에요.'
WHERE id = 's_home_B2_04';

UPDATE sentences SET
  ex1 = 'We decided to invest in solar panels to reduce electricity costs.', ex1_ko = '전기 비용을 줄이기 위해 태양광 패널에 투자하기로 했어요.',
  ex2 = 'We decided to invest in double glazing for better insulation.', ex2_ko = '더 나은 단열을 위해 이중창에 투자하기로 했어요.',
  ex3 = 'We decided to invest in a smart heating system.', ex3_ko = '스마트 난방 시스템에 투자하기로 했어요.',
  ex4 = 'We decided to invest in quality kitchen appliances.', ex4_ko = '고품질 주방 가전제품에 투자하기로 했어요.',
  ex5 = 'We decided to invest in water-saving fixtures throughout.', ex5_ko = '전체적으로 절수 설비에 투자하기로 했어요.'
WHERE id = 's_home_B2_05';

UPDATE sentences SET
  ex1 = 'This neighborhood is ideal for young families.', ex1_ko = '이 동네는 젊은 가족에게 이상적이에요.',
  ex2 = 'The flat is ideal for working professionals.', ex2_ko = '이 아파트는 직장인들에게 이상적이에요.',
  ex3 = 'The location is ideal for university students.', ex3_ko = '이 위치는 대학생들에게 이상적이에요.',
  ex4 = 'The house is ideal for those seeking peace and quiet.', ex4_ko = '이 집은 평화와 조용함을 찾는 사람들에게 이상적이에요.',
  ex5 = 'The community is ideal for retirees.', ex5_ko = '이 단지는 은퇴자들에게 이상적이에요.'
WHERE id = 's_home_B2_06';

UPDATE sentences SET
  ex1 = 'There is a clause preventing any pets in the building.', ex1_ko = '건물 내 반려동물 사육을 금지하는 조항이 있어요.',
  ex2 = 'There is a rule preventing short-term rentals.', ex2_ko = '단기 임대를 금지하는 규정이 있어요.',
  ex3 = 'There is a covenant preventing commercial use of the property.', ex3_ko = '이 부동산의 상업적 사용을 금지하는 약정이 있어요.',
  ex4 = 'There is a regulation preventing exterior modifications.', ex4_ko = '외부 변경을 금지하는 규정이 있어요.',
  ex5 = 'There is a policy preventing smoking on the premises.', ex5_ko = '건물 내 흡연을 금지하는 정책이 있어요.'
WHERE id = 's_home_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Our advisors urged us to conduct full due diligence on the title deeds.', ex1_ko = '저희 자문단이 등기 권리증에 대해 전면 실사를 진행하라고 권고했어요.',
  ex2 = 'The buyer must conduct full due diligence before completion.', ex2_ko = '매수인은 거래 완료 전 전면 실사를 진행해야 해요.',
  ex3 = 'We were advised to conduct full due diligence on the property history.', ex3_ko = '부동산 이력에 대한 전면 실사를 진행하라는 조언을 받았어요.',
  ex4 = 'It is prudent to conduct full due diligence on any structural issues.', ex4_ko = '구조적 문제에 대한 전면 실사를 진행하는 것이 신중한 처사예요.',
  ex5 = 'The bank insisted we conduct full due diligence on the seller.', ex5_ko = '은행은 매도인에 대한 전면 실사 진행을 요구했어요.'
WHERE id = 's_home_C1_01';

UPDATE sentences SET
  ex1 = 'The deed contains a clause that prohibits any structural alterations.', ex1_ko = '증서에는 구조 변경을 금지하는 조항이 포함돼 있어요.',
  ex2 = 'The contract contains a clause that prohibits transferring the lease.', ex2_ko = '계약에는 임대권 양도를 금지하는 조항이 포함돼 있어요.',
  ex3 = 'The lease contains a covenant that prohibits keeping livestock.', ex3_ko = '임대 계약에는 가축 사육을 금지하는 약정이 포함돼 있어요.',
  ex4 = 'The agreement contains a provision that prohibits subdivision of the land.', ex4_ko = '계약에는 토지 분할을 금지하는 조항이 포함돼 있어요.',
  ex5 = 'The trust contains a clause that prohibits sale without trustee consent.', ex5_ko = '신탁에는 수탁자 동의 없는 매각을 금지하는 조항이 포함돼 있어요.'
WHERE id = 's_home_C1_02';

UPDATE sentences SET
  ex1 = 'We submitted a claim for unreturned deposit at the end of the tenancy.', ex1_ko = '임차 종료 시 미반환 보증금에 대한 청구를 제출했어요.',
  ex2 = 'The landlord submitted a claim for damages to the property.', ex2_ko = '집주인이 부동산 손해에 대한 청구를 제출했어요.',
  ex3 = 'They submitted a claim for unpaid utility bills.', ex3_ko = '그들이 미납 공과금에 대한 청구를 제출했어요.',
  ex4 = 'The tenants submitted a claim for breach of warranty of habitability.', ex4_ko = '세입자들이 거주 적합성 보증 위반에 대한 청구를 제출했어요.',
  ex5 = 'We submitted a claim for compensation regarding the flooding.', ex5_ko = '저희가 침수와 관련한 보상 청구를 제출했어요.'
WHERE id = 's_home_C1_03';

UPDATE sentences SET
  ex1 = 'The tribunal ruled in favour of the homeowner on the boundary dispute.', ex1_ko = '재판부가 경계 분쟁에서 주택 소유자에게 유리한 판결을 내렸어요.',
  ex2 = 'The court ruled in favour of the tenant regarding unfair eviction.', ex2_ko = '법원이 부당 퇴거 문제에서 세입자에게 유리한 판결을 내렸어요.',
  ex3 = 'The arbitrator ruled in favour of the developer in the dispute.', ex3_ko = '중재인이 분쟁에서 개발업체에게 유리한 판결을 내렸어요.',
  ex4 = 'The judge ruled in favour of the homeowners'' association.', ex4_ko = '판사가 주택소유자협회에게 유리한 판결을 내렸어요.',
  ex5 = 'The panel ruled in favour of the leaseholder on the service charge.', ex5_ko = '위원회가 관리비 문제에서 임차권자에게 유리한 판결을 내렸어요.'
WHERE id = 's_home_C1_04';

UPDATE sentences SET
  ex1 = 'A right of way was granted to the neighboring landowner.', ex1_ko = '인접 토지 소유자에게 통행권이 부여됐어요.',
  ex2 = 'Planning permission was granted to the developer last month.', ex2_ko = '지난달 개발업체에게 개발 허가가 부여됐어요.',
  ex3 = 'A leasehold extension was granted to the long-term tenant.', ex3_ko = '장기 세입자에게 임차권 연장이 부여됐어요.',
  ex4 = 'An exclusive use license was granted to the commercial occupier.', ex4_ko = '상업 점유자에게 독점 사용권이 부여됐어요.',
  ex5 = 'A discount was granted to the buyer for the structural issues.', ex5_ko = '구조적 문제로 인해 매수인에게 할인이 부여됐어요.'
WHERE id = 's_home_C1_05';

UPDATE sentences SET
  ex1 = 'The property is subject to a heritage protection order.', ex1_ko = '이 부동산은 문화재 보호 명령의 적용을 받아요.',
  ex2 = 'The transaction is subject to the buyer''s mortgage approval.', ex2_ko = '이 거래는 매수인의 모기지 승인의 적용을 받아요.',
  ex3 = 'The lease is subject to annual rent reviews.', ex3_ko = '임대 계약은 연례 임대료 재검토의 적용을 받아요.',
  ex4 = 'The sale is subject to satisfactory survey results.', ex4_ko = '이 매매는 만족스러운 측량 결과의 적용을 받아요.',
  ex5 = 'The land is subject to environmental protection regulations.', ex5_ko = '이 토지는 환경 보호 규제의 적용을 받아요.'
WHERE id = 's_home_C1_06';

UPDATE sentences SET
  ex1 = 'Failure to disclose a structural defect may constitute misrepresentation.', ex1_ko = '구조적 결함을 공개하지 않으면 허위 진술에 해당할 수 있어요.',
  ex2 = 'Such conduct may constitute a material breach of the agreement.', ex2_ko = '그런 행위는 계약의 중대한 위반에 해당할 수 있어요.',
  ex3 = 'Unauthorized alterations may constitute grounds for termination.', ex3_ko = '무단 변경은 해지 사유에 해당할 수 있어요.',
  ex4 = 'Persistent noise may constitute a nuisance under the regulations.', ex4_ko = '지속적인 소음은 규제상 방해 행위에 해당할 수 있어요.',
  ex5 = 'Withholding rent without justification may constitute default.', ex5_ko = '정당한 사유 없이 임대료를 보류하면 채무 불이행에 해당할 수 있어요.'
WHERE id = 's_home_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The land survey revealed a significant discrepancy in the boundary records.', ex1_ko = '토지 측량 결과 경계 기록에서 상당한 불일치가 밝혀졌어요.',
  ex2 = 'The inspection revealed a significant infestation in the basement.', ex2_ko = '점검 결과 지하에서 상당한 해충 발생이 밝혀졌어요.',
  ex3 = 'The audit revealed a significant shortfall in the service charge fund.', ex3_ko = '감사 결과 관리비 기금에서 상당한 부족이 밝혀졌어요.',
  ex4 = 'The structural report revealed a significant settlement under the foundations.', ex4_ko = '구조 보고서가 기초 아래의 상당한 침하를 밝혀냈어요.',
  ex5 = 'The valuation revealed a significant deviation from the asking price.', ex5_ko = '감정 결과 호가에서 상당한 편차가 밝혀졌어요.'
WHERE id = 's_home_C2_01';

UPDATE sentences SET
  ex1 = 'The lender exercised its right to repossession after default.', ex1_ko = '대출 기관이 채무 불이행 후 재취득권을 행사했어요.',
  ex2 = 'The freeholder exercised its right to forfeiture under the lease.', ex2_ko = '자유 토지권자가 임대 계약 하 권리 상실권을 행사했어요.',
  ex3 = 'The trustee exercised its right to sell the encumbered property.', ex3_ko = '수탁자가 담보 설정된 부동산을 매각할 권리를 행사했어요.',
  ex4 = 'The local authority exercised its right to compulsory purchase.', ex4_ko = '지방 당국이 강제 수용권을 행사했어요.',
  ex5 = 'The developer exercised its right to terminate the option agreement.', ex5_ko = '개발업체가 옵션 계약 해지권을 행사했어요.'
WHERE id = 's_home_C2_02';

UPDATE sentences SET
  ex1 = 'The court implied an easement as a necessity arising from the partition.', ex1_ko = '법원이 분할에서 발생하는 필요성으로서 지역권을 묵시적으로 인정했어요.',
  ex2 = 'The judge implied a duty as a continuing obligation arising from the conveyance.', ex2_ko = '판사가 양도에서 발생하는 지속적 의무로서 책임을 묵시적으로 인정했어요.',
  ex3 = 'The tribunal implied a right of access as a quasi-easement arising from the prior use.', ex3_ko = '재판부가 이전 사용에서 발생하는 준지역권으로서 접근권을 묵시적으로 인정했어요.',
  ex4 = 'The court implied a covenant as a restriction arising from the original grant.', ex4_ko = '법원이 원래 부여에서 발생하는 제한으로서 약정을 묵시적으로 인정했어요.',
  ex5 = 'The arbitrator implied a term as an obligation arising from custom and practice.', ex5_ko = '중재인이 관습과 관행에서 발생하는 의무로서 조항을 묵시적으로 인정했어요.'
WHERE id = 's_home_C2_03';

UPDATE sentences SET
  ex1 = 'Under the doctrine of constructive notice, the buyer was deemed aware of the defect.', ex1_ko = '추정적 통지 원칙에 따라 매수인은 결함을 알고 있었던 것으로 간주됐어요.',
  ex2 = 'Under the doctrine of part performance, the oral agreement was upheld.', ex2_ko = '부분 이행 원칙에 따라 구두 계약이 인정됐어요.',
  ex3 = 'Under the doctrine of merger, the lesser interest was extinguished.', ex3_ko = '병합 원칙에 따라 하위 권리가 소멸됐어요.',
  ex4 = 'Under the doctrine of estoppel, the landlord was barred from contesting the lease.', ex4_ko = '금반언 원칙에 따라 집주인은 임대 계약 분쟁을 제기할 수 없게 됐어요.',
  ex5 = 'Under the doctrine of frustration, the contract was discharged.', ex5_ko = '계약 좌절 원칙에 따라 계약이 해소됐어요.'
WHERE id = 's_home_C2_04';

UPDATE sentences SET
  ex1 = 'The fiduciary duty vested in the trustee was strictly enforced.', ex1_ko = '수탁자에게 귀속된 신탁 의무가 엄격하게 집행됐어요.',
  ex2 = 'The legal title vested in the executor pending probate.', ex2_ko = '검인 계류 중 유언 집행자에게 법적 소유권이 귀속됐어요.',
  ex3 = 'The equitable interest vested in the beneficiary was clearly documented.', ex3_ko = '수익자에게 귀속된 형평법적 권리가 명확하게 문서화됐어요.',
  ex4 = 'The remainder interest vested in the heirs upon the death of the life tenant.', ex4_ko = '종신 임차인의 사망 시 잔여 권리가 상속인들에게 귀속됐어요.',
  ex5 = 'The reversionary right vested in the original grantor after the lease expired.', ex5_ko = '임대 계약 만료 후 원 부여자에게 복귀권이 귀속됐어요.'
WHERE id = 's_home_C2_05';

UPDATE sentences SET
  ex1 = 'A caveat was registered to protect the claimant''s interest pending litigation.', ex1_ko = '소송 계류 중 청구인의 권리를 보호하기 위해 이의 신청이 등록됐어요.',
  ex2 = 'An injunction was sought to protect the property pending sale.', ex2_ko = '매각 계류 중 부동산을 보호하기 위해 가처분이 신청됐어요.',
  ex3 = 'A unilateral notice was filed to protect the spouse''s equity pending divorce.', ex3_ko = '이혼 계류 중 배우자의 지분을 보호하기 위해 일방적 통지가 제출됐어요.',
  ex4 = 'A restriction was entered to protect the trust pending administration.', ex4_ko = '관리 계류 중 신탁을 보호하기 위해 제한이 기재됐어요.',
  ex5 = 'A holding deposit was paid to protect the buyer''s position pending exchange.', ex5_ko = '교환 계류 중 매수인의 입지를 보호하기 위해 예약금이 지불됐어요.'
WHERE id = 's_home_C2_06';

UPDATE sentences SET
  ex1 = 'The board voted to levy a maintenance charge across all units.', ex1_ko = '이사회가 모든 세대에 관리비를 부과하기로 의결했어요.',
  ex2 = 'The association voted to levy a one-time assessment for the renovation.', ex2_ko = '협회가 리노베이션을 위한 일회성 부담금 부과를 의결했어요.',
  ex3 = 'The trustees voted to levy a service charge to cover legal fees.', ex3_ko = '수탁자들이 법률 비용 충당을 위해 관리비를 부과하기로 의결했어요.',
  ex4 = 'The committee voted to levy a sinking fund contribution from each owner.', ex4_ko = '위원회가 각 소유자로부터 적립기금 부담금을 부과하기로 의결했어요.',
  ex5 = 'The council voted to levy a heritage preservation surcharge.', ex5_ko = '의회가 문화재 보존 부가금을 부과하기로 의결했어요.'
WHERE id = 's_home_C2_07';

-- ── academic ──
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

-- ── culture ──
-- EngCat — Culture topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'What kind of movies do you like?', ex1_ko = '어떤 영화 좋아해요?',
  ex2 = 'What kind of food do you enjoy?', ex2_ko = '어떤 음식 즐겨 드세요?',
  ex3 = 'What kind of books do you read?', ex3_ko = '어떤 책 읽으세요?',
  ex4 = 'What kind of art do you like?', ex4_ko = '어떤 예술 좋아해요?',
  ex5 = 'What kind of games do you play?', ex5_ko = '어떤 게임 하세요?'
WHERE id = 's_culture_A1_01';

UPDATE sentences SET
  ex1 = 'Do you like coffee or tea more?', ex1_ko = '커피를 더 좋아해요, 아니면 차를 더 좋아해요?',
  ex2 = 'Do you like classical or jazz music more?', ex2_ko = '클래식 음악을 더 좋아해요, 아니면 재즈를 더 좋아해요?',
  ex3 = 'Do you like museums or galleries more?', ex3_ko = '박물관을 더 좋아해요, 아니면 갤러리를 더 좋아해요?',
  ex4 = 'Do you like dancing or singing more?', ex4_ko = '춤추는 걸 더 좋아해요, 아니면 노래하는 걸 더 좋아해요?',
  ex5 = 'Do you like indoor or outdoor activities more?', ex5_ko = '실내 활동을 더 좋아해요, 아니면 야외 활동을 더 좋아해요?'
WHERE id = 's_culture_A1_02';

UPDATE sentences SET
  ex1 = 'What is your favourite movie?', ex1_ko = '가장 좋아하는 영화가 뭐예요?',
  ex2 = 'What is your favourite book?', ex2_ko = '가장 좋아하는 책이 뭐예요?',
  ex3 = 'What is your favourite painter?', ex3_ko = '가장 좋아하는 화가가 누구예요?',
  ex4 = 'What is your favourite dance style?', ex4_ko = '가장 좋아하는 춤 스타일이 뭐예요?',
  ex5 = 'What is your favourite TV show?', ex5_ko = '가장 좋아하는 TV 프로그램이 뭐예요?'
WHERE id = 's_culture_A1_03';

UPDATE sentences SET
  ex1 = 'I love listening to jazz at night.', ex1_ko = '저는 밤에 재즈 듣는 걸 좋아해요.',
  ex2 = 'I love listening to podcasts on the bus.', ex2_ko = '저는 버스에서 팟캐스트 듣는 걸 좋아해요.',
  ex3 = 'I love listening to live performances.', ex3_ko = '저는 라이브 공연 듣는 걸 좋아해요.',
  ex4 = 'I love listening to my dad''s old records.', ex4_ko = '저는 아빠의 옛 레코드 듣는 걸 좋아해요.',
  ex5 = 'I love listening to film soundtracks.', ex5_ko = '저는 영화 사운드트랙 듣는 걸 좋아해요.'
WHERE id = 's_culture_A1_04';

UPDATE sentences SET
  ex1 = 'Can you sing?', ex1_ko = '노래 부를 수 있어요?',
  ex2 = 'Can you play the piano?', ex2_ko = '피아노 칠 수 있어요?',
  ex3 = 'Can you draw well?', ex3_ko = '그림 잘 그릴 수 있어요?',
  ex4 = 'Can you read Korean?', ex4_ko = '한국어 읽을 수 있어요?',
  ex5 = 'Can you act in a play?', ex5_ko = '연극에서 연기할 수 있어요?'
WHERE id = 's_culture_A1_05';

UPDATE sentences SET
  ex1 = 'Do you play any sports?', ex1_ko = '운동을 할 수 있어요?',
  ex2 = 'Do you play any board games?', ex2_ko = '보드게임을 할 수 있어요?',
  ex3 = 'Do you play any traditional instruments?', ex3_ko = '전통 악기를 연주할 수 있어요?',
  ex4 = 'Do you play any video games?', ex4_ko = '비디오 게임을 할 수 있어요?',
  ex5 = 'Do you play any team sports?', ex5_ko = '팀 스포츠를 할 수 있어요?'
WHERE id = 's_culture_A1_06';

UPDATE sentences SET
  ex1 = 'I enjoy watching films on weekends.', ex1_ko = '저는 주말에 영화 보는 것을 즐겨요.',
  ex2 = 'I enjoy watching dance performances.', ex2_ko = '저는 춤 공연 보는 것을 즐겨요.',
  ex3 = 'I enjoy watching art documentaries.', ex3_ko = '저는 예술 다큐멘터리 보는 것을 즐겨요.',
  ex4 = 'I enjoy watching street performers downtown.', ex4_ko = '저는 시내 거리 공연 보는 것을 즐겨요.',
  ex5 = 'I enjoy watching musical theatre.', ex5_ko = '저는 뮤지컬 보는 것을 즐겨요.'
WHERE id = 's_culture_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Have you ever been to an art exhibition?', ex1_ko = '미술 전시회에 가본 적 있어요?',
  ex2 = 'Have you ever been to an opera?', ex2_ko = '오페라에 가본 적 있어요?',
  ex3 = 'Have you ever been to a poetry reading?', ex3_ko = '시 낭독회에 가본 적 있어요?',
  ex4 = 'Have you ever been to a traditional dance show?', ex4_ko = '전통 무용 공연에 가본 적 있어요?',
  ex5 = 'Have you ever been to a film premiere?', ex5_ko = '영화 시사회에 가본 적 있어요?'
WHERE id = 's_culture_A2_01';

UPDATE sentences SET
  ex1 = 'What time does the movie start?', ex1_ko = '영화가 몇 시에 시작해요?',
  ex2 = 'What time does the museum open?', ex2_ko = '박물관이 몇 시에 열어요?',
  ex3 = 'What time does the play end?', ex3_ko = '연극이 몇 시에 끝나요?',
  ex4 = 'What time does the gallery close?', ex4_ko = '갤러리가 몇 시에 닫아요?',
  ex5 = 'What time does the festival begin?', ex5_ko = '축제가 몇 시에 시작해요?'
WHERE id = 's_culture_A2_02';

UPDATE sentences SET
  ex1 = 'Is there a coat check nearby?', ex1_ko = '근처에 옷 보관소가 있나요?',
  ex2 = 'Is there a café in the museum?', ex2_ko = '박물관에 카페가 있나요?',
  ex3 = 'Is there a guidebook in English?', ex3_ko = '영어 가이드북이 있나요?',
  ex4 = 'Is there a student discount?', ex4_ko = '학생 할인이 있나요?',
  ex5 = 'Is there a meeting point for the tour?', ex5_ko = '투어 집합 장소가 있나요?'
WHERE id = 's_culture_A2_03';

UPDATE sentences SET
  ex1 = 'I''d like to buy a museum membership.', ex1_ko = '박물관 회원권을 구매하고 싶어요.',
  ex2 = 'I''d like to book a guided tour, please.', ex2_ko = '가이드 투어를 예약하고 싶어요.',
  ex3 = 'I''d like to upgrade my ticket to VIP.', ex3_ko = '티켓을 VIP로 업그레이드하고 싶어요.',
  ex4 = 'I''d like to reserve two seats for the concert.', ex4_ko = '콘서트 좌석 두 자리를 예약하고 싶어요.',
  ex5 = 'I''d like to learn more about traditional crafts.', ex5_ko = '전통 공예에 대해 더 배우고 싶어요.'
WHERE id = 's_culture_A2_04';

UPDATE sentences SET
  ex1 = 'The concert was really impressive.', ex1_ko = '콘서트가 정말 인상적이었어요.',
  ex2 = 'The dance show was really impressive.', ex2_ko = '춤 공연이 정말 인상적이었어요.',
  ex3 = 'The art installation was really impressive.', ex3_ko = '아트 설치 작품이 정말 인상적이었어요.',
  ex4 = 'The opera was really impressive.', ex4_ko = '오페라가 정말 인상적이었어요.',
  ex5 = 'The festival lineup was really impressive.', ex5_ko = '축제 라인업이 정말 인상적이었어요.'
WHERE id = 's_culture_A2_05';

UPDATE sentences SET
  ex1 = 'Can I take photos at the concert?', ex1_ko = '콘서트에서 사진을 찍어도 될까요?',
  ex2 = 'Can I take photos of the sculpture?', ex2_ko = '조각상 사진을 찍어도 될까요?',
  ex3 = 'Can I take photos using flash?', ex3_ko = '플래시를 써서 사진을 찍어도 될까요?',
  ex4 = 'Can I take photos for my blog?', ex4_ko = '블로그용으로 사진을 찍어도 될까요?',
  ex5 = 'Can I take photos in this hall?', ex5_ko = '이 홀에서 사진을 찍어도 될까요?'
WHERE id = 's_culture_A2_06';

UPDATE sentences SET
  ex1 = 'How long does the movie last?', ex1_ko = '영화가 얼마나 걸려요?',
  ex2 = 'How long does the opera last?', ex2_ko = '오페라가 얼마나 걸려요?',
  ex3 = 'How long does the tour last?', ex3_ko = '투어가 얼마나 걸려요?',
  ex4 = 'How long does the intermission last?', ex4_ko = '인터미션이 얼마나 걸려요?',
  ex5 = 'How long does the festival last?', ex5_ko = '축제가 얼마나 걸려요?'
WHERE id = 's_culture_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'What I find most interesting about this novel is the way the author uses memory.', ex1_ko = '이 소설에서 가장 흥미로운 점은 저자가 기억을 사용하는 방식이에요.',
  ex2 = 'What I find most interesting about this film is the use of silence.', ex2_ko = '이 영화에서 가장 흥미로운 점은 침묵의 사용이에요.',
  ex3 = 'What I find most interesting about this exhibition is the curation.', ex3_ko = '이 전시회에서 가장 흥미로운 점은 큐레이팅이에요.',
  ex4 = 'What I find most interesting about this performance is the audience interaction.', ex4_ko = '이 공연에서 가장 흥미로운 점은 관객과의 상호작용이에요.',
  ex5 = 'What I find most interesting about this style is its blend of old and new.', ex5_ko = '이 스타일에서 가장 흥미로운 점은 옛것과 새것의 조화예요.'
WHERE id = 's_culture_B1_01';

UPDATE sentences SET
  ex1 = 'This song really speaks to me on a personal level.', ex1_ko = '이 노래는 개인적으로 정말 제 마음에 와닿아요.',
  ex2 = 'This painting really speaks to me about loneliness.', ex2_ko = '이 그림은 외로움에 대해 정말 제 마음에 와닿아요.',
  ex3 = 'This film really speaks to me about family.', ex3_ko = '이 영화는 가족에 대해 정말 제 마음에 와닿아요.',
  ex4 = 'This novel really speaks to me about identity.', ex4_ko = '이 소설은 정체성에 대해 정말 제 마음에 와닿아요.',
  ex5 = 'This poem really speaks to me at this moment in my life.', ex5_ko = '이 시는 제 인생의 이 순간에 정말 제 마음에 와닿아요.'
WHERE id = 's_culture_B1_02';

UPDATE sentences SET
  ex1 = 'I wasn''t sure about the abstract style at first, but it grew on me.', ex1_ko = '처음엔 추상적 스타일이 의심스러웠지만, 점점 좋아졌어요.',
  ex2 = 'I didn''t like the lead actor at first, but he grew on me.', ex2_ko = '처음엔 주연 배우가 별로였지만, 점점 좋아졌어요.',
  ex3 = 'I wasn''t fond of the unusual ending at first, but it grew on me.', ex3_ko = '처음엔 독특한 엔딩이 마음에 안 들었지만, 점점 좋아졌어요.',
  ex4 = 'I was skeptical about the slow pace at first, but it grew on me.', ex4_ko = '처음엔 느린 전개가 의심스러웠지만, 점점 좋아졌어요.',
  ex5 = 'I wasn''t a fan of the soundtrack at first, but it grew on me.', ex5_ko = '처음엔 사운드트랙이 별로였지만, 점점 좋아졌어요.'
WHERE id = 's_culture_B1_03';

UPDATE sentences SET
  ex1 = 'There''s something deeply moving about the way she paints light.', ex1_ko = '그녀가 빛을 그리는 방식에는 깊이 감동적인 무언가가 있어요.',
  ex2 = 'There''s something deeply moving about the silence in this film.', ex2_ko = '이 영화의 침묵에는 깊이 감동적인 무언가가 있어요.',
  ex3 = 'There''s something deeply moving about the way they remember their grandmother.', ex3_ko = '그들이 할머니를 추억하는 방식에는 깊이 감동적인 무언가가 있어요.',
  ex4 = 'There''s something deeply moving about old letters from strangers.', ex4_ko = '낯선 이의 옛 편지에는 깊이 감동적인 무언가가 있어요.',
  ex5 = 'There''s something deeply moving about the simplicity of folk music.', ex5_ko = '민속 음악의 단순함에는 깊이 감동적인 무언가가 있어요.'
WHERE id = 's_culture_B1_04';

UPDATE sentences SET
  ex1 = 'Have you had a chance to see the new film by that director?', ex1_ko = '그 감독의 새 영화를 볼 기회가 있으셨어요?',
  ex2 = 'Have you had a chance to read her latest novel?', ex2_ko = '그녀의 최신 소설을 읽을 기회가 있으셨어요?',
  ex3 = 'Have you had a chance to visit the new wing of the museum?', ex3_ko = '박물관의 새 별관을 방문할 기회가 있으셨어요?',
  ex4 = 'Have you had a chance to attend the festival this year?', ex4_ko = '올해 축제에 참석할 기회가 있으셨어요?',
  ex5 = 'Have you had a chance to listen to his new album?', ex5_ko = '그의 새 앨범을 들을 기회가 있으셨어요?'
WHERE id = 's_culture_B1_05';

UPDATE sentences SET
  ex1 = 'The atmosphere at the opening night was absolutely electric.', ex1_ko = '개막일 밤의 분위기가 완전히 전율적이었어요.',
  ex2 = 'The energy in the stadium was absolutely electric.', ex2_ko = '경기장의 에너지가 완전히 전율적이었어요.',
  ex3 = 'The crowd''s reaction was absolutely electric.', ex3_ko = '관중의 반응이 완전히 전율적이었어요.',
  ex4 = 'The performance''s climax was absolutely electric.', ex4_ko = '공연의 클라이맥스가 완전히 전율적이었어요.',
  ex5 = 'The moment the curtain rose was absolutely electric.', ex5_ko = '막이 올라간 순간이 완전히 전율적이었어요.'
WHERE id = 's_culture_B1_06';

UPDATE sentences SET
  ex1 = 'I''d strongly recommend this novel to anyone interested in postmodern fiction.', ex1_ko = '포스트모던 소설에 관심 있는 분이라면 이 소설을 강력히 추천해요.',
  ex2 = 'I''d strongly recommend this album to anyone interested in fusion jazz.', ex2_ko = '퓨전 재즈에 관심 있는 분이라면 이 앨범을 강력히 추천해요.',
  ex3 = 'I''d strongly recommend this film to anyone interested in cinematography.', ex3_ko = '촬영 기법에 관심 있는 분이라면 이 영화를 강력히 추천해요.',
  ex4 = 'I''d strongly recommend this museum to anyone interested in ancient history.', ex4_ko = '고대 역사에 관심 있는 분이라면 이 박물관을 강력히 추천해요.',
  ex5 = 'I''d strongly recommend this festival to anyone interested in independent cinema.', ex5_ko = '독립 영화에 관심 있는 분이라면 이 축제를 강력히 추천해요.'
WHERE id = 's_culture_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'While streaming platforms dominate distribution, independent cinemas still hold cultural significance.', ex1_ko = '스트리밍 플랫폼이 배급을 장악했지만, 독립 영화관은 여전히 문화적 의미를 지녀요.',
  ex2 = 'While digital art is rising, oil painting still holds a central place in collector circles.', ex2_ko = '디지털 아트가 부상했지만, 유화는 여전히 컬렉터 사이에서 중심적인 위치를 차지해요.',
  ex3 = 'While English novels dominate the market, regional literature still holds deep cultural value.', ex3_ko = '영어 소설이 시장을 장악했지만, 지역 문학은 여전히 깊은 문화적 가치를 지녀요.',
  ex4 = 'While modern pop has global appeal, folk traditions still hold a vital role in community identity.', ex4_ko = '현대 팝이 세계적으로 인기 있지만, 민속 전통은 여전히 공동체 정체성에 핵심적인 역할을 해요.',
  ex5 = 'While digital photography is widespread, film photography still holds an irreplaceable aesthetic.', ex5_ko = '디지털 사진이 널리 쓰이지만, 필름 사진은 여전히 대체 불가능한 미학을 지녀요.'
WHERE id = 's_culture_B2_01';

UPDATE sentences SET
  ex1 = 'There''s a growing tension between commercial success and artistic integrity.', ex1_ko = '상업적 성공과 예술적 진정성 사이의 긴장이 커지고 있어요.',
  ex2 = 'There''s a growing tension between accessibility and depth in modern art.', ex2_ko = '현대 미술에서 접근성과 깊이 사이의 긴장이 커지고 있어요.',
  ex3 = 'There''s a growing tension between authenticity and reinvention in folk music.', ex3_ko = '민속 음악에서 진정성과 재해석 사이의 긴장이 커지고 있어요.',
  ex4 = 'There''s a growing tension between tradition and innovation in contemporary cuisine.', ex4_ko = '현대 요리에서 전통과 혁신 사이의 긴장이 커지고 있어요.',
  ex5 = 'There''s a growing tension between local craft and mass production.', ex5_ko = '지역 수공예와 대량 생산 사이의 긴장이 커지고 있어요.'
WHERE id = 's_culture_B2_02';

UPDATE sentences SET
  ex1 = 'The way a society treats its elderly says a lot about its values.', ex1_ko = '한 사회가 노인을 대하는 방식은 그 사회의 가치관에 대해 많은 것을 말해줘요.',
  ex2 = 'The way a culture preserves its language says a lot about its priorities.', ex2_ko = '한 문화가 자국 언어를 보존하는 방식은 그 문화의 우선순위에 대해 많은 것을 말해줘요.',
  ex3 = 'The way a museum displays its artifacts says a lot about its perspective.', ex3_ko = '박물관이 유물을 전시하는 방식은 그 박물관의 관점에 대해 많은 것을 말해줘요.',
  ex4 = 'The way a film handles loss says a lot about its philosophy.', ex4_ko = '영화가 상실을 다루는 방식은 그 영화의 철학에 대해 많은 것을 말해줘요.',
  ex5 = 'The way a community celebrates its heroes says a lot about its identity.', ex5_ko = '공동체가 영웅을 기리는 방식은 그 공동체의 정체성에 대해 많은 것을 말해줘요.'
WHERE id = 's_culture_B2_03';

UPDATE sentences SET
  ex1 = 'Cross-cultural exchange has always been central to culinary innovation.', ex1_ko = '문화 간 교류는 항상 요리 혁신의 핵심이었어요.',
  ex2 = 'Cross-cultural exchange has always been central to musical evolution.', ex2_ko = '문화 간 교류는 항상 음악적 진화의 핵심이었어요.',
  ex3 = 'Cross-cultural exchange has always been central to literary movements.', ex3_ko = '문화 간 교류는 항상 문학 운동의 핵심이었어요.',
  ex4 = 'Cross-cultural exchange has always been central to architectural development.', ex4_ko = '문화 간 교류는 항상 건축 발전의 핵심이었어요.',
  ex5 = 'Cross-cultural exchange has always been central to scientific progress.', ex5_ko = '문화 간 교류는 항상 과학 진보의 핵심이었어요.'
WHERE id = 's_culture_B2_04';

UPDATE sentences SET
  ex1 = 'What sets this film apart is its refusal to provide easy answers.', ex1_ko = '이 영화를 돋보이게 하는 것은 쉬운 답을 제공하기를 거부하는 자세예요.',
  ex2 = 'What sets this novel apart is its layered narrative voices.', ex2_ko = '이 소설을 돋보이게 하는 것은 다층적인 서사 목소리예요.',
  ex3 = 'What sets this artist apart is her commitment to social engagement.', ex3_ko = '이 예술가를 돋보이게 하는 것은 사회 참여에 대한 헌신이에요.',
  ex4 = 'What sets this festival apart is its focus on emerging voices.', ex4_ko = '이 축제를 돋보이게 하는 것은 신예 목소리에 대한 초점이에요.',
  ex5 = 'What sets this museum apart is its emphasis on local communities.', ex5_ko = '이 박물관을 돋보이게 하는 것은 지역 공동체에 대한 강조예요.'
WHERE id = 's_culture_B2_05';

UPDATE sentences SET
  ex1 = 'It''s worth noting that the author''s upbringing influenced her early work significantly.', ex1_ko = '저자의 성장 환경이 초기 작품에 크게 영향을 미쳤다는 점은 주목할 만해요.',
  ex2 = 'It''s worth noting that the exhibition deliberately avoids chronological order.', ex2_ko = '전시회가 의도적으로 시간 순서를 피한다는 점은 주목할 만해요.',
  ex3 = 'It''s worth noting that the soundtrack borrows heavily from traditional folk.', ex3_ko = '사운드트랙이 전통 민속에서 많은 것을 차용한다는 점은 주목할 만해요.',
  ex4 = 'It''s worth noting that the director worked with non-professional actors throughout.', ex4_ko = '감독이 전 작품에서 비전문 배우들과 작업했다는 점은 주목할 만해요.',
  ex5 = 'It''s worth noting that this style emerged during a period of political turmoil.', ex5_ko = '이 양식이 정치적 격동기에 출현했다는 점은 주목할 만해요.'
WHERE id = 's_culture_B2_06';

UPDATE sentences SET
  ex1 = 'The debate over historical monuments raises uncomfortable but necessary questions.', ex1_ko = '역사적 기념물에 관한 논쟁은 불편하지만 필요한 질문들을 제기해요.',
  ex2 = 'The discussion of museum repatriation raises uncomfortable but necessary questions.', ex2_ko = '박물관 유물 반환에 관한 토론은 불편하지만 필요한 질문들을 제기해요.',
  ex3 = 'The conversation about traditional gender roles raises uncomfortable but necessary questions.', ex3_ko = '전통적 성 역할에 관한 대화는 불편하지만 필요한 질문들을 제기해요.',
  ex4 = 'The controversy around the artist''s personal life raises uncomfortable but necessary questions.', ex4_ko = '예술가의 사생활을 둘러싼 논란은 불편하지만 필요한 질문들을 제기해요.',
  ex5 = 'The reckoning with colonial collections raises uncomfortable but necessary questions.', ex5_ko = '식민지 수집품에 대한 청산은 불편하지만 필요한 질문들을 제기해요.'
WHERE id = 's_culture_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The novel''s power lies precisely in its refusal to redeem its protagonist.', ex1_ko = '이 소설의 힘은 바로 주인공을 구원하기를 거부하는 데 있어요.',
  ex2 = 'The film''s power lies precisely in its refusal to explain the ending.', ex2_ko = '이 영화의 힘은 바로 결말을 설명하기를 거부하는 데 있어요.',
  ex3 = 'The exhibition''s power lies precisely in its refusal to follow a single narrative.', ex3_ko = '이 전시의 힘은 바로 단일 서사를 따르기를 거부하는 데 있어요.',
  ex4 = 'The play''s power lies precisely in its refusal to give the audience catharsis.', ex4_ko = '이 연극의 힘은 바로 관객에게 카타르시스를 주기를 거부하는 데 있어요.',
  ex5 = 'The composer''s power lies precisely in his refusal to resolve dissonance.', ex5_ko = '이 작곡가의 힘은 바로 불협화음을 해결하기를 거부하는 데 있어요.'
WHERE id = 's_culture_C1_01';

UPDATE sentences SET
  ex1 = 'One might argue that the narrative structure mirrors the fractured memory of trauma.', ex1_ko = '서사 구조가 외상의 분열된 기억을 반영한다고 주장할 수 있어요.',
  ex2 = 'One might argue that the visual composition mirrors the political tensions of the era.', ex2_ko = '시각적 구성이 그 시대의 정치적 긴장을 반영한다고 주장할 수 있어요.',
  ex3 = 'One might argue that the film''s pacing mirrors the rhythms of grief.', ex3_ko = '영화의 전개 속도가 슬픔의 리듬을 반영한다고 주장할 수 있어요.',
  ex4 = 'One might argue that the architectural form mirrors the building''s social function.', ex4_ko = '건축의 형태가 그 건물의 사회적 기능을 반영한다고 주장할 수 있어요.',
  ex5 = 'One might argue that the orchestration mirrors the inner life of the protagonist.', ex5_ko = '오케스트레이션이 주인공의 내면 삶을 반영한다고 주장할 수 있어요.'
WHERE id = 's_culture_C1_02';

UPDATE sentences SET
  ex1 = 'The tension between memory and history is never fully resolved in this novel.', ex1_ko = '이 소설에서 기억과 역사 사이의 긴장은 결코 완전히 해결되지 않아요.',
  ex2 = 'The tension between individual and collective is never fully resolved in this play.', ex2_ko = '이 연극에서 개인과 집단 사이의 긴장은 결코 완전히 해결되지 않아요.',
  ex3 = 'The tension between visibility and erasure is never fully resolved in this exhibition.', ex3_ko = '이 전시에서 가시성과 삭제 사이의 긴장은 결코 완전히 해결되지 않아요.',
  ex4 = 'The tension between tradition and rupture is never fully resolved in this composition.', ex4_ko = '이 작품에서 전통과 단절 사이의 긴장은 결코 완전히 해결되지 않아요.',
  ex5 = 'The tension between sacred and profane is never fully resolved in this work.', ex5_ko = '이 작품에서 성과 속 사이의 긴장은 결코 완전히 해결되지 않아요.'
WHERE id = 's_culture_C1_03';

UPDATE sentences SET
  ex1 = 'Rather than offering closure, the novel poses a series of provocative questions about memory.', ex1_ko = '결말을 제시하기보다는 소설이 기억에 대한 일련의 도발적인 질문을 제기해요.',
  ex2 = 'Rather than offering certainty, the film poses a series of provocative questions about truth.', ex2_ko = '확실성을 제시하기보다는 영화가 진실에 대한 일련의 도발적인 질문을 제기해요.',
  ex3 = 'Rather than offering solace, the play poses a series of provocative questions about loss.', ex3_ko = '위안을 제시하기보다는 연극이 상실에 대한 일련의 도발적인 질문을 제기해요.',
  ex4 = 'Rather than offering nostalgia, the installation poses a series of provocative questions about home.', ex4_ko = '향수를 제시하기보다는 설치 작품이 집에 대한 일련의 도발적인 질문을 제기해요.',
  ex5 = 'Rather than offering reconciliation, the documentary poses a series of provocative questions about justice.', ex5_ko = '화해를 제시하기보다는 다큐멘터리가 정의에 대한 일련의 도발적인 질문을 제기해요.'
WHERE id = 's_culture_C1_04';

UPDATE sentences SET
  ex1 = 'What distinguishes this composer''s work is the interplay between dissonance and lyricism.', ex1_ko = '이 작곡가의 작품을 구별하는 것은 불협화음과 서정성 사이의 상호작용이에요.',
  ex2 = 'What distinguishes this novelist''s work is the interplay between intimacy and politics.', ex2_ko = '이 소설가의 작품을 구별하는 것은 친밀함과 정치 사이의 상호작용이에요.',
  ex3 = 'What distinguishes this artist''s practice is the interplay between abstraction and figuration.', ex3_ko = '이 예술가의 작업을 구별하는 것은 추상과 구상 사이의 상호작용이에요.',
  ex4 = 'What distinguishes this filmmaker''s style is the interplay between realism and surrealism.', ex4_ko = '이 영화감독의 스타일을 구별하는 것은 사실주의와 초현실주의 사이의 상호작용이에요.',
  ex5 = 'What distinguishes this poet''s voice is the interplay between vernacular and elevated diction.', ex5_ko = '이 시인의 목소리를 구별하는 것은 일상어와 고양된 어법 사이의 상호작용이에요.'
WHERE id = 's_culture_C1_05';

UPDATE sentences SET
  ex1 = 'The novel operates on multiple registers simultaneously — historical, psychological, and metaphysical.', ex1_ko = '그 소설은 역사적, 심리적, 형이상학적으로 여러 차원에서 동시에 작동해요.',
  ex2 = 'The exhibition operates on multiple registers simultaneously — visual, sonic, and archival.', ex2_ko = '그 전시는 시각적, 음향적, 아카이브적으로 여러 차원에서 동시에 작동해요.',
  ex3 = 'The play operates on multiple registers simultaneously — comedic, tragic, and philosophical.', ex3_ko = '그 연극은 희극적, 비극적, 철학적으로 여러 차원에서 동시에 작동해요.',
  ex4 = 'The piece operates on multiple registers simultaneously — sensual, intellectual, and political.', ex4_ko = '그 작품은 감각적, 지적, 정치적으로 여러 차원에서 동시에 작동해요.',
  ex5 = 'The performance operates on multiple registers simultaneously — physical, emotional, and conceptual.', ex5_ko = '그 공연은 신체적, 감정적, 개념적으로 여러 차원에서 동시에 작동해요.'
WHERE id = 's_culture_C1_06';

UPDATE sentences SET
  ex1 = 'By foregrounding the constructedness of its own genre, the film invites us to question what cinema can do.', ex1_ko = '자신의 장르가 구성물임을 전면에 내세움으로써, 그 영화는 우리가 영화가 무엇을 할 수 있는지 의문시하도록 유도해요.',
  ex2 = 'By foregrounding the constructedness of historical accounts, the novel invites us to question who writes history.', ex2_ko = '역사적 서술이 구성물임을 전면에 내세움으로써, 그 소설은 우리가 누가 역사를 쓰는지 의문시하도록 유도해요.',
  ex3 = 'By foregrounding the constructedness of the gallery space, the installation invites us to question how art is framed.', ex3_ko = '갤러리 공간이 구성물임을 전면에 내세움으로써, 그 설치 작품은 우리가 예술이 어떻게 틀지어지는지 의문시하도록 유도해요.',
  ex4 = 'By foregrounding the constructedness of national identity, the play invites us to question its givenness.', ex4_ko = '국가 정체성이 구성물임을 전면에 내세움으로써, 그 연극은 우리가 그 주어짐을 의문시하도록 유도해요.',
  ex5 = 'By foregrounding the constructedness of memory itself, the documentary invites us to question its truth claims.', ex5_ko = '기억 자체가 구성물임을 전면에 내세움으로써, 그 다큐멘터리는 우리가 그 진실 주장을 의문시하도록 유도해요.'
WHERE id = 's_culture_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The novel enacts a deconstruction of the very categories of authorship it appears to depend upon.', ex1_ko = '그 소설은 자신이 의존하는 것처럼 보이는 바로 그 저자성 범주들을 해체하는 것을 수행해요.',
  ex2 = 'The film enacts a deconstruction of the very genres it appears to inhabit.', ex2_ko = '그 영화는 자신이 머무는 것처럼 보이는 바로 그 장르들을 해체하는 것을 수행해요.',
  ex3 = 'The exhibition enacts a deconstruction of the very curatorial conventions it appears to uphold.', ex3_ko = '그 전시는 자신이 지키는 것처럼 보이는 바로 그 큐레이션 관행들을 해체하는 것을 수행해요.',
  ex4 = 'The artist enacts a deconstruction of the very institutional logic she appears to inhabit.', ex4_ko = '그 예술가는 자신이 머무는 것처럼 보이는 바로 그 제도적 논리를 해체하는 것을 수행해요.',
  ex5 = 'The play enacts a deconstruction of the very theatrical traditions it appears to honor.', ex5_ko = '그 연극은 자신이 기리는 것처럼 보이는 바로 그 연극적 전통들을 해체하는 것을 수행해요.'
WHERE id = 's_culture_C2_01';

UPDATE sentences SET
  ex1 = 'To speak of artistic genius is already to invoke a historically contingent set of assumptions about creativity.', ex1_ko = '예술적 천재성을 말하는 것은 이미 창의성에 대한 역사적으로 우연적인 일련의 가정들을 불러오는 것이에요.',
  ex2 = 'To speak of universal beauty is already to invoke a culturally specific aesthetic regime.', ex2_ko = '보편적 아름다움을 말하는 것은 이미 문화적으로 특수한 미학적 체제를 불러오는 것이에요.',
  ex3 = 'To speak of authentic culture is already to invoke a politics of belonging and exclusion.', ex3_ko = '진정한 문화를 말하는 것은 이미 소속과 배제의 정치를 불러오는 것이에요.',
  ex4 = 'To speak of traditional values is already to invoke an idealized and selective past.', ex4_ko = '전통적 가치를 말하는 것은 이미 이상화되고 선택적인 과거를 불러오는 것이에요.',
  ex5 = 'To speak of high culture is already to invoke a class-based hierarchy of taste.', ex5_ko = '고급 문화를 말하는 것은 이미 계급 기반의 취향 위계를 불러오는 것이에요.'
WHERE id = 's_culture_C2_02';

UPDATE sentences SET
  ex1 = 'The question is not whether the painting has a meaning, but who has the authority to interpret it.', ex1_ko = '문제는 그 그림이 의미를 가지느냐가 아니라 누가 그것을 해석할 권위를 갖느냐예요.',
  ex2 = 'The question is not whether the past exists, but who has the authority to narrate it.', ex2_ko = '문제는 과거가 존재하느냐가 아니라 누가 그것을 서술할 권위를 갖느냐예요.',
  ex3 = 'The question is not whether the canon is biased, but who has the authority to revise it.', ex3_ko = '문제는 정전이 편향됐느냐가 아니라 누가 그것을 수정할 권위를 갖느냐예요.',
  ex4 = 'The question is not whether the artifact has value, but who has the authority to claim ownership.', ex4_ko = '문제는 그 유물이 가치를 가지느냐가 아니라 누가 소유권을 주장할 권위를 갖느냐예요.',
  ex5 = 'The question is not whether language matters, but who has the authority to define its meanings.', ex5_ko = '문제는 언어가 중요하느냐가 아니라 누가 그 의미를 정의할 권위를 갖느냐예요.'
WHERE id = 's_culture_C2_03';

UPDATE sentences SET
  ex1 = 'Any attempt to fix the canon is already a political act of exclusion.', ex1_ko = '정전을 고정하려는 모든 시도는 이미 배제의 정치적 행위예요.',
  ex2 = 'Any attempt to define national culture is already a political act of boundary-making.', ex2_ko = '국가 문화를 정의하려는 모든 시도는 이미 경계 설정의 정치적 행위예요.',
  ex3 = 'Any attempt to neutralise art is already a political act in itself.', ex3_ko = '예술을 중립화하려는 모든 시도는 이미 그 자체로 정치적 행위예요.',
  ex4 = 'Any attempt to depoliticise the museum is already a political act of erasure.', ex4_ko = '박물관을 탈정치화하려는 모든 시도는 이미 삭제의 정치적 행위예요.',
  ex5 = 'Any attempt to universalise taste is already a political act of normalisation.', ex5_ko = '취향을 보편화하려는 모든 시도는 이미 정상화의 정치적 행위예요.'
WHERE id = 's_culture_C2_04';

UPDATE sentences SET
  ex1 = 'What the museum reveals is not just what was acquired but what was systematically excluded.', ex1_ko = '박물관이 드러내는 것은 단지 무엇이 획득됐느냐가 아니라 무엇이 체계적으로 배제됐느냐예요.',
  ex2 = 'What the canon reveals is not just what was celebrated but what was systematically excluded.', ex2_ko = '정전이 드러내는 것은 단지 무엇이 기려졌느냐가 아니라 무엇이 체계적으로 배제됐느냐예요.',
  ex3 = 'What the curriculum reveals is not just what was taught but what was systematically excluded.', ex3_ko = '교육 과정이 드러내는 것은 단지 무엇이 가르쳐졌느냐가 아니라 무엇이 체계적으로 배제됐느냐예요.',
  ex4 = 'What the official history reveals is not just what was preserved but what was systematically excluded.', ex4_ko = '공식 역사가 드러내는 것은 단지 무엇이 보존됐느냐가 아니라 무엇이 체계적으로 배제됐느냐예요.',
  ex5 = 'What the exhibition reveals is not just what was displayed but what was systematically excluded.', ex5_ko = '그 전시가 드러내는 것은 단지 무엇이 전시됐느냐가 아니라 무엇이 체계적으로 배제됐느냐예요.'
WHERE id = 's_culture_C2_05';

UPDATE sentences SET
  ex1 = 'The masterpiece, far from being a natural category, is a cultural construction that serves specific institutional ends.', ex1_ko = '걸작은 자연적 범주이기는커녕 특정 제도적 목적에 기여하는 문화적 구성물이에요.',
  ex2 = 'The genius, far from being a natural category, is a cultural construction that serves a Romantic ideology.', ex2_ko = '천재는 자연적 범주이기는커녕 낭만주의 이데올로기에 기여하는 문화적 구성물이에요.',
  ex3 = 'The classical, far from being a natural category, is a cultural construction that serves canonising power.', ex3_ko = '고전은 자연적 범주이기는커녕 정전화 권력에 기여하는 문화적 구성물이에요.',
  ex4 = 'Authenticity, far from being a natural category, is a cultural construction that serves market value.', ex4_ko = '진정성은 자연적 범주이기는커녕 시장 가치에 기여하는 문화적 구성물이에요.',
  ex5 = 'Originality, far from being a natural category, is a cultural construction that serves modern authorship norms.', ex5_ko = '독창성은 자연적 범주이기는커녕 근대 저자성 규범에 기여하는 문화적 구성물이에요.'
WHERE id = 's_culture_C2_06';

UPDATE sentences SET
  ex1 = 'In displacing the master narrative, the novel opens up a rhizomatic field of voices that resist hierarchical ordering.', ex1_ko = '주인 서사를 이동시킴으로써, 그 소설은 위계적 정렬에 저항하는 목소리들의 리좀적 장을 열어요.',
  ex2 = 'In displacing the centre of the canvas, the painting opens up a rhizomatic field of possibilities that resist focal closure.', ex2_ko = '캔버스의 중심을 이동시킴으로써, 그 그림은 초점적 종결에 저항하는 가능성들의 리좀적 장을 열어요.',
  ex3 = 'In displacing the protagonist, the film opens up a rhizomatic field of perspectives that resist single-viewpoint authority.', ex3_ko = '주인공을 이동시킴으로써, 그 영화는 단일 시점 권위에 저항하는 관점들의 리좀적 장을 열어요.',
  ex4 = 'In displacing chronology, the installation opens up a rhizomatic field of memories that resist temporal containment.', ex4_ko = '연대기를 이동시킴으로써, 그 설치 작품은 시간적 봉쇄에 저항하는 기억들의 리좀적 장을 열어요.',
  ex5 = 'In displacing the European frame, the exhibition opens up a rhizomatic field of histories that resist colonial ordering.', ex5_ko = '유럽적 틀을 이동시킴으로써, 그 전시는 식민지적 정렬에 저항하는 역사들의 리좀적 장을 열어요.'
WHERE id = 's_culture_C2_07';

-- ── discussion ──
-- EngCat — Discussion topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I think so too.', ex1_ko = '저도 그렇게 생각해요.',
  ex2 = 'I think so, yes.', ex2_ko = '네, 그렇게 생각해요.',
  ex3 = 'I think so, but I''m not sure.', ex3_ko = '그렇게 생각하지만 확실하진 않아요.',
  ex4 = 'I think so for many reasons.', ex4_ko = '여러 이유로 그렇게 생각해요.',
  ex5 = 'I think so too — that''s exactly right.', ex5_ko = '저도 그렇게 생각해요 — 바로 그거예요.'
WHERE id = 's_discussion_A1_01';

UPDATE sentences SET
  ex1 = 'I do not think that will work.', ex1_ko = '그건 안 될 것 같아요.',
  ex2 = 'I do not think this is fair.', ex2_ko = '이건 공정한 것 같지 않아요.',
  ex3 = 'I do not think we have time.', ex3_ko = '시간이 있을 것 같지 않아요.',
  ex4 = 'I do not think she will agree.', ex4_ko = '그녀가 동의할 것 같지 않아요.',
  ex5 = 'I do not think it''s the best option.', ex5_ko = '그게 최선의 선택이 아닌 것 같아요.'
WHERE id = 's_discussion_A1_02';

UPDATE sentences SET
  ex1 = 'What do you think about this plan?', ex1_ko = '이 계획에 대해 어떻게 생각해요?',
  ex2 = 'What do you think about the proposal?', ex2_ko = '그 제안에 대해 어떻게 생각해요?',
  ex3 = 'What do you think about her idea?', ex3_ko = '그녀의 아이디어에 대해 어떻게 생각해요?',
  ex4 = 'What do you think about meeting tomorrow?', ex4_ko = '내일 만나는 것에 대해 어떻게 생각해요?',
  ex5 = 'What do you think about a different approach?', ex5_ko = '다른 접근법에 대해 어떻게 생각해요?'
WHERE id = 's_discussion_A1_03';

UPDATE sentences SET
  ex1 = 'Maybe you are right about that.', ex1_ko = '아마도 그것에 대해서는 당신이 맞을 수도 있어요.',
  ex2 = 'Maybe you are right, let me think.', ex2_ko = '아마도 당신이 맞을 수도 있어요, 생각해 볼게요.',
  ex3 = 'Maybe you are right after all.', ex3_ko = '결국 아마도 당신이 맞을 수도 있어요.',
  ex4 = 'Maybe you are right, but I''m not sure.', ex4_ko = '아마도 당신이 맞을 수도 있지만, 확실하진 않아요.',
  ex5 = 'Maybe you are right about the timing.', ex5_ko = '시기에 대해서는 아마도 당신이 맞을 수도 있어요.'
WHERE id = 's_discussion_A1_04';

UPDATE sentences SET
  ex1 = 'I am not sure about the answer.', ex1_ko = '답에 대해 잘 모르겠어요.',
  ex2 = 'I am not sure about my decision yet.', ex2_ko = '제 결정에 대해 아직 잘 모르겠어요.',
  ex3 = 'I am not sure about the date.', ex3_ko = '날짜에 대해 잘 모르겠어요.',
  ex4 = 'I am not sure about which one to choose.', ex4_ko = '어느 것을 골라야 할지 잘 모르겠어요.',
  ex5 = 'I am not sure about this approach.', ex5_ko = '이 접근법에 대해 잘 모르겠어요.'
WHERE id = 's_discussion_A1_05';

UPDATE sentences SET
  ex1 = 'That is a good idea, thanks!', ex1_ko = '그건 좋은 생각이에요, 고마워요!',
  ex2 = 'That is a good idea for the project.', ex2_ko = '그건 프로젝트에 좋은 생각이에요.',
  ex3 = 'That is a good idea — let''s try it.', ex3_ko = '그건 좋은 생각이에요 — 한번 해봐요.',
  ex4 = 'That is a good idea, but it might be expensive.', ex4_ko = '그건 좋은 생각이지만, 비쌀 수도 있어요.',
  ex5 = 'That is a good idea worth exploring.', ex5_ko = '그건 탐구해볼 만한 좋은 생각이에요.'
WHERE id = 's_discussion_A1_06';

UPDATE sentences SET
  ex1 = 'I like your idea about the meeting.', ex1_ko = '회의에 대한 당신의 아이디어가 마음에 들어요.',
  ex2 = 'I like your idea, let''s discuss more.', ex2_ko = '당신의 아이디어가 마음에 들어요, 더 논의해 봐요.',
  ex3 = 'I like your idea for the campaign.', ex3_ko = '캠페인에 대한 당신의 아이디어가 마음에 들어요.',
  ex4 = 'I like your idea about saving money.', ex4_ko = '돈을 절약하는 당신의 아이디어가 마음에 들어요.',
  ex5 = 'I like your idea more than mine.', ex5_ko = '제 것보다 당신의 아이디어가 더 마음에 들어요.'
WHERE id = 's_discussion_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I agree with your conclusion.', ex1_ko = '당신의 결론에 동의해요.',
  ex2 = 'I agree with the main point you made.', ex2_ko = '당신이 한 주요 요점에 동의해요.',
  ex3 = 'I agree with the team''s decision.', ex3_ko = '팀의 결정에 동의해요.',
  ex4 = 'I agree with the proposal so far.', ex4_ko = '지금까지의 제안에 동의해요.',
  ex5 = 'I agree with most of what you said.', ex5_ko = '당신이 말한 대부분에 동의해요.'
WHERE id = 's_discussion_A2_01';

UPDATE sentences SET
  ex1 = 'I see your point, but the data shows otherwise.', ex1_ko = '당신의 의견은 이해하지만, 데이터는 다른 것을 보여줘요.',
  ex2 = 'I see your point, but we should also consider cost.', ex2_ko = '당신의 의견은 이해하지만, 비용도 고려해야 해요.',
  ex3 = 'I see your point, but I''d still go with option B.', ex3_ko = '당신의 의견은 이해하지만, 저는 여전히 B안을 선택할 거예요.',
  ex4 = 'I see your point, but the timing is wrong.', ex4_ko = '당신의 의견은 이해하지만, 시기가 맞지 않아요.',
  ex5 = 'I see your point, but I disagree with the priority.', ex5_ko = '당신의 의견은 이해하지만, 우선순위에 동의하지 않아요.'
WHERE id = 's_discussion_A2_02';

UPDATE sentences SET
  ex1 = 'In my opinion, we should review the budget first.', ex1_ko = '제 의견으로는 먼저 예산을 검토해야 해요.',
  ex2 = 'In my opinion, the new policy needs more thought.', ex2_ko = '제 의견으로는 새 정책에 더 많은 고민이 필요해요.',
  ex3 = 'In my opinion, transparency is essential.', ex3_ko = '제 의견으로는 투명성이 필수적이에요.',
  ex4 = 'In my opinion, we should consult the team first.', ex4_ko = '제 의견으로는 먼저 팀과 상의해야 해요.',
  ex5 = 'In my opinion, a smaller pilot would be safer.', ex5_ko = '제 의견으로는 더 작은 시범 운영이 더 안전해요.'
WHERE id = 's_discussion_A2_03';

UPDATE sentences SET
  ex1 = 'Could you explain your reason for the change?', ex1_ko = '변경에 대한 이유를 설명해 주실 수 있나요?',
  ex2 = 'Could you explain your reason for choosing this?', ex2_ko = '이걸 선택하신 이유를 설명해 주실 수 있나요?',
  ex3 = 'Could you explain your reason for the delay?', ex3_ko = '지연에 대한 이유를 설명해 주실 수 있나요?',
  ex4 = 'Could you explain your reason for opposing it?', ex4_ko = '반대하시는 이유를 설명해 주실 수 있나요?',
  ex5 = 'Could you explain your reason in more detail?', ex5_ko = '이유를 더 자세히 설명해 주실 수 있나요?'
WHERE id = 's_discussion_A2_04';

UPDATE sentences SET
  ex1 = 'I think both sides have a point worth considering.', ex1_ko = '양쪽 다 고려할 만한 일리가 있다고 생각해요.',
  ex2 = 'I think both sides have a point about safety.', ex2_ko = '안전에 대해 양쪽 다 일리가 있다고 생각해요.',
  ex3 = 'I think both sides have a point, but we must choose.', ex3_ko = '양쪽 다 일리가 있지만, 선택해야 한다고 생각해요.',
  ex4 = 'I think both sides have a point we should respect.', ex4_ko = '양쪽 다 우리가 존중해야 할 일리가 있다고 생각해요.',
  ex5 = 'I think both sides have a point that deserves time.', ex5_ko = '양쪽 다 시간을 들일 만한 일리가 있다고 생각해요.'
WHERE id = 's_discussion_A2_05';

UPDATE sentences SET
  ex1 = 'Can you give me an example of what you mean?', ex1_ko = '무슨 의미인지 예시를 들어 주실 수 있나요?',
  ex2 = 'Can you give me an example from your experience?', ex2_ko = '경험에서 예시를 들어 주실 수 있나요?',
  ex3 = 'Can you give me an example of how it works?', ex3_ko = '어떻게 작동하는지 예시를 들어 주실 수 있나요?',
  ex4 = 'Can you give me an example of a similar case?', ex4_ko = '비슷한 사례의 예시를 들어 주실 수 있나요?',
  ex5 = 'Can you give me an example to support that?', ex5_ko = '그것을 뒷받침하는 예시를 들어 주실 수 있나요?'
WHERE id = 's_discussion_A2_06';

UPDATE sentences SET
  ex1 = 'I suggest we discuss the budget first.', ex1_ko = '먼저 예산을 논의하는 게 어떨까요?',
  ex2 = 'I suggest we discuss this at the next meeting.', ex2_ko = '이걸 다음 회의에서 논의하는 게 어떨까요?',
  ex3 = 'I suggest we discuss the risks before deciding.', ex3_ko = '결정하기 전에 위험을 논의하는 게 어떨까요?',
  ex4 = 'I suggest we discuss it in smaller groups.', ex4_ko = '더 작은 그룹으로 논의하는 게 어떨까요?',
  ex5 = 'I suggest we discuss the timeline more carefully.', ex5_ko = '일정을 더 신중하게 논의하는 게 어떨까요?'
WHERE id = 's_discussion_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The evidence suggests that the second method works better.', ex1_ko = '증거에 따르면 두 번째 방법이 더 잘 작동해요.',
  ex2 = 'The evidence suggests that early intervention pays off.', ex2_ko = '증거에 따르면 조기 개입이 성과를 내요.',
  ex3 = 'The evidence suggests that we need to revise the plan.', ex3_ko = '증거에 따르면 우리는 계획을 수정해야 해요.',
  ex4 = 'The evidence suggests that the prior assumption was wrong.', ex4_ko = '증거에 따르면 이전 가정이 잘못됐어요.',
  ex5 = 'The evidence suggests that further testing is needed.', ex5_ko = '증거에 따르면 추가 검증이 필요해요.'
WHERE id = 's_discussion_B1_01';

UPDATE sentences SET
  ex1 = 'From my perspective, the timing is the real obstacle.', ex1_ko = '제 관점에서, 시기가 진짜 장애물이에요.',
  ex2 = 'From my perspective, communication is the missing piece.', ex2_ko = '제 관점에서, 의사소통이 빠진 부분이에요.',
  ex3 = 'From my perspective, the policy needs more flexibility.', ex3_ko = '제 관점에서, 정책에 더 많은 유연성이 필요해요.',
  ex4 = 'From my perspective, the team morale comes first.', ex4_ko = '제 관점에서, 팀 사기가 우선이에요.',
  ex5 = 'From my perspective, the priorities are misaligned.', ex5_ko = '제 관점에서, 우선순위가 어긋나 있어요.'
WHERE id = 's_discussion_B1_02';

UPDATE sentences SET
  ex1 = 'To elaborate on that point, let me cite a recent study.', ex1_ko = '그 부분을 더 설명하자면, 최근 연구를 인용해 볼게요.',
  ex2 = 'To elaborate on that point, consider the historical context.', ex2_ko = '그 부분을 더 설명하자면, 역사적 맥락을 생각해 봐요.',
  ex3 = 'To elaborate on that point, I''ll share a personal experience.', ex3_ko = '그 부분을 더 설명하자면, 개인적 경험을 공유할게요.',
  ex4 = 'To elaborate on that point, the data shows three trends.', ex4_ko = '그 부분을 더 설명하자면, 데이터는 세 가지 추세를 보여줘요.',
  ex5 = 'To elaborate on that point, we can break it into stages.', ex5_ko = '그 부분을 더 설명하자면, 단계로 나눠볼 수 있어요.'
WHERE id = 's_discussion_B1_03';

UPDATE sentences SET
  ex1 = 'I would argue that the long-term gains justify the short-term cost.', ex1_ko = '저는 장기적 이익이 단기적 비용을 정당화한다고 주장하겠어요.',
  ex2 = 'I would argue that flexibility is more valuable than predictability.', ex2_ko = '저는 유연성이 예측 가능성보다 더 가치 있다고 주장하겠어요.',
  ex3 = 'I would argue that quality matters more than speed here.', ex3_ko = '저는 여기서 속도보다 질이 더 중요하다고 주장하겠어요.',
  ex4 = 'I would argue that the proposal solves the symptom, not the cause.', ex4_ko = '저는 그 제안이 원인이 아니라 증상을 해결한다고 주장하겠어요.',
  ex5 = 'I would argue that the assumption itself needs revisiting.', ex5_ko = '저는 가정 자체가 재검토되어야 한다고 주장하겠어요.'
WHERE id = 's_discussion_B1_04';

UPDATE sentences SET
  ex1 = 'That is a valid concern, but the data tells a different story.', ex1_ko = '그건 타당한 우려이지만, 데이터는 다른 이야기를 들려줘요.',
  ex2 = 'That is a valid concern, but we have safeguards in place.', ex2_ko = '그건 타당한 우려이지만, 안전 장치가 있어요.',
  ex3 = 'That is a valid concern, but the upside outweighs it.', ex3_ko = '그건 타당한 우려이지만, 이점이 그보다 커요.',
  ex4 = 'That is a valid concern, but timing makes it manageable.', ex4_ko = '그건 타당한 우려이지만, 시기 덕분에 관리 가능해요.',
  ex5 = 'That is a valid concern, but our test results are promising.', ex5_ko = '그건 타당한 우려이지만, 테스트 결과가 유망해요.'
WHERE id = 's_discussion_B1_05';

UPDATE sentences SET
  ex1 = 'Could you support that claim with evidence from the report?', ex1_ko = '그 주장을 보고서의 증거로 뒷받침해 주실 수 있나요?',
  ex2 = 'Could you support that claim with evidence from studies?', ex2_ko = '그 주장을 연구의 증거로 뒷받침해 주실 수 있나요?',
  ex3 = 'Could you support that claim with evidence from past projects?', ex3_ko = '그 주장을 과거 프로젝트의 증거로 뒷받침해 주실 수 있나요?',
  ex4 = 'Could you support that claim with evidence from user data?', ex4_ko = '그 주장을 사용자 데이터의 증거로 뒷받침해 주실 수 있나요?',
  ex5 = 'Could you support that claim with evidence beyond anecdote?', ex5_ko = '그 주장을 일화를 넘어서는 증거로 뒷받침해 주실 수 있나요?'
WHERE id = 's_discussion_B1_06';

UPDATE sentences SET
  ex1 = 'Taking everything into account, the proposal makes strategic sense.', ex1_ko = '모든 것을 고려했을 때, 그 제안이 전략적으로 타당해요.',
  ex2 = 'Taking everything into account, I support option C.', ex2_ko = '모든 것을 고려했을 때, 저는 C안을 지지해요.',
  ex3 = 'Taking everything into account, postponement seems wisest.', ex3_ko = '모든 것을 고려했을 때, 연기가 가장 현명해 보여요.',
  ex4 = 'Taking everything into account, the risks remain acceptable.', ex4_ko = '모든 것을 고려했을 때, 위험은 여전히 수용 가능해요.',
  ex5 = 'Taking everything into account, a hybrid approach is best.', ex5_ko = '모든 것을 고려했을 때, 혼합 접근이 최선이에요.'
WHERE id = 's_discussion_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Your conclusion seems to rest on a flawed premise about market behavior.', ex1_ko = '당신의 결론은 시장 행동에 대한 잘못된 전제에 기반하는 것 같아요.',
  ex2 = 'Your argument seems to rest on a flawed premise about human motivation.', ex2_ko = '당신의 주장은 인간 동기에 대한 잘못된 전제에 기반하는 것 같아요.',
  ex3 = 'Your analysis seems to rest on a flawed premise about causation.', ex3_ko = '당신의 분석은 인과 관계에 대한 잘못된 전제에 기반하는 것 같아요.',
  ex4 = 'Your reasoning seems to rest on a flawed premise about scale.', ex4_ko = '당신의 추론은 규모에 대한 잘못된 전제에 기반하는 것 같아요.',
  ex5 = 'Your model seems to rest on a flawed premise about stability.', ex5_ko = '당신의 모델은 안정성에 대한 잘못된 전제에 기반하는 것 같아요.'
WHERE id = 's_discussion_B2_01';

UPDATE sentences SET
  ex1 = 'I would like to rebut that point directly, with three counter-arguments.', ex1_ko = '세 가지 반론으로 그 부분을 직접 반박하고 싶어요.',
  ex2 = 'I would like to rebut that point directly, drawing on recent data.', ex2_ko = '최근 데이터를 활용해 그 부분을 직접 반박하고 싶어요.',
  ex3 = 'I would like to rebut that point directly, before we move on.', ex3_ko = '넘어가기 전에 그 부분을 직접 반박하고 싶어요.',
  ex4 = 'I would like to rebut that point directly, given the evidence.', ex4_ko = '증거를 고려하여 그 부분을 직접 반박하고 싶어요.',
  ex5 = 'I would like to rebut that point directly, with all due respect.', ex5_ko = '존중하는 마음으로 그 부분을 직접 반박하고 싶어요.'
WHERE id = 's_discussion_B2_02';

UPDATE sentences SET
  ex1 = 'That claim lacks empirical support across the relevant literature.', ex1_ko = '그 주장에는 관련 문헌 전반에서 실증적 근거가 부족해요.',
  ex2 = 'That assertion lacks empirical support beyond anecdotal evidence.', ex2_ko = '그 단언에는 일화적 증거를 넘어서는 실증적 근거가 부족해요.',
  ex3 = 'That generalization lacks empirical support from longitudinal studies.', ex3_ko = '그 일반화는 종단 연구의 실증적 근거가 부족해요.',
  ex4 = 'That conclusion lacks empirical support from any peer-reviewed source.', ex4_ko = '그 결론은 동료 심사를 거친 어떤 자료의 실증적 근거도 부족해요.',
  ex5 = 'That hypothesis lacks empirical support given the latest data.', ex5_ko = '최신 데이터를 고려할 때 그 가설은 실증적 근거가 부족해요.'
WHERE id = 's_discussion_B2_03';

UPDATE sentences SET
  ex1 = 'We need to distinguish between correlation and causation here, otherwise the analysis collapses.', ex1_ko = '여기서 상관관계와 인과관계를 구분해야 해요, 그렇지 않으면 분석이 무너져요.',
  ex2 = 'We need to distinguish between correlation and causation in the survey results.', ex2_ko = '설문 결과에서 상관관계와 인과관계를 구분해야 해요.',
  ex3 = 'We need to distinguish between correlation and causation when policy is at stake.', ex3_ko = '정책이 걸려 있을 때 상관관계와 인과관계를 구분해야 해요.',
  ex4 = 'We need to distinguish between correlation and causation before drawing conclusions.', ex4_ko = '결론을 내리기 전에 상관관계와 인과관계를 구분해야 해요.',
  ex5 = 'We need to distinguish between correlation and causation in the news coverage.', ex5_ko = '뉴스 보도에서 상관관계와 인과관계를 구분해야 해요.'
WHERE id = 's_discussion_B2_04';

UPDATE sentences SET
  ex1 = 'While I concede that point, the structural issue remains unresolved.', ex1_ko = '그 부분은 인정하지만, 구조적 문제는 여전히 해결되지 않았어요.',
  ex2 = 'While I concede that point, our priorities should still be reconsidered.', ex2_ko = '그 부분은 인정하지만, 우리의 우선순위는 여전히 재고되어야 해요.',
  ex3 = 'While I concede that point, the long-term picture changes the calculus.', ex3_ko = '그 부분은 인정하지만, 장기적 그림이 계산을 바꿔요.',
  ex4 = 'While I concede that point, the implementation cost is prohibitive.', ex4_ko = '그 부분은 인정하지만, 실행 비용이 감당하기 어려워요.',
  ex5 = 'While I concede that point, the broader pattern still stands.', ex5_ko = '그 부분은 인정하지만, 더 큰 패턴은 여전히 유효해요.'
WHERE id = 's_discussion_B2_05';

UPDATE sentences SET
  ex1 = 'Your framing contains an implicit bias worth examining carefully.', ex1_ko = '당신의 프레이밍에는 신중하게 검토할 만한 암묵적 편향이 있어요.',
  ex2 = 'Your analysis contains an implicit bias toward short-term metrics.', ex2_ko = '당신의 분석에는 단기 지표에 대한 암묵적 편향이 있어요.',
  ex3 = 'Your selection contains an implicit bias toward certain demographics.', ex3_ko = '당신의 선택에는 특정 인구 집단에 대한 암묵적 편향이 있어요.',
  ex4 = 'Your sample contains an implicit bias that skews the result.', ex4_ko = '당신의 표본에는 결과를 왜곡하는 암묵적 편향이 있어요.',
  ex5 = 'Your model contains an implicit bias toward equilibrium assumptions.', ex5_ko = '당신의 모델에는 균형 가정에 대한 암묵적 편향이 있어요.'
WHERE id = 's_discussion_B2_06';

UPDATE sentences SET
  ex1 = 'The nuance of this issue is often lost in soundbite culture.', ex1_ko = '이 문제의 뉘앙스는 사운드바이트 문화에서 종종 사라져요.',
  ex2 = 'The nuance of this debate is often lost in headline framing.', ex2_ko = '이 논쟁의 뉘앙스는 헤드라인 프레이밍에서 종종 사라져요.',
  ex3 = 'The nuance of this discussion is often lost in partisan rhetoric.', ex3_ko = '이 토론의 뉘앙스는 당파적 수사에서 종종 사라져요.',
  ex4 = 'The nuance of this argument is often lost in oversimplified summaries.', ex4_ko = '이 주장의 뉘앙스는 지나치게 단순화된 요약에서 종종 사라져요.',
  ex5 = 'The nuance of this case is often lost when only one side is heard.', ex5_ko = '한쪽 의견만 들으면 이 사건의 뉘앙스는 종종 사라져요.'
WHERE id = 's_discussion_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The syllogism you constructed is formally valid but materially unsound given the premises.', ex1_ko = '당신이 구성한 삼단논법은 형식적으로는 타당하지만 전제를 고려할 때 내용상 불건전해요.',
  ex2 = 'The argument you advanced is formally valid but materially unsound when scrutinized.', ex2_ko = '당신이 제시한 논거는 형식적으로는 타당하지만 정밀히 검토하면 내용상 불건전해요.',
  ex3 = 'The logic you traced is formally valid but materially unsound at the empirical level.', ex3_ko = '당신이 따라간 논리는 형식적으로는 타당하지만 경험적 수준에서는 내용상 불건전해요.',
  ex4 = 'The proof you offered is formally valid but materially unsound in its assumptions.', ex4_ko = '당신이 제시한 증명은 형식적으로는 타당하지만 가정에서 내용상 불건전해요.',
  ex5 = 'The deduction you drew is formally valid but materially unsound on closer inspection.', ex5_ko = '당신이 도출한 추론은 형식적으로는 타당하지만 면밀히 검토하면 내용상 불건전해요.'
WHERE id = 's_discussion_C1_01';

UPDATE sentences SET
  ex1 = 'Let me deconstruct the underlying assumptions of that policy framework.', ex1_ko = '그 정책 틀의 근본 가정들을 해체해 볼게요.',
  ex2 = 'Let me deconstruct the underlying assumptions of that economic model.', ex2_ko = '그 경제 모델의 근본 가정들을 해체해 볼게요.',
  ex3 = 'Let me deconstruct the underlying assumptions of that historical claim.', ex3_ko = '그 역사적 주장의 근본 가정들을 해체해 볼게요.',
  ex4 = 'Let me deconstruct the underlying assumptions of that diagnostic frame.', ex4_ko = '그 진단적 틀의 근본 가정들을 해체해 볼게요.',
  ex5 = 'Let me deconstruct the underlying assumptions of that ethical position.', ex5_ko = '그 윤리적 입장의 근본 가정들을 해체해 볼게요.'
WHERE id = 's_discussion_C1_02';

UPDATE sentences SET
  ex1 = 'That reasoning commits the fallacy of false dichotomy by ignoring the middle ground.', ex1_ko = '그 추론은 중간 지점을 무시함으로써 거짓 이분법의 오류를 범하고 있어요.',
  ex2 = 'That framing commits the fallacy of false dichotomy between freedom and security.', ex2_ko = '그 프레이밍은 자유와 안전 사이의 거짓 이분법의 오류를 범하고 있어요.',
  ex3 = 'That choice commits the fallacy of false dichotomy by suppressing alternatives.', ex3_ko = '그 선택은 대안을 억압함으로써 거짓 이분법의 오류를 범하고 있어요.',
  ex4 = 'That position commits the fallacy of false dichotomy where a spectrum exists.', ex4_ko = '그 입장은 스펙트럼이 존재하는 곳에서 거짓 이분법의 오류를 범하고 있어요.',
  ex5 = 'That argument commits the fallacy of false dichotomy in pretending only two options exist.', ex5_ko = '그 주장은 두 가지 선택지만 있는 척함으로써 거짓 이분법의 오류를 범하고 있어요.'
WHERE id = 's_discussion_C1_03';

UPDATE sentences SET
  ex1 = 'I would postulate that the causal chain is more circular than linear.', ex1_ko = '인과 사슬이 선형적이기보다 더 순환적이라고 가정해 볼 수 있어요.',
  ex2 = 'I would postulate that the causal chain runs in the opposite direction.', ex2_ko = '인과 사슬이 반대 방향으로 흐른다고 가정해 볼 수 있어요.',
  ex3 = 'I would postulate that the causal chain involves a feedback loop.', ex3_ko = '인과 사슬이 피드백 루프를 포함한다고 가정해 볼 수 있어요.',
  ex4 = 'I would postulate that the causal chain is mediated by hidden variables.', ex4_ko = '인과 사슬이 숨겨진 변수에 의해 매개된다고 가정해 볼 수 있어요.',
  ex5 = 'I would postulate that the causal chain is broken at a critical node.', ex5_ko = '인과 사슬이 결정적 지점에서 끊긴다고 가정해 볼 수 있어요.'
WHERE id = 's_discussion_C1_04';

UPDATE sentences SET
  ex1 = 'Your inductive generalization requires a much larger sample to hold across populations.', ex1_ko = '당신의 귀납적 일반화는 인구 집단을 가로질러 성립하려면 훨씬 더 큰 표본이 필요해요.',
  ex2 = 'Your inductive generalization requires a much broader temporal range.', ex2_ko = '당신의 귀납적 일반화는 훨씬 더 넓은 시간 범위가 필요해요.',
  ex3 = 'Your inductive generalization requires a much more diverse data set.', ex3_ko = '당신의 귀납적 일반화는 훨씬 더 다양한 데이터셋이 필요해요.',
  ex4 = 'Your inductive generalization requires a much higher statistical power.', ex4_ko = '당신의 귀납적 일반화는 훨씬 더 높은 통계적 검정력이 필요해요.',
  ex5 = 'Your inductive generalization requires a much stronger control group.', ex5_ko = '당신의 귀납적 일반화는 훨씬 더 강력한 대조군이 필요해요.'
WHERE id = 's_discussion_C1_05';

UPDATE sentences SET
  ex1 = 'The cogency of your case depends on whether we accept that the axiom holds.', ex1_ko = '당신 논거의 설득력은 우리가 그 공리가 성립한다는 것을 받아들이느냐에 달려 있어요.',
  ex2 = 'The cogency of your case depends on whether the data are reliable.', ex2_ko = '당신 논거의 설득력은 데이터가 신뢰할 만한가에 달려 있어요.',
  ex3 = 'The cogency of your case depends on whether the analogy applies.', ex3_ko = '당신 논거의 설득력은 그 유추가 적용되는가에 달려 있어요.',
  ex4 = 'The cogency of your case depends on whether the definitions hold up.', ex4_ko = '당신 논거의 설득력은 정의가 유지되는가에 달려 있어요.',
  ex5 = 'The cogency of your case depends on whether the assumptions are warranted.', ex5_ko = '당신 논거의 설득력은 가정이 정당화되는가에 달려 있어요.'
WHERE id = 's_discussion_C1_06';

UPDATE sentences SET
  ex1 = 'Even if we grant the premise, the conclusion does not necessarily follow logically.', ex1_ko = '전제를 인정하더라도, 결론이 논리적으로 반드시 따라오는 것은 아니에요.',
  ex2 = 'Even if we grant the data, the conclusion does not necessarily follow from this method.', ex2_ko = '데이터를 인정하더라도, 결론이 이 방법으로부터 반드시 따라오는 것은 아니에요.',
  ex3 = 'Even if we grant the historical analogy, the conclusion does not necessarily follow today.', ex3_ko = '역사적 유추를 인정하더라도, 결론이 오늘날 반드시 따라오는 것은 아니에요.',
  ex4 = 'Even if we grant the survey result, the conclusion does not necessarily follow at scale.', ex4_ko = '설문 결과를 인정하더라도, 결론이 규모를 갖춰 반드시 따라오는 것은 아니에요.',
  ex5 = 'Even if we grant the precedent, the conclusion does not necessarily follow in this case.', ex5_ko = '선례를 인정하더라도, 결론이 이 사건에서 반드시 따라오는 것은 아니에요.'
WHERE id = 's_discussion_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The aporia here is that every justification of the principle presupposes it.', ex1_ko = '여기서의 아포리아는 그 원리에 대한 모든 정당화가 그 원리를 전제한다는 거예요.',
  ex2 = 'The aporia here is that any critique of reason must employ reason itself.', ex2_ko = '여기서의 아포리아는 이성에 대한 어떤 비판도 이성 자체를 사용해야 한다는 거예요.',
  ex3 = 'The aporia here is that every attempt to define authenticity instrumentalises it.', ex3_ko = '여기서의 아포리아는 진정성을 정의하려는 모든 시도가 그것을 도구화한다는 거예요.',
  ex4 = 'The aporia here is that every refusal of identity reinscribes one.', ex4_ko = '여기서의 아포리아는 정체성에 대한 모든 거부가 또 하나의 정체성을 재기입한다는 거예요.',
  ex5 = 'The aporia here is that every attempt to escape ideology operates within it.', ex5_ko = '여기서의 아포리아는 이데올로기에서 벗어나려는 모든 시도가 이데올로기 안에서 작동한다는 거예요.'
WHERE id = 's_discussion_C2_01';

UPDATE sentences SET
  ex1 = 'This argument is inherently logocentric in its privileging of explicit reasoning.', ex1_ko = '이 주장은 명시적 추론을 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.',
  ex2 = 'This framework is inherently logocentric in its privileging of textual evidence.', ex2_ko = '이 틀은 텍스트 증거를 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.',
  ex3 = 'This tradition is inherently logocentric in its privileging of analytic discourse.', ex3_ko = '이 전통은 분석적 담론을 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.',
  ex4 = 'This method is inherently logocentric in its privileging of propositional knowledge.', ex4_ko = '이 방법은 명제적 지식을 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.',
  ex5 = 'This canon is inherently logocentric in its privileging of written over oral knowledge.', ex5_ko = '이 정전은 구술 지식보다 문자 지식을 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.'
WHERE id = 's_discussion_C2_02';

UPDATE sentences SET
  ex1 = 'Without intersubjectivity, the very possibility of moral judgment collapses.', ex1_ko = '상호주관성 없이는 도덕 판단의 가능성 자체가 붕괴돼요.',
  ex2 = 'Without intersubjectivity, the very possibility of scientific consensus collapses.', ex2_ko = '상호주관성 없이는 과학적 합의의 가능성 자체가 붕괴돼요.',
  ex3 = 'Without intersubjectivity, the very possibility of legal interpretation collapses.', ex3_ko = '상호주관성 없이는 법적 해석의 가능성 자체가 붕괴돼요.',
  ex4 = 'Without intersubjectivity, the very possibility of historical understanding collapses.', ex4_ko = '상호주관성 없이는 역사적 이해의 가능성 자체가 붕괴돼요.',
  ex5 = 'Without intersubjectivity, the very possibility of artistic communication collapses.', ex5_ko = '상호주관성 없이는 예술적 소통의 가능성 자체가 붕괴돼요.'
WHERE id = 's_discussion_C2_03';

UPDATE sentences SET
  ex1 = 'From a hermeneutic standpoint, we must read the policy against its historical horizon.', ex1_ko = '해석학적 관점에서, 우리는 그 정책을 역사적 지평에 대비해서 읽어야 해요.',
  ex2 = 'From a hermeneutic standpoint, we must read the verdict within its institutional context.', ex2_ko = '해석학적 관점에서, 우리는 그 판결을 제도적 맥락 안에서 읽어야 해요.',
  ex3 = 'From a hermeneutic standpoint, we must read the doctrine through its reception history.', ex3_ko = '해석학적 관점에서, 우리는 그 교의를 수용사를 통해 읽어야 해요.',
  ex4 = 'From a hermeneutic standpoint, we must read the manifesto in light of its addressees.', ex4_ko = '해석학적 관점에서, 우리는 그 선언을 수신자들의 관점에서 읽어야 해요.',
  ex5 = 'From a hermeneutic standpoint, we must read the treaty within its diplomatic moment.', ex5_ko = '해석학적 관점에서, 우리는 그 조약을 외교적 순간 안에서 읽어야 해요.'
WHERE id = 's_discussion_C2_04';

UPDATE sentences SET
  ex1 = 'The ontological claim embedded in that argument demands further scrutiny.', ex1_ko = '그 주장에 내재된 존재론적 주장은 더 면밀한 검토가 필요해요.',
  ex2 = 'The metaphysical claim embedded in that thesis demands explicit defense.', ex2_ko = '그 명제에 내재된 형이상학적 주장은 명시적 옹호가 필요해요.',
  ex3 = 'The normative claim embedded in that framework demands open acknowledgment.', ex3_ko = '그 틀에 내재된 규범적 주장은 솔직한 인정이 필요해요.',
  ex4 = 'The teleological claim embedded in that model demands philosophical justification.', ex4_ko = '그 모델에 내재된 목적론적 주장은 철학적 정당화가 필요해요.',
  ex5 = 'The political claim embedded in that classification demands critical reflection.', ex5_ko = '그 분류에 내재된 정치적 주장은 비판적 성찰이 필요해요.'
WHERE id = 's_discussion_C2_05';

UPDATE sentences SET
  ex1 = 'That paradigmatic case cannot be used to justify a general theory of human behavior.', ex1_ko = '그 패러다임적 사례는 인간 행동의 일반 이론을 정당화하는 데 사용될 수 없어요.',
  ex2 = 'That paradigmatic case cannot be used to justify a sweeping legal precedent.', ex2_ko = '그 패러다임적 사례는 광범위한 법적 선례를 정당화하는 데 사용될 수 없어요.',
  ex3 = 'That paradigmatic case cannot be used to justify the universal applicability of the method.', ex3_ko = '그 패러다임적 사례는 그 방법의 보편적 적용성을 정당화하는 데 사용될 수 없어요.',
  ex4 = 'That paradigmatic case cannot be used to justify the extrapolation across cultures.', ex4_ko = '그 패러다임적 사례는 문화를 가로지르는 외삽을 정당화하는 데 사용될 수 없어요.',
  ex5 = 'That paradigmatic case cannot be used to justify the policy at national scale.', ex5_ko = '그 패러다임적 사례는 그 정책을 국가 규모에서 정당화하는 데 사용될 수 없어요.'
WHERE id = 's_discussion_C2_06';

UPDATE sentences SET
  ex1 = 'The praxis of this theory reveals a tension between its normative and descriptive claims.', ex1_ko = '이 이론의 실천은 규범적 주장과 서술적 주장 사이의 긴장을 드러내요.',
  ex2 = 'The praxis of this movement reveals a tension between its rhetoric and its actions.', ex2_ko = '이 운동의 실천은 수사와 행동 사이의 긴장을 드러내요.',
  ex3 = 'The praxis of this institution reveals a tension between its ideals and its operations.', ex3_ko = '이 기관의 실천은 이상과 운영 사이의 긴장을 드러내요.',
  ex4 = 'The praxis of this framework reveals a tension between universalism and particularism.', ex4_ko = '이 틀의 실천은 보편주의와 특수주의 사이의 긴장을 드러내요.',
  ex5 = 'The praxis of this ideology reveals a tension between its principles and its outcomes.', ex5_ko = '이 이데올로기의 실천은 원칙과 결과 사이의 긴장을 드러내요.'
WHERE id = 's_discussion_C2_07';

-- ── economy ──
-- EngCat — Economy topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'How much does this shirt cost?', ex1_ko = '이 셔츠 얼마예요?',
  ex2 = 'How much does this book cost?', ex2_ko = '이 책 얼마예요?',
  ex3 = 'How much does this ticket cost?', ex3_ko = '이 티켓 얼마예요?',
  ex4 = 'How much does this trip cost in total?', ex4_ko = '이 여행 총 얼마예요?',
  ex5 = 'How much does this haircut cost?', ex5_ko = '이 헤어컷 얼마예요?'
WHERE id = 's_economy_A1_01';

UPDATE sentences SET
  ex1 = 'Can I pay by card or only cash?', ex1_ko = '카드로 계산할 수 있나요, 아니면 현금만 되나요?',
  ex2 = 'Can I pay by card for this?', ex2_ko = '이거 카드로 계산할 수 있나요?',
  ex3 = 'Can I pay by card with a tip included?', ex3_ko = '팁 포함해서 카드로 계산할 수 있나요?',
  ex4 = 'Can I pay by card if it''s under ten dollars?', ex4_ko = '10달러 이하인데 카드로 계산할 수 있나요?',
  ex5 = 'Can I pay by card without a PIN?', ex5_ko = 'PIN 없이 카드로 계산할 수 있나요?'
WHERE id = 's_economy_A1_02';

UPDATE sentences SET
  ex1 = 'Do you have anything cheaper than this?', ex1_ko = '이것보다 더 저렴한 게 있나요?',
  ex2 = 'Do you have anything cheaper in this size?', ex2_ko = '이 사이즈로 더 저렴한 게 있나요?',
  ex3 = 'Do you have anything cheaper in stock?', ex3_ko = '재고로 더 저렴한 게 있나요?',
  ex4 = 'Do you have anything cheaper for kids?', ex4_ko = '아이용으로 더 저렴한 게 있나요?',
  ex5 = 'Do you have anything cheaper but similar?', ex5_ko = '비슷하지만 더 저렴한 게 있나요?'
WHERE id = 's_economy_A1_03';

UPDATE sentences SET
  ex1 = 'I''ll take it, please.', ex1_ko = '이것으로 할게요.',
  ex2 = 'I''ll take it in blue.', ex2_ko = '파란색으로 할게요.',
  ex3 = 'I''ll take it — can I pay now?', ex3_ko = '이것으로 할게요 — 지금 계산할 수 있나요?',
  ex4 = 'I''ll take it, no need to wrap it.', ex4_ko = '이것으로 할게요, 포장은 안 해도 돼요.',
  ex5 = 'I''ll take it if it''s available.', ex5_ko = '재고가 있으면 이것으로 할게요.'
WHERE id = 's_economy_A1_04';

UPDATE sentences SET
  ex1 = 'Can I get a receipt, please?', ex1_ko = '영수증 주실 수 있나요?',
  ex2 = 'Can I get a receipt for my expenses?', ex2_ko = '지출 비용용으로 영수증 주실 수 있나요?',
  ex3 = 'Can I get a receipt by email?', ex3_ko = '이메일로 영수증 받을 수 있나요?',
  ex4 = 'Can I get a receipt printed out?', ex4_ko = '영수증을 출력해 주실 수 있나요?',
  ex5 = 'Can I get a receipt with the tax breakdown?', ex5_ko = '세금 내역이 있는 영수증 받을 수 있나요?'
WHERE id = 's_economy_A1_05';

UPDATE sentences SET
  ex1 = 'Is there a discount for students?', ex1_ko = '학생 할인이 있나요?',
  ex2 = 'Is there a discount for paying in cash?', ex2_ko = '현금 결제 할인이 있나요?',
  ex3 = 'Is there a discount for senior citizens?', ex3_ko = '경로 할인이 있나요?',
  ex4 = 'Is there a discount on the second item?', ex4_ko = '두 번째 상품 할인이 있나요?',
  ex5 = 'Is there a discount for first-time customers?', ex5_ko = '첫 구매 고객 할인이 있나요?'
WHERE id = 's_economy_A1_06';

UPDATE sentences SET
  ex1 = 'Keep the change, please.', ex1_ko = '거스름돈은 괜찮아요.',
  ex2 = 'Keep the change as a tip.', ex2_ko = '거스름돈은 팁으로 가지세요.',
  ex3 = 'Keep the change, you''ve been great.', ex3_ko = '거스름돈은 괜찮아요, 정말 잘해 주셨어요.',
  ex4 = 'Keep the change — thank you for the help.', ex4_ko = '거스름돈은 괜찮아요 — 도와주셔서 감사해요.',
  ex5 = 'Keep the change, no need to count.', ex5_ko = '거스름돈은 괜찮아요, 셀 필요 없어요.'
WHERE id = 's_economy_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I''m trying to save up for a new laptop.', ex1_ko = '새 노트북을 위해 저축하려고 해요.',
  ex2 = 'I''m trying to save up for a wedding.', ex2_ko = '결혼식을 위해 저축하려고 해요.',
  ex3 = 'I''m trying to save up for a deposit on a flat.', ex3_ko = '아파트 보증금을 위해 저축하려고 해요.',
  ex4 = 'I''m trying to save up for a car.', ex4_ko = '차를 위해 저축하려고 해요.',
  ex5 = 'I''m trying to save up for emergencies.', ex5_ko = '비상시를 위해 저축하려고 해요.'
WHERE id = 's_economy_A2_01';

UPDATE sentences SET
  ex1 = 'I need to stick to my budget this week.', ex1_ko = '이번 주는 예산을 지켜야 해요.',
  ex2 = 'I need to stick to my budget after the holidays.', ex2_ko = '연휴 끝나고 예산을 지켜야 해요.',
  ex3 = 'I need to stick to my budget strictly.', ex3_ko = '예산을 엄격하게 지켜야 해요.',
  ex4 = 'I need to stick to my budget before the trip.', ex4_ko = '여행 전에 예산을 지켜야 해요.',
  ex5 = 'I need to stick to my budget for groceries.', ex5_ko = '식료품 예산을 지켜야 해요.'
WHERE id = 's_economy_A2_02';

UPDATE sentences SET
  ex1 = 'Can I apply for a loan online?', ex1_ko = '온라인에서 대출 신청을 할 수 있나요?',
  ex2 = 'Can I apply for a loan with bad credit?', ex2_ko = '신용 이력이 안 좋은데 대출 신청을 할 수 있나요?',
  ex3 = 'Can I apply for a loan in cash?', ex3_ko = '현금으로 대출 신청을 할 수 있나요?',
  ex4 = 'Can I apply for a loan as a freelancer?', ex4_ko = '프리랜서인데 대출 신청을 할 수 있나요?',
  ex5 = 'Can I apply for a loan without a guarantor?', ex5_ko = '보증인 없이 대출 신청을 할 수 있나요?'
WHERE id = 's_economy_A2_03';

UPDATE sentences SET
  ex1 = 'The grocery bill came out to over a hundred dollars.', ex1_ko = '식료품비가 100달러 넘게 나왔어요.',
  ex2 = 'The hotel bill came out to less than expected.', ex2_ko = '호텔비가 예상보다 적게 나왔어요.',
  ex3 = 'The repair cost came out to three hundred euros.', ex3_ko = '수리비가 300유로 나왔어요.',
  ex4 = 'The catering bill came out to twice the quote.', ex4_ko = '케이터링 비용이 견적의 두 배로 나왔어요.',
  ex5 = 'The phone bill came out to forty pounds this month.', ex5_ko = '이번 달 휴대폰 요금이 40파운드 나왔어요.'
WHERE id = 's_economy_A2_04';

UPDATE sentences SET
  ex1 = 'I get paid on the 15th of each month.', ex1_ko = '매달 15일에 급여를 받아요.',
  ex2 = 'I get paid weekly at this job.', ex2_ko = '이 직장에서는 주급으로 받아요.',
  ex3 = 'I get paid by the hour.', ex3_ko = '시급으로 받아요.',
  ex4 = 'I get paid into my bank account directly.', ex4_ko = '제 은행 계좌로 바로 지급받아요.',
  ex5 = 'I get paid in two installments.', ex5_ko = '두 번에 나눠 지급받아요.'
WHERE id = 's_economy_A2_05';

UPDATE sentences SET
  ex1 = 'I''m in debt from my student loans.', ex1_ko = '학자금 대출로 빚이 있어요.',
  ex2 = 'I''m in debt from medical bills.', ex2_ko = '의료비로 빚이 있어요.',
  ex3 = 'I''m in debt but paying it down quickly.', ex3_ko = '빚이 있지만 빠르게 갚고 있어요.',
  ex4 = 'I''m in debt to a friend right now.', ex4_ko = '지금 친구에게 빚이 있어요.',
  ex5 = 'I''m in debt due to unexpected expenses.', ex5_ko = '예상치 못한 지출로 빚이 있어요.'
WHERE id = 's_economy_A2_06';

UPDATE sentences SET
  ex1 = 'Could you transfer the money to my savings account?', ex1_ko = '제 저축 계좌로 돈을 이체해 주실 수 있나요?',
  ex2 = 'Could you transfer the money to my business account?', ex2_ko = '제 사업 계좌로 돈을 이체해 주실 수 있나요?',
  ex3 = 'Could you transfer the money to my account today?', ex3_ko = '오늘 제 계좌로 돈을 이체해 주실 수 있나요?',
  ex4 = 'Could you transfer the money to my account abroad?', ex4_ko = '제 해외 계좌로 돈을 이체해 주실 수 있나요?',
  ex5 = 'Could you transfer the money to my joint account?', ex5_ko = '제 공동 계좌로 돈을 이체해 주실 수 있나요?'
WHERE id = 's_economy_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Energy prices have been rising steadily since last year.', ex1_ko = '작년부터 에너지 가격이 꾸준히 상승해 왔어요.',
  ex2 = 'Wages have been rising steadily in the tech sector.', ex2_ko = '기술 부문에서 임금이 꾸준히 상승해 왔어요.',
  ex3 = 'Rent has been rising steadily in major cities.', ex3_ko = '주요 도시에서 임대료가 꾸준히 상승해 왔어요.',
  ex4 = 'Food costs have been rising steadily for households.', ex4_ko = '가계 식품비가 꾸준히 상승해 왔어요.',
  ex5 = 'Healthcare premiums have been rising steadily each year.', ex5_ko = '의료보험료가 매년 꾸준히 상승해 왔어요.'
WHERE id = 's_economy_B1_01';

UPDATE sentences SET
  ex1 = 'Youth unemployment dropped to its lowest level in fifteen years.', ex1_ko = '청년 실업률이 15년 만에 최저 수준으로 떨어졌어요.',
  ex2 = 'Inflation dropped to its lowest level in two years.', ex2_ko = '인플레이션이 2년 만에 최저 수준으로 떨어졌어요.',
  ex3 = 'Mortgage applications dropped to their lowest level in a decade.', ex3_ko = '모기지 신청이 10년 만에 최저 수준으로 떨어졌어요.',
  ex4 = 'Consumer confidence dropped to its lowest level since the recession.', ex4_ko = '소비자 신뢰가 경기침체 이후 최저 수준으로 떨어졌어요.',
  ex5 = 'Manufacturing output dropped to its lowest level in five years.', ex5_ko = '제조업 생산이 5년 만에 최저 수준으로 떨어졌어요.'
WHERE id = 's_economy_B1_02';

UPDATE sentences SET
  ex1 = 'The central bank is expected to cut interest rates next quarter.', ex1_ko = '중앙은행이 다음 분기에 금리를 인하할 것으로 예상돼요.',
  ex2 = 'The economy is expected to slow down in the second half.', ex2_ko = '경제가 하반기에 둔화될 것으로 예상돼요.',
  ex3 = 'Housing prices are expected to stabilize by year-end.', ex3_ko = '주택 가격이 연말까지 안정될 것으로 예상돼요.',
  ex4 = 'Oil prices are expected to climb amid supply concerns.', ex4_ko = '공급 우려 속에서 유가가 오를 것으로 예상돼요.',
  ex5 = 'The market is expected to react cautiously to the report.', ex5_ko = '시장이 보고서에 신중하게 반응할 것으로 예상돼요.'
WHERE id = 's_economy_B1_03';

UPDATE sentences SET
  ex1 = 'Exports grew by five percent compared to last year.', ex1_ko = '수출이 작년 대비 5% 성장했어요.',
  ex2 = 'Tourism revenue rose sharply compared to last year.', ex2_ko = '관광 수익이 작년 대비 급격히 상승했어요.',
  ex3 = 'Household debt increased compared to last year.', ex3_ko = '가계 부채가 작년 대비 증가했어요.',
  ex4 = 'Productivity gained ground compared to last year.', ex4_ko = '생산성이 작년 대비 향상됐어요.',
  ex5 = 'Retail sales fell slightly compared to last year.', ex5_ko = '소매 판매가 작년 대비 약간 하락했어요.'
WHERE id = 's_economy_B1_04';

UPDATE sentences SET
  ex1 = 'There is a growing concern about household debt levels.', ex1_ko = '가계 부채 수준에 대한 우려가 커지고 있어요.',
  ex2 = 'There is a growing concern about youth employment prospects.', ex2_ko = '청년 고용 전망에 대한 우려가 커지고 있어요.',
  ex3 = 'There is a growing concern about supply chain disruptions.', ex3_ko = '공급망 중단에 대한 우려가 커지고 있어요.',
  ex4 = 'There is a growing concern about rising healthcare costs.', ex4_ko = '의료비 상승에 대한 우려가 커지고 있어요.',
  ex5 = 'There is a growing concern about pension sustainability.', ex5_ko = '연금 지속 가능성에 대한 우려가 커지고 있어요.'
WHERE id = 's_economy_B1_05';

UPDATE sentences SET
  ex1 = 'The labor market is showing signs of recovery.', ex1_ko = '노동 시장이 회복 조짐을 보이고 있어요.',
  ex2 = 'The housing sector is showing signs of recovery.', ex2_ko = '주택 부문이 회복 조짐을 보이고 있어요.',
  ex3 = 'Manufacturing is showing signs of recovery after a slow year.', ex3_ko = '제조업이 부진한 한 해 끝에 회복 조짐을 보이고 있어요.',
  ex4 = 'Consumer demand is showing signs of recovery this quarter.', ex4_ko = '이번 분기에 소비자 수요가 회복 조짐을 보이고 있어요.',
  ex5 = 'Tourism is showing signs of recovery after the pandemic.', ex5_ko = '관광이 팬데믹 이후 회복 조짐을 보이고 있어요.'
WHERE id = 's_economy_B1_06';

UPDATE sentences SET
  ex1 = 'Consumer spending has slowed down significantly amid inflation worries.', ex1_ko = '소비자 지출이 인플레이션 우려 속에서 크게 둔화됐어요.',
  ex2 = 'Investment has slowed down significantly compared to last year.', ex2_ko = '투자가 작년 대비 크게 둔화됐어요.',
  ex3 = 'Hiring has slowed down significantly across the industry.', ex3_ko = '업계 전반에서 채용이 크게 둔화됐어요.',
  ex4 = 'Construction has slowed down significantly in major markets.', ex4_ko = '주요 시장에서 건설업이 크게 둔화됐어요.',
  ex5 = 'Manufacturing output has slowed down significantly this year.', ex5_ko = '올해 제조업 생산이 크게 둔화됐어요.'
WHERE id = 's_economy_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Diversifying your portfolio is key to weathering market downturns.', ex1_ko = '포트폴리오를 다양화하는 것이 시장 침체를 견디는 데 핵심이에요.',
  ex2 = 'Investing in index funds is key to building long-term wealth.', ex2_ko = '인덱스 펀드에 투자하는 것이 장기 자산 형성의 핵심이에요.',
  ex3 = 'Maintaining cash reserves is key to managing uncertainty.', ex3_ko = '현금 보유를 유지하는 것이 불확실성 관리의 핵심이에요.',
  ex4 = 'Rebalancing your portfolio is key to managing risk exposure.', ex4_ko = '포트폴리오를 재조정하는 것이 위험 노출 관리의 핵심이에요.',
  ex5 = 'Reviewing fees regularly is key to maximizing returns.', ex5_ko = '수수료를 정기적으로 검토하는 것이 수익률 극대화의 핵심이에요.'
WHERE id = 's_economy_B2_01';

UPDATE sentences SET
  ex1 = 'The market correction was sharper than analysts had anticipated.', ex1_ko = '시장 조정이 애널리스트들의 예상보다 훨씬 가파르게 나타났어요.',
  ex2 = 'The currency drop was sharper than economists had predicted.', ex2_ko = '환율 하락이 경제학자들의 예상보다 훨씬 가파르게 나타났어요.',
  ex3 = 'The wage growth was sharper than employers had expected.', ex3_ko = '임금 상승이 고용주들의 예상보다 훨씬 가파르게 나타났어요.',
  ex4 = 'The slowdown was sharper than policymakers had projected.', ex4_ko = '경기 둔화가 정책 결정자들의 예상보다 훨씬 가파르게 나타났어요.',
  ex5 = 'The recovery was sharper than central bankers had forecast.', ex5_ko = '경기 회복이 중앙은행 관계자들의 예상보다 훨씬 가파르게 나타났어요.'
WHERE id = 's_economy_B2_02';

UPDATE sentences SET
  ex1 = 'Credit dried up quickly as banks tightened lending standards.', ex1_ko = '은행들이 대출 기준을 강화하면서 신용이 빠르게 말랐어요.',
  ex2 = 'Funding dried up quickly when investor confidence collapsed.', ex2_ko = '투자자 신뢰가 무너지자 자금이 빠르게 말랐어요.',
  ex3 = 'Demand dried up quickly amid the economic shock.', ex3_ko = '경제 충격 속에서 수요가 빠르게 말랐어요.',
  ex4 = 'Job offers dried up quickly during the hiring freeze.', ex4_ko = '채용 동결 기간 동안 일자리 제안이 빠르게 말랐어요.',
  ex5 = 'Venture capital dried up quickly after the sector pullback.', ex5_ko = '업계 위축 이후 벤처 자본이 빠르게 말랐어요.'
WHERE id = 's_economy_B2_03';

UPDATE sentences SET
  ex1 = 'Defensive stocks tend to perform well in volatile markets.', ex1_ko = '방어주는 변동성이 높은 시장에서 좋은 성과를 내는 경향이 있어요.',
  ex2 = 'Gold tends to perform well in inflationary environments.', ex2_ko = '금은 인플레이션 환경에서 좋은 성과를 내는 경향이 있어요.',
  ex3 = 'Small-cap stocks tend to perform well in expansionary cycles.', ex3_ko = '소형주는 확장 국면에서 좋은 성과를 내는 경향이 있어요.',
  ex4 = 'Treasury bonds tend to perform well in flight-to-safety moments.', ex4_ko = '국채는 안전 자산 선호 시기에 좋은 성과를 내는 경향이 있어요.',
  ex5 = 'Tech stocks tend to perform well in low-rate environments.', ex5_ko = '기술주는 저금리 환경에서 좋은 성과를 내는 경향이 있어요.'
WHERE id = 's_economy_B2_04';

UPDATE sentences SET
  ex1 = 'Stock prices fell sharply following the central bank''s rate hike.', ex1_ko = '중앙은행 금리 인상 이후 주가가 급격히 하락했어요.',
  ex2 = 'The currency weakened following the disappointing GDP figure.', ex2_ko = '실망스러운 GDP 수치 이후 통화가 약세를 보였어요.',
  ex3 = 'Oil prices rose sharply following supply cut announcements.', ex3_ko = '공급 감축 발표 이후 유가가 급격히 상승했어요.',
  ex4 = 'Tech stocks rallied following the earnings beat.', ex4_ko = '실적 호조 이후 기술주가 급등했어요.',
  ex5 = 'Bond yields jumped sharply following the inflation print.', ex5_ko = '인플레이션 수치 발표 이후 채권 수익률이 급격히 뛰었어요.'
WHERE id = 's_economy_B2_05';

UPDATE sentences SET
  ex1 = 'Investors are fleeing to safe-haven assets amid geopolitical tension.', ex1_ko = '지정학적 긴장 속에서 투자자들이 안전 자산으로 이동하고 있어요.',
  ex2 = 'Investors are fleeing to bonds amid recession fears.', ex2_ko = '경기 침체 우려 속에서 투자자들이 채권으로 이동하고 있어요.',
  ex3 = 'Investors are fleeing to gold amid currency volatility.', ex3_ko = '환율 변동성 속에서 투자자들이 금으로 이동하고 있어요.',
  ex4 = 'Investors are fleeing to cash amid market uncertainty.', ex4_ko = '시장 불확실성 속에서 투자자들이 현금으로 이동하고 있어요.',
  ex5 = 'Investors are fleeing to defensive sectors amid the sell-off.', ex5_ko = '매도세 속에서 투자자들이 방어 섹터로 이동하고 있어요.'
WHERE id = 's_economy_B2_06';

UPDATE sentences SET
  ex1 = 'The equity market rebounded after the initial panic selling.', ex1_ko = '초기 패닉 매도 이후 주식 시장이 반등했어요.',
  ex2 = 'The bond market rebounded after the initial yield spike.', ex2_ko = '초기 수익률 급등 이후 채권 시장이 반등했어요.',
  ex3 = 'The currency rebounded after the initial sharp decline.', ex3_ko = '초기 급락 이후 통화가 반등했어요.',
  ex4 = 'The housing market rebounded after the initial correction.', ex4_ko = '초기 조정 이후 주택 시장이 반등했어요.',
  ex5 = 'The crypto market rebounded after the initial crash.', ex5_ko = '초기 폭락 이후 암호화폐 시장이 반등했어요.'
WHERE id = 's_economy_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Quantitative easing has been criticized for inflating asset prices rather than stimulating the real economy.', ex1_ko = '양적 완화는 실물 경제를 자극하기보다 자산 가격을 부풀린다는 비판을 받아왔어요.',
  ex2 = 'Tax incentives have been criticized for benefiting corporations more than workers.', ex2_ko = '세제 혜택은 근로자보다 기업에 더 이익을 준다는 비판을 받아왔어요.',
  ex3 = 'The new regulation has been criticized for stifling innovation in fintech.', ex3_ko = '새 규제는 핀테크 혁신을 억압한다는 비판을 받아왔어요.',
  ex4 = 'Trade liberalization has been criticized for displacing local industries.', ex4_ko = '무역 자유화는 지역 산업을 밀어낸다는 비판을 받아왔어요.',
  ex5 = 'Capital controls have been criticized for distorting price discovery.', ex5_ko = '자본 통제는 가격 발견을 왜곡한다는 비판을 받아왔어요.'
WHERE id = 's_economy_C1_01';

UPDATE sentences SET
  ex1 = 'Deregulation of the energy sector is often linked to price volatility.', ex1_ko = '에너지 부문 규제 완화는 종종 가격 변동성과 연결지어져요.',
  ex2 = 'Currency devaluation is often linked to export competitiveness.', ex2_ko = '통화 평가절하는 종종 수출 경쟁력과 연결지어져요.',
  ex3 = 'Aggressive monetary policy is often linked to asset bubbles.', ex3_ko = '공격적 통화 정책은 종종 자산 거품과 연결지어져요.',
  ex4 = 'Income inequality is often linked to political polarization.', ex4_ko = '소득 불평등은 종종 정치 양극화와 연결지어져요.',
  ex5 = 'Globalization is often linked to wage stagnation in developed economies.', ex5_ko = '세계화는 종종 선진 경제의 임금 정체와 연결지어져요.'
WHERE id = 's_economy_C1_02';

UPDATE sentences SET
  ex1 = 'The government''s tax reform has faced strong opposition from civil society groups.', ex1_ko = '정부의 세제 개혁은 시민 사회 단체의 강한 반대에 직면했어요.',
  ex2 = 'The pension overhaul has faced strong opposition from retirees.', ex2_ko = '연금 개편은 은퇴자들의 강한 반대에 직면했어요.',
  ex3 = 'The proposed wage cut has faced strong opposition from unions.', ex3_ko = '제안된 임금 삭감은 노조의 강한 반대에 직면했어요.',
  ex4 = 'The austerity package has faced strong opposition from regional governments.', ex4_ko = '긴축 패키지는 지방 정부의 강한 반대에 직면했어요.',
  ex5 = 'The deregulation plan has faced strong opposition from consumer advocates.', ex5_ko = '규제 완화 계획은 소비자 옹호자들의 강한 반대에 직면했어요.'
WHERE id = 's_economy_C1_03';

UPDATE sentences SET
  ex1 = 'Industrial subsidies may protect domestic firms but ultimately discourage innovation.', ex1_ko = '산업 보조금은 국내 기업을 보호할 수 있지만 결국 혁신을 저해해요.',
  ex2 = 'Price controls may ease short-term pain but ultimately worsen shortages.', ex2_ko = '가격 통제는 단기 고통을 완화할 수 있지만 결국 부족을 심화해요.',
  ex3 = 'Export bans may stabilize local prices but ultimately damage trading relationships.', ex3_ko = '수출 금지는 국내 가격을 안정시킬 수 있지만 결국 무역 관계를 손상해요.',
  ex4 = 'Aggressive rate cuts may stimulate growth but ultimately fuel inflation.', ex4_ko = '공격적 금리 인하는 성장을 자극할 수 있지만 결국 인플레이션을 부추겨요.',
  ex5 = 'Capital injections may rescue failing firms but ultimately distort market discipline.', ex5_ko = '자본 투입은 부실 기업을 구할 수 있지만 결국 시장 규율을 왜곡해요.'
WHERE id = 's_economy_C1_04';

UPDATE sentences SET
  ex1 = 'Game theory suggests that cooperation can emerge even among self-interested actors.', ex1_ko = '게임 이론은 자기 이익을 추구하는 행위자들 사이에서도 협력이 출현할 수 있다고 주장해요.',
  ex2 = 'Behavioral economics theory suggests that humans systematically deviate from rational choice.', ex2_ko = '행동경제학 이론은 인간이 합리적 선택에서 체계적으로 벗어난다고 주장해요.',
  ex3 = 'Modern monetary theory suggests that sovereign currency issuers cannot involuntarily default.', ex3_ko = '현대화폐이론은 주권 통화 발행국이 비자발적으로 채무 불이행할 수 없다고 주장해요.',
  ex4 = 'Endogenous growth theory suggests that innovation is driven by deliberate investment.', ex4_ko = '내생적 성장 이론은 혁신이 의도적 투자에 의해 추동된다고 주장해요.',
  ex5 = 'Public choice theory suggests that politicians often act in their own self-interest.', ex5_ko = '공공선택 이론은 정치인들이 종종 자기 이익에 따라 행동한다고 주장해요.'
WHERE id = 's_economy_C1_05';

UPDATE sentences SET
  ex1 = 'Excessive reliance on agricultural subsidies can distort market signals for crop planning.', ex1_ko = '농업 보조금에 대한 과도한 의존은 작물 재배 계획의 시장 신호를 왜곡할 수 있어요.',
  ex2 = 'Excessive reliance on export rebates can distort market signals for domestic producers.', ex2_ko = '수출 환급금에 대한 과도한 의존은 국내 생산자의 시장 신호를 왜곡할 수 있어요.',
  ex3 = 'Excessive reliance on price floors can distort market signals to consumers.', ex3_ko = '가격 하한제에 대한 과도한 의존은 소비자에게 가는 시장 신호를 왜곡할 수 있어요.',
  ex4 = 'Excessive reliance on housing tax credits can distort market signals in real estate.', ex4_ko = '주택 세액공제에 대한 과도한 의존은 부동산의 시장 신호를 왜곡할 수 있어요.',
  ex5 = 'Excessive reliance on cheap credit can distort market signals about risk.', ex5_ko = '값싼 신용에 대한 과도한 의존은 위험에 대한 시장 신호를 왜곡할 수 있어요.'
WHERE id = 's_economy_C1_06';

UPDATE sentences SET
  ex1 = 'Moral hazard arises when borrowers are insulated from the consequences of default.', ex1_ko = '도덕적 해이는 차입자가 채무 불이행의 결과로부터 보호받을 때 발생해요.',
  ex2 = 'Moral hazard arises when banks are insulated from the consequences of risky lending.', ex2_ko = '도덕적 해이는 은행이 위험한 대출의 결과로부터 보호받을 때 발생해요.',
  ex3 = 'Moral hazard arises when firms are insulated from the consequences of poor management.', ex3_ko = '도덕적 해이는 기업이 부실 경영의 결과로부터 보호받을 때 발생해요.',
  ex4 = 'Moral hazard arises when insurers are insulated from the consequences of underwriting.', ex4_ko = '도덕적 해이는 보험사가 인수 결정의 결과로부터 보호받을 때 발생해요.',
  ex5 = 'Moral hazard arises when traders are insulated from the consequences of speculative loss.', ex5_ko = '도덕적 해이는 트레이더가 투기적 손실의 결과로부터 보호받을 때 발생해요.'
WHERE id = 's_economy_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Econometric models rely on instrumental variables to identify causal relationships between policy and outcomes.', ex1_ko = '계량경제 모델은 정책과 결과 간의 인과 관계를 파악하기 위해 도구변수에 의존해요.',
  ex2 = 'Econometric models rely on natural experiments to identify causal relationships between schooling and earnings.', ex2_ko = '계량경제 모델은 교육과 소득 간의 인과 관계를 파악하기 위해 자연 실험에 의존해요.',
  ex3 = 'Econometric models rely on difference-in-differences to identify causal relationships between minimum wage and employment.', ex3_ko = '계량경제 모델은 최저임금과 고용 간의 인과 관계를 파악하기 위해 이중차분법에 의존해요.',
  ex4 = 'Econometric models rely on regression discontinuity to identify causal relationships between thresholds and behavior.', ex4_ko = '계량경제 모델은 문턱과 행동 간의 인과 관계를 파악하기 위해 회귀 불연속에 의존해요.',
  ex5 = 'Econometric models rely on randomized controlled trials to identify causal relationships between interventions and outcomes.', ex5_ko = '계량경제 모델은 개입과 결과 간의 인과 관계를 파악하기 위해 무작위 대조군 실험에 의존해요.'
WHERE id = 's_economy_C2_01';

UPDATE sentences SET
  ex1 = 'The securitization of subprime loans obscured the underlying credit risk from rating agencies.', ex1_ko = '서브프라임 대출의 유동화는 신용평가 기관으로부터 내재된 신용 위험을 가렸어요.',
  ex2 = 'Complex derivatives obscured the underlying credit risk from regulators.', ex2_ko = '복잡한 파생상품은 규제 당국으로부터 내재된 신용 위험을 가렸어요.',
  ex3 = 'Off-balance-sheet vehicles obscured the underlying credit risk from shareholders.', ex3_ko = '부외 거래 기구는 주주로부터 내재된 신용 위험을 가렸어요.',
  ex4 = 'Cross-border tranching obscured the underlying credit risk from foreign investors.', ex4_ko = '국경 간 트랜치화는 외국 투자자로부터 내재된 신용 위험을 가렸어요.',
  ex5 = 'Synthetic structures obscured the underlying credit risk from counterparties.', ex5_ko = '합성 구조는 거래상대방으로부터 내재된 신용 위험을 가렸어요.'
WHERE id = 's_economy_C2_02';

UPDATE sentences SET
  ex1 = 'Rent-seeking behavior undermines allocative efficiency by diverting capital toward political influence.', ex1_ko = '지대추구 행동은 자본을 정치적 영향력으로 전환시켜 배분 효율성을 훼손해요.',
  ex2 = 'Cronyism undermines allocative efficiency by privileging insider firms over more productive ones.', ex2_ko = '연고주의는 더 생산적인 기업보다 내부자 기업에 특권을 주어 배분 효율성을 훼손해요.',
  ex3 = 'Regulatory capture undermines allocative efficiency by tilting rules toward incumbents.', ex3_ko = '규제 포획은 규칙을 기존 사업자에게 기울여 배분 효율성을 훼손해요.',
  ex4 = 'Corruption undermines allocative efficiency by routing resources through informal channels.', ex4_ko = '부패는 자원을 비공식 경로로 보내 배분 효율성을 훼손해요.',
  ex5 = 'Monopolistic practices undermine allocative efficiency by suppressing competitive pressure.', ex5_ko = '독점적 관행은 경쟁 압력을 억압하여 배분 효율성을 훼손해요.'
WHERE id = 's_economy_C2_03';

UPDATE sentences SET
  ex1 = 'Post-Keynesian economists challenge the assumption that money is neutral in the long run.', ex1_ko = '포스트 케인지언 경제학자들은 화폐가 장기적으로 중립적이라는 가정에 도전해요.',
  ex2 = 'Feminist economists challenge the assumption that unpaid care work has no economic value.', ex2_ko = '페미니스트 경제학자들은 무급 돌봄 노동이 경제적 가치가 없다는 가정에 도전해요.',
  ex3 = 'Ecological economists challenge the assumption that GDP growth is a sufficient welfare metric.', ex3_ko = '생태경제학자들은 GDP 성장이 충분한 복지 지표라는 가정에 도전해요.',
  ex4 = 'Marxist economists challenge the assumption that capital and labor share interests equally.', ex4_ko = '마르크스주의 경제학자들은 자본과 노동이 이해관계를 동등하게 공유한다는 가정에 도전해요.',
  ex5 = 'Behavioral economists challenge the assumption that consumers always maximize expected utility.', ex5_ko = '행동경제학자들은 소비자가 항상 기대 효용을 극대화한다는 가정에 도전해요.'
WHERE id = 's_economy_C2_04';

UPDATE sentences SET
  ex1 = 'Asymmetric information between insurers and policyholders leads to adverse selection in health markets.', ex1_ko = '보험사와 가입자 간의 정보 비대칭은 건강 시장에서 역선택으로 이어져요.',
  ex2 = 'Asymmetric information between lenders and borrowers leads to adverse selection in credit markets.', ex2_ko = '대출 기관과 차입자 간의 정보 비대칭은 신용 시장에서 역선택으로 이어져요.',
  ex3 = 'Asymmetric information between used-car sellers and buyers leads to adverse selection that lowers prices.', ex3_ko = '중고차 판매자와 구매자 간의 정보 비대칭은 가격을 낮추는 역선택으로 이어져요.',
  ex4 = 'Asymmetric information between employers and applicants leads to adverse selection in labor markets.', ex4_ko = '고용주와 지원자 간의 정보 비대칭은 노동 시장에서 역선택으로 이어져요.',
  ex5 = 'Asymmetric information between corporate insiders and the public leads to adverse selection in equity issuance.', ex5_ko = '기업 내부자와 대중 간의 정보 비대칭은 주식 발행에서 역선택으로 이어져요.'
WHERE id = 's_economy_C2_05';

UPDATE sentences SET
  ex1 = 'The Lorenz curve measures the extent to which actual income distribution departs from perfect equality.', ex1_ko = '로렌츠 곡선은 실제 소득 분배가 완전한 평등에서 얼마나 벗어나는지를 측정해요.',
  ex2 = 'The misery index measures the extent to which inflation and unemployment burden households.', ex2_ko = '비참 지수는 인플레이션과 실업이 가계에 얼마나 부담을 주는지를 측정해요.',
  ex3 = 'The price-to-rent ratio measures the extent to which housing prices outpace rental fundamentals.', ex3_ko = '가격 대 임대 비율은 주택 가격이 임대 펀더멘털을 얼마나 앞서가는지를 측정해요.',
  ex4 = 'The dependency ratio measures the extent to which workers must support non-working populations.', ex4_ko = '부양비는 근로자가 비근로 인구를 얼마나 부양해야 하는지를 측정해요.',
  ex5 = 'The output gap measures the extent to which actual production falls short of potential.', ex5_ko = '생산 격차는 실제 생산이 잠재 생산에 얼마나 못 미치는지를 측정해요.'
WHERE id = 's_economy_C2_06';

UPDATE sentences SET
  ex1 = 'A liquidity trap renders conventional monetary policy ineffective as households hoard cash regardless of rates.', ex1_ko = '유동성 함정은 가계가 금리와 상관없이 현금을 비축하면서 기존 통화 정책을 무효화해요.',
  ex2 = 'Hyperinflation renders conventional fiscal policy ineffective as price expectations destabilize completely.', ex2_ko = '하이퍼인플레이션은 가격 기대가 완전히 불안정화되면서 기존 재정 정책을 무효화해요.',
  ex3 = 'A debt overhang renders conventional stimulus ineffective as households prioritize deleveraging.', ex3_ko = '부채 누적은 가계가 부채 축소를 우선시하면서 기존 경기 부양책을 무효화해요.',
  ex4 = 'A deflationary spiral renders conventional rate policy ineffective as the zero lower bound binds.', ex4_ko = '디플레이션 악순환은 제로 금리 하한이 작용하면서 기존 금리 정책을 무효화해요.',
  ex5 = 'A sudden stop in capital flows renders conventional crisis tools ineffective in emerging markets.', ex5_ko = '자본 흐름의 갑작스러운 중단은 신흥 시장에서 기존 위기 대응 도구를 무효화해요.'
WHERE id = 's_economy_C2_07';

-- ── humanities ──
-- EngCat — Humanities topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Have you read any good books lately?', ex1_ko = '최근에 좋은 책 읽었어요?',
  ex2 = 'Have you read any good novels lately?', ex2_ko = '최근에 좋은 소설 읽었어요?',
  ex3 = 'Have you read any good biographies lately?', ex3_ko = '최근에 좋은 전기를 읽었어요?',
  ex4 = 'Have you read any good short stories lately?', ex4_ko = '최근에 좋은 단편 소설 읽었어요?',
  ex5 = 'Have you read any good poems lately?', ex5_ko = '최근에 좋은 시 읽었어요?'
WHERE id = 's_humanities_A1_01';

UPDATE sentences SET
  ex1 = 'What is your favorite book of all time?', ex1_ko = '인생 최고의 책이 뭐예요?',
  ex2 = 'What is your favorite book from childhood?', ex2_ko = '어린 시절 가장 좋아하는 책이 뭐예요?',
  ex3 = 'What is your favorite book this year?', ex3_ko = '올해 가장 좋아하는 책이 뭐예요?',
  ex4 = 'What is your favorite book to reread?', ex4_ko = '다시 읽고 싶은 가장 좋아하는 책이 뭐예요?',
  ex5 = 'What is your favorite book by that author?', ex5_ko = '그 작가의 책 중 가장 좋아하는 책이 뭐예요?'
WHERE id = 's_humanities_A1_02';

UPDATE sentences SET
  ex1 = 'I really like this story''s ending.', ex1_ko = '이 이야기의 결말이 정말 좋아요.',
  ex2 = 'I really like this story about friendship.', ex2_ko = '우정에 관한 이 이야기가 정말 좋아요.',
  ex3 = 'I really like this story because it''s funny.', ex3_ko = '재미있어서 이 이야기가 정말 좋아요.',
  ex4 = 'I really like this story''s main character.', ex4_ko = '이 이야기의 주인공이 정말 좋아요.',
  ex5 = 'I really like this story, can you read more?', ex5_ko = '이 이야기 정말 좋아요, 더 읽어 주실 수 있어요?'
WHERE id = 's_humanities_A1_03';

UPDATE sentences SET
  ex1 = 'Can you tell me the name of the book you''re reading?', ex1_ko = '읽고 계신 책 제목을 알려줄 수 있어요?',
  ex2 = 'Can you tell me the name of the author?', ex2_ko = '저자 이름을 알려줄 수 있어요?',
  ex3 = 'Can you tell me the name of the translator?', ex3_ko = '번역자 이름을 알려줄 수 있어요?',
  ex4 = 'Can you tell me the name of the main character?', ex4_ko = '주인공 이름을 알려줄 수 있어요?',
  ex5 = 'Can you tell me the name of the publisher?', ex5_ko = '출판사 이름을 알려줄 수 있어요?'
WHERE id = 's_humanities_A1_04';

UPDATE sentences SET
  ex1 = 'I want to read more books in English this year.', ex1_ko = '올해는 영어로 된 책을 더 읽고 싶어요.',
  ex2 = 'I want to read more books in Korean for practice.', ex2_ko = '연습을 위해 한국어로 된 책을 더 읽고 싶어요.',
  ex3 = 'I want to read more books about history.', ex3_ko = '역사에 관한 책을 더 읽고 싶어요.',
  ex4 = 'I want to read more books by Asian authors.', ex4_ko = '아시아 작가들의 책을 더 읽고 싶어요.',
  ex5 = 'I want to read more books before bed.', ex5_ko = '자기 전에 책을 더 읽고 싶어요.'
WHERE id = 's_humanities_A1_05';

UPDATE sentences SET
  ex1 = 'This poem is very beautiful.', ex1_ko = '이 시는 정말 아름다워요.',
  ex2 = 'This poem is very sad.', ex2_ko = '이 시는 정말 슬퍼요.',
  ex3 = 'This poem is very short but powerful.', ex3_ko = '이 시는 짧지만 정말 강렬해요.',
  ex4 = 'This poem is very hard to understand.', ex4_ko = '이 시는 정말 이해하기 어려워요.',
  ex5 = 'This poem is very famous in Korea.', ex5_ko = '이 시는 한국에서 정말 유명해요.'
WHERE id = 's_humanities_A1_06';

UPDATE sentences SET
  ex1 = 'Do you like to read stories at night?', ex1_ko = '밤에 이야기 읽는 걸 좋아하세요?',
  ex2 = 'Do you like to read stories with happy endings?', ex2_ko = '해피 엔딩 이야기 읽는 걸 좋아하세요?',
  ex3 = 'Do you like to read stories aloud?', ex3_ko = '소리 내어 이야기 읽는 걸 좋아하세요?',
  ex4 = 'Do you like to read stories to children?', ex4_ko = '아이들에게 이야기 읽어 주는 걸 좋아하세요?',
  ex5 = 'Do you like to read stories in audio book form?', ex5_ko = '오디오북 형태로 이야기 듣는 걸 좋아하세요?'
WHERE id = 's_humanities_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Who is your favorite author and why do you like them?', ex1_ko = '가장 좋아하는 작가는 누구이고 왜 좋아하세요?',
  ex2 = 'Who is your favorite poet and why do they inspire you?', ex2_ko = '가장 좋아하는 시인은 누구이고 왜 영감을 주나요?',
  ex3 = 'Who is your favorite novelist and why have you read them?', ex3_ko = '가장 좋아하는 소설가는 누구이고 왜 그분 작품을 읽었나요?',
  ex4 = 'Who is your favorite playwright and why?', ex4_ko = '가장 좋아하는 극작가는 누구이고 왜 그런가요?',
  ex5 = 'Who is your favorite translator and why do you trust their work?', ex5_ko = '가장 좋아하는 번역자는 누구이고 왜 그분 작업을 신뢰하나요?'
WHERE id = 's_humanities_A2_01';

UPDATE sentences SET
  ex1 = 'I enjoy reading mystery novels in winter.', ex1_ko = '저는 겨울에 추리 소설 읽는 걸 즐겨요.',
  ex2 = 'I enjoy reading historical biographies.', ex2_ko = '저는 역사 전기 읽는 걸 즐겨요.',
  ex3 = 'I enjoy reading fantasy series on weekends.', ex3_ko = '저는 주말에 판타지 시리즈 읽는 걸 즐겨요.',
  ex4 = 'I enjoy reading short essays on the train.', ex4_ko = '저는 기차에서 짧은 에세이 읽는 걸 즐겨요.',
  ex5 = 'I enjoy reading poetry collections at the cafe.', ex5_ko = '저는 카페에서 시집 읽는 걸 즐겨요.'
WHERE id = 's_humanities_A2_02';

UPDATE sentences SET
  ex1 = 'This film is based on a true story from World War II.', ex1_ko = '이 영화는 제2차 세계대전의 실화를 바탕으로 했어요.',
  ex2 = 'This novel is based on a true story from the author''s life.', ex2_ko = '이 소설은 저자의 삶의 실화를 바탕으로 했어요.',
  ex3 = 'This play is based on a true story from the 1960s.', ex3_ko = '이 연극은 1960년대 실화를 바탕으로 했어요.',
  ex4 = 'This memoir is based on a true story of immigration.', ex4_ko = '이 회고록은 이민의 실화를 바탕으로 했어요.',
  ex5 = 'This documentary is based on a true story of survival.', ex5_ko = '이 다큐멘터리는 생존의 실화를 바탕으로 했어요.'
WHERE id = 's_humanities_A2_03';

UPDATE sentences SET
  ex1 = 'Have you heard of this author before reading the book?', ex1_ko = '책 읽기 전에 이 작가에 대해 들어본 적 있어요?',
  ex2 = 'Have you heard of this poet from school?', ex2_ko = '학교에서 이 시인에 대해 들어본 적 있어요?',
  ex3 = 'Have you heard of this novel''s controversy?', ex3_ko = '이 소설의 논란에 대해 들어본 적 있어요?',
  ex4 = 'Have you heard of this literary award?', ex4_ko = '이 문학상에 대해 들어본 적 있어요?',
  ex5 = 'Have you heard of this writer''s earlier work?', ex5_ko = '이 작가의 초기 작품에 대해 들어본 적 있어요?'
WHERE id = 's_humanities_A2_04';

UPDATE sentences SET
  ex1 = 'What kind of books do you usually read on holiday?', ex1_ko = '휴가 때 보통 어떤 종류의 책을 읽으세요?',
  ex2 = 'What kind of books do you usually buy at the bookstore?', ex2_ko = '서점에서 보통 어떤 종류의 책을 사세요?',
  ex3 = 'What kind of books do you usually recommend to friends?', ex3_ko = '친구들에게 보통 어떤 종류의 책을 추천하세요?',
  ex4 = 'What kind of books do you usually read aloud to your kids?', ex4_ko = '아이들에게 보통 어떤 종류의 책을 읽어 주세요?',
  ex5 = 'What kind of books do you usually finish quickly?', ex5_ko = '보통 어떤 종류의 책을 빨리 끝내세요?'
WHERE id = 's_humanities_A2_05';

UPDATE sentences SET
  ex1 = 'I prefer historical fiction to fantasy.', ex1_ko = '저는 판타지보다 역사 소설을 더 좋아해요.',
  ex2 = 'I prefer poetry to prose.', ex2_ko = '저는 산문보다 시를 더 좋아해요.',
  ex3 = 'I prefer biographies to memoirs.', ex3_ko = '저는 회고록보다 전기를 더 좋아해요.',
  ex4 = 'I prefer short stories to novels.', ex4_ko = '저는 장편 소설보다 단편 소설을 더 좋아해요.',
  ex5 = 'I prefer translations to original texts when learning.', ex5_ko = '학습할 때는 원전보다 번역서를 더 좋아해요.'
WHERE id = 's_humanities_A2_06';

UPDATE sentences SET
  ex1 = 'The main character in this novel is very complex.', ex1_ko = '이 소설의 주인공이 매우 복잡해요.',
  ex2 = 'The main character in this play is very tragic.', ex2_ko = '이 연극의 주인공이 매우 비극적이에요.',
  ex3 = 'The main character in this story is very funny.', ex3_ko = '이 이야기의 주인공이 매우 재미있어요.',
  ex4 = 'The main character in this novel is very young.', ex4_ko = '이 소설의 주인공이 매우 어려요.',
  ex5 = 'The main character in this book is very relatable.', ex5_ko = '이 책의 주인공이 매우 공감돼요.'
WHERE id = 's_humanities_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The author uses symbolism to convey the theme of redemption.', ex1_ko = '작가는 구원의 주제를 전달하기 위해 상징주의를 사용해요.',
  ex2 = 'The author uses dialogue to convey class differences.', ex2_ko = '작가는 계급 차이를 전달하기 위해 대화를 사용해요.',
  ex3 = 'The author uses flashbacks to convey the weight of memory.', ex3_ko = '작가는 기억의 무게를 전달하기 위해 회상을 사용해요.',
  ex4 = 'The author uses landscape to convey emotional states.', ex4_ko = '작가는 감정 상태를 전달하기 위해 풍경을 사용해요.',
  ex5 = 'The author uses repetition to convey the relentlessness of grief.', ex5_ko = '작가는 슬픔의 끝없음을 전달하기 위해 반복을 사용해요.'
WHERE id = 's_humanities_B1_01';

UPDATE sentences SET
  ex1 = 'From whose perspective is the story told in chapter three?', ex1_ko = '3장에서 이야기는 누구의 관점에서 서술되나요?',
  ex2 = 'From whose perspective is the war described?', ex2_ko = '전쟁은 누구의 관점에서 묘사되나요?',
  ex3 = 'From whose perspective is the family conflict shown?', ex3_ko = '가족 갈등은 누구의 관점에서 보여지나요?',
  ex4 = 'From whose perspective is the city portrayed?', ex4_ko = '도시는 누구의 관점에서 그려지나요?',
  ex5 = 'From whose perspective is the betrayal recounted?', ex5_ko = '배신은 누구의 관점에서 회고되나요?'
WHERE id = 's_humanities_B1_02';

UPDATE sentences SET
  ex1 = 'How does the setting influence the characters'' choices?', ex1_ko = '배경이 등장인물들의 선택에 어떤 영향을 미치나요?',
  ex2 = 'How does the time period influence the characters'' worldview?', ex2_ko = '시대가 등장인물들의 세계관에 어떤 영향을 미치나요?',
  ex3 = 'How does the social class influence the characters'' opportunities?', ex3_ko = '사회 계급이 등장인물들의 기회에 어떤 영향을 미치나요?',
  ex4 = 'How does the geography influence the characters'' isolation?', ex4_ko = '지리가 등장인물들의 고립에 어떤 영향을 미치나요?',
  ex5 = 'How does the political climate influence the characters'' silences?', ex5_ko = '정치적 분위기가 등장인물들의 침묵에 어떤 영향을 미치나요?'
WHERE id = 's_humanities_B1_03';

UPDATE sentences SET
  ex1 = 'What do you think the writer is trying to say about freedom?', ex1_ko = '작가가 자유에 대해 무엇을 말하려 한다고 생각하세요?',
  ex2 = 'What do you think the writer is trying to say about family?', ex2_ko = '작가가 가족에 대해 무엇을 말하려 한다고 생각하세요?',
  ex3 = 'What do you think the writer is trying to say about time?', ex3_ko = '작가가 시간에 대해 무엇을 말하려 한다고 생각하세요?',
  ex4 = 'What do you think the writer is trying to say about identity?', ex4_ko = '작가가 정체성에 대해 무엇을 말하려 한다고 생각하세요?',
  ex5 = 'What do you think the writer is trying to say about memory?', ex5_ko = '작가가 기억에 대해 무엇을 말하려 한다고 생각하세요?'
WHERE id = 's_humanities_B1_04';

UPDATE sentences SET
  ex1 = 'The conflict between freedom and duty runs throughout the play.', ex1_ko = '자유와 의무 사이의 갈등이 연극 전반에 걸쳐 흐르고 있어요.',
  ex2 = 'The conflict between individual and society runs throughout the novel.', ex2_ko = '개인과 사회 사이의 갈등이 소설 전반에 걸쳐 흐르고 있어요.',
  ex3 = 'The conflict between desire and morality runs throughout the story.', ex3_ko = '욕망과 도덕 사이의 갈등이 이야기 전반에 걸쳐 흐르고 있어요.',
  ex4 = 'The conflict between memory and forgetting runs throughout the memoir.', ex4_ko = '기억과 망각 사이의 갈등이 회고록 전반에 걸쳐 흐르고 있어요.',
  ex5 = 'The conflict between hope and despair runs throughout the poem.', ex5_ko = '희망과 절망 사이의 갈등이 시 전반에 걸쳐 흐르고 있어요.'
WHERE id = 's_humanities_B1_05';

UPDATE sentences SET
  ex1 = 'I found the narrator unreliable because her version kept shifting.', ex1_ko = '화자의 버전이 계속 바뀌어서 신뢰하기 어렵다고 느꼈어요.',
  ex2 = 'I found the narrator unreliable because his motives kept changing.', ex2_ko = '화자의 동기가 계속 바뀌어서 신뢰하기 어렵다고 느꼈어요.',
  ex3 = 'I found the narrator unreliable because the timeline kept slipping.', ex3_ko = '시간선이 계속 미끄러져서 화자를 신뢰하기 어렵다고 느꼈어요.',
  ex4 = 'I found the narrator unreliable because the details kept contradicting.', ex4_ko = '세부 사항이 계속 모순돼서 화자를 신뢰하기 어렵다고 느꼈어요.',
  ex5 = 'I found the narrator unreliable because the tone kept undercutting itself.', ex5_ko = '어조가 스스로를 계속 약화시켜서 화자를 신뢰하기 어렵다고 느꼈어요.'
WHERE id = 's_humanities_B1_06';

UPDATE sentences SET
  ex1 = 'Can you give an example from the text to support your reading?', ex1_ko = '당신의 해석을 뒷받침할 텍스트에서의 예시를 들어줄 수 있나요?',
  ex2 = 'Can you give an example from the text to support that claim?', ex2_ko = '그 주장을 뒷받침할 텍스트에서의 예시를 들어줄 수 있나요?',
  ex3 = 'Can you give an example from the text to support the theme?', ex3_ko = '그 주제를 뒷받침할 텍스트에서의 예시를 들어줄 수 있나요?',
  ex4 = 'Can you give an example from the text to support the symbolism?', ex4_ko = '그 상징을 뒷받침할 텍스트에서의 예시를 들어줄 수 있나요?',
  ex5 = 'Can you give an example from the text to support your interpretation?', ex5_ko = '당신의 해석을 뒷받침할 텍스트에서의 예시를 들어줄 수 있나요?'
WHERE id = 's_humanities_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The irony lies in the gap between what the character intends and what unfolds.', ex1_ko = '아이러니는 등장인물이 의도하는 것과 펼쳐지는 것 사이의 간극에 있어요.',
  ex2 = 'The irony lies in the gap between the title and the novel''s actual events.', ex2_ko = '아이러니는 제목과 소설의 실제 사건들 사이의 간극에 있어요.',
  ex3 = 'The irony lies in the gap between the speaker''s words and the reader''s understanding.', ex3_ko = '아이러니는 화자의 말과 독자의 이해 사이의 간극에 있어요.',
  ex4 = 'The irony lies in the gap between the prophecy and how it''s fulfilled.', ex4_ko = '아이러니는 예언과 그것이 성취되는 방식 사이의 간극에 있어요.',
  ex5 = 'The irony lies in the gap between the public story and the private truth.', ex5_ko = '아이러니는 공적 이야기와 사적 진실 사이의 간극에 있어요.'
WHERE id = 's_humanities_B2_01';

UPDATE sentences SET
  ex1 = 'One could argue that the novel is more of a meditation than a narrative.', ex1_ko = '이 소설은 서사라기보다 명상에 가깝다고 주장할 수 있어요.',
  ex2 = 'One could argue that the play is more of a critique than entertainment.', ex2_ko = '이 연극은 오락이라기보다 비판에 가깝다고 주장할 수 있어요.',
  ex3 = 'One could argue that the memoir is more of a confession than an autobiography.', ex3_ko = '이 회고록은 자서전이라기보다 고백에 가깝다고 주장할 수 있어요.',
  ex4 = 'One could argue that the poem is more of an invocation than a description.', ex4_ko = '이 시는 묘사라기보다 기원에 가깝다고 주장할 수 있어요.',
  ex5 = 'One could argue that the essay is more of a manifesto than an analysis.', ex5_ko = '이 에세이는 분석이라기보다 선언에 가깝다고 주장할 수 있어요.'
WHERE id = 's_humanities_B2_02';

UPDATE sentences SET
  ex1 = 'The motif of mirrors recurs throughout the text, suggesting self-deception.', ex1_ko = '거울의 모티프가 텍스트 전반에 반복되며 자기기만을 암시해요.',
  ex2 = 'The motif of doors recurs throughout the novel, suggesting thresholds of change.', ex2_ko = '문의 모티프가 소설 전반에 반복되며 변화의 문지방을 암시해요.',
  ex3 = 'The motif of birds recurs throughout the poem, suggesting both freedom and loss.', ex3_ko = '새의 모티프가 시 전반에 반복되며 자유와 상실을 동시에 암시해요.',
  ex4 = 'The motif of fire recurs throughout the play, suggesting both destruction and renewal.', ex4_ko = '불의 모티프가 연극 전반에 반복되며 파괴와 갱신을 동시에 암시해요.',
  ex5 = 'The motif of silence recurs throughout the memoir, suggesting unspeakable loss.', ex5_ko = '침묵의 모티프가 회고록 전반에 반복되며 말할 수 없는 상실을 암시해요.'
WHERE id = 's_humanities_B2_03';

UPDATE sentences SET
  ex1 = 'The subtext reveals a deep anxiety about colonial guilt.', ex1_ko = '서브텍스트는 식민지 죄책감에 대한 깊은 불안을 드러내요.',
  ex2 = 'The subtext reveals a deep anxiety about generational continuity.', ex2_ko = '서브텍스트는 세대 간 연속성에 대한 깊은 불안을 드러내요.',
  ex3 = 'The subtext reveals a deep anxiety about religious doubt.', ex3_ko = '서브텍스트는 종교적 회의에 대한 깊은 불안을 드러내요.',
  ex4 = 'The subtext reveals a deep anxiety about modernization.', ex4_ko = '서브텍스트는 근대화에 대한 깊은 불안을 드러내요.',
  ex5 = 'The subtext reveals a deep anxiety about historical violence.', ex5_ko = '서브텍스트는 역사적 폭력에 대한 깊은 불안을 드러내요.'
WHERE id = 's_humanities_B2_04';

UPDATE sentences SET
  ex1 = 'Reading the novel against its colonial context changes how we interpret the silences.', ex1_ko = '소설을 식민지적 맥락에 비추어 읽으면 침묵에 대한 해석이 달라져요.',
  ex2 = 'Reading the poem against its biographical context changes how we hear the speaker.', ex2_ko = '시를 전기적 맥락에 비추어 읽으면 화자에 대한 인식이 달라져요.',
  ex3 = 'Reading the play against its political context changes how we view the protagonist''s choices.', ex3_ko = '연극을 정치적 맥락에 비추어 읽으면 주인공의 선택에 대한 시각이 달라져요.',
  ex4 = 'Reading the memoir against its diasporic context changes how we receive the homecoming.', ex4_ko = '회고록을 디아스포라적 맥락에 비추어 읽으면 귀향에 대한 수용이 달라져요.',
  ex5 = 'Reading the essay against its institutional context changes how we judge its claims.', ex5_ko = '에세이를 제도적 맥락에 비추어 읽으면 그 주장에 대한 판단이 달라져요.'
WHERE id = 's_humanities_B2_05';

UPDATE sentences SET
  ex1 = 'The satirical tone forces the reader to question assumptions about meritocracy.', ex1_ko = '풍자적 어조는 독자로 하여금 능력주의에 대한 전제를 의심하게 만들어요.',
  ex2 = 'The satirical tone forces the reader to question assumptions about romantic love.', ex2_ko = '풍자적 어조는 독자로 하여금 낭만적 사랑에 대한 전제를 의심하게 만들어요.',
  ex3 = 'The satirical tone forces the reader to question assumptions about progress.', ex3_ko = '풍자적 어조는 독자로 하여금 진보에 대한 전제를 의심하게 만들어요.',
  ex4 = 'The satirical tone forces the reader to question assumptions about respectability.', ex4_ko = '풍자적 어조는 독자로 하여금 점잖음에 대한 전제를 의심하게 만들어요.',
  ex5 = 'The satirical tone forces the reader to question assumptions about national glory.', ex5_ko = '풍자적 어조는 독자로 하여금 국가적 영광에 대한 전제를 의심하게 만들어요.'
WHERE id = 's_humanities_B2_06';

UPDATE sentences SET
  ex1 = 'The paradox at the heart of the play is that loyalty leads to betrayal.', ex1_ko = '연극의 핵심에 있는 역설은 충성이 배신으로 이어진다는 것이에요.',
  ex2 = 'The paradox at the heart of the novel is that knowledge brings suffering.', ex2_ko = '소설의 핵심에 있는 역설은 앎이 고통을 가져온다는 것이에요.',
  ex3 = 'The paradox at the heart of the memoir is that home is also exile.', ex3_ko = '회고록의 핵심에 있는 역설은 고향이 곧 망명이라는 것이에요.',
  ex4 = 'The paradox at the heart of the poem is that silence speaks loudest.', ex4_ko = '시의 핵심에 있는 역설은 침묵이 가장 크게 말한다는 것이에요.',
  ex5 = 'The paradox at the heart of the essay is that doubt enables faith.', ex5_ko = '에세이의 핵심에 있는 역설은 회의가 신앙을 가능케 한다는 것이에요.'
WHERE id = 's_humanities_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'A hermeneutic approach asks not what the poem describes, but how its language withholds.', ex1_ko = '해석학적 접근은 시가 무엇을 묘사하는지가 아니라 그 언어가 어떻게 보류하는지를 묻죠.',
  ex2 = 'A hermeneutic approach asks not what the play stages, but how its silences accuse.', ex2_ko = '해석학적 접근은 연극이 무엇을 무대화하는지가 아니라 그 침묵이 어떻게 고발하는지를 묻죠.',
  ex3 = 'A hermeneutic approach asks not what the novel narrates, but how its form mourns.', ex3_ko = '해석학적 접근은 소설이 무엇을 서술하는지가 아니라 그 형식이 어떻게 애도하는지를 묻죠.',
  ex4 = 'A hermeneutic approach asks not what the memoir confesses, but how its gaps testify.', ex4_ko = '해석학적 접근은 회고록이 무엇을 고백하는지가 아니라 그 공백이 어떻게 증언하는지를 묻죠.',
  ex5 = 'A hermeneutic approach asks not what the essay argues, but how its rhetoric persuades.', ex5_ko = '해석학적 접근은 에세이가 무엇을 주장하는지가 아니라 그 수사가 어떻게 설득하는지를 묻죠.'
WHERE id = 's_humanities_C1_01';

UPDATE sentences SET
  ex1 = 'Through a semiotic lens, the broken clock signifies far more than malfunction.', ex1_ko = '기호학적 렌즈를 통하면, 부서진 시계는 고장 이상의 훨씬 많은 것을 의미해요.',
  ex2 = 'Through a semiotic lens, the empty chair signifies far more than absence.', ex2_ko = '기호학적 렌즈를 통하면, 빈 의자는 부재 이상의 훨씬 많은 것을 의미해요.',
  ex3 = 'Through a semiotic lens, the closed door signifies far more than separation.', ex3_ko = '기호학적 렌즈를 통하면, 닫힌 문은 분리 이상의 훨씬 많은 것을 의미해요.',
  ex4 = 'Through a semiotic lens, the unfinished letter signifies far more than haste.', ex4_ko = '기호학적 렌즈를 통하면, 미완성 편지는 서두름 이상의 훨씬 많은 것을 의미해요.',
  ex5 = 'Through a semiotic lens, the broken mirror signifies far more than carelessness.', ex5_ko = '기호학적 렌즈를 통하면, 깨진 거울은 부주의 이상의 훨씬 많은 것을 의미해요.'
WHERE id = 's_humanities_C1_02';

UPDATE sentences SET
  ex1 = 'Intertextuality suggests that no text is fully autonomous; every novel converses with its predecessors.', ex1_ko = '상호텍스트성은 완전히 자율적인 텍스트는 없으며, 모든 소설은 선행자들과 대화한다는 것을 시사해요.',
  ex2 = 'Intertextuality suggests that no text is fully autonomous; even silence echoes an earlier silence.', ex2_ko = '상호텍스트성은 완전히 자율적인 텍스트는 없으며, 침묵조차 이전 침묵을 메아리치게 한다는 것을 시사해요.',
  ex3 = 'Intertextuality suggests that no text is fully autonomous; every voice inherits other voices.', ex3_ko = '상호텍스트성은 완전히 자율적인 텍스트는 없으며, 모든 목소리는 다른 목소리를 물려받는다는 것을 시사해요.',
  ex4 = 'Intertextuality suggests that no text is fully autonomous; even refusal cites convention.', ex4_ko = '상호텍스트성은 완전히 자율적인 텍스트는 없으며, 거부조차 관습을 인용한다는 것을 시사해요.',
  ex5 = 'Intertextuality suggests that no text is fully autonomous; the canon haunts every margin.', ex5_ko = '상호텍스트성은 완전히 자율적인 텍스트는 없으며, 정전이 모든 여백에 출몰한다는 것을 시사해요.'
WHERE id = 's_humanities_C1_03';

UPDATE sentences SET
  ex1 = 'Deconstruction does not destroy meaning; it reveals the gaps that were always already there.', ex1_ko = '해체주의는 의미를 파괴하지 않고, 항상 이미 그곳에 있던 균열을 드러내요.',
  ex2 = 'Deconstruction does not destroy meaning; it traces the contradictions that were always already there.', ex2_ko = '해체주의는 의미를 파괴하지 않고, 항상 이미 그곳에 있던 모순을 추적해요.',
  ex3 = 'Deconstruction does not destroy meaning; it foregrounds the hierarchies that were always already there.', ex3_ko = '해체주의는 의미를 파괴하지 않고, 항상 이미 그곳에 있던 위계를 전면에 부각시켜요.',
  ex4 = 'Deconstruction does not destroy meaning; it exposes the exclusions that were always already there.', ex4_ko = '해체주의는 의미를 파괴하지 않고, 항상 이미 그곳에 있던 배제를 노출시켜요.',
  ex5 = 'Deconstruction does not destroy meaning; it loosens the closures that were always already there.', ex5_ko = '해체주의는 의미를 파괴하지 않고, 항상 이미 그곳에 있던 종결을 느슨하게 해요.'
WHERE id = 's_humanities_C1_04';

UPDATE sentences SET
  ex1 = 'Phenomenological criticism foregrounds the reader''s lived experience of the rhythm.', ex1_ko = '현상학적 비평은 리듬에 대한 독자의 생생한 경험을 전면에 부각시켜요.',
  ex2 = 'Phenomenological criticism foregrounds the reader''s lived experience of the unfolding image.', ex2_ko = '현상학적 비평은 펼쳐지는 이미지에 대한 독자의 생생한 경험을 전면에 부각시켜요.',
  ex3 = 'Phenomenological criticism foregrounds the reader''s lived experience of duration.', ex3_ko = '현상학적 비평은 지속 시간에 대한 독자의 생생한 경험을 전면에 부각시켜요.',
  ex4 = 'Phenomenological criticism foregrounds the reader''s lived experience of the page.', ex4_ko = '현상학적 비평은 페이지에 대한 독자의 생생한 경험을 전면에 부각시켜요.',
  ex5 = 'Phenomenological criticism foregrounds the reader''s lived experience of voice on the page.', ex5_ko = '현상학적 비평은 페이지 위 목소리에 대한 독자의 생생한 경험을 전면에 부각시켜요.'
WHERE id = 's_humanities_C1_05';

UPDATE sentences SET
  ex1 = 'Bakhtin''s concept of polyphony challenges the idea of a single moral authority in the novel.', ex1_ko = '바흐친의 다성 개념은 소설에서 단일한 도덕적 권위라는 생각에 도전해요.',
  ex2 = 'Bakhtin''s concept of polyphony challenges the idea of a single coherent worldview in the text.', ex2_ko = '바흐친의 다성 개념은 텍스트에서 단일하고 일관된 세계관이라는 생각에 도전해요.',
  ex3 = 'Bakhtin''s concept of polyphony challenges the idea of a single dominant voice in the dialogue.', ex3_ko = '바흐친의 다성 개념은 대화에서 단일한 지배적 목소리라는 생각에 도전해요.',
  ex4 = 'Bakhtin''s concept of polyphony challenges the idea of a single resolution in the narrative.', ex4_ko = '바흐친의 다성 개념은 서사에서 단일한 해결이라는 생각에 도전해요.',
  ex5 = 'Bakhtin''s concept of polyphony challenges the idea of a single ideological closure in the novel.', ex5_ko = '바흐친의 다성 개념은 소설에서 단일한 이데올로기적 종결이라는 생각에 도전해요.'
WHERE id = 's_humanities_C1_06';

UPDATE sentences SET
  ex1 = 'The sublime, as Burke defines it, involves a blend of terror and awe that exceeds rational comprehension.', ex1_ko = '버크가 정의한 숭고함은 이성적 이해를 초월하는 공포와 경외의 혼합을 포함해요.',
  ex2 = 'The uncanny, as Freud defines it, involves a blend of the familiar and the strange that exceeds rational comprehension.', ex2_ko = '프로이트가 정의한 언캐니는 이성적 이해를 초월하는 친숙함과 낯섦의 혼합을 포함해요.',
  ex3 = 'The carnivalesque, as Bakhtin defines it, involves a blend of subversion and laughter that exceeds rational comprehension.', ex3_ko = '바흐친이 정의한 카니발적인 것은 이성적 이해를 초월하는 전복과 웃음의 혼합을 포함해요.',
  ex4 = 'The grotesque, as Bakhtin notes, involves a blend of the bodily and the symbolic that exceeds rational comprehension.', ex4_ko = '바흐친이 지적한 그로테스크는 이성적 이해를 초월하는 신체성과 상징성의 혼합을 포함해요.',
  ex5 = 'The picaresque, as Lukács reads it, involves a blend of mobility and disenchantment that exceeds rational comprehension.', ex5_ko = '루카치가 읽은 피카레스크는 이성적 이해를 초월하는 이동성과 환멸의 혼합을 포함해요.'
WHERE id = 's_humanities_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Différance operates as the ungraspable condition of possibility for all signification.', ex1_ko = '디페랑스는 모든 의미작용의 가능성에 대한 파악 불가능한 조건으로 작동해요.',
  ex2 = 'The trace operates as the ungraspable condition of possibility for presence itself.', ex2_ko = '흔적은 현존 자체의 가능성에 대한 파악 불가능한 조건으로 작동해요.',
  ex3 = 'Aporia operates as the ungraspable condition of possibility for ethical decision.', ex3_ko = '아포리아는 윤리적 결정의 가능성에 대한 파악 불가능한 조건으로 작동해요.',
  ex4 = 'The supplement operates as the ungraspable condition of possibility for any origin.', ex4_ko = '대리보충은 어떤 기원의 가능성에 대한 파악 불가능한 조건으로 작동해요.',
  ex5 = 'The pharmakon operates as the ungraspable condition of possibility for writing itself.', ex5_ko = '파르마콘은 글쓰기 자체의 가능성에 대한 파악 불가능한 조건으로 작동해요.'
WHERE id = 's_humanities_C2_01';

UPDATE sentences SET
  ex1 = 'The palimpsest as a metaphor invites us to read the text''s silences as much as its declarations.', ex1_ko = '팔림프세스트를 은유로 취하면, 텍스트의 선언만큼 침묵도 읽으라는 초대가 돼요.',
  ex2 = 'The palimpsest as a metaphor invites us to read the archive''s erasures as much as its records.', ex2_ko = '팔림프세스트를 은유로 취하면, 아카이브의 기록만큼 지워진 흔적도 읽으라는 초대가 돼요.',
  ex3 = 'The palimpsest as a metaphor invites us to read the city''s ruins as much as its monuments.', ex3_ko = '팔림프세스트를 은유로 취하면, 도시의 기념물만큼 폐허도 읽으라는 초대가 돼요.',
  ex4 = 'The palimpsest as a metaphor invites us to read the body''s scars as much as its surfaces.', ex4_ko = '팔림프세스트를 은유로 취하면, 신체의 표면만큼 흉터도 읽으라는 초대가 돼요.',
  ex5 = 'The palimpsest as a metaphor invites us to read the manuscript''s overwrites as much as its final draft.', ex5_ko = '팔림프세스트를 은유로 취하면, 원고의 최종 원고만큼 덧쓴 흔적도 읽으라는 초대가 돼요.'
WHERE id = 's_humanities_C2_02';

UPDATE sentences SET
  ex1 = 'Defamiliarization, according to the Russian Formalists, is the very purpose of literary language.', ex1_ko = '러시아 형식주의자들에 따르면, 낯설게 하기는 문학적 언어의 바로 그 목적이에요.',
  ex2 = 'Negative capability, according to Keats, is the very purpose of poetic vocation.', ex2_ko = '키츠에 따르면, 부정적 수용 능력은 시적 소명의 바로 그 목적이에요.',
  ex3 = 'Dialogism, according to Bakhtin, is the very purpose of novelistic discourse.', ex3_ko = '바흐친에 따르면, 대화주의는 소설적 담론의 바로 그 목적이에요.',
  ex4 = 'Catharsis, according to Aristotle, is the very purpose of tragic representation.', ex4_ko = '아리스토텔레스에 따르면, 카타르시스는 비극적 재현의 바로 그 목적이에요.',
  ex5 = 'Estrangement, according to Brecht, is the very purpose of epic theater.', ex5_ko = '브레히트에 따르면, 소외 효과는 서사극의 바로 그 목적이에요.'
WHERE id = 's_humanities_C2_03';

UPDATE sentences SET
  ex1 = 'As a rhizome, the text resists any single origin or fixed endpoint of meaning.', ex1_ko = '리좀으로서 텍스트는 어떠한 단일한 기원이나 고정된 의미의 종착점에도 저항해요.',
  ex2 = 'As a rhizome, the archive resists any single origin or fixed endpoint of memory.', ex2_ko = '리좀으로서 아카이브는 어떠한 단일한 기원이나 고정된 기억의 종착점에도 저항해요.',
  ex3 = 'As a rhizome, the diaspora resists any single origin or fixed endpoint of belonging.', ex3_ko = '리좀으로서 디아스포라는 어떠한 단일한 기원이나 고정된 소속의 종착점에도 저항해요.',
  ex4 = 'As a rhizome, the work resists any single origin or fixed endpoint of interpretation.', ex4_ko = '리좀으로서 작품은 어떠한 단일한 기원이나 고정된 해석의 종착점에도 저항해요.',
  ex5 = 'As a rhizome, the canon resists any single origin or fixed endpoint of authority.', ex5_ko = '리좀으로서 정전은 어떠한 단일한 기원이나 고정된 권위의 종착점에도 저항해요.'
WHERE id = 's_humanities_C2_04';

UPDATE sentences SET
  ex1 = 'Heteroglossia ensures that the novel can never be reduced to a single ideological position.', ex1_ko = '헤테로글로시아는 소설이 결코 단일한 이데올로기적 입장으로 환원될 수 없음을 보장해요.',
  ex2 = 'Heteroglossia ensures that the play can never be reduced to a single moral message.', ex2_ko = '헤테로글로시아는 연극이 결코 단일한 도덕적 메시지로 환원될 수 없음을 보장해요.',
  ex3 = 'Heteroglossia ensures that the city can never be reduced to a single official narrative.', ex3_ko = '헤테로글로시아는 도시가 결코 단일한 공식 서사로 환원될 수 없음을 보장해요.',
  ex4 = 'Heteroglossia ensures that the canon can never be reduced to a single literary tradition.', ex4_ko = '헤테로글로시아는 정전이 결코 단일한 문학 전통으로 환원될 수 없음을 보장해요.',
  ex5 = 'Heteroglossia ensures that the testimony can never be reduced to a single witness account.', ex5_ko = '헤테로글로시아는 증언이 결코 단일한 목격담으로 환원될 수 없음을 보장해요.'
WHERE id = 's_humanities_C2_05';

UPDATE sentences SET
  ex1 = 'The chronotope of the threshold marks a liminal space where identity is suspended between states.', ex1_ko = '문지방의 크로노토프는 정체성이 두 상태 사이에 유예되는 경계적 공간을 표시해요.',
  ex2 = 'The chronotope of the road marks a liminal space where encounters are suspended between destinations.', ex2_ko = '길의 크로노토프는 만남이 목적지 사이에 유예되는 경계적 공간을 표시해요.',
  ex3 = 'The chronotope of the harbor marks a liminal space where belonging is suspended between shores.', ex3_ko = '항구의 크로노토프는 소속이 두 해안 사이에 유예되는 경계적 공간을 표시해요.',
  ex4 = 'The chronotope of the salon marks a liminal space where conversation is suspended between public and private.', ex4_ko = '살롱의 크로노토프는 대화가 공적인 것과 사적인 것 사이에 유예되는 경계적 공간을 표시해요.',
  ex5 = 'The chronotope of the train marks a liminal space where time is suspended between past and future.', ex5_ko = '기차의 크로노토프는 시간이 과거와 미래 사이에 유예되는 경계적 공간을 표시해요.'
WHERE id = 's_humanities_C2_06';

UPDATE sentences SET
  ex1 = 'Negative capability, for Keats, is not a weakness but the poet''s supreme capacity to inhabit uncertainty without grasping.', ex1_ko = '키츠에게 부정적 수용 능력은 약점이 아니라 움켜잡지 않고 불확실성 안에 머무는 시인의 최고 능력이에요.',
  ex2 = 'Apophasis, for the mystics, is not a failure but the contemplative''s supreme capacity to inhabit uncertainty without naming.', ex2_ko = '신비주의자들에게 부정 신학은 실패가 아니라 명명하지 않고 불확실성 안에 머무는 관조자의 최고 능력이에요.',
  ex3 = 'Wu wei, for the Daoists, is not passivity but the sage''s supreme capacity to inhabit uncertainty without forcing.', ex3_ko = '도가에게 무위는 수동성이 아니라 강요하지 않고 불확실성 안에 머무는 현자의 최고 능력이에요.',
  ex4 = 'Saudade, for the Portuguese, is not mere sadness but the soul''s supreme capacity to inhabit uncertainty without resolution.', ex4_ko = '포르투갈인들에게 사우다드는 단순한 슬픔이 아니라 해결 없이 불확실성 안에 머무는 영혼의 최고 능력이에요.',
  ex5 = 'Sprezzatura, for the courtiers, is not affectation but the artist''s supreme capacity to inhabit difficulty without effort.', ex5_ko = '궁정인들에게 스프레차투라는 가식이 아니라 노력 없이 어려움 안에 머무는 예술가의 최고 능력이에요.'
WHERE id = 's_humanities_C2_07';

-- ── media ──
-- EngCat — Media topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Did you see that video on Instagram?', ex1_ko = '인스타그램에서 그 영상 봤어요?',
  ex2 = 'Did you see that meme everyone is sharing?', ex2_ko = '다들 공유하는 그 밈 봤어요?',
  ex3 = 'Did you see that photo of the sunset?', ex3_ko = '석양 그 사진 봤어요?',
  ex4 = 'Did you see that movie trailer?', ex4_ko = '그 영화 예고편 봤어요?',
  ex5 = 'Did you see that funny clip yesterday?', ex5_ko = '어제 그 웃긴 클립 봤어요?'
WHERE id = 's_media_A1_01';

UPDATE sentences SET
  ex1 = 'You should watch this show — it''s really good.', ex1_ko = '이 프로그램 봐요. 정말 좋아요.',
  ex2 = 'You should watch this documentary — it''s really educational.', ex2_ko = '이 다큐 봐요. 정말 교육적이에요.',
  ex3 = 'You should watch this video — it''s really moving.', ex3_ko = '이 영상 봐요. 정말 감동적이에요.',
  ex4 = 'You should watch this episode — it''s really exciting.', ex4_ko = '이 에피소드 봐요. 정말 흥미진진해요.',
  ex5 = 'You should watch this tutorial — it''s really useful.', ex5_ko = '이 튜토리얼 봐요. 정말 유용해요.'
WHERE id = 's_media_A1_02';

UPDATE sentences SET
  ex1 = 'I''ll send you the link in a minute.', ex1_ko = '잠시 후에 링크 보내 줄게요.',
  ex2 = 'I''ll send you the video tonight.', ex2_ko = '오늘 밤에 영상 보내 줄게요.',
  ex3 = 'I''ll send you the article right now.', ex3_ko = '지금 그 글 보내 줄게요.',
  ex4 = 'I''ll send you the screenshot when I get home.', ex4_ko = '집에 가면 스크린샷 보내 줄게요.',
  ex5 = 'I''ll send you the playlist later.', ex5_ko = '나중에 플레이리스트 보내 줄게요.'
WHERE id = 's_media_A1_03';

UPDATE sentences SET
  ex1 = 'What are you watching on YouTube?', ex1_ko = '유튜브에서 뭐 보고 있어요?',
  ex2 = 'What are you watching on Netflix tonight?', ex2_ko = '오늘 밤 넷플릭스에서 뭐 보고 있어요?',
  ex3 = 'What are you watching that''s so funny?', ex3_ko = '뭐 보고 있길래 그렇게 웃겨요?',
  ex4 = 'What are you watching with your kids?', ex4_ko = '아이들과 뭐 보고 있어요?',
  ex5 = 'What are you watching for entertainment?', ex5_ko = '오락용으로 뭐 보고 있어요?'
WHERE id = 's_media_A1_04';

UPDATE sentences SET
  ex1 = 'Have you heard the news this morning?', ex1_ko = '오늘 아침 뉴스 들었어요?',
  ex2 = 'Have you heard the news about the election?', ex2_ko = '선거에 대한 뉴스 들었어요?',
  ex3 = 'Have you heard the news from the office?', ex3_ko = '회사에서 들려오는 소식 들었어요?',
  ex4 = 'Have you heard the news from our friend?', ex4_ko = '친구한테 들려오는 소식 들었어요?',
  ex5 = 'Have you heard the news, it''s big?', ex5_ko = '뉴스 들었어요? 큰 소식이에요.'
WHERE id = 's_media_A1_05';

UPDATE sentences SET
  ex1 = 'This photo is amazing — where did you take it?', ex1_ko = '이 사진 정말 대단해요. 어디서 찍었어요?',
  ex2 = 'This shot is amazing — where did you take it?', ex2_ko = '이 컷 정말 대단해요. 어디서 찍었어요?',
  ex3 = 'This portrait is amazing — where did you take it?', ex3_ko = '이 인물 사진 정말 대단해요. 어디서 찍었어요?',
  ex4 = 'This landscape is amazing — where did you take it?', ex4_ko = '이 풍경 정말 대단해요. 어디서 찍었어요?',
  ex5 = 'This selfie is amazing — where did you take it?', ex5_ko = '이 셀카 정말 대단해요. 어디서 찍었어요?'
WHERE id = 's_media_A1_06';

UPDATE sentences SET
  ex1 = 'I listen to music on my phone during commutes.', ex1_ko = '저는 통근할 때 휴대폰으로 음악을 들어요.',
  ex2 = 'I listen to music on my phone before bed.', ex2_ko = '저는 자기 전에 휴대폰으로 음악을 들어요.',
  ex3 = 'I listen to music on my phone while jogging.', ex3_ko = '저는 조깅하면서 휴대폰으로 음악을 들어요.',
  ex4 = 'I listen to music on my phone in the gym.', ex4_ko = '저는 헬스장에서 휴대폰으로 음악을 들어요.',
  ex5 = 'I listen to music on my phone all day.', ex5_ko = '저는 하루 종일 휴대폰으로 음악을 들어요.'
WHERE id = 's_media_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I just posted a story — go check it out!', ex1_ko = '방금 스토리 올렸어요. 가서 확인해 봐요!',
  ex2 = 'I just uploaded a reel — go check it out!', ex2_ko = '방금 릴스 올렸어요. 가서 확인해 봐요!',
  ex3 = 'I just shared a recipe — go check it out!', ex3_ko = '방금 레시피 공유했어요. 가서 확인해 봐요!',
  ex4 = 'I just dropped a new video — go check it out!', ex4_ko = '방금 새 영상 올렸어요. 가서 확인해 봐요!',
  ex5 = 'I just published a post — go check it out!', ex5_ko = '방금 게시물 올렸어요. 가서 확인해 봐요!'
WHERE id = 's_media_A2_01';

UPDATE sentences SET
  ex1 = 'Don''t forget to like and subscribe to the channel!', ex1_ko = '채널 좋아요 누르고 구독도 잊지 마세요!',
  ex2 = 'Don''t forget to share the post with your friends!', ex2_ko = '친구들에게 게시물 공유하는 것 잊지 마세요!',
  ex3 = 'Don''t forget to turn on notifications!', ex3_ko = '알림 켜는 것 잊지 마세요!',
  ex4 = 'Don''t forget to leave a comment below!', ex4_ko = '아래에 댓글 남기는 것 잊지 마세요!',
  ex5 = 'Don''t forget to tag your friends!', ex5_ko = '친구들 태그하는 것 잊지 마세요!'
WHERE id = 's_media_A2_02';

UPDATE sentences SET
  ex1 = 'I''ve been following her for years — her recipes never disappoint.', ex1_ko = '몇 년째 팔로우하고 있어요. 그분 레시피는 절대 실망시키지 않아요.',
  ex2 = 'I''ve been following him for months — his analysis is sharp.', ex2_ko = '몇 달째 팔로우하고 있어요. 그분 분석이 날카로워요.',
  ex3 = 'I''ve been following them for ages — their work is inspiring.', ex3_ko = '오랫동안 팔로우하고 있어요. 그들의 작업이 영감을 줘요.',
  ex4 = 'I''ve been following her since the beginning — she''s the real deal.', ex4_ko = '처음부터 팔로우하고 있어요. 진짜배기예요.',
  ex5 = 'I''ve been following this account for a while — the content is consistent.', ex5_ko = '이 계정을 한동안 팔로우하고 있어요. 콘텐츠가 일관돼요.'
WHERE id = 's_media_A2_03';

UPDATE sentences SET
  ex1 = 'Have you seen what''s trending on Twitter today?', ex1_ko = '오늘 트위터 트렌딩에 뭐 있는지 봤어요?',
  ex2 = 'Have you seen what''s trending in K-pop right now?', ex2_ko = '지금 K팝에서 뭐가 트렌딩인지 봤어요?',
  ex3 = 'Have you seen what''s trending in news today?', ex3_ko = '오늘 뉴스에서 뭐가 트렌딩인지 봤어요?',
  ex4 = 'Have you seen what''s trending on TikTok this week?', ex4_ko = '이번 주 틱톡에서 뭐가 트렌딩인지 봤어요?',
  ex5 = 'Have you seen what''s trending in fashion this season?', ex5_ko = '이번 시즌 패션에서 뭐가 트렌딩인지 봤어요?'
WHERE id = 's_media_A2_04';

UPDATE sentences SET
  ex1 = 'She uploaded a new song — it already has half a million streams.', ex1_ko = '그녀가 새 노래를 올렸어요. 벌써 스트리밍이 50만이에요.',
  ex2 = 'He posted a vlog — it already has thousands of comments.', ex2_ko = '그가 브이로그를 올렸어요. 벌써 댓글이 수천 개예요.',
  ex3 = 'They dropped a music video — it already has ten million views.', ex3_ko = '그들이 뮤직비디오를 공개했어요. 벌써 조회수가 천만이에요.',
  ex4 = 'She shared a recipe — it already has a hundred shares.', ex4_ko = '그녀가 레시피를 공유했어요. 벌써 공유가 100건이에요.',
  ex5 = 'He launched a podcast — it already has a loyal following.', ex5_ko = '그가 팟캐스트를 시작했어요. 벌써 충성 청취자가 있어요.'
WHERE id = 's_media_A2_05';

UPDATE sentences SET
  ex1 = 'You can find me on YouTube at @username.', ex1_ko = '유튜브에서 @username으로 찾을 수 있어요.',
  ex2 = 'You can find me on Twitter at @username.', ex2_ko = '트위터에서 @username으로 찾을 수 있어요.',
  ex3 = 'You can find me on TikTok at @username.', ex3_ko = '틱톡에서 @username으로 찾을 수 있어요.',
  ex4 = 'You can find me on LinkedIn under my full name.', ex4_ko = '링크드인에서 제 본명으로 찾을 수 있어요.',
  ex5 = 'You can find me on every platform at @username.', ex5_ko = '모든 플랫폼에서 @username으로 찾을 수 있어요.'
WHERE id = 's_media_A2_06';

UPDATE sentences SET
  ex1 = 'I''ve been spending too much time scrolling at night.', ex1_ko = '밤에 스크롤하면서 시간을 너무 많이 보내고 있어요.',
  ex2 = 'I''ve been spending too much time scrolling on the bus.', ex2_ko = '버스에서 스크롤하면서 시간을 너무 많이 보내고 있어요.',
  ex3 = 'I''ve been spending too much time scrolling on weekends.', ex3_ko = '주말에 스크롤하면서 시간을 너무 많이 보내고 있어요.',
  ex4 = 'I''ve been spending too much time scrolling instead of reading.', ex4_ko = '책 읽는 대신 스크롤하면서 시간을 너무 많이 보내고 있어요.',
  ex5 = 'I''ve been spending too much time scrolling before sleep.', ex5_ko = '자기 전에 스크롤하면서 시간을 너무 많이 보내고 있어요.'
WHERE id = 's_media_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The algorithm keeps recommending videos I''ve already watched.', ex1_ko = '알고리즘이 계속 제가 이미 본 영상을 추천해요.',
  ex2 = 'The algorithm keeps recommending creators with similar styles.', ex2_ko = '알고리즘이 계속 비슷한 스타일의 크리에이터들을 추천해요.',
  ex3 = 'The algorithm keeps recommending the same news outlets.', ex3_ko = '알고리즘이 계속 같은 뉴스 매체를 추천해요.',
  ex4 = 'The algorithm keeps recommending content I''d rather skip.', ex4_ko = '알고리즘이 계속 제가 건너뛰고 싶은 콘텐츠를 추천해요.',
  ex5 = 'The algorithm keeps recommending products I already own.', ex5_ko = '알고리즘이 계속 제가 이미 가지고 있는 제품을 추천해요.'
WHERE id = 's_media_B1_01';

UPDATE sentences SET
  ex1 = 'I''ve been trying to grow my channel for about a year now.', ex1_ko = '채널을 키우려고 약 1년째 노력 중이에요.',
  ex2 = 'I''ve been trying to grow my newsletter for about three months.', ex2_ko = '뉴스레터를 키우려고 약 3개월째 노력 중이에요.',
  ex3 = 'I''ve been trying to grow my following for about two years.', ex3_ko = '팔로워를 늘리려고 약 2년째 노력 중이에요.',
  ex4 = 'I''ve been trying to grow my podcast for about eight months.', ex4_ko = '팟캐스트를 키우려고 약 8개월째 노력 중이에요.',
  ex5 = 'I''ve been trying to grow my audience for about six weeks now.', ex5_ko = '청중을 늘리려고 약 6주째 노력 중이에요.'
WHERE id = 's_media_B1_02';

UPDATE sentences SET
  ex1 = 'If you want more engagement, you need to interact with comments.', ex1_ko = '참여를 늘리려면 댓글에 반응해야 해요.',
  ex2 = 'If you want more followers, you need to post at the right times.', ex2_ko = '팔로워를 늘리려면 적절한 시간에 게시해야 해요.',
  ex3 = 'If you want more views, you need to optimize your thumbnails.', ex3_ko = '조회수를 늘리려면 썸네일을 최적화해야 해요.',
  ex4 = 'If you want more shares, you need to create emotional hooks.', ex4_ko = '공유를 늘리려면 감정적 훅을 만들어야 해요.',
  ex5 = 'If you want more reach, you need to use trending hashtags.', ex5_ko = '도달 범위를 늘리려면 트렌딩 해시태그를 사용해야 해요.'
WHERE id = 's_media_B1_03';

UPDATE sentences SET
  ex1 = 'The engagement rate tells you whether the audience is responding.', ex1_ko = '참여율이 청중이 반응하고 있는지 알려줘요.',
  ex2 = 'The watch time tells you whether the content holds attention.', ex2_ko = '시청 시간이 콘텐츠가 관심을 끄는지 알려줘요.',
  ex3 = 'The share rate tells you whether the message is resonating.', ex3_ko = '공유율이 메시지가 공명하는지 알려줘요.',
  ex4 = 'The bounce rate tells you whether the headline is honest.', ex4_ko = '이탈률이 헤드라인이 정직한지 알려줘요.',
  ex5 = 'The retention curve tells you whether the pacing is working.', ex5_ko = '리텐션 곡선이 전개 속도가 효과적인지 알려줘요.'
WHERE id = 's_media_B1_04';

UPDATE sentences SET
  ex1 = 'I''m thinking of starting a newsletter — what do you think?', ex1_ko = '뉴스레터를 시작할까 생각 중이에요. 어떻게 생각해요?',
  ex2 = 'I''m thinking of starting a TikTok account — what do you think?', ex2_ko = '틱톡 계정을 시작할까 생각 중이에요. 어떻게 생각해요?',
  ex3 = 'I''m thinking of starting a vlog — what do you think?', ex3_ko = '브이로그를 시작할까 생각 중이에요. 어떻게 생각해요?',
  ex4 = 'I''m thinking of starting a blog — what do you think?', ex4_ko = '블로그를 시작할까 생각 중이에요. 어떻게 생각해요?',
  ex5 = 'I''m thinking of starting a book club online — what do you think?', ex5_ko = '온라인 독서 모임을 시작할까 생각 중이에요. 어떻게 생각해요?'
WHERE id = 's_media_B1_05';

UPDATE sentences SET
  ex1 = 'Did you see that meme went viral overnight?', ex1_ko = '그 밈이 하룻밤 사이에 바이럴된 거 봤어요?',
  ex2 = 'Did you see that tweet went viral overnight?', ex2_ko = '그 트윗이 하룻밤 사이에 바이럴된 거 봤어요?',
  ex3 = 'Did you see that clip went viral overnight?', ex3_ko = '그 클립이 하룻밤 사이에 바이럴된 거 봤어요?',
  ex4 = 'Did you see that song went viral overnight?', ex4_ko = '그 노래가 하룻밤 사이에 바이럴된 거 봤어요?',
  ex5 = 'Did you see that dance went viral overnight?', ex5_ko = '그 댄스가 하룻밤 사이에 바이럴된 거 봤어요?'
WHERE id = 's_media_B1_06';

UPDATE sentences SET
  ex1 = 'I always check the analytics before deciding what to post next.', ex1_ko = '다음에 뭘 올릴지 결정하기 전에 항상 분석 데이터를 확인해요.',
  ex2 = 'I always check the trends before deciding what topic to cover.', ex2_ko = '어떤 주제를 다룰지 결정하기 전에 항상 트렌드를 확인해요.',
  ex3 = 'I always check the timing before deciding what time to upload.', ex3_ko = '언제 업로드할지 결정하기 전에 항상 타이밍을 확인해요.',
  ex4 = 'I always check the comments before deciding what to clarify.', ex4_ko = '무엇을 명확히 할지 결정하기 전에 항상 댓글을 확인해요.',
  ex5 = 'I always check the metrics before deciding what to change.', ex5_ko = '무엇을 변경할지 결정하기 전에 항상 지표를 확인해요.'
WHERE id = 's_media_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The thumbnail is clearly designed to be clickbait.', ex1_ko = '그 썸네일은 명백히 낚시성으로 설계된 거예요.',
  ex2 = 'The title is clearly designed to provoke outrage.', ex2_ko = '그 제목은 명백히 분노를 유발하도록 설계된 거예요.',
  ex3 = 'The notification is clearly designed to interrupt focus.', ex3_ko = '그 알림은 명백히 집중을 방해하도록 설계된 거예요.',
  ex4 = 'The feed is clearly designed to maximize scrolling.', ex4_ko = '그 피드는 명백히 스크롤을 극대화하도록 설계된 거예요.',
  ex5 = 'The interface is clearly designed to encourage compulsive use.', ex5_ko = '그 인터페이스는 명백히 강박적 사용을 유도하도록 설계된 거예요.'
WHERE id = 's_media_B2_01';

UPDATE sentences SET
  ex1 = 'I''m concerned about how quickly misinformation spreads in group chats.', ex1_ko = '그룹 채팅에서 잘못된 정보가 얼마나 빨리 퍼지는지 걱정돼요.',
  ex2 = 'I''m concerned about how algorithms shape what young people see.', ex2_ko = '알고리즘이 젊은이들이 보는 것을 어떻게 형성하는지 걱정돼요.',
  ex3 = 'I''m concerned about how social media affects teenagers'' self-image.', ex3_ko = '소셜 미디어가 십대들의 자기 이미지에 어떻게 영향을 미치는지 걱정돼요.',
  ex4 = 'I''m concerned about how platforms handle harassment reports.', ex4_ko = '플랫폼이 괴롭힘 신고를 어떻게 처리하는지 걱정돼요.',
  ex5 = 'I''m concerned about how data is collected without explicit consent.', ex5_ko = '명시적 동의 없이 데이터가 어떻게 수집되는지 걱정돼요.'
WHERE id = 's_media_B2_02';

UPDATE sentences SET
  ex1 = 'You need to fact-check before you share anything online.', ex1_ko = '온라인에서 무언가를 공유하기 전에 팩트체크를 해야 해요.',
  ex2 = 'You need to verify the source before you trust the story.', ex2_ko = '그 이야기를 믿기 전에 출처를 확인해야 해요.',
  ex3 = 'You need to cross-reference before you repost a claim.', ex3_ko = '주장을 재게시하기 전에 교차 확인을 해야 해요.',
  ex4 = 'You need to consider the date before you cite the article.', ex4_ko = '그 글을 인용하기 전에 날짜를 고려해야 해요.',
  ex5 = 'You need to read the full piece before you judge the headline.', ex5_ko = '헤드라인을 판단하기 전에 전체 글을 읽어야 해요.'
WHERE id = 's_media_B2_03';

UPDATE sentences SET
  ex1 = 'The way the story was framed really shaped public opinion.', ex1_ko = '그 이야기가 프레이밍된 방식이 여론을 정말 형성했어요.',
  ex2 = 'The way the protest was framed really colored its reception.', ex2_ko = '그 시위가 프레이밍된 방식이 그 수용을 정말 채색했어요.',
  ex3 = 'The way the policy was framed really determined whether people supported it.', ex3_ko = '그 정책이 프레이밍된 방식이 사람들의 지지 여부를 정말 결정했어요.',
  ex4 = 'The way the conflict was framed really limited the questions journalists asked.', ex4_ko = '그 갈등이 프레이밍된 방식이 기자들의 질문을 정말 제한했어요.',
  ex5 = 'The way the candidate was framed really influenced voter perception.', ex5_ko = '그 후보가 프레이밍된 방식이 유권자 인식에 정말 영향을 미쳤어요.'
WHERE id = 's_media_B2_04';

UPDATE sentences SET
  ex1 = 'It''s hard to tell whether a video is real or AI-generated these days.', ex1_ko = '요즘에는 영상이 진짜인지 AI로 생성된 건지 판단하기 어려워요.',
  ex2 = 'It''s hard to tell whether an account is genuine or a bot.', ex2_ko = '계정이 진짜인지 봇인지 판단하기 어려워요.',
  ex3 = 'It''s hard to tell whether a review is honest or sponsored.', ex3_ko = '리뷰가 정직한지 협찬인지 판단하기 어려워요.',
  ex4 = 'It''s hard to tell whether an article is reporting or opinion.', ex4_ko = '글이 보도인지 의견인지 판단하기 어려워요.',
  ex5 = 'It''s hard to tell whether a trend is organic or manufactured.', ex5_ko = '트렌드가 자연 발생인지 인위적으로 만들어진 건지 판단하기 어려워요.'
WHERE id = 's_media_B2_05';

UPDATE sentences SET
  ex1 = 'Social media algorithms tend to reinforce our existing biases.', ex1_ko = '소셜 미디어 알고리즘은 우리의 기존 편향을 강화하는 경향이 있어요.',
  ex2 = 'Recommendation systems tend to reinforce our viewing habits.', ex2_ko = '추천 시스템은 우리의 시청 습관을 강화하는 경향이 있어요.',
  ex3 = 'Echo chambers tend to reinforce our political polarization.', ex3_ko = '에코 체임버는 우리의 정치 양극화를 강화하는 경향이 있어요.',
  ex4 = 'News feeds tend to reinforce our emotional reactions.', ex4_ko = '뉴스 피드는 우리의 감정적 반응을 강화하는 경향이 있어요.',
  ex5 = 'Filter bubbles tend to reinforce our limited worldview.', ex5_ko = '필터 버블은 우리의 제한된 세계관을 강화하는 경향이 있어요.'
WHERE id = 's_media_B2_06';

UPDATE sentences SET
  ex1 = 'What concerns me most is the lack of transparency in moderation decisions.', ex1_ko = '가장 걱정되는 건 콘텐츠 검열 결정의 투명성 부재예요.',
  ex2 = 'What concerns me most is the lack of accountability for spreading falsehoods.', ex2_ko = '가장 걱정되는 건 허위 정보 확산에 대한 책임 부재예요.',
  ex3 = 'What concerns me most is the lack of regulation around data collection.', ex3_ko = '가장 걱정되는 건 데이터 수집에 대한 규제 부재예요.',
  ex4 = 'What concerns me most is the lack of media literacy in schools.', ex4_ko = '가장 걱정되는 건 학교에서의 미디어 리터러시 부재예요.',
  ex5 = 'What concerns me most is the lack of protection for vulnerable users.', ex5_ko = '가장 걱정되는 건 취약한 사용자 보호 부재예요.'
WHERE id = 's_media_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The media''s agenda-setting power shapes which topics dominate public conversation.', ex1_ko = '미디어의 의제 설정 능력은 어떤 주제가 공적 대화를 지배하는지를 형성해요.',
  ex2 = 'The press''s framing power shapes how the public interprets crises.', ex2_ko = '언론의 프레이밍 능력은 대중이 위기를 어떻게 해석하는지를 형성해요.',
  ex3 = 'The platform''s curation power shapes what counts as visible discourse.', ex3_ko = '플랫폼의 큐레이션 능력은 무엇이 가시적 담론으로 인정되는지를 형성해요.',
  ex4 = 'The broadcaster''s editorial power shapes the boundaries of legitimate debate.', ex4_ko = '방송사의 편집 능력은 정당한 토론의 경계를 형성해요.',
  ex5 = 'The network''s narrative power shapes who is treated as an expert.', ex5_ko = '네트워크의 서사 능력은 누가 전문가로 대우받는지를 형성해요.'
WHERE id = 's_media_C1_01';

UPDATE sentences SET
  ex1 = 'The proliferation of generative AI has fundamentally disrupted established journalism.', ex1_ko = '생성형 AI의 확산은 확립된 저널리즘을 근본적으로 혼란에 빠뜨렸어요.',
  ex2 = 'The rise of citizen journalism has fundamentally disrupted traditional newsrooms.', ex2_ko = '시민 저널리즘의 부상은 전통적인 뉴스룸을 근본적으로 혼란에 빠뜨렸어요.',
  ex3 = 'The dominance of streaming services has fundamentally disrupted cable broadcasting.', ex3_ko = '스트리밍 서비스의 지배는 케이블 방송을 근본적으로 혼란에 빠뜨렸어요.',
  ex4 = 'The shift to mobile-first content has fundamentally disrupted long-form journalism.', ex4_ko = '모바일 우선 콘텐츠로의 전환은 장문 저널리즘을 근본적으로 혼란에 빠뜨렸어요.',
  ex5 = 'The growth of creator economy has fundamentally disrupted advertising-funded media.', ex5_ko = '크리에이터 이코노미의 성장은 광고 기반 미디어를 근본적으로 혼란에 빠뜨렸어요.'
WHERE id = 's_media_C1_02';

UPDATE sentences SET
  ex1 = 'One could argue that the attention economy is designed to colonize our cognitive bandwidth.', ex1_ko = '관심 경제는 우리의 인지 대역폭을 식민화하도록 설계되어 있다고 주장할 수 있어요.',
  ex2 = 'One could argue that platform design is engineered to maximize compulsive engagement.', ex2_ko = '플랫폼 디자인은 강박적 참여를 극대화하도록 설계되어 있다고 주장할 수 있어요.',
  ex3 = 'One could argue that algorithmic curation amounts to invisible editorial power.', ex3_ko = '알고리즘 큐레이션은 보이지 않는 편집 권력에 해당한다고 주장할 수 있어요.',
  ex4 = 'One could argue that social media has become the new public square.', ex4_ko = '소셜 미디어가 새로운 공론장이 되었다고 주장할 수 있어요.',
  ex5 = 'One could argue that data extraction is the implicit price of free services.', ex5_ko = '데이터 추출이 무료 서비스의 암묵적 대가라고 주장할 수 있어요.'
WHERE id = 's_media_C1_03';

UPDATE sentences SET
  ex1 = 'What''s particularly troubling is the way disinformation campaigns exploit confirmation bias.', ex1_ko = '특히 걱정스러운 것은 허위정보 캠페인이 확증 편향을 악용하는 방식이에요.',
  ex2 = 'What''s particularly troubling is the way harassment exploits anonymity.', ex2_ko = '특히 걱정스러운 것은 괴롭힘이 익명성을 악용하는 방식이에요.',
  ex3 = 'What''s particularly troubling is the way data brokers exploit informed consent gaps.', ex3_ko = '특히 걱정스러운 것은 데이터 브로커들이 정보 동의의 공백을 악용하는 방식이에요.',
  ex4 = 'What''s particularly troubling is the way political ads exploit emotional triggers.', ex4_ko = '특히 걱정스러운 것은 정치 광고가 감정적 트리거를 악용하는 방식이에요.',
  ex5 = 'What''s particularly troubling is the way scammers exploit trust networks.', ex5_ko = '특히 걱정스러운 것은 사기꾼들이 신뢰 네트워크를 악용하는 방식이에요.'
WHERE id = 's_media_C1_04';

UPDATE sentences SET
  ex1 = 'Platform governance needs to balance user safety with creative freedom.', ex1_ko = '플랫폼 거버넌스는 사용자 안전과 창작의 자유 사이의 균형을 잡아야 해요.',
  ex2 = 'Content moderation needs to balance free expression with community standards.', ex2_ko = '콘텐츠 검열은 표현의 자유와 커뮤니티 기준 사이의 균형을 잡아야 해요.',
  ex3 = 'Privacy law needs to balance individual rights with public interest.', ex3_ko = '개인정보 보호법은 개인의 권리와 공익 사이의 균형을 잡아야 해요.',
  ex4 = 'Data policy needs to balance innovation with user protection.', ex4_ko = '데이터 정책은 혁신과 사용자 보호 사이의 균형을 잡아야 해요.',
  ex5 = 'Algorithmic regulation needs to balance transparency with proprietary interests.', ex5_ko = '알고리즘 규제는 투명성과 영업 비밀 이익 사이의 균형을 잡아야 해요.'
WHERE id = 's_media_C1_05';

UPDATE sentences SET
  ex1 = 'The erosion of editorial independence poses a long-term threat to democratic accountability.', ex1_ko = '편집권 독립의 침식은 민주적 책임에 장기적인 위협이 돼요.',
  ex2 = 'The concentration of platform ownership poses a long-term threat to media pluralism.', ex2_ko = '플랫폼 소유권 집중은 미디어 다원성에 장기적인 위협이 돼요.',
  ex3 = 'The collapse of local journalism poses a long-term threat to civic participation.', ex3_ko = '지역 저널리즘의 붕괴는 시민 참여에 장기적인 위협이 돼요.',
  ex4 = 'The rise of synthetic media poses a long-term threat to evidentiary trust.', ex4_ko = '합성 미디어의 부상은 증거적 신뢰에 장기적인 위협이 돼요.',
  ex5 = 'The decline of investigative reporting poses a long-term threat to institutional accountability.', ex5_ko = '탐사 보도의 쇠퇴는 제도적 책임에 장기적인 위협이 돼요.'
WHERE id = 's_media_C1_06';

UPDATE sentences SET
  ex1 = 'Unless we develop robust media literacy education, we will remain vulnerable to manipulation.', ex1_ko = '탄탄한 미디어 리터러시 교육을 개발하지 않으면 조작에 취약한 상태가 지속돼요.',
  ex2 = 'Unless we develop clear platform standards, we will remain at the mercy of opaque moderation.', ex2_ko = '명확한 플랫폼 기준을 개발하지 않으면 불투명한 검열에 좌우되는 상태가 지속돼요.',
  ex3 = 'Unless we develop strong data protections, we will remain exposed to surveillance economy.', ex3_ko = '강력한 데이터 보호를 개발하지 않으면 감시 경제에 노출된 상태가 지속돼요.',
  ex4 = 'Unless we develop ethical AI guidelines, we will remain prone to algorithmic bias.', ex4_ko = '윤리적 AI 가이드라인을 개발하지 않으면 알고리즘 편향에 노출된 상태가 지속돼요.',
  ex5 = 'Unless we develop better fact-checking infrastructure, we will remain susceptible to coordinated disinformation.', ex5_ko = '더 나은 팩트체크 인프라를 개발하지 않으면 조직적 허위정보에 취약한 상태가 지속돼요.'
WHERE id = 's_media_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Baudrillard''s concept of hyperreality suggests that the simulation no longer represents reality but has replaced it.', ex1_ko = '보드리야르의 초현실 개념은 시뮬레이션이 더 이상 현실을 재현하지 않고 현실 자체를 대체했음을 시사해요.',
  ex2 = 'Debord''s concept of the spectacle suggests that the image no longer represents life but has supplanted it.', ex2_ko = '드보르의 스펙터클 개념은 이미지가 더 이상 삶을 재현하지 않고 삶 자체를 대체했음을 시사해요.',
  ex3 = 'The notion of post-truth suggests that fact no longer constrains discourse but has dissolved within it.', ex3_ko = '포스트 진실 개념은 사실이 더 이상 담론을 제약하지 않고 담론 안에서 용해되었음을 시사해요.',
  ex4 = 'The age of attention suggests that information no longer informs but has merely circulated as currency.', ex4_ko = '관심의 시대는 정보가 더 이상 정보를 주지 않고 단지 화폐로 유통되어 왔음을 시사해요.',
  ex5 = 'The notion of platformization suggests that infrastructure no longer hosts media but has subsumed it.', ex5_ko = '플랫폼화의 개념은 인프라가 더 이상 미디어를 호스팅하지 않고 미디어를 포섭했음을 시사해요.'
WHERE id = 's_media_C2_01';

UPDATE sentences SET
  ex1 = 'From a Habermasian perspective, algorithmic curation fundamentally distorts the conditions for rational public discourse.', ex1_ko = '하버마스적 관점에서 보면 알고리즘 큐레이션은 합리적 공론장 담론의 조건을 근본적으로 왜곡해요.',
  ex2 = 'From a Foucauldian perspective, platform moderation operates as a diffuse mechanism of disciplinary power.', ex2_ko = '푸코적 관점에서 보면 플랫폼 검열은 분산된 규율 권력의 메커니즘으로 작동해요.',
  ex3 = 'From a Marxist perspective, the platform economy intensifies the commodification of subjectivity itself.', ex3_ko = '마르크스주의적 관점에서 보면 플랫폼 경제는 주체성 자체의 상품화를 심화해요.',
  ex4 = 'From a McLuhanesque perspective, the medium of the feed reshapes the very structure of attention.', ex4_ko = '맥루한적 관점에서 보면 피드라는 매체는 관심의 구조 자체를 재형성해요.',
  ex5 = 'From a feminist perspective, online harassment reflects the gendered architecture of public visibility.', ex5_ko = '페미니즘적 관점에서 보면 온라인 괴롭힘은 공적 가시성의 젠더화된 구조를 반영해요.'
WHERE id = 's_media_C2_02';

UPDATE sentences SET
  ex1 = 'The commodification of attention is arguably the defining logic of twenty-first-century media capitalism.', ex1_ko = '관심의 상품화는 21세기 미디어 자본주의의 결정적 논리라고 볼 수 있어요.',
  ex2 = 'The financialization of data is arguably the defining logic of contemporary platform economy.', ex2_ko = '데이터의 금융화는 현대 플랫폼 경제의 결정적 논리라고 볼 수 있어요.',
  ex3 = 'The personalization of feeds is arguably the defining logic of post-broadcast media.', ex3_ko = '피드의 개인화는 포스트 방송 미디어의 결정적 논리라고 볼 수 있어요.',
  ex4 = 'The gamification of engagement is arguably the defining logic of social platform design.', ex4_ko = '참여의 게임화는 소셜 플랫폼 디자인의 결정적 논리라고 볼 수 있어요.',
  ex5 = 'The acceleration of news cycles is arguably the defining logic of digital journalism.', ex5_ko = '뉴스 주기의 가속화는 디지털 저널리즘의 결정적 논리라고 볼 수 있어요.'
WHERE id = 's_media_C2_03';

UPDATE sentences SET
  ex1 = 'One cannot disentangle the question of media power from broader structures of political and economic hegemony.', ex1_ko = '미디어 권력의 문제는 정치·경제적 헤게모니의 광범위한 구조에서 분리할 수 없어요.',
  ex2 = 'One cannot disentangle the question of platform governance from broader structures of state sovereignty.', ex2_ko = '플랫폼 거버넌스의 문제는 국가 주권의 광범위한 구조에서 분리할 수 없어요.',
  ex3 = 'One cannot disentangle the question of algorithmic bias from broader structures of historical inequity.', ex3_ko = '알고리즘 편향의 문제는 역사적 불평등의 광범위한 구조에서 분리할 수 없어요.',
  ex4 = 'One cannot disentangle the question of online speech from broader structures of legal and cultural norms.', ex4_ko = '온라인 표현의 문제는 법적·문화적 규범의 광범위한 구조에서 분리할 수 없어요.',
  ex5 = 'One cannot disentangle the question of data ethics from broader structures of colonial extraction.', ex5_ko = '데이터 윤리의 문제는 식민지적 추출의 광범위한 구조에서 분리할 수 없어요.'
WHERE id = 's_media_C2_04';

UPDATE sentences SET
  ex1 = 'The epistemological implications of deepfake technology call into question the evidentiary status of audiovisual media.', ex1_ko = '딥페이크 기술의 인식론적 함의는 시청각 미디어의 증거적 지위에 의문을 제기해요.',
  ex2 = 'The ethical implications of generative AI call into question the authorial status of creative works.', ex2_ko = '생성형 AI의 윤리적 함의는 창작물의 저자적 지위에 의문을 제기해요.',
  ex3 = 'The political implications of opaque algorithms call into question the democratic status of online discourse.', ex3_ko = '불투명한 알고리즘의 정치적 함의는 온라인 담론의 민주적 지위에 의문을 제기해요.',
  ex4 = 'The legal implications of cross-border data flows call into question the territorial status of privacy regulation.', ex4_ko = '국경 간 데이터 흐름의 법적 함의는 개인정보 규제의 영토적 지위에 의문을 제기해요.',
  ex5 = 'The psychological implications of infinite scroll call into question the agentive status of the user.', ex5_ko = '무한 스크롤의 심리적 함의는 사용자의 행위자적 지위에 의문을 제기해요.'
WHERE id = 's_media_C2_05';

UPDATE sentences SET
  ex1 = 'Semiotics reveals how media texts encode ideological assumptions that audiences may naturalise without critical reflection.', ex1_ko = '기호학은 미디어 텍스트가 비판적 성찰 없이 수용자가 자연스럽게 받아들일 수 있는 이데올로기적 가정을 어떻게 코드화하는지 드러내요.',
  ex2 = 'Semiotics reveals how news photographs encode evaluative claims that viewers may interpret as objective evidence.', ex2_ko = '기호학은 뉴스 사진이 시청자가 객관적 증거로 해석할 수 있는 평가적 주장을 어떻게 코드화하는지 드러내요.',
  ex3 = 'Semiotics reveals how advertising encodes desires that consumers may experience as personal aspirations.', ex3_ko = '기호학은 광고가 소비자가 개인적 열망으로 경험할 수 있는 욕망을 어떻게 코드화하는지 드러내요.',
  ex4 = 'Semiotics reveals how user interfaces encode behavioral nudges that users may follow as natural impulses.', ex4_ko = '기호학은 사용자 인터페이스가 사용자가 자연스러운 충동으로 따를 수 있는 행동 유도를 어떻게 코드화하는지 드러내요.',
  ex5 = 'Semiotics reveals how political imagery encodes hierarchies of belonging that publics may absorb as common sense.', ex5_ko = '기호학은 정치 이미지가 대중이 상식으로 흡수할 수 있는 소속의 위계를 어떻게 코드화하는지 드러내요.'
WHERE id = 's_media_C2_06';

UPDATE sentences SET
  ex1 = 'To the extent that platforms function as ideological state apparatuses, regulating them is not merely a technical but a deeply political project.', ex1_ko = '플랫폼이 이데올로기적 국가 기구로 기능하는 한, 플랫폼 규제는 단순히 기술적인 것이 아니라 깊이 정치적인 프로젝트예요.',
  ex2 = 'To the extent that algorithms function as gatekeepers of public attention, auditing them is not merely a technical but a deeply democratic project.', ex2_ko = '알고리즘이 대중 관심의 게이트키퍼로 기능하는 한, 알고리즘 감사는 단순히 기술적인 것이 아니라 깊이 민주적인 프로젝트예요.',
  ex3 = 'To the extent that data extraction functions as a form of accumulation, contesting it is not merely a privacy but a deeply economic project.', ex3_ko = '데이터 추출이 축적의 한 형태로 기능하는 한, 그것에 맞서는 것은 단순히 사생활의 문제가 아니라 깊이 경제적인 프로젝트예요.',
  ex4 = 'To the extent that AI systems function as decision-makers, auditing them is not merely a technical but a deeply ethical project.', ex4_ko = 'AI 시스템이 의사결정자로 기능하는 한, AI 감사는 단순히 기술적인 것이 아니라 깊이 윤리적인 프로젝트예요.',
  ex5 = 'To the extent that media outlets function as agenda setters, holding them accountable is not merely a journalistic but a deeply civic project.', ex5_ko = '미디어 매체가 의제 설정자로 기능하는 한, 그들에 책임을 묻는 것은 단순히 저널리즘적인 것이 아니라 깊이 시민적인 프로젝트예요.'
WHERE id = 's_media_C2_07';

-- ── negotiation ──
-- EngCat — Negotiation topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Can we agree on the price?', ex1_ko = '가격에 합의할 수 있을까요?',
  ex2 = 'Can we agree on the date?', ex2_ko = '날짜에 합의할 수 있을까요?',
  ex3 = 'Can we agree on the next step?', ex3_ko = '다음 단계에 합의할 수 있을까요?',
  ex4 = 'Can we agree on the basic terms?', ex4_ko = '기본 조건에 합의할 수 있을까요?',
  ex5 = 'Can we agree on a follow-up meeting?', ex5_ko = '후속 회의에 합의할 수 있을까요?'
WHERE id = 's_negotiation_A1_01';

UPDATE sentences SET
  ex1 = 'I want a better deal.', ex1_ko = '더 좋은 조건을 원해요.',
  ex2 = 'I want a longer warranty.', ex2_ko = '더 긴 보증을 원해요.',
  ex3 = 'I want a faster delivery.', ex3_ko = '더 빠른 배송을 원해요.',
  ex4 = 'I want a clearer contract.', ex4_ko = '더 명확한 계약을 원해요.',
  ex5 = 'I want a fair price.', ex5_ko = '공정한 가격을 원해요.'
WHERE id = 's_negotiation_A1_02';

UPDATE sentences SET
  ex1 = 'Can you give me a discount on this?', ex1_ko = '이거 할인해 주실 수 있나요?',
  ex2 = 'Can you give me a discount for paying cash?', ex2_ko = '현금 결제 할인을 해 주실 수 있나요?',
  ex3 = 'Can you give me a discount as a regular customer?', ex3_ko = '단골 손님 할인을 해 주실 수 있나요?',
  ex4 = 'Can you give me a discount for buying two?', ex4_ko = '두 개 구매 시 할인을 해 주실 수 있나요?',
  ex5 = 'Can you give me a discount if I sign today?', ex5_ko = '오늘 계약하면 할인을 해 주실 수 있나요?'
WHERE id = 's_negotiation_A1_03';

UPDATE sentences SET
  ex1 = 'I need more time to think about it.', ex1_ko = '생각해 볼 시간이 더 필요해요.',
  ex2 = 'I need more time to review the contract.', ex2_ko = '계약을 검토할 시간이 더 필요해요.',
  ex3 = 'I need more time to consult my team.', ex3_ko = '팀과 상의할 시간이 더 필요해요.',
  ex4 = 'I need more time to compare offers.', ex4_ko = '제안들을 비교할 시간이 더 필요해요.',
  ex5 = 'I need more time before signing.', ex5_ko = '서명하기 전에 시간이 더 필요해요.'
WHERE id = 's_negotiation_A1_04';

UPDATE sentences SET
  ex1 = 'Is that your best offer for today?', ex1_ko = '오늘 최선의 제안이 그것인가요?',
  ex2 = 'Is that your best offer including shipping?', ex2_ko = '배송 포함해서 최선의 제안이 그것인가요?',
  ex3 = 'Is that your best offer or can you do better?', ex3_ko = '그게 최선의 제안인가요, 아니면 더 가능하신가요?',
  ex4 = 'Is that your best offer for cash payment?', ex4_ko = '현금 결제 시 최선의 제안이 그것인가요?',
  ex5 = 'Is that your best offer for the whole package?', ex5_ko = '전체 패키지 최선의 제안이 그것인가요?'
WHERE id = 's_negotiation_A1_05';

UPDATE sentences SET
  ex1 = 'Let''s try to work this out together.', ex1_ko = '함께 해결해 보도록 해요.',
  ex2 = 'Let''s try to find common ground.', ex2_ko = '공통점을 찾아 보도록 해요.',
  ex3 = 'Let''s try to reach an agreement today.', ex3_ko = '오늘 합의에 이르도록 해요.',
  ex4 = 'Let''s try to make this work for both sides.', ex4_ko = '양쪽 모두에게 좋은 방향으로 해 보도록 해요.',
  ex5 = 'Let''s try to keep this professional.', ex5_ko = '전문적으로 진행하도록 해요.'
WHERE id = 's_negotiation_A1_06';

UPDATE sentences SET
  ex1 = 'I think we can agree on the timeline.', ex1_ko = '일정에서 합의할 수 있을 것 같아요.',
  ex2 = 'I think we can agree on the main points.', ex2_ko = '주요 사항에서 합의할 수 있을 것 같아요.',
  ex3 = 'I think we can agree on the basics first.', ex3_ko = '먼저 기본 사항에서 합의할 수 있을 것 같아요.',
  ex4 = 'I think we can agree on a fair split.', ex4_ko = '공정한 분할에 합의할 수 있을 것 같아요.',
  ex5 = 'I think we can agree on the goals.', ex5_ko = '목표에서 합의할 수 있을 것 같아요.'
WHERE id = 's_negotiation_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Could you reduce the price by ten percent?', ex1_ko = '가격을 10% 낮춰주실 수 있나요?',
  ex2 = 'Could you reduce the deposit a little?', ex2_ko = '보증금을 조금 낮춰주실 수 있나요?',
  ex3 = 'Could you reduce the fee for the first month?', ex3_ko = '첫 달 수수료를 낮춰주실 수 있나요?',
  ex4 = 'Could you reduce the minimum order quantity?', ex4_ko = '최소 주문 수량을 낮춰주실 수 있나요?',
  ex5 = 'Could you reduce the cancellation penalty?', ex5_ko = '취소 위약금을 낮춰주실 수 있나요?'
WHERE id = 's_negotiation_A2_01';

UPDATE sentences SET
  ex1 = 'If you lower the price, we''ll sign today.', ex1_ko = '가격을 낮춰주시면 오늘 계약할게요.',
  ex2 = 'If you lower the price, we''ll order more units.', ex2_ko = '가격을 낮춰주시면 더 많이 주문할게요.',
  ex3 = 'If you lower the price, we''ll recommend you to our partners.', ex3_ko = '가격을 낮춰주시면 파트너들에게 추천할게요.',
  ex4 = 'If you lower the price, we''ll commit to a longer contract.', ex4_ko = '가격을 낮춰주시면 더 긴 계약을 체결할게요.',
  ex5 = 'If you lower the price, we''ll pay upfront.', ex5_ko = '가격을 낮춰주시면 선불로 결제할게요.'
WHERE id = 's_negotiation_A2_02';

UPDATE sentences SET
  ex1 = 'What discount can you offer for early payment?', ex1_ko = '조기 결제 시 어떤 할인을 제공할 수 있나요?',
  ex2 = 'What discount can you offer for repeat customers?', ex2_ko = '재구매 고객에게 어떤 할인을 제공할 수 있나요?',
  ex3 = 'What discount can you offer for a multi-year contract?', ex3_ko = '다년 계약 시 어떤 할인을 제공할 수 있나요?',
  ex4 = 'What discount can you offer for non-profit organizations?', ex4_ko = '비영리 단체에 어떤 할인을 제공할 수 있나요?',
  ex5 = 'What discount can you offer for paying in full?', ex5_ko = '일시불 결제 시 어떤 할인을 제공할 수 있나요?'
WHERE id = 's_negotiation_A2_03';

UPDATE sentences SET
  ex1 = 'That''s a bit over our budget — can we meet in the middle?', ex1_ko = '예산을 조금 초과하네요. 중간 지점에서 만날 수 있을까요?',
  ex2 = 'That''s a bit beyond our timeline — can we meet in the middle?', ex2_ko = '저희 일정을 조금 넘기네요. 중간 지점에서 만날 수 있을까요?',
  ex3 = 'That''s a bit higher than expected — can we meet in the middle?', ex3_ko = '예상보다 좀 높네요. 중간 지점에서 만날 수 있을까요?',
  ex4 = 'That''s a bit too restrictive — can we meet in the middle?', ex4_ko = '조금 제한적이네요. 중간 지점에서 만날 수 있을까요?',
  ex5 = 'That''s a bit more than agreed — can we meet in the middle?', ex5_ko = '합의보다 좀 많네요. 중간 지점에서 만날 수 있을까요?'
WHERE id = 's_negotiation_A2_04';

UPDATE sentences SET
  ex1 = 'Can we include installation in the deal?', ex1_ko = '거래에 설치를 포함시킬 수 있나요?',
  ex2 = 'Can we include training in the deal?', ex2_ko = '거래에 교육을 포함시킬 수 있나요?',
  ex3 = 'Can we include support for one year in the deal?', ex3_ko = '거래에 1년 지원을 포함시킬 수 있나요?',
  ex4 = 'Can we include extra accessories in the deal?', ex4_ko = '거래에 추가 액세서리를 포함시킬 수 있나요?',
  ex5 = 'Can we include a payment plan in the deal?', ex5_ko = '거래에 분할 결제를 포함시킬 수 있나요?'
WHERE id = 's_negotiation_A2_05';

UPDATE sentences SET
  ex1 = 'We''d like to confirm the delivery date in writing.', ex1_ko = '납품일을 서면으로 확인하고 싶어요.',
  ex2 = 'We''d like to confirm the warranty terms in writing.', ex2_ko = '보증 조건을 서면으로 확인하고 싶어요.',
  ex3 = 'We''d like to confirm the cancellation policy in writing.', ex3_ko = '취소 정책을 서면으로 확인하고 싶어요.',
  ex4 = 'We''d like to confirm the discount agreement in writing.', ex4_ko = '할인 합의를 서면으로 확인하고 싶어요.',
  ex5 = 'We''d like to confirm the service scope in writing.', ex5_ko = '서비스 범위를 서면으로 확인하고 싶어요.'
WHERE id = 's_negotiation_A2_06';

UPDATE sentences SET
  ex1 = 'Is there any flexibility on the payment terms?', ex1_ko = '결제 조건에 유연성이 있나요?',
  ex2 = 'Is there any flexibility on the start date?', ex2_ko = '시작 날짜에 유연성이 있나요?',
  ex3 = 'Is there any flexibility on the warranty period?', ex3_ko = '보증 기간에 유연성이 있나요?',
  ex4 = 'Is there any flexibility on the contract length?', ex4_ko = '계약 기간에 유연성이 있나요?',
  ex5 = 'Is there any flexibility on the cancellation fee?', ex5_ko = '취소 수수료에 유연성이 있나요?'
WHERE id = 's_negotiation_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'We''re prepared to commit to a three-year contract if you can waive the setup fee.', ex1_ko = '설치 수수료를 면제해 주시면 3년 계약을 체결할 준비가 돼 있어요.',
  ex2 = 'We''re prepared to commit to an exclusive partnership if you can guarantee priority service.', ex2_ko = '우선 서비스를 보장해 주시면 독점 파트너십을 체결할 준비가 돼 있어요.',
  ex3 = 'We''re prepared to commit to a larger order if you can match the competitor''s price.', ex3_ko = '경쟁사 가격에 맞춰주시면 더 큰 주문을 할 준비가 돼 있어요.',
  ex4 = 'We''re prepared to commit to a multi-year deal if you can offer a price cap.', ex4_ko = '가격 상한을 제시해 주시면 다년 거래를 체결할 준비가 돼 있어요.',
  ex5 = 'We''re prepared to commit to upfront payment if you can extend the warranty.', ex5_ko = '보증을 연장해 주시면 선불 결제할 준비가 돼 있어요.'
WHERE id = 's_negotiation_B1_01';

UPDATE sentences SET
  ex1 = 'Would you be open to a counterproposal on the payment schedule?', ex1_ko = '결제 일정에 대한 역제안을 받아들이실 수 있나요?',
  ex2 = 'Would you be open to a counterproposal on the scope of work?', ex2_ko = '업무 범위에 대한 역제안을 받아들이실 수 있나요?',
  ex3 = 'Would you be open to a counterproposal on the termination clause?', ex3_ko = '계약 해지 조항에 대한 역제안을 받아들이실 수 있나요?',
  ex4 = 'Would you be open to a counterproposal on the volume commitment?', ex4_ko = '물량 약정에 대한 역제안을 받아들이실 수 있나요?',
  ex5 = 'Would you be open to a counterproposal on the pricing structure?', ex5_ko = '가격 구조에 대한 역제안을 받아들이실 수 있나요?'
WHERE id = 's_negotiation_B1_02';

UPDATE sentences SET
  ex1 = 'Our position is that the late delivery penalty needs to be capped.', ex1_ko = '지연 납품 위약금에 상한이 있어야 한다는 것이 우리의 입장이에요.',
  ex2 = 'Our position is that intellectual property must remain with us.', ex2_ko = '지적재산권은 우리에게 남아야 한다는 것이 우리의 입장이에요.',
  ex3 = 'Our position is that the warranty must cover all parts.', ex3_ko = '보증은 모든 부품을 포함해야 한다는 것이 우리의 입장이에요.',
  ex4 = 'Our position is that the audit rights must be retained.', ex4_ko = '감사 권한이 유지되어야 한다는 것이 우리의 입장이에요.',
  ex5 = 'Our position is that pricing must be benchmarked annually.', ex5_ko = '가격이 매년 벤치마킹되어야 한다는 것이 우리의 입장이에요.'
WHERE id = 's_negotiation_B1_03';

UPDATE sentences SET
  ex1 = 'We can agree to that clause, provided that delivery is guaranteed by Friday.', ex1_ko = '금요일까지 배송이 보장된다면 해당 조항에 동의할 수 있어요.',
  ex2 = 'We can agree to that clause, provided that liability is mutually capped.', ex2_ko = '책임이 상호 제한된다면 해당 조항에 동의할 수 있어요.',
  ex3 = 'We can agree to that clause, provided that an exit option is included.', ex3_ko = '해지 옵션이 포함된다면 해당 조항에 동의할 수 있어요.',
  ex4 = 'We can agree to that clause, provided that pricing is locked for two years.', ex4_ko = '가격이 2년 동안 고정된다면 해당 조항에 동의할 수 있어요.',
  ex5 = 'We can agree to that clause, provided that confidentiality is mutual.', ex5_ko = '비밀 유지가 상호적이라면 해당 조항에 동의할 수 있어요.'
WHERE id = 's_negotiation_B1_04';

UPDATE sentences SET
  ex1 = 'We have a firm deadline of next Monday, so we''ll need a decision by then.', ex1_ko = '다음 주 월요일이 확정 마감일이라 그때까지 결정이 필요해요.',
  ex2 = 'We have a firm deadline of the quarter''s end, so we''ll need clarity by then.', ex2_ko = '이번 분기 말이 확정 마감일이라 그때까지 명확성이 필요해요.',
  ex3 = 'We have a firm deadline of the fiscal year, so we''ll need approval by then.', ex3_ko = '회계연도가 확정 마감일이라 그때까지 승인이 필요해요.',
  ex4 = 'We have a firm deadline imposed by our board, so we''ll need terms by then.', ex4_ko = '이사회가 부과한 확정 마감일이 있어 그때까지 조건이 필요해요.',
  ex5 = 'We have a firm deadline tied to the launch, so we''ll need closure by then.', ex5_ko = '출시와 연계된 확정 마감일이 있어 그때까지 마무리가 필요해요.'
WHERE id = 's_negotiation_B1_05';

UPDATE sentences SET
  ex1 = 'All stakeholders have agreed on the framework, so let''s move to the contract drafting.', ex1_ko = '모든 이해관계자가 프레임워크에 동의했으니 계약 초안 작성으로 넘어가요.',
  ex2 = 'All stakeholders have agreed on the timeline, so let''s move to the resource allocation.', ex2_ko = '모든 이해관계자가 일정에 동의했으니 자원 배분으로 넘어가요.',
  ex3 = 'All stakeholders have agreed on the scope, so let''s move to the budget approval.', ex3_ko = '모든 이해관계자가 범위에 동의했으니 예산 승인으로 넘어가요.',
  ex4 = 'All stakeholders have agreed on the principles, so let''s move to the implementation details.', ex4_ko = '모든 이해관계자가 원칙에 동의했으니 실행 세부사항으로 넘어가요.',
  ex5 = 'All stakeholders have agreed on the priorities, so let''s move to the action items.', ex5_ko = '모든 이해관계자가 우선순위에 동의했으니 실행 항목으로 넘어가요.'
WHERE id = 's_negotiation_B1_06';

UPDATE sentences SET
  ex1 = 'If we can''t reach a compromise today, we may need to escalate this issue.', ex1_ko = '오늘 타협에 이르지 못하면 이 문제를 상부로 보고해야 할 수도 있어요.',
  ex2 = 'If we can''t reach a compromise today, we may need to bring in legal counsel.', ex2_ko = '오늘 타협에 이르지 못하면 법률 자문을 들여야 할 수도 있어요.',
  ex3 = 'If we can''t reach a compromise today, we may need to extend the timeline.', ex3_ko = '오늘 타협에 이르지 못하면 일정을 연장해야 할 수도 있어요.',
  ex4 = 'If we can''t reach a compromise today, we may need to consider alternative suppliers.', ex4_ko = '오늘 타협에 이르지 못하면 대체 공급업체를 고려해야 할 수도 있어요.',
  ex5 = 'If we can''t reach a compromise today, we may need to pause the project.', ex5_ko = '오늘 타협에 이르지 못하면 프로젝트를 일시 중단해야 할 수도 있어요.'
WHERE id = 's_negotiation_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The liability clause as drafted exposes us to unlimited damages, which we cannot accept.', ex1_ko = '현재 초안의 책임 조항은 무제한 손해를 노출시켜서 받아들일 수 없어요.',
  ex2 = 'The non-compete clause as drafted exposes us to overly broad restrictions, which we cannot accept.', ex2_ko = '현재 초안의 경업 금지 조항은 과도하게 광범위한 제한을 부과해서 받아들일 수 없어요.',
  ex3 = 'The indemnification clause as drafted exposes us to claims by third parties, which we cannot accept.', ex3_ko = '현재 초안의 면책 조항은 제3자 청구에 노출시켜서 받아들일 수 없어요.',
  ex4 = 'The termination clause as drafted exposes us to arbitrary cancellation, which we cannot accept.', ex4_ko = '현재 초안의 해지 조항은 자의적 취소에 노출시켜서 받아들일 수 없어요.',
  ex5 = 'The IP transfer clause as drafted exposes us to loss of pre-existing rights, which we cannot accept.', ex5_ko = '현재 초안의 지적재산권 이전 조항은 기존 권리 상실에 노출시켜서 받아들일 수 없어요.'
WHERE id = 's_negotiation_B2_01';

UPDATE sentences SET
  ex1 = 'We propose that any disputes be referred to arbitration in Singapore.', ex1_ko = '모든 분쟁은 싱가포르에서의 중재에 회부할 것을 제안해요.',
  ex2 = 'We propose that any disputes be referred to expert determination first.', ex2_ko = '모든 분쟁은 먼저 전문가 판단에 회부할 것을 제안해요.',
  ex3 = 'We propose that any disputes be referred to mediation before litigation.', ex3_ko = '모든 분쟁은 소송 전에 조정에 회부할 것을 제안해요.',
  ex4 = 'We propose that any disputes be referred to a panel of three arbitrators.', ex4_ko = '모든 분쟁은 3인 중재 패널에 회부할 것을 제안해요.',
  ex5 = 'We propose that any disputes be referred to the local commercial court.', ex5_ko = '모든 분쟁은 지역 상사 법원에 회부할 것을 제안해요.'
WHERE id = 's_negotiation_B2_02';

UPDATE sentences SET
  ex1 = 'The warranty period should be extended to thirty-six months to align with industry standards.', ex1_ko = '산업 표준에 맞추기 위해 보증 기간을 36개월로 연장해야 해요.',
  ex2 = 'The notice period should be extended to ninety days to align with industry standards.', ex2_ko = '산업 표준에 맞추기 위해 통보 기간을 90일로 연장해야 해요.',
  ex3 = 'The cure period should be extended to thirty days to align with industry standards.', ex3_ko = '산업 표준에 맞추기 위해 시정 기간을 30일로 연장해야 해요.',
  ex4 = 'The payment terms should be extended to net sixty to align with industry standards.', ex4_ko = '산업 표준에 맞추기 위해 결제 조건을 60일 후 결제로 연장해야 해요.',
  ex5 = 'The audit window should be extended to seven years to align with industry standards.', ex5_ko = '산업 표준에 맞추기 위해 감사 기간을 7년으로 연장해야 해요.'
WHERE id = 's_negotiation_B2_03';

UPDATE sentences SET
  ex1 = 'Payment will be released from escrow only upon completion of all milestones.', ex1_ko = '모든 마일스톤 완료 후에만 에스크로에서 지불이 해제돼요.',
  ex2 = 'Payment will be released from escrow only upon delivery and customer acceptance.', ex2_ko = '배송 및 고객 승인 후에만 에스크로에서 지불이 해제돼요.',
  ex3 = 'Payment will be released from escrow only upon submission of certified test results.', ex3_ko = '인증된 시험 결과 제출 후에만 에스크로에서 지불이 해제돼요.',
  ex4 = 'Payment will be released from escrow only upon final regulatory approval.', ex4_ko = '최종 규제 승인 후에만 에스크로에서 지불이 해제돼요.',
  ex5 = 'Payment will be released from escrow only upon mutual sign-off.', ex5_ko = '상호 사인오프 후에만 에스크로에서 지불이 해제돼요.'
WHERE id = 's_negotiation_B2_04';

UPDATE sentences SET
  ex1 = 'We need to include a force majeure clause covering natural disasters and government action.', ex1_ko = '자연 재해와 정부 조치를 포함하는 불가항력 조항이 필요해요.',
  ex2 = 'We need to include a force majeure clause covering cyber attacks and data breaches.', ex2_ko = '사이버 공격과 데이터 유출을 포함하는 불가항력 조항이 필요해요.',
  ex3 = 'We need to include a force majeure clause covering labor strikes and supply disruptions.', ex3_ko = '노동 파업과 공급 중단을 포함하는 불가항력 조항이 필요해요.',
  ex4 = 'We need to include a force majeure clause covering geopolitical conflict and sanctions.', ex4_ko = '지정학적 갈등과 제재를 포함하는 불가항력 조항이 필요해요.',
  ex5 = 'We need to include a force majeure clause covering public health emergencies.', ex5_ko = '공중 보건 비상사태를 포함하는 불가항력 조항이 필요해요.'
WHERE id = 's_negotiation_B2_05';

UPDATE sentences SET
  ex1 = 'The liquidated damages rate of three percent per week is disproportionate and should be reduced.', ex1_ko = '주당 3%의 약정 손해배상률은 과도하므로 낮춰야 해요.',
  ex2 = 'The minimum order quantity of ten thousand units is disproportionate and should be reduced.', ex2_ko = '최소 주문 수량 1만 개는 과도하므로 낮춰야 해요.',
  ex3 = 'The cancellation penalty of fifty percent is disproportionate and should be reduced.', ex3_ko = '50% 취소 위약금은 과도하므로 낮춰야 해요.',
  ex4 = 'The exclusivity period of ten years is disproportionate and should be reduced.', ex4_ko = '10년 독점 기간은 과도하므로 낮춰야 해요.',
  ex5 = 'The personal guarantee scope is disproportionate and should be reduced.', ex5_ko = '개인 보증 범위는 과도하므로 낮춰야 해요.'
WHERE id = 's_negotiation_B2_06';

UPDATE sentences SET
  ex1 = 'Both parties should ratify the final agreement by the end of next week to avoid further delays.', ex1_ko = '추가 지연을 피하기 위해 양 당사자가 다음 주 말까지 최종 합의를 비준해야 해요.',
  ex2 = 'Both parties should ratify the heads of agreement before the board meeting to avoid further delays.', ex2_ko = '추가 지연을 피하기 위해 양 당사자가 이사회 전까지 합의서 요점을 비준해야 해요.',
  ex3 = 'Both parties should ratify the amendment before financial close to avoid further delays.', ex3_ko = '추가 지연을 피하기 위해 양 당사자가 자금 결산 전까지 수정안을 비준해야 해요.',
  ex4 = 'Both parties should ratify the term sheet before exclusivity expires to avoid further delays.', ex4_ko = '추가 지연을 피하기 위해 양 당사자가 독점 기간 만료 전까지 텀시트를 비준해야 해요.',
  ex5 = 'Both parties should ratify the settlement by the deadline to avoid further delays.', ex5_ko = '추가 지연을 피하기 위해 양 당사자가 마감일까지 합의를 비준해야 해요.'
WHERE id = 's_negotiation_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The fiduciary obligations imposed on the directors preclude entering into a related-party transaction without disclosure.', ex1_ko = '이사들에게 부과된 신탁 의무는 공개 없이 특수관계자 거래를 체결하는 것을 배제해요.',
  ex2 = 'The fiduciary obligations imposed on the agent preclude personal profit from this opportunity.', ex2_ko = '대리인에게 부과된 신탁 의무는 이 기회에서 개인적 이익을 얻는 것을 배제해요.',
  ex3 = 'The fiduciary obligations imposed on the manager preclude diverting corporate opportunity.', ex3_ko = '경영자에게 부과된 신탁 의무는 기업 기회를 전용하는 것을 배제해요.',
  ex4 = 'The fiduciary obligations imposed on the partner preclude competing with the firm''s interests.', ex4_ko = '파트너에게 부과된 신탁 의무는 회사의 이익과 경쟁하는 것을 배제해요.',
  ex5 = 'The fiduciary obligations imposed on the trustee preclude favoring one beneficiary over another.', ex5_ko = '수탁자에게 부과된 신탁 의무는 한 수익자를 다른 수익자보다 우대하는 것을 배제해요.'
WHERE id = 's_negotiation_C1_01';

UPDATE sentences SET
  ex1 = 'The mortgage held by the lender must be discharged prior to closing.', ex1_ko = '대출 기관이 보유한 모기지는 마감 전에 해제돼야 해요.',
  ex2 = 'The security interest held by the bank must be discharged prior to assignment.', ex2_ko = '은행이 보유한 담보권은 양도 전에 해제돼야 해요.',
  ex3 = 'The encumbrance held by the supplier must be discharged prior to sale.', ex3_ko = '공급업체가 보유한 부담은 매각 전에 해제돼야 해요.',
  ex4 = 'The charge held by the bondholder must be discharged prior to restructuring.', ex4_ko = '채권자가 보유한 담보는 구조조정 전에 해제돼야 해요.',
  ex5 = 'The claim held by the tax authority must be discharged prior to dividend payment.', ex5_ko = '세무 당국이 보유한 청구는 배당금 지급 전에 해제돼야 해요.'
WHERE id = 's_negotiation_C1_02';

UPDATE sentences SET
  ex1 = 'We are seeking an injunction to restrain the respondent from disclosing confidential information.', ex1_ko = '피응답인이 기밀 정보를 공개하는 것을 막기 위해 금지 명령을 구하고 있어요.',
  ex2 = 'We are seeking an injunction to restrain the defendant from soliciting our clients.', ex2_ko = '피고가 저희 고객을 영입하는 것을 막기 위해 금지 명령을 구하고 있어요.',
  ex3 = 'We are seeking an injunction to restrain the former employee from joining a competitor.', ex3_ko = '전직 직원이 경쟁사에 합류하는 것을 막기 위해 금지 명령을 구하고 있어요.',
  ex4 = 'We are seeking an injunction to restrain the licensee from continuing unauthorized use.', ex4_ko = '라이선시가 무단 사용을 계속하는 것을 막기 위해 금지 명령을 구하고 있어요.',
  ex5 = 'We are seeking an injunction to restrain the publisher from circulating the work.', ex5_ko = '출판사가 그 작품을 유통시키는 것을 막기 위해 금지 명령을 구하고 있어요.'
WHERE id = 's_negotiation_C1_03';

UPDATE sentences SET
  ex1 = 'The remedy available for breach of this covenant is specific performance, not merely damages.', ex1_ko = '이 약정 위반에 대한 구제책은 손해배상뿐만 아니라 특정 이행이에요.',
  ex2 = 'The remedy available for breach of confidentiality is injunctive relief, not merely damages.', ex2_ko = '비밀유지 위반에 대한 구제책은 손해배상뿐만 아니라 금지 명령이에요.',
  ex3 = 'The remedy available for repudiation is termination of contract, not merely damages.', ex3_ko = '계약 부인에 대한 구제책은 손해배상뿐만 아니라 계약 해지예요.',
  ex4 = 'The remedy available for unjust enrichment is restitution, not merely damages.', ex4_ko = '부당 이득에 대한 구제책은 손해배상뿐만 아니라 원상 회복이에요.',
  ex5 = 'The remedy available for breach of fiduciary duty is account of profits, not merely damages.', ex5_ko = '신탁 의무 위반에 대한 구제책은 손해배상뿐만 아니라 이익 정산이에요.'
WHERE id = 's_negotiation_C1_04';

UPDATE sentences SET
  ex1 = 'The jurisdiction clause designates London as the exclusive forum for all disputes.', ex1_ko = '관할권 조항은 모든 분쟁에 대해 런던을 독점적 법정지로 지정해요.',
  ex2 = 'The arbitration clause designates ICC rules as the governing procedure.', ex2_ko = '중재 조항은 ICC 규정을 적용 절차로 지정해요.',
  ex3 = 'The governing law clause designates Singaporean law as the applicable system.', ex3_ko = '준거법 조항은 싱가포르 법을 적용 법제로 지정해요.',
  ex4 = 'The escalation clause designates senior management as the first dispute forum.', ex4_ko = '단계적 해결 조항은 고위 경영진을 1차 분쟁 협의 장소로 지정해요.',
  ex5 = 'The notice clause designates email as the valid method of communication.', ex5_ko = '통지 조항은 이메일을 유효한 의사소통 방법으로 지정해요.'
WHERE id = 's_negotiation_C1_05';

UPDATE sentences SET
  ex1 = 'Subrogation rights vest in the insurer upon payment of the insured''s claim.', ex1_ko = '피보험자의 청구 지급 시 보험사에게 대위 청구권이 발생해요.',
  ex2 = 'Subrogation rights vest in the surety upon discharge of the principal debt.', ex2_ko = '주채무 변제 시 보증인에게 대위 청구권이 발생해요.',
  ex3 = 'Subrogation rights vest in the guarantor upon satisfaction of the underlying obligation.', ex3_ko = '기초 의무 이행 시 보증인에게 대위 청구권이 발생해요.',
  ex4 = 'Subrogation rights vest in the indemnifier upon settlement of the indemnified loss.', ex4_ko = '면책 손실 정산 시 면책 제공자에게 대위 청구권이 발생해요.',
  ex5 = 'Subrogation rights vest in the issuer upon honoring of the letter of credit.', ex5_ko = '신용장 결제 시 발행은행에게 대위 청구권이 발생해요.'
WHERE id = 's_negotiation_C1_06';

UPDATE sentences SET
  ex1 = 'The conditions precedent to closing have not been satisfied, suspending the buyer''s obligation to fund.', ex1_ko = '마감의 선행 조건이 충족되지 않아 매수인의 자금 의무가 정지됐어요.',
  ex2 = 'The conditions precedent to release have not been satisfied, suspending the escrow agent''s duty to disburse.', ex2_ko = '해제의 선행 조건이 충족되지 않아 에스크로 대리인의 지급 의무가 정지됐어요.',
  ex3 = 'The conditions precedent to issuance have not been satisfied, suspending the guarantor''s liability.', ex3_ko = '발행의 선행 조건이 충족되지 않아 보증인의 책임이 정지됐어요.',
  ex4 = 'The conditions precedent to assignment have not been satisfied, suspending the right of substitution.', ex4_ko = '양도의 선행 조건이 충족되지 않아 대체 권리가 정지됐어요.',
  ex5 = 'The conditions precedent to performance have not been satisfied, suspending the contractor''s duty to proceed.', ex5_ko = '이행의 선행 조건이 충족되지 않아 도급인의 진행 의무가 정지됐어요.'
WHERE id = 's_negotiation_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The doctrine of promissory estoppel bars the defendant from resiling from the assurance given during the side-letter discussions.', ex1_ko = '약속적 금반언 원칙은 피고가 부속 서한 논의 중 한 확약에서 후퇴하는 것을 막아요.',
  ex2 = 'The doctrine of promissory estoppel bars the licensor from resiling from the conduct that induced reliance.', ex2_ko = '약속적 금반언 원칙은 라이선서가 신뢰를 유도한 행위에서 후퇴하는 것을 막아요.',
  ex3 = 'The doctrine of promissory estoppel bars the seller from resiling from the representation made about title.', ex3_ko = '약속적 금반언 원칙은 매도인이 소유권에 대해 한 진술에서 후퇴하는 것을 막아요.',
  ex4 = 'The doctrine of promissory estoppel bars the landlord from resiling from the assurance about renewal terms.', ex4_ko = '약속적 금반언 원칙은 임대인이 갱신 조건에 대한 확약에서 후퇴하는 것을 막아요.',
  ex5 = 'The doctrine of promissory estoppel bars the employer from resiling from the promise of severance.', ex5_ko = '약속적 금반언 원칙은 고용주가 퇴직금 약속에서 후퇴하는 것을 막아요.'
WHERE id = 's_negotiation_C2_01';

UPDATE sentences SET
  ex1 = 'Quantum meruit entitles the contractor to reasonable remuneration for work performed outside the contractual scope.', ex1_ko = '계약 범위 외 수행된 작업에 대해 도급인은 합리적인 보수를 청구할 권리가 있어요.',
  ex2 = 'Quantum meruit entitles the consultant to reasonable remuneration for advisory services rendered in good faith.', ex2_ko = '선의로 제공된 자문 서비스에 대해 컨설턴트는 합리적인 보수를 청구할 권리가 있어요.',
  ex3 = 'Quantum meruit entitles the agent to reasonable remuneration for procurement efforts undertaken on the principal''s behalf.', ex3_ko = '본인을 대신하여 수행된 조달 노력에 대해 대리인은 합리적인 보수를 청구할 권리가 있어요.',
  ex4 = 'Quantum meruit entitles the supplier to reasonable remuneration for goods delivered under a void contract.', ex4_ko = '무효 계약 하에서 납품된 상품에 대해 공급자는 합리적인 보수를 청구할 권리가 있어요.',
  ex5 = 'Quantum meruit entitles the professional to reasonable remuneration where formal fee terms were never finalised.', ex5_ko = '공식 수수료 조건이 확정되지 않은 경우 전문가는 합리적인 보수를 청구할 권리가 있어요.'
WHERE id = 's_negotiation_C2_02';

UPDATE sentences SET
  ex1 = 'The contract is void ab initio on the grounds of economic duress applied during the execution phase.', ex1_ko = '계약 체결 단계에서 가해진 경제적 강박을 이유로 계약은 처음부터 무효예요.',
  ex2 = 'The contract is void ab initio on the grounds of fundamental mistake regarding the subject matter.', ex2_ko = '거래 대상에 관한 근본적 착오를 이유로 계약은 처음부터 무효예요.',
  ex3 = 'The contract is void ab initio on the grounds of illegality at the time of formation.', ex3_ko = '체결 시점의 위법성을 이유로 계약은 처음부터 무효예요.',
  ex4 = 'The contract is void ab initio on the grounds of incapacity of the contracting party.', ex4_ko = '계약 당사자의 무능력을 이유로 계약은 처음부터 무효예요.',
  ex5 = 'The contract is void ab initio on the grounds of fraudulent misrepresentation by the seller.', ex5_ko = '매도인의 사기적 허위 진술을 이유로 계약은 처음부터 무효예요.'
WHERE id = 's_negotiation_C2_03';

UPDATE sentences SET
  ex1 = 'Novation extinguishes the original obligation and substitutes a new contract between the parties, thereby releasing the original debtor.', ex1_ko = '계약 갱신은 원래 의무를 소멸시키고 새로운 계약으로 대체해 원래 채무자를 면책시켜요.',
  ex2 = 'Novation extinguishes the prior tenancy and substitutes a new lease between the parties, thereby releasing the outgoing tenant.', ex2_ko = '계약 갱신은 이전 임차 관계를 소멸시키고 새로운 임대 계약으로 대체해 퇴거 세입자를 면책시켜요.',
  ex3 = 'Novation extinguishes the underlying loan and substitutes a new facility between the parties, thereby releasing the original lender.', ex3_ko = '계약 갱신은 기초 대출을 소멸시키고 새로운 대출 시설로 대체해 원래 대출 기관을 면책시켜요.',
  ex4 = 'Novation extinguishes the original supply agreement and substitutes a new arrangement between the parties, thereby releasing the prior supplier.', ex4_ko = '계약 갱신은 원래 공급 계약을 소멸시키고 새로운 협약으로 대체해 이전 공급자를 면책시켜요.',
  ex5 = 'Novation extinguishes the guarantee given and substitutes a new security between the parties, thereby releasing the original guarantor.', ex5_ko = '계약 갱신은 제공된 보증을 소멸시키고 새로운 담보로 대체해 원래 보증인을 면책시켜요.'
WHERE id = 's_negotiation_C2_04';

UPDATE sentences SET
  ex1 = 'Under the rule in contra proferentem, the ambiguous indemnity clause is construed against the party who drafted it.', ex1_ko = '작성자 불이익 원칙에 따라 모호한 면책 조항은 이를 작성한 당사자에게 불리하게 해석돼요.',
  ex2 = 'Under the rule in contra proferentem, the ambiguous warranty clause is construed against the party who drafted it.', ex2_ko = '작성자 불이익 원칙에 따라 모호한 보증 조항은 이를 작성한 당사자에게 불리하게 해석돼요.',
  ex3 = 'Under the rule in contra proferentem, the ambiguous limitation of liability is construed against the party who drafted it.', ex3_ko = '작성자 불이익 원칙에 따라 모호한 책임 제한 조항은 이를 작성한 당사자에게 불리하게 해석돼요.',
  ex4 = 'Under the rule in contra proferentem, the ambiguous notice provision is construed against the party who drafted it.', ex4_ko = '작성자 불이익 원칙에 따라 모호한 통지 조항은 이를 작성한 당사자에게 불리하게 해석돼요.',
  ex5 = 'Under the rule in contra proferentem, the ambiguous termination right is construed against the party who drafted it.', ex5_ko = '작성자 불이익 원칙에 따라 모호한 해지 권한 조항은 이를 작성한 당사자에게 불리하게 해석돼요.'
WHERE id = 's_negotiation_C2_05';

UPDATE sentences SET
  ex1 = 'The unjust enrichment claim rests on the defendant''s failure to make restitution following rescission of the contract.', ex1_ko = '부당 이득 청구는 계약 취소 후 피고의 원상 회복 불이행에 근거해요.',
  ex2 = 'The unjust enrichment claim rests on the recipient''s failure to make restitution following a mistaken payment.', ex2_ko = '부당 이득 청구는 착오 송금 후 수령인의 원상 회복 불이행에 근거해요.',
  ex3 = 'The unjust enrichment claim rests on the licensee''s failure to make restitution following termination of the licence.', ex3_ko = '부당 이득 청구는 라이선스 해지 후 라이선시의 원상 회복 불이행에 근거해요.',
  ex4 = 'The unjust enrichment claim rests on the borrower''s failure to make restitution following a void loan agreement.', ex4_ko = '부당 이득 청구는 무효 대출 계약 후 차입자의 원상 회복 불이행에 근거해요.',
  ex5 = 'The unjust enrichment claim rests on the recipient''s failure to make restitution following a frustrated transaction.', ex5_ko = '부당 이득 청구는 좌절된 거래 후 수령인의 원상 회복 불이행에 근거해요.'
WHERE id = 's_negotiation_C2_06';

UPDATE sentences SET
  ex1 = 'Piercing the corporate veil is warranted where the shell entity was used as a mere facade to evade pre-existing contractual obligations.', ex1_ko = '서류상 회사가 기존 계약 의무를 회피하기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.',
  ex2 = 'Piercing the corporate veil is warranted where the subsidiary was used as a mere facade to shield assets from creditors.', ex2_ko = '자회사가 자산을 채권자로부터 보호하기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.',
  ex3 = 'Piercing the corporate veil is warranted where the holding structure was used as a mere facade to evade tax obligations.', ex3_ko = '지주 구조가 세금 의무를 회피하기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.',
  ex4 = 'Piercing the corporate veil is warranted where the corporate form was used as a mere facade to commit fraud against creditors.', ex4_ko = '법인 형태가 채권자에 대한 사기를 저지르기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.',
  ex5 = 'Piercing the corporate veil is warranted where the special purpose vehicle was used as a mere facade to circumvent regulatory restrictions.', ex5_ko = '특수목적법인이 규제 제한을 회피하기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.'
WHERE id = 's_negotiation_C2_07';

-- ── news ──
-- EngCat — News topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Did you hear about the storm last night?', ex1_ko = '어젯밤 폭풍 소식 들었어요?',
  ex2 = 'Did you hear about the new policy?', ex2_ko = '새 정책 소식 들었어요?',
  ex3 = 'Did you hear about the accident downtown?', ex3_ko = '시내 사고 소식 들었어요?',
  ex4 = 'Did you hear about the festival this weekend?', ex4_ko = '이번 주말 축제 소식 들었어요?',
  ex5 = 'Did you hear about the election results?', ex5_ko = '선거 결과 소식 들었어요?'
WHERE id = 's_news_A1_01';

UPDATE sentences SET
  ex1 = 'I saw on the news that there was a big fire.', ex1_ko = '뉴스에서 큰 화재가 있었다는 걸 봤어요.',
  ex2 = 'I saw on the news that they announced a new law.', ex2_ko = '뉴스에서 새 법을 발표했다는 걸 봤어요.',
  ex3 = 'I saw on the news that they reopened the bridge.', ex3_ko = '뉴스에서 다리를 재개통했다는 걸 봤어요.',
  ex4 = 'I saw on the news that prices went up again.', ex4_ko = '뉴스에서 물가가 또 올랐다는 걸 봤어요.',
  ex5 = 'I saw on the news that there was a protest yesterday.', ex5_ko = '뉴스에서 어제 시위가 있었다는 걸 봤어요.'
WHERE id = 's_news_A1_02';

UPDATE sentences SET
  ex1 = 'What happened at the protest yesterday?', ex1_ko = '어제 시위에서 무슨 일이 있었어요?',
  ex2 = 'What happened during the meeting?', ex2_ko = '회의 중에 무슨 일이 있었어요?',
  ex3 = 'What happened at the airport this morning?', ex3_ko = '오늘 아침 공항에서 무슨 일이 있었어요?',
  ex4 = 'What happened with the new policy?', ex4_ko = '새 정책에 무슨 일이 있었어요?',
  ex5 = 'What happened to the missing flight?', ex5_ko = '실종된 항공편에 무슨 일이 있었어요?'
WHERE id = 's_news_A1_03';

UPDATE sentences SET
  ex1 = 'Is it true that the president resigned?', ex1_ko = '대통령이 사임한 게 사실이에요?',
  ex2 = 'Is it true that the borders are closed?', ex2_ko = '국경이 폐쇄된 게 사실이에요?',
  ex3 = 'Is it true that they cancelled the event?', ex3_ko = '그 행사가 취소된 게 사실이에요?',
  ex4 = 'Is it true that the bank failed?', ex4_ko = '그 은행이 파산한 게 사실이에요?',
  ex5 = 'Is it true that they signed the deal?', ex5_ko = '그들이 계약을 체결한 게 사실이에요?'
WHERE id = 's_news_A1_04';

UPDATE sentences SET
  ex1 = 'They said on the news that there was an earthquake.', ex1_ko = '뉴스에서 지진이 있었다고 했어요.',
  ex2 = 'They said on the news that prices will go up.', ex2_ko = '뉴스에서 물가가 오를 거라고 했어요.',
  ex3 = 'They said on the news that the road will reopen tomorrow.', ex3_ko = '뉴스에서 내일 도로가 다시 열린다고 했어요.',
  ex4 = 'They said on the news that the flights are cancelled.', ex4_ko = '뉴스에서 항공편이 취소됐다고 했어요.',
  ex5 = 'They said on the news that the storm is coming.', ex5_ko = '뉴스에서 폭풍이 오고 있다고 했어요.'
WHERE id = 's_news_A1_05';

UPDATE sentences SET
  ex1 = 'A lot of people were hurt in the crash.', ex1_ko = '사고로 많은 사람들이 다쳤어요.',
  ex2 = 'A lot of people were hurt in the fire.', ex2_ko = '화재로 많은 사람들이 다쳤어요.',
  ex3 = 'A lot of people were hurt in the protest.', ex3_ko = '시위로 많은 사람들이 다쳤어요.',
  ex4 = 'A lot of people were hurt by the storm.', ex4_ko = '폭풍으로 많은 사람들이 다쳤어요.',
  ex5 = 'A lot of people were hurt at the stadium.', ex5_ko = '경기장에서 많은 사람들이 다쳤어요.'
WHERE id = 's_news_A1_06';

UPDATE sentences SET
  ex1 = 'The government said the situation is under control.', ex1_ko = '정부는 상황이 통제되고 있다고 했어요.',
  ex2 = 'The government said new measures will start next week.', ex2_ko = '정부는 다음 주부터 새 조치가 시행된다고 했어요.',
  ex3 = 'The government said the borders will remain open.', ex3_ko = '정부는 국경이 계속 열려 있을 거라고 했어요.',
  ex4 = 'The government said help is on the way.', ex4_ko = '정부는 지원이 곧 도착한다고 했어요.',
  ex5 = 'The government said the report will be released soon.', ex5_ko = '정부는 보고서가 곧 공개된다고 했어요.'
WHERE id = 's_news_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'According to reports, the cause is still unknown.', ex1_ko = '보도에 따르면 원인은 아직 알려지지 않았어요.',
  ex2 = 'According to reports, several people have been injured.', ex2_ko = '보도에 따르면 여러 명이 부상당했어요.',
  ex3 = 'According to reports, the suspect has been arrested.', ex3_ko = '보도에 따르면 용의자가 체포됐어요.',
  ex4 = 'According to reports, the talks are progressing.', ex4_ko = '보도에 따르면 회담이 진전되고 있어요.',
  ex5 = 'According to reports, evacuations are underway.', ex5_ko = '보도에 따르면 대피가 진행 중이에요.'
WHERE id = 's_news_A2_01';

UPDATE sentences SET
  ex1 = 'The police are investigating the cause of the fire.', ex1_ko = '경찰이 화재 원인을 조사하고 있어요.',
  ex2 = 'The police are investigating the missing person case.', ex2_ko = '경찰이 실종 사건을 조사하고 있어요.',
  ex3 = 'The police are investigating the financial fraud.', ex3_ko = '경찰이 금융 사기를 조사하고 있어요.',
  ex4 = 'The police are investigating the suspicious package.', ex4_ko = '경찰이 의심스러운 소포를 조사하고 있어요.',
  ex5 = 'The police are investigating the cyber attack.', ex5_ko = '경찰이 사이버 공격을 조사하고 있어요.'
WHERE id = 's_news_A2_02';

UPDATE sentences SET
  ex1 = 'It is believed that the storm will worsen overnight.', ex1_ko = '폭풍이 밤사이 심해질 것이라고 여겨져요.',
  ex2 = 'It is believed that the attack was politically motivated.', ex2_ko = '그 공격이 정치적 동기에서 이루어졌다고 여겨져요.',
  ex3 = 'It is believed that the leak came from an internal source.', ex3_ko = '그 유출이 내부 출처에서 비롯됐다고 여겨져요.',
  ex4 = 'It is believed that the talks have hit a deadlock.', ex4_ko = '회담이 교착 상태에 빠졌다고 여겨져요.',
  ex5 = 'It is believed that the suspect has fled the country.', ex5_ko = '용의자가 국외로 도주했다고 여겨져요.'
WHERE id = 's_news_A2_03';

UPDATE sentences SET
  ex1 = 'Protests broke out in the capital after the announcement.', ex1_ko = '발표 이후 수도에서 시위가 발생했어요.',
  ex2 = 'Protests broke out in several major cities last night.', ex2_ko = '어젯밤 여러 주요 도시에서 시위가 발생했어요.',
  ex3 = 'Protests broke out in front of the parliament building.', ex3_ko = '의회 건물 앞에서 시위가 발생했어요.',
  ex4 = 'Protests broke out in response to the new law.', ex4_ko = '새 법에 대한 반응으로 시위가 발생했어요.',
  ex5 = 'Protests broke out in the area following the verdict.', ex5_ko = '평결 이후 그 지역에서 시위가 발생했어요.'
WHERE id = 's_news_A2_04';

UPDATE sentences SET
  ex1 = 'The government has announced that new measures will take effect immediately.', ex1_ko = '정부는 새 조치가 즉시 시행된다고 발표했어요.',
  ex2 = 'The government has announced that the borders will reopen next week.', ex2_ko = '정부는 다음 주 국경이 재개방된다고 발표했어요.',
  ex3 = 'The government has announced that emergency aid will be deployed.', ex3_ko = '정부는 긴급 지원이 배치된다고 발표했어요.',
  ex4 = 'The government has announced that elections will be held in March.', ex4_ko = '정부는 3월에 선거가 치러진다고 발표했어요.',
  ex5 = 'The government has announced that talks will resume next month.', ex5_ko = '정부는 다음 달 회담이 재개된다고 발표했어요.'
WHERE id = 's_news_A2_05';

UPDATE sentences SET
  ex1 = 'Thousands of people took to the streets demanding reform.', ex1_ko = '개혁을 요구하며 수천 명이 거리로 나왔어요.',
  ex2 = 'Thousands of people took to the streets to protest the new tax.', ex2_ko = '새 세금에 항의하기 위해 수천 명이 거리로 나왔어요.',
  ex3 = 'Thousands of people took to the streets in support of the movement.', ex3_ko = '그 운동을 지지하며 수천 명이 거리로 나왔어요.',
  ex4 = 'Thousands of people took to the streets after the verdict.', ex4_ko = '평결 이후 수천 명이 거리로 나왔어요.',
  ex5 = 'Thousands of people took to the streets to celebrate the victory.', ex5_ko = '승리를 축하하기 위해 수천 명이 거리로 나왔어요.'
WHERE id = 's_news_A2_06';

UPDATE sentences SET
  ex1 = 'A ceasefire has been agreed by both parties.', ex1_ko = '양측에 의해 휴전이 합의됐어요.',
  ex2 = 'A new treaty has been agreed by the leaders.', ex2_ko = '지도자들에 의해 새 조약이 합의됐어요.',
  ex3 = 'A trade deal has been agreed by the negotiators.', ex3_ko = '협상단에 의해 무역 협정이 합의됐어요.',
  ex4 = 'A joint statement has been agreed by both sides.', ex4_ko = '양측에 의해 공동 성명이 합의됐어요.',
  ex5 = 'A new framework has been agreed by the council.', ex5_ko = '의회에 의해 새 틀이 합의됐어요.'
WHERE id = 's_news_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The government is under pressure to lower taxes.', ex1_ko = '정부가 세금 인하 압박을 받고 있어요.',
  ex2 = 'The government is under pressure to act on climate.', ex2_ko = '정부가 기후 대응에 대한 압박을 받고 있어요.',
  ex3 = 'The government is under pressure to release the report.', ex3_ko = '정부가 보고서 공개 압박을 받고 있어요.',
  ex4 = 'The government is under pressure to reform the system.', ex4_ko = '정부가 제도 개혁 압박을 받고 있어요.',
  ex5 = 'The government is under pressure to address inequality.', ex5_ko = '정부가 불평등 해결 압박을 받고 있어요.'
WHERE id = 's_news_B1_01';

UPDATE sentences SET
  ex1 = 'Critics have accused the minister of misleading parliament.', ex1_ko = '비평가들이 장관을 의회 오도 혐의로 비난했어요.',
  ex2 = 'Critics have accused the minister of conflict of interest.', ex2_ko = '비평가들이 장관을 이해 충돌 혐의로 비난했어요.',
  ex3 = 'Critics have accused the minister of obstructing justice.', ex3_ko = '비평가들이 장관을 사법 방해 혐의로 비난했어요.',
  ex4 = 'Critics have accused the minister of mismanaging the budget.', ex4_ko = '비평가들이 장관을 예산 관리 부실 혐의로 비난했어요.',
  ex5 = 'Critics have accused the minister of ignoring expert advice.', ex5_ko = '비평가들이 장관을 전문가 조언 무시 혐의로 비난했어요.'
WHERE id = 's_news_B1_02';

UPDATE sentences SET
  ex1 = 'The opposition has called for an inquiry into the contract.', ex1_ko = '야당이 그 계약에 대한 조사를 요구했어요.',
  ex2 = 'The opposition has called for an inquiry into the police conduct.', ex2_ko = '야당이 경찰 행위에 대한 조사를 요구했어요.',
  ex3 = 'The opposition has called for an inquiry into the data breach.', ex3_ko = '야당이 데이터 유출에 대한 조사를 요구했어요.',
  ex4 = 'The opposition has called for an inquiry into the election results.', ex4_ko = '야당이 선거 결과에 대한 조사를 요구했어요.',
  ex5 = 'The opposition has called for an inquiry into the public spending.', ex5_ko = '야당이 공공 지출에 대한 조사를 요구했어요.'
WHERE id = 's_news_B1_03';

UPDATE sentences SET
  ex1 = 'Unemployment figures rose to seven percent last month.', ex1_ko = '지난달 실업률이 7%로 올랐어요.',
  ex2 = 'Approval ratings rose to fifty-two percent after the speech.', ex2_ko = '연설 후 지지율이 52%로 올랐어요.',
  ex3 = 'Voter turnout rose to a record high this year.', ex3_ko = '올해 투표율이 사상 최고로 올랐어요.',
  ex4 = 'Inflation rose to nine percent in the latest data.', ex4_ko = '최신 데이터에서 인플레이션이 9%로 올랐어요.',
  ex5 = 'Hospital admissions rose to dangerous levels.', ex5_ko = '병원 입원율이 위험한 수준으로 올랐어요.'
WHERE id = 's_news_B1_04';

UPDATE sentences SET
  ex1 = 'The legislation was passed by a narrow majority of three.', ex1_ko = '법안이 3표 차이의 근소한 다수결로 통과됐어요.',
  ex2 = 'The reform bill was passed by a comfortable majority.', ex2_ko = '개혁 법안이 여유 있는 다수결로 통과됐어요.',
  ex3 = 'The motion was passed by an overwhelming majority.', ex3_ko = '안건이 압도적 다수결로 통과됐어요.',
  ex4 = 'The budget was passed by a slim majority after debate.', ex4_ko = '토론 끝에 예산안이 근소한 다수결로 통과됐어요.',
  ex5 = 'The resolution was passed by a bipartisan majority.', ex5_ko = '결의안이 초당적 다수결로 통과됐어요.'
WHERE id = 's_news_B1_05';

UPDATE sentences SET
  ex1 = 'The minister resigned amid allegations of corruption.', ex1_ko = '장관이 부패 혐의 속에 사임했어요.',
  ex2 = 'The CEO resigned amid allegations of fraud.', ex2_ko = 'CEO가 사기 혐의 속에 사임했어요.',
  ex3 = 'The chairman resigned amid allegations of harassment.', ex3_ko = '회장이 괴롭힘 혐의 속에 사임했어요.',
  ex4 = 'The mayor resigned amid allegations of misuse of funds.', ex4_ko = '시장이 자금 유용 혐의 속에 사임했어요.',
  ex5 = 'The director resigned amid allegations of conflict of interest.', ex5_ko = '이사가 이해 충돌 혐의 속에 사임했어요.'
WHERE id = 's_news_B1_06';

UPDATE sentences SET
  ex1 = 'Inflation has reached its highest level in forty years.', ex1_ko = '인플레이션이 40년 만에 최고치에 달했어요.',
  ex2 = 'Migration has reached its highest level in a decade.', ex2_ko = '이주가 10년 만에 최고치에 달했어요.',
  ex3 = 'Carbon emissions have reached their highest level on record.', ex3_ko = '탄소 배출량이 기록상 최고치에 달했어요.',
  ex4 = 'Sea temperatures have reached their highest level in years.', ex4_ko = '해수 온도가 수년 만에 최고치에 달했어요.',
  ex5 = 'Public debt has reached its highest level since the war.', ex5_ko = '공공 부채가 전쟁 이후 최고치에 달했어요.'
WHERE id = 's_news_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Diplomatic tensions have escalated between the two neighbors.', ex1_ko = '두 인접국 사이의 외교적 긴장이 고조됐어요.',
  ex2 = 'Diplomatic tensions have escalated between Beijing and Washington.', ex2_ko = '베이징과 워싱턴 사이의 외교적 긴장이 고조됐어요.',
  ex3 = 'Diplomatic tensions have escalated between the trading partners.', ex3_ko = '무역 파트너 사이의 외교적 긴장이 고조됐어요.',
  ex4 = 'Diplomatic tensions have escalated between the regional powers.', ex4_ko = '지역 강대국 사이의 외교적 긴장이 고조됐어요.',
  ex5 = 'Diplomatic tensions have escalated between the EU and the candidate state.', ex5_ko = 'EU와 후보국 사이의 외교적 긴장이 고조됐어요.'
WHERE id = 's_news_B2_01';

UPDATE sentences SET
  ex1 = 'Sanctions have been imposed on the regime in response to human rights abuses.', ex1_ko = '인권 침해에 대응해 그 정권에 제재가 부과됐어요.',
  ex2 = 'Sanctions have been imposed on key officials in response to the crackdown.', ex2_ko = '강경 진압에 대응해 핵심 관리들에게 제재가 부과됐어요.',
  ex3 = 'Sanctions have been imposed on the financial sector in response to election interference.', ex3_ko = '선거 개입에 대응해 금융 부문에 제재가 부과됐어요.',
  ex4 = 'Sanctions have been imposed on the country in response to the invasion.', ex4_ko = '침공에 대응해 그 나라에 제재가 부과됐어요.',
  ex5 = 'Sanctions have been imposed on the leadership in response to nuclear escalation.', ex5_ko = '핵 긴장 고조에 대응해 지도부에 제재가 부과됐어요.'
WHERE id = 's_news_B2_02';

UPDATE sentences SET
  ex1 = 'The two nations agreed to resume diplomatic talks after years of silence.', ex1_ko = '두 나라는 수년간의 침묵 끝에 외교 회담 재개에 합의했어요.',
  ex2 = 'The two nations agreed to resume direct flights after the border reopening.', ex2_ko = '두 나라는 국경 재개방 후 직항 운항 재개에 합의했어요.',
  ex3 = 'The two nations agreed to resume trade negotiations next month.', ex3_ko = '두 나라는 다음 달 무역 협상 재개에 합의했어요.',
  ex4 = 'The two nations agreed to resume cultural exchanges as a goodwill gesture.', ex4_ko = '두 나라는 선의의 표시로 문화 교류 재개에 합의했어요.',
  ex5 = 'The two nations agreed to resume military hotline communications.', ex5_ko = '두 나라는 군 핫라인 통신 재개에 합의했어요.'
WHERE id = 's_news_B2_03';

UPDATE sentences SET
  ex1 = 'The international community has condemned the attack on civilians.', ex1_ko = '국제 사회가 민간인 공격을 규탄했어요.',
  ex2 = 'The international community has condemned the violation of the treaty.', ex2_ko = '국제 사회가 조약 위반을 규탄했어요.',
  ex3 = 'The international community has condemned the use of force against protesters.', ex3_ko = '국제 사회가 시위대에 대한 무력 사용을 규탄했어요.',
  ex4 = 'The international community has condemned the assassination as illegal.', ex4_ko = '국제 사회가 그 암살을 불법으로 규탄했어요.',
  ex5 = 'The international community has condemned the airstrikes on hospitals.', ex5_ko = '국제 사회가 병원에 대한 공습을 규탄했어요.'
WHERE id = 's_news_B2_04';

UPDATE sentences SET
  ex1 = 'A multilateral agreement was reached at the summit on climate change.', ex1_ko = '기후 변화에 관한 정상 회담에서 다자간 합의가 이루어졌어요.',
  ex2 = 'A multilateral agreement was reached on minimum corporate tax rates.', ex2_ko = '최저 법인세율에 관한 다자간 합의가 이루어졌어요.',
  ex3 = 'A multilateral agreement was reached on cross-border data sharing.', ex3_ko = '국경 간 데이터 공유에 관한 다자간 합의가 이루어졌어요.',
  ex4 = 'A multilateral agreement was reached on pandemic preparedness.', ex4_ko = '팬데믹 대비에 관한 다자간 합의가 이루어졌어요.',
  ex5 = 'A multilateral agreement was reached on ocean conservation.', ex5_ko = '해양 보존에 관한 다자간 합의가 이루어졌어요.'
WHERE id = 's_news_B2_05';

UPDATE sentences SET
  ex1 = 'The regime faces growing pressure from civil society organizations.', ex1_ko = '그 정권은 시민사회 단체들로부터 점점 커지는 압박에 직면해 있어요.',
  ex2 = 'The regime faces growing pressure from neighboring states.', ex2_ko = '그 정권은 인접국들로부터 점점 커지는 압박에 직면해 있어요.',
  ex3 = 'The regime faces growing pressure from financial markets.', ex3_ko = '그 정권은 금융 시장으로부터 점점 커지는 압박에 직면해 있어요.',
  ex4 = 'The regime faces growing pressure from human rights bodies.', ex4_ko = '그 정권은 인권 기구들로부터 점점 커지는 압박에 직면해 있어요.',
  ex5 = 'The regime faces growing pressure from domestic opposition movements.', ex5_ko = '그 정권은 국내 야권 운동으로부터 점점 커지는 압박에 직면해 있어요.'
WHERE id = 's_news_B2_06';

UPDATE sentences SET
  ex1 = 'The referendum resulted in a vote for independence.', ex1_ko = '국민 투표 결과 독립 찬성으로 나왔어요.',
  ex2 = 'The referendum resulted in a vote to remain in the union.', ex2_ko = '국민 투표 결과 연합 잔류 찬성으로 나왔어요.',
  ex3 = 'The referendum resulted in a clear mandate for reform.', ex3_ko = '국민 투표 결과 개혁에 대한 명확한 위임으로 나왔어요.',
  ex4 = 'The referendum resulted in a divided outcome split along regional lines.', ex4_ko = '국민 투표 결과 지역에 따라 분열된 결과로 나왔어요.',
  ex5 = 'The referendum resulted in a rejection of the constitutional amendment.', ex5_ko = '국민 투표 결과 헌법 개정안 부결로 나왔어요.'
WHERE id = 's_news_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The decision sets a significant precedent for digital privacy law.', ex1_ko = '그 결정은 디지털 사생활법에 중요한 선례를 남겨요.',
  ex2 = 'The verdict sets a significant precedent for corporate accountability.', ex2_ko = '그 평결은 기업 책임에 중요한 선례를 남겨요.',
  ex3 = 'The ruling sets a significant precedent for refugee protection.', ex3_ko = '그 판결은 난민 보호에 중요한 선례를 남겨요.',
  ex4 = 'The judgment sets a significant precedent for environmental enforcement.', ex4_ko = '그 판결은 환경 집행에 중요한 선례를 남겨요.',
  ex5 = 'The decision sets a significant precedent for jurisdictional reach.', ex5_ko = '그 결정은 관할권 범위에 중요한 선례를 남겨요.'
WHERE id = 's_news_C1_01';

UPDATE sentences SET
  ex1 = 'The sanctions regime has failed to achieve its stated objectives over the past decade.', ex1_ko = '제재 체제가 지난 10년간 명시된 목표를 달성하는 데 실패했어요.',
  ex2 = 'The reform package has failed to achieve its stated objectives within the planned timeline.', ex2_ko = '개혁 패키지가 계획된 일정 내에 명시된 목표를 달성하는 데 실패했어요.',
  ex3 = 'The peacekeeping mission has failed to achieve its stated objectives in the region.', ex3_ko = '평화 유지 임무가 그 지역에서 명시된 목표를 달성하는 데 실패했어요.',
  ex4 = 'The trade deal has failed to achieve its stated objectives for working families.', ex4_ko = '무역 협정이 근로 가정에 대한 명시된 목표를 달성하는 데 실패했어요.',
  ex5 = 'The aid program has failed to achieve its stated objectives despite the funding increase.', ex5_ko = '원조 프로그램이 자금 증액에도 불구하고 명시된 목표를 달성하는 데 실패했어요.'
WHERE id = 's_news_C1_02';

UPDATE sentences SET
  ex1 = 'The bilateral relationship has deteriorated significantly over the past year.', ex1_ko = '양자 관계가 지난 1년 동안 크게 악화됐어요.',
  ex2 = 'The trust between allies has deteriorated significantly since the breach.', ex2_ko = '동맹국 간 신뢰가 그 위반 사건 이후 크게 악화됐어요.',
  ex3 = 'Public health infrastructure has deteriorated significantly during the conflict.', ex3_ko = '분쟁 동안 공중 보건 인프라가 크게 악화됐어요.',
  ex4 = 'The security situation has deteriorated significantly in the border regions.', ex4_ko = '국경 지역의 보안 상황이 크게 악화됐어요.',
  ex5 = 'Democratic institutions have deteriorated significantly under the current administration.', ex5_ko = '현 행정부 하에서 민주주의 제도가 크게 악화됐어요.'
WHERE id = 's_news_C1_03';

UPDATE sentences SET
  ex1 = 'There are growing concerns about the erosion of judicial independence.', ex1_ko = '사법부 독립 침식에 대한 우려가 커지고 있어요.',
  ex2 = 'There are growing concerns about the erosion of press freedom.', ex2_ko = '언론 자유 침식에 대한 우려가 커지고 있어요.',
  ex3 = 'There are growing concerns about the erosion of civic space.', ex3_ko = '시민 공간 침식에 대한 우려가 커지고 있어요.',
  ex4 = 'There are growing concerns about the erosion of academic freedom.', ex4_ko = '학문의 자유 침식에 대한 우려가 커지고 있어요.',
  ex5 = 'There are growing concerns about the erosion of electoral integrity.', ex5_ko = '선거의 무결성 침식에 대한 우려가 커지고 있어요.'
WHERE id = 's_news_C1_04';

UPDATE sentences SET
  ex1 = 'The court''s ruling may have far-reaching implications for digital rights.', ex1_ko = '법원의 판결은 디지털 권리에 광범위한 영향을 미칠 수 있어요.',
  ex2 = 'The court''s ruling may have far-reaching implications for press freedom.', ex2_ko = '법원의 판결은 언론 자유에 광범위한 영향을 미칠 수 있어요.',
  ex3 = 'The court''s ruling may have far-reaching implications for asylum law.', ex3_ko = '법원의 판결은 망명법에 광범위한 영향을 미칠 수 있어요.',
  ex4 = 'The court''s ruling may have far-reaching implications for corporate transparency.', ex4_ko = '법원의 판결은 기업 투명성에 광범위한 영향을 미칠 수 있어요.',
  ex5 = 'The court''s ruling may have far-reaching implications for indigenous land claims.', ex5_ko = '법원의 판결은 토착민 토지 청구에 광범위한 영향을 미칠 수 있어요.'
WHERE id = 's_news_C1_05';

UPDATE sentences SET
  ex1 = 'The government invoked emergency powers to suppress political opposition.', ex1_ko = '정부가 정치적 반대를 억압하기 위해 비상 권한을 발동했어요.',
  ex2 = 'The government invoked emergency powers to suppress public assemblies.', ex2_ko = '정부가 공공 집회를 억압하기 위해 비상 권한을 발동했어요.',
  ex3 = 'The government invoked emergency powers to suppress independent media.', ex3_ko = '정부가 독립 언론을 억압하기 위해 비상 권한을 발동했어요.',
  ex4 = 'The government invoked emergency powers to suppress online dissent.', ex4_ko = '정부가 온라인 반대 의견을 억압하기 위해 비상 권한을 발동했어요.',
  ex5 = 'The government invoked emergency powers to suppress civil society groups.', ex5_ko = '정부가 시민사회 단체들을 억압하기 위해 비상 권한을 발동했어요.'
WHERE id = 's_news_C1_06';

UPDATE sentences SET
  ex1 = 'Analysts warn of the risk of further escalation along the border.', ex1_ko = '분석가들은 국경에서 추가 확전 위험을 경고해요.',
  ex2 = 'Analysts warn of the risk of further escalation in the trade dispute.', ex2_ko = '분석가들은 무역 분쟁의 추가 확전 위험을 경고해요.',
  ex3 = 'Analysts warn of the risk of further escalation in cyber operations.', ex3_ko = '분석가들은 사이버 작전의 추가 확전 위험을 경고해요.',
  ex4 = 'Analysts warn of the risk of further escalation between the rival factions.', ex4_ko = '분석가들은 경쟁 진영 사이의 추가 확전 위험을 경고해요.',
  ex5 = 'Analysts warn of the risk of further escalation across the maritime claims.', ex5_ko = '분석가들은 해양 영유권 주장 전반에 걸친 추가 확전 위험을 경고해요.'
WHERE id = 's_news_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The hegemon''s unilateral actions undermine the multilateral rules-based order.', ex1_ko = '패권국의 일방적 행동이 다자 규칙 기반 질서를 약화시켜요.',
  ex2 = 'The hegemon''s unilateral actions undermine the credibility of collective security frameworks.', ex2_ko = '패권국의 일방적 행동이 집단 안보 틀의 신뢰성을 약화시켜요.',
  ex3 = 'The hegemon''s unilateral actions undermine the legitimacy of international institutions.', ex3_ko = '패권국의 일방적 행동이 국제 기구의 정당성을 약화시켜요.',
  ex4 = 'The hegemon''s unilateral actions undermine the prospects for regional cooperation.', ex4_ko = '패권국의 일방적 행동이 지역 협력의 전망을 약화시켜요.',
  ex5 = 'The hegemon''s unilateral actions undermine the foundations of global trade.', ex5_ko = '패권국의 일방적 행동이 세계 무역의 토대를 약화시켜요.'
WHERE id = 's_news_C2_01';

UPDATE sentences SET
  ex1 = 'The conflict can be read as a manifestation of postcolonial tensions.', ex1_ko = '그 분쟁은 탈식민적 긴장의 표현으로 읽힐 수 있어요.',
  ex2 = 'The crisis can be read as a manifestation of neoliberal restructuring.', ex2_ko = '그 위기는 신자유주의적 구조조정의 표현으로 읽힐 수 있어요.',
  ex3 = 'The protests can be read as a manifestation of generational grievance.', ex3_ko = '그 시위는 세대적 불만의 표현으로 읽힐 수 있어요.',
  ex4 = 'The movement can be read as a manifestation of identity-based politics.', ex4_ko = '그 운동은 정체성 기반 정치의 표현으로 읽힐 수 있어요.',
  ex5 = 'The standoff can be read as a manifestation of structural insecurity.', ex5_ko = '그 대치는 구조적 불안의 표현으로 읽힐 수 있어요.'
WHERE id = 's_news_C2_02';

UPDATE sentences SET
  ex1 = 'Securitization of the migration issue has foreclosed alternative policy responses.', ex1_ko = '이주 문제의 안보화가 대안적 정책 대응을 차단했어요.',
  ex2 = 'Securitization of the pandemic has foreclosed civilian-led approaches.', ex2_ko = '팬데믹의 안보화가 시민 주도 접근법을 차단했어요.',
  ex3 = 'Securitization of climate change has foreclosed redistributive solutions.', ex3_ko = '기후 변화의 안보화가 재분배적 해결책을 차단했어요.',
  ex4 = 'Securitization of cyber threats has foreclosed public deliberation.', ex4_ko = '사이버 위협의 안보화가 공적 숙의를 차단했어요.',
  ex5 = 'Securitization of energy supply has foreclosed sustainability priorities.', ex5_ko = '에너지 공급의 안보화가 지속가능성 우선순위를 차단했어요.'
WHERE id = 's_news_C2_03';

UPDATE sentences SET
  ex1 = 'The normative framework underpinning the international order is being contested by emerging powers.', ex1_ko = '국제 질서를 뒷받침하는 규범적 틀이 신흥 강대국에 의해 도전받고 있어요.',
  ex2 = 'The normative framework underpinning the global trade system is being contested by industrial policy advocates.', ex2_ko = '세계 무역 체계를 뒷받침하는 규범적 틀이 산업 정책 옹호자들에 의해 도전받고 있어요.',
  ex3 = 'The normative framework underpinning humanitarian intervention is being contested by sovereignty defenders.', ex3_ko = '인도적 개입을 뒷받침하는 규범적 틀이 주권 옹호자들에 의해 도전받고 있어요.',
  ex4 = 'The normative framework underpinning environmental governance is being contested by extractive industries.', ex4_ko = '환경 거버넌스를 뒷받침하는 규범적 틀이 채굴 산업에 의해 도전받고 있어요.',
  ex5 = 'The normative framework underpinning human rights universalism is being contested by cultural relativists.', ex5_ko = '인권 보편주의를 뒷받침하는 규범적 틀이 문화 상대주의자들에 의해 도전받고 있어요.'
WHERE id = 's_news_C2_04';

UPDATE sentences SET
  ex1 = 'The crisis exposes the epistemic limits of mainstream IR theory.', ex1_ko = '위기는 주류 국제 관계 이론의 인식론적 한계를 드러내요.',
  ex2 = 'The pandemic exposes the epistemic limits of state-centric security frameworks.', ex2_ko = '팬데믹은 국가 중심 안보 틀의 인식론적 한계를 드러내요.',
  ex3 = 'The migration surge exposes the epistemic limits of border-based governance models.', ex3_ko = '이주 급증은 국경 기반 거버넌스 모델의 인식론적 한계를 드러내요.',
  ex4 = 'The climate emergency exposes the epistemic limits of growth-centric economic thinking.', ex4_ko = '기후 비상사태는 성장 중심 경제 사고의 인식론적 한계를 드러내요.',
  ex5 = 'The AI revolution exposes the epistemic limits of human-centered ethical frameworks.', ex5_ko = 'AI 혁명은 인간 중심 윤리 틀의 인식론적 한계를 드러내요.'
WHERE id = 's_news_C2_05';

UPDATE sentences SET
  ex1 = 'Subaltern voices remain systematically excluded from diplomatic discourse.', ex1_ko = '하위 주체의 목소리는 외교 담론에서 체계적으로 배제돼요.',
  ex2 = 'Subaltern voices remain systematically excluded from international peace negotiations.', ex2_ko = '하위 주체의 목소리는 국제 평화 협상에서 체계적으로 배제돼요.',
  ex3 = 'Subaltern voices remain systematically excluded from policymaking on extractive industries.', ex3_ko = '하위 주체의 목소리는 채굴 산업 정책 결정에서 체계적으로 배제돼요.',
  ex4 = 'Subaltern voices remain systematically excluded from climate adaptation planning.', ex4_ko = '하위 주체의 목소리는 기후 적응 계획에서 체계적으로 배제돼요.',
  ex5 = 'Subaltern voices remain systematically excluded from global governance institutions.', ex5_ko = '하위 주체의 목소리는 글로벌 거버넌스 기구에서 체계적으로 배제돼요.'
WHERE id = 's_news_C2_06';

UPDATE sentences SET
  ex1 = 'The state''s ontological security imperative drove its foreign policy choices during the crisis.', ex1_ko = '위기 동안 국가의 존재론적 안보 요구가 외교 정책 선택을 이끌었어요.',
  ex2 = 'The state''s ontological security imperative drove its assertive posture in the disputed region.', ex2_ko = '분쟁 지역에서 국가의 존재론적 안보 요구가 단호한 자세를 이끌었어요.',
  ex3 = 'The state''s ontological security imperative drove its rejection of external mediation.', ex3_ko = '국가의 존재론적 안보 요구가 외부 중재 거부를 이끌었어요.',
  ex4 = 'The state''s ontological security imperative drove its narrative campaigns against critics.', ex4_ko = '국가의 존재론적 안보 요구가 비판자들에 대한 서사 캠페인을 이끌었어요.',
  ex5 = 'The state''s ontological security imperative drove its symbolic investments in heritage politics.', ex5_ko = '국가의 존재론적 안보 요구가 유산 정치에 대한 상징적 투자를 이끌었어요.'
WHERE id = 's_news_C2_07';

-- ── presentation ──
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

