-- greeting topic v2: 예문 5개 + 신규 150단어
-- ① 기존 단어 예문 추가 (UPDATE 210개)
-- ② 신규 단어 INSERT (레벨당 25개 × 6 = 150개, 예문 5개 포함)
-- ③ 기존 패턴 사용 예문 추가 (UPDATE 42개)
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- ① 기존 단어 예문 2~5번 추가 (UPDATE)
-- ══════════════════════════════════════

-- A1 (35개)
UPDATE words SET
  example_en_2 = 'He called out hello to the delivery person at the door.',
  example_ko_2 = '그는 문 앞의 배달원에게 안녕이라고 불렀어요.',
  example_en_3 = 'The children shouted hello as their teacher entered the classroom.',
  example_ko_3 = '선생님이 교실에 들어오자 아이들이 안녕이라고 외쳤어요.',
  example_en_4 = 'She always says hello with a big smile.',
  example_ko_4 = '그녀는 항상 환하게 웃으며 안녕이라고 인사해요.',
  example_en_5 = 'He picked up the phone and said hello in a cheerful voice.',
  example_ko_5 = '그는 전화를 받으며 밝은 목소리로 안녕이라고 했어요.'
WHERE id = 'w_greeting_A1_01';

UPDATE words SET
  example_en_2 = 'She texted "hi" before calling to check if he was free.',
  example_ko_2 = '그녀는 통화 전에 시간이 있는지 확인하려고 "하이"라고 문자를 보냈어요.',
  example_en_3 = 'The cashier greeted every customer with a cheerful hi.',
  example_ko_3 = '계산원은 모든 고객에게 명랑하게 하이라고 인사했어요.',
  example_en_4 = 'He just said hi and kept walking down the corridor.',
  example_ko_4 = '그는 그냥 하이라고 하고 복도를 계속 걸어갔어요.',
  example_en_5 = 'She smiled and said hi to everyone at the party.',
  example_ko_5 = '그녀는 파티에서 모든 사람에게 미소 지으며 하이라고 했어요.'
WHERE id = 'w_greeting_A1_02';

UPDATE words SET
  example_en_2 = 'He waved goodbye to his parents at the airport gate.',
  example_ko_2 = '그는 공항 게이트에서 부모님께 손을 흔들며 안녕히 가세요라고 했어요.',
  example_en_3 = 'The teacher said goodbye to each student as they left.',
  example_ko_3 = '선생님은 학생들이 떠날 때 한 명 한 명에게 안녕이라고 했어요.',
  example_en_4 = 'Saying goodbye gets harder the longer you know someone.',
  example_ko_4 = '알고 지낸 시간이 길수록 작별 인사가 더 어려워져요.',
  example_en_5 = 'She whispered goodbye and quietly left the room.',
  example_ko_5 = '그녀는 조용히 안녕이라고 속삭이고 방을 나왔어요.'
WHERE id = 'w_greeting_A1_03';

UPDATE words SET
  example_en_2 = 'She texted bye after their long phone call ended.',
  example_ko_2 = '긴 통화가 끝난 후 그녀는 잘 가라고 문자를 보냈어요.',
  example_en_3 = 'The kids shouted bye as the school bus pulled away.',
  example_ko_3 = '스쿨버스가 출발하자 아이들이 잘 가라고 외쳤어요.',
  example_en_4 = 'He gave a quick bye and dashed out of the office.',
  example_ko_4 = '그는 빠르게 잘 가라고 하고 사무실을 뛰어나갔어요.',
  example_en_5 = 'They said bye at the corner and went their separate ways.',
  example_ko_5 = '그들은 모퉁이에서 잘 가라고 하고 각자의 길을 갔어요.'
WHERE id = 'w_greeting_A1_04';

UPDATE words SET
  example_en_2 = 'Pass the salt, please — I can''t reach it from here.',
  example_ko_2 = '소금 좀 건네주세요 — 여기서는 닿지 않아요.',
  example_en_3 = 'Could you hold the door open, please?',
  example_ko_3 = '문 좀 잡아주시겠어요, 부탁드려요?',
  example_en_4 = 'Please take a seat — the doctor will be right with you.',
  example_ko_4 = '앉아 주세요 — 의사 선생님이 곧 오실 거예요.',
  example_en_5 = 'Speak a little more slowly, please — I am still learning.',
  example_ko_5 = '조금 더 천천히 말씀해 주세요 — 아직 배우는 중이에요.'
WHERE id = 'w_greeting_A1_05';

UPDATE words SET
  example_en_2 = 'He said thank you after the waiter refilled his glass.',
  example_ko_2 = '웨이터가 잔을 다시 채워주자 그는 감사합니다라고 했어요.',
  example_en_3 = 'She sent a card to say thank you for the birthday gift.',
  example_ko_3 = '그녀는 생일 선물에 대한 감사 카드를 보냈어요.',
  example_en_4 = 'Thank you for waiting — I know I am a bit late.',
  example_ko_4 = '기다려 주셔서 감사해요 — 제가 조금 늦었다는 거 알아요.',
  example_en_5 = 'He bowed his head and said thank you very sincerely.',
  example_ko_5 = '그는 고개를 숙이며 매우 진심으로 감사합니다라고 했어요.'
WHERE id = 'w_greeting_A1_06';

UPDATE words SET
  example_en_2 = 'She said sorry for being late to the morning meeting.',
  example_ko_2 = '그녀는 아침 회의에 늦어서 죄송하다고 했어요.',
  example_en_3 = 'I am sorry — I did not mean to interrupt you.',
  example_ko_3 = '죄송해요 — 방해하려던 게 아니었어요.',
  example_en_4 = 'He wrote a letter to say sorry for the misunderstanding.',
  example_ko_4 = '그는 오해에 대해 사과하는 편지를 썼어요.',
  example_en_5 = 'Sorry, could you say that again? I missed the last part.',
  example_ko_5 = '죄송한데, 다시 말씀해 주시겠어요? 마지막 부분을 놓쳤어요.'
WHERE id = 'w_greeting_A1_07';

UPDATE words SET
  example_en_2 = 'She said yes without hesitation when asked to join the project.',
  example_ko_2 = '프로젝트 참여 요청에 그녀는 주저 없이 네라고 했어요.',
  example_en_3 = 'Yes, I would love some more coffee, thank you.',
  example_ko_3 = '네, 커피 좀 더 주시면 감사하겠어요.',
  example_en_4 = 'He said yes to every question during the interview.',
  example_ko_4 = '그는 인터뷰 중 모든 질문에 네라고 대답했어요.',
  example_en_5 = 'Yes, that is exactly what I meant — thank you for understanding.',
  example_ko_5 = '네, 제가 말하려던 게 바로 그거예요 — 이해해 주셔서 감사해요.'
WHERE id = 'w_greeting_A1_08';

UPDATE words SET
  example_en_2 = 'No, please do not worry — it is no trouble at all.',
  example_ko_2 = '아니요, 걱정하지 마세요 — 전혀 귀찮지 않아요.',
  example_en_3 = 'She said no politely but firmly to the extra assignment.',
  example_ko_3 = '그녀는 추가 업무 요청에 정중하지만 확고하게 아니요라고 했어요.',
  example_en_4 = 'No, I do not think I have met you before — nice to meet you.',
  example_ko_4 = '아니요, 전에 만난 적이 없는 것 같아요 — 만나서 반가워요.',
  example_en_5 = 'He shook his head and said no in a soft but clear voice.',
  example_ko_5 = '그는 고개를 흔들며 부드럽지만 분명한 목소리로 아니요라고 했어요.'
WHERE id = 'w_greeting_A1_09';

UPDATE words SET
  example_en_2 = 'She forgot his name for a moment and felt embarrassed.',
  example_ko_2 = '잠깐 그의 이름이 생각나지 않아 그녀는 당황했어요.',
  example_en_3 = 'What is your name? I do not think we have met before.',
  example_ko_3 = '성함이 어떻게 되세요? 전에 만난 적이 없는 것 같아요.',
  example_en_4 = 'He introduced himself by name at the start of the meeting.',
  example_ko_4 = '그는 회의 시작 시 이름으로 자기소개를 했어요.',
  example_en_5 = 'Please write your name clearly on the sign-in sheet.',
  example_ko_5 = '방문 기록지에 이름을 선명하게 적어 주세요.'
WHERE id = 'w_greeting_A1_10';

UPDATE words SET
  example_en_2 = 'That is a nice jacket — where did you get it?',
  example_ko_2 = '재킷이 멋지네요 — 어디서 구하셨어요?',
  example_en_3 = 'It was nice of you to hold the elevator for me.',
  example_ko_3 = '엘리베이터를 잡아주시다니 친절하셨어요.',
  example_en_4 = 'What a nice surprise to run into you here!',
  example_ko_4 = '여기서 만나다니 정말 기분 좋은 우연이에요!',
  example_en_5 = 'She said it was nice chatting and hoped to see him again.',
  example_ko_5 = '그녀는 이야기 나눠서 좋았다고 하며 또 만나길 바랐어요.'
WHERE id = 'w_greeting_A1_11';

UPDATE words SET
  example_en_2 = 'He was nervous about meeting her parents for the first time.',
  example_ko_2 = '그는 처음으로 그녀의 부모님을 만나는 것이 긴장됐어요.',
  example_en_3 = 'They arranged to meet at the coffee shop at noon.',
  example_ko_3 = '그들은 정오에 커피숍에서 만나기로 했어요.',
  example_en_4 = 'I hope we get to meet again before the conference ends.',
  example_ko_4 = '컨퍼런스가 끝나기 전에 다시 만날 수 있으면 좋겠어요.',
  example_en_5 = 'She was delighted to meet the author of her favorite book.',
  example_ko_5 = '그녀는 좋아하는 책의 작가를 만나게 되어 무척 기뻤어요.'
WHERE id = 'w_greeting_A1_12';

UPDATE words SET
  example_en_2 = 'Good morning! Did you sleep well last night?',
  example_ko_2 = '좋은 아침이에요! 어젯밤 잘 주무셨어요?',
  example_en_3 = 'She greeted the team with good morning as she entered the office.',
  example_ko_3 = '그녀는 사무실에 들어서며 팀원들에게 좋은 아침이에요라고 인사했어요.',
  example_en_4 = 'Good morning! The coffee is already brewed if you want some.',
  example_ko_4 = '좋은 아침이에요! 원하시면 커피가 이미 내려져 있어요.',
  example_en_5 = 'He answered the phone with a bright good morning.',
  example_ko_5 = '그는 밝게 좋은 아침이에요라고 하며 전화를 받았어요.'
