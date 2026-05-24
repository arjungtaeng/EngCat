-- EngCat — 시사·뉴스 (news) 단어 + 패턴 데이터
-- 35 words × 6 CEFR levels (A1~C2) = 210 words
--  7 patterns × 6 CEFR levels       = 42 patterns
-- Generated: 2026-05-24

-- ══════════════════════════════════════════════════════════════
-- A1 WORDS (35개)
-- ══════════════════════════════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_A1_01','news','/njuːz/','noun','뉴스','New information about recent events.','Did you watch the {news} last night?','어젯밤 뉴스 봤어요?','news','A1','news',1,'news television broadcast anchor'),
('w_news_A1_02','report','/rɪˈpɔːrt/','noun','보도, 기사','A spoken or written account of something that happened.','The {report} about the earthquake was shocking.','지진에 관한 보도가 충격적이었어요.','report','A1','news',1,'newspaper report journalism'),
('w_news_A1_03','country','/ˈkʌntri/','noun','나라, 국가','A nation with its own government.','Which {country} won the most medals?','어떤 나라가 가장 많은 메달을 땄어요?','country','A1','news',1,'world map country flag'),
('w_news_A1_04','people','/ˈpiːpəl/','noun','사람들, 국민','Human beings in general or a group of persons.','Many {people} watched the live broadcast.','많은 사람들이 생방송을 봤어요.','people','A1','news',1,'crowd people gathering'),
('w_news_A1_05','government','/ˈɡʌvərnmənt/','noun','정부','The group of people who control a country.','The {government} announced new rules today.','정부가 오늘 새로운 규칙을 발표했어요.','government','A1','news',1,'government building parliament'),
('w_news_A1_06','war','/wɔːr/','noun','전쟁','Armed fighting between countries or groups.','The {war} ended after many years.','전쟁이 오랜 세월 끝에 끝났어요.','war','A1','news',1,'war conflict military'),
('w_news_A1_07','election','/ɪˈlekʃən/','noun','선거','A process by which people vote to choose a leader.','The {election} results will be announced tonight.','선거 결과가 오늘 밤 발표될 예정이에요.','election','A1','news',1,'election vote ballot'),
('w_news_A1_08','money','/ˈmʌni/','noun','돈, 자금','A medium of exchange used to buy goods and services.','The government spent a lot of {money} on aid.','정부가 구호에 많은 돈을 썼어요.','money','A1','news',1,'money currency coins'),
('w_news_A1_09','event','/ɪˈvent/','noun','사건, 행사','Something that happens or takes place.','It was the biggest news {event} of the year.','그것은 올해 가장 큰 뉴스 사건이었어요.','event','A1','news',1,'event news broadcast'),
('w_news_A1_10','world','/wɜːrld/','noun','세계','The earth and all the people and things on it.','This is important news for the whole {world}.','이것은 전 세계에 중요한 뉴스예요.','world','A1','news',1,'world globe earth'),
('w_news_A1_11','TV','/ˌtiːˈviː/','noun','TV, 텔레비전','A device that receives and displays broadcast signals.','I heard it on the {TV} this morning.','오늘 아침 TV에서 들었어요.','TV','A1','news',2,'television TV screen'),
('w_news_A1_12','today','/təˈdeɪ/','adverb','오늘','On the present day.','What happened in the news {today}?','오늘 뉴스에서 무슨 일이 있었나요?','today','A1','news',2,'calendar today date'),
('w_news_A1_13','city','/ˈsɪti/','noun','도시','A large and important town.','The fire destroyed part of the {city}.','화재가 도시 일부를 불태웠어요.','city','A1','news',1,'city skyline urban'),
('w_news_A1_14','leader','/ˈliːdər/','noun','지도자, 대표','A person who leads or guides a group.','The {leader} gave a speech on television.','지도자가 TV에서 연설을 했어요.','leader','A1','news',1,'leader speech podium'),
('w_news_A1_15','story','/ˈstɔːri/','noun','이야기, 기사','A news report or account of events.','That was the top {story} on the evening news.','그것이 저녁 뉴스의 주요 기사였어요.','story','A1','news',1,'newspaper story headline'),
('w_news_A1_16','fire','/faɪər/','noun','화재','The event of something burning.','A big {fire} broke out in the city.','도시에 큰 화재가 발생했어요.','fire','A1','news',2,'fire firefighter emergency'),
('w_news_A1_17','police','/pəˈliːs/','noun','경찰','The official organization that enforces law.','The {police} are investigating the accident.','경찰이 사고를 조사하고 있어요.','police','A1','news',1,'police officer law enforcement'),
('w_news_A1_18','dead','/ded/','adjective','사망한, 죽은','No longer alive.','Ten people were found {dead} at the scene.','현장에서 10명이 사망한 채 발견되었어요.','dead','A1','news',2,'memorial flowers mourning'),
('w_news_A1_19','help','/help/','noun','도움, 지원','The action of assisting someone.','Many volunteers came to {help} those in need.','많은 자원봉사자들이 도움이 필요한 사람들을 도우러 왔어요.','help','A1','news',2,'volunteer help aid'),
('w_news_A1_20','air','/eər/','noun','공기, 항공','The invisible mixture of gases surrounding the Earth.','The {air} quality in the city was poor today.','오늘 도시의 공기질이 나빴어요.','air','A1','news',2,'air pollution smog sky'),
('w_news_A1_21','water','/ˈwɔːtər/','noun','물','A clear liquid necessary for life.','Clean {water} is still needed in flood areas.','홍수 지역에는 아직도 깨끗한 물이 필요해요.','water','A1','news',2,'water flood relief'),
('w_news_A1_22','food','/fuːd/','noun','식량, 음식','Something people eat to survive.','The government sent {food} to the disaster zone.','정부가 재난 지역에 식량을 보냈어요.','food','A1','news',2,'food aid relief supplies'),
('w_news_A1_23','school','/skuːl/','noun','학교','A place where children learn.','The {school} was closed due to the storm.','폭풍으로 인해 학교가 문을 닫았어요.','school','A1','news',2,'school building education'),
('w_news_A1_24','hospital','/ˈhɒspɪtəl/','noun','병원','A place where sick or injured people receive treatment.','Many people were taken to the {hospital}.','많은 사람들이 병원으로 이송되었어요.','hospital','A1','news',1,'hospital emergency ambulance'),
('w_news_A1_25','accident','/ˈæksɪdənt/','noun','사고','An unexpected event that causes damage or injury.','A serious {accident} happened on the highway.','고속도로에서 심각한 사고가 발생했어요.','accident','A1','news',1,'accident crash emergency'),
('w_news_A1_26','dead','/ded/','adjective','사망자','No longer alive.','Three people were {dead} after the crash.','충돌 후 3명이 사망했어요.','dead','A1','news',2,'accident scene emergency'),
('w_news_A1_27','meet','/miːt/','verb','만나다, 회담하다','To come together formally or informally.','The two leaders will {meet} next week.','두 지도자가 다음 주에 만날 예정이에요.','meet','A1','news',2,'meeting leaders summit'),
('w_news_A1_28','year','/jɪər/','noun','해, 연도','A period of twelve months.','It was the worst drought in ten {years}.','10년 만에 최악의 가뭄이었어요.','year','A1','news',2,'calendar year timeline'),
('w_news_A1_29','new','/njuː/','adjective','새로운','Recently made, introduced, or discovered.','A {new} law was passed this week.','이번 주 새로운 법이 통과되었어요.','new','A1','news',2,'announcement new law'),
('w_news_A1_30','open','/ˈoʊpən/','verb','개방하다, 열다','To make accessible or available.','The border will {open} next month.','다음 달 국경이 개방될 예정이에요.','open','A1','news',2,'border gate open'),
('w_news_A1_31','close','/kloʊz/','verb','폐쇄하다, 닫다','To shut or make no longer available.','The factory will {close} and many jobs will be lost.','공장이 문을 닫아 많은 일자리가 없어질 거예요.','close','A1','news',2,'factory closure workers'),
('w_news_A1_32','win','/wɪn/','verb','이기다, 승리하다','To achieve victory in a contest.','Our team will {win} the election.','우리 팀이 선거에서 이길 거예요.','win','A1','news',2,'election win celebration'),
('w_news_A1_33','hurt','/hɜːrt/','adjective','다친, 부상당한','Injured or in pain.','Twenty people were {hurt} in the explosion.','폭발로 20명이 다쳤어요.','hurt','A1','news',2,'injury accident rescue'),
('w_news_A1_34','live','/laɪv/','adjective','생방송의','Broadcast at the time of occurrence.','Watch the {live} coverage of the summit.','정상회담 생방송을 시청하세요.','live','A1','news',2,'live broadcast TV news'),
('w_news_A1_35','big','/bɪɡ/','adjective','큰, 중요한','Of considerable size or importance.','This is {big} news for the entire nation.','이것은 온 나라에 큰 뉴스예요.','big','A1','news',3,'breaking news headline');

