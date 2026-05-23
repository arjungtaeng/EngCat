// Pexels 이미지 URL 가져와서 SQL 파일 생성
const PEXELS_KEY = 'Qx63nYI1EgVNKfHTpJ2ygxbKo2kuCrkgXKRU3nDquCjnyMweBOBNHrIf';

const items = [
  // WORDS
  { table: 'words', id: 'w_travel_01', keyword: 'travel itinerary map notebook planning' },
  { table: 'words', id: 'w_travel_02', keyword: 'airport departure board gate terminal' },
  { table: 'words', id: 'w_travel_03', keyword: 'airport arrival hall passengers walking' },
  { table: 'words', id: 'w_travel_04', keyword: 'airport customs border control officer' },
  { table: 'words', id: 'w_travel_05', keyword: 'travel suitcase luggage airport floor' },
  { table: 'words', id: 'w_travel_06', keyword: 'hotel reservation front desk check in' },
  { table: 'words', id: 'w_travel_07', keyword: 'airport terminal interior modern' },
  { table: 'words', id: 'w_travel_08', keyword: 'airport layover transit lounge waiting' },
  { table: 'words', id: 'w_travel_09', keyword: 'flight delay airport screen waiting' },
  { table: 'words', id: 'w_travel_10', keyword: 'travel destination city skyline landmark' },
  { table: 'words', id: 'w_cafe_01', keyword: 'waiter recommending menu restaurant smiling' },
  { table: 'words', id: 'w_cafe_02', keyword: 'appetizer starter small dish food plate' },
  { table: 'words', id: 'w_cafe_03', keyword: 'chef special dish restaurant gourmet' },
  { table: 'words', id: 'w_cafe_04', keyword: 'generous large portion food plate restaurant' },
  { table: 'words', id: 'w_cafe_05', keyword: 'vegetarian salad healthy green food' },
  { table: 'words', id: 'w_cafe_06', keyword: 'coffee takeaway cup walking street' },
  { table: 'words', id: 'w_cafe_07', keyword: 'hotel complimentary breakfast free service' },
  { table: 'words', id: 'w_cafe_08', keyword: 'food allergy ingredients label reading' },
  { table: 'words', id: 'w_cafe_09', keyword: 'water glass refill restaurant table' },
  { table: 'words', id: 'w_cafe_10', keyword: 'friends splitting bill restaurant payment' },
  { table: 'words', id: 'w_daily_01', keyword: 'morning routine coffee breakfast kitchen' },
  { table: 'words', id: 'w_daily_02', keyword: 'subway commute morning rush hour crowd' },
  { table: 'words', id: 'w_daily_03', keyword: 'neighborhood street walk residential area' },
  { table: 'words', id: 'w_daily_04', keyword: 'friends coffee chat catching up cafe' },
  { table: 'words', id: 'w_daily_05', keyword: 'exhausted tired person desk work stress' },
  { table: 'words', id: 'w_daily_06', keyword: 'weather forecast cloudy sky rain umbrella' },
  { table: 'words', id: 'w_daily_07', keyword: 'calendar recent days time passing' },
  { table: 'words', id: 'w_daily_08', keyword: 'person completing task success achievement' },
  { table: 'words', id: 'w_daily_09', keyword: 'surprised realization expression face' },
  { table: 'words', id: 'w_daily_10', keyword: 'gratitude appreciate thank you gesture smile' },
  { table: 'words', id: 'w_work_01', keyword: 'deadline calendar clock urgency pressure' },
  { table: 'words', id: 'w_work_02', keyword: 'coworkers office team collaboration smiling' },
  { table: 'words', id: 'w_work_03', keyword: 'business presentation projector meeting room' },
  { table: 'words', id: 'w_work_04', keyword: 'meeting agenda notebook planning office' },
  { table: 'words', id: 'w_work_05', keyword: 'feedback review discussion office colleagues' },
  { table: 'words', id: 'w_work_06', keyword: 'priority task list management organized' },
  { table: 'words', id: 'w_work_07', keyword: 'calendar schedule planning organized desk' },
  { table: 'words', id: 'w_work_08', keyword: 'team briefing update meeting standing' },
  { table: 'words', id: 'w_work_09', keyword: 'business negotiation handshake deal signing' },
  { table: 'words', id: 'w_work_10', keyword: 'manager delegating task team office' },
  { table: 'words', id: 'w_emo_01', keyword: 'overwhelmed stressed person too much work' },
  { table: 'words', id: 'w_emo_02', keyword: 'anxious worried nervous person waiting' },
  { table: 'words', id: 'w_emo_03', keyword: 'relieved happy person exhale good news' },
  { table: 'words', id: 'w_emo_04', keyword: 'frustrated person problem difficulty stuck' },
  { table: 'words', id: 'w_emo_05', keyword: 'grateful thankful person smile hands' },
  { table: 'words', id: 'w_emo_06', keyword: 'embarrassed blushing awkward face covering' },
  { table: 'words', id: 'w_emo_07', keyword: 'delighted excited happy surprised person' },
  { table: 'words', id: 'w_emo_08', keyword: 'proud achievement success medal celebration' },
  { table: 'words', id: 'w_emo_09', keyword: 'nervous public speaking stage presentation' },
  { table: 'words', id: 'w_emo_10', keyword: 'upset sad disappointed person alone' },
  // SENTENCES
  { table: 'sentences', id: 's_travel_01', keyword: 'airport departure terminal signage direction' },
  { table: 'sentences', id: 's_travel_02', keyword: 'airport check in counter luggage conveyor' },
  { table: 'sentences', id: 's_travel_03', keyword: 'flight delay airport departure screen board' },
  { table: 'sentences', id: 's_travel_04', keyword: 'currency exchange counter airport money' },
  { table: 'sentences', id: 's_travel_05', keyword: 'immigration passport control officer travel' },
  { table: 'sentences', id: 's_cafe_01', keyword: 'restaurant menu waiter table dining' },
  { table: 'sentences', id: 's_cafe_02', keyword: 'pasta dish restaurant ordering food' },
  { table: 'sentences', id: 's_cafe_03', keyword: 'restaurant bill check payment table' },
  { table: 'sentences', id: 's_cafe_04', keyword: 'vegetarian menu salad recommendation' },
  { table: 'sentences', id: 's_cafe_05', keyword: 'flat white coffee latte art cafe' },
  { table: 'sentences', id: 's_daily_01', keyword: 'friends coffee shop catching up talking' },
  { table: 'sentences', id: 's_daily_02', keyword: 'rainy weather cloudy sky umbrella street' },
  { table: 'sentences', id: 's_daily_03', keyword: 'reading book finished accomplishment sofa' },
  { table: 'sentences', id: 's_daily_04', keyword: 'friends dinner restaurant gathering evening' },
  { table: 'sentences', id: 's_daily_05', keyword: 'tired insomnia night person lying awake' },
  { table: 'sentences', id: 's_work_01', keyword: 'email follow up laptop office desk typing' },
  { table: 'sentences', id: 's_work_02', keyword: 'calendar meeting rescheduling planning desk' },
  { table: 'sentences', id: 's_work_03', keyword: 'team alignment meeting whiteboard discussion' },
  { table: 'sentences', id: 's_work_04', keyword: 'office feedback proposal document review' },
  { table: 'sentences', id: 's_work_05', keyword: 'teamwork help colleague office collaboration' },
  { table: 'sentences', id: 's_emo_01', keyword: 'nervous presenter public speaking audience' },
  { table: 'sentences', id: 's_emo_02', keyword: 'relief success good news reaction happy' },
  { table: 'sentences', id: 's_emo_03', keyword: 'proud team achievement award celebration' },
  { table: 'sentences', id: 's_emo_04', keyword: 'gratitude sincere thank you helping hand' },
  { table: 'sentences', id: 's_emo_05', keyword: 'embarrassed laughing awkward funny situation' },
];

