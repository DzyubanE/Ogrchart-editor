---
name: OrgChart Editor
description: Free, open-source drag-and-drop org chart editor with cloud autosave and shareable links
colors:
  indigo-primary: "#3730a3"
  indigo-hover: "#5850c8"
  indigo-tint: "#6366f1"
  indigo-tint-text-dark: "#a5b4fc"
  danger: "#dc2626"
  danger-hover: "#b91c1c"
  success-text: "#15803d"
  success-text-dark: "#4ade80"
  success-indicator: "#22c55e"
  neutral-bg: "#f0efeb"
  neutral-surface: "#ffffff"
  neutral-surface-2: "#f5f4f1"
  ink-1: "#111111"
  ink-2: "#555555"
  ink-3: "#999999"
  border-1: "rgba(0,0,0,0.07)"
  border-2: "rgba(0,0,0,0.13)"
  neutral-bg-dark: "#1d2125"
  neutral-surface-dark: "#252a2f"
  neutral-surface-2-dark: "#2c3138"
  ink-1-dark: "#e6e4de"
  ink-2-dark: "#9a9790"
  ink-3-dark: "#5a5855"
typography:
  display:
    fontFamily: "Geist, system-ui, sans-serif"
    fontSize: "clamp(2.375rem, 6vw, 3.75rem)"
    fontWeight: 800
    lineHeight: 1.05
    letterSpacing: "-0.035em"
  headline:
    fontFamily: "Geist, system-ui, sans-serif"
    fontSize: "2rem"
    fontWeight: 700
    lineHeight: 1.15
    letterSpacing: "-0.025em"
  title:
    fontFamily: "Geist, system-ui, sans-serif"
    fontSize: "1.25rem"
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: "-0.02em"
  body:
    fontFamily: "Geist, system-ui, sans-serif"
    fontSize: "0.875rem"
    fontWeight: 400
    lineHeight: 1.55
    letterSpacing: "normal"
  label:
    fontFamily: "Geist, system-ui, sans-serif"
    fontSize: "0.75rem"
    fontWeight: 600
    lineHeight: 1.3
    letterSpacing: "0.05em"
  mono:
    fontFamily: "Geist Mono, ui-monospace, monospace"
    fontSize: "0.8125rem"
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: "normal"
rounded:
  xs: "6px"
  sm: "8px"
  btn-marketing: "11px"
  chip: "9px"
  icon-tile: "10px"
  row: "12px"
  md: "14px"
  lg: "16px"
  frame: "18px"
  xl: "20px"
  cta-box: "24px"
  pill: "50%"
spacing:
  xs: "4px"
  sm: "8px"
  md: "16px"
  lg: "24px"
  xl: "40px"
  xxl: "80px"
components:
  button-primary:
    backgroundColor: "{colors.indigo-primary}"
    textColor: "#ffffff"
    rounded: "{rounded.sm}"
    padding: "11px 22px"
  button-primary-hover:
    backgroundColor: "{colors.indigo-hover}"
    textColor: "#ffffff"
    rounded: "{rounded.sm}"
    padding: "11px 22px"
  button-secondary:
    backgroundColor: "{colors.neutral-surface}"
    textColor: "{colors.ink-1}"
    rounded: "{rounded.sm}"
    padding: "11px 22px"
  button-danger:
    backgroundColor: "transparent"
    textColor: "{colors.danger}"
    rounded: "{rounded.sm}"
    padding: "5px 11px"
  card-diagram:
    backgroundColor: "{colors.neutral-surface}"
    rounded: "{rounded.md}"
    padding: "13px 15px 14px"
  input-field:
    backgroundColor: "{colors.neutral-surface-2}"
    textColor: "{colors.ink-1}"
    rounded: "{rounded.sm}"
    padding: "7px 9px"
---

# Design System: OrgChart Editor

## 1. Overview

**Creative North Star: "The Clean Whiteboard"**

OrgChart Editor exists so a manager can build something they'll put in front of leadership without worrying whether the tool made them look unpolished. The metaphor is a whiteboard in a well-lit room: a quiet, neutral surface where the one thing that matters — the chart itself — gets all the attention. Indigo (`#3730a3`) is the single confident marker color, used sparingly and always on purpose (a primary action, a selected node, a brand mark). Everything else stays out of the way: warm-neutral surfaces, restrained shadows, no competing saturated colors.

This system explicitly rejects generic SaaS visual language: gradient-text heroes, cream/sand near-white backgrounds pretending to be "warm," hero-metric templates, tiny uppercase eyebrows above every section, and numbered section markers used as decoration rather than a real sequence. It also rejects the temptation to let the editor's UI chrome compete with the canvas — the chart is the product, the chrome is furniture.