-- ══════════════════════════════════════════════════════════════
-- A2 WORDS (35개)
-- ══════════════════════════════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_A2_01','politics','/ˈpɒlɪtɪks/','noun','정치','The activities and affairs involved in governing a country.','She studies {politics} at university.','그녀는 대학에서 정치학을 공부해요.','politics','A2','news',1,'politics government debate'),
('w_news_A2_02','economy','/ɪˈkɒnəmi/','noun','경제','The system of how money and resources are managed in a country.','The {economy} grew by two percent last year.','작년에 경제가 2% 성장했어요.','economy','A2','news',1,'economy growth chart'),
('w_news_A2_03','protest','/ˈproʊtest/','noun','시위, 항의','An organized public demonstration against something.','Thousands joined the {protest} in the capital.','수천 명이 수도에서 열린 시위에 참가했어요.','protest','A2','news',1,'protest crowd demonstration'),
('w_news_A2_04','vote','/voʊt/','noun','투표','A formal expression of choice in an election.','The {vote} was very close — only 1% difference.','투표 결과가 매우 근소했어요. 단 1% 차이였어요.','vote','A2','news',1,'vote ballot election'),
('w_news_A2_05','president','/ˈprezɪdənt/','noun','대통령, 총장','The elected head of a republic.','The {president} will address the nation tonight.','대통령이 오늘 밤 국민에게 연설할 예정이에요.','president','A2','news',1,'president speech podium'),
('w_news_A2_06','law','/lɔː/','noun','법률, 법','A rule made by a government that must be obeyed.','A new {law} limits the use of plastic.','새로운 법이 플라스틱 사용을 제한해요.','law','A2','news',1,'law gavel court'),
('w_news_A2_07','crime','/kraɪm/','noun','범죄','An action that is against the law.','The government promised to reduce {crime}.','정부가 범죄를 줄이겠다고 약속했어요.','crime','A2','news',1,'crime police investigation'),
('w_news_A2_08','health','/helθ/','noun','건강, 보건','The condition of a person''s body or mind.','The report focused on public {health} risks.','보고서는 공중 보건 위험에 초점을 맞췄어요.','health','A2','news',1,'health medicine hospital'),
('w_news_A2_09','disaster','/dɪˈzɑːstər/','noun','재난, 재해','A sudden event that causes great damage or loss.','The flood was called a natural {disaster}.','홍수는 자연재해로 불렸어요.','disaster','A2','news',1,'disaster flood earthquake'),
('w_news_A2_10','international','/ˌɪntərˈnæʃənəl/','adjective','국제적인','Relating to more than one country.','The crisis attracted {international} attention.','위기는 국제적인 관심을 끌었어요.','international','A2','news',1,'international flags summit'),
('w_news_A2_11','statement','/ˈsteɪtmənt/','noun','성명, 발표','An official announcement made publicly.','The minister issued a {statement} this morning.','장관이 오늘 아침 성명을 발표했어요.','statement','A2','news',1,'press conference statement'),
('w_news_A2_12','attack','/əˈtæk/','noun','공격','A violent action against a person, place, or group.','The {attack} happened near the embassy.','공격은 대사관 근처에서 발생했어요.','attack','A2','news',2,'attack security military'),
('w_news_A2_13','force','/fɔːrs/','noun','군대, 병력','A group of soldiers or police.','Security {forces} were deployed to the region.','보안 병력이 그 지역에 배치되었어요.','forces','A2','news',2,'military force security'),
('w_news_A2_14','meeting','/ˈmiːtɪŋ/','noun','회의, 회담','A formal gathering to discuss issues.','The emergency {meeting} lasted five hours.','긴급 회의가 5시간 동안 계속되었어요.','meeting','A2','news',2,'meeting leaders summit'),
('w_news_A2_15','border','/ˈbɔːrdər/','noun','국경','A line that separates two countries.','Troops were sent to the {border}.','부대가 국경으로 파견되었어요.','border','A2','news',2,'border checkpoint military'),
('w_news_A2_16','capital','/ˈkæpɪtəl/','noun','수도','The city where a government is located.','Protesters marched to the {capital}.','시위대가 수도로 행진했어요.','capital','A2','news',1,'capital city parliament'),
('w_news_A2_17','official','/əˈfɪʃəl/','noun','관리, 공무원','A person holding a public position.','A government {official} confirmed the news.','정부 관리가 그 소식을 확인했어요.','official','A2','news',1,'official press conference'),
('w_news_A2_18','crisis','/ˈkraɪsɪs/','noun','위기','A time of intense difficulty or danger.','The country is facing an economic {crisis}.','그 나라는 경제 위기에 처해 있어요.','crisis','A2','news',1,'crisis economy newspaper'),
('w_news_A2_19','peace','/piːs/','noun','평화','Freedom from war or conflict.','Both sides agreed to work toward {peace}.','양측이 평화를 위해 노력하기로 합의했어요.','peace','A2','news',1,'peace handshake diplomacy'),
('w_news_A2_20','media','/ˈmiːdiə/','noun','언론, 미디어','The means of communication such as TV, radio, and newspapers.','The {media} covered the story around the clock.','언론이 그 사건을 24시간 보도했어요.','media','A2','news',1,'media journalism press'),
('w_news_A2_21','refugee','/ˌrefjuˈdʒiː/','noun','난민','A person forced to leave their country due to war or disaster.','Thousands of {refugees} crossed the border.','수천 명의 난민이 국경을 넘었어요.','refugee','A2','news',1,'refugee camp aid worker'),
('w_news_A2_22','aid','/eɪd/','noun','원조, 지원','Help given to those in need.','International {aid} arrived within hours.','국제 원조가 몇 시간 안에 도착했어요.','aid','A2','news',1,'aid humanitarian relief'),
('w_news_A2_23','damage','/ˈdæmɪdʒ/','noun','피해, 손해','Physical harm caused to something.','The storm caused significant {damage} to homes.','폭풍이 주택에 상당한 피해를 입혔어요.','damage','A2','news',2,'damage storm destruction'),
('w_news_A2_24','release','/rɪˈliːs/','verb','발표하다, 석방하다','To make available to the public or set free.','The government will {release} the report tomorrow.','정부가 내일 보고서를 발표할 예정이에요.','release','A2','news',2,'press release announcement'),
('w_news_A2_25','support','/səˈpɔːrt/','noun','지지, 지원','Help or approval given to someone.','The party lost {support} after the scandal.','당은 스캔들 이후 지지를 잃었어요.','support','A2','news',2,'support rally politics'),
('w_news_A2_26','soldier','/ˈsoʊldʒər/','noun','군인','A member of an army.','The {soldier} returned home after the mission.','임무를 마치고 군인이 귀국했어요.','soldier','A2','news',2,'soldier military army'),
('w_news_A2_27','victim','/ˈvɪktɪm/','noun','피해자, 희생자','A person harmed by a crime, accident, or disaster.','Aid workers reached the {victims} quickly.','구호 요원들이 피해자들에게 빠르게 도달했어요.','victims','A2','news',2,'victim aid rescue'),
('w_news_A2_28','cause','/kɔːz/','noun','원인, 이유','The thing that makes something happen.','Investigators are looking into the {cause} of the crash.','수사관들이 충돌 원인을 조사하고 있어요.','cause','A2','news',2,'investigation cause inquiry'),
('w_news_A2_29','deal','/diːl/','noun','협상, 합의','An agreement made between two parties.','The two countries signed a trade {deal}.','두 나라가 무역 협정에 서명했어요.','deal','A2','news',1,'deal agreement signing'),
('w_news_A2_30','announce','/əˈnaʊns/','verb','발표하다, 알리다','To make a public and official statement.','The company will {announce} the results tomorrow.','회사가 내일 결과를 발표할 예정이에요.','announce','A2','news',1,'announcement press conference'),
('w_news_A2_31','bomb','/bɒm/','noun','폭탄','An explosive device.','A {bomb} exploded near the marketplace.','시장 근처에서 폭탄이 터졌어요.','bomb','A2','news',2,'explosion bomb security'),
('w_news_A2_32','party','/ˈpɑːrti/','noun','(정치) 정당','A political organization that contests elections.','The ruling {party} lost the election.','집권당이 선거에서 졌어요.','party','A2','news',1,'political party election'),
('w_news_A2_33','dead','/ded/','adjective','사망한','No longer alive.','At least 30 people are {dead} after the flood.','홍수 이후 적어도 30명이 사망했어요.','dead','A2','news',2,'flood disaster relief'),
('w_news_A2_34','promise','/ˈprɒmɪs/','noun','약속, 공약','An assurance that one will do something.','The president made a {promise} to cut taxes.','대통령이 세금을 줄이겠다고 약속했어요.','promise','A2','news',2,'election promise campaign'),
('w_news_A2_35','foreign','/ˈfɒrɪn/','adjective','외국의','Of or from another country.','The minister met with {foreign} dignitaries.','장관이 외국 귀빈들을 만났어요.','foreign','A2','news',1,'foreign diplomacy embassy');

