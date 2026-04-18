# PRACTICE_QUESTIONS.md — préparation Q&A jury (2 min)

> **Budget** : 2 min après le pitch. On vise **5 à 6 questions**, réponse courte (≤ 20 s chacune à l'oral).
> **Règle** : si la question part en HS ou en piège, ramener en **15 s** vers Problème / Solution / ROI / Équipe.
> **Attribution** : chaque question a un·e répondant·e principal·e (P) et un·e back-up (B).

---

## 🩺 Médical — défendu par Ayda / Anouar

### Q1. « Vos suggestions ne sont-elles pas un diagnostic déguisé ? »
- **P** : Ayda · **B** : Anouar
- *« Non. Pedia ne pose aucun diagnostic. Ce qui apparaît dans "pistes à explorer", ce sont des **orientations non diagnostiques** — CAMSP, ORL, neuropédiatre — ou des **bilans somatiques préalables** (audiométrie, ferritine). La décision clinique reste intégralement celle du praticien. C'est d'ailleurs ce qui nous maintient dispositif médical **classe I** et non IIa. »*

### Q2. « Les parents ne vont-ils pas sur-signaler et angoisser ? »
- **P** : Anouar · **B** : Ayda
- *« L'interface parent n'affiche **aucune alerte**, aucune couleur rouge, aucune suggestion. Côté parent, Pedia est un **journal**, pas un diagnostiqueur. Les signaux faibles ne sont visibles que côté médecin. On protège volontairement le parent du biais de recherche de symptôme. »*

### Q3. « Comment validez-vous l'exactitude de l'anamnèse générée ? »
- **P** : Ayda · **B** : Elom
- *« Trois garde-fous. Un : extraction vers l'ontologie **HPO** — 17 000 phénotypes standardisés, pas du texte libre. Deux : chaque entrée est **traçable à l'observation source** (audio + transcription). Trois : le pédiatre peut éditer la synthèse avant export. Étude de concordance prévue sur les 50 pédiatres du pilote M3–M6. »*

### Q4. « Et si l'enfant a une maladie que l'IA ne connaît pas ? »
- **P** : Anouar · **B** : Ayda
- *« HPO couvre toutes les maladies rares référencées Orphanet. Pour un phénotype non mappé, Pedia remonte les **observations brutes** dans la synthèse, avec horodatage. Le médecin garde toujours accès à la donnée non structurée. On ne substitue pas la clinique, on la **nourrit**. »*

---

## 💻 Technique — défendu par Elom / Fanette

### Q5. « Pourquoi HPO et pas une taxonomie maison ? »
- **P** : Elom · **B** : Fanette
- *« HPO est la **norme internationale** d'interopérabilité pédiatrique, maintenue par le Monarch Initiative, adoptée par les filières maladies rares françaises. Construire maison, c'est se couper des réseaux et des filières. HPO, c'est la clé d'entrée pour l'Europe en an 4. »*

### Q6. « La voix d'un parent exténué à 3h du matin — votre transcription tient ? »
- **P** : Fanette · **B** : Elom
- *« Whisper FR fait du bruit ambiant robuste. Latence médiane mesurée : 420 ms. Quand la transcription est douteuse, on remonte un score de confiance et le parent peut réécouter. L'audio brut est conservé — jamais supprimé avant confirmation. »*

### Q7. « OpenAI / US — comment gérez-vous Schrems II ? »
- **P** : Elom · **B** : Raoul
- *« Stack 100 % EU dès la production. Whisper peut tourner on-prem ou via un provider UE. LLM structuration : modèle hébergé chez un provider HDS français ou allemand. Aucune donnée santé ne sort de l'UE. Détails dans notre brief RGPD interne. »*

---

## 💰 Business — défendu par Raoul / Raphaël

### Q8. « Pourquoi 49 € et pas 99 € ? »
- **P** : Raoul · **B** : Raphaël
- *« Seuil psychologique sous 50 €. En-dessous, la décision d'achat ne remonte pas au comptable du cabinet — le pédiatre décide seul. Upsell prévu en an 2 : formule Premium 79 € avec conseils vaccinaux + alertes HAS. On garde la règle : **prix < ROI** sur chaque tier. »*

### Q9. « Comment justifiez-vous les 11 h gagnées par mois ? »
- **P** : Raphaël · **B** : Raoul
- *« Hypothèse à 4 min par consultation × 25 consultations/jour × 20 jours = 11 h. À valider en pilote chronométré dès M3. **Seuil de sécurité** : même avec 1 min gagnée, ROI reste × 5. On ne joue pas au-dessus de ce chiffre. »*

### Q10. « Vous faites face à Doctolib qui a 300 000 médecins — vous êtes morts. »
- **P** : Raoul · **B** : Raphaël
- *« Doctolib fait la **prise de rendez-vous** et la **téléconsultation**. Nous, on fait la **capture longitudinale parent-enfant** entre consultations. Différent métier, différent payeur (Doctolib = médecin généraliste multi-spé, nous = pédiatre + hôpital pédiatrique). Notre moat : ontologie HPO, pipeline multilingue, distribution prescrite par le pédiatre. Douze à dix-huit mois pour qu'un concurrent copie. »*

### Q11. « Pourquoi l'hôpital rapporte-t-il moins en ROI que le libéral ? »
- **P** : Raoul · **B** : Raphaël
- *« Parce que l'hôpital ne monétise pas le temps individuel. Il achète de l'économie budgétaire — reconvocations évitées + T2A récupérée. ROI × 2,8 mais **payback 5 mois**, c'est ultra-compétitif face aux SaaS hospitaliers classiques à 12–18 mois. »*

### Q12. « Vos chiffres de marché viennent d'où ? »
- **P** : Raoul · **B** : Raphaël
- *« Sources MIT — MIT Sloan Healthcare Initiative sur les coûts de prise en charge pédiatrique, et MIT Media Lab Connected Health sur l'adoption parentale du digital santé. Recoupés avec les données DREES et l'annuaire Santé de la CNAM pour le compte de praticiens France. »*

---

## ⚖️ Régulatoire — défendu par Raphaël / Ayda

### Q13. « RGPD, données santé mineures — vous gérez comment ? »
- **P** : Raphaël · **B** : Ayda
- *« Réponse type : **SaaS DM classe I, hébergement HDS, CE M12, AIPD en cours, consentement parental explicite Art. 9-2-a RGPD, aucun transfert hors UE.** Le brief complet est dans notre `RGPD.md`. »*

### Q14. « Que se passe-t-il à la majorité de l'enfant ? »
- **P** : Ayda · **B** : Raphaël
- *« À 15 ans, l'enfant prend la main sur le consentement (loi française). Dossier conservé pendant 20 ans post-majorité pour cohérence avec le dossier médical (Art. R1112-7 CSP). Droits d'accès, rectification, effacement garantis à tout moment — délai de réponse : 1 mois. »*

---

## 👥 Équipe — défendue par Fanette

### Q15. « Vous êtes six, c'est beaucoup pour une pré-seed. Qui part quand ? »
- **P** : Fanette · **B** : Raoul
- *« On ne part pas, on **complémentaire**. Deux médecins — Ayda et Anouar — garantissent la crédibilité clinique qu'aucun concurrent tech ne peut répliquer. Deux dev — Elom et moi — portent le produit. Deux dev-business — Raoul et Raphaël — couvrent la GTM libéral/hôpital. Aucun doublon. »*

### Q16. « Pourquoi vous gagneriez face à une équipe 100 % médicale ou 100 % tech ? »
- **P** : Raphaël · **B** : Ayda
- *« Parce que Pedia n'est ni un outil tech qu'on vend aux médecins, ni une app médicale qu'on fait coder par un prestataire. C'est une **interface médecin-parent** — ça demande les deux cultures dans la même pièce tous les jours. On est déjà cette configuration. »*

---

## 🎯 Si le jury part en off-topic — phrase de rebond

> *« Question intéressante — on peut y revenir après. Avant ça, sur ce qui nous amène ici : `[un des trois pivots : 4 ans de retard · ROI × 21 · capture parent 30 s]`. »*

## 🛡️ Ce qu'on n'avance **jamais**

- Un chiffre de gain de temps > 11 h sans préciser "hypothèse à valider".
- Une comparaison frontale avec Doctolib autre que "métier différent".
- Une promesse de diagnostic automatique.
- Un pourcentage d'amélioration du délai diagnostique avant qu'on ait le pilote.
- Un prix inférieur à 49 € (détruit la marge, détruit la perception de valeur).

## 🪜 Priorité si on a seulement 2 questions sur 5

1. **Q1 (diagnostic déguisé ?)** — c'est le piège classique, il faut l'emporter avec calme.
2. **Q8 ou Q9 (pricing / ROI)** — montre la maîtrise business.
3. **Q10 (concurrents)** — montre la stratégie.
4. Les autres en remplissage.
