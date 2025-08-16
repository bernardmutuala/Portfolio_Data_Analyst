

-- Definition du schema de base de données
SET SEARCH_PATH="PRE_SCHEMA"; 

-------------------------------------------------------
-------------------------------------------------------



-------------------------------------------------------
-------------------------------------------------------

-- 1 -- calcul du nombre total de devis pour les clients qui habitent le congo (Kinshasa)

Create or replace view "nombre total de devis pour les clients qui habitent le congo" AS
SELECT COUNT("ID_DEVIS") AS "Nombre de devis pour le Congo uniquement" 
FROM "TB_DEVIS" AS DEV NATURAL JOIN "TB_CLIENT" CL
WHERE "LB_PAYS_CLIENT" = 'Congo';

-------------------------------------------------------
-------------------------------------------------------
-- 2 -- Nombre total de devis transformés en factures
-------------------------------------------------------
-------------------------------------------------------

Create or replace view "nombre total de devis transformés en factures au Congo" AS
WITH "Nombre de devis" AS
(
	SELECT DISTINCT COUNT("ID_DEVIS") AS "Nombre total de devis" 
	FROM "TB_DEVIS" AS DEV JOIN "TB_CLIENT" CL ON DEV."ID_CLIENT" = CL."ID_CLIENT"
	WHERE "LB_PAYS_CLIENT" = 'Congo'
),
"Liste des devis facturés" AS 
(
	SELECT DISTINCT "ID_DEVIS" AS "Identifiant devis" 
	FROM "TB_FACTURE" AS FACT JOIN "TB_CLIENT" CL ON FACT."ID_CLIENT" = CL."ID_CLIENT"
	WHERE "LB_PAYS_CLIENT" = 'Congo' order by "ID_DEVIS"
),"Calcul du nombre de devis facturés" AS
(
SELECT COUNT("Identifiant devis") AS "Nombre de devis facturés"
FROM "Liste des devis facturés")
SELECT "Nombre de devis facturés", 
ROUND(("Nombre de devis facturés"::decimal/"Nombre total de devis")*100, 2) 
AS "Taux de trasformation de devis en factures (%)"
FROM "Nombre de devis", "Calcul du nombre de devis facturés";

-------------------------------------------------------
-------------------------------------------------------

-- 3 -- Montant total facturé TTC pour le congo

-------------------------------------------------------
-------------------------------------------------------

Create or Replace view "Montant total facturé pour le congo" AS
WITH "Montant total facturé" AS
(
	SELECT "NB_QUANTITE_FACTURE"*"NB_PRIX_TTC" AS "Montant facturé" 
	FROM "TB_DETAIL_FACTURE" DTFA
	JOIN "TB_FACTURE" FA
	ON DTFA."ID_FACTURE" = FA."ID_FACTURE"
	JOIN "TB_CLIENT" AS CLI
	ON FA."ID_CLIENT" = CLI."ID_CLIENT"
	WHERE "LB_PAYS_CLIENT" = 'Congo'
)
SELECT SUM("Montant facturé") AS "Montant total facturé pour le congo" 
FROM "Montant total facturé";

-------------------------------------------------------
-------------------------------------------------------

-- 4 -- Montant moyen par facture pour le Congo

-------------------------------------------------------
-------------------------------------------------------

Create or Replace View "Montant moyen facturé pour pour les clients du Congo" AS
WITH "Nombre et montant de factures" AS
(
	SELECT FA."ID_FACTURE" AS "Nombre de factures", 
	SUM("NB_QUANTITE_FACTURE"*"NB_PRIX_TTC") AS "Montant facturé"
	FROM "TB_FACTURE" AS FA 
	INNER JOIN "TB_DETAIL_FACTURE" AS DTFA
	ON DTFA."ID_FACTURE" = FA."ID_FACTURE"
	NATURAL JOIN "TB_CLIENT" 
	WHERE "LB_PAYS_CLIENT" = 'Congo'
	GROUP BY FA."ID_FACTURE"
)
SELECT ROUND(SUM("Montant facturé")/COUNT("Nombre de factures"))
AS "Montant moyen par facture"
FROM "Nombre et montant de factures";

---------------------------------------------------------------------
---------------------------------------------------------------------
-- 5 -- Taux de paiement (Factures réglées)
-------------------------------------------------------
-------------------------------------------------------

Create or Replace view "Taux en pourcentage des factures réglées au Congo" AS
WITH "Montant facturé au Congo" AS
(
	SELECT SUM("NB_QUANTITE_FACTURE"*"NB_PRIX_TTC") AS "Montant Facturé"
	FROM "TB_DETAIL_FACTURE" AS DTFA
	JOIN "TB_FACTURE" FA
	ON DTFA."ID_FACTURE" = FA."ID_FACTURE"	
	NATURAL JOIN "TB_CLIENT" WHERE "LB_PAYS_CLIENT" = 'Congo' 
),
"Montant réglé au Congo" AS
(
	SELECT SUM("NB_MONTANT_REGLEMENT") AS "Montant réglé"
	FROM "TB_DETAIL_REGLEMENT" AS DETREG
	JOIN "TB_FACTURE" AS FA
	ON DETREG."ID_FACTURE" = FA."ID_FACTURE"
	NATURAL JOIN "TB_CLIENT" WHERE "LB_PAYS_CLIENT" = 'Congo' 
)
SELECT ROUND(("Montant réglé"/"Montant Facturé")*100, 2) AS 
"Taux de paiement (règlement) de factures au congo(%)"
	FROM "Montant facturé au Congo", "Montant réglé au Congo";

---------------------------------------------------------------------
---------------------------------------------------------------------
-- 6 -- Montant total de factures non réglés
---------------------------------------------------------------------
---------------------------------------------------------------------

WITH "Montant facturé au Congo" AS
(
	SELECT SUM("NB_QUANTITE_FACTURE"*"NB_PRIX_TTC") AS "Montant Facturé"
	FROM "TB_DETAIL_FACTURE" AS DTFA
	JOIN "TB_FACTURE" FA
	ON DTFA."ID_FACTURE" = FA."ID_FACTURE"	
	NATURAL JOIN "TB_CLIENT" WHERE "LB_PAYS_CLIENT" = 'Congo' 
),
"Montant réglé au Congo" AS
(
	SELECT SUM("NB_MONTANT_REGLEMENT") AS "Montant réglé"
	FROM "TB_DETAIL_REGLEMENT" AS DETREG
	JOIN "TB_FACTURE" AS FA
	ON DETREG."ID_FACTURE" = FA."ID_FACTURE"
	NATURAL JOIN "TB_CLIENT" WHERE "LB_PAYS_CLIENT" = 'Congo' 
)
SELECT ROUND("Montant Facturé"-"Montant réglé") AS 
"Montant total de factures non réglées par les clients du Congo"
	FROM "Montant facturé au Congo", "Montant réglé au Congo";





