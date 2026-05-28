-- EngCat — Discussion topic sentence pattern examples backfill
-- ex1~ex5 + ex1_ko~ex5_ko (42 patterns)
-- Idempotent (UPDATE only)

-- ══════════════════════════════════════
-- A1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I think so too.', ex1_ko = '저도 그렇게 생각해요.',
  ex2 = 'I think so, yes.', ex2_ko = '네, 그렇게 생각해요.',
  ex3 = 'I think so, but I''m not sure.', ex3_ko = '그렇게 생각하지만 확실하진 않아요.',
  ex4 = 'I think so for many reasons.', ex4_ko = '여러 이유로 그렇게 생각해요.',
  ex5 = 'I think so too — that''s exactly right.', ex5_ko = '저도 그렇게 생각해요 — 바로 그거예요.'
WHERE id = 's_discussion_A1_01';

UPDATE sentences SET
  ex1 = 'I do not think that will work.', ex1_ko = '그건 안 될 것 같아요.',
  ex2 = 'I do not think this is fair.', ex2_ko = '이건 공정한 것 같지 않아요.',
  ex3 = 'I do not think we have time.', ex3_ko = '시간이 있을 것 같지 않아요.',
  ex4 = 'I do not think she will agree.', ex4_ko = '그녀가 동의할 것 같지 않아요.',
  ex5 = 'I do not think it''s the best option.', ex5_ko = '그게 최선의 선택이 아닌 것 같아요.'
WHERE id = 's_discussion_A1_02';

UPDATE sentences SET
  ex1 = 'What do you think about this plan?', ex1_ko = '이 계획에 대해 어떻게 생각해요?',
  ex2 = 'What do you think about the proposal?', ex2_ko = '그 제안에 대해 어떻게 생각해요?',
  ex3 = 'What do you think about her idea?', ex3_ko = '그녀의 아이디어에 대해 어떻게 생각해요?',
  ex4 = 'What do you think about meeting tomorrow?', ex4_ko = '내일 만나는 것에 대해 어떻게 생각해요?',
  ex5 = 'What do you think about a different approach?', ex5_ko = '다른 접근법에 대해 어떻게 생각해요?'
WHERE id = 's_discussion_A1_03';

UPDATE sentences SET
  ex1 = 'Maybe you are right about that.', ex1_ko = '아마도 그것에 대해서는 당신이 맞을 수도 있어요.',
  ex2 = 'Maybe you are right, let me think.', ex2_ko = '아마도 당신이 맞을 수도 있어요, 생각해 볼게요.',
  ex3 = 'Maybe you are right after all.', ex3_ko = '결국 아마도 당신이 맞을 수도 있어요.',
  ex4 = 'Maybe you are right, but I''m not sure.', ex4_ko = '아마도 당신이 맞을 수도 있지만, 확실하진 않아요.',
  ex5 = 'Maybe you are right about the timing.', ex5_ko = '시기에 대해서는 아마도 당신이 맞을 수도 있어요.'
WHERE id = 's_discussion_A1_04';

UPDATE sentences SET
  ex1 = 'I am not sure about the answer.', ex1_ko = '답에 대해 잘 모르겠어요.',
  ex2 = 'I am not sure about my decision yet.', ex2_ko = '제 결정에 대해 아직 잘 모르겠어요.',
  ex3 = 'I am not sure about the date.', ex3_ko = '날짜에 대해 잘 모르겠어요.',
  ex4 = 'I am not sure about which one to choose.', ex4_ko = '어느 것을 골라야 할지 잘 모르겠어요.',
  ex5 = 'I am not sure about this approach.', ex5_ko = '이 접근법에 대해 잘 모르겠어요.'
WHERE id = 's_discussion_A1_05';

UPDATE sentences SET
  ex1 = 'That is a good idea, thanks!', ex1_ko = '그건 좋은 생각이에요, 고마워요!',
  ex2 = 'That is a good idea for the project.', ex2_ko = '그건 프로젝트에 좋은 생각이에요.',
  ex3 = 'That is a good idea — let''s try it.', ex3_ko = '그건 좋은 생각이에요 — 한번 해봐요.',
  ex4 = 'That is a good idea, but it might be expensive.', ex4_ko = '그건 좋은 생각이지만, 비쌀 수도 있어요.',
  ex5 = 'That is a good idea worth exploring.', ex5_ko = '그건 탐구해볼 만한 좋은 생각이에요.'
WHERE id = 's_discussion_A1_06';

UPDATE sentences SET
  ex1 = 'I like your idea about the meeting.', ex1_ko = '회의에 대한 당신의 아이디어가 마음에 들어요.',
  ex2 = 'I like your idea, let''s discuss more.', ex2_ko = '당신의 아이디어가 마음에 들어요, 더 논의해 봐요.',
  ex3 = 'I like your idea for the campaign.', ex3_ko = '캠페인에 대한 당신의 아이디어가 마음에 들어요.',
  ex4 = 'I like your idea about saving money.', ex4_ko = '돈을 절약하는 당신의 아이디어가 마음에 들어요.',
  ex5 = 'I like your idea more than mine.', ex5_ko = '제 것보다 당신의 아이디어가 더 마음에 들어요.'
