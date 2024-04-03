CREATE TABLE "APPARTIENT_A" (
  "id_objet" VARCHAR(42),
  "id_liste" VARCHAR(42),
  "descriptif_objet_liste" VARCHAR(42),
  PRIMARY KEY ("id_objet", "id_liste")
);

CREATE TABLE "APPARTIENT_A_ARCHIVE" (
  "id_objet" VARCHAR(42),
  "id_liste_ar" VARCHAR(42),
  "descriptif_objet_liste_ar" VARCHAR(42),
  PRIMARY KEY ("id_objet", "id_liste_ar")
);

/*
CREATE TABLE "CATEGORIE" (
  "description_cat" VARCHAR(42),
  PRIMARY KEY ("description_cat")
);
*/

CREATE TABLE "COMMENTE" (
  "id_objet" VARCHAR(42),
  "id_user" VARCHAR(42),
  "texte_commentaire" VARCHAR(42),
  "date_commentaire" VARCHAR(42),
  PRIMARY KEY ("id_objet", "id_user")
);

CREATE TABLE "LISTE" (
  "id_liste" VARCHAR(42),
  "nom_liste" VARCHAR(42),
  "descriptif_liste" VARCHAR(42),
  "description_cat" VARCHAR(42),
  "id_user" VARCHAR(42),
  PRIMARY KEY ("id_liste")
);

CREATE TABLE "LISTE_ARCHIVEE" (
  "id_liste_ar" VARCHAR(42),
  "nom_liste_ar" VARCHAR(42),
  "descriptif_liste_ar" VARCHAR(42),
  "date_archivage" VARCHAR(42),
  "description_cat" VARCHAR(42),
  "id_user" VARCHAR(42),
  PRIMARY KEY ("id_liste_ar")
);

CREATE TABLE "NOTE" (
  "id_objet" VARCHAR(42),
  "id_user" VARCHAR(42),
  "note" VARCHAR(42),
  "date_note" VARCHAR(42),
  PRIMARY KEY ("id_objet", "id_user")
);

CREATE TABLE "OBJET" (
  "id_objet" VARCHAR(42),
  "nom_objet" VARCHAR(42),
  "description_cat" VARCHAR(42),
  PRIMARY KEY ("id_objet")
);

CREATE TABLE "POSSEDE" (
  "id_objet" VARCHAR(42),
  "id_user" VARCHAR(42),
  PRIMARY KEY ("id_objet", "id_user")
);

CREATE TABLE "PREVOIT_ACHAT" (
  "id_objet" VARCHAR(42),
  "id_user" VARCHAR(42),
  PRIMARY KEY ("id_objet", "id_user")
);

CREATE TABLE "UTILISATEUR" (
  "id_user" VARCHAR(42),
  "login" VARCHAR(42),
  "nom" VARCHAR(42),
  "prenom" VARCHAR(42),
  "adresse" VARCHAR(42),
  "email" VARCHAR(42),
  "motdepasse" VARCHAR(42),
  "date_naiss" VARCHAR(42),
  "date_inscript" VARCHAR(42),
  PRIMARY KEY ("id_user")
);

ALTER TABLE "APPARTIENT_A" ADD FOREIGN KEY ("id_liste") REFERENCES "LISTE" ("id_liste");
ALTER TABLE "APPARTIENT_A" ADD FOREIGN KEY ("id_objet") REFERENCES "OBJET" ("id_objet");
ALTER TABLE "APPARTIENT_A_ARCHIVE" ADD FOREIGN KEY ("id_liste_ar") REFERENCES "LISTE_ARCHIVEE" ("id_liste_ar");
ALTER TABLE "APPARTIENT_A_ARCHIVE" ADD FOREIGN KEY ("id_objet") REFERENCES "OBJET" ("id_objet");
ALTER TABLE "COMMENTE" ADD FOREIGN KEY ("id_user") REFERENCES "UTILISATEUR" ("id_user");
ALTER TABLE "COMMENTE" ADD FOREIGN KEY ("id_objet") REFERENCES "OBJET" ("id_objet");
ALTER TABLE "LISTE" ADD FOREIGN KEY ("id_user") REFERENCES "UTILISATEUR" ("id_user");
-- ALTER TABLE "LISTE" ADD FOREIGN KEY ("description_cat") REFERENCES "CATEGORIE" ("description_cat");
ALTER TABLE "LISTE_ARCHIVEE" ADD FOREIGN KEY ("id_user") REFERENCES "UTILISATEUR" ("id_user");
-- ALTER TABLE "LISTE_ARCHIVEE" ADD FOREIGN KEY ("description_cat") REFERENCES "CATEGORIE" ("description_cat");
ALTER TABLE "NOTE" ADD FOREIGN KEY ("id_user") REFERENCES "UTILISATEUR" ("id_user");
ALTER TABLE "NOTE" ADD FOREIGN KEY ("id_objet") REFERENCES "OBJET" ("id_objet");
-- ALTER TABLE "OBJET" ADD FOREIGN KEY ("description_cat") REFERENCES "CATEGORIE" ("description_cat");
ALTER TABLE "POSSEDE" ADD FOREIGN KEY ("id_user") REFERENCES "UTILISATEUR" ("id_user");
ALTER TABLE "POSSEDE" ADD FOREIGN KEY ("id_objet") REFERENCES "OBJET" ("id_objet");
ALTER TABLE "PREVOIT_ACHAT" ADD FOREIGN KEY ("id_user") REFERENCES "UTILISATEUR" ("id_user");
ALTER TABLE "PREVOIT_ACHAT" ADD FOREIGN KEY ("id_objet") REFERENCES "OBJET" ("id_objet");