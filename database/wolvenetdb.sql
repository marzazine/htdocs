-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 05 avr. 2018 à 13:46
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.2

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ajax_chat_messages`
--

INSERT INTO `ajax_chat_messages` (`id`, `userID`, `userName`, `userRole`, `channel`, `dateTime`, `ip`, `text`) VALUES
(1, 2147483647, 'WolvenetBot', 4, 0, '2018-04-04 19:10:58', 0x7f000001, '/login (128245)'),
(2, 420728245, '(128245)', 0, 0, '2018-04-04 19:11:10', 0x7f000001, 'Bonjour'),
(3, 420728245, '(128245)', 0, 0, '2018-04-04 19:11:19', 0x7f000001, 'je me prÃ©sente je suis marzazine'),
(4, 2147483647, 'WolvenetBot', 4, 0, '2018-04-05 13:43:17', 0x7f000001, '/login (522457)'),
(5, 2147483647, 'WolvenetBot', 4, 0, '2018-04-05 13:43:23', 0x7f000001, '/logout (128245) Timeout'),
(6, 460022457, '(522457)', 0, 0, '2018-04-05 13:43:40', 0x7f000001, 'wesh le zin');

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
-- Déchargement des données de la table `ajax_chat_online`
--

INSERT INTO `ajax_chat_online` (`userID`, `userName`, `userRole`, `channel`, `dateTime`, `ip`) VALUES
(460022457, '(522457)', 0, 0, '2018-04-05 13:44:15', 0x7f000001);

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
  `sexeCli` set('homme','femme','inconnu') COLLATE utf8_bin NOT NULL,
  `dateinscriptionCli` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `mobiles`
--

DROP TABLE IF EXISTS `mobiles`;
CREATE TABLE IF NOT EXISTS `mobiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marqueMo` text COLLATE utf8_bin NOT NULL,
  `modeleMo` text COLLATE utf8_bin NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
