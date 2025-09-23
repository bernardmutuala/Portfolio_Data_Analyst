---- Montant moyen payé par étudiant

Set search_path="GestionFraisAcadem";
SELECT ROUND(AVG(total_par_etudiant),2) AS "montant moyen par etudiant"
FROM (
    SELECT e.etudiant_id, SUM(p.montant_paye) AS total_par_etudiant
    FROM paiement p
    JOIN etudiant e ON p.etudiant_id = e.etudiant_id
    GROUP BY e.etudiant_id
);

------- taux d’étudiants ayant soldé tous leurs frais

SELECT 
    ROUND(100.0 * COUNT(DISTINCT etudiant_id) FILTER (WHERE total_paye >= total_du) 
          / COUNT(DISTINCT etudiant_id), 2) AS taux_etudiants_solde
FROM (
    SELECT e.etudiant_id,
           SUM(p.montant_paye) AS total_paye,
           SUM(mf.montant) AS total_du
    FROM etudiant e
    JOIN promotion pr ON e.promotion_id = pr.promotion_id
    JOIN montant_frais_promotion mf ON pr.promotion_id = mf.promotion_id
    LEFT JOIN paiement p ON e.etudiant_id = p.etudiant_id AND p.type_frais_id = mf.type_frais_id
    GROUP BY e.etudiant_id
);

--- Top 10 d'étudiants qui ont payé le plus

SELECT e.nom_etudiant AS Nom, e.prenom_etudiant As "Prénom",
		sigle_universite, nom_faculte, nom_departement, 
		LEFT(nom_promotion,2) AS Promotion,
       SUM(p.montant_paye) AS "Montant total"
FROM paiement p
JOIN etudiant e ON p.etudiant_id = e.etudiant_id
NATURAL JOIN promotion NATURAL JOIN departement
NATURAL JOIN faculte NATURAL JOIN universite
WHERE p.montant_paye IS NOT NULL
GROUP BY e.matricule_etudiant, e.nom_etudiant, e.prenom_etudiant, 
sigle_universite, nom_faculte, nom_departement, nom_promotion
ORDER BY "Montant total", sigle_universite DESC 
LIMIT 10;

select * from universite;



------ Liste des etudiants ayant des dettes


SELECT e.nom_etudiant, e.prenom_etudiant,
	   sigle_universite, nom_faculte, nom_departement, 
	   LEFT(nom_promotion,2) AS Promotion,
       SUM(mf.montant) - SUM(COALESCE(p.montant_paye,0)) AS dette
FROM etudiant e
JOIN promotion pr ON e.promotion_id = pr.promotion_id
JOIN montant_frais_promotion mf ON pr.promotion_id = mf.promotion_id
LEFT JOIN paiement p ON e.etudiant_id = p.etudiant_id 
AND p.type_frais_id = mf.type_frais_id
NATURAL JOIN departement
NATURAL JOIN faculte NATURAL JOIN universite
GROUP BY e.nom_etudiant, e.prenom_etudiant, sigle_universite, 
nom_faculte, nom_departement, Promotion
HAVING SUM(COALESCE(p.montant_paye,0)) < SUM(mf.montant)
ORDER BY dette DESC;



---- Nombre d'étudiants par université

SELECT sigle_universite AS "Université", 
COUNT(etudiant_id) AS "Nombre étudiants"
FROM etudiant NATURAL JOIN promotion
natural join departement NATURAL JOIN faculte
NATURAL JOIN universite
GROUP BY sigle_universite 
ORDER BY "Nombre étudiants" DESC;




---- Nombre d'étudiants par faculté de l'UPN et l'Unikin

SELECT sigle_universite AS "Université", 
nom_faculte AS "Faculté", 
COUNT(etudiant_id) AS "Nombre étudiants"
FROM etudiant NATURAL JOIN promotion 
NATURAL JOIN departement
NATURAL JOIN faculte NATURAL JOIN universite 
WHERE sigle_universite IN('UPN', 'UNIKIN')
GROUP BY sigle_universite, nom_faculte 
ORDER BY "Nombre étudiants" DESC;


---Montant total payé des frais académiques par les étudiants de la promotion de L2 Gestion des entreprises de l’ISC

