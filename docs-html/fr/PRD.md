# PRD - Pedia

> **Version** : v0.1 hackathon · **Auteurs** : Fanette, Elom, Raoul, Raphaël, Ayda, Anouar · **Mis à jour** : 18 avril 2026

## 1. Problème

- **4 ans** : délai diagnostique médian pour une maladie rare pédiatrique en France. `[MIT]`
- **180 jours** : signal clinique perdu entre deux consultations de suivi (3 à 6 mois d'écart en pédiatrie ambulatoire).
- **Parents** : oublient, ne trouvent pas les mots, parfois non francophones, parfois dans un désert médical.
- **Pédiatres** : ré-anamnèse à chaque visite, signaux faibles invisibles à l'œil nu, aucune traçabilité longitudinale.

## 2. Vision

Tout ce qui est vu à la maison arrive structuré sur le bureau du pédiatre, sans en demander plus au parent, sans rallonger la consultation.

## 3. Personas

### 3.1 Camille - parent (utilisatrice quotidienne, **gratuit**)
- 32 ans, maman de Louis (2 ans). Smartphone toujours à portée.
- Douleur : « J'oublie la moitié pendant le rendez-vous », « Je ne sais pas si c'est normal ou pas ».
- Besoin : capturer en 30 secondes, sur le moment, sans remplir de formulaire.
- Réussite : passer d'un journal dispersé (post-its, notes iPhone, photos) à un fil unique.

### 3.2 Dr Claire Lemoine - pédiatre libérale (**payante - 49 €/mois**)
- 44 ans, cabinet solo, 25 consultations/jour. RPPS 10003418927.
- Douleur : consultation courte pour comprendre 3 mois, anamnèse reconstruite à zéro, signaux manqués entre les visites.
- Besoin : entrer en consultation avec une synthèse fiable en 2 min.
- Réussite : récupérer 11 heures de temps clinique par mois (ROI ×21 sur 49 €).

### 3.3 Service hospitalier pédiatrique - CHU / CHG (**payant - 12 k€/an**)
- Chef de service + cadre coordinatrice. Suivi de cohortes longues (rare, chronique, neurodéveloppemental).
- Douleur : reconvocations inutiles, T2A sous-facturée, coordination faible avec CAMSP / neuropédiatre / ORL.
- Besoin : dossier longitudinal partagé, export structuré, alertes signaux faibles.
- Réussite : +33 k€/an récupérés, payback en 5 mois.

## 4. User stories principales

### 4.1 Parent
- **P1** : *En tant que parent, je veux capturer une observation vocale en 30 s, depuis l'accueil, sans navigation.* → un bouton dominant « Maintenir pour parler ».
- **P2** : *En tant que parent, je veux voir mon fil chronologique : voix, texte, photo, pour me relire avant le rendez-vous.*
- **P3** : *En tant que parent, je veux savoir que le prochain rendez-vous approche et ce que j'ai noté depuis le dernier.*
- **P4** : *En tant que parent non francophone, je veux parler dans ma langue maternelle.* (objectif v1 : pipeline multilingue).

### 4.2 Pédiatre
- **M1** : *En tant que pédiatre, je veux ouvrir le dossier et comprendre l'enfant en 2 minutes avant qu'il n'entre dans la salle.*
- **M2** : *En tant que pédiatre, je veux une **anamnèse narrative** reconstruite à partir des observations parentales, structurée par les catégories de sémiologie UE 5.*
- **M3** : *En tant que pédiatre, je veux une chronologie sur 4 mois avec les symptômes récurrents.*
- **M4** : *En tant que pédiatre, je veux voir les **signaux faibles** : corrélations temporelles, tendances, motifs récurrents détectés sur 47+ observations.*
- **M5** : *En tant que pédiatre, je veux des **pistes non diagnostiques à explorer** (orientations, bilans préalables) sans que Pedia ne pose de diagnostic.*
- **M6** : *En tant que pédiatre, je veux exporter la synthèse en PDF et la partager avec CAMSP / neuropédiatre / ORL.*

### 4.3 Service hospitalier
- **H1** : *En tant que responsable de service, je veux déployer Pedia sur une cohorte (ex. neurodéveloppemental) avec audit d'accès et consentements parentaux.*
- **H2** : *En tant que chef de service, je veux réduire les reconvocations inutiles grâce aux signaux faibles et à la synthèse pré-consultation.*

## 5. Correspondance : écrans `Pedia.html` → user stories

| # | Écran | Nom | Couvre |
|---|---|---|---|
| 1 | `screen-1` | Landing / hero | positionnement |
| 2 | `screen-2` | Journal parent (mobile) | P1, P2, P3 |
| 3 | `screen-3` | Capture vocale + pipeline HPO | P1, transparence IA |
| 4 | `screen-4` | Tableau de bord médecin | M1, M2, M3, M4, M5, M6, H1 |
| 5 | `screen-5` | Récapitulatif produit | vision |

Patient de démo : **Louis M.**, 2 ans, né le 12/04/2024. Motif : « crises du coucher répétées, retard de langage ». 47 observations sur 4 mois, 5 signaux détectés, lecture médecin estimée à 2 minutes.

## 6. Couverture sémiologique : matrice contre `ANAMNESIS_REPORT.md`

Pedia doit couvrir **toutes** les catégories de sémiologie pédiatrique UE 5 ci-dessous, visibles dans le bloc « Résumé narratif · anamnèse parentale » du tableau de bord médecin (`screen-4`).

| Catégorie | Source de capture parent | Présente dans le tableau de bord |
|---|---|---|
| Motif de consultation | observation récurrente top-ranked | ✅ |
| ATCD personnels | onboarding + observations datées | ✅ |
| ATCD familiaux | onboarding | ✅ |
| Traitements | observations + rappels de posologie | ✅ |
| Allergies | onboarding + corrélations temporelles | ✅ |
| Alimentation | observations + photos de repas | ✅ |
| Croissance staturo-pondérale | pesées parentales + photos de courbes | ✅ |
| Mode de vie | observations quotidiennes | ✅ |
| Développement psychomoteur | jalons déclarés + vocabulaire | ✅ |
| Vaccinations | carnet importé / déclaré | ✅ |
| Symptôme - chronologie | horodatage automatique | ✅ |
| Symptôme - douleur (localisation, intensité) | capture vocale | ✅ |
| Facteurs déclenchants / soulageants | corrélations signaux faibles | ✅ |
| Tolérance (comportement, alimentation, sommeil) | observations longitudinales | ✅ |
| Signes associés | NER clinique sur capture vocale | ✅ |
| Comptage (entourage) | observations multi-auteurs | ✅ |

## 7. Indicateurs de succès

### 7.1 Produit (60 jours post-lancement pilote)
- ≥ 70 % des pédiatres actifs prescrivent Pedia aux parents.
- ≥ 3 observations / patient / semaine en moyenne.
- Taux d'ouverture du rapport pré-consultation > 85 %.

### 7.2 Clinique (pilote 6 mois)
- Gain de temps médecin mesuré ≥ 2 min / consultation (seuil de sécurité pour ROI × 5).
- ≥ 1 orientation précoce (CAMSP / spécialiste) déclenchée sur signal faible par cohorte de 50 patients.
- NPS pédiatre > 45.

### 7.3 Business
- CAC < 300 €, LTV / CAC > 6.
- Churn < 2 % / mois.
- 500 pédiatres signés après le premier push post-pilote (pas de projection d'ARR au stade hackathon).

## 8. Pipeline technique (résumé, détail hors scope)

1. **Capture** : voix (maintenir pour parler, 30 s max), texte, photo. Client PWA mobile + app native itérable.
2. **Transcription** : Whisper FR (latence médiane cible 420 ms).
3. **NER clinique** : modèle `pedia-ner-fr` v0.8+ extrait les entités.
4. **Structuration HPO** : mapping vers Human Phenotype Ontology (17 000 phénotypes standardisés).
5. **Anonymisation + chiffrement** au repos, hébergement HDS.
6. **Synthèse pré-consultation** : LLM spécialisé génère l'anamnèse narrative + détecte les signaux faibles par pattern matching sur ≥ 30 observations.
7. **Export** : PDF + partage vers CAMSP / spécialistes.

## 9. Hors-scope

- Pas de diagnostic automatique. Toutes les suggestions sont **non diagnostiques** et étiquetées comme telles.
- Pas de téléconsultation, pas de prise de rendez-vous, pas de facturation.
- Pas de substitution au carnet de santé officiel français : complément, pas substitut.
- Pas de conseil santé direct au parent hors prescription médicale (pour éviter la classification MDR classe IIa au lancement).
- Pas de gestion de cohorte de recherche en v1 : ciblage sur l'usage clinique de routine.

## 10. Dépendances externes

- Ontologie **HPO** (Human Phenotype Ontology, licence libre).
- **Whisper** pour la transcription (ou équivalent UE si Schrems II bloque).
- Hébergement **certifié HDS** (OVHcloud / Scaleway / Outscale).
- Partenariat **AFPA** (Association Française de Pédiatrie Ambulatoire) : distribution pédiatres libéraux.
- Accès au **réseau Dyspra** / filières maladies rares : validation clinique.

## 11. Risques produit

| Risque | Mitigation |
|---|---|
| Gain de temps < 2 min en pratique | Étude chronométrée sur 50 pédiatres dans le pilote financé en seed |
| Les parents ne capturent pas assez | Rappels push intelligents + onboarding via prescription médecin |
| Faux positifs sur les signaux faibles qui érodent la confiance | Calibrer les seuils, afficher la traçabilité des corrélations (r values) |
| Le pédiatre perçoit l'outil comme une menace | Cadrer comme « outil du médecin », jamais « canal parent-vers-médecin » |

## 12. Où on en est · ce qui vient

États et déclencheurs, sans dates spéculatives au stade hackathon.

- **Aujourd'hui** : maquette HTML (`Pedia.html`) · squelette sémiologique validé par nos deux médecins.
- **Si seed-funded - premier push** : bêta fermée avec 10 cabinets pilotes.
- **Étape d'échelle** : pilote chronométré sur 50 pédiatres : le seul chiffre qui décide de la société est le gain de temps ≥ 2 min par consultation.
- **Périmètre régulatoire** : MDR classe I, marquage CE dans le scope · DPIA (AIPD) obligatoire avant la bêta ouverte.
- **Périmètre produit** : pipeline voix multilingue dans le scope · interopérabilité HPO dans le scope dès le jour 1.
