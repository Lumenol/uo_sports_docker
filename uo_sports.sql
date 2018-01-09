-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 09 Janvier 2018 à 18:18
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `uo_sports`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE IF NOT EXISTS `activite` (
  `nom` varchar(25) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Contenu de la table `activite`
--

INSERT INTO `activite` (`nom`, `id`) VALUES
('Course à pieds', 1),
('Badminton', 2),
('Basket-ball', 3),
('Football', 4),
('Gym acrobatique', 5),
('Aquagym', 6),
('Canoë-kayak', 7),
('Cheerleading', 8),
('Atelier chorégraphique', 11),
('Danse - improvisation', 12),
('Escalade', 13),
('Fitness', 14),
('Floor ball', 15),
('Foot - fitness', 16),
('Futsal ', 17),
('Gestion du stress', 18),
('Golf', 19),
('Gym urbaine', 20),
('Gym perfectionnement', 22),
('Activités acrobatiques', 23),
('Gymnastique', 24),
('Handball', 25),
('Judo', 26),
('Kick Boxing', 27),
('Musculation', 28),
('Natation', 29),
('Nage avec palmes', 30),
('Qi Gong', 31),
('Rugby', 32),
('Ju Jitsu', 33),
('Taekwondo', 34),
('Tennis', 35),
('Tennis de table', 36),
('Trampoline', 37),
('Ultimate', 38),
('Voile', 39),
('Volley-ball', 40),
('Water-polo', 41),
('Yoga', 42);

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE IF NOT EXISTS `actualite` (
  `titre` varchar(50) NOT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `desc_courte` text,
  `desc_longue` text,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `date_mise_en_ligne` date NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `actualite`
--

INSERT INTO `actualite` (`titre`, `image`, `desc_courte`, `desc_longue`, `date_debut`, `date_fin`, `date_mise_en_ligne`, `id`) VALUES
('Victoire contre Tours', 'http://www.parlons-foot.fr/assets/img/les-nombreux-talents-presents-dans-le-football-amateur.jpg', 'L''équipe universitaire d''Orléans à rencontré celle de Tours ce week-end.', 'Ce samedi notre équipe universitaire de football a affronté celle du Tours. \r\nLe premier but a été marqué à la 13eme minute par Tours, mais Orléans avec ses buts à la 49eme et à la 74eme minute a remonté son adversaire.\r\nL''équipe universitaire rentre donc à Orléans avec une victoire en poche, bravo !', '2018-01-06', '2018-01-06', '2018-01-09', 2),
('Initation au Yoga', 'http://mjclasout.fr/sites/default/files/2017-09/istock-499609170_1.jpg', 'Pendant 2 jours, au gymnase U, une initaiation au yoga est proposée à tous.', 'Lundi et mardi prochain vous aurez l''occasion de pouvoir essayer le yoga.\r\nAu gymnase, une équipe de professeurs vous accueillera tout le long de la journée pour vous initier à ce sport de détente et de tonification.', '2018-01-14', '2018-01-15', '2018-01-10', 3);

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE IF NOT EXISTS `appartient` (
  `id_categorie_sport` int(11) NOT NULL,
  `id_sport` int(11) NOT NULL,
  PRIMARY KEY (`id_categorie_sport`,`id_sport`),
  KEY `FK_appartient_id_sport` (`id_sport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `appartient`
--

INSERT INTO `appartient` (`id_categorie_sport`, `id_sport`) VALUES
(1, 2),
(5, 2),
(2, 4),
(5, 4),
(1, 5),
(4, 5),
(7, 5),
(2, 6),
(5, 6),
(8, 6),
(2, 7),
(4, 7),
(7, 7),
(1, 8),
(5, 8),
(6, 8),
(4, 9),
(2, 10),
(5, 10),
(2, 11),
(5, 11),
(5, 12),
(2, 13),
(4, 13),
(7, 13),
(2, 14),
(5, 14),
(1, 15),
(5, 15),
(2, 16),
(4, 16),
(7, 16),
(3, 17),
(3, 18),
(2, 19),
(5, 19),
(6, 20),
(3, 21),
(1, 22),
(4, 22),
(7, 22),
(3, 23),
(3, 24),
(8, 25),
(8, 26),
(5, 27);

-- --------------------------------------------------------

--
-- Structure de la table `categorie_personne`
--

CREATE TABLE IF NOT EXISTS `categorie_personne` (
  `nom` varchar(30) NOT NULL,
  `prix` float NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `categorie_personne`
--

INSERT INTO `categorie_personne` (`nom`, `prix`, `id`) VALUES
('étudiant université', 20, 1),
('étudiant IRFMK', 35, 3),
('personnel université', 30, 4),
('personnel CROUS / radio campus', 40, 5),
('personnel CNRS / DREAL / CCNO', 55, 6);

-- --------------------------------------------------------

--
-- Structure de la table `categorie_sport`
--

CREATE TABLE IF NOT EXISTS `categorie_sport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `categorie_sport`
--

INSERT INTO `categorie_sport` (`id`, `nom`) VALUES
(1, 'sport exterieur'),
(2, 'sport en salle'),
(3, 'sport de combat'),
(4, 'sport collectif'),
(5, 'sport individuel'),
(6, 'sport d''eau'),
(7, 'sport de ballon'),
(8, 'sport de raquettes');

-- --------------------------------------------------------

--
-- Structure de la table `concerne`
--

CREATE TABLE IF NOT EXISTS `concerne` (
  `id_sport` int(11) NOT NULL,
  `id_actualite` int(11) NOT NULL,
  PRIMARY KEY (`id_sport`,`id_actualite`),
  KEY `FK_concerne_id_actualite` (`id_actualite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `concerne`
--

INSERT INTO `concerne` (`id_sport`, `id_actualite`) VALUES
(5, 2),
(32, 3);

-- --------------------------------------------------------

--
-- Structure de la table `creneau`
--

CREATE TABLE IF NOT EXISTS `creneau` (
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `effectif` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` int(11) NOT NULL,
  `id_responsable` int(11) NOT NULL,
  `id_niveau` int(11) NOT NULL,
  `id_lieu` int(11) NOT NULL,
  `id_activite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_creneau_id_responsable` (`id_responsable`),
  KEY `FK_creneau_id_niveau` (`id_niveau`),
  KEY `FK_creneau_id_lieu` (`id_lieu`),
  KEY `FK_creneau_id_activite` (`id_activite`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `creneau`
--

INSERT INTO `creneau` (`heure_debut`, `heure_fin`, `effectif`, `id`, `jour`, `id_responsable`, `id_niveau`, `id_lieu`, `id_activite`) VALUES
('18:00:00', '20:00:00', 30, 1, 1, 6, 1, 2, 1),
('18:00:00', '20:00:00', 20, 2, 1, 1, 2, 2, 1),
('18:00:00', '20:00:00', 20, 3, 3, 6, 1, 2, 1),
('12:00:00', '14:00:00', 30, 4, 4, 1, 1, 2, 1),
('14:30:00', '16:00:00', 20, 5, 4, 1, 2, 2, 1),
('12:00:00', '14:00:00', 45, 6, 2, 2, 2, 3, 2),
('18:00:00', '20:00:00', 45, 7, 3, 3, 1, 3, 2),
('18:00:00', '20:00:00', 45, 8, 4, 4, 1, 3, 2),
('12:00:00', '14:00:00', 20, 9, 1, 5, 1, 4, 3),
('18:00:00', '19:30:00', 30, 10, 4, 5, 1, 4, 3),
('19:30:00', '21:00:00', 30, 11, 4, 5, 3, 4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE IF NOT EXISTS `demande` (
  `id_piece_inscription` int(11) NOT NULL,
  `id_categorie_personne` int(11) NOT NULL,
  PRIMARY KEY (`id_piece_inscription`,`id_categorie_personne`),
  KEY `FK_demande_id_categorie_personne` (`id_categorie_personne`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `demande`
--

INSERT INTO `demande` (`id_piece_inscription`, `id_categorie_personne`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 3),
(2, 3),
(3, 3),
(2, 4),
(3, 4),
(4, 4),
(2, 5),
(3, 5),
(4, 5),
(2, 6),
(3, 6),
(4, 6);

-- --------------------------------------------------------

--
-- Structure de la table `de_type`
--

CREATE TABLE IF NOT EXISTS `de_type` (
  `id_sport` int(11) NOT NULL,
  `id_activite` int(11) NOT NULL,
  PRIMARY KEY (`id_sport`,`id_activite`),
  KEY `FK_de_type_id_activite` (`id_activite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `de_type`
--

INSERT INTO `de_type` (`id_sport`, `id_activite`) VALUES
(2, 1),
(6, 2),
(7, 3),
(5, 4),
(4, 5),
(8, 7),
(9, 8),
(10, 11),
(10, 12),
(11, 13),
(12, 14),
(13, 15),
(5, 16),
(5, 17),
(14, 18),
(15, 19),
(4, 20),
(4, 22),
(4, 23),
(4, 24),
(16, 25),
(17, 26),
(18, 27),
(19, 28),
(20, 29),
(20, 30),
(21, 31),
(22, 32),
(32, 32),
(23, 33),
(24, 34),
(25, 35),
(26, 36),
(27, 37),
(28, 38),
(29, 39),
(30, 40),
(31, 41);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE IF NOT EXISTS `inscription` (
  `en_attente` tinyint(1) NOT NULL,
  `demande` tinyint(1) NOT NULL,
  `ects` int(11) DEFAULT NULL,
  `nombre_heures` int(11) DEFAULT NULL,
  `id_personne` int(11) NOT NULL,
  `id_creneau` int(11) NOT NULL,
  PRIMARY KEY (`id_personne`,`id_creneau`),
  KEY `FK_inscription_id_creneau` (`id_creneau`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE IF NOT EXISTS `lieu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`id`, `nom`, `ville`, `adresse`) VALUES
(1, 'Piscine de la Source', 'Orléans', 'Rue de Beaumarchais'),
(2, 'Stade de La Source', 'Orléans', '7 Rue de Beaumarchais'),
(3, 'Halle des sports', 'Orléans', 'rue de vendôme'),
(4, 'Gymnase U', 'Orléans', 'avenue du parc floral');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE IF NOT EXISTS `niveau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `niveau`
--

INSERT INTO `niveau` (`id`, `nom`) VALUES
(1, 'Tous'),
(2, 'SSU + confirmé'),
(3, 'Perfectionnement'),
(4, 'Confirmé'),
(5, 'Débutant');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `adresse` text NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_categorie_personne` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_personne_id_categorie_personne` (`id_categorie_personne`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `piece_inscription`
--

CREATE TABLE IF NOT EXISTS `piece_inscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `piece_inscription`
--

INSERT INTO `piece_inscription` (`id`, `nom`) VALUES
(1, 'certificat de scolarité'),
(2, 'certificat médical'),
(3, '1 photo d''identité'),
(4, 'justificatif d''activité professionnelle');

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

CREATE TABLE IF NOT EXISTS `responsable` (
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `responsable`
--

INSERT INTO `responsable` (`nom`, `prenom`, `email`, `id`) VALUES
('Queval', 'N', 'n.queval@yopmail.fr', 1),
('Bissonier', 'D', 'd.bissonier@yopmail.com', 2),
('Plessy', 'P', 'p.plessy@yopmail.com', 3),
('Paty', 'S', 's.paty@yopmail.fr', 4),
('Groisy', 'J', 'j.groisy@yopmail.fr', 5),
('Convention Club', '', 'convention.club@yopmail.fr', 6);

-- --------------------------------------------------------

--
-- Structure de la table `sport`
--

CREATE TABLE IF NOT EXISTS `sport` (
  `nom` varchar(25) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `sport`
--

INSERT INTO `sport` (`nom`, `id`) VALUES
('Athlétisme', 2),
('Gymnastique', 4),
('Football', 5),
('Badminton', 6),
('Basket', 7),
('Canoe-kayak', 8),
('Cheerleading', 9),
('Danse', 10),
('Escalade', 11),
('Fitness', 12),
('Floor ball', 13),
('Gestion du stress', 14),
('Golf', 15),
('Handball', 16),
('Judo', 17),
('Kick Boxing', 18),
('Musculation', 19),
('Natation', 20),
('Qi Gong', 21),
('Rugby', 22),
('Ju Jitsu', 23),
('Taekwondo', 24),
('Tennis', 25),
('Tennis de table', 26),
('Trampoline', 27),
('Ultimate', 28),
('Voile', 29),
('Volley-ball', 30),
('Water-polo', 31),
('Yoga', 32);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `FK_appartient_id_categorie_sport` FOREIGN KEY (`id_categorie_sport`) REFERENCES `categorie_sport` (`id`),
  ADD CONSTRAINT `FK_appartient_id_sport` FOREIGN KEY (`id_sport`) REFERENCES `sport` (`id`);

--
-- Contraintes pour la table `concerne`
--
ALTER TABLE `concerne`
  ADD CONSTRAINT `FK_concerne_id_sport` FOREIGN KEY (`id_sport`) REFERENCES `sport` (`id`),
  ADD CONSTRAINT `FK_concerne_id_actualite` FOREIGN KEY (`id_actualite`) REFERENCES `actualite` (`id`);

--
-- Contraintes pour la table `creneau`
--
ALTER TABLE `creneau`
  ADD CONSTRAINT `FK_creneau_id_activite` FOREIGN KEY (`id_activite`) REFERENCES `activite` (`id`),
  ADD CONSTRAINT `FK_creneau_id_lieu` FOREIGN KEY (`id_lieu`) REFERENCES `lieu` (`id`),
  ADD CONSTRAINT `FK_creneau_id_niveau` FOREIGN KEY (`id_niveau`) REFERENCES `niveau` (`id`),
  ADD CONSTRAINT `FK_creneau_id_responsable` FOREIGN KEY (`id_responsable`) REFERENCES `responsable` (`id`);

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `FK_demande_id_piece_inscription` FOREIGN KEY (`id_piece_inscription`) REFERENCES `piece_inscription` (`id`),
  ADD CONSTRAINT `FK_demande_id_categorie_personne` FOREIGN KEY (`id_categorie_personne`) REFERENCES `categorie_personne` (`id`);

--
-- Contraintes pour la table `de_type`
--
ALTER TABLE `de_type`
  ADD CONSTRAINT `FK_de_type_id_sport` FOREIGN KEY (`id_sport`) REFERENCES `sport` (`id`),
  ADD CONSTRAINT `FK_de_type_id_activite` FOREIGN KEY (`id_activite`) REFERENCES `activite` (`id`);

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `FK_inscription_id_personne` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `FK_inscription_id_creneau` FOREIGN KEY (`id_creneau`) REFERENCES `creneau` (`id`);

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `FK_personne_id_categorie_personne` FOREIGN KEY (`id_categorie_personne`) REFERENCES `categorie_personne` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
