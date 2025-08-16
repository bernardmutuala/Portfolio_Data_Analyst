📌 Analyse Power BI — Prestations de Services

🎯 Objectif du projet

Ce projet a pour but d’analyser les prestations de services d’une entreprise à travers les devis, les factures, les paiements, et les modes de règlement.

Un tableau de bord interactif Power BI permet d’obtenir une vision claire des performances commerciales, du comportement des clients et du suivi des règlements.

---

🧮 Données utilisées

Les données sont issues d’une base PostgreSQL, simulant un système de gestion de prestations. Elles incluent :

- Informations sur les devis (montants, statuts)
- Factures (dates, montants TTC, règlements)
- Types de clients et civilité
- Modes de paiement et dates de règlement

---

🛠️ Outils & Technologies

- PostgreSQL (Requêtes SQL)
- Microsoft Excel (nettoyage et structuration via Power Query)
- Power BI Desktop (création du tableau de bord)
- DAX (formules pour indicateurs dynamiques)

---

📊 Description du tableau de bord

Le tableau de bord est composé de deux pages :

**Page 1 : Vue globale des indicateurs**

Contient 7 KPI principaux et 3 graphiques dynamiques :

- **KPI** : Nombre total de devis, Nombre total de devis facturés, Taux de transformation, Montant total facturé TTC, Montant total non réglé, Nombre de factures réglées, Taux de paiement.
- **Visuels** : Solde facturé TTC par type de client, Répartition des règlements par civilité, Répartition par type de règlement.

**Page 2 : Analyse avancée des règlements**

Contient deux visuels interactifs :

- Entonnoir du montant réglé par mois de règlement
- Arborescence de décomposition du total réglé (par mois, type de client, civilité, mode de règlement)

---

📁 Organisation du dossier

- 📂 Capture Écran → Captures du tableau de bord Power BI
- 📂 Données Brutes → Données issues de PostgreSQL
- 📂 Données Propres → Fichier Excel nettoyé (prêt pour Power BI)
- 📂 Fichier PDF Résumé → Présentation professionnelle du projet
- 📂 Fichier Requêtes SQL → Analyse de la même base de données sur SQL
- 📂 Fichier Power BI → Fichier .pbix du tableau de bord
- 📂 Notes_projet → Fichier README expliquant la démarche complète

---

📌 Résultats clés obtenus (Insights)

🔍 **Comparaison des clients par pays (RDC vs Zimbabwe)**

Parmi les clients domiciliés en RDC, seulement 19 devis sur 98 ont été transformés en factures (soit 19,39 %). Cependant, ces clients affichent un excellent taux de paiement de 54,52 %, montrant un réel engagement à régler leurs factures.

À l’inverse, les clients du Zimbabwe, bien que n’ayant transformé que 5 devis sur 21 (soit 23,81 %), présentent un taux de paiement inférieur de 44,30 %.

✅ Conclusion : Ces résultats suggèrent que, malgré un taux de transformation plus faible, les clients de la RDC sont globalement plus fiables en matière de paiement que ceux du Zimbabwe.

---

🔍 **Analyse globale des paiements par civilité**

Sans aucun filtre appliqué, 49,86 % du montant total facturé a été effectivement réglé.

Parmi ces paiements :

- Les clientes mariées (Dames) occupent la première place avec 29,03 % du total des paiements,
- Suivies des Messieurs, qui en représentent 26,97 %.

👉 Conclusion : Cette répartition montre une légère avance des femmes mariées en matière de règlement, suggérant un comportement plus rigoureux ou plus engagé vis-à-vis des paiements. Cela pourrait orienter certaines stratégies commerciales ou de relance client vers ce segment plus fiable.

---

📈 **Le mois de mai : un pic remarquable dans les paiements**

Le mois de mai s’est distingué comme le mois le plus performant en termes de paiements, avec le montant total le plus élevé réglé par les clients. Mais qu’est-ce qui explique cette performance exceptionnelle ?

🔎 Facteurs clés :

- Une forte implication des particuliers, qui ont contribué à 83,42 % du montant total réglé durant ce mois.
- En comparaison, les entreprises n'ont représenté qu’une part plus faible, avec seulement 12 % de plus que leur moyenne habituelle.

👉 Interprétation : Cette dynamique souligne l’engagement des clients particuliers dans le règlement de leurs factures. Elle vient renforcer la fiabilité de cette catégorie de clientèle, et peut orienter l’entreprise à cibler davantage les particuliers pour ses futures offres de services.

---

👤 Auteur

- **Nom** : Bernard Mutuala  
- **Rôle** : Analyste de Données Junior  
- **Email** : bernardmutualankota@gmail.com  
- **Téléphone** : +243 991 435 462 / +243 812 598 453  
- **Localisation** : Kinshasa, RDC  
- **LinkedIn** : [https://www.linkedin.com/in/bernard-mutuala-4335632a3](https://www.linkedin.com/in/bernard-mutuala-4335632a3)  
- **GitHub** : [https://github.com/bernardmutuala](https://github.com/bernardmutuala)
