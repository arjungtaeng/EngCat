-- EngCat — Negotiation topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Can we agree on the price?', ex1_ko = '가격에 합의할 수 있을까요?',
  ex2 = 'Can we agree on the date?', ex2_ko = '날짜에 합의할 수 있을까요?',
  ex3 = 'Can we agree on the next step?', ex3_ko = '다음 단계에 합의할 수 있을까요?',
  ex4 = 'Can we agree on the basic terms?', ex4_ko = '기본 조건에 합의할 수 있을까요?',
  ex5 = 'Can we agree on a follow-up meeting?', ex5_ko = '후속 회의에 합의할 수 있을까요?'
WHERE id = 's_negotiation_A1_01';

UPDATE sentences SET
  ex1 = 'I want a better deal.', ex1_ko = '더 좋은 조건을 원해요.',
  ex2 = 'I want a longer warranty.', ex2_ko = '더 긴 보증을 원해요.',
  ex3 = 'I want a faster delivery.', ex3_ko = '더 빠른 배송을 원해요.',
  ex4 = 'I want a clearer contract.', ex4_ko = '더 명확한 계약을 원해요.',
  ex5 = 'I want a fair price.', ex5_ko = '공정한 가격을 원해요.'
WHERE id = 's_negotiation_A1_02';

UPDATE sentences SET
  ex1 = 'Can you give me a discount on this?', ex1_ko = '이거 할인해 주실 수 있나요?',
  ex2 = 'Can you give me a discount for paying cash?', ex2_ko = '현금 결제 할인을 해 주실 수 있나요?',
  ex3 = 'Can you give me a discount as a regular customer?', ex3_ko = '단골 손님 할인을 해 주실 수 있나요?',
  ex4 = 'Can you give me a discount for buying two?', ex4_ko = '두 개 구매 시 할인을 해 주실 수 있나요?',
  ex5 = 'Can you give me a discount if I sign today?', ex5_ko = '오늘 계약하면 할인을 해 주실 수 있나요?'
WHERE id = 's_negotiation_A1_03';

UPDATE sentences SET
  ex1 = 'I need more time to think about it.', ex1_ko = '생각해 볼 시간이 더 필요해요.',
  ex2 = 'I need more time to review the contract.', ex2_ko = '계약을 검토할 시간이 더 필요해요.',
  ex3 = 'I need more time to consult my team.', ex3_ko = '팀과 상의할 시간이 더 필요해요.',
  ex4 = 'I need more time to compare offers.', ex4_ko = '제안들을 비교할 시간이 더 필요해요.',
  ex5 = 'I need more time before signing.', ex5_ko = '서명하기 전에 시간이 더 필요해요.'
WHERE id = 's_negotiation_A1_04';

UPDATE sentences SET
  ex1 = 'Is that your best offer for today?', ex1_ko = '오늘 최선의 제안이 그것인가요?',
  ex2 = 'Is that your best offer including shipping?', ex2_ko = '배송 포함해서 최선의 제안이 그것인가요?',
  ex3 = 'Is that your best offer or can you do better?', ex3_ko = '그게 최선의 제안인가요, 아니면 더 가능하신가요?',
  ex4 = 'Is that your best offer for cash payment?', ex4_ko = '현금 결제 시 최선의 제안이 그것인가요?',
  ex5 = 'Is that your best offer for the whole package?', ex5_ko = '전체 패키지 최선의 제안이 그것인가요?'
WHERE id = 's_negotiation_A1_05';

UPDATE sentences SET
  ex1 = 'Let''s try to work this out together.', ex1_ko = '함께 해결해 보도록 해요.',
  ex2 = 'Let''s try to find common ground.', ex2_ko = '공통점을 찾아 보도록 해요.',
  ex3 = 'Let''s try to reach an agreement today.', ex3_ko = '오늘 합의에 이르도록 해요.',
  ex4 = 'Let''s try to make this work for both sides.', ex4_ko = '양쪽 모두에게 좋은 방향으로 해 보도록 해요.',
  ex5 = 'Let''s try to keep this professional.', ex5_ko = '전문적으로 진행하도록 해요.'
WHERE id = 's_negotiation_A1_06';

UPDATE sentences SET
  ex1 = 'I think we can agree on the timeline.', ex1_ko = '일정에서 합의할 수 있을 것 같아요.',
  ex2 = 'I think we can agree on the main points.', ex2_ko = '주요 사항에서 합의할 수 있을 것 같아요.',
  ex3 = 'I think we can agree on the basics first.', ex3_ko = '먼저 기본 사항에서 합의할 수 있을 것 같아요.',
  ex4 = 'I think we can agree on a fair split.', ex4_ko = '공정한 분할에 합의할 수 있을 것 같아요.',
  ex5 = 'I think we can agree on the goals.', ex5_ko = '목표에서 합의할 수 있을 것 같아요.'
WHERE id = 's_negotiation_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Could you reduce the price by ten percent?', ex1_ko = '가격을 10% 낮춰주실 수 있나요?',
  ex2 = 'Could you reduce the deposit a little?', ex2_ko = '보증금을 조금 낮춰주실 수 있나요?',
  ex3 = 'Could you reduce the fee for the first month?', ex3_ko = '첫 달 수수료를 낮춰주실 수 있나요?',
  ex4 = 'Could you reduce the minimum order quantity?', ex4_ko = '최소 주문 수량을 낮춰주실 수 있나요?',
  ex5 = 'Could you reduce the cancellation penalty?', ex5_ko = '취소 위약금을 낮춰주실 수 있나요?'