WHERE id = 'w_greeting_A1_13';

UPDATE words SET
  example_en_2 = 'Good evening, everyone — thank you for coming tonight.',
  example_ko_2 = '좋은 저녁이에요, 여러분 — 오늘 밤 와 주셔서 감사해요.',
  example_en_3 = 'She said good evening to the host as she arrived at the party.',
  example_ko_3 = '그녀는 파티에 도착해 호스트에게 좋은 저녁이에요라고 했어요.',
  example_en_4 = 'Good evening! Can I get you a drink to start with?',
  example_ko_4 = '좋은 저녁이에요! 먼저 음료 하나 드릴까요?',
  example_en_5 = 'The receptionist greeted him with a warm good evening.',
  example_ko_5 = '안내 직원은 따뜻하게 좋은 저녁이에요라고 그를 맞이했어요.'
WHERE id = 'w_greeting_A1_14';

UPDATE words SET
  example_en_2 = 'She whispered good night and kissed her child on the forehead.',
  example_ko_2 = '그녀는 아이의 이마에 입을 맞추며 안녕히 주무세요라고 속삭였어요.',
  example_en_3 = 'He said good night to each guest before they left.',
  example_ko_3 = '그는 손님들이 떠나기 전에 한 명 한 명 안녕히 주무세요라고 했어요.',
  example_en_4 = 'Good night! Drive safely on your way home.',
  example_ko_4 = '안녕히 주무세요! 집에 가시는 길에 안전 운전하세요.',
  example_en_5 = 'She posted a good night message to her friends before sleeping.',
  example_ko_5 = '그녀는 잠들기 전에 친구들에게 안녕히 주무세요 메시지를 보냈어요.'
WHERE id = 'w_greeting_A1_15';

UPDATE words SET
  example_en_2 = 'Welcome! Please come in and make yourself at home.',
  example_ko_2 = '환영해요! 들어오셔서 편하게 계세요.',
  example_en_3 = 'The banner read "Welcome" in large colorful letters.',
  example_ko_3 = '현수막에 "환영"이라고 큰 알록달록한 글씨로 적혀 있었어요.',
  example_en_4 = 'She felt truly welcome the moment she walked through the door.',
  example_ko_4 = '그녀는 문을 들어서는 순간 진심으로 환영받는 느낌이었어요.',
  example_en_5 = 'Welcome to our team — we are glad to have you with us!',
  example_ko_5 = '팀에 오신 것을 환영해요 — 함께하게 되어 기뻐요!'
WHERE id = 'w_greeting_A1_16';

UPDATE words SET
  example_en_2 = '"I''m fine, thanks — just a little tired," she replied.',
  example_ko_2 = '"잘 지내요, 감사해요 — 그냥 좀 피곤해요"라고 그녀가 대답했어요.',
  example_en_3 = 'Everything is fine — no need to worry at all.',
  example_ko_3 = '모두 괜찮아요 — 전혀 걱정하지 않아도 돼요.',
  example_en_4 = 'She said she was fine but looked a bit distracted.',
  example_ko_4 = '그녀는 괜찮다고 했지만 조금 다른 생각을 하는 것 같았어요.',
  example_en_5 = 'The food was fine, but the dessert was absolutely wonderful.',
  example_ko_5 = '음식은 괜찮았지만 디저트는 정말 훌륭했어요.'
WHERE id = 'w_greeting_A1_17';

UPDATE words SET
  example_en_2 = 'How do you spell your name? I want to get it right.',
  example_ko_2 = '이름 철자가 어떻게 돼요? 정확하게 적고 싶어요.',
  example_en_3 = 'How long have you been living in Seoul?',
  example_ko_3 = '서울에 얼마나 사셨어요?',
  example_en_4 = 'How did the presentation go? Everyone seemed engaged.',
  example_ko_4 = '발표는 어떻게 됐어요? 모두 집중하는 것 같았어요.',
  example_en_5 = 'How often do you come to this neighborhood?',
  example_ko_5 = '이 동네에 얼마나 자주 오세요?'
WHERE id = 'w_greeting_A1_18';

UPDATE words SET
  example_en_2 = 'You look familiar — have we met somewhere before?',
  example_ko_2 = '낯이 익어요 — 전에 어디서 만난 적 있나요?',
  example_en_3 = 'Is this seat taken? Can you move over a bit for me?',
  example_ko_3 = '이 자리 비어 있나요? 조금만 비켜주실 수 있나요?',
  example_en_4 = 'You are always so cheerful — it is contagious!',
  example_ko_4 = '항상 너무 명랑하시네요 — 전파되는 것 같아요!',
  example_en_5 = 'It was a pleasure meeting you — I hope we speak again soon.',
  example_ko_5 = '만나서 반가웠어요 — 곧 또 이야기 나눌 수 있으면 좋겠어요.'
WHERE id = 'w_greeting_A1_19';

UPDATE words SET
  example_en_2 = 'Let me tell you a little about my background.',
  example_ko_2 = '제 배경에 대해 조금 말씀드릴게요.',
  example_en_3 = 'My goal this year is to make more time for learning.',
  example_ko_3 = '올해 저의 목표는 배움에 더 많은 시간을 내는 거예요.',
  example_en_4 = 'My commute takes about forty minutes each way.',
  example_ko_4 = '제 출퇴근 시간은 편도로 약 40분 걸려요.',
  example_en_5 = 'My favorite part of the day is the morning walk.',
  example_ko_5 = '하루 중 제가 가장 좋아하는 시간은 아침 산책이에요.'
WHERE id = 'w_greeting_A1_20';

UPDATE words SET
  example_en_2 = 'She introduced her friend and they all shook hands warmly.',
  example_ko_2 = '그녀는 친구를 소개했고 모두 따뜻하게 악수했어요.',
  example_en_3 = 'He caught up with an old friend at the alumni event.',
  example_ko_3 = '그는 동창 행사에서 오랜 친구를 만났어요.',
  example_en_4 = 'A good friend always greets you with sincerity.',
  example_ko_4 = '좋은 친구는 항상 진심으로 인사해요.',
  example_en_5 = 'She introduced herself as a friend of the host.',
  example_ko_5 = '그녀는 주최자의 친구라고 자기소개를 했어요.'
WHERE id = 'w_greeting_A1_21';

UPDATE words SET
  example_en_2 = 'I see what you mean — let me explain it differently.',
  example_ko_2 = '무슨 말씀인지 알겠어요 — 다르게 설명해 드릴게요.',
  example_en_3 = 'Can you see the name tag from where you are standing?',
  example_ko_3 = '서 계신 곳에서 명찰이 보이세요?',
  example_en_4 = 'I can see you are busy — I will come back later.',
  example_ko_4 = '바쁘신 것 같아요 — 나중에 다시 올게요.',
  example_en_5 = 'We can see how much effort you put into the presentation.',
  example_ko_5 = '발표에 얼마나 많은 노력을 기울이셨는지 알 수 있어요.'
WHERE id = 'w_greeting_A1_22';

UPDATE words SET
  example_en_2 = 'Could you repeat that again? I want to make sure I heard it right.',
  example_ko_2 = '다시 한 번 말씀해 주시겠어요? 제대로 들었는지 확인하고 싶어요.',
  example_en_3 = 'Let''s meet again next week and compare notes.',
  example_ko_3 = '다음 주에 다시 만나서 내용을 비교해봐요.',
  example_en_4 = 'It was great seeing you — let''s do this again sometime.',
  example_ko_4 = '만나서 정말 좋았어요 — 언젠가 또 이렇게 해요.',
  example_en_5 = 'She ran into the same colleague again on the subway.',
  example_ko_5 = '그녀는 지하철에서 같은 동료를 또 마주쳤어요.'
WHERE id = 'w_greeting_A1_23';

UPDATE words SET
  example_en_2 = 'We have an old tradition of greeting guests with tea.',
  example_ko_2 = '우리에게는 차로 손님을 맞이하는 오래된 전통이 있어요.',
  example_en_3 = 'The old customs of bowing are still respected here.',
  example_ko_3 = '절하는 오래된 관습이 이곳에서는 여전히 존중받아요.',
  example_en_4 = 'He greeted his old mentor with a respectful bow.',
  example_ko_4 = '그는 오래된 스승에게 존경스럽게 고개를 숙여 인사했어요.',
  example_en_5 = 'An old habit like greeting people by name goes a long way.',
  example_ko_5 = '이름으로 인사하는 오래된 습관은 큰 효과가 있어요.'
WHERE id = 'w_greeting_A1_24';

UPDATE words SET
  example_en_2 = 'She is a new member of the team — please make her feel welcome.',
  example_ko_2 = '그녀는 팀의 새 멤버예요 — 편하게 느낄 수 있도록 해주세요.',
  example_en_3 = 'A new face at the meeting made everyone curious.',
  example_ko_3 = '회의에 새 얼굴이 나타나자 모두가 궁금해했어요.',
  example_en_4 = 'He made new friends at every conference he attended.',
  example_ko_4 = '그는 참석하는 컨퍼런스마다 새 친구를 사귀었어요.',
  example_en_5 = 'The new semester brought many new opportunities to meet people.',
  example_ko_5 = '새 학기는 사람들을 만날 많은 기회를 가져다줬어요.'
WHERE id = 'w_greeting_A1_25';

UPDATE words SET
  example_en_2 = 'I would love to introduce you to my team leader.',
  example_ko_2 = '팀장님께 소개해 드리고 싶어요.',
  example_en_3 = 'I did not expect to see you here — what a coincidence!',
  example_ko_3 = '여기서 만날 줄 몰랐어요 — 정말 우연이네요!',
  example_en_4 = 'I am so glad we finally had a chance to talk in person.',
  example_ko_4 = '드디어 직접 이야기 나눌 기회가 생겨서 정말 기뻐요.',
  example_en_5 = 'I should mention that I have been a fan of your work.',
  example_ko_5 = '사실 오래 전부터 당신의 작업을 좋아했다는 말씀을 드려야겠어요.'
WHERE id = 'w_greeting_A1_26';

UPDATE words SET
  example_en_2 = 'I am delighted to be here and meet everyone today.',
  example_ko_2 = '오늘 이곳에 와서 모두를 만나게 되어 정말 기뻐요.',
  example_en_3 = 'I am looking forward to working with this wonderful team.',
  example_ko_3 = '이 훌륭한 팀과 함께 일하는 것이 기대돼요.',
  example_en_4 = 'I am not sure we have been formally introduced yet.',
  example_ko_4 = '아직 공식적으로 소개받지 못한 것 같아요.',
  example_en_5 = 'I am here on behalf of the entire department.',
  example_ko_5 = '저는 부서 전체를 대표해 이 자리에 있어요.'
