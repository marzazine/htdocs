-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 05 avr. 2018 à 15:16
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
CREATE TABLE `abonner` (
  `id` int(11) NOT NULL,
  `idFor` int(11) NOT NULL,
  `idCli` int(11) NOT NULL,
  `idMo` int(11) NOT NULL,
  `idOff` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_bans`
--

DROP TABLE IF EXISTS `ajax_chat_bans`;
CREATE TABLE `ajax_chat_bans` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_invitations`
--

DROP TABLE IF EXISTS `ajax_chat_invitations`;
CREATE TABLE `ajax_chat_invitations` (
  `userID` int(10) UNSIGNED NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_messages`
--

DROP TABLE IF EXISTS `ajax_chat_messages`;
CREATE TABLE `ajax_chat_messages` (
  `id` int(11) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `text` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(33, 2, 'Mathias', 2, 0, '2018-04-05 13:52:28', 0x7f000001, '[quote]Ma bite est la lpus grosee[/quote] Ta mÃ¨re');

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_online`
--

DROP TABLE IF EXISTS `ajax_chat_online`;
CREATE TABLE `ajax_chat_online` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ajax_chat_online`
--

INSERT INTO `ajax_chat_online` (`userID`, `userName`, `userRole`, `channel`, `dateTime`, `ip`) VALUES
(2, 'Mathias', 2, 0, '2018-04-05 13:52:17', 0x7f000001);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
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
  `dateinscriptionCli` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `forfaits`
--

DROP TABLE IF EXISTS `forfaits`;
CREATE TABLE `forfaits` (
  `id` int(11) NOT NULL,
  `nomFor` text COLLATE utf8_bin NOT NULL,
  `descFor` text COLLATE utf8_bin NOT NULL,
  `prixbaseFor` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
CREATE TABLE `mobiles` (
  `id` int(11) NOT NULL,
  `marqueMo` set('Apple','Samsung','Huawei','LG','Sony') COLLATE utf8_bin NOT NULL,
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
  `urlimgMo` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `mobiles`
--

INSERT INTO `mobiles` (`id`, `marqueMo`, `modeleMo`, `refMo`, `prixbaseMo`, `anneeMo`, `descMo`, `garantieMo`, `poidsMo`, `dimenMo`, `optionsMo`, `capaciteMo`, `promoMo`, `urlimgMo`) VALUES
(1, 'Apple', 'IphoneXgray', 'iphonexgray64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', '64Go', 0, ''),
(2, 'Apple', 'IphoneXsilver', 'iphonexsilver64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', '64Go', 0, ''),
(3, 'Apple', 'IphoneXsilver256Go', 'iphonexsilver256Go', '1099.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', '256Go', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

DROP TABLE IF EXISTS `offres`;
CREATE TABLE `offres` (
  `id` int(11) NOT NULL,
  `nomOffre` text COLLATE utf8_bin NOT NULL,
  `descOffre` text COLLATE utf8_bin NOT NULL,
  `prixbaseOffre` decimal(10,2) NOT NULL,
  `dureeOffre` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonner`
--
ALTER TABLE `abonner`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ajax_chat_bans`
--
ALTER TABLE `ajax_chat_bans`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userName` (`userName`),
  ADD KEY `dateTime` (`dateTime`);

--
-- Index pour la table `ajax_chat_invitations`
--
ALTER TABLE `ajax_chat_invitations`
  ADD PRIMARY KEY (`userID`,`channel`),
  ADD KEY `dateTime` (`dateTime`);

--
-- Index pour la table `ajax_chat_messages`
--
ALTER TABLE `ajax_chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_condition` (`id`,`channel`,`dateTime`),
  ADD KEY `dateTime` (`dateTime`);

--
-- Index pour la table `ajax_chat_online`
--
ALTER TABLE `ajax_chat_online`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userName` (`userName`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forfaits`
--
ALTER TABLE `forfaits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offres`
--
ALTER TABLE `offres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonner`
--
ALTER TABLE `abonner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ajax_chat_messages`
--
ALTER TABLE `ajax_chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `forfaits`
--
ALTER TABLE `forfaits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `offres`
--
ALTER TABLE `offres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