WHERE id = 's_negotiation_A2_01';

UPDATE sentences SET
  ex1 = 'If you lower the price, we''ll sign today.', ex1_ko = '가격을 낮춰주시면 오늘 계약할게요.',
  ex2 = 'If you lower the price, we''ll order more units.', ex2_ko = '가격을 낮춰주시면 더 많이 주문할게요.',
  ex3 = 'If you lower the price, we''ll recommend you to our partners.', ex3_ko = '가격을 낮춰주시면 파트너들에게 추천할게요.',
  ex4 = 'If you lower the price, we''ll commit to a longer contract.', ex4_ko = '가격을 낮춰주시면 더 긴 계약을 체결할게요.',
  ex5 = 'If you lower the price, we''ll pay upfront.', ex5_ko = '가격을 낮춰주시면 선불로 결제할게요.'
WHERE id = 's_negotiation_A2_02';

UPDATE sentences SET
  ex1 = 'What discount can you offer for early payment?', ex1_ko = '조기 결제 시 어떤 할인을 제공할 수 있나요?',
  ex2 = 'What discount can you offer for repeat customers?', ex2_ko = '재구매 고객에게 어떤 할인을 제공할 수 있나요?',
  ex3 = 'What discount can you offer for a multi-year contract?', ex3_ko = '다년 계약 시 어떤 할인을 제공할 수 있나요?',
  ex4 = 'What discount can you offer for non-profit organizations?', ex4_ko = '비영리 단체에 어떤 할인을 제공할 수 있나요?',
  ex5 = 'What discount can you offer for paying in full?', ex5_ko = '일시불 결제 시 어떤 할인을 제공할 수 있나요?'
WHERE id = 's_negotiation_A2_03';

UPDATE sentences SET
  ex1 = 'That''s a bit over our budget — can we meet in the middle?', ex1_ko = '예산을 조금 초과하네요. 중간 지점에서 만날 수 있을까요?',
  ex2 = 'That''s a bit beyond our timeline — can we meet in the middle?', ex2_ko = '저희 일정을 조금 넘기네요. 중간 지점에서 만날 수 있을까요?',
  ex3 = 'That''s a bit higher than expected — can we meet in the middle?', ex3_ko = '예상보다 좀 높네요. 중간 지점에서 만날 수 있을까요?',
  ex4 = 'That''s a bit too restrictive — can we meet in the middle?', ex4_ko = '조금 제한적이네요. 중간 지점에서 만날 수 있을까요?',
  ex5 = 'That''s a bit more than agreed — can we meet in the middle?', ex5_ko = '합의보다 좀 많네요. 중간 지점에서 만날 수 있을까요?'
WHERE id = 's_negotiation_A2_04';

UPDATE sentences SET
  ex1 = 'Can we include installation in the deal?', ex1_ko = '거래에 설치를 포함시킬 수 있나요?',
  ex2 = 'Can we include training in the deal?', ex2_ko = '거래에 교육을 포함시킬 수 있나요?',
  ex3 = 'Can we include support for one year in the deal?', ex3_ko = '거래에 1년 지원을 포함시킬 수 있나요?',
  ex4 = 'Can we include extra accessories in the deal?', ex4_ko = '거래에 추가 액세서리를 포함시킬 수 있나요?',
  ex5 = 'Can we include a payment plan in the deal?', ex5_ko = '거래에 분할 결제를 포함시킬 수 있나요?'
WHERE id = 's_negotiation_A2_05';

UPDATE sentences SET
  ex1 = 'We''d like to confirm the delivery date in writing.', ex1_ko = '납품일을 서면으로 확인하고 싶어요.',
  ex2 = 'We''d like to confirm the warranty terms in writing.', ex2_ko = '보증 조건을 서면으로 확인하고 싶어요.',
  ex3 = 'We''d like to confirm the cancellation policy in writing.', ex3_ko = '취소 정책을 서면으로 확인하고 싶어요.',
  ex4 = 'We''d like to confirm the discount agreement in writing.', ex4_ko = '할인 합의를 서면으로 확인하고 싶어요.',
  ex5 = 'We''d like to confirm the service scope in writing.', ex5_ko = '서비스 범위를 서면으로 확인하고 싶어요.'
WHERE id = 's_negotiation_A2_06';

UPDATE sentences SET
  ex1 = 'Is there any flexibility on the payment terms?', ex1_ko = '결제 조건에 유연성이 있나요?',
  ex2 = 'Is there any flexibility on the start date?', ex2_ko = '시작 날짜에 유연성이 있나요?',
  ex3 = 'Is there any flexibility on the warranty period?', ex3_ko = '보증 기간에 유연성이 있나요?',
  ex4 = 'Is there any flexibility on the contract length?', ex4_ko = '계약 기간에 유연성이 있나요?',
  ex5 = 'Is there any flexibility on the cancellation fee?', ex5_ko = '취소 수수료에 유연성이 있나요?'
