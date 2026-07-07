---
name: OrgChart Editor
description: Free, open-source drag-and-drop org chart editor with cloud autosave and shareable links
colors:
  indigo-primary: "#3730a3"
  indigo-hover: "#5850c8"
  indigo-tint: "#6366f1"
  danger: "#dc2626"
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
  md: "14px"
  lg: "16px"
  xl: "20px"
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
- **Danger** (`#dc2626`): destructive actions only (delete buttons, error text). Fixed across light/dark; never used decoratively.

### Named Rules
**The One Accent Rule.** Indigo appears on primary actions, selection, and brand marks only. If a screen has more than one saturated color competing for attention, one of them is wrong.

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
- **Shape:** 8px radius standard (`rounded.sm`); marketing/hero CTAs on index.html use 11px.
- **Primary:** indigo background (`#3730a3`), white text, `padding: 11px 22px`, weight 600, 1px transparent border. Hover: background steps to `#5850c8`; on marketing surfaces only, add `translateY(-1px)` and shadow `0 8px 24px rgba(55,48,163,.25)` — app chrome (editor/dashboard) skips the lift, just the color step.
- **Secondary:** surface-white background, ink-1 text, `border: 1px solid` border-2. Hover: background steps to surface-tint.
- **Danger (ghost):** transparent background, danger-red text, danger-tinted border. Hover: `background: rgba(220,38,38,.08)`.
- **Active/toggled** (editor toolbar): amber-tinted fill (`#fef3c7` bg, `#f59e0b` border, `#92400e` text) — a deliberate exception to the one-accent rule because it signals tool state, not brand.
- **Transitions:** `all .15s` (marketing) or `background .12s, border-color .12s` (dense app chrome) — plain ease, no bounce.

### Cards / Containers
- **Corner Style:** 14px radius (`rounded.md`) for diagram cards and chart nodes; 16px (`rounded.lg`) for feature blocks and modals.
- **Background:** surface-white at rest.
- **Shadow Strategy:** none at rest for list/gallery cards (border-only); Ambient shadow (`--sh`) for chart nodes at rest; Card Hover shadow + 2px lift on hover for gallery cards.
- **Border:** 1px `border-1` at rest, stepping to `border-2` on hover.
- **Internal Padding:** `13px 15px 14px` (gallery cards), `24px` (feature blocks).

### Inputs / Fields
- **Style:** surface-tint background, `border: 1px solid border-1`, 8px radius, `padding: 7px 9px`.
- **Focus:** border steps to indigo (`--accent`) plus a soft `box-shadow: 0 0 0 3px rgba(59,130,246,.1)` glow. Modal inputs skip the glow and use only the border-color step to indigo-hover.
- **Chart title field** (borderless-by-default pattern): transparent border at rest, border-2 on hover, indigo border on focus — used specifically for inline-editable titles, not general text inputs.

### Navigation
- Sticky top bar with subtle blur backdrop; nav links use Label-scale typography; active/hover states step background to surface-tint. Mobile collapses into a bottom sheet (`20px 20px 0 0` radius, slides up `.32s cubic-bezier(.4,0,.2,1)`) rather than a hamburger dropdown.

### Modals / Toasts / Dropdowns
- **Modal overlay:** `rgba(0,0,0,.45)` scrim, centered flex.
- **Modal:** 16px radius, `border-2` outline, Modal shadow, no entrance bounce.
- **Dropdown:** 18px radius, opens with `opacity .2s, transform .22s cubic-bezier(.34,1.2,.64,1)` from `scale(.96) translateX(-6px)` — the one place a slight overshoot easing is allowed, since it reads as a menu "popping" into place rather than a content reveal.
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
- **Don't** add bounce/elastic easing to anything except the dropdown-open transition; every other transition uses plain ease or `cubic-bezier(.4,0,.2,1)`.
- **Don't** introduce a second typeface family for "variety" — vary weight and size within Geist instead.
