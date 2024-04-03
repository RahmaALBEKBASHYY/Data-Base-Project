-- 1
select users.idUser, users.nom from users
join (select liste_user.User_idUser 
        from liste_user 
        group by liste_user.User_idUser 
        having COUNT(distinct liste_user.type_idtype) = (select count(*) from types)
        ) t on t.User_idUser = users.idUser;


-- 2

select objects.nom, objects.idObjects, count(liste_user_has_objects.Objects_idObjects), AVG(notes.note ) as av_rating
from objects 
INNER JOIN liste_user_has_objects ON objects.idObjects = liste_user_has_objects.Objects_idObjects 
INNER JOIN notes ON objects.idObjects = notes.Objects_idObjects
group by (objects.idObjects)
having count(liste_user_has_objects.Objects_idObjects) > 20 and AVG(notes.note) > 14;


-- 3

select users.nom, users.idUser
from users
left join notes ON users.idUser = notes.User_idUser
group by users.idUser
having MIN(notes.note) >= 8;


-- 4

select objects.idObjects, count(comments.Objects_idObjects)  as num_comments, comments.date_d_ajout
FROM comments 
INNER JOIN objects on comments.Objects_idObjects = objects.idObjects
GROUP by (objects.idObjects)
having  comments.date_d_ajout > now() -  interval 7 day
LIMIT 1;