-- ══════════════════════════════════════════════════════════════
-- B1 WORDS (35개)
-- ══════════════════════════════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_B1_01','policy','/ˈpɒlɪsi/','noun','정책','A course of action adopted by a government or organization.','The new tax {policy} affects small businesses.','새 세금 정책이 중소기업에 영향을 미쳐요.','policy','B1','news',1,'policy government document'),
('w_news_B1_02','reform','/rɪˈfɔːrm/','noun','개혁','Change made to improve a system or institution.','The education {reform} sparked heated debate.','교육 개혁이 뜨거운 논쟁을 일으켰어요.','reform','B1','news',1,'reform protest parliament'),
('w_news_B1_03','parliament','/ˈpɑːrləmənt/','noun','의회','The group of elected officials that make laws.','The bill was passed by {parliament} last night.','법안이 어젯밤 의회를 통과했어요.','parliament','B1','news',1,'parliament building legislation'),
('w_news_B1_04','controversy','/ˈkɒntrəvɜːrsi/','noun','논란, 논쟁','Prolonged public disagreement or debate.','The decision caused major {controversy}.','그 결정은 큰 논란을 일으켰어요.','controversy','B1','news',1,'controversy debate protest'),
('w_news_B1_05','scandal','/ˈskændəl/','noun','스캔들, 추문','An event that causes public outrage.','The financial {scandal} forced the minister to resign.','금융 스캔들로 인해 장관이 사임했어요.','scandal','B1','news',1,'scandal resignation newspaper'),
('w_news_B1_06','minister','/ˈmɪnɪstər/','noun','장관','A head of a government department.','The finance {minister} presented the budget.','재무 장관이 예산안을 발표했어요.','minister','B1','news',1,'minister press conference government'),
('w_news_B1_07','legislation','/ˌledʒɪˈsleɪʃən/','noun','법률, 입법','Laws, considered collectively.','New {legislation} on data privacy was introduced.','데이터 개인정보 보호에 관한 새로운 법률이 도입되었어요.','legislation','B1','news',1,'legislation parliament law'),
('w_news_B1_08','opposition','/ˌɒpəˈzɪʃən/','noun','야당, 반대 세력','The political party not in government.','The {opposition} called for early elections.','야당이 조기 선거를 요구했어요.','opposition','B1','news',1,'opposition party parliament debate'),
('w_news_B1_09','coalition','/ˌkoʊəˈlɪʃən/','noun','연립 정부, 연합','A temporary alliance of different political parties.','The {coalition} government collapsed over budget disputes.','연립 정부가 예산 분쟁으로 붕괴되었어요.','coalition','B1','news',1,'coalition government alliance'),
('w_news_B1_10','bilateral','/ˌbaɪˈlætərəl/','adjective','양자간의','Involving two parties, especially two countries.','The {bilateral} talks focused on trade.','양자 회담은 무역에 초점을 맞췄어요.','bilateral','B1','news',2,'bilateral talks diplomacy'),
('w_news_B1_11','summit','/ˈsʌmɪt/','noun','정상 회담','A meeting between leaders of different countries.','The G20 {summit} opens in Seoul this week.','G20 정상 회담이 이번 주 서울에서 열려요.','summit','B1','news',1,'summit leaders diplomacy'),
('w_news_B1_12','ceasefire','/ˈsiːsfaɪər/','noun','휴전','A temporary stop of fighting agreed to by both sides.','Both sides agreed to a 72-hour {ceasefire}.','양측이 72시간 휴전에 합의했어요.','ceasefire','B1','news',1,'ceasefire peace military'),
('w_news_B1_13','inflation','/ɪnˈfleɪʃən/','noun','인플레이션, 물가 상승','A general increase in prices over time.','Rising {inflation} is squeezing household budgets.','인플레이션 상승이 가계 예산을 압박하고 있어요.','inflation','B1','news',1,'inflation economy prices'),
('w_news_B1_14','treaty','/ˈtriːti/','noun','조약','A formal agreement between two or more countries.','The countries signed a landmark peace {treaty}.','두 나라가 획기적인 평화 조약에 서명했어요.','treaty','B1','news',1,'treaty signing diplomacy'),
('w_news_B1_15','amendment','/əˈmendmənt/','noun','수정안, 개정안','A change made to a law or document.','The constitutional {amendment} was approved by voters.','헌법 수정안이 유권자들의 승인을 받았어요.','amendment','B1','news',2,'amendment constitution law'),
('w_news_B1_16','corruption','/kəˈrʌpʃən/','noun','부패, 비리','Dishonest behavior by those in power.','The report revealed widespread {corruption} in the ministry.','보고서는 부처의 광범위한 부패를 폭로했어요.','corruption','B1','news',1,'corruption scandal investigation'),
('w_news_B1_17','democracy','/dɪˈmɒkrəsi/','noun','민주주의','A system of government by the whole population through elected representatives.','The protesters demanded a return to {democracy}.','시위대가 민주주의 회복을 요구했어요.','democracy','B1','news',1,'democracy protest vote'),
('w_news_B1_18','campaign','/kæmˈpeɪn/','noun','선거 운동, 캠페인','An organized course of action to achieve a particular goal.','The presidential {campaign} kicked off this week.','대통령 선거 운동이 이번 주에 시작되었어요.','campaign','B1','news',1,'campaign election rally'),
('w_news_B1_19','recall','/rɪˈkɔːl/','noun','리콜, 소환','An order to return a product or official.','The company issued a {recall} of the defective vehicles.','회사가 결함 차량에 대한 리콜을 발표했어요.','recall','B1','news',2,'recall safety defect'),
('w_news_B1_20','sanction','/ˈsæŋkʃən/','noun','제재','An official penalty or restriction imposed on a country.','New {sanctions} were imposed on the regime.','정권에 새로운 제재가 부과되었어요.','sanctions','B1','news',1,'sanctions trade restriction'),
('w_news_B1_21','poverty','/ˈpɒvərti/','noun','빈곤','The state of being extremely poor.','The new policy aims to reduce {poverty}.','새 정책은 빈곤 감소를 목표로 해요.','poverty','B1','news',1,'poverty community development'),
('w_news_B1_22','investigation','/ɪnˌvestɪˈɡeɪʃən/','noun','수사, 조사','A formal inquiry carried out to discover the truth.','The {investigation} into the crash is ongoing.','충돌에 대한 수사가 진행 중이에요.','investigation','B1','news',1,'investigation police inquiry'),
('w_news_B1_23','authority','/ɔːˈθɒrɪti/','noun','당국, 권한','The power to give orders, or an official body.','The {authorities} detained three suspects.','당국이 용의자 세 명을 구금했어요.','authorities','B1','news',1,'authority police official'),
('w_news_B1_24','threat','/θret/','noun','위협','A statement of an intention to inflict harm.','Officials called it a serious security {threat}.','당국자들은 그것을 심각한 안보 위협이라고 불렀어요.','threat','B1','news',1,'threat security warning'),
('w_news_B1_25','tension','/ˈtenʃən/','noun','긴장, 갈등','A strained relationship between countries or groups.','{Tension} along the border has been rising.','국경을 따라 긴장이 고조되고 있어요.','Tension','B1','news',1,'tension border military'),
('w_news_B1_26','budget','/ˈbʌdʒɪt/','noun','예산','An estimate of income and expenditure for a period.','The government unveiled its annual {budget}.','정부가 연간 예산을 공개했어요.','budget','B1','news',1,'budget finance government'),
('w_news_B1_27','resign','/rɪˈzaɪn/','verb','사임하다, 사퇴하다','To give up an official position voluntarily.','The prime minister agreed to {resign} on Friday.','총리가 금요일에 사임하기로 합의했어요.','resign','B1','news',1,'resign resignation press'),
('w_news_B1_28','protest','/ˈproʊtest/','verb','항의하다, 시위하다','To publicly express objection to something.','Students gathered to {protest} against the new law.','학생들이 새 법에 항의하기 위해 모였어요.','protest','B1','news',1,'protest student demonstration'),
('w_news_B1_29','impose','/ɪmˈpoʊz/','verb','부과하다, 강요하다','To force something on a person or group.','The government {imposed} a curfew in the capital.','정부가 수도에 통금령을 부과했어요.','imposed','B1','news',2,'curfew government order'),
('w_news_B1_30','negotiate','/nɪˈɡoʊʃieɪt/','verb','협상하다','To discuss something formally to reach an agreement.','The two sides agreed to {negotiate} a settlement.','양측이 합의를 위해 협상하기로 했어요.','negotiate','B1','news',1,'negotiate deal diplomacy'),
('w_news_B1_31','controversial','/ˌkɒntrəˈvɜːrʃəl/','adjective','논란이 되는','Causing public disagreement.','The {controversial} policy divided the nation.','논란이 되는 정책이 국론을 분열시켰어요.','controversial','B1','news',2,'controversial debate opinion'),
('w_news_B1_32','civilian','/sɪˈvɪliən/','noun','민간인','A person not in the military or police.','Dozens of {civilians} were injured in the clash.','충돌로 수십 명의 민간인이 부상을 입었어요.','civilians','B1','news',1,'civilian injury conflict'),
('w_news_B1_33','occupation','/ˌɒkjʊˈpeɪʃən/','noun','점령','The action of taking control of a place by military force.','The {occupation} lasted for more than a decade.','점령은 10년 이상 지속되었어요.','occupation','B1','news',2,'occupation military zone'),
('w_news_B1_34','deadline','/ˈdedlaɪn/','noun','기한, 데드라인','A date or time before which something must be done.','The negotiators missed the peace {deadline}.','협상가들이 평화 협상 기한을 놓쳤어요.','deadline','B1','news',2,'deadline clock negotiation'),
('w_news_B1_35','accuse','/əˈkjuːz/','verb','고발하다, 비난하다','To claim that someone has done something wrong.','The opposition {accused} the government of fraud.','야당이 정부를 사기로 고발했어요.','accused','B1','news',1,'accusation press conference court');