WHERE id = 'w_greeting_A1_27';

UPDATE words SET
  example_en_2 = 'You are the first person I recognized at this event.',
  example_ko_2 = '이 행사에서 처음으로 알아본 사람이 당신이에요.',
  example_en_3 = 'You are doing a great job — keep it up!',
  example_ko_3 = '정말 잘 하고 계세요 — 계속 그렇게 해요!',
  example_en_4 = 'You are always so easy to talk to — I appreciate that.',
  example_ko_4 = '항상 이야기하기 편해요 — 그게 정말 감사해요.',
  example_en_5 = 'You are exactly as I imagined from our email exchanges.',
  example_ko_5 = '이메일로 주고받은 내용에서 상상한 대로예요.'
WHERE id = 'w_greeting_A1_28';

UPDATE words SET
  example_en_2 = 'I am happy to answer any questions you might have.',
  example_ko_2 = '질문이 있으시면 기꺼이 답변해 드릴게요.',
  example_en_3 = 'She looked happy as she greeted her long-lost friend.',
  example_ko_3 = '오랫동안 연락이 끊겼던 친구를 만나자 그녀는 행복해 보였어요.',
  example_en_4 = 'We are happy to welcome you to our little community.',
  example_ko_4 = '우리 작은 커뮤니티에 오신 것을 기꺼이 환영해요.',
  example_en_5 = 'He was happy to finally hear a familiar voice in the crowd.',
  example_ko_5 = '군중 속에서 드디어 익숙한 목소리를 듣게 되어 기뻤어요.'
WHERE id = 'w_greeting_A1_29';

UPDATE words SET
  example_en_2 = 'I am glad the event turned out to be so welcoming.',
  example_ko_2 = '행사가 이렇게 따뜻하게 환영받는 자리가 되어서 기뻐요.',
  example_en_3 = 'She was glad to see a familiar face in the crowd.',
  example_ko_3 = '군중 속에서 익숙한 얼굴을 보게 되어 기뻤어요.',
  example_en_4 = 'I am glad you brought that up — it is an important point.',
  example_ko_4 = '그 점을 말씀해 주셔서 기뻐요 — 중요한 부분이에요.',
  example_en_5 = 'He was glad the introduction went more smoothly than expected.',
  example_ko_5 = '소개가 예상보다 훨씬 순조롭게 진행되어 기뻤어요.'
WHERE id = 'w_greeting_A1_30';

UPDATE words SET
  example_en_2 = 'She said thanks for covering her shift at the last minute.',
  example_ko_2 = '마지막 순간에 근무를 대신해줘서 고마워요라고 그녀가 말했어요.',
  example_en_3 = 'Thanks for remembering my name — it means a lot to me.',
  example_ko_3 = '제 이름을 기억해 주셔서 고마워요 — 정말 감사해요.',
  example_en_4 = 'He gave a thumbs up and said thanks with a grin.',
  example_ko_4 = '그는 엄지를 치켜들고 웃으며 고마워요라고 했어요.',
  example_en_5 = 'Thanks for showing me around — I feel much more comfortable now.',
  example_ko_5 = '안내해 주셔서 고마워요 — 이제 훨씬 편안한 느낌이에요.'
WHERE id = 'w_greeting_A1_31';

UPDATE words SET
  example_en_2 = 'Sure, I can introduce you to the team leader right now.',
  example_ko_2 = '물론이죠, 지금 바로 팀장님께 소개해 드릴 수 있어요.',
  example_en_3 = 'Sure, take your time — there is no rush at all.',
  example_ko_3 = '물론이죠, 천천히 하세요 — 전혀 서두를 필요 없어요.',
  example_en_4 = '"Sure, I would love to join you for lunch," she said cheerfully.',
  example_ko_4 = '"물론이죠, 점심 함께하면 좋겠어요"라고 그녀가 기분 좋게 말했어요.',
  example_en_5 = 'He said sure and extended his hand for a handshake.',
  example_ko_5 = '그는 물론이죠라고 하며 악수를 위해 손을 내밀었어요.'
WHERE id = 'w_greeting_A1_32';

UPDATE words SET
  example_en_2 = 'Okay, let me write down your contact information.',
  example_ko_2 = '알겠어요, 연락처를 적어 둘게요.',
  example_en_3 = '"Okay, I will be there in five minutes," he texted back.',
  example_ko_3 = '"알겠어요, 5분 안에 거기 갈게요"라고 그가 문자를 보냈어요.',
  example_en_4 = 'Okay, it was really nice talking — let''s keep in touch!',
  example_ko_4 = '알겠어요, 이야기 나눠서 정말 좋았어요 — 계속 연락해요!',
  example_en_5 = 'Okay, I think we are all set — let the meeting begin.',
  example_ko_5 = '알겠어요, 다 준비된 것 같아요 — 회의를 시작해요.'
WHERE id = 'w_greeting_A1_33';

UPDATE words SET
  example_en_2 = 'That is great — I am so glad we ran into each other.',
  example_ko_2 = '정말 잘 됐어요 — 이렇게 마주치게 되어 너무 기뻐요.',
  example_en_3 = 'She said great when she heard about the upcoming team event.',
  example_ko_3 = '다가오는 팀 행사 소식을 듣자 그녀는 멋지다고 했어요.',
  example_en_4 = 'Great to have you on board — welcome to the family!',
  example_ko_4 = '함께하게 되어 정말 좋아요 — 어서 오세요!',
  example_en_5 = 'He thought it was great that everyone was so easy to talk to.',
  example_ko_5 = '모두가 이야기하기 너무 편해서 정말 좋다고 생각했어요.'
WHERE id = 'w_greeting_A1_34';

UPDATE words SET
  example_en_2 = '"Hi there!" he called out when he spotted her across the café.',
  example_ko_2 = '"어이 거기요!" 그가 카페 너머에서 그녀를 발견하고 불렀어요.',
  example_en_3 = 'Hi there — I do not think we have met. I am Minjung.',
  example_ko_3 = '안녕하세요 — 처음 뵙는 것 같아요. 저는 민정이에요.',
  example_en_4 = 'She posted "hi there" on the group chat to kick off the conversation.',
  example_ko_4 = '그녀는 대화를 시작하려고 그룹 채팅에 "안녕하세요"를 올렸어요.',
  example_en_5 = 'Hi there! Are you here for the networking event too?',
  example_ko_5 = '안녕하세요! 네트워킹 행사 때문에 오신 건가요?'
WHERE id = 'w_greeting_A1_35';

-- A2 (35개)
UPDATE words SET
  example_en_2 = 'She introduced her colleague before the presentation began.',
  example_ko_2 = '발표가 시작되기 전에 그녀는 동료를 소개했어요.',
  example_en_3 = 'He introduced himself with a confident handshake.',
  example_ko_3 = '그는 자신감 있는 악수로 자기소개를 했어요.',
  example_en_4 = 'Let me introduce you to the rest of the department.',
  example_ko_4 = '나머지 부서 직원들에게 소개해 드릴게요.',
  example_en_5 = 'She introduced each guest by name as they arrived.',
  example_ko_5 = '그녀는 손님들이 도착하는 대로 이름으로 각각 소개했어요.'
WHERE id = 'w_greeting_A2_01';

UPDATE words SET
  example_en_2 = 'She greeted the new intern warmly on their first day.',
  example_ko_2 = '그녀는 인턴의 첫날에 따뜻하게 인사했어요.',
  example_en_3 = 'He always greets his neighbors with a smile.',
  example_ko_3 = '그는 항상 이웃들에게 미소로 인사해요.',
  example_en_4 = 'The receptionist greeted every visitor with the same warmth.',
  example_ko_4 = '안내 직원은 모든 방문객에게 같은 따뜻함으로 인사했어요.',
  example_en_5 = 'She greeted her online class with a cheerful good morning.',
  example_ko_5 = '그녀는 온라인 수업 학생들에게 명랑하게 좋은 아침이에요라고 인사했어요.'
WHERE id = 'w_greeting_A2_02';

UPDATE words SET
  example_en_2 = 'The farewell speech made several people emotional.',
  example_ko_2 = '작별 인사 연설이 몇몇 사람들을 감동시켰어요.',
  example_en_3 = 'She exchanged farewell hugs with all of her teammates.',
  example_ko_3 = '그녀는 모든 팀원들과 작별 포옹을 나눴어요.',
  example_en_4 = 'It was a bittersweet farewell after three wonderful years.',
  example_ko_4 = '3년간의 멋진 시간 끝에 씁쓸하면서도 달콤한 작별이었어요.',
  example_en_5 = 'He gave a short farewell address before leaving the company.',
  example_ko_5 = '그는 회사를 떠나기 전에 짧은 작별 인사를 했어요.'
WHERE id = 'w_greeting_A2_03';

UPDATE words SET
  example_en_2 = 'A firm handshake signals confidence in a business setting.',
  example_ko_2 = '비즈니스 환경에서 힘찬 악수는 자신감을 나타내요.',
  example_en_3 = 'They ended the negotiation with a handshake and a smile.',
  example_ko_3 = '그들은 악수와 미소로 협상을 마무리했어요.',
  example_en_4 = 'She extended her hand for a handshake as she introduced herself.',
  example_ko_4 = '자기소개를 하며 그녀는 악수를 위해 손을 내밀었어요.',
  example_en_5 = 'A handshake is still expected in many professional environments.',
  example_ko_5 = '많은 전문적 환경에서 악수는 여전히 기대되는 인사예요.'
WHERE id = 'w_greeting_A2_04';

UPDATE words SET
  example_en_2 = 'It is polite to use someone''s name when greeting them.',
  example_ko_2 = '인사할 때 상대방의 이름을 사용하는 것이 예의 바른 행동이에요.',
  example_en_3 = 'She was always polite, even when she was having a bad day.',
  example_ko_3 = '그녀는 힘든 날에도 항상 예의 바른 태도였어요.',
  example_en_4 = 'Being polite costs nothing but can mean everything.',
  example_ko_4 = '예의 바른 행동은 아무것도 들지 않지만 모든 것을 의미할 수 있어요.',
  example_en_5 = 'He was polite but direct when he declined the invitation.',
  example_ko_5 = '그는 초대를 거절할 때 예의 바르지만 직접적이었어요.'
