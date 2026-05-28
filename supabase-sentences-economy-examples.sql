-- EngCat — Economy topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'How much does this shirt cost?', ex1_ko = '이 셔츠 얼마예요?',
  ex2 = 'How much does this book cost?', ex2_ko = '이 책 얼마예요?',
  ex3 = 'How much does this ticket cost?', ex3_ko = '이 티켓 얼마예요?',
  ex4 = 'How much does this trip cost in total?', ex4_ko = '이 여행 총 얼마예요?',
  ex5 = 'How much does this haircut cost?', ex5_ko = '이 헤어컷 얼마예요?'
WHERE id = 's_economy_A1_01';

UPDATE sentences SET
  ex1 = 'Can I pay by card or only cash?', ex1_ko = '카드로 계산할 수 있나요, 아니면 현금만 되나요?',
  ex2 = 'Can I pay by card for this?', ex2_ko = '이거 카드로 계산할 수 있나요?',
  ex3 = 'Can I pay by card with a tip included?', ex3_ko = '팁 포함해서 카드로 계산할 수 있나요?',
  ex4 = 'Can I pay by card if it''s under ten dollars?', ex4_ko = '10달러 이하인데 카드로 계산할 수 있나요?',
  ex5 = 'Can I pay by card without a PIN?', ex5_ko = 'PIN 없이 카드로 계산할 수 있나요?'
WHERE id = 's_economy_A1_02';

UPDATE sentences SET
  ex1 = 'Do you have anything cheaper than this?', ex1_ko = '이것보다 더 저렴한 게 있나요?',
  ex2 = 'Do you have anything cheaper in this size?', ex2_ko = '이 사이즈로 더 저렴한 게 있나요?',
  ex3 = 'Do you have anything cheaper in stock?', ex3_ko = '재고로 더 저렴한 게 있나요?',
  ex4 = 'Do you have anything cheaper for kids?', ex4_ko = '아이용으로 더 저렴한 게 있나요?',
  ex5 = 'Do you have anything cheaper but similar?', ex5_ko = '비슷하지만 더 저렴한 게 있나요?'
WHERE id = 's_economy_A1_03';

UPDATE sentences SET
  ex1 = 'I''ll take it, please.', ex1_ko = '이것으로 할게요.',
  ex2 = 'I''ll take it in blue.', ex2_ko = '파란색으로 할게요.',
  ex3 = 'I''ll take it — can I pay now?', ex3_ko = '이것으로 할게요 — 지금 계산할 수 있나요?',
  ex4 = 'I''ll take it, no need to wrap it.', ex4_ko = '이것으로 할게요, 포장은 안 해도 돼요.',
  ex5 = 'I''ll take it if it''s available.', ex5_ko = '재고가 있으면 이것으로 할게요.'
WHERE id = 's_economy_A1_04';

UPDATE sentences SET
  ex1 = 'Can I get a receipt, please?', ex1_ko = '영수증 주실 수 있나요?',
  ex2 = 'Can I get a receipt for my expenses?', ex2_ko = '지출 비용용으로 영수증 주실 수 있나요?',
  ex3 = 'Can I get a receipt by email?', ex3_ko = '이메일로 영수증 받을 수 있나요?',
  ex4 = 'Can I get a receipt printed out?', ex4_ko = '영수증을 출력해 주실 수 있나요?',
  ex5 = 'Can I get a receipt with the tax breakdown?', ex5_ko = '세금 내역이 있는 영수증 받을 수 있나요?'
WHERE id = 's_economy_A1_05';

UPDATE sentences SET
  ex1 = 'Is there a discount for students?', ex1_ko = '학생 할인이 있나요?',
  ex2 = 'Is there a discount for paying in cash?', ex2_ko = '현금 결제 할인이 있나요?',
  ex3 = 'Is there a discount for senior citizens?', ex3_ko = '경로 할인이 있나요?',
  ex4 = 'Is there a discount on the second item?', ex4_ko = '두 번째 상품 할인이 있나요?',
  ex5 = 'Is there a discount for first-time customers?', ex5_ko = '첫 구매 고객 할인이 있나요?'
WHERE id = 's_economy_A1_06';

UPDATE sentences SET
  ex1 = 'Keep the change, please.', ex1_ko = '거스름돈은 괜찮아요.',
  ex2 = 'Keep the change as a tip.', ex2_ko = '거스름돈은 팁으로 가지세요.',
  ex3 = 'Keep the change, you''ve been great.', ex3_ko = '거스름돈은 괜찮아요, 정말 잘해 주셨어요.',
  ex4 = 'Keep the change — thank you for the help.', ex4_ko = '거스름돈은 괜찮아요 — 도와주셔서 감사해요.',
  ex5 = 'Keep the change, no need to count.', ex5_ko = '거스름돈은 괜찮아요, 셀 필요 없어요.'
