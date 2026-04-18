# Pedia

**Augmented pediatric health record.** So nothing is ever lost between two consultations.

Parents capture day-to-day observations - voice, text, photo, 30 seconds is enough. Pedia structures those observations into clinical language through the HPO ontology. Before each appointment, the pediatrician receives an actionable pre-consult report readable in **2 minutes**: narrative anamnesis, trend curves, weak signals, non-diagnostic pathways to explore.

## Why

- **4 years** - median diagnostic delay for a pediatric rare disease in France.
- **180 days** - clinical signal lost between two follow-up visits.

Pedia compresses those 4 years into a few months - without asking more of the parent, without lengthening the consultation.

## Team

| | |
|---|---|
| Fanette, Elom | dev |
| Raoul, Raphaël | dev + business |
| Ayda, Anouar | MD |

## Run the demo

```
open Pedia.html
```

Standalone HTML mockup (no build, no dependency). 5 screens - landing, parent view, voice capture, physician dashboard, recap. Navigate with arrow keys or the footer controls.

## Hackathon track

**Track 2 - AI in Pediatrics**, ANDCS × MIT Hackathon 2026 (17–19 April, Epitech Paris, Kremlin-Bicêtre). Pitch format: 3 min + 2 min Q&A, slides only (demo = screenshots of `Pedia.html`).

## Repo layout

```
Pedia.html              - HTML mockup of the demo (5 screens)
ANAMNESIS_REPORT.md     - reference semiology skeleton (UE 5 pediatrics)
PITCH.md                - slide-by-slide pitch script
PRD.md                  - product requirements
BUSINESS_PLAN.md        - business plan (seed one-pager, MIT-sourced)
PRACTICE_QUESTIONS.md   - jury Q&A prep (2 min)
RGPD.md                 - internal regulatory brief (French GDPR = RGPD)
CLAUDE.md               - project guidance for Claude Code
archive/                - prior pitch materials
references/             - UE 5 pediatric semiology reference
final-pitch/            - day-of deliverables
practice-pitch-2/       - work-in-progress drafts
```

## What Pedia is not

- Not a diagnostic tool - suggestions are non-diagnostic; the clinical decision stays with the physician.
- Not a telehealth consultation - Pedia prepares the appointment, it does not replace it.
- Not the official child health record - a complement, not a substitute.
