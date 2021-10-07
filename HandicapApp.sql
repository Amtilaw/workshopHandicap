-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 07 oct. 2021 à 11:10
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
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `kinesthesique`
--

INSERT INTO `kinesthesique` (`id_kine`, `text`, `img`) VALUES
(1, 'Enoncé', 'url');

-- --------------------------------------------------------

--
-- Structure de la table `methode`
--

CREATE TABLE `methode` (
  `id_methode` int(11) NOT NULL,
  `auditif` varchar(255) NOT NULL,
  `visuel` text NOT NULL,
  `kine_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `methode`
--

INSERT INTO `methode` (`id_methode`, `auditif`, `visuel`, `kine_id`) VALUES
(1, 'url', ',cikzkezoiezj', NULL),
(2, 'url', '<html></html>', NULL);

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
  ADD PRIMARY KEY (`id_kine`);

--
-- Index pour la table `methode`
--
ALTER TABLE `methode`
  ADD PRIMARY KEY (`id_methode`),
  ADD UNIQUE KEY `kine_id` (`kine_id`);

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
  MODIFY `id_kine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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

--
-- Contraintes pour la table `methode`
--
ALTER TABLE `methode`
  ADD CONSTRAINT `methode_ibfk_1` FOREIGN KEY (`kine_id`) REFERENCES `kinesthesique` (`id_kine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
