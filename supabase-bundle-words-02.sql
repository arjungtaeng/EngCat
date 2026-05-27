-- ══════ EMOTION ══════
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


-- ══════ WORK ══════
-- EngCat · Topic: work (직장·비즈니스)
-- 210 words (A1~C2, 35 each) + 42 patterns (7 per level)
-- NOTE: w_work_01~10 already exist (B1). New IDs used throughout.

-- ============================================================
-- WORDS — A1 (35개)
-- ============================================================
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_work_A1_01','job','/dʒɒb/','noun','직업','A paid position of regular employment.','I have a part-time {job}.','저는 파트타임으로 일해요.','job','A1','work',1,'office job work professional'),
('w_work_A1_02','work','/wɜːrk/','noun','일','Activity involving mental or physical effort done to achieve a purpose.','I go to {work} every day.','저는 매일 출근해요.','work','A1','work',1,'person working desk laptop'),
('w_work_A1_03','office','/ˈɒfɪs/','noun','사무실','A room or building used for professional or clerical work.','The {office} is on the third floor.','사무실은 3층에 있어요.','office','A1','work',1,'modern office building interior'),
('w_work_A1_04','boss','/bɒs/','noun','상사','A person who manages or employs others.','My {boss} is very kind.','저의 상사는 매우 친절해요.','boss','A1','work',1,'manager leader professional meeting'),
('w_work_A1_05','meeting','/ˈmiːtɪŋ/','noun','회의','An assembly of people to discuss things.','We have a {meeting} at 10 a.m.','우리는 오전 10시에 회의가 있어요.','meeting','A1','work',1,'business meeting conference table'),
('w_work_A1_06','email','/ˈiːmeɪl/','noun','이메일','Electronic messages sent via the internet.','Please send me an {email}.','이메일을 보내주세요.','email','A1','work',1,'email inbox laptop notification'),
('w_work_A1_07','break','/breɪk/','noun','휴식','A pause from work or activity.','Let''s take a {break}.','잠깐 휴식을 취해요.','break','A1','work',1,'coffee break office relax'),
('w_work_A1_08','salary','/ˈsæləri/','noun','급여','A fixed regular payment from an employer.','My {salary} is paid monthly.','제 급여는 매달 지급돼요.','salary','A1','work',1,'paycheck money professional finance'),
('w_work_A1_09','colleague','/ˈkɒliːɡ/','noun','동료','A person who works with you.','She is my {colleague}.','그녀는 제 동료예요.','colleague','A1','work',1,'colleagues team office smiling'),
('w_work_A1_10','company','/ˈkʌmpəni/','noun','회사','A commercial business organization.','I work at a big {company}.','저는 큰 회사에서 일해요.','company','A1','work',1,'company building corporate logo'),
('w_work_A1_11','name','/neɪm/','noun','이름','A word used to identify a person.','What''s your {name}?','이름이 어떻게 되세요?','name','A1','work',1,'name tag badge identity'),
('w_work_A1_12','team','/tiːm/','noun','팀','A group of people working together.','Our {team} is friendly.','우리 팀은 친절해요.','team','A1','work',1,'team group collaboration office'),
('w_work_A1_13','desk','/desk/','noun','책상','A piece of furniture used for working.','My {desk} is by the window.','제 책상은 창문 옆에 있어요.','desk','A1','work',1,'desk workspace office lamp'),
('w_work_A1_14','phone','/foʊn/','noun','전화','A device used for voice communication.','My {phone} rang during work.','일하는 중에 전화가 왔어요.','phone','A1','work',1,'smartphone office call professional'),
('w_work_A1_15','lunch','/lʌntʃ/','noun','점심','A midday meal taken at work.','Let''s have {lunch} together.','같이 점심 먹어요.','lunch','A1','work',1,'lunch meal colleagues cafeteria'),
('w_work_A1_16','hour','/aʊər/','noun','시간','A period of 60 minutes.','I work eight {hours} a day.','저는 하루에 8시간 일해요.','hours','A1','work',1,'clock time hours office'),
('w_work_A1_17','week','/wiːk/','noun','주','A period of seven days.','I work five days a {week}.','저는 일주일에 5일 일해요.','week','A1','work',1,'calendar week schedule planner'),
('w_work_A1_18','Monday','/ˈmʌndeɪ/','noun','월요일','The first day of the working week.','The meeting is on {Monday}.','회의는 월요일에 있어요.','Monday','A1','work',1,'monday calendar week start'),
('w_work_A1_19','start','/stɑːrt/','verb','시작하다','To begin an activity or process.','I {start} work at nine.','저는 9시에 일을 시작해요.','start','A1','work',1,'start button begin launch'),
('w_work_A1_20','finish','/ˈfɪnɪʃ/','verb','마치다','To bring an activity to an end.','I {finish} at six o''clock.','저는 6시에 마쳐요.','finish','A1','work',1,'finish line complete done'),
('w_work_A1_21','help','/help/','verb','돕다','To make it easier for someone to do something.','Can you {help} me with this?','이것 좀 도와주실 수 있어요?','help','A1','work',1,'help support teamwork assistance'),
('w_work_A1_22','call','/kɔːl/','verb','전화하다','To contact someone by phone.','I will {call} you later.','나중에 전화할게요.','call','A1','work',1,'phone call business communication'),
('w_work_A1_23','file','/faɪl/','noun','파일','A collection of data stored on a computer.','Please send me the {file}.','파일을 보내주세요.','file','A1','work',1,'file folder document office'),
('w_work_A1_24','password','/ˈpæswɜːrd/','noun','비밀번호','A secret word used to gain access.','I forgot my {password}.','비밀번호를 잊어버렸어요.','password','A1','work',1,'password security login screen'),
('w_work_A1_25','print','/prɪnt/','verb','인쇄하다','To produce text or images on paper.','Please {print} this document.','이 문서를 인쇄해주세요.','print','A1','work',1,'printer paper document office'),
('w_work_A1_26','busy','/ˈbɪzi/','adjective','바쁜','Having a great deal to do.','I am very {busy} today.','오늘 매우 바빠요.','busy','A1','work',1,'busy person multitasking stressed'),
('w_work_A1_27','free','/friː/','adjective','여유 있는','Not occupied or engaged.','Are you {free} this afternoon?','오늘 오후에 여유 있으세요?','free','A1','work',1,'free time relax office calm'),
('w_work_A1_28','late','/leɪt/','adjective','늦은','Doing something after the expected time.','Sorry, I am {late}.','죄송해요, 늦었어요.','late','A1','work',1,'late rush clock hurry'),
('w_work_A1_29','early','/ˈɜːrli/','adjective','이른','Before the usual or expected time.','I came {early} today.','오늘은 일찍 왔어요.','early','A1','work',1,'early morning office sunrise'),
('w_work_A1_30','question','/ˈkwestʃən/','noun','질문','A sentence asking for information.','Do you have any {questions}?','질문이 있으세요?','questions','A1','work',1,'question mark inquiry meeting'),
('w_work_A1_31','answer','/ˈænsər/','noun','답변','A response to a question.','I will find the {answer}.','답변을 찾아볼게요.','answer','A1','work',1,'answer solution lightbulb'),
('w_work_A1_32','sign','/saɪn/','verb','서명하다','To write your name on a document.','Please {sign} here.','여기에 서명해주세요.','sign','A1','work',1,'signature contract sign document'),
('w_work_A1_33','copy','/ˈkɒpi/','verb','복사하다','To reproduce text or a document.','Please {copy} this for me.','이것을 복사해주세요.','copy','A1','work',1,'copy machine document duplicate'),
('w_work_A1_34','room','/ruːm/','noun','방·공간','An enclosed space within a building.','The meeting {room} is booked.','회의실이 예약되어 있어요.','room','A1','work',1,'meeting room conference table'),
('w_work_A1_35','open','/ˈoʊpən/','verb','열다','To make accessible or available.','Can you {open} the file?','파일을 열어주실 수 있어요?','open','A1','work',1,'open door office welcome')
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- WORDS — A2 (35개)
-- ============================================================
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_work_A2_01','deadline','/ˈdedlaɪn/','noun','마감일','The latest time by which something must be completed.','The {deadline} is Friday.','마감일은 금요일이에요.','deadline','A2','work',2,'deadline calendar urgent clock'),
('w_work_A2_02','project','/ˈprɒdʒekt/','noun','프로젝트','A planned piece of work with a specific goal.','We are starting a new {project}.','새로운 프로젝트를 시작해요.','project','A2','work',2,'project plan whiteboard team'),
('w_work_A2_03','report','/rɪˈpɔːrt/','noun','보고서','A formal document describing findings or work done.','I need to write a {report}.','보고서를 작성해야 해요.','report','A2','work',2,'report document writing desk'),
('w_work_A2_04','hire','/haɪər/','verb','고용하다','To employ someone for a wage or salary.','We want to {hire} two more staff.','직원 두 명을 더 고용하려고 해요.','hire','A2','work',2,'hiring recruitment interview job'),
('w_work_A2_05','promote','/prəˈmoʊt/','verb','승진시키다','To raise someone to a higher position.','She was {promoted} last month.','그녀는 지난달에 승진했어요.','promoted','A2','work',2,'promotion career ladder success'),
('w_work_A2_06','resign','/rɪˈzaɪn/','verb','사직하다','To voluntarily leave a job.','He decided to {resign}.','그는 사직하기로 결정했어요.','resign','A2','work',2,'resignation letter desk farewell'),
('w_work_A2_07','overtime','/ˈoʊvərtaɪm/','noun','초과근무','Time worked beyond normal working hours.','I worked {overtime} yesterday.','어제 초과근무를 했어요.','overtime','A2','work',2,'overtime work late night office'),
('w_work_A2_08','feedback','/ˈfiːdbæk/','noun','피드백','Comments given in response to work or performance.','Can I get your {feedback}?','피드백을 받을 수 있을까요?','feedback','A2','work',2,'feedback review discussion notes'),
('w_work_A2_09','task','/tæsk/','noun','업무·과제','A piece of work to be done.','This is a difficult {task}.','이것은 어려운 과제예요.','task','A2','work',2,'task checklist todo work'),
('w_work_A2_10','client','/ˈklaɪənt/','noun','고객','A person who receives services from a professional.','The {client} called this morning.','오늘 아침에 고객이 전화했어요.','client','A2','work',2,'client meeting handshake professional'),
('w_work_A2_11','schedule','/ˈskedʒuːl/','noun','일정','A plan of activities and times.','Please check the {schedule}.','일정을 확인해주세요.','schedule','A2','work',2,'schedule planner calendar agenda'),
('w_work_A2_12','interview','/ˈɪntərvjuː/','noun','면접','A formal meeting to assess a candidate.','I have an {interview} tomorrow.','내일 면접이 있어요.','interview','A2','work',2,'job interview suit professional'),
('w_work_A2_13','department','/dɪˈpɑːrtmənt/','noun','부서','A division of a large organization.','Which {department} do you work in?','어느 부서에서 근무하세요?','department','A2','work',2,'office department team floor'),
('w_work_A2_14','manage','/ˈmænɪdʒ/','verb','관리하다','To be responsible for controlling a team or project.','She {manages} the sales team.','그녀는 영업팀을 관리해요.','manages','A2','work',2,'manager leadership team office'),
('w_work_A2_15','present','/prɪˈzent/','verb','발표하다','To show or explain something to an audience.','I will {present} the results.','결과를 발표할게요.','present','A2','work',2,'presentation slides projector office'),
('w_work_A2_16','apply','/əˈplaɪ/','verb','지원하다','To make a formal request for something.','I want to {apply} for this job.','이 직업에 지원하고 싶어요.','apply','A2','work',2,'job application form resume'),
('w_work_A2_17','approve','/əˈpruːv/','verb','승인하다','To officially agree to or accept something.','The manager {approved} my request.','매니저가 제 요청을 승인했어요.','approved','A2','work',2,'approval stamp document official'),
('w_work_A2_18','budget','/ˈbʌdʒɪt/','noun','예산','The amount of money allocated for a purpose.','We need to stay within the {budget}.','예산 내에서 유지해야 해요.','budget','A2','work',2,'budget finance money planning'),
('w_work_A2_19','contract','/ˈkɒntrækt/','noun','계약서','A written legal agreement between parties.','Please read the {contract} carefully.','계약서를 꼼꼼히 읽어주세요.','contract','A2','work',2,'contract document signature legal'),
('w_work_A2_20','invoice','/ˈɪnvɔɪs/','noun','청구서','A document requesting payment for goods or services.','I sent the {invoice} today.','오늘 청구서를 보냈어요.','invoice','A2','work',2,'invoice bill payment document'),
('w_work_A2_21','profit','/ˈprɒfɪt/','noun','이익','Financial gain from business activity.','Our {profit} increased this year.','올해 이익이 증가했어요.','profit','A2','work',2,'profit growth chart finance'),
('w_work_A2_22','loss','/lɒs/','noun','손실','A situation where costs exceed revenue.','The company reported a {loss}.','회사가 손실을 보고했어요.','loss','A2','work',2,'loss chart decline finance'),
('w_work_A2_23','training','/ˈtreɪnɪŋ/','noun','교육','The process of learning skills for a job.','New staff need {training}.','새 직원들은 교육이 필요해요.','training','A2','work',2,'training seminar workshop learning'),
('w_work_A2_24','policy','/ˈpɒləsi/','noun','정책','A set of rules adopted by an organization.','Please follow company {policy}.','회사 정책을 따라주세요.','policy','A2','work',2,'policy document rules corporate'),
('w_work_A2_25','remote','/rɪˈmoʊt/','adjective','원격의','Done from a location away from the office.','I work {remote} on Fridays.','저는 금요일에 원격으로 일해요.','remote','A2','work',2,'remote work home laptop video call'),
('w_work_A2_26','flexible','/ˈfleksɪbəl/','adjective','유연한','Able to change to suit different conditions.','We have {flexible} working hours.','우리는 유연 근무제예요.','flexible','A2','work',2,'flexible schedule balance lifestyle'),
('w_work_A2_27','attend','/əˈtend/','verb','참석하다','To be present at an event.','Can you {attend} the meeting?','회의에 참석하실 수 있어요?','attend','A2','work',2,'attend conference meeting people'),
('w_work_A2_28','submit','/səbˈmɪt/','verb','제출하다','To formally hand something in.','Please {submit} your report by noon.','정오까지 보고서를 제출해주세요.','submit','A2','work',2,'submit form document send'),
('w_work_A2_29','confirm','/kənˈfɜːrm/','verb','확인하다','To verify or acknowledge something as correct.','Please {confirm} your attendance.','참석 여부를 확인해주세요.','confirm','A2','work',2,'confirm checkmark approval yes'),
('w_work_A2_30','cancel','/ˈkænsəl/','verb','취소하다','To call off a planned event or action.','We had to {cancel} the meeting.','회의를 취소해야 했어요.','cancel','A2','work',2,'cancel cross delete remove'),
('w_work_A2_31','update','/ˈʌpdeɪt/','noun','업데이트·현황','The latest information about a situation.','Can you give me an {update}?','현황을 알려주실 수 있어요?','update','A2','work',2,'update status progress notification'),
('w_work_A2_32','goal','/ɡoʊl/','noun','목표','The object of a person''s ambition or effort.','Set clear {goals} for your team.','팀을 위해 명확한 목표를 설정하세요.','goals','A2','work',2,'goal target success achievement'),
('w_work_A2_33','skill','/skɪl/','noun','기술·능력','The ability to do something well.','Communication is a key {skill}.','의사소통은 핵심 기술이에요.','skill','A2','work',2,'skill learning ability professional'),
('w_work_A2_34','review','/rɪˈvjuː/','noun','검토','A formal assessment of something.','The manager did a {review}.','매니저가 검토를 했어요.','review','A2','work',2,'review assessment feedback document'),
('w_work_A2_35','promote','/prəˈmoʊt/','verb','홍보하다','To publicize a product or service.','We need to {promote} our brand.','우리 브랜드를 홍보해야 해요.','promote','A2','work',2,'promote marketing brand advertising')
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- WORDS — B1 (35개)
-- NOTE: Existing seeds use w_work_01~10 (no level prefix). w_work_B1_01~10 are new, no conflict.
-- ============================================================
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_work_B1_01','strategy','/ˈstrætɪdʒi/','noun','전략','A plan of action designed to achieve a long-term goal.','We need a clear {strategy}.','명확한 전략이 필요해요.','strategy','B1','work',2,'strategy plan chess business'),
('w_work_B1_02','stakeholder','/ˈsteɪkhoʊldər/','noun','이해관계자','A person with an interest in an organization''s decisions.','Inform all {stakeholders}.','모든 이해관계자에게 알려주세요.','stakeholders','B1','work',2,'stakeholder meeting boardroom'),
('w_work_B1_03','milestone','/ˈmaɪlstoʊn/','noun','주요 이정표','A significant event in a project''s progress.','We reached our first {milestone}.','첫 번째 이정표에 도달했어요.','milestone','B1','work',2,'milestone achievement progress timeline'),
('w_work_B1_04','collaborate','/kəˈlæbəreɪt/','verb','협업하다','To work jointly on a project.','Let''s {collaborate} on this.','이것을 함께 협업해요.','collaborate','B1','work',2,'collaboration teamwork together office'),
('w_work_B1_05','delegate','/ˈdelɪɡeɪt/','verb','위임하다','To assign responsibility to another person.','You should {delegate} some tasks.','일부 업무를 위임해야 해요.','delegate','B1','work',2,'delegate authority manager team'),
('w_work_B1_06','negotiate','/nɪˈɡoʊʃieɪt/','verb','협상하다','To reach an agreement through discussion.','We {negotiated} a better price.','우리는 더 좋은 가격으로 협상했어요.','negotiated','B1','work',2,'negotiation deal handshake business'),
('w_work_B1_07','performance','/pərˈfɔːrməns/','noun','성과·실적','How well a person or organization does their work.','Your {performance} is excellent.','당신의 성과는 뛰어나요.','performance','B1','work',2,'performance chart graph achievement'),
('w_work_B1_08','agenda','/əˈdʒendə/','noun','안건','A list of items to be discussed at a meeting.','Let''s go over the {agenda}.','안건을 살펴봐요.','agenda','B1','work',2,'agenda meeting notes document'),
('w_work_B1_09','briefing','/ˈbriːfɪŋ/','noun','브리핑','A short meeting to give information.','Attend the morning {briefing}.','아침 브리핑에 참석하세요.','briefing','B1','work',2,'briefing team meeting morning'),
('w_work_B1_10','initiative','/ɪˈnɪʃɪətɪv/','noun','이니셔티브','A new plan or action to improve a situation.','Launch a new {initiative}.','새로운 이니셔티브를 시작해요.','initiative','B1','work',2,'initiative leadership idea launch'),
('w_work_B1_11','priority','/praɪˈɒrɪti/','noun','우선순위','The fact of being more important than something else.','What is our top {priority}?','우리의 최우선 순위는 무엇인가요?','priority','B1','work',2,'priority important urgent task'),
('w_work_B1_12','workflow','/ˈwɜːrkfloʊ/','noun','업무 흐름','The sequence of processes to complete work.','We improved our {workflow}.','업무 흐름을 개선했어요.','workflow','B1','work',2,'workflow process diagram system'),
('w_work_B1_13','proposal','/prəˈpoʊzəl/','noun','제안서','A plan or suggestion formally put forward.','Submit a {proposal} by Monday.','월요일까지 제안서를 제출하세요.','proposal','B1','work',2,'proposal document business plan'),
('w_work_B1_14','implementation','/ˌɪmplɪmenˈteɪʃən/','noun','시행','The process of putting a plan into action.','The {implementation} starts next week.','다음 주에 시행이 시작돼요.','implementation','B1','work',2,'implementation launch rollout plan'),
('w_work_B1_15','outcome','/ˈaʊtkʌm/','noun','결과','The result or consequence of an action.','The {outcome} was very positive.','결과가 매우 긍정적이었어요.','outcome','B1','work',2,'outcome result success positive'),
('w_work_B1_16','resource','/ˈriːsɔːrs/','noun','자원','Stock or supply of money, people, or materials.','We lack the {resources}.','자원이 부족해요.','resources','B1','work',2,'resources budget team materials'),
('w_work_B1_17','guideline','/ˈɡaɪdlaɪn/','noun','지침','A general rule or piece of advice.','Follow the company {guidelines}.','회사 지침을 따르세요.','guidelines','B1','work',2,'guidelines rules document corporate'),
('w_work_B1_18','efficiency','/ɪˈfɪʃənsi/','noun','효율성','Achieving maximum output with minimum input.','Improve team {efficiency}.','팀 효율성을 향상시키세요.','efficiency','B1','work',2,'efficiency productivity speed output'),
('w_work_B1_19','objective','/əbˈdʒektɪv/','noun','목적','A thing aimed at or sought after.','State your key {objectives}.','핵심 목적을 명시하세요.','objectives','B1','work',2,'objective goal target business'),
('w_work_B1_20','accountability','/əˌkaʊntəˈbɪlɪti/','noun','책임감','The fact of being responsible for one''s actions.','{Accountability} builds trust.','책임감은 신뢰를 만들어요.','Accountability','B1','work',2,'accountability responsibility trust team'),
('w_work_B1_21','escalate','/ˈeskəleɪt/','verb','에스컬레이션하다','To refer a problem to a higher level.','{Escalate} the issue if needed.','필요하면 문제를 에스컬레이션하세요.','Escalate','B1','work',2,'escalate problem issue urgent manager'),
('w_work_B1_22','coordinate','/koʊˈɔːrdɪneɪt/','verb','조율하다','To organize activities to work together.','Please {coordinate} with HR.','인사팀과 조율해주세요.','coordinate','B1','work',2,'coordinate team planning logistics'),
('w_work_B1_23','resolve','/rɪˈzɒlv/','verb','해결하다','To find a solution to a problem.','We need to {resolve} this quickly.','이것을 빨리 해결해야 해요.','resolve','B1','work',2,'resolve problem solution fix'),
('w_work_B1_24','capacity','/kəˈpæsɪti/','noun','역량','The ability or power to do something.','We are at full {capacity}.','현재 최대 역량으로 운영 중이에요.','capacity','B1','work',2,'capacity full production limit'),
('w_work_B1_25','benchmark','/ˈbentʃmɑːrk/','noun','기준점','A standard to measure performance against.','Set a {benchmark} for quality.','품질을 위한 기준점을 설정하세요.','benchmark','B1','work',2,'benchmark standard comparison chart'),
('w_work_B1_26','feedback loop','/ˈfiːdbæk luːp/','noun phrase','피드백 루프','A recurring cycle of providing and receiving feedback.','Create a strong {feedback loop}.','강력한 피드백 루프를 만드세요.','feedback loop','B1','work',2,'feedback loop cycle improvement'),
('w_work_B1_27','status update','/ˈsteɪtəs ˈʌpdeɪt/','noun phrase','진행 상황 보고','A report on the current state of work.','Send a {status update} by Friday.','금요일까지 진행 상황을 보고하세요.','status update','B1','work',2,'status update report progress meeting'),
('w_work_B1_28','action item','/ˈækʃən ˈaɪtəm/','noun phrase','조치 사항','A specific task resulting from a meeting.','List all {action items} clearly.','모든 조치 사항을 명확히 나열하세요.','action items','B1','work',2,'action item task todo checklist'),
('w_work_B1_29','follow-up','/ˈfɒloʊ ʌp/','noun','후속 조치','An action taken after an initial step.','Schedule a {follow-up} meeting.','후속 회의를 일정에 잡으세요.','follow-up','B1','work',2,'follow up meeting email task'),
('w_work_B1_30','sign off','/saɪn ɒf/','verb phrase','최종 승인하다','To formally approve a project or document.','Please {sign off} on this report.','이 보고서에 최종 승인해주세요.','sign off','B1','work',2,'sign off approval document official'),
('w_work_B1_31','scope','/skoʊp/','noun','범위','The extent of work covered by a project.','Define the {scope} clearly.','범위를 명확히 정의하세요.','scope','B1','work',2,'scope project definition plan'),
('w_work_B1_32','timeline','/ˈtaɪmlaɪn/','noun','일정표','A schedule showing the order of events.','Share the project {timeline}.','프로젝트 일정표를 공유하세요.','timeline','B1','work',2,'timeline schedule project gantt'),
('w_work_B1_33','kick-off','/ˈkɪk ɒf/','noun','시작 회의','The first meeting to launch a project.','Join the project {kick-off}.','프로젝트 시작 회의에 참석하세요.','kick-off','B1','work',2,'kickoff meeting launch project start'),
('w_work_B1_34','wrap up','/ræp ʌp/','verb phrase','마무리하다','To bring a task or meeting to a conclusion.','Let''s {wrap up} by three.','3시까지 마무리해요.','wrap up','B1','work',2,'wrap up finish conclude meeting'),
('w_work_B1_35','hand off','/hænd ɒf/','verb phrase','인계하다','To transfer responsibility to someone else.','Please {hand off} this task to Jin.','이 업무를 진 씨에게 인계해주세요.','hand off','B1','work',2,'handoff transfer responsibility colleague')
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- WORDS — B2 (35개)
-- ============================================================
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_work_B2_01','KPI','/ˌkeɪ piː ˈaɪ/','noun','핵심성과지표','Key Performance Indicator — a measurable business goal.','Track your {KPIs} monthly.','KPI를 매달 추적하세요.','KPIs','B2','work',2,'KPI dashboard metrics chart'),
('w_work_B2_02','leverage','/ˈlevərɪdʒ/','verb','활용하다','To use something to maximum advantage.','{Leverage} data to drive decisions.','데이터를 활용해 의사결정을 이끄세요.','Leverage','B2','work',2,'leverage data analytics business'),
('w_work_B2_03','synergy','/ˈsɪnərdʒi/','noun','시너지','Combined effort producing a greater result.','The merger created real {synergy}.','합병이 진정한 시너지를 만들었어요.','synergy','B2','work',2,'synergy teamwork collaboration merge'),
('w_work_B2_04','pivot','/ˈpɪvɪt/','verb','방향 전환하다','To change strategy in response to market feedback.','The startup had to {pivot}.','스타트업이 방향을 전환해야 했어요.','pivot','B2','work',2,'pivot change direction startup'),
('w_work_B2_05','disruptive','/dɪsˈrʌptɪv/','adjective','파괴적 혁신의','Causing major changes by introducing new methods.','It is a {disruptive} technology.','파괴적 혁신 기술이에요.','disruptive','B2','work',2,'disruptive innovation technology startup'),
('w_work_B2_06','scalable','/ˈskeɪləbəl/','adjective','확장 가능한','Able to be expanded without losing quality.','Build a {scalable} system.','확장 가능한 시스템을 구축하세요.','scalable','B2','work',2,'scalable system growth cloud'),
('w_work_B2_07','onboarding','/ˈɒnbɔːrdɪŋ/','noun','온보딩','The process of integrating a new employee.','Good {onboarding} reduces turnover.','좋은 온보딩은 이직률을 줄여요.','onboarding','B2','work',2,'onboarding new employee welcome training'),
('w_work_B2_08','quarterly','/ˈkwɔːrtərli/','adjective','분기별','Occurring every three months.','We hold {quarterly} reviews.','우리는 분기별 검토를 해요.','quarterly','B2','work',2,'quarterly report chart finance'),
('w_work_B2_09','fiscal','/ˈfɪskəl/','adjective','재정적·회계연도의','Relating to government or company finances.','The {fiscal} year ends in March.','회계연도는 3월에 끝나요.','fiscal','B2','work',2,'fiscal year finance accounting'),
('w_work_B2_10','stakeholder engagement','/ˈsteɪkhoʊldər ɪnˈɡeɪdʒmənt/','noun phrase','이해관계자 참여','The process of involving relevant parties.','Improve {stakeholder engagement}.','이해관계자 참여를 개선하세요.','stakeholder engagement','B2','work',2,'stakeholder engagement communication'),
('w_work_B2_11','agile','/ˈædʒaɪl/','adjective','애자일 방식의','A project management approach using iterative sprints.','We use {agile} methodology.','우리는 애자일 방법론을 사용해요.','agile','B2','work',2,'agile scrum sprint board'),
('w_work_B2_12','sprint','/sprɪnt/','noun','스프린트','A short development cycle in agile methodology.','This {sprint} lasts two weeks.','이번 스프린트는 2주예요.','sprint','B2','work',2,'sprint agile kanban board'),
('w_work_B2_13','cross-functional','/ˌkrɒs ˈfʌŋkʃənəl/','adjective','교차 기능적','Involving people from different departments.','Form a {cross-functional} team.','교차 기능 팀을 구성하세요.','cross-functional','B2','work',2,'cross functional team diverse office'),
('w_work_B2_14','deliverable','/dɪˈlɪvərəbəl/','noun','산출물','A result or item that must be produced.','List all {deliverables} clearly.','모든 산출물을 명확히 나열하세요.','deliverables','B2','work',2,'deliverable output document checklist'),
('w_work_B2_15','roadmap','/ˈroʊdmæp/','noun','로드맵','A plan showing the path to a goal.','Present the product {roadmap}.','제품 로드맵을 발표하세요.','roadmap','B2','work',2,'roadmap timeline plan product'),
('w_work_B2_16','metrics','/ˈmetrɪks/','noun','지표','Quantitative measurements used to evaluate performance.','Review the key {metrics}.','핵심 지표를 검토하세요.','metrics','B2','work',2,'metrics data dashboard analytics'),
('w_work_B2_17','bandwidth','/ˈbændwɪdθ/','noun','여력·여유','Available time and energy to take on work.','I don''t have the {bandwidth}.','저는 여력이 없어요.','bandwidth','B2','work',2,'bandwidth capacity workload busy'),
('w_work_B2_18','visibility','/ˌvɪzɪˈbɪlɪti/','noun','가시성','The degree to which something is known or seen.','Increase brand {visibility}.','브랜드 가시성을 높이세요.','visibility','B2','work',2,'visibility brand marketing awareness'),
('w_work_B2_19','alignment','/əˈlaɪnmənt/','noun','정렬·합의','Agreement and coordination between teams.','Ensure {alignment} across all teams.','모든 팀 간 합의를 확보하세요.','alignment','B2','work',2,'alignment team agreement coordination'),
('w_work_B2_20','rollout','/ˈroʊlaʊt/','noun','출시·배포','The gradual launch of a product or plan.','Plan a phased {rollout}.','단계적 배포를 계획하세요.','rollout','B2','work',2,'rollout launch product release'),
('w_work_B2_21','value proposition','/ˈvæljuː ˌprɒpəˈzɪʃən/','noun phrase','가치 제안','The benefit a company promises to deliver.','Define your {value proposition}.','가치 제안을 정의하세요.','value proposition','B2','work',2,'value proposition marketing pitch'),
('w_work_B2_22','turnaround','/ˈtɜːrnəraʊnd/','noun','회생·처리 시간','A reversal of a bad situation or quick completion.','The {turnaround} time is 48 hours.','처리 시간은 48시간이에요.','turnaround','B2','work',2,'turnaround time fast efficiency'),
('w_work_B2_23','retention','/rɪˈtenʃən/','noun','유지율','The rate at which employees stay with a company.','Improve staff {retention}.','직원 유지율을 개선하세요.','retention','B2','work',2,'retention employee loyalty hr'),
('w_work_B2_24','headcount','/ˈhedkaʊnt/','noun','인원수','The number of people employed in an organization.','Increase {headcount} by Q3.','3분기까지 인원을 늘리세요.','headcount','B2','work',2,'headcount employees team office'),
('w_work_B2_25','scope creep','/skoʊp kriːp/','noun phrase','범위 확장','Uncontrolled expansion of project requirements.','Avoid {scope creep}.','범위 확장을 피하세요.','scope creep','B2','work',2,'scope creep project overload'),
('w_work_B2_26','outsource','/ˈaʊtsɔːrs/','verb','외주를 주다','To hire an external company to perform work.','We {outsource} IT support.','IT 지원을 외주로 맡겨요.','outsource','B2','work',2,'outsource contractor vendor remote'),
('w_work_B2_27','procurement','/prəˈkjʊərmənt/','noun','조달','The process of obtaining goods or services.','The {procurement} team handles buying.','조달팀이 구매를 담당해요.','procurement','B2','work',2,'procurement supply chain purchasing'),
('w_work_B2_28','pipeline','/ˈpaɪplaɪn/','noun','파이프라인·사업 계획','A channel through which future work flows.','We have a strong sales {pipeline}.','강력한 영업 파이프라인이 있어요.','pipeline','B2','work',2,'pipeline sales crm funnel'),
('w_work_B2_29','bottleneck','/ˈbɒtəlnek/','noun','병목','A point of congestion slowing down a process.','Find and remove the {bottleneck}.','병목을 찾아 제거하세요.','bottleneck','B2','work',2,'bottleneck process slow workflow'),
('w_work_B2_30','forecast','/ˈfɔːrkæst/','noun','예측','An estimate of future performance or conditions.','The sales {forecast} looks strong.','영업 예측이 강해 보여요.','forecast','B2','work',2,'forecast chart prediction business'),
('w_work_B2_31','competitive advantage','/kəmˈpetɪtɪv ədˈvɑːntɪdʒ/','noun phrase','경쟁 우위','A condition favoring success over competitors.','Identify your {competitive advantage}.','경쟁 우위를 파악하세요.','competitive advantage','B2','work',2,'competitive advantage strategy market'),
('w_work_B2_32','incentive','/ɪnˈsentɪv/','noun','인센티브','Something that motivates or encourages action.','Offer a performance {incentive}.','성과 인센티브를 제공하세요.','incentive','B2','work',2,'incentive bonus reward motivation'),
('w_work_B2_33','benchmark','/ˈbentʃmɑːrk/','verb','기준을 삼다','To measure against a standard.','Let''s {benchmark} against industry leaders.','업계 선두와 비교 기준을 삼아요.','benchmark','B2','work',2,'benchmark compare industry standard'),
('w_work_B2_34','innovation','/ˌɪnəˈveɪʃən/','noun','혁신','A new idea or method that improves something.','Drive {innovation} at every level.','모든 수준에서 혁신을 이끄세요.','innovation','B2','work',2,'innovation idea lightbulb technology'),
('w_work_B2_35','stakeholder map','/ˈsteɪkhoʊldər mæp/','noun phrase','이해관계자 지도','A visual tool showing all parties involved.','Create a {stakeholder map}.','이해관계자 지도를 만드세요.','stakeholder map','B2','work',2,'stakeholder map diagram chart')
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- WORDS — C1 (35개)
-- ============================================================
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_work_C1_01','fiduciary','/fɪˈdjuːʃɪəri/','adjective','신탁의·수탁자로서의','Relating to trust and confidence in managing assets.','Directors have {fiduciary} duties.','이사들은 수탁자 의무가 있어요.','fiduciary','C1','work',3,'fiduciary trust legal document'),
('w_work_C1_02','due diligence','/djuː ˈdɪlɪdʒəns/','noun phrase','적정 조사','A thorough investigation before a business deal.','Conduct {due diligence} first.','먼저 적정 조사를 실시하세요.','due diligence','C1','work',3,'due diligence investigation legal audit'),
('w_work_C1_03','liability','/ˌlaɪəˈbɪlɪti/','noun','채무·법적 책임','Legal responsibility for something.','Limit your personal {liability}.','개인 법적 책임을 제한하세요.','liability','C1','work',3,'liability legal risk document'),
('w_work_C1_04','indemnify','/ɪnˈdemnɪfaɪ/','verb','배상을 보증하다','To protect someone from financial loss or legal liability.','The contract will {indemnify} you.','계약이 당신을 배상 보증할 거예요.','indemnify','C1','work',3,'indemnify contract legal protection'),
('w_work_C1_05','arbitration','/ˌɑːrbɪˈtreɪʃən/','noun','중재','Dispute resolution by an independent party.','Resolve through {arbitration}.','중재를 통해 해결하세요.','arbitration','C1','work',3,'arbitration legal dispute resolution'),
('w_work_C1_06','compliance','/kəmˈplaɪəns/','noun','준법 경영·컴플라이언스','Adherence to laws and regulations.','Ensure full {compliance}.','완전한 컴플라이언스를 확보하세요.','compliance','C1','work',3,'compliance audit law corporate'),
('w_work_C1_07','governance','/ˈɡʌvərnəns/','noun','지배 구조','The system of rules and practices directing an organization.','Review corporate {governance}.','기업 지배 구조를 검토하세요.','governance','C1','work',3,'governance board corporate structure'),
('w_work_C1_08','acquisition','/ˌækwɪˈzɪʃən/','noun','인수','The purchase of one company by another.','The {acquisition} closed last month.','인수가 지난달에 완료됐어요.','acquisition','C1','work',3,'acquisition merger company deal'),
('w_work_C1_09','merger','/ˈmɜːrdʒər/','noun','합병','The combining of two companies into one.','The {merger} created a giant firm.','합병이 거대 기업을 만들었어요.','merger','C1','work',3,'merger company combine business'),
('w_work_C1_10','equity','/ˈekwɪti/','noun','주식·자기자본','The value of shares held in a company.','Employees receive {equity}.','직원들이 주식을 받아요.','equity','C1','work',3,'equity stock shares finance'),
('w_work_C1_11','liquidation','/ˌlɪkwɪˈdeɪʃən/','noun','청산','The process of closing a company and selling assets.','The firm went into {liquidation}.','회사가 청산에 들어갔어요.','liquidation','C1','work',3,'liquidation bankruptcy assets close'),
('w_work_C1_12','indemnification','/ɪnˌdemnɪfɪˈkeɪʃən/','noun','면책 보상','Protection from financial loss or legal claims.','Seek {indemnification} in the contract.','계약에서 면책 보상을 구하세요.','indemnification','C1','work',3,'indemnification legal contract protection'),
('w_work_C1_13','non-disclosure','/ˌnɒn dɪsˈkloʊʒər/','noun','비공개','An agreement keeping information confidential.','Sign a {non-disclosure} agreement.','비공개 계약에 서명하세요.','non-disclosure','C1','work',3,'non disclosure NDA secret legal'),
('w_work_C1_14','intellectual property','/ˌɪntəlektʃuəl ˈprɒpəti/','noun phrase','지적 재산권','Legal rights over creations of the mind.','Protect your {intellectual property}.','지적 재산권을 보호하세요.','intellectual property','C1','work',3,'intellectual property patent copyright'),
('w_work_C1_15','vesting','/ˈvestɪŋ/','noun','귀속·베스팅','The process by which stock options become owned.','Shares have a four-year {vesting} schedule.','주식은 4년 베스팅 일정이에요.','vesting','C1','work',3,'vesting stock options equity'),
('w_work_C1_16','deposition','/ˌdepəˈzɪʃən/','noun','증언 녹취','Sworn out-of-court testimony used in legal proceedings.','Give a {deposition} next Tuesday.','다음 화요일에 증언 녹취를 해요.','deposition','C1','work',3,'deposition legal court testimony'),
('w_work_C1_17','contingency','/kənˈtɪndʒənsi/','noun','비상 계획·불확실성','A future event that may affect plans.','Plan for every {contingency}.','모든 불확실성에 대비 계획을 세우세요.','contingency','C1','work',3,'contingency plan emergency business'),
('w_work_C1_18','solvency','/ˈsɒlvənsi/','noun','지급 능력','The ability of a company to meet its financial obligations.','Maintain {solvency} at all times.','항상 지급 능력을 유지하세요.','solvency','C1','work',3,'solvency finance balance sheet'),
('w_work_C1_19','restructuring','/riːˈstrʌktʃərɪŋ/','noun','구조 조정','Reorganizing a company to improve efficiency.','The {restructuring} affected 200 jobs.','구조 조정이 200개 일자리에 영향을 미쳤어요.','restructuring','C1','work',3,'restructuring company layoff change'),
('w_work_C1_20','deferred compensation','/dɪˈfɜːrd ˌkɒmpənˈseɪʃən/','noun phrase','이연 보상','Earnings set aside to be paid at a later date.','Negotiate {deferred compensation}.','이연 보상을 협상하세요.','deferred compensation','C1','work',3,'deferred compensation salary benefits'),
('w_work_C1_21','recourse','/ˈriːkɔːrs/','noun','법적 구제수단','The right to demand compensation or action.','You have legal {recourse}.','법적 구제수단이 있어요.','recourse','C1','work',3,'recourse legal action remedy'),
('w_work_C1_22','injunction','/ɪnˈdʒʌŋkʃən/','noun','금지 명령','A court order forbidding a specific action.','Seek an {injunction} immediately.','즉시 금지 명령을 구하세요.','injunction','C1','work',3,'injunction court order legal'),
('w_work_C1_23','escrow','/ˈeskroʊ/','noun','에스크로','Funds held by a third party until conditions are met.','Funds are held in {escrow}.','자금이 에스크로로 보관돼요.','escrow','C1','work',3,'escrow funds held third party'),
('w_work_C1_24','amortize','/ˈæmɔːrtaɪz/','verb','상각하다','To gradually write off the cost of an asset.','{Amortize} the loan over five years.','5년에 걸쳐 대출을 상각하세요.','Amortize','C1','work',3,'amortize loan finance schedule'),
('w_work_C1_25','audit','/ˈɔːdɪt/','noun','감사','An official inspection of accounts and processes.','The external {audit} begins Monday.','외부 감사가 월요일에 시작돼요.','audit','C1','work',3,'audit inspection accounting document'),
('w_work_C1_26','whistleblower','/ˈwɪsəlbloʊər/','noun','내부 고발자','A person who reports wrongdoing within an organization.','Protect the {whistleblower} legally.','내부 고발자를 법적으로 보호하세요.','whistleblower','C1','work',3,'whistleblower report expose corporate'),
('w_work_C1_27','proxy','/ˈprɒksi/','noun','대리인·위임장','Authority given to act on another''s behalf.','Vote by {proxy} at the meeting.','회의에서 위임장으로 투표하세요.','proxy','C1','work',3,'proxy vote delegate representative'),
('w_work_C1_28','severance','/ˈsevərəns/','noun','퇴직금·해직 수당','Compensation paid to an employee who is let go.','Negotiate your {severance} package.','퇴직금 패키지를 협상하세요.','severance','C1','work',3,'severance package termination hr'),
('w_work_C1_29','litigation','/ˌlɪtɪˈɡeɪʃən/','noun','소송','The process of taking legal action in court.','Avoid costly {litigation}.','비용이 많이 드는 소송을 피하세요.','litigation','C1','work',3,'litigation court lawsuit legal'),
('w_work_C1_30','encumbrance','/ɪnˈkʌmbrəns/','noun','부담·담보 부채','A claim against a property or asset.','Check for any {encumbrances}.','담보 부채를 확인하세요.','encumbrances','C1','work',3,'encumbrance debt property legal'),
('w_work_C1_31','warrant','/ˈwɒrənt/','noun','영장·워런트','A legal document or a security to purchase shares.','The company issued stock {warrants}.','회사가 주식 워런트를 발행했어요.','warrants','C1','work',3,'warrant stock legal document'),
('w_work_C1_32','dilution','/daɪˈluːʃən/','noun','희석','A reduction in ownership percentage due to new shares.','Avoid share {dilution}.','주식 희석을 피하세요.','dilution','C1','work',3,'dilution shares equity stock'),
('w_work_C1_33','lien','/liːn/','noun','유치권','A legal right over property until a debt is paid.','The bank holds a {lien}.','은행이 유치권을 보유하고 있어요.','lien','C1','work',3,'lien property debt bank legal'),
('w_work_C1_34','subpoena','/səˈpiːnə/','noun','소환장','A legal document requiring attendance at court.','He received a {subpoena}.','그는 소환장을 받았어요.','subpoena','C1','work',3,'subpoena court legal document'),
('w_work_C1_35','clawback','/ˈklɔːbæk/','noun','환수','The recovery of previously paid compensation.','Trigger a {clawback} clause.','환수 조항을 발동하세요.','clawback','C1','work',3,'clawback recover bonus finance')
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- WORDS — C2 (35개)
-- ============================================================
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_work_C2_01','securitization','/sɪˌkjʊərɪtaɪˈzeɪʃən/','noun','증권화','Converting assets into tradable securities.','{Securitization} spreads financial risk.','증권화는 금융 리스크를 분산시켜요.','Securitization','C2','work',4,'securitization finance securities'),
('w_work_C2_02','derivative','/dɪˈrɪvətɪv/','noun','파생상품','A financial instrument whose value depends on an underlying asset.','Trade {derivatives} cautiously.','파생상품은 신중하게 거래하세요.','derivatives','C2','work',4,'derivative finance option futures'),
('w_work_C2_03','amortization','/əˌmɔːrtɪˈzeɪʃən/','noun','감가상각·상환','The gradual write-off of an asset over time.','Review the {amortization} schedule.','감가상각 일정을 검토하세요.','amortization','C2','work',4,'amortization schedule finance accounting'),
('w_work_C2_04','subordination','/səˌbɔːrdɪˈneɪʃən/','noun','후순위 배치','The ranking of a debt claim below others.','The clause includes {subordination}.','조항에 후순위 배치가 포함돼요.','subordination','C2','work',4,'subordination debt priority finance'),
('w_work_C2_05','encumbrance','/ɪnˈkʌmbrəns/','noun','담보 채무 부담','A liability or claim attached to a property.','Disclose all {encumbrances} upfront.','모든 담보 채무 부담을 사전에 공개하세요.','encumbrances','C2','work',4,'encumbrance property legal claim'),
('w_work_C2_06','covenant','/ˈkʌvənənt/','noun','약정·서약','A binding agreement in a financial contract.','The loan has strict {covenants}.','대출에는 엄격한 약정이 있어요.','covenants','C2','work',4,'covenant agreement contract finance'),
('w_work_C2_07','prospectus','/prəˈspektəs/','noun','투자 설명서','A formal document disclosing investment details.','Read the full {prospectus}.','전체 투자 설명서를 읽으세요.','prospectus','C2','work',4,'prospectus investment document IPO'),
('w_work_C2_08','collateral','/kəˈlætərəl/','noun','담보물','An asset pledged to secure a loan.','Provide {collateral} for the loan.','대출을 위해 담보물을 제공하세요.','collateral','C2','work',4,'collateral asset loan security'),
('w_work_C2_09','divestiture','/daɪˈvestɪtʃər/','noun','자산 매각','The disposal of a business division or asset.','Plan the {divestiture} carefully.','자산 매각을 신중하게 계획하세요.','divestiture','C2','work',4,'divestiture sale asset spinoff'),
('w_work_C2_10','recapitalization','/ˌriːkəpɪtəlaɪˈzeɪʃən/','noun','자본 재편','Restructuring a company''s debt and equity mix.','Initiate a {recapitalization} plan.','자본 재편 계획을 시작하세요.','recapitalization','C2','work',4,'recapitalization finance debt equity'),
('w_work_C2_11','tranche','/trɑːnʃ/','noun','트란쉐·분할 자금','A portion of a financial deal released in stages.','Release the second {tranche}.','두 번째 트란쉐를 지급하세요.','tranche','C2','work',4,'tranche finance investment stage'),
('w_work_C2_12','hypothecation','/haɪˌpɒθɪˈkeɪʃən/','noun','질권 설정','Pledging an asset as collateral without transferring ownership.','Use {hypothecation} for the bond.','채권에 질권 설정을 사용하세요.','hypothecation','C2','work',4,'hypothecation pledge collateral finance'),
('w_work_C2_13','syndication','/ˌsɪndɪˈkeɪʃən/','noun','신디케이션·공동 융자','Combining multiple lenders to fund a single loan.','Arrange {syndication} for the deal.','거래를 위해 신디케이션을 준비하세요.','syndication','C2','work',4,'syndication loan lenders finance'),
('w_work_C2_14','EBITDA','/ɪˈbɪtdə/','noun','EBITDA (세전·이자·감가상각 전 이익)','Earnings before interest, taxes, depreciation and amortization.','The company''s {EBITDA} grew 15%.','회사의 EBITDA가 15% 성장했어요.','EBITDA','C2','work',4,'EBITDA earnings finance chart metric'),
('w_work_C2_15','indenture','/ɪnˈdentʃər/','noun','채권 계약서','A formal written contract between a bond issuer and holders.','Review the bond {indenture}.','채권 계약서를 검토하세요.','indenture','C2','work',4,'indenture bond contract legal'),
('w_work_C2_16','mezzanine','/ˌmezəˈniːn/','noun','메자닌 금융','A hybrid form of financing combining debt and equity.','Consider {mezzanine} financing.','메자닌 금융을 고려하세요.','mezzanine','C2','work',4,'mezzanine finance debt equity hybrid'),
('w_work_C2_17','haircut','/ˈheərkʌt/','noun','헤어컷·담보 가치 감소','A reduction applied to an asset''s value for collateral.','Apply a 20% {haircut}.','20% 헤어컷을 적용하세요.','haircut','C2','work',4,'haircut discount finance risk'),
('w_work_C2_18','sovereign debt','/ˈsɒvrɪn det/','noun phrase','국가 부채','Debt issued or guaranteed by a national government.','Monitor {sovereign debt} levels.','국가 부채 수준을 모니터링하세요.','sovereign debt','C2','work',4,'sovereign debt government bond country'),
('w_work_C2_19','leveraged buyout','/ˈlevərɪdʒd ˈbaɪaʊt/','noun phrase','차입 매수','Acquiring a company using borrowed funds.','Execute a {leveraged buyout}.','차입 매수를 실행하세요.','leveraged buyout','C2','work',4,'leveraged buyout LBO acquisition'),
('w_work_C2_20','credit default swap','/ˈkredɪt dɪˈfɔːlt swɒp/','noun phrase','신용 부도 스왑','A financial product that transfers credit exposure.','Hedge with a {credit default swap}.','신용 부도 스왑으로 헤지하세요.','credit default swap','C2','work',4,'credit default swap CDS finance'),
('w_work_C2_21','regulatory arbitrage','/ˌreɡjələtɔːri ˈɑːrbɪtrɪdʒ/','noun phrase','규제 차익 거래','Exploiting differences in regulation between jurisdictions.','Avoid {regulatory arbitrage}.','규제 차익 거래를 피하세요.','regulatory arbitrage','C2','work',4,'regulatory arbitrage law finance'),
('w_work_C2_22','mark-to-market','/mɑːrk tə ˈmɑːrkɪt/','adjective','시가 평가','Valuing assets at current market prices.','Apply {mark-to-market} accounting.','시가 평가 회계를 적용하세요.','mark-to-market','C2','work',4,'mark to market accounting valuation'),
('w_work_C2_23','off-balance sheet','/ɒf ˈbæləns ʃiːt/','adjective','부외 금융','Financing that does not appear on the balance sheet.','Disclose {off-balance sheet} items.','부외 금융 항목을 공시하세요.','off-balance sheet','C2','work',4,'off balance sheet accounting finance'),
('w_work_C2_24','perpetuity','/ˌpɜːrpɪˈtjuːɪti/','noun','영구 연금·무기한','A payment that continues indefinitely.','Value the firm using {perpetuity}.','영구 연금을 사용해 기업가치를 평가하세요.','perpetuity','C2','work',4,'perpetuity finance valuation forever'),
('w_work_C2_25','yield curve','/jiːld kɜːrv/','noun phrase','수익률 곡선','A graph showing interest rates across different maturities.','Analyze the {yield curve}.','수익률 곡선을 분석하세요.','yield curve','C2','work',4,'yield curve interest rate finance graph'),
('w_work_C2_26','basis point','/ˈbeɪsɪs pɔɪnt/','noun phrase','베이시스 포인트','One hundredth of a percentage point in finance.','Rates fell by 25 {basis points}.','금리가 25 베이시스 포인트 하락했어요.','basis points','C2','work',4,'basis points interest rate finance'),
('w_work_C2_27','quantum meruit','/ˌkwɒntəm ˈmɛrʊɪt/','noun','상당 보수 청구','A claim for payment for services rendered.','Sue under {quantum meruit}.','상당 보수 청구로 소송하세요.','quantum meruit','C2','work',4,'quantum meruit legal claim payment'),
('w_work_C2_28','force majeure','/ˌfɔːrs mæˈʒɜːr/','noun','불가항력','Unforeseeable events beyond a party''s control.','Invoke the {force majeure} clause.','불가항력 조항을 발동하세요.','force majeure','C2','work',4,'force majeure contract clause disaster'),
('w_work_C2_29','laches','/ˈleɪtʃɪz/','noun','권리 해태','The doctrine preventing a claim after unreasonable delay.','The defense raised {laches}.','피고가 권리 해태를 주장했어요.','laches','C2','work',4,'laches legal delay doctrine court'),
('w_work_C2_30','tortious interference','/ˈtɔːrʃəs ˌɪntəˈfɪərəns/','noun phrase','불법 방해','Intentional interference with another''s business.','File a {tortious interference} claim.','불법 방해 청구를 제기하세요.','tortious interference','C2','work',4,'tortious interference legal business'),
('w_work_C2_31','promissory note','/ˈprɒmɪsəri noʊt/','noun phrase','약속 어음','A written promise to pay a specified amount.','Sign the {promissory note}.','약속 어음에 서명하세요.','promissory note','C2','work',4,'promissory note payment finance document'),
('w_work_C2_32','interlocutory','/ˌɪntəˈlɒkjʊtəri/','adjective','중간의·임시의','Relating to an interim court order or ruling.','File an {interlocutory} appeal.','중간 항소를 제기하세요.','interlocutory','C2','work',4,'interlocutory court appeal legal'),
('w_work_C2_33','non-compete','/ˌnɒn kəmˈpiːt/','noun','경업 금지 조항','A clause preventing work for competitors after leaving.','Review the {non-compete} clause.','경업 금지 조항을 검토하세요.','non-compete','C2','work',4,'non compete clause contract legal'),
('w_work_C2_34','subrogation','/ˌsʌbrəˈɡeɪʃən/','noun','대위 변제','The substitution of one party for another in a legal claim.','The insurer claims {subrogation}.','보험사가 대위 변제를 주장해요.','subrogation','C2','work',4,'subrogation insurance legal claim'),
('w_work_C2_35','accretion','/əˈkriːʃən/','noun','증가·자산 가치 상승','Gradual increase in value of an asset over time.','Calculate {accretion} to par value.','액면가까지의 자산 가치 상승을 계산하세요.','accretion','C2','work',4,'accretion value finance growth')
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- PATTERNS (sentences) — A1 (7개) · 직업 소개
-- ============================================================
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_work_A1_01','What do you do for work?','무슨 일 하세요?','What do you do for work','"What do you do for work?"는 처음 만났을 때 직업을 묻는 가장 자연스러운 표현이에요.','직업 소개','A1','work','pattern',NULL,1),
('s_work_A1_02','I work at a company downtown.','저는 시내에 있는 회사에서 일해요.','I work at','I work at + 장소"로 간단하게 직장을 소개할 수 있어요.','직업 소개','A1','work','pattern',NULL,2),
('s_work_A1_03','My job starts at nine in the morning.','저는 아침 9시에 일을 시작해요.','starts at nine','시간 앞에 "at"을 사용해요. "in the morning"을 붙이면 더 명확해요.','출근 시간','A1','work','pattern',NULL,3),
('s_work_A1_04','I have a meeting this afternoon.','저는 오늘 오후에 회의가 있어요.','have a meeting','have a + 명사" 패턴으로 일정을 표현해요. "this afternoon" = 오늘 오후.','일정 표현','A1','work','pattern',NULL,4),
('s_work_A1_05','Can you send me an email about that?','그것에 대해 이메일을 보내주실 수 있어요?','Can you send me','Can you + 동사?" 패턴은 정중한 요청이에요. 비즈니스 영어에서 매우 유용해요.','요청하기','A1','work','pattern',NULL,5),
('s_work_A1_06','My boss is very easy to work with.','제 상사는 같이 일하기 매우 편해요.','easy to work with','"easy to work with"는 동료를 칭찬할 때 쓰는 자연스러운 표현이에요.','동료 소개','A1','work','pattern',NULL,6),
('s_work_A1_07','Let''s take a short break.','잠깐 휴식을 취해요.','take a short break','"take a break"는 "쉬다"라는 표현이에요. "short"를 넣으면 짧은 휴식임을 강조해요.','휴식 제안','A1','work','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_work_A2_07','I am working on the project report right now.','지금 프로젝트 보고서를 작업 중이에요.','working on','I am working on..."은 현재 진행 중인 업무를 설명할 때 써요.','업무 현황','A2','work','pattern',NULL,14)
ON CONFLICT (id) DO NOTHING;

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
('s_work_B1_07','The project is on track to meet the milestone by Q3.','프로젝트가 3분기까지 이정표를 달성할 궤도에 있어요.','on track to meet the milestone','"on track"은 "계획대로 진행 중"이에요. "milestone"과 함께 쓰면 프로젝트 보고에 매우 적합해요.','프로젝트 보고','B1','work','pattern',NULL,21)
ON CONFLICT (id) DO NOTHING;

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
('s_work_B2_07','We are benchmarking against top industry performers to close the gap.','격차를 줄이기 위해 업계 최고 기업들과 비교 기준을 삼고 있어요.','benchmarking against top industry performers','benchmarking against"는 경쟁사와 비교 분석함을 나타내요.','경쟁 분석','B2','work','pattern',NULL,28)
ON CONFLICT (id) DO NOTHING;

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
('s_work_C1_07','The governance framework must align with international best practices.','지배 구조 체계는 국제 모범 사례와 일치해야 해요.','governance framework must align with international best practices','align with best practices"는 글로벌 기준 준수를 표현할 때 써요.','기업 지배구조','C1','work','pattern',NULL,35)
ON CONFLICT (id) DO NOTHING;

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
('s_work_C2_07','The recapitalization plan involves converting mezzanine debt to equity at par.','자본 재편 계획은 메자닌 채무를 액면가로 주식으로 전환하는 것을 포함해요.','recapitalization plan involves converting mezzanine debt to equity at par','"at par"는 "액면가로"예요. "converting debt to equity"는 부채 탕감의 일반적인 방법이에요.','자본 구조 재편','C2','work','pattern',NULL,42)
ON CONFLICT (id) DO NOTHING;


