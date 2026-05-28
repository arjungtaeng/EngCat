-- Batch 4: emotion, culture, humanities, presentation, greeting
-- Rewriting non-pattern cards into true grammar templates with explicit variables.
-- Variables: V (verb), N (noun), S (subject), A/B (alternatives), ~ (placeholder), Adj (adjective)

-- ===== EMOTION =====

-- s_emotion_A1_01: "I'm so happy!" → "I'm so Adj"
UPDATE sentences SET en='I''m so Adj!', ko='저 정말 Adj해요!', highlight='I''m so Adj' WHERE id='s_emotion_A1_01';

-- s_emotion_A1_06: "I feel good!" → "I feel Adj"
UPDATE sentences SET en='I feel Adj!', ko='저 Adj한 기분이에요!', highlight='I feel Adj' WHERE id='s_emotion_A1_06';

-- s_emotion_A1_05: "I'm scared." → "I'm Adj"
UPDATE sentences SET en='I''m Adj.', ko='저 Adj해요.', highlight='I''m Adj' WHERE id='s_emotion_A1_05';

-- s_emotion_A1_03: "I'm really tired." → "I'm really Adj"
UPDATE sentences SET en='I''m really Adj.', ko='저 정말 Adj해요.', highlight='I''m really Adj' WHERE id='s_emotion_A1_03';

-- s_emotion_A1_07: "I'm not okay." → "I'm not Adj"
UPDATE sentences SET en='I''m not Adj.', ko='저 Adj하지 않아요.', highlight='I''m not Adj' WHERE id='s_emotion_A1_07';

-- s_emotion_A1_02: "I feel sad today." → "I feel Adj today"
UPDATE sentences SET en='I feel Adj today.', ko='오늘 Adj한 기분이에요.', highlight='I feel Adj today' WHERE id='s_emotion_A1_02';

-- s_emotion_A1_04: "Are you okay?" → "Are you Adj?"
UPDATE sentences SET en='Are you Adj?', ko='Adj해요?', highlight='Are you Adj' WHERE id='s_emotion_A1_04';

-- s_emotion_A2_01: "I'm a little worried about it." → "I'm a little Adj about ~"
UPDATE sentences SET en='I''m a little Adj about ~.', ko='~에 대해 좀 Adj해요.', highlight='a little Adj about ~' WHERE id='s_emotion_A2_01';

-- s_emotion_A2_06: "I'm feeling a bit bored at home." → "I'm feeling a bit Adj"
UPDATE sentences SET en='I''m feeling a bit Adj ~.', ko='~에서 좀 Adj하게 느껴져요.', highlight='feeling a bit Adj' WHERE id='s_emotion_A2_06';

-- s_emotion_A2_04: "I felt really grateful for your help." → "I felt really Adj for ~"
UPDATE sentences SET en='I felt really Adj for ~.', ko='~에 대해 정말 Adj함을 느꼈어요.', highlight='felt really Adj for ~' WHERE id='s_emotion_A2_04';

-- s_emotion_A2_02: "She seemed upset when I saw her." → "S seemed Adj when ~"
UPDATE sentences SET en='S seemed Adj when ~.', ko='~할 때 S는 Adj해 보였어요.', highlight='S seemed Adj' WHERE id='s_emotion_A2_02';

-- s_emotion_A2_03: "I got so nervous before the speech." → "I got so Adj before ~"
UPDATE sentences SET en='I got so Adj before ~.', ko='~ 전에 너무 Adj해졌어요.', highlight='got so Adj before ~' WHERE id='s_emotion_A2_03';

-- s_emotion_A2_07: "I was so relieved to hear that." → "I was so Adj to V"
UPDATE sentences SET en='I was so Adj to V that.', ko='그 말을 V해서 정말 Adj했어요.', highlight='so Adj to V' WHERE id='s_emotion_A2_07';

-- s_emotion_A2_05: "He was so surprised by the news." → "S was so Adj by N"
UPDATE sentences SET en='S was so Adj by N.', ko='S는 N에 정말 Adj했어요.', highlight='so Adj by N' WHERE id='s_emotion_A2_05';

-- s_emotion_B1_03: "I've been feeling a bit overwhelmed lately." → "I've been feeling a bit Adj lately"
UPDATE sentences SET en='I''ve been feeling a bit Adj lately.', ko='요즘 좀 Adj한 기분이에요.', highlight='feeling a bit Adj lately' WHERE id='s_emotion_B1_03';

-- s_emotion_B1_02: "It's okay to feel that way." → already pattern-like, keep as "It's okay to V"
UPDATE sentences SET en='It''s okay to V that way.', ko='그렇게 V하는 건 괜찮아요.', highlight='It''s okay to V' WHERE id='s_emotion_B1_02';

-- s_emotion_B1_04: "That must have been really frustrating for you." → "That must have been really Adj for ~"
UPDATE sentences SET en='That must have been really Adj for ~.', ko='그게 ~에게 정말 Adj했겠어요.', highlight='must have been really Adj' WHERE id='s_emotion_B1_04';

-- s_emotion_B1_07: "I'm so relieved it all worked out in the end." → "I'm so Adj (that) S V"
UPDATE sentences SET en='I''m so Adj that S V in the end.', ko='결국 S가 V해서 정말 Adj해요.', highlight='so Adj that S V' WHERE id='s_emotion_B1_07';

-- s_emotion_B1_06: "She seemed really enthusiastic about the project." → "S seemed really Adj about N"
UPDATE sentences SET en='S seemed really Adj about N.', ko='S는 N에 정말 Adj해 보였어요.', highlight='seemed really Adj about N' WHERE id='s_emotion_B1_06';

-- s_emotion_B1_05: "I felt so guilty about what happened." → "I felt so Adj about ~"
UPDATE sentences SET en='I felt so Adj about ~.', ko='~에 대해 정말 Adj함을 느꼈어요.', highlight='felt so Adj about ~' WHERE id='s_emotion_B1_05';

-- s_emotion_B1_01: "I completely understand how you feel." → "I completely V how S V"
UPDATE sentences SET en='I completely V how you feel.', ko='어떤 기분인지 완전히 V해요.', highlight='completely V how' WHERE id='s_emotion_B1_01';

-- s_emotion_B2_07: "The situation left me feeling utterly bewildered." → "N left me feeling Adj"
UPDATE sentences SET en='N left me feeling utterly Adj.', ko='N은 저를 완전히 Adj하게 만들었어요.', highlight='left me feeling Adj' WHERE id='s_emotion_B2_07';

-- s_emotion_B2_01: "I couldn't help feeling a sense of melancholy as I left." → "I couldn't help V-ing"
UPDATE sentences SET en='I couldn''t help V-ing ~.', ko='~하는 걸 어쩔 수 없었어요.', highlight='couldn''t help V-ing' WHERE id='s_emotion_B2_01';

-- s_emotion_B2_04: "I find it hard to put into words how grateful I am." → "I find it hard to V"
UPDATE sentences SET en='I find it hard to V ~.', ko='~을 V하기가 어려워요.', highlight='find it hard to V' WHERE id='s_emotion_B2_04';

-- s_emotion_B2_03: "She was visibly shaken by the news." → "S was visibly Adj by N"
UPDATE sentences SET en='S was visibly Adj by N.', ko='S는 N에 눈에 띄게 Adj했어요.', highlight='visibly Adj by N' WHERE id='s_emotion_B2_03';

-- s_emotion_B2_06: "I was completely overwhelmed with gratitude." → "I was completely Adj with N"
UPDATE sentences SET en='I was completely Adj with N.', ko='N으로 완전히 Adj됐어요.', highlight='completely Adj with N' WHERE id='s_emotion_B2_06';

-- s_emotion_B2_05: "There's something bittersweet about saying goodbye." → "There's something Adj about V-ing"
UPDATE sentences SET en='There''s something Adj about V-ing.', ko='V하는 것에는 Adj한 무언가가 있어요.', highlight='something Adj about V-ing' WHERE id='s_emotion_B2_05';

-- s_emotion_B2_02: "I felt a deep sense of nostalgia looking at those old photos." → "I felt a deep sense of N V-ing"
UPDATE sentences SET en='I felt a deep sense of N V-ing ~.', ko='~을 V하며 깊은 N을 느꼈어요.', highlight='a deep sense of N' WHERE id='s_emotion_B2_02';

-- s_emotion_C1_01: "There's a certain ambivalence I feel whenever I think about it." → "There's a certain N I feel whenever ~"
UPDATE sentences SET en='There''s a certain N I feel whenever S V.', ko='S가 V할 때마다 묘한 N이 들어요.', highlight='a certain N I feel whenever' WHERE id='s_emotion_C1_01';

