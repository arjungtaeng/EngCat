// EngCat — Card data + session state
// 10 word cards + 5 sentence cards (travel theme)

// Session state — persists across screen transitions via global
if (!window.ECSession) {
  window.ECSession = {
    wordIndex: 0,
    sentenceIndex: 0,
    completedWordIds: new Set(),
    completedSentenceIds: new Set(),
    bookmarkedIds: new Set(),
    resetDaily() {
      this.wordIndex = 0;
      this.sentenceIndex = 0;
      this.completedWordIds = new Set();
      this.completedSentenceIds = new Set();
    },
  };
}

// Card transition animations
(function () {
  if (document.getElementById('ec-anim-styles')) return;
  const s = document.createElement('style');
  s.id = 'ec-anim-styles';
  s.textContent = `
    @keyframes ecFadeUp {
      from { opacity: 0; transform: translateY(28px); }
      to   { opacity: 1; transform: translateY(0); }
    }
    @keyframes ecFadeDown {
      from { opacity: 0; transform: translateY(-28px); }
      to   { opacity: 1; transform: translateY(0); }
    }
    .ec-fade-up   { animation: ecFadeUp   0.28s cubic-bezier(0.2,0.8,0.2,1) both; }
    .ec-fade-down { animation: ecFadeDown 0.28s cubic-bezier(0.2,0.8,0.2,1) both; }
  `;
  document.head.appendChild(s);
})();

const T = ECTokens;