WHERE id = 'w_greeting_A2_05';

UPDATE words SET
  example_en_2 = 'The host was so friendly that everyone relaxed immediately.',
  example_ko_2 = '주최자가 너무 친근해서 모두가 바로 편안해졌어요.',
  example_en_3 = 'She gave a friendly nod to the person across the table.',
  example_ko_3 = '그녀는 테이블 맞은편 사람에게 친근하게 고개를 끄덕였어요.',
  example_en_4 = 'His friendly manner made him stand out at networking events.',
  example_ko_4 = '그의 친근한 태도는 네트워킹 행사에서 돋보이게 했어요.',
  example_en_5 = 'A friendly greeting sets a positive tone for any meeting.',
  example_ko_5 = '친근한 인사는 어떤 모임에서든 긍정적인 분위기를 만들어요.'
WHERE id = 'w_greeting_A2_06';

UPDATE words SET
  example_en_2 = 'They had a casual conversation while waiting in line.',
  example_ko_2 = '그들은 줄을 서서 기다리는 동안 격식 없는 대화를 나눴어요.',
  example_en_3 = 'The dress code was casual so everyone felt comfortable.',
  example_ko_3 = '복장 규정이 캐주얼해서 모두가 편안하게 느꼈어요.',
  example_en_4 = 'She preferred casual introductions over formal ones.',
  example_ko_4 = '그녀는 격식 있는 소개보다 캐주얼한 소개를 선호했어요.',
  example_en_5 = 'A casual tone works well for most first-time social encounters.',
  example_ko_5 = '대부분의 첫 사회적 만남에서 캐주얼한 톤이 잘 어울려요.'
WHERE id = 'w_greeting_A2_07';

UPDATE words SET
  example_en_2 = 'The ceremony required formal attire and formal greetings.',
  example_ko_2 = '행사는 격식 있는 복장과 격식 있는 인사를 요구했어요.',
  example_en_3 = 'In a formal setting, titles are used more than first names.',
  example_ko_3 = '격식 있는 환경에서는 이름보다 직함이 더 많이 사용돼요.',
  example_en_4 = 'She switched to a more formal tone when addressing the board.',
  example_ko_4 = '이사회에 발언할 때 그녀는 더 격식 있는 어조로 바꿨어요.',
  example_en_5 = 'Formal introductions are expected at state-level events.',
  example_ko_5 = '국가 수준의 행사에서는 격식 있는 소개가 기대돼요.'
WHERE id = 'w_greeting_A2_08';

UPDATE words SET
  example_en_2 = 'He waved at the crowd as the event officially opened.',
  example_ko_2 = '행사가 공식적으로 열리자 그는 군중에게 손을 흔들었어요.',
  example_en_3 = 'She waved enthusiastically to signal she had found a seat.',
  example_ko_3 = '자리를 찾았다는 것을 알리려고 그녀는 열정적으로 손을 흔들었어요.',
  example_en_4 = 'Children love to wave at strangers through the car window.',
  example_ko_4 = '아이들은 차창 너머로 모르는 사람에게 손을 흔드는 것을 좋아해요.',
  example_en_5 = 'He waved politely as he recognized a former classmate.',
  example_ko_5 = '예전 동급생을 알아보고 그는 정중하게 손을 흔들었어요.'
WHERE id = 'w_greeting_A2_09';

UPDATE words SET
  example_en_2 = 'They chatted over coffee and discovered many shared interests.',
  example_ko_2 = '그들은 커피를 마시며 이야기를 나누다 공통 관심사가 많다는 것을 알게 됐어요.',
  example_en_3 = 'She chatted with the new hire to help them feel welcome.',
  example_ko_3 = '그녀는 신입이 환영받는 느낌을 갖도록 이야기를 나눴어요.',
  example_en_4 = 'He liked to chat with people at conferences to expand his network.',
  example_ko_4 = '그는 컨퍼런스에서 네트워크를 넓히기 위해 사람들과 이야기 나누는 것을 좋아했어요.',
  example_en_5 = 'They chatted briefly before the meeting started.',
  example_ko_5 = '회의가 시작되기 전에 그들은 잠깐 이야기를 나눴어요.'
WHERE id = 'w_greeting_A2_10';

UPDATE words SET
  example_en_2 = 'Their first meeting led to a long-lasting collaboration.',
  example_ko_2 = '그들의 첫 만남이 오래 지속되는 협업으로 이어졌어요.',
  example_en_3 = 'The meeting was short but made a strong impression.',
  example_ko_3 = '만남은 짧았지만 강한 인상을 남겼어요.',
  example_en_4 = 'She prepared thoroughly for the meeting with the senior partner.',
  example_ko_4 = '그녀는 선임 파트너와의 만남을 위해 꼼꼼히 준비했어요.',
  example_en_5 = 'The meeting over lunch turned into a two-hour conversation.',
  example_ko_5 = '점심 자리에서의 만남이 두 시간짜리 대화로 이어졌어요.'
WHERE id = 'w_greeting_A2_11';

UPDATE words SET
  example_en_2 = 'Please introduce yourself to your seat neighbor before we start.',
  example_ko_2 = '시작하기 전에 옆에 앉은 분에게 자기소개를 해주세요.',
  example_en_3 = 'She introduced herself via email before the first meeting.',
  example_ko_3 = '그녀는 첫 번째 회의 전에 이메일로 자기소개를 했어요.',
  example_en_4 = 'He found it easier to introduce himself using a name card.',
  example_ko_4 = '그는 명함을 사용하면 자기소개가 더 편하다고 느꼈어요.',
  example_en_5 = 'The facilitator asked each participant to briefly introduce themselves.',
  example_ko_5 = '진행자는 각 참가자에게 간략히 자기소개를 해달라고 했어요.'
WHERE id = 'w_greeting_A2_12';

UPDATE words SET
  example_en_2 = 'It has been a long time — I barely recognized you!',
  example_ko_2 = '오래됐어요 — 거의 못 알아볼 뻔했어요!',
  example_en_3 = 'Long time no see — how has life been treating you?',
  example_ko_3 = '오랜만이에요 — 어떻게 지내셨어요?',
  example_en_4 = 'After a long time apart, the reunion felt very emotional.',
  example_ko_4 = '오랫동안 떨어져 있다가 만나니 재회가 매우 감동적이었어요.',
  example_en_5 = 'It feels like a long time since we last shared a meal together.',
  example_ko_5 = '마지막으로 함께 식사한 지 정말 오래된 것 같아요.'
WHERE id = 'w_greeting_A2_13';

UPDATE words SET
  example_en_2 = 'I am very pleased to finally speak with you in person.',
  example_ko_2 = '드디어 직접 말씀 나눌 수 있어 정말 기뻐요.',
  example_en_3 = 'She was pleased that the introduction went so smoothly.',
  example_ko_3 = '소개가 이렇게 순조롭게 진행되어 그녀는 기뻤어요.',
  example_en_4 = 'He was pleased to learn they shared the same hometown.',
  example_ko_4 = '고향이 같다는 것을 알게 되어 그는 기뻤어요.',
  example_en_5 = 'Pleased to make your acquaintance — I have heard great things.',
  example_ko_5 = '알게 되어서 기뻐요 — 좋은 이야기를 많이 들었어요.'
WHERE id = 'w_greeting_A2_14';

UPDATE words SET
  example_en_2 = 'It is customary to shake hands when meeting a client for the first time.',
  example_ko_2 = '고객을 처음 만날 때 악수하는 것이 관례예요.',
  example_en_3 = 'They shook hands and agreed to stay in touch.',
  example_ko_3 = '그들은 악수를 하고 계속 연락하기로 했어요.',
  example_en_4 = 'The two leaders shook hands in front of the cameras.',
  example_ko_4 = '두 지도자는 카메라 앞에서 악수를 나눴어요.',
  example_en_5 = 'She shook hands with everyone on the panel before sitting down.',
  example_ko_5 = '앉기 전에 그녀는 패널 모든 분들과 악수를 나눴어요.'
WHERE id = 'w_greeting_A2_15';

UPDATE words SET
  example_en_2 = 'See you at the workshop next Thursday!',
  example_ko_2 = '다음 주 목요일 워크숍에서 봐요!',
  example_en_3 = '"See you around!" she said as she headed toward the elevator.',
  example_ko_3 = '"나중에 봐요!" 그녀가 엘리베이터 쪽으로 향하며 말했어요.',
  example_en_4 = 'See you on Monday — have a great weekend!',
  example_ko_4 = '월요일에 봐요 — 주말 잘 보내세요!',
  example_en_5 = 'She waved and said see you to the entire team.',
  example_ko_5 = '그녀는 팀 전체에게 손을 흔들며 나중에 봐요라고 했어요.'
WHERE id = 'w_greeting_A2_16';

UPDATE words SET
  example_en_2 = '"Take care of yourself — it was wonderful seeing you," she said.',
  example_ko_2 = '"몸 조심하세요 — 만나서 너무 좋았어요"라고 그녀가 말했어요.',
  example_en_3 = 'He patted his friend on the shoulder and said take care.',
  example_ko_3 = '그는 친구의 어깨를 두드리며 잘 지내라고 했어요.',
  example_en_4 = 'Take care on the road — the weather looks unpredictable.',
  example_ko_4 = '길에서 조심하세요 — 날씨가 예측 불가능해 보여요.',
  example_en_5 = 'She ended every call with "take care and talk soon."',
  example_ko_5 = '그녀는 항상 "잘 지내요, 곧 또 얘기해요"로 통화를 마쳤어요.'
WHERE id = 'w_greeting_A2_17';

UPDATE words SET
  example_en_2 = 'She comes from a family of teachers.',
  example_ko_2 = '그녀는 교사 집안 출신이에요.',
  example_en_3 = 'He comes from a small coastal town in the south.',
  example_ko_3 = '그는 남쪽의 작은 해안 마을 출신이에요.',
  example_en_4 = 'Where do you come from? Your accent sounds interesting.',
  example_ko_4 = '어디 출신이세요? 억양이 흥미롭게 들려요.',
  example_en_5 = 'The best ideas come from diverse teams and backgrounds.',
  example_ko_5 = '가장 좋은 아이디어는 다양한 팀과 배경에서 나와요.'
WHERE id = 'w_greeting_A2_18';

