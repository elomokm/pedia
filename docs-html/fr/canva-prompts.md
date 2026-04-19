# canva-prompts.md

Briefs par slide pour construire le deck de pitch dans Canva. Chaque bloc est autonome : à copier-coller dans Canva Magic Design ou à donner à un coéquipier qui construit cette slide. Toutes les contraintes graphiques sont intégrées pour que les cinq slides soient cohérentes.

---

## Contraintes graphiques globales (sur chaque slide)

**Couleurs de marque** (depuis `BRAND.md`, après le pivot vert) :

| Rôle | Hex |
|---|---|
| Vert primaire (parent, CTA, accents) | `#4D9F7D` |
| Vert moyen (accents doux, chips) | `#6FB58A` |
| Vert soft (fonds, blobs) | `#8BC9A5` |
| Vert tint (wash pâle) | `#E8F1EA` |
| Bleu primaire (médecin, titres) | `#1E3A8A` |
| Bleu accent (liens, sparklines) | `#3B82F6` |
| Bleu tint (cartes médecin) | `#DBE5F7` |
| Ink fort (corps) | `#0F172A` |
| Ink moyen (corps secondaire) | `#475569` |
| Ink léger (tags source, légendes) | `#94A3B8` |
| Bordure | `#E2E8F0` |
| Fond page (neutre) | `#F7F9FC` |
| Page vert pastel (chaud, alt) | `#F4F9F5` |

**Typographie** :
- Display / titres / chiffres : **Fraunces** (serif), poids 500 ou 600, optical sizing activé.
- Corps / légendes : **Inter**, poids 400 ou 500.
- Tags de source, horodatages, petit mono : **JetBrains Mono**, 10 à 11 pt, couleur `#94A3B8`.

**Ratio** : 16:9, 1920 × 1080.

