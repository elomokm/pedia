# PITCH.md - Pedia · Track 2 AI in Pediatrics · Hackathon ANDCS × MIT 2026

> **Événement** : Hackathon ANDCS × MIT Hacking Medicine, 17-19 avril 2026, Epitech Paris, Kremlin-Bicêtre
> **Piste** : Track 2 · AI in Pediatrics
> **Format** : 3 min pitch + 2 min Q&R · slides uniquement · pas de démo live
> **Langue** : anglais (jury MIT)
> **Voix** : prose fluide, cadence de notre pitch archivé de 90 s (`archive/practice-pitch-1/myontologynote-pitch-90s.html`) : ouverture par un principe · rythme d'énumération (« voix, texte, photo ») · triades déclaratives (« prescribed by the physician, paid by the medical structure. Parents always free ») · clôture en cascade (« a pediatrician pays two euros a day. Parents pay zero. Children gain years »). Discipline de pitch seed / demo day en dessous : Kevin Hale (YC), Michael Seibel (YC), Paul Graham. Les guides Series A servent à la structure seulement : notre stade est pré-traction, notre format fait 3 min, pas 30. Chiffres plutôt qu'adjectifs. Montrer, pas dire. Pas de remplissage.
> **Démo** : images fixes (captures d'écran de `Pedia.html`), pas de produit interactif.
> **Objectif** : gagner Track 2.

---

## Timing (3:00)

| Temps | Slide | Bloc | Orateur |
|---|---|---|---|
| 0:00-0:20 | **1** | Hook - problème | **Ayda** (crédibilité médicale) |
| 0:20-1:20 | **2** | Comparaison d'anamnèse - solution | **Fanette** |
| 1:20-2:00 | **3** | Produit / POC - solution | **Fanette** (enchaînement) |
| 2:00-2:45 | **4** | Business · marché, prix, demande | **Fanette** *ou* **Ayda** (à décider en répétition) |
| 2:45-3:00 | **5** | Équipe · clôture en cascade · merci | même orateur que slide 4 |

---

## Slide 1 - Hook (0:00-0:20) · **mots forts, fond noir, typographie géante**

Trois lignes, typographie massive, une idée par ligne. Pas de puces, pas de logo, pas de sous-titre.

```
                In pediatrics,
                symptoms don't speak.
                Parents do.
```

Deuxième temps, même slide (révélation par fondu) :

```
                180 days lost between visits.
                4 years to diagnose a rare disease.
```

Troisième temps (révélation finale) :

```
                                      Pedia.
```

**Script (Ayda, cadence lente)** :

> « In pediatrics, everything relies on observation. A child doesn't describe their symptoms - their parents live them, every day.
>
> Ideally, a child is seen every three to six months. But between two consultations, one hundred and eighty days of observations escape the medical system. The result: a pediatric rare disease takes four years to be diagnosed.
>
> We are Pedia. »

*Source affichée en petit, bas de slide : `[MIT]` pour le chiffre de 4 ans.*

---

## Slide 2 - Problème → Solution · comparaison d'anamnèse (0:20-1:20) · **la slide héro**

Split vertical, même enfant, même fenêtre de consultation, deux rendus.

### Panneau gauche : **« Ce que le médecin note pendant la visite »**
Texture papier, serif manuscrite, flèches, mots rayés, fragments seulement.

```
 Louis, 2y
 → sleep?
 → langage... retard
 "ok au repas"
 crèche ?
 follow up 3mo
```

### Panneau droit : **« Ce que Pedia remet au médecin avant la visite »**
Blanc clinique, typographie propre, 15 lignes structurées depuis `ANAMNESIS_REPORT.md`.

| Catégorie | Rapport Pedia |
|---|---|
| Motif | Crises d'endormissement récurrentes (14 épisodes / 4 mois) · stagnation langage expressif (0 mot nouveau / 3 sem) |
| ATCD personnels | Bronchiolite à 8 mois · 3 otites · pas d'hospitalisation |
| ATCD familiaux | Oncle maternel : diagnostic TSA adulte |
| Traitements | Aucun |
| Allergies | Aucune déclarée · eczéma léger transitoire à 14 mois |
| Alimentation | Sélectivité alimentaire croissante · refus des textures molles depuis S-8 |
| Croissance (poids/taille) | 50ᵉ percentile poids · 75ᵉ percentile taille · courbes stables |
| Développement psychomoteur | Marche à 13 mois · premiers mots à 18 mois · plateau lexical depuis S-12 · pas de jeu symbolique |
| Vaccinations | À jour (calendrier 2024) |
| Symptôme - chronologie | Crises regroupées 20h-22h · 11 sur 14 suivent un jour de crèche |
| Symptôme - intensité / tolérance | 45-90 min d'endormissement · pleurs inconsolables · 3-4 réveils par nuit, S-6 à S-1 |
| Facteurs / soulagements | Aggravation après collectivité · soulagement par bercement rythmique + lumière tamisée |
| Tolérance comportementale | Fatigue diurne, appétit ↓, contact visuel variable |
| Signes associés | Alignement d'objets (12 mentions) · rires inappropriés · stéréotypies des mains |
| Comptage entourage | L'éducatrice de crèche rapporte les mêmes alignements (4 mentions) |

**Script (Fanette, ralentit sur le contraste)** :

> « Same child. Same appointment. On the left: what the pediatrician can scribble during the visit. On the right: what Pedia assembled from forty-seven parental observations over four months.
>
> Our AI turns each observation into a standardized clinical indicator - frequency, intensity, duration, triggers - powered by the HPO ontology, seventeen thousand internationally standardized phenotypes.
>
> What the visit missed, Pedia rebuilt. That is the difference between an early CAMSP referral at two, and a diagnosis at seven. »

*Tag source : `[HPO - Monarch Initiative]`*

---

## Slide 3 - Produit / POC (1:20-2:00) · **trois captures d'interface, grille à poids égal**

Trois captures côte à côte, issues de `Pedia.html` :

| Capture | Source | Légende |
|---|---|---|
| **A - Capture parent** | `Pedia.html` screen-2 | « Hold to speak. 30 seconds. » |
| **B - Structuration live** | `Pedia.html` screen-3 | « Transcription · HPO mapping · HDS hosting. » |
| **C - Tableau de bord médecin** | `Pedia.html` screen-4 | « Two-minute read. 47 observations, 5 weak signals. » |

Les trois au même instant, illustrant la boucle : parent parle → Pedia structure → médecin lit.

**Script (Fanette, enchaînement depuis slide 2)** :

> « Pedia is a multimodal, multilingual pediatric journal, prescribed by the physician. Three stakeholders, three interfaces. Parents log every day, in their mother tongue: voice, text, photo. Physicians read a structured report in medical language before each appointment, with four-month evolution curves and the weak signals detected across all observations. Hospital services get longitudinal records and avoided reconvocations.
>
> Behind the scenes: transcription, clinical extraction, structuring into HPO. Hosted HDS, RGPD-compliant, nothing leaves the EU.
>
> If a concerning pattern appears, the physician is alerted first - never a diagnosis, only a pathway to explore. The clinical decision stays with the physician. »

---

## Slide 4 - Business (2:00-2:45) · **mise en page one-pager seed**

Slide unique, cinq blocs, lisible en 10 secondes.

### En-tête : pitch en une ligne
> **Pedia turns 180 lost days between pediatric consultations into a 2-minute clinical report.**

### Bloc 1 : Marché `[MIT]`
- **TAM France - 31 M€/an** (10k pédiatres · 35k généralistes qui voient des enfants · 450 services hospitaliers)
- **SAM - 9 M€/an** (pédiatres libéraux + services hospitaliers prioritaires)
- **Expansion UE** : prochaine étape sur le rail d'interopérabilité HPO.

### Bloc 2 : Prix (**prix < ROI sur chaque palier**)

| Parent | Pédiatre libéral | Service hospitalier |
|---|---|---|
| **Gratuit, pour toujours** | **49 € / mois** | **12 k€ / an** |
| - | Récupère 11 h / mois de temps clinique ≈ 1 058 € | Reconvocations évitées + T2A récupérée |
| - | **ROI ×21** · seuil de rentabilité : 1m30s gagnées au total | **Payback < 6 mois** |

### Bloc 3 : Indicateurs d'unit economics
CAC **< 300 €** · LTV **> 1 800 €** · **LTV / CAC > 6** · Churn **< 2 %/mois** · Marge brute **> 85 %**

### Bloc 4 : Où on en est · prochaine étape concrète
- **Aujourd'hui** : maquette (`Pedia.html`) · sémiologie validée par nos deux médecins.
- **Ensuite** : pilote chronométré 50 pédiatres.
- **KPI nord** : temps gagné par consultation ≥ 2 min. Tous les autres KPI (CAC, LTV, churn, activation) en découlent.
- **Périmètre régulatoire** : MDR classe I, marquage CE dans le scope.

### Bloc 5 : Équipe + demande
**Six co-fondateurs** : Fanette, Elom (dev) · Raoul, Raphaël (dev + business) · Ayda, Anouar (médecins, crédibilité clinique qu'aucune équipe tech ne peut répliquer).

**Demande pre-seed : 400 k€**, trois livrables :
1. Pilote chronométré 50 pédiatres
2. Marquage CE classe I
3. Deux contrats hospitaliers payants

**Script (Fanette ou Ayda, à décider en répétition)** :

> « Three stakeholders. Prescribed by the physician, paid by the medical structure. Parents always free.
>
> An independent pediatrician pays forty-nine euros a month and recovers eleven hours of clinical time. ROI times twenty-one. A hospital service pays twelve thousand euros a year, payback under six months. On every tier, **price stays below the client's ROI**.
>
> TAM France: thirty-one million euros. Europe is the natural next step, on the HPO interoperability rail.
>
> Today we have a validated prototype. Our north-star KPI: at least two minutes saved per consultation, measured in a fifty-pediatrician chronometered pilot. We are raising four hundred thousand euros to run that pilot, get CE marking class one, and sign our first two hospital contracts. »

---

## Slide 5 - Équipe · clôture en cascade · merci (2:45-3:00) · **six visages, grille nette**

**Mise en page** : six portraits carrés sur une ligne (ou grille 3×2 si ratio étroit). Bandeau vert accent `#6FB58A` sous chaque photo. Rien d'autre que prénom + rôle.

```
┌────────┬────────┬────────┬────────┬────────┬────────┐
│ Fanette│  Elom  │ Raoul  │Raphaël │  Ayda  │ Anouar │
│  dev   │  dev   │  dev + │  dev + │   MD   │   MD   │
│        │        │business│business│        │        │
└────────┴────────┴────────┴────────┴────────┴────────┘
```

Ligne optionnelle en haut : **« Two physicians. Four engineers. The pairing is the moat. »**

**Script (même orateur que slide 4, les visages apparaissent à l'écran)** :

> « Two physicians. Four engineers. The pairing is the moat. »
>
> *(pause, regarder le jury)*
>
> « A pediatrician pays two euros a day, recovers eleven hours a month. Parents pay zero. Children gain years of avoided diagnostic wandering.
>
> Thank you. »

**Notes de répétition** :
- La slide 5 apparaît au moment où l'orateur dit *« Two physicians. Four engineers. »* : son propre visage est sur la slide, contact direct avec le jury.
- La cascade (« two euros a day... parents pay zero... children gain years ») tombe alors que la grille d'équipe reste visible : les visages amplifient la clôture humaine.
- Tenir la slide pendant le silence, puis « Thank you. »

---

## Captures à produire depuis `Pedia.html`

Toutes à 1440 × 900, PNG, pleine page :

| ID | Slide cible | Écran `Pedia.html` | Cadrage |
|---|---|---|---|
| A | Slide 3 gauche | screen-2 | téléphone avec CTA vocal |
| B | Slide 3 milieu | screen-3 | capture vocale + pipeline |
| C | Slide 3 droite | screen-4 | bandeau patient + anamnèse narrative + signaux faibles |
| D | Slide 2 droite (overlay optionnel) | screen-4 | bloc narratif seul, pour le visuel de rapport d'anamnèse |

**Cohérence patient** : `Pedia.html` affiche déjà **Louis M., 2 ans**. Pas de renommage nécessaire sauf si l'équipe choisit une autre identité de démo.

## Portraits d'équipe pour la slide 5

Six photos carrées tête-et-épaules, même cadrage, fond neutre, bandeau vert d'accent :

| Qui | Rôle | Nom de fichier (suggéré) |
|---|---|---|
| Fanette | dev | `team/fanette.jpg` |
| Elom | dev | `team/elom.jpg` |
| Raoul | dev + business | `team/raoul.jpg` |
| Raphaël | dev + business | `team/raphael.jpg` |
| Ayda | MD | `team/ayda.jpg` |
| Anouar | MD | `team/anouar.jpg` |

Shoot samedi après-midi dans l'espace hackathon si les photos ne sont pas déjà prêtes. Cadrage carré, minimum 600×600 pour l'export HD Google Slides. Éclairage cohérent sur les six.

---

## Checklist bonnes pratiques de pitch (à cocher avant le jour J)

> Ancré sur Hale, Seibel, Graham : voir *Sources* en bas de ce doc.

- [ ] La slide 1 dit au jury ce qu'est Pedia en moins de 20 secondes.
- [ ] La slide 2 **montre**, ne dit pas : le jury voit l'écart d'anamnèse, il n'a pas besoin d'être convaincu.
- [ ] La slide 3 est le produit, pas un dessin de concept. Uniquement des vraies captures.
- [ ] La slide 4 a des **chiffres plutôt que des adjectifs**. Pas de « best-in-class », pas de « révolutionnaire ».
- [ ] La slide 5 a six portraits alignés, éclairage cohérent ; prénom + rôle visibles sur chaque tuile.
- [ ] Chaque affirmation a un tag de source visible : `[MIT]`, `[HPO]`.
- [ ] La demande est concrète : montant en € + ce que ça achète.
- [ ] Chaque slide défend une seule idée. Si deux affirmations sont nécessaires, la split.
- [ ] La cascade de clôture tombe sur la grille d'équipe, puis silence, puis « Thank you. »

---

## Checklist de répétition

- [ ] Run-through complet sous 3:05, trois fois, au chronomètre.
- [ ] Ayda et Anouar valident les lignes d'anamnèse de la colonne droite de la slide 2 contre la sémiologie pédiatrique UE 5.
- [ ] Captures A, B, C produites et insérées au bon cadrage.
- [ ] Exercice Q&R depuis `PRACTICE_QUESTIONS.md` : chaque réponse sous 20 s à l'oral.
- [ ] Qui-parle-quand fixé (tableau en haut de ce doc).
- [ ] Zéro mot parasite (« so », « kind of », « basically ») : enregistrer et couper.

---

## Sources

**Pitch craft (ancres principales, calées sur notre stade et notre format)**
- Kevin Hale - *How to pitch your startup* · YC Startup School · https://www.ycombinator.com/library/6q-how-to-pitch-your-company
- Michael Seibel - *How to build the perfect demo day pitch* · YC · https://www.ycombinator.com/library/6s-how-to-build-the-perfect-demo-day-pitch
- Paul Graham - *How to convince investors* · http://paulgraham.com/convince.html

**Guides de deck Series A (référence de structure seulement, pas de cadence)**
- *How to build a great Series A pitch and deck* · YC Library · https://www.ycombinator.com/library/8d-how-to-build-a-great-series-a-pitch-and-deck

**Sources de contenu**
- `[MIT]` : MIT Sloan Healthcare Initiative · MIT Media Lab Connected Health
- `[HPO]` : Human Phenotype Ontology, Monarch Initiative · https://hpo.jax.org
