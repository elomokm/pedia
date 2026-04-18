# PITCH.md — Pedia · Pediatrics track · Cosmic Harp 2026

> **Format** — 3 min pitch + 2 min Q&A · slides only · no live demo
> **Language** — English
> **Voice** — YC best practices. Numbers over adjectives. Show don't tell. No fluff. One claim per slide.
> **Demo** — still images (screenshots of `Pedia.html`), no interactive product.
> **Goal** — win the pediatrics track.

---

## Timing (3:00)

| Time | Slide | Block | Speaker |
|---|---|---|---|
| 0:00–0:20 | **1** | Hook — strong words | Ayda or Anouar (medical credibility) |
| 0:20–1:20 | **2** | Problem → Solution · anamnesis comparison | Raphaël |
| 1:20–2:00 | **3** | Product / POC · interface screenshots | Fanette |
| 2:00–3:00 | **4** | Business · market, pricing, unit economics, ask | Raoul |

---

## Slide 1 — Hook (0:00–0:20) · **strong words, black background, giant type**

Three lines, massive typography, one thought per line. No bullets, no logo, no subtitle.

```
                In pediatrics,
                symptoms don't speak.
                Parents do.
```

Second beat, same slide (click-fade reveals):

```
                180 days lost between visits.
                < 20 minutes to rebuild 3 months.
                4 years to diagnose a rare disease.
```

Third beat (final reveal):

```
                                      Pedia.
```

**Script (Ayda or Anouar, slow cadence)** :

> "In pediatrics, symptoms don't speak. Parents do.
> One hundred and eighty days lost between visits. Less than twenty minutes to rebuild three months. Four years to diagnose a pediatric rare disease.
> We are Pedia."

*Sources displayed small, bottom of slide: `[DREES 2007]` for the 20-min figure, `[MIT]` for the 4-year figure.*

---

## Slide 2 — Problem → Solution · anamnesis comparison (0:20–1:20) · **the hero slide**

Split in half, same child, same appointment window, two renderings.

### Left panel — **"What the doctor writes in 20 minutes"**
Paper texture, handwritten serif, arrows, crossed-out words, fragments only.

```
 Louis, 2y
 → sleep?
 → langage... retard
 "ok au repas"
 crèche ?
 follow up 3mo
```

### Right panel — **"What Pedia hands the doctor before the visit"**
Clean white, clinical typography, 15 structured rows from `ANAMNESIS_REPORT.md`.

| Category | Pedia report |
|---|---|
| Chief complaint | Recurrent sleep-onset crises (14 episodes / 4 mo) · expressive-language stagnation (0 new word / 3 wk) |
| Personal history | Bronchiolitis at 8 mo · 3 otitis · no hospitalization |
| Family history | Maternal uncle — adult ASD diagnosis |
| Medications | None |
| Allergies | None declared · transient mild eczema at 14 mo |
| Nutrition | Growing food selectivity · refuses soft textures since W-8 |
| Growth (weight/height) | 50th percentile weight · 75th height · stable curves |
| Psychomotor development | Walked at 13 mo · first words at 18 mo · lexical plateau since W-12 · no symbolic play |
| Vaccinations | Up-to-date (2024 schedule) |
| Symptom — timing | Crises cluster 8–10 pm · 11 of 14 follow a daycare day |
| Symptom — intensity / tolerance | 45–90 min sleep onset · inconsolable crying · 3–4 wakings per night, W-6 to W-1 |
| Triggers / relievers | Worse after collective care · relieved by rhythmic rocking + dim light |
| Behavioral tolerance | Daytime fatigue, appetite ↓, variable eye contact |
| Associated signs | Object-lining play (12 mentions) · inappropriate laughter · hand stereotypies |
| Circle corroboration | Daycare educator independently reports same object-lining (4 mentions) |

**Script (Raphaël, slows on the contrast)** :

> "Same child. Same appointment. On the left: what the pediatrician can scribble in under twenty minutes. On the right: what Pedia assembled from forty-seven parental observations over four months.
>
> Every observation becomes a standardized clinical indicator — frequency, intensity, duration, triggers — through the HPO ontology. Seventeen thousand internationally standardized phenotypes.
>
> What the visit missed, Pedia rebuilt. That is the difference between an early CAMSP referral at two, and a diagnosis at seven."

*Source tag: `[HPO — Monarch Initiative]`*

---

## Slide 3 — Product / POC (1:20–2:00) · **three interface screenshots, equal-weight grid**

Three screenshots side by side, captured from `Pedia.html`:

| Screenshot | Source | Caption |
|---|---|---|
| **A — Parent capture** | `Pedia.html` screen-2 | "Hold to speak. 30 seconds." |
| **B — Live structuring** | `Pedia.html` screen-3 | "Transcription · HPO mapping · HDS hosting." |
| **C — Doctor dashboard** | `Pedia.html` screen-4 | "Two-minute read. 47 observations, 5 weak signals." |

All three in the same moment, showing the loop : parent speaks → Pedia structures → doctor reads.

**Script (Fanette)** :