WHERE id = 's_negotiation_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'We''re prepared to commit to a three-year contract if you can waive the setup fee.', ex1_ko = '설치 수수료를 면제해 주시면 3년 계약을 체결할 준비가 돼 있어요.',
  ex2 = 'We''re prepared to commit to an exclusive partnership if you can guarantee priority service.', ex2_ko = '우선 서비스를 보장해 주시면 독점 파트너십을 체결할 준비가 돼 있어요.',
  ex3 = 'We''re prepared to commit to a larger order if you can match the competitor''s price.', ex3_ko = '경쟁사 가격에 맞춰주시면 더 큰 주문을 할 준비가 돼 있어요.',
  ex4 = 'We''re prepared to commit to a multi-year deal if you can offer a price cap.', ex4_ko = '가격 상한을 제시해 주시면 다년 거래를 체결할 준비가 돼 있어요.',
  ex5 = 'We''re prepared to commit to upfront payment if you can extend the warranty.', ex5_ko = '보증을 연장해 주시면 선불 결제할 준비가 돼 있어요.'
WHERE id = 's_negotiation_B1_01';

UPDATE sentences SET
  ex1 = 'Would you be open to a counterproposal on the payment schedule?', ex1_ko = '결제 일정에 대한 역제안을 받아들이실 수 있나요?',
  ex2 = 'Would you be open to a counterproposal on the scope of work?', ex2_ko = '업무 범위에 대한 역제안을 받아들이실 수 있나요?',
  ex3 = 'Would you be open to a counterproposal on the termination clause?', ex3_ko = '계약 해지 조항에 대한 역제안을 받아들이실 수 있나요?',
  ex4 = 'Would you be open to a counterproposal on the volume commitment?', ex4_ko = '물량 약정에 대한 역제안을 받아들이실 수 있나요?',
  ex5 = 'Would you be open to a counterproposal on the pricing structure?', ex5_ko = '가격 구조에 대한 역제안을 받아들이실 수 있나요?'
WHERE id = 's_negotiation_B1_02';

UPDATE sentences SET
  ex1 = 'Our position is that the late delivery penalty needs to be capped.', ex1_ko = '지연 납품 위약금에 상한이 있어야 한다는 것이 우리의 입장이에요.',
  ex2 = 'Our position is that intellectual property must remain with us.', ex2_ko = '지적재산권은 우리에게 남아야 한다는 것이 우리의 입장이에요.',
  ex3 = 'Our position is that the warranty must cover all parts.', ex3_ko = '보증은 모든 부품을 포함해야 한다는 것이 우리의 입장이에요.',
  ex4 = 'Our position is that the audit rights must be retained.', ex4_ko = '감사 권한이 유지되어야 한다는 것이 우리의 입장이에요.',
  ex5 = 'Our position is that pricing must be benchmarked annually.', ex5_ko = '가격이 매년 벤치마킹되어야 한다는 것이 우리의 입장이에요.'
WHERE id = 's_negotiation_B1_03';

UPDATE sentences SET
  ex1 = 'We can agree to that clause, provided that delivery is guaranteed by Friday.', ex1_ko = '금요일까지 배송이 보장된다면 해당 조항에 동의할 수 있어요.',
  ex2 = 'We can agree to that clause, provided that liability is mutually capped.', ex2_ko = '책임이 상호 제한된다면 해당 조항에 동의할 수 있어요.',
  ex3 = 'We can agree to that clause, provided that an exit option is included.', ex3_ko = '해지 옵션이 포함된다면 해당 조항에 동의할 수 있어요.',
  ex4 = 'We can agree to that clause, provided that pricing is locked for two years.', ex4_ko = '가격이 2년 동안 고정된다면 해당 조항에 동의할 수 있어요.',
  ex5 = 'We can agree to that clause, provided that confidentiality is mutual.', ex5_ko = '비밀 유지가 상호적이라면 해당 조항에 동의할 수 있어요.'
WHERE id = 's_negotiation_B1_04';

UPDATE sentences SET
  ex1 = 'We have a firm deadline of next Monday, so we''ll need a decision by then.', ex1_ko = '다음 주 월요일이 확정 마감일이라 그때까지 결정이 필요해요.',
  ex2 = 'We have a firm deadline of the quarter''s end, so we''ll need clarity by then.', ex2_ko = '이번 분기 말이 확정 마감일이라 그때까지 명확성이 필요해요.',
  ex3 = 'We have a firm deadline of the fiscal year, so we''ll need approval by then.', ex3_ko = '회계연도가 확정 마감일이라 그때까지 승인이 필요해요.',
  ex4 = 'We have a firm deadline imposed by our board, so we''ll need terms by then.', ex4_ko = '이사회가 부과한 확정 마감일이 있어 그때까지 조건이 필요해요.',
  ex5 = 'We have a firm deadline tied to the launch, so we''ll need closure by then.', ex5_ko = '출시와 연계된 확정 마감일이 있어 그때까지 마무리가 필요해요.'
WHERE id = 's_negotiation_B1_05';

