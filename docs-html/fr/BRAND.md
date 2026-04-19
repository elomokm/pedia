# BRAND.md - palette slides Pedia

> Couleurs tirées directement de `Pedia.html` (état courant sur main). Trois surfaces : **côté parent** (vert + crème), **côté médecin** (bleu + neutres cliniques), **états dashboard** (ambre + rouge). Utiliser ces hex exacts dans Google Slides pour que le deck matche la maquette.

---

## 🌿 Côté parent - vert + crème

| Rôle | Variable CSS | Hex | Quand |
|---|---|---|---|
| Accent deep (CTA principal) | `--coral-deep` | **`#4A8F6B`** | bouton « Voir la démo », accents du parcours prescrit, marque Pedia sur slides parent |
| Accent soft | `--coral` | **`#A8D5BA`** | fonds de pastilles, surbrillances douces (même valeur que mint) |
| Mint deep | `--mint-deep` | **`#6FB58A`** | accents parent secondaires, points de statut, succès |
| Mint | `--mint` | **`#A8D5BA`** | blobs de fond, chips, remplissages secondaires |
| Mint-bg | `--mint-bg` | **`#E8F3EC`** | cartes, fonds d'input, remplissages discrets |
| Cream | `--cream` | **`#F5EFE6`** | wash chaud, cadre capture vocale, ancre de gradient |
| Cream deep | `--cream-deep` | **`#EADFCB`** | cartes de rappel, accents calendrier |
| Warm ink | `--warm-ink` | **`#2D3B36`** | titres + corps sur surfaces parent |
| Warm ink soft | `--warm-ink-soft` | **`#5A6B63`** | copy parent secondaire |
| Border chaude | (en dur) | **`#f0eadd`** / **`#e7e1d5`** | bordures wash crème |
| Page ivoire | `--ivory` | **`#FBF8F3`** | fond page landing / journal parent |

## 🔷 Côté médecin - bleu + neutres cliniques

| Rôle | Variable CSS | Hex | Quand |
|---|---|---|---|
| Med blue | `--med-blue` | **`#1E3A8A`** | marque Pedia pro, CTA principaux, chiffres de titres |
| Med accent | `--med-accent` | **`#3B82F6`** | liens, états actifs, surlignes de charts |
| Med blue soft | `--med-blue-soft` | **`#DBE5F7`** | remplissages de chips, surbrillance nav, breadcrumbs |
| Med ink | `--med-ink` | **`#0F172A`** | titres + corps sur surfaces médecin |
| Med ink soft | `--med-ink-soft` | **`#475569`** | copy médecin secondaire |
| Med ink faint | `--med-ink-faint` | **`#94A3B8`** | tags de source, horodatages, petites légendes mono |
| Med border | `--med-border` | **`#E2E8F0`** | bordures de cartes, séparateurs |
| Med card | `--med-card` | **`#FFFFFF`** | fond de carte / slide |
| Med bg | `--med-bg` | **`#F7F9FC`** | canvas page (hors-blanc) |
| Med hover | (en dur) | **`#F1F5FB`** | remplissages hover de lignes de tableau |

## 🟡 États sémantiques dashboard (ambre + rouge)

Utilisés dans le dashboard médecin (`screen-4`) pour les « pistes à explorer » et la sévérité des signaux. À garder **uniquement** pour des statuts/états, jamais comme accent de marque.

| Rôle | Hex | Quand |
|---|---|---|
| Attention deep | **`#B45309`** | badges numérotés sur les pistes non diagnostiques |
| Attention plus sombre | **`#78350F`** | corps sur cartes ambre |
| Attention wash | **`#FEF3C7`** | fond de carte ambre |
| Attention border | **`#FDE68A`** | bordure de carte ambre |
| Alert | **`#B91C1C`** | tags « corrélation forte », marqueurs d'épisode prolongé |
| Alert wash | **`#FEE2E2`** | fond de tag alert |

---

## Attribution slide par slide

