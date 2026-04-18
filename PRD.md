# PRD - Pedia

> **Version**: v0.1 hackathon · **Authors**: Fanette, Elom, Raoul, Raphaël, Ayda, Anouar · **Updated**: April 18, 2026

## 1. Problem

- **4 years** - median diagnostic delay for a pediatric rare disease in France. `[MIT]`
- **180 days** - clinical signal lost between two follow-up visits (3 to 6 months apart in ambulatory pediatrics).
- **Parents**: forget, can't find the right words, sometimes non-French-speaking, sometimes in a medical desert.
- **Pediatricians**: re-anamnesis at every visit, weak signals invisible to the naked eye, no longitudinal traceability.

## 2. Vision

Everything seen at home arrives structured at the pediatrician's desk, without asking more of the parent and without lengthening the consultation.

## 3. Personas

### 3.1 Camille - parent (daily user, **free**)
- 32 yrs old, mother of Louis (2 yrs). Smartphone always at hand.
- Pain: "I forget half of it in the appointment", "I don't know if it's normal or not".
- Need: capture in 30 seconds, in the moment, with zero form-filling.
- Success: move from a scattered log (sticky notes, iPhone notes, photos) to a single thread.

### 3.2 Dr. Claire Lemoine - independent pediatrician (**payer - €49/month**)
- 44 yrs old, solo practice, 25 consultations/day. RPPS 10003418927.
- Pain: short consultation to understand 3 months, anamnesis re-built from scratch, signals missed between visits.
- Need: walk into the consult with a trustworthy 2-minute summary.
- Success: recover 11 hours of clinical time per month (ROI ×21 on €49).

### 3.3 Hospital pediatric service - CHU / CHG (**payer - €12k/year**)
- Head of department + nurse coordinator. Long-cohort follow-up (rare, chronic, neurodevelopmental).
- Pain: unnecessary reconvocations, under-billed T2A, poor coordination with CAMSP / neuropediatrician / ENT.
- Need: shared longitudinal record, structured export, weak-signal alerts.
- Success: +€33k/year recovered, 5-month payback.

## 4. Core user stories

### 4.1 Parent
- **P1** - *As a parent, I want to capture a voice observation in 30 s, from the home screen, with no navigation.* → one dominant "Hold to speak" button.
- **P2** - *As a parent, I want to see my chronological thread - voice, text, photo - so I can re-read myself before the appointment.*
- **P3** - *As a parent, I want to know the next appointment is coming and what I logged since the last one.*
- **P4** - *As a non-French-speaking parent, I want to speak in my native language.* (v1 target - multilingual pipeline).

### 4.2 Pediatrician
- **M1** - *As a pediatrician, I want to open the file and understand the child in 2 minutes before they walk into the room.*
- **M2** - *As a pediatrician, I want a **narrative anamnesis** reconstructed from parental observations, structured by the UE 5 semiology categories.*
- **M3** - *As a pediatrician, I want a 4-month timeline with recurring symptoms.*
- **M4** - *As a pediatrician, I want **weak signals** - temporal correlations, trends, recurring motifs detected across 47+ observations.*
- **M5** - *As a pediatrician, I want **non-diagnostic pathways to explore** (referrals, prerequisite exams) without Pedia posting a diagnosis.*
- **M6** - *As a pediatrician, I want to export the summary as PDF and share with CAMSP / neuropediatrician / ENT.*

### 4.3 Hospital service
- **H1** - *As a department manager, I want to deploy Pedia on a cohort (e.g. neurodevelopmental) with access audit and parental consents.*
- **H2** - *As a department head, I want to reduce unnecessary reconvocations via weak signals and the pre-consult summary.*

## 5. Mapping: `Pedia.html` screens → user stories

| # | Screen | Name | Covers |
|---|---|---|---|
| 1 | `screen-1` | Landing / hero | positioning |
| 2 | `screen-2` | Parent journal (mobile) | P1, P2, P3 |
| 3 | `screen-3` | Voice capture + HPO pipeline | P1, AI transparency |
| 4 | `screen-4` | Physician dashboard | M1, M2, M3, M4, M5, M6, H1 |
| 5 | `screen-5` | Product recap | vision |

Demo patient: **Louis M.**, 2 years, born 2024-04-12 - chief complaint: "recurrent bedtime crises, language delay." 47 observations over 4 months, 5 detected signals, 2-minute physician read estimated.

## 6. Semiology coverage - matrix against `ANAMNESIS_REPORT.md`

