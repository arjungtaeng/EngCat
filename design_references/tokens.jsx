// EngCat — Design tokens
// Premium, refined, dark-mode-first aesthetic for B1-B2 English learners.

const ECDark = {
  bg0:    '#08080C',
  bg1:    '#0D0D11',
  bg2:    '#161619',
  bg3:    '#1E1E26',
  bg4:    '#27272F',
  text:   '#F8F5EF',
  textDim:'rgba(248,245,239,0.70)',
  textMute:'rgba(248,245,239,0.50)',
  textFaint:'rgba(248,245,239,0.22)',
  accent:    '#F59E0B',
  accentSoft:'rgba(245,158,11,0.15)',
  accentDeep:'#D97706',
  good:      '#8CCBA8',
  goodSoft:  'rgba(140,203,168,0.14)',
  warn:      '#E89A6A',
  bad:       '#E07A7A',
  badSoft:   'rgba(224,122,122,0.14)',
  art1: '#2D3548', art2: '#3B3344', art3: '#3A4039',
  art4: '#43352A', art5: '#2D3D3F', art6: '#4A3A48',
  hair:    'rgba(244,241,235,0.08)',
  hairStr: 'rgba(244,241,235,0.16)',
};

const ECLight = {
  bg0:    '#EAE5DC',
  bg1:    '#F8F4ED',
  bg2:    '#FFFDF8',
  bg3:    '#F0EBE1',
  bg4:    '#E6DFD4',
  text:   '#1C1610',
  textDim:'rgba(28,22,16,0.65)',
  textMute:'rgba(28,22,16,0.45)',
  textFaint:'rgba(28,22,16,0.20)',
  accent:    '#E08A00',
  accentSoft:'rgba(224,138,0,0.14)',
  accentDeep:'#B86800',
  good:      '#28885C',
  goodSoft:  'rgba(40,136,92,0.13)',
  warn:      '#C87830',
  bad:       '#C83838',
  badSoft:   'rgba(200,56,56,0.13)',
  art1: '#B8CCDF', art2: '#D2BEDD', art3: '#B4D0BA',
  art4: '#DBBEA8', art5: '#B0CBCF', art6: '#D4BAC8',
  hair:    'rgba(28,22,16,0.09)',
  hairStr: 'rgba(28,22,16,0.18)',
};

// Shared (typography / spacing — theme-independent)
const ECShared = {
  sans:    '"Pretendard Variable", Pretendard, -apple-system, BlinkMacSystemFont, "Apple SD Gothic Neo", system-ui, sans-serif',
  serif:   '"Instrument Serif", "Iowan Old Style", "Apple Garamond", Georgia, serif',
  display: '"Outfit", system-ui, sans-serif',
  thin:    '"Raleway", system-ui, sans-serif',
  mono:    '"JetBrains Mono", ui-monospace, "SF Mono", Menlo, monospace',
  r:  { sm: 10, md: 14, lg: 20, xl: 28, pill: 999 },
};

window.ECTokens = Object.assign({}, ECDark, ECShared);

window.ECApplyTheme = function(mode) {
  const src = mode === 'light' ? ECLight : ECDark;
  Object.assign(window.ECTokens, src);
  document.body.style.background = window.ECTokens.bg1;
};

// ── Shared components ──────────────────────────────────────────────────────

function ECPlaceholder({ label, height = 200, tint = ECTokens.art1, radius = 16, style = {} }) {
  const isDark = ECTokens.bg0.startsWith('#08') || ECTokens.bg0.startsWith('#0');
  return (
    <div style={{
      height, borderRadius: radius, position: 'relative', overflow: 'hidden',
      background: `linear-gradient(135deg, ${tint} 0%, ${tint}cc 100%)`,
      ...style,
    }}>
      <div style={{
        position: 'absolute', inset: 0,
        backgroundImage: `repeating-linear-gradient(135deg, ${isDark ? 'rgba(255,255,255,0.025)' : 'rgba(0,0,0,0.04)'} 0 14px, transparent 14px 28px)`,
      }} />
      <div style={{
        position: 'absolute', inset: 0, borderRadius: radius,
        boxShadow: `inset 0 0 0 1px ${isDark ? 'rgba(255,255,255,0.05)' : 'rgba(0,0,0,0.06)'}`,
      }} />
      {label && (
        <div style={{
          position: 'absolute', bottom: 10, left: 12,
          fontFamily: ECTokens.mono, fontSize: 9, letterSpacing: 0.4,
          color: isDark ? 'rgba(255,255,255,0.45)' : 'rgba(0,0,0,0.35)', textTransform: 'uppercase',
        }}>{label}</div>
      )}
    </div>
  );
}

