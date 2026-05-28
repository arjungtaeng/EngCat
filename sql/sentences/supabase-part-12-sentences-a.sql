-- Part 12: Sentences (1/3)

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_greeting_A1_01','Nice to meet you!','만나서 반갑습니다!','Nice to meet you','"Nice to meet you"는 처음 만날 때 쓰는 가장 기본적인 인사예요. 응답할 때는 "Nice to meet you too!"라고 하면 돼요.','첫 만남','A1','greeting','pattern',NULL,1),
('s_greeting_A1_02','How are you?','어떻게 지내세요?','How are you','"How are you?"는 인사처럼 쓰여요. 보통 "Fine, thanks!" 또는 "I''m good, thanks!"로 대답해요. 진짜로 어떻게 지내는지 묻는 게 아닐 수 있어요.','인사','A1','greeting','pattern',NULL,2),
('s_greeting_A1_03','Good morning! How are you today?','좋은 아침이에요! 오늘 어떻게 지내세요?','Good morning','"Good morning"은 오전에, "Good afternoon"은 오후에, "Good evening"은 저녁에 써요. 시간에 따라 인사를 바꿔보세요.','인사','A1','greeting','pattern',NULL,3),
('s_greeting_A1_04','My name is ___. What''s your name?','제 이름은 ___예요. 성함이 어떻게 되세요?','What''s your name','"What''s your name?"은 격식이 없는 자리에서 써요. 격식 있는 자리에서는 "May I ask your name?"이 더 적절해요.','첫 만남','A1','greeting','pattern',NULL,4),
('s_greeting_A1_05','Thank you so much! You''re very kind.','정말 감사해요! 정말 친절하시네요.','Thank you so much','"Thank you so much"는 "Thank you"보다 더 강한 감사 표현이에요. "so much"를 붙이면 더 진심이 느껴져요.','감사','A1','greeting','pattern',NULL,5),
('s_greeting_A1_06','Goodbye! See you later!','안녕히 가세요! 나중에 봐요!','See you later','"See you later"는 꼭 나중에 만난다는 뜻이 아니에요. 그냥 작별 인사로 자연스럽게 쓸 수 있어요.','인사','A1','greeting','pattern',NULL,6),
('s_greeting_A1_07','I''m sorry, I don''t understand. Can you say that again?','죄송해요, 이해를 못 했어요. 다시 말씀해 주시겠어요?','Can you say that again','"Can you say that again?"은 상대방의 말을 이해하지 못했을 때 쓰는 표현이에요. "Could you repeat that?"도 같은 의미예요.','첫 만남','A1','greeting','pattern',NULL,7);