WHERE id = 's_economy_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I''m trying to save up for a new laptop.', ex1_ko = '새 노트북을 위해 저축하려고 해요.',
  ex2 = 'I''m trying to save up for a wedding.', ex2_ko = '결혼식을 위해 저축하려고 해요.',
  ex3 = 'I''m trying to save up for a deposit on a flat.', ex3_ko = '아파트 보증금을 위해 저축하려고 해요.',
  ex4 = 'I''m trying to save up for a car.', ex4_ko = '차를 위해 저축하려고 해요.',
  ex5 = 'I''m trying to save up for emergencies.', ex5_ko = '비상시를 위해 저축하려고 해요.'
WHERE id = 's_economy_A2_01';

UPDATE sentences SET
  ex1 = 'I need to stick to my budget this week.', ex1_ko = '이번 주는 예산을 지켜야 해요.',
  ex2 = 'I need to stick to my budget after the holidays.', ex2_ko = '연휴 끝나고 예산을 지켜야 해요.',
  ex3 = 'I need to stick to my budget strictly.', ex3_ko = '예산을 엄격하게 지켜야 해요.',
  ex4 = 'I need to stick to my budget before the trip.', ex4_ko = '여행 전에 예산을 지켜야 해요.',
  ex5 = 'I need to stick to my budget for groceries.', ex5_ko = '식료품 예산을 지켜야 해요.'
WHERE id = 's_economy_A2_02';

UPDATE sentences SET
  ex1 = 'Can I apply for a loan online?', ex1_ko = '온라인에서 대출 신청을 할 수 있나요?',
  ex2 = 'Can I apply for a loan with bad credit?', ex2_ko = '신용 이력이 안 좋은데 대출 신청을 할 수 있나요?',
  ex3 = 'Can I apply for a loan in cash?', ex3_ko = '현금으로 대출 신청을 할 수 있나요?',
  ex4 = 'Can I apply for a loan as a freelancer?', ex4_ko = '프리랜서인데 대출 신청을 할 수 있나요?',
  ex5 = 'Can I apply for a loan without a guarantor?', ex5_ko = '보증인 없이 대출 신청을 할 수 있나요?'
WHERE id = 's_economy_A2_03';

UPDATE sentences SET
  ex1 = 'The grocery bill came out to over a hundred dollars.', ex1_ko = '식료품비가 100달러 넘게 나왔어요.',
  ex2 = 'The hotel bill came out to less than expected.', ex2_ko = '호텔비가 예상보다 적게 나왔어요.',
  ex3 = 'The repair cost came out to three hundred euros.', ex3_ko = '수리비가 300유로 나왔어요.',
  ex4 = 'The catering bill came out to twice the quote.', ex4_ko = '케이터링 비용이 견적의 두 배로 나왔어요.',
  ex5 = 'The phone bill came out to forty pounds this month.', ex5_ko = '이번 달 휴대폰 요금이 40파운드 나왔어요.'
WHERE id = 's_economy_A2_04';

UPDATE sentences SET
  ex1 = 'I get paid on the 15th of each month.', ex1_ko = '매달 15일에 급여를 받아요.',
  ex2 = 'I get paid weekly at this job.', ex2_ko = '이 직장에서는 주급으로 받아요.',
  ex3 = 'I get paid by the hour.', ex3_ko = '시급으로 받아요.',
  ex4 = 'I get paid into my bank account directly.', ex4_ko = '제 은행 계좌로 바로 지급받아요.',
  ex5 = 'I get paid in two installments.', ex5_ko = '두 번에 나눠 지급받아요.'
WHERE id = 's_economy_A2_05';

UPDATE sentences SET
  ex1 = 'I''m in debt from my student loans.', ex1_ko = '학자금 대출로 빚이 있어요.',
  ex2 = 'I''m in debt from medical bills.', ex2_ko = '의료비로 빚이 있어요.',
  ex3 = 'I''m in debt but paying it down quickly.', ex3_ko = '빚이 있지만 빠르게 갚고 있어요.',
  ex4 = 'I''m in debt to a friend right now.', ex4_ko = '지금 친구에게 빚이 있어요.',
  ex5 = 'I''m in debt due to unexpected expenses.', ex5_ko = '예상치 못한 지출로 빚이 있어요.'
WHERE id = 's_economy_A2_06';

UPDATE sentences SET
  ex1 = 'Could you transfer the money to my savings account?', ex1_ko = '제 저축 계좌로 돈을 이체해 주실 수 있나요?',
  ex2 = 'Could you transfer the money to my business account?', ex2_ko = '제 사업 계좌로 돈을 이체해 주실 수 있나요?',
  ex3 = 'Could you transfer the money to my account today?', ex3_ko = '오늘 제 계좌로 돈을 이체해 주실 수 있나요?',
  ex4 = 'Could you transfer the money to my account abroad?', ex4_ko = '제 해외 계좌로 돈을 이체해 주실 수 있나요?',
  ex5 = 'Could you transfer the money to my joint account?', ex5_ko = '제 공동 계좌로 돈을 이체해 주실 수 있나요?'