-- ══════ SHOPPING ══════
-- EngCat · Shopping (쇼핑) seed data
-- Words  : 35 per CEFR level (A1–C2) = 210 total
-- Patterns: 7 per CEFR level (A1–C2) = 42 total
-- Generated : 2026-05-24

-- ============================================================
-- WORDS
-- ============================================================

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES

-- ────────────────────────────────────────────────────────────
-- A1 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_A1_01','buy','/baɪ/','verb','사다','To get something by paying money for it.','I want to {buy} new shoes.','새 신발을 사고 싶어요.','buy','A1','shopping',1,'shopping store buying purchase'),
('w_shopping_A1_02','sell','/sɛl/','verb','팔다','To exchange something for money.','They {sell} fresh fruit here.','여기서 신선한 과일을 팔아요.','sell','A1','shopping',1,'market vendor selling fruit'),
('w_shopping_A1_03','shop','/ʃɒp/','noun/verb','가게 / 쇼핑하다','A place where goods are sold; to visit shops to buy things.','Let''s go to the {shop} after lunch.','점심 식사 후에 가게에 가요.','shop','A1','shopping',1,'retail shop storefront'),
('w_shopping_A1_04','price','/praɪs/','noun','가격','The amount of money for which something is bought or sold.','What is the {price} of this bag?','이 가방의 가격이 얼마예요?','price','A1','shopping',1,'price tag label cost'),
('w_shopping_A1_05','cheap','/tʃiːp/','adjective','저렴한','Low in price; not expensive.','This jacket is very {cheap}.','이 재킷은 매우 저렴해요.','cheap','A1','shopping',1,'sale discount affordable'),
('w_shopping_A1_06','expensive','/ɪkˈspɛnsɪv/','adjective','비싼','Costing a lot of money.','That watch is too {expensive} for me.','저 시계는 저한테 너무 비싸요.','expensive','A1','shopping',1,'luxury expensive watch'),
('w_shopping_A1_07','money','/ˈmʌni/','noun','돈','Coins and paper notes used to buy things.','I don''t have enough {money} today.','오늘 돈이 충분하지 않아요.','money','A1','shopping',1,'cash coins money wallet'),
('w_shopping_A1_08','pay','/peɪ/','verb','지불하다','To give money in exchange for goods or a service.','Can I {pay} by card?','카드로 지불해도 될까요?','pay','A1','shopping',1,'payment card cashier'),
('w_shopping_A1_09','market','/ˈmɑːkɪt/','noun','시장','A place where goods are bought and sold.','The {market} opens at eight.','시장은 8시에 열려요.','market','A1','shopping',1,'outdoor market stalls vendors'),
('w_shopping_A1_10','store','/stɔːr/','noun','상점','A building where goods are sold to customers.','The {store} is closed on Sundays.','그 상점은 일요일에 문을 닫아요.','store','A1','shopping',1,'department store entrance'),
('w_shopping_A1_11','bag','/bæɡ/','noun','가방','A container made of paper, plastic, or leather used to carry things.','Can I have a {bag} for this, please?','이거 봉투에 넣어 주실 수 있어요?','bag','A1','shopping',1,'shopping bag paper bag'),
('w_shopping_A1_12','new','/njuː/','adjective','새로운','Recently made or bought; not used before.','I like your {new} coat.','새 코트 좋아 보여요.','new','A1','shopping',1,'new product unboxing'),
('w_shopping_A1_13','old','/oʊld/','adjective','오래된','Having existed for a long time; not new.','This is an {old} style.','이건 오래된 스타일이에요.','old','A1','shopping',1,'vintage old item secondhand'),
('w_shopping_A1_14','big','/bɪɡ/','adjective','큰','Large in size.','Do you have a {big} size?','큰 사이즈 있나요?','big','A1','shopping',1,'large size clothing'),
('w_shopping_A1_15','small','/smɔːl/','adjective','작은','Little in size.','This is too {small} for me.','이건 저한테 너무 작아요.','small','A1','shopping',1,'small item size comparison'),
('w_shopping_A1_16','open','/ˈoʊpən/','adjective','열린','Not closed; allowing entry.','Is the shop {open} now?','지금 가게 문 열었나요?','open','A1','shopping',1,'open sign store door'),
('w_shopping_A1_17','closed','/kloʊzd/','adjective','닫힌','Not open; not allowing entry.','The mall is {closed} today.','오늘 쇼핑몰이 닫혀 있어요.','closed','A1','shopping',1,'closed sign store'),
('w_shopping_A1_18','want','/wɒnt/','verb','원하다','To feel a desire for something.','I {want} to buy a gift.','선물을 사고 싶어요.','want','A1','shopping',1,'wish list shopping desire'),
('w_shopping_A1_19','need','/niːd/','verb','필요하다','To require something because it is essential.','I {need} new socks.','새 양말이 필요해요.','need','A1','shopping',1,'grocery list essentials'),
('w_shopping_A1_20','look','/lʊk/','verb','보다 / 찾다','To direct your eyes toward something; to search for.','I''m just {looking}, thank you.','그냥 구경하는 거예요, 감사해요.','looking','A1','shopping',1,'browsing window shopping'),
('w_shopping_A1_21','free','/friː/','adjective','무료의','Costing nothing.','Is delivery {free}?','배달은 무료인가요?','free','A1','shopping',1,'free shipping gift'),
('w_shopping_A1_22','gift','/ɡɪft/','noun','선물','Something given to someone without expecting payment.','I bought a {gift} for my friend.','친구에게 선물을 샀어요.','gift','A1','shopping',1,'wrapped gift present'),
('w_shopping_A1_23','total','/ˈtoʊtl/','noun','합계','The complete sum of all amounts.','What is the {total}?','합계가 얼마예요?','total','A1','shopping',1,'receipt total bill'),
('w_shopping_A1_24','cash','/kæʃ/','noun','현금','Money in the form of coins or paper notes.','Do you accept {cash}?','현금도 받나요?','cash','A1','shopping',1,'cash banknotes wallet'),
('w_shopping_A1_25','card','/kɑːrd/','noun','카드','A small plastic card used to pay for things.','I''ll pay by {card}.','카드로 낼게요.','card','A1','shopping',1,'credit card payment'),
('w_shopping_A1_26','help','/hɛlp/','verb','돕다','To make it easier for someone to do something.','Can you {help} me find a shirt?','셔츠 찾는 걸 도와주실 수 있어요?','help','A1','shopping',1,'shop assistant helping customer'),
('w_shopping_A1_27','find','/faɪnd/','verb','찾다','To discover or locate something.','Can you {find} size medium?','미디엄 사이즈 찾아줄 수 있어요?','find','A1','shopping',1,'searching store shelf'),
('w_shopping_A1_28','take','/teɪk/','verb','가져가다','To carry or accept something.','I''ll {take} this one.','이걸로 할게요.','take','A1','shopping',1,'picking item shelf'),
('w_shopping_A1_29','get','/ɡɛt/','verb','얻다 / 사다','To obtain or receive something.','Where can I {get} a map?','지도는 어디서 구할 수 있어요?','get','A1','shopping',1,'obtaining item store'),
('w_shopping_A1_30','give','/ɡɪv/','verb','주다','To hand something to someone.','Can you {give} me a receipt?','영수증을 주실 수 있어요?','give','A1','shopping',1,'handing receipt cashier'),
('w_shopping_A1_31','food','/fuːd/','noun','음식','Things you eat.','I''m looking for {food} items.','식품 코너를 찾고 있어요.','food','A1','shopping',1,'supermarket food aisle'),
('w_shopping_A1_32','clothes','/kloʊðz/','noun','옷','Things you wear on your body.','She loves buying new {clothes}.','그녀는 새 옷 사는 걸 좋아해요.','clothes','A1','shopping',1,'clothing rack fashion'),
('w_shopping_A1_33','book','/bʊk/','noun','책','A written or printed work.','I want to buy a {book}.','책을 사고 싶어요.','book','A1','shopping',1,'bookstore book shelf'),
('w_shopping_A1_34','color','/ˈkʌlər/','noun','색깔','A visual quality such as red, blue, or green.','Do you have this in another {color}?','다른 색깔로도 있나요?','color','A1','shopping',1,'colorful fabric swatches'),
('w_shopping_A1_35','number','/ˈnʌmbər/','noun','번호 / 숫자','A figure representing a quantity; also a shoe/size number.','What {number} is your shoe size?','신발 사이즈가 몇 번이에요?','number','A1','shopping',1,'size chart number label'),