UPDATE sentences SET
  ex1 = 'All stakeholders have agreed on the framework, so let''s move to the contract drafting.', ex1_ko = '모든 이해관계자가 프레임워크에 동의했으니 계약 초안 작성으로 넘어가요.',
  ex2 = 'All stakeholders have agreed on the timeline, so let''s move to the resource allocation.', ex2_ko = '모든 이해관계자가 일정에 동의했으니 자원 배분으로 넘어가요.',
  ex3 = 'All stakeholders have agreed on the scope, so let''s move to the budget approval.', ex3_ko = '모든 이해관계자가 범위에 동의했으니 예산 승인으로 넘어가요.',
  ex4 = 'All stakeholders have agreed on the principles, so let''s move to the implementation details.', ex4_ko = '모든 이해관계자가 원칙에 동의했으니 실행 세부사항으로 넘어가요.',
  ex5 = 'All stakeholders have agreed on the priorities, so let''s move to the action items.', ex5_ko = '모든 이해관계자가 우선순위에 동의했으니 실행 항목으로 넘어가요.'
WHERE id = 's_negotiation_B1_06';

UPDATE sentences SET
  ex1 = 'If we can''t reach a compromise today, we may need to escalate this issue.', ex1_ko = '오늘 타협에 이르지 못하면 이 문제를 상부로 보고해야 할 수도 있어요.',
  ex2 = 'If we can''t reach a compromise today, we may need to bring in legal counsel.', ex2_ko = '오늘 타협에 이르지 못하면 법률 자문을 들여야 할 수도 있어요.',
  ex3 = 'If we can''t reach a compromise today, we may need to extend the timeline.', ex3_ko = '오늘 타협에 이르지 못하면 일정을 연장해야 할 수도 있어요.',
  ex4 = 'If we can''t reach a compromise today, we may need to consider alternative suppliers.', ex4_ko = '오늘 타협에 이르지 못하면 대체 공급업체를 고려해야 할 수도 있어요.',
  ex5 = 'If we can''t reach a compromise today, we may need to pause the project.', ex5_ko = '오늘 타협에 이르지 못하면 프로젝트를 일시 중단해야 할 수도 있어요.'
WHERE id = 's_negotiation_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The liability clause as drafted exposes us to unlimited damages, which we cannot accept.', ex1_ko = '현재 초안의 책임 조항은 무제한 손해를 노출시켜서 받아들일 수 없어요.',
  ex2 = 'The non-compete clause as drafted exposes us to overly broad restrictions, which we cannot accept.', ex2_ko = '현재 초안의 경업 금지 조항은 과도하게 광범위한 제한을 부과해서 받아들일 수 없어요.',
  ex3 = 'The indemnification clause as drafted exposes us to claims by third parties, which we cannot accept.', ex3_ko = '현재 초안의 면책 조항은 제3자 청구에 노출시켜서 받아들일 수 없어요.',
  ex4 = 'The termination clause as drafted exposes us to arbitrary cancellation, which we cannot accept.', ex4_ko = '현재 초안의 해지 조항은 자의적 취소에 노출시켜서 받아들일 수 없어요.',
  ex5 = 'The IP transfer clause as drafted exposes us to loss of pre-existing rights, which we cannot accept.', ex5_ko = '현재 초안의 지적재산권 이전 조항은 기존 권리 상실에 노출시켜서 받아들일 수 없어요.'
WHERE id = 's_negotiation_B2_01';

UPDATE sentences SET
  ex1 = 'We propose that any disputes be referred to arbitration in Singapore.', ex1_ko = '모든 분쟁은 싱가포르에서의 중재에 회부할 것을 제안해요.',
  ex2 = 'We propose that any disputes be referred to expert determination first.', ex2_ko = '모든 분쟁은 먼저 전문가 판단에 회부할 것을 제안해요.',
  ex3 = 'We propose that any disputes be referred to mediation before litigation.', ex3_ko = '모든 분쟁은 소송 전에 조정에 회부할 것을 제안해요.',
  ex4 = 'We propose that any disputes be referred to a panel of three arbitrators.', ex4_ko = '모든 분쟁은 3인 중재 패널에 회부할 것을 제안해요.',
  ex5 = 'We propose that any disputes be referred to the local commercial court.', ex5_ko = '모든 분쟁은 지역 상사 법원에 회부할 것을 제안해요.'
WHERE id = 's_negotiation_B2_02';

UPDATE sentences SET
  ex1 = 'The warranty period should be extended to thirty-six months to align with industry standards.', ex1_ko = '산업 표준에 맞추기 위해 보증 기간을 36개월로 연장해야 해요.',
  ex2 = 'The notice period should be extended to ninety days to align with industry standards.', ex2_ko = '산업 표준에 맞추기 위해 통보 기간을 90일로 연장해야 해요.',
  ex3 = 'The cure period should be extended to thirty days to align with industry standards.', ex3_ko = '산업 표준에 맞추기 위해 시정 기간을 30일로 연장해야 해요.',
  ex4 = 'The payment terms should be extended to net sixty to align with industry standards.', ex4_ko = '산업 표준에 맞추기 위해 결제 조건을 60일 후 결제로 연장해야 해요.',
  ex5 = 'The audit window should be extended to seven years to align with industry standards.', ex5_ko = '산업 표준에 맞추기 위해 감사 기간을 7년으로 연장해야 해요.'
WHERE id = 's_negotiation_B2_03';

