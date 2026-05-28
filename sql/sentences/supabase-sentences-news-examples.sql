-- EngCat — News topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Did you hear about the storm last night?', ex1_ko = '어젯밤 폭풍 소식 들었어요?',
  ex2 = 'Did you hear about the new policy?', ex2_ko = '새 정책 소식 들었어요?',
  ex3 = 'Did you hear about the accident downtown?', ex3_ko = '시내 사고 소식 들었어요?',
  ex4 = 'Did you hear about the festival this weekend?', ex4_ko = '이번 주말 축제 소식 들었어요?',
  ex5 = 'Did you hear about the election results?', ex5_ko = '선거 결과 소식 들었어요?'
WHERE id = 's_news_A1_01';

UPDATE sentences SET
  ex1 = 'I saw on the news that there was a big fire.', ex1_ko = '뉴스에서 큰 화재가 있었다는 걸 봤어요.',
  ex2 = 'I saw on the news that they announced a new law.', ex2_ko = '뉴스에서 새 법을 발표했다는 걸 봤어요.',
  ex3 = 'I saw on the news that they reopened the bridge.', ex3_ko = '뉴스에서 다리를 재개통했다는 걸 봤어요.',
  ex4 = 'I saw on the news that prices went up again.', ex4_ko = '뉴스에서 물가가 또 올랐다는 걸 봤어요.',
  ex5 = 'I saw on the news that there was a protest yesterday.', ex5_ko = '뉴스에서 어제 시위가 있었다는 걸 봤어요.'
WHERE id = 's_news_A1_02';

UPDATE sentences SET
  ex1 = 'What happened at the protest yesterday?', ex1_ko = '어제 시위에서 무슨 일이 있었어요?',
  ex2 = 'What happened during the meeting?', ex2_ko = '회의 중에 무슨 일이 있었어요?',
  ex3 = 'What happened at the airport this morning?', ex3_ko = '오늘 아침 공항에서 무슨 일이 있었어요?',
  ex4 = 'What happened with the new policy?', ex4_ko = '새 정책에 무슨 일이 있었어요?',
  ex5 = 'What happened to the missing flight?', ex5_ko = '실종된 항공편에 무슨 일이 있었어요?'
WHERE id = 's_news_A1_03';

UPDATE sentences SET
  ex1 = 'Is it true that the president resigned?', ex1_ko = '대통령이 사임한 게 사실이에요?',
  ex2 = 'Is it true that the borders are closed?', ex2_ko = '국경이 폐쇄된 게 사실이에요?',
  ex3 = 'Is it true that they cancelled the event?', ex3_ko = '그 행사가 취소된 게 사실이에요?',
  ex4 = 'Is it true that the bank failed?', ex4_ko = '그 은행이 파산한 게 사실이에요?',
  ex5 = 'Is it true that they signed the deal?', ex5_ko = '그들이 계약을 체결한 게 사실이에요?'
WHERE id = 's_news_A1_04';

UPDATE sentences SET
  ex1 = 'They said on the news that there was an earthquake.', ex1_ko = '뉴스에서 지진이 있었다고 했어요.',
  ex2 = 'They said on the news that prices will go up.', ex2_ko = '뉴스에서 물가가 오를 거라고 했어요.',
  ex3 = 'They said on the news that the road will reopen tomorrow.', ex3_ko = '뉴스에서 내일 도로가 다시 열린다고 했어요.',
  ex4 = 'They said on the news that the flights are cancelled.', ex4_ko = '뉴스에서 항공편이 취소됐다고 했어요.',
  ex5 = 'They said on the news that the storm is coming.', ex5_ko = '뉴스에서 폭풍이 오고 있다고 했어요.'
WHERE id = 's_news_A1_05';

UPDATE sentences SET
  ex1 = 'A lot of people were hurt in the crash.', ex1_ko = '사고로 많은 사람들이 다쳤어요.',
  ex2 = 'A lot of people were hurt in the fire.', ex2_ko = '화재로 많은 사람들이 다쳤어요.',
  ex3 = 'A lot of people were hurt in the protest.', ex3_ko = '시위로 많은 사람들이 다쳤어요.',
  ex4 = 'A lot of people were hurt by the storm.', ex4_ko = '폭풍으로 많은 사람들이 다쳤어요.',
  ex5 = 'A lot of people were hurt at the stadium.', ex5_ko = '경기장에서 많은 사람들이 다쳤어요.'
WHERE id = 's_news_A1_06';

