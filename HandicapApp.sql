-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 07 oct. 2021 à 16:06
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `HandicapApp`
--

-- --------------------------------------------------------

--
-- Structure de la table `contenu`
--

CREATE TABLE `contenu` (
  `id_contenu` int(11) NOT NULL,
  `titre` varchar(70) NOT NULL,
  `auteur` varchar(70) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `lvl` varchar(2) NOT NULL,
  `matiere` varchar(70) NOT NULL,
  `specialite` char(7) NOT NULL,
  `id_methode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contenu`
--

INSERT INTO `contenu` (`id_contenu`, `titre`, `auteur`, `date`, `lvl`, `matiere`, `specialite`, `id_methode`) VALUES
(1, 'html', 'adrien', '2021-10-13', 'A2', 'php', 'DEVOPS', 1),
(2, 'testCour', 'Adrien', '2021-10-05', 'B2', 'Reflexion', 'DEVOPS', 2);

-- --------------------------------------------------------

--
-- Structure de la table `kinesthesique`
--

CREATE TABLE `kinesthesique` (
  `id_kine` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `id_methode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `kinesthesique`
--

INSERT INTO `kinesthesique` (`id_kine`, `text`, `img`, `id_methode`) VALUES
(1, 'Enoncé', 'Les bases du HTML kinesthésique.png', 1),
(4, 'ligne 7 : https://assets.afcdn.com/recipe/20170614/69595_w1024h1024c1cx2000cy3000.jpg\r\n', NULL, 1),
(5, 'ligne 8 : https://assets.afcdn.com/recipe/20170621/69747_origin.jpg\r\n', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `methode`
--

CREATE TABLE `methode` (
  `id_methode` int(11) NOT NULL,
  `auditif` varchar(255) NOT NULL,
  `visuel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `methode`
--

INSERT INTO `methode` (`id_methode`, `auditif`, `visuel`) VALUES
(1, 'audio.mp3', 'visu.pdf'),
(2, 'url', '<html></html>');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contenu`
--
ALTER TABLE `contenu`
  ADD PRIMARY KEY (`id_contenu`),
  ADD UNIQUE KEY `id_methode` (`id_methode`);

--
-- Index pour la table `kinesthesique`
--
ALTER TABLE `kinesthesique`
  ADD PRIMARY KEY (`id_kine`),
  ADD KEY `id_methode` (`id_methode`);

--
-- Index pour la table `methode`
--
ALTER TABLE `methode`
  ADD PRIMARY KEY (`id_methode`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contenu`
--
ALTER TABLE `contenu`
  MODIFY `id_contenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `kinesthesique`
--
ALTER TABLE `kinesthesique`
  MODIFY `id_kine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `methode`
--
ALTER TABLE `methode`
  MODIFY `id_methode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contenu`
--
ALTER TABLE `contenu`
  ADD CONSTRAINT `id_methode` FOREIGN KEY (`id_methode`) REFERENCES `methode` (`id_methode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