WHERE id = 's_discussion_A1_07';

-- ══════════════════════════════════════
-- A2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'I agree with your conclusion.', ex1_ko = '당신의 결론에 동의해요.',
  ex2 = 'I agree with the main point you made.', ex2_ko = '당신이 한 주요 요점에 동의해요.',
  ex3 = 'I agree with the team''s decision.', ex3_ko = '팀의 결정에 동의해요.',
  ex4 = 'I agree with the proposal so far.', ex4_ko = '지금까지의 제안에 동의해요.',
  ex5 = 'I agree with most of what you said.', ex5_ko = '당신이 말한 대부분에 동의해요.'
WHERE id = 's_discussion_A2_01';

UPDATE sentences SET
  ex1 = 'I see your point, but the data shows otherwise.', ex1_ko = '당신의 의견은 이해하지만, 데이터는 다른 것을 보여줘요.',
  ex2 = 'I see your point, but we should also consider cost.', ex2_ko = '당신의 의견은 이해하지만, 비용도 고려해야 해요.',
  ex3 = 'I see your point, but I''d still go with option B.', ex3_ko = '당신의 의견은 이해하지만, 저는 여전히 B안을 선택할 거예요.',
  ex4 = 'I see your point, but the timing is wrong.', ex4_ko = '당신의 의견은 이해하지만, 시기가 맞지 않아요.',
  ex5 = 'I see your point, but I disagree with the priority.', ex5_ko = '당신의 의견은 이해하지만, 우선순위에 동의하지 않아요.'
WHERE id = 's_discussion_A2_02';

UPDATE sentences SET
  ex1 = 'In my opinion, we should review the budget first.', ex1_ko = '제 의견으로는 먼저 예산을 검토해야 해요.',
  ex2 = 'In my opinion, the new policy needs more thought.', ex2_ko = '제 의견으로는 새 정책에 더 많은 고민이 필요해요.',
  ex3 = 'In my opinion, transparency is essential.', ex3_ko = '제 의견으로는 투명성이 필수적이에요.',
  ex4 = 'In my opinion, we should consult the team first.', ex4_ko = '제 의견으로는 먼저 팀과 상의해야 해요.',
  ex5 = 'In my opinion, a smaller pilot would be safer.', ex5_ko = '제 의견으로는 더 작은 시범 운영이 더 안전해요.'
WHERE id = 's_discussion_A2_03';

UPDATE sentences SET
  ex1 = 'Could you explain your reason for the change?', ex1_ko = '변경에 대한 이유를 설명해 주실 수 있나요?',
  ex2 = 'Could you explain your reason for choosing this?', ex2_ko = '이걸 선택하신 이유를 설명해 주실 수 있나요?',
  ex3 = 'Could you explain your reason for the delay?', ex3_ko = '지연에 대한 이유를 설명해 주실 수 있나요?',
  ex4 = 'Could you explain your reason for opposing it?', ex4_ko = '반대하시는 이유를 설명해 주실 수 있나요?',
  ex5 = 'Could you explain your reason in more detail?', ex5_ko = '이유를 더 자세히 설명해 주실 수 있나요?'
WHERE id = 's_discussion_A2_04';

UPDATE sentences SET
  ex1 = 'I think both sides have a point worth considering.', ex1_ko = '양쪽 다 고려할 만한 일리가 있다고 생각해요.',
  ex2 = 'I think both sides have a point about safety.', ex2_ko = '안전에 대해 양쪽 다 일리가 있다고 생각해요.',
  ex3 = 'I think both sides have a point, but we must choose.', ex3_ko = '양쪽 다 일리가 있지만, 선택해야 한다고 생각해요.',
  ex4 = 'I think both sides have a point we should respect.', ex4_ko = '양쪽 다 우리가 존중해야 할 일리가 있다고 생각해요.',
  ex5 = 'I think both sides have a point that deserves time.', ex5_ko = '양쪽 다 시간을 들일 만한 일리가 있다고 생각해요.'
WHERE id = 's_discussion_A2_05';

UPDATE sentences SET
  ex1 = 'Can you give me an example of what you mean?', ex1_ko = '무슨 의미인지 예시를 들어 주실 수 있나요?',
  ex2 = 'Can you give me an example from your experience?', ex2_ko = '경험에서 예시를 들어 주실 수 있나요?',
  ex3 = 'Can you give me an example of how it works?', ex3_ko = '어떻게 작동하는지 예시를 들어 주실 수 있나요?',
  ex4 = 'Can you give me an example of a similar case?', ex4_ko = '비슷한 사례의 예시를 들어 주실 수 있나요?',
  ex5 = 'Can you give me an example to support that?', ex5_ko = '그것을 뒷받침하는 예시를 들어 주실 수 있나요?'
