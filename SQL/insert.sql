--
-- Dumping data for table `a acheter`
--

INSERT INTO `a acheter` (`Objects_idObjects`, `User_idUser`) VALUES
(1, 1),
(1, 2);

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`idcomment`, `comment`, `date d ajout`, `Objects_idObjects`, `User_idUser`) VALUES
(1, 'this is comment , me no like', '2022-11-02', 1, 1),
(2, 'me like a lil bit', '2022-11-02', 1, 2);

--
-- Dumping data for table `liste_user`
--

INSERT INTO `liste_user` (`idListe_user`, `User_idUser`, `desc`, `nom`, `type_idtype`, `date d ajout`) VALUES
(1, 1, 'my awesome book list', 'book list1', 1, '2022-11-02'),
(2, 1, 'my awesome movie list', 'movie liste2', 2, '2022-11-02');

--
-- Dumping data for table `liste_user_has_objects`
--

INSERT INTO `liste_user_has_objects` (`Liste_user_idListe_user`, `Objects_idObjects`, `desc`, `date d ajout`) VALUES
(1, 1, 'hi this is a description for harry potter 1', '2022-11-02'),
(1, 2, 'desc', '2022-11-02');

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`idnotes`, `note`, `date d'ajout`, `Objects_idObjects`, `User_idUser`) VALUES
(1, 10, NULL, 1, 2),
(2, 1, NULL, 1, 1);

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`idObjects`, `nom`, `type_idtype`) VALUES
(1, 'harry potter 1', 1),
(2, 'harry potter 2', 1),
(3, 'harry potter 1', 2);

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`idtype`, `name`) VALUES
(1, 'book'),
(2, 'film');

--
-- Dumping data for table `user`
--

INSERT INTO `users` (`idUser`, `nom`, `prenom`, `addresse`, `date de naissance`, `date d inscription`, `mot de passe`, `login`) VALUES
(1, 'alahmad', 'rawan', 'my home ', '2021-02-01', '2022-11-02', 'hiitsme', 'dntdd'),
(2, 'me', 'rawan2', 'her home', '2020-08-04', '2022-02-03', 'farvev', 'zefef');
COMMIT;