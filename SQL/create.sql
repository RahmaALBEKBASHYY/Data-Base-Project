--
-- Table structure for table `a acheter`
--


CREATE TABLE IF NOT EXISTS `a acheter` (
  `Objects_idObjects` int NOT NULL,
  `User_idUser` int NOT NULL,
  PRIMARY KEY (`Objects_idObjects`,`User_idUser`),
  KEY `fk_Objects_has_User_User1_idx` (`User_idUser`),
  KEY `fk_Objects_has_User_Objects1_idx` (`Objects_idObjects`)
) ;


-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `idcomment` int NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `date d ajout` date DEFAULT NULL,
  `Objects_idObjects` int NOT NULL,
  `User_idUser` int NOT NULL,
  PRIMARY KEY (`idcomment`),
  KEY `fk_comment_Objects1_idx` (`Objects_idObjects`),
  KEY `fk_comment_User1_idx` (`User_idUser`)
) AUTO_INCREMENT=3 ;


-- --------------------------------------------------------

--
-- Table structure for table `liste_user`
--

DROP TABLE IF EXISTS `liste_user`;
CREATE TABLE IF NOT EXISTS `liste_user` (
  `idListe_user` int NOT NULL AUTO_INCREMENT,
  `User_idUser` int NOT NULL,
  `desc` text NOT NULL,
  `nom` varchar(45) NOT NULL,
  `type_idtype` int NOT NULL,
  `date d ajout` date DEFAULT NULL,
  PRIMARY KEY (`idListe_user`),
  KEY `fk_Liste_user_User_idx` (`User_idUser`),
  KEY `fk_Liste_user_type1_idx` (`type_idtype`)
) AUTO_INCREMENT=3 ;



-- --------------------------------------------------------

--
-- Table structure for table `liste_user_has_objects`
--

DROP TABLE IF EXISTS `liste_user_has_objects`;
CREATE TABLE IF NOT EXISTS `liste_user_has_objects` (
  `Liste_user_idListe_user` int NOT NULL,
  `Objects_idObjects` int NOT NULL,
  `desc` text NOT NULL,
  `date d ajout` date DEFAULT NULL,
  KEY `fk_Liste_user_has_Objects_Objects1_idx` (`Objects_idObjects`),
  KEY `fk_Liste_user_has_Objects_Liste_user1_idx` (`Liste_user_idListe_user`)
) ;



-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `idnotes` int NOT NULL AUTO_INCREMENT,
  `note` int NOT NULL,
  `date d'ajout` date DEFAULT NULL,
  `Objects_idObjects` int NOT NULL,
  `User_idUser` int NOT NULL,
  PRIMARY KEY (`idnotes`),
  KEY `fk_notes_Objects1_idx` (`Objects_idObjects`),
  KEY `fk_notes_User1_idx` (`User_idUser`)
) AUTO_INCREMENT=3 ;


-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
CREATE TABLE IF NOT EXISTS `objects` (
  `idObjects` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `type_idtype` int NOT NULL,
  PRIMARY KEY (`idObjects`),
  KEY `fk_Objects_type1_idx` (`type_idtype`)
) AUTO_INCREMENT=4 ;



-- --------------------------------------------------------

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `idtype` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idtype`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) AUTO_INCREMENT=3 ;


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `addresse` varchar(45) NOT NULL,
  `date de naissance` date NOT NULL,
  `date d inscription` date DEFAULT NULL,
  `mot de passe` varchar(45) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `login_UNIQUE` (`login`)
)AUTO_INCREMENT=3;

