-- ============================================================
-- EngCat — Backfill bundle (pending content)
-- 한번에 Supabase SQL Editor 에 paste & Run 하면 됩니다.
-- 모두 멱등(idempotent) — 재실행 안전.
--
-- 포함:
--   1) migration-5-examples       (ALTER TABLE … IF NOT EXISTS)
--   2) content-examples-all       (콜로 460 + 이디엄 345 + 뉘앙스 299 UPDATE)
--   3) words-emotion-examples     (emotion 단어 210 UPDATE)
--   4) words-greeting-v2          (greeting 단어 210 UPDATE + 150 INSERT/UPSERT)
-- ============================================================


-- ─── 1) migration-5-examples ─────────────────────────
-- EngCat — Expand example columns to 5 across all expression tables
-- Run once in Supabase SQL editor.

-- Collocations: previously ex1/ex2 → add ex3/ex4/ex5
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex3    TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex3_ko TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex4    TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex4_ko TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex5    TEXT;
ALTER TABLE collocations ADD COLUMN IF NOT EXISTS ex5_ko TEXT;

-- Idioms: previously ex1/ex2/ex3 → add ex4/ex5
ALTER TABLE idioms ADD COLUMN IF NOT EXISTS ex4    TEXT;
ALTER TABLE idioms ADD COLUMN IF NOT EXISTS ex4_ko TEXT;
ALTER TABLE idioms ADD COLUMN IF NOT EXISTS ex5    TEXT;
ALTER TABLE idioms ADD COLUMN IF NOT EXISTS ex5_ko TEXT;

-- Nuances: previously only ex_a/ex_b/ex_c (one per compared word) → add
-- two extra general examples ex4/ex5 to round out to 5 total.
ALTER TABLE nuances ADD COLUMN IF NOT EXISTS ex4    TEXT;
ALTER TABLE nuances ADD COLUMN IF NOT EXISTS ex4_ko TEXT;
ALTER TABLE nuances ADD COLUMN IF NOT EXISTS ex5    TEXT;
ALTER TABLE nuances ADD COLUMN IF NOT EXISTS ex5_ko TEXT;

-- ─── 2) content-examples-all ────────────────────────
-- EngCat — ALL example sentence backfill (collocations + idioms + nuances)
-- 1,104 rows total (460 + 345 + 299)
-- Run once in Supabase SQL Editor — safe to re-run (idempotent for filled rows)
--
-- Order:
--   1. Collocations (ex3, ex4, ex5)        — 460 UPDATEs
--   2. Idioms (ex3 via COALESCE, ex4, ex5) — 345 UPDATEs
--   3. Nuances (ex4, ex5)                  — 299 UPDATEs


-- ══════════════════════════════════════
-- GREETING
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'Could you make an introduction at the dinner tonight?', ex3_ko = '오늘 저녁 식사에서 소개를 해주실 수 있어요?', ex4 = 'She makes thoughtful introductions whenever new people join the group.', ex4_ko = '그녀는 새로운 사람들이 그룹에 합류할 때마다 사려 깊게 소개를 해요.', ex5 = 'It''s polite to make an introduction when guests don''t know each other.', ex5_ko = '손님들이 서로 모를 때는 소개를 하는 것이 예의예요.' WHERE id = 'col_greeting_01';
UPDATE collocations SET ex3 = 'My manager gave me a compliment about the report I wrote.', ex3_ko = '제 매니저는 제가 작성한 보고서에 대해 칭찬을 했어요.', ex4 = 'Try to give a compliment to your partner every day.', ex4_ko = '매일 파트너에게 칭찬을 해보세요.', ex5 = 'He gave the chef a compliment on the delicious meal.', ex5_ko = '그는 셰프에게 맛있는 음식에 대한 칭찬을 했어요.' WHERE id = 'col_greeting_02';
UPDATE collocations SET ex3 = 'You should pay attention to road signs while driving.', ex3_ko = '운전할 때는 도로 표지판에 주의를 기울여야 해요.', ex4 = 'Children find it hard to pay attention for long periods.', ex4_ko = '아이들은 오랜 시간 주의를 기울이는 걸 어려워해요.', ex5 = 'Pay attention to your posture when sitting at a desk all day.', ex5_ko = '하루 종일 책상에 앉아 있을 때는 자세에 주의를 기울이세요.' WHERE id = 'col_greeting_03';
UPDATE collocations SET ex3 = 'My husband and I take turns doing the dishes after dinner.', ex3_ko = '저와 남편은 저녁 식사 후에 교대로 설거지를 해요.', ex4 = 'Let''s take turns choosing the music for our road trip.', ex4_ko = '우리 자동차 여행에서 음악은 교대로 골라요.', ex5 = 'The players took turns rolling the dice during the game.', ex5_ko = '선수들은 게임 중에 교대로 주사위를 굴렸어요.' WHERE id = 'col_greeting_04';
UPDATE collocations SET ex3 = 'She brought cookies to help break the ice with her new neighbors.', ex3_ko = '그녀는 새 이웃들과 어색한 분위기를 깨기 위해 쿠키를 가져왔어요.', ex4 = 'The team-building activity was designed to break the ice quickly.', ex4_ko = '팀 빌딩 활동은 어색한 분위기를 빠르게 깨도록 설계됐어요.', ex5 = 'Sharing a funny story is a great way to break the ice.', ex5_ko = '재미있는 이야기를 나누는 건 어색한 분위기를 깨는 좋은 방법이에요.' WHERE id = 'col_greeting_05';
UPDATE collocations SET ex3 = 'We made small talk in the elevator on the way up.', ex3_ko = '우리는 올라가는 엘리베이터에서 가벼운 대화를 나눴어요.', ex4 = 'She doesn''t enjoy making small talk and prefers deeper conversations.', ex4_ko = '그녀는 가벼운 대화보다 깊은 대화를 더 좋아해요.', ex5 = 'Making small talk about the weather is common in many cultures.', ex5_ko = '날씨에 관한 가벼운 대화는 여러 문화에서 흔해요.' WHERE id = 'col_greeting_06';
UPDATE collocations SET ex3 = 'He struggles to hold a conversation when he''s feeling shy.', ex3_ko = '그는 부끄러울 때 대화를 이어가는 걸 힘들어해요.', ex4 = 'They held a conversation in Spanish throughout the whole dinner.', ex4_ko = '그들은 저녁 내내 스페인어로 대화를 이어갔어요.', ex5 = 'Toddlers start learning to hold a conversation around age two.', ex5_ko = '유아들은 두 살 무렵부터 대화를 이어가는 법을 배우기 시작해요.' WHERE id = 'col_greeting_07';
UPDATE collocations SET ex3 = 'The audience gave the speaker a warm welcome with loud applause.', ex3_ko = '청중은 큰 박수로 연사를 따뜻하게 환영했어요.', ex4 = 'Let''s give our exchange student a warm welcome to the school.', ex4_ko = '교환학생을 학교에 따뜻하게 환영해 줍시다.', ex5 = 'The community gave the new family a warm welcome with home-cooked meals.', ex5_ko = '그 동네에서는 집밥을 들고 와서 새 가족을 따뜻하게 환영해 줬어요.' WHERE id = 'col_greeting_08';
UPDATE collocations SET ex3 = 'Try to make eye contact during the job interview to show confidence.', ex3_ko = '면접에서는 자신감을 보이기 위해 눈을 마주치도록 해보세요.', ex4 = 'He avoided making eye contact when he told the lie.', ex4_ko = '그는 거짓말을 할 때 눈을 마주치는 것을 피했어요.', ex5 = 'Making eye contact with the audience helps you connect during a speech.', ex5_ko = '청중과 눈을 마주치는 것은 발표 중 소통에 도움이 돼요.' WHERE id = 'col_greeting_09';
UPDATE collocations SET ex3 = 'Take a seat anywhere — class will begin in a few minutes.', ex3_ko = '아무 자리에나 앉으세요 — 수업이 곧 시작돼요.', ex4 = 'She took a seat in the front row to see the stage better.', ex4_ko = '그녀는 무대를 더 잘 보기 위해 앞줄에 자리를 잡았어요.', ex5 = 'He politely offered to let the elderly woman take a seat.', ex5_ko = '그는 정중하게 어르신께 자리에 앉으시라고 양보했어요.' WHERE id = 'col_greeting_10';
UPDATE collocations SET ex3 = 'The two leaders exchanged greetings at the start of the summit.', ex3_ko = '두 정상은 회담 시작에 인사를 나눴어요.', ex4 = 'It''s polite to exchange greetings with your neighbors when you see them.', ex4_ko = '이웃을 마주칠 때 인사를 나누는 건 예의예요.', ex5 = 'They exchanged warm greetings after not seeing each other for years.', ex5_ko = '그들은 오랜 시간 못 만난 끝에 따뜻한 인사를 나눴어요.' WHERE id = 'col_greeting_11';
UPDATE collocations SET ex3 = 'The president extended an invitation to the ambassador''s residence.', ex3_ko = '대통령은 대사관 관저에 초대장을 보냈어요.', ex4 = 'She extended an invitation to her wedding only to close friends.', ex4_ko = '그녀는 친한 친구들에게만 결혼식 초대장을 보냈어요.', ex5 = 'The company extended invitations to top clients for the launch party.', ex5_ko = '회사는 출시 파티에 주요 고객들에게 초대장을 보냈어요.' WHERE id = 'col_greeting_12';
UPDATE collocations SET ex3 = 'We try to keep in touch even though we live in different cities.', ex3_ko = '다른 도시에 살지만 우리는 연락을 유지하려고 노력해요.', ex4 = 'Social media makes it easier to keep in touch with distant friends.', ex4_ko = '소셜 미디어 덕분에 멀리 사는 친구들과 연락을 유지하기 쉬워졌어요.', ex5 = 'I promised to keep in touch with my host family after the trip.', ex5_ko = '여행 후에도 호스트 가족과 연락을 유지하겠다고 약속했어요.' WHERE id = 'col_greeting_13';
UPDATE collocations SET ex3 = 'She struck up a conversation with the woman next to her on the plane.', ex3_ko = '그녀는 비행기 옆자리 여성과 대화를 시작했어요.', ex4 = 'He often strikes up conversations with people in coffee shops.', ex4_ko = '그는 카페에서 사람들과 자주 대화를 시작해요.', ex5 = 'My dad can strike up a conversation with almost anyone he meets.', ex5_ko = '아빠는 만나는 거의 모든 사람과 대화를 시작할 수 있어요.' WHERE id = 'col_greeting_14';
UPDATE collocations SET ex3 = 'He worked hard to make a good impression on his future in-laws.', ex3_ko = '그는 미래의 시댁/처가에 좋은 인상을 주려고 열심히 노력했어요.', ex4 = 'Arriving on time is essential to make a good impression at work.', ex4_ko = '직장에서 좋은 인상을 주려면 정시에 도착하는 것이 필수예요.', ex5 = 'Her warm smile helped her make a good impression on the team.', ex5_ko = '그녀의 따뜻한 미소가 팀에 좋은 인상을 주는 데 도움이 됐어요.' WHERE id = 'col_greeting_15';
UPDATE collocations SET ex3 = 'The CEO offered a handshake to congratulate the new employee.', ex3_ko = 'CEO는 신입 직원을 축하하기 위해 악수를 청했어요.', ex4 = 'She offered a handshake instead of a hug to keep things professional.', ex4_ko = '그녀는 격식을 지키기 위해 포옹 대신 악수를 청했어요.', ex5 = 'The coach offered a handshake to the opposing team after the match.', ex5_ko = '코치는 경기 후 상대팀에게 악수를 청했어요.' WHERE id = 'col_greeting_16';
UPDATE collocations SET ex3 = 'The new neighbors invited us over to get acquainted.', ex3_ko = '새 이웃들이 친해지자고 우리를 초대했어요.', ex4 = 'Let''s grab a coffee so we can get acquainted before the project starts.', ex4_ko = '프로젝트가 시작되기 전에 친해질 수 있게 커피 한잔해요.', ex5 = 'He got acquainted with his coworkers during the company retreat.', ex5_ko = '그는 회사 워크숍에서 동료들과 친해졌어요.' WHERE id = 'col_greeting_17';
UPDATE collocations SET ex3 = 'She sends her regards from Seoul through the postcard.', ex3_ko = '그녀는 서울에서 엽서로 안부를 전해요.', ex4 = 'Don''t forget to send my regards to your grandmother.', ex4_ko = '할머니께 안부 전하는 거 잊지 마세요.', ex5 = 'He sent his regards to the bride and groom through a video message.', ex5_ko = '그는 영상 메시지로 신랑 신부에게 안부를 전했어요.' WHERE id = 'col_greeting_18';
UPDATE collocations SET ex3 = 'He accepted her apology with a hug and a quiet smile.', ex3_ko = '그는 포옹과 조용한 미소로 그녀의 사과를 받아들였어요.', ex4 = 'The teacher accepted the student''s apology for being late.', ex4_ko = '선생님은 늦은 학생의 사과를 받아들였어요.', ex5 = 'Sometimes it takes time to truly accept an apology and move on.', ex5_ko = '때로는 진심으로 사과를 받아들이고 앞으로 나아가는 데 시간이 걸려요.' WHERE id = 'col_greeting_19';
UPDATE collocations SET ex3 = 'She made a brief farewell speech before leaving the company.', ex3_ko = '그녀는 퇴사 전에 짧은 작별 인사 연설을 했어요.', ex4 = 'He made a quiet farewell to his old home before moving away.', ex4_ko = '그는 이사 가기 전에 옛 집에 조용히 작별 인사를 했어요.', ex5 = 'The students made a heartfelt farewell to their favorite teacher.', ex5_ko = '학생들은 가장 좋아하는 선생님께 진심 어린 작별 인사를 했어요.' WHERE id = 'col_greeting_20';

-- ══════════════════════════════════════
-- EMOTION
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'I made an effort to learn a few words of Korean before my trip.', ex3_ko = '여행 전에 한국어를 몇 마디 배우려고 노력했어요.', ex4 = 'They made an effort to include everyone in the conversation.', ex4_ko = '그들은 모두를 대화에 포함시키려고 노력했어요.', ex5 = 'You can tell he made a real effort to improve his work.', ex5_ko = '그가 자기 일을 개선하려고 정말 노력했다는 게 보여요.' WHERE id = 'col_emotion_01';
UPDATE collocations SET ex3 = 'We all felt relieved once the deadline finally passed.', ex3_ko = '마감일이 마침내 지나자 우리 모두 안도감을 느꼈어요.', ex4 = 'He felt relieved to see his daughter safely home from school.', ex4_ko = '그는 딸이 학교에서 안전하게 돌아온 것을 보고 안도감을 느꼈어요.', ex5 = 'I felt relieved knowing the surgery had gone well.', ex5_ko = '수술이 잘 끝났다는 것을 알고 안도감을 느꼈어요.' WHERE id = 'col_emotion_02';
UPDATE collocations SET ex3 = 'She got frustrated with the slow Wi-Fi during the meeting.', ex3_ko = '그녀는 회의 중 느린 와이파이 때문에 짜증이 났어요.', ex4 = 'Don''t get frustrated — learning a language takes time.', ex4_ko = '짜증 내지 마세요 — 언어를 배우는 데는 시간이 걸려요.', ex5 = 'He got frustrated when the printer kept jamming.', ex5_ko = '그는 프린터가 계속 걸려서 짜증이 났어요.' WHERE id = 'col_emotion_03';
UPDATE collocations SET ex3 = 'I have a feeling it''s going to rain this afternoon.', ex3_ko = '오후에 비가 올 것 같은 느낌이 있어요.', ex4 = 'She had a feeling they would meet again someday.', ex4_ko = '그녀는 그들이 언젠가 다시 만날 것 같은 느낌이 들었어요.', ex5 = 'We had a feeling something exciting was about to happen.', ex5_ko = '뭔가 신나는 일이 곧 일어날 것 같은 느낌이 있었어요.' WHERE id = 'col_emotion_04';
UPDATE collocations SET ex3 = 'Try to keep calm and breathe deeply during the test.', ex3_ko = '시험 중에 침착함을 유지하면서 깊게 호흡해 보세요.', ex4 = 'He kept calm even when the children were crying loudly.', ex4_ko = '그는 아이들이 큰 소리로 울 때도 침착함을 유지했어요.', ex5 = 'The pilot kept calm and landed the plane safely.', ex5_ko = '조종사는 침착함을 유지하며 비행기를 안전하게 착륙시켰어요.' WHERE id = 'col_emotion_05';
UPDATE collocations SET ex3 = 'I almost broke down during the farewell speech.', ex3_ko = '저는 작별 연설 중에 거의 무너질 뻔했어요.', ex4 = 'She broke down in tears when she opened the letter.', ex4_ko = '그녀는 편지를 열어보고 눈물을 터뜨리며 무너졌어요.', ex5 = 'After weeks of pressure, he finally broke down at home.', ex5_ko = '몇 주간의 압박 끝에 그는 결국 집에서 무너졌어요.' WHERE id = 'col_emotion_06';
UPDATE collocations SET ex3 = 'My niece gets excited every time she sees a dog on the street.', ex3_ko = '제 조카는 길에서 강아지를 볼 때마다 신이 나요.', ex4 = 'I got really excited when I received the acceptance email.', ex4_ko = '합격 이메일을 받았을 때 정말 신이 났어요.', ex5 = 'They got excited about the upcoming family vacation.', ex5_ko = '그들은 다가오는 가족 휴가에 신이 났어요.' WHERE id = 'col_emotion_07';
UPDATE collocations SET ex3 = 'I feel overwhelmed by the amount of homework this week.', ex3_ko = '이번 주에 숙제가 너무 많아서 벅차게 느껴져요.', ex4 = 'New parents often feel overwhelmed in the first few months.', ex4_ko = '신생아 부모들은 첫 몇 달간 종종 벅차게 느껴요.', ex5 = 'He felt overwhelmed by the kindness of strangers after the accident.', ex5_ko = '그는 사고 후에 낯선 이들의 친절에 압도되었어요.' WHERE id = 'col_emotion_08';
UPDATE collocations SET ex3 = 'My family gave me support throughout my entire career change.', ex3_ko = '제 가족은 제 커리어 전환 내내 지지해 줬어요.', ex4 = 'The community gave support to the families affected by the flood.', ex4_ko = '지역사회는 홍수 피해 가족들을 지지해 줬어요.', ex5 = 'It''s important to give support to colleagues who are struggling.', ex5_ko = '힘들어하는 동료를 지지해 주는 것이 중요해요.' WHERE id = 'col_emotion_09';
UPDATE collocations SET ex3 = 'She took the feedback personally even though it was about the project.', ex3_ko = '프로젝트에 관한 피드백이었는데도 그녀는 개인적으로 받아들였어요.', ex4 = 'Try not to take it personally when people are just being honest.', ex4_ko = '사람들이 솔직하게 말하는 것뿐일 때는 개인적으로 받아들이지 않으려 해보세요.', ex5 = 'I used to take everything personally, but I''ve learned not to.', ex5_ko = '저는 모든 걸 개인적으로 받아들이곤 했는데, 이제는 그러지 않으려고 해요.' WHERE id = 'col_emotion_10';
UPDATE collocations SET ex3 = 'I had to hold back tears when I watched the documentary.', ex3_ko = '저는 그 다큐멘터리를 보면서 눈물을 참아야 했어요.', ex4 = 'She held back tears as she read the letter from her father.', ex4_ko = '그녀는 아버지의 편지를 읽으면서 눈물을 참았어요.', ex5 = 'It was hard to hold back tears at his retirement party.', ex5_ko = '그의 은퇴식에서 눈물을 참기 힘들었어요.' WHERE id = 'col_emotion_11';
UPDATE collocations SET ex3 = 'He lost patience with the customer who kept changing his order.', ex3_ko = '그는 주문을 계속 바꾸는 손님에게 인내심을 잃었어요.', ex4 = 'It''s easy to lose patience when you''re tired and hungry.', ex4_ko = '피곤하고 배고프면 인내심을 잃기 쉬워요.', ex5 = 'The parent lost patience after asking the child five times.', ex5_ko = '부모는 아이에게 다섯 번이나 부탁한 끝에 인내심을 잃었어요.' WHERE id = 'col_emotion_12';
UPDATE collocations SET ex3 = 'Learning a new skill can really boost your confidence.', ex3_ko = '새로운 기술을 배우는 건 자신감을 크게 높여줄 수 있어요.', ex4 = 'A good haircut sometimes boosts your confidence overnight.', ex4_ko = '괜찮은 헤어컷이 하룻밤 만에 자신감을 높여주기도 해요.', ex5 = 'Winning the small contest boosted her confidence to enter bigger ones.', ex5_ko = '작은 대회에서 우승한 것이 더 큰 대회에 참가할 자신감을 높여줬어요.' WHERE id = 'col_emotion_13';
UPDATE collocations SET ex3 = 'Therapy helped him learn to deal with his emotions in a healthy way.', ex3_ko = '상담은 그가 감정을 건강하게 다루는 법을 배우는 데 도움이 됐어요.', ex4 = 'She''s still figuring out how to deal with her emotions after the divorce.', ex4_ko = '그녀는 이혼 후 감정을 어떻게 다뤄야 할지 아직 알아가는 중이에요.', ex5 = 'Journaling is one way to deal with emotions you can''t express out loud.', ex5_ko = '일기 쓰기는 소리 내어 표현하지 못하는 감정을 다루는 한 가지 방법이에요.' WHERE id = 'col_emotion_14';
UPDATE collocations SET ex3 = 'She wrote a card to express gratitude to her mentor.', ex3_ko = '그녀는 멘토에게 감사를 표현하기 위해 카드를 썼어요.', ex4 = 'It''s easy to forget to express gratitude in our busy lives.', ex4_ko = '바쁜 일상에서는 감사를 표현하는 걸 잊기 쉬워요.', ex5 = 'He expressed gratitude in his speech to everyone who supported him.', ex5_ko = '그는 연설에서 자신을 지지해 준 모두에게 감사를 표현했어요.' WHERE id = 'col_emotion_15';
UPDATE collocations SET ex3 = 'I feel at ease in my grandmother''s kitchen even after all these years.', ex3_ko = '그 오랜 시간이 지난 후에도 할머니 부엌에서는 편안함을 느껴요.', ex4 = 'She always made her guests feel at ease with her gentle humor.', ex4_ko = '그녀는 부드러운 유머로 손님들을 항상 편안하게 해줬어요.', ex5 = 'The therapist''s calm voice helped me feel at ease right away.', ex5_ko = '상담사의 차분한 목소리 덕분에 저는 바로 편안함을 느꼈어요.' WHERE id = 'col_emotion_16';
UPDATE collocations SET ex3 = 'Your sweet message really put a smile on my face this morning.', ex3_ko = '당신의 다정한 메시지가 오늘 아침 정말 저를 미소 짓게 했어요.', ex4 = 'Watching the kids play put a smile on the old man''s face.', ex4_ko = '아이들이 노는 모습이 노인을 미소 짓게 했어요.', ex5 = 'A warm cup of tea on a cold day always puts a smile on her face.', ex5_ko = '추운 날 따뜻한 차 한 잔이 항상 그녀를 미소 짓게 해요.' WHERE id = 'col_emotion_17';
UPDATE collocations SET ex3 = 'I got carried away shopping and spent more than I planned.', ex3_ko = '저는 쇼핑에 휩쓸려서 계획보다 더 많이 썼어요.', ex4 = 'He got carried away with the joke and went too far.', ex4_ko = '그는 농담에 휩쓸려서 도가 지나쳤어요.', ex5 = 'Try not to get carried away when you''re negotiating a price.', ex5_ko = '가격 흥정을 할 때 휩쓸리지 않도록 조심하세요.' WHERE id = 'col_emotion_18';
UPDATE collocations SET ex3 = 'She''s slowly coming to terms with the diagnosis.', ex3_ko = '그녀는 천천히 그 진단을 받아들이고 있어요.', ex4 = 'It took years for him to come to terms with his childhood.', ex4_ko = '그가 어린 시절을 받아들이기까지 몇 년이 걸렸어요.', ex5 = 'She came to terms with the fact that some friendships fade with time.', ex5_ko = '그녀는 어떤 우정은 시간이 지나며 옅어진다는 사실을 받아들였어요.' WHERE id = 'col_emotion_19';
UPDATE collocations SET ex3 = 'He reached a breaking point and decided to take a long vacation.', ex3_ko = '그는 한계에 다다라서 긴 휴가를 가기로 결심했어요.', ex4 = 'Many caregivers reach a breaking point without proper support.', ex4_ko = '많은 간병인들은 적절한 지원 없이 한계에 다다라요.', ex5 = 'The constant noise from the construction reached a breaking point for the residents.', ex5_ko = '공사장의 끊임없는 소음이 주민들에게 한계에 다다랐어요.' WHERE id = 'col_emotion_20';

-- ══════════════════════════════════════
-- WEATHER
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'They got caught in the rain while hiking in the mountains.', ex3_ko = '그들은 산에서 등산하다가 비를 맞았어요.', ex4 = 'I got caught in the rain on my way to the bus stop.', ex4_ko = '저는 버스 정류장으로 가는 길에 비를 맞았어요.', ex5 = 'The picnic was ruined when we got caught in the rain.', ex5_ko = '우리가 비를 맞는 바람에 소풍이 망쳤어요.' WHERE id = 'col_weather_01';
UPDATE collocations SET ex3 = 'Please take an umbrella with you on your morning walk.', ex3_ko = '아침 산책 때 우산을 챙기세요.', ex4 = 'She always takes an umbrella, even on sunny days, just in case.', ex4_ko = '그녀는 만일을 대비해 맑은 날에도 항상 우산을 챙겨요.', ex5 = 'I took an umbrella but the rain never came.', ex5_ko = '저는 우산을 챙겼는데 결국 비는 오지 않았어요.' WHERE id = 'col_weather_02';
UPDATE collocations SET ex3 = 'The news channel makes a forecast every morning at seven.', ex3_ko = '뉴스 채널은 매일 아침 일곱 시에 예보를 해요.', ex4 = 'They use satellites and supercomputers to make accurate forecasts.', ex4_ko = '그들은 정확한 예보를 하기 위해 위성과 슈퍼컴퓨터를 사용해요.', ex5 = 'The app makes a forecast for any city in the world.', ex5_ko = '그 앱은 세계 어느 도시든지 예보를 해줘요.' WHERE id = 'col_weather_03';
UPDATE collocations SET ex3 = 'This week broke a temperature record for the coldest February ever.', ex3_ko = '이번 주는 역대 가장 추운 2월 기온 기록을 깼어요.', ex4 = 'The town broke a temperature record three times this summer.', ex4_ko = '그 마을은 올여름 기온 기록을 세 번이나 깼어요.', ex5 = 'Scientists say climate change is making us break temperature records more often.', ex5_ko = '과학자들은 기후 변화로 인해 기온 기록이 더 자주 깨지고 있다고 말해요.' WHERE id = 'col_weather_04';
UPDATE collocations SET ex3 = 'My shoes got completely soaked from walking through the puddles.', ex3_ko = '제 신발은 웅덩이를 지나면서 완전히 흠뻑 젖었어요.', ex4 = 'The kids got soaked playing in the sprinklers all afternoon.', ex4_ko = '아이들은 오후 내내 스프링클러에서 놀다가 흠뻑 젖었어요.', ex5 = 'Don''t leave your jacket outside or it''ll get soaked.', ex5_ko = '재킷을 밖에 두지 마세요, 안 그러면 흠뻑 젖을 거예요.' WHERE id = 'col_weather_05';
UPDATE collocations SET ex3 = 'Drink something hot to keep warm during the freezing night.', ex3_ko = '얼어붙는 밤에는 따뜻한 음료를 마셔서 따뜻하게 지내세요.', ex4 = 'The blanket helps keep him warm while he sleeps.', ex4_ko = '담요가 그가 잘 때 따뜻하게 지낼 수 있도록 도와줘요.', ex5 = 'Bring extra socks to keep warm at the outdoor concert.', ex5_ko = '야외 콘서트에서 따뜻하게 지내려면 여분의 양말을 가져가세요.' WHERE id = 'col_weather_06';
UPDATE collocations SET ex3 = 'The athlete set a new record at the championship yesterday.', ex3_ko = '그 선수는 어제 챔피언십에서 새 기록을 세웠어요.', ex4 = 'July set a record for the most consecutive sunny days here.', ex4_ko = '7월은 이곳에서 가장 많은 연속 맑은 날 기록을 세웠어요.', ex5 = 'The hurricane set a record for wind speed in the region.', ex5_ko = '그 허리케인은 그 지역에서 풍속 기록을 세웠어요.' WHERE id = 'col_weather_07';
UPDATE collocations SET ex3 = 'The explorers had to face harsh conditions in the Antarctic.', ex3_ko = '탐험가들은 남극에서 혹독한 환경을 마주해야 했어요.', ex4 = 'Farmers in the region face harsh conditions almost every winter.', ex4_ko = '그 지역 농부들은 거의 매년 겨울 혹독한 환경을 마주해요.', ex5 = 'Construction workers often face harsh conditions on cold mornings.', ex5_ko = '건설 노동자들은 종종 추운 아침에 혹독한 환경을 마주해요.' WHERE id = 'col_weather_08';
UPDATE collocations SET ex3 = 'The weather finally cleared up just before sunset.', ex3_ko = '날씨가 일몰 직전에 마침내 맑아졌어요.', ex4 = 'I hope it clears up by the weekend for our hike.', ex4_ko = '주말 등산까지 날씨가 맑아지길 바라요.', ex5 = 'The fog cleared up as the morning warmed up.', ex5_ko = '아침이 따뜻해지면서 안개가 걷히고 날이 맑아졌어요.' WHERE id = 'col_weather_09';
UPDATE collocations SET ex3 = 'There''s usually a drop in temperature once the sun goes down.', ex3_ko = '해가 지면 보통 기온이 떨어져요.', ex4 = 'The sudden drop in temperature surprised everyone at the beach.', ex4_ko = '갑작스러운 기온 하강에 해변의 모두가 놀랐어요.', ex5 = 'You can feel a drop in temperature when you enter the basement.', ex5_ko = '지하실에 들어가면 기온이 떨어지는 게 느껴져요.' WHERE id = 'col_weather_10';
UPDATE collocations SET ex3 = 'The wind picked up suddenly and knocked over a few chairs.', ex3_ko = '바람이 갑자기 강해져서 의자 몇 개가 넘어졌어요.', ex4 = 'Sailors check the forecast to see if the wind will pick up.', ex4_ko = '선원들은 바람이 강해질지 보려고 예보를 확인해요.', ex5 = 'The wind picked up just as we sat down for our picnic.', ex5_ko = '우리가 소풍을 위해 앉자마자 바람이 강해졌어요.' WHERE id = 'col_weather_11';
UPDATE collocations SET ex3 = 'Hikers took shelter in a cave when the lightning began.', ex3_ko = '등산객들은 번개가 치기 시작하자 동굴로 피했어요.', ex4 = 'We took shelter under the bus stop awning during the downpour.', ex4_ko = '폭우 동안 우리는 버스 정류장 차양 아래로 피했어요.', ex5 = 'The animals took shelter in the barn before the storm arrived.', ex5_ko = '동물들은 폭풍이 도착하기 전 헛간으로 피했어요.' WHERE id = 'col_weather_12';
UPDATE collocations SET ex3 = 'The rain eased off just enough for us to leave the building.', ex3_ko = '비가 우리가 건물을 나갈 만큼 약해졌어요.', ex4 = 'Let''s wait inside until the rain eases off a bit.', ex4_ko = '비가 좀 약해질 때까지 안에서 기다려요.', ex5 = 'The storm eased off after midnight and we finally slept.', ex5_ko = '폭풍이 자정 이후 약해져서 우리는 마침내 잠들었어요.' WHERE id = 'col_weather_13';
UPDATE collocations SET ex3 = 'I hope the rain holds off until after the soccer game.', ex3_ko = '축구 경기가 끝날 때까지 비가 안 왔으면 좋겠어요.', ex4 = 'The rain held off long enough for us to finish gardening.', ex4_ko = '비가 우리가 정원 일을 끝낼 만큼 잠시 멈춰줬어요.', ex5 = 'Fingers crossed that the rain holds off for the parade.', ex5_ko = '퍼레이드 동안 비가 안 오기를 빌어요.' WHERE id = 'col_weather_14';
UPDATE collocations SET ex3 = 'Wrap up warm before walking the dog tonight.', ex3_ko = '오늘 밤 강아지 산책 전에 따뜻하게 차려입으세요.', ex4 = 'The kids wrapped up warm and ran out to play in the snow.', ex4_ko = '아이들은 따뜻하게 차려입고 눈에서 놀러 뛰어나갔어요.', ex5 = 'You''ll want to wrap up warm if you''re watching the game outside.', ex5_ko = '밖에서 경기를 본다면 따뜻하게 차려입는 게 좋아요.' WHERE id = 'col_weather_15';
UPDATE collocations SET ex3 = 'Schools are bracing for a winter storm later this week.', ex3_ko = '학교들은 이번 주 후반의 겨울 폭풍에 대비하고 있어요.', ex4 = 'The town braced for flooding after three days of heavy rain.', ex4_ko = '그 마을은 사흘간의 폭우 후 홍수에 대비했어요.', ex5 = 'Travelers are bracing for delays as the snowstorm approaches.', ex5_ko = '여행자들은 눈폭풍이 다가오면서 지연에 대비하고 있어요.' WHERE id = 'col_weather_16';
UPDATE collocations SET ex3 = 'Many countries are experiencing droughts due to climate change.', ex3_ko = '많은 나라들이 기후 변화로 인해 가뭄을 겪고 있어요.', ex4 = 'California has experienced several major droughts in recent decades.', ex4_ko = '캘리포니아는 최근 수십 년간 여러 차례 큰 가뭄을 겪었어요.', ex5 = 'Crops fail when farmers experience a long drought.', ex5_ko = '농부들이 긴 가뭄을 겪으면 농작물이 망쳐요.' WHERE id = 'col_weather_17';
UPDATE collocations SET ex3 = 'The temperature went below zero for the first time this fall.', ex3_ko = '이번 가을 처음으로 기온이 영하로 내려갔어요.', ex4 = 'When temperatures go below zero, pipes can freeze and burst.', ex4_ko = '기온이 영하로 내려가면 수도관이 얼어서 터질 수 있어요.', ex5 = 'It went below zero last night, so I''m wearing extra layers today.', ex5_ko = '어젯밤 영하로 내려가서 오늘은 옷을 더 껴입었어요.' WHERE id = 'col_weather_18';
UPDATE collocations SET ex3 = 'It started pouring down rain just as the wedding ended.', ex3_ko = '결혼식이 끝나자마자 비가 쏟아지기 시작했어요.', ex4 = 'The rain poured down all night and flooded the streets.', ex4_ko = '비가 밤새 쏟아져서 거리가 침수됐어요.', ex5 = 'We could hear the rain pouring down on the metal roof.', ex5_ko = '양철 지붕 위로 비가 쏟아지는 소리가 들렸어요.' WHERE id = 'col_weather_19';
UPDATE collocations SET ex3 = 'It''s been under a cloud here for almost two weeks straight.', ex3_ko = '여기는 거의 2주 동안 계속 흐려요.', ex4 = 'London is often under a cloud, but locals don''t mind.', ex4_ko = '런던은 자주 흐리지만 현지인들은 개의치 않아요.', ex5 = 'The whole region was under a cloud during the festival weekend.', ex5_ko = '축제 주말 동안 그 지역 전체가 흐렸어요.' WHERE id = 'col_weather_20';

-- ══════════════════════════════════════
-- SHOPPING
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'I made a small purchase at the local bookstore yesterday.', ex3_ko = '저는 어제 동네 서점에서 작은 구매를 했어요.', ex4 = 'You can make a purchase using cash, card, or mobile pay.', ex4_ko = '현금, 카드, 또는 모바일 결제로 구매할 수 있어요.', ex5 = 'He made a big purchase for the family without telling anyone.', ex5_ko = '그는 가족을 위한 큰 구매를 아무에게도 말하지 않고 했어요.' WHERE id = 'col_shopping_01';
UPDATE collocations SET ex3 = 'Let me pay the bill — you got it last time.', ex3_ko = '계산은 제가 할게요 — 지난번엔 당신이 냈잖아요.', ex4 = 'My uncle always pays the bill at family dinners.', ex4_ko = '제 삼촌은 가족 식사에서 항상 계산을 하세요.', ex5 = 'He paid the bill quietly and slipped out of the restaurant.', ex5_ko = '그는 조용히 계산을 하고 식당을 빠져나왔어요.' WHERE id = 'col_shopping_02';
UPDATE collocations SET ex3 = 'Students often get a discount on movie tickets with their ID.', ex3_ko = '학생들은 학생증으로 영화표 할인을 받는 경우가 많아요.', ex4 = 'I got a discount because the box was slightly damaged.', ex4_ko = '상자가 약간 손상돼서 할인을 받았어요.', ex5 = 'You can get a discount if you sign up for the newsletter.', ex5_ko = '뉴스레터를 구독하면 할인을 받을 수 있어요.' WHERE id = 'col_shopping_03';
UPDATE collocations SET ex3 = 'I took a refund on the jacket because it didn''t fit properly.', ex3_ko = '재킷이 잘 맞지 않아서 환불을 받았어요.', ex4 = 'She took a refund instead of waiting for a replacement.', ex4_ko = '그녀는 교환을 기다리는 대신 환불을 받았어요.', ex5 = 'You can take a refund within fourteen days of purchase.', ex5_ko = '구매 후 14일 이내에 환불을 받을 수 있어요.' WHERE id = 'col_shopping_04';
UPDATE collocations SET ex3 = 'Keep your receipt in your wallet so you don''t lose it.', ex3_ko = '잃어버리지 않도록 영수증을 지갑에 보관하세요.', ex4 = 'She keeps every receipt for her business expenses.', ex4_ko = '그녀는 사업 경비를 위한 모든 영수증을 보관해요.', ex5 = 'I forgot to keep the receipt and couldn''t exchange the item.', ex5_ko = '영수증 보관을 잊어서 물건을 교환할 수 없었어요.' WHERE id = 'col_shopping_05';
UPDATE collocations SET ex3 = 'I placed an order for two coffees and a sandwich.', ex3_ko = '저는 커피 두 잔과 샌드위치 하나를 주문했어요.', ex4 = 'You can place an order online and pick it up at the store.', ex4_ko = '온라인으로 주문하고 매장에서 픽업할 수 있어요.', ex5 = 'The customer placed an order for 50 units of the product.', ex5_ko = '그 고객은 제품 50개를 주문했어요.' WHERE id = 'col_shopping_06';
UPDATE collocations SET ex3 = 'She made a complaint to the manager about the rude waiter.', ex3_ko = '그녀는 무례한 웨이터에 대해 매니저에게 불만을 제기했어요.', ex4 = 'Customers often make a complaint when shipping takes too long.', ex4_ko = '배송이 너무 오래 걸리면 고객들은 종종 불만을 제기해요.', ex5 = 'He made a complaint in writing rather than over the phone.', ex5_ko = '그는 전화 대신 서면으로 불만을 제기했어요.' WHERE id = 'col_shopping_07';
UPDATE collocations SET ex3 = 'They run a sale every Black Friday with big discounts.', ex3_ko = '그들은 매년 블랙 프라이데이에 큰 할인 세일을 진행해요.', ex4 = 'Our local bakery runs a sale on day-old bread every evening.', ex4_ko = '동네 빵집은 매일 저녁 하루 지난 빵을 세일해요.', ex5 = 'The boutique runs a sale twice a year to clear out inventory.', ex5_ko = '그 부티크는 재고를 정리하기 위해 1년에 두 번 세일을 진행해요.' WHERE id = 'col_shopping_08';
UPDATE collocations SET ex3 = 'The restaurant didn''t break even for the first six months.', ex3_ko = '그 식당은 처음 6개월간 손익분기점에 도달하지 못했어요.', ex4 = 'Most startups take a few years to break even.', ex4_ko = '대부분의 스타트업은 손익분기점에 도달하는 데 몇 년이 걸려요.', ex5 = 'We finally broke even after a strong holiday season.', ex5_ko = '강력한 연휴 시즌 후 우리는 마침내 손익분기점에 도달했어요.' WHERE id = 'col_shopping_09';
UPDATE collocations SET ex3 = 'I love browsing through used bookstores on weekends.', ex3_ko = '저는 주말마다 헌책방을 둘러보는 걸 좋아해요.', ex4 = 'We browsed through the market without buying anything.', ex4_ko = '우리는 아무것도 사지 않고 시장을 둘러봤어요.', ex5 = 'She browsed through the rack and pulled out a green dress.', ex5_ko = '그녀는 옷걸이를 둘러보다가 초록색 드레스를 꺼냈어요.' WHERE id = 'col_shopping_10';
UPDATE collocations SET ex3 = 'You can try on as many pairs of jeans as you like.', ex3_ko = '원하는 만큼 여러 청바지를 입어볼 수 있어요.', ex4 = 'He tried on the suit but the shoulders were too tight.', ex4_ko = '그는 정장을 입어봤지만 어깨가 너무 끼었어요.', ex5 = 'Always try on shoes in the afternoon when your feet are bigger.', ex5_ko = '발이 더 부어 있는 오후에 신발을 신어보는 게 좋아요.' WHERE id = 'col_shopping_11';
UPDATE collocations SET ex3 = 'I prefer to pay in cash at small family-owned shops.', ex3_ko = '저는 가족이 운영하는 작은 가게에서는 현금으로 계산하는 걸 선호해요.', ex4 = 'He paid in cash to avoid using his credit card abroad.', ex4_ko = '그는 해외에서 신용카드 사용을 피하려고 현금으로 계산했어요.', ex5 = 'Some food trucks only accept payment in cash.', ex5_ko = '어떤 푸드트럭은 현금으로만 결제를 받아요.' WHERE id = 'col_shopping_12';
UPDATE collocations SET ex3 = 'On rainy days I like to go window shopping at the mall.', ex3_ko = '비 오는 날에 저는 쇼핑몰에서 윈도 쇼핑하는 걸 좋아해요.', ex4 = 'They went window shopping for engagement rings before deciding.', ex4_ko = '그들은 결정하기 전에 약혼 반지를 윈도 쇼핑하러 다녔어요.', ex5 = 'She enjoys going window shopping more than actually buying things.', ex5_ko = '그녀는 실제로 물건을 사는 것보다 윈도 쇼핑하는 걸 더 즐겨요.' WHERE id = 'col_shopping_13';
UPDATE collocations SET ex3 = 'The phone stopped working, so I claimed the warranty.', ex3_ko = '전화기가 작동이 멈춰서 보증을 청구했어요.', ex4 = 'You''ll need the receipt to claim a warranty on this product.', ex4_ko = '이 제품의 보증을 청구하려면 영수증이 필요해요.', ex5 = 'He claimed the warranty after the washing machine broke down.', ex5_ko = '세탁기가 고장난 후 그는 보증을 청구했어요.' WHERE id = 'col_shopping_14';
UPDATE collocations SET ex3 = 'I always compare prices on at least three websites before buying.', ex3_ko = '저는 구매 전에 항상 최소 세 곳의 웹사이트에서 가격을 비교해요.', ex4 = 'Compare prices at different supermarkets to save money.', ex4_ko = '돈을 절약하려면 여러 슈퍼마켓에서 가격을 비교해 보세요.', ex5 = 'She compared prices and chose the most affordable option.', ex5_ko = '그녀는 가격을 비교하고 가장 합리적인 옵션을 골랐어요.' WHERE id = 'col_shopping_15';
UPDATE collocations SET ex3 = 'You should take advantage of the free shipping offer.', ex3_ko = '무료 배송 혜택을 이용하는 게 좋아요.', ex4 = 'They took advantage of the holiday sale to buy a new fridge.', ex4_ko = '그들은 휴일 세일을 이용해 새 냉장고를 샀어요.', ex5 = 'Many shoppers take advantage of cashback offers when buying online.', ex5_ko = '많은 쇼핑객들이 온라인 구매 시 캐시백 혜택을 이용해요.' WHERE id = 'col_shopping_16';
UPDATE collocations SET ex3 = 'We went over budget at the grocery store again this week.', ex3_ko = '이번 주에도 식료품점에서 예산을 초과했어요.', ex4 = 'It''s easy to go over budget when shopping with friends.', ex4_ko = '친구들과 쇼핑할 때 예산을 초과하기 쉬워요.', ex5 = 'The wedding went over budget by several thousand dollars.', ex5_ko = '결혼식은 몇 천 달러나 예산을 초과했어요.' WHERE id = 'col_shopping_17';
UPDATE collocations SET ex3 = 'I got a bargain on a winter coat at the outlet mall.', ex3_ko = '저는 아울렛에서 겨울 코트를 저렴하게 샀어요.', ex4 = 'You can get a real bargain if you shop during off-season sales.', ex4_ko = '비수기 세일 때 쇼핑하면 정말 저렴하게 살 수 있어요.', ex5 = 'They got a bargain on the used car after some haggling.', ex5_ko = '흥정 끝에 그들은 중고차를 저렴하게 샀어요.' WHERE id = 'col_shopping_18';
UPDATE collocations SET ex3 = 'This pharmacy carries a wide range of imported medicines.', ex3_ko = '이 약국은 다양한 수입 의약품을 취급해요.', ex4 = 'Does your shop carry a range of gluten-free options?', ex4_ko = '그 가게에서 다양한 글루텐 프리 제품을 취급하나요?', ex5 = 'The bookstore carries a range of titles in five languages.', ex5_ko = '그 서점은 다섯 개 언어로 된 다양한 책을 취급해요.' WHERE id = 'col_shopping_19';
UPDATE collocations SET ex3 = 'I returned an item by mail because the size was wrong.', ex3_ko = '사이즈가 맞지 않아서 우편으로 물건을 반품했어요.', ex4 = 'You can return an item to any of our branch locations.', ex4_ko = '저희 어느 지점에서든 물건을 반품할 수 있어요.', ex5 = 'She returned the item and received store credit instead.', ex5_ko = '그녀는 물건을 반품하고 대신 상품권을 받았어요.' WHERE id = 'col_shopping_20';

-- ══════════════════════════════════════
-- CAFE
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'You can make a reservation through the cafe''s mobile app.', ex3_ko = '카페 모바일 앱으로 예약을 할 수 있어요.', ex4 = 'She made a reservation for the rooftop seats well in advance.', ex4_ko = '그녀는 옥상 자리를 미리 예약해뒀어요.', ex5 = 'Don''t forget to make a reservation if it''s a busy weekend.', ex5_ko = '바쁜 주말이라면 예약하는 걸 잊지 마세요.' WHERE id = 'col_cafe_01';
UPDATE collocations SET ex3 = 'I placed an order at the counter and waited for my name to be called.', ex3_ko = '카운터에서 주문을 하고 제 이름이 불릴 때까지 기다렸어요.', ex4 = 'They placed their orders together to make things easier.', ex4_ko = '그들은 일을 수월하게 하기 위해 함께 주문했어요.', ex5 = 'You can place an order through the kiosk if there''s a line.', ex5_ko = '줄이 길면 키오스크로 주문할 수 있어요.' WHERE id = 'col_cafe_02';
UPDATE collocations SET ex3 = 'Could we pay the check separately, please?', ex3_ko = '각자 계산할 수 있을까요?', ex4 = 'She quietly paid the check while he was in the restroom.', ex4_ko = '그가 화장실에 간 사이 그녀는 조용히 계산을 했어요.', ex5 = 'We paid the check and left a generous tip for the waiter.', ex5_ko = '우리는 계산을 하고 웨이터에게 넉넉한 팁을 남겼어요.' WHERE id = 'col_cafe_03';
UPDATE collocations SET ex3 = 'Please take a seat by the window — the view is lovely.', ex3_ko = '창가에 자리를 잡으세요 — 전망이 아름다워요.', ex4 = 'He took a seat at the bar and ordered an espresso.', ex4_ko = '그는 바에 자리를 잡고 에스프레소를 주문했어요.', ex5 = 'We took a seat outside to enjoy the spring weather.', ex5_ko = '우리는 봄 날씨를 즐기기 위해 야외에 자리를 잡았어요.' WHERE id = 'col_cafe_04';
UPDATE collocations SET ex3 = 'You can get a refill on your drip coffee at no extra charge.', ex3_ko = '드립 커피는 추가 요금 없이 리필을 받을 수 있어요.', ex4 = 'He got a refill before settling in for a long study session.', ex4_ko = '그는 긴 공부를 위해 자리 잡기 전에 리필을 받았어요.', ex5 = 'She got a free refill because she''s a loyalty member.', ex5_ko = '그녀는 멤버십 회원이라서 무료 리필을 받았어요.' WHERE id = 'col_cafe_05';
UPDATE collocations SET ex3 = 'Let''s have a bite at that new cafe on the corner.', ex3_ko = '저 모퉁이의 새 카페에서 간단히 먹어요.', ex4 = 'I just want to have a bite — nothing too heavy.', ex4_ko = '간단히 좀 먹고 싶어요 — 너무 무거운 건 말고요.', ex5 = 'They had a quick bite before heading to the museum.', ex5_ko = '그들은 박물관으로 가기 전에 간단히 먹었어요.' WHERE id = 'col_cafe_06';
UPDATE collocations SET ex3 = '"Keep the change," he said, leaving a generous tip.', ex3_ko = '"잔돈은 가지세요," 그는 넉넉한 팁을 남기며 말했어요.', ex4 = 'She always tells the driver to keep the change.', ex4_ko = '그녀는 항상 운전기사에게 잔돈은 가지라고 해요.', ex5 = 'He paid with a twenty and told the cashier to keep the change.', ex5_ko = '그는 20달러로 결제하고 캐셔에게 잔돈은 가지라고 했어요.' WHERE id = 'col_cafe_07';
UPDATE collocations SET ex3 = 'Could you make a suggestion for a non-dairy drink?', ex3_ko = '유제품이 없는 음료를 추천해 줄 수 있어요?', ex4 = 'She made a suggestion to try the new pastry of the week.', ex4_ko = '그녀는 이번 주의 새로운 페이스트리를 시도해 보라고 추천했어요.', ex5 = 'May I make a suggestion based on your usual order?', ex5_ko = '평소 주문하시는 것을 바탕으로 추천을 드려도 될까요?' WHERE id = 'col_cafe_08';
UPDATE collocations SET ex3 = 'Could you bring the menu over to our table, please?', ex3_ko = '메뉴판을 저희 테이블로 가져다 줄 수 있을까요?', ex4 = 'The hostess brought the menu and explained today''s specials.', ex4_ko = '직원이 메뉴판을 가져와서 오늘의 특선을 설명해 줬어요.', ex5 = 'They brought the kids'' menu without us even asking.', ex5_ko = '우리가 부탁하지도 않았는데 어린이 메뉴판을 가져다 줬어요.' WHERE id = 'col_cafe_09';
UPDATE collocations SET ex3 = 'Could you hold a table for four under my name?', ex3_ko = '제 이름으로 4인 테이블을 잡아둘 수 있을까요?', ex4 = 'They held a table for us even though we were running late.', ex4_ko = '우리가 늦었는데도 그들은 우리를 위해 자리를 맡아뒀어요.', ex5 = 'She held a table by the window so we could watch the rain.', ex5_ko = '비를 볼 수 있도록 그녀가 창가 자리를 맡아뒀어요.' WHERE id = 'col_cafe_10';
UPDATE collocations SET ex3 = 'Let''s split the bill three ways since we each had our own dish.', ex3_ko = '각자 다른 음식을 시켰으니 셋이 계산을 나눠요.', ex4 = 'They decided to split the bill evenly to keep it simple.', ex4_ko = '그들은 간단하게 하려고 계산을 똑같이 나눴어요.', ex5 = 'Splitting the bill is normal among friends in our group.', ex5_ko = '우리 친구들 사이에서 계산을 나누는 건 흔한 일이에요.' WHERE id = 'col_cafe_11';
UPDATE collocations SET ex3 = 'I asked the waiter for a recommendation on a light dessert.', ex3_ko = '저는 웨이터에게 가벼운 디저트 추천을 부탁했어요.', ex4 = 'When in doubt, ask for a recommendation from the staff.', ex4_ko = '잘 모를 때는 직원에게 추천을 부탁하세요.', ex5 = 'He asked for a recommendation since it was his first visit.', ex5_ko = '그는 첫 방문이라 추천을 부탁했어요.' WHERE id = 'col_cafe_12';
UPDATE collocations SET ex3 = 'I love coming here just to enjoy the atmosphere of soft jazz.', ex3_ko = '저는 잔잔한 재즈 분위기를 즐기러 여기 오는 걸 좋아해요.', ex4 = 'They sat outside to enjoy the atmosphere of the street market.', ex4_ko = '그들은 거리 시장의 분위기를 즐기기 위해 야외에 앉았어요.', ex5 = 'The cafe is small but you can really enjoy the atmosphere.', ex5_ko = '카페는 작지만 분위기를 정말 즐길 수 있어요.' WHERE id = 'col_cafe_13';
UPDATE collocations SET ex3 = 'Three iced lattes to take away, please.', ex3_ko = '아이스 라테 세 잔 테이크아웃으로 주세요.', ex4 = 'She prefers to take away her morning coffee on workdays.', ex4_ko = '그녀는 평일에 아침 커피를 테이크아웃하는 걸 선호해요.', ex5 = 'You can save a few cents by taking your drink away in a reusable cup.', ex5_ko = '재사용 컵으로 테이크아웃하면 몇 푼 아낄 수 있어요.' WHERE id = 'col_cafe_14';
UPDATE collocations SET ex3 = 'We''ve run out of paper cups, so please use a mug.', ex3_ko = '종이컵이 다 떨어져서, 머그컵을 사용해 주세요.', ex4 = 'The cafe runs out of croissants by lunchtime every day.', ex4_ko = '그 카페는 매일 점심 시간 무렵에 크루아상이 다 떨어져요.', ex5 = 'I almost ran out of cash before the trip ended.', ex5_ko = '여행이 끝나기 전에 현금이 거의 다 떨어졌어요.' WHERE id = 'col_cafe_15';
UPDATE collocations SET ex3 = 'We finally caught up over coffee after months of busy schedules.', ex3_ko = '몇 달간의 바쁜 일정 끝에 우리는 마침내 커피 한잔하며 근황을 나눴어요.', ex4 = 'She invited me to catch up over coffee at her favorite spot.', ex4_ko = '그녀는 자기가 좋아하는 곳에서 커피 한잔하며 근황 나누자고 저를 초대했어요.', ex5 = 'Catching up over coffee is one of my favorite weekend habits.', ex5_ko = '커피 한잔하며 근황을 나누는 건 제 좋아하는 주말 습관 중 하나예요.' WHERE id = 'col_cafe_16';
UPDATE collocations SET ex3 = 'I always go for a coffee with my mom on Sunday mornings.', ex3_ko = '저는 일요일 아침마다 엄마와 커피 마시러 가요.', ex4 = 'They went for a coffee to discuss the new business idea.', ex4_ko = '그들은 새로운 사업 아이디어를 논의하기 위해 커피 마시러 갔어요.', ex5 = 'Let''s go for a coffee and finish the conversation we started.', ex5_ko = '커피 마시러 가서 못다 한 이야기를 마저 해요.' WHERE id = 'col_cafe_17';
UPDATE collocations SET ex3 = 'They brew coffee using a single-origin Ethiopian bean.', ex3_ko = '그들은 싱글 오리진 에티오피아 원두로 커피를 내려요.', ex4 = 'He learned to brew coffee from a barista in Melbourne.', ex4_ko = '그는 멜버른의 한 바리스타에게서 커피 내리는 법을 배웠어요.', ex5 = 'The smell of coffee being brewed filled the whole apartment.', ex5_ko = '커피를 내리는 향이 아파트 전체에 가득했어요.' WHERE id = 'col_cafe_18';
UPDATE collocations SET ex3 = 'I left a tip in cash even though I paid by card.', ex3_ko = '저는 카드로 결제했지만 팁은 현금으로 남겼어요.', ex4 = 'They left a small tip and thanked the server warmly.', ex4_ko = '그들은 적은 팁을 남기고 서버에게 따뜻하게 감사를 표했어요.', ex5 = 'You don''t have to leave a tip at counter-service cafes.', ex5_ko = '카운터 서비스 카페에서는 팁을 남기지 않아도 돼요.' WHERE id = 'col_cafe_19';
UPDATE collocations SET ex3 = '"I''ll sit in for now," she said as she found a corner table.', ex3_ko = '"일단 매장에서 마실게요," 그녀는 구석 테이블을 찾으며 말했어요.', ex4 = 'They decided to sit in to enjoy the cafe''s warm interior.', ex4_ko = '그들은 카페의 따뜻한 인테리어를 즐기려고 매장에서 먹기로 했어요.', ex5 = 'It''s nicer to sit in than to take away on a cold day.', ex5_ko = '추운 날엔 테이크아웃보다 매장에서 먹는 게 더 좋아요.' WHERE id = 'col_cafe_20';

-- ══════════════════════════════════════
-- TRANSPORT
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'My mother takes a bus to her yoga class every Tuesday.', ex3_ko = '저희 어머니는 매주 화요일에 요가 수업에 버스를 타고 가세요.', ex4 = 'It''s cheaper to take a bus than to drive into the city.', ex4_ko = '시내로 운전해서 가는 것보다 버스를 타는 게 더 저렴해요.', ex5 = 'We took a bus through the countryside and enjoyed the views.', ex5_ko = '우리는 시골을 가로지르는 버스를 타고 풍경을 즐겼어요.' WHERE id = 'col_transport_01';
UPDATE collocations SET ex3 = 'They made their connection with five minutes to spare.', ex3_ko = '그들은 5분 여유를 두고 환승에 성공했어요.', ex4 = 'I missed the train and couldn''t make my connection in Berlin.', ex4_ko = '저는 기차를 놓쳐서 베를린에서 환승하지 못했어요.', ex5 = 'Making the connection is tight, but it should be possible.', ex5_ko = '환승 시간이 빠듯하지만 가능할 거예요.' WHERE id = 'col_transport_02';
UPDATE collocations SET ex3 = 'Please get on at the front door and tap your card.', ex3_ko = '앞문으로 타시고 카드를 찍어 주세요.', ex4 = 'She got on the elevator carrying three bags of groceries.', ex4_ko = '그녀는 식료품 가방 세 개를 들고 엘리베이터에 탔어요.', ex5 = 'I got on the train just before the doors closed.', ex5_ko = '문이 닫히기 직전에 저는 기차에 탔어요.' WHERE id = 'col_transport_03';
UPDATE collocations SET ex3 = 'Let me know when to get off — I''m not familiar with this area.', ex3_ko = '언제 내려야 하는지 알려주세요 — 이 지역을 잘 몰라요.', ex4 = 'We got off the bus and walked the rest of the way.', ex4_ko = '우리는 버스에서 내려 나머지 길은 걸어갔어요.', ex5 = 'He fell asleep and missed the stop where he should have got off.', ex5_ko = '그는 잠들어서 내려야 할 정류장을 지나쳤어요.' WHERE id = 'col_transport_04';
UPDATE collocations SET ex3 = 'I''m running late, but I should be there in 15 minutes.', ex3_ko = '늦고 있는데, 15분 후에는 도착할 수 있을 거예요.', ex4 = 'The flight is running late due to bad weather at the origin.', ex4_ko = '출발지의 악천후로 인해 항공편이 지연되고 있어요.', ex5 = 'She''s running late because of an unexpected meeting.', ex5_ko = '그녀는 예상치 못한 회의로 인해 늦어지고 있어요.' WHERE id = 'col_transport_05';
UPDATE collocations SET ex3 = 'Thanks for holding the door — my hands are full.', ex3_ko = '문 잡아줘서 고마워요 — 손이 가득해서요.', ex4 = 'He held the door for the older man getting off the train.', ex4_ko = '그는 기차에서 내리는 노신사를 위해 문을 잡아줬어요.', ex5 = 'She held the door open with her foot while juggling bags.', ex5_ko = '그녀는 가방을 들고 있으면서 발로 문을 잡았어요.' WHERE id = 'col_transport_06';
UPDATE collocations SET ex3 = 'The subway usually keeps to schedule, even at rush hour.', ex3_ko = '지하철은 출퇴근 시간에도 보통 일정을 지켜요.', ex4 = 'It''s impressive how Japanese trains keep to schedule to the minute.', ex4_ko = '일본 기차가 분 단위로 일정을 지키는 게 인상적이에요.', ex5 = 'The tour bus kept to schedule despite the heavy crowds.', ex5_ko = '관광버스는 인파에도 불구하고 일정을 지켰어요.' WHERE id = 'col_transport_07';
UPDATE collocations SET ex3 = 'I almost didn''t catch my flight because of the traffic.', ex3_ko = '교통 체증 때문에 비행기를 놓칠 뻔했어요.', ex4 = 'He caught the last flight back home that evening.', ex4_ko = '그는 그날 저녁 집으로 돌아가는 마지막 비행기를 탔어요.', ex5 = 'We had to skip lunch to catch our connecting flight.', ex5_ko = '우리는 연결 비행기를 타기 위해 점심을 거너야 했어요.' WHERE id = 'col_transport_08';
UPDATE collocations SET ex3 = 'We got stuck in traffic and missed the start of the concert.', ex3_ko = '우리는 교통 체증에 걸려서 콘서트 시작을 놓쳤어요.', ex4 = 'You''ll get stuck in traffic if you leave any later than seven.', ex4_ko = '7시보다 늦게 출발하면 교통 체증에 걸릴 거예요.', ex5 = 'Taking the back roads helped us avoid getting stuck in traffic.', ex5_ko = '뒷길로 가니까 교통 체증을 피할 수 있었어요.' WHERE id = 'col_transport_09';
UPDATE collocations SET ex3 = 'Don''t miss the bus — there isn''t another one for an hour.', ex3_ko = '버스 놓치지 마세요 — 한 시간 동안 다음 버스가 없어요.', ex4 = 'He missed the bus by just a few seconds.', ex4_ko = '그는 몇 초 차이로 버스를 놓쳤어요.', ex5 = 'She missed the last bus and ended up walking home.', ex5_ko = '그녀는 막차를 놓쳐서 결국 집까지 걸어갔어요.' WHERE id = 'col_transport_10';
UPDATE collocations SET ex3 = 'I booked a ticket for the early morning train to save money.', ex3_ko = '돈을 아끼려고 이른 아침 기차표를 예매했어요.', ex4 = 'She booked her ticket months ago to get the best price.', ex4_ko = '그녀는 가장 좋은 가격을 위해 몇 달 전에 표를 예매했어요.', ex5 = 'You can book a ticket on the app and skip the line.', ex5_ko = '앱으로 표를 예매하고 줄을 건너뛸 수 있어요.' WHERE id = 'col_transport_11';
UPDATE collocations SET ex3 = 'Transfer lines at the next station to reach the museum.', ex3_ko = '박물관에 가려면 다음 역에서 노선을 환승하세요.', ex4 = 'She had to transfer lines three times to get to the airport.', ex4_ko = '그녀는 공항까지 가려고 세 번이나 노선을 환승해야 했어요.', ex5 = 'The map shows you where to transfer lines clearly.', ex5_ko = '지도가 노선 환승 위치를 명확하게 보여줘요.' WHERE id = 'col_transport_12';
UPDATE collocations SET ex3 = 'I tried to hail a taxi in the rain, but none would stop.', ex3_ko = '빗속에서 택시를 잡으려 했는데 아무도 서지 않았어요.', ex4 = 'He hailed a taxi from his phone using a ride-share app.', ex4_ko = '그는 공유 차량 앱으로 휴대폰에서 택시를 잡았어요.', ex5 = 'You can hail a taxi at any major intersection downtown.', ex5_ko = '시내 어느 주요 교차로에서나 택시를 잡을 수 있어요.' WHERE id = 'col_transport_13';
UPDATE collocations SET ex3 = 'We set off at sunrise to make the most of the day.', ex3_ko = '우리는 하루를 알차게 보내기 위해 해 뜰 때 출발했어요.', ex4 = 'They set off on foot since the road was blocked.', ex4_ko = '도로가 막혀서 그들은 걸어서 출발했어요.', ex5 = 'She set off with just a backpack and a small map.', ex5_ko = '그녀는 배낭 하나와 작은 지도만 들고 출발했어요.' WHERE id = 'col_transport_14';
UPDATE collocations SET ex3 = 'Pull over here — I can walk the rest of the way.', ex3_ko = '여기서 세워주세요 — 나머지 길은 걸을 수 있어요.', ex4 = 'She pulled over to answer the urgent phone call.', ex4_ko = '그녀는 급한 전화를 받기 위해 차를 세웠어요.', ex5 = 'The driver pulled over to let the ambulance pass.', ex5_ko = '운전자는 구급차가 지나갈 수 있도록 차를 세웠어요.' WHERE id = 'col_transport_15';
UPDATE collocations SET ex3 = 'My coworker gave me a ride home when my car broke down.', ex3_ko = '제 차가 고장 났을 때 동료가 집까지 태워다 줬어요.', ex4 = 'Could you give us a ride to the venue tonight?', ex4_ko = '오늘 밤 행사장까지 우리를 태워다 줄 수 있어요?', ex5 = 'He gave his sister a ride to college every Sunday evening.', ex5_ko = '그는 매주 일요일 저녁에 누나를 대학까지 태워다 줬어요.' WHERE id = 'col_transport_16';
UPDATE collocations SET ex3 = 'We checked in at the hotel and dropped off our luggage.', ex3_ko = '우리는 호텔에 체크인하고 짐을 맡겼어요.', ex4 = 'You can check in online up to 24 hours before your flight.', ex4_ko = '비행기 출발 24시간 전까지 온라인으로 체크인할 수 있어요.', ex5 = 'They checked in early but their room wasn''t ready yet.', ex5_ko = '그들은 일찍 체크인했지만 방이 아직 준비되지 않았어요.' WHERE id = 'col_transport_17';
UPDATE collocations SET ex3 = 'We went through customs quickly because we had nothing to declare.', ex3_ko = '신고할 것이 없어서 우리는 세관을 빠르게 통과했어요.', ex4 = 'Going through customs can take a while at busy airports.', ex4_ko = '바쁜 공항에서는 세관을 통과하는 데 시간이 좀 걸릴 수 있어요.', ex5 = 'She went through customs without being asked any questions.', ex5_ko = '그녀는 아무 질문도 받지 않고 세관을 통과했어요.' WHERE id = 'col_transport_18';
UPDATE collocations SET ex3 = 'You can top up your transit card at any 7-Eleven store.', ex3_ko = '어느 세븐일레븐에서나 교통 카드를 충전할 수 있어요.', ex4 = 'I forgot to top up my card and got stopped at the gate.', ex4_ko = '카드 충전을 잊어서 게이트에서 막혔어요.', ex5 = 'She tops up her card automatically each month through the app.', ex5_ko = '그녀는 매달 앱을 통해 자동으로 카드를 충전해요.' WHERE id = 'col_transport_19';
UPDATE collocations SET ex3 = 'We hit the road at six and drove until lunchtime.', ex3_ko = '우리는 6시에 출발해서 점심 시간까지 운전했어요.', ex4 = 'It''s time to hit the road — we''ve got a long drive ahead.', ex4_ko = '이제 출발해야 해요 — 갈 길이 멀어요.', ex5 = 'They hit the road right after breakfast to beat the traffic.', ex5_ko = '그들은 교통 체증을 피하기 위해 아침 식사 직후 출발했어요.' WHERE id = 'col_transport_20';

-- ══════════════════════════════════════
-- HEALTH
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'My grandfather made a remarkable recovery after his heart surgery.', ex3_ko = '저희 할아버지는 심장 수술 후 놀라운 회복을 하셨어요.', ex4 = 'The patient is making a steady recovery in the rehab center.', ex4_ko = '환자는 재활 센터에서 꾸준히 회복하고 있어요.', ex5 = 'It took her months to make a full recovery from the accident.', ex5_ko = '그녀가 사고에서 완전히 회복하는 데 몇 달이 걸렸어요.' WHERE id = 'col_health_01';
UPDATE collocations SET ex3 = 'Take your medicine with a full glass of water.', ex3_ko = '약을 충분한 물 한 잔과 함께 복용하세요.', ex4 = 'She set an alarm so she wouldn''t forget to take her medicine.', ex4_ko = '그녀는 약 먹는 걸 잊지 않으려고 알람을 설정했어요.', ex5 = 'Take your medicine even if you start to feel better.', ex5_ko = '컨디션이 좋아지기 시작해도 약을 계속 복용하세요.' WHERE id = 'col_health_02';
UPDATE collocations SET ex3 = 'Try to get some exercise during your lunch break each day.', ex3_ko = '매일 점심시간에 운동을 좀 하려고 해보세요.', ex4 = 'She gets her exercise by walking the dog every morning.', ex4_ko = '그녀는 매일 아침 강아지 산책으로 운동해요.', ex5 = 'Getting enough exercise can really improve your sleep quality.', ex5_ko = '충분한 운동은 수면의 질을 크게 향상시킬 수 있어요.' WHERE id = 'col_health_03';
UPDATE collocations SET ex3 = 'He''s having surgery on his shoulder next Tuesday.', ex3_ko = '그는 다음 주 화요일에 어깨 수술을 받아요.', ex4 = 'She had surgery as a child and doesn''t remember much of it.', ex4_ko = '그녀는 어린 시절에 수술을 받아서 잘 기억나지 않아요.', ex5 = 'They had surgery on the same day at the same hospital.', ex5_ko = '그들은 같은 날 같은 병원에서 수술을 받았어요.' WHERE id = 'col_health_04';
UPDATE collocations SET ex3 = 'Walking 10,000 steps a day is a simple way to keep fit.', ex3_ko = '하루 만 보 걷기는 건강을 유지하는 간단한 방법이에요.', ex4 = 'He keeps fit by swimming three times a week.', ex4_ko = '그는 일주일에 세 번 수영해서 건강을 유지해요.', ex5 = 'Yoga and proper nutrition help her keep fit at 60.', ex5_ko = '요가와 올바른 영양 섭취가 60대인 그녀가 건강을 유지하는 데 도움이 돼요.' WHERE id = 'col_health_05';
UPDATE collocations SET ex3 = 'It took two years for him to break the smoking habit.', ex3_ko = '그가 흡연 습관을 끊는 데 2년이 걸렸어요.', ex4 = 'Breaking a habit becomes easier when you replace it with a new one.', ex4_ko = '새로운 습관으로 대체하면 습관을 끊기가 더 쉬워져요.', ex5 = 'She broke the habit of biting her nails by wearing nail polish.', ex5_ko = '그녀는 매니큐어를 발라서 손톱 깨무는 습관을 끊었어요.' WHERE id = 'col_health_06';
UPDATE collocations SET ex3 = 'My daughter is running a fever and won''t eat anything.', ex3_ko = '제 딸이 열이 나고 아무것도 안 먹어요.', ex4 = 'He kept running a low fever for several days.', ex4_ko = '그는 며칠 동안 미열이 계속 났어요.', ex5 = 'If you''re running a fever over 38°C, please call the clinic.', ex5_ko = '열이 38도가 넘으면 병원에 전화해 주세요.' WHERE id = 'col_health_07';
UPDATE collocations SET ex3 = 'I made an appointment for a dental cleaning next month.', ex3_ko = '저는 다음 달 치과 스케일링을 예약했어요.', ex4 = 'She made an appointment with the eye doctor for an annual checkup.', ex4_ko = '그녀는 안과 정기 검진 예약을 했어요.', ex5 = 'You can make an appointment online or by calling the clinic.', ex5_ko = '온라인 또는 병원에 전화해서 예약할 수 있어요.' WHERE id = 'col_health_08';
UPDATE collocations SET ex3 = 'She gets a checkup every spring as part of her health routine.', ex3_ko = '그녀는 건강 관리의 일환으로 매년 봄에 건강 검진을 받아요.', ex4 = 'My dad got a checkup that revealed early signs of diabetes.', ex4_ko = '저희 아빠는 건강 검진을 받고 당뇨 초기 증상을 발견했어요.', ex5 = 'I''m planning to get a checkup before the new semester starts.', ex5_ko = '새 학기가 시작하기 전에 건강 검진을 받을 계획이에요.' WHERE id = 'col_health_09';
UPDATE collocations SET ex3 = 'Take a rest for a few minutes between sets at the gym.', ex3_ko = '헬스장에서 세트 사이에 몇 분간 휴식을 취하세요.', ex4 = 'The doctor told her to take a rest for at least a week.', ex4_ko = '의사는 그녀에게 최소 일주일은 휴식을 취하라고 했어요.', ex5 = 'I took a rest in the shade before continuing the hike.', ex5_ko = '저는 등산을 계속하기 전에 그늘에서 휴식을 취했어요.' WHERE id = 'col_health_10';
UPDATE collocations SET ex3 = 'My nutritionist designed a diet I can follow without feeling hungry.', ex3_ko = '영양사가 배고프지 않게 따를 수 있는 식단을 짜줬어요.', ex4 = 'He follows a Mediterranean diet for heart health.', ex4_ko = '그는 심장 건강을 위해 지중해식 식단을 따라요.', ex5 = 'Following a balanced diet is more sustainable than extreme diets.', ex5_ko = '균형 잡힌 식단을 따르는 것이 극단적인 다이어트보다 지속 가능해요.' WHERE id = 'col_health_11';
UPDATE collocations SET ex3 = 'She lost weight by simply walking more and eating less sugar.', ex3_ko = '그녀는 단순히 더 많이 걷고 설탕을 덜 먹어서 체중을 줄였어요.', ex4 = 'He lost weight quickly but gained it all back later.', ex4_ko = '그는 체중을 빨리 줄였지만 나중에 다 다시 쪘어요.', ex5 = 'Try not to lose weight too fast — slow progress is healthier.', ex5_ko = '너무 빠르게 체중을 줄이지 마세요 — 천천히 진행하는 게 더 건강해요.' WHERE id = 'col_health_12';
UPDATE collocations SET ex3 = 'Eating ginger and garlic is said to boost immunity.', ex3_ko = '생강과 마늘을 먹는 것이 면역력을 높여준다고 해요.', ex4 = 'Regular exercise can boost your immunity over time.', ex4_ko = '규칙적인 운동은 시간이 지나면서 면역력을 높여줄 수 있어요.', ex5 = 'She drinks a green smoothie every morning to boost her immunity.', ex5_ko = '그녀는 면역력을 높이기 위해 매일 아침 그린 스무디를 마셔요.' WHERE id = 'col_health_13';
UPDATE collocations SET ex3 = 'Meditation has helped me manage stress at work.', ex3_ko = '명상은 제가 직장에서 스트레스를 관리하는 데 도움이 됐어요.', ex4 = 'She manages stress by journaling every night before bed.', ex4_ko = '그녀는 잠자기 전 일기 쓰기로 스트레스를 관리해요.', ex5 = 'Companies should help employees manage stress more effectively.', ex5_ko = '회사는 직원들이 스트레스를 더 효과적으로 관리하도록 도와야 해요.' WHERE id = 'col_health_14';
UPDATE collocations SET ex3 = 'He suffers from seasonal allergies every spring.', ex3_ko = '그는 매년 봄마다 계절성 알레르기를 앓아요.', ex4 = 'She has suffered from migraines since her teenage years.', ex4_ko = '그녀는 십대 시절부터 편두통을 앓고 있어요.', ex5 = 'Many elderly people suffer from joint pain in cold weather.', ex5_ko = '많은 노인분들이 추운 날씨에 관절 통증을 앓으세요.' WHERE id = 'col_health_15';
UPDATE collocations SET ex3 = 'I caught a cold during the long flight to Europe.', ex3_ko = '저는 유럽으로 가는 긴 비행 중에 감기에 걸렸어요.', ex4 = 'She caught a cold from her son who was sick last week.', ex4_ko = '그녀는 지난주에 아팠던 아들에게서 감기에 옮았어요.', ex5 = 'Try not to catch a cold during finals week.', ex5_ko = '기말고사 주에 감기에 걸리지 않도록 조심하세요.' WHERE id = 'col_health_16';
UPDATE collocations SET ex3 = 'He went under the knife to remove a small tumor.', ex3_ko = '그는 작은 종양을 제거하기 위해 수술대에 올랐어요.', ex4 = 'She was reluctant to go under the knife for a cosmetic procedure.', ex4_ko = '그녀는 미용 시술을 위해 수술대에 오르는 걸 망설였어요.', ex5 = 'After years of pain, he finally went under the knife.', ex5_ko = '몇 년간의 고통 끝에 그는 결국 수술대에 올랐어요.' WHERE id = 'col_health_17';
UPDATE collocations SET ex3 = 'She sought medical attention as soon as the rash appeared.', ex3_ko = '그녀는 발진이 나타나자마자 진료를 받았어요.', ex4 = 'Don''t wait — seek medical attention for chest pain immediately.', ex4_ko = '기다리지 마세요 — 가슴 통증은 즉시 진료를 받으세요.', ex5 = 'He sought medical attention abroad while traveling for work.', ex5_ko = '그는 출장 중 해외에서 진료를 받았어요.' WHERE id = 'col_health_18';
UPDATE collocations SET ex3 = 'You need to be in good shape to climb that mountain safely.', ex3_ko = '그 산을 안전하게 오르려면 건강 상태가 좋아야 해요.', ex4 = 'She''s been in good shape since starting Pilates last year.', ex4_ko = '그녀는 작년에 필라테스를 시작한 후 건강 상태가 좋아요.', ex5 = 'For his age, my grandfather is in remarkably good shape.', ex5_ko = '나이에 비해 저희 할아버지는 놀라울 정도로 건강 상태가 좋으세요.' WHERE id = 'col_health_19';
UPDATE collocations SET ex3 = 'I''m trying to cut down on screen time before bed.', ex3_ko = '저는 자기 전 화면 시간을 줄이려고 노력 중이에요.', ex4 = 'He cut down on red meat for environmental reasons.', ex4_ko = '그는 환경적인 이유로 적색육 섭취를 줄였어요.', ex5 = 'She cut down on coffee and her sleep improved noticeably.', ex5_ko = '그녀는 커피를 줄였고 수면이 눈에 띄게 좋아졌어요.' WHERE id = 'col_health_20';

-- ══════════════════════════════════════
-- TRAVEL
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'I made a booking at a guesthouse run by a local family.', ex3_ko = '저는 현지 가족이 운영하는 게스트하우스를 예약했어요.', ex4 = 'She made a booking for two nights with breakfast included.', ex4_ko = '그녀는 조식 포함 2박 예약을 했어요.', ex5 = 'Make a booking now while the early-bird discount is still available.', ex5_ko = '얼리버드 할인이 아직 가능할 때 지금 예약하세요.' WHERE id = 'col_travel_01';
UPDATE collocations SET ex3 = 'They took a road trip across the entire country.', ex3_ko = '그들은 나라 전체를 자동차로 여행했어요.', ex4 = 'I want to take a trip somewhere quiet over the long weekend.', ex4_ko = '저는 긴 주말에 조용한 곳으로 여행을 가고 싶어요.', ex5 = 'She took a trip to her hometown for the first time in years.', ex5_ko = '그녀는 몇 년 만에 고향으로 여행을 갔어요.' WHERE id = 'col_travel_02';
UPDATE collocations SET ex3 = 'I had to apply six weeks early to get a visa for India.', ex3_ko = '인도 비자를 받기 위해 저는 6주 일찍 신청해야 했어요.', ex4 = 'She got a student visa to study in Australia for a year.', ex4_ko = '그녀는 호주에서 1년 공부하기 위해 학생 비자를 받았어요.', ex5 = 'You can get a visa on arrival in some countries.', ex5_ko = '어떤 나라에서는 도착 시 비자를 받을 수 있어요.' WHERE id = 'col_travel_03';
UPDATE collocations SET ex3 = 'I packed my luggage carefully so nothing would break.', ex3_ko = '저는 아무것도 깨지지 않도록 짐을 조심스럽게 쌌어요.', ex4 = 'He packed his luggage in twenty minutes and rushed to the airport.', ex4_ko = '그는 20분 만에 짐을 싸고 공항으로 서둘렀어요.', ex5 = 'She rolls her clothes when she packs her luggage to save space.', ex5_ko = '그녀는 공간을 절약하기 위해 짐을 쌀 때 옷을 둘둘 말아요.' WHERE id = 'col_travel_04';
UPDATE collocations SET ex3 = 'We checked in late and missed the welcome drink.', ex3_ko = '우리는 늦게 체크인해서 웰컴 드링크를 놓쳤어요.', ex4 = 'She checked in at the kiosk to avoid the long counter line.', ex4_ko = '그녀는 긴 카운터 줄을 피하려고 키오스크에서 체크인했어요.', ex5 = 'Let''s check in early so we have more time to explore.', ex5_ko = '탐험할 시간을 더 갖기 위해 일찍 체크인해요.' WHERE id = 'col_travel_05';
UPDATE collocations SET ex3 = 'He made a flexible itinerary to allow for spontaneous changes.', ex3_ko = '그는 즉흥적인 변경이 가능하도록 유연한 일정을 짰어요.', ex4 = 'We made an itinerary together using a shared online document.', ex4_ko = '우리는 공유 온라인 문서로 함께 일정을 짰어요.', ex5 = 'Her itinerary included a full day at the local food market.', ex5_ko = '그녀의 일정에는 현지 음식 시장에서 보내는 하루가 포함됐어요.' WHERE id = 'col_travel_06';
UPDATE collocations SET ex3 = 'They went sightseeing by bike to cover more ground.', ex3_ko = '그들은 더 넓은 지역을 둘러보기 위해 자전거로 관광했어요.', ex4 = 'We''ll go sightseeing in the morning when it''s cooler.', ex4_ko = '시원한 아침에 관광을 갈 거예요.', ex5 = 'Going sightseeing with a local guide gave us deeper insights.', ex5_ko = '현지 가이드와 관광하니까 더 깊은 통찰을 얻었어요.' WHERE id = 'col_travel_07';
UPDATE collocations SET ex3 = 'He took photos of the locals with their permission.', ex3_ko = '그는 허락을 받고 현지인들의 사진을 찍었어요.', ex4 = 'I take photos mostly with my phone these days.', ex4_ko = '요즘은 주로 휴대폰으로 사진을 찍어요.', ex5 = 'She took photos of every meal during the food tour.', ex5_ko = '그녀는 음식 투어 중 모든 식사 사진을 찍었어요.' WHERE id = 'col_travel_08';
UPDATE collocations SET ex3 = 'I keep a small diary just for travel memories.', ex3_ko = '저는 여행 추억만을 위한 작은 일기를 써요.', ex4 = 'Keeping a diary helped her process the long journey.', ex4_ko = '일기를 쓰는 것이 그녀가 긴 여정을 정리하는 데 도움이 됐어요.', ex5 = 'He kept a diary in two languages for practice.', ex5_ko = '그는 연습을 위해 두 가지 언어로 일기를 썼어요.' WHERE id = 'col_travel_09';
UPDATE collocations SET ex3 = 'We lost our way in the markets but enjoyed the unexpected detour.', ex3_ko = '우리는 시장에서 길을 잃었지만 뜻밖의 우회로를 즐겼어요.', ex4 = 'It''s easy to lose your way in cities without grid streets.', ex4_ko = '격자형 도로가 없는 도시에서는 길을 잃기 쉬워요.', ex5 = 'She lost her way and ended up at a beautiful park.', ex5_ko = '그녀는 길을 잃었지만 결국 아름다운 공원에 도착했어요.' WHERE id = 'col_travel_10';
UPDATE collocations SET ex3 = 'I prefer to exchange currency at official banks rather than street vendors.', ex3_ko = '저는 길거리 상인보다 공식 은행에서 환전하는 걸 선호해요.', ex4 = 'You can exchange currency at the airport, but rates are usually worse.', ex4_ko = '공항에서 환전할 수 있지만 환율이 보통 더 나빠요.', ex5 = 'She exchanged currency just enough for the first day''s expenses.', ex5_ko = '그녀는 첫날 비용에 딱 맞춰 환전했어요.' WHERE id = 'col_travel_11';
UPDATE collocations SET ex3 = 'They booked accommodation through a homestay platform.', ex3_ko = '그들은 홈스테이 플랫폼을 통해 숙박을 예약했어요.', ex4 = 'Always book accommodation that offers free cancellation.', ex4_ko = '무료 취소가 가능한 숙박을 항상 예약하세요.', ex5 = 'She booked accommodation near the conference venue to save commuting time.', ex5_ko = '그녀는 통근 시간을 절약하기 위해 컨퍼런스 장소 근처에 숙박을 예약했어요.' WHERE id = 'col_travel_12';
UPDATE collocations SET ex3 = 'He picked up a bit of French during his summer in Paris.', ex3_ko = '그는 파리에서 보낸 여름 동안 프랑스어를 조금 익혔어요.', ex4 = 'You can pick up a language faster if you talk to locals daily.', ex4_ko = '현지인과 매일 대화하면 언어를 더 빨리 익힐 수 있어요.', ex5 = 'She picked up enough Korean to order food and ask directions.', ex5_ko = '그녀는 음식을 주문하고 길을 물을 만큼의 한국어를 익혔어요.' WHERE id = 'col_travel_13';
UPDATE collocations SET ex3 = 'Getting off the beaten track let us see how local people really live.', ex3_ko = '인적 드문 곳을 탐험하면서 현지 사람들이 실제로 어떻게 사는지 봤어요.', ex4 = 'She loves to get off the beaten track and try unusual food.', ex4_ko = '그녀는 인적 드문 곳을 탐험하며 특이한 음식을 시도하는 걸 좋아해요.', ex5 = 'Getting off the beaten track requires some planning and courage.', ex5_ko = '인적 드문 곳을 탐험하려면 약간의 계획과 용기가 필요해요.' WHERE id = 'col_travel_14';
UPDATE collocations SET ex3 = 'I experienced culture shock more from the food than from anything else.', ex3_ko = '저는 어느 것보다 음식에서 문화 충격을 더 많이 겪었어요.', ex4 = 'He experienced culture shock when he returned home after living abroad.', ex4_ko = '그는 해외에 살다가 고국에 돌아왔을 때 문화 충격을 겪었어요.', ex5 = 'You can experience culture shock even between regions of the same country.', ex5_ko = '같은 나라의 다른 지역 사이에서도 문화 충격을 겪을 수 있어요.' WHERE id = 'col_travel_15';
UPDATE collocations SET ex3 = 'We barely caught our connection because of long immigration lines.', ex3_ko = '입국 심사 줄이 길어서 우리는 간신히 연결편을 탔어요.', ex4 = 'He sprinted across the airport to catch his connection.', ex4_ko = '그는 연결편을 타려고 공항을 가로질러 전력 질주했어요.', ex5 = 'They couldn''t catch their connection and were rebooked for the next day.', ex5_ko = '그들은 연결편을 타지 못해 다음 날 편으로 다시 예약됐어요.' WHERE id = 'col_travel_16';
UPDATE collocations SET ex3 = 'My friend went backpacking through South America for six months.', ex3_ko = '제 친구는 남미를 6개월간 배낭여행했어요.', ex4 = 'Going backpacking taught her how to live with less.', ex4_ko = '배낭여행은 그녀에게 적게 가지고 사는 법을 가르쳐 줬어요.', ex5 = 'They went backpacking during the gap year between high school and college.', ex5_ko = '그들은 고등학교와 대학 사이 갭이어 동안 배낭여행을 했어요.' WHERE id = 'col_travel_17';
UPDATE collocations SET ex3 = 'We always carry travel insurance, even for short domestic trips.', ex3_ko = '우리는 짧은 국내 여행에도 항상 여행 보험을 가입해요.', ex4 = 'He didn''t carry travel insurance and regretted it after a small accident.', ex4_ko = '그는 여행 보험을 가입하지 않았다가 작은 사고 후 후회했어요.', ex5 = 'Most credit cards offer some basic travel insurance.', ex5_ko = '대부분의 신용카드는 기본 여행 보험을 제공해요.' WHERE id = 'col_travel_18';
UPDATE collocations SET ex3 = 'They set off on a journey across three continents in one year.', ex3_ko = '그들은 1년에 세 대륙을 가로지르는 여정을 시작했어요.', ex4 = 'She set off on her journey alone but met friends along the way.', ex4_ko = '그녀는 혼자 여정을 시작했지만 도중에 친구들을 만났어요.', ex5 = 'Before setting off on a journey, double-check your documents.', ex5_ko = '여정을 시작하기 전에 서류를 다시 확인하세요.' WHERE id = 'col_travel_19';
UPDATE collocations SET ex3 = 'Reading books from different cultures helps broaden your horizons.', ex3_ko = '다양한 문화의 책을 읽는 것이 시야를 넓히는 데 도움이 돼요.', ex4 = 'She moved to a new country to broaden her horizons.', ex4_ko = '그녀는 시야를 넓히기 위해 새로운 나라로 이사했어요.', ex5 = 'Volunteering abroad really broadens your horizons.', ex5_ko = '해외 봉사활동은 정말 시야를 넓혀줘요.' WHERE id = 'col_travel_20';

-- ══════════════════════════════════════
-- HOME
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'My partner and I split the chores fifty-fifty during the week.', ex3_ko = '저와 파트너는 평일에 집안일을 반반씩 나눠서 해요.', ex4 = 'He does the chores quickly in the morning before work.', ex4_ko = '그는 출근 전에 아침에 집안일을 빠르게 해요.', ex5 = 'It''s easier to do the chores when you have a clear routine.', ex5_ko = '명확한 루틴이 있으면 집안일을 하기가 더 쉬워요.' WHERE id = 'col_home_01';
UPDATE collocations SET ex3 = 'My dad taught me to make the bed with hospital corners.', ex3_ko = '저희 아빠는 저에게 단정하게 침대를 정리하는 법을 가르쳐 주셨어요.', ex4 = 'She forgot to make the bed and felt rushed all morning.', ex4_ko = '그녀는 침대 정리를 잊어서 아침 내내 마음이 급했어요.', ex5 = 'Making the bed is the first small win of the day.', ex5_ko = '침대 정리는 하루의 첫 번째 작은 성취예요.' WHERE id = 'col_home_02';
UPDATE collocations SET ex3 = 'I''ll do the dishes if you handle bedtime stories.', ex3_ko = '당신이 잠자리 동화를 해주면 제가 설거지를 할게요.', ex4 = 'They take turns doing the dishes after every meal.', ex4_ko = '그들은 매 식사 후에 교대로 설거지를 해요.', ex5 = 'Doing the dishes is a great time to listen to podcasts.', ex5_ko = '설거지하는 시간은 팟캐스트 듣기에 좋아요.' WHERE id = 'col_home_03';
UPDATE collocations SET ex3 = 'The rent went up again this year, so we''re budgeting carefully.', ex3_ko = '올해 월세가 또 올라서 예산을 신중히 짜고 있어요.', ex4 = 'He pays the rent through automatic bank transfer.', ex4_ko = '그는 자동 이체로 월세를 내요.', ex5 = 'It''s standard to pay the rent on the first of the month here.', ex5_ko = '여기는 매월 1일에 월세를 내는 게 일반적이에요.' WHERE id = 'col_home_04';
UPDATE collocations SET ex3 = 'A weekly cleaning schedule helps us keep the house clean.', ex3_ko = '주간 청소 계획이 집을 청결하게 유지하는 데 도움이 돼요.', ex4 = 'Pets make it harder to keep the house clean.', ex4_ko = '반려동물이 있으면 집을 청결하게 유지하기가 더 어려워요.', ex5 = 'She keeps the house clean even when expecting unexpected guests.', ex5_ko = '그녀는 예상치 못한 손님이 와도 집을 청결하게 유지해요.' WHERE id = 'col_home_05';
UPDATE collocations SET ex3 = 'I have to run a few errands before picking up the kids.', ex3_ko = '아이들을 데리러 가기 전에 몇 가지 볼일을 봐야 해요.', ex4 = 'He combined his errands into one trip to save time.', ex4_ko = '그는 시간을 절약하기 위해 볼일을 한 번에 묶었어요.', ex5 = 'Running errands on Saturday morning is one of my routines.', ex5_ko = '토요일 아침에 볼일을 보는 게 제 루틴 중 하나예요.' WHERE id = 'col_home_06';
UPDATE collocations SET ex3 = 'We''re holding a gathering for my grandmother''s 80th birthday.', ex3_ko = '저희 할머니의 80번째 생신을 위해 모임을 열어요.', ex4 = 'They held a gathering in the backyard with about twenty guests.', ex4_ko = '그들은 약 20명의 손님과 함께 뒷마당에서 모임을 열었어요.', ex5 = 'It''s nice to hold a gathering even without a special occasion.', ex5_ko = '특별한 일이 없어도 모임을 여는 건 좋아요.' WHERE id = 'col_home_07';
UPDATE collocations SET ex3 = 'My daughter loves to set the table with fresh flowers.', ex3_ko = '제 딸은 신선한 꽃과 함께 식탁을 차리는 걸 좋아해요.', ex4 = 'He set the table beautifully for their first anniversary.', ex4_ko = '그는 그들의 첫 번째 결혼기념일을 위해 식탁을 아름답게 차렸어요.', ex5 = 'Please set the table for six — we have guests tonight.', ex5_ko = '6명분 식탁을 차려 주세요 — 오늘 밤 손님이 와요.' WHERE id = 'col_home_08';
UPDATE collocations SET ex3 = 'He does repairs around the house every weekend.', ex3_ko = '그는 매주 주말마다 집 안 수리를 해요.', ex4 = 'They had to do some repairs before the inspection.', ex4_ko = '그들은 점검 전에 수리를 좀 해야 했어요.', ex5 = 'YouTube tutorials help me do small repairs by myself.', ex5_ko = '유튜브 튜토리얼이 제가 간단한 수리를 직접 하는 데 도움이 돼요.' WHERE id = 'col_home_09';
UPDATE collocations SET ex3 = 'Don''t forget to take out the trash before the truck comes.', ex3_ko = '쓰레기 트럭이 오기 전에 쓰레기를 버리는 걸 잊지 마세요.', ex4 = 'The kids argue about whose turn it is to take out the trash.', ex4_ko = '아이들은 누구 차례로 쓰레기를 버려야 하는지 다퉈요.', ex5 = 'He takes out the trash and recycling separately.', ex5_ko = '그는 쓰레기와 재활용품을 따로 버려요.' WHERE id = 'col_home_10';
UPDATE collocations SET ex3 = 'I usually do the laundry on rainy afternoons.', ex3_ko = '저는 보통 비 오는 오후에 빨래를 해요.', ex4 = 'They do the laundry together to save time and water.', ex4_ko = '그들은 시간과 물을 아끼기 위해 함께 빨래를 해요.', ex5 = 'Doing the laundry is more relaxing with music playing.', ex5_ko = '음악을 틀어놓고 빨래를 하면 더 편안해요.' WHERE id = 'col_home_11';
UPDATE collocations SET ex3 = 'I spent the weekend sorting out the clutter in my closet.', ex3_ko = '저는 주말에 옷장의 어질러진 것들을 정리하며 보냈어요.', ex4 = 'She sorted out the clutter on her desk before starting work.', ex4_ko = '그녀는 일을 시작하기 전에 책상 위의 어질러진 것들을 정리했어요.', ex5 = 'Decluttering experts can help you sort out the clutter at home.', ex5_ko = '정리 전문가가 집의 어질러진 것들을 정리하는 데 도와줄 수 있어요.' WHERE id = 'col_home_12';
UPDATE collocations SET ex3 = 'They moved in to the new flat just before the baby arrived.', ex3_ko = '그들은 아기가 태어나기 직전에 새 아파트로 이사 들어왔어요.', ex4 = 'My sister moved in with us during her job transition.', ex4_ko = '제 동생은 이직 기간 동안 저희와 함께 살았어요.', ex5 = 'When did you move in to this neighborhood?', ex5_ko = '이 동네에 이사 오신 게 언제예요?' WHERE id = 'col_home_13';
UPDATE collocations SET ex3 = 'She redecorated her kid''s room with pastel wallpaper.', ex3_ko = '그녀는 파스텔 벽지로 아이 방을 새로 꾸몄어요.', ex4 = 'We redecorated the bathroom on a small budget.', ex4_ko = '우리는 적은 예산으로 욕실을 새로 꾸몄어요.', ex5 = 'He redecorates a room every spring as a tradition.', ex5_ko = '그는 매년 봄마다 방 하나를 새로 꾸미는 전통이 있어요.' WHERE id = 'col_home_14';
UPDATE collocations SET ex3 = 'We fixed the leak ourselves with a quick plumbing tutorial.', ex3_ko = '우리는 간단한 배관 튜토리얼로 직접 누수를 수리했어요.', ex4 = 'The leak was small, but fixing it prevented bigger damage.', ex4_ko = '누수는 작았지만 수리한 덕분에 큰 피해를 막을 수 있었어요.', ex5 = 'It took the plumber two hours to fix the leak in the bathroom.', ex5_ko = '배관공이 욕실의 누수를 수리하는 데 두 시간이 걸렸어요.' WHERE id = 'col_home_15';
UPDATE collocations SET ex3 = 'My dad cooks a hot meal for the family every Sunday.', ex3_ko = '저희 아빠는 매주 일요일에 가족을 위해 따뜻한 식사를 준비하세요.', ex4 = 'She learned to cook simple meals after moving out for college.', ex4_ko = '그녀는 대학을 위해 독립한 후 간단한 식사를 준비하는 법을 배웠어요.', ex5 = 'Cooking a meal at home is usually healthier than ordering in.', ex5_ko = '집에서 식사를 준비하는 게 보통 배달보다 더 건강해요.' WHERE id = 'col_home_16';
UPDATE collocations SET ex3 = 'He put away the groceries as soon as he got home.', ex3_ko = '그는 집에 오자마자 식료품을 제자리에 정리했어요.', ex4 = 'She put away the kids'' toys before sitting down for dinner.', ex4_ko = '그녀는 저녁 식사를 위해 앉기 전에 아이들 장난감을 치웠어요.', ex5 = 'Please put away your dishes after eating.', ex5_ko = '식사 후 그릇은 제자리에 두세요.' WHERE id = 'col_home_17';
UPDATE collocations SET ex3 = 'He mows the lawn early to avoid the afternoon heat.', ex3_ko = '그는 오후 더위를 피하려고 일찍 잔디를 깎아요.', ex4 = 'I helped my neighbor mow the lawn after he hurt his back.', ex4_ko = '저는 허리를 다친 이웃이 잔디 깎는 걸 도와드렸어요.', ex5 = 'They mow the lawn every other week in the growing season.', ex5_ko = '그들은 성장기에 격주로 잔디를 깎아요.' WHERE id = 'col_home_18';
UPDATE collocations SET ex3 = 'Please switch off the lights when you leave the room.', ex3_ko = '방을 나갈 때 불을 꺼주세요.', ex4 = 'He switched off the lights and lit a candle for dinner.', ex4_ko = '그는 불을 끄고 저녁 식사를 위해 촛불을 켰어요.', ex5 = 'Switching off lights when not needed saves on electricity bills.', ex5_ko = '필요 없을 때 불을 끄면 전기 요금을 절약할 수 있어요.' WHERE id = 'col_home_19';
UPDATE collocations SET ex3 = 'It takes most people a few months to settle in to a new city.', ex3_ko = '대부분의 사람들이 새 도시에 익숙해지는 데 몇 달이 걸려요.', ex4 = 'She settled in to her new role at work within weeks.', ex4_ko = '그녀는 몇 주 만에 직장의 새 역할에 익숙해졌어요.', ex5 = 'Once we settled in, the neighborhood started to feel like home.', ex5_ko = '익숙해지고 나니 그 동네가 집처럼 느껴지기 시작했어요.' WHERE id = 'col_home_20';

-- ══════════════════════════════════════
-- WORK
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'It''s tough to make a decision when both options look equally good.', ex3_ko = '두 옵션이 모두 똑같이 좋아 보일 때는 결정을 내리기 어려워요.', ex4 = 'They made a decision to expand into the European market.', ex4_ko = '그들은 유럽 시장으로 확장하기로 결정을 내렸어요.', ex5 = 'I made the decision to switch careers after a lot of thought.', ex5_ko = '저는 많은 고민 끝에 직업을 바꾸는 결정을 내렸어요.' WHERE id = 'col_work_01';
UPDATE collocations SET ex3 = 'She''s ready to take responsibility for the team''s results.', ex3_ko = '그녀는 팀 결과에 대한 책임을 질 준비가 됐어요.', ex4 = 'You should take responsibility instead of blaming others.', ex4_ko = '다른 사람을 탓하기보다 책임을 져야 해요.', ex5 = 'The new hire was eager to take responsibility from day one.', ex5_ko = '신입은 첫날부터 책임을 지려는 의지가 강했어요.' WHERE id = 'col_work_02';
UPDATE collocations SET ex3 = 'I always ask my team to give feedback after each project.', ex3_ko = '저는 매 프로젝트 후에 팀에 항상 피드백을 부탁해요.', ex4 = 'She gave me honest feedback that really helped me improve.', ex4_ko = '그녀는 제가 정말 발전하는 데 도움이 되는 솔직한 피드백을 줬어요.', ex5 = 'Giving feedback is easier when there is mutual trust.', ex5_ko = '상호 신뢰가 있으면 피드백을 주기가 더 쉬워요.' WHERE id = 'col_work_03';
UPDATE collocations SET ex3 = 'We held a meeting to review the budget for next year.', ex3_ko = '내년 예산을 검토하기 위해 회의를 열었어요.', ex4 = 'He holds short standing meetings to keep things efficient.', ex4_ko = '그는 효율성을 위해 짧은 스탠딩 회의를 열어요.', ex5 = 'Let''s hold a meeting after lunch to discuss the new proposal.', ex5_ko = '새 제안을 논의하기 위해 점심 후에 회의를 열어요.' WHERE id = 'col_work_04';
UPDATE collocations SET ex3 = 'We just barely met the deadline thanks to everyone''s hard work.', ex3_ko = '모두의 노력 덕분에 우리는 간신히 마감 기한을 지켰어요.', ex4 = 'She met the deadline despite a last-minute change in requirements.', ex4_ko = '그녀는 막판 요구 사항 변경에도 불구하고 마감을 지켰어요.', ex5 = 'We need a buffer of two days to confidently meet the deadline.', ex5_ko = '자신 있게 마감을 지키려면 이틀의 여유가 필요해요.' WHERE id = 'col_work_05';
UPDATE collocations SET ex3 = 'I''ve been making slow but steady progress in learning Korean.', ex3_ko = '저는 한국어를 배우면서 느리지만 꾸준한 진전을 이루고 있어요.', ex4 = 'Our team made remarkable progress in just three weeks.', ex4_ko = '우리 팀은 단 3주 만에 놀라운 진전을 이뤘어요.', ex5 = 'You make progress every time you take small consistent steps.', ex5_ko = '꾸준히 작은 발걸음을 떼는 매 순간 진전을 이루는 거예요.' WHERE id = 'col_work_06';
UPDATE collocations SET ex3 = 'He gave a 20-minute presentation on the quarterly results.', ex3_ko = '그는 분기 결과에 대한 20분 발표를 했어요.', ex4 = 'I have to give a presentation in English for the first time tomorrow.', ex4_ko = '저는 내일 처음으로 영어로 발표를 해야 해요.', ex5 = 'She gave a presentation that won the team a major contract.', ex5_ko = '그녀는 팀이 큰 계약을 따내는 발표를 했어요.' WHERE id = 'col_work_07';
UPDATE collocations SET ex3 = 'He takes notes in a small notebook he carries everywhere.', ex3_ko = '그는 항상 들고 다니는 작은 수첩에 메모를 해요.', ex4 = 'I took notes on my laptop during the all-day workshop.', ex4_ko = '저는 종일 진행된 워크숍 동안 노트북에 메모를 했어요.', ex5 = 'Taking notes by hand can help you remember more.', ex5_ko = '손으로 메모하면 더 잘 기억하는 데 도움이 돼요.' WHERE id = 'col_work_08';
UPDATE collocations SET ex3 = 'He''s been running multiple projects at the same time.', ex3_ko = '그는 여러 프로젝트를 동시에 이끌고 있어요.', ex4 = 'Running a project remotely requires excellent communication.', ex4_ko = '원격으로 프로젝트를 이끌려면 뛰어난 소통 능력이 필요해요.', ex5 = 'She''s been running the redesign project for nine months.', ex5_ko = '그녀는 9개월째 리디자인 프로젝트를 이끌고 있어요.' WHERE id = 'col_work_09';
UPDATE collocations SET ex3 = 'Please pay attention to the new compliance rules.', ex3_ko = '새 컴플라이언스 규정에 주의를 기울여 주세요.', ex4 = 'She pays attention to small details that others might miss.', ex4_ko = '그녀는 다른 사람들이 놓칠 수 있는 작은 세부 사항에 주의를 기울여요.', ex5 = 'I had to pay extra attention during the audit week.', ex5_ko = '저는 감사 주간에 특별히 주의를 기울여야 했어요.' WHERE id = 'col_work_10';
UPDATE collocations SET ex3 = 'They set targets at the start of every fiscal year.', ex3_ko = '그들은 매 회계연도 초에 목표를 설정해요.', ex4 = 'She set personal targets that were aligned with team goals.', ex4_ko = '그녀는 팀 목표와 일치하는 개인 목표를 설정했어요.', ex5 = 'Setting clear targets helps everyone stay focused.', ex5_ko = '명확한 목표를 설정하면 모두가 집중하는 데 도움이 돼요.' WHERE id = 'col_work_11';
UPDATE collocations SET ex3 = 'The team is trained to handle complaints with empathy.', ex3_ko = '팀은 공감을 가지고 불만을 처리하도록 교육받았어요.', ex4 = 'He handled the customer''s complaint better than expected.', ex4_ko = '그는 예상보다 더 잘 고객의 불만을 처리했어요.', ex5 = 'Handling complaints quickly can turn unhappy customers into loyal ones.', ex5_ko = '불만을 빠르게 처리하면 불만 고객을 충성 고객으로 바꿀 수 있어요.' WHERE id = 'col_work_12';
UPDATE collocations SET ex3 = 'She delegates tasks based on each person''s strengths.', ex3_ko = '그녀는 각 사람의 강점에 따라 업무를 위임해요.', ex4 = 'Learning to delegate tasks is essential for new managers.', ex4_ko = '신임 관리자에게 업무를 위임하는 법을 배우는 것은 필수예요.', ex5 = 'He struggled at first but learned to delegate tasks effectively.', ex5_ko = '그는 처음에는 힘들어했지만 효과적으로 업무를 위임하는 법을 배웠어요.' WHERE id = 'col_work_13';
UPDATE collocations SET ex3 = 'She submitted the quarterly report two days before the deadline.', ex3_ko = '그녀는 마감 이틀 전에 분기 보고서를 제출했어요.', ex4 = 'Please submit your report through the new internal portal.', ex4_ko = '새 내부 포털을 통해 보고서를 제출해 주세요.', ex5 = 'He submitted a brief progress report at the end of each week.', ex5_ko = '그는 매주 말 간단한 진행 보고서를 제출했어요.' WHERE id = 'col_work_14';
UPDATE collocations SET ex3 = 'They closed the deal after a long video call with the partners.', ex3_ko = '그들은 파트너들과의 긴 영상 통화 끝에 거래를 성사시켰어요.', ex4 = 'She''s great at closing deals with hesitant clients.', ex4_ko = '그녀는 망설이는 고객과 거래를 성사시키는 데 뛰어나요.', ex5 = 'Closing a deal often requires patience and timing.', ex5_ko = '거래 성사에는 종종 인내와 타이밍이 필요해요.' WHERE id = 'col_work_15';
UPDATE collocations SET ex3 = 'Some teams put in overtime to launch the product on time.', ex3_ko = '일부 팀은 제품을 제때 출시하기 위해 초과 근무를 했어요.', ex4 = 'Putting in too much overtime hurts long-term productivity.', ex4_ko = '너무 많은 초과 근무는 장기적인 생산성에 해를 끼쳐요.', ex5 = 'She refused to put in overtime without proper compensation.', ex5_ko = '그녀는 적절한 보상 없이는 초과 근무를 거부했어요.' WHERE id = 'col_work_16';
UPDATE collocations SET ex3 = 'He raised concerns about the new policy in the team chat.', ex3_ko = '그는 팀 채팅에서 새 정책에 대한 우려를 제기했어요.', ex4 = 'Please raise any concerns during the open Q&A session.', ex4_ko = '공개 Q&A 세션 중에 우려 사항을 제기해 주세요.', ex5 = 'She raised her concern privately with the project manager.', ex5_ko = '그녀는 프로젝트 매니저와 사석에서 우려를 제기했어요.' WHERE id = 'col_work_17';
UPDATE collocations SET ex3 = 'Junior employees are encouraged to take initiative on small projects.', ex3_ko = '주니어 직원들은 작은 프로젝트에서 주도적으로 행동하도록 권장돼요.', ex4 = 'She took the initiative to organize a quarterly retrospective.', ex4_ko = '그녀는 분기별 회고를 조직하는 주도적인 행동을 했어요.', ex5 = 'Taking initiative often leads to growth in your career.', ex5_ko = '주도적으로 행동하는 것은 종종 경력 성장으로 이어져요.' WHERE id = 'col_work_18';
UPDATE collocations SET ex3 = 'The committee reached a consensus on the final design.', ex3_ko = '위원회는 최종 디자인에 대한 합의에 이르렀어요.', ex4 = 'They couldn''t reach a consensus and decided to postpone the vote.', ex4_ko = '그들은 합의에 이르지 못해 투표를 연기하기로 결정했어요.', ex5 = 'Reaching a consensus across departments took several weeks.', ex5_ko = '부서 간 합의에 이르는 데 몇 주가 걸렸어요.' WHERE id = 'col_work_19';
UPDATE collocations SET ex3 = 'He went on parental leave for two months after the birth.', ex3_ko = '그는 출산 후 두 달간 육아 휴직을 갔어요.', ex4 = 'She went on leave to take care of her elderly mother.', ex4_ko = '그녀는 연로한 어머니를 돌보기 위해 휴가를 갔어요.', ex5 = 'When she went on leave, the team divided up her responsibilities.', ex5_ko = '그녀가 휴가를 갔을 때 팀이 그녀의 책임을 나눠 가졌어요.' WHERE id = 'col_work_20';

-- ══════════════════════════════════════
-- EDUCATION
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'I''m going to take an exam to get my driver''s license next month.', ex3_ko = '저는 다음 달에 운전면허 시험을 볼 거예요.', ex4 = 'They took an exam in three different subjects on the same day.', ex4_ko = '그들은 같은 날 세 가지 과목의 시험을 봤어요.', ex5 = 'Taking an exam is less stressful when you''ve studied consistently.', ex5_ko = '꾸준히 공부했을 때 시험을 보는 게 덜 부담돼요.' WHERE id = 'col_education_01';
UPDATE collocations SET ex3 = 'He makes notes in the margins of his textbooks.', ex3_ko = '그는 교과서 여백에 필기를 해요.', ex4 = 'Make notes on important formulas before the math exam.', ex4_ko = '수학 시험 전에 중요한 공식에 대해 필기하세요.', ex5 = 'Making notes by hand helps her remember the material better.', ex5_ko = '손으로 필기하는 것이 그녀가 내용을 더 잘 기억하는 데 도움이 돼요.' WHERE id = 'col_education_02';
UPDATE collocations SET ex3 = 'He''s doing research on artificial intelligence in education.', ex3_ko = '그는 교육에서의 인공지능에 대한 연구를 하고 있어요.', ex4 = 'You need to do research before forming a strong opinion.', ex4_ko = '확고한 의견을 갖기 전에 연구를 해야 해요.', ex5 = 'She has been doing research at the university lab since freshman year.', ex5_ko = '그녀는 1학년 때부터 대학 실험실에서 연구를 해 왔어요.' WHERE id = 'col_education_03';
UPDATE collocations SET ex3 = 'She gave a presentation about her exchange experience in Korea.', ex3_ko = '그녀는 한국에서의 교환학생 경험에 대한 발표를 했어요.', ex4 = 'I''m a little nervous to give a presentation in front of professors.', ex4_ko = '저는 교수님들 앞에서 발표하는 게 조금 긴장돼요.', ex5 = 'Giving a presentation is easier when you really know the topic.', ex5_ko = '주제를 정말 잘 알고 있으면 발표하기가 더 쉬워요.' WHERE id = 'col_education_04';
UPDATE collocations SET ex3 = 'He used a study schedule to keep up with the coursework.', ex3_ko = '그는 수업 진도를 따라가기 위해 학습 계획표를 활용했어요.', ex4 = 'It''s normal to fall behind sometimes — just try to keep up.', ex4_ko = '가끔 뒤처지는 건 정상이에요 — 그저 따라가려고 노력해요.', ex5 = 'She formed a study group to help her keep up with the coursework.', ex5_ko = '그녀는 수업 진도를 따라가기 위해 스터디 그룹을 만들었어요.' WHERE id = 'col_education_05';
UPDATE collocations SET ex3 = 'He broke the long jump record at the university sports day.', ex3_ko = '그는 대학 체육대회에서 멀리뛰기 기록을 깼어요.', ex4 = 'She broke the record for the highest math score in the district.', ex4_ko = '그녀는 그 지역에서 최고 수학 점수 기록을 깼어요.', ex5 = 'Breaking a school record was always one of his dreams.', ex5_ko = '학교 기록을 깨는 건 그의 오랜 꿈 중 하나였어요.' WHERE id = 'col_education_06';
UPDATE collocations SET ex3 = 'They held a discussion on inclusive education in the classroom.', ex3_ko = '그들은 교실에서 포용적 교육에 대한 토론을 했어요.', ex4 = 'We held a discussion in small groups before sharing as a class.', ex4_ko = '우리는 학급 전체에 공유하기 전에 소그룹으로 토론을 했어요.', ex5 = 'Holding a discussion helps students develop critical thinking.', ex5_ko = '토론을 하면 학생들이 비판적 사고를 키우는 데 도움이 돼요.' WHERE id = 'col_education_07';
UPDATE collocations SET ex3 = 'You''ve made huge progress since the beginning of the course.', ex3_ko = '강의 시작 이후로 정말 많은 발전을 이뤘어요.', ex4 = 'The teacher told me my son is making steady progress in writing.', ex4_ko = '선생님이 제 아들이 글쓰기에서 꾸준한 발전을 이루고 있다고 말씀하셨어요.', ex5 = 'You make progress by practicing a little bit every day.', ex5_ko = '매일 조금씩 연습함으로써 발전을 이루는 거예요.' WHERE id = 'col_education_08';
UPDATE collocations SET ex3 = 'She got a master''s degree in computer science last year.', ex3_ko = '그녀는 작년에 컴퓨터 공학 석사 학위를 받았어요.', ex4 = 'He''s the first in his family to get a college degree.', ex4_ko = '그는 가족 중 처음으로 대학 학위를 받았어요.', ex5 = 'You can get a degree online from many accredited universities now.', ex5_ko = '이제 많은 인증된 대학에서 온라인으로 학위를 받을 수 있어요.' WHERE id = 'col_education_09';
UPDATE collocations SET ex3 = 'I set small daily goals to stay motivated.', ex3_ko = '저는 동기 부여를 유지하기 위해 작은 일일 목표를 세워요.', ex4 = 'They set goals together as a family at the start of each year.', ex4_ko = '그들은 매년 초에 가족으로서 함께 목표를 세워요.', ex5 = 'Setting realistic goals matters more than setting big ones.', ex5_ko = '큰 목표를 세우는 것보다 현실적인 목표를 세우는 게 더 중요해요.' WHERE id = 'col_education_10';
UPDATE collocations SET ex3 = 'I''m relieved I passed the exam without having to retake it.', ex3_ko = '시험을 재시험 없이 통과해서 안도했어요.', ex4 = 'She passed her driving exam on the second attempt.', ex4_ko = '그녀는 운전면허 시험을 두 번째 시도에 통과했어요.', ex5 = 'Passing the exam felt like a huge weight off my shoulders.', ex5_ko = '시험을 통과하니까 어깨의 큰 짐이 내려간 기분이었어요.' WHERE id = 'col_education_11';
UPDATE collocations SET ex3 = 'I attended lectures online during the pandemic.', ex3_ko = '저는 팬데믹 동안 강의에 온라인으로 참석했어요.', ex4 = 'He attended every lecture without missing a single one.', ex4_ko = '그는 하나도 빠짐없이 모든 강의에 참석했어요.', ex5 = 'Attending lectures regularly often makes a huge difference in your grade.', ex5_ko = '꾸준히 강의에 참석하는 것이 종종 성적에 큰 차이를 만들어요.' WHERE id = 'col_education_12';
UPDATE collocations SET ex3 = 'I submitted my assignment with five minutes to spare.', ex3_ko = '저는 5분 여유를 두고 과제를 제출했어요.', ex4 = 'She submitted her assignment on the wrong portal by mistake.', ex4_ko = '그녀는 실수로 잘못된 포털에 과제를 제출했어요.', ex5 = 'Submitting an assignment late can affect your grade significantly.', ex5_ko = '과제를 늦게 제출하면 성적에 큰 영향을 미칠 수 있어요.' WHERE id = 'col_education_13';
UPDATE collocations SET ex3 = 'He earned a scholarship through his community service work.', ex3_ko = '그는 지역사회 봉사활동으로 장학금을 받았어요.', ex4 = 'She earned a partial scholarship that covered her tuition.', ex4_ko = '그녀는 등록금을 충당하는 부분 장학금을 받았어요.', ex5 = 'You can earn a scholarship for academic, athletic, or artistic achievement.', ex5_ko = '학업, 체육, 또는 예술적 성취로 장학금을 받을 수 있어요.' WHERE id = 'col_education_14';
UPDATE collocations SET ex3 = 'I enrolled in a Korean language course at the community center.', ex3_ko = '저는 주민 센터에서 한국어 강좌에 등록했어요.', ex4 = 'You can enroll in a course at any point during the semester.', ex4_ko = '학기 중 언제든지 강좌에 등록할 수 있어요.', ex5 = 'Enrolling in a course online is usually quick and easy.', ex5_ko = '온라인으로 강좌에 등록하는 건 보통 빠르고 쉬워요.' WHERE id = 'col_education_15';
UPDATE collocations SET ex3 = 'He graduated from medical school in just six years.', ex3_ko = '그는 6년 만에 의과대학을 졸업했어요.', ex4 = 'My mother graduated from a teacher''s college in the 1980s.', ex4_ko = '저희 어머니는 1980년대에 교대를 졸업하셨어요.', ex5 = 'She graduated from a top business school overseas.', ex5_ko = '그녀는 해외의 최고 경영대학원을 졸업했어요.' WHERE id = 'col_education_16';
UPDATE collocations SET ex3 = 'Review your notes within 24 hours to remember more.', ex3_ko = '더 많이 기억하려면 24시간 이내에 필기를 복습하세요.', ex4 = 'She reviews her notes on the bus ride home.', ex4_ko = '그녀는 집에 가는 버스에서 필기를 복습해요.', ex5 = 'Reviewing notes regularly is more effective than cramming.', ex5_ko = '필기를 꾸준히 복습하는 것이 벼락치기보다 더 효과적이에요.' WHERE id = 'col_education_17';
UPDATE collocations SET ex3 = 'They conducted an experiment to test the effects of caffeine on memory.', ex3_ko = '그들은 카페인이 기억에 미치는 영향을 시험하기 위해 실험을 했어요.', ex4 = 'The class conducted an experiment using simple household materials.', ex4_ko = '그 수업은 간단한 가정용 재료를 사용해 실험을 했어요.', ex5 = 'Conducting an experiment requires careful planning and observation.', ex5_ko = '실험을 하려면 신중한 계획과 관찰이 필요해요.' WHERE id = 'col_education_18';
UPDATE collocations SET ex3 = 'She failed the exam by just one point.', ex3_ko = '그녀는 단 1점 차이로 시험에 떨어졌어요.', ex4 = 'Failing an exam taught him to study more strategically.', ex4_ko = '시험에 떨어진 경험이 그가 더 전략적으로 공부하도록 가르쳐 줬어요.', ex5 = 'Many successful people failed exams at some point in their lives.', ex5_ko = '많은 성공한 사람들이 인생에서 한 번쯤 시험에 떨어진 적이 있어요.' WHERE id = 'col_education_19';
UPDATE collocations SET ex3 = 'Traveling abroad really broadens your knowledge of other cultures.', ex3_ko = '해외여행은 다른 문화에 대한 지식을 정말로 넓혀줘요.', ex4 = 'Podcasts have helped me broaden my knowledge in many fields.', ex4_ko = '팟캐스트가 여러 분야에서 제 지식을 넓히는 데 도움이 됐어요.', ex5 = 'Reading widely is one way to broaden your knowledge effortlessly.', ex5_ko = '폭넓게 독서하는 것은 노력 없이 지식을 넓히는 한 가지 방법이에요.' WHERE id = 'col_education_20';

-- ══════════════════════════════════════
-- MEDIA
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'Her dance challenge video went viral overnight.', ex3_ko = '그녀의 댄스 챌린지 영상이 하룻밤 만에 바이럴이 됐어요.', ex4 = 'Once a meme goes viral, it spreads to every platform.', ex4_ko = '밈이 한번 바이럴이 되면 모든 플랫폼으로 퍼져요.', ex5 = 'The cat video went viral and made him a small fortune.', ex5_ko = '그 고양이 영상이 바이럴이 되어 그에게 작은 부를 가져다 줬어요.' WHERE id = 'col_media_01';
UPDATE collocations SET ex3 = 'The discovery made news around the world.', ex3_ko = '그 발견은 전 세계에서 뉴스가 됐어요.', ex4 = 'Her career as an artist first made news in her hometown paper.', ex4_ko = '아티스트로서의 그녀의 경력은 고향 신문에서 처음 뉴스가 됐어요.', ex5 = 'The minor incident unexpectedly made national news.', ex5_ko = '그 작은 사건이 뜻밖에 전국 뉴스가 됐어요.' WHERE id = 'col_media_02';
UPDATE collocations SET ex3 = 'I''m trying to get followers by being authentic, not by chasing trends.', ex3_ko = '저는 트렌드를 좇기보다 진솔함으로 팔로워를 얻으려고 해요.', ex4 = 'She got followers from her cooking videos almost by accident.', ex4_ko = '그녀는 요리 영상으로 거의 우연히 팔로워를 얻었어요.', ex5 = 'Many influencers get followers through consistent posting and engagement.', ex5_ko = '많은 인플루언서들이 꾸준한 게시물과 소통을 통해 팔로워를 얻어요.' WHERE id = 'col_media_03';
UPDATE collocations SET ex3 = 'I post content twice a week to keep things sustainable.', ex3_ko = '저는 지속 가능하도록 일주일에 두 번 콘텐츠를 올려요.', ex4 = 'She posts content that''s educational and entertaining at the same time.', ex4_ko = '그녀는 교육적이면서도 재미있는 콘텐츠를 올려요.', ex5 = 'Posting content regularly helps you build a real audience.', ex5_ko = '콘텐츠를 꾸준히 올리면 진정한 팬층을 쌓는 데 도움이 돼요.' WHERE id = 'col_media_04';
UPDATE collocations SET ex3 = 'They ran an ad during the World Cup final to reach a wide audience.', ex3_ko = '그들은 더 많은 청중에게 도달하기 위해 월드컵 결승전 동안 광고를 집행했어요.', ex4 = 'We ran an ad for two weeks and saw a 30% boost in sales.', ex4_ko = '우리는 2주간 광고를 집행했고 매출이 30% 증가했어요.', ex5 = 'Running an ad on social media is much cheaper than on TV.', ex5_ko = '소셜 미디어에 광고를 집행하는 게 TV보다 훨씬 저렴해요.' WHERE id = 'col_media_05';
UPDATE collocations SET ex3 = 'I keep updated on tech news through a weekly newsletter.', ex3_ko = '저는 주간 뉴스레터를 통해 기술 뉴스 최신 정보를 유지해요.', ex4 = 'She keeps updated on world events by listening to podcasts.', ex4_ko = '그녀는 팟캐스트를 들으며 세계 뉴스에 대한 최신 정보를 유지해요.', ex5 = 'You can keep updated by following just a few reliable sources.', ex5_ko = '몇 개의 믿을 만한 소스만 팔로우해도 최신 정보를 유지할 수 있어요.' WHERE id = 'col_media_06';
UPDATE collocations SET ex3 = 'A small online outlet broke the story before mainstream media did.', ex3_ko = '주류 미디어보다 작은 온라인 매체가 그 이야기를 최초로 보도했어요.', ex4 = 'Local journalists broke the news of the corruption scandal.', ex4_ko = '지역 기자들이 부패 스캔들 뉴스를 최초로 보도했어요.', ex5 = 'They broke the news with verified evidence to back it up.', ex5_ko = '그들은 뒷받침할 검증된 증거와 함께 뉴스를 최초로 보도했어요.' WHERE id = 'col_media_07';
UPDATE collocations SET ex3 = 'A strong opening line helps hold the audience''s attention.', ex3_ko = '강력한 첫 문장이 청중의 관심을 유지하는 데 도움이 돼요.', ex4 = 'The series held viewers'' attention for all eight episodes.', ex4_ko = '그 시리즈는 여덟 화 전체에 걸쳐 시청자들의 관심을 유지했어요.', ex5 = 'It''s tough to hold attention on TikTok past the first three seconds.', ex5_ko = '틱톡에서 처음 3초가 지난 후 관심을 유지하기는 어려워요.' WHERE id = 'col_media_08';
UPDATE collocations SET ex3 = 'Their merger made a headline in every business magazine.', ex3_ko = '그들의 합병이 모든 비즈니스 잡지의 헤드라인을 장식했어요.', ex4 = 'The athlete made headlines for breaking the world record.', ex4_ko = '그 운동선수는 세계 기록을 깨면서 헤드라인을 장식했어요.', ex5 = 'She made a headline in the local paper for her volunteer work.', ex5_ko = '그녀는 자원봉사 활동으로 지역 신문 헤드라인을 장식했어요.' WHERE id = 'col_media_09';
UPDATE collocations SET ex3 = 'A meme about the election got trending in a few hours.', ex3_ko = '선거에 관한 밈이 몇 시간 만에 트렌딩이 됐어요.', ex4 = 'Her song got trending after appearing in a popular drama.', ex4_ko = '그녀의 노래는 인기 드라마에 나온 후 트렌딩이 됐어요.', ex5 = 'It''s hard to predict what will get trending on any given day.', ex5_ko = '어느 날 무엇이 트렌딩이 될지 예측하기는 어려워요.' WHERE id = 'col_media_10';
UPDATE collocations SET ex3 = 'I stream content while I cook dinner most evenings.', ex3_ko = '저는 저녁 식사를 요리하면서 대부분 콘텐츠를 스트리밍해요.', ex4 = 'She streams content from independent creators rather than big studios.', ex4_ko = '그녀는 대형 스튜디오보다 독립 창작자들의 콘텐츠를 스트리밍해요.', ex5 = 'Streaming content during long flights makes the time pass faster.', ex5_ko = '긴 비행 중에 콘텐츠를 스트리밍하면 시간이 더 빨리 가요.' WHERE id = 'col_media_11';
UPDATE collocations SET ex3 = 'She built an audience of half a million followers in just a year.', ex3_ko = '그녀는 단 1년 만에 50만 명의 팔로워층을 쌓았어요.', ex4 = 'You build an audience by giving people real value.', ex4_ko = '사람들에게 진정한 가치를 줌으로써 팬층을 쌓아요.', ex5 = 'Building an audience takes more patience than most people expect.', ex5_ko = '팬층을 쌓는 데는 사람들이 예상하는 것보다 더 많은 인내가 필요해요.' WHERE id = 'col_media_12';
UPDATE collocations SET ex3 = 'The team flew across the country to cover the story.', ex3_ko = '그 팀은 이야기를 취재하기 위해 전국을 가로질러 비행했어요.', ex4 = 'She covered the story from both sides for a balanced view.', ex4_ko = '그녀는 균형 잡힌 시각을 위해 양쪽에서 이야기를 취재했어요.', ex5 = 'Covering a story properly takes time, sources, and verification.', ex5_ko = '이야기를 제대로 취재하려면 시간과 출처, 검증이 필요해요.' WHERE id = 'col_media_13';
UPDATE collocations SET ex3 = 'I''m going live in 10 minutes to answer your questions.', ex3_ko = '여러분의 질문에 답하기 위해 10분 후에 라이브 방송 갈게요.', ex4 = 'He went live for the first time and got over 5,000 viewers.', ex4_ko = '그는 처음으로 라이브 방송을 했는데 5,000명 이상의 시청자가 봤어요.', ex5 = 'She goes live every Sunday for a cooking session with fans.', ex5_ko = '그녀는 매주 일요일 팬들과 함께 요리 라이브를 해요.' WHERE id = 'col_media_14';
UPDATE collocations SET ex3 = 'Please share the post if you found it helpful.', ex3_ko = '도움이 되셨다면 게시물을 공유해 주세요.', ex4 = 'He shared a post about mental health awareness.', ex4_ko = '그는 정신 건강 인식에 대한 게시물을 공유했어요.', ex5 = 'Sharing a post takes a second but can have a big impact.', ex5_ko = '게시물을 공유하는 데 1초밖에 안 걸리지만 큰 영향을 줄 수 있어요.' WHERE id = 'col_media_15';
UPDATE collocations SET ex3 = 'The small designer gained exposure after a TV stylist used her dress.', ex3_ko = 'TV 스타일리스트가 그녀의 드레스를 사용한 후 그 소규모 디자이너는 노출을 얻었어요.', ex4 = 'Performing at the festival helped the band gain exposure abroad.', ex4_ko = '축제 공연이 그 밴드가 해외에서 노출을 얻는 데 도움이 됐어요.', ex5 = 'Open source projects can help developers gain exposure with employers.', ex5_ko = '오픈소스 프로젝트는 개발자들이 고용주들에게 노출을 얻는 데 도움이 될 수 있어요.' WHERE id = 'col_media_16';
UPDATE collocations SET ex3 = 'He edits footage late at night when he can focus best.', ex3_ko = '그는 가장 집중이 잘 되는 늦은 밤에 영상을 편집해요.', ex4 = 'She learned to edit footage from free tutorials online.', ex4_ko = '그녀는 무료 온라인 튜토리얼로 영상 편집을 배웠어요.', ex5 = 'Editing footage well takes far longer than shooting it.', ex5_ko = '영상을 잘 편집하는 데는 촬영하는 것보다 훨씬 더 오래 걸려요.' WHERE id = 'col_media_17';
UPDATE collocations SET ex3 = 'They broadcast live from the stadium during the final game.', ex3_ko = '그들은 결승전 동안 경기장에서 생방송을 했어요.', ex4 = 'The concert will be broadcast live in over 60 countries.', ex4_ko = '그 콘서트는 60여 개국에서 생방송으로 방영될 예정이에요.', ex5 = 'She broadcasts live every weekday morning at six.', ex5_ko = '그녀는 매 평일 아침 6시에 생방송을 해요.' WHERE id = 'col_media_18';
UPDATE collocations SET ex3 = 'Translating subtitles helps creators reach a global audience.', ex3_ko = '자막을 번역하는 것이 창작자들이 전 세계 청중에게 닿는 데 도움이 돼요.', ex4 = 'Their podcast reached an audience of more than two million.', ex4_ko = '그들의 팟캐스트는 200만 명이 넘는 청중에게 도달했어요.', ex5 = 'Reaching the right audience matters more than reaching a big one.', ex5_ko = '많은 청중에 닿는 것보다 적절한 청중에게 닿는 게 더 중요해요.' WHERE id = 'col_media_19';
UPDATE collocations SET ex3 = 'They pulled the story before it could go to print.', ex3_ko = '그들은 인쇄되기 전에 그 기사를 내렸어요.', ex4 = 'The producer pulled the segment after viewer complaints.', ex4_ko = '프로듀서는 시청자 항의 후에 그 코너를 내렸어요.', ex5 = 'Pulling a story is rare but sometimes necessary for accuracy.', ex5_ko = '기사를 내리는 건 드물지만 정확성을 위해 때로는 필요해요.' WHERE id = 'col_media_20';

-- ══════════════════════════════════════
-- ENVIRONMENT
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'Schools are taking action to reduce single-use plastics on campus.', ex3_ko = '학교들은 캠퍼스에서 일회용 플라스틱을 줄이기 위한 조치를 취하고 있어요.', ex4 = 'It''s time to take action instead of waiting for someone else.', ex4_ko = '다른 누군가를 기다리는 대신 조치를 취할 때예요.', ex5 = 'Cities took action by adding more bike lanes and electric buses.', ex5_ko = '도시들은 자전거 도로와 전기 버스를 추가하는 조치를 취했어요.' WHERE id = 'col_environment_01';
UPDATE collocations SET ex3 = 'Switching to a reusable bottle really does make a difference.', ex3_ko = '재사용 가능한 물병으로 바꾸는 것이 정말로 변화를 만들어요.', ex4 = 'Small businesses make a difference by sourcing locally.', ex4_ko = '소규모 사업체들은 지역에서 조달함으로써 변화를 만들어요.', ex5 = 'Volunteering at a local park is one way to make a difference.', ex5_ko = '지역 공원에서 봉사하는 것은 변화를 만드는 한 방법이에요.' WHERE id = 'col_environment_02';
UPDATE collocations SET ex3 = 'Companies are under pressure to reduce emissions across their supply chains.', ex3_ko = '기업들은 공급망 전반에 걸쳐 배출량을 줄이라는 압력을 받고 있어요.', ex4 = 'We can reduce household emissions by using less hot water.', ex4_ko = '뜨거운 물 사용을 줄여서 가정 배출량을 줄일 수 있어요.', ex5 = 'Forests help reduce emissions by absorbing carbon dioxide.', ex5_ko = '숲은 이산화탄소를 흡수해서 배출량을 줄이는 데 도움이 돼요.' WHERE id = 'col_environment_03';
UPDATE collocations SET ex3 = 'It''s hard to break the habit of accepting plastic bags at the store.', ex3_ko = '가게에서 비닐봉지를 받는 습관을 끊기는 어려워요.', ex4 = 'They broke the habit of food waste by meal planning every Sunday.', ex4_ko = '그들은 매주 일요일 식사를 계획해서 음식물 쓰레기 습관을 끊었어요.', ex5 = 'Breaking the habit of long showers helps save water.', ex5_ko = '긴 샤워 습관을 끊으면 물 절약에 도움이 돼요.' WHERE id = 'col_environment_04';
UPDATE collocations SET ex3 = 'The students ran a campaign to install more recycling bins on campus.', ex3_ko = '학생들은 캠퍼스에 재활용 분리수거함을 더 설치하기 위한 캠페인을 진행했어요.', ex4 = 'They run a campaign every Earth Day to plant trees.', ex4_ko = '그들은 매 지구의 날마다 나무 심기 캠페인을 진행해요.', ex5 = 'The non-profit ran a campaign to clean up the local river.', ex5_ko = '비영리 단체는 지역 강을 청소하는 캠페인을 진행했어요.' WHERE id = 'col_environment_05';
UPDATE collocations SET ex3 = 'Students held a peaceful protest demanding clean energy on campus.', ex3_ko = '학생들은 캠퍼스에서 청정 에너지를 요구하며 평화로운 시위를 열었어요.', ex4 = 'Indigenous communities held protests to stop the new pipeline.', ex4_ko = '원주민 공동체들은 새 송유관을 막기 위해 시위를 열었어요.', ex5 = 'They hold a protest every Friday in front of city hall.', ex5_ko = '그들은 매주 금요일 시청 앞에서 시위를 열어요.' WHERE id = 'col_environment_06';
UPDATE collocations SET ex3 = 'Even one person can make a real impact on their local community.', ex3_ko = '한 사람도 지역사회에 실질적인 영향을 미칠 수 있어요.', ex4 = 'She made a lasting impact through her environmental advocacy.', ex4_ko = '그녀는 환경 옹호 활동을 통해 지속적인 영향을 미쳤어요.', ex5 = 'The new policy is expected to make a major impact on air quality.', ex5_ko = '새 정책은 대기 질에 큰 영향을 미칠 것으로 예상돼요.' WHERE id = 'col_environment_07';
UPDATE collocations SET ex3 = 'Anyone can get involved by joining a local cleanup event.', ex3_ko = '지역 청소 행사에 참여하면 누구나 참여할 수 있어요.', ex4 = 'He got involved in a tree-planting project after retirement.', ex4_ko = '그는 은퇴 후 나무 심기 프로젝트에 참여했어요.', ex5 = 'Getting involved early in life shapes your values.', ex5_ko = '어린 시절부터 참여하는 것이 가치관을 형성해요.' WHERE id = 'col_environment_08';
UPDATE collocations SET ex3 = 'Schools set targets for reducing their water consumption.', ex3_ko = '학교들은 물 소비량 감소 목표를 설정했어요.', ex4 = 'Each city sets its own targets for carbon neutrality.', ex4_ko = '각 도시는 자체적으로 탄소 중립 목표를 설정해요.', ex5 = 'Setting clear targets helps measure progress over time.', ex5_ko = '명확한 목표를 설정하면 시간에 따른 진전을 측정하는 데 도움이 돼요.' WHERE id = 'col_environment_09';
UPDATE collocations SET ex3 = 'Insulating your home is a simple way to conserve energy.', ex3_ko = '집 단열은 에너지를 절약하는 간단한 방법이에요.', ex4 = 'We installed LED bulbs throughout the office to conserve energy.', ex4_ko = '우리는 에너지를 절약하기 위해 사무실 전체에 LED 전구를 설치했어요.', ex5 = 'Smart thermostats help families conserve energy automatically.', ex5_ko = '스마트 온도조절기는 가정이 자동으로 에너지를 절약하는 데 도움이 돼요.' WHERE id = 'col_environment_10';
UPDATE collocations SET ex3 = 'Protecting biodiversity helps maintain healthy ecosystems.', ex3_ko = '생물 다양성을 보호하는 것은 건강한 생태계 유지에 도움이 돼요.', ex4 = 'National parks play a vital role in protecting biodiversity.', ex4_ko = '국립공원은 생물 다양성 보호에 중요한 역할을 해요.', ex5 = 'Local efforts can also help protect biodiversity in cities.', ex5_ko = '지역의 노력도 도시의 생물 다양성을 보호하는 데 도움이 돼요.' WHERE id = 'col_environment_11';
UPDATE collocations SET ex3 = 'New technologies are helping tackle pollution in major rivers.', ex3_ko = '신기술이 주요 강의 오염을 해결하는 데 도움을 주고 있어요.', ex4 = 'Tackling pollution requires cooperation between governments and citizens.', ex4_ko = '오염을 해결하려면 정부와 시민들의 협력이 필요해요.', ex5 = 'She founded a startup to tackle plastic pollution in oceans.', ex5_ko = '그녀는 해양 플라스틱 오염을 해결하기 위해 스타트업을 설립했어요.' WHERE id = 'col_environment_12';
UPDATE collocations SET ex3 = 'Countries are switching to renewables faster than expected.', ex3_ko = '국가들이 예상보다 빠르게 재생에너지로 전환하고 있어요.', ex4 = 'Some islands have completely switched to renewables.', ex4_ko = '일부 섬들은 완전히 재생에너지로 전환했어요.', ex5 = 'Switching to renewables is good for both the planet and long-term economics.', ex5_ko = '재생에너지로 전환하는 것은 지구와 장기 경제에 모두 좋아요.' WHERE id = 'col_environment_13';
UPDATE collocations SET ex3 = 'She raises awareness through her popular environmental podcast.', ex3_ko = '그녀는 인기 있는 환경 팟캐스트를 통해 인식을 높여요.', ex4 = 'The poster campaign raised awareness about endangered species.', ex4_ko = '포스터 캠페인은 멸종 위기 종에 대한 인식을 높였어요.', ex5 = 'Schools can raise awareness through hands-on environmental projects.', ex5_ko = '학교는 실습 환경 프로젝트를 통해 인식을 높일 수 있어요.' WHERE id = 'col_environment_14';
UPDATE collocations SET ex3 = 'Restaurants are adopting sustainable practices like composting food scraps.', ex3_ko = '식당들은 음식물 찌꺼기 퇴비화 같은 지속 가능한 관행을 채택하고 있어요.', ex4 = 'The company adopted sustainable practices to attract eco-conscious customers.', ex4_ko = '회사는 환경 의식이 있는 고객을 끌어들이기 위해 지속 가능한 관행을 채택했어요.', ex5 = 'Adopting sustainable practices takes effort but pays off in the long run.', ex5_ko = '지속 가능한 관행을 채택하는 데는 노력이 필요하지만 장기적으로 보람이 있어요.' WHERE id = 'col_environment_15';
UPDATE collocations SET ex3 = 'Cooking at home helps you cut down on packaging waste.', ex3_ko = '집에서 요리하면 포장 폐기물을 줄일 수 있어요.', ex4 = 'The cafe cut down on waste by introducing a reusable cup program.', ex4_ko = '그 카페는 재사용 컵 프로그램을 도입해서 폐기물을 줄였어요.', ex5 = 'You can cut down on waste by buying only what you''ll actually use.', ex5_ko = '실제로 사용할 것만 구매하면 폐기물을 줄일 수 있어요.' WHERE id = 'col_environment_16';
UPDATE collocations SET ex3 = 'Their family went green by installing rooftop solar last year.', ex3_ko = '그 가족은 작년에 옥상 태양광을 설치하여 친환경적으로 됐어요.', ex4 = 'It''s easier to go green when your neighborhood supports it.', ex4_ko = '동네가 지원해 줄 때 친환경적으로 되는 게 더 쉬워요.', ex5 = 'Many small businesses are going green to attract younger customers.', ex5_ko = '많은 소규모 사업체들이 젊은 고객들을 끌어들이기 위해 친환경적으로 되고 있어요.' WHERE id = 'col_environment_17';
UPDATE collocations SET ex3 = 'You can support conservation efforts by adopting an endangered animal.', ex3_ko = '멸종 위기 동물을 입양함으로써 보존 노력을 지지할 수 있어요.', ex4 = 'Local volunteers support conservation efforts in nearby wetlands.', ex4_ko = '지역 자원봉사자들이 인근 습지의 보존 노력을 지지해요.', ex5 = 'The new tax incentive supports conservation efforts on private land.', ex5_ko = '새 세금 인센티브는 사유지에서의 보존 노력을 지지해요.' WHERE id = 'col_environment_18';
UPDATE collocations SET ex3 = 'Coral reefs face extinction unless ocean temperatures stabilize.', ex3_ko = '해양 온도가 안정화되지 않는 한 산호초는 멸종 위기에 처해요.', ex4 = 'Many languages and cultures also face extinction worldwide.', ex4_ko = '많은 언어와 문화도 전 세계에서 멸종 위기에 처해 있어요.', ex5 = 'Sea turtles face extinction in part because of plastic pollution.', ex5_ko = '바다거북은 부분적으로 플라스틱 오염 때문에 멸종 위기에 처해 있어요.' WHERE id = 'col_environment_19';
UPDATE collocations SET ex3 = 'Many airlines now offer ways for travelers to offset carbon.', ex3_ko = '많은 항공사들이 이제 여행자들이 탄소를 상쇄할 수 있는 방법을 제공해요.', ex4 = 'The festival offset carbon by funding local reforestation projects.', ex4_ko = '그 축제는 지역 산림 재조림 프로젝트에 자금을 지원해서 탄소를 상쇄했어요.', ex5 = 'Companies can offset carbon by investing in renewable energy.', ex5_ko = '기업들은 재생에너지에 투자해서 탄소를 상쇄할 수 있어요.' WHERE id = 'col_environment_20';

-- ══════════════════════════════════════
-- ECONOMY
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'Small farms can make a profit by selling directly to customers.', ex3_ko = '소규모 농장은 고객에게 직접 판매하여 이익을 낼 수 있어요.', ex4 = 'The company made a profit despite the difficult market conditions.', ex4_ko = '회사는 어려운 시장 상황에도 불구하고 이익을 냈어요.', ex5 = 'It''s not easy to make a profit in the first year of business.', ex5_ko = '사업 첫해에 이익을 내는 것은 쉽지 않아요.' WHERE id = 'col_economy_01';
UPDATE collocations SET ex3 = 'Investors should take calculated risks based on solid research.', ex3_ko = '투자자들은 탄탄한 연구를 바탕으로 계산된 위험을 감수해야 해요.', ex4 = 'She took a big risk by leaving her stable job to start a company.', ex4_ko = '그녀는 안정적인 직장을 떠나 회사를 시작하는 큰 위험을 감수했어요.', ex5 = 'Taking risks is part of growth, both personal and financial.', ex5_ko = '위험을 감수하는 것은 개인적 성장과 재정적 성장 모두의 일부예요.' WHERE id = 'col_economy_02';
UPDATE collocations SET ex3 = 'Her parents have been running a family business for three generations.', ex3_ko = '그녀의 부모님은 가족 사업을 3대에 걸쳐 운영해 왔어요.', ex4 = 'Running a business requires juggling many responsibilities at once.', ex4_ko = '사업을 운영하려면 한꺼번에 많은 책임을 처리해야 해요.', ex5 = 'He''s been running a successful online business for a decade.', ex5_ko = '그는 10년째 성공적인 온라인 사업을 운영하고 있어요.' WHERE id = 'col_economy_03';
UPDATE collocations SET ex3 = 'Restaurants struggle to keep costs down with rising food prices.', ex3_ko = '식당들은 식재료 가격 상승으로 비용을 낮추기가 어려워요.', ex4 = 'We keep our overhead costs down by working from home.', ex4_ko = '우리는 재택근무로 간접비를 낮춰요.', ex5 = 'Buying in bulk helps families keep their grocery costs down.', ex5_ko = '대용량 구매가 가정이 식료품 비용을 낮추는 데 도움이 돼요.' WHERE id = 'col_economy_04';
UPDATE collocations SET ex3 = 'It took the cafe 18 months to break even.', ex3_ko = '그 카페가 손익분기점에 도달하는 데 18개월이 걸렸어요.', ex4 = 'Once you break even, every additional sale is pure profit.', ex4_ko = '일단 손익분기점을 맞추면, 그 이후 매출은 모두 순수익이에요.', ex5 = 'The film just barely broke even at the box office.', ex5_ko = '그 영화는 박스오피스에서 간신히 손익분기점에 도달했어요.' WHERE id = 'col_economy_05';
UPDATE collocations SET ex3 = 'My grandparents have been holding shares in the same company for decades.', ex3_ko = '저희 조부모님은 수십 년 동안 같은 회사의 주식을 보유해 오셨어요.', ex4 = 'Many employees hold shares in their own company.', ex4_ko = '많은 직원들이 자기 회사 주식을 보유해요.', ex5 = 'Holding shares long-term often yields better returns than trading often.', ex5_ko = '주식을 장기로 보유하는 것이 자주 거래하는 것보다 더 나은 수익을 가져오는 경우가 많아요.' WHERE id = 'col_economy_06';
UPDATE collocations SET ex3 = 'She made her first investment in index funds at age 22.', ex3_ko = '그녀는 22세에 인덱스 펀드에 처음으로 투자했어요.', ex4 = 'Making an investment in education usually pays off in the long term.', ex4_ko = '교육에 투자하는 것은 보통 장기적으로 보상받아요.', ex5 = 'They made a small investment that grew into something significant.', ex5_ko = '그들은 작은 투자를 했는데 그것이 상당한 규모로 성장했어요.' WHERE id = 'col_economy_07';
UPDATE collocations SET ex3 = 'It''s easier to get a loan if you have a steady income.', ex3_ko = '안정적인 수입이 있으면 대출을 받기가 더 쉬워요.', ex4 = 'He got a student loan to pay for his masters degree.', ex4_ko = '그는 석사 학위 비용을 위해 학자금 대출을 받았어요.', ex5 = 'Many small businesses get a loan to expand their operations.', ex5_ko = '많은 소규모 사업체들이 운영 확장을 위해 대출을 받아요.' WHERE id = 'col_economy_08';
UPDATE collocations SET ex3 = 'I set a strict budget at the start of each month.', ex3_ko = '저는 매월 초에 엄격한 예산을 세워요.', ex4 = 'They set a budget for the kitchen renovation but went slightly over.', ex4_ko = '그들은 주방 리노베이션 예산을 세웠지만 약간 초과했어요.', ex5 = 'Couples who set a budget together tend to argue less about money.', ex5_ko = '함께 예산을 세우는 부부는 돈에 관해 덜 다투는 경향이 있어요.' WHERE id = 'col_economy_09';
UPDATE collocations SET ex3 = 'Self-employed people often have to pay taxes quarterly.', ex3_ko = '자영업자들은 분기마다 세금을 내야 하는 경우가 많아요.', ex4 = 'She pays her taxes online to make things easier.', ex4_ko = '그녀는 일을 더 쉽게 처리하기 위해 온라인으로 세금을 내요.', ex5 = 'It''s our duty to pay taxes that fund public services.', ex5_ko = '공공 서비스의 재원이 되는 세금을 내는 것은 우리의 의무예요.' WHERE id = 'col_economy_10';
UPDATE collocations SET ex3 = 'The tourism industry was hit hard when the region faced a recession.', ex3_ko = '관광 산업은 그 지역이 경기 침체에 직면했을 때 큰 타격을 입었어요.', ex4 = 'When countries face a recession, unemployment usually rises.', ex4_ko = '나라가 경기 침체에 직면하면 실업률이 보통 증가해요.', ex5 = 'Even strong economies can face a recession every few years.', ex5_ko = '강한 경제도 몇 년에 한 번씩 경기 침체에 직면할 수 있어요.' WHERE id = 'col_economy_11';
UPDATE collocations SET ex3 = 'Free public transport can boost the local economy in surprising ways.', ex3_ko = '무료 대중교통은 놀라운 방식으로 지역 경제를 활성화할 수 있어요.', ex4 = 'New tech jobs are boosting the economy of smaller cities.', ex4_ko = '새로운 기술 일자리들이 작은 도시들의 경제를 활성화하고 있어요.', ex5 = 'Investing in education boosts the economy over the long term.', ex5_ko = '교육에 투자하는 것은 장기적으로 경제를 활성화해요.' WHERE id = 'col_economy_12';
UPDATE collocations SET ex3 = 'The cafe generates revenue from both online and in-store sales.', ex3_ko = '그 카페는 온라인과 매장 판매 모두에서 수익을 창출해요.', ex4 = 'YouTube channels generate revenue mainly through ads and sponsorships.', ex4_ko = '유튜브 채널은 주로 광고와 스폰서십을 통해 수익을 창출해요.', ex5 = 'New revenue streams help businesses generate revenue more steadily.', ex5_ko = '새로운 수익 모델은 기업이 더 안정적으로 수익을 창출하는 데 도움이 돼요.' WHERE id = 'col_economy_13';
UPDATE collocations SET ex3 = 'Households are cutting spending on dining out due to higher prices.', ex3_ko = '가정들은 가격 상승으로 외식 지출을 삭감하고 있어요.', ex4 = 'The school district cut spending on new equipment this year.', ex4_ko = '학군은 올해 새 장비에 대한 지출을 삭감했어요.', ex5 = 'Cutting spending suddenly can hurt the economy in the short term.', ex5_ko = '갑작스러운 지출 삭감은 단기적으로 경제에 해를 끼칠 수 있어요.' WHERE id = 'col_economy_14';
UPDATE collocations SET ex3 = 'The central bank raised interest rates by half a percent yesterday.', ex3_ko = '중앙은행은 어제 금리를 0.5% 올렸어요.', ex4 = 'Raising interest rates makes borrowing more expensive for households.', ex4_ko = '금리를 올리면 가정의 대출이 더 비싸져요.', ex5 = 'Some economists argue that raising interest rates too quickly is risky.', ex5_ko = '일부 경제학자들은 금리를 너무 빠르게 올리는 것이 위험하다고 주장해요.' WHERE id = 'col_economy_15';
UPDATE collocations SET ex3 = 'Several airlines ran a deficit during the height of the pandemic.', ex3_ko = '여러 항공사가 팬데믹 절정기에 적자를 기록했어요.', ex4 = 'Running a deficit isn''t always bad if you''re investing in growth.', ex4_ko = '성장에 투자한다면 적자를 기록하는 것이 항상 나쁜 건 아니에요.', ex5 = 'The non-profit ran a deficit but continued its mission.', ex5_ko = '그 비영리 단체는 적자를 기록했지만 사명을 계속 이어갔어요.' WHERE id = 'col_economy_16';
UPDATE collocations SET ex3 = 'Stable governance helps cities attract investment over time.', ex3_ko = '안정적인 거버넌스는 도시들이 시간이 지나며 투자를 유치하는 데 도움이 돼요.', ex4 = 'The new tech hub has attracted investment from around the world.', ex4_ko = '새 기술 허브는 전 세계에서 투자를 유치했어요.', ex5 = 'They attracted investment by showing strong projected returns.', ex5_ko = '그들은 강력한 예상 수익률을 보여 투자를 유치했어요.' WHERE id = 'col_economy_17';
UPDATE collocations SET ex3 = 'Strong consumer demand is helping drive growth in the retail sector.', ex3_ko = '강한 소비자 수요가 소매 부문의 성장을 이끄는 데 도움이 되고 있어요.', ex4 = 'Education has historically driven growth in developing economies.', ex4_ko = '교육은 역사적으로 개발도상국 경제의 성장을 이끌어 왔어요.', ex5 = 'Small businesses drive growth in many local communities.', ex5_ko = '소규모 사업체들이 많은 지역사회의 성장을 이끌어요.' WHERE id = 'col_economy_18';
UPDATE collocations SET ex3 = 'The retailer went bankrupt after three years of declining sales.', ex3_ko = '그 소매업체는 3년간 매출 감소 끝에 파산했어요.', ex4 = 'Many restaurants went bankrupt during the lockdown period.', ex4_ko = '많은 식당들이 봉쇄 기간 동안 파산했어요.', ex5 = 'Companies can avoid going bankrupt with better cash flow management.', ex5_ko = '기업은 더 나은 현금 흐름 관리로 파산을 피할 수 있어요.' WHERE id = 'col_economy_19';
UPDATE collocations SET ex3 = 'Governments use various tools to control inflation during crises.', ex3_ko = '정부는 위기 동안 인플레이션을 통제하기 위해 다양한 도구를 사용해요.', ex4 = 'Controlling inflation while maintaining growth is a delicate balance.', ex4_ko = '인플레이션을 통제하면서 성장을 유지하는 것은 미묘한 균형이에요.', ex5 = 'Even successful economies can struggle to control inflation.', ex5_ko = '성공적인 경제도 인플레이션을 통제하는 데 어려움을 겪을 수 있어요.' WHERE id = 'col_economy_20';

-- ══════════════════════════════════════
-- CULTURE
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'The students put on a performance to raise money for charity.', ex3_ko = '학생들은 자선 모금을 위해 공연을 선보였어요.', ex4 = 'They put on a performance every Friday evening for the community.', ex4_ko = '그들은 지역사회를 위해 매주 금요일 저녁에 공연을 선보여요.', ex5 = 'Local children put on a performance during the summer festival.', ex5_ko = '동네 아이들이 여름 축제 동안 공연을 선보였어요.' WHERE id = 'col_culture_01';
UPDATE collocations SET ex3 = 'The museum is holding an exhibition of rare ancient pottery.', ex3_ko = '박물관은 희귀한 고대 도자기 전시회를 열고 있어요.', ex4 = 'They held an exhibition to mark the artist''s 50th anniversary.', ex4_ko = '그들은 작가의 50주년을 기념하기 위해 전시회를 열었어요.', ex5 = 'The gallery holds an exhibition every two months.', ex5_ko = '그 갤러리는 두 달에 한 번 전시회를 열어요.' WHERE id = 'col_culture_02';
UPDATE collocations SET ex3 = 'He makes art using recycled materials from his neighborhood.', ex3_ko = '그는 동네에서 나온 재활용 재료로 예술 작품을 만들어요.', ex4 = 'She started making art seriously after retiring from teaching.', ex4_ko = '그녀는 교직에서 은퇴한 후 본격적으로 예술 작품을 만들기 시작했어요.', ex5 = 'Making art every day helps her process her emotions.', ex5_ko = '매일 예술 작품을 만드는 것이 그녀가 감정을 처리하는 데 도움이 돼요.' WHERE id = 'col_culture_03';
UPDATE collocations SET ex3 = 'The pianist gave a concert in front of a packed audience.', ex3_ko = '그 피아니스트는 만석인 청중 앞에서 콘서트를 열었어요.', ex4 = 'She gives a concert in her hometown every winter.', ex4_ko = '그녀는 매년 겨울 고향에서 콘서트를 열어요.', ex5 = 'The choir gave a beautiful concert at the cathedral.', ex5_ko = '합창단은 성당에서 아름다운 콘서트를 열었어요.' WHERE id = 'col_culture_04';
UPDATE collocations SET ex3 = 'The album broke records for streaming numbers in its first week.', ex3_ko = '그 앨범은 첫 주에 스트리밍 수 기록을 깼어요.', ex4 = 'The musical broke records on Broadway last year.', ex4_ko = '그 뮤지컬은 작년에 브로드웨이에서 기록을 깼어요.', ex5 = 'The exhibition broke attendance records at the museum.', ex5_ko = '그 전시회는 박물관 관람객 수 기록을 깼어요.' WHERE id = 'col_culture_05';
UPDATE collocations SET ex3 = 'She takes inspiration from her grandmother''s old recipes.', ex3_ko = '그녀는 할머니의 옛 요리법에서 영감을 얻어요.', ex4 = 'The composer took inspiration from sounds in nature.', ex4_ko = '작곡가는 자연의 소리에서 영감을 얻었어요.', ex5 = 'Many designers take inspiration from street fashion.', ex5_ko = '많은 디자이너들이 스트리트 패션에서 영감을 얻어요.' WHERE id = 'col_culture_06';
UPDATE collocations SET ex3 = 'After years of small shows, she finally got recognition.', ex3_ko = '오랜 작은 공연 끝에 그녀는 마침내 인정을 받았어요.', ex4 = 'His work got recognition from the international art community.', ex4_ko = '그의 작품은 국제 예술계로부터 인정을 받았어요.', ex5 = 'Some artists only get recognition long after they are gone.', ex5_ko = '어떤 예술가들은 세상을 떠난 한참 뒤에야 인정을 받기도 해요.' WHERE id = 'col_culture_07';
UPDATE collocations SET ex3 = 'My grandmother teaches me recipes to keep our family traditions alive.', ex3_ko = '할머니는 가족 전통을 이어가기 위해 저에게 요리법을 가르쳐 주세요.', ex4 = 'Folk dance classes help keep cultural traditions alive.', ex4_ko = '민속 춤 수업이 문화적 전통을 이어가는 데 도움이 돼요.', ex5 = 'Storytelling has kept tribal traditions alive for generations.', ex5_ko = '이야기하기는 세대에 걸쳐 부족 전통을 이어왔어요.' WHERE id = 'col_culture_08';
UPDATE collocations SET ex3 = 'A small team of volunteers runs the local jazz festival.', ex3_ko = '작은 자원봉사자 팀이 지역 재즈 축제를 진행해요.', ex4 = 'They run the festival on donations and ticket sales.', ex4_ko = '그들은 기부금과 티켓 판매로 축제를 진행해요.', ex5 = 'Running a festival takes a full year of preparation.', ex5_ko = '축제를 진행하려면 1년의 준비 기간이 필요해요.' WHERE id = 'col_culture_09';
UPDATE collocations SET ex3 = 'She made history as the youngest conductor at the opera house.', ex3_ko = '그녀는 오페라 하우스의 최연소 지휘자로 역사를 만들었어요.', ex4 = 'The team made history by winning the title for the first time.', ex4_ko = '그 팀은 처음으로 우승하며 역사를 만들었어요.', ex5 = 'They made history by performing the play in three languages.', ex5_ko = '그들은 그 연극을 세 가지 언어로 공연하며 역사를 만들었어요.' WHERE id = 'col_culture_10';
UPDATE collocations SET ex3 = 'The chef blends Korean and French cuisines with elegance.', ex3_ko = '그 셰프는 한국과 프랑스 요리를 우아하게 융합해요.', ex4 = 'The neighborhood blends different cultures and feels alive.', ex4_ko = '그 동네는 다양한 문화를 융합하여 활기차게 느껴져요.', ex5 = 'Their music blends traditional and modern styles.', ex5_ko = '그들의 음악은 전통과 현대 스타일을 융합해요.' WHERE id = 'col_culture_11';
UPDATE collocations SET ex3 = 'The school holds an annual event to celebrate diversity.', ex3_ko = '그 학교는 다양성을 축하하기 위한 연례 행사를 열어요.', ex4 = 'The street parade celebrates diversity in our city.', ex4_ko = '그 거리 퍼레이드는 우리 도시의 다양성을 축하해요.', ex5 = 'Companies celebrate diversity through employee resource groups.', ex5_ko = '기업들은 직원 자원 그룹을 통해 다양성을 축하해요.' WHERE id = 'col_culture_12';
UPDATE collocations SET ex3 = 'UNESCO works to preserve cultural heritage around the world.', ex3_ko = '유네스코는 전 세계 문화유산을 보존하기 위해 노력해요.', ex4 = 'The community center preserves the heritage of their neighborhood.', ex4_ko = '주민 센터는 동네의 유산을 보존해요.', ex5 = 'Preserving heritage helps us understand who we are.', ex5_ko = '유산을 보존하는 것은 우리가 누구인지를 이해하는 데 도움이 돼요.' WHERE id = 'col_culture_13';
UPDATE collocations SET ex3 = 'We attended a stunning ballet performance last Saturday.', ex3_ko = '지난 토요일에 우리는 멋진 발레 공연을 관람했어요.', ex4 = 'They attended a traditional folk performance during their travels.', ex4_ko = '그들은 여행 중에 전통 민속 공연을 관람했어요.', ex5 = 'I try to attend a performance at the opera house once a year.', ex5_ko = '저는 1년에 한 번은 오페라 하우스에서 공연을 관람하려고 해요.' WHERE id = 'col_culture_14';
UPDATE collocations SET ex3 = 'They launched an art project to brighten the local subway station.', ex3_ko = '그들은 지역 지하철역을 환하게 하기 위해 예술 프로젝트를 시작했어요.', ex4 = 'The artist launched an art project on social justice.', ex4_ko = '그 예술가는 사회 정의에 관한 예술 프로젝트를 시작했어요.', ex5 = 'They launched an art project that involved children from five schools.', ex5_ko = '그들은 다섯 학교의 아이들이 참여하는 예술 프로젝트를 시작했어요.' WHERE id = 'col_culture_15';
UPDATE collocations SET ex3 = 'The new public art piece drew crowds from across the city.', ex3_ko = '새 공공 예술 작품은 도시 전역에서 군중을 끌어들였어요.', ex4 = 'The street parade drew crowds despite the bad weather.', ex4_ko = '거리 퍼레이드는 궂은 날씨에도 불구하고 군중을 끌어들였어요.', ex5 = 'The night market draws crowds every weekend.', ex5_ko = '야시장은 주말마다 군중을 끌어들여요.' WHERE id = 'col_culture_16';
UPDATE collocations SET ex3 = 'She debuted as a stand-up comedian at a small club in Seoul.', ex3_ko = '그녀는 서울의 작은 클럽에서 스탠드업 코미디언으로 데뷔했어요.', ex4 = 'He debuted as a novelist with a book about his childhood.', ex4_ko = '그는 어린 시절에 관한 책으로 소설가로 데뷔했어요.', ex5 = 'She debuted as a model at the age of 16.', ex5_ko = '그녀는 16세에 모델로 데뷔했어요.' WHERE id = 'col_culture_17';
UPDATE collocations SET ex3 = 'A wealthy patron commissioned a work for the new library.', ex3_ko = '부유한 후원자가 새 도서관을 위한 작품을 의뢰했어요.', ex4 = 'The hotel commissioned a work to feature in its lobby.', ex4_ko = '호텔은 로비에 전시할 작품을 의뢰했어요.', ex5 = 'They commissioned a work from a local artist to support the community.', ex5_ko = '그들은 지역사회를 지원하기 위해 지역 예술가에게 작품을 의뢰했어요.' WHERE id = 'col_culture_18';
UPDATE collocations SET ex3 = 'You don''t need formal training to appreciate art.', ex3_ko = '예술을 감상하는 데 정식 교육이 필요하지는 않아요.', ex4 = 'He learned to appreciate art by visiting galleries every weekend.', ex4_ko = '그는 매 주말 갤러리를 방문하며 예술을 감상하는 법을 배웠어요.', ex5 = 'Children learn to appreciate art through hands-on activities.', ex5_ko = '아이들은 직접 해보는 활동을 통해 예술을 감상하는 법을 배워요.' WHERE id = 'col_culture_19';
UPDATE collocations SET ex3 = 'Living abroad helped me gain cultural insight in unexpected ways.', ex3_ko = '해외 생활은 예상치 못한 방식으로 제가 문화적 통찰을 얻는 데 도움이 됐어요.', ex4 = 'Documentaries are an easy way to gain cultural insight.', ex4_ko = '다큐멘터리는 문화적 통찰을 얻는 쉬운 방법이에요.', ex5 = 'Reading translated literature helps you gain cultural insight.', ex5_ko = '번역 문학을 읽으면 문화적 통찰을 얻는 데 도움이 돼요.' WHERE id = 'col_culture_20';

-- ══════════════════════════════════════
-- SPORTS
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'He broke a record during yesterday''s qualifying round.', ex3_ko = '그는 어제 예선에서 기록을 깼어요.', ex4 = 'She broke a record that had stood for over a decade.', ex4_ko = '그녀는 10년 이상 유지된 기록을 깼어요.', ex5 = 'The young swimmer broke a record at her very first international event.', ex5_ko = '그 어린 수영 선수는 첫 국제 대회에서 기록을 깼어요.' WHERE id = 'col_sports_01';
UPDATE collocations SET ex3 = 'He made a comeback two years after his retirement was announced.', ex3_ko = '그는 은퇴 발표 2년 만에 복귀했어요.', ex4 = 'The team made a comeback in the last five minutes of the game.', ex4_ko = '그 팀은 경기 마지막 5분에 재기했어요.', ex5 = 'Making a comeback after a serious injury takes incredible discipline.', ex5_ko = '심각한 부상 후 복귀하는 데는 놀라운 자기 절제가 필요해요.' WHERE id = 'col_sports_02';
UPDATE collocations SET ex3 = 'She took the lead early and dictated the pace of the race.', ex3_ko = '그녀는 일찍 선두에 서서 경주의 페이스를 주도했어요.', ex4 = 'He took the lead in the third lap and stayed there.', ex4_ko = '그는 3번째 랩에서 선두에 서서 그대로 유지했어요.', ex5 = 'Our team finally took the lead at the start of the fourth quarter.', ex5_ko = '우리 팀은 4쿼터 시작에 마침내 선두에 섰어요.' WHERE id = 'col_sports_03';
UPDATE collocations SET ex3 = 'He got injured in practice and missed three weeks of training.', ex3_ko = '그는 연습 중에 부상을 입어 3주간의 훈련을 놓쳤어요.', ex4 = 'She got injured falling off her bike during the cycling race.', ex4_ko = '그녀는 사이클 경주 중 자전거에서 떨어져 부상을 입었어요.', ex5 = 'Two players got injured during the rough match.', ex5_ko = '거친 경기 동안 두 선수가 부상을 입었어요.' WHERE id = 'col_sports_04';
UPDATE collocations SET ex3 = 'He keeps fit by running every morning before work.', ex3_ko = '그는 출근 전 매일 아침 달리기로 건강을 유지해요.', ex4 = 'You don''t need a gym membership to keep fit.', ex4_ko = '건강을 유지하는 데 헬스장 회원권이 필요한 건 아니에요.', ex5 = 'Walking to work helps me keep fit without much effort.', ex5_ko = '걸어서 출퇴근하면 큰 노력 없이 건강을 유지할 수 있어요.' WHERE id = 'col_sports_05';
UPDATE collocations SET ex3 = 'The federation will hold the championship in Seoul next month.', ex3_ko = '연맹은 다음 달 서울에서 선수권 대회를 개최해요.', ex4 = 'They held the championship at a brand-new arena downtown.', ex4_ko = '그들은 시내에 새로 지어진 경기장에서 선수권 대회를 개최했어요.', ex5 = 'The country has held the championship multiple times.', ex5_ko = '그 나라는 여러 차례 선수권 대회를 개최했어요.' WHERE id = 'col_sports_06';
UPDATE collocations SET ex3 = 'He made a brilliant tackle to stop the attacker right at the goal.', ex3_ko = '그는 골 바로 앞에서 공격수를 막는 멋진 태클을 했어요.', ex4 = 'The defender made a tackle that the crowd cheered for.', ex4_ko = '수비수는 관중이 환호한 태클을 했어요.', ex5 = 'She made a clean tackle and won possession back.', ex5_ko = '그녀는 깔끔한 태클을 해서 공 소유권을 되찾았어요.' WHERE id = 'col_sports_07';
UPDATE collocations SET ex3 = 'My uncle has run a marathon on every continent.', ex3_ko = '저희 삼촌은 모든 대륙에서 마라톤을 했어요.', ex4 = 'She runs a marathon every spring for the same charity.', ex4_ko = '그녀는 매년 봄 같은 자선 단체를 위해 마라톤을 해요.', ex5 = 'Running a marathon was on her bucket list since college.', ex5_ko = '마라톤을 하는 건 대학 시절부터 그녀의 버킷 리스트에 있었어요.' WHERE id = 'col_sports_08';
UPDATE collocations SET ex3 = 'The figure skater gave a performance that brought tears to many.', ex3_ko = '그 피겨 스케이터는 많은 사람을 눈물 짓게 한 경기력을 선보였어요.', ex4 = 'He gave a strong performance under intense pressure.', ex4_ko = '그는 강한 압박 속에서 좋은 경기력을 보여줬어요.', ex5 = 'She gave a performance worth remembering at the regional final.', ex5_ko = '그녀는 지역 결승에서 기억할 만한 경기력을 보여줬어요.' WHERE id = 'col_sports_09';
UPDATE collocations SET ex3 = 'He set a personal record at the marathon last year.', ex3_ko = '그는 작년 마라톤에서 개인 기록을 세웠어요.', ex4 = 'She set a record that hasn''t been broken in twenty years.', ex4_ko = '그녀는 20년 동안 깨지지 않은 기록을 세웠어요.', ex5 = 'The athlete set a record in front of a home crowd.', ex5_ko = '그 선수는 홈 관중 앞에서 기록을 세웠어요.' WHERE id = 'col_sports_10';
UPDATE collocations SET ex3 = 'She won her first major title at the age of 19.', ex3_ko = '그녀는 19세에 첫 메이저 타이틀을 땄어요.', ex4 = 'They won the title without losing a single match.', ex4_ko = '그들은 단 한 경기도 지지 않고 타이틀을 땄어요.', ex5 = 'Winning a title at home was a dream come true for the team.', ex5_ko = '홈에서 타이틀을 따는 것은 그 팀의 꿈이 이루어진 순간이었어요.' WHERE id = 'col_sports_11';
UPDATE collocations SET ex3 = 'He scored a goal with his weaker foot.', ex3_ko = '그는 잘 안 쓰는 발로 골을 넣었어요.', ex4 = 'She scored two goals against the league leaders.', ex4_ko = '그녀는 리그 1위 팀을 상대로 두 골을 넣었어요.', ex5 = 'Scoring a goal in injury time felt almost unbelievable.', ex5_ko = '부상 시간에 골을 넣는 건 거의 믿기지 않는 기분이었어요.' WHERE id = 'col_sports_12';
UPDATE collocations SET ex3 = 'She trains hard six days a week to stay at the top.', ex3_ko = '그녀는 정상을 유지하기 위해 일주일에 6일 열심히 훈련해요.', ex4 = 'You have to train hard, but you also have to rest properly.', ex4_ko = '열심히 훈련해야 하지만 제대로 쉬기도 해야 해요.', ex5 = 'They train hard year-round, even in the off-season.', ex5_ko = '그들은 비시즌에도 일 년 내내 열심히 훈련해요.' WHERE id = 'col_sports_13';
UPDATE collocations SET ex3 = 'She competed in three Olympic Games during her career.', ex3_ko = '그녀는 선수 생활 동안 세 번의 올림픽에 출전했어요.', ex4 = 'He has competed in dozens of national championships.', ex4_ko = '그는 수십 번의 전국 선수권 대회에 출전했어요.', ex5 = 'Athletes compete in events all around the world each season.', ex5_ko = '선수들은 매 시즌 전 세계의 대회에 출전해요.' WHERE id = 'col_sports_14';
UPDATE collocations SET ex3 = 'She retired from international competition at the age of 32.', ex3_ko = '그녀는 32세에 국제 대회에서 은퇴했어요.', ex4 = 'He retired from the sport but stayed on as a coach.', ex4_ko = '그는 그 스포츠에서 은퇴했지만 코치로 남았어요.', ex5 = 'It''s hard to imagine retiring from a sport you love.', ex5_ko = '사랑하는 스포츠에서 은퇴하는 걸 상상하기는 어려워요.' WHERE id = 'col_sports_15';
UPDATE collocations SET ex3 = 'The defending champions suffered a surprising defeat in the opening match.', ex3_ko = '디펜딩 챔피언은 개막전에서 충격적인 패배를 당했어요.', ex4 = 'Suffering a defeat early in the tournament can be devastating.', ex4_ko = '토너먼트 초반에 패배를 당하는 건 정말 충격적일 수 있어요.', ex5 = 'The team suffered a narrow defeat in the final seconds.', ex5_ko = '그 팀은 마지막 몇 초에 근소한 차이로 패배를 당했어요.' WHERE id = 'col_sports_16';
UPDATE collocations SET ex3 = 'Our team reached the final for the first time in club history.', ex3_ko = '우리 팀은 클럽 역사상 처음으로 결승에 진출했어요.', ex4 = 'She reached the final without dropping a single set.', ex4_ko = '그녀는 단 한 세트도 내주지 않고 결승에 진출했어요.', ex5 = 'They reached the final after an exciting semifinal.', ex5_ko = '그들은 흥미진진한 준결승 끝에 결승에 진출했어요.' WHERE id = 'col_sports_17';
UPDATE collocations SET ex3 = 'He put in his best performance ever at the regional championship.', ex3_ko = '그는 지역 선수권 대회에서 역대 최고의 경기력을 보여줬어요.', ex4 = 'The team put in a strong performance against the league favorites.', ex4_ko = '그 팀은 리그 우승 후보를 상대로 강한 경기력을 보여줬어요.', ex5 = 'She put in a performance that earned her a place on the national team.', ex5_ko = '그녀는 국가대표 자리를 얻을 만한 경기력을 보여줬어요.' WHERE id = 'col_sports_18';
UPDATE collocations SET ex3 = 'She beat her opponent in a stunning upset victory.', ex3_ko = '그녀는 충격적인 역전 승리로 상대를 이겼어요.', ex4 = 'He beat his opponent in straight sets without much trouble.', ex4_ko = '그는 별 어려움 없이 스트레이트 세트로 상대를 이겼어요.', ex5 = 'Beating an opponent ranked higher than you feels incredible.', ex5_ko = '자기보다 순위가 높은 상대를 이기는 건 정말 놀라운 기분이에요.' WHERE id = 'col_sports_19';
UPDATE collocations SET ex3 = 'He pulled out of the tournament after testing positive for the flu.', ex3_ko = '그는 독감 양성 판정을 받은 후 토너먼트에서 기권했어요.', ex4 = 'She pulled out of the match to recover from a back injury.', ex4_ko = '그녀는 허리 부상에서 회복하기 위해 경기를 기권했어요.', ex5 = 'Several athletes pulled out of the competition last-minute.', ex5_ko = '여러 선수들이 막판에 대회를 기권했어요.' WHERE id = 'col_sports_20';

-- ══════════════════════════════════════
-- DISCUSSION
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'He raised a thoughtful point during the team discussion.', ex3_ko = '그는 팀 토론 중 사려 깊은 요점을 제기했어요.', ex4 = 'She raised a point that no one had considered before.', ex4_ko = '그녀는 아무도 이전에 고려하지 않은 요점을 제기했어요.', ex5 = 'Raising a quick point at the end can change the tone of a meeting.', ex5_ko = '회의 마지막에 짧은 요점을 제기하면 분위기가 바뀔 수 있어요.' WHERE id = 'col_discussion_01';
UPDATE collocations SET ex3 = 'The committee reached a consensus after hours of debate.', ex3_ko = '위원회는 몇 시간의 토론 끝에 합의에 이르렀어요.', ex4 = 'It''s rare to reach a consensus on such polarizing topics.', ex4_ko = '그렇게 의견이 갈리는 주제에서 합의에 이르는 것은 드물어요.', ex5 = 'They reached a consensus by finding common ground.', ex5_ko = '그들은 공통점을 찾아 합의에 이르렀어요.' WHERE id = 'col_discussion_02';
UPDATE collocations SET ex3 = 'He put forward a strong argument backed up by statistics.', ex3_ko = '그는 통계로 뒷받침된 강력한 주장을 내놓았어요.', ex4 = 'She put forward an argument based on her own research.', ex4_ko = '그녀는 자신의 연구를 바탕으로 주장을 내놓았어요.', ex5 = 'Putting forward a clear argument helps move the discussion forward.', ex5_ko = '명확한 주장을 내놓으면 토론이 진전되는 데 도움이 돼요.' WHERE id = 'col_discussion_03';
UPDATE collocations SET ex3 = 'She took a strong stance against the proposed changes.', ex3_ko = '그녀는 제안된 변경에 강한 입장을 취했어요.', ex4 = 'It''s not always easy to take a stance on sensitive issues.', ex4_ko = '민감한 문제에 입장을 취하기가 항상 쉽지는 않아요.', ex5 = 'Leaders are expected to take a stance when needed.', ex5_ko = '리더들은 필요할 때 입장을 취해야 해요.' WHERE id = 'col_discussion_04';
UPDATE collocations SET ex3 = 'He challenged the assumption that working longer means working better.', ex3_ko = '그는 더 오래 일하는 것이 더 잘 일하는 것이라는 가정에 의문을 제기했어요.', ex4 = 'Children naturally challenge the assumptions of adults.', ex4_ko = '아이들은 자연스럽게 어른들의 가정에 의문을 제기해요.', ex5 = 'A good teacher encourages students to challenge assumptions.', ex5_ko = '좋은 선생님은 학생들이 가정에 의문을 제기하도록 격려해요.' WHERE id = 'col_discussion_05';
UPDATE collocations SET ex3 = 'She backed up her claim with evidence from peer-reviewed journals.', ex3_ko = '그녀는 동료 심사 저널의 증거로 주장을 뒷받침했어요.', ex4 = 'You should always be ready to back up your claim with examples.', ex4_ko = '예시로 주장을 뒷받침할 준비가 항상 되어 있어야 해요.', ex5 = 'He backed up his claim with figures from a recent survey.', ex5_ko = '그는 최근 설문 조사 수치로 자신의 주장을 뒷받침했어요.' WHERE id = 'col_discussion_06';
UPDATE collocations SET ex3 = 'The university holds a debate on current issues every semester.', ex3_ko = '그 대학은 매 학기마다 시사 문제에 대한 토론을 개최해요.', ex4 = 'They held a debate between the two candidates last night.', ex4_ko = '그들은 어젯밤 두 후보 사이의 토론을 개최했어요.', ex5 = 'Holding a debate online attracted a much wider audience.', ex5_ko = '온라인으로 토론을 개최하니 훨씬 더 많은 청중이 모였어요.' WHERE id = 'col_discussion_07';
UPDATE collocations SET ex3 = 'After analyzing the data, they came to a surprising conclusion.', ex3_ko = '데이터를 분석한 후 그들은 놀라운 결론에 이르렀어요.', ex4 = 'We came to the conclusion that the project was not feasible.', ex4_ko = '우리는 그 프로젝트가 실현 가능하지 않다는 결론에 이르렀어요.', ex5 = 'Coming to a conclusion sometimes requires sleeping on it.', ex5_ko = '결론에 이르는 것은 때로 하룻밤 자고 생각해야 해요.' WHERE id = 'col_discussion_08';
UPDATE collocations SET ex3 = 'In healthy discussions, everyone should feel safe to express an opinion.', ex3_ko = '건강한 토론에서는 모두가 안전하게 의견을 표현할 수 있어야 해요.', ex4 = 'He expressed his opinion calmly even when others disagreed.', ex4_ko = '그는 다른 사람들이 동의하지 않을 때도 침착하게 의견을 표현했어요.', ex5 = 'She expressed her opinion through a beautifully written essay.', ex5_ko = '그녀는 아름답게 쓰인 에세이를 통해 의견을 표현했어요.' WHERE id = 'col_discussion_09';
UPDATE collocations SET ex3 = 'It''s respectful to acknowledge a viewpoint before responding.', ex3_ko = '답변하기 전에 관점을 인정하는 것은 존중하는 행동이에요.', ex4 = 'She acknowledged my viewpoint and offered a different perspective.', ex4_ko = '그녀는 제 관점을 인정하고 다른 관점을 제시했어요.', ex5 = 'Acknowledging the opposing viewpoint makes your argument stronger.', ex5_ko = '반대 관점을 인정하면 자신의 주장이 더 강해져요.' WHERE id = 'col_discussion_10';
UPDATE collocations SET ex3 = 'He made a really good point about how we should measure success.', ex3_ko = '그는 우리가 성공을 어떻게 측정해야 하는지에 대해 정말 좋은 요점을 말했어요.', ex4 = 'She made a point that completely shifted the team''s thinking.', ex4_ko = '그녀는 팀의 사고를 완전히 바꾸는 요점을 말했어요.', ex5 = 'Making a point clearly is more important than making many points.', ex5_ko = '많은 요점을 말하는 것보다 한 요점을 명확히 말하는 게 더 중요해요.' WHERE id = 'col_discussion_11';
UPDATE collocations SET ex3 = 'The teacher opened up a discussion about cyberbullying in school.', ex3_ko = '선생님은 학교에서의 사이버 괴롭힘에 대한 토론을 시작했어요.', ex4 = 'Her question opened up a discussion that lasted the whole hour.', ex4_ko = '그녀의 질문이 한 시간 내내 이어진 토론을 시작했어요.', ex5 = 'A well-timed question can open up a discussion in any meeting.', ex5_ko = '적절한 타이밍의 질문은 어느 회의에서나 토론을 시작할 수 있어요.' WHERE id = 'col_discussion_12';
UPDATE collocations SET ex3 = 'I disagree with the idea, but I respect how you presented it.', ex3_ko = '그 아이디어에는 동의하지 않지만 제시한 방식은 존중해요.', ex4 = 'She politely disagreed with her mentor''s advice.', ex4_ko = '그녀는 멘토의 조언에 정중하게 동의하지 않았어요.', ex5 = 'It''s OK to disagree with someone you usually agree with.', ex5_ko = '평소에 동의하는 사람과도 동의하지 않을 수 있어요.' WHERE id = 'col_discussion_13';
UPDATE collocations SET ex3 = 'She built on her teammate''s idea and made it even better.', ex3_ko = '그녀는 팀원의 아이디어를 발전시켜 더 좋게 만들었어요.', ex4 = 'Good brainstorming sessions involve building on each other''s ideas.', ex4_ko = '좋은 브레인스토밍 세션에서는 서로의 아이디어를 발전시켜요.', ex5 = 'He built on the original concept to create something completely new.', ex5_ko = '그는 원래 개념을 발전시켜 완전히 새로운 것을 만들었어요.' WHERE id = 'col_discussion_14';
UPDATE collocations SET ex3 = 'Let me summarise the key points before we wrap up.', ex3_ko = '마무리하기 전에 핵심 요점을 요약할게요.', ex4 = 'She summarised the key points so newcomers could catch up.', ex4_ko = '그녀는 새로 온 사람들이 따라잡을 수 있도록 핵심 요점을 요약했어요.', ex5 = 'I always summarise the key points at the end of my notes.', ex5_ko = '저는 항상 노트의 끝에 핵심 요점을 요약해요.' WHERE id = 'col_discussion_15';
UPDATE collocations SET ex3 = 'She drew a clear distinction between persuasion and manipulation.', ex3_ko = '그녀는 설득과 조작 사이의 명확한 구분을 지었어요.', ex4 = 'The article draws a distinction between correlation and causation.', ex4_ko = '그 기사는 상관관계와 인과관계의 차이를 명확히 해요.', ex5 = 'Drawing a clear distinction is the first step toward clear thinking.', ex5_ko = '명확하게 구분하는 것이 명확한 사고의 첫 걸음이에요.' WHERE id = 'col_discussion_16';
UPDATE collocations SET ex3 = 'She tactfully shifted the focus back to the original question.', ex3_ko = '그녀는 재치 있게 초점을 원래 질문으로 다시 옮겼어요.', ex4 = 'The host shifted the focus to lighter topics after the heated debate.', ex4_ko = '진행자는 격렬한 토론 후 가벼운 주제로 초점을 옮겼어요.', ex5 = 'Sometimes you need to shift the focus to keep the conversation moving.', ex5_ko = '때로는 대화가 계속되도록 초점을 옮길 필요가 있어요.' WHERE id = 'col_discussion_17';
UPDATE collocations SET ex3 = 'Talks have reached an impasse over the issue of pay.', ex3_ko = '협상이 임금 문제로 교착 상태에 빠졌어요.', ex4 = 'When discussions reach an impasse, a mediator can sometimes help.', ex4_ko = '토론이 교착 상태에 빠지면 중재자가 때로 도움이 될 수 있어요.', ex5 = 'They reached an impasse and decided to revisit the issue next week.', ex5_ko = '그들은 교착 상태에 빠져서 다음 주에 다시 논의하기로 했어요.' WHERE id = 'col_discussion_18';
UPDATE collocations SET ex3 = 'She invited feedback on the draft before submitting it.', ex3_ko = '그녀는 제출 전에 초안에 대한 피드백을 요청했어요.', ex4 = 'The conference organizers invited feedback from all attendees.', ex4_ko = '컨퍼런스 주최 측은 모든 참석자들에게 피드백을 요청했어요.', ex5 = 'Inviting feedback openly shows that you''re open to growth.', ex5_ko = '피드백을 공개적으로 요청하는 것은 성장에 열려 있음을 보여줘요.' WHERE id = 'col_discussion_19';
UPDATE collocations SET ex3 = 'Let''s wrap up the discussion and revisit it next week.', ex3_ko = '토론을 마무리하고 다음 주에 다시 논의해요.', ex4 = 'She wrapped up the discussion with three clear action items.', ex4_ko = '그녀는 세 가지 명확한 실행 항목으로 토론을 마무리했어요.', ex5 = 'Wrapping up a discussion clearly helps people leave with purpose.', ex5_ko = '토론을 명확히 마무리하면 사람들이 목적의식을 가지고 떠날 수 있어요.' WHERE id = 'col_discussion_20';

-- ══════════════════════════════════════
-- PRESENTATION
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'She gave a 10-minute presentation on the project results.', ex3_ko = '그녀는 프로젝트 결과에 대한 10분 발표를 했어요.', ex4 = 'I have to give a presentation in English for the first time.', ex4_ko = '저는 처음으로 영어로 발표를 해야 해요.', ex5 = 'He gives a presentation at every team meeting.', ex5_ko = '그는 매번 팀 회의에서 발표를 해요.' WHERE id = 'col_presentation_01';
UPDATE collocations SET ex3 = 'She delivered a memorable speech at her graduation.', ex3_ko = '그녀는 졸업식에서 기억에 남는 연설을 했어요.', ex4 = 'He delivered a brief speech to thank his team.', ex4_ko = '그는 팀에게 감사를 표하는 짧은 연설을 했어요.', ex5 = 'Delivering a speech in a second language takes real practice.', ex5_ko = '제2언어로 연설을 하는 데는 진정한 연습이 필요해요.' WHERE id = 'col_presentation_02';
UPDATE collocations SET ex3 = 'She set up her slide deck and ran a quick rehearsal.', ex3_ko = '그녀는 슬라이드 덱을 준비하고 빠른 리허설을 했어요.', ex4 = 'Setting up the slide deck took longer than expected.', ex4_ko = '슬라이드 덱을 준비하는 데 예상보다 오래 걸렸어요.', ex5 = 'He set up the slide deck the night before to avoid stress.', ex5_ko = '그는 스트레스를 피하려고 전날 밤 슬라이드 덱을 준비했어요.' WHERE id = 'col_presentation_03';
UPDATE collocations SET ex3 = 'Let me walk you through the data from each region.', ex3_ko = '각 지역의 데이터를 단계별로 설명해 드릴게요.', ex4 = 'She walked through the data carefully to avoid confusion.', ex4_ko = '그녀는 혼동을 피하기 위해 데이터를 신중하게 설명했어요.', ex5 = 'Walking through the data step by step helps everyone understand.', ex5_ko = '데이터를 단계별로 설명하면 모두가 이해하는 데 도움이 돼요.' WHERE id = 'col_presentation_04';
UPDATE collocations SET ex3 = 'A great story at the start instantly captures attention.', ex3_ko = '시작 부분의 멋진 이야기는 즉시 주의를 끌어요.', ex4 = 'She captured the attention of every executive in the room.', ex4_ko = '그녀는 그 방의 모든 임원의 주의를 끌었어요.', ex5 = 'Capturing attention in the first 30 seconds is key.', ex5_ko = '첫 30초 안에 주의를 끄는 것이 핵심이에요.' WHERE id = 'col_presentation_05';
UPDATE collocations SET ex3 = 'He outlined the agenda using just three clear points.', ex3_ko = '그는 단 세 가지 명확한 요점으로 안건을 설명했어요.', ex4 = 'She outlined the agenda before introducing the speakers.', ex4_ko = '그녀는 연사들을 소개하기 전에 안건을 설명했어요.', ex5 = 'Outlining the agenda helps the audience know what to expect.', ex5_ko = '안건을 설명하면 청중이 무엇을 기대해야 할지 알 수 있어요.' WHERE id = 'col_presentation_06';
UPDATE collocations SET ex3 = 'She made eye contact with each section of the audience in turn.', ex3_ko = '그녀는 청중의 각 구역과 차례로 눈을 마주쳤어요.', ex4 = 'Making eye contact helps the audience feel personally addressed.', ex4_ko = '눈을 마주치는 것은 청중이 개인적으로 다뤄진다고 느끼는 데 도움이 돼요.', ex5 = 'I struggle to make eye contact when I''m nervous.', ex5_ko = '저는 긴장하면 눈을 마주치는 게 힘들어요.' WHERE id = 'col_presentation_07';
UPDATE collocations SET ex3 = 'He engaged the audience by asking them to vote on a question.', ex3_ko = '그는 청중에게 질문에 투표하라고 요청해서 사로잡았어요.', ex4 = 'Good visuals can help engage the audience throughout.', ex4_ko = '좋은 시각 자료는 청중을 처음부터 끝까지 사로잡는 데 도움이 돼요.', ex5 = 'She engages the audience by sharing personal stories.', ex5_ko = '그녀는 개인적인 이야기를 공유함으로써 청중을 사로잡아요.' WHERE id = 'col_presentation_08';
UPDATE collocations SET ex3 = 'She highlighted the key findings using simple charts.', ex3_ko = '그녀는 간단한 차트로 핵심 결과를 강조했어요.', ex4 = 'He highlighted the key findings in bold red text.', ex4_ko = '그는 굵은 빨간 글씨로 핵심 결과를 강조했어요.', ex5 = 'Highlighting the key findings at the start saves everyone time.', ex5_ko = '처음에 핵심 결과를 강조하면 모두의 시간을 절약해요.' WHERE id = 'col_presentation_09';
UPDATE collocations SET ex3 = 'She fielded questions calmly even under tough scrutiny.', ex3_ko = '그녀는 엄격한 조사 속에서도 침착하게 질문을 처리했어요.', ex4 = 'He fielded questions from the press for over an hour.', ex4_ko = '그는 한 시간 넘게 언론의 질문을 처리했어요.', ex5 = 'Fielding questions well requires preparation and confidence.', ex5_ko = '질문을 잘 처리하려면 준비와 자신감이 필요해요.' WHERE id = 'col_presentation_10';
UPDATE collocations SET ex3 = 'She wrapped up the presentation with a powerful summary slide.', ex3_ko = '그녀는 강력한 요약 슬라이드로 발표를 마무리했어요.', ex4 = 'He wrapped up the presentation by inviting questions.', ex4_ko = '그는 질문을 받으며 발표를 마무리했어요.', ex5 = 'Wrapping up a presentation with a call to action is effective.', ex5_ko = '행동 촉구로 발표를 마무리하면 효과적이에요.' WHERE id = 'col_presentation_11';
UPDATE collocations SET ex3 = 'If you refer to the chart on slide 12, you''ll see the trend.', ex3_ko = '슬라이드 12의 차트를 보시면 추세를 볼 수 있어요.', ex4 = 'She referred to a chart that showed three years of growth.', ex4_ko = '그녀는 3년간의 성장을 보여주는 차트를 언급했어요.', ex5 = 'He referred to a chart to back up his key argument.', ex5_ko = '그는 핵심 주장을 뒷받침하기 위해 차트를 언급했어요.' WHERE id = 'col_presentation_12';
UPDATE collocations SET ex3 = 'I''ll take questions for the next ten minutes.', ex3_ko = '앞으로 10분 동안 질문을 받을게요.', ex4 = 'She took questions both in the room and online.', ex4_ko = '그녀는 현장과 온라인 모두에서 질문을 받았어요.', ex5 = 'Taking questions early can make the rest of the talk more interactive.', ex5_ko = '질문을 일찍 받으면 나머지 발표가 더 상호작용적일 수 있어요.' WHERE id = 'col_presentation_13';
UPDATE collocations SET ex3 = 'He lost the thread when an unexpected question came in.', ex3_ko = '그는 예상치 못한 질문이 들어왔을 때 흐름을 잃었어요.', ex4 = 'She paused for water and lost the thread for a second.', ex4_ko = '그녀는 물을 마시려고 잠시 멈췄다가 흐름을 잠깐 잃었어요.', ex5 = 'Losing the thread is normal — just smile and continue.', ex5_ko = '흐름을 잃는 건 흔한 일이에요 — 그냥 미소 짓고 계속하세요.' WHERE id = 'col_presentation_14';
UPDATE collocations SET ex3 = 'She uses breathing exercises to handle her nerves.', ex3_ko = '그녀는 긴장을 다스리기 위해 호흡 운동을 사용해요.', ex4 = 'He handles his nerves by focusing on the message, not himself.', ex4_ko = '그는 자신이 아닌 메시지에 집중함으로써 긴장을 다스려요.', ex5 = 'Learning to handle nerves is a skill that improves with practice.', ex5_ko = '긴장을 다스리는 법을 배우는 것은 연습으로 발전하는 기술이에요.' WHERE id = 'col_presentation_15';
UPDATE collocations SET ex3 = 'She illustrated her point with a clip from a popular movie.', ex3_ko = '그녀는 인기 영화의 클립으로 자신의 요점을 설명했어요.', ex4 = 'He illustrated his point using a story from his own childhood.', ex4_ko = '그는 자신의 어린 시절 이야기로 요점을 설명했어요.', ex5 = 'Illustrating a point with a real example makes it memorable.', ex5_ko = '실제 예시로 요점을 설명하면 기억에 남아요.' WHERE id = 'col_presentation_16';
UPDATE collocations SET ex3 = 'The Q&A ran over time because the audience had so many questions.', ex3_ko = '청중이 질문이 너무 많아 Q&A가 시간을 초과했어요.', ex4 = 'Try not to run over time during a board presentation.', ex4_ko = '이사회 발표에서는 시간을 초과하지 않도록 하세요.', ex5 = 'She ran over time but no one minded because she was engaging.', ex5_ko = '그녀는 시간을 초과했지만 사로잡는 발표였기에 아무도 개의치 않았어요.' WHERE id = 'col_presentation_17';
UPDATE collocations SET ex3 = 'He transitions smoothly between his slides using consistent phrasing.', ex3_ko = '그는 일관된 표현으로 슬라이드 간에 매끄럽게 전환해요.', ex4 = 'Transitioning smoothly requires practice and clear signposting.', ex4_ko = '매끄럽게 전환하려면 연습과 명확한 안내가 필요해요.', ex5 = 'She transitioned smoothly from the problem to the proposed solution.', ex5_ko = '그녀는 문제에서 제안된 해결책으로 매끄럽게 전환했어요.' WHERE id = 'col_presentation_18';
UPDATE collocations SET ex3 = 'He tailored his message for the engineering team vs. the executives.', ex3_ko = '그는 엔지니어링 팀과 임원진에게 메시지를 다르게 맞춤화했어요.', ex4 = 'Tailoring your message shows respect for your audience''s time.', ex4_ko = '메시지를 맞춤화하는 것은 청중의 시간에 대한 존중을 보여줘요.', ex5 = 'She tailored her message based on a quick audience poll.', ex5_ko = '그녀는 청중 빠른 투표를 바탕으로 메시지를 맞춤화했어요.' WHERE id = 'col_presentation_19';
UPDATE collocations SET ex3 = 'He paused for effect, letting the silence build the tension.', ex3_ko = '그는 효과를 위해 잠시 멈춰서 침묵이 긴장을 쌓도록 했어요.', ex4 = 'She paused for effect just before the final reveal.', ex4_ko = '그녀는 마지막 공개 직전에 효과를 위해 잠시 멈췄어요.', ex5 = 'Pausing for effect is a small move that has a big impact.', ex5_ko = '효과를 위해 잠시 멈추는 것은 큰 영향을 미치는 작은 움직임이에요.' WHERE id = 'col_presentation_20';

-- ══════════════════════════════════════
-- NEGOTIATION
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'They reached an agreement after almost a year of discussions.', ex3_ko = '그들은 거의 1년에 걸친 논의 끝에 합의에 도달했어요.', ex4 = 'We''re close to reaching an agreement on the terms.', ex4_ko = '우리는 조건에 대한 합의에 도달하기 직전이에요.', ex5 = 'Reaching an agreement felt like a huge relief for both sides.', ex5_ko = '합의에 도달한 것은 양측에 큰 안도감을 줬어요.' WHERE id = 'col_negotiation_01';
UPDATE collocations SET ex3 = 'She made a concession on delivery time to secure the deal.', ex3_ko = '그녀는 거래를 확보하기 위해 납기 시간에 양보했어요.', ex4 = 'Sometimes you have to make a concession to keep the relationship.', ex4_ko = '관계를 유지하기 위해 때로는 양보해야 해요.', ex5 = 'They made a small concession that opened the door to bigger talks.', ex5_ko = '그들은 더 큰 협상의 문을 여는 작은 양보를 했어요.' WHERE id = 'col_negotiation_02';
UPDATE collocations SET ex3 = 'They struck a deal that benefits everyone involved.', ex3_ko = '그들은 관련된 모두에게 이로운 거래를 성사시켰어요.', ex4 = 'She struck a deal with the local farm to supply ingredients.', ex4_ko = '그녀는 재료를 공급받기 위해 지역 농장과 거래를 성사시켰어요.', ex5 = 'They struck a deal just before the deadline.', ex5_ko = '그들은 마감 직전에 거래를 성사시켰어요.' WHERE id = 'col_negotiation_03';
UPDATE collocations SET ex3 = 'She walked away from the table when no compromise was possible.', ex3_ko = '타협이 불가능해지자 그녀는 협상 테이블을 떠났어요.', ex4 = 'Knowing when to walk away from the table is a critical skill.', ex4_ko = '언제 협상 테이블을 떠나야 할지 아는 것은 중요한 능력이에요.', ex5 = 'They walked away from the table but came back the next day.', ex5_ko = '그들은 협상 테이블을 떠났지만 다음 날 다시 돌아왔어요.' WHERE id = 'col_negotiation_04';
UPDATE collocations SET ex3 = 'Her boss drives a hard bargain on every project budget.', ex3_ko = '그녀의 상사는 모든 프로젝트 예산에서 강하게 협상해요.', ex4 = 'They drove a hard bargain but eventually closed the deal.', ex4_ko = '그들은 강하게 협상했지만 결국 거래를 성사시켰어요.', ex5 = 'Driving a hard bargain doesn''t mean being aggressive.', ex5_ko = '강하게 협상하는 것이 공격적인 태도를 의미하지는 않아요.' WHERE id = 'col_negotiation_05';
UPDATE collocations SET ex3 = 'Both parties have agreed to come to the table next Tuesday.', ex3_ko = '양측은 다음 주 화요일에 협상 테이블에 나서기로 합의했어요.', ex4 = 'She came to the table with a clear list of priorities.', ex4_ko = '그녀는 명확한 우선순위 목록을 들고 협상 테이블에 나섰어요.', ex5 = 'It took weeks just to get them to come to the table.', ex5_ko = '그들을 협상 테이블에 나서게 하는 데만 몇 주가 걸렸어요.' WHERE id = 'col_negotiation_06';
UPDATE collocations SET ex3 = 'They set clear terms for the partnership before signing.', ex3_ko = '그들은 서명 전에 파트너십에 대한 명확한 조건을 정했어요.', ex4 = 'He set terms that protected both his interests and the client''s.', ex4_ko = '그는 자신과 고객의 이익을 모두 보호하는 조건을 정했어요.', ex5 = 'Setting clear terms upfront prevents misunderstandings later.', ex5_ko = '처음부터 명확한 조건을 정하면 나중에 오해를 막을 수 있어요.' WHERE id = 'col_negotiation_07';
UPDATE collocations SET ex3 = 'A skilled mediator helped them bridge the gap in expectations.', ex3_ko = '능숙한 중재자가 그들의 기대 격차를 좁히는 데 도움이 됐어요.', ex4 = 'Bridging the gap between the two teams took months.', ex4_ko = '두 팀 사이의 격차를 좁히는 데 몇 달이 걸렸어요.', ex5 = 'They bridged the gap by finding shared values.', ex5_ko = '그들은 공유된 가치를 찾아 격차를 좁혔어요.' WHERE id = 'col_negotiation_08';
UPDATE collocations SET ex3 = 'She put a creative new option on the table during the meeting.', ex3_ko = '그녀는 회의 중에 창의적인 새 옵션을 제안으로 내놓았어요.', ex4 = 'They put extra benefits on the table to attract the candidate.', ex4_ko = '그들은 후보자를 끌어들이기 위해 추가 혜택을 제안으로 내놓았어요.', ex5 = 'Putting more on the table sometimes speeds up the discussion.', ex5_ko = '더 많은 것을 제안으로 내놓으면 때로는 논의가 빨라져요.' WHERE id = 'col_negotiation_09';
UPDATE collocations SET ex3 = 'He held firm despite pressure to lower his asking price.', ex3_ko = '그는 호가를 낮추라는 압박에도 굳건한 입장을 유지했어요.', ex4 = 'She held firm on her boundaries throughout the discussion.', ex4_ko = '그녀는 논의 내내 자신의 경계에 굳건한 입장을 유지했어요.', ex5 = 'Holding firm is sometimes the only way to reach a fair outcome.', ex5_ko = '입장을 굳건히 유지하는 것이 때로 공정한 결과에 이르는 유일한 방법이에요.' WHERE id = 'col_negotiation_10';
UPDATE collocations SET ex3 = 'The lawyer drew up a contract that protected both parties.', ex3_ko = '변호사는 양측을 보호하는 계약서를 작성했어요.', ex4 = 'She drew up a contract in plain language without legal jargon.', ex4_ko = '그녀는 법률 용어 없이 평이한 언어로 계약서를 작성했어요.', ex5 = 'They drew up a contract that included all the agreed-upon terms.', ex5_ko = '그들은 합의된 모든 조건을 포함한 계약서를 작성했어요.' WHERE id = 'col_negotiation_11';
UPDATE collocations SET ex3 = 'Let''s try to meet in the middle on the timeline.', ex3_ko = '일정에서 절충점을 찾아봐요.', ex4 = 'They met in the middle and both walked away satisfied.', ex4_ko = '그들은 절충점을 찾았고 양쪽 모두 만족하며 돌아갔어요.', ex5 = 'Meeting in the middle is often the path to long-term partnerships.', ex5_ko = '절충점을 찾는 것이 종종 장기적인 파트너십으로 가는 길이에요.' WHERE id = 'col_negotiation_12';
UPDATE collocations SET ex3 = 'He politely rejected the offer and proposed an alternative.', ex3_ko = '그는 정중하게 제안을 거절하고 대안을 제시했어요.', ex4 = 'She rejected the offer because the timing wasn''t right.', ex4_ko = '그녀는 시기가 맞지 않아 제안을 거절했어요.', ex5 = 'Rejecting an offer firmly but kindly keeps the door open.', ex5_ko = '단호하지만 친절하게 제안을 거절하면 문이 열려 있을 수 있어요.' WHERE id = 'col_negotiation_13';
UPDATE collocations SET ex3 = 'She pushed for better terms after researching the market rate.', ex3_ko = '그녀는 시장 가격을 조사한 후 더 나은 조건을 강하게 요구했어요.', ex4 = 'He pushed for better terms by walking through his contributions.', ex4_ko = '그는 자신의 기여를 설명하며 더 나은 조건을 강하게 요구했어요.', ex5 = 'Pushing for better terms is reasonable when you bring real value.', ex5_ko = '진정한 가치를 가져온다면 더 나은 조건을 요구하는 것은 합리적이에요.' WHERE id = 'col_negotiation_14';
UPDATE collocations SET ex3 = 'They signed the contract this morning in a brief ceremony.', ex3_ko = '그들은 오늘 아침 짧은 의식에서 계약서에 서명했어요.', ex4 = 'She signed the contract only after consulting her lawyer.', ex4_ko = '그녀는 변호사와 상의한 후에야 계약서에 서명했어요.', ex5 = 'Don''t sign a contract before you fully understand it.', ex5_ko = '계약서를 완전히 이해하기 전에는 서명하지 마세요.' WHERE id = 'col_negotiation_15';
UPDATE collocations SET ex3 = 'You can usually negotiate the price at antique markets.', ex3_ko = '골동품 시장에서는 보통 가격을 협상할 수 있어요.', ex4 = 'He negotiated the price down by about 15%.', ex4_ko = '그는 가격을 약 15% 내려서 협상했어요.', ex5 = 'Negotiating the price politely can save you a lot of money.', ex5_ko = '정중하게 가격을 협상하면 많은 돈을 절약할 수 있어요.' WHERE id = 'col_negotiation_16';
UPDATE collocations SET ex3 = 'Negotiations broke down over the issue of insurance coverage.', ex3_ko = '보험 적용 문제로 협상이 결렬됐어요.', ex4 = 'If negotiations break down, the project will be delayed.', ex4_ko = '협상이 결렬되면 프로젝트가 지연될 거예요.', ex5 = 'Negotiations broke down once but resumed two weeks later.', ex5_ko = '협상은 한 번 결렬됐지만 2주 후에 재개됐어요.' WHERE id = 'col_negotiation_17';
UPDATE collocations SET ex3 = 'The team tabled a proposal that addressed all the major concerns.', ex3_ko = '그 팀은 모든 주요 우려를 다루는 제안을 제출했어요.', ex4 = 'She tabled a proposal during the closing session.', ex4_ko = '그녀는 마무리 세션에서 제안을 제출했어요.', ex5 = 'Tabling a proposal at the right moment matters as much as the content.', ex5_ko = '적절한 순간에 제안을 제출하는 것은 내용만큼 중요해요.' WHERE id = 'col_negotiation_18';
UPDATE collocations SET ex3 = 'We expect to finalize the agreement before the holidays.', ex3_ko = '우리는 휴일 전에 합의를 최종 확정할 것으로 기대해요.', ex4 = 'She finalized the agreement over a long lunch with the partner.', ex4_ko = '그녀는 파트너와의 긴 점심 식사를 통해 합의를 최종 확정했어요.', ex5 = 'They finalized the agreement after one last round of revisions.', ex5_ko = '그들은 마지막 한 차례의 수정 끝에 합의를 최종 확정했어요.' WHERE id = 'col_negotiation_19';
UPDATE collocations SET ex3 = 'The startup leveraged its position to secure long-term partnerships.', ex3_ko = '그 스타트업은 장기 파트너십을 확보하기 위해 자기 위치를 활용했어요.', ex4 = 'She leveraged her unique skills in the salary negotiation.', ex4_ko = '그녀는 연봉 협상에서 자신의 독특한 기술을 활용했어요.', ex5 = 'Leveraging a position works best when paired with humility.', ex5_ko = '위치를 활용하는 것은 겸손과 함께할 때 가장 잘 작동해요.' WHERE id = 'col_negotiation_20';

-- ══════════════════════════════════════
-- HUMANITIES
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'She drew a conclusion based on the patterns she observed in the data.', ex3_ko = '그녀는 데이터에서 관찰한 패턴을 바탕으로 결론을 도출했어요.', ex4 = 'It''s risky to draw a conclusion from such a small sample.', ex4_ko = '그렇게 작은 표본에서 결론을 도출하는 것은 위험해요.', ex5 = 'They drew a conclusion that surprised even their professors.', ex5_ko = '그들은 교수님들조차 놀라게 한 결론을 도출했어요.' WHERE id = 'col_humanities_01';
UPDATE collocations SET ex3 = 'Linguists traced the origins of the word back to Old Norse.', ex3_ko = '언어학자들은 그 단어의 기원을 고대 노르드어까지 추적했어요.', ex4 = 'The documentary traced the origins of jazz to early African American culture.', ex4_ko = '다큐멘터리는 재즈의 기원을 초기 아프리카계 미국인 문화까지 추적했어요.', ex5 = 'She traced the origins of her family across four continents.', ex5_ko = '그녀는 자기 가족의 기원을 네 대륙에 걸쳐 추적했어요.' WHERE id = 'col_humanities_02';
UPDATE collocations SET ex3 = 'He conducted research at the British Library for two years.', ex3_ko = '그는 영국 도서관에서 2년간 연구를 수행했어요.', ex4 = 'Conducting research with ethical care is essential.', ex4_ko = '윤리적 주의를 기울여 연구를 수행하는 것이 필수예요.', ex5 = 'She has conducted research across three universities.', ex5_ko = '그녀는 세 대학에 걸쳐 연구를 수행했어요.' WHERE id = 'col_humanities_03';
UPDATE collocations SET ex3 = 'Different cultures interpret the same text in very different ways.', ex3_ko = '서로 다른 문화는 같은 텍스트를 매우 다른 방식으로 해석해요.', ex4 = 'He interpreted the text through a postcolonial lens.', ex4_ko = '그는 그 텍스트를 탈식민주의 관점에서 해석했어요.', ex5 = 'Interpreting a text requires both knowledge and imagination.', ex5_ko = '텍스트를 해석하려면 지식과 상상력이 모두 필요해요.' WHERE id = 'col_humanities_04';
UPDATE collocations SET ex3 = 'Her dissertation challenges the theory of cultural homogenization.', ex3_ko = '그녀의 논문은 문화 동질화 이론에 의문을 제기해요.', ex4 = 'New evidence challenges a theory that''s been accepted for decades.', ex4_ko = '새로운 증거가 수십 년 동안 받아들여진 이론에 의문을 제기해요.', ex5 = 'Scholars constantly challenge theories with new findings.', ex5_ko = '학자들은 새로운 발견으로 이론에 끊임없이 의문을 제기해요.' WHERE id = 'col_humanities_05';
UPDATE collocations SET ex3 = 'Her book sheds light on an overlooked period of music history.', ex3_ko = '그녀의 책은 간과된 음악 역사의 한 시기에 빛을 비춰요.', ex4 = 'Newly translated texts shed light on ancient daily life.', ex4_ko = '새로 번역된 텍스트들이 고대 일상 생활에 빛을 비춰요.', ex5 = 'The exhibition sheds light on stories rarely told in textbooks.', ex5_ko = '그 전시는 교과서에 거의 나오지 않는 이야기에 빛을 비춰요.' WHERE id = 'col_humanities_06';
UPDATE collocations SET ex3 = 'She analysed the text by identifying repeated imagery.', ex3_ko = '그녀는 반복되는 이미지를 찾아내며 텍스트를 분석했어요.', ex4 = 'Analysing a text closely takes time and careful attention.', ex4_ko = '텍스트를 면밀히 분석하는 데는 시간과 세심한 주의가 필요해요.', ex5 = 'He analysed the text using multiple critical frameworks.', ex5_ko = '그는 여러 비평적 틀을 사용하여 텍스트를 분석했어요.' WHERE id = 'col_humanities_07';
UPDATE collocations SET ex3 = 'Special climate-controlled rooms preserve manuscripts for centuries.', ex3_ko = '특수 기후 조절실이 원고를 수 세기 동안 보존해요.', ex4 = 'She helped preserve a manuscript that was nearly lost in a fire.', ex4_ko = '그녀는 거의 화재로 소실될 뻔한 원고를 보존하는 데 도움을 줬어요.', ex5 = 'Preserving manuscripts is part of cultural memory.', ex5_ko = '원고를 보존하는 것은 문화적 기억의 일부예요.' WHERE id = 'col_humanities_08';
UPDATE collocations SET ex3 = 'Always cite a source even when paraphrasing.', ex3_ko = '의역할 때도 항상 출처를 인용하세요.', ex4 = 'She cited multiple sources to make her argument credible.', ex4_ko = '그녀는 주장의 신뢰성을 위해 여러 출처를 인용했어요.', ex5 = 'Citing a source properly is a basic academic skill.', ex5_ko = '출처를 적절히 인용하는 것은 기본적인 학문 기술이에요.' WHERE id = 'col_humanities_09';
UPDATE collocations SET ex3 = 'She examined the evidence before forming a judgment.', ex3_ko = '그녀는 판단을 내리기 전에 증거를 검토했어요.', ex4 = 'They examined the evidence from multiple angles.', ex4_ko = '그들은 여러 각도에서 증거를 검토했어요.', ex5 = 'Examining evidence carefully prevents premature conclusions.', ex5_ko = '증거를 신중히 검토하면 성급한 결론을 막을 수 있어요.' WHERE id = 'col_humanities_10';
UPDATE collocations SET ex3 = 'The poem explores the theme of memory and time.', ex3_ko = '그 시는 기억과 시간이라는 주제를 탐구해요.', ex4 = 'Many novels explore the theme of belonging.', ex4_ko = '많은 소설들이 소속감이라는 주제를 탐구해요.', ex5 = 'She explored the theme of solitude through her photography.', ex5_ko = '그녀는 자기 사진을 통해 고독이라는 주제를 탐구했어요.' WHERE id = 'col_humanities_11';
UPDATE collocations SET ex3 = 'Travel can quietly help you question assumptions you''ve held for years.', ex3_ko = '여행은 수년간 가져온 가정에 조용히 의문을 품게 할 수 있어요.', ex4 = 'A good education teaches you to question assumptions, not just accept them.', ex4_ko = '좋은 교육은 가정을 단순히 받아들이는 것이 아니라 의문을 품도록 가르쳐요.', ex5 = 'She questions assumptions about gender in her academic writing.', ex5_ko = '그녀는 학문적 글쓰기에서 성별에 대한 가정에 의문을 품어요.' WHERE id = 'col_humanities_12';
UPDATE collocations SET ex3 = 'Music can convey meaning that words cannot.', ex3_ko = '음악은 말이 전달할 수 없는 의미를 전달할 수 있어요.', ex4 = 'A single image can convey meaning across cultures.', ex4_ko = '한 장의 이미지가 문화를 넘어 의미를 전달할 수 있어요.', ex5 = 'Poets choose every word carefully to convey precise meaning.', ex5_ko = '시인들은 정확한 의미를 전달하기 위해 모든 단어를 신중히 선택해요.' WHERE id = 'col_humanities_13';
UPDATE collocations SET ex3 = 'She drew on sources from three different languages for her thesis.', ex3_ko = '그녀는 논문을 위해 세 가지 다른 언어의 자료를 활용했어요.', ex4 = 'He drew on personal interviews to enrich his research.', ex4_ko = '그는 연구를 풍부하게 하기 위해 개인 인터뷰를 활용했어요.', ex5 = 'Drawing on diverse sources strengthens academic writing.', ex5_ko = '다양한 자료를 활용하는 것은 학문적 글쓰기를 강화해요.' WHERE id = 'col_humanities_14';
UPDATE collocations SET ex3 = 'She made an argument that has shaped the field for years.', ex3_ko = '그녀는 그 분야를 수년간 형성해 온 주장을 펼쳤어요.', ex4 = 'He made a careful argument supported by detailed evidence.', ex4_ko = '그는 자세한 증거로 뒷받침된 신중한 주장을 펼쳤어요.', ex5 = 'Making an argument well requires both logic and clarity.', ex5_ko = '주장을 잘 펼치려면 논리와 명확성이 모두 필요해요.' WHERE id = 'col_humanities_15';
UPDATE collocations SET ex3 = 'Older people often reflect on the past with mixed emotions.', ex3_ko = '노인들은 종종 복잡한 감정으로 과거를 성찰해요.', ex4 = 'She reflected on the past while writing her memoir.', ex4_ko = '그녀는 회고록을 쓰면서 과거를 성찰했어요.', ex5 = 'Reflecting on the past can give clarity for the future.', ex5_ko = '과거를 성찰하는 것은 미래를 위한 명확함을 줄 수 있어요.' WHERE id = 'col_humanities_16';
UPDATE collocations SET ex3 = 'She teaches her students to actively engage with literature.', ex3_ko = '그녀는 학생들에게 문학과 적극적으로 상호작용하도록 가르쳐요.', ex4 = 'Engaging with literature can change how you see the world.', ex4_ko = '문학과 상호작용하면 세상을 보는 방식이 바뀔 수 있어요.', ex5 = 'He engages with literature by writing reflections after each book.', ex5_ko = '그는 책마다 성찰을 적으며 문학과 상호작용해요.' WHERE id = 'col_humanities_17';
UPDATE collocations SET ex3 = 'A single artifact can reshape history as we know it.', ex3_ko = '단 하나의 유물이 우리가 아는 역사를 새롭게 쓸 수 있어요.', ex4 = 'Recent translations are reshaping history in classrooms.', ex4_ko = '최근 번역들이 교실에서 역사를 새롭게 쓰고 있어요.', ex5 = 'Movements led by women have reshaped history many times.', ex5_ko = '여성들이 이끈 운동이 여러 차례 역사를 새롭게 썼어요.' WHERE id = 'col_humanities_18';
UPDATE collocations SET ex3 = 'You can''t truly understand a poem without placing it in context.', ex3_ko = '시를 맥락 속에 위치시키지 않고는 진정으로 이해할 수 없어요.', ex4 = 'She placed the painting in the context of the artist''s political views.', ex4_ko = '그녀는 그 그림을 작가의 정치적 견해의 맥락 속에 위치시켰어요.', ex5 = 'Placing a quote in context changes how we read it.', ex5_ko = '인용을 맥락 속에 위치시키면 그것을 읽는 방식이 바뀌어요.' WHERE id = 'col_humanities_19';
UPDATE collocations SET ex3 = 'Their research raises awareness of vanishing languages.', ex3_ko = '그들의 연구는 사라져가는 언어에 대한 인식을 높여요.', ex4 = 'A simple poster can raise awareness in your community.', ex4_ko = '간단한 포스터 하나가 지역사회의 인식을 높일 수 있어요.', ex5 = 'She raises awareness through public lectures and writing.', ex5_ko = '그녀는 공개 강의와 글쓰기를 통해 인식을 높여요.' WHERE id = 'col_humanities_20';

-- ══════════════════════════════════════
-- TECHNOLOGY
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'He develops software for hospitals in his spare time.', ex3_ko = '그는 여가 시간에 병원을 위한 소프트웨어를 개발해요.', ex4 = 'She started developing software when she was still in high school.', ex4_ko = '그녀는 고등학교 시절부터 소프트웨어를 개발하기 시작했어요.', ex5 = 'Developing software for accessibility is becoming a priority.', ex5_ko = '접근성을 위한 소프트웨어 개발이 우선순위가 되고 있어요.' WHERE id = 'col_technology_01';
UPDATE collocations SET ex3 = 'You can run a program in the background while you work.', ex3_ko = '작업하는 동안 백그라운드에서 프로그램을 실행할 수 있어요.', ex4 = 'She runs a program that converts photos to text automatically.', ex4_ko = '그녀는 사진을 자동으로 텍스트로 변환하는 프로그램을 실행해요.', ex5 = 'The phone keeps running a program even when the screen is off.', ex5_ko = '화면이 꺼져 있을 때도 휴대폰은 프로그램을 계속 실행해요.' WHERE id = 'col_technology_02';
UPDATE collocations SET ex3 = 'The team launched an app for tracking personal carbon emissions.', ex3_ko = '그 팀은 개인 탄소 배출을 추적하는 앱을 출시했어요.', ex4 = 'They launched an app that became popular in just a few weeks.', ex4_ko = '그들은 단 몇 주 만에 인기를 끈 앱을 출시했어요.', ex5 = 'She launched an app to help students manage their schedules.', ex5_ko = '그녀는 학생들이 일정을 관리하도록 돕는 앱을 출시했어요.' WHERE id = 'col_technology_03';
UPDATE collocations SET ex3 = 'Smart watches store data about your sleep and heart rate.', ex3_ko = '스마트 워치는 수면과 심박수에 대한 데이터를 저장해요.', ex4 = 'They store data in encrypted form for added safety.', ex4_ko = '그들은 추가 안전을 위해 데이터를 암호화된 형태로 저장해요.', ex5 = 'Storing data responsibly is more than a technical question.', ex5_ko = '데이터를 책임감 있게 저장하는 것은 단순한 기술 문제 이상이에요.' WHERE id = 'col_technology_04';
UPDATE collocations SET ex3 = 'AI systems can process data faster than humans by a wide margin.', ex3_ko = 'AI 시스템은 인간보다 훨씬 빠르게 데이터를 처리할 수 있어요.', ex4 = 'Modern processors can process data in real time.', ex4_ko = '현대의 프로세서는 데이터를 실시간으로 처리할 수 있어요.', ex5 = 'Processing data ethically matters as much as processing it efficiently.', ex5_ko = '데이터를 윤리적으로 처리하는 것은 효율적으로 처리하는 것만큼 중요해요.' WHERE id = 'col_technology_05';
UPDATE collocations SET ex3 = 'She updates her software every Sunday evening.', ex3_ko = '그녀는 매주 일요일 저녁에 소프트웨어를 업데이트해요.', ex4 = 'The app prompted me to update the software before I could log in.', ex4_ko = '앱은 로그인하기 전에 소프트웨어를 업데이트하라고 안내했어요.', ex5 = 'Updating software can sometimes break compatibility with other apps.', ex5_ko = '소프트웨어를 업데이트하면 때로 다른 앱과의 호환성이 깨질 수 있어요.' WHERE id = 'col_technology_06';
UPDATE collocations SET ex3 = 'The hackers breached security and accessed sensitive records.', ex3_ko = '해커들이 보안을 침해하고 민감한 기록에 접근했어요.', ex4 = 'A small flaw can be enough for someone to breach security.', ex4_ko = '작은 결함 하나로 누군가가 보안을 침해할 수 있어요.', ex5 = 'They breached security through a phishing email sent to staff.', ex5_ko = '그들은 직원들에게 보낸 피싱 이메일로 보안을 침해했어요.' WHERE id = 'col_technology_07';
UPDATE collocations SET ex3 = 'The company spent two years integrating systems after the merger.', ex3_ko = '회사는 합병 후 시스템 통합에 2년을 보냈어요.', ex4 = 'Integrating systems across departments often reveals hidden issues.', ex4_ko = '부서 간 시스템을 통합하면 숨겨진 문제가 종종 드러나요.', ex5 = 'They integrated systems by using open APIs and standard protocols.', ex5_ko = '그들은 오픈 API와 표준 프로토콜을 사용해 시스템을 통합했어요.' WHERE id = 'col_technology_08';
UPDATE collocations SET ex3 = 'She automated her email replies during her vacation.', ex3_ko = '그녀는 휴가 동안 이메일 답장을 자동화했어요.', ex4 = 'Many factories have automated processes that used to take hours.', ex4_ko = '많은 공장들이 예전에는 몇 시간씩 걸리던 프로세스를 자동화했어요.', ex5 = 'Automating processes thoughtfully can reduce burnout.', ex5_ko = '프로세스를 사려 깊게 자동화하면 번아웃을 줄일 수 있어요.' WHERE id = 'col_technology_09';
UPDATE collocations SET ex3 = 'They deployed a solution that runs without internet.', ex3_ko = '그들은 인터넷 없이도 작동하는 솔루션을 배포했어요.', ex4 = 'She deployed a security solution across all employee laptops.', ex4_ko = '그녀는 모든 직원 노트북에 보안 솔루션을 배포했어요.', ex5 = 'Deploying a solution at scale needs careful staging.', ex5_ko = '솔루션을 대규모로 배포하려면 신중한 단계적 진행이 필요해요.' WHERE id = 'col_technology_10';
UPDATE collocations SET ex3 = 'I''m troubleshooting an issue with the printer driver.', ex3_ko = '저는 프린터 드라이버 문제를 해결하고 있어요.', ex4 = 'She troubleshot an issue that had been stumping the team for weeks.', ex4_ko = '그녀는 팀이 몇 주째 풀지 못하던 문제를 해결했어요.', ex5 = 'Troubleshooting an issue often starts with restarting the device.', ex5_ko = '문제 해결은 종종 기기를 재시작하는 것부터 시작돼요.' WHERE id = 'col_technology_11';
UPDATE collocations SET ex3 = 'Please back up your data before installing the new operating system.', ex3_ko = '새 운영체제를 설치하기 전에 데이터를 백업하세요.', ex4 = 'He backed up his data to two different cloud services.', ex4_ko = '그는 두 가지 다른 클라우드 서비스에 데이터를 백업했어요.', ex5 = 'Backing up data is the cheapest insurance you''ll ever buy.', ex5_ko = '데이터를 백업하는 것은 당신이 살 수 있는 가장 저렴한 보험이에요.' WHERE id = 'col_technology_12';
UPDATE collocations SET ex3 = 'Messaging apps encrypt data so only the sender and receiver can read it.', ex3_ko = '메시지 앱은 발신자와 수신자만 읽을 수 있도록 데이터를 암호화해요.', ex4 = 'You should encrypt data on any device that travels with you.', ex4_ko = '당신과 함께 이동하는 어떤 기기든 데이터를 암호화해야 해요.', ex5 = 'They encrypt data both in transit and at rest.', ex5_ko = '그들은 전송 중과 저장 중 모두 데이터를 암호화해요.' WHERE id = 'col_technology_13';
UPDATE collocations SET ex3 = 'They scaled up operations to handle the holiday rush.', ex3_ko = '그들은 휴일 성수기를 처리하기 위해 운영 규모를 확대했어요.', ex4 = 'Scaling up operations too quickly can hurt service quality.', ex4_ko = '운영 규모를 너무 빠르게 확대하면 서비스 품질에 해를 끼칠 수 있어요.', ex5 = 'The startup is scaling up operations after Series A funding.', ex5_ko = '그 스타트업은 시리즈 A 투자를 받고 운영 규모를 확대하고 있어요.' WHERE id = 'col_technology_14';
UPDATE collocations SET ex3 = 'You need a special password to access the network.', ex3_ko = '네트워크에 접속하려면 특별한 비밀번호가 필요해요.', ex4 = 'She can''t access the network from her home connection today.', ex4_ko = '그녀는 오늘 집 연결에서 네트워크에 접속할 수 없어요.', ex5 = 'Visitors can access a guest network with limited permissions.', ex5_ko = '방문자는 제한된 권한으로 게스트 네트워크에 접속할 수 있어요.' WHERE id = 'col_technology_15';
UPDATE collocations SET ex3 = 'The school migrated to the cloud over the summer break.', ex3_ko = '그 학교는 여름방학 동안 클라우드로 이전했어요.', ex4 = 'Many small businesses migrate to the cloud to save on hardware costs.', ex4_ko = '많은 소규모 사업체가 하드웨어 비용 절감을 위해 클라우드로 이전해요.', ex5 = 'Migrating to the cloud needs a clear plan and good backups.', ex5_ko = '클라우드로 이전하려면 명확한 계획과 좋은 백업이 필요해요.' WHERE id = 'col_technology_16';
UPDATE collocations SET ex3 = 'Automated tests detected a bug right before launch.', ex3_ko = '자동화 테스트가 출시 직전에 버그를 발견했어요.', ex4 = 'She detected a bug that the entire team had missed.', ex4_ko = '그녀는 팀 전체가 놓친 버그를 발견했어요.', ex5 = 'Modern tools detect bugs that humans would never notice.', ex5_ko = '현대의 도구는 사람이 절대 알아차리지 못할 버그를 발견해요.' WHERE id = 'col_technology_17';
UPDATE collocations SET ex3 = 'They''re rolling out an update gradually to test for issues.', ex3_ko = '그들은 문제를 테스트하기 위해 점진적으로 업데이트를 배포하고 있어요.', ex4 = 'The team rolled out the update to 1% of users first.', ex4_ko = '팀은 먼저 1%의 사용자에게 업데이트를 배포했어요.', ex5 = 'Rolling out an update in waves helps catch problems early.', ex5_ko = '단계적으로 업데이트를 배포하면 문제를 일찍 발견하는 데 도움이 돼요.' WHERE id = 'col_technology_18';
UPDATE collocations SET ex3 = 'Ride-share apps disrupted the taxi industry around the world.', ex3_ko = '차량 공유 앱은 전 세계 택시 산업을 혁신했어요.', ex4 = 'Streaming services have disrupted the music industry completely.', ex4_ko = '스트리밍 서비스는 음악 산업을 완전히 혁신했어요.', ex5 = 'Smart home tech is starting to disrupt the energy industry.', ex5_ko = '스마트 홈 기술이 에너지 산업을 혁신하기 시작했어요.' WHERE id = 'col_technology_19';
UPDATE collocations SET ex3 = 'Schools harness technology to bring guest speakers from abroad.', ex3_ko = '학교들은 해외 초청 연사를 모시기 위해 기술을 활용해요.', ex4 = 'Farmers harness technology to monitor soil and weather.', ex4_ko = '농부들은 토양과 날씨를 모니터링하기 위해 기술을 활용해요.', ex5 = 'Charities are harnessing technology to reach more donors.', ex5_ko = '자선 단체들은 더 많은 기부자에게 닿기 위해 기술을 활용하고 있어요.' WHERE id = 'col_technology_20';

-- ══════════════════════════════════════
-- NEWS
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'She broke the news of the company''s sale to her colleagues.', ex3_ko = '그녀는 동료들에게 회사 매각 소식을 처음 전했어요.', ex4 = 'Local outlets broke the news long before national TV picked it up.', ex4_ko = '지역 매체들이 전국 TV가 다루기 한참 전에 그 소식을 처음 보도했어요.', ex5 = 'Breaking bad news kindly is one of the hardest parts of journalism.', ex5_ko = '나쁜 소식을 친절하게 전하는 것은 언론의 가장 어려운 부분 중 하나예요.' WHERE id = 'col_news_01';
UPDATE collocations SET ex3 = 'They sent a team of five to cover the story in person.', ex3_ko = '그들은 직접 그 기사를 취재하기 위해 5명의 팀을 보냈어요.', ex4 = 'She has covered every election in this state for the past decade.', ex4_ko = '그녀는 지난 10년간 이 주의 모든 선거를 취재했어요.', ex5 = 'Covering the story took her to three different countries.', ex5_ko = '그 기사를 취재하기 위해 그녀는 세 개의 나라를 다녀왔어요.' WHERE id = 'col_news_02';
UPDATE collocations SET ex3 = 'They published an article about the environmental impact of fast fashion.', ex3_ko = '그들은 패스트 패션의 환경 영향에 관한 기사를 게재했어요.', ex4 = 'She published an article that started a wider conversation.', ex4_ko = '그녀는 더 넓은 대화를 시작하게 한 기사를 게재했어요.', ex5 = 'Publishing an article in a major paper used to be much harder.', ex5_ko = '주요 신문에 기사를 게재하는 것은 예전에 훨씬 더 어려웠어요.' WHERE id = 'col_news_03';
UPDATE collocations SET ex3 = 'She reported on the event with care and balance.', ex3_ko = '그녀는 신중함과 균형을 가지고 그 사건을 보도했어요.', ex4 = 'He reported on the event from inside the courthouse.', ex4_ko = '그는 법원 안에서 그 사건을 보도했어요.', ex5 = 'Reporting on an event live takes real composure.', ex5_ko = '사건을 라이브로 보도하는 데는 진정한 침착함이 필요해요.' WHERE id = 'col_news_04';
UPDATE collocations SET ex3 = 'The team investigated a claim that turned out to be unfounded.', ex3_ko = '그 팀은 근거 없는 것으로 밝혀진 주장을 조사했어요.', ex4 = 'She investigated a claim involving a major government contract.', ex4_ko = '그녀는 주요 정부 계약에 관한 주장을 조사했어요.', ex5 = 'Investigating a claim properly requires both time and trust.', ex5_ko = '주장을 제대로 조사하려면 시간과 신뢰가 모두 필요해요.' WHERE id = 'col_news_05';
UPDATE collocations SET ex3 = 'Tabloid papers often run sensational headlines for clicks.', ex3_ko = '타블로이드 신문들은 클릭을 위해 선정적인 헤드라인을 자주 실어요.', ex4 = 'They ran a quieter headline than expected given the news.', ex4_ko = '그 뉴스에 비해 그들은 예상보다 조용한 헤드라인을 실었어요.', ex5 = 'The paper ran a headline that misrepresented the story.', ex5_ko = '그 신문은 기사를 잘못 표현하는 헤드라인을 실었어요.' WHERE id = 'col_news_06';
UPDATE collocations SET ex3 = 'The official confirmed the report at this morning''s briefing.', ex3_ko = '당국자는 오늘 아침 브리핑에서 보도를 확인했어요.', ex4 = 'She confirmed the report after speaking with three sources.', ex4_ko = '그녀는 세 명의 출처와 통화한 후 보도를 확인했어요.', ex5 = 'Confirming a report takes time but builds trust with readers.', ex5_ko = '보도를 확인하는 데는 시간이 걸리지만 독자와의 신뢰를 쌓아요.' WHERE id = 'col_news_07';
UPDATE collocations SET ex3 = 'They retracted the story and issued an apology to the readers.', ex3_ko = '그들은 기사를 철회하고 독자들에게 사과문을 발표했어요.', ex4 = 'Several outlets retracted the story after new evidence emerged.', ex4_ko = '여러 매체들이 새로운 증거가 나오자 기사를 철회했어요.', ex5 = 'Retracting a story is hard but sometimes the right thing to do.', ex5_ko = '기사를 철회하는 것은 어렵지만 때로는 옳은 일이에요.' WHERE id = 'col_news_08';
UPDATE collocations SET ex3 = 'Bots are often used to spread misinformation rapidly online.', ex3_ko = '봇은 종종 온라인에서 잘못된 정보를 빠르게 퍼뜨리는 데 사용돼요.', ex4 = 'It''s easy to accidentally spread misinformation just by resharing.', ex4_ko = '단순히 재공유하기만 해도 실수로 잘못된 정보를 퍼뜨릴 수 있어요.', ex5 = 'Schools are teaching students how not to spread misinformation.', ex5_ko = '학교들은 학생들에게 잘못된 정보를 퍼뜨리지 않는 법을 가르치고 있어요.' WHERE id = 'col_news_09';
UPDATE collocations SET ex3 = 'They fact-checked the source three different ways.', ex3_ko = '그들은 출처를 세 가지 다른 방식으로 팩트체크했어요.', ex4 = 'She fact-checked every claim before her debate.', ex4_ko = '그녀는 토론 전에 모든 주장을 팩트체크했어요.', ex5 = 'Fact-checking a source is a basic skill, not a special favor.', ex5_ko = '출처를 팩트체크하는 것은 특별한 호의가 아닌 기본 기술이에요.' WHERE id = 'col_news_10';
UPDATE collocations SET ex3 = 'The mayor''s office issued a statement on the housing plan.', ex3_ko = '시장실은 주택 계획에 관한 성명을 발표했어요.', ex4 = 'The artist issued a statement apologizing for the offensive lyrics.', ex4_ko = '그 아티스트는 불쾌한 가사에 대해 사과하는 성명을 발표했어요.', ex5 = 'Issuing a statement quickly can shape public perception.', ex5_ko = '빠르게 성명을 발표하면 대중 인식을 형성할 수 있어요.' WHERE id = 'col_news_11';
UPDATE collocations SET ex3 = 'The footage went viral on every social platform overnight.', ex3_ko = '그 영상은 하룻밤 만에 모든 소셜 플랫폼에서 바이럴이 됐어요.', ex4 = 'Her quote went viral and was printed on coffee mugs.', ex4_ko = '그녀의 발언이 바이럴이 되어 커피 머그컵에 인쇄됐어요.', ex5 = 'Going viral isn''t always good news for the person involved.', ex5_ko = '바이럴이 되는 것이 당사자에게 항상 좋은 소식만은 아니에요.' WHERE id = 'col_news_12';
UPDATE collocations SET ex3 = 'She conducted an interview with the artist behind the mural.', ex3_ko = '그녀는 그 벽화를 그린 작가와 인터뷰를 했어요.', ex4 = 'He conducted an interview in three different languages.', ex4_ko = '그는 세 가지 다른 언어로 인터뷰를 진행했어요.', ex5 = 'Conducting an interview live on air is more stressful than it looks.', ex5_ko = '생방송에서 인터뷰를 진행하는 것은 보기보다 더 스트레스가 많아요.' WHERE id = 'col_news_13';
UPDATE collocations SET ex3 = 'The article cited a source from inside the company.', ex3_ko = '그 기사는 회사 내부의 출처를 인용했어요.', ex4 = 'She cited a source familiar with the closed negotiations.', ex4_ko = '그녀는 비공개 협상에 정통한 출처를 인용했어요.', ex5 = 'Citing a source is more than a formality — it''s journalism.', ex5_ko = '출처를 인용하는 것은 형식 이상의 일 — 그 자체가 저널리즘이에요.' WHERE id = 'col_news_14';
UPDATE collocations SET ex3 = 'Residents raised a concern about the new construction project.', ex3_ko = '주민들은 새 건설 프로젝트에 대한 우려를 제기했어요.', ex4 = 'Editors raised a concern about the article''s tone.', ex4_ko = '편집자들은 기사의 어조에 대한 우려를 제기했어요.', ex5 = 'She raised a concern that turned out to be very important.', ex5_ko = '그녀는 매우 중요한 것으로 밝혀진 우려를 제기했어요.' WHERE id = 'col_news_15';
UPDATE collocations SET ex3 = 'The morning news led with a story about a local hero.', ex3_ko = '아침 뉴스는 지역 영웅 이야기를 첫 번째로 다뤘어요.', ex4 = 'They led with the story to capture maximum attention.', ex4_ko = '그들은 최대한의 주목을 끌기 위해 그 기사를 첫 번째로 다뤘어요.', ex5 = 'Leading with a positive story can shift the tone of the day.', ex5_ko = '긍정적인 기사로 시작하면 하루의 분위기를 바꿀 수 있어요.' WHERE id = 'col_news_16';
UPDATE collocations SET ex3 = 'The reporter uncovered a scandal involving multiple agencies.', ex3_ko = '그 기자는 여러 기관과 관련된 스캔들을 폭로했어요.', ex4 = 'A whistleblower helped them uncover the scandal.', ex4_ko = '내부 고발자가 그들이 스캔들을 폭로하는 데 도움을 줬어요.', ex5 = 'Uncovering a scandal can take years of careful work.', ex5_ko = '스캔들을 폭로하는 데는 몇 년의 신중한 작업이 걸릴 수 있어요.' WHERE id = 'col_news_17';
UPDATE collocations SET ex3 = 'Good editors work hard to balance coverage on contentious topics.', ex3_ko = '좋은 편집자들은 논쟁적인 주제에서 보도의 균형을 잡기 위해 열심히 일해요.', ex4 = 'The paper failed to balance coverage during the campaign.', ex4_ko = '그 신문은 캠페인 기간 동안 보도의 균형을 잡지 못했어요.', ex5 = 'Balancing coverage doesn''t mean treating all claims equally.', ex5_ko = '보도의 균형이 모든 주장을 동등하게 다룬다는 의미는 아니에요.' WHERE id = 'col_news_18';
UPDATE collocations SET ex3 = 'The article quoted a source close to the senator.', ex3_ko = '그 기사는 상원의원과 가까운 출처를 인용했어요.', ex4 = 'She quoted a source from a leaked internal memo.', ex4_ko = '그녀는 유출된 내부 메모의 출처를 인용했어요.', ex5 = 'Quoting a source out of context is a kind of distortion.', ex5_ko = '출처를 맥락 없이 인용하는 것은 일종의 왜곡이에요.' WHERE id = 'col_news_19';
UPDATE collocations SET ex3 = 'The CEO held a press conference outside the company''s headquarters.', ex3_ko = 'CEO는 회사 본사 밖에서 기자회견을 열었어요.', ex4 = 'They held a press conference to clarify the misinformation.', ex4_ko = '그들은 잘못된 정보를 명확히 하기 위해 기자회견을 열었어요.', ex5 = 'Holding a press conference requires careful coordination.', ex5_ko = '기자회견을 여는 데는 신중한 조율이 필요해요.' WHERE id = 'col_news_20';

-- ══════════════════════════════════════
-- ACADEMIC
-- ══════════════════════════════════════
UPDATE collocations SET ex3 = 'I submitted my essay through the online portal at 11:58 p.m.', ex3_ko = '저는 밤 11시 58분에 온라인 포털을 통해 에세이를 제출했어요.', ex4 = 'She submitted her essay early to free up the weekend for studying.', ex4_ko = '그녀는 주말 공부 시간을 확보하기 위해 일찍 에세이를 제출했어요.', ex5 = 'Submitting an essay late usually means a grade penalty.', ex5_ko = '에세이를 늦게 제출하면 보통 성적 감점이 있어요.' WHERE id = 'col_academic_01';
UPDATE collocations SET ex3 = 'She attended every lecture even when she was tired.', ex3_ko = '그녀는 피곤할 때도 모든 강의에 참석했어요.', ex4 = 'You can attend a lecture from home if the class allows it.', ex4_ko = '수업이 허용하면 집에서 강의에 참석할 수 있어요.', ex5 = 'Attending a lecture in person often helps you stay focused.', ex5_ko = '직접 강의에 참석하는 것이 집중에 도움이 되는 경우가 많아요.' WHERE id = 'col_academic_02';
UPDATE collocations SET ex3 = 'She takes notes by hand because it helps her remember better.', ex3_ko = '그녀는 더 잘 기억하기 위해 손으로 필기해요.', ex4 = 'He takes notes on his tablet during all his classes.', ex4_ko = '그는 모든 수업에서 태블릿으로 필기해요.', ex5 = 'Taking notes during a discussion is harder than during a lecture.', ex5_ko = '토론 중에 필기하는 것은 강의 중보다 더 어려워요.' WHERE id = 'col_academic_03';
UPDATE collocations SET ex3 = 'She passed her TOEFL exam on her first try.', ex3_ko = '그녀는 첫 번째 시도에 토플 시험에 합격했어요.', ex4 = 'He didn''t expect to pass the exam but he did.', ex4_ko = '그는 시험에 합격할 줄 몰랐는데 합격했어요.', ex5 = 'Passing an exam takes preparation, but also a clear mind on the day.', ex5_ko = '시험에 합격하려면 준비와 함께 당일의 맑은 정신도 필요해요.' WHERE id = 'col_academic_04';
UPDATE collocations SET ex3 = 'She enrolled in a postgraduate course at the same university.', ex3_ko = '그녀는 같은 대학에서 대학원 과정에 등록했어요.', ex4 = 'He enrolled in a course taught entirely in Spanish.', ex4_ko = '그는 전적으로 스페인어로 진행되는 과정에 등록했어요.', ex5 = 'Enrolling in a course can be done online in many universities now.', ex5_ko = '이제 많은 대학에서 온라인으로 과정에 등록할 수 있어요.' WHERE id = 'col_academic_05';
UPDATE collocations SET ex3 = 'She wrote her thesis on women in early Korean cinema.', ex3_ko = '그녀는 초기 한국 영화의 여성에 관한 논문을 썼어요.', ex4 = 'Writing a thesis is a marathon, not a sprint.', ex4_ko = '논문을 쓰는 것은 마라톤이지 단거리 경주가 아니에요.', ex5 = 'He wrote his thesis while teaching part-time.', ex5_ko = '그는 시간제로 가르치면서 논문을 썼어요.' WHERE id = 'col_academic_06';
UPDATE collocations SET ex3 = 'She earned a degree in linguistics through a part-time program.', ex3_ko = '그녀는 시간제 프로그램을 통해 언어학 학위를 취득했어요.', ex4 = 'He earned a degree later in life after raising his children.', ex4_ko = '그는 아이들을 키운 후 늦은 나이에 학위를 취득했어요.', ex5 = 'Earning a degree abroad changed her career path entirely.', ex5_ko = '해외에서 학위를 취득한 것이 그녀의 진로를 완전히 바꿨어요.' WHERE id = 'col_academic_07';
UPDATE collocations SET ex3 = 'Before designing the study, she carefully reviewed the literature.', ex3_ko = '연구를 설계하기 전에 그녀는 문헌을 신중하게 검토했어요.', ex4 = 'Reviewing the literature can take a few months for a thesis.', ex4_ko = '논문을 위해 문헌을 검토하는 데 몇 달이 걸릴 수 있어요.', ex5 = 'He reviewed the literature and found a clear research gap.', ex5_ko = '그는 문헌을 검토하고 명확한 연구 공백을 발견했어요.' WHERE id = 'col_academic_08';
UPDATE collocations SET ex3 = 'She formulated a hypothesis about sleep and language learning.', ex3_ko = '그녀는 수면과 언어 학습에 관한 가설을 세웠어요.', ex4 = 'Formulating a hypothesis is one of the first steps in research.', ex4_ko = '가설을 세우는 것은 연구의 첫 단계 중 하나예요.', ex5 = 'He formulated a hypothesis that his data later supported.', ex5_ko = '그는 후에 데이터가 뒷받침한 가설을 세웠어요.' WHERE id = 'col_academic_09';
UPDATE collocations SET ex3 = 'She applied for a scholarship aimed at first-generation students.', ex3_ko = '그녀는 1세대 학생들을 위한 장학금에 신청했어요.', ex4 = 'He applied for several scholarships and received two.', ex4_ko = '그는 여러 장학금에 신청했고 두 개를 받았어요.', ex5 = 'Applying for a scholarship takes time, but it''s worth the effort.', ex5_ko = '장학금 신청에는 시간이 걸리지만 그만한 노력의 가치가 있어요.' WHERE id = 'col_academic_10';
UPDATE collocations SET ex3 = 'Students sit the entrance exam in a large hall each November.', ex3_ko = '학생들은 매년 11월에 대형 강당에서 입학시험을 치러요.', ex4 = 'He sat his final exam after months of preparation.', ex4_ko = '그는 몇 달의 준비 끝에 최종 시험을 치렀어요.', ex5 = 'Sitting an exam in another country was a strange experience.', ex5_ko = '다른 나라에서 시험을 치르는 것은 낯선 경험이었어요.' WHERE id = 'col_academic_11';
UPDATE collocations SET ex3 = 'Universities use software to detect students who plagiarise work.', ex3_ko = '대학들은 작업물을 표절하는 학생들을 적발하기 위해 소프트웨어를 사용해요.', ex4 = 'Plagiarising work, even unintentionally, has serious consequences.', ex4_ko = '의도하지 않았더라도 작업물을 표절하는 것은 심각한 결과를 가져와요.', ex5 = 'Citing properly is the best way to avoid plagiarising work.', ex5_ko = '적절히 인용하는 것이 작업물 표절을 피하는 가장 좋은 방법이에요.' WHERE id = 'col_academic_12';
UPDATE collocations SET ex3 = 'She defended her thesis virtually due to the pandemic.', ex3_ko = '그녀는 팬데믹으로 인해 가상으로 논문을 발표했어요.', ex4 = 'He defended his thesis to a panel of leading scholars.', ex4_ko = '그는 저명한 학자들로 구성된 패널 앞에서 논문을 발표했어요.', ex5 = 'Defending a thesis is intimidating but also a milestone.', ex5_ko = '논문 구두 심사는 두렵지만 동시에 큰 이정표이기도 해요.' WHERE id = 'col_academic_13';
UPDATE collocations SET ex3 = 'She always meets her deadlines, even during exam weeks.', ex3_ko = '그녀는 시험 주간에도 항상 마감 기한을 맞춰요.', ex4 = 'He met the deadline with just thirty seconds to spare.', ex4_ko = '그는 30초 여유를 두고 마감 기한을 맞췄어요.', ex5 = 'Meeting a deadline consistently builds professional trust.', ex5_ko = '마감 기한을 꾸준히 맞추는 것이 전문적인 신뢰를 쌓아요.' WHERE id = 'col_academic_14';
UPDATE collocations SET ex3 = 'He scored high marks on the literature exam despite his nerves.', ex3_ko = '그는 긴장에도 불구하고 문학 시험에서 높은 점수를 받았어요.', ex4 = 'She scored high marks in subjects she actually enjoyed.', ex4_ko = '그녀는 실제로 좋아하는 과목에서 높은 점수를 받았어요.', ex5 = 'Scoring high marks is great, but real understanding matters more.', ex5_ko = '높은 점수를 받는 것도 좋지만 진정한 이해가 더 중요해요.' WHERE id = 'col_academic_15';
UPDATE collocations SET ex3 = 'He took a gap year to teach English in rural Vietnam.', ex3_ko = '그는 갭이어를 가져 베트남 시골에서 영어를 가르쳤어요.', ex4 = 'She took a gap year and came back with a clearer career plan.', ex4_ko = '그녀는 갭이어를 가지고 더 명확한 진로 계획을 가지고 돌아왔어요.', ex5 = 'Taking a gap year is a personal decision with many possibilities.', ex5_ko = '갭이어를 갖는 것은 많은 가능성을 지닌 개인적인 결정이에요.' WHERE id = 'col_academic_16';
UPDATE collocations SET ex3 = 'She pursued a degree in nursing in her late thirties.', ex3_ko = '그녀는 30대 후반에 간호학 학위 취득을 추구했어요.', ex4 = 'He pursued a degree to change careers from finance to teaching.', ex4_ko = '그는 금융에서 교직으로 진로를 바꾸기 위해 학위 취득을 추구했어요.', ex5 = 'Pursuing a degree later in life takes courage and planning.', ex5_ko = '인생 후반에 학위 취득을 추구하려면 용기와 계획이 필요해요.' WHERE id = 'col_academic_17';
UPDATE collocations SET ex3 = 'They conducted an experiment to compare two teaching methods.', ex3_ko = '그들은 두 가지 교수법을 비교하기 위해 실험을 수행했어요.', ex4 = 'She conducted an experiment that produced unexpected results.', ex4_ko = '그녀는 예상치 못한 결과를 낸 실험을 수행했어요.', ex5 = 'Conducting an experiment with humans requires ethics approval.', ex5_ko = '인간을 대상으로 실험을 수행하려면 윤리 승인이 필요해요.' WHERE id = 'col_academic_18';
UPDATE collocations SET ex3 = 'She achieved academic excellence despite working two jobs.', ex3_ko = '그녀는 두 가지 일을 하면서도 학문적 우수성을 달성했어요.', ex4 = 'Achieving academic excellence requires consistency, not perfection.', ex4_ko = '학문적 우수성을 달성하려면 완벽함이 아닌 일관성이 필요해요.', ex5 = 'He achieved academic excellence through curiosity, not pressure.', ex5_ko = '그는 압박이 아닌 호기심을 통해 학문적 우수성을 달성했어요.' WHERE id = 'col_academic_19';
UPDATE collocations SET ex3 = 'She was asked to peer-review a paper on early childhood education.', ex3_ko = '그녀는 유아 교육에 관한 논문을 동료 심사해 달라는 요청을 받았어요.', ex4 = 'He peer-reviews papers in his field about twice a year.', ex4_ko = '그는 자기 분야의 논문을 1년에 약 두 번 동료 심사해요.', ex5 = 'Peer-reviewing a paper takes hours of careful reading.', ex5_ko = '논문을 동료 심사하는 데는 신중한 독해의 시간이 필요해요.' WHERE id = 'col_academic_20';


-- ══════════════════════════════════════
-- GREETING
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'She smiled and introduced herself to break the ice.'), ex3_ko = COALESCE(ex3_ko, '그녀는 미소를 지으며 자기소개를 해서 어색한 분위기를 깼어요.'), ex4 = 'He brought snacks to break the ice on the team retreat.', ex4_ko = '그는 팀 워크숍에서 어색한 분위기를 깨기 위해 간식을 가져왔어요.', ex5 = 'A simple question can break the ice with strangers on a flight.', ex5_ko = '간단한 질문 하나가 비행기에서 낯선 사람과의 어색한 분위기를 깰 수 있어요.' WHERE id = 'idm_greeting_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She warmed up to her new neighbors over a few weekend chats.'), ex3_ko = COALESCE(ex3_ko, '그녀는 주말 몇 번의 대화를 통해 새 이웃들과 친해졌어요.'), ex4 = 'He slowly warmed up to his stepfather over the years.', ex4_ko = '그는 몇 년에 걸쳐 새아버지와 천천히 친해졌어요.', ex5 = 'My cat finally warmed up to my partner after a month.', ex5_ko = '저희 고양이는 한 달 만에 마침내 제 파트너와 친해졌어요.' WHERE id = 'idm_greeting_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She made every visitor feel at home with a cup of tea.'), ex3_ko = COALESCE(ex3_ko, '그녀는 차 한 잔으로 모든 방문객을 편안하게 해줬어요.'), ex4 = 'He made his shy guests feel at home with gentle humor.', ex4_ko = '그는 부드러운 유머로 부끄러워하는 손님들을 편안하게 해줬어요.', ex5 = 'A good host knows how to make people feel at home immediately.', ex5_ko = '좋은 호스트는 사람들을 즉시 편안하게 해주는 법을 알아요.' WHERE id = 'idm_greeting_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I knew we''d hit it off — we have so much in common.'), ex3_ko = COALESCE(ex3_ko, '우리가 금세 친해질 거라고 알았어요 — 공통점이 너무 많거든요.'), ex4 = 'My parents hit it off with my partner''s family right away.', ex4_ko = '저희 부모님은 제 파트너의 가족과 바로 친해지셨어요.', ex5 = 'They hit it off through a shared love of old movies.', ex5_ko = '그들은 옛 영화에 대한 공통된 사랑으로 금세 친해졌어요.' WHERE id = 'idm_greeting_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They got on like a house on fire during the road trip.'), ex3_ko = COALESCE(ex3_ko, '그들은 자동차 여행 동안 아주 잘 지냈어요.'), ex4 = 'Our dogs got on like a house on fire from the moment they met.', ex4_ko = '저희 개들은 만나자마자 아주 잘 지냈어요.', ex5 = 'The two old friends still get on like a house on fire.', ex5_ko = '그 두 오랜 친구는 여전히 아주 잘 지내요.' WHERE id = 'idm_greeting_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I put my foot in my mouth when I mentioned the surprise party.'), ex3_ko = COALESCE(ex3_ko, '깜짝 파티를 언급해서 실언을 했어요.'), ex4 = 'She put her foot in her mouth by asking about his recent divorce.', ex4_ko = '그녀는 그의 최근 이혼에 대해 물어서 실언을 했어요.', ex5 = 'I keep putting my foot in my mouth at networking events.', ex5_ko = '저는 네트워킹 행사에서 자꾸 실언을 해요.' WHERE id = 'idm_greeting_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Within a week of working together, we were on first-name terms.'), ex3_ko = COALESCE(ex3_ko, '함께 일한 지 일주일 만에 우리는 이름을 부르는 사이가 됐어요.'), ex4 = 'They were on first-name terms after just one project.', ex4_ko = '단 하나의 프로젝트 후에 그들은 이름을 부르는 사이가 됐어요.', ex5 = 'Some companies are on first-name terms from day one.', ex5_ko = '어떤 회사들은 첫날부터 이름을 부르는 사이예요.' WHERE id = 'idm_greeting_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I know the librarian by sight from picking up my hold books.'), ex3_ko = COALESCE(ex3_ko, '저는 예약 도서를 받으러 다니면서 사서를 얼굴만 알아요.'), ex4 = 'He knows his neighbors by sight but they''ve never chatted.', ex4_ko = '그는 이웃들을 얼굴만 알지만 한 번도 대화한 적이 없어요.', ex5 = 'Many regulars only know each other by sight at the local gym.', ex5_ko = '동네 헬스장의 단골들은 서로 얼굴만 아는 경우가 많아요.' WHERE id = 'idm_greeting_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I passed the time of day with the cashier while waiting.'), ex3_ko = COALESCE(ex3_ko, '저는 기다리는 동안 계산원과 가벼운 인사를 나눴어요.'), ex4 = 'They passed the time of day at the dog park every morning.', ex4_ko = '그들은 매일 아침 강아지 공원에서 가벼운 인사를 나눴어요.', ex5 = 'Passing the time of day with strangers feels warmer than texting.', ex5_ko = '낯선 사람과 가벼운 인사를 나누는 게 문자보다 더 따뜻하게 느껴져요.' WHERE id = 'idm_greeting_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He''s a familiar face at the bookstore down the street.'), ex3_ko = COALESCE(ex3_ko, '그는 거리 끝 서점에서 낯익은 얼굴이에요.'), ex4 = 'She''s a familiar face at every neighborhood event.', ex4_ko = '그녀는 모든 동네 행사에서 낯익은 얼굴이에요.', ex5 = 'After a year of going to the gym, I became a familiar face there.', ex5_ko = '1년간 헬스장을 다닌 후 저는 그곳의 낯익은 얼굴이 됐어요.' WHERE id = 'idm_greeting_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I ran into my college roommate in Tokyo — it''s a small world.'), ex3_ko = COALESCE(ex3_ko, '도쿄에서 대학 룸메이트를 마주쳤어요 — 세상 참 좁아요.'), ex4 = 'She works with my cousin? It really is a small world!', ex4_ko = '그녀가 제 사촌과 일한다고요? 정말 세상 참 좁네요!', ex5 = 'My old neighbor turned out to be my boss — small world.', ex5_ko = '제 옛 이웃이 제 상사로 밝혀졌어요 — 세상 참 좁아요.' WHERE id = 'idm_greeting_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Long time no see — you look exactly the same!'), ex3_ko = COALESCE(ex3_ko, '오랜만이에요 — 똑같이 보이세요!'), ex4 = 'We hugged and said "long time no see" at the reunion.', ex4_ko = '우리는 동창회에서 안으며 "오랜만이에요"라고 말했어요.', ex5 = '"Long time no see," he laughed as we met by the elevator.', ex5_ko = '"오랜만이에요," 그는 엘리베이터에서 만나며 웃었어요.' WHERE id = 'idm_greeting_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The choir gave the new member a warm welcome.'), ex3_ko = COALESCE(ex3_ko, '합창단은 새 멤버를 따뜻하게 환영했어요.'), ex4 = 'They gave us a warm welcome with handmade signs and snacks.', ex4_ko = '그들은 손으로 만든 사인과 간식으로 우리를 따뜻하게 환영했어요.', ex5 = 'The audience gave the young performer a warm welcome.', ex5_ko = '청중은 어린 공연자를 따뜻하게 환영했어요.' WHERE id = 'idm_greeting_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Arriving early helped me get off on the right foot at the new job.'), ex3_ko = COALESCE(ex3_ko, '일찍 도착한 것이 새 직장에서 좋은 출발을 하는 데 도움이 됐어요.'), ex4 = 'They got off on the right foot by sharing their expectations openly.', ex4_ko = '그들은 기대를 솔직하게 공유함으로써 좋은 출발을 했어요.', ex5 = 'Apologizing first helped them get off on the right foot again.', ex5_ko = '먼저 사과한 것이 그들이 다시 좋은 출발을 하는 데 도움이 됐어요.' WHERE id = 'idm_greeting_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We promised to keep in touch despite the distance.'), ex3_ko = COALESCE(ex3_ko, '거리에도 불구하고 우리는 연락하며 지내자고 약속했어요.'), ex4 = 'She keeps in touch with her host family through monthly video calls.', ex4_ko = '그녀는 매달 영상 통화로 호스트 가족과 연락하며 지내요.', ex5 = 'It''s hard to keep in touch with friends across time zones.', ex5_ko = '시차를 두고 친구들과 연락하며 지내는 건 어려워요.' WHERE id = 'idm_greeting_15';

-- ══════════════════════════════════════
-- EMOTION
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'She''s been on cloud nine since meeting her new partner.'), ex3_ko = COALESCE(ex3_ko, '새 파트너를 만난 이후로 그녀는 매우 행복해하고 있어요.'), ex4 = 'I was on cloud nine when I got accepted into my dream school.', ex4_ko = '꿈에 그리던 학교에 합격했을 때 저는 매우 행복했어요.', ex5 = 'They''ve been on cloud nine since the baby was born.', ex5_ko = '아기가 태어난 후 그들은 매우 행복해하고 있어요.' WHERE id = 'idm_emotion_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I get down in the dumps every February without enough sunshine.'), ex3_ko = COALESCE(ex3_ko, '저는 햇빛이 부족한 매년 2월마다 우울해져요.'), ex4 = 'He was down in the dumps for weeks after his pet passed away.', ex4_ko = '그는 반려동물이 세상을 떠난 후 몇 주간 우울해했어요.', ex5 = 'Talking to friends helps when you''re feeling down in the dumps.', ex5_ko = '우울할 때는 친구들과 이야기하는 것이 도움이 돼요.' WHERE id = 'idm_emotion_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After a long week, she was at the end of her rope.'), ex3_ko = COALESCE(ex3_ko, '긴 한 주 끝에 그녀는 더 이상 버티기 힘든 상태였어요.'), ex4 = 'He was at the end of his rope when his car broke down again.', ex4_ko = '차가 또 고장 났을 때 그는 더 이상 버티기 힘들었어요.', ex5 = 'Many parents reach the end of their rope during the holidays.', ex5_ko = '많은 부모들이 휴일 기간에 더 이상 버티기 힘든 상태에 이르러요.' WHERE id = 'idm_emotion_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She bit the bullet and made the difficult phone call.'), ex3_ko = COALESCE(ex3_ko, '그녀는 참고 어려운 전화를 걸었어요.'), ex4 = 'I bit the bullet and signed up for a marathon.', ex4_ko = '저는 참고 마라톤에 신청했어요.', ex5 = 'Sometimes you just have to bite the bullet and get started.', ex5_ko = '때로는 그저 참고 시작해야 할 때가 있어요.' WHERE id = 'idm_emotion_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She kept a stiff upper lip during the funeral.'), ex3_ko = COALESCE(ex3_ko, '그녀는 장례식 동안 감정을 억제했어요.'), ex4 = 'He kept a stiff upper lip even when he received the bad news.', ex4_ko = '그는 나쁜 소식을 받았을 때도 감정을 억제했어요.', ex5 = 'British culture has traditionally valued keeping a stiff upper lip.', ex5_ko = '영국 문화는 전통적으로 감정을 억제하는 것을 중시해 왔어요.' WHERE id = 'idm_emotion_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My grandmother wears her heart on her sleeve and we love her for it.'), ex3_ko = COALESCE(ex3_ko, '저희 할머니는 감정을 숨기지 않으시고 우리는 그런 모습을 사랑해요.'), ex4 = 'He wears his heart on his sleeve and that''s why people trust him.', ex4_ko = '그는 감정을 숨기지 않아서 사람들이 그를 신뢰해요.', ex5 = 'Wearing your heart on your sleeve can be a strength, not a weakness.', ex5_ko = '감정을 솔직하게 드러내는 것은 약점이 아닌 강점이 될 수 있어요.' WHERE id = 'idm_emotion_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He had butterflies in his stomach before asking her out.'), ex3_ko = COALESCE(ex3_ko, '그는 그녀에게 데이트를 신청하기 전 너무 긴장했어요.'), ex4 = 'I get butterflies in my stomach before every audition.', ex4_ko = '저는 오디션마다 너무 긴장돼요.', ex5 = 'Even seasoned speakers feel butterflies in their stomach.', ex5_ko = '경험 많은 연사들도 긴장을 느껴요.' WHERE id = 'idm_emotion_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She paints in the garage to let off steam after long days.'), ex3_ko = COALESCE(ex3_ko, '그녀는 긴 하루 후 차고에서 그림을 그리며 감정을 발산해요.'), ex4 = 'Sometimes a good cry is all you need to let off steam.', ex4_ko = '때로는 시원하게 우는 것이 감정을 발산하는 데 필요한 전부예요.', ex5 = 'He lets off steam by playing drums in his basement.', ex5_ko = '그는 지하실에서 드럼을 치며 감정을 발산해요.' WHERE id = 'idm_emotion_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The kids were in high spirits all morning after their team won.'), ex3_ko = COALESCE(ex3_ko, '팀이 이긴 후 아이들은 아침 내내 기분이 좋았어요.'), ex4 = 'She was in high spirits after the surprise birthday party.', ex4_ko = '깜짝 생일 파티 후 그녀는 기분이 매우 좋았어요.', ex5 = 'Everyone arrived in high spirits despite the rainy weather.', ex5_ko = '비 오는 날씨에도 모두 기분 좋게 도착했어요.' WHERE id = 'idm_emotion_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He blew a fuse when the cancellation came through last minute.'), ex3_ko = COALESCE(ex3_ko, '취소가 막판에 들어오자 그는 화를 폭발시켰어요.'), ex4 = 'She blew a fuse over a small misunderstanding.', ex4_ko = '그녀는 작은 오해로 화를 폭발시켰어요.', ex5 = 'Blowing a fuse rarely solves the actual problem.', ex5_ko = '화를 폭발시키는 것은 실제 문제를 해결하는 경우가 거의 없어요.' WHERE id = 'idm_emotion_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The thriller kept us on the edge of our seats until the credits.'), ex3_ko = COALESCE(ex3_ko, '그 스릴러는 엔딩 크레딧까지 우리를 긴장하며 집중하게 했어요.'), ex4 = 'I was on the edge of my seat during the final play of the game.', ex4_ko = '저는 경기의 마지막 플레이 동안 긴장하며 집중했어요.', ex5 = 'Her storytelling kept the kids on the edge of their seats.', ex5_ko = '그녀의 이야기는 아이들을 긴장하며 집중하게 했어요.' WHERE id = 'idm_emotion_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''ve been feeling blue ever since my best friend moved away.'), ex3_ko = COALESCE(ex3_ko, '저는 가장 친한 친구가 이사 간 이후로 우울해요.'), ex4 = 'A long walk in the park helps when I''m feeling blue.', ex4_ko = '저는 우울할 때 공원에서 긴 산책을 하는 것이 도움이 돼요.', ex5 = 'He''s been feeling blue and not sure why.', ex5_ko = '그는 우울한데 이유를 잘 모르겠어요.' WHERE id = 'idm_emotion_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My dad went through the roof when he saw the phone bill.'), ex3_ko = COALESCE(ex3_ko, '아빠는 전화 요금 청구서를 보고 매우 화내셨어요.'), ex4 = 'The fans went through the roof when their team scored.', ex4_ko = '팬들은 그들의 팀이 골을 넣었을 때 매우 흥분했어요.', ex5 = 'House prices have gone through the roof this year.', ex5_ko = '집값이 올해 천정부지로 올랐어요.' WHERE id = 'idm_emotion_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Take heart — many people overcome this and so will you.'), ex3_ko = COALESCE(ex3_ko, '용기를 내세요 — 많은 사람들이 이를 극복했고 당신도 그럴 거예요.'), ex4 = 'She took heart from her doctor''s reassuring words.', ex4_ko = '그녀는 의사의 안심시키는 말에 용기를 냈어요.', ex5 = 'I took heart from the kind notes my students sent me.', ex5_ko = '학생들이 보내 준 다정한 편지로 용기를 냈어요.' WHERE id = 'idm_emotion_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I have mixed feelings about moving back to my hometown.'), ex3_ko = COALESCE(ex3_ko, '고향으로 다시 이사하는 것에 대해 복잡한 감정이에요.'), ex4 = 'She has mixed feelings about getting promoted into management.', ex4_ko = '그녀는 관리직으로 승진하는 것에 대해 복잡한 감정이에요.', ex5 = 'Watching the kids grow up brings mixed feelings every year.', ex5_ko = '아이들이 자라는 것을 보며 매년 복잡한 감정을 느껴요.' WHERE id = 'idm_emotion_15';

-- ══════════════════════════════════════
-- WEATHER
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'Take heart — every cloud has a silver lining.'), ex3_ko = COALESCE(ex3_ko, '용기를 내세요 — 고생 끝에 낙이 와요.'), ex4 = 'When the cafe closed, she opened her own — every cloud has a silver lining.', ex4_ko = '카페가 문을 닫자 그녀는 자기 가게를 열었어요 — 고생 끝에 낙이 와요.', ex5 = 'It took years to see it, but every cloud really does have a silver lining.', ex5_ko = '보이는 데 몇 년이 걸렸지만 정말로 고생 끝에 낙이 와요.' WHERE id = 'idm_weather_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My phone died, then my laptop crashed — it never rains but it pours.'), ex3_ko = COALESCE(ex3_ko, '핸드폰이 죽고 노트북도 다운됐어요 — 불행은 겹쳐서 와요.'), ex4 = 'They lost their jobs the same week the rent went up — it never rains but it pours.', ex4_ko = '월세가 오른 같은 주에 그들은 일자리를 잃었어요 — 불행은 겹쳐서 와요.', ex5 = 'First the leak, then the storm — it never rains but it pours.', ex5_ko = '먼저 누수, 그다음에 폭풍 — 불행은 겹쳐서 와요.' WHERE id = 'idm_weather_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Their public argument turned out to be a storm in a teacup.'), ex3_ko = COALESCE(ex3_ko, '그들의 공개 다툼은 결국 사소한 일을 크게 부풀린 것으로 드러났어요.'), ex4 = 'The controversy was a storm in a teacup that fizzled out by morning.', ex4_ko = '그 논란은 아침이면 사그라드는 사소한 일이었어요.', ex5 = 'Most online dramas are just a storm in a teacup.', ex5_ko = '대부분의 온라인 드라마는 사소한 일을 크게 부풀린 것이에요.' WHERE id = 'idm_weather_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She called in sick because she was feeling under the weather.'), ex3_ko = COALESCE(ex3_ko, '그녀는 몸이 좋지 않아서 병가를 냈어요.'), ex4 = 'He''s been a bit under the weather since the trip.', ex4_ko = '그는 여행 이후로 몸이 조금 좋지 않아요.', ex5 = 'I''m feeling under the weather and need an early night.', ex5_ko = '몸이 좋지 않아서 일찍 자야 할 것 같아요.' WHERE id = 'idm_weather_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Don''t steal her thunder — let her share the news herself.'), ex3_ko = COALESCE(ex3_ko, '그녀의 주목을 빼앗지 마세요 — 그녀가 직접 소식을 전하게 해주세요.'), ex4 = 'I didn''t mean to steal her thunder at the meeting.', ex4_ko = '회의에서 그녀의 주목을 빼앗으려던 게 아니었어요.', ex5 = 'He tried to steal his sister''s thunder on her graduation day.', ex5_ko = '그는 누나의 졸업식 날 누나의 주목을 빼앗으려 했어요.' WHERE id = 'idm_weather_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They weathered the storm by sticking together through hard times.'), ex3_ko = COALESCE(ex3_ko, '그들은 힘든 시기를 함께 버티며 어려움을 이겨냈어요.'), ex4 = 'The cafe weathered the storm of the lockdowns and reopened stronger.', ex4_ko = '그 카페는 봉쇄의 어려움을 이겨내고 더 강하게 재개했어요.', ex5 = 'Her career has weathered storm after storm.', ex5_ko = '그녀의 경력은 폭풍에 또 폭풍을 이겨냈어요.' WHERE id = 'idm_weather_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Make hay while the sun shines — these prices won''t last.'), ex3_ko = COALESCE(ex3_ko, '기회가 있을 때 활용하세요 — 이 가격은 오래 가지 않아요.'), ex4 = 'Freelancers learn to make hay while the sun shines.', ex4_ko = '프리랜서들은 기회가 있을 때 활용하는 법을 배워요.', ex5 = 'She made hay while the sun shone, working overtime during peak season.', ex5_ko = '그녀는 성수기에 초과 근무를 하며 기회가 있을 때 활용했어요.' WHERE id = 'idm_weather_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''ve been in a fog since the time change last week.'), ex3_ko = COALESCE(ex3_ko, '지난주 시간 변경 이후로 멍한 상태였어요.'), ex4 = 'New parents often spend the first months in a fog.', ex4_ko = '신생아 부모들은 종종 처음 몇 달을 멍한 상태로 보내요.', ex5 = 'She walked through the meeting in a fog after a sleepless night.', ex5_ko = '잠 못 이룬 밤 후 그녀는 회의를 멍한 상태로 다녀왔어요.' WHERE id = 'idm_weather_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''ll have to take a rain check on lunch — work is too busy today.'), ex3_ko = COALESCE(ex3_ko, '점심은 다음으로 미뤄야 할 것 같아요 — 오늘 일이 너무 바빠요.'), ex4 = 'She politely took a rain check on the dinner invitation.', ex4_ko = '그녀는 정중하게 저녁 식사 초대를 다음으로 미뤘어요.', ex5 = 'Let''s take a rain check on the hike until the weather improves.', ex5_ko = '날씨가 좋아질 때까지 등산을 다음으로 미뤄요.' WHERE id = 'idm_weather_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Their toddler is like a ray of sunshine in the family.'), ex3_ko = COALESCE(ex3_ko, '그 가족의 어린아이는 햇살 같은 존재예요.'), ex4 = 'Our new colleague is like a ray of sunshine in the office.', ex4_ko = '저희 새 동료는 사무실의 햇살 같은 존재예요.', ex5 = 'Her smile is like a ray of sunshine on the worst days.', ex5_ko = '그녀의 미소는 최악의 날에도 햇살 같아요.' WHERE id = 'idm_weather_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Cooking is a breeze when you''ve done it for years.'), ex3_ko = COALESCE(ex3_ko, '오랫동안 해온 사람에게 요리는 쉬운 일이에요.'), ex4 = 'The math test was a breeze for her.', ex4_ko = '그녀에게 수학 시험은 쉬운 일이었어요.', ex5 = 'Setting up the app was a breeze — even my grandmother managed.', ex5_ko = '앱 설정은 쉬운 일이었어요 — 저희 할머니도 하셨어요.' WHERE id = 'idm_weather_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Stop chasing rainbows and look at what you already have.'), ex3_ko = COALESCE(ex3_ko, '비현실적인 꿈을 그만 좇고 이미 가진 것을 봐요.'), ex4 = 'He spent his twenties chasing rainbows and never settled down.', ex4_ko = '그는 20대를 비현실적인 꿈을 좇으며 보냈고 정착하지 않았어요.', ex5 = 'There''s a difference between dreaming and chasing rainbows.', ex5_ko = '꿈을 꾸는 것과 비현실적인 꿈을 좇는 것은 다르죠.' WHERE id = 'idm_weather_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''ll be snowed under for at least the next two weeks.'), ex3_ko = COALESCE(ex3_ko, '저는 적어도 앞으로 2주간은 일에 파묻혀 있을 거예요.'), ex4 = 'She''s snowed under preparing for the year-end report.', ex4_ko = '그녀는 연말 보고서 준비로 일에 파묻혀 있어요.', ex5 = 'Don''t add to her workload — she''s already snowed under.', ex5_ko = '그녀의 업무량을 더하지 마세요 — 이미 일에 파묻혀 있어요.' WHERE id = 'idm_weather_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Her response was lightning fast and surprised everyone.'), ex3_ko = COALESCE(ex3_ko, '그녀의 반응이 매우 빨라서 모두를 놀라게 했어요.'), ex4 = 'The internet here is lightning fast compared to my hometown.', ex4_ko = '여기 인터넷은 제 고향에 비해 매우 빨라요.', ex5 = 'He''s lightning fast at solving puzzles.', ex5_ko = '그는 퍼즐을 매우 빠르게 풀어요.' WHERE id = 'idm_weather_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I realized he was a fair-weather friend when I needed help moving.'), ex3_ko = COALESCE(ex3_ko, '이사할 때 도움이 필요했을 때 그가 어려울 때 곁에 없는 친구라는 걸 깨달았어요.'), ex4 = 'Real friends, not fair-weather ones, show up in tough times.', ex4_ko = '진짜 친구들은, 좋을 때만의 친구가 아니라, 힘든 시기에 나타나요.', ex5 = 'She lost a few fair-weather friends but gained truer ones.', ex5_ko = '그녀는 좋을 때만의 친구 몇 명을 잃었지만 더 진실한 친구들을 얻었어요.' WHERE id = 'idm_weather_15';

-- ══════════════════════════════════════
-- SHOPPING
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'Those designer shoes cost an arm and a leg, but she loved them.'), ex3_ko = COALESCE(ex3_ko, '그 디자이너 신발은 매우 비쌌지만 그녀는 그것을 좋아했어요.'), ex4 = 'A new car costs an arm and a leg these days.', ex4_ko = '요즘 새 차는 매우 비싸요.', ex5 = 'The medication costs an arm and a leg without insurance.', ex5_ko = '보험 없이는 그 약이 매우 비싸요.' WHERE id = 'idm_shopping_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A picnic in the park doesn''t need to break the bank.'), ex3_ko = COALESCE(ex3_ko, '공원에서의 소풍이 엄청난 돈을 쓸 필요는 없어요.'), ex4 = 'You can decorate a room beautifully without breaking the bank.', ex4_ko = '엄청난 돈을 쓰지 않고도 방을 아름답게 꾸밀 수 있어요.', ex5 = 'They had a wonderful wedding without breaking the bank.', ex5_ko = '그들은 엄청난 돈을 쓰지 않고도 멋진 결혼식을 올렸어요.' WHERE id = 'idm_shopping_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I paid through the nose for parking near the stadium.'), ex3_ko = COALESCE(ex3_ko, '저는 경기장 근처 주차에 터무니없는 값을 치렀어요.'), ex4 = 'We paid through the nose to fix our old laptop.', ex4_ko = '우리는 오래된 노트북을 고치는 데 터무니없는 값을 치렀어요.', ex5 = 'She paid through the nose for a last-minute flight home.', ex5_ko = '그녀는 막판 귀국 항공편에 터무니없는 값을 치렀어요.' WHERE id = 'idm_shopping_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She got a bargain on the dining set at an estate sale.'), ex3_ko = COALESCE(ex3_ko, '그녀는 유산 정리 세일에서 식탁 세트를 싸게 샀어요.'), ex4 = 'I got a bargain on a winter coat at the end of the season.', ex4_ko = '저는 시즌 말에 겨울 코트를 싸게 샀어요.', ex5 = 'They always get a bargain at thrift stores.', ex5_ko = '그들은 항상 중고품 가게에서 싸게 사요.' WHERE id = 'idm_shopping_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I love going window shopping when it''s raining outside.'), ex3_ko = COALESCE(ex3_ko, '저는 밖에 비가 올 때 윈도우 쇼핑하는 걸 좋아해요.'), ex4 = 'They went window shopping along the main street after dinner.', ex4_ko = '그들은 저녁 식사 후 메인 거리를 따라 윈도우 쇼핑을 했어요.', ex5 = 'Going window shopping helps me relax without spending money.', ex5_ko = '윈도우 쇼핑은 제가 돈을 쓰지 않고 휴식하는 데 도움이 돼요.' WHERE id = 'idm_shopping_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Limited edition sneakers tend to sell like hotcakes.'), ex3_ko = COALESCE(ex3_ko, '한정판 운동화는 불티나게 팔리는 경향이 있어요.'), ex4 = 'The new cookbook is selling like hotcakes online.', ex4_ko = '그 새 요리책은 온라인에서 불티나게 팔리고 있어요.', ex5 = 'Her handmade candles sold like hotcakes at the fair.', ex5_ko = '그녀의 수제 양초들이 행사에서 불티나게 팔렸어요.' WHERE id = 'idm_shopping_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The boutique was in the red until they launched online sales.'), ex3_ko = COALESCE(ex3_ko, '그 부티크는 온라인 판매를 시작하기 전까지 적자였어요.'), ex4 = 'After three solid quarters, the cafe is finally in the black.', ex4_ko = '안정적인 세 분기 후, 카페는 마침내 흑자로 돌아섰어요.', ex5 = 'It took the gym a year to move from in the red to in the black.', ex5_ko = '그 헬스장이 적자에서 흑자로 가는 데 1년이 걸렸어요.' WHERE id = 'idm_shopping_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They cut corners on packaging and customers noticed immediately.'), ex3_ko = COALESCE(ex3_ko, '그들은 포장을 대충 했고 고객들이 즉시 알아챘어요.'), ex4 = 'It''s tempting to cut corners on a tight budget, but quality matters.', ex4_ko = '빠듯한 예산에서는 대충하고 싶지만 품질이 중요해요.', ex5 = 'The contractor cut corners and the roof started leaking.', ex5_ko = '시공업자가 대충 했고 지붕에서 물이 새기 시작했어요.' WHERE id = 'idm_shopping_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The local market sells fresh produce that''s cheap as chips.'), ex3_ko = COALESCE(ex3_ko, '동네 시장은 매우 저렴한 신선한 농산물을 팔아요.'), ex4 = 'These notebooks are cheap as chips at the dollar store.', ex4_ko = '이 노트들은 1달러 가게에서 매우 저렴해요.', ex5 = 'Renting a bike here is cheap as chips compared to taxis.', ex5_ko = '여기서 자전거를 빌리는 것은 택시에 비해 매우 저렴해요.' WHERE id = 'idm_shopping_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They threw a great birthday party on a tight budget.'), ex3_ko = COALESCE(ex3_ko, '그들은 빠듯한 예산으로 멋진 생일 파티를 열었어요.'), ex4 = 'She furnished her flat on a tight budget using second-hand finds.', ex4_ko = '그녀는 중고품으로 빠듯한 예산으로 아파트를 꾸몄어요.', ex5 = 'Eating well on a tight budget is possible with some planning.', ex5_ko = '약간의 계획만 있으면 빠듯한 예산으로도 잘 먹을 수 있어요.' WHERE id = 'idm_shopping_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The vintage chair was a steal at that flea market price.'), ex3_ko = COALESCE(ex3_ko, '그 벼룩시장 가격으로 빈티지 의자는 헐값이었어요.'), ex4 = 'For someone who loves cooking, that food processor is a steal.', ex4_ko = '요리를 좋아하는 사람에게 그 푸드 프로세서는 헐값이에요.', ex5 = 'These tickets are a steal — they''re usually three times the price.', ex5_ko = '이 티켓들은 헐값이에요 — 보통 가격의 세 배예요.' WHERE id = 'idm_shopping_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They splashed out on a beach holiday for their twentieth anniversary.'), ex3_ko = COALESCE(ex3_ko, '그들은 결혼 20주년을 위해 해변 휴가에 돈을 아낌없이 썼어요.'), ex4 = 'I splashed out on a really good winter coat this year.', ex4_ko = '저는 올해 정말 좋은 겨울 코트에 돈을 아낌없이 썼어요.', ex5 = 'They rarely splash out, but birthdays are an exception.', ex5_ko = '그들은 거의 돈을 아낌없이 쓰지 않지만 생일은 예외예요.' WHERE id = 'idm_shopping_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The all-you-can-eat brunch lets you get your money''s worth.'), ex3_ko = COALESCE(ex3_ko, '무한 브런치는 돈 값을 할 수 있게 해줘요.'), ex4 = 'You really get your money''s worth from this online course.', ex4_ko = '이 온라인 강좌는 정말 돈 값을 해요.', ex5 = 'She got her money''s worth from her gym membership this year.', ex5_ko = '그녀는 올해 헬스장 회원권의 돈 값을 했어요.' WHERE id = 'idm_shopping_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The store put the necklace on hold for me overnight.'), ex3_ko = COALESCE(ex3_ko, '가게에서 목걸이를 하룻밤 보류해뒀어요.'), ex4 = 'She put the decision on hold until she could think it over.', ex4_ko = '그녀는 깊이 생각해 볼 수 있을 때까지 결정을 보류해뒀어요.', ex5 = 'They put the renovation on hold during the busy season.', ex5_ko = '그들은 성수기 동안 리노베이션을 보류해뒀어요.' WHERE id = 'idm_shopping_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We shopped till we dropped at the outlet mall last weekend.'), ex3_ko = COALESCE(ex3_ko, '지난 주말 우리는 아울렛에서 쓰러질 때까지 쇼핑했어요.'), ex4 = 'After exams, they shopped till they dropped in celebration.', ex4_ko = '시험 후 그들은 축하하며 쓰러질 때까지 쇼핑했어요.', ex5 = 'On vacation, I always shop till I drop in the local markets.', ex5_ko = '휴가 때 저는 항상 현지 시장에서 쓰러질 때까지 쇼핑해요.' WHERE id = 'idm_shopping_15';

-- ══════════════════════════════════════
-- CAFE
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'She spilled the beans about the engagement at brunch.'), ex3_ko = COALESCE(ex3_ko, '그녀는 브런치 자리에서 약혼에 대한 비밀을 누설했어요.'), ex4 = 'Don''t spill the beans before the surprise party.', ex4_ko = '깜짝 파티 전에 비밀을 누설하지 마세요.', ex5 = 'He spilled the beans about the new restaurant location.', ex5_ko = '그는 새 식당 위치에 대한 비밀을 누설했어요.' WHERE id = 'idm_cafe_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He had to eat humble pie after his loud prediction was wrong.'), ex3_ko = COALESCE(ex3_ko, '큰소리치던 예측이 틀린 후 그는 자존심을 굽혀야 했어요.'), ex4 = 'Eating humble pie is hard, but it builds character.', ex4_ko = '자존심을 굽히는 건 어렵지만 인격을 형성해요.', ex5 = 'She ate humble pie and apologized to the whole team.', ex5_ko = '그녀는 자존심을 굽히고 팀 전체에게 사과했어요.' WHERE id = 'idm_cafe_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'In a nutshell, we need more time to finish properly.'), ex3_ko = COALESCE(ex3_ko, '간단히 말하면, 제대로 끝내려면 시간이 더 필요해요.'), ex4 = 'In a nutshell, the meeting was about budget cuts.', ex4_ko = '간단히 말하면, 회의는 예산 삭감에 관한 것이었어요.', ex5 = 'She summarised the issue in a nutshell within one sentence.', ex5_ko = '그녀는 한 문장 안에 그 문제를 간단히 요약했어요.' WHERE id = 'idm_cafe_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He buttered up his boss before bringing up the time-off request.'), ex3_ko = COALESCE(ex3_ko, '그는 휴가 요청을 꺼내기 전에 상사에게 아첨했어요.'), ex4 = 'Stop trying to butter me up and just say what you need.', ex4_ko = '아첨 그만하고 필요한 걸 말해요.', ex5 = 'She buttered up her teacher hoping for an extension.', ex5_ko = '그녀는 연장을 바라며 선생님에게 아첨했어요.' WHERE id = 'idm_cafe_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'His talk on resilience gave me a lot of food for thought.'), ex3_ko = COALESCE(ex3_ko, '회복력에 대한 그의 강연은 저에게 많은 생각할 거리를 줬어요.'), ex4 = 'The book offers food for thought on what success really means.', ex4_ko = '그 책은 성공이 진정 무엇을 의미하는지에 대한 생각할 거리를 줘요.', ex5 = 'Her question gave the team food for thought for the rest of the week.', ex5_ko = '그녀의 질문은 팀에 그 주 내내 생각할 거리를 줬어요.' WHERE id = 'idm_cafe_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I bit off more than I could chew by volunteering for two committees.'), ex3_ko = COALESCE(ex3_ko, '두 위원회에 자원해서 감당할 수 없는 일을 맡았어요.'), ex4 = 'He bit off more than he could chew with that DIY project.', ex4_ko = '그는 그 DIY 프로젝트로 감당할 수 없는 일을 맡았어요.', ex5 = 'Sometimes I bite off more than I can chew because I want to help.', ex5_ko = '저는 돕고 싶어서 때로 감당할 수 없는 일을 맡곤 해요.' WHERE id = 'idm_cafe_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She has a lot on her plate balancing work and elder care.'), ex3_ko = COALESCE(ex3_ko, '그녀는 일과 노인 돌봄 사이에서 처리할 일이 많아요.'), ex4 = 'I''ve got a lot on my plate this month — please be patient.', ex4_ko = '이번 달 처리할 일이 많아요 — 인내해 주세요.', ex5 = 'He has a lot on his plate but never complains.', ex5_ko = '그는 처리할 일이 많지만 절대 불평하지 않아요.' WHERE id = 'idm_cafe_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A heartfelt thank-you note was the icing on the cake.'), ex3_ko = COALESCE(ex3_ko, '진심 어린 감사 노트는 금상첨화였어요.'), ex4 = 'Meeting my favorite author was the icing on the cake of the trip.', ex4_ko = '제가 좋아하는 작가를 만난 건 여행의 금상첨화였어요.', ex5 = 'The wedding was beautiful, and the surprise fireworks were the icing on the cake.', ex5_ko = '결혼식은 아름다웠고 깜짝 불꽃놀이는 금상첨화였어요.' WHERE id = 'idm_cafe_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'For her, parallel parking is a piece of cake.'), ex3_ko = COALESCE(ex3_ko, '그녀에게 평행 주차는 식은 죽 먹기예요.'), ex4 = 'Once you know the trick, it''s a piece of cake.', ex4_ko = '비결을 알면 식은 죽 먹기예요.', ex5 = 'The driving test was a piece of cake after months of practice.', ex5_ko = '몇 달의 연습 후 운전 시험은 식은 죽 먹기였어요.' WHERE id = 'idm_cafe_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Saying you didn''t really want it sounds like sour grapes.'), ex3_ko = COALESCE(ex3_ko, '진짜 원하지 않았다고 말하는 건 신 포도처럼 들려요.'), ex4 = 'He claims he didn''t want the role, but it''s just sour grapes.', ex4_ko = '그는 그 역할을 원하지 않았다고 주장하지만 그냥 신 포도예요.', ex5 = 'Don''t let sour grapes ruin a real friendship.', ex5_ko = '신 포도 같은 마음이 진짜 우정을 망치지 않게 하세요.' WHERE id = 'idm_cafe_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Take his stories with a pinch of salt — he loves exaggerating.'), ex3_ko = COALESCE(ex3_ko, '그의 이야기를 반신반의하세요 — 그는 과장하기를 좋아해요.'), ex4 = 'We took the rumor with a pinch of salt and waited for confirmation.', ex4_ko = '우리는 그 소문을 반신반의하며 확인을 기다렸어요.', ex5 = 'I take social media posts with a pinch of salt.', ex5_ko = '저는 소셜 미디어 게시물을 반신반의하며 봐요.' WHERE id = 'idm_cafe_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Loud parties just aren''t my cup of tea.'), ex3_ko = COALESCE(ex3_ko, '시끄러운 파티는 그냥 제 취향이 아니에요.'), ex4 = 'Spicy food isn''t his cup of tea, but he loves the smell.', ex4_ko = '매운 음식은 그의 취향이 아니지만 향은 좋아해요.', ex5 = 'Crowded beaches are not really my cup of tea.', ex5_ko = '북적이는 해변은 제 취향이 아니에요.' WHERE id = 'idm_cafe_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She''s got a full plate with three kids and a startup.'), ex3_ko = COALESCE(ex3_ko, '그녀는 아이 셋과 스타트업으로 할 일이 가득해요.'), ex4 = 'He has a full plate this semester with five courses.', ex4_ko = '그는 다섯 과목으로 이번 학기 할 일이 가득해요.', ex5 = 'Having a full plate teaches you to prioritize.', ex5_ko = '할 일이 가득하면 우선순위를 정하는 법을 배우게 돼요.' WHERE id = 'idm_cafe_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Only the cream of the crop get into the program each year.'), ex3_ko = COALESCE(ex3_ko, '매년 최상위 그룹만 그 프로그램에 들어가요.'), ex4 = 'They hire the cream of the crop from each graduating class.', ex4_ko = '그들은 매 졸업반에서 최상위 그룹을 채용해요.', ex5 = 'Her team is widely considered the cream of the crop in the industry.', ex5_ko = '그녀의 팀은 업계에서 최상위 그룹으로 널리 여겨져요.' WHERE id = 'idm_cafe_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'You can''t have your cake and eat it — work and infinite free time don''t mix.'), ex3_ko = COALESCE(ex3_ko, '두 마리 토끼를 다 잡을 수는 없어요 — 일과 무한한 자유 시간은 양립할 수 없어요.'), ex4 = 'She wants to keep her job and travel year-round — having her cake and eating it.', ex4_ko = '그녀는 직장을 유지하면서 일 년 내내 여행하고 싶어해요 — 두 마리 토끼를 다 잡으려는 거예요.', ex5 = 'You can''t always have your cake and eat it too in business decisions.', ex5_ko = '비즈니스 결정에서 두 마리 토끼를 다 잡을 수는 없어요.' WHERE id = 'idm_cafe_15';

-- ══════════════════════════════════════
-- TRANSPORT
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'Living in the fast lane took a toll on his health eventually.'), ex3_ko = COALESCE(ex3_ko, '빠른 속도로 사는 것이 결국 그의 건강에 영향을 미쳤어요.'), ex4 = 'She thrives in the fast lane — meetings, travel, and deadlines.', ex4_ko = '그녀는 회의, 여행, 마감의 빠른 속도 속에서 잘 살아가요.', ex5 = 'Not everyone is built for life in the fast lane.', ex5_ko = '모든 사람이 빠른 속도의 삶에 맞는 건 아니에요.' WHERE id = 'idm_transport_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I missed the boat on the apartment because I hesitated.'), ex3_ko = COALESCE(ex3_ko, '망설이다가 그 아파트 기회를 놓쳤어요.'), ex4 = 'Don''t miss the boat — early-bird tickets close tonight.', ex4_ko = '기회를 놓치지 마세요 — 얼리버드 티켓이 오늘 밤 마감돼요.', ex5 = 'She missed the boat on cryptocurrency early on.', ex5_ko = '그녀는 초기에 암호화폐 기회를 놓쳤어요.' WHERE id = 'idm_transport_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'With consistent practice, you''ll get on the right track.'), ex3_ko = COALESCE(ex3_ko, '꾸준한 연습으로 올바른 방향으로 가게 될 거예요.'), ex4 = 'A good mentor helped her get on the right track.', ex4_ko = '좋은 멘토가 그녀가 올바른 방향으로 가도록 도왔어요.', ex5 = 'The new strategy got the team back on the right track.', ex5_ko = '새 전략이 팀을 다시 올바른 방향으로 가게 했어요.' WHERE id = 'idm_transport_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Time to hit the road — the cabin is a long drive away.'), ex3_ko = COALESCE(ex3_ko, '이제 출발해야 해요 — 오두막까지 차로 한참 가야 해요.'), ex4 = 'They hit the road at dawn to catch the sunrise.', ex4_ko = '그들은 일출을 보기 위해 새벽에 출발했어요.', ex5 = 'After breakfast, we hit the road for the long drive ahead.', ex5_ko = '아침 식사 후 우리는 갈 길이 먼 운전을 시작했어요.' WHERE id = 'idm_transport_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The project went off the rails when key staff left.'), ex3_ko = COALESCE(ex3_ko, '핵심 직원들이 떠나자 프로젝트가 엇나갔어요.'), ex4 = 'Her career briefly went off the rails before she found her footing.', ex4_ko = '그녀의 경력은 자리잡기 전에 잠시 엇나갔어요.', ex5 = 'The conversation went off the rails when politics came up.', ex5_ko = '정치 이야기가 나오자 대화가 엇나갔어요.' WHERE id = 'idm_transport_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We''re in the same boat — we both lost work this year.'), ex3_ko = COALESCE(ex3_ko, '우리는 같은 처지에 있어요 — 둘 다 올해 일을 잃었어요.'), ex4 = 'Don''t feel bad — we''re all in the same boat at the moment.', ex4_ko = '속상해 마세요 — 지금 우리는 모두 같은 처지에 있어요.', ex5 = 'New parents quickly find they''re in the same boat as others.', ex5_ko = '신생아 부모들은 다른 사람들과 같은 처지에 있다는 걸 빠르게 알게 돼요.' WHERE id = 'idm_transport_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The construction noise next door is driving me up the wall.'), ex3_ko = COALESCE(ex3_ko, '옆집 공사 소음이 저를 미치게 해요.'), ex4 = 'His humming during meetings drives the whole team up the wall.', ex4_ko = '회의 중 그의 흥얼거림이 팀 전체를 미치게 해요.', ex5 = 'The dripping tap drove me up the wall all night.', ex5_ko = '뚝뚝 떨어지는 수도꼭지가 밤새 저를 미치게 했어요.' WHERE id = 'idm_transport_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We took the scenic route home through the countryside.'), ex3_ko = COALESCE(ex3_ko, '우리는 시골을 지나는 길로 돌아왔어요.'), ex4 = 'Take the scenic route — the highway is so boring.', ex4_ko = '돌아가는 길로 가요 — 고속도로는 너무 지루해요.', ex5 = 'She likes to take the scenic route through life.', ex5_ko = '그녀는 인생을 여유롭게 사는 걸 좋아해요.' WHERE id = 'idm_transport_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They got the green light to expand into the European market.'), ex3_ko = COALESCE(ex3_ko, '그들은 유럽 시장으로 확장한다는 허가를 받았어요.'), ex4 = 'My doctor gave me the green light to exercise again.', ex4_ko = '의사가 저에게 다시 운동해도 된다는 허가를 줬어요.', ex5 = 'We''re waiting for the green light from the legal team.', ex5_ko = '우리는 법무팀의 허가를 기다리고 있어요.' WHERE id = 'idm_transport_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They put the brakes on hiring after the merger.'), ex3_ko = COALESCE(ex3_ko, '그들은 합병 후 채용에 제동을 걸었어요.'), ex4 = 'I had to put the brakes on my social life during exams.', ex4_ko = '저는 시험 기간에 사교 생활에 제동을 걸어야 했어요.', ex5 = 'The board put the brakes on the planned expansion.', ex5_ko = '이사회는 계획된 확장에 제동을 걸었어요.' WHERE id = 'idm_transport_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My energy ran out of steam by the third week of the project.'), ex3_ko = COALESCE(ex3_ko, '프로젝트 3주차에 제 에너지가 다해서 멈췄어요.'), ex4 = 'The conversation ran out of steam after about an hour.', ex4_ko = '한 시간쯤 지나자 대화가 지쳐서 멈췄어요.', ex5 = 'The movement ran out of steam without good leadership.', ex5_ko = '좋은 리더십 없이 그 운동은 지쳐서 멈췄어요.' WHERE id = 'idm_transport_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'It''s a long shot, but I''ll send my portfolio just in case.'), ex3_ko = COALESCE(ex3_ko, '가능성은 낮지만, 혹시 모르니 포트폴리오를 보낼게요.'), ex4 = 'Reaching her at this hour is a long shot.', ex4_ko = '이 시간에 그녀에게 연락하는 건 가능성이 낮아요.', ex5 = 'Asking for an extension was a long shot, but it worked.', ex5_ko = '연장 요청은 가능성이 낮았지만 통했어요.' WHERE id = 'idm_transport_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After college, many students find themselves at a crossroads.'), ex3_ko = COALESCE(ex3_ko, '대학 졸업 후 많은 학생들이 기로에 서요.'), ex4 = 'She''s at a crossroads in her career and needs time to think.', ex4_ko = '그녀는 경력의 기로에 서 있고 생각할 시간이 필요해요.', ex5 = 'The company is at a crossroads after losing key clients.', ex5_ko = '회사는 주요 고객을 잃은 후 기로에 서 있어요.' WHERE id = 'idm_transport_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My mother-in-law can be a real backseat driver in the kitchen.'), ex3_ko = COALESCE(ex3_ko, '저희 시어머니는 주방에서 정말 참견쟁이세요.'), ex4 = 'Stop being a backseat driver — let me decide.', ex4_ko = '참견 그만하세요 — 제가 결정하게 해주세요.', ex5 = 'Nobody likes a backseat driver during a road trip.', ex5_ko = '자동차 여행 중 누구도 참견쟁이를 좋아하지 않아요.' WHERE id = 'idm_transport_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Your career plan is on the right track — keep going.'), ex3_ko = COALESCE(ex3_ko, '당신의 진로 계획은 잘 가고 있어요 — 계속하세요.'), ex4 = 'It feels like we''re finally on the right track with this project.', ex4_ko = '이 프로젝트에서 드디어 잘 가고 있다는 느낌이에요.', ex5 = 'Small daily habits put me on the right track to learn the language.', ex5_ko = '작은 일상 습관들이 그 언어를 배우는 올바른 길로 저를 이끌었어요.' WHERE id = 'idm_transport_15';

-- ══════════════════════════════════════
-- HEALTH
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''m feeling under the weather and might skip dinner tonight.'), ex3_ko = COALESCE(ex3_ko, '몸이 좋지 않아서 오늘 저녁을 거를 수도 있어요.'), ex4 = 'He''s been under the weather since the long flight.', ex4_ko = '그는 긴 비행 이후로 몸이 좋지 않아요.', ex5 = 'A bit of fresh air helps when I''m under the weather.', ex5_ko = '몸이 좋지 않을 때 신선한 공기를 좀 쐬면 도움이 돼요.' WHERE id = 'idm_health_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After two weeks of rest, she was back on her feet.'), ex3_ko = COALESCE(ex3_ko, '2주간의 휴식 후 그녀는 회복했어요.'), ex4 = 'Soup and sleep got him back on his feet quickly.', ex4_ko = '국과 잠이 그를 빠르게 회복시켰어요.', ex5 = 'It took time, but she''s back on her feet emotionally.', ex5_ko = '시간이 걸렸지만 그녀는 감정적으로 회복했어요.' WHERE id = 'idm_health_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After her wellness routine, she looks in the pink.'), ex3_ko = COALESCE(ex3_ko, '웰빙 루틴 후 그녀는 매우 건강해 보여요.'), ex4 = 'My dog has been in the pink since we changed his diet.', ex4_ko = '식단을 바꾼 후 저희 강아지가 매우 건강해요.', ex5 = 'He came back from the trip in the pink.', ex5_ko = '그는 여행에서 매우 건강한 모습으로 돌아왔어요.' WHERE id = 'idm_health_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Burning the candle at both ends will catch up with you eventually.'), ex3_ko = COALESCE(ex3_ko, '무리하게 일하면 결국 몸에 무리가 와요.'), ex4 = 'He''s burning the candle at both ends with school and his job.', ex4_ko = '그는 학교와 일로 무리하게 일하고 있어요.', ex5 = 'I burned the candle at both ends and ended up with the flu.', ex5_ko = '무리하게 일하다가 결국 독감에 걸렸어요.' WHERE id = 'idm_health_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He''s on the mend after a few quiet days at home.'), ex3_ko = COALESCE(ex3_ko, '집에서 며칠 조용히 보낸 후 그는 회복 중이에요.'), ex4 = 'Thanks for asking — I''m on the mend.', ex4_ko = '물어봐 주셔서 감사해요 — 회복 중이에요.', ex5 = 'My grandmother is on the mend after her hospital stay.', ex5_ko = '저희 할머니는 입원 후 회복 중이세요.' WHERE id = 'idm_health_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Many freelancers just keep body and soul together at the start.'), ex3_ko = COALESCE(ex3_ko, '많은 프리랜서들은 시작할 때 간신히 살아가요.'), ex4 = 'During the recession, they barely kept body and soul together.', ex4_ko = '경기 침체 동안 그들은 간신히 살아갔어요.', ex5 = 'She works two jobs just to keep body and soul together.', ex5_ko = '그녀는 간신히 살아가기 위해 두 가지 일을 해요.' WHERE id = 'idm_health_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My uncle, at 70, is still fighting fit.'), ex3_ko = COALESCE(ex3_ko, '저희 삼촌은 70세인데도 여전히 매우 건강하세요.'), ex4 = 'She came back from the retreat looking fighting fit.', ex4_ko = '그녀는 휴양지에서 매우 건강한 모습으로 돌아왔어요.', ex5 = 'Soldiers train hard to stay fighting fit.', ex5_ko = '군인들은 매우 건강한 상태를 유지하기 위해 열심히 훈련해요.' WHERE id = 'idm_health_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I caught a bug during my flight and lost the next two days.'), ex3_ko = COALESCE(ex3_ko, '비행 중 가벼운 병에 걸려서 이틀을 날렸어요.'), ex4 = 'Lots of kids at school caught a bug this week.', ex4_ko = '이번 주 학교에서 많은 아이들이 가벼운 병에 걸렸어요.', ex5 = 'Wash your hands often to avoid catching a bug.', ex5_ko = '가벼운 병에 걸리지 않으려면 자주 손을 씻으세요.' WHERE id = 'idm_health_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She left the clinic with a clean bill of health.'), ex3_ko = COALESCE(ex3_ko, '그녀는 건강 이상 없음 판정을 받고 병원을 나섰어요.'), ex4 = 'Despite his age, he got a clean bill of health.', ex4_ko = '나이에도 불구하고 그는 건강 이상 없음 판정을 받았어요.', ex5 = 'I won''t relax until I get a clean bill of health.', ex5_ko = '건강 이상 없음 판정을 받기 전까지는 마음을 놓을 수 없어요.' WHERE id = 'idm_health_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Mom always reminds me an apple a day keeps the doctor away.'), ex3_ko = COALESCE(ex3_ko, '엄마는 항상 건강한 습관이 건강을 지킨다고 말씀하세요.'), ex4 = 'My grandfather lives by the saying: an apple a day keeps the doctor away.', ex4_ko = '할아버지는 건강한 습관이 건강을 지킨다는 말을 따라 사세요.', ex5 = 'It''s not literal — an apple a day keeps the doctor away just means healthy habits matter.', ex5_ko = '문자 그대로는 아니지만 — 건강한 습관이 중요하다는 의미예요.' WHERE id = 'idm_health_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She ran herself into the ground during finals week.'), ex3_ko = COALESCE(ex3_ko, '그녀는 기말 시험 주에 스스로를 완전히 지치게 했어요.'), ex4 = 'Don''t run yourself into the ground over a single project.', ex4_ko = '하나의 프로젝트 때문에 스스로를 지치게 하지 마세요.', ex5 = 'He ran himself into the ground caring for his sick parent.', ex5_ko = '그는 아픈 부모를 돌보며 스스로를 완전히 지치게 했어요.' WHERE id = 'idm_health_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After her retreat, she felt as fit as a fiddle.'), ex3_ko = COALESCE(ex3_ko, '휴양 후 그녀는 매우 건강하다고 느꼈어요.'), ex4 = 'A morning swim keeps me fit as a fiddle.', ex4_ko = '아침 수영이 저를 매우 건강하게 유지시켜 줘요.', ex5 = 'He stays fit as a fiddle by walking every day.', ex5_ko = '그는 매일 걸으며 매우 건강하게 유지해요.' WHERE id = 'idm_health_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After a stable week, her condition took a turn for the worse.'), ex3_ko = COALESCE(ex3_ko, '안정적인 한 주 후 그녀의 상태가 악화됐어요.'), ex4 = 'The weather took a turn for the worse just before the wedding.', ex4_ko = '결혼식 직전에 날씨가 악화됐어요.', ex5 = 'Negotiations took a turn for the worse last night.', ex5_ko = '협상이 어젯밤 악화됐어요.' WHERE id = 'idm_health_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My old printer is on its last legs.'), ex3_ko = COALESCE(ex3_ko, '저희 오래된 프린터는 기력이 다했어요.'), ex4 = 'After 12 hours of hiking, I was on my last legs.', ex4_ko = '12시간 등산 후 저는 기력이 다했어요.', ex5 = 'This jacket is on its last legs, but I still love it.', ex5_ko = '이 재킷은 기력이 다했지만 저는 아직도 좋아해요.' WHERE id = 'idm_health_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I feel like a million dollars after a proper rest day.'), ex3_ko = COALESCE(ex3_ko, '제대로 쉰 후 저는 최상의 컨디션을 느껴요.'), ex4 = 'A long shower makes me feel like a million dollars.', ex4_ko = '긴 샤워가 저를 최상의 컨디션으로 만들어줘요.', ex5 = 'The bride felt like a million dollars on her big day.', ex5_ko = '신부는 결혼식 날 최상의 컨디션을 느꼈어요.' WHERE id = 'idm_health_15';

-- ══════════════════════════════════════
-- TRAVEL
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'After breakfast, let''s hit the road for the mountains.'), ex3_ko = COALESCE(ex3_ko, '아침 식사 후 산으로 출발해요.'), ex4 = 'We hit the road early to avoid weekend traffic.', ex4_ko = '주말 교통 체증을 피하려고 일찍 출발했어요.', ex5 = 'They hit the road every weekend in their camper van.', ex5_ko = '그들은 캠퍼밴으로 매 주말 출발해요.' WHERE id = 'idm_travel_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She found a charming village off the beaten track.'), ex3_ko = COALESCE(ex3_ko, '그녀는 관광객이 잘 찾지 않는 곳에서 매력적인 마을을 발견했어요.'), ex4 = 'We tried to stay off the beaten track during our trip.', ex4_ko = '우리는 여행 동안 관광객이 잘 안 가는 곳에 머물려고 했어요.', ex5 = 'Off the beaten track restaurants often serve the best food.', ex5_ko = '관광지에서 벗어난 식당들이 종종 가장 좋은 음식을 내놓아요.' WHERE id = 'idm_travel_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A colorful mural caught my eye in the alley.'), ex3_ko = COALESCE(ex3_ko, '골목에서 다채로운 벽화가 제 눈길을 끌었어요.'), ex4 = 'The bookstore window caught her eye and she went in.', ex4_ko = '서점 창문이 그녀의 눈길을 끌어서 그녀는 들어갔어요.', ex5 = 'Something on the menu caught his eye right away.', ex5_ko = '메뉴의 무언가가 그의 눈길을 즉시 끌었어요.' WHERE id = 'idm_travel_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Living out of a suitcase for three months was exhausting.'), ex3_ko = COALESCE(ex3_ko, '3개월간 여행가방만으로 사는 건 지쳤어요.'), ex4 = 'She''s been living out of a suitcase since her training started.', ex4_ko = '그녀는 훈련이 시작된 이후 여행가방만으로 살고 있어요.', ex5 = 'Sales reps often live out of a suitcase for half the year.', ex5_ko = '영업 담당자들은 종종 1년 절반을 여행가방만으로 살아요.' WHERE id = 'idm_travel_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The guide went the extra mile to find us tickets.'), ex3_ko = COALESCE(ex3_ko, '가이드는 우리를 위해 티켓을 찾으려고 더 많은 노력을 기울였어요.'), ex4 = 'She goes the extra mile for every client.', ex4_ko = '그녀는 모든 고객을 위해 더 많은 노력을 기울여요.', ex5 = 'A small thank-you means a lot when someone goes the extra mile.', ex5_ko = '누군가 더 많은 노력을 기울일 때 작은 감사 표시는 큰 의미가 있어요.' WHERE id = 'idm_travel_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Working overseas truly broadened her horizons.'), ex3_ko = COALESCE(ex3_ko, '해외에서 일하는 것이 그녀의 견문을 정말로 넓혀줬어요.'), ex4 = 'Reading widely is a quiet way to broaden your horizons.', ex4_ko = '폭넓은 독서는 견문을 넓히는 조용한 방법이에요.', ex5 = 'Volunteering abroad broadens your horizons in deep ways.', ex5_ko = '해외 봉사활동은 깊은 방식으로 견문을 넓혀줘요.' WHERE id = 'idm_travel_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'It took me a month to find my feet at the new office.'), ex3_ko = COALESCE(ex3_ko, '새 사무실에 적응하는 데 한 달이 걸렸어요.'), ex4 = 'She found her feet quickly thanks to a friendly mentor.', ex4_ko = '친절한 멘토 덕분에 그녀는 빠르게 적응했어요.', ex5 = 'Give him a couple of weeks to find his feet.', ex5_ko = '그가 적응할 수 있도록 몇 주의 시간을 주세요.' WHERE id = 'idm_travel_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We rented a cabin to get away from it all.'), ex3_ko = COALESCE(ex3_ko, '우리는 모든 것에서 벗어나기 위해 오두막을 빌렸어요.'), ex4 = 'Sometimes you just need to get away from it all for a weekend.', ex4_ko = '때로는 주말에 모든 것에서 벗어날 필요가 있어요.', ex5 = 'She went hiking alone to get away from it all.', ex5_ko = '그녀는 모든 것에서 벗어나기 위해 혼자 등산을 갔어요.' WHERE id = 'idm_travel_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We took in the sights of Paris on a leisurely walk.'), ex3_ko = COALESCE(ex3_ko, '우리는 여유롭게 걸으며 파리의 관광지들을 둘러봤어요.'), ex4 = 'There''s only a day to take in the sights of the old town.', ex4_ko = '구시가지의 관광지들을 둘러볼 시간이 단 하루뿐이에요.', ex5 = 'The bus tour lets you take in the sights without walking too much.', ex5_ko = '버스 투어는 너무 많이 걷지 않고 관광지를 둘러볼 수 있게 해줘요.' WHERE id = 'idm_travel_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The bakery is just a stone''s throw away from my apartment.'), ex3_ko = COALESCE(ex3_ko, '그 빵집은 제 아파트에서 아주 가까운 거리에 있어요.'), ex4 = 'The train station is a stone''s throw from the hotel.', ex4_ko = '기차역은 호텔에서 아주 가까운 거리에 있어요.', ex5 = 'Their cabin is a stone''s throw from a beautiful lake.', ex5_ko = '그들의 오두막은 아름다운 호수에서 아주 가까운 거리에 있어요.' WHERE id = 'idm_travel_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The shuttle was packed like sardines this morning.'), ex3_ko = COALESCE(ex3_ko, '오늘 아침 셔틀은 빽빽하게 들어차 있었어요.'), ex4 = 'We were packed like sardines on the small ferry.', ex4_ko = '우리는 작은 페리에서 빽빽하게 들어차 있었어요.', ex5 = 'Concertgoers were packed like sardines near the stage.', ex5_ko = '콘서트 관객들이 무대 근처에서 빽빽하게 들어차 있었어요.' WHERE id = 'idm_travel_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''ve got itchy feet — it''s been too long since my last trip.'), ex3_ko = COALESCE(ex3_ko, '여행을 떠나고 싶어요 — 마지막 여행 이후 너무 오래됐어요.'), ex4 = 'After the lockdown ended, everyone had itchy feet.', ex4_ko = '봉쇄가 끝난 후 모두가 여행을 떠나고 싶어 했어요.', ex5 = 'She always has itchy feet by the end of winter.', ex5_ko = '그녀는 겨울 끝 무렵이면 항상 여행을 떠나고 싶어해요.' WHERE id = 'idm_travel_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The festival was in full swing by the time we arrived.'), ex3_ko = COALESCE(ex3_ko, '우리가 도착했을 때 축제는 한창이었어요.'), ex4 = 'Cherry blossom season is in full swing across the city.', ex4_ko = '벚꽃 시즌이 도시 전역에 한창이에요.', ex5 = 'The renovations are in full swing on our floor.', ex5_ko = '우리 층의 리노베이션이 한창이에요.' WHERE id = 'idm_travel_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We lost our way in the markets but loved every minute.'), ex3_ko = COALESCE(ex3_ko, '우리는 시장에서 길을 잃었지만 매 순간을 사랑했어요.'), ex4 = 'It''s easy to lose your way in this city without a phone.', ex4_ko = '휴대폰 없이 이 도시에서 길을 잃기 쉬워요.', ex5 = 'She lost her way during the marathon detour.', ex5_ko = '그녀는 마라톤 우회로에서 길을 잃었어요.' WHERE id = 'idm_travel_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Our honeymoon was the trip of a lifetime.'), ex3_ko = COALESCE(ex3_ko, '우리 신혼여행은 일생에 한 번뿐인 여행이었어요.'), ex4 = 'They called it the trip of a lifetime, and I can see why.', ex4_ko = '그들은 그것을 일생에 한 번뿐인 여행이라 불렀고 그 이유를 알겠어요.', ex5 = 'For her 60th birthday, her kids planned the trip of a lifetime.', ex5_ko = '그녀의 60세 생일을 위해 아이들이 일생에 한 번뿐인 여행을 계획했어요.' WHERE id = 'idm_travel_15';

-- ══════════════════════════════════════
-- HOME
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'Even on long work trips, home is where the heart is.'), ex3_ko = COALESCE(ex3_ko, '긴 출장 중에도 마음이 있는 곳이 집이에요.'), ex4 = 'After moving for a job, she realized home is where the heart is.', ex4_ko = '직장 때문에 이사한 후 그녀는 마음이 있는 곳이 집이라는 걸 깨달았어요.', ex5 = 'For me, home is where the heart is — wherever my family lives.', ex5_ko = '저에게는 마음이 있는 곳이 집이에요 — 가족이 사는 어디든요.' WHERE id = 'idm_home_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'You can''t lead a team until you put your own house in order.'), ex3_ko = COALESCE(ex3_ko, '자신의 일을 먼저 정리하지 않으면 팀을 이끌 수 없어요.'), ex4 = 'She put her finances in order before applying for a mortgage.', ex4_ko = '그녀는 주택담보 대출을 신청하기 전에 재정 상황을 정리했어요.', ex5 = 'The new director put the department''s house in order quickly.', ex5_ko = '새 이사는 부서를 빠르게 정리했어요.' WHERE id = 'idm_home_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Please make yourself at home — the kitchen is right through there.'), ex3_ko = COALESCE(ex3_ko, '편하게 계세요 — 주방은 바로 저쪽이에요.'), ex4 = 'She made me feel at home the moment I walked in.', ex4_ko = '제가 들어오는 순간 그녀는 저를 편안하게 해줬어요.', ex5 = 'Make yourself at home — there''s tea on the stove.', ex5_ko = '편하게 계세요 — 스토브 위에 차가 있어요.' WHERE id = 'idm_home_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The story of her grandmother hit close to home.'), ex3_ko = COALESCE(ex3_ko, '그녀 할머니의 이야기는 가슴에 와 닿았어요.'), ex4 = 'The film about loneliness hit close to home for many viewers.', ex4_ko = '외로움에 관한 그 영화는 많은 시청자들의 가슴에 와 닿았어요.', ex5 = 'His advice about caregiving hit close to home for me.', ex5_ko = '돌봄에 관한 그의 조언이 저의 가슴에 와 닿았어요.' WHERE id = 'idm_home_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Every family has a skeleton or two in the closet.'), ex3_ko = COALESCE(ex3_ko, '모든 가족에게는 숨겨진 비밀이 한두 가지 있어요.'), ex4 = 'They tried to hide the skeleton in the closet during the campaign.', ex4_ko = '그들은 캠페인 동안 숨겨진 비밀을 감추려 했어요.', ex5 = 'Be careful — bringing up that topic might unearth a skeleton in the closet.', ex5_ko = '조심하세요 — 그 주제를 꺼내면 숨겨진 비밀이 드러날 수도 있어요.' WHERE id = 'idm_home_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Three generations live under one roof in their household.'), ex3_ko = COALESCE(ex3_ko, '그들의 가정에는 3대가 한 지붕 아래 살고 있어요.'), ex4 = 'Living under one roof with extended family has its joys and challenges.', ex4_ko = '대가족과 한 지붕 아래 사는 것은 기쁨과 도전이 있어요.', ex5 = 'They''re finally all under one roof again after years abroad.', ex5_ko = '해외 생활 몇 년 후 그들은 마침내 다시 한 지붕 아래 모였어요.' WHERE id = 'idm_home_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After saving for years, she finally has a roof over her head.'), ex3_ko = COALESCE(ex3_ko, '몇 년간의 저축 끝에 그녀는 마침내 살 곳이 생겼어요.'), ex4 = 'He''s grateful for a roof over his head after a difficult year.', ex4_ko = '그는 힘든 한 해 후 살 곳이 있다는 것에 감사해요.', ex5 = 'Charities help refugees secure a roof over their heads.', ex5_ko = '자선단체들은 난민들이 살 곳을 마련하도록 도와요.' WHERE id = 'idm_home_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The committee swept the complaint under the rug.'), ex3_ko = COALESCE(ex3_ko, '위원회는 그 항의를 덮어뒀어요.'), ex4 = 'We can''t sweep this issue under the rug any longer.', ex4_ko = '더 이상 이 문제를 덮어둘 수 없어요.', ex5 = 'For years they swept the problem under the rug.', ex5_ko = '그들은 몇 년 동안 문제를 덮어뒀어요.' WHERE id = 'idm_home_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He won''t lift a finger to clean up after dinner.'), ex3_ko = COALESCE(ex3_ko, '그는 저녁 식사 후 청소를 위해 손가락 하나 까딱하지 않아요.'), ex4 = 'My coworker didn''t lift a finger when I was overloaded.', ex4_ko = '제가 과중한 업무에 시달릴 때 제 동료는 손가락 하나 까딱하지 않았어요.', ex5 = 'She raised her kids to lift a finger around the house.', ex5_ko = '그녀는 아이들이 집안일을 돕도록 키웠어요.' WHERE id = 'idm_home_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The argument quickly got out of hand at the family dinner.'), ex3_ko = COALESCE(ex3_ko, '가족 저녁 식사에서 다툼이 빠르게 걷잡을 수 없게 됐어요.'), ex4 = 'Things got out of hand when the kids ran out of patience.', ex4_ko = '아이들이 인내심을 잃자 일이 걷잡을 수 없게 됐어요.', ex5 = 'The renovation got out of hand and went way over budget.', ex5_ko = '리노베이션이 걷잡을 수 없게 돼서 예산을 크게 초과했어요.' WHERE id = 'idm_home_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He moves through small kitchens like a bull in a china shop.'), ex3_ko = COALESCE(ex3_ko, '그는 작은 주방에서 조심성 없이 움직여요.'), ex4 = 'She''s like a bull in a china shop with delicate antiques.', ex4_ko = '그녀는 섬세한 골동품을 다룰 때 조심성이 없어요.', ex5 = 'Don''t bring him to the museum — he''s a bull in a china shop.', ex5_ko = '그를 박물관에 데려가지 마세요 — 조심성이 없어요.' WHERE id = 'idm_home_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After traveling for years, she finally found a place to call home.'), ex3_ko = COALESCE(ex3_ko, '몇 년간 여행한 끝에 그녀는 마침내 정착할 곳을 찾았어요.'), ex4 = 'For many immigrants, a place to call home means everything.', ex4_ko = '많은 이민자들에게 정착할 곳은 모든 것을 의미해요.', ex5 = 'They built a place to call home from the ground up.', ex5_ko = '그들은 처음부터 정착할 곳을 직접 지었어요.' WHERE id = 'idm_home_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'During the deployment, she kept the home fires burning.'), ex3_ko = COALESCE(ex3_ko, '파병 기간 동안 그녀는 집을 잘 유지했어요.'), ex4 = 'He worked from home and kept the home fires burning.', ex4_ko = '그는 재택근무를 하며 집을 잘 유지했어요.', ex5 = 'Grandparents often help keep the home fires burning for busy parents.', ex5_ko = '조부모는 종종 바쁜 부모를 위해 집을 잘 유지하는 데 도움을 줘요.' WHERE id = 'idm_home_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He''s in his element when he''s working in his garden.'), ex3_ko = COALESCE(ex3_ko, '그는 정원에서 일할 때 자신에게 맞는 환경에 있어요.'), ex4 = 'She''s in her element teaching young children.', ex4_ko = '그녀는 어린이들을 가르칠 때 자신에게 맞는 환경에 있어요.', ex5 = 'On stage, the musician was completely in her element.', ex5_ko = '무대 위에서 그 음악가는 완전히 자신에게 맞는 환경에 있었어요.' WHERE id = 'idm_home_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I feel at home around old friends, no matter how long it''s been.'), ex3_ko = COALESCE(ex3_ko, '오랜 친구들과 있으면 얼마나 시간이 지났든 편안함을 느껴요.'), ex4 = 'She felt at home in the small library from the very first visit.', ex4_ko = '그녀는 첫 방문부터 그 작은 도서관에서 편안함을 느꼈어요.', ex5 = 'The smell of fresh bread makes me feel at home anywhere.', ex5_ko = '갓 구운 빵 냄새는 어디서든 저를 편안하게 해줘요.' WHERE id = 'idm_home_15';

-- ══════════════════════════════════════
-- WORK
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'I had to burn the midnight oil to meet the deadline.'), ex3_ko = COALESCE(ex3_ko, '마감을 맞추기 위해 밤늦게까지 일해야 했어요.'), ex4 = 'She burned the midnight oil studying for the bar exam.', ex4_ko = '그녀는 변호사 시험을 위해 밤늦게까지 공부했어요.', ex5 = 'Burning the midnight oil too often catches up with your health.', ex5_ko = '너무 자주 밤늦게까지 일하면 건강에 무리가 와요.' WHERE id = 'idm_work_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Each team member is expected to pull their weight.'), ex3_ko = COALESCE(ex3_ko, '각 팀원이 제 몫을 하기를 기대해요.'), ex4 = 'In a small startup, everyone pulls their weight or it fails.', ex4_ko = '작은 스타트업에서는 모두가 제 몫을 하지 않으면 실패해요.', ex5 = 'He started pulling his weight after a serious conversation.', ex5_ko = '진지한 대화 후 그는 제 몫을 하기 시작했어요.' WHERE id = 'idm_work_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Let''s get the ball rolling by introducing ourselves.'), ex3_ko = COALESCE(ex3_ko, '자기소개로 일을 시작해요.'), ex4 = 'She got the ball rolling on the donation drive last week.', ex4_ko = '그녀는 지난주 기부 캠페인을 시작했어요.', ex5 = 'I''ll send a quick email to get the ball rolling.', ex5_ko = '일을 시작하기 위해 빠른 이메일을 보낼게요.' WHERE id = 'idm_work_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The prototype didn''t work — back to the drawing board.'), ex3_ko = COALESCE(ex3_ko, '시제품이 작동하지 않았어요 — 처음부터 다시 시작해야 해요.'), ex4 = 'After the failed launch, we went back to the drawing board.', ex4_ko = '출시 실패 후 우리는 처음부터 다시 시작했어요.', ex5 = 'Going back to the drawing board can be a good thing.', ex5_ko = '처음부터 다시 시작하는 것이 좋은 일일 수 있어요.' WHERE id = 'idm_work_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''ll touch base with you after the client call.'), ex3_ko = COALESCE(ex3_ko, '고객 통화 후에 연락드릴게요.'), ex4 = 'Let''s touch base before the meeting to align on the agenda.', ex4_ko = '안건을 맞추기 위해 회의 전에 연락해요.', ex5 = 'She likes to touch base with mentees every two weeks.', ex5_ko = '그녀는 멘티들과 2주마다 연락하는 걸 좋아해요.' WHERE id = 'idm_work_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They''re thinking outside the box to solve customer pain points.'), ex3_ko = COALESCE(ex3_ko, '그들은 고객 불편을 해결하기 위해 창의적으로 생각하고 있어요.'), ex4 = 'Thinking outside the box helped us land the contract.', ex4_ko = '창의적으로 생각한 것이 우리가 계약을 따내는 데 도움이 됐어요.', ex5 = 'Children naturally think outside the box, which is something we lose.', ex5_ko = '아이들은 자연스럽게 창의적으로 생각해요. 우리가 잃는 것이죠.' WHERE id = 'idm_work_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Before we start, let''s make sure everyone''s on the same page.'), ex3_ko = COALESCE(ex3_ko, '시작하기 전에 모두 같은 생각인지 확인해요.'), ex4 = 'A quick alignment call gets us all on the same page.', ex4_ko = '빠른 조율 통화로 우리 모두 같은 생각을 할 수 있어요.', ex5 = 'They weren''t on the same page about the deadline.', ex5_ko = '그들은 마감일에 대해 같은 생각이 아니었어요.' WHERE id = 'idm_work_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'When stuck, go back to basics and rebuild the foundation.'), ex3_ko = COALESCE(ex3_ko, '막힐 때는 기본으로 돌아가 기초를 다시 쌓으세요.'), ex4 = 'Sometimes the team needs to go back to basics together.', ex4_ko = '때로는 팀이 함께 기본으로 돌아가야 해요.', ex5 = 'In running, going back to basics improved my form.', ex5_ko = '달리기에서 기본으로 돌아가니 자세가 좋아졌어요.' WHERE id = 'idm_work_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'New hires sometimes hit the ground running and sometimes need time.'), ex3_ko = COALESCE(ex3_ko, '신입사원은 때로는 즉시 활동을 시작하고 때로는 시간이 필요해요.'), ex4 = 'She hit the ground running after the merger and stabilized the team.', ex4_ko = '그녀는 합병 후 즉시 활동을 시작해 팀을 안정시켰어요.', ex5 = 'Hitting the ground running on day one impressed the hiring manager.', ex5_ko = '첫날부터 즉시 활동을 시작한 것이 채용 담당자에게 깊은 인상을 줬어요.' WHERE id = 'idm_work_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Their R&D team stays ahead of the curve through constant experimentation.'), ex3_ko = COALESCE(ex3_ko, '그들의 R&D 팀은 지속적인 실험을 통해 앞서가요.'), ex4 = 'She stays ahead of the curve by reading research papers.', ex4_ko = '그녀는 연구 논문을 읽으며 앞서가요.', ex5 = 'Companies ahead of the curve invested in AI years ago.', ex5_ko = '앞서가는 회사들은 몇 년 전부터 AI에 투자했어요.' WHERE id = 'idm_work_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Cut to the chase — we don''t have time for long preambles.'), ex3_ko = COALESCE(ex3_ko, '핵심으로 바로 가요 — 긴 서론을 할 시간이 없어요.'), ex4 = 'She cut to the chase and asked for the budget directly.', ex4_ko = '그녀는 핵심으로 바로 가서 예산을 직접 물어봤어요.', ex5 = 'Cutting to the chase is more respectful when people are busy.', ex5_ko = '사람들이 바쁠 때 핵심으로 바로 가는 것이 더 존중하는 행동이에요.' WHERE id = 'idm_work_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Please keep me in the loop on any client updates.'), ex3_ko = COALESCE(ex3_ko, '고객 관련 업데이트가 있으면 제게도 알려주세요.'), ex4 = 'She makes sure her team is always in the loop.', ex4_ko = '그녀는 자기 팀이 항상 정보를 공유받도록 해요.', ex5 = 'Being in the loop helps you make better decisions.', ex5_ko = '정보를 공유받으면 더 나은 결정을 내릴 수 있어요.' WHERE id = 'idm_work_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He carried the can after the project was canceled.'), ex3_ko = COALESCE(ex3_ko, '그는 프로젝트가 취소된 후 책임을 졌어요.'), ex4 = 'Junior staff often end up carrying the can.', ex4_ko = '신입 직원들이 종종 결국 책임을 지게 돼요.', ex5 = 'She refused to carry the can for a decision she didn''t make.', ex5_ko = '그녀는 자신이 내리지 않은 결정에 대해 책임을 지기를 거부했어요.' WHERE id = 'idm_work_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He''s a safe pair of hands for high-stakes negotiations.'), ex3_ko = COALESCE(ex3_ko, '그는 중요한 협상에서 믿을 수 있는 사람이에요.'), ex4 = 'When she''s out, her deputy is a safe pair of hands.', ex4_ko = '그녀가 자리를 비울 때 그녀의 부관은 믿을 수 있는 사람이에요.', ex5 = 'You want a safe pair of hands managing your finances.', ex5_ko = '재정 관리에는 믿을 수 있는 사람이 필요해요.' WHERE id = 'idm_work_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They keep moving the goalposts every quarter.'), ex3_ko = COALESCE(ex3_ko, '그들은 매 분기마다 기준을 변경해요.'), ex4 = 'Moving the goalposts during the project frustrated the whole team.', ex4_ko = '프로젝트 중 기준 변경은 팀 전체를 답답하게 했어요.', ex5 = 'It''s unfair when the client moves the goalposts after sign-off.', ex5_ko = '고객이 승인 후 기준을 변경하는 건 부당해요.' WHERE id = 'idm_work_15';

-- ══════════════════════════════════════
-- EDUCATION
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'I hit the books for two weeks straight before the test.'), ex3_ko = COALESCE(ex3_ko, '저는 시험 전 2주간 계속 공부했어요.'), ex4 = 'After dinner, the kids hit the books at the kitchen table.', ex4_ko = '저녁 식사 후 아이들은 식탁에서 공부했어요.', ex5 = 'Hitting the books in the morning works better for him.', ex5_ko = '그에게는 아침에 공부하는 것이 더 잘 맞아요.' WHERE id = 'idm_education_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'It took me a month to learn the ropes at my new internship.'), ex3_ko = COALESCE(ex3_ko, '새 인턴십에서 요령을 익히는 데 한 달이 걸렸어요.'), ex4 = 'She''s still learning the ropes of customer service.', ex4_ko = '그녀는 고객 서비스의 요령을 아직 익히고 있어요.', ex5 = 'A patient mentor helped me learn the ropes quickly.', ex5_ko = '인내심 있는 멘토가 제가 요령을 빠르게 익히는 데 도움이 됐어요.' WHERE id = 'idm_education_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He passed his interview with flying colors.'), ex3_ko = COALESCE(ex3_ko, '그는 면접에서 우수한 성적으로 합격했어요.'), ex4 = 'Despite the difficulty, she passed with flying colors.', ex4_ko = '어려움에도 불구하고 그녀는 우수한 성적으로 합격했어요.', ex5 = 'She passed her medical exams with flying colors.', ex5_ko = '그녀는 의학 시험에 우수한 성적으로 합격했어요.' WHERE id = 'idm_education_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My grandmother knows her hometown''s history inside out.'), ex3_ko = COALESCE(ex3_ko, '저희 할머니는 고향의 역사를 속속들이 아세요.'), ex4 = 'After years of practice, she knows the piano piece inside out.', ex4_ko = '몇 년의 연습 후 그녀는 그 피아노 곡을 속속들이 알아요.', ex5 = 'He knows tax law inside out and can explain it clearly.', ex5_ko = '그는 세법을 속속들이 알고 명확하게 설명할 수 있어요.' WHERE id = 'idm_education_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''m cramming for the test even though I should have started earlier.'), ex3_ko = COALESCE(ex3_ko, '더 일찍 시작했어야 했지만 시험을 위해 벼락치기하고 있어요.'), ex4 = 'She cried after cramming all night and still struggling.', ex4_ko = '밤새 벼락치기를 했는데도 어려움을 겪자 그녀는 울었어요.', ex5 = 'Cramming the night before rarely beats steady studying.', ex5_ko = '전날 밤 벼락치기가 꾸준한 공부를 이기는 경우는 드물어요.' WHERE id = 'idm_education_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After thinking for hours, she finally put pen to paper.'), ex3_ko = COALESCE(ex3_ko, '몇 시간 생각한 후 그녀는 마침내 글을 쓰기 시작했어요.'), ex4 = 'Put pen to paper today, even if just for ten minutes.', ex4_ko = '단 10분이라도 오늘 글을 쓰기 시작하세요.', ex5 = 'Writers say the hardest part is putting pen to paper.', ex5_ko = '작가들은 가장 어려운 부분이 글쓰기를 시작하는 것이라고 해요.' WHERE id = 'idm_education_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She didn''t mean to be the teacher''s pet, but she just loved learning.'), ex3_ko = COALESCE(ex3_ko, '그녀는 선생님의 총아가 되려던 게 아니라 그냥 배우는 걸 좋아했어요.'), ex4 = 'He was the teacher''s pet in primary school, much to his sister''s annoyance.', ex4_ko = '그는 초등학교 때 선생님의 총아였고, 그의 누나는 그게 짜증났어요.', ex5 = 'No one likes being labeled the teacher''s pet at school.', ex5_ko = '학교에서 선생님의 총아라는 라벨이 붙는 걸 좋아하는 사람은 없어요.' WHERE id = 'idm_education_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She learned every safety procedure by heart.'), ex3_ko = COALESCE(ex3_ko, '그녀는 모든 안전 절차를 외웠어요.'), ex4 = 'He learned the lyrics by heart in one afternoon.', ex4_ko = '그는 하루 오후에 가사를 다 외웠어요.', ex5 = 'Learning vocabulary by heart only goes so far without context.', ex5_ko = '맥락 없이 단어를 외우는 것에는 한계가 있어요.' WHERE id = 'idm_education_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She''s a quick learner — give her one demo and she''s set.'), ex3_ko = COALESCE(ex3_ko, '그녀는 빠르게 배우는 사람이에요 — 한 번 보여주면 다 익혀요.'), ex4 = 'My nephew is a quick learner when it comes to languages.', ex4_ko = '저희 조카는 언어에 관해서는 빠르게 배워요.', ex5 = 'Being a quick learner matters more than starting expertise.', ex5_ko = '빠르게 배우는 능력이 초기 전문성보다 더 중요해요.' WHERE id = 'idm_education_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He dropped out for a year and came back wiser.'), ex3_ko = COALESCE(ex3_ko, '그는 1년 동안 학교를 그만뒀다가 더 현명해져서 돌아왔어요.'), ex4 = 'She dropped out of the program but found her path elsewhere.', ex4_ko = '그녀는 프로그램을 중퇴했지만 다른 곳에서 자신의 길을 찾았어요.', ex5 = 'Not every dropout regrets dropping out.', ex5_ko = '모든 중퇴자가 중퇴를 후회하는 건 아니에요.' WHERE id = 'idm_education_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Her writing was ahead of the class even in primary school.'), ex3_ko = COALESCE(ex3_ko, '그녀의 글쓰기는 초등학교 때도 반에서 앞서 있었어요.'), ex4 = 'He''s ahead of the class in coding thanks to his self-study.', ex4_ko = '그는 독학 덕분에 코딩에서 반에서 앞서요.', ex5 = 'Being ahead of the class can also mean feeling lonely.', ex5_ko = '반에서 앞서 있다는 것은 외로움을 느낄 수도 있어요.' WHERE id = 'idm_education_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She''s an open book — you''ll know exactly how she feels.'), ex3_ko = COALESCE(ex3_ko, '그녀는 숨김이 없어요 — 그녀의 기분을 정확히 알 수 있을 거예요.'), ex4 = 'Statistics is an open book for him.', ex4_ko = '그에게 통계는 이해하기 쉬워요.', ex5 = 'Some people are an open book; others take time.', ex5_ko = '어떤 사람들은 숨김이 없고, 어떤 사람들은 시간이 걸려요.' WHERE id = 'idm_education_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Switching from biology to physics had a steep learning curve.'), ex3_ko = COALESCE(ex3_ko, '생물학에서 물리학으로 전공을 바꾸는 데 배우기가 매우 어려웠어요.'), ex4 = 'There''s a steep learning curve with any new software.', ex4_ko = '어떤 새 소프트웨어든 배우기가 어려운 편이에요.', ex5 = 'Sign language has a steep learning curve, but it''s rewarding.', ex5_ko = '수화는 배우기가 어렵지만 보람이 있어요.' WHERE id = 'idm_education_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A long walk is food for the mind and the body.'), ex3_ko = COALESCE(ex3_ko, '긴 산책은 정신과 몸의 양식이에요.'), ex4 = 'Listening to thoughtful podcasts is food for the mind.', ex4_ko = '사려 깊은 팟캐스트를 듣는 것은 정신의 양식이에요.', ex5 = 'Their conversations are always food for the mind.', ex5_ko = '그들의 대화는 항상 정신의 양식이에요.' WHERE id = 'idm_education_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Modern technology stands on the shoulders of giants from history.'), ex3_ko = COALESCE(ex3_ko, '현대 기술은 역사 속 선인들의 어깨 위에 서 있어요.'), ex4 = 'Researchers always stand on the shoulders of giants.', ex4_ko = '연구자들은 항상 선인들의 어깨 위에 서요.', ex5 = 'In her speech, she said she stood on the shoulders of giants.', ex5_ko = '연설에서 그녀는 자신이 선인들의 어깨 위에 서 있다고 말했어요.' WHERE id = 'idm_education_15';

-- ══════════════════════════════════════
-- MEDIA
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'The dance video went viral on every major platform.'), ex3_ko = COALESCE(ex3_ko, '그 댄스 영상이 모든 주요 플랫폼에서 입소문이 났어요.'), ex4 = 'Once a meme goes viral, it''s hard to stop.', ex4_ko = '밈이 한번 입소문이 나면 멈추기 어려워요.', ex5 = 'Her tweet went viral after a celebrity quoted it.', ex5_ko = '유명인이 인용한 후 그녀의 트윗이 입소문이 났어요.' WHERE id = 'idm_media_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After her win, she was constantly in the spotlight.'), ex3_ko = COALESCE(ex3_ko, '그녀는 우승 후 끊임없이 주목을 받았어요.'), ex4 = 'The mayor has been in the spotlight since the controversy began.', ex4_ko = '시장은 논란이 시작된 이후 주목을 받고 있어요.', ex5 = 'Being in the spotlight isn''t always glamorous.', ex5_ko = '주목을 받는 것이 항상 화려한 건 아니에요.' WHERE id = 'idm_media_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Royals are constantly in the public eye.'), ex3_ko = COALESCE(ex3_ko, '왕족들은 끊임없이 대중의 주목을 받아요.'), ex4 = 'Being in the public eye means giving up some privacy.', ex4_ko = '대중의 주목을 받는다는 건 어느 정도 사생활을 포기하는 것이에요.', ex5 = 'She''s been in the public eye since her debut at 16.', ex5_ko = '그녀는 16세에 데뷔한 이후 대중의 주목을 받고 있어요.' WHERE id = 'idm_media_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The Olympic record made headlines around the world.'), ex3_ko = COALESCE(ex3_ko, '올림픽 기록이 전 세계 헤드라인을 장식했어요.'), ex4 = 'The trial is making headlines every day this week.', ex4_ko = '재판이 이번 주 매일 헤드라인을 장식하고 있어요.', ex5 = 'The small charity made headlines for its creative campaign.', ex5_ko = '그 소규모 자선단체는 창의적인 캠페인으로 헤드라인을 장식했어요.' WHERE id = 'idm_media_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Speaking off the record, the source revealed crucial details.'), ex3_ko = COALESCE(ex3_ko, '비공개를 전제로, 소식통은 중요한 세부사항을 밝혔어요.'), ex4 = 'He shared the news off the record over coffee.', ex4_ko = '그는 커피를 마시며 비공개로 소식을 공유했어요.', ex5 = 'Journalists must protect off the record information.', ex5_ko = '기자들은 비공개 정보를 보호해야 해요.' WHERE id = 'idm_media_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The morning show hits the airwaves at six sharp.'), ex3_ko = COALESCE(ex3_ko, '아침 프로그램이 정확히 6시에 방송을 타요.'), ex4 = 'The new podcast hit the airwaves last week.', ex4_ko = '새 팟캐스트가 지난주 방송을 탔어요.', ex5 = 'Her ad hit the airwaves during the championship game.', ex5_ko = '그녀의 광고가 챔피언십 경기 중 방송을 탔어요.' WHERE id = 'idm_media_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'You can often tell what the writer means by reading between the lines.'), ex3_ko = COALESCE(ex3_ko, '행간을 읽으면 작가가 무엇을 의미하는지 종종 알 수 있어요.'), ex4 = 'Reading between the lines, the announcement felt like an apology.', ex4_ko = '행간을 읽어보면 그 발표는 사과처럼 느껴졌어요.', ex5 = 'Politicians'' speeches often need reading between the lines.', ex5_ko = '정치인들의 연설은 종종 행간을 읽어야 해요.' WHERE id = 'idm_media_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The supporting actor stole the show with a single scene.'), ex3_ko = COALESCE(ex3_ko, '조연 배우가 단 한 장면으로 단연 돋보였어요.'), ex4 = 'Their puppy stole the show at the family photo session.', ex4_ko = '가족 사진 촬영에서 그들의 강아지가 단연 돋보였어요.', ex5 = 'Her closing song stole the show at the festival.', ex5_ko = '그녀의 마지막 노래가 축제에서 단연 돋보였어요.' WHERE id = 'idm_media_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Many viral influencers experience just fifteen-minute fame.'), ex3_ko = COALESCE(ex3_ko, '많은 바이럴 인플루언서들은 반짝 유명세만 경험해요.'), ex4 = 'A meme today, forgotten tomorrow — it''s fifteen-minute fame.', ex4_ko = '오늘의 밈이 내일이면 잊혀져요 — 반짝 유명세죠.', ex5 = 'She used her fifteen-minute fame to launch a charity.', ex5_ko = '그녀는 반짝 유명세를 활용해 자선단체를 시작했어요.' WHERE id = 'idm_media_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The leak took the media by storm overnight.'), ex3_ko = COALESCE(ex3_ko, '유출이 하룻밤 만에 언론의 큰 주목을 받았어요.'), ex4 = 'Their first album took the music media by storm.', ex4_ko = '그들의 첫 앨범이 음악 언론의 큰 주목을 받았어요.', ex5 = 'The discovery took the science media by storm.', ex5_ko = '그 발견이 과학 언론의 큰 주목을 받았어요.' WHERE id = 'idm_media_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''m on air in two minutes — quiet please!'), ex3_ko = COALESCE(ex3_ko, '2분 후에 방송 중이에요 — 조용히 해주세요!'), ex4 = 'She''s been on air every weekday morning for ten years.', ex4_ko = '그녀는 10년간 매 평일 아침 방송 중이에요.', ex5 = 'They were on air when the breaking news came in.', ex5_ko = '속보가 들어왔을 때 그들은 방송 중이었어요.' WHERE id = 'idm_media_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The communications team spun the story to limit damage.'), ex3_ko = COALESCE(ex3_ko, '홍보팀이 피해를 줄이기 위해 사실을 왜곡해서 전달했어요.'), ex4 = 'Critics accused them of spinning a story rather than reporting facts.', ex4_ko = '비평가들은 그들이 사실을 보도하기보다 왜곡한다고 비난했어요.', ex5 = 'Be careful — some outlets spin a story to fit their angle.', ex5_ko = '조심하세요 — 일부 매체는 자기 시각에 맞춰 사실을 왜곡해요.' WHERE id = 'idm_media_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The novel flew under the radar but became a cult favorite.'), ex3_ko = COALESCE(ex3_ko, '그 소설은 주목받지 못했지만 컬트 작품이 됐어요.'), ex4 = 'He prefers to work under the radar without media attention.', ex4_ko = '그는 언론의 주목 없이 조용히 일하는 걸 선호해요.', ex5 = 'The investigation operated under the radar for months.', ex5_ko = '그 수사는 몇 달간 주목받지 않고 진행됐어요.' WHERE id = 'idm_media_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The verdict caused a media frenzy outside the courthouse.'), ex3_ko = COALESCE(ex3_ko, '판결은 법원 밖에서 언론의 폭발적 관심을 일으켰어요.'), ex4 = 'The royal wedding turned into a global media frenzy.', ex4_ko = '왕실 결혼식이 세계적인 언론의 폭발적 관심으로 이어졌어요.', ex5 = 'A small misstatement led to a media frenzy lasting weeks.', ex5_ko = '작은 실언이 몇 주간 이어진 언론의 폭발적 관심으로 이어졌어요.' WHERE id = 'idm_media_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She wrote a statement to set the record straight.'), ex3_ko = COALESCE(ex3_ko, '그녀는 사실을 바로잡기 위해 성명을 작성했어요.'), ex4 = 'He went on TV to set the record straight about the rumors.', ex4_ko = '그는 소문에 대해 사실을 바로잡기 위해 TV에 나갔어요.', ex5 = 'Setting the record straight takes courage when emotions run high.', ex5_ko = '감정이 격해질 때 사실을 바로잡으려면 용기가 필요해요.' WHERE id = 'idm_media_15';

-- ══════════════════════════════════════
-- ENVIRONMENT
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'Many small offices are going green to cut costs and emissions.'), ex3_ko = COALESCE(ex3_ko, '많은 작은 사무실들이 비용과 배출량을 줄이기 위해 친환경적으로 변하고 있어요.'), ex4 = 'Going green takes more than just changing light bulbs.', ex4_ko = '친환경적으로 변하는 데는 전구를 바꾸는 것 이상이 필요해요.', ex5 = 'They went green and noticed lower utility bills within months.', ex5_ko = '그들은 친환경적으로 변하고 몇 달 만에 공과금이 줄어든 걸 알게 됐어요.' WHERE id = 'idm_environment_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'One person''s effort can feel like a drop in the ocean.'), ex3_ko = COALESCE(ex3_ko, '한 사람의 노력이 극히 적은 양처럼 느껴질 수 있어요.'), ex4 = 'My recycling is a drop in the ocean, but I still do it.', ex4_ko = '제 재활용은 극히 적은 양이지만 여전히 해요.', ex5 = 'Together, drops in the ocean become real change.', ex5_ko = '함께하면 극히 적은 양들이 진정한 변화가 돼요.' WHERE id = 'idm_environment_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Each long-haul flight leaves a heavy footprint.'), ex3_ko = COALESCE(ex3_ko, '각 장거리 비행은 큰 흔적을 남겨요.'), ex4 = 'We''re trying to leave a smaller footprint by eating less meat.', ex4_ko = '우리는 고기를 덜 먹어서 더 작은 흔적을 남기려 노력해요.', ex5 = 'Even your morning coffee leaves a footprint on the planet.', ex5_ko = '아침 커피 한 잔도 지구에 흔적을 남겨요.' WHERE id = 'idm_environment_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Companies dumping waste illegally are on thin ice.'), ex3_ko = COALESCE(ex3_ko, '불법으로 폐기물을 투기하는 회사들은 위험한 상황에 있어요.'), ex4 = 'He was on thin ice with his manager over missed deadlines.', ex4_ko = '그는 놓친 마감으로 인해 관리자와 위험한 상황에 있었어요.', ex5 = 'You''re on thin ice if you ignore the new compliance rules.', ex5_ko = '새 컴플라이언스 규칙을 무시하면 위험한 상황에 처할 거예요.' WHERE id = 'idm_environment_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After the report came out, they turned over a new leaf.'), ex3_ko = COALESCE(ex3_ko, '보고서가 나온 후 그들은 새 출발을 했어요.'), ex4 = 'She turned over a new leaf and started biking to work.', ex4_ko = '그녀는 새 출발을 하고 자전거로 출근하기 시작했어요.', ex5 = 'The new year is a popular time to turn over a new leaf.', ex5_ko = '새해는 새 출발을 하기에 인기 있는 시기예요.' WHERE id = 'idm_environment_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Industries that pollute will eventually face the music.'), ex3_ko = COALESCE(ex3_ko, '오염시키는 산업들은 결국 결과를 감당하게 될 거예요.'), ex4 = 'He had to face the music after ignoring safety warnings.', ex4_ko = '그는 안전 경고를 무시한 후 결과를 감당해야 했어요.', ex5 = 'It''s time for governments to face the music on climate goals.', ex5_ko = '정부들이 기후 목표에 대한 결과를 감당할 시간이에요.' WHERE id = 'idm_environment_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Several wildlife protection laws bit the dust this year.'), ex3_ko = COALESCE(ex3_ko, '올해 여러 야생동물 보호법이 실패했어요.'), ex4 = 'Without funding, the project bit the dust.', ex4_ko = '자금 없이 그 프로젝트는 실패했어요.', ex5 = 'Many small environmental NGOs bit the dust last year.', ex5_ko = '많은 작은 환경 NGO들이 작년에 사라졌어요.' WHERE id = 'idm_environment_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A weekend in the mountains was a breath of fresh air.'), ex3_ko = COALESCE(ex3_ko, '산에서의 주말은 신선한 공기였어요.'), ex4 = 'Her honest approach was a breath of fresh air in the meeting.', ex4_ko = '그녀의 솔직한 접근 방식이 회의에서 신선한 변화였어요.', ex5 = 'The new policy felt like a breath of fresh air for environmentalists.', ex5_ko = '새 정책은 환경 운동가들에게 신선한 공기처럼 느껴졌어요.' WHERE id = 'idm_environment_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Nip the issue in the bud before it becomes a crisis.'), ex3_ko = COALESCE(ex3_ko, '위기가 되기 전에 문제를 초기에 차단하세요.'), ex4 = 'She nipped the rumor in the bud before it spread.', ex4_ko = '그녀는 소문이 퍼지기 전에 초기에 차단했어요.', ex5 = 'Early reporting helps nip pollution in the bud.', ex5_ko = '조기 신고는 오염을 초기에 차단하는 데 도움이 돼요.' WHERE id = 'idm_environment_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'When the third spill happened, it was the last straw.'), ex3_ko = COALESCE(ex3_ko, '세 번째 유출이 발생했을 때 그것이 인내의 한계였어요.'), ex4 = 'The fire alarm at 3 a.m. was the last straw for them.', ex4_ko = '새벽 3시 화재 경보가 그들에게 인내의 한계였어요.', ex5 = 'For her, the smog warnings were the last straw to move away.', ex5_ko = '그녀에게는 스모그 경고가 이사하게 된 마지막 계기였어요.' WHERE id = 'idm_environment_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Someone should play devil''s advocate to test the plan.'), ex3_ko = COALESCE(ex3_ko, '계획을 시험하기 위해 누군가 반론을 제기해야 해요.'), ex4 = 'She often plays devil''s advocate in policy discussions.', ex4_ko = '그녀는 정책 토론에서 종종 반론을 제기해요.', ex5 = 'Playing devil''s advocate isn''t the same as being negative.', ex5_ko = '반론을 제기하는 것과 부정적인 것은 다르죠.' WHERE id = 'idm_environment_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After the lawsuit, the company is in deep water.'), ex3_ko = COALESCE(ex3_ko, '소송 후 회사는 심각한 상황에 처해 있어요.'), ex4 = 'Coastal communities are in deep water due to rising seas.', ex4_ko = '해안 지역사회들은 해수면 상승으로 심각한 상황에 처해 있어요.', ex5 = 'He found himself in deep water after the audit.', ex5_ko = '그는 감사 후 심각한 상황에 처했어요.' WHERE id = 'idm_environment_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The visible damage is just the tip of the iceberg.'), ex3_ko = COALESCE(ex3_ko, '눈에 보이는 피해는 빙산의 일각일 뿐이에요.'), ex4 = 'Reported emissions are the tip of the iceberg of actual ones.', ex4_ko = '보고된 배출량은 실제 배출량의 빙산의 일각이에요.', ex5 = 'The complaints we received are just the tip of the iceberg.', ex5_ko = '우리가 받은 항의는 빙산의 일각일 뿐이에요.' WHERE id = 'idm_environment_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I had to walk on eggshells around the controversial topic.'), ex3_ko = COALESCE(ex3_ko, '저는 논쟁적인 주제 주변에서 매우 조심스럽게 행동해야 했어요.'), ex4 = 'The journalist walked on eggshells during the sensitive interview.', ex4_ko = '기자는 민감한 인터뷰 동안 매우 조심스럽게 행동했어요.', ex5 = 'Don''t walk on eggshells — say what you really think.', ex5_ko = '조심스럽게 굴지 마시고 — 진짜 생각을 말씀해 주세요.' WHERE id = 'idm_environment_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Reforestation was put on the back burner during the recession.'), ex3_ko = COALESCE(ex3_ko, '경기 침체 동안 산림 재조림은 우선순위가 낮아졌어요.'), ex4 = 'She put her hobby on the back burner while raising kids.', ex4_ko = '그녀는 아이들을 키우면서 취미를 뒷전으로 미뤘어요.', ex5 = 'They put the renovation on the back burner due to budget cuts.', ex5_ko = '예산 삭감 때문에 그들은 리노베이션의 우선순위를 낮췄어요.' WHERE id = 'idm_environment_15';

-- ══════════════════════════════════════
-- ECONOMY
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'When prices rose, families had to tighten their belts.'), ex3_ko = COALESCE(ex3_ko, '물가가 오르자 가정들은 허리띠를 졸라매야 했어요.'), ex4 = 'They tightened their belts to save for a deposit on a flat.', ex4_ko = '그들은 아파트 계약금을 모으기 위해 허리띠를 졸라맸어요.', ex5 = 'During the strike, the workers tightened their belts together.', ex5_ko = '파업 동안 노동자들은 함께 허리띠를 졸라맸어요.' WHERE id = 'idm_economy_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Many young families struggle to make ends meet in big cities.'), ex3_ko = COALESCE(ex3_ko, '많은 젊은 가정들이 대도시에서 근근이 살아가기 위해 어려움을 겪어요.'), ex4 = 'She picked up extra shifts just to make ends meet.', ex4_ko = '그녀는 근근이 살아가기 위해 추가 시프트를 잡았어요.', ex5 = 'It''s harder to make ends meet on a single income.', ex5_ko = '단일 소득으로 근근이 살아가기는 더 어려워요.' WHERE id = 'idm_economy_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They started the magazine on a shoestring.'), ex3_ko = COALESCE(ex3_ko, '그들은 아주 적은 돈으로 잡지를 시작했어요.'), ex4 = 'She traveled around Europe on a shoestring.', ex4_ko = '그녀는 아주 적은 돈으로 유럽을 여행했어요.', ex5 = 'Many great films were made on a shoestring.', ex5_ko = '많은 훌륭한 영화들이 아주 적은 돈으로 만들어졌어요.' WHERE id = 'idm_economy_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My company will foot the bill for the conference.'), ex3_ko = COALESCE(ex3_ko, '저희 회사가 컨퍼런스 비용을 부담할 거예요.'), ex4 = 'Taxpayers ended up footing the bill for the cleanup.', ex4_ko = '결국 납세자들이 청소 비용을 부담하게 됐어요.', ex5 = 'My uncle insisted on footing the bill for dinner.', ex5_ko = '저희 삼촌이 저녁 식사 비용을 부담하겠다고 고집하셨어요.' WHERE id = 'idm_economy_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The bottom line is that customers want better value.'), ex3_ko = COALESCE(ex3_ko, '핵심은 고객들이 더 나은 가치를 원한다는 거예요.'), ex4 = 'What''s the bottom line — should we proceed or not?', ex4_ko = '핵심이 뭔가요 — 진행해야 하나요, 말아야 하나요?'  , ex5 = 'Improving the bottom line is the team''s main goal this year.', ex5_ko = '최종 결과를 개선하는 것이 올해 팀의 주된 목표예요.' WHERE id = 'idm_economy_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Subscriptions have become the cash cow for many publishers.'), ex3_ko = COALESCE(ex3_ko, '구독은 많은 출판사들에게 핵심 수익원이 됐어요.'), ex4 = 'Their first hit song became a long-term cash cow.', ex4_ko = '그들의 첫 히트곡이 장기적인 수익원이 됐어요.', ex5 = 'The patent is a cash cow that funds new research.', ex5_ko = '그 특허는 새로운 연구에 자금을 대는 수익원이에요.' WHERE id = 'idm_economy_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After the failed launch, the company is in the red.'), ex3_ko = COALESCE(ex3_ko, '실패한 출시 후 회사는 적자 상태예요.'), ex4 = 'Many small theaters are in the red after the pandemic.', ex4_ko = '많은 작은 극장들이 팬데믹 이후 적자 상태예요.', ex5 = 'They worked hard to get out of the red and into profit.', ex5_ko = '그들은 적자에서 벗어나 흑자로 가기 위해 열심히 일했어요.' WHERE id = 'idm_economy_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A handful of companies have effectively cornered the market.'), ex3_ko = COALESCE(ex3_ko, '소수의 회사들이 사실상 시장을 독점했어요.'), ex4 = 'They cornered the market on organic baby food in the region.', ex4_ko = '그들은 그 지역에서 유기농 이유식 시장을 독점했어요.', ex5 = 'Cornering the market often draws regulatory attention.', ex5_ko = '시장을 독점하는 것은 종종 규제 당국의 주목을 끌어요.' WHERE id = 'idm_economy_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The tech industry has known many boom and bust cycles.'), ex3_ko = COALESCE(ex3_ko, '기술 산업은 많은 호황과 불황 사이클을 겪어왔어요.'), ex4 = 'Real estate often follows a boom and bust pattern.', ex4_ko = '부동산은 종종 호황과 불황 패턴을 따라요.', ex5 = 'Saving during the boom helps you survive the bust.', ex5_ko = '호황 동안 저축하면 불황을 견딜 수 있어요.' WHERE id = 'idm_economy_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Avoiding insurance is penny-wise and pound-foolish.'), ex3_ko = COALESCE(ex3_ko, '보험을 피하는 것은 작은 것을 아끼다가 큰 손해를 보는 일이에요.'), ex4 = 'Hiring cheap labor without training is penny-wise and pound-foolish.', ex4_ko = '훈련 없이 싼 인력을 고용하는 건 작은 것을 아끼다가 큰 손해를 보는 일이에요.', ex5 = 'Don''t be penny-wise and pound-foolish with your health.', ex5_ko = '건강에 있어서 작은 것을 아끼다가 큰 손해를 보지 마세요.' WHERE id = 'idm_economy_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Diversify so you don''t put all your eggs in one basket.'), ex3_ko = COALESCE(ex3_ko, '한 곳에 모든 것을 걸지 않도록 분산하세요.'), ex4 = 'She put all her eggs in one basket and the company folded.', ex4_ko = '그녀는 한 곳에 모든 것을 걸었는데 회사가 망했어요.', ex5 = 'Don''t put all your eggs in one basket — apply to several jobs.', ex5_ko = '한 곳에만 걸지 마세요 — 여러 직장에 지원하세요.' WHERE id = 'idm_economy_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Cash-strapped students rely heavily on scholarships and loans.'), ex3_ko = COALESCE(ex3_ko, '돈이 부족한 학생들은 장학금과 대출에 크게 의존해요.'), ex4 = 'The cash-strapped charity had to cut programs.', ex4_ko = '돈이 부족한 자선단체는 프로그램을 줄여야 했어요.', ex5 = 'Even cash-strapped families found ways to celebrate the holidays.', ex5_ko = '돈이 부족한 가정들도 휴일을 축하할 방법을 찾았어요.' WHERE id = 'idm_economy_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'In real estate negotiations, money talks louder than emotion.'), ex3_ko = COALESCE(ex3_ko, '부동산 협상에서는 감정보다 돈이 더 큰 힘을 발휘해요.'), ex4 = 'Money talks, but reputation matters in the long run.', ex4_ko = '돈이 권력이지만 장기적으로는 명성이 중요해요.', ex5 = 'They learned the hard way that money talks in this industry.', ex5_ko = '그들은 이 업계에서 돈이 권력이라는 걸 어렵게 배웠어요.' WHERE id = 'idm_economy_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Their startup nearly went bust before finding new investors.'), ex3_ko = COALESCE(ex3_ko, '그들의 스타트업은 새 투자자를 찾기 전에 거의 파산할 뻔했어요.'), ex4 = 'Without quick action, the chain would go bust.', ex4_ko = '빠른 조치 없이는 그 체인점이 파산할 거예요.', ex5 = 'Going bust isn''t always the end — many founders bounce back.', ex5_ko = '파산이 항상 끝은 아니에요 — 많은 창업자들이 다시 일어나요.' WHERE id = 'idm_economy_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Vintage records are at a premium among collectors.'), ex3_ko = COALESCE(ex3_ko, '빈티지 레코드는 수집가들 사이에서 매우 귀해요.'), ex4 = 'Quiet single offices are at a premium in shared workspaces.', ex4_ko = '공유 작업 공간에서 조용한 1인 사무실은 매우 귀해요.', ex5 = 'Skilled translators are at a premium in this field.', ex5_ko = '이 분야에서 숙련된 번역가들은 매우 귀해요.' WHERE id = 'idm_economy_15';

-- ══════════════════════════════════════
-- CULTURE
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'When in Rome, do as the Romans do — try the local greeting.'), ex3_ko = COALESCE(ex3_ko, '로마에서는 로마법을 따르세요 — 현지 인사를 시도해 보세요.'), ex4 = 'She always travels with the mindset of "when in Rome."', ex4_ko = '그녀는 항상 "로마에서는 로마법을"의 마음가짐으로 여행해요.', ex5 = 'Eating with chopsticks is part of when in Rome, do as the Romans do.', ex5_ko = '젓가락으로 먹는 것은 로마에서는 로마법을 따르는 것의 일부예요.' WHERE id = 'idm_culture_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Korean honorifics often get lost in translation.'), ex3_ko = COALESCE(ex3_ko, '한국어 존댓말은 번역에서 종종 뉘앙스가 사라져요.'), ex4 = 'Her joke was funny in Korean but lost in translation.', ex4_ko = '그녀의 농담은 한국어로는 재미있었지만 번역에서 뉘앙스가 사라졌어요.', ex5 = 'Some idioms simply can''t cross over without being lost in translation.', ex5_ko = '어떤 관용 표현은 번역에서 뉘앙스가 사라지지 않고는 옮겨갈 수 없어요.' WHERE id = 'idm_culture_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Toronto is often described as a melting pot of cultures.'), ex3_ko = COALESCE(ex3_ko, '토론토는 종종 다문화 용광로로 묘사돼요.'), ex4 = 'The food scene is a melting pot of global influences.', ex4_ko = '음식 문화는 세계적 영향의 용광로예요.', ex5 = 'Our family is a small melting pot of three different cultures.', ex5_ko = '저희 가족은 세 가지 다른 문화의 작은 용광로예요.' WHERE id = 'idm_culture_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My grandparents are wonderful but set in their ways.'), ex3_ko = COALESCE(ex3_ko, '저희 조부모님은 멋지시지만 관습에 굳어있어요.'), ex4 = 'It''s easy to become set in our ways as we get older.', ex4_ko = '나이가 들면서 관습에 굳어지기 쉬워요.', ex5 = 'She''s not set in her ways and welcomes new ideas.', ex5_ko = '그녀는 관습에 굳어있지 않고 새로운 아이디어를 환영해요.' WHERE id = 'idm_culture_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Income inequality was the elephant in the room at dinner.'), ex3_ko = COALESCE(ex3_ko, '소득 불평등은 저녁 식사에서 아무도 말하지 않는 분명한 문제였어요.'), ex4 = 'Everyone avoided the elephant in the room about her resignation.', ex4_ko = '모두가 그녀의 사임에 대한 분명한 문제를 피했어요.', ex5 = 'Sometimes you just have to name the elephant in the room.', ex5_ko = '때로는 분명한 문제를 직접 짚어줘야 해요.' WHERE id = 'idm_culture_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'His comment only added fuel to the fire of the debate.'), ex3_ko = COALESCE(ex3_ko, '그의 발언은 토론에 불에 기름을 부었을 뿐이에요.'), ex4 = 'Don''t add fuel to the fire when emotions are high.', ex4_ko = '감정이 격해질 때 불에 기름을 붓지 마세요.', ex5 = 'The tweet added fuel to the fire of an already heated controversy.', ex5_ko = '그 트윗은 이미 뜨거운 논란에 불을 더 붙였어요.' WHERE id = 'idm_culture_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'That comment crossed a line for many in the audience.'), ex3_ko = COALESCE(ex3_ko, '그 발언은 많은 청중에게 선을 넘은 것이었어요.'), ex4 = 'Mocking someone''s religion crosses a line.', ex4_ko = '누군가의 종교를 조롱하는 것은 선을 넘는 거예요.', ex5 = 'He apologized after realizing he had crossed a line.', ex5_ko = '그는 선을 넘었다는 걸 깨닫고 사과했어요.' WHERE id = 'idm_culture_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Rice is the bread and butter of many Asian cuisines.'), ex3_ko = COALESCE(ex3_ko, '쌀은 많은 아시아 요리의 기본이에요.'), ex4 = 'Local craft fairs are the bread and butter of this town.', ex4_ko = '지역 공예 박람회는 이 마을의 생계 수단이에요.', ex5 = 'Tutoring is her bread and butter while she finishes her PhD.', ex5_ko = '튜터링은 그녀가 박사 과정을 마치는 동안의 생계 수단이에요.' WHERE id = 'idm_culture_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Mind your Ps and Qs when meeting the in-laws.'), ex3_ko = COALESCE(ex3_ko, '시댁/처가 식구들을 만날 때 예절을 지키세요.'), ex4 = 'She always minded her Ps and Qs in front of clients.', ex4_ko = '그녀는 고객들 앞에서 항상 예절을 지켰어요.', ex5 = 'Children learn to mind their Ps and Qs at the dinner table.', ex5_ko = '아이들은 식탁에서 예절을 지키는 법을 배워요.' WHERE id = 'idm_culture_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Her silence in that moment spoke volumes.'), ex3_ko = COALESCE(ex3_ko, '그 순간 그녀의 침묵은 많은 것을 말해줬어요.'), ex4 = 'A single photo can speak volumes about a culture.', ex4_ko = '한 장의 사진이 한 문화에 대해 많은 것을 말해줄 수 있어요.', ex5 = 'Their hospitality speaks volumes about their values.', ex5_ko = '그들의 환대는 그들의 가치관에 대해 많은 것을 말해줘요.' WHERE id = 'idm_culture_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Her novel went against the grain of literary expectations.'), ex3_ko = COALESCE(ex3_ko, '그녀의 소설은 문학적 기대에 반했어요.'), ex4 = 'Choosing not to marry went against the grain in her family.', ex4_ko = '결혼하지 않기로 한 것은 그녀의 가족에서 관습에 반했어요.', ex5 = 'Real change often requires going against the grain.', ex5_ko = '진정한 변화는 종종 관습에 반하는 것을 요구해요.' WHERE id = 'idm_culture_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Their music bridges the gap between East and West.'), ex3_ko = COALESCE(ex3_ko, '그들의 음악은 동양과 서양의 간격을 좁혀요.'), ex4 = 'Mentorship can bridge the gap between generations.', ex4_ko = '멘토십은 세대 간 간격을 좁힐 수 있어요.', ex5 = 'Language classes help bridge the gap with new neighbors.', ex5_ko = '언어 수업은 새 이웃들과의 간격을 좁히는 데 도움이 돼요.' WHERE id = 'idm_culture_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I felt like a fish out of water at the gala.'), ex3_ko = COALESCE(ex3_ko, '갈라 행사에서 저는 물 밖에 나온 물고기 같았어요.'), ex4 = 'She''s a fish out of water at corporate networking events.', ex4_ko = '그녀는 기업 네트워킹 행사에서 물 밖에 나온 물고기 같아요.', ex5 = 'New international students often feel like a fish out of water.', ex5_ko = '새로 온 외국인 학생들은 종종 물 밖에 나온 물고기처럼 느껴요.' WHERE id = 'idm_culture_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Innovators often colour outside the lines.'), ex3_ko = COALESCE(ex3_ko, '혁신가들은 종종 틀을 벗어나 창의적으로 행동해요.'), ex4 = 'Her chef colours outside the lines with unusual ingredient pairings.', ex4_ko = '그녀의 셰프는 독특한 재료 조합으로 틀을 벗어나 창의적으로 행동해요.', ex5 = 'Some teachers encourage students to colour outside the lines.', ex5_ko = '어떤 선생님들은 학생들이 틀을 벗어나도록 격려해요.' WHERE id = 'idm_culture_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My sister and I are cut from the same cloth.'), ex3_ko = COALESCE(ex3_ko, '저와 누나는 같은 유형이에요.'), ex4 = 'These two engineers are clearly cut from the same cloth.', ex4_ko = '이 두 엔지니어는 분명히 같은 유형이에요.', ex5 = 'Their loyalty shows they''re cut from the same cloth.', ex5_ko = '그들의 충성심은 그들이 같은 유형임을 보여줘요.' WHERE id = 'idm_culture_15';

-- ══════════════════════════════════════
-- SPORTS
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'I''ve made my proposal — the ball is in your court.'), ex3_ko = COALESCE(ex3_ko, '제 제안은 끝났어요 — 이제 당신이 결정할 차례예요.'), ex4 = 'After the offer, the ball was in his court for a week.', ex4_ko = '제안 후 일주일 동안 그가 결정할 차례였어요.', ex5 = 'The ball is in your court — let me know your decision.', ex5_ko = '이제 당신이 결정할 차례예요 — 결정을 알려주세요.' WHERE id = 'idm_sports_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Affordable housing creates a more level playing field.'), ex3_ko = COALESCE(ex3_ko, '저렴한 주택은 더 공정한 경쟁 환경을 만들어요.'), ex4 = 'Scholarships help create a level playing field in education.', ex4_ko = '장학금은 교육에서 공정한 경쟁 환경을 만드는 데 도움이 돼요.', ex5 = 'A level playing field benefits everyone in the long run.', ex5_ko = '공정한 경쟁 환경은 장기적으로 모두에게 이익이 돼요.' WHERE id = 'idm_sports_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He jumped the gun and bought tickets before the date was confirmed.'), ex3_ko = COALESCE(ex3_ko, '그는 날짜가 확정되기 전에 너무 일찍 표를 샀어요.'), ex4 = 'Don''t jump the gun on celebrating until the results are official.', ex4_ko = '결과가 공식화될 때까지 너무 일찍 축하하지 마세요.', ex5 = 'She jumped the gun and announced the news on social media.', ex5_ko = '그녀는 너무 일찍 행동해서 소셜 미디어에 소식을 발표했어요.' WHERE id = 'idm_sports_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Be a good sport and shake hands at the end.'), ex3_ko = COALESCE(ex3_ko, '패배를 잘 받아들이고 마지막에 악수하세요.'), ex4 = 'Even when she lost, she was a good sport about it.', ex4_ko = '그녀는 졌을 때도 패배를 잘 받아들였어요.', ex5 = 'Children learn to be good sports through team activities.', ex5_ko = '아이들은 팀 활동을 통해 패배를 잘 받아들이는 법을 배워요.' WHERE id = 'idm_sports_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'It feels unfair when employers move the goalposts mid-year.'), ex3_ko = COALESCE(ex3_ko, '고용주가 중간에 기준을 바꾸면 부당하게 느껴져요.'), ex4 = 'They moved the goalposts and added extra requirements.', ex4_ko = '그들은 기준을 바꾸고 추가 요건을 더했어요.', ex5 = 'Moving the goalposts hurts trust in any agreement.', ex5_ko = '기준을 바꾸는 것은 어떤 합의에서든 신뢰를 해쳐요.' WHERE id = 'idm_sports_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The two candidates were neck and neck right up to election night.'), ex3_ko = COALESCE(ex3_ko, '두 후보는 선거 당일까지 막상막하였어요.'), ex4 = 'Sales of both phones are neck and neck this quarter.', ex4_ko = '두 휴대폰 매출은 이번 분기 막상막하예요.', ex5 = 'They were neck and neck until the final kilometer.', ex5_ko = '그들은 마지막 1킬로미터까지 막상막하였어요.' WHERE id = 'idm_sports_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After three rejections, I almost threw in the towel.'), ex3_ko = COALESCE(ex3_ko, '세 번의 거절 후 저는 거의 포기할 뻔했어요.'), ex4 = 'She refused to throw in the towel despite the setbacks.', ex4_ko = '좌절에도 불구하고 그녀는 포기하지 않았어요.', ex5 = 'Knowing when to throw in the towel is also a skill.', ex5_ko = '언제 포기해야 할지 아는 것도 능력이에요.' WHERE id = 'idm_sports_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She went the distance and finished the ultramarathon.'), ex3_ko = COALESCE(ex3_ko, '그녀는 끝까지 버티며 울트라마라톤을 완주했어요.'), ex4 = 'They went the distance in their three-year project.', ex4_ko = '그들은 3년 프로젝트를 끝까지 버텼어요.', ex5 = 'Going the distance often means more than going fast.', ex5_ko = '끝까지 버티는 것이 종종 빠르게 가는 것보다 더 중요해요.' WHERE id = 'idm_sports_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The startup was on the ropes after losing key staff.'), ex3_ko = COALESCE(ex3_ko, '핵심 직원들을 잃은 후 스타트업은 궁지에 몰렸어요.'), ex4 = 'After a few bad reviews, the cafe was on the ropes.', ex4_ko = '몇 번의 나쁜 리뷰 후 카페는 궁지에 몰렸어요.', ex5 = 'Even when on the ropes, she didn''t give up.', ex5_ko = '궁지에 몰렸을 때도 그녀는 포기하지 않았어요.' WHERE id = 'idm_sports_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Keep your eye on the ball — small distractions add up.'), ex3_ko = COALESCE(ex3_ko, '집중하세요 — 작은 방해 요소들이 쌓여요.'), ex4 = 'She kept her eye on the ball during the long project.', ex4_ko = '그녀는 긴 프로젝트 동안 집중을 유지했어요.', ex5 = 'Successful athletes keep their eye on the ball under pressure.', ex5_ko = '성공한 운동선수들은 압박 속에서도 집중해요.' WHERE id = 'idm_sports_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She scored a hat trick of awards this year.'), ex3_ko = COALESCE(ex3_ko, '그녀는 올해 세 번 연속 상을 받았어요.'), ex4 = 'They pulled off a hat trick of sold-out shows.', ex4_ko = '그들은 매진 공연 세 번 연속을 해냈어요.', ex5 = 'A hat trick in any sport is a moment to remember.', ex5_ko = '어떤 스포츠에서든 해트트릭은 기억할 만한 순간이에요.' WHERE id = 'idm_sports_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Their latest album raises the bar for the genre.'), ex3_ko = COALESCE(ex3_ko, '그들의 최신 앨범은 그 장르의 기준을 높였어요.'), ex4 = 'She raised the bar with her customer service approach.', ex4_ko = '그녀는 고객 서비스 접근 방식으로 기준을 높였어요.', ex5 = 'Each new generation raises the bar in different ways.', ex5_ko = '새로운 세대마다 다른 방식으로 기준을 높여요.' WHERE id = 'idm_sports_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She took the lead in advocating for the new policy.'), ex3_ko = COALESCE(ex3_ko, '그녀는 새 정책을 옹호하는 데 앞장섰어요.'), ex4 = 'Our country took the lead in renewable energy investment.', ex4_ko = '우리나라는 재생에너지 투자에서 앞서 나갔어요.', ex5 = 'He took the lead in the second half and never lost it.', ex5_ko = '그는 후반전에 앞서 나가서 그 위치를 잃지 않았어요.' WHERE id = 'idm_sports_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We''re in the home stretch of our renovation.'), ex3_ko = COALESCE(ex3_ko, '저희 리노베이션의 마지막 단계예요.'), ex4 = 'I''m in the home stretch of my dissertation.', ex4_ko = '저는 논문의 마지막 단계에 있어요.', ex5 = 'In the home stretch, every effort counts double.', ex5_ko = '마지막 단계에서는 모든 노력이 두 배로 중요해요.' WHERE id = 'idm_sports_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The team came from behind in the last five minutes.'), ex3_ko = COALESCE(ex3_ko, '그 팀은 마지막 5분에 역전했어요.'), ex4 = 'She came from behind to take first place.', ex4_ko = '그녀는 역전해서 1등을 차지했어요.', ex5 = 'Coming from behind takes both skill and belief.', ex5_ko = '역전하는 데는 기술과 믿음이 모두 필요해요.' WHERE id = 'idm_sports_15';

-- ══════════════════════════════════════
-- DISCUSSION
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'After hours of discussion, we finally saw eye to eye.'), ex3_ko = COALESCE(ex3_ko, '몇 시간의 논의 끝에 우리는 마침내 의견이 일치했어요.'), ex4 = 'My sister and I rarely see eye to eye on politics.'  , ex4_ko = '저와 언니는 정치에서 거의 의견이 일치하지 않아요.', ex5 = 'They don''t always see eye to eye, but they work well together.', ex5_ko = '그들은 항상 의견이 일치하지는 않지만 함께 잘 일해요.' WHERE id = 'idm_discussion_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Sitting on the fence on this issue won''t help anyone.'), ex3_ko = COALESCE(ex3_ko, '이 문제에 중립을 지키는 것은 누구에게도 도움이 안 돼요.'), ex4 = 'She used to sit on the fence to avoid family arguments.', ex4_ko = '그녀는 가족 다툼을 피하려고 중립을 지키곤 했어요.', ex5 = 'After much thought, he stopped sitting on the fence.', ex5_ko = '많은 고민 끝에 그는 중립을 지키는 것을 그만뒀어요.' WHERE id = 'idm_discussion_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Stop beating around the bush — just tell me the price.'), ex3_ko = COALESCE(ex3_ko, '핵심을 피하지 말고 — 그냥 가격을 알려주세요.'), ex4 = 'He kept beating around the bush about the bad news.', ex4_ko = '그는 나쁜 소식에 대해 계속 핵심을 피했어요.', ex5 = 'Beating around the bush wastes everyone''s time.', ex5_ko = '핵심을 피하는 것은 모두의 시간을 낭비해요.' WHERE id = 'idm_discussion_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She brings real-world experience to the table.'), ex3_ko = COALESCE(ex3_ko, '그녀는 실제 경험을 기여해요.'), ex4 = 'What do you bring to the table that others don''t?', ex4_ko = '다른 사람들과 달리 어떤 것을 기여할 수 있어요?', ex5 = 'Every team member brings something different to the table.', ex5_ko = '모든 팀원이 다른 것을 기여해요.' WHERE id = 'idm_discussion_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We were talking at cross purposes about the deadline.'), ex3_ko = COALESCE(ex3_ko, '우리는 마감일에 대해 서로 다른 이야기를 하고 있었어요.'), ex4 = 'A quick clarification stopped us from talking at cross purposes.', ex4_ko = '빠른 명확화가 서로 다른 이야기를 하는 것을 막아줬어요.', ex5 = 'We were talking at cross purposes — she meant the new building.', ex5_ko = '우리는 서로 다른 이야기를 하고 있었어요 — 그녀는 새 건물을 의미했어요.' WHERE id = 'idm_discussion_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She took the floor with confidence and clarity.'), ex3_ko = COALESCE(ex3_ko, '그녀는 자신감과 명확함으로 발언권을 얻었어요.'), ex4 = 'After everyone settled, the moderator gave him the floor.', ex4_ko = '모두가 자리를 잡은 후 사회자가 그에게 발언권을 줬어요.', ex5 = 'Taking the floor at a board meeting requires preparation.', ex5_ko = '이사회 회의에서 발언권을 얻으려면 준비가 필요해요.' WHERE id = 'idm_discussion_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Let me get to the point — we need to change vendors.'), ex3_ko = COALESCE(ex3_ko, '핵심을 말할게요 — 벤더를 바꿔야 해요.'), ex4 = 'Could you get to the point? My next meeting starts soon.', ex4_ko = '핵심을 말씀해 주실 수 있어요? 다음 회의가 곧 시작돼요.', ex5 = 'Getting to the point is a kindness, not rudeness.', ex5_ko = '핵심을 말하는 것은 무례함이 아닌 친절이에요.' WHERE id = 'idm_discussion_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She put her cards on the table about her career goals.'), ex3_ko = COALESCE(ex3_ko, '그녀는 자신의 경력 목표에 대해 솔직하게 의견을 밝혔어요.'), ex4 = 'Putting your cards on the table saves time later.', ex4_ko = '솔직하게 의견을 밝히면 나중에 시간을 절약해요.', ex5 = 'He put his cards on the table and asked for a raise.', ex5_ko = '그는 솔직하게 의견을 밝히고 임금 인상을 요청했어요.' WHERE id = 'idm_discussion_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'After much debate, they agreed to disagree.'), ex3_ko = COALESCE(ex3_ko, '많은 토론 끝에 그들은 이견을 인정했어요.'), ex4 = 'My partner and I have agreed to disagree on the topic.', ex4_ko = '저와 파트너는 그 주제에 대해 이견을 인정했어요.', ex5 = 'Sometimes you have to agree to disagree to preserve the friendship.', ex5_ko = '때로는 우정을 지키기 위해 이견을 인정해야 해요.' WHERE id = 'idm_discussion_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A senior researcher was asked to weigh in on the study.'), ex3_ko = COALESCE(ex3_ko, '선임 연구원이 그 연구에 의견을 보태달라는 요청을 받았어요.'), ex4 = 'Critics weighed in on the controversial decision.', ex4_ko = '비평가들이 논쟁적인 결정에 의견을 보탰어요.', ex5 = 'I''d like to weigh in on the new design proposal.', ex5_ko = '저는 새 디자인 제안에 의견을 보태고 싶어요.' WHERE id = 'idm_discussion_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'When we work together, we''re completely on the same wavelength.'), ex3_ko = COALESCE(ex3_ko, '우리가 함께 일할 때는 완전히 같은 생각이에요.'), ex4 = 'They''re on the same wavelength about parenting.', ex4_ko = '그들은 육아에 대해 같은 생각이에요.', ex5 = 'A good partnership starts with being on the same wavelength.', ex5_ko = '좋은 파트너십은 같은 생각에서 시작돼요.' WHERE id = 'idm_discussion_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She speaks her mind even when it''s unpopular.'), ex3_ko = COALESCE(ex3_ko, '그녀는 인기 없는 의견이라도 솔직하게 말해요.'), ex4 = 'Please speak your mind — your insights matter.', ex4_ko = '솔직하게 말해주세요 — 당신의 통찰이 중요해요.', ex5 = 'He''s known for speaking his mind in board meetings.', ex5_ko = '그는 이사회 회의에서 솔직하게 말하는 것으로 알려져 있어요.' WHERE id = 'idm_discussion_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'It''s time to draw a line in the sand on harassment.'), ex3_ko = COALESCE(ex3_ko, '괴롭힘에 대해 한계를 분명히 할 시간이에요.'), ex4 = 'She drew a line in the sand and refused to compromise.', ex4_ko = '그녀는 한계를 분명히 하고 타협을 거부했어요.', ex5 = 'Drawing a line in the sand can be hard but necessary.', ex5_ko = '한계를 분명히 하는 것은 어렵지만 필요해요.' WHERE id = 'idm_discussion_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'In our family, my grandmother always has the last word.'), ex3_ko = COALESCE(ex3_ko, '저희 가족에서는 할머니가 항상 마지막 발언권을 가지세요.'), ex4 = 'He always tries to have the last word in any debate.', ex4_ko = '그는 어떤 토론에서도 항상 마지막 발언권을 가지려고 해요.', ex5 = 'Having the last word doesn''t mean being right.', ex5_ko = '마지막 발언권을 갖는 것이 옳다는 뜻은 아니에요.' WHERE id = 'idm_discussion_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Some quick fixes turn out to be a devil''s bargain.'), ex3_ko = COALESCE(ex3_ko, '어떤 빠른 해결책은 결국 좋지 않은 타협으로 드러나요.'), ex4 = 'It can feel like a devil''s bargain to accept low pay for experience.', ex4_ko = '경험을 위해 낮은 임금을 받는 것은 좋지 않은 타협처럼 느껴질 수 있어요.', ex5 = 'They struck a devil''s bargain just to keep the project alive.', ex5_ko = '그들은 프로젝트를 살리기 위해 좋지 않은 타협을 했어요.' WHERE id = 'idm_discussion_15';

-- ══════════════════════════════════════
-- PRESENTATION
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'A short personal story can break the ice at the start.'), ex3_ko = COALESCE(ex3_ko, '짧은 개인 이야기가 시작 부분에서 어색한 분위기를 깰 수 있어요.'), ex4 = 'She broke the ice with a surprising statistic.', ex4_ko = '그녀는 놀라운 통계로 어색한 분위기를 깼어요.', ex5 = 'Breaking the ice well makes the rest of the talk easier.', ex5_ko = '어색한 분위기를 잘 깨면 나머지 발표가 더 쉬워져요.' WHERE id = 'idm_presentation_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Her question hit the nail on the head — that''s our main challenge.'), ex3_ko = COALESCE(ex3_ko, '그녀의 질문이 핵심을 정확히 짚었어요 — 그것이 우리의 주요 도전과제예요.'), ex4 = 'He hit the nail on the head when he summarized the issue in one sentence.', ex4_ko = '그는 한 문장으로 문제를 요약하며 핵심을 정확히 짚었어요.', ex5 = 'You hit the nail on the head — let''s focus on that point.', ex5_ko = '핵심을 정확히 짚었어요 — 그 점에 집중해요.' WHERE id = 'idm_presentation_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She drove the point home by sharing customer feedback.'), ex3_ko = COALESCE(ex3_ko, '그녀는 고객 피드백을 공유하며 요점을 강조했어요.'), ex4 = 'Repetition helps drive the point home in long presentations.', ex4_ko = '반복은 긴 발표에서 요점을 강조하는 데 도움이 돼요.', ex5 = 'A short video can drive the point home quickly.', ex5_ko = '짧은 영상이 빠르게 요점을 강조할 수 있어요.' WHERE id = 'idm_presentation_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I lost the thread when an audience member started arguing.'), ex3_ko = COALESCE(ex3_ko, '청중 한 명이 논쟁하기 시작했을 때 흐름을 잃었어요.'), ex4 = 'She lost the thread during a difficult question.', ex4_ko = '그녀는 어려운 질문 중에 흐름을 잃었어요.', ex5 = 'Practice helps you not lose the thread under pressure.', ex5_ko = '연습은 압박 속에서 흐름을 잃지 않는 데 도움이 돼요.' WHERE id = 'idm_presentation_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Let me get the ball rolling with a quick poll.'), ex3_ko = COALESCE(ex3_ko, '빠른 투표로 발표를 시작할게요.'), ex4 = 'She got the ball rolling by asking about the audience''s background.', ex4_ko = '그녀는 청중의 배경을 물으며 발표를 시작했어요.', ex5 = 'Getting the ball rolling on time shows respect for the audience.', ex5_ko = '제시간에 발표를 시작하는 것은 청중에 대한 존중을 보여줘요.' WHERE id = 'idm_presentation_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Let''s wrap up with three key takeaways.'), ex3_ko = COALESCE(ex3_ko, '세 가지 핵심 결과로 마무리해요.'), ex4 = 'She wrapped up the talk with a powerful quote.', ex4_ko = '그녀는 강력한 인용으로 발표를 마무리했어요.', ex5 = 'Wrapping up clearly helps the audience remember your message.', ex5_ko = '명확하게 마무리하면 청중이 메시지를 기억하는 데 도움이 돼요.' WHERE id = 'idm_presentation_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She painted a picture of life in the year 2050.'), ex3_ko = COALESCE(ex3_ko, '그녀는 2050년의 삶을 생생하게 묘사했어요.'), ex4 = 'A short story can paint a picture better than a chart.', ex4_ko = '짧은 이야기가 차트보다 더 잘 묘사할 수 있어요.', ex5 = 'He painted a picture of what success would look like for the team.', ex5_ko = '그는 팀에게 성공이 어떤 모습일지 생생하게 묘사했어요.' WHERE id = 'idm_presentation_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'AI ethics took centre stage at this year''s conference.'), ex3_ko = COALESCE(ex3_ko, 'AI 윤리가 올해 컨퍼런스에서 중심에 섰어요.'), ex4 = 'A new technique took centre stage in the demo session.', ex4_ko = '새 기법이 시연 세션에서 중심에 섰어요.', ex5 = 'Climate justice should take centre stage in all policy talks.', ex5_ko = '기후 정의가 모든 정책 논의의 중심에 서야 해요.' WHERE id = 'idm_presentation_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Try not to go off on a tangent in the Q&A.'), ex3_ko = COALESCE(ex3_ko, 'Q&A에서 주제에서 벗어나지 않도록 하세요.'), ex4 = 'She went off on a tangent about her childhood.', ex4_ko = '그녀는 자기 어린 시절 이야기로 주제에서 벗어났어요.', ex5 = 'Going off on a tangent can lose your audience quickly.', ex5_ko = '주제에서 벗어나면 청중을 금세 잃을 수 있어요.' WHERE id = 'idm_presentation_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Thanks for the introduction — the floor is yours.'), ex3_ko = COALESCE(ex3_ko, '소개해 주셔서 감사합니다 — 발언 기회가 당신에게 있어요.'), ex4 = '"The floor is yours," the host said, stepping aside.', ex4_ko = '"발언 기회가 당신에게 있어요," 진행자가 옆으로 비키며 말했어요.', ex5 = 'When the floor is yours, take a breath before you begin.', ex5_ko = '발언 기회가 당신에게 있을 때, 시작하기 전에 한 번 숨을 고르세요.' WHERE id = 'idm_presentation_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She hammered home the need for early intervention.'), ex3_ko = COALESCE(ex3_ko, '그녀는 조기 개입의 필요성을 강하게 강조했어요.'), ex4 = 'He hammered home the importance of feedback throughout the talk.', ex4_ko = '그는 발표 내내 피드백의 중요성을 강하게 강조했어요.', ex5 = 'Hammering home the message without being repetitive takes skill.', ex5_ko = '반복적이지 않게 메시지를 강하게 강조하는 데는 기술이 필요해요.' WHERE id = 'idm_presentation_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'His comments at the meeting were always on point.'), ex3_ko = COALESCE(ex3_ko, '회의에서 그의 발언은 항상 핵심에 맞았어요.'), ex4 = 'Her slides were short but completely on point.', ex4_ko = '그녀의 슬라이드는 짧았지만 완전히 핵심에 맞았어요.', ex5 = 'Being on point is more important than being long.', ex5_ko = '핵심에 맞는 것이 긴 것보다 더 중요해요.' WHERE id = 'idm_presentation_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A short, personal story can leave a lasting impression.'), ex3_ko = COALESCE(ex3_ko, '짧고 개인적인 이야기가 지속적인 인상을 남길 수 있어요.'), ex4 = 'Her warm closing line left a lasting impression on the room.', ex4_ko = '그녀의 따뜻한 마무리 멘트가 회장에 지속적인 인상을 남겼어요.', ex5 = 'Confidence and warmth together leave a lasting impression.', ex5_ko = '자신감과 따뜻함이 함께 있으면 지속적인 인상을 남겨요.' WHERE id = 'idm_presentation_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I didn''t mean to steal her thunder, but I''d already announced it.'), ex3_ko = COALESCE(ex3_ko, '그녀의 주목을 빼앗으려던 게 아니라 이미 발표한 거였어요.'), ex4 = 'He stole the team''s thunder by sharing the result early.', ex4_ko = '그는 결과를 일찍 공유해서 팀의 주목을 빼앗았어요.', ex5 = 'Avoid stealing someone''s thunder during their presentation.', ex5_ko = '누군가의 발표 중에 그들의 주목을 빼앗는 것을 피하세요.' WHERE id = 'idm_presentation_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'His final demo brought the house down at the launch event.'), ex3_ko = COALESCE(ex3_ko, '그의 마지막 시연이 출시 행사에서 청중을 완전히 사로잡았어요.'), ex4 = 'Her song at the closing ceremony brought the house down.', ex4_ko = '폐막식에서 그녀의 노래가 청중을 완전히 사로잡았어요.', ex5 = 'A well-timed joke can bring the house down in any talk.', ex5_ko = '적절한 시점의 농담은 어떤 발표에서도 청중을 사로잡을 수 있어요.' WHERE id = 'idm_presentation_15';

-- ══════════════════════════════════════
-- NEGOTIATION
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'We met halfway on the salary and both walked away happy.'), ex3_ko = COALESCE(ex3_ko, '우리는 급여에서 절충했고 양쪽 모두 만족하며 돌아갔어요.'), ex4 = 'In long-term partnerships, meeting halfway becomes a habit.', ex4_ko = '장기 파트너십에서는 절충하는 것이 습관이 돼요.', ex5 = 'They met halfway on the delivery timeline.', ex5_ko = '그들은 납기 일정에서 절충했어요.' WHERE id = 'idm_negotiation_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She drives a hard bargain but always respects the other party.'), ex3_ko = COALESCE(ex3_ko, '그녀는 강경하게 협상하지만 항상 상대방을 존중해요.'), ex4 = 'My uncle drove a hard bargain on every car he ever bought.', ex4_ko = '저희 삼촌은 사신 모든 차에서 강경하게 협상하셨어요.', ex5 = 'Driving a hard bargain doesn''t require being rude.', ex5_ko = '강경하게 협상하는 것이 무례할 필요는 없어요.' WHERE id = 'idm_negotiation_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A flexible delivery date is on the table.'), ex3_ko = COALESCE(ex3_ko, '유연한 납기일이 협상 가능해요.'), ex4 = 'Free training is on the table if you sign for two years.', ex4_ko = '2년 계약하시면 무료 교육이 협상 가능해요.', ex5 = 'Putting more options on the table speeds up agreements.', ex5_ko = '더 많은 옵션을 협상에 두면 합의가 빨라져요.' WHERE id = 'idm_negotiation_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They sweetened the deal with an extended warranty.'), ex3_ko = COALESCE(ex3_ko, '그들은 연장 보증으로 거래를 더 매력적으로 만들었어요.'), ex4 = 'To close the sale, she sweetened the deal with free delivery.', ex4_ko = '판매를 마무리하기 위해 그녀는 무료 배송으로 거래를 더 매력적으로 만들었어요.', ex5 = 'Sometimes a small add-on can sweeten the deal enough to close it.', ex5_ko = '때로는 작은 추가 사항이 거래를 성사시킬 만큼 매력적으로 만들 수 있어요.' WHERE id = 'idm_negotiation_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My bottom line is the same hours but better pay.'), ex3_ko = COALESCE(ex3_ko, '제 최종 조건은 같은 시간이지만 더 나은 급여예요.'), ex4 = 'What''s the bottom line for the marketing budget?', ex4_ko = '마케팅 예산의 최종 조건이 뭐예요?', ex5 = 'Be clear about your bottom line before walking in.', ex5_ko = '들어가기 전에 최종 조건을 명확히 하세요.' WHERE id = 'idm_negotiation_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'When they tried to lowball us, we played hardball.'), ex3_ko = COALESCE(ex3_ko, '그들이 저가 제안을 시도했을 때 우리는 강경한 태도를 취했어요.'), ex4 = 'She plays hardball but always knows when to soften.', ex4_ko = '그녀는 강경한 태도를 취하지만 언제 부드러워야 할지 항상 알아요.', ex5 = 'Playing hardball can backfire in long relationships.', ex5_ko = '장기적인 관계에서 강경한 태도는 역효과를 낼 수 있어요.' WHERE id = 'idm_negotiation_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A flexible schedule is a win-win for everyone.'), ex3_ko = COALESCE(ex3_ko, '유연한 일정은 모두에게 이익이 되는 상황이에요.'), ex4 = 'The licensing deal turned out to be a clear win-win.', ex4_ko = '그 라이선싱 계약은 명확하게 양측 모두에게 이익이 되는 상황으로 드러났어요.', ex5 = 'Try to find a win-win situation before settling for less.', ex5_ko = '덜 합의하기 전에 양측 모두에게 이익이 되는 상황을 찾으세요.' WHERE id = 'idm_negotiation_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'We split the difference on the timeline and signed today.'), ex3_ko = COALESCE(ex3_ko, '우리는 일정에서 차이를 나누고 오늘 서명했어요.'), ex4 = 'They split the difference between their initial bids.', ex4_ko = '그들은 초기 입찰가의 차이를 나눴어요.', ex5 = 'Splitting the difference feels fair to both sides.', ex5_ko = '차이를 나누는 것은 양쪽 모두에게 공정하게 느껴져요.' WHERE id = 'idm_negotiation_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Be willing to walk away — it''s your strongest leverage.'), ex3_ko = COALESCE(ex3_ko, '협상을 그만둘 의지를 보이세요 — 그것이 가장 강한 협상력이에요.'), ex4 = 'She walked away from the deal and got a better offer next week.', ex4_ko = '그녀는 그 거래에서 물러났고 다음 주에 더 나은 제안을 받았어요.', ex5 = 'Knowing when to walk away is a skill you build over time.', ex5_ko = '언제 그만둬야 할지 아는 것은 시간이 지나며 쌓이는 능력이에요.' WHERE id = 'idm_negotiation_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Long contract terms can be a deal breaker for many startups.'), ex3_ko = COALESCE(ex3_ko, '긴 계약 조건은 많은 스타트업에 협상 성사를 가로막는 요인이 될 수 있어요.'), ex4 = 'No remote work was a deal breaker for the candidate.', ex4_ko = '재택근무 불가는 그 후보자에게 협상 성사를 가로막는 요인이었어요.', ex5 = 'Identify your deal breakers before starting negotiations.', ex5_ko = '협상 시작 전에 협상 성사를 가로막는 요인을 파악하세요.' WHERE id = 'idm_negotiation_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They''re back at the negotiating table after a brief pause.'), ex3_ko = COALESCE(ex3_ko, '잠시 멈춘 후 그들은 다시 협상 자리에 앉았어요.'), ex4 = 'At the negotiating table, listening matters more than talking.', ex4_ko = '협상 자리에서는 말하는 것보다 듣는 것이 더 중요해요.', ex5 = 'Preparation is everything at the negotiating table.', ex5_ko = '협상 자리에서는 준비가 모든 것이에요.' WHERE id = 'idm_negotiation_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Healthy negotiations involve a lot of give and take.'), ex3_ko = COALESCE(ex3_ko, '건강한 협상에는 많은 주고받기가 있어요.'), ex4 = 'Marriage works best with steady give and take.', ex4_ko = '결혼은 꾸준한 주고받기에서 가장 잘 돼요.', ex5 = 'Give and take builds trust over the long term.', ex5_ko = '주고받기는 장기적으로 신뢰를 쌓아요.' WHERE id = 'idm_negotiation_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She laid her cards on the table about her career hopes.'), ex3_ko = COALESCE(ex3_ko, '그녀는 자신의 경력 희망에 대해 솔직하게 공개했어요.'), ex4 = 'Lay your cards on the table — what do you actually want?', ex4_ko = '솔직하게 공개하세요 — 실제로 무엇을 원하세요?', ex5 = 'Laying your cards on the table early prevents wasted time.', ex5_ko = '일찍 솔직하게 공개하면 시간 낭비를 막아요.' WHERE id = 'idm_negotiation_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They flew in to close the deal in person.'), ex3_ko = COALESCE(ex3_ko, '그들은 직접 협상을 마무리하기 위해 비행기로 왔어요.'), ex4 = 'Closing the deal often takes one final conversation.', ex4_ko = '협상을 마무리하는 데는 종종 마지막 대화 한 번이 필요해요.', ex5 = 'She closed the deal with a firm but friendly handshake.', ex5_ko = '그녀는 단호하지만 친절한 악수로 협상을 마무리했어요.' WHERE id = 'idm_negotiation_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Their support was a clear quid pro quo for our endorsement.'), ex3_ko = COALESCE(ex3_ko, '그들의 지원은 우리의 보증에 대한 명확한 반대급부였어요.'), ex4 = 'In diplomacy, quid pro quo is common but rarely public.', ex4_ko = '외교에서 반대급부는 흔하지만 공개되는 경우는 드물어요.', ex5 = 'They struck a quid pro quo deal that benefited both sides.', ex5_ko = '그들은 양쪽 모두에게 이익이 되는 반대급부 거래를 성사시켰어요.' WHERE id = 'idm_negotiation_15';

-- ══════════════════════════════════════
-- HUMANITIES
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'Critical thinking begins with reading between the lines.'), ex3_ko = COALESCE(ex3_ko, '비판적 사고는 행간을 읽는 것에서 시작돼요.'), ex4 = 'Reading between the lines of historical texts reveals untold stories.', ex4_ko = '역사 텍스트의 행간을 읽으면 알려지지 않은 이야기가 드러나요.', ex5 = 'Poetry often requires reading between the lines.', ex5_ko = '시는 종종 행간을 읽어야 해요.' WHERE id = 'idm_humanities_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A single photo of a refugee child says more than any report — a picture is worth a thousand words.'), ex3_ko = COALESCE(ex3_ko, '난민 어린이의 사진 한 장이 어떤 보고서보다 많은 것을 말해줘요 — 백문이 불여일견이에요.'), ex4 = 'A picture is worth a thousand words in journalism.', ex4_ko = '저널리즘에서 백문이 불여일견이에요.', ex5 = 'In museum exhibits, a picture is worth a thousand words.', ex5_ko = '박물관 전시에서 백문이 불여일견이에요.' WHERE id = 'idm_humanities_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Many philosophers were ahead of their time.'), ex3_ko = COALESCE(ex3_ko, '많은 철학자들이 시대를 앞서갔어요.'), ex4 = 'Her ideas were ahead of their time and only appreciated decades later.', ex4_ko = '그녀의 아이디어는 시대를 앞서갔고 수십 년 후에야 인정받았어요.', ex5 = 'Some scientists ahead of their time were ridiculed in life.', ex5_ko = '시대를 앞서간 일부 과학자들은 살아생전 조롱당했어요.' WHERE id = 'idm_humanities_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Greek tragedies have stood the test of time.'), ex3_ko = COALESCE(ex3_ko, '그리스 비극은 세월을 견뎌왔어요.'), ex4 = 'A good idea stands the test of time.', ex4_ko = '좋은 아이디어는 세월을 견뎌요.', ex5 = 'Few popular trends stand the test of time the way classics do.', ex5_ko = '인기 트렌드 중 고전처럼 세월을 견디는 것은 드물어요.' WHERE id = 'idm_humanities_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Many anonymous writers have left their mark on culture.'), ex3_ko = COALESCE(ex3_ko, '많은 무명 작가들이 문화에 족적을 남겼어요.'), ex4 = 'She left her mark by translating overlooked texts.', ex4_ko = '그녀는 간과된 텍스트를 번역하며 족적을 남겼어요.', ex5 = 'Leaving your mark doesn''t require fame.', ex5_ko = '족적을 남기는 데 명성이 필요하지는 않아요.' WHERE id = 'idm_humanities_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The final scene of the play left me lost for words.'), ex3_ko = COALESCE(ex3_ko, '연극의 마지막 장면에 저는 말문이 막혔어요.'), ex4 = 'Reading her memoir, I was lost for words.', ex4_ko = '그녀의 회고록을 읽고 저는 말문이 막혔어요.', ex5 = 'The view of the ancient ruins left us lost for words.', ex5_ko = '고대 유적의 풍경에 우리는 말문이 막혔어요.' WHERE id = 'idm_humanities_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Questioning translations of religious texts can open a can of worms.'), ex3_ko = COALESCE(ex3_ko, '종교 텍스트의 번역에 의문을 제기하는 것은 복잡한 문제를 끄집어낼 수 있어요.'), ex4 = 'Renaming the museum opened a can of worms among scholars.', ex4_ko = '박물관의 이름을 바꾸는 것이 학자들 사이에 복잡한 문제를 끄집어냈어요.', ex5 = 'Rewriting school curricula always opens a can of worms.', ex5_ko = '학교 커리큘럼을 다시 쓰는 것은 항상 복잡한 문제를 끄집어내요.' WHERE id = 'idm_humanities_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Experimental authors push the envelope of narrative form.'), ex3_ko = COALESCE(ex3_ko, '실험적인 작가들은 서사 형식의 한계를 넘어요.'), ex4 = 'This translation pushes the envelope of cross-cultural literature.', ex4_ko = '이 번역은 문화 간 문학의 한계를 넘어요.', ex5 = 'Pushing the envelope often invites both praise and criticism.', ex5_ko = '한계를 넘는 것은 종종 칭찬과 비판을 모두 불러와요.' WHERE id = 'idm_humanities_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My grandmother had a way with words and stories.'), ex3_ko = COALESCE(ex3_ko, '저희 할머니는 언어 표현력과 이야기 솜씨가 뛰어났어요.'), ex4 = 'He has a way with words that calms anyone in a crisis.', ex4_ko = '그는 위기에 처한 누구든 진정시키는 언어 표현력이 있어요.', ex5 = 'Having a way with words is a gift, but it can be developed.', ex5_ko = '언어 표현력은 재능이지만 개발할 수 있어요.' WHERE id = 'idm_humanities_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Take a leaf out of Beethoven''s book — be patient with the process.'), ex3_ko = COALESCE(ex3_ko, '베토벤의 방식을 본받으세요 — 과정에 인내심을 가지세요.'), ex4 = 'She took a leaf out of her professor''s book and started teaching others.', ex4_ko = '그녀는 교수의 방식을 본받아 다른 사람들을 가르치기 시작했어요.', ex5 = 'Sometimes taking a leaf out of someone''s book gives you a head start.', ex5_ko = '때로는 누군가의 방식을 본받는 것이 시작을 빠르게 해줘요.' WHERE id = 'idm_humanities_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She brings history to life in her storytelling.'), ex3_ko = COALESCE(ex3_ko, '그녀는 스토리텔링으로 역사를 생생하게 묘사해요.'), ex4 = 'Old letters bring the past to life for researchers.', ex4_ko = '오래된 편지들이 연구자들에게 과거를 생생하게 묘사해 줘요.', ex5 = 'A great teacher can bring even abstract ideas to life.', ex5_ko = '훌륭한 선생님은 추상적인 아이디어도 생생하게 표현할 수 있어요.' WHERE id = 'idm_humanities_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Her solution to the problem was a stroke of genius.'), ex3_ko = COALESCE(ex3_ko, '문제에 대한 그녀의 해결책은 천재적인 아이디어였어요.'), ex4 = 'Quoting that line at the end was a stroke of genius.', ex4_ko = '마지막에 그 대사를 인용한 것은 천재적인 아이디어였어요.', ex5 = 'Even a stroke of genius needs careful execution.', ex5_ko = '천재적인 아이디어도 신중한 실행이 필요해요.' WHERE id = 'idm_humanities_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'History shows that the pen is mightier than the sword.'), ex3_ko = COALESCE(ex3_ko, '역사는 펜이 칼보다 강하다는 것을 보여줘요.'), ex4 = 'Journalists believe the pen is mightier than the sword.', ex4_ko = '기자들은 펜이 칼보다 강하다고 믿어요.', ex5 = 'Ideas spread by writing have changed nations — the pen is mightier than the sword.', ex5_ko = '글로 퍼진 아이디어들이 나라를 바꿔왔어요 — 펜이 칼보다 강해요.' WHERE id = 'idm_humanities_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She has grappled with questions of identity in her work.'), ex3_ko = COALESCE(ex3_ko, '그녀는 자신의 작품에서 정체성에 관한 질문과 씨름해 왔어요.'), ex4 = 'Researchers grapple with the meaning of consciousness.', ex4_ko = '연구자들은 의식의 의미와 씨름해요.', ex5 = 'Grappling with hard problems is part of academic life.', ex5_ko = '어려운 문제와 씨름하는 것은 학문 생활의 일부예요.' WHERE id = 'idm_humanities_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'New archives cast light on the lives of ordinary people.'), ex3_ko = COALESCE(ex3_ko, '새로운 기록 보관소들이 평범한 사람들의 삶을 밝혀줘요.'), ex4 = 'Her thesis casts light on neglected women writers.', ex4_ko = '그녀의 논문은 간과된 여성 작가들을 밝혀줘요.', ex5 = 'A single discovery can cast light on an entire era.', ex5_ko = '단 하나의 발견이 한 시대 전체를 밝혀줄 수 있어요.' WHERE id = 'idm_humanities_15';

-- ══════════════════════════════════════
-- TECHNOLOGY
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'Her lab is on the cutting edge of brain research.'), ex3_ko = COALESCE(ex3_ko, '그녀의 실험실은 뇌 연구의 최첨단에 있어요.'), ex4 = 'Staying on the cutting edge takes constant learning.', ex4_ko = '최첨단에 머무는 데는 끊임없는 학습이 필요해요.', ex5 = 'Their phones are always on the cutting edge of design.', ex5_ko = '그들의 휴대폰은 항상 디자인의 최첨단에 있어요.' WHERE id = 'idm_technology_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The webcam is plug and play with most laptops.'), ex3_ko = COALESCE(ex3_ko, '그 웹캠은 대부분의 노트북에서 바로 사용 가능해요.'), ex4 = 'They prefer plug and play hardware for the classroom.', ex4_ko = '그들은 교실용으로 바로 사용 가능한 하드웨어를 선호해요.', ex5 = 'A plug and play device saves hours of setup.', ex5_ko = '바로 사용 가능한 기기는 몇 시간의 설정을 절약해 줘요.' WHERE id = 'idm_technology_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A bug in the system caused the search results to fail.'), ex3_ko = COALESCE(ex3_ko, '시스템 오류로 검색 결과가 작동하지 않았어요.'), ex4 = 'The engineer traced the bug in the system to a single line of code.', ex4_ko = '엔지니어는 시스템 오류를 단 한 줄의 코드로 추적했어요.', ex5 = 'Sometimes a bug in the system only appears under heavy load.', ex5_ko = '시스템 오류는 때로 무거운 부하에서만 나타나요.' WHERE id = 'idm_technology_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Today''s session is about blue-sky thinking for the next decade.'), ex3_ko = COALESCE(ex3_ko, '오늘 세션은 향후 10년에 대한 창의적이고 제한 없는 사고에 관한 것이에요.'), ex4 = 'Blue-sky thinking sometimes leads to practical inventions.', ex4_ko = '창의적이고 제한 없는 사고는 때로 실용적인 발명으로 이어져요.', ex5 = 'Start with blue-sky thinking before worrying about feasibility.', ex5_ko = '실현 가능성을 걱정하기 전에 제한 없이 자유롭게 생각해 보세요.' WHERE id = 'idm_technology_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They pulled the plug on the feature due to low usage.'), ex3_ko = COALESCE(ex3_ko, '낮은 사용률 때문에 그 기능을 중단시켰어요.'), ex4 = 'Investors threatened to pull the plug on the funding.', ex4_ko = '투자자들은 자금 지원을 중단하겠다고 위협했어요.', ex5 = 'Pulling the plug on a beloved product is always controversial.', ex5_ko = '사랑받는 제품을 중단시키는 것은 항상 논란이 돼요.' WHERE id = 'idm_technology_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'I can call my parents abroad at the touch of a button.'), ex3_ko = COALESCE(ex3_ko, '저는 버튼 하나로 해외에 계신 부모님께 전화할 수 있어요.'), ex4 = 'Smart homes let you control everything at the touch of a button.', ex4_ko = '스마트 홈은 버튼 하나로 모든 것을 제어할 수 있게 해줘요.', ex5 = 'Translations happen at the touch of a button these days.', ex5_ko = '요즘은 버튼 하나로 번역이 돼요.' WHERE id = 'idm_technology_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Some banks are still behind the times with mobile services.'), ex3_ko = COALESCE(ex3_ko, '일부 은행들은 모바일 서비스에서 여전히 시대에 뒤떨어져 있어요.'), ex4 = 'I felt behind the times for not using QR codes for payments.', ex4_ko = '결제에 QR 코드를 사용하지 않아서 시대에 뒤떨어진 느낌이 들었어요.', ex5 = 'Companies behind the times struggle to attract young talent.', ex5_ko = '시대에 뒤떨어진 회사들은 젊은 인재를 끌어들이기 어려워요.' WHERE id = 'idm_technology_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Cheap solar panels could be a game changer for rural areas.'), ex3_ko = COALESCE(ex3_ko, '저렴한 태양광 패널은 농촌 지역의 판도를 바꿀 수 있어요.'), ex4 = 'AI assistants have been a game changer for writers.', ex4_ko = 'AI 어시스턴트는 작가들에게 판도를 바꾸는 것이었어요.', ex5 = 'Wireless headphones were a real game changer for me.', ex5_ko = '무선 헤드폰은 저에게 진정한 판도를 바꾸는 것이었어요.' WHERE id = 'idm_technology_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The site is finally up and running after the migration.'), ex3_ko = COALESCE(ex3_ko, '이전 후 사이트가 마침내 가동 중이에요.'), ex4 = 'They got the prototype up and running in two weeks.', ex4_ko = '그들은 2주 만에 시제품을 가동시켰어요.', ex5 = 'Once you''re up and running, focus on user feedback.', ex5_ko = '가동되면 사용자 피드백에 집중하세요.' WHERE id = 'idm_technology_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Three new features are in the pipeline for next quarter.'), ex3_ko = COALESCE(ex3_ko, '세 가지 새 기능이 다음 분기에 준비 중이에요.'), ex4 = 'A surprise announcement is in the pipeline for the conference.', ex4_ko = '컨퍼런스에서 깜짝 발표가 준비 중이에요.', ex5 = 'Patient delivery in the pipeline is part of good product strategy.', ex5_ko = '준비 중인 제품의 인내심 있는 출시는 좋은 제품 전략의 일부예요.' WHERE id = 'idm_technology_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'To stay ahead of the curve, our team reads research weekly.'), ex3_ko = COALESCE(ex3_ko, '변화에 앞서가기 위해 저희 팀은 매주 연구 자료를 읽어요.'), ex4 = 'She stays ahead of the curve by attending tech meetups.', ex4_ko = '그녀는 기술 모임에 참석하며 변화에 앞서가요.', ex5 = 'Staying ahead of the curve doesn''t mean chasing every trend.', ex5_ko = '변화에 앞서가는 것이 모든 트렌드를 좇는다는 의미는 아니에요.' WHERE id = 'idm_technology_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Under the hood, the system uses several neural networks.'), ex3_ko = COALESCE(ex3_ko, '내부적으로 시스템은 여러 신경망을 사용해요.'), ex4 = 'Engineers love understanding what goes on under the hood.', ex4_ko = '엔지니어들은 내부에서 무슨 일이 일어나는지 이해하는 것을 좋아해요.', ex5 = 'Most users don''t care what''s under the hood — only that it works.', ex5_ko = '대부분의 사용자들은 내부가 어떻게 돌아가는지 신경 쓰지 않아요 — 작동하기만 하면 돼요.' WHERE id = 'idm_technology_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Public libraries help bridge the digital divide.'), ex3_ko = COALESCE(ex3_ko, '공공 도서관은 디지털 격차를 줄이는 데 도움이 돼요.'), ex4 = 'Free Wi-Fi programs aim to bridge the digital divide in cities.', ex4_ko = '무료 와이파이 프로그램은 도시의 디지털 격차를 줄이는 것을 목표로 해요.', ex5 = 'Bridging the digital divide takes both infrastructure and education.', ex5_ko = '디지털 격차를 줄이려면 인프라와 교육이 모두 필요해요.' WHERE id = 'idm_technology_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Let me boot up my laptop and check.'), ex3_ko = COALESCE(ex3_ko, '노트북을 켜고 확인해 볼게요.'), ex4 = 'It takes too long to boot up the old server.', ex4_ko = '오래된 서버는 시작하는 데 너무 오래 걸려요.', ex5 = 'I boot up early each morning to plan the day.', ex5_ko = '저는 매일 아침 일찍 시작해서 하루를 계획해요.' WHERE id = 'idm_technology_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Make sure designers and engineers are on the same platform.'), ex3_ko = COALESCE(ex3_ko, '디자이너와 엔지니어가 같은 환경에서 작업하는지 확인하세요.'), ex4 = 'When teams are on the same platform, mistakes drop quickly.', ex4_ko = '팀이 같은 환경에서 작업하면 실수가 빠르게 줄어들어요.', ex5 = 'Being on the same platform across departments speeds up reviews.', ex5_ko = '부서 간 같은 환경에서 작업하면 검토가 빨라져요.' WHERE id = 'idm_technology_15';

-- ══════════════════════════════════════
-- NEWS
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'Local journalists broke the story before any national outlet.'), ex3_ko = COALESCE(ex3_ko, '지역 기자들이 어느 전국 매체보다 먼저 단독 보도를 했어요.'), ex4 = 'She broke the story after months of investigation.', ex4_ko = '몇 달간의 조사 끝에 그녀는 단독 보도를 했어요.', ex5 = 'Breaking the story responsibly is more important than being first.', ex5_ko = '단독 보도를 책임감 있게 하는 것이 가장 먼저 하는 것보다 더 중요해요.' WHERE id = 'idm_news_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'News about layoffs hit close to home in our community.'), ex3_ko = COALESCE(ex3_ko, '해고에 관한 뉴스가 저희 지역사회에 가슴 아프게 와 닿았어요.'), ex4 = 'The article about caregiving hit close to home for me.', ex4_ko = '돌봄에 관한 기사가 저에게 가슴 아프게 와 닿았어요.', ex5 = 'Stories about local schools always hit close to home.', ex5_ko = '지역 학교에 관한 이야기는 항상 가슴 아프게 와 닿아요.' WHERE id = 'idm_news_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The election results were front-page news everywhere.'), ex3_ko = COALESCE(ex3_ko, '선거 결과는 어디에서나 1면 기사였어요.'), ex4 = 'A local rescue story became front-page news that day.', ex4_ko = '지역 구조 이야기가 그날 1면 기사가 됐어요.', ex5 = 'What''s front-page news varies wildly by country.', ex5_ko = '나라마다 1면 기사가 무엇인지는 크게 달라요.' WHERE id = 'idm_news_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'This data is hot off the press from this morning.'), ex3_ko = COALESCE(ex3_ko, '이 데이터는 오늘 아침 막 나온 거예요.'), ex4 = 'The new policy is hot off the press — read carefully.', ex4_ko = '새 정책은 막 나온 거예요 — 신중하게 읽어보세요.', ex5 = 'Hot off the press doesn''t always mean accurate, though.', ex5_ko = '하지만 막 나왔다고 항상 정확한 건 아니에요.' WHERE id = 'idm_news_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She got wind of the merger before the formal announcement.'), ex3_ko = COALESCE(ex3_ko, '그녀는 공식 발표 전에 합병에 대한 소문을 들었어요.'), ex4 = 'He got wind of the layoffs through a friend in HR.', ex4_ko = '그는 인사팀 친구를 통해 해고 소문을 들었어요.', ex5 = 'If you get wind of bad news, verify before sharing.', ex5_ko = '나쁜 소식의 소문을 들으면 공유하기 전에 확인하세요.' WHERE id = 'idm_news_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'He blew the whistle on safety violations and lost his job.'), ex3_ko = COALESCE(ex3_ko, '그는 안전 위반을 내부 고발했고 직장을 잃었어요.'), ex4 = 'Blowing the whistle takes courage and often costs personally.', ex4_ko = '내부 고발에는 용기가 필요하고 종종 개인적인 대가를 치러요.', ex5 = 'Several whistles were blown before the scandal became public.', ex5_ko = '스캔들이 공개되기 전 여러 차례 내부 고발이 있었어요.' WHERE id = 'idm_news_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Editors warn writers not to bury the lede.'), ex3_ko = COALESCE(ex3_ko, '편집자들은 작가들에게 핵심을 뒤로 묻지 말라고 경고해요.'), ex4 = 'The blog post buried the lede in a tangent about coffee.', ex4_ko = '그 블로그 글은 커피에 관한 곁가지 이야기 속에 핵심을 묻었어요.', ex5 = 'In academic writing, it''s easy to bury the lede.', ex5_ko = '학술 글쓰기에서 핵심을 뒤로 묻기 쉬워요.' WHERE id = 'idm_news_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'They published the source documents in the public interest.'), ex3_ko = COALESCE(ex3_ko, '그들은 공익을 위해 원본 문서를 공개했어요.'), ex4 = 'Reporting on public health is in the public interest.', ex4_ko = '공중 보건에 대한 보도는 공익을 위한 거예요.', ex5 = 'Some stories are run in the public interest despite the risk.', ex5_ko = '어떤 기사들은 위험에도 불구하고 공익을 위해 보도돼요.' WHERE id = 'idm_news_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The paper ran a story about the missing donations.'), ex3_ko = COALESCE(ex3_ko, '그 신문은 사라진 기부금에 대한 기사를 실었어요.'), ex4 = 'Major outlets ran the story within hours of confirmation.', ex4_ko = '주요 매체들은 확인 후 몇 시간 만에 그 기사를 실었어요.', ex5 = 'They decided to run the story after legal review.', ex5_ko = '그들은 법적 검토 후 기사를 싣기로 결정했어요.' WHERE id = 'idm_news_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The court ruling caused a storm of controversy.'), ex3_ko = COALESCE(ex3_ko, '법원 판결이 논란의 폭풍을 일으켰어요.'), ex4 = 'A single tweet from the CEO sparked a storm of controversy.', ex4_ko = 'CEO의 트윗 하나가 논란의 폭풍을 일으켰어요.', ex5 = 'Politicians often face a storm of controversy over small mistakes.', ex5_ko = '정치인들은 작은 실수로 종종 논란의 폭풍에 직면해요.' WHERE id = 'idm_news_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Hold the presses — we have a major correction.'), ex3_ko = COALESCE(ex3_ko, '인쇄를 중단하세요 — 큰 정정이 필요해요.'), ex4 = 'Hold the presses — the result has just been overturned.', ex4_ko = '인쇄를 중단하세요 — 결과가 방금 뒤집혔어요.', ex5 = 'Hold the presses isn''t said much in digital newsrooms anymore.', ex5_ko = '디지털 뉴스룸에서는 더 이상 "인쇄를 중단하세요"라는 말이 자주 쓰이지 않아요.' WHERE id = 'idm_news_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Reading between the lines of the speech reveals real frustration.'), ex3_ko = COALESCE(ex3_ko, '연설의 행간을 읽으면 진짜 분노가 드러나요.'), ex4 = 'Even press releases need to be read between the lines.', ex4_ko = '보도자료도 행간을 읽어야 해요.', ex5 = 'Between the lines, you can sense their concerns.', ex5_ko = '행간에서 그들의 우려를 느낄 수 있어요.' WHERE id = 'idm_news_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Some tabloids spend resources digging up dirt on minor figures.'), ex3_ko = COALESCE(ex3_ko, '일부 타블로이드는 사소한 인물들의 약점을 캐는 데 자원을 쓰죠.'), ex4 = 'Digging up dirt isn''t real investigative journalism.', ex4_ko = '약점을 캐는 것은 진정한 탐사보도가 아니에요.', ex5 = 'They dug up dirt on rivals during the heated campaign.', ex5_ko = '치열한 캠페인 중 그들은 경쟁자의 약점을 캤어요.' WHERE id = 'idm_news_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'The new climate report made waves in policy circles.'), ex3_ko = COALESCE(ex3_ko, '새 기후 보고서가 정책계에 파장을 일으켰어요.'), ex4 = 'Her resignation made waves across the company.', ex4_ko = '그녀의 사임이 회사 전체에 파장을 일으켰어요.', ex5 = 'A small podcast can make waves when the topic strikes a nerve.', ex5_ko = '작은 팟캐스트도 주제가 민감한 부분을 건드리면 파장을 일으킬 수 있어요.' WHERE id = 'idm_news_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'She wanted to put on record that she had warned the team.'), ex3_ko = COALESCE(ex3_ko, '그녀는 팀에 경고했었다는 것을 공식적으로 기록하고 싶어 했어요.'), ex4 = 'Members put their objections on record at the meeting.', ex4_ko = '회원들은 회의에서 자신들의 반대를 공식적으로 기록했어요.', ex5 = 'Putting your views on record protects you later.', ex5_ko = '의견을 공식 기록에 남기면 나중에 자신을 보호할 수 있어요.' WHERE id = 'idm_news_15';

-- ══════════════════════════════════════
-- ACADEMIC
-- ══════════════════════════════════════
UPDATE idioms SET ex3 = COALESCE(ex3, 'You can''t draw a conclusion from a single study.'), ex3_ko = COALESCE(ex3_ko, '단 하나의 연구로는 결론을 내릴 수 없어요.'), ex4 = 'The team drew the conclusion after months of analysis.', ex4_ko = '팀은 몇 달간의 분석 끝에 결론을 내렸어요.', ex5 = 'Drawing a conclusion too early is a common research mistake.', ex5_ko = '너무 일찍 결론을 내리는 것은 흔한 연구 실수예요.' WHERE id = 'idm_academic_01';
UPDATE idioms SET ex3 = COALESCE(ex3, 'A literature review lays the groundwork for any thesis.'), ex3_ko = COALESCE(ex3_ko, '문헌 검토는 어떤 논문이든 기초를 다져요.'), ex4 = 'Her early experiments laid the groundwork for the lab''s research.', ex4_ko = '그녀의 초기 실험들이 실험실 연구의 기초를 다졌어요.', ex5 = 'Laying the groundwork takes time but pays off later.', ex5_ko = '기초를 다지는 데는 시간이 걸리지만 나중에 보람이 있어요.' WHERE id = 'idm_academic_02';
UPDATE idioms SET ex3 = COALESCE(ex3, 'In a nutshell, your essay argues for stronger regulation.'), ex3_ko = COALESCE(ex3_ko, '간단히 말하면, 당신의 에세이는 더 강한 규제를 주장해요.'), ex4 = 'Can you describe your findings in a nutshell?', ex4_ko = '당신의 연구 결과를 간단히 설명해 줄 수 있어요?', ex5 = 'In a nutshell, the study shows a clear correlation.', ex5_ko = '간단히 말하면, 연구는 명확한 상관관계를 보여줘요.' WHERE id = 'idm_academic_03';
UPDATE idioms SET ex3 = COALESCE(ex3, 'These results call into question several long-held beliefs.'), ex3_ko = COALESCE(ex3_ko, '이 결과는 오랫동안 유지되어 온 여러 신념에 의문을 제기해요.'), ex4 = 'The study calls into question the original methodology.', ex4_ko = '그 연구는 원래의 방법론에 의문을 제기해요.', ex5 = 'Calling assumptions into question is at the heart of scholarship.', ex5_ko = '가정에 의문을 제기하는 것이 학문의 핵심이에요.' WHERE id = 'idm_academic_04';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Their work sheds light on overlooked aspects of the period.'), ex3_ko = COALESCE(ex3_ko, '그들의 연구는 그 시기의 간과된 측면을 밝혀줘요.'), ex4 = 'This dissertation sheds light on women in early science.', ex4_ko = '이 논문은 초기 과학계의 여성을 밝혀줘요.', ex5 = 'A new tool may shed light on previously unsolvable problems.', ex5_ko = '새 도구가 이전에는 풀 수 없던 문제들을 밝혀줄 수 있어요.' WHERE id = 'idm_academic_05';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Sociology and history often go hand in hand.'), ex3_ko = COALESCE(ex3_ko, '사회학과 역사는 종종 함께 이루어져요.'), ex4 = 'Theory and ethics go hand in hand in modern research.', ex4_ko = '이론과 윤리는 현대 연구에서 함께 이루어져요.', ex5 = 'Empathy and good teaching go hand in hand.', ex5_ko = '공감과 좋은 가르침은 함께 이루어져요.' WHERE id = 'idm_academic_06';
UPDATE idioms SET ex3 = COALESCE(ex3, 'In your conclusion, you must take a clear stance.'), ex3_ko = COALESCE(ex3_ko, '결론에서 명확한 입장을 취해야 해요.'), ex4 = 'Taking a stance on controversial topics can be uncomfortable.', ex4_ko = '논쟁적인 주제에 입장을 취하는 것은 불편할 수 있어요.', ex5 = 'She took a brave stance in her academic writing.', ex5_ko = '그녀는 자기 학술 글쓰기에서 용감한 입장을 취했어요.' WHERE id = 'idm_academic_07';
UPDATE idioms SET ex3 = COALESCE(ex3, 'My research builds on a study published last year.'), ex3_ko = COALESCE(ex3_ko, '제 연구는 작년에 발표된 연구를 발전시켜요.'), ex4 = 'Building on previous work shows scholarly humility.', ex4_ko = '이전 연구를 발전시키는 것은 학문적 겸손을 보여줘요.', ex5 = 'Her theory builds on classical economic models.', ex5_ko = '그녀의 이론은 고전 경제 모델을 발전시켜요.' WHERE id = 'idm_academic_08';
UPDATE idioms SET ex3 = COALESCE(ex3, 'In light of these results, we recommend a revised approach.'), ex3_ko = COALESCE(ex3_ko, '이 결과를 고려하여 수정된 접근법을 권장해요.'), ex4 = 'In light of the criticism, the author updated the methodology.', ex4_ko = '비판을 고려하여 저자는 방법론을 업데이트했어요.', ex5 = 'In light of new findings, older models need updating.', ex5_ko = '새로운 발견을 고려하여 이전 모델들은 업데이트가 필요해요.' WHERE id = 'idm_academic_09';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Bear in mind that the participants were all volunteers.'), ex3_ko = COALESCE(ex3_ko, '참가자들이 모두 자원봉사자였다는 점을 염두에 두세요.'), ex4 = 'Bear in mind the cultural context when reading the data.', ex4_ko = '데이터를 읽을 때 문화적 맥락을 염두에 두세요.', ex5 = 'Bear in mind the original definitions when comparing studies.', ex5_ko = '연구들을 비교할 때 원래의 정의를 염두에 두세요.' WHERE id = 'idm_academic_10';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Believing in your hypothesis requires a leap of faith.'), ex3_ko = COALESCE(ex3_ko, '자신의 가설을 믿는 데는 믿음의 도약이 필요해요.'), ex4 = 'Many discoveries began as a leap of faith.', ex4_ko = '많은 발견들이 믿음의 도약으로 시작됐어요.', ex5 = 'Funding new research often requires a leap of faith.', ex5_ko = '새 연구에 자금을 대는 것은 종종 믿음의 도약이 필요해요.' WHERE id = 'idm_academic_11';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Don''t take press releases at face value.'), ex3_ko = COALESCE(ex3_ko, '보도자료를 액면 그대로 받아들이지 마세요.'), ex4 = 'Take charts and figures at face value at your own risk.', ex4_ko = '차트와 수치를 액면 그대로 받아들이는 건 위험해요.', ex5 = 'Even peer-reviewed work shouldn''t always be taken at face value.', ex5_ko = '동료 심사 연구도 항상 액면 그대로 받아들여서는 안 돼요.' WHERE id = 'idm_academic_12';
UPDATE idioms SET ex3 = COALESCE(ex3, 'Their findings came under scrutiny when others couldn''t replicate them.'), ex3_ko = COALESCE(ex3_ko, '다른 사람들이 재현할 수 없게 되자 그들의 연구 결과가 면밀히 검토됐어요.'), ex4 = 'Every funded study is under scrutiny by its peers.', ex4_ko = '지원받는 모든 연구는 동료들에게 면밀히 검토돼요.', ex5 = 'Being under scrutiny is part of the academic process.', ex5_ko = '면밀히 검토되는 것은 학문 과정의 일부예요.' WHERE id = 'idm_academic_13';
UPDATE idioms SET ex3 = COALESCE(ex3, 'These conclusions run counter to common assumptions.'), ex3_ko = COALESCE(ex3_ko, '이 결론들은 일반적인 가정에 반해요.'), ex4 = 'Her thesis runs counter to mainstream economic theory.', ex4_ko = '그녀의 논문은 주류 경제 이론에 반해요.', ex5 = 'When results run counter to your hypothesis, examine the data carefully.', ex5_ko = '결과가 가설에 반하면 데이터를 신중히 검토하세요.' WHERE id = 'idm_academic_14';
UPDATE idioms SET ex3 = COALESCE(ex3, 'That issue is interesting but beyond the scope of my thesis.'), ex3_ko = COALESCE(ex3_ko, '그 문제는 흥미롭지만 제 논문의 범위를 벗어나요.'), ex4 = 'Discussing every variable is beyond the scope of this paper.', ex4_ko = '모든 변수를 논의하는 것은 이 논문의 범위를 벗어나요.', ex5 = 'Some questions are simply beyond the scope of a single study.', ex5_ko = '어떤 질문들은 단 한 연구의 범위를 단순히 벗어나요.' WHERE id = 'idm_academic_15';


-- ══════════════════════════════════════
-- GREETING
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'It''s lovely to meet you in person after so many emails.', ex4_ko = '그렇게 많은 이메일을 주고받은 후 직접 만나뵙게 되어 반가워요.', ex5 = 'I hope to see you again at the next conference.', ex5_ko = '다음 컨퍼런스에서 다시 뵙기를 바라요.' WHERE id = 'nuc_greeting_01';
UPDATE nuances SET ex4 = 'She told us a fascinating story over dinner.', ex4_ko = '그녀는 저녁 식사 중에 흥미로운 이야기를 들려줬어요.', ex5 = 'Could you say that one more time, please?', ex5_ko = '한 번 더 말씀해 주시겠어요?' WHERE id = 'nuc_greeting_02';
UPDATE nuances SET ex4 = 'I''d like to speak to someone in the finance department.', ex4_ko = '재무부서에 계신 분과 통화하고 싶어요.', ex5 = 'We talked for hours about our weekend plans.', ex5_ko = '우리는 주말 계획에 대해 몇 시간 동안 이야기했어요.' WHERE id = 'nuc_greeting_03';
UPDATE nuances SET ex4 = 'The teacher greeted every student by name.', ex4_ko = '선생님은 모든 학생을 이름으로 인사했어요.', ex5 = 'They welcomed us with warm hugs at the airport.', ex5_ko = '그들은 공항에서 따뜻한 포옹으로 우리를 환영했어요.' WHERE id = 'nuc_greeting_04';
UPDATE nuances SET ex4 = 'May I introduce you to our project manager?', ex4_ko = '저희 프로젝트 매니저를 소개해 드릴게요.', ex5 = 'She presented the award to last year''s winner.', ex5_ko = '그녀는 작년 수상자에게 상을 수여했어요.' WHERE id = 'nuc_greeting_05';
UPDATE nuances SET ex4 = 'They said a quiet farewell at the airport gate.', ex4_ko = '그들은 공항 게이트에서 조용한 작별 인사를 나눴어요.', ex5 = 'Goodbye for now — see you next week!', ex5_ko = '오늘은 안녕히 가세요 — 다음 주에 봐요!' WHERE id = 'nuc_greeting_06';
UPDATE nuances SET ex4 = 'I have a few acquaintances in the neighborhood.', ex4_ko = '저는 동네에 지인들이 몇 명 있어요.', ex5 = 'A true friend listens without judging.', ex5_ko = '진정한 친구는 판단하지 않고 들어줘요.' WHERE id = 'nuc_greeting_07';
UPDATE nuances SET ex4 = 'The street felt familiar even after twenty years away.', ex4_ko = '20년 떠나 있었는데도 그 거리는 친숙하게 느껴졌어요.', ex5 = 'They share an intimate bond after going through that together.', ex5_ko = '그 일을 함께 겪은 후 그들은 친밀한 유대를 나눠요.' WHERE id = 'nuc_greeting_08';
UPDATE nuances SET ex4 = 'The dinner was formal and required a black tie.', ex4_ko = '그 저녁 식사는 격식 있고 정장이 필요했어요.', ex5 = 'She''s always polite, even when she disagrees.', ex5_ko = '그녀는 의견이 다를 때도 항상 정중해요.' WHERE id = 'nuc_greeting_09';
UPDATE nuances SET ex4 = 'We chatted briefly in the lobby before the meeting.', ex4_ko = '회의 전에 우리는 로비에서 잠깐 잡담을 나눴어요.', ex5 = 'They conversed politely throughout the dinner.', ex5_ko = '그들은 저녁 식사 내내 정중하게 대화했어요.' WHERE id = 'nuc_greeting_10';
UPDATE nuances SET ex4 = 'In formal letters, please address the recipient as "Dear Madam."', ex4_ko = '공식 편지에서는 수신자를 "Dear Madam"이라고 호칭하세요.', ex5 = 'Everyone just calls him by his first name at the office.', ex5_ko = '사무실에서 모두가 그를 이름으로 불러요.' WHERE id = 'nuc_greeting_11';
UPDATE nuances SET ex4 = 'The CEO gave a cordial response to the journalist''s questions.', ex4_ko = 'CEO는 기자의 질문에 정중하고 친절하게 답했어요.', ex5 = 'Her smile was so warm that it instantly relaxed everyone.', ex5_ko = '그녀의 미소가 너무 따뜻해서 즉시 모두를 편안하게 했어요.' WHERE id = 'nuc_greeting_12';
UPDATE nuances SET ex4 = 'The salutation in formal emails matters more than most people think.', ex4_ko = '공식 이메일의 인사말은 사람들이 생각하는 것보다 더 중요해요.', ex5 = 'A simple greeting can change someone''s entire day.', ex5_ko = '간단한 인사가 누군가의 하루를 완전히 바꿀 수 있어요.' WHERE id = 'nuc_greeting_13';

-- ══════════════════════════════════════
-- EMOTION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I''m so glad you decided to join us tonight.', ex4_ko = '오늘 밤 함께해 주셔서 정말 기뻐요.', ex5 = 'After years of stress, she finally feels content with her life.', ex5_ko = '몇 년간의 스트레스 끝에 그녀는 마침내 자기 삶에 만족해요.' WHERE id = 'nuc_emotion_01';
UPDATE nuances SET ex4 = 'He was sad to leave his childhood home behind.', ex4_ko = '그는 어린 시절의 집을 떠나는 것이 슬펐어요.', ex5 = 'She was upset to find out she wasn''t invited.', ex5_ko = '그녀는 자기가 초대받지 못했다는 걸 알고 속상했어요.' WHERE id = 'nuc_emotion_02';
UPDATE nuances SET ex4 = 'I get annoyed when people interrupt during meetings.', ex4_ko = '저는 회의 중에 사람들이 말을 끊으면 짜증이 나요.', ex5 = 'He was furious about the unfair decision.', ex5_ko = '그는 불공정한 결정에 격노했어요.' WHERE id = 'nuc_emotion_03';
UPDATE nuances SET ex4 = 'I''m a little scared of presenting in front of so many people.', ex4_ko = '저는 그렇게 많은 사람 앞에서 발표하는 게 조금 무서워요.', ex5 = 'She was terrified during the turbulence on the flight.', ex5_ko = '그녀는 비행기 난기류 동안 공포에 질렸어요.' WHERE id = 'nuc_emotion_04';
UPDATE nuances SET ex4 = 'The kids were excited to open their birthday gifts.', ex4_ko = '아이들은 생일 선물을 열어보는 것에 신이 났어요.', ex5 = 'He''s enthusiastic about cooking and learns a new recipe every week.', ex5_ko = '그는 요리에 열정적이어서 매주 새 요리법을 배워요.' WHERE id = 'nuc_emotion_05';
UPDATE nuances SET ex4 = 'I felt embarrassed when I tripped in front of everyone.', ex4_ko = '저는 모두 앞에서 넘어졌을 때 부끄러웠어요.', ex5 = 'He was ashamed of the way he had spoken to her.', ex5_ko = '그는 그녀에게 말한 방식이 부끄러웠어요.' WHERE id = 'nuc_emotion_06';
UPDATE nuances SET ex4 = 'We''re worried that the train might be cancelled.', ex4_ko = '우리는 기차가 취소될까 봐 걱정해요.', ex5 = 'She felt anxious before her first day at the new job.', ex5_ko = '그녀는 새 직장 첫날 전에 불안했어요.' WHERE id = 'nuc_emotion_07';
UPDATE nuances SET ex4 = 'He felt lonely on holidays when his family was far away.', ex4_ko = '그는 가족이 멀리 있는 휴일에 외로움을 느꼈어요.', ex5 = 'She prefers to walk alone in the morning.', ex5_ko = '그녀는 아침에 혼자 걷는 걸 선호해요.' WHERE id = 'nuc_emotion_08';
UPDATE nuances SET ex4 = 'He''s jealous of the attention his sister gets.', ex4_ko = '그는 누나가 받는 관심을 질투해요.', ex5 = 'I''m envious of how organized her closet is.', ex5_ko = '저는 그녀의 옷장이 얼마나 정리되어 있는지 부러워요.' WHERE id = 'nuc_emotion_09';
UPDATE nuances SET ex4 = 'We were disappointed by the slow service at the restaurant.', ex4_ko = '우리는 식당의 느린 서비스에 실망했어요.', ex5 = 'He felt discouraged but kept practicing every day.', ex5_ko = '그는 낙담했지만 매일 연습을 계속했어요.' WHERE id = 'nuc_emotion_10';
UPDATE nuances SET ex4 = 'We received many messages of sympathy after the loss.', ex4_ko = '상실 후 우리는 많은 동정의 메시지를 받았어요.', ex5 = 'Empathy helps us truly understand other people''s experiences.', ex5_ko = '공감은 우리가 다른 사람의 경험을 진정으로 이해하는 데 도움이 돼요.' WHERE id = 'nuc_emotion_11';
UPDATE nuances SET ex4 = 'There was a quiet melancholy in the old photograph.', ex4_ko = '오래된 사진 속에 조용한 우울함이 있었어요.', ex5 = 'The community shared in his sorrow at the funeral.', ex5_ko = '지역사회는 장례식에서 그의 슬픔을 함께했어요.' WHERE id = 'nuc_emotion_12';
UPDATE nuances SET ex4 = 'She was elated when she received the acceptance letter.', ex4_ko = '그녀는 합격 통지서를 받았을 때 들뜬 기분이었어요.', ex5 = 'He felt euphoric after crossing the marathon finish line.', ex5_ko = '그는 마라톤 결승선을 넘은 후 황홀한 기분을 느꼈어요.' WHERE id = 'nuc_emotion_13';

-- ══════════════════════════════════════
-- WEATHER
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'It looks like it''s going to rain all weekend.', ex4_ko = '주말 내내 비가 올 것 같아요.', ex5 = 'A light drizzle is falling outside the window.', ex5_ko = '창문 밖에는 가벼운 이슬비가 내리고 있어요.' WHERE id = 'nuc_weather_01';
UPDATE nuances SET ex4 = 'A cool breeze made the afternoon perfect for a picnic.', ex4_ko = '시원한 산들바람이 오후를 소풍하기에 완벽하게 만들었어요.', ex5 = 'A strong wind blew dust across the road.', ex5_ko = '강한 바람이 도로 너머로 먼지를 날렸어요.' WHERE id = 'nuc_weather_02';
UPDATE nuances SET ex4 = 'It''s a bit cloudy, but I think the sun will come out.', ex4_ko = '약간 흐리지만 해가 나올 것 같아요.', ex5 = 'The morning was overcast and cool.', ex5_ko = '아침은 완전히 흐리고 시원했어요.' WHERE id = 'nuc_weather_03';
UPDATE nuances SET ex4 = 'It''s too hot to walk outside at midday.', ex4_ko = '한낮에는 밖에서 걷기 너무 더워요.', ex5 = 'The kitchen was warm and smelled of fresh bread.', ex5_ko = '주방은 따뜻하고 갓 구운 빵 냄새가 났어요.' WHERE id = 'nuc_weather_04';
UPDATE nuances SET ex4 = 'It''s a bit chilly tonight — grab a sweater.', ex4_ko = '오늘 밤 좀 쌀쌀해요 — 스웨터 챙기세요.', ex5 = 'It''s absolutely freezing — my fingers are numb.', ex5_ko = '진짜 너무 추워요 — 손가락이 무감각해요.' WHERE id = 'nuc_weather_05';
UPDATE nuances SET ex4 = 'A big storm is heading toward the coast tonight.', ex4_ko = '큰 폭풍이 오늘 밤 해안으로 향하고 있어요.', ex5 = 'There were scattered showers throughout the morning.', ex5_ko = '아침 내내 곳곳에 소나기가 내렸어요.' WHERE id = 'nuc_weather_06';
UPDATE nuances SET ex4 = 'Thick fog made driving very dangerous.', ex4_ko = '짙은 안개로 운전이 매우 위험했어요.', ex5 = 'A soft mist covered the valley at dawn.', ex5_ko = '새벽에 부드러운 안개가 골짜기를 덮었어요.' WHERE id = 'nuc_weather_07';
UPDATE nuances SET ex4 = 'It was so humid that my hair frizzed up.', ex4_ko = '너무 습해서 제 머리가 부풀어 올랐어요.', ex5 = 'It''s muggy outside — I''d rather stay indoors.', ex5_ko = '밖이 후텁지근해서 — 그냥 실내에 있고 싶어요.' WHERE id = 'nuc_weather_08';
UPDATE nuances SET ex4 = 'Lightning lit up the whole sky for a second.', ex4_ko = '번개가 1초간 하늘 전체를 비췄어요.', ex5 = 'The thunder rumbled for almost ten seconds.', ex5_ko = '천둥이 거의 10초 동안 울렸어요.' WHERE id = 'nuc_weather_09';
UPDATE nuances SET ex4 = 'The forecast says it''ll be sunny all weekend.', ex4_ko = '예보에 따르면 주말 내내 맑을 거예요.', ex5 = 'Economists predicted rising prices for the next year.', ex5_ko = '경제학자들은 내년 가격 상승을 예측했어요.' WHERE id = 'nuc_weather_10';
UPDATE nuances SET ex4 = 'A blizzard kept us inside for the entire day.', ex4_ko = '눈보라로 우리는 하루 종일 실내에 있었어요.', ex5 = 'A heavy snowstorm closed every road in the area.', ex5_ko = '폭설로 그 지역 모든 도로가 폐쇄됐어요.' WHERE id = 'nuc_weather_11';
UPDATE nuances SET ex4 = 'The temperate climate makes spring last for weeks.', ex4_ko = '온화한 기후 덕분에 봄이 몇 주간 지속돼요.', ex5 = 'It was a mild day perfect for a long walk.', ex5_ko = '긴 산책에 완벽한 온화한 날이었어요.' WHERE id = 'nuc_weather_12';
UPDATE nuances SET ex4 = 'The arid landscape stretched for miles without any trees.', ex4_ko = '건조한 풍경이 나무 한 그루 없이 몇 마일 펼쳐졌어요.', ex5 = 'The drought finally ended after months of light rain.', ex5_ko = '가뭄이 몇 달간의 약한 비 끝에 마침내 끝났어요.' WHERE id = 'nuc_weather_13';

-- ══════════════════════════════════════
-- SHOPPING
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I''m going to buy some bread on the way home.', ex4_ko = '저는 집에 가는 길에 빵을 좀 사려고 해요.', ex5 = 'You can purchase tickets in advance through the app.', ex5_ko = '앱으로 미리 티켓을 구매하실 수 있어요.' WHERE id = 'nuc_shopping_01';
UPDATE nuances SET ex4 = 'The shoes were cheap, but they fell apart in a month.', ex4_ko = '신발은 쌌지만 한 달 만에 망가졌어요.', ex5 = 'This restaurant is surprisingly inexpensive and delicious.', ex5_ko = '이 식당은 놀라울 정도로 저렴하고 맛있어요.' WHERE id = 'nuc_shopping_02';
UPDATE nuances SET ex4 = 'Students get a discount with a valid ID.', ex4_ko = '학생들은 유효한 학생증으로 할인을 받아요.', ex5 = 'Everything in the shop is on sale this week.', ex5_ko = '이번 주에는 매장 모든 것이 세일이에요.' WHERE id = 'nuc_shopping_03';
UPDATE nuances SET ex4 = 'I''d like a refund — the item was faulty.', ex4_ko = '환불받고 싶어요 — 물건에 결함이 있었어요.', ex5 = 'Can I exchange this jacket for a smaller size?', ex5_ko = '이 재킷을 더 작은 사이즈로 교환할 수 있어요?' WHERE id = 'nuc_shopping_04';
UPDATE nuances SET ex4 = 'The price of vegetables has gone up sharply.', ex4_ko = '채소 가격이 가파르게 올랐어요.', ex5 = 'The cost of living is high in big cities.', ex5_ko = '대도시의 생활비가 높아요.' WHERE id = 'nuc_shopping_05';
UPDATE nuances SET ex4 = 'I got a real bargain at the antique fair last weekend.', ex4_ko = '지난 주말 골동품 박람회에서 정말 싸게 잘 샀어요.', ex5 = 'You can negotiate the price if you''re buying in bulk.', ex5_ko = '대량으로 구매한다면 가격을 협상할 수 있어요.' WHERE id = 'nuc_shopping_06';
UPDATE nuances SET ex4 = 'Always keep your receipt in case of returns.', ex4_ko = '반품에 대비해 항상 영수증을 보관하세요.', ex5 = 'The invoice will be sent to your email after payment.', ex5_ko = '결제 후 청구서가 이메일로 발송돼요.' WHERE id = 'nuc_shopping_07';
UPDATE nuances SET ex4 = 'I was just browsing — nothing in particular caught my eye.', ex4_ko = '그냥 구경 중이었어요 — 특별히 눈에 띄는 건 없었어요.', ex5 = 'She searched online for the best price.', ex5_ko = '그녀는 최고의 가격을 찾으려 온라인에서 검색했어요.' WHERE id = 'nuc_shopping_08';
UPDATE nuances SET ex4 = 'They sell fabric wholesale to local designers.', ex4_ko = '그들은 지역 디자이너들에게 원단을 도매로 팔아요.', ex5 = 'Retail prices vary widely between stores.', ex5_ko = '소매 가격은 매장마다 크게 달라요.' WHERE id = 'nuc_shopping_09';
UPDATE nuances SET ex4 = 'Authorities seized large amounts of counterfeit goods at the border.', ex4_ko = '당국은 국경에서 대량의 위조품을 압수했어요.', ex5 = 'The reviews seemed fake, so I checked more sources.', ex5_ko = '리뷰가 가짜 같아서 더 많은 출처를 확인했어요.' WHERE id = 'nuc_shopping_10';
UPDATE nuances SET ex4 = 'She made an impulse purchase she later regretted.', ex4_ko = '그녀는 나중에 후회한 충동 구매를 했어요.', ex5 = 'It was a spontaneous decision to fly somewhere warm.', ex5_ko = '따뜻한 곳으로 비행기를 타기로 한 즉흥적인 결정이었어요.' WHERE id = 'nuc_shopping_11';
UPDATE nuances SET ex4 = 'She lives a frugal life and saves most of her salary.', ex4_ko = '그녀는 검소한 삶을 살며 월급의 대부분을 저축해요.', ex5 = 'He''s known for being stingy with tips at restaurants.', ex5_ko = '그는 식당 팁에 인색한 것으로 알려져 있어요.' WHERE id = 'nuc_shopping_12';
UPDATE nuances SET ex4 = 'Consumers expect transparency about product ingredients.', ex4_ko = '소비자들은 제품 성분에 대한 투명성을 기대해요.', ex5 = 'The customer asked for a recommendation from the staff.', ex5_ko = '그 고객은 직원에게 추천을 부탁했어요.' WHERE id = 'nuc_shopping_13';

-- ══════════════════════════════════════
-- CAFE
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'What kind of drink would you like with your meal?', ex4_ko = '식사와 함께 어떤 음료를 드시겠어요?', ex5 = 'They serve a wide selection of beverages all day.', ex5_ko = '그들은 종일 다양한 음료를 제공해요.' WHERE id = 'nuc_cafe_01';
UPDATE nuances SET ex4 = 'I asked for a strong coffee with no sugar.', ex4_ko = '저는 설탕 없는 진한 커피를 부탁했어요.', ex5 = 'This dark roast has a bold, smoky finish.', ex5_ko = '이 다크 로스트는 풍부하고 스모키한 풍미가 있어요.' WHERE id = 'nuc_cafe_02';
UPDATE nuances SET ex4 = 'I''d like to order two croissants and a flat white.', ex4_ko = '크루아상 두 개와 플랫 화이트 하나 주문할게요.', ex5 = 'Could I ask for a second napkin, please?', ex5_ko = '냅킨 한 장 더 부탁드려도 될까요?' WHERE id = 'nuc_cafe_03';
UPDATE nuances SET ex4 = 'A latte, please — takeaway.', ex4_ko = '라테 하나요 — 포장이요.', ex5 = 'Is that for here or to go?', ex5_ko = '드시고 가실 건가요, 포장이세요?' WHERE id = 'nuc_cafe_04';
UPDATE nuances SET ex4 = 'A hot chocolate sounds wonderful right now.', ex4_ko = '뜨거운 초콜릿이 지금 딱이겠어요.', ex5 = 'I''ll have an iced americano with two extra shots.', ex5_ko = '아이스 아메리카노에 샷 두 번 추가로 주세요.' WHERE id = 'nuc_cafe_05';
UPDATE nuances SET ex4 = 'This dark chocolate is quite bitter.', ex4_ko = '이 다크 초콜릿은 꽤 써요.', ex5 = 'The yogurt tastes a little sour, but I like it.', ex5_ko = '요거트가 약간 시지만 저는 좋아요.' WHERE id = 'nuc_cafe_06';
UPDATE nuances SET ex4 = 'I''ll have a decaf latte before bed.', ex4_ko = '저는 자기 전에 디카페인 라테 마실게요.', ex5 = 'Most herbal teas are caffeine-free.', ex5_ko = '대부분의 허브차는 무카페인이에요.' WHERE id = 'nuc_cafe_07';
UPDATE nuances SET ex4 = 'A double espresso, please — I''m exhausted.', ex4_ko = '더블 에스프레소 부탁해요 — 너무 피곤해요.', ex5 = 'I usually have an Americano with breakfast.', ex5_ko = '저는 보통 아침 식사와 함께 아메리카노를 마셔요.' WHERE id = 'nuc_cafe_08';
UPDATE nuances SET ex4 = 'The aroma of cinnamon filled the entire cafe.', ex4_ko = '시나몬 향이 카페 전체를 가득 채웠어요.', ex5 = 'This blend has a chocolatey, nutty flavor.', ex5_ko = '이 블렌드는 초콜릿 향과 견과류 풍미가 있어요.' WHERE id = 'nuc_cafe_09';
UPDATE nuances SET ex4 = 'This little cafe is so cozy on rainy days.', ex4_ko = '비 오는 날 이 작은 카페는 정말 아늑해요.', ex5 = 'These chairs are surprisingly comfortable for long study sessions.', ex5_ko = '이 의자들은 긴 공부 시간에 놀랍게 편안해요.' WHERE id = 'nuc_cafe_06b';
UPDATE nuances SET ex4 = 'They sell artisan bread baked fresh every morning.', ex4_ko = '그들은 매일 아침 신선하게 구운 장인 빵을 팔아요.', ex5 = 'This specialty coffee comes from a single farm in Ethiopia.', ex5_ko = '이 스페셜티 커피는 에티오피아의 한 농장에서 와요.' WHERE id = 'nuc_cafe_11';
UPDATE nuances SET ex4 = 'The ambient music made the studying easier.', ex4_ko = '배경 음악이 공부를 더 쉽게 만들었어요.', ex5 = 'The atmosphere in that bookshop is calm and inviting.', ex5_ko = '그 서점의 분위기는 차분하고 따뜻해요.' WHERE id = 'nuc_cafe_12';
UPDATE nuances SET ex4 = 'A coffee connoisseur can tell beans apart by aroma alone.', ex4_ko = '커피 전문 감식가는 향만으로도 원두를 구별할 수 있어요.', ex5 = 'He''s a coffee enthusiast who visits a new cafe each weekend.', ex5_ko = '그는 매 주말 새 카페를 방문하는 커피 애호가예요.' WHERE id = 'nuc_cafe_13';

-- ══════════════════════════════════════
-- TRANSPORT
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I ride my bike to school every day.', ex4_ko = '저는 매일 자전거를 타고 학교에 가요.', ex5 = 'She drives a small electric car for her commute.', ex5_ko = '그녀는 작은 전기차로 출퇴근해요.' WHERE id = 'nuc_transport_01';
UPDATE nuances SET ex4 = 'The bus is rarely on time during rush hour.', ex4_ko = '버스는 출퇴근 시간에 거의 정시에 오지 않아요.', ex5 = 'I made it in time for the last train home.', ex5_ko = '저는 마지막 귀가 기차를 놓치지 않게 도착했어요.' WHERE id = 'nuc_transport_02';
UPDATE nuances SET ex4 = 'I lost my ticket somewhere on the platform.', ex4_ko = '저는 플랫폼 어디선가 표를 잃어버렸어요.', ex5 = 'A monthly pass saves a lot of money if you ride daily.', ex5_ko = '매일 타신다면 월 정기권이 돈을 많이 절약해 줘요.' WHERE id = 'nuc_transport_03';
UPDATE nuances SET ex4 = 'Our flight was delayed by an hour due to weather.', ex4_ko = '저희 비행기가 날씨로 한 시간 지연됐어요.', ex5 = 'They had to cancel the trip because of the typhoon.', ex5_ko = '태풍 때문에 그들은 여행을 취소해야 했어요.' WHERE id = 'nuc_transport_04';
UPDATE nuances SET ex4 = 'The bus fare has gone up by 20% this year.', ex4_ko = '버스 요금이 올해 20% 올랐어요.', ex5 = 'There''s a toll booth just before the bridge.', ex5_ko = '다리 직전에 통행료 부스가 있어요.' WHERE id = 'nuc_transport_05';
UPDATE nuances SET ex4 = 'You can transfer to the green line at the next stop.', ex4_ko = '다음 정류장에서 녹색 노선으로 환승할 수 있어요.', ex5 = 'We''re in transit and our luggage is on the next plane.', ex5_ko = '저희는 경유 중이고 짐은 다음 비행기에 있어요.' WHERE id = 'nuc_transport_06';
UPDATE nuances SET ex4 = 'Passengers will begin to board in five minutes.', ex4_ko = '승객들은 5분 안에 탑승을 시작합니다.', ex5 = 'The crew prepared to embark on the long voyage.', ex5_ko = '승무원들은 긴 항해를 떠날 준비를 했어요.' WHERE id = 'nuc_transport_07';
UPDATE nuances SET ex4 = 'There''s always heavy traffic in the city centre after five.', ex4_ko = '시내 중심부에는 5시 이후 항상 교통량이 많아요.', ex5 = 'Congestion charges are common in many large cities now.', ex5_ko = '많은 대도시에서 이제 혼잡 통행료가 흔해요.' WHERE id = 'nuc_transport_08';
UPDATE nuances SET ex4 = 'Her daily commute takes about an hour each way.', ex4_ko = '그녀의 매일 통근은 편도 약 한 시간이 걸려요.', ex5 = 'They travel to a different city every weekend.', ex5_ko = '그들은 매 주말 다른 도시로 여행해요.' WHERE id = 'nuc_transport_09';
UPDATE nuances SET ex4 = 'We had to take a long detour because of the closure.', ex4_ko = '폐쇄로 우리는 긴 우회로를 가야 했어요.', ex5 = 'She always takes a shortcut through the back streets.', ex5_ko = '그녀는 항상 뒷길로 지름길을 가요.' WHERE id = 'nuc_transport_10';
UPDATE nuances SET ex4 = 'Our travel agent sent us a beautifully detailed itinerary.', ex4_ko = '여행사가 아름답게 자세한 일정표를 보내줬어요.', ex5 = 'The bus schedule is posted at every stop.', ex5_ko = '버스 시간표가 모든 정류장에 게시되어 있어요.' WHERE id = 'nuc_transport_11';
UPDATE nuances SET ex4 = 'It took twenty minutes to hail a taxi during the storm.', ex4_ko = '폭풍 동안 택시를 잡는 데 20분이 걸렸어요.', ex5 = 'He flagged down a bus that wasn''t on his usual line.', ex5_ko = '그는 평소 노선이 아닌 버스를 손짓으로 세웠어요.' WHERE id = 'nuc_transport_12';
UPDATE nuances SET ex4 = 'The city is upgrading its transport infrastructure.', ex4_ko = '도시가 교통 인프라를 업그레이드하고 있어요.', ex5 = 'Strong logistics make next-day delivery possible.', ex5_ko = '강력한 물류 시스템 덕분에 익일 배송이 가능해요.' WHERE id = 'nuc_transport_13';

-- ══════════════════════════════════════
-- HEALTH
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'She''s been sick with the flu for three days.', ex4_ko = '그녀는 3일째 독감으로 아파요.', ex5 = 'He was too ill to attend the meeting.', ex5_ko = '그는 회의에 참석하기 너무 아팠어요.' WHERE id = 'nuc_health_01';
UPDATE nuances SET ex4 = 'A sudden pain in my knee made me sit down.', ex4_ko = '무릎에 갑작스러운 통증이 와서 저는 앉았어요.', ex5 = 'I''ve had a dull ache in my shoulder all day.', ex5_ko = '하루 종일 어깨에 은은한 통증이 있어요.' WHERE id = 'nuc_health_02';
UPDATE nuances SET ex4 = 'List your symptoms so the doctor can help.', ex4_ko = '의사가 도울 수 있도록 증상을 나열해 주세요.', ex5 = 'A high fever can be a sign of infection.', ex5_ko = '고열은 감염의 징후일 수 있어요.' WHERE id = 'nuc_health_03';
UPDATE nuances SET ex4 = 'Scientists are searching for a cure for the disease.', ex4_ko = '과학자들은 그 질병의 치료법을 찾고 있어요.', ex5 = 'The clinic treats patients of all ages.', ex5_ko = '그 병원은 모든 연령의 환자를 치료해요.' WHERE id = 'nuc_health_04';
UPDATE nuances SET ex4 = 'Please consult a physician about long-term medication.', ex4_ko = '장기 약물 복용에 대해서는 의사와 상의하세요.', ex5 = 'My doctor recommended more exercise and better sleep.', ex5_ko = '의사가 더 많은 운동과 더 나은 수면을 권장했어요.' WHERE id = 'nuc_health_05';
UPDATE nuances SET ex4 = 'A balanced diet is more sustainable than extreme rules.', ex4_ko = '균형 잡힌 식단이 극단적인 규칙보다 지속 가능해요.', ex5 = 'Good nutrition supports immune health.', ex5_ko = '좋은 영양 섭취가 면역 건강을 뒷받침해요.' WHERE id = 'nuc_health_06';
UPDATE nuances SET ex4 = 'She has a severe peanut allergy and carries an EpiPen.', ex4_ko = '그녀는 심한 땅콩 알레르기가 있어 에피펜을 가지고 다녀요.', ex5 = 'Many people have lactose intolerance without knowing it.', ex5_ko = '많은 사람들이 자기도 모르게 유당 불내성이 있어요.' WHERE id = 'nuc_health_07';
UPDATE nuances SET ex4 = 'The pharmacy is open 24 hours near the hospital.', ex4_ko = '병원 근처 약국은 24시간 영업해요.', ex5 = 'I picked up shampoo and ibuprofen at the drugstore.', ex5_ko = '저는 드럭스토어에서 샴푸와 이부프로펜을 샀어요.' WHERE id = 'nuc_health_08';
UPDATE nuances SET ex4 = 'He''s lived with chronic pain for years.', ex4_ko = '그는 수년간 만성 통증과 함께 살아왔어요.', ex5 = 'Acute stress can affect your sleep quickly.', ex5_ko = '급성 스트레스는 수면에 빠르게 영향을 줄 수 있어요.' WHERE id = 'nuc_health_09';
UPDATE nuances SET ex4 = 'The flu epidemic peaked in mid-January.', ex4_ko = '독감 유행이 1월 중순에 정점을 찍었어요.', ex5 = 'The pandemic changed how the whole world worked.', ex5_ko = '팬데믹은 전 세계가 일하는 방식을 바꿨어요.' WHERE id = 'nuc_health_10';
UPDATE nuances SET ex4 = 'A clear diagnosis can take several tests.', ex4_ko = '명확한 진단을 받으려면 여러 검사가 필요할 수 있어요.', ex5 = 'The prognosis improved after the new treatment.', ex5_ko = '새 치료 후 예후가 개선됐어요.' WHERE id = 'nuc_health_11';
UPDATE nuances SET ex4 = 'The placebo effect can be surprisingly strong in pain studies.', ex4_ko = '위약 효과는 통증 연구에서 놀랍게 강력할 수 있어요.', ex5 = 'The nocebo effect explains how negative expectations cause real symptoms.', ex5_ko = '노시보 효과는 부정적 기대가 실제 증상을 일으키는 방식을 설명해요.' WHERE id = 'nuc_health_12';
UPDATE nuances SET ex4 = 'Her rehabilitation included daily physical therapy.', ex4_ko = '그녀의 재활은 매일 물리치료를 포함했어요.', ex5 = 'His recovery surprised even his doctors.', ex5_ko = '그의 회복은 의사들조차 놀라게 했어요.' WHERE id = 'nuc_health_13';

-- ══════════════════════════════════════
-- TRAVEL
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'We''re taking a short trip to the countryside this weekend.', ex4_ko = '이번 주말 시골로 짧은 여행을 가요.', ex5 = 'The long journey home felt even longer in traffic.', ex5_ko = '집에 가는 긴 여정은 교통 체증 속에서 더 길게 느껴졌어요.' WHERE id = 'nuc_travel_01';
UPDATE nuances SET ex4 = 'My luggage was too heavy to lift onto the train.', ex4_ko = '제 짐이 너무 무거워서 기차에 올리기 힘들었어요.', ex5 = 'We''ll collect our baggage at carousel three.', ex5_ko = '저희는 3번 컨베이어에서 짐을 찾을 거예요.' WHERE id = 'nuc_travel_02';
UPDATE nuances SET ex4 = 'Don''t forget to check your passport expiration date.', ex4_ko = '여권 만료일 확인을 잊지 마세요.', ex5 = 'Some countries grant visas on arrival.', ex5_ko = '일부 나라들은 도착 시 비자를 발급해 줘요.' WHERE id = 'nuc_travel_03';
UPDATE nuances SET ex4 = 'We chose a small boutique hotel near the river.', ex4_ko = '강 근처 작은 부티크 호텔을 골랐어요.', ex5 = 'Hostels are great places to meet other travelers.', ex5_ko = '호스텔은 다른 여행자들을 만나기 좋은 곳이에요.' WHERE id = 'nuc_travel_04';
UPDATE nuances SET ex4 = 'I''d like to make a reservation for two at 7 p.m.', ex4_ko = '저녁 7시에 2인 예약하고 싶어요.', ex5 = 'You can confirm your booking by email.', ex5_ko = '이메일로 예약을 확인할 수 있어요.' WHERE id = 'nuc_travel_05';
UPDATE nuances SET ex4 = 'We spent the morning sightseeing in the old town.', ex4_ko = '오전에 구시가지에서 관광했어요.', ex5 = 'Tourism is a major industry for this small country.', ex5_ko = '관광은 이 작은 나라의 주요 산업이에요.' WHERE id = 'nuc_travel_06';
UPDATE nuances SET ex4 = 'She brought back a small souvenir from each city.', ex4_ko = '그녀는 각 도시에서 작은 기념품을 가져왔어요.', ex5 = 'I keep this seashell as a memento of our beach trip.', ex5_ko = '저는 이 조개껍데기를 우리 해변 여행의 추억으로 간직해요.' WHERE id = 'nuc_travel_07';
UPDATE nuances SET ex4 = 'The itinerary lists three museums for tomorrow.', ex4_ko = '여행 일정표에는 내일 세 박물관이 적혀 있어요.', ex5 = 'We took the coastal route to enjoy the views.', ex5_ko = '경치를 즐기기 위해 해안 경로로 갔어요.' WHERE id = 'nuc_travel_08';
UPDATE nuances SET ex4 = 'Some countries don''t use their own currency anymore.', ex4_ko = '어떤 나라들은 더 이상 자국 통화를 쓰지 않아요.', ex5 = 'The exchange rate is best at official kiosks.', ex5_ko = '환율은 공식 키오스크가 가장 좋아요.' WHERE id = 'nuc_travel_09';
UPDATE nuances SET ex4 = 'Jet lag hit me hard after the trip to New York.', ex4_ko = '뉴욕 여행 후 시차 피로가 심하게 왔어요.', ex5 = 'Travel fatigue can build up over many short trips.', ex5_ko = '여행 피로는 여러 짧은 여행에 걸쳐 쌓일 수 있어요.' WHERE id = 'nuc_travel_10';
UPDATE nuances SET ex4 = 'Many expats settle in Seoul for the food and culture.', ex4_ko = '많은 주재원들이 음식과 문화 때문에 서울에 정착해요.', ex5 = 'Immigrants bring rich cultural diversity to their new countries.', ex5_ko = '이민자들은 새 나라에 풍부한 문화적 다양성을 가져와요.' WHERE id = 'nuc_travel_11';
UPDATE nuances SET ex4 = 'She lives a nomadic life working from cafes around the world.', ex4_ko = '그녀는 세계 곳곳의 카페에서 일하며 유목적인 삶을 살아요.', ex5 = 'A transient crowd fills the train station every weekend.', ex5_ko = '주말마다 일시적인 인파가 기차역을 가득 채워요.' WHERE id = 'nuc_travel_12';
UPDATE nuances SET ex4 = 'They traversed the desert in just over a week.', ex4_ko = '그들은 일주일 조금 넘게 사막을 횡단했어요.', ex5 = 'I had to navigate through unfamiliar streets late at night.', ex5_ko = '저는 늦은 밤 낯선 거리를 찾아가야 했어요.' WHERE id = 'nuc_travel_13';

-- ══════════════════════════════════════
-- HOME
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'They bought a beautiful old house by the lake.', ex4_ko = '그들은 호숫가의 아름다운 오래된 집을 샀어요.', ex5 = 'No matter where I go, I always feel best at home.', ex5_ko = '어디를 가든 저는 항상 집에서 가장 편안하게 느껴져요.' WHERE id = 'nuc_home_01';
UPDATE nuances SET ex4 = 'They picked out cozy furniture for the new flat.', ex4_ko = '그들은 새 아파트를 위해 아늑한 가구를 골랐어요.', ex5 = 'Modern appliances make daily chores much easier.', ex5_ko = '현대 가전제품이 일상 잡일을 훨씬 쉽게 만들어줘요.' WHERE id = 'nuc_home_02';
UPDATE nuances SET ex4 = 'She rents a small apartment downtown.', ex4_ko = '그녀는 시내에 작은 아파트를 임대해요.', ex5 = 'They signed a two-year lease last week.', ex5_ko = '그들은 지난주 2년 임대 계약을 체결했어요.' WHERE id = 'nuc_home_03';
UPDATE nuances SET ex4 = 'My daughter''s room is always tidy and welcoming.', ex4_ko = '제 딸의 방은 항상 정돈되어 있고 따뜻해요.', ex5 = 'The kitchen needs a deep clean after the party.', ex5_ko = '파티 후 주방은 대청소가 필요해요.' WHERE id = 'nuc_home_04';
UPDATE nuances SET ex4 = 'We need to repair the leaky faucet this weekend.', ex4_ko = '이번 주말 새는 수도꼭지를 수리해야 해요.', ex5 = 'They renovated the entire basement into a guest suite.', ex5_ko = '그들은 지하실 전체를 게스트 스위트룸으로 리모델링했어요.' WHERE id = 'nuc_home_05';
UPDATE nuances SET ex4 = 'My neighbor brought over freshly baked cookies.', ex4_ko = '제 이웃이 갓 구운 쿠키를 가져다 줬어요.', ex5 = 'Our neighborhood has changed a lot in the last decade.', ex5_ko = '저희 동네는 지난 10년간 많이 변했어요.' WHERE id = 'nuc_home_06';
UPDATE nuances SET ex4 = 'They''re still paying off the mortgage on their first house.', ex4_ko = '그들은 첫 집의 주택 담보 대출을 아직 갚고 있어요.', ex5 = 'She took out a small loan for her home renovation.', ex5_ko = '그녀는 집 리노베이션을 위해 작은 대출을 받았어요.' WHERE id = 'nuc_home_07';
UPDATE nuances SET ex4 = 'It''s a cozy studio with great natural light.', ex4_ko = '자연 채광이 좋은 아늑한 스튜디오예요.', ex5 = 'The apartment felt cramped with all the furniture.', ex5_ko = '모든 가구가 들어가니 아파트가 비좁게 느껴졌어요.' WHERE id = 'nuc_home_08';
UPDATE nuances SET ex4 = 'My landlord responded quickly to the repair request.', ex4_ko = '저희 집주인은 수리 요청에 빠르게 응답했어요.', ex5 = 'The tenant signed the lease and moved in the next day.', ex5_ko = '그 세입자는 계약서에 서명하고 다음 날 이사 들어왔어요.' WHERE id = 'nuc_home_09';
UPDATE nuances SET ex4 = 'The interior is decorated in warm earth tones.', ex4_ko = '내부는 따뜻한 어스 톤으로 꾸며져 있어요.', ex5 = 'The exterior could use a fresh coat of paint.', ex5_ko = '외부는 페인트 새로 칠하면 좋겠어요.' WHERE id = 'nuc_home_10';
UPDATE nuances SET ex4 = 'Utilities and internet are included in the rent.', ex4_ko = '공과금과 인터넷은 임대료에 포함돼 있어요.', ex5 = 'The building''s amenities include a small gym.', ex5_ko = '건물 편의시설로는 작은 헬스장이 있어요.' WHERE id = 'nuc_home_11';
UPDATE nuances SET ex4 = 'The third-floor flat has been vacant since spring.', ex4_ko = '3층 아파트는 봄부터 비어 있어요.', ex5 = 'Is that two-bedroom unit still available for rent?', ex5_ko = '그 침실 두 개짜리 집은 아직 임대 가능한가요?' WHERE id = 'nuc_home_12';
UPDATE nuances SET ex4 = 'The new dwellings meet stricter safety standards.', ex4_ko = '새 거처들은 더 엄격한 안전 기준을 충족해요.', ex5 = '"Welcome to my humble abode," she said with a smile.', ex5_ko = '"제 누추한 거처에 오신 것을 환영해요," 그녀는 미소 지으며 말했어요.' WHERE id = 'nuc_home_13';

-- ══════════════════════════════════════
-- WORK
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I started a new job last month at a small studio.', ex4_ko = '저는 지난달 작은 스튜디오에서 새 직장을 시작했어요.', ex5 = 'Her career in journalism has spanned three decades.', ex5_ko = '그녀의 저널리즘 경력은 30년에 걸쳐요.' WHERE id = 'nuc_work_01';
UPDATE nuances SET ex4 = 'My boss is very supportive of my growth.', ex4_ko = '제 상사는 제 성장을 매우 지지해 주세요.', ex5 = 'The product manager scheduled a kickoff meeting.', ex5_ko = '제품 매니저가 킥오프 회의를 잡았어요.' WHERE id = 'nuc_work_02';
UPDATE nuances SET ex4 = 'Her salary doubled after the promotion.', ex4_ko = '승진 후 그녀의 월급이 두 배가 됐어요.', ex5 = 'Many part-time workers earn an hourly wage.', ex5_ko = '많은 시간제 근로자들이 시급을 받아요.' WHERE id = 'nuc_work_03';
UPDATE nuances SET ex4 = 'Please complete this task before lunch.', ex4_ko = '점심 전에 이 업무를 완료해 주세요.', ex5 = 'The project ran for nine months and involved five teams.', ex5_ko = '그 프로젝트는 9개월간 진행됐고 다섯 팀이 참여했어요.' WHERE id = 'nuc_work_04';
UPDATE nuances SET ex4 = 'I have lunch with my colleagues every Wednesday.', ex4_ko = '저는 매주 수요일 동료들과 점심을 먹어요.', ex5 = 'My coworker brought homemade cookies for everyone.', ex5_ko = '제 동료가 모두를 위해 수제 쿠키를 가져왔어요.' WHERE id = 'nuc_work_05';
UPDATE nuances SET ex4 = 'He plans to resign after finding a better offer.', ex4_ko = '그는 더 나은 제안을 찾은 후 사직할 계획이에요.', ex5 = 'She''s planning to retire and travel the world.', ex5_ko = '그녀는 은퇴하고 세계를 여행할 계획이에요.' WHERE id = 'nuc_work_06';
UPDATE nuances SET ex4 = 'The deadline is tomorrow at 5 p.m. — no extensions.', ex4_ko = '마감은 내일 오후 5시예요 — 연장 없어요.', ex5 = 'Your library book has a due date of June 10.', ex5_ko = '도서관 책의 반납 기한은 6월 10일이에요.' WHERE id = 'nuc_work_07';
UPDATE nuances SET ex4 = 'Working remotely lets me see my kids more often.', ex4_ko = '재택근무 덕분에 아이들을 더 자주 볼 수 있어요.', ex5 = 'Our hybrid model has worked well for the past year.', ex5_ko = '저희 혼합 근무 모델은 작년에 잘 작동했어요.' WHERE id = 'nuc_work_08';
UPDATE nuances SET ex4 = 'Mornings are my most productive time of day.', ex4_ko = '아침이 제 하루 중 가장 생산적인 시간이에요.', ex5 = 'A more efficient process saved the team weeks of work.', ex5_ko = '더 효율적인 프로세스가 팀의 몇 주 작업을 절약해 줬어요.' WHERE id = 'nuc_work_09';
UPDATE nuances SET ex4 = 'A good leader knows how to delegate effectively.', ex4_ko = '좋은 리더는 효과적으로 위임하는 법을 알아요.', ex5 = 'The professor assigned a 10-page paper for next month.', ex5_ko = '교수님은 다음 달까지 10페이지 논문을 배정했어요.' WHERE id = 'nuc_work_10';
UPDATE nuances SET ex4 = 'Her annual appraisal showed strong results.', ex4_ko = '그녀의 연간 인사 고과는 좋은 결과를 보였어요.', ex5 = 'The team conducted a thorough evaluation of the new software.', ex5_ko = '팀은 새 소프트웨어에 대한 철저한 평가를 진행했어요.' WHERE id = 'nuc_work_11';
UPDATE nuances SET ex4 = 'After the merger, several roles faced redundancy.', ex4_ko = '합병 후 여러 직무가 정리 해고에 직면했어요.', ex5 = 'Mass layoffs hit the industry hard last spring.', ex5_ko = '대규모 정리 해고가 지난 봄 그 산업에 큰 타격을 줬어요.' WHERE id = 'nuc_work_12';
UPDATE nuances SET ex4 = 'The remuneration includes a generous bonus structure.', ex4_ko = '보수에는 넉넉한 보너스 구조가 포함돼요.', ex5 = 'Workers received fair compensation for the overtime.', ex5_ko = '근로자들은 초과 근무에 대한 공정한 보상을 받았어요.' WHERE id = 'nuc_work_13';

-- ══════════════════════════════════════
-- EDUCATION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I studied late into the night for the final exam.', ex4_ko = '저는 기말 시험을 위해 밤늦게까지 공부했어요.', ex5 = 'You can learn so much just by traveling.', ex5_ko = '여행만으로도 정말 많은 것을 배울 수 있어요.' WHERE id = 'nuc_education_01';
UPDATE nuances SET ex4 = 'My first English teacher made me love languages.', ex4_ko = '제 첫 영어 선생님이 저에게 언어를 사랑하게 만들어 주셨어요.', ex5 = 'The professor''s lectures attract students from many countries.', ex5_ko = '그 교수님의 강의는 여러 나라의 학생들을 끌어들여요.' WHERE id = 'nuc_education_02';
UPDATE nuances SET ex4 = 'A quick quiz at the start of class keeps everyone alert.', ex4_ko = '수업 시작에 짧은 퀴즈가 모두를 집중하게 해요.', ex5 = 'The final exam covers everything from the semester.', ex5_ko = '기말 시험은 학기 전체를 다뤄요.' WHERE id = 'nuc_education_03';
UPDATE nuances SET ex4 = 'I do my homework at the library after school.', ex4_ko = '저는 방과 후 도서관에서 숙제를 해요.', ex5 = 'The assignment is due next Friday at midnight.', ex5_ko = '과제는 다음 주 금요일 자정까지예요.' WHERE id = 'nuc_education_04';
UPDATE nuances SET ex4 = 'My grade on the project surprised me.', ex4_ko = '그 프로젝트에서 받은 성적이 저를 놀라게 했어요.', ex5 = 'His score on the math test was perfect.', ex5_ko = '수학 시험에서 그의 점수는 만점이었어요.' WHERE id = 'nuc_education_05';
UPDATE nuances SET ex4 = 'She won a full scholarship to an Ivy League school.', ex4_ko = '그녀는 아이비리그 학교의 전액 장학금을 받았어요.', ex5 = 'The lab applied for a research grant from the government.', ex5_ko = '그 실험실은 정부 연구 보조금을 신청했어요.' WHERE id = 'nuc_education_06';
UPDATE nuances SET ex4 = 'The curriculum was updated to include digital literacy.', ex4_ko = '교육과정이 디지털 리터러시를 포함하도록 업데이트됐어요.', ex5 = 'Always read the syllabus carefully on the first day.', ex5_ko = '첫날 강의계획서를 항상 신중히 읽으세요.' WHERE id = 'nuc_education_07';
UPDATE nuances SET ex4 = 'My math tutor helped me improve in just a month.', ex4_ko = '제 수학 튜터가 단 한 달 만에 제가 향상되도록 도와줬어요.', ex5 = 'A good mentor can shape your entire career.', ex5_ko = '좋은 멘토가 당신의 전체 경력을 형성할 수 있어요.' WHERE id = 'nuc_education_08';
UPDATE nuances SET ex4 = 'Rote learning has limits when ideas get complex.', ex4_ko = '암기식 학습은 아이디어가 복잡해질 때 한계가 있어요.', ex5 = 'Critical thinking is the most important skill for university.', ex5_ko = '비판적 사고는 대학에서 가장 중요한 기술이에요.' WHERE id = 'nuc_education_09';
UPDATE nuances SET ex4 = 'She''s a fourth-year undergraduate student in biology.', ex4_ko = '그녀는 생물학 4학년 학부생이에요.', ex5 = 'He''s a graduate student researching marine ecosystems.', ex5_ko = '그는 해양 생태계를 연구하는 대학원생이에요.' WHERE id = 'nuc_education_10';
UPDATE nuances SET ex4 = 'Modern pedagogy focuses on student-centered learning.', ex4_ko = '현대 교육학은 학생 중심 학습에 집중해요.', ex5 = 'Didactics studies how to best teach specific subjects.', ex5_ko = '교수법은 특정 과목을 가장 잘 가르치는 방법을 연구해요.' WHERE id = 'nuc_education_11';
UPDATE nuances SET ex4 = 'The school is currently undergoing accreditation review.', ex4_ko = '그 학교는 현재 인증 심사를 받고 있어요.', ex5 = 'She earned certification as a yoga instructor last year.', ex5_ko = '그녀는 작년에 요가 강사 자격증을 취득했어요.' WHERE id = 'nuc_education_12';
UPDATE nuances SET ex4 = 'Epistemology asks how we can claim to know anything at all.', ex4_ko = '인식론은 우리가 어떻게 무언가를 안다고 주장할 수 있는지 물어요.', ex5 = 'Ontology explores what kinds of things actually exist.', ex5_ko = '존재론은 어떤 종류의 것들이 실제로 존재하는지 탐구해요.' WHERE id = 'nuc_education_13';

-- ══════════════════════════════════════
-- MEDIA
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'I watched two episodes before bed last night.', ex4_ko = '어젯밤 자기 전에 두 화를 봤어요.', ex5 = 'Did you see that incredible play in the game?', ex5_ko = '경기에서 그 놀라운 플레이 봤어요?' WHERE id = 'nuc_media_01';
UPDATE nuances SET ex4 = 'I read the news every morning over coffee.', ex4_ko = '저는 매일 아침 커피 마시며 뉴스를 읽어요.', ex5 = 'She wrote a detailed report on the local elections.', ex5_ko = '그녀는 지방 선거에 대한 자세한 보도를 썼어요.' WHERE id = 'nuc_media_02';
UPDATE nuances SET ex4 = 'I never watch live TV — I just stream channels online.', ex4_ko = '저는 실시간 TV를 보지 않고 — 온라인으로 채널을 스트리밍해요.', ex5 = 'YouTube is the most popular video platform in many countries.', ex5_ko = '유튜브는 많은 나라에서 가장 인기 있는 동영상 플랫폼이에요.' WHERE id = 'nuc_media_03';
UPDATE nuances SET ex4 = 'Subscribe to the newsletter to get weekly updates.', ex4_ko = '주간 업데이트를 받으려면 뉴스레터를 구독하세요.', ex5 = 'Thousands of people follow her cooking account.', ex5_ko = '수천 명이 그녀의 요리 계정을 팔로우해요.' WHERE id = 'nuc_media_04';
UPDATE nuances SET ex4 = 'I saw the advertisement on the side of a bus.', ex4_ko = '저는 버스 옆면의 광고를 봤어요.', ex5 = 'A 30-second commercial during the playoffs is expensive.', ex5_ko = '플레이오프 중 30초 광고는 비싸요.' WHERE id = 'nuc_media_05';
UPDATE nuances SET ex4 = 'The interview was streamed live to millions of viewers.', ex4_ko = '인터뷰는 수백만 명의 시청자에게 생방송으로 스트리밍됐어요.', ex5 = 'The recorded podcast goes out every Tuesday morning.', ex5_ko = '녹화된 팟캐스트는 매주 화요일 아침에 나가요.' WHERE id = 'nuc_media_06';
UPDATE nuances SET ex4 = 'The dance went viral on multiple platforms in two days.', ex4_ko = '그 춤은 이틀 만에 여러 플랫폼에서 입소문이 났어요.', ex5 = 'That song is trending in five different countries right now.', ex5_ko = '그 노래는 지금 다섯 개 다른 나라에서 트렌딩이에요.' WHERE id = 'nuc_media_07';
UPDATE nuances SET ex4 = 'Every news source has some kind of bias.', ex4_ko = '모든 뉴스 출처에는 어떤 종류의 편향이 있어요.', ex5 = 'Hearing different perspectives helps you understand the issue.', ex5_ko = '다양한 관점을 듣는 것이 문제를 이해하는 데 도움이 돼요.' WHERE id = 'nuc_media_08';
UPDATE nuances SET ex4 = 'Censorship of social media is a sensitive topic.', ex4_ko = '소셜 미디어 검열은 민감한 주제예요.', ex5 = 'Better regulation could protect users without limiting speech.', ex5_ko = '더 나은 규제는 발언을 제한하지 않으면서 사용자를 보호할 수 있어요.' WHERE id = 'nuc_media_09';
UPDATE nuances SET ex4 = 'The late-night show is famous for political satire.', ex4_ko = '그 심야 쇼는 정치 풍자로 유명해요.', ex5 = 'Their parody of the music video got a million views.', ex5_ko = '그들의 뮤직비디오 패러디가 백만 뷰를 기록했어요.' WHERE id = 'nuc_media_10';
UPDATE nuances SET ex4 = 'The film follows a clear three-act narrative.', ex4_ko = '그 영화는 명확한 3막 서사를 따라가요.', ex5 = 'Public discourse on AI is growing more nuanced.', ex5_ko = 'AI에 대한 공개 담론이 점점 더 섬세해지고 있어요.' WHERE id = 'nuc_media_11';
UPDATE nuances SET ex4 = 'Wartime propaganda often relies on simple visual symbols.', ex4_ko = '전시 선전은 종종 단순한 시각 상징에 의존해요.', ex5 = 'Disinformation can spread faster than the truth on social media.', ex5_ko = '허위 정보는 소셜 미디어에서 진실보다 빠르게 퍼질 수 있어요.' WHERE id = 'nuc_media_12';
UPDATE nuances SET ex4 = 'Semiotics helps us understand why certain symbols feel powerful.', ex4_ko = '기호학은 특정 상징이 왜 강력하게 느껴지는지 이해하는 데 도움이 돼요.', ex5 = 'Religious iconography shapes much of Western art history.', ex5_ko = '종교 도상학이 서양 미술사의 많은 부분을 형성해요.' WHERE id = 'nuc_media_13';

-- ══════════════════════════════════════
-- ENVIRONMENT
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'Sort plastics carefully before you recycle.', ex4_ko = '재활용하기 전에 플라스틱을 신중히 분류하세요.', ex5 = 'Try to reuse jars and containers when you can.', ex5_ko = '가능할 때 병과 용기를 재사용해 보세요.' WHERE id = 'nuc_environment_01';
UPDATE nuances SET ex4 = 'Climate change is already affecting daily life around the world.', ex4_ko = '기후 변화는 이미 전 세계 일상에 영향을 미치고 있어요.', ex5 = 'The weather has been unusually warm this winter.', ex5_ko = '이번 겨울 날씨가 이례적으로 따뜻해요.' WHERE id = 'nuc_environment_02';
UPDATE nuances SET ex4 = 'Air pollution levels are highest near busy roads.', ex4_ko = '대기 오염 수준은 번잡한 도로 근처에서 가장 높아요.', ex5 = 'The water supply was contaminated by industrial runoff.', ex5_ko = '수돗물이 산업 폐수로 오염됐어요.' WHERE id = 'nuc_environment_03';
UPDATE nuances SET ex4 = 'Many countries are investing heavily in renewable energy.', ex4_ko = '많은 나라들이 재생에너지에 대규모로 투자하고 있어요.', ex5 = 'Sustainable practices benefit both businesses and the planet.', ex5_ko = '지속 가능한 관행은 기업과 지구 모두에게 이로워요.' WHERE id = 'nuc_environment_04';
UPDATE nuances SET ex4 = 'Wildlife conservation depends on community involvement.', ex4_ko = '야생동물 보전은 지역사회 참여에 달려 있어요.', ex5 = 'Historic preservation has saved many beautiful buildings.', ex5_ko = '역사 보존은 많은 아름다운 건물을 살려왔어요.' WHERE id = 'nuc_environment_05';
UPDATE nuances SET ex4 = 'Reducing carbon emissions is a global priority.', ex4_ko = '탄소 배출량 감소는 세계적 우선과제예요.', ex5 = 'The factory was fined for discharging waste into the river.', ex5_ko = '공장은 강에 폐기물을 방류한 혐의로 벌금을 받았어요.' WHERE id = 'nuc_environment_06';
UPDATE nuances SET ex4 = 'Deforestation contributes significantly to climate change.', ex4_ko = '삼림 벌채는 기후 변화에 크게 기여해요.', ex5 = 'Desertification is making farming impossible in some regions.', ex5_ko = '사막화로 일부 지역에서는 농사가 불가능해지고 있어요.' WHERE id = 'nuc_environment_07';
UPDATE nuances SET ex4 = 'Flying often increases your carbon footprint the most.', ex4_ko = '비행이 종종 탄소 발자국을 가장 많이 늘려요.', ex5 = 'Our ecological footprint per person is unsustainable.', ex5_ko = '1인당 생태 발자국이 지속 불가능해요.' WHERE id = 'nuc_environment_08';
UPDATE nuances SET ex4 = 'Biodiversity is essential for healthy food systems.', ex4_ko = '생물 다양성은 건강한 식량 시스템에 필수적이에요.', ex5 = 'The coral reef ecosystem supports an incredible variety of life.', ex5_ko = '산호초 생태계는 놀라운 다양한 생명을 지지해요.' WHERE id = 'nuc_environment_09';
UPDATE nuances SET ex4 = 'Mitigation strategies focus on reducing future emissions.', ex4_ko = '완화 전략은 미래 배출량을 줄이는 데 집중해요.', ex5 = 'Climate adaptation includes building flood defenses.', ex5_ko = '기후 적응은 홍수 방지 시설 건설을 포함해요.' WHERE id = 'nuc_environment_10';
UPDATE nuances SET ex4 = 'Critics accused the company of greenwashing its packaging claims.', ex4_ko = '비평가들은 회사가 포장 주장으로 그린워싱을 한다고 비난했어요.', ex5 = 'We try to buy eco-friendly products whenever possible.', ex5_ko = '가능할 때마다 친환경 제품을 사려고 노력해요.' WHERE id = 'nuc_environment_11';
UPDATE nuances SET ex4 = 'Anthropogenic factors account for most recent warming.', ex4_ko = '인위적 요인들이 최근 온난화의 대부분을 차지해요.', ex5 = 'Natural climate variability also plays a smaller role.', ex5_ko = '자연 기후 변동성도 작은 역할을 해요.' WHERE id = 'nuc_environment_12';
UPDATE nuances SET ex4 = 'Cities are building resilience against extreme weather.', ex4_ko = '도시들은 극한 날씨에 대한 회복력을 쌓고 있어요.', ex5 = 'Poor communities often have the highest vulnerability to disasters.', ex5_ko = '가난한 지역사회들이 재난에 대한 취약성이 가장 높은 경우가 많아요.' WHERE id = 'nuc_environment_13';

-- ══════════════════════════════════════
-- ECONOMY
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'The price of fuel has fluctuated wildly this year.', ex4_ko = '연료 가격이 올해 크게 요동쳤어요.', ex5 = 'There''s a small service charge for online bookings.', ex5_ko = '온라인 예약에는 작은 서비스 요금이 있어요.' WHERE id = 'nuc_economy_01';
UPDATE nuances SET ex4 = 'Household income has barely kept up with inflation.', ex4_ko = '가계 소득이 인플레이션을 거의 따라가지 못했어요.', ex5 = 'The company''s revenue grew 20% last quarter.', ex5_ko = '회사의 매출이 지난 분기에 20% 성장했어요.' WHERE id = 'nuc_economy_02';
UPDATE nuances SET ex4 = 'I invested a small amount in an index fund.', ex4_ko = '저는 인덱스 펀드에 적은 금액을 투자했어요.', ex5 = 'They spent too much on the wedding and regret it now.', ex5_ko = '그들은 결혼식에 너무 많이 써서 지금 후회해요.' WHERE id = 'nuc_economy_03';
UPDATE nuances SET ex4 = 'Inflation has made everyday groceries noticeably more expensive.', ex4_ko = '인플레이션으로 일상 식료품이 눈에 띄게 더 비싸졌어요.', ex5 = 'Long deflation can be just as harmful as inflation.', ex5_ko = '장기 디플레이션은 인플레이션만큼이나 해로울 수 있어요.' WHERE id = 'nuc_economy_04';
UPDATE nuances SET ex4 = 'The bakery made a small profit in its first year.', ex4_ko = '그 빵집은 첫해에 작은 이익을 냈어요.', ex5 = 'Working remotely has many benefits, including more family time.', ex5_ko = '재택근무는 더 많은 가족 시간을 포함해 많은 혜택이 있어요.' WHERE id = 'nuc_economy_05';
UPDATE nuances SET ex4 = 'We''re sticking to a strict budget this year.', ex4_ko = '우리는 올해 엄격한 예산을 따르고 있어요.', ex5 = 'The forecast for next quarter is cautiously optimistic.', ex5_ko = '다음 분기 예측은 조심스럽게 낙관적이에요.' WHERE id = 'nuc_economy_06';
UPDATE nuances SET ex4 = 'Korea exports electronics and cars to many countries.', ex4_ko = '한국은 전자제품과 자동차를 많은 나라에 수출해요.', ex5 = 'The country imports most of its raw materials.', ex5_ko = '그 나라는 대부분의 원자재를 수입해요.' WHERE id = 'nuc_economy_07';
UPDATE nuances SET ex4 = 'Property taxes vary widely between regions.', ex4_ko = '재산세는 지역마다 크게 달라요.', ex5 = 'New tariffs raised the cost of imported electronics.', ex5_ko = '새 관세가 수입 전자제품 비용을 올렸어요.' WHERE id = 'nuc_economy_08';
UPDATE nuances SET ex4 = 'Many countries entered a recession after the global crisis.', ex4_ko = '많은 나라들이 글로벌 위기 후 경기 침체에 진입했어요.', ex5 = 'The Great Depression reshaped how governments approach the economy.', ex5_ko = '대공황은 정부가 경제에 접근하는 방식을 재형성했어요.' WHERE id = 'nuc_economy_09';
UPDATE nuances SET ex4 = 'The government announced new fiscal stimulus measures.', ex4_ko = '정부가 새 재정 부양책을 발표했어요.', ex5 = 'Monetary policy is the central bank''s main tool.', ex5_ko = '통화 정책은 중앙은행의 주요 도구예요.' WHERE id = 'nuc_economy_10';
UPDATE nuances SET ex4 = 'During the crisis, many banks faced a liquidity shortage.', ex4_ko = '위기 동안 많은 은행이 유동성 부족에 직면했어요.', ex5 = 'The firm remains solvent despite the recent losses.', ex5_ko = '회사는 최근 손실에도 불구하고 지급 능력을 유지하고 있어요.' WHERE id = 'nuc_economy_11';
UPDATE nuances SET ex4 = 'Austerity measures often hurt the most vulnerable people.', ex4_ko = '긴축 조치는 종종 가장 취약한 사람들에게 타격을 줘요.', ex5 = 'The stimulus package helped revive struggling small businesses.', ex5_ko = '경기 부양책이 어려움을 겪던 소상공인들을 회복시키는 데 도움이 됐어요.' WHERE id = 'nuc_economy_12';
UPDATE nuances SET ex4 = 'A few firms hold a near monopoly on cloud services.', ex4_ko = '소수 기업이 클라우드 서비스에서 거의 독점을 차지하고 있어요.', ex5 = 'The mobile market is essentially an oligopoly of three brands.', ex5_ko = '모바일 시장은 본질적으로 세 브랜드의 과점이에요.' WHERE id = 'nuc_economy_13';

-- ══════════════════════════════════════
-- CULTURE
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'Removing your shoes is a custom in many Asian homes.', ex4_ko = '신발을 벗는 것은 많은 아시아 가정의 관습이에요.', ex5 = 'Lunar New Year is a tradition that has lasted thousands of years.', ex5_ko = '음력 설은 수천 년 동안 이어진 전통이에요.' WHERE id = 'nuc_culture_01';
UPDATE nuances SET ex4 = 'It''s polite to thank the chef after a special meal.', ex4_ko = '특별한 식사 후 셰프에게 감사를 표하는 것은 예의예요.', ex5 = 'She was respectful of every elder in the village.', ex5_ko = '그녀는 마을의 모든 어르신을 존중했어요.' WHERE id = 'nuc_culture_02';
UPDATE nuances SET ex4 = 'The summer festival lit up the entire town.', ex4_ko = '여름 축제가 마을 전체를 밝혔어요.', ex5 = 'The opening ceremony was elegant and well-organized.', ex5_ko = '개회식은 우아하고 잘 진행됐어요.' WHERE id = 'nuc_culture_03';
UPDATE nuances SET ex4 = 'They wanted to share their cultural heritage with their kids.', ex4_ko = '그들은 자녀들과 문화유산을 나누고 싶어 했어요.', ex5 = 'Her legacy as a teacher continues through her former students.', ex5_ko = '그녀의 교사로서의 유산은 옛 학생들을 통해 계속돼요.' WHERE id = 'nuc_culture_04';
UPDATE nuances SET ex4 = 'New York is a deeply multicultural city.', ex4_ko = '뉴욕은 깊이 다문화적인 도시예요.', ex5 = 'The team became stronger with more diverse perspectives.', ex5_ko = '팀은 더 다양한 관점으로 더 강해졌어요.' WHERE id = 'nuc_culture_05';
UPDATE nuances SET ex4 = 'Some societies expect newcomers to fully assimilate.', ex4_ko = '어떤 사회들은 새로 온 사람들이 완전히 동화하기를 기대해요.', ex5 = 'Helping immigrants integrate enriches everyone.', ex5_ko = '이민자들의 통합을 돕는 것이 모두를 풍요롭게 해요.' WHERE id = 'nuc_culture_06';
UPDATE nuances SET ex4 = 'Movies often rely on stereotypes for quick characterization.', ex4_ko = '영화는 빠른 캐릭터 묘사를 위해 종종 고정관념에 의존해요.', ex5 = 'Prejudice can be reduced through meaningful contact.', ex5_ko = '편견은 의미 있는 접촉을 통해 줄어들 수 있어요.' WHERE id = 'nuc_culture_07';
UPDATE nuances SET ex4 = 'In some cultures, discussing personal income is a taboo.', ex4_ko = '어떤 문화에서는 개인 소득을 논하는 것이 금기예요.', ex5 = 'Business etiquette varies a lot across cultures.', ex5_ko = '비즈니스 예절은 문화마다 많이 달라요.' WHERE id = 'nuc_culture_08';
UPDATE nuances SET ex4 = 'Indigenous knowledge is helping researchers understand local ecosystems.', ex4_ko = '원주민 지식이 연구자들이 지역 생태계를 이해하는 데 도움을 주고 있어요.', ex5 = 'She''s a native speaker of three languages.', ex5_ko = '그녀는 세 가지 언어의 모국어 화자예요.' WHERE id = 'nuc_culture_09';
UPDATE nuances SET ex4 = 'Acculturation can lead to interesting blends of food and music.', ex4_ko = '문화 변용은 흥미로운 음식과 음악의 융합으로 이어질 수 있어요.', ex5 = 'Globalization has connected economies and cultures in new ways.', ex5_ko = '세계화는 경제와 문화를 새로운 방식으로 연결했어요.' WHERE id = 'nuc_culture_10';
UPDATE nuances SET ex4 = 'Cosmopolitan cities tend to attract people from many countries.', ex4_ko = '세계적인 도시들은 많은 나라 사람들을 끌어들이는 경향이 있어요.', ex5 = 'A parochial worldview can limit personal growth.', ex5_ko = '협소한 세계관은 개인 성장을 제한할 수 있어요.' WHERE id = 'nuc_culture_11';
UPDATE nuances SET ex4 = 'Ethnocentrism makes it hard to appreciate other ways of life.', ex4_ko = '자문화 중심주의는 다른 삶의 방식을 감상하기 어렵게 만들어요.', ex5 = 'Cultural relativism encourages us to suspend judgment.', ex5_ko = '문화 상대주의는 우리가 판단을 유보하도록 격려해요.' WHERE id = 'nuc_culture_12';
UPDATE nuances SET ex4 = 'Each generation captures its own zeitgeist in music.', ex4_ko = '각 세대는 음악으로 자기 시대정신을 포착해요.', ex5 = 'The rise of AI represents a new paradigm in work.', ex5_ko = 'AI의 부상은 일에서의 새로운 패러다임을 나타내요.' WHERE id = 'nuc_culture_13';

-- ══════════════════════════════════════
-- SPORTS
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'The boxing match went all twelve rounds.', ex4_ko = '권투 경기는 12라운드 끝까지 갔어요.', ex5 = 'Tonight''s baseball game starts at seven.', ex5_ko = '오늘 밤 야구 경기는 7시에 시작해요.' WHERE id = 'nuc_sports_01';
UPDATE nuances SET ex4 = 'We won the local league for the first time.', ex4_ko = '저희가 지역 리그에서 처음으로 우승했어요.', ex5 = 'She beat the defending champion in straight sets.', ex5_ko = '그녀는 디펜딩 챔피언을 스트레이트 세트로 이겼어요.' WHERE id = 'nuc_sports_02';
UPDATE nuances SET ex4 = 'I practice the piano for an hour every day.', ex4_ko = '저는 매일 한 시간씩 피아노를 연습해요.', ex5 = 'He trains hard during the off-season to stay in shape.', ex5_ko = '그는 비시즌에 컨디션 유지를 위해 열심히 훈련해요.' WHERE id = 'nuc_sports_03';
UPDATE nuances SET ex4 = 'She scored the winning goal in the last minute.', ex4_ko = '그녀는 마지막 1분에 결승 골을 넣었어요.', ex5 = 'A perfect game in bowling is 300 points.', ex5_ko = '볼링에서 퍼펙트 게임은 300점이에요.' WHERE id = 'nuc_sports_04';
UPDATE nuances SET ex4 = 'The referee called a foul on the goalkeeper.', ex4_ko = '심판이 골키퍼에게 반칙을 선언했어요.', ex5 = 'They were given a penalty after the late tackle.', ex5_ko = '늦은 태클 후 그들은 페널티를 받았어요.' WHERE id = 'nuc_sports_05';
UPDATE nuances SET ex4 = 'The coach motivated the players with a powerful speech.', ex4_ko = '코치는 강력한 연설로 선수들에게 동기를 부여했어요.', ex5 = 'Her personal trainer designed a recovery program after the injury.', ex5_ko = '그녀의 개인 트레이너가 부상 후 회복 프로그램을 짜줬어요.' WHERE id = 'nuc_sports_06';
UPDATE nuances SET ex4 = 'He started boxing as an amateur in his teens.', ex4_ko = '그는 십대 때 아마추어로 권투를 시작했어요.', ex5 = 'She turned professional after winning the national title.', ex5_ko = '그녀는 전국 타이틀을 따낸 후 프로로 전향했어요.' WHERE id = 'nuc_sports_07';
UPDATE nuances SET ex4 = 'Long-distance runners build stamina over many months.', ex4_ko = '장거리 주자들은 몇 달에 걸쳐 체력을 쌓아요.', ex5 = 'Endurance training helps her finish strong races.', ex5_ko = '지구력 훈련이 그녀가 어려운 경주를 끝까지 마치는 데 도움이 돼요.' WHERE id = 'nuc_sports_08';
UPDATE nuances SET ex4 = 'He is the reigning world champion in chess.', ex4_ko = '그는 체스의 현 세계 챔피언이에요.', ex5 = 'The winner of the local race got a small trophy.', ex5_ko = '지역 경주의 승자는 작은 트로피를 받았어요.' WHERE id = 'nuc_sports_09';
UPDATE nuances SET ex4 = 'Thousands of spectators cheered from the stands.', ex4_ko = '수천 명의 관중이 관중석에서 응원했어요.', ex5 = 'She''s been a loyal fan since she was a child.', ex5_ko = '그녀는 어렸을 때부터 충성스러운 팬이었어요.' WHERE id = 'nuc_sports_10';
UPDATE nuances SET ex4 = 'Real sportsmanship means winning and losing with grace.', ex4_ko = '진정한 스포츠맨십은 우아하게 이기고 지는 것을 의미해요.', ex5 = 'Some athletes use gamesmanship to gain a psychological edge.', ex5_ko = '어떤 선수들은 심리적 우위를 얻기 위해 게임즈맨십을 사용해요.' WHERE id = 'nuc_sports_11';
UPDATE nuances SET ex4 = 'The runner was banned after testing positive for doping.', ex4_ko = '그 주자는 도핑 양성 판정 후 출전 정지를 받았어요.', ex5 = 'Good nutrition is a key form of performance enhancement.', ex5_ko = '좋은 영양 섭취는 경기력 향상의 핵심 방법이에요.' WHERE id = 'nuc_sports_12';
UPDATE nuances SET ex4 = 'Dancers develop kinesthesia through years of training.', ex4_ko = '무용수들은 몇 년의 훈련을 통해 운동 감각을 개발해요.', ex5 = 'Good proprioception helps athletes stay balanced.', ex5_ko = '좋은 고유 감각은 운동선수들이 균형을 유지하는 데 도움이 돼요.' WHERE id = 'nuc_sports_13';

-- ══════════════════════════════════════
-- DISCUSSION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'Let''s discuss the next steps over coffee.', ex4_ko = '커피 마시며 다음 단계를 논의해요.', ex5 = 'They argued for hours but couldn''t agree.', ex5_ko = '그들은 몇 시간 동안 언쟁했지만 동의할 수 없었어요.' WHERE id = 'nuc_discussion_01';
UPDATE nuances SET ex4 = 'I''d love to hear your opinion on the new policy.', ex4_ko = '새 정책에 대한 당신의 의견을 듣고 싶어요.', ex5 = 'From a parent''s point of view, the school is excellent.', ex5_ko = '부모의 관점에서 그 학교는 훌륭해요.' WHERE id = 'nuc_discussion_02';
UPDATE nuances SET ex4 = 'I agree with most of what she said.', ex4_ko = '그녀가 말한 대부분에 동의해요.', ex5 = 'Patients must give consent before any procedure.', ex5_ko = '환자들은 어떤 시술 전에도 동의를 해야 해요.' WHERE id = 'nuc_discussion_03';
UPDATE nuances SET ex4 = 'The class debated whether AI should be regulated.', ex4_ko = '수업에서는 AI가 규제되어야 하는지 토론했어요.', ex5 = 'The committee deliberated late into the night.', ex5_ko = '위원회는 밤늦게까지 심의했어요.' WHERE id = 'nuc_discussion_04';
UPDATE nuances SET ex4 = 'I''ll concede that you''re right about that detail.', ex4_ko = '그 세부 사항에 대해서는 당신이 옳다는 걸 인정할게요.', ex5 = 'They reached a fair compromise on the price.', ex5_ko = '그들은 가격에서 공정한 타협을 이뤘어요.' WHERE id = 'nuc_discussion_05';
UPDATE nuances SET ex4 = 'She asserted her position confidently in the meeting.', ex4_ko = '그녀는 회의에서 자신 있게 자기 입장을 주장했어요.', ex5 = 'He claimed to have data, but never showed any.', ex5_ko = '그는 데이터가 있다고 주장했지만 보여주지 않았어요.' WHERE id = 'nuc_discussion_06';
UPDATE nuances SET ex4 = 'The research convinced me to change my approach.', ex4_ko = '그 연구가 제가 접근 방식을 바꾸도록 납득시켰어요.', ex5 = 'She persuaded her parents to let her study abroad.', ex5_ko = '그녀는 부모님이 해외 유학을 허락하시도록 설득했어요.' WHERE id = 'nuc_discussion_07';
UPDATE nuances SET ex4 = 'His later statement contradicted what he said earlier.', ex4_ko = '그의 나중 발언은 앞서 한 말과 모순됐어요.', ex5 = 'She countered his argument with three solid examples.', ex5_ko = '그녀는 세 가지 탄탄한 예시로 그의 주장에 반론했어요.' WHERE id = 'nuc_discussion_08';
UPDATE nuances SET ex4 = 'The implication of her tone was disappointment.', ex4_ko = '그녀 어조의 함의는 실망이었어요.', ex5 = 'From the data, we can make a reasonable inference.', ex5_ko = '데이터에서 우리는 합리적인 추론을 할 수 있어요.' WHERE id = 'nuc_discussion_09';
UPDATE nuances SET ex4 = 'That argument contains a classic logical fallacy.', ex4_ko = '그 주장은 고전적인 논리적 오류를 담고 있어요.', ex5 = 'Everyone has some unconscious bias to work on.', ex5_ko = '모든 사람은 다뤄야 할 어느 정도의 무의식적 편향이 있어요.' WHERE id = 'nuc_discussion_10';
UPDATE nuances SET ex4 = 'Political speeches often rely on hollow rhetoric.', ex4_ko = '정치 연설은 종종 공허한 수사학에 의존해요.', ex5 = 'Her eloquence held the audience for the full hour.', ex5_ko = '그녀의 웅변이 청중을 한 시간 내내 사로잡았어요.' WHERE id = 'nuc_discussion_11';
UPDATE nuances SET ex4 = 'His speech was sophistry wrapped in fancy words.', ex4_ko = '그의 연설은 화려한 말로 포장된 궤변이었어요.', ex5 = 'Hegelian dialectic moves through thesis, antithesis, and synthesis.', ex5_ko = '헤겔의 변증법은 정-반-합을 거쳐 진행돼요.' WHERE id = 'nuc_discussion_12';
UPDATE nuances SET ex4 = 'Some statements are accepted as axioms in mathematics.', ex4_ko = '수학에서 어떤 진술들은 공리로 받아들여져요.', ex5 = 'A postulate forms the starting point of a theory.', ex5_ko = '공준은 이론의 출발점을 형성해요.' WHERE id = 'nuc_discussion_13';

-- ══════════════════════════════════════
-- PRESENTATION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'She presented her findings clearly and persuasively.', ex4_ko = '그녀는 자기 연구 결과를 명확하고 설득력 있게 발표했어요.', ex5 = 'He reported the team''s progress to the executives.', ex5_ko = '그는 임원진에게 팀의 진행 상황을 보고했어요.' WHERE id = 'nuc_presentation_01';
UPDATE nuances SET ex4 = 'Let me give you a quick outline of the agenda.', ex4_ko = '안건의 빠른 개요를 알려드릴게요.', ex5 = 'Here is a one-page summary of the main findings.', ex5_ko = '주요 결과의 한 페이지 요약이 여기 있어요.' WHERE id = 'nuc_presentation_02';
UPDATE nuances SET ex4 = 'Can we go back to the second slide for a moment?', ex4_ko = '잠시 두 번째 슬라이드로 돌아갈 수 있어요?', ex5 = 'Please take a handout from the table on your way in.', ex5_ko = '들어오는 길에 테이블에서 유인물 한 부 가져가세요.' WHERE id = 'nuc_presentation_03';
UPDATE nuances SET ex4 = 'Let me introduce today''s key questions briefly.', ex4_ko = '오늘의 핵심 질문들을 간단히 도입할게요.', ex5 = 'To conclude, we recommend a three-step approach.', ex5_ko = '결론적으로 우리는 3단계 접근법을 권장해요.' WHERE id = 'nuc_presentation_04';
UPDATE nuances SET ex4 = 'She engaged the audience by asking thoughtful questions.', ex4_ko = '그녀는 사려 깊은 질문으로 청중을 참여시켰어요.', ex5 = 'Workshops let participants interact in small groups.', ex5_ko = '워크숍은 참가자들이 소그룹으로 상호작용하게 해줘요.' WHERE id = 'nuc_presentation_05';
UPDATE nuances SET ex4 = 'I''d like to emphasize that this is just the first phase.', ex4_ko = '이건 첫 단계일 뿐이라는 점을 강조하고 싶어요.', ex5 = 'The graph highlights the biggest changes from last year.', ex5_ko = '그래프는 작년 대비 가장 큰 변화를 부각시켜요.' WHERE id = 'nuc_presentation_06';
UPDATE nuances SET ex4 = 'Could you clarify what you mean by "user-first"?', ex4_ko = '"사용자 우선"이 무슨 의미인지 명확히 해주실 수 있어요?', ex5 = 'Could you elaborate on the budget assumptions?', ex5_ko = '예산 가정에 대해 자세히 설명해 주실 수 있어요?' WHERE id = 'nuc_presentation_07';
UPDATE nuances SET ex4 = 'A coherent argument is easier for the audience to follow.', ex4_ko = '논리적으로 일관된 주장이 청중이 따라가기 더 쉬워요.', ex5 = 'The slides were beautifully cohesive in style.', ex5_ko = '슬라이드는 스타일이 아름답게 유기적으로 연결돼 있었어요.' WHERE id = 'nuc_presentation_08';
UPDATE nuances SET ex4 = 'The pitch was persuasive enough to win the contract.', ex4_ko = '그 피치는 계약을 따낼 만큼 설득력이 있었어요.', ex5 = 'The training session was informative and well-paced.', ex5_ko = '교육 세션은 정보가 풍부하고 진행 속도가 좋았어요.' WHERE id = 'nuc_presentation_09';
UPDATE nuances SET ex4 = 'She opened with a moving anecdote about her grandmother.', ex4_ko = '그녀는 할머니에 관한 감동적인 일화로 시작했어요.', ex5 = 'A single striking statistic can change the room.', ex5_ko = '단 하나의 강력한 통계가 회장 분위기를 바꿀 수 있어요.' WHERE id = 'nuc_presentation_10';
UPDATE nuances SET ex4 = 'Good posture sends a message of confidence.', ex4_ko = '좋은 자세는 자신감의 메시지를 전달해요.', ex5 = 'His hand gestures helped emphasize each key point.', ex5_ko = '그의 손짓이 각 핵심 요점을 강조하는 데 도움이 됐어요.' WHERE id = 'nuc_presentation_11';
UPDATE nuances SET ex4 = 'Her ethos as a researcher made the audience trust the data.', ex4_ko = '연구자로서의 그녀의 신뢰성이 청중이 데이터를 신뢰하게 만들었어요.', ex5 = 'The film''s pathos moved many viewers to tears.', ex5_ko = '영화의 감성 호소가 많은 시청자를 눈물 짓게 했어요.' WHERE id = 'nuc_presentation_12';
UPDATE nuances SET ex4 = 'Good prosody can turn a flat speech into an engaging one.', ex4_ko = '좋은 운율은 평이한 연설을 매력적인 연설로 만들 수 있어요.', ex5 = 'Rising intonation at the end signals a question.', ex5_ko = '끝의 상승 억양은 질문을 나타내요.' WHERE id = 'nuc_presentation_13';

-- ══════════════════════════════════════
-- NEGOTIATION
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'They offered a generous discount to close the deal.', ex4_ko = '그들은 거래를 성사시키기 위해 넉넉한 할인을 제안했어요.', ex5 = 'I propose we meet again next Tuesday to finalize the terms.', ex5_ko = '조건을 마무리하기 위해 다음 주 화요일에 다시 만날 것을 제안해요.' WHERE id = 'nuc_negotiation_01';
UPDATE nuances SET ex4 = 'She accepted the offer after a day of thought.', ex4_ko = '그녀는 하루의 고민 끝에 제안을 수락했어요.', ex5 = 'We finally agreed on a delivery timeline.', ex5_ko = '우리는 마침내 배송 일정에 합의했어요.' WHERE id = 'nuc_negotiation_02';
UPDATE nuances SET ex4 = 'They demanded a clear explanation for the delay.', ex4_ko = '그들은 지연에 대한 명확한 설명을 요구했어요.', ex5 = 'She politely requested a copy of the contract.', ex5_ko = '그녀는 정중하게 계약서 사본을 요청했어요.' WHERE id = 'nuc_negotiation_03';
UPDATE nuances SET ex4 = 'The deadline for offers is this Friday.', ex4_ko = '제안 마감은 이번 금요일이에요.', ex5 = 'Let''s map out the project timeline together.', ex5_ko = '함께 프로젝트 일정을 그려봐요.' WHERE id = 'nuc_negotiation_04';
UPDATE nuances SET ex4 = 'They made small concessions to keep the deal alive.', ex4_ko = '그들은 거래를 살리기 위해 작은 양보를 했어요.', ex5 = 'There''s always a trade-off between cost and quality.', ex5_ko = '비용과 품질 사이에는 항상 절충이 있어요.' WHERE id = 'nuc_negotiation_05';
UPDATE nuances SET ex4 = 'Having competing offers gave her real leverage.', ex4_ko = '경쟁 제안들이 그녀에게 진정한 협상 우위를 줬어요.', ex5 = 'Workers gain bargaining power when they unite.', ex5_ko = '근로자들은 단결할 때 협상력을 얻어요.' WHERE id = 'nuc_negotiation_06';
UPDATE nuances SET ex4 = 'They signed the contract after months of negotiation.', ex4_ko = '몇 달의 협상 끝에 그들은 계약서에 서명했어요.', ex5 = 'We reached a verbal agreement that still needs to be put in writing.', ex5_ko = '우리는 구두 합의에 이르렀지만 서면화가 필요해요.' WHERE id = 'nuc_negotiation_07';
UPDATE nuances SET ex4 = 'A trained mediator helped them find common ground.', ex4_ko = '훈련된 중재자가 그들이 공통점을 찾도록 도왔어요.', ex5 = 'Disputes that can''t be resolved often go to arbitration.', ex5_ko = '해결되지 않는 분쟁은 종종 중재로 가게 돼요.' WHERE id = 'nuc_negotiation_08';
UPDATE nuances SET ex4 = 'Be clear about your bottom line before walking into the room.', ex4_ko = '회의실에 들어가기 전에 최저 수용 조건을 명확히 하세요.', ex5 = 'Knowing your walkaway point keeps you from settling for less.', ex5_ko = '협상 철수 한계선을 알면 못한 조건에 만족하지 않게 돼요.' WHERE id = 'nuc_negotiation_09';
UPDATE nuances SET ex4 = 'A strong BATNA gives you confidence at the table.', ex4_ko = '강한 BATNA는 협상 자리에서 자신감을 줘요.', ex5 = 'If the ZOPA is too narrow, you won''t reach a deal.', ex5_ko = '합의 가능 영역이 너무 좁으면 거래에 이르지 못해요.' WHERE id = 'nuc_negotiation_10';
UPDATE nuances SET ex4 = 'Principled negotiation focuses on interests, not positions.', ex4_ko = '원칙 기반 협상은 입장이 아닌 이해관계에 집중해요.', ex5 = 'Positional bargaining can turn quickly into a deadlock.', ex5_ko = '입장 기반 협상은 빠르게 교착 상태로 변할 수 있어요.' WHERE id = 'nuc_negotiation_11';
UPDATE nuances SET ex4 = 'The agreement was ratified at the next meeting.', ex4_ko = '그 합의는 다음 회의에서 비준됐어요.', ex5 = 'The mayor publicly endorsed the new community plan.', ex5_ko = '시장은 새 지역사회 계획을 공개적으로 지지했어요.' WHERE id = 'nuc_negotiation_12';
UPDATE nuances SET ex4 = 'Talks reached an impasse over the issue of overtime pay.', ex4_ko = '협상이 초과 근무 수당 문제로 교착 상태에 빠졌어요.', ex5 = 'The complete deadlock surprised everyone in the room.', ex5_ko = '완전한 데드락이 회장 모두를 놀라게 했어요.' WHERE id = 'nuc_negotiation_13';

-- ══════════════════════════════════════
-- HUMANITIES
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'European history has shaped modern political thought.', ex4_ko = '유럽 역사는 현대 정치 사상을 형성해 왔어요.', ex5 = 'She wrote a beautiful short story about her hometown.', ex5_ko = '그녀는 고향에 관한 아름다운 단편 소설을 썼어요.' WHERE id = 'nuc_humanities_01';
UPDATE nuances SET ex4 = 'Norse myths influenced many modern fantasy stories.', ex4_ko = '북유럽 신화는 많은 현대 판타지 이야기에 영향을 줬어요.', ex5 = 'The legend of King Arthur is told in many forms.', ex5_ko = '아서왕 전설은 여러 형태로 전해져요.' WHERE id = 'nuc_humanities_02';
UPDATE nuances SET ex4 = 'Modern art often challenges what we consider beautiful.', ex4_ko = '현대 미술은 종종 우리가 아름답다고 여기는 것에 도전해요.', ex5 = 'Pottery is an ancient craft with regional variations.', ex5_ko = '도자기는 지역적 변형이 있는 고대 공예예요.' WHERE id = 'nuc_humanities_03';
UPDATE nuances SET ex4 = 'Eastern philosophy emphasizes harmony with nature.', ex4_ko = '동양 철학은 자연과의 조화를 강조해요.', ex5 = 'A clear ideology drives the party''s policies.', ex5_ko = '명확한 이데올로기가 그 정당의 정책을 이끌어요.' WHERE id = 'nuc_humanities_04';
UPDATE nuances SET ex4 = 'Business ethics is a required course in most MBA programs.', ex4_ko = '경영 윤리는 대부분의 MBA 프로그램에서 필수 과목이에요.', ex5 = 'Our sense of morality is partly shaped by family values.', ex5_ko = '우리의 도덕 감각은 부분적으로 가족 가치관으로 형성돼요.' WHERE id = 'nuc_humanities_05';
UPDATE nuances SET ex4 = 'Critics interpret the same novel in very different ways.', ex4_ko = '비평가들은 같은 소설을 매우 다른 방식으로 해석해요.', ex5 = 'Students analyze the poem''s structure and imagery.', ex5_ko = '학생들은 시의 구조와 이미지를 분석해요.' WHERE id = 'nuc_humanities_06';
UPDATE nuances SET ex4 = 'Knowing the historical context changes how we read the speech.', ex4_ko = '역사적 맥락을 아는 것이 우리가 그 연설을 읽는 방식을 바꿔요.', ex5 = 'The subtext of the conversation revealed deep tension.', ex5_ko = '대화의 함의가 깊은 긴장을 드러냈어요.' WHERE id = 'nuc_humanities_07';
UPDATE nuances SET ex4 = '"The Lord of the Rings" can be read as an allegory of war.', ex4_ko = '"반지의 제왕"은 전쟁의 알레고리로 읽힐 수 있어요.', ex5 = '"Time is a river" is a beautiful metaphor.', ex5_ko = '"시간은 강이다"는 아름다운 은유예요.' WHERE id = 'nuc_humanities_08';
UPDATE nuances SET ex4 = 'Empiricism shaped much of modern scientific thinking.', ex4_ko = '경험론은 현대 과학적 사고의 많은 부분을 형성했어요.', ex5 = 'Rationalism argues that reason alone can lead to truth.', ex5_ko = '이성론은 이성만으로 진리에 이를 수 있다고 주장해요.' WHERE id = 'nuc_humanities_09';
UPDATE nuances SET ex4 = 'My review of the book is necessarily subjective.', ex4_ko = '제 책 리뷰는 필연적으로 주관적이에요.', ex5 = 'Scientific research aims for an objective view of nature.', ex5_ko = '과학 연구는 자연에 대한 객관적인 시각을 목표로 해요.' WHERE id = 'nuc_humanities_10';
UPDATE nuances SET ex4 = 'Modern art broke from realistic representation.', ex4_ko = '모더니즘 미술은 사실적 표현에서 벗어났어요.', ex5 = 'Postmodern literature often plays with traditional storytelling.', ex5_ko = '포스트모던 문학은 종종 전통적인 스토리텔링을 가지고 놀아요.' WHERE id = 'nuc_humanities_11';
UPDATE nuances SET ex4 = 'Hermeneutics gives us tools to interpret ancient texts carefully.', ex4_ko = '해석학은 우리에게 고대 텍스트를 신중하게 해석할 도구를 줘요.', ex5 = 'Semiotics is useful for analyzing advertising and design.', ex5_ko = '기호학은 광고와 디자인을 분석하는 데 유용해요.' WHERE id = 'nuc_humanities_12';
UPDATE nuances SET ex4 = 'Phenomenology asks us to focus on lived experience.', ex4_ko = '현상학은 우리에게 살아 있는 경험에 집중하라고 해요.', ex5 = 'Existentialism teaches that we create our own meaning.', ex5_ko = '실존주의는 우리가 스스로 의미를 만든다고 가르쳐요.' WHERE id = 'nuc_humanities_13';

-- ══════════════════════════════════════
-- TECHNOLOGY
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'New hardware was needed to run the simulation.', ex4_ko = '시뮬레이션 실행에 새 하드웨어가 필요했어요.', ex5 = 'The software runs smoothly on most devices.', ex5_ko = '그 소프트웨어는 대부분의 기기에서 부드럽게 작동해요.' WHERE id = 'nuc_technology_01';
UPDATE nuances SET ex4 = 'Upload your file before the deadline at midnight.', ex4_ko = '자정 마감 전에 파일을 업로드하세요.', ex5 = 'I''ll download the report and read it offline.', ex5_ko = '저는 보고서를 다운로드해서 오프라인에서 읽을게요.' WHERE id = 'nuc_technology_02';
UPDATE nuances SET ex4 = 'I update my password every six months.', ex4_ko = '저는 6개월마다 비밀번호를 업데이트해요.', ex5 = 'It''s time to upgrade my laptop — this one is too slow.', ex5_ko = '이제 노트북을 업그레이드할 때예요 — 이건 너무 느려요.' WHERE id = 'nuc_technology_03';
UPDATE nuances SET ex4 = 'Connect your headphones via Bluetooth.', ex4_ko = '블루투스로 헤드폰을 연결하세요.', ex5 = 'My calendar syncs automatically across all devices.', ex5_ko = '제 캘린더는 모든 기기에서 자동으로 동기화돼요.' WHERE id = 'nuc_technology_04';
UPDATE nuances SET ex4 = 'Privacy concerns are growing as more devices collect data.', ex4_ko = '더 많은 기기가 데이터를 수집하면서 개인 정보 보호 우려가 커지고 있어요.', ex5 = 'Strong security keeps user accounts safe from hackers.', ex5_ko = '강력한 보안이 사용자 계정을 해커로부터 안전하게 지켜요.' WHERE id = 'nuc_technology_05';
UPDATE nuances SET ex4 = 'The algorithm decides what posts you see on social media.', ex4_ko = '알고리즘이 당신이 소셜 미디어에서 어떤 게시물을 볼지 결정해요.', ex5 = 'She learned to write code in just three months.', ex5_ko = '그녀는 단 3개월 만에 코드를 작성하는 법을 배웠어요.' WHERE id = 'nuc_technology_06';
UPDATE nuances SET ex4 = 'Developers fixed a major bug in the latest patch.', ex4_ko = '개발자들이 최신 패치에서 주요 버그를 수정했어요.', ex5 = 'The system had a small glitch during the live stream.', ex5_ko = '시스템이 라이브 스트리밍 중에 작은 글리치가 있었어요.' WHERE id = 'nuc_technology_07';
UPDATE nuances SET ex4 = 'Artificial intelligence is now part of everyday apps.', ex4_ko = '인공지능은 이제 일상 앱의 일부예요.', ex5 = 'Machine learning helps doctors detect early signs of disease.', ex5_ko = '머신러닝은 의사들이 질병의 초기 징후를 발견하는 데 도움이 돼요.' WHERE id = 'nuc_technology_08';
UPDATE nuances SET ex4 = 'Most messaging apps now encrypt messages by default.', ex4_ko = '대부분의 메시지 앱이 이제 기본적으로 메시지를 암호화해요.', ex5 = 'You can compress a folder before sharing it by email.', ex5_ko = '이메일로 공유하기 전에 폴더를 압축할 수 있어요.' WHERE id = 'nuc_technology_09';
UPDATE nuances SET ex4 = 'The new server can handle thousands of users at once.', ex4_ko = '새 서버는 한 번에 수천 명의 사용자를 처리할 수 있어요.', ex5 = 'Storing files in the cloud lets you access them anywhere.', ex5_ko = '클라우드에 파일을 저장하면 어디서나 접근할 수 있어요.' WHERE id = 'nuc_technology_10';
UPDATE nuances SET ex4 = 'Low latency is essential for fast-paced online games.', ex4_ko = '빠른 온라인 게임에는 낮은 지연 시간이 필수예요.', ex5 = 'You need enough bandwidth to stream 4K video smoothly.', ex5_ko = '4K 영상을 부드럽게 스트리밍하려면 충분한 대역폭이 필요해요.' WHERE id = 'nuc_technology_11';
UPDATE nuances SET ex4 = 'Many developers contribute to open source projects.', ex4_ko = '많은 개발자들이 오픈소스 프로젝트에 기여해요.', ex5 = 'Proprietary software often comes with strict licensing.', ex5_ko = '독점 소프트웨어는 종종 엄격한 라이선스가 붙어요.' WHERE id = 'nuc_technology_12';
UPDATE nuances SET ex4 = 'Interoperability between systems saves users a lot of time.', ex4_ko = '시스템 간 상호운용성은 사용자에게 많은 시간을 절약해 줘요.', ex5 = 'Scalability matters when your user base grows quickly.', ex5_ko = '사용자가 빠르게 늘면 확장성이 중요해져요.' WHERE id = 'nuc_technology_13';

-- ══════════════════════════════════════
-- NEWS
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'The morning headline was about the new government policy.', ex4_ko = '아침 헤드라인은 새 정부 정책에 관한 것이었어요.', ex5 = 'The book''s title gives away the central mystery.', ex5_ko = '그 책의 제목이 중심 미스터리를 미리 알려줘요.' WHERE id = 'nuc_news_01';
UPDATE nuances SET ex4 = 'She''s an award-winning journalist who covers human rights.', ex4_ko = '그녀는 인권을 취재하는 수상 경력의 저널리스트예요.', ex5 = 'The reporter was sent overseas to cover the conflict.', ex5_ko = '기자는 분쟁을 취재하기 위해 해외로 파견됐어요.' WHERE id = 'nuc_news_02';
UPDATE nuances SET ex4 = 'Always check the source before sharing a "fact" online.', ex4_ko = '온라인에서 "사실"을 공유하기 전에 항상 출처를 확인하세요.', ex5 = 'That''s just my personal opinion, not professional advice.', ex5_ko = '그건 전문가 조언이 아닌 그저 제 개인적 의견이에요.' WHERE id = 'nuc_news_03';
UPDATE nuances SET ex4 = 'Breaking news interrupted the regular broadcast.', ex4_ko = '속보가 정규 방송을 중단시켰어요.', ex5 = 'This is a developing story — details may change quickly.', ex5_ko = '이것은 진행 중인 뉴스예요 — 세부 사항이 빠르게 바뀔 수 있어요.' WHERE id = 'nuc_news_04';
UPDATE nuances SET ex4 = 'Reliable sources are critical to good journalism.', ex4_ko = '신뢰할 만한 출처는 좋은 저널리즘에 결정적이에요.', ex5 = 'List your references at the end of the report.', ex5_ko = '보고서 끝에 참고자료를 나열하세요.' WHERE id = 'nuc_news_05';
UPDATE nuances SET ex4 = 'The editorial argued for stronger environmental laws.', ex4_ko = '사설은 더 강력한 환경법을 주장했어요.', ex5 = 'The article won an award for investigative reporting.', ex5_ko = '그 기사는 탐사 보도 상을 받았어요.' WHERE id = 'nuc_news_06';
UPDATE nuances SET ex4 = 'The tip came from an anonymous caller.', ex4_ko = '제보는 익명 전화에서 왔어요.', ex5 = 'Please keep this conversation confidential.', ex5_ko = '이 대화를 기밀로 유지해 주세요.' WHERE id = 'nuc_news_07';
UPDATE nuances SET ex4 = 'The allegations are serious but still need investigation.', ex4_ko = '그 혐의는 심각하지만 아직 조사가 필요해요.', ex5 = 'She filed an accusation of harassment with HR.', ex5_ko = '그녀는 인사팀에 괴롭힘 고발을 접수했어요.' WHERE id = 'nuc_news_08';
UPDATE nuances SET ex4 = 'The newspaper''s circulation has dropped as readers move online.', ex4_ko = '독자들이 온라인으로 이동하면서 신문 발행 부수가 줄었어요.', ex5 = 'Their digital readership doubled in just two years.', ex5_ko = '그들의 디지털 독자 수가 단 2년 만에 두 배가 됐어요.' WHERE id = 'nuc_news_09';
UPDATE nuances SET ex4 = 'Investigative journalism shines light on issues others ignore.', ex4_ko = '탐사 저널리즘은 다른 사람들이 무시하는 문제에 빛을 비춰요.', ex5 = 'An analytical piece can help readers make sense of complex events.', ex5_ko = '분석 기사는 독자들이 복잡한 사건을 이해하는 데 도움이 될 수 있어요.' WHERE id = 'nuc_news_10';
UPDATE nuances SET ex4 = 'The publication apologized after the libel was proven.', ex4_ko = '문서 명예훼손이 입증된 후 그 출판물은 사과했어요.', ex5 = 'Spoken slander is harder to prove than written libel.', ex5_ko = '구두 명예훼손은 문서 명예훼손보다 입증하기 어려워요.' WHERE id = 'nuc_news_11';
UPDATE nuances SET ex4 = 'True objectivity in reporting is hard but worth aiming for.', ex4_ko = '보도의 진정한 객관성은 어렵지만 추구할 가치가 있어요.', ex5 = 'Public broadcasters are expected to maintain impartiality.', ex5_ko = '공영 방송은 공정성을 유지해야 해요.' WHERE id = 'nuc_news_12';
UPDATE nuances SET ex4 = 'How a story is framed shapes how readers feel about it.', ex4_ko = '기사가 어떻게 프레이밍되는지가 독자들이 어떻게 느끼는지를 형성해요.', ex5 = 'Repeated coverage primes the public to focus on certain issues.', ex5_ko = '반복적인 보도는 대중이 특정 문제에 집중하도록 유도해요.' WHERE id = 'nuc_news_13';

-- ══════════════════════════════════════
-- ACADEMIC
-- ══════════════════════════════════════
UPDATE nuances SET ex4 = 'Quoting a famous line still requires a citation.', ex4_ko = '유명한 구절을 인용해도 출처 표기가 필요해요.', ex5 = 'Paraphrase in your own words but credit the source.', ex5_ko = '자기 말로 바꿔 쓰되 출처를 밝히세요.' WHERE id = 'nuc_academic_01';
UPDATE nuances SET ex4 = 'Her thesis is being reviewed by three professors.', ex4_ko = '그녀의 논문은 세 교수님이 심사 중이에요.', ex5 = 'The hypothesis was supported by the experimental data.', ex5_ko = '가설이 실험 데이터로 뒷받침됐어요.' WHERE id = 'nuc_academic_02';
UPDATE nuances SET ex4 = 'The abstract should give a complete picture of the study.', ex4_ko = '초록은 연구의 전체 그림을 담아야 해요.', ex5 = 'A strong introduction guides the reader into the topic.', ex5_ko = '좋은 서론은 독자를 주제로 이끌어요.' WHERE id = 'nuc_academic_03';
UPDATE nuances SET ex4 = 'Cite every source you used, even online articles.', ex4_ko = '온라인 기사를 포함해 사용한 모든 출처를 인용하세요.', ex5 = 'A complete reference list belongs at the end of the paper.', ex5_ko = '완전한 참고문헌 목록은 논문 끝에 있어요.' WHERE id = 'nuc_academic_04';
UPDATE nuances SET ex4 = 'Build your argument step by step, point by point.', ex4_ko = '단계적으로 한 가지씩 자기 주장을 쌓아가세요.', ex5 = 'Strong evidence makes any claim more believable.', ex5_ko = '강한 근거는 어떤 주장이든 더 신뢰할 만하게 만들어요.' WHERE id = 'nuc_academic_05';
UPDATE nuances SET ex4 = 'Qualitative interviews captured students'' personal experiences.', ex4_ko = '질적 인터뷰가 학생들의 개인적 경험을 포착했어요.', ex5 = 'Quantitative surveys measured changes over the semester.', ex5_ko = '양적 설문조사가 한 학기 동안의 변화를 측정했어요.' WHERE id = 'nuc_academic_06';
UPDATE nuances SET ex4 = 'Peer review helps ensure research quality.', ex4_ko = '동료 심사는 연구 품질을 확보하는 데 도움이 돼요.', ex5 = 'Editorial review focuses on style and fit for the journal.', ex5_ko = '편집 심사는 스타일과 저널 적합성에 집중해요.' WHERE id = 'nuc_academic_07';
UPDATE nuances SET ex4 = 'A strong correlation does not prove causation.', ex4_ko = '강한 상관관계가 인과관계를 증명하지는 않아요.', ex5 = 'Establishing causation requires careful experimentation.', ex5_ko = '인과관계를 입증하려면 신중한 실험이 필요해요.' WHERE id = 'nuc_academic_08';
UPDATE nuances SET ex4 = 'The methodology section explains the research design.', ex4_ko = '방법론 부분은 연구 설계를 설명해요.', ex5 = 'They used interviews as the main method.', ex5_ko = '그들은 인터뷰를 주요 방법으로 사용했어요.' WHERE id = 'nuc_academic_09';
UPDATE nuances SET ex4 = 'Construct validity is essential when measuring abstract concepts.', ex4_ko = '추상적 개념을 측정할 때 구성 타당도가 필수예요.', ex5 = 'High reliability means the test gives consistent results.', ex5_ko = '높은 신뢰도는 시험이 일관된 결과를 낸다는 뜻이에요.' WHERE id = 'nuc_academic_10';
UPDATE nuances SET ex4 = 'Plagiarism can have severe academic consequences.', ex4_ko = '표절은 심각한 학문적 결과를 초래할 수 있어요.', ex5 = 'Good paraphrasing still requires citing the original source.', ex5_ko = '좋은 바꿔 쓰기도 여전히 원본 출처를 인용해야 해요.' WHERE id = 'nuc_academic_11';
UPDATE nuances SET ex4 = 'The paper raises epistemological questions about scientific knowledge.', ex4_ko = '그 논문은 과학 지식에 관한 인식론적 질문을 제기해요.', ex5 = 'Ontological positions affect how we define reality.', ex5_ko = '존재론적 입장은 우리가 현실을 어떻게 정의하는지에 영향을 줘요.' WHERE id = 'nuc_academic_12';
UPDATE nuances SET ex4 = 'Cultural hegemony shapes which voices get heard.', ex4_ko = '문화적 패권은 어떤 목소리가 들리는지를 형성해요.', ex5 = 'Sovereignty allows a country to set its own laws.', ex5_ko = '주권은 국가가 자국 법을 정할 수 있게 해줘요.' WHERE id = 'nuc_academic_13';






-- ─── 3) words-emotion-examples ──────────────────────
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


-- ─── 4) words-greeting-v2 ───────────────────────────
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

-- B2 (35개)
UPDATE words SET
  example_en_2 = 'She studied cross-cultural etiquette before her overseas assignment.',
  example_ko_2 = '그녀는 해외 파견 전에 이문화 예절을 공부했어요.',
  example_en_3 = 'Knowing the local etiquette made him feel more confident at the event.',
  example_ko_3 = '현지 예절을 아는 것이 행사에서 그를 더 자신감 있게 만들었어요.',
  example_en_4 = 'Table etiquette differs surprisingly across Asian cultures.',
  example_ko_4 = '아시아 문화 간에도 식사 예절이 놀랍도록 달라요.',
  example_en_5 = 'She reminded the team about proper etiquette before meeting the client.',
  example_ko_5 = '고객 미팅 전 그녀는 팀에게 올바른 예절을 상기시켰어요.'
WHERE id = 'w_greeting_B2_01';

UPDATE words SET
  example_en_2 = 'Her composed demeanor during the introduction inspired confidence.',
  example_ko_2 = '소개 중 그녀의 침착한 태도가 자신감을 불러일으켰어요.',
  example_en_3 = 'He adjusted his demeanor depending on who he was speaking to.',
  example_ko_3 = '그는 말하는 상대에 따라 태도를 조정했어요.',
  example_en_4 = 'A professional demeanor is just as important as what you say.',
  example_ko_4 = '전문적인 태도는 말하는 내용만큼이나 중요해요.',
  example_en_5 = 'Her cheerful demeanor put the nervous newcomer at ease immediately.',
  example_ko_5 = '그녀의 밝은 태도로 긴장한 신입이 즉시 편안해졌어요.'
WHERE id = 'w_greeting_B2_02';

UPDATE words SET
  example_en_2 = 'He maintained perfect decorum throughout the board presentation.',
  example_ko_2 = '그는 이사회 발표 내내 완벽한 예의범절을 유지했어요.',
  example_en_3 = 'The guests were expected to observe decorum at the state dinner.',
  example_ko_3 = '손님들은 국빈 만찬에서 예의범절을 지킬 것이 요구됐어요.',
  example_en_4 = 'She reminded the younger staff about decorum in formal settings.',
  example_ko_4 = '그녀는 어린 직원들에게 격식 있는 자리에서의 예의범절을 상기시켰어요.',
  example_en_5 = 'Decorum in greetings reflects the culture of an organization.',
  example_ko_5 = '인사에서의 예의범절은 조직의 문화를 반영해요.'
WHERE id = 'w_greeting_B2_03';

UPDATE words SET
  example_en_2 = 'The letter began with an elegant salutation addressed to the board.',
  example_ko_2 = '편지는 이사회에 보내는 우아한 인사말로 시작됐어요.',
  example_en_3 = 'A respectful salutation sets the tone for any formal correspondence.',
  example_ko_3 = '공손한 인사말은 공식 서신의 분위기를 결정해요.',
  example_en_4 = 'He responded to her salutation with a deep and respectful bow.',
  example_ko_4 = '그는 그녀의 인사에 깊고 정중한 절로 화답했어요.',
  example_en_5 = 'The ambassador''s salutation was broadcast to the entire nation.',
  example_ko_5 = '대사의 인사말이 전국에 방영됐어요.'
WHERE id = 'w_greeting_B2_04';

UPDATE words SET
  example_en_2 = 'She made herself approachable by smiling and making eye contact.',
  example_ko_2 = '그녀는 미소 짓고 눈을 맞추며 다가가기 쉽게 했어요.',
  example_en_3 = 'An approachable manager gets better feedback from the team.',
  example_ko_3 = '다가가기 쉬운 관리자는 팀으로부터 더 나은 피드백을 받아요.',
  example_en_4 = 'His approachable tone in the introduction invited many follow-up questions.',
  example_ko_4 = '소개에서 그의 다가가기 쉬운 톤이 많은 후속 질문을 이끌었어요.',
  example_en_5 = 'Being approachable is a skill that can be developed with practice.',
  example_ko_5 = '다가가기 쉬운 태도는 연습을 통해 개발할 수 있는 기술이에요.'
WHERE id = 'w_greeting_B2_05';

UPDATE words SET
  example_en_2 = 'She was diplomatic when navigating the tricky introductions at the gala.',
  example_ko_2 = '갈라 행사에서 까다로운 소개를 처리할 때 그녀는 외교적으로 행동했어요.',
  example_en_3 = 'A diplomatic response to an awkward greeting can save the moment.',
  example_ko_3 = '어색한 인사에 대한 외교적 대응이 그 순간을 살릴 수 있어요.',
  example_en_4 = 'He was diplomatic in redirecting the conversation to safer ground.',
  example_ko_4 = '그는 대화를 더 안전한 주제로 전환하는 데 외교적이었어요.',
  example_en_5 = 'Diplomatic communication is a core skill in international networking.',
  example_ko_5 = '외교적 소통은 국제 네트워킹의 핵심 기술이에요.'
WHERE id = 'w_greeting_B2_06';

UPDATE words SET
  example_en_2 = 'She was tactful in steering the conversation away from controversy.',
  example_ko_2 = '그녀는 논란을 피해 대화를 이끌어가는 데 요령 있었어요.',
  example_en_3 = 'A tactful compliment is specific and genuine, not generic.',
  example_ko_3 = '요령 있는 칭찬은 구체적이고 진심이에요, 막연하지 않아요.',
  example_en_4 = 'Being tactful means knowing when to speak and when to listen.',
  example_ko_4 = '요령 있다는 것은 언제 말하고 언제 들어야 하는지 아는 것을 의미해요.',
  example_en_5 = 'His tactful introduction eased the tension between the two parties.',
  example_ko_5 = '그의 요령 있는 소개가 두 당사자 간의 긴장을 완화했어요.'
WHERE id = 'w_greeting_B2_07';

UPDATE words SET
  example_en_2 = 'The way she remembered everyone''s names was truly endearing.',
  example_ko_2 = '그녀가 모든 사람의 이름을 기억하는 방식이 정말 정겨웠어요.',
  example_en_3 = 'His endearing habit of bowing slightly won over the foreign visitors.',
  example_ko_3 = '그의 약간 고개를 숙이는 정겨운 습관이 외국 방문객의 마음을 얻었어요.',
  example_en_4 = 'There was something endearing about the way he fumbled through his intro.',
  example_ko_4 = '그가 소개를 더듬더듬 하는 방식에는 정겨운 무언가가 있었어요.',
  example_en_5 = 'An endearing quality in a leader is the ability to greet janitors like CEOs.',
  example_ko_5 = '리더의 정겨운 자질은 청소부를 CEO처럼 맞이하는 능력이에요.'
WHERE id = 'w_greeting_B2_08';

UPDATE words SET
  example_en_2 = 'Her charismatic introduction kept the entire room riveted.',
  example_ko_2 = '그녀의 카리스마 있는 소개로 방 전체가 집중했어요.',
  example_en_3 = 'He was charismatic without being over-the-top or showy.',
  example_ko_3 = '그는 과하거나 과시하지 않으면서도 카리스마가 넘쳤어요.',
  example_en_4 = 'Charismatic speakers know how to make every person feel heard.',
  example_ko_4 = '카리스마 있는 연설가는 모든 사람이 들려진다고 느끼게 해요.',
  example_en_5 = 'His charismatic greeting at the summit was replayed across news channels.',
  example_ko_5 = '정상회담에서 그의 카리스마 있는 인사가 뉴스 채널에서 반복 방영됐어요.'
WHERE id = 'w_greeting_B2_09';

UPDATE words SET
  example_en_2 = 'The congenial host made introductions feel effortless and natural.',
  example_ko_2 = '마음이 맞는 주최자가 소개를 자연스럽고 수월하게 만들었어요.',
  example_en_3 = 'They found themselves in congenial company right from the start.',
  example_ko_3 = '처음부터 마음이 맞는 사람들 속에 있음을 알게 됐어요.',
  example_en_4 = 'A congenial setting lowers barriers and encourages honest conversation.',
  example_ko_4 = '마음이 맞는 환경은 장벽을 낮추고 솔직한 대화를 장려해요.',
  example_en_5 = 'She was congenial to everyone regardless of their background or status.',
  example_ko_5 = '그녀는 배경이나 지위에 상관없이 모든 사람에게 마음이 맞았어요.'
WHERE id = 'w_greeting_B2_10';

UPDATE words SET
  example_en_2 = 'She was articulate in expressing her goals during the introduction.',
  example_ko_2 = '소개 중 그녀는 목표를 명확하게 표현했어요.',
  example_en_3 = 'Being articulate helps you leave a strong impression at networking events.',
  example_ko_3 = '표현이 명확하면 네트워킹 행사에서 강한 인상을 남길 수 있어요.',
  example_en_4 = 'He became more articulate by practicing his self-introduction regularly.',
  example_ko_4 = '그는 자기소개를 정기적으로 연습하면서 표현이 더 명확해졌어요.',
  example_en_5 = 'An articulate opener sets the tone for a confident conversation.',
  example_ko_5 = '명확한 오프닝은 자신감 있는 대화의 분위기를 만들어요.'
WHERE id = 'w_greeting_B2_11';

UPDATE words SET
  example_en_2 = 'He maintained composure when greeted by a very hostile audience.',
  example_ko_2 = '매우 적대적인 청중에게 인사받을 때도 그는 침착함을 유지했어요.',
  example_en_3 = 'Her composure during the high-pressure introduction impressed everyone.',
  example_ko_3 = '압박감이 큰 소개에서 그녀의 침착함이 모두를 감동시켰어요.',
  example_en_4 = 'Composure comes across in your posture, eye contact, and tone of voice.',
  example_ko_4 = '침착함은 자세, 눈 맞춤, 목소리 톤에서 드러나요.',
  example_en_5 = 'Losing your composure during a greeting can undermine your credibility.',
  example_ko_5 = '인사 중 침착함을 잃으면 신뢰성이 훼손될 수 있어요.'
WHERE id = 'w_greeting_B2_12';

UPDATE words SET
  example_en_2 = 'The cultural protocol for greeting seniors differs widely in Asia.',
  example_ko_2 = '아시아에서 어른을 맞이하는 문화적 의전은 크게 달라요.',
  example_en_3 = 'She followed the diplomatic protocol precisely when meeting the envoy.',
  example_ko_3 = '외교 의전을 정확히 따르며 그녀는 사절을 맞이했어요.',
  example_en_4 = 'He brushed up on the protocol before the high-level meeting.',
  example_ko_4 = '고위급 회의 전 그는 의전을 다시 익혔어요.',
  example_en_5 = 'Breaking protocol inadvertently can cause awkwardness in formal settings.',
  example_ko_5 = '의도치 않게 의전을 어기면 격식 있는 자리에서 어색함이 생길 수 있어요.'
WHERE id = 'w_greeting_B2_13';

UPDATE words SET
  example_en_2 = 'She reciprocated the kind words with an equally warm response.',
  example_ko_2 = '그녀는 친절한 말에 똑같이 따뜻한 응답으로 화답했어요.',
  example_en_3 = 'He always reciprocates a greeting with genuine enthusiasm.',
  example_ko_3 = '그는 항상 진심 어린 열정으로 인사에 화답해요.',
  example_en_4 = 'Reciprocating warmth makes a conversation feel mutual and balanced.',
  example_ko_4 = '따뜻함에 화답하면 대화가 상호적이고 균형 잡힌 느낌이 들어요.',
  example_en_5 = 'When she bowed, he immediately reciprocated with a respectful nod.',
  example_ko_5 = '그녀가 절을 하자 그는 즉시 정중한 고개 끄덕임으로 화답했어요.'
WHERE id = 'w_greeting_B2_14';

UPDATE words SET
  example_en_2 = 'He entered the room with the poise of someone used to public attention.',
  example_ko_2 = '그는 대중의 주목에 익숙한 사람의 품위로 방에 들어왔어요.',
  example_en_3 = 'Her poise during the live introduction earned great admiration.',
  example_ko_3 = '생방송 소개 중 그녀의 품위는 큰 감탄을 자아냈어요.',
  example_en_4 = 'Poise is about being comfortable in your own skin, especially with strangers.',
  example_ko_4 = '품위는 자기 자신에게 편안한 것이에요, 특히 낯선 사람들과 함께할 때.',
  example_en_5 = 'She greeted the panel with remarkable poise despite her nerves.',
  example_ko_5 = '긴장됐음에도 그녀는 놀라운 품위로 패널에게 인사했어요.'
WHERE id = 'w_greeting_B2_15';

UPDATE words SET
  example_en_2 = 'She cultivated relationships at every event she attended.',
  example_ko_2 = '그녀는 참석하는 모든 행사에서 관계를 쌓았어요.',
  example_en_3 = 'Cultivating professional contacts takes time and genuine effort.',
  example_ko_3 = '직업적 인맥을 쌓는 것은 시간과 진심 어린 노력이 필요해요.',
  example_en_4 = 'He cultivated a reputation for being warm and approachable.',
  example_ko_4 = '그는 따뜻하고 다가가기 쉬운 사람이라는 평판을 쌓았어요.',
  example_en_5 = 'Cultivating trust begins with the very first greeting you give.',
  example_ko_5 = '신뢰를 쌓는 것은 처음 건네는 인사에서 시작돼요.'
WHERE id = 'w_greeting_B2_16';

UPDATE words SET
  example_en_2 = 'The brevity of her speech was itself a sign of confidence.',
  example_ko_2 = '그녀 연설의 간결함 자체가 자신감의 표시였어요.',
  example_en_3 = 'He valued brevity in greetings — a quick hello went a long way.',
  example_ko_3 = '그는 인사에서 간결함을 소중히 여겼어요 — 짧은 인사 한마디가 큰 효과를 냈어요.',
  example_en_4 = 'Brevity and warmth together make for the ideal social introduction.',
  example_ko_4 = '간결함과 따뜻함이 합쳐지면 이상적인 사회적 소개가 돼요.',
  example_en_5 = 'The keynote speaker was praised for the brevity of his opening remarks.',
  example_ko_5 = '기조 연설자는 개회사의 간결함으로 칭찬을 받았어요.'
WHERE id = 'w_greeting_B2_17';

UPDATE words SET
  example_en_2 = 'The way she carried herself spoke of distinction and quiet authority.',
  example_ko_2 = '그녀의 태도에서는 품격과 조용한 권위가 느껴졌어요.',
  example_en_3 = 'He made an introduction with a sense of distinction that turned heads.',
  example_ko_3 = '그는 고개를 돌리게 만드는 품격 있는 소개를 했어요.',
  example_en_4 = 'Distinction in social settings comes from genuine warmth, not status.',
  example_ko_4 = '사회적 자리에서의 품격은 지위가 아니라 진심 어린 따뜻함에서 나와요.',
  example_en_5 = 'Her distinction was evident from the first handshake and warm smile.',
  example_ko_5 = '첫 악수와 따뜻한 미소에서 그녀의 품격이 분명히 드러났어요.'
WHERE id = 'w_greeting_B2_18';

UPDATE words SET
  example_en_2 = 'She acknowledged the latecomers with a graceful wave.',
  example_ko_2 = '그녀는 늦게 온 사람들을 우아하게 손을 흔들며 알아봤어요.',
  example_en_3 = 'He acknowledged the mentor who shaped his communication style.',
  example_ko_3 = '그는 자신의 소통 방식을 형성해준 멘토를 인정했어요.',
  example_en_4 = 'Publicly acknowledging someone in a speech is a powerful gesture.',
  example_ko_4 = '연설에서 공개적으로 누군가를 알아봐주는 것은 강력한 제스처예요.',
  example_en_5 = 'She acknowledged every attendee by name as they entered the room.',
  example_ko_5 = '그녀는 참석자들이 방에 들어올 때마다 이름으로 알아봐줬어요.'
WHERE id = 'w_greeting_B2_19';

UPDATE words SET
  example_en_2 = 'His personable approach made the formal reception feel more relaxed.',
  example_ko_2 = '그의 붙임성 있는 접근이 격식 있는 리셉션을 더 편안하게 만들었어요.',
  example_en_3 = 'She was personable enough to make even the shyest guests open up.',
  example_ko_3 = '그녀는 가장 수줍은 손님도 마음을 열게 할 만큼 붙임성이 있었어요.',
  example_en_4 = 'Being personable is not about being loud — it is about being present.',
  example_ko_4 = '붙임성 있다는 것은 시끄럽다는 것이 아니에요 — 현재에 있는 거예요.',
  example_en_5 = 'She was known for her personable manner in every introduction she gave.',
  example_ko_5 = '그녀는 모든 소개에서 붙임성 있는 태도로 알려져 있었어요.'
WHERE id = 'w_greeting_B2_20';

UPDATE words SET
  example_en_2 = 'Her body language conveys openness and warmth even before she speaks.',
  example_ko_2 = '그녀의 몸짓은 말하기 전에도 개방성과 따뜻함을 전달해요.',
  example_en_3 = 'A firm handshake can convey confidence and trustworthiness.',
  example_ko_3 = '힘찬 악수는 자신감과 신뢰성을 전달할 수 있어요.',
  example_en_4 = 'He conveyed deep respect with a slow, deliberate bow.',
  example_ko_4 = '그는 천천히 신중한 절로 깊은 존경을 전달했어요.',
  example_en_5 = 'A warm smile conveys more sincerity than any rehearsed speech.',
  example_ko_5 = '따뜻한 미소는 어떤 연습된 연설보다 더 많은 진심을 전달해요.'
WHERE id = 'w_greeting_B2_21';

UPDATE words SET
  example_en_2 = 'She found the formality of the event refreshing and well-organized.',
  example_ko_2 = '그녀는 행사의 격식이 상쾌하고 잘 정돈됐다고 느꼈어요.',
  example_en_3 = 'Some formality is expected when meeting a senior executive for the first time.',
  example_ko_3 = '고위 임원을 처음 만날 때는 어느 정도 격식이 기대돼요.',
  example_en_4 = 'Excessive formality can make people feel unwelcome and stiff.',
  example_ko_4 = '과도한 격식은 사람들이 환영받지 못하고 딱딱하게 느끼게 할 수 있어요.',
  example_en_5 = 'She balanced formality and warmth perfectly in her opening remarks.',
  example_ko_5 = '그녀는 개회사에서 격식과 따뜻함을 완벽하게 균형 있게 유지했어요.'
WHERE id = 'w_greeting_B2_22';

UPDATE words SET
  example_en_2 = 'His engaging introduction kept the entire room interested.',
  example_ko_2 = '그의 매력적인 소개가 방 전체의 관심을 유지했어요.',
  example_en_3 = 'She used an engaging anecdote to break the ice at the event.',
  example_ko_3 = '그녀는 행사에서 분위기를 풀기 위해 매력적인 일화를 사용했어요.',
  example_en_4 = 'Engaging conversation begins with showing genuine curiosity about others.',
  example_ko_4 = '매력적인 대화는 다른 사람에 대한 진심 어린 호기심에서 시작해요.',
  example_en_5 = 'She had an engaging presence that made people want to know her better.',
  example_ko_5 = '그녀는 사람들이 더 잘 알고 싶어하는 매력적인 존재감을 지녔어요.'
WHERE id = 'w_greeting_B2_23';

UPDATE words SET
  example_en_2 = 'The workshop helped demystify complex social etiquette for newcomers.',
  example_ko_2 = '워크숍은 신입들에게 복잡한 사회 예절을 쉽게 이해하게 해줬어요.',
  example_en_3 = 'She aimed to demystify formal greetings for her international students.',
  example_ko_3 = '그녀는 국제 학생들에게 격식 있는 인사를 쉽게 설명하려 했어요.',
  example_en_4 = 'Understanding cultural cues can demystify seemingly odd greeting customs.',
  example_ko_4 = '문화적 신호를 이해하면 얼핏 이상해 보이는 인사 관습을 쉽게 이해할 수 있어요.',
  example_en_5 = 'His book set out to demystify networking for introverts.',
  example_ko_5 = '그의 책은 내성적인 사람들에게 네트워킹을 쉽게 이해시키려 했어요.'
WHERE id = 'w_greeting_B2_24';

UPDATE words SET
  example_en_2 = 'The nuance in his tone made the greeting feel warm, not scripted.',
  example_ko_2 = '그의 톤에 담긴 뉘앙스가 인사를 대본 같지 않고 따뜻하게 느끼게 했어요.',
  example_en_3 = 'She appreciated the subtle nuances in the way different cultures bow.',
  example_ko_3 = '그녀는 다른 문화들이 절하는 방식의 미묘한 뉘앙스를 감사하게 여겼어요.',
  example_en_4 = 'Understanding nuance helps you read a room before you speak.',
  example_ko_4 = '뉘앙스를 이해하면 말하기 전에 분위기를 파악할 수 있어요.',
  example_en_5 = 'There was a nuance of hesitation in his greeting that she noticed.',
  example_ko_5 = '그녀는 그의 인사에서 미묘한 망설임의 뉘앙스를 알아차렸어요.'
WHERE id = 'w_greeting_B2_25';

UPDATE words SET
  example_en_2 = 'She greeted the hesitant newcomer with an amiable smile.',
  example_ko_2 = '그녀는 망설이는 신입에게 상냥한 미소로 인사했어요.',
  example_en_3 = 'His amiable manner disarmed even the most skeptical first-timers.',
  example_ko_3 = '그의 상냥한 태도는 가장 의심스러운 첫 방문자도 무장 해제시켰어요.',
  example_en_4 = 'She was amiable to everyone at the reception, regardless of their rank.',
  example_ko_4 = '그녀는 지위에 상관없이 리셉션의 모든 사람에게 상냥했어요.',
  example_en_5 = 'An amiable greeting makes even formal occasions feel human and warm.',
  example_ko_5 = '상냥한 인사는 격식 있는 자리도 인간적이고 따뜻하게 느끼게 해요.'
WHERE id = 'w_greeting_B2_26';

UPDATE words SET
  example_en_2 = 'Though reserved at first, she gradually opened up over dinner.',
  example_ko_2 = '처음에는 말이 없었지만 저녁 식사 중 점차 마음을 열었어요.',
  example_en_3 = 'His reserved nature often gave the wrong impression to strangers.',
  example_ko_3 = '그의 내성적인 성격이 낯선 사람들에게 잘못된 인상을 주곤 했어요.',
  example_en_4 = 'She was reserved in large groups but shone in one-on-one settings.',
  example_ko_4 = '그녀는 큰 그룹에서는 말이 없었지만 일대일 자리에서는 빛났어요.',
  example_en_5 = 'Even reserved people can greet warmly once they feel comfortable.',
  example_ko_5 = '내성적인 사람도 편안함을 느끼면 따뜻하게 인사할 수 있어요.'
WHERE id = 'w_greeting_B2_27';

UPDATE words SET
  example_en_2 = 'She took the initiative to organize a welcome lunch for the new hire.',
  example_ko_2 = '그녀는 솔선하여 신입을 위한 환영 점심을 준비했어요.',
  example_en_3 = 'Taking initiative in introductions shows confidence and social intelligence.',
  example_ko_3 = '소개에서 솔선하는 것은 자신감과 사회적 지능을 보여줘요.',
  example_en_4 = 'He showed initiative by greeting the keynote speaker before the event.',
  example_ko_4 = '그는 행사 전에 기조 연설자에게 먼저 인사함으로써 솔선함을 보였어요.',
  example_en_5 = 'Taking initiative in networking can set you apart from the crowd.',
  example_ko_5 = '네트워킹에서 솔선하는 것이 다른 사람들과 차별화될 수 있어요.'
WHERE id = 'w_greeting_B2_28';

UPDATE words SET
  example_en_2 = 'She was forthcoming about her professional journey during the introduction.',
  example_ko_2 = '소개 중 그녀는 자신의 직업 여정에 대해 기꺼이 이야기했어요.',
  example_en_3 = 'Being forthcoming builds trust faster than a formal bio ever could.',
  example_ko_3 = '기꺼이 이야기하는 태도는 어떤 공식 약력보다 빠르게 신뢰를 쌓아요.',
  example_en_4 = 'He was forthcoming with information when people asked where he worked.',
  example_ko_4 = '사람들이 어디서 일하냐고 물을 때 그는 기꺼이 정보를 공유했어요.',
  example_en_5 = 'A forthcoming attitude in networking events encourages reciprocal openness.',
  example_ko_5 = '네트워킹 행사에서 기꺼이 말하는 태도는 상호적인 개방성을 장려해요.'
WHERE id = 'w_greeting_B2_29';

UPDATE words SET
  example_en_2 = 'The convivial gathering made introductions feel natural and effortless.',
  example_ko_2 = '유쾌한 모임이 소개를 자연스럽고 수월하게 느끼게 했어요.',
  example_en_3 = 'She had a convivial personality that lit up every room she entered.',
  example_ko_3 = '그녀는 들어가는 모든 방을 밝히는 유쾌한 성격을 가졌어요.',
  example_en_4 = 'He promoted a convivial office culture that started with morning greetings.',
  example_ko_4 = '그는 아침 인사에서 시작되는 유쾌한 사무실 문화를 촉진했어요.',
  example_en_5 = 'A convivial host ensures no guest feels left out or unwelcome.',
  example_ko_5 = '유쾌한 주최자는 어떤 손님도 소외되거나 환영받지 못한다고 느끼지 않도록 해요.'
WHERE id = 'w_greeting_B2_30';

UPDATE words SET
  example_en_2 = 'She made an effort to be inclusive when introducing people in groups.',
  example_ko_2 = '그룹에서 사람들을 소개할 때 그녀는 포용적이 되려고 노력했어요.',
  example_en_3 = 'An inclusive greeting acknowledges newcomers as valued members.',
  example_ko_3 = '포용적인 인사는 새로운 사람을 소중한 구성원으로 인정해요.',
  example_en_4 = 'He made sure every person in the room received an inclusive welcome.',
  example_ko_4 = '그는 방의 모든 사람이 포용적인 환영을 받도록 했어요.',
  example_en_5 = 'Being inclusive in greetings sets a positive tone for any team dynamic.',
  example_ko_5 = '인사에서 포용적인 태도는 모든 팀 역학에 긍정적인 분위기를 만들어요.'
WHERE id = 'w_greeting_B2_31';

UPDATE words SET
  example_en_2 = 'A confident demeanor signals readiness and reliability.',
  example_ko_2 = '자신감 있는 태도는 준비성과 신뢰성을 나타내요.',
  example_en_3 = 'She adjusted her demeanor when greeting the visiting professor.',
  example_ko_3 = '방문 교수를 맞이할 때 그녀는 태도를 조정했어요.',
  example_en_4 = 'His relaxed demeanor made the entire panel feel at ease.',
  example_ko_4 = '그의 편안한 태도가 패널 전체를 편안하게 만들었어요.',
  example_en_5 = 'Matching your demeanor to the occasion is a mark of social intelligence.',
  example_ko_5 = '상황에 맞게 태도를 맞추는 것은 사회적 지능의 표시예요.'
WHERE id = 'w_greeting_B2_32';

UPDATE words SET
  example_en_2 = 'Her captivating smile made her memorable at every networking event.',
  example_ko_2 = '그녀의 매혹적인 미소는 모든 네트워킹 행사에서 그녀를 기억에 남게 했어요.',
  example_en_3 = 'His captivating presence meant people flocked to introduce themselves.',
  example_ko_3 = '그의 매혹적인 존재감 덕분에 사람들이 몰려와 자기소개를 했어요.',
  example_en_4 = 'She opened with a captivating anecdote that drew everyone in.',
  example_ko_4 = '그녀는 모두를 끌어들이는 매혹적인 일화로 시작했어요.',
  example_en_5 = 'A captivating greeting can open doors that a resume never could.',
  example_ko_5 = '매혹적인 인사는 이력서로는 열 수 없는 문을 열 수 있어요.'
WHERE id = 'w_greeting_B2_33';

UPDATE words SET
  example_en_2 = 'The CEO''s welcoming style became the benchmark for the company culture.',
  example_ko_2 = 'CEO의 환영 방식이 회사 문화의 기준이 됐어요.',
  example_en_3 = 'Her greeting etiquette was so polished it became a benchmark for others.',
  example_ko_3 = '그녀의 인사 예절이 너무 완벽해서 다른 사람들의 기준이 됐어요.',
  example_en_4 = 'Setting a benchmark for warm greetings improves team culture over time.',
  example_ko_4 = '따뜻한 인사에 대한 기준을 세우면 시간이 지날수록 팀 문화가 개선돼요.',
  example_en_5 = 'He used the most articulate speakers he met as benchmarks for his own style.',
  example_ko_5 = '그는 만났던 가장 표현이 뛰어난 연설가들을 자신의 스타일 기준으로 삼았어요.'
WHERE id = 'w_greeting_B2_34';

UPDATE words SET
  example_en_2 = 'A warm first greeting helps establish the foundation for trust.',
  example_ko_2 = '따뜻한 첫 인사는 신뢰의 기반을 세우는 데 도움이 돼요.',
  example_en_3 = 'She worked hard to establish herself as a welcoming presence in the team.',
  example_ko_3 = '그녀는 팀에서 환영하는 존재로 자리 잡기 위해 열심히 노력했어요.',
  example_en_4 = 'Establish clear social rituals like greeting colleagues every morning.',
  example_ko_4 = '매일 아침 동료에게 인사하는 것 같은 명확한 사회적 의식을 확립해요.',
  example_en_5 = 'Establishing rapport early makes difficult conversations much easier later.',
  example_ko_5 = '초기에 유대감을 확립하면 나중에 어려운 대화가 훨씬 쉬워져요.'
WHERE id = 'w_greeting_B2_35';

-- C1 (35개)
UPDATE words SET
  example_en_2 = 'Her eloquent words at the ceremony left the audience deeply moved.',
  example_ko_2 = '행사에서 그녀의 웅변적인 말이 청중을 깊이 감동시켰어요.',
  example_en_3 = 'He greeted the delegation with an eloquent and concise opening.',
  example_ko_3 = '그는 웅변적이고 간결한 오프닝으로 대표단을 맞이했어요.',
  example_en_4 = 'An eloquent introduction sets a speaker apart from the very first line.',
  example_ko_4 = '웅변적인 소개는 첫 줄에서부터 연설자를 돋보이게 해요.',
  example_en_5 = 'She was eloquent without being verbose — every word had purpose.',
  example_ko_5 = '그녀는 장황하지 않으면서 웅변적이었어요 — 모든 단어에 목적이 있었어요.'
WHERE id = 'w_greeting_C1_01';

UPDATE words SET
  example_en_2 = 'The distinguished professor was welcomed with a standing ovation.',
  example_ko_2 = '저명한 교수님이 기립 박수로 환영받았어요.',
  example_en_3 = 'She introduced the distinguished speaker with measured admiration.',
  example_ko_3 = '그녀는 저명한 연설자를 절제된 감탄으로 소개했어요.',
  example_en_4 = 'His distinguished career in diplomacy was highlighted during the introduction.',
  example_ko_4 = '소개 중 외교 분야에서의 그의 저명한 경력이 강조됐어요.',
  example_en_5 = 'Distinguished guests deserve a greeting that matches their stature.',
  example_ko_5 = '저명한 손님은 그들의 위상에 걸맞은 인사를 받을 자격이 있어요.'
WHERE id = 'w_greeting_C1_02';

UPDATE words SET
  example_en_2 = 'She looked poised and ready as she stepped onto the stage.',
  example_ko_2 = '그녀는 무대에 오르며 침착하고 준비된 모습이었어요.',
  example_en_3 = 'He remained poised despite the unexpected questions from the audience.',
  example_ko_3 = '청중의 예상치 못한 질문에도 그는 침착함을 유지했어요.',
  example_en_4 = 'Poised speakers command attention from the moment they say hello.',
  example_ko_4 = '침착한 연설가는 인사하는 순간부터 주의를 집중시켜요.',
  example_en_5 = 'She was so poised that even experienced diplomats took notice.',
  example_ko_5 = '그녀는 너무 침착해서 경험 많은 외교관들도 주목했어요.'
WHERE id = 'w_greeting_C1_03';

UPDATE words SET
  example_en_2 = 'His affable nature made every meeting feel like a reunion.',
  example_ko_2 = '그의 상냥한 성격 덕분에 모든 만남이 재회처럼 느껴졌어요.',
  example_en_3 = 'She was affable with strangers — never guarded, always open.',
  example_ko_3 = '그녀는 낯선 사람들에게도 상냥했어요 — 절대 경계하지 않고 항상 열려 있었어요.',
  example_en_4 = 'An affable greeting can open more doors than a polished resume.',
  example_ko_4 = '상냥한 인사는 완벽한 이력서보다 더 많은 문을 열 수 있어요.',
  example_en_5 = 'He was known for his affable disposition at every professional event.',
  example_ko_5 = '그는 모든 직업적 행사에서 상냥한 성격으로 알려져 있었어요.'
WHERE id = 'w_greeting_C1_04';

UPDATE words SET
  example_en_2 = 'Her gregarious spirit meant she was always the first to say hello.',
  example_ko_2 = '그녀의 사교적인 기질 덕분에 항상 먼저 인사했어요.',
  example_en_3 = 'Gregarious individuals tend to draw energy from large social gatherings.',
  example_ko_3 = '사교적인 사람들은 큰 사교적 모임에서 에너지를 얻는 경향이 있어요.',
  example_en_4 = 'He became more gregarious after years of public speaking practice.',
  example_ko_4 = '그는 수년간 공개 연설을 연습한 후 더 사교적이 됐어요.',
  example_en_5 = 'A gregarious team member helps integrate newcomers faster.',
  example_ko_5 = '사교적인 팀원은 신입이 더 빠르게 적응하도록 도와요.'
WHERE id = 'w_greeting_C1_05';

UPDATE words SET
  example_en_2 = 'He was so personable that people often sought him out at events.',
  example_ko_2 = '그는 너무 호감 가는 사람이라 사람들이 행사에서 자주 그를 찾았어요.',
  example_en_3 = 'A personable host ensures every guest feels personally welcomed.',
  example_ko_3 = '호감 가는 주최자는 모든 손님이 개인적으로 환영받는다고 느끼게 해요.',
  example_en_4 = 'Personable leaders are often the most effective communicators.',
  example_ko_4 = '호감 가는 리더들이 종종 가장 효과적인 소통가예요.',
  example_en_5 = 'Her personable manner made introductions flow naturally and warmly.',
  example_ko_5 = '그녀의 호감 가는 태도가 소개를 자연스럽고 따뜻하게 흐르게 했어요.'
WHERE id = 'w_greeting_C1_06';

UPDATE words SET
  example_en_2 = 'His deferential greeting to the senior professor showed deep respect.',
  example_ko_2 = '선임 교수에 대한 그의 공손한 인사는 깊은 존경을 보여줬어요.',
  example_en_3 = 'She was deferential without losing her own voice or confidence.',
  example_ko_3 = '그녀는 자신의 목소리나 자신감을 잃지 않으면서 공손했어요.',
  example_en_4 = 'A deferential tone in greetings acknowledges hierarchy without being servile.',
  example_ko_4 = '인사에서 공손한 톤은 비굴하지 않으면서 위계질서를 인정해요.',
  example_en_5 = 'Being deferential at the right moment is a form of social intelligence.',
  example_ko_5 = '적절한 순간에 공손한 것은 사회적 지능의 한 형태예요.'
WHERE id = 'w_greeting_C1_07';

UPDATE words SET
  example_en_2 = 'Her amiable tone during the introduction made the room relax instantly.',
  example_ko_2 = '소개 중 그녀의 친절한 톤이 방 전체를 즉시 편안하게 했어요.',
  example_en_3 = 'He was amiable even when the conversation took an unexpected turn.',
  example_ko_3 = '대화가 예상치 못한 방향으로 흘러도 그는 친절했어요.',
  example_en_4 = 'An amiable disposition is the foundation of lasting professional relationships.',
  example_ko_4 = '친절한 성격은 지속적인 직업적 관계의 기반이에요.',
  example_en_5 = 'She was consistently amiable regardless of who she was greeting.',
  example_ko_5 = '그녀는 누구에게 인사하든 항상 친절했어요.'
WHERE id = 'w_greeting_C1_08';

UPDATE words SET
  example_en_2 = 'The two diplomats exchanged cordial greetings before the talks began.',
  example_ko_2 = '두 외교관은 회담이 시작되기 전에 다정한 인사를 나눴어요.',
  example_en_3 = 'She maintained a cordial relationship with colleagues across departments.',
  example_ko_3 = '그녀는 부서 전체 동료들과 다정한 관계를 유지했어요.',
  example_en_4 = 'A cordial greeting disarms even the most guarded individuals.',
  example_ko_4 = '다정한 인사는 가장 경계심이 강한 사람도 무장 해제시켜요.',
  example_en_5 = 'The cordial atmosphere of the meeting made difficult topics more accessible.',
  example_ko_5 = '회의의 다정한 분위기가 어려운 주제를 더 쉽게 접근하게 했어요.'
WHERE id = 'w_greeting_C1_09';

UPDATE words SET
  example_en_2 = 'He handled the awkward introduction with suave ease.',
  example_ko_2 = '그는 어색한 소개를 세련된 여유로 처리했어요.',
  example_en_3 = 'Her suave confidence made her an impressive presence at any event.',
  example_ko_3 = '그녀의 세련된 자신감은 어떤 행사에서도 인상적인 존재감을 만들었어요.',
  example_en_4 = 'Suave does not mean insincere — it means composed and considerate.',
  example_ko_4 = '세련됐다는 것이 진실되지 않다는 의미가 아니에요 — 침착하고 배려심 있다는 의미예요.',
  example_en_5 = 'His suave demeanor made every introduction feel polished and warm.',
  example_ko_5 = '그의 세련된 태도가 모든 소개를 세련되고 따뜻하게 느끼게 했어요.'
WHERE id = 'w_greeting_C1_10';

UPDATE words SET
  example_en_2 = 'Her eloquence in the opening address won universal admiration.',
  example_ko_2 = '개회사에서 그녀의 표현력이 보편적인 감탄을 얻었어요.',
  example_en_3 = 'Eloquence in everyday conversation builds confidence over time.',
  example_ko_3 = '일상 대화에서의 표현력은 시간이 지날수록 자신감을 키워줘요.',
  example_en_4 = 'She studied great speeches to develop her own eloquence.',
  example_ko_4 = '그녀는 자신의 표현력을 개발하기 위해 위대한 연설들을 공부했어요.',
  example_en_5 = 'His eloquence made even routine introductions feel meaningful.',
  example_ko_5 = '그의 표현력은 평범한 소개도 의미 있게 느끼게 했어요.'
WHERE id = 'w_greeting_C1_11';

UPDATE words SET
  example_en_2 = 'Diplomacy in greeting foreign guests requires cultural sensitivity.',
  example_ko_2 = '외국 손님을 맞이하는 외교에는 문화적 민감성이 필요해요.',
  example_en_3 = 'She resolved the tense greeting situation through quiet diplomacy.',
  example_ko_3 = '그녀는 조용한 외교로 긴장된 인사 상황을 해결했어요.',
  example_en_4 = 'Good diplomacy in introductions prevents misunderstandings before they start.',
  example_ko_4 = '소개에서의 좋은 외교는 오해가 시작되기 전에 예방해요.',
  example_en_5 = 'She used her natural diplomacy to bridge cultural gaps at the event.',
  example_ko_5 = '그녀는 행사에서 문화적 격차를 좁히기 위해 자연스러운 외교력을 발휘했어요.'
WHERE id = 'w_greeting_C1_12';

UPDATE words SET
  example_en_2 = 'The speaker''s prestige was evident from the standing ovation at arrival.',
  example_ko_2 = '도착 시 기립 박수에서 연설자의 명성이 분명히 드러났어요.',
  example_en_3 = 'She built her prestige by always greeting people with warmth.',
  example_ko_3 = '그녀는 항상 따뜻하게 인사하며 명성을 쌓았어요.',
  example_en_4 = 'Prestige alone does not guarantee a warm reception — behavior does.',
  example_ko_4 = '명성만으로는 따뜻한 환영이 보장되지 않아요 — 행동이 보장해줘요.',
  example_en_5 = 'His prestige in the field meant every introduction he gave carried weight.',
  example_ko_5 = '그 분야에서의 그의 명성은 그가 하는 모든 소개에 무게감을 더했어요.'
WHERE id = 'w_greeting_C1_13';

UPDATE words SET
  example_en_2 = 'Her cultivated speech patterns impressed the international delegates.',
  example_ko_2 = '그녀의 교양 있는 말하기 패턴이 국제 대표단을 감동시켰어요.',
  example_en_3 = 'He had a cultivated ability to put anyone at ease immediately.',
  example_ko_3 = '그는 누구나 즉시 편안하게 만드는 교양 있는 능력을 지녔어요.',
  example_en_4 = 'Cultivated manners are developed over time through experience and reflection.',
  example_ko_4 = '교양 있는 태도는 경험과 성찰을 통해 시간이 지나면서 개발돼요.',
  example_en_5 = 'Her cultivated approach to introductions reflected years of professional growth.',
  example_ko_5 = '소개에 대한 그녀의 교양 있는 접근법은 수년간의 직업적 성장을 반영했어요.'
WHERE id = 'w_greeting_C1_14';

UPDATE words SET
  example_en_2 = 'She remained composed when the unexpected guest arrived mid-event.',
  example_ko_2 = '행사 중 예상치 못한 손님이 도착했을 때도 그녀는 침착했어요.',
  example_en_3 = 'A composed greeting under pressure shows leadership qualities.',
  example_ko_3 = '압박 속에서도 침착한 인사는 리더십 자질을 보여줘요.',
  example_en_4 = 'He practiced his introduction until he felt fully composed.',
  example_ko_4 = '그는 완전히 침착하게 느껴질 때까지 소개를 연습했어요.',
  example_en_5 = 'She was composed and gracious even when the event did not go as planned.',
  example_ko_5 = '행사가 계획대로 되지 않아도 그녀는 침착하고 우아했어요.'
WHERE id = 'w_greeting_C1_15';

UPDATE words SET
  example_en_2 = 'A confident introduction can facilitate smoother team dynamics.',
  example_ko_2 = '자신감 있는 소개는 더 원활한 팀 역학을 촉진할 수 있어요.',
  example_en_3 = 'The host facilitated introductions between guests who shared interests.',
  example_ko_3 = '주최자는 공통 관심사를 가진 손님들 간의 소개를 촉진했어요.',
  example_en_4 = 'She facilitated the conversation by asking open-ended questions.',
  example_ko_4 = '그녀는 열린 질문을 던져 대화를 촉진했어요.',
  example_en_5 = 'Good etiquette facilitates connection — poor etiquette hinders it.',
  example_ko_5 = '좋은 예절은 연결을 촉진하고 — 나쁜 예절은 방해해요.'
WHERE id = 'w_greeting_C1_16';

UPDATE words SET
  example_en_2 = 'His demeanour during the formal greeting reflected years of experience.',
  example_ko_2 = '격식 있는 인사 중 그의 행동거지는 수년간의 경험을 반영했어요.',
  example_en_3 = 'She adjusted her demeanour to match the gravity of the occasion.',
  example_ko_3 = '그녀는 상황의 중요성에 맞게 행동거지를 조정했어요.',
  example_en_4 = 'Professional demeanour in greetings signals emotional maturity.',
  example_ko_4 = '인사에서의 전문적인 행동거지는 감정적 성숙을 나타내요.',
  example_en_5 = 'His calm demeanour reassured the nervous new staff member.',
  example_ko_5 = '그의 차분한 행동거지가 긴장한 신입 직원을 안심시켰어요.'
WHERE id = 'w_greeting_C1_17';

UPDATE words SET
  example_en_2 = 'In traditional Korean settings, elders are still venerated with deep bows.',
  example_ko_2 = '전통적인 한국 환경에서는 어른들이 여전히 깊은 절로 공경받아요.',
  example_en_3 = 'She venerated the scholar whose work had inspired her own research.',
  example_ko_3 = '그녀는 자신의 연구에 영감을 준 학자를 공경했어요.',
  example_en_4 = 'Cultures that venerate elders tend to have richer greeting rituals.',
  example_ko_4 = '어른을 공경하는 문화는 더 풍부한 인사 의식을 갖는 경향이 있어요.',
  example_en_5 = 'He venerated his mentor with a ceremonious bow at the award ceremony.',
  example_ko_5 = '시상식에서 그는 멘토를 의례적인 절로 공경했어요.'
WHERE id = 'w_greeting_C1_18';

UPDATE words SET
  example_en_2 = 'She was careful not to ingratiate herself too eagerly with the senior staff.',
  example_ko_2 = '그녀는 선임 직원들에게 너무 열심히 환심을 사려 하지 않으려 조심했어요.',
  example_en_3 = 'He avoided hollow compliments that might seem like an attempt to ingratiate.',
  example_ko_3 = '그는 환심을 사려는 것처럼 보일 수 있는 공허한 칭찬을 피했어요.',
  example_en_4 = 'Genuine warmth is never an attempt to ingratiate — it is simply authentic.',
  example_ko_4 = '진심 어린 따뜻함은 절대 환심을 사려는 시도가 아니에요 — 그냥 진정성이에요.',
  example_en_5 = 'She warned against trying to ingratiate yourself too quickly with new contacts.',
  example_ko_5 = '그녀는 새로운 연락처에 너무 빨리 환심을 사려 하는 것을 경계하라고 했어요.'
WHERE id = 'w_greeting_C1_19';

UPDATE words SET
  example_en_2 = 'A magnanimous host makes every guest feel equally valued.',
  example_ko_2 = '도량이 넓은 주최자는 모든 손님이 똑같이 소중하다고 느끼게 해요.',
  example_en_3 = 'She was magnanimous in crediting others during her opening remarks.',
  example_ko_3 = '개회사에서 그녀는 관대하게 다른 사람들의 공을 인정했어요.',
  example_en_4 = 'His magnanimous spirit meant he never greeted anyone coldly.',
  example_ko_4 = '그의 관대한 정신 덕분에 그는 아무에게도 냉정하게 인사하지 않았어요.',
  example_en_5 = 'Being magnanimous in a greeting shows true leadership character.',
  example_ko_5 = '인사에서 관대함은 진정한 리더십 성격을 보여줘요.'
WHERE id = 'w_greeting_C1_20';

UPDATE words SET
  example_en_2 = 'Her effusive greeting made the shy visitor feel instantly at home.',
  example_ko_2 = '그녀의 넘치는 인사로 수줍은 방문객이 즉시 편안함을 느꼈어요.',
  example_en_3 = 'He was effusive in his praise for the team during his introduction.',
  example_ko_3 = '소개 중 그는 팀에 대한 칭찬을 넘치도록 표현했어요.',
  example_en_4 = 'Effusive greetings can feel overwhelming if not balanced with sincerity.',
  example_ko_4 = '넘치는 인사는 진심이 균형 잡히지 않으면 부담스럽게 느껴질 수 있어요.',
  example_en_5 = 'She was known for her effusive warmth at every team welcome event.',
  example_ko_5 = '그녀는 모든 팀 환영 행사에서 넘치는 따뜻함으로 알려져 있었어요.'
WHERE id = 'w_greeting_C1_21';

UPDATE words SET
  example_en_2 = 'His unassuming manner was disarming in the best possible way.',
  example_ko_2 = '그의 겸손한 태도는 최고의 방식으로 긴장을 풀어줬어요.',
  example_en_3 = 'She remained unassuming despite her impressive track record.',
  example_ko_3 = '인상적인 실적에도 불구하고 그녀는 겸손함을 유지했어요.',
  example_en_4 = 'Unassuming people often make the strongest first impressions.',
  example_ko_4 = '겸손한 사람들이 종종 가장 강한 첫인상을 남겨요.',
  example_en_5 = 'His unassuming greeting made people want to know more about him.',
  example_ko_5 = '그의 겸손한 인사는 사람들이 그에 대해 더 알고 싶게 만들었어요.'
WHERE id = 'w_greeting_C1_22';

UPDATE words SET
  example_en_2 = 'Building rapport with new colleagues starts with a genuine greeting.',
  example_ko_2 = '새 동료들과 신뢰 관계를 쌓는 것은 진심 어린 인사에서 시작돼요.',
  example_en_3 = 'Their rapport developed so naturally that introductions felt effortless.',
  example_ko_3 = '그들의 신뢰 관계가 너무 자연스럽게 발전해 소개가 수월하게 느껴졌어요.',
  example_en_4 = 'He used active listening to build rapport during their first conversation.',
  example_ko_4 = '그는 첫 대화 중 신뢰 관계를 쌓기 위해 적극적인 경청을 사용했어요.',
  example_en_5 = 'Rapport built in the first five minutes of a meeting can shape the entire relationship.',
  example_ko_5 = '미팅 첫 5분에 쌓은 신뢰 관계가 전체 관계를 형성할 수 있어요.'
WHERE id = 'w_greeting_C1_23';

UPDATE words SET
  example_en_2 = 'People predisposed to warmth tend to excel in client-facing roles.',
  example_ko_2 = '따뜻함에 경향이 있는 사람들은 고객 대면 역할에서 뛰어난 경향이 있어요.',
  example_en_3 = 'She was predisposed to see the best in every new person she met.',
  example_ko_3 = '그녀는 새로 만나는 모든 사람에게서 최선을 보려는 경향이 있었어요.',
  example_en_4 = 'Being predisposed to openness makes you a better networker.',
  example_ko_4 = '개방성에 경향이 있으면 더 나은 네트워킹 사람이 돼요.',
  example_en_5 = 'Research shows humans are predisposed to trust those who smile on greeting.',
  example_ko_5 = '연구에 따르면 인간은 인사할 때 미소 짓는 사람을 신뢰하는 경향이 있어요.'
WHERE id = 'w_greeting_C1_24';

UPDATE words SET
  example_en_2 = 'She briefed her foreign counterpart on the local greeting customs.',
  example_ko_2 = '그녀는 외국 상대방에게 현지 인사 관습을 알려줬어요.',
  example_en_3 = 'He greeted his counterpart with the same formality he expected in return.',
  example_ko_3 = '그는 상대방에게 기대하는 것과 같은 격식으로 인사했어요.',
  example_en_4 = 'Cross-cultural greetings require understanding your counterpart''s norms.',
  example_ko_4 = '이문화 간 인사는 상대방의 규범을 이해하는 것이 필요해요.',
  example_en_5 = 'She made sure her counterpart felt respected from the very first greeting.',
  example_ko_5 = '그녀는 상대방이 첫 인사부터 존중받는다고 느끼도록 했어요.'
WHERE id = 'w_greeting_C1_25';

UPDATE words SET
  example_en_2 = 'Her friendly email was an overture that led to a long collaboration.',
  example_ko_2 = '그녀의 친근한 이메일이 긴 협업으로 이어지는 첫 발걸음이었어요.',
  example_en_3 = 'His casual greeting at the conference was an overture toward partnership.',
  example_ko_3 = '컨퍼런스에서 그의 가벼운 인사는 파트너십을 향한 첫 발걸음이었어요.',
  example_en_4 = 'She accepted the overture with warmth and began a meaningful conversation.',
  example_ko_4 = '그녀는 따뜻하게 첫 발걸음을 받아들이고 의미 있는 대화를 시작했어요.',
  example_en_5 = 'A well-crafted overture sets the stage for any lasting professional bond.',
  example_ko_5 = '잘 만들어진 첫 발걸음은 지속적인 직업적 유대의 무대를 마련해요.'
WHERE id = 'w_greeting_C1_26';

UPDATE words SET
  example_en_2 = 'Decorum in diplomatic greetings is non-negotiable in formal settings.',
  example_ko_2 = '외교적 인사에서의 예의범절은 격식 있는 자리에서 협상이 불가능해요.',
  example_en_3 = 'She upheld decorum even when the other party was being informal.',
  example_ko_3 = '상대방이 격식을 차리지 않을 때도 그녀는 예의범절을 지켰어요.',
  example_en_4 = 'He was praised for maintaining decorum throughout the heated reception.',
  example_ko_4 = '그는 뜨거운 리셉션 내내 예의범절을 유지한 것으로 칭찬받았어요.',
  example_en_5 = 'Teaching decorum to young professionals improves their long-term social capital.',
  example_ko_5 = '젊은 전문가들에게 예의범절을 가르치면 장기적인 사회적 자본이 향상돼요.'
WHERE id = 'w_greeting_C1_27';

UPDATE words SET
  example_en_2 = 'She insisted on propriety even in informal networking settings.',
  example_ko_2 = '비공식적인 네트워킹 자리에서도 그녀는 적절함을 고집했어요.',
  example_en_3 = 'Propriety in addressing elders is central to Korean culture.',
  example_ko_3 = '어른을 부르는 데 있어서의 적절함은 한국 문화의 중심이에요.',
  example_en_4 = 'He kept a sense of propriety even during casual Friday events.',
  example_ko_4 = '그는 캐주얼 프라이데이 행사에서도 적절함의 감각을 유지했어요.',
  example_en_5 = 'Propriety is not rigidity — it is knowing what is fitting for each moment.',
  example_ko_5 = '적절함은 경직됨이 아니에요 — 각 순간에 맞는 것이 무엇인지 아는 거예요.'
WHERE id = 'w_greeting_C1_28';

UPDATE words SET
  example_en_2 = 'Her disarming honesty made everyone in the room feel safe.',
  example_ko_2 = '그녀의 긴장을 풀어주는 솔직함이 방의 모든 사람을 안전하게 느끼게 했어요.',
  example_en_3 = 'He used a disarming self-deprecating joke to break the ice.',
  example_ko_3 = '그는 분위기를 풀기 위해 긴장을 풀어주는 자기 비하 농담을 사용했어요.',
  example_en_4 = 'A disarming greeting drops defenses and opens genuine conversation.',
  example_ko_4 = '긴장을 풀어주는 인사는 방어막을 내리고 진정한 대화를 열어요.',
  example_en_5 = 'She had a disarming way of greeting people that made them immediately trust her.',
  example_ko_5 = '그녀는 사람들을 즉시 신뢰하게 만드는 긴장을 풀어주는 인사 방식을 가졌어요.'
WHERE id = 'w_greeting_C1_29';

UPDATE words SET
  example_en_2 = 'She advised him to cut the verbiage and get to the point quickly.',
  example_ko_2 = '그녀는 그에게 장황한 말을 줄이고 빠르게 요점을 말하라고 조언했어요.',
  example_en_3 = 'His introduction was full of verbiage that diluted the key message.',
  example_ko_3 = '그의 소개는 핵심 메시지를 희석시키는 장황한 말로 가득했어요.',
  example_en_4 = 'Avoid verbiage in greetings — simple and sincere always wins.',
  example_ko_4 = '인사에서 장황한 말을 피하세요 — 단순하고 진심이 항상 이겨요.',
  example_en_5 = 'Trimming verbiage from his opening remarks made his speech far more effective.',
  example_ko_5 = '개회사에서 장황한 말을 줄이자 연설이 훨씬 효과적이 됐어요.'
WHERE id = 'w_greeting_C1_30';

UPDATE words SET
  example_en_2 = 'The opulent hall set high expectations for the reception that followed.',
  example_ko_2 = '화려한 홀이 이어지는 리셉션에 대한 높은 기대를 형성했어요.',
  example_en_3 = 'Despite the opulent surroundings, she greeted each guest humbly.',
  example_ko_3 = '화려한 주변 환경에도 불구하고 그녀는 각 손님에게 겸손하게 인사했어요.',
  example_en_4 = 'He felt out of place in the opulent reception but focused on being warm.',
  example_ko_4 = '화려한 리셉션이 어색하게 느껴졌지만 그는 따뜻하게 행동하는 데 집중했어요.',
  example_en_5 = 'True hospitality transcends opulent settings — it lives in simple warmth.',
  example_ko_5 = '진정한 환대는 화려한 환경을 초월해요 — 단순한 따뜻함 속에 살아있어요.'
WHERE id = 'w_greeting_C1_31';

UPDATE words SET
  example_en_2 = 'Her inimitable charm made every greeting feel like a personal moment.',
  example_ko_2 = '그녀의 모방할 수 없는 매력은 모든 인사를 개인적인 순간처럼 느끼게 했어요.',
  example_en_3 = 'He had an inimitable way of remembering and using people''s names.',
  example_ko_3 = '그는 사람들의 이름을 기억하고 사용하는 모방할 수 없는 방식을 가졌어요.',
  example_en_4 = 'Her inimitable style was studied by a generation of public speakers.',
  example_ko_4 = '그녀의 모방할 수 없는 스타일은 한 세대의 공개 연설가들이 연구했어요.',
  example_en_5 = 'What made his greetings inimitable was the genuine joy he showed.',
  example_ko_5 = '그의 인사를 모방할 수 없게 만든 것은 그가 보여준 진정한 기쁨이었어요.'
WHERE id = 'w_greeting_C1_32';

UPDATE words SET
  example_en_2 = 'He appreciated the candor with which she acknowledged the awkward silence.',
  example_ko_2 = '그는 그녀가 어색한 침묵을 인정하는 솔직함에 감사했어요.',
  example_en_3 = 'Her candor in greeting him by his nickname showed genuine familiarity.',
  example_ko_3 = '닉네임으로 인사하는 그녀의 솔직함은 진정한 친밀감을 보여줬어요.',
  example_en_4 = 'Candor and warmth together create the most trustworthy greeting style.',
  example_ko_4 = '솔직함과 따뜻함이 합쳐지면 가장 신뢰할 수 있는 인사 방식이 돼요.',
  example_en_5 = 'She greeted him with candor rather than false formality.',
  example_ko_5 = '그녀는 거짓 격식 대신 솔직함으로 그를 맞이했어요.'
WHERE id = 'w_greeting_C1_33';

UPDATE words SET
  example_en_2 = 'The warm greeting at the summit marked the beginning of a diplomatic entente.',
  example_ko_2 = '정상회담의 따뜻한 인사가 외교적 우호 관계의 시작을 알렸어요.',
  example_en_3 = 'Building an entente starts with small, consistent acts of goodwill.',
  example_ko_3 = '우호 관계를 쌓는 것은 작고 일관된 선의의 행동에서 시작돼요.',
  example_en_4 = 'Their entente was visible in the way they instinctively greeted each other.',
  example_ko_4 = '그들의 우호 관계는 서로를 본능적으로 맞이하는 방식에서 분명히 드러났어요.',
  example_en_5 = 'A spirit of entente made the cross-cultural introductions feel natural.',
  example_ko_5 = '우호 관계의 정신이 이문화 간 소개를 자연스럽게 느끼게 했어요.'
WHERE id = 'w_greeting_C1_34';

UPDATE words SET
  example_en_2 = 'A salutary reminder that warmth matters more than perfection in greetings.',
  example_ko_2 = '인사에서는 완벽함보다 따뜻함이 더 중요하다는 유익한 상기예요.',
  example_en_3 = 'His salutary habit of greeting staff by name raised morale significantly.',
  example_ko_3 = '직원들을 이름으로 인사하는 그의 유익한 습관이 사기를 크게 높였어요.',
  example_en_4 = 'The cross-cultural training had a salutary effect on the team''s interactions.',
  example_ko_4 = '이문화 교육이 팀의 상호작용에 유익한 효과를 미쳤어요.',
  example_en_5 = 'She found it salutary to reflect on her greeting habits each quarter.',
  example_ko_5 = '그녀는 매 분기마다 자신의 인사 습관을 돌아보는 것이 유익하다고 생각했어요.'
WHERE id = 'w_greeting_C1_35';

-- C2 (35개)
UPDATE words SET
  example_en_2 = 'His urbane wit made the formal introduction feel almost conversational.',
  example_ko_2 = '그의 세련된 재치 덕분에 격식 있는 소개가 거의 대화처럼 느껴졌어요.',
  example_en_3 = 'She admired his urbane composure when greeting dignitaries.',
  example_ko_3 = '고위 인사들을 맞이할 때 그의 세련된 침착함에 감탄했어요.',
  example_en_4 = 'An urbane manner signals education, self-awareness, and cultural fluency.',
  example_ko_4 = '세련된 태도는 교육, 자아 인식, 문화적 유창함을 나타내요.',
  example_en_5 = 'Despite the stressful context, he remained urbane and composed throughout.',
  example_ko_5 = '스트레스가 많은 상황에서도 그는 내내 세련되고 침착했어요.'
WHERE id = 'w_greeting_C2_01';

UPDATE words SET
  example_en_2 = 'Her debonair confidence in introducing herself was instantly captivating.',
  example_ko_2 = '자기소개에서 그녀의 우아한 자신감이 즉시 매혹적이었어요.',
  example_en_3 = 'He greeted the diplomats with debonair ease and effortless charm.',
  example_ko_3 = '그는 우아한 여유와 자연스러운 매력으로 외교관들에게 인사했어요.',
  example_en_4 = 'A debonair demeanor at formal events conveys readiness and sophistication.',
  example_ko_4 = '공식 행사에서 우아한 태도는 준비성과 세련됨을 전달해요.',
  example_en_5 = 'He was debonair in a way that felt natural rather than rehearsed.',
  example_ko_5 = '그는 연습된 것이 아니라 자연스럽게 느껴지는 방식으로 우아했어요.'
WHERE id = 'w_greeting_C2_02';

UPDATE words SET
  example_en_2 = 'Her refined delivery made even a brief greeting memorable.',
  example_ko_2 = '그녀의 품위 있는 전달 방식은 짧은 인사도 기억에 남게 했어요.',
  example_en_3 = 'Refined social skills take years to develop but are worth the effort.',
  example_ko_3 = '품위 있는 사회적 기술을 개발하는 데는 수년이 걸리지만 노력할 가치가 있어요.',
  example_en_4 = 'She brought a refined sense of ceremony to even the simplest gatherings.',
  example_ko_4 = '그녀는 가장 단순한 모임에도 품위 있는 의식의 감각을 가져왔어요.',
  example_en_5 = 'His refined manner of greeting elders earned universal admiration.',
  example_ko_5 = '어른에게 인사하는 그의 품위 있는 방식이 보편적인 감탄을 얻었어요.'
WHERE id = 'w_greeting_C2_03';

UPDATE words SET
  example_en_2 = 'She was gracious to the protesters who had gathered outside the venue.',
  example_ko_2 = '그녀는 장소 밖에 모인 시위대에게도 우아하게 인사했어요.',
  example_en_3 = 'He greeted his rivals with gracious sportsmanship after the competition.',
  example_ko_3 = '경쟁 후 그는 품위 있는 스포츠맨십으로 경쟁자들에게 인사했어요.',
  example_en_4 = 'Gracious hosts make every guest feel cherished from the moment they arrive.',
  example_ko_4 = '우아한 주최자는 도착하는 순간부터 모든 손님이 소중하다고 느끼게 해요.',
  example_en_5 = 'Her gracious words at the podium reflected years of leadership and humility.',
  example_ko_5 = '연단에서 그녀의 우아한 말은 수년간의 리더십과 겸손을 반영했어요.'
WHERE id = 'w_greeting_C2_04';

UPDATE words SET
  example_en_2 = 'The ceremonious exchange of gifts accompanied each formal greeting.',
  example_ko_2 = '각 격식 있는 인사에는 의례적인 선물 교환이 수반됐어요.',
  example_en_3 = 'He found the ceremonious proceedings both elegant and moving.',
  example_ko_3 = '그는 의례적인 절차가 우아하면서도 감동적이라고 느꼈어요.',
  example_en_4 = 'She adapted the ceremonious traditions for a modern international audience.',
  example_ko_4 = '그녀는 의례적인 전통을 현대 국제 청중에 맞게 조정했어요.',
  example_en_5 = 'Ceremonious introductions at the gala were handled with impeccable precision.',
  example_ko_5 = '갈라 행사에서의 의례적인 소개는 흠잡을 데 없는 정확성으로 진행됐어요.'
WHERE id = 'w_greeting_C2_05';

UPDATE words SET
  example_en_2 = 'Her magnanimous greeting after the contentious vote restored harmony.',
  example_ko_2 = '논쟁적인 투표 후 그녀의 관대한 인사가 조화를 회복시켰어요.',
  example_en_3 = 'He was magnanimous in acknowledging the contributions of all team members.',
  example_ko_3 = '그는 모든 팀원의 공헌을 인정하는 데 관대했어요.',
  example_en_4 = 'Magnanimous leaders greet both allies and adversaries with equal dignity.',
  example_ko_4 = '관대한 리더는 동맹과 적수 모두에게 동등한 품위로 인사해요.',
  example_en_5 = 'A magnanimous spirit in greetings breaks down barriers others cannot.',
  example_ko_5 = '인사에서의 관대한 정신은 다른 것들이 무너뜨리지 못하는 장벽을 무너뜨려요.'
WHERE id = 'w_greeting_C2_06';

UPDATE words SET
  example_en_2 = 'The venerable diplomat was greeted with full ceremonial honors.',
  example_ko_2 = '존경받는 외교관이 완전한 의식의 예우로 맞이받았어요.',
  example_en_3 = 'She listened intently to the venerable scholar''s opening words.',
  example_ko_3 = '그녀는 존경받는 학자의 개회사에 집중해서 귀를 기울였어요.',
  example_en_4 = 'Venerable traditions of greeting should be passed on to new generations.',
  example_ko_4 = '존경받는 인사 전통은 새로운 세대에게 전해져야 해요.',
  example_en_5 = 'His venerable presence commanded respectful silence as he approached.',
  example_ko_5 = '그의 존경받는 존재감은 그가 다가오자 경의를 담은 침묵을 이끌었어요.'
WHERE id = 'w_greeting_C2_07';

UPDATE words SET
  example_en_2 = 'Even in informal settings, she maintained a sense of decorum.',
  example_ko_2 = '비공식적인 자리에서도 그녀는 예의범절의 감각을 유지했어요.',
  example_en_3 = 'He was praised for upholding decorum during a particularly tense reception.',
  example_ko_3 = '특히 긴장된 리셉션 중 예의범절을 지킨 것으로 그는 칭찬받았어요.',
  example_en_4 = 'Decorum in state-level events reflects the character of a nation.',
  example_ko_4 = '국가 수준 행사에서의 예의범절은 나라의 성격을 반영해요.',
  example_en_5 = 'She reminded her team that decorum extends beyond just saying the right words.',
  example_ko_5 = '그녀는 팀에게 예의범절은 올바른 말을 하는 것 이상으로 확장된다고 상기시켰어요.'
WHERE id = 'w_greeting_C2_08';

UPDATE words SET
  example_en_2 = 'She mastered diplomatic protocol before her first international mission.',
  example_ko_2 = '첫 국제 임무 전에 그녀는 외교 의전을 완벽하게 숙지했어요.',
  example_en_3 = 'The protocol governing introductions at the summit was strictly observed.',
  example_ko_3 = '정상회담에서 소개에 관한 의전이 엄격하게 준수됐어요.',
  example_en_4 = 'Breaking protocol, even unintentionally, can cause diplomatic incidents.',
  example_ko_4 = '의도치 않게 의전을 어겨도 외교적 사건이 될 수 있어요.',
  example_en_5 = 'Understanding protocol helps you navigate formal introductions with confidence.',
  example_ko_5 = '의전을 이해하면 자신감 있게 격식 있는 소개를 탐색할 수 있어요.'
WHERE id = 'w_greeting_C2_09';

UPDATE words SET
  example_en_2 = 'The ambassador''s greeting was broadcast live to both nations.',
  example_ko_2 = '대사의 인사가 두 나라에 생중계됐어요.',
  example_en_3 = 'She served as the cultural ambassador, greeting global visitors warmly.',
  example_ko_3 = '그녀는 문화 대사로서 전 세계 방문객을 따뜻하게 맞이했어요.',
  example_en_4 = 'The ambassador modeled the greeting customs of the host country.',
  example_ko_4 = '대사는 주최국의 인사 관습을 모범적으로 따랐어요.',
  example_en_5 = 'An ambassador''s handshake can carry the weight of an entire diplomatic relationship.',
  example_ko_5 = '대사의 악수는 전체 외교 관계의 무게를 담을 수 있어요.'
WHERE id = 'w_greeting_C2_10';

UPDATE words SET
  example_en_2 = 'The audience rose to felicitate the newly elected president.',
  example_ko_2 = '청중은 새로 선출된 대통령을 축하하기 위해 자리에서 일어났어요.',
  example_en_3 = 'She was invited to felicitate the retiring dean at the farewell ceremony.',
  example_ko_3 = '그녀는 작별 행사에서 은퇴하는 학장을 축하하도록 초대됐어요.',
  example_en_4 = 'It is customary to felicitate distinguished guests before the banquet begins.',
  example_ko_4 = '연회가 시작되기 전 저명한 손님들을 축하하는 것이 관례예요.',
  example_en_5 = 'He stood to felicitate his mentor with heartfelt and eloquent words.',
  example_ko_5 = '그는 멘토를 진심 어리고 웅변적인 말로 축하하기 위해 자리에서 일어났어요.'
WHERE id = 'w_greeting_C2_11';

UPDATE words SET
  example_en_2 = 'The formal salutation in the letter set a tone of deep respect.',
  example_ko_2 = '편지의 격식 있는 인사말이 깊은 존경의 분위기를 설정했어요.',
  example_en_3 = 'She practiced the correct salutation for each level of recipient.',
  example_ko_3 = '그녀는 각 수신자 수준에 맞는 올바른 인사말을 연습했어요.',
  example_en_4 = 'The opening salutation of a speech establishes immediate connection.',
  example_ko_4 = '연설의 개회 인사말은 즉각적인 연결을 확립해요.',
  example_en_5 = 'A misplaced salutation in diplomatic correspondence can cause offense.',
  example_ko_5 = '외교 서신에서 잘못된 인사말은 기분을 상하게 할 수 있어요.'
WHERE id = 'w_greeting_C2_12';

UPDATE words SET
  example_en_2 = 'They performed obeisance before the senior statesman as a mark of respect.',
  example_ko_2 = '그들은 존경의 표시로 원로 정치인 앞에서 절을 했어요.',
  example_en_3 = 'She was moved by the deep obeisance shown by the younger students.',
  example_ko_3 = '어린 학생들이 보여준 깊은 절에 그녀는 감동받았어요.',
  example_en_4 = 'In ancient courts, obeisance was required even before speaking.',
  example_ko_4 = '고대 궁정에서는 말하기 전에도 절이 요구됐어요.',
  example_en_5 = 'The dignitary received obeisance from hundreds of devoted followers.',
  example_ko_5 = '고위 인사는 수백 명의 헌신적인 추종자들로부터 절을 받았어요.'
WHERE id = 'w_greeting_C2_13';

UPDATE words SET
  example_en_2 = 'At the convocation, the president greeted each graduate by name.',
  example_ko_2 = '졸업식에서 총장은 각 졸업생을 이름으로 맞이했어요.',
  example_en_3 = 'The convocation brought together scholars from across the world.',
  example_ko_3 = '졸업식은 전 세계 학자들을 한자리에 모았어요.',
  example_en_4 = 'She gave an eloquent address at the annual convocation ceremony.',
  example_ko_4 = '그녀는 연례 졸업식에서 웅변적인 연설을 했어요.',
  example_en_5 = 'The convocation opened with a ceremonious welcome from the vice-chancellor.',
  example_ko_5 = '졸업식은 부총장의 의례적인 환영으로 시작됐어요.'
WHERE id = 'w_greeting_C2_14';

UPDATE words SET
  example_en_2 = 'Her greeting radiated a deep benevolence that touched everyone present.',
  example_ko_2 = '그녀의 인사에서 자리에 있는 모든 사람에게 닿는 깊은 선의가 넘쳐났어요.',
  example_en_3 = 'He was known for his benevolence — no one ever left his presence feeling small.',
  example_ko_3 = '그는 선의로 알려져 있었어요 — 그의 곁을 떠나며 초라하게 느끼는 사람이 없었어요.',
  example_en_4 = 'True benevolence in a greeting asks nothing in return.',
  example_ko_4 = '인사에서의 진정한 선의는 아무것도 되돌려 받기를 기대하지 않아요.',
  example_en_5 = 'Her legacy was built on decades of benevolence and genuine human connection.',
  example_ko_5 = '그녀의 유산은 수십 년간의 선의와 진정한 인간적 연결 위에 세워졌어요.'
WHERE id = 'w_greeting_C2_15';

UPDATE words SET
  example_en_2 = 'She earned the approbation of the senior staff with her gracious greeting.',
  example_ko_2 = '우아한 인사로 그녀는 선임 직원들의 승인을 얻었어요.',
  example_en_3 = 'His opening remarks gained the immediate approbation of the assembly.',
  example_ko_3 = '그의 개회사가 즉시 총회의 승인을 얻었어요.',
  example_en_4 = 'Approbation from respected peers signals that your social style is on point.',
  example_ko_4 = '존경받는 동료들의 승인은 사회적 스타일이 적절하다는 신호예요.',
  example_en_5 = 'She sought approbation not from flattery but from genuine engagement.',
  example_ko_5 = '그녀는 아첨이 아닌 진심 어린 참여에서 승인을 구했어요.'
WHERE id = 'w_greeting_C2_16';

UPDATE words SET
  example_en_2 = 'His greeting was warm and humble — utterly free of hauteur.',
  example_ko_2 = '그의 인사는 따뜻하고 겸손했어요 — 거만함이 전혀 없었어요.',
  example_en_3 = 'She disliked hauteur in any form, especially in social introductions.',
  example_ko_3 = '그녀는 어떤 형태의 거만함도 싫어했어요, 특히 사회적 소개에서.',
  example_en_4 = 'Hauteur in a greeting creates distance instead of connection.',
  example_ko_4 = '인사에서의 거만함은 연결 대신 거리감을 만들어요.',
  example_en_5 = 'Avoiding hauteur is the first step toward becoming a genuinely warm host.',
  example_ko_5 = '거만함을 피하는 것이 진정으로 따뜻한 주최자가 되기 위한 첫 번째 단계예요.'
WHERE id = 'w_greeting_C2_17';

UPDATE words SET
  example_en_2 = 'Her intercession at the dinner brought two estranged factions together.',
  example_ko_2 = '만찬에서의 그녀의 중재가 두 소외된 파벌을 하나로 모았어요.',
  example_en_3 = 'His friendly intercession resolved what could have been an awkward scene.',
  example_ko_3 = '그의 친근한 중재로 어색한 장면이 될 수 있었던 것이 해결됐어요.',
  example_en_4 = 'She acted as a gracious intermediary, facilitating warm introductions.',
  example_ko_4 = '그녀는 우아한 중재자로서 따뜻한 소개를 촉진했어요.',
  example_en_5 = 'Her intercession was so subtle that no one realized diplomacy was at work.',
  example_ko_5 = '그녀의 중재가 너무 미묘해서 아무도 외교가 작동하고 있다는 것을 깨닫지 못했어요.'
WHERE id = 'w_greeting_C2_18';

UPDATE words SET
  example_en_2 = 'He swept into the room with the panache of a seasoned host.',
  example_ko_2 = '그는 노련한 주최자의 기개로 방에 들어왔어요.',
  example_en_3 = 'She greeted every newcomer with a panache that was entirely her own.',
  example_ko_3 = '그녀는 완전히 자신만의 기개로 모든 신입을 맞이했어요.',
  example_en_4 = 'Panache is not about showiness — it is about joyful self-expression.',
  example_ko_4 = '기개는 과시에 관한 것이 아니에요 — 즐거운 자기 표현에 관한 거예요.',
  example_en_5 = 'His panache in welcoming guests set the tone for the whole gala.',
  example_ko_5 = '손님을 환영하는 그의 기개가 갈라 전체의 분위기를 결정했어요.'
WHERE id = 'w_greeting_C2_19';

UPDATE words SET
  example_en_2 = 'The emissary''s greeting was laden with the weight of historical suzerainty.',
  example_ko_2 = '사절의 인사는 역사적 종주권의 무게를 담고 있었어요.',
  example_en_3 = 'Even under suzerainty, the vassal state preserved its own greeting customs.',
  example_ko_3 = '종주권 아래에서도 속국은 자신만의 인사 관습을 보존했어요.',
  example_en_4 = 'The concept of suzerainty is reflected in the hierarchical bowing customs of East Asia.',
  example_ko_4 = '종주권의 개념은 동아시아의 위계적 절 관습에 반영돼 있어요.',
  example_en_5 = 'She studied historical suzerainty to understand ancient diplomatic greetings.',
  example_ko_5 = '그녀는 고대 외교적 인사를 이해하기 위해 역사적 종주권을 연구했어요.'
WHERE id = 'w_greeting_C2_20';

UPDATE words SET
  example_en_2 = 'Her gravitas was unmistakable even in the briefest of greetings.',
  example_ko_2 = '가장 짧은 인사에서도 그녀의 무게감은 분명했어요.',
  example_en_3 = 'He spoke with gravitas about the importance of respectful introductions.',
  example_ko_3 = '그는 존중하는 소개의 중요성에 대해 무게감 있게 말했어요.',
  example_en_4 = 'Gravitas comes not from speaking more, but from meaning every word.',
  example_ko_4 = '무게감은 더 많이 말하는 것이 아니라 모든 단어에 의미를 담는 데서 나와요.',
  example_en_5 = 'His gravitas in official settings was balanced by warmth in private conversations.',
  example_ko_5 = '공식적인 자리에서의 그의 무게감은 사적 대화에서의 따뜻함으로 균형을 이뤘어요.'
WHERE id = 'w_greeting_C2_21';

UPDATE words SET
  example_en_2 = 'A sagacious leader reads the room before deciding how to greet.',
  example_ko_2 = '현명한 리더는 어떻게 인사할지 결정하기 전에 분위기를 파악해요.',
  example_en_3 = 'She was sagacious enough to know when a formal greeting was unnecessary.',
  example_ko_3 = '그녀는 격식 있는 인사가 불필요할 때를 알 만큼 현명했어요.',
  example_en_4 = 'His sagacious observations about cultural greetings filled an entire book.',
  example_ko_4 = '문화적 인사에 대한 그의 현명한 관찰이 책 한 권을 가득 채웠어요.',
  example_en_5 = 'Sagacious communicators adjust their greetings to match each unique context.',
  example_ko_5 = '현명한 소통가는 각 고유한 맥락에 맞게 인사를 조정해요.'
WHERE id = 'w_greeting_C2_22';

UPDATE words SET
  example_en_2 = 'His felicitous choice of words put a nervous candidate immediately at ease.',
  example_ko_2 = '그의 적절한 단어 선택이 긴장한 후보를 즉시 편안하게 했어요.',
  example_en_3 = 'She opened with a felicitous anecdote that tied perfectly to the occasion.',
  example_ko_3 = '그녀는 행사와 완벽하게 맞아떨어지는 적절한 일화로 시작했어요.',
  example_en_4 = 'A felicitous greeting suits the moment and feels inevitable in retrospect.',
  example_ko_4 = '적절한 인사는 순간에 맞고 돌이켜보면 필연적으로 느껴져요.',
  example_en_5 = 'Her felicitous phrasing turned a difficult introduction into a delightful one.',
  example_ko_5 = '그녀의 적절한 표현이 어려운 소개를 즐거운 소개로 바꿔놓았어요.'
WHERE id = 'w_greeting_C2_23';

UPDATE words SET
  example_en_2 = 'The event planner created a bespoke welcome for each VIP guest.',
  example_ko_2 = '이벤트 기획자는 각 VIP 손님을 위한 맞춤 환영을 만들었어요.',
  example_en_3 = 'She sent a bespoke handwritten note with every introduction package.',
  example_ko_3 = '그녀는 모든 소개 패키지에 맞춤 손편지를 함께 보냈어요.',
  example_en_4 = 'Bespoke greetings show that you took time to know the person you are welcoming.',
  example_ko_4 = '맞춤 인사는 환영하는 사람을 알아가는 데 시간을 들였음을 보여줘요.',
  example_en_5 = 'Guests remember bespoke greetings long after generic ones are forgotten.',
  example_ko_5 = '손님들은 일반적인 인사가 잊혀진 후에도 맞춤 인사를 오래 기억해요.'
WHERE id = 'w_greeting_C2_24';

UPDATE words SET
  example_en_2 = 'He saluted the crowd with a dignified wave as he took the stage.',
  example_ko_2 = '그는 무대에 오르며 품위 있는 손 흔들기로 군중에게 경례했어요.',
  example_en_3 = 'She was moved when the entire team saluted her on her last day.',
  example_ko_3 = '마지막 날 팀 전체가 그녀에게 경례를 표하자 그녀는 감동받았어요.',
  example_en_4 = 'We salute those who have dedicated their lives to public service.',
  example_ko_4 = '우리는 공공 서비스에 삶을 바친 분들에게 경례를 표해요.',
  example_en_5 = 'The veterans were saluted with a ceremony that recognized their sacrifice.',
  example_ko_5 = '참전용사들은 그들의 희생을 인정하는 의식으로 경례를 받았어요.'
WHERE id = 'w_greeting_C2_25';

UPDATE words SET
  example_en_2 = 'The evening concluded with a warm benediction from the senior elder.',
  example_ko_2 = '저녁은 원로 어른의 따뜻한 축복으로 마무리됐어요.',
  example_en_3 = 'She offered a brief benediction before the farewell dinner began.',
  example_ko_3 = '작별 만찬이 시작되기 전 그녀는 짧은 축복의 말을 했어요.',
  example_en_4 = 'His benediction at the end of the symposium left the audience deeply moved.',
  example_ko_4 = '심포지엄 말미에 그의 축복이 청중을 깊이 감동시켰어요.',
  example_en_5 = 'The benediction felt like a warm farewell that honored everyone present.',
  example_ko_5 = '축복은 참석한 모든 사람을 기리는 따뜻한 작별처럼 느껴졌어요.'
WHERE id = 'w_greeting_C2_26';

UPDATE words SET
  example_en_2 = 'She specialized in intercultural communication and greeting research.',
  example_ko_2 = '그녀는 이문화 소통과 인사 연구를 전문으로 했어요.',
  example_en_3 = 'Intercultural competence is now considered a core professional skill.',
  example_ko_3 = '이문화 역량은 이제 핵심 직업적 기술로 여겨져요.',
  example_en_4 = 'He was invited to speak at an intercultural leadership summit.',
  example_ko_4 = '그는 이문화 리더십 정상회담에서 연설하도록 초대됐어요.',
  example_en_5 = 'Intercultural awareness starts with simply learning how others say hello.',
  example_ko_5 = '이문화 인식은 단순히 다른 사람들이 어떻게 인사하는지 배우는 것에서 시작해요.'
WHERE id = 'w_greeting_C2_27';

UPDATE words SET
  example_en_2 = 'His parting words were so gracious they were quoted for years afterward.',
  example_ko_2 = '그의 작별 인사가 너무 우아해서 이후 수년간 인용됐어요.',
  example_en_3 = 'She prepared her parting remarks carefully to leave a lasting impression.',
  example_ko_3 = '그녀는 오래 기억에 남는 인상을 남기기 위해 작별 말씀을 신중하게 준비했어요.',
  example_en_4 = 'The parting handshake confirmed that the relationship would continue.',
  example_ko_4 = '작별 악수로 관계가 계속될 것임이 확인됐어요.',
  example_en_5 = 'He made his parting graceful, ensuring everyone felt honored to have met him.',
  example_ko_5 = '그는 작별을 우아하게 만들어 만나서 영광이라는 느낌이 들게 했어요.'
WHERE id = 'w_greeting_C2_28';

UPDATE words SET
  example_en_2 = 'Her bow at the ceremony was the quintessential expression of Korean respect.',
  example_ko_2 = '행사에서 그녀의 절은 한국식 존경의 전형적인 표현이었어요.',
  example_en_3 = 'He was described as the quintessential diplomat — warm, precise, and humble.',
  example_ko_3 = '그는 전형적인 외교관으로 묘사됐어요 — 따뜻하고 정확하며 겸손했어요.',
  example_en_4 = 'The event was the quintessential networking occasion for the industry.',
  example_ko_4 = '그 행사는 업계에서 전형적인 네트워킹 자리였어요.',
  example_en_5 = 'Her quintessential greeting style inspired an entire generation of hosts.',
  example_ko_5 = '그녀의 전형적인 인사 방식이 전체 세대의 주최자들에게 영감을 줬어요.'
WHERE id = 'w_greeting_C2_29';

UPDATE words SET
  example_en_2 = 'He gravely acknowledged the responsibility of welcoming such distinguished guests.',
  example_ko_2 = '그는 그런 저명한 손님들을 환영하는 책임을 엄숙하게 인정했어요.',
  example_en_3 = 'She gravely thanked the outgoing leader for their years of service.',
  example_ko_3 = '그녀는 수년간의 봉사에 대해 떠나는 리더에게 엄숙하게 감사를 전했어요.',
  example_en_4 = 'The emissary gravely conveyed the condolences of the entire nation.',
  example_ko_4 = '사절은 엄숙하게 온 나라의 조의를 전달했어요.',
  example_en_5 = 'He spoke gravely but warmly, honoring both solemnity and humanity.',
  example_ko_5 = '그는 엄숙하게 그러나 따뜻하게 말하며 엄숙함과 인간성 모두를 기렸어요.'
WHERE id = 'w_greeting_C2_30';

UPDATE words SET
  example_en_2 = 'She coached new staff on how to avoid obsequious greetings.',
  example_ko_2 = '그녀는 굽신거리는 인사를 피하는 방법을 신입 직원들에게 가르쳤어요.',
  example_en_3 = 'Obsequious behavior in social settings undermines your credibility quickly.',
  example_ko_3 = '사회적 자리에서의 굽신거리는 행동은 빠르게 신뢰성을 훼손해요.',
  example_en_4 = 'He was respectful without being obsequious — a balance worth cultivating.',
  example_ko_4 = '그는 굽신거리지 않으면서 존중했어요 — 키울 가치가 있는 균형이에요.',
  example_en_5 = 'True confidence in a greeting is the best antidote to obsequious behavior.',
  example_ko_5 = '인사에서의 진정한 자신감이 굽신거리는 행동에 대한 최고의 해독제예요.'
WHERE id = 'w_greeting_C2_31';

UPDATE words SET
  example_en_2 = 'She remained sanguine about the cross-cultural challenges ahead.',
  example_ko_2 = '그녀는 앞으로 다가올 이문화적 도전에 대해 낙관적인 태도를 유지했어요.',
  example_en_3 = 'His sanguine outlook made him a natural at introducing people.',
  example_ko_3 = '그의 낙관적인 관점이 그를 사람들을 소개하는 데 타고난 사람으로 만들었어요.',
  example_en_4 = 'She was sanguine even when the formal greeting did not go as planned.',
  example_ko_4 = '격식 있는 인사가 계획대로 되지 않아도 그녀는 낙관적이었어요.',
  example_en_5 = 'A sanguine spirit in social situations is contagious and deeply valued.',
  example_ko_5 = '사회적 상황에서의 낙관적인 정신은 전파되고 깊이 소중히 여겨져요.'
WHERE id = 'w_greeting_C2_32';

UPDATE words SET
  example_en_2 = 'The propitious opening of the summit boded well for the negotiations.',
  example_ko_2 = '정상회담의 상서로운 시작이 협상에 좋은 징조가 됐어요.',
  example_en_3 = 'She chose a propitious moment to introduce the key stakeholders.',
  example_ko_3 = '그녀는 주요 이해 관계자들을 소개할 상서로운 순간을 골랐어요.',
  example_en_4 = 'His propitious greeting set the stage for a fruitful partnership.',
  example_ko_4 = '그의 상서로운 인사가 풍요로운 파트너십의 무대를 마련했어요.',
  example_en_5 = 'Timing a greeting well is a propitious habit that opens many doors.',
  example_ko_5 = '인사의 타이밍을 잘 맞추는 것은 많은 문을 여는 상서로운 습관이에요.'
WHERE id = 'w_greeting_C2_33';

UPDATE words SET
  example_en_2 = 'Social discernment tells you when to use first names and when to use titles.',
  example_ko_2 = '사회적 안목은 이름을 쓸 때와 직함을 쓸 때를 알려줘요.',
  example_en_3 = 'Her discernment in reading a room before speaking was remarkable.',
  example_ko_3 = '말하기 전에 분위기를 파악하는 그녀의 안목은 놀라웠어요.',
  example_en_4 = 'He showed great discernment in knowing exactly how formal to be.',
  example_ko_4 = '그는 얼마나 격식을 차려야 하는지 정확히 아는 뛰어난 안목을 보여줬어요.',
  example_en_5 = 'Discernment in social interactions is built through experience and reflection.',
  example_ko_5 = '사회적 상호작용에서의 안목은 경험과 성찰을 통해 쌓여요.'
WHERE id = 'w_greeting_C2_34';

UPDATE words SET
  example_en_2 = 'There was something ineffable in how her greeting united a divided room.',
  example_ko_2 = '그녀의 인사가 분열된 방을 하나로 만드는 방식에는 말로 표현할 수 없는 무언가가 있었어요.',
  example_en_3 = 'He described the atmosphere of the reunion as ineffable — beyond any words.',
  example_ko_3 = '그는 재회의 분위기를 말로 표현할 수 없다고 묘사했어요 — 어떤 말로도 부족했어요.',
  example_en_4 = 'The ineffable warmth of her presence made people feel they had known her forever.',
  example_ko_4 = '그녀 존재의 말로 표현할 수 없는 따뜻함이 사람들로 하여금 오래 알던 것처럼 느끼게 했어요.',
  example_en_5 = 'Great greeters have an ineffable quality that analysis alone cannot fully capture.',
  example_ko_5 = '훌륭한 인사꾼들에게는 분석만으로는 완전히 포착할 수 없는 말로 표현할 수 없는 자질이 있어요.'
WHERE id = 'w_greeting_C2_35';


-- ══════════════════════════════════════
-- ② 신규 단어 INSERT (레벨당 25개 × 6 = 150개, sort_order 36~60)
-- ══════════════════════════════════════

-- A1 신규 25개 (sort_order 36~60)
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, example_en_2, example_ko_2, example_en_3, example_ko_3, example_en_4, example_ko_4, example_en_5, example_ko_5, cefr, topic_id, priority, image_keyword, sort_order) VALUES
('w_greeting_A1_36', 'wave', '/weɪv/', 'verb', '손을 흔들다', 'To move your hand to greet someone.', 'She waved at her friend across the street.', '그녀는 길 건너 친구에게 손을 흔들었어요.', 'He waved goodbye from the train window.', '그는 기차 창문에서 손을 흔들며 작별했어요.', 'The children waved as the bus drove away.', '버스가 떠나자 아이들이 손을 흔들었어요.', 'She waved to catch his attention in the crowd.', '그녀는 군중 속에서 그의 시선을 끌려고 손을 흔들었어요.', 'He gave a friendly wave and smiled.', '그는 친근하게 손을 흔들며 미소를 지었어요.', 'A1', 'greeting', 1, 'waving hand hello friendly', 36),
('w_greeting_A1_37', 'smile', '/smaɪl/', 'verb', '미소 짓다', 'To show happiness by curving your lips upward.', 'She smiled warmly when they first met.', '처음 만났을 때 그녀는 따뜻하게 미소를 지었어요.', 'He always smiles when greeting his colleagues.', '그는 동료들에게 인사할 때 항상 미소를 지어요.', 'A genuine smile is the best greeting of all.', '진심 어린 미소가 가장 좋은 인사예요.', 'She smiled and extended her hand for a handshake.', '그녀는 미소를 지으며 악수를 위해 손을 내밀었어요.', 'He could not help but smile at the warm welcome.', '따뜻한 환영에 그는 저절로 미소가 지어졌어요.', 'A1', 'greeting', 1, 'smiling face warm greeting happy', 37),
('w_greeting_A1_38', 'bow', '/baʊ/', 'verb', '절하다, 고개를 숙이다', 'To bend your head or body as a sign of respect.', 'He bowed politely when meeting the elder.', '어른을 만날 때 그는 정중하게 절을 했어요.', 'She bowed her head as a sign of gratitude.', '감사의 표시로 그녀는 고개를 숙였어요.', 'In Japan, people bow instead of shaking hands.', '일본에서는 악수 대신 절을 해요.', 'He bowed deeply to show his sincere respect.', '깊은 존경을 나타내기 위해 그는 깊이 절을 했어요.', 'She bowed and said thank you after the performance.', '공연 후 그녀는 절을 하며 감사합니다라고 했어요.', 'A1', 'greeting', 1, 'bowing respect polite east asian', 38),
('w_greeting_A1_39', 'hug', '/hʌɡ/', 'verb', '포옹하다', 'To put your arms around someone to show affection.', 'She hugged her friend at the airport.', '그녀는 공항에서 친구를 포옹했어요.', 'They hugged warmly after not seeing each other for a year.', '일 년 만에 만나 그들은 따뜻하게 포옹했어요.', 'He gave his grandmother a long hug.', '그는 할머니를 오랫동안 포옹했어요.', 'She hugged everyone goodbye before leaving the party.', '파티를 떠나기 전 그녀는 모두에게 작별 포옹을 했어요.', 'A hug can say more than a hundred words.', '포옹은 백 마디 말보다 더 많은 것을 말할 수 있어요.', 'A1', 'greeting', 2, 'hugging friends warm reunion affection', 39),
('w_greeting_A1_40', 'look', '/lʊk/', 'verb', '바라보다, 보다', 'To direct your eyes toward something or someone.', 'He looked up and recognized his old friend.', '그는 고개를 들었다가 오랜 친구를 알아봤어요.', 'She looked around for a familiar face at the event.', '그녀는 행사에서 낯익은 얼굴을 찾으려 둘러봤어요.', 'He looked surprised when she greeted him by name.', '그녀가 이름으로 인사하자 그는 놀란 표정이었어요.', 'She looked pleased to see him after such a long time.', '오랜만에 그를 보자 그녀는 기뻐 보였어요.', 'Look up and make eye contact when greeting someone.', '인사할 때 눈을 들어 눈을 맞추세요.', 'A1', 'greeting', 1, 'eye contact looking greeting attention', 40),
('w_greeting_A1_41', 'speak', '/spiːk/', 'verb', '말하다', 'To say words to someone.', 'She spoke kindly to the new student.', '그녀는 새 학생에게 친절하게 말했어요.', 'He spoke clearly when he introduced himself.', '자기소개를 할 때 그는 명확하게 말했어요.', 'She speaks a little English, so we managed to greet each other.', '그녀는 영어를 조금 해서 우리는 인사를 나눌 수 있었어요.', 'He spoke warmly to every guest who entered the room.', '그는 방에 들어오는 모든 손님에게 따뜻하게 말했어요.', 'Do not be afraid to speak first when meeting someone new.', '새로운 사람을 만날 때 먼저 말하는 것을 두려워하지 마세요.', 'A1', 'greeting', 1, 'speaking talking conversation introduction', 41),
('w_greeting_A1_42', 'ask', '/æsk/', 'verb', '묻다, 질문하다', 'To say a question to get information.', 'She asked his name when they first met.', '처음 만났을 때 그녀는 그의 이름을 물었어요.', 'He asked where she was from to start a conversation.', '대화를 시작하기 위해 그는 어디 출신인지 물었어요.', 'She asked if the seat next to him was taken.', '옆 자리가 비어 있는지 그녀가 물었어요.', 'He asked how she was doing after a long absence.', '오랜 부재 후 그는 어떻게 지내고 있는지 물었어요.', 'Always feel free to ask someone their name.', '항상 편하게 이름을 물어보세요.', 'A1', 'greeting', 1, 'asking question conversation curious', 42),
('w_greeting_A1_43', 'remember', '/rɪˈmɛmbər/', 'verb', '기억하다', 'To keep something in your mind from the past.', 'He remembered her name from their last meeting.', '그는 지난 만남에서 그녀의 이름을 기억했어요.', 'She was happy that he remembered her.', '그가 자신을 기억한다는 것에 그녀는 기뻤어요.', 'It is polite to remember the names of people you meet.', '만나는 사람들의 이름을 기억하는 것이 예의 바른 행동이에요.', 'He always remembered to say good morning to his coworkers.', '그는 항상 동료들에게 좋은 아침이에요라고 인사하는 것을 기억했어요.', 'She remembered meeting him at the conference last year.', '그녀는 작년 컨퍼런스에서 그를 만났던 것을 기억했어요.', 'A1', 'greeting', 1, 'memory remember name face recall', 43),
('w_greeting_A1_44', 'wait', '/weɪt/', 'verb', '기다리다', 'To stay in a place until something happens.', 'He waited at the entrance to greet the guests.', '그는 손님들을 맞이하기 위해 입구에서 기다렸어요.', 'She waited patiently for her turn to introduce herself.', '자기소개 차례를 위해 그녀는 인내심 있게 기다렸어요.', 'Do not keep your guest waiting — greet them as soon as they arrive.', '손님을 기다리게 하지 마세요 — 도착하자마자 인사하세요.', 'He waited by the door, ready to welcome the new employee.', '그는 신입 직원을 환영할 준비를 하고 문 옆에서 기다렸어요.', 'She waited until everyone arrived before beginning the introductions.', '그녀는 모두가 도착할 때까지 기다렸다가 소개를 시작했어요.', 'A1', 'greeting', 1, 'waiting entrance greeting arrival welcome', 44),
('w_greeting_A1_45', 'come', '/kʌm/', 'verb', '오다', 'To move toward a place or person.', 'Come in — welcome to our home!', '들어오세요 — 저희 집에 오신 것을 환영해요!', 'She came over to say hello when she spotted him.', '그녀는 그를 발견하고 인사하러 다가왔어요.', 'He came to the party just to meet the new colleague.', '그는 새 동료를 만나기 위해 파티에 왔어요.', 'Please come and say hello when you have a moment.', '시간이 나면 인사하러 와 주세요.', 'She was glad he came — she had been hoping to meet him.', '그가 와서 기뻤어요 — 그녀는 그를 만나기를 바라고 있었어요.', 'A1', 'greeting', 1, 'coming arriving welcome greeting door', 45),
('w_greeting_A1_46', 'sit', '/sɪt/', 'verb', '앉다', 'To rest with your body on a seat.', 'Please sit — make yourself comfortable.', '앉으세요 — 편히 계세요.', 'She sat next to the newcomer to make them feel welcome.', '신입이 환영받는 느낌을 갖도록 그녀는 옆에 앉았어요.', 'He sat down and immediately introduced himself.', '그는 앉자마자 바로 자기소개를 했어요.', 'Please sit and let me get you a drink first.', '앉으세요, 먼저 음료를 가져다 드릴게요.', 'She invited him to sit before starting the conversation.', '대화를 시작하기 전 그녀는 그를 앉도록 초대했어요.', 'A1', 'greeting', 1, 'sitting chair welcome comfortable relax', 46),
('w_greeting_A1_47', 'open', '/ˈoʊpən/', 'adjective', '열린, 개방적인', 'Willing to talk and easy to approach.', 'She has an open and welcoming personality.', '그녀는 열려 있고 환영하는 성격을 가졌어요.', 'He greeted everyone with an open smile.', '그는 모든 사람에게 열린 미소로 인사했어요.', 'Keep an open body language when meeting someone new.', '새로운 사람을 만날 때 열린 몸 자세를 유지하세요.', 'She was open about her background right away.', '그녀는 자신의 배경에 대해 바로 솔직하게 말했어요.', 'An open attitude makes you easy to talk to.', '열린 태도는 당신을 이야기하기 쉬운 사람으로 만들어요.', 'A1', 'greeting', 1, 'open attitude friendly approachable welcoming', 47),
('w_greeting_A1_48', 'door', '/dɔːr/', 'noun', '문', 'The entrance to a room or building.', 'He opened the door and said welcome.', '그는 문을 열고 환영한다고 했어요.', 'She was greeted at the door by the host.', '그녀는 문 앞에서 주최자의 인사를 받았어요.', 'He held the door open as a polite gesture.', '그는 예의 바른 제스처로 문을 잡아줬어요.', 'There was a warm welcome waiting just beyond the door.', '문 너머에 따뜻한 환영이 기다리고 있었어요.', 'She answered the door and greeted her guest with a big smile.', '그녀는 문을 열고 환한 미소로 손님을 맞이했어요.', 'A1', 'greeting', 1, 'door entrance welcome greeting host', 48),
('w_greeting_A1_49', 'together', '/təˈɡɛðər/', 'adverb', '함께', 'With each other; in company.', 'Let us all say hello together.', '모두 함께 인사해요.', 'They arrived together and greeted the host as a pair.', '그들은 함께 도착해서 한 쌍으로 주최자에게 인사했어요.', 'It is more fun to meet new people together with a friend.', '친구와 함께 새로운 사람을 만나면 더 재미있어요.', 'We greeted the visitors together as a team.', '우리는 팀으로 함께 방문객들에게 인사했어요.', 'Coming together to greet someone shows genuine care.', '함께 모여 인사하는 것은 진심 어린 관심을 보여줘요.', 'A1', 'greeting', 1, 'together group greeting team collective', 49),
('w_greeting_A1_50', 'first', '/fɜːrst/', 'adjective', '처음의, 첫 번째', 'Coming before all others.', 'First impressions matter a lot in a greeting.', '인사에서 첫인상은 매우 중요해요.', 'He was the first to say hello in the room.', '그는 방에서 처음으로 인사를 했어요.', 'She greeted the first guest with extra warmth.', '그녀는 첫 번째 손님을 각별한 따뜻함으로 맞이했어요.', 'It is always good to speak first when meeting someone.', '사람을 만날 때 먼저 말하는 것이 항상 좋아요.', 'Their first meeting was brief but left a lasting impression.', '그들의 첫 만남은 짧았지만 오래도록 남는 인상을 남겼어요.', 'A1', 'greeting', 1, 'first impression meeting encounter beginning', 50),
('w_greeting_A1_51', 'know', '/noʊ/', 'verb', '알다', 'To be familiar with a person or fact.', 'Do you know anyone here? Let me introduce you.', '여기 아는 분 있어요? 소개해 드릴게요.', 'She was glad to finally get to know him in person.', '드디어 직접 그를 알게 되어 기뻤어요.', 'It is nice to know the people you work with.', '함께 일하는 사람들을 아는 것은 좋은 일이에요.', 'He did not know anyone at the event, so he introduced himself.', '그는 행사에서 아는 사람이 없어서 자기소개를 했어요.', 'Getting to know someone starts with a simple greeting.', '누군가를 알아가는 것은 간단한 인사에서 시작돼요.', 'A1', 'greeting', 1, 'knowing familiar acquainted introduction', 51),
('w_greeting_A1_52', 'early', '/ˈɜːrli/', 'adverb', '일찍', 'Before the usual or expected time.', 'He arrived early to greet the guests as they came in.', '그는 손님들이 들어오는 것을 맞이하기 위해 일찍 도착했어요.', 'She sent an early greeting before the event started.', '그녀는 행사가 시작되기 전에 미리 인사를 보냈어요.', 'It is polite to arrive early and greet the host.', '일찍 도착해서 주최자에게 인사하는 것이 예의 바른 행동이에요.', 'The early morning hello sets a positive tone for the day.', '이른 아침 인사는 하루에 긍정적인 분위기를 만들어요.', 'She was always early so she could welcome each new arrival.', '그녀는 새 도착자를 환영할 수 있도록 항상 일찍 왔어요.', 'A1', 'greeting', 2, 'early arrival punctual welcome morning', 52),
('w_greeting_A1_53', 'talk', '/tɔːk/', 'verb', '이야기하다, 말하다', 'To say words and have a conversation.', 'It was nice to talk with you today.', '오늘 이야기 나눠서 좋았어요.', 'She talked to every new person at the event.', '그녀는 행사에서 모든 새로운 사람과 이야기를 나눴어요.', 'He talked for a while before realizing they had met before.', '그는 한참 이야기하다가 전에 만난 적이 있다는 것을 깨달았어요.', 'Do not be shy — just walk up and start talking.', '수줍어하지 마세요 — 그냥 다가가서 이야기를 시작하세요.', 'She loved talking to new people and learning their stories.', '그녀는 새로운 사람들과 이야기하며 그들의 이야기를 듣는 것을 좋아했어요.', 'A1', 'greeting', 1, 'talking conversation friends casual chat', 53),
('w_greeting_A1_54', 'back', '/bæk/', 'adverb', '다시, 돌아와서', 'Returning to a place or person.', 'Welcome back — it is great to see you again!', '돌아오신 것을 환영해요 — 다시 만나니 정말 좋아요!', 'She was greeted warmly when she came back from her trip.', '여행에서 돌아왔을 때 그녀는 따뜻한 인사를 받았어요.', 'He came back to say goodbye one more time.', '그는 한 번 더 작별 인사를 하러 돌아왔어요.', 'It is always nice to say welcome back to a returning colleague.', '돌아온 동료에게 돌아오신 것을 환영한다고 하는 것은 항상 좋은 일이에요.', 'She shouted welcome back as he walked through the door.', '그가 문을 들어서자 그녀는 돌아오신 것을 환영해요라고 외쳤어요.', 'A1', 'greeting', 1, 'welcome back returning reunion greeting', 54),
('w_greeting_A1_55', 'ready', '/ˈrɛdi/', 'adjective', '준비된', 'Prepared to do something.', 'She was ready to greet every guest with a smile.', '그녀는 미소로 모든 손님을 맞이할 준비가 되어 있었어요.', 'He got ready early so he could welcome the visitors.', '그는 방문객을 환영하기 위해 일찍 준비했어요.', 'Are you ready to introduce yourself to the team?', '팀에 자기소개를 할 준비가 됐어요?', 'Being ready with a warm smile makes greeting easier.', '따뜻한 미소로 준비하면 인사가 더 쉬워져요.', 'She took a breath, smiled, and was ready to say hello.', '그녀는 숨을 들이쉬고 미소를 지었어요, 인사할 준비가 됐어요.', 'A1', 'greeting', 2, 'ready prepared smile confident meeting', 55),
('w_greeting_A1_56', 'long', '/lɒŋ/', 'adjective', '긴, 오랜', 'Lasting or measuring a great amount of time.', 'It has been a long time since we last met!', '마지막으로 만난 지 오래됐어요!', 'She gave him a long hug after the long separation.', '긴 이별 끝에 그녀는 그를 오랫동안 포옹했어요.', 'They chatted for a long time after the event ended.', '행사가 끝난 후 그들은 오랫동안 이야기를 나눴어요.', 'It was a long wait, but the reunion was worth it.', '오랫동안 기다렸지만 재회할 만한 가치가 있었어요.', 'A long friendship begins with a simple hello.', '긴 우정은 간단한 안녕이라는 한마디에서 시작돼요.', 'A1', 'greeting', 1, 'long time reunion friendship waiting', 56),
('w_greeting_A1_57', 'morning', '/ˈmɔːrnɪŋ/', 'noun', '아침', 'The early part of the day before noon.', 'Good morning is the most common greeting of the day.', '좋은 아침이에요는 하루 중 가장 흔한 인사예요.', 'She always says good morning to her neighbors.', '그녀는 항상 이웃들에게 좋은 아침이에요라고 해요.', 'He starts every morning by greeting his team.', '그는 팀에게 인사하며 매일 아침을 시작해요.', 'A bright morning greeting sets a positive tone for the day.', '밝은 아침 인사는 하루에 긍정적인 분위기를 만들어요.', 'She stood at the door every morning to say hello.', '그녀는 매일 아침 문 앞에 서서 인사를 했어요.', 'A1', 'greeting', 1, 'morning greeting sunrise hello daily', 57),
('w_greeting_A1_58', 'person', '/ˈpɜːrsən/', 'noun', '사람', 'A human being.', 'She is the kind of person who always says hello first.', '그녀는 항상 먼저 인사하는 사람이에요.', 'He greeted every person in the room by name.', '그는 방의 모든 사람을 이름으로 인사했어요.', 'A person who greets warmly is easy to trust.', '따뜻하게 인사하는 사람은 신뢰하기 쉬워요.', 'She is a very outgoing person who loves to meet people.', '그녀는 사람 만나는 것을 좋아하는 외향적인 사람이에요.', 'Every person deserves a warm and respectful greeting.', '모든 사람은 따뜻하고 존중하는 인사를 받을 자격이 있어요.', 'A1', 'greeting', 1, 'person human being social interaction', 58),
('w_greeting_A1_59', 'day', '/deɪ/', 'noun', '날, 하루', 'A period of twenty-four hours.', 'Have a great day — it was nice meeting you!', '좋은 하루 보내세요 — 만나서 반가웠어요!', 'She wished him a good day as he left the office.', '그가 사무실을 떠나자 그녀는 좋은 하루 보내라고 했어요.', 'He starts each day by greeting everyone on his team.', '그는 팀의 모든 사람에게 인사하며 하루를 시작해요.', 'A simple good day greeting can brighten someone''s whole day.', '간단한 좋은 하루 인사가 누군가의 하루 전체를 밝게 할 수 있어요.', 'She ended every conversation with have a wonderful day.', '그녀는 모든 대화를 멋진 하루 보내세요로 마쳤어요.', 'A1', 'greeting', 1, 'day greeting farewell good day', 59),
('w_greeting_A1_60', 'right', '/raɪt/', 'adverb', '바로, 맞아요', 'Immediately; exactly the right moment.', 'She greeted him right away when he walked in.', '그가 들어오자마자 그녀는 바로 인사했어요.', 'He said right, let''s get started after the introductions.', '소개가 끝난 후 그는 좋아요, 시작하자고 했어요.', 'Right, I think we have all been introduced now.', '맞아요, 이제 모두 소개가 된 것 같아요.', 'She was right there at the entrance to welcome everyone.', '그녀는 모두를 환영하기 위해 바로 입구에 있었어요.', 'He shook her hand right away without hesitation.', '그는 망설임 없이 바로 그녀와 악수를 했어요.', 'A1', 'greeting', 1, 'right immediately prompt greeting welcome', 60)
ON CONFLICT (id) DO UPDATE SET
  en              = EXCLUDED.en,
  ipa             = EXCLUDED.ipa,
  pos             = EXCLUDED.pos,
  ko              = EXCLUDED.ko,
  definition      = EXCLUDED.definition,
  example_en      = EXCLUDED.example_en,
  example_ko      = EXCLUDED.example_ko,
  example_en_2    = EXCLUDED.example_en_2,
  example_ko_2    = EXCLUDED.example_ko_2,
  example_en_3    = EXCLUDED.example_en_3,
  example_ko_3    = EXCLUDED.example_ko_3,
  example_en_4    = EXCLUDED.example_en_4,
  example_ko_4    = EXCLUDED.example_ko_4,
  example_en_5    = EXCLUDED.example_en_5,
  example_ko_5    = EXCLUDED.example_ko_5,
  cefr            = EXCLUDED.cefr,
  topic_id        = EXCLUDED.topic_id,
  priority        = EXCLUDED.priority,
  image_keyword   = EXCLUDED.image_keyword,
  sort_order      = EXCLUDED.sort_order;

-- ─── Done ──────────────────────────────────────────
