-- supabase-sentences-work-examples.sql
-- work topic: 문장 패턴별 예문 ex1~ex5 추가
-- 49 UPDATE statements
-- Generated: 2026-05-26

-- ══════════════════════════════════════
-- A1 (7 patterns)
-- ══════════════════════════════════════

UPDATE sentences SET
  ex1 = 'What do you do for a living?', ex1_ko = '어떤 일을 하세요?',
  ex2 = 'What does your brother do for work?', ex2_ko = '오빠는 어떤 일을 하세요?',
  ex3 = 'What did you do for work before this?', ex3_ko = '이 일을 하기 전에는 어떤 일을 하셨어요?',
  ex4 = 'What does she do for work these days?', ex4_ko = '그녀는 요즘 어떤 일을 하고 있어요?',
  ex5 = 'What do most people in your family do for work?', ex5_ko = '가족 중에 대부분이 어떤 일을 하세요?'
WHERE id = 's_work_A1_01';

UPDATE sentences SET
  ex1 = 'I work at a small tech startup.', ex1_ko = '저는 작은 테크 스타트업에서 일해요.',
  ex2 = 'She works at a hospital near the city center.', ex2_ko = '그녀는 도심 근처 병원에서 일해요.',
  ex3 = 'He works at a school in the suburbs.', ex3_ko = '그는 교외의 학교에서 일해요.',
  ex4 = 'I used to work at a law firm downtown.', ex4_ko = '저는 예전에 도심 법무법인에서 일했어요.',
  ex5 = 'They both work at the same company downtown.', ex5_ko = '그들은 둘 다 도심의 같은 회사에서 일해요.'
WHERE id = 's_work_A1_02';

UPDATE sentences SET
  ex1 = 'My shift starts at seven in the morning.', ex1_ko = '제 교대 근무는 아침 7시에 시작해요.',
  ex2 = 'School starts at eight thirty in the morning.', ex2_ko = '학교는 아침 8시 30분에 시작해요.',
  ex3 = 'The office opens at nine in the morning.', ex3_ko = '사무실은 아침 9시에 열어요.',
  ex4 = 'Our team meeting starts at ten in the morning.', ex4_ko = '팀 회의는 아침 10시에 시작해요.',
  ex5 = 'His part-time job starts at six in the morning.', ex5_ko = '그의 아르바이트는 아침 6시에 시작해요.'
WHERE id = 's_work_A1_03';

UPDATE sentences SET
  ex1 = 'I have a team call this afternoon.', ex1_ko = '오늘 오후에 팀 통화가 있어요.',
  ex2 = 'I have a training session this afternoon.', ex2_ko = '오늘 오후에 교육이 있어요.',
  ex3 = 'She has a job interview this afternoon.', ex3_ko = '그녀는 오늘 오후에 면접이 있어요.',
  ex4 = 'We have a client visit this afternoon.', ex4_ko = '오늘 오후에 고객 방문이 있어요.',
  ex5 = 'I have a presentation review this afternoon.', ex5_ko = '오늘 오후에 발표 검토가 있어요.'
WHERE id = 's_work_A1_04';

UPDATE sentences SET
  ex1 = 'Can you send me an email with the address?', ex1_ko = '주소를 이메일로 보내주실 수 있어요?',
  ex2 = 'Can you send me an email with the schedule?', ex2_ko = '일정을 이메일로 보내주실 수 있어요?',
  ex3 = 'Can you send me an email with the contract?', ex3_ko = '계약서를 이메일로 보내주실 수 있어요?',
  ex4 = 'Can you send me an email with your availability?', ex4_ko = '가능한 시간을 이메일로 보내주실 수 있어요?',
  ex5 = 'Can you send me an email with the updated file?', ex5_ko = '업데이트된 파일을 이메일로 보내주실 수 있어요?'
WHERE id = 's_work_A1_05';

UPDATE sentences SET
  ex1 = 'My manager is very easy to work with.', ex1_ko = '우리 매니저는 함께 일하기 정말 편해요.',
  ex2 = 'My new colleague is very easy to work with.', ex2_ko = '새 동료는 함께 일하기 정말 편해요.',
  ex3 = 'My client is very easy to work with.', ex3_ko = '우리 고객은 함께 일하기 정말 편해요.',
  ex4 = 'The team lead is very easy to work with.', ex4_ko = '팀 리드는 함께 일하기 정말 편해요.',
  ex5 = 'Everyone here is very easy to work with.', ex5_ko = '여기 모든 분이 함께 일하기 정말 편해요.'
WHERE id = 's_work_A1_06';

