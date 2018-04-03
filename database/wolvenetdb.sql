-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 03 avr. 2018 à 21:28
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

-- --------------------------------------------------------

--
-- Structure de la table `abonner`
--

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

CREATE TABLE `ajax_chat_invitations` (
  `userID` int(10) UNSIGNED NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_messages`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `ajax_chat_online`
--

CREATE TABLE `ajax_chat_online` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

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

CREATE TABLE `forfaits` (
  `id` int(11) NOT NULL,
  `nomFor` text COLLATE utf8_bin NOT NULL,
  `descFor` text COLLATE utf8_bin NOT NULL,
  `prixbaseFor` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `mobiles`
--

CREATE TABLE `mobiles` (
  `id` int(11) NOT NULL,
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
  `promoMo` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `forfaits`
--
ALTER TABLE `forfaits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `offres`
--
ALTER TABLE `offres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