-- ══════════════════════════════════════════════════════════════
-- B2 WORDS (35개)
-- ══════════════════════════════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_B2_01','geopolitics','/ˌdʒiːoʊˈpɒlɪtɪks/','noun','지정학','The study of how geography influences international politics.','The region''s {geopolitics} shifted after the election.','선거 이후 그 지역의 지정학이 변했어요.','geopolitics','B2','news',1,'geopolitics map world power'),
('w_news_B2_02','sanctions','/ˈsæŋkʃənz/','noun','제재 조치들','Official penalties imposed on a country.','Western nations imposed tougher {sanctions} on the regime.','서방 국가들이 정권에 더 강한 제재를 가했어요.','sanctions','B2','news',1,'sanctions economic restriction'),
('w_news_B2_03','diplomatic','/ˌdɪpləˈmætɪk/','adjective','외교적인','Relating to the management of international relations.','The two sides agreed to resume {diplomatic} ties.','양측이 외교 관계를 재개하기로 합의했어요.','diplomatic','B2','news',1,'diplomatic relations embassy'),
('w_news_B2_04','incumbent','/ɪnˈkʌmbənt/','noun','현직자','The current holder of an official position.','The {incumbent} president is seeking a second term.','현직 대통령이 재선을 노리고 있어요.','incumbent','B2','news',1,'incumbent election president'),
('w_news_B2_05','sovereignty','/ˈsɒvrənti/','noun','주권','The authority of a state to govern itself.','The small nation defended its {sovereignty}.','그 소국은 자국의 주권을 지켰어요.','sovereignty','B2','news',1,'sovereignty nation state'),
('w_news_B2_06','multilateral','/ˌmʌltiˈlætərəl/','adjective','다자간의','Agreed upon or participated in by three or more parties.','A {multilateral} approach is needed to solve the crisis.','위기 해결을 위해서는 다자간 접근이 필요해요.','multilateral','B2','news',2,'multilateral summit conference'),
('w_news_B2_07','referendum','/ˌrefəˈrendəm/','noun','국민투표','A general vote by the public on a single political issue.','The independence {referendum} passed with 52%.','독립 국민투표가 52%로 통과되었어요.','referendum','B2','news',1,'referendum vote democracy'),
('w_news_B2_08','austerity','/ɒˈsterɪti/','noun','긴축 재정','Government economic policies involving spending cuts.','The new {austerity} measures angered many citizens.','새로운 긴축 재정 조치가 많은 시민들을 화나게 했어요.','austerity','B2','news',1,'austerity economy protest'),
('w_news_B2_09','coup','/kuː/','noun','쿠데타','A sudden illegal seizure of power from a government.','The military staged a {coup} at dawn.','군대가 새벽에 쿠데타를 일으켰어요.','coup','B2','news',1,'coup military takeover'),
('w_news_B2_10','insurgency','/ɪnˈsɜːrdʒənsi/','noun','반란, 봉기','An active revolt or uprising against authority.','The government launched an offensive against the {insurgency}.','정부가 반란 세력에 대한 공세를 시작했어요.','insurgency','B2','news',2,'insurgency military conflict'),
('w_news_B2_11','alliance','/əˈlaɪəns/','noun','동맹','A formal agreement between countries to cooperate.','The military {alliance} pledged mutual defense.','군사 동맹이 상호 방어를 서약했어요.','alliance','B2','news',1,'alliance military NATO'),
('w_news_B2_12','veto','/ˈviːtoʊ/','noun','거부권','The right to reject a decision or proposal.','Russia used its {veto} to block the resolution.','러시아가 거부권을 사용해 결의안을 막았어요.','veto','B2','news',1,'veto UN security council'),
('w_news_B2_13','intervention','/ˌɪntərˈvenʃən/','noun','개입, 중재','The act of becoming involved in a situation.','The UN called for humanitarian {intervention}.','유엔이 인도주의적 개입을 촉구했어요.','intervention','B2','news',1,'intervention humanitarian UN'),
('w_news_B2_14','mandate','/ˈmændeɪt/','noun','위임권, 권한','Official authority to do something.','The party won a clear {mandate} from voters.','당이 유권자들로부터 명확한 위임권을 얻었어요.','mandate','B2','news',1,'mandate election government'),
('w_news_B2_15','propaganda','/ˌprɒpəˈɡændə/','noun','선전, 프로파간다','Information spread to promote a political cause.','Both sides were accused of spreading {propaganda}.','양측 모두 선전을 퍼뜨린다는 비난을 받았어요.','propaganda','B2','news',2,'propaganda media information'),
('w_news_B2_16','annexation','/ˌænekˈseɪʃən/','noun','합병, 병합','The action of taking control of another territory.','The {annexation} was condemned by the UN.','합병은 유엔으로부터 비난을 받았어요.','annexation','B2','news',2,'annexation territory military'),
('w_news_B2_17','reconciliation','/ˌrekənsɪliˈeɪʃən/','noun','화해, 조화','The restoration of friendly relations.','The two nations began a process of {reconciliation}.','두 나라가 화해 과정을 시작했어요.','reconciliation','B2','news',1,'reconciliation peace dialogue'),
('w_news_B2_18','extradition','/ˌekstrəˈdɪʃən/','noun','범인 인도','The handing over of a person by one country to another.','The court approved the suspect''s {extradition}.','법원이 용의자의 범인 인도를 승인했어요.','extradition','B2','news',2,'extradition court justice'),
('w_news_B2_19','embargo','/ɪmˈbɑːrɡoʊ/','noun','통상 금지, 엠바고','An official ban on trade with a particular country.','The arms {embargo} was extended for another year.','무기 통상 금지가 1년 더 연장되었어요.','embargo','B2','news',2,'embargo trade restriction'),
('w_news_B2_20','accountability','/əˌkaʊntəˈbɪlɪti/','noun','책임성','The obligation to accept responsibility for one''s actions.','There are calls for greater {accountability} in government.','정부에서의 더 큰 책임성에 대한 요구가 있어요.','accountability','B2','news',1,'accountability government transparency'),
('w_news_B2_21','fragile','/ˈfrædʒaɪl/','adjective','취약한, 불안정한','Easily broken or destroyed; not strong or stable.','The peace deal remains {fragile}.','평화 협정은 여전히 불안정해요.','fragile','B2','news',2,'fragile peace negotiation'),
('w_news_B2_22','polarize','/ˈpoʊləraɪz/','verb','양극화시키다','To divide into two contrasting groups.','The debate has {polarized} public opinion.','논쟁이 여론을 양극화시켰어요.','polarized','B2','news',1,'polarize opinion politics'),
('w_news_B2_23','escalate','/ˈeskəleɪt/','verb','고조되다, 확대되다','To increase in intensity or seriousness.','The conflict could {escalate} into a full-scale war.','갈등이 전면전으로 확대될 수 있어요.','escalate','B2','news',1,'escalate conflict tension'),
('w_news_B2_24','rhetoric','/ˈretərɪk/','noun','수사, 언변','Language designed to have a persuasive or impressive effect.','The heated {rhetoric} from both sides raised fears.','양측의 과열된 수사가 우려를 높였어요.','rhetoric','B2','news',2,'rhetoric speech politics'),
('w_news_B2_25','bilateral','/ˌbaɪˈlætərəl/','adjective','양자간의','Involving two countries or parties.','The summit aimed to strengthen {bilateral} relations.','정상 회담은 양자 관계 강화를 목표로 했어요.','bilateral','B2','news',1,'bilateral summit relations'),
('w_news_B2_26','proxy','/ˈprɒksi/','noun','대리인, 프록시','A person or group acting on behalf of another.','The conflict has become a {proxy} war.','갈등은 대리전이 되었어요.','proxy','B2','news',2,'proxy war conflict geopolitics'),
('w_news_B2_27','disinformation','/ˌdɪsɪnfəˈmeɪʃən/','noun','허위 정보','False information deliberately spread to deceive.','Officials warned of a {disinformation} campaign.','당국자들이 허위 정보 캠페인에 대해 경고했어요.','disinformation','B2','news',1,'disinformation media fake news'),
('w_news_B2_28','bipartisan','/ˌbaɪˈpɑːrtɪzən/','adjective','초당적인','Involving the cooperation of two political parties.','The {bipartisan} bill passed with broad support.','초당적 법안이 광범위한 지지로 통과되었어요.','bipartisan','B2','news',2,'bipartisan vote congress'),
('w_news_B2_29','cease','/siːs/','verb','중단하다, 그치다','To stop doing something.','Hostilities are expected to {cease} by midnight.','적대 행위가 자정까지 중단될 것으로 예상돼요.','cease','B2','news',2,'cease hostilities military'),
('w_news_B2_30','broker','/ˈbroʊkər/','verb','중개하다','To arrange or negotiate on behalf of others.','The UN is trying to {broker} a peace deal.','유엔이 평화 협정을 중개하려고 노력하고 있어요.','broker','B2','news',1,'broker peace negotiation'),
('w_news_B2_31','concession','/kənˈseʃən/','noun','양보','Something granted as a compromise.','Both sides made {concessions} to reach a deal.','양측이 합의에 이르기 위해 양보를 했어요.','concessions','B2','news',1,'concession negotiation deal'),
('w_news_B2_32','clandestine','/klænˈdestɪn/','adjective','비밀의, 은밀한','Done secretly and often illegally.','Reports surfaced of {clandestine} talks between rivals.','경쟁국 사이의 비밀 협상 소식이 표면에 드러났어요.','clandestine','B2','news',2,'clandestine meeting secret'),
('w_news_B2_33','ratify','/ˈrætɪfaɪ/','verb','비준하다','To formally approve an agreement.','All member states must {ratify} the treaty.','모든 회원국이 조약을 비준해야 해요.','ratify','B2','news',1,'ratify treaty agreement'),
('w_news_B2_34','disparity','/dɪˈspærɪti/','noun','격차, 불균형','A great difference between things.','The report highlighted the growing wealth {disparity}.','보고서는 커지는 부의 격차를 강조했어요.','disparity','B2','news',2,'disparity inequality society'),
('w_news_B2_35','defection','/dɪˈfekʃən/','noun','망명, 탈당','The act of abandoning allegiance to one''s country.','A senior official''s {defection} shocked the regime.','고위 관리의 망명이 정권에 충격을 줬어요.','defection','B2','news',2,'defection spy border');