UPDATE sentences SET
  ex1 = 'Payment will be released from escrow only upon completion of all milestones.', ex1_ko = '모든 마일스톤 완료 후에만 에스크로에서 지불이 해제돼요.',
  ex2 = 'Payment will be released from escrow only upon delivery and customer acceptance.', ex2_ko = '배송 및 고객 승인 후에만 에스크로에서 지불이 해제돼요.',
  ex3 = 'Payment will be released from escrow only upon submission of certified test results.', ex3_ko = '인증된 시험 결과 제출 후에만 에스크로에서 지불이 해제돼요.',
  ex4 = 'Payment will be released from escrow only upon final regulatory approval.', ex4_ko = '최종 규제 승인 후에만 에스크로에서 지불이 해제돼요.',
  ex5 = 'Payment will be released from escrow only upon mutual sign-off.', ex5_ko = '상호 사인오프 후에만 에스크로에서 지불이 해제돼요.'
WHERE id = 's_negotiation_B2_04';

UPDATE sentences SET
  ex1 = 'We need to include a force majeure clause covering natural disasters and government action.', ex1_ko = '자연 재해와 정부 조치를 포함하는 불가항력 조항이 필요해요.',
  ex2 = 'We need to include a force majeure clause covering cyber attacks and data breaches.', ex2_ko = '사이버 공격과 데이터 유출을 포함하는 불가항력 조항이 필요해요.',
  ex3 = 'We need to include a force majeure clause covering labor strikes and supply disruptions.', ex3_ko = '노동 파업과 공급 중단을 포함하는 불가항력 조항이 필요해요.',
  ex4 = 'We need to include a force majeure clause covering geopolitical conflict and sanctions.', ex4_ko = '지정학적 갈등과 제재를 포함하는 불가항력 조항이 필요해요.',
  ex5 = 'We need to include a force majeure clause covering public health emergencies.', ex5_ko = '공중 보건 비상사태를 포함하는 불가항력 조항이 필요해요.'
WHERE id = 's_negotiation_B2_05';

UPDATE sentences SET
  ex1 = 'The liquidated damages rate of three percent per week is disproportionate and should be reduced.', ex1_ko = '주당 3%의 약정 손해배상률은 과도하므로 낮춰야 해요.',
  ex2 = 'The minimum order quantity of ten thousand units is disproportionate and should be reduced.', ex2_ko = '최소 주문 수량 1만 개는 과도하므로 낮춰야 해요.',
  ex3 = 'The cancellation penalty of fifty percent is disproportionate and should be reduced.', ex3_ko = '50% 취소 위약금은 과도하므로 낮춰야 해요.',
  ex4 = 'The exclusivity period of ten years is disproportionate and should be reduced.', ex4_ko = '10년 독점 기간은 과도하므로 낮춰야 해요.',
  ex5 = 'The personal guarantee scope is disproportionate and should be reduced.', ex5_ko = '개인 보증 범위는 과도하므로 낮춰야 해요.'
WHERE id = 's_negotiation_B2_06';

UPDATE sentences SET
  ex1 = 'Both parties should ratify the final agreement by the end of next week to avoid further delays.', ex1_ko = '추가 지연을 피하기 위해 양 당사자가 다음 주 말까지 최종 합의를 비준해야 해요.',
  ex2 = 'Both parties should ratify the heads of agreement before the board meeting to avoid further delays.', ex2_ko = '추가 지연을 피하기 위해 양 당사자가 이사회 전까지 합의서 요점을 비준해야 해요.',
  ex3 = 'Both parties should ratify the amendment before financial close to avoid further delays.', ex3_ko = '추가 지연을 피하기 위해 양 당사자가 자금 결산 전까지 수정안을 비준해야 해요.',
  ex4 = 'Both parties should ratify the term sheet before exclusivity expires to avoid further delays.', ex4_ko = '추가 지연을 피하기 위해 양 당사자가 독점 기간 만료 전까지 텀시트를 비준해야 해요.',
  ex5 = 'Both parties should ratify the settlement by the deadline to avoid further delays.', ex5_ko = '추가 지연을 피하기 위해 양 당사자가 마감일까지 합의를 비준해야 해요.'
WHERE id = 's_negotiation_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The fiduciary obligations imposed on the directors preclude entering into a related-party transaction without disclosure.', ex1_ko = '이사들에게 부과된 신탁 의무는 공개 없이 특수관계자 거래를 체결하는 것을 배제해요.',
  ex2 = 'The fiduciary obligations imposed on the agent preclude personal profit from this opportunity.', ex2_ko = '대리인에게 부과된 신탁 의무는 이 기회에서 개인적 이익을 얻는 것을 배제해요.',
  ex3 = 'The fiduciary obligations imposed on the manager preclude diverting corporate opportunity.', ex3_ko = '경영자에게 부과된 신탁 의무는 기업 기회를 전용하는 것을 배제해요.',
  ex4 = 'The fiduciary obligations imposed on the partner preclude competing with the firm''s interests.', ex4_ko = '파트너에게 부과된 신탁 의무는 회사의 이익과 경쟁하는 것을 배제해요.',
  ex5 = 'The fiduciary obligations imposed on the trustee preclude favoring one beneficiary over another.', ex5_ko = '수탁자에게 부과된 신탁 의무는 한 수익자를 다른 수익자보다 우대하는 것을 배제해요.'