-- ────────────────────────────────────────────────────────────
-- A2 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_A2_01','discount','/ˈdɪskaʊnt/','noun','할인','A reduction in the usual price of something.','Is there a {discount} for students?','학생 할인이 있나요?','discount','A2','shopping',2,'sale discount percent tag'),
('w_shopping_A2_02','sale','/seɪl/','noun','세일','A period when goods are sold at reduced prices.','Everything is on {sale} this weekend.','이번 주말에 모든 게 세일 중이에요.','sale','A2','shopping',2,'sale banner store'),
('w_shopping_A2_03','receipt','/rɪˈsiːt/','noun','영수증','A written acknowledgement of payment.','Please keep your {receipt}.','영수증을 보관해 주세요.','receipt','A2','shopping',2,'paper receipt cashier'),
('w_shopping_A2_04','size','/saɪz/','noun','사이즈','The measurement of how big or small something is.','Do you have this in my {size}?','제 사이즈로 있나요?','size','A2','shopping',2,'size label clothing tag'),
('w_shopping_A2_05','brand','/brænd/','noun','브랜드','A type of product made by a particular company.','What {brand} is this bag?','이 가방은 어느 브랜드예요?','brand','A2','shopping',2,'brand logo label'),
('w_shopping_A2_06','cashier','/kæˈʃɪər/','noun','계산원','A person who takes payments in a shop.','The {cashier} gave me the wrong change.','계산원이 잔돈을 잘못 줬어요.','cashier','A2','shopping',2,'cashier counter checkout'),
('w_shopping_A2_07','change','/tʃeɪndʒ/','noun','거스름돈','Money returned when you pay more than the cost.','Keep the {change}.','거스름돈은 가지세요.','change','A2','shopping',2,'coins change money'),
('w_shopping_A2_08','refund','/ˈriːfʌnd/','noun','환불','Money returned after returning a product.','I''d like a {refund}, please.','환불을 받고 싶어요.','refund','A2','shopping',2,'refund counter service desk'),
('w_shopping_A2_09','credit card','/ˈkrɛdɪt kɑːrd/','noun','신용카드','A card that lets you buy now and pay later.','Can I use a {credit card}?','신용카드 사용할 수 있나요?','credit card','A2','shopping',2,'credit card payment terminal'),
('w_shopping_A2_10','try on','/traɪ ɒn/','phrasal verb','입어보다','To put on clothing to see if it fits.','Can I {try on} this dress?','이 원피스 입어봐도 될까요?','try on','A2','shopping',2,'fitting room mirror clothes'),
('w_shopping_A2_11','fitting room','/ˈfɪtɪŋ ruːm/','noun','탈의실','A small room in a shop where you try on clothes.','Where is the {fitting room}?','탈의실이 어디예요?','fitting room','A2','shopping',2,'fitting room curtain mirror'),
('w_shopping_A2_12','queue','/kjuː/','noun','줄','A line of people waiting for something.','The {queue} is very long today.','오늘 줄이 정말 길어요.','queue','A2','shopping',2,'queue line checkout'),
('w_shopping_A2_13','trolley','/ˈtrɒli/','noun','카트','A large basket on wheels used in supermarkets.','I need a {trolley} for all these items.','이 물건들을 담을 카트가 필요해요.','trolley','A2','shopping',2,'shopping cart supermarket'),
('w_shopping_A2_14','basket','/ˈbɑːskɪt/','noun','장바구니','A container used for carrying shopping.','I only need a small {basket}.','작은 장바구니면 충분해요.','basket','A2','shopping',2,'shopping basket handle'),
('w_shopping_A2_15','aisle','/aɪl/','noun','통로','A passage between shelves in a shop.','Bread is in {aisle} three.','빵은 3번 통로에 있어요.','aisle','A2','shopping',2,'supermarket aisle shelf'),
('w_shopping_A2_16','shelf','/ʃɛlf/','noun','선반','A flat surface fixed to a wall for storing things.','The item is on the top {shelf}.','그 물건은 맨 위 선반에 있어요.','shelf','A2','shopping',2,'store shelf products'),
('w_shopping_A2_17','label','/ˈleɪbl/','noun','라벨','A piece of paper attached to an item with information.','Check the {label} for washing instructions.','세탁 방법은 라벨을 확인해 주세요.','label','A2','shopping',2,'clothing label tag'),
('w_shopping_A2_18','offer','/ˈɒfər/','noun','제안 / 특가','A price reduction or special deal.','This is a limited-time {offer}.','이건 기간 한정 특가 상품이에요.','offer','A2','shopping',2,'special offer promotion sign'),
('w_shopping_A2_19','exchange','/ɪksˈtʃeɪndʒ/','verb','교환하다','To return something and get a different item.','Can I {exchange} this for a larger size?','이걸 더 큰 사이즈로 교환할 수 있나요?','exchange','A2','shopping',2,'exchange return counter'),
('w_shopping_A2_20','popular','/ˈpɒpjʊlər/','adjective','인기 있는','Liked or enjoyed by many people.','This is our most {popular} product.','이게 저희 가장 인기 있는 상품이에요.','popular','A2','shopping',2,'bestseller tag popular item'),
('w_shopping_A2_21','quality','/ˈkwɒlɪti/','noun','품질','The standard of something as measured against others.','The {quality} of this fabric is excellent.','이 원단의 품질이 정말 좋아요.','quality','A2','shopping',2,'quality control fabric'),
('w_shopping_A2_22','choose','/tʃuːz/','verb','선택하다','To pick one from several options.','It''s hard to {choose} between these two.','이 둘 중에서 고르기가 어려워요.','choose','A2','shopping',2,'choosing between products'),
('w_shopping_A2_23','pay for','/peɪ fɔː/','phrasal verb','계산하다','To hand over money in exchange for something.','I''ll {pay for} dinner tonight.','오늘 저녁은 제가 낼게요.','pay for','A2','shopping',2,'paying bill restaurant'),
('w_shopping_A2_24','spend','/spɛnd/','verb','소비하다','To use money to buy something.','I always {spend} too much on clothes.','저는 항상 옷에 돈을 너무 많이 써요.','spend','A2','shopping',2,'spending money shopping'),
('w_shopping_A2_25','save','/seɪv/','verb','절약하다','To keep money instead of spending it.','I''m trying to {save} money this month.','이번 달에 돈을 절약하려고 해요.','save','A2','shopping',2,'piggy bank saving money'),
('w_shopping_A2_26','order','/ˈɔːrdər/','verb','주문하다','To request a product or service.','I''d like to {order} online.','온라인으로 주문하고 싶어요.','order','A2','shopping',2,'online order laptop'),
('w_shopping_A2_27','delivery','/dɪˈlɪvəri/','noun','배달 / 배송','The process of bringing goods to a buyer.','Free {delivery} on orders over fifty dollars.','50달러 이상 주문 시 무료 배송이에요.','delivery','A2','shopping',2,'delivery box parcel'),
('w_shopping_A2_28','wrap','/ræp/','verb','포장하다','To cover something with paper or material.','Could you {wrap} it as a gift?','선물 포장해 주실 수 있어요?','wrap','A2','shopping',2,'gift wrapping ribbon'),
('w_shopping_A2_29','warranty','/ˈwɒrənti/','noun','보증','A written guarantee on a product.','Does this come with a {warranty}?','이 제품에 보증이 포함되어 있나요?','warranty','A2','shopping',2,'warranty card electronics'),
('w_shopping_A2_30','return','/rɪˈtɜːrn/','verb','반품하다','To take a product back to the shop.','I need to {return} this jacket.','이 재킷을 반품해야 해요.','return','A2','shopping',2,'return counter bag'),
('w_shopping_A2_31','damaged','/ˈdæmɪdʒd/','adjective','손상된','Harmed or broken.','This item is {damaged}.','이 물건이 손상되어 있어요.','damaged','A2','shopping',2,'damaged product broken box'),
('w_shopping_A2_32','available','/əˈveɪləbl/','adjective','구매 가능한','In stock; ready to be bought or used.','Is this model {available} in blue?','이 모델 파란색으로 있나요?','available','A2','shopping',2,'in stock available sign'),
('w_shopping_A2_33','stock','/stɒk/','noun','재고','The goods available for sale.','We''re out of {stock} right now.','지금 재고가 없어요.','stock','A2','shopping',2,'out of stock empty shelf'),
('w_shopping_A2_34','member','/ˈmɛmbər/','noun','회원','A person who belongs to a club or loyalty programme.','Are you a {member} of our rewards club?','저희 포인트 클럽 회원이세요?','member','A2','shopping',2,'membership card rewards'),
('w_shopping_A2_35','point','/pɔɪnt/','noun','포인트','A unit in a reward scheme earned by buying things.','You''ve earned 200 {points} today.','오늘 200포인트 적립하셨어요.','point','A2','shopping',2,'loyalty points card app'),