WHERE id = 's_economy_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Energy prices have been rising steadily since last year.', ex1_ko = '작년부터 에너지 가격이 꾸준히 상승해 왔어요.',
  ex2 = 'Wages have been rising steadily in the tech sector.', ex2_ko = '기술 부문에서 임금이 꾸준히 상승해 왔어요.',
  ex3 = 'Rent has been rising steadily in major cities.', ex3_ko = '주요 도시에서 임대료가 꾸준히 상승해 왔어요.',
  ex4 = 'Food costs have been rising steadily for households.', ex4_ko = '가계 식품비가 꾸준히 상승해 왔어요.',
  ex5 = 'Healthcare premiums have been rising steadily each year.', ex5_ko = '의료보험료가 매년 꾸준히 상승해 왔어요.'
WHERE id = 's_economy_B1_01';

UPDATE sentences SET
  ex1 = 'Youth unemployment dropped to its lowest level in fifteen years.', ex1_ko = '청년 실업률이 15년 만에 최저 수준으로 떨어졌어요.',
  ex2 = 'Inflation dropped to its lowest level in two years.', ex2_ko = '인플레이션이 2년 만에 최저 수준으로 떨어졌어요.',
  ex3 = 'Mortgage applications dropped to their lowest level in a decade.', ex3_ko = '모기지 신청이 10년 만에 최저 수준으로 떨어졌어요.',
  ex4 = 'Consumer confidence dropped to its lowest level since the recession.', ex4_ko = '소비자 신뢰가 경기침체 이후 최저 수준으로 떨어졌어요.',
  ex5 = 'Manufacturing output dropped to its lowest level in five years.', ex5_ko = '제조업 생산이 5년 만에 최저 수준으로 떨어졌어요.'
WHERE id = 's_economy_B1_02';

UPDATE sentences SET
  ex1 = 'The central bank is expected to cut interest rates next quarter.', ex1_ko = '중앙은행이 다음 분기에 금리를 인하할 것으로 예상돼요.',
  ex2 = 'The economy is expected to slow down in the second half.', ex2_ko = '경제가 하반기에 둔화될 것으로 예상돼요.',
  ex3 = 'Housing prices are expected to stabilize by year-end.', ex3_ko = '주택 가격이 연말까지 안정될 것으로 예상돼요.',
  ex4 = 'Oil prices are expected to climb amid supply concerns.', ex4_ko = '공급 우려 속에서 유가가 오를 것으로 예상돼요.',
  ex5 = 'The market is expected to react cautiously to the report.', ex5_ko = '시장이 보고서에 신중하게 반응할 것으로 예상돼요.'
WHERE id = 's_economy_B1_03';

UPDATE sentences SET
  ex1 = 'Exports grew by five percent compared to last year.', ex1_ko = '수출이 작년 대비 5% 성장했어요.',
  ex2 = 'Tourism revenue rose sharply compared to last year.', ex2_ko = '관광 수익이 작년 대비 급격히 상승했어요.',
  ex3 = 'Household debt increased compared to last year.', ex3_ko = '가계 부채가 작년 대비 증가했어요.',
  ex4 = 'Productivity gained ground compared to last year.', ex4_ko = '생산성이 작년 대비 향상됐어요.',
  ex5 = 'Retail sales fell slightly compared to last year.', ex5_ko = '소매 판매가 작년 대비 약간 하락했어요.'
WHERE id = 's_economy_B1_04';

UPDATE sentences SET
  ex1 = 'There is a growing concern about household debt levels.', ex1_ko = '가계 부채 수준에 대한 우려가 커지고 있어요.',
  ex2 = 'There is a growing concern about youth employment prospects.', ex2_ko = '청년 고용 전망에 대한 우려가 커지고 있어요.',
  ex3 = 'There is a growing concern about supply chain disruptions.', ex3_ko = '공급망 중단에 대한 우려가 커지고 있어요.',
  ex4 = 'There is a growing concern about rising healthcare costs.', ex4_ko = '의료비 상승에 대한 우려가 커지고 있어요.',
  ex5 = 'There is a growing concern about pension sustainability.', ex5_ko = '연금 지속 가능성에 대한 우려가 커지고 있어요.'
WHERE id = 's_economy_B1_05';