UPDATE sentences SET
  ex1 = 'The government said the situation is under control.', ex1_ko = '정부는 상황이 통제되고 있다고 했어요.',
  ex2 = 'The government said new measures will start next week.', ex2_ko = '정부는 다음 주부터 새 조치가 시행된다고 했어요.',
  ex3 = 'The government said the borders will remain open.', ex3_ko = '정부는 국경이 계속 열려 있을 거라고 했어요.',
  ex4 = 'The government said help is on the way.', ex4_ko = '정부는 지원이 곧 도착한다고 했어요.',
  ex5 = 'The government said the report will be released soon.', ex5_ko = '정부는 보고서가 곧 공개된다고 했어요.'
WHERE id = 's_news_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'According to reports, the cause is still unknown.', ex1_ko = '보도에 따르면 원인은 아직 알려지지 않았어요.',
  ex2 = 'According to reports, several people have been injured.', ex2_ko = '보도에 따르면 여러 명이 부상당했어요.',
  ex3 = 'According to reports, the suspect has been arrested.', ex3_ko = '보도에 따르면 용의자가 체포됐어요.',
  ex4 = 'According to reports, the talks are progressing.', ex4_ko = '보도에 따르면 회담이 진전되고 있어요.',
  ex5 = 'According to reports, evacuations are underway.', ex5_ko = '보도에 따르면 대피가 진행 중이에요.'
WHERE id = 's_news_A2_01';

UPDATE sentences SET
  ex1 = 'The police are investigating the cause of the fire.', ex1_ko = '경찰이 화재 원인을 조사하고 있어요.',
  ex2 = 'The police are investigating the missing person case.', ex2_ko = '경찰이 실종 사건을 조사하고 있어요.',
  ex3 = 'The police are investigating the financial fraud.', ex3_ko = '경찰이 금융 사기를 조사하고 있어요.',
  ex4 = 'The police are investigating the suspicious package.', ex4_ko = '경찰이 의심스러운 소포를 조사하고 있어요.',
  ex5 = 'The police are investigating the cyber attack.', ex5_ko = '경찰이 사이버 공격을 조사하고 있어요.'
WHERE id = 's_news_A2_02';

UPDATE sentences SET
  ex1 = 'It is believed that the storm will worsen overnight.', ex1_ko = '폭풍이 밤사이 심해질 것이라고 여겨져요.',
  ex2 = 'It is believed that the attack was politically motivated.', ex2_ko = '그 공격이 정치적 동기에서 이루어졌다고 여겨져요.',
  ex3 = 'It is believed that the leak came from an internal source.', ex3_ko = '그 유출이 내부 출처에서 비롯됐다고 여겨져요.',
  ex4 = 'It is believed that the talks have hit a deadlock.', ex4_ko = '회담이 교착 상태에 빠졌다고 여겨져요.',
  ex5 = 'It is believed that the suspect has fled the country.', ex5_ko = '용의자가 국외로 도주했다고 여겨져요.'
WHERE id = 's_news_A2_03';

UPDATE sentences SET
  ex1 = 'Protests broke out in the capital after the announcement.', ex1_ko = '발표 이후 수도에서 시위가 발생했어요.',
  ex2 = 'Protests broke out in several major cities last night.', ex2_ko = '어젯밤 여러 주요 도시에서 시위가 발생했어요.',
  ex3 = 'Protests broke out in front of the parliament building.', ex3_ko = '의회 건물 앞에서 시위가 발생했어요.',
  ex4 = 'Protests broke out in response to the new law.', ex4_ko = '새 법에 대한 반응으로 시위가 발생했어요.',
  ex5 = 'Protests broke out in the area following the verdict.', ex5_ko = '평결 이후 그 지역에서 시위가 발생했어요.'
WHERE id = 's_news_A2_04';

UPDATE sentences SET
  ex1 = 'The government has announced that new measures will take effect immediately.', ex1_ko = '정부는 새 조치가 즉시 시행된다고 발표했어요.',
  ex2 = 'The government has announced that the borders will reopen next week.', ex2_ko = '정부는 다음 주 국경이 재개방된다고 발표했어요.',
  ex3 = 'The government has announced that emergency aid will be deployed.', ex3_ko = '정부는 긴급 지원이 배치된다고 발표했어요.',
  ex4 = 'The government has announced that elections will be held in March.', ex4_ko = '정부는 3월에 선거가 치러진다고 발표했어요.',
  ex5 = 'The government has announced that talks will resume next month.', ex5_ko = '정부는 다음 달 회담이 재개된다고 발표했어요.'
WHERE id = 's_news_A2_05';

