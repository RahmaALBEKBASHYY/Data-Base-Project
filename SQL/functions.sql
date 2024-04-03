SET SERVEROUTPUT ON;
--FUNCTION 1
--Définir une fonction qui retourne pour une œuvre dont 
--l'identifiant est passé en paramètre et si elle a plus de 20 évaluations, 
--le score moyen des notes pour cette œuvre. Si l'oeuvre a moins de 20 appréciations ou si elle n'existe pas, 
--la fonction renverra un score nul.
CREATE OR REPLACE FUNCTION Score(user number,notes number)
RETURN BOOLEAN
IS 
    
    select idUser into users FROM USERS WHERE users = user;
    CURSOR notes IS
        SELECT notes FROM notes
        WHERE note > 20;
BEGIN
    select idUser into users FROM USERS WHERE users = user;
    FOR idUser IN users  
    LOOP
    SELECT notes into notes FROM notes ;   
    IF notes > 20
        THEN RETURN AVG(notes);
    ELSE 
        THEN RETURN NULL;
    END IF;    
    END LOOP;
    RETURN TRUE;
END;
/
show errors FUNCTION Score;


--FUNCTION 2 
--Ecrire une procédure qui génère pour un utilisateur la liste de ses 10 films préférés,
-- la liste de ses 10 livres préférés et la liste de ces 10 jeux vidéos préférés. 
--Pour chacun des objets, en cas d’égalité, la priorité sera donné aux objets dont l’ajout est le plus récent. 
--Si une liste n'a pas au moins 10 éléments elle ne sera pas générée.


CREATE OR REPLACE FUNCTION liste_prefere(user number)
RETURN BOOLEAN
IS 
    
    select idUser into users FROM USERS WHERE users = user;

BEGIN
    select id_user into users FROM USERS WHERE users = user;
    FOR id_user IN users  
    LOOP
    SELECT Objects_idObjects into objects FROM liste_user_has_objects WHERE users = Liste_user_idListe_user;   
    IF i < 10
        THEN 
            SELECT nom, type_idtype into name_dans_liste FROM objects where Objects_idObjects = idObjects  ;
            i = i+1
    ELSE 
        THEN RETURN NULL;
    END IF;    
    END LOOP;
    RETURN TRUE;
END;
/
show errors FUNCTION liste_prefere;




/*Ecrire le code PL/SQL permettant de générer des suggestions pour un utilisateur, 
c’est dire les X objets dont le score moyen est le plus élevé pour les objets communs à au moins Y utilisateurs,
 ces utilisateurs ayant mis la même note que l’utilisateur courants pour au moins Z objets 
 (ces objets culturels ne sont pas déjà dans une liste de l’utilisateur).
Il s’agit d’identifier les objets de personnes ayant des gouts similaires que l’utilisateur courant, 
et de prendre les objets les mieux évalués de cet ensemble.*/



CREATE OR REPLACE FUNCTION Suggestion(user number,objet varchar,notes number)
RETURN BOOLEAN
IS 
    
    select idUser into users FROM USERS WHERE users = user;
    CURSOR objet IS
        SELECT Objects_idObjects into objects FROM liste_user_has_objects;
    CURSOR notes IS
        SELECT notes FROM notes
        WHERE MAX(note) == TRUE ;

BEGIN
SELECT Objects_idObjects into objects FROM liste_user_has_objects WHERE users = Liste_user_idListe_user;
    FOR id_user IN users  
    LOOP
    SELECT nom, type_idtype into name_dans_liste FROM objects where Objects_idObjects = idObjects  ;  
    IF notes == MAX(notes)
        THEN 
            return nom 
    ELSE 
        THEN RETURN NULL;
    END IF;    
    END LOOP;
    RETURN TRUE;
END;
/
show errors FUNCTION suggestion;

