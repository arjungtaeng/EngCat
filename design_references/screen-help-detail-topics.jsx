// EngCat — Help Detail: 다양한 상황을 배워요

function ECScreenHelpDetailTopics() {
  const T = ECTokens;
  const scrollRef = React.useRef(null);

  // 예시 단어 카드
  const TopicCard = ({ emoji, topic, word, ko, collocation }) => (
    <div style={{ background: T.bg2, borderRadius: 18, border: `1px solid ${T.hair}`, padding: 16, marginBottom: 12 }}>
      <div style={{ display: 'flex', gap: 12, alignItems: 'flex-start' }}>
        <div style={{ fontSize: 32 }}>{emoji}</div>
        <div style={{ flex: 1 }}>
          <div style={{ fontSize: 11, fontFamily: T.mono, letterSpacing: 0.5, color: T.textMute, marginBottom: 4 }}>
            {topic}
          </div>
          <div style={{ fontFamily: T.serif, fontSize: 18, fontStyle: 'italic', color: T.accent, marginBottom: 4 }}>
            {word}
          </div>
          <div style={{ fontSize: 13, color: T.textDim, marginBottom: 8 }}>
            {ko}
          </div>
          {collocation && (
            <div style={{ fontSize: 12, color: T.textMute, fontStyle: 'italic', paddingTop: 8, borderTop: `1px solid ${T.hair}` }}>
              <div style={{ marginTop: 8 }}>{collocation}</div>
            </div>
          )}
        </div>
      </div>
    </div>
  );

  return (
    <div style={{ flex: 1, minHeight: 0, background: T.bg1, display: 'flex', flexDirection: 'column' }}>
      <ECStatusBar />

      {/* Header with back button */}
      <div style={{ padding: '16px 18px', display: 'flex', alignItems: 'center', gap: 12, borderBottom: `1px solid ${T.hair}` }}>
        <div onClick={() => window.ECNav?.go('help')} style={{ cursor: 'pointer', color: T.textMute, fontSize: 14 }}>
          ←
        </div>
        <div style={{ fontFamily: T.serif, fontSize: 20, color: T.text, letterSpacing: -0.3, flex: 1 }}>
          다양한 상황을 배워요
        </div>
      </div>

      <div ref={scrollRef} style={{ flex: 1, minHeight: 0, overflowY: 'auto', WebkitOverflowScrolling: 'touch', paddingBottom: 40 }}>

      {/* Main content */}
      <div style={{ padding: 20 }}>
        <div style={{ fontSize: 15, color: T.textDim, lineHeight: 1.8, marginBottom: 20 }}>
          <strong style={{ color: T.accent }}>매일 다른 토픽</strong>을 학습하면
          한 주제만 깊이 파는 게 아니라 실제 생활에서 필요한 다양한 상황의 표현들을 배울 수 있어요.
        </div>

        <div style={{ fontSize: 14, fontWeight: 600, color: T.text, marginBottom: 12 }}>
          토픽별 학습 예시
        </div>

        <TopicCard
          emoji="☕"
          topic="카페"
          word="smooth"
          ko="부드러운, 묵직한"
          collocation="smooth coffee - 부드러운 맛의 커피"
        />

        <TopicCard
          emoji="✈️"
          topic="여행"
          word="layover"
          ko="경유(비행)"
          collocation="a 2-hour layover in Seoul - 서울에서 2시간 경유"
        />

        <TopicCard
          emoji="💼"
          topic="업무"
          word="deadline"
          ko="마감 기한"
          collocation="meet a deadline - 마감을 맞추다"
        />

        <TopicCard
          emoji="😊"
          topic="감정"
          word="overwhelm"
          ko="압도하다, 벅차다"
          collocation="feel overwhelmed - 벅찬 기분이 들다"
        />

        <div style={{ fontSize: 13, color: T.textMute, lineHeight: 1.7, marginTop: 20, paddingTop: 12, borderTop: `1px solid ${T.hair}` }}>
          <div style={{ marginTop: 12 }}>
            <strong style={{ color: T.accent }}>왜 효과적일까?</strong>
          </div>
          <div style={{ marginTop: 8 }}>
            • <strong>맥락 습득:</strong> 각 단어가 어떤 상황에서 쓰이는지 자연스럽게 배워요
          </div>
          <div style={{ marginTop: 6 }}>
            • <strong>활용 능력:</strong> 같은 단어도 여러 컨텍스트에서 보니까 실제 회화에서 자신감이 생겨요
          </div>
          <div style={{ marginTop: 6 }}>
            • <strong>흥미 유지:</strong> 매일 새로운 토픽이라 학습이 지루하지 않아요
          </div>
        </div>
      </div>

      </div>{/* end scrollable */}
    </div>
  );
}

Object.assign(window, { ECScreenHelpDetailTopics });