WHERE id = 's_negotiation_C1_01';

UPDATE sentences SET
  ex1 = 'The mortgage held by the lender must be discharged prior to closing.', ex1_ko = '대출 기관이 보유한 모기지는 마감 전에 해제돼야 해요.',
  ex2 = 'The security interest held by the bank must be discharged prior to assignment.', ex2_ko = '은행이 보유한 담보권은 양도 전에 해제돼야 해요.',
  ex3 = 'The encumbrance held by the supplier must be discharged prior to sale.', ex3_ko = '공급업체가 보유한 부담은 매각 전에 해제돼야 해요.',
  ex4 = 'The charge held by the bondholder must be discharged prior to restructuring.', ex4_ko = '채권자가 보유한 담보는 구조조정 전에 해제돼야 해요.',
  ex5 = 'The claim held by the tax authority must be discharged prior to dividend payment.', ex5_ko = '세무 당국이 보유한 청구는 배당금 지급 전에 해제돼야 해요.'
WHERE id = 's_negotiation_C1_02';

UPDATE sentences SET
  ex1 = 'We are seeking an injunction to restrain the respondent from disclosing confidential information.', ex1_ko = '피응답인이 기밀 정보를 공개하는 것을 막기 위해 금지 명령을 구하고 있어요.',
  ex2 = 'We are seeking an injunction to restrain the defendant from soliciting our clients.', ex2_ko = '피고가 저희 고객을 영입하는 것을 막기 위해 금지 명령을 구하고 있어요.',
  ex3 = 'We are seeking an injunction to restrain the former employee from joining a competitor.', ex3_ko = '전직 직원이 경쟁사에 합류하는 것을 막기 위해 금지 명령을 구하고 있어요.',
  ex4 = 'We are seeking an injunction to restrain the licensee from continuing unauthorized use.', ex4_ko = '라이선시가 무단 사용을 계속하는 것을 막기 위해 금지 명령을 구하고 있어요.',
  ex5 = 'We are seeking an injunction to restrain the publisher from circulating the work.', ex5_ko = '출판사가 그 작품을 유통시키는 것을 막기 위해 금지 명령을 구하고 있어요.'
WHERE id = 's_negotiation_C1_03';

UPDATE sentences SET
  ex1 = 'The remedy available for breach of this covenant is specific performance, not merely damages.', ex1_ko = '이 약정 위반에 대한 구제책은 손해배상뿐만 아니라 특정 이행이에요.',
  ex2 = 'The remedy available for breach of confidentiality is injunctive relief, not merely damages.', ex2_ko = '비밀유지 위반에 대한 구제책은 손해배상뿐만 아니라 금지 명령이에요.',
  ex3 = 'The remedy available for repudiation is termination of contract, not merely damages.', ex3_ko = '계약 부인에 대한 구제책은 손해배상뿐만 아니라 계약 해지예요.',
  ex4 = 'The remedy available for unjust enrichment is restitution, not merely damages.', ex4_ko = '부당 이득에 대한 구제책은 손해배상뿐만 아니라 원상 회복이에요.',
  ex5 = 'The remedy available for breach of fiduciary duty is account of profits, not merely damages.', ex5_ko = '신탁 의무 위반에 대한 구제책은 손해배상뿐만 아니라 이익 정산이에요.'
WHERE id = 's_negotiation_C1_04';

UPDATE sentences SET
  ex1 = 'The jurisdiction clause designates London as the exclusive forum for all disputes.', ex1_ko = '관할권 조항은 모든 분쟁에 대해 런던을 독점적 법정지로 지정해요.',
  ex2 = 'The arbitration clause designates ICC rules as the governing procedure.', ex2_ko = '중재 조항은 ICC 규정을 적용 절차로 지정해요.',
  ex3 = 'The governing law clause designates Singaporean law as the applicable system.', ex3_ko = '준거법 조항은 싱가포르 법을 적용 법제로 지정해요.',
  ex4 = 'The escalation clause designates senior management as the first dispute forum.', ex4_ko = '단계적 해결 조항은 고위 경영진을 1차 분쟁 협의 장소로 지정해요.',
  ex5 = 'The notice clause designates email as the valid method of communication.', ex5_ko = '통지 조항은 이메일을 유효한 의사소통 방법으로 지정해요.'
WHERE id = 's_negotiation_C1_05';

UPDATE sentences SET
  ex1 = 'Subrogation rights vest in the insurer upon payment of the insured''s claim.', ex1_ko = '피보험자의 청구 지급 시 보험사에게 대위 청구권이 발생해요.',
  ex2 = 'Subrogation rights vest in the surety upon discharge of the principal debt.', ex2_ko = '주채무 변제 시 보증인에게 대위 청구권이 발생해요.',
  ex3 = 'Subrogation rights vest in the guarantor upon satisfaction of the underlying obligation.', ex3_ko = '기초 의무 이행 시 보증인에게 대위 청구권이 발생해요.',
  ex4 = 'Subrogation rights vest in the indemnifier upon settlement of the indemnified loss.', ex4_ko = '면책 손실 정산 시 면책 제공자에게 대위 청구권이 발생해요.',
  ex5 = 'Subrogation rights vest in the issuer upon honoring of the letter of credit.', ex5_ko = '신용장 결제 시 발행은행에게 대위 청구권이 발생해요.'