UPDATE sentences SET
  ex1 = 'Let''s take a break and get some coffee.', ex1_ko = '잠깐 쉬면서 커피 한 잔 해요.',
  ex2 = 'Let''s take a break — we''ve been at this for two hours.', ex2_ko = '잠깐 쉬어요. 두 시간 동안 계속했잖아요.',
  ex3 = 'Let''s take a five-minute break before we continue.', ex3_ko = '계속하기 전에 5분 휴식을 취해요.',
  ex4 = 'Let''s take a break and come back with fresh eyes.', ex4_ko = '잠깐 쉬고 다시 보면서 새로운 시각으로 봐요.',
  ex5 = 'Let''s take a break and stretch our legs.', ex5_ko = '잠깐 쉬면서 다리 좀 펴요.'
WHERE id = 's_work_A1_07';

-- ══════════════════════════════════════
-- A2 (7 patterns)
-- ══════════════════════════════════════

UPDATE sentences SET
  ex1 = 'Could you send the summary by Friday?', ex1_ko = '금요일까지 요약본을 보내주실 수 있어요?',
  ex2 = 'Could you send the invoice by Friday?', ex2_ko = '금요일까지 인보이스를 보내주실 수 있어요?',
  ex3 = 'Could you send the updated contract by Friday?', ex3_ko = '금요일까지 수정된 계약서를 보내주실 수 있어요?',
  ex4 = 'Could you send the budget proposal by Friday?', ex4_ko = '금요일까지 예산 제안서를 보내주실 수 있어요?',
  ex5 = 'Could you send your final response by Friday?', ex5_ko = '금요일까지 최종 답변을 보내주실 수 있어요?'
WHERE id = 's_work_A2_01';

UPDATE sentences SET
  ex1 = 'I need your feedback on this proposal.', ex1_ko = '이 제안서에 대한 의견을 듣고 싶어요.',
  ex2 = 'I need your feedback on this design.', ex2_ko = '이 디자인에 대한 의견을 듣고 싶어요.',
  ex3 = 'I need your feedback on this budget plan.', ex3_ko = '이 예산 계획에 대한 의견을 듣고 싶어요.',
  ex4 = 'I need your feedback on this email before I send it.', ex4_ko = '보내기 전에 이 이메일에 대한 의견을 듣고 싶어요.',
  ex5 = 'I need your feedback on this presentation deck.', ex5_ko = '이 발표 자료에 대한 의견을 듣고 싶어요.'
WHERE id = 's_work_A2_02';

UPDATE sentences SET
  ex1 = 'The deadline is this Friday. Can we manage that?', ex1_ko = '마감이 이번 주 금요일이에요. 맞출 수 있을까요?',
  ex2 = 'The deadline is tomorrow morning. Can we manage that?', ex2_ko = '마감이 내일 아침이에요. 맞출 수 있을까요?',
  ex3 = 'The deadline is in three days. Can we manage that?', ex3_ko = '마감이 사흘 후예요. 맞출 수 있을까요?',
  ex4 = 'The deadline is end of today. Can we manage that?', ex4_ko = '마감이 오늘 중이에요. 맞출 수 있을까요?',
  ex5 = 'The deadline is Wednesday at noon. Can we manage that?', ex5_ko = '마감이 수요일 정오예요. 맞출 수 있을까요?'
WHERE id = 's_work_A2_03';

UPDATE sentences SET
  ex1 = 'Please submit your weekly report by end of day.', ex1_ko = '오늘 중으로 주간 보고서를 제출해주세요.',
  ex2 = 'Please submit your expense form by end of day.', ex2_ko = '오늘 중으로 경비 신청서를 제출해주세요.',
  ex3 = 'Please submit your contract review by end of day.', ex3_ko = '오늘 중으로 계약서 검토를 완료해 제출해주세요.',
  ex4 = 'Please submit your leave request by end of day.', ex4_ko = '오늘 중으로 휴가 신청서를 제출해주세요.',
  ex5 = 'Please submit your project update by end of day.', ex5_ko = '오늘 중으로 프로젝트 업데이트를 제출해주세요.'
WHERE id = 's_work_A2_04';

UPDATE sentences SET
  ex1 = 'I will follow up with the supplier this week.', ex1_ko = '이번 주에 공급업체에 후속 연락을 할게요.',
  ex2 = 'I will follow up with the recruiter this week.', ex2_ko = '이번 주에 채용 담당자에게 후속 연락을 할게요.',
  ex3 = 'I will follow up with the manager this week.', ex3_ko = '이번 주에 매니저에게 후속 연락을 할게요.',
  ex4 = 'She will follow up with the legal team this week.', ex4_ko = '그녀가 이번 주에 법무팀에 후속 연락을 할 거예요.',
  ex5 = 'I will follow up with all attendees this week.', ex5_ko = '이번 주에 모든 참석자에게 후속 연락을 할게요.'