UPDATE sentences SET
  ex1 = 'The labor market is showing signs of recovery.', ex1_ko = '노동 시장이 회복 조짐을 보이고 있어요.',
  ex2 = 'The housing sector is showing signs of recovery.', ex2_ko = '주택 부문이 회복 조짐을 보이고 있어요.',
  ex3 = 'Manufacturing is showing signs of recovery after a slow year.', ex3_ko = '제조업이 부진한 한 해 끝에 회복 조짐을 보이고 있어요.',
  ex4 = 'Consumer demand is showing signs of recovery this quarter.', ex4_ko = '이번 분기에 소비자 수요가 회복 조짐을 보이고 있어요.',
  ex5 = 'Tourism is showing signs of recovery after the pandemic.', ex5_ko = '관광이 팬데믹 이후 회복 조짐을 보이고 있어요.'
WHERE id = 's_economy_B1_06';

UPDATE sentences SET
  ex1 = 'Consumer spending has slowed down significantly amid inflation worries.', ex1_ko = '소비자 지출이 인플레이션 우려 속에서 크게 둔화됐어요.',
  ex2 = 'Investment has slowed down significantly compared to last year.', ex2_ko = '투자가 작년 대비 크게 둔화됐어요.',
  ex3 = 'Hiring has slowed down significantly across the industry.', ex3_ko = '업계 전반에서 채용이 크게 둔화됐어요.',
  ex4 = 'Construction has slowed down significantly in major markets.', ex4_ko = '주요 시장에서 건설업이 크게 둔화됐어요.',
  ex5 = 'Manufacturing output has slowed down significantly this year.', ex5_ko = '올해 제조업 생산이 크게 둔화됐어요.'
WHERE id = 's_economy_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Diversifying your portfolio is key to weathering market downturns.', ex1_ko = '포트폴리오를 다양화하는 것이 시장 침체를 견디는 데 핵심이에요.',
  ex2 = 'Investing in index funds is key to building long-term wealth.', ex2_ko = '인덱스 펀드에 투자하는 것이 장기 자산 형성의 핵심이에요.',
  ex3 = 'Maintaining cash reserves is key to managing uncertainty.', ex3_ko = '현금 보유를 유지하는 것이 불확실성 관리의 핵심이에요.',
  ex4 = 'Rebalancing your portfolio is key to managing risk exposure.', ex4_ko = '포트폴리오를 재조정하는 것이 위험 노출 관리의 핵심이에요.',
  ex5 = 'Reviewing fees regularly is key to maximizing returns.', ex5_ko = '수수료를 정기적으로 검토하는 것이 수익률 극대화의 핵심이에요.'
WHERE id = 's_economy_B2_01';

UPDATE sentences SET
  ex1 = 'The market correction was sharper than analysts had anticipated.', ex1_ko = '시장 조정이 애널리스트들의 예상보다 훨씬 가파르게 나타났어요.',
  ex2 = 'The currency drop was sharper than economists had predicted.', ex2_ko = '환율 하락이 경제학자들의 예상보다 훨씬 가파르게 나타났어요.',
  ex3 = 'The wage growth was sharper than employers had expected.', ex3_ko = '임금 상승이 고용주들의 예상보다 훨씬 가파르게 나타났어요.',
  ex4 = 'The slowdown was sharper than policymakers had projected.', ex4_ko = '경기 둔화가 정책 결정자들의 예상보다 훨씬 가파르게 나타났어요.',
  ex5 = 'The recovery was sharper than central bankers had forecast.', ex5_ko = '경기 회복이 중앙은행 관계자들의 예상보다 훨씬 가파르게 나타났어요.'
WHERE id = 's_economy_B2_02';

UPDATE sentences SET
  ex1 = 'Credit dried up quickly as banks tightened lending standards.', ex1_ko = '은행들이 대출 기준을 강화하면서 신용이 빠르게 말랐어요.',
  ex2 = 'Funding dried up quickly when investor confidence collapsed.', ex2_ko = '투자자 신뢰가 무너지자 자금이 빠르게 말랐어요.',
  ex3 = 'Demand dried up quickly amid the economic shock.', ex3_ko = '경제 충격 속에서 수요가 빠르게 말랐어요.',
  ex4 = 'Job offers dried up quickly during the hiring freeze.', ex4_ko = '채용 동결 기간 동안 일자리 제안이 빠르게 말랐어요.',
  ex5 = 'Venture capital dried up quickly after the sector pullback.', ex5_ko = '업계 위축 이후 벤처 자본이 빠르게 말랐어요.'
WHERE id = 's_economy_B2_03';

UPDATE sentences SET
  ex1 = 'Defensive stocks tend to perform well in volatile markets.', ex1_ko = '방어주는 변동성이 높은 시장에서 좋은 성과를 내는 경향이 있어요.',
  ex2 = 'Gold tends to perform well in inflationary environments.', ex2_ko = '금은 인플레이션 환경에서 좋은 성과를 내는 경향이 있어요.',
  ex3 = 'Small-cap stocks tend to perform well in expansionary cycles.', ex3_ko = '소형주는 확장 국면에서 좋은 성과를 내는 경향이 있어요.',
  ex4 = 'Treasury bonds tend to perform well in flight-to-safety moments.', ex4_ko = '국채는 안전 자산 선호 시기에 좋은 성과를 내는 경향이 있어요.',
  ex5 = 'Tech stocks tend to perform well in low-rate environments.', ex5_ko = '기술주는 저금리 환경에서 좋은 성과를 내는 경향이 있어요.'
