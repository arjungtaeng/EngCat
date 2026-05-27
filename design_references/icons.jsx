// EngCat — Shared icons (minimal line icons in accent/text colors)

const ECIcon = {
  home: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <path d="M3 11l9-7 9 7v9a2 2 0 01-2 2h-3v-7h-8v7H5a2 2 0 01-2-2v-9z" stroke={c} strokeWidth="1.6" strokeLinejoin="round"/>
    </svg>
  ),
  cards: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <rect x="3.5" y="6" width="13" height="14" rx="2.5" stroke={c} strokeWidth="1.6"/>
      <path d="M7.5 3.5h10A3 3 0 0120.5 6.5v10" stroke={c} strokeWidth="1.6" strokeLinecap="round"/>
    </svg>
  ),
  chart: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <path d="M4 19V5M4 19h16" stroke={c} strokeWidth="1.6" strokeLinecap="round"/>
      <rect x="7" y="11" width="3" height="6" rx="0.5" fill={c}/>
      <rect x="12" y="8" width="3" height="9" rx="0.5" fill={c}/>
      <rect x="17" y="13" width="3" height="4" rx="0.5" fill={c}/>
    </svg>
  ),
  user: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <circle cx="12" cy="8" r="4" stroke={c} strokeWidth="1.6"/>
      <path d="M4 20c1.5-4 4.5-6 8-6s6.5 2 8 6" stroke={c} strokeWidth="1.6" strokeLinecap="round"/>
    </svg>
  ),
  flame: (c = 'currentColor', s = 20) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill={c}>
      <path d="M12 2c1.5 3 4.5 5 4.5 9a4.5 4.5 0 11-9 0c0-1.5.5-2.5 1-3 .5 1 1.5 1.5 2 1.5 0-2 .5-5.5 1.5-7.5z"/>
    </svg>
  ),
  // 7단계 커스텀 불꽃 (진도/홈 공용) — 0: 차가운 재 → 6: 전설의 불꽃
  flameStage: (stage = 0, s = 24) => {
    if (stage <= 0) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <path d="M 7 18 Q 12 16.5 17 18 L 16 20 L 8 20 Z" fill="#5a5560" opacity="0.7"/>
        <circle cx="12" cy="17.5" r="0.6" fill="#5a5560" opacity="0.9"/>
        <path d="M 11.5 15 Q 11 13.5 12 12 Q 13 10.5 12.3 9" stroke="#5a5560" strokeWidth="0.6" strokeLinecap="round" fill="none" opacity="0.35"/>
      </svg>
    );
    if (stage === 1) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <ellipse cx="12" cy="20" rx="3" ry="0.8" fill="#8a6a52" opacity="0.5"/>
        <path d="M 12 20 Q 9.6 17.5 10.8 14 Q 11.5 12.3 12.4 13 Q 13.3 15 12.9 17 Q 14 16.3 13.3 20 Z" fill="#E8B26A"/>
        <ellipse cx="12.3" cy="18" rx="0.7" ry="1.5" fill="#FFE4B0"/>
      </svg>
    );
    if (stage === 2) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <path d="M 12 20 Q 8.5 17 10 13 Q 11 11 12 11.5 Q 12.5 13 12.2 14.5 Q 13.8 13.5 14 11.5 Q 15.5 14 15 17 Q 14 19.5 12 20 Z" fill="#E8B26A"/>
        <path d="M 12 19 Q 10.5 17 11.5 15 Q 12 14 12.3 14.5 Q 13 16 12.7 17 Q 13.5 16.5 13 18.5 Z" fill="#F0C878"/>
        <ellipse cx="12.3" cy="17" rx="0.6" ry="1.2" fill="#FFE4B0"/>
      </svg>
    );
    if (stage === 3) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <path d="M 12 21 Q 7 18 8.5 13 Q 9.5 10 11.5 9.5 Q 11.8 11 12 12.5 Q 13.5 11 14.5 8.5 Q 16.5 12 16 16 Q 15 20 12 21 Z" fill="#E89A6A"/>
        <path d="M 12 20 Q 9 17.5 10 14 Q 11 12 12 12.5 Q 12.3 14 12.5 15 Q 13.5 14 14 12 Q 15 14.5 14.5 17 Q 14 19 12 20 Z" fill="#E8B26A"/>
        <path d="M 12 19 Q 10.5 17 11.5 15 Q 12 14 12.3 14.5 Q 13 16 12.7 17 Q 13.5 17 13 18.5 Z" fill="#FFE4B0"/>
      </svg>
    );
    if (stage === 4) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <path d="M 12 21.5 Q 6 18 7.5 12.5 Q 9 8.5 11 8 Q 11.5 10 12 12 Q 13.5 9 15 6 Q 17.5 11 17 16 Q 16 21 12 21.5 Z" fill="#E89A6A"/>
        <path d="M 12 20.5 Q 8 17.5 9 13 Q 10 10 11.5 10.5 Q 12 12.5 12.3 14 Q 13.5 12 14.5 9.5 Q 16 13 15.5 16.5 Q 14.5 19.5 12 20.5 Z" fill="#E8B26A"/>
        <path d="M 12 19.5 Q 9.5 17 10.5 14 Q 11.5 12 12.3 12.5 Q 12.5 14 13 15 Q 14 13.5 14.3 12 Q 14.8 15 14.5 17 Q 13.5 19 12 19.5 Z" fill="#F0C878"/>
        <ellipse cx="12.5" cy="17" rx="0.7" ry="1.4" fill="#FFE4B0"/>
        <circle cx="17" cy="9" r="0.5" fill="#FFD27A"/>
        <circle cx="6.5" cy="11" r="0.4" fill="#FFD27A"/>
      </svg>
    );
    if (stage === 5) return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <ellipse cx="12" cy="14" rx="6" ry="8" fill="rgba(232,178,106,0.4)"/>
        <path d="M 12 22 Q 5 18 6 11.5 Q 7.5 7 9.5 6 Q 10 9 11 11 Q 12.5 7 13 4 Q 14 7 13.8 10 Q 15.5 7.5 16.5 5 Q 18.5 10 18 16 Q 17 21.5 12 22 Z" fill="#E89A6A"/>
        <path d="M 12 21 Q 7 18 8 13 Q 9 9.5 10.5 9 Q 11 11 11.8 12 Q 13 9 13.5 7 Q 15 11 14.5 13 Q 16 11 16 9 Q 17 13 16.5 17 Q 15.5 20 12 21 Z" fill="#E8B26A"/>
        <path d="M 12 20 Q 9 18 10 14 Q 11 12 12 12 Q 12.3 14 12.8 15 Q 14 13 14.3 11 Q 15 14 14.5 17 Q 13.5 19.5 12 20 Z" fill="#F0C878"/>
        <path d="M 12 19 Q 11 17 12 14.5 Q 12.7 13.5 13 14.5 Q 13.5 16 13.2 17 Q 13.5 18 12.7 19 Z" fill="#FFE4B0"/>
        <circle cx="18" cy="8" r="0.5" fill="#FFD27A"/>
        <circle cx="5" cy="10" r="0.45" fill="#FFD27A"/>
        <circle cx="16" cy="4" r="0.35" fill="#FFD27A" opacity="0.7"/>
        <circle cx="7" cy="6" r="0.3" fill="#FFD27A" opacity="0.6"/>
      </svg>
    );
    return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none"
        style={{ filter: 'drop-shadow(0 0 4px rgba(232,178,106,0.7)) drop-shadow(0 0 10px rgba(232,178,106,0.4))' }}>
        <ellipse cx="12" cy="13" rx="8" ry="10" fill="rgba(232,178,106,0.4)"/>
        <ellipse cx="12" cy="14" rx="6" ry="8" fill="rgba(232,178,106,0.4)" opacity="0.6"/>
        <path d="M 12 22.5 Q 3.5 19 4.5 11 Q 6 5 8.5 4 Q 9 8 10 10.5 Q 11.5 5 12 1.5 Q 13 5.5 13 10 Q 14.5 4.5 15.5 2.5 Q 16.5 7 16 10 Q 18 7 19.5 4.5 Q 21 11 20.5 17 Q 19 22 12 22.5 Z" fill="#E89A6A"/>
        <path d="M 12 22 Q 5 19 6 12 Q 7.5 7 9.5 7 Q 10 10 11 12 Q 12.5 6 13 3.5 Q 14 7 13.8 10.5 Q 15.5 6.5 16.5 4.5 Q 18 9 17.5 14 Q 17 19 12 22 Z" fill="#E8B26A"/>
        <path d="M 12 21 Q 7 18.5 8 13 Q 9.5 9 11 9 Q 11.5 11 12 12.5 Q 13 8.5 13.5 6.5 Q 14.5 10 14.3 13 Q 16 10 16 8.5 Q 17 13 16 17 Q 15 20 12 21 Z" fill="#F0C878"/>
        <path d="M 12 20 Q 9.5 18 10.5 14 Q 11.5 12 12 12.5 Q 12.5 14 13 15 Q 14 12.5 14.3 11 Q 15 14 14.5 17 Q 13.5 19 12 20 Z" fill="#FFE4B0"/>
        <path d="M 12 19 Q 11 17 12 14.5 Q 12.7 13.5 13 14.5 Q 13.5 16 13.2 17 Q 13.5 18 12.7 19 Z" fill="#FFF1D0"/>
        <circle cx="20" cy="6" r="0.6" fill="#FFD27A"/>
        <circle cx="4" cy="8" r="0.55" fill="#FFD27A"/>
        <circle cx="18" cy="2" r="0.4" fill="#FFD27A" opacity="0.8"/>
        <circle cx="6" cy="3" r="0.4" fill="#FFD27A" opacity="0.7"/>
        <circle cx="22" cy="11" r="0.35" fill="#FFD27A" opacity="0.6"/>
        <circle cx="2.5" cy="13" r="0.35" fill="#FFD27A" opacity="0.5"/>
        <circle cx="15" cy="0.5" r="0.3" fill="#FFD27A" opacity="0.5"/>
      </svg>
    );
  },
  // EngCat 마스코트 로고 (dark=true: 다크모드용 크림 고양이 / false: 라이트모드용 다크 고양이)
  mascot: (dark = true, s = 64) => {
    const body = dark ? '#F4ECDD' : '#1A1A21';
    const eye = dark ? '#1A1A21' : '#F4ECDD';
    return (
      <svg xmlns="http://www.w3.org/2000/svg" width={s} height={s} viewBox="0 0 24 24" fill="none">
        <rect x="19.2" y="1.5" width="2.6" height="9.5" rx="1.3" fill={body}/>
        <rect x="17.5" y="9.5" width="4.5" height="11.5" rx="2.25" fill={body}/>
        <rect x="4" y="9.5" width="17" height="6" rx="2.6" fill={body}/>
        <rect x="3" y="13" width="4" height="8" rx="2" fill={body}/>
        <rect x="3" y="3.5" width="9.5" height="6.5" rx="1.6" fill={body}/>
        <path d="M 11.5 4.5 L 11.5 1.5 L 8.3 4.5 Z" fill="#E8B26A"/>
        <path d="M 4 4.5 L 4 1.5 L 7.2 4.5 Z" fill="#E8B26A"/>
        <circle cx="8.8" cy="6.7" r="0.85" fill={eye}/>
        <circle cx="5" cy="6.7" r="0.85" fill={eye}/>
      </svg>
    );
  },
  bookmark: (c = 'currentColor', s = 20, filled = false) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill={filled ? c : 'none'}>
      <path d="M6 4h12v17l-6-4-6 4V4z" stroke={c} strokeWidth="1.6" strokeLinejoin="round"/>
    </svg>
  ),
  heart: (c = 'currentColor', s = 20, filled = false) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill={filled ? c : 'none'}>
      <path d="M12 20s-7-4.5-7-10a4 4 0 017-2.5A4 4 0 0119 10c0 5.5-7 10-7 10z" stroke={c} strokeWidth="1.6" strokeLinejoin="round"/>
    </svg>
  ),
  speaker: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <path d="M4 9v6h4l5 4V5L8 9H4z" fill={c}/>
      <path d="M16.5 8.5c1 1 1.5 2.2 1.5 3.5s-.5 2.5-1.5 3.5M19 6c2 1.7 3 3.7 3 6s-1 4.3-3 6" stroke={c} strokeWidth="1.6" strokeLinecap="round" fill="none"/>
    </svg>
  ),
  mic: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <rect x="9" y="3" width="6" height="12" rx="3" stroke={c} strokeWidth="1.6"/>
      <path d="M5 11a7 7 0 0014 0M12 18v3" stroke={c} strokeWidth="1.6" strokeLinecap="round"/>
    </svg>
  ),
  more: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <circle cx="12" cy="6" r="1.5" fill={c}/><circle cx="12" cy="12" r="1.5" fill={c}/><circle cx="12" cy="18" r="1.5" fill={c}/>
    </svg>
  ),
  chev: (dir = 'right', c = 'currentColor', s = 18) => {
    const map = { right: 'M7 4l7 8-7 8', left: 'M15 4l-7 8 7 8', down: 'M4 8l8 7 8-7', up: 'M4 16l8-7 8 7' };
    return <svg width={s} height={s} viewBox="0 0 24 24" fill="none"><path d={map[dir]} stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/></svg>;
  },
  check: (c = 'currentColor', s = 20) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none"><path d="M4 12l5 5 11-12" stroke={c} strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round"/></svg>
  ),
  close: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none"><path d="M6 6l12 12M18 6L6 18" stroke={c} strokeWidth="2" strokeLinecap="round"/></svg>
  ),
  play: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24"><path d="M7 5l13 7-13 7V5z" fill={c}/></svg>
  ),
  sparkle: (c = 'currentColor', s = 18) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill={c}>
      <path d="M12 2l2 6 6 2-6 2-2 6-2-6-6-2 6-2 2-6z"/>
    </svg>
  ),
  globe: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <circle cx="12" cy="12" r="9" stroke={c} strokeWidth="1.6"/>
      <path d="M3 12h18M12 3c3 3 3 15 0 18M12 3c-3 3-3 15 0 18" stroke={c} strokeWidth="1.6"/>
    </svg>
  ),
  share: (c = 'currentColor', s = 20) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <circle cx="6" cy="12" r="2.5" stroke={c} strokeWidth="1.6"/>
      <circle cx="18" cy="6" r="2.5" stroke={c} strokeWidth="1.6"/>
      <circle cx="18" cy="18" r="2.5" stroke={c} strokeWidth="1.6"/>
      <path d="M8 11l8-4M8 13l8 4" stroke={c} strokeWidth="1.6"/>
    </svg>
  ),
  notes: (c = 'currentColor', s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none">
      <path d="M21 15a2 2 0 01-2 2H7l-4 4V5a2 2 0 012-2h14a2 2 0 012 2z" stroke={c} strokeWidth="1.6" strokeLinejoin="round"/>
      <path d="M8 9h8M8 12h5" stroke={c} strokeWidth="1.4" strokeLinecap="round"/>
    </svg>
  ),
};

window.ECIcon = ECIcon;