Pedia must cover **all** categories of UE 5 pediatric semiology below, visible in the "Narrative summary · parental anamnesis" block of the physician dashboard (`screen-4`).

| Category | Parent capture source | Present in dashboard |
|---|---|---|
| Chief complaint | top-ranked recurrent observation | ✅ |
| Personal history | onboarding + dated observations | ✅ |
| Family history | onboarding | ✅ |
| Medications | observations + dosing reminders | ✅ |
| Allergies | onboarding + temporal correlations | ✅ |
| Nutrition | observations + meal photos | ✅ |
| Growth (weight / height) | parental weighing + chart photos | ✅ |
| Lifestyle | daily observations | ✅ |
| Psychomotor development | declared milestones + vocabulary | ✅ |
| Vaccinations | imported / declared record | ✅ |
| Symptom - timing | auto-timestamping | ✅ |
| Symptom - pain (location, intensity) | voice capture | ✅ |
| Triggers / relievers | weak-signal correlations | ✅ |
| Tolerance (behavior, nutrition, sleep) | longitudinal observations | ✅ |
| Associated signs | clinical NER on voice capture | ✅ |
| Circle corroboration | multi-author observations | ✅ |

## 7. Success metrics

### 7.1 Product (60 days post-pilot launch)
- ≥ 70% of active pediatricians prescribe Pedia to parents.
- ≥ 3 observations / patient / week on average.
- Pre-consult report open rate > 85%.

### 7.2 Clinical (6-month pilot)
- Measured physician time saved ≥ 2 min / consultation (safety threshold for ROI × 5).
- ≥ 1 early referral (CAMSP / specialist) triggered on a weak signal per 50-patient cohort.
- Pediatrician NPS > 45.

### 7.3 Business
- CAC < €300, LTV / CAC > 6.
- Churn < 2% / month.
- 500 pediatricians signed after the first post-pilot push (no ARR projection at hackathon stage).

## 8. Technical pipeline (summary - full detail out of scope here)

1. **Capture** - voice (hold to speak, 30 s max), text, photo. Mobile PWA client + iterable native app.
2. **Transcription** - Whisper FR (target median latency 420 ms).
3. **Clinical NER** - `pedia-ner-fr` v0.8+ model extracts entities.
4. **HPO structuring** - mapping to Human Phenotype Ontology (17,000 standardized phenotypes).
5. **Anonymization + encryption** at rest, HDS-certified hosting.
6. **Pre-consult summary** - specialized LLM generates narrative anamnesis + detects weak signals via pattern matching across ≥ 30 observations.
7. **Export** - PDF + sharing to CAMSP / specialists.

## 9. Non-goals

- No automated diagnosis. All suggestions are **non-diagnostic** and labelled as such.
- No telemedicine, no appointment booking, no billing.
- No replacement for the official French child health record - a complement, not a substitute.
- No direct parent-facing health advice outside medical prescription (to avoid classifying as MDR class IIa at launch).
- No research cohort management at v1 - targeted at routine clinical use.

## 10. External dependencies

- **HPO** ontology (Human Phenotype Ontology, open license).
- **Whisper** for transcription (or an EU-equivalent if Schrems II blocks).
- **HDS-certified** hosting (OVHcloud / Scaleway / Outscale).
- **AFPA** partnership (Association Française de Pédiatrie Ambulatoire) - independent-pediatrician distribution.
- Access to the **Dyspra Network** / rare-disease hubs - clinical validation.

## 11. Product risks

| Risk | Mitigation |
|---|---|
| Time saved < 2 min in practice | Chronometered study across 50 pediatricians in the seed-funded pilot |
| Parents don't capture enough | Smart push reminders + onboarding via physician prescription |
| Weak-signal false positives erode trust | Calibrate thresholds, display correlation traceability (r values) |
| Pediatrician perceives the tool as a threat | Frame as "physician's tool", never "parent-to-physician conduit" |

## 12. Where we are · what comes next

States and triggers, no speculative dates at hackathon stage.

- **Today**: HTML mockup (`Pedia.html`) · semiology skeleton validated by our two MDs.
- **If seed-funded - first push**: closed beta with 10 pilot practices.
- **Scale step**: 50-pediatrician chronometered pilot - the one number that decides the company is whether time saved per consultation is **≥ 2 min**.
- **Regulatory scope**: MDR class I, CE mark in scope · DPIA (AIPD) mandatory before open beta.
- **Product scope**: multilingual voice pipeline in scope · HPO interoperability in scope from day one.
