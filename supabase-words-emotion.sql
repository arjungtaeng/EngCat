-- EngCat — Emotion (감정 표현) Topic
-- 210 words (35 per CEFR level A1~C2) + 42 sentence patterns (7 per level)
-- IDs: w_emotion_{CEFR}_{nn} / s_emotion_{CEFR}_{nn}
-- Note: existing w_emo_01~10 use topic_id='emotions'; these use topic_id='emotion' — no conflict.

-- ══════════════════════════════════════
-- WORDS — A1 (35 words)
-- Theme: happy, sad, angry, tired, scared, excited, good, bad, fine, okay + 25 more core basics
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_A1_01','happy','/ˈhæpi/','adjective','행복한','Feeling or showing pleasure and contentment.','She was {happy} to see her friend.','그녀는 친구를 보고 행복했어요.','happy','A1','emotion',1,'happy smiling person joyful'),
('w_emotion_A1_02','sad','/sæd/','adjective','슬픈','Feeling or causing sorrow or unhappiness.','He looked {sad} after hearing the news.','그는 소식을 듣고 슬퍼 보였어요.','sad','A1','emotion',1,'sad person unhappy downcast'),
('w_emotion_A1_03','angry','/ˈæŋɡri/','adjective','화난','Feeling strong displeasure or hostility.','She was {angry} because he was late.','그가 늦어서 그녀는 화가 났어요.','angry','A1','emotion',1,'angry person upset frustrated'),
('w_emotion_A1_04','tired','/ˈtaɪərd/','adjective','피곤한','In need of sleep or rest; exhausted.','I''m so {tired} after a long day.','긴 하루를 보내고 너무 피곤해요.','tired','A1','emotion',1,'tired person sleepy exhausted'),
('w_emotion_A1_05','scared','/skerd/','adjective','무서운, 두려운','Feeling fear or anxiety.','The child was {scared} of the dark.','그 아이는 어둠을 무서워했어요.','scared','A1','emotion',1,'scared person afraid fearful dark'),
('w_emotion_A1_06','excited','/ɪkˈsaɪtɪd/','adjective','신난, 설레는','Very enthusiastic and eager.','She was {excited} about her birthday party.','그녀는 생일 파티를 기대하며 신나 있었어요.','excited','A1','emotion',1,'excited person celebrating happy energetic'),
('w_emotion_A1_07','good','/ɡʊd/','adjective','좋은, 기분 좋은','Having positive qualities; feeling well.','I feel {good} today — it''s sunny outside!','오늘 기분이 좋아요. 밖에 햇살이 좋아요!','good','A1','emotion',1,'good mood positive sunny day'),
('w_emotion_A1_08','bad','/bæd/','adjective','나쁜, 기분 나쁜','Not good; unpleasant or unfortunate.','I feel {bad} about forgetting your name.','이름을 잊어버려서 기분이 나빠요.','bad','A1','emotion',1,'bad mood regret unhappy person'),
('w_emotion_A1_09','fine','/faɪn/','adjective','괜찮은','In a satisfactory or acceptable condition.','I''m {fine}, thanks for asking.','괜찮아요, 물어봐 주셔서 감사해요.','fine','A1','emotion',1,'person okay calm neutral expression'),
('w_emotion_A1_10','okay','/oʊˈkeɪ/','adjective','괜찮은, 좋은','Satisfactory but not exceptional.','Everything is {okay} now, don''t worry.','이제 다 괜찮아요, 걱정하지 마세요.','okay','A1','emotion',1,'person reassured calm okay gesture'),
('w_emotion_A1_11','love','/lʌv/','verb','사랑하다, 매우 좋아하다','To feel a deep affection for someone or something.','I {love} spending time with my family.','가족과 시간을 보내는 걸 정말 좋아해요.','love','A1','emotion',1,'family together love warm'),
('w_emotion_A1_12','like','/laɪk/','verb','좋아하다','To find pleasant or attractive.','Do you {like} this song?','이 노래 좋아해요?','like','A1','emotion',1,'person enjoying music happy'),
('w_emotion_A1_13','hate','/heɪt/','verb','싫어하다','To feel intense dislike for.','I {hate} being late.','늦는 게 너무 싫어요.','hate','A1','emotion',2,'person dislike frustrated clock'),
('w_emotion_A1_14','cry','/kraɪ/','verb','울다','To shed tears, usually because of sadness or pain.','She started to {cry} during the movie.','그녀는 영화를 보다가 울기 시작했어요.','cry','A1','emotion',2,'person crying sad emotional'),
('w_emotion_A1_15','smile','/smaɪl/','verb','미소 짓다','To make a pleased or happy expression.','He {smiled} when he saw the gift.','그는 선물을 보고 미소 지었어요.','smile','A1','emotion',1,'person smiling happy gift'),
('w_emotion_A1_16','laugh','/læf/','verb','웃다','To make sounds that express amusement or happiness.','We {laughed} at the funny joke.','우리는 재미있는 농담에 웃었어요.','laugh','A1','emotion',1,'friends laughing together fun'),
('w_emotion_A1_17','feel','/fiːl/','verb','느끼다','To be aware of a sensation or emotion.','How do you {feel} today?','오늘 기분이 어때요?','feel','A1','emotion',1,'person introspective calm feeling'),
('w_emotion_A1_18','great','/ɡreɪt/','adjective','정말 좋은, 훌륭한','Excellent or very good.','I feel {great} after exercise.','운동 후에 기분이 정말 좋아요.','great','A1','emotion',1,'person energetic active sports'),
('w_emotion_A1_19','sorry','/ˈsɒri/','adjective','미안한','Feeling regret or sadness about something.','I''m {sorry} for being rude.','무례하게 굴어서 미안해요.','sorry','A1','emotion',1,'person apologizing regret'),
('w_emotion_A1_20','worried','/ˈwʌrid/','adjective','걱정되는','Feeling anxious or troubled.','I was {worried} when you didn''t call.','전화하지 않아서 걱정됐어요.','worried','A1','emotion',2,'person worried anxious phone'),
('w_emotion_A1_21','bored','/bɔːrd/','adjective','지루한','Feeling weary because of dullness.','I''m so {bored} at home today.','오늘 집에 있으니 너무 지루해요.','bored','A1','emotion',2,'person bored sitting indoors'),
('w_emotion_A1_22','hungry','/ˈhʌŋɡri/','adjective','배고픈','Feeling the need to eat.','I''m {hungry} — can we get some food?','배고파요. 뭔가 먹을 수 있을까요?','hungry','A1','emotion',2,'person hungry stomach food'),
('w_emotion_A1_23','lonely','/ˈloʊnli/','adjective','외로운','Feeling sad because of having no friends or company.','She felt {lonely} in the new city.','그녀는 새 도시에서 외로움을 느꼈어요.','lonely','A1','emotion',2,'person alone city street'),
('w_emotion_A1_24','calm','/kɑːm/','adjective','차분한, 평온한','Not excited or anxious; peaceful.','Take a deep breath and stay {calm}.','심호흡하고 차분하게 있으세요.','calm','A1','emotion',1,'person calm peaceful breathing'),
('w_emotion_A1_25','cute','/kjuːt/','adjective','귀여운','Attractive in a pretty or endearing way.','That puppy is so {cute}!','저 강아지 너무 귀여워요!','cute','A1','emotion',3,'cute puppy adorable fluffy'),
('w_emotion_A1_26','mad','/mæd/','adjective','화난','Very angry.','He was {mad} because I broke his phone.','내가 그의 폰을 망가뜨려서 화났어요.','mad','A1','emotion',2,'person angry mad upset'),
('w_emotion_A1_27','surprised','/sərˈpraɪzd/','adjective','놀란','Feeling or showing surprise.','I was so {surprised} by the party.','파티에 정말 놀랐어요.','surprised','A1','emotion',1,'person surprised party shock'),
('w_emotion_A1_28','afraid','/əˈfreɪd/','adjective','두려운, 무서운','Feeling fear in a situation.','I''m {afraid} of flying.','저는 비행기 타는 게 무서워요.','afraid','A1','emotion',2,'person afraid anxious airplane'),
('w_emotion_A1_29','hurt','/hɜːrt/','adjective','상처받은','Feeling emotional pain.','She felt {hurt} by his words.','그녀는 그의 말에 상처를 받았어요.','hurt','A1','emotion',2,'person hurt sad emotional pain'),
('w_emotion_A1_30','sick','/sɪk/','adjective','아픈, 기분 나쁜','Physically or emotionally unwell.','I feel {sick} when I''m stressed.','스트레스를 받으면 기분이 안 좋아요.','sick','A1','emotion',3,'person sick tired unwell'),
('w_emotion_A1_31','scared','/skerd/','adjective','겁먹은','Frightened by something unexpected.','I''m {scared} of making mistakes.','실수하는 게 겁나요.','scared','A1','emotion',2,'person nervous worried mistake'),
('w_emotion_A1_32','proud','/praʊd/','adjective','자랑스러운','Feeling deep pleasure from achievement.','I''m so {proud} of my little sister.','여동생이 너무 자랑스러워요.','proud','A1','emotion',1,'person proud achievement award'),
('w_emotion_A1_33','shy','/ʃaɪ/','adjective','수줍은','Nervous or timid in the company of others.','She is very {shy} around new people.','그녀는 새로운 사람들 앞에서 매우 수줍어해요.','shy','A1','emotion',2,'shy person quiet introvert'),
('w_emotion_A1_34','kind','/kaɪnd/','adjective','친절한','Having a gentle, caring nature.','She is so {kind} to everyone.','그녀는 모든 사람에게 정말 친절해요.','kind','A1','emotion',2,'person kind helping others'),
('w_emotion_A1_35','fun','/fʌn/','adjective','즐거운, 재미있는','Providing amusement or enjoyment.','The trip was so {fun}!','그 여행은 정말 즐거웠어요!','fun','A1','emotion',1,'friends having fun travel trip')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — A2 (35 words)
-- Theme: surprised, worried, bored, confused, proud, nervous, upset, relaxed, grateful, lonely + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_A2_01','surprised','/sərˈpraɪzd/','adjective','놀란','Feeling or showing astonishment at something unexpected.','I was completely {surprised} by the gift.','선물에 완전히 놀랐어요.','surprised','A2','emotion',1,'person surprised unexpected gift reaction'),
('w_emotion_A2_02','worried','/ˈwʌrid/','adjective','걱정되는','Feeling anxious about actual or potential problems.','She looked {worried} about the test results.','그녀는 시험 결과에 대해 걱정스러워 보였어요.','worried','A2','emotion',1,'person worried anxious test results'),
('w_emotion_A2_03','bored','/bɔːrd/','adjective','지루한','Feeling weary and uninterested.','He was {bored} during the long meeting.','그는 긴 회의 동안 지루해했어요.','bored','A2','emotion',1,'person bored long meeting office'),
('w_emotion_A2_04','confused','/kənˈfjuːzd/','adjective','혼란스러운','Unable to think clearly; not understanding.','I was {confused} by the complicated instructions.','복잡한 설명에 혼란스러웠어요.','confused','A2','emotion',1,'person confused instructions puzzled'),
('w_emotion_A2_05','proud','/praʊd/','adjective','뿌듯한, 자랑스러운','Feeling deep satisfaction from achievement.','She was {proud} of passing the exam.','그녀는 시험에 합격해서 뿌듯했어요.','proud','A2','emotion',1,'person proud exam success achievement'),
('w_emotion_A2_06','nervous','/ˈnɜːrvəs/','adjective','긴장한','Easily agitated; feeling anxiety.','He was {nervous} before his first date.','그는 첫 데이트 전에 긴장했어요.','nervous','A2','emotion',1,'person nervous first date anxious'),
('w_emotion_A2_07','upset','/ʌpˈset/','adjective','속상한, 화난','Unhappy, disappointed, or worried.','She was {upset} after the argument.','그녀는 다툼 이후에 속상했어요.','upset','A2','emotion',1,'person upset argument sad'),
('w_emotion_A2_08','relaxed','/rɪˈlækst/','adjective','편안한, 느긋한','Free from tension; calm and at ease.','I feel so {relaxed} after the massage.','마사지 후에 정말 편안해요.','relaxed','A2','emotion',1,'person relaxed massage spa calm'),
('w_emotion_A2_09','grateful','/ˈɡreɪtfəl/','adjective','감사한','Feeling thankful for kindness received.','I''m very {grateful} for your support.','당신의 지원에 정말 감사해요.','grateful','A2','emotion',1,'person grateful thankful warm'),
('w_emotion_A2_10','lonely','/ˈloʊnli/','adjective','외로운','Unhappy because of being alone.','He felt {lonely} living far from family.','그는 가족과 멀리 살면서 외로움을 느꼈어요.','lonely','A2','emotion',1,'person lonely alone home window'),
('w_emotion_A2_11','disappointed','/ˌdɪsəˈpɔɪntɪd/','adjective','실망한','Sad because things did not happen as hoped.','I was {disappointed} that the concert was cancelled.','콘서트가 취소되어서 실망했어요.','disappointed','A2','emotion',1,'person disappointed sad cancelled'),
('w_emotion_A2_12','excited','/ɪkˈsaɪtɪd/','adjective','흥분된, 기대되는','Very enthusiastic and eager about something.','I''m so {excited} about the trip to Japan.','일본 여행이 너무 기대돼요.','excited','A2','emotion',1,'person excited travel packing suitcase'),
('w_emotion_A2_13','jealous','/ˈdʒeləs/','adjective','질투하는','Feeling envy toward someone.','She was {jealous} of her friend''s success.','그녀는 친구의 성공을 질투했어요.','jealous','A2','emotion',2,'person jealous envious comparison'),
('w_emotion_A2_14','embarrassed','/ɪmˈbærəst/','adjective','당황한, 창피한','Feeling ashamed or self-conscious.','He was {embarrassed} when he forgot her name.','그는 그녀의 이름을 잊어버려서 창피했어요.','embarrassed','A2','emotion',1,'person embarrassed blushing awkward'),
('w_emotion_A2_15','hopeful','/ˈhoʊpfəl/','adjective','희망찬','Feeling or inspiring optimism about a future event.','She was {hopeful} about getting the job.','그녀는 취업이 될 것 같아 희망찼어요.','hopeful','A2','emotion',2,'person hopeful optimistic bright future'),
('w_emotion_A2_16','angry','/ˈæŋɡri/','adjective','화난, 분노한','Feeling strong displeasure at something unfair.','He was {angry} about the unfair decision.','그는 불공평한 결정에 화가 났어요.','angry','A2','emotion',2,'person angry unfair decision'),
('w_emotion_A2_17','cheerful','/ˈtʃɪrfəl/','adjective','쾌활한, 명랑한','Noticeably happy and optimistic.','She is always so {cheerful} in the morning.','그녀는 아침에 항상 명랑해요.','cheerful','A2','emotion',2,'person cheerful morning bright smiling'),
('w_emotion_A2_18','confident','/ˈkɒnfɪdənt/','adjective','자신감 있는','Feeling sure about one''s abilities.','She felt {confident} after practising her speech.','연습 후에 자신감이 생겼어요.','confident','A2','emotion',2,'person confident speech presentation'),
('w_emotion_A2_19','anxious','/ˈæŋkʃəs/','adjective','불안한','Experiencing worry or nervousness.','I always feel {anxious} before exams.','시험 전에는 항상 불안해요.','anxious','A2','emotion',2,'person anxious exam nervous'),
('w_emotion_A2_20','comfortable','/ˈkʌmftəbəl/','adjective','편안한','Physically at ease; not worried.','I feel very {comfortable} talking to her.','그녀와 이야기하면 매우 편안해요.','comfortable','A2','emotion',2,'person comfortable talking friends'),
('w_emotion_A2_21','scared','/skerd/','adjective','겁먹은','Fearful of something specific.','She was {scared} of public speaking.','그녀는 대중 앞에서 말하는 게 겁났어요.','scared','A2','emotion',2,'person scared public speaking stage'),
('w_emotion_A2_22','content','/kənˈtent/','adjective','만족하는','In a state of peaceful happiness.','I''m {content} with my simple life.','단순한 삶에 만족해요.','content','A2','emotion',2,'person content simple life cozy'),
('w_emotion_A2_23','stressed','/strest/','adjective','스트레스받은','Feeling mental or emotional pressure.','I''ve been very {stressed} about work.','일 때문에 많이 스트레스받고 있어요.','stressed','A2','emotion',1,'person stressed work overload'),
('w_emotion_A2_24','delighted','/dɪˈlaɪtɪd/','adjective','기쁜, 매우 좋아하는','Feeling very pleased.','She was {delighted} with the surprise.','그녀는 깜짝 선물에 매우 기뻤어요.','delighted','A2','emotion',2,'person delighted surprise joyful'),
('w_emotion_A2_25','ashamed','/əˈʃeɪmd/','adjective','부끄러운','Feeling shame due to wrong behaviour.','He was {ashamed} of his rude comment.','그는 자신의 무례한 말에 부끄러워했어요.','ashamed','A2','emotion',2,'person ashamed regret embarrassed'),
('w_emotion_A2_26','touched','/tʌtʃt/','adjective','감동받은','Emotionally affected by something kind.','I was deeply {touched} by her speech.','그녀의 연설에 깊이 감동받았어요.','touched','A2','emotion',2,'person touched moved emotional speech'),
('w_emotion_A2_27','thrilled','/θrɪld/','adjective','매우 기대되는, 설레는','Extremely pleased and excited.','We were {thrilled} to win first prize.','1등을 받아서 너무 설렜어요.','thrilled','A2','emotion',2,'person thrilled winning prize excited'),
('w_emotion_A2_28','miserable','/ˈmɪzərəbəl/','adjective','비참한','Very unhappy or uncomfortable.','He felt {miserable} after the breakup.','이별 후 그는 비참함을 느꼈어요.','miserable','A2','emotion',3,'person miserable sad breakup rainy'),
('w_emotion_A2_29','awkward','/ˈɔːkwərd/','adjective','어색한','Causing or feeling embarrassment or inconvenience.','There was an {awkward} silence between them.','그들 사이에 어색한 침묵이 흘렀어요.','awkward','A2','emotion',2,'two people awkward silence'),
('w_emotion_A2_30','relieved','/rɪˈliːvd/','adjective','안도한','No longer feeling anxious about something.','I was so {relieved} to hear the good news.','좋은 소식을 듣고 정말 안도했어요.','relieved','A2','emotion',1,'person relieved good news smile'),
('w_emotion_A2_31','impatient','/ɪmˈpeɪʃənt/','adjective','초조한, 참을성 없는','Unable to wait calmly; easily annoyed.','He gets {impatient} when people are slow.','사람들이 느릴 때 초조해해요.','impatient','A2','emotion',3,'person impatient waiting tapping'),
('w_emotion_A2_32','jealous','/ˈdʒeləs/','adjective','부러운','Feeling envy of someone''s advantages.','I''m a little {jealous} of your lifestyle.','당신의 라이프스타일이 좀 부러워요.','jealous','A2','emotion',2,'person envious admiring others'),
('w_emotion_A2_33','overwhelmed','/ˌoʊvərˈwelmd/','adjective','압도된','Buried under too much at once.','I feel {overwhelmed} by all the choices.','선택지가 너무 많아서 압도돼요.','overwhelmed','A2','emotion',2,'person overwhelmed too many options'),
('w_emotion_A2_34','upset','/ʌpˈset/','adjective','기분이 상한','Emotionally disturbed or troubled.','She was {upset} because nobody remembered her birthday.','아무도 생일을 기억하지 않아서 기분이 상했어요.','upset','A2','emotion',2,'person upset birthday forgotten'),
('w_emotion_A2_35','cheerful','/ˈtʃɪrfəl/','adjective','쾌활한','Positive and happy in manner.','He stayed {cheerful} even when things went wrong.','일이 잘못되어도 쾌활함을 유지했어요.','cheerful','A2','emotion',2,'person cheerful positive attitude')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B1 (35 words)
-- Theme: frustrated, relieved, anxious, embarrassed, overwhelmed, content, hopeful, jealous, guilty, enthusiastic + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_B1_01','frustrated','/ˈfrʌstreɪtɪd/','adjective','답답한, 좌절한','Feeling annoyed or upset due to inability to change or achieve something.','I get {frustrated} when the internet is slow.','인터넷이 느릴 때 답답해요.','frustrated','B1','emotion',1,'person frustrated slow internet laptop'),
('w_emotion_B1_02','relieved','/rɪˈliːvd/','adjective','안도한','No longer feeling anxious because a problem has been resolved.','I was so {relieved} when the surgery went well.','수술이 잘 돼서 정말 안도했어요.','relieved','B1','emotion',1,'person relieved hospital surgery recovery'),
('w_emotion_B1_03','anxious','/ˈæŋkʃəs/','adjective','불안한, 초조한','Experiencing worry, unease, or nervousness about something uncertain.','She felt {anxious} waiting for the interview results.','면접 결과를 기다리며 불안해했어요.','anxious','B1','emotion',1,'person anxious waiting results office'),
('w_emotion_B1_04','embarrassed','/ɪmˈbærəst/','adjective','당황한, 창피한','Feeling ashamed or self-conscious because of something awkward.','I was so {embarrassed} when I tripped in public.','공공장소에서 넘어져서 너무 창피했어요.','embarrassed','B1','emotion',1,'person embarrassed tripping public'),
('w_emotion_B1_05','overwhelmed','/ˌoʊvərˈwelmd/','adjective','압도된, 너무 힘든','Feeling completely overcome by too much at once.','I feel {overwhelmed} with all the deadlines.','마감이 너무 많아서 압도돼요.','overwhelmed','B1','emotion',1,'person overwhelmed deadlines stress work'),
('w_emotion_B1_06','content','/kənˈtent/','adjective','만족스러운','In a state of peaceful happiness and satisfaction.','She felt {content} with her simple lifestyle.','그녀는 단순한 삶에 만족감을 느꼈어요.','content','B1','emotion',1,'person content cozy home simple life'),
('w_emotion_B1_07','hopeful','/ˈhoʊpfəl/','adjective','희망에 찬','Feeling optimism about a future event or outcome.','We were {hopeful} about the new project.','새 프로젝트에 희망을 품었어요.','hopeful','B1','emotion',1,'person hopeful new project start sunrise'),
('w_emotion_B1_08','jealous','/ˈdʒeləs/','adjective','질투하는, 시기하는','Feeling or showing envy of someone''s possessions or advantages.','He felt {jealous} when she got the promotion.','그녀가 승진했을 때 그는 질투를 느꼈어요.','jealous','B1','emotion',2,'person jealous promotion work colleague'),
('w_emotion_B1_09','guilty','/ˈɡɪlti/','adjective','죄책감이 드는','Feeling responsible for doing something wrong.','She felt {guilty} for forgetting his birthday.','그의 생일을 잊어버린 것에 죄책감을 느꼈어요.','guilty','B1','emotion',1,'person guilty regret forgetting'),
('w_emotion_B1_10','enthusiastic','/ɪnˌθjuːziˈæstɪk/','adjective','열정적인, 열의 있는','Having or showing intense enjoyment or eagerness.','He was {enthusiastic} about learning Korean.','그는 한국어 배우는 것에 열정적이었어요.','enthusiastic','B1','emotion',1,'person enthusiastic learning studying happy'),
('w_emotion_B1_11','irritated','/ˈɪrɪteɪtɪd/','adjective','짜증난','Feeling mild anger; slightly annoyed.','She felt {irritated} by the constant noise.','끊임없는 소음에 짜증이 났어요.','irritated','B1','emotion',2,'person irritated noise annoyed'),
('w_emotion_B1_12','motivated','/ˈmoʊtɪveɪtɪd/','adjective','동기부여된','Eager and determined to do or achieve something.','I feel {motivated} to exercise every morning.','매일 아침 운동할 동기부여가 돼요.','motivated','B1','emotion',1,'person motivated exercise morning energy'),
('w_emotion_B1_13','discouraged','/dɪˈskʌrɪdʒd/','adjective','낙담한','Feeling less confident or enthusiastic.','She felt {discouraged} after failing the test.','시험에 실패한 후 낙담했어요.','discouraged','B1','emotion',2,'person discouraged failure test sad'),
('w_emotion_B1_14','determined','/dɪˈtɜːrmɪnd/','adjective','결연한, 단호한','Having made a firm decision and resolved not to change it.','She was {determined} to finish the race.','그녀는 레이스를 끝내기로 단호했어요.','determined','B1','emotion',2,'person determined race running strong'),
('w_emotion_B1_15','shocked','/ʃɒkt/','adjective','충격받은','Greatly disturbed or distressed by something unexpected.','We were {shocked} by the sudden resignation.','갑작스러운 사퇴에 충격을 받았어요.','shocked','B1','emotion',1,'person shocked news unexpected surprised'),
('w_emotion_B1_16','fascinated','/ˈfæsɪneɪtɪd/','adjective','매혹된, 흥미를 느끼는','Strongly attracted and interested by something.','She was {fascinated} by the history of Korea.','그녀는 한국 역사에 매혹됐어요.','fascinated','B1','emotion',2,'person fascinated history museum interested'),
('w_emotion_B1_17','disappointed','/ˌdɪsəˈpɔɪntɪd/','adjective','실망한','Sad or displeased because expectations were not met.','He was {disappointed} with his exam score.','시험 점수에 실망했어요.','disappointed','B1','emotion',1,'person disappointed exam score sad'),
('w_emotion_B1_18','inspired','/ɪnˈspaɪərd/','adjective','영감을 받은','Feeling creative or enthusiastic as a result of an influence.','She felt {inspired} after the lecture.','강의를 들은 후 영감을 받았어요.','inspired','B1','emotion',2,'person inspired lecture ideas notes'),
('w_emotion_B1_19','amused','/əˈmjuːzd/','adjective','즐거운, 재미있는','Finding something funny or entertaining.','He was {amused} by the children''s antics.','아이들의 장난에 즐거워했어요.','amused','B1','emotion',2,'person amused children funny'),
('w_emotion_B1_20','irritable','/ˈɪrɪtəbəl/','adjective','짜증을 잘 내는','Easily annoyed or made angry.','She was {irritable} after a poor night''s sleep.','잠을 잘 못 자서 짜증을 잘 냈어요.','irritable','B1','emotion',2,'person irritable tired mornings'),
('w_emotion_B1_21','offended','/əˈfendɪd/','adjective','기분이 상한, 불쾌한','Resentful or annoyed because of a perceived insult.','He was {offended} by the careless remark.','부주의한 말에 기분이 상했어요.','offended','B1','emotion',2,'person offended remark upset'),
('w_emotion_B1_22','comfortable','/ˈkʌmftəbəl/','adjective','편안한','At ease with a situation or person.','I felt {comfortable} sharing my feelings.','감정을 나누는 것이 편안하게 느껴졌어요.','comfortable','B1','emotion',2,'person comfortable sharing conversation'),
('w_emotion_B1_23','pessimistic','/ˌpesɪˈmɪstɪk/','adjective','비관적인','Tending to see the worst aspect of things.','He was {pessimistic} about finding a new job.','새 직장 찾는 것에 비관적이었어요.','pessimistic','B1','emotion',3,'person pessimistic gloomy job search'),
('w_emotion_B1_24','optimistic','/ˌɒptɪˈmɪstɪk/','adjective','낙관적인','Hopeful and confident about the future.','She remained {optimistic} despite the setbacks.','어려움에도 불구하고 낙관적이었어요.','optimistic','B1','emotion',2,'person optimistic bright future confident'),
('w_emotion_B1_25','sentimental','/ˌsentɪˈmentəl/','adjective','감상적인','Prompted by feelings of tenderness or nostalgia.','He felt {sentimental} looking at old photos.','오래된 사진을 보며 감상적인 기분이 들었어요.','sentimental','B1','emotion',2,'person sentimental old photos memories'),
('w_emotion_B1_26','regretful','/rɪˈɡretfəl/','adjective','후회스러운','Feeling or showing regret.','She was {regretful} about not studying harder.','더 열심히 공부하지 않은 것을 후회했어요.','regretful','B1','emotion',2,'person regretful reflection past'),
('w_emotion_B1_27','drained','/dreɪnd/','adjective','기진맥진한','Having all energy used up; exhausted.','I felt completely {drained} after the busy week.','바쁜 한 주 후에 완전히 지쳤어요.','drained','B1','emotion',2,'person drained exhausted tired week'),
('w_emotion_B1_28','resentful','/rɪˈzentfəl/','adjective','억울한, 분개한','Feeling bitterness or indignation at unfair treatment.','She felt {resentful} about being left out.','제외된 것에 억울함을 느꼈어요.','resentful','B1','emotion',3,'person resentful excluded group'),
('w_emotion_B1_29','restless','/ˈrestləs/','adjective','안절부절못하는','Unable to rest or relax due to anxiety.','He was {restless} the night before the presentation.','발표 전날 밤 안절부절못했어요.','restless','B1','emotion',2,'person restless night before event'),
('w_emotion_B1_30','moved','/muːvd/','adjective','감동받은','Deeply emotionally affected by something.','She was deeply {moved} by the documentary.','다큐멘터리에 깊이 감동받았어요.','moved','B1','emotion',1,'person moved emotional documentary film'),
('w_emotion_B1_31','fulfilled','/fʊlˈfɪld/','adjective','성취감을 느끼는','Satisfied and happy because of fully achieving potential.','He felt {fulfilled} after helping the community.','지역 사회를 도운 후 성취감을 느꼈어요.','fulfilled','B1','emotion',2,'person fulfilled volunteering community'),
('w_emotion_B1_32','grateful','/ˈɡreɪtfəl/','adjective','깊이 감사하는','Feeling or showing appreciation for kindness.','I''m deeply {grateful} for this opportunity.','이 기회에 깊이 감사드려요.','grateful','B1','emotion',1,'person grateful opportunity hand gesture'),
('w_emotion_B1_33','energetic','/ˌenərˈdʒetɪk/','adjective','활기찬','Having or showing great energy or vitality.','She felt {energetic} after a good night''s sleep.','숙면 후에 활기차게 느껴졌어요.','energetic','B1','emotion',2,'person energetic morning active'),
('w_emotion_B1_34','withdrawn','/wɪðˈdrɔːn/','adjective','내성적인, 말이 없어진','Retreating from others; emotionally detached.','He became {withdrawn} after the loss.','상실 후 그는 말이 없어졌어요.','withdrawn','B1','emotion',3,'person withdrawn alone quiet sad'),
('w_emotion_B1_35','vulnerable','/ˈvʌlnərəbəl/','adjective','취약한, 상처받기 쉬운','Open to emotional hurt or attack.','She felt {vulnerable} opening up about her past.','과거에 대해 털어놓으면서 마음이 연약하게 느껴졌어요.','vulnerable','B1','emotion',2,'person vulnerable opening up sharing feelings')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B2 (35 words)
-- Theme: melancholic, empathetic, nostalgic, apprehensive, exhilarated, remorseful, indignant, compassionate, bewildered, elated + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_B2_01','melancholic','/ˌmelənˈkɒlɪk/','adjective','우울한, 침울한','Having a feeling of pensive sadness with no obvious cause.','She had a {melancholic} expression as she stared at the rain.','그녀는 빗속을 바라보며 침울한 표정을 지었어요.','melancholic','B2','emotion',1,'person melancholic rain window sad pensive'),
('w_emotion_B2_02','empathetic','/ˌempəˈθetɪk/','adjective','공감하는','Showing an ability to understand and share the feelings of another.','She is very {empathetic} toward people in difficult situations.','그녀는 힘든 상황에 있는 사람들에게 매우 공감해요.','empathetic','B2','emotion',1,'person empathetic listening compassion support'),
('w_emotion_B2_03','nostalgic','/nɒˈstældʒɪk/','adjective','향수를 느끼는','Experiencing a sentimental longing for the past.','I felt {nostalgic} listening to the old songs.','오래된 노래를 들으며 향수를 느꼈어요.','nostalgic','B2','emotion',1,'person nostalgic old music memories'),
('w_emotion_B2_04','apprehensive','/ˌæprɪˈhensɪv/','adjective','걱정되는, 불안한','Worried that something bad might happen.','She was {apprehensive} about meeting her partner''s parents.','파트너의 부모님을 만나는 것에 불안해했어요.','apprehensive','B2','emotion',1,'person apprehensive meeting nervous formal'),
('w_emotion_B2_05','exhilarated','/ɪɡˈzɪləreɪtɪd/','adjective','활기에 넘치는, 신나는','Feeling very happy, animated, or elated.','She felt {exhilarated} after the bungee jump.','번지점프 후에 온몸이 짜릿했어요.','exhilarated','B2','emotion',1,'person exhilarated bungee jump adventure thrilled'),
('w_emotion_B2_06','remorseful','/rɪˈmɔːrsfəl/','adjective','뉘우치는, 후회하는','Feeling deep regret or guilt for wrongdoing.','He was deeply {remorseful} after hurting his friend.','친구에게 상처를 줘서 깊이 후회했어요.','remorseful','B2','emotion',1,'person remorseful regret apology sorry'),
('w_emotion_B2_07','indignant','/ɪnˈdɪɡnənt/','adjective','분개한','Feeling or showing anger about unjust treatment.','She was {indignant} when accused without evidence.','증거 없이 비난을 받자 분개했어요.','indignant','B2','emotion',2,'person indignant unfair accusation angry'),
('w_emotion_B2_08','compassionate','/kəmˈpæʃənət/','adjective','연민 어린, 동정심 있는','Feeling or showing sympathy and concern for others.','She was {compassionate} toward those who were suffering.','고통받는 사람들을 향해 연민을 느꼈어요.','compassionate','B2','emotion',1,'person compassionate helping others care'),
('w_emotion_B2_09','bewildered','/bɪˈwɪldərd/','adjective','당혹스러운, 어리둥절한','Completely puzzled or confused.','He looked {bewildered} by the contradictory instructions.','모순된 지시에 어리둥절해 보였어요.','bewildered','B2','emotion',1,'person bewildered confused contradictory'),
('w_emotion_B2_10','elated','/ɪˈleɪtɪd/','adjective','매우 기쁜, 의기양양한','Ecstatically happy and in high spirits.','She was {elated} when she got the scholarship.','장학금을 받았을 때 너무 기뻤어요.','elated','B2','emotion',1,'person elated scholarship success celebration'),
('w_emotion_B2_11','resentful','/rɪˈzentfəl/','adjective','억울한, 원망스러운','Feeling bitter and angry about unfair treatment.','He was {resentful} about being passed over for promotion.','승진에서 제외되어 억울함을 느꼈어요.','resentful','B2','emotion',2,'person resentful passed over work'),
('w_emotion_B2_12','ambivalent','/æmˈbɪvələnt/','adjective','양면적 감정을 가진','Having mixed or contradictory feelings about something.','She felt {ambivalent} about leaving her hometown.','고향을 떠나는 것에 복잡한 감정을 느꼈어요.','ambivalent','B2','emotion',2,'person ambivalent hometown leaving mixed feelings'),
('w_emotion_B2_13','serene','/səˈriːn/','adjective','평온한, 고요한','Calm, peaceful, and untroubled.','She felt {serene} sitting by the mountain lake.','산 호수 옆에 앉아 평온함을 느꼈어요.','serene','B2','emotion',2,'person serene mountain lake peaceful nature'),
('w_emotion_B2_14','agitated','/ˈædʒɪteɪtɪd/','adjective','동요된, 안절부절못하는','Feeling or appearing troubled or nervous.','He seemed {agitated} throughout the meeting.','그는 회의 내내 안절부절못하는 것 같았어요.','agitated','B2','emotion',2,'person agitated restless meeting nervous'),
('w_emotion_B2_15','despondent','/dɪˈspɒndənt/','adjective','낙심한','In low spirits from loss of hope.','She became {despondent} after repeated failures.','반복된 실패 후에 낙심했어요.','despondent','B2','emotion',2,'person despondent low spirits failure'),
('w_emotion_B2_16','elusive','/ɪˈluːsɪv/','adjective','잡히지 않는, 모호한','(of a feeling) difficult to define or describe.','Happiness sometimes feels {elusive} when you chase it.','행복은 쫓을수록 잡히지 않는 것 같아요.','elusive','B2','emotion',3,'abstract happiness chasing feeling'),
('w_emotion_B2_17','conflicted','/kənˈflɪktɪd/','adjective','내적으로 갈등하는','Having or showing confused or contradictory feelings.','She felt {conflicted} about accepting the job overseas.','해외 취업 제안을 수락할지 내적으로 갈등했어요.','conflicted','B2','emotion',2,'person conflicted decision making choice'),
('w_emotion_B2_18','devastated','/ˈdevəsteɪtɪd/','adjective','망연자실한, 크게 상심한','Very shocked and upset.','He was {devastated} by the sudden loss.','갑작스러운 상실에 크게 상심했어요.','devastated','B2','emotion',2,'person devastated grief loss sad'),
('w_emotion_B2_19','invigorated','/ɪnˈvɪɡəreɪtɪd/','adjective','활력을 얻은','Made to feel strong, healthy, and full of energy.','She felt {invigorated} after the cold shower.','찬물 샤워 후에 활력이 생겼어요.','invigorated','B2','emotion',2,'person invigorated shower morning energy'),
('w_emotion_B2_20','appalled','/əˈpɔːld/','adjective','경악한','Greatly dismayed or horrified.','She was {appalled} by the conditions in the shelter.','쉼터의 환경에 경악했어요.','appalled','B2','emotion',2,'person appalled horrified dismayed situation'),
('w_emotion_B2_21','humiliated','/hjuːˈmɪlɪeɪtɪd/','adjective','굴욕감을 느끼는','Made to feel ashamed and foolish.','He felt {humiliated} after being criticised in front of everyone.','모든 사람 앞에서 비판받아 굴욕감을 느꼈어요.','humiliated','B2','emotion',2,'person humiliated public criticism'),
('w_emotion_B2_22','vindicated','/ˈvɪndɪkeɪtɪd/','adjective','억울함이 풀린, 무죄를 증명받은','Cleared of blame or suspicion.','She felt completely {vindicated} when the truth came out.','진실이 밝혀지자 억울함이 완전히 풀렸어요.','vindicated','B2','emotion',3,'person vindicated truth revealed justice'),
('w_emotion_B2_23','anxious','/ˈæŋkʃəs/','adjective','몹시 열망하는','Very eager or concerned to do something.','He was {anxious} to make a good impression.','좋은 인상을 남기려고 몹시 애썼어요.','anxious','B2','emotion',2,'person eager impression meeting'),
('w_emotion_B2_24','disheartened','/dɪsˈhɑːrtənd/','adjective','낙담한, 의기소침한','Having lost determination or confidence.','She was {disheartened} by the lack of progress.','진전이 없어 의기소침해졌어요.','disheartened','B2','emotion',2,'person disheartened no progress discouraged'),
('w_emotion_B2_25','euphoric','/juːˈfɒrɪk/','adjective','행복감에 넘치는','Intensely happy and confident.','He felt {euphoric} after completing the marathon.','마라톤을 완주한 후 행복감에 넘쳤어요.','euphoric','B2','emotion',2,'person euphoric marathon finish line celebration'),
('w_emotion_B2_26','sullen','/ˈsʌlən/','adjective','시무룩한, 쌀쌀한','Bad-tempered and sulky; not social.','He sat in {sullen} silence after the argument.','다툼 이후 시무룩하게 침묵을 지켰어요.','sullen','B2','emotion',3,'person sullen silent after argument'),
('w_emotion_B2_27','wistful','/ˈwɪstfəl/','adjective','아쉬운, 그리운','Having or showing a feeling of vague or regretful longing.','She gave a {wistful} smile as she left the old house.','오래된 집을 떠나며 아쉬운 미소를 지었어요.','wistful','B2','emotion',2,'person wistful leaving old house nostalgic'),
('w_emotion_B2_28','content','/kənˈtent/','adjective','내적으로 평안한','In a state of quiet happiness.','He was quietly {content} with the life he had built.','그는 자신이 만들어 온 삶에 조용히 평안함을 느꼈어요.','content','B2','emotion',2,'person content quiet life simple home'),
('w_emotion_B2_29','troubled','/ˈtrʌbəld/','adjective','마음이 불편한','Burdened by problems or distress.','She looked {troubled} by something she couldn''t explain.','뭔가 설명하기 어려운 것에 마음이 불편해 보였어요.','troubled','B2','emotion',2,'person troubled worried unexplained feeling'),
('w_emotion_B2_30','cathartic','/kəˈθɑːrtɪk/','adjective','정서적으로 해방되는','Providing psychological relief through the open expression of emotion.','Crying during the film was strangely {cathartic}.','영화를 보며 우는 것이 묘하게 카타르시스를 줬어요.','cathartic','B2','emotion',3,'person crying film cathartic emotional relief'),
('w_emotion_B2_31','overwhelmed','/ˌoʊvərˈwelmd/','adjective','감사함에 압도된','Overcome by a positive feeling (e.g., gratitude).','She was {overwhelmed} with gratitude for their kindness.','그들의 친절함에 감사함으로 압도됐어요.','overwhelmed','B2','emotion',2,'person overwhelmed gratitude kindness emotional'),
('w_emotion_B2_32','disillusioned','/ˌdɪsɪˈluːʒənd/','adjective','환멸을 느끼는','Disappointed by the reality of something once idealised.','He became {disillusioned} with politics.','그는 정치에 환멸을 느끼게 됐어요.','disillusioned','B2','emotion',3,'person disillusioned politics disappointed reality'),
('w_emotion_B2_33','yearning','/ˈjɜːrnɪŋ/','adjective','갈망하는','Feeling a tender or urgent desire for something.','She had a deep {yearning} for connection.','그녀는 유대감에 대한 깊은 갈망이 있었어요.','yearning','B2','emotion',2,'person yearning connection longing desire'),
('w_emotion_B2_34','liberated','/ˈlɪbəreɪtɪd/','adjective','해방된, 자유로운 기분인','Free from social conventions or oppressive situations.','She felt {liberated} after quitting the toxic job.','독성적인 직장을 그만두고 해방된 기분이었어요.','liberated','B2','emotion',2,'person liberated quitting job free'),
('w_emotion_B2_35','conflicted','/kənˈflɪktɪd/','adjective','복잡한 심경인','Experiencing inner conflict between opposing feelings.','He felt deeply {conflicted} about the decision.','그 결정에 대해 깊이 복잡한 심경이었어요.','conflicted','B2','emotion',2,'person conflicted decision complexity inner')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C1 (35 words)
-- Theme: despondent, euphoric, ambivalent, disenchanted, forlorn, jubilant, mortified, pensive, wistful, appalled + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_C1_01','despondent','/dɪˈspɒndənt/','adjective','낙심한, 절망에 빠진','In low spirits from loss of hope or courage.','She was {despondent} after losing the election.','선거에서 지고 낙심에 빠졌어요.','despondent','C1','emotion',1,'person despondent election failure hopeless'),
('w_emotion_C1_02','euphoric','/juːˈfɒrɪk/','adjective','극도의 행복감에 찬','Intensely happy and excited.','He felt {euphoric} after the team''s victory.','팀의 승리 후 극도의 행복감을 느꼈어요.','euphoric','C1','emotion',1,'team victory celebration euphoric crowd'),
('w_emotion_C1_03','ambivalent','/æmˈbɪvələnt/','adjective','상반된 감정이 공존하는','Having mixed and contradictory feelings simultaneously.','She felt {ambivalent} about the new opportunity.','새 기회에 대해 상반된 감정을 느꼈어요.','ambivalent','C1','emotion',1,'person ambivalent mixed feelings decision crossroads'),
('w_emotion_C1_04','disenchanted','/ˌdɪsɪnˈtʃɑːntɪd/','adjective','환멸을 느끼는','Disappointed that something was less good than you believed.','He became {disenchanted} with the corporate world.','그는 기업 세계에 환멸을 느끼게 됐어요.','disenchanted','C1','emotion',1,'person disenchanted office corporate disappointed'),
('w_emotion_C1_05','forlorn','/fərˈlɔːrn/','adjective','쓸쓸한, 버려진 느낌의','Pitifully sad and abandoned.','She looked {forlorn} sitting alone in the empty café.','텅 빈 카페에 혼자 앉아 쓸쓸해 보였어요.','forlorn','C1','emotion',2,'person forlorn alone empty cafe sad lonely'),
('w_emotion_C1_06','jubilant','/ˈdʒuːbɪlənt/','adjective','환호하는, 의기양양한','Feeling or expressing great happiness and triumph.','The crowd was {jubilant} after the championship win.','챔피언십 우승 후 군중은 환호했어요.','jubilant','C1','emotion',1,'crowd jubilant championship winning celebration'),
('w_emotion_C1_07','mortified','/ˈmɔːrtɪfaɪd/','adjective','몹시 창피한, 굴욕스러운','Feeling intense embarrassment or shame.','She was {mortified} when she called the teacher ''mum''.','선생님을 ''엄마''라고 불러서 몹시 창피했어요.','mortified','C1','emotion',1,'person mortified embarrassed mistake classroom'),
('w_emotion_C1_08','pensive','/ˈpensɪv/','adjective','생각에 잠긴','Engaged in deep or serious thought.','He sat in a {pensive} mood, staring at the horizon.','그는 수평선을 바라보며 생각에 잠겨 있었어요.','pensive','C1','emotion',1,'person pensive thinking horizon deep thought'),
('w_emotion_C1_09','wistful','/ˈwɪstfəl/','adjective','그리움이 섞인 아쉬움','Having a feeling of vague longing or regretful yearning.','She had a {wistful} look as she recalled her childhood.','어린 시절을 떠올리며 아쉬운 눈빛을 보냈어요.','wistful','C1','emotion',1,'person wistful childhood memories nostalgic'),
('w_emotion_C1_10','appalled','/əˈpɔːld/','adjective','경악한, 충격을 받은','Greatly dismayed or horrified by something.','He was {appalled} at the level of corruption.','부패의 수준에 경악했어요.','appalled','C1','emotion',1,'person appalled corruption shocked dismayed'),
('w_emotion_C1_11','disquieted','/dɪsˈkwaɪətɪd/','adjective','불안하게 된','Made to feel anxious or unsettled.','She felt {disquieted} by his evasive answers.','그의 얼버무리는 답변에 불안해졌어요.','disquieted','C1','emotion',2,'person disquieted uneasy evasive answer'),
('w_emotion_C1_12','elated','/ɪˈleɪtɪd/','adjective','기쁨에 넘치는','Ecstatically happy.','They were {elated} at the unexpected promotion.','예기치 않은 승진에 기쁨에 넘쳤어요.','elated','C1','emotion',2,'person elated promotion joyful work'),
('w_emotion_C1_13','perturbed','/pərˈtɜːrbd/','adjective','마음이 어지러운','Anxious or unsettled; troubled.','She was {perturbed} by the sudden change in plans.','갑작스러운 계획 변경에 마음이 어지러웠어요.','perturbed','C1','emotion',2,'person perturbed troubled anxious change'),
('w_emotion_C1_14','disconsolate','/dɪsˈkɒnsələt/','adjective','위안받을 수 없는','Unhappy and unable to be comforted.','He was {disconsolate} after his dog passed away.','개가 죽은 후 위안받을 수 없을 정도로 슬펐어요.','disconsolate','C1','emotion',2,'person disconsolate grief pet loss'),
('w_emotion_C1_15','buoyant','/ˈbɔɪənt/','adjective','낙관적인, 기분이 들뜬','Cheerful and optimistic, especially in a difficult situation.','Despite the criticism, she remained {buoyant} and positive.','비판에도 불구하고 그녀는 기분이 들뜬 채 긍정적이었어요.','buoyant','C1','emotion',2,'person buoyant positive upbeat criticism'),
('w_emotion_C1_16','contemptuous','/kənˈtemptʃuəs/','adjective','경멸하는','Showing contempt; scornful.','He gave a {contemptuous} glance at the offer.','제안을 경멸하듯 쳐다봤어요.','contemptuous','C1','emotion',3,'person contemptuous scornful dismissive'),
('w_emotion_C1_17','incredulous','/ɪnˈkredjʊləs/','adjective','믿을 수 없다는','Unwilling or unable to believe something.','She stared at him with an {incredulous} expression.','그녀는 믿을 수 없다는 표정으로 그를 바라봤어요.','incredulous','C1','emotion',2,'person incredulous disbelief staring'),
('w_emotion_C1_18','mournful','/ˈmɔːrnfəl/','adjective','애도하는, 슬픔에 잠긴','Feeling or expressing sorrow or grief.','A {mournful} silence fell over the room.','슬픔에 잠긴 침묵이 방을 감쌌어요.','mournful','C1','emotion',2,'person mournful grief silence'),
('w_emotion_C1_19','exasperated','/ɪɡˈzæspəreɪtɪd/','adjective','극도로 짜증난','Intensely irritated and frustrated.','She was {exasperated} by his constant complaints.','그의 끊임없는 불평에 극도로 짜증이 났어요.','exasperated','C1','emotion',2,'person exasperated constant complaints'),
('w_emotion_C1_20','melancholy','/ˈmelənkɒli/','noun','우울함','A feeling of pensive sadness.','He was overcome by a deep sense of {melancholy}.','깊은 우울감에 사로잡혔어요.','melancholy','C1','emotion',2,'person deep melancholy sad pensive'),
('w_emotion_C1_21','trepidation','/ˌtrepɪˈdeɪʃən/','noun','불안, 공포감','A feeling of fear or agitation about something that may happen.','She entered the interview room with some {trepidation}.','그녀는 다소 불안한 마음으로 면접실에 들어섰어요.','trepidation','C1','emotion',2,'person trepidation nervous interview'),
('w_emotion_C1_22','compunction','/kəmˈpʌŋkʃən/','noun','양심의 가책','A feeling of guilt or moral scruple about something.','He showed no {compunction} about his actions.','그는 자신의 행동에 대해 아무런 양심의 가책도 보이지 않았어요.','compunction','C1','emotion',3,'person no remorse guilt moral'),
('w_emotion_C1_23','elation','/ɪˈleɪʃən/','noun','크나큰 기쁨','Great happiness and exhilaration.','A wave of {elation} swept over her when she passed.','합격했을 때 크나큰 기쁨의 물결이 덮쳤어요.','elation','C1','emotion',2,'person wave elation happiness result'),
('w_emotion_C1_24','despondency','/dɪˈspɒndənsi/','noun','낙담, 절망감','A state of low spirits caused by loss of hope or courage.','His {despondency} was evident in his slumped posture.','굽은 자세에 그의 낙담이 역력히 드러났어요.','despondency','C1','emotion',2,'person despondency slumped sad hopeless'),
('w_emotion_C1_25','ambiguity','/ˌæmbɪˈɡjuːɪti/','noun','감정적 모호함','An emotion or situation that can be understood in more than one way.','She sat with the {ambiguity} of her feelings for a while.','그녀는 잠시 자신의 감정적 모호함과 함께 앉아 있었어요.','ambiguity','C1','emotion',3,'person sitting contemplating ambiguous feelings'),
('w_emotion_C1_26','resignation','/ˌrezɪɡˈneɪʃən/','noun','체념','Acceptance of something undesirable but inevitable.','He accepted the outcome with quiet {resignation}.','그는 결과를 조용한 체념으로 받아들였어요.','resignation','C1','emotion',2,'person resigned acceptance quiet outcome'),
('w_emotion_C1_27','fervent','/ˈfɜːrvənt/','adjective','열렬한, 열정적인','Having or displaying passionate intensity.','She spoke with {fervent} emotion about her cause.','그녀는 자신의 대의에 대해 열렬한 감정으로 말했어요.','fervent','C1','emotion',2,'person fervent passionate speech cause'),
('w_emotion_C1_28','indifferent','/ɪnˈdɪfrənt/','adjective','무관심한','Having no particular interest or feeling.','He seemed completely {indifferent} to the outcome.','그는 결과에 완전히 무관심한 것 같았어요.','indifferent','C1','emotion',2,'person indifferent no interest outcome'),
('w_emotion_C1_29','tormented','/ˈtɔːrmentɪd/','adjective','고통받는, 괴로움에 시달리는','Suffering from great mental pain.','She was {tormented} by guilt for years.','그녀는 수년간 죄책감에 시달렸어요.','tormented','C1','emotion',2,'person tormented guilt mental pain years'),
('w_emotion_C1_30','solemn','/ˈsɒləm/','adjective','엄숙한','Formal and dignified; not cheerful.','The ceremony was a {solemn} occasion.','그 의식은 엄숙한 자리였어요.','solemn','C1','emotion',2,'ceremony solemn dignified formal occasion'),
('w_emotion_C1_31','bereft','/bɪˈreft/','adjective','크게 상실감을 느끼는','Lacking something or feeling a great loss.','She was {bereft} when her mentor passed away.','스승이 돌아가셨을 때 크게 상실감을 느꼈어요.','bereft','C1','emotion',2,'person bereft loss mentor grief'),
('w_emotion_C1_32','elusive','/ɪˈluːsɪv/','adjective','포착하기 어려운','(of an emotion) difficult to pin down or describe clearly.','True joy felt {elusive} in the midst of success.','성공 속에서도 진정한 기쁨은 포착하기 어려웠어요.','elusive','C1','emotion',3,'abstract elusive joy success'),
('w_emotion_C1_33','tumultuous','/tjuːˈmʌltʃuəs/','adjective','격동적인','Making an uproar; emotionally turbulent.','The years after the loss were {tumultuous}.','상실 이후의 몇 년은 감정적으로 격동적이었어요.','tumultuous','C1','emotion',2,'person tumultuous emotional turbulent years'),
('w_emotion_C1_34','reverent','/ˈrevərənt/','adjective','경외하는','Feeling or showing deep and solemn respect.','She had a {reverent} appreciation for classical music.','그녀는 클래식 음악에 경외에 가까운 감사함을 느꼈어요.','reverent','C1','emotion',3,'person reverent classical music concert'),
('w_emotion_C1_35','disaffected','/ˌdɪsəˈfektɪd/','adjective','불만을 품은, 등을 돌린','No longer satisfied or loyal; dissatisfied.','Many {disaffected} workers left the company.','불만을 품은 많은 직원들이 회사를 떠났어요.','disaffected','C1','emotion',3,'disaffected workers leaving company')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C2 (35 words)
-- Theme: lugubrious, sanguine, lachrymose, disconsolate, ebullient, ineffable, equanimous, magnanimous, stoic, languid + 25 more
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_emotion_C2_01','lugubrious','/luːˈɡuːbriəs/','adjective','음울한, 처량한','Looking or sounding sad and mournful.','He wore a {lugubrious} expression throughout the gathering.','모임 내내 처량한 표정을 하고 있었어요.','lugubrious','C2','emotion',1,'person lugubrious mournful gathering sad expression'),
('w_emotion_C2_02','sanguine','/ˈsæŋɡwɪn/','adjective','낙관적인, 자신감 있는','Optimistic, especially in a difficult situation.','She remained {sanguine} despite the dire forecasts.','암울한 전망에도 불구하고 낙관적이었어요.','sanguine','C2','emotion',1,'person sanguine optimistic confident difficult forecast'),
('w_emotion_C2_03','lachrymose','/ˈlækrɪmoʊs/','adjective','눈물을 잘 흘리는, 슬픔에 젖은','Tearful or given to weeping.','He became {lachrymose} whenever he heard that song.','그 노래를 들을 때마다 눈물이 났어요.','lachrymose','C2','emotion',1,'person lachrymose tearful song emotional'),
('w_emotion_C2_04','disconsolate','/dɪsˈkɒnsələt/','adjective','위로받을 수 없을 만큼 슬픈','Deeply unhappy and unable to be comforted.','She was {disconsolate} after the irreversible mistake.','되돌릴 수 없는 실수 이후 위로받을 수 없을 만큼 슬펐어요.','disconsolate','C2','emotion',1,'person disconsolate grief irreversible mistake'),
('w_emotion_C2_05','ebullient','/ɪˈbʊliənt/','adjective','활기가 넘치는, 넘쳐흐르는','Cheerful and full of energy.','She arrived in an {ebullient} mood, ready to celebrate.','그녀는 축하할 준비를 하며 활기가 넘치는 기분으로 도착했어요.','ebullient','C2','emotion',1,'person ebullient energetic celebrating mood'),
('w_emotion_C2_06','ineffable','/ɪnˈefəbəl/','adjective','말로 표현할 수 없는','Too great or extreme to be expressed in words.','There was an {ineffable} sense of peace in that moment.','그 순간 말로 표현할 수 없는 평화로움이 있었어요.','ineffable','C2','emotion',1,'abstract ineffable peace serene moment'),
('w_emotion_C2_07','equanimous','/ɪˈkwænɪməs/','adjective','평정심을 가진','Having mental calmness and composure.','She remained {equanimous} in the face of crisis.','위기 앞에서도 평정심을 유지했어요.','equanimous','C2','emotion',1,'person equanimous calm crisis composure'),
('w_emotion_C2_08','magnanimous','/mæɡˈnænɪməs/','adjective','관대한, 너그러운','Generous or forgiving, especially toward a rival or enemy.','She was {magnanimous} in victory, praising her opponent.','그녀는 승리 속에서도 관대하게 상대방을 칭찬했어요.','magnanimous','C2','emotion',1,'person magnanimous generous victory praising opponent'),
('w_emotion_C2_09','stoic','/ˈstoʊɪk/','adjective','감정을 드러내지 않는, 의연한','Enduring pain or hardship without showing feelings.','He faced the diagnosis with {stoic} acceptance.','그는 진단을 의연하게 받아들였어요.','stoic','C2','emotion',1,'person stoic diagnosis acceptance calm'),
('w_emotion_C2_10','languid','/ˈlæŋɡwɪd/','adjective','나른한, 무기력한','Having or showing a disinclination for physical effort.','She gazed {languid}ly out of the train window.','그녀는 나른하게 기차 창밖을 바라봤어요.','languid','C2','emotion',1,'person languid train window dreamy'),
('w_emotion_C2_11','turbulent','/ˈtɜːrbjʊlənt/','adjective','격동적인, 혼란스러운','Characterised by conflict, disorder, or confusion.','His teenage years were emotionally {turbulent}.','그의 십대 시절은 감정적으로 격동적이었어요.','turbulent','C2','emotion',2,'turbulent emotional teenage years conflict'),
('w_emotion_C2_12','imperturbable','/ˌɪmpərˈtɜːrbəbəl/','adjective','흔들리지 않는, 침착한','Unable to be upset or excited; remaining calm.','Her {imperturbable} manner inspired confidence in her team.','흔들리지 않는 태도가 팀에게 자신감을 불어넣었어요.','imperturbable','C2','emotion',2,'person imperturbable calm leader team inspired'),
('w_emotion_C2_13','anguish','/ˈæŋɡwɪʃ/','noun','극심한 고뇌','Severe mental or physical pain or suffering.','She cried out in {anguish} at the devastating news.','충격적인 소식에 극심한 고뇌로 울부짖었어요.','anguish','C2','emotion',2,'person anguish devastating news grief'),
('w_emotion_C2_14','rapturous','/ˈræptʃərəs/','adjective','황홀한, 기쁨에 넘치는','Characterized by or expressing great pleasure.','The audience gave a {rapturous} welcome to the singer.','관객은 가수에게 황홀한 환영을 보냈어요.','rapturous','C2','emotion',2,'audience rapturous welcome concert singer'),
('w_emotion_C2_15','doleful','/ˈdoʊlfəl/','adjective','구슬픈, 슬픈','Expressing sorrow; mournful.','He sang in a {doleful} tone that moved everyone.','모두를 감동시키는 구슬픈 음조로 노래했어요.','doleful','C2','emotion',2,'person doleful singing mournful tone'),
('w_emotion_C2_16','placid','/ˈplæsɪd/','adjective','평온한, 차분한','Not easily upset or excited; calm.','She had a {placid} temperament even in chaos.','혼란 속에서도 평온한 기질을 가지고 있었어요.','placid','C2','emotion',2,'person placid calm chaos temperament'),
('w_emotion_C2_17','sulky','/ˈsʌlki/','adjective','삐진, 기분이 상한','Morose, bad-tempered, and resentful; refusing to be communicative.','He gave a {sulky} shrug and left the room.','삐진 채로 어깨를 으쓱하고 방을 나갔어요.','sulky','C2','emotion',3,'person sulky moody shrug room'),
('w_emotion_C2_18','intrepid','/ɪnˈtrepɪd/','adjective','겁 없는, 대담한','Fearless; adventurous.','She remained {intrepid} despite the growing danger.','위험이 커지는 상황에서도 겁 없이 있었어요.','intrepid','C2','emotion',3,'person intrepid fearless adventure danger'),
('w_emotion_C2_19','petulant','/ˈpetʃʊlənt/','adjective','짜증을 잘 부리는','Childishly sulky or bad-tempered.','His {petulant} behaviour embarrassed his colleagues.','그의 짜증스러운 행동이 동료들을 당황케 했어요.','petulant','C2','emotion',3,'person petulant childish behaviour colleagues'),
('w_emotion_C2_20','nonchalant','/ˌnɒnʃəˈlɑːnt/','adjective','태연한, 무심한','Feeling or appearing casually calm; indifferent.','She gave a {nonchalant} wave and walked away.','태연하게 손을 흔들고 걸어갔어요.','nonchalant','C2','emotion',2,'person nonchalant casual wave indifferent'),
('w_emotion_C2_21','fervent','/ˈfɜːrvənt/','adjective','열렬하고 깊은','Having or displaying deep and sincere passion.','His {fervent} hope was that peace would prevail.','그의 열렬한 바람은 평화가 이어지는 것이었어요.','fervent','C2','emotion',2,'person fervent hope peace sincere'),
('w_emotion_C2_22','rueful','/ˈruːfəl/','adjective','후회하는 듯한','Expressing sorrow or regret in a wry way.','She gave a {rueful} smile at her past mistakes.','과거 실수를 떠올리며 후회하는 듯 미소 지었어요.','rueful','C2','emotion',2,'person rueful smile past mistakes'),
('w_emotion_C2_23','convivial','/kənˈvɪviəl/','adjective','유쾌한, 즐거운','Friendly and lively; relating to good company.','The evening had a {convivial} atmosphere.','저녁 자리는 유쾌한 분위기였어요.','convivial','C2','emotion',2,'group convivial evening friendly lively'),
('w_emotion_C2_24','irascible','/ɪˈræsɪbəl/','adjective','성미가 급한','Having or showing a tendency to be easily angered.','His {irascible} nature made him difficult to work with.','성미가 급한 성격 때문에 함께 일하기 어려웠어요.','irascible','C2','emotion',3,'person irascible quick temper difficult'),
('w_emotion_C2_25','mollified','/ˈmɒlɪfaɪd/','adjective','달래진','Appeased in anger or anxiety.','She felt {mollified} after his sincere apology.','그의 진심 어린 사과 후에 마음이 달래졌어요.','mollified','C2','emotion',2,'person mollified apology appeased calm'),
('w_emotion_C2_26','enraptured','/ɪnˈræptʃərd/','adjective','황홀경에 빠진','Filled with great delight; enchanted.','The audience was {enraptured} by the performance.','관객은 공연에 황홀경에 빠졌어요.','enraptured','C2','emotion',2,'audience enraptured performance enchanted'),
('w_emotion_C2_27','querulous','/ˈkweriʊləs/','adjective','불평이 많은, 투정부리는','Complaining in a rather petulant or whining way.','She spoke in a {querulous} tone about everything.','모든 것에 대해 불평하는 투로 말했어요.','querulous','C2','emotion',3,'person querulous complaining tone whining'),
('w_emotion_C2_28','elated','/ɪˈleɪtɪd/','adjective','고양된, 황홀한','In an intensely high-spirited state.','The whole department was {elated} by the news.','부서 전체가 소식에 고양됐어요.','elated','C2','emotion',2,'department elated news celebration high spirits'),
('w_emotion_C2_29','impervious','/ɪmˈpɜːrviəs/','adjective','영향받지 않는','Not susceptible to something.','She was {impervious} to criticism, focused on her goal.','비판에 영향받지 않고 목표에 집중했어요.','impervious','C2','emotion',2,'person impervious criticism focused goal'),
('w_emotion_C2_30','indignant','/ɪnˈdɪɡnənt/','adjective','분개한, 의분에 찬','Feeling or showing anger at something unjust.','She was {indignant} at the blatant injustice.','노골적인 불의에 분개했어요.','indignant','C2','emotion',2,'person indignant injustice anger righteous'),
('w_emotion_C2_31','beatific','/ˌbiːəˈtɪfɪk/','adjective','더없이 행복한','Blissfully happy; showing serenity and joy.','She wore a {beatific} smile as she held the baby.','아기를 안으며 더없이 행복한 미소를 지었어요.','beatific','C2','emotion',2,'person beatific smile baby blissful joyful'),
('w_emotion_C2_32','crestfallen','/ˈkrestfɔːlən/','adjective','풀이 죽은, 의기소침한','Sad and disappointed.','He looked {crestfallen} when his idea was rejected.','아이디어가 거절당하자 풀이 죽어 보였어요.','crestfallen','C2','emotion',2,'person crestfallen idea rejected sad'),
('w_emotion_C2_33','truculent','/ˈtrʌkjʊlənt/','adjective','시비를 걸려는, 공격적인','Eager or quick to argue or fight.','He adopted a {truculent} tone in the negotiation.','협상에서 시비를 거는 어조를 취했어요.','truculent','C2','emotion',3,'person truculent negotiation aggressive tone'),
('w_emotion_C2_34','phlegmatic','/fleɡˈmætɪk/','adjective','냉정한, 감정이 없어 보이는','Having an unemotional and stolidly calm disposition.','He received both praise and blame with {phlegmatic} calm.','칭찬과 비난 모두를 냉정하게 받아들였어요.','phlegmatic','C2','emotion',2,'person phlegmatic calm unemotional stoic'),
('w_emotion_C2_35','ineffable','/ɪnˈefəbəl/','adjective','경외감이 너무 커서 말로 못 할','Too sacred or overwhelming to be expressed.','The beauty of the landscape was {ineffable}.','그 풍경의 아름다움은 말로 표현할 수 없었어요.','ineffable','C2','emotion',2,'landscape ineffable beauty overwhelming awe')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- SENTENCE PATTERNS — A1 (7 patterns)
-- Situation: 기분 표현
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_emotion_A1_01','I''m so happy!','너무 행복해요!','so happy','감정을 강조할 때 so를 쓰면 더 자연스러워요.','기쁨 표현','A1','emotion','pattern',NULL,1),
('s_emotion_A1_02','I feel sad today.','오늘 슬픈 기분이에요.','feel sad','feel + 감정 형용사는 기분을 표현하는 가장 기본 패턴이에요.','슬픔 표현','A1','emotion','pattern',NULL,2),
('s_emotion_A1_03','I''m really tired.','정말 피곤해요.','really tired','really를 붙이면 감정의 강도를 강조할 수 있어요.','피로감 표현','A1','emotion','pattern',NULL,3),
('s_emotion_A1_04','Are you okay?','괜찮아요?','Are you okay','상대방 걱정을 가볍게 물을 때 쓸 수 있는 표현이에요.','걱정 표현','A1','emotion','pattern',NULL,4),
('s_emotion_A1_05','I''m scared.','무서워요.','I''m scared','감정 형용사 앞에 I''m을 붙이면 바로 기분을 전달할 수 있어요.','공포 표현','A1','emotion','pattern',NULL,5),
('s_emotion_A1_06','I feel good!','기분이 좋아요!','feel good','feel good은 신체적으로도, 감정적으로도 쓸 수 있는 표현이에요.','긍정 감정','A1','emotion','pattern',NULL,6),
('s_emotion_A1_07','I''m not okay.','괜찮지 않아요.','not okay','부정형으로 솔직하게 감정을 표현하는 표현이에요.','솔직한 감정 표현','A1','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_emotion_A2_07','I was so relieved to hear that.','그 말을 듣고 정말 안도했어요.','so relieved to hear','relieved to + 동사원형은 안도의 이유를 함께 표현하는 패턴이에요.','안도 표현','A2','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_emotion_B1_07','I''m so relieved it all worked out in the end.','결국 다 잘 풀려서 정말 안도돼요.','so relieved it all worked out','it all worked out은 일이 잘 해결됐을 때 쓰는 표현이에요.','안도 표현','B1','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_emotion_B2_07','The situation left me feeling utterly bewildered.','그 상황은 저를 완전히 어리둥절하게 만들었어요.','left me feeling utterly bewildered','left me feeling + 형용사는 상황이 어떤 감정을 남겼는지 표현하는 B2 패턴이에요.','혼란 표현','B2','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_emotion_C1_07','She experienced a strange mix of jubilation and loss.','그녀는 기쁨과 상실감이 묘하게 뒤섞인 감정을 경험했어요.','a strange mix of jubilation and loss','a strange mix of A and B는 상반된 두 감정이 공존하는 상태를 표현해요.','복합 감정','C1','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_emotion_C2_07','It is only in retrospect that I can appreciate the bittersweet richness of those years.','이제 돌이켜보니 그 시절의 달콤씁쓸한 풍요로움이 비로소 감사하게 느껴져요.','only in retrospect that I can appreciate','only in retrospect는 지나고 나서야 알 수 있는 통찰을 전달하는 고급 표현이에요.','감정 뉘앙스','C2','emotion','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;