WHERE id = 's_work_A2_05';

UPDATE sentences SET
  ex1 = 'Can you approve this budget request by tomorrow?', ex1_ko = '내일까지 이 예산 요청을 승인해줄 수 있어요?',
  ex2 = 'Can you approve this leave request by tomorrow?', ex2_ko = '내일까지 이 휴가 신청을 승인해줄 수 있어요?',
  ex3 = 'Can you approve this proposal by tomorrow?', ex3_ko = '내일까지 이 제안서를 승인해줄 수 있어요?',
  ex4 = 'Can you approve these expenses by tomorrow?', ex4_ko = '내일까지 이 경비를 승인해줄 수 있어요?',
  ex5 = 'Can you approve the contract changes by tomorrow?', ex5_ko = '내일까지 계약 변경 사항을 승인해줄 수 있어요?'
WHERE id = 's_work_A2_06';

UPDATE sentences SET
  ex1 = 'I am working on the budget spreadsheet right now.', ex1_ko = '지금 예산 스프레드시트를 작업하고 있어요.',
  ex2 = 'I am working on the client proposal right now.', ex2_ko = '지금 고객 제안서를 작업하고 있어요.',
  ex3 = 'She is working on the presentation slides right now.', ex3_ko = '그녀는 지금 발표 슬라이드를 작업하고 있어요.',
  ex4 = 'I am working on the contract review right now.', ex4_ko = '지금 계약서 검토를 하고 있어요.',
  ex5 = 'He is working on the quarterly figures right now.', ex5_ko = '그는 지금 분기 수치를 작업하고 있어요.'
WHERE id = 's_work_A2_07';

-- ══════════════════════════════════════
-- B1 (7 patterns)
-- ══════════════════════════════════════

UPDATE sentences SET
  ex1 = 'Could we schedule a call to discuss the timeline?', ex1_ko = '타임라인을 논의하기 위한 통화를 잡을 수 있을까요?',
  ex2 = 'Could we schedule a call to review the proposal?', ex2_ko = '제안서를 검토하기 위한 통화를 잡을 수 있을까요?',
  ex3 = 'Could we schedule a call to go over the contract?', ex3_ko = '계약서를 살펴보기 위한 통화를 잡을 수 있을까요?',
  ex4 = 'Could we schedule a call to discuss next steps?', ex4_ko = '다음 단계를 논의하기 위한 통화를 잡을 수 있을까요?',
  ex5 = 'Could we schedule a call to introduce the new team members?', ex5_ko = '새 팀원들을 소개하기 위한 통화를 잡을 수 있을까요?'
WHERE id = 's_work_B1_01';

UPDATE sentences SET
  ex1 = 'Let me check the client''s availability before we schedule.', ex1_ko = '일정을 잡기 전에 고객의 가능한 시간을 확인해볼게요.',
  ex2 = 'Let me check the director''s availability before we confirm.', ex2_ko = '확정하기 전에 이사의 가능한 시간을 확인해볼게요.',
  ex3 = 'Let me check the team''s availability before we book the room.', ex3_ko = '회의실을 예약하기 전에 팀의 가능한 시간을 확인해볼게요.',
  ex4 = 'Let me check my own availability before I commit.', ex4_ko = '확약하기 전에 제 일정을 먼저 확인해볼게요.',
  ex5 = 'Let me check everyone''s availability before we set the date.', ex5_ko = '날짜를 정하기 전에 모든 분의 가능한 시간을 확인해볼게요.'
WHERE id = 's_work_B1_02';

UPDATE sentences SET
  ex1 = 'I am writing to follow up on our call last Thursday.', ex1_ko = '지난 목요일 통화에 대한 후속으로 연락드려요.',
  ex2 = 'I am writing to follow up on the proposal I sent last week.', ex2_ko = '지난주에 보낸 제안서에 대한 후속으로 연락드려요.',
  ex3 = 'I am writing to follow up on your earlier inquiry.', ex3_ko = '이전에 하신 문의에 대한 후속으로 연락드려요.',
  ex4 = 'I am writing to follow up on the contract review.', ex4_ko = '계약서 검토에 대한 후속으로 연락드려요.',
  ex5 = 'I am writing to follow up on the action items from last week.', ex5_ko = '지난주 액션 아이템에 대한 후속으로 연락드려요.'
WHERE id = 's_work_B1_03';

