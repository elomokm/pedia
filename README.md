# Pedia

**Carnet de santé pédiatrique augmenté.** Pour que plus rien ne se perde entre deux consultations.

Les parents capturent au quotidien — voix, texte, photo, 30 secondes suffisent. Pedia structure ces observations en langage clinique via l'ontologie HPO. Le pédiatre reçoit, avant chaque consultation, une synthèse exploitable en **2 minutes** : anamnèse narrative, courbes de tendance, signaux faibles, pistes à explorer.

## Pourquoi

- **4 ans** de retard diagnostique médian pour une maladie rare pédiatrique en France.
- **180 jours** de signal perdus entre deux consultations de suivi.
- **12 minutes** pour reconstruire 3 mois de mémoire pendant le rendez-vous.

Pedia comprime ces 4 ans à quelques mois — sans rien demander de plus au parent, sans alourdir la consultation.

## Équipe

| | |
|---|---|
| Fanette, Elom | dev |
| Raoul, Raphaël | dev + business |
| Ayda, Anouar | med |

## Lancer la démo

```
open Pedia.html
```

Mockup HTML autonome (pas de build, pas de dépendance). 5 écrans — landing, vue parent, saisie vocale, tableau de bord médecin, récap. Navigation par les touches flèches et le footer.

## Piste hackathon

**Pediatrie** — Cosmic Harp 2026. Format pitch : 3 min + 2 min Q&A, slides uniquement (démo = captures de `Pedia.html`).

## Structure du repo

```
Pedia.html              — mockup HTML de la démo (5 écrans)
ANAMNESIS_REPORT.md     — squelette sémiologique de référence (UE 5 pédiatrie)
PITCH.md                — script du pitch slide par slide
PRD.md                  — product requirements
BUSINESS_PLAN.md        — plan d'affaires (format SF startup, sources MIT)
PRACTICE_QUESTIONS.md   — préparation Q&A jury (2 min)
RGPD.md                 — brief réglementaire interne
CLAUDE.md               — consignes pour Claude Code
archive/                — matériaux des pitches précédents
references/             — référentiel de sémiologie pédiatrique UE 5
final-pitch/            — captures et slides livrés au jury
practice-pitch-2/       — brouillons en cours
```

## Ce que Pedia n'est pas

- Pas un outil de diagnostic — les suggestions sont non diagnostiques, l'avis médical reste celui du praticien.
- Pas une télé-consultation — Pedia prépare le rendez-vous, ne le remplace pas.
- Pas un carnet de santé officiel — complément, pas substitut.
