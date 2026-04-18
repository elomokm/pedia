# PITCH.md - Pedia · Track 2 AI in Pediatrics · ANDCS × MIT Hackathon 2026

> **Event** - Hackathon ANDCS × MIT Hacking Medicine, 17–19 April 2026, Epitech Paris, Kremlin-Bicêtre
> **Track** - Track 2 · AI in Pediatrics
> **Format** - 3 min pitch + 2 min Q&A · slides only · no live demo
> **Language** - English (MIT judges)
> **Voice** - flowing prose, the cadence of our 90-second archived pitch (`archive/practice-pitch-1/myontologynote-pitch-90s.html`): principle opener · enumeration rhythm ("voice, text, photo") · declarative triads ("prescribed by the physician, paid by the medical structure. Parents always free") · cascading close ("a pediatrician pays two euros a day. Parents pay zero. Children gain years"). Seed / demo-day pitch discipline under the prose - Kevin Hale (YC), Michael Seibel (YC), Paul Graham. Series A deck guides referenced for structure only - our stage is pre-traction, our format is 3 min, not 30. Numbers over adjectives. Show don't tell. No fluff.
> **Demo** - still images (screenshots of `Pedia.html`), no interactive product.
> **Goal** - win Track 2.

---

## Timing (3:00)

| Time | Slide | Block | Speaker |
|---|---|---|---|
| 0:00–0:20 | **1** | Hook - problem | **Ayda** (medical credibility) |
| 0:20–1:20 | **2** | Anamnesis comparison - solution | **Fanette** |
| 1:20–2:00 | **3** | Product / POC - solution | **Fanette** (continuing) |
| 2:00–3:00 | **4** | Business · market, pricing, ask · close | **Fanette** *or* **Ayda** (decide at rehearsal) |

---

## Slide 1 - Hook (0:00–0:20) · **strong words, black background, giant type**

Three lines, massive typography, one thought per line. No bullets, no logo, no subtitle.

```
                In pediatrics,
                symptoms don't speak.
                Parents do.
```

Second beat, same slide (click-fade reveals):

```
                180 days lost between visits.
                4 years to diagnose a rare disease.
```

Third beat (final reveal):

```
                                      Pedia.
```

**Script (Ayda, slow cadence)** :

> "In pediatrics, everything relies on observation. A child doesn't describe their symptoms - their parents live them, every day.
>
> Ideally, a child is seen every three to six months. But between two consultations, one hundred and eighty days of observations escape the medical system. The result: a pediatric rare disease takes four years to be diagnosed.
>
> We are Pedia."

*Source displayed small, bottom of slide: `[MIT]` for the 4-year figure.*

---

## Slide 2 - Problem → Solution · anamnesis comparison (0:20–1:20) · **the hero slide**

Split in half, same child, same appointment window, two renderings.

### Left panel - **"What the doctor writes during the visit"**
Paper texture, handwritten serif, arrows, crossed-out words, fragments only.

```
 Louis, 2y
 → sleep?
 → langage... retard
 "ok au repas"
 crèche ?
 follow up 3mo
```

### Right panel - **"What Pedia hands the doctor before the visit"**
Clean white, clinical typography, 15 structured rows from `ANAMNESIS_REPORT.md`.

