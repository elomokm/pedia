# CLAUDE.md — guide pour Claude Code dans ce repo

## Qu'est-ce que Pedia

**Carnet de santé pédiatrique augmenté.** Les parents capturent des observations (voix / texte / photo, 30 s) ; une IA les structure via l'ontologie **HPO** ; le pédiatre lit une anamnèse pré-consultation en **2 minutes**.

Cible : compresser les **4 ans** de retard diagnostique médian d'une maladie rare pédiatrique en quelques mois.

**Ne pas confondre** : le `README.md` antérieur mentionnait "neodose" — c'est une piste abandonnée. Le produit actuel est **Pedia** (anciennement MyOntologyNote).

## Contexte hackathon

- **Cosmic Harp 2026**, piste **Pédiatrie**.
- **Pitch** : 3 min + 2 min Q&A. Slides uniquement pendant le pitch (pas de démo live, pas de logiciel à lancer). Démo = captures de `Pedia.html`.
- **On vise à gagner** — chaque document doit être exploitable tel quel par l'équipe le jour J.

## Équipe

| Rôle | Noms |
|---|---|
| Dev | Fanette, Elom |
| Dev + business | Raoul, Raphaël |
| Med | Ayda, Anouar |

Les profils med (Ayda, Anouar) sont la source de vérité sémiologique — toute affirmation clinique passe par eux avant le pitch.

## Carte du repo

| Fichier / dossier | Rôle | Ne pas toucher sans raison |
|---|---|---|
| `Pedia.html` | mockup HTML de la démo (5 écrans, 1523 lignes) | oui — c'est la source des captures du jury |
| `ANAMNESIS_REPORT.md` | squelette sémiologique (UE 5 pédiatrie) | oui — source de vérité des catégories |
| `PITCH.md` | script du pitch slide par slide | édition fréquente pendant répétitions |
| `PRD.md` | product requirements | édition rare |
| `BUSINESS_PLAN.md` | plan d'affaires (SF startup one-pager, sources `[MIT]`) | édition fréquente, mais **ne pas faire dériver les chiffres** — `archive/business-plan-1min.md` fait foi |
| `PRACTICE_QUESTIONS.md` | Q&A jury | édition fréquente |
| `RGPD.md` | brief réglementaire interne | oui — vérifié par les med |
| `archive/business-plan-1min.md` | chiffres business historiques, **source de vérité** | oui |
| `references/UE 5 Référentiel-Sémiologie Adulte et Pédiatrie.pdf` | référentiel pédiatrique | oui |
| `final-pitch/` | livrables jour J | écrire dedans quand demandé |
| `practice-pitch-2/` | brouillons en cours | zone de jeu |
| `participant-handbook.zip` | doc d'organisation, **ignoré git** | oui |

## Règles

- **Langue docs** : français par défaut (équipe francophone, jury francophone, marché français). **Exception** : `PITCH.md` est en anglais — décision explicite pour jouer l'international (demande utilisateur). Ne pas retraduire sans confirmation.
- **Ton** : concis, direct. Pas de marketing creux. Chiffres > adjectifs.
- **Chiffres business** : toujours les reprendre depuis `archive/business-plan-1min.md`. Ne pas les re-dériver dans un autre fichier sans vérifier.
- **Prix < ROI** pour chaque tier client — contrainte forte du produit, à rappeler dans tout doc business.
- **Sources chiffres** `[MIT]` · `[DREES]` · `[HPO]` — tagguées inline dans `PITCH.md` et `BUSINESS_PLAN.md`. Ne pas enlever les tags.
  - `[MIT]` = MIT Sloan Healthcare Initiative + MIT Media Lab Connected Health + wage benchmark.
  - `[DREES]` = durée consultation pédiatrique (DREES 2007, médiane < 20 min).
  - `[HPO]` = Human Phenotype Ontology (Monarch Initiative, 17 000 phénotypes).
- **Référentiels pitch** : `PITCH.md` est **ancré** sur la cadence seed / demo-day — Kevin Hale (*How to pitch your startup*) + Michael Seibel (*Demo day pitch*) + Paul Graham (*How to convince investors*). Le guide *YC Series A pitch and deck* est consulté pour la **structure business** uniquement (slide 4 + `BUSINESS_PLAN.md`), **jamais** pour le ton du pitch — notre stage est pré-traction, notre format est 3 min. Ne pas migrer la cadence vers un ton Series A.
- **Pas de démo à construire** : on ne code pas de backend, de frontend supplémentaire, de CI. Tout ce qui existe est dans `Pedia.html`. Captures d'écran uniquement pendant le pitch.
- **Jamais** de diagnostic posé par l'IA dans les slides, le PRD, le pitch. Toujours "pistes non diagnostiques" / "aide à l'anamnèse". La décision clinique reste au praticien.

## Git

- Remote : `git@github.com:elomokm/pedia.git` (repo partagé avec l'équipe).
- Ne **jamais** `git push` sans demander à l'utilisateur — les coéquipiers veulent revoir en local.
- Ne **jamais** force-push, amender les commits existants, rebase `main`.
- Commits : courts, en anglais, type conventionnel (`chore:`, `docs:`, `fix:`).

## Si on te demande de modifier `Pedia.html`

- Cas légitime : aligner le patient démo (Louis M., 2 ans) sur le personnage de la story du pitch si on change le prénom.
- Cas non légitime : refonte graphique, ajout d'écran, logique interactive. Refuser et proposer un changement ciblé.