UPDATE words SET
  example_en_2 = 'I work as a translator for an international firm.',
  example_ko_2 = '저는 국제 회사에서 번역가로 일해요.',
  example_en_3 = 'She works as a nurse at the city hospital.',
  example_ko_3 = '그녀는 시립 병원에서 간호사로 일해요.',
  example_en_4 = 'What do you work as? I am curious about your career.',
  example_ko_4 = '어떤 일을 하세요? 커리어가 궁금해요.',
  example_en_5 = 'He works as a freelance photographer on the weekends.',
  example_ko_5 = '그는 주말에 프리랜서 사진작가로 일해요.'
WHERE id = 'w_greeting_A2_19';

UPDATE words SET
  example_en_2 = 'She has lived in three different countries over the past decade.',
  example_ko_2 = '그녀는 지난 10년 동안 세 나라에서 살았어요.',
  example_en_3 = 'He lives in a quiet neighborhood on the edge of the city.',
  example_ko_3 = '그는 도시 외곽의 조용한 동네에 살아요.',
  example_en_4 = 'Do you live near here? I thought I recognized you from the subway.',
  example_ko_4 = '이 근처에 사세요? 지하철에서 본 것 같아서요.',
  example_en_5 = 'They live in the same apartment complex — what a coincidence!',
  example_ko_5 = '같은 아파트 단지에 산다니 — 정말 우연이네요!'
WHERE id = 'w_greeting_A2_20';

UPDATE words SET
  example_en_2 = 'It is a great pleasure to be here among such talented people.',
  example_ko_2 = '이렇게 재능 있는 분들 사이에 있게 되어 정말 기뻐요.',
  example_en_3 = 'The pleasure of meeting new people never gets old.',
  example_ko_3 = '새로운 사람을 만나는 기쁨은 절대 식지 않아요.',
  example_en_4 = 'It was my pleasure to welcome the international delegates.',
  example_ko_4 = '국제 대표단을 환영하게 된 것은 제게 영광이었어요.',
  example_en_5 = 'The pleasure is entirely mine — thank you for having me.',
  example_ko_5 = '저야말로 영광이에요 — 초대해 주셔서 감사해요.'
WHERE id = 'w_greeting_A2_21';

UPDATE words SET
  example_en_2 = 'She smiled and said, "The feeling is mutual — glad you came."',
  example_ko_2 = '그녀는 미소 지으며 "저도 마찬가지예요 — 와 주셔서 기뻐요"라고 했어요.',
  example_en_3 = 'I enjoyed our chat too — mutual appreciation makes everything easier.',
  example_ko_3 = '저도 이야기 나눠서 좋았어요 — 서로 고마워하면 모든 것이 더 쉬워져요.',
  example_en_4 = 'The respect is mutual, and that is why the partnership works well.',
  example_ko_4 = '존중이 서로 같아서 그 파트너십이 잘 이루어지는 거예요.',
  example_en_5 = '"Likewise!" she said with a laugh when he complimented her work.',
  example_ko_5 = '그가 그녀의 작업을 칭찬하자 "저도요!"라고 웃으며 말했어요.'
WHERE id = 'w_greeting_A2_22';

UPDATE words SET
  example_en_2 = 'It is great to see you again — how have things been?',
  example_ko_2 = '다시 만나니 정말 좋아요 — 어떻게 지내셨어요?',
  example_en_3 = 'She visited the same coffee shop again and ran into an old friend.',
  example_ko_3 = '그녀는 같은 카페를 다시 방문했다가 오래된 친구를 만났어요.',
  example_en_4 = 'He stopped by again to say a final farewell.',
  example_ko_4 = '그는 마지막 작별 인사를 하러 다시 들렀어요.',
  example_en_5 = 'Again, it was a pleasure — looking forward to the next time.',
  example_ko_5 = '다시 한번 말씀드리지만, 즐거웠어요 — 다음에 또 뵐게요.'
WHERE id = 'w_greeting_A2_23';

UPDATE words SET
  example_en_2 = 'She asked if there were any good restaurants around here.',
  example_ko_2 = '이 근처에 괜찮은 식당이 있냐고 그녀가 물었어요.',
  example_en_3 = 'He looked around the room and spotted a familiar face.',
  example_ko_3 = '그는 방을 둘러보다 낯익은 얼굴을 발견했어요.',
  example_en_4 = 'There is a great networking community around this area.',
  example_ko_4 = '이 지역 주변에 훌륭한 네트워킹 커뮤니티가 있어요.',
  example_en_5 = 'I have been living around here for about three years now.',
  example_ko_5 = '저는 이 근처에서 약 3년 동안 살고 있어요.'
WHERE id = 'w_greeting_A2_24';

UPDATE words SET
  example_en_2 = 'It was kind of you to include me in the group introduction.',
  example_ko_2 = '그룹 소개에 저를 포함해 주시다니 친절하셨어요.',
  example_en_3 = 'She is the kind of person who makes everyone feel valued.',
  example_ko_3 = '그녀는 모든 사람이 소중하다고 느끼게 만드는 사람이에요.',
  example_en_4 = 'He was kind enough to show me around the building.',
  example_ko_4 = '그는 친절하게도 건물 내부를 안내해 줬어요.',
  example_en_5 = 'Your kind words made the whole introduction much more comfortable.',
  example_ko_5 = '친절한 말씀 덕분에 소개 자리가 훨씬 편안해졌어요.'
WHERE id = 'w_greeting_A2_25';

UPDATE words SET
  example_en_2 = 'The office has a very welcoming and open atmosphere.',
  example_ko_2 = '사무실 분위기가 매우 환영하는 느낌이고 개방적이에요.',
  example_en_3 = 'She bumped into a colleague in the office corridor.',
  example_ko_3 = '그녀는 사무실 복도에서 동료와 마주쳤어요.',
  example_en_4 = 'The office held a welcome gathering for new employees.',
  example_ko_4 = '사무실에서 신입 직원들을 위한 환영 모임을 열었어요.',
  example_en_5 = 'He kept a friendly photo on his office desk to spark conversations.',
  example_ko_5 = '그는 대화의 계기를 만들기 위해 사무실 책상에 친근한 사진을 두었어요.'
WHERE id = 'w_greeting_A2_26';

UPDATE words SET
  example_en_2 = 'She introduced her colleague to the visiting client.',
  example_ko_2 = '그녀는 방문 고객에게 동료를 소개했어요.',
  example_en_3 = 'Colleagues who greet each other warmly build stronger teams.',
  example_ko_3 = '서로 따뜻하게 인사하는 동료들은 더 강한 팀을 형성해요.',
  example_en_4 = 'He stopped to say good morning to every colleague on his floor.',
  example_ko_4 = '그는 층에 있는 모든 동료에게 좋은 아침이에요라고 인사했어요.',
  example_en_5 = 'A new colleague joined the team and was welcomed warmly.',
  example_ko_5 = '새 동료가 팀에 합류했고 따뜻하게 환영받았어요.'
WHERE id = 'w_greeting_A2_27';

UPDATE words SET
  example_en_2 = 'She introduced herself to her neighbor after moving in.',
  example_ko_2 = '이사 후 그녀는 이웃에게 자기소개를 했어요.',
  example_en_3 = 'Knowing your neighbor''s name makes the community feel safer.',
  example_ko_3 = '이웃의 이름을 알면 커뮤니티가 더 안전하게 느껴져요.',
  example_en_4 = 'The neighbor stopped by to welcome the new family on the street.',
  example_ko_4 = '이웃이 새로 이사 온 가족을 환영하러 들렀어요.',
  example_en_5 = 'He waved to his neighbor across the fence every morning.',
  example_ko_5 = '그는 매일 아침 울타리 너머 이웃에게 손을 흔들었어요.'
WHERE id = 'w_greeting_A2_28';

UPDATE words SET
  example_en_2 = 'We sat in the same row at the conference — what a coincidence!',
  example_ko_2 = '컨퍼런스에서 같은 줄에 앉았네요 — 정말 우연이에요!',
  example_en_3 = 'He realized they had the same job title — a funny coincidence.',
  example_ko_3 = '직함이 같다는 것을 알게 됐어요 — 재미있는 우연이었어요.',
  example_en_4 = 'We ended up in the same elevator — quite a same moment!',
  example_ko_4 = '같은 엘리베이터를 타게 됐어요 — 정말 같은 상황이네요!',
  example_en_5 = 'Finding the same interest so quickly made the introduction easy.',
  example_ko_5 = '공통 관심사를 그렇게 빨리 찾아서 소개가 쉬워졌어요.'
WHERE id = 'w_greeting_A2_29';

UPDATE words SET
  example_en_2 = 'She prefers to be called by her nickname rather than her full name.',
  example_ko_2 = '그녀는 풀네임보다 닉네임으로 불리는 것을 선호해요.',
  example_en_3 = '"You can call me Jay — it is much easier," he said.',
  example_ko_3 = '"제이라고 불러 주세요 — 훨씬 편해요"라고 그가 말했어요.',
  example_en_4 = 'Please call me if you need any help settling in.',
  example_ko_4 = '적응하는 데 도움이 필요하면 언제든지 연락 주세요.',
  example_en_5 = 'She asked to be called by her first name to keep things friendly.',
  example_ko_5 = '그녀는 친근한 분위기를 위해 이름으로 불러달라고 했어요.'
WHERE id = 'w_greeting_A2_30';

UPDATE words SET
  example_en_2 = 'He asked her age to see if they had grown up in the same era.',
  example_ko_2 = '그는 같은 시대에 자랐는지 알아보려고 나이를 물었어요.',
  example_en_3 = 'Age is just a number — what matters is how you connect.',
  example_ko_3 = '나이는 그냥 숫자예요 — 어떻게 교감하느냐가 중요해요.',
  example_en_4 = 'They were surprised to learn they were the exact same age.',
  example_ko_4 = '나이가 정확히 같다는 것을 알고 놀랐어요.',
  example_en_5 = 'Regardless of age, a warm greeting is always appreciated.',
  example_ko_5 = '나이에 상관없이 따뜻한 인사는 항상 감사하게 받아들여져요.'
WHERE id = 'w_greeting_A2_31';

UPDATE words SET
  example_en_2 = 'Talking about hobbies is a great way to break the ice.',
  example_ko_2 = '취미에 대해 이야기하는 것은 분위기를 풀기에 좋은 방법이에요.',
  example_en_3 = 'She discovered her hobby for photography during the pandemic.',
  example_ko_3 = '그녀는 팬데믹 동안 사진 촬영이라는 취미를 발견했어요.',
  example_en_4 = 'Do you have any hobbies? I love hearing what people enjoy.',
  example_ko_4 = '취미가 있으세요? 사람들이 좋아하는 것을 듣는 걸 좋아해요.',
  example_en_5 = 'Shared hobbies often lead to the strongest friendships.',
  example_ko_5 = '공통 취미는 종종 가장 강한 우정으로 이어져요.'