-- ────────────────────────────────────────────────────────────
-- B1 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_B1_01','bargain','/ˈbɑːrɡɪn/','noun','흥정 / 특가품','Something bought at a low price; to negotiate a price.','That coat was a real {bargain}.','그 코트는 정말 특가품이었어요.','bargain','B1','shopping',3,'bargain deal sale price'),
('w_shopping_B1_02','checkout','/ˈtʃɛkaʊt/','noun','계산대','The place in a supermarket where you pay for goods.','Please go to {checkout} number five.','5번 계산대로 가주세요.','checkout','B1','shopping',3,'checkout counter cashier'),
('w_shopping_B1_03','browse','/braʊz/','verb','둘러보다','To look through items in a shop without a specific plan to buy.','I''m just {browsing} for now.','지금은 그냥 둘러보는 중이에요.','browsing','B1','shopping',3,'browsing store window shopping'),
('w_shopping_B1_04','wholesale','/ˈhoʊlseɪl/','adjective','도매의','Relating to selling goods in large quantities at low prices.','We buy goods at {wholesale} prices.','저희는 도매가로 물건을 구입해요.','wholesale','B1','shopping',3,'wholesale warehouse bulk'),
('w_shopping_B1_05','retail','/ˈriːteɪl/','noun','소매','The sale of goods directly to the public.','The {retail} price is higher than the wholesale price.','소매가가 도매가보다 높아요.','retail','B1','shopping',3,'retail store shopping mall'),
('w_shopping_B1_06','coupon','/ˈkuːpɒn/','noun','쿠폰','A voucher giving a discount on a product.','I have a {coupon} for ten percent off.','10% 할인 쿠폰이 있어요.','coupon','B1','shopping',3,'coupon discount voucher'),
('w_shopping_B1_07','loyalty','/ˈlɔɪəlti/','noun','충성도 (고객 충성)','Faithfulness to a brand or company, often rewarded by programmes.','Do you have a {loyalty} card?','포인트 카드 있으세요?','loyalty','B1','shopping',3,'loyalty card rewards programme'),
('w_shopping_B1_08','invoice','/ˈɪnvɔɪs/','noun','청구서 / 인보이스','A document listing goods sold and the amount owed.','Please send me the {invoice} by email.','이메일로 인보이스를 보내 주세요.','invoice','B1','shopping',3,'invoice document billing'),
('w_shopping_B1_09','vendor','/ˈvɛndər/','noun','판매자 / 노점상','A person or company that sells goods.','The street {vendor} sold fresh juice.','노점 판매자가 신선한 주스를 팔았어요.','vendor','B1','shopping',3,'street vendor stall market'),
('w_shopping_B1_10','negotiate','/nɪˈɡoʊʃieɪt/','verb','협상하다','To discuss terms in order to reach an agreement.','Can we {negotiate} the price?','가격을 협상할 수 있을까요?','negotiate','B1','shopping',3,'negotiation business deal'),
('w_shopping_B1_11','budget','/ˈbʌdʒɪt/','noun','예산','The amount of money available to spend.','I''m shopping on a tight {budget}.','빠듯한 예산으로 쇼핑하고 있어요.','budget','B1','shopping',3,'budget planning calculator'),
('w_shopping_B1_12','comparison','/kəmˈpærɪsən/','noun','비교','The act of looking at two or more things to judge similarities.','Price {comparison} apps save a lot of money.','가격 비교 앱으로 돈을 많이 아낄 수 있어요.','comparison','B1','shopping',3,'price comparison chart'),
('w_shopping_B1_13','purchase','/ˈpɜːrtʃəs/','noun/verb','구매 / 구매하다','The act of buying something; to buy.','Keep this as proof of {purchase}.','이걸 구매 증빙으로 보관하세요.','purchase','B1','shopping',3,'purchase receipt confirmation'),
('w_shopping_B1_14','transaction','/trænˈzækʃən/','noun','거래','An instance of buying or selling something.','The {transaction} was completed successfully.','거래가 성공적으로 완료됐어요.','transaction','B1','shopping',3,'transaction payment terminal'),
('w_shopping_B1_15','installment','/ɪnˈstɔːlmənt/','noun','할부','One of several payments made over time.','I''ll pay in twelve {installments}.','12개월 할부로 낼게요.','installment','B1','shopping',3,'installment plan payment'),
('w_shopping_B1_16','shipping','/ˈʃɪpɪŋ/','noun','배송 (비용)','The process of sending goods to a buyer; the cost of sending.','How much is the {shipping} fee?','배송비가 얼마예요?','shipping','B1','shopping',3,'shipping box delivery truck'),
('w_shopping_B1_17','tracking','/ˈtræk ɪŋ/','noun','배송 추적','Following the progress of a shipped order online.','I''m checking the {tracking} status.','배송 추적 상태를 확인하고 있어요.','tracking','B1','shopping',3,'tracking number parcel'),
('w_shopping_B1_18','subscription','/səbˈskrɪpʃən/','noun','구독 / 정기 결제','A regular payment for access to a service or product.','This is a monthly {subscription} box.','이건 월정기 구독 박스예요.','subscription','B1','shopping',3,'subscription box monthly service'),
('w_shopping_B1_19','bulk','/bʌlk/','noun','대량','A large quantity of something.','It''s cheaper to buy in {bulk}.','대량으로 사면 더 저렴해요.','bulk','B1','shopping',3,'bulk buy wholesale warehouse'),
('w_shopping_B1_20','second-hand','/ˌsɛkənd ˈhænd/','adjective','중고의','Previously owned by another person.','I found a {second-hand} camera for half the price.','반값에 중고 카메라를 구했어요.','second-hand','B1','shopping',3,'secondhand thrift store vintage'),
('w_shopping_B1_21','outlet','/ˈaʊtlɛt/','noun','아울렛','A shop selling surplus or discounted goods.','We drove to the {outlet} mall.','아울렛 쇼핑몰로 드라이브했어요.','outlet','B1','shopping',3,'outlet mall shopping'),
('w_shopping_B1_22','impulse','/ˈɪmpʌls/','noun','충동','A sudden desire to do something.','That was an {impulse} buy.','그건 충동구매였어요.','impulse','B1','shopping',3,'impulse buy checkout candy'),
('w_shopping_B1_23','complaint','/kəmˈpleɪnt/','noun','불만 / 항의','A statement that something is unsatisfactory.','I''d like to make a {complaint}.','불만 사항을 접수하고 싶어요.','complaint','B1','shopping',3,'complaint customer service'),
('w_shopping_B1_24','guarantee','/ˌɡærənˈtiː/','noun','보장 / 품질 보증','A formal promise that something will work or be fixed.','This product comes with a two-year {guarantee}.','이 제품은 2년 품질 보증이 있어요.','guarantee','B1','shopping',3,'guarantee certificate product'),
('w_shopping_B1_25','surplus','/ˈsɜːrpləs/','noun','잉여 / 남은 재고','An amount that is more than what is needed.','They sell {surplus} stock at reduced prices.','잉여 재고를 할인된 가격에 팔아요.','surplus','B1','shopping',3,'surplus stock clearance sale'),
('w_shopping_B1_26','clearance','/ˈklɪərəns/','noun','재고 정리 세일','A sale of remaining stock at low prices.','Everything in the {clearance} section is fifty percent off.','재고 정리 구역의 모든 상품이 50% 할인이에요.','clearance','B1','shopping',3,'clearance sale rack'),
('w_shopping_B1_27','merchant','/ˈmɜːrtʃənt/','noun','상인','A person who buys and sells goods.','The {merchant} offered a fair deal.','그 상인이 공정한 거래를 제안했어요.','merchant','B1','shopping',3,'merchant market stall trader'),
('w_shopping_B1_28','checkout process','/ˈtʃɛkaʊt ˈprəʊsɛs/','noun phrase','결제 과정','The steps involved in completing a purchase online or in-store.','The online {checkout process} is very simple.','온라인 결제 과정이 매우 간단해요.','checkout process','B1','shopping',3,'online checkout ecommerce'),
('w_shopping_B1_29','demand','/dɪˈmɑːnd/','noun','수요','The desire of consumers to purchase goods.','High {demand} caused the price to rise.','높은 수요로 가격이 올랐어요.','demand','B1','shopping',3,'demand supply economics'),
('w_shopping_B1_30','supply','/səˈplaɪ/','noun','공급','The amount of goods available for purchase.','The {supply} of masks ran low during the pandemic.','팬데믹 동안 마스크 공급이 부족했어요.','supply','B1','shopping',3,'supply chain warehouse'),
('w_shopping_B1_31','promotion','/prəˈmoʊʃən/','noun','판촉 / 프로모션','An activity to increase sales or awareness of a product.','We have a special {promotion} this week.','이번 주에 특별 프로모션이 있어요.','promotion','B1','shopping',3,'promotion sale advertisement'),
('w_shopping_B1_32','advertisement','/ˌædvərˈtaɪzmənt/','noun','광고','A notice promoting a product or service.','I saw an {advertisement} for this product.','이 제품 광고를 봤어요.','advertisement','B1','shopping',3,'advertisement poster billboard'),
('w_shopping_B1_33','consignment','/kənˈsaɪnmənt/','noun','위탁 판매','Goods sent to a retailer to sell on behalf of the supplier.','This boutique operates on a {consignment} basis.','이 부티크는 위탁 판매 방식으로 운영돼요.','consignment','B1','shopping',3,'consignment shop boutique'),
('w_shopping_B1_34','price tag','/praɪs tæɡ/','noun','가격표','A label attached to an item showing its price.','The {price tag} says it''s on sale.','가격표를 보니 세일 중이네요.','price tag','B1','shopping',3,'price tag label product'),
('w_shopping_B1_35','afterthought','/ˈɑːftərθɔːt/','noun','나중에 든 생각 / 부가품','Something added or considered after the main plan.','I bought the scarf as an {afterthought}.','스카프는 나중에 생각나서 샀어요.','afterthought','B1','shopping',3,'extra purchase addon item'),

-- ────────────────────────────────────────────────────────────
-- B2 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_B2_01','markup','/ˈmɑːrkʌp/','noun','마진 / 가격 인상','The amount added to the cost price to determine the selling price.','The {markup} on designer goods is often over 200%.','디자이너 상품의 마진은 흔히 200%가 넘어요.','markup','B2','shopping',4,'markup pricing profit margin'),
('w_shopping_B2_02','niche','/niːʃ/','adjective','틈새의','Relating to a small, specialised market segment.','They target a {niche} market of eco-conscious consumers.','친환경 소비자라는 틈새 시장을 공략해요.','niche','B2','shopping',4,'niche market specialty store'),
('w_shopping_B2_03','premium','/ˈpriːmiəm/','adjective','프리미엄의','Of higher quality and usually higher price.','This is a {premium} product line.','이건 프리미엄 제품 라인이에요.','premium','B2','shopping',4,'premium luxury product'),
('w_shopping_B2_04','authentic','/ɔːˈθɛntɪk/','adjective','정품의 / 진짜의','Genuine, not a copy or imitation.','Always check that the product is {authentic}.','제품이 정품인지 항상 확인하세요.','authentic','B2','shopping',4,'authentic certificate genuine'),
('w_shopping_B2_05','counterfeit','/ˈkaʊntərfɪt/','adjective','위조품의','Made to look like the real thing in order to deceive.','Be careful of {counterfeit} goods online.','온라인에서 위조품을 조심하세요.','counterfeit','B2','shopping',4,'counterfeit fake product'),
('w_shopping_B2_06','procurement','/prəˈkjʊərmənt/','noun','조달','The process of obtaining goods or services.','The company streamlined its {procurement} process.','회사가 조달 과정을 간소화했어요.','procurement','B2','shopping',4,'procurement supply chain'),
('w_shopping_B2_07','consumerism','/kənˈsjuːmərɪzəm/','noun','소비주의','The theory that increasing consumption is economically desirable.','Modern {consumerism} drives overproduction.','현대 소비주의가 과잉 생산을 초래해요.','consumerism','B2','shopping',4,'consumerism shopping mall crowd'),
('w_shopping_B2_08','impulse buying','/ˈɪmpʌls ˈbaɪɪŋ/','noun phrase','충동구매','Buying something without planning to do so.','{impulse buying} is triggered by clever store layouts.','매장 레이아웃이 충동구매를 유발해요.','impulse buying','B2','shopping',4,'impulse buy checkout display'),
('w_shopping_B2_09','price elasticity','/praɪs ˌɪlæˈstɪsɪti/','noun phrase','가격 탄력성','The degree to which demand changes in response to price changes.','{price elasticity} determines how much demand drops when prices rise.','가격 탄력성은 가격 상승 시 수요 감소 폭을 결정해요.','price elasticity','B2','shopping',4,'price elasticity chart economics'),
('w_shopping_B2_10','value for money','/ˈvæljuː fɔː ˈmʌni/','noun phrase','가성비','The extent to which something is worth what you pay for it.','This product offers great {value for money}.','이 제품은 가성비가 정말 좋아요.','value for money','B2','shopping',4,'value for money rating'),
('w_shopping_B2_11','comparison shopping','/kəmˈpærɪsən ˈʃɒpɪŋ/','noun phrase','비교 쇼핑','Checking prices across multiple stores before buying.','{comparison shopping} helps you find the best deal.','비교 쇼핑을 하면 최상의 거래를 찾을 수 있어요.','comparison shopping','B2','shopping',4,'price comparison website'),
('w_shopping_B2_12','upsell','/ˈʌpsɛl/','verb','추가 판매하다','To persuade a customer to buy something more expensive.','The salesperson tried to {upsell} me to a larger model.','영업 직원이 더 큰 모델을 사도록 유도했어요.','upsell','B2','shopping',4,'upsell upgrade salesperson'),
('w_shopping_B2_13','cross-sell','/ˈkrɒs sɛl/','verb','교차 판매하다','To sell an additional related product to an existing buyer.','The app {cross-sells} accessories with every device purchase.','앱이 기기 구매 시마다 액세서리를 교차 판매해요.','cross-sell','B2','shopping',4,'cross sell bundle deal'),
('w_shopping_B2_14','overcharge','/ˌoʊvərˈtʃɑːrdʒ/','verb','바가지 씌우다','To charge too high a price.','I think they {overcharged} me by ten dollars.','저한테 10달러 바가지를 씌운 것 같아요.','overcharged','B2','shopping',4,'overcharge bill mistake'),
('w_shopping_B2_15','rebate','/ˈriːbeɪt/','noun','리베이트 / 환급금','A partial refund to someone who has paid too much.','You''ll receive a {rebate} after submitting the form.','양식 제출 후 환급금을 받으실 거예요.','rebate','B2','shopping',4,'rebate check refund form'),
('w_shopping_B2_16','surcharge','/ˈsɜːrtʃɑːrdʒ/','noun','추가 요금','An extra charge added to the basic price.','There is a {surcharge} for weekend delivery.','주말 배송에는 추가 요금이 있어요.','surcharge','B2','shopping',4,'surcharge extra fee receipt'),
('w_shopping_B2_17','tariff','/ˈtærɪf/','noun','관세 / 요금표','A tax imposed on imported goods.','The new {tariff} has raised the price of electronics.','새 관세로 전자제품 가격이 올랐어요.','tariff','B2','shopping',4,'tariff customs border'),
('w_shopping_B2_18','consumer behaviour','/kənˈsjuːmər bɪˈheɪvjər/','noun phrase','소비자 행동','The actions and decisions of buyers in the marketplace.','Understanding {consumer behaviour} is key to marketing.','소비자 행동 이해가 마케팅의 핵심이에요.','consumer behaviour','B2','shopping',4,'consumer behaviour research'),
('w_shopping_B2_19','profit margin','/ˈprɒfɪt ˈmɑːrdʒɪn/','noun phrase','이익률','The percentage of revenue that is profit.','High {profit margins} depend on controlling costs.','높은 이익률은 비용 관리에 달려 있어요.','profit margin','B2','shopping',4,'profit margin chart business'),
('w_shopping_B2_20','brick-and-mortar','/ˌbrɪk ən ˈmɔːrtər/','adjective','오프라인 매장의','Relating to a physical shop, not online.','Many {brick-and-mortar} stores are struggling against online retailers.','많은 오프라인 매장들이 온라인 유통업체와의 경쟁으로 어려움을 겪고 있어요.','brick-and-mortar','B2','shopping',4,'physical store retail building'),
('w_shopping_B2_21','e-commerce','/ˈiːkɒmɜːrs/','noun','전자상거래','Buying and selling goods and services over the internet.','{e-commerce} sales have surged in recent years.','최근 몇 년간 전자상거래 매출이 급증했어요.','e-commerce','B2','shopping',4,'ecommerce online shopping laptop'),
('w_shopping_B2_22','supply chain','/səˈplaɪ tʃeɪn/','noun phrase','공급망','The network between a company and its suppliers to produce and distribute goods.','The pandemic disrupted global {supply chains}.','팬데믹이 글로벌 공급망을 교란했어요.','supply chain','B2','shopping',4,'supply chain logistics map'),
('w_shopping_B2_23','inventory','/ˈɪnvəntɔːri/','noun','재고 목록 / 재고','A complete list of goods held in stock.','We do a monthly {inventory} check.','매달 재고 점검을 해요.','inventory','B2','shopping',4,'inventory warehouse stock'),
('w_shopping_B2_24','seasonal','/ˈsiːzənl/','adjective','계절적인','Occurring at or relating to a particular time of year.','{seasonal} discounts are biggest in January.','계절 할인은 1월에 가장 커요.','seasonal','B2','shopping',4,'seasonal sale winter clearance'),
('w_shopping_B2_25','flagship','/ˈflæɡʃɪp/','noun','대표 / 기함 (매장)','The best or most important product or store of a brand.','The brand opened its {flagship} store in Seoul.','브랜드가 서울에 대표 매장을 열었어요.','flagship','B2','shopping',4,'flagship store luxury brand'),
('w_shopping_B2_26','currency','/ˈkʌrənsi/','noun','통화','A system of money used in a country.','The price changes depending on the {currency}.','통화에 따라 가격이 달라져요.','currency','B2','shopping',4,'currency exchange money'),
('w_shopping_B2_27','exchange rate','/ɪksˈtʃeɪndʒ reɪt/','noun phrase','환율','The value of one currency relative to another.','Check the {exchange rate} before shopping abroad.','해외 쇼핑 전에 환율을 확인하세요.','exchange rate','B2','shopping',4,'exchange rate board travel'),
('w_shopping_B2_28','loyalty programme','/ˈlɔɪəlti ˈprəʊɡræm/','noun phrase','고객 충성도 프로그램','A marketing scheme rewarding repeat customers.','Join our {loyalty programme} to earn cashback.','현금 적립을 위해 고객 충성도 프로그램에 가입하세요.','loyalty programme','B2','shopping',4,'loyalty programme card app'),
('w_shopping_B2_29','consumer rights','/kənˈsjuːmər raɪts/','noun phrase','소비자 권리','The rights that protect buyers from unfair business practices.','You should know your {consumer rights}.','소비자 권리를 알고 있어야 해요.','consumer rights','B2','shopping',4,'consumer rights protection law'),
('w_shopping_B2_30','product recall','/ˈprɒdʌkt rɪˈkɔːl/','noun phrase','제품 리콜','The process of taking back defective products from the market.','The company issued a {product recall} for safety reasons.','회사가 안전상의 이유로 제품 리콜을 실시했어요.','product recall','B2','shopping',4,'product recall announcement'),
('w_shopping_B2_31','sustainable','/səˈsteɪnəbl/','adjective','지속 가능한','Causing little or no damage to the environment.','I prefer {sustainable} fashion brands.','저는 지속 가능한 패션 브랜드를 선호해요.','sustainable','B2','shopping',4,'sustainable eco fashion'),
('w_shopping_B2_32','fast fashion','/fɑːst ˈfæʃən/','noun phrase','패스트 패션','Cheaply made clothes produced rapidly to follow trends.','{Fast fashion} creates enormous textile waste.','패스트 패션은 엄청난 섬유 폐기물을 만들어요.','fast fashion','B2','shopping',4,'fast fashion clothing pile'),
('w_shopping_B2_33','ethical shopping','/ˈɛθɪkl ˈʃɒpɪŋ/','noun phrase','윤리적 쇼핑','Buying goods that are produced in socially responsible ways.','{Ethical shopping} considers workers'' conditions and environmental impact.','윤리적 쇼핑은 노동자 환경과 생태적 영향을 고려해요.','ethical shopping','B2','shopping',4,'ethical trade fair fashion'),
('w_shopping_B2_34','price sensitive','/praɪs ˈsɛnsɪtɪv/','adjective','가격에 민감한','Strongly affected by changes in price.','Our customers are very {price sensitive}.','저희 고객들은 가격에 매우 민감해요.','price sensitive','B2','shopping',4,'price sensitive consumer chart'),
('w_shopping_B2_35','competitive pricing','/kəmˈpɛtɪtɪv ˈpraɪsɪŋ/','noun phrase','경쟁력 있는 가격 책정','Setting prices based on what competitors charge.','{Competitive pricing} keeps our market share high.','경쟁력 있는 가격 책정으로 시장 점유율을 유지해요.','competitive pricing','B2','shopping',4,'competitive pricing strategy chart'),