WHERE id = 's_discussion_A2_06';

UPDATE sentences SET
  ex1 = 'I suggest we discuss the budget first.', ex1_ko = '먼저 예산을 논의하는 게 어떨까요?',
  ex2 = 'I suggest we discuss this at the next meeting.', ex2_ko = '이걸 다음 회의에서 논의하는 게 어떨까요?',
  ex3 = 'I suggest we discuss the risks before deciding.', ex3_ko = '결정하기 전에 위험을 논의하는 게 어떨까요?',
  ex4 = 'I suggest we discuss it in smaller groups.', ex4_ko = '더 작은 그룹으로 논의하는 게 어떨까요?',
  ex5 = 'I suggest we discuss the timeline more carefully.', ex5_ko = '일정을 더 신중하게 논의하는 게 어떨까요?'
WHERE id = 's_discussion_A2_07';

-- ══════════════════════════════════════
-- B1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The evidence suggests that the second method works better.', ex1_ko = '증거에 따르면 두 번째 방법이 더 잘 작동해요.',
  ex2 = 'The evidence suggests that early intervention pays off.', ex2_ko = '증거에 따르면 조기 개입이 성과를 내요.',
  ex3 = 'The evidence suggests that we need to revise the plan.', ex3_ko = '증거에 따르면 우리는 계획을 수정해야 해요.',
  ex4 = 'The evidence suggests that the prior assumption was wrong.', ex4_ko = '증거에 따르면 이전 가정이 잘못됐어요.',
  ex5 = 'The evidence suggests that further testing is needed.', ex5_ko = '증거에 따르면 추가 검증이 필요해요.'
WHERE id = 's_discussion_B1_01';

UPDATE sentences SET
  ex1 = 'From my perspective, the timing is the real obstacle.', ex1_ko = '제 관점에서, 시기가 진짜 장애물이에요.',
  ex2 = 'From my perspective, communication is the missing piece.', ex2_ko = '제 관점에서, 의사소통이 빠진 부분이에요.',
  ex3 = 'From my perspective, the policy needs more flexibility.', ex3_ko = '제 관점에서, 정책에 더 많은 유연성이 필요해요.',
  ex4 = 'From my perspective, the team morale comes first.', ex4_ko = '제 관점에서, 팀 사기가 우선이에요.',
  ex5 = 'From my perspective, the priorities are misaligned.', ex5_ko = '제 관점에서, 우선순위가 어긋나 있어요.'
WHERE id = 's_discussion_B1_02';

UPDATE sentences SET
  ex1 = 'To elaborate on that point, let me cite a recent study.', ex1_ko = '그 부분을 더 설명하자면, 최근 연구를 인용해 볼게요.',
  ex2 = 'To elaborate on that point, consider the historical context.', ex2_ko = '그 부분을 더 설명하자면, 역사적 맥락을 생각해 봐요.',
  ex3 = 'To elaborate on that point, I''ll share a personal experience.', ex3_ko = '그 부분을 더 설명하자면, 개인적 경험을 공유할게요.',
  ex4 = 'To elaborate on that point, the data shows three trends.', ex4_ko = '그 부분을 더 설명하자면, 데이터는 세 가지 추세를 보여줘요.',
  ex5 = 'To elaborate on that point, we can break it into stages.', ex5_ko = '그 부분을 더 설명하자면, 단계로 나눠볼 수 있어요.'
WHERE id = 's_discussion_B1_03';

UPDATE sentences SET
  ex1 = 'I would argue that the long-term gains justify the short-term cost.', ex1_ko = '저는 장기적 이익이 단기적 비용을 정당화한다고 주장하겠어요.',
  ex2 = 'I would argue that flexibility is more valuable than predictability.', ex2_ko = '저는 유연성이 예측 가능성보다 더 가치 있다고 주장하겠어요.',
  ex3 = 'I would argue that quality matters more than speed here.', ex3_ko = '저는 여기서 속도보다 질이 더 중요하다고 주장하겠어요.',
  ex4 = 'I would argue that the proposal solves the symptom, not the cause.', ex4_ko = '저는 그 제안이 원인이 아니라 증상을 해결한다고 주장하겠어요.',
  ex5 = 'I would argue that the assumption itself needs revisiting.', ex5_ko = '저는 가정 자체가 재검토되어야 한다고 주장하겠어요.'
WHERE id = 's_discussion_B1_04';