WHERE id = 's_economy_B2_04';

UPDATE sentences SET
  ex1 = 'Stock prices fell sharply following the central bank''s rate hike.', ex1_ko = '중앙은행 금리 인상 이후 주가가 급격히 하락했어요.',
  ex2 = 'The currency weakened following the disappointing GDP figure.', ex2_ko = '실망스러운 GDP 수치 이후 통화가 약세를 보였어요.',
  ex3 = 'Oil prices rose sharply following supply cut announcements.', ex3_ko = '공급 감축 발표 이후 유가가 급격히 상승했어요.',
  ex4 = 'Tech stocks rallied following the earnings beat.', ex4_ko = '실적 호조 이후 기술주가 급등했어요.',
  ex5 = 'Bond yields jumped sharply following the inflation print.', ex5_ko = '인플레이션 수치 발표 이후 채권 수익률이 급격히 뛰었어요.'
WHERE id = 's_economy_B2_05';

UPDATE sentences SET
  ex1 = 'Investors are fleeing to safe-haven assets amid geopolitical tension.', ex1_ko = '지정학적 긴장 속에서 투자자들이 안전 자산으로 이동하고 있어요.',
  ex2 = 'Investors are fleeing to bonds amid recession fears.', ex2_ko = '경기 침체 우려 속에서 투자자들이 채권으로 이동하고 있어요.',
  ex3 = 'Investors are fleeing to gold amid currency volatility.', ex3_ko = '환율 변동성 속에서 투자자들이 금으로 이동하고 있어요.',
  ex4 = 'Investors are fleeing to cash amid market uncertainty.', ex4_ko = '시장 불확실성 속에서 투자자들이 현금으로 이동하고 있어요.',
  ex5 = 'Investors are fleeing to defensive sectors amid the sell-off.', ex5_ko = '매도세 속에서 투자자들이 방어 섹터로 이동하고 있어요.'
WHERE id = 's_economy_B2_06';

UPDATE sentences SET
  ex1 = 'The equity market rebounded after the initial panic selling.', ex1_ko = '초기 패닉 매도 이후 주식 시장이 반등했어요.',
  ex2 = 'The bond market rebounded after the initial yield spike.', ex2_ko = '초기 수익률 급등 이후 채권 시장이 반등했어요.',
  ex3 = 'The currency rebounded after the initial sharp decline.', ex3_ko = '초기 급락 이후 통화가 반등했어요.',
  ex4 = 'The housing market rebounded after the initial correction.', ex4_ko = '초기 조정 이후 주택 시장이 반등했어요.',
  ex5 = 'The crypto market rebounded after the initial crash.', ex5_ko = '초기 폭락 이후 암호화폐 시장이 반등했어요.'
WHERE id = 's_economy_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Quantitative easing has been criticized for inflating asset prices rather than stimulating the real economy.', ex1_ko = '양적 완화는 실물 경제를 자극하기보다 자산 가격을 부풀린다는 비판을 받아왔어요.',
  ex2 = 'Tax incentives have been criticized for benefiting corporations more than workers.', ex2_ko = '세제 혜택은 근로자보다 기업에 더 이익을 준다는 비판을 받아왔어요.',
  ex3 = 'The new regulation has been criticized for stifling innovation in fintech.', ex3_ko = '새 규제는 핀테크 혁신을 억압한다는 비판을 받아왔어요.',
  ex4 = 'Trade liberalization has been criticized for displacing local industries.', ex4_ko = '무역 자유화는 지역 산업을 밀어낸다는 비판을 받아왔어요.',
  ex5 = 'Capital controls have been criticized for distorting price discovery.', ex5_ko = '자본 통제는 가격 발견을 왜곡한다는 비판을 받아왔어요.'
WHERE id = 's_economy_C1_01';

UPDATE sentences SET
  ex1 = 'Deregulation of the energy sector is often linked to price volatility.', ex1_ko = '에너지 부문 규제 완화는 종종 가격 변동성과 연결지어져요.',
  ex2 = 'Currency devaluation is often linked to export competitiveness.', ex2_ko = '통화 평가절하는 종종 수출 경쟁력과 연결지어져요.',
  ex3 = 'Aggressive monetary policy is often linked to asset bubbles.', ex3_ko = '공격적 통화 정책은 종종 자산 거품과 연결지어져요.',
  ex4 = 'Income inequality is often linked to political polarization.', ex4_ko = '소득 불평등은 종종 정치 양극화와 연결지어져요.',
  ex5 = 'Globalization is often linked to wage stagnation in developed economies.', ex5_ko = '세계화는 종종 선진 경제의 임금 정체와 연결지어져요.'
