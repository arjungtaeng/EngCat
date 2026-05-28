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