UPDATE sentences SET
  ex1 = 'Please find the meeting minutes attached.', ex1_ko = '회의록을 첨부파일로 보내드려요.',
  ex2 = 'Please find the project proposal attached.', ex2_ko = '프로젝트 제안서를 첨부파일로 보내드려요.',
  ex3 = 'Please find the updated schedule attached.', ex3_ko = '업데이트된 일정을 첨부파일로 보내드려요.',
  ex4 = 'Please find the signed contract attached.', ex4_ko = '서명된 계약서를 첨부파일로 보내드려요.',
  ex5 = 'Please find the quarterly report attached.', ex5_ko = '분기 보고서를 첨부파일로 보내드려요.'
WHERE id = 's_work_B1_04';

UPDATE sentences SET
  ex1 = 'Could you delegate this to a junior team member?', ex1_ko = '이 업무를 팀의 주니어 구성원에게 위임해줄 수 있어요?',
  ex2 = 'Could you delegate this to the ops team?', ex2_ko = '이 업무를 운영팀에 위임해줄 수 있어요?',
  ex3 = 'Could you delegate this task to someone with availability?', ex3_ko = '여유가 있는 사람에게 이 업무를 위임해줄 수 있어요?',
  ex4 = 'Could you delegate the scheduling to your assistant?', ex4_ko = '일정 관리를 비서에게 위임해줄 수 있어요?',
  ex5 = 'Could you delegate the follow-up calls to the support team?', ex5_ko = '후속 통화를 지원팀에 위임해줄 수 있어요?'
WHERE id = 's_work_B1_05';

UPDATE sentences SET
  ex1 = 'We need to finalize the agenda before Wednesday.', ex1_ko = '수요일 전에 안건을 확정해야 해요.',
  ex2 = 'We need to finalize the budget before the board meeting.', ex2_ko = '이사회 전에 예산을 확정해야 해요.',
  ex3 = 'We need to finalize the contract before end of month.', ex3_ko = '월말 전에 계약을 확정해야 해요.',
  ex4 = 'We need to finalize the guest list before Tuesday.', ex4_ko = '화요일 전에 초청자 명단을 확정해야 해요.',
  ex5 = 'We need to finalize the scope before the kick-off.', ex5_ko = '킥오프 전에 범위를 확정해야 해요.'
WHERE id = 's_work_B1_06';

UPDATE sentences SET
  ex1 = 'The project is on track to meet the deadline by Q4.', ex1_ko = '프로젝트는 4분기 마감일을 맞출 궤도에 있어요.',
  ex2 = 'The product is on track to launch by Q2.', ex2_ko = '제품은 2분기까지 출시할 궤도에 있어요.',
  ex3 = 'Our team is on track to hit the target by year-end.', ex3_ko = '팀은 연말까지 목표를 달성할 궤도에 있어요.',
  ex4 = 'The integration is on track to complete by Q1.', ex4_ko = '통합은 1분기까지 완료할 궤도에 있어요.',
  ex5 = 'The rollout is on track to reach all markets by Q3.', ex5_ko = '출시는 3분기까지 모든 시장에 도달할 궤도에 있어요.'
WHERE id = 's_work_B1_07';

-- ══════════════════════════════════════
-- B2 (7 patterns)
-- ══════════════════════════════════════

UPDATE sentences SET
  ex1 = 'Our Q3 sales exceeded the target by ten percent.', ex1_ko = '3분기 매출이 목표를 10% 초과했어요.',
  ex2 = 'Customer satisfaction exceeded the KPI by eight points.', ex2_ko = '고객 만족도가 KPI를 8점 초과했어요.',
  ex3 = 'User retention exceeded the KPI by twenty percent.', ex3_ko = '사용자 유지율이 KPI를 20% 초과했어요.',
  ex4 = 'New sign-ups exceeded the quarterly KPI by thirty percent.', ex4_ko = '신규 가입이 분기 KPI를 30% 초과했어요.',
  ex5 = 'Cost reduction exceeded the KPI target by five percent.', ex5_ko = '비용 절감이 KPI 목표를 5% 초과했어요.'
WHERE id = 's_work_B2_01';

UPDATE sentences SET
  ex1 = 'I would like to walk you through our annual results.', ex1_ko = '연간 실적을 안내해드리고 싶어요.',
  ex2 = 'I would like to walk you through our product roadmap.', ex2_ko = '제품 로드맵을 안내해드리고 싶어요.',
  ex3 = 'I would like to walk you through the proposed changes.', ex3_ko = '제안된 변경 사항을 안내해드리고 싶어요.',
  ex4 = 'I would like to walk you through our onboarding process.', ex4_ko = '온보딩 프로세스를 안내해드리고 싶어요.',
  ex5 = 'I would like to walk you through the new workflow.', ex5_ko = '새로운 업무 흐름을 안내해드리고 싶어요.'
WHERE id = 's_work_B2_02';