WHERE id = 's_economy_C1_02';

UPDATE sentences SET
  ex1 = 'The government''s tax reform has faced strong opposition from civil society groups.', ex1_ko = '정부의 세제 개혁은 시민 사회 단체의 강한 반대에 직면했어요.',
  ex2 = 'The pension overhaul has faced strong opposition from retirees.', ex2_ko = '연금 개편은 은퇴자들의 강한 반대에 직면했어요.',
  ex3 = 'The proposed wage cut has faced strong opposition from unions.', ex3_ko = '제안된 임금 삭감은 노조의 강한 반대에 직면했어요.',
  ex4 = 'The austerity package has faced strong opposition from regional governments.', ex4_ko = '긴축 패키지는 지방 정부의 강한 반대에 직면했어요.',
  ex5 = 'The deregulation plan has faced strong opposition from consumer advocates.', ex5_ko = '규제 완화 계획은 소비자 옹호자들의 강한 반대에 직면했어요.'
WHERE id = 's_economy_C1_03';

UPDATE sentences SET
  ex1 = 'Industrial subsidies may protect domestic firms but ultimately discourage innovation.', ex1_ko = '산업 보조금은 국내 기업을 보호할 수 있지만 결국 혁신을 저해해요.',
  ex2 = 'Price controls may ease short-term pain but ultimately worsen shortages.', ex2_ko = '가격 통제는 단기 고통을 완화할 수 있지만 결국 부족을 심화해요.',
  ex3 = 'Export bans may stabilize local prices but ultimately damage trading relationships.', ex3_ko = '수출 금지는 국내 가격을 안정시킬 수 있지만 결국 무역 관계를 손상해요.',
  ex4 = 'Aggressive rate cuts may stimulate growth but ultimately fuel inflation.', ex4_ko = '공격적 금리 인하는 성장을 자극할 수 있지만 결국 인플레이션을 부추겨요.',
  ex5 = 'Capital injections may rescue failing firms but ultimately distort market discipline.', ex5_ko = '자본 투입은 부실 기업을 구할 수 있지만 결국 시장 규율을 왜곡해요.'
WHERE id = 's_economy_C1_04';

UPDATE sentences SET
  ex1 = 'Game theory suggests that cooperation can emerge even among self-interested actors.', ex1_ko = '게임 이론은 자기 이익을 추구하는 행위자들 사이에서도 협력이 출현할 수 있다고 주장해요.',
  ex2 = 'Behavioral economics theory suggests that humans systematically deviate from rational choice.', ex2_ko = '행동경제학 이론은 인간이 합리적 선택에서 체계적으로 벗어난다고 주장해요.',
  ex3 = 'Modern monetary theory suggests that sovereign currency issuers cannot involuntarily default.', ex3_ko = '현대화폐이론은 주권 통화 발행국이 비자발적으로 채무 불이행할 수 없다고 주장해요.',
  ex4 = 'Endogenous growth theory suggests that innovation is driven by deliberate investment.', ex4_ko = '내생적 성장 이론은 혁신이 의도적 투자에 의해 추동된다고 주장해요.',
  ex5 = 'Public choice theory suggests that politicians often act in their own self-interest.', ex5_ko = '공공선택 이론은 정치인들이 종종 자기 이익에 따라 행동한다고 주장해요.'
WHERE id = 's_economy_C1_05';

UPDATE sentences SET
  ex1 = 'Excessive reliance on agricultural subsidies can distort market signals for crop planning.', ex1_ko = '농업 보조금에 대한 과도한 의존은 작물 재배 계획의 시장 신호를 왜곡할 수 있어요.',
  ex2 = 'Excessive reliance on export rebates can distort market signals for domestic producers.', ex2_ko = '수출 환급금에 대한 과도한 의존은 국내 생산자의 시장 신호를 왜곡할 수 있어요.',
  ex3 = 'Excessive reliance on price floors can distort market signals to consumers.', ex3_ko = '가격 하한제에 대한 과도한 의존은 소비자에게 가는 시장 신호를 왜곡할 수 있어요.',
  ex4 = 'Excessive reliance on housing tax credits can distort market signals in real estate.', ex4_ko = '주택 세액공제에 대한 과도한 의존은 부동산의 시장 신호를 왜곡할 수 있어요.',
  ex5 = 'Excessive reliance on cheap credit can distort market signals about risk.', ex5_ko = '값싼 신용에 대한 과도한 의존은 위험에 대한 시장 신호를 왜곡할 수 있어요.'
