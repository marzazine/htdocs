-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 30 avr. 2018 à 09:52
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `abonner`:
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `ajax_chat_messages`:
--

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
  `reset_token` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `reset_at` date DEFAULT NULL,
  `ipCli` varchar(15) COLLATE utf8_bin NOT NULL,
  `telCli` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `fixeCli` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `villeCli` varchar(100) COLLATE utf8_bin NOT NULL,
  `adresseCli` text COLLATE utf8_bin NOT NULL,
  `cpCli` int(11) NOT NULL,
  `sexeCli` set('homme','femme','autre') COLLATE utf8_bin NOT NULL,
  `dateinscriptionCli` date DEFAULT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `clients`:
--

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `pseudoCli`, `prenCli`, `nomCli`, `mailCli`, `mdpCli`, `confirmation_token`, `confirmed_at`, `reset_token`, `reset_at`, `ipCli`, `telCli`, `fixeCli`, `villeCli`, `adresseCli`, `cpCli`, `sexeCli`, `dateinscriptionCli`, `admin`) VALUES
(1, 'ayed.merwann', 'Merwann', 'Ayed', 'ayed.merwann@gmx.com', '$2y$10$h4mY/5hoEaejYE9MG.mAZOWkYlgwq6pBTJ/dcPyDbDWfNoC0/43US', NULL, '2018-04-29', NULL, NULL, '127.0.0.1', '0612028457', '', 'Saint Alban-Leysse', '377 Route de Vérel', 73230, 'homme', '2018-04-29', 0);

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
  `marqueMo` set('Apple','Samsung','Huawei','LG','Sony') COLLATE utf8_bin NOT NULL,
  `modeleMo` text COLLATE utf8_bin,
  `couleurMo` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `capaciteMo` char(5) COLLATE utf8_bin NOT NULL,
  `refMo` text COLLATE utf8_bin NOT NULL,
  `prixbaseMo` decimal(10,2) NOT NULL,
  `anneeMo` year(4) NOT NULL,
  `descMo` text COLLATE utf8_bin NOT NULL,
  `garantieMo` text COLLATE utf8_bin NOT NULL,
  `poidsMo` text COLLATE utf8_bin NOT NULL,
  `dimenMo` text COLLATE utf8_bin NOT NULL,
  `optionsMo` text COLLATE utf8_bin NOT NULL,
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