-- s_emotion_C1_06: "There was an overwhelming sense of trepidation as the moment approached." → "There was an overwhelming sense of N as ~"
UPDATE sentences SET en='There was an overwhelming sense of N as S V.', ko='S가 V하면서 압도적인 N이 밀려왔어요.', highlight='overwhelming sense of N' WHERE id='s_emotion_C1_06';

-- s_emotion_C1_04: "His pensive silence spoke volumes about how he truly felt." → "S's N spoke volumes about ~"
UPDATE sentences SET en='S''s N spoke volumes about ~.', ko='S의 N이 ~에 대해 많은 것을 말해줬어요.', highlight='spoke volumes about ~' WHERE id='s_emotion_C1_04';

-- s_emotion_C1_07: "She experienced a strange mix of jubilation and loss." → "S experienced a strange mix of A and B"
UPDATE sentences SET en='S experienced a strange mix of A and B.', ko='S는 A와 B가 묘하게 뒤섞인 감정을 경험했어요.', highlight='a strange mix of A and B' WHERE id='s_emotion_C1_07';

-- s_emotion_C1_05: "I couldn't shake the feeling that something was deeply wrong." → "I couldn't shake the feeling that S V"
UPDATE sentences SET en='I couldn''t shake the feeling that S V.', ko='S가 V한다는 느낌을 떨쳐낼 수 없었어요.', highlight='couldn''t shake the feeling that S V' WHERE id='s_emotion_C1_05';

-- s_emotion_C1_03: "I was left with a profound feeling of disenchantment." → "I was left with a profound feeling of N"
UPDATE sentences SET en='I was left with a profound feeling of N.', ko='깊은 N이 남았어요.', highlight='a profound feeling of N' WHERE id='s_emotion_C1_03';

-- s_emotion_C1_02: "She seemed to carry a quiet sense of resignation." → "S seemed to carry a quiet sense of N"
UPDATE sentences SET en='S seemed to carry a quiet sense of N.', ko='S는 조용한 N을 지닌 것 같았어요.', highlight='carry a quiet sense of N' WHERE id='s_emotion_C1_02';

-- s_emotion_C2_04: "The lugubrious atmosphere of the old house seemed to seep into my very bones." → "The Adj N of ~ seemed to seep into my very bones"
UPDATE sentences SET en='The Adj N of ~ seemed to seep into my very bones.', ko='~의 Adj한 N이 제 뼛속까지 스며드는 것 같았어요.', highlight='Adj N seemed to seep into my very bones' WHERE id='s_emotion_C2_04';

-- s_emotion_C2_02: "There is something ineffable about the longing one feels for a place that no longer exists." → "There is something Adj about N"
UPDATE sentences SET en='There is something Adj about N that S V.', ko='S가 V하는 N에는 Adj한 무언가가 있어요.', highlight='something Adj about N' WHERE id='s_emotion_C2_02';

-- s_emotion_C2_03: "She remained sanguine in adversity, which struck me as either courage or delusion." → "S remained Adj in N, which struck me as either A or B"
UPDATE sentences SET en='S remained Adj in N, which struck me as either A or B.', ko='S는 N 속에서도 Adj했는데, 그것이 A인지 B인지 가늠이 어려웠어요.', highlight='remained Adj in N ... either A or B' WHERE id='s_emotion_C2_03';

-- s_emotion_C2_01: "He bore his grief with a stoic equanimity that was both admirable and heartbreaking." → "S bore ~ with a N that was both A and B"
UPDATE sentences SET en='S bore ~ with a N that was both A and B.', ko='S는 A이기도 하고 B이기도 한 N으로 ~을 견뎌냈어요.', highlight='bore ~ with a N that was both A and B' WHERE id='s_emotion_C2_01';

-- s_emotion_C2_06: "She was ebullient on the surface, yet I sensed an undercurrent of lachrymose longing." → "S was Adj on the surface, yet I sensed an undercurrent of N"
UPDATE sentences SET en='S was Adj on the surface, yet I sensed an undercurrent of N.', ko='S는 겉으로는 Adj해 보였지만, N의 저류가 느껴졌어요.', highlight='Adj on the surface, yet undercurrent of N' WHERE id='s_emotion_C2_06';

-- s_emotion_C2_07: "It is only in retrospect that I can appreciate the bittersweet richness of those years." → "It is only in retrospect that I can V ~"
UPDATE sentences SET en='It is only in retrospect that I can V ~.', ko='이제 돌이켜보니 ~을 비로소 V할 수 있어요.', highlight='only in retrospect that I can V' WHERE id='s_emotion_C2_07';

-- s_emotion_C2_05: "His magnanimous response to the criticism left everyone in the room humbled." → "S's Adj N to ~ left everyone Adj"
UPDATE sentences SET en='S''s Adj N to ~ left everyone Adj.', ko='~에 대한 S의 Adj한 N이 모두를 Adj하게 만들었어요.', highlight='Adj N left everyone Adj' WHERE id='s_emotion_C2_05';

-- ===== CULTURE =====

-- s_culture_A1_05: "Can you dance?" → "Can you V?" (already pattern-like, keep)
UPDATE sentences SET en='Can you V?', ko='V할 수 있어요?', highlight='Can you V' WHERE id='s_culture_A1_05';

-- s_culture_A1_06: "Do you play any instruments?" → "Do you V any N?"
UPDATE sentences SET en='Do you V any N?', ko='N을 V하세요?', highlight='Do you V any N' WHERE id='s_culture_A1_06';

-- s_culture_A1_04: "I love listening to music." → "I love V-ing N"
UPDATE sentences SET en='I love V-ing N.', ko='저는 N을 V하는 걸 좋아해요.', highlight='I love V-ing' WHERE id='s_culture_A1_04';

-- s_culture_A1_07: "I enjoy watching shows at the theatre." → "I enjoy V-ing N"
UPDATE sentences SET en='I enjoy V-ing N.', ko='저는 N을 V하는 걸 즐겨요.', highlight='I enjoy V-ing' WHERE id='s_culture_A1_07';

-- s_culture_A1_01: "What kind of music do you like?" → "What kind of N do you V?"
UPDATE sentences SET en='What kind of N do you V?', ko='어떤 N을 V하세요?', highlight='What kind of N' WHERE id='s_culture_A1_01';

-- s_culture_A1_02: "Do you like movies or books more?" → "Do you like A or B more?"
UPDATE sentences SET en='Do you like A or B more?', ko='A를 더 좋아해요, 아니면 B를 더 좋아해요?', highlight='Do you like A or B more' WHERE id='s_culture_A1_02';

-- s_culture_A1_03: "What is your favourite song?" → "What is your favourite N?"
UPDATE sentences SET en='What is your favourite N?', ko='가장 좋아하는 N이 뭐예요?', highlight='What is your favourite N' WHERE id='s_culture_A1_03';

-- s_culture_A2_04: already true pattern "I'd like ~" — KEEP
-- (no update needed)

-- s_culture_A2_03: "Is there a ticket office nearby?" → "Is there a N nearby?"
UPDATE sentences SET en='Is there a N nearby?', ko='근처에 N이 있나요?', highlight='Is there a N nearby' WHERE id='s_culture_A2_03';

-- s_culture_A2_02: "What time does the concert start?" → "What time does N V?"
UPDATE sentences SET en='What time does N V?', ko='N이 몇 시에 V해요?', highlight='What time does N V' WHERE id='s_culture_A2_02';

-- s_culture_A2_05: "The exhibition was really impressive." → "N was really Adj"
UPDATE sentences SET en='N was really Adj.', ko='N이 정말 Adj했어요.', highlight='N was really Adj' WHERE id='s_culture_A2_05';

-- s_culture_A2_01: "Have you ever been to a music festival?" → "Have you ever been to N?"
UPDATE sentences SET en='Have you ever been to N?', ko='N에 가본 적 있어요?', highlight='Have you ever been to N' WHERE id='s_culture_A2_01';

-- s_culture_A2_06: "Can I take photos inside the gallery?" → "Can I V N inside ~?"
UPDATE sentences SET en='Can I V N inside ~?', ko='~ 안에서 N을 V해도 될까요?', highlight='Can I V N inside ~' WHERE id='s_culture_A2_06';

-- s_culture_A2_07: "How long does the performance last?" → "How long does N V?"
UPDATE sentences SET en='How long does N V?', ko='N이 얼마나 V해요?', highlight='How long does N V' WHERE id='s_culture_A2_07';

-- s_culture_B1_06: "The atmosphere in the concert hall was absolutely electric." → "N was absolutely Adj"
UPDATE sentences SET en='N was absolutely Adj.', ko='N이 완전히 Adj했어요.', highlight='absolutely Adj' WHERE id='s_culture_B1_06';

