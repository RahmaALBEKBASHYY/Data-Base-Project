/*Définir les listes des ajouts du mois 'xxx' pour l'année 'yyy' pour un utilisateur « nouveauté ».
Chaque nouvel objet culturel ajouté dans la base de donées au courant du mois 'xxx' de l’année 'yyy' 
est ajouté à la liste correspondante.*/

CREATE OR REPLACE TRIGGER liste_ajout_mois
before insert or update on liste_user_has_objects
FOR EACH ROW
declare 
    dateajoute USERS.date_d_ajout%type;
    list number;
begin
    list := :new.liste_user_has_objects;
    select count(*) into list
    from liste_user_has_objects;
    if date_d_ajout = dateajoute then
        RAISE_APPLICATION_ERROR(-20001, 'mois [xxx] de l’année [yyy] n est pas ajouté à la liste correspondante' || dateajoute );
    end if;
end;
/
show errors TRIGGER liste_ajout_mois;



--Archiver les listes supprimées dans une table d’archivage.
-- on est censé faire un curseur qui va tous parcourir pour archiveer ce qui est supprimé mais ca marche plus

CREATE OR REPLACE PROCEDURE archivage ( source IN VARCHAR2, destination IN VARCHAR2) 
     IS 
     source_cursor INTEGER; 
     destination_cursor INTEGER ; 
     ignorer INTEGER;
     i integer;
  BEGIN 

  END;