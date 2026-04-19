# PRACTICE_QUESTIONS.md - préparation Q&R jury (2 min)

> **Budget** : 2 min après le pitch. On vise **5 à 6 questions**, réponse courte (≤ 20 s à l'oral chacune).
> **Règle** : si la question dérive ou si c'est un piège, pivoter en **15 s** vers Problème / Solution / ROI / Équipe.
> **Attribution** : chaque question a un répondant principal (**P**) et un back-up (**B**).

---

## 🩺 Médical - défendu par Ayda / Anouar

### Q1. « Vos suggestions ne sont-elles pas un diagnostic déguisé ? »
- **P** : Ayda · **B** : Anouar
- *« Non. Pedia ne pose aucun diagnostic. Ce qui apparaît dans "pathways to explore", ce sont des **orientations non diagnostiques** : CAMSP, ORL, neuropédiatre, ou des **bilans somatiques préalables** (audiométrie, ferritine). La décision clinique reste entièrement au praticien. C'est précisément ce qui nous maintient en classe I, pas IIa. »*

### Q2. « Les parents ne vont-ils pas sur-signaler et s'angoisser ? »
- **P** : Anouar · **B** : Ayda
- *« L'interface parent n'affiche **aucune alerte**, pas de couleur rouge, pas de suggestion. Côté parent, Pedia est un **journal**, pas un diagnostiqueur. Les signaux faibles ne sont visibles que côté médecin. On protège délibérément le parent du biais de recherche de symptômes. »*

### Q3. « Comment validez-vous la justesse de l'anamnèse générée ? »
- **P** : Ayda · **B** : Elom
- *« Trois garde-fous. Un : extraction dans l'ontologie **HPO**, 17 000 phénotypes standardisés, pas du texte libre. Deux : chaque entrée est **traçable jusqu'à l'observation source** (audio + transcription). Trois : le pédiatre peut éditer la synthèse avant export. Étude de concordance prévue dans le pilote 50 pédiatres. »*

### Q4. « Et si l'enfant a une maladie que l'IA ne connaît pas ? »
- **P** : Anouar · **B** : Ayda
- *« HPO couvre toutes les maladies rares référencées dans Orphanet. Pour un phénotype non mappé, Pedia remonte les **observations brutes** dans la synthèse, horodatées. Le médecin garde toujours accès à la donnée non structurée. On ne remplace pas le jugement clinique, on le **nourrit**. »*

---

## 💻 Technique - défendu par Elom / Fanette

### Q5. « Pourquoi HPO et pas une taxonomie maison ? »
- **P** : Elom · **B** : Fanette
- *« HPO est le **standard international** d'interopérabilité pédiatrique, maintenu par la Monarch Initiative, adopté par les filières maladies rares françaises. Faire maison nous coupe des réseaux et des filières. HPO est aussi notre clé d'entrée en Europe. »*

### Q6. « La voix d'un parent à 3 h du matin, épuisé : votre transcription tient ? »
- **P** : Fanette · **B** : Elom
- *« Whisper FR résiste bien au bruit ambiant. Latence médiane mesurée : 420 ms. Quand la transcription est incertaine, on affiche un score de confiance et le parent peut réécouter. L'audio brut est conservé, jamais supprimé avant confirmation. »*

### Q7. « OpenAI / US : comment gérez-vous Schrems II ? »
- **P** : Elom · **B** : Raoul
- *« Stack 100 % UE en production. Whisper peut tourner on-prem ou via un provider UE. La structuration LLM tourne sur un provider HDS français ou allemand. Aucune donnée santé ne sort de l'UE. Détails dans notre brief RGPD interne. »*

---

## 💰 Business - défendu par Raoul / Raphaël

### Q8. « Pourquoi 49 € et pas 99 € ? »
- **P** : Raoul · **B** : Raphaël
- *« Seuil psychologique sous 50 €. En dessous, la décision d'achat ne remonte pas à la comptable du cabinet : le pédiatre décide seul. Upsell Premium 79 € prévu plus tard : conseils vaccinaux basés HAS + alertes santé publique. La règle tient : **prix < ROI** sur chaque palier. »*

### Q9. « Comment justifiez-vous 11 heures gagnées par mois ? »
- **P** : Raphaël · **B** : Raoul
- *« Hypothèse : 4 min par consultation × 25 consultations/jour × 20 jours = 11 h. À valider dans le pilote chronométré. **Seuil de sécurité** : même à 1 min gagnée, le ROI reste ×5. On ne pitche jamais au-dessus de ce chiffre. »*

### Q10. « Vous êtes face à Doctolib avec 300 000 médecins, vous êtes morts. »
- **P** : Raoul · **B** : Raphaël
- *« Doctolib fait de la **prise de rendez-vous** et de la **téléconsultation**. Nous faisons la **capture longitudinale parent-enfant** entre les consultations. Métier différent, payeur différent (Doctolib = généralistes multi-spé, nous = pédiatres + services hospitaliers pédiatriques). Notre moat : ontologie HPO, pipeline multilingue, distribution prescrite par le médecin. Douze à dix-huit mois pour qu'un concurrent copie. »*

### Q11. « Pourquoi le palier hôpital montre-t-il un ROI plus faible que le palier pédiatre libéral ? »
- **P** : Raoul · **B** : Raphaël
- *« Parce que les hôpitaux ne monétisent pas le temps individuel. Ils achètent de l'**économie budgétaire** : reconvocations évitées + facturation T2A récupérée. Payback sous six mois, ultra-compétitif face aux SaaS hospitaliers classiques à 12-18 mois. »*

### Q12. « D'où viennent vos chiffres de marché ? »
- **P** : Raoul · **B** : Raphaël
- *« Sources MIT : MIT Sloan Healthcare Initiative sur le coût des soins pédiatriques, et MIT Media Lab Connected Health sur l'adoption numérique santé parentale. Recoupés avec l'annuaire Santé CNAM pour le compte de praticiens France. »*

---

## ⚖️ Régulatoire - défendu par Raphaël / Ayda

### Q13. « RGPD, données santé pédiatriques : comment gérez-vous ? »
- **P** : Raphaël · **B** : Ayda
- *« Réponse courte : **SaaS DM classe I, hébergement HDS, marquage CE dans le scope, DPIA en cours, consentement parental explicite Art. 9-2-a RGPD, aucun transfert hors UE.** Brief complet dans notre `RGPD.md`. »*

### Q14. « Que se passe-t-il quand l'enfant devient adulte ? »
- **P** : Ayda · **B** : Raphaël
- *« À 15 ans, le mineur reprend la main sur le consentement (loi française). Dossier conservé 20 ans post-majorité, en cohérence avec le dossier médical français (Art. R1112-7 CSP). Droits d'accès, rectification, effacement garantis à tout moment. Fenêtre de réponse : 1 mois. »*

---

## 👥 Équipe - défendue par Fanette

### Q15. « Vous êtes six, c'est beaucoup pour une pre-seed. Qui part quand ? »
- **P** : Fanette · **B** : Raoul
- *« Personne ne part, on **complète**. Deux médecins, Ayda et Anouar, apportent une crédibilité clinique qu'aucun concurrent 100 % tech ne peut répliquer. Deux devs, Elom et moi, portent le produit. Deux dev-business, Raoul et Raphaël, couvrent le GTM libéral et hospitalier. Aucune redondance. »*

### Q16. « Pourquoi gagneriez-vous face à une équipe 100 % médicale ou 100 % tech ? »
- **P** : Raphaël · **B** : Ayda
- *« Parce que Pedia n'est ni un outil tech qu'on vend aux médecins, ni une app médicale qu'on sous-traite à un studio. C'est une **interface médecin-parent** : ça demande les deux cultures dans la même pièce tous les jours. On est déjà cette configuration. »*

---

## 🎯 Si le jury dérive : ligne de pivot

> *« Question intéressante, heureux d'y revenir. Avant ça, sur ce qui nous amène ici : `[un des trois ancres : 4 ans de délai diagnostique · ROI ×21 · capture parentale de 30 s]`. »*

## 🛡️ Ce qu'on ne dit **jamais**

- Un chiffre de temps gagné > 11 h sans « hypothèse à valider ».
- Une comparaison frontale avec Doctolib autre que « métier différent ».
- Une promesse de diagnostic automatique.
- Un pourcentage d'amélioration du délai diagnostique avant d'avoir le pilote.
- Un prix en dessous de 49 € (tue la marge, tue la perception de valeur).

## 🪜 Priorités si on n'a que 2 questions sur 5

1. **Q1 (diagnostic déguisé ?)** : le piège classique. La gagner calmement.
2. **Q8 ou Q9 (prix / ROI)** : montre la maîtrise business.
3. **Q10 (concurrents)** : montre la stratégie.
4. Le reste, c'est du remplissage.