-- s_culture_B1_07: "I'd strongly recommend this exhibition to anyone interested in modern art." → "I'd strongly recommend N to anyone interested in ~"
UPDATE sentences SET en='I''d strongly recommend N to anyone interested in ~.', ko='~에 관심 있는 분이라면 N을 강력히 추천해요.', highlight='strongly recommend N to anyone interested in ~' WHERE id='s_culture_B1_07';

-- s_culture_B1_05: "Have you had a chance to see the new exhibition at the gallery?" → "Have you had a chance to V?"
UPDATE sentences SET en='Have you had a chance to V ~?', ko='~을 V할 기회가 있으셨어요?', highlight='Have you had a chance to V' WHERE id='s_culture_B1_05';

-- s_culture_B1_04: "There's something deeply moving about the way the story unfolds." → "There's something Adj about the way S V"
UPDATE sentences SET en='There''s something Adj about the way S V.', ko='S가 V하는 방식에는 Adj한 무언가가 있어요.', highlight='something Adj about the way S V' WHERE id='s_culture_B1_04';

-- s_culture_B1_03: "I wasn't sure what to make of it at first, but it grew on me." → "I wasn't sure what to make of ~ at first, but it grew on me"
UPDATE sentences SET en='I wasn''t sure what to make of N at first, but it grew on me.', ko='처음엔 N을 어떻게 받아들여야 할지 몰랐지만, 점점 좋아졌어요.', highlight='wasn''t sure what to make of N ... grew on me' WHERE id='s_culture_B1_03';

-- s_culture_B1_02: "This piece really speaks to me on an emotional level." → "N really speaks to me on a ~ level"
UPDATE sentences SET en='N really speaks to me on a Adj level.', ko='N은 Adj적으로 정말 제 마음에 와닿아요.', highlight='really speaks to me' WHERE id='s_culture_B1_02';

-- s_culture_B1_01: "What I find most interesting about this painting is the use of colour." → "What I find most interesting about N is ~"
UPDATE sentences SET en='What I find most interesting about N is ~.', ko='N에서 가장 흥미로운 점은 ~예요.', highlight='What I find most interesting about N is' WHERE id='s_culture_B1_01';

-- s_culture_B2_05: "What sets this work apart is its willingness to challenge conventional expectations." → "What sets N apart is ~"
UPDATE sentences SET en='What sets N apart is ~.', ko='N을 돋보이게 하는 것은 ~예요.', highlight='What sets N apart is' WHERE id='s_culture_B2_05';

-- s_culture_B2_01: "While Korean pop culture has a global reach, traditional art forms still hold a central place in national identity." → "While S V, S still V"
UPDATE sentences SET en='While S V, S still V ~.', ko='S가 V하지만, S는 여전히 ~을 V해요.', highlight='While S V, S still V' WHERE id='s_culture_B2_01';

-- s_culture_B2_07: "The debate over cultural appropriation raises uncomfortable but necessary questions." → "The debate over N raises Adj questions"
UPDATE sentences SET en='The debate over N raises Adj questions.', ko='N에 관한 논쟁은 Adj한 질문을 제기해요.', highlight='debate over N raises Adj questions' WHERE id='s_culture_B2_07';

-- s_culture_B2_03: "The way a culture treats its artists says a lot about its values." → "The way S V says a lot about ~"
UPDATE sentences SET en='The way S V says a lot about ~.', ko='S가 V하는 방식은 ~에 대해 많은 것을 말해줘요.', highlight='says a lot about ~' WHERE id='s_culture_B2_03';

-- s_culture_B2_02: "There's a growing tension between preserving cultural heritage and embracing contemporary influences." → "There's a growing tension between A and B"
UPDATE sentences SET en='There''s a growing tension between A and B.', ko='A와 B 사이의 긴장이 커지고 있어요.', highlight='tension between A and B' WHERE id='s_culture_B2_02';

-- s_culture_B2_06: "It's worth noting that the artist's background heavily shaped the work's cultural references." → "It's worth noting that S V"
UPDATE sentences SET en='It''s worth noting that S V.', ko='S가 V한다는 점은 주목할 만해요.', highlight='It''s worth noting that S V' WHERE id='s_culture_B2_06';

-- s_culture_B2_04: "Cross-cultural exchange has always been central to artistic innovation." → "N has always been central to ~"
UPDATE sentences SET en='N has always been central to ~.', ko='N은 항상 ~의 핵심이었어요.', highlight='N has always been central to ~' WHERE id='s_culture_B2_04';

-- s_culture_C1_07: "By foregrounding the constructedness of its own narrative, the novel invites us to question the nature of storytelling itself." → "By V-ing N, S invites us to V"
UPDATE sentences SET en='By V-ing N, S invites us to V ~.', ko='N을 V함으로써, S는 우리가 ~을 V하도록 유도해요.', highlight='By V-ing N, S invites us to V' WHERE id='s_culture_C1_07';

-- s_culture_C1_06: "The film operates on multiple registers simultaneously — aesthetic, political, and psychological." → "N operates on multiple registers simultaneously — A, B, and C"
UPDATE sentences SET en='N operates on multiple registers simultaneously — A, B, and C.', ko='N은 A, B, C로 여러 차원에서 동시에 작동해요.', highlight='operates on multiple registers simultaneously' WHERE id='s_culture_C1_06';

-- s_culture_C1_01: "The work's power lies precisely in its refusal to offer easy resolution." → "N's power lies precisely in its refusal to V"
UPDATE sentences SET en='N''s power lies precisely in its refusal to V.', ko='N의 힘은 바로 V하기를 거부하는 데 있어요.', highlight='lies precisely in its refusal to V' WHERE id='s_culture_C1_01';

-- s_culture_C1_02: "One might argue that the narrative structure mirrors the fragmented nature of modern consciousness." → "One might argue that S mirrors N"
UPDATE sentences SET en='One might argue that S mirrors N.', ko='S가 N을 반영한다고 주장할 수 있어요.', highlight='One might argue that S mirrors N' WHERE id='s_culture_C1_02';

-- s_culture_C1_03: "The tension between form and content is never fully resolved in this piece." → "The tension between A and B is never fully resolved in N"
UPDATE sentences SET en='The tension between A and B is never fully resolved in N.', ko='N에서 A와 B 사이의 긴장은 결코 완전히 해결되지 않아요.', highlight='tension between A and B is never fully resolved' WHERE id='s_culture_C1_03';

-- s_culture_C1_05: "What distinguishes this director's work is the interplay between the personal and the political." → "What distinguishes N is the interplay between A and B"
UPDATE sentences SET en='What distinguishes N is the interplay between A and B.', ko='N을 구별하는 것은 A와 B 사이의 상호작용이에요.', highlight='What distinguishes N is the interplay between A and B' WHERE id='s_culture_C1_05';

-- s_culture_C1_04: "Rather than offering answers, the exhibition poses a series of provocative questions about identity." → "Rather than V-ing N, S poses a series of Adj questions about ~"
UPDATE sentences SET en='Rather than V-ing N, S poses a series of Adj questions about ~.', ko='N을 V하기보다는, S가 ~에 대한 일련의 Adj한 질문을 제기해요.', highlight='Rather than V-ing, S poses questions about ~' WHERE id='s_culture_C1_04';

-- s_culture_C2_02: "To speak of aesthetic autonomy is already to invoke a historically contingent set of assumptions." → "To speak of N is already to V ~"
UPDATE sentences SET en='To speak of N is already to V ~.', ko='N을 말하는 것은 이미 ~을 V하는 것이에요.', highlight='To speak of N is already to V' WHERE id='s_culture_C2_02';

-- s_culture_C2_06: "The sublime, far from being a natural category, is a cultural construction that serves specific ideological ends." → "N, far from being A, is B that serves ~"
UPDATE sentences SET en='N, far from being A, is B that serves ~.', ko='N은 A이기는커녕 ~에 기여하는 B예요.', highlight='far from being A, is B that serves' WHERE id='s_culture_C2_06';

-- s_culture_C2_03: "The question is not whether the text has a meaning, but who has the authority to determine it." → "The question is not whether S V, but who has the authority to V"
UPDATE sentences SET en='The question is not whether S V, but who has the authority to V.', ko='문제는 S가 V하느냐가 아니라 누가 V할 권위를 갖느냐예요.', highlight='not whether S V, but who has the authority to V' WHERE id='s_culture_C2_03';

-- s_culture_C2_01: "The work enacts a deconstruction of the very categories it appears to celebrate." → "N enacts a deconstruction of the very N (that) it appears to V"
UPDATE sentences SET en='N enacts a deconstruction of the very N it appears to V.', ko='N은 자신이 V하는 것처럼 보이는 바로 그 N을 해체하는 것을 수행해요.', highlight='enacts a deconstruction of the very N' WHERE id='s_culture_C2_01';

