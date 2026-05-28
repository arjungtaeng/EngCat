-- Part 13: Sentences (2/3)

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_C1_01','This study seeks to interrogate the epistemological assumptions underlying conventional pedagogy.','이 연구는 전통적 교수법의 기저에 있는 인식론적 가정을 비판적으로 검토하고자 해요.','interrogate the epistemological assumptions','interrogate는 단순한 검토를 넘어 비판적 질문을 던지는 것을 의미해요.','논문 서론','C1','education','pattern',NULL,1),
('s_education_C1_02','The conceptual framework draws on constructivist and sociocultural theories of learning.','개념적 틀은 구성주의와 사회문화적 학습 이론을 바탕으로 해요.','draws on ... theories','draws on은 이론적 토대를 설명할 때 쓰는 학술적 표현이에요.','이론적 배경','C1','education','pattern',NULL,2),
('s_education_C1_03','The findings substantiate the hypothesis that scaffolding enhances learner autonomy.','연구 결과는 발판식 교수법이 학습자 자율성을 향상시킨다는 가설을 뒷받침해요.','substantiate the hypothesis','substantiate는 주장이나 가설을 증거로 뒷받침함을 의미해요.','연구 결과 기술','C1','education','pattern',NULL,3),
('s_education_C1_04','It is worth noting that the sample size limits the generalisability of these findings.','표본 크기가 연구 결과의 일반화 가능성을 제한한다는 점을 언급할 필요가 있어요.','It is worth noting that','학술 글쓰기에서 한계나 주의사항을 부드럽게 제시하는 표현이에요.','연구 한계 기술','C1','education','pattern',NULL,4),
('s_education_C1_05','Reflexivity demands that the researcher acknowledge their own positionality.','성찰성은 연구자가 자신의 위치성을 인정할 것을 요구해요.','demands that the researcher acknowledge','연구 윤리 논의에서 연구자의 성찰을 강조하는 학술 표현이에요.','연구 윤리','C1','education','pattern',NULL,5),
('s_education_C1_06','The literature review reveals a significant lacuna in studies on postgraduate wellbeing.','문헌 검토는 대학원생 복지에 관한 연구의 중요한 공백을 드러내요.','reveals a significant lacuna','lacuna는 지식이나 연구의 빈 공간을 뜻하는 고급 학술 어휘예요.','문헌 검토','C1','education','pattern',NULL,6),
('s_education_C1_07','This paper posits that critical pedagogy must account for the socioeconomic context of learners.','이 논문은 비판적 교수법이 학습자의 사회경제적 맥락을 고려해야 한다고 상정해요.','posits that','posit은 논문에서 핵심 가정이나 전제를 제시할 때 쓰는 정확한 학술어예요.','논문 핵심 주장','C1','education','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C2 (7)
-- 주제: 최고급 학술 표현 / 철학적 논증
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_education_C2_01','Derrida''s deconstructive reading destabilises the binary between teacher authority and learner agency.','데리다의 해체적 독해는 교사 권위와 학습자 주체성의 이분법을 불안정하게 해요.','destabilises the binary between','destabilise a binary는 후기 구조주의 담론에서 핵심적인 표현이에요.','철학적 비평','C2','education','pattern',NULL,1),
('s_education_C2_02','Foucault''s episteme provides a lens through which to examine the archaeology of educational knowledge.','푸코의 에피스테메는 교육 지식의 고고학을 검토하는 렌즈를 제공해요.','provides a lens through which to examine','provides a lens through which는 고급 학술 글쓰기에서 분석 도구를 소개할 때 쓰는 전형적 표현이에요.','담론 분석','C2','education','pattern',NULL,2),
('s_education_C2_03','The falsifiability criterion challenges normative assumptions embedded in positivist research paradigms.','반증 가능성 기준은 실증주의 연구 패러다임에 내재된 규범적 가정에 도전해요.','challenges normative assumptions embedded in','embedded in은 무언가가 더 큰 구조 속에 깊이 자리 잡고 있음을 표현해요.','과학 철학 논의','C2','education','pattern',NULL,3),
('s_education_C2_04','Hegemonic discourse in curricula reproduces socioeconomic inequalities through the hidden curriculum.','교육 과정의 헤게모니적 담론은 잠재적 교육 과정을 통해 사회경제적 불평등을 재생산해요.','reproduces ... through the hidden curriculum','hidden curriculum은 공식 과목 외에 무의식적으로 전달되는 가치를 뜻하는 교육학 용어예요.','비판 교육학','C2','education','pattern',NULL,4),
('s_education_C2_05','Phenomenological inquiry foregrounds the lived experience of learners as the primary unit of analysis.','현상학적 탐구는 학습자의 살아있는 경험을 분석의 주요 단위로 전면에 내세워요.','foregrounds the lived experience','foreground는 무언가를 중심이나 전면에 배치한다는 의미의 학술적 동사예요.','연구 방법론 논의','C2','education','pattern',NULL,5),
('s_education_C2_06','Rhizomatic learning theory, as advanced by Cormier, resists arborescent models of knowledge transmission.','코미에가 발전시킨 리좀적 학습 이론은 나무형 지식 전달 모델에 저항해요.','resists arborescent models','arborescent은 나무처럼 계층적이고 선형적인 구조를 뜻하는 들뢰즈 철학 용어예요.','교육 이론 논의','C2','education','pattern',NULL,6),
('s_education_C2_07','The praxis-oriented approach collapses the distinction between knowledge production and social transformation.','프락시스 지향 접근은 지식 생산과 사회 변혁 사이의 구분을 무너뜨려요.','collapses the distinction between','collapse a distinction은 두 개념 사이의 경계를 허물 때 쓰는 고급 학술 표현이에요.','비판 이론','C2','education','pattern',NULL,7);

-- supabase-words-media.sql
-- EngCat — 미디어·SNS (media) 단어 + 패턴 문장
-- CEFR A1~C2 × 35단어 = 210단어
-- CEFR A1~C2 × 7패턴  =  42패턴

-- ══════════════════════════════════════
-- WORDS — A1
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_media_A1_01','Did you see that video?','그 영상 봤어요?','Did you see','과거에 이미 일어난 일을 물을 때는 Did you see...?를 써요. Have you seen...?보다 더 캐주얼해요.','영상 공유','A1','media','pattern',NULL,1),
('s_media_A1_02','You should watch this — it''s really funny.','이거 봐요. 정말 웃겨요.','You should watch','상대방에게 뭔가를 추천할 때 You should + 동사가 가장 간단하고 자연스러운 표현이에요.','콘텐츠 추천','A1','media','pattern',NULL,2),
('s_media_A1_03','I''ll send you the link right now.','지금 링크 보내 줄게요.','I''ll send you','즉각적인 행동을 약속할 때는 I''ll + 동사를 써요. 대화할 때 자주 쓰이는 패턴이에요.','링크 공유','A1','media','pattern',NULL,3),
('s_media_A1_04','What are you watching?','뭐 보고 있어요?','What are you watching','상대방이 지금 하고 있는 행동을 물을 때는 What are you + -ing?를 써요.','일상 대화','A1','media','pattern',NULL,4),
('s_media_A1_05','Have you heard the news today?','오늘 뉴스 들었어요?','Have you heard','최근 소식을 아는지 확인할 때는 Have you heard...?를 써요.','뉴스 확인','A1','media','pattern',NULL,5),
('s_media_A1_06','This photo is amazing — where did you take it?','이 사진 정말 대단해요. 어디서 찍었어요?','where did you take it','사진을 칭찬하며 장소를 물을 때 자연스러운 표현이에요. where did you + 동사 패턴이에요.','사진 감상','A1','media','pattern',NULL,6),
('s_media_A1_07','I listen to music on my phone every day.','저는 매일 휴대폰으로 음악을 들어요.','listen to music on my phone','습관을 말할 때는 현재 시제를 써요. on my phone은 기기를 나타낼 때 유용한 표현이에요.','음악 습관','A1','media','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (SNS 활동)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_media_A2_01','I just posted a photo — go check it out!','방금 사진 올렸어요. 가서 확인해 봐요!','go check it out','I just + 과거형은 방금 한 행동을 알릴 때 써요. go check it out은 친근하게 행동을 유도하는 표현이에요.','SNS 게시','A2','media','pattern',NULL,1),
('s_media_A2_02','Don''t forget to like and subscribe!','좋아요 누르고 구독도 잊지 마세요!','Don''t forget to','Don''t forget to + 동사는 무언가를 상기시킬 때 써요. 유튜브 영상에서 자주 들을 수 있어요.','채널 홍보','A2','media','pattern',NULL,2),
('s_media_A2_03','I''ve been following her for years — her content is great.','몇 년째 팔로우하고 있어요. 콘텐츠가 정말 좋아요.','I''ve been following','I''ve been + -ing는 과거부터 현재까지 계속된 행동을 나타내요.','팔로우 추천','A2','media','pattern',NULL,3),
('s_media_A2_04','Have you seen what''s trending today?','오늘 트렌딩에 뭐 있는지 봤어요?','Have you seen what''s trending','최근 유행 중인 것을 묻는 표현이에요. trending은 SNS에서 핵심 키워드예요.','트렌딩 화제','A2','media','pattern',NULL,4),
('s_media_A2_05','She uploaded a new video — it already has a million views.','그녀가 새 영상을 올렸어요. 벌써 조회수가 백만이에요.','already has a million views','already는 예상보다 일찍 일어난 일에 대한 놀라움을 강조해요.','조회수 화제','A2','media','pattern',NULL,5),
('s_media_A2_06','You can find me on Instagram at @username.','인스타그램에서 @username으로 찾을 수 있어요.','You can find me on','SNS 계정을 알려줄 때 You can find me on + 플랫폼 at + @계정명 패턴을 써요.','계정 소개','A2','media','pattern',NULL,6),
('s_media_A2_07','I''ve been spending too much time scrolling lately.','요즘 스크롤하면서 시간을 너무 많이 보내고 있어요.','spending too much time scrolling','I''ve been + -ing는 최근의 습관이나 상태를 반성할 때 유용해요.','SNS 과다 사용','A2','media','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B1 (콘텐츠 추천 및 알고리즘)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_media_B1_01','The algorithm keeps recommending the same type of content.','알고리즘이 계속 같은 유형의 콘텐츠를 추천해요.','keeps recommending','keep + -ing는 어떤 행동이 반복되거나 계속됨을 나타내요. 알고리즘을 주어로 쓰는 것이 자연스러워요.','알고리즘 불만','B1','media','pattern',NULL,1),
('s_media_B1_02','I''ve been trying to grow my channel for about six months now.','채널을 키우려고 약 6개월째 노력 중이에요.','I''ve been trying to grow','I''ve been trying to + 동사는 어느 시점부터 계속 노력 중임을 표현해요. for about은 대략적인 기간에 써요.','채널 운영','B1','media','pattern',NULL,2),
('s_media_B1_03','If you want more reach, you need to post consistently.','도달 범위를 늘리려면 꾸준히 게시해야 해요.','If you want ... you need to','조건절 if를 이용해 실용적인 조언을 전달할 때 쓰는 패턴이에요.','SNS 성장 조언','B1','media','pattern',NULL,3),
('s_media_B1_04','The engagement rate tells you whether the content is working.','참여율이 콘텐츠가 효과적인지 알려줘요.','tells you whether','whether는 두 가지 가능성이 있을 때 써요. tell you whether는 분석을 설명할 때 유용해요.','콘텐츠 분석','B1','media','pattern',NULL,4),
('s_media_B1_05','I''m thinking of starting a podcast — what do you think?','팟캐스트를 시작할까 생각 중이에요. 어떻게 생각해요?','I''m thinking of starting','I''m thinking of + -ing는 아직 결정하지 않은 계획을 조심스럽게 꺼낼 때 써요.','미디어 창작 계획','B1','media','pattern',NULL,5),
('s_media_B1_06','Did you see that video went viral overnight?','그 영상이 하룻밤 사이에 바이럴된 거 봤어요?','went viral overnight','go viral은 콘텐츠가 폭발적으로 퍼지는 것을 뜻해요. overnight은 매우 빠른 확산을 강조해요.','바이럴 화제','B1','media','pattern',NULL,6),
('s_media_B1_07','I always check the analytics before deciding what to post next.','다음에 뭘 올릴지 결정하기 전에 항상 분석 데이터를 확인해요.','before deciding what to post','before + -ing는 어떤 행동을 하기 전의 습관을 나타내요. 콘텐츠 전략 설명에 유용해요.','콘텐츠 전략','B1','media','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B2 (미디어 비평)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_media_B2_01','The headline is clearly designed to be clickbait.','그 제목은 명백히 낚시성으로 설계된 거예요.','clearly designed to be','is designed to + 동사는 의도된 목적을 비판할 때 효과적인 표현이에요. clearly가 확신의 강도를 높여요.','미디어 비판','B2','media','pattern',NULL,1),
('s_media_B2_02','I''m concerned about how misinformation spreads so quickly on social media.','소셜 미디어에서 잘못된 정보가 이렇게 빨리 퍼지는 게 걱정돼요.','I''m concerned about how','I''m concerned about how + 절은 사회적 문제에 대한 우려를 표명할 때 격식적이고 자연스러운 패턴이에요.','미디어 우려','B2','media','pattern',NULL,2),
('s_media_B2_03','You need to fact-check before you share anything online.','온라인에서 무언가를 공유하기 전에 팩트체크를 해야 해요.','fact-check before you share','You need to + 동사는 강한 필요성을 나타내요. before you + 동사는 순서를 강조해요.','팩트체크 조언','B2','media','pattern',NULL,3),
('s_media_B2_04','The way the story was framed really influenced how I felt about it.','그 이야기가 프레이밍된 방식이 제 감정에 정말 큰 영향을 줬어요.','The way ... was framed','The way + 절은 어떤 사건이 제시된 방식을 분석할 때 쓰는 고급 패턴이에요.','미디어 프레이밍','B2','media','pattern',NULL,4),
('s_media_B2_05','It''s hard to tell whether a source is reliable these days.','요즘에는 출처가 신뢰할 수 있는지 판단하기 어려워요.','It''s hard to tell whether','It''s hard to + 동사 패턴은 어려움을 공유할 때 써요. whether는 두 가능성 사이의 불확실성을 나타내요.','정보 신뢰성','B2','media','pattern',NULL,5),
('s_media_B2_06','Social media algorithms tend to reinforce our existing beliefs.','소셜 미디어 알고리즘은 우리의 기존 믿음을 강화하는 경향이 있어요.','tend to reinforce','tend to + 동사는 일반적인 경향이나 패턴을 말할 때 써요. 분석적인 주장을 부드럽게 만들어줘요.','에코 챔버 논의','B2','media','pattern',NULL,6),
('s_media_B2_07','What concerns me most is the lack of transparency in how these platforms operate.','가장 걱정되는 건 이 플랫폼들이 운영되는 방식의 투명성 부재예요.','What concerns me most is','What concerns me most is + 절은 자신의 핵심 우려를 강조하며 시작하는 고급 문어체 패턴이에요.','플랫폼 비판','B2','media','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C1 (미디어 영향력 논의)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_media_C1_01','The media''s agenda-setting power shapes which issues we consider worth discussing.','미디어의 의제 설정 능력은 우리가 논의할 가치가 있다고 여기는 사안을 형성해요.','agenda-setting power shapes','agenda-setting power는 미디어 이론의 핵심 개념이에요. shapes + 절은 인과 관계를 설명해요.','미디어 권력 분석','C1','media','pattern',NULL,1),
('s_media_C1_02','The proliferation of social media has fundamentally disrupted traditional gatekeeping.','소셜 미디어의 확산은 전통적인 게이트키핑을 근본적으로 혼란에 빠뜨렸어요.','fundamentally disrupted','fundamentally + 과거분사는 심층적인 구조 변화를 강조해요. disrupted는 혁신 담론에서 핵심 동사예요.','미디어 구조 변화','C1','media','pattern',NULL,2),
('s_media_C1_03','One could argue that the attention economy is designed to undermine our cognitive autonomy.','관심 경제는 우리의 인지적 자율성을 약화시키도록 설계되어 있다고 주장할 수 있어요.','One could argue that','One could argue that...은 논쟁의 여지 있는 주장을 조심스럽게 제시할 때 쓰는 학술적 패턴이에요.','관심 경제 비판','C1','media','pattern',NULL,3),
('s_media_C1_04','What''s particularly troubling is the way disinformation campaigns exploit our confirmation bias.','특히 걱정스러운 것은 허위정보 캠페인이 우리의 확증 편향을 악용하는 방식이에요.','What''s particularly troubling is','What''s + 형용사 + is는 핵심 문제를 강조하는 C1 수준 강조 구문이에요.','허위정보 분석','C1','media','pattern',NULL,4),
('s_media_C1_05','Platform governance needs to balance free expression with accountability.','플랫폼 거버넌스는 표현의 자유와 책임 사이의 균형을 잡아야 해요.','needs to balance ... with','need to balance A with B는 두 가지 상충하는 가치를 논의할 때 쓰는 고급 표현이에요.','플랫폼 정책 논의','C1','media','pattern',NULL,5),
('s_media_C1_06','The erosion of editorial independence poses a long-term threat to democratic discourse.','편집권 독립의 침식은 민주적 담론에 장기적인 위협이 돼요.','poses a long-term threat to','pose a threat to는 위험을 공식적으로 서술할 때 써요. erosion은 점진적 약화를 나타내는 핵심 명사예요.','언론 자유 논의','C1','media','pattern',NULL,6),
('s_media_C1_07','Unless we develop robust media literacy education, we will remain vulnerable to manipulation.','탄탄한 미디어 리터러시 교육을 개발하지 않으면 조작에 취약한 상태가 지속돼요.','Unless we develop ... we will remain','Unless + 현재형은 조건의 부재를 강조해요. remain vulnerable to는 위험 상태의 지속성을 표현해요.','미디어 교육 필요성','C1','media','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C2 (미디어 영향력 심화 논의)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_media_C2_01','Baudrillard''s concept of hyperreality suggests that media no longer represents reality but has replaced it.','보드리야르의 초현실 개념은 미디어가 더 이상 현실을 재현하지 않고 현실 자체를 대체했음을 시사해요.','no longer represents ... but has replaced','no longer A but has B 구조는 근본적인 전환을 표현하는 학술적 패턴이에요.','미디어 철학 논의','C2','media','pattern',NULL,1),
('s_media_C2_02','From a Habermasian perspective, algorithmic curation fundamentally distorts the conditions for rational public discourse.','하버마스적 관점에서 보면 알고리즘 큐레이션은 합리적 공론장 담론의 조건을 근본적으로 왜곡해요.','From a Habermasian perspective','From a [이론가/학파] perspective는 학술 토론에서 이론적 입장을 명확히 밝히는 패턴이에요.','미디어 이론 적용','C2','media','pattern',NULL,2),
('s_media_C2_03','The commodification of attention is arguably the defining logic of twenty-first-century media capitalism.','관심의 상품화는 21세기 미디어 자본주의의 결정적 논리라고 볼 수 있어요.','The commodification of ... is arguably the defining logic','is arguably the defining logic of는 핵심 특성을 주장하는 강력한 학술적 술어예요.','미디어 경제 비판','C2','media','pattern',NULL,3),
('s_media_C2_04','One cannot disentangle the question of media power from broader structures of political and economic hegemony.','미디어 권력의 문제는 정치·경제적 헤게모니의 광범위한 구조에서 분리할 수 없어요.','One cannot disentangle ... from','One cannot disentangle A from B는 두 개념이 불가분의 관계임을 주장하는 학술적 패턴이에요.','구조적 분석','C2','media','pattern',NULL,4),
('s_media_C2_05','The epistemological implications of deepfake technology call into question the evidentiary status of audiovisual media.','딥페이크 기술의 인식론적 함의는 시청각 미디어의 증거적 지위에 의문을 제기해요.','call into question the ... status of','call into question은 근본 전제에 이의를 제기할 때 쓰는 학술 필수 표현이에요.','딥페이크 철학','C2','media','pattern',NULL,5),
('s_media_C2_06','Semiotics reveals how media texts encode ideological assumptions that audiences may naturalise without critical reflection.','기호학은 미디어 텍스트가 비판적 성찰 없이 수용자가 자연스럽게 받아들일 수 있는 이데올로기적 가정을 어떻게 코드화하는지 드러내요.','encode ideological assumptions that audiences may naturalise','encode + 목적어 + that절은 숨겨진 의미 구조를 분석하는 기호학적 패턴이에요.','기호학적 분석','C2','media','pattern',NULL,6),
('s_media_C2_07','To the extent that platforms function as ideological state apparatuses, regulating them is not merely a technical but a deeply political project.','플랫폼이 이데올로기적 국가 기구로 기능하는 한, 플랫폼 규제는 단순히 기술적인 것이 아니라 깊이 정치적인 프로젝트예요.','To the extent that ... not merely ... but','To the extent that는 조건의 범위를 한정하는 C2 수준 패턴이에요. not merely A but B는 더 깊은 차원을 강조해요.','플랫폼 규제 논쟁','C2','media','pattern',NULL,7);

-- supabase-words-environment.sql
-- EngCat · Topic: environment (환경)
-- 210 words (35 per CEFR level A1–C2) + 42 sentence patterns (7 per level)
-- Generated: 2026-05-24

-- ============================================================
-- WORDS
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES

-- ────────────────────────────────────────────────────────────
-- A1 · 환경 실천 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_environment_A1_01','Let''s recycle this.','이거 재활용해요.','Let''s recycle','Let''s...는 함께 무언가를 하자고 제안할 때 써요.','환경 실천','A1','environment','pattern',NULL,1),
('s_environment_A1_02','Don''t waste water.','물을 낭비하지 마세요.','Don''t waste','Don''t + 동사원형은 금지 또는 권고를 나타내요.','환경 실천','A1','environment','pattern',NULL,2),
('s_environment_A1_03','Please pick up the litter.','쓰레기를 주워주세요.','pick up the litter','Please + 명령문은 정중하게 요청할 때 사용해요.','환경 실천','A1','environment','pattern',NULL,3),
('s_environment_A1_04','The sky looks very blue today.','오늘 하늘이 정말 파래 보여요.','looks very blue','look + 형용사는 외관을 묘사할 때 써요.','환경 실천','A1','environment','pattern',NULL,4),
('s_environment_A1_05','I love walking in the forest.','저는 숲속에서 걷는 걸 좋아해요.','love walking','love + -ing는 좋아하는 활동을 말할 때 써요.','환경 실천','A1','environment','pattern',NULL,5),
('s_environment_A1_06','We need clean water to live.','우리는 살기 위해 깨끗한 물이 필요해요.','need clean water','need + 명사는 필요한 것을 표현해요.','환경 실천','A1','environment','pattern',NULL,6),
('s_environment_A1_07','Turn off the light when you leave.','나갈 때 불을 꺼주세요.','Turn off the light','Turn off...는 절전·절약 행동을 권고할 때 흔히 써요.','환경 실천','A1','environment','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- A2 · 재활용·절약 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_environment_A2_01','You should separate your recyclables.','재활용품을 분리해야 해요.','should separate','should + 동사원형은 의무나 권고를 나타내요.','재활용·절약','A2','environment','pattern',NULL,1),
('s_environment_A2_02','Try to use less plastic every day.','매일 플라스틱을 덜 쓰려고 노력해보세요.','Try to use less','Try to + 동사원형은 노력을 권장할 때 써요.','재활용·절약','A2','environment','pattern',NULL,2),
('s_environment_A2_03','Taking public transport reduces pollution.','대중교통 이용이 오염을 줄여요.','reduces pollution','동명사 주어는 행동 자체의 효과를 설명할 때 자연스러워요.','재활용·절약','A2','environment','pattern',NULL,3),
('s_environment_A2_04','Have you tried composting your food scraps?','음식물 쓰레기 퇴비로 만들어 보셨어요?','tried composting','Have you tried + -ing는 새로운 방법을 제안할 때 써요.','재활용·절약','A2','environment','pattern',NULL,4),
('s_environment_A2_05','It''s important to save energy at home.','집에서 에너지를 절약하는 것이 중요해요.','It''s important to','It''s important to + 동사원형은 중요성을 강조해요.','재활용·절약','A2','environment','pattern',NULL,5),
('s_environment_A2_06','I always bring my own bag to the shop.','저는 항상 가게에 개인 가방을 가져가요.','always bring my own','always + 현재시제는 반복 습관을 나타내요.','재활용·절약','A2','environment','pattern',NULL,6),
('s_environment_A2_07','Why don''t we plant some trees this weekend?','이번 주말에 나무를 심는 건 어때요?','Why don''t we plant','Why don''t we...는 함께 하는 활동을 제안할 때 써요.','재활용·절약','A2','environment','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- B1 · 기후 변화 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_environment_B1_01','Climate change is affecting every country in the world.','기후 변화는 세계 모든 나라에 영향을 미치고 있어요.','is affecting every country','현재진행형은 지금도 계속되는 변화를 강조해요.','기후 변화','B1','environment','pattern',NULL,1),
('s_environment_B1_02','If we reduce emissions now, we can slow global warming.','지금 배출량을 줄이면 지구 온난화를 늦출 수 있어요.','If we reduce...we can','If + 현재시제, 주어 + can은 현실적 가능성을 나타내요.','기후 변화','B1','environment','pattern',NULL,2),
('s_environment_B1_03','Renewable energy is becoming cheaper every year.','재생에너지는 매년 더 저렴해지고 있어요.','is becoming cheaper','is becoming + 비교급은 점진적 변화를 표현해요.','기후 변화','B1','environment','pattern',NULL,3),
('s_environment_B1_04','Scientists have warned us about the dangers of deforestation.','과학자들은 삼림 벌채의 위험성에 대해 경고해왔어요.','have warned us about','현재완료는 과거부터 지금까지 이어진 경고를 강조해요.','기후 변화','B1','environment','pattern',NULL,4),
('s_environment_B1_05','We need to find a balance between development and conservation.','개발과 보전 사이의 균형을 찾아야 해요.','find a balance between','find a balance between A and B는 균형의 필요성을 논할 때 유용해요.','기후 변화','B1','environment','pattern',NULL,5),
('s_environment_B1_06','Many species are at risk of extinction due to habitat loss.','서식지 손실로 인해 많은 종이 멸종 위기에 처해 있어요.','at risk of extinction due to','due to + 명사는 원인을 간결하게 설명해요.','기후 변화','B1','environment','pattern',NULL,6),
('s_environment_B1_07','Switching to solar energy would significantly cut our carbon footprint.','태양 에너지로 전환하면 탄소 발자국을 크게 줄일 수 있어요.','would significantly cut','조동사 would는 가정적 결과나 권고를 부드럽게 표현해요.','기후 변화','B1','environment','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- B2 · 환경 정책 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_environment_B2_01','Governments must implement stricter emission controls without delay.','정부는 지체 없이 더 엄격한 배출 규제를 시행해야 해요.','must implement stricter','must + 동사원형은 강한 의무를 나타내고, stricter는 비교급으로 강도를 높여요.','환경 정책','B2','environment','pattern',NULL,1),
('s_environment_B2_02','A carbon tax could incentivise businesses to invest in clean technology.','탄소세는 기업들이 청정 기술에 투자하도록 유도할 수 있어요.','could incentivise businesses to','could + 동사원형은 정책 효과를 신중하게 제안할 때 써요.','환경 정책','B2','environment','pattern',NULL,2),
('s_environment_B2_03','Unless drastic action is taken, we will exceed the 1.5 degree threshold.','과감한 조치가 취해지지 않으면 1.5도 한계를 초과할 거예요.','Unless drastic action is taken','Unless + 수동태 절은 조건의 부정을 강조해요.','환경 정책','B2','environment','pattern',NULL,3),
('s_environment_B2_04','Sustainable development requires balancing economic growth with ecological preservation.','지속 가능한 개발은 경제 성장과 생태 보전의 균형을 필요로 해요.','requires balancing...with','require + 동명사는 필수 조건을 나타내요.','환경 정책','B2','environment','pattern',NULL,4),
('s_environment_B2_05','The treaty obliges all signatories to report their greenhouse gas emissions annually.','그 조약은 모든 서명국이 온실가스 배출량을 매년 보고하도록 의무화해요.','obliges all signatories to','oblige + 목적어 + to 부정사는 공식적 의무를 표현해요.','환경 정책','B2','environment','pattern',NULL,5),
('s_environment_B2_06','By investing in reforestation, we can partially offset our carbon emissions.','재조림에 투자함으로써 탄소 배출량을 부분적으로 상쇄할 수 있어요.','By investing in...we can partially offset','By + -ing는 수단을, partially offset은 현실적 기대치를 표현해요.','환경 정책','B2','environment','pattern',NULL,6),
('s_environment_B2_07','Public awareness campaigns have proven effective in changing consumer behaviour.','공공 인식 제고 캠페인은 소비자 행동 변화에 효과적인 것으로 입증됐어요.','have proven effective in changing','have proven + 형용사 + in + -ing는 증거에 기반한 주장을 나타내요.','환경 정책','B2','environment','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- C1 · 기후 과학 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_environment_C1_01','Anthropogenic emissions have unequivocally altered the Earth''s energy balance.','인위적 배출이 지구의 에너지 균형을 명백히 변화시켰어요.','have unequivocally altered','현재완료 + 부사(unequivocally)는 과학적 확신을 강조해요.','기후 과학','C1','environment','pattern',NULL,1),
('s_environment_C1_02','The precautionary principle dictates that we act before scientific consensus is fully established.','사전 예방 원칙은 과학적 합의가 완전히 형성되기 전에 행동하도록 요구해요.','dictates that we act before','dictate that + 절은 원칙이나 규범이 요구하는 바를 표현해요.','기후 과학','C1','environment','pattern',NULL,2),
('s_environment_C1_03','Decarbonizing the energy sector is widely regarded as the most urgent priority.','에너지 부문의 탈탄소화는 가장 시급한 과제로 널리 여겨지고 있어요.','is widely regarded as the most urgent','수동태 + widely는 광범위한 전문가 의견을 전달해요.','기후 과학','C1','environment','pattern',NULL,3),
('s_environment_C1_04','Trophic cascades illustrate how the removal of a single species can destabilise an entire ecosystem.','영양 단계 연쇄반응은 단 한 종의 제거가 전체 생태계를 불안정하게 만들 수 있음을 보여줘요.','how the removal of a single species can destabilise','간접의문문 + can은 복잡한 생태적 메커니즘을 설명할 때 유용해요.','기후 과학','C1','environment','pattern',NULL,4),
('s_environment_C1_05','Paleoclimatological records suggest that today''s warming is unprecedented in at least 800,000 years.','고기후학 기록은 오늘날의 온난화가 최소 80만 년 중 전례 없는 것임을 시사해요.','suggest that...is unprecedented in','suggest that + 절은 증거에 기반한 신중한 주장을 나타내요.','기후 과학','C1','environment','pattern',NULL,5),
('s_environment_C1_06','Geoengineering proposals must be evaluated against the risk of unintended ecological consequences.','지구공학 제안은 의도치 않은 생태적 결과의 위험과 대비해 평가돼야 해요.','must be evaluated against the risk of','must be + 과거분사는 필수적 절차를 강조하는 수동태예요.','기후 과학','C1','environment','pattern',NULL,6),
('s_environment_C1_07','Carbon sinks are increasingly being overwhelmed by the volume of anthropogenic emissions.','탄소 흡수원은 인위적 배출량의 규모에 점점 압도당하고 있어요.','are increasingly being overwhelmed','현재진행 수동태 + increasingly는 악화되는 추세를 생생하게 표현해요.','기후 과학','C1','environment','pattern',NULL,7),

-- ────────────────────────────────────────────────────────────
-- C2 · 기후 과학 (7 patterns)
-- ────────────────────────────────────────────────────────────
('s_environment_C2_01','Radiative forcing data confirm that positive feedbacks are amplifying initial warming signals.','복사 강제력 데이터는 양의 피드백이 초기 온난화 신호를 증폭시키고 있음을 확인해줘요.','confirm that positive feedbacks are amplifying','confirm that + 절은 데이터에 근거한 단정적 결론을 표현해요.','기후 과학','C2','environment','pattern',NULL,1),
('s_environment_C2_02','Thermohaline circulation disruption could have cascading consequences for global heat distribution.','열염 순환 붕괴는 전 지구적 열 분배에 연쇄적 결과를 초래할 수 있어요.','could have cascading consequences for','could have + 명사는 잠재적이지만 심각한 결과를 신중하게 표현해요.','기후 과학','C2','environment','pattern',NULL,2),
('s_environment_C2_03','Permafrost thaw is projected to release gigatons of carbon, potentially creating a runaway feedback loop.','영구 동토층 해빙은 수십억 톤의 탄소를 방출해 통제 불가능한 피드백 루프를 만들 가능성이 있어요.','is projected to release...potentially creating','is projected to + 동사원형은 모델 기반 전망을, -ing는 동반 결과를 표현해요.','기후 과학','C2','environment','pattern',NULL,3),
('s_environment_C2_04','Crossing planetary boundaries simultaneously increases the likelihood of abrupt, nonlinear Earth system transitions.','행성 한계를 동시에 넘으면 갑작스럽고 비선형적인 지구 시스템 전환이 발생할 가능성이 높아져요.','increases the likelihood of abrupt, nonlinear','increase the likelihood of + 명사는 확률적 위험을 학술적으로 표현해요.','기후 과학','C2','environment','pattern',NULL,4),
('s_environment_C2_05','Teleconnections demonstrate that seemingly localised climate events can propagate disruptions across hemispheres.','원격 상관은 겉으로 보기에 국지적인 기후 현상이 반구를 가로질러 교란을 전파할 수 있음을 보여줘요.','demonstrate that...can propagate disruptions across','demonstrate that + 절은 메커니즘의 입증을, across는 지리적 범위를 강조해요.','기후 과학','C2','environment','pattern',NULL,5),
('s_environment_C2_06','Dendroclimatological proxies corroborate instrumental records, strengthening confidence in reconstructed temperature anomalies.','수목기후학 대리자료는 기기 기록을 뒷받침하여 재구성된 기온 이상에 대한 신뢰도를 높여요.','corroborate...strengthening confidence in','corroborate + 목적어는 복수의 증거가 일치함을 표현하는 학술적 동사예요.','기후 과학','C2','environment','pattern',NULL,6),
('s_environment_C2_07','Achieving net zero necessitates a systemic transformation of energy, agriculture, and land-use paradigms.','넷제로 달성은 에너지, 농업, 토지 이용 패러다임의 전면적 전환을 필요로 해요.','necessitates a systemic transformation of','necessitate + 명사는 단순한 필요를 넘어 근본적 변화의 불가피성을 나타내요.','기후 과학','C2','environment','pattern',NULL,7);

-- supabase-words-economy.sql
-- EngCat — Economy (경제) 단어 & 패턴 데이터
-- 210 words (35 per CEFR level: A1~C2) + 42 patterns (7 per level)
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (기초: 돈·가격·구매)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_economy_A1_01','How much does this cost?','이게 얼마예요?','How much does this cost','가장 기본적인 가격 질문. "How much is this?"로도 써요.','가격 물어보기','A1','economy','pattern',NULL,1),
('s_economy_A1_02','Can I pay by card?','카드로 계산할 수 있나요?','pay by card','계산 방법을 물을 때 pay by card/cash 표현을 써요.','계산','A1','economy','pattern',NULL,2),
('s_economy_A1_03','Do you have anything cheaper?','더 저렴한 것이 있나요?','anything cheaper','anything + 비교급으로 더 나은 선택지를 물어봐요.','쇼핑 협상','A1','economy','pattern',NULL,3),
('s_economy_A1_04','I''ll take it.','이것으로 할게요.','I''ll take it','구매를 결정할 때 쓰는 짧고 자연스러운 표현이에요.','구매 결정','A1','economy','pattern',NULL,4),
('s_economy_A1_05','Can I get a receipt, please?','영수증 주실 수 있나요?','Can I get a receipt','정중한 요청에 "Can I get ~?"은 아주 자연스러운 표현이에요.','계산 후','A1','economy','pattern',NULL,5),
('s_economy_A1_06','Is there a discount?','할인이 있나요?','Is there a discount','세일이나 특별가를 물을 때 가장 많이 쓰는 표현이에요.','쇼핑','A1','economy','pattern',NULL,6),
('s_economy_A1_07','Keep the change.','거스름돈은 괜찮아요.','Keep the change','팁을 주거나 소액 거스름돈을 포기할 때 쓰는 표현이에요.','현금 계산','A1','economy','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (저축·대출 패턴, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_economy_A2_01','I''m trying to save up for a trip.','여행을 위해 저축하려고 해요.','save up for','save up for + 명사: 특정 목표를 위해 돈을 모을 때 써요.','저축 목표','A2','economy','pattern',NULL,1),
('s_economy_A2_02','I need to stick to my budget this month.','이번 달은 예산을 지켜야 해요.','stick to my budget','stick to my budget: 계획된 금액 안에서 쓰겠다는 의미예요.','예산 관리','A2','economy','pattern',NULL,2),
('s_economy_A2_03','Can I apply for a loan here?','여기서 대출 신청을 할 수 있나요?','apply for a loan','apply for + 명사: 대출, 직업, 비자 등을 신청할 때 사용해요.','은행 방문','A2','economy','pattern',NULL,3),
('s_economy_A2_04','My credit card bill came out to a lot this month.','이번 달 신용카드 명세서가 많이 나왔어요.','came out to','came out to + 금액: 최종 금액이 얼마가 나왔다고 말할 때 써요.','카드 명세서','A2','economy','pattern',NULL,4),
('s_economy_A2_05','I get paid at the end of the month.','월말에 급여를 받아요.','get paid','get paid: 급여가 지급된다는 표현. 능동형보다 훨씬 자연스러워요.','급여 관련','A2','economy','pattern',NULL,5),
('s_economy_A2_06','I''m in debt right now, so I can''t afford it.','지금 빚이 있어서 그것을 살 여유가 없어요.','in debt','in debt: 빚이 있는 상태. "I owe money"보다 더 자연스러운 표현이에요.','금전 상황','A2','economy','pattern',NULL,6),
('s_economy_A2_07','Could you transfer the money to my account?','제 계좌로 이체해 주실 수 있나요?','transfer the money to my account','transfer A to B: A를 B로 이체하다. 은행 업무에서 자주 써요.','송금 요청','A2','economy','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B1 (경제 지표 논의 패턴, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_economy_B1_01','Inflation has been rising steadily over the past few months.','지난 몇 달 동안 인플레이션이 꾸준히 상승해 왔어요.','has been rising steadily','현재완료 진행형은 과거부터 지금까지 계속되는 변화를 표현할 때 써요.','경제 뉴스 토론','B1','economy','pattern',NULL,1),
('s_economy_B1_02','The unemployment rate dropped to its lowest level in a decade.','실업률이 10년 만에 최저 수준으로 떨어졌어요.','dropped to its lowest level in','drop to + 최상급 + in + 기간: 기록적 수치를 표현하는 패턴이에요.','경제 지표 설명','B1','economy','pattern',NULL,2),
('s_economy_B1_03','The central bank is expected to raise interest rates next month.','중앙은행이 다음 달 금리를 인상할 것으로 예상돼요.','is expected to','be expected to + 동사: 예상되는 일을 말할 때 자연스러운 표현이에요.','금리 전망 토론','B1','economy','pattern',NULL,3),
('s_economy_B1_04','GDP grew by two percent compared to last year.','GDP가 작년 대비 2% 성장했어요.','compared to last year','compared to: 수치 비교에 가장 많이 쓰이는 표현이에요.','경제 성장 발표','B1','economy','pattern',NULL,4),
('s_economy_B1_05','There is a growing concern about the trade deficit.','무역 적자에 대한 우려가 커지고 있어요.','growing concern about','there is a growing concern about: 점점 심각해지는 문제를 언급할 때 써요.','경제 뉴스','B1','economy','pattern',NULL,5),
('s_economy_B1_06','The economy is showing signs of recovery.','경제가 회복 조짐을 보이고 있어요.','showing signs of recovery','show signs of + 명사: 징후가 나타나다는 표현이에요.','경기 회복 토론','B1','economy','pattern',NULL,6),
('s_economy_B1_07','Consumer spending has slowed down significantly this quarter.','소비자 지출이 이번 분기에 크게 둔화됐어요.','has slowed down significantly','현재완료 + significantly: 주목할 만한 변화를 강조하는 패턴이에요.','경제 분석','B1','economy','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B2 (투자·시장 패턴, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_economy_B2_01','Diversifying your portfolio is key to managing risk.','포트폴리오를 다양화하는 것이 위험 관리의 핵심이에요.','diversifying your portfolio is key to','S + is key to + -ing: "~하는 데 핵심이다"라는 표현이에요.','투자 조언','B2','economy','pattern',NULL,1),
('s_economy_B2_02','The market correction was sharper than analysts had predicted.','시장 조정이 애널리스트들의 예상보다 훨씬 가파르게 나타났어요.','sharper than analysts had predicted','과거완료(had predicted)는 기준 시점보다 이전에 일어난 일을 표현해요.','시장 분석','B2','economy','pattern',NULL,2),
('s_economy_B2_03','Liquidity dried up quickly as investors panicked.','투자자들이 공황 상태에 빠지면서 유동성이 빠르게 말랐어요.','dried up','dry up: 자원·유동성이 갑자기 고갈되다는 생생한 표현이에요.','금융 위기 논의','B2','economy','pattern',NULL,3),
('s_economy_B2_04','Hedge funds tend to perform well in volatile markets.','헤지펀드는 변동성이 높은 시장에서 좋은 성과를 내는 경향이 있어요.','tend to perform well in','tend to: 일반적 경향을 설명할 때 쓰는 표현이에요.','투자 전략','B2','economy','pattern',NULL,4),
('s_economy_B2_05','The bond yield rose sharply following the Fed''s announcement.','연준 발표 이후 채권 수익률이 급격히 상승했어요.','rose sharply following','following + 명사: "~ 이후에"라는 뜻으로 인과관계를 연결해요.','채권 시장','B2','economy','pattern',NULL,5),
('s_economy_B2_06','Investors are fleeing to safe-haven assets amid uncertainty.','불확실성 속에서 투자자들이 안전 자산으로 이동하고 있어요.','fleeing to safe-haven assets amid','amid + 명사: "~ 속에서"라는 표현으로 배경 상황을 나타내요.','위험 회피 전략','B2','economy','pattern',NULL,6),
('s_economy_B2_07','The equity market rebounded after the initial sell-off.','초기 매도세 이후 주식 시장이 반등했어요.','rebounded after the initial sell-off','rebound after: 하락 이후 반등을 표현하는 금융 뉴스의 핵심 패턴이에요.','시장 동향','B2','economy','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C1 (경제 정책 분석 패턴, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_economy_C1_01','Austerity measures have been criticized for deepening inequality rather than reducing the deficit.','긴축 조치는 적자를 줄이기보다 불평등을 심화시켰다는 비판을 받아왔어요.','criticized for deepening','be criticized for + -ing: 비판의 근거를 제시하는 고급 표현이에요.','경제 정책 비판','C1','economy','pattern',NULL,1),
('s_economy_C1_02','Deregulation of the financial sector in the 1980s is often linked to greater systemic risk.','1980년대 금융 부문 규제 완화는 종종 더 큰 시스템 위험과 연결지어져요.','is often linked to','be linked to: 두 현상 간의 인과 혹은 연관성을 표현할 때 써요.','역사적 정책 분석','C1','economy','pattern',NULL,2),
('s_economy_C1_03','The government''s privatization drive has faced strong opposition from trade unions.','정부의 민영화 추진은 노동조합의 강한 반대에 직면했어요.','faced strong opposition from','face opposition from: 반대에 부딪히다는 표현으로 정치 논의에서 자주 써요.','정책 논쟁','C1','economy','pattern',NULL,3),
('s_economy_C1_04','Protectionist tariffs may shield domestic producers but ultimately harm consumers.','보호무역 관세는 국내 생산자를 보호할 수 있지만 결국 소비자에게 해를 끼쳐요.','may shield ... but ultimately','may ... but ultimately: 단기 효과와 장기 결과를 대조할 때 쓰는 구조예요.','무역 정책 논의','C1','economy','pattern',NULL,4),
('s_economy_C1_05','Comparative advantage theory suggests that specialization leads to greater overall welfare.','비교우위 이론은 특화가 전체적인 복지 향상으로 이어진다고 주장해요.','theory suggests that','theory suggests that: 이론의 주장을 소개하는 학술적 표현이에요.','경제 이론 설명','C1','economy','pattern',NULL,5),
('s_economy_C1_06','Excessive reliance on subsidies can distort market signals and reduce efficiency.','보조금에 대한 과도한 의존은 시장 신호를 왜곡하고 효율성을 낮출 수 있어요.','distort market signals','distort market signals: 시장 메커니즘이 제대로 작동하지 않을 때 쓰는 표현이에요.','시장 왜곡 분석','C1','economy','pattern',NULL,6),
('s_economy_C1_07','Moral hazard arises when one party is insulated from the consequences of their decisions.','도덕적 해이는 한쪽이 자신의 결정 결과로부터 보호받을 때 발생해요.','is insulated from the consequences','be insulated from: 결과나 영향을 받지 않는 상태를 표현해요.','경제 인센티브 분석','C1','economy','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C2 (경제 이론·학술 분석 패턴, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_economy_C2_01','Econometric models rely on large datasets to identify causal relationships between variables.','계량경제 모델은 변수 간의 인과 관계를 파악하기 위해 대규모 데이터셋에 의존해요.','identify causal relationships between','identify causal relationships: 인과성 파악이라는 계량경제학의 핵심 목표를 표현해요.','학술 연구 방법론','C2','economy','pattern',NULL,1),
('s_economy_C2_02','The securitization of mortgage-backed assets obscured the underlying credit risk from investors.','주택담보대출 기반 자산의 유동화는 투자자들로부터 내재된 신용 위험을 가렸어요.','obscured the underlying credit risk','obscure + risk: 위험이 감춰지다는 표현으로 금융 위기 분석에 자주 쓰여요.','2008 금융 위기 분석','C2','economy','pattern',NULL,2),
('s_economy_C2_03','Rent-seeking behavior undermines allocative efficiency by redirecting resources toward unproductive activities.','지대추구 행동은 자원을 비생산적 활동으로 전환시켜 배분 효율성을 훼손해요.','undermines allocative efficiency','undermine efficiency: 효율성을 잠식하다는 표현으로 경제 왜곡을 비판할 때 써요.','경제적 비효율 분석','C2','economy','pattern',NULL,3),
('s_economy_C2_04','Heterodox economists challenge the assumption that markets naturally tend toward equilibrium.','비주류 경제학자들은 시장이 자연적으로 균형을 향해 가는 경향이 있다는 가정에 도전해요.','challenge the assumption that','challenge the assumption that: 주류 이론의 전제를 의문시하는 학술적 표현이에요.','경제학 패러다임 토론','C2','economy','pattern',NULL,4),
('s_economy_C2_05','Asymmetric information between buyers and sellers leads to adverse selection and market inefficiency.','구매자와 판매자 간의 정보 비대칭은 역선택과 시장 비효율로 이어져요.','leads to adverse selection','leads to: 결과를 도출하는 인과 표현으로 학술 글쓰기에 필수적이에요.','정보 경제학','C2','economy','pattern',NULL,5),
('s_economy_C2_06','The Gini coefficient measures the extent to which income distribution deviates from perfect equality.','지니 계수는 소득 분배가 완전한 평등에서 얼마나 벗어나는지를 측정해요.','measures the extent to which','measures the extent to which: 정도·수준을 객관적으로 측정하는 학술 표현이에요.','소득 불평등 측정','C2','economy','pattern',NULL,6),
('s_economy_C2_07','A liquidity trap renders conventional monetary policy ineffective, as near-zero rates fail to stimulate demand.','유동성 함정은 제로에 가까운 금리가 수요를 자극하지 못하면서 기존 통화 정책을 무효화해요.','renders conventional monetary policy ineffective','render + O + adjective: "~을 ~한 상태로 만들다"라는 C1+ 핵심 동사 패턴이에요.','통화 정책 한계 분석','C2','economy','pattern',NULL,7);

-- supabase-words-culture.sql
-- EngCat — culture (문화·예술) 단어 210개 + 패턴 42개
-- CEFR A1~C2, 각 레벨 35단어 × 6 + 7패턴 × 6
-- generated 2026-05-24

-- ══════════════════════════════════════
-- A1 — 문화·예술 기초 단어 (35개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_culture_A1_01','What kind of music do you like?','어떤 음악 좋아해요?','What kind of','What kind of...?는 종류나 취향을 물을 때 쓰는 기본 패턴이에요.','취향 묻기','A1','culture','pattern',NULL,1),
('s_culture_A1_02','Do you like movies or books more?','영화를 더 좋아해요, 아니면 책을 더 좋아해요?','Do you like ... more?','"Do you like A or B more?"는 둘 중 하나를 고르게 할 때 쓰는 간단한 패턴이에요.','취향 비교','A1','culture','pattern',NULL,2),
('s_culture_A1_03','What is your favourite song?','가장 좋아하는 노래가 뭐예요?','What is your favourite','What is your favourite...?는 영어로 취향을 가장 자연스럽게 묻는 방법이에요.','좋아하는 것 묻기','A1','culture','pattern',NULL,3),
('s_culture_A1_04','I love listening to music.','저는 음악 듣는 걸 좋아해요.','I love listening to','"I love -ing"는 자신이 좋아하는 활동을 말할 때 쓰는 패턴이에요.','취향 말하기','A1','culture','pattern',NULL,4),
('s_culture_A1_05','Can you dance?','춤출 수 있어요?','Can you','Can you...?는 상대방의 능력을 물어볼 때 가장 기본적인 패턴이에요.','능력 묻기','A1','culture','pattern',NULL,5),
('s_culture_A1_06','Do you play any instruments?','악기를 연주할 수 있어요?','Do you play','Do you play any...?는 취미나 특기를 물어볼 때 유용한 패턴이에요.','취미 묻기','A1','culture','pattern',NULL,6),
('s_culture_A1_07','I enjoy watching shows at the theatre.','저는 극장에서 공연 보는 것을 즐겨요.','I enjoy watching','"I enjoy -ing"는 자신의 즐거운 활동을 부드럽게 표현하는 패턴이에요.','취미 표현','A1','culture','pattern',NULL,7);

-- ══════════════════════════════════════
-- A2 — 패턴 (공연·전시) 7개
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_culture_A2_01','Have you ever been to a music festival?','음악 축제에 가본 적 있어요?','Have you ever been to','Have you ever...?는 경험을 자연스럽게 물어볼 때 자주 쓰는 패턴이에요.','경험 묻기','A2','culture','pattern',NULL,1),
('s_culture_A2_02','What time does the concert start?','콘서트가 몇 시에 시작해요?','What time does','What time does...?는 시작 시간을 물을 때 기본적으로 쓰는 패턴이에요.','공연 정보 묻기','A2','culture','pattern',NULL,2),
('s_culture_A2_03','Is there a ticket office nearby?','근처에 매표소가 있나요?','Is there a','Is there a...?는 어떤 장소나 시설이 있는지 물을 때 쓰는 패턴이에요.','장소 묻기','A2','culture','pattern',NULL,3),
('s_culture_A2_04','I''d like two tickets for the evening show, please.','저녁 공연 티켓 두 장 주세요.','I''d like','I''d like...는 무언가를 정중하게 요청할 때 쓰는 가장 흔한 패턴이에요.','티켓 구매','A2','culture','pattern',NULL,4),
('s_culture_A2_05','The exhibition was really impressive.','전시회가 정말 인상적이었어요.','was really impressive','was/were really impressive는 무언가에 강한 긍정 반응을 나타낼 때 쓰는 패턴이에요.','공연 후기','A2','culture','pattern',NULL,5),
('s_culture_A2_06','Can I take photos inside the gallery?','갤러리 안에서 사진을 찍어도 될까요?','Can I take photos','Can I...?는 허락을 구할 때 쓰는 가장 기본적인 패턴이에요.','허락 구하기','A2','culture','pattern',NULL,6),
('s_culture_A2_07','How long does the performance last?','공연이 얼마나 걸려요?','How long does','How long does...?는 어떤 일이 얼마나 오래 걸리는지 물을 때 쓰는 패턴이에요.','시간 묻기','A2','culture','pattern',NULL,7);

-- ══════════════════════════════════════
-- B1 — 패턴 (예술 감상) 7개
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_culture_B1_01','What I find most interesting about this painting is the use of colour.','이 그림에서 가장 흥미로운 점은 색채 사용 방식이에요.','What I find most interesting','"What I find most interesting is..."는 자신의 감상을 구체적으로 표현할 때 쓰는 세련된 패턴이에요.','예술 감상 표현','B1','culture','pattern',NULL,1),
('s_culture_B1_02','This piece really speaks to me on an emotional level.','이 작품은 감정적으로 정말 제 마음에 와닿아요.','really speaks to me','"speaks to me"는 예술 작품이 자신에게 감동이나 공명을 줄 때 원어민이 자주 쓰는 표현이에요.','예술 공감 표현','B1','culture','pattern',NULL,2),
('s_culture_B1_03','I wasn''t sure what to make of it at first, but it grew on me.','처음엔 어떻게 받아들여야 할지 몰랐지만, 점점 좋아졌어요.','grew on me','"grow on me"는 처음에는 마음에 들지 않다가 나중에 좋아지게 됐을 때 쓰는 표현이에요.','감상 변화 표현','B1','culture','pattern',NULL,3),
('s_culture_B1_04','There''s something deeply moving about the way the story unfolds.','이야기가 전개되는 방식에는 깊이 감동적인 무언가가 있어요.','There''s something ... about','"There''s something ... about"는 추상적이고 감동적인 인상을 표현할 때 쓰는 고급 패턴이에요.','작품 인상 표현','B1','culture','pattern',NULL,4),
('s_culture_B1_05','Have you had a chance to see the new exhibition at the gallery?','갤러리에서 새로운 전시회를 볼 기회가 있으셨어요?','Have you had a chance to','"Have you had a chance to...?"는 상대방의 경험을 자연스럽게 물어보는 패턴이에요.','경험 묻기 (공손)','B1','culture','pattern',NULL,5),
('s_culture_B1_06','The atmosphere in the concert hall was absolutely electric.','콘서트홀의 분위기가 완전히 전율적이었어요.','absolutely electric','absolutely + 강한 형용사는 감동적인 순간을 생생하게 전달하는 B1 표현 패턴이에요.','공연 분위기 표현','B1','culture','pattern',NULL,6),
('s_culture_B1_07','I''d strongly recommend this exhibition to anyone interested in modern art.','현대 미술에 관심 있는 분이라면 이 전시회를 강력히 추천해요.','I''d strongly recommend ... to anyone','"I''d strongly recommend ... to anyone interested in..."은 적극적인 추천을 표현하는 패턴이에요.','추천 표현','B1','culture','pattern',NULL,7);

-- ══════════════════════════════════════
-- B2 — 패턴 (문화 비교) 7개
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_culture_B2_01','While Korean pop culture has a global reach, traditional art forms still hold a central place in national identity.','한국 팝 문화가 세계적으로 확산됐지만, 전통 예술 형태는 여전히 국가 정체성에서 중심적인 위치를 차지해요.','While ... still hold','While A, B still...는 두 가지 사실을 대조할 때 쓰는 B2 수준의 접속 패턴이에요.','문화 비교','B2','culture','pattern',NULL,1),
('s_culture_B2_02','There''s a growing tension between preserving cultural heritage and embracing contemporary influences.','문화유산을 보존하는 것과 현대적 영향을 받아들이는 것 사이의 긴장이 커지고 있어요.','tension between ... and','"tension between A and B"는 두 가지 상충하는 가치를 논의할 때 쓰는 고급 표현이에요.','문화 긴장 표현','B2','culture','pattern',NULL,2),
('s_culture_B2_03','The way a culture treats its artists says a lot about its values.','한 문화가 예술가를 대하는 방식은 그 문화의 가치관에 대해 많은 것을 말해줘요.','says a lot about','"says a lot about..."는 어떤 행동이나 상황이 더 깊은 의미를 드러낸다고 할 때 쓰는 표현이에요.','문화 가치관 논의','B2','culture','pattern',NULL,3),
('s_culture_B2_04','Cross-cultural exchange has always been central to artistic innovation.','문화 간 교류는 항상 예술적 혁신의 핵심이었어요.','Cross-cultural exchange has always been','Cross-cultural ... has always been...는 역사적 패턴을 논의할 때 쓰는 학문적 표현이에요.','문화 교류 논의','B2','culture','pattern',NULL,4),
('s_culture_B2_05','What sets this work apart is its willingness to challenge conventional expectations.','이 작품을 돋보이게 하는 것은 기존의 기대에 도전하려는 의지예요.','What sets this work apart','"What sets ... apart is..."는 무언가를 차별화하는 특징을 강조하는 세련된 패턴이에요.','작품 차별점 표현','B2','culture','pattern',NULL,5),
('s_culture_B2_06','It''s worth noting that the artist''s background heavily shaped the work''s cultural references.','예술가의 배경이 작품의 문화적 참조에 크게 영향을 미쳤다는 점은 주목할 만해요.','It''s worth noting that','"It''s worth noting that..."는 중요한 사실을 강조하며 논의에 도입할 때 쓰는 학술적 패턴이에요.','분석적 논의','B2','culture','pattern',NULL,6),
('s_culture_B2_07','The debate over cultural appropriation raises uncomfortable but necessary questions.','문화 전용에 관한 논쟁은 불편하지만 필요한 질문들을 제기해요.','raises uncomfortable but necessary questions','"raises ... questions"는 논쟁적 주제를 신중하게 도입할 때 쓰는 표현이에요.','문화 논쟁 표현','B2','culture','pattern',NULL,7);

-- ══════════════════════════════════════
-- C1 — 패턴 (예술 비평 심화) 7개
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_culture_C1_01','The work''s power lies precisely in its refusal to offer easy resolution.','이 작품의 힘은 바로 쉬운 해결을 거부하는 데 있어요.','lies precisely in its refusal to','"lies precisely in its refusal to..."는 작품의 핵심 특질을 정확히 짚을 때 쓰는 고급 비평 표현이에요.','예술 비평','C1','culture','pattern',NULL,1),
('s_culture_C1_02','One might argue that the narrative structure mirrors the fragmented nature of modern consciousness.','서사 구조가 현대 의식의 파편화된 본성을 반영한다고 주장할 수 있어요.','One might argue that ... mirrors','"One might argue that..."는 비평적 주장을 신중하게 제시할 때 쓰는 학술적 표현이에요.','예술 비평 논의','C1','culture','pattern',NULL,2),
('s_culture_C1_03','The tension between form and content is never fully resolved in this piece.','이 작품에서 형식과 내용 사이의 긴장은 결코 완전히 해결되지 않아요.','tension between form and content is never fully resolved','"tension between ... is never fully resolved"는 예술 분석에서 양가성을 표현하는 고급 패턴이에요.','예술 분석','C1','culture','pattern',NULL,3),
('s_culture_C1_04','Rather than offering answers, the exhibition poses a series of provocative questions about identity.','답을 제시하기보다는 전시회가 정체성에 대한 일련의 도발적인 질문을 제기해요.','Rather than ... poses a series of provocative questions','"Rather than A, B poses questions about..."는 반전 구조로 작품의 의도를 설명하는 패턴이에요.','전시 분석','C1','culture','pattern',NULL,4),
('s_culture_C1_05','What distinguishes this director''s work is the interplay between the personal and the political.','이 감독의 작품을 구별하는 것은 개인적인 것과 정치적인 것 사이의 상호작용이에요.','What distinguishes ... is the interplay between','"What distinguishes ... is the interplay between A and B"는 비평적 특징 분석의 정교한 패턴이에요.','감독 분석','C1','culture','pattern',NULL,5),
('s_culture_C1_06','The film operates on multiple registers simultaneously — aesthetic, political, and psychological.','그 영화는 미학적, 정치적, 심리적으로 여러 차원에서 동시에 작동해요.','operates on multiple registers simultaneously','"operates on multiple registers"는 복잡한 예술 작품의 다층적 의미를 표현하는 C1 비평 표현이에요.','영화 비평','C1','culture','pattern',NULL,6),
('s_culture_C1_07','By foregrounding the constructedness of its own narrative, the novel invites us to question the nature of storytelling itself.','자신의 서사가 구성물임을 전면에 내세움으로써, 그 소설은 우리가 스토리텔링의 본질 자체를 의문시하도록 유도해요.','By foregrounding the constructedness of','"By foregrounding the constructedness of..."는 메타픽션적 기법을 분석하는 고급 비평 패턴이에요.','소설 비평','C1','culture','pattern',NULL,7);

-- ══════════════════════════════════════
-- C2 — 패턴 (예술 철학·담론) 7개
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_culture_C2_01','The work enacts a deconstruction of the very categories it appears to celebrate.','그 작품은 자신이 기리는 것처럼 보이는 바로 그 범주들을 해체하는 것을 수행해요.','enacts a deconstruction of the very categories','"enacts a deconstruction of the very..."는 데리다적 독해를 수행할 때 쓰는 C2 수준의 비평 표현이에요.','해체주의 비평','C2','culture','pattern',NULL,1),
('s_culture_C2_02','To speak of aesthetic autonomy is already to invoke a historically contingent set of assumptions.','미학적 자율성을 말하는 것은 이미 역사적으로 우연적인 일련의 가정들을 불러오는 것이에요.','To speak of ... is already to invoke','"To speak of ... is already to invoke..."는 개념의 역사성을 드러내는 고도로 학술적인 패턴이에요.','미학 담론','C2','culture','pattern',NULL,2),
('s_culture_C2_03','The question is not whether the text has a meaning, but who has the authority to determine it.','문제는 텍스트가 의미를 가지느냐가 아니라 누가 그것을 결정할 권위를 갖느냐예요.','The question is not whether ... but who has the authority','"The question is not whether A but who..."는 권력과 해석에 관한 담론을 수행하는 C2 패턴이에요.','해석 권력 논의','C2','culture','pattern',NULL,3),
('s_culture_C2_04','Any attempt to stabilise the work''s meaning is already a political act.','작품의 의미를 안정화하려는 모든 시도는 이미 정치적 행위예요.','Any attempt to ... is already a political act','"Any attempt to... is already..."는 학술 비평에서 강한 주장을 펼칠 때 쓰는 C2 표현이에요.','정치적 비평','C2','culture','pattern',NULL,4),
('s_culture_C2_05','What the archive reveals is not just what was recorded but what was systematically excluded.','아카이브가 드러내는 것은 기록된 것뿐만 아니라 체계적으로 배제된 것이에요.','What the archive reveals is not just ... but what was systematically excluded','"What ... reveals is not just A but what was systematically excluded"는 권력과 기억을 분석하는 C2 패턴이에요.','아카이브 비평','C2','culture','pattern',NULL,5),
('s_culture_C2_06','The sublime, far from being a natural category, is a cultural construction that serves specific ideological ends.','숭고함은 자연적 범주이기는커녕 특정 이데올로기적 목적에 기여하는 문화적 구성물이에요.','far from being a natural category, is a cultural construction','far from being A, is a cultural construction that serves...는 개념을 역사화하는 고급 비평 패턴이에요.','숭고 이론 비평','C2','culture','pattern',NULL,6),
('s_culture_C2_07','In displacing the centre, the work opens up a rhizomatic field of possible meanings that resist hierarchical ordering.','중심을 이동시킴으로써, 그 작품은 위계적 정렬에 저항하는 의미의 리좀적 장을 열어요.','In displacing the centre ... opens up a rhizomatic field','"In displacing the centre, ... opens up a rhizomatic field"는 들뢰즈적 분석을 수행하는 최고 수준의 비평 패턴이에요.','리좀 비평','C2','culture','pattern',NULL,7);

-- supabase-words-sports.sql
-- EngCat — Sports (스포츠) 단어 + 패턴
-- 210 words (35 per CEFR level A1~C2) + 42 patterns (7 per level)
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (35개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_sports_A1_01','Do you play any sports?','운동 하세요?','Do you play','play는 규칙이 있는 스포츠(축구·야구·농구)에 쓰고, do는 개인 운동(yoga·taekwondo)에 써요.','운동 화제','A1','sports','pattern',NULL,1),
('s_sports_A1_02','I like to swim in summer.','저는 여름에 수영하는 걸 좋아해요.','I like to','좋아하는 운동을 말할 때 "I like to + 동사원형"을 쓰면 간단하고 자연스러워요.','취미 소개','A1','sports','pattern',NULL,2),
('s_sports_A1_03','Can you run fast?','빠르게 달릴 수 있어요?','Can you','Can you + 동사원형?은 능력을 묻는 가장 간단한 방법이에요.','능력 묻기','A1','sports','pattern',NULL,3),
('s_sports_A1_04','What is your favourite sport?','제일 좋아하는 스포츠가 뭐예요?','What is your favourite','favourite 대신 favorite으로도 써요 (미국식). 좋아하는 것을 물을 때 꼭 외워두세요.','선호 묻기','A1','sports','pattern',NULL,4),
('s_sports_A1_05','Let''s play together after school!','방과 후에 같이 운동해요!','Let''s play together','Let''s + 동사원형은 상대방을 함께 하도록 초대할 때 써요.','함께하기 제안','A1','sports','pattern',NULL,5),
('s_sports_A1_06','Our team won the game!','우리 팀이 경기에서 이겼어요!','Our team won','과거형 won은 win의 불규칙 과거예요. 경기 결과를 말할 때 자주 써요.','결과 말하기','A1','sports','pattern',NULL,6),
('s_sports_A1_07','I go to the gym every week.','저는 매주 헬스장에 가요.','I go to the gym','주기를 말할 때 every day / every week / every weekend처럼 뒤에 붙여요.','운동 습관','A1','sports','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (7개) — 경기 결과
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_sports_A2_01','Did you watch the match last night?','어젯밤 경기 봤어요?','Did you watch','Did you + 동사원형? 패턴으로 과거 행동을 자연스럽게 물어볼 수 있어요.','경기 이야기','A2','sports','pattern',NULL,1),
('s_sports_A2_02','The score was three to one.','점수는 3대 1이었어요.','The score was','영어로 점수를 말할 때 "three to one" 또는 "three-one"으로 읽어요.','경기 결과','A2','sports','pattern',NULL,2),
('s_sports_A2_03','She scored twice in the second half.','그녀는 후반전에 두 번 득점했어요.','scored twice','twice = 두 번. 특정 숫자의 경우 once, twice, three times처럼 써요.','득점 표현','A2','sports','pattern',NULL,3),
('s_sports_A2_04','I can''t believe they lost again.','또 졌다니 믿을 수가 없어요.','I can''t believe','I can''t believe + (that) 절 패턴은 놀람을 표현할 때 자주 써요.','감탄·놀람','A2','sports','pattern',NULL,4),
('s_sports_A2_05','The game ended in a draw.','경기가 무승부로 끝났어요.','ended in a draw','end in a draw는 "무승부로 끝나다"를 뜻하는 고정 표현이에요. ended in a tie도 같은 의미예요.','경기 결과','A2','sports','pattern',NULL,5),
('s_sports_A2_06','Who do you think will win the final?','결승에서 누가 이길 것 같아요?','Who do you think will','Who do you think will + 동사?는 예측을 물을 때 쓰는 자연스러운 표현이에요.','예측 묻기','A2','sports','pattern',NULL,6),
('s_sports_A2_07','He broke the record by two seconds.','그는 기록을 2초 차이로 깼어요.','broke the record','break a record는 "기록을 깨다"는 뜻의 관용 표현이에요. broke는 break의 불규칙 과거형이에요.','기록 표현','A2','sports','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B1 (7개) — 팀 전략
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_sports_B1_01','The coach changed the formation at halftime.','코치가 하프타임에 포메이션을 바꿨어요.','changed the formation','at halftime은 "하프타임에"라는 표현으로 경기 분석 시 자주 나와요.','전술 분석','B1','sports','pattern',NULL,1),
('s_sports_B1_02','Our strategy was to press high and win the ball back quickly.','우리 전략은 높게 압박하고 빠르게 공을 되찾는 것이었어요.','Our strategy was to','strategy was to + 동사원형으로 계획을 설명할 수 있어요.','팀 전략','B1','sports','pattern',NULL,2),
('s_sports_B1_03','If we had scored first, the result might have been different.','우리가 먼저 득점했다면, 결과가 달라졌을 수도 있어요.','might have been','If + 과거완료, might have + 과거분사 패턴은 반사실 상황을 말할 때 써요 (3형식 가정법).','가정 표현','B1','sports','pattern',NULL,3),
('s_sports_B1_04','The team focused on maintaining possession throughout the game.','팀은 경기 내내 볼 점유율 유지에 집중했어요.','focused on maintaining','focus on + 동명사 패턴으로 집중한 대상을 표현해요.','전술 묘사','B1','sports','pattern',NULL,4),
('s_sports_B1_05','The referee should have given a penalty in that situation.','심판은 그 상황에서 패널티를 줬어야 했어요.','should have given','should have + 과거분사는 과거에 하지 않은 일에 대한 아쉬움이나 비판을 나타내요.','판정 논평','B1','sports','pattern',NULL,5),
('s_sports_B1_06','I''m not sure why they didn''t substitute the tired striker earlier.','왜 지친 스트라이커를 더 일찍 교체하지 않았는지 모르겠어요.','I''m not sure why','I''m not sure why + 절은 의문과 불만을 부드럽게 표현해요.','전술 의문','B1','sports','pattern',NULL,6),
('s_sports_B1_07','Sportsmanship matters more than winning at all costs.','스포츠맨십은 어떤 대가를 치르더라도 이기는 것보다 더 중요해요.','matters more than','A matters more than B 패턴은 비교 우선순위를 말할 때 써요.','스포츠 가치관','B1','sports','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B2 (7개) — 스포츠 분석
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_sports_B2_01','Performance analytics has transformed the way teams approach match preparation.','퍼포먼스 분석이 팀들이 경기 준비에 접근하는 방식을 바꿔놨어요.','has transformed the way','has transformed는 현재완료로 변화의 영향이 지금도 이어짐을 나타내요.','스포츠 분석','B2','sports','pattern',NULL,1),
('s_sports_B2_02','The data suggests that high-pressing tactics significantly increase the chance of winning.','데이터에 따르면 강한 압박 전술이 승리 가능성을 크게 높여요.','The data suggests that','The data suggests that + 절은 분석 결과를 객관적으로 제시하는 학문적 표현이에요.','데이터 인용','B2','sports','pattern',NULL,2),
('s_sports_B2_03','Without proper periodization, athletes risk overtraining and burnout.','적절한 주기화 없이는 선수들이 과훈련과 번아웃의 위험에 처해요.','risk overtraining','risk + 동명사는 "~할 위험에 처하다"는 뜻이에요. risk doing something 형태로 기억하세요.','위험 표현','B2','sports','pattern',NULL,3),
('s_sports_B2_04','Her tactical awareness sets her apart from other players in the league.','그녀의 전술적 감각이 리그의 다른 선수들과 그녀를 구별해줘요.','sets her apart from','set apart from은 "~에서 구별되다, 뛰어나다"는 관용 표현이에요.','비교 강조','B2','sports','pattern',NULL,4),
('s_sports_B2_05','The coaching staff is reviewing biomechanics footage to correct his running form.','코칭 스태프가 달리기 자세를 교정하기 위해 생체역학 영상을 검토 중이에요.','is reviewing','현재진행형(is + -ing)은 현재 진행 중인 지속적 행동을 나타내요.','훈련 분석','B2','sports','pattern',NULL,5),
('s_sports_B2_06','Despite the injury setback, she managed to qualify for the finals.','부상이라는 역경에도 불구하고, 그녀는 결승 진출에 성공했어요.','Despite the','Despite + 명사(구)는 "~에도 불구하고"를 뜻하고, Although + 절과 구별해서 써요.','역경 극복','B2','sports','pattern',NULL,6),
('s_sports_B2_07','It''s worth noting that doping undermines the integrity of the sport.','도핑이 스포츠의 무결성을 훼손한다는 점은 주목할 만해요.','It''s worth noting that','It''s worth noting that은 중요한 사실을 강조할 때 쓰는 격식 표현이에요.','이슈 제기','B2','sports','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C1 (7개) — 스포츠 과학
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_sports_C1_01','Training at the lactate threshold elicits significant aerobic adaptations over time.','젖산 역치에서의 훈련은 시간이 지남에 따라 상당한 유산소 적응을 이끌어내요.','elicits significant','elicit는 "이끌어내다, 유발하다"는 뜻의 격식 동사예요. produce나 cause보다 학술적이에요.','스포츠 과학','C1','sports','pattern',NULL,1),
('s_sports_C1_02','Proprioceptive deficits are commonly observed following ankle sprains in athletes.','고유 감각 결손은 선수들의 발목 염좌 후에 흔히 관찰돼요.','Proprioceptive deficits are commonly observed','수동태(are observed)는 학술 및 의학 텍스트에서 관찰 사실을 객관적으로 서술할 때 자주 써요.','의학적 관찰','C1','sports','pattern',NULL,2),
('s_sports_C1_03','Sport psychology interventions can help athletes reframe failure as a learning opportunity.','스포츠 심리학 개입은 선수들이 실패를 학습 기회로 재해석하도록 도울 수 있어요.','reframe failure as','reframe A as B는 "A를 B로 재해석하다"는 표현으로 인지 변화를 나타내요.','심리적 접근','C1','sports','pattern',NULL,3),
('s_sports_C1_04','Governance failures within sporting bodies have eroded public trust significantly.','스포츠 단체 내의 거버넌스 실패가 대중의 신뢰를 크게 잠식했어요.','have eroded','erode는 "점진적으로 침식하다, 잠식하다"는 뜻이에요. 추상적 개념(신뢰·가치)에 자주 써요.','스포츠 거버넌스','C1','sports','pattern',NULL,4),
('s_sports_C1_05','Without adequate recovery, neuromuscular fatigue accumulates and performance deteriorates.','충분한 회복 없이는 신경근 피로가 쌓이고 경기력이 저하돼요.','accumulates and deteriorates','두 동사를 and로 연결해 결과의 연쇄를 표현해요. deteriorate(저하되다)는 기억해두세요.','과훈련 경고','C1','sports','pattern',NULL,5),
('s_sports_C1_06','Periodization frameworks must account for individual variation in recovery capacity.','주기화 프레임워크는 회복 능력의 개인 차이를 반드시 고려해야 해요.','must account for','must account for는 "반드시 고려해야 한다"는 의무를 나타내는 격식 표현이에요.','훈련 설계','C1','sports','pattern',NULL,6),
('s_sports_C1_07','Ethical considerations in elite sport extend well beyond the arena itself.','엘리트 스포츠의 윤리적 고려 사항은 경기장 자체를 훨씬 넘어서요.','extend well beyond','extend well beyond는 "훨씬 넘어서 확장된다"는 강조 표현이에요. well은 강조 부사예요.','스포츠 윤리','C1','sports','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C2 (7개) — 스포츠 과학 (심화)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_sports_C2_01','Tensiomyography provides a non-invasive means of quantifying skeletal muscle contractile properties.','텐시오미오그라피는 골격근 수축 특성을 정량화하는 비침습적 수단을 제공해요.','non-invasive means of quantifying','means of + 동명사는 "~하는 수단"이라는 뜻이에요. 학술 논문에서 흔히 나오는 구조예요.','스포츠 과학 연구','C2','sports','pattern',NULL,1),
('s_sports_C2_02','Chronobiological factors, including circadian rhythm, critically modulate athletic performance across disciplines.','일주기 리듬을 포함한 시간 생물학적 요인이 다양한 종목에서 운동 능력을 결정적으로 조절해요.','critically modulate','modulate는 "조절하다, 변조하다"는 뜻의 고급 동사예요. critically는 "결정적으로"라는 부사예요.','시간 생물학','C2','sports','pattern',NULL,2),
('s_sports_C2_03','The ergogenic potential of phosphocreatine supplementation remains a subject of ongoing inquiry.','포스포크레아틴 보충의 경기력 향상 잠재력은 계속 진행 중인 연구의 주제로 남아 있어요.','remains a subject of ongoing inquiry','remains a subject of ongoing inquiry는 학술적으로 "아직 연구 중인 주제이다"를 표현해요.','학술 논의','C2','sports','pattern',NULL,3),
('s_sports_C2_04','Neuromotor adaptations to resistance training are mediated by both central and peripheral mechanisms.','저항 훈련에 대한 신경운동 적응은 중추 및 말초 메커니즘 모두에 의해 매개돼요.','are mediated by','be mediated by는 "~에 의해 매개되다"로 복잡한 인과관계를 학술적으로 설명할 때 써요.','신경과학 설명','C2','sports','pattern',NULL,4),
('s_sports_C2_05','Allometric scaling must be applied when comparing strength outputs across athletes of differing body masses.','서로 다른 체중을 가진 선수들의 근력 출력을 비교할 때 이형성장 척도를 적용해야 해요.','must be applied when comparing','must be applied는 수동 의무 구조예요. when + 동명사(-ing)와 함께 조건을 표현해요.','데이터 비교','C2','sports','pattern',NULL,5),
('s_sports_C2_06','The psychomotor demands of elite competition necessitate a training environment that replicates high-pressure decision-making.','엘리트 경쟁의 정신운동적 요구는 고압적 의사결정을 재현하는 훈련 환경을 필요로 해요.','necessitate a training environment that','necessitate는 "필요로 하다"는 뜻의 고급 타동사예요. demand나 require보다 강한 어조예요.','훈련 설계','C2','sports','pattern',NULL,6),
('s_sports_C2_07','Myofascial dysfunction, if left unaddressed, may perpetuate compensatory movement patterns and predispose athletes to recurrent injury.','근막 기능 장애가 방치될 경우 보상 운동 패턴을 지속시키고 선수들을 재발성 부상에 취약하게 할 수 있어요.','if left unaddressed','if left unaddressed는 "방치될 경우"라는 뜻의 분사구문 조건절이에요. predispose A to B는 "A를 B에 취약하게 만들다"예요.','부상 예방','C2','sports','pattern',NULL,7);

-- supabase-words-discussion.sql
-- EngCat — Discussion (의견·토론) 단어 & 패턴
-- 210 words (A1~C2, 35 per level) + 42 patterns (7 per level)
-- topic_id = 'discussion'
-- Columns: words(id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword)
-- Columns: sentences(id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order)

-- ══════════════════════════════════════
-- WORDS — A1 (35개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_discussion_A1_01','I think so too.','저도 그렇게 생각해요.','I think so','동의를 표현할 때 "I think so too."는 가장 자연스러운 표현이에요. "Me too."보다 대화에서 더 자연스럽게 들려요.','동의','A1','discussion','pattern',NULL,1),
('s_discussion_A1_02','I do not think that is a good idea.','그건 좋은 생각이 아닌 것 같아요.','I do not think','부드럽게 반대 의견을 말할 때 "I do not think ~"를 쓰면 직접적인 거절보다 훨씬 공손하게 들려요.','반대','A1','discussion','pattern',NULL,2),
('s_discussion_A1_03','What do you think about that?','그것에 대해 어떻게 생각해요?','What do you think','상대방의 의견을 구할 때 가장 기본적인 표현이에요. 토론을 시작하는 데 꼭 필요해요.','의견 묻기','A1','discussion','pattern',NULL,3),
('s_discussion_A1_04','Maybe you are right.','아마도 당신이 맞을 수도 있어요.','Maybe you are right','완전히 확신하지 못할 때 "Maybe"를 붙여서 유연하게 동의를 표현해요. 대화 분위기를 부드럽게 유지해줘요.','부분 동의','A1','discussion','pattern',NULL,4),
('s_discussion_A1_05','I am not sure about that.','그것에 대해 잘 모르겠어요.','I am not sure','확신이 없을 때 "I am not sure"를 쓰면 솔직하면서도 공손하게 들려요.','불확실','A1','discussion','pattern',NULL,5),
('s_discussion_A1_06','That is a good idea.','그건 좋은 생각이에요.','That is a good idea','상대방의 아이디어를 긍정할 때 가장 간단하고 자연스러운 표현이에요. 대화를 활기차게 만들어줘요.','칭찬·긍정','A1','discussion','pattern',NULL,6),
('s_discussion_A1_07','I like your idea.','당신의 아이디어가 마음에 들어요.','I like your idea','"I like your idea."는 "Good idea."보다 더 개인적이고 따뜻한 느낌을 줘요. 상대방이 기분 좋게 느낄 수 있어요.','격려·지지','A1','discussion','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (7개): 동의/반대
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_discussion_A2_01','I agree with your opinion.','당신의 의견에 동의해요.','I agree with','단순히 "I agree."보다 "I agree with your opinion."이 더 구체적이고 진지하게 들려요.','동의','A2','discussion','pattern',NULL,1),
('s_discussion_A2_02','I see your point, but I disagree.','당신의 의견은 이해하지만, 동의하지 않아요.','I see your point, but','반대 의견을 말할 때 상대방의 입장을 먼저 인정하면 더 공손하게 들려요. "I see your point, but ~"은 매우 유용한 패턴이에요.','반대','A2','discussion','pattern',NULL,2),
('s_discussion_A2_03','In my opinion, we should try a different approach.','제 의견으로는 다른 방법을 시도해야 해요.','In my opinion','자신의 의견을 말할 때 "In my opinion"을 앞에 붙이면 주관적인 견해임을 분명히 해줘요.','의견 제시','A2','discussion','pattern',NULL,3),
('s_discussion_A2_04','Could you explain your reason?','이유를 설명해 주실 수 있나요?','explain your reason','상대방의 논거를 이해하고 싶을 때 쓰는 정중한 표현이에요. 토론을 더 깊이 있게 만들어줘요.','이유 묻기','A2','discussion','pattern',NULL,4),
('s_discussion_A2_05','I think both sides have a point.','양쪽 다 일리가 있다고 생각해요.','both sides have a point','양쪽 의견을 균형 있게 인정할 때 쓰는 표현이에요. 중립적인 입장에서 토론을 진행할 때 유용해요.','중립·균형','A2','discussion','pattern',NULL,5),
('s_discussion_A2_06','Can you give me an example?','예시를 들어 주실 수 있나요?','give me an example','이해를 높이기 위해 구체적인 예를 요청할 때 쓰는 표현이에요.','예시 요청','A2','discussion','pattern',NULL,6),
('s_discussion_A2_07','I suggest we discuss this more carefully.','이것을 더 신중하게 논의해 보는 게 어떨까요?','I suggest we discuss','"I suggest we ~"는 그룹 토론에서 방향을 제안할 때 자연스럽게 쓸 수 있는 표현이에요.','제안','A2','discussion','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B1 (7개): 근거 제시
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_discussion_B1_01','The evidence suggests that this approach is more effective.','증거에 따르면 이 방법이 더 효과적이에요.','The evidence suggests','근거를 제시할 때 "The evidence suggests that ~"를 쓰면 주관적인 의견이 아니라 데이터에 기반한 주장처럼 들려요.','근거 제시','B1','discussion','pattern',NULL,1),
('s_discussion_B1_02','From my perspective, the main issue is the lack of funding.','제 관점에서, 주요 문제는 자금 부족이에요.','From my perspective','자신의 시각을 명확히 하면서 주장을 펼칠 때 쓰는 표현이에요. "In my opinion"보다 더 분석적인 느낌이에요.','관점 제시','B1','discussion','pattern',NULL,2),
('s_discussion_B1_03','To elaborate on that point, let me give you a concrete example.','그 부분을 더 설명하자면, 구체적인 예를 들어 드릴게요.','To elaborate on that point','"To elaborate on that point"는 앞서 말한 내용을 더 자세히 설명할 때 쓰는 고급 패턴이에요.','부연 설명','B1','discussion','pattern',NULL,3),
('s_discussion_B1_04','I would argue that the benefits outweigh the risks.','저는 이점이 위험보다 크다고 주장하겠어요.','I would argue that','"I would argue that ~"는 자신의 주장을 자신감 있게 펼칠 때 쓰는 B1 이상 필수 표현이에요.','주장','B1','discussion','pattern',NULL,4),
('s_discussion_B1_05','That is a valid concern, but consider the following.','그건 타당한 우려이지만, 다음을 고려해 주세요.','That is a valid concern, but','상대방의 주장을 인정하면서도 반론을 제기하는 세련된 방법이에요. 토론에서 균형감을 보여줘요.','인정 후 반론','B1','discussion','pattern',NULL,5),
('s_discussion_B1_06','Could you support that claim with evidence?','그 주장을 증거로 뒷받침해 주실 수 있나요?','support that claim with evidence','근거 없는 주장에 대해 정중하게 증거를 요구하는 표현이에요. 비판적 사고 능력을 보여줘요.','증거 요구','B1','discussion','pattern',NULL,6),
('s_discussion_B1_07','Taking everything into account, I believe this is the best option.','모든 것을 고려했을 때, 이것이 최선의 선택이라고 생각해요.','Taking everything into account','"Taking everything into account"는 결론을 내리기 전에 균형 잡힌 판단을 했음을 보여주는 표현이에요.','결론','B1','discussion','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B2 (7개): 반론, 비판적 사고
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_discussion_B2_01','Your argument seems to rest on a flawed premise.','당신의 주장은 잘못된 전제에 기반하는 것 같아요.','rest on a flawed premise','전제 자체의 오류를 지적하는 강력한 반박 패턴이에요. 단순히 결론에 반대하는 것보다 더 설득력이 있어요.','전제 반박','B2','discussion','pattern',NULL,1),
('s_discussion_B2_02','I would like to rebut that point directly.','그 부분을 직접 반박하고 싶어요.','rebut that point directly','"rebut"은 공식적인 토론에서 반박할 때 쓰는 동사예요. "disagree"보다 훨씬 강하고 논리적인 어감이에요.','반박','B2','discussion','pattern',NULL,2),
('s_discussion_B2_03','That claim lacks empirical support.','그 주장에는 실증적 근거가 부족해요.','lacks empirical support','데이터나 연구 없이 이루어진 주장을 비판할 때 쓰는 표현이에요. 학술적이고 설득력 있게 들려요.','비판적 분석','B2','discussion','pattern',NULL,3),
('s_discussion_B2_04','We need to distinguish between correlation and causation here.','여기서 상관관계와 인과관계를 구분해야 해요.','distinguish between correlation and causation','논리적 오류 중 가장 흔한 인과 오류를 지적할 때 쓰는 표현이에요. 비판적 사고의 핵심 패턴이에요.','논리적 오류 지적','B2','discussion','pattern',NULL,4),
('s_discussion_B2_05','While I concede that point, the broader implication is more concerning.','그 부분은 인정하지만, 더 큰 함의가 더 걱정스러워요.','While I concede that point','부분적으로 동의하면서도 더 중요한 쟁점으로 이동하는 고급 토론 기술이에요.','부분 인정 후 전환','B2','discussion','pattern',NULL,5),
('s_discussion_B2_06','Your reasoning contains an implicit bias worth examining.','당신의 논리에는 검토할 만한 암묵적 편향이 있어요.','contains an implicit bias','논리의 구조적 편향을 지적하는 비판적 패턴이에요. 격식 있는 토론에서 매우 설득력 있게 들려요.','편향 지적','B2','discussion','pattern',NULL,6),
('s_discussion_B2_07','The nuance of this issue is often lost in simplistic narratives.','이 문제의 뉘앙스는 단순한 이야기에서 종종 사라져요.','The nuance of this issue','복잡한 문제를 지나치게 단순화하는 경향을 지적할 때 쓰는 표현이에요.','복잡성 강조','B2','discussion','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C1 (7개): 논증
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_discussion_C1_01','The syllogism you presented is formally valid but materially unsound.','당신이 제시한 삼단논법은 형식적으로는 타당하지만 내용상 불건전해요.','formally valid but materially unsound','타당성(validity)과 건전성(soundness)을 구분하는 이 표현은 논리학의 핵심 구분을 활용해요.','논리 비판','C1','discussion','pattern',NULL,1),
('s_discussion_C1_02','Let me deconstruct the underlying assumptions of that argument.','그 주장의 근본 가정들을 해체해 볼게요.','deconstruct the underlying assumptions','가정 자체를 분석하는 것은 강력한 비판 전략이에요. 이 패턴은 매우 학문적이고 설득력 있어요.','가정 해체','C1','discussion','pattern',NULL,2),
('s_discussion_C1_03','That reasoning commits the fallacy of false dichotomy.','그 추론은 거짓 이분법의 오류를 범하고 있어요.','commits the fallacy of false dichotomy','논리적 오류의 이름을 정확히 지적하는 것은 고급 토론의 핵심 기술이에요.','논리 오류 지적','C1','discussion','pattern',NULL,3),
('s_discussion_C1_04','I would postulate that the causal chain is more complex than suggested.','인과 사슬이 제시된 것보다 더 복잡하다고 가정해 볼 수 있어요.','postulate that the causal chain','"postulate"를 사용하면 가설적인 논점을 학문적으로 제시할 수 있어요.','가설 제시','C1','discussion','pattern',NULL,4),
('s_discussion_C1_05','Your inductive generalization requires a much larger sample to hold.','당신의 귀납적 일반화는 성립하려면 훨씬 더 큰 표본이 필요해요.','inductive generalization requires a much larger sample','귀납적 오류 중 성급한 일반화를 지적하는 정교한 표현이에요.','귀납 오류 비판','C1','discussion','pattern',NULL,5),
('s_discussion_C1_06','The cogency of your case depends on whether we accept the axiom.','당신 논거의 설득력은 우리가 그 공리를 받아들이느냐에 달려 있어요.','cogency of your case depends on','논증의 전제 조건을 명확히 지적하는 고급 표현이에요. 학술 토론에서 매우 효과적이에요.','조건부 평가','C1','discussion','pattern',NULL,6),
('s_discussion_C1_07','Even if we grant the premise, the conclusion does not necessarily follow.','전제를 인정하더라도, 결론이 반드시 따라오는 것은 아니에요.','the conclusion does not necessarily follow','전제와 결론 사이의 논리적 비약을 지적하는 핵심 반박 패턴이에요.','논리적 비약 지적','C1','discussion','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C2 (7개): 철학적 토론
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_discussion_C2_01','The aporia here is that every attempt to define the term undermines itself.','여기서의 아포리아는 용어를 정의하려는 모든 시도가 스스로를 약화시킨다는 거예요.','The aporia here is','아포리아는 소크라테스 대화에서 나온 개념으로, 자기 모순적 난점을 지적할 때 사용해요.','철학적 역설','C2','discussion','pattern',NULL,1),
('s_discussion_C2_02','This discourse is inherently logocentric in its privileging of spoken reason.','이 담론은 구어적 이성을 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.','inherently logocentric','데리다의 로고스 중심주의 비판을 적용하는 표현이에요. 언어와 의미의 권력 구조를 분석할 때 써요.','담론 비판','C2','discussion','pattern',NULL,2),
('s_discussion_C2_03','Without intersubjectivity, the very possibility of shared meaning collapses.','상호주관성 없이는 공유된 의미의 가능성 자체가 붕괴돼요.','Without intersubjectivity','후설과 하버마스의 개념을 활용해 의사소통의 근본 조건을 논할 때 쓰는 표현이에요.','소통의 조건','C2','discussion','pattern',NULL,3),
('s_discussion_C2_04','From a hermeneutic standpoint, we must read the text against its historical horizon.','해석학적 관점에서, 우리는 텍스트를 역사적 지평에 대비해서 읽어야 해요.','From a hermeneutic standpoint','가다머의 지평 융합 개념을 활용한 표현이에요. 텍스트 해석의 역사성을 강조할 때 써요.','해석학적 분석','C2','discussion','pattern',NULL,4),
('s_discussion_C2_05','The ontological claim embedded in that statement demands further scrutiny.','그 진술에 내재된 존재론적 주장은 더 면밀한 검토가 필요해요.','ontological claim embedded in','존재론적 가정을 명시적으로 드러내는 표현이에요. 철학적 토론에서 숨겨진 가정을 지적할 때 유용해요.','존재론적 비판','C2','discussion','pattern',NULL,5),
('s_discussion_C2_06','That paradigmatic case cannot be used to justify the broader theoretical framework.','그 패러다임적 사례는 더 광범위한 이론적 틀을 정당화하는 데 사용될 수 없어요.','paradigmatic case cannot be used to justify','쿤의 패러다임 개념을 활용해 사례와 이론 사이의 논리적 간격을 지적하는 표현이에요.','패러다임 비판','C2','discussion','pattern',NULL,6),
('s_discussion_C2_07','The praxis of this theory reveals a tension between its normative and descriptive claims.','이 이론의 실천은 규범적 주장과 서술적 주장 사이의 긴장을 드러내요.','praxis of this theory reveals a tension','이론과 실천의 긴장을 비판하는 고급 표현이에요. 프락시스 개념을 아는 C2 학습자에게 적합해요.','이론과 실천의 긴장','C2','discussion','pattern',NULL,7);

-- supabase-words-presentation.sql
-- EngCat — Presentation (발표·프레젠테이션) 단어 & 패턴
-- 210 words (35 per CEFR level A1–C2) + 42 patterns (7 per level)
-- Generated: 2026-05-24

-- ══════════════════════════════════════════════════════════════════
-- WORDS — A1 (35개)
-- ══════════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_presentation_A1_01','Let me introduce myself.','자기소개를 하겠습니다.','Let me introduce','발표를 시작할 때 가장 먼저 쓰는 표현이에요. "Let me ~"는 "제가 ~하겠습니다"라는 부드러운 의사 표명이에요.','발표 시작','A1','presentation','pattern',NULL,1),
('s_presentation_A1_02','Today I will talk about our project.','오늘 저희 프로젝트에 대해 이야기하겠습니다.','talk about','발표 주제를 한 문장으로 소개할 때 쓰는 가장 기본적인 표현이에요.','발표 시작','A1','presentation','pattern',NULL,2),
('s_presentation_A1_03','My name is Ji-yeon and I am from the design team.','제 이름은 지연이고 디자인팀에 있습니다.','My name is','이름과 소속을 함께 소개하는 심플한 오프닝 패턴이에요.','발표 시작','A1','presentation','pattern',NULL,3),
('s_presentation_A1_04','Please look at this slide.','이 슬라이드를 봐주세요.','Please look at','청중의 시선을 슬라이드로 유도할 때 자연스럽게 쓸 수 있어요.','슬라이드 안내','A1','presentation','pattern',NULL,4),
('s_presentation_A1_05','First, I will show you the main idea.','먼저 주요 아이디어를 보여드리겠습니다.','First, I will show','순서를 안내하는 가장 단순한 패턴이에요. First / Next / Last로 이어가세요.','발표 구조 안내','A1','presentation','pattern',NULL,5),
('s_presentation_A1_06','Are there any questions?','질문이 있으신가요?','Are there any questions','발표 중간 또는 마지막에 청중의 참여를 유도하는 표현이에요.','Q&A','A1','presentation','pattern',NULL,6),
('s_presentation_A1_07','That is the end of my talk. Thank you.','발표를 마치겠습니다. 감사합니다.','That is the end','발표를 깔끔하게 마무리할 때 쓰는 가장 간결한 클로징 표현이에요.','발표 마무리','A1','presentation','pattern',NULL,7);

-- ══════════════════════════════════════════════════════════════════
-- PATTERNS — A2 (7개) : 개요 설명
-- ══════════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_presentation_A2_01','My talk is divided into three parts.','제 발표는 세 부분으로 나뉩니다.','divided into three parts','발표 구조를 청중에게 미리 알려주는 표현이에요. 숫자를 바꿔 쓸 수 있어요.','개요 설명','A2','presentation','pattern',NULL,8),
('s_presentation_A2_02','First I will cover the background, then the findings, and finally the recommendations.','먼저 배경을 다루고, 그다음 발견 사항, 마지막으로 권고 사항을 다루겠습니다.','First ... then ... finally','세 단계를 나열하는 전형적인 발표 아웃라인 표현이에요.','개요 설명','A2','presentation','pattern',NULL,9),
('s_presentation_A2_03','Please feel free to ask questions at the end.','마지막에 자유롭게 질문해 주세요.','Please feel free to','청중을 편안하게 해주는 표현이에요. "feel free to"는 허락과 격려를 동시에 전달해요.','Q&A 안내','A2','presentation','pattern',NULL,10),
('s_presentation_A2_04','Let me give you a brief overview before we begin.','시작하기 전에 간략한 개요를 말씀드리겠습니다.','brief overview','본격적인 내용에 앞서 전체 그림을 제시하는 전환 표현이에요.','개요 설명','A2','presentation','pattern',NULL,11),
('s_presentation_A2_05','The main topic of today''s presentation is customer satisfaction.','오늘 발표의 주요 주제는 고객 만족입니다.','The main topic of','주제를 명확하게 한 문장으로 정의하는 표현이에요.','주제 소개','A2','presentation','pattern',NULL,12),
('s_presentation_A2_06','By the end of this presentation, you will understand the key steps.','이 발표가 끝날 때쯤이면 핵심 단계를 이해하게 될 것입니다.','By the end of this presentation','청중에게 기대치를 미리 설정해주는 강력한 오프닝 기법이에요.','목표 제시','A2','presentation','pattern',NULL,13),
('s_presentation_A2_07','In conclusion, the data shows a clear trend.','결론적으로, 데이터는 명확한 추세를 보여줍니다.','In conclusion','발표 마지막에 전체 내용을 하나의 문장으로 요약할 때 쓰는 표현이에요.','결론','A2','presentation','pattern',NULL,14);

-- ══════════════════════════════════════════════════════════════════
-- PATTERNS — B1 (7개) : 전환 표현
-- ══════════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_presentation_B1_01','Now let''s move on to the next point.','이제 다음 요점으로 넘어가겠습니다.','let''s move on to','섹션 사이를 자연스럽게 이어주는 가장 많이 쓰이는 전환 표현이에요.','전환','B1','presentation','pattern',NULL,15),
('s_presentation_B1_02','Having looked at the problem, let''s now consider the solution.','문제를 살펴봤으니, 이제 해결책을 생각해 보겠습니다.','Having looked at ... let''s now','분사구문을 이용한 자연스러운 전환 패턴이에요. 발표를 논리적으로 연결시켜 줘요.','전환','B1','presentation','pattern',NULL,16),
('s_presentation_B1_03','I''d like to draw your attention to this chart.','이 차트에 주목해 주시기 바랍니다.','draw your attention to','청중의 시선을 특정 시각 자료로 유도하는 세련된 표현이에요.','시각 자료 안내','B1','presentation','pattern',NULL,17),
('s_presentation_B1_04','This brings me to my second point.','이것이 저를 두 번째 요점으로 이끕니다.','This brings me to','앞 내용에서 다음 내용으로 자연스럽게 흐르는 전환 표현이에요.','전환','B1','presentation','pattern',NULL,18),
('s_presentation_B1_05','To illustrate this point, let me give you a concrete example.','이 요점을 설명하기 위해 구체적인 예를 들어드리겠습니다.','To illustrate this point','예시를 제시하기 전에 쓰는 정중한 안내 표현이에요.','예시 제시','B1','presentation','pattern',NULL,19),
('s_presentation_B1_06','As I mentioned earlier, the key challenge is timing.','앞서 언급했듯이, 핵심 과제는 타이밍입니다.','As I mentioned earlier','이전 내용을 상기시키며 논리를 강화하는 표현이에요.','참조','B1','presentation','pattern',NULL,20),
('s_presentation_B1_07','Before I move on, are there any questions so far?','계속 진행하기 전에, 지금까지 질문 있으신가요?','Before I move on','중간에 청중 참여를 유도하며 템포를 조절하는 표현이에요.','Q&A 중간 확인','B1','presentation','pattern',NULL,21);

-- ══════════════════════════════════════════════════════════════════
-- PATTERNS — B2 (7개) : 강조 & 마무리
-- ══════════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_presentation_B2_01','What I want to emphasize here is the long-term impact of this decision.','제가 여기서 강조하고 싶은 것은 이 결정의 장기적인 영향입니다.','What I want to emphasize','"What I want to ~" 구문은 핵심 메시지를 강조할 때 강력하게 작동해요.','강조','B2','presentation','pattern',NULL,22),
('s_presentation_B2_02','It is worth noting that this trend has been consistent for three years.','이 추세가 3년간 일관되게 유지되어 왔다는 점은 주목할 만합니다.','It is worth noting that','"It is worth noting that ~"은 청중이 놓칠 수 있는 중요한 세부 사항을 강조하는 표현이에요.','강조','B2','presentation','pattern',NULL,23),
('s_presentation_B2_03','The data compellingly demonstrates that our approach is working.','데이터는 우리의 접근법이 효과적이라는 것을 설득력 있게 증명합니다.','compellingly demonstrates','"compellingly"와 같은 부사로 주장의 강도를 높이는 B2 기법이에요.','증거 제시','B2','presentation','pattern',NULL,24),
('s_presentation_B2_04','To summarize the key takeaways from today''s presentation...','오늘 발표의 핵심 시사점을 요약하자면...','key takeaways','"takeaway"는 청중이 발표에서 가져가야 할 교훈이나 인사이트를 뜻해요.','마무리','B2','presentation','pattern',NULL,25),
('s_presentation_B2_05','I would like to leave you with one final thought.','마지막으로 한 가지 생각을 남기고 싶습니다.','leave you with one final thought','발표를 임팩트 있게 마무리하는 클래식한 표현이에요. 기억에 남는 한 마디를 남길 때 써요.','마무리','B2','presentation','pattern',NULL,26),
('s_presentation_B2_06','In light of this evidence, I strongly recommend proceeding with option B.','이 증거에 비추어 볼 때, 저는 옵션 B를 강력히 권장합니다.','In light of this evidence','"In light of ~"는 증거를 근거로 결론을 제시할 때 쓰는 격식 있는 표현이에요.','권장 사항','B2','presentation','pattern',NULL,27),
('s_presentation_B2_07','Should you have any further questions, please do not hesitate to reach out.','추가 질문이 있으시면 언제든지 연락 주시기 바랍니다.','please do not hesitate to reach out','발표 후 후속 소통을 열어두는 정중한 클로징 표현이에요.','발표 마무리','B2','presentation','pattern',NULL,28);

-- ══════════════════════════════════════════════════════════════════
-- PATTERNS — C1 (7개) : 설득 & 논리 구성
-- ══════════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_presentation_C1_01','The empirical evidence overwhelmingly supports the hypothesis that engagement drives retention.','경험적 증거는 참여가 유지율을 이끈다는 가설을 압도적으로 뒷받침합니다.','empirical evidence overwhelmingly supports','"overwhelmingly supports"처럼 강한 부사를 써서 주장의 확신도를 높이는 C1 설득 기법이에요.','설득','C1','presentation','pattern',NULL,29),
('s_presentation_C1_02','I will now deconstruct the conventional wisdom surrounding this issue.','이제 이 문제를 둘러싼 통념을 해체하겠습니다.','deconstruct the conventional wisdom','통념에 도전하며 새로운 관점을 제시하는 강렬한 오프닝 기법이에요.','논리 구성','C1','presentation','pattern',NULL,30),
('s_presentation_C1_03','This framework allows us to synthesize findings across multiple disciplines.','이 프레임워크를 통해 여러 학문 분야의 발견을 종합할 수 있습니다.','synthesize findings across multiple disciplines','학제적 접근을 강조하는 고급 표현으로 발표의 깊이와 범위를 보여줘요.','논리 구성','C1','presentation','pattern',NULL,31),
('s_presentation_C1_04','The implications of this paradigm shift extend far beyond our immediate industry.','이 패러다임 전환의 함의는 우리의 직접적인 산업을 훨씬 넘어섭니다.','implications ... extend far beyond','넓은 시야를 강조하며 중요성을 부각하는 고급 표현이에요.','설득','C1','presentation','pattern',NULL,32),
('s_presentation_C1_05','While the quantitative data is compelling, the qualitative insights reveal a more nuanced picture.','정량적 데이터는 설득력 있지만, 정성적 인사이트는 더 세밀한 그림을 드러냅니다.','While ... more nuanced picture','양면을 인정하면서도 더 깊은 통찰을 제시하는 균형 잡힌 논리 전개 방식이에요.','균형 잡힌 분석','C1','presentation','pattern',NULL,33),
('s_presentation_C1_06','I would posit that the root cause lies not in the symptom but in the underlying system.','근본 원인은 증상이 아니라 기저 시스템에 있다고 주장하고자 합니다.','I would posit that','"posit"은 "주장하다, 가정하다"의 뜻으로 학술·전문 발표에서 의견을 조심스럽게 제시할 때 써요.','주장 제시','C1','presentation','pattern',NULL,34),
('s_presentation_C1_07','To conclude, the convergence of these three factors creates an unprecedented opportunity.','결론적으로, 이 세 가지 요소의 수렴은 전례 없는 기회를 만들어냅니다.','convergence ... unprecedented opportunity','수렴과 기회를 연결하는 강력한 클로징 문장이에요. 발표를 희망적이고 명확하게 마무리해요.','결론','C1','presentation','pattern',NULL,35);

-- ══════════════════════════════════════════════════════════════════
-- PATTERNS — C2 (7개) : 수사학 & 고급 설득
-- ══════════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_presentation_C2_01','The dialectical tension between efficiency and equity is not a problem to be solved but a dynamic to be managed.','효율성과 형평성 사이의 변증법적 긴장은 해결해야 할 문제가 아니라 관리해야 할 역동성입니다.','dialectical tension ... dynamic to be managed','이분법을 거부하고 복잡성을 긍정하는 고급 수사 기법이에요. 청중에게 깊은 인상을 남깁니다.','수사학','C2','presentation','pattern',NULL,36),
('s_presentation_C2_02','What this meta-analysis reveals is not merely correlation but a robust causal mechanism.','이 메타분석이 드러내는 것은 단순한 상관관계가 아니라 견고한 인과 메커니즘입니다.','not merely ... but a robust causal mechanism','"not merely A but B" 구조로 주장의 격을 높이는 C2 수준 수사 표현이에요.','수사학','C2','presentation','pattern',NULL,37),
('s_presentation_C2_03','I invite you to interrogate your own assumptions as we work through this evidence together.','이 증거를 함께 검토하면서 자신의 가정을 면밀히 살펴보시길 권합니다.','interrogate your own assumptions','청중을 능동적 참여자로 초대하는 소크라테스식 수사 기법이에요.','설득 수사학','C2','presentation','pattern',NULL,38),
('s_presentation_C2_04','The epistemological question we must first address is: how do we know what we think we know?','우리가 먼저 다루어야 할 인식론적 질문은 이것입니다: 우리가 안다고 생각하는 것을 우리는 어떻게 알까요?','epistemological question','수사 의문문을 사용해 청중을 사고 실험으로 끌어들이는 고급 발표 기법이에요.','인식론적 접근','C2','presentation','pattern',NULL,39),
('s_presentation_C2_05','Through a process of triangulation across qualitative, quantitative, and ethnographic sources, we arrive at a remarkably consistent picture.','정성적, 정량적, 민족지적 출처에 걸친 삼각검증 과정을 통해 우리는 놀랍도록 일관된 그림에 도달합니다.','triangulation across ... remarkably consistent','다중 출처 검증을 강조하며 연구의 견고함을 드러내는 학술 발표의 핵심 표현이에요.','연구 방법론 설명','C2','presentation','pattern',NULL,40),
('s_presentation_C2_06','Far from being a peripheral concern, reflexivity is central to the integrity of this entire analysis.','성찰성은 주변적 관심사가 아니라 이 분석 전체의 무결성의 핵심입니다.','Far from being ... central to','"Far from being A, B is C" 구조는 기대를 뒤집으며 핵심을 부각하는 강력한 수사 기법이에요.','수사학','C2','presentation','pattern',NULL,41),
('s_presentation_C2_07','I leave you with a provocation: if our praxis does not challenge existing structures, what exactly are we here to present?','하나의 도발을 남깁니다: 우리의 실천이 기존 구조에 도전하지 않는다면, 우리는 정확히 무엇을 발표하러 여기 있는 것입니까?','I leave you with a provocation','발표를 열린 질문으로 마무리하며 청중의 사고를 자극하는 최고 수준의 수사적 클로징이에요.','수사학적 마무리','C2','presentation','pattern',NULL,42);

-- supabase-words-negotiation.sql
-- EngCat — 협상 (negotiation) 단어 + 패턴 데이터
-- 210 words (35 per CEFR level A1~C2) + 42 patterns (7 per level)
-- Schema: words (cefr, priority, image_keyword) + sentences (type, cefr, sort_order)

-- ══════════════════════════════════════════════════════════════
-- WORDS — A1 (35개)
-- ══════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_negotiation_A1_01','Can we agree on this?','이걸로 합의할 수 있을까요?','Can we agree','합의를 제안할 때 쓰는 가장 기본적인 표현이에요.','합의 제안','A1','negotiation','pattern',NULL,1),
('s_negotiation_A1_02','I want a better price.','더 좋은 가격을 원해요.','I want','원하는 것을 직접적으로 표현할 때 써요.','가격 요청','A1','negotiation','pattern',NULL,2),
('s_negotiation_A1_03','Can you give me a discount?','할인해 주실 수 있나요?','give me a discount','할인을 요청할 때 쓰는 가장 쉬운 표현이에요.','할인 요청','A1','negotiation','pattern',NULL,3),
('s_negotiation_A1_04','I need more time to decide.','결정하는 데 시간이 더 필요해요.','I need more time','결정을 미룰 때 자연스럽게 쓸 수 있어요.','시간 요청','A1','negotiation','pattern',NULL,4),
('s_negotiation_A1_05','Is that your best offer?','그게 최선의 제안인가요?','best offer','상대방이 더 낮출 여지가 있는지 물어볼 때 써요.','최선 확인','A1','negotiation','pattern',NULL,5),
('s_negotiation_A1_06','Let''s try to work this out.','함께 해결해 보도록 해요.','Let''s try','협력적인 분위기를 만들 때 쓰는 표현이에요.','협력 제안','A1','negotiation','pattern',NULL,6),
('s_negotiation_A1_07','I think we can agree on that.','그 부분에서 합의할 수 있을 것 같아요.','I think we can agree','조심스럽게 합의 가능성을 표현해요.','합의 신호','A1','negotiation','pattern',NULL,7);

-- ══════════════════════════════════════════════════════════════
-- PATTERNS — A2 (7개) : 가격 협상
-- ══════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_negotiation_A2_01','Could you reduce the price a little?','가격을 조금 낮춰주실 수 있나요?','Could you reduce','could로 시작하면 더 공손하게 들려요.','가격 조정 요청','A2','negotiation','pattern',NULL,8),
('s_negotiation_A2_02','If you lower the price, we''ll place a bigger order.','가격을 낮춰주시면 더 많이 주문할게요.','If you lower the price','조건을 제시하며 협상하는 패턴이에요.','조건부 제안','A2','negotiation','pattern',NULL,9),
('s_negotiation_A2_03','What discount can you offer for bulk orders?','대량 주문 시 어떤 할인을 제공할 수 있나요?','discount for bulk orders','대량 구매 할인을 물어볼 때 쓰는 표현이에요.','대량 할인 요청','A2','negotiation','pattern',NULL,10),
('s_negotiation_A2_04','That''s a bit over our budget — can we meet in the middle?','예산을 조금 초과하네요. 중간 지점에서 만날 수 있을까요?','meet in the middle','타협을 부드럽게 제안하는 표현이에요.','중간 타협 제안','A2','negotiation','pattern',NULL,11),
('s_negotiation_A2_05','Can we include free shipping in the deal?','거래에 무료 배송을 포함시킬 수 있나요?','include free shipping','추가 혜택을 조건으로 요청하는 패턴이에요.','추가 조건 요청','A2','negotiation','pattern',NULL,12),
('s_negotiation_A2_06','We''d like to confirm the payment terms in writing.','지불 조건을 서면으로 확인하고 싶어요.','confirm the payment terms in writing','중요한 조건을 문서화할 때 써요.','조건 문서화','A2','negotiation','pattern',NULL,13),
('s_negotiation_A2_07','Is there any flexibility on the delivery date?','납품 날짜에 유연성이 있나요?','flexibility on the delivery date','일정 협상을 시작할 때 쓰는 표현이에요.','일정 협상','A2','negotiation','pattern',NULL,14);

-- ══════════════════════════════════════════════════════════════
-- PATTERNS — B1 (7개) : 조건 제시
-- ══════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_negotiation_B1_01','We''re prepared to commit to a two-year contract if you can lower the unit price.','단가를 낮춰주시면 2년 계약을 체결할 준비가 돼 있어요.','prepared to commit','장기 계약을 레버리지로 활용하는 협상 패턴이에요.','장기 계약 제안','B1','negotiation','pattern',NULL,15),
('s_negotiation_B1_02','Would you be open to a counterproposal on the delivery schedule?','납품 일정에 대한 역제안을 받아들이실 수 있나요?','open to a counterproposal','상대방의 개방성을 부드럽게 타진하는 표현이에요.','역제안 제시','B1','negotiation','pattern',NULL,16),
('s_negotiation_B1_03','Our position is that the penalty clause needs to be revised.','위약금 조항은 수정되어야 한다는 것이 우리의 입장이에요.','Our position is that','협상 입장을 명확히 표명할 때 쓰는 격식 표현이에요.','입장 표명','B1','negotiation','pattern',NULL,17),
('s_negotiation_B1_04','We can agree to that clause, provided that payment terms are extended to sixty days.','지불 기간을 60일로 연장해 주신다면 해당 조항에 동의할 수 있어요.','provided that','조건부 동의를 표현하는 핵심 패턴이에요.','조건부 동의','B1','negotiation','pattern',NULL,18),
('s_negotiation_B1_05','We have a firm deadline of the fifteenth, so we''ll need a decision by then.','15일이 확정 마감일이라 그때까지 결정이 필요해요.','firm deadline','시간적 압박을 협상 도구로 사용하는 표현이에요.','마감 압박','B1','negotiation','pattern',NULL,19),
('s_negotiation_B1_06','All stakeholders have agreed on the agenda, so let''s move to the binding clauses.','모든 이해관계자가 의제에 동의했으니 구속력 있는 조항으로 넘어가요.','All stakeholders have agreed','회의 진행을 공식적으로 전환할 때 써요.','의제 전환','B1','negotiation','pattern',NULL,20),
('s_negotiation_B1_07','If we can''t reach a compromise today, we may need to involve a mediator.','오늘 타협에 이르지 못하면 조정인을 참여시켜야 할 수도 있어요.','reach a compromise','중재를 암시해 협상 속도를 높이는 표현이에요.','중재 암시','B1','negotiation','pattern',NULL,21);

-- ══════════════════════════════════════════════════════════════
-- PATTERNS — B2 (7개) : 계약 조율
-- ══════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_negotiation_B2_01','The indemnity clause as drafted exposes us to unlimited liability, which we cannot accept.','현재 초안의 면책 조항은 무제한 책임을 노출시켜서 받아들일 수 없어요.','exposes us to unlimited liability','책임 범위를 구체적으로 지목하며 수정을 요구하는 패턴이에요.','면책 조항 협상','B2','negotiation','pattern',NULL,22),
('s_negotiation_B2_02','We propose that any disputes be referred to arbitration under ICC rules.','모든 분쟁은 ICC 규정에 따른 중재에 회부할 것을 제안해요.','referred to arbitration','분쟁 해결 조항을 제안하는 격식 표현이에요.','분쟁 해결 조항 제안','B2','negotiation','pattern',NULL,23),
('s_negotiation_B2_03','The warranty period should be extended to twenty-four months to align with industry standards.','산업 표준에 맞추기 위해 보증 기간을 24개월로 연장해야 해요.','to align with industry standards','업계 기준을 근거로 조건 개선을 요구하는 표현이에요.','보증 기간 협상','B2','negotiation','pattern',NULL,24),
('s_negotiation_B2_04','Payment will be released from escrow only upon satisfactory delivery and inspection.','만족스러운 납품 및 검수 후에만 에스크로에서 지불이 해제돼요.','released from escrow only upon','에스크로 조건을 명확히 설정하는 계약 언어예요.','에스크로 조건 설정','B2','negotiation','pattern',NULL,25),
('s_negotiation_B2_05','We need to include a force majeure clause covering pandemics and supply chain disruptions.','팬데믹과 공급망 혼란을 포함하는 불가항력 조항이 필요해요.','force majeure clause covering','현대 계약에 필수적인 불가항력 조항을 협상할 때 써요.','불가항력 조항 삽입','B2','negotiation','pattern',NULL,26),
('s_negotiation_B2_06','The liquidated damages rate of two percent per week is disproportionate and should be reduced.','주당 2%의 약정 손해배상률은 과도하므로 낮춰야 해요.','disproportionate and should be reduced','손해배상 비율이 과하다고 반박할 때 쓰는 표현이에요.','약정 손해배상 협상','B2','negotiation','pattern',NULL,27),
('s_negotiation_B2_07','Both parties should ratify the final agreement by the end of the month to avoid further delays.','추가 지연을 피하기 위해 양 당사자가 이번 달 말까지 최종 합의를 비준해야 해요.','Both parties should ratify','공식 비준 절차를 촉구하는 표현이에요.','비준 촉구','B2','negotiation','pattern',NULL,28);

-- ══════════════════════════════════════════════════════════════
-- PATTERNS — C1 (7개) : 법적 협상
-- ══════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_negotiation_C1_01','The fiduciary obligations imposed on the trustee preclude self-dealing in this transaction.','수탁자에게 부과된 신탁 의무는 이 거래에서 자기 거래를 배제해요.','fiduciary obligations preclude','신탁 의무를 근거로 자기 거래를 차단하는 법적 주장이에요.','신탁 의무 주장','C1','negotiation','pattern',NULL,29),
('s_negotiation_C1_02','The lien held by the creditor must be discharged prior to transfer of title.','채권자가 보유한 유치권은 소유권 이전 전에 해제돼야 해요.','lien held by the creditor must be discharged','소유권 이전 전 유치권 해제를 요구하는 법적 표현이에요.','유치권 해제 요구','C1','negotiation','pattern',NULL,30),
('s_negotiation_C1_03','We are seeking an injunction to restrain the respondent from further breach of the covenant.','피응답인의 추가적인 약정 위반을 막기 위해 금지 명령을 구하고 있어요.','seeking an injunction to restrain','법원에 금지 명령을 신청할 때 쓰는 고급 법적 표현이에요.','금지 명령 신청','C1','negotiation','pattern',NULL,31),
('s_negotiation_C1_04','The remedy available for breach of this covenant is specific performance, not merely damages.','이 약정 위반에 대한 구제책은 손해배상뿐만 아니라 특정 이행이에요.','remedy available is specific performance','손해배상 대신 특정 이행을 구제책으로 주장하는 표현이에요.','특정 이행 주장','C1','negotiation','pattern',NULL,32),
('s_negotiation_C1_05','The jurisdiction clause designates Singapore as the exclusive forum for all disputes.','관할권 조항은 모든 분쟁에 대해 싱가포르를 독점적 법정지로 지정해요.','jurisdiction clause designates','관할권 조항의 내용을 명시적으로 인용하는 법적 표현이에요.','관할권 조항 인용','C1','negotiation','pattern',NULL,33),
('s_negotiation_C1_06','Subrogation rights vest in the insurer upon payment of the insured''s claim.','피보험자의 청구 지급 시 보험사에게 대위 청구권이 발생해요.','Subrogation rights vest in the insurer','보험 분쟁 협상에서 대위 청구권을 주장하는 표현이에요.','대위 청구권 주장','C1','negotiation','pattern',NULL,34),
('s_negotiation_C1_07','The conditions precedent to drawdown have not been satisfied, suspending our obligation to lend.','대출 실행의 선행 조건이 충족되지 않아 우리의 대출 의무가 정지됐어요.','conditions precedent to drawdown have not been satisfied','선행 조건 미충족을 근거로 의무를 정지시키는 표현이에요.','선행 조건 미충족 주장','C1','negotiation','pattern',NULL,35);

-- ══════════════════════════════════════════════════════════════
-- PATTERNS — C2 (7개) : 고급 법적 협상
-- ══════════════════════════════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_negotiation_C2_01','The doctrine of promissory estoppel bars the claimant from resiling from the representation made during pre-contractual negotiations.','약속적 금반언 원칙은 계약 전 협상 중 이루어진 진술에서 청구인이 후퇴하는 것을 막아요.','promissory estoppel bars the claimant from resiling','선계약 단계의 진술을 법적으로 구속하는 고급 주장이에요.','약속적 금반언 주장','C2','negotiation','pattern',NULL,36),
('s_negotiation_C2_02','Quantum meruit entitles the claimant to reasonable remuneration for services rendered in the absence of an agreed price.','약정 가격이 없는 경우 제공된 서비스에 대해 합리적인 보수를 청구할 권리가 있어요.','Quantum meruit entitles','가격 미합의 상황에서 보수를 청구하는 법적 근거를 제시하는 표현이에요.','정당 보수 청구','C2','negotiation','pattern',NULL,37),
('s_negotiation_C2_03','The contract is void ab initio on the grounds of economic duress applied during the execution phase.','계약 체결 단계에서 가해진 경제적 강박을 이유로 계약은 처음부터 무효예요.','void ab initio on the grounds of economic duress','경제적 강박을 이유로 계약 자체를 무효화하는 강력한 법적 주장이에요.','경제적 강박 무효 주장','C2','negotiation','pattern',NULL,38),
('s_negotiation_C2_04','Novation extinguishes the original obligation and substitutes a new contract between the parties, thereby releasing the original debtor.','계약 갱신은 원래 의무를 소멸시키고 새로운 계약으로 대체해 원래 채무자를 면책시켜요.','Novation extinguishes the original obligation','채무 교체의 법적 효과를 정확히 설명하는 표현이에요.','계약 갱신 효과 설명','C2','negotiation','pattern',NULL,39),
('s_negotiation_C2_05','Under the rule in contra proferentem, the ambiguous exclusion clause is construed against the party who drafted it.','작성자 불이익 원칙에 따라 모호한 면책 조항은 이를 작성한 당사자에게 불리하게 해석돼요.','contra proferentem construed against the drafter','모호한 계약 조항에서 유리한 해석을 확보하는 전략적 표현이에요.','작성자 불이익 원칙 적용','C2','negotiation','pattern',NULL,40),
('s_negotiation_C2_06','The unjust enrichment claim rests on the defendant''s failure to make restitution following rescission of the contract.','부당 이득 청구는 계약 취소 후 피고의 원상 회복 불이행에 근거해요.','unjust enrichment rests on failure to make restitution','계약 취소 후 원상 회복 의무 불이행을 공격하는 법적 논리예요.','부당 이득 청구 근거 제시','C2','negotiation','pattern',NULL,41),
('s_negotiation_C2_07','Piercing the corporate veil is warranted where the subsidiary was used as a mere facade to evade pre-existing contractual obligations.','자회사가 기존 계약 의무를 회피하기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.','Piercing the corporate veil is warranted','법인격을 이용한 의무 회피에 대응하는 최고급 법적 주장이에요.','법인격 부인 주장','C2','negotiation','pattern',NULL,42);

-- supabase-words-humanities.sql
-- EngCat — humanities (문학·인문) 단어 + 패턴
-- 210 words (35 × A1~C2) + 42 patterns (7 × A1~C2)
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (기초)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_humanities_A1_01','Have you read any good books lately?','최근에 좋은 책 읽었어요?','read any good books','lately는 "최근에"라는 의미로 현재완료와 잘 어울려요.','독서 화제','A1','humanities','pattern',NULL,1),
('s_humanities_A1_02','What is your favorite book?','가장 좋아하는 책이 뭐예요?','your favorite book','What is your favorite ~?는 상대의 취향을 묻는 가장 기본적인 패턴이에요.','취향 묻기','A1','humanities','pattern',NULL,2),
('s_humanities_A1_03','I really like this story.','이 이야기가 정말 좋아요.','really like this story','really를 넣으면 감정을 더 강하게 표현할 수 있어요.','감상 표현','A1','humanities','pattern',NULL,3),
('s_humanities_A1_04','Can you tell me the name of the book?','책 제목을 알려줄 수 있어요?','tell me the name','Can you ~?는 A1 수준에서 가장 자연스러운 요청 표현이에요.','제목 묻기','A1','humanities','pattern',NULL,4),
('s_humanities_A1_05','I want to read more books in English.','영어로 된 책을 더 읽고 싶어요.','read more books in English','I want to ~는 희망과 목표를 간단하게 표현하는 패턴이에요.','학습 목표','A1','humanities','pattern',NULL,5),
('s_humanities_A1_06','This poem is very beautiful.','이 시는 정말 아름다워요.','very beautiful','This ~ is very ~. 구조는 감상을 간결하게 전달해요.','시 감상','A1','humanities','pattern',NULL,6),
('s_humanities_A1_07','Do you like to read stories?','이야기 읽는 걸 좋아하세요?','Do you like to read','Do you like to ~?는 취미를 묻는 가장 쉬운 표현이에요.','취미 묻기','A1','humanities','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (작가·장르)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_humanities_A2_01','Who is your favorite author and why?','가장 좋아하는 작가는 누구이고 왜 그런가요?','favorite author and why','and why?를 붙이면 단순한 정보 교환을 넘어 의견 공유를 유도해요.','작가 추천','A2','humanities','pattern',NULL,8),
('s_humanities_A2_02','I enjoy reading mystery novels.','저는 추리 소설 읽는 걸 즐겨요.','enjoy reading mystery novels','enjoy + -ing는 취미 표현의 핵심 패턴이에요.','장르 표현','A2','humanities','pattern',NULL,9),
('s_humanities_A2_03','This book is based on a true story.','이 책은 실화를 바탕으로 했어요.','based on a true story','based on ~은 영화·책 소개에서 매우 자주 쓰여요.','책 소개','A2','humanities','pattern',NULL,10),
('s_humanities_A2_04','Have you heard of this author before?','이 작가에 대해 들어본 적 있어요?','Have you heard of','Have you heard of ~?는 상대의 지식을 확인하는 자연스러운 표현이에요.','작가 소개','A2','humanities','pattern',NULL,11),
('s_humanities_A2_05','What kind of books do you usually read?','보통 어떤 종류의 책을 읽으세요?','What kind of books','What kind of ~?는 종류나 유형을 묻는 범용 패턴이에요.','장르 묻기','A2','humanities','pattern',NULL,12),
('s_humanities_A2_06','I prefer historical fiction to fantasy.','저는 판타지보다 역사 소설을 더 좋아해요.','prefer ~ to ~','prefer A to B 패턴으로 두 가지를 자연스럽게 비교할 수 있어요.','장르 비교','A2','humanities','pattern',NULL,13),
('s_humanities_A2_07','The main character in this novel is very interesting.','이 소설의 주인공이 매우 흥미로워요.','main character ~ very interesting','The main character is ~로 인물을 소개하는 기본 표현이에요.','인물 소개','A2','humanities','pattern',NULL,14);

-- ══════════════════════════════════════
-- PATTERNS — B1 (문학 분석)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_humanities_B1_01','The author uses symbolism to convey the theme of loss.','작가는 상실의 주제를 전달하기 위해 상징주의를 사용해요.','uses symbolism to convey','use A to do B 패턴은 수단과 목적을 연결하는 핵심 분석 표현이에요.','문학 분석','B1','humanities','pattern',NULL,15),
('s_humanities_B1_02','From whose perspective is the story told?','이야기는 누구의 관점에서 서술되나요?','From whose perspective','From whose perspective is ~?는 서술 시점을 묻는 정확한 표현이에요.','서술 시점','B1','humanities','pattern',NULL,16),
('s_humanities_B1_03','How does the setting influence the characters'' behavior?','배경이 등장인물들의 행동에 어떤 영향을 미치나요?','setting influence the characters'' behavior','How does X influence Y? 패턴은 원인-결과 관계를 탐구해요.','배경 분석','B1','humanities','pattern',NULL,17),
('s_humanities_B1_04','What do you think the writer is trying to say?','작가가 무엇을 말하려 한다고 생각하세요?','what the writer is trying to say','What do you think ~?는 독자의 해석을 이끌어내는 토론 유도 표현이에요.','주제 토론','B1','humanities','pattern',NULL,18),
('s_humanities_B1_05','The conflict between tradition and modernity runs throughout the novel.','전통과 근대성 사이의 갈등이 소설 전반에 걸쳐 흐르고 있어요.','conflict between ~ runs throughout','run throughout은 "전반에 걸쳐 이어지다"는 뜻의 문학 분석 필수 표현이에요.','주제 분석','B1','humanities','pattern',NULL,19),
('s_humanities_B1_06','I found the narrator unreliable because his account kept changing.','화자의 설명이 계속 바뀌어서 신뢰하기 어렵다고 느꼈어요.','narrator unreliable ~ kept changing','kept + -ing는 반복적인 행동을 묘사하는 자연스러운 패턴이에요.','화자 분석','B1','humanities','pattern',NULL,20),
('s_humanities_B1_07','Can you give an example from the text to support your idea?','당신의 생각을 뒷받침할 텍스트에서의 예시를 들어줄 수 있나요?','give an example from the text to support','give an example to support ~는 증거 기반 토론의 핵심 요청 표현이에요.','근거 요청','B1','humanities','pattern',NULL,21);

-- ══════════════════════════════════════
-- PATTERNS — B2 (비평)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_humanities_B2_01','The irony lies in the gap between what the narrator says and what actually happens.','아이러니는 화자가 말하는 것과 실제로 일어나는 것 사이의 간극에 있어요.','irony lies in the gap between','The irony lies in ~은 아이러니를 정밀하게 분석하는 비평 표현이에요.','아이러니 분석','B2','humanities','pattern',NULL,22),
('s_humanities_B2_02','One could argue that the novel is more of an allegory than a realist text.','이 소설은 사실주의 텍스트라기보다 알레고리에 가깝다고 주장할 수 있어요.','One could argue that','One could argue that ~은 학술 에세이와 비평에서 쓰는 격식 있는 주장 패턴이에요.','비평 주장','B2','humanities','pattern',NULL,23),
('s_humanities_B2_03','The motif of water recurs throughout the text, suggesting purification.','물의 모티프가 텍스트 전반에 반복되며 정화를 암시해요.','motif ~ recurs throughout ~ suggesting','recurs throughout ~ suggesting은 모티프 분석의 정형화된 표현이에요.','모티프 분석','B2','humanities','pattern',NULL,24),
('s_humanities_B2_04','The subtext reveals a deep anxiety about social class.','서브텍스트는 사회 계층에 대한 깊은 불안을 드러내요.','subtext reveals a deep anxiety about','The subtext reveals ~ 패턴은 텍스트의 숨겨진 층위를 드러낼 때 써요.','서브텍스트','B2','humanities','pattern',NULL,25),
('s_humanities_B2_05','Reading the novel against its historical context changes how we interpret the ending.','소설을 역사적 맥락에 비추어 읽으면 결말 해석이 달라져요.','Reading ~ against its historical context','reading X against Y 구조는 텍스트를 외부 맥락과 연결하는 비평 방법이에요.','맥락 비평','B2','humanities','pattern',NULL,26),
('s_humanities_B2_06','The satirical tone forces the reader to question assumptions they might otherwise take for granted.','풍자적 어조는 독자로 하여금 당연하게 여길 수 있는 전제를 의심하게 만들어요.','satirical tone forces the reader to question','force the reader to ~는 텍스트가 독자에게 미치는 효과를 설명하는 표현이에요.','풍자 분석','B2','humanities','pattern',NULL,27),
('s_humanities_B2_07','The paradox at the heart of the novel is that freedom leads to isolation.','소설의 핵심에 있는 역설은 자유가 고립으로 이어진다는 것이에요.','paradox at the heart of the novel','at the heart of ~은 핵심 주제나 역설을 강조하는 비평 표현이에요.','역설 분석','B2','humanities','pattern',NULL,28);

-- ══════════════════════════════════════
-- PATTERNS — C1 (문학 이론)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_humanities_C1_01','A hermeneutic approach asks not what the text means, but how meaning is produced.','해석학적 접근은 텍스트가 무엇을 의미하는지가 아니라 의미가 어떻게 생산되는지를 묻죠.','hermeneutic approach asks not ~ but how','not ~ but how 구조는 관점의 전환을 명확히 드러내는 학술 표현이에요.','해석학 논의','C1','humanities','pattern',NULL,29),
('s_humanities_C1_02','Through a semiotic lens, the white dress signifies far more than purity.','기호학적 렌즈를 통하면, 흰 드레스는 순결 이상의 훨씬 많은 것을 의미해요.','Through a semiotic lens ~ signifies far more than','through a ~ lens는 이론적 프레임으로 분석함을 나타내는 표현이에요.','기호학 분석','C1','humanities','pattern',NULL,30),
('s_humanities_C1_03','Intertextuality suggests that no text is fully autonomous; all writing responds to what came before.','상호텍스트성은 완전히 자율적인 텍스트는 없으며, 모든 글쓰기는 이전 것에 반응한다는 것을 시사해요.','Intertextuality suggests that no text is fully autonomous','no text is fully autonomous는 상호텍스트성의 핵심 명제를 요약해요.','상호텍스트성','C1','humanities','pattern',NULL,31),
('s_humanities_C1_04','Deconstruction does not destroy meaning; it reveals the instability that was always already there.','해체주의는 의미를 파괴하지 않고, 항상 이미 그곳에 있던 불안정성을 드러내요.','always already there','always already는 데리다 이론의 핵심 표현으로 현재 안에 과거가 내포됨을 나타내요.','해체주의 이론','C1','humanities','pattern',NULL,32),
('s_humanities_C1_05','Phenomenological criticism foregrounds the reader''s lived experience of the text.','현상학적 비평은 텍스트에 대한 독자의 생생한 경험을 전면에 부각시켜요.','foregrounds the reader''s lived experience','foreground는 무언가를 중심으로 가져온다는 문학 이론 용어예요.','현상학 비평','C1','humanities','pattern',NULL,33),
('s_humanities_C1_06','Bakhtin''s concept of polyphony challenges the idea of a single authoritative voice in the novel.','바흐친의 다성 개념은 소설에서 단일하고 권위적인 목소리라는 생각에 도전해요.','polyphony challenges the idea of a single authoritative voice','challenge the idea of ~는 지배적 개념을 문제 삼는 학술 표현이에요.','다성 이론','C1','humanities','pattern',NULL,34),
('s_humanities_C1_07','The sublime, as Burke defines it, involves a blend of terror and awe that exceeds rational comprehension.','버크가 정의한 숭고함은 이성적 이해를 초월하는 공포와 경외의 혼합을 포함해요.','involves a blend of ~ that exceeds rational comprehension','exceed rational comprehension은 숭고 미학을 설명하는 핵심 구절이에요.','숭고 미학','C1','humanities','pattern',NULL,35);

-- ══════════════════════════════════════
-- PATTERNS — C2 (문학 이론 심화)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_humanities_C2_01','Différance operates as the ungraspable condition of possibility for all meaning.','디페랑스는 모든 의미의 가능성에 대한 파악 불가능한 조건으로 작동해요.','operates as the ungraspable condition of possibility','operate as ~는 어떤 개념이 어떤 역할을 하는지 설명하는 학술 표현이에요.','해체 이론','C2','humanities','pattern',NULL,36),
('s_humanities_C2_02','The palimpsest as a metaphor invites us to read the text''s silences as much as its statements.','팔림프세스트를 은유로 취하면, 텍스트의 진술만큼 침묵도 읽으라는 초대가 돼요.','invites us to read the text''s silences as much as','as much as는 두 요소를 동등하게 취급하라는 요청을 나타내요.','팔림프세스트 이론','C2','humanities','pattern',NULL,37),
('s_humanities_C2_03','Defamiliarization, according to the Russian Formalists, is the very purpose of literary language.','러시아 형식주의자들에 따르면, 낯설게 하기는 문학적 언어의 바로 그 목적이에요.','the very purpose of literary language','the very ~는 강조 표현으로, 그것 자체가 핵심임을 나타내요.','형식주의 이론','C2','humanities','pattern',NULL,38),
('s_humanities_C2_04','As a rhizome, the text resists any single origin or fixed endpoint of meaning.','리좀으로서 텍스트는 어떠한 단일한 기원이나 고정된 의미의 종착점에도 저항해요.','resists any single origin or fixed endpoint','resist any single ~는 다원성과 열린 구조를 강조할 때 쓰는 표현이에요.','리좀 이론','C2','humanities','pattern',NULL,39),
('s_humanities_C2_05','Heteroglossia ensures that the novel can never be reduced to a single ideological position.','헤테로글로시아는 소설이 결코 단일한 이데올로기적 입장으로 환원될 수 없음을 보장해요.','can never be reduced to a single ideological position','be reduced to ~는 복잡성을 단순화하는 환원주의에 저항할 때 쓰는 표현이에요.','다성 이론','C2','humanities','pattern',NULL,40),
('s_humanities_C2_06','The chronotope of the threshold marks a liminal space where identity is suspended between states.','문지방의 크로노토프는 정체성이 두 상태 사이에 유예되는 경계적 공간을 표시해요.','marks a liminal space where identity is suspended between states','liminal space ~ suspended between states는 경계 공간의 특성을 묘사하는 핵심 표현이에요.','크로노토프 분석','C2','humanities','pattern',NULL,41),
('s_humanities_C2_07','Negative capability, for Keats, is not a weakness but the poet''s supreme capacity to inhabit uncertainty without discomfort.','키츠에게 부정적 수용 능력은 약점이 아니라 불편 없이 불확실성 안에 머무는 시인의 최고 능력이에요.','not a weakness but the poet''s supreme capacity to inhabit uncertainty','inhabit uncertainty는 불확실성을 견디는 것이 아닌 그 안에 사는 것을 나타내는 키츠 핵심 표현이에요.','낭만 시학','C2','humanities','pattern',NULL,42);

-- supabase-words-technology.sql
-- EngCat — Technology (과학·기술) 단어 + 패턴
-- 210 words (35 × A1~C2) + 42 patterns (7 × A1~C2)
-- Generated: 2026-05-24

-- ══════════════════════════════════════
-- WORDS — A1 (컴퓨터·기기 기초)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_technology_A1_01','How do I use this app?','이 앱 어떻게 사용해요?','How do I use','사용 방법을 물을 때 "How do I...?"를 써요.','앱 사용','A1','technology','pattern',NULL,1),
('s_technology_A1_02','Can you turn on the computer, please?','컴퓨터를 켜주시겠어요?','Can you turn on','정중하게 부탁할 때 "Can you...?"를 써요.','기기 작동','A1','technology','pattern',NULL,2),
('s_technology_A1_03','My phone is not working.','제 휴대폰이 작동하지 않아요.','is not working','기기 고장을 알릴 때 "is not working"을 사용해요.','기기 문제','A1','technology','pattern',NULL,3),
('s_technology_A1_04','Where can I charge my phone?','어디서 휴대폰을 충전할 수 있나요?','Where can I charge','장소를 물을 때 "Where can I...?"로 시작해요.','충전','A1','technology','pattern',NULL,4),
('s_technology_A1_05','Please take a photo of us.','저희 사진 찍어주세요.','Please take a photo','"Please + 동사원형"은 부드러운 명령 표현이에요.','사진 촬영','A1','technology','pattern',NULL,5),
('s_technology_A1_06','I don''t know my password.','비밀번호를 모르겠어요.','I don''t know','모르는 것을 솔직하게 말할 때 "I don''t know"를 써요.','로그인 문제','A1','technology','pattern',NULL,6),
('s_technology_A1_07','This screen is too small.','이 화면이 너무 작아요.','too small','크기나 정도를 표현할 때 "too + 형용사"를 써요.','화면 크기','A1','technology','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (기술 문제 해결, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_technology_A2_01','Have you tried turning it off and on again?','껐다가 다시 켜 보셨나요?','Have you tried','조언을 제안할 때 "Have you tried...?"는 아주 자연스러운 표현이에요.','기술 문제 해결','A2','technology','pattern',NULL,1),
('s_technology_A2_02','The wifi isn''t connecting. What should I do?','와이파이가 연결이 안 돼요. 어떻게 하면 좋을까요?','What should I do','해결책을 물을 때 "What should I do?"를 써요.','와이파이 문제','A2','technology','pattern',NULL,2),
('s_technology_A2_03','You need to update the software first.','먼저 소프트웨어를 업데이트해야 해요.','You need to update','필요한 행동을 설명할 때 "You need to..."를 써요.','소프트웨어 업데이트','A2','technology','pattern',NULL,3),
('s_technology_A2_04','My battery keeps dying so quickly.','배터리가 너무 빨리 닳아요.','keeps dying','반복되는 문제를 표현할 때 "keeps + -ing"를 써요.','배터리 문제','A2','technology','pattern',NULL,4),
('s_technology_A2_05','Make sure to back up your files before deleting them.','파일을 삭제하기 전에 반드시 백업하세요.','Make sure to back up','중요한 조언을 강조할 때 "Make sure to..."를 써요.','데이터 백업','A2','technology','pattern',NULL,5),
('s_technology_A2_06','I accidentally deleted the file. Can I get it back?','실수로 파일을 삭제했어요. 복구할 수 있나요?','I accidentally deleted','실수를 설명할 때 "I accidentally..."를 써요.','파일 복구','A2','technology','pattern',NULL,6),
('s_technology_A2_07','The download is taking forever.','다운로드가 너무 오래 걸려요.','taking forever','무언가가 매우 오래 걸린다는 것을 강조할 때 "taking forever"를 써요.','다운로드 속도','A2','technology','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B1 (새 기술 설명, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_technology_B1_01','Basically, it works by analyzing your data and making predictions.','기본적으로, 데이터를 분석해서 예측하는 방식으로 작동해요.','Basically, it works by','기술 개념을 쉽게 설명할 때 "Basically, it works by..."를 써요.','기술 설명','B1','technology','pattern',NULL,1),
('s_technology_B1_02','In simple terms, the cloud is like an online hard drive.','쉽게 말하면, 클라우드는 온라인 하드 드라이브 같은 거예요.','In simple terms','복잡한 개념을 쉽게 설명할 때 "In simple terms"을 사용해요.','클라우드 설명','B1','technology','pattern',NULL,2),
('s_technology_B1_03','The main advantage of this technology is that it saves time.','이 기술의 가장 큰 장점은 시간을 절약해준다는 거예요.','The main advantage is','장점을 설명할 때 "The main advantage is..."를 써요.','기술 장점','B1','technology','pattern',NULL,3),
('s_technology_B1_04','Have you heard of this new app? It''s supposed to be really useful.','이 새로운 앱 들어봤어요? 정말 유용하다고 해요.','It''s supposed to be','다른 사람의 말을 전할 때 "It''s supposed to be..."를 써요.','앱 추천','B1','technology','pattern',NULL,4),
('s_technology_B1_05','The reason encryption is important is that it keeps your data safe.','암호화가 중요한 이유는 데이터를 안전하게 보호해주기 때문이에요.','The reason... is that','이유를 설명할 때 "The reason... is that..."을 써요.','보안 설명','B1','technology','pattern',NULL,5),
('s_technology_B1_06','One of the downsides is that it uses a lot of battery.','단점 중 하나는 배터리를 많이 소모한다는 거예요.','One of the downsides is','단점을 언급할 때 "One of the downsides is..."를 써요.','기술 단점','B1','technology','pattern',NULL,6),
('s_technology_B1_07','This feature was designed to make things easier for users.','이 기능은 사용자를 위해 더 편리하게 만들기 위해 설계됐어요.','was designed to','목적을 설명할 때 "was designed to..."를 써요.','기능 설명','B1','technology','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — B2 (AI·빅데이터 논의, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_technology_B2_01','AI is increasingly being used to automate tasks that humans used to do.','AI는 인간이 하던 작업을 자동화하는 데 점점 더 많이 활용되고 있어요.','increasingly being used to','트렌드를 설명할 때 "is increasingly being used to..."를 써요.','AI 활용','B2','technology','pattern',NULL,1),
('s_technology_B2_02','One concern with machine learning is the potential for bias in the data.','머신러닝의 한 가지 우려점은 데이터 편향 가능성이에요.','One concern with... is','문제점을 제기할 때 "One concern with... is..."를 써요.','AI 문제점','B2','technology','pattern',NULL,2),
('s_technology_B2_03','What sets this algorithm apart is its ability to learn from very little data.','이 알고리즘을 차별화하는 것은 매우 적은 데이터로 학습하는 능력이에요.','What sets... apart is','차별점을 강조할 때 "What sets... apart is..."를 써요.','알고리즘 비교','B2','technology','pattern',NULL,3),
('s_technology_B2_04','The way I see it, data privacy should be a fundamental right.','제 생각에는 데이터 프라이버시가 기본권이어야 해요.','The way I see it','자신의 의견을 표현할 때 "The way I see it..."을 써요.','데이터 프라이버시','B2','technology','pattern',NULL,4),
('s_technology_B2_05','There is growing evidence that automation is reshaping the job market.','자동화가 취업 시장을 재편하고 있다는 증거가 점점 늘고 있어요.','There is growing evidence that','증거를 제시할 때 "There is growing evidence that..."을 써요.','자동화 영향','B2','technology','pattern',NULL,5),
('s_technology_B2_06','It remains to be seen whether blockchain will become mainstream.','블록체인이 주류가 될지는 아직 두고 봐야 해요.','It remains to be seen whether','불확실한 미래를 말할 때 "It remains to be seen whether..."을 써요.','기술 전망','B2','technology','pattern',NULL,6),
('s_technology_B2_07','To put it simply, large language models learn patterns from enormous amounts of text.','쉽게 말하면, 거대 언어 모델은 방대한 양의 텍스트에서 패턴을 학습해요.','To put it simply','복잡한 개념을 단순화할 때 "To put it simply..."를 써요.','AI 설명','B2','technology','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C1 (기술 미래 논의 심화, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_technology_C1_01','The implications of quantum computing for current encryption are profound and unsettling.','양자 컴퓨팅이 현재 암호화에 미치는 영향은 심대하고 불안한 수준이에요.','implications... are profound','심각한 영향을 논의할 때 "the implications... are profound"를 써요.','양자 컴퓨팅 영향','C1','technology','pattern',NULL,1),
('s_technology_C1_02','We must grapple with the ethical dimensions of deploying autonomous systems at scale.','자율 시스템을 대규모로 배포하는 것의 윤리적 측면을 진지하게 다뤄야 해요.','We must grapple with','어려운 문제를 직면해야 한다고 표현할 때 "must grapple with"를 써요.','AI 윤리','C1','technology','pattern',NULL,2),
('s_technology_C1_03','Edge computing fundamentally shifts the architecture of how data is processed.','엣지 컴퓨팅은 데이터 처리 방식의 아키텍처를 근본적으로 변화시켜요.','fundamentally shifts','근본적인 변화를 표현할 때 "fundamentally shifts"를 써요.','기술 패러다임','C1','technology','pattern',NULL,3),
('s_technology_C1_04','The challenge lies not in building capable AI, but in ensuring it remains controllable.','어려운 점은 유능한 AI를 구축하는 것이 아니라 제어 가능한 상태를 유지하는 것이에요.','The challenge lies not in... but in','핵심 어려움을 표현할 때 "The challenge lies not in... but in..."을 써요.','AI 안전','C1','technology','pattern',NULL,4),
('s_technology_C1_05','It would be premature to conclude that federated learning has solved the privacy problem.','연합 학습이 프라이버시 문제를 해결했다고 결론짓는 것은 시기상조예요.','It would be premature to conclude','성급한 결론을 경계할 때 "It would be premature to conclude"를 써요.','기술 평가','C1','technology','pattern',NULL,5),
('s_technology_C1_06','Scalability and latency are often in tension with each other in distributed systems.','분산 시스템에서 확장성과 지연 시간은 종종 서로 상충 관계에 있어요.','are often in tension with each other','상충 관계를 설명할 때 "are in tension with each other"를 써요.','시스템 설계','C1','technology','pattern',NULL,6),
('s_technology_C1_07','Prompt engineering is evolving so rapidly that best practices are still being established.','프롬프트 엔지니어링이 너무 빠르게 발전해서 모범 사례가 아직 확립되고 있는 중이에요.','is evolving so rapidly that','빠른 변화를 표현할 때 "is evolving so rapidly that..."를 써요.','AI 실무','C1','technology','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — C2 (기술 철학·미래 논의, 7개)
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_technology_C2_01','The notion of substrate independence raises fundamental questions about the nature of consciousness itself.','기질 독립성 개념은 의식 자체의 본질에 관한 근본적인 질문을 제기해요.','raises fundamental questions about the nature of','근본적인 철학적 문제를 제기할 때 쓰는 고급 표현이에요.','기술 철학','C2','technology','pattern',NULL,1),
('s_technology_C2_02','Whether emergent capabilities in AI systems reflect genuine understanding or sophisticated pattern-matching remains deeply contested.','AI 시스템의 창발적 능력이 진정한 이해를 반영하는지 아니면 정교한 패턴 매칭인지는 아직 깊이 논쟁 중이에요.','remains deeply contested','학문적으로 논쟁 중인 주제를 표현할 때 "remains deeply contested"를 써요.','AI 철학','C2','technology','pattern',NULL,2),
('s_technology_C2_03','Instrumental convergence suggests that sufficiently advanced AI will tend toward resource acquisition regardless of its original objectives.','수단적 수렴은 충분히 발전한 AI가 원래 목적과 무관하게 자원 획득 방향으로 수렴할 것임을 시사해요.','tends toward... regardless of','일반적 경향과 예외를 표현할 때 "tends toward... regardless of..."를 써요.','AI 안전 이론','C2','technology','pattern',NULL,3),
('s_technology_C2_04','The epistemological limitations of stochastic systems make absolute reliability an inherently unattainable goal.','확률론적 시스템의 인식론적 한계로 인해 절대적 신뢰성은 본질적으로 달성 불가능한 목표예요.','make... an inherently unattainable goal','불가능한 목표를 강조할 때 "make... an inherently unattainable goal"을 써요.','기술 한계','C2','technology','pattern',NULL,4),
('s_technology_C2_05','Exascale computing opens the door to simulations of unprecedented fidelity and scope.','엑사스케일 컴퓨팅은 전례 없는 충실도와 규모의 시뮬레이션의 문을 열어요.','opens the door to... of unprecedented','전례 없는 기회를 표현할 때 "opens the door to... of unprecedented"를 써요.','슈퍼컴퓨팅','C2','technology','pattern',NULL,5),
('s_technology_C2_06','Corrigibility and autonomy exist in inherent tension — a more capable agent may naturally resist correction.','교정 가능성과 자율성은 본질적인 긴장 관계에 있어요 — 더 유능한 에이전트는 자연스럽게 교정에 저항할 수 있어요.','exist in inherent tension','두 개념 간의 본질적 갈등을 논할 때 "exist in inherent tension"을 써요.','AI 안전 딜레마','C2','technology','pattern',NULL,6),
('s_technology_C2_07','Biomimetic and neuromorphic paradigms converge on the insight that nature has already solved many engineering problems we struggle with.','생체 모방과 뉴로모픽 패러다임은 자연이 이미 우리가 씨름하는 많은 공학적 문제를 해결했다는 통찰로 수렴해요.','converge on the insight that','여러 분야가 같은 결론에 도달할 때 "converge on the insight that"을 써요.','기술 철학','C2','technology','pattern',NULL,7);

-- supabase-words-news.sql
-- EngCat — 시사·뉴스 (news) 단어 + 패턴 데이터
-- 210 words (35 per CEFR A1~C2) + 42 patterns (7 per CEFR A1~C2)
-- Schema: words v2 (cefr, priority, image_keyword) + sentences v2 (type, cefr)

-- ══════════════════════════════════════
-- WORDS — A1
-- ══════════════════════════════════════

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_A1_01','Did you hear about...?','...에 대해 들었어요?','Did you hear about','최근 소식이나 뉴스를 자연스럽게 공유할 때 쓰는 첫 마디예요. "Did you hear about the fire?" 처럼 명사를 바로 이어 붙여요.','뉴스 공유','A1','news','pattern',NULL,1),
('s_news_A1_02','I saw on the news that...','뉴스에서 ...라는 걸 봤어요.','I saw on the news','TV나 온라인 뉴스에서 본 내용을 전달할 때 써요. "I saw on the news that there was a big flood." 처럼 that절을 이어요.','뉴스 전달','A1','news','pattern',NULL,2),
('s_news_A1_03','What happened?','무슨 일이 있었어요?','What happened','사건에 대해 더 알고 싶을 때 쓰는 가장 기본적인 질문이에요. 간단하지만 어디서든 쓸 수 있어요.','사건 질문','A1','news','pattern',NULL,3),
('s_news_A1_04','Is it true that...?','...가 사실이에요?','Is it true that','들은 이야기가 사실인지 확인할 때 써요. "Is it true that the president resigned?" 처럼 that절을 이어요.','사실 확인','A1','news','pattern',NULL,4),
('s_news_A1_05','They said on the news that...','뉴스에서 ...라고 했어요.','They said on the news','불특정 뉴스 출처를 인용할 때 "They said"를 써요. 구어체에서 아주 자주 쓰이는 표현이에요.','뉴스 인용','A1','news','pattern',NULL,5),
('s_news_A1_06','A lot of people were hurt.','많은 사람들이 다쳤어요.','A lot of people were hurt','사고나 재난 보도에서 자주 나오는 문장 구조예요. "were hurt"는 수동태로 피해를 표현해요.','피해 상황','A1','news','pattern',NULL,6),
('s_news_A1_07','The government said...','정부가 ...라고 했어요.','The government said','공식 발표나 성명을 인용할 때 가장 기본적인 구조예요. 뒤에 직접 또는 간접 인용을 붙여요.','공식 발표 인용','A1','news','pattern',NULL,7);

-- ══════════════════════════════════════
-- PATTERNS — A2 (사건 설명)
-- ══════════════════════════════════════

