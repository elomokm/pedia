# BRAND.md — Pedia slide palette

> Colors lifted straight from `Pedia.html`. Two families: **green** (parent side) and **blue** (physician side). Same neutrals across both. Use these exact hex values in Google Slides so the deck matches the screenshots.

---

## 🌿 Green — parent side

| Role | Name | Hex | When |
|---|---|---|---|
| Primary | Mint-deep | **`#6FB58A`** | parent-facing accents, "free forever" pill, the Pedia mark on parent slides |
| Soft | Mint | **`#A8D5BA`** | background wash, soft blobs, non-emphasis chips |
| Tint | Mint-bg | **`#E8F3EC`** | cards, input backgrounds, subtle fills |

## 🔷 Blue — physician side

| Role | Name | Hex | When |
|---|---|---|---|
| Primary | Med-blue | **`#1E3A8A`** | physician-facing accents, primary CTA, headline numbers on business slide |
| Accent | Med-accent | **`#3B82F6`** | links, active states, sparkline highlights |
| Tint | Med-blue-soft | **`#DBE5F7`** | card backgrounds, tag fills, breadcrumb highlights |

## ⚫ Neutrals (both sides)

| Role | Name | Hex | When |
|---|---|---|---|
| Ink strong | Med-ink | **`#0F172A`** | headlines, key numbers on white backgrounds |
| Ink medium | Med-ink-soft | **`#475569`** | body copy |
| Ink faint | Med-ink-faint | **`#94A3B8`** | source tags, small captions, timestamps |
| Border | Med-border | **`#E2E8F0`** | card borders, dividers |
| Card | White | **`#FFFFFF`** | card / slide background |
| Page | Med-bg | **`#F7F9FC`** | off-white canvas alternative to pure white |

## 🎨 Warm background (optional)

Used only on parent-journey slides if you want the warm feel from the HTML landing:

| Role | Hex |
|---|---|
| Ivory page | **`#FBF8F3`** |
| Cream wash | **`#F5EFE6`** |
| Warm ink | **`#2D3B36`** |

---

## Slide-by-slide assignment

| Slide | Dominant | Accent | Why |
|---|---|---|---|
| **1 — Hook (problem)** | black (`#0F172A`) | green `#6FB58A` on the word "Pedia" | problem statement is heavy; end-beat lands on parent-side green |
| **2 — Anamnesis comparison** | left column warm/neutral · right column **med-blue `#1E3A8A`** frame | mint `#A8D5BA` for "what parents captured" inset | visually encodes the transition: scribble (warm) → clinical report (blue) |
| **3 — Product (POC)** | white · medium gray neutrals | green for parent capture screenshot · blue for physician dashboard screenshot | mirrors the Pedia.html screenshots exactly |
| **4 — Business + ask + close** | **med-blue `#1E3A8A`** headlines + figures | green `#6FB58A` on the "Parents always free" line and the cascade close | business is blue (institutional), the emotional close returns to green (parents / children) |

---

## Typography pairing

Matches the HTML mock:

- **Display / numbers** — serif display or humanist sans at large size. In Google Slides: *Playfair Display* or *Source Serif 4*, weight 500–600.
- **Body / captions** — *Inter* (or system sans), weight 400–500.
- **Mono / source tags** — *JetBrains Mono* or *IBM Plex Mono*, 10–11 pt, `#94A3B8`.

## Accessibility sanity

All foreground / background pairs listed are WCAG AA compliant for body text (4.5:1) except:

- `#6FB58A` green on white → contrast 2.5:1 — **only use for large text / display, never body copy**.
- `#3B82F6` blue on white → contrast 3.7:1 — **only for links and large text**, not body copy.

For any small body text, use `#0F172A` or `#475569` on white or `#F7F9FC`.

---

## Copy-paste Google Slides hex list

```
#6FB58A   green primary
#A8D5BA   green soft
#E8F3EC   green tint

#1E3A8A   blue primary
#3B82F6   blue accent
#DBE5F7   blue tint

#0F172A   ink strong
#475569   ink medium
#94A3B8   ink faint
#E2E8F0   border
#FFFFFF   card
#F7F9FC   page

#FBF8F3   ivory (optional warm)
#F5EFE6   cream (optional warm)
#2D3B36   warm ink (optional warm)
```

Load these as theme colors in Google Slides once, then reuse across the whole deck.