WHERE id = 's_negotiation_C1_06';

UPDATE sentences SET
  ex1 = 'The conditions precedent to closing have not been satisfied, suspending the buyer''s obligation to fund.', ex1_ko = '마감의 선행 조건이 충족되지 않아 매수인의 자금 의무가 정지됐어요.',
  ex2 = 'The conditions precedent to release have not been satisfied, suspending the escrow agent''s duty to disburse.', ex2_ko = '해제의 선행 조건이 충족되지 않아 에스크로 대리인의 지급 의무가 정지됐어요.',
  ex3 = 'The conditions precedent to issuance have not been satisfied, suspending the guarantor''s liability.', ex3_ko = '발행의 선행 조건이 충족되지 않아 보증인의 책임이 정지됐어요.',
  ex4 = 'The conditions precedent to assignment have not been satisfied, suspending the right of substitution.', ex4_ko = '양도의 선행 조건이 충족되지 않아 대체 권리가 정지됐어요.',
  ex5 = 'The conditions precedent to performance have not been satisfied, suspending the contractor''s duty to proceed.', ex5_ko = '이행의 선행 조건이 충족되지 않아 도급인의 진행 의무가 정지됐어요.'
WHERE id = 's_negotiation_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The doctrine of promissory estoppel bars the defendant from resiling from the assurance given during the side-letter discussions.', ex1_ko = '약속적 금반언 원칙은 피고가 부속 서한 논의 중 한 확약에서 후퇴하는 것을 막아요.',
  ex2 = 'The doctrine of promissory estoppel bars the licensor from resiling from the conduct that induced reliance.', ex2_ko = '약속적 금반언 원칙은 라이선서가 신뢰를 유도한 행위에서 후퇴하는 것을 막아요.',
  ex3 = 'The doctrine of promissory estoppel bars the seller from resiling from the representation made about title.', ex3_ko = '약속적 금반언 원칙은 매도인이 소유권에 대해 한 진술에서 후퇴하는 것을 막아요.',
  ex4 = 'The doctrine of promissory estoppel bars the landlord from resiling from the assurance about renewal terms.', ex4_ko = '약속적 금반언 원칙은 임대인이 갱신 조건에 대한 확약에서 후퇴하는 것을 막아요.',
  ex5 = 'The doctrine of promissory estoppel bars the employer from resiling from the promise of severance.', ex5_ko = '약속적 금반언 원칙은 고용주가 퇴직금 약속에서 후퇴하는 것을 막아요.'
WHERE id = 's_negotiation_C2_01';

UPDATE sentences SET
  ex1 = 'Quantum meruit entitles the contractor to reasonable remuneration for work performed outside the contractual scope.', ex1_ko = '계약 범위 외 수행된 작업에 대해 도급인은 합리적인 보수를 청구할 권리가 있어요.',
  ex2 = 'Quantum meruit entitles the consultant to reasonable remuneration for advisory services rendered in good faith.', ex2_ko = '선의로 제공된 자문 서비스에 대해 컨설턴트는 합리적인 보수를 청구할 권리가 있어요.',
  ex3 = 'Quantum meruit entitles the agent to reasonable remuneration for procurement efforts undertaken on the principal''s behalf.', ex3_ko = '본인을 대신하여 수행된 조달 노력에 대해 대리인은 합리적인 보수를 청구할 권리가 있어요.',
  ex4 = 'Quantum meruit entitles the supplier to reasonable remuneration for goods delivered under a void contract.', ex4_ko = '무효 계약 하에서 납품된 상품에 대해 공급자는 합리적인 보수를 청구할 권리가 있어요.',
  ex5 = 'Quantum meruit entitles the professional to reasonable remuneration where formal fee terms were never finalised.', ex5_ko = '공식 수수료 조건이 확정되지 않은 경우 전문가는 합리적인 보수를 청구할 권리가 있어요.'
WHERE id = 's_negotiation_C2_02';

UPDATE sentences SET
  ex1 = 'The contract is void ab initio on the grounds of economic duress applied during the execution phase.', ex1_ko = '계약 체결 단계에서 가해진 경제적 강박을 이유로 계약은 처음부터 무효예요.',
  ex2 = 'The contract is void ab initio on the grounds of fundamental mistake regarding the subject matter.', ex2_ko = '거래 대상에 관한 근본적 착오를 이유로 계약은 처음부터 무효예요.',
  ex3 = 'The contract is void ab initio on the grounds of illegality at the time of formation.', ex3_ko = '체결 시점의 위법성을 이유로 계약은 처음부터 무효예요.',
  ex4 = 'The contract is void ab initio on the grounds of incapacity of the contracting party.', ex4_ko = '계약 당사자의 무능력을 이유로 계약은 처음부터 무효예요.',
  ex5 = 'The contract is void ab initio on the grounds of fraudulent misrepresentation by the seller.', ex5_ko = '매도인의 사기적 허위 진술을 이유로 계약은 처음부터 무효예요.'
WHERE id = 's_negotiation_C2_03';