async function fetchImage(keyword) {
  const url = `https://api.pexels.com/v1/search?query=${encodeURIComponent(keyword)}&per_page=1&orientation=landscape`;
  const res = await fetch(url, { headers: { Authorization: PEXELS_KEY } });
  const data = await res.json();
  if (data.photos && data.photos.length > 0) {
    return data.photos[0].src.large2x;
  }
  return null;
}

async function main() {
  const lines = ['-- Pexels 이미지 URL 업데이트'];
  let ok = 0, fail = 0;

  for (const item of items) {
    const url = await fetchImage(item.keyword);
    if (url) {
      lines.push(`UPDATE ${item.table} SET image_url = '${url}' WHERE id = '${item.id}';`);
      console.log(`✅ ${item.id}`);
      ok++;
    } else {
      console.log(`❌ ${item.id} — 결과 없음`);
      fail++;
    }
    // Pexels rate limit 방지
    await new Promise(r => setTimeout(r, 300));
  }

  const fs = await import('fs');
  fs.writeFileSync('/home/user/EngCat/supabase-image-urls.sql', lines.join('\n') + '\n');
  console.log(`\n완료: ${ok}개 성공, ${fail}개 실패`);
  console.log('supabase-image-urls.sql 파일이 생성됐어요.');
}

main();