UPDATE sentences SET
  ex1 = 'To leverage our data, we need to invest in analytics.', ex1_ko = '데이터를 활용하려면 분석에 투자해야 해요.',
  ex2 = 'To leverage our network, we should partner with distributors.', ex2_ko = '네트워크를 활용하려면 유통업체와 파트너십을 맺어야 해요.',
  ex3 = 'To leverage our brand, we need to expand into new markets.', ex3_ko = '브랜드를 활용하려면 새 시장으로 확장해야 해요.',
  ex4 = 'To leverage our technology, we should explore licensing deals.', ex4_ko = '기술을 활용하려면 라이선싱 거래를 모색해야 해요.',
  ex5 = 'To leverage our talent, we need to remove bureaucratic barriers.', ex5_ko = '인재를 활용하려면 관료적 장벽을 없애야 해요.'
WHERE id = 's_work_B2_03';

UPDATE sentences SET
  ex1 = 'The pivot to a freemium model boosted our user base by forty percent.', ex1_ko = '프리미엄 모델로의 전환이 사용자 기반을 40% 끌어올렸어요.',
  ex2 = 'The pivot to direct sales improved our margin by twelve percent.', ex2_ko = '직접 판매로의 전환이 마진을 12% 개선했어요.',
  ex3 = 'The pivot to mobile-first design reduced our churn rate significantly.', ex3_ko = '모바일 우선 디자인으로의 전환으로 이탈률이 크게 줄었어요.',
  ex4 = 'The pivot to enterprise clients improved our revenue stability.', ex4_ko = '기업 고객으로의 전환이 수익 안정성을 향상시켰어요.',
  ex5 = 'The pivot to an annual billing cycle improved cash flow by thirty percent.', ex5_ko = '연간 결제 주기로의 전환이 현금 흐름을 30% 개선했어요.'
WHERE id = 's_work_B2_04';

UPDATE sentences SET
  ex1 = 'Our onboarding process is now fully scalable across regions.', ex1_ko = '온보딩 프로세스가 이제 지역 전체에 확장 가능해요.',
  ex2 = 'Our customer support model is now fully scalable across teams.', ex2_ko = '고객 지원 모델이 이제 팀 전체에 확장 가능해요.',
  ex3 = 'Our data pipeline is now fully scalable across data volumes.', ex3_ko = '데이터 파이프라인이 이제 데이터 규모에 관계없이 확장 가능해요.',
  ex4 = 'Our training program is now fully scalable across locations.', ex4_ko = '교육 프로그램이 이제 모든 지점에 확장 가능해요.',
  ex5 = 'Our billing infrastructure is now fully scalable across currencies.', ex5_ko = '결제 인프라가 이제 다중 통화에 확장 가능해요.'
WHERE id = 's_work_B2_05';

UPDATE sentences SET
  ex1 = 'Let me highlight the key takeaways from this quarter.', ex1_ko = '이번 분기의 핵심 요점을 강조해드릴게요.',
  ex2 = 'Let me highlight the key takeaways from the client survey.', ex2_ko = '고객 설문조사의 핵심 요점을 강조해드릴게요.',
  ex3 = 'Let me highlight the key takeaways from the pilot results.', ex3_ko = '시범 운영 결과의 핵심 요점을 강조해드릴게요.',
  ex4 = 'Let me highlight the key takeaways from the audit report.', ex4_ko = '감사 보고서의 핵심 요점을 강조해드릴게요.',
  ex5 = 'Let me highlight the key takeaways from our user research.', ex5_ko = '사용자 리서치의 핵심 요점을 강조해드릴게요.'
WHERE id = 's_work_B2_06';

UPDATE sentences SET
  ex1 = 'We are benchmarking against our closest competitors to find the gap.', ex1_ko = '격차를 파악하기 위해 가장 가까운 경쟁사와 벤치마킹하고 있어요.',
  ex2 = 'We are benchmarking against industry leaders to improve our NPS.', ex2_ko = 'NPS를 개선하기 위해 업계 선두 기업과 벤치마킹하고 있어요.',
  ex3 = 'We are benchmarking against last year''s figures to measure growth.', ex3_ko = '성장을 측정하기 위해 전년도 수치와 벤치마킹하고 있어요.',
  ex4 = 'We are benchmarking against global standards to close the gap.', ex4_ko = '격차를 줄이기 위해 글로벌 기준과 벤치마킹하고 있어요.',
  ex5 = 'We are benchmarking against regional peers to spot opportunities.', ex5_ko = '기회를 발견하기 위해 지역 동종 업체와 벤치마킹하고 있어요.'
WHERE id = 's_work_B2_07';