UPDATE sentences SET
  ex1 = 'That is a valid concern, but the data tells a different story.', ex1_ko = '그건 타당한 우려이지만, 데이터는 다른 이야기를 들려줘요.',
  ex2 = 'That is a valid concern, but we have safeguards in place.', ex2_ko = '그건 타당한 우려이지만, 안전 장치가 있어요.',
  ex3 = 'That is a valid concern, but the upside outweighs it.', ex3_ko = '그건 타당한 우려이지만, 이점이 그보다 커요.',
  ex4 = 'That is a valid concern, but timing makes it manageable.', ex4_ko = '그건 타당한 우려이지만, 시기 덕분에 관리 가능해요.',
  ex5 = 'That is a valid concern, but our test results are promising.', ex5_ko = '그건 타당한 우려이지만, 테스트 결과가 유망해요.'
WHERE id = 's_discussion_B1_05';

UPDATE sentences SET
  ex1 = 'Could you support that claim with evidence from the report?', ex1_ko = '그 주장을 보고서의 증거로 뒷받침해 주실 수 있나요?',
  ex2 = 'Could you support that claim with evidence from studies?', ex2_ko = '그 주장을 연구의 증거로 뒷받침해 주실 수 있나요?',
  ex3 = 'Could you support that claim with evidence from past projects?', ex3_ko = '그 주장을 과거 프로젝트의 증거로 뒷받침해 주실 수 있나요?',
  ex4 = 'Could you support that claim with evidence from user data?', ex4_ko = '그 주장을 사용자 데이터의 증거로 뒷받침해 주실 수 있나요?',
  ex5 = 'Could you support that claim with evidence beyond anecdote?', ex5_ko = '그 주장을 일화를 넘어서는 증거로 뒷받침해 주실 수 있나요?'
WHERE id = 's_discussion_B1_06';

UPDATE sentences SET
  ex1 = 'Taking everything into account, the proposal makes strategic sense.', ex1_ko = '모든 것을 고려했을 때, 그 제안이 전략적으로 타당해요.',
  ex2 = 'Taking everything into account, I support option C.', ex2_ko = '모든 것을 고려했을 때, 저는 C안을 지지해요.',
  ex3 = 'Taking everything into account, postponement seems wisest.', ex3_ko = '모든 것을 고려했을 때, 연기가 가장 현명해 보여요.',
  ex4 = 'Taking everything into account, the risks remain acceptable.', ex4_ko = '모든 것을 고려했을 때, 위험은 여전히 수용 가능해요.',
  ex5 = 'Taking everything into account, a hybrid approach is best.', ex5_ko = '모든 것을 고려했을 때, 혼합 접근이 최선이에요.'
WHERE id = 's_discussion_B1_07';

-- ══════════════════════════════════════
-- B2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'Your conclusion seems to rest on a flawed premise about market behavior.', ex1_ko = '당신의 결론은 시장 행동에 대한 잘못된 전제에 기반하는 것 같아요.',
  ex2 = 'Your argument seems to rest on a flawed premise about human motivation.', ex2_ko = '당신의 주장은 인간 동기에 대한 잘못된 전제에 기반하는 것 같아요.',
  ex3 = 'Your analysis seems to rest on a flawed premise about causation.', ex3_ko = '당신의 분석은 인과 관계에 대한 잘못된 전제에 기반하는 것 같아요.',
  ex4 = 'Your reasoning seems to rest on a flawed premise about scale.', ex4_ko = '당신의 추론은 규모에 대한 잘못된 전제에 기반하는 것 같아요.',
  ex5 = 'Your model seems to rest on a flawed premise about stability.', ex5_ko = '당신의 모델은 안정성에 대한 잘못된 전제에 기반하는 것 같아요.'
WHERE id = 's_discussion_B2_01';

UPDATE sentences SET
  ex1 = 'I would like to rebut that point directly, with three counter-arguments.', ex1_ko = '세 가지 반론으로 그 부분을 직접 반박하고 싶어요.',
  ex2 = 'I would like to rebut that point directly, drawing on recent data.', ex2_ko = '최근 데이터를 활용해 그 부분을 직접 반박하고 싶어요.',
  ex3 = 'I would like to rebut that point directly, before we move on.', ex3_ko = '넘어가기 전에 그 부분을 직접 반박하고 싶어요.',
  ex4 = 'I would like to rebut that point directly, given the evidence.', ex4_ko = '증거를 고려하여 그 부분을 직접 반박하고 싶어요.',
  ex5 = 'I would like to rebut that point directly, with all due respect.', ex5_ko = '존중하는 마음으로 그 부분을 직접 반박하고 싶어요.'
WHERE id = 's_discussion_B2_02';

UPDATE sentences SET
  ex1 = 'That claim lacks empirical support across the relevant literature.', ex1_ko = '그 주장에는 관련 문헌 전반에서 실증적 근거가 부족해요.',
  ex2 = 'That assertion lacks empirical support beyond anecdotal evidence.', ex2_ko = '그 단언에는 일화적 증거를 넘어서는 실증적 근거가 부족해요.',
  ex3 = 'That generalization lacks empirical support from longitudinal studies.', ex3_ko = '그 일반화는 종단 연구의 실증적 근거가 부족해요.',
  ex4 = 'That conclusion lacks empirical support from any peer-reviewed source.', ex4_ko = '그 결론은 동료 심사를 거친 어떤 자료의 실증적 근거도 부족해요.',
  ex5 = 'That hypothesis lacks empirical support given the latest data.', ex5_ko = '최신 데이터를 고려할 때 그 가설은 실증적 근거가 부족해요.'
