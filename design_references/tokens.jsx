// EngCat — Design tokens
// Premium, refined, dark-mode-first aesthetic for B1-B2 English learners.
// Tone: 공손한 존댓말. No mascot.

const ECTokens = {
  // ── Palette (oklch-based dark theme) ─────────────────────────
  // Background scale — warm-cool neutral with very low saturation
  bg0:    '#0B0B0E',           // deepest (outside cards)
  bg1:    '#131318',           // app background
  bg2:    '#1A1A21',           // card surface
  bg3:    '#22222B',           // raised surface
  bg4:    '#2C2C37',           // hover / pressed

  // Text
  text:   '#F4F1EB',           // primary (warm off-white)
  textDim:'rgba(244,241,235,0.62)',
  textMute:'rgba(244,241,235,0.38)',
  textFaint:'rgba(244,241,235,0.18)',

  // Accent — warm amber (single signature color)
  accent:    '#E8B26A',        // primary CTA / streak / highlights
  accentSoft:'rgba(232,178,106,0.14)',
  accentDeep:'#C8904A',

  // Semantic
  good:      '#8CCBA8',         // correct / mastered
  goodSoft:  'rgba(140,203,168,0.14)',
  warn:      '#E89A6A',
  bad:       '#E07A7A',
  badSoft:   'rgba(224,122,122,0.14)',

  // Card art backgrounds — placeholder swatches in muted, premium palette
  art1: '#2D3548',  // dusky indigo
  art2: '#3B3344',  // plum
  art3: '#3A4039',  // moss
  art4: '#43352A',  // cocoa
  art5: '#2D3D3F',  // teal-slate
  art6: '#4A3A48',  // mauve

  // Hairlines
  hair:    'rgba(244,241,235,0.08)',
  hairStr: 'rgba(244,241,235,0.16)',

  // ── Typography ───────────────────────────────────────────────
  // Pretendard for Korean (loaded via CDN), Instrument Serif for English emphasis
  sans:  '"Pretendard Variable", Pretendard, -apple-system, BlinkMacSystemFont, "Apple SD Gothic Neo", system-ui, sans-serif',
  serif: '"Instrument Serif", "Iowan Old Style", "Apple Garamond", Georgia, serif',
  mono:  '"JetBrains Mono", ui-monospace, "SF Mono", Menlo, monospace',

  // ── Spacing & radii ─────────────────────────────────────────
  r:  { sm: 10, md: 14, lg: 20, xl: 28, pill: 999 },
};

// Tiny utility: render a striped placeholder block where real imagery will go.
// Looks intentional, not lazy — uses the bg/art palette and a thin mono caption.
function ECPlaceholder({ label, height = 200, tint = ECTokens.art1, radius = 16, style = {} }) {
  return (
    <div style={{
      height, borderRadius: radius, position: 'relative', overflow: 'hidden',
      background: `linear-gradient(135deg, ${tint} 0%, ${tint}cc 100%)`,
      ...style,
    }}>
      {/* subtle stripes */}
      <div style={{
        position: 'absolute', inset: 0,
        backgroundImage: `repeating-linear-gradient(135deg, rgba(255,255,255,0.025) 0 14px, transparent 14px 28px)`,
      }} />
      {/* hairline border */}
      <div style={{
        position: 'absolute', inset: 0, borderRadius: radius,
        boxShadow: 'inset 0 0 0 1px rgba(255,255,255,0.05)',
      }} />
      {label && (
        <div style={{
          position: 'absolute', bottom: 10, left: 12,
          fontFamily: ECTokens.mono, fontSize: 9, letterSpacing: 0.4,
          color: 'rgba(255,255,255,0.45)', textTransform: 'uppercase',
        }}>{label}</div>
      )}
    </div>
  );
}

// Status bar — minimal, white glyphs for dark UI
function ECStatusBar({ time = '9:41' }) {
  if (window.ECRealDevice) {
    return <div style={{ height: 'env(safe-area-inset-top, 44px)' }} />;
  }
  return (
    <div style={{
      height: 54, paddingTop: 18, paddingLeft: 30, paddingRight: 30,
      display: 'flex', justifyContent: 'space-between', alignItems: 'center',
      color: ECTokens.text, fontFamily: '-apple-system, system-ui',
      fontSize: 16, fontWeight: 600, position: 'relative', zIndex: 5,
    }}>
      <span>{time}</span>
      <div style={{ display: 'flex', gap: 6, alignItems: 'center' }}>
        <svg width="18" height="11" viewBox="0 0 18 11"><rect x="0" y="7" width="3" height="4" rx="0.5" fill={ECTokens.text}/><rect x="4.5" y="5" width="3" height="6" rx="0.5" fill={ECTokens.text}/><rect x="9" y="2.5" width="3" height="8.5" rx="0.5" fill={ECTokens.text}/><rect x="13.5" y="0" width="3" height="11" rx="0.5" fill={ECTokens.text}/></svg>
        <svg width="16" height="11" viewBox="0 0 16 11"><path d="M8 3C10.2 3 12.2 3.8 13.6 5.2L14.6 4.2C12.9 2.5 10.6 1.4 8 1.4C5.4 1.4 3.1 2.5 1.4 4.2L2.4 5.2C3.8 3.8 5.8 3 8 3Z M8 6.4C9.3 6.4 10.5 6.9 11.4 7.8L12.4 6.8C11.2 5.6 9.7 4.9 8 4.9C6.3 4.9 4.8 5.6 3.6 6.8L4.6 7.8C5.5 6.9 6.7 6.4 8 6.4Z" fill={ECTokens.text}/><circle cx="8" cy="10" r="1.4" fill={ECTokens.text}/></svg>
        <svg width="26" height="12" viewBox="0 0 26 12"><rect x="0.5" y="0.5" width="22" height="11" rx="3" stroke={ECTokens.text} strokeOpacity="0.4" fill="none"/><rect x="2" y="2" width="15" height="8" rx="1.5" fill={ECTokens.text}/><path d="M24 4v4c.7-.2 1.3-1 1.3-2s-.6-1.8-1.3-2z" fill={ECTokens.text} fillOpacity="0.5"/></svg>
      </div>
    </div>
  );
}

// Home indicator
function ECHomeIndicator() {
  return (
    <div style={{
      position: 'absolute', bottom: 8, left: 0, right: 0, height: 5,
      display: 'flex', justifyContent: 'center', pointerEvents: 'none', zIndex: 100,
    }}>
      <div style={{ width: 134, height: 5, borderRadius: 100, background: 'rgba(255,255,255,0.55)' }} />
    </div>
  );
}

// Dynamic island
function ECIsland() {
  return (
    <div style={{
      position: 'absolute', top: 11, left: '50%', transform: 'translateX(-50%)',
      width: 122, height: 36, borderRadius: 22, background: '#000', zIndex: 60,
    }} />
  );
}

// Phone shell — uses our colors, no iOSDevice frame (we want full control of background)
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

Object.assign(window, { ECTokens, ECPlaceholder, ECStatusBar, ECHomeIndicator, ECIsland, ECPhone });