UPDATE sentences SET
  ex1 = 'Thousands of people took to the streets demanding reform.', ex1_ko = '개혁을 요구하며 수천 명이 거리로 나왔어요.',
  ex2 = 'Thousands of people took to the streets to protest the new tax.', ex2_ko = '새 세금에 항의하기 위해 수천 명이 거리로 나왔어요.',
  ex3 = 'Thousands of people took to the streets in support of the movement.', ex3_ko = '그 운동을 지지하며 수천 명이 거리로 나왔어요.',
  ex4 = 'Thousands of people took to the streets after the verdict.', ex4_ko = '평결 이후 수천 명이 거리로 나왔어요.',
  ex5 = 'Thousands of people took to the streets to celebrate the victory.', ex5_ko = '승리를 축하하기 위해 수천 명이 거리로 나왔어요.'
WHERE id = 's_news_A2_06';

UPDATE sentences SET
  ex1 = 'A ceasefire has been agreed by both parties.', ex1_ko = '양측에 의해 휴전이 합의됐어요.',
  ex2 = 'A new treaty has been agreed by the leaders.', ex2_ko = '지도자들에 의해 새 조약이 합의됐어요.',
  ex3 = 'A trade deal has been agreed by the negotiators.', ex3_ko = '협상단에 의해 무역 협정이 합의됐어요.',
  ex4 = 'A joint statement has been agreed by both sides.', ex4_ko = '양측에 의해 공동 성명이 합의됐어요.',
  ex5 = 'A new framework has been agreed by the council.', ex5_ko = '의회에 의해 새 틀이 합의됐어요.'
WHERE id = 's_news_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The government is under pressure to lower taxes.', ex1_ko = '정부가 세금 인하 압박을 받고 있어요.',
  ex2 = 'The government is under pressure to act on climate.', ex2_ko = '정부가 기후 대응에 대한 압박을 받고 있어요.',
  ex3 = 'The government is under pressure to release the report.', ex3_ko = '정부가 보고서 공개 압박을 받고 있어요.',
  ex4 = 'The government is under pressure to reform the system.', ex4_ko = '정부가 제도 개혁 압박을 받고 있어요.',
  ex5 = 'The government is under pressure to address inequality.', ex5_ko = '정부가 불평등 해결 압박을 받고 있어요.'
WHERE id = 's_news_B1_01';

UPDATE sentences SET
  ex1 = 'Critics have accused the minister of misleading parliament.', ex1_ko = '비평가들이 장관을 의회 오도 혐의로 비난했어요.',
  ex2 = 'Critics have accused the minister of conflict of interest.', ex2_ko = '비평가들이 장관을 이해 충돌 혐의로 비난했어요.',
  ex3 = 'Critics have accused the minister of obstructing justice.', ex3_ko = '비평가들이 장관을 사법 방해 혐의로 비난했어요.',
  ex4 = 'Critics have accused the minister of mismanaging the budget.', ex4_ko = '비평가들이 장관을 예산 관리 부실 혐의로 비난했어요.',
  ex5 = 'Critics have accused the minister of ignoring expert advice.', ex5_ko = '비평가들이 장관을 전문가 조언 무시 혐의로 비난했어요.'
WHERE id = 's_news_B1_02';

UPDATE sentences SET
  ex1 = 'The opposition has called for an inquiry into the contract.', ex1_ko = '야당이 그 계약에 대한 조사를 요구했어요.',
  ex2 = 'The opposition has called for an inquiry into the police conduct.', ex2_ko = '야당이 경찰 행위에 대한 조사를 요구했어요.',
  ex3 = 'The opposition has called for an inquiry into the data breach.', ex3_ko = '야당이 데이터 유출에 대한 조사를 요구했어요.',
  ex4 = 'The opposition has called for an inquiry into the election results.', ex4_ko = '야당이 선거 결과에 대한 조사를 요구했어요.',
  ex5 = 'The opposition has called for an inquiry into the public spending.', ex5_ko = '야당이 공공 지출에 대한 조사를 요구했어요.'
WHERE id = 's_news_B1_03';

UPDATE sentences SET
  ex1 = 'Unemployment figures rose to seven percent last month.', ex1_ko = '지난달 실업률이 7%로 올랐어요.',
  ex2 = 'Approval ratings rose to fifty-two percent after the speech.', ex2_ko = '연설 후 지지율이 52%로 올랐어요.',
  ex3 = 'Voter turnout rose to a record high this year.', ex3_ko = '올해 투표율이 사상 최고로 올랐어요.',
  ex4 = 'Inflation rose to nine percent in the latest data.', ex4_ko = '최신 데이터에서 인플레이션이 9%로 올랐어요.',
  ex5 = 'Hospital admissions rose to dangerous levels.', ex5_ko = '병원 입원율이 위험한 수준으로 올랐어요.'