**Key Characteristics:**
- One accent color (indigo), used deliberately and rarely
- Warm-neutral surfaces (`#f0efeb` family), never generic cream/sand-as-default
- Soft, shallow shadows for lift — never heavy or dark-mode-2014
- Geist throughout: confident but not shouty typography
- Full light/dark parity on every surface

## 2. Colors

The palette is restrained: one saturated accent carrying identity, warm-tinted neutrals doing the rest of the work, and a single semantic danger color for destructive actions.

### Primary
- **Indigo** (`#3730a3`): the brand mark, primary buttons, active/selected states, focus rings, links. This is the only saturated color allowed to dominate any surface. On hover it steps up to **Indigo Hover** (`#5850c8`); a lighter **Indigo Tint** (`#6366f1`) is reserved for illustration accents and the marketing gradient in the hero (index.html only — not for use in app chrome).

### Neutral
- **Warm Paper** (`#f0efeb` / dark `#1d2125`): base app background. This is the canonical body background across the whole product — not `#fafaf7`, see the Unification Rule below.
- **Surface White** (`#ffffff` / dark `#252a2f`): cards, modals, panels, inputs-on-surface.
- **Surface Tint** (`#f5f4f1` / dark `#2c3138`): secondary surface for nested panels, input backgrounds, hover fills.
- **Ink 1** (`#111111` / dark `#e6e4de`): primary text.
- **Ink 2** (`#555555` / dark `#9a9790`): secondary/supporting text, descriptions.
- **Ink 3** (`#999999` / dark `#5a5855`): tertiary text, placeholders, disabled labels.
- **Border 1** (`rgba(0,0,0,.07)` / dark `rgba(255,255,255,.07)`): default hairline borders (cards, dividers).
- **Border 2** (`rgba(0,0,0,.13)` / dark `rgba(255,255,255,.13)`): emphasis borders (hover states, active inputs).