-- ══════════════════════════════════════
-- C1 (7 patterns)
-- ══════════════════════════════════════

UPDATE sentences SET
  ex1 = 'We must ensure full compliance with anti-corruption laws before closing.', ex1_ko = '종결 전에 반부패법을 완전히 준수해야 해요.',
  ex2 = 'We must ensure full compliance with data protection standards before launch.', ex2_ko = '출시 전에 데이터 보호 기준을 완전히 준수해야 해요.',
  ex3 = 'We must ensure full compliance with local labor laws before hiring.', ex3_ko = '채용 전에 현지 노동법을 완전히 준수해야 해요.',
  ex4 = 'We must ensure full compliance with export control rules before shipping.', ex4_ko = '출하 전에 수출 통제 규정을 완전히 준수해야 해요.',
  ex5 = 'We must ensure full compliance with financial reporting standards before filing.', ex5_ko = '신고 전에 재무 보고 기준을 완전히 준수해야 해요.'
WHERE id = 's_work_C1_01';

UPDATE sentences SET
  ex1 = 'The merger is subject to due diligence and regulatory clearance.', ex1_ko = '합병은 실사 및 규제 당국 승인이 조건이에요.',
  ex2 = 'The investment is subject to due diligence and legal review.', ex2_ko = '투자는 실사 및 법적 검토가 조건이에요.',
  ex3 = 'The partnership is subject to due diligence and final sign-off.', ex3_ko = '파트너십은 실사 및 최종 승인이 조건이에요.',
  ex4 = 'The licensing deal is subject to due diligence and IP verification.', ex4_ko = '라이선싱 거래는 실사 및 지식재산권 확인이 조건이에요.',
  ex5 = 'The joint venture is subject to due diligence and shareholder approval.', ex5_ko = '합작 투자는 실사 및 주주 승인이 조건이에요.'
WHERE id = 's_work_C1_02';

UPDATE sentences SET
  ex1 = 'Our fiduciary duty requires us to disclose all material conflicts.', ex1_ko = '신탁 의무에 따라 모든 중요한 이해 충돌을 공개해야 해요.',
  ex2 = 'Our fiduciary duty requires us to prioritize the client''s interest.', ex2_ko = '신탁 의무에 따라 고객의 이익을 우선시해야 해요.',
  ex3 = 'Our fiduciary duty requires us to avoid self-dealing.', ex3_ko = '신탁 의무에 따라 자기 거래를 피해야 해요.',
  ex4 = 'Our fiduciary duty requires us to maintain full transparency.', ex4_ko = '신탁 의무에 따라 완전한 투명성을 유지해야 해요.',
  ex5 = 'Our fiduciary duty requires us to act with prudence and care.', ex5_ko = '신탁 의무에 따라 신중하고 주의 깊게 행동해야 해요.'
WHERE id = 's_work_C1_03';

UPDATE sentences SET
  ex1 = 'The liability clause protects both parties from consequential damages.', ex1_ko = '책임 조항은 양측을 결과적 손해로부터 보호해요.',
  ex2 = 'The warranty clause protects both parties from defect-related claims.', ex2_ko = '보증 조항은 양측을 결함 관련 청구로부터 보호해요.',
  ex3 = 'The IP clause protects both parties from ownership disputes.', ex3_ko = '지식재산 조항은 양측을 소유권 분쟁으로부터 보호해요.',
  ex4 = 'The force majeure clause protects both parties from unforeseeable events.', ex4_ko = '불가항력 조항은 양측을 예측 불가능한 사건으로부터 보호해요.',
  ex5 = 'The confidentiality clause protects both parties from unauthorized disclosure.', ex5_ko = '비밀 유지 조항은 양측을 무단 공개로부터 보호해요.'
WHERE id = 's_work_C1_04';

UPDATE sentences SET
  ex1 = 'Any dispute shall be resolved through binding arbitration in London.', ex1_ko = '모든 분쟁은 런던에서 구속력 있는 중재를 통해 해결돼요.',
  ex2 = 'Any dispute shall be resolved through binding arbitration in Singapore.', ex2_ko = '모든 분쟁은 싱가포르에서 구속력 있는 중재를 통해 해결돼요.',
  ex3 = 'Any dispute shall be resolved through binding arbitration under ICC rules.', ex3_ko = '모든 분쟁은 ICC 규정에 따른 구속력 있는 중재를 통해 해결돼요.',
  ex4 = 'Any dispute shall be resolved through binding arbitration in the jurisdiction of the contract.', ex4_ko = '모든 분쟁은 계약 관할지에서 구속력 있는 중재를 통해 해결돼요.',
  ex5 = 'Any dispute shall be resolved through binding arbitration rather than litigation.', ex5_ko = '모든 분쟁은 소송 대신 구속력 있는 중재를 통해 해결돼요.'