WHERE id = 's_news_B1_04';

UPDATE sentences SET
  ex1 = 'The legislation was passed by a narrow majority of three.', ex1_ko = '법안이 3표 차이의 근소한 다수결로 통과됐어요.',
  ex2 = 'The reform bill was passed by a comfortable majority.', ex2_ko = '개혁 법안이 여유 있는 다수결로 통과됐어요.',
  ex3 = 'The motion was passed by an overwhelming majority.', ex3_ko = '안건이 압도적 다수결로 통과됐어요.',
  ex4 = 'The budget was passed by a slim majority after debate.', ex4_ko = '토론 끝에 예산안이 근소한 다수결로 통과됐어요.',
  ex5 = 'The resolution was passed by a bipartisan majority.', ex5_ko = '결의안이 초당적 다수결로 통과됐어요.'
WHERE id = 's_news_B1_05';

UPDATE sentences SET
  ex1 = 'The minister resigned amid allegations of corruption.', ex1_ko = '장관이 부패 혐의 속에 사임했어요.',
  ex2 = 'The CEO resigned amid allegations of fraud.', ex2_ko = 'CEO가 사기 혐의 속에 사임했어요.',
  ex3 = 'The chairman resigned amid allegations of harassment.', ex3_ko = '회장이 괴롭힘 혐의 속에 사임했어요.',
  ex4 = 'The mayor resigned amid allegations of misuse of funds.', ex4_ko = '시장이 자금 유용 혐의 속에 사임했어요.',
  ex5 = 'The director resigned amid allegations of conflict of interest.', ex5_ko = '이사가 이해 충돌 혐의 속에 사임했어요.'
WHERE id = 's_news_B1_06';

UPDATE sentences SET
  ex1 = 'Inflation has reached its highest level in forty years.', ex1_ko = '인플레이션이 40년 만에 최고치에 달했어요.',
  ex2 = 'Migration has reached its highest level in a decade.', ex2_ko = '이주가 10년 만에 최고치에 달했어요.',
  ex3 = 'Carbon emissions have reached their highest level on record.', ex3_ko = '탄소 배출량이 기록상 최고치에 달했어요.',
  ex4 = 'Sea temperatures have reached their highest level in years.', ex4_ko = '해수 온도가 수년 만에 최고치에 달했어요.',
  ex5 = 'Public debt has reached its highest level since the war.', ex5_ko = '공공 부채가 전쟁 이후 최고치에 달했어요.'
WHERE id = 's_news_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Diplomatic tensions have escalated between the two neighbors.', ex1_ko = '두 인접국 사이의 외교적 긴장이 고조됐어요.',
  ex2 = 'Diplomatic tensions have escalated between Beijing and Washington.', ex2_ko = '베이징과 워싱턴 사이의 외교적 긴장이 고조됐어요.',
  ex3 = 'Diplomatic tensions have escalated between the trading partners.', ex3_ko = '무역 파트너 사이의 외교적 긴장이 고조됐어요.',
  ex4 = 'Diplomatic tensions have escalated between the regional powers.', ex4_ko = '지역 강대국 사이의 외교적 긴장이 고조됐어요.',
  ex5 = 'Diplomatic tensions have escalated between the EU and the candidate state.', ex5_ko = 'EU와 후보국 사이의 외교적 긴장이 고조됐어요.'
WHERE id = 's_news_B2_01';

UPDATE sentences SET
  ex1 = 'Sanctions have been imposed on the regime in response to human rights abuses.', ex1_ko = '인권 침해에 대응해 그 정권에 제재가 부과됐어요.',
  ex2 = 'Sanctions have been imposed on key officials in response to the crackdown.', ex2_ko = '강경 진압에 대응해 핵심 관리들에게 제재가 부과됐어요.',
  ex3 = 'Sanctions have been imposed on the financial sector in response to election interference.', ex3_ko = '선거 개입에 대응해 금융 부문에 제재가 부과됐어요.',
  ex4 = 'Sanctions have been imposed on the country in response to the invasion.', ex4_ko = '침공에 대응해 그 나라에 제재가 부과됐어요.',
  ex5 = 'Sanctions have been imposed on the leadership in response to nuclear escalation.', ex5_ko = '핵 긴장 고조에 대응해 지도부에 제재가 부과됐어요.'
WHERE id = 's_news_B2_02';