### Semantic
- **Danger** (`#dc2626`, hover `#b91c1c`): destructive actions only (delete buttons, error text, destructive-confirm dialogs). Fixed across light/dark; never used decoratively.
- **Success Indicator** (`#22c55e`): non-text positive/live signals only — the "free & open source" pulse dot, the valid-connection-target ring in the editor. Fixed across light/dark.
- **Success Text** (`#15803d` / dark `#4ade80`): text that communicates a successful state (e.g. the editor's "Сохранено"/Saved status label). A darker/lighter pairing than the indicator green is required here — the indicator's `#22c55e` fails WCAG AA (≈3.3:1) as body text on a light surface.

### Out of scope for this palette
Three deliberate exceptions are not drift and are not expected to appear in the tokens above: (1) the editor's node-color and connector-line-color swatch pickers (`COLORS`/`LINE_COLORS` arrays in editor.html) — a wide, saturated palette is the point, since users pick their own chart colors; (2) the exported/embedded chart's standalone `<style>` block — it ships inside the user's own document and intentionally doesn't inherit the app's brand tokens; (3) the code-export modal's syntax-highlight color on its near-black background — a self-contained "terminal" treatment, not part of app chrome.

### Named Rules
**The One Accent Rule.** Indigo appears on primary actions, selection, and brand marks only. If a screen has more than one saturated color competing for attention, one of them is wrong.

**The Dark-Text Contrast Rule.** Indigo (`#3730a3`) and Indigo Hover (`#5850c8`) are both too dark to use as *text* on the dark-mode background (~1.6:1 and ~2.6:1 against `#1d2125` — both fail WCAG AA). When brand color is needed for text in dark mode (not backgrounds, borders, or rings), use Indigo Tint `#6366f1` for large text (≥18px or bold ≥14px, clears 3:1) or `#a5b4fc` for small text (clears 4.5:1+). Never assume a token that works on a light surface also works as dark-mode text without checking contrast.

**The Unification Rule.** The product has exactly one background family (`#f0efeb` warm neutral) and one accent (`#3730a3` indigo). index.html's warmer `#fafaf7` background and editor.html's blue `#3b82f6` accent are drift from an earlier iteration, not intentional variation — bring both back to the canonical values (see Do's and Don'ts).

## 3. Typography

**Display/Body Font:** Geist (with `system-ui, sans-serif` fallback)
**Mono Font:** Geist Mono (with `ui-monospace, monospace` fallback), for exported/embed code output only

**Character:** Geist is confident without being loud — a single family carries the whole hierarchy through weight and size rather than font-pairing tricks, which keeps the "whiteboard" feeling calm and unified.

### Hierarchy
- **Display** (800, `clamp(2.375rem, 6vw, 3.75rem)`, line-height 1.05, letter-spacing -0.035em): marketing hero headline only (index.html).
- **Headline** (700, 2rem, line-height 1.15, letter-spacing -0.025em): section titles, page titles.
- **Title** (700, 1.25rem, line-height 1.2, letter-spacing -0.02em): card titles, modal titles, panel headers.
- **Body** (400, 0.875rem, line-height 1.55): descriptions, form labels' companion text, general prose. Cap prose blocks at 65–75ch.
- **Label** (600, 0.75rem, letter-spacing 0.05em, often uppercase): metadata, tags, small buttons, form field labels.

### Named Rules
**The Single-Family Rule.** Never introduce a second typeface family. Every hierarchy level is Geist at a different weight/size — that discipline is what keeps dense editor UI from feeling assembled from parts.

## 4. Elevation

The system is mostly flat with shallow, ambient shadows used only to lift interactive surfaces off the base (cards on hover, modals, dropdowns) — never as decoration on static content. Shadows widen and soften on hover rather than darken, signaling "this moved toward you," not "this got heavier."

### Shadow Vocabulary
- **Ambient** (`--sh`: `0 1px 3px rgba(0,0,0,.05), 0 4px 16px rgba(0,0,0,.07)`): default resting elevation for cards, org-chart nodes.
- **Ambient Elevated** (`--sh2`: `0 2px 8px rgba(0,0,0,.1), 0 12px 32px rgba(0,0,0,.14)`): hover/active state for nodes and cards that need to read as "lifted."
- **Card Hover**: `0 4px 24px rgba(0,0,0,.1)` combined with `transform: translateY(-2px)`.
- **Modal**: `0 16px 60px rgba(0,0,0,.18)`.
- **Dropdown**: `0 8px 40px rgba(0,0,0,.14)`.
- **Preview Frame** (marketing hero mockup only): `0 20px 80px rgba(0,0,0,.15), 0 0 0 1px rgba(0,0,0,.04)`.
- **Focus Ring** (default blue-tinted, not indigo): `0 0 0 3px rgba(59,130,246,.15)`; multi-select uses amber `rgba(245,158,11,.18)`; valid connection target uses green `rgba(34,197,94,.2)`. These are functional editor signals, not brand color — don't recolor them to indigo.

### Named Rules
**The Ambient-Not-Heavy Rule.** Shadow opacity never exceeds ~0.2 alpha in light mode. If a shadow reads as a hard drop-shadow rather than soft depth, the blur radius is too small or the alpha too high.

## 5. Components

### Buttons
- **Shape:** 8px radius standard (`rounded.sm`) for dense app chrome; marketing/hero CTAs on index.html use 11px (`rounded.btn-marketing`) — a deliberately softer shape matching the brand register's larger touch targets.
- **Primary:** indigo background (`#3730a3`), white text, `padding: 11px 22px`, weight 600, 1px transparent border. Hover: background steps to `#5850c8`; on marketing surfaces only, add `translateY(-1px)` and shadow `0 8px 24px rgba(55,48,163,.25)` — app chrome (editor/dashboard) skips the lift, just the color step.
- **Secondary:** surface-white background, ink-1 text, `border: 1px solid` border-2. Hover: background steps to surface-tint.
- **Danger (ghost):** transparent background, danger-red text, danger-tinted border. Hover: `background: rgba(220,38,38,.08)`. Used for toolbar/inline destructive actions.
- **Danger (filled):** solid danger-red background, white text — same shape/padding as Primary. Hover steps to `#b91c1c`. Used specifically as the confirm action inside a destructive-confirmation modal (e.g. "Delete this chart?"), where it needs to read as the single emphasized action, not a quiet ghost button.
- **Active/toggled** (editor toolbar): amber-tinted fill (`#fef3c7` bg, `#f59e0b` border, `#92400e` text) — a deliberate exception to the one-accent rule because it signals tool state, not brand.
- **Transitions:** `all .15s` (marketing) or `background .12s, border-color .12s` (dense app chrome) — plain ease, no bounce.

### Cards / Containers
- **Corner Style:** 14px radius (`rounded.md`) for diagram cards and chart nodes; 16px (`rounded.lg`) for feature blocks and modals; 18px (`rounded.frame`) for the marketing hero's browser-chrome preview frame and dropdown menus; 24px (`rounded.cta-box`) for the marketing CTA box — a deliberately larger radius that marks it as the page's single highest-emphasis container.
- **Background:** surface-white at rest.
- **Shadow Strategy:** none at rest for list/gallery cards (border-only); Ambient shadow (`--sh`) for chart nodes at rest; Card Hover shadow + 2px lift on hover for gallery cards.
- **Border:** 1px `border-1` at rest, stepping to `border-2` on hover.
- **Internal Padding:** `13px 15px 14px` (gallery cards), `24px` (feature blocks).
- **Icon tiles** (feature icons, contact-popup channel icons): 10px radius (`rounded.icon-tile`), typically 32–40px square.
- **Chips / small badges** (pills, avatar frames, small action icons): 9px radius (`rounded.chip`).
- **Compact list rows** (contact-popup channel rows, dense list items): 12px radius (`rounded.row`). The hero preview frame also steps down to this radius on mobile (from `rounded.frame`'s 18px) as the frame itself narrows.

### Inputs / Fields
- **Style:** surface-tint background, `border: 1px solid border-1`, 8px radius, `padding: 7px 9px`.
- **Focus:** border steps to indigo (`--accent`) plus a soft `box-shadow: 0 0 0 3px rgba(59,130,246,.1)` glow. Modal inputs skip the glow and use only the border-color step to indigo-hover.
- **Chart title field** (borderless-by-default pattern): transparent border at rest, border-2 on hover, indigo border on focus — used specifically for inline-editable titles, not general text inputs.

### Navigation
- Sticky top bar with subtle blur backdrop; nav links use Label-scale typography; active/hover states step background to surface-tint. Mobile collapses into a bottom sheet (`20px 20px 0 0` radius, slides up `.32s cubic-bezier(.4,0,.2,1)`) rather than a hamburger dropdown.

### Modals / Toasts / Dropdowns
- **Modal overlay:** `rgba(0,0,0,.45)` scrim, centered flex.
- **Modal:** 16px radius, `border-2` outline, Modal shadow, no entrance bounce.
- **Dropdown:** 18px radius, opens with `opacity .2s, transform .22s cubic-bezier(.16,1,.3,1)` (ease-out-expo) from `scale(.96) translateX(-6px)`.
- **Toast:** 10px radius, ink-1-colored background with inverted text, fades in/out over `.2s`, no slide.

## 6. Do's and Don'ts

### Do:
- **Do** use indigo (`#3730a3`) as the only saturated brand accent, and use it sparingly — primary actions, selection states, brand marks.
- **Do** keep the base background at `#f0efeb` (light) / `#1d2125` (dark) across every surface — dashboard, editor, view, and index should all agree.
- **Do** use soft, shallow shadows (`--sh` / `--sh2`) for lift; widen and soften on hover rather than darken.
- **Do** use Geist at varying weight/size for the entire type hierarchy; never introduce a second family.
- **Do** respect `prefers-reduced-motion` on any new animation; the existing modal/dropdown/toast transitions already degrade gracefully and new ones should match that bar.
- **Do** keep amber (tool-active state) and blue/amber/green (focus/multi-select/connect-target rings) as the only sanctioned exceptions to the one-accent rule — they're functional signals, not decoration.

### Don't:
- **Don't** use `#fafaf7` as a background anywhere outside legacy marketing copy — it's drift from the canonical `#f0efeb`, not a deliberate warmer variant. Migrate index.html to `#f0efeb` when next touched.
- **Don't** use editor.html's blue `#3b82f6` as the primary accent — it's drift from the canonical indigo `#3730a3`. Migrate editor chrome's accent back to indigo when next touched (functional blue focus-rings on inputs/selection are a separate, sanctioned exception — see Elevation).
- **Don't** use gradient-text headlines, cream/sand-as-default backgrounds, hero-metric templates, uppercase eyebrows above every section, or numbered section markers as decorative scaffolding — all rejected per PRODUCT.md's anti-references.
- **Don't** use `border-left`/`border-right` as a colored accent stripe on cards or list items.
- **Don't** let shadow alpha exceed ~0.2 in light mode, or let a shadow read as a hard 2014-era drop-shadow.
- **Don't** use bounce/elastic easing (e.g. `cubic-bezier(.34,1.3,.64,1)`) anywhere. Every transition uses plain ease, `cubic-bezier(.4,0,.2,1)` (ease-in-out), or `cubic-bezier(.16,1,.3,1)` (ease-out-expo) for a "pop into place" feel without overshoot.
- **Don't** introduce a second typeface family for "variety" — vary weight and size within Geist instead.
- **Don't** use the browser's native `confirm()`/`alert()` for destructive actions — use the app's own modal component (see Danger filled button) so the confirmation matches the rest of the UI.
- **Don't** assume a CDN-loaded script (Supabase JS) always loads. Guard `window.supabase` before calling it, and show a real error state with a recovery action (see auth-screen's load-error variant) instead of leaving the page blank.