WHERE id = 'w_greeting_A2_32';

UPDATE words SET
  example_en_2 = 'She joined the book club to meet like-minded people.',
  example_ko_2 = '그녀는 비슷한 생각을 가진 사람들을 만나려고 북클럽에 가입했어요.',
  example_en_3 = 'He was nervous when he joined the large networking group.',
  example_ko_3 = '규모가 큰 네트워킹 그룹에 합류할 때 그는 긴장됐어요.',
  example_en_4 = 'Please join us for a quick drink after the conference.',
  example_ko_4 = '컨퍼런스 후 간단한 음료 자리에 함께해 주세요.',
  example_en_5 = 'She was thrilled to join a team that valued open communication.',
  example_ko_5 = '열린 소통을 중시하는 팀에 합류하게 되어 그녀는 기뻤어요.'
WHERE id = 'w_greeting_A2_33';

UPDATE words SET
  example_en_2 = 'It has been a long journey but we have finally arrived.',
  example_ko_2 = '긴 여정이었지만 드디어 도착했어요.',
  example_en_3 = 'She has been wanting to meet the author for years.',
  example_ko_3 = '그녀는 수년간 그 작가를 만나고 싶었어요.',
  example_en_4 = 'He has been part of this team since the very beginning.',
  example_ko_4 = '그는 처음부터 이 팀의 일원이었어요.',
  example_en_5 = 'It has been a great experience getting to know everyone here.',
  example_ko_5 = '이곳 모든 분들과 알게 된 것이 정말 좋은 경험이었어요.'
WHERE id = 'w_greeting_A2_34';

UPDATE words SET
  example_en_2 = 'I was wondering if you would like to join us for coffee.',
  example_ko_2 = '저희와 함께 커피 한잔 하실 수 있을지 여쭤보고 싶었어요.',
  example_en_3 = 'She wondered how to start the conversation with a stranger.',
  example_ko_3 = '그녀는 낯선 사람과 어떻게 대화를 시작할지 궁금했어요.',
  example_en_4 = 'I wonder if we have crossed paths before — your face is familiar.',
  example_ko_4 = '전에 어디서 만난 적이 있는지 궁금해요 — 얼굴이 낯익어요.',
  example_en_5 = 'He wondered what the best way to greet his new boss would be.',
  example_ko_5 = '그는 새 상사에게 인사하는 가장 좋은 방법이 무엇인지 궁금했어요.'
WHERE id = 'w_greeting_A2_35';

-- B1 (35개)
UPDATE words SET
  example_en_2 = 'She is more than just a business acquaintance — they have become close.',
  example_ko_2 = '그녀는 단순한 비즈니스 지인 이상이에요 — 가까운 사이가 됐어요.',
  example_en_3 = 'He nodded politely at the acquaintance across the lobby.',
  example_ko_3 = '그는 로비 너머의 지인에게 정중하게 고개를 끄덕였어요.',
  example_en_4 = 'Building a wide network of acquaintances opens many doors.',
  example_ko_4 = '폭넓은 지인 네트워크를 쌓으면 많은 기회의 문이 열려요.',
  example_en_5 = 'They were acquaintances before becoming close collaborators.',
  example_ko_5 = '그들은 가까운 협력자가 되기 전에 지인 사이였어요.'
WHERE id = 'w_greeting_B1_01';

UPDATE words SET
  example_en_2 = 'The way you carry yourself creates the first impression.',
  example_ko_2 = '자신을 표현하는 방식이 첫인상을 만들어요.',
  example_en_3 = 'She left a lasting impression with her thoughtful introduction.',
  example_ko_3 = '그녀는 사려 깊은 소개로 오래 기억에 남는 인상을 남겼어요.',
  example_en_4 = 'His positive impression opened the door to further conversations.',
  example_ko_4 = '그의 긍정적인 인상이 더 많은 대화의 문을 열었어요.',
  example_en_5 = 'It is hard to shake a bad first impression once it is formed.',
  example_ko_5 = '한번 형성된 나쁜 첫인상은 바꾸기 어려워요.'
WHERE id = 'w_greeting_B1_02';

UPDATE words SET
  example_en_2 = 'She attended the networking session and exchanged dozens of cards.',
  example_ko_2 = '그녀는 네트워킹 세션에 참석해 수십 장의 명함을 교환했어요.',
  example_en_3 = 'Networking before a job search makes the process much smoother.',
  example_ko_3 = '구직 활동 전에 네트워킹을 하면 과정이 훨씬 순조로워요.',
  example_en_4 = 'His networking skills helped him find collaborators for his project.',
  example_ko_4 = '그의 네트워킹 능력이 프로젝트 협력자를 찾는 데 도움이 됐어요.',
  example_en_5 = 'Online networking has become as important as in-person events.',
  example_ko_5 = '온라인 네트워킹이 대면 행사만큼 중요해졌어요.'
WHERE id = 'w_greeting_B1_03';

UPDATE words SET
  example_en_2 = 'She greeted the elderly guest with courtesy and patience.',
  example_ko_2 = '그녀는 연로한 손님을 예의와 인내심으로 맞이했어요.',
  example_en_3 = 'Even under pressure, he maintained courtesy in every interaction.',
  example_ko_3 = '압박을 받는 상황에서도 그는 모든 상호작용에서 예의를 지켰어요.',
  example_en_4 = 'A simple act of courtesy can define how others see you.',
  example_ko_4 = '간단한 예의 있는 행동이 다른 사람들이 당신을 보는 방식을 결정할 수 있어요.',
  example_en_5 = 'She thanked him for his courtesy in making the introduction.',
  example_ko_5 = '소개해 주신 것에 대한 예의에 감사를 전했어요.'
WHERE id = 'w_greeting_B1_04';

UPDATE words SET
  example_en_2 = 'They built strong rapport through regular coffee chats.',
  example_ko_2 = '그들은 정기적인 커피 이야기를 통해 강한 유대감을 쌓았어요.',
  example_en_3 = 'Good rapport with your colleagues makes work more enjoyable.',
  example_ko_3 = '동료들과의 좋은 유대감은 업무를 더 즐겁게 만들어요.',
  example_en_4 = 'She immediately felt a rapport with the new project partner.',
  example_ko_4 = '그녀는 새 프로젝트 파트너와 즉각적으로 유대감을 느꼈어요.',
  example_en_5 = 'Establishing rapport early makes negotiations far less stressful.',
  example_ko_5 = '초기에 유대감을 형성하면 협상이 훨씬 덜 스트레스 받아요.'
WHERE id = 'w_greeting_B1_05';

UPDATE words SET
  example_en_2 = 'The workshop used an icebreaker to help strangers connect quickly.',
  example_ko_2 = '워크숍에서는 낯선 사람들이 빠르게 교류할 수 있도록 아이스브레이커를 사용했어요.',
  example_en_3 = 'She thought of a fun icebreaker question to open the team meeting.',
  example_ko_3 = '그녀는 팀 회의를 열기 위한 재미있는 아이스브레이커 질문을 생각했어요.',
  example_en_4 = 'A good icebreaker can transform a tense atmosphere in minutes.',
  example_ko_4 = '좋은 아이스브레이커는 몇 분 만에 긴장된 분위기를 바꿀 수 있어요.',
  example_en_5 = 'The icebreaker game got everyone laughing and talking immediately.',
  example_ko_5 = '아이스브레이커 게임으로 모두가 바로 웃고 이야기하기 시작했어요.'
WHERE id = 'w_greeting_B1_06';

UPDATE words SET
  example_en_2 = 'She paid her colleague a sincere compliment on the presentation.',
  example_ko_2 = '그녀는 발표에 대해 동료에게 진심 어린 칭찬을 했어요.',
  example_en_3 = 'A well-timed compliment can ease any awkward first meeting.',
  example_ko_3 = '적절한 타이밍의 칭찬은 어색한 첫 만남을 완화할 수 있어요.',
  example_en_4 = 'He blushed at the unexpected compliment from the senior manager.',
  example_ko_4 = '선임 매니저의 예상치 못한 칭찬에 그는 얼굴을 붉혔어요.',
  example_en_5 = 'Offering a genuine compliment is one of the best social skills.',
  example_ko_5 = '진심 어린 칭찬을 건네는 것은 최고의 사회적 기술 중 하나예요.'
WHERE id = 'w_greeting_B1_07';

UPDATE words SET
  example_en_2 = 'The company hosted a reception to introduce new hires to leadership.',
  example_ko_2 = '회사는 신입 직원들을 경영진에게 소개하기 위해 리셉션을 열었어요.',
  example_en_3 = 'The reception was elegant and the introductions were warm.',
  example_ko_3 = '리셉션은 우아했고 소개는 따뜻했어요.',
  example_en_4 = 'She greeted each guest at the reception with their name and title.',
  example_ko_4 = '그녀는 리셉션에서 각 손님을 이름과 직함으로 맞이했어요.',
  example_en_5 = 'The hotel reception desk staff were exceptionally welcoming.',
  example_ko_5 = '호텔 프런트 직원들이 특별히 환영해 줬어요.'
WHERE id = 'w_greeting_B1_08';

UPDATE words SET
  example_en_2 = 'Their hospitality made every guest feel like family.',
  example_ko_2 = '그들의 환대는 모든 손님을 가족처럼 느끼게 했어요.',
  example_en_3 = 'She was moved by the genuine hospitality of her hosts.',
  example_ko_3 = '주최자들의 진심 어린 환대에 그녀는 감동받았어요.',
  example_en_4 = 'Hospitality goes beyond a warm greeting — it is about making people feel seen.',
  example_ko_4 = '환대는 따뜻한 인사를 넘어 사람들이 인정받는다고 느끼게 하는 거예요.',
  example_en_5 = 'The team showed exceptional hospitality to the visiting partners.',
  example_ko_5 = '팀은 방문 파트너들에게 특별한 환대를 보여줬어요.'
WHERE id = 'w_greeting_B1_09';

UPDATE words SET
  example_en_2 = 'They realized they had two mutual friends from university.',
  example_ko_2 = '그들은 대학교 때부터 공통 친구가 두 명 있다는 것을 알게 됐어요.',
  example_en_3 = 'Mutual respect between colleagues leads to a healthier workplace.',
  example_ko_3 = '동료 간의 상호 존중은 더 건강한 직장 환경으로 이어져요.',
  example_en_4 = 'Their mutual admiration was obvious from the way they spoke.',
  example_ko_4 = '그들이 서로를 얼마나 존경하는지는 말하는 방식에서 분명히 드러났어요.',
  example_en_5 = 'The project succeeded because of their mutual trust and openness.',
  example_ko_5 = '그 프로젝트는 상호 신뢰와 개방성 덕분에 성공했어요.'