WHERE id = 's_work_C1_05';

UPDATE sentences SET
  ex1 = 'We need to conduct a thorough audit before the merger closes.', ex1_ko = '합병 종결 전에 철저한 감사를 실시해야 해요.',
  ex2 = 'We need to conduct a thorough audit before the new system goes live.', ex2_ko = '새 시스템 가동 전에 철저한 감사를 실시해야 해요.',
  ex3 = 'We need to conduct a thorough audit before presenting to investors.', ex3_ko = '투자자에게 발표하기 전에 철저한 감사를 실시해야 해요.',
  ex4 = 'We need to conduct a thorough audit before the regulatory review.', ex4_ko = '규제 심사 전에 철저한 감사를 실시해야 해요.',
  ex5 = 'We need to conduct a thorough audit before releasing the financial statements.', ex5_ko = '재무제표 공개 전에 철저한 감사를 실시해야 해요.'
WHERE id = 's_work_C1_06';

UPDATE sentences SET
  ex1 = 'The governance framework must align with ESG reporting standards.', ex1_ko = '지배구조 프레임워크는 ESG 보고 기준과 일치해야 해요.',
  ex2 = 'The governance framework must align with board-level accountability requirements.', ex2_ko = '지배구조 프레임워크는 이사회 수준의 책임 요건과 일치해야 해요.',
  ex3 = 'The governance framework must align with the parent company''s policies.', ex3_ko = '지배구조 프레임워크는 모회사 정책과 일치해야 해요.',
  ex4 = 'The governance framework must align with local regulatory requirements.', ex4_ko = '지배구조 프레임워크는 현지 규제 요건과 일치해야 해요.',
  ex5 = 'The governance framework must align with investor expectations.', ex5_ko = '지배구조 프레임워크는 투자자의 기대와 일치해야 해요.'
WHERE id = 's_work_C1_07';

-- ══════════════════════════════════════
-- C2 (7 patterns)
-- ══════════════════════════════════════

UPDATE sentences SET
  ex1 = 'The securitization structure requires a ring-fenced special purpose vehicle.', ex1_ko = '유동화 구조는 격리된 특수목적법인이 필요해요.',
  ex2 = 'The securitization structure requires a ratings-compliant collateral pool.', ex2_ko = '유동화 구조는 신용등급에 적합한 담보 풀이 필요해요.',
  ex3 = 'The securitization structure requires overcollateralization to achieve investment grade.', ex3_ko = '유동화 구조는 투자등급 달성을 위해 초과 담보가 필요해요.',
  ex4 = 'The securitization structure requires a liquidity facility to cover short-term shortfalls.', ex4_ko = '유동화 구조는 단기 부족분을 충당하기 위한 유동성 지원 장치가 필요해요.',
  ex5 = 'The securitization structure requires independent trustee oversight.', ex5_ko = '유동화 구조는 독립적인 수탁자 감독이 필요해요.'
WHERE id = 's_work_C2_01';

UPDATE sentences SET
  ex1 = 'The covenant package restricts the issuance of additional senior debt.', ex1_ko = '계약 조건 패키지는 추가 선순위 부채 발행을 제한해요.',
  ex2 = 'The covenant package restricts dividend payments above a set threshold.', ex2_ko = '계약 조건 패키지는 정해진 한도 이상의 배당금 지급을 제한해요.',
  ex3 = 'The covenant package restricts material asset disposals without consent.', ex3_ko = '계약 조건 패키지는 동의 없는 중요 자산 처분을 제한해요.',
  ex4 = 'The covenant package restricts the borrower from incurring further liens.', ex4_ko = '계약 조건 패키지는 차입자가 추가 유치권을 설정하는 것을 제한해요.',
  ex5 = 'The covenant package restricts leverage ratios above three times EBITDA.', ex5_ko = '계약 조건 패키지는 EBITDA의 3배를 초과하는 레버리지 비율을 제한해요.'
WHERE id = 's_work_C2_02';

UPDATE sentences SET
  ex1 = 'We need to model the revenue synergies from the proposed acquisition.', ex1_ko = '제안된 인수로 인한 수익 시너지를 모델링해야 해요.',
  ex2 = 'We need to model the cash flow impact from the proposed restructuring.', ex2_ko = '제안된 구조조정의 현금 흐름 영향을 모델링해야 해요.',
  ex3 = 'We need to model the EPS accretion from the proposed share buyback.', ex3_ko = '제안된 자사주 매입의 EPS 증가분을 모델링해야 해요.',
  ex4 = 'We need to model the margin impact from the proposed cost cuts.', ex4_ko = '제안된 비용 절감의 마진 영향을 모델링해야 해요.',
  ex5 = 'We need to model the EBITDA contribution from the proposed joint venture.', ex5_ko = '제안된 합작 투자의 EBITDA 기여분을 모델링해야 해요.'