WITH Montant_paye_ISC AS
(
SELECT nom_universite, nom_faculte, nom_departement,
nom_promotion, nom_etudiant, prenom_etudiant, libelle_type_frais,
SUM(montant_paye) AS "Montant payé"
FROM paiement NATURAL JOIN etudiant NATURAL JOIN promotion
NATURAL JOIN departement NATURAL JOIN faculte NATURAL JOIN universite
NATURAL JOIN type_frais
WHERE sigle_universite ='ISC'
GROUP BY nom_universite, nom_faculte, nom_departement,
nom_promotion, nom_etudiant, prenom_etudiant, libelle_type_frais
ORDER BY "Montant payé" desc
)
SELECT nom_etudiant, prenom_etudiant, "Montant payé" 
FROM Montant_paye_ISC WHERE nom_promotion ='L2 Gestion des Entreprises'
AND libelle_type_frais ='Académique' 
AND "Montant payé" IS NOT NULL
ORDER BY nom_etudiant;



----- Montant total encaissé par université

SELECT sigle_universite AS "Université",
COALESCE(SUM(montant_paye), 0) as "Montant payé"
FROM paiement NATURAL JOIN etudiant NATURAL JOIN promotion
NATURAL JOIN departement NATURAL JOIN faculte
NATURAL JOIN universite GROUP BY sigle_universite
ORDER BY "Montant payé" DESC;


--- Nombre total de paiement enregistrés
SELECT COUNT(paiement_id) AS "Nombre total de paiements"
FROM paiement;


--- Montant total encaissé

SELECT SUM(montant_paye) AS "Montant total encaissé"
FROM paiement;



--- Montant total encaissé par type de frais

SELECT tf.libelle_type_frais AS "Libellé Frais", 
COALESCE(SUM(p.montant_paye), 0) 
AS "Montant total"
FROM paiement p
JOIN type_frais tf ON p.type_frais_id = tf.type_frais_id
GROUP BY "Libellé Frais"
ORDER BY "Montant total" DESC;



--- Top 5 Agence en terme d'encaissement

SELECT a.nom_agence AS "Nom Agence", 
COUNT(p.paiement_id) AS "Nombre paiements", 
SUM(p.montant_paye) AS "Montant total"
FROM paiement p
JOIN agence a ON p.agence_id = a.agence_id
GROUP BY "Nom Agence"
ORDER BY "Nombre paiements" DESC
LIMIT 5;



--- Top 5 Guichetiers en montant encaissé

SELECT u.nom_utilisateur AS Nom, 
u.prenom_utilisateur AS "Prénom", 
SUM(p.montant_paye) AS "Montant total"
FROM paiement p
JOIN guichetier g ON p.guichetier_id = g.guichetier_id
JOIN utilisateur u ON g.utilisateur_id = u.utilisateur_id
GROUP BY u.nom_utilisateur, u.prenom_utilisateur
ORDER BY "Montant total" DESC
LIMIT 5;



---- Montant encaissé par Mois

SELECT TO_CHAR(date_paiement, 'YYYY-MM') AS Mois, 
SUM(montant_paye) AS "Montant total"
FROM paiement
WHERE date_paiement BETWEEN '2024-10-01' AND '2025-09-30'
GROUP BY TO_CHAR(date_paiement, 'YYYY-MM')
ORDER BY Mois;



---- Taux de recouvrement global

SELECT 
    ROUND(100.0 * SUM(p.montant_paye) / SUM(mf.montant), 2) 
	AS "Taux de recouvrement global"
FROM montant_frais_promotion mf
JOIN promotion pr ON mf.promotion_id = pr.promotion_id
JOIN etudiant e ON e.promotion_id = pr.promotion_id
LEFT JOIN paiement p ON p.etudiant_id = e.etudiant_id 
AND p.type_frais_id = mf.type_frais_id;



--- Taux de paiement par université

SELECT u.sigle_universite AS "Université",
       ROUND(100.0 * SUM(p.montant_paye) / SUM(mf.montant), 2) 
	   AS "Taux de paiement"
FROM universite u
JOIN faculte f ON u.universite_id = f.universite_id
JOIN departement d ON f.faculte_id = d.faculte_id
JOIN promotion pr ON d.departement_id = pr.departement_id
JOIN montant_frais_promotion mf ON pr.promotion_id = mf.promotion_id
JOIN etudiant e ON e.promotion_id = pr.promotion_id
LEFT JOIN paiement p ON e.etudiant_id = p.etudiant_id 
AND p.type_frais_id = mf.type_frais_id
GROUP BY u.sigle_universite
ORDER BY "Taux de paiement" DESC;



-- Montant total encaissé par jour

SELECT DATE(date_paiement) AS Jour, SUM(montant_paye) AS "Montant total"
FROM paiement
GROUP BY DATE(date_paiement)
ORDER BY jour;