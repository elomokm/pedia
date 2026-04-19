# canva-prompts.md

Per-slide briefs for building the pitch deck in Canva. Each block is self-contained: copy-paste into Canva Magic Design or hand to a teammate designing that slide. All graphic constraints are baked in so the five slides ship consistent.

---

## Global graphic constraints (apply to every slide)

**Brand colors** (from `BRAND.md`, post green-swap):

| Role | Hex |
|---|---|
| Green primary (parent, CTA, accents) | `#4D9F7D` |
| Green mid (soft accents, chips) | `#6FB58A` |
| Green soft (backgrounds, blobs) | `#8BC9A5` |
| Green tint (pale wash) | `#E8F1EA` |
| Blue primary (physician, headlines) | `#1E3A8A` |
| Blue accent (links, sparklines) | `#3B82F6` |
| Blue tint (physician cards) | `#DBE5F7` |
| Ink strong (body) | `#0F172A` |
| Ink medium (secondary body) | `#475569` |
| Ink faint (source tags, captions) | `#94A3B8` |
| Border | `#E2E8F0` |
| Page background (neutral) | `#F7F9FC` |
| Pastel green page (warm alt) | `#F4F9F5` |

**Typography**:
- Display / headlines / numbers: **Fraunces** (serif), weight 500 or 600, optical sizing on.
- Body / captions: **Inter**, weight 400 or 500.
- Source tags, timestamps, small mono: **JetBrains Mono**, 10 to 11 pt, color `#94A3B8`.

**Aspect ratio**: 16:9, 1920 x 1080.

**Do not**:
- Use em dashes (use hyphens, colons, or parentheses).
- Use the color orange anywhere. The palette is green + blue + neutrals only.
- Use stock illustrations of smiling doctors. Real screenshots of `Pedia.html` on slides 2 and 3, real team photos on slide 5.
- Use "revolutionary", "best-in-class", "cutting-edge". Numbers, not adjectives.
- Drop the source tags. Every number needs `[MIT]` or `[HPO]` visible somewhere on the slide.

---

## Slide 1 - Hook (0:00 to 0:20)

**One-line brief**: dark background, massive serif, three beats revealing one principle, two numbers, then the brand mark.

**Layout**:
- Full-bleed background `#0F172A` (ink strong).
- Three text beats, left-aligned, padded 80 px from left, vertically centered.
- Final beat ("Pedia.") is right-aligned, italic, one line below the two-number line.

**Text content (exact)**:

```
In pediatrics,
symptoms don't speak.
Parents do.
```

then click-reveals:

```
180 days lost between visits.
4 years to diagnose a rare disease.
```

then:

```
                                      Pedia.
```

**Colors**:
- Background: `#0F172A`.
- Three-line principle: white `#FFFFFF`.
- Two stats: white, with the numbers "180 days" and "4 years" bolded in green `#6FB58A`.
- "Pedia." in green primary `#4D9F7D`, italic Fraunces 600.

**Typography**:
- Principle lines: Fraunces 500, 64 pt, line-height 1.15, tracking -0.01 em.
- Stats: Inter 500, 22 pt, color white; numbers Fraunces 600, 28 pt, color `#6FB58A`.
- "Pedia.": Fraunces 600 italic, 56 pt.

**Bottom-right corner**: small JetBrains Mono 10 pt `[MIT]`, color `#94A3B8`.

**Do not**: add logos, tagline, pedia mark in the first two beats. The slide starts spartan on purpose.

---

## Slide 2 - Anamnesis comparison (0:20 to 1:20) - hero slide

**One-line brief**: split-panel same-child-two-views. Left is warm paper scribble, right is clinical structured report.

**Layout**:
- Full-bleed 16:9 split vertically 50 / 50.
- Left panel: pastel green `#F4F9F5` background, simulated paper texture (subtle noise).
- Right panel: white `#FFFFFF` background, 4 px left border in blue primary `#1E3A8A`.

**Left panel content** (handwritten scribble, serif or cursive):

```
Louis, 2y
-> sleep?
-> langage... retard
"ok au repas"
crèche ?
follow up 3mo
```

Cross out "retard" with a thin hand-drawn line.

**Left panel column title** (top, 12 pt uppercase, letter-spaced 0.08 em, color `#475569`):
`What the doctor writes during the visit`