WHERE id = 's_discussion_B2_03';

UPDATE sentences SET
  ex1 = 'We need to distinguish between correlation and causation here, otherwise the analysis collapses.', ex1_ko = '여기서 상관관계와 인과관계를 구분해야 해요, 그렇지 않으면 분석이 무너져요.',
  ex2 = 'We need to distinguish between correlation and causation in the survey results.', ex2_ko = '설문 결과에서 상관관계와 인과관계를 구분해야 해요.',
  ex3 = 'We need to distinguish between correlation and causation when policy is at stake.', ex3_ko = '정책이 걸려 있을 때 상관관계와 인과관계를 구분해야 해요.',
  ex4 = 'We need to distinguish between correlation and causation before drawing conclusions.', ex4_ko = '결론을 내리기 전에 상관관계와 인과관계를 구분해야 해요.',
  ex5 = 'We need to distinguish between correlation and causation in the news coverage.', ex5_ko = '뉴스 보도에서 상관관계와 인과관계를 구분해야 해요.'
WHERE id = 's_discussion_B2_04';

UPDATE sentences SET
  ex1 = 'While I concede that point, the structural issue remains unresolved.', ex1_ko = '그 부분은 인정하지만, 구조적 문제는 여전히 해결되지 않았어요.',
  ex2 = 'While I concede that point, our priorities should still be reconsidered.', ex2_ko = '그 부분은 인정하지만, 우리의 우선순위는 여전히 재고되어야 해요.',
  ex3 = 'While I concede that point, the long-term picture changes the calculus.', ex3_ko = '그 부분은 인정하지만, 장기적 그림이 계산을 바꿔요.',
  ex4 = 'While I concede that point, the implementation cost is prohibitive.', ex4_ko = '그 부분은 인정하지만, 실행 비용이 감당하기 어려워요.',
  ex5 = 'While I concede that point, the broader pattern still stands.', ex5_ko = '그 부분은 인정하지만, 더 큰 패턴은 여전히 유효해요.'
WHERE id = 's_discussion_B2_05';

UPDATE sentences SET
  ex1 = 'Your framing contains an implicit bias worth examining carefully.', ex1_ko = '당신의 프레이밍에는 신중하게 검토할 만한 암묵적 편향이 있어요.',
  ex2 = 'Your analysis contains an implicit bias toward short-term metrics.', ex2_ko = '당신의 분석에는 단기 지표에 대한 암묵적 편향이 있어요.',
  ex3 = 'Your selection contains an implicit bias toward certain demographics.', ex3_ko = '당신의 선택에는 특정 인구 집단에 대한 암묵적 편향이 있어요.',
  ex4 = 'Your sample contains an implicit bias that skews the result.', ex4_ko = '당신의 표본에는 결과를 왜곡하는 암묵적 편향이 있어요.',
  ex5 = 'Your model contains an implicit bias toward equilibrium assumptions.', ex5_ko = '당신의 모델에는 균형 가정에 대한 암묵적 편향이 있어요.'
WHERE id = 's_discussion_B2_06';

UPDATE sentences SET
  ex1 = 'The nuance of this issue is often lost in soundbite culture.', ex1_ko = '이 문제의 뉘앙스는 사운드바이트 문화에서 종종 사라져요.',
  ex2 = 'The nuance of this debate is often lost in headline framing.', ex2_ko = '이 논쟁의 뉘앙스는 헤드라인 프레이밍에서 종종 사라져요.',
  ex3 = 'The nuance of this discussion is often lost in partisan rhetoric.', ex3_ko = '이 토론의 뉘앙스는 당파적 수사에서 종종 사라져요.',
  ex4 = 'The nuance of this argument is often lost in oversimplified summaries.', ex4_ko = '이 주장의 뉘앙스는 지나치게 단순화된 요약에서 종종 사라져요.',
  ex5 = 'The nuance of this case is often lost when only one side is heard.', ex5_ko = '한쪽 의견만 들으면 이 사건의 뉘앙스는 종종 사라져요.'
WHERE id = 's_discussion_B2_07';