WHERE id = 's_economy_C1_06';

UPDATE sentences SET
  ex1 = 'Moral hazard arises when borrowers are insulated from the consequences of default.', ex1_ko = '도덕적 해이는 차입자가 채무 불이행의 결과로부터 보호받을 때 발생해요.',
  ex2 = 'Moral hazard arises when banks are insulated from the consequences of risky lending.', ex2_ko = '도덕적 해이는 은행이 위험한 대출의 결과로부터 보호받을 때 발생해요.',
  ex3 = 'Moral hazard arises when firms are insulated from the consequences of poor management.', ex3_ko = '도덕적 해이는 기업이 부실 경영의 결과로부터 보호받을 때 발생해요.',
  ex4 = 'Moral hazard arises when insurers are insulated from the consequences of underwriting.', ex4_ko = '도덕적 해이는 보험사가 인수 결정의 결과로부터 보호받을 때 발생해요.',
  ex5 = 'Moral hazard arises when traders are insulated from the consequences of speculative loss.', ex5_ko = '도덕적 해이는 트레이더가 투기적 손실의 결과로부터 보호받을 때 발생해요.'
WHERE id = 's_economy_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Econometric models rely on instrumental variables to identify causal relationships between policy and outcomes.', ex1_ko = '계량경제 모델은 정책과 결과 간의 인과 관계를 파악하기 위해 도구변수에 의존해요.',
  ex2 = 'Econometric models rely on natural experiments to identify causal relationships between schooling and earnings.', ex2_ko = '계량경제 모델은 교육과 소득 간의 인과 관계를 파악하기 위해 자연 실험에 의존해요.',
  ex3 = 'Econometric models rely on difference-in-differences to identify causal relationships between minimum wage and employment.', ex3_ko = '계량경제 모델은 최저임금과 고용 간의 인과 관계를 파악하기 위해 이중차분법에 의존해요.',
  ex4 = 'Econometric models rely on regression discontinuity to identify causal relationships between thresholds and behavior.', ex4_ko = '계량경제 모델은 문턱과 행동 간의 인과 관계를 파악하기 위해 회귀 불연속에 의존해요.',
  ex5 = 'Econometric models rely on randomized controlled trials to identify causal relationships between interventions and outcomes.', ex5_ko = '계량경제 모델은 개입과 결과 간의 인과 관계를 파악하기 위해 무작위 대조군 실험에 의존해요.'
WHERE id = 's_economy_C2_01';

UPDATE sentences SET
  ex1 = 'The securitization of subprime loans obscured the underlying credit risk from rating agencies.', ex1_ko = '서브프라임 대출의 유동화는 신용평가 기관으로부터 내재된 신용 위험을 가렸어요.',
  ex2 = 'Complex derivatives obscured the underlying credit risk from regulators.', ex2_ko = '복잡한 파생상품은 규제 당국으로부터 내재된 신용 위험을 가렸어요.',
  ex3 = 'Off-balance-sheet vehicles obscured the underlying credit risk from shareholders.', ex3_ko = '부외 거래 기구는 주주로부터 내재된 신용 위험을 가렸어요.',
  ex4 = 'Cross-border tranching obscured the underlying credit risk from foreign investors.', ex4_ko = '국경 간 트랜치화는 외국 투자자로부터 내재된 신용 위험을 가렸어요.',
  ex5 = 'Synthetic structures obscured the underlying credit risk from counterparties.', ex5_ko = '합성 구조는 거래상대방으로부터 내재된 신용 위험을 가렸어요.'
WHERE id = 's_economy_C2_02';

UPDATE sentences SET
  ex1 = 'Rent-seeking behavior undermines allocative efficiency by diverting capital toward political influence.', ex1_ko = '지대추구 행동은 자본을 정치적 영향력으로 전환시켜 배분 효율성을 훼손해요.',
  ex2 = 'Cronyism undermines allocative efficiency by privileging insider firms over more productive ones.', ex2_ko = '연고주의는 더 생산적인 기업보다 내부자 기업에 특권을 주어 배분 효율성을 훼손해요.',
  ex3 = 'Regulatory capture undermines allocative efficiency by tilting rules toward incumbents.', ex3_ko = '규제 포획은 규칙을 기존 사업자에게 기울여 배분 효율성을 훼손해요.',
  ex4 = 'Corruption undermines allocative efficiency by routing resources through informal channels.', ex4_ko = '부패는 자원을 비공식 경로로 보내 배분 효율성을 훼손해요.',
  ex5 = 'Monopolistic practices undermine allocative efficiency by suppressing competitive pressure.', ex5_ko = '독점적 관행은 경쟁 압력을 억압하여 배분 효율성을 훼손해요.'
WHERE id = 's_economy_C2_03';

