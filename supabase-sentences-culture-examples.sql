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