UPDATE sentences SET
  ex1 = 'The two nations agreed to resume diplomatic talks after years of silence.', ex1_ko = '두 나라는 수년간의 침묵 끝에 외교 회담 재개에 합의했어요.',
  ex2 = 'The two nations agreed to resume direct flights after the border reopening.', ex2_ko = '두 나라는 국경 재개방 후 직항 운항 재개에 합의했어요.',
  ex3 = 'The two nations agreed to resume trade negotiations next month.', ex3_ko = '두 나라는 다음 달 무역 협상 재개에 합의했어요.',
  ex4 = 'The two nations agreed to resume cultural exchanges as a goodwill gesture.', ex4_ko = '두 나라는 선의의 표시로 문화 교류 재개에 합의했어요.',
  ex5 = 'The two nations agreed to resume military hotline communications.', ex5_ko = '두 나라는 군 핫라인 통신 재개에 합의했어요.'
WHERE id = 's_news_B2_03';

UPDATE sentences SET
  ex1 = 'The international community has condemned the attack on civilians.', ex1_ko = '국제 사회가 민간인 공격을 규탄했어요.',
  ex2 = 'The international community has condemned the violation of the treaty.', ex2_ko = '국제 사회가 조약 위반을 규탄했어요.',
  ex3 = 'The international community has condemned the use of force against protesters.', ex3_ko = '국제 사회가 시위대에 대한 무력 사용을 규탄했어요.',
  ex4 = 'The international community has condemned the assassination as illegal.', ex4_ko = '국제 사회가 그 암살을 불법으로 규탄했어요.',
  ex5 = 'The international community has condemned the airstrikes on hospitals.', ex5_ko = '국제 사회가 병원에 대한 공습을 규탄했어요.'
WHERE id = 's_news_B2_04';

UPDATE sentences SET
  ex1 = 'A multilateral agreement was reached at the summit on climate change.', ex1_ko = '기후 변화에 관한 정상 회담에서 다자간 합의가 이루어졌어요.',
  ex2 = 'A multilateral agreement was reached on minimum corporate tax rates.', ex2_ko = '최저 법인세율에 관한 다자간 합의가 이루어졌어요.',
  ex3 = 'A multilateral agreement was reached on cross-border data sharing.', ex3_ko = '국경 간 데이터 공유에 관한 다자간 합의가 이루어졌어요.',
  ex4 = 'A multilateral agreement was reached on pandemic preparedness.', ex4_ko = '팬데믹 대비에 관한 다자간 합의가 이루어졌어요.',
  ex5 = 'A multilateral agreement was reached on ocean conservation.', ex5_ko = '해양 보존에 관한 다자간 합의가 이루어졌어요.'
WHERE id = 's_news_B2_05';

UPDATE sentences SET
  ex1 = 'The regime faces growing pressure from civil society organizations.', ex1_ko = '그 정권은 시민사회 단체들로부터 점점 커지는 압박에 직면해 있어요.',
  ex2 = 'The regime faces growing pressure from neighboring states.', ex2_ko = '그 정권은 인접국들로부터 점점 커지는 압박에 직면해 있어요.',
  ex3 = 'The regime faces growing pressure from financial markets.', ex3_ko = '그 정권은 금융 시장으로부터 점점 커지는 압박에 직면해 있어요.',
  ex4 = 'The regime faces growing pressure from human rights bodies.', ex4_ko = '그 정권은 인권 기구들로부터 점점 커지는 압박에 직면해 있어요.',
  ex5 = 'The regime faces growing pressure from domestic opposition movements.', ex5_ko = '그 정권은 국내 야권 운동으로부터 점점 커지는 압박에 직면해 있어요.'
WHERE id = 's_news_B2_06';

UPDATE sentences SET
  ex1 = 'The referendum resulted in a vote for independence.', ex1_ko = '국민 투표 결과 독립 찬성으로 나왔어요.',
  ex2 = 'The referendum resulted in a vote to remain in the union.', ex2_ko = '국민 투표 결과 연합 잔류 찬성으로 나왔어요.',
  ex3 = 'The referendum resulted in a clear mandate for reform.', ex3_ko = '국민 투표 결과 개혁에 대한 명확한 위임으로 나왔어요.',
  ex4 = 'The referendum resulted in a divided outcome split along regional lines.', ex4_ko = '국민 투표 결과 지역에 따라 분열된 결과로 나왔어요.',
  ex5 = 'The referendum resulted in a rejection of the constitutional amendment.', ex5_ko = '국민 투표 결과 헌법 개정안 부결로 나왔어요.'