const ECData = {
  // ── 10 word cards ───────────────────────────────────────────────
  words: [
    {
      id: 'w1', en: 'itinerary', ipa: '/aɪˈtɪnərəri/', pos: 'noun',
      ko: '여행 일정, 여정',
      def: 'A planned route or journey, with details of the places you will visit.',
      ex: 'Our {itinerary} includes three days in Kyoto.',
      tint: T.art1,
    },
    {
      id: 'w2', en: 'layover', ipa: '/ˈleɪˌoʊvər/', pos: 'noun',
      ko: '경유 대기, 환승 대기',
      def: 'A period of time spent waiting between stages of a journey.',
      ex: 'We have a six-hour {layover} in Dubai.',
      tint: T.art2,
    },
    {
      id: 'w3', en: 'jet lag', ipa: '/ˈdʒet læɡ/', pos: 'noun',
      ko: '시차 피로',
      def: 'Extreme tiredness felt after a long flight across different time zones.',
      ex: 'She was still suffering from {jet lag} after arriving in Seoul.',
      tint: T.art5,
    },
    {
      id: 'w4', en: 'boarding pass', ipa: '/ˈbɔːrdɪŋ pæs/', pos: 'noun',
      ko: '탑승권',
      def: 'A card that allows a passenger to board an aircraft, showing their seat.',
      ex: 'Please have your {boarding pass} ready at the gate.',
      tint: T.art4,
    },
    {
      id: 'w5', en: 'turbulence', ipa: '/ˈtɜːrbjələns/', pos: 'noun',
      ko: '난기류',
      def: 'Irregular air movement that causes an aircraft to shake unexpectedly.',
      ex: 'The captain warned us about {turbulence} ahead.',
      tint: T.art3,
    },
    {
      id: 'w6', en: 'customs', ipa: '/ˈkʌstəmz/', pos: 'noun',
      ko: '세관',
      def: 'The official department that checks goods entering or leaving a country.',
      ex: 'Nothing to declare — I went through the green lane at {customs}.',
      tint: T.art6,
    },
    {
      id: 'w7', en: 'carousel', ipa: '/ˌkærəˈsel/', pos: 'noun',
      ko: '수하물 컨베이어',
      def: 'A circular conveyor belt at an airport where passengers collect luggage.',
      ex: 'Please wait at {carousel} 4 for your bags.',
      tint: T.art1,
    },
    {
      id: 'w8', en: 'connecting flight', ipa: '/kəˈnektɪŋ flaɪt/', pos: 'noun',
      ko: '연결 항공편',
      def: 'A flight that requires passengers to change planes at an intermediate stop.',
      ex: 'My {connecting flight} departs from Terminal 2 at noon.',
      tint: T.art2,
    },
    {
      id: 'w9', en: 'complimentary', ipa: '/ˌkɒmplɪˈmentəri/', pos: 'adjective',
      ko: '무료 제공의, 서비스의',
      def: 'Given free of charge, especially as a courtesy or goodwill gesture.',
      ex: 'The hotel offers a {complimentary} breakfast every morning.',
      tint: T.art4,
    },
    {
      id: 'w10', en: 'concierge', ipa: '/ˌkɒnsiˈeərʒ/', pos: 'noun',
      ko: '컨시어지, 안내 직원',
      def: 'A hotel employee who assists guests with tours, transport, and reservations.',
      ex: 'Ask the {concierge} for restaurant recommendations nearby.',
      tint: T.art5,
    },
  ],

  // ── 5 sentence cards ────────────────────────────────────────────
  sentences: [
    {
      id: 's1',
      en: "Could you keep an eye on my bag for a sec?",
      ipa: '/kʊd ju kiːp ən aɪ ɒn maɪ bæɡ fər ə sek/',
      ko: '제 가방 잠시만 봐주실 수 있을까요?',
      highlight: 'keep an eye on',
      tip: '"keep an eye on" = 잠깐 지켜봐 주다. 카페·공항에서 자주 쓰이는 부탁 표현이에요.',
      sit: 'CAFÉ · 화장실 가기 직전',
      tint: T.art4,
      beats: [
        { time: '00:01', tint: T.art4, label: '카페에서 노트북 작업 중' },
        { time: '00:04', tint: T.art2, label: '화장실에 가야 함' },
        { time: '00:07', tint: T.art5, label: '옆 사람에게 부탁' },
      ],
    },
    {
      id: 's2',
      en: "I'd like to check in early, please.",
      ipa: '/aɪd laɪk tə tʃek ɪn ɜːrli pliːz/',
      ko: '일찍 체크인하고 싶어요.',
      highlight: 'check in early',
      tip: '"check in early" = 조기 체크인. 호텔 정규 체크인 시간 전에 방을 요청할 때 쓰는 표현이에요.',
      sit: 'HOTEL · 프런트 데스크',
      tint: T.art3,
      beats: [
        { time: '00:01', tint: T.art3, label: '호텔 도착, 짐을 들고' },
        { time: '00:04', tint: T.art1, label: '프런트 직원에게 요청' },
        { time: '00:07', tint: T.art6, label: '방 열쇠를 받는 모습' },
      ],
    },
    {
      id: 's3',
      en: "Which gate does my connecting flight depart from?",
      ipa: '/wɪtʃ ɡeɪt dʌz maɪ kəˈnektɪŋ flaɪt dɪˈpɑːrt frɒm/',
      ko: '제 연결편은 몇 번 게이트에서 출발하나요?',
      highlight: 'connecting flight',
      tip: '"depart from" = ~에서 출발하다. 공항 안내소에서 환승 게이트를 확인할 때 쓰는 필수 표현이에요.',
      sit: 'AIRPORT · 환승 중',
      tint: T.art1,
      beats: [
        { time: '00:01', tint: T.art1, label: '비행기에서 내린 직후' },
        { time: '00:04', tint: T.art5, label: '공항 직원에게 질문' },
        { time: '00:07', tint: T.art2, label: '게이트 번호 확인' },
      ],
    },
    {
      id: 's4',
      en: "Could you give me a wake-up call at 7 AM?",
      ipa: '/kʊd ju ɡɪv mi ə ˈweɪk ʌp kɔːl æt ˈsevən eɪ em/',
      ko: '오전 7시에 모닝콜 해주실 수 있을까요?',
      highlight: 'wake-up call',
      tip: '"wake-up call" = 모닝콜. 호텔 체크인 시 또는 전화로 요청하는 일상적인 표현이에요.',
      sit: 'HOTEL · 체크인 후',
      tint: T.art6,
      beats: [
        { time: '00:01', tint: T.art6, label: '방에 짐을 풀고 쉬는 중' },
        { time: '00:04', tint: T.art4, label: '프런트에 전화로 요청' },
        { time: '00:07', tint: T.art3, label: '다음 날 아침 알람 울림' },
      ],
    },
    {
      id: 's5',
      en: "Is this seat taken?",
      ipa: '/ɪz ðɪs siːt ˈteɪkən/',
      ko: '이 자리 비어 있나요?',
      highlight: 'seat taken',
      tip: '"Is this seat taken?" = 이 자리 있어요? 간결하고 자연스러운 표현. "Is anyone sitting here?"도 같은 의미예요.',
      sit: 'PLANE · 탑승 후',
      tint: T.art2,
      beats: [
        { time: '00:01', tint: T.art2, label: '기내에서 자리를 찾는 중' },
        { time: '00:04', tint: T.art5, label: '빈 자리 옆 승객에게 질문' },
        { time: '00:07', tint: T.art1, label: '자리에 앉아 안전벨트 착용' },
      ],
    },
  ],
};

Object.assign(window, { ECData, ECSession });
