# PRACTICE_QUESTIONS.md - jury Q&A prep (2 min)

> **Budget**: 2 min after the pitch. We aim for **5 to 6 questions**, short answer (≤ 20 s each out loud).
> **Rule**: if a question goes off-topic or is a trap, pivot in **15 s** back to Problem / Solution / ROI / Team.
> **Attribution**: each question has a primary responder (**P**) and a back-up (**B**).

---

## 🩺 Medical - defended by Ayda / Anouar

### Q1. "Aren't your suggestions a diagnosis in disguise?"
- **P**: Ayda · **B**: Anouar
- *"No. Pedia posts no diagnosis. What shows up in 'pathways to explore' is **non-diagnostic referrals** - CAMSP, ENT, neuropediatrician - or **prerequisite somatic work-ups** (audiometry, ferritin). The clinical decision stays entirely with the practitioner. That's precisely what keeps us a class I medical device, not class IIa."*

### Q2. "Won't parents over-signal and work themselves up into anxiety?"
- **P**: Anouar · **B**: Ayda
- *"The parent interface displays **no alerts**, no red colors, no suggestions. On the parent side, Pedia is a **journal**, not a diagnostician. Weak signals are only visible to the physician. We deliberately shield the parent from symptom-seeking bias."*

### Q3. "How do you validate the accuracy of the generated anamnesis?"
- **P**: Ayda · **B**: Elom
- *"Three guardrails. One: extraction into the **HPO** ontology - 17,000 standardized phenotypes, not free text. Two: every entry is **traceable back to the source observation** (audio + transcript). Three: the pediatrician can edit the summary before export. Concordance study planned on the 50-pediatrician pilot."*

### Q4. "What if the child has a disease the AI doesn't know about?"
- **P**: Anouar · **B**: Ayda
- *"HPO covers every rare disease indexed in Orphanet. For an unmapped phenotype, Pedia surfaces the **raw observations** in the summary, timestamped. The physician always keeps access to the unstructured data. We don't replace clinical judgment - we **feed it**."*

---

## 💻 Technical - defended by Elom / Fanette

### Q5. "Why HPO and not a custom taxonomy?"
- **P**: Elom · **B**: Fanette
- *"HPO is the **international standard** for pediatric interoperability, maintained by the Monarch Initiative, adopted by French rare-disease pathways. Rolling our own cuts us off from the networks and pathways. HPO is also our entry key into Europe."*

### Q6. "A parent's voice at 3 a.m., exhausted - does your transcription hold up?"
- **P**: Fanette · **B**: Elom
- *"Whisper FR is robust to ambient noise. Measured median latency: 420 ms. When the transcription is uncertain, we surface a confidence score and the parent can listen again. Raw audio is kept - never deleted before confirmation."*

### Q7. "OpenAI / US - how do you handle Schrems II?"
- **P**: Elom · **B**: Raoul
- *"100% EU stack in production. Whisper can run on-prem or via an EU provider. LLM structuring runs on a French or German HDS provider. No health data leaves the EU. Details in our internal RGPD brief."*

---

## 💰 Business - defended by Raoul / Raphaël

### Q8. "Why €49 and not €99?"
- **P**: Raoul · **B**: Raphaël
- *"Psychological threshold under €50. Below that, the buying decision doesn't go up to the practice accountant - the pediatrician decides alone. Premium €79 upsell planned later: HAS-based vaccination advice + public-health alerts. The rule holds: **price < ROI** on every tier."*

### Q9. "How do you justify 11 hours saved per month?"
- **P**: Raphaël · **B**: Raoul
- *"Assumption: 4 min per consultation × 25 consultations/day × 20 days = 11 h. To be validated in the chronometered pilot. **Safety threshold**: even at 1 min saved, ROI stays ×5. We never pitch above that figure."*

### Q10. "You're up against Doctolib with 300,000 physicians - you're dead."
- **P**: Raoul · **B**: Raphaël
- *"Doctolib does **appointment booking** and **teleconsult**. We do **longitudinal parent-child capture** between consultations. Different job, different payer (Doctolib = multi-specialty GPs, us = pediatricians + pediatric hospital services). Our moat: HPO ontology, multilingual pipeline, physician-prescribed distribution. Twelve to eighteen months for a competitor to copy."*

### Q11. "Why does the hospital tier show lower ROI than the independent pediatrician tier?"
- **P**: Raoul · **B**: Raphaël
- *"Because hospitals don't monetize individual time. They buy **budget economy** - avoided reconvocations + recovered T2A billing. Payback under six months, which is ultra-competitive against classic hospital SaaS at 12–18 months."*

### Q12. "Where do your market numbers come from?"
- **P**: Raoul · **B**: Raphaël
- *"MIT sources - MIT Sloan Healthcare Initiative on pediatric cost of care, and MIT Media Lab Connected Health on parental digital-health adoption. Cross-checked with CNAM Santé directory for the France practitioner counts."*

---

## ⚖️ Regulatory - defended by Raphaël / Ayda

### Q13. "GDPR, pediatric health data - how do you handle it?"
- **P**: Raphaël · **B**: Ayda
- *"Short answer: **class I medical-device SaaS, HDS hosting, CE mark in scope, DPIA in progress, explicit parental consent Art. 9-2-a GDPR, no transfer outside the EU.** Full brief in our `RGPD.md`."*

### Q14. "What happens when the child turns into an adult?"
- **P**: Ayda · **B**: Raphaël
- *"At 15, the minor takes over consent (French law). File kept 20 years post-majority for coherence with the French medical record (Art. R1112-7 CSP). Rights to access, rectification, erasure guaranteed at any time - response window: 1 month."*

---

## 👥 Team - defended by Fanette

### Q15. "Six of you - that's a lot for a pre-seed. Who leaves when?"
- **P**: Fanette · **B**: Raoul
- *"Nobody leaves - we **complement**. Two physicians, Ayda and Anouar, provide clinical credibility no tech-only competitor can replicate. Two devs, Elom and me, carry the product. Two dev-business, Raoul and Raphaël, cover independent-pediatrician and hospital GTM. No redundancy."*

### Q16. "Why would you win over a 100%-medical or 100%-tech team?"
- **P**: Raphaël · **B**: Ayda
- *"Because Pedia is neither a tech tool we sell to doctors, nor a medical app we outsource to a dev shop. It's a **physician-parent interface** - it requires both cultures in the same room every day. We already are that configuration."*

---

## 🎯 If the jury goes off-topic - pivot line

> *"Interesting question - happy to come back to it. Before that, on what brought us here: `[one of three anchors: 4-year diagnostic delay · ROI ×21 · 30-second parental capture]`."*

## 🛡️ What we **never** say

- A time-saved figure > 11 h without "hypothesis to be validated".
- A head-on comparison to Doctolib other than "different job".
- A promise of automated diagnosis.
- A percentage improvement in diagnostic delay before we have the pilot.
- A price below €49 (kills margin, kills the perception of value).

## 🪜 Priorities if we only get 2 out of 5 questions

1. **Q1 (disguised diagnosis?)** - the classic trap. Win it calmly.
2. **Q8 or Q9 (pricing / ROI)** - shows business mastery.
3. **Q10 (competitors)** - shows strategy.
4. The rest is filler.
