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
};

window.ECIcon = ECIcon;