WHERE id = 's_news_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The decision sets a significant precedent for digital privacy law.', ex1_ko = '그 결정은 디지털 사생활법에 중요한 선례를 남겨요.',
  ex2 = 'The verdict sets a significant precedent for corporate accountability.', ex2_ko = '그 평결은 기업 책임에 중요한 선례를 남겨요.',
  ex3 = 'The ruling sets a significant precedent for refugee protection.', ex3_ko = '그 판결은 난민 보호에 중요한 선례를 남겨요.',
  ex4 = 'The judgment sets a significant precedent for environmental enforcement.', ex4_ko = '그 판결은 환경 집행에 중요한 선례를 남겨요.',
  ex5 = 'The decision sets a significant precedent for jurisdictional reach.', ex5_ko = '그 결정은 관할권 범위에 중요한 선례를 남겨요.'
WHERE id = 's_news_C1_01';

UPDATE sentences SET
  ex1 = 'The sanctions regime has failed to achieve its stated objectives over the past decade.', ex1_ko = '제재 체제가 지난 10년간 명시된 목표를 달성하는 데 실패했어요.',
  ex2 = 'The reform package has failed to achieve its stated objectives within the planned timeline.', ex2_ko = '개혁 패키지가 계획된 일정 내에 명시된 목표를 달성하는 데 실패했어요.',
  ex3 = 'The peacekeeping mission has failed to achieve its stated objectives in the region.', ex3_ko = '평화 유지 임무가 그 지역에서 명시된 목표를 달성하는 데 실패했어요.',
  ex4 = 'The trade deal has failed to achieve its stated objectives for working families.', ex4_ko = '무역 협정이 근로 가정에 대한 명시된 목표를 달성하는 데 실패했어요.',
  ex5 = 'The aid program has failed to achieve its stated objectives despite the funding increase.', ex5_ko = '원조 프로그램이 자금 증액에도 불구하고 명시된 목표를 달성하는 데 실패했어요.'
WHERE id = 's_news_C1_02';

UPDATE sentences SET
  ex1 = 'The bilateral relationship has deteriorated significantly over the past year.', ex1_ko = '양자 관계가 지난 1년 동안 크게 악화됐어요.',
  ex2 = 'The trust between allies has deteriorated significantly since the breach.', ex2_ko = '동맹국 간 신뢰가 그 위반 사건 이후 크게 악화됐어요.',
  ex3 = 'Public health infrastructure has deteriorated significantly during the conflict.', ex3_ko = '분쟁 동안 공중 보건 인프라가 크게 악화됐어요.',
  ex4 = 'The security situation has deteriorated significantly in the border regions.', ex4_ko = '국경 지역의 보안 상황이 크게 악화됐어요.',
  ex5 = 'Democratic institutions have deteriorated significantly under the current administration.', ex5_ko = '현 행정부 하에서 민주주의 제도가 크게 악화됐어요.'
WHERE id = 's_news_C1_03';

UPDATE sentences SET
  ex1 = 'There are growing concerns about the erosion of judicial independence.', ex1_ko = '사법부 독립 침식에 대한 우려가 커지고 있어요.',
  ex2 = 'There are growing concerns about the erosion of press freedom.', ex2_ko = '언론 자유 침식에 대한 우려가 커지고 있어요.',
  ex3 = 'There are growing concerns about the erosion of civic space.', ex3_ko = '시민 공간 침식에 대한 우려가 커지고 있어요.',
  ex4 = 'There are growing concerns about the erosion of academic freedom.', ex4_ko = '학문의 자유 침식에 대한 우려가 커지고 있어요.',
  ex5 = 'There are growing concerns about the erosion of electoral integrity.', ex5_ko = '선거의 무결성 침식에 대한 우려가 커지고 있어요.'
WHERE id = 's_news_C1_04';

UPDATE sentences SET
  ex1 = 'The court''s ruling may have far-reaching implications for digital rights.', ex1_ko = '법원의 판결은 디지털 권리에 광범위한 영향을 미칠 수 있어요.',
  ex2 = 'The court''s ruling may have far-reaching implications for press freedom.', ex2_ko = '법원의 판결은 언론 자유에 광범위한 영향을 미칠 수 있어요.',
  ex3 = 'The court''s ruling may have far-reaching implications for asylum law.', ex3_ko = '법원의 판결은 망명법에 광범위한 영향을 미칠 수 있어요.',
  ex4 = 'The court''s ruling may have far-reaching implications for corporate transparency.', ex4_ko = '법원의 판결은 기업 투명성에 광범위한 영향을 미칠 수 있어요.',
  ex5 = 'The court''s ruling may have far-reaching implications for indigenous land claims.', ex5_ko = '법원의 판결은 토착민 토지 청구에 광범위한 영향을 미칠 수 있어요.'
WHERE id = 's_news_C1_05';