-- ══════════════════════════════════════
-- C1 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The syllogism you constructed is formally valid but materially unsound given the premises.', ex1_ko = '당신이 구성한 삼단논법은 형식적으로는 타당하지만 전제를 고려할 때 내용상 불건전해요.',
  ex2 = 'The argument you advanced is formally valid but materially unsound when scrutinized.', ex2_ko = '당신이 제시한 논거는 형식적으로는 타당하지만 정밀히 검토하면 내용상 불건전해요.',
  ex3 = 'The logic you traced is formally valid but materially unsound at the empirical level.', ex3_ko = '당신이 따라간 논리는 형식적으로는 타당하지만 경험적 수준에서는 내용상 불건전해요.',
  ex4 = 'The proof you offered is formally valid but materially unsound in its assumptions.', ex4_ko = '당신이 제시한 증명은 형식적으로는 타당하지만 가정에서 내용상 불건전해요.',
  ex5 = 'The deduction you drew is formally valid but materially unsound on closer inspection.', ex5_ko = '당신이 도출한 추론은 형식적으로는 타당하지만 면밀히 검토하면 내용상 불건전해요.'
WHERE id = 's_discussion_C1_01';

UPDATE sentences SET
  ex1 = 'Let me deconstruct the underlying assumptions of that policy framework.', ex1_ko = '그 정책 틀의 근본 가정들을 해체해 볼게요.',
  ex2 = 'Let me deconstruct the underlying assumptions of that economic model.', ex2_ko = '그 경제 모델의 근본 가정들을 해체해 볼게요.',
  ex3 = 'Let me deconstruct the underlying assumptions of that historical claim.', ex3_ko = '그 역사적 주장의 근본 가정들을 해체해 볼게요.',
  ex4 = 'Let me deconstruct the underlying assumptions of that diagnostic frame.', ex4_ko = '그 진단적 틀의 근본 가정들을 해체해 볼게요.',
  ex5 = 'Let me deconstruct the underlying assumptions of that ethical position.', ex5_ko = '그 윤리적 입장의 근본 가정들을 해체해 볼게요.'
WHERE id = 's_discussion_C1_02';

UPDATE sentences SET
  ex1 = 'That reasoning commits the fallacy of false dichotomy by ignoring the middle ground.', ex1_ko = '그 추론은 중간 지점을 무시함으로써 거짓 이분법의 오류를 범하고 있어요.',
  ex2 = 'That framing commits the fallacy of false dichotomy between freedom and security.', ex2_ko = '그 프레이밍은 자유와 안전 사이의 거짓 이분법의 오류를 범하고 있어요.',
  ex3 = 'That choice commits the fallacy of false dichotomy by suppressing alternatives.', ex3_ko = '그 선택은 대안을 억압함으로써 거짓 이분법의 오류를 범하고 있어요.',
  ex4 = 'That position commits the fallacy of false dichotomy where a spectrum exists.', ex4_ko = '그 입장은 스펙트럼이 존재하는 곳에서 거짓 이분법의 오류를 범하고 있어요.',
  ex5 = 'That argument commits the fallacy of false dichotomy in pretending only two options exist.', ex5_ko = '그 주장은 두 가지 선택지만 있는 척함으로써 거짓 이분법의 오류를 범하고 있어요.'
WHERE id = 's_discussion_C1_03';

UPDATE sentences SET
  ex1 = 'I would postulate that the causal chain is more circular than linear.', ex1_ko = '인과 사슬이 선형적이기보다 더 순환적이라고 가정해 볼 수 있어요.',
  ex2 = 'I would postulate that the causal chain runs in the opposite direction.', ex2_ko = '인과 사슬이 반대 방향으로 흐른다고 가정해 볼 수 있어요.',
  ex3 = 'I would postulate that the causal chain involves a feedback loop.', ex3_ko = '인과 사슬이 피드백 루프를 포함한다고 가정해 볼 수 있어요.',
  ex4 = 'I would postulate that the causal chain is mediated by hidden variables.', ex4_ko = '인과 사슬이 숨겨진 변수에 의해 매개된다고 가정해 볼 수 있어요.',
  ex5 = 'I would postulate that the causal chain is broken at a critical node.', ex5_ko = '인과 사슬이 결정적 지점에서 끊긴다고 가정해 볼 수 있어요.'
WHERE id = 's_discussion_C1_04';

UPDATE sentences SET
  ex1 = 'Your inductive generalization requires a much larger sample to hold across populations.', ex1_ko = '당신의 귀납적 일반화는 인구 집단을 가로질러 성립하려면 훨씬 더 큰 표본이 필요해요.',
  ex2 = 'Your inductive generalization requires a much broader temporal range.', ex2_ko = '당신의 귀납적 일반화는 훨씬 더 넓은 시간 범위가 필요해요.',
  ex3 = 'Your inductive generalization requires a much more diverse data set.', ex3_ko = '당신의 귀납적 일반화는 훨씬 더 다양한 데이터셋이 필요해요.',
  ex4 = 'Your inductive generalization requires a much higher statistical power.', ex4_ko = '당신의 귀납적 일반화는 훨씬 더 높은 통계적 검정력이 필요해요.',
  ex5 = 'Your inductive generalization requires a much stronger control group.', ex5_ko = '당신의 귀납적 일반화는 훨씬 더 강력한 대조군이 필요해요.'
WHERE id = 's_discussion_C1_05';