-- ══════════════════════════════════════
-- A2 PATTERNS (7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_greeting_A2_01','Let me introduce myself — I''m ___ and I work as a ___.','제 소개를 할게요 — 저는 ___이고 ___로 일해요.','Let me introduce myself','"Let me introduce myself"는 자기소개를 시작하는 자연스러운 표현이에요. 이름과 직업을 이어서 말하면 돼요.','자기소개','A2','greeting','pattern',NULL,1),
('s_greeting_A2_02','It''s lovely to meet you. I''ve heard a lot about you.','만나서 반가워요. 많이 들었어요.','I''ve heard a lot about you','"I''ve heard a lot about you"는 상대방이 공통 지인을 통해 알려진 경우 쓸 수 있어요. 긍정적인 맥락에서 쓰는 표현이에요.','첫 만남','A2','greeting','pattern',NULL,2),
('s_greeting_A2_03','Please call me ___. It''s easier than my full name.','___라고 불러 주세요. 풀네임보다 편해요.','Please call me','"Please call me ___"는 닉네임이나 짧은 이름을 알려줄 때 쓰는 표현이에요. 친근감을 높여줘요.','자기소개','A2','greeting','pattern',NULL,3),
('s_greeting_A2_04','It was great seeing you. Take care!','만나서 좋았어요. 잘 지내요!','Take care','"Take care"는 작별 인사로 자주 쓰여요. 상대방에 대한 진심 어린 걱정을 담고 있어요.','작별','A2','greeting','pattern',NULL,4),
('s_greeting_A2_05','I''m originally from Busan. Where are you from?','저는 원래 부산 출신이에요. 어디서 오셨어요?','Where are you from','"Where are you from?"은 자기소개에서 자주 나오는 질문이에요. 대답할 때 "I''m from ___"이라고 하면 돼요.','자기소개','A2','greeting','pattern',NULL,5),
('s_greeting_A2_06','Would you mind if I joined you?','합석해도 될까요?','Would you mind','"Would you mind if I + 과거동사?"는 정중하게 허락을 구하는 표현이에요. "Do you mind if I join you?"보다 약간 더 격식 있어요.','부탁','A2','greeting','pattern',NULL,6),
('s_greeting_A2_07','Thanks for having me — I really enjoyed it.','초대해 주셔서 감사해요 — 정말 즐거웠어요.','Thanks for having me','"Thanks for having me"는 초대에 대한 감사 표현이에요. 파티나 모임이 끝날 때 호스트에게 말하는 표현이에요.','작별','A2','greeting','pattern',NULL,7);

-- ══════════════════════════════════════
-- B1 PATTERNS (7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_greeting_B1_01','I don''t think we''ve been formally introduced — I''m ___.','공식적으로 소개받지 못한 것 같아요 — 저는 ___예요.','I don''t think we''ve been formally introduced','"I don''t think we''ve been formally introduced"는 처음 만나는 사람에게 자연스럽게 말을 거는 표현이에요. 이미 서로 얼굴을 알고 있지만 소개를 받지 못한 상황에서 써요.','소개팅','B1','greeting','pattern',NULL,1),
('s_greeting_B1_02','It''s great to finally put a face to the name.','드디어 얼굴을 보게 되어 반가워요.','finally put a face to the name','"put a face to the name"은 이름만 알던 사람을 직접 만났을 때 쓰는 표현이에요. 이메일이나 전화로만 소통하다가 처음 대면할 때 자연스럽게 쓸 수 있어요.','비즈니스 인사','B1','greeting','pattern',NULL,2),
('s_greeting_B1_03','I believe we have some mutual friends — do you know ___?','공통 친구가 있는 것 같은데요 — ___ 아세요?','mutual friends','"mutual friends"는 서로 아는 사람을 뜻해요. 공통점을 찾으며 대화를 시작하는 좋은 방법이에요.','소개팅','B1','greeting','pattern',NULL,3),
('s_greeting_B1_04','Long time no see! How have you been keeping?','오랜만이에요! 그동안 어떻게 지내셨어요?','How have you been keeping','"How have you been keeping?"은 "How have you been?"보다 약간 더 격식 있는 표현이에요. 오랫동안 못 봤을 때 써요.','재회','B1','greeting','pattern',NULL,4),
('s_greeting_B1_05','Allow me to introduce my colleague, ___.','제 동료 ___를 소개해 드릴게요.','Allow me to introduce','"Allow me to introduce"는 격식 있는 소개 표현이에요. "Let me introduce"보다 더 공식적인 자리에서 쓸 수 있어요.','비즈니스 인사','B1','greeting','pattern',NULL,5),
('s_greeting_B1_06','I''ve been looking forward to this meeting for a while.','이 만남을 한동안 기대하고 있었어요.','I''ve been looking forward to','"I''ve been looking forward to ___"는 무언가를 기대해왔음을 표현해요. "this"나 "meeting you" 등을 뒤에 붙여 쓸 수 있어요.','비즈니스 인사','B1','greeting','pattern',NULL,6),
('s_greeting_B1_07','It was wonderful catching up — we should do this more often.','근황 나눠서 좋았어요 — 더 자주 만나요.','catching up','"catching up"은 오랜만에 만나 서로의 소식을 나누는 것을 말해요. "catch up over coffee"처럼 활동과 함께 쓰기도 해요.','재회','B1','greeting','pattern',NULL,7);

-- ══════════════════════════════════════
-- B2 PATTERNS (7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_greeting_B2_01','On behalf of our organization, it is my pleasure to welcome you.','저희 기관을 대표하여 여러분을 진심으로 환영해 드립니다.','On behalf of','"On behalf of"는 어떤 단체나 사람을 대신하여 말할 때 써요. 공식적인 환영사나 연설에서 자주 볼 수 있는 표현이에요.','격식 있는 자리','B2','greeting','pattern',NULL,1),
('s_greeting_B2_02','Your reputation precedes you — it''s an honor to finally meet.','명성은 익히 들었어요 — 드디어 만나게 되어 영광이에요.','Your reputation precedes you','"Your reputation precedes you"는 상대방의 명성을 알고 있다는 의미예요. 처음 만나는 유명한 분께 쓸 수 있는 고급 표현이에요.','네트워킹','B2','greeting','pattern',NULL,2),
('s_greeting_B2_03','I''ve heard excellent things about your work in this field.','이 분야에서 하신 일에 대해 정말 좋은 이야기를 들었어요.','I''ve heard excellent things','칭찬으로 대화를 시작하면 좋은 인상을 줄 수 있어요. "excellent things" 대신 "great things"나 "wonderful things"도 쓸 수 있어요.','네트워킹','B2','greeting','pattern',NULL,3),
('s_greeting_B2_04','Please, allow me to extend a warm welcome on this occasion.','이 자리에서 따뜻한 환영의 말씀을 전할 수 있어 기쁩니다.','extend a warm welcome','"extend a welcome"은 공식 환영사에서 쓰는 고급 표현이에요. "extend"는 "give"보다 더 격식 있고 품위 있는 느낌을 줘요.','격식 있는 자리','B2','greeting','pattern',NULL,4),
('s_greeting_B2_05','We are delighted to have such distinguished guests with us today.','오늘 이렇게 귀한 분들과 함께할 수 있어 기쁩니다.','distinguished guests','"distinguished guests"는 공식 행사에서 중요한 내빈을 지칭하는 표현이에요. 연설이나 환영사에서 자주 들을 수 있어요.','격식 있는 자리','B2','greeting','pattern',NULL,5),
('s_greeting_B2_06','I was hoping we''d get a chance to connect at this event.','이 행사에서 연락이 닿을 기회를 바라고 있었어요.','get a chance to connect','"connect"는 네트워킹 맥락에서 "만나다, 연결되다"의 의미로 많이 써요. "get a chance to"는 기회를 바란다는 의미를 부드럽게 표현해요.','네트워킹','B2','greeting','pattern',NULL,6),
('s_greeting_B2_07','It''s been far too long — I''m so glad we managed to reconnect.','너무 오래됐어요 — 다시 연락이 닿아서 정말 기뻐요.','managed to reconnect','"managed to"는 어려운 상황에서도 해냈다는 뉘앙스예요. "reconnect"는 오랫동안 연락이 없다가 다시 만날 때 쓰는 표현이에요.','네트워킹','B2','greeting','pattern',NULL,7);

-- ══════════════════════════════════════
-- C1 PATTERNS (7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_greeting_C1_01','It is a distinct honor to be in the company of such accomplished individuals.','이렇게 탁월한 분들과 함께하게 된 것은 특별한 영광입니다.','distinct honor','"distinct honor"는 단순한 "honor"보다 훨씬 강한 경의를 표해요. 연설이나 공식 소개 자리에서 격조 있게 쓸 수 있는 표현이에요.','외교적 표현','C1','greeting','pattern',NULL,1),
('s_greeting_C1_02','Your contributions to the field are well recognized and deeply appreciated.','이 분야에 대한 귀하의 공헌은 널리 인정받고 있으며 깊이 감사하게 여겨지고 있습니다.','well recognized and deeply appreciated','긴 표현일수록 진심을 전달할 수 있어요. 이 표현은 업적이 있는 분께 인사드릴 때 쓸 수 있는 고급 칭찬 문구예요.','외교적 표현','C1','greeting','pattern',NULL,2),
('s_greeting_C1_03','Permit me to extend my sincerest greetings and warmest regards.','진심 어린 인사와 따뜻한 안부를 전하도록 허락해 주십시오.','sincerest greetings and warmest regards','"extend one''s regards"는 공식 편지나 연설에서 쓰는 표현이에요. "sincerest"와 "warmest" 같은 최상급 수식어로 진심을 강조해요.','공식 소개','C1','greeting','pattern',NULL,3),
('s_greeting_C1_04','I must say, your presence here lends a great deal of prestige to this event.','솔직히 말씀드리면, 귀하의 참석이 이 행사에 큰 품격을 더해 줍니다.','lends a great deal of prestige','"lend prestige"는 존재만으로도 격을 높인다는 의미예요. 공식 석상에서 귀빈에게 건네는 최고급 칭찬 표현이에요.','외교적 표현','C1','greeting','pattern',NULL,4),
('s_greeting_C1_05','It goes without saying that we are truly privileged to have you among us.','귀하를 모실 수 있다는 것은 두말할 나위 없이 큰 영광입니다.','It goes without saying','"It goes without saying"은 "당연히"라는 뜻이에요. 공식 환영사에서 상대방의 중요성을 부각시킬 때 써요.','공식 소개','C1','greeting','pattern',NULL,5),
('s_greeting_C1_06','Your eloquence and expertise have long been an inspiration to those of us in this field.','귀하의 표현력과 전문성은 오랫동안 이 분야의 우리에게 영감이 되어 왔습니다.','eloquence and expertise','"eloquence"(표현력)와 "expertise"(전문성)를 함께 쓰면 지적 능력과 커뮤니케이션 능력을 동시에 칭찬할 수 있어요.','외교적 표현','C1','greeting','pattern',NULL,6),
('s_greeting_C1_07','I hope this occasion will mark the beginning of a fruitful and enduring relationship.','이 자리가 풍요롭고 오래 지속될 관계의 시작이 되기를 바랍니다.','mark the beginning of','공식 소개 자리를 마무리할 때 쓰는 미래 지향적인 표현이에요. "fruitful"(풍요로운)과 "enduring"(오래 지속되는)이 핵심 어휘예요.','공식 소개','C1','greeting','pattern',NULL,7);

-- ══════════════════════════════════════
-- C2 PATTERNS (7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_greeting_C2_01','We are gathered here today to honor an individual whose contributions have shaped the very fabric of our discipline.','오늘 우리는 우리 학문의 근본 자체를 만들어온 인물을 기리기 위해 이 자리에 모였습니다.','shaped the very fabric','"shape the fabric of"는 어떤 것의 본질과 구조 자체를 형성한다는 강력한 표현이에요. 공식 추도나 시상식 연설에서 볼 수 있는 고급 어법이에요.','외교적 표현','C2','greeting','pattern',NULL,1),
('s_greeting_C2_02','The distinction and gravitas you bring to this assembly are, without exaggeration, unparalleled.','귀하가 이 자리에 가져오시는 품격과 위엄은, 과장 없이 말씀드리면, 비할 데가 없습니다.','without exaggeration, unparalleled','"without exaggeration"은 자신의 말이 과장이 아님을 강조해요. "unparalleled"는 비교 불가한 최상의 칭찬이에요. 두 표현을 함께 쓰면 설득력이 배가돼요.','외교적 표현','C2','greeting','pattern',NULL,2),
('s_greeting_C2_03','Allow me to formally inaugurate this meeting with a word of profound gratitude for your esteemed presence.','귀하의 영예로운 참석에 깊은 감사의 말씀으로 이 회의를 공식적으로 개회하도록 허락해 주십시오.','formally inaugurate','"inaugurate"는 단순히 "시작하다"가 아니라 공식적이고 중요한 행사를 개막한다는 뜻이에요. 최고 수준의 공식 언어예요.','공식 소개','C2','greeting','pattern',NULL,3),
('s_greeting_C2_04','Seldom has it been my privilege to stand before an assembly of such rare collective wisdom and experience.','이처럼 드문 집단적 지혜와 경험을 가진 자리 앞에 설 수 있는 영광은 쉽사리 주어지지 않습니다.','Seldom has it been my privilege','문두에 "Seldom"을 쓰면 도치 구문이 돼요 (Seldom has it been...). 이처럼 도치를 활용하면 더욱 문학적이고 웅변적인 느낌을 줘요.','외교적 표현','C2','greeting','pattern',NULL,4),
('s_greeting_C2_05','May I take this opportunity to convey, on behalf of all present, our deepest respect and admiration.','이 자리를 빌려, 여기 계신 모든 분들을 대표하여 가장 깊은 존경과 감사를 전하고자 합니다.','May I take this opportunity to convey','"May I take this opportunity"는 공식 석상에서 발언권을 얻어 중요한 말을 전달할 때 쓰는 전형적인 표현이에요.','공식 소개','C2','greeting','pattern',NULL,5),
('s_greeting_C2_06','Your stewardship of this discipline has been nothing short of exemplary, and your presence here today is a testament to that legacy.','이 학문에 대한 귀하의 헌신은 더할 나위 없이 모범적이었으며, 오늘 이 자리의 참석이 그 유산을 증명합니다.','nothing short of exemplary','"nothing short of"는 "~에 미치지 못하지 않는", 즉 "~그 자체"라는 강한 긍정이에요. "exemplary"(모범적인)와 함께 쓰면 최고의 찬사가 돼요.','외교적 표현','C2','greeting','pattern',NULL,6),
('s_greeting_C2_07','It is with the utmost reverence and collegial warmth that I bid you welcome to this convocation.','최고의 경의와 동료적 따뜻함으로 이 모임에 여러분을 환영합니다.','utmost reverence and collegial warmth','"utmost reverence"(최고의 경의)와 "collegial warmth"(동료적 따뜻함)를 대비시켜 공식성과 친근감을 동시에 담아요. 졸업식, 학술 행사에서 쓸 수 있는 최상위 언어예요.','공식 소개','C2','greeting','pattern',NULL,7);

-- supabase-words-emotion.sql
-- EngCat — Emotion (감정 표현) Topic
-- 210 words (35 per CEFR level A1~C2) + 42 sentence patterns (7 per level)
-- IDs: w_emotion_{CEFR}_{nn} / s_emotion_{CEFR}_{nn}
-- Note: existing w_emo_01~10 use topic_id='emotions'; these use topic_id='emotion' — no conflict.

-- ══════════════════════════════════════
-- WORDS — A1 (35 words)
-- Theme: happy, sad, angry, tired, scared, excited, good, bad, fine, okay + 25 more core basics
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_A1_01','I''m so happy!','너무 행복해요!','so happy','감정을 강조할 때 so를 쓰면 더 자연스러워요.','기쁨 표현','A1','emotion','pattern',NULL,1),
('s_emotion_A1_02','I feel sad today.','오늘 슬픈 기분이에요.','feel sad','feel + 감정 형용사는 기분을 표현하는 가장 기본 패턴이에요.','슬픔 표현','A1','emotion','pattern',NULL,2),
('s_emotion_A1_03','I''m really tired.','정말 피곤해요.','really tired','really를 붙이면 감정의 강도를 강조할 수 있어요.','피로감 표현','A1','emotion','pattern',NULL,3),
('s_emotion_A1_04','Are you okay?','괜찮아요?','Are you okay','상대방 걱정을 가볍게 물을 때 쓸 수 있는 표현이에요.','걱정 표현','A1','emotion','pattern',NULL,4),
('s_emotion_A1_05','I''m scared.','무서워요.','I''m scared','감정 형용사 앞에 I''m을 붙이면 바로 기분을 전달할 수 있어요.','공포 표현','A1','emotion','pattern',NULL,5),
('s_emotion_A1_06','I feel good!','기분이 좋아요!','feel good','feel good은 신체적으로도, 감정적으로도 쓸 수 있는 표현이에요.','긍정 감정','A1','emotion','pattern',NULL,6),
('s_emotion_A1_07','I''m not okay.','괜찮지 않아요.','not okay','부정형으로 솔직하게 감정을 표현하는 표현이에요.','솔직한 감정 표현','A1','emotion','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — A2 (7 patterns)
-- Situation: 감정 공유
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_A2_01','I''m a little worried about it.','그것에 대해 좀 걱정돼요.','a little worried','a little을 붙이면 감정을 부드럽게, 덜 직접적으로 표현할 수 있어요.','걱정 공유','A2','emotion','pattern',NULL,1),
('s_emotion_A2_02','She seemed upset when I saw her.','내가 봤을 때 그녀는 속상해 보였어요.','seemed upset','seemed + 감정 형용사는 다른 사람의 감정을 묘사할 때 써요.','감정 묘사','A2','emotion','pattern',NULL,2),
('s_emotion_A2_03','I got so nervous before the speech.','발표 전에 너무 긴장했어요.','got so nervous','got + 형용사는 감정 변화를 나타낼 때 쓰는 자연스러운 패턴이에요.','긴장 공유','A2','emotion','pattern',NULL,3),
('s_emotion_A2_04','I felt really grateful for your help.','도움에 정말 감사함을 느꼈어요.','felt really grateful','과거에 느낀 감정을 felt로 표현하는 패턴이에요.','감사 표현','A2','emotion','pattern',NULL,4),
('s_emotion_A2_05','He was so surprised by the news.','그는 그 소식에 정말 놀랐어요.','so surprised','so + 감정 형용사로 감정의 강도를 표현해요.','놀람 표현','A2','emotion','pattern',NULL,5),
('s_emotion_A2_06','I''m feeling a bit bored at home.','집에서 좀 지루하게 느껴지고 있어요.','feeling a bit bored','현재진행형 am feeling은 지금 이 순간의 감정에 집중하는 표현이에요.','지루함 표현','A2','emotion','pattern',NULL,6),
('s_emotion_A2_07','I was so relieved to hear that.','그 말을 듣고 정말 안도했어요.','so relieved to hear','relieved to + 동사원형은 안도의 이유를 함께 표현하는 패턴이에요.','안도 표현','A2','emotion','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — B1 (7 patterns)
-- Situation: 위로, 공감
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_B1_01','I completely understand how you feel.','어떤 기분인지 완전히 이해해요.','completely understand','완전히 공감할 때 completely understand를 쓰면 진심이 더 잘 전달돼요.','공감 표현','B1','emotion','pattern',NULL,1),
('s_emotion_B1_02','It''s okay to feel that way.','그렇게 느끼는 건 괜찮아요.','It''s okay to feel','상대방의 감정을 인정할 때 It''s okay to feel that way는 따뜻한 위로가 돼요.','위로 표현','B1','emotion','pattern',NULL,2),
('s_emotion_B1_03','I''ve been feeling a bit overwhelmed lately.','요즘 좀 압도되는 기분이에요.','feeling a bit overwhelmed','lately를 붙이면 최근의 지속적인 감정 상태를 표현할 수 있어요.','감정 공유','B1','emotion','pattern',NULL,3),
('s_emotion_B1_04','That must have been really frustrating for you.','그게 당신에게 정말 답답했겠어요.','must have been really frustrating','must have been은 상대방이 겪었을 감정에 공감할 때 쓰는 표현이에요.','공감 표현','B1','emotion','pattern',NULL,4),
('s_emotion_B1_05','I felt so guilty about what happened.','일어난 일에 대해 정말 죄책감을 느꼈어요.','felt so guilty','felt guilty about + 명사/동명사는 죄책감을 표현하는 자연스러운 패턴이에요.','죄책감 표현','B1','emotion','pattern',NULL,5),
('s_emotion_B1_06','She seemed really enthusiastic about the project.','그녀는 프로젝트에 정말 열의를 보이는 것 같았어요.','seemed really enthusiastic','seemed + 부사 + 감정 형용사로 다른 사람의 감정을 자연스럽게 묘사해요.','감정 묘사','B1','emotion','pattern',NULL,6),
('s_emotion_B1_07','I''m so relieved it all worked out in the end.','결국 다 잘 풀려서 정말 안도돼요.','so relieved it all worked out','it all worked out은 일이 잘 해결됐을 때 쓰는 표현이에요.','안도 표현','B1','emotion','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — B2 (7 patterns)
-- Situation: 감정 묘사
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_B2_01','I couldn''t help feeling a sense of melancholy as I left.','떠나면서 우울한 기분이 드는 걸 어쩔 수 없었어요.','couldn''t help feeling','couldn''t help + 동명사는 감정이나 충동을 참을 수 없었다는 뜻이에요.','감정 묘사','B2','emotion','pattern',NULL,1),
('s_emotion_B2_02','I felt a deep sense of nostalgia looking at those old photos.','그 오래된 사진들을 보며 깊은 향수를 느꼈어요.','a deep sense of nostalgia','a deep sense of + 감정 명사는 감정의 깊이를 세련되게 표현해요.','감정 묘사','B2','emotion','pattern',NULL,2),
('s_emotion_B2_03','She was visibly shaken by the news.','그녀는 그 소식에 눈에 띄게 동요했어요.','visibly shaken','visibly + 감정 형용사는 감정이 표면에 드러난 상태를 묘사해요.','감정 묘사','B2','emotion','pattern',NULL,3),
('s_emotion_B2_04','I find it hard to put into words how grateful I am.','얼마나 감사한지 말로 표현하기가 어려워요.','hard to put into words','put into words는 감정을 언어로 담기 어려울 때 쓰는 세련된 표현이에요.','감사 표현','B2','emotion','pattern',NULL,4),
('s_emotion_B2_05','There''s something bittersweet about saying goodbye.','작별 인사를 하는 것에는 달콤씁쓸한 무언가가 있어요.','something bittersweet','bittersweet는 기쁨과 슬픔이 혼재하는 감정을 한 단어로 표현해요.','복잡한 감정','B2','emotion','pattern',NULL,5),
('s_emotion_B2_06','I was completely overwhelmed with gratitude.','감사함으로 완전히 압도됐어요.','overwhelmed with gratitude','overwhelmed with + 긍정 감정은 강한 긍정 감정 상태를 표현해요.','감사 표현','B2','emotion','pattern',NULL,6),
('s_emotion_B2_07','The situation left me feeling utterly bewildered.','그 상황은 저를 완전히 어리둥절하게 만들었어요.','left me feeling utterly bewildered','left me feeling + 형용사는 상황이 어떤 감정을 남겼는지 표현하는 B2 패턴이에요.','혼란 표현','B2','emotion','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — C1 (7 patterns)
-- Situation: 심리 표현
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_C1_01','There''s a certain ambivalence I feel whenever I think about it.','그것에 대해 생각할 때마다 묘한 양면적 감정이 들어요.','a certain ambivalence','a certain + 감정 명사는 정확히 정의하기 어렵지만 실재하는 감정을 표현해요.','심리 표현','C1','emotion','pattern',NULL,1),
('s_emotion_C1_02','She seemed to carry a quiet sense of resignation.','그녀는 조용한 체념을 지닌 것 같았어요.','carry a quiet sense of resignation','carry a sense of + 감정은 감정을 지속적으로 안고 있다는 뉘앙스를 줘요.','심리 묘사','C1','emotion','pattern',NULL,2),
('s_emotion_C1_03','I was left with a profound feeling of disenchantment.','깊은 환멸감이 남았어요.','a profound feeling of disenchantment','a profound feeling of + 감정은 깊고 지속적인 감정 상태를 묘사해요.','심리 표현','C1','emotion','pattern',NULL,3),
('s_emotion_C1_04','His pensive silence spoke volumes about how he truly felt.','그의 생각에 잠긴 침묵이 그가 실제로 어떻게 느끼는지 많은 것을 말해줬어요.','pensive silence spoke volumes','spoke volumes는 말보다 행동이나 표정이 더 많은 것을 전달한다는 뜻이에요.','감정 묘사','C1','emotion','pattern',NULL,4),
('s_emotion_C1_05','I couldn''t shake the feeling that something was deeply wrong.','뭔가 심각하게 잘못됐다는 느낌을 떨쳐낼 수 없었어요.','couldn''t shake the feeling','couldn''t shake the feeling은 불안한 직감이 계속 남아있을 때 쓰는 표현이에요.','불안 표현','C1','emotion','pattern',NULL,5),
('s_emotion_C1_06','There was an overwhelming sense of trepidation as the moment approached.','그 순간이 다가오면서 압도적인 불안감이 밀려왔어요.','overwhelming sense of trepidation','overwhelming + 감정 명사는 감정이 밀려오는 강도를 극적으로 표현해요.','긴장 표현','C1','emotion','pattern',NULL,6),
('s_emotion_C1_07','She experienced a strange mix of jubilation and loss.','그녀는 기쁨과 상실감이 묘하게 뒤섞인 감정을 경험했어요.','a strange mix of jubilation and loss','a strange mix of A and B는 상반된 두 감정이 공존하는 상태를 표현해요.','복합 감정','C1','emotion','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — C2 (7 patterns)
-- Situation: 감정 뉘앙스
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_C2_01','He bore his grief with a stoic equanimity that was both admirable and heartbreaking.','그는 감탄스럽기도 하고 가슴 아프기도 한 의연한 평정심으로 슬픔을 견뎌냈어요.','stoic equanimity','stoic equanimity는 감정을 억누르는 것이 아니라 평정심으로 받아들이는 태도를 의미해요.','감정 뉘앙스','C2','emotion','pattern',NULL,1),
('s_emotion_C2_02','There is something ineffable about the longing one feels for a place that no longer exists.','더 이상 존재하지 않는 장소에 대한 그리움에는 말로 표현할 수 없는 무언가가 있어요.','something ineffable about the longing','ineffable은 언어 너머의 감정을 암시할 때 쓰는 C2 수준의 표현이에요.','감정 뉘앙스','C2','emotion','pattern',NULL,2),
('s_emotion_C2_03','She remained sanguine in adversity, which struck me as either courage or delusion.','그녀는 역경 속에서도 낙관적이었는데, 그것이 용기인지 착각인지 가늠이 어려웠어요.','sanguine in adversity','sanguine + in adversity는 역경 속 낙관주의를 묘사하는 세련된 조합이에요.','감정 뉘앙스','C2','emotion','pattern',NULL,3),
('s_emotion_C2_04','The lugubrious atmosphere of the old house seemed to seep into my very bones.','오래된 집의 음울한 분위기가 내 뼛속까지 스며드는 것 같았어요.','lugubrious atmosphere seemed to seep','seep into one''s bones는 분위기나 감정이 깊숙이 침투함을 표현하는 문학적 표현이에요.','감정 묘사','C2','emotion','pattern',NULL,4),
('s_emotion_C2_05','His magnanimous response to the criticism left everyone in the room humbled.','비판에 대한 그의 관대한 반응이 방 안의 모든 사람을 겸허하게 만들었어요.','magnanimous response left everyone humbled','left everyone humbled는 특정 행동이 주변 사람들에게 깊은 인상을 남겼음을 표현해요.','감정 뉘앙스','C2','emotion','pattern',NULL,5),
('s_emotion_C2_06','She was ebullient on the surface, yet I sensed an undercurrent of lachrymose longing.','그녀는 겉으로는 활기차 보였지만, 눈물 어린 그리움의 저류가 느껴졌어요.','ebullient on the surface, yet undercurrent of lachrymose','undercurrent of + 감정은 표면 아래 숨겨진 감정을 암시하는 문학적 표현이에요.','복합 감정','C2','emotion','pattern',NULL,6),
('s_emotion_C2_07','It is only in retrospect that I can appreciate the bittersweet richness of those years.','이제 돌이켜보니 그 시절의 달콤씁쓸한 풍요로움이 비로소 감사하게 느껴져요.','only in retrospect that I can appreciate','only in retrospect는 지나고 나서야 알 수 있는 통찰을 전달하는 고급 표현이에요.','감정 뉘앙스','C2','emotion','pattern',NULL,7);

-- supabase-words-weather.sql
-- EngCat — Weather (날씨) 주제 단어 + 패턴
-- 210 words (35 per CEFR level A1~C2) + 42 patterns (7 per level)
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (35개)
-- 핵심 날씨 어휘: sunny, rainy, hot, cold, windy, cloudy, snow, warm, cool, weather ...
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_weather_A1_01','What''s the weather like today?','오늘 날씨 어때요?','What''s the weather like','"What''s the weather like?"는 날씨를 물을 때 가장 자연스러운 원어민 표현이에요. "How is the weather?"보다 훨씬 자주 쓰여요.','날씨 묻기','A1','weather','pattern',NULL,1),
('s_weather_A1_02','Is it hot or cold outside?','밖에 덥나요, 추운가요?','hot or cold outside','"or"를 사용해 두 가지 선택지를 제시하면 상대방이 대답하기 쉬워요. 날씨를 처음 묻는 기초 표현이에요.','날씨 묻기','A1','weather','pattern',NULL,2),
('s_weather_A1_03','It''s sunny today.','오늘은 화창해요.','It''s sunny','날씨를 말할 때 "It''s + 날씨 형용사" 패턴이 가장 기본이에요. "It"은 특별한 의미 없이 날씨 문장에서 주어로 써요.','날씨 묘사','A1','weather','pattern',NULL,3),
('s_weather_A1_04','It''s raining outside.','밖에 비가 오고 있어요.','It''s raining','동작이 지금 일어나고 있을 때는 "-ing" 형태를 써요. "It rains"보다 "It''s raining"이 지금 이 순간의 날씨를 묘사해요.','날씨 묘사','A1','weather','pattern',NULL,4),
('s_weather_A1_05','Don''t forget your umbrella!','우산 가져가는 거 잊지 마세요!','Don''t forget your umbrella','"Don''t forget your ~!"는 상대방을 걱정해 챙겨주는 표현이에요. 날씨 대화에서 자연스럽게 쓸 수 있어요.','날씨 조언','A1','weather','pattern',NULL,5),
('s_weather_A1_06','What is the weather like in winter?','겨울 날씨는 어때요?','weather like in winter','계절을 붙여 물으면 특정 계절의 날씨 특징을 알 수 있어요. "in + 계절" 조합을 꼭 기억하세요.','계절 날씨 묻기','A1','weather','pattern',NULL,6),
('s_weather_A1_07','It is very cold today, isn''t it?','오늘 정말 춥죠, 그렇지 않나요?','isn''t it','문장 끝에 "isn''t it?"를 붙이면 상대방의 동의를 구하는 부가의문문이 돼요. 영국 영어에서 특히 자주 써요.','날씨 공감 구하기','A1','weather','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCES / PATTERNS — A2 (7개)
-- 상황: 날씨 묘사
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_weather_A2_01','The weather is really nice today, don''t you think?','오늘 날씨가 정말 좋죠, 그렇지 않나요?','don''t you think','"don''t you think?"는 상대방의 의견을 자연스럽게 구하는 표현이에요. 날씨 소재로 대화를 시작할 때 유용해요.','날씨 묘사·공감','A2','weather','pattern',NULL,1),
('s_weather_A2_02','It''s getting colder these days.','요즘 점점 추워지고 있어요.','It''s getting colder','"It''s getting + 비교급"은 날씨 변화를 표현하는 핵심 패턴이에요. "warmer", "cloudier", "wetter" 등 다양한 형용사와 함께 써요.','날씨 변화 묘사','A2','weather','pattern',NULL,2),
('s_weather_A2_03','It looks like it''s going to rain.','비가 올 것 같아요.','It looks like it''s going to','"It looks like + 주어 + be going to + 동사"는 눈에 보이는 단서를 바탕으로 날씨를 예측할 때 써요.','날씨 예측','A2','weather','pattern',NULL,3),
('s_weather_A2_04','The forecast says it will be cloudy all day.','예보에서 하루 종일 흐릴 거라고 해요.','The forecast says it will be','"The forecast says ~"는 일기 예보 내용을 전달할 때 쓰는 패턴이에요. 뉴스나 앱 정보를 공유할 때 자연스러워요.','예보 전달','A2','weather','pattern',NULL,4),
('s_weather_A2_05','It was so foggy this morning that I could barely see.','오늘 아침에 너무 안개가 끼어서 잘 보이지 않았어요.','so foggy that I could barely see','"so + 형용사 + that ~" 패턴은 결과를 강조해요. "barely"는 "거의 ~않다"는 뜻으로 부정적 상황을 강조할 때 써요.','날씨 상황 묘사','A2','weather','pattern',NULL,5),
('s_weather_A2_06','The temperature dropped suddenly overnight.','밤 사이에 기온이 갑자기 떨어졌어요.','temperature dropped suddenly overnight','"overnight"는 "밤 사이에"라는 뜻으로, 날씨가 빠르게 변한 상황을 표현할 때 자주 써요.','기온 변화 묘사','A2','weather','pattern',NULL,6),
('s_weather_A2_07','I prefer sunny weather to rainy weather.','저는 비 오는 날보다 화창한 날을 더 좋아해요.','prefer A to B','"prefer A to B"는 "B보다 A를 더 좋아한다"는 표현이에요. 날씨 취향을 말할 때 자연스럽게 쓸 수 있어요.','날씨 선호 표현','A2','weather','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCES / PATTERNS — B1 (7개)
-- 상황: 날씨 예보, 옷차림 조언
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_weather_B1_01','According to the forecast, there''s a high chance of thunderstorms this evening.','예보에 따르면 오늘 저녁 뇌우가 올 확률이 높아요.','According to the forecast','뉴스나 날씨 앱의 정보를 인용할 때 "According to the forecast"를 쓰면 격식 있고 정확하게 들려요.','날씨 예보 전달','B1','weather','pattern',NULL,1),
('s_weather_B1_02','You should layer up — the temperature is expected to drop significantly later.','껴입는 게 좋겠어요. 나중에 기온이 많이 떨어질 거예요.','layer up, expected to drop significantly','"layer up"는 옷을 겹쳐 입으라는 실용적 조언이에요. "expected to"는 예측을 표현하는 격식체 표현이에요.','옷차림 조언','B1','weather','pattern',NULL,2),
('s_weather_B1_03','The humidity is making it feel much hotter than it actually is.','습도 때문에 실제보다 훨씬 더 덥게 느껴져요.','humidity is making it feel','습도가 체감 온도에 영향을 주는 현상을 설명할 때 쓰는 표현이에요. "make + 목적어 + 동사원형" 구조를 활용해요.','날씨 체감 묘사','B1','weather','pattern',NULL,3),
('s_weather_B1_04','I would recommend bringing a light jacket in case the weather changes.','날씨가 변할 경우를 대비해 얇은 재킷을 챙기길 권해요.','in case the weather changes','"in case"는 "~에 대비해서"라는 뜻으로, 예방적 조언을 줄 때 꼭 쓰는 표현이에요.','옷차림 조언','B1','weather','pattern',NULL,4),
('s_weather_B1_05','The weather has been unusually warm for this time of year.','이맘때치고는 날씨가 유난히 따뜻해요.','unusually warm for this time of year','계절 평균과 비교해 현재 날씨가 특이하다고 말할 때 쓰는 표현이에요. "for this time of year"를 꼭 익혀두세요.','날씨 비교 묘사','B1','weather','pattern',NULL,5),
('s_weather_B1_06','There''s a severe weather warning in place for the northern regions.','북부 지역에 악천후 경보가 발령되어 있어요.','severe weather warning in place','"There''s a ~ warning in place"는 공식 기상 경보를 전달하는 뉴스식 표현이에요.','기상 경보 전달','B1','weather','pattern',NULL,6),
('s_weather_B1_07','With the heat index above 40 degrees, outdoor activities are not advisable.','체감 온도가 40도를 넘으니 야외 활동은 권장하지 않아요.','heat index above, not advisable','체감 온도와 건강 권고를 연결하는 실용적 표현이에요. "not advisable"은 공식 권고문에서 자주 등장해요.','폭염 안전 조언','B1','weather','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCES / PATTERNS — B2 (7개)
-- 상황: 기후 토론
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_weather_B2_01','Climate change is intensifying the frequency and severity of extreme weather events.','기후 변화가 극한 기상 현상의 빈도와 심각성을 증가시키고 있어요.','intensifying the frequency and severity','학술 및 뉴스 토론에서 자주 등장하는 문장 구조예요. "intensify"는 단순히 "심해지다"보다 더 정확하고 강한 표현이에요.','기후 토론','B2','weather','pattern',NULL,1),
('s_weather_B2_02','The monsoon season has become increasingly unpredictable due to shifting weather patterns.','변화하는 기상 패턴으로 인해 몬순 시즌이 점점 더 예측하기 어려워지고 있어요.','increasingly unpredictable due to','"increasingly + 형용사"는 변화의 추세를 강조해요. "due to"는 원인을 격식 있게 표현하는 방법이에요.','기후 변화 토론','B2','weather','pattern',NULL,2),
('s_weather_B2_03','There is growing scientific consensus that anthropogenic emissions are driving global warming.','인간 활동으로 인한 배출이 지구 온난화를 촉진하고 있다는 과학적 공감대가 커지고 있어요.','growing scientific consensus','영어 토론에서 "growing consensus"는 "다수의 의견이 모이고 있다"는 뉘앙스예요. "anthropogenic"은 반드시 알아야 할 기후 관련 단어예요.','기후 과학 토론','B2','weather','pattern',NULL,3),
('s_weather_B2_04','The correlation between rising CO₂ levels and global average temperatures is well established.','CO₂ 수준 상승과 전 지구 평균 기온 사이의 상관관계는 잘 확립되어 있어요.','correlation is well established','"well established"는 과학적으로 검증된 사실을 언급할 때 쓰는 표현이에요. 토론에서 근거를 제시할 때 유용해요.','기후 과학 토론','B2','weather','pattern',NULL,4),
('s_weather_B2_05','Prolonged droughts in sub-Saharan Africa are threatening food security for millions.','사하라 이남 아프리카의 장기 가뭄이 수백만 명의 식량 안보를 위협하고 있어요.','Prolonged droughts threatening food security','사회적 영향을 설명하는 데 쓰는 구조로, "threaten + 명사"는 심각한 위협을 표현해요.','기후·사회 영향 토론','B2','weather','pattern',NULL,5),
('s_weather_B2_06','Rising sea levels pose an existential threat to low-lying island nations.','해수면 상승은 저지대 섬나라들에 실존적 위협을 가하고 있어요.','pose an existential threat','"pose a threat"은 "위협을 제기하다"라는 관용 표현이에요. "existential"은 생존 자체를 위협하는 수준의 위기를 나타내요.','기후·지정학 토론','B2','weather','pattern',NULL,6),
('s_weather_B2_07','Governments must implement ambitious policies to transition to a low-carbon economy.','정부는 저탄소 경제로 전환하기 위한 야심찬 정책을 시행해야 해요.','implement ambitious policies to transition','기후 정책 토론의 핵심 표현이에요. "transition to"는 변화의 방향을 나타내며, 기후 관련 논문·보고서에서 자주 등장해요.','기후 정책 토론','B2','weather','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCES / PATTERNS — C1 (7개)
-- 상황: 기후 변화 논의
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_weather_C1_01','The stratospheric ozone depletion and its recovery illustrate how policy intervention can reverse environmental damage.','성층권 오존 감소와 회복은 정책적 개입이 환경 피해를 되돌릴 수 있다는 것을 보여줘요.','illustrate how policy intervention can reverse','과학적 사례를 들어 정책의 효과를 논증하는 고급 학술 표현이에요. "illustrate"는 구체적 예시로 설명하다는 의미예요.','기후 정책 논의','C1','weather','pattern',NULL,1),
('s_weather_C1_02','The amplification of Arctic warming relative to the global average — often termed Arctic amplification — is accelerating permafrost thaw.','전 지구 평균 대비 북극 온난화 증폭, 즉 북극 증폭 현상이 영구 동토층 해빙을 가속하고 있어요.','Arctic amplification accelerating permafrost thaw','대시(—)로 전문 용어를 삽입하는 학술 문체예요. "relative to"는 "~에 비해"라는 비교 표현으로 논문에서 자주 쓰여요.','기후 과학 심화 논의','C1','weather','pattern',NULL,2),
('s_weather_C1_03','Teleconnections such as El Niño have profound implications for agricultural planning across the globe.','엘니뇨와 같은 원격 상관은 전 세계 농업 계획에 심대한 영향을 미쳐요.','Teleconnections have profound implications for','"have profound implications for"는 중대한 영향을 언급하는 학술 토론의 핵심 표현이에요.','기후·농업 연계 논의','C1','weather','pattern',NULL,3),
('s_weather_C1_04','Without significant reductions in radiative forcing, crossing multiple tipping points becomes increasingly probable.','복사 강제력을 크게 줄이지 않으면 여러 임계점을 넘을 가능성이 점점 높아져요.','Without significant reductions... becomes increasingly probable','조건절로 위험 시나리오를 논증하는 학술 표현이에요. "increasingly probable"은 확률의 점진적 증가를 표현해요.','기후 위험 논의','C1','weather','pattern',NULL,4),
('s_weather_C1_05','The thermohaline circulation is sensitive to freshwater input from melting ice sheets, which could disrupt heat distribution across the North Atlantic.','열염 순환은 빙상 녹음으로 인한 담수 유입에 민감하며, 이는 북대서양 전반의 열 분배를 교란할 수 있어요.','sensitive to freshwater input, could disrupt','"sensitive to"는 특정 요인에 민감하게 반응한다는 표현이에요. 관계절(which)로 결과를 이어 설명하는 학술 문장 구조예요.','해양 기후 논의','C1','weather','pattern',NULL,5),
('s_weather_C1_06','Climate models project a poleward shift of storm tracks, altering precipitation patterns in mid-latitudes.','기후 모델은 폭풍 경로의 극 방향 이동을 예측하며, 이는 중위도 강수 패턴을 변화시킬 거예요.','project a poleward shift, altering precipitation patterns','"project"가 명사가 아닌 동사로 "예측하다"를 뜻하는 학술적 용법이에요. 분사구문(altering)으로 결과를 우아하게 연결해요.','기후 모델 논의','C1','weather','pattern',NULL,6),
('s_weather_C1_07','Robust attribution studies have established that the 2021 Pacific Northwest heat dome was virtually impossible without anthropogenic climate forcing.','강력한 귀인 연구들은 2021년 태평양 연안 북서부의 열돔이 인위적 기후 강제력 없이는 사실상 불가능했음을 규명했어요.','attribution studies, virtually impossible without anthropogenic','기후 귀인 과학(attribution science)의 핵심 표현이에요. "virtually impossible without"은 특정 원인의 결정적 역할을 논증할 때 써요.','기후 귀인 연구 토론','C1','weather','pattern',NULL,7);

-- ══════════════════════════════════════
-- SENTENCES / PATTERNS — C2 (7개)
-- 상황: 기후 변화 논의 (최고급)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_weather_C2_01','Paleoclimatological proxies, including ice cores and dendrochronological records, reveal that current warming rates are anomalous relative to any comparable interval in the Holocene.','빙하 코어와 수목 연륜 연대학 기록을 포함한 고기후학적 대리 지표들은 현재의 온난화 속도가 홀로세의 어떤 유사 구간과 비교해도 이례적임을 보여줘요.','Paleoclimatological proxies reveal anomalous relative to','최고급 학술 작문의 전형으로, 복잡한 명사구를 명사로 쌓는 방식이에요. "anomalous relative to"는 비교 기준을 제시하는 정교한 표현이에요.','고기후학 학술 토론','C2','weather','pattern',NULL,1),
('s_weather_C2_02','The biogeochemical feedbacks triggered by permafrost degradation — notably the release of previously sequestered methane and CO₂ — could render current emission reduction targets insufficient.','영구 동토층 분해로 촉발된 생물 지구 화학적 피드백, 특히 과거에 격리된 메탄과 CO₂의 방출은 현재의 배출 감소 목표를 불충분하게 만들 수 있어요.','biogeochemical feedbacks, render targets insufficient','복잡한 삽입절(—notably~—)과 "render + 목적어 + 형용사" 사역 구조를 활용한 최고급 표현이에요.','기후 과학 최고급 논의','C2','weather','pattern',NULL,2),
('s_weather_C2_03','Disentangling natural climate variability from anthropogenic forcing requires sophisticated attribution methodologies that account for the full breadth of internal climate oscillations.','자연적 기후 변동성과 인위적 강제력을 분리하려면 내부 기후 진동의 전체 범위를 고려하는 정교한 귀인 방법론이 필요해요.','Disentangling natural variability from anthropogenic forcing requires sophisticated methodologies','"Disentangle A from B"는 복잡하게 얽힌 두 요소를 분리한다는 뜻이에요. 동명사로 문장을 시작하는 학술 문체예요.','기후 귀인 방법론 토론','C2','weather','pattern',NULL,3),
('s_weather_C2_04','The convergence of thermohaline circulation weakening, sea ice albedo feedback, and permafrost carbon release represents a compound risk that integrated assessment models may systematically underestimate.','열염 순환 약화, 해빙 알베도 피드백, 영구 동토층 탄소 방출의 수렴은 통합 평가 모델이 체계적으로 과소평가할 수 있는 복합적 위험을 나타내요.','convergence of... represents a compound risk that models may underestimate','세 가지 병렬 명사구를 "The convergence of A, B, and C"로 묶어 논지를 구성하는 고급 학술 구조예요.','기후 복합 위험 논의','C2','weather','pattern',NULL,4),
('s_weather_C2_05','Dendroclimatological reconstructions corroborate instrumentally derived temperature anomalies, lending credibility to projections that current forcing trajectories will breach Holocene temperature bounds within decades.','수목 연륜 기후학적 재구성은 기기로 도출된 기온 편차를 입증하며, 현재 강제력 궤적이 수십 년 내에 홀로세 기온 한계를 돌파할 것이라는 전망에 신뢰성을 부여해요.','corroborate, lending credibility to projections that will breach','"corroborate"는 "입증하다·확증하다"는 C2급 어휘예요. "lending credibility"는 분사구문으로 결과를 연결해요.','고기후 자료 해석 토론','C2','weather','pattern',NULL,5),
('s_weather_C2_06','Radiative forcing from short-lived climate pollutants, particularly black carbon and tropospheric ozone, constitutes a non-trivial fraction of total anthropogenic warming that near-term mitigation could rapidly reverse.','단기 기후 오염 물질, 특히 블랙 카본과 대류권 오존에 의한 복사 강제력은 근기간 완화를 통해 신속하게 되돌릴 수 있는 전체 인위적 온난화의 비무시적 비율을 구성해요.','short-lived climate pollutants, non-trivial fraction, mitigation could rapidly reverse','"non-trivial"은 "무시할 수 없는·상당한"을 뜻하는 학술 부정 수식어예요. 관계절(that near-term mitigation could rapidly reverse)이 핵심 논거를 담아요.','기후 완화 정책 학술 토론','C2','weather','pattern',NULL,6),
('s_weather_C2_07','The epistemological challenge of projecting abrupt, threshold-crossing climate transitions lies in the inherently nonlinear dynamics of Earth system feedbacks, which resist reliable quantification within current modelling frameworks.','임계점을 넘는 갑작스러운 기후 전환을 예측하는 인식론적 과제는 현재 모델링 프레임워크 내에서 신뢰할 수 있는 정량화에 저항하는 지구 시스템 피드백의 본질적으로 비선형적인 역학에 있어요.','epistemological challenge, nonlinear dynamics, resist reliable quantification','"epistemological"은 지식의 한계를 논하는 철학 용어예요. 가장 높은 수준의 기후 과학 담론에서 나타나는 문장 구조와 어휘를 담고 있어요.','기후 과학 철학적 논의','C2','weather','pattern',NULL,7);

-- supabase-words-shopping.sql
-- EngCat · Shopping (쇼핑) seed data
-- Words  : 35 per CEFR level (A1–C2) = 210 total
-- Patterns: 7 per CEFR level (A1–C2) = 42 total
-- Generated : 2026-05-24

-- ============================================================
-- WORDS
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES

-- ────────────────────────────────────────────────────────────
-- A1 — 가격 문의 & 계산 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_A1_01','How much is this?','이거 얼마예요?','How much is this','"How much is this?"는 가격을 물을 때 가장 기본적인 표현이에요. 매장 어디서든 바로 쓸 수 있어요.','가격 문의','A1','shopping','pattern',NULL,1),
('s_shopping_A1_02','How much does this cost?','이게 얼마예요?','How much does this cost','"How much does this cost?"는 "How much is this?"보다 조금 더 격식 있는 표현이에요.','가격 문의','A1','shopping','pattern',NULL,2),
('s_shopping_A1_03','I''ll take this one, please.','이걸로 할게요.','I''ll take this one','"I''ll take this one."은 구매 결정을 표현하는 가장 자연스럽고 예의 바른 방법이에요.','구매 결정','A1','shopping','pattern',NULL,3),
('s_shopping_A1_04','Can I pay by card?','카드로 지불해도 될까요?','Can I pay by card','"Can I pay by card?"는 신용카드·체크카드 모두에 쓸 수 있는 표현이에요.','계산','A1','shopping','pattern',NULL,4),
('s_shopping_A1_05','Do you have this in a bigger size?','이거 더 큰 사이즈 있나요?','bigger size','사이즈를 물을 때 "bigger/smaller/different size"를 함께 기억하면 유용해요.','사이즈 문의','A1','shopping','pattern',NULL,5),
('s_shopping_A1_06','Can I have a bag, please?','봉투 주실 수 있어요?','Can I have a bag','영국식 영어에서는 "carrier bag", 미국식에서는 "shopping bag"이라고도 해요.','쇼핑백 요청','A1','shopping','pattern',NULL,6),
('s_shopping_A1_07','Where is the checkout?','계산대가 어디예요?','Where is the checkout',"checkout"은 대형마트의 계산대, "cash register"는 소규모 매장에서도 쓰여요.','위치 문의','A1','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- A2 — 사이즈·색상 / 환불 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_A2_01','Do you have this in blue?','이거 파란색으로도 있나요?','in blue','색상을 물을 때는 "in + 색깔" 구조를 쓰면 자연스러워요. 예: "in red", "in black".','색상 문의','A2','shopping','pattern',NULL,1),
('s_shopping_A2_02','Can I try this on?','이거 입어봐도 될까요?','Can I try this on','"try on"은 옷·신발을 직접 착용해보는 행위예요. "try out"은 기계·서비스를 시험해볼 때 써요.','착용 요청','A2','shopping','pattern',NULL,2),
('s_shopping_A2_03','Where is the fitting room?','탈의실이 어디예요?','fitting room','"fitting room", "changing room", "dressing room" 모두 같은 의미예요. 나라마다 선호하는 표현이 달라요.','위치 문의','A2','shopping','pattern',NULL,3),
('s_shopping_A2_04','I''d like to return this, please.','이 제품을 반품하고 싶어요.','I''d like to return','"I''d like to ..."는 "I want to ..."보다 더 공손한 표현이에요. 반품·교환 시 꼭 사용하세요.','반품 요청','A2','shopping','pattern',NULL,4),
('s_shopping_A2_05','Can I get a refund?','환불받을 수 있나요?','Can I get a refund','"refund"는 돈을 돌려받는 것, "exchange"는 다른 상품으로 교환하는 것이에요.','환불 요청','A2','shopping','pattern',NULL,5),
('s_shopping_A2_06','Is there a discount for members?','회원 할인이 있나요?','discount for members','포인트 카드나 앱 회원증을 제시하면서 쓰기 좋은 표현이에요.','할인 문의','A2','shopping','pattern',NULL,6),
('s_shopping_A2_07','Do you accept credit cards?','신용카드도 받나요?','Do you accept credit cards','"Do you accept ...?"는 지불 방법을 확인하는 표현이에요. "cash", "contactless" 등으로 바꿔 쓸 수 있어요.','결제 수단 문의','A2','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- B1 — 흥정 & 할인 요청 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_B1_01','Is there any room to negotiate the price?','가격을 좀 조정해 주실 수 있어요?','room to negotiate','"room to negotiate"는 협상 여지가 있는지 부드럽게 묻는 표현이에요. 직접적으로 "Can you lower the price?"보다 자연스러워요.','흥정','B1','shopping','pattern',NULL,1),
('s_shopping_B1_02','Would you be able to give me a discount if I bought two?','두 개 사면 할인해 주실 수 있어요?','give me a discount','수량 할인을 요청할 때 쓰는 표현이에요. "if I bought ..."로 조건부 요청이 가능해요.','수량 할인 요청','B1','shopping','pattern',NULL,2),
('s_shopping_B1_03','I found it cheaper at another store. Can you match the price?','다른 매장에서 더 싸게 봤어요. 가격을 맞춰 주실 수 있어요?','match the price','가격 매칭(price matching)을 요청하는 표현이에요. 대형 소매점에서 특히 효과적이에요.','가격 매칭','B1','shopping','pattern',NULL,3),
('s_shopping_B1_04','I''m a regular customer. Is there any special deal for me?','저 단골 고객이에요. 특별히 해주실 수 있는 게 있나요?','regular customer / special deal','단골임을 강조해 추가 혜택을 요청하는 방법이에요.','특별 혜택 요청','B1','shopping','pattern',NULL,4),
('s_shopping_B1_05','Can I use this coupon with the sale price?','세일가에 이 쿠폰도 같이 쓸 수 있나요?','use this coupon with the sale price','쿠폰과 세일을 중복 적용할 수 있는지 확인하는 표현이에요.','쿠폰 적용 문의','B1','shopping','pattern',NULL,5),
('s_shopping_B1_06','I''d like to pay in installments. Is that possible?','할부로 낼 수 있을까요?','pay in installments','분할 납부를 요청하는 표현이에요. "monthly installments"라고 하면 월별 할부를 뜻해요.','할부 결제 요청','B1','shopping','pattern',NULL,6),
('s_shopping_B1_07','What''s the best price you can do?','제일 낮은 가격이 얼마예요?','the best price you can do','협상할 때 상대방이 제시할 수 있는 최선의 가격을 묻는 표현이에요.','최저가 문의','B1','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- B2 — 불만 표현 & 비교 쇼핑 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_B2_01','I''m not satisfied with the quality of this product. I''d like to speak to a manager.','이 제품의 품질이 만족스럽지 않아요. 매니저와 이야기하고 싶어요.','not satisfied / speak to a manager','불만을 표현하면서도 공손하게 상위 담당자를 요청하는 표현이에요.','불만 제기','B2','shopping','pattern',NULL,1),
('s_shopping_B2_02','This item arrived damaged. What''s your policy on returns?','상품이 파손된 상태로 도착했어요. 반품 정책이 어떻게 되나요?','arrived damaged / returns policy','온라인 구매 후 파손 배송을 신고할 때 쓰는 표현이에요.','파손 상품 신고','B2','shopping','pattern',NULL,2),
('s_shopping_B2_03','I''ve been comparing prices online and found this significantly cheaper elsewhere.','온라인으로 가격을 비교해 봤는데 다른 곳이 훨씬 저렴하더라고요.','comparing prices / significantly cheaper','비교 쇼핑 결과를 근거로 협상하는 고급 표현이에요.','비교 쇼핑 협상','B2','shopping','pattern',NULL,3),
('s_shopping_B2_04','I believe I was overcharged. Could you check the receipt?','제가 바가지를 쓴 것 같아요. 영수증을 확인해 주실 수 있어요?','overcharged / check the receipt','청구 오류를 공손하게 지적하는 표현이에요. "I believe"를 붙이면 단정하지 않아 더 자연스러워요.','청구 오류 지적','B2','shopping','pattern',NULL,4),
('s_shopping_B2_05','I''m torn between these two options. Which one would you recommend?','두 가지 중 어떤 걸 선택해야 할지 모르겠어요. 어떤 걸 추천하세요?','torn between / recommend','"torn between"은 두 가지 사이에서 결정을 못 하는 상황을 표현해요.','구매 추천 요청','B2','shopping','pattern',NULL,5),
('s_shopping_B2_06','Is there an extended warranty available for this product?','이 제품에 연장 보증 서비스가 있나요?','extended warranty','기본 보증 이후 추가 보장을 요청하는 표현이에요. 전자제품 구매 시 유용해요.','연장 보증 문의','B2','shopping','pattern',NULL,6),
('s_shopping_B2_07','I''d like to dispute this charge on my credit card statement.','신용카드 명세서의 이 청구 내역에 이의를 제기하고 싶어요.','dispute this charge','카드 청구 오류나 미승인 결제에 대해 이의를 제기하는 격식 표현이에요.','청구 이의 제기','B2','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- C1 — 협상 & 비즈니스 구매 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_C1_01','We''re looking to establish a long-term procurement relationship and would like to discuss volume pricing.','장기 조달 관계를 구축하고자 하며, 대량 구매 가격에 대해 논의하고 싶습니다.','long-term procurement / volume pricing','B2B 협상에서 장기 거래를 조건으로 단가 인하를 요청하는 고급 비즈니스 표현이에요.','B2B 협상','C1','shopping','pattern',NULL,1),
('s_shopping_C1_02','We need to carry out due diligence on your supply chain before finalising the contract.','계약을 확정하기 전에 귀사의 공급망에 대한 실사를 진행해야 합니다.','due diligence / supply chain','계약 전 공급업체를 검토하는 비즈니스 절차를 표현하는 고급 문장이에요.','계약 전 실사','C1','shopping','pattern',NULL,2),
('s_shopping_C1_03','Could you provide a detailed invoice, including a breakdown of costs?','비용 내역을 포함한 상세 인보이스를 제공해 주실 수 있나요?','detailed invoice / breakdown of costs','비용 구조를 투명하게 요청할 때 쓰는 격식 비즈니스 표현이에요.','인보이스 요청','C1','shopping','pattern',NULL,3),
('s_shopping_C1_04','We''d like to explore whether there''s scope for a bespoke arrangement.','맞춤형 계약 여지가 있는지 검토하고 싶습니다.','bespoke arrangement','"bespoke"는 주로 영국 영어에서 사용하며 "맞춤 제작의"라는 뜻이에요. B2B 협상에서 특별 조건을 협의할 때 씁니다.','맞춤 계약 제안','C1','shopping','pattern',NULL,4),
('s_shopping_C1_05','Our brand''s provenance and artisan heritage justify the premium pricing.','우리 브랜드의 출처와 장인 정신의 역사가 프리미엄 가격을 정당화합니다.','provenance / artisan heritage / premium pricing','프리미엄 가격을 설득력 있게 정당화하는 세일즈 표현이에요.','프리미엄 가격 정당화','C1','shopping','pattern',NULL,5),
('s_shopping_C1_06','We''re concerned about potential grey market activity undermining our exclusive distribution rights.','회색 시장 활동이 저희의 독점 유통권을 약화시킬 것을 우려하고 있어요.','grey market / exclusive distribution rights','독점 유통권 보호를 위한 법적·비즈니스적 표현이에요.','유통 권한 논의','C1','shopping','pattern',NULL,6),
('s_shopping_C1_07','We propose a consignment model to reduce your inventory risk while ensuring product availability.','귀사의 재고 위험을 줄이면서 상품 가용성을 확보하기 위해 위탁 판매 모델을 제안합니다.','consignment model / inventory risk','위탁 판매 계약을 제안하는 비즈니스 협상 표현이에요.','위탁 판매 제안','C1','shopping','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- C2 — 협상 & 비즈니스 구매 (고급) (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_shopping_C2_01','The proposed markup structure fails to account for the asymmetric information between the manufacturer and the end retailer.','제안된 마진 구조는 제조업체와 최종 소매업체 간의 정보 비대칭을 반영하지 못하고 있습니다.','markup structure / asymmetric information','정보 비대칭 이론을 실제 협상에 적용하는 고급 비즈니스 표현이에요.','가격 구조 비판','C2','shopping','pattern',NULL,1),
('s_shopping_C2_02','The cartel-like behaviour among suppliers constitutes a restraint of trade and may attract regulatory scrutiny.','공급업체들의 카르텔과 같은 행동은 거래 제한에 해당하며 규제 당국의 조사를 받을 수 있습니다.','cartel-like behaviour / restraint of trade','공정거래법 위반 가능성을 지적하는 법적·경제적 표현이에요.','공정거래 위반 지적','C2','shopping','pattern',NULL,2),
('s_shopping_C2_03','Commodification of artisan products risks eroding the very brand equity that justifies their premium positioning.','장인 상품의 상품화는 프리미엄 포지셔닝을 정당화하는 브랜드 가치 자체를 훼손할 위험이 있어요.','commodification / brand equity / premium positioning','상품화의 역설적 위험을 설명하는 마케팅 전략 표현이에요.','브랜드 가치 보호 논의','C2','shopping','pattern',NULL,3),
('s_shopping_C2_04','We must factor in both the net present value of the contract and potential depreciation of key assets over the agreement''s lifetime.','계약의 순현재가치와 계약 기간 동안의 핵심 자산 감가상각 가능성 모두를 고려해야 합니다.','net present value / depreciation','재무적 관점에서 계약을 평가하는 고급 비즈니스 표현이에요.','재무 평가 표현','C2','shopping','pattern',NULL,4),
('s_shopping_C2_05','The franchisee''s obligations under the agreement must be clearly delineated to prevent any regulatory arbitrage.','가맹점주의 계약상 의무는 규제 차익거래를 방지하기 위해 명확하게 명시돼야 합니다.','franchisee obligations / regulatory arbitrage','프랜차이즈 계약의 법적 엄밀성을 강조하는 표현이에요.','프랜차이즈 계약 논의','C2','shopping','pattern',NULL,5),
('s_shopping_C2_06','Planned obsolescence strategies, while boosting short-term sales, create negative externalities that increasingly expose brands to reputational and regulatory risk.','계획적 노후화 전략은 단기 매출을 높이는 반면, 브랜드를 평판 및 규제 리스크에 점점 더 노출시키는 부정적 외부 효과를 창출합니다.','planned obsolescence / negative externalities / reputational risk','기업 전략의 장단기 트레이드오프를 분석하는 고급 경영 표현이에요.','기업 전략 비판','C2','shopping','pattern',NULL,6),
('s_shopping_C2_07','As a monopsony buyer, we have significant leverage, but exercising it aggressively risks triggering predatory pricing accusations and antitrust investigations.','수요 독점 구매자로서 우리는 상당한 협상력을 갖지만, 이를 공격적으로 행사하면 약탈적 가격 책정 혐의와 독점금지 조사를 유발할 위험이 있습니다.','monopsony / predatory pricing / antitrust','독점적 구매력의 법적 리스크를 논의하는 최고급 법경제학 표현이에요.','독점금지 리스크 논의','C2','shopping','pattern',NULL,7);

-- supabase-words-cafe.sql
-- EngCat — Cafe & Dining (카페·식당) 확장 단어/문장 데이터
-- 210 words (35 per CEFR level: A1~C2) + 42 patterns (7 per level)
-- NOTE: w_cafe_01~10 already exist — new IDs start from w_cafe_A1_01

-- ══════════════════════════════════════
-- WORDS — A1 (35개)
-- 핵심 테마: eat, drink, food, water, coffee, tea, menu, table, hungry, delicious
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_A1_01','A table for two, please.','두 명이에요.','A table for two','식당에 들어갈 때 인원수를 말하는 가장 자연스러운 표현이에요.','자리 안내','A1','cafe','pattern',NULL,1),
('s_cafe_A1_02','Can I see the menu, please?','메뉴판 볼 수 있을까요?','Can I see','레스토랑에서 주문 전에 메뉴를 요청하는 가장 기본적인 표현이에요.','메뉴 요청','A1','cafe','pattern',NULL,2),
('s_cafe_A1_03','I''ll have this one, please.','이걸로 주세요.','I''ll have','메뉴를 손으로 가리키며 주문할 때 쓰는 가장 간단한 표현이에요.','주문','A1','cafe','pattern',NULL,3),
('s_cafe_A1_04','Is this seat taken?','이 자리 비어 있나요?','Is this seat taken','카페나 식당에서 빈자리를 확인할 때 쓰는 기본 표현이에요.','자리 확인','A1','cafe','pattern',NULL,4),
('s_cafe_A1_05','How much is this?','이거 얼마예요?','How much is','가격을 물어볼 때 쓰는 가장 기본적인 표현이에요.','가격 문의','A1','cafe','pattern',NULL,5),
('s_cafe_A1_06','The bill, please.','계산서 주세요.','The bill, please','식사 후 계산을 요청하는 가장 간결한 표현이에요.','계산 요청','A1','cafe','pattern',NULL,6),
('s_cafe_A1_07','This is delicious!','정말 맛있어요!','This is delicious','음식이 맛있을 때 바로 칭찬할 수 있는 가장 자연스러운 표현이에요.','음식 칭찬','A1','cafe','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (7개)
-- 테마: 메뉴 문의, 계산
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_A2_01','What do you recommend?','무엇을 추천하시나요?','What do you recommend','웨이터에게 추천 메뉴를 물어볼 때 쓰는 가장 자연스러운 표현이에요.','메뉴 추천 문의','A2','cafe','pattern',NULL,1),
('s_cafe_A2_02','Can I get this to go, please?','포장으로 주실 수 있나요?','to go','"to go"는 포장을 의미하는 미국식 표현이에요. 영국에서는 "takeaway"를 써요.','포장 요청','A2','cafe','pattern',NULL,2),
('s_cafe_A2_03','Is there anything without meat?','고기가 안 들어간 메뉴가 있나요?','without meat','식이 제한이 있을 때 특정 재료를 제외한 메뉴를 물어보는 표현이에요.','채식 문의','A2','cafe','pattern',NULL,3),
('s_cafe_A2_04','Could we split the bill?','계산을 따로 할 수 있나요?','split the bill','여러 명이 함께 식사 후 각자 계산하고 싶을 때 쓰는 표현이에요.','계산 분리','A2','cafe','pattern',NULL,4),
('s_cafe_A2_05','Can I have a refill, please?','리필 해주실 수 있나요?','a refill','음료나 물이 비었을 때 다시 채워달라고 요청하는 표현이에요.','리필 요청','A2','cafe','pattern',NULL,5),
('s_cafe_A2_06','How long is the wait?','얼마나 기다려야 하나요?','How long is the wait','식당이 꽉 찼을 때 대기 시간을 묻는 표현이에요.','대기 시간 문의','A2','cafe','pattern',NULL,6),
('s_cafe_A2_07','Do you have a vegetarian option?','채식 메뉴가 있나요?','a vegetarian option','채식주의자이거나 고기를 먹지 않을 때 메뉴를 확인하는 표현이에요.','채식 메뉴 확인','A2','cafe','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B1 (7개)
-- 테마: 추천 요청, 알레르기
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_B1_01','What do you recommend for someone who doesn''t eat meat?','고기를 먹지 않는 사람에게는 무엇을 추천하시나요?','recommend for someone who','"recommend for someone who ~"는 조건에 맞는 추천을 구할 때 쓰는 표현이에요.','맞춤 추천 요청','B1','cafe','pattern',NULL,1),
('s_cafe_B1_02','I have a nut allergy — could you check the ingredients?','견과류 알레르기가 있어서 재료를 확인해 주실 수 있나요?','I have a nut allergy','알레르기를 직접적으로 알려주는 것이 안전을 위해 중요해요. 이 표현을 기억해 두세요.','알레르기 고지','B1','cafe','pattern',NULL,2),
('s_cafe_B1_03','Could you make it without onions, please?','양파 없이 만들어 주실 수 있나요?','make it without','특정 재료를 빼달라고 할 때 "make it without ~" 패턴이 유용해요.','재료 제외 요청','B1','cafe','pattern',NULL,3),
('s_cafe_B1_04','Is the kitchen able to accommodate dietary restrictions?','식이 제한에 맞춰 조리가 가능한가요?','accommodate dietary restrictions','"accommodate"는 요구를 수용한다는 뜻으로 레스토랑 맥락에서 자연스러운 표현이에요.','식이 제한 문의','B1','cafe','pattern',NULL,4),
('s_cafe_B1_05','Could I substitute the fries for a salad?','감자튀김 대신 샐러드로 바꿀 수 있나요?','substitute the fries for','"substitute A for B"는 A를 B로 교체한다는 표현이에요. 메뉴 커스터마이즈에 유용해요.','메뉴 변경 요청','B1','cafe','pattern',NULL,5),
('s_cafe_B1_06','I think there''s a mistake in the bill.','계산서에 실수가 있는 것 같아요.','I think there''s a mistake','"I think"를 앞에 붙이면 직접적인 항의보다 훨씬 예의 바르게 들려요.','계산서 오류 지적','B1','cafe','pattern',NULL,6),
('s_cafe_B1_07','What''s the house specialty today?','오늘의 특선 요리는 무엇인가요?','the house specialty','레스토랑에서 셰프가 자신 있는 요리를 물어볼 때 쓰는 표현이에요.','특선 요리 문의','B1','cafe','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B2 (7개)
-- 테마: 요리 묘사, 와인 페어링
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_B2_01','The dish has a beautiful balance of acidity and richness.','이 요리는 산미와 풍미의 균형이 아름다워요.','balance of acidity and richness','음식의 맛의 균형을 묘사할 때 "balance of"를 활용하면 세련되게 들려요.','요리 묘사','B2','cafe','pattern',NULL,1),
('s_cafe_B2_02','Would you be able to suggest a wine pairing for this dish?','이 요리에 어울리는 와인 페어링을 추천해 주실 수 있나요?','suggest a wine pairing','"Would you be able to..."는 정중한 요청의 표현이에요. 고급 레스토랑에서 유용해요.','와인 페어링 요청','B2','cafe','pattern',NULL,2),
('s_cafe_B2_03','The sauce has a lovely depth of flavor with just a hint of smokiness.','소스에 훈연향이 살짝 감도는 깊은 풍미가 있어요.','depth of flavor with a hint of','"a hint of"는 풍미가 약간 느껴진다는 뜻의 세련된 표현이에요.','요리 평가','B2','cafe','pattern',NULL,3),
('s_cafe_B2_04','I noticed the menu focuses heavily on locally sourced, seasonal produce.','메뉴가 로컬 식재료와 제철 재료를 중심으로 구성된 것 같아요.','locally sourced, seasonal produce','레스토랑의 철학을 인식하고 표현할 줄 아는 것은 미식가의 언어예요.','레스토랑 철학 언급','B2','cafe','pattern',NULL,4),
('s_cafe_B2_05','The texture of the mousse is incredibly light — it almost dissolves on the palate.','무스의 식감이 믿을 수 없을 만큼 가벼워요. 입안에서 녹아버리는 것 같아요.','dissolves on the palate','"on the palate"은 "입안에서"라는 뜻으로 음식 리뷰에서 자주 쓰는 표현이에요.','디저트 묘사','B2','cafe','pattern',NULL,5),
('s_cafe_B2_06','Could you tell me more about the provenance of the ingredients?','재료의 산지에 대해 더 알려주실 수 있나요?','provenance of the ingredients','좋은 레스토랑에서는 재료의 출처를 자랑스럽게 이야기해요. 이 질문으로 대화를 유도하세요.','재료 출처 문의','B2','cafe','pattern',NULL,6),
('s_cafe_B2_07','I think the fermentation adds a wonderful complexity to the bread.','발효 과정이 빵에 훌륭한 복잡성을 더해주는 것 같아요.','fermentation adds a wonderful complexity','음식 제조 과정을 이해하고 표현하는 것은 B2 수준의 핵심 역량이에요.','요리 과정 언급','B2','cafe','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C1 (7개)
-- 테마: 음식 평론, 전문 용어
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_C1_01','The mise en place here is impeccable — every element of the dish arrives perfectly timed.','여기의 미장 플라스는 완벽해요. 요리의 모든 요소가 정확한 타이밍에 나와요.','mise en place is impeccable','미장 플라스는 요리 전 준비를 뜻해요. 레스토랑의 전문성을 높이 평가할 때 쓰는 표현이에요.','레스토랑 평론','C1','cafe','pattern',NULL,1),
('s_cafe_C1_02','The tasting menu does a remarkable job of showcasing the terroir of this region.','테이스팅 메뉴가 이 지역의 테루아를 탁월하게 보여주고 있어요.','showcasing the terroir','"terroir"는 원래 와인 용어지만 요리에서도 지역의 환경과 특색을 표현할 때 써요.','테이스팅 메뉴 평가','C1','cafe','pattern',NULL,2),
('s_cafe_C1_03','The charcuterie board is a study in contrast — the saltiness of the cured meats beautifully offsets the sweetness of the compote.','샤르퀴트리 보드는 대비의 예술이에요. 염장 고기의 짠맛이 콩포트의 단맛을 아름답게 상쇄해요.','a study in contrast','"a study in ~"은 어떤 특성의 완벽한 예시를 뜻하는 표현이에요.','음식 묘사','C1','cafe','pattern',NULL,3),
('s_cafe_C1_04','I appreciate how the reduction ties all the elements of the dish together.','리덕션이 요리의 모든 요소를 하나로 묶어주는 방식이 마음에 들어요.','the reduction ties all the elements together','"ties together"는 요소들을 통합한다는 뜻으로 요리 평론에서 유용한 표현이에요.','요리 기법 평론','C1','cafe','pattern',NULL,4),
('s_cafe_C1_05','Could you walk me through the foraging philosophy behind this seasonal menu?','이 시즌 메뉴의 채집 철학에 대해 설명해 주실 수 있나요?','walk me through the foraging philosophy','"walk me through"는 단계별로 설명해 달라는 뜻이에요. 지적 호기심을 표현하는 세련된 표현이에요.','레스토랑 철학 탐구','C1','cafe','pattern',NULL,5),
('s_cafe_C1_06','The Michelin inspector would certainly appreciate the restraint shown in the plating.','미슐랭 심사위원이라면 플레이팅의 절제미를 분명히 높이 평가할 거예요.','restraint shown in the plating','"restraint in plating"은 과하지 않은 절제된 플레이팅을 뜻해요. 파인 다이닝의 핵심 미학이에요.','파인 다이닝 평론','C1','cafe','pattern',NULL,6),
('s_cafe_C1_07','The sous vide preparation ensures a consistency that would be impossible to achieve with traditional methods.','수비드 조리법으로 전통 방식으로는 불가능한 일관성을 달성해요.','ensures a consistency that would be impossible','"ensures a consistency"는 균일한 품질을 보장한다는 뜻이에요.','조리 기법 설명','C1','cafe','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C2 (7개)
-- 테마: 와인 전문 용어, 고급 미식 평론
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_cafe_C2_01','The malolactic fermentation gives this Chardonnay a buttery, almost creamy quality that beautifully complements the lobster bisque.','유산 발효가 이 샤르도네에 버터 같은 크리미한 품질을 부여해서 바닷가재 비스크와 완벽하게 어울려요.','malolactic fermentation gives a buttery quality','유산 발효는 사과산을 젖산으로 전환하는 과정이에요. 샤르도네의 크리미한 특성의 원인이 돼요.','와인 페어링 설명','C2','cafe','pattern',NULL,1),
('s_cafe_C2_02','The high tannin structure of this Barolo demands either a fatty red meat or a good decade of cellaring to soften its edges.','이 바롤로의 강한 타닌 구조는 기름진 적색육이나 10년의 셀러링을 필요로 해요.','high tannin structure demands','타닌은 와인의 수렴성을 만드는 폴리페놀 화합물이에요. 음식 페어링의 핵심 요소예요.','와인 전문 평론','C2','cafe','pattern',NULL,2),
('s_cafe_C2_03','The organoleptic assessment reveals a wine of extraordinary complexity — layers of terroir expressing themselves with each successive sip.','관능 평가에서 놀라운 복잡성을 가진 와인이 드러나요. 한 모금씩 마실 때마다 테루아의 층위가 표현돼요.','organoleptic assessment reveals','관능 평가(organoleptic assessment)는 시각, 후각, 미각을 통한 종합적 와인 평가예요.','와인 관능 평가','C2','cafe','pattern',NULL,3),
('s_cafe_C2_04','The appellation laws in Champagne strictly regulate the permitted varieties, yield per hectare, and minimum aging on lees.','샴페인의 원산지 명칭 법률은 허용 품종, 헥타르당 수확량, 효모 찌꺼기 위 최소 숙성 기간을 엄격히 규제해요.','appellation laws strictly regulate','원산지 명칭(appellation) 법률은 와인의 품질과 정체성을 보호하기 위한 법적 장치예요.','와인 원산지 명칭 설명','C2','cafe','pattern',NULL,4),
('s_cafe_C2_05','The chef''s application of spherification transforms a classic ponzu into tiny caviar pearls that burst with umami on the palate.','셰프의 구형화 기법이 클래식 폰즈를 입안에서 감칠맛이 터지는 작은 캐비어 구슬로 변환시켜요.','spherification transforms into caviar pearls','구형화는 분자 요리의 대표 기법으로 액체를 얇은 막으로 감싸 캐비어 형태로 만들어요.','분자 요리 묘사','C2','cafe','pattern',NULL,5),
('s_cafe_C2_06','What distinguishes a Grand Cru from a Premier Cru in Burgundy is ultimately a question of terroir specificity and the geological composition of the soil.','부르고뉴에서 그랑 크뤼와 프리미에 크뤼를 구별하는 것은 결국 테루아의 특수성과 토양의 지질학적 구성의 문제예요.','distinguishes Grand Cru from Premier Cru','그랑 크뤼와 프리미에 크뤼는 부르고뉴의 포도밭 등급 체계예요. 토양과 위치가 핵심이에요.','와인 등급 설명','C2','cafe','pattern',NULL,6),
('s_cafe_C2_07','The biodynamic viticulture practiced here treats the entire estate as a self-sustaining organism, eschewing synthetic inputs in favor of astronomical planting calendars and herbal preparations.','여기서 시행하는 생명역동 포도 재배는 합성 투입물 대신 천문학적 식재 달력과 허브 제제를 선호하며 전체 부동산을 자급자족하는 유기체로 취급해요.','biodynamic viticulture treats the entire estate as a self-sustaining organism','생명역동 농업은 루돌프 슈타이너의 철학에 기반한 총체적 유기 농업 접근법이에요.','생명역동 농업 설명','C2','cafe','pattern',NULL,7);

-- supabase-words-transport.sql
-- EngCat — Transport (교통) 단어 210개 + 패턴 42개
-- CEFR A1~C2, 35 words × 6 levels, 7 patterns × 6 levels
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (35개)
-- 테마: bus, taxi, train, car, walk, bike, road, stop, ticket, ride
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_transport_A1_01','Where is the bus stop?','버스 정류장이 어디예요?','bus stop','"Where is...?" 패턴은 장소를 물을 때 가장 기본적인 표현이에요.','길 찾기','A1','transport','pattern',NULL,1),
('s_transport_A1_02','How do I get to the train station?','기차역에 어떻게 가나요?','How do I get to','"How do I get to...?"는 목적지까지의 방법을 물을 때 쓰는 핵심 표현이에요.','길 찾기','A1','transport','pattern',NULL,2),
('s_transport_A1_03','Is the airport far from here?','공항이 여기서 멀어요?','far from here','"Is... far from here?"로 거리를 확인할 수 있어요.','거리 확인','A1','transport','pattern',NULL,3),
('s_transport_A1_04','Which bus goes to the city centre?','시내 중심까지 몇 번 버스가 가나요?','Which bus goes to','"Which bus goes to...?"는 올바른 버스 노선을 찾을 때 쓰는 표현이에요.','버스 노선 확인','A1','transport','pattern',NULL,4),
('s_transport_A1_05','Turn left at the traffic light.','신호등에서 왼쪽으로 도세요.','Turn left at','"Turn left/right at..."는 방향을 안내할 때 가장 기본적인 표현이에요.','길 안내','A1','transport','pattern',NULL,5),
('s_transport_A1_06','Go straight and then turn right.','직진 후에 오른쪽으로 도세요.','Go straight and then','두 단계 방향을 "and then"으로 자연스럽게 연결할 수 있어요.','길 안내','A1','transport','pattern',NULL,6),
('s_transport_A1_07','Excuse me, can you show me the way to the subway?','실례합니다, 지하철 가는 길을 알려주실 수 있나요?','can you show me the way','"Can you show me the way to...?"는 정중하게 길을 물어볼 때 쓰는 표현이에요.','도움 요청','A1','transport','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (7개) : 티켓 구매, 환승
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_transport_A2_01','I''d like a single ticket to Busan, please.','부산까지 편도 표 한 장 주세요.','I''d like a single ticket','"I''d like a... ticket to..."는 티켓 구매 시 가장 많이 쓰이는 문형이에요.','티켓 구매','A2','transport','pattern',NULL,1),
('s_transport_A2_02','How much is the fare to the airport?','공항까지 요금이 얼마예요?','How much is the fare','"How much is the fare to...?"로 요금을 정중하게 물어볼 수 있어요.','요금 문의','A2','transport','pattern',NULL,2),
('s_transport_A2_03','Do I need to transfer to get to Gangnam?','강남까지 가려면 환승해야 하나요?','Do I need to transfer','"Do I need to transfer?"는 환승 여부를 확인할 때 유용한 표현이에요.','환승 문의','A2','transport','pattern',NULL,3),
('s_transport_A2_04','Where do I transfer for the red line?','빨간 노선으로 환승하려면 어디서 갈아타나요?','Where do I transfer for','"Where do I transfer for...?"는 환승 위치를 물을 때 쓰는 표현이에요.','환승 위치','A2','transport','pattern',NULL,4),
('s_transport_A2_05','Is there a discount for students?','학생 할인이 있나요?','Is there a discount for','"Is there a discount for...?"는 할인 여부를 물어보는 자연스러운 표현이에요.','할인 문의','A2','transport','pattern',NULL,5),
('s_transport_A2_06','What time is the next train to Seoul?','다음 서울행 기차는 몇 시예요?','What time is the next train','"What time is the next...?"는 다음 교통편 시간을 물을 때 필수 표현이에요.','출발 시간 확인','A2','transport','pattern',NULL,6),
('s_transport_A2_07','Can I use this card to pay for the bus?','이 카드로 버스 요금을 낼 수 있나요?','Can I use this card to pay','"Can I use... to pay?"는 결제 수단을 확인할 때 쓰는 실용적인 표현이에요.','결제 방법','A2','transport','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B1 (7개) : 길 안내, 늦음
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_transport_B1_01','I''m sorry, I''m going to be a bit late — there''s heavy traffic on the motorway.','죄송해요, 고속도로에 차가 막혀서 조금 늦을 것 같아요.','I''m going to be a bit late','늦을 것 같을 때 이유와 함께 미리 알려주는 게 예의 바른 표현이에요.','지각 예고','B1','transport','pattern',NULL,1),
('s_transport_B1_02','Could you take the main road instead of the highway? It might be quicker.','고속도로 대신 일반 도로로 가주실 수 있나요? 더 빠를 수 있어요.','instead of the highway','"instead of"를 사용하면 대안 경로를 부드럽게 제안할 수 있어요.','경로 제안','B1','transport','pattern',NULL,2),
('s_transport_B1_03','The commute is really getting to me — I spend nearly two hours on the train every day.','통근이 정말 힘들어요 — 매일 기차에서 거의 두 시간을 보내거든요.','getting to me','"Getting to me"는 무언가가 점점 부담이 된다는 뉘앙스를 전달해요.','통근 불만','B1','transport','pattern',NULL,3),
('s_transport_B1_04','I usually carpool with two colleagues to save on fuel costs.','연료비를 아끼려고 동료 두 명과 카풀을 해요.','carpool with... to save on','"carpool with... to save on..."은 카풀 이유를 설명하는 자연스러운 패턴이에요.','카풀 설명','B1','transport','pattern',NULL,4),
('s_transport_B1_05','There are roadworks on the bridge, so we had to take a detour through the town.','다리에 도로 공사가 있어서 마을을 통해 우회해야 했어요.','take a detour through','"take a detour through..."는 우회 경로를 설명할 때 쓰는 표현이에요.','경로 변경 설명','B1','transport','pattern',NULL,5),
('s_transport_B1_06','Is there a more direct route, or do we have to go through the tunnel?','더 직접적인 경로가 있나요, 아니면 터널을 통해야 하나요?','a more direct route','"a more direct route"는 더 효율적인 경로를 물어볼 때 쓰는 표현이에요.','경로 문의','B1','transport','pattern',NULL,6),
('s_transport_B1_07','Watch out — there''s a speed camera just after the junction ahead.','주의하세요 — 바로 앞 교차로 지나서 과속 카메라가 있어요.','Watch out','"Watch out"은 즉각적인 경고를 전달할 때 쓰는 자연스러운 표현이에요.','도로 경고','B1','transport','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B2 (7개) : 교통 상황
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_transport_B2_01','The congestion on this corridor has reached a critical point and something has to be done.','이 교통 회랑의 혼잡이 임계점에 달했으며 조치가 필요해요.','reached a critical point','"reached a critical point"는 문제가 심각해졌음을 강조하는 표현이에요.','교통 상황 분석','B2','transport','pattern',NULL,1),
('s_transport_B2_02','The delay was caused by an overhead line failure, which disrupted services across the entire network.','지연은 가선 고장으로 발생했으며 전체 교통망에 걸쳐 서비스가 중단됐어요.','overhead line failure','교통 장애를 공식적으로 설명할 때 수동태 구문을 자주 사용해요.','장애 설명','B2','transport','pattern',NULL,2),
('s_transport_B2_03','Despite the disruption, alternative shuttle services were put in place within the hour.','서비스 중단에도 불구하고 한 시간 안에 대체 셔틀 서비스가 마련됐어요.','were put in place within','"put in place"는 대책이 시행됐음을 설명하는 격식체 표현이에요.','대응 조치','B2','transport','pattern',NULL,3),
('s_transport_B2_04','The introduction of congestion charges has significantly reduced traffic in the city centre.','혼잡 통행료 도입이 도심의 교통량을 크게 줄였어요.','significantly reduced traffic','"significantly reduced"는 데이터나 결과를 제시할 때 쓰는 격식체 표현이에요.','정책 효과','B2','transport','pattern',NULL,4),
('s_transport_B2_05','I missed my connecting flight because the first leg arrived over an hour behind schedule.','첫 번째 구간이 예정보다 한 시간 이상 늦게 도착해서 연결 비행편을 놓쳤어요.','behind schedule','"behind schedule"은 지연을 나타내는 격식 있는 표현이에요.','항공 지연','B2','transport','pattern',NULL,5),
('s_transport_B2_06','The infrastructure upgrade will require significant capital investment spread over five years.','기반 시설 업그레이드는 5년에 걸친 상당한 자본 투자가 필요해요.','significant capital investment spread over','"spread over"는 투자나 비용이 기간 전체에 분산됨을 설명해요.','인프라 투자','B2','transport','pattern',NULL,6),
('s_transport_B2_07','Passengers are advised to allow extra travel time due to planned engineering works this weekend.','이번 주말 예정된 공사로 인해 승객들은 여유 있는 이동 시간을 감안하시기 바랍니다.','are advised to allow extra travel time','"are advised to"는 공식 안내문에서 권고 사항을 전달하는 표현이에요.','공식 안내','B2','transport','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C1 (7개) : 교통 정책, 도시 계획
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_transport_C1_01','A shift toward sustainable transport modes requires not only infrastructure investment but also a fundamental change in commuter behaviour.','지속 가능한 교통 수단으로의 전환은 기반 시설 투자뿐 아니라 통근자 행동의 근본적인 변화도 필요로 해요.','not only... but also a fundamental change','"not only... but also"는 두 가지 조건을 동시에 강조할 때 쓰는 격식체 구문이에요.','교통 정책 토론','C1','transport','pattern',NULL,1),
('s_transport_C1_02','Transit-oriented development has proven effective in cities that have aligned planning decisions with public transport corridors.','대중교통 회랑과 도시 계획 결정을 연계한 도시에서 대중교통 중심 개발이 효과적인 것으로 입증됐어요.','has proven effective in cities that have aligned','"has proven effective"는 정책 효과를 학술적으로 제시하는 표현이에요.','도시 계획 분석','C1','transport','pattern',NULL,2),
('s_transport_C1_03','The challenge lies in achieving modal shift without disproportionately burdening lower-income households.','교통 수단 전환을 달성하면서 저소득 가구에 과도한 부담을 주지 않는 것이 과제예요.','without disproportionately burdening','"without disproportionately burdening"은 형평성 문제를 언급할 때 쓰는 학술적 표현이에요.','교통 형평성','C1','transport','pattern',NULL,3),
('s_transport_C1_04','Electrification of the rail network is central to the government''s strategy for decarbonizing the transport sector.','철도 네트워크 전기화는 교통 부문 탈탄소화를 위한 정부 전략의 핵심이에요.','central to the government''s strategy for','"central to"는 어떤 것이 전략의 핵심임을 나타내는 격식체 표현이에요.','탈탄소 정책','C1','transport','pattern',NULL,4),
('s_transport_C1_05','Autonomous vehicles hold considerable promise, but regulatory frameworks have yet to keep pace with technological development.','자율 주행 차량은 상당한 가능성을 지니고 있지만, 규제 프레임워크는 아직 기술 발전을 따라가지 못하고 있어요.','have yet to keep pace with','"have yet to keep pace with"는 기술과 규제의 간극을 설명하는 고급 표현이에요.','정책 논의','C1','transport','pattern',NULL,5),
('s_transport_C1_06','Improving last-mile connectivity is critical if public transport is to compete effectively with the private car.','라스트 마일 연결성 향상은 대중교통이 자가용과 효과적으로 경쟁하려면 필수적이에요.','is critical if... is to compete effectively','"is to + 동사원형"은 조건부 미래 의무를 나타내는 격식체 구조예요.','경쟁력 분석','C1','transport','pattern',NULL,6),
('s_transport_C1_07','Ridesharing platforms have disrupted traditional taxi markets, compelling regulators to revisit licensing frameworks.','승차 공유 플랫폼이 기존 택시 시장을 혼란에 빠뜨려 규제 당국이 면허 프레임워크를 재검토하도록 압박했어요.','compelling regulators to revisit','"compelling... to"는 어떤 결과가 다른 행위를 강제했음을 나타내는 분사 구문이에요.','플랫폼 규제','C1','transport','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C2 (7개) : 교통 정책, 도시 계획 (심화)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_transport_C2_01','The externalities associated with private car use — including congestion, pollution, and noise — are rarely captured in market prices, necessitating corrective policy intervention.','개인 자가용 이용과 관련된 외부 효과(혼잡, 오염, 소음 포함)는 시장 가격에 반영되는 경우가 드물어 교정적 정책 개입이 필요해요.','necessitating corrective policy intervention','분사 구문을 활용해 결과와 당위성을 압축적으로 표현하는 고급 학술 문체예요.','교통 경제학','C2','transport','pattern',NULL,1),
('s_transport_C2_02','Decarbonizing aviation at scale will require breakthroughs in propulsion technology, given that the energy density of current battery systems remains insufficient for long-haul flight.','장거리 비행에 현재 배터리 시스템의 에너지 밀도가 아직 부족하다는 점을 감안할 때, 대규모 항공 탈탄소화는 추진 기술의 혁신이 필요해요.','given that the energy density... remains insufficient','"given that"은 전제 조건을 제시하며 논거를 전개하는 학술적 표현이에요.','항공 탈탄소','C2','transport','pattern',NULL,2),
('s_transport_C2_03','The proliferation of micromobility services demands a rethinking of curbside management and urban streetscape design.','마이크로 모빌리티 서비스의 확산은 도로변 관리와 도시 가로경관 설계의 재고를 요구해요.','demands a rethinking of','"demands a rethinking of"는 패러다임 변화를 촉구하는 논설문에서 자주 쓰이는 표현이에요.','도시 설계','C2','transport','pattern',NULL,3),
('s_transport_C2_04','Realizing the potential of hyperloop technology hinges on resolving both the engineering and the regulatory challenges that currently impede deployment.','하이퍼루프 기술의 잠재력을 실현하는 것은 현재 도입을 방해하는 공학적 과제와 규제적 과제 모두를 해결하는 데 달려 있어요.','hinges on resolving both... and','"hinges on"은 성공이 특정 조건에 달려 있음을 강조하는 격식체 표현이에요.','첨단 교통','C2','transport','pattern',NULL,4),
('s_transport_C2_05','Telematics data, when coupled with geospatial analysis, enables transport authorities to allocate resources with unprecedented precision.','텔레매틱스 데이터는 지리 공간 분석과 결합될 때 교통 당국이 전례 없는 정밀도로 자원을 배분할 수 있게 해요.','when coupled with... enables... to allocate','"when coupled with"는 두 기술이나 방법의 시너지를 설명하는 고급 표현이에요.','데이터 활용','C2','transport','pattern',NULL,5),
('s_transport_C2_06','Transport poverty, often overlooked in urban policy discourse, disproportionately affects peripheral communities with limited access to employment and services.','교통 빈곤은 도시 정책 담론에서 종종 간과되지만, 취업과 서비스 접근이 제한된 주변 지역 사회에 불균형적인 영향을 미쳐요.','disproportionately affects peripheral communities','"disproportionately affects"는 불균형한 영향을 지적할 때 쓰는 학술적 표현이에요.','사회적 형평성','C2','transport','pattern',NULL,6),
('s_transport_C2_07','A comprehensive Mobility as a Service ecosystem presupposes interoperability across competing platforms, a condition that market forces alone are unlikely to deliver without regulatory mandates.','포괄적인 서비스형 모빌리티 생태계는 경쟁 플랫폼 간의 상호 운용성을 전제로 하며, 이는 규제 의무 없이는 시장의 힘만으로 실현되기 어려운 조건이에요.','presupposes interoperability... a condition that market forces alone are unlikely to deliver','"presupposes"와 동격 명사절을 활용한 고도의 학술 논증 문체예요.','MaaS 정책','C2','transport','pattern',NULL,7);

-- supabase-words-health.sql
-- EngCat: Health Topic (건강)
-- 210 words (35 per CEFR level A1~C2) + 42 sentence patterns (7 per level)
-- Generated: 2026-05-24

-- ============================================================
-- WORDS
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES

-- ----------------------------------------------------------------
-- A1 — 7 patterns (증상 표현)
-- ----------------------------------------------------------------
('s_health_A1_01','I don''t feel well.','몸이 좋지 않아요.','don''t feel well','"I don''t feel well"이 "I''m sick"보다 더 부드러운 표현이에요.','건강 상태','A1','health','pattern',NULL,1),
('s_health_A1_02','I have a headache.','두통이 있어요.','have a headache','"have a + 증상" 패턴으로 많은 증상을 표현할 수 있어요.','증상 표현','A1','health','pattern',NULL,2),
('s_health_A1_03','I have a fever.','열이 있어요.','have a fever','fever 앞에는 항상 관사 "a"를 써요.','증상 표현','A1','health','pattern',NULL,3),
('s_health_A1_04','My stomach hurts.','배가 아파요.','hurts','"My + 신체 부위 + hurts" 패턴으로 어디가 아픈지 말할 수 있어요.','통증 표현','A1','health','pattern',NULL,4),
('s_health_A1_05','I need to see a doctor.','의사 선생님을 만나야 해요.','need to see a doctor','병원에 가야 할 때 자주 쓰는 표현이에요.','진료 요청','A1','health','pattern',NULL,5),
('s_health_A1_06','I feel very tired today.','오늘 너무 피곤해요.','feel very tired','"feel + 형용사" 패턴으로 몸 상태를 표현해요.','몸 상태','A1','health','pattern',NULL,6),
('s_health_A1_07','I think I caught a cold.','감기에 걸린 것 같아요.','caught a cold','"catch a cold"는 감기에 걸리다는 표현이에요. catch의 과거형은 caught.','감기 증상','A1','health','pattern',NULL,7),

-- ----------------------------------------------------------------
-- A2 — 7 patterns (병원 예약)
-- ----------------------------------------------------------------
('s_health_A2_01','I''d like to make an appointment, please.','예약을 하고 싶어요.','make an appointment','"make an appointment"은 예약을 잡을 때 가장 기본적인 표현이에요.','병원 예약','A2','health','pattern',NULL,8),
('s_health_A2_02','I''ve been coughing for three days.','3일째 기침을 하고 있어요.','been coughing for','현재완료진행 "have been + -ing"으로 얼마나 오래 증상이 있었는지 표현해요.','증상 기간','A2','health','pattern',NULL,9),
('s_health_A2_03','Do I need a prescription for this medicine?','이 약은 처방전이 필요한가요?','need a prescription','처방약과 일반약을 구별할 때 쓰는 표현이에요.','약국 방문','A2','health','pattern',NULL,10),
('s_health_A2_04','I''m allergic to penicillin.','저는 페니실린 알레르기가 있어요.','allergic to','"be allergic to + 물질"로 알레르기를 표현해요.','알레르기 고지','A2','health','pattern',NULL,11),
('s_health_A2_05','How often should I take this medicine?','이 약은 얼마나 자주 먹어야 하나요?','How often','복용 빈도를 물어볼 때 "How often" 으로 시작해요.','복용 방법','A2','health','pattern',NULL,12),
('s_health_A2_06','My temperature is 38 degrees.','체온이 38도예요.','temperature is','의사에게 체온을 알려줄 때 쓰는 표현이에요.','진료 중','A2','health','pattern',NULL,13),
('s_health_A2_07','Is there a pharmacy near here?','근처에 약국이 있나요?','pharmacy near here','길을 찾거나 가까운 시설을 찾을 때 "Is there a ~ near here?" 패턴을 써요.','약국 찾기','A2','health','pattern',NULL,14),

-- ----------------------------------------------------------------
-- B1 — 7 patterns (증상 설명 / 처방)
-- ----------------------------------------------------------------
('s_health_B1_01','I''ve been experiencing lower back pain for about a week.','약 일주일 동안 허리 아래쪽에 통증이 있어요.','experiencing lower back pain','의사에게 증상을 설명할 때 "have been experiencing"으로 시작하면 더 자연스러워요.','진료 중 증상 설명','B1','health','pattern',NULL,15),
('s_health_B1_02','The pain gets worse when I sit for a long time.','오래 앉아 있으면 통증이 더 심해져요.','gets worse when','"get worse when + 상황"으로 언제 증상이 악화되는지 설명해요.','증상 악화 상황','B1','health','pattern',NULL,16),
('s_health_B1_03','Could you refer me to a specialist?','전문의에게 의뢰해 주실 수 있나요?','refer me to a specialist','"refer someone to a specialist"는 전문의에게 연결해 달라는 공손한 요청이에요.','전문의 의뢰','B1','health','pattern',NULL,17),
('s_health_B1_04','What are the side effects of this medication?','이 약의 부작용은 무엇인가요?','side effects of this medication','약을 받을 때 부작용을 꼭 확인하는 것이 좋아요.','처방 확인','B1','health','pattern',NULL,18),
('s_health_B1_05','I''ve been under a lot of stress lately.','요즘 스트레스를 많이 받고 있어요.','been under a lot of stress','"under stress"는 스트레스를 받는 상태를 표현하는 관용구예요.','스트레스 상담','B1','health','pattern',NULL,19),
('s_health_B1_06','The doctor told me to avoid spicy food.','의사 선생님이 매운 음식을 피하라고 했어요.','told me to avoid','간접 명령: "tell someone to do something" 패턴이에요.','식단 지시','B1','health','pattern',NULL,20),
('s_health_B1_07','I''ve been prescribed antibiotics for ten days.','열흘 동안 항생제를 처방받았어요.','been prescribed antibiotics','수동태 "have been prescribed"로 처방받은 상황을 표현해요.','처방 설명','B1','health','pattern',NULL,21),

-- ----------------------------------------------------------------
-- B2 — 7 patterns (건강 습관)
-- ----------------------------------------------------------------
('s_health_B2_01','Maintaining a balanced diet is crucial for long-term health.','균형 잡힌 식단을 유지하는 것이 장기적인 건강에 매우 중요해요.','Maintaining a balanced diet','동명사 주어 "Maintaining ~"으로 중요성을 강조하는 표현이에요.','건강 습관','B2','health','pattern',NULL,22),
('s_health_B2_02','Regular cardiovascular exercise can significantly reduce the risk of heart disease.','규칙적인 유산소 운동은 심장 질환의 위험을 크게 줄일 수 있어요.','cardiovascular exercise','학술적인 조언을 줄 때 "can significantly"을 쓰면 설득력이 높아져요.','운동 조언','B2','health','pattern',NULL,23),
('s_health_B2_03','Chronic stress can have a profound impact on your immune system.','만성 스트레스는 면역 체계에 심각한 영향을 미칠 수 있어요.','profound impact on','학술적·의학적 글쓰기에서 "have a profound impact on"을 자주 써요.','스트레스 영향','B2','health','pattern',NULL,24),
('s_health_B2_04','I''ve adopted a more holistic approach to managing my health.','건강 관리에 더 전인적인 접근 방식을 채택했어요.','adopted a more holistic approach','"adopt an approach"은 방법론을 받아들였다는 표현이에요.','건강 철학','B2','health','pattern',NULL,25),
('s_health_B2_05','Poor sleep hygiene is closely linked to metabolic disorders.','불량한 수면 위생은 대사 장애와 밀접한 관련이 있어요.','closely linked to','"be closely linked to"는 두 개념 사이의 강한 연관성을 나타내요.','수면과 건강','B2','health','pattern',NULL,26),
('s_health_B2_06','The prognosis depends largely on how early the condition is detected.','예후는 상태가 얼마나 일찍 발견되느냐에 크게 달려 있어요.','depends largely on','"depend largely on"으로 주요 변수를 설명하는 표현이에요.','의학적 예후','B2','health','pattern',NULL,27),
('s_health_B2_07','Preventive healthcare is far more cost-effective than treating illness.','예방 의료는 질병 치료보다 훨씬 비용 효율적이에요.','Preventive healthcare','비교급 강조 "far more"를 써서 차이를 강조해요.','예방 의학','B2','health','pattern',NULL,28),

-- ----------------------------------------------------------------
-- C1 — 7 patterns (의학 상담)
-- ----------------------------------------------------------------
('s_health_C1_01','Given the comorbidities involved, we need to approach treatment cautiously.','관련된 동반 이환을 고려할 때 신중하게 치료에 접근해야 해요.','comorbidities involved','"Given the ~"은 특정 상황을 전제로 결론을 제시하는 학술적 표현이에요.','다학제 의학 상담','C1','health','pattern',NULL,29),
('s_health_C1_02','The etiology of this autoimmune condition remains poorly understood.','이 자가면역 질환의 병인은 아직 제대로 이해되지 않았어요.','etiology of this autoimmune condition','의학 논문에서 "remains poorly understood"는 연구 공백을 나타내는 표현이에요.','의학 발표','C1','health','pattern',NULL,30),
('s_health_C1_03','We should consider prophylactic treatment to prevent recurrence.','재발 방지를 위해 예방적 치료를 고려해야 해요.','prophylactic treatment','예방적 접근을 논의할 때 임상 환경에서 자주 쓰는 표현이에요.','임상 논의','C1','health','pattern',NULL,31),
('s_health_C1_04','Elevated biomarkers suggest the presence of systemic inflammation.','높은 생체표지자 수치는 전신 염증의 존재를 시사해요.','Elevated biomarkers suggest','연구나 보고에서 "suggest"를 써서 조심스럽게 결론을 제시해요.','의학 보고','C1','health','pattern',NULL,32),
('s_health_C1_05','The patient has been in remission for over eighteen months.','환자는 18개월 이상 관해 상태를 유지하고 있어요.','been in remission for','현재완료 "have been in remission"으로 관해가 얼마나 지속됐는지 표현해요.','암 치료 상담','C1','health','pattern',NULL,33),
('s_health_C1_06','There is a significant risk of thrombosis with prolonged immobility.','장기간 움직이지 않을 경우 혈전증 위험이 상당히 높아요.','risk of thrombosis with','의학 경고를 줄 때 "significant risk of"를 써요.','수술 후 주의 사항','C1','health','pattern',NULL,34),
('s_health_C1_07','Her symptoms are consistent with an autoimmune etiology.','그녀의 증상은 자가면역 병인과 일치해요.','consistent with an autoimmune etiology','진단에서 "be consistent with"는 증상이 특정 진단과 부합함을 나타내요.','진단 토론','C1','health','pattern',NULL,35),

-- ----------------------------------------------------------------
-- C2 — 7 patterns (전문 용어)
-- ----------------------------------------------------------------
('s_health_C2_01','The pharmacokinetics of this compound are highly variable between patients.','이 화합물의 약동학은 환자마다 상당히 다양해요.','pharmacokinetics of this compound','연구 발표에서 "highly variable between patients"는 개인차를 강조해요.','의약학 연구','C2','health','pattern',NULL,36),
('s_health_C2_02','Histopathological findings confirmed the presence of carcinogenesis at the cellular level.','조직 병리학적 소견이 세포 수준에서 발암 과정의 존재를 확인했어요.','Histopathological findings confirmed','"findings confirmed"는 연구 결과를 발표할 때 쓰는 형식적인 표현이에요.','병리학 보고','C2','health','pattern',NULL,37),
('s_health_C2_03','Prolonged immunosuppression increases the risk of nosocomial infections.','장기적인 면역 억제는 병원 내 감염의 위험을 높여요.','immunosuppression increases the risk of','원인과 결과를 논할 때 "increases the risk of"를 써요.','이식 후 관리','C2','health','pattern',NULL,38),
('s_health_C2_04','The sequelae of the cerebrovascular event require ongoing neurological monitoring.','뇌혈관 사건의 후유증은 지속적인 신경학적 모니터링이 필요해요.','sequelae of the cerebrovascular event','복잡한 의학 상황을 서술할 때 쓰는 수준 높은 전문 표현이에요.','신경과 회진','C2','health','pattern',NULL,39),
('s_health_C2_05','Iatrogenic complications were documented in three percent of cases.','의원성 합병증이 사례의 3퍼센트에서 기록됐어요.','Iatrogenic complications were documented','수동태 "were documented"는 의학 문헌에서 사실을 객관적으로 서술할 때 써요.','의학 연구 발표','C2','health','pattern',NULL,40),
('s_health_C2_06','Teratogenic effects were observed in preclinical studies, warranting caution in pregnant patients.','전임상 연구에서 기형 유발 효과가 관찰됐으며, 임산부 환자에서는 주의가 필요해요.','Teratogenic effects were observed','"warranting caution"은 주의를 정당화하는 의학적 표현이에요.','임상 시험 보고','C2','health','pattern',NULL,41),
('s_health_C2_07','The anaphylactic response was attributed to cross-reactivity between structurally similar antigens.','과민성 쇼크 반응은 구조적으로 유사한 항원 간의 교차 반응성에 기인했어요.','anaphylactic response was attributed to','인과 관계를 설명할 때 "was attributed to"로 원인을 밝혀요.','면역학 세미나','C2','health','pattern',NULL,42);

-- supabase-words-travel.sql
-- EngCat — Travel (여행) 확장 단어·패턴 데이터
-- 35 words × 6 CEFR levels = 210 words
-- 7 patterns × 6 CEFR levels = 42 patterns
-- NOTE: IDs w_travel_01~10 and s_travel_01~05 already exist in supabase-seed.sql

-- ══════════════════════════════════════
-- A1 — 35 WORDS
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_travel_A1_01','Where are you going?','어디 가세요?','Where are you going','여행 목적지를 물을 때 쓰는 가장 기본적인 표현이에요.','여행 대화','A1','travel','pattern',NULL,1),
('s_travel_A1_02','How do I get to the hotel?','호텔까지 어떻게 가요?','How do I get to','"How do I get to ~?"는 특정 장소로 가는 방법을 물을 때 쓰는 기본 표현이에요.','길 묻기','A1','travel','pattern',NULL,2),
('s_travel_A1_03','Is this the right bus?','이 버스가 맞나요?','Is this the right','탑승 전에 버스나 기차를 확인할 때 쓰는 간단한 표현이에요.','교통수단 확인','A1','travel','pattern',NULL,3),
('s_travel_A1_04','Where is the airport?','공항이 어디에 있어요?','Where is the','건물이나 장소의 위치를 물을 때 "Where is ~?" 패턴을 써요.','위치 묻기','A1','travel','pattern',NULL,4),
('s_travel_A1_05','I need a map, please.','지도 한 장 주세요.','I need','"I need ~"는 무언가가 필요할 때 쓰는 가장 간단한 표현이에요.','여행 정보 센터','A1','travel','pattern',NULL,5),
('s_travel_A1_06','What time does it open?','몇 시에 열어요?','What time does it open','박물관이나 관광지의 운영 시간을 물을 때 자주 쓰는 표현이에요.','관광지 방문','A1','travel','pattern',NULL,6),
('s_travel_A1_07','How much is the ticket?','표가 얼마예요?','How much is the','가격을 물을 때 쓰는 가장 간단하고 직접적인 표현이에요.','매표소','A1','travel','pattern',NULL,7);

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS (예약, 체크인)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_travel_A2_01','I have a reservation under the name Kim.','김이라는 이름으로 예약했어요.','I have a reservation under','호텔이나 레스토랑에서 예약 확인을 할 때 쓰는 필수 표현이에요.','호텔 체크인','A2','travel','pattern',NULL,1),
('s_travel_A2_02','Could I check in now, please?','지금 체크인할 수 있나요?','Could I check in','"Could I ~?"는 부탁을 정중하게 할 때 쓰는 표현이에요.','호텔 체크인','A2','travel','pattern',NULL,2),
('s_travel_A2_03','What time is check-out?','체크아웃은 몇 시예요?','What time is check-out','숙박 시설에서 반드시 알아야 할 질문이에요.','호텔 체크아웃','A2','travel','pattern',NULL,3),
('s_travel_A2_04','I''d like to book a room for two nights.','2박짜리 방을 예약하고 싶어요.','I''d like to book','"I''d like to ~"는 무언가를 하고 싶다고 정중하게 표현할 때 써요.','호텔 예약','A2','travel','pattern',NULL,4),
('s_travel_A2_05','Is breakfast included in the price?','가격에 조식이 포함되어 있나요?','Is breakfast included','예약 시 포함 사항을 확인하는 표현이에요. "included"를 기억하세요.','예약 확인','A2','travel','pattern',NULL,5),
('s_travel_A2_06','Can I see the room first?','먼저 방을 볼 수 있을까요?','Can I see the room first','예약 전에 방 상태를 확인할 때 쓸 수 있는 표현이에요.','호텔 방문','A2','travel','pattern',NULL,6),
('s_travel_A2_07','Do you have any rooms available?','빈 방이 있나요?','any rooms available','예약 없이 숙박 시설에 방문했을 때 쓰는 표현이에요.','즉흥 숙박 예약','A2','travel','pattern',NULL,7);

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS (길 찾기, 비자)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_travel_B1_01','Could you tell me how to get to the nearest metro station?','가장 가까운 지하철역까지 어떻게 가는지 알려주실 수 있나요?','Could you tell me how to get to','"Could you tell me how to ~?"는 정중하게 길을 물을 때 쓰는 정형 표현이에요.','길 찾기','B1','travel','pattern',NULL,1),
('s_travel_B1_02','Do I need a visa to travel to this country?','이 나라에 여행하려면 비자가 필요한가요?','Do I need a visa to','비자 요건을 확인할 때 쓰는 표현이에요. "travel to"뒤에 나라 이름을 넣어요.','비자 문의','B1','travel','pattern',NULL,2),
('s_travel_B1_03','I think I''m on the wrong train — where does this go?','잘못된 기차를 탄 것 같아요. 이 기차는 어디로 가나요?','I think I''m on the wrong','실수를 인정할 때 "I think I''m on the wrong ~"을 쓰면 부드럽게 들려요.','교통 실수','B1','travel','pattern',NULL,3),
('s_travel_B1_04','Excuse me, is this seat taken?','실례합니다, 이 자리 비어 있나요?','is this seat taken','"Is this seat taken?"은 자리를 물을 때 쓰는 세련된 표현이에요. "Is this free?"도 OK예요.','기차·버스 탑승','B1','travel','pattern',NULL,4),
('s_travel_B1_05','How long does it take to get there by taxi?','택시로 거기까지 얼마나 걸려요?','How long does it take to get there','소요 시간을 물을 때 "How long does it take to ~?" 패턴을 써요.','교통 안내','B1','travel','pattern',NULL,5),
('s_travel_B1_06','My passport expires next month — will that be a problem?','여권이 다음 달에 만료되는데 문제가 될까요?','will that be a problem','입국 시 여권 유효 기간을 걱정할 때 쓸 수 있는 표현이에요.','입국 심사','B1','travel','pattern',NULL,6),
('s_travel_B1_07','Could you recommend a good local area to stay in?','머물기에 좋은 현지 지역을 추천해 주실 수 있나요?','Could you recommend a good','추천을 정중하게 부탁할 때 "Could you recommend ~?"를 써요.','숙박 지역 조언','B1','travel','pattern',NULL,7);

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS (여행 경험 공유)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_travel_B2_01','Travelling solo completely changed my perspective on life.','혼자 여행하는 것이 인생에 대한 제 시각을 완전히 바꿨어요.','completely changed my perspective','여행이 가져다준 변화를 표현할 때 "changed my perspective"를 써요.','여행 경험 공유','B2','travel','pattern',NULL,1),
('s_travel_B2_02','The most memorable part of the trip was getting lost in the old quarter.','여행에서 가장 기억에 남는 부분은 구시가지에서 길을 잃은 것이었어요.','The most memorable part was','여행 하이라이트를 이야기할 때 "The most memorable part was ~" 구조를 써요.','여행담 나누기','B2','travel','pattern',NULL,2),
('s_travel_B2_03','I''d highly recommend staying off the tourist trail if you want an authentic experience.','진정성 있는 경험을 원한다면 관광객 코스를 벗어나는 것을 적극 추천해요.','I''d highly recommend staying off','추천할 때 "I''d highly recommend ~ing"을 쓰면 자신감 있게 들려요.','여행 조언','B2','travel','pattern',NULL,3),
('s_travel_B2_04','What really surprised me was how welcoming the locals were despite the language barrier.','정말 놀라웠던 것은 언어 장벽에도 불구하고 현지인들이 얼마나 따뜻하게 맞아줬는지예요.','What really surprised me was','경험의 놀라운 측면을 강조할 때 "What really surprised me was ~"를 써요.','문화 경험 공유','B2','travel','pattern',NULL,4),
('s_travel_B2_05','If I could go back, I''d spend more time in the countryside and less in the city.','다시 갈 수 있다면 도시보다 시골에서 더 많은 시간을 보낼 것 같아요.','If I could go back, I''d','가상의 재방문을 이야기할 때 "If I could go back, I''d ~" 가정법을 써요.','여행 회고','B2','travel','pattern',NULL,5),
('s_travel_B2_06','The culture shock hit me harder than I expected when I first arrived.','처음 도착했을 때 예상보다 훨씬 심한 문화 충격을 받았어요.','harder than I expected','결과가 예상을 초과했을 때 "harder than I expected"처럼 비교급을 써요.','문화 충격 경험','B2','travel','pattern',NULL,6),
('s_travel_B2_07','Immersing yourself in the local language, even just a few phrases, opens so many doors.','현지어에 몰입하는 것, 심지어 몇 가지 표현만으로도 정말 많은 문이 열려요.','Immersing yourself in','경험의 가치를 강조할 때 동명사로 시작하는 "Immersing yourself in ~" 구조를 써요.','언어와 여행','B2','travel','pattern',NULL,7);

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS (여행 철학)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_travel_C1_01','Travel, at its best, is not a form of escape but a means of deeper self-understanding.','여행은 최선의 상태에서 도피의 형태가 아니라 더 깊은 자기 이해의 수단이에요.','at its best','"at its best"는 어떤 것의 이상적인 상태를 표현할 때 쓰는 고급 표현이에요.','여행 철학 토론','C1','travel','pattern',NULL,1),
('s_travel_C1_02','There''s something profoundly humbling about navigating a world that doesn''t speak your language.','자신의 언어를 말하지 않는 세상을 헤쳐 나가는 것에는 심오하게 겸허함을 주는 무언가가 있어요.','profoundly humbling about','"There''s something ~ about ~ing"은 미묘한 감정이나 경험의 질을 표현하는 고급 구조예요.','언어와 문화','C1','travel','pattern',NULL,2),
('s_travel_C1_03','The longer I travel, the more I realise how little I truly understand about the world.','여행할수록 세상에 대해 얼마나 적게 이해하는지 더욱 깨달아요.','The longer I travel, the more','"The + 비교급, the + 비교급" 구조는 두 가지가 함께 변화함을 표현해요.','여행 성찰','C1','travel','pattern',NULL,3),
('s_travel_C1_04','I''ve come to believe that it''s the unplanned moments that define a journey, not the itinerary.','계획되지 않은 순간들이 여행 일정이 아니라 여행을 정의한다고 생각하게 됐어요.','I''ve come to believe that','"I''ve come to ~"는 서서히 형성된 믿음이나 이해를 표현하는 세련된 패턴이에요.','여행 철학','C1','travel','pattern',NULL,4),
('s_travel_C1_05','What strikes me most about long-term travel is the way it erodes your sense of home.','장기 여행에서 가장 인상 깊은 점은 집에 대한 감각을 서서히 지운다는 거예요.','What strikes me most about','"What strikes me most about ~"은 분석적 의견을 격식 있게 도입하는 표현이에요.','여행과 정체성','C1','travel','pattern',NULL,5),
('s_travel_C1_06','Having lived as an expat for a decade, I no longer think of nationality as fixed.','10년간 해외 거주자로 살면서 더 이상 국적을 고정된 것으로 생각하지 않아요.','Having lived as an expat','완료 분사구문 "Having ~"은 과거 경험을 현재 믿음의 근거로 제시하는 C1 구조예요.','정체성 토론','C1','travel','pattern',NULL,6),
('s_travel_C1_07','The most transformative journeys are those that shatter your assumptions, not confirm them.','가장 변화를 이끄는 여행은 당신의 가정을 확인하는 것이 아니라 산산이 부수는 것이에요.','those that shatter your assumptions','"those that ~"는 관계절로 종류를 구분할 때, "not ~ but ~"는 대조를 강조할 때 써요.','여행 철학 에세이','C1','travel','pattern',NULL,7);

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS (문화 차이·여행 철학 심화)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_travel_C2_01','To travel is to hold a paradox: the more borders you cross, the less certain you become of your own.','여행은 역설을 품어요. 더 많은 국경을 넘을수록 자신의 국경에 대해 덜 확신하게 돼요.','to hold a paradox','"To + 동사"로 시작하는 부정사는 철학적 진술에서 주어처럼 쓰여 격식을 높여요.','여행 철학 에세이','C2','travel','pattern',NULL,1),
('s_travel_C2_02','The notion that travel broadens the mind is complicated by the reality that it can also entrench privilege.','여행이 마음을 넓힌다는 개념은 특권을 강화할 수도 있다는 현실에 의해 복잡해져요.','is complicated by the reality that','"is complicated by the reality that ~"는 단순한 주장을 비판적으로 반박할 때 쓰는 학문적 구조예요.','여행 윤리 토론','C2','travel','pattern',NULL,2),
('s_travel_C2_03','Authentic cultural exchange demands vulnerability on both sides, not merely the observer''s curiosity.','진정한 문화 교류는 단순히 관찰자의 호기심이 아니라 양측 모두의 취약성을 요구해요.','demands vulnerability on both sides','"demands ~, not merely ~"는 조건을 명확히 하며 과도 단순화를 거부하는 C2 수준 구조예요.','문화 교류 비평','C2','travel','pattern',NULL,3),
('s_travel_C2_04','What separates tourism from travel is not the distance covered but the degree of self-interrogation involved.','관광과 여행을 구분하는 것은 이동한 거리가 아니라 관련된 자기 성찰의 정도예요.','What separates ~ from ~ is not ~ but','"What separates A from B is not X but Y"는 정의와 구분을 위한 정교한 C2 구조예요.','여행 vs 관광','C2','travel','pattern',NULL,4),
('s_travel_C2_05','There is an inherent ethical tension between the desire to witness poverty tourism and respecting local dignity.','빈곤 관광을 목격하려는 욕구와 현지인의 존엄성을 존중하는 것 사이에는 내재적 윤리적 긴장이 있어요.','inherent ethical tension between','"inherent ethical tension between A and B"는 양립하는 가치 사이의 갈등을 분석하는 학문적 표현이에요.','여행 윤리','C2','travel','pattern',NULL,5),
('s_travel_C2_06','The peripatetic intellectual tradition — from Aristotle to Ibn Battuta — equates movement with enlightenment.','아리스토텔레스부터 이븐 바투타까지의 순회 지식인 전통은 이동을 계몽과 동일시해요.','equates movement with enlightenment','대시(—)로 삽입구를 쓰고, "equates A with B"로 동치를 표현하는 C2 수사학 기법이에요.','학술 토론','C2','travel','pattern',NULL,6),
('s_travel_C2_07','To sojourn is not merely to visit; it is to suspend one''s prior self and allow a place to reconstitute you.','잠시 머무는 것은 단순히 방문하는 것이 아니에요. 이전의 자아를 정지시키고 장소가 당신을 재구성하도록 허용하는 것이에요.','to suspend one''s prior self','"not merely to ~; it is to ~"는 두 부정사를 세미콜론으로 연결해 철학적 재정의를 하는 C2 구조예요.','여행 철학 에세이','C2','travel','pattern',NULL,7);

-- supabase-words-home.sql
-- EngCat — Home (주거·생활) 단어 210개 + 패턴 42개
-- CEFR A1~C2 각 35단어, 각 레벨 7패턴
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (35개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_A1_01','I live in an apartment.','아파트에 살아요.','I live in','거주 형태를 말할 때 "I live in a/an..."을 사용해요. house, flat, studio 등으로 바꿀 수 있어요.','거주지 소개','A1','home','pattern',NULL,1),
('s_home_A1_02','My house has three bedrooms.','우리 집에는 침실이 세 개 있어요.','My house has','집의 특징을 소개할 때 "My house/room has..." 패턴을 써요.','집 구조 소개','A1','home','pattern',NULL,2),
('s_home_A1_03','Where is the bathroom, please?','화장실이 어디에 있나요?','Where is the','"Where is the...?"는 장소를 물어보는 가장 기본적인 표현이에요.','장소 묻기','A1','home','pattern',NULL,3),
('s_home_A1_04','I sleep in the bedroom.','침실에서 자요.','I sleep in','방의 기능을 설명할 때 "I ... in the ..." 구조를 써요.','방 용도 설명','A1','home','pattern',NULL,4),
('s_home_A1_05','The kitchen is next to the living room.','주방은 거실 옆에 있어요.','next to','위치 관계를 설명할 때 next to, in front of, behind 같은 전치사구를 사용해요.','위치 설명','A1','home','pattern',NULL,5),
('s_home_A1_06','I open the window every morning.','저는 매일 아침 창문을 열어요.','every morning','일상적 행동을 말할 때 "I ... every morning/day/week"를 써요.','일상 표현','A1','home','pattern',NULL,6),
('s_home_A1_07','There is a big table in the dining room.','식당에 큰 테이블이 있어요.','There is','존재를 나타낼 때 "There is/are..." 구조를 사용해요.','집 묘사','A1','home','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS (sentences) — A2 (7개)
-- 집 묘사
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_A2_01','My apartment is quite small but very cosy.','제 아파트는 꽤 작지만 아늑해요.','quite ... but very','"quite ... but very ..."는 단점을 인정하면서 장점을 강조하는 자연스러운 표현이에요.','집 묘사','A2','home','pattern',NULL,8),
('s_home_A2_02','How much is the rent per month?','월 임대료가 얼마예요?','How much is','가격을 물어볼 때 "How much is/are...?" 패턴을 써요.','임대료 문의','A2','home','pattern',NULL,9),
('s_home_A2_03','The landlord is responsible for repairs.','집주인이 수리에 대한 책임이 있어요.','is responsible for','책임 소재를 설명할 때 "be responsible for ..." 구조를 사용해요.','책임 표현','A2','home','pattern',NULL,10),
('s_home_A2_04','We need to clean the apartment before moving out.','이사 나가기 전에 아파트를 청소해야 해요.','before moving out','동작의 순서를 나타낼 때 "before/after ~ing"를 써요.','이사 준비','A2','home','pattern',NULL,11),
('s_home_A2_05','Could you please turn down the music? The walls are thin.','음악 소리를 줄여 주실 수 있나요? 벽이 얇아서요.','Could you please','"Could you please...?"는 이웃에게 정중하게 부탁할 때 유용해요.','이웃 소통','A2','home','pattern',NULL,12),
('s_home_A2_06','The heating isn''t working properly.','난방이 제대로 작동하지 않아요.','isn''t working properly','가전·시설 문제를 신고할 때 "isn''t/aren''t working properly" 패턴을 써요.','시설 문제 신고','A2','home','pattern',NULL,13),
('s_home_A2_07','I share a flat with two other people.','두 명의 다른 사람들과 함께 아파트에 살아요.','I share ... with','주거를 함께 한다는 표현은 "I share ... with ..."을 사용해요.','동거 표현','A2','home','pattern',NULL,14);

-- ══════════════════════════════════════
-- PATTERNS (sentences) — B1 (7개)
-- 임대차, 이사
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_B1_01','I''d like to sign a twelve-month lease if possible.','가능하다면 12개월 임대 계약을 체결하고 싶어요.','if possible','"if possible"을 덧붙이면 요청이 훨씬 부드럽고 유연하게 들려요.','임대 계약 협의','B1','home','pattern',NULL,15),
('s_home_B1_02','Are utilities included in the rent?','공과금이 임대료에 포함되어 있나요?','Are ... included in','포함 여부를 물을 때 "Is/Are ... included in ...?" 패턴을 사용해요.','임대 조건 문의','B1','home','pattern',NULL,16),
('s_home_B1_03','The landlord agreed to refund the deposit within two weeks.','집주인이 2주 이내에 보증금을 반환하기로 했어요.','agreed to refund','합의 결과를 설명할 때 "agreed to + 동사원형" 구조를 써요.','보증금 협의','B1','home','pattern',NULL,17),
('s_home_B1_04','We''re thinking of having the kitchen renovated.','주방을 리모델링하는 것을 고려하고 있어요.','thinking of having ... renovated','"have something done"은 제3자에게 작업을 맡기는 것을 표현해요.','리모델링 계획','B1','home','pattern',NULL,18),
('s_home_B1_05','The maintenance fee covers communal area cleaning.','관리비에 공용 구역 청소가 포함돼요.','covers','포함 범위를 설명할 때 "covers ..." 동사를 활용해요.','관리비 설명','B1','home','pattern',NULL,19),
('s_home_B1_06','We need to give one month''s notice before moving out.','이사 나가기 전에 한 달 전 통보를 해야 해요.','give one month''s notice','임대차 종료 절차를 설명할 때 "give notice" 표현을 사용해요.','이사 절차','B1','home','pattern',NULL,20),
('s_home_B1_07','The property comes with off-street parking.','이 부동산에는 전용 주차 공간이 포함돼요.','comes with','포함 사항을 설명할 때 "comes with ..."는 매우 자연스러운 표현이에요.','매물 설명','B1','home','pattern',NULL,21);

-- ══════════════════════════════════════
-- PATTERNS (sentences) — B2 (7개)
-- 인테리어, 부동산
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_B2_01','The property has been recently renovated to a high standard.','이 부동산은 최근에 고급 수준으로 리모델링됐어요.','to a high standard','품질 수준을 강조할 때 "to a high standard"는 부동산 광고에서 자주 쓰이는 표현이에요.','부동산 소개','B2','home','pattern',NULL,22),
('s_home_B2_02','The interior design blends minimalist and industrial styles.','인테리어 디자인이 미니멀리스트 스타일과 인더스트리얼 스타일을 혼합해요.','blends ... and','두 가지 스타일이 조화를 이룬다는 표현에는 "blends A and B"를 써요.','인테리어 묘사','B2','home','pattern',NULL,23),
('s_home_B2_03','We''re hoping to get planning permission for a rear extension.','뒷편 증축을 위한 개발 허가를 받고 싶어요.','hoping to get','소망·의도를 말할 때 "be hoping to ..." 구조는 공손하고 자연스러워요.','증축 계획','B2','home','pattern',NULL,24),
('s_home_B2_04','The current market valuation sits at around four hundred thousand.','현재 시장 감정 평가액은 약 40만 파운드예요.','sits at around','수치를 개략적으로 표현할 때 "sits at around ..."를 사용해요.','부동산 가치','B2','home','pattern',NULL,25),
('s_home_B2_05','We decided to invest in eco-friendly insulation to cut our energy bills.','에너지 요금을 줄이기 위해 친환경 단열재에 투자하기로 했어요.','decided to invest in','투자 결정을 말할 때 "decided to invest in ..." 패턴을 사용해요.','에너지 효율','B2','home','pattern',NULL,26),
('s_home_B2_06','The location is ideal for commuters, with excellent transport links.','이 위치는 통근자에게 이상적이며 대중교통 연결이 훌륭해요.','ideal for','대상에 적합하다는 표현은 "ideal for ..." 구조를 사용해요.','입지 설명','B2','home','pattern',NULL,27),
('s_home_B2_07','There is a restrictive covenant preventing any alteration to the façade.','정면 외관 변경을 금지하는 토지 사용 제한 약정이 있어요.','preventing','금지 사항을 설명할 때 "preventing + 동명사"를 활용해요.','계약 조항 설명','B2','home','pattern',NULL,28);

-- ══════════════════════════════════════
-- PATTERNS (sentences) — C1 (7개)
-- 계약, 법적 용어
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_C1_01','The solicitor advised us to conduct full due diligence before exchanging contracts.','변호사가 계약서 교환 전에 전면 실사를 진행하라고 조언했어요.','conduct full due diligence','실사 절차를 강조할 때 "conduct due diligence"는 법률·부동산 맥락에서 표준 표현이에요.','계약 전 절차','C1','home','pattern',NULL,29),
('s_home_C1_02','The lease contains an alienation clause that prohibits subletting without consent.','임대 계약에는 동의 없는 전대를 금지하는 양도 조항이 포함돼 있어요.','contains ... that prohibits','제한 조항을 설명할 때 "contains a clause that ..." 구조를 사용해요.','계약 조항 설명','C1','home','pattern',NULL,30),
('s_home_C1_03','We submitted a claim for dilapidations at the end of the tenancy.','임차 계약 종료 시 훼손 손해 배상 청구를 제출했어요.','submitted a claim for','손해 배상 청구를 표현할 때 "submit a claim for ..." 구조를 써요.','임대차 분쟁','C1','home','pattern',NULL,31),
('s_home_C1_04','The arbitration panel ruled in favour of the tenant regarding the deposit.','중재 위원단이 보증금 문제에서 세입자에게 유리한 판결을 내렸어요.','ruled in favour of','판결 결과를 설명할 때 "rule in favour of ..."는 격식체 법률 표현이에요.','분쟁 해결','C1','home','pattern',NULL,32),
('s_home_C1_05','An easement was granted to the utility company for access to the underground pipes.','공공 설비 회사에 지하 파이프 접근을 위한 지역권이 부여됐어요.','was granted to','피동태를 사용한 법률 문장에서 "was granted to ..." 구조는 매우 자연스러워요.','지역권 설명','C1','home','pattern',NULL,33),
('s_home_C1_06','The property is subject to a restrictive covenant that limits its use to residential purposes only.','이 부동산은 거주 목적으로만 사용을 제한하는 약정의 적용을 받아요.','is subject to','법적 제한을 설명할 때 "is subject to ..." 패턴이 격식 있는 표현이에요.','법적 제한 설명','C1','home','pattern',NULL,34),
('s_home_C1_07','Failure to disclose a known encumbrance may constitute a breach of contract.','알려진 담보를 공개하지 않으면 계약 위반에 해당할 수 있어요.','may constitute','법적 가능성을 논할 때 "may constitute ..." 구조는 격식체에서 자주 써요.','법적 의무 설명','C1','home','pattern',NULL,35);

-- ══════════════════════════════════════
-- PATTERNS (sentences) — C2 (7개)
-- 법적 용어, 고급 계약·권리
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_home_C2_01','The cadastral survey revealed a significant encroachment across the boundary line.','지적 측량 결과 경계선을 상당히 침범한 것이 밝혀졌어요.','revealed a significant encroachment','조사 결과를 보고할 때 "revealed a ..." 구조는 공식 문서에서 자주 사용돼요.','경계 분쟁','C2','home','pattern',NULL,36),
('s_home_C2_02','The mortgagee exercised its right to possession following persistent arrears.','저당권자가 지속적인 연체를 이유로 점유권을 행사했어요.','exercised its right to','권리 행사를 표현할 때 "exercised its right to ..." 구조를 사용해요.','담보 집행','C2','home','pattern',NULL,37),
('s_home_C2_03','The court implied a right of way as a quasi-easement arising from the prior common ownership.','법원이 이전 공동 소유에서 발생하는 준지역권으로서 통행권을 묵시적으로 인정했어요.','implied ... as a quasi-easement','법원이 권리를 묵시적으로 인정할 때 "implied ... as a ..." 구조를 써요.','묵시적 권리','C2','home','pattern',NULL,38),
('s_home_C2_04','Under the doctrine of adverse possession, he claimed title to the strip of land.','시효 취득 원칙에 따라 그는 그 토지 조각에 대한 소유권을 주장했어요.','Under the doctrine of','법적 원칙을 인용할 때 "Under the doctrine of ..." 구조가 격식 있는 표현이에요.','소유권 주장','C2','home','pattern',NULL,39),
('s_home_C2_05','The beneficial interest vested in the claimant was not apparent from the registered title.','청구인에게 귀속된 수익적 권리는 등기 소유권에서 명확하지 않았어요.','vested in','권리 귀속을 설명할 때 "vested in ..." 구조는 신탁법·부동산법에서 핵심 표현이에요.','수익적 권리','C2','home','pattern',NULL,40),
('s_home_C2_06','A lis pendens was registered to protect the plaintiff''s equitable interest pending trial.','재판 계류 중 원고의 형평법적 권리를 보호하기 위해 소송 계류 통지가 등록됐어요.','to protect ... pending trial','목적과 조건을 결합할 때 "to protect ... pending ..." 구조를 사용해요.','소송 중 보전','C2','home','pattern',NULL,41),
('s_home_C2_07','The strata committee voted to levy a special assessment to fund roof remediation works.','구분 소유 위원회가 지붕 보수 공사 비용 마련을 위해 특별 부과금을 부과하기로 의결했어요.','voted to levy','결의 사항을 보고할 때 "voted to + 동사원형" 구조는 공식 회의록에서 자주 등장해요.','구분 소유 관리','C2','home','pattern',NULL,42);

-- supabase-words-work.sql
-- EngCat · Topic: work (직장·비즈니스)
-- 210 words (A1~C2, 35 each) + 42 patterns (7 per level)
-- NOTE: w_work_01~10 already exist (B1). New IDs used throughout.

-- ============================================================
-- WORDS — A1 (35개)
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_work_A1_01','What do you do for work?','무슨 일 하세요?','What do you do for work','"What do you do for work?"는 처음 만났을 때 직업을 묻는 가장 자연스러운 표현이에요.','직업 소개','A1','work','pattern',NULL,1),
('s_work_A1_02','I work at a company downtown.','저는 시내에 있는 회사에서 일해요.','I work at','I work at + 장소"로 간단하게 직장을 소개할 수 있어요.','직업 소개','A1','work','pattern',NULL,2),
('s_work_A1_03','My job starts at nine in the morning.','저는 아침 9시에 일을 시작해요.','starts at nine','시간 앞에 "at"을 사용해요. "in the morning"을 붙이면 더 명확해요.','출근 시간','A1','work','pattern',NULL,3),
('s_work_A1_04','I have a meeting this afternoon.','저는 오늘 오후에 회의가 있어요.','have a meeting','have a + 명사" 패턴으로 일정을 표현해요. "this afternoon" = 오늘 오후.','일정 표현','A1','work','pattern',NULL,4),
('s_work_A1_05','Can you send me an email about that?','그것에 대해 이메일을 보내주실 수 있어요?','Can you send me','Can you + 동사?" 패턴은 정중한 요청이에요. 비즈니스 영어에서 매우 유용해요.','요청하기','A1','work','pattern',NULL,5),
('s_work_A1_06','My boss is very easy to work with.','제 상사는 같이 일하기 매우 편해요.','easy to work with','"easy to work with"는 동료를 칭찬할 때 쓰는 자연스러운 표현이에요.','동료 소개','A1','work','pattern',NULL,6),
('s_work_A1_07','Let''s take a short break.','잠깐 휴식을 취해요.','take a short break','"take a break"는 "쉬다"라는 표현이에요. "short"를 넣으면 짧은 휴식임을 강조해요.','휴식 제안','A1','work','pattern',NULL,7);

-- ============================================================
-- PATTERNS — A2 (7개) · 업무 요청
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_work_A2_01','Could you send the report by Friday?','금요일까지 보고서를 보내주실 수 있을까요?','Could you send','Could you + 동사?"는 "Can you?"보다 더 공손한 요청이에요. 비즈니스 이메일에 적합해요.','업무 요청','A2','work','pattern',NULL,8),
('s_work_A2_02','I need your feedback on this draft.','이 초안에 대한 피드백이 필요해요.','need your feedback','"I need your feedback on..."은 검토 요청 시 유용한 표현이에요.','피드백 요청','A2','work','pattern',NULL,9),
('s_work_A2_03','The deadline is next Monday. Can we manage that?','마감일은 다음 주 월요일이에요. 가능할까요?','Can we manage that','"Can we manage that?"은 일정을 확인할 때 부드럽게 묻는 표현이에요.','마감 확인','A2','work','pattern',NULL,10),
('s_work_A2_04','Please submit your timesheet by end of day.','오늘 업무 종료 전에 타임시트를 제출해주세요.','submit your timesheet','Please + 동사"로 시작하는 요청은 정중하지만 명확해요. "end of day" = 근무 종료 시간.','타임시트 제출','A2','work','pattern',NULL,11),
('s_work_A2_05','I will follow up with the client this week.','이번 주에 고객에게 후속 연락을 할게요.','follow up with','follow up with"는 "후속 조치를 취하다"라는 비즈니스 필수 표현이에요.','업무 보고','A2','work','pattern',NULL,12),
('s_work_A2_06','Can you approve this by tomorrow?','내일까지 이것을 승인해주실 수 있어요?','approve this by tomorrow','approve by + 날짜"로 승인 기한을 명확히 요청할 수 있어요.','승인 요청','A2','work','pattern',NULL,13),
('s_work_A2_07','I am working on the project report right now.','지금 프로젝트 보고서를 작업 중이에요.','working on','I am working on..."은 현재 진행 중인 업무를 설명할 때 써요.','업무 현황','A2','work','pattern',NULL,14);

-- ============================================================
-- PATTERNS — B1 (7개) · 회의 조율·이메일
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_work_B1_01','Could we schedule a call to align on the agenda?','안건에 대해 의견을 맞추기 위해 통화 일정을 잡을 수 있을까요?','schedule a call to align','"align on"은 "서로 의견을 맞추다"는 뜻이에요. "agenda"와 함께 쓰면 비즈니스다운 표현이 돼요.','회의 일정 조율','B1','work','pattern',NULL,15),
('s_work_B1_02','Let me check the stakeholders'' availability and get back to you.','이해관계자들의 가능 여부를 확인하고 다시 연락드릴게요.','check availability and get back to','get back to you"는 "다시 연락드리다"의 핵심 비즈니스 표현이에요.','일정 조율','B1','work','pattern',NULL,16),
('s_work_B1_03','I am writing to follow up on our meeting last Tuesday.','지난 화요일 회의에 대한 후속 조치로 이 이메일을 드려요.','I am writing to follow up on','이메일의 첫 문장으로 가장 많이 쓰는 패턴이에요. 목적을 명확히 밝혀요.','이메일 작성','B1','work','pattern',NULL,17),
('s_work_B1_04','Please find the briefing document attached.','브리핑 문서를 첨부파일로 확인해주세요.','Please find... attached','"Please find ... attached"는 첨부파일을 안내하는 이메일 필수 표현이에요.','이메일 첨부','B1','work','pattern',NULL,18),
('s_work_B1_05','Could you delegate this task to someone on your team?','이 업무를 팀원에게 위임해주실 수 있어요?','delegate this task to','delegate to"는 "~에게 위임하다"예요. 효율적인 팀 관리에서 핵심 동사예요.','업무 위임','B1','work','pattern',NULL,19),
('s_work_B1_06','We need to finalize the agenda before Thursday''s meeting.','목요일 회의 전에 안건을 확정해야 해요.','finalize the agenda','finalize"는 "최종 확정하다"예요. "before + 날짜"로 기한을 명시해요.','안건 확정','B1','work','pattern',NULL,20),
('s_work_B1_07','The project is on track to meet the milestone by Q3.','프로젝트가 3분기까지 이정표를 달성할 궤도에 있어요.','on track to meet the milestone','"on track"은 "계획대로 진행 중"이에요. "milestone"과 함께 쓰면 프로젝트 보고에 매우 적합해요.','프로젝트 보고','B1','work','pattern',NULL,21);

-- ============================================================
-- PATTERNS — B2 (7개) · 발표·성과 보고
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_work_B2_01','Our Q3 revenue exceeded the KPI by fifteen percent.','3분기 매출이 KPI를 15퍼센트 초과달성했어요.','exceeded the KPI by fifteen percent','"exceed by + 숫자"는 목표를 초과했음을 표현해요. 발표에서 임팩트 있게 들려요.','성과 발표','B2','work','pattern',NULL,22),
('s_work_B2_02','I would like to walk you through our quarterly results.','분기별 결과를 안내해 드리고자 해요.','walk you through','walk someone through"는 "단계별로 설명하다"예요. 발표 시작에 자주 쓰여요.','발표 시작','B2','work','pattern',NULL,23),
('s_work_B2_03','To leverage our competitive advantage, we need to scale faster.','경쟁 우위를 활용하려면 더 빠르게 확장해야 해요.','leverage our competitive advantage to scale','"leverage"와 "scale"을 함께 쓰면 전략적 사고를 보여줘요.','전략 발표','B2','work','pattern',NULL,24),
('s_work_B2_04','The pivot to a subscription model improved our retention by twenty percent.','구독 모델로의 전환이 유지율을 20퍼센트 향상시켰어요.','pivot to a subscription model improved retention','"pivot to"는 전략 전환을 나타내요. 결과를 수치로 표현하면 설득력이 높아져요.','성과 분석','B2','work','pattern',NULL,25),
('s_work_B2_05','Our onboarding process is now fully scalable across markets.','온보딩 프로세스가 이제 모든 시장에 걸쳐 완전히 확장 가능해요.','fully scalable across markets','scalable across markets"는 글로벌 확장성을 표현하는 B2 필수 표현이에요.','사업 발표','B2','work','pattern',NULL,26),
('s_work_B2_06','Let me highlight the key takeaways from this fiscal year.','이번 회계연도의 핵심 시사점을 강조하겠어요.','highlight the key takeaways from this fiscal year','"takeaways"는 "핵심 결론"이에요. "fiscal year"와 함께 재무 발표에서 많이 써요.','발표 마무리','B2','work','pattern',NULL,27),
('s_work_B2_07','We are benchmarking against top industry performers to close the gap.','격차를 줄이기 위해 업계 최고 기업들과 비교 기준을 삼고 있어요.','benchmarking against top industry performers','benchmarking against"는 경쟁사와 비교 분석함을 나타내요.','경쟁 분석','B2','work','pattern',NULL,28);

-- ============================================================
-- PATTERNS — C1 (7개) · 협상·법적 비즈니스
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_work_C1_01','We must ensure full compliance with the regulatory framework before closing.','마감 전에 규제 체계를 완전히 준수해야 해요.','ensure full compliance with the regulatory framework','"ensure compliance"는 법적 리스크 관리의 핵심 표현이에요. "before closing"은 계약 체결 전을 뜻해요.','법적 검토','C1','work','pattern',NULL,29),
('s_work_C1_02','The acquisition is subject to due diligence and board approval.','인수는 적정 조사 및 이사회 승인을 조건으로 해요.','subject to due diligence and board approval','"subject to"는 "~를 조건으로"예요. M&A 협상에서 필수 표현이에요.','M&A 협상','C1','work','pattern',NULL,30),
('s_work_C1_03','Our fiduciary duty requires us to act in shareholders'' best interests.','수탁자 의무에 따라 주주의 최선의 이익을 위해 행동해야 해요.','fiduciary duty requires us to act in shareholders'' best interests','"fiduciary duty"는 이사회 맥락에서 핵심 법적 개념이에요.','이사회 토론','C1','work','pattern',NULL,31),
('s_work_C1_04','The indemnification clause protects both parties from third-party claims.','면책 조항은 양측을 제3자 청구로부터 보호해요.','indemnification clause protects both parties','indemnification clause"는 계약서에서 가장 협상이 많이 이루어지는 조항 중 하나예요.','계약 협상','C1','work','pattern',NULL,32),
('s_work_C1_05','Any dispute shall be resolved through binding arbitration in Seoul.','모든 분쟁은 서울에서 구속력 있는 중재로 해결되어야 해요.','resolved through binding arbitration','binding arbitration"은 "구속력 있는 중재"로 법원 소송 대신 선택하는 방법이에요.','분쟁 해결','C1','work','pattern',NULL,33),
('s_work_C1_06','We need to conduct a thorough audit before the restructuring begins.','구조 조정이 시작되기 전에 철저한 감사를 실시해야 해요.','conduct a thorough audit before the restructuring','conduct an audit"는 "감사를 실시하다"예요. "thorough"를 붙이면 심층적임을 강조해요.','재무 감사','C1','work','pattern',NULL,34),
('s_work_C1_07','The governance framework must align with international best practices.','지배 구조 체계는 국제 모범 사례와 일치해야 해요.','governance framework must align with international best practices','align with best practices"는 글로벌 기준 준수를 표현할 때 써요.','기업 지배구조','C1','work','pattern',NULL,35);

-- ============================================================
-- PATTERNS — C2 (7개) · 고급 금융·법적 협상
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_work_C2_01','The securitization structure requires a bankruptcy-remote special purpose vehicle.','증권화 구조는 파산 격리형 특수목적법인을 필요로 해요.','securitization structure requires a bankruptcy-remote special purpose vehicle','"special purpose vehicle (SPV)"은 증권화의 핵심 구조예요. "bankruptcy-remote"는 원본 회사 파산과 분리됨을 뜻해요.','증권화 협상','C2','work','pattern',NULL,36),
('s_work_C2_02','The covenant package restricts the borrower from additional subordinated debt.','약정 패키지는 차입자가 추가 후순위 채무를 지지 못하도록 제한해요.','covenant package restricts the borrower from additional subordinated debt','"covenant package"는 대출 계약의 조건 묶음이에요. "subordinated debt"는 우선순위가 낮은 채무예요.','채권 협상','C2','work','pattern',NULL,37),
('s_work_C2_03','We need to model the EBITDA accretion from the proposed divestiture.','제안된 자산 매각으로 인한 EBITDA 증가를 모델링해야 해요.','model the EBITDA accretion from the proposed divestiture','"accretion"은 가치가 더해짐을 뜻해요. M&A에서 "accretive deal"은 EPS가 증가하는 거래예요.','M&A 분석','C2','work','pattern',NULL,38),
('s_work_C2_04','The force majeure clause was invoked following the regulatory shutdown.','규제 폐쇄 이후 불가항력 조항이 발동되었어요.','force majeure clause was invoked following the regulatory shutdown','"invoke a clause"는 "조항을 발동하다"예요. "force majeure"는 계약 이행 불가 시 면책 조항이에요.','계약 분쟁','C2','work','pattern',NULL,39),
('s_work_C2_05','A leveraged buyout financed at six times EBITDA requires careful covenant monitoring.','6배 EBITDA로 조달된 차입 매수는 신중한 약정 모니터링이 필요해요.','leveraged buyout financed at six times EBITDA requires careful covenant monitoring','LBO 분석에서 "multiple of EBITDA"는 인수 가격 수준을 나타내요.','LBO 분석','C2','work','pattern',NULL,40),
('s_work_C2_06','Subrogation rights allow the insurer to step into the insured''s shoes legally.','대위 변제 권리는 보험사가 법적으로 피보험자의 지위를 대신할 수 있게 해요.','Subrogation rights allow the insurer to step into the insured''s shoes','"step into someone''s shoes"는 관용표현으로 "그 사람의 지위를 대신하다"예요.','보험·법적 청구','C2','work','pattern',NULL,41),
('s_work_C2_07','The recapitalization plan involves converting mezzanine debt to equity at par.','자본 재편 계획은 메자닌 채무를 액면가로 주식으로 전환하는 것을 포함해요.','recapitalization plan involves converting mezzanine debt to equity at par','"at par"는 "액면가로"예요. "converting debt to equity"는 부채 탕감의 일반적인 방법이에요.','자본 구조 재편','C2','work','pattern',NULL,42);

-- supabase-words-education.sql
-- EngCat — Education (교육) 단어 + 패턴
-- 210 words (35 per CEFR level A1~C2) + 42 patterns (7 per level)
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (35)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_A1_01','What''s your favorite subject?','제일 좋아하는 과목이 뭐예요?','favorite subject','favorite를 써서 선호를 물어볼 수 있어요.','수업 대화','A1','education','pattern',NULL,1),
('s_education_A1_02','I like math because it''s interesting.','수학이 재미있어서 좋아요.','I like ... because','이유를 말할 때 because를 쓰면 자연스러워요.','과목 소개','A1','education','pattern',NULL,2),
('s_education_A1_03','How do you spell that word?','그 단어 철자가 어떻게 돼요?','How do you spell','모르는 단어 철자를 물어볼 때 쓰는 표현이에요.','수업 중 질문','A1','education','pattern',NULL,3),
('s_education_A1_04','Can you say that again, please?','다시 한 번 말씀해 주실 수 있어요?','Can you say that again','이해 못했을 때 정중하게 다시 말해달라고 하는 표현이에요.','수업 중','A1','education','pattern',NULL,4),
('s_education_A1_05','What does this word mean?','이 단어는 무슨 뜻이에요?','What does ... mean','모르는 단어의 뜻을 물어볼 때 가장 기본적인 표현이에요.','어휘 확인','A1','education','pattern',NULL,5),
('s_education_A1_06','I don''t understand. Can you help me?','이해가 안 돼요. 도와주실 수 있어요?','I don''t understand','솔직하게 모른다고 말하는 것이 배움의 첫 걸음이에요.','도움 요청','A1','education','pattern',NULL,6),
('s_education_A1_07','We have a test tomorrow.','내일 시험이 있어요.','We have a test','시험을 안내할 때 쓰는 가장 간단한 표현이에요.','시험 안내','A1','education','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (7)
-- 주제: 시험 준비 / 성적 표현
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_A2_01','I need to study for the exam this weekend.','이번 주말에 시험 공부를 해야 해요.','need to study for','need to를 쓰면 해야 할 일을 자연스럽게 표현할 수 있어요.','시험 준비','A2','education','pattern',NULL,1),
('s_education_A2_02','Did you pass the test? I got a B.','시험 합격했어요? 저는 B 받았어요.','Did you pass','시험 결과를 물어보거나 공유할 때 쓰는 표현이에요.','성적 대화','A2','education','pattern',NULL,2),
('s_education_A2_03','I''m going to review my notes tonight.','오늘 밤에 필기 내용을 복습할 거예요.','review my notes','review를 써서 복습 계획을 말할 수 있어요.','공부 계획','A2','education','pattern',NULL,3),
('s_education_A2_04','What chapter is the exam on?','시험 범위가 몇 장이에요?','What chapter is ... on','시험 범위를 확인할 때 꼭 필요한 표현이에요.','시험 준비','A2','education','pattern',NULL,4),
('s_education_A2_05','The homework is due on Friday.','숙제 제출 기한은 금요일이에요.','is due on','마감일을 표현할 때 be due on을 사용해요.','과제 안내','A2','education','pattern',NULL,5),
('s_education_A2_06','I failed the quiz, so I need to try harder.','쪽지 시험에서 떨어져서 더 열심히 해야 해요.','I failed ... so I need to','결과와 다짐을 연결할 때 so를 사용해요.','자기 반성','A2','education','pattern',NULL,6),
('s_education_A2_07','Can I borrow your notes from yesterday''s class?','어제 수업 필기 빌릴 수 있어요?','Can I borrow','정중하게 빌려달라고 부탁하는 표현이에요.','친구에게 부탁','A2','education','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B1 (7)
-- 주제: 발표 / 수업 중 질문
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_B1_01','I''d like to talk about the importance of lifelong learning.','평생 학습의 중요성에 대해 말씀드리려고 해요.','I''d like to talk about','발표를 시작할 때 I''d like to를 쓰면 공손하고 자연스럽게 들려요.','발표 시작','B1','education','pattern',NULL,1),
('s_education_B1_02','Could you explain that concept in more detail?','그 개념을 좀 더 자세히 설명해 주실 수 있어요?','Could you explain ... in more detail','수업에서 추가 설명을 요청할 때 쓰는 정중한 표현이에요.','수업 중 질문','B1','education','pattern',NULL,2),
('s_education_B1_03','My assignment is to write an essay on climate change.','제 과제는 기후 변화에 관한 에세이를 쓰는 거예요.','My assignment is to','과제 내용을 설명할 때 쓰는 자연스러운 표현이에요.','과제 설명','B1','education','pattern',NULL,3),
('s_education_B1_04','In my presentation, I will cover three main points.','발표에서 세 가지 주요 논점을 다룰 거예요.','I will cover','발표 구조를 미리 안내할 때 쓰는 표현이에요.','발표 구조 안내','B1','education','pattern',NULL,4),
('s_education_B1_05','I''m not sure I understand the difference between these two terms.','이 두 용어의 차이를 잘 모르겠어요.','I''m not sure I understand','확신이 없을 때 부드럽게 물어보는 정중한 표현이에요.','개념 확인','B1','education','pattern',NULL,5),
('s_education_B1_06','To sum up, the evidence suggests that practice improves fluency.','요약하면, 증거는 연습이 유창성을 향상시킨다고 제안해요.','To sum up','발표나 에세이를 마무리할 때 쓰는 전형적인 표현이에요.','발표 마무리','B1','education','pattern',NULL,6),
('s_education_B1_07','I applied for a scholarship and I''m waiting to hear back.','장학금을 신청했고 결과를 기다리고 있어요.','waiting to hear back','결과를 기다리는 상황을 표현할 때 쓰는 관용 표현이에요.','장학금 지원','B1','education','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B2 (7)
-- 주제: 토론 참여 / 학술 토론
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_B2_01','I see your point, but I''d argue that the data supports a different conclusion.','말씀하시는 바는 이해하지만, 데이터는 다른 결론을 지지한다고 생각해요.','I see your point, but I''d argue','반박할 때 상대방을 인정하면서 부드럽게 반론을 제시하는 표현이에요.','학술 토론','B2','education','pattern',NULL,1),
('s_education_B2_02','The methodology used in this study has some significant limitations.','이 연구에 사용된 방법론에는 몇 가지 중요한 한계가 있어요.','significant limitations','연구의 한계를 지적할 때 쓰는 학술적 표현이에요.','연구 비평','B2','education','pattern',NULL,2),
('s_education_B2_03','Could you elaborate on how you operationalised that variable?','그 변수를 어떻게 조작화했는지 좀 더 설명해 주실 수 있어요?','Could you elaborate on','학술 발표에서 방법론을 더 물어볼 때 쓰는 정중한 표현이에요.','연구 방법 질문','B2','education','pattern',NULL,3),
('s_education_B2_04','Building on the previous speaker''s argument, I would like to add that...','이전 발언자의 주장을 바탕으로, 추가하고 싶은 것은...','Building on','토론에서 앞선 의견을 이어받아 자신의 논점을 더할 때 쓰는 표현이에요.','토론 참여','B2','education','pattern',NULL,4),
('s_education_B2_05','The empirical evidence does not fully support this hypothesis.','실증적 증거가 이 가설을 완전히 지지하지는 않아요.','empirical evidence ... does not fully support','학술 글쓰기에서 가설의 한계를 조심스럽게 언급할 때 쓰는 표현이에요.','연구 결과 평가','B2','education','pattern',NULL,5),
('s_education_B2_06','This dissertation critically examines the relationship between pedagogy and identity.','이 논문은 교수법과 정체성의 관계를 비판적으로 검토해요.','critically examines','학위 논문의 목적을 설명할 때 쓰는 학술적 표현이에요.','논문 소개','B2','education','pattern',NULL,6),
('s_education_B2_07','I would contend that peer learning is as effective as direct instruction.','동료 학습이 직접 교수만큼 효과적이라고 주장하고 싶어요.','I would contend that','토론에서 신중하게 주장을 제시할 때 contend를 쓰면 격식 있게 들려요.','학술 주장','B2','education','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C1 (7)
-- 주제: 논문 표현 / 고급 학술 쓰기
-- ══════════════════════════════════════

