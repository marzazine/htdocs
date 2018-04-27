-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 27 avr. 2018 à 16:15
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wolvenetdb`
--
CREATE DATABASE IF NOT EXISTS `wolvenetdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `wolvenetdb`;

-- --------------------------------------------------------

--
-- Structure de la table `abonner`
--

DROP TABLE IF EXISTS `abonner`;
CREATE TABLE IF NOT EXISTS `abonner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idFor` int(11) NOT NULL,
  `idCli` int(11) NOT NULL,
  `idMo` int(11) NOT NULL,
  `idOff` int(11) NOT NULL,
  `idBox` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `abonner`:
--   `idBox`
--       `box` -> `id`
--   `idCli`
--       `clients` -> `id`
--   `idFor`
--       `forfaits` -> `id`
--   `idMo`
--       `mobiles` -> `id`
--   `idOff`
--       `offres` -> `id`
--

--
-- Déchargement des données de la table `abonner`
--

INSERT INTO `abonner` (`id`, `idFor`, `idCli`, `idMo`, `idOff`, `idBox`) VALUES
(1, 1, 1, 9, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `accessoires`
--

DROP TABLE IF EXISTS `accessoires`;
CREATE TABLE IF NOT EXISTS `accessoires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marqueAcc` set('Apple','Samsung','JBL') COLLATE utf8_bin NOT NULL,
  `modelAcc` text COLLATE utf8_bin NOT NULL,
  `refAcc` text COLLATE utf8_bin NOT NULL,
  `prixbaseAcc` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `accessoires`:
--

--
-- Déchargement des données de la table `accessoires`
--

INSERT INTO `accessoires` (`id`, `marqueAcc`, `modelAcc`, `refAcc`, `prixbaseAcc`) VALUES
(1, 'Apple', 'ChargeurLightning', 'charglight', '14.99'),
(2, 'Samsung', 'ChargeurUsbC', 'chargusbc', '14.99'),
(3, 'Samsung', 'ChargeurUsb', 'chargusb', '14.99'),
(4, 'JBL', 'JBLGO', 'jblgo', '29.99'),
(5, 'Apple', 'AirPods', 'airpods', '149.99'),
(6, 'Apple', 'EarPods', 'earpods', '19.99'),
(7, 'Samsung', 'KitMainsLibre', 'kitsamsung', '9.99');

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_bans`
--

DROP TABLE IF EXISTS `ajax_chat_bans`;
CREATE TABLE IF NOT EXISTS `ajax_chat_bans` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `userName` (`userName`),
  KEY `dateTime` (`dateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `ajax_chat_bans`:
--

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_invitations`
--

DROP TABLE IF EXISTS `ajax_chat_invitations`;
CREATE TABLE IF NOT EXISTS `ajax_chat_invitations` (
  `userID` int(10) UNSIGNED NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  PRIMARY KEY (`userID`,`channel`),
  KEY `dateTime` (`dateTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `ajax_chat_invitations`:
--

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_messages`
--

DROP TABLE IF EXISTS `ajax_chat_messages`;
CREATE TABLE IF NOT EXISTS `ajax_chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `text` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `message_condition` (`id`,`channel`,`dateTime`),
  KEY `dateTime` (`dateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `ajax_chat_messages`:
--

--
-- Déchargement des données de la table `ajax_chat_messages`
--

INSERT INTO `ajax_chat_messages` (`id`, `userID`, `userName`, `userRole`, `channel`, `dateTime`, `ip`, `text`) VALUES
(1, 2147483647, 'WolvenetBot', 4, 0, '2018-04-04 19:10:58', 0x7f000001, '/login (128245)'),
(2, 420728245, '(128245)', 0, 0, '2018-04-04 19:11:10', 0x7f000001, 'Bonjour'),
(3, 420728245, '(128245)', 0, 0, '2018-04-04 19:11:19', 0x7f000001, 'je me prÃ©sente je suis marzazine'),
(4, 2147483647, 'WolvenetBot', 4, 0, '2018-04-05 13:43:17', 0x7f000001, '/login (522457)'),
(5, 2147483647, 'WolvenetBot', 4, 0, '2018-04-05 13:43:23', 0x7f000001, '/logout (128245) Timeout'),
(6, 460022457, '(522457)', 0, 0, '2018-04-05 13:43:40', 0x7f000001, 'wesh le zin'),
(7, 2147483647, 'WolvenetBot', 4, 0, '2018-04-05 13:49:27', 0x7f000001, '/login (318315)'),
(8, 2147483647, 'WolvenetBot', 4, 0, '2018-04-05 13:49:30', 0x7f000001, '/logout (522457) Timeout'),
(9, 482918315, '(318315)', 0, 0, '2018-04-05 13:49:33', 0x7f000001, 'Weshhh'),
(10, 482918315, '(318315)', 0, 0, '2018-04-05 13:49:35', 0x7f000001, 'Bien ?'),
(11, 482918315, '(318315)', 0, 0, '2018-04-05 13:49:53', 0x7f000001, 'Et toi ?'),
(12, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:19', 0x7f000001, 'trkl ?'),
(13, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:21', 0x7f000001, 'fzef'),
(14, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:21', 0x7f000001, 'zfze'),
(15, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:22', 0x7f000001, 'f'),
(16, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:22', 0x7f000001, 'f'),
(17, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:22', 0x7f000001, 'f'),
(18, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:22', 0x7f000001, 'f'),
(19, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:22', 0x7f000001, 'f'),
(20, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:23', 0x7f000001, 'f'),
(21, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:23', 0x7f000001, 'f'),
(22, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:23', 0x7f000001, 'f'),
(23, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:23', 0x7f000001, 'f'),
(24, 482918315, '(318315)', 0, 0, '2018-04-05 13:50:54', 0x7f000001, 'MA BITEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEe'),
(25, 2147483647, 'WolvenetBot', 4, 0, '2018-04-05 13:51:14', 0x7f000001, '/logout (318315)'),
(26, 2147483647, 'WolvenetBot', 4, 0, '2018-04-05 13:51:23', 0x7f000001, '/login Mathias'),
(27, 2, 'Mathias', 2, 0, '2018-04-05 13:51:27', 0x7f000001, 'Ye suis la'),
(28, 2, 'Mathias', 2, 0, '2018-04-05 13:51:38', 0x7f000001, 'Je suis present'),
(29, 2, 'Mathias', 2, 0, '2018-04-05 13:51:42', 0x7f000001, 'monsieur'),
(30, 2, 'Mathias', 2, 0, '2018-04-05 13:51:44', 0x7f000001, 'ui'),
(31, 2, 'Mathias', 2, 0, '2018-04-05 13:51:53', 0x7f000001, '[color=red]ROugeeeeeeeeeee[/color]'),
(32, 2, 'Mathias', 2, 0, '2018-04-05 13:52:02', 0x7f000001, ':favorite:'),
(33, 2, 'Mathias', 2, 0, '2018-04-05 13:52:28', 0x7f000001, '[quote]Ma bite est la lpus grosee[/quote] Ta mÃ¨re'),
(34, 2147483647, 'WolvenetBot', 4, 0, '2018-04-23 09:44:16', 0x7f000001, '/login (543813)'),
(35, 2147483647, 'WolvenetBot', 4, 0, '2018-04-23 09:44:18', 0x7f000001, '/logout Mathias Timeout'),
(36, 483443813, '(543813)', 0, 0, '2018-04-23 09:44:21', 0x7f000001, 'Bonjour');

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_online`
--

DROP TABLE IF EXISTS `ajax_chat_online`;
CREATE TABLE IF NOT EXISTS `ajax_chat_online` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `userName` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `ajax_chat_online`:
--

--
-- Déchargement des données de la table `ajax_chat_online`
--

INSERT INTO `ajax_chat_online` (`userID`, `userName`, `userRole`, `channel`, `dateTime`, `ip`) VALUES
(483443813, '(543813)', 0, 0, '2018-04-23 09:45:09', 0x7f000001);

-- --------------------------------------------------------

--
-- Structure de la table `box`
--

DROP TABLE IF EXISTS `box`;
CREATE TABLE IF NOT EXISTS `box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomBox` text COLLATE utf8_bin NOT NULL,
  `descBox` text COLLATE utf8_bin NOT NULL,
  `prixBox` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `box`:
--

--
-- Déchargement des données de la table `box`
--

INSERT INTO `box` (`id`, `nomBox`, `descBox`, `prixBox`) VALUES
(1, 'WolveBox', 'La WolveBox est une Box internet nouvelle génération. Elle est équipé de WolveOS ce qui vous permet de téléchargé toutes vos appli préférer et de les afficher sur votre écran TV !\r\nDe plus elle est capable d\'assuré un débit jusqu\'à 10gb/s en wifi, et jusqu\'à 100gb/s en Ethernet. \r\n', '34.99'),
(2, 'WolveBoxPlus', 'La box \"WolveBoxPlus\" est la dernière version de la WolveBox, notre Box internet TV dernière génération.\r\nCette nouvelle Box est équipé de notre tout dernier système d\'exploitation, de nouvelles connectiques ainsi que de nouveaux composants. Toutes les nouveautés présentes permettent à la Box de ce comporter comme un petit ordinateur. Naviguer sur le net,visionner vos films vos vidéo YouTube préféré !  \r\nElle permet un débit jusqu\'à 200gb/s pour une fluidité parfaite lors de vos activités sur le net.\r\nVous pouvez maintenant regarder la télé est vos films en 4k UltraHD !', '59.99');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudoCli` text COLLATE utf8_bin NOT NULL,
  `prenCli` varchar(100) COLLATE utf8_bin NOT NULL,
  `nomCli` varchar(100) COLLATE utf8_bin NOT NULL,
  `mailCli` varchar(100) COLLATE utf8_bin NOT NULL,
  `mdpCli` varchar(256) COLLATE utf8_bin NOT NULL,
  `confirmation_token` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `confirmed_at` date DEFAULT NULL,
  `ipCli` varchar(15) COLLATE utf8_bin NOT NULL,
  `telCli` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `fixeCli` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `villeCli` varchar(100) COLLATE utf8_bin NOT NULL,
  `adresseCli` text COLLATE utf8_bin NOT NULL,
  `cpCli` int(11) NOT NULL,
  `sexeCli` set('homme','femme','autre') COLLATE utf8_bin NOT NULL,
  `dateinscriptionCli` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `clients`:
--

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `pseudoCli`, `prenCli`, `nomCli`, `mailCli`, `mdpCli`, `confirmation_token`, `confirmed_at`, `ipCli`, `telCli`, `fixeCli`, `villeCli`, `adresseCli`, `cpCli`, `sexeCli`, `dateinscriptionCli`) VALUES
(1, 'masselon.mathias', 'Mathias', 'Masselon', 'mathias.msl@outlook.fr', '$2y$10$0WxK/8SseoHVZQxlQzwvbu49D8.xNaA5Rz3kblnXgFRzJw0z436da', NULL, '2018-04-23', '127.0.0.1', '0668864578', '5458584888', 'Ma bite', 'COucouc', 73739, '', '2018-04-23'),
(2, 'toto.moi', 'Moi', 'Toto', 'mathias@outlook.fr', '$2y$10$WZEGqR0a/DSX06sCJCMpyermix67toZoRar7Y.c/qInWCRJLdlJd2', '7fzTPAB2UQAQVtiVXdbMhdzVe78aU9ftBbBIoWXUvcrHHBVnJCkVtbnps7pL', NULL, '127.0.0.1', '0668864585', '0479894575', 'jesaispas', '123 ma rue', 64676, 'homme', '2018-04-23');

-- --------------------------------------------------------

--
-- Structure de la table `fixes`
--

DROP TABLE IF EXISTS `fixes`;
CREATE TABLE IF NOT EXISTS `fixes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marqueFixe` set('AEG') COLLATE utf8_bin NOT NULL,
  `modeleFixe` text COLLATE utf8_bin NOT NULL,
  `refFixe` text COLLATE utf8_bin NOT NULL,
  `prixbaseFixe` decimal(10,2) NOT NULL,
  `anneeFixe` year(4) NOT NULL,
  `descFixe` text COLLATE utf8_bin NOT NULL,
  `garantieFixe` text COLLATE utf8_bin NOT NULL,
  `poidsFixe` text COLLATE utf8_bin NOT NULL,
  `dimenFixe` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `fixes`:
--

--
-- Déchargement des données de la table `fixes`
--

INSERT INTO `fixes` (`id`, `marqueFixe`, `modeleFixe`, `refFixe`, `prixbaseFixe`, `anneeFixe`, `descFixe`, `garantieFixe`, `poidsFixe`, `dimenFixe`) VALUES
(1, 'AEG', 'AEG Loop', 'aegloop', '29.99', 2017, 'Un téléphone fixe au design raffiné et épurer, simple d\'utilisation il ajoutera même une touche de modernité dans votre intérieur.', 'Garantie 1 ans. ', '500g', '250x395x205');

-- --------------------------------------------------------

--
-- Structure de la table `forfaits`
--

DROP TABLE IF EXISTS `forfaits`;
CREATE TABLE IF NOT EXISTS `forfaits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomFor` text COLLATE utf8_bin NOT NULL,
  `descFor` text COLLATE utf8_bin NOT NULL,
  `prixbaseFor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `forfaits`:
--

--
-- Déchargement des données de la table `forfaits`
--

INSERT INTO `forfaits` (`id`, `nomFor`, `descFor`, `prixbaseFor`) VALUES
(1, 'Wolve&You 5Go', 'Forfait sans engagement.\r\nAppels/SMS/MMS illimités.\r\nEnveloppe internet 5Go utilisable dans toute l\'Europe et DOM.', '9.99'),
(2, 'Wolve&You 10Go', 'Forfait sans engagement.\r\nAppels/SMS/MMS illimités.\r\nEnveloppe internet 10Go utilisable dans toute l\'Europe et DOM.', '14.99'),
(3, 'Wolve&You 20Go', 'Forfait sans engagement.\r\nAppels/SMS/MMS illimités.\r\nEnveloppe internet 20Go utilisable dans toute l\'Europe et DOM.', '19.99'),
(4, 'Wolve&You 100Go', 'Forfait sans engagement.\r\nAppels/SMS/MMS illimités.\r\nEnveloppe internet 100Go utilisable dans toute l\'Europe et DOM.', '44.99'),
(5, 'Nomade', 'Forfait sans engagement.\r\nAppels/SMS/MMS illimités utlisable dans le monde entier, pour les voyageurs.\r\nEnveloppe internet 100Go utilisable dans toute l\'Europe et DOM.', '59.99'),
(6, 'Pro One', 'Forfait sans engagement pour les professionnel.\r\nAppels/SMS/MMS illimités.\r\nEnveloppe internet 20Go utilisable dans toute l\'Europe et DOM.\r\nForfait parfait pour les professionnel sur l\'Europe.\r\nAssistance 24h/24h prioritaire.', '19.99'),
(7, 'Pro Plus', 'Forfait sans engagement pour les professionnel.\r\nAppels/SMS/MMS illimités.\r\nEnveloppe internet 100Go utilisable dans le monde.\r\nForfait parfait pour les professionnel en déplacement sur le globe.\r\nAssistance 24h/24h prioritaire.', '69.99');

-- --------------------------------------------------------

--
-- Structure de la table `mobiles`
--

DROP TABLE IF EXISTS `mobiles`;
CREATE TABLE IF NOT EXISTS `mobiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modeleMo` text COLLATE utf8_bin NOT NULL,
  `marqueMo` set('Apple','Samsung','Huawei','LG','Sony') COLLATE utf8_bin NOT NULL,
  `refMo` text COLLATE utf8_bin NOT NULL,
  `prixbaseMo` decimal(10,2) NOT NULL,
  `anneeMo` year(4) NOT NULL,
  `descMo` text COLLATE utf8_bin NOT NULL,
  `garantieMo` text COLLATE utf8_bin NOT NULL,
  `poidsMo` text COLLATE utf8_bin NOT NULL,
  `dimenMo` text COLLATE utf8_bin NOT NULL,
  `optionsMo` text COLLATE utf8_bin NOT NULL,
  `capaciteMo` text COLLATE utf8_bin NOT NULL,
  `promoMo` tinyint(1) NOT NULL,
  `urlimgMo` text COLLATE utf8_bin NOT NULL,
  `urlimgminiMo` varchar(256) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `mobiles`:
--

--
-- Déchargement des données de la table `mobiles`
--

INSERT INTO `mobiles` (`id`, `modeleMo`, `marqueMo`, `refMo`, `prixbaseMo`, `anneeMo`, `descMo`, `garantieMo`, `poidsMo`, `dimenMo`, `optionsMo`, `capaciteMo`, `promoMo`, `urlimgMo`, `urlimgminiMo`) VALUES
(1, 'iPhone X Gray 64Go', 'Apple', 'iphonexgray64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', '64Go', 0, '', ''),
(2, 'iPhone X Silver 64Go', 'Apple', 'iphonexsilver64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', '64Go', 0, '', ''),
(3, 'iPhone X Silver 256Go', 'Apple', 'iphonexsilver256Go', '1099.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', '256Go', 0, '', ''),
(4, 'iPhone X Gray 256Go', 'Apple', 'iphonexgray256Go', '1099.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. \r\n', '174g', '143,6 x 70,9 x 7,7mm', '', '256Go', 0, '', ''),
(5, 'iPhone 8 Gray 64Go', 'Apple', 'iphone8gray64go', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '64Go', 0, '', ''),
(6, 'iPhone 8 Gold 64Go', 'Apple', 'iphone8gold64go', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '64Go', 0, '', ''),
(7, 'iPhone 8 Silver 64Go', 'Apple', 'iphone8silver64go\r\n', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '64Go', 0, '', ''),
(8, 'iPhone 8 Gray 256Go', 'Apple', 'iphone8gray256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '256go', 0, '', ''),
(9, 'iPhone 8 Silver 256Go', 'Apple', 'iphone8silver256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '256go', 0, '', ''),
(10, 'iPhone 8 Gold 256Go', 'Apple', 'iphone8gold256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '256go', 0, '', ''),
(11, 'iPhone 7 Black 32Go', 'Apple', 'iphone7black32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(12, 'iPhone 7 Noir De Jadis 32Go', 'Apple', 'iphone7blackofjais32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(13, 'iPhone 7 Gold 32Go', 'Apple', 'iphone7gold32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(14, 'iPhone 7 Rose Gold 32Go', 'Apple', 'iphone7pinkgold32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(15, 'iPhone 7 Rouge 32Go', 'Apple', 'iphone7red32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(16, 'iPhone 7 Silver 32Go', 'Apple', 'iphone7silver32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(17, 'iPhone 7 Noir 128Go', 'Apple', 'iphone7black128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(18, 'iPhone 7 Noir De Jadis 128Go', 'Apple', 'iphone7blackofjais128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(19, 'iPhone 7 Gold 128Go', 'Apple', 'iphone7gold128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(20, 'iPhone 7 Rose Gold 128Go', 'Apple', 'iphone7pinkgold128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(21, 'iPhone 7 Rouge 128Go', 'Apple', 'iphone7red128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(22, 'iPhone 7 Silver 128Go', 'Apple', 'iphone7silver128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(23, 'iPhone 7 Noir 256Go', 'Apple', 'iphone7black256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(24, 'iPhone 7 Noir De Jadis 256Go', 'Apple', 'iphone7blackofjais256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(25, 'iPhone 7 Gold 256Go', 'Apple', 'iphone7gold256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(26, 'iPhone 7 Rouge 256Go', 'Apple', 'iphone7red256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(27, 'iPhone 7 Silver 256Go', 'Apple', 'iphone7silver256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(29, 'Honor 6x', 'Huawei', 'honor6x', '99.99', 2016, 'Successeur du très réussi smartphone 5X, le Honor 6X affiche un écran Full HD de 5,5 pouces. Tout en métal, il est équipé d\'un capteur d\'empreintes digitales, d\'un capteur photo de 12 mégapixels et d\'une puce Kirin 655 à 2,1 GHz. Il offre un stockage de 32 Go extensible.', 'Garantie 1 ans tout risques. ', '162g', '150,9 x 76,2 x 8,2 mm  ', '', '32Go', 0, '', ''),
(30, 'Honor 9x Noir', 'Huawei', 'honor9black', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', 'Garantie 1 ans tout risques. ', '155g', '147,3 x 70,9 x 7,5 mm', '', '32Go', 0, '', ''),
(31, 'Honor 9 Bleu', 'Huawei', 'honor9blue', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', 'Garantie 1 ans tout risques. ', '155g', '147,3 x 70,9 x 7,5 mm', '', '32Go', 0, '', ''),
(32, 'Honor 9 Silver', 'Huawei', 'honor9silver', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', 'Garantie 1 ans tout risques. ', '155g', '147,3 x 70,9 x 7,5 mm', '', '32Go', 0, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

DROP TABLE IF EXISTS `offres`;
CREATE TABLE IF NOT EXISTS `offres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomOffre` text COLLATE utf8_bin NOT NULL,
  `descOffre` text COLLATE utf8_bin NOT NULL,
  `prixbaseOffre` decimal(10,2) NOT NULL,
  `dureeOffre` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `offres`:
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
