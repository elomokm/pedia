# BUSINESS_PLAN.md — Pedia

> **Format** : one-pager SF (YC / a16z / Sequoia seed-read). 16 sections, scannables en 90 s.
> **Budgets & marché** : sources **MIT** — tag inline `[MIT]` à chaque figure sensible.
> **Règle produit** : **prix < ROI** sur chaque tier client. Non négociable.

---

## 1. One-line pitch

**Pedia turns 180 lost days between pediatric consultations into a 2-minute clinical report.**

Parents capture (voice / text / photo, 30 s). HPO ontology structures. Pediatrician reads a pre-consult anamnesis in 2 minutes.

## 2. Problème

En pédiatrie ambulatoire française :

- **4 ans** de retard diagnostique médian pour une maladie rare pédiatrique. `[MIT]`
- **180 jours** de signal clinique non observé entre deux consultations de suivi (3–6 mois d'intervalle typique).
- **< 20 minutes** de consultation pédiatrique libérale médiane (DREES 2007, 15–25 min pour la moitié des consultations) — pour reconstruire ces 3–6 mois de mémoire parentale.
- Parents : oublient, ne trouvent pas les mots cliniques, parfois non-francophones.
- Pédiatres : anamnèse refaite à chaque visite, signaux faibles invisibles à l'œil nu, zéro traçabilité longitudinale.

## 3. Solution & wedge produit

**Pedia** est un carnet de santé pédiatrique augmenté, **prescrit par le pédiatre** au parent.

- **Côté parent (gratuit, pour toujours)** — un bouton : "Tenez pour parler", 30 s max. Voix, texte, photo, horodatés.
- **Côté pipeline** — transcription Whisper → NER clinique `pedia-ner-fr` → structuration vers **HPO** (17 000 phénotypes standardisés) → anonymisation → HDS.
- **Côté pédiatre** — synthèse pré-consultation : anamnèse narrative par catégorie UE 5, timeline 4 mois, signaux faibles (corrélations temporelles + tendances), pistes non diagnostiques.

Le **wedge** : être l'outil que le médecin **prescrit au parent**, pas que le parent choisit seul. Cela nous donne (a) une distribution quasi-gratuite (prescription = canal), (b) une qualité d'engagement supérieure (la prescription signifie "utilisez-le"), (c) un positionnement "outil du médecin", jamais "du parent vers le médecin" — clef pour l'adoption pédiatrique.

## 4. Why now

- **LLM qualité clinique** franchie en 2024–2025 — extraction d'entités + mapping ontologique robuste en français.
- **HPO adopté** comme standard européen d'interop pédiatrique (filières maladies rares, réseau ERN).
- **Alphabétisation santé digitale parentale** post-COVID — capture vocale normalisée (voice messages, Siri, WhatsApp voice).
- **Pression ONDAM 2025** sur l'ambulatoire pédiatrique + T2A hospitalière mal valorisée → fenêtre d'achat.

## 5. Marché — TAM / SAM / SOM `[MIT]`

| Segment | Volume | Prix moyen | TAM / an |
|---|---|---|---|
| Pédiatres libéraux (FR) | 10 000 | 588 €/an (49 €/mo) | **5,9 M€** |
| Généralistes faisant pédiatrie (FR) | 35 000 | 588 €/an | **20,6 M€** |
| Services de pédiatrie hospitaliers (FR) | 450 | 12 000 €/an | **5,4 M€** |
| **TAM France** | | | **≈ 31 M€** `[MIT]` |

- **SAM prioritaire** (libéraux pédiatres + hôpitaux à haute volumétrie) : **9 M€/an**.
- **SOM An 3** : **4 M€ ARR**.
- **An 4 — expansion UE** via interop HPO (DE, ES, IT, BE, NL) : **TAM × 6 ≈ 186 M€**.

## 6. Business model & pricing — **prix < ROI sur chaque tier** `[MIT]`

### 6.1 Parent — **gratuit, pour toujours**
Une seule face du marché paie. Cela maximise l'adoption parentale et protège Pedia du risque de perception "outil qui facture les familles".

### 6.2 Pédiatre libéral — **49 € / mois / praticien**

| Calcul | Valeur |
|---|---|
| Hypothèse gain de temps | 4 min / consultation × 25 consultations / jour × 20 jours / mois ≈ **11 h / mois** |
| Valorisation du temps médical `[MIT wage benchmark]` | ≈ 96 € / h en libéral |
| Gain mensuel équivalent | **≈ 1 058 € / mois** |
| Prix Pedia | 49 € / mois |
| **ROI** | **× 21** |
| **Seuil de rentabilité** | ≈ **1 min 30** gagnées sur tout le mois |

Le **seuil psychologique < 50 €** permet au pédiatre de décider seul sans passer par le comptable du cabinet.

### 6.3 Service hospitalier — **12 000 € / an / service**

| Calcul | Valeur |
|---|---|
| Reconvocations évitées (50–100/an × ≈ 400 €/reconvocation) `[MIT]` | **+ 20 à 40 k€ / an** |
| Capacité T2A récupérée | + 5 à 15 k€ / an |
| Bénéfice net annualisé | **≈ + 33 k€ / an** |
| Prix Pedia | 12 k€ / an |
| **Payback** | **≈ 5 mois** |
| **ROI** | **× 2,8** |

### 6.4 Upsell An 2 (optionnel)
Formule **Premium 79 €/mo** pour les libéraux : conseils vaccinaux automatisés (basés HAS), alertes santé publique, export DPI EPATEM.

## 7. Unit economics

| Métrique | Valeur cible |
|---|---|
| CAC libéral | **< 300 €** (AFPA + congrès + bouche-à-oreille prescripteur) |
| LTV libéral | **> 1 800 €** (3 ans × 588 €/an × rétention nette) |
| **LTV / CAC** | **> 6** |
| Churn mensuel | **< 2 %** |
| Gross margin | **> 85 %** (SaaS full-EU hosting) |
| Payback CAC | **< 6 mois** |

## 8. Go-to-market motion

### An 1 — libéral pur
- **AFPA** (Association Française de Pédiatrie Ambulatoire) partenariat de distribution.
- **Congrès pédiatriques** (JFRP, Printemps de la Pédiatrie) — stand + ateliers chronométrés.
- **Bouche-à-oreille prescripteur** — chaque pédiatre satisfait prescrit à 30–50 familles.
- **Objectif** : 500 pédiatres signés, ARR 294 k€.

### An 2 — ouverture hôpital + généralistes
- Pilote **2 CHU** (Necker, Lyon Sud — déjà listés comme supporters sur la landing).
- CME (formation médicale continue) intégrant Pedia dans la formation à l'anamnèse.
- **Objectif** : 5 hôpitaux + 1 500 libéraux, ARR 1,5 M€.

### An 3 — institutionnel
- **CNAM** : négociation remboursement partiel via CCAM dédiée "synthèse pré-consultation pédiatrique".
- **ARS** : dispositif régional maladies rares / dépistage TND.
- **Objectif** : ARR 4 M€.

### An 4 — Europe
- Activation **HPO interop** comme clef d'entrée DE / ES / IT / BE / NL.
- Partenaire distribution local par pays.

## 9. Traction & milestones (12 mois)

| Mois | Milestone |
|---|---|
| M0 | Bêta fermée 10 cabinets pilotes (déjà engagés). |
| M3 | Pilote chronométré démarré — 50 pédiatres. |
| M3 | **AIPD** finalisée. |
| M6 | Rapport de chronométrage → validation seuil "gain ≥ 2 min". |
| M9 | Premier contrat hospitalier signé. |
| M12 | **Marquage CE classe I** obtenu. 500 pédiatres actifs. ARR 294 k€. |

## 10. Trajectoire ARR

| | An 1 | An 2 | An 3 |
|---|---|---|---|
| **Pédiatres libéraux actifs** | 500 | 1 500 | 3 500 |
| **Services hospitaliers** | 0 | 5 | 25 |
| **ARR libéral** | 294 k€ | 882 k€ | 2,06 M€ |
| **ARR hôpital** | 0 | 60 k€ | 300 k€ |
| **ARR institutionnel** | 0 | 600 k€ | 1,65 M€ |
| **ARR total** | **294 k€** | **1,5 M€** | **4 M€** |

## 11. Compétition & moat

### 11.1 Paysage
| Acteur | Ce qu'ils font | Pourquoi pas nous |
|---|---|---|
| **Doctolib** | Prise de RDV + téléconsult | Pas de capture longitudinale parent-enfant |
| **Qare / Livi** | Téléconsult urgente | Pas de suivi, pas de pédiatrie dédiée |
| **Dossier Médical Partagé** | Agrégation institutionnelle | Pas d'observation parentale, pas d'IA |
| **MyChart / Epic MyChart EU** | Portail patient | Pas de capture libre, pas d'HPO |

### 11.2 Moat (12–18 mois de copie)
1. **Ontologie HPO pédiatrique française** — mapping éprouvé sur observations parentales non structurées.
2. **Pipeline vocal multilingue** — FR en v0, 5 langues EU en v1.
3. **Distribution prescrite par le médecin** — difficile à répliquer sans partenariats cliniques.
4. **Étude clinique publiée** — argument régulateur et barrière à l'entrée (en préparation post-pilote).

## 12. Regulatory

- **Statut** : SaaS → **dispositif médical classe I** au lancement. Montée en IIa envisagée si fonction d'aide au diagnostic active (hors scope v1).
- **CE marking** : objectif M12.
- **RGPD** : consentement parental explicite Art. 9-2-a. Mineur < 15 ans.
- **HDS** : hébergement certifié obligatoire (OVHcloud HDS ou Scaleway HDS).
- **AIPD** : analyse d'impact obligatoire (donnée santé + mineur + IA) — M3.
- **Sources** : voir `RGPD.md` pour le brief complet.

## 13. Équipe

| Prénom | Rôle | Pourquoi critique |
|---|---|---|
| **Fanette** | dev | Product + UX parent |
| **Elom** | dev | Pipeline voix → HPO |
| **Raoul** | dev + business | GTM libéral + ops |
| **Raphaël** | dev + business | Hôpital + régulation |
| **Ayda** | med | Validation sémiologique + réseau clinique |
| **Anouar** | med | Anamnèse + filières maladies rares |

**Deux médecins dans la team** = crédibilité clinique qu'aucun concurrent full-tech ne peut répliquer à notre stade.

## 14. Use of funds / ask (pré-seed)

**Tour pré-seed : 400 k€**, 12 mois de runway.

| Poste | Allocation |
|---|---|
| Tech (pipeline HPO, mobile, infra HDS) | 180 k€ |
| Pilote chronométré 50 pédiatres (compensation + data) | 80 k€ |
| Marquage CE (dossier + organisme notifié) | 60 k€ |
| Conformité (DPO externe, AIPD, HDS audit) | 40 k€ |
| GTM An 1 (AFPA, congrès, onboarding) | 40 k€ |

**Sortie du tour** : ARR 294 k€, 2 hôpitaux en pipeline, CE marked, prêt·e pour un Seed 1,5–2 M€.

## 15. Risques & mitigations

| Risque | Probabilité | Impact | Mitigation |
|---|---|---|---|
| Gain de temps mesuré < 2 min | Moyenne | Élevé (ROI) | Pilote chronométré M3 · seuil de sécurité à 1 min → ROI × 5 |
| Cycle vente hôpital > 9 mois | Haute | Moyen | Démarrer conversations An 1 · ne pas dépendre du canal hospitalier avant An 2 |
| Doctolib / Qare copient la feature | Moyenne | Moyen | Moat HPO + multilingue = 12–18 mois · lancer étude clinique publiée vite |
| Refus ou retard CE marking | Basse | Élevé | Classe I minimal · dossier préparé par expert régulatoire dès M3 |
| Sur-signalement parental → angoisse | Moyenne | Moyen | Pas d'alerte côté parent · signaux visibles médecin uniquement |
| Rejet pédiatre ("encore un logiciel") | Moyenne | Élevé | Positionnement "outil du médecin" · UX 2 min · prescription par le pédiatre lui-même |

## 16. Sources `[MIT]`

- **MIT Sloan Healthcare Initiative** — pediatric cost-of-care & diagnostic-delay reports (France comparable cohort).
- **MIT Media Lab Connected Health** — parental digital capture & longitudinal pediatric monitoring.
- **MIT wage benchmark** — medical professional time valuation, adjusted for France.
- Compléments : Orphanet (maladies rares FR), HAS (recommandations TND 2018/2020), DREES (démographie médicale FR), annuaire Santé CNAM (compte pédiatres + généralistes).

---

*Dernière mise à jour : 2026-04-18 — avant pitch Cosmic Harp 2026, piste Pédiatrie.*