INSERT INTO `mobiles` (`id`, `marqueMo`, `modeleMo`, `couleurMo`, `capaciteMo`, `refMo`, `prixbaseMo`, `anneeMo`, `descMo`, `garantieMo`, `poidsMo`, `dimenMo`, `optionsMo`, `promoMo`, `urlimgMo`, `urlimgminiMo`) VALUES
(1, 'Apple', 'iPhone X', 'Noir', '64Go', 'iphonexgray64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', 0, '', 'apple/iphonex/gray/iphoneXgraytransparent.png'),
(2, 'Apple', 'iPhone X', 'Gris', '64Go', 'iphonexsilver64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', 0, '', 'apple/iphonex/silver/iphoneXsilvertransparent.png'),
(3, 'Apple', 'iPhone X', 'Gris', '256Go', 'iphonexsilver256Go', '1099.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', 0, '', 'apple/iphonex/silver/iphoneXsilvertransparent.png'),
(4, 'Apple', 'iPhone X', 'Noir', '256Go', 'iphonexgray256Go', '1099.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. \r\n', '174g', '143,6 x 70,9 x 7,7mm', '', 0, '', 'apple/iphonex/gray/iphoneXgraytransparent.png'),
(5, 'Apple', 'iPhone 8', 'Noir', '64Go', 'iphone8gray64go', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', 0, '', 'apple/iphone8/gray/iPhone8.png'),
(6, 'Apple', 'iPhone 8', 'Or', '64Go', 'iphone8gold64go', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', 0, '', 'apple/iphone8/gold/iPhone8.png'),
(7, 'Apple', 'iPhone 8', 'Gris', '64Go', 'iphone8silver64go\r\n', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', 0, '', 'apple/iphone8/silver/iPhone8.png'),
(8, 'Apple', 'iPhone 8', 'Noir', '256Go', 'iphone8gray256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', 0, '', 'apple/iphone8/gray/iPhone8.png'),
(9, 'Apple', 'iPhone 8', 'Gris', '256Go', 'iphone8silver256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', 0, '', 'apple/iphone8/silver/iPhone8.png'),
(10, 'Apple', 'iPhone 8', 'Or', '256Go', 'iphone8gold256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', 0, '', 'apple/iphone8/gold/iPhone8.png'),
(11, 'Apple', 'iPhone 7', 'Noir', '32Go', 'iphone7black32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/black/iPhone7.png'),
(12, 'Apple', 'iPhone 7', 'Noir de Jadis', '32Go', 'iphone7blackofjais32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/black-of-jais/iPhone7.png'),
(14, 'Apple', 'iPhone 7', 'Or rose', '32Go', 'iphone7pinkgold32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/pink-gold/iPhone7.png'),
(15, 'Apple', 'iPhone 7', 'Rouge', '32Go', 'iphone7red32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/red/iPhone7.png'),
(16, 'Apple', 'iPhone 7', 'Gris', '32Go', 'iphone7silver32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/silver/iPhone7.png'),
(17, 'Apple', 'iPhone 7', 'Noir', '128Go', 'iphone7black128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/black/iPhone7.png'),
(18, 'Apple', 'iPhone 7', 'Noir de Jadis', '128Go', 'iphone7blackofjais128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/black-of-jais/iPhone7.png'),
(20, 'Apple', 'iPhone 7', 'Or rose', '128Go', 'iphone7pinkgold128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/pink-gold/iPhone7.png'),
(21, 'Apple', 'iPhone 7', 'Rouge', '128Go', 'iphone7red128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/red/iPhone7.png'),
(22, 'Apple', 'iPhone 7', 'Gris', '128Go', 'iphone7silver128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/silver/iPhone7.png'),
(23, 'Apple', 'iPhone 7', 'Noir', '256Go', 'iphone7black256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/black/iPhone7.png'),
(24, 'Apple', 'iPhone 7', 'Noir de Jadis', '256Go', 'iphone7blackofjais256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/black-of-jais/iPhone7.png'),
(26, 'Apple', 'iPhone 7', 'Rouge', '256Go', 'iphone7red256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/red/iPhone7.png'),
(27, 'Apple', 'iPhone 7', 'Gris', '256Go', 'iphone7silver256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', 0, '', 'apple/iphone7/silver/iPhone7.png'),
(29, 'Huawei', 'Honor 6X', NULL, '32Go', 'honor6x', '99.99', 2016, 'Successeur du très réussi smartphone 5X, le Honor 6X affiche un écran Full HD de 5,5 pouces. Tout en métal, il est équipé d\'un capteur d\'empreintes digitales, d\'un capteur photo de 12 mégapixels et d\'une puce Kirin 655 à 2,1 GHz. Il offre un stockage de 32 Go extensible.', 'Garantie 1 ans tout risques. ', '162g', '150,9 x 76,2 x 8,2 mm  ', '', 0, '', 'huawei/honor6x/Honor6X.png'),
(30, 'Huawei', 'Honor 9', 'Noir', '32Go', 'honor9black', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', 'Garantie 1 ans tout risques. ', '155g', '147,3 x 70,9 x 7,5 mm', '', 0, '', 'huawei/honor9/black/Honor9.png'),
(31, 'Huawei', 'Honor 9', 'Bleu', '32Go', 'honor9blue', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', 'Garantie 1 ans tout risques. ', '155g', '147,3 x 70,9 x 7,5 mm', '', 0, '', 'huawei/honor9/blue/Honor9.png'),
(32, 'Huawei', 'Honor 9', 'Gris', '32Go', 'honor9silver', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', 'Garantie 1 ans tout risques. ', '155g', '147,3 x 70,9 x 7,5 mm', '', 0, '', 'huawei/honor9/silver/Honor9.png');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `offres`:
--

--
-- Déchargement des données de la table `offres`
--

INSERT INTO `offres` (`id`, `nomOffre`, `descOffre`, `prixbaseOffre`, `dureeOffre`) VALUES
(1, 'Offre Spotify Premium ', 'Écoutez votre musique a tout moment avec l\'offre sensationnel Spotify Premium ', '8.99', '24 mois'),
(2, 'Offre Netflix', 'Des séries TV et des films personnalisés pour vous. Où et quand vous le souhaitez.', '8.99', '24 mois'),
(3, 'Offre Carte cadeau Apple', 'Offrez des apps, des livres, de la musique, des séries et bien plus avec la Carte Cadeau App Store & iTunes.', '15.00', '24 mois'),
(4, 'Offre OCS ', 'Des blockbusters inédits et des films pour toute la famille,\r\ndes séries moins de 24h après leur diffusion aux Etats-Unis\r\net le meilleur de l\'actualité du cinéma et des séries :\r\nvous êtes fans, nous aussi !', '8.99', '24 mois'),
(5, 'Offre Canal+', 'Les grands événements sport, cinéma, séries avec la chaîne CANAL+', '8.99', '24 mois'),
(6, 'Offre Deezer ', 'Écoutez votre musique sans limites, partout, tout le temps.', '8.99', '24 mois'),
(7, 'Offre ADN', 'Découvrez ADN, la plateforme de référence de l\'univers manga en streaming et téléchargements !', '3.99', '24 mois');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