WHERE id = 'w_greeting_B1_10';

UPDATE words SET
  example_en_2 = 'He approached the speaker after the talk to introduce himself.',
  example_ko_2 = '그는 강연 후 연사에게 다가가 자기소개를 했어요.',
  example_en_3 = 'She approached the conversation with genuine curiosity.',
  example_ko_3 = '그녀는 진심 어린 호기심으로 대화에 접근했어요.',
  example_en_4 = 'Do not hesitate to approach someone — most people love to chat.',
  example_ko_4 = '누군가에게 다가가는 것을 주저하지 마세요 — 대부분의 사람들은 이야기 나누기를 좋아해요.',
  example_en_5 = 'She approached networking events with an open mind and warm smile.',
  example_ko_5 = '그녀는 열린 마음과 따뜻한 미소로 네트워킹 행사에 다가갔어요.'
WHERE id = 'w_greeting_B1_11';

UPDATE words SET
  example_en_2 = 'Their conversation flowed naturally from the moment they met.',
  example_ko_2 = '만난 순간부터 그들의 대화는 자연스럽게 이어졌어요.',
  example_en_3 = 'She started a conversation with a simple compliment on his work.',
  example_ko_3 = '그녀는 그의 작업에 대한 간단한 칭찬으로 대화를 시작했어요.',
  example_en_4 = 'Conversation starters like "Where are you from?" work everywhere.',
  example_ko_4 = '"어디 출신이세요?"와 같은 대화 시작 멘트는 어디서나 효과적이에요.',
  example_en_5 = 'He kept the conversation going by asking thoughtful questions.',
  example_ko_5 = '그는 사려 깊은 질문을 통해 대화를 이어갔어요.'
WHERE id = 'w_greeting_B1_12';

UPDATE words SET
  example_en_2 = 'They exchanged contact details before leaving the event.',
  example_ko_2 = '그들은 행사를 떠나기 전에 연락처를 교환했어요.',
  example_en_3 = 'She exchanged a few words with the keynote speaker afterward.',
  example_ko_3 = '그녀는 이후에 기조 연설자와 몇 마디를 나눴어요.',
  example_en_4 = 'Exchanging pleasantries is an important part of social bonding.',
  example_ko_4 = '덕담을 나누는 것은 사회적 유대의 중요한 부분이에요.',
  example_en_5 = 'They exchanged warm greetings in their own languages.',
  example_ko_5 = '그들은 서로의 언어로 따뜻한 인사를 나눴어요.'
WHERE id = 'w_greeting_B1_13';

UPDATE words SET
  example_en_2 = 'She shared her background openly to put others at ease.',
  example_ko_2 = '그녀는 다른 사람들이 편안함을 느끼도록 배경을 솔직하게 공유했어요.',
  example_en_3 = 'His diverse background made him a fascinating conversationalist.',
  example_ko_3 = '그의 다양한 배경이 그를 매력적인 대화 상대로 만들었어요.',
  example_en_4 = 'Understanding someone''s background helps you connect more deeply.',
  example_ko_4 = '누군가의 배경을 이해하면 더 깊이 연결될 수 있어요.',
  example_en_5 = 'She described her background briefly but in an engaging way.',
  example_ko_5 = '그녀는 자신의 배경을 간략하지만 매력적인 방식으로 설명했어요.'
WHERE id = 'w_greeting_B1_14';

UPDATE words SET
  example_en_2 = 'They reconnected at a conference ten years after graduation.',
  example_ko_2 = '그들은 졸업 10년 후 컨퍼런스에서 다시 연결됐어요.',
  example_en_3 = 'She reached out to reconnect after seeing his post online.',
  example_ko_3 = '그녀는 그의 온라인 게시물을 보고 다시 연락을 취했어요.',
  example_en_4 = 'Reconnecting with old colleagues often leads to new opportunities.',
  example_ko_4 = '예전 동료들과 다시 연락을 취하면 새로운 기회로 이어지곤 해요.',
  example_en_5 = 'The reunion dinner gave everyone a chance to reconnect warmly.',
  example_ko_5 = '재회 만찬이 모두에게 따뜻하게 다시 연결될 기회를 줬어요.'
WHERE id = 'w_greeting_B1_15';

UPDATE words SET
  example_en_2 = 'He used a welcoming gesture to invite her into the conversation.',
  example_ko_2 = '그는 환영하는 제스처로 그녀를 대화에 초대했어요.',
  example_en_3 = 'In some cultures, a bow is the standard greeting gesture.',
  example_ko_3 = '일부 문화에서는 절이 표준 인사 제스처예요.',
  example_en_4 = 'She made a welcoming gesture toward the empty chair beside her.',
  example_ko_4 = '그녀는 옆의 빈 의자를 향해 환영의 제스처를 취했어요.',
  example_en_5 = 'His open-armed gesture made everyone feel instantly included.',
  example_ko_5 = '그의 두 팔을 벌린 제스처로 모두가 즉시 포함된 느낌이 들었어요.'
WHERE id = 'w_greeting_B1_16';

UPDATE words SET
  example_en_2 = 'They formed an instant bond over a shared love of music.',
  example_ko_2 = '그들은 음악에 대한 공통된 사랑으로 즉각적인 유대를 형성했어요.',
  example_en_3 = 'The bond formed through that first meeting lasted for decades.',
  example_ko_3 = '그 첫 만남에서 형성된 유대는 수십 년 동안 지속됐어요.',
  example_en_4 = 'Greeting someone by name every day helps build a stronger bond.',
  example_ko_4 = '매일 이름으로 인사하면 더 강한 유대를 형성하는 데 도움이 돼요.',
  example_en_5 = 'She treasured the bond that formed from that unexpected introduction.',
  example_ko_5 = '그 뜻밖의 소개에서 형성된 유대를 그녀는 소중히 여겼어요.'
WHERE id = 'w_greeting_B1_17';

UPDATE words SET
  example_en_2 = 'There was instant recognition when she heard his distinctive voice.',
  example_ko_2 = '그의 독특한 목소리를 듣자마자 즉각적인 알아봄이 있었어요.',
  example_en_3 = 'He smiled at the warm recognition in her eyes.',
  example_ko_3 = '그녀의 눈빛에서 따뜻한 알아봄을 보며 그는 미소를 지었어요.',
  example_en_4 = 'Recognition of a familiar face brought great relief at the event.',
  example_ko_4 = '행사에서 낯익은 얼굴을 알아보자 큰 안도감이 들었어요.',
  example_en_5 = 'Public recognition of employees boosts team morale significantly.',
  example_ko_5 = '직원에 대한 공개적인 인정은 팀의 사기를 크게 높여요.'
WHERE id = 'w_greeting_B1_18';

UPDATE words SET
  example_en_2 = 'A professional relationship built on respect can last a lifetime.',
  example_ko_2 = '존중을 바탕으로 한 직업적 관계는 평생 지속될 수 있어요.',
  example_en_3 = 'She valued the relationship they built through honest conversation.',
  example_ko_3 = '그녀는 솔직한 대화를 통해 쌓은 관계를 소중히 여겼어요.',
  example_en_4 = 'Good greetings are the foundation of any strong relationship.',
  example_ko_4 = '좋은 인사는 모든 강한 관계의 기반이에요.',
  example_en_5 = 'He worked hard to maintain the relationship beyond the first meeting.',
  example_ko_5 = '그는 첫 만남을 넘어 관계를 유지하기 위해 열심히 노력했어요.'
WHERE id = 'w_greeting_B1_19';

UPDATE words SET
  example_en_2 = 'She introduced her colleague from the sales team to the visitors.',
  example_ko_2 = '그녀는 영업팀 동료를 방문객들에게 소개했어요.',
  example_en_3 = 'The two colleagues greeted each other with a warm handshake.',
  example_ko_3 = '두 동료는 따뜻한 악수로 서로 인사했어요.',
  example_en_4 = 'He always remembers to introduce his colleague in group settings.',
  example_ko_4 = '그는 그룹 자리에서 동료를 소개하는 것을 항상 기억해요.',
  example_en_5 = 'A new colleague can feel lonely — a warm greeting goes a long way.',
  example_ko_5 = '새 동료는 외로울 수 있어요 — 따뜻한 인사가 큰 도움이 돼요.'
WHERE id = 'w_greeting_B1_20';

UPDATE words SET
  example_en_2 = 'They immediately found common ground in their shared interest in travel.',
  example_ko_2 = '여행에 대한 공통 관심사에서 즉시 공통점을 찾았어요.',
  example_en_3 = 'Finding common ground early makes any conversation more comfortable.',
  example_ko_3 = '초기에 공통점을 찾으면 어떤 대화도 더 편안해져요.',
  example_en_4 = 'Common ground between two very different people is always surprising.',
  example_ko_4 = '매우 다른 두 사람 사이의 공통점은 항상 놀라워요.',
  example_en_5 = 'She searched for common ground to ease the tension in the room.',
  example_ko_5 = '그녀는 방 안의 긴장감을 완화하기 위해 공통점을 찾았어요.'
WHERE id = 'w_greeting_B1_21';

UPDATE words SET
  example_en_2 = 'The annual reunion brought together people from across the country.',
  example_ko_2 = '연례 동창회에 전국에서 사람들이 모였어요.',
  example_en_3 = 'She cried at the unexpected reunion with her childhood friend.',
  example_ko_3 = '어린 시절 친구와의 예상치 못한 재회에 그녀는 눈물을 흘렸어요.',
  example_en_4 = 'The reunion dinner was filled with laughter and warm embraces.',
  example_ko_4 = '재회 만찬은 웃음과 따뜻한 포옹으로 가득했어요.',
  example_en_5 = 'A warm greeting at a reunion sets the tone for the whole event.',
  example_ko_5 = '재회에서의 따뜻한 인사는 전체 행사의 분위기를 결정해요.'
WHERE id = 'w_greeting_B1_22';