UPDATE sentences SET
  ex1 = 'The government invoked emergency powers to suppress political opposition.', ex1_ko = '정부가 정치적 반대를 억압하기 위해 비상 권한을 발동했어요.',
  ex2 = 'The government invoked emergency powers to suppress public assemblies.', ex2_ko = '정부가 공공 집회를 억압하기 위해 비상 권한을 발동했어요.',
  ex3 = 'The government invoked emergency powers to suppress independent media.', ex3_ko = '정부가 독립 언론을 억압하기 위해 비상 권한을 발동했어요.',
  ex4 = 'The government invoked emergency powers to suppress online dissent.', ex4_ko = '정부가 온라인 반대 의견을 억압하기 위해 비상 권한을 발동했어요.',
  ex5 = 'The government invoked emergency powers to suppress civil society groups.', ex5_ko = '정부가 시민사회 단체들을 억압하기 위해 비상 권한을 발동했어요.'
WHERE id = 's_news_C1_06';

UPDATE sentences SET
  ex1 = 'Analysts warn of the risk of further escalation along the border.', ex1_ko = '분석가들은 국경에서 추가 확전 위험을 경고해요.',
  ex2 = 'Analysts warn of the risk of further escalation in the trade dispute.', ex2_ko = '분석가들은 무역 분쟁의 추가 확전 위험을 경고해요.',
  ex3 = 'Analysts warn of the risk of further escalation in cyber operations.', ex3_ko = '분석가들은 사이버 작전의 추가 확전 위험을 경고해요.',
  ex4 = 'Analysts warn of the risk of further escalation between the rival factions.', ex4_ko = '분석가들은 경쟁 진영 사이의 추가 확전 위험을 경고해요.',
  ex5 = 'Analysts warn of the risk of further escalation across the maritime claims.', ex5_ko = '분석가들은 해양 영유권 주장 전반에 걸친 추가 확전 위험을 경고해요.'
WHERE id = 's_news_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The hegemon''s unilateral actions undermine the multilateral rules-based order.', ex1_ko = '패권국의 일방적 행동이 다자 규칙 기반 질서를 약화시켜요.',
  ex2 = 'The hegemon''s unilateral actions undermine the credibility of collective security frameworks.', ex2_ko = '패권국의 일방적 행동이 집단 안보 틀의 신뢰성을 약화시켜요.',
  ex3 = 'The hegemon''s unilateral actions undermine the legitimacy of international institutions.', ex3_ko = '패권국의 일방적 행동이 국제 기구의 정당성을 약화시켜요.',
  ex4 = 'The hegemon''s unilateral actions undermine the prospects for regional cooperation.', ex4_ko = '패권국의 일방적 행동이 지역 협력의 전망을 약화시켜요.',
  ex5 = 'The hegemon''s unilateral actions undermine the foundations of global trade.', ex5_ko = '패권국의 일방적 행동이 세계 무역의 토대를 약화시켜요.'
WHERE id = 's_news_C2_01';

UPDATE sentences SET
  ex1 = 'The conflict can be read as a manifestation of postcolonial tensions.', ex1_ko = '그 분쟁은 탈식민적 긴장의 표현으로 읽힐 수 있어요.',
  ex2 = 'The crisis can be read as a manifestation of neoliberal restructuring.', ex2_ko = '그 위기는 신자유주의적 구조조정의 표현으로 읽힐 수 있어요.',
  ex3 = 'The protests can be read as a manifestation of generational grievance.', ex3_ko = '그 시위는 세대적 불만의 표현으로 읽힐 수 있어요.',
  ex4 = 'The movement can be read as a manifestation of identity-based politics.', ex4_ko = '그 운동은 정체성 기반 정치의 표현으로 읽힐 수 있어요.',
  ex5 = 'The standoff can be read as a manifestation of structural insecurity.', ex5_ko = '그 대치는 구조적 불안의 표현으로 읽힐 수 있어요.'
WHERE id = 's_news_C2_02';

UPDATE sentences SET
  ex1 = 'Securitization of the migration issue has foreclosed alternative policy responses.', ex1_ko = '이주 문제의 안보화가 대안적 정책 대응을 차단했어요.',
  ex2 = 'Securitization of the pandemic has foreclosed civilian-led approaches.', ex2_ko = '팬데믹의 안보화가 시민 주도 접근법을 차단했어요.',
  ex3 = 'Securitization of climate change has foreclosed redistributive solutions.', ex3_ko = '기후 변화의 안보화가 재분배적 해결책을 차단했어요.',
  ex4 = 'Securitization of cyber threats has foreclosed public deliberation.', ex4_ko = '사이버 위협의 안보화가 공적 숙의를 차단했어요.',
  ex5 = 'Securitization of energy supply has foreclosed sustainability priorities.', ex5_ko = '에너지 공급의 안보화가 지속가능성 우선순위를 차단했어요.'
