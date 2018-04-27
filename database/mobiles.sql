-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 27 avr. 2018 à 15:47
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

-- --------------------------------------------------------

--
-- Structure de la table `mobiles`
--

DROP TABLE IF EXISTS `mobiles`;
CREATE TABLE `mobiles` (
  `id` int(11) NOT NULL,
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
  `urlimgminiMo` varchar(256) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- RELATIONS POUR LA TABLE `mobiles`:
--

--
-- Déchargement des données de la table `mobiles`
--

INSERT INTO `mobiles` (`id`, `marqueMo`, `refMo`, `prixbaseMo`, `anneeMo`, `descMo`, `garantieMo`, `poidsMo`, `dimenMo`, `optionsMo`, `capaciteMo`, `promoMo`, `urlimgMo`, `urlimgminiMo`) VALUES
(1, 'Apple', 'iphonexgray64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', '64Go', 0, '', ''),
(2, 'Apple', 'iphonexsilver64go', '899.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', '64Go', 0, '', ''),
(3, 'Apple', 'iphonexsilver256Go', '1099.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. ', '174g', '143,6 x 70,9 x 7,7mm', '', '256Go', 0, '', ''),
(4, 'Apple', 'iphonexgray256Go', '1099.99', 2017, 'L\'iPhone X, c\'est un design tout écran. Face ID, qui fait du visage un mot de passe. Et la puce la plus puissante et intelligente pour un smartphone.', 'Garantie 1 ans tout risques. \r\n', '174g', '143,6 x 70,9 x 7,7mm', '', '256Go', 0, '', ''),
(5, 'Apple', 'iphone8gray64go', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '64Go', 0, '', ''),
(6, 'Apple', 'iphone8gold64go', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '64Go', 0, '', ''),
(7, 'Apple', 'iphone8silver64go\r\n', '609.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '64Go', 0, '', ''),
(8, 'Apple', 'iphone8gray256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '256go', 0, '', ''),
(9, 'Apple', 'iphone8silver256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '256go', 0, '', ''),
(10, 'Apple', 'iphone8gold256go', '809.99', 2017, 'L\'iPhone 8 d\'Apple vient compléter l\'offre haut de gamme de la marque à la pomme. Ecran de 4,7 pouces, processeur Apple A11 Bionic et meilleur bloc caméra 12 MPixels sont au programme. L\'iPhone 8 se décline en version 64 Go et 256 Go.', 'Garantie 1 ans tout risques. ', '148 g ', '138.4 x 67.3 x 7.3 mm ', '', '256go', 0, '', ''),
(11, 'Apple', 'iphone7black32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(12, 'Apple', 'iphone7blackofjais32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(13, 'Apple', 'iphone7gold32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(14, 'Apple', 'iphone7pinkgold32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(15, 'Apple', 'iphone7red32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(16, 'Apple', 'iphone7silver32go', '439.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '32Go', 0, '', ''),
(17, 'Apple', 'iphone7black128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(18, 'Apple', 'iphone7blackofjais128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(19, 'Apple', 'iphone7gold128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(20, 'Apple', 'iphone7pinkgold128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(21, 'Apple', 'iphone7red128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(22, 'Apple', 'iphone7silver128go', '639.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '128Go', 0, '', ''),
(23, 'Apple', 'iphone7black256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(24, 'Apple', 'iphone7blackofjais256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(25, 'Apple', 'iphone7gold256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(26, 'Apple', 'iphone7red256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(27, 'Apple', 'iphone7silver256go', '839.99', 2016, 'L’Apple iPhone 7 affiche une diagonale de 4,7 pouces, comme l\'iPhone 6 et 6s avant lui. Mais il bénéficie de la technologie Retina HD qui améliore l\'affichage. Pour la première fois, il embarque également un processeur à quatre cœurs, l\'A10 Fusion. En plus de son capteur photo principal de 12 Mpixels avec stabilisation optique, il intègre un capteur 7 Mpixels en façade.', 'Garantie 1 ans tout risques. ', '138 g ', '138.3 x 67.1 x 7.1 mm ', '', '256Go', 0, '', ''),
(29, 'Huawei', 'honor6x', '99.99', 2016, 'Successeur du très réussi smartphone 5X, le Honor 6X affiche un écran Full HD de 5,5 pouces. Tout en métal, il est équipé d\'un capteur d\'empreintes digitales, d\'un capteur photo de 12 mégapixels et d\'une puce Kirin 655 à 2,1 GHz. Il offre un stockage de 32 Go extensible.', 'Garantie 1 ans tout risques. ', '162g', '150,9 x 76,2 x 8,2 mm  ', '', '32Go', 0, '', ''),
(30, 'Huawei', 'honor9black', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', 'Garantie 1 ans tout risques. ', '155g', '147,3 x 70,9 x 7,5 mm', '', '32Go', 0, '', ''),
(31, 'Huawei', 'honor9blue', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', 'Garantie 1 ans tout risques. ', '155g', '147,3 x 70,9 x 7,5 mm', '', '32Go', 0, '', ''),
(32, 'Huawei', 'honor9silver', '359.99', 2017, 'Le Honor 9 est un smartphone équipé d’un écran Full HD de 5,15 pouces. Il embarque un processeur à 2,4 GHz associé à 4 Go de mémoire vive (64 Go de stockage extensible). A l\'instar du Huawei P10, il bénéficie d’un double capteur photo principal (20 et 12 Mégapixels) et sa batterie atteint 3.200 mAh.', 'Garantie 1 ans tout risques. ', '155g', '147,3 x 70,9 x 7,5 mm', '', '32Go', 0, '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
