# BUSINESS_PLAN.md — Pedia

> **Format**: seed-stage one-pager, paced for a 90-second SF VC read (references: YC seed one-pager, a16z seed memo, Sequoia seed brief). Not a Series A deck — we don't have the traction. The *YC Series A pitch and deck* guide is consulted for **structure only**, not tone.
> **Budgets & market**: `[MIT]` inline on every sensitive figure.
> **Product rule**: **price < client ROI** on every tier. Non-negotiable.

---

## 1. One-line pitch

**Pedia turns 180 lost days between pediatric consultations into a 2-minute clinical report.**

Parents capture (voice / text / photo, 30 s). HPO ontology structures. The pediatrician reads a pre-consult anamnesis in 2 minutes.

## 2. Problem

In French ambulatory pediatrics:

- **4 years** — median diagnostic delay for a pediatric rare disease. `[MIT]`
- **180 days** — clinical signal unobserved between two follow-up visits (3–6 months apart, typical cadence).
- Parents forget, can't find the right clinical words, sometimes don't speak French.
- Pediatricians re-do the anamnesis at every visit; weak signals are invisible to the naked eye; longitudinal traceability is zero.

## 3. Solution & product wedge

**Pedia** is an augmented pediatric health record, **prescribed by the pediatrician** to the parent.

- **Parent side (free, forever)** — one button: "Hold to speak", 30 s max. Voice, text, photo, timestamped.
- **Pipeline** — Whisper transcription → clinical NER (`pedia-ner-fr`) → structuring into **HPO** (17,000 standardized phenotypes) → anonymization → HDS hosting.
- **Physician side** — pre-consult summary: narrative anamnesis by UE 5 category, 4-month timeline, weak signals (temporal correlations + trends), non-diagnostic pathways to explore.

**Wedge**: be the tool the physician **prescribes to the parent**, not the one the parent picks alone. That gives us (a) near-free distribution (prescription = channel), (b) higher-quality engagement (prescription means "use it"), (c) positioning as the "physician's tool", never "parent-to-physician conduit" — the key to pediatric adoption.

## 4. Why now

- **Clinical-grade LLM quality** crossed the threshold in 2024–2025 — robust entity extraction + ontology mapping in French.
- **HPO** is the European interoperability standard in pediatric rare-disease pathways (ERN networks).
- **Parental digital health literacy** spiked post-COVID — voice capture is normalized (voice messages, Siri, WhatsApp voice).
- **ONDAM 2025 pressure** on ambulatory pediatrics + under-billed hospital T2A → buying window.

## 5. Market — TAM / SAM `[MIT]`

| Segment | Volume | Avg price | TAM / yr |
|---|---|---|---|
| Independent pediatricians (FR) | 10,000 | €588/yr (€49/mo) | **€5.9M** |
| GPs seeing children (FR) | 35,000 | €588/yr | **€20.6M** |
| Hospital pediatric services (FR) | 450 | €12,000/yr | **€5.4M** |
| **TAM France** | | | **≈ €31M** `[MIT]` |

- **Priority SAM** (independent pediatricians + high-volume hospital services): **€9M/yr**.
- **EU expansion** next on the HPO interoperability rail.

## 6. Business model & pricing — **price < ROI on every tier** `[MIT]`

### 6.1 Parent — **free, forever**
Only one side of the market pays. Maximizes parental adoption and shields Pedia from being seen as a "tool that bills families".

### 6.2 Independent pediatrician — **€49 / month / practitioner**

| Calculation | Value |
|---|---|
| Time-saved assumption | 4 min / consult × 25 consults / day × 20 days / mo ≈ **11 h / mo** |
| Clinical-time valuation `[MIT wage benchmark]` | ≈ €96 / h (independent practice) |
| Equivalent monthly gain | **≈ €1,058 / mo** |
| Pedia price | €49 / mo |
| **ROI** | **×21** |
| **Breakeven** | ≈ **1 min 30 s** saved over the whole month |

The **< €50 psychological threshold** lets the pediatrician decide alone without routing to the practice accountant.

### 6.3 Hospital service — **€12,000 / year / service**

| Calculation | Value |
|---|---|
| Avoided reconvocations | real savings + freed capacity |
| Recovered T2A billing capacity | real savings |
| Pedia price | €12k / yr |
| **Payback** | **< 6 months** |

### 6.4 Upsell (optional, later)
**Premium €79/mo** tier for independent pediatricians: automated HAS-based vaccination advice, public-health alerts, EHR export.

## 7. Unit-economics targets

| Metric | Target |
|---|---|
| Independent-pediatrician CAC | **< €300** (AFPA + congresses + prescriber word-of-mouth) |
| Independent-pediatrician LTV | **> €1,800** (3 yrs × €588/yr × net retention) |
| **LTV / CAC** | **> 6** |
| Monthly churn | **< 2%** |
| Gross margin | **> 85%** (full-EU SaaS hosting) |
| CAC payback | **< 6 months** |

## 8. Go-to-market — what we would do if seed funded

No month-by-month speculation. Two phases:

### First push (with seed funding)
- **AFPA** (Association Française de Pédiatrie Ambulatoire) distribution partnership.
- **Pediatric congresses** (JFRP, Printemps de la Pédiatrie) — booth + timed workshops.
- **Prescriber word-of-mouth** — each satisfied pediatrician prescribes to 30–50 families.

### Next — if the pilot validates
- Pilot **2 CHUs** (Necker, Lyon Sud — already listed as supporters on the landing page).
- CME (continuing medical education) embedding Pedia into anamnesis training.
- **CNAM** partial reimbursement via a dedicated "pediatric pre-consult summary" CCAM code.
- **ARS** regional rare-disease / neurodevelopmental-screening schemes.