| Slide | Dominant | Accent | Pourquoi |
|---|---|---|---|
| **1 - Hook (problème)** | noir (`#0F172A`) | vert `#6FB58A` sur le mot « Pedia » | énoncé du problème lourd ; beat final atterrit sur le vert côté parent |
| **2 - Comparaison d'anamnèse** | colonne gauche wash crème (`#F5EFE6`) · colonne droite cadre **med-blue `#1E3A8A`** | mint `#A8D5BA` pour l'encart « 47 observations parentales » | encode visuellement la transition : scribble (chaud) → rapport clinique (bleu) |
| **3 - Produit (POC)** | blanc · neutres cliniques | vert `#4A8F6B` sur carte parent · bleu `#1E3A8A` sur carte médecin | reflète exactement les captures Pedia.html (grille 3 cartes) |
| **4 - Business + demande** | titres et chiffres **med-blue `#1E3A8A`** | vert `#4A8F6B` sur la ligne « Parents always free » et sur la tuile €0 parent | business bleu (institutionnel) ; le vert ancre le palier gratuit à vie |
| **5 - Équipe + clôture** | page ivoire `#FBF8F3` | bandeau vert `#6FB58A` sous chaque portrait | clôture humaine sur la palette côté parent |

---

## Couplage typographique

Pris directement de `Pedia.html` :

- **Display / titres / chiffres d'en-tête** : **Fraunces** (serif variable, optical sizing activé), poids 500 ou 600. `font-family: 'Fraunces', serif`.
- **Corps / légendes / UI** : **Inter**, poids 400 ou 500. `font-family: 'Inter', system-ui, sans-serif`.
- **Tags de source / mono / petits chiffres** : **JetBrains Mono**, 10-11 pt, couleur `#94A3B8`.

Dans Google Slides : installer Fraunces et JetBrains Mono via le sélecteur de police. Inter est livré par défaut.

## Sanity accessibilité

Toutes les paires premier-plan / arrière-plan listées respectent WCAG AA pour le corps de texte (4.5:1) sauf :

- `#6FB58A` mint-deep sur blanc → contraste 2.5:1 → **uniquement pour grand texte / display, jamais pour corps**.
- `#3B82F6` med-accent sur blanc → contraste 3.7:1 → **uniquement pour liens et grand texte**, pas pour corps.
- `#A8D5BA` mint sur blanc → contraste 1.8:1 → **remplissages décoratifs uniquement**, jamais pour texte.
- `#4A8F6B` vert forêt sur blanc → contraste 4.6:1 → **sûr pour le corps de texte**.
- `#1E3A8A` med-blue sur blanc → contraste 10.9:1 → **sûr pour tout**.
- `#2D3B36` warm-ink sur `#FBF8F3` ivoire → contraste 12.1:1 → **sûr pour tout**.

Pour tout petit texte de corps sur fond crème / ivoire, utiliser `#2D3B36` ou `#5A6B63`. Sur blanc / `#F7F9FC`, utiliser `#0F172A` ou `#475569`.

---

## Liste hex à copier-coller dans Google Slides

```
# Parent (vert + crème)
#4A8F6B   vert forêt (CTA parent, accent principal)
#6FB58A   mint-deep (statut, succès)
#A8D5BA   mint (accent soft, chips)
#E8F3EC   mint-bg (wash pâle)
#F5EFE6   crème (wash chaud)
#EADFCB   crème deep
#FBF8F3   ivoire (fond page parent)
#2D3B36   warm-ink (titres parent)
#5A6B63   warm-ink-soft (secondaire parent)

# Médecin (bleu + neutres cliniques)
#1E3A8A   med-blue (accent médecin principal)
#3B82F6   med-accent (liens, surbrillances)
#DBE5F7   med-blue-soft (remplissages chips)
#0F172A   med-ink (titres médecin)
#475569   med-ink-soft (secondaire médecin)
#94A3B8   med-ink-faint (tags source, horodatages)
#E2E8F0   med-border (séparateurs)
#FFFFFF   med-card (fond slide)
#F7F9FC   med-bg (canvas page)
#F1F5FB   med-hover

# États sémantiques dashboard
#B45309   attention deep
#78350F   attention plus sombre
#FEF3C7   attention wash
#FDE68A   attention border
#B91C1C   alert
#FEE2E2   alert wash
```

Charger ces couleurs comme thème Google Slides une fois, puis les réutiliser sur tout le deck.