-- ══════════════════════════════════════════════════════════════
-- C1 WORDS (35개)
-- ══════════════════════════════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_C1_01','hegemony','/hɪˈdʒeməni/','noun','패권','Leadership or dominance of one country over others.','China''s growing {hegemony} in the region concerns allies.','중국의 성장하는 지역 패권이 동맹국들을 우려시켜요.','hegemony','C1','news',1,'hegemony power global map'),
('w_news_C1_02','realpolitik','/reɪˈɑːlpɒlɪtɪk/','noun','현실 정치','Politics based on practical considerations rather than ideology.','The decision was a clear example of {realpolitik}.','그 결정은 현실 정치의 명확한 사례였어요.','realpolitik','C1','news',2,'realpolitik diplomacy politics'),
('w_news_C1_03','extraterritorial','/ˌekstrəˌterɪˈtɔːriəl/','adjective','치외법권적인','Operating beyond the legal jurisdiction of a country.','The treaty includes {extraterritorial} jurisdiction clauses.','조약에는 치외법권 관할권 조항이 포함되어 있어요.','extraterritorial','C1','news',2,'extraterritorial embassy law'),
('w_news_C1_04','jurisprudence','/ˌdʒʊərɪsˈpruːdəns/','noun','법학, 법철학','The theory or philosophy of law.','The ruling set a precedent in international {jurisprudence}.','판결은 국제 법학에 전례를 남겼어요.','jurisprudence','C1','news',2,'jurisprudence law court'),
('w_news_C1_05','multilateralism','/ˌmʌltiˈlætərəlɪzəm/','noun','다자주의','The practice of coordinating among three or more countries.','The treaty is a triumph of {multilateralism}.','조약은 다자주의의 승리예요.','multilateralism','C1','news',2,'multilateralism UN summit'),
('w_news_C1_06','precedent','/ˈpresɪdənt/','noun','전례, 선례','An earlier event used as a model for future decisions.','The verdict set a dangerous {precedent} in international law.','판결은 국제법에서 위험한 전례를 세웠어요.','precedent','C1','news',1,'precedent court law ruling'),
('w_news_C1_07','jurisdiction','/ˌdʒʊərɪsˈdɪkʃən/','noun','관할권','The authority to make legal decisions in a territory.','The case falls within the court''s {jurisdiction}.','이 사건은 법원의 관할권 내에 있어요.','jurisdiction','C1','news',1,'jurisdiction court law territory'),
('w_news_C1_08','ratification','/ˌrætɪfɪˈkeɪʃən/','noun','비준','Formal confirmation of an agreement by signing it.','The treaty awaits {ratification} by the senate.','조약은 상원의 비준을 기다리고 있어요.','ratification','C1','news',1,'ratification treaty senate'),
('w_news_C1_09','embargo','/ɪmˈbɑːrɡoʊ/','noun','교역 금지령','An official ban on commerce with a particular country.','The UN lifted the arms {embargo} after the peace deal.','평화 협정 이후 유엔이 무기 교역 금지령을 해제했어요.','embargo','C1','news',2,'embargo UN sanctions trade'),
('w_news_C1_10','deterrence','/dɪˈterəns/','noun','억지력','The action of discouraging an action through the threat of consequences.','Nuclear {deterrence} remains central to NATO strategy.','핵 억지력은 NATO 전략의 핵심으로 남아 있어요.','deterrence','C1','news',2,'deterrence nuclear military'),
('w_news_C1_11','disenfranchise','/ˌdɪsɪnˈfræntʃaɪz/','verb','참정권을 박탈하다','To deprive of the right to vote or participate.','Critics claim the new law will {disenfranchise} minorities.','비평가들은 새 법이 소수자의 참정권을 박탈할 것이라고 주장해요.','disenfranchise','C1','news',2,'disenfranchise vote rights'),
('w_news_C1_12','populism','/ˈpɒpjʊlɪzəm/','noun','포퓰리즘','A political approach that claims to represent ordinary people.','The rise of {populism} has challenged mainstream parties.','포퓰리즘의 부상이 주류 정당에 도전하고 있어요.','populism','C1','news',1,'populism politics rally'),
('w_news_C1_13','autocracy','/ɔːˈtɒkrəsi/','noun','독재 정치','Government by a single person with absolute power.','The country has drifted toward {autocracy}.','그 나라는 독재 정치 쪽으로 흘러가고 있어요.','autocracy','C1','news',2,'autocracy government power'),
('w_news_C1_14','incumbent','/ɪnˈkʌmbənt/','adjective','현직의','Currently holding an official position.','The {incumbent} party faces an uphill battle in the polls.','현직 당이 여론 조사에서 어려운 싸움을 앞두고 있어요.','incumbent','C1','news',1,'incumbent election party'),
('w_news_C1_15','complicity','/kəmˈplɪsɪti/','noun','공모, 공범','Being involved in a crime or wrongdoing.','The report alleged government {complicity} in the cover-up.','보고서는 은폐에 정부의 공모가 있다고 주장했어요.','complicity','C1','news',2,'complicity crime investigation'),
('w_news_C1_16','impunity','/ɪmˈpjuːnɪti/','noun','처벌 면제, 면책','Exemption from punishment or freedom from consequences.','Officials acted with {impunity} during the crisis.','당국자들은 위기 중 처벌 면제 속에 행동했어요.','impunity','C1','news',2,'impunity justice accountability'),
('w_news_C1_17','divestiture','/daɪˈvestɪtʃər/','noun','자산 매각','The disposal of a subsidiary business or investment.','The court ordered the {divestiture} of the media empire.','법원이 그 미디어 제국의 자산 매각을 명령했어요.','divestiture','C1','news',3,'divestiture corporate business'),
('w_news_C1_18','tribunal','/traɪˈbjuːnəl/','noun','재판소, 법정','A court or other body established to settle disputes.','The war crimes {tribunal} began proceedings.','전쟁 범죄 재판소가 절차를 시작했어요.','tribunal','C1','news',1,'tribunal court justice'),
('w_news_C1_19','proliferation','/prəˌlɪfəˈreɪʃən/','noun','확산, 급증','Rapid increase in numbers.','Nuclear {proliferation} remains a top security concern.','핵 확산은 여전히 최우선 안보 과제예요.','proliferation','C1','news',1,'proliferation nuclear weapons'),
('w_news_C1_20','demagogue','/ˈdeməɡɒɡ/','noun','선동가','A political leader who seeks support through prejudice and emotion.','The newspaper labeled him a {demagogue}.','신문이 그를 선동가로 규정했어요.','demagogue','C1','news',2,'demagogue politics speech'),
('w_news_C1_21','censorship','/ˈsensəʃɪp/','noun','검열','The suppression of speech or information.','Journalists condemned the government''s {censorship}.','언론인들이 정부의 검열을 비난했어요.','censorship','C1','news',1,'censorship media press'),
('w_news_C1_22','arbitration','/ˌɑːrbɪˈtreɪʃən/','noun','중재 재판','The use of an independent person to settle a dispute.','The dispute was sent to international {arbitration}.','분쟁이 국제 중재 재판에 회부되었어요.','arbitration','C1','news',2,'arbitration court law'),
('w_news_C1_23','exacerbate','/ɪɡˈzæsərbeɪt/','verb','악화시키다','To make a problem or situation worse.','The drought has {exacerbated} the food crisis.','가뭄이 식량 위기를 악화시켰어요.','exacerbated','C1','news',1,'exacerbate drought crisis'),
('w_news_C1_24','gestation','/dʒeˈsteɪʃən/','noun','숙성 기간, 형성 과정','The period during which something develops before emergence.','The peace deal was years in {gestation}.','평화 협정은 수년간의 숙성 기간이 있었어요.','gestation','C1','news',3,'gestation development planning'),
('w_news_C1_25','litmus test','/ˈlɪtməs test/','noun','시금석, 결정적 기준','A critical test that reveals the true nature of something.','The vote was seen as a {litmus test} for democracy.','투표는 민주주의의 시금석으로 여겨졌어요.','litmus test','C1','news',2,'litmus test politics indicator'),
('w_news_C1_26','subversion','/səbˈvɜːrʒən/','noun','체제 전복','The act of undermining the power of an established system.','He was charged with {subversion} of the state.','그는 국가 체제 전복 혐의로 기소되었어요.','subversion','C1','news',2,'subversion security espionage'),
('w_news_C1_27','legitimacy','/lɪˈdʒɪtɪməsi/','noun','합법성, 정당성','Conformity to the law or to rules; being justified.','The election results were contested, undermining the government''s {legitimacy}.','선거 결과가 다투어져 정부의 합법성이 훼손되었어요.','legitimacy','C1','news',1,'legitimacy election government'),
('w_news_C1_28','manifesto','/ˌmænɪˈfestoʊ/','noun','선언문, 공약집','A public declaration of intentions and policies.','The party released its election {manifesto} last week.','당이 지난주 선거 공약집을 발표했어요.','manifesto','C1','news',2,'manifesto election campaign'),
('w_news_C1_29','overture','/ˈoʊvərtʃər/','noun','제안, 접근','An opening move toward agreement or reconciliation.','The new leader made diplomatic {overtures} to rivals.','새 지도자가 경쟁 국가에 외교적 제안을 했어요.','overtures','C1','news',2,'overture diplomacy talks'),
('w_news_C1_30','polarization','/ˌpoʊlərɪˈzeɪʃən/','noun','양극화','The division into two contrasting groups.','Political {polarization} is deepening across society.','정치적 양극화가 사회 전반에 깊어지고 있어요.','polarization','C1','news',1,'polarization politics society'),
('w_news_C1_31','redress','/rɪˈdres/','noun','시정, 구제','Remedy or compensation for a wrong or grievance.','Victims are seeking legal {redress}.','피해자들이 법적 구제를 구하고 있어요.','redress','C1','news',2,'redress justice law'),
('w_news_C1_32','subterfuge','/ˈsʌbtərfjuːdʒ/','noun','기만, 속임수','Deceit used in order to achieve a goal.','The whistleblower exposed the government''s {subterfuge}.','내부 고발자가 정부의 기만을 폭로했어요.','subterfuge','C1','news',3,'subterfuge deception scandal'),
('w_news_C1_33','deadlock','/ˈdedlɒk/','noun','교착 상태','A situation in which no progress is possible.','Talks ended in a {deadlock} after ten hours.','10시간의 협상이 교착 상태로 끝났어요.','deadlock','C1','news',1,'deadlock negotiation talks'),
('w_news_C1_34','gerrymander','/ˈdʒeriˌmændər/','verb','선거구를 불공정하게 획정하다','To manipulate the boundaries of a constituency.','The ruling party was accused of {gerrymandering} districts.','집권당이 선거구 불공정 획정으로 비난을 받았어요.','gerrymandering','C1','news',2,'gerrymander election district'),
('w_news_C1_35','denuclearization','/diːˌnjuːklɪərɪˈzeɪʃən/','noun','비핵화','The process of removing nuclear weapons from a state.','Progress on {denuclearization} has stalled.','비핵화 진전이 교착 상태에 빠졌어요.','denuclearization','C1','news',1,'denuclearization nuclear diplomacy');

