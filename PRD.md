# PRD — Pedia

> **Version** : v0.1 hackathon · **Auteurs** : Fanette, Elom, Raoul, Raphaël, Ayda, Anouar · **Mis à jour** : 18 avril 2026

## 1. Problème

- **4 ans** de retard diagnostique médian pour une maladie rare pédiatrique en France. `[MIT]`
- **180 jours** de signal clinique perdus entre deux consultations de suivi (3 à 6 mois en pédiatrie ambulatoire).
- **12 minutes** de consultation pour reconstruire ces 3 mois de mémoire parentale.
- **Parents** : oublient, ne trouvent pas les mots, parfois non-francophones, parfois en désert médical.
- **Pediatres** : ré-anamnèse à chaque visite, signaux faibles invisibles à l'œil nu, pas de traçabilité longitudinale.

## 2. Vision

Tout ce qui est vu à la maison arrive structuré chez le pédiatre, sans demander plus au parent et sans allonger la consultation.

## 3. Personas

### 3.1 Camille — parent (utilisatrice quotidienne, **gratuit**)
- 32 ans, maman de Louis (2 ans). Smartphone en permanence.
- Douleur : "j'oublie la moitié en rendez-vous", "je ne sais pas si c'est normal ou pas".
- Besoin : capturer en 30 s, au moment où ça se passe, sans remplir de formulaire.
- Succès : passer du journal dispersé (post-it, notes iPhone, photos) à un fil unique.

### 3.2 Dr. Claire Lemoine — pédiatre libérale (**payeuse — 49 €/mois**)
- 44 ans, cabinet seul, 25 consultations/jour. RPPS 10003418927.
- Douleur : 12 min pour comprendre 3 mois, anamnèse à refaire, oubli de signaux entre visites.
- Besoin : arriver en consultation avec une synthèse 2 min fiable.
- Succès : récupérer 11 h de temps médical / mois (ROI × 21 sur 49 €).

### 3.3 Service de pédiatrie hospitalière — CHU / CHG (**payeur — 12 k€/an**)
- Chef de service + cadre. Suivi de cohortes longues (rare, chronique, neurodéveloppemental).
- Douleur : reconvocations inutiles, T2A non facturée, coordination CAMSP / neuropédiatre / ORL défaillante.
- Besoin : dossier longitudinal partagé, export structuré, alertes signaux faibles.
- Succès : +33 k€/an récupérés, payback 5 mois.

## 4. User stories principales

### 4.1 Parent
- **P1** — *En tant que parent, je veux capturer une observation vocale en 30 s, depuis l'écran d'accueil, sans navigation.* → un bouton dominant "Tenez pour parler".
- **P2** — *En tant que parent, je veux voir mon fil chronologique mixant voix, texte, photo, pour me relire avant le rendez-vous.*
- **P3** — *En tant que parent, je veux savoir que la prochaine consultation approche et ce que j'ai noté depuis la précédente.*
- **P4** — *En tant que parent non-francophone, je veux pouvoir parler dans ma langue.* (objectif v1 — pipeline multilingue).

### 4.2 Pediatre
- **M1** — *En tant que pédiatre, je veux ouvrir le dossier et comprendre l'enfant en 2 min avant son entrée dans la salle.*
- **M2** — *En tant que pédiatre, je veux voir une **anamnèse narrative** reconstituée depuis les observations parentales, structurée par les catégories de l'UE 5 sémiologie.*
- **M3** — *En tant que pédiatre, je veux une timeline des 4 derniers mois avec les symptômes récurrents.*
- **M4** — *En tant que pédiatre, je veux voir les **signaux faibles** — corrélations temporelles, tendances, motifs récurrents détectés sur 47+ observations.*
- **M5** — *En tant que pédiatre, je veux des **pistes à explorer** non diagnostiques (orientations, bilans préalables) sans que Pedia ne pose de diagnostic.*
- **M6** — *En tant que pédiatre, je veux pouvoir exporter la synthèse en PDF et partager avec un CAMSP / neuropédiatre / ORL.*

### 4.3 Service hospitalier
- **H1** — *En tant que cadre de service, je veux déployer Pedia sur une cohorte (ex. neurodéveloppemental) avec audit d'accès et consentements parentaux.*
- **H2** — *En tant que chef de service, je veux réduire les reconvocations inutiles via les signaux faibles et la synthèse pré-consultation.*

## 5. Cartographie : écrans `Pedia.html` → user stories

| # | Écran | Nom | Couvre |
|---|---|---|---|
| 1 | `screen-1` | Landing / hero | positionnement |
| 2 | `screen-2` | Journal parent (mobile) | P1, P2, P3 |
| 3 | `screen-3` | Saisie vocale + pipeline HPO | P1, transparence IA |
| 4 | `screen-4` | Dashboard médecin | M1, M2, M3, M4, M5, M6, H1 |
| 5 | `screen-5` | Récap produit | vision |

Patient de démo : **Louis M.**, 2 ans, né le 12/04/2024 — motif "crises de coucher répétées, retard de langage". 47 observations sur 4 mois, 5 signaux détectés, lecture pédiatre estimée 2 min.