-- s_culture_C2_04: "Any attempt to stabilise the work's meaning is already a political act." → "Any attempt to V N is already a Adj act"
UPDATE sentences SET en='Any attempt to V N is already a Adj act.', ko='N을 V하려는 모든 시도는 이미 Adj한 행위예요.', highlight='Any attempt to V N is already a Adj act' WHERE id='s_culture_C2_04';

-- s_culture_C2_07: "In displacing the centre, the work opens up a rhizomatic field of possible meanings that resist hierarchical ordering." → "In V-ing N, S opens up a Adj field of ~ that resist ~"
UPDATE sentences SET en='In V-ing N, S opens up a Adj field of ~ that resist N.', ko='N을 V함으로써, S는 N에 저항하는 ~의 Adj한 장을 열어요.', highlight='In V-ing N, S opens up a Adj field' WHERE id='s_culture_C2_07';

-- s_culture_C2_05: "What the archive reveals is not just what was recorded but what was systematically excluded." → "What N reveals is not just ~ but ~"
UPDATE sentences SET en='What N reveals is not just A but B.', ko='N이 드러내는 것은 A뿐만 아니라 B예요.', highlight='What N reveals is not just A but B' WHERE id='s_culture_C2_05';

-- ===== HUMANITIES =====

-- s_humanities_A1_03: "I really like this story." → "I really V this N"
UPDATE sentences SET en='I really V this N.', ko='이 N이 정말 V해요.', highlight='really V this N' WHERE id='s_humanities_A1_03';

-- s_humanities_A1_02: "What is your favorite book?" → "What is your favorite N?"
UPDATE sentences SET en='What is your favorite N?', ko='가장 좋아하는 N이 뭐예요?', highlight='your favorite N' WHERE id='s_humanities_A1_02';

-- s_humanities_A1_01: "Have you read any good books lately?" → "Have you V any Adj N lately?"
UPDATE sentences SET en='Have you V any Adj N lately?', ko='최근에 Adj한 N을 V한 적 있어요?', highlight='V any Adj N lately' WHERE id='s_humanities_A1_01';

-- s_humanities_A1_04: "Can you tell me the name of the book?" → "Can you tell me the N of ~?"
UPDATE sentences SET en='Can you tell me the N of ~?', ko='~의 N을 알려줄 수 있어요?', highlight='tell me the N of ~' WHERE id='s_humanities_A1_04';

-- s_humanities_A1_05: "I want to read more books in English." → "I want to V more N in ~"
UPDATE sentences SET en='I want to V more N in ~.', ko='~로 된 N을 더 V하고 싶어요.', highlight='I want to V more N' WHERE id='s_humanities_A1_05';

-- s_humanities_A1_06: "This poem is very beautiful." → "This N is very Adj"
UPDATE sentences SET en='This N is very Adj.', ko='이 N은 정말 Adj해요.', highlight='This N is very Adj' WHERE id='s_humanities_A1_06';

-- s_humanities_A1_07: "Do you like to read stories?" → "Do you like to V N?"
UPDATE sentences SET en='Do you like to V N?', ko='N을 V하는 걸 좋아하세요?', highlight='Do you like to V N' WHERE id='s_humanities_A1_07';

-- s_humanities_A2_01: "Who is your favorite author and why?" → "Who is your favorite N and why?"
UPDATE sentences SET en='Who is your favorite N and why?', ko='가장 좋아하는 N은 누구이고 왜 그런가요?', highlight='your favorite N and why' WHERE id='s_humanities_A2_01';

-- s_humanities_A2_05: "What kind of books do you usually read?" → "What kind of N do you usually V?"
UPDATE sentences SET en='What kind of N do you usually V?', ko='보통 어떤 N을 V하세요?', highlight='What kind of N do you usually V' WHERE id='s_humanities_A2_05';

-- s_humanities_A2_06: "I prefer historical fiction to fantasy." → "I prefer A to B"
UPDATE sentences SET en='I prefer A to B.', ko='저는 B보다 A를 더 좋아해요.', highlight='prefer A to B' WHERE id='s_humanities_A2_06';

-- s_humanities_A2_07: "The main character in this novel is very interesting." → "The N in this N is very Adj"
UPDATE sentences SET en='The N in this N is very Adj.', ko='이 N의 N이 매우 Adj해요.', highlight='The N in this N is very Adj' WHERE id='s_humanities_A2_07';

-- s_humanities_A2_04: "Have you heard of this author before?" → "Have you heard of N before?"
UPDATE sentences SET en='Have you heard of N before?', ko='N에 대해 들어본 적 있어요?', highlight='Have you heard of N' WHERE id='s_humanities_A2_04';

-- s_humanities_A2_03: "This book is based on a true story." → "This N is based on N"
UPDATE sentences SET en='This N is based on N.', ko='이 N은 N을 바탕으로 했어요.', highlight='based on N' WHERE id='s_humanities_A2_03';

-- s_humanities_A2_02: "I enjoy reading mystery novels." → "I enjoy V-ing N"
UPDATE sentences SET en='I enjoy V-ing N.', ko='저는 N을 V하는 걸 즐겨요.', highlight='enjoy V-ing N' WHERE id='s_humanities_A2_02';

-- s_humanities_B1_07: "Can you give an example from the text to support your idea?" → "Can you give an example from N to support ~?"
UPDATE sentences SET en='Can you give an example from N to support ~?', ko='~을 뒷받침할 N에서의 예시를 들어줄 수 있나요?', highlight='give an example from N to support' WHERE id='s_humanities_B1_07';

-- s_humanities_B1_02: "From whose perspective is the story told?" → "From whose perspective is N V-ed?"
UPDATE sentences SET en='From whose perspective is N V-ed?', ko='N은 누구의 관점에서 V되나요?', highlight='From whose perspective is N V-ed' WHERE id='s_humanities_B1_02';

-- s_humanities_B1_04: "What do you think the writer is trying to say?" → "What do you think S is trying to V?"
UPDATE sentences SET en='What do you think S is trying to V?', ko='S가 무엇을 V하려 한다고 생각하세요?', highlight='What do you think S is trying to V' WHERE id='s_humanities_B1_04';

-- s_humanities_B1_05: "The conflict between tradition and modernity runs throughout the novel." → "The conflict between A and B runs throughout N"
UPDATE sentences SET en='The conflict between A and B runs throughout N.', ko='A와 B 사이의 갈등이 N 전반에 걸쳐 흐르고 있어요.', highlight='conflict between A and B runs throughout N' WHERE id='s_humanities_B1_05';

-- s_humanities_B1_03: "How does the setting influence the characters' behavior?" → "How does N influence N?"
UPDATE sentences SET en='How does N influence N?', ko='N이 N에 어떤 영향을 미치나요?', highlight='How does N influence N' WHERE id='s_humanities_B1_03';

-- s_humanities_B1_06: "I found the narrator unreliable because his account kept changing." → "I found N Adj because S kept V-ing"
UPDATE sentences SET en='I found N Adj because S kept V-ing.', ko='S가 계속 V해서 N을 Adj하다고 느꼈어요.', highlight='found N Adj ... kept V-ing' WHERE id='s_humanities_B1_06';

-- s_humanities_B1_01: "The author uses symbolism to convey the theme of loss." → "S uses N to V N"
UPDATE sentences SET en='S uses N to V N.', ko='S는 N을 V하기 위해 N을 사용해요.', highlight='uses N to V N' WHERE id='s_humanities_B1_01';

-- s_humanities_B2_07: "The paradox at the heart of the novel is that freedom leads to isolation." → "The paradox at the heart of N is that S V"
UPDATE sentences SET en='The paradox at the heart of N is that S V.', ko='N의 핵심에 있는 역설은 S가 V한다는 것이에요.', highlight='paradox at the heart of N is that S V' WHERE id='s_humanities_B2_07';

-- s_humanities_B2_06: "The satirical tone forces the reader to question assumptions they might otherwise take for granted." → "The Adj N forces the reader to V ~"
UPDATE sentences SET en='The Adj N forces the reader to V ~.', ko='Adj한 N은 독자로 하여금 ~을 V하게 만들어요.', highlight='Adj N forces the reader to V' WHERE id='s_humanities_B2_06';

-- s_humanities_B2_02: "One could argue that the novel is more of an allegory than a realist text." → "One could argue that S is more of A than B"
UPDATE sentences SET en='One could argue that S is more of A than B.', ko='S는 B라기보다 A에 가깝다고 주장할 수 있어요.', highlight='One could argue that S is more of A than B' WHERE id='s_humanities_B2_02';

-- s_humanities_B2_05: "Reading the novel against its historical context changes how we interpret the ending." → "Reading N against its ~ context changes how we V ~"
UPDATE sentences SET en='Reading N against its Adj context changes how we V ~.', ko='N을 Adj한 맥락에 비추어 읽으면 우리가 ~을 V하는 방식이 달라져요.', highlight='Reading N against its context changes how we V' WHERE id='s_humanities_B2_05';

