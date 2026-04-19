# RGPD.md - internal brief · Pedia

> **Note for MIT readers**: **RGPD** is the French implementation of **GDPR** (EU Regulation 2016/679). French legal citations are preserved verbatim below.
> **Use**: internal team brief - not a pitch document.
> **Goal**: any of the 6 team members can answer a regulatory question on stage in **15 seconds**.
> **Target audience**: hackathon jury (overview level), not specialized counsel.

---

## 🎯 15-second stock answer (to memorize)

> *"Class I medical-device SaaS, HDS hosting, CE marking in scope, DPIA (AIPD) in progress, explicit parental consent under Art. 9-2-a GDPR, no transfer outside the EU."*

If stopped at "class I" or "HDS", expand with points 2, 4, and 5 below.

---

## 1. Data classes

Pedia processes **personal health data concerning a minor**:
- voice (parental recording),
- text (free-form note),
- photo (rash, posture, gesture),
- minimal temporal and geographic metadata.

Legally: **special category** (Art. 9 GDPR) + **minor** (reinforced protection, French law Art. 7-1 LIL 78-17).

## 2. Software qualification

- **Medical-device (MD) SaaS** → **class I** at launch.
- Upgrade to **class IIa** would be triggered only if Pedia added an active **diagnostic-aid** function (e.g., pathology probability). **Not the case at v1** - Pedia surfaces non-diagnostic pathways (referrals, prerequisite work-ups); the clinical decision stays with the physician.
- **CE marking class I** in scope. Technical file + declaration of conformity + regulatory lead appointed (Raphaël lead, external DPO advising).

## 3. Legal bases for processing

- **Primary**: explicit consent of the parental-authority holder - Art. 9-2-a GDPR.
- **Secondary**: vital interest of the data subject - Art. 9-2-c GDPR (flagged-emergency cases).
- **Age**: minor < 15 years → parental consent mandatory (French law). From 15 onwards, the adolescent resumes control of their consent.

## 4. Hosting

**HDS (Hébergeur de Données de Santé - certified health-data hosting) mandatory** - ISO 27001 + HDS standard.

| Candidate | HDS certified | Location | Pedia preference |
|---|---|---|---|
| **OVHcloud** | yes | FR | **default pick** |
| **Scaleway** | yes | FR | backup |
| **Outscale** | yes | FR | option |

**Excluded**: AWS, GCP, Azure US - even with post–Schrems II SCCs, CLOUD Act exposure is unacceptable for pediatric data.

## 5. Data-subject rights

| Right | Window | Exercised by |
|---|---|---|
| Access | 1 month | Parent (< 15) / minor (≥ 15) |
| Rectification | 1 month | - |
| Erasure ("right to be forgotten") | 1 month | - |
| Portability (HPO + raw export) | 1 month | - |
| Objection | 1 month | - |
| Restriction | 1 month | - |
| Consent withdrawal | Immediate | Without prejudice to prior-processing legality |

Dedicated interface in the parent app: "My data · export / delete".

## 6. Retention

- **Active**: throughout the medical follow-up with the prescribing pediatrician.
- **Intermediate archive**: 20 years **post-majority** of the child, in line with the French medical record (Art. R1112-7 CSP).
- **Deletion on request**: right to erasure exercisable at any time, except where legal medical-archiving duty applies.

## 7. DPO & register

- **External DPO** for year one (≈ €6k/yr, budgeted in the seed plan).
- **Processing register** (Art. 30 GDPR) maintained from day 1.
- **Contact**: `dpo@pedia.health` (mailbox reserved).

## 8. DPIA (AIPD - Analyse d'Impact relative à la Protection des Données)

**Mandatory** because of three cumulative factors:
1. Health data (Art. 9).
2. Minor (vulnerable public).
3. Algorithmic profiling (NER + pattern matching + LLM).

**Schedule**: DPIA kicked off early, finalized before open-beta production rollout.

## 9. Sub-processors (full chain - Art. 28 GDPR)

| Service | Planned provider | Location | DPA |
|---|---|---|---|
| Voice transcription | Whisper self-hosted / EU provider | FR / DE | ✅ |
| LLM structuring | FR HDS provider | FR | ✅ |
| Hosting | OVHcloud HDS | FR | ✅ |
| Monitoring / logs | EU provider (Grafana Cloud EU) | DE | ✅ |
| Product analytics | PostHog self-hosted | FR (on OVH) | ✅ |

**Rule**: no sub-processing outside the EU. If technically needed (e.g., a US model), no identifiable health data is sent - only anonymized embeddings, and even that requires deliberation.

## 10. Technical security

- **At-rest encryption**: AES-256 (managed by HDS host).
- **TLS 1.3** in transit (no earlier version accepted).
- **Pseudonymization** of patient identifiers DB-side.
- **MFA required** for pediatrician pro accounts.
- **Access logs** retained 3 years (HDS requirement).
- **Secret rotation**: quarterly.
- **Backups** encrypted, tested monthly, RPO 24 h / RTO 4 h.

## 11. What to say if the jury asks

### Short question → 15-second answer (see top of doc)

### Detailed question - 30 seconds
> *"On the regulatory side, Pedia is a class I medical device. No diagnostic aid, so not class IIa - our suggestions are non-diagnostic. CE marking in scope. HDS hosting in France, OVHcloud. Explicit parental consent under Art. 9-2-a GDPR. DPIA in progress - mandatory because we combine health data, minors, and AI. Retention aligned with the French medical record: 20 years post-majority. Nothing leaves the EU. An external DPO supports us from year one."*

### Trap question: "You're too small to handle all that" - 20 seconds
> *"Class I is the lightest regulatory level - self-declared CE marking with a technical file. An external DPO at €6k/yr covers GDPR compliance. The DPIA, our regulatory lead role, and the DPA with the HDS host are standard, not exotic. What would be heavy is class IIa - we don't go there until a clinical study justifies it."*

---

## Pre-pitch checklist (owned by Raphaël)

- [ ] External DPO identified and contacted (3-firm shortlist).
- [ ] OVHcloud HDS quote received.
- [ ] `dpo@pedia.health` mailbox active.
- [ ] 15-second stock answer memorized by at least **4 of 6** team members.
- [ ] `RGPD.md` reviewed by Ayda + Anouar (sanity-check on the Art. R1112-7 CSP reference).