## 6. Couverture sémiologique — matrice contre `ANAMNESIS_REPORT.md`

Pedia doit couvrir **toutes** les catégories de l'UE 5 sémiologie pédiatrique ci-dessous, visibles dans le bloc "Résumé narratif · anamnèse parentale" du dashboard médecin (`screen-4`).

| Catégorie | Source de capture parent | Présent dans dashboard |
|---|---|---|
| Motif de consultation | observation récurrente top-ranked | ✅ |
| ATCD personnels | saisie initiale + observations datées | ✅ |
| ATCD familiaux | saisie initiale | ✅ |
| Traitements | observations + rappel posologique | ✅ |
| Allergies | saisie initiale + corrélations temporelles | ✅ |
| Alimentation | observations + photos repas | ✅ |
| Croissance staturo-pondérale | pesée parent + photos courbes | ✅ |
| Mode de vie | observations quotidiennes | ✅ |
| Développement psychomoteur | jalons déclarés + vocabulaire | ✅ |
| Vaccinations | carnet importé / déclaré | ✅ |
| Symptôme — timing | horodatage auto | ✅ |
| Symptôme — douleur (localisation, intensité) | capture vocale | ✅ |
| Facteurs déclenchants / soulageants | corrélations signaux faibles | ✅ |
| Tolérance (comportement, alimentation, sommeil) | observations longitudinales | ✅ |
| Signes associés | NER clinique sur capture vocale | ✅ |
| Comptage (entourage) | observations multi-rédacteurs | ✅ |

## 7. Métriques de succès

### 7.1 Produit (60 jours post-lancement pilote)
- ≥ 70 % de pédiatres actifs prescrivant Pedia aux parents.
- ≥ 3 observations / patient / semaine en moyenne.
- Taux d'ouverture rapport pré-consultation > 85 %.

### 7.2 Clinique (6 mois pilote)
- Gain de temps médecin mesuré ≥ 2 min / consultation (seuil de sécurité pour ROI × 5).
- ≥ 1 orientation précoce (CAMSP / spécialiste) déclenchée sur signal faible par cohorte de 50 patients.
- NPS pédiatre > 45.

### 7.3 Business
- CAC < 300 €, LTV / CAC > 6.
- Churn < 2 % / mois.
- 500 pédiatres signés fin An 1 (ARR 294 k€).

## 8. Pipeline technique (résumé — détail non couvert par ce PRD)

1. **Capture** — voix (tenir pour parler, 30 s max), texte, photo. Client mobile PWA + app native itérable.
2. **Transcription** — Whisper FR (latence médiane cible 420 ms).
3. **NER clinique** — modèle `pedia-ner-fr` v0.8+ extrait entités.
4. **Structuration HPO** — mapping vers Human Phenotype Ontology (17 000 phénotypes normalisés).
5. **Anonymisation + chiffrement** au repos, HDS.
6. **Synthèse pré-consultation** — LLM spécialisé génère anamnèse narrative + détecte signaux faibles par pattern matching sur ≥ 30 observations.
7. **Export** — PDF + partage CAMSP / spécialistes.

## 9. Non-goals

- Pas de diagnostic automatique. Toutes les suggestions sont **non diagnostiques** et marquées comme telles.
- Pas de télé-consultation, pas de prise de rendez-vous, pas de facturation.
- Pas de remplacement du carnet de santé officiel — complément, pas substitut.
- Pas de conseil santé direct au parent hors prescription médicale (éviter la requalification en DM classe IIa au lancement).
- Pas de gestion de cohorte recherche au v1 — ciblé routine clinique.

## 10. Dépendances externes

- Ontologie **HPO** (Human Phenotype Ontology, licence libre).
- Transcription **Whisper** (ou équivalent EU si Schrems II bloque).
- Hébergement **HDS** certifié (OVHcloud / Scaleway / Outscale).
- Partenariat **AFPA** (Association Française de Pediatrie Ambulatoire) — distribution libéraux.
- Accès **Réseau Dyspra** / filières maladies rares — validation clinique.

## 11. Risques produit

| Risque | Mitigation |
|---|---|
| Gain de temps < 2 min en pratique | Étude chronométrée dès M3–M6 sur 50 pédiatres |
| Parents ne capturent pas assez | Rappel push intelligent + onboarding prescription médecin |
| Faux positifs signaux faibles usent la confiance | Calibrer seuils, traçabilité des corrélations (r affiché) |
| Pediatre perçoit l'outil comme une menace | Positionner "outil du médecin", jamais "du parent vers le médecin" |

## 12. Roadmap synthétique

- **M0–M3** — MVP bêta fermée, 10 cabinets pilotes.
- **M3–M6** — pilote 50 pédiatres + étude chronométrée.
- **M6–M9** — premier contrat hospitalier.
- **M9–M12** — marquage CE classe I, AIPD finalisée.
- **An 2** — ouverture généralistes + multilingue v1.
- **An 3** — contrat institutionnel CNAM / ARS.
- **An 4** — expansion UE via HPO interop.