function ECStatusBar({ time = '9:41' }) {
  if (window.ECRealDevice) return null;
  const c = ECTokens.text;
  return (
    <div style={{
      height: 54, paddingTop: 18, paddingLeft: 30, paddingRight: 30,
      display: 'flex', justifyContent: 'space-between', alignItems: 'center',
      color: c, fontFamily: '-apple-system, system-ui',
      fontSize: 16, fontWeight: 600, position: 'relative', zIndex: 5,
    }}>
      <span>{time}</span>
      <div style={{ display: 'flex', gap: 6, alignItems: 'center' }}>
        <svg width="18" height="11" viewBox="0 0 18 11"><rect x="0" y="7" width="3" height="4" rx="0.5" fill={c}/><rect x="4.5" y="5" width="3" height="6" rx="0.5" fill={c}/><rect x="9" y="2.5" width="3" height="8.5" rx="0.5" fill={c}/><rect x="13.5" y="0" width="3" height="11" rx="0.5" fill={c}/></svg>
        <svg width="16" height="11" viewBox="0 0 16 11"><path d="M8 3C10.2 3 12.2 3.8 13.6 5.2L14.6 4.2C12.9 2.5 10.6 1.4 8 1.4C5.4 1.4 3.1 2.5 1.4 4.2L2.4 5.2C3.8 3.8 5.8 3 8 3Z M8 6.4C9.3 6.4 10.5 6.9 11.4 7.8L12.4 6.8C11.2 5.6 9.7 4.9 8 4.9C6.3 4.9 4.8 5.6 3.6 6.8L4.6 7.8C5.5 6.9 6.7 6.4 8 6.4Z" fill={c}/><circle cx="8" cy="10" r="1.4" fill={c}/></svg>
        <svg width="26" height="12" viewBox="0 0 26 12"><rect x="0.5" y="0.5" width="22" height="11" rx="3" stroke={c} strokeOpacity="0.4" fill="none"/><rect x="2" y="2" width="15" height="8" rx="1.5" fill={c}/><path d="M24 4v4c.7-.2 1.3-1 1.3-2s-.6-1.8-1.3-2z" fill={c} fillOpacity="0.5"/></svg>
      </div>
    </div>
  );
}

function ECHomeIndicator() {
  const isDark = ECTokens.bg0.startsWith('#08') || ECTokens.bg0.startsWith('#0');
  return (
    <div style={{
      position: 'absolute', bottom: 8, left: 0, right: 0, height: 5,
      display: 'flex', justifyContent: 'center', pointerEvents: 'none', zIndex: 100,
    }}>
      <div style={{ width: 134, height: 5, borderRadius: 100, background: isDark ? 'rgba(255,255,255,0.55)' : 'rgba(0,0,0,0.30)' }} />
    </div>
  );
}

function ECIsland() {
  return (
    <div style={{
      position: 'absolute', top: 11, left: '50%', transform: 'translateX(-50%)',
      width: 122, height: 36, borderRadius: 22, background: '#000', zIndex: 60,
    }} />
  );
}

function ECPhone({ children, width = 390, height = 844, bg = ECTokens.bg1 }) {
  return (
    <div style={{
      width, height, borderRadius: 50, overflow: 'hidden',
      position: 'relative', background: bg,
      boxShadow: '0 30px 60px rgba(0,0,0,0.4), 0 0 0 1px rgba(255,255,255,0.06), inset 0 0 0 1px rgba(255,255,255,0.04)',
      fontFamily: ECTokens.sans,
      color: ECTokens.text, WebkitFontSmoothing: 'antialiased',
    }}>
      <ECIsland />
      {children}
      <ECHomeIndicator />
    </div>
  );
}

function ECUseHideOnScroll(ref) {
  const [visible, setVisible] = React.useState(true);
  const last = React.useRef(0);
  React.useEffect(() => {
    const el = ref.current;
    if (!el) return;
    const onScroll = () => {
      const cur = el.scrollTop;
      if (cur < 12) setVisible(true);
      else if (cur > last.current + 6) setVisible(false);
      else if (cur < last.current - 6) setVisible(true);
      last.current = cur;
    };
    el.addEventListener('scroll', onScroll, { passive: true });
    return () => el.removeEventListener('scroll', onScroll);
  }, [ref]);
  return visible;
}

Object.assign(window, { ECTokens, ECDark, ECLight, ECApplyTheme, ECPlaceholder, ECStatusBar, ECHomeIndicator, ECIsland, ECPhone, ECUseHideOnScroll });
