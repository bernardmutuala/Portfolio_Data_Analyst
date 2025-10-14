# 📊 Analyse des performances commerciales d’un opérateur télécom au Togo – *TogoTelco*

## 🧭 Contexte du projet
TogoTelco est une entreprise fictive de télécommunication présente dans chaque préfecture du Togo.  
Elle commercialise des produits répartis en trois grandes catégories : **Téléphonie, Internet et Accessoires**.

Dans le cadre de ce challenge, j’ai été placé dans la peau d’un **Business Data Analyst** chargé de produire un **rapport Power BI interactif** à destination de la direction commerciale.  
L’objectif : **analyser les performances commerciales** sur 4 années de transactions, identifier les régions et produits les plus rentables, et formuler des recommandations stratégiques.

---

## 🎯 Objectifs du challenge
Les participants devaient :

- Créer un **rapport Power BI interactif** intégrant :
  - La rentabilité par région, préfecture et agence  
  - Les produits les plus vendus par catégorie/sous-catégorie  
  - L’évolution des ventes dans le temps  
  - La corrélation entre coût d’achat et marge bénéficiaire  
  - La répartition géographique des performances  

- Rédiger une **note d’analyse** comportant :
  - Une interprétation des résultats observés  
  - Des pistes d’optimisation commerciale  
  - Des recommandations ciblées pour la direction  

---

## 🧩 Données et indicateurs
- **Source des données** : jeu de 10 000 transactions simulées (2021–2025)  
- **Principales mesures DAX** créées :
  - `Total Sales`
  - `Total Cost`
  - `Total Margin`, etc.

---

## 📈 Résultats clés

### 1️⃣ Rentabilité par région, préfecture et agence
- La **région Maritime** domine largement avec **668,1 K$ de bénéfice**, soit **60,57 % du total** (1,10 M$).  
- Les autres régions affichent une contribution nettement plus faible :  
  - Kara : 19,77 %  
  - Plateaux : 8,28 %  
  - Centrale : 6,65 %  
  - Savanes : 4,72 %  
- Le **bénéfice moyen par agence/préfecture** est estimé à **27,57 K$**.  
  - Les agences **en dessous de cette moyenne** présentent un risque de **faible rentabilité**.

**➡ Interprétation :**  
Les performances sont concentrées sur la région Maritime, indiquant une forte centralisation des ventes et des marges.  
Une meilleure couverture commerciale dans les autres régions pourrait équilibrer la rentabilité nationale.

---

### 2️⃣ Produits les plus performants et rentables
- **Produit le plus vendu :** Clé 4G X (1 076 commandes, soit 10,76 % du total)
- **Top 5 des produits les plus rentables :**
  1. Modem Lite – 123 477,64 $  
  2. Clé 4G X – 121 121,59 $  
  3. Smartphone Pro – 99 764,91 $  
  4. Chargeur Pro – 95 369,56 $  
  5. Écouteurs Pro – 90 937,90 $

- **Top 5 des produits les moins rentables :**
  - Support Téléphonique Lite – 14 246,82 $  
  - Power Bank Pro – 15 565,50 $  
  - Routeur Pro – 23 226,73 $  
  - Chargeur X – 37 426,92 $  
  - Support Téléphone Max – 46 661,38 $

**➡ Interprétation :**  
Les produits technologiques à forte valeur (Internet & Téléphonie) génèrent les marges les plus élevées, tandis que les accessoires contribuent peu à la rentabilité globale.

---

### 3️⃣ Saisonnalité des ventes
- Les trimestres **T3 et T4** enregistrent les volumes de commandes les plus élevés (2 561 et 2 518).  
- Les ventes sont légèrement plus faibles en **T1 et T2** (2 468 et 2 453).  

**➡ Interprétation :**  
La performance commerciale augmente en fin d’année, probablement grâce à la saison des fêtes et aux promotions.

---

### 4️⃣ Corrélation entre coût d’achat et marge bénéficiaire
Une **corrélation positive** a été observée entre le coût d’achat et la marge :
- Les produits coûteux comme **Modem Lite** (244 954 $ de coût, 123 478 $ de marge) et **Clé 4G X** (241 103 $ de coût, 121 122 $ de marge) affichent les marges les plus élevées.  
- Quelques exceptions : **Routeur Max** (92 172 $ de coût ; 47 526 $ de marge) surpasse **Support Téléphone Max** (93 376 $ ; 46 661 $), malgré un coût légèrement inférieur.

**➡ Interprétation :**  
Certains produits ont un meilleur rapport coût/marge que d’autres, révélant des opportunités d’optimisation dans le mix-produit.

---

## 💡 Recommandations stratégiques

### 1️⃣ Optimiser la couverture régionale
- Renforcer les actions commerciales dans les régions sous-performantes.  
- Analyser les coûts logistiques et la présence locale pour comprendre les écarts de performance.  
- Adapter les offres selon le pouvoir d’achat et le profil des consommateurs régionaux.

### 2️⃣ Recentrer la stratégie produit
- Consolider les gammes à forte marge (Modem, Clés 4G, Smartphones).  
- Revoir la politique tarifaire des produits peu rentables.  
- Créer des **packs combinés** pour dynamiser les ventes d’accessoires.

### 3️⃣ Exploiter la saisonnalité
- Intensifier les campagnes marketing en T3–T4.  
- Lancer des programmes de fidélisation en T1–T2 pour lisser les ventes sur l’année.

### 4️⃣ Optimiser le ratio coût/marge
- Identifier les produits à coût élevé et faible rentabilité pour ajuster la politique d’approvisionnement.  
- Négocier avec les fournisseurs sur les produits d’entrée de gamme.

### 5️⃣ Mettre en place un suivi analytique continu
- Créer un **tableau de bord trimestriel de rentabilité par agence et produit**.  
- Utiliser la **médiane de la marge** comme indicateur de performance.  
- Coupler cette analyse à des données de satisfaction client pour relier rentabilité et fidélisation.

---

## 🧠 Compétences mobilisées
- **Power BI** (visualisation interactive, DAX, storytelling)  
- **Data Cleaning & Transformation** (Power Query)  
- **Analyse statistique** (corrélation, médiane, moyenne)  
- **Business Intelligence** (interprétation et recommandations stratégiques)  
- **Data Storytelling** (synthèse des insights pour la direction)

---

## 🏁 Conclusion
Cette analyse a permis d’identifier les zones géographiques les plus rentables, les produits prioritaires à renforcer, et les leviers d’optimisation commerciale pour TogoTelco.  
L’intégration du **nuage de points (corrélation coût–marge)** a notamment offert une lecture nouvelle de la rentabilité produit.

---
## 👤 Auteur

- **Nom** : Bernard Mutuala  
- **Rôle** : Analyste de Données  
- **Email** : bernardmutualankota@gmail.com  
- **Téléphone** : +243 991 435 462 / +243 812 598 453  
- **Localisation** : Kinshasa, RDC  
- **LinkedIn** : [bernard-mutuala](https://www.linkedin.com/in/bernard-mutuala-4335632a3)  
- **GitHub** : [bernardmutuala](https://github.com/bernardmutuala)  
---

