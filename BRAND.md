# BRAND.md - Pedia slide palette

> Colors lifted directly from `Pedia.html` (current state on main). Three surfaces: **parent side** (green + cream), **physician side** (blue + clinical neutrals), **dashboard states** (amber + red). Use these exact hex values in Google Slides so the deck matches the mockup.

---

## 🌿 Parent side - green + cream

| Role | CSS var | Hex | When |
|---|---|---|---|
| Accent deep (primary CTA) | `--coral-deep` | **`#4A8F6B`** | "Voir la démo" button, prescribed-flow accents, Pedia mark on parent slides |
| Accent soft | `--coral` | **`#A8D5BA`** | pill backgrounds, soft highlights (same as mint) |
| Mint deep | `--mint-deep` | **`#6FB58A`** | secondary parent accents, status dots, success states |
| Mint | `--mint` | **`#A8D5BA`** | background blobs, chips, non-emphasis fills |
| Mint-bg | `--mint-bg` | **`#E8F3EC`** | cards, input backgrounds, subtle fills |
| Cream | `--cream` | **`#F5EFE6`** | warm wash, voice-capture frame, gradient anchor |
| Cream deep | `--cream-deep` | **`#EADFCB`** | reminder cards, calendar accents |
| Warm ink | `--warm-ink` | **`#2D3B36`** | headlines + body on parent surfaces |
| Warm ink soft | `--warm-ink-soft` | **`#5A6B63`** | secondary parent copy |
| Warm border | (hardcoded) | **`#f0eadd`** / **`#e7e1d5`** | cream-wash borders |
| Ivory page | `--ivory` | **`#FBF8F3`** | landing / parent journal page background |

## 🔷 Physician side - blue + clinical neutrals

| Role | CSS var | Hex | When |
|---|---|---|---|
| Med blue | `--med-blue` | **`#1E3A8A`** | Pedia pro brand, primary CTAs, key headline figures |
| Med accent | `--med-accent` | **`#3B82F6`** | links, active states, chart highlights |
| Med blue soft | `--med-blue-soft` | **`#DBE5F7`** | card chip fills, nav highlights, breadcrumbs |
| Med ink | `--med-ink` | **`#0F172A`** | headlines + body on physician surfaces |
| Med ink soft | `--med-ink-soft` | **`#475569`** | secondary physician copy |
| Med ink faint | `--med-ink-faint` | **`#94A3B8`** | source tags, timestamps, small mono captions |
| Med border | `--med-border` | **`#E2E8F0`** | card borders, dividers |
| Med card | `--med-card` | **`#FFFFFF`** | card / slide background |
| Med bg | `--med-bg` | **`#F7F9FC`** | page canvas (off-white) |
| Med hover | (hardcoded) | **`#F1F5FB`** | row-hover fills in tables |

## 🟡 Dashboard semantic states (amber + red)

Used inside the physician dashboard (`screen-4`) for "pistes à explorer" and signal severity. Keep these **only** for state / status, never as brand accent.

| Role | Hex | When |
|---|---|---|
| Attention deep | **`#B45309`** | numbered badges on non-diagnostic pathways |
| Attention darkest | **`#78350F`** | body on amber cards |
| Attention wash | **`#FEF3C7`** | amber card background |
| Attention border | **`#FDE68A`** | amber card border |
| Alert | **`#B91C1C`** | "corrélation forte" tags, prolonged-episode markers |
| Alert wash | **`#FEE2E2`** | alert tag backgrounds |

---

## Slide-by-slide assignment

| Slide | Dominant | Accent | Why |
|---|---|---|---|
| **1 - Hook (problem)** | black (`#0F172A`) | green `#6FB58A` on the word "Pedia" | problem statement is heavy; end-beat lands on parent-side green |
| **2 - Anamnesis comparison** | left column cream wash (`#F5EFE6`) · right column **med-blue `#1E3A8A`** frame | mint `#A8D5BA` for the "47 parental observations" inset | visually encodes the transition: scribble (warm) → clinical report (blue) |
| **3 - Product (POC)** | white · clinical neutrals | green `#4A8F6B` on parent card · blue `#1E3A8A` on physician card | mirrors `Pedia.html` screenshots exactly (three-card grid) |
| **4 - Business + ask** | **med-blue `#1E3A8A`** headlines + figures | green `#4A8F6B` on the "Parents always free" line and on the €0 parent tile | business is blue (institutional); the green anchors the free-forever tier |
| **5 - Team + close** | ivory `#FBF8F3` page | green `#6FB58A` strip under each portrait | human close on the parent-side palette |

---

## Typography pairing

Taken from `Pedia.html` directly:

- **Display / titles / headline numbers**: **Fraunces** (variable serif, optical sizing on), weight 500 or 600. `font-family: 'Fraunces', serif`.
- **Body / captions / UI**: **Inter**, weight 400 or 500. `font-family: 'Inter', system-ui, sans-serif`.
- **Source tags / mono / small numbers**: **JetBrains Mono**, 10-11 pt, color `#94A3B8`.

In Google Slides: install Fraunces and JetBrains Mono via the font picker. Inter ships by default.

## Accessibility sanity

All foreground / background pairs listed are WCAG AA compliant for body text (4.5:1) except:

- `#6FB58A` mint-deep on white → contrast 2.5:1 → **only for large text / display, never body copy**.
- `#3B82F6` med-accent on white → contrast 3.7:1 → **only for links and large text**, not body.
- `#A8D5BA` mint on white → contrast 1.8:1 → **decorative fills only**, never text.
- `#4A8F6B` forest green on white → contrast 4.6:1 → **safe for body text**.
- `#1E3A8A` med-blue on white → contrast 10.9:1 → **safe for everything**.
- `#2D3B36` warm-ink on `#FBF8F3` ivory → contrast 12.1:1 → **safe for everything**.

For any small body text on cream / ivory backgrounds, use `#2D3B36` or `#5A6B63`. On white / `#F7F9FC`, use `#0F172A` or `#475569`.

---

## Copy-paste Google Slides hex list

```
# Parent (green + cream)
#4A8F6B   forest green (parent CTA, primary accent)
#6FB58A   mint-deep (status, success)
#A8D5BA   mint (soft accent, chips)
#E8F3EC   mint-bg (pale wash)
#F5EFE6   cream (warm wash)
#EADFCB   cream-deep
#FBF8F3   ivory (parent page bg)
#2D3B36   warm-ink (headlines on parent)
#5A6B63   warm-ink-soft (secondary on parent)

# Physician (blue + clinical neutrals)
#1E3A8A   med-blue (primary physician accent)
#3B82F6   med-accent (links, highlights)
#DBE5F7   med-blue-soft (chip fills)
#0F172A   med-ink (headlines on physician)
#475569   med-ink-soft (secondary on physician)
#94A3B8   med-ink-faint (source tags, timestamps)
#E2E8F0   med-border (dividers)
#FFFFFF   med-card (slide bg)
#F7F9FC   med-bg (page canvas)
#F1F5FB   med-hover

# Dashboard semantic states
#B45309   attention deep
#78350F   attention darkest
#FEF3C7   attention wash
#FDE68A   attention border
#B91C1C   alert
#FEE2E2   alert wash
```

Load these once as theme colors in Google Slides, then reuse across the whole deck.