-- s_humanities_B2_03: "The motif of water recurs throughout the text, suggesting purification." → "The motif of N recurs throughout N, suggesting ~"
UPDATE sentences SET en='The motif of N recurs throughout N, suggesting ~.', ko='N의 모티프가 N 전반에 반복되며 ~을 암시해요.', highlight='motif of N recurs throughout N, suggesting' WHERE id='s_humanities_B2_03';

-- s_humanities_B2_01: "The irony lies in the gap between what the narrator says and what actually happens." → "The irony lies in the gap between A and B"
UPDATE sentences SET en='The irony lies in the gap between A and B.', ko='아이러니는 A와 B 사이의 간극에 있어요.', highlight='irony lies in the gap between A and B' WHERE id='s_humanities_B2_01';

-- s_humanities_B2_04: "The subtext reveals a deep anxiety about social class." → "The subtext reveals a deep N about ~"
UPDATE sentences SET en='The subtext reveals a deep N about ~.', ko='서브텍스트는 ~에 대한 깊은 N을 드러내요.', highlight='subtext reveals a deep N about ~' WHERE id='s_humanities_B2_04';

-- s_humanities_C1_07: "The sublime, as Burke defines it, involves a blend of terror and awe that exceeds rational comprehension." → "N, as S defines it, involves a blend of A and B that exceeds ~"
UPDATE sentences SET en='N, as S defines it, involves a blend of A and B that exceeds ~.', ko='S가 정의한 N은 ~을 초월하는 A와 B의 혼합을 포함해요.', highlight='involves a blend of A and B that exceeds' WHERE id='s_humanities_C1_07';

-- s_humanities_C1_03: "Intertextuality suggests that no text is fully autonomous; all writing responds to what came before." → "N suggests that no N is fully Adj; all N V ~"
UPDATE sentences SET en='N suggests that no N is fully Adj; all N V ~.', ko='N은 완전히 Adj한 N은 없으며, 모든 N이 ~한다는 것을 시사해요.', highlight='suggests that no N is fully Adj' WHERE id='s_humanities_C1_03';

-- s_humanities_C1_06: "Bakhtin's concept of polyphony challenges the idea of a single authoritative voice in the novel." → "S's concept of N challenges the idea of ~"
UPDATE sentences SET en='S''s concept of N challenges the idea of ~.', ko='S의 N 개념은 ~이라는 생각에 도전해요.', highlight='challenges the idea of ~' WHERE id='s_humanities_C1_06';

-- s_humanities_C1_04: "Deconstruction does not destroy meaning; it reveals the instability that was always already there." → "S does not V N; it reveals the N that was always already there"
UPDATE sentences SET en='S does not V N; it reveals the N that was always already there.', ko='S는 N을 V하지 않고, 항상 이미 그곳에 있던 N을 드러내요.', highlight='always already there' WHERE id='s_humanities_C1_04';

-- s_humanities_C1_01: "A hermeneutic approach asks not what the text means, but how meaning is produced." → "A Adj approach asks not what S V, but how S V"
UPDATE sentences SET en='A Adj approach asks not what S V, but how S V.', ko='Adj한 접근은 S가 무엇을 V하는지가 아니라 S가 어떻게 V하는지를 묻죠.', highlight='asks not what S V, but how S V' WHERE id='s_humanities_C1_01';

-- s_humanities_C1_05: "Phenomenological criticism foregrounds the reader's lived experience of the text." → "S foregrounds N"
UPDATE sentences SET en='S foregrounds N.', ko='S는 N을 전면에 부각시켜요.', highlight='S foregrounds N' WHERE id='s_humanities_C1_05';

-- s_humanities_C1_02: "Through a semiotic lens, the white dress signifies far more than purity." → "Through a Adj lens, N signifies far more than N"
UPDATE sentences SET en='Through a Adj lens, N signifies far more than N.', ko='Adj한 렌즈를 통하면, N은 N 이상의 훨씬 많은 것을 의미해요.', highlight='Through a Adj lens, N signifies far more than' WHERE id='s_humanities_C1_02';

-- s_humanities_C2_01: "Différance operates as the ungraspable condition of possibility for all meaning." → "N operates as the Adj condition of possibility for ~"
UPDATE sentences SET en='N operates as the Adj condition of possibility for ~.', ko='N은 ~의 가능성에 대한 Adj한 조건으로 작동해요.', highlight='operates as the Adj condition of possibility' WHERE id='s_humanities_C2_01';

-- s_humanities_C2_06: "The chronotope of the threshold marks a liminal space where identity is suspended between states." → "The N of N marks a liminal space where S is suspended between ~"
UPDATE sentences SET en='The N of N marks a liminal space where S is suspended between A and B.', ko='N의 N은 S가 A와 B 사이에 유예되는 경계적 공간을 표시해요.', highlight='marks a liminal space where S is suspended between A and B' WHERE id='s_humanities_C2_06';

-- s_humanities_C2_07: "Negative capability, for Keats, is not a weakness but the poet's supreme capacity to inhabit uncertainty without discomfort." → "N, for S, is not A but the N's supreme capacity to V ~"
UPDATE sentences SET en='N, for S, is not A but the N''s supreme capacity to V ~.', ko='S에게 N은 A가 아니라 N의 ~을 V하는 최고 능력이에요.', highlight='not A but the N''s supreme capacity to V' WHERE id='s_humanities_C2_07';

-- s_humanities_C2_04: "As a rhizome, the text resists any single origin or fixed endpoint of meaning." → "As a N, S resists any single A or fixed B of ~"
UPDATE sentences SET en='As a N, S resists any single A or fixed B of ~.', ko='N으로서 S는 ~의 어떠한 단일한 A나 고정된 B에도 저항해요.', highlight='resists any single A or fixed B' WHERE id='s_humanities_C2_04';

-- s_humanities_C2_02: "The palimpsest as a metaphor invites us to read the text's silences as much as its statements." → "N as a metaphor invites us to V A as much as B"
UPDATE sentences SET en='N as a metaphor invites us to V A as much as B.', ko='N을 은유로 취하면, B만큼 A도 V하라는 초대가 돼요.', highlight='invites us to V A as much as B' WHERE id='s_humanities_C2_02';

-- s_humanities_C2_05: "Heteroglossia ensures that the novel can never be reduced to a single ideological position." → "N ensures that S can never be reduced to a single Adj position"
UPDATE sentences SET en='N ensures that S can never be reduced to a single Adj position.', ko='N은 S가 결코 단일한 Adj 입장으로 환원될 수 없음을 보장해요.', highlight='can never be reduced to a single Adj position' WHERE id='s_humanities_C2_05';

-- s_humanities_C2_03: "Defamiliarization, according to the Russian Formalists, is the very purpose of literary language." → "N, according to S, is the very purpose of N"
UPDATE sentences SET en='N, according to S, is the very purpose of N.', ko='S에 따르면, N은 N의 바로 그 목적이에요.', highlight='the very purpose of N' WHERE id='s_humanities_C2_03';

-- ===== PRESENTATION =====

-- s_presentation_A1_07: "That is the end of my talk. Thank you." → "That is the end of N. Thank you."
UPDATE sentences SET en='That is the end of N. Thank you.', ko='N을 마치겠습니다. 감사합니다.', highlight='That is the end of N' WHERE id='s_presentation_A1_07';

-- s_presentation_A1_04: "Please look at this slide." → "Please look at N"
UPDATE sentences SET en='Please look at N.', ko='N을 봐주세요.', highlight='Please look at N' WHERE id='s_presentation_A1_04';

-- s_presentation_A1_02: "Today I will talk about our project." → "Today I will talk about N"
UPDATE sentences SET en='Today I will talk about N.', ko='오늘 N에 대해 이야기하겠습니다.', highlight='talk about N' WHERE id='s_presentation_A1_02';

-- s_presentation_A1_03: "My name is Ji-yeon and I am from the design team." → "My name is ~ and I am from N"
UPDATE sentences SET en='My name is ~ and I am from N.', ko='제 이름은 ~이고 N에 있습니다.', highlight='My name is ~ and I am from N' WHERE id='s_presentation_A1_03';

-- s_presentation_A1_01: "Let me introduce myself." → already true pattern, KEEP but make slightly more flexible
UPDATE sentences SET en='Let me V ~.', ko='제가 ~을 V하겠습니다.', highlight='Let me V' WHERE id='s_presentation_A1_01';

-- s_presentation_A1_05: "First, I will show you the main idea." → "First, I will V you N"
UPDATE sentences SET en='First, I will V you N.', ko='먼저 N을 V해드리겠습니다.', highlight='First, I will V you N' WHERE id='s_presentation_A1_05';