-- ══════════════════════════════════════════════════════════════
-- C2 WORDS (35개)
-- ══════════════════════════════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_C2_01','epistemic','/ˌepɪˈstiːmɪk/','adjective','인식론적인','Relating to knowledge or the degree of its validation.','The crisis reflects an {epistemic} failure in intelligence.','위기는 정보에서의 인식론적 실패를 반영해요.','epistemic','C2','news',2,'epistemic knowledge philosophy'),
('w_news_C2_02','Westphalian','/westˈfeɪliən/','adjective','베스트팔렌식의','Relating to the state-based international order since 1648.','The {Westphalian} system of sovereignty is under strain.','베스트팔렌식 주권 체계가 압박을 받고 있어요.','Westphalian','C2','news',2,'Westphalian sovereignty system'),
('w_news_C2_03','securitization','/sɪˌkjʊərɪtaɪˈzeɪʃən/','noun','안보화','The process of framing an issue as a security threat.','The {securitization} of migration has fueled far-right politics.','이주의 안보화가 극우 정치를 부채질했어요.','securitization','C2','news',2,'securitization security politics'),
('w_news_C2_04','normative','/ˈnɔːrmətɪv/','adjective','규범적인','Relating to an evaluative standard or norm.','The {normative} framework for human rights is contested.','인권에 대한 규범적 틀이 논쟁 중이에요.','normative','C2','news',2,'normative law human rights'),
('w_news_C2_05','constructivist','/kənˈstrʌktɪvɪst/','adjective','구성주의적인','Based on the view that social reality is constructed through interaction.','A {constructivist} lens reveals how narratives shape policy.','구성주의적 관점은 서사가 어떻게 정책을 형성하는지 보여줘요.','constructivist','C2','news',3,'constructivist theory politics'),
('w_news_C2_06','ontological security','/ˌɒntəˈlɒdʒɪkəl sɪˈkjʊərɪti/','noun','존재론적 안보','A sense of order and continuity in a nation''s self-identity.','Leaders appeal to {ontological security} to justify war.','지도자들은 전쟁을 정당화하기 위해 존재론적 안보에 호소해요.','ontological security','C2','news',3,'ontological security identity state'),
('w_news_C2_07','postcolonial','/ˌpoʊstkəˈloʊniəl/','adjective','탈식민지적인','Relating to the period or theory after colonialism.','The dispute must be understood through a {postcolonial} lens.','분쟁은 탈식민지적 관점에서 이해되어야 해요.','postcolonial','C2','news',2,'postcolonial history identity'),
('w_news_C2_08','subaltern','/ˈsʌbəltərn/','noun','하위 주체','A person or group of lower social standing, especially in postcolonial studies.','The voices of {subaltern} groups were absent from the talks.','하위 주체 집단의 목소리가 협상에서 없었어요.','subaltern','C2','news',3,'subaltern voice marginalized'),
('w_news_C2_09','neocolonialism','/ˌniːoʊkəˈloʊniəlɪzəm/','noun','신식민주의','The use of economic and political pressure to control other countries.','Critics accuse the aid program of {neocolonialism}.','비평가들은 원조 프로그램이 신식민주의라고 비난해요.','neocolonialism','C2','news',2,'neocolonialism aid development'),
('w_news_C2_10','intergovernmentalism','/ˌɪntəˌɡʌvənˈmentəlɪzəm/','noun','정부간주의','A model of international cooperation among sovereign states.','EU reform requires balancing supranationalism and {intergovernmentalism}.','EU 개혁은 초국가주의와 정부간주의의 균형을 요구해요.','intergovernmentalism','C2','news',3,'intergovernmentalism EU governance'),
('w_news_C2_11','polycentric','/ˌpɒliˈsentrɪk/','adjective','다중 심화의','Having many centers of authority or power.','The emerging world order is increasingly {polycentric}.','부상하는 세계 질서는 점점 더 다중 심화되고 있어요.','polycentric','C2','news',2,'polycentric world order power'),
('w_news_C2_12','technocracy','/tekˈnɒkrəsi/','noun','기술 관료 정치','Government or control by technical experts.','The new administration was accused of governing by {technocracy}.','새 행정부가 기술 관료 정치로 통치한다는 비난을 받았어요.','technocracy','C2','news',2,'technocracy government experts'),
('w_news_C2_13','liminal','/ˈlɪmɪnəl/','adjective','경계적인, 과도기의','Occupying a transitional or uncertain space or state.','The country finds itself in a {liminal} political moment.','그 나라는 스스로를 경계적 정치적 순간 속에서 발견하고 있어요.','liminal','C2','news',3,'liminal transition politics'),
('w_news_C2_14','reify','/ˈriːɪfaɪ/','verb','구체화하다, 실체화하다','To make something abstract more concrete or real.','Media coverage tends to {reify} national stereotypes.','미디어 보도는 국가적 고정관념을 실체화하는 경향이 있어요.','reify','C2','news',3,'reify media narrative'),
('w_news_C2_15','legitimation','/lɪˌdʒɪtɪˈmeɪʃən/','noun','정당화','The process of making something recognized as lawful or proper.','The regime seeks international {legitimation}.','정권은 국제적 정당화를 추구하고 있어요.','legitimation','C2','news',2,'legitimation diplomacy politics'),
('w_news_C2_16','diaspora','/daɪˈæspərə/','noun','디아스포라, 해외 공동체','A scattered population with a common origin in a smaller geographic area.','The Korean {diaspora} voiced support for the protests.','한국 디아스포라가 시위에 대한 지지를 표명했어요.','diaspora','C2','news',2,'diaspora community migration'),
('w_news_C2_17','heterodox','/ˈhetərədɒks/','adjective','이단적인, 비정통의','Not conforming with accepted standards or beliefs.','His {heterodox} economic views alarmed financial markets.','그의 비정통 경제적 견해가 금융 시장을 불안하게 했어요.','heterodox','C2','news',3,'heterodox economics policy'),
('w_news_C2_18','entrenchment','/ɪnˈtrentʃmənt/','noun','고착화, 진지 구축','The action of establishing something firmly so it cannot easily be changed.','The {entrenchment} of authoritarian practices worries observers.','권위주의적 관행의 고착화가 관측자들을 걱정하게 해요.','entrenchment','C2','news',2,'entrenchment authoritarian politics'),
('w_news_C2_19','hegemonic','/ˌheɡɪˈmɒnɪk/','adjective','패권적인','Relating to the leadership or dominance of one country.','The {hegemonic} order is being challenged by rising powers.','패권적 질서가 부상하는 강대국들의 도전을 받고 있어요.','hegemonic','C2','news',2,'hegemonic power global'),
('w_news_C2_20','transient','/ˈtrænziənt/','adjective','일시적인, 과도적인','Lasting only for a short time.','The ceasefire was viewed as {transient} at best.','휴전은 기껏해야 일시적인 것으로 여겨졌어요.','transient','C2','news',2,'transient ceasefire peace'),
('w_news_C2_21','epistemology','/ɪˌpɪstɪˈmɒlədʒi/','noun','인식론','The branch of philosophy concerned with the theory of knowledge.','Analysts dispute the {epistemology} of intelligence gathering.','분석가들은 정보 수집의 인식론에 대해 논쟁해요.','epistemology','C2','news',3,'epistemology knowledge theory'),
('w_news_C2_22','extrapolate','/ɪkˈstræpəleɪt/','verb','외삽하다, 추론 확장하다','To extend a conclusion or trend into an unknown area.','It is dangerous to {extrapolate} from one incident.','하나의 사건으로부터 추론 확장하는 것은 위험해요.','extrapolate','C2','news',2,'extrapolate analysis data'),
('w_news_C2_23','casus belli','/ˌkeɪsəs ˈbeli/','noun','전쟁 구실','An act used to justify declaring war.','The border incident became a {casus belli}.','국경 사건이 전쟁 구실이 되었어요.','casus belli','C2','news',2,'casus belli war conflict'),
('w_news_C2_24','asymmetric','/ˌeɪsɪˈmetrɪk/','adjective','비대칭적인','Lacking symmetry; often referring to unequal power in conflict.','The conflict is essentially {asymmetric} warfare.','갈등은 본질적으로 비대칭적 전쟁이에요.','asymmetric','C2','news',2,'asymmetric warfare conflict'),
('w_news_C2_25','meta-narrative','/ˈmetə ˈnærətɪv/','noun','메타 서사','An overarching story that explains a culture or history.','The report challenges the {meta-narrative} of Western superiority.','보고서는 서방 우월주의의 메타 서사에 도전해요.','meta-narrative','C2','news',3,'meta-narrative media story'),
('w_news_C2_26','interdependence','/ˌɪntədɪˈpendəns/','noun','상호 의존','The situation of being dependent on each other.','Economic {interdependence} makes conflict costly.','경제적 상호 의존이 갈등을 비용이 많이 들게 해요.','interdependence','C2','news',1,'interdependence trade global'),
('w_news_C2_27','retrenchment','/rɪˈtrentʃmənt/','noun','긴축, 후퇴','The reduction of costs or withdrawal from a position.','Global {retrenchment} from multilateral commitments is accelerating.','다자간 약속에서의 전 세계적 후퇴가 가속화되고 있어요.','retrenchment','C2','news',2,'retrenchment policy economy'),
('w_news_C2_28','weltanschauung','/ˈveltɑːnˌʃaʊʊŋ/','noun','세계관','A comprehensive worldview; a philosophy of life.','The party''s {weltanschauung} rejects liberal democracy.','당의 세계관은 자유 민주주의를 거부해요.','weltanschauung','C2','news',3,'weltanschauung worldview ideology'),
('w_news_C2_29','palimpsest','/ˈpælɪmpsest/','noun','복합적 역사의 흔적','Something altered but still showing traces of an earlier form.','The city is a {palimpsest} of colonial and post-colonial history.','도시는 식민지와 탈식민지 역사의 복합적 흔적이에요.','palimpsest','C2','news',3,'palimpsest history city'),
('w_news_C2_30','counterfactual','/ˌkaʊntərˈfæktʃuəl/','adjective','반사실적인','Relating to what might have been, contrary to fact.','Analysts engage in {counterfactual} reasoning about the war.','분석가들은 전쟁에 대한 반사실적 추론을 해요.','counterfactual','C2','news',2,'counterfactual analysis history'),
('w_news_C2_31','hegemon','/ˈheɡɪmɒn/','noun','패권국','A nation with dominant influence over others.','The study examines how the US functions as a {hegemon}.','연구는 미국이 어떻게 패권국으로 기능하는지 검토해요.','hegemon','C2','news',2,'hegemon power country'),
('w_news_C2_32','autarky','/ˈɔːtɑːrki/','noun','자급자족 경제','Economic independence; self-sufficiency.','The regime promoted {autarky} to resist sanctions.','정권은 제재에 저항하기 위해 자급자족 경제를 추진했어요.','autarky','C2','news',2,'autarky economy isolation'),
('w_news_C2_33','irredentism','/ɪˈredəntɪzəm/','noun','수복 주의','A policy of advocating the restoration of territories.','The speech was seen as a statement of {irredentism}.','그 연설은 수복 주의의 표명으로 여겨졌어요.','irredentism','C2','news',2,'irredentism territory border'),
('w_news_C2_34','exceptionalism','/ɪkˈsepʃənəlɪzəm/','noun','예외주의','The belief that one country is special or exempt from normal rules.','Critics challenge the notion of American {exceptionalism}.','비평가들은 미국 예외주의의 개념에 도전해요.','exceptionalism','C2','news',2,'exceptionalism nationalism politics'),
('w_news_C2_35','zeitgeist','/ˈzaɪtɡaɪst/','noun','시대정신','The defining spirit or mood of a particular period.','The election result captured the {zeitgeist} of public anger.','선거 결과는 공공의 분노라는 시대정신을 포착했어요.','zeitgeist','C2','news',2,'zeitgeist culture politics');

