-- 단어별 이미지 검색 키워드
UPDATE words SET image_keyword = 'travel itinerary map notebook planning'       WHERE id = 'w_travel_01';
UPDATE words SET image_keyword = 'airport departure board gate terminal'        WHERE id = 'w_travel_02';
UPDATE words SET image_keyword = 'airport arrival hall passengers walking'      WHERE id = 'w_travel_03';
UPDATE words SET image_keyword = 'airport customs border control officer'       WHERE id = 'w_travel_04';
UPDATE words SET image_keyword = 'travel suitcase luggage airport floor'        WHERE id = 'w_travel_05';
UPDATE words SET image_keyword = 'hotel reservation front desk check in'        WHERE id = 'w_travel_06';
UPDATE words SET image_keyword = 'airport terminal interior modern'             WHERE id = 'w_travel_07';
UPDATE words SET image_keyword = 'airport layover transit lounge waiting'       WHERE id = 'w_travel_08';
UPDATE words SET image_keyword = 'flight delay airport screen waiting'          WHERE id = 'w_travel_09';
UPDATE words SET image_keyword = 'travel destination city skyline landmark'     WHERE id = 'w_travel_10';

UPDATE words SET image_keyword = 'waiter recommending menu restaurant smiling'  WHERE id = 'w_cafe_01';
UPDATE words SET image_keyword = 'appetizer starter small dish food plate'      WHERE id = 'w_cafe_02';
UPDATE words SET image_keyword = 'chef special dish restaurant gourmet'         WHERE id = 'w_cafe_03';
UPDATE words SET image_keyword = 'generous large portion food plate restaurant' WHERE id = 'w_cafe_04';
UPDATE words SET image_keyword = 'vegetarian salad healthy green food'          WHERE id = 'w_cafe_05';
UPDATE words SET image_keyword = 'coffee takeaway cup walking street'           WHERE id = 'w_cafe_06';
UPDATE words SET image_keyword = 'hotel complimentary breakfast free service'   WHERE id = 'w_cafe_07';
UPDATE words SET image_keyword = 'food allergy ingredients label reading'       WHERE id = 'w_cafe_08';
UPDATE words SET image_keyword = 'water glass refill restaurant table'          WHERE id = 'w_cafe_09';
UPDATE words SET image_keyword = 'friends splitting bill restaurant payment'    WHERE id = 'w_cafe_10';

UPDATE words SET image_keyword = 'morning routine coffee breakfast kitchen'     WHERE id = 'w_daily_01';
UPDATE words SET image_keyword = 'subway commute morning rush hour crowd'       WHERE id = 'w_daily_02';
UPDATE words SET image_keyword = 'neighborhood street walk residential area'    WHERE id = 'w_daily_03';
UPDATE words SET image_keyword = 'friends coffee chat catching up cafe'         WHERE id = 'w_daily_04';
UPDATE words SET image_keyword = 'exhausted tired person desk work stress'      WHERE id = 'w_daily_05';
UPDATE words SET image_keyword = 'weather forecast cloudy sky rain umbrella'    WHERE id = 'w_daily_06';
UPDATE words SET image_keyword = 'calendar recent days time passing'            WHERE id = 'w_daily_07';
UPDATE words SET image_keyword = 'person completing task success achievement'   WHERE id = 'w_daily_08';
UPDATE words SET image_keyword = 'surprised realization expression face'        WHERE id = 'w_daily_09';
UPDATE words SET image_keyword = 'gratitude appreciate thank you gesture smile' WHERE id = 'w_daily_10';

UPDATE words SET image_keyword = 'deadline calendar clock urgency pressure'     WHERE id = 'w_work_01';
UPDATE words SET image_keyword = 'coworkers office team collaboration smiling'  WHERE id = 'w_work_02';
UPDATE words SET image_keyword = 'business presentation projector meeting room' WHERE id = 'w_work_03';
UPDATE words SET image_keyword = 'meeting agenda notebook planning office'      WHERE id = 'w_work_04';
UPDATE words SET image_keyword = 'feedback review discussion office colleagues' WHERE id = 'w_work_05';
UPDATE words SET image_keyword = 'priority task list management organized'      WHERE id = 'w_work_06';
UPDATE words SET image_keyword = 'calendar schedule planning organized desk'    WHERE id = 'w_work_07';
UPDATE words SET image_keyword = 'team briefing update meeting standing'        WHERE id = 'w_work_08';
UPDATE words SET image_keyword = 'business negotiation handshake deal signing'  WHERE id = 'w_work_09';
UPDATE words SET image_keyword = 'manager delegating task team office'          WHERE id = 'w_work_10';

