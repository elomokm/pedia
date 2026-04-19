# BUSINESS_PLAN.md - Pedia

> **Format** : one-pager seed-stage, calé pour une lecture VC SF de 90 s (références : YC seed one-pager, a16z seed memo, Sequoia seed brief). Pas un deck Series A : on n'a pas la traction. Le guide *YC Series A pitch and deck* est consulté uniquement pour la **structure**, pas pour le ton.
> **Budgets & marché** : `[MIT]` inline sur chaque chiffre sensible.
> **Règle produit** : **prix < ROI client** sur chaque palier. Non négociable.

---

## 1. Pitch en une ligne

**Pedia transforme 180 jours perdus entre deux consultations pédiatriques en un rapport clinique de 2 minutes.**

Les parents capturent (voix / texte / photo, 30 s). L'ontologie HPO structure. Le pédiatre lit une anamnèse pré-consultation en 2 minutes.

## 2. Problème

En pédiatrie ambulatoire française :

- **4 ans** : délai diagnostique médian pour une maladie rare pédiatrique. `[MIT]`
- **180 jours** : signal clinique non observé entre deux consultations de suivi (3-6 mois d'écart, cadence typique).
- Les parents oublient, ne trouvent pas les mots cliniques, parfois ne parlent pas français.
- Les pédiatres refont l'anamnèse à chaque visite ; les signaux faibles sont invisibles à l'œil nu ; la traçabilité longitudinale est nulle.

## 3. Solution & wedge produit

**Pedia** est un carnet de santé pédiatrique augmenté, **prescrit par le pédiatre** au parent.

- **Côté parent (gratuit, pour toujours)** : un bouton, « Hold to speak », 30 s max. Voix, texte, photo, horodatés.
- **Pipeline** : transcription Whisper → NER clinique (`pedia-ner-fr`) → structuration vers **HPO** (17 000 phénotypes standardisés) → anonymisation → hébergement HDS.
- **Côté médecin** : synthèse pré-consultation : anamnèse narrative par catégorie UE 5, chronologie 4 mois, signaux faibles (corrélations temporelles + tendances), pistes non diagnostiques à explorer.

**Wedge** : être l'outil que le médecin **prescrit au parent**, pas celui que le parent choisit seul. Cela donne (a) une distribution quasi gratuite (prescription = canal), (b) un engagement de meilleure qualité (prescription = « utilisez-le »), (c) un positionnement « outil du médecin », jamais « canal parent-vers-médecin » : la clé de l'adoption pédiatrique.

## 4. Why now

- **LLM de qualité clinique** : seuil franchi en 2024-2025, extraction d'entités + mapping ontologique robustes en français.
- **HPO** : standard européen d'interopérabilité dans les filières maladies rares pédiatriques (réseaux ERN).
- **Littératie numérique santé parentale** : en hausse post-COVID ; la capture vocale est normalisée (messages vocaux, Siri, WhatsApp voice).
- **Pression ONDAM 2025** sur la pédiatrie ambulatoire + T2A hospitalière sous-facturée → fenêtre d'achat.

## 5. Marché - TAM / SAM `[MIT]`

| Segment | Volume | Prix moyen | TAM / an |
|---|---|---|---|
| Pédiatres libéraux (FR) | 10 000 | 588 €/an (49 €/mois) | **5,9 M€** |
| Généralistes voyant des enfants (FR) | 35 000 | 588 €/an | **20,6 M€** |
| Services pédiatriques hospitaliers (FR) | 450 | 12 000 €/an | **5,4 M€** |
| **TAM France** | | | **≈ 31 M€** `[MIT]` |

- **SAM prioritaire** (pédiatres libéraux + services hospitaliers à haut volume) : **9 M€/an**.
- **Expansion UE** : prochaine étape sur le rail d'interopérabilité HPO.

## 6. Business model & tarification - **prix < ROI sur chaque palier** `[MIT]`

### 6.1 Parent - **gratuit, pour toujours**
Un seul côté du marché paie. Maximise l'adoption parentale et protège Pedia de l'image « outil qui facture les familles ».

### 6.2 Pédiatre libéral - **49 € / mois / praticien**

| Calcul | Valeur |
|---|---|
| Hypothèse de gain de temps | 4 min / consultation × 25 consult / jour × 20 jours / mois ≈ **11 h / mois** |
| Valorisation du temps clinique `[MIT wage benchmark]` | ≈ 96 € / h (libéral) |
| Gain mensuel équivalent | **≈ 1 058 € / mois** |
| Prix Pedia | 49 € / mois |
| **ROI** | **×21** |
| **Seuil de rentabilité** | ≈ **1 min 30 s** gagnées sur l'ensemble du mois |

Le **seuil psychologique < 50 €** permet au pédiatre de décider seul sans passer par la comptable du cabinet.

### 6.3 Service hospitalier - **12 000 € / an / service**

| Calcul | Valeur |
|---|---|
| Reconvocations évitées | économies réelles + capacité libérée |
| Capacité T2A récupérée | économies réelles |
| Prix Pedia | 12 k€ / an |
| **Payback** | **< 6 mois** |

### 6.4 Upsell (optionnel, plus tard)
Palier **Premium 79 €/mois** pour les pédiatres libéraux : conseils vaccinaux automatisés basés HAS, alertes de santé publique, export DPI.

## 7. Cibles d'unit economics

| Métrique | Cible |
|---|---|
| CAC pédiatre libéral | **< 300 €** (AFPA + congrès + bouche-à-oreille prescripteur) |
| LTV pédiatre libéral | **> 1 800 €** (3 ans × 588 €/an × rétention nette) |
| **LTV / CAC** | **> 6** |
| Churn mensuel | **< 2 %** |
| Marge brute | **> 85 %** (SaaS 100 % UE) |
| Payback CAC | **< 6 mois** |

## 8. Go-to-market : ce qu'on fait si seed-funded

Pas de spéculation mois par mois. Deux phases :

### Premier push (avec financement seed)
- Partenariat de distribution **AFPA** (Association Française de Pédiatrie Ambulatoire).
- **Congrès pédiatriques** (JFRP, Printemps de la Pédiatrie) : stand + ateliers chronométrés.
- **Bouche-à-oreille prescripteur** : chaque pédiatre satisfait prescrit à 30-50 familles.

### Ensuite, si le pilote valide
- Pilote **2 CHU** (Necker, Lyon Sud : déjà listés comme supporters sur la landing).
- FMC (formation médicale continue) intégrant Pedia dans la formation à l'anamnèse.
- **CNAM** : remboursement partiel via un code CCAM dédié « synthèse pré-consultation pédiatrique ».
- **ARS** : dispositifs régionaux maladies rares / dépistage neurodéveloppemental.

### Expansion UE
L'interopérabilité HPO ouvre DE / ES / IT / BE / NL une fois la France validée. Partenaire de distribution local par pays.

## 9. Où on en est · prochaine étape concrète

- **Aujourd'hui** : prototype HTML (`Pedia.html`) + squelette sémiologique validé par nos deux médecins.
- **Première étape concrète avec financement seed** : bêta fermée avec 10 cabinets pilotes.
- **L'étape qui décide de la société** : pilote chronométré 50 pédiatres répondant à une question : **le temps gagné par consultation est-il ≥ 2 min ?** Si oui, le ROI ×21 tient et le GTM passe à l'échelle.
- **Marquage CE classe I** dans le scope ; DPIA (AIPD) obligatoire avant la bêta ouverte.

Pas de projection d'ARR au stade hackathon. On aura de l'ARR quand on aura des pilotes payants.

## 10. Concurrence & moat

### 10.1 Paysage

| Acteur | Ce qu'ils font | Pourquoi ce n'est pas nous |
|---|---|---|
| **Doctolib** | Prise de rendez-vous + téléconsult | Pas de capture longitudinale parent-enfant |
| **Qare / Livi** | Téléconsult urgent | Pas de suivi, pas spécifique à la pédiatrie |
| **DMP** (Dossier Médical Partagé) | Agrégation institutionnelle | Pas d'observation parentale, pas d'IA |
| **MyChart / Epic MyChart EU** | Portail patient | Pas de capture libre, pas d'HPO |

### 10.2 Moat (12-18 mois pour copier)
1. **Ontologie HPO pédiatrique française** : mapping éprouvé depuis des observations parentales non structurées.
2. **Pipeline voix multilingue** : FR en v0, 5 langues UE en v1.
3. **Distribution prescrite par le médecin** : difficile à répliquer sans partenariats cliniques.
4. **Étude clinique publiée** : argument régulatoire et barrière à l'entrée (planifiée post-pilote).

## 11. Régulatoire

- **Statut** : SaaS → **dispositif médical classe I** au lancement. Classe IIa envisagée uniquement si ajout d'une aide au diagnostic active (hors scope v1).
- **Marquage CE** : dans le scope.
- **RGPD** : consentement parental explicite (Art. 9-2-a). Mineur < 15 ans.
- **HDS** : hébergement certifié obligatoire (OVHcloud HDS ou Scaleway HDS).
- **DPIA (AIPD)** : obligatoire (donnée santé + mineur + profilage IA) avant la bêta ouverte.
- **Brief complet** : voir `RGPD.md`.

## 12. Équipe

| Prénom | Rôle | Pourquoi critique |
|---|---|---|
| **Fanette** | dev | Produit + UX côté parent |
| **Elom** | dev | Pipeline voix → HPO |
| **Raoul** | dev + business | GTM pédiatre libéral + ops |
| **Raphaël** | dev + business | Hôpital + régulatoire |
| **Ayda** | MD | Validation sémiologique + réseau clinique |
| **Anouar** | MD | Anamnèse + filières maladies rares |

**Deux médecins dans l'équipe** : crédibilité clinique qu'aucun concurrent 100 % tech ne peut répliquer à notre stade.

## 13. Usage des fonds / demande (pre-seed)

**Tour pre-seed : 400 k€**, trois livrables.

| Poste | Allocation |
|---|---|
| Tech (pipeline HPO, mobile, infra HDS) | 180 k€ |
| Pilote chronométré 50 pédiatres (comp + data) | 80 k€ |
| Marquage CE (dossier technique + organisme notifié) | 60 k€ |
| Conformité (DPO externe, DPIA, audit HDS) | 40 k€ |
| GTM premier push (AFPA, congrès, onboarding) | 40 k€ |

**État en sortie de tour** : pilote validé, 2 hôpitaux dans le pipeline, CE marqué, prêts pour un Seed 1,5-2 M€.

## 14. Risques & mitigations

| Risque | Probabilité | Impact | Mitigation |
|---|---|---|---|
| Gain de temps mesuré < 2 min | Moyen | Élevé (ROI) | Pilote chronométré · seuil de sécurité à 1 min → ROI toujours ×5 |
| Cycle de vente hôpital long | Élevé | Moyen | Démarrer les conversations hôpital en parallèle, ne pas dépendre du canal tôt |
| Doctolib / Qare clonent la feature | Moyen | Moyen | Moat HPO + multilingue = 12-18 mois · publier l'étude clinique vite |
| Marquage CE refusé / retardé | Faible | Élevé | Classe I est le niveau minimum · dossier technique préparé par expert régulatoire |
| Sur-signalement parental → anxiété | Moyen | Moyen | Pas d'alertes côté parent · signaux visibles côté médecin uniquement |
| Rejet pédiatre (« encore un logiciel ») | Moyen | Élevé | Positionnement « outil du médecin » · UX 2 min · prescrit par le pédiatre lui-même |

## 15. Sources

### Contenu `[MIT]` + `[HPO]`
- **MIT Sloan Healthcare Initiative** : rapports sur le coût de prise en charge pédiatrique et le délai diagnostique (cohorte comparable France).
- **MIT Media Lab Connected Health** : capture numérique parentale et suivi pédiatrique longitudinal.
- **MIT wage benchmark** : valorisation du temps des professionnels de santé, ajustée France.
- **HPO / Monarch Initiative** : 17 000 phénotypes standardisés · https://hpo.jax.org
- Compléments : Orphanet (maladies rares FR), HAS (recommandations TND), annuaire Santé CNAM (compte pédiatres + généralistes FR).

### Références de forme (pitch / business doc seed-stage)
- Kevin Hale - *How to pitch your startup* · YC · https://www.ycombinator.com/library/6q-how-to-pitch-your-company
- Michael Seibel - *How to build the perfect demo day pitch* · YC · https://www.ycombinator.com/library/6s-how-to-build-the-perfect-demo-day-pitch
- Paul Graham - *How to convince investors* · http://paulgraham.com/convince.html
- *How to build a great Series A pitch and deck* · YC · https://www.ycombinator.com/library/8d-how-to-build-a-great-series-a-pitch-and-deck : **consulté pour la structure du one-pager uniquement, pas pour la cadence du pitch.**

---

*Dernière mise à jour : 2026-04-18, avant le pitch final du Hackathon ANDCS × MIT 2026, Track 2 AI in Pediatrics.*