WHERE id = 's_work_C2_03';

UPDATE sentences SET
  ex1 = 'The force majeure clause was invoked following the supply chain disruption.', ex1_ko = '공급망 혼란 이후 불가항력 조항이 발동됐어요.',
  ex2 = 'The force majeure clause was invoked following the government-imposed lockdown.', ex2_ko = '정부가 부과한 봉쇄 조치 이후 불가항력 조항이 발동됐어요.',
  ex3 = 'The force majeure clause was invoked following the natural disaster.', ex3_ko = '자연재해 이후 불가항력 조항이 발동됐어요.',
  ex4 = 'The force majeure clause was invoked following the port strike.', ex4_ko = '항만 파업 이후 불가항력 조항이 발동됐어요.',
  ex5 = 'The force majeure clause was invoked following the sudden war.', ex5_ko = '갑작스러운 전쟁 발발 이후 불가항력 조항이 발동됐어요.'
WHERE id = 's_work_C2_04';

UPDATE sentences SET
  ex1 = 'A leveraged buyout financed at seven times EBITDA demands disciplined integration.', ex1_ko = 'EBITDA의 7배로 자금이 조달된 레버리지 바이아웃은 엄격한 통합 관리가 필요해요.',
  ex2 = 'A leveraged buyout financed at five times EBITDA depends on stable cash generation.', ex2_ko = 'EBITDA의 5배로 자금이 조달된 레버리지 바이아웃은 안정적인 현금 창출에 달려 있어요.',
  ex3 = 'A leveraged buyout financed at eight times EBITDA leaves little room for error.', ex3_ko = 'EBITDA의 8배로 자금이 조달된 레버리지 바이아웃은 실수할 여유가 거의 없어요.',
  ex4 = 'A leveraged buyout financed at four times EBITDA is considered relatively conservative.', ex4_ko = 'EBITDA의 4배로 자금이 조달된 레버리지 바이아웃은 비교적 보수적으로 여겨져요.',
  ex5 = 'A leveraged buyout financed at nine times EBITDA raises serious solvency concerns.', ex5_ko = 'EBITDA의 9배로 자금이 조달된 레버리지 바이아웃은 심각한 지급능력 우려를 일으켜요.'
WHERE id = 's_work_C2_05';

UPDATE sentences SET
  ex1 = 'Subrogation rights allow the guarantor to recover from the principal debtor.', ex1_ko = '대위권은 보증인이 주채무자로부터 회수할 수 있게 해요.',
  ex2 = 'Subrogation rights allow the acquiring bank to step into the original lender''s position.', ex2_ko = '대위권은 인수 은행이 원래 대출 기관의 지위를 승계할 수 있게 해요.',
  ex3 = 'Subrogation rights allow the surety to pursue the defaulting contractor.', ex3_ko = '대위권은 보증인이 채무불이행 도급업자를 추구할 수 있게 해요.',
  ex4 = 'Subrogation rights allow the reinsurer to stand in the cedant''s shoes.', ex4_ko = '대위권은 재보험사가 원보험사의 지위를 대신할 수 있게 해요.',
  ex5 = 'Subrogation rights allow the paying party to recover costs from the liable party.', ex5_ko = '대위권은 지급 당사자가 책임 있는 당사자로부터 비용을 회수할 수 있게 해요.'
WHERE id = 's_work_C2_06';

UPDATE sentences SET
  ex1 = 'The recapitalization plan involves converting senior debt to preference shares.', ex1_ko = '자본재구성 계획은 선순위 부채를 우선주로 전환하는 것을 포함해요.',
  ex2 = 'The recapitalization plan involves issuing new equity to retire existing bonds.', ex2_ko = '자본재구성 계획은 기존 채권을 상환하기 위해 신주를 발행하는 것을 포함해요.',
  ex3 = 'The recapitalization plan involves a rights issue at a significant discount.', ex3_ko = '자본재구성 계획은 상당한 할인율로 유상증자를 실시하는 것을 포함해요.',
  ex4 = 'The recapitalization plan involves asset sales to reduce the debt burden.', ex4_ko = '자본재구성 계획은 부채 부담을 줄이기 위한 자산 매각을 포함해요.',
  ex5 = 'The recapitalization plan involves a debt-for-equity swap at par value.', ex5_ko = '자본재구성 계획은 액면가에 의한 부채-자본 교환을 포함해요.'
WHERE id = 's_work_C2_07';