-- ────────────────────────────────────────────────────────────
-- C1 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_C1_01','arbitrage','/ˈɑːrbɪtrɑːʒ/','noun','차익거래','The practice of buying and selling to profit from a price difference.','He profits from currency {arbitrage}.','그는 환율 차익거래로 수익을 올려요.','arbitrage','C1','shopping',5,'arbitrage trade profit'),
('w_shopping_C1_02','liquidation','/ˌlɪkwɪˈdeɪʃən/','noun','청산 / 재고 처분','The process of closing a business and selling all its assets.','The company entered {liquidation} after filing for bankruptcy.','회사가 파산 신청 후 청산에 들어갔어요.','liquidation','C1','shopping',5,'liquidation sale clearance'),
('w_shopping_C1_03','franchise','/ˈfræntʃaɪz/','noun','프랜차이즈','A licence to operate a business using another company''s brand.','She opened a {franchise} of a popular coffee chain.','그녀는 인기 커피 체인의 프랜차이즈를 열었어요.','franchise','C1','shopping',5,'franchise business brand'),
('w_shopping_C1_04','monopoly','/məˈnɒpəli/','noun','독점','Exclusive control of supply of a product or service.','The government broke up the retail {monopoly}.','정부가 소매 독점을 해체했어요.','monopoly','C1','shopping',5,'monopoly market dominance'),
('w_shopping_C1_05','oligopoly','/ˌɒlɪˈɡɒpəli/','noun','과점','A market dominated by a small number of large sellers.','The smartphone market is essentially an {oligopoly}.','스마트폰 시장은 사실상 과점 구조예요.','oligopoly','C1','shopping',5,'oligopoly market few companies'),
('w_shopping_C1_06','bespoke','/bɪˈspoʊk/','adjective','맞춤 제작의','Made to order for a specific customer.','He ordered a {bespoke} suit from the tailor.','그는 재단사에게 맞춤 정장을 주문했어요.','bespoke','C1','shopping',5,'bespoke tailored suit custom'),
('w_shopping_C1_07','boutique','/buːˈtiːk/','noun','부티크','A small shop selling fashionable clothes or luxury goods.','She found a vintage dress in a tiny {boutique}.','그녀는 작은 부티크에서 빈티지 드레스를 발견했어요.','boutique','C1','shopping',5,'boutique fashion store luxury'),
('w_shopping_C1_08','artisan','/ˈɑːrtɪzən/','noun','장인','A skilled craftsman who makes goods by hand.','This bag is handmade by a local {artisan}.','이 가방은 지역 장인이 수작업으로 만든 거예요.','artisan','C1','shopping',5,'artisan craft handmade workshop'),
('w_shopping_C1_09','exclusive','/ɪkˈskluːsɪv/','adjective','독점적인 / 한정판의','Available only to particular people; luxury and restricted.','This is an {exclusive} limited edition release.','이건 한정판 단독 출시예요.','exclusive','C1','shopping',5,'exclusive limited edition luxury'),
('w_shopping_C1_10','provenance','/ˈprɒvənəns/','noun','원산지 / 출처','The place of origin or history of an item.','The {provenance} of this antique is well documented.','이 골동품의 출처가 잘 문서화되어 있어요.','provenance','C1','shopping',5,'provenance antique certificate'),
('w_shopping_C1_11','connoisseur','/ˌkɒnəˈsɜːr/','noun','감정가 / 전문가','An expert judge in matters of taste.','She is a {connoisseur} of Japanese ceramics.','그녀는 일본 도자기 감정가예요.','connoisseur','C1','shopping',5,'connoisseur expert tasting'),
('w_shopping_C1_12','valuation','/ˌvæljuˈeɪʃən/','noun','감정 평가','An estimate of the worth of something.','We need a professional {valuation} of the estate.','부동산의 전문적인 감정 평가가 필요해요.','valuation','C1','shopping',5,'valuation appraisal property'),
('w_shopping_C1_13','appraisal','/əˈpreɪzl/','noun','평가 / 감정','A formal assessment of the value of an item.','The jewellery store offered a free {appraisal}.','귀금속 가게에서 무료 감정을 제공했어요.','appraisal','C1','shopping',5,'appraisal jewelry value'),
('w_shopping_C1_14','price point','/praɪs pɔɪnt/','noun phrase','가격대','A specific price at which something is offered.','This product targets the mid-range {price point}.','이 제품은 중간 가격대를 겨냥하고 있어요.','price point','C1','shopping',5,'price point target market'),
('w_shopping_C1_15','margin compression','/ˈmɑːrdʒɪn kəmˈprɛʃən/','noun phrase','마진 압박','The reduction of the difference between the selling price and the cost.','{Margin compression} forces retailers to cut costs.','마진 압박으로 소매업체들이 비용을 절감해야 해요.','margin compression','C1','shopping',5,'margin squeeze profit decline'),
('w_shopping_C1_16','shelf life','/ʃɛlf laɪf/','noun phrase','유통 기한','The length of time a product remains usable.','Check the {shelf life} before purchasing perishables.','부패하기 쉬운 식품은 구매 전 유통 기한을 확인하세요.','shelf life','C1','shopping',5,'shelf life expiry date food'),
('w_shopping_C1_17','brand equity','/brænd ˈɛkwɪti/','noun phrase','브랜드 가치','The commercial value derived from consumer perception of a brand.','{Brand equity} allows premium pricing.','브랜드 가치는 프리미엄 가격 책정을 가능하게 해요.','brand equity','C1','shopping',5,'brand equity marketing'),
('w_shopping_C1_18','market penetration','/ˈmɑːrkɪt ˌpɛnɪˈtreɪʃən/','noun phrase','시장 침투','A strategy of selling more of an existing product in existing markets.','{Market penetration} pricing uses low prices to gain share.','시장 침투 가격 전략은 점유율을 높이기 위해 낮은 가격을 사용해요.','market penetration','C1','shopping',5,'market penetration strategy'),
('w_shopping_C1_19','acquisition cost','/ˌækwɪˈzɪʃən kɒst/','noun phrase','고객 획득 비용','The cost of gaining a new customer.','Reducing {acquisition cost} improves profitability.','고객 획득 비용을 줄이면 수익성이 개선돼요.','acquisition cost','C1','shopping',5,'customer acquisition marketing'),
('w_shopping_C1_20','price discrimination','/praɪs ˌdɪskrɪmɪˈneɪʃən/','noun phrase','가격 차별','Selling the same product at different prices to different customers.','{Price discrimination} is common in airline ticketing.','가격 차별은 항공권 판매에서 흔해요.','price discrimination','C1','shopping',5,'price discrimination airlines'),
('w_shopping_C1_21','vertically integrated','/ˌvɜːrtɪkli ˈɪntɪɡreɪtɪd/','adjective','수직 통합된','Describing a company that controls multiple stages of production and distribution.','Apple is {vertically integrated} from chip design to retail.','애플은 칩 설계부터 소매까지 수직 통합되어 있어요.','vertically integrated','C1','shopping',5,'vertical integration supply chain'),
('w_shopping_C1_22','disintermediation','/ˌdɪsɪntəˌmiːdiˈeɪʃən/','noun','중간상 제거','Removing intermediaries from a supply chain.','{Disintermediation} allows brands to sell directly to consumers.','중간상 제거로 브랜드가 소비자에게 직접 판매할 수 있어요.','disintermediation','C1','shopping',5,'direct to consumer brand'),
('w_shopping_C1_23','ancillary revenue','/ænˈsɪləri ˈrɛvənjuː/','noun phrase','부가 수익','Income from additional products or services beyond the main offering.','Airlines rely heavily on {ancillary revenue} from baggage fees.','항공사는 수하물 요금 같은 부가 수익에 크게 의존해요.','ancillary revenue','C1','shopping',5,'ancillary revenue airline fees'),
('w_shopping_C1_24','market segmentation','/ˈmɑːrkɪt ˌsɛɡmɛnˈteɪʃən/','noun phrase','시장 세분화','Dividing consumers into groups based on shared characteristics.','{Market segmentation} helps tailor marketing messages.','시장 세분화는 마케팅 메시지를 맞춤화하는 데 도움이 돼요.','market segmentation','C1','shopping',5,'market segmentation demographics'),
('w_shopping_C1_25','loss leader','/lɒs ˈliːdər/','noun phrase','미끼 상품','A product sold at a loss to attract customers who then buy other items.','Supermarkets use milk as a {loss leader}.','슈퍼마켓은 우유를 미끼 상품으로 활용해요.','loss leader','C1','shopping',5,'loss leader grocery sale'),
('w_shopping_C1_26','dynamic pricing','/daɪˈnæmɪk ˈpraɪsɪŋ/','noun phrase','동적 가격 책정','Adjusting prices in real time based on demand and other factors.','{Dynamic pricing} allows airlines to maximise revenue.','동적 가격 책정으로 항공사가 수익을 극대화해요.','dynamic pricing','C1','shopping',5,'dynamic pricing surge algorithm'),
('w_shopping_C1_27','bundle pricing','/ˈbʌndl ˈpraɪsɪŋ/','noun phrase','묶음 가격 책정','Selling multiple products together at a combined price.','{Bundle pricing} increases perceived value.','묶음 가격 책정은 체감 가치를 높여요.','bundle pricing','C1','shopping',5,'bundle deal products package'),
('w_shopping_C1_28','anchor pricing','/ˈæŋkər ˈpraɪsɪŋ/','noun phrase','앵커 가격 전략','Presenting a higher price first to make a lower price seem cheaper.','{Anchor pricing} influences how customers perceive value.','앵커 가격 전략은 고객이 가치를 인식하는 방식에 영향을 줘요.','anchor pricing','C1','shopping',5,'anchor price tag sale'),
('w_shopping_C1_29','shrinkage','/ˈʃrɪŋkɪdʒ/','noun','재고 손실','Retail inventory loss due to theft, damage, or error.','{Shrinkage} costs retailers billions each year.','재고 손실은 소매업체에 매년 수십억의 비용을 발생시켜요.','shrinkage','C1','shopping',5,'shrinkage theft store loss'),
('w_shopping_C1_30','grey market','/ɡreɪ ˈmɑːrkɪt/','noun phrase','회색 시장','The trade of goods through unofficial channels.','He bought the phone through the {grey market}.','그는 회색 시장을 통해 폰을 구입했어요.','grey market','C1','shopping',5,'grey market parallel import'),
('w_shopping_C1_31','price floor','/praɪs flɔːr/','noun phrase','가격 하한선','The minimum price allowed by law or regulation.','The government set a {price floor} for wheat.','정부가 밀에 대한 가격 하한선을 설정했어요.','price floor','C1','shopping',5,'price floor minimum wage'),
('w_shopping_C1_32','price ceiling','/praɪs ˈsiːlɪŋ/','noun phrase','가격 상한선','The maximum price set by law for a product.','Rent control is a type of {price ceiling}.','임대료 통제는 가격 상한선의 한 유형이에요.','price ceiling','C1','shopping',5,'price ceiling regulation'),
('w_shopping_C1_33','customer lifetime value','/ˈkʌstəmər ˈlaɪftaɪm ˈvæljuː/','noun phrase','고객 생애 가치','The total revenue a business can expect from a single customer.','Increasing {customer lifetime value} is a core business goal.','고객 생애 가치를 높이는 것이 핵심 사업 목표예요.','customer lifetime value','C1','shopping',5,'customer value analytics'),
('w_shopping_C1_34','omnichannel','/ˈɒmnɪˌtʃænl/','adjective','옴니채널의','Using all available channels of retail to give customers a seamless experience.','The brand offers an {omnichannel} shopping experience.','브랜드가 옴니채널 쇼핑 경험을 제공해요.','omnichannel','C1','shopping',5,'omnichannel retail digital store'),
('w_shopping_C1_35','stockout','/ˈstɒkaʊt/','noun','품절 / 재고 소진','A situation where a retailer runs out of a product.','Frequent {stockouts} damage brand reputation.','잦은 품절은 브랜드 평판을 손상시켜요.','stockout','C1','shopping',5,'stockout empty shelf sold out'),

-- ────────────────────────────────────────────────────────────
-- C2 (35 words)
-- ────────────────────────────────────────────────────────────
('w_shopping_C2_01','commodification','/kəˌmɒdɪfɪˈkeɪʃən/','noun','상품화','The transformation of something into a commercial product.','{Commodification} of personal data is a modern concern.','개인 데이터의 상품화는 현대의 주요 우려 사항이에요.','commodification','C2','shopping',6,'commodification data digital'),
('w_shopping_C2_02','mercantilism','/ˈmɜːrkəntɪlɪzəm/','noun','중상주의','An economic theory holding that wealth is maximised by exporting more than importing.','{Mercantilism} shaped colonial trade policies.','중상주의가 식민지 무역 정책을 형성했어요.','mercantilism','C2','shopping',6,'mercantilism trade history'),
('w_shopping_C2_03','arbitrageur','/ˌɑːrbɪtrɑːˈʒɜːr/','noun','차익거래자','A person who profits from price differences across markets.','The {arbitrageur} exploited exchange rate discrepancies.','차익거래자가 환율 차이를 이용했어요.','arbitrageur','C2','shopping',6,'arbitrageur trader finance'),
('w_shopping_C2_04','conglomerate','/kənˈɡlɒmərɪt/','noun','대기업 (복합 기업)','A corporation owning a variety of businesses in different sectors.','The retail {conglomerate} operates in twelve countries.','그 유통 대기업은 12개국에서 운영돼요.','conglomerate','C2','shopping',6,'conglomerate corporation multinational'),
('w_shopping_C2_05','cartel','/kɑːrˈtɛl/','noun','카르텔','An association of businesses that agree to fix prices.','The authorities broke up the oil-price {cartel}.','당국이 석유 가격 카르텔을 해체했어요.','cartel','C2','shopping',6,'cartel monopoly price fixing'),
('w_shopping_C2_06','monopsony','/mɒˈnɒpsəni/','noun','수요 독점 (단일 구매자 시장)','A market where there is only one major buyer.','A large retailer can act as a {monopsony} for local suppliers.','대형 소매업체는 지역 공급업체에 대해 수요 독점처럼 행동할 수 있어요.','monopsony','C2','shopping',6,'monopsony market power buyer'),
('w_shopping_C2_07','depreciation','/dɪˌpriːʃiˈeɪʃən/','noun','감가상각','The reduction in value of an asset over time.','Electronics suffer rapid {depreciation}.','전자제품은 빠른 감가상각을 겪어요.','depreciation','C2','shopping',6,'depreciation asset value chart'),
('w_shopping_C2_08','amortization','/əˌmɔːrtɪˈzeɪʃən/','noun','상각 / 분할 상환','The gradual writing off of an asset''s value.','{Amortization} spreads costs over the useful life of an asset.','상각은 자산의 내용 연수에 걸쳐 비용을 배분해요.','amortization','C2','shopping',6,'amortization schedule finance'),
('w_shopping_C2_09','asset','/ˈæsɛt/','noun','자산','A resource owned by a business or individual with economic value.','Brand recognition is an intangible {asset}.','브랜드 인지도는 무형 자산이에요.','asset','C2','shopping',6,'asset balance sheet business'),
('w_shopping_C2_10','liability','/laɪəˈbɪlɪti/','noun','부채 / 법적 책임','A debt or legal obligation owed by a business or individual.','Excess debt is a serious {liability}.','과도한 부채는 심각한 부담이에요.','liability','C2','shopping',6,'liability debt balance sheet'),
('w_shopping_C2_11','oligopsony','/ˌɒlɪˈɡɒpsəni/','noun','소수 구매자 과점','A market in which a small number of buyers control demand.','The fashion industry resembles an {oligopsony} with a few powerful retailers.','패션 업계는 소수의 강력한 소매업체가 지배하는 소수 구매자 과점과 유사해요.','oligopsony','C2','shopping',6,'oligopsony market economics'),
('w_shopping_C2_12','externality','/ˌɛkstɜːrˈnælɪti/','noun','외부 효과','A cost or benefit affecting parties not involved in a transaction.','Pollution from production is a negative {externality}.','생산에서 발생하는 오염은 부정적 외부 효과예요.','externality','C2','shopping',6,'externality pollution economics'),
('w_shopping_C2_13','price gouging','/praɪs ˈɡaʊdʒɪŋ/','noun phrase','폭리 (부당 가격 인상)','Charging excessively high prices during an emergency.','{Price gouging} for medical supplies during a crisis is illegal.','위기 상황에서 의료용품에 폭리를 취하는 건 불법이에요.','price gouging','C2','shopping',6,'price gouging disaster supply'),
('w_shopping_C2_14','regulatory arbitrage','/ˈrɛɡjʊlətɔːri ˈɑːrbɪtrɑːʒ/','noun phrase','규제 차익거래','Taking advantage of differences in regulations between jurisdictions.','{Regulatory arbitrage} allows firms to circumvent local laws.','규제 차익거래로 기업이 현지 법규를 우회할 수 있어요.','regulatory arbitrage','C2','shopping',6,'regulatory arbitrage law finance'),
('w_shopping_C2_15','planned obsolescence','/plænd ˌɒbsəˈlɛsns/','noun phrase','계획적 노후화','Designing products to become obsolete quickly to encourage repurchasing.','{Planned obsolescence} drives consumer electronics sales.','계획적 노후화가 소비자 전자제품 판매를 촉진해요.','planned obsolescence','C2','shopping',6,'planned obsolescence electronics'),
('w_shopping_C2_16','conspicuous consumption','/kənˈspɪkjuəs kənˈsʌmpʃən/','noun phrase','과시적 소비','Buying expensive things to display wealth or status.','{Conspicuous consumption} is central to luxury brand strategy.','과시적 소비는 명품 브랜드 전략의 핵심이에요.','conspicuous consumption','C2','shopping',6,'conspicuous consumption luxury status'),
('w_shopping_C2_17','veblen good','/ˈvɛblən ɡʊd/','noun phrase','베블런 재화','A product for which demand increases as price rises, due to its status symbol.','Luxury handbags are classic {veblen goods}.','명품 핸드백은 전형적인 베블런 재화예요.','veblen good','C2','shopping',6,'veblen good luxury demand'),
('w_shopping_C2_18','moral hazard','/ˈmɒrəl ˈhæzərd/','noun phrase','도덕적 해이','A situation where someone takes risks because others bear the cost.','{Moral hazard} arises when buyers are insured against loss.','구매자가 손실에 대해 보험에 가입되어 있을 때 도덕적 해이가 발생해요.','moral hazard','C2','shopping',6,'moral hazard risk insurance'),
('w_shopping_C2_19','asymmetric information','/eɪˌsɪmɪtrɪk ˌɪnfəˈmeɪʃən/','noun phrase','정보 비대칭','A situation where one party in a transaction has more information than the other.','{Asymmetric information} can lead to market failure.','정보 비대칭은 시장 실패로 이어질 수 있어요.','asymmetric information','C2','shopping',6,'information asymmetry economics'),
('w_shopping_C2_20','predatory pricing','/ˈprɛdətɔːri ˈpraɪsɪŋ/','noun phrase','약탈적 가격 책정','Setting prices very low to drive competitors out of the market.','{Predatory pricing} by dominant firms is often illegal.','지배적 기업의 약탈적 가격 책정은 종종 불법이에요.','predatory pricing','C2','shopping',6,'predatory pricing competition law'),
('w_shopping_C2_21','transfer pricing','/ˈtrænsfɜːr ˈpraɪsɪŋ/','noun phrase','이전 가격 책정','Setting prices for transactions between related business entities.','{Transfer pricing} is used to shift profits to lower-tax jurisdictions.','이전 가격 책정은 이익을 세금이 낮은 지역으로 이전하는 데 사용돼요.','transfer pricing','C2','shopping',6,'transfer pricing tax corporate'),
('w_shopping_C2_22','demand curve','/dɪˈmɑːnd kɜːrv/','noun phrase','수요 곡선','A graph showing the relationship between price and quantity demanded.','The {demand curve} shifts right when consumer income rises.','소비자 소득이 증가하면 수요 곡선이 오른쪽으로 이동해요.','demand curve','C2','shopping',6,'demand curve economics graph'),
('w_shopping_C2_23','deadweight loss','/ˈdɛdweɪt lɒs/','noun phrase','사중손실','The loss of economic efficiency due to market distortion.','{Deadweight loss} occurs when prices are above the competitive equilibrium.','가격이 경쟁 균형보다 높을 때 사중손실이 발생해요.','deadweight loss','C2','shopping',6,'deadweight loss economics chart'),
('w_shopping_C2_24','liquidity','/lɪˈkwɪdɪti/','noun','유동성','The availability of liquid assets to a market or company.','High {liquidity} allows quick asset conversion to cash.','높은 유동성은 자산을 현금으로 빠르게 전환할 수 있게 해요.','liquidity','C2','shopping',6,'liquidity cash flow finance'),
('w_shopping_C2_25','solvency','/ˈsɒlvənsi/','noun','지급 능력','The ability of a business to meet its long-term financial obligations.','Maintaining {solvency} is critical for long-term business survival.','지급 능력 유지는 장기적 사업 생존에 핵심이에요.','solvency','C2','shopping',6,'solvency finance balance sheet'),
('w_shopping_C2_26','net present value','/nɛt ˈprɛznt ˈvæljuː/','noun phrase','순현재가치','The present value of future cash flows minus the initial investment.','{Net present value} guides investment decisions.','순현재가치는 투자 결정을 안내해요.','net present value','C2','shopping',6,'NPV finance investment'),
('w_shopping_C2_27','capital expenditure','/ˈkæpɪtl ɪkˈspɛndɪtʃər/','noun phrase','자본 지출','Money spent on acquiring or upgrading long-term assets.','{Capital expenditure} in new stores improves customer experience.','신규 매장의 자본 지출이 고객 경험을 개선해요.','capital expenditure','C2','shopping',6,'capital expenditure investment business'),
('w_shopping_C2_28','venture capital','/ˈvɛntʃər ˈkæpɪtl/','noun phrase','벤처 캐피탈','Investment provided to start-ups and small businesses with high growth potential.','{Venture capital} fuelled the rise of e-commerce startups.','벤처 캐피탈이 전자상거래 스타트업의 성장을 촉진했어요.','venture capital','C2','shopping',6,'venture capital startup funding'),
('w_shopping_C2_29','due diligence','/djuː ˈdɪlɪdʒəns/','noun phrase','실사 (사전 조사)','Thorough research before signing a business deal.','Conduct full {due diligence} before acquiring a supplier.','공급업체 인수 전 완전한 실사를 수행하세요.','due diligence','C2','shopping',6,'due diligence audit business'),
('w_shopping_C2_30','intellectual property','/ˌɪntəˈlɛktʃuəl ˈprɒpərti/','noun phrase','지식재산권','Creations of the mind protected by law, such as brands and designs.','{Intellectual property} infringement is rampant in fast fashion.','패스트 패션에서 지식재산권 침해가 만연해요.','intellectual property','C2','shopping',6,'intellectual property trademark patent'),
('w_shopping_C2_31','economies of scale','/ɪˈkɒnəmɪz əv skeɪl/','noun phrase','규모의 경제','Cost advantages gained by increased levels of production.','{Economies of scale} allow supermarkets to offer lower prices.','규모의 경제가 슈퍼마켓이 더 낮은 가격을 제공하게 해줘요.','economies of scale','C2','shopping',6,'economies of scale production cost'),
('w_shopping_C2_32','diseconomies of scale','/dɪsɪˈkɒnəmɪz əv skeɪl/','noun phrase','규모의 비경제','The cost disadvantages that arise with increasing scale of production.','{Diseconomies of scale} arise when organisations grow too large.','조직이 너무 커지면 규모의 비경제가 발생해요.','diseconomies of scale','C2','shopping',6,'diseconomies scale management'),
('w_shopping_C2_33','gig economy','/ɡɪɡ ɪˈkɒnəmi/','noun phrase','긱 경제','An economy characterised by short-term contracts rather than permanent jobs.','Many delivery workers are part of the {gig economy}.','많은 배달 종사자가 긱 경제의 일원이에요.','gig economy','C2','shopping',6,'gig economy freelance delivery'),
('w_shopping_C2_34','trade surplus','/treɪd ˈsɜːrpləs/','noun phrase','무역 흑자','When a country exports more than it imports.','South Korea has maintained a {trade surplus} for decades.','한국은 수십 년간 무역 흑자를 유지해왔어요.','trade surplus','C2','shopping',6,'trade surplus export import'),
('w_shopping_C2_35','trade deficit','/treɪd ˈdɛfɪsɪt/','noun phrase','무역 적자','When a country imports more than it exports.','A growing {trade deficit} can weaken a national currency.','무역 적자가 증가하면 자국 통화가 약해질 수 있어요.','trade deficit','C2','shopping',6,'trade deficit import economy')
ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SENTENCES (PATTERNS)
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
('s_shopping_A1_07','Where is the checkout?','계산대가 어디예요?','Where is the checkout','"checkout"은 대형마트의 계산대, "cash register"는 소규모 매장에서도 쓰여요.','위치 문의','A1','shopping','pattern',NULL,7),

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
('s_shopping_C2_07','As a monopsony buyer, we have significant leverage, but exercising it aggressively risks triggering predatory pricing accusations and antitrust investigations.','수요 독점 구매자로서 우리는 상당한 협상력을 갖지만, 이를 공격적으로 행사하면 약탈적 가격 책정 혐의와 독점금지 조사를 유발할 위험이 있습니다.','monopsony / predatory pricing / antitrust','독점적 구매력의 법적 리스크를 논의하는 최고급 법경제학 표현이에요.','독점금지 리스크 논의','C2','shopping','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;


-- ══════ TRANSPORT ══════
-- EngCat — Transport (교통) 단어 210개 + 패턴 42개
-- CEFR A1~C2, 35 words × 6 levels, 7 patterns × 6 levels
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (35개)
-- 테마: bus, taxi, train, car, walk, bike, road, stop, ticket, ride
-- ══════════════════════════════════════

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_transport_A1_01','bus','/bʌs/','noun','버스','A large road vehicle that carries passengers along a fixed route.','I take the {bus} to school every morning.','저는 매일 아침 버스를 타고 학교에 가요.','bus','A1','transport',1,'bus public transport city street'),
('w_transport_A1_02','taxi','/ˈtæksi/','noun','택시','A car with a driver that you pay to take you somewhere.','Let''s take a {taxi} to the hotel.','호텔까지 택시를 타고 가요.','taxi','A1','transport',1,'taxi cab city yellow car'),
('w_transport_A1_03','train','/treɪn/','noun','기차','A vehicle that travels along rails and carries passengers.','The {train} to Seoul leaves at nine.','서울행 기차는 9시에 출발해요.','train','A1','transport',1,'train railway station platform'),
('w_transport_A1_04','car','/kɑːr/','noun','자동차','A road vehicle with an engine, four wheels, and seats for passengers.','My dad drives a red {car}.','아빠는 빨간 자동차를 운전해요.','car','A1','transport',1,'car road drive vehicle'),
('w_transport_A1_05','walk','/wɔːk/','verb','걷다','To move on foot at a normal speed.','I usually {walk} to the park on weekends.','저는 주말에 보통 걸어서 공원에 가요.','walk','A1','transport',1,'walk pedestrian footpath park'),
('w_transport_A1_06','bike','/baɪk/','noun','자전거','A two-wheeled vehicle that you ride by pushing pedals.','She rides her {bike} to work.','그녀는 자전거를 타고 출근해요.','bike','A1','transport',1,'bike bicycle cycling path'),
('w_transport_A1_07','road','/roʊd/','noun','도로','A wide path for vehicles to travel along.','The {road} is very busy in the morning.','그 도로는 아침에 매우 혼잡해요.','road','A1','transport',1,'road street asphalt traffic'),
('w_transport_A1_08','stop','/stɒp/','noun','정류장','A place where a bus or train regularly stops.','Get off at the next {stop}.','다음 정류장에서 내리세요.','stop','A1','transport',1,'bus stop sign street waiting'),
('w_transport_A1_09','ticket','/ˈtɪkɪt/','noun','표, 티켓','A piece of paper that shows you have paid to travel or enter somewhere.','Please buy your {ticket} before boarding.','승차 전에 표를 구매해 주세요.','ticket','A1','transport',1,'ticket booth train metro'),
('w_transport_A1_10','ride','/raɪd/','verb','타다','To sit on a vehicle and travel in or on it.','Can you {ride} a bicycle?','자전거를 탈 줄 알아요?','ride','A1','transport',1,'ride bicycle cycling outdoor'),
('w_transport_A1_11','go','/ɡoʊ/','verb','가다','To move or travel to a place.','How do you {go} to school?','학교에 어떻게 가요?','go','A1','transport',1,'go walk commute city'),
('w_transport_A1_12','come','/kʌm/','verb','오다','To move toward the speaker or a specified place.','How did you {come} here today?','오늘 여기 어떻게 오셨어요?','come','A1','transport',1,'come arrive person walking'),
('w_transport_A1_13','near','/nɪr/','adjective','가까운','Located a short distance away.','Is the station {near} here?','역이 여기서 가까운가요?','near','A1','transport',1,'near close map location'),
('w_transport_A1_14','far','/fɑːr/','adjective','먼','Located at a great distance.','The airport is quite {far} from downtown.','공항은 시내에서 꽤 멀어요.','far','A1','transport',1,'far distance road horizon'),
('w_transport_A1_15','left','/lɛft/','noun','왼쪽','The direction toward the west when facing north.','Turn {left} at the traffic light.','신호등에서 왼쪽으로 도세요.','left','A1','transport',1,'left direction arrow street'),
('w_transport_A1_16','right','/raɪt/','noun','오른쪽','The direction toward the east when facing north.','Turn {right} at the corner.','모퉁이에서 오른쪽으로 도세요.','right','A1','transport',1,'right direction arrow corner'),
('w_transport_A1_17','straight','/streɪt/','adverb','직진으로','In a direct line without turning.','Go {straight} for two blocks.','두 블록 직진해 주세요.','straight','A1','transport',1,'straight ahead road direction'),
('w_transport_A1_18','map','/mæp/','noun','지도','A diagram of a place showing roads, features, and points of interest.','Can I see your {map}?','지도 좀 볼 수 있나요?','map','A1','transport',1,'map navigation directions paper'),
('w_transport_A1_19','station','/ˈsteɪʃən/','noun','역','A place where trains or buses stop for passengers.','Which {station} should I get off at?','어느 역에서 내려야 하나요?','station','A1','transport',1,'train station building platform'),
('w_transport_A1_20','airport','/ˈeərpɔːrt/','noun','공항','A place where aircraft take off and land.','Let''s meet at the {airport} entrance.','공항 입구에서 만나요.','airport','A1','transport',1,'airport terminal planes sky'),
('w_transport_A1_21','boat','/boʊt/','noun','배','A small vessel for traveling on water.','We took a {boat} across the lake.','우리는 배를 타고 호수를 건넜어요.','boat','A1','transport',1,'boat lake water vessel'),
('w_transport_A1_22','plane','/pleɪn/','noun','비행기','A vehicle with wings and engines that flies through the air.','My first {plane} ride was exciting.','첫 비행기 탑승이 정말 설렜어요.','plane','A1','transport',1,'airplane sky clouds flight'),
('w_transport_A1_23','bridge','/brɪdʒ/','noun','다리','A structure built over water or a road to allow people to cross.','Drive over the {bridge} and turn right.','다리를 건넌 후 오른쪽으로 도세요.','bridge','A1','transport',1,'bridge river city crossing'),
('w_transport_A1_24','street','/striːt/','noun','거리, 길','A public road in a city or town.','What {street} do you live on?','어느 거리에 살아요?','street','A1','transport',1,'street city road urban'),
('w_transport_A1_25','corner','/ˈkɔːrnər/','noun','모퉁이','The place where two roads or edges meet.','Wait at the {corner} for me.','모퉁이에서 기다려 주세요.','corner','A1','transport',1,'corner street intersection road'),
('w_transport_A1_26','slow','/sloʊ/','adjective','느린','Not moving quickly.','The bus is very {slow} today.','오늘 버스가 매우 느려요.','slow','A1','transport',2,'slow traffic car street'),
('w_transport_A1_27','fast','/fæst/','adjective','빠른','Moving or able to move quickly.','Take the express — it''s much {faster}.','급행을 타요 — 훨씬 빠르거든요.','faster','A1','transport',2,'fast speed train highway'),
('w_transport_A1_28','free','/friː/','adjective','무료의','Not costing any money.','Children under five ride for {free}.','5세 미만 어린이는 무료로 탑승해요.','free','A1','transport',2,'free sign public transport'),
('w_transport_A1_29','door','/dɔːr/','noun','문','A hinged or sliding barrier at the entrance to a vehicle.','Please stand clear of the {doors}.','문 가까이 서지 마세요.','doors','A1','transport',2,'door metro subway train'),
('w_transport_A1_30','seat','/siːt/','noun','좌석','A place where someone sits on a vehicle or in a venue.','Is this {seat} taken?','이 좌석 비어 있나요?','seat','A1','transport',2,'seat chair bus train'),
('w_transport_A1_31','wait','/weɪt/','verb','기다리다','To stay in one place until something happens.','Please {wait} for the next bus.','다음 버스를 기다려 주세요.','wait','A1','transport',2,'wait bus stop people bench'),
('w_transport_A1_32','help','/hɛlp/','verb','돕다','To make it easier for someone to do something.','Could you {help} me find the station?','역 찾는 것을 도와주실 수 있나요?','help','A1','transport',2,'help assist person direction'),
('w_transport_A1_33','line','/laɪn/','noun','노선, 줄','A route for a bus or train service.','Take the blue {line} to Central Station.','중앙역까지 파란 노선을 타세요.','line','A1','transport',2,'subway line metro map'),
('w_transport_A1_34','number','/ˈnʌmbər/','noun','번호','A numerical label identifying a bus or train route.','Which {number} bus goes to the market?','시장에는 몇 번 버스가 가나요?','number','A1','transport',2,'bus number route sign'),
('w_transport_A1_35','here','/hɪr/','adverb','여기','In, at, or to this place.','Stop {here}, please.','여기서 세워 주세요.','here','A1','transport',2,'here location map spot')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — A2 (35개)
-- 테마: subway, platform, transfer, schedule, fare, route, station, departure, arrival, delay
-- ══════════════════════════════════════

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_transport_A2_01','subway','/ˈsʌbweɪ/','noun','지하철','An underground railway system in a city.','The {subway} is faster than the bus during rush hour.','러시아워에는 지하철이 버스보다 빨라요.','subway','A2','transport',1,'subway underground metro tunnel'),
('w_transport_A2_02','platform','/ˈplætfɔːrm/','noun','플랫폼, 승강장','The raised area beside the tracks at a station where you board trains.','Please wait on {platform} three.','3번 플랫폼에서 기다려 주세요.','platform','A2','transport',1,'platform train station railway'),
('w_transport_A2_03','transfer','/ˈtrænsfɜːr/','verb','환승하다','To change from one vehicle to another during a journey.','You need to {transfer} at City Hall station.','시청역에서 환승해야 해요.','transfer','A2','transport',1,'transfer subway station commute'),
('w_transport_A2_04','schedule','/ˈskedʒuːl/','noun','시간표, 일정','A timetable showing when vehicles depart and arrive.','Check the {schedule} before you leave.','출발 전에 시간표를 확인해 주세요.','schedule','A2','transport',1,'schedule timetable board station'),
('w_transport_A2_05','fare','/fɛr/','noun','요금','The money you pay to travel on public transport.','The bus {fare} is two dollars.','버스 요금은 2달러예요.','fare','A2','transport',1,'fare ticket machine transport'),
('w_transport_A2_06','route','/ruːt/','noun','노선, 경로','The path taken to get from one place to another.','This {route} avoids the highway.','이 경로는 고속도로를 피해요.','route','A2','transport',1,'route map navigation path'),
('w_transport_A2_07','departure','/dɪˈpɑːrtʃər/','noun','출발','The act of leaving a place, especially to start a journey.','The {departure} board shows gate C4.','출발 안내판에 C4번 게이트가 표시돼요.','departure','A2','transport',1,'departure board airport gate'),
('w_transport_A2_08','arrival','/əˈraɪvəl/','noun','도착','The act of reaching a destination.','The estimated {arrival} time is 6 p.m.','예상 도착 시간은 오후 6시예요.','arrival','A2','transport',1,'arrival airport terminal passengers'),
('w_transport_A2_09','delay','/dɪˈleɪ/','noun','지연, 연착','A period of time by which something is later than expected.','There is a thirty-minute {delay} on the red line.','빨간 노선에 30분 지연이 있어요.','delay','A2','transport',1,'delay board station announcement'),
('w_transport_A2_10','express','/ɪkˈsprɛs/','adjective','급행의','Traveling at high speed with few stops.','Take the {express} train to save time.','시간을 절약하려면 급행 기차를 타세요.','express','A2','transport',1,'express train speed railway'),
('w_transport_A2_11','local','/ˈloʊkəl/','adjective','완행의, 지역의','Stopping at every station along the route.','The {local} bus stops at every corner.','완행 버스는 모든 모퉁이에 서요.','local','A2','transport',1,'local bus route neighborhood'),
('w_transport_A2_12','direction','/dɪˈrɛkʃən/','noun','방향','The course along which someone or something moves.','Am I going in the right {direction}?','제가 올바른 방향으로 가고 있나요?','direction','A2','transport',1,'direction sign road arrow'),
('w_transport_A2_13','distance','/ˈdɪstəns/','noun','거리','The amount of space between two points.','The walking {distance} is about ten minutes.','걸어서 약 10분 거리예요.','distance','A2','transport',1,'distance road map walking'),
('w_transport_A2_14','passenger','/ˈpæsɪndʒər/','noun','승객','A person who travels on a vehicle but is not driving it.','All {passengers} must show their tickets.','모든 승객은 표를 보여주어야 해요.','passengers','A2','transport',1,'passenger bus train crowd'),
('w_transport_A2_15','driver','/ˈdraɪvər/','noun','운전기사','A person who drives a vehicle.','Ask the {driver} which stop to get off at.','어느 정류장에서 내릴지 운전기사에게 물어보세요.','driver','A2','transport',1,'driver bus taxi wheel'),
('w_transport_A2_16','traffic','/ˈtræfɪk/','noun','교통, 차량','Vehicles moving on a road.','There''s heavy {traffic} on the bridge.','다리 위에 교통이 심하게 막혀요.','traffic','A2','transport',1,'traffic jam highway cars road'),
('w_transport_A2_17','parking','/ˈpɑːrkɪŋ/','noun','주차','The act or space of leaving a vehicle in a particular spot.','Is there free {parking} nearby?','근처에 무료 주차가 있나요?','parking','A2','transport',1,'parking lot cars urban'),
('w_transport_A2_18','return','/rɪˈtɜːrn/','adjective','왕복의','Relating to a ticket that covers both going and coming back.','I''d like a {return} ticket to Busan.','부산까지 왕복 표를 주세요.','return','A2','transport',1,'ticket booth return journey'),
('w_transport_A2_19','single','/ˈsɪŋɡəl/','adjective','편도의','Relating to a ticket for a journey in one direction only.','A {single} to the airport, please.','공항까지 편도 한 장 주세요.','single','A2','transport',2,'single ticket one way train'),
('w_transport_A2_20','connection','/kəˈnɛkʃən/','noun','연결편, 환승 연계','A train or bus that you change onto from another service.','I missed my {connection} in Tokyo.','도쿄에서 연결편을 놓쳤어요.','connection','A2','transport',2,'connection transfer airport boarding'),
('w_transport_A2_21','cancel','/ˈkænsəl/','verb','취소하다','To decide that something planned will not happen.','My flight was {cancelled} due to the storm.','폭풍으로 비행편이 취소됐어요.','cancelled','A2','transport',2,'cancel flight board announcement'),
('w_transport_A2_22','board','/bɔːrd/','verb','탑승하다','To get on a plane, ship, bus, or train.','We will begin {boarding} in ten minutes.','10분 후에 탑승을 시작합니다.','boarding','A2','transport',2,'boarding plane gate airport'),
('w_transport_A2_23','luggage','/ˈlʌɡɪdʒ/','noun','짐, 수하물','Bags and suitcases used when travelling.','Where can I store my {luggage}?','짐을 어디에 보관할 수 있나요?','luggage','A2','transport',2,'luggage suitcase travel airport'),
('w_transport_A2_24','taxi rank','/ˈtæksi ræŋk/','noun','택시 승강장','A place where taxis wait to be hired.','There is a {taxi rank} outside the station.','역 밖에 택시 승강장이 있어요.','taxi rank','A2','transport',2,'taxi rank queue street'),
('w_transport_A2_25','overhead','/ˌoʊvərˈhɛd/','adverb','머리 위에','Above your head.','Place your bag in the {overhead} compartment.','가방을 선반 위 칸에 올려놓으세요.','overhead','A2','transport',2,'overhead compartment plane travel'),
('w_transport_A2_26','rush hour','/rʌʃ ˌaʊər/','noun','러시아워','The busiest period of the day for traffic.','Avoid travelling during {rush hour}.','러시아워에는 이동을 피하세요.','rush hour','A2','transport',2,'rush hour commute crowd subway'),
('w_transport_A2_27','pedestrian crossing','/pɪˈdɛstriən ˌkrɔːsɪŋ/','noun','횡단보도','A marked area of road where pedestrians have priority.','Always use the {pedestrian crossing}.','항상 횡단보도를 이용하세요.','pedestrian crossing','A2','transport',2,'pedestrian crossing zebra street'),
('w_transport_A2_28','signal','/ˈsɪɡnəl/','noun','신호','A light or sign that tells drivers or pedestrians when to stop or go.','Wait for the {signal} to turn green.','신호가 초록색으로 바뀔 때까지 기다리세요.','signal','A2','transport',2,'traffic signal light green red'),
('w_transport_A2_29','lane','/leɪn/','noun','차선','A narrow section of a road for a single line of traffic.','Keep in the left {lane}.','왼쪽 차선을 유지하세요.','lane','A2','transport',2,'lane road highway cars'),
('w_transport_A2_30','timetable','/ˈtaɪmˌteɪbəl/','noun','시각표','A printed list of times when buses or trains arrive and depart.','Look at the {timetable} on the wall.','벽에 있는 시각표를 보세요.','timetable','A2','transport',2,'timetable schedule board station'),
('w_transport_A2_31','underground','/ˈʌndərɡraʊnd/','noun','지하철 (영국식)','The underground railway system, especially in London.','Take the {underground} to Oxford Street.','옥스포드 스트리트까지 지하철을 타세요.','underground','A2','transport',2,'underground metro tube london'),
('w_transport_A2_32','carriage','/ˈkærɪdʒ/','noun','객차','One of the separate sections of a train.','Our reserved seats are in {carriage} four.','예약 좌석은 4번 객차에 있어요.','carriage','A2','transport',2,'carriage train seat window'),
('w_transport_A2_33','vehicle','/ˈviːɪkəl/','noun','차량','Any object used for transporting people or goods.','Only authorized {vehicles} are permitted.','허가된 차량만 진입할 수 있어요.','vehicles','A2','transport',2,'vehicle car van road'),
('w_transport_A2_34','arrive','/əˈraɪv/','verb','도착하다','To reach a destination.','What time does the train {arrive}?','기차는 몇 시에 도착하나요?','arrive','A2','transport',2,'arrive station platform train'),
('w_transport_A2_35','depart','/dɪˈpɑːrt/','verb','출발하다','To leave a place, especially at the start of a journey.','The ferry will {depart} in fifteen minutes.','페리는 15분 후에 출발해요.','depart','A2','transport',2,'depart ferry boat dock')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B1 (35개)
-- 테마: commute, traffic, congestion, carpool, timetable, boarding, express, terminal, junction, pedestrian
-- ══════════════════════════════════════

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_transport_B1_01','commute','/kəˈmjuːt/','verb','통근하다','To travel regularly between home and work.','He {commutes} two hours each way every day.','그는 매일 편도 두 시간씩 통근해요.','commutes','B1','transport',1,'commute train subway crowd morning'),
('w_transport_B1_02','congestion','/kənˈdʒɛstʃən/','noun','교통 혼잡','A situation where roads are so crowded with vehicles that traffic moves slowly.','Road {congestion} is worst between 8 and 9 a.m.','도로 혼잡은 오전 8시에서 9시 사이가 가장 심해요.','congestion','B1','transport',1,'congestion traffic jam highway cars'),
('w_transport_B1_03','carpool','/ˈkɑːrpuːl/','verb','카풀하다','To travel to work with others, sharing a vehicle to reduce costs.','We {carpool} to save money on petrol.','기름값을 아끼려고 카풀을 해요.','carpool','B1','transport',1,'carpool sharing car commute'),
('w_transport_B1_04','terminal','/ˈtɜːrmɪnəl/','noun','터미널','The main building at an airport or bus station where passengers arrive and depart.','The international {terminal} is in building A.','국제선 터미널은 A동에 있어요.','terminal','B1','transport',1,'terminal airport building passengers'),
('w_transport_B1_05','junction','/ˈdʒʌŋkʃən/','noun','교차로, 분기점','A point where two or more roads or railway lines meet.','Turn left at the {junction} ahead.','앞쪽 교차로에서 왼쪽으로 도세요.','junction','B1','transport',1,'junction road intersection traffic'),
('w_transport_B1_06','pedestrian','/pɪˈdɛstriən/','noun','보행자','A person who is walking, especially in a city or town.','Please watch for {pedestrians} at all times.','항상 보행자를 주의하세요.','pedestrians','B1','transport',1,'pedestrian crosswalk city street'),
('w_transport_B1_07','overtake','/ˌoʊvərˈteɪk/','verb','추월하다','To pass another vehicle that is going in the same direction.','It is dangerous to {overtake} on a bend.','굽은 길에서 추월하는 것은 위험해요.','overtake','B1','transport',1,'overtake car highway speed'),
('w_transport_B1_08','roundabout','/ˈraʊndəbaʊt/','noun','로터리, 회전교차로','A circular junction where traffic flows around a central island.','Take the second exit at the {roundabout}.','로터리에서 두 번째 출구로 나가세요.','roundabout','B1','transport',1,'roundabout circular road traffic'),
('w_transport_B1_09','diversion','/daɪˈvɜːrʒən/','noun','우회로, 우회','An alternative route used when the usual road is closed.','Follow the {diversion} signs past the school.','학교 옆 우회 표지판을 따라가세요.','diversion','B1','transport',2,'diversion sign road construction'),
('w_transport_B1_10','speed limit','/ˈspiːd ˌlɪmɪt/','noun','제한 속도','The maximum speed legally allowed on a particular road.','The {speed limit} on this road is 60 km/h.','이 도로의 제한 속도는 시속 60킬로미터예요.','speed limit','B1','transport',1,'speed limit sign road'),
('w_transport_B1_11','commuter','/kəˈmjuːtər/','noun','통근자','A person who regularly travels to work from outside a city.','The station is packed with {commuters} at 8 a.m.','오전 8시에는 역이 통근자들로 꽉 차요.','commuters','B1','transport',1,'commuter train station busy'),
('w_transport_B1_12','boarding pass','/ˈbɔːrdɪŋ pæs/','noun','탑승권','A document that allows a passenger to board an aircraft.','Please have your {boarding pass} ready at the gate.','게이트에서 탑승권을 준비해 주세요.','boarding pass','B1','transport',1,'boarding pass airport check-in'),
('w_transport_B1_13','platform number','/ˈplætfɔːrm ˌnʌmbər/','noun','플랫폼 번호','The number identifying the specific platform for a train.','The train departs from {platform number} seven.','기차는 7번 플랫폼에서 출발해요.','platform number','B1','transport',2,'platform number train station sign'),
('w_transport_B1_14','direct','/dɪˈrɛkt/','adjective','직행의','Going from one place to another without stopping or changing.','Is there a {direct} bus to the museum?','박물관까지 직행 버스가 있나요?','direct','B1','transport',1,'direct bus route nonstop'),
('w_transport_B1_15','overhead line','/ˈoʊvərˌhɛd laɪn/','noun','전철선, 가선','An electric wire above a railway track that supplies power to trains.','Damage to the {overhead line} has caused delays.','전철선 손상으로 지연이 발생했어요.','overhead line','B1','transport',3,'overhead wire railway electric'),
('w_transport_B1_16','level crossing','/ˈlɛvəl ˌkrɔːsɪŋ/','noun','철도 건널목','A place where a road crosses a railway line.','Stop at the {level crossing} and wait for the barrier.','건널목에서 멈추고 차단기를 기다리세요.','level crossing','B1','transport',2,'level crossing barrier train road'),
('w_transport_B1_17','bypass','/ˈbaɪpæs/','noun','우회 도로','A road that passes around a town to reduce traffic in the center.','Take the {bypass} to avoid the city center.','도심을 피하려면 우회 도로를 이용하세요.','bypass','B1','transport',2,'bypass highway road traffic'),
('w_transport_B1_18','fare card','/fɛr kɑːrd/','noun','교통 카드','A card used to pay for public transport journeys electronically.','Top up your {fare card} before the ride.','탑승 전에 교통 카드를 충전해 주세요.','fare card','B1','transport',1,'fare card transit payment'),
('w_transport_B1_19','tram','/træm/','noun','전차, 트램','An electric vehicle that travels along rails laid in a road.','The {tram} stops right in front of the museum.','전차가 박물관 바로 앞에 서요.','tram','B1','transport',2,'tram city street rails'),
('w_transport_B1_20','ferry','/ˈfɛri/','noun','페리, 여객선','A boat that carries passengers and sometimes vehicles across water.','We took the {ferry} from Busan to Jeju.','부산에서 제주까지 페리를 탔어요.','ferry','B1','transport',1,'ferry boat ocean passengers'),
('w_transport_B1_21','cycle lane','/ˈsaɪkəl leɪn/','noun','자전거 전용 차선','A part of a road set aside for cyclists.','Always use the {cycle lane} when available.','자전거 전용 차선이 있을 때는 반드시 이용하세요.','cycle lane','B1','transport',2,'cycle lane bike road marking'),
('w_transport_B1_22','gridlock','/ˈɡrɪdlɒk/','noun','극심한 교통 정체','A situation in which traffic cannot move in any direction.','The city centre was in complete {gridlock} this morning.','오늘 아침 도심이 완전히 막혔어요.','gridlock','B1','transport',2,'gridlock traffic city downtown'),
('w_transport_B1_23','interchange','/ˈɪntərˌtʃeɪndʒ/','noun','인터체인지, 환승 거점','A road junction where vehicles can change from one road to another without crossing traffic.','The {interchange} at exit 12 can get very busy.','12번 출구 인터체인지는 매우 혼잡해질 수 있어요.','interchange','B1','transport',2,'interchange highway junction aerial'),
('w_transport_B1_24','peak hour','/piːk ˌaʊər/','noun','피크 타임, 혼잡 시간대','The period of the day when most people are travelling.','Fares are higher during {peak hours}.','피크 시간대에는 요금이 더 높아요.','peak hours','B1','transport',2,'peak hour commute busy subway'),
('w_transport_B1_25','pedestrianize','/pɪˈdɛstriənaɪz/','verb','보행자 전용 구역으로 만들다','To make a street accessible only to people on foot.','The council voted to {pedestrianize} the high street.','의회는 중심가를 보행자 전용으로 만들기로 투표했어요.','pedestrianize','B1','transport',3,'pedestrian zone street no cars'),
('w_transport_B1_26','detour','/ˈdiːtʊr/','noun','우회','A longer route taken to avoid a problem on the usual road.','We had to take a {detour} due to road works.','도로 공사 때문에 우회해야 했어요.','detour','B1','transport',2,'detour sign road construction'),
('w_transport_B1_27','yield','/jiːld/','verb','양보하다','To give way to other traffic.','Always {yield} to pedestrians at crossings.','횡단보도에서는 항상 보행자에게 양보하세요.','yield','B1','transport',2,'yield sign road intersection'),
('w_transport_B1_28','carriage way','/ˈkærɪdʒweɪ/','noun','차도','The part of a road intended for vehicles.','Road works have reduced the {carriageway} to one lane.','도로 공사로 차도가 한 차선으로 줄었어요.','carriageway','B1','transport',3,'carriageway road vehicles lane'),
('w_transport_B1_29','sign post','/ˈsaɪnpoʊst/','noun','이정표','A post with signs on it showing directions or distances.','Follow the {signpost} to the city centre.','도심으로 가는 이정표를 따라가세요.','signpost','B1','transport',2,'signpost direction road countryside'),
('w_transport_B1_30','departure lounge','/dɪˈpɑːrtʃər laʊndʒ/','noun','출국 대기실','The area at an airport where passengers wait before boarding.','Please proceed to the {departure lounge}.','출국 대기실로 이동해 주세요.','departure lounge','B1','transport',2,'departure lounge airport waiting'),
('w_transport_B1_31','check-in','/ˈtʃɛkɪn/','noun','체크인','The process of registering for a flight at an airport.','Online {check-in} opens 24 hours before departure.','온라인 체크인은 출발 24시간 전에 열려요.','check-in','B1','transport',1,'check-in airport counter luggage'),
('w_transport_B1_32','seatbelt','/ˈsiːtbɛlt/','noun','안전벨트','A belt worn to keep you safely in your seat in a vehicle.','Please fasten your {seatbelt} before take-off.','이륙 전에 안전벨트를 매주세요.','seatbelt','B1','transport',1,'seatbelt safety car airplane'),
('w_transport_B1_33','harbour','/ˈhɑːrbər/','noun','항구','A place on the coast where ships shelter or load and unload.','The cruise ship docked at the main {harbour}.','크루즈 선박이 주요 항구에 정박했어요.','harbour','B1','transport',2,'harbour port ships dock'),
('w_transport_B1_34','motorway','/ˈmoʊtərweɪ/','noun','고속도로','A wide road designed for fast travel over long distances.','Take the {motorway} for a faster journey.','더 빠른 이동을 위해 고속도로를 이용하세요.','motorway','B1','transport',1,'motorway highway fast cars'),
('w_transport_B1_35','overhead bridge','/ˌoʊvərˈhɛd brɪdʒ/','noun','육교','A bridge built above a road for pedestrians.','Use the {overhead bridge} to cross safely.','안전하게 건너려면 육교를 이용하세요.','overhead bridge','B1','transport',2,'footbridge overpass pedestrian road')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B2 (35개)
-- 테마: infrastructure, transit, logistics, navigate, detour, itinerary, chartered, shuttle, intercity, toll
-- ══════════════════════════════════════

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_transport_B2_01','infrastructure','/ˈɪnfrəˌstrʌktʃər/','noun','교통 기반 시설','The basic physical systems of a country, including roads, railways, and airports.','The government plans to invest heavily in transport {infrastructure}.','정부는 교통 기반 시설에 대규모 투자를 계획하고 있어요.','infrastructure','B2','transport',1,'infrastructure road bridge city construction'),
('w_transport_B2_02','transit','/ˈtrænsɪt/','noun','대중교통 시스템','Public transportation systems within a city or area.','The city''s rapid {transit} system carries millions of passengers daily.','그 도시의 고속 대중교통 시스템은 매일 수백만 명을 운송해요.','transit','B2','transport',1,'transit metro city public transport'),
('w_transport_B2_03','logistics','/ləˈdʒɪstɪks/','noun','물류','The detailed coordination of transporting goods or people.','Efficient {logistics} are crucial for same-day delivery.','효율적인 물류는 당일 배송에 필수적이에요.','logistics','B2','transport',1,'logistics warehouse delivery truck'),
('w_transport_B2_04','navigate','/ˈnævɪɡeɪt/','verb','항법으로 이동하다, 길을 찾다','To plan and direct the route of a vehicle or journey.','I used my phone to {navigate} through the city.','스마트폰으로 도시를 탐색했어요.','navigate','B2','transport',1,'navigate GPS map phone driving'),
('w_transport_B2_05','itinerary','/aɪˈtɪnərəri/','noun','여행 일정표','A planned route or schedule for a journey.','Our travel agent prepared a detailed {itinerary}.','여행사에서 상세한 일정표를 준비해 줬어요.','itinerary','B2','transport',1,'itinerary travel plan document'),
('w_transport_B2_06','chartered','/ˈtʃɑːrtərd/','adjective','전세 낸, 대절한','Hired for private use, not part of a regular service.','We booked a {chartered} flight for the corporate trip.','회사 출장을 위해 전세 비행기를 예약했어요.','chartered','B2','transport',2,'chartered plane private jet airport'),
('w_transport_B2_07','shuttle','/ˈʃʌtəl/','noun','셔틀 (정기 왕복 교통편)','A vehicle that travels regularly between two places.','Take the hotel {shuttle} from the airport arrivals hall.','공항 도착 홀에서 호텔 셔틀을 타세요.','shuttle','B2','transport',1,'shuttle bus airport hotel'),
('w_transport_B2_08','intercity','/ˌɪntərˈsɪti/','adjective','도시 간의','Travelling or operating between cities.','The {intercity} train service connects all major cities.','도시 간 기차 서비스는 모든 주요 도시를 연결해요.','intercity','B2','transport',1,'intercity train highspeed city'),
('w_transport_B2_09','toll','/toʊl/','noun','통행료','A charge paid to use a road, bridge, or tunnel.','There is a {toll} at every entrance to the highway.','고속도로 입구마다 통행료가 있어요.','toll','B2','transport',1,'toll booth highway road payment'),
('w_transport_B2_10','congestion charge','/kənˈdʒɛstʃən tʃɑːrdʒ/','noun','혼잡 통행료','A fee charged to drivers entering a busy urban area.','London introduced a daily {congestion charge} in 2003.','런던은 2003년에 일일 혼잡 통행료를 도입했어요.','congestion charge','B2','transport',2,'congestion charge sign city london'),
('w_transport_B2_11','embark','/ɪmˈbɑːrk/','verb','탑승하다, 승선하다','To go on board a ship or aircraft.','Passengers will {embark} from pier seven.','승객들은 7번 부두에서 승선해요.','embark','B2','transport',2,'embark ship dock boarding'),
('w_transport_B2_12','disembark','/ˌdɪsɪmˈbɑːrk/','verb','하선하다, 내리다','To leave a ship, aircraft, or other vehicle.','Please remain seated until the plane has {disembarked}.','비행기가 완전히 멈출 때까지 착석해 주세요.','disembarked','B2','transport',2,'disembark airplane gate passengers'),
('w_transport_B2_13','waybill','/ˈweɪbɪl/','noun','화물 운송장','A document listing the details of goods being transported.','The delivery driver presented a signed {waybill}.','배달 기사가 서명된 화물 운송장을 제시했어요.','waybill','B2','transport',3,'waybill document delivery logistics'),
('w_transport_B2_14','reroute','/ˌriːˈruːt/','verb','경로를 변경하다','To send something by a different route.','Due to flooding, all trains were {rerouted} via the northern line.','홍수로 인해 모든 기차가 북부 노선으로 우회했어요.','rerouted','B2','transport',2,'reroute train map alternative'),
('w_transport_B2_15','concourse','/ˈkɒnkɔːrs/','noun','중앙 홀, 광장','A large open area inside a station or airport where passengers gather.','Meet me in the main {concourse} of Grand Central.','그랜드 센트럴 중앙 홀에서 만나요.','concourse','B2','transport',2,'concourse station airport interior'),
('w_transport_B2_16','cargo','/ˈkɑːrɡoʊ/','noun','화물','Goods carried by a ship, aircraft, or other vehicle.','The airline charges extra for heavy {cargo}.','항공사는 무거운 화물에 추가 요금을 부과해요.','cargo','B2','transport',2,'cargo freight airplane warehouse'),
('w_transport_B2_17','overhead compartment','/ˌoʊvərˈhɛd kəmˈpɑːrtmənt/','noun','기내 선반','A storage area above seats in an aircraft.','Please stow your bag in the {overhead compartment}.','가방을 기내 선반에 넣어 주세요.','overhead compartment','B2','transport',2,'overhead compartment airplane interior'),
('w_transport_B2_18','grid','/ɡrɪd/','noun','도로 격자망','A network of lines crossing each other at right angles, as in a road system.','Chicago is famous for its straight-lined road {grid}.','시카고는 직선형 도로 격자망으로 유명해요.','grid','B2','transport',2,'grid road map aerial city'),
('w_transport_B2_19','accessible','/əkˈsɛsɪbəl/','adjective','접근 가능한, 장애인 편의시설 갖춘','Easy to use or enter, especially for people with disabilities.','All new stations must be fully {accessible}.','모든 새 역은 완전히 접근 가능해야 해요.','accessible','B2','transport',2,'accessible wheelchair ramp station'),
('w_transport_B2_20','hail','/heɪl/','verb','손을 흔들어 세우다 (택시 등)','To signal a passing taxi to stop.','I had to walk three blocks before I could {hail} a cab.','택시를 잡으려면 세 블록을 걸어야 했어요.','hail','B2','transport',2,'hail taxi cab street city'),
('w_transport_B2_21','streamline','/ˈstriːmlaɪn/','verb','효율화하다, 간소화하다','To make a process more efficient or simpler.','The airline is trying to {streamline} check-in procedures.','항공사는 체크인 절차를 간소화하려고 하고 있어요.','streamline','B2','transport',2,'streamline process efficiency workflow'),
('w_transport_B2_22','headway','/ˈhɛdweɪ/','noun','열차 간격, 배차 간격','The time interval between vehicles running on the same route.','The subway runs at a {headway} of four minutes.','지하철은 4분 간격으로 운행해요.','headway','B2','transport',3,'headway train frequency timetable'),
('w_transport_B2_23','freight','/freɪt/','noun','화물 운송','Goods transported in bulk by truck, train, or ship.','The port handles millions of tonnes of {freight} each year.','그 항구는 매년 수백만 톤의 화물을 처리해요.','freight','B2','transport',2,'freight port containers ship cargo'),
('w_transport_B2_24','suspension','/səˈspɛnʃən/','noun','운행 중단','The temporary stopping of a transport service.','A signal fault caused the {suspension} of all services.','신호 장애로 모든 노선 운행이 중단됐어요.','suspension','B2','transport',2,'suspension metro announcement board'),
('w_transport_B2_25','priority lane','/praɪˈɒrɪti leɪn/','noun','우선 차선','A lane reserved for buses, taxis, or emergency vehicles.','Buses run faster in the {priority lane}.','우선 차선에서는 버스가 더 빨리 달려요.','priority lane','B2','transport',2,'priority lane bus road marking'),
('w_transport_B2_26','capacity','/kəˈpæsɪti/','noun','수송 용량','The maximum number of people or things that a vehicle can carry.','The train was running at full {capacity}.','기차는 최대 용량으로 운행하고 있었어요.','capacity','B2','transport',2,'capacity crowd train metro'),
('w_transport_B2_27','interchange hub','/ˈɪntərˌtʃeɪndʒ hʌb/','noun','환승 허브','A major transport junction connecting multiple lines or modes of travel.','The new {interchange hub} will link the airport to the city.','새 환승 허브는 공항과 도시를 연결할 거예요.','interchange hub','B2','transport',2,'hub interchange transit center'),
('w_transport_B2_28','subsidy','/ˈsʌbsɪdi/','noun','보조금','Money given by the government to keep transport fares affordable.','Public buses receive a government {subsidy} to keep fares low.','공공 버스는 요금을 낮게 유지하기 위해 정부 보조금을 받아요.','subsidy','B2','transport',2,'subsidy government funding transport'),
('w_transport_B2_29','multimodal','/ˌmʌltiˈmoʊdəl/','adjective','복합 교통 수단의','Involving more than one form of transportation.','The city promotes a {multimodal} approach to commuting.','그 도시는 복합 교통 수단 방식의 통근을 장려해요.','multimodal','B2','transport',2,'multimodal transport bike train bus'),
('w_transport_B2_30','corridor','/ˈkɒrɪdɔːr/','noun','교통 회랑','A strip of land forming a route for transportation between two points.','The high-speed rail {corridor} links the two major cities.','고속철도 회랑은 두 주요 도시를 연결해요.','corridor','B2','transport',2,'corridor railway highway region map'),
('w_transport_B2_31','accessibility','/əkˌsɛsɪˈbɪlɪti/','noun','접근성','The quality of being easily reached or used by all people.','Improving {accessibility} for wheelchair users is a priority.','휠체어 사용자를 위한 접근성 향상이 우선 과제예요.','accessibility','B2','transport',2,'accessibility ramp disabled transport'),
('w_transport_B2_32','emission','/ɪˈmɪʃən/','noun','배기가스, 배출','The production and discharge of gas from a vehicle or engine.','Stricter {emission} standards apply to all new vehicles.','더 엄격한 배출 기준이 모든 신형 차량에 적용돼요.','emission','B2','transport',2,'emission exhaust car environment'),
('w_transport_B2_33','fleet','/fliːt/','noun','차량 군, 운송 차량단','A number of vehicles owned or operated by an organization.','The company is replacing its entire delivery {fleet} with electric vehicles.','그 회사는 배달 차량단 전체를 전기차로 교체하고 있어요.','fleet','B2','transport',2,'fleet trucks company delivery'),
('w_transport_B2_34','on-demand','/ˌɒn dɪˈmɑːnd/','adjective','수요 응답형의','Available whenever required, not on a fixed schedule.','The city introduced an {on-demand} bus service in rural areas.','그 도시는 농촌 지역에 수요 응답형 버스 서비스를 도입했어요.','on-demand','B2','transport',2,'on demand bus rural flexible'),
('w_transport_B2_35','manifest','/ˈmænɪfɛst/','noun','탑승자 명단, 적하 목록','A list of passengers or cargo on a vehicle.','The airline submitted the passenger {manifest} before takeoff.','항공사는 이륙 전에 탑승자 명단을 제출했어요.','manifest','B2','transport',3,'manifest airline document passengers')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C1 (35개)
-- 테마: multimodal, intermodal, urban mobility, ridesharing, autonomous, sustainable transport, corridor, network, hubs, freight
-- ══════════════════════════════════════

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_transport_C1_01','intermodal','/ˌɪntərˈmoʊdəl/','adjective','상호 교통 수단 간의','Involving two or more modes of transport for a single journey.','The port operates an {intermodal} freight terminal.','그 항구는 상호 교통 수단 화물 터미널을 운영해요.','intermodal','C1','transport',2,'intermodal freight container ship train'),
('w_transport_C1_02','urban mobility','/ˈɜːrbən moʊˈbɪlɪti/','noun','도시 이동성','The systems and policies that enable people to move around cities.','Smart apps are transforming {urban mobility}.','스마트 앱이 도시 이동성을 혁신하고 있어요.','urban mobility','C1','transport',1,'urban mobility city scooter bike'),
('w_transport_C1_03','ridesharing','/ˈraɪdʃɛrɪŋ/','noun','승차 공유','A service where people share a vehicle for a journey, often arranged via an app.','The rise of {ridesharing} has reduced private car use.','승차 공유의 확산이 개인 자가용 이용을 줄였어요.','ridesharing','C1','transport',1,'ridesharing app uber lyft city'),
('w_transport_C1_04','autonomous','/ɔːˈtɒnəməs/','adjective','자율 주행의','Operating independently without human control.','The first {autonomous} buses completed trials last year.','최초의 자율 주행 버스가 작년에 시험 운행을 마쳤어요.','autonomous','C1','transport',1,'autonomous self-driving car sensor'),
('w_transport_C1_05','sustainable transport','/səˈsteɪnəbəl ˈtrænsport/','noun','지속 가능한 교통','Transportation that minimizes environmental impact.','Cycling is one of the most effective forms of {sustainable transport}.','자전거는 가장 효과적인 지속 가능한 교통 수단 중 하나예요.','sustainable transport','C1','transport',1,'sustainable transport green bike cycle'),
('w_transport_C1_06','network','/ˈnɛtwɜːrk/','noun','교통망','A system of routes, lines, or services connecting places.','The metro {network} expanded to cover the suburbs.','지하철 교통망이 교외 지역까지 확장됐어요.','network','C1','transport',1,'network metro map lines city'),
('w_transport_C1_07','hub','/hʌb/','noun','허브 (교통 중심지)','A central point from which routes radiate or where services connect.','Heathrow is one of Europe''s busiest aviation {hubs}.','히드로는 유럽에서 가장 바쁜 항공 허브 중 하나예요.','hubs','C1','transport',1,'hub airport transport center'),
('w_transport_C1_08','throughput','/ˈθruːpʊt/','noun','처리량, 수송 처리량','The amount of material or traffic passing through a system.','The new terminal increased passenger {throughput} by 40%.','새 터미널이 승객 처리량을 40% 늘렸어요.','throughput','C1','transport',2,'throughput airport terminal capacity'),
('w_transport_C1_09','electrification','/ɪˌlɛktrɪfɪˈkeɪʃən/','noun','전기화','The conversion of a railway or transport system to use electricity.','Rail {electrification} is central to the green transport strategy.','철도 전기화는 친환경 교통 전략의 핵심이에요.','electrification','C1','transport',1,'electrification railway overhead wire'),
('w_transport_C1_10','dwell time','/dwɛl taɪm/','noun','정차 시간','The time a vehicle spends stationary at a stop to allow passengers to board and alight.','Reducing {dwell time} is key to increasing train frequency.','정차 시간 단축이 열차 빈도를 높이는 핵심이에요.','dwell time','C1','transport',3,'dwell time train platform station'),
('w_transport_C1_11','hinterland','/ˈhɪntərlænd/','noun','배후지, 주변 지역','The areas surrounding and served by a port or city.','The new rail link opened up the port''s {hinterland}.','새 철도 연결로 항구의 배후지가 개방됐어요.','hinterland','C1','transport',3,'hinterland region port rural countryside'),
('w_transport_C1_12','transit-oriented development','/ˈtrænsɪt ˈɔːrientɪd dɪˈvɛləpmənt/','noun','대중교통 중심 개발','Urban planning that integrates housing and services around transport hubs.','The city adopted {transit-oriented development} near metro stations.','그 도시는 지하철역 주변에 대중교통 중심 개발을 채택했어요.','transit-oriented development','C1','transport',2,'transit development station urban planning'),
('w_transport_C1_13','feeder service','/ˈfiːdər ˌsɜːrvɪs/','noun','지선 서비스','A secondary transport service connecting smaller areas to a main line.','The town relies on a {feeder service} to reach the intercity station.','그 마을은 도시 간 역에 연결하는 지선 서비스에 의존해요.','feeder service','C1','transport',2,'feeder bus rural station connection'),
('w_transport_C1_14','modal split','/ˈmoʊdəl splɪt/','noun','교통 수단 분담률','The proportion of travel made by each transport mode.','The city aims to shift the {modal split} toward public transport.','그 도시는 교통 수단 분담률을 대중교통 쪽으로 전환하는 것을 목표로 해요.','modal split','C1','transport',2,'modal split graph transport statistics'),
('w_transport_C1_15','induced demand','/ɪnˈdjuːst dɪˈmɑːnd/','noun','유발 수요','The increase in traffic generated by adding road capacity.','Building more roads may create {induced demand} rather than reduce congestion.','도로를 더 짓는 것은 혼잡을 줄이는 게 아니라 유발 수요를 만들 수 있어요.','induced demand','C1','transport',3,'induced demand highway traffic growth'),
('w_transport_C1_16','right-of-way','/raɪt əv weɪ/','noun','통행 우선권','The legal right to pass through a particular road or path.','Emergency vehicles always have {right-of-way}.','응급 차량은 항상 통행 우선권을 가져요.','right-of-way','C1','transport',2,'right-of-way road priority sign'),
('w_transport_C1_17','viaduct','/ˈvaɪədʌkt/','noun','고가 교량','A long bridge carrying a road or railway across a valley.','The Victorian {viaduct} still carries express trains today.','빅토리아 시대의 고가 교량이 지금도 급행 기차를 운반해요.','viaduct','C1','transport',3,'viaduct bridge railway arch'),
('w_transport_C1_18','decarbonize','/diːˈkɑːrbənaɪz/','verb','탈탄소화하다','To remove or reduce carbon dioxide emissions from transport.','The sector must {decarbonize} rapidly to meet climate targets.','기후 목표를 달성하려면 그 분야가 빠르게 탈탄소화해야 해요.','decarbonize','C1','transport',1,'decarbonize green energy transport electric'),
('w_transport_C1_19','last-mile connectivity','/lɑːst maɪl kəˌnɛktɪˈvɪti/','noun','라스트 마일 연결성','The connection between a main transport hub and a passenger''s final destination.','Bike-sharing schemes improve {last-mile connectivity}.','공유 자전거 제도는 라스트 마일 연결성을 개선해요.','last-mile connectivity','C1','transport',2,'last mile bike scooter station'),
('w_transport_C1_20','grade separation','/ɡreɪd ˌsɛpəˈreɪʃən/','noun','입체 교차','The design of roads or railways so that they cross at different levels.','{Grade separation} eliminates level crossing collisions.','입체 교차는 건널목 충돌 사고를 없애요.','Grade separation','C1','transport',3,'grade separation overpass underpass engineering'),
('w_transport_C1_21','signal priority','/ˈsɪɡnəl praɪˈɒrɪti/','noun','신호 우선권','A system that gives buses or trams priority at traffic lights.','Trams benefit from {signal priority} on most routes.','전차는 대부분의 노선에서 신호 우선권의 혜택을 받아요.','signal priority','C1','transport',3,'signal priority tram traffic light'),
('w_transport_C1_22','zone pricing','/zoʊn ˈpraɪsɪŋ/','noun','구역별 요금제','A fare system where the cost depends on the number of zones crossed.','London''s Tube uses {zone pricing}.','런던 지하철은 구역별 요금제를 사용해요.','zone pricing','C1','transport',2,'zone pricing metro map fare'),
('w_transport_C1_23','operational resilience','/ˌɒpəˈreɪʃənəl rɪˈzɪliəns/','noun','운영 회복력','The ability of a transport system to keep running despite disruptions.','The network demonstrated strong {operational resilience} during the storm.','그 교통망은 폭풍 속에서도 강한 운영 회복력을 보였어요.','operational resilience','C1','transport',3,'resilience transport disruption system'),
('w_transport_C1_24','fleet management','/fliːt ˈmænɪdʒmənt/','noun','차량 관리','The administration of a company''s vehicles to maximize efficiency.','GPS tracking has revolutionized {fleet management}.','GPS 추적이 차량 관리에 혁신을 가져왔어요.','fleet management','C1','transport',2,'fleet management GPS truck logistics'),
('w_transport_C1_25','demand forecasting','/dɪˈmɑːnd ˈfɔːrkæstɪŋ/','noun','수요 예측','Predicting how much transport capacity will be needed in the future.','Accurate {demand forecasting} prevents overcrowding on trains.','정확한 수요 예측이 기차 내 혼잡을 예방해요.','demand forecasting','C1','transport',3,'demand forecasting data analytics'),
('w_transport_C1_26','rolling stock','/ˈroʊlɪŋ stɒk/','noun','철도 차량','The locomotives, carriages, and wagons used on a railway.','The operator is replacing its ageing {rolling stock}.','운영사는 노후화된 철도 차량을 교체하고 있어요.','rolling stock','C1','transport',2,'rolling stock train carriage depot'),
('w_transport_C1_27','transit pass','/ˈtrænsɪt pæs/','noun','정기 교통권','A card or pass allowing unlimited travel on public transport for a set period.','Monthly {transit passes} are cheaper than individual tickets.','월정 정기 교통권은 낱장 티켓보다 저렴해요.','transit passes','C1','transport',2,'transit pass card monthly travel'),
('w_transport_C1_28','trackwork','/ˈtræk wɜːrk/','noun','선로 공사','Maintenance or construction work carried out on railway tracks.','Weekend {trackwork} will suspend services on line 3.','주말 선로 공사로 3호선 운행이 중단돼요.','trackwork','C1','transport',2,'trackwork railway maintenance workers'),
('w_transport_C1_29','interoperability','/ˌɪntərˌɒpərəˈbɪlɪti/','noun','상호 운용성','The ability of different transport systems or tickets to work together.','{Interoperability} allows passengers to use one card across all networks.','상호 운용성 덕분에 승객들은 모든 교통망에서 하나의 카드를 사용할 수 있어요.','Interoperability','C1','transport',3,'interoperability smart card transport system'),
('w_transport_C1_30','paratransit','/ˈpærəˌtrænsɪt/','noun','특별 수송 서비스','Flexible transport services for people who cannot use regular public transport.','The city expanded its {paratransit} fleet for elderly riders.','그 도시는 노인 이용자를 위해 특별 수송 서비스 차량을 늘렸어요.','paratransit','C1','transport',3,'paratransit wheelchair van accessible'),
('w_transport_C1_31','modal shift','/ˈmoʊdəl ʃɪft/','noun','교통 수단 전환','A change in the proportion of travel by different modes of transport.','Policy makers are encouraging a {modal shift} away from private cars.','정책 입안자들은 개인 자가용에서 벗어난 교통 수단 전환을 장려하고 있어요.','modal shift','C1','transport',2,'modal shift bike transit car green'),
('w_transport_C1_32','overshoot','/ˌoʊvərˈʃuːt/','verb','초과하다 (정원, 시간 등)','To go beyond a planned stop or time.','The tram {overshot} the platform by several metres.','전차가 플랫폼을 몇 미터 지나쳤어요.','overshot','C1','transport',3,'overshoot platform tram precision'),
('w_transport_C1_33','interline agreement','/ˈɪntəlaɪn əˈɡriːmənt/','noun','항공사 간 연계 협정','An agreement between airlines to accept each other''s tickets.','Thanks to the {interline agreement}, you can check your bag to the final destination.','항공사 간 연계 협정 덕분에 최종 목적지까지 수하물을 위탁할 수 있어요.','interline agreement','C1','transport',3,'interline airline ticket agreement'),
('w_transport_C1_34','signalling system','/ˈsɪɡnəlɪŋ ˌsɪstəm/','noun','신호 시스템','The electronic system that controls the safe movement of trains.','An upgraded {signalling system} will double capacity on the line.','업그레이드된 신호 시스템이 노선 용량을 두 배로 늘릴 거예요.','signalling system','C1','transport',2,'signalling system railway control room'),
('w_transport_C1_35','curbside management','/ˈkɜːrbsaɪd ˈmænɪdʒmənt/','noun','도로변 관리','The regulation of loading, unloading, and passenger pick-up zones.','Effective {curbside management} reduces double-parking downtown.','효과적인 도로변 관리는 도심의 이중 주차를 줄여요.','curbside management','C1','transport',3,'curbside curb pickup zone parking')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C2 (35개)
-- 테마: telematics, decarbonization, electrification, micromobility, modal shift, last-mile, hyperloop, geospatial, actuarial
-- ══════════════════════════════════════

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_transport_C2_01','telematics','/ˌtɛlɪˈmætɪks/','noun','텔레매틱스','The technology of sending, receiving, and storing information about vehicles via telecommunications.','Insurance companies use {telematics} to calculate premiums based on driving behaviour.','보험사는 텔레매틱스를 사용해 운전 습관에 따라 보험료를 산정해요.','telematics','C2','transport',2,'telematics GPS car data technology'),
('w_transport_C2_02','decarbonization','/diːˌkɑːrbənaɪˈzeɪʃən/','noun','탈탄소화','The process of reducing carbon dioxide emissions from transport systems.','The {decarbonization} of aviation presents unique engineering challenges.','항공의 탈탄소화는 독특한 공학적 도전을 제시해요.','decarbonization','C2','transport',1,'decarbonization green energy clean transport'),
('w_transport_C2_03','micromobility','/ˌmaɪkroʊmoʊˈbɪlɪti/','noun','마이크로 모빌리티','Small, lightweight vehicles such as e-scooters and bicycles for short urban trips.','Cities are redesigning streets to accommodate {micromobility}.','도시들은 마이크로 모빌리티를 수용하기 위해 거리를 재설계하고 있어요.','micromobility','C2','transport',1,'micromobility scooter e-bike city street'),
('w_transport_C2_04','hyperloop','/ˈhaɪpərluːp/','noun','하이퍼루프','A proposed high-speed transport system using sealed tubes with low air pressure.','The {hyperloop} could reduce travel time between cities from hours to minutes.','하이퍼루프는 도시 간 이동 시간을 몇 시간에서 몇 분으로 줄일 수 있어요.','hyperloop','C2','transport',2,'hyperloop tube futuristic transport'),
('w_transport_C2_05','geospatial analysis','/ˌdʒiːoʊˈspeɪʃəl əˈnæləsɪs/','noun','지리 공간 분석','The use of geographic data to optimize transport routes and planning.','Transport planners use {geospatial analysis} to identify underserved areas.','교통 계획가들은 지리 공간 분석을 사용해 서비스 취약 지역을 파악해요.','geospatial analysis','C2','transport',3,'geospatial map data urban analysis'),
('w_transport_C2_06','actuarial modelling','/ˌæktʃuˈɛriəl ˈmɒdəlɪŋ/','noun','보험 수리 모델링','Statistical models used to calculate insurance risk for transport.','{Actuarial modelling} is used to price ride-share insurance products.','보험 수리 모델링은 승차 공유 보험 상품 가격 산정에 사용돼요.','Actuarial modelling','C2','transport',3,'actuarial data statistics insurance'),
('w_transport_C2_07','vehicle-to-grid','/ˈviːɪkəl tə ɡrɪd/','noun','차량 대 전력망','A system where electric vehicles can return stored energy to the power grid.','The city is piloting a {vehicle-to-grid} scheme using electric buses.','그 도시는 전기버스를 이용한 차량 대 전력망 시범 사업을 추진하고 있어요.','vehicle-to-grid','C2','transport',3,'vehicle grid electric energy storage'),
('w_transport_C2_08','congestion pricing','/kənˈdʒɛstʃən ˈpraɪsɪŋ/','noun','혼잡 통행료 제도','A demand management policy that charges drivers more during peak hours.','New York implemented {congestion pricing} to fund the subway.','뉴욕은 지하철 재원 마련을 위해 혼잡 통행료 제도를 시행했어요.','congestion pricing','C2','transport',2,'congestion pricing manhattan toll road'),
('w_transport_C2_09','externality','/ˌɛkstɜːrˈnælɪti/','noun','외부 효과 (교통)','Costs or benefits of transport that affect people not directly involved, such as pollution.','The social {externalities} of car use include air pollution and noise.','자동차 이용의 사회적 외부 효과에는 대기 오염과 소음이 포함돼요.','externalities','C2','transport',3,'externality pollution noise city economics'),
('w_transport_C2_10','autonomous vehicle liability','/ɔːˈtɒnəməs ˈviːɪkəl laɪəˈbɪlɪti/','noun','자율 주행 차량 책임','Legal responsibility for accidents caused by self-driving vehicles.','Courts are still debating {autonomous vehicle liability} frameworks.','법원은 아직 자율 주행 차량 책임 프레임워크에 대해 논의 중이에요.','autonomous vehicle liability','C2','transport',3,'autonomous liability legal self-driving law'),
('w_transport_C2_11','propulsion technology','/prəˈpʌlʃən tɛkˈnɒlədʒi/','noun','추진 기술','The engineering systems used to drive vehicles forward.','Hydrogen fuel cells are emerging as a viable {propulsion technology}.','수소 연료 전지가 실행 가능한 추진 기술로 떠오르고 있어요.','propulsion technology','C2','transport',2,'propulsion hydrogen fuel cell vehicle'),
('w_transport_C2_12','smart motorway','/smɑːrt ˈmoʊtərweɪ/','noun','스마트 고속도로','A motorway with technology to manage traffic flow and use the hard shoulder as an extra lane.','{Smart motorway} signs display dynamic speed limits.','스마트 고속도로 표지판은 동적 제한 속도를 표시해요.','smart motorway','C2','transport',2,'smart motorway dynamic sign gantry'),
('w_transport_C2_13','infrastructure deficit','/ˈɪnfrəˌstrʌktʃər ˈdɛfɪsɪt/','noun','기반 시설 부족','A gap between existing transport infrastructure and what is needed.','The region faces a significant transport {infrastructure deficit}.','그 지역은 심각한 교통 기반 시설 부족에 직면해 있어요.','infrastructure deficit','C2','transport',3,'infrastructure deficit rural road old'),
('w_transport_C2_14','MAAS (mobility as a service)','/mæs/','noun','서비스형 모빌리티','A transport model integrating various modes into a single accessible service.','{MaaS} platforms let users plan, book, and pay for all transport in one app.','서비스형 모빌리티 플랫폼은 사용자가 모든 교통을 하나의 앱으로 계획, 예약, 결제할 수 있게 해요.','MaaS','C2','transport',2,'maas mobility app smartphone transport'),
('w_transport_C2_15','regulatory sandbox','/ˈreɡjələtɔːri ˈsændbɒks/','noun','규제 샌드박스','A controlled environment where new transport technologies can be tested without normal regulations.','The government created a {regulatory sandbox} for autonomous vehicles.','정부는 자율 주행 차량을 위한 규제 샌드박스를 만들었어요.','regulatory sandbox','C2','transport',3,'regulatory sandbox innovation pilot'),
('w_transport_C2_16','energy density','/ˈɛnərʤi ˈdɛnsɪti/','noun','에너지 밀도','The amount of energy stored per unit volume in a battery or fuel.','The low {energy density} of current batteries limits electric aircraft range.','현재 배터리의 낮은 에너지 밀도는 전기 항공기 항속 거리를 제한해요.','energy density','C2','transport',3,'energy density battery electric vehicle'),
('w_transport_C2_17','catenation','/ˌkætɪˈneɪʃən/','noun','연장 운행','The practice of linking carriages or trams together for longer trains.','{Catenation} allows the operator to run twelve-carriage trains during peak hours.','연장 운행을 통해 운영사는 피크 시간대에 12량 기차를 운행할 수 있어요.','Catenation','C2','transport',3,'long train carriage platform capacity'),
('w_transport_C2_18','carbon offset','/ˈkɑːrbən ˌɒfset/','noun','탄소 상쇄','A compensatory measure for carbon emissions from transport.','Airlines offer passengers the option to purchase {carbon offsets}.','항공사는 승객들에게 탄소 상쇄권 구매 옵션을 제공해요.','carbon offsets','C2','transport',2,'carbon offset tree forest green'),
('w_transport_C2_19','freight modal split','/freɪt ˈmoʊdəl splɪt/','noun','화물 교통 분담률','The proportion of freight carried by road, rail, sea, and air.','Shifting the {freight modal split} toward rail reduces emissions.','화물 교통 분담률을 철도 쪽으로 전환하면 배출이 줄어요.','freight modal split','C2','transport',3,'freight train truck comparison'),
('w_transport_C2_20','connected vehicle','/kəˈnɛktɪd ˈviːɪkəl/','noun','커넥티드 카','A vehicle that uses internet connectivity to communicate with other vehicles and infrastructure.','A {connected vehicle} can warn drivers of hazards ahead.','커넥티드 카는 운전자에게 전방 위험을 경고할 수 있어요.','connected vehicle','C2','transport',2,'connected vehicle internet smart car'),
('w_transport_C2_21','land use integration','/lænd juːz ˌɪntɪˈɡreɪʃən/','noun','토지 이용 통합','The coordination of transport planning with land use to reduce travel demand.','{Land use integration} reduces the need for long commutes.','토지 이용 통합은 장거리 통근의 필요성을 줄여요.','land use integration','C2','transport',3,'land use planning urban map'),
('w_transport_C2_22','value of time','/ˈvæljuː əv taɪm/','noun','시간 가치 (교통 경제)','An economic measure of how much people value saving travel time.','The {value of time} influences decisions about high-speed rail investment.','시간 가치는 고속철도 투자 결정에 영향을 미쳐요.','value of time','C2','transport',3,'value time economics graph'),
('w_transport_C2_23','peak spreading','/piːk ˈsprɛdɪŋ/','noun','피크 분산','The effect of encouraging travellers to shift journeys away from the busiest times.','Flexible working hours facilitate {peak spreading} on the network.','유연 근무제는 교통망의 피크 분산을 촉진해요.','peak spreading','C2','transport',3,'peak spreading commute flexible hours'),
('w_transport_C2_24','infrastructure bond','/ˈɪnfrəˌstrʌktʃər bɒnd/','noun','인프라 채권','A financial instrument issued to fund transport projects.','The government issued {infrastructure bonds} to finance the new rail line.','정부는 새 철도 노선 건설 자금을 위해 인프라 채권을 발행했어요.','infrastructure bonds','C2','transport',3,'infrastructure bond finance investment'),
('w_transport_C2_25','induced traffic','/ɪnˈdjuːst ˈtræfɪk/','noun','유발 교통량','Additional vehicle traffic created by new road capacity.','Highway expansion often generates {induced traffic} that fills the new lanes.','고속도로 확장은 새 차선을 채우는 유발 교통량을 흔히 만들어요.','induced traffic','C2','transport',3,'induced traffic highway cars congestion'),
('w_transport_C2_26','platooning','/ˈplætuːnɪŋ/','noun','플래투닝 (군집 주행)','The practice of closely grouping vehicles so they travel together as a convoy.','Truck {platooning} can reduce fuel consumption by up to 15%.','트럭 군집 주행은 연료 소비를 최대 15%까지 줄일 수 있어요.','platooning','C2','transport',3,'platooning truck convoy highway'),
('w_transport_C2_27','stochastic demand','/stəˈkæstɪk dɪˈmɑːnd/','noun','확률적 수요','Random variation in transport demand that cannot be precisely predicted.','Operators use modelling to manage {stochastic demand} during events.','운영사는 행사 중 확률적 수요를 관리하기 위해 모델링을 사용해요.','stochastic demand','C2','transport',3,'stochastic demand statistics modelling'),
('w_transport_C2_28','electrolysis','/ɪˈlɛktrɒlɪsɪs/','noun','전기 분해 (수소 생산)','A process using electricity to split water into hydrogen and oxygen for fuel.','Green hydrogen produced by {electrolysis} could power future trains.','전기 분해로 생산된 그린 수소가 미래의 기차를 구동할 수 있어요.','electrolysis','C2','transport',3,'electrolysis hydrogen green energy'),
('w_transport_C2_29','right-of-way acquisition','/raɪt əv weɪ ˌækwɪˈzɪʃən/','noun','용지 취득','The legal process of obtaining land for new transport infrastructure.','Delays in {right-of-way acquisition} pushed back the project timeline.','용지 취득 지연이 프로젝트 일정을 늦췄어요.','right-of-way acquisition','C2','transport',3,'right-of-way land acquisition construction'),
('w_transport_C2_30','operational expenditure','/ˌɒpəˈreɪʃənəl ɪkˈspɛndɪtʃər/','noun','운영 비용','The ongoing costs required to run a transport service.','Rising energy prices have increased {operational expenditure} for train operators.','에너지 가격 상승으로 기차 운영사의 운영 비용이 늘었어요.','operational expenditure','C2','transport',3,'operational expenditure budget finance rail'),
('w_transport_C2_31','catenary','/ˈkætənɛri/','noun','가선 (전차선)','The overhead wire system that supplies electricity to electric trains and trams.','Strong winds damaged the {catenary} and disrupted services.','강풍으로 가선이 손상돼 서비스가 중단됐어요.','catenary','C2','transport',3,'catenary wire overhead railway electric'),
('w_transport_C2_32','modal integration','/ˈmoʊdəl ˌɪntɪˈɡreɪʃən/','noun','교통 수단 통합','The seamless connection between different transport modes for passengers.','The station redesign achieved full {modal integration} between rail and bus.','역 재설계로 철도와 버스 간의 완전한 교통 수단 통합을 이뤘어요.','modal integration','C2','transport',2,'modal integration station bus train'),
('w_transport_C2_33','transport poverty','/ˈtrænsport ˈpɒvərti/','noun','교통 빈곤','The inability to access transport due to cost, availability, or physical barriers.','Rural communities suffer most from {transport poverty}.','농촌 지역 사회가 교통 빈곤으로 가장 많은 어려움을 겪어요.','transport poverty','C2','transport',2,'transport poverty rural isolation'),
('w_transport_C2_34','waypoint','/ˈweɪpɔɪnt/','noun','경유 지점','An intermediate stop or location on a planned route.','The drone delivery system uses GPS {waypoints} to navigate.','드론 배송 시스템은 GPS 경유 지점을 사용해 항법 운행해요.','waypoints','C2','transport',2,'waypoint GPS route navigation drone'),
('w_transport_C2_35','service resilience','/ˈsɜːrvɪs rɪˈzɪliəns/','noun','서비스 회복 탄력성','The capability of a transport service to recover quickly from disruptions.','Investing in redundancy improves {service resilience} during extreme weather.','중복 시스템에 투자하면 극한 날씨 중 서비스 회복 탄력성이 향상돼요.','service resilience','C2','transport',3,'resilience transport weather disruption')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — A1 (7개) : 위치 묻기
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_transport_A1_01','Where is the bus stop?','버스 정류장이 어디예요?','bus stop','"Where is...?" 패턴은 장소를 물을 때 가장 기본적인 표현이에요.','길 찾기','A1','transport','pattern',NULL,1),
('s_transport_A1_02','How do I get to the train station?','기차역에 어떻게 가나요?','How do I get to','"How do I get to...?"는 목적지까지의 방법을 물을 때 쓰는 핵심 표현이에요.','길 찾기','A1','transport','pattern',NULL,2),
('s_transport_A1_03','Is the airport far from here?','공항이 여기서 멀어요?','far from here','"Is... far from here?"로 거리를 확인할 수 있어요.','거리 확인','A1','transport','pattern',NULL,3),
('s_transport_A1_04','Which bus goes to the city centre?','시내 중심까지 몇 번 버스가 가나요?','Which bus goes to','"Which bus goes to...?"는 올바른 버스 노선을 찾을 때 쓰는 표현이에요.','버스 노선 확인','A1','transport','pattern',NULL,4),
('s_transport_A1_05','Turn left at the traffic light.','신호등에서 왼쪽으로 도세요.','Turn left at','"Turn left/right at..."는 방향을 안내할 때 가장 기본적인 표현이에요.','길 안내','A1','transport','pattern',NULL,5),
('s_transport_A1_06','Go straight and then turn right.','직진 후에 오른쪽으로 도세요.','Go straight and then','두 단계 방향을 "and then"으로 자연스럽게 연결할 수 있어요.','길 안내','A1','transport','pattern',NULL,6),
('s_transport_A1_07','Excuse me, can you show me the way to the subway?','실례합니다, 지하철 가는 길을 알려주실 수 있나요?','can you show me the way','"Can you show me the way to...?"는 정중하게 길을 물어볼 때 쓰는 표현이에요.','도움 요청','A1','transport','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_transport_A2_07','Can I use this card to pay for the bus?','이 카드로 버스 요금을 낼 수 있나요?','Can I use this card to pay','"Can I use... to pay?"는 결제 수단을 확인할 때 쓰는 실용적인 표현이에요.','결제 방법','A2','transport','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_transport_B1_07','Watch out — there''s a speed camera just after the junction ahead.','주의하세요 — 바로 앞 교차로 지나서 과속 카메라가 있어요.','Watch out','"Watch out"은 즉각적인 경고를 전달할 때 쓰는 자연스러운 표현이에요.','도로 경고','B1','transport','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_transport_B2_07','Passengers are advised to allow extra travel time due to planned engineering works this weekend.','이번 주말 예정된 공사로 인해 승객들은 여유 있는 이동 시간을 감안하시기 바랍니다.','are advised to allow extra travel time','"are advised to"는 공식 안내문에서 권고 사항을 전달하는 표현이에요.','공식 안내','B2','transport','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_transport_C1_07','Ridesharing platforms have disrupted traditional taxi markets, compelling regulators to revisit licensing frameworks.','승차 공유 플랫폼이 기존 택시 시장을 혼란에 빠뜨려 규제 당국이 면허 프레임워크를 재검토하도록 압박했어요.','compelling regulators to revisit','"compelling... to"는 어떤 결과가 다른 행위를 강제했음을 나타내는 분사 구문이에요.','플랫폼 규제','C1','transport','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

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
('s_transport_C2_07','A comprehensive Mobility as a Service ecosystem presupposes interoperability across competing platforms, a condition that market forces alone are unlikely to deliver without regulatory mandates.','포괄적인 서비스형 모빌리티 생태계는 경쟁 플랫폼 간의 상호 운용성을 전제로 하며, 이는 규제 의무 없이는 시장의 힘만으로 실현되기 어려운 조건이에요.','presupposes interoperability... a condition that market forces alone are unlikely to deliver','"presupposes"와 동격 명사절을 활용한 고도의 학술 논증 문체예요.','MaaS 정책','C2','transport','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;