### EU expansion
HPO interoperability opens DE / ES / IT / BE / NL once France is validated. Local distribution partner per country.

## 9. Where we are · next concrete step

- **Today** — HTML prototype (`Pedia.html`) + semiology skeleton validated by our two MDs.
- **First concrete step with seed funding** — closed beta with 10 pilot practices.
- **The step that decides the company** — a 50-pediatrician chronometered pilot answering one question: **is time saved per consultation ≥ 2 min?** If yes, ROI ×21 holds and GTM scales.
- **CE marking class I** in scope; DPIA (AIPD) mandatory before open beta.

No ARR projection at hackathon stage. We'll have ARR when we have paying pilots.

## 10. Competition & moat

### 10.1 Landscape

| Player | What they do | Why not us |
|---|---|---|
| **Doctolib** | Appointment booking + teleconsult | No longitudinal parent-child capture |
| **Qare / Livi** | Urgent teleconsult | No follow-up, not pediatrics-specific |
| **DMP** (Dossier Médical Partagé) | Institutional aggregation | No parental observation, no AI |
| **MyChart / Epic MyChart EU** | Patient portal | No free-form capture, no HPO |

### 10.2 Moat (12–18 months to copy)
1. **French pediatric HPO ontology** — proven mapping from unstructured parental observations.
2. **Multilingual voice pipeline** — FR in v0, 5 EU languages in v1.
3. **Physician-prescribed distribution** — hard to replicate without clinical partnerships.
4. **Published clinical study** — regulatory argument and entry barrier (planned post-pilot).

## 11. Regulatory

- **Status**: SaaS → **medical device class I** at launch. Class IIa considered only if active diagnostic-aid is added (out of scope at v1).
- **CE marking**: in scope.
- **GDPR** (RGPD): explicit parental consent (Art. 9-2-a). Minor < 15.
- **HDS**: certified hosting required (OVHcloud HDS or Scaleway HDS).
- **DPIA (AIPD)**: mandatory (health data + minor + AI profiling) before open beta.
- **Full brief**: see `RGPD.md`.

## 12. Team

| Name | Role | Why critical |
|---|---|---|
| **Fanette** | dev | Product + parent-side UX |
| **Elom** | dev | Voice → HPO pipeline |
| **Raoul** | dev + business | Independent-pediatrician GTM + ops |
| **Raphaël** | dev + business | Hospital + regulatory |
| **Ayda** | MD | Semiology validation + clinical network |
| **Anouar** | MD | Anamnesis + rare-disease pathways |

**Two physicians on the team** = clinical credibility no full-tech competitor can replicate at our stage.

## 13. Use of funds / ask (pre-seed)

**Pre-seed round: €400k**, three deliverables.

| Line | Allocation |
|---|---|
| Tech (HPO pipeline, mobile, HDS infra) | €180k |
| 50-pediatrician chronometered pilot (comp + data) | €80k |
| CE marking (technical file + notified body) | €60k |
| Compliance (external DPO, DPIA, HDS audit) | €40k |
| First-push GTM (AFPA, congresses, onboarding) | €40k |

**Exit-of-round state**: validated pilot, 2 hospitals in pipeline, CE marked, ready for a €1.5–2M Seed round.

## 14. Risks & mitigations

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Measured time-saved < 2 min | Medium | High (ROI) | Chronometered pilot · safety threshold at 1 min → ROI still ×5 |
| Long hospital sales cycle | High | Medium | Start hospital conversations in parallel, don't depend on the channel early |
| Doctolib / Qare clone the feature | Medium | Medium | HPO + multilingual moat = 12–18 months · publish the clinical study fast |
| CE marking refused / delayed | Low | High | Class I is the minimum level · technical file prepared by regulatory expert |
| Parental over-signaling → anxiety | Medium | Medium | No alerts parent-side · signals visible physician-side only |
| Pediatrician rejection ("another piece of software") | Medium | High | "Physician's tool" positioning · 2-min UX · prescribed by the pediatrician themselves |

## 15. Sources

### Content `[MIT]` + `[HPO]`
- **MIT Sloan Healthcare Initiative** — pediatric cost-of-care & diagnostic-delay reports (France comparable cohort).
- **MIT Media Lab Connected Health** — parental digital capture & longitudinal pediatric monitoring.
- **MIT wage benchmark** — medical-professional time valuation, France-adjusted.
- **HPO / Monarch Initiative** — 17,000 standardized phenotypes · https://hpo.jax.org
- Complements: Orphanet (FR rare diseases), HAS (TND guidelines), CNAM Santé directory (FR pediatrician + GP count).

### Form references (seed-stage pitch / business doc)
- Kevin Hale — *How to pitch your startup* · YC · https://www.ycombinator.com/library/6q-how-to-pitch-your-company
- Michael Seibel — *How to build the perfect demo day pitch* · YC · https://www.ycombinator.com/library/6s-how-to-build-the-perfect-demo-day-pitch
- Paul Graham — *How to convince investors* · http://paulgraham.com/convince.html
- *How to build a great Series A pitch and deck* · YC · https://www.ycombinator.com/library/8d-how-to-build-a-great-series-a-pitch-and-deck — **consulted for one-pager structure only, not pitch cadence.**

---

*Last updated: 2026-04-18 — ahead of the ANDCS × MIT Hackathon 2026 final pitch, Track 2 AI in Pediatrics.*