**Right panel column title** (same style, color `#1E3A8A`):
`What Pedia hands the doctor before the visit`

**Right panel options** (pick one at build time):

- **Option A (preferred)**: direct screenshot of `Pedia.html` screen-4, cropped to the "Résumé narratif + anamnèse parentale" block on the left 7 columns. Crop tight, 1600 x 1200 minimum, PNG. Insert full-bleed into the right panel, add the 3 px blue left border on top. Zero rebuild.
- **Option B (fallback)**: rebuild the table in Canva using the row structure below. Use this only if the screenshot is too text-dense at final export size.

**Right panel table rows (for Option B, or to verify the screenshot content)** (clinical typography, 11 to 12 pt, every row aligned in a 2-column grid with a 110 px left column for category labels):

| Category (`#94A3B8`, 9 pt uppercase) | Value (`#0F172A`, 12 pt) |
|---|---|
| Chief complaint | Recurrent sleep-onset crises (14 episodes / 4 mo) + expressive-language stagnation |
| Personal history | Bronchiolitis at 8 mo, 3 otitis, no hospitalization |
| Family history | Maternal uncle, adult ASD diagnosis |
| Nutrition | Refuses soft textures since W-8 |
| Timing | Crises cluster 8 pm to 10 pm, 11 of 14 follow a daycare day |
| Triggers | Worse after collective care, relieved by rhythmic rocking |
| Associated signs | Object-lining play (12 mentions), hand stereotypies |
| Circle corroboration | Daycare educator reports same lining (4 mentions) |

**Inset at the bottom of the right panel** (green accent block):
`From 47 parental observations, frequency, intensity, duration, triggers, via HPO ontology.`
Background `#E8F1EA`, left border `#6FB58A` 3 px, text `#0F172A`, 10 pt Inter.

**Bottom-right source tag**: `[HPO - Monarch Initiative]`, JetBrains Mono 10 pt, `#94A3B8`.

**Typography**:
- Scribble: handwritten feel font (e.g. Caveat), 20 pt, color `#2D3B36`.
- Right panel headers: Inter 600, 11 pt uppercase letter-spaced.
- Right panel row labels: JetBrains Mono 9 pt uppercase, color `#94A3B8`.
- Right panel row values: Inter 400, 12 pt, color `#0F172A`.

**Do not**: make the left panel neat or apologetic. The contrast is the whole point. Messy scribble, crossed words, fragments.

---

## Slide 3 - Product (1:20 to 2:00)

**One-line brief**: three interface screenshots from `Pedia.html` in an equal-weight horizontal grid, with a one-line caption above each.

**Layout**:
- White background `#FFFFFF`.
- Top line: `Prescribed by the physician, multimodal, multilingual pediatric journal.` Inter 500, 18 pt, color `#475569`, centered, 40 px from top.
- Three equal-width cards side by side, 24 px gap between, full vertical extent below the top line.
- Card 1 (parent): pale green background `#E8F1EA`, 3 px left border `#4D9F7D`.
- Card 2 (pipeline): pale gray background `#F7F9FC`, 3 px left border `#94A3B8`.
- Card 3 (physician): pale blue background `#DBE5F7`, 3 px left border `#1E3A8A`.

**Card content**:

Card 1 (parent):
- Mono badge top: `PARENT`, 9 pt, color `#94A3B8`.
- Screenshot: `Pedia.html` screen-2 (parent phone with voice CTA).
- Caption below screenshot: `Hold to speak. 30 seconds.` Fraunces 500, 18 pt, color `#2D3B36`.

Card 2 (pipeline):
- Mono badge: `PIPELINE`, 9 pt, `#94A3B8`.
- Screenshot: `Pedia.html` screen-3 (voice capture + HPO pipeline panel).
- Caption: `Transcription, HPO mapping, HDS hosting.` Fraunces 500, 18 pt, color `#0F172A`.

Card 3 (physician):
- Mono badge: `PHYSICIAN`, 9 pt, `#94A3B8`.
- Screenshot: `Pedia.html` screen-4 (top half: patient banner + narrative anamnesis).
- Caption: `2-minute read before the visit.` Fraunces 500, 18 pt, color `#1E3A8A`.

**Bottom-right source tag**: `[HPO]`, JetBrains Mono 10 pt, `#94A3B8`.

