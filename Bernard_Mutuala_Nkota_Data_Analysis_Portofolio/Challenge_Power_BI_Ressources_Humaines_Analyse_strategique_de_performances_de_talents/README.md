# 🧠 Challenge Power BI – Ressources Humaines  
## Analyse stratégique de la performance et de la gestion des talents

---

## 🎯 Objectif du projet

Ce projet a été réalisé dans le cadre du **Challenge Power BI – Thématique Ressources Humaines**, dont la mission est de démontrer comment la **data transforme la gestion des talents et la performance des équipes**.

L’objectif principal était de concevoir un tableau de bord RH interactif sous Power BI permettant de :

- Suivre et analyser les effectifs et mouvements du personnel ;  
- Évaluer la performance et l’engagement des équipes ;  
- Assurer un suivi visuel des KPI RH stratégiques ;  
- Identifier les leviers d’action pour une meilleure gestion des talents.

---

## 🧩 Structure du projet

**Dossier principal :** `Challenge_Power_BI_Ressources_Humaines_Analyse_strategique_de_performances_de_talents`

### Sous-dossiers :
- 📁 **Captures_Ecran** – Visuels du tableau de bord et extraits des analyses.  
- 📁 **Donnees_source** – Jeu de données RH initial (employés, postes, salaires, performance, etc.).  
- 📁 **Pdf_de_presentation_et_resultat_challenge** – Présentation synthétique du projet et des résultats clés.  
- 📄 **README.md** – Présentation complète du projet.  
- 📊 **Dashboard_RH_Challenge.pbi** – Fichier Power BI du projet.

---

## ⚙️ Compétences mobilisées

- **Power Query** → Transformation, nettoyage et normalisation des données.  
- **DAX (Data Analysis Expressions)** → Création de mesures, indicateurs clés et colonnes calculées.  
- **Data Visualization & Storytelling** → Conception d’un tableau de bord clair et stratégique.  
- **Data-Driven Decision Making** → Interprétation analytique et formulation de recommandations orientées action.

---

## 📊 Indicateurs clés de performance (KPI)

### Page 1 – Vue globale RH
- Nombre total d’employés  
- Nombre total d’employés actifs  
- Taux de départs (analyse par motif : démission / licenciement)  
- Salaire moyen par employé  
- Score moyen de performance  
- Satisfaction moyenne des employés  
- Ancienneté moyenne (en années)

### Page 2 – Analyse détaillée des postes
- Salaire moyen par poste  
- Nombre d’employés par poste  
- Score moyen de performance par poste

---

## 🔍 Analyses et recommandations stratégiques

### 🧩 Résultat 1 – Non valorisation de la performance

**Observation :**  
Les employés dont la performance dépasse les attentes et ceux en difficulté ont des salaires moyens respectifs de **77,14 K$** et **58,97 K$**, ce qui est cohérent.  
Cependant, la moyenne salariale de ceux qui atteignent les attentes (**68,37 K$**) reste inférieure à celle de ceux qui doivent encore s’améliorer (**68,41 K$**), révélant une injustice salariale.

**Recommandation :**  
Aligner la rémunération sur la performance réelle pour encourager la motivation et la méritocratie.  
Plus un employé est performant, plus sa contribution doit être valorisée financièrement.  
Une telle politique renforcerait l’engagement et la compétitivité interne.

---

### 💼 Résultat 2 – Fidélisation des agents

**Observation :**  
Incohérence dans l’ancienneté moyenne selon le niveau de performance :

| Niveau de performance | Ancienneté moyenne |
|-----------------------|--------------------|
| En difficulté         | 12 ans             |
| Doivent s’améliorer   | 13 ans             |
| Ont atteint les attentes | 12 ans          |
| Ont dépassé les attentes | 13 ans          |

Les employés en difficulté ne devraient pas présenter une ancienneté supérieure à ceux performants.

**Recommandation :**  
Prioriser la fidélisation des employés performants et revoir la politique de maintien des agents en difficulté chronique.  
Favoriser la formation, mais aussi le renouvellement du capital humain lorsque nécessaire afin d’assurer une meilleure productivité et progression collective.

---

### 🚪 Résultat 3 – Départs des employés

**Observation :**  
Sur les **83 employés recrutés en 2011**, seuls **24** sont encore actifs, soit **71,08 % de départs** (dont **10,17 %** par démission et **89,83 %** par licenciement).  
Pourtant, les employés recrutés cette année-là faisaient partie du **Top 4** des années présentant les meilleures satisfactions :  
**2009 : 4,1 | 2016 : 4,1 | 2011 : 4,0 | 2018 : 4,0.**

**Recommandation :**  
Mettre en place une politique de rétention solide fondée sur :
- Des entretiens de sortie pour comprendre les causes réelles des départs ;  
- La promotion interne et la mobilité professionnelle ;  
- La valorisation du mérite et de la satisfaction au travail ;  
- Une politique de licenciement plus ciblée, évitant la perte de talents performants.

Ces actions visent à réduire le turnover et à renforcer la stabilité organisationnelle.

---

### 🤝 Résultat 4 – Valorisation de l’esprit d’équipe (collaboration)

**Observation :**  
Les départements Administration, IT/IS, Production et Ventes montrent une corrélation négative entre le nombre d’employés par poste et le score moyen de performance, signe d’une faible collaboration interne.

**Exemples :**

**Département IT/IS :**
- CIO, IT Director, IT Manager-Support → 1 employé chacun → score 4,0  
- IT Support (8) → 3,13 | Data Analyst (6) → 3,33 | SC Network Engineer (5) → 3,00  

**Département Production :**
- Production Technician 1 (85) → 3,01  
- Production Technician 2 (31) → 3,10  
- Production Manager (9) → 3,11  
- Director of Operations (1) → 4,00  

**Recommandation :**  
Renforcer la culture de collaboration par :
- L’intégration d’objectifs collectifs dans les évaluations de performance ;  
- Des programmes de team building et d’échanges interservices ;  
- La valorisation des réussites d’équipe ;  
- Des formations sur la communication et le leadership collaboratif.  

Une meilleure cohésion interne accroîtra la performance globale et la satisfaction au travail.

---

## 🧰 Outils utilisés

- Microsoft Power BI (Dashboard & DAX)  
- Power Query (Nettoyage et préparation des données)  
- Photoshop (Conception d'images d'accompagnement des indicateurs)

---

## 📈 Résumé général

Ce tableau de bord RH met en évidence plusieurs enjeux stratégiques :

- Des écarts de rémunération non alignés sur la performance réelle ;  
- Des incohérences dans la fidélisation des employés ;  
- Un taux de départs élevé malgré une satisfaction positive ;  
- Une faible collaboration entre employés de même poste.  

Ces constats démontrent la nécessité d’une **gestion des talents pilotée par la data (data-driven HR)** pour améliorer la performance globale et la rétention du personnel.

---

## 👤 Auteur

- **Nom** : Bernard Mutuala  
- **Rôle** : Analyste de Données  
- **Email** : bernardmutualankota@gmail.com  
- **Téléphone** : +243 991 435 462 / +243 812 598 453  
- **Localisation** : Kinshasa, RDC  
- **LinkedIn** : [bernard-mutuala](https://www.linkedin.com/in/bernard-mutuala-4335632a3)  
- **GitHub** : [bernardmutuala](https://github.com/bernardmutuala)