UPDATE sentences SET
  ex1 = 'The cogency of your case depends on whether we accept that the axiom holds.', ex1_ko = '당신 논거의 설득력은 우리가 그 공리가 성립한다는 것을 받아들이느냐에 달려 있어요.',
  ex2 = 'The cogency of your case depends on whether the data are reliable.', ex2_ko = '당신 논거의 설득력은 데이터가 신뢰할 만한가에 달려 있어요.',
  ex3 = 'The cogency of your case depends on whether the analogy applies.', ex3_ko = '당신 논거의 설득력은 그 유추가 적용되는가에 달려 있어요.',
  ex4 = 'The cogency of your case depends on whether the definitions hold up.', ex4_ko = '당신 논거의 설득력은 정의가 유지되는가에 달려 있어요.',
  ex5 = 'The cogency of your case depends on whether the assumptions are warranted.', ex5_ko = '당신 논거의 설득력은 가정이 정당화되는가에 달려 있어요.'
WHERE id = 's_discussion_C1_06';

UPDATE sentences SET
  ex1 = 'Even if we grant the premise, the conclusion does not necessarily follow logically.', ex1_ko = '전제를 인정하더라도, 결론이 논리적으로 반드시 따라오는 것은 아니에요.',
  ex2 = 'Even if we grant the data, the conclusion does not necessarily follow from this method.', ex2_ko = '데이터를 인정하더라도, 결론이 이 방법으로부터 반드시 따라오는 것은 아니에요.',
  ex3 = 'Even if we grant the historical analogy, the conclusion does not necessarily follow today.', ex3_ko = '역사적 유추를 인정하더라도, 결론이 오늘날 반드시 따라오는 것은 아니에요.',
  ex4 = 'Even if we grant the survey result, the conclusion does not necessarily follow at scale.', ex4_ko = '설문 결과를 인정하더라도, 결론이 규모를 갖춰 반드시 따라오는 것은 아니에요.',
  ex5 = 'Even if we grant the precedent, the conclusion does not necessarily follow in this case.', ex5_ko = '선례를 인정하더라도, 결론이 이 사건에서 반드시 따라오는 것은 아니에요.'
WHERE id = 's_discussion_C1_07';

-- ══════════════════════════════════════
-- C2 — 7 PATTERNS
-- ══════════════════════════════════════
UPDATE sentences SET
  ex1 = 'The aporia here is that every justification of the principle presupposes it.', ex1_ko = '여기서의 아포리아는 그 원리에 대한 모든 정당화가 그 원리를 전제한다는 거예요.',
  ex2 = 'The aporia here is that any critique of reason must employ reason itself.', ex2_ko = '여기서의 아포리아는 이성에 대한 어떤 비판도 이성 자체를 사용해야 한다는 거예요.',
  ex3 = 'The aporia here is that every attempt to define authenticity instrumentalises it.', ex3_ko = '여기서의 아포리아는 진정성을 정의하려는 모든 시도가 그것을 도구화한다는 거예요.',
  ex4 = 'The aporia here is that every refusal of identity reinscribes one.', ex4_ko = '여기서의 아포리아는 정체성에 대한 모든 거부가 또 하나의 정체성을 재기입한다는 거예요.',
  ex5 = 'The aporia here is that every attempt to escape ideology operates within it.', ex5_ko = '여기서의 아포리아는 이데올로기에서 벗어나려는 모든 시도가 이데올로기 안에서 작동한다는 거예요.'
WHERE id = 's_discussion_C2_01';

UPDATE sentences SET
  ex1 = 'This argument is inherently logocentric in its privileging of explicit reasoning.', ex1_ko = '이 주장은 명시적 추론을 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.',
  ex2 = 'This framework is inherently logocentric in its privileging of textual evidence.', ex2_ko = '이 틀은 텍스트 증거를 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.',
  ex3 = 'This tradition is inherently logocentric in its privileging of analytic discourse.', ex3_ko = '이 전통은 분석적 담론을 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.',
  ex4 = 'This method is inherently logocentric in its privileging of propositional knowledge.', ex4_ko = '이 방법은 명제적 지식을 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.',
  ex5 = 'This canon is inherently logocentric in its privileging of written over oral knowledge.', ex5_ko = '이 정전은 구술 지식보다 문자 지식을 특권화하는 점에서 본질적으로 로고스 중심주의적이에요.'
WHERE id = 's_discussion_C2_02';

UPDATE sentences SET
  ex1 = 'Without intersubjectivity, the very possibility of moral judgment collapses.', ex1_ko = '상호주관성 없이는 도덕 판단의 가능성 자체가 붕괴돼요.',
  ex2 = 'Without intersubjectivity, the very possibility of scientific consensus collapses.', ex2_ko = '상호주관성 없이는 과학적 합의의 가능성 자체가 붕괴돼요.',
  ex3 = 'Without intersubjectivity, the very possibility of legal interpretation collapses.', ex3_ko = '상호주관성 없이는 법적 해석의 가능성 자체가 붕괴돼요.',
  ex4 = 'Without intersubjectivity, the very possibility of historical understanding collapses.', ex4_ko = '상호주관성 없이는 역사적 이해의 가능성 자체가 붕괴돼요.',
  ex5 = 'Without intersubjectivity, the very possibility of artistic communication collapses.', ex5_ko = '상호주관성 없이는 예술적 소통의 가능성 자체가 붕괴돼요.'