| Category | Pedia report |
|---|---|
| Chief complaint | Recurrent sleep-onset crises (14 episodes / 4 mo) · expressive-language stagnation (0 new word / 3 wk) |
| Personal history | Bronchiolitis at 8 mo · 3 otitis · no hospitalization |
| Family history | Maternal uncle - adult ASD diagnosis |
| Medications | None |
| Allergies | None declared · transient mild eczema at 14 mo |
| Nutrition | Growing food selectivity · refuses soft textures since W-8 |
| Growth (weight/height) | 50th percentile weight · 75th height · stable curves |
| Psychomotor development | Walked at 13 mo · first words at 18 mo · lexical plateau since W-12 · no symbolic play |
| Vaccinations | Up-to-date (2024 schedule) |
| Symptom - timing | Crises cluster 8–10 pm · 11 of 14 follow a daycare day |
| Symptom - intensity / tolerance | 45–90 min sleep onset · inconsolable crying · 3–4 wakings per night, W-6 to W-1 |
| Triggers / relievers | Worse after collective care · relieved by rhythmic rocking + dim light |
| Behavioral tolerance | Daytime fatigue, appetite ↓, variable eye contact |
| Associated signs | Object-lining play (12 mentions) · inappropriate laughter · hand stereotypies |
| Circle corroboration | Daycare educator independently reports same object-lining (4 mentions) |

**Script (Fanette, slows on the contrast)** :

> "Same child. Same appointment. On the left: what the pediatrician can scribble during the visit. On the right: what Pedia assembled from forty-seven parental observations over four months.
>
> Our AI turns each observation into a standardized clinical indicator - frequency, intensity, duration, triggers - powered by the HPO ontology, seventeen thousand internationally standardized phenotypes.
>
> What the visit missed, Pedia rebuilt. That is the difference between an early CAMSP referral at two, and a diagnosis at seven."

*Source tag: `[HPO - Monarch Initiative]`*

---

## Slide 3 - Product / POC (1:20–2:00) · **three interface screenshots, equal-weight grid**

Three screenshots side by side, captured from `Pedia.html`:

| Screenshot | Source | Caption |
|---|---|---|
| **A - Parent capture** | `Pedia.html` screen-2 | "Hold to speak. 30 seconds." |
| **B - Live structuring** | `Pedia.html` screen-3 | "Transcription · HPO mapping · HDS hosting." |
| **C - Doctor dashboard** | `Pedia.html` screen-4 | "Two-minute read. 47 observations, 5 weak signals." |

All three in the same moment, showing the loop : parent speaks → Pedia structures → doctor reads.

**Script (Fanette, continuing from slide 2)** :

> "Pedia is a multimodal, multilingual pediatric journal, prescribed by the physician. Three stakeholders, three interfaces. Parents log every day, in their mother tongue: voice, text, photo. Physicians read a structured report in medical language before each appointment, with four-month evolution curves and the weak signals detected across all observations. Hospital services get longitudinal records and avoided reconvocations.
>
> Behind the scenes: transcription, clinical extraction, structuring into HPO. Hosted HDS, RGPD-compliant, nothing leaves the EU.
>
> If a concerning pattern appears, the physician is alerted first - never a diagnosis, only a pathway to explore. The clinical decision stays with the physician."

---

## Slide 4 - Business (2:00–3:00) · **seed one-pager layout**

Single slide, five blocks, scannable in 10 seconds.

### Header - one-line pitch
> **Pedia turns 180 lost days between pediatric consultations into a 2-minute clinical report.**

### Block 1 - Market `[MIT]`
- **TAM France - €31M/yr** (10k pediatricians · 35k GPs seeing kids · 450 hospital services)
- **SAM - €9M/yr** (independent pediatricians + priority hospital services)
- **EU expansion** next on the HPO interoperability rail.

### Block 2 - Pricing (**price < ROI on every tier**)

| Parent | Independent pediatrician | Hospital service |
|---|---|---|
| **Free, forever** | **€49 / month** | **€12k / year** |
| - | Recovers 11 h / month of clinical time ≈ €1,058 | Avoided reconvocations + T2A capture |
| - | **ROI ×21** · breakeven at 1m 30s saved total | **Payback < 6 months** |

### Block 3 - Unit-economics targets
CAC **< €300** · LTV **> €1,800** · **LTV / CAC > 6** · Churn **< 2%/mo** · GM **> 85%**