-- ══════════════════════════════════════════════════════════════
-- A1 PATTERNS (7개) — 뉴스 공유
-- ══════════════════════════════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_A1_01','Did you hear about...?','...에 대해 들었어요?','Did you hear','뉴스나 새로운 소식을 친구와 나눌 때 쓰는 가장 자연스러운 표현이에요.','뉴스 공유','A1','news','pattern',NULL,1),
('s_news_A1_02','I saw it on the news.','뉴스에서 봤어요.','on the news','"on TV" 대신 "on the news"를 쓰면 더 구체적이고 자연스러워요.','뉴스 언급','A1','news','pattern',NULL,2),
('s_news_A1_03','What happened?','무슨 일이 있었어요?','What happened','간단하고 직접적으로 사건 내용을 물을 때 써요.','사건 파악','A1','news','pattern',NULL,3),
('s_news_A1_04','It''s big news!','정말 큰 뉴스예요!','big news','"big news"는 중요하거나 놀라운 소식을 강조할 때 쓰는 표현이에요.','반응 표현','A1','news','pattern',NULL,4),
('s_news_A1_05','I heard that... is true.','...가 사실이래요.','I heard that','소문이나 들은 이야기를 전달할 때 "I heard that"으로 시작해요.','소식 전달','A1','news','pattern',NULL,5),
('s_news_A1_06','Did you watch the news last night?','어젯밤 뉴스 봤어요?','watch the news','"watch the news"는 TV 뉴스를 보는 일상적인 행동을 말해요.','뉴스 시청','A1','news','pattern',NULL,6),
('s_news_A1_07','That''s really sad news.','정말 슬픈 소식이에요.','sad news','"sad news", "good news", "big news"처럼 news 앞에 형용사를 붙여 감정을 표현해요.','뉴스 반응','A1','news','pattern',NULL,7);

-- ══════════════════════════════════════════════════════════════
-- A2 PATTERNS (7개) — 사건 설명
-- ══════════════════════════════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_A2_01','According to the news,...','뉴스에 따르면,...','According to the news','출처를 밝히며 정보를 전달할 때 "According to..." 패턴을 써요.','사건 설명','A2','news','pattern',NULL,1),
('s_news_A2_02','The government announced that...','정부가 ...라고 발표했어요.','announced that','과거에 공식 발표된 내용을 전달할 때 "announced that" 패턴을 써요.','공식 발표','A2','news','pattern',NULL,2),
('s_news_A2_03','A lot of people are protesting against...','많은 사람들이 ...에 항의하고 있어요.','protesting against','현재 진행 중인 사회적 움직임을 설명할 때 쓰는 표현이에요.','시위 설명','A2','news','pattern',NULL,3),
('s_news_A2_04','It happened in...','그것은 ...에서 일어났어요.','It happened in','사건의 장소나 시간을 설명할 때 쓰는 기본 패턴이에요.','사건 위치','A2','news','pattern',NULL,4),
('s_news_A2_05','The president said that...','대통령이 ...라고 말했어요.','The president said that','간접 화법으로 공인의 발언을 전달하는 핵심 뉴스 표현이에요.','발언 인용','A2','news','pattern',NULL,5),
('s_news_A2_06','The situation is getting worse.','상황이 점점 더 나빠지고 있어요.','getting worse','상황의 변화를 묘사할 때 "is getting + 비교급"을 써요.','상황 묘사','A2','news','pattern',NULL,6),
('s_news_A2_07','It was caused by...','그것은 ...에 의해 발생했어요.','was caused by','원인을 설명하는 수동태 패턴 — 뉴스 보도에서 매우 자주 쓰여요.','원인 설명','A2','news','pattern',NULL,7);

