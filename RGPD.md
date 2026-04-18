# RGPD.md — brief interne · Pedia

> **Usage** : brief interne de l'équipe — pas un doc pour le pitch.
> **Objectif** : que n'importe lequel des 6 membres de l'équipe puisse répondre à une question régulatoire sur scène en **15 secondes**.
> **Audience cible** : jury hackathon (niveau découverte), pas avocat spécialisé.

---

## 🎯 Réponse-type 15 s (à savoir par cœur)

> *« SaaS dispositif médical classe I, hébergement HDS, CE marking visé M12, AIPD en cours, consentement parental explicite Art. 9-2-a RGPD, aucun transfert hors UE. »*

Si on vous arrête à « classe I » ou « HDS » → décliner les points 2, 4, 5 ci-dessous.

---

## 1. Classe des données

Pedia traite de la **donnée de santé à caractère personnel concernant un mineur** :
- voix (enregistrement parental),
- texte (note libre),
- photo (éruption, posture, geste),
- métadonnées temporelles et géographiques minimales.

Juridiquement : **catégorie particulière** (Art. 9 RGPD) + **mineur** (protection renforcée, loi française Art. 7-1 LIL 78-17).

## 2. Qualification du logiciel

- **SaaS dispositif médical (DM)** → **classe I** au lancement.
- La montée en **classe IIa** interviendrait si Pedia ajoutait une fonction d'**aide au diagnostic** active (ex. probabilité d'une pathologie). **Ce n'est pas le cas en v1** — Pedia suggère des pistes non diagnostiques (orientations, bilans préalables) ; la décision clinique reste au praticien.
- **CE marking classe I** visé à **M12**. Dossier technique + déclaration de conformité + responsable réglementaire nommé (Raphaël en lead, DPO externe en conseil).

## 3. Bases légales du traitement

- **Principale** : consentement explicite du titulaire de l'autorité parentale — Art. 9-2-a RGPD.
- **Secondaire** : intérêt vital de la personne concernée — Art. 9-2-c RGPD (cas urgence signalée).
- **Âge** : mineur < 15 ans → consentement parental obligatoire (loi française). À partir de 15 ans : l'adolescent reprend la main sur son consentement.

## 4. Hébergement

**HDS (Hébergeur de Données de Santé) obligatoire** — certification ISO 27001 + référentiel HDS.

| Candidat | Certif HDS | Localisation | Préférence Pedia |
|---|---|---|---|
| **OVHcloud** | oui | FR | **retenu par défaut** |
| **Scaleway** | oui | FR | back-up |
| **Outscale** | oui | FR | option |

**Exclus** : AWS, GCP, Azure US — même avec clauses-types post-Schrems II, risque CLOUD Act non acceptable pour donnée pédiatrique.

## 5. Droits des personnes

| Droit | Délai | Qui exerce |
|---|---|---|
| Accès | 1 mois | Parent (< 15 ans) / mineur (≥ 15 ans) |
| Rectification | 1 mois | — |
| Effacement ("droit à l'oubli") | 1 mois | — |
| Portabilité (export HPO + brut) | 1 mois | — |
| Opposition | 1 mois | — |
| Limitation | 1 mois | — |
| Retrait du consentement | Immédiat | Sans préjudice de la légalité antérieure |

Interface dédiée dans l'app parent : "Mes données · exporter / supprimer".

## 6. Durée de conservation

- **Active** : pendant toute la durée du suivi médical avec le pédiatre prescripteur.
- **Archivage intermédiaire** : 20 ans **post-majorité** de l'enfant, cohérence avec le dossier médical français (Art. R1112-7 CSP).
- **Suppression à la demande** : droit à l'effacement exercé à tout moment, hors obligation d'archivage médical légale.

## 7. DPO & registre

- **DPO externe** la 1re année (≈ 6 k€/an, budgétée dans le plan seed).
- **Registre des traitements** (Art. 30 RGPD) tenu dès J1.
- **Contact** : `dpo@pedia.health` (mailbox déjà réservée).

## 8. AIPD — Analyse d'impact relative à la protection des données

**Obligatoire** car triple facteur :
1. Donnée de santé (Art. 9).
2. Mineur (public vulnérable).
3. Profilage algorithmique (NER + pattern matching + LLM).

**Planning** : AIPD lancée **M1**, finalisée **M3** avant mise en production ouverte au-delà des 10 cabinets bêta.

## 9. Sous-traitants (chaîne complète — Art. 28 RGPD)

| Service | Fournisseur envisagé | Localisation | DPA |
|---|---|---|---|
| Transcription voix | Whisper self-hosted / provider EU | FR / DE | ✅ |
| Structuration LLM | Provider HDS FR | FR | ✅ |
| Hébergement | OVHcloud HDS | FR | ✅ |
| Monitoring / logs | Provider EU (Grafana Cloud EU) | DE | ✅ |
| Analytics produit | PostHog self-hosted | FR (chez OVH) | ✅ |

**Règle** : aucune sous-traitance hors UE. Si techniquement nécessaire (ex. modèle US), alors pas de donnée santé identifiante envoyée — uniquement embeddings anonymisés, et encore, après arbitrage.

## 10. Sécurité technique

- **Chiffrement au repos** : AES-256 (géré par l'hébergeur HDS).
- **TLS 1.3** en transit (aucune version antérieure acceptée).
- **Pseudonymisation** des identifiants patient côté DB.
- **MFA obligatoire** pour les comptes pédiatres (app pro).
- **Logs d'accès** conservés 3 ans (exigence HDS).
- **Rotation des secrets** trimestrielle.
- **Sauvegardes** chiffrées, testées mensuellement, RPO 24 h / RTO 4 h.

## 11. Que dire si le jury demande

### Question courte → réponse 15 s (voir top du doc)

### Question détaillée — réponse 30 s
> *« Côté régulatoire, Pedia est qualifié dispositif médical classe I. Pas d'aide au diagnostic, donc pas classe IIa — nos suggestions sont non diagnostiques. Marquage CE visé à douze mois. Hébergement HDS en France, OVHcloud. Consentement parental explicite Art. 9-2-a RGPD. AIPD en cours — obligatoire parce qu'on cumule donnée santé, mineur, et IA. Durée de conservation calée sur le dossier médical français : 20 ans post-majorité. Rien ne sort de l'UE. Un DPO externe nous accompagne dès la première année. »*

### Question piège : « vous êtes trop petits pour gérer tout ça » — réponse 20 s
> *« Classe I est le niveau le plus léger — marquage CE auto-déclaré avec dossier technique. Un DPO externe à 6 k€/an couvre la conformité RGPD. L'AIPD, notre rôle réglementaire, et le DPA avec l'hébergeur HDS sont standard, pas exotiques. Ce qui serait gros, c'est classe IIa — on ne s'y aventure pas avant que l'étude clinique le justifie. »*

---

## Check-list avant pitch (à cocher par Raphaël)

- [ ] DPO externe identifié et contacté (3 cabinets en short-list).
- [ ] OVHcloud HDS devis reçu.
- [ ] Mailbox `dpo@pedia.health` active.
- [ ] Réponse-type 15 s mémorisée par au moins **4** membres sur 6.
- [ ] `RGPD.md` relu par Ayda + Anouar (vérification cohérence mention Art. R1112-7 CSP).
