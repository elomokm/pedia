# CLAUDE.md - consignes pour Claude Code dans ce repo

## Qu'est-ce que Pedia

**Carnet de santé pédiatrique augmenté.** Les parents capturent des observations (voix / texte / photo, 30 s) ; une IA les structure via l'ontologie **HPO** ; le pédiatre lit une anamnèse pré-consultation en **2 minutes**.

Objectif : ramener le délai diagnostique médian d'une maladie rare pédiatrique de **4 ans** à quelques mois.

**À ne pas confondre** : l'ancien `README.md` mentionnait « neodose », piste abandonnée. Le produit actuel est **Pedia** (anciennement MyOntologyNote).

## Contexte hackathon

- **Hackathon ANDCS × MIT 2026** (17-19 avril, Epitech Paris, Kremlin-Bicêtre), **Track 2 - AI in Pediatrics**. Le surnom interne « Cosmic Harp » est informel ; les chaînes officielles utilisent le nom complet.
- **Pitch** : 3 min + 2 min Q&R. Slides uniquement pendant le pitch (pas de démo live, pas de logiciel à lancer). La démo = captures d'écran de `Pedia.html`.
- **Objectif : gagner** - chaque document doit être utilisable tel quel par l'équipe le jour J.

## Équipe

| Rôle | Prénoms |
|---|---|
| Dev | Fanette, Elom |
| Dev + business | Raoul, Raphaël |
| Médecin | Ayda, Anouar |

Les profils médecin (Ayda, Anouar) sont la source de vérité sémiologique : toute affirmation clinique passe par eux avant le pitch.

## Carte du repo

| Fichier / dossier | Rôle | Ne pas toucher sans raison |
|---|---|---|
| `Pedia.html` | maquette HTML de la démo (5 écrans, 1523 lignes) | oui : source des captures montrées au jury |
| `ANAMNESIS_REPORT.md` | squelette sémiologique (UE 5 pédiatrie) | oui : source de vérité des catégories |
| `PITCH.md` | script de pitch slide par slide | souvent édité pendant les répétitions |
| `PRD.md` | exigences produit | rarement édité |
| `BUSINESS_PLAN.md` | business plan (format one-pager SF, sources `[MIT]`) | souvent édité, mais **ne pas laisser dériver les chiffres** - `archive/business-plan-1min.md` fait foi |
| `PRACTICE_QUESTIONS.md` | Q&R jury | souvent édité |
| `RGPD.md` | brief réglementaire interne | oui : validé par les médecins |
| `archive/business-plan-1min.md` | chiffres business historiques, **source de vérité** | oui |
| `references/UE 5 Référentiel-Sémiologie Adulte et Pédiatrie.pdf` | référence sémiologie pédiatrique | oui |
| `final-pitch/` | livrables jour J | écrire ici quand demandé |
| `practice-pitch-2/` | brouillons en cours | bac à sable |
| `participant-handbook.zip` | document d'organisation du hackathon, **gitignoré** | oui |

## Règles

- **Langue des docs** : **anglais** (décision utilisateur - l'équipe peut pitcher en anglais, le jury est bilingue, et ça garde le matériel source portable). Ne pas retraduire en français sans confirmation explicite.
- **Ton** : concis, direct. Pas de marketing creux. Chiffres plutôt qu'adjectifs.
- **Chiffres business** : toujours tirés de `archive/business-plan-1min.md`. Ne jamais re-dériver dans un autre fichier sans vérifier.
- **Prix < ROI** sur chaque palier client : contrainte produit forte, à rappeler dans tous les documents business.
- **Tags de source** `[MIT]` · `[HPO]` : tagués inline dans `PITCH.md` et `BUSINESS_PLAN.md`. Ne pas enlever les tags.
  - `[MIT]` = MIT Sloan Healthcare Initiative + MIT Media Lab Connected Health + benchmark salarial.
  - `[HPO]` = Human Phenotype Ontology (Monarch Initiative, 17 000 phénotypes).
- **Règle de fraîcheur des données** : toute statistique citée doit être postérieure à 2020. Les citations pré-2020 (ex. DREES 2007) ont été retirées : ne pas les réintroduire.
- **Ancrage du pitch** : `PITCH.md` est **ancré** sur la cadence seed / demo-day - Kevin Hale (*How to pitch your startup*) + Michael Seibel (*Demo day pitch*) + Paul Graham (*How to convince investors*). Le guide *YC Series A pitch and deck* est consulté uniquement pour **la structure business** (slide 4 + `BUSINESS_PLAN.md`), **jamais** pour le ton du pitch : notre stade est pré-traction, notre format fait 3 minutes. Ne pas faire dériver la cadence vers un ton Series A.
- **Pas de démo à construire** : on ne code pas de back-end, ni de front-end supplémentaire, ni de CI. Tout ce qui existe est dans `Pedia.html`. Captures d'écran uniquement pendant le pitch.
- **Jamais** de diagnostic posé par l'IA dans les slides, le PRD ou le pitch. Toujours dire « pistes non diagnostiques » / « assistance à l'anamnèse ». La décision clinique reste au médecin.

## Git

- Remote : `git@github.com:elomokm/pedia.git` (repo partagé de l'équipe).
- Ne **jamais** `git push` sans demander à l'utilisateur - les coéquipiers veulent revoir en local.
- Ne **jamais** forcer le push, modifier des commits existants, rebase `main`.
- Commits : courts, en anglais, type conventionnel (`chore:`, `docs:`, `fix:`).

## Si on demande de modifier `Pedia.html`

- Cas légitime : aligner le patient de démo (Louis M., 2 ans) sur le personnage de la story du pitch si le prénom change.
- Cas non légitime : refonte graphique, nouvel écran, logique interactive. Refuser et proposer une modification ciblée.
