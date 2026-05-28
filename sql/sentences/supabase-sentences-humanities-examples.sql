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