**Do not**: invent product illustrations. Use the real `Pedia.html` screenshots at 1440 x 900 PNG, cropped tightly to the phone or dashboard area. No mockup frames around them. No drop shadows (the cards already have borders).

---

## Slide 4 - Business (2:00 to 2:45)

**One-line brief**: seed one-pager layout. One headline, a three-tile pricing row, a four-line numbers strip, and an ask block.

**Layout**:
- White `#FFFFFF` background, 52 px page padding.
- Headline, top, Fraunces 500, 26 pt, color `#1E3A8A`, with the phrase "Parents always free" colored green primary `#4D9F7D` and italic.
- Three pricing tiles side by side, equal width, 16 px gap.
- Single-line unit-economics strip below, centered.
- Two-column ask block at the bottom: KPI on the left, ask on the right.

**Headline text**:
`Prescribed by the physician, paid by the medical structure. Parents always free.`

**Pricing tiles** (each 14 px padding, border-radius 8 px, 1 px border `#E2E8F0`, 3 px left border in the tile's color):

| Tile 1 (parent) | Tile 2 (pediatrician) | Tile 3 (hospital) |
|---|---|---|
| role: `PARENTS` (mono 10 pt `#475569`) | role: `INDEPENDENT PEDIATRICIAN` | role: `HOSPITAL SERVICE` |
| price: `Free` (Fraunces 22 pt `#4D9F7D`) | price: `€49 / mo` (Fraunces 22 pt `#1E3A8A`) | price: `€12k / yr` (Fraunces 22 pt `#1E3A8A`) |
| roi: `Forever` (Inter 11 pt `#475569`) | roi: `Recovers 11 h, ROI x21` | roi: `Payback < 6 months` |
| background `#E8F1EA`, border `#4D9F7D` | background `#DBE5F7`, border `#1E3A8A` | background `#DBE5F7`, border `#3B82F6` |

**Unit-economics strip** (centered, Inter 11 pt, color `#475569`, with key values in `#0F172A` bold):
`CAC < €300 . LTV > €1,800 . LTV / CAC > 6 . Churn < 2%/mo . GM > 85%`

**Bottom-left KPI block**:
- Label: `NORTH-STAR KPI` (mono 10 pt `#94A3B8`)
- Statement: `>= 2 min saved per consultation.` (Fraunces 18 pt `#0F172A`)
- Subtext: `Measured in a 50-pediatrician chronometered pilot.` (Inter 11 pt `#475569`)

**Bottom-right ask block**:
- Label: `PRE-SEED ASK` (mono 10 pt `#94A3B8`)
- Amount: `€400k` (Fraunces 24 pt `#4D9F7D`)
- Three bullets (Inter 11 pt `#0F172A`):
  - `50-pediatrician chronometered pilot`
  - `CE marking class I`
  - `Two paying hospital contracts`

**TAM callout** (right side, small, under the headline):
`TAM France: €31M. Europe next on the HPO interoperability rail.` Inter 12 pt, color `#475569`.

**Optional right-side thumbnail** (anchors the fact that the product exists): a 320 px wide screenshot of `Pedia.html` screen-4 (physician dashboard top), faded to 60% opacity or overlaid behind the ask block so the numbers stay readable. Keeps "this is real, not a pitch fiction" in peripheral vision.

**Bottom-right source tag**: `[MIT]`, JetBrains Mono 10 pt `#94A3B8`.

**Do not**: include an ARR projection (no Y1/Y2/Y3 curves). Do not include M3/M6/M12 milestones. Keep the slide about what we charge, why price < ROI, and what we do with the money. No roadmap timeline.

---

## Slide 5 - Team + cascade close + thank you (2:45 to 3:00)

**One-line brief**: six faces in a clean grid. Human-scale close. The last thing the jury sees.

**Layout**:
- Pastel green page background `#F4F9F5`.
- Top headline, centered, Fraunces 500, 28 pt, color `#0F172A`: `Two physicians. Four engineers. The pairing is the moat.`
- Six square portraits in a single row (or 3 x 2 grid if vertical space is tight), equal size, 16 px gap.
- Each portrait has a green accent strip at the bottom (`#6FB58A`, 4 px tall) with the name above the strip and role below.
- Cascade close at the bottom, centered, Fraunces 16 pt italic, color `#0F172A`, with the three bold-green terms: `Parents pay zero`, `Children gain years`, and `two euros a day`.

**Portrait specs**:
- Square crop, 600 x 600 minimum, head and shoulders, neutral background, consistent lighting.
- Filename suggestion: `team/fanette.jpg`, `team/elom.jpg`, `team/raoul.jpg`, `team/raphael.jpg`, `team/ayda.jpg`, `team/anouar.jpg`.

**Name + role** (below each portrait, centered):

| Name (Inter 600, 13 pt, `#0F172A`) | Role (Inter 400, 11 pt, `#475569`) |
|---|---|
| Fanette | dev |
| Elom | dev |
| Raoul | dev + business |
| Raphaël | dev + business |
| Ayda | MD |
| Anouar | MD |

**Cascade close** (bottom of slide, centered, max width 900 px, Fraunces 16 pt italic):

`A pediatrician pays two euros a day, recovers eleven hours a month. Parents pay zero. Children gain years of avoided diagnostic wandering.`

Bold-green these three phrases: `two euros a day`, `Parents pay zero`, `Children gain years`.

**Final word**, centered below the cascade, Fraunces 500, 20 pt, color `#0F172A`:
`Thank you.`

**Do not**: write "Team" as a slide title. The faces are the title. Do not use Linkedin headshots with different backgrounds. Shoot all six in the hackathon space Saturday afternoon if needed, same wall, same light.

---

## Build order (recommended)

1. Slide 3 first: captures lock the product story in place.
2. Slide 2 next: the hero comparison. If Slide 2 is weak, the pitch is weak.
3. Slide 1: drop in the text, pick the font sizes.
4. Slide 4: assemble from this spec. No free-hand rewriting.
5. Slide 5 last: team photos after the Saturday shoot.

## Screenshot catalog

All screenshots captured from `Pedia.html` at 1920 x 1080 display, then cropped as needed. Export PNG, sRGB. Save under `final-pitch/screenshots/`.

| ID | Source screen | Crop | Used on | Export size |
|---|---|---|---|---|
| `S1-hero` | screen-1 | full hero + phone mock in corner | optional slide 1 background at 15% opacity | 1920 x 1080 |
| `S2-parent-phone` | screen-2 | phone only, tight crop around the device frame | slide 3 card 1 | 720 x 1480 |
| `S3-voice-capture` | screen-3 | phone only, mic pulse + waveform visible | slide 3 card 2 | 720 x 1480 |
| `S3-pipeline-panel` | screen-3 | left context panel (transcription, NER, HPO, anonymization) | slide 3 card 2 alternate | 640 x 720 |
| `S4-dashboard-top` | screen-4 | patient banner + narrative anamnesis block (left 7 columns) | slide 2 right panel (Option A), slide 3 card 3, slide 4 background thumbnail | 1600 x 1200 |
| `S4-anamnesis-block` | screen-4 | narrative anamnesis block only, no patient banner | slide 2 right panel (tighter crop) | 1200 x 1400 |
| `S4-timeline-signals` | screen-4 | lower half: 4-month timeline + weak signals | backup for slide 3 card 3 | 1600 x 900 |
| `S4-pathways` | screen-4 | right column "pistes à explorer" block | Q&A backup visual | 800 x 1200 |
| `S5-recap` | screen-5 | product recap strip | not used in pitch, brand consistency reference | 1920 x 600 |

**Capture method**: open `Pedia.html` in Chrome at 1920 x 1080, use `Cmd/Ctrl + Shift + P -> "Capture screenshot"` via DevTools. For tight element crops: right-click the element in DevTools, `Capture node screenshot`. Avoid browser zoom (always 100%). Avoid extensions that overlay badges.

**Patient consistency**: every screenshot shows **Louis M., 2 yrs**. If the team picks a different first name for the story, edit `Pedia.html` first, re-export all screenshots in one pass, then import into Canva.

**File naming**: `S{screen}-{what}.png`, lowercase, hyphenated. Example: `S4-dashboard-top.png`.

## Export settings

- PNG export at 1920 x 1080, sRGB.
- Google Slides backup: import each PNG as a full-bleed slide background, overlay the source tags as editable text so timings can be adjusted last-minute.