UPDATE sentences SET
  ex1 = 'Novation extinguishes the original obligation and substitutes a new contract between the parties, thereby releasing the original debtor.', ex1_ko = '계약 갱신은 원래 의무를 소멸시키고 새로운 계약으로 대체해 원래 채무자를 면책시켜요.',
  ex2 = 'Novation extinguishes the prior tenancy and substitutes a new lease between the parties, thereby releasing the outgoing tenant.', ex2_ko = '계약 갱신은 이전 임차 관계를 소멸시키고 새로운 임대 계약으로 대체해 퇴거 세입자를 면책시켜요.',
  ex3 = 'Novation extinguishes the underlying loan and substitutes a new facility between the parties, thereby releasing the original lender.', ex3_ko = '계약 갱신은 기초 대출을 소멸시키고 새로운 대출 시설로 대체해 원래 대출 기관을 면책시켜요.',
  ex4 = 'Novation extinguishes the original supply agreement and substitutes a new arrangement between the parties, thereby releasing the prior supplier.', ex4_ko = '계약 갱신은 원래 공급 계약을 소멸시키고 새로운 협약으로 대체해 이전 공급자를 면책시켜요.',
  ex5 = 'Novation extinguishes the guarantee given and substitutes a new security between the parties, thereby releasing the original guarantor.', ex5_ko = '계약 갱신은 제공된 보증을 소멸시키고 새로운 담보로 대체해 원래 보증인을 면책시켜요.'
WHERE id = 's_negotiation_C2_04';

UPDATE sentences SET
  ex1 = 'Under the rule in contra proferentem, the ambiguous indemnity clause is construed against the party who drafted it.', ex1_ko = '작성자 불이익 원칙에 따라 모호한 면책 조항은 이를 작성한 당사자에게 불리하게 해석돼요.',
  ex2 = 'Under the rule in contra proferentem, the ambiguous warranty clause is construed against the party who drafted it.', ex2_ko = '작성자 불이익 원칙에 따라 모호한 보증 조항은 이를 작성한 당사자에게 불리하게 해석돼요.',
  ex3 = 'Under the rule in contra proferentem, the ambiguous limitation of liability is construed against the party who drafted it.', ex3_ko = '작성자 불이익 원칙에 따라 모호한 책임 제한 조항은 이를 작성한 당사자에게 불리하게 해석돼요.',
  ex4 = 'Under the rule in contra proferentem, the ambiguous notice provision is construed against the party who drafted it.', ex4_ko = '작성자 불이익 원칙에 따라 모호한 통지 조항은 이를 작성한 당사자에게 불리하게 해석돼요.',
  ex5 = 'Under the rule in contra proferentem, the ambiguous termination right is construed against the party who drafted it.', ex5_ko = '작성자 불이익 원칙에 따라 모호한 해지 권한 조항은 이를 작성한 당사자에게 불리하게 해석돼요.'
WHERE id = 's_negotiation_C2_05';

UPDATE sentences SET
  ex1 = 'The unjust enrichment claim rests on the defendant''s failure to make restitution following rescission of the contract.', ex1_ko = '부당 이득 청구는 계약 취소 후 피고의 원상 회복 불이행에 근거해요.',
  ex2 = 'The unjust enrichment claim rests on the recipient''s failure to make restitution following a mistaken payment.', ex2_ko = '부당 이득 청구는 착오 송금 후 수령인의 원상 회복 불이행에 근거해요.',
  ex3 = 'The unjust enrichment claim rests on the licensee''s failure to make restitution following termination of the licence.', ex3_ko = '부당 이득 청구는 라이선스 해지 후 라이선시의 원상 회복 불이행에 근거해요.',
  ex4 = 'The unjust enrichment claim rests on the borrower''s failure to make restitution following a void loan agreement.', ex4_ko = '부당 이득 청구는 무효 대출 계약 후 차입자의 원상 회복 불이행에 근거해요.',
  ex5 = 'The unjust enrichment claim rests on the recipient''s failure to make restitution following a frustrated transaction.', ex5_ko = '부당 이득 청구는 좌절된 거래 후 수령인의 원상 회복 불이행에 근거해요.'
WHERE id = 's_negotiation_C2_06';

UPDATE sentences SET
  ex1 = 'Piercing the corporate veil is warranted where the shell entity was used as a mere facade to evade pre-existing contractual obligations.', ex1_ko = '서류상 회사가 기존 계약 의무를 회피하기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.',
  ex2 = 'Piercing the corporate veil is warranted where the subsidiary was used as a mere facade to shield assets from creditors.', ex2_ko = '자회사가 자산을 채권자로부터 보호하기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.',
  ex3 = 'Piercing the corporate veil is warranted where the holding structure was used as a mere facade to evade tax obligations.', ex3_ko = '지주 구조가 세금 의무를 회피하기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.',
  ex4 = 'Piercing the corporate veil is warranted where the corporate form was used as a mere facade to commit fraud against creditors.', ex4_ko = '법인 형태가 채권자에 대한 사기를 저지르기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.',
  ex5 = 'Piercing the corporate veil is warranted where the special purpose vehicle was used as a mere facade to circumvent regulatory restrictions.', ex5_ko = '특수목적법인이 규제 제한을 회피하기 위한 단순 위장 수단으로 사용된 경우 법인격 부인이 정당화돼요.'
WHERE id = 's_negotiation_C2_07';
