# BRAND.md - palette des slides Pedia

> Couleurs tirées directement de `Pedia.html`. Deux familles : **vert** (côté parent) et **bleu** (côté médecin). Mêmes neutres partagés. Utiliser ces valeurs hex exactes dans Google Slides pour que le deck matche les captures.

---

## 🌿 Vert - côté parent

| Rôle | Nom | Hex | Quand |
|---|---|---|---|
| Primaire | Mint-deep | **`#6FB58A`** | accents côté parent, pastille « free forever », la marque Pedia sur les slides parent |
| Soft | Mint | **`#A8D5BA`** | wash de fond, blobs doux, chips secondaires |
| Tint | Mint-bg | **`#E8F3EC`** | cartes, arrière-plans d'inputs, remplissages discrets |

## 🔷 Bleu - côté médecin

| Rôle | Nom | Hex | Quand |
|---|---|---|---|
| Primaire | Med-blue | **`#1E3A8A`** | accents côté médecin, CTA principal, chiffres d'en-tête sur slide business |
| Accent | Med-accent | **`#3B82F6`** | liens, états actifs, surbrillance sparklines |
| Tint | Med-blue-soft | **`#DBE5F7`** | fonds de cartes, remplissages de tags, surbrillance breadcrumb |

## ⚫ Neutres (les deux côtés)

| Rôle | Nom | Hex | Quand |
|---|---|---|---|
| Ink fort | Med-ink | **`#0F172A`** | titres, chiffres clés sur fonds blancs |
| Ink moyen | Med-ink-soft | **`#475569`** | corps de texte |
| Ink léger | Med-ink-faint | **`#94A3B8`** | tags de source, petites légendes, horodatages |
| Bordure | Med-border | **`#E2E8F0`** | bordures de cartes, séparateurs |
| Carte | Blanc | **`#FFFFFF`** | fond de carte / slide |
| Page | Med-bg | **`#F7F9FC`** | canvas hors-blanc, alternative au blanc pur |

## 🎨 Fond chaud (optionnel)

Utilisé uniquement sur les slides du parcours parent si on veut le feel chaleureux de la landing HTML :

| Rôle | Hex |
|---|---|
| Ivoire page | **`#FBF8F3`** |
| Wash crème | **`#F5EFE6`** |
| Ink chaud | **`#2D3B36`** |

---

## Attribution slide par slide

| Slide | Dominant | Accent | Pourquoi |
|---|---|---|---|
| **1 - Hook (problème)** | noir (`#0F172A`) | vert `#6FB58A` sur le mot « Pedia » | l'énoncé du problème est lourd ; le beat final atterrit sur le vert côté parent |
| **2 - Comparaison d'anamnèse** | colonne gauche warm/neutre · colonne droite cadre **med-blue `#1E3A8A`** | mint `#A8D5BA` pour l'encart « ce qu'ont capturé les parents » | encode visuellement la transition : scribble (chaud) → rapport clinique (bleu) |
| **3 - Produit (POC)** | blanc · neutres gris moyens | vert pour la capture parent · bleu pour la capture dashboard médecin | reflète exactement les captures Pedia.html |
| **4 - Business + demande + clôture** | titres et chiffres **med-blue `#1E3A8A`** | vert `#6FB58A` sur la ligne « Parents always free » et sur la clôture en cascade | le business est bleu (institutionnel), la clôture émotionnelle revient au vert (parents / enfants) |

---

## Couplage typographique

Aligné sur la maquette HTML :

- **Display / chiffres** : serif display ou humaniste sans en grande taille. Dans Google Slides : *Playfair Display* ou *Source Serif 4*, poids 500-600.
- **Corps / légendes** : *Inter* (ou sans système), poids 400-500.
- **Mono / tags de source** : *JetBrains Mono* ou *IBM Plex Mono*, 10-11 pt, `#94A3B8`.

## Sanity accessibilité

Toutes les paires premier-plan / arrière-plan listées respectent WCAG AA pour le texte de corps (4.5:1), sauf :

- `#6FB58A` vert sur blanc → contraste 2.5:1 : **uniquement pour grand texte / display, jamais pour le corps**.
- `#3B82F6` bleu sur blanc → contraste 3.7:1 : **uniquement pour les liens et le grand texte**, pas pour le corps.

Pour tout petit texte de corps, utiliser `#0F172A` ou `#475569` sur blanc ou `#F7F9FC`.

---

## Liste hex à copier-coller dans Google Slides

```
#6FB58A   vert primaire
#A8D5BA   vert soft
#E8F3EC   vert tint

#1E3A8A   bleu primaire
#3B82F6   bleu accent
#DBE5F7   bleu tint

#0F172A   ink fort
#475569   ink moyen
#94A3B8   ink léger
#E2E8F0   bordure
#FFFFFF   carte
#F7F9FC   page

#FBF8F3   ivoire (chaud, optionnel)
#F5EFE6   crème (chaud, optionnel)
#2D3B36   ink chaud (optionnel)
```

Charger ces couleurs comme thème Google Slides une fois, puis les réutiliser sur tout le deck.