> "Here is the product.
>
> Left: the parent presses one button. Thirty seconds of voice, text, or a photo. Native multilingual — they speak their language, the doctor reads French.
>
> Middle: our pipeline. Whisper transcribes. Clinical NER extracts. HPO maps to seventeen thousand standardized phenotypes. Hosted HDS, RGPD-compliant, nothing leaves the EU.
>
> Right: the doctor's view before the appointment. A one-page narrative anamnesis. A four-month timeline. Weak signals — object-lining mentioned twelve times, sleep degradation over six weeks, crises correlated with daycare days at r equals 0.71. Suggested pathways — never diagnoses. The clinical decision stays with the physician."

---

## Slide 4 — Business (2:00–3:00) · **YC one-pager layout**

Single slide, five blocks, scannable in 10 seconds.

### Header — one-line pitch
> **Pedia turns 180 lost days between pediatric consultations into a 2-minute clinical report.**

### Block 1 — Market `[MIT]`
- **TAM France — €31M/yr** (10k pediatricians · 35k GPs seeing kids · 450 hospital services)
- **SAM — €9M/yr** · **SOM Y3 — €4M ARR**
- **Y4 — EU expansion via HPO interop → TAM ×6 (≈ €186M)**

### Block 2 — Pricing (**price < ROI on every tier**)

| Parent | Independent pediatrician | Hospital service |
|---|---|---|
| **Free, forever** | **€49 / month** | **€12k / year** |
| — | Recovers 11 h / month of clinical time ≈ €1,058 | +€33k/yr recovered (avoided reconvocations + T2A) |
| — | **ROI ×21** · breakeven at 1m 30s saved total | **Payback 5 months** · ROI ×2.8 |

### Block 3 — Unit economics
CAC **< €300** · LTV **> €1,800** · **LTV / CAC > 6** · Churn **< 2%/mo** · GM **> 85%**

### Block 4 — Traction roadmap
```
Y1 : €294k ARR   →   Y2 : €1.5M   →   Y3 : €4M
500 clinicians       + hospitals      + institutional
                     + GPs            (CNAM / ARS)
```
Milestones: 50-clinician chronometered pilot by M6 · first hospital contract by M9 · **CE mark M12**.

### Block 5 — Team + Ask
**Six co-founders** : Fanette, Elom (dev) · Raoul, Raphaël (dev + business) · Ayda, Anouar (MD — clinical credibility no tech team can replicate).

**Pre-seed ask: €400k, 12-month runway, three outcomes**:
1. 50-pediatrician chronometered pilot
2. CE marking class I
3. Two paying hospital contracts

**Script (Raoul)** :

> "Market. Thirty-one million euros addressable in France. Nine million serviceable. Four million ARR target by year three. Europe from year four on the HPO rail.
>
> Pricing. Parents always free. Independent pediatrician, forty-nine euros a month — they recover eleven hours of clinical time. ROI times twenty-one. Hospital service, twelve thousand a year — payback five months. On every tier, **price stays below ROI**.
>
> Economics. CAC under three hundred. LTV over eighteen hundred. LTV over CAC, greater than six. Churn under two percent. Gross margin above eighty-five.
>
> Traction. Two hundred ninety-four thousand ARR year one. Four million by year three. Fifty-pediatrician chronometered pilot by month six. CE mark at month twelve.
>
> Team. Six founders. Two physicians — Ayda and Anouar. Four engineers. The pairing is the moat.
>
> We are raising four hundred thousand pre-seed. Twelve months of runway. Fifty pilots. Two hospital contracts. CE mark. Thank you."

---

## Screenshots to produce from `Pedia.html`

All at 1440 × 900, PNG, full-bleed:

| ID | Target slide | `Pedia.html` screen | Crop |
|---|---|---|---|
| A | Slide 3 left | screen-2 | phone with voice CTA |
| B | Slide 3 middle | screen-3 | voice capture + pipeline panel |
| C | Slide 3 right | screen-4 | patient banner + narrative anamnesis + weak signals |
| D | Slide 2 right (optional overlay) | screen-4 | narrative block alone, for the anamnesis report visual |

**Patient consistency** : `Pedia.html` already shows **Louis M., 2 yrs**. No rename needed unless the team picks a different demo identity.

---

## YC best-practice checklist (to cross before D-day)

- [ ] Slide 1 tells the judges what Pedia is within 20 seconds.
- [ ] Slide 2 **shows**, not tells — the jury sees the anamnesis gap, doesn't need to be convinced of it.
- [ ] Slide 3 is the product, not a concept drawing. Real screenshots only.
- [ ] Slide 4 has **numbers over adjectives**. No "best-in-class", no "revolutionary".
- [ ] Every claim has a source tag visible on the slide: `[DREES]`, `[MIT]`, `[HPO]`.
- [ ] The ask is concrete: € amount + what it buys + in how many months.
- [ ] Each slide defends a single idea. If it takes two claims, split it.
- [ ] No story callback, no epilogue. The business slide is the ending.

---

## Rehearsal checklist

- [ ] Full run-through under 3:05, three times, on the clock.
- [ ] Ayda and Anouar validate the slide-2 right-column anamnesis rows against UE 5 pediatric semiology.
- [ ] Screenshots A, B, C produced and inserted at the intended crop.
- [ ] Q&A drill from `PRACTICE_QUESTIONS.md` — every answer under 20 s out loud.
- [ ] Who-speaks-what fixed (table at the top of this doc).
- [ ] No filler words ("so", "kind of", "basically") — record and cut.
