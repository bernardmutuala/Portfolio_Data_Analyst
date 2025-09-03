# 📊 Projet Excel – Application de gestion et Tableau de bord interactif en temps réel  

## 🎯 Objectif  
Concevoir une application Excel avancée permettant de gérer les commandes via un formulaire VBA, d’alimenter automatiquement une **table source consolidée**, et d’analyser les performances grâce à un **tableau de bord interactif** mis à jour en temps réel.  

---

## ⚙️ Fonctionnement du projet  

### 1. Formulaire VBA  
- Sécurisation de l’accès (utilisateurs + droits).  
- Suivi des connexions et des actions.  
- Alimentation automatique des différentes tables (Vendeurs, Clients, Catégories Produits, Produits, Commandes, Lignes de commandes).  
- Consolidation dans la **table `table_source_donnees`** (structure unique regroupant toutes les informations d’une commande).  

### 2. Source de données consolidée  
- Table Excel structurée (CTRL + L).  
- Chaque ligne de commande insère directement : Client, Vendeur, Produit, Catégorie, Montant, Date & Heure, etc.  
- Cette table est la **base unique** envoyée dans Power Query.  

### 3. Power Query  
- Nettoyage et transformation automatique des données.  
- Requêtes enregistrées → toute nouvelle ligne est automatiquement intégrée.  
- Pipeline dynamique alimentant le modèle de données.  

### 4. Power Pivot & DAX  
- Pas de relations nécessaires car la table consolidée regroupe déjà les données.  
- Création de mesures DAX :  
  - 🔹 Nombre de commandes  
  - 🔹 Montant total des ventes  
  - 🔹 Nombre de clients  
  - 🔹 Nombre de vendeurs  
  - 🔹 Moyenne des ventes par commande  
  - 🔹 Moyenne des ventes par client  
  - 🔹 Moyenne des ventes par vendeur  

### 5. Tableaux croisés dynamiques & Graphiques  
- Construction de KPI interactifs.  
- Segments pour filtrer les résultats (période, vendeur, produit, client…).  
- Graphiques croisés dynamiques pour visualisation claire des tendances.  

### 6. Tableau de bord final  
- Suivi en temps réel des performances de vente.  
- KPI mis à jour automatiquement après chaque enregistrement de commande.  
- Interface claire et exploitable pour analyse rapide.  

---

## 🚀 Compétences démontrées  
1. **VBA** : sécurisation, automatisation de la saisie, consolidation des données.  
2. **Power Query** : nettoyage et pipeline ETL automatisé.  
3. **Power Pivot / DAX** : modélisation et mesures pour KPI.  
4. **Excel Avancé** : tableaux croisés, graphiques, dashboard interactif.  

---

## 📂 Structure du projet  

- **Application_Gestion_Ventes_Excel_Dashboard_Temps_Réel/**
  - 📂 Captures_ecran → Illustrations du projet (formulaire, table source, dashboard)  
  - 📂 PDF_Presentation → Documentation visuelle et storytelling du projet  
  - 📄 README.md → Présentation et explications techniques du projet  
  - 📊 Projet_Gestion_Ventes.xlsm → Fichier Excel avec macros activées (VBA)  

---

## ✅ Résultat  
Une **application de gestion des ventes complète** intégrée à Excel, capable de :  
- Gérer les droits utilisateurs et suivre les connexions.  
- Alimenter automatiquement une base consolidée à chaque commande.  
- Nettoyer et transformer les données sans intervention manuelle.  
- Actualiser en temps réel un tableau de bord dynamique avec KPI et segments.  

Ce projet illustre la maîtrise d’**Excel avancé, VBA, Power Query, Power Pivot et DAX**, avec une approche proche d’un système professionnel de BI.