-- s_presentation_A1_06: "Are there any questions?" → "Are there any N?"
UPDATE sentences SET en='Are there any N?', ko='N이 있으신가요?', highlight='Are there any N' WHERE id='s_presentation_A1_06';

-- s_presentation_A2_02: "First I will cover the background, then the findings, and finally the recommendations." → "First I will V A, then B, and finally C"
UPDATE sentences SET en='First I will V A, then B, and finally C.', ko='먼저 A를 V하고, 그다음 B, 마지막으로 C를 V하겠습니다.', highlight='First ... then ... finally' WHERE id='s_presentation_A2_02';

-- s_presentation_A2_07: "In conclusion, the data shows a clear trend." → "In conclusion, S V ~"
UPDATE sentences SET en='In conclusion, S V ~.', ko='결론적으로, S가 ~을 V합니다.', highlight='In conclusion, S V' WHERE id='s_presentation_A2_07';

-- s_presentation_A2_06: "By the end of this presentation, you will understand the key steps." → "By the end of N, you will V ~"
UPDATE sentences SET en='By the end of N, you will V ~.', ko='N이 끝날 때쯤이면 ~을 V하게 될 것입니다.', highlight='By the end of N, you will V' WHERE id='s_presentation_A2_06';

-- s_presentation_A2_04: "Let me give you a brief overview before we begin." → "Let me V you a brief N before we V"
UPDATE sentences SET en='Let me V you a brief N before we V.', ko='V하기 전에 간략한 N을 V해드리겠습니다.', highlight='Let me V you a brief N' WHERE id='s_presentation_A2_04';

-- s_presentation_A2_03: "Please feel free to ask questions at the end." → "Please feel free to V"
UPDATE sentences SET en='Please feel free to V ~.', ko='편하게 V해 주세요.', highlight='Please feel free to V' WHERE id='s_presentation_A2_03';

-- s_presentation_A2_01: "My talk is divided into three parts." → "N is divided into ~ parts"
UPDATE sentences SET en='N is divided into ~ parts.', ko='N은 ~ 부분으로 나뉩니다.', highlight='N is divided into ~ parts' WHERE id='s_presentation_A2_01';

-- s_presentation_A2_05: "The main topic of today's presentation is customer satisfaction." → "The main topic of N is N"
UPDATE sentences SET en='The main topic of N is N.', ko='N의 주요 주제는 N입니다.', highlight='The main topic of N is' WHERE id='s_presentation_A2_05';

-- s_presentation_B1_06: "As I mentioned earlier, the key challenge is timing." → "As I mentioned earlier, the key N is ~"
UPDATE sentences SET en='As I mentioned earlier, the key N is ~.', ko='앞서 언급했듯이, 핵심 N은 ~입니다.', highlight='As I mentioned earlier' WHERE id='s_presentation_B1_06';

-- s_presentation_B1_05: "To illustrate this point, let me give you a concrete example." → "To illustrate this point, let me V you N"
UPDATE sentences SET en='To illustrate this point, let me V you N.', ko='이 요점을 설명하기 위해 N을 V해드리겠습니다.', highlight='To illustrate this point, let me V you N' WHERE id='s_presentation_B1_05';

-- s_presentation_B1_04: "This brings me to my second point." → "This brings me to my ~ point/N"
UPDATE sentences SET en='This brings me to my ~ point.', ko='이것이 저를 ~ 요점으로 이끕니다.', highlight='This brings me to my ~ point' WHERE id='s_presentation_B1_04';

-- s_presentation_B1_03: "I'd like to draw your attention to this chart." → "I'd like to draw your attention to N"
UPDATE sentences SET en='I''d like to draw your attention to N.', ko='N에 주목해 주시기 바랍니다.', highlight='draw your attention to N' WHERE id='s_presentation_B1_03';

-- s_presentation_B1_01: "Now let's move on to the next point." → "Now let's move on to N"
UPDATE sentences SET en='Now let''s move on to N.', ko='이제 N으로 넘어가겠습니다.', highlight='let''s move on to N' WHERE id='s_presentation_B1_01';

-- s_presentation_B1_02: "Having looked at the problem, let's now consider the solution." → "Having V-ed N, let's now V N"
UPDATE sentences SET en='Having V-ed N, let''s now V N.', ko='N을 V했으니, 이제 N을 V해 보겠습니다.', highlight='Having V-ed N, let''s now V' WHERE id='s_presentation_B1_02';

-- s_presentation_B1_07: "Before I move on, are there any questions so far?" → "Before I V, are there any N so far?"
UPDATE sentences SET en='Before I V, are there any N so far?', ko='V하기 전에, 지금까지 N 있으신가요?', highlight='Before I V' WHERE id='s_presentation_B1_07';

-- s_presentation_B2_04: "To summarize the key takeaways from today's presentation..." → "To summarize the key N from N..."
UPDATE sentences SET en='To summarize the key N from N...', ko='N의 핵심 N을 요약하자면...', highlight='To summarize the key N' WHERE id='s_presentation_B2_04';

-- s_presentation_B2_02: "It is worth noting that this trend has been consistent for three years." → "It is worth noting that S V"
UPDATE sentences SET en='It is worth noting that S V.', ko='S가 V한다는 점은 주목할 만합니다.', highlight='It is worth noting that S V' WHERE id='s_presentation_B2_02';

-- s_presentation_B2_03: "The data compellingly demonstrates that our approach is working." → "N compellingly demonstrates that S V"
UPDATE sentences SET en='N compellingly demonstrates that S V.', ko='N은 S가 V한다는 것을 설득력 있게 증명합니다.', highlight='compellingly demonstrates that S V' WHERE id='s_presentation_B2_03';

-- s_presentation_B2_07: "Should you have any further questions, please do not hesitate to reach out." → "Should you V, please do not hesitate to V"
UPDATE sentences SET en='Should you V ~, please do not hesitate to V.', ko='~을 V하시면 언제든지 V해 주시기 바랍니다.', highlight='Should you V, please do not hesitate to V' WHERE id='s_presentation_B2_07';

-- s_presentation_B2_01: "What I want to emphasize here is the long-term impact of this decision." → "What I want to V here is N"
UPDATE sentences SET en='What I want to V here is N.', ko='제가 여기서 V하고 싶은 것은 N입니다.', highlight='What I want to V here is N' WHERE id='s_presentation_B2_01';

-- s_presentation_B2_06: "In light of this evidence, I strongly recommend proceeding with option B." → "In light of N, I strongly recommend V-ing ~"
UPDATE sentences SET en='In light of N, I strongly recommend V-ing ~.', ko='N에 비추어 볼 때, 저는 ~을 V할 것을 강력히 권장합니다.', highlight='In light of N, I strongly recommend V-ing' WHERE id='s_presentation_B2_06';

-- s_presentation_B2_05: "I would like to leave you with one final thought." → "I would like to leave you with one final N"
UPDATE sentences SET en='I would like to leave you with one final N.', ko='마지막으로 한 가지 N을 남기고 싶습니다.', highlight='leave you with one final N' WHERE id='s_presentation_B2_05';

-- s_presentation_C1_05: "While the quantitative data is compelling, the qualitative insights reveal a more nuanced picture." → "While A is Adj, B reveals a more Adj picture"
UPDATE sentences SET en='While A is Adj, B reveals a more Adj picture.', ko='A는 Adj하지만, B는 더 Adj한 그림을 드러냅니다.', highlight='While A is Adj, B reveals a more Adj picture' WHERE id='s_presentation_C1_05';

-- s_presentation_C1_02: "I will now deconstruct the conventional wisdom surrounding this issue." → "I will now V the conventional wisdom surrounding N"
UPDATE sentences SET en='I will now V the conventional wisdom surrounding N.', ko='이제 N을 둘러싼 통념을 V하겠습니다.', highlight='V the conventional wisdom surrounding N' WHERE id='s_presentation_C1_02';

-- s_presentation_C1_06: "I would posit that the root cause lies not in the symptom but in the underlying system." → "I would posit that S lies not in A but in B"
UPDATE sentences SET en='I would posit that S lies not in A but in B.', ko='S는 A가 아니라 B에 있다고 주장하고자 합니다.', highlight='I would posit that S lies not in A but in B' WHERE id='s_presentation_C1_06';

-- s_presentation_C1_01: "The empirical evidence overwhelmingly supports the hypothesis that engagement drives retention." → "The N overwhelmingly supports the hypothesis that S V"
UPDATE sentences SET en='The N overwhelmingly supports the hypothesis that S V.', ko='N은 S가 V한다는 가설을 압도적으로 뒷받침합니다.', highlight='overwhelmingly supports the hypothesis that S V' WHERE id='s_presentation_C1_01';

