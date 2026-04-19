# RGPD.md - brief interne · Pedia

> **Note pour les lecteurs MIT** : **RGPD** est l'implémentation française du **GDPR** (Règlement UE 2016/679). Les citations légales françaises sont préservées telles quelles.
> **Usage** : brief interne d'équipe, pas un document de pitch.
> **Objectif** : n'importe lequel des 6 membres de l'équipe peut répondre à une question réglementaire sur scène en **15 secondes**.
> **Audience cible** : jury hackathon (niveau synthèse), pas conseil spécialisé.

---

## 🎯 Réponse stock de 15 secondes (à mémoriser)

> *« SaaS dispositif médical classe I, hébergement HDS, marquage CE dans le scope, DPIA (AIPD) en cours, consentement parental explicite sous Art. 9-2-a RGPD, aucun transfert hors UE. »*

Si on est arrêté sur « classe I » ou « HDS », on développe avec les points 2, 4 et 5 ci-dessous.

---

## 1. Classes de données

Pedia traite des **données de santé personnelles concernant un mineur** :
- voix (enregistrement parental),
- texte (note libre),
- photo (éruption, posture, geste),
- métadonnées temporelles et géographiques minimales.

Légalement : **catégorie particulière** (Art. 9 RGPD) + **mineur** (protection renforcée, loi française Art. 7-1 LIL 78-17).

## 2. Qualification logicielle

- **SaaS dispositif médical (DM)** → **classe I** au lancement.
- Le passage en **classe IIa** se déclencherait uniquement si Pedia ajoutait une fonction active d'**aide au diagnostic** (ex. probabilité de pathologie). **Pas le cas en v1** : Pedia remonte des pistes non diagnostiques (orientations, bilans préalables) ; la décision clinique reste au médecin.
- **Marquage CE classe I** dans le scope. Dossier technique + déclaration de conformité + responsable régulatoire nommé (Raphaël responsable, DPO externe en conseil).

## 3. Bases légales du traitement

- **Principale** : consentement explicite du titulaire de l'autorité parentale (Art. 9-2-a RGPD).
- **Secondaire** : intérêt vital de la personne concernée (Art. 9-2-c RGPD, cas d'urgence signalés).
- **Âge** : mineur < 15 ans → consentement parental obligatoire (loi française). À partir de 15 ans, l'adolescent reprend le contrôle de son consentement.

## 4. Hébergement

**HDS (Hébergeur de Données de Santé, hébergement santé certifié) obligatoire** : ISO 27001 + référentiel HDS.

| Candidat | HDS certifié | Localisation | Préférence Pedia |
|---|---|---|---|
| **OVHcloud** | oui | FR | **choix par défaut** |
| **Scaleway** | oui | FR | backup |
| **Outscale** | oui | FR | option |

**Exclus** : AWS, GCP, Azure US. Même avec SCC post-Schrems II, l'exposition au CLOUD Act est inacceptable pour des données pédiatriques.

## 5. Droits des personnes concernées

| Droit | Délai | Exercé par |
|---|---|---|
| Accès | 1 mois | Parent (< 15) / mineur (≥ 15) |
| Rectification | 1 mois | - |
| Effacement (« droit à l'oubli ») | 1 mois | - |
| Portabilité (HPO + export brut) | 1 mois | - |
| Opposition | 1 mois | - |
| Limitation | 1 mois | - |
| Retrait du consentement | Immédiat | Sans préjudice de la légalité du traitement antérieur |

Interface dédiée dans l'app parent : « Mes données · exporter / supprimer ».

## 6. Conservation

- **Actif** : pendant toute la durée du suivi médical avec le pédiatre prescripteur.
- **Archivage intermédiaire** : 20 ans **post-majorité** de l'enfant, aligné sur le dossier médical français (Art. R1112-7 CSP).
- **Suppression à la demande** : droit à l'effacement exerçable à tout moment, sauf obligation légale d'archivage médical.

## 7. DPO & registre

- **DPO externe** la première année (≈ 6 k€/an, budgeté dans le seed).
- **Registre de traitement** (Art. 30 RGPD) tenu dès le jour 1.
- **Contact** : `dpo@pedia.health` (mailbox réservée).

## 8. DPIA (AIPD - Analyse d'Impact relative à la Protection des Données)

**Obligatoire** en raison de trois facteurs cumulatifs :
1. Donnée de santé (Art. 9).
2. Mineur (public vulnérable).
3. Profilage algorithmique (NER + pattern matching + LLM).

**Calendrier** : DPIA lancée tôt, finalisée avant le déploiement en bêta ouverte.

## 9. Sous-traitants (chaîne complète, Art. 28 RGPD)

| Service | Provider prévu | Localisation | DPA |
|---|---|---|---|
| Transcription vocale | Whisper self-hosted / provider UE | FR / DE | ✅ |
| Structuration LLM | Provider HDS FR | FR | ✅ |
| Hébergement | OVHcloud HDS | FR | ✅ |
| Monitoring / logs | Provider UE (Grafana Cloud EU) | DE | ✅ |
| Analytics produit | PostHog self-hosted | FR (sur OVH) | ✅ |

**Règle** : pas de sous-traitance hors UE. Si techniquement nécessaire (ex. un modèle US), aucune donnée santé identifiable n'est envoyée, uniquement des embeddings anonymisés, et même ça nécessite une délibération.

## 10. Sécurité technique

- **Chiffrement au repos** : AES-256 (géré par l'hébergeur HDS).
- **TLS 1.3** en transit (pas de version antérieure acceptée).
- **Pseudonymisation** des identifiants patients en base.
- **MFA requis** pour les comptes pros pédiatres.
- **Logs d'accès** conservés 3 ans (exigence HDS).
- **Rotation des secrets** : trimestrielle.
- **Sauvegardes** chiffrées, testées mensuellement, RPO 24 h / RTO 4 h.

## 11. Que répondre si le jury demande

### Question courte → réponse 15 s (voir en haut du doc)

### Question détaillée, 30 secondes
> *« Côté régulatoire, Pedia est un dispositif médical classe I. Pas d'aide au diagnostic, donc pas classe IIa : nos suggestions sont non diagnostiques. Marquage CE dans le scope. Hébergement HDS en France, OVHcloud. Consentement parental explicite Art. 9-2-a RGPD. DPIA en cours, obligatoire car on combine données de santé, mineurs et IA. Conservation alignée sur le dossier médical français : 20 ans post-majorité. Rien ne sort de l'UE. Un DPO externe nous accompagne dès l'année un. »*

### Question piège : « Vous êtes trop petits pour gérer tout ça », 20 secondes
> *« La classe I est le niveau réglementaire le plus léger : marquage CE auto-déclaré avec un dossier technique. Un DPO externe à 6 k€/an couvre la conformité RGPD. La DPIA, le rôle de responsable régulatoire et le DPA avec l'hébergeur HDS sont standards, pas exotiques. Ce qui serait lourd, c'est la classe IIa : on n'y va pas tant qu'une étude clinique ne le justifie pas. »*

---

## Checklist avant pitch (pilotée par Raphaël)

- [ ] DPO externe identifié et contacté (shortlist de 3 cabinets).
- [ ] Devis OVHcloud HDS reçu.
- [ ] Mailbox `dpo@pedia.health` active.
- [ ] Réponse stock 15 s mémorisée par au moins **4 des 6** membres de l'équipe.
- [ ] `RGPD.md` relu par Ayda + Anouar (sanity-check sur la référence Art. R1112-7 CSP).
