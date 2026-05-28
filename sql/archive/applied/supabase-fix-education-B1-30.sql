-- Fix: w_education_B1_30 (qualify) was missing example_en_2~5 due to source file error
UPDATE words SET
  example_en_2 = 'She had to qualify in three rounds before reaching the finals.',
  example_ko_2 = '그녀는 결승에 진출하기 전에 세 번의 라운드에서 자격을 갖춰야 했어요.',
  example_en_3 = 'You need to qualify as a teacher before applying for this position.',
  example_ko_3 = '이 자리에 지원하려면 교사로 자격을 갖춰야 해요.',
  example_en_4 = 'He worked hard to qualify for the scholarship program.',
  example_ko_4 = '그는 장학금 프로그램의 자격을 갖추기 위해 열심히 노력했어요.',
  example_en_5 = 'Only those who pass the exam will qualify for the certificate.',
  example_ko_5 = '시험을 통과한 사람만 자격증을 받을 자격을 갖춰요.'
WHERE id = 'w_education_B1_30';