-- ══════════════════════════════════════════════════════════════
-- B1 PATTERNS (7개) — 정치·경제 논의
-- ══════════════════════════════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_B1_01','The government is under pressure to...','정부가 ...에 대한 압박을 받고 있어요.','under pressure to','"be under pressure to"는 외부의 요구나 기대에 시달리는 상황을 설명해요.','정치 논의','B1','news','pattern',NULL,1),
('s_news_B1_02','The new policy has sparked controversy.','새 정책이 논란을 일으켰어요.','sparked controversy','"spark controversy"는 논란이나 격론의 시작을 표현하는 뉴스 전형 표현이에요.','정책 논의','B1','news','pattern',NULL,2),
('s_news_B1_03','The economy is showing signs of recovery.','경제가 회복 조짐을 보이고 있어요.','showing signs of','"show signs of + 명사"는 현재 상황의 변화나 추세를 묘사할 때 써요.','경제 논의','B1','news','pattern',NULL,3),
('s_news_B1_04','The opposition has called for an inquiry into...','야당이 ...에 대한 조사를 요구했어요.','called for an inquiry','"call for an inquiry"는 공식 조사 또는 청문회를 요구할 때 쓰는 뉴스 표현이에요.','의회 논의','B1','news','pattern',NULL,4),
('s_news_B1_05','The bill failed to pass in parliament.','법안이 의회를 통과하지 못했어요.','failed to pass','"fail to + 동사"는 의도했으나 이루지 못한 결과를 표현해요.','의회 논의','B1','news','pattern',NULL,5),
('s_news_B1_06','Negotiations between the two sides have broken down.','양측 협상이 결렬되었어요.','have broken down','"break down"은 협상, 회담 등이 실패로 끝날 때 쓰는 뉴스 필수 표현이에요.','협상 논의','B1','news','pattern',NULL,6),
('s_news_B1_07','Unemployment has risen to its highest level in a decade.','실업률이 10년 만에 최고 수준으로 올랐어요.','risen to its highest level','"rise to its highest level in + 기간"은 기록적 수치를 보도할 때 자주 쓰여요.','경제 지표','B1','news','pattern',NULL,7);

-- ══════════════════════════════════════════════════════════════
-- B2 PATTERNS (7개) — 국제 정세
-- ══════════════════════════════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_B2_01','Tensions between... and... have been escalating.','...와 ... 사이의 긴장이 고조되고 있어요.','have been escalating','현재완료 진행형으로 지속되는 긴장 고조를 표현하는 국제 뉴스 패턴이에요.','국제 긴장','B2','news','pattern',NULL,1),
('s_news_B2_02','The UN has called for an immediate ceasefire.','유엔이 즉각적인 휴전을 촉구했어요.','called for an immediate ceasefire','국제기구의 공식 요구를 표현하는 외교 뉴스의 핵심 패턴이에요.','국제 외교','B2','news','pattern',NULL,2),
('s_news_B2_03','The sanctions are expected to have a significant impact on...','제재가 ...에 상당한 영향을 미칠 것으로 예상돼요.','expected to have a significant impact','수동 구조 "be expected to"는 미래 전망을 조심스럽게 표현할 때 써요.','경제 제재','B2','news','pattern',NULL,3),
('s_news_B2_04','The two countries have agreed to resume diplomatic talks.','두 나라가 외교 회담을 재개하기로 합의했어요.','agreed to resume diplomatic talks','외교 관계가 복구되거나 재개될 때 쓰는 패턴이에요.','외교 관계','B2','news','pattern',NULL,4),
('s_news_B2_05','A referendum on independence is scheduled for...','...에 독립에 관한 국민투표가 예정되어 있어요.','referendum on independence is scheduled','공식적으로 예정된 미래 정치 이벤트를 발표할 때 쓰는 뉴스 패턴이에요.','국민투표','B2','news','pattern',NULL,5),
('s_news_B2_06','The incumbent leader faces mounting opposition.','현직 지도자가 커지는 반대에 직면해 있어요.','faces mounting opposition','"face mounting + 명사"는 점점 커지는 도전이나 반대를 묘사해요.','선거 정치','B2','news','pattern',NULL,6),
('s_news_B2_07','Both sides are said to be considering military options.','양측이 군사적 옵션을 고려 중인 것으로 알려져 있어요.','are said to be considering','"be said to be"는 확인되지 않은 정보를 조심스럽게 전달하는 뉴스 표현이에요.','군사 외교','B2','news','pattern',NULL,7);

-- ══════════════════════════════════════════════════════════════
-- C1 PATTERNS (7개) — 외교·정책 분석
-- ══════════════════════════════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_C1_01','The administration''s foreign policy has come under renewed scrutiny.','행정부의 외교 정책이 새로운 비판의 시선을 받고 있어요.','come under renewed scrutiny','"come under scrutiny"는 공적 조사나 비판을 받게 되는 것을 표현하는 고급 뉴스 표현이에요.','외교 분석','C1','news','pattern',NULL,1),
('s_news_C1_02','The precedent set by this ruling could have far-reaching consequences.','이 판결이 세운 전례는 광범위한 결과를 낳을 수 있어요.','far-reaching consequences','"far-reaching consequences"는 영향이 넓고 깊게 미칠 것을 표현할 때 써요.','법적 분석','C1','news','pattern',NULL,2),
('s_news_C1_03','Analysts warn that the situation could deteriorate further.','분석가들은 상황이 더 악화될 수 있다고 경고해요.','could deteriorate further','"deteriorate further"는 이미 나쁜 상황이 더 심화되는 것을 묘사해요.','위기 분석','C1','news','pattern',NULL,3),
('s_news_C1_04','The legitimacy of the government has been called into question.','정부의 합법성이 의문시되고 있어요.','called into question','"call into question"은 어떤 것의 진실성이나 정당성에 의구심을 제기할 때 쓰는 표현이에요.','정치 분석','C1','news','pattern',NULL,4),
('s_news_C1_05','There are growing calls for greater accountability in public office.','공직에서의 더 큰 책임성에 대한 요구가 커지고 있어요.','growing calls for','"growing calls for"는 점점 강해지는 사회적 요구를 보도할 때 쓰는 뉴스 표현이에요.','정책 분석','C1','news','pattern',NULL,5),
('s_news_C1_06','The policy has been widely criticized for failing to address structural inequality.','해당 정책이 구조적 불평등을 해결하지 못한다는 점에서 광범위하게 비판받고 있어요.','widely criticized for failing to','복합 비판 표현으로 정책의 구체적 실패를 짚어낼 때 유용한 고급 패턴이에요.','정책 비판','C1','news','pattern',NULL,6),
('s_news_C1_07','The decision is likely to exacerbate existing tensions in the region.','그 결정은 이 지역의 기존 긴장을 악화시킬 가능성이 있어요.','likely to exacerbate existing tensions','"likely to exacerbate"는 결정의 부정적 파급 효과를 예측할 때 쓰는 분석 표현이에요.','분쟁 분석','C1','news','pattern',NULL,7);

-- ══════════════════════════════════════════════════════════════
-- C2 PATTERNS (7개) — 외교·정책 분석 (고급)
-- ══════════════════════════════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_C2_01','The discourse surrounding this issue reflects a deeper epistemic divide.','이 문제를 둘러싼 담론은 더 깊은 인식론적 분열을 반영해요.','epistemic divide','"epistemic divide"는 두 집단이 근본적으로 다른 지식 체계나 가치를 가질 때를 표현해요.','학술 분석','C2','news','pattern',NULL,1),
('s_news_C2_02','The Westphalian norm of non-interference is increasingly contested.','불간섭이라는 베스트팔렌 규범이 점점 더 도전받고 있어요.','Westphalian norm of non-interference','"Westphalian norm"은 국제 관계의 주권 원칙을 언급할 때 쓰는 학술 표현이에요.','국제법 분석','C2','news','pattern',NULL,2),
('s_news_C2_03','Critics argue that the securitization of migration has distorted public debate.','비평가들은 이주의 안보화가 공론을 왜곡했다고 주장해요.','securitization of migration','"securitization"은 사회 현상을 안보 위협으로 재구성하는 정치 과정을 뜻해요.','비판적 분석','C2','news','pattern',NULL,3),
('s_news_C2_04','The normative framework underpinning international law is under strain.','국제법을 떠받치는 규범적 틀이 압박받고 있어요.','normative framework underpinning','"normative framework"는 규칙과 가치의 체계를 학술적으로 표현할 때 써요.','국제법 분석','C2','news','pattern',NULL,4),
('s_news_C2_05','A constructivist reading would emphasize the role of shared identity in the conflict.','구성주의적 독해는 갈등에서 공유된 정체성의 역할을 강조할 거예요.','constructivist reading','"constructivist reading"은 특정 이론적 관점에서 현상을 해석하는 학술 표현이에요.','이론 적용','C2','news','pattern',NULL,5),
('s_news_C2_06','Postcolonial scholarship challenges the meta-narratives that legitimize intervention.','탈식민지 학문은 개입을 정당화하는 메타 서사에 도전해요.','Postcolonial scholarship challenges the meta-narratives','"meta-narrative"는 특정 세계관을 구성하는 지배적 이야기 구조를 의미해요.','탈식민지 분석','C2','news','pattern',NULL,6),
('s_news_C2_07','The interplay between intergovernmentalism and supranationalism defines the EU''s structural tensions.','정부간주의와 초국가주의 간의 상호 작용이 EU의 구조적 긴장을 규정해요.','interplay between intergovernmentalism and supranationalism','"interplay"는 두 힘 사이의 복합적 상호 영향을 분석할 때 쓰는 고급 표현이에요.','EU 분석','C2','news','pattern',NULL,7);
