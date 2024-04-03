# Video Preferences Website Database Project

You are tasked with setting up a website allowing users to save their preferences on a television channel's video replay site. The site will utilize a database containing information about registered users, available videos, and users' viewing history. Video suggestions for users will also be generated.

Different shows will be available, each associated with a category (e.g., culture, cinema, etc.). Some shows may have multiple episodes. Each video (corresponding to a unique show or an episode of a show) may have multiple TV broadcasts. After a broadcast, a video will be available for replay on the site for at least 7 days.

Some videos will no longer be available for replay and will be archived.

Various information will be available about the videos such as their name, description, duration, year of first broadcast, country of origin, availability of multi-language support, image format, etc.

A registered user will be characterized by a login, a password, and can provide additional information such as name, surname, date of birth, and email address. A user can indicate the categories of shows they are interested in and decide whether to subscribe to the site's newsletter, generated weekly.

For a user who has created an account on the site, it will be possible to subscribe to shows. New episodes of subscribed shows will appear in their viewing suggestions. Users can also mark certain videos as favorites, which will be visible on the site, on a page associated with the user, for easy access. It will be possible to check videos nearing the end of their availability.

Each video viewing will be recorded, and users can also view their viewing history.

Video suggestions will also be generated based solely on the popularity of videos by categories. Popularity will be based on the number of views in the last two weeks to promote recent videos.

## Modelling

1. Establish the entity-relationship model of the video preferences website database, respecting the requirements outlined.
2. Specify integrity constraints on the model (constraints that the data must adhere to at all times).
3. Establish the relational logical model of the database.

## Project Submission

A report containing the ER schema, the list of integrity constraints, and the relational schema should be submitted.

## Database Implementation

Submission of SQL scripts for table creation, table deletion, and insertion of test data is required.

## SQL Queries

Write SQL queries for the following:

- Number of video views by video categories, for views less than two weeks old.
- For each user, the number of subscriptions, favorites, and viewed videos.
- For each video, the number of views by French users, the number of views by German users, the difference between the two, sorted by the absolute value of the difference.
- Show episodes with at least twice as many views as the average views of other episodes of the same show.
- The top 10 pairs of videos appearing most frequently simultaneously in a user's viewing history.

## PL/SQL Procedures and Functions

1. Define a function that converts video information into JSON format.
2. Define a procedure that generates the initial text for the newsletter by adding the list of all weekly releases.
3. Generate the list of popular videos recommended for a user, based on the categories of videos they follow.

## Integrity Constraints

Implement the specified integrity constraints in the project subject. Static or dynamic constraints can be defined.

Following integrity constraints should be realized:
1. A user can have a maximum of 300 videos in their favorites.
2. If a show broadcast is added, availability dates will be updated. The new end availability date will be the date of the last broadcast plus 14 days.
3. Deleting a video will archive it in a table of videos no longer accessible through the replay site.
4. To limit viewing spam, a user cannot initiate more than 3 views per minute.

---

# Projet Base de Données : Site de Préférences Vidéos

Vous êtes chargé de mettre en place un site permettant à des utilisateurs d'enregistrer leurs préférences sur un site de replay vidéo d'une chaîne de télévision. Le site utilisera une base de données contenant des informations sur les utilisateurs inscrits, les vidéos disponibles et l'historique de visionnage des utilisateurs. Des suggestions de vidéos seront également générées pour les utilisateurs.

Différentes émissions seront disponibles, chacune associée à une catégorie (par exemple : culture, cinéma, etc.). Certaines émissions peuvent avoir plusieurs épisodes. Chaque vidéo (correspondant à une émission unique ou à un épisode d'émission) peut avoir plusieurs diffusions télévisuelles. Après une diffusion, une vidéo sera disponible en replay sur le site pendant au moins 7 jours.

Certaines vidéos ne seront plus disponibles en replay et seront archivées.

Diverses informations seront disponibles sur les vidéos telles que leur nom, leur description, leur durée, leur année de première diffusion, leur pays d'origine, la disponibilité du multi-langue, le format de l'image, etc.

Un utilisateur enregistré sera caractérisé par un identifiant, un mot de passe et pourra fournir des informations supplémentaires telles que son nom, son prénom, sa date de naissance et son adresse e-mail. Un utilisateur peut indiquer les catégories d'émissions qui l'intéressent et décider s'il souhaite ou non s'abonner à la newsletter du site, générée chaque semaine.

Pour un utilisateur ayant créé un compte sur le site, il sera possible de s'abonner à des émissions. Les nouveaux épisodes des émissions auxquelles il est abonné apparaîtront dans ses suggestions de visionnage. Les utilisateurs peuvent également marquer certaines vidéos comme favorites, qui seront visibles sur le site, sur une page associée à l'utilisateur, pour un accès facile. Il sera possible de consulter les vidéos dont la disponibilité arrive à expiration.

Chaque visionnage de vidéo sera enregistré, et les utilisateurs pourront également consulter leur historique de visionnage.

Des suggestions de vidéos seront également générées uniquement sur la base de la popularité des vidéos par catégorie. La popularité sera basée sur le nombre de visionnages au cours des deux dernières semaines pour promouvoir les vidéos récentes.
