# CLAUDE.md - guidance for Claude Code in this repo

## What Pedia is

**Augmented pediatric health record.** Parents capture observations (voice / text / photo, 30 s); an AI structures them through the **HPO** ontology; the pediatrician reads a pre-consult anamnesis in **2 minutes**.

Goal: compress the **4-year** median diagnostic delay of a pediatric rare disease down to a few months.

**Do not confuse**: the earlier `README.md` mentioned "neodose" - that's an abandoned direction. The current product is **Pedia** (formerly MyOntologyNote).

## Hackathon context

- **ANDCS × MIT Hackathon 2026** (17–19 April, Epitech Paris, Kremlin-Bicêtre), **Track 2 - AI in Pediatrics**. Internal nickname "Cosmic Harp" is informal; official strings use the full event + track name.
- **Pitch**: 3 min + 2 min Q&A. Slides only during the pitch (no live demo, no software to launch). Demo = screenshots of `Pedia.html`.
- **Goal is to win** - every document must be usable as-is by the team on the day.

## Team

| Role | Names |
|---|---|
| Dev | Fanette, Elom |
| Dev + business | Raoul, Raphaël |
| MD | Ayda, Anouar |

The MD profiles (Ayda, Anouar) are the semiology source of truth - every clinical claim must go through them before the pitch.

## Repo map

| File / folder | Role | Don't touch without reason |
|---|---|---|
| `Pedia.html` | HTML mockup of the demo (5 screens, 1523 lines) | yes - this is the source of the screenshots shown to the jury |
| `ANAMNESIS_REPORT.md` | semiology skeleton (UE 5 pediatrics) | yes - source of truth for categories |
| `PITCH.md` | slide-by-slide pitch script | edited often during rehearsals |
| `PRD.md` | product requirements | edited rarely |
| `BUSINESS_PLAN.md` | business plan (SF one-pager format, `[MIT]` sources) | edited often, but **don't let the numbers drift** - `archive/business-plan-1min.md` is the source of truth |
| `PRACTICE_QUESTIONS.md` | jury Q&A | edited often |
| `RGPD.md` | internal regulatory brief (RGPD = French GDPR) | yes - validated by the MDs |
| `archive/business-plan-1min.md` | historical business figures, **source of truth** | yes |
| `references/UE 5 Référentiel-Sémiologie Adulte et Pédiatrie.pdf` | pediatric semiology reference | yes |
| `final-pitch/` | day-of deliverables | write here when asked |
| `practice-pitch-2/` | work-in-progress drafts | playground |
| `participant-handbook.zip` | hackathon organization doc, **gitignored** | yes |

## Rules

- **Doc language**: **English** (user decision - the team may pitch in English, the jury is bilingual, and it keeps the source material portable). Do not retranslate to French without explicit confirmation.
- **Tone**: concise, direct. No empty marketing. Numbers > adjectives.
- **Business numbers**: always pull from `archive/business-plan-1min.md`. Never re-derive in another file without verifying.
- **Price < ROI** on every client tier - strong product constraint, must be restated in every business doc.
- **Source tags** `[MIT]` · `[HPO]` - tagged inline in `PITCH.md` and `BUSINESS_PLAN.md`. Do not remove the tags.
  - `[MIT]` = MIT Sloan Healthcare Initiative + MIT Media Lab Connected Health + wage benchmark.
  - `[HPO]` = Human Phenotype Ontology (Monarch Initiative, 17,000 phenotypes).
- **Data recency rule**: every cited statistic must be post-2020. Pre-2020 citations (e.g. DREES 2007) were retired - do not reintroduce.
- **Pitch anchors**: `PITCH.md` is **anchored** on seed / demo-day cadence - Kevin Hale (*How to pitch your startup*) + Michael Seibel (*Demo day pitch*) + Paul Graham (*How to convince investors*). The *YC Series A pitch and deck* guide is consulted for **business structure** only (slide 4 + `BUSINESS_PLAN.md`), **never** for the pitch tone - our stage is pre-traction, our format is 3 minutes. Do not migrate the cadence toward a Series A tone.
- **No demo to build**: we don't code a backend, additional frontend, or CI. Everything that exists is in `Pedia.html`. Screenshots only during the pitch.
- **Never** let the AI post a diagnosis in the slides, PRD, or pitch. Always say "non-diagnostic pathways" / "anamnesis assistance". The clinical decision stays with the physician.

## Git

- Remote: `git@github.com:elomokm/pedia.git` (shared team repo).
- **Never** `git push` without asking the user - teammates want to review locally first.
- **Never** force-push, amend existing commits, rebase `main`.
- Commits: short, English, conventional type (`chore:`, `docs:`, `fix:`).

## If asked to modify `Pedia.html`

- Legitimate case: align the demo patient (Louis M., 2 years) with the pitch story character if the first name changes.
- Illegitimate case: graphic overhaul, new screen, interactive logic. Refuse and propose a targeted change.