WHERE id = 's_news_C2_03';

UPDATE sentences SET
  ex1 = 'The normative framework underpinning the international order is being contested by emerging powers.', ex1_ko = '국제 질서를 뒷받침하는 규범적 틀이 신흥 강대국에 의해 도전받고 있어요.',
  ex2 = 'The normative framework underpinning the global trade system is being contested by industrial policy advocates.', ex2_ko = '세계 무역 체계를 뒷받침하는 규범적 틀이 산업 정책 옹호자들에 의해 도전받고 있어요.',
  ex3 = 'The normative framework underpinning humanitarian intervention is being contested by sovereignty defenders.', ex3_ko = '인도적 개입을 뒷받침하는 규범적 틀이 주권 옹호자들에 의해 도전받고 있어요.',
  ex4 = 'The normative framework underpinning environmental governance is being contested by extractive industries.', ex4_ko = '환경 거버넌스를 뒷받침하는 규범적 틀이 채굴 산업에 의해 도전받고 있어요.',
  ex5 = 'The normative framework underpinning human rights universalism is being contested by cultural relativists.', ex5_ko = '인권 보편주의를 뒷받침하는 규범적 틀이 문화 상대주의자들에 의해 도전받고 있어요.'
WHERE id = 's_news_C2_04';

UPDATE sentences SET
  ex1 = 'The crisis exposes the epistemic limits of mainstream IR theory.', ex1_ko = '위기는 주류 국제 관계 이론의 인식론적 한계를 드러내요.',
  ex2 = 'The pandemic exposes the epistemic limits of state-centric security frameworks.', ex2_ko = '팬데믹은 국가 중심 안보 틀의 인식론적 한계를 드러내요.',
  ex3 = 'The migration surge exposes the epistemic limits of border-based governance models.', ex3_ko = '이주 급증은 국경 기반 거버넌스 모델의 인식론적 한계를 드러내요.',
  ex4 = 'The climate emergency exposes the epistemic limits of growth-centric economic thinking.', ex4_ko = '기후 비상사태는 성장 중심 경제 사고의 인식론적 한계를 드러내요.',
  ex5 = 'The AI revolution exposes the epistemic limits of human-centered ethical frameworks.', ex5_ko = 'AI 혁명은 인간 중심 윤리 틀의 인식론적 한계를 드러내요.'
WHERE id = 's_news_C2_05';

UPDATE sentences SET
  ex1 = 'Subaltern voices remain systematically excluded from diplomatic discourse.', ex1_ko = '하위 주체의 목소리는 외교 담론에서 체계적으로 배제돼요.',
  ex2 = 'Subaltern voices remain systematically excluded from international peace negotiations.', ex2_ko = '하위 주체의 목소리는 국제 평화 협상에서 체계적으로 배제돼요.',
  ex3 = 'Subaltern voices remain systematically excluded from policymaking on extractive industries.', ex3_ko = '하위 주체의 목소리는 채굴 산업 정책 결정에서 체계적으로 배제돼요.',
  ex4 = 'Subaltern voices remain systematically excluded from climate adaptation planning.', ex4_ko = '하위 주체의 목소리는 기후 적응 계획에서 체계적으로 배제돼요.',
  ex5 = 'Subaltern voices remain systematically excluded from global governance institutions.', ex5_ko = '하위 주체의 목소리는 글로벌 거버넌스 기구에서 체계적으로 배제돼요.'
WHERE id = 's_news_C2_06';

UPDATE sentences SET
  ex1 = 'The state''s ontological security imperative drove its foreign policy choices during the crisis.', ex1_ko = '위기 동안 국가의 존재론적 안보 요구가 외교 정책 선택을 이끌었어요.',
  ex2 = 'The state''s ontological security imperative drove its assertive posture in the disputed region.', ex2_ko = '분쟁 지역에서 국가의 존재론적 안보 요구가 단호한 자세를 이끌었어요.',
  ex3 = 'The state''s ontological security imperative drove its rejection of external mediation.', ex3_ko = '국가의 존재론적 안보 요구가 외부 중재 거부를 이끌었어요.',
  ex4 = 'The state''s ontological security imperative drove its narrative campaigns against critics.', ex4_ko = '국가의 존재론적 안보 요구가 비판자들에 대한 서사 캠페인을 이끌었어요.',
  ex5 = 'The state''s ontological security imperative drove its symbolic investments in heritage politics.', ex5_ko = '국가의 존재론적 안보 요구가 유산 정치에 대한 상징적 투자를 이끌었어요.'
WHERE id = 's_news_C2_07';