### Block 4 - Where we are · next concrete step
- **Today**: prototype (`Pedia.html` mockup) · semiology validated by our two MDs.
- **Next**: 50-pediatrician chronometered pilot.
- **North-star KPI**: time saved per consultation ≥ 2 min. Every other KPI (CAC, LTV, churn, activation) flows from it.
- **Regulatory scope**: MDR class I, CE mark in scope.

### Block 5 - Team + Ask
**Six co-founders** : Fanette, Elom (dev) · Raoul, Raphaël (dev + business) · Ayda, Anouar (MD - clinical credibility no tech team can replicate).

**Pre-seed ask: €400k**, funding three deliverables:
1. 50-pediatrician chronometered pilot
2. CE marking class I
3. Two paying hospital contracts

**Script (Fanette or Ayda - decide at rehearsal)** :

> "Three stakeholders. Prescribed by the physician, paid by the medical structure. Parents always free.
>
> An independent pediatrician pays forty-nine euros a month and recovers eleven hours of clinical time. ROI times twenty-one. A hospital service pays twelve thousand euros a year, payback under six months. On every tier, **price stays below the client's ROI**.
>
> TAM France: thirty-one million euros. Europe is the natural next step, on the HPO interoperability rail.
>
> Today we have a validated prototype. Our north-star KPI: at least two minutes saved per consultation, measured in a fifty-pediatrician chronometered pilot. We are raising four hundred thousand euros to run that pilot, get CE marking class one, and sign our first two hospital contracts.
>
> Two physicians. Four engineers. The pairing is the moat."
>
> *(beat)*
>
> "A pediatrician pays two euros a day, recovers eleven hours a month. Parents pay zero. Children gain years of avoided diagnostic wandering.
>
> Thank you."

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

## Pitch best-practice checklist (to cross before D-day)

> Anchored on Hale, Seibel, Graham - see *Sources* at the bottom of this doc.

- [ ] Slide 1 tells the judges what Pedia is within 20 seconds.
- [ ] Slide 2 **shows**, not tells - the jury sees the anamnesis gap, doesn't need to be convinced of it.
- [ ] Slide 3 is the product, not a concept drawing. Real screenshots only.
- [ ] Slide 4 has **numbers over adjectives**. No "best-in-class", no "revolutionary".
- [ ] Every claim has a source tag visible on the slide: `[MIT]`, `[HPO]`.
- [ ] The ask is concrete: € amount + what it buys + in how many months.
- [ ] Each slide defends a single idea. If it takes two claims, split it.
- [ ] No story callback, no epilogue. The business slide is the ending.

---

## Rehearsal checklist

- [ ] Full run-through under 3:05, three times, on the clock.
- [ ] Ayda and Anouar validate the slide-2 right-column anamnesis rows against UE 5 pediatric semiology.
- [ ] Screenshots A, B, C produced and inserted at the intended crop.
- [ ] Q&A drill from `PRACTICE_QUESTIONS.md` - every answer under 20 s out loud.
- [ ] Who-speaks-what fixed (table at the top of this doc).
- [ ] No filler words ("so", "kind of", "basically") - record and cut.

---

## Sources

**Pitch craft (primary anchors, matched to our stage and format)**
- Kevin Hale - *How to pitch your startup* · YC Startup School · https://www.ycombinator.com/library/6q-how-to-pitch-your-company
- Michael Seibel - *How to build the perfect demo day pitch* · YC · https://www.ycombinator.com/library/6s-how-to-build-the-perfect-demo-day-pitch
- Paul Graham - *How to convince investors* · http://paulgraham.com/convince.html

**Series A deck guides (reference for structure only, not cadence)**
- *How to build a great Series A pitch and deck* · YC Library · https://www.ycombinator.com/library/8d-how-to-build-a-great-series-a-pitch-and-deck

**Content sources**
- `[MIT]` - MIT Sloan Healthcare Initiative · MIT Media Lab Connected Health
- `[HPO]` - Human Phenotype Ontology, Monarch Initiative · https://hpo.jax.org