**À ne pas faire** :
- Pas de tiret cadratin (utiliser trait d'union, deux-points, parenthèses).
- Pas de couleur orange nulle part. Palette vert + bleu + neutres uniquement.
- Pas d'illustrations stock de médecins souriants. Captures réelles de `Pedia.html` sur les slides 2 et 3, vraies photos d'équipe sur la slide 5.
- Pas de « révolutionnaire », « best-in-class », « de pointe ». Chiffres, pas adjectifs.
- Pas d'omission des tags de source. Chaque chiffre doit avoir `[MIT]` ou `[HPO]` visible quelque part sur la slide.

---

## Slide 1 - Hook (0:00 à 0:20)

**Brief en une ligne** : fond sombre, serif massive, trois beats qui révèlent un principe, deux chiffres, puis la marque.

**Mise en page** :
- Fond full-bleed `#0F172A` (ink fort).
- Trois beats de texte, aligné à gauche, padding 80 px depuis la gauche, centré verticalement.
- Beat final (« Pedia. ») aligné à droite, italique, une ligne sous la ligne des deux chiffres.

**Contenu texte (exact)** :

```
In pediatrics,
symptoms don't speak.
Parents do.
```

puis révélation :

```
180 days lost between visits.
4 years to diagnose a rare disease.
```

puis :

```
                                      Pedia.
```

**Couleurs** :
- Fond : `#0F172A`.
- Principe en trois lignes : blanc `#FFFFFF`.
- Deux chiffres : blanc, avec « 180 days » et « 4 years » en vert `#6FB58A` en gras.
- « Pedia. » en vert primaire `#4D9F7D`, Fraunces 600 italique.

**Typographie** :
- Lignes de principe : Fraunces 500, 64 pt, hauteur de ligne 1.15, tracking -0.01 em.
- Stats : Inter 500, 22 pt, couleur blanche ; chiffres Fraunces 600, 28 pt, couleur `#6FB58A`.
- « Pedia. » : Fraunces 600 italique, 56 pt.

**Coin bas-droit** : petit JetBrains Mono 10 pt `[MIT]`, couleur `#94A3B8`.

**À ne pas faire** : ajouter logos, tagline, marque Pedia dans les deux premiers beats. La slide démarre volontairement spartiate.

---

## Slide 2 - Comparaison d'anamnèse (0:20 à 1:20) - slide héro

**Brief en une ligne** : split-panel même-enfant-deux-vues. Gauche : scribble papier chaud. Droite : rapport clinique structuré.

**Mise en page** :
- Full-bleed 16:9 split vertical 50/50.
- Panneau gauche : fond vert pastel `#F4F9F5`, texture papier simulée (bruit subtil).
- Panneau droit : fond blanc `#FFFFFF`, bordure gauche 4 px en bleu primaire `#1E3A8A`.

**Contenu panneau gauche** (scribble manuscrit, serif ou cursive) :

```
Louis, 2y
-> sleep?
-> langage... retard
"ok au repas"
crèche ?
follow up 3mo
```

Rayer « retard » d'un trait manuscrit fin.

**Titre de colonne du panneau gauche** (haut, 12 pt majuscules, letter-spacing 0.08 em, couleur `#475569`) :
`What the doctor writes during the visit`

**Titre de colonne du panneau droit** (même style, couleur `#1E3A8A`) :
`What Pedia hands the doctor before the visit`

**Options du panneau droit** (choisir au moment du build) :

- **Option A (préférée)** : capture directe de `Pedia.html` screen-4, recadrée sur le bloc « Résumé narratif + anamnèse parentale » dans les 7 colonnes de gauche. Crop tight, 1600 × 1200 minimum, PNG. Insérer full-bleed dans le panneau droit, ajouter la bordure bleue gauche de 3 px par-dessus. Zéro reconstruction.
- **Option B (fallback)** : reconstruire le tableau dans Canva selon la structure ci-dessous. Seulement si la capture est trop dense en texte à l'export final.

**Lignes du tableau du panneau droit (pour Option B, ou pour vérifier le contenu de la capture)** (typographie clinique, 11 à 12 pt, chaque ligne alignée dans une grille 2 colonnes avec colonne gauche 110 px pour les labels de catégorie) :

| Catégorie (`#94A3B8`, 9 pt maj.) | Valeur (`#0F172A`, 12 pt) |
|---|---|
| Chief complaint | Recurrent sleep-onset crises (14 episodes / 4 mo) + expressive-language stagnation |
| Personal history | Bronchiolitis at 8 mo, 3 otitis, no hospitalization |
| Family history | Maternal uncle, adult ASD diagnosis |
| Nutrition | Refuses soft textures since W-8 |
| Timing | Crises cluster 8 pm to 10 pm, 11 of 14 follow a daycare day |
| Triggers | Worse after collective care, relieved by rhythmic rocking |
| Associated signs | Object-lining play (12 mentions), hand stereotypies |
| Circle corroboration | Daycare educator reports same lining (4 mentions) |

**Encart en bas du panneau droit** (bloc d'accent vert) :
`From 47 parental observations, frequency, intensity, duration, triggers, via HPO ontology.`
Fond `#E8F1EA`, bordure gauche `#6FB58A` 3 px, texte `#0F172A`, Inter 10 pt.

**Tag de source bas-droit** : `[HPO - Monarch Initiative]`, JetBrains Mono 10 pt, `#94A3B8`.

**Typographie** :
- Scribble : police manuscrite (ex. Caveat), 20 pt, couleur `#2D3B36`.
- Entêtes panneau droit : Inter 600, 11 pt majuscules letter-spaced.
- Labels de lignes : JetBrains Mono 9 pt majuscules, couleur `#94A3B8`.
- Valeurs de lignes : Inter 400, 12 pt, couleur `#0F172A`.

**À ne pas faire** : rendre le panneau gauche propre ou apologétique. Le contraste est tout l'enjeu. Scribble désordonné, mots rayés, fragments.

---

## Slide 3 - Produit (1:20 à 2:00)

**Brief en une ligne** : trois captures d'interface depuis `Pedia.html` dans une grille horizontale à poids égal, avec une légende d'une ligne au-dessus de chaque.

**Mise en page** :
- Fond blanc `#FFFFFF`.
- Ligne haut : `Prescribed by the physician, multimodal, multilingual pediatric journal.` Inter 500, 18 pt, couleur `#475569`, centré, 40 px du haut.
- Trois cartes de largeur égale côte à côte, gap 24 px, pleine extension verticale sous la ligne haut.
- Carte 1 (parent) : fond vert pâle `#E8F1EA`, bordure gauche 3 px `#4D9F7D`.
- Carte 2 (pipeline) : fond gris pâle `#F7F9FC`, bordure gauche 3 px `#94A3B8`.
- Carte 3 (médecin) : fond bleu pâle `#DBE5F7`, bordure gauche 3 px `#1E3A8A`.

**Contenu des cartes** :

Carte 1 (parent) :
- Badge mono haut : `PARENT`, 9 pt, couleur `#94A3B8`.
- Capture : `Pedia.html` screen-2 (téléphone parent avec CTA vocal).
- Légende sous la capture : `Hold to speak. 30 seconds.` Fraunces 500, 18 pt, couleur `#2D3B36`.

Carte 2 (pipeline) :
- Badge mono : `PIPELINE`, 9 pt, `#94A3B8`.
- Capture : `Pedia.html` screen-3 (capture vocale + pipeline HPO).
- Légende : `Transcription, HPO mapping, HDS hosting.` Fraunces 500, 18 pt, couleur `#0F172A`.

Carte 3 (médecin) :
- Badge mono : `PHYSICIAN`, 9 pt, `#94A3B8`.
- Capture : `Pedia.html` screen-4 (moitié haute : bandeau patient + anamnèse narrative).
- Légende : `2-minute read before the visit.` Fraunces 500, 18 pt, couleur `#1E3A8A`.

**Tag de source bas-droit** : `[HPO]`, JetBrains Mono 10 pt, `#94A3B8`.

**À ne pas faire** : inventer des illustrations produit. Utiliser les vraies captures `Pedia.html` à 1440 × 900 PNG, crop serré sur la zone téléphone ou dashboard. Pas de cadres de mockup autour. Pas d'ombres portées (les cartes ont déjà des bordures).

---

## Slide 4 - Business (2:00 à 2:45)

**Brief en une ligne** : mise en page one-pager seed. Un titre, une ligne de trois tuiles de prix, une strip de chiffres, un bloc de demande.

**Mise en page** :
- Fond blanc `#FFFFFF`, padding page 52 px.
- Titre, haut, Fraunces 500, 26 pt, couleur `#1E3A8A`, avec la phrase « Parents always free » colorée en vert primaire `#4D9F7D` et italique.
- Trois tuiles de prix côte à côte, largeur égale, gap 16 px.
- Strip d'unit economics sur une seule ligne en dessous, centrée.
- Bloc de demande en bas en deux colonnes : KPI à gauche, demande à droite.

**Texte du titre** :
`Prescribed by the physician, paid by the medical structure. Parents always free.`

**Tuiles de prix** (chacune 14 px de padding, border-radius 8 px, bordure 1 px `#E2E8F0`, bordure gauche 3 px de la couleur de la tuile) :

| Tuile 1 (parent) | Tuile 2 (pédiatre) | Tuile 3 (hôpital) |
|---|---|---|
| rôle : `PARENTS` (mono 10 pt `#475569`) | rôle : `INDEPENDENT PEDIATRICIAN` | rôle : `HOSPITAL SERVICE` |
| prix : `Free` (Fraunces 22 pt `#4D9F7D`) | prix : `€49 / mo` (Fraunces 22 pt `#1E3A8A`) | prix : `€12k / yr` (Fraunces 22 pt `#1E3A8A`) |
| roi : `Forever` (Inter 11 pt `#475569`) | roi : `Recovers 11 h, ROI x21` | roi : `Payback < 6 months` |
| fond `#E8F1EA`, bordure `#4D9F7D` | fond `#DBE5F7`, bordure `#1E3A8A` | fond `#DBE5F7`, bordure `#3B82F6` |

**Strip d'unit economics** (centrée, Inter 11 pt, couleur `#475569`, avec les valeurs clés en gras `#0F172A`) :
`CAC < €300 . LTV > €1,800 . LTV / CAC > 6 . Churn < 2%/mo . GM > 85%`

**Bloc KPI bas-gauche** :
- Label : `NORTH-STAR KPI` (mono 10 pt `#94A3B8`)
- Énoncé : `>= 2 min saved per consultation.` (Fraunces 18 pt `#0F172A`)
- Sous-texte : `Measured in a 50-pediatrician chronometered pilot.` (Inter 11 pt `#475569`)

**Bloc demande bas-droit** :
- Label : `PRE-SEED ASK` (mono 10 pt `#94A3B8`)
- Montant : `€400k` (Fraunces 24 pt `#4D9F7D`)
- Trois puces (Inter 11 pt `#0F172A`) :
  - `50-pediatrician chronometered pilot`
  - `CE marking class I`
  - `Two paying hospital contracts`

**Callout TAM** (côté droit, petit, sous le titre) :
`TAM France: €31M. Europe next on the HPO interoperability rail.` Inter 12 pt, couleur `#475569`.

**Thumbnail optionnel côté droit** (ancre le fait que le produit existe) : capture de `Pedia.html` screen-4 (dashboard médecin haut) en 320 px de large, opacité 60 % ou posée derrière le bloc demande pour que les chiffres restent lisibles. Garde « c'est réel, pas une fiction de pitch » dans la vision périphérique.

**Tag de source bas-droit** : `[MIT]`, JetBrains Mono 10 pt `#94A3B8`.

**À ne pas faire** : inclure une projection d'ARR (pas de courbes Y1/Y2/Y3). Pas de jalons M3/M6/M12. Garder la slide sur ce qu'on facture, pourquoi prix < ROI, et ce qu'on fait de l'argent. Pas de timeline de roadmap.

---

## Slide 5 - Équipe + clôture en cascade + merci (2:45 à 3:00)

**Brief en une ligne** : six visages dans une grille nette. Clôture à échelle humaine. La dernière chose que le jury voit.

**Mise en page** :
- Fond page vert pastel `#F4F9F5`.
- Titre haut, centré, Fraunces 500, 28 pt, couleur `#0F172A` : `Two physicians. Four engineers. The pairing is the moat.`
- Six portraits carrés sur une ligne (ou grille 3 × 2 si l'espace vertical serre), taille égale, gap 16 px.
- Chaque portrait a un bandeau vert accent en bas (`#6FB58A`, 4 px de haut) avec le prénom au-dessus et le rôle en dessous.
- Clôture en cascade en bas, centrée, Fraunces 16 pt italique, couleur `#0F172A`, avec les trois termes bold-vert : `Parents pay zero`, `Children gain years`, `two euros a day`.

**Specs des portraits** :
- Crop carré, 600 × 600 minimum, tête-et-épaules, fond neutre, éclairage cohérent.
- Nom de fichier suggéré : `team/fanette.jpg`, `team/elom.jpg`, `team/raoul.jpg`, `team/raphael.jpg`, `team/ayda.jpg`, `team/anouar.jpg`.

**Prénom + rôle** (sous chaque portrait, centré) :

| Prénom (Inter 600, 13 pt, `#0F172A`) | Rôle (Inter 400, 11 pt, `#475569`) |
|---|---|
| Fanette | dev |
| Elom | dev |
| Raoul | dev + business |
| Raphaël | dev + business |
| Ayda | MD |
| Anouar | MD |

**Clôture en cascade** (bas de slide, centré, largeur max 900 px, Fraunces 16 pt italique) :

`A pediatrician pays two euros a day, recovers eleven hours a month. Parents pay zero. Children gain years of avoided diagnostic wandering.`

Mettre en bold-vert ces trois phrases : `two euros a day`, `Parents pay zero`, `Children gain years`.

**Mot final**, centré sous la cascade, Fraunces 500, 20 pt, couleur `#0F172A` :
`Thank you.`

**À ne pas faire** : écrire « Team » comme titre de slide. Les visages sont le titre. Pas de headshots Linkedin avec des fonds différents. Shooter les six dans l'espace hackathon samedi après-midi si nécessaire, même mur, même lumière.

---

## Ordre de build recommandé

1. Slide 3 d'abord : les captures verrouillent la story produit en place.
2. Slide 2 ensuite : la comparaison héro. Si la slide 2 est faible, le pitch est faible.
3. Slide 1 : poser le texte, choisir les tailles de police.
4. Slide 4 : assembler depuis cette spec. Pas de réécriture à main levée.
5. Slide 5 en dernier : photos d'équipe après le shoot de samedi.

## Catalogue de captures

Toutes les captures depuis `Pedia.html` à affichage 1920 × 1080, puis recadrées si nécessaire. Export PNG, sRGB. Sauver sous `final-pitch/screenshots/`.

| ID | Écran source | Crop | Utilisée sur | Taille d'export |
|---|---|---|---|---|
| `S1-hero` | screen-1 | hero complet + téléphone dans le coin | fond optionnel slide 1 à 15 % d'opacité | 1920 × 1080 |
| `S2-parent-phone` | screen-2 | téléphone seul, crop serré autour du cadre | slide 3 carte 1 | 720 × 1480 |
| `S3-voice-capture` | screen-3 | téléphone seul, pulse mic + waveform visibles | slide 3 carte 2 | 720 × 1480 |
| `S3-pipeline-panel` | screen-3 | panneau contexte gauche (transcription, NER, HPO, anonymisation) | alt slide 3 carte 2 | 640 × 720 |
| `S4-dashboard-top` | screen-4 | bandeau patient + bloc anamnèse narrative (7 colonnes gauche) | slide 2 panneau droit (Option A), slide 3 carte 3, thumbnail fond slide 4 | 1600 × 1200 |
| `S4-anamnesis-block` | screen-4 | bloc anamnèse narrative seul, sans bandeau patient | slide 2 panneau droit (crop plus serré) | 1200 × 1400 |
| `S4-timeline-signals` | screen-4 | moitié basse : chronologie 4 mois + signaux faibles | backup slide 3 carte 3 | 1600 × 900 |
| `S4-pathways` | screen-4 | colonne droite « pistes à explorer » | visuel backup pour Q&R | 800 × 1200 |
| `S5-recap` | screen-5 | strip de récap produit | pas utilisée au pitch, référence cohérence de marque | 1920 × 600 |

**Méthode de capture** : ouvrir `Pedia.html` dans Chrome à 1920 × 1080, utiliser `Cmd/Ctrl + Shift + P -> "Capture screenshot"` via DevTools. Pour les crops serrés : clic droit sur l'élément dans DevTools, `Capture node screenshot`. Éviter le zoom navigateur (toujours 100 %). Éviter les extensions qui posent des badges.

**Cohérence patient** : chaque capture montre **Louis M., 2 ans**. Si l'équipe choisit un autre prénom pour la story, éditer `Pedia.html` d'abord, re-exporter toutes les captures en un passage, puis importer dans Canva.

**Nommage** : `S{écran}-{quoi}.png`, minuscules, avec tirets. Exemple : `S4-dashboard-top.png`.

## Export

- Export PNG à 1920 × 1080, sRGB.
- Backup Google Slides : importer chaque PNG comme fond de slide full-bleed, superposer les tags de source en texte éditable pour que les timings puissent être ajustés à la dernière minute.