WHERE id = 's_discussion_C2_03';

UPDATE sentences SET
  ex1 = 'From a hermeneutic standpoint, we must read the policy against its historical horizon.', ex1_ko = '해석학적 관점에서, 우리는 그 정책을 역사적 지평에 대비해서 읽어야 해요.',
  ex2 = 'From a hermeneutic standpoint, we must read the verdict within its institutional context.', ex2_ko = '해석학적 관점에서, 우리는 그 판결을 제도적 맥락 안에서 읽어야 해요.',
  ex3 = 'From a hermeneutic standpoint, we must read the doctrine through its reception history.', ex3_ko = '해석학적 관점에서, 우리는 그 교의를 수용사를 통해 읽어야 해요.',
  ex4 = 'From a hermeneutic standpoint, we must read the manifesto in light of its addressees.', ex4_ko = '해석학적 관점에서, 우리는 그 선언을 수신자들의 관점에서 읽어야 해요.',
  ex5 = 'From a hermeneutic standpoint, we must read the treaty within its diplomatic moment.', ex5_ko = '해석학적 관점에서, 우리는 그 조약을 외교적 순간 안에서 읽어야 해요.'
WHERE id = 's_discussion_C2_04';

UPDATE sentences SET
  ex1 = 'The ontological claim embedded in that argument demands further scrutiny.', ex1_ko = '그 주장에 내재된 존재론적 주장은 더 면밀한 검토가 필요해요.',
  ex2 = 'The metaphysical claim embedded in that thesis demands explicit defense.', ex2_ko = '그 명제에 내재된 형이상학적 주장은 명시적 옹호가 필요해요.',
  ex3 = 'The normative claim embedded in that framework demands open acknowledgment.', ex3_ko = '그 틀에 내재된 규범적 주장은 솔직한 인정이 필요해요.',
  ex4 = 'The teleological claim embedded in that model demands philosophical justification.', ex4_ko = '그 모델에 내재된 목적론적 주장은 철학적 정당화가 필요해요.',
  ex5 = 'The political claim embedded in that classification demands critical reflection.', ex5_ko = '그 분류에 내재된 정치적 주장은 비판적 성찰이 필요해요.'
WHERE id = 's_discussion_C2_05';

UPDATE sentences SET
  ex1 = 'That paradigmatic case cannot be used to justify a general theory of human behavior.', ex1_ko = '그 패러다임적 사례는 인간 행동의 일반 이론을 정당화하는 데 사용될 수 없어요.',
  ex2 = 'That paradigmatic case cannot be used to justify a sweeping legal precedent.', ex2_ko = '그 패러다임적 사례는 광범위한 법적 선례를 정당화하는 데 사용될 수 없어요.',
  ex3 = 'That paradigmatic case cannot be used to justify the universal applicability of the method.', ex3_ko = '그 패러다임적 사례는 그 방법의 보편적 적용성을 정당화하는 데 사용될 수 없어요.',
  ex4 = 'That paradigmatic case cannot be used to justify the extrapolation across cultures.', ex4_ko = '그 패러다임적 사례는 문화를 가로지르는 외삽을 정당화하는 데 사용될 수 없어요.',
  ex5 = 'That paradigmatic case cannot be used to justify the policy at national scale.', ex5_ko = '그 패러다임적 사례는 그 정책을 국가 규모에서 정당화하는 데 사용될 수 없어요.'
WHERE id = 's_discussion_C2_06';

UPDATE sentences SET
  ex1 = 'The praxis of this theory reveals a tension between its normative and descriptive claims.', ex1_ko = '이 이론의 실천은 규범적 주장과 서술적 주장 사이의 긴장을 드러내요.',
  ex2 = 'The praxis of this movement reveals a tension between its rhetoric and its actions.', ex2_ko = '이 운동의 실천은 수사와 행동 사이의 긴장을 드러내요.',
  ex3 = 'The praxis of this institution reveals a tension between its ideals and its operations.', ex3_ko = '이 기관의 실천은 이상과 운영 사이의 긴장을 드러내요.',
  ex4 = 'The praxis of this framework reveals a tension between universalism and particularism.', ex4_ko = '이 틀의 실천은 보편주의와 특수주의 사이의 긴장을 드러내요.',
  ex5 = 'The praxis of this ideology reveals a tension between its principles and its outcomes.', ex5_ko = '이 이데올로기의 실천은 원칙과 결과 사이의 긴장을 드러내요.'
WHERE id = 's_discussion_C2_07';
