-- Création de la base de données
CREATE DATABASE "gestion_frais_academiques";

-- Connexion à la base
\c gestion_frais_academiques;

-- 1. Université
CREATE TABLE "universite" (
    "universite_id" SERIAL PRIMARY KEY,
    "nom_universite" VARCHAR(100),
    "sigle_universite" VARCHAR(20),
    "adresse_universite" VARCHAR(255),
    "telephone_universite" VARCHAR(30),
    "email_universite" VARCHAR(100)
);

-- 2. Compte
CREATE TABLE "compte" (
    "compte_id" SERIAL PRIMARY KEY,
    "universite_id" INT REFERENCES "universite"("universite_id"),
    "numero_compte_universite" VARCHAR(100),
    "solde_compte" DECIMAL(18,2) DEFAULT 0
);

-- 3. Faculté
CREATE TABLE "faculte" (
    "faculte_id" SERIAL PRIMARY KEY,
    "universite_id" INT REFERENCES "universite"("universite_id"),
    "nom_faculte" VARCHAR(100)
);

-- 4. Département
CREATE TABLE "departement" (
    "departement_id" SERIAL PRIMARY KEY,
    "faculte_id" INT REFERENCES "faculte"("faculte_id"),
    "nom_departement" VARCHAR(100)
);

-- 5. Promotion
CREATE TABLE "promotion" (
    "promotion_id" SERIAL PRIMARY KEY,
    "departement_id" INT REFERENCES "departement"("departement_id"),
    "nom_promotion" VARCHAR(50)
);

-- 6. Type de frais
CREATE TABLE "type_frais" (
    "type_frais_id" SERIAL PRIMARY KEY,
    "libelle_type_frais" VARCHAR(100),
    "description_frais" VARCHAR(255)
);

-- 7. Montants des frais par promotion
CREATE TABLE "montant_frais_promotion" (
    "montant_frais_id" SERIAL PRIMARY KEY,
    "promotion_id" INT REFERENCES "promotion"("promotion_id"),
    "type_frais_id" INT REFERENCES "type_frais"("type_frais_id"),
    "montant" DECIMAL(12,2) NOT NULL
);

-- 8. Étudiant
CREATE TABLE "etudiant" (
    "etudiant_id" SERIAL PRIMARY KEY,
    "matricule_etudiant" VARCHAR(50) UNIQUE,
    "nom_etudiant" VARCHAR(100),
    "prenom_etudiant" VARCHAR(100),
    "sexe_etudiant" VARCHAR(10),
    "date_naissance_etudiant" DATE,
    "promotion_id" INT REFERENCES "promotion"("promotion_id"),
    "date_inscription_etudiant" TIMESTAMP

);

-- 9. Agence
CREATE TABLE "agence" (
    "agence_id" SERIAL PRIMARY KEY,
    "nom_agence" VARCHAR(100),
    "commune_agence" VARCHAR(100),
    "adresse_agence" VARCHAR(255),
    "telephone_agence" VARCHAR(30)
);

-- 10. Utilisateur
CREATE TABLE "utilisateur" (
    "utilisateur_id" SERIAL PRIMARY KEY,
    "nom_utilisateur" VARCHAR(100),
    "prenom_utilisateur" VARCHAR(100),
    "email_utilisateur" VARCHAR(100),
    "mot_de_passe" VARCHAR(100)
);

-- 11. Guichetier
CREATE TABLE "guichetier" (
    "guichetier_id" SERIAL PRIMARY KEY,
    "agence_id" INT REFERENCES "agence"("agence_id"),
    "utilisateur_id" INT REFERENCES "utilisateur"("utilisateur_id"),
    "matricule_guichetier" VARCHAR(50) UNIQUE
);

-- 12. Paiement
CREATE TABLE "paiement" (
    "paiement_id" SERIAL PRIMARY KEY,
    "etudiant_id" INT REFERENCES "etudiant"("etudiant_id"),
    "type_frais_id" INT REFERENCES "type_frais"("type_frais_id"),
    "montant_paye" DECIMAL(12,2),
    "date_paiement" TIMESTAMP,
    "mode_paiement" VARCHAR(50),
    "agence_id" INT REFERENCES "agence"("agence_id"),
    "guichetier_id" INT REFERENCES "guichetier"("guichetier_id"),
    "reference_transaction" VARCHAR(100)
);