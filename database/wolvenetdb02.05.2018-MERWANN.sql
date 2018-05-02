-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 02 mai 2018 à 15:22
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.4

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
  `idFor` int(11) DEFAULT NULL,
  `idCli` int(11) DEFAULT NULL,
  `idMo` int(11) DEFAULT NULL,
  `idOff` int(11) DEFAULT NULL,
  `idBox` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `abonner`:
--   `idBox`
--       `accessoires` -> `id`
--   `idCli`
--       `clients` -> `id`
--   `idFor`
--       `forfaits` -> `id`
--   `idMo`
--       `mobiles` -> `id`
--   `idOff`
--       `offres` -> `id`
--

-- --------------------------------------------------------

--
-- Structure de la table `accessoires`
--

DROP TABLE IF EXISTS `accessoires`;
CREATE TABLE IF NOT EXISTS `accessoires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marqueAcc` char(255) COLLATE utf8_bin DEFAULT NULL,
  `modeleAcc` char(255) COLLATE utf8_bin DEFAULT NULL,
  `refAcc` char(255) COLLATE utf8_bin DEFAULT NULL,
  `prixbaseAcc` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `accessoires`:
--

--
-- Déchargement des données de la table `accessoires`
--

INSERT INTO `accessoires` (`id`, `marqueAcc`, `modeleAcc`, `refAcc`, `prixbaseAcc`) VALUES
(1, 'Apple', 'Ensemble Adaptateur secteur USB 5 W Apple + Cable USB-C (1m) vers Lightning', 'ensemble-lightning-basique', '19.99'),
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `ajax_chat_messages`:
--

--
-- Déchargement des données de la table `ajax_chat_messages`
--

INSERT INTO `ajax_chat_messages` (`id`, `userID`, `userName`, `userRole`, `channel`, `dateTime`, `ip`, `text`) VALUES
(1, 2147483647, 'WolvenetBot', 4, 0, '2018-05-02 10:13:22', 0x7f000001, '/login (977117)'),
(2, 2147483647, 'WolvenetBot', 4, 0, '2018-05-02 10:13:23', 0x7f000001, '/logout (977117)'),
(3, 2147483647, 'WolvenetBot', 4, 0, '2018-05-02 15:20:37', 0x7f000001, '/login (266108)'),
(4, 2147483647, 'WolvenetBot', 4, 0, '2018-05-02 15:20:47', 0x7f000001, '/logout (266108)');

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
  `prixBox` decimal(10,2) DEFAULT NULL,
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
  `pseudoCli` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `prenCli` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nomCli` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mailCli` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mdpCli` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `confirmation_token` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `confirmed_at` date DEFAULT NULL,
  `reset_token` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `reset_at` date DEFAULT NULL,
  `ipCli` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `telCli` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `fixeCli` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `villeCli` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `adresseCli` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `complementadrsCli` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `cpCli` int(11) DEFAULT NULL,
  `sexeCli` char(5) COLLATE utf8_bin NOT NULL DEFAULT 'autre',
  `dateinscriptionCli` date DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `clients`:
--

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `pseudoCli`, `prenCli`, `nomCli`, `mailCli`, `mdpCli`, `confirmation_token`, `confirmed_at`, `reset_token`, `reset_at`, `ipCli`, `telCli`, `fixeCli`, `villeCli`, `adresseCli`, `complementadrsCli`, `cpCli`, `sexeCli`, `dateinscriptionCli`, `admin`) VALUES
(1, 'ayed.merwann', 'Merwann', 'Ayed', 'ayed.merwann@gmx.com', '$2y$10$h4mY/5hoEaejYE9MG.mAZOWkYlgwq6pBTJ/dcPyDbDWfNoC0/43US', NULL, '2018-04-29', NULL, NULL, '127.0.0.1', '0612028457', '', 'Saint Alban-Leysse', '377 Route de Vérel', NULL, 73230, 'homme', '2018-04-29', 0),
(2, 'azeaze.zerrzeerz', 'Zerrzeerz', 'Azeaze', 'aaa@gmail.com', '$2y$10$p2WyBFzhdRgBLChote.Y8u/aFI4cKtTIaOAX5kCszeXovwWxjhs/y', NULL, '2018-05-02', NULL, NULL, '127.0.0.1', '', '', 'tamere', '747484 aezakoeozak', '', 74500, 'homme', '2018-05-02', 0);

-- --------------------------------------------------------

--
-- Structure de la table `fixes`
--

DROP TABLE IF EXISTS `fixes`;
CREATE TABLE IF NOT EXISTS `fixes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marqueFixe` char(255) COLLATE utf8_bin DEFAULT NULL,
  `modeleFixe` char(255) COLLATE utf8_bin DEFAULT NULL,
  `couleurFixe` char(255) COLLATE utf8_bin DEFAULT NULL,
  `refFixe` char(255) COLLATE utf8_bin DEFAULT NULL,
  `typeFixe` char(255) COLLATE utf8_bin DEFAULT NULL,
  `prixbaseFixe` decimal(10,2) DEFAULT NULL,
  `anneeFixe` year(4) DEFAULT NULL,
  `descFixe` text COLLATE utf8_bin,
  `garantieFixe` char(6) COLLATE utf8_bin DEFAULT NULL,
  `poidsFixe` char(6) COLLATE utf8_bin DEFAULT NULL,
  `dimenFixe` char(50) COLLATE utf8_bin DEFAULT NULL,
  `urlimgminiFixe` char(255) COLLATE utf8_bin DEFAULT NULL,
  `url1Fixe` char(255) COLLATE utf8_bin DEFAULT NULL,
  `url2Fixe` char(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `fixes`:
--

--
-- Déchargement des données de la table `fixes`
--

INSERT INTO `fixes` (`id`, `marqueFixe`, `modeleFixe`, `couleurFixe`, `refFixe`, `typeFixe`, `prixbaseFixe`, `anneeFixe`, `descFixe`, `garantieFixe`, `poidsFixe`, `dimenFixe`, `urlimgminiFixe`, `url1Fixe`, `url2Fixe`) VALUES
(1, 'AEG', 'Loop', 'Blanc', 'aeg-loop', 'DECT sans fil', '29.99', 2017, 'Le  téléphone sans fil AEG LOOP  se démarque par son design intemporel, son écran rétroéclairé et son haut parleur de haute qualité.<br>\r\nCe téléphone  DECT se veut simple à utiliser et original.<br /><br />\r\n\r\n<strong>Un look intemporel</strong><br />\r\nSon design futuriste est original et adapté à la forme du visage. Votre confort d\'utilisation est ainsi renforcé.  Son écran LCD à rétro éclairage bleu renforce son allure moderne et pratique.\r\n', '5 ans', '500g', '250x395x205', 'img/fixes/aeg-mini.png', 'fixes/aegloop/aegloop1.jpg', 'fixes/aegloop/aegloop2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `forfaits`
--

DROP TABLE IF EXISTS `forfaits`;
CREATE TABLE IF NOT EXISTS `forfaits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomFor` char(50) COLLATE utf8_bin DEFAULT NULL,
  `descFor` text COLLATE utf8_bin,
  `prixbaseFor` decimal(10,2) DEFAULT NULL,
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
(6, 'Pro One', 'Forfait sans engagement pour les professionnels.\r\nAppels/SMS/MMS illimités.\r\nEnveloppe internet 20Go utilisable dans toute l\'Europe et DOM.\r\nService Assistance 24h/24.\r\nRemise sur le forfait en fonction de l\'ancienneté.', '19.99'),
(7, 'Pro Plus', 'Forfait sans engagement pour les professionnels.\r\nAppels/SMS/MMS illimités.\r\nEnveloppe internet 100Go utilisable dans le monde.\r\nService Assistance 24h/24.\r\nRemise sur le forfait en fonction de l\'ancienneté.', '69.99');

-- --------------------------------------------------------

--
-- Structure de la table `mobiles`
--

DROP TABLE IF EXISTS `mobiles`;
CREATE TABLE IF NOT EXISTS `mobiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marqueMo` set('Apple','Samsung','Huawei','LG','Sony') COLLATE utf8_bin DEFAULT NULL,
  `modeleMo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `couleurMo` char(30) COLLATE utf8_bin DEFAULT NULL,
  `capaciteMo` char(5) COLLATE utf8_bin DEFAULT NULL,
  `refMo` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `prixbaseMo` decimal(10,2) DEFAULT NULL,
  `anneeMo` year(4) DEFAULT NULL,
  `descMo` text COLLATE utf8_bin,
  `garantieMo` char(255) COLLATE utf8_bin DEFAULT NULL,
  `poidsMo` char(255) COLLATE utf8_bin DEFAULT NULL,
  `dimenMo` char(255) COLLATE utf8_bin DEFAULT NULL,
  `optionsMo` text COLLATE utf8_bin,
  `promoMo` tinyint(1) DEFAULT NULL,
  `urlimgMo` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `urlimgminiMo` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `url1Mo` char(255) COLLATE utf8_bin DEFAULT NULL,
  `url2Mo` char(255) COLLATE utf8_bin DEFAULT NULL,
  `url3Mo` char(255) COLLATE utf8_bin DEFAULT NULL,
  `url4Mo` char(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `mobiles`:
--

--
-- Déchargement des données de la table `mobiles`
--

INSERT INTO `mobiles` (`id`, `marqueMo`, `modeleMo`, `couleurMo`, `capaciteMo`, `refMo`, `prixbaseMo`, `anneeMo`, `descMo`, `garantieMo`, `poidsMo`, `dimenMo`, `optionsMo`, `promoMo`, `urlimgMo`, `urlimgminiMo`, `url1Mo`, `url2Mo`, `url3Mo`, `url4Mo`) VALUES
(1, 'Apple', 'iPhone X', 'Noir', '64Go', 'apple-iphonex-noir-64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', '2 ans', '174g', '143,6 x 70,9 x 7,7mm', '- Mobile avec un nouvel écran Super Retina (OLED) de 5,8 pouces. Couleurs somptueuses. Extrême précision des tons. Fidélité des noirs. Luminosité élevée et contraste de 1 000 000:1. Verre ultra résistant à l\'avant et à l\'arrière.Plus de bouton d\'accueil pour une navigation naturelle et intuitive.<br /><br />\r\n\r\n- Téléphone avec une authentification sécurisée via Face ID. Grâce à la caméra TrueDepth, votre visage devient votre mot de passe. Face ID est un nouveau moyen sécurisé de déverrouiller votre appareil, de vous authentifier et de régler vos achats.<br /><br />\r\n\r\n- Mobile avec double appareil photo 12 Mpx. Un capteur 12 Mpx plus grand et plus rapide. Un nouveau filtre couleur. Des pixels plus profonds. Et un nouveau téléobjectif avec stabilisation optique de l’image qui permet d’effectuer un zoom optique ainsi qu’un zoom numérique d’un coefficient atteignant 10x pour les photos et 6x pour les vidéos.<br /><br />\r\n\r\n- Puce A11 Bionic : elle est dotée d’un système neuronal capable d’effectuer jusqu’à 600 milliards d’opérations à la seconde. Quatre cœurs à haute efficacité énergétique jusqu’à 70 % plus rapides que la puce A10 Fusion, ainsi que deux cœurs hautes performances jusqu’à 25 % plus rapides.<br /><br />\r\n\r\n- Un contrôleur de performances de deuxième génération et une batterie au design créé sur mesure qui offre jusqu’à deux heures d’autonomie de plus entre deux charges que l’iPhone 7.<br /><br />\r\n\r\n- Chargement sans fil.<br /><br />', 0, 'apple/iphonex/gray/iphoneXgraybig.png', 'apple/iphonex/gray/iphoneXgraytransparent.png', 'apple/iphonex/gray/face.png', 'apple/iphonex/gray/dos.png', 'apple/iphonex/gray/face-back.png', 'apple/iphonex/gray/ensemble.png'),
(2, 'Apple', 'iPhone X', 'Gris', '64Go', 'apple-iphonex-gris-64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', '2 ans', '174g', '143,6 x 70,9 x 7,7mm', '', 0, '', 'apple/iphonex/silver/iphoneXsilvertransparent.png', NULL, NULL, NULL, NULL),
(3, 'Apple', 'iPhone X', 'Gris', '256Go', 'apple-iphonex-gris-256go', '1099.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', '2 ans', '174g', '143,6 x 70,9 x 7,7mm', '', 0, '', 'apple/iphonex/silver/iphoneXsilvertransparent.png', NULL, NULL, NULL, NULL),
(4, 'Apple', 'iPhone X', 'Noir', '256Go', 'apple-iphonex-noir-256go', '1099.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', '2 ans', '174g', '143,6 x 70,9 x 7,7mm', '- Mobile avec un nouvel écran Super Retina (OLED) de 5,8 pouces. Couleurs somptueuses. Extrême précision des tons. Fidélité des noirs. Luminosité élevée et contraste de 1 000 000:1. Verre ultra résistant à l\'avant et à l\'arrière.Plus de bouton d\'accueil pour une navigation naturelle et intuitive.<br /><br />\r\n\r\n- Téléphone avec une authentification sécurisée via Face ID. Grâce à la caméra TrueDepth, votre visage devient votre mot de passe. Face ID est un nouveau moyen sécurisé de déverrouiller votre appareil, de vous authentifier et de régler vos achats.<br /><br />\r\n\r\n- Mobile avec double appareil photo 12 Mpx. Un capteur 12 Mpx plus grand et plus rapide. Un nouveau filtre couleur. Des pixels plus profonds. Et un nouveau téléobjectif avec stabilisation optique de l’image qui permet d’effectuer un zoom optique ainsi qu’un zoom numérique d’un coefficient atteignant 10x pour les photos et 6x pour les vidéos.<br /><br />\r\n\r\n- Puce A11 Bionic : elle est dotée d’un système neuronal capable d’effectuer jusqu’à 600 milliards d’opérations à la seconde. Quatre cœurs à haute efficacité énergétique jusqu’à 70 % plus rapides que la puce A10 Fusion, ainsi que deux cœurs hautes performances jusqu’à 25 % plus rapides.<br /><br />\r\n\r\n- Un contrôleur de performances de deuxième génération et une batterie au design créé sur mesure qui offre jusqu’à deux heures d’autonomie de plus entre deux charges que l’iPhone 7.<br /><br />\r\n\r\n- Chargement sans fil.<br /><br />', 0, 'apple/iphonex/gray/iphoneXgraybig.png', 'apple/iphonex/gray/iphoneXgraytransparent256.png', 'apple/iphonex/gray/face.png', 'apple/iphonex/gray/dos.png', 'apple/iphonex/gray/face-back.png', 'apple/iphonex/gray/ensemble.png'),
(5, 'Apple', 'iPhone 8', 'Noir', '64Go', 'apple-iphone8-noir-64go', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', '2 ans', '148 g', '138.4 x 67.3 x 7.3 mm', '', 0, '', 'apple/iphone8/gray/iPhone8.png', NULL, NULL, NULL, NULL),
(6, 'Apple', 'iPhone 8', 'Or', '64Go', 'apple-iphone8-or-64go', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', '2 ans', '148 g', '138.4 x 67.3 x 7.3 mm', '', 0, '', 'apple/iphone8/gold/iPhone8.png', NULL, NULL, NULL, NULL),
(7, 'Apple', 'iPhone 8', 'Gris', '64Go', 'apple-iphone8-gris-64go', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', '2 ans', '148 g', '138.4 x 67.3 x 7.3 mm', '', 0, '', 'apple/iphone8/silver/iPhone8.png', NULL, NULL, NULL, NULL),
(8, 'Apple', 'iPhone 8', 'Noir', '256Go', 'apple-iphone8-noir-256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', '2 ans', '148 g', '138.4 x 67.3 x 7.3 mm', '', 0, '', 'apple/iphone8/gray/iPhone8.png', NULL, NULL, NULL, NULL),
(9, 'Apple', 'iPhone 8', 'Gris', '256Go', 'apple-iphone8-gris-256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', '2 ans', '148 g', '138.4 x 67.3 x 7.3 mm', '', 0, '', 'apple/iphone8/silver/iPhone8.png', NULL, NULL, NULL, NULL),
(10, 'Apple', 'iPhone 8', 'Or', '256Go', 'apple-iphone8-or-256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', '2 ans', '148 g', '138.4 x 67.3 x 7.3 mm', '', 0, '', 'apple/iphone8/gold/iPhone8.png', NULL, NULL, NULL, NULL),
(11, 'Apple', 'iPhone 7', 'Noir', '32Go', 'apple-iphone7-noir-32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/black/iPhone7.png', NULL, NULL, NULL, NULL),
(12, 'Apple', 'iPhone 7', 'Noir de Jadis', '32Go', 'apple-iphone7-noir-de-jadis-32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/black-of-jais/iPhone7.png', NULL, NULL, NULL, NULL),
(14, 'Apple', 'iPhone 7', 'Or rose', '32Go', 'apple-iphone7-gold-pink-32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/pink-gold/iPhone7.png', NULL, NULL, NULL, NULL),
(15, 'Apple', 'iPhone 7', 'Rouge', '32Go', 'apple-iphone7-red-edition-32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/red/iPhone7.png', NULL, NULL, NULL, NULL),
(16, 'Apple', 'iPhone 7', 'Gris', '32Go', 'apple-iphone7-gris-32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/silver/iPhone7.png', NULL, NULL, NULL, NULL),
(17, 'Apple', 'iPhone 7', 'Noir', '128Go', 'apple-iphone7-noir-128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/black/iPhone7.png', NULL, NULL, NULL, NULL),
(18, 'Apple', 'iPhone 7', 'Noir de Jadis', '128Go', 'apple-iphone7-noir-de-jadis-128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/black-of-jais/iPhone7.png', NULL, NULL, NULL, NULL),
(20, 'Apple', 'iPhone 7', 'Or rose', '128Go', 'apple-iphone7-gold-pink-128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/pink-gold/iPhone7.png', NULL, NULL, NULL, NULL),
(21, 'Apple', 'iPhone 7', 'Rouge', '128Go', 'apple-iphone7-red-edition-128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/red/iPhone7.png', NULL, NULL, NULL, NULL),
(22, 'Apple', 'iPhone 7', 'Gris', '128Go', 'apple-iphone7-gris-128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/silver/iPhone7.png', NULL, NULL, NULL, NULL),
(23, 'Apple', 'iPhone 7', 'Noir', '256Go', 'apple-iphone7-noir-256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/black/iPhone7.png', NULL, NULL, NULL, NULL),
(24, 'Apple', 'iPhone 7', 'Noir de Jadis', '256Go', 'apple-iphone7-noir-de-jadis-256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/black-of-jais/iPhone7.png', NULL, NULL, NULL, NULL),
(26, 'Apple', 'iPhone 7', 'Rouge', '256Go', 'apple-iphone7-red-edition-256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/red/iPhone7.png', NULL, NULL, NULL, NULL),
(27, 'Apple', 'iPhone 7', 'Gris', '256Go', 'apple-iphone7-gris-256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', '2 ans', '138 g', '138.3 x 67.1 x 7.1 mm', '', 0, '', 'apple/iphone7/silver/iPhone7.png', NULL, NULL, NULL, NULL),
(29, 'Huawei', 'Honor 6X', NULL, '32Go', 'huawei-honor6x-32go', '99.99', 2016, 'Successeur du très réussi smartphone 5X, le Honor 6X affiche un écran Full HD de 5,5 pouces. Tout en métal, il est équipé d\'un capteur d\'empreintes digitales, d\'un capteur photo de 12 mégapixels et d\'une puce Kirin 655 à 2,1 GHz. Il offre un stockage de 32 Go extensible.', '2 ans', '162g', '150,9 x 76,2 x 8,2 mm', '', 0, '', 'huawei/honor6x/Honor6X.png', NULL, NULL, NULL, NULL),
(30, 'Huawei', 'Honor 9', 'Noir', '32Go', 'huawei-honor9-noir-32go', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', '2 ans', '155g', '147,3 x 70,9 x 7,5 mm', '', 0, '', 'huawei/honor9/black/Honor9.png', NULL, NULL, NULL, NULL),
(31, 'Huawei', 'Honor 9', 'Bleu', '32Go', 'huawei-honor9-bleu-32go', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', '2 ans', '155g', '147,3 x 70,9 x 7,5 mm', '', 0, '', 'huawei/honor9/blue/Honor9.png', NULL, NULL, NULL, NULL),
(32, 'Huawei', 'Honor 9', 'Gris', '32Go', 'huawei-honor9-gris-32go', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', '2 ans', '155g', '147,3 x 70,9 x 7,5 mm', '', 0, '', 'huawei/honor9/silver/Honor9.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

DROP TABLE IF EXISTS `offres`;
CREATE TABLE IF NOT EXISTS `offres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomOffre` char(255) COLLATE utf8_bin DEFAULT NULL,
  `descOffre` text COLLATE utf8_bin,
  `prixbaseOffre` decimal(10,2) DEFAULT NULL,
  `dureeOffre` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `offres`:
--

--
-- Déchargement des données de la table `offres`
--

INSERT INTO `offres` (`id`, `nomOffre`, `descOffre`, `prixbaseOffre`, `dureeOffre`) VALUES
(1, 'Offre Spotify Premium', 'Écoutez votre musique a tout moment avec l\'offre sensationnel Spotify Premium ', '8.99', '0000-00-00 00:00:00'),
(2, 'Offre Netflix', 'Des séries TV et des films personnalisés pour vous. Où et quand vous le souhaitez.', '8.99', '0000-00-00 00:00:00'),
(3, 'Offre Carte cadeau Apple', 'Offrez des apps, des livres, de la musique, des séries et bien plus avec la Carte Cadeau App Store & iTunes.', '15.00', '0000-00-00 00:00:00'),
(4, 'Offre OCS', 'Des blockbusters inédits et des films pour toute la famille,\r\ndes séries moins de 24h après leur diffusion aux Etats-Unis\r\net le meilleur de l\'actualité du cinéma et des séries :\r\nvous êtes fans, nous aussi !', '8.99', '0000-00-00 00:00:00'),
(5, 'Offre Canal+', 'Les grands événements sport, cinéma, séries avec la chaîne CANAL+', '8.99', '0000-00-00 00:00:00'),
(6, 'Offre Deezer', 'Écoutez votre musique sans limites, partout, tout le temps.', '8.99', '0000-00-00 00:00:00'),
(7, 'Offre ADN', 'Découvrez ADN, la plateforme de référence de l\'univers manga en streaming et téléchargements !', '3.99', '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
