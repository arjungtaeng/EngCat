-- ══════ NEWS ══════
-- EngCat — 시사·뉴스 (news) 단어 + 패턴 데이터
-- 210 words (35 per CEFR A1~C2) + 42 patterns (7 per CEFR A1~C2)
-- Schema: words v2 (cefr, priority, image_keyword) + sentences v2 (type, cefr)

-- ══════════════════════════════════════
-- WORDS — A1
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_A1_01','news','/njuːz/','noun','뉴스','New information about recent events or happenings.','Did you watch the {news} last night?','어젯밤 뉴스 봤어요?','news','A1','news',1,'news television broadcast anchor'),
('w_news_A1_02','report','/rɪˈpɔːrt/','noun','보도, 보고서','A spoken or written account of an event or situation.','The {report} says the storm will arrive tomorrow.','보도에 따르면 내일 폭풍이 온대요.','report','A1','news',1,'newspaper reporter microphone'),
('w_news_A1_03','country','/ˈkʌntri/','noun','나라, 국가','A nation with its own government and territory.','Which {country} is hosting the next World Cup?','다음 월드컵은 어느 나라에서 열려요?','country','A1','news',1,'world map flag nation'),
('w_news_A1_04','people','/ˈpiːpəl/','noun','사람들','A group of human beings in general.','Many {people} are watching the news online now.','이제 많은 사람들이 온라인으로 뉴스를 봐요.','people','A1','news',1,'crowd public gathering community'),
('w_news_A1_05','government','/ˈɡʌvərnmənt/','noun','정부','The group of people who officially lead a country.','The {government} announced a new health plan.','정부가 새로운 보건 계획을 발표했어요.','government','A1','news',1,'parliament building official policy'),
('w_news_A1_06','war','/wɔːr/','noun','전쟁','Armed conflict between nations or groups.','The {war} ended after many years of fighting.','긴 전투 끝에 전쟁이 끝났어요.','war','A1','news',1,'soldier military conflict battlefield'),
('w_news_A1_07','election','/ɪˈlekʃən/','noun','선거','A formal process in which people vote to choose a leader.','The {election} will be held next month.','선거는 다음 달에 열려요.','election','A1','news',1,'ballot voting booth democracy'),
('w_news_A1_08','money','/ˈmʌni/','noun','돈, 자금','A medium of exchange used to buy goods or services.','The government is spending a lot of {money} on hospitals.','정부가 병원에 많은 돈을 쓰고 있어요.','money','A1','news',1,'coins currency economy finance'),
('w_news_A1_09','event','/ɪˈvent/','noun','사건, 행사','A thing that happens, especially one of importance.','This {event} changed the history of the country.','이 사건은 나라의 역사를 바꿨어요.','event','A1','news',1,'newspaper headline breaking news'),
('w_news_A1_10','world','/wɜːrld/','noun','세계','The earth and all the people and things on it.','The {world} is watching what happens next.','세계가 다음에 무슨 일이 일어날지 지켜보고 있어요.','world','A1','news',1,'globe earth international satellite'),
('w_news_A1_11','story','/ˈstɔːri/','noun','기사, 이야기','A news article or broadcast report about an event.','This {story} is on the front page today.','이 기사가 오늘 1면에 실렸어요.','story','A1','news',2,'newspaper front page article'),
('w_news_A1_12','today','/təˈdeɪ/','adverb','오늘','On this present day.','What happened in the news {today}?','오늘 뉴스에서 무슨 일이 있었어요?','today','A1','news',2,'calendar morning daily current'),
('w_news_A1_13','live','/lɪv/','adjective','생방송의','Broadcast at the time of happening, not pre-recorded.','We are watching the speech {live}.','연설을 생방송으로 보고 있어요.','live','A1','news',2,'broadcast television camera live stream'),
('w_news_A1_14','fire','/faɪər/','noun','화재','The rapid burning of something, especially a building.','A big {fire} destroyed the building last night.','어젯밤 큰 화재가 건물을 태웠어요.','fire','A1','news',2,'firefighter flames smoke emergency'),
('w_news_A1_15','police','/pəˈliːs/','noun','경찰','The civil force responsible for law and order.','The {police} arrived at the scene quickly.','경찰이 현장에 빠르게 도착했어요.','police','A1','news',2,'police car siren officer badge'),
('w_news_A1_16','flood','/flʌd/','noun','홍수','An overflow of water onto normally dry land.','The {flood} damaged hundreds of homes.','홍수가 수백 채의 집을 손상시켰어요.','flood','A1','news',2,'flood water disaster rescue'),
('w_news_A1_17','city','/ˈsɪti/','noun','도시','A large and important town.','The {city} held a public meeting about the news.','그 도시는 뉴스에 대한 공개 회의를 열었어요.','city','A1','news',2,'cityscape urban buildings downtown'),
('w_news_A1_18','year','/jɪər/','noun','해, 연도','A period of twelve months.','This has been a historic {year} for the country.','올해는 나라에 역사적인 해였어요.','year','A1','news',2,'calendar timeline annual'),
('w_news_A1_19','help','/help/','verb','돕다','To make it easier for someone to do something.','Volunteers came to {help} after the disaster.','재난 후 자원봉사자들이 도우러 왔어요.','help','A1','news',2,'volunteer aid relief charity'),
('w_news_A1_20','new','/njuː/','adjective','새로운','Not existing before; recently made or discovered.','A {new} law was passed in the parliament.','의회에서 새로운 법이 통과됐어요.','new','A1','news',2,'announcement fresh update policy'),
('w_news_A1_21','true','/truː/','adjective','사실인','In accordance with fact or reality.','Is this news story {true}?','이 뉴스 기사가 사실인가요?','true','A1','news',2,'fact verification truth check'),
('w_news_A1_22','press','/pres/','noun','언론','Newspapers and journalists considered as a group.','The {press} was not allowed at the meeting.','회의에 언론이 허용되지 않았어요.','press','A1','news',2,'journalist camera microphone media'),
('w_news_A1_23','leader','/ˈliːdər/','noun','지도자, 대표','A person who leads a group or country.','The world {leader} spoke at the United Nations.','세계 지도자가 유엔에서 연설했어요.','leader','A1','news',2,'president podium speech flag'),
('w_news_A1_24','army','/ˈɑːrmi/','noun','군대','The military forces of a country.','The {army} was sent to the border.','군대가 국경으로 파견됐어요.','army','A1','news',2,'military soldiers uniform base'),
('w_news_A1_25','attack','/əˈtæk/','noun','공격','A violent action against a person or place.','The {attack} happened in the capital city.','공격은 수도에서 일어났어요.','attack','A1','news',3,'security threat defense emergency'),
('w_news_A1_26','meeting','/ˈmiːtɪŋ/','noun','회의, 회담','A gathering of people for discussion.','The leaders held an emergency {meeting} today.','지도자들이 오늘 긴급 회의를 열었어요.','meeting','A1','news',2,'conference table leaders discussion'),
('w_news_A1_27','food','/fuːd/','noun','식량','Substances eaten to provide energy and nutrition.','Many people do not have enough {food} after the disaster.','재난 후 많은 사람들이 충분한 식량이 없어요.','food','A1','news',2,'aid food relief supply'),
('w_news_A1_28','school','/skuːl/','noun','학교','A place where children are educated.','The government will build more {schools} next year.','정부가 내년에 학교를 더 지을 거예요.','school','A1','news',2,'education children classroom building'),
('w_news_A1_29','hospital','/ˈhɒspɪtəl/','noun','병원','A place where sick or injured people receive medical care.','Three new {hospitals} will open this year.','올해 세 곳의 새 병원이 문을 열어요.','hospital','A1','news',2,'medical care healthcare building'),
('w_news_A1_30','power','/ˈpaʊər/','noun','권력, 전력','The ability to control people or events; also electricity.','The storm cut the {power} for thousands of homes.','폭풍이 수천 채의 집의 전력을 끊었어요.','power','A1','news',2,'electricity grid blackout energy'),
('w_news_A1_31','north','/nɔːrθ/','noun','북쪽, 북부','The direction toward the North Pole; the northern part of a region.','The storm is moving toward the {north}.','폭풍이 북쪽으로 이동하고 있어요.','north','A1','news',3,'compass map direction region'),
('w_news_A1_32','winner','/ˈwɪnər/','noun','승자, 당선자','A person or group that wins an election or competition.','The {winner} of the election was announced this morning.','선거 당선자가 오늘 아침 발표됐어요.','winner','A1','news',2,'election result vote celebrate'),
('w_news_A1_33','dead','/ded/','adjective','사망한','No longer living.','The official said ten people are {dead}.','관리는 열 명이 사망했다고 말했어요.','dead','A1','news',2,'memorial funeral tragedy loss'),
('w_news_A1_34','safe','/seɪf/','adjective','안전한','Protected from danger or risk.','Rescue teams confirmed all passengers are {safe}.','구조대는 모든 승객이 안전하다고 확인했어요.','safe','A1','news',2,'rescue safety relief team'),
('w_news_A1_35','map','/mæp/','noun','지도','A diagram representing the geographic features of an area.','The news showed a {map} of the affected regions.','뉴스에서 피해 지역의 지도를 보여줬어요.','map','A1','news',2,'geography region area borders')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — A2
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_A2_01','politics','/ˈpɒlɪtɪks/','noun','정치','Activities associated with governing a country or area.','She is very interested in {politics} and current affairs.','그녀는 정치와 시사에 매우 관심이 있어요.','politics','A2','news',1,'parliament politics debate vote'),
('w_news_A2_02','economy','/ɪˈkɒnəmi/','noun','경제','The system of trade and industry in a country.','The {economy} grew by three percent last year.','경제는 지난해 3% 성장했어요.','economy','A2','news',1,'chart growth finance money'),
('w_news_A2_03','protest','/ˈprəʊtest/','noun','시위','A public demonstration against a policy or action.','Thousands joined the {protest} in the capital.','수천 명이 수도에서 시위에 참가했어요.','protest','A2','news',1,'crowd sign banner street march'),
('w_news_A2_04','vote','/vəʊt/','verb','투표하다','To express a choice in an election or poll.','Citizens went to the polls to {vote} yesterday.','시민들이 어제 투표하러 투표소에 갔어요.','vote','A2','news',1,'ballot box election democracy'),
('w_news_A2_05','president','/ˈprezɪdənt/','noun','대통령','The elected head of a republic.','The {president} gave a speech about national security.','대통령이 국가 안보에 대한 연설을 했어요.','president','A2','news',1,'flag podium speech official'),
('w_news_A2_06','law','/lɔː/','noun','법률','A rule made by a government that must be obeyed.','A new {law} banning single-use plastics was passed.','일회용 플라스틱을 금지하는 새 법이 통과됐어요.','law','A2','news',1,'gavel justice legal court'),
('w_news_A2_07','crime','/kraɪm/','noun','범죄','An illegal act that can be punished by law.','The government promised to reduce {crime} in cities.','정부는 도시 범죄를 줄이겠다고 약속했어요.','crime','A2','news',1,'police handcuffs justice court'),
('w_news_A2_08','health','/helθ/','noun','건강, 보건','The state of physical and mental well-being.','The ministry of {health} released new guidelines.','보건부가 새 지침을 발표했어요.','health','A2','news',1,'hospital medical healthcare policy'),
('w_news_A2_09','disaster','/dɪˈzɑːstər/','noun','재난','A sudden event causing great damage or suffering.','International aid arrived after the natural {disaster}.','자연재난 이후 국제 원조가 도착했어요.','disaster','A2','news',1,'earthquake flood rescue emergency'),
('w_news_A2_10','international','/ˌɪntəˈnæʃənəl/','adjective','국제적인','Involving two or more countries.','The summit attracted {international} media coverage.','정상 회담은 국제 언론의 주목을 받았어요.','international','A2','news',1,'globe flag summit diplomacy'),
('w_news_A2_11','minister','/ˈmɪnɪstər/','noun','장관','A senior government official in charge of a department.','The finance {minister} announced a new budget plan.','재무 장관이 새로운 예산안을 발표했어요.','minister','A2','news',1,'government official suit briefing'),
('w_news_A2_12','agreement','/əˈɡriːmənt/','noun','합의, 협정','A negotiated arrangement between parties.','The two countries signed a trade {agreement}.','두 나라가 무역 협정에 서명했어요.','agreement','A2','news',1,'handshake signing document treaty'),
('w_news_A2_13','border','/ˈbɔːrdər/','noun','국경','A line dividing two countries or regions.','Thousands of refugees are waiting at the {border}.','수천 명의 난민이 국경에서 기다리고 있어요.','border','A2','news',2,'fence gate border checkpoint'),
('w_news_A2_14','refugee','/ˌrefjʊˈdʒiː/','noun','난민','A person who has fled their home country due to danger.','The UN is helping {refugees} find safe shelter.','유엔이 난민들이 안전한 피난처를 찾도록 돕고 있어요.','refugees','A2','news',2,'camp shelter aid UN'),
('w_news_A2_15','statement','/ˈsteɪtmənt/','noun','성명','A formal declaration made by an official or organization.','The president released a {statement} on the crisis.','대통령이 위기에 대한 성명을 발표했어요.','statement','A2','news',2,'press conference podium microphone'),
('w_news_A2_16','announce','/əˈnaʊns/','verb','발표하다','To make a public declaration about something.','The prime minister will {announce} new measures today.','총리가 오늘 새로운 조치를 발표할 거예요.','announce','A2','news',2,'microphone podium press briefing'),
('w_news_A2_17','tax','/tæks/','noun','세금','A compulsory payment to the government.','The new budget will raise income {tax}.','새 예산은 소득세를 올릴 거예요.','tax','A2','news',2,'money finance government revenue'),
('w_news_A2_18','trade','/treɪd/','noun','무역','The buying and selling of goods between countries.','The new deal will boost {trade} between the two nations.','새 협정이 두 나라 사이의 무역을 촉진할 거예요.','trade','A2','news',2,'cargo ship port exchange'),
('w_news_A2_19','climate','/ˈklaɪmɪt/','noun','기후','The weather conditions of a region over a long period.','World leaders discussed {climate} change at the summit.','세계 지도자들이 정상 회담에서 기후 변화를 논의했어요.','climate','A2','news',2,'environment earth green energy'),
('w_news_A2_20','victim','/ˈvɪktɪm/','noun','피해자, 희생자','A person who suffers as a result of an event.','Aid organizations are helping the {victims} of the flood.','구호 단체들이 홍수 피해자들을 돕고 있어요.','victims','A2','news',2,'rescue aid relief flood'),
('w_news_A2_21','judge','/dʒʌdʒ/','noun','판사','An official who decides cases in a court of law.','The {judge} sentenced the man to five years in prison.','판사가 그 남자에게 5년 징역형을 선고했어요.','judge','A2','news',2,'court gavel justice legal'),
('w_news_A2_22','survey','/ˈsɜːrveɪ/','noun','여론 조사','A study of people''s opinions on a particular topic.','A recent {survey} shows most people support the new law.','최근 여론 조사에 따르면 대부분의 사람들이 새 법을 지지해요.','survey','A2','news',2,'poll data chart statistics'),
('w_news_A2_23','official','/əˈfɪʃəl/','noun','관리, 공무원','A person holding a position of authority in an organization.','A government {official} confirmed the news.','정부 관리가 소식을 확인해 줬어요.','official','A2','news',2,'suit badge authority government'),
('w_news_A2_24','peace','/piːs/','noun','평화','A state of freedom from war or conflict.','Both sides agreed to work toward {peace}.','양측이 평화를 향해 노력하기로 합의했어요.','peace','A2','news',1,'dove hands flag diplomacy'),
('w_news_A2_25','poverty','/ˈpɒvərti/','noun','빈곤','The state of being extremely poor.','The new policy aims to reduce {poverty} in rural areas.','새 정책은 농촌 지역의 빈곤을 줄이는 것을 목표로 해요.','poverty','A2','news',2,'village aid development charity'),
('w_news_A2_26','media','/ˈmiːdiə/','noun','미디어, 언론','Television, radio, newspapers, and the internet as a group.','The {media} reported on the scandal all week.','미디어가 일주일 내내 스캔들을 보도했어요.','media','A2','news',2,'television newspaper internet broadcast'),
('w_news_A2_27','population','/ˌpɒpjʊˈleɪʃən/','noun','인구','All the people living in a particular country or area.','The {population} of the city grew by five percent.','그 도시 인구가 5% 증가했어요.','population','A2','news',2,'crowd city demographic growth'),
('w_news_A2_28','education','/ˌedʒʊˈkeɪʃən/','noun','교육','The process of teaching and learning in a society.','The government will invest more in {education} this year.','정부가 올해 교육에 더 많이 투자할 거예요.','education','A2','news',2,'school books children classroom'),
('w_news_A2_29','security','/sɪˈkjʊərɪti/','noun','보안, 안보','The state of being free from danger or threat.','The summit required tight {security} measures.','정상 회담에는 엄격한 보안 조치가 필요했어요.','security','A2','news',2,'guard gate camera safety'),
('w_news_A2_30','injury','/ˈɪndʒəri/','noun','부상','Physical harm or damage to a person''s body.','The report confirmed twelve {injuries} in the accident.','보도는 사고에서 12명의 부상을 확인했어요.','injuries','A2','news',2,'ambulance hospital medical emergency'),
('w_news_A2_31','crisis','/ˈkraɪsɪs/','noun','위기','A time of intense difficulty or danger.','The government is responding to the economic {crisis}.','정부가 경제 위기에 대응하고 있어요.','crisis','A2','news',1,'alarm emergency red alert warning'),
('w_news_A2_32','army','/ˈɑːrmi/','noun','군대','The land-based armed forces of a country.','The {army} was deployed to control the situation.','군대가 상황을 통제하기 위해 배치됐어요.','army','A2','news',2,'military soldiers uniform patrol'),
('w_news_A2_33','protest','/prəˈtest/','verb','항의하다','To express strong objection to something publicly.','Students {protested} outside the parliament building.','학생들이 의회 건물 밖에서 항의했어요.','protested','A2','news',2,'rally sign banner street'),
('w_news_A2_34','prime','/praɪm/','adjective','주요한, 최고의','Of first importance; most excellent.','The {prime} minister addressed the nation on television.','총리가 텔레비전으로 국민에게 연설했어요.','prime','A2','news',1,'parliament speech podium flag'),
('w_news_A2_35','budget','/ˈbʌdʒɪt/','noun','예산','An estimate of income and expenditure for a set period.','The government presented its annual {budget} today.','정부가 오늘 연간 예산을 발표했어요.','budget','A2','news',1,'finance money chart government')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B1
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_B1_01','policy','/ˈpɒlɪsi/','noun','정책','A course of action adopted by a government or organization.','The new energy {policy} will reduce carbon emissions.','새 에너지 정책이 탄소 배출을 줄일 거예요.','policy','B1','news',1,'document government plan strategy'),
('w_news_B1_02','reform','/rɪˈfɔːrm/','noun','개혁','A change made to improve a system or institution.','The party is pushing for major economic {reforms}.','그 정당은 주요 경제 개혁을 추진하고 있어요.','reforms','B1','news',1,'parliament chart change progress'),
('w_news_B1_03','parliament','/ˈpɑːrləmənt/','noun','의회','The group of elected representatives who make the laws.','The bill passed through {parliament} with a large majority.','그 법안은 큰 다수결로 의회를 통과했어요.','parliament','B1','news',1,'legislative building democracy vote'),
('w_news_B1_04','controversy','/ˈkɒntrəvɜːrsi/','noun','논란','Prolonged public disagreement or heated debate.','The decision sparked {controversy} across the country.','그 결정은 전국적으로 논란을 일으켰어요.','controversy','B1','news',2,'debate protest media opinion'),
('w_news_B1_05','scandal','/ˈskændəl/','noun','스캔들, 추문','An action or event causing public outrage or shock.','The financial {scandal} forced the minister to resign.','금융 스캔들로 장관이 사임해야 했어요.','scandal','B1','news',2,'headlines media expose tabloid'),
('w_news_B1_06','minister','/ˈmɪnɪstər/','noun','장관','A member of the cabinet in charge of a government department.','The defense {minister} briefed the parliament on the threat.','국방 장관이 의회에 위협에 대해 브리핑했어요.','minister','B1','news',1,'suit official parliament policy'),
('w_news_B1_07','legislation','/ˌledʒɪˈsleɪʃən/','noun','입법, 법률','Laws that have been enacted by a legislature.','New {legislation} on data privacy was introduced this week.','이번 주 데이터 프라이버시에 관한 새 입법이 도입됐어요.','legislation','B1','news',1,'law book parliament document'),
('w_news_B1_08','opposition','/ˌɒpəˈzɪʃən/','noun','야당, 반대 세력','The political parties that are not in government.','The {opposition} called for an independent inquiry.','야당이 독립 조사를 요구했어요.','opposition','B1','news',2,'parliament debate politics dissent'),
('w_news_B1_09','coalition','/ˌkəʊəˈlɪʃən/','noun','연립 정부','A temporary union of political parties to form a government.','The two parties formed a {coalition} government.','두 정당이 연립 정부를 구성했어요.','coalition','B1','news',2,'handshake agreement politics alliance'),
('w_news_B1_10','bilateral','/ˌbaɪˈlætərəl/','adjective','양자 간의','Involving two parties, especially two countries.','The presidents met for {bilateral} trade talks.','대통령들이 양자 무역 회담을 위해 만났어요.','bilateral','B1','news',2,'flags handshake diplomacy summit'),
('w_news_B1_11','inquiry','/ɪnˈkwaɪəri/','noun','조사, 심의','An official investigation into something.','A public {inquiry} was opened into the accident.','사고에 대한 공개 조사가 시작됐어요.','inquiry','B1','news',2,'investigation report judge committee'),
('w_news_B1_12','campaign','/kæmˈpeɪn/','noun','선거 운동, 캠페인','A series of planned activities to achieve a particular goal.','She launched a {campaign} to raise awareness of poverty.','그녀는 빈곤 인식 제고를 위한 캠페인을 시작했어요.','campaign','B1','news',2,'poster rally vote awareness'),
('w_news_B1_13','resign','/rɪˈzaɪn/','verb','사임하다','To officially leave a job or position.','The minister was forced to {resign} over the scandal.','장관은 스캔들로 인해 사임해야 했어요.','resign','B1','news',2,'press conference exit politics'),
('w_news_B1_14','corruption','/kəˈrʌpʃən/','noun','부패','Dishonest or illegal behavior, especially by those in power.','The investigation exposed widespread {corruption} in the ministry.','조사는 부처 내 광범위한 부패를 드러냈어요.','corruption','B1','news',2,'money briefcase bribe illegal'),
('w_news_B1_15','inflation','/ɪnˈfleɪʃən/','noun','인플레이션','A general increase in prices over time.','High {inflation} is making everyday goods more expensive.','높은 인플레이션이 일상 용품을 더 비싸게 만들고 있어요.','inflation','B1','news',2,'price chart rising cost money'),
('w_news_B1_16','treaty','/ˈtriːti/','noun','조약','A formal agreement between countries.','The two nations signed a historic peace {treaty}.','두 나라가 역사적인 평화 조약에 서명했어요.','treaty','B1','news',2,'document signing ceremony flag'),
('w_news_B1_17','ceasefire','/ˈsiːsfaɪər/','noun','휴전','A temporary stop of fighting, agreed between warring sides.','Both sides agreed to a {ceasefire} starting at midnight.','양측이 자정부터 시작하는 휴전에 합의했어요.','ceasefire','B1','news',2,'soldiers white flag peace calm'),
('w_news_B1_18','summit','/ˈsʌmɪt/','noun','정상 회담','A meeting between the leaders of two or more countries.','The G7 {summit} will address climate change this year.','G7 정상 회담이 올해 기후 변화를 다룰 거예요.','summit','B1','news',2,'leaders flags conference table'),
('w_news_B1_19','sanction','/ˈsæŋkʃən/','noun','제재','A penalty or restriction imposed against a country or entity.','New economic {sanctions} were imposed on the regime.','그 정권에 새로운 경제 제재가 부과됐어요.','sanctions','B1','news',2,'trade restriction penalty embargo'),
('w_news_B1_20','humanitarian','/hjuːˌmænɪˈteəriən/','adjective','인도주의적','Concerned with or seeking to promote human welfare.','The UN called for {humanitarian} aid to be allowed in.','유엔은 인도주의적 지원이 허용되어야 한다고 촉구했어요.','humanitarian','B1','news',2,'aid relief UN charity'),
('w_news_B1_21','infrastructure','/ˈɪnfrəstrʌktʃər/','noun','사회 기반 시설','The basic physical systems of a country or region.','The government plans to invest in {infrastructure} projects.','정부가 사회 기반 시설 프로젝트에 투자할 계획이에요.','infrastructure','B1','news',2,'bridge road construction building'),
('w_news_B1_22','negotiation','/nɪˌɡəʊʃiˈeɪʃən/','noun','협상','Discussion aimed at reaching an agreement.','Peace {negotiations} are expected to resume next week.','평화 협상이 다음 주에 재개될 것으로 예상돼요.','negotiations','B1','news',2,'table diplomacy handshake talk'),
('w_news_B1_23','demonstrate','/ˈdemənstreɪt/','verb','시위하다','To publicly protest or show support for a cause.','Thousands {demonstrated} against the new tax policy.','수천 명이 새 세금 정책에 반대하여 시위했어요.','demonstrated','B1','news',2,'march banner protest crowd'),
('w_news_B1_24','unemployment','/ˌʌnɪmˈplɔɪmənt/','noun','실업','The condition of being without a paid job.','The latest figures show {unemployment} has risen to 8%.','최신 수치에 따르면 실업률이 8%로 올랐어요.','unemployment','B1','news',2,'job center queue line economy'),
('w_news_B1_25','verdict','/ˈvɜːrdɪkt/','noun','평결, 판결','A decision reached by a jury or judge in a legal trial.','The court delivered its {verdict} this morning.','법원이 오늘 아침 판결을 내렸어요.','verdict','B1','news',2,'courtroom gavel judge jury'),
('w_news_B1_26','press conference','/pres ˈkɒnfərəns/','noun','기자 회견','A meeting at which an official speaks to journalists.','The prime minister held a {press conference} after the vote.','총리가 투표 후 기자 회견을 열었어요.','press conference','B1','news',2,'microphone journalist podium camera'),
('w_news_B1_27','majority','/məˈdʒɒrɪti/','noun','과반수, 다수','The greater number or part of something.','The bill passed with a narrow {majority} in parliament.','그 법안은 의회에서 간신히 과반수로 통과됐어요.','majority','B1','news',2,'vote election graph result'),
('w_news_B1_28','accusation','/ˌækjʊˈzeɪʃən/','noun','고발, 혐의','A claim that someone has done something wrong or illegal.','He denied all {accusations} of wrongdoing.','그는 모든 비리 혐의를 부인했어요.','accusations','B1','news',2,'court legal press denial'),
('w_news_B1_29','turnout','/ˈtɜːrnaʊt/','noun','투표율, 참여율','The number of people attending or participating in an event.','Voter {turnout} reached a record high this election.','이번 선거에서 투표율이 역대 최고를 기록했어요.','turnout','B1','news',2,'ballot box queue voters'),
('w_news_B1_30','impose','/ɪmˈpəʊz/','verb','부과하다','To establish a rule, tax, or restriction by authority.','The government will {impose} stricter penalties for tax evasion.','정부가 탈세에 더 엄격한 처벌을 부과할 거예요.','impose','B1','news',2,'authority law gavel penalty'),
('w_news_B1_31','ally','/ˈælaɪ/','noun','동맹국','A country formally cooperating with another for a common goal.','The US called on its {allies} to support the resolution.','미국이 결의안을 지지해 달라고 동맹국들에 촉구했어요.','allies','B1','news',2,'flags alliance partnership military'),
('w_news_B1_32','evidence','/ˈevɪdəns/','noun','증거','Facts or information showing whether something is true.','The court examined new {evidence} in the case.','법원이 사건에서 새로운 증거를 검토했어요.','evidence','B1','news',2,'courtroom document investigation files'),
('w_news_B1_33','democracy','/dɪˈmɒkrəsi/','noun','민주주의','A system of government in which people vote for their leaders.','Protecting {democracy} requires active citizen participation.','민주주의를 보호하려면 시민의 적극적인 참여가 필요해요.','democracy','B1','news',1,'ballot box flag parliament constitution'),
('w_news_B1_34','refugee','/ˌrefjʊˈdʒiː/','noun','난민','A person forced to flee their country due to conflict or disaster.','The crisis has created over a million {refugees}.','위기로 인해 백만 명 이상의 난민이 생겼어요.','refugees','B1','news',2,'camp tent border UNHCR'),
('w_news_B1_35','deadline','/ˈdedlaɪn/','noun','시한, 기한','A point in time by which something must be done.','The government missed the {deadline} for submitting the budget.','정부가 예산 제출 시한을 놓쳤어요.','deadline','B1','news',2,'clock calendar urgent time')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — B2
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_B2_01','geopolitics','/ˌdʒiːəʊˈpɒlɪtɪks/','noun','지정학','The study of how geography and power shape world affairs.','{Geopolitics} in East Asia has shifted significantly this decade.','이번 십 년간 동아시아 지정학이 크게 변했어요.','Geopolitics','B2','news',1,'map region power rivalry strategy'),
('w_news_B2_02','sanctions','/ˈsæŋkʃənz/','noun','제재 조치','Economic or political penalties imposed by one country on another.','The UN imposed sweeping {sanctions} on the regime.','유엔이 그 정권에 광범위한 제재를 부과했어요.','sanctions','B2','news',1,'trade restriction penalty embargo'),
('w_news_B2_03','diplomatic','/ˌdɪpləˈmætɪk/','adjective','외교적인','Relating to the management of international relations.','Both governments agreed to resume {diplomatic} ties.','두 정부가 외교 관계를 재개하기로 합의했어요.','diplomatic','B2','news',1,'embassy flag handshake diplomat'),
('w_news_B2_04','incumbent','/ɪnˈkʌmbənt/','adjective','현직의','Currently holding a particular office or position.','The {incumbent} president won re-election by a wide margin.','현직 대통령이 큰 차이로 재선에 성공했어요.','incumbent','B2','news',2,'election result president podium'),
('w_news_B2_05','sovereignty','/ˈsɒvrɪnti/','noun','주권','The full right and power of a country to govern itself.','The treaty was seen as a threat to national {sovereignty}.','그 조약은 국가 주권에 대한 위협으로 여겨졌어요.','sovereignty','B2','news',2,'flag border constitution nation'),
('w_news_B2_06','multilateral','/ˌmʌltiˈlætərəl/','adjective','다자간의','Involving three or more parties, especially countries.','A {multilateral} approach is needed to solve the climate crisis.','기후 위기를 해결하려면 다자간 접근이 필요해요.','multilateral','B2','news',2,'UN globe summit delegates'),
('w_news_B2_07','referendum','/ˌrefəˈrendəm/','noun','국민 투표','A direct vote by the electorate on a single political question.','Citizens voted in a {referendum} on independence.','시민들이 독립에 관한 국민 투표에 참여했어요.','referendum','B2','news',2,'ballot box vote democracy flag'),
('w_news_B2_08','austerity','/ɒˈsterɪti/','noun','긴축 재정','Difficult economic conditions created by government spending cuts.','The {austerity} measures triggered widespread protests.','긴축 조치가 광범위한 시위를 촉발했어요.','austerity','B2','news',2,'budget cuts economy protest'),
('w_news_B2_09','coup','/kuː/','noun','쿠데타','A sudden, violent seizure of power from a government.','The military staged a {coup} in the early hours of the morning.','군이 이른 아침에 쿠데타를 일으켰어요.','coup','B2','news',2,'military tanks government overthrow'),
('w_news_B2_10','insurgency','/ɪnˈsɜːrdʒənsi/','noun','반란','An active revolt or uprising against an authority or government.','The army is battling a long-running {insurgency} in the north.','군은 북부에서 오래 지속된 반란과 싸우고 있어요.','insurgency','B2','news',3,'soldiers jungle conflict militia'),
('w_news_B2_11','accountability','/əˌkaʊntəˈbɪlɪti/','noun','책임 (제도적)','The fact of being held responsible for one''s actions or decisions.','There is growing demand for political {accountability}.','정치적 책임에 대한 요구가 높아지고 있어요.','accountability','B2','news',2,'audit investigation report committee'),
('w_news_B2_12','populism','/ˈpɒpjʊlɪzəm/','noun','포퓰리즘','A political approach that appeals to ordinary people''s concerns against elites.','The rise of {populism} has reshaped politics in many countries.','포퓰리즘의 부상이 많은 나라의 정치를 바꿔놓았어요.','populism','B2','news',2,'rally crowd speech election'),
('w_news_B2_13','authoritarian','/ɔːˌθɒrɪˈteəriən/','adjective','권위주의적인','Favoring or enforcing strict obedience to authority.','Critics say the new laws are {authoritarian} in nature.','비평가들은 새 법이 권위주의적 성격이라고 말해요.','authoritarian','B2','news',2,'control surveillance power state'),
('w_news_B2_14','propaganda','/ˌprɒpəˈɡændə/','noun','선전','Information spread to promote a particular political agenda.','The report accused the government of spreading {propaganda}.','그 보도는 정부가 선전을 퍼뜨리고 있다고 비난했어요.','propaganda','B2','news',2,'poster media broadcast bias'),
('w_news_B2_15','disinformation','/dɪsˌɪnfəˈmeɪʃən/','noun','허위 정보','False information spread deliberately to deceive people.','Social media has become a major source of {disinformation}.','소셜 미디어가 허위 정보의 주요 출처가 됐어요.','disinformation','B2','news',2,'fake news screen social media'),
('w_news_B2_16','embargo','/ɪmˈbɑːrɡəʊ/','noun','금수 조치','An official ban on trade with a particular country.','An arms {embargo} was placed on the country by the UN.','유엔이 그 나라에 무기 금수 조치를 부과했어요.','embargo','B2','news',2,'trade ban cargo ship restriction'),
('w_news_B2_17','mediation','/ˌmiːdiˈeɪʃən/','noun','조정, 중재','Intervention in a dispute to bring about a settlement.','International {mediation} helped end the conflict.','국제 조정이 분쟁 종식에 도움이 됐어요.','mediation','B2','news',2,'diplomacy negotiation peace table'),
('w_news_B2_18','polarization','/ˌpəʊlərɪˈzeɪʃən/','noun','양극화','The division of something into two sharply contrasting groups.','Political {polarization} has deepened in recent years.','최근 몇 년간 정치적 양극화가 심화됐어요.','polarization','B2','news',2,'divide society left right politics'),
('w_news_B2_19','narrative','/ˈnærətɪv/','noun','서사, 담론','A story or explanation that shapes how people understand events.','Both sides tried to control the public {narrative}.','양측이 공적 담론을 통제하려고 했어요.','narrative','B2','news',2,'media story framing perspective'),
('w_news_B2_20','transparency','/trænsˈpærənsi/','noun','투명성','The quality of being open and not concealing information.','Citizens are demanding greater {transparency} in government.','시민들이 정부의 더 큰 투명성을 요구하고 있어요.','transparency','B2','news',2,'glass open document accountability'),
('w_news_B2_21','allegation','/ˌælɪˈɡeɪʃən/','noun','혐의, 주장','A claim that someone has done something wrong or illegal.','The minister denied all {allegations} of corruption.','장관은 모든 부패 혐의를 부인했어요.','allegations','B2','news',2,'court legal press accusation'),
('w_news_B2_22','ratification','/ˌrætɪfɪˈkeɪʃən/','noun','비준','The official confirmation or approval of a treaty or agreement.','The treaty awaits {ratification} by all member states.','조약은 모든 회원국의 비준을 기다리고 있어요.','ratification','B2','news',2,'signing document ceremony flag'),
('w_news_B2_23','veto','/ˈviːtəʊ/','noun','거부권','The right to reject a decision or proposal unilaterally.','Russia used its {veto} power to block the UN resolution.','러시아가 거부권을 사용해 유엔 결의안을 막았어요.','veto','B2','news',2,'UN Security Council vote power'),
('w_news_B2_24','credibility','/ˌkredɪˈbɪlɪti/','noun','신뢰성','The quality of being trusted and believed by others.','The scandal damaged the government''s {credibility}.','스캔들이 정부의 신뢰성을 훼손했어요.','credibility','B2','news',2,'trust press opinion poll'),
('w_news_B2_25','mandate','/ˈmændeɪt/','noun','권한 위임, 임무','An official order or authorization given to a party by voters.','The new leader claimed a strong {mandate} from voters.','새 지도자는 유권자들로부터 강력한 권한을 받았다고 주장했어요.','mandate','B2','news',2,'election result vote authority'),
('w_news_B2_26','dissent','/dɪˈsent/','noun','반대 의견','The holding or expression of opinions contrary to authority.','Political {dissent} is suppressed in authoritarian states.','권위주의 국가에서 정치적 반대 의견은 탄압돼요.','dissent','B2','news',2,'protest speech freedom opposition'),
('w_news_B2_27','broker','/ˈbrəʊkər/','verb','중재하다','To arrange or negotiate an agreement between parties.','The US agreed to {broker} a peace deal between the two nations.','미국이 두 나라 간의 평화 협상을 중재하기로 했어요.','broker','B2','news',2,'diplomacy negotiation mediation handshake'),
('w_news_B2_28','consensus','/kənˈsensəs/','noun','합의, 컨센서스','General agreement among a group of people or states.','There is growing {consensus} on the need for climate action.','기후 행동의 필요성에 대한 공감대가 커지고 있어요.','consensus','B2','news',2,'agreement UN summit delegates'),
('w_news_B2_29','intervention','/ˌɪntəˈvenʃən/','noun','개입','The act of becoming involved in a situation to alter its course.','Military {intervention} was debated at the UN Security Council.','유엔 안보리에서 군사적 개입이 논의됐어요.','intervention','B2','news',2,'UN military peacekeeping security'),
('w_news_B2_30','impasse','/ˈɪmpæs/','noun','교착 상태','A situation in which no progress is possible; deadlock.','Negotiations reached an {impasse} after three days of talks.','3일간의 회담 끝에 협상이 교착 상태에 빠졌어요.','impasse','B2','news',2,'deadlock negotiation stalled diplomacy'),
('w_news_B2_31','annexation','/ˌænɪkˈseɪʃən/','noun','합병, 병합','The action of taking over a territory by a country.','The international community condemned the {annexation} of the territory.','국제 사회가 그 영토 합병을 규탄했어요.','annexation','B2','news',3,'border map territory flag'),
('w_news_B2_32','faction','/ˈfækʃən/','noun','파벌','A small, dissenting group within a larger political party.','A rebel {faction} within the party opposed the leader''s plans.','당 내 반대 파벌이 지도자의 계획에 반대했어요.','faction','B2','news',3,'politics party divide group'),
('w_news_B2_33','cease','/siːs/','verb','중단하다','To come to an end or bring something to an end.','Fighting must {cease} immediately, the UN demanded.','유엔은 전투가 즉각 중단되어야 한다고 요구했어요.','cease','B2','news',2,'stop end peacekeeping soldiers'),
('w_news_B2_34','denounce','/dɪˈnaʊns/','verb','규탄하다','To publicly declare something to be wrong or evil.','The opposition {denounced} the new law as unconstitutional.','야당은 새 법을 위헌이라고 규탄했어요.','denounced','B2','news',2,'protest speech condemnation press'),
('w_news_B2_35','coalition','/ˌkəʊəˈlɪʃən/','noun','연합, 연립','A temporary alliance of distinct political parties or groups.','A {coalition} of opposition parties challenged the government.','야당 연합이 정부에 도전했어요.','coalition','B2','news',2,'alliance partnership politics flag')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C1
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_C1_01','hegemony','/hɪˈdʒeməni/','noun','패권','Leadership or dominance, especially of one country over others.','American {hegemony} in the post-Cold War era is being challenged.','냉전 이후 미국 패권이 도전받고 있어요.','hegemony','C1','news',1,'power globe superpower dominance'),
('w_news_C1_02','realpolitik','/reɪˈɑːlpɒlɪtɪk/','noun','현실 정치','Politics based on practical considerations rather than moral norms.','The decision to ally with the regime reflected pure {realpolitik}.','그 정권과의 동맹 결정은 순수한 현실 정치를 반영했어요.','realpolitik','C1','news',2,'strategy power diplomacy chess'),
('w_news_C1_03','extraterritorial','/ˌekstrəˌterɪˈtɔːriəl/','adjective','역외적인','Existing or taking effect outside the territory of a state.','The law has {extraterritorial} jurisdiction over its citizens abroad.','그 법은 해외 자국 시민에 대한 역외 관할권을 가지고 있어요.','extraterritorial','C1','news',3,'law border international jurisdiction'),
('w_news_C1_04','jurisprudence','/ˌdʒʊərɪsˈpruːdəns/','noun','법리학','The theory and practice of law; a body of legal decisions.','The ruling set a new precedent in international {jurisprudence}.','그 판결은 국제 법리학에 새로운 선례를 세웠어요.','jurisprudence','C1','news',2,'law books court legal theory'),
('w_news_C1_05','multilateralism','/ˌmʌltiˈlætərəlɪzəm/','noun','다자주의','The practice of diplomacy involving multiple countries.','The summit reaffirmed a commitment to {multilateralism}.','정상 회담은 다자주의에 대한 의지를 재확인했어요.','multilateralism','C1','news',2,'UN globe summit cooperation'),
('w_news_C1_06','precedent','/ˈpresɪdənt/','noun','선례','An earlier event or ruling used as an example for later situations.','The court''s decision set a dangerous {precedent} for press freedom.','법원의 결정은 언론 자유에 위험한 선례를 남겼어요.','precedent','C1','news',2,'court legal history ruling'),
('w_news_C1_07','jurisdiction','/ˌdʒʊərɪsˈdɪkʃən/','noun','관할권','The official power to make legal decisions in a given area.','The crime falls outside this court''s {jurisdiction}.','그 범죄는 이 법원의 관할권 밖이에요.','jurisdiction','C1','news',2,'court law territory authority'),
('w_news_C1_08','ratification','/ˌrætɪfɪˈkeɪʃən/','noun','비준','Formal confirmation or approval of an international agreement.','The climate accord requires {ratification} by 55 countries.','그 기후 협약은 55개국의 비준이 필요해요.','ratification','C1','news',2,'treaty signing ceremony document'),
('w_news_C1_09','embargo','/ɪmˈbɑːrɡəʊ/','noun','수출입 금지령','An official ban on trade or other commercial activity with a country.','The oil {embargo} crippled the nation''s economy.','석유 금수 조치가 국가 경제를 무력화했어요.','embargo','C1','news',2,'trade ban ship cargo oil'),
('w_news_C1_10','deterrence','/dɪˈterəns/','noun','억제력','The action of discouraging an action through fear of consequences.','Nuclear {deterrence} has prevented major wars for decades.','핵 억제력은 수십 년 동안 대규모 전쟁을 막아왔어요.','deterrence','C1','news',2,'nuclear missile defense shield'),
('w_news_C1_11','geopolitical','/ˌdʒiːəʊpəˈlɪtɪkəl/','adjective','지정학적','Relating to politics affected by geographical factors.','The pipeline holds enormous {geopolitical} significance.','그 파이프라인은 엄청난 지정학적 의미를 가지고 있어요.','geopolitical','C1','news',2,'map energy pipeline power'),
('w_news_C1_12','bellicose','/ˈbelɪkəʊs/','adjective','호전적인','Demonstrating aggression and willingness to fight.','The government''s {bellicose} rhetoric alarmed its neighbors.','정부의 호전적인 수사가 이웃 나라들을 불안하게 했어요.','bellicose','C1','news',3,'military threat tension hostility'),
('w_news_C1_13','oligarchy','/ˈɒlɪɡɑːki/','noun','과두 정치','A system in which power is held by a small number of people.','Critics accuse the ruling elite of establishing an {oligarchy}.','비평가들은 집권 엘리트가 과두 정치를 수립했다고 비난해요.','oligarchy','C1','news',2,'power elite wealth control'),
('w_news_C1_14','reprisal','/rɪˈpraɪzəl/','noun','보복 행위','An act of retaliation against an enemy or opponent.','The strike was carried out in {reprisal} for the earlier attack.','그 공격은 이전 공격에 대한 보복으로 감행됐어요.','reprisal','C1','news',3,'retaliation military response strike'),
('w_news_C1_15','subversion','/səbˈvɜːrʒən/','noun','전복, 체제 해체','The undermining of the power and authority of an established system.','He was charged with {subversion} of the state.','그는 국가 전복 혐의로 기소됐어요.','subversion','C1','news',3,'underground threat security law'),
('w_news_C1_16','proxy','/ˈprɒksi/','noun','대리인, 위임','A person or group acting on behalf of another, especially in conflict.','The two superpowers fought a {proxy} war through local factions.','두 강대국이 지역 파벌을 통해 대리전을 치렀어요.','proxy','C1','news',2,'war factions superpower conflict'),
('w_news_C1_17','ostracize','/ˈɒstrəsaɪz/','verb','추방하다, 따돌리다','To exclude someone from a society or community by consensus.','The regime was {ostracized} by the international community.','그 정권은 국제 사회에서 추방당했어요.','ostracized','C1','news',2,'isolation exclusion sanctions community'),
('w_news_C1_18','proliferation','/prəˌlɪfəˈreɪʃən/','noun','확산','A rapid increase in the number of something, especially weapons.','Nuclear {proliferation} remains one of the world''s gravest threats.','핵 확산은 여전히 세계에서 가장 심각한 위협 중 하나예요.','proliferation','C1','news',2,'nuclear weapons spread global'),
('w_news_C1_19','junta','/ˈhʊntə/','noun','군사 정권','A military group that has seized power following a coup.','The military {junta} suspended the constitution.','군사 정권이 헌법을 정지시켰어요.','junta','C1','news',2,'military coup power governance'),
('w_news_C1_20','disenfranchise','/ˌdɪsɪnˈfræntʃaɪz/','verb','선거권을 박탈하다','To deprive someone of the right to vote or participate.','Critics say the new law will {disenfranchise} millions of voters.','비평가들은 새 법이 수백만 명의 유권자의 선거권을 박탈할 것이라고 말해요.','disenfranchise','C1','news',2,'vote election rights democracy'),
('w_news_C1_21','tribunal','/traɪˈbjuːnəl/','noun','재판소, 심판소','A court or committee appointed to deal with a specific issue.','The war crimes {tribunal} handed down its verdict.','전쟁 범죄 재판소가 판결을 내렸어요.','tribunal','C1','news',2,'court justice international legal'),
('w_news_C1_22','culpability','/ˌkʌlpəˈbɪlɪti/','noun','유책성','Responsibility for a fault or wrong; blameworthiness.','The inquiry examined the {culpability} of senior officials.','조사는 고위 관리들의 유책성을 검토했어요.','culpability','C1','news',3,'responsibility blame inquiry legal'),
('w_news_C1_23','capitulation','/kəˌpɪtʃʊˈleɪʃən/','noun','항복, 굴복','The act of surrendering or giving in to demands or pressure.','Critics called the government''s response a {capitulation} to pressure.','비평가들은 정부의 반응을 압력에 대한 굴복이라고 불렀어요.','capitulation','C1','news',3,'surrender defeat compromise pressure'),
('w_news_C1_24','reparation','/ˌrepəˈreɪʃən/','noun','배상','Compensation for war damage paid by a defeated country.','The debate over war {reparations} resurfaced this year.','올해 전쟁 배상금 논쟁이 다시 불거졌어요.','reparations','C1','news',2,'history war justice compensation'),
('w_news_C1_25','acquittal','/əˈkwɪtəl/','noun','무죄 선고','A formal judicial finding of not guilty.','The {acquittal} shocked the victims'' families.','무죄 선고는 피해자 가족들에게 충격을 줬어요.','acquittal','C1','news',2,'court verdict judge jury not guilty'),
('w_news_C1_26','complicity','/kəmˈplɪsɪti/','noun','공모, 연루','Partnership in a wrongdoing or crime; being involved in guilt.','The report alleged government {complicity} in the cover-up.','보고서는 정부의 은폐 공모를 주장했어요.','complicity','C1','news',2,'corruption crime involvement investigation'),
('w_news_C1_27','rapprochement','/ˌræprəʊʃˈmɒŋ/','noun','화해, 관계 개선','The establishment of harmonious relations between countries.','The two nations are moving toward diplomatic {rapprochement}.','두 나라가 외교적 화해를 향해 나아가고 있어요.','rapprochement','C1','news',2,'diplomacy flag handshake peace'),
('w_news_C1_28','coercive','/kəʊˈɜːrsɪv/','adjective','강압적인','Using force or threats to make someone act in a certain way.','The opposition condemned the government''s {coercive} tactics.','야당은 정부의 강압적인 전술을 규탄했어요.','coercive','C1','news',2,'force authority control pressure'),
('w_news_C1_29','demagogue','/ˈdeməɡɒɡ/','noun','선동가','A political leader who gains support through emotional appeals.','The opposition accused the president of being a {demagogue}.','야당은 대통령이 선동가라고 비난했어요.','demagogue','C1','news',3,'speech crowd politics emotion'),
('w_news_C1_30','intransigence','/ɪnˈtrænsɪdʒəns/','noun','완고함, 비타협성','Refusal to change one''s views or to reach a compromise.','The talks collapsed due to both sides'' {intransigence}.','양측의 비타협적인 태도로 회담이 결렬됐어요.','intransigence','C1','news',3,'deadlock negotiation stalemate rigid'),
('w_news_C1_31','concession','/kənˈseʃən/','noun','양보','A thing granted in response to demands during negotiation.','The government offered {concessions} to end the strike.','정부가 파업을 끝내기 위해 양보를 제시했어요.','concessions','C1','news',2,'negotiation compromise offer deal'),
('w_news_C1_32','asymmetric','/ˌeɪsɪˈmetrɪk/','adjective','비대칭적인','Having unequal distribution of power or strategy between parties.','The conflict has become an {asymmetric} guerrilla war.','분쟁이 비대칭적인 게릴라 전쟁이 됐어요.','asymmetric','C1','news',3,'war strategy power difference'),
('w_news_C1_33','incendiary','/ɪnˈsendiəri/','adjective','선동적인, 도발적인','Tending to stir up conflict or strong reactions.','The senator''s {incendiary} remarks caused national outrage.','상원 의원의 선동적인 발언이 국가적 분노를 일으켰어요.','incendiary','C1','news',3,'speech protest fire rhetoric'),
('w_news_C1_34','sequestration','/ˌsiːkwɪˈstreɪʃən/','noun','자산 동결, 강제 삭감','The seizure or holding of assets, or automatic budget cuts by authority.','Budget {sequestration} resulted in automatic spending cuts.','예산 강제 삭감으로 자동적인 지출 삭감이 발생했어요.','sequestration','C1','news',3,'budget finance government cut'),
('w_news_C1_35','peremptory','/pəˈremptəri/','adjective','강압적이고 단호한','Insisting on immediate compliance without allowing debate.','The court issued a {peremptory} demand for documents.','법원이 서류에 대한 강압적인 요구를 내렸어요.','peremptory','C1','news',3,'court order authority legal command')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- WORDS — C2
-- ══════════════════════════════════════
INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES
('w_news_C2_01','epistemic','/ˌepɪˈstiːmɪk/','adjective','인식론적인','Relating to knowledge or the degree of its validation.','The article examines {epistemic} challenges in journalism.','그 기사는 저널리즘의 인식론적 도전을 다뤄요.','epistemic','C2','news',2,'knowledge theory truth philosophy'),
('w_news_C2_02','Westphalian','/westˈfeɪliən/','adjective','베스트팔렌적인','Relating to the Westphalian system of sovereign nation-states.','The humanitarian intervention challenged {Westphalian} norms.','인도주의적 개입이 베스트팔렌적 규범에 도전했어요.','Westphalian','C2','news',3,'sovereignty international law norms'),
('w_news_C2_03','securitization','/sɪˌkjʊərɪtɪˈzeɪʃən/','noun','안보화','The process of framing an issue as a security threat to justify emergency measures.','The {securitization} of migration has dominated political debates.','이주의 안보화가 정치 논쟁을 지배하고 있어요.','securitization','C2','news',3,'security border threat policy'),
('w_news_C2_04','normative','/ˈnɔːrmətɪv/','adjective','규범적인','Relating to or deriving from a standard or norm of expected behavior.','The UN Charter established a {normative} framework for world order.','유엔 헌장은 세계 질서의 규범적 틀을 확립했어요.','normative','C2','news',2,'law standard framework international'),
('w_news_C2_05','constructivist','/kənˈstrʌktɪvɪst/','adjective','구성주의적인','Relating to the theory that social reality is constructed through ideas and norms.','A {constructivist} reading of the crisis focuses on shared identities.','위기에 대한 구성주의적 해석은 공유된 정체성에 집중해요.','constructivist','C2','news',3,'theory identity norms society'),
('w_news_C2_06','ontological','/ˌɒntəˈlɒdʒɪkəl/','adjective','존재론적인','Relating to the branch of philosophy concerned with the nature of being.','The annexation threatened the country''s {ontological} security.','합병은 그 나라의 존재론적 안보감을 위협했어요.','ontological','C2','news',3,'identity state theory security'),
('w_news_C2_07','postcolonial','/ˌpəʊstˈkɒləniəl/','adjective','탈식민적인','Relating to the period after colonial rule ended and its lingering effects.','The conflict has deep {postcolonial} roots.','그 분쟁은 깊은 탈식민적 뿌리가 있어요.','postcolonial','C2','news',2,'history empire colony Africa Asia'),
('w_news_C2_08','subaltern','/ˈsʌbəltɜːrn/','adjective','하위 주체적인','Relating to those whose voices are marginalized or suppressed in society.','The report amplifies {subaltern} perspectives often ignored by media.','그 보고서는 미디어에서 종종 무시되는 하위 주체적 관점을 증폭시켜요.','subaltern','C2','news',3,'minority voice marginalized society'),
('w_news_C2_09','neocolonialism','/ˌniːəʊˈkɒləniəlɪzəm/','noun','신식민주의','The use of economic or political pressure to control developing countries.','Critics accuse wealthy nations of practicing {neocolonialism}.','비평가들은 부유한 나라들이 신식민주의를 실천한다고 비난해요.','neocolonialism','C2','news',3,'power Africa dependency aid'),
('w_news_C2_10','intergovernmentalism','/ˌɪntəˌɡʌvənˈmentəlɪzəm/','noun','정부 간주의','A theory of international cooperation in which states retain sovereignty.','{Intergovernmentalism} limits the EU''s ability to act as a single entity.','정부 간주의는 EU가 단일 주체로 행동하는 능력을 제한해요.','Intergovernmentalism','C2','news',3,'EU Europe cooperation sovereignty'),
('w_news_C2_11','liminality','/ˌlɪmɪˈnælɪti/','noun','경계성, 과도기 상태','The quality of being in an ambiguous transitional state between two phases.','The country exists in political {liminality} between democracy and authoritarianism.','그 나라는 민주주의와 권위주의 사이의 정치적 경계성 속에 있어요.','liminality','C2','news',3,'transition threshold ambiguity change'),
('w_news_C2_12','praxis','/ˈpræksɪs/','noun','실천 (이론 대비)','The practice and practical application of a theory or belief.','The movement struggled to convert ideology into {praxis}.','그 운동은 이념을 실천으로 전환하는 데 어려움을 겪었어요.','praxis','C2','news',3,'action theory practice policy'),
('w_news_C2_13','polity','/ˈpɒlɪti/','noun','정치 공동체','A form of government or political organization of a state.','The question is whether the EU constitutes a single {polity}.','문제는 EU가 단일 정치 공동체를 구성하는지 여부예요.','polity','C2','news',3,'governance state EU community'),
('w_news_C2_14','hegemon','/ˈheɡɪmɒn/','noun','패권국','A dominant state exercising preponderant power over others.','The US remains the world''s sole military {hegemon}.','미국은 여전히 세계 유일의 군사적 패권국이에요.','hegemon','C2','news',3,'superpower dominance military power'),
('w_news_C2_15','legitimation','/lɪˌdʒɪtɪˈmeɪʃən/','noun','정당화','The process of making something legitimate or lawful in others'' eyes.','The regime sought international {legitimation} through elections.','그 정권은 선거를 통해 국제적 정당화를 추구했어요.','legitimation','C2','news',2,'election credibility recognition power'),
('w_news_C2_16','heterodox','/ˈhetərədɒks/','adjective','이단적인, 비정통적인','Not conforming with accepted or orthodox standards or beliefs.','His {heterodox} interpretation of the treaty provoked debate.','그의 비정통적인 조약 해석이 논쟁을 불러일으켰어요.','heterodox','C2','news',3,'unusual theory challenge orthodox'),
('w_news_C2_17','dialectical','/ˌdaɪəˈlektɪkəl/','adjective','변증법적인','Relating to inquiry into truth by discussion and logical argument.','The analyst offered a {dialectical} reading of the peace process.','분석가는 평화 프로세스에 대한 변증법적 해석을 제공했어요.','dialectical','C2','news',3,'argument theory logic analysis'),
('w_news_C2_18','reification','/ˌriːɪfɪˈkeɪʃən/','noun','물화, 실체화','The process of treating an abstraction as if it were a concrete thing.','The speech was criticized for its {reification} of national identity.','그 연설은 국가 정체성의 물화로 비판받았어요.','reification','C2','news',3,'abstract concept identity society'),
('w_news_C2_19','exceptionalism','/ɪkˈsepʃənəlɪzəm/','noun','예외주의','The belief that a nation is exceptional and not bound by normal rules.','American {exceptionalism} has long shaped its foreign policy.','미국 예외주의는 오랫동안 미국 외교 정책을 형성해 왔어요.','exceptionalism','C2','news',3,'national identity foreign policy US'),
('w_news_C2_20','transnational','/trænsˈnæʃənəl/','adjective','초국가적인','Extending or operating across national boundaries.','The campaign is a {transnational} effort to combat misinformation.','그 캠페인은 허위 정보와 싸우기 위한 초국가적 노력이에요.','transnational','C2','news',2,'global cooperation border internet'),
('w_news_C2_21','agonistic','/ˌæɡəˈnɪstɪk/','adjective','투쟁적인, 갈등 지향적인','Relating to the view that political conflict is inherently productive.','Mouffe''s {agonistic} model sees disagreement as essential to democracy.','무페의 투쟁적 모델은 의견 불일치를 민주주의의 본질로 봐요.','agonistic','C2','news',3,'democracy conflict theory politics'),
('w_news_C2_22','discursive','/dɪˈskɜːrsɪv/','adjective','담론적인','Relating to discourse; proceeding by argument rather than intuition.','The editorial took a {discursive} approach to the crisis.','그 사설은 위기에 대한 담론적 접근을 취했어요.','discursive','C2','news',3,'language analysis text theory'),
('w_news_C2_23','counterfactual','/ˌkaʊntəˈfæktʃʊəl/','adjective','반사실적인','Relating to what might have happened under different circumstances.','Historians offer a {counterfactual} view of the failed negotiations.','역사가들은 실패한 협상에 대한 반사실적 관점을 제시해요.','counterfactual','C2','news',3,'history analysis alternative scenario'),
('w_news_C2_24','semiotic','/ˌsiːmiˈɒtɪk/','adjective','기호학적인','Relating to the study of signs and symbols and their meanings.','The flag-burning carries powerful {semiotic} significance.','국기 소각은 강력한 기호학적 의미를 지니고 있어요.','semiotic','C2','news',3,'symbol meaning sign analysis'),
('w_news_C2_25','extrapolate','/ɪkˈstræpəleɪt/','verb','외삽하다, 추론하다','To extend data or conclusions into unknown areas by inference.','Analysts {extrapolate} future trends from current data.','분석가들은 현재 데이터에서 미래 추세를 추론해요.','extrapolate','C2','news',2,'data analysis forecast prediction'),
('w_news_C2_26','temporality','/ˌtempəˈrælɪti/','noun','시간성, 임시성','The state of existing within or having some relationship with time.','The analyst explored the {temporality} of the political crisis.','분석가는 정치 위기의 시간성을 탐구했어요.','temporality','C2','news',3,'time theory analysis phase'),
('w_news_C2_27','ideological','/ˌaɪdiəˈlɒdʒɪkəl/','adjective','이데올로기적인','Based on or relating to a system of ideas and ideals forming a worldview.','The conflict has deep {ideological} roots.','그 분쟁은 깊은 이데올로기적 뿌리가 있어요.','ideological','C2','news',2,'ideas belief system politics'),
('w_news_C2_28','genealogy','/ˌdʒiːniˈælədʒi/','noun','계보, 기원 추적','The study of the origin and historical development of something.','Foucault''s {genealogy} of power influenced media criticism.','푸코의 권력 계보학은 미디어 비평에 영향을 미쳤어요.','genealogy','C2','news',3,'history origin theory Foucault'),
('w_news_C2_29','hermeneutic','/ˌhɜːrmɪˈnjuːtɪk/','adjective','해석학적인','Relating to the interpretation of texts, especially political or legal ones.','A {hermeneutic} reading of the resolution reveals ambiguities.','결의문의 해석학적 독해는 모호성을 드러내요.','hermeneutic','C2','news',3,'interpretation text law analysis'),
('w_news_C2_30','hegemonic','/ˌheɡɪˈmɒnɪk/','adjective','패권적인','Relating to the exercise of hegemony; dominant in power or influence.','The US sought to preserve its {hegemonic} position in the Pacific.','미국은 태평양에서 패권적 위치를 유지하려 했어요.','hegemonic','C2','news',3,'superpower dominance power Pacific'),
('w_news_C2_31','intersubjectivity','/ˌɪntəsʌbdʒekˈtɪvɪti/','noun','상호주관성','The sharing of cognitive or subjective states between individuals or groups.','Diplomatic norms emerge from {intersubjectivity} among states.','외교 규범은 국가들 간의 상호주관성에서 나와요.','intersubjectivity','C2','news',3,'theory norms shared understanding'),
('w_news_C2_32','deterritorialization','/diːˌterɪtɔːriəlaɪˈzeɪʃən/','noun','탈영토화','The loosening of the connection between culture and geographic territory.','Globalization has accelerated the {deterritorialization} of political identity.','세계화가 정치적 정체성의 탈영토화를 가속화했어요.','deterritorialization','C2','news',3,'globalization identity border culture'),
('w_news_C2_33','dialectic','/ˌdaɪəˈlektɪk/','noun','변증법','A method of examining opposing ideas to reach the truth.','The editorial used a {dialectic} of freedom versus security.','그 사설은 자유 대 안보의 변증법을 사용했어요.','dialectic','C2','news',3,'logic argument theory analysis'),
('w_news_C2_34','disarticulation','/dɪsɑːˌtɪkjʊˈleɪʃən/','noun','연결 해체','The unraveling of coherent political or social structures.','The crisis led to the {disarticulation} of the ruling coalition.','위기는 집권 연합의 연결 해체로 이어졌어요.','disarticulation','C2','news',3,'collapse breakdown coalition fragmentation'),
('w_news_C2_35','epistemocracy','/ɪˌpiːstɪˈmɒkrəsi/','noun','지식 기반 정치 체제','A form of government where political power rests on epistemic competence.','Advocates argue that {epistemocracy} can improve policy quality.','지지자들은 지식 기반 정치 체제가 정책 품질을 높일 수 있다고 주장해요.','epistemocracy','C2','news',3,'expertise knowledge governance theory')
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — A1 (뉴스 공유)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_A1_01','Did you hear about...?','...에 대해 들었어요?','Did you hear about','최근 소식이나 뉴스를 자연스럽게 공유할 때 쓰는 첫 마디예요. "Did you hear about the fire?" 처럼 명사를 바로 이어 붙여요.','뉴스 공유','A1','news','pattern',NULL,1),
('s_news_A1_02','I saw on the news that...','뉴스에서 ...라는 걸 봤어요.','I saw on the news','TV나 온라인 뉴스에서 본 내용을 전달할 때 써요. "I saw on the news that there was a big flood." 처럼 that절을 이어요.','뉴스 전달','A1','news','pattern',NULL,2),
('s_news_A1_03','What happened?','무슨 일이 있었어요?','What happened','사건에 대해 더 알고 싶을 때 쓰는 가장 기본적인 질문이에요. 간단하지만 어디서든 쓸 수 있어요.','사건 질문','A1','news','pattern',NULL,3),
('s_news_A1_04','Is it true that...?','...가 사실이에요?','Is it true that','들은 이야기가 사실인지 확인할 때 써요. "Is it true that the president resigned?" 처럼 that절을 이어요.','사실 확인','A1','news','pattern',NULL,4),
('s_news_A1_05','They said on the news that...','뉴스에서 ...라고 했어요.','They said on the news','불특정 뉴스 출처를 인용할 때 "They said"를 써요. 구어체에서 아주 자주 쓰이는 표현이에요.','뉴스 인용','A1','news','pattern',NULL,5),
('s_news_A1_06','A lot of people were hurt.','많은 사람들이 다쳤어요.','A lot of people were hurt','사고나 재난 보도에서 자주 나오는 문장 구조예요. "were hurt"는 수동태로 피해를 표현해요.','피해 상황','A1','news','pattern',NULL,6),
('s_news_A1_07','The government said...','정부가 ...라고 했어요.','The government said','공식 발표나 성명을 인용할 때 가장 기본적인 구조예요. 뒤에 직접 또는 간접 인용을 붙여요.','공식 발표 인용','A1','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — A2 (사건 설명)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_A2_01','According to reports, ...','보도에 따르면, ...','According to reports','뉴스 출처를 인용할 때 쓰는 표현이에요. 좀 더 격식 있는 느낌이 나고 사실 여부를 단정하지 않는 표현이에요.','출처 인용','A2','news','pattern',NULL,1),
('s_news_A2_02','The police are investigating...','경찰이 ...을 조사하고 있어요.','are investigating','범죄나 사고에 관한 뉴스에서 매우 자주 나오는 표현이에요. 현재진행형으로 진행 중임을 나타내요.','사건 보도','A2','news','pattern',NULL,2),
('s_news_A2_03','It is believed that...','...라고 여겨져요.','It is believed that','확실하지 않은 정보를 전달할 때 쓰는 수동태 표현이에요. 직접 단정하는 것을 피할 수 있어요.','불확실 정보','A2','news','pattern',NULL,3),
('s_news_A2_04','Protests broke out in...','...에서 시위가 발생했어요.','broke out','갑작스럽게 시작된 시위나 사건을 설명할 때 "break out"을 써요. 폭동, 화재, 전쟁 등에도 써요.','시위·사건 발생','A2','news','pattern',NULL,4),
('s_news_A2_05','The government has announced that...','정부는 ...라고 발표했어요.','has announced','현재완료형으로 방금 또는 최근에 이루어진 공식 발표를 자연스럽게 표현해요.','공식 발표','A2','news','pattern',NULL,5),
('s_news_A2_06','Thousands of people took to the streets.','수천 명이 거리로 나왔어요.','took to the streets','많은 사람들이 시위를 위해 나온 것을 표현할 때 "take to the streets"를 써요. 뉴스에서 자주 보이는 관용 표현이에요.','시위 묘사','A2','news','pattern',NULL,6),
('s_news_A2_07','A ceasefire has been agreed.','휴전이 합의됐어요.','has been agreed','수동태로 협상 결과를 간결하게 전달하는 뉴스 문체 표현이에요. 주어가 누구인지 모르거나 중요하지 않을 때 써요.','협상 결과','A2','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — B1 (정치·경제 논의)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_B1_01','The government is under pressure to...','정부가 ...에 대한 압박을 받고 있어요.','is under pressure to','정치·외교 논의에서 자주 쓰이는 표현이에요. "under pressure to reform" 처럼 동사 원형을 이어 써요.','정치 논의','B1','news','pattern',NULL,1),
('s_news_B1_02','Critics have accused the minister of...','비평가들이 장관을 ...혐의로 비난했어요.','Critics have accused','현재완료형으로 최근의 비난·고발을 전달해요. "of + 동명사" 패턴을 외워두면 편리해요.','비난·고발','B1','news','pattern',NULL,2),
('s_news_B1_03','The opposition has called for an inquiry into...','야당이 ...에 대한 조사를 요구했어요.','has called for an inquiry into','야당의 공식 요구를 표현할 때 써요. "call for"는 공식적으로 요구하다는 뜻이에요.','야당 성명','B1','news','pattern',NULL,3),
('s_news_B1_04','Unemployment figures rose to... percent.','실업률이 ...%로 올랐어요.','rose to','경제 지표를 보도할 때 쓰는 패턴이에요. "rose to", "fell to", "hit a record high/low"와 함께 외워두세요.','경제 지표','B1','news','pattern',NULL,4),
('s_news_B1_05','The legislation was passed by a majority of...','법안이 ...의 다수결로 통과됐어요.','was passed by a majority','의회에서 법안이 통과됐을 때 쓰는 수동태 표현이에요. "slim majority(근소한 다수)" 등의 수식어를 붙여요.','입법 보도','B1','news','pattern',NULL,5),
('s_news_B1_06','The minister resigned amid allegations of...','장관이 ...혐의 속에 사임했어요.','resigned amid allegations of','스캔들로 인한 사임 보도에서 자주 나오는 구조예요. "amid"는 "~속에/~가운데"라는 뜻이에요.','스캔들 보도','B1','news','pattern',NULL,6),
('s_news_B1_07','Inflation has reached its highest level in... years.','인플레이션이 ...년 만에 최고치에 달했어요.','has reached its highest level','경제 기사에서 최고점을 강조할 때 쓰는 현재완료 표현이에요. "lowest level", "highest point" 등을 바꿔 써요.','경제 보도','B1','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — B2 (국제 정세)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_B2_01','Diplomatic tensions have escalated between... and...','...와 ... 사이의 외교적 긴장이 고조됐어요.','Diplomatic tensions have escalated','두 나라 간의 갈등 고조를 표현할 때 써요. "escalate"는 상황이 점점 심각해지는 것을 나타내요.','국제 분쟁','B2','news','pattern',NULL,1),
('s_news_B2_02','Sanctions have been imposed on... in response to...','...에 대응해 ...에 제재가 부과됐어요.','Sanctions have been imposed on','제재 부과를 수동태로 표현하는 국제 뉴스 정형 문구예요. "in response to"는 이유를 나타내요.','제재 보도','B2','news','pattern',NULL,2),
('s_news_B2_03','The two nations agreed to resume diplomatic talks.','두 나라가 외교 회담 재개에 합의했어요.','agreed to resume diplomatic talks','관계 정상화를 향한 첫 걸음을 표현할 때 써요. "resume"은 중단됐다가 다시 시작함을 의미해요.','외교 관계','B2','news','pattern',NULL,3),
('s_news_B2_04','The international community has condemned the attack.','국제 사회가 공격을 규탄했어요.','has condemned','규탄 성명에서 항상 나오는 표현이에요. "condemn"은 "강하게 비난하다"는 뜻이에요.','국제 규탄','B2','news','pattern',NULL,4),
('s_news_B2_05','A multilateral agreement was reached at the summit.','정상 회담에서 다자간 합의가 이루어졌어요.','multilateral agreement was reached','다자 외교의 결과를 보도할 때 쓰는 표현이에요. "bilateral"(양자), "multilateral"(다자)을 구분해서 써요.','정상 회담','B2','news','pattern',NULL,5),
('s_news_B2_06','The regime faces growing pressure from the international community.','그 정권은 국제 사회로부터 점점 커지는 압박에 직면해 있어요.','faces growing pressure','정권이 국내외 압박을 받는 상황을 설명할 때 써요. "growing"은 압박이 점점 강해지고 있음을 나타내요.','국제 압박','B2','news','pattern',NULL,6),
('s_news_B2_07','The referendum resulted in a vote for independence.','국민 투표 결과 독립 찬성으로 나왔어요.','referendum resulted in','국민 투표 결과를 보도할 때 쓰는 표현이에요. "result in"은 특정 결과로 이어짐을 나타내요.','국민 투표','B2','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — C1 (외교·정책 분석)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_C1_01','The decision sets a significant precedent for international law.','그 결정은 국제법에 중요한 선례를 남겨요.','sets a significant precedent','법적·외교적 판단이 미래에 미치는 영향을 설명할 때 써요. "landmark precedent", "dangerous precedent"도 자주 쓰여요.','국제법 분석','C1','news','pattern',NULL,1),
('s_news_C1_02','The sanctions regime has failed to achieve its stated objectives.','제재 체제가 명시된 목표를 달성하는 데 실패했어요.','has failed to achieve its stated objectives','정책 효과를 비판적으로 분석할 때 쓰는 표현이에요. "stated objectives"는 공식적으로 밝힌 목표를 뜻해요.','정책 비판 분석','C1','news','pattern',NULL,2),
('s_news_C1_03','The bilateral relationship has deteriorated significantly in recent months.','양자 관계가 최근 몇 달 동안 크게 악화됐어요.','has deteriorated significantly','관계 악화를 표현할 때 "deteriorate"를 써요. "improve dramatically", "stabilize gradually"와 반대 표현으로 외워요.','외교 분석','C1','news','pattern',NULL,3),
('s_news_C1_04','There are growing concerns about the erosion of democratic norms.','민주주의 규범 침식에 대한 우려가 커지고 있어요.','growing concerns about the erosion of','추상적인 제도나 가치의 약화를 표현할 때 써요. "erosion of"는 서서히 무너지는 것을 나타내요.','민주주의 분석','C1','news','pattern',NULL,4),
('s_news_C1_05','The court''s ruling may have far-reaching implications for...','법원의 판결은 ...에 광범위한 영향을 미칠 수 있어요.','may have far-reaching implications for','법적 판결이 더 넓은 영역에 미치는 파급 효과를 분석할 때 써요. "far-reaching"은 "광범위한"이라는 뜻이에요.','사법 분석','C1','news','pattern',NULL,5),
('s_news_C1_06','The government invoked emergency powers to suppress dissent.','정부가 반대 의견을 억압하기 위해 비상 권한을 발동했어요.','invoked emergency powers to suppress','강압적 통치를 보도하거나 분석할 때 쓰는 표현이에요. "invoke"는 법이나 권한을 공식 발동하는 뜻이에요.','권위주의 분석','C1','news','pattern',NULL,6),
('s_news_C1_07','Analysts warn of the risk of further escalation in the region.','분석가들은 지역 내 추가 확전 위험을 경고해요.','warn of the risk of further escalation','분쟁 지역 상황 분석에서 자주 쓰이는 표현이에요. "escalation"은 갈등 심화를, "further"는 추가적임을 나타내요.','분쟁 분석','C1','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;

-- ══════════════════════════════════════
-- PATTERNS — C2 (외교·정책 심층 분석)
-- ══════════════════════════════════════
INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES
('s_news_C2_01','The hegemon''s unilateral actions undermine the multilateral rules-based order.','패권국의 일방적 행동이 다자 규칙 기반 질서를 약화시켜요.','unilateral actions undermine the multilateral rules-based order','국제 정치 분석에서 핵심 패턴이에요. "rules-based order"는 현 국제 체계를 가리키는 전문 용어예요.','국제 질서 분석','C2','news','pattern',NULL,1),
('s_news_C2_02','The conflict can be read as a manifestation of postcolonial tensions.','그 분쟁은 탈식민적 긴장의 표현으로 읽힐 수 있어요.','can be read as a manifestation of','학문적·비판적 분석에서 쓰이는 표현이에요. "manifestation of"는 어떤 현상의 구체적 발현을 뜻해요.','탈식민 분석','C2','news','pattern',NULL,2),
('s_news_C2_03','Securitization of the issue has foreclosed alternative policy responses.','그 문제의 안보화가 대안적 정책 대응을 차단했어요.','Securitization of the issue has foreclosed','코펜하겐 학파의 안보화 이론을 적용한 분석 표현이에요. "foreclose"는 가능성을 원천 봉쇄하는 것을 뜻해요.','안보화 이론','C2','news','pattern',NULL,3),
('s_news_C2_04','The normative framework underpinning the international order is being contested.','국제 질서를 뒷받침하는 규범적 틀이 도전받고 있어요.','normative framework underpinning the international order is being contested','국제 규범의 위기를 설명하는 학술적 표현이에요. "underpin"은 "뒷받침하다", "contest"는 "이의를 제기하다"는 뜻이에요.','규범 분석','C2','news','pattern',NULL,4),
('s_news_C2_05','The crisis exposes the epistemic limits of mainstream IR theory.','위기는 주류 국제 관계 이론의 인식론적 한계를 드러내요.','exposes the epistemic limits of','국제 관계(IR) 학문에서 이론의 설명력 한계를 비판할 때 써요. "epistemic"은 지식·인식에 관련된 형용사예요.','IR 이론 비판','C2','news','pattern',NULL,5),
('s_news_C2_06','Subaltern voices remain systematically excluded from diplomatic discourse.','하위 주체의 목소리는 외교 담론에서 체계적으로 배제돼요.','Subaltern voices remain systematically excluded','탈식민 이론과 비판 IR에서 쓰이는 표현이에요. "subaltern"은 권력 구조에서 소외된 주체를 뜻해요.','탈식민 비판','C2','news','pattern',NULL,6),
('s_news_C2_07','The state''s ontological security imperative drove its foreign policy choices.','국가의 존재론적 안보 요구가 외교 정책 선택을 이끌었어요.','ontological security imperative drove its foreign policy choices','미어샤이머나 스틸(Steele) 등의 이론에서 나온 분석 틀이에요. "ontological security"는 국가의 정체성 안정감을 뜻해요.','존재론적 안보','C2','news','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;


-- ══════ ACADEMIC ══════
-- EngCat: Academic (학술) Topic
-- 210 words (35 per CEFR level A1~C2) + 42 patterns (7 per level)
-- Generated: 2026-05-24

-- ============================================================
-- WORDS
-- ============================================================

INSERT INTO words (id, en, ipa, pos, ko, definition, example_en, example_ko, highlight, cefr, topic_id, priority, image_keyword) VALUES

-- ============================================================
-- A1 — 35 words
-- ============================================================
('w_academic_A1_01','learn','/lɜːrn/','verb','배우다','To gain knowledge or skill through study or experience.','I want to {learn} English every day.','저는 매일 영어를 배우고 싶어요.','learn','A1','academic',1,'learning study books knowledge'),
('w_academic_A1_02','know','/noʊ/','verb','알다','To have information or understanding about something.','Do you {know} the answer?','답을 알고 있나요?','know','A1','academic',1,'knowledge mind lightbulb'),
('w_academic_A1_03','understand','/ˌʌndərˈstænd/','verb','이해하다','To know the meaning of something.','I do not {understand} this question.','이 질문을 이해하지 못하겠어요.','understand','A1','academic',1,'comprehension thinking'),
('w_academic_A1_04','read','/riːd/','verb','읽다','To look at written words and take in their meaning.','Please {read} the first chapter.','첫 번째 챕터를 읽어 주세요.','read','A1','academic',1,'book reading page text'),
('w_academic_A1_05','write','/raɪt/','verb','쓰다','To form letters, words, or sentences on paper.','Please {write} your name here.','여기에 이름을 써 주세요.','write','A1','academic',1,'writing pen notebook paper'),
('w_academic_A1_06','question','/ˈkwɛstʃən/','noun','질문','A sentence that asks for information.','Do you have a {question}?','질문이 있나요?','question','A1','academic',1,'question mark inquiry'),
('w_academic_A1_07','answer','/ˈænsər/','noun','답','A response to a question.','Write the {answer} on your paper.','종이에 답을 써 주세요.','answer','A1','academic',1,'answer solution correct'),
('w_academic_A1_08','right','/raɪt/','adjective','맞는','Correct or true.','That is the {right} answer!','그게 맞는 답이에요!','right','A1','academic',2,'correct checkmark success'),
('w_academic_A1_09','wrong','/rɒŋ/','adjective','틀린','Not correct or true.','Sorry, that is {wrong}.','죄송해요, 그건 틀렸어요.','wrong','A1','academic',2,'incorrect mistake error'),
('w_academic_A1_10','class','/klæs/','noun','수업','A period of teaching in school.','The {class} starts at nine.','수업은 9시에 시작해요.','class','A1','academic',1,'classroom school desks students'),
('w_academic_A1_11','book','/bʊk/','noun','책','A set of printed pages bound together.','Please open your {book} to page ten.','책 10페이지를 펴 주세요.','book','A1','academic',1,'book pages library reading'),
('w_academic_A1_12','test','/tɛst/','noun','시험','An examination of knowledge.','We have a {test} tomorrow.','내일 시험이 있어요.','test','A1','academic',1,'exam test paper pencil'),
('w_academic_A1_13','study','/ˈstʌdi/','verb','공부하다','To spend time learning a subject.','I need to {study} for my exam.','시험을 위해 공부해야 해요.','study','A1','academic',1,'study desk lamp books'),
('w_academic_A1_14','school','/skuːl/','noun','학교','A place where children are educated.','She goes to {school} every day.','그녀는 매일 학교에 가요.','school','A1','academic',1,'school building education'),
('w_academic_A1_15','teacher','/ˈtiːtʃər/','noun','선생님','A person who teaches in a school.','The {teacher} explained the lesson clearly.','선생님이 수업을 명확하게 설명해 주셨어요.','teacher','A1','academic',1,'teacher classroom whiteboard'),
('w_academic_A1_16','student','/ˈstjuːdənt/','noun','학생','A person who is studying at school.','Every {student} must do the homework.','모든 학생이 숙제를 해야 해요.','student','A1','academic',1,'student desk learning'),
('w_academic_A1_17','lesson','/ˈlɛsən/','noun','수업 내용','A period of learning or teaching.','Today''s {lesson} is about grammar.','오늘 수업 내용은 문법이에요.','lesson','A1','academic',2,'lesson plan teaching'),
('w_academic_A1_18','homework','/ˈhoʊmwɜːrk/','noun','숙제','Work that a student is given to do at home.','Did you finish your {homework}?','숙제를 다 끝냈나요?','homework','A1','academic',2,'homework assignment notebook'),
('w_academic_A1_19','word','/wɜːrd/','noun','단어','A single unit of language.','Please look up the {word} in the dictionary.','사전에서 그 단어를 찾아 주세요.','word','A1','academic',1,'word vocabulary dictionary'),
('w_academic_A1_20','sentence','/ˈsɛntəns/','noun','문장','A group of words that expresses a complete thought.','Write one {sentence} about your school.','학교에 대해 문장 하나를 써 주세요.','sentence','A1','academic',2,'sentence grammar text'),
('w_academic_A1_21','number','/ˈnʌmbər/','noun','숫자','A mathematical value.','What {number} comes next?','다음 숫자는 무엇인가요?','number','A1','academic',2,'number math digits'),
('w_academic_A1_22','correct','/kəˈrɛkt/','adjective','정확한','Free from error.','Your spelling is {correct}.','철자가 정확해요.','correct','A1','academic',2,'correct accurate checkmark'),
('w_academic_A1_23','repeat','/rɪˈpiːt/','verb','반복하다','To say or do something again.','Please {repeat} after me.','저를 따라 반복해 주세요.','repeat','A1','academic',2,'repeat cycle again'),
('w_academic_A1_24','listen','/ˈlɪsən/','verb','듣다','To pay attention to sound.','Please {listen} carefully.','주의 깊게 들어 주세요.','listen','A1','academic',1,'listening ear audio'),
('w_academic_A1_25','speak','/spiːk/','verb','말하다','To express oneself in words.','Can you {speak} more slowly?','더 천천히 말씀해 주실 수 있나요?','speak','A1','academic',1,'speaking mouth conversation'),
('w_academic_A1_26','page','/peɪdʒ/','noun','페이지','One side of a sheet of paper in a book.','Turn to {page} five.','5페이지로 넘겨 주세요.','page','A1','academic',2,'page book number'),
('w_academic_A1_27','name','/neɪm/','noun','이름','The word used to identify a person or thing.','Write your {name} at the top.','맨 위에 이름을 써 주세요.','name','A1','academic',2,'name identity label'),
('w_academic_A1_28','meaning','/ˈmiːnɪŋ/','noun','의미','What a word or idea represents.','What is the {meaning} of this word?','이 단어의 의미가 무엇인가요?','meaning','A1','academic',2,'meaning definition symbol'),
('w_academic_A1_29','example','/ɪɡˈzɑːmpəl/','noun','예시','Something that shows what something is like.','Can you give an {example}?','예시를 들어 주실 수 있나요?','example','A1','academic',1,'example sample illustration'),
('w_academic_A1_30','difficult','/ˈdɪfɪkəlt/','adjective','어려운','Not easy; requiring effort.','This question is {difficult}.','이 질문은 어려워요.','difficult','A1','academic',2,'difficult challenge hard'),
('w_academic_A1_31','easy','/ˈiːzi/','adjective','쉬운','Not requiring much effort.','The first exercise is {easy}.','첫 번째 연습 문제는 쉬워요.','easy','A1','academic',2,'easy simple straightforward'),
('w_academic_A1_32','ask','/æsk/','verb','질문하다','To seek information by saying a question.','Please {ask} if you need help.','도움이 필요하면 질문해 주세요.','ask','A1','academic',1,'asking question inquiry'),
('w_academic_A1_33','help','/hɛlp/','verb','도와주다','To make it easier for someone to do something.','Can you {help} me with this?','이것 좀 도와주실 수 있나요?','help','A1','academic',1,'help support assistance'),
('w_academic_A1_34','grade','/ɡreɪd/','noun','성적','A mark indicating quality of school work.','I got a good {grade} on my test.','시험에서 좋은 성적을 받았어요.','grade','A1','academic',2,'grade score academic performance'),
('w_academic_A1_35','topic','/ˈtɒpɪk/','noun','주제','The subject of a talk or piece of writing.','What is the {topic} of today''s class?','오늘 수업의 주제가 무엇인가요?','topic','A1','academic',2,'topic subject theme'),

-- ============================================================
-- A2 — 35 words
-- ============================================================
('w_academic_A2_01','research','/rɪˈsɜːrtʃ/','noun','연구','Careful study to find facts or information.','She did a lot of {research} for her report.','그녀는 보고서를 위해 많은 연구를 했어요.','research','A2','academic',1,'research laboratory science study'),
('w_academic_A2_02','theory','/ˈθɪəri/','noun','이론','A set of ideas that explains something.','Darwin''s {theory} changed science.','다윈의 이론은 과학을 바꿨어요.','theory','A2','academic',1,'theory idea science evolution'),
('w_academic_A2_03','fact','/fækt/','noun','사실','Something that is known to be true.','It is a {fact} that the Earth is round.','지구가 둥글다는 것은 사실이에요.','fact','A2','academic',1,'fact truth information'),
('w_academic_A2_04','idea','/aɪˈdɪə/','noun','아이디어','A thought or suggestion.','That is a great {idea}!','그건 훌륭한 아이디어예요!','idea','A2','academic',1,'idea lightbulb creativity'),
('w_academic_A2_05','subject','/ˈsʌbdʒɪkt/','noun','과목','An area of study.','My favorite {subject} is history.','제가 가장 좋아하는 과목은 역사예요.','subject','A2','academic',1,'subject school course study'),
('w_academic_A2_06','paper','/ˈpeɪpər/','noun','논문','A written piece of academic work.','I need to write a {paper} by Friday.','금요일까지 논문을 써야 해요.','paper','A2','academic',1,'paper writing academic document'),
('w_academic_A2_07','present','/prɪˈzɛnt/','verb','발표하다','To show or explain something to an audience.','I will {present} my project tomorrow.','내일 제 프로젝트를 발표할 거예요.','present','A2','academic',1,'presentation slides audience'),
('w_academic_A2_08','method','/ˈmɛθəd/','noun','방법','A particular way of doing something.','What {method} did you use?','어떤 방법을 사용하셨나요?','method','A2','academic',1,'method process steps plan'),
('w_academic_A2_09','result','/rɪˈzʌlt/','noun','결과','The outcome of an action or experiment.','What were the {results} of the study?','연구 결과가 어떻게 되었나요?','result','A2','academic',1,'result outcome data graph'),
('w_academic_A2_10','review','/rɪˈvjuː/','verb','검토하다','To examine or assess something carefully.','Please {review} your notes before the test.','시험 전에 노트를 검토해 주세요.','review','A2','academic',1,'review checklist evaluation'),
('w_academic_A2_11','explain','/ɪkˈspleɪn/','verb','설명하다','To make something clear and understandable.','Can you {explain} this concept?','이 개념을 설명해 주실 수 있나요?','explain','A2','academic',1,'explain diagram whiteboard'),
('w_academic_A2_12','compare','/kəmˈpɛr/','verb','비교하다','To examine the similarities and differences.','{Compare} the two graphs.','두 그래프를 비교해 보세요.','compare','A2','academic',2,'compare contrast analysis'),
('w_academic_A2_13','describe','/dɪˈskraɪb/','verb','묘사하다','To say what something is like.','Please {describe} the experiment.','실험을 묘사해 주세요.','describe','A2','academic',2,'describe illustration detail'),
('w_academic_A2_14','opinion','/əˈpɪnjən/','noun','의견','A personal view or judgment.','In my {opinion}, this is correct.','제 의견으로는, 이것이 맞아요.','opinion','A2','academic',1,'opinion thought viewpoint'),
('w_academic_A2_15','information','/ˌɪnfərˈmeɪʃən/','noun','정보','Facts or knowledge about something.','Where did you find this {information}?','이 정보를 어디서 찾으셨나요?','information','A2','academic',1,'information data internet research'),
('w_academic_A2_16','notes','/noʊts/','noun','필기','Written information for later use.','Take {notes} during the lecture.','강의 중에 필기를 해 주세요.','notes','A2','academic',2,'notes notebook pen writing'),
('w_academic_A2_17','assignment','/əˈsaɪnmənt/','noun','과제','A task given to a student.','The {assignment} is due on Monday.','과제는 월요일까지예요.','assignment','A2','academic',1,'assignment task homework deadline'),
('w_academic_A2_18','project','/ˈprɒdʒɛkt/','noun','프로젝트','A planned piece of work.','Our group {project} is about climate change.','우리 그룹 프로젝트는 기후 변화에 관한 거예요.','project','A2','academic',1,'project team collaboration'),
('w_academic_A2_19','source','/sɔːrs/','noun','출처','A place from which information is obtained.','Always cite your {sources}.','출처를 항상 인용해 주세요.','source','A2','academic',1,'source reference bibliography'),
('w_academic_A2_20','conclusion','/kənˈkluːʒən/','noun','결론','The final part of an argument or study.','What is the {conclusion} of your paper?','논문의 결론이 무엇인가요?','conclusion','A2','academic',1,'conclusion summary end'),
('w_academic_A2_21','argument','/ˈɑːrɡjumənt/','noun','주장','A reason given to support an idea.','Her {argument} was very convincing.','그녀의 주장은 매우 설득력 있었어요.','argument','A2','academic',2,'argument debate discussion'),
('w_academic_A2_22','suggest','/səˈdʒɛst/','verb','제안하다','To put forward an idea for consideration.','I would like to {suggest} a different approach.','다른 접근법을 제안하고 싶어요.','suggest','A2','academic',2,'suggest proposal idea'),
('w_academic_A2_23','lecture','/ˈlɛktʃər/','noun','강의','A talk given to an audience on a subject.','The {lecture} starts at ten o''clock.','강의는 10시에 시작해요.','lecture','A2','academic',1,'lecture hall professor university'),
('w_academic_A2_24','professor','/prəˈfɛsər/','noun','교수','A teacher at a university.','The {professor} gave us extra time.','교수님이 추가 시간을 주셨어요.','professor','A2','academic',1,'professor university classroom'),
('w_academic_A2_25','university','/ˌjuːnɪˈvɜːrsɪti/','noun','대학교','A place of higher education.','She studies at a top {university}.','그녀는 최고 대학교에서 공부해요.','university','A2','academic',1,'university campus building'),
('w_academic_A2_26','knowledge','/ˈnɒlɪdʒ/','noun','지식','Information and understanding of a subject.','She has a lot of {knowledge} about history.','그녀는 역사에 대한 지식이 많아요.','knowledge','A2','academic',1,'knowledge books brain learning'),
('w_academic_A2_27','skill','/skɪl/','noun','기술','The ability to do something well.','Critical thinking is an important {skill}.','비판적 사고는 중요한 기술이에요.','skill','A2','academic',2,'skill ability talent'),
('w_academic_A2_28','practice','/ˈpræktɪs/','noun','연습','Repeated exercise to improve ability.','Daily {practice} improves your writing.','매일 연습하면 글쓰기가 향상돼요.','practice','A2','academic',2,'practice repetition improvement'),
('w_academic_A2_29','problem','/ˈprɒbləm/','noun','문제','A question or difficulty that needs solving.','We need to solve this {problem} together.','이 문제를 함께 해결해야 해요.','problem','A2','academic',1,'problem solving puzzle'),
('w_academic_A2_30','solution','/səˈluːʃən/','noun','해결책','A way of solving a problem.','They found a good {solution}.','그들은 좋은 해결책을 찾았어요.','solution','A2','academic',1,'solution answer problem solving'),
('w_academic_A2_31','improve','/ɪmˈpruːv/','verb','향상시키다','To make something better.','Reading helps to {improve} your vocabulary.','독서는 어휘를 향상시키는 데 도움이 돼요.','improve','A2','academic',2,'improve growth progress chart'),
('w_academic_A2_32','choose','/tʃuːz/','verb','선택하다','To pick from a number of options.','{Choose} the best answer.','가장 좋은 답을 선택해 주세요.','choose','A2','academic',2,'choose select option decision'),
('w_academic_A2_33','discuss','/dɪˈskʌs/','verb','토론하다','To talk about something with others.','Let''s {discuss} the main points.','주요 논점을 토론해 봅시다.','discuss','A2','academic',1,'discussion group debate'),
('w_academic_A2_34','summary','/ˈsʌməri/','noun','요약','A brief statement of the main points.','Write a {summary} of the article.','기사를 요약해 주세요.','summary','A2','academic',1,'summary overview brief'),
('w_academic_A2_35','point','/pɔɪnt/','noun','요점','The main idea or purpose.','That is a very good {point}.','그것은 매우 좋은 요점이에요.','point','A2','academic',2,'point key idea highlight'),

-- ============================================================
-- B1 — 35 words
-- ============================================================
('w_academic_B1_01','hypothesis','/haɪˈpɒθɪsɪs/','noun','가설','A proposed explanation made on limited evidence.','We need to test the {hypothesis}.','가설을 검증해야 해요.','hypothesis','B1','academic',1,'hypothesis science experiment test'),
('w_academic_B1_02','evidence','/ˈɛvɪdəns/','noun','증거','Facts or information that support a claim.','The {evidence} supports the theory.','증거가 그 이론을 뒷받침해요.','evidence','B1','academic',1,'evidence data proof research'),
('w_academic_B1_03','analyze','/ˈænəlaɪz/','verb','분석하다','To examine something in detail.','We will {analyze} the data carefully.','데이터를 주의 깊게 분석할 거예요.','analyze','B1','academic',1,'analysis data chart graph'),
('w_academic_B1_04','conclude','/kənˈkluːd/','verb','결론 내리다','To reach a decision after considering facts.','We can {conclude} that the hypothesis is correct.','가설이 옳다고 결론 내릴 수 있어요.','conclude','B1','academic',1,'conclusion result finding'),
('w_academic_B1_05','cite','/saɪt/','verb','인용하다','To refer to a source of information.','Always {cite} your references.','항상 참고 문헌을 인용해 주세요.','cite','B1','academic',1,'citation reference bibliography'),
('w_academic_B1_06','abstract','/ˈæbstrækt/','noun','초록','A brief summary of a research paper.','Read the {abstract} before the full paper.','전체 논문 전에 초록을 읽어 주세요.','abstract','B1','academic',1,'abstract summary journal'),
('w_academic_B1_07','journal','/ˈdʒɜːrnəl/','noun','학술지','A publication containing research articles.','This was published in a peer-reviewed {journal}.','이것은 동료 심사 학술지에 게재되었어요.','journal','B1','academic',1,'journal magazine academic publication'),
('w_academic_B1_08','empirical','/ɪmˈpɪrɪkəl/','adjective','경험적인','Based on observation or experiment.','The study relies on {empirical} data.','그 연구는 경험적 데이터에 의존해요.','empirical','B1','academic',2,'empirical experiment observation data'),
('w_academic_B1_09','variable','/ˈvɛriəbəl/','noun','변수','A factor that can change in an experiment.','Control all {variables} in the experiment.','실험에서 모든 변수를 통제해 주세요.','variable','B1','academic',1,'variable factor experiment control'),
('w_academic_B1_10','methodology','/ˌmɛθəˈdɒlədʒi/','noun','방법론','The system of methods used in research.','Describe the {methodology} in detail.','방법론을 자세히 설명해 주세요.','methodology','B1','academic',1,'methodology research method approach'),
('w_academic_B1_11','argument','/ˈɑːrɡjumənt/','noun','논증','A set of reasons given to support a claim.','Build a strong {argument} with evidence.','증거로 강력한 논증을 구축해 주세요.','argument','B1','academic',1,'argument logic evidence debate'),
('w_academic_B1_12','evaluate','/ɪˈvæljueɪt/','verb','평가하다','To judge or assess something carefully.','We need to {evaluate} the results.','결과를 평가해야 해요.','evaluate','B1','academic',1,'evaluation assessment judgment'),
('w_academic_B1_13','interpret','/ɪnˈtɜːrprɪt/','verb','해석하다','To explain the meaning of something.','How do you {interpret} these findings?','이 연구 결과를 어떻게 해석하시나요?','interpret','B1','academic',2,'interpretation meaning analysis'),
('w_academic_B1_14','significant','/sɪɡˈnɪfɪkənt/','adjective','유의미한','Important or noteworthy; statistically meaningful.','The difference is {significant}.','그 차이는 유의미해요.','significant','B1','academic',1,'significance importance statistics'),
('w_academic_B1_15','correlation','/ˌkɒrəˈleɪʃən/','noun','상관관계','A relationship between two or more things.','There is a {correlation} between study time and grades.','학습 시간과 성적 사이에는 상관관계가 있어요.','correlation','B1','academic',2,'correlation relationship graph data'),
('w_academic_B1_16','objective','/əbˈdʒɛktɪv/','adjective','객관적인','Not influenced by personal feelings.','Try to remain {objective} in your analysis.','분석 시 객관적을 유지해 주세요.','objective','B1','academic',1,'objective neutral analysis'),
('w_academic_B1_17','subjective','/səbˈdʒɛktɪv/','adjective','주관적인','Based on personal feelings or opinions.','This judgment is {subjective}.','이 판단은 주관적이에요.','subjective','B1','academic',2,'subjective opinion personal'),
('w_academic_B1_18','define','/dɪˈfaɪn/','verb','정의하다','To state the exact meaning of a word or concept.','Please {define} the key terms.','핵심 용어를 정의해 주세요.','define','B1','academic',1,'definition meaning dictionary'),
('w_academic_B1_19','concept','/ˈkɒnsɛpt/','noun','개념','An abstract idea or general notion.','This {concept} is central to the theory.','이 개념은 이론의 핵심이에요.','concept','B1','academic',1,'concept idea abstract'),
('w_academic_B1_20','framework','/ˈfreɪmwɜːrk/','noun','틀','A structure supporting ideas or a system.','We used a theoretical {framework}.','우리는 이론적 틀을 사용했어요.','framework','B1','academic',2,'framework structure model'),
('w_academic_B1_21','critical','/ˈkrɪtɪkəl/','adjective','비판적인','Expressing careful judgment and analysis.','Develop {critical} thinking skills.','비판적 사고 능력을 개발해 주세요.','critical','B1','academic',1,'critical thinking analysis'),
('w_academic_B1_22','implication','/ˌɪmplɪˈkeɪʃən/','noun','함의','A conclusion that can be drawn from something.','What are the {implications} of this finding?','이 결과의 함의는 무엇인가요?','implication','B1','academic',2,'implication meaning consequence'),
('w_academic_B1_23','relevant','/ˈrɛlɪvənt/','adjective','관련 있는','Closely connected to what is being discussed.','Only include {relevant} information.','관련 있는 정보만 포함해 주세요.','relevant','B1','academic',2,'relevant connected related'),
('w_academic_B1_24','reference','/ˈrɛfərəns/','noun','참고 문헌','A mention of a source of information.','List all your {references} at the end.','마지막에 모든 참고 문헌을 나열해 주세요.','reference','B1','academic',1,'reference bibliography citation'),
('w_academic_B1_25','data','/ˈdeɪtə/','noun','데이터','Facts and statistics collected for analysis.','The {data} shows a clear trend.','데이터는 명확한 추세를 보여줘요.','data','B1','academic',1,'data statistics chart analysis'),
('w_academic_B1_26','sample','/ˈsæmpəl/','noun','표본','A small part taken to represent the whole.','The {sample} size was too small.','표본 크기가 너무 작았어요.','sample','B1','academic',2,'sample size research statistics'),
('w_academic_B1_27','survey','/ˈsɜːrveɪ/','noun','설문 조사','A study of opinions using questionnaires.','We conducted a {survey} of 200 students.','우리는 200명의 학생을 대상으로 설문 조사를 실시했어요.','survey','B1','academic',2,'survey questionnaire research'),
('w_academic_B1_28','demonstrate','/ˈdɛmənstreɪt/','verb','증명하다','To show clearly by using examples or evidence.','The results {demonstrate} a significant change.','결과는 유의미한 변화를 증명해요.','demonstrate','B1','academic',2,'demonstrate proof show evidence'),
('w_academic_B1_29','limitation','/ˌlɪmɪˈteɪʃən/','noun','한계','A restriction on the extent of something.','Every study has its {limitations}.','모든 연구에는 한계가 있어요.','limitation','B1','academic',2,'limitation restriction boundary'),
('w_academic_B1_30','assumption','/əˈsʌmpʃən/','noun','가정','Something taken to be true without proof.','State your {assumptions} clearly.','가정을 명확하게 기술해 주세요.','assumption','B1','academic',2,'assumption premise belief'),
('w_academic_B1_31','observation','/ˌɒbzərˈveɪʃən/','noun','관찰','The action of watching something carefully.','Record your {observations} in a notebook.','관찰 내용을 노트에 기록해 주세요.','observation','B1','academic',2,'observation watching recording science'),
('w_academic_B1_32','pattern','/ˈpætərn/','noun','패턴','A regular and repeated arrangement.','Can you identify a {pattern} in the data?','데이터에서 패턴을 파악할 수 있나요?','pattern','B1','academic',2,'pattern repetition data'),
('w_academic_B1_33','perspective','/pərˈspɛktɪv/','noun','관점','A particular way of thinking about something.','Consider the problem from a different {perspective}.','다른 관점에서 문제를 생각해 보세요.','perspective','B1','academic',1,'perspective viewpoint angle'),
('w_academic_B1_34','influence','/ˈɪnfluəns/','noun','영향','The power to affect someone or something.','Culture has a strong {influence} on learning.','문화는 학습에 강한 영향을 미쳐요.','influence','B1','academic',2,'influence effect impact'),
('w_academic_B1_35','approach','/əˈproʊtʃ/','noun','접근 방식','A way of dealing with a problem or situation.','Try a different {approach}.','다른 접근 방식을 시도해 보세요.','approach','B1','academic',1,'approach method strategy'),

-- ============================================================
-- B2 — 35 words
-- ============================================================
('w_academic_B2_01','peer review','/pɪr rɪˈvjuː/','noun','동료 심사','Evaluation of work by experts in the same field.','The paper passed {peer review}.','그 논문은 동료 심사를 통과했어요.','peer review','B2','academic',1,'peer review journal evaluation expert'),
('w_academic_B2_02','dissertation','/ˌdɪsərˈteɪʃən/','noun','학위 논문','A long essay written for a university degree.','She spent two years on her {dissertation}.','그녀는 학위 논문에 2년을 보냈어요.','dissertation','B2','academic',1,'dissertation thesis university degree'),
('w_academic_B2_03','framework','/ˈfreɪmwɜːrk/','noun','이론적 틀','A conceptual structure used to analyze a topic.','The study uses a sociocultural {framework}.','그 연구는 사회문화적 틀을 사용해요.','framework','B2','academic',1,'framework theory model structure'),
('w_academic_B2_04','paradigm','/ˈpærədaɪm/','noun','패러다임','A typical example or model; a set of assumptions.','This research challenges the existing {paradigm}.','이 연구는 기존 패러다임에 도전해요.','paradigm','B2','academic',1,'paradigm model worldview shift'),
('w_academic_B2_05','qualitative','/ˈkwɒlɪtətɪv/','adjective','질적인','Relating to qualities rather than quantities.','We used {qualitative} interviews to gather data.','데이터 수집을 위해 질적 인터뷰를 사용했어요.','qualitative','B2','academic',1,'qualitative research interview observation'),
('w_academic_B2_06','quantitative','/ˈkwɒntɪtətɪv/','adjective','양적인','Relating to numbers or amounts.','The {quantitative} analysis showed a clear trend.','양적 분석은 명확한 추세를 보여줬어요.','quantitative','B2','academic',1,'quantitative data statistics numbers'),
('w_academic_B2_07','epistemology','/ɪˌpɪstɪˈmɒlədʒi/','noun','인식론','The branch of philosophy dealing with knowledge.','Her thesis draws on {epistemology}.','그녀의 논문은 인식론을 바탕으로 해요.','epistemology','B2','academic',2,'epistemology philosophy knowledge'),
('w_academic_B2_08','inference','/ˈɪnfərəns/','noun','추론','A conclusion reached from evidence and reasoning.','The {inference} drawn from the data is clear.','데이터에서 도출된 추론은 명확해요.','inference','B2','academic',1,'inference reasoning conclusion logic'),
('w_academic_B2_09','validity','/vəˈlɪdɪti/','noun','타당성','The quality of being logically sound.','Check the {validity} of your argument.','주장의 타당성을 확인해 주세요.','validity','B2','academic',1,'validity logic accuracy research'),
('w_academic_B2_10','reliability','/rɪˌlaɪəˈbɪlɪti/','noun','신뢰도','The quality of producing consistent results.','The {reliability} of the study was tested.','연구의 신뢰도가 검증되었어요.','reliability','B2','academic',1,'reliability consistency research'),
('w_academic_B2_11','triangulation','/traɪˌæŋɡjuˈleɪʃən/','noun','삼각검증','Using multiple methods to verify findings.','We used {triangulation} to confirm the results.','결과를 확인하기 위해 삼각검증을 사용했어요.','triangulation','B2','academic',2,'triangulation methods verification research'),
('w_academic_B2_12','bias','/ˈbaɪəs/','noun','편향','Unfair preference for one thing over another.','Researcher {bias} can affect the results.','연구자 편향은 결과에 영향을 미칠 수 있어요.','bias','B2','academic',1,'bias prejudice unfair skew'),
('w_academic_B2_13','generalize','/ˈdʒɛnərəlaɪz/','verb','일반화하다','To draw a broad conclusion from limited data.','It is difficult to {generalize} from this sample.','이 표본에서 일반화하기는 어려워요.','generalize','B2','academic',2,'generalization sample conclusion'),
('w_academic_B2_14','theoretical','/ˌθɪəˈrɛtɪkəl/','adjective','이론적인','Concerned with theory rather than practice.','This is a {theoretical} model.','이것은 이론적 모델이에요.','theoretical','B2','academic',2,'theoretical model abstract'),
('w_academic_B2_15','empiricism','/ɪmˈpɪrɪsɪzəm/','noun','경험주의','The theory that knowledge comes from experience.','{Empiricism} emphasizes observable evidence.','경험주의는 관찰 가능한 증거를 강조해요.','empiricism','B2','academic',2,'empiricism observation experience'),
('w_academic_B2_16','rhetoric','/ˈrɛtərɪk/','noun','수사학','The art of using language persuasively.','His use of {rhetoric} was very effective.','그의 수사학 사용은 매우 효과적이었어요.','rhetoric','B2','academic',2,'rhetoric persuasion language'),
('w_academic_B2_17','discourse','/ˈdɪskɔːrs/','noun','담론','Written or spoken communication or debate.','Academic {discourse} requires clear language.','학술 담론에는 명확한 언어가 필요해요.','discourse','B2','academic',1,'discourse language communication'),
('w_academic_B2_18','critique','/krɪˈtiːk/','noun','비평','A detailed analysis and assessment.','Write a {critique} of the article.','기사에 대한 비평을 써 주세요.','critique','B2','academic',1,'critique review analysis'),
('w_academic_B2_19','synthesis','/ˈsɪnθɪsɪs/','noun','종합','Combining elements to form a new whole.','The paper provides a {synthesis} of the literature.','논문은 문헌의 종합을 제공해요.','synthesis','B2','academic',1,'synthesis combination integration'),
('w_academic_B2_20','coherent','/koʊˈhɪərənt/','adjective','일관된','Logical and consistent.','Your argument must be {coherent}.','주장은 일관되어야 해요.','coherent','B2','academic',2,'coherent logical consistent'),
('w_academic_B2_21','annotate','/ˈænəteɪt/','verb','주석을 달다','To add notes explaining parts of a text.','{Annotate} the source as you read.','읽으면서 출처에 주석을 달아 주세요.','annotate','B2','academic',2,'annotation notes text comment'),
('w_academic_B2_22','literature review','/ˈlɪtərɪtʃər rɪˈvjuː/','noun','문헌 검토','A survey of existing research on a topic.','Write a {literature review} first.','먼저 문헌 검토를 작성해 주세요.','literature review','B2','academic',1,'literature review research survey'),
('w_academic_B2_23','longitudinal','/ˌlɒŋɡɪˈtjuːdɪnəl/','adjective','종단적인','Relating to data collected over a long period.','A {longitudinal} study tracks subjects over years.','종단 연구는 수년에 걸쳐 대상을 추적해요.','longitudinal','B2','academic',2,'longitudinal study time series'),
('w_academic_B2_24','cross-sectional','/ˈkrɒs ˌsɛkʃənəl/','adjective','횡단적인','Relating to data collected at one point in time.','A {cross-sectional} survey was conducted.','횡단 설문 조사가 실시되었어요.','cross-sectional','B2','academic',2,'cross-sectional study snapshot'),
('w_academic_B2_25','causality','/kɔːˈzælɪti/','noun','인과관계','The relationship between cause and effect.','Correlation does not imply {causality}.','상관관계가 인과관계를 의미하지는 않아요.','causality','B2','academic',2,'causality cause effect relationship'),
('w_academic_B2_26','replicate','/ˈrɛplɪkeɪt/','verb','재현하다','To repeat an experiment to verify results.','Other researchers could not {replicate} the study.','다른 연구자들은 그 연구를 재현할 수 없었어요.','replicate','B2','academic',2,'replication experiment verification'),
('w_academic_B2_27','citation','/saɪˈteɪʃən/','noun','인용','A reference to a source used in a paper.','Include the {citation} in APA format.','APA 형식으로 인용을 포함해 주세요.','citation','B2','academic',1,'citation reference bibliography APA'),
('w_academic_B2_28','paraphrase','/ˈpærəfreɪz/','verb','바꿔 말하다','To restate text in different words.','{Paraphrase} the quotation rather than copying it.','그대로 복사하지 말고 인용문을 바꿔 말해 주세요.','paraphrase','B2','academic',2,'paraphrase rewrite rephrase'),
('w_academic_B2_29','plagiarism','/ˈpleɪdʒɪərɪzəm/','noun','표절','Using someone else''s work without credit.','{Plagiarism} is a serious academic offense.','표절은 심각한 학문적 위반이에요.','plagiarism','B2','academic',1,'plagiarism copying academic integrity'),
('w_academic_B2_30','rationale','/ˌræʃəˈnæl/','noun','근거','A set of reasons for a course of action.','Explain the {rationale} for your study.','연구의 근거를 설명해 주세요.','rationale','B2','academic',2,'rationale reason justification'),
('w_academic_B2_31','scope','/skoʊp/','noun','범위','The extent of the area or subject matter.','Define the {scope} of your research.','연구의 범위를 정의해 주세요.','scope','B2','academic',2,'scope range extent boundary'),
('w_academic_B2_32','thematic','/θɪˈmætɪk/','adjective','주제별의','Relating to or based on themes.','The study uses {thematic} analysis.','연구는 주제별 분석을 사용해요.','thematic','B2','academic',2,'thematic theme analysis coding'),
('w_academic_B2_33','rigorous','/ˈrɪɡərəs/','adjective','엄격한','Extremely thorough and careful.','The review process is very {rigorous}.','검토 과정은 매우 엄격해요.','rigorous','B2','academic',2,'rigorous thorough strict'),
('w_academic_B2_34','refute','/rɪˈfjuːt/','verb','반박하다','To prove a statement or theory to be wrong.','The new data {refutes} the original claim.','새 데이터가 원래 주장을 반박해요.','refute','B2','academic',2,'refute disprove counter argument'),
('w_academic_B2_35','substantiate','/səbˈstænʃieɪt/','verb','입증하다','To provide evidence to support a claim.','Can you {substantiate} this claim with data?','데이터로 이 주장을 입증할 수 있나요?','substantiate','B2','academic',2,'substantiate prove evidence support'),

-- ============================================================
-- C1 — 35 words
-- ============================================================
('w_academic_C1_01','ontology','/ɒnˈtɒlədʒi/','noun','존재론','The branch of philosophy dealing with the nature of being.','Researchers must clarify their {ontology}.','연구자는 자신의 존재론을 명확히 해야 해요.','ontology','C1','academic',2,'ontology philosophy being existence'),
('w_academic_C1_02','axiology','/ˌæksiˈɒlədʒi/','noun','가치론','The study of values and value judgments.','{Axiology} shapes the ethical stance of research.','가치론은 연구의 윤리적 입장을 형성해요.','axiology','C1','academic',2,'axiology values ethics philosophy'),
('w_academic_C1_03','deductive','/dɪˈdʌktɪv/','adjective','연역적인','Moving from general principles to specific conclusions.','A {deductive} approach starts with a theory.','연역적 접근법은 이론에서 시작해요.','deductive','C1','academic',1,'deductive reasoning logic theory'),
('w_academic_C1_04','inductive','/ɪnˈdʌktɪv/','adjective','귀납적인','Moving from specific observations to general conclusions.','{Inductive} reasoning builds theory from data.','귀납적 추론은 데이터에서 이론을 구축해요.','inductive','C1','academic',1,'inductive reasoning data pattern'),
('w_academic_C1_05','abductive','/æbˈdʌktɪv/','adjective','귀추적인','Inferring the best explanation from observations.','{Abductive} reasoning seeks the most likely explanation.','귀추적 추론은 가장 가능성 있는 설명을 찾아요.','abductive','C1','academic',2,'abductive reasoning inference explanation'),
('w_academic_C1_06','hermeneutics','/ˌhɜːrmɪˈnjuːtɪks/','noun','해석학','The theory and methodology of text interpretation.','{Hermeneutics} is central to qualitative research.','해석학은 질적 연구의 핵심이에요.','hermeneutics','C1','academic',2,'hermeneutics interpretation text meaning'),
('w_academic_C1_07','phenomenology','/fɪˌnɒmɪˈnɒlədʒi/','noun','현상학','The study of conscious experience and its structures.','{Phenomenology} explores lived human experience.','현상학은 살아있는 인간 경험을 탐구해요.','phenomenology','C1','academic',2,'phenomenology experience consciousness'),
('w_academic_C1_08','positivism','/ˈpɒzɪtɪvɪzəm/','noun','실증주의','The view that knowledge comes from empirical evidence.','{Positivism} favors measurable, observable data.','실증주의는 측정 가능하고 관찰 가능한 데이터를 선호해요.','positivism','C1','academic',2,'positivism science empirical data'),
('w_academic_C1_09','constructivism','/kənˈstrʌktɪvɪzəm/','noun','구성주의','The view that knowledge is constructed by the learner.','{Constructivism} holds that reality is socially created.','구성주의는 현실이 사회적으로 구성된다고 봐요.','constructivism','C1','academic',2,'constructivism knowledge learning'),
('w_academic_C1_10','pragmatism','/ˈpræɡmətɪzəm/','noun','실용주의','The approach that assesses theories by their practical results.','{Pragmatism} values what works in practice.','실용주의는 실제로 효과 있는 것을 중요시해요.','pragmatism','C1','academic',2,'pragmatism practice utility'),
('w_academic_C1_11','dialectic','/ˌdaɪəˈlɛktɪk/','noun','변증법','A method of examining opposing ideas to find truth.','Hegel''s {dialectic} shaped modern philosophy.','헤겔의 변증법은 현대 철학을 형성했어요.','dialectic','C1','academic',2,'dialectic debate thesis antithesis'),
('w_academic_C1_12','reflexivity','/ˌriːflɛkˈsɪvɪti/','noun','성찰성','The awareness of a researcher''s influence on their research.','{Reflexivity} is essential in qualitative inquiry.','성찰성은 질적 탐구에서 필수적이에요.','reflexivity','C1','academic',2,'reflexivity self awareness research'),
('w_academic_C1_13','hegemony','/hɪˈdʒɛməni/','noun','헤게모니','Dominance of one group over others.','The study examines cultural {hegemony}.','연구는 문화적 헤게모니를 분석해요.','hegemony','C1','academic',2,'hegemony power dominance culture'),
('w_academic_C1_14','discourse analysis','/ˈdɪskɔːrs əˈnælɪsɪs/','noun','담론 분석','The study of language in its social context.','{Discourse analysis} reveals power relations in texts.','담론 분석은 텍스트의 권력 관계를 드러내요.','discourse analysis','C1','academic',2,'discourse analysis language power'),
('w_academic_C1_15','meta-analysis','/ˌmɛtə əˈnælɪsɪs/','noun','메타 분석','Statistical analysis combining results from multiple studies.','The {meta-analysis} included 50 studies.','메타 분석은 50개의 연구를 포함했어요.','meta-analysis','C1','academic',1,'meta-analysis statistics systematic review'),
('w_academic_C1_16','grounded theory','/ˈɡraʊndɪd ˈθɪəri/','noun','근거 이론','A qualitative method where theory emerges from data.','She used {grounded theory} to analyze interviews.','그녀는 인터뷰 분석에 근거 이론을 사용했어요.','grounded theory','C1','academic',2,'grounded theory qualitative research'),
('w_academic_C1_17','ethnography','/ɛθˈnɒɡrəfi/','noun','민족지학','The study of people and cultures through observation.','{Ethnography} involves deep immersion in a community.','민족지학은 공동체에 깊이 침잠하는 것을 포함해요.','ethnography','C1','academic',2,'ethnography culture fieldwork observation'),
('w_academic_C1_18','critical realism','/ˈkrɪtɪkəl ˈrɪəlɪzəm/','noun','비판적 실재론','The view that reality exists independently but is interpreted.','{Critical realism} bridges positivism and constructivism.','비판적 실재론은 실증주의와 구성주의를 잇는 교량이에요.','critical realism','C1','academic',2,'critical realism philosophy research'),
('w_academic_C1_19','agency','/ˈeɪdʒənsi/','noun','행위성','The capacity of individuals to act independently.','The study examines human {agency} in social structures.','연구는 사회 구조 안에서 인간의 행위성을 살펴봐요.','agency','C1','academic',2,'agency action freedom individual'),
('w_academic_C1_20','structure','/ˈstrʌktʃər/','noun','구조','The way parts are organized in a system.','The tension between {structure} and agency is central.','구조와 행위성 사이의 긴장이 핵심이에요.','structure','C1','academic',2,'structure system organization'),
('w_academic_C1_21','intersubjective','/ˌɪntərsəbˈdʒɛktɪv/','adjective','상호주관적인','Shared between subjects; existing between people.','Meaning is {intersubjective} in nature.','의미는 본질적으로 상호주관적이에요.','intersubjective','C1','academic',2,'intersubjective shared meaning communication'),
('w_academic_C1_22','normative','/ˈnɔːrmətɪv/','adjective','규범적인','Establishing a standard or norm.','The study takes a {normative} approach.','연구는 규범적 접근법을 취해요.','normative','C1','academic',2,'normative standard norm ethics'),
('w_academic_C1_23','teleology','/ˌtɛliˈɒlədʒi/','noun','목적론','The study of purpose or final causes.','{Teleology} asks what something is designed to achieve.','목적론은 무언가가 달성하도록 설계된 것을 물어봐요.','teleology','C1','academic',2,'teleology purpose goal design'),
('w_academic_C1_24','binary','/ˈbaɪnəri/','adjective','이분법적인','Consisting of two opposing elements.','The paper challenges the {binary} of nature and culture.','논문은 자연과 문화의 이분법에 도전해요.','binary','C1','academic',2,'binary opposition duality'),
('w_academic_C1_25','ideology','/ˌaɪdiˈɒlədʒi/','noun','이데올로기','A system of ideas forming the basis of economic or political theory.','{Ideology} shapes how we perceive reality.','이데올로기는 우리가 현실을 인식하는 방식을 형성해요.','ideology','C1','academic',2,'ideology belief system politics'),
('w_academic_C1_26','abstraction','/æbˈstrækʃən/','noun','추상화','The process of forming general concepts from specific examples.','High levels of {abstraction} can obscure meaning.','높은 수준의 추상화는 의미를 흐릴 수 있어요.','abstraction','C1','academic',2,'abstraction concept theory general'),
('w_academic_C1_27','articulate','/ɑːrˈtɪkjuleɪt/','verb','명확히 표현하다','To express ideas clearly and fluently.','She could {articulate} her argument precisely.','그녀는 자신의 주장을 정확하게 표현할 수 있었어요.','articulate','C1','academic',2,'articulate express clear language'),
('w_academic_C1_28','nuance','/ˈnjuːɑːns/','noun','뉘앙스','A subtle difference in meaning or expression.','The translation loses important {nuances}.','번역은 중요한 뉘앙스를 잃어요.','nuance','C1','academic',2,'nuance subtle difference meaning'),
('w_academic_C1_29','contingent','/kənˈtɪndʒənt/','adjective','우연적인','Dependent on circumstances; not certain.','The outcome is {contingent} on several factors.','결과는 여러 요인에 따라 달라져요.','contingent','C1','academic',2,'contingent dependent circumstances'),
('w_academic_C1_30','problematize','/ˈprɒbləmətaɪz/','verb','문제화하다','To treat something as a problem requiring analysis.','We should {problematize} the assumption.','우리는 그 가정을 문제화해야 해요.','problematize','C1','academic',2,'problematize question challenge'),
('w_academic_C1_31','contextualize','/kənˈtɛkstjuəlaɪz/','verb','맥락화하다','To place something in its wider context.','Always {contextualize} your findings.','항상 연구 결과를 맥락화해 주세요.','contextualize','C1','academic',2,'contextualize context situate'),
('w_academic_C1_32','operationalize','/ˌɒpəreɪʃənəlaɪz/','verb','조작화하다','To define a variable so it can be measured.','{Operationalize} each concept before collecting data.','데이터 수집 전에 각 개념을 조작화해 주세요.','operationalize','C1','academic',2,'operationalize define measure variable'),
('w_academic_C1_33','heuristic','/hjʊˈrɪstɪk/','adjective','발견적인','Enabling discovery through exploration.','This model serves as a {heuristic} tool.','이 모델은 발견적 도구 역할을 해요.','heuristic','C1','academic',2,'heuristic discovery exploration tool'),
('w_academic_C1_34','tautology','/tɔːˈtɒlədʒi/','noun','동어반복','A statement that repeats itself unnecessarily.','Avoid {tautology} in academic writing.','학술 글쓰기에서 동어반복을 피해 주세요.','tautology','C1','academic',2,'tautology repetition logic'),
('w_academic_C1_35','juxtapose','/ˈdʒʌkstəpoʊz/','verb','나란히 놓다','To place two things together for contrast.','{Juxtapose} the two theories to highlight differences.','차이를 강조하기 위해 두 이론을 나란히 놓아 주세요.','juxtapose','C1','academic',2,'juxtapose contrast comparison'),

-- ============================================================
-- C2 — 35 words
-- ============================================================
('w_academic_C2_01','deconstruction','/ˌdiːkənˈstrʌkʃən/','noun','해체','A method of critical analysis of texts developed by Derrida.','{Deconstruction} exposes internal contradictions in texts.','해체는 텍스트의 내부 모순을 드러내요.','deconstruction','C2','academic',2,'deconstruction Derrida philosophy text'),
('w_academic_C2_02','logocentrism','/ˌloʊɡoʊˈsɛntrɪzəm/','noun','로고스중심주의','The privileging of speech and reason over writing.','{Logocentrism} assumes a fixed center of meaning.','로고스중심주의는 의미의 고정된 중심을 가정해요.','logocentrism','C2','academic',2,'logocentrism Derrida language philosophy'),
('w_academic_C2_03','différance','/ˌdɪfəˈrɑːns/','noun','차연','Derrida''s term for the endless deferral of meaning.','{Différance} shows that meaning is never fully present.','차연은 의미가 결코 완전히 현존하지 않음을 보여줘요.','différance','C2','academic',2,'différance Derrida meaning language'),
('w_academic_C2_04','praxis','/ˈpræksɪs/','noun','실천','The process of putting theory into transformative action.','{Praxis} unites theory and transformative action.','실천은 이론과 변혁적 행동을 결합해요.','praxis','C2','academic',2,'praxis practice theory action'),
('w_academic_C2_05','intersubjectivity','/ˌɪntərsəbdʒɛkˈtɪvɪti/','noun','상호주관성','Shared understanding between different subjects.','{Intersubjectivity} is the basis of social meaning.','상호주관성은 사회적 의미의 기반이에요.','intersubjectivity','C2','academic',2,'intersubjectivity shared understanding social'),
('w_academic_C2_06','rhizome','/ˈraɪzoʊm/','noun','리좀','Deleuze''s metaphor for non-hierarchical knowledge networks.','{Rhizome} thinking challenges linear models of knowledge.','리좀적 사고는 선형적 지식 모델에 도전해요.','rhizome','C2','academic',2,'rhizome Deleuze network philosophy'),
('w_academic_C2_07','bricolage','/ˌbrɪkəˈlɑːʒ/','noun','브리콜라주','Using existing materials in new ways to create meaning.','{Bricolage} in research combines multiple methods.','연구에서의 브리콜라주는 다양한 방법을 결합해요.','bricolage','C2','academic',2,'bricolage creative method research'),
('w_academic_C2_08','heteroglossia','/ˌhɛtərəˈɡlɒsiə/','noun','이언론','Bakhtin''s concept of diverse voices within a text.','{Heteroglossia} reveals the multiplicity of voices in discourse.','이언론은 담론 속 목소리의 다양성을 드러내요.','heteroglossia','C2','academic',2,'heteroglossia Bakhtin language voices'),
('w_academic_C2_09','aporia','/əˈpɔːriə/','noun','아포리아','A philosophical puzzle with no apparent solution.','The text ends in deliberate {aporia}.','텍스트는 의도적인 아포리아로 끝나요.','aporia','C2','academic',2,'aporia paradox puzzle philosophy'),
('w_academic_C2_10','episteme','/ɛˈpɪstɪmi/','noun','에피스테메','Foucault''s term for the underlying knowledge structure of an era.','Each historical period has its own {episteme}.','각 역사적 시기는 고유한 에피스테메를 가져요.','episteme','C2','academic',2,'episteme Foucault knowledge era'),
('w_academic_C2_11','biopower','/ˈbaɪoʊpaʊər/','noun','생체권력','Foucault''s concept of power over biological life.','{Biopower} regulates populations through scientific knowledge.','생체권력은 과학적 지식을 통해 인구를 통제해요.','biopower','C2','academic',2,'biopower Foucault power body'),
('w_academic_C2_12','simulacrum','/ˌsɪmjʊˈleɪkrəm/','noun','시뮬라크르','A copy or image that replaces and obscures the original.','{Simulacrum} is a key concept in Baudrillard''s work.','시뮬라크르는 보드리야르의 핵심 개념이에요.','simulacrum','C2','academic',2,'simulacrum Baudrillard copy image'),
('w_academic_C2_13','subaltern','/ˈsʌbəltərn/','noun','서발턴','Groups marginalized in colonial and postcolonial discourse.','Spivak asks, "Can the {subaltern} speak?"','스피박은 "서발턴은 말할 수 있는가?"라고 물어요.','subaltern','C2','academic',2,'subaltern Spivak postcolonial marginalized'),
('w_academic_C2_14','hybridity','/haɪˈbrɪdɪti/','noun','혼종성','Bhabha''s concept of cultural mixing in colonial contexts.','{Hybridity} unsettles fixed cultural identities.','혼종성은 고정된 문화적 정체성을 흔들어요.','hybridity','C2','academic',2,'hybridity Bhabha culture colonial'),
('w_academic_C2_15','genealogy','/ˌdʒiːniˈælədʒi/','noun','계보학','Foucault''s method of tracing the history of ideas.','{Genealogy} reveals how power shapes knowledge.','계보학은 권력이 지식을 어떻게 형성하는지 드러내요.','genealogy','C2','academic',2,'genealogy Foucault history power'),
('w_academic_C2_16','alterity','/ɔːlˈtɛrɪti/','noun','타자성','The state of being other or different.','Levinas emphasizes {alterity} as an ethical encounter.','레비나스는 타자성을 윤리적 만남으로 강조해요.','alterity','C2','academic',2,'alterity other difference ethics'),
('w_academic_C2_17','immanence','/ˈɪmənəns/','noun','내재성','The quality of being inherent within experience.','{Immanence} contrasts with transcendence in philosophy.','내재성은 철학에서 초월성과 대비돼요.','immanence','C2','academic',2,'immanence experience philosophy being'),
('w_academic_C2_18','transcendence','/trænˈsɛndəns/','noun','초월성','The existence or experience beyond normal physical limits.','{Transcendence} refers to going beyond ordinary limits.','초월성은 일상적인 한계를 넘어가는 것을 의미해요.','transcendence','C2','academic',2,'transcendence beyond limits philosophy'),
('w_academic_C2_19','autopoiesis','/ˌɔːtəpɔɪˈiːsɪs/','noun','자기생산','A system''s ability to produce and maintain itself.','{Autopoiesis} describes self-organizing biological systems.','자기생산은 자기 조직화 생물학적 시스템을 설명해요.','autopoiesis','C2','academic',2,'autopoiesis system self organizing'),
('w_academic_C2_20','onto-epistemology','/ˈɒntoʊ ɪˌpɪstɪˈmɒlədʒi/','noun','존재-인식론','The inseparability of ontology and epistemology.','{Onto-epistemology} rejects the divide between being and knowing.','존재-인식론은 존재와 앎의 분리를 거부해요.','onto-epistemology','C2','academic',2,'onto-epistemology philosophy knowledge being'),
('w_academic_C2_21','intertextuality','/ˌɪntərtɛkstʃuˈælɪti/','noun','상호텍스트성','The relationship between texts referencing each other.','{Intertextuality} shows that no text exists in isolation.','상호텍스트성은 어떤 텍스트도 고립되어 존재하지 않음을 보여줘요.','intertextuality','C2','academic',2,'intertextuality text reference relationship'),
('w_academic_C2_22','polyphony','/pəˈlɪfəni/','noun','다성성','The presence of multiple independent voices.','{Polyphony} in a novel reflects social diversity.','소설에서의 다성성은 사회적 다양성을 반영해요.','polyphony','C2','academic',2,'polyphony voices dialogue Bakhtin'),
('w_academic_C2_23','deterritorialization','/diːˌtɛrɪtɔːriəlaɪˈzeɪʃən/','noun','탈영토화','The process of disrupting established social and cultural codes.','{Deterritorialization} breaks fixed structures of thought.','탈영토화는 사고의 고정된 구조를 해체해요.','deterritorialization','C2','academic',2,'deterritorialization Deleuze social code'),
('w_academic_C2_24','nomadology','/ˌnoʊməˈdɒlədʒi/','noun','유목론','Deleuze''s philosophy of non-fixed identity and movement.','{Nomadology} resists stable categorization.','유목론은 안정적 범주화에 저항해요.','nomadology','C2','academic',2,'nomadology Deleuze movement identity'),
('w_academic_C2_25','pharmakon','/ˈfɑːrməkɒn/','noun','파르마콘','Derrida''s term for something that is both remedy and poison.','Writing is a {pharmakon} — both aid and threat to memory.','글쓰기는 기억에 도움이자 위협인 파르마콘이에요.','pharmakon','C2','academic',2,'pharmakon Derrida remedy poison'),
('w_academic_C2_26','metanarrative','/ˈmɛtəˌnærətɪv/','noun','거대서사','An overarching story that gives meaning to all events.','Lyotard critiques the collapse of {metanarratives}.','리오타르는 거대서사의 붕괴를 비판해요.','metanarrative','C2','academic',2,'metanarrative grand narrative Lyotard'),
('w_academic_C2_27','semiosis','/ˌsiːmiˈoʊsɪs/','noun','기호작용','The process of making and interpreting signs.','{Semiosis} underpins all communicative activity.','기호작용은 모든 의사소통 활동의 바탕이 돼요.','semiosis','C2','academic',2,'semiosis sign meaning communication'),
('w_academic_C2_28','dialectical materialism','/ˌdaɪəˈlɛktɪkəl məˈtɪərɪəlɪzəm/','noun','변증법적 유물론','Marx''s application of dialectic to material conditions.','{Dialectical materialism} links ideas to economic forces.','변증법적 유물론은 사상을 경제력과 연결해요.','dialectical materialism','C2','academic',2,'dialectical materialism Marx philosophy'),
('w_academic_C2_29','panopticon','/pænˈɒptɪkɒn/','noun','판옵티콘','Bentham''s prison design used by Foucault to describe surveillance.','The modern workplace resembles a {panopticon}.','현대 직장은 판옵티콘과 닮았어요.','panopticon','C2','academic',2,'panopticon Foucault surveillance power'),
('w_academic_C2_30','habitus','/ˈhæbɪtəs/','noun','아비투스','Bourdieu''s concept of durable social dispositions.','{Habitus} shapes how people perceive and act in the world.','아비투스는 사람들이 세상을 인식하고 행동하는 방식을 형성해요.','habitus','C2','academic',2,'habitus Bourdieu social disposition'),
('w_academic_C2_31','symbolic capital','/ˈsɪmbɒlɪk ˈkæpɪtəl/','noun','상징 자본','Bourdieu''s concept of prestige and recognition as a social resource.','{Symbolic capital} confers social authority.','상징 자본은 사회적 권위를 부여해요.','symbolic capital','C2','academic',2,'symbolic capital Bourdieu prestige'),
('w_academic_C2_32','doxa','/ˈdɒksə/','noun','독사','Bourdieu''s term for unquestioned social beliefs.','{Doxa} is the set of assumptions we take for granted.','독사는 당연시하는 가정들의 집합이에요.','doxa','C2','academic',2,'doxa Bourdieu belief assumption'),
('w_academic_C2_33','liminality','/ˌlɪmɪˈnælɪti/','noun','경계성','The ambiguous transitional state between two phases.','{Liminality} describes in-between spaces of transformation.','경계성은 변환의 중간 공간을 묘사해요.','liminality','C2','academic',2,'liminality threshold transition ritual'),
('w_academic_C2_34','apophatic','/ˌæpəˈfætɪk/','adjective','부정적 신학적인','Describing something by what it is not.','The author uses an {apophatic} approach to define the concept.','저자는 개념을 정의하기 위해 부정적 접근법을 사용해요.','apophatic','C2','academic',2,'apophatic negation definition philosophy'),
('w_academic_C2_35','exegesis','/ˌɛksɪˈdʒiːsɪs/','noun','주석','Critical interpretation of a text, especially religious scripture.','Her {exegesis} of the poem was groundbreaking.','그녀의 시에 대한 주석은 획기적이었어요.','exegesis','C2','academic',2,'exegesis interpretation text commentary')
ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- PATTERNS (sentences)
-- ============================================================

INSERT INTO sentences (id, en, ko, highlight, tip, situation, cefr, topic_id, type, beats, sort_order) VALUES

-- ============================================================
-- A1 — 7 patterns (수업 중 표현)
-- ============================================================
('s_academic_A1_01','Can you explain that again?','다시 설명해 주실 수 있나요?','explain that again','이해 못했을 때 정중하게 다시 설명을 요청하는 표현이에요.','수업 중','A1','academic','pattern',NULL,1),
('s_academic_A1_02','How do you spell that word?','그 단어의 철자가 어떻게 되나요?','spell that word','단어 철자를 모를 때 물어보는 기본 표현이에요.','수업 중','A1','academic','pattern',NULL,2),
('s_academic_A1_03','I don''t understand. Can you speak more slowly?','이해가 안 돼요. 더 천천히 말씀해 주실 수 있나요?','speak more slowly','속도가 너무 빠를 때 정중하게 요청하는 표현이에요.','수업 중','A1','academic','pattern',NULL,3),
('s_academic_A1_04','What does this word mean?','이 단어는 무슨 의미인가요?','this word mean','새로운 단어를 만났을 때 뜻을 묻는 가장 기본적인 표현이에요.','수업 중','A1','academic','pattern',NULL,4),
('s_academic_A1_05','May I ask a question?','질문해도 되나요?','May I ask a question','수업 중에 조용히 질문 허락을 구하는 표현이에요.','수업 중','A1','academic','pattern',NULL,5),
('s_academic_A1_06','Is this the right answer?','이게 맞는 답인가요?','the right answer','자신의 답이 맞는지 확인할 때 쓰는 표현이에요.','수업 중','A1','academic','pattern',NULL,6),
('s_academic_A1_07','Please write it on the board.','칠판에 적어 주세요.','write it on the board','선생님에게 칠판에 적어달라고 부탁하는 표현이에요.','수업 중','A1','academic','pattern',NULL,7),

-- ============================================================
-- A2 — 7 patterns (질문·이해)
-- ============================================================
('s_academic_A2_01','Could you give me an example?','예시를 들어 주실 수 있나요?','give me an example','설명을 더 잘 이해하고 싶을 때 예시를 요청하는 표현이에요.','수업·토론 중','A2','academic','pattern',NULL,1),
('s_academic_A2_02','What is the main point of this article?','이 글의 핵심 요점은 무엇인가요?','main point','글을 읽고 중심 내용을 파악할 때 쓰는 표현이에요.','독서·발표 후','A2','academic','pattern',NULL,2),
('s_academic_A2_03','I think I understand, but let me check.','이해한 것 같은데, 확인해 볼게요.','I think I understand','완전히 확신하지 못할 때 겸손하게 확인하는 표현이에요.','수업·학습 중','A2','academic','pattern',NULL,3),
('s_academic_A2_04','Can you summarize what we learned today?','오늘 배운 것을 요약해 주실 수 있나요?','summarize what we learned','수업이 끝날 때 내용을 정리하며 묻는 표현이에요.','수업 마무리','A2','academic','pattern',NULL,4),
('s_academic_A2_05','In my opinion, the results are interesting.','제 의견으로는, 결과가 흥미로워요.','In my opinion','자신의 견해를 부드럽게 제시하는 표현이에요.','토론·발표 중','A2','academic','pattern',NULL,5),
('s_academic_A2_06','Where did you find that information?','그 정보를 어디서 찾으셨나요?','find that information','출처를 확인할 때 쓰는 표현이에요.','연구·토론 중','A2','academic','pattern',NULL,6),
('s_academic_A2_07','Let''s discuss the topic together.','함께 주제를 토론해 봐요.','discuss the topic together','그룹 토론을 시작할 때 쓰는 자연스러운 표현이에요.','그룹 학습','A2','academic','pattern',NULL,7),

-- ============================================================
-- B1 — 7 patterns (논거 제시)
-- ============================================================
('s_academic_B1_01','The evidence suggests that this hypothesis is correct.','증거는 이 가설이 옳다는 것을 시사해요.','evidence suggests','데이터가 이론을 뒷받침할 때 쓰는 학술적 표현이에요.','논문·발표','B1','academic','pattern',NULL,1),
('s_academic_B1_02','Based on the data, we can conclude that the method is effective.','데이터를 바탕으로, 그 방법이 효과적이라고 결론 내릴 수 있어요.','Based on the data','데이터 근거로 결론을 이끌어낼 때 쓰는 표현이에요.','연구 발표','B1','academic','pattern',NULL,2),
('s_academic_B1_03','This study aims to analyze the correlation between variables.','이 연구는 변수 간의 상관관계를 분석하는 것을 목표로 해요.','analyze the correlation between variables','연구 목적을 설명할 때 쓰는 공식적인 표현이에요.','논문 서론','B1','academic','pattern',NULL,3),
('s_academic_B1_04','One limitation of this study is the small sample size.','이 연구의 한 가지 한계는 표본 크기가 작다는 점이에요.','limitation of this study','연구의 약점을 솔직하게 인정하는 학술적 표현이에요.','논문 결론','B1','academic','pattern',NULL,4),
('s_academic_B1_05','The results demonstrate a significant improvement.','결과는 유의미한 향상을 보여줘요.','demonstrate a significant improvement','통계적으로 유의미한 결과를 발표할 때 쓰는 표현이에요.','연구 결과 발표','B1','academic','pattern',NULL,5),
('s_academic_B1_06','It is important to cite all your sources correctly.','모든 출처를 정확하게 인용하는 것이 중요해요.','cite all your sources correctly','학술 글쓰기에서 인용의 중요성을 강조하는 표현이에요.','글쓰기 지도','B1','academic','pattern',NULL,6),
('s_academic_B1_07','We need to consider the methodological limitations.','방법론적 한계를 고려해야 해요.','methodological limitations','연구 방법의 제약을 논의할 때 쓰는 표현이에요.','논문 심사','B1','academic','pattern',NULL,7),

-- ============================================================
-- B2 — 7 patterns (연구 방법)
-- ============================================================
('s_academic_B2_01','A mixed-methods approach was adopted to ensure both validity and reliability.','타당성과 신뢰도를 모두 확보하기 위해 혼합 방법론을 채택했어요.','validity and reliability','두 개의 핵심 연구 품질 지표를 동시에 다루는 표현이에요.','연구 방법 섹션','B2','academic','pattern',NULL,1),
('s_academic_B2_02','The qualitative data were analyzed using thematic analysis.','질적 데이터는 주제별 분석을 사용하여 분석되었어요.','qualitative data were analyzed using thematic analysis','질적 연구 방법을 설명할 때 쓰는 공식 표현이에요.','연구 방법','B2','academic','pattern',NULL,2),
('s_academic_B2_03','The findings must be interpreted within the theoretical framework outlined earlier.','연구 결과는 앞서 제시한 이론적 틀 안에서 해석되어야 해요.','interpreted within the theoretical framework','이론과 결과를 연결할 때 쓰는 학술적 표현이에요.','논문 논의','B2','academic','pattern',NULL,3),
('s_academic_B2_04','Peer review ensures the quality and credibility of published research.','동료 심사는 게재된 연구의 질과 신뢰성을 보장해요.','Peer review ensures the quality','학술 출판 시스템을 설명하는 표현이에요.','연구 윤리 논의','B2','academic','pattern',NULL,4),
('s_academic_B2_05','The study operationalized the concept of engagement as time-on-task.','연구는 참여도 개념을 과제 시간으로 조작화했어요.','operationalized the concept of engagement','추상적 개념을 측정 가능하게 정의하는 방법을 설명하는 표현이에요.','연구 설계','B2','academic','pattern',NULL,5),
('s_academic_B2_06','The literature review revealed a significant gap in existing research.','문헌 검토는 기존 연구에서 상당한 공백을 드러냈어요.','literature review revealed a significant gap','연구의 필요성을 정당화하는 표현이에요.','논문 서론','B2','academic','pattern',NULL,6),
('s_academic_B2_07','Triangulation of data sources strengthened the credibility of the findings.','데이터 출처의 삼각검증은 연구 결과의 신뢰성을 강화했어요.','Triangulation of data sources','여러 데이터 출처로 결과를 검증하는 방법을 설명하는 표현이에요.','연구 방법','B2','academic','pattern',NULL,7),

-- ============================================================
-- C1 — 7 patterns (학술 토론)
-- ============================================================
('s_academic_C1_01','The ontological assumptions underlying this research privilege a realist view of knowledge.','이 연구의 기저에 있는 존재론적 가정은 지식에 대한 실재론적 관점을 우선시해요.','ontological assumptions underlying','연구의 철학적 기반을 비판적으로 검토하는 표현이에요.','학술 세미나','C1','academic','pattern',NULL,1),
('s_academic_C1_02','The deductive framework constrains the researcher''s ability to uncover emergent themes.','연역적 틀은 연구자가 출현하는 주제를 발견하는 능력을 제한해요.','deductive framework constrains','연역적 방법론의 한계를 논의하는 표현이에요.','방법론 토론','C1','academic','pattern',NULL,2),
('s_academic_C1_03','A phenomenological approach foregrounds the lived experience of the participants.','현상학적 접근법은 참여자의 살아있는 경험을 전면에 내세워요.','phenomenological approach foregrounds','현상학적 연구 방법의 핵심 특성을 설명하는 표현이에요.','연구 설계 발표','C1','academic','pattern',NULL,3),
('s_academic_C1_04','This paper problematizes the binary opposition between objective and subjective knowledge.','이 논문은 객관적 지식과 주관적 지식 사이의 이분법적 대립을 문제화해요.','problematizes the binary opposition','이분법적 사고를 비판적으로 다루는 학술 논문 표현이에요.','논문 서론·토론','C1','academic','pattern',NULL,4),
('s_academic_C1_05','Reflexivity requires the researcher to critically examine their own positionality.','성찰성은 연구자가 자신의 위치성을 비판적으로 검토할 것을 요구해요.','Reflexivity requires','질적 연구에서 성찰성의 역할을 설명하는 표현이에요.','연구 방법 발표','C1','academic','pattern',NULL,5),
('s_academic_C1_06','The hegemonic discourse normalizes certain assumptions while marginalizing others.','헤게모니적 담론은 특정 가정을 정상화하면서 다른 것들을 소외시켜요.','hegemonic discourse normalizes','권력과 담론의 관계를 분석하는 표현이에요.','비판 이론 세미나','C1','academic','pattern',NULL,6),
('s_academic_C1_07','Grounded theory allows theory to emerge inductively from the data rather than being imposed a priori.','근거 이론은 이론이 사전에 부과되는 것이 아니라 데이터에서 귀납적으로 출현하도록 해요.','emerge inductively from the data','근거 이론의 핵심 원리를 설명하는 표현이에요.','연구 방법론 강의','C1','academic','pattern',NULL,7),

-- ============================================================
-- C2 — 7 patterns (논문 표현)
-- ============================================================
('s_academic_C2_01','Derrida''s concept of différance destabilizes the logocentric assumption that meaning is fixed and present.','데리다의 차연 개념은 의미가 고정되어 현존한다는 로고스중심주의적 가정을 불안정하게 해요.','différance destabilizes the logocentric assumption','해체론적 분석을 적용하는 고급 학술 논문 표현이에요.','철학 세미나·논문','C2','academic','pattern',NULL,1),
('s_academic_C2_02','Foucauldian genealogy traces how the episteme of an era disciplines and normalizes subjects.','푸코적 계보학은 한 시대의 에피스테메가 어떻게 주체를 규율하고 정상화하는지 추적해요.','Foucauldian genealogy traces','푸코의 계보학적 방법을 적용한 논문 서술 방식이에요.','비판 이론 논문','C2','academic','pattern',NULL,2),
('s_academic_C2_03','The rhizomatic structure of the text resists linear reading and hierarchical interpretation.','텍스트의 리좀적 구조는 선형적 읽기와 위계적 해석에 저항해요.','rhizomatic structure resists','들뢰즈의 리좀 개념을 텍스트 분석에 적용하는 표현이에요.','문학 이론 논문','C2','academic','pattern',NULL,3),
('s_academic_C2_04','Bakhtin''s heteroglossia reveals the polyphonic nature of academic discourse itself.','바흐친의 이언론은 학술 담론 자체의 다성적 특성을 드러내요.','heteroglossia reveals the polyphonic nature','바흐친 이론을 담론 분석에 적용하는 표현이에요.','담론 분석 논문','C2','academic','pattern',NULL,4),
('s_academic_C2_05','The subaltern''s aporia lies in the impossibility of articulating resistance within the very language of the oppressor.','서발턴의 아포리아는 억압자의 언어 안에서 저항을 표현하는 것의 불가능성에 있어요.','subaltern''s aporia lies in the impossibility','포스트식민 이론의 핵심 긴장을 표현하는 고급 학술 문장이에요.','포스트식민 이론 논문','C2','academic','pattern',NULL,5),
('s_academic_C2_06','Bourdieu''s concept of habitus explains how doxa is reproduced across generations without conscious awareness.','부르디외의 아비투스 개념은 독사가 의식적 인식 없이 세대에 걸쳐 재생산되는 방식을 설명해요.','habitus explains how doxa is reproduced','부르디외의 핵심 개념을 연결하는 학술적 표현이에요.','사회학 이론 논문','C2','academic','pattern',NULL,6),
('s_academic_C2_07','The onto-epistemological stance of the researcher inevitably shapes what counts as legitimate knowledge within the study.','연구자의 존재-인식론적 입장은 연구 내에서 무엇이 정당한 지식으로 인정되는지를 필연적으로 형성해요.','onto-epistemological stance','연구자의 철학적 입장이 연구 전체에 미치는 영향을 설명하는 표현이에요.','연구 방법론 논문','C2','academic','pattern',NULL,7)
ON CONFLICT (id) DO NOTHING;


-- ══════ GREETING-V2 ══════
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
ON CONFLICT (id) DO NOTHING;
