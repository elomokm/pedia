# Pedia

**Carnet de santé pédiatrique augmenté.** Pour que rien ne se perde entre deux consultations.

Les parents capturent leurs observations au quotidien : voix, texte, photo, 30 secondes suffisent. Pedia structure ces observations en langage clinique via l'ontologie HPO. Avant chaque rendez-vous, le pédiatre reçoit une synthèse lisible en **2 minutes** : anamnèse narrative, courbes de tendance, signaux faibles, pistes non diagnostiques à explorer.

## Pourquoi

- **4 ans** : délai diagnostique médian pour une maladie rare pédiatrique en France.
- **180 jours** : signal clinique perdu entre deux consultations de suivi.

Pedia ramène ces 4 ans à quelques mois, sans en demander plus au parent, sans rallonger la consultation.

## Équipe

| | |
|---|---|
| Fanette, Elom | dev |
| Raoul, Raphaël | dev + business |
| Ayda, Anouar | Médecin |

## Lancer la démo

```
open Pedia.html
```

Maquette HTML autonome (pas de build, pas de dépendance). 5 écrans : landing, vue parent, capture vocale, tableau de bord médecin, récapitulatif. Naviguer avec les flèches ou les contrôles en bas de page.

## Piste hackathon

**Track 2 - AI in Pediatrics**, Hackathon ANDCS × MIT 2026 (17-19 avril, Epitech Paris, Kremlin-Bicêtre). Format : 3 min de pitch + 2 min de Q&R, slides uniquement (démo = captures d'écran de `Pedia.html`).

## Arborescence

```
Pedia.html              - maquette HTML de la démo (5 écrans)
ANAMNESIS_REPORT.md     - squelette sémiologique de référence (UE 5 pédiatrie)
PITCH.md                - script de pitch slide par slide
PRD.md                  - exigences produit
BUSINESS_PLAN.md        - business plan (one-pager seed, sources MIT)
PRACTICE_QUESTIONS.md   - préparation Q&R jury (2 min)
RGPD.md                 - brief réglementaire interne
CLAUDE.md               - consignes projet pour Claude Code
archive/                - matériels de pitch antérieurs
references/             - référence sémiologie pédiatrique UE 5
final-pitch/            - livrables jour J
practice-pitch-2/       - brouillons en cours
```

## Ce que Pedia n'est pas

- Ce n'est pas un outil de diagnostic : les suggestions sont non diagnostiques, la décision clinique reste au médecin.
- Ce n'est pas une téléconsultation : Pedia prépare la consultation, il ne la remplace pas.
- Ce n'est pas le carnet de santé officiel : complément, pas substitut.