-- s_presentation_C1_07: "To conclude, the convergence of these three factors creates an unprecedented opportunity." → "To conclude, the convergence of N creates an Adj N"
UPDATE sentences SET en='To conclude, the convergence of N creates an Adj N.', ko='결론적으로, N의 수렴은 Adj한 N을 만들어냅니다.', highlight='convergence of N creates an Adj N' WHERE id='s_presentation_C1_07';

-- s_presentation_C1_04: "The implications of this paradigm shift extend far beyond our immediate industry." → "The implications of N extend far beyond ~"
UPDATE sentences SET en='The implications of N extend far beyond ~.', ko='N의 함의는 ~을 훨씬 넘어섭니다.', highlight='implications of N extend far beyond ~' WHERE id='s_presentation_C1_04';

-- s_presentation_C1_03: "This framework allows us to synthesize findings across multiple disciplines." → "This N allows us to V N across ~"
UPDATE sentences SET en='This N allows us to V N across ~.', ko='이 N을 통해 ~에 걸친 N을 V할 수 있습니다.', highlight='allows us to V N across ~' WHERE id='s_presentation_C1_03';

-- s_presentation_C2_03: "I invite you to interrogate your own assumptions as we work through this evidence together." → "I invite you to V your own N as we V ~ together"
UPDATE sentences SET en='I invite you to V your own N as we V ~ together.', ko='우리가 함께 ~을 V하면서 자신의 N을 V하시길 권합니다.', highlight='invite you to V your own N' WHERE id='s_presentation_C2_03';

-- s_presentation_C2_02: "What this meta-analysis reveals is not merely correlation but a robust causal mechanism." → "What N reveals is not merely A but B"
UPDATE sentences SET en='What N reveals is not merely A but B.', ko='N이 드러내는 것은 단순한 A가 아니라 B입니다.', highlight='not merely A but B' WHERE id='s_presentation_C2_02';

-- s_presentation_C2_07: "I leave you with a provocation: if our praxis does not challenge existing structures, what exactly are we here to present?" → "I leave you with a provocation: if S does not V N, what exactly ~?"
UPDATE sentences SET en='I leave you with a provocation: if S does not V N, what exactly ~?', ko='하나의 도발을 남깁니다: S가 N을 V하지 않는다면, 정확히 무엇을 ~?', highlight='I leave you with a provocation' WHERE id='s_presentation_C2_07';

-- s_presentation_C2_04: "The epistemological question we must first address is: how do we know what we think we know?" → "The Adj question we must first address is: ~?"
UPDATE sentences SET en='The Adj question we must first address is: ~?', ko='우리가 먼저 다루어야 할 Adj한 질문은 이것입니다: ~?', highlight='The Adj question we must first address is' WHERE id='s_presentation_C2_04';

-- s_presentation_C2_01: "The dialectical tension between efficiency and equity is not a problem to be solved but a dynamic to be managed." → "The N between A and B is not a problem to be V-ed but a N to be V-ed"
UPDATE sentences SET en='The N between A and B is not a problem to be V-ed but a N to be V-ed.', ko='A와 B 사이의 N은 V되어야 할 문제가 아니라 V되어야 할 N입니다.', highlight='not a problem to be V-ed but a N to be V-ed' WHERE id='s_presentation_C2_01';

-- s_presentation_C2_05: "Through a process of triangulation across qualitative, quantitative, and ethnographic sources, we arrive at a remarkably consistent picture." → "Through a process of N across A, B, and C, we arrive at a remarkably Adj picture"
UPDATE sentences SET en='Through a process of N across A, B, and C, we arrive at a remarkably Adj picture.', ko='A, B, C에 걸친 N의 과정을 통해 우리는 놀랍도록 Adj한 그림에 도달합니다.', highlight='Through a process of N ... remarkably Adj picture' WHERE id='s_presentation_C2_05';

-- s_presentation_C2_06: "Far from being a peripheral concern, reflexivity is central to the integrity of this entire analysis." → "Far from being A, N is central to ~"
UPDATE sentences SET en='Far from being A, N is central to ~.', ko='N은 A이기는커녕 ~의 핵심입니다.', highlight='Far from being A, N is central to ~' WHERE id='s_presentation_C2_06';

-- ===== GREETING =====

-- s_greeting_A1_06: "Goodbye! See you later!" — fixed greeting expression, KEEP
-- (no update needed)

-- s_greeting_A1_04: "My name is ___. What's your name?" — already a template form with ___ placeholder, KEEP
-- (no update needed)

-- s_greeting_A1_07: "I'm sorry, I don't understand. Can you say that again?" → "I'm sorry, I don't V. Can you V that again?"
UPDATE sentences SET en='I''m sorry, I don''t V. Can you V that again?', ko='죄송해요, V하지 못했어요. 다시 V해 주시겠어요?', highlight='Can you V that again' WHERE id='s_greeting_A1_07';

-- s_greeting_A1_05: "Thank you so much! You're very kind." → "Thank you so much! You're very Adj."
UPDATE sentences SET en='Thank you so much! You''re very Adj.', ko='정말 감사해요! 정말 Adj하시네요.', highlight='You''re very Adj' WHERE id='s_greeting_A1_05';

-- s_greeting_A1_03: "Good morning! How are you today?" — fixed greeting, KEEP
-- (no update needed)

-- s_greeting_A1_02: "How are you?" — fixed greeting, KEEP
-- (no update needed)

-- s_greeting_A1_01: "Nice to meet you!" → "Nice to V you" (slight pattern expansion)
UPDATE sentences SET en='Nice to V you!', ko='V해서 반갑습니다!', highlight='Nice to V you' WHERE id='s_greeting_A1_01';

-- s_greeting_A2_07: "Thanks for having me — I really enjoyed it." → "Thanks for V-ing me — I really V-ed it"
UPDATE sentences SET en='Thanks for V-ing me — I really V-ed it.', ko='V해 주셔서 감사해요 — 정말 V했어요.', highlight='Thanks for V-ing me' WHERE id='s_greeting_A2_07';

-- s_greeting_A2_06: "Would you mind if I joined you?" → "Would you mind if I V-ed ~?"
UPDATE sentences SET en='Would you mind if I V-ed ~?', ko='~해도 될까요?', highlight='Would you mind if I V-ed' WHERE id='s_greeting_A2_06';

-- s_greeting_A2_03: "Please call me ___. It's easier than my full name." — already template form, KEEP
-- (no update needed)

-- s_greeting_A2_05: "I'm originally from Busan. Where are you from?" → "I'm originally from ~. Where are you from?"
UPDATE sentences SET en='I''m originally from ~. Where are you from?', ko='저는 원래 ~ 출신이에요. 어디서 오셨어요?', highlight='I''m originally from ~' WHERE id='s_greeting_A2_05';

-- s_greeting_A2_01: "Let me introduce myself — I'm ___ and I work as a ___." — already template form, KEEP
-- (no update needed)

-- s_greeting_A2_04: "It was great seeing you. Take care!" → "It was great V-ing you. Take care!"
UPDATE sentences SET en='It was great V-ing you. Take care!', ko='V해서 좋았어요. 잘 지내요!', highlight='It was great V-ing you' WHERE id='s_greeting_A2_04';

-- s_greeting_A2_02: "It's lovely to meet you. I've heard a lot about you." → "It's lovely to V you. I've heard a lot about ~"
UPDATE sentences SET en='It''s lovely to V you. I''ve heard a lot about ~.', ko='V해서 반가워요. ~에 대해 많이 들었어요.', highlight='I''ve heard a lot about ~' WHERE id='s_greeting_A2_02';

-- s_greeting_B1_06: "I've been looking forward to this meeting for a while." → "I've been looking forward to N for a while"
UPDATE sentences SET en='I''ve been looking forward to N for a while.', ko='N을 한동안 기대하고 있었어요.', highlight='I''ve been looking forward to N' WHERE id='s_greeting_B1_06';

-- s_greeting_B1_02: "It's great to finally put a face to the name." → idiom, KEEP (already template-like; final form)
-- (no update needed)

-- s_greeting_B1_03: "I believe we have some mutual friends — do you know ___?" — already template form with ___, KEEP
-- (no update needed)

-- s_greeting_B1_05: "Allow me to introduce my colleague, ___." → "Allow me to V my ~, ___"
UPDATE sentences SET en='Allow me to V my N, ~.', ko='제 N ~을 V하도록 해주세요.', highlight='Allow me to V' WHERE id='s_greeting_B1_05';

-- s_greeting_B1_04: "Long time no see! How have you been keeping?" — fixed greeting, KEEP
-- (no update needed)

-- s_greeting_B1_07: "It was wonderful catching up — we should do this more often." → "It was wonderful V-ing — we should V more often"
UPDATE sentences SET en='It was wonderful V-ing — we should V more often.', ko='V해서 좋았어요 — 더 자주 V해요.', highlight='It was wonderful V-ing' WHERE id='s_greeting_B1_07';