UPDATE sentences SET
  ex1 = 'Post-Keynesian economists challenge the assumption that money is neutral in the long run.', ex1_ko = '포스트 케인지언 경제학자들은 화폐가 장기적으로 중립적이라는 가정에 도전해요.',
  ex2 = 'Feminist economists challenge the assumption that unpaid care work has no economic value.', ex2_ko = '페미니스트 경제학자들은 무급 돌봄 노동이 경제적 가치가 없다는 가정에 도전해요.',
  ex3 = 'Ecological economists challenge the assumption that GDP growth is a sufficient welfare metric.', ex3_ko = '생태경제학자들은 GDP 성장이 충분한 복지 지표라는 가정에 도전해요.',
  ex4 = 'Marxist economists challenge the assumption that capital and labor share interests equally.', ex4_ko = '마르크스주의 경제학자들은 자본과 노동이 이해관계를 동등하게 공유한다는 가정에 도전해요.',
  ex5 = 'Behavioral economists challenge the assumption that consumers always maximize expected utility.', ex5_ko = '행동경제학자들은 소비자가 항상 기대 효용을 극대화한다는 가정에 도전해요.'
WHERE id = 's_economy_C2_04';

UPDATE sentences SET
  ex1 = 'Asymmetric information between insurers and policyholders leads to adverse selection in health markets.', ex1_ko = '보험사와 가입자 간의 정보 비대칭은 건강 시장에서 역선택으로 이어져요.',
  ex2 = 'Asymmetric information between lenders and borrowers leads to adverse selection in credit markets.', ex2_ko = '대출 기관과 차입자 간의 정보 비대칭은 신용 시장에서 역선택으로 이어져요.',
  ex3 = 'Asymmetric information between used-car sellers and buyers leads to adverse selection that lowers prices.', ex3_ko = '중고차 판매자와 구매자 간의 정보 비대칭은 가격을 낮추는 역선택으로 이어져요.',
  ex4 = 'Asymmetric information between employers and applicants leads to adverse selection in labor markets.', ex4_ko = '고용주와 지원자 간의 정보 비대칭은 노동 시장에서 역선택으로 이어져요.',
  ex5 = 'Asymmetric information between corporate insiders and the public leads to adverse selection in equity issuance.', ex5_ko = '기업 내부자와 대중 간의 정보 비대칭은 주식 발행에서 역선택으로 이어져요.'
WHERE id = 's_economy_C2_05';

UPDATE sentences SET
  ex1 = 'The Lorenz curve measures the extent to which actual income distribution departs from perfect equality.', ex1_ko = '로렌츠 곡선은 실제 소득 분배가 완전한 평등에서 얼마나 벗어나는지를 측정해요.',
  ex2 = 'The misery index measures the extent to which inflation and unemployment burden households.', ex2_ko = '비참 지수는 인플레이션과 실업이 가계에 얼마나 부담을 주는지를 측정해요.',
  ex3 = 'The price-to-rent ratio measures the extent to which housing prices outpace rental fundamentals.', ex3_ko = '가격 대 임대 비율은 주택 가격이 임대 펀더멘털을 얼마나 앞서가는지를 측정해요.',
  ex4 = 'The dependency ratio measures the extent to which workers must support non-working populations.', ex4_ko = '부양비는 근로자가 비근로 인구를 얼마나 부양해야 하는지를 측정해요.',
  ex5 = 'The output gap measures the extent to which actual production falls short of potential.', ex5_ko = '생산 격차는 실제 생산이 잠재 생산에 얼마나 못 미치는지를 측정해요.'
WHERE id = 's_economy_C2_06';

UPDATE sentences SET
  ex1 = 'A liquidity trap renders conventional monetary policy ineffective as households hoard cash regardless of rates.', ex1_ko = '유동성 함정은 가계가 금리와 상관없이 현금을 비축하면서 기존 통화 정책을 무효화해요.',
  ex2 = 'Hyperinflation renders conventional fiscal policy ineffective as price expectations destabilize completely.', ex2_ko = '하이퍼인플레이션은 가격 기대가 완전히 불안정화되면서 기존 재정 정책을 무효화해요.',
  ex3 = 'A debt overhang renders conventional stimulus ineffective as households prioritize deleveraging.', ex3_ko = '부채 누적은 가계가 부채 축소를 우선시하면서 기존 경기 부양책을 무효화해요.',
  ex4 = 'A deflationary spiral renders conventional rate policy ineffective as the zero lower bound binds.', ex4_ko = '디플레이션 악순환은 제로 금리 하한이 작용하면서 기존 금리 정책을 무효화해요.',
  ex5 = 'A sudden stop in capital flows renders conventional crisis tools ineffective in emerging markets.', ex5_ko = '자본 흐름의 갑작스러운 중단은 신흥 시장에서 기존 위기 대응 도구를 무효화해요.'
WHERE id = 's_economy_C2_07';