UPDATE words SET image_keyword = 'overwhelmed stressed person too much work'    WHERE id = 'w_emo_01';
UPDATE words SET image_keyword = 'anxious worried nervous person waiting'       WHERE id = 'w_emo_02';
UPDATE words SET image_keyword = 'relieved happy person exhale good news'       WHERE id = 'w_emo_03';
UPDATE words SET image_keyword = 'frustrated person problem difficulty stuck'   WHERE id = 'w_emo_04';
UPDATE words SET image_keyword = 'grateful thankful person smile hands'         WHERE id = 'w_emo_05';
UPDATE words SET image_keyword = 'embarrassed blushing awkward face covering'   WHERE id = 'w_emo_06';
UPDATE words SET image_keyword = 'delighted excited happy surprised person'     WHERE id = 'w_emo_07';
UPDATE words SET image_keyword = 'proud achievement success medal celebration'  WHERE id = 'w_emo_08';
UPDATE words SET image_keyword = 'nervous public speaking stage presentation'   WHERE id = 'w_emo_09';
UPDATE words SET image_keyword = 'upset sad disappointed person alone'          WHERE id = 'w_emo_10';

-- 문장별 이미지 검색 키워드
UPDATE sentences SET image_keyword = 'airport departure terminal signage direction'   WHERE id = 's_travel_01';
UPDATE sentences SET image_keyword = 'airport check in counter luggage conveyor'      WHERE id = 's_travel_02';
UPDATE sentences SET image_keyword = 'flight delay airport departure screen board'    WHERE id = 's_travel_03';
UPDATE sentences SET image_keyword = 'currency exchange counter airport money'        WHERE id = 's_travel_04';
UPDATE sentences SET image_keyword = 'immigration passport control officer travel'    WHERE id = 's_travel_05';

UPDATE sentences SET image_keyword = 'restaurant menu waiter table dining'            WHERE id = 's_cafe_01';
UPDATE sentences SET image_keyword = 'pasta dish restaurant ordering food'            WHERE id = 's_cafe_02';
UPDATE sentences SET image_keyword = 'restaurant bill check payment table'            WHERE id = 's_cafe_03';
UPDATE sentences SET image_keyword = 'vegetarian menu salad recommendation'           WHERE id = 's_cafe_04';
UPDATE sentences SET image_keyword = 'flat white coffee latte art cafe'               WHERE id = 's_cafe_05';

UPDATE sentences SET image_keyword = 'friends coffee shop catching up talking'        WHERE id = 's_daily_01';
UPDATE sentences SET image_keyword = 'rainy weather cloudy sky umbrella street'       WHERE id = 's_daily_02';
UPDATE sentences SET image_keyword = 'reading book finished accomplishment sofa'      WHERE id = 's_daily_03';
UPDATE sentences SET image_keyword = 'friends dinner restaurant gathering evening'    WHERE id = 's_daily_04';
UPDATE sentences SET image_keyword = 'tired insomnia night person lying awake'        WHERE id = 's_daily_05';

UPDATE sentences SET image_keyword = 'email follow up laptop office desk typing'      WHERE id = 's_work_01';
UPDATE sentences SET image_keyword = 'calendar meeting rescheduling planning desk'    WHERE id = 's_work_02';
UPDATE sentences SET image_keyword = 'team alignment meeting whiteboard discussion'   WHERE id = 's_work_03';
UPDATE sentences SET image_keyword = 'office feedback proposal document review'       WHERE id = 's_work_04';
UPDATE sentences SET image_keyword = 'teamwork help colleague office collaboration'   WHERE id = 's_work_05';

UPDATE sentences SET image_keyword = 'nervous presenter public speaking audience'     WHERE id = 's_emo_01';
UPDATE sentences SET image_keyword = 'relief success good news reaction happy'        WHERE id = 's_emo_02';
UPDATE sentences SET image_keyword = 'proud team achievement award celebration'       WHERE id = 's_emo_03';
UPDATE sentences SET image_keyword = 'gratitude sincere thank you helping hand'       WHERE id = 's_emo_04';
UPDATE sentences SET image_keyword = 'embarrassed laughing awkward funny situation'   WHERE id = 's_emo_05';