-- s_greeting_B1_01: "I don't think we've been formally introduced — I'm ___." — already template form, KEEP
-- (no update needed)

-- s_greeting_B2_02: "Your reputation precedes you — it's an honor to finally meet." — idiomatic fixed expression, KEEP
-- (no update needed)

-- s_greeting_B2_07: "It's been far too long — I'm so glad we managed to reconnect." → "It's been far too long — I'm so glad we managed to V"
UPDATE sentences SET en='It''s been far too long — I''m so glad we managed to V.', ko='너무 오래됐어요 — V할 수 있어서 정말 기뻐요.', highlight='managed to V' WHERE id='s_greeting_B2_07';

-- s_greeting_B2_06: "I was hoping we'd get a chance to connect at this event." → "I was hoping we'd get a chance to V at N"
UPDATE sentences SET en='I was hoping we''d get a chance to V at N.', ko='N에서 V할 기회를 바라고 있었어요.', highlight='get a chance to V' WHERE id='s_greeting_B2_06';

-- s_greeting_B2_01: "On behalf of our organization, it is my pleasure to welcome you." → "On behalf of N, it is my pleasure to V ~"
UPDATE sentences SET en='On behalf of N, it is my pleasure to V ~.', ko='N을 대표하여 ~을 V하게 되어 기쁩니다.', highlight='On behalf of N' WHERE id='s_greeting_B2_01';

-- s_greeting_B2_05: "We are delighted to have such distinguished guests with us today." → "We are delighted to V such Adj N with us today"
UPDATE sentences SET en='We are delighted to V such Adj N with us today.', ko='오늘 이렇게 Adj한 N과 V할 수 있어 기쁩니다.', highlight='delighted to V such Adj N' WHERE id='s_greeting_B2_05';

-- s_greeting_B2_04: "Please, allow me to extend a warm welcome on this occasion." → "Please, allow me to extend a Adj N on this occasion"
UPDATE sentences SET en='Please, allow me to extend a Adj N on this occasion.', ko='이 자리에서 Adj한 N의 말씀을 전할 수 있어 기쁩니다.', highlight='extend a Adj N' WHERE id='s_greeting_B2_04';

-- s_greeting_B2_03: "I've heard excellent things about your work in this field." → "I've heard Adj things about ~ in N"
UPDATE sentences SET en='I''ve heard Adj things about ~ in N.', ko='N에서 ~에 대해 Adj한 이야기를 들었어요.', highlight='I''ve heard Adj things about ~' WHERE id='s_greeting_B2_03';

-- s_greeting_C1_07: "I hope this occasion will mark the beginning of a fruitful and enduring relationship." → "I hope N will mark the beginning of a Adj and Adj N"
UPDATE sentences SET en='I hope N will mark the beginning of a Adj and Adj N.', ko='N이 Adj하고 Adj한 N의 시작이 되기를 바랍니다.', highlight='mark the beginning of a Adj N' WHERE id='s_greeting_C1_07';

-- s_greeting_C1_03: "Permit me to extend my sincerest greetings and warmest regards." → "Permit me to V my Adj-est A and Adj-est B"
UPDATE sentences SET en='Permit me to V my Adj-est A and Adj-est B.', ko='Adj한 A와 Adj한 B를 V하도록 허락해 주십시오.', highlight='Permit me to V my Adj-est A and Adj-est B' WHERE id='s_greeting_C1_03';

-- s_greeting_C1_06: "Your eloquence and expertise have long been an inspiration to those of us in this field." → "Your A and B have long been an N to ~"
UPDATE sentences SET en='Your A and B have long been an N to ~.', ko='귀하의 A와 B는 오랫동안 ~에게 N이 되어 왔습니다.', highlight='Your A and B have long been an N' WHERE id='s_greeting_C1_06';

-- s_greeting_C1_05: "It goes without saying that we are truly privileged to have you among us." → "It goes without saying that S V"
UPDATE sentences SET en='It goes without saying that S V.', ko='S가 V하다는 것은 두말할 나위가 없습니다.', highlight='It goes without saying that S V' WHERE id='s_greeting_C1_05';

-- s_greeting_C1_02: "Your contributions to the field are well recognized and deeply appreciated." → "Your N to ~ are well V-ed and deeply V-ed"
UPDATE sentences SET en='Your N to ~ are well V-ed and deeply V-ed.', ko='~에 대한 귀하의 N은 잘 V되었고 깊이 V되고 있습니다.', highlight='well V-ed and deeply V-ed' WHERE id='s_greeting_C1_02';

-- s_greeting_C1_04: "I must say, your presence here lends a great deal of prestige to this event." → "I must say, your N here lends a great deal of N to ~"
UPDATE sentences SET en='I must say, your N here lends a great deal of N to ~.', ko='솔직히 말씀드리면, 귀하의 N이 ~에 큰 N을 더해 줍니다.', highlight='lends a great deal of N to ~' WHERE id='s_greeting_C1_04';

-- s_greeting_C1_01: "It is a distinct honor to be in the company of such accomplished individuals." → "It is a distinct honor to V such Adj N"
UPDATE sentences SET en='It is a distinct honor to V such Adj N.', ko='이렇게 Adj한 N과 V하게 된 것은 특별한 영광입니다.', highlight='It is a distinct honor to V' WHERE id='s_greeting_C1_01';

-- s_greeting_C2_01: "We are gathered here today to honor an individual whose contributions have shaped the very fabric of our discipline." → "We are gathered here today to V N whose N have shaped the very fabric of ~"
UPDATE sentences SET en='We are gathered here today to V N whose N have shaped the very fabric of ~.', ko='오늘 우리는 ~의 근본을 형성해온 N을 V하기 위해 이 자리에 모였습니다.', highlight='shaped the very fabric of ~' WHERE id='s_greeting_C2_01';

-- s_greeting_C2_04: "Seldom has it been my privilege to stand before an assembly of such rare collective wisdom and experience." → "Seldom has it been my privilege to V before N of such Adj A and B"
UPDATE sentences SET en='Seldom has it been my privilege to V before N of such Adj A and B.', ko='이처럼 Adj한 A와 B를 가진 N 앞에 V하는 영광은 쉽사리 주어지지 않습니다.', highlight='Seldom has it been my privilege to V' WHERE id='s_greeting_C2_04';

-- s_greeting_C2_07: "It is with the utmost reverence and collegial warmth that I bid you welcome to this convocation." → "It is with the utmost A and Adj B that I V you ~ to N"
UPDATE sentences SET en='It is with the utmost A and Adj B that I V you ~ to N.', ko='최고의 A와 Adj한 B로 N에 여러분을 V합니다.', highlight='It is with the utmost A and Adj B that I V' WHERE id='s_greeting_C2_07';

-- s_greeting_C2_06: "Your stewardship of this discipline has been nothing short of exemplary, and your presence here today is a testament to that legacy." → "Your N of ~ has been nothing short of Adj, and your N here today is a testament to ~"
UPDATE sentences SET en='Your N of ~ has been nothing short of Adj, and your N here today is a testament to ~.', ko='~에 대한 귀하의 N은 더할 나위 없이 Adj했으며, 오늘 이 자리의 N이 ~을 증명합니다.', highlight='nothing short of Adj' WHERE id='s_greeting_C2_06';

-- s_greeting_C2_03: "Allow me to formally inaugurate this meeting with a word of profound gratitude for your esteemed presence." → "Allow me to formally V N with a word of Adj N for ~"
UPDATE sentences SET en='Allow me to formally V N with a word of Adj N for ~.', ko='~에 대한 Adj한 N의 말씀으로 N을 공식적으로 V하도록 허락해 주십시오.', highlight='formally V N with a word of Adj N' WHERE id='s_greeting_C2_03';

-- s_greeting_C2_05: "May I take this opportunity to convey, on behalf of all present, our deepest respect and admiration." → "May I take this opportunity to V, on behalf of ~, our Adj-est A and B"
UPDATE sentences SET en='May I take this opportunity to V, on behalf of ~, our Adj-est A and B.', ko='이 자리를 빌려, ~을 대표하여 가장 Adj한 A와 B를 V하고자 합니다.', highlight='May I take this opportunity to V' WHERE id='s_greeting_C2_05';

-- s_greeting_C2_02: "The distinction and gravitas you bring to this assembly are, without exaggeration, unparalleled." → "The A and B you bring to N are, without exaggeration, Adj"
UPDATE sentences SET en='The A and B you bring to N are, without exaggeration, Adj.', ko='귀하가 N에 가져오시는 A와 B는, 과장 없이 말씀드리면, Adj합니다.', highlight='without exaggeration, Adj' WHERE id='s_greeting_C2_02';