UPDATE words SET
  example_en_2 = 'Her outgoing nature meant she never had trouble starting conversations.',
  example_ko_2 = '그녀의 외향적인 성격 덕분에 대화 시작에 어려움이 없었어요.',
  example_en_3 = 'He became more outgoing after joining the public speaking club.',
  example_ko_3 = '그는 공개 연설 클럽에 가입한 후 더 외향적이 됐어요.',
  example_en_4 = 'Being outgoing does not mean you have to be loud — just warm.',
  example_ko_4 = '외향적이라는 것이 시끄럽다는 의미는 아니에요 — 그냥 따뜻하면 돼요.',
  example_en_5 = 'Her outgoing personality made networking feel effortless and fun.',
  example_ko_5 = '그녀의 외향적인 성격 덕분에 네트워킹이 쉽고 즐겁게 느껴졌어요.'
WHERE id = 'w_greeting_B1_23';

UPDATE words SET
  example_en_2 = 'He invited her to use his first name after the third meeting.',
  example_ko_2 = '세 번째 만남 이후 그는 그녀에게 이름을 부르도록 권했어요.',
  example_en_3 = 'In many Western offices, people are on a first-name basis from day one.',
  example_ko_3 = '많은 서양 사무실에서 사람들은 첫날부터 이름으로 부르는 사이예요.',
  example_en_4 = 'She asked if she could use his first name to make things friendlier.',
  example_ko_4 = '더 친근하게 지내기 위해 이름으로 불러도 되는지 그녀가 물었어요.',
  example_en_5 = 'Remembering a colleague''s first name shows you value the relationship.',
  example_ko_5 = '동료의 이름을 기억하는 것은 관계를 소중히 여긴다는 표시예요.'
WHERE id = 'w_greeting_B1_24';

UPDATE words SET
  example_en_2 = 'The warm atmosphere at the event encouraged open conversation.',
  example_ko_2 = '행사의 따뜻한 분위기가 열린 대화를 장려했어요.',
  example_en_3 = 'She created a welcoming atmosphere with soft lighting and music.',
  example_ko_3 = '그녀는 부드러운 조명과 음악으로 환영하는 분위기를 만들었어요.',
  example_en_4 = 'The atmosphere at the conference was both professional and friendly.',
  example_ko_4 = '컨퍼런스 분위기는 전문적이면서도 친근했어요.',
  example_en_5 = 'A positive atmosphere starts with how people greet each other.',
  example_ko_5 = '긍정적인 분위기는 사람들이 서로 인사하는 방식에서 시작돼요.'
WHERE id = 'w_greeting_B1_25';

UPDATE words SET
  example_en_2 = 'He gave a genuine compliment before asking for advice.',
  example_ko_2 = '조언을 구하기 전에 그는 진심 어린 칭찬을 건넸어요.',
  example_en_3 = 'People can tell the difference between genuine and forced enthusiasm.',
  example_ko_3 = '사람들은 진심과 억지 열정을 구분할 수 있어요.',
  example_en_4 = 'Her genuine curiosity about others made her a great conversationalist.',
  example_ko_4 = '다른 사람들에 대한 진심 어린 호기심이 그녀를 훌륭한 대화 상대로 만들었어요.',
  example_en_5 = 'Genuine warmth is what separates a good greeting from a great one.',
  example_ko_5 = '진심 어린 따뜻함이 좋은 인사와 훌륭한 인사를 구분 짓는 것이에요.'
WHERE id = 'w_greeting_B1_26';

UPDATE words SET
  example_en_2 = 'She was respectful of cultural differences in greeting styles.',
  example_ko_2 = '그녀는 인사 방식의 문화적 차이를 존중했어요.',
  example_en_3 = 'He was respectful and attentive throughout the whole introduction.',
  example_ko_3 = '그는 소개 내내 존중하는 태도로 주의를 기울였어요.',
  example_en_4 = 'Being respectful of someone''s time is a form of greeting too.',
  example_ko_4 = '누군가의 시간을 존중하는 것도 일종의 인사예요.',
  example_en_5 = 'She trained herself to always be respectful, even in difficult moments.',
  example_ko_5 = '그녀는 어려운 순간에도 항상 존중하는 태도를 유지하도록 훈련했어요.'
WHERE id = 'w_greeting_B1_27';

UPDATE words SET
  example_en_2 = 'His warmth was evident even in the way he said hello.',
  example_ko_2 = '그의 따뜻함은 인사하는 방식에서도 분명히 드러났어요.',
  example_en_3 = 'She wrapped the whole event in warmth and hospitality.',
  example_ko_3 = '그녀는 행사 전체를 따뜻함과 환대로 감쌌어요.',
  example_en_4 = 'Warmth in a greeting is more memorable than any formal title.',
  example_ko_4 = '인사에서의 따뜻함은 어떤 공식적인 직함보다 기억에 오래 남아요.',
  example_en_5 = 'The warmth she radiated put even the shyest guests at ease.',
  example_ko_5 = '그녀가 발산하는 따뜻함으로 가장 수줍은 손님도 편안해졌어요.'
WHERE id = 'w_greeting_B1_28';

UPDATE words SET
  example_en_2 = 'He mentioned that they had worked in the same industry before.',
  example_ko_2 = '그는 전에 같은 업계에서 일한 적이 있다고 언급했어요.',
  example_en_3 = 'She mentioned in passing that she knew his former professor.',
  example_ko_3 = '그녀는 지나가듯 그의 전 교수를 안다고 언급했어요.',
  example_en_4 = 'He mentioned the shared connection as a natural conversation opener.',
  example_ko_4 = '그는 공통 연결고리를 자연스러운 대화 오프너로 언급했어요.',
  example_en_5 = 'She mentioned her interest in the same topic to break the ice.',
  example_ko_5 = '그녀는 분위기를 풀기 위해 같은 주제에 대한 관심을 언급했어요.'
WHERE id = 'w_greeting_B1_29';

UPDATE words SET
  example_en_2 = 'On this occasion, allow me to say a few words of welcome.',
  example_ko_2 = '이 자리를 빌려 환영의 말씀 몇 마디 드릴게요.',
  example_en_3 = 'She dressed formally for the occasion and greeted guests with grace.',
  example_ko_3 = '그녀는 행사에 맞게 정장을 입고 우아하게 손님들을 맞이했어요.',
  example_en_4 = 'Each occasion calls for a different style of greeting.',
  example_ko_4 = '각 상황은 다른 인사 방식을 요구해요.',
  example_en_5 = 'The occasion was informal, so she kept her greeting warm and brief.',
  example_ko_5 = '자리가 비공식적이어서 그녀는 인사를 따뜻하고 간결하게 유지했어요.'
WHERE id = 'w_greeting_B1_30';

UPDATE words SET
  example_en_2 = 'She transitioned into the tech industry after years in education.',
  example_ko_2 = '그녀는 교육 분야에서 수년 일한 후 기술 업계로 전환했어요.',
  example_en_3 = 'They bonded over their shared experience in the same industry.',
  example_ko_3 = '그들은 같은 업계에서의 공통 경험으로 유대를 쌓았어요.',
  example_en_4 = 'Attending industry events is a great way to expand your network.',
  example_ko_4 = '업계 행사에 참석하는 것은 네트워크를 확장하기에 좋은 방법이에요.',
  example_en_5 = 'She introduced herself as a newcomer to the healthcare industry.',
  example_ko_5 = '그녀는 의료 업계의 신참이라고 자기소개를 했어요.'
WHERE id = 'w_greeting_B1_31';

UPDATE words SET
  example_en_2 = 'They exchanged contact information after the networking dinner.',
  example_ko_2 = '네트워킹 만찬 후 그들은 연락처를 교환했어요.',
  example_en_3 = 'She kept in contact with everyone she met at the conference.',
  example_ko_3 = '그녀는 컨퍼런스에서 만난 모든 사람과 연락을 유지했어요.',
  example_en_4 = 'Staying in contact after a first meeting is as important as the meeting itself.',
  example_ko_4 = '첫 만남 후 연락을 유지하는 것은 만남 자체만큼 중요해요.',
  example_en_5 = 'He stored the contact information in his phone right after the event.',
  example_ko_5 = '그는 행사 직후 연락처를 바로 전화기에 저장했어요.'
WHERE id = 'w_greeting_B1_32';

UPDATE words SET
  example_en_2 = 'She followed up with a thank-you note after the introductory meeting.',
  example_ko_2 = '소개 미팅 후 그녀는 감사 메모로 후속 연락을 했어요.',
  example_en_3 = 'He always follows up within 24 hours of a first meeting.',
  example_ko_3 = '그는 첫 만남 후 24시간 이내에 항상 후속 연락을 해요.',
  example_en_4 = 'Following up shows that you valued the conversation and the person.',
  example_ko_4 = '후속 연락은 대화와 상대방을 소중히 여긴다는 것을 보여줘요.',
  example_en_5 = 'She sent a brief follow-up email mentioning what she enjoyed discussing.',
  example_ko_5 = '그녀는 나눈 대화에서 즐거웠던 내용을 언급하는 짧은 후속 이메일을 보냈어요.'
WHERE id = 'w_greeting_B1_33';

UPDATE words SET
  example_en_2 = 'The way she introduced herself was truly memorable.',
  example_ko_2 = '그녀가 자기소개를 하는 방식은 정말 기억에 남았어요.',
  example_en_3 = 'He always tries to say something memorable at first meetings.',
  example_ko_3 = '그는 항상 첫 만남에서 기억에 남는 말을 하려고 해요.',
  example_en_4 = 'The memorable handshake at the summit was replayed in the media.',
  example_ko_4 = '정상회담에서의 기억에 남는 악수가 미디어에서 반복 재생됐어요.',
  example_en_5 = 'She aimed to be memorable without being overwhelming.',
  example_ko_5 = '그녀는 부담스럽지 않으면서도 기억에 남으려고 노력했어요.'
WHERE id = 'w_greeting_B1_34';

UPDATE words SET
  example_en_2 = 'A sincere thank-you can strengthen any professional relationship.',
  example_ko_2 = '진심 어린 감사는 어떤 직업적 관계도 강화할 수 있어요.',
  example_en_3 = 'She made a sincere effort to remember each person she met.',
  example_ko_3 = '그녀는 만난 각 사람을 기억하기 위해 진심으로 노력했어요.',
  example_en_4 = 'His sincere apology for the mix-up smoothed over any awkwardness.',
  example_ko_4 = '혼란에 대한 그의 진심 어린 사과가 어색함을 해소했어요.',
  example_en_5 = 'Being sincere in your greetings sets you apart from the crowd.',
  example_ko_5 = '인사에서 진심을 담으면 다른 사람들과 차별화돼요.'
WHERE id = 'w_greeting_B1_35';
