-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 23 jan. 2020 à 22:09
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ventelocation`
--

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `id` int(11) NOT NULL,
  `id_hote` int(11) NOT NULL,
  `date_offre` varchar(30) NOT NULL,
  `categorie` varchar(555) NOT NULL,
  `nombre_personne` int(11) NOT NULL,
  `pays` varchar(555) NOT NULL,
  `ville` varchar(555) NOT NULL,
  `adresse` varchar(555) NOT NULL,
  `date_debut` varchar(555) NOT NULL,
  `date_fin` varchar(555) NOT NULL,
  `prix` float NOT NULL,
  `devise` varchar(555) NOT NULL,
  `salle_bain` int(11) NOT NULL DEFAULT 0,
  `nb_chambre` int(11) NOT NULL DEFAULT 0,
  `description` varchar(555) DEFAULT NULL,
  `photo` longblob DEFAULT NULL,
  `etat` varchar(30) NOT NULL DEFAULT 'en attente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `id_hote`, `date_offre`, `categorie`, `nombre_personne`, `pays`, `ville`, `adresse`, `date_debut`, `date_fin`, `prix`, `devise`, `salle_bain`, `nb_chambre`, `description`, `photo`, `etat`) VALUES
(3, 1, '', 'chambreHote', 4, 'maroc', 'fes', '98, av karaouinne narjis A', '2020-01-22', '2020-01-31', 6, 'dd', 3, 5, 'ddddddddddd', NULL, 'en attente'),
(4, 1, '2020-01-23 ', 'appartement', 5, 'maroc', 'fes', '98, av karaouinne narjis A', '2020-01-22', '2020-01-31', 6, 'dd', 3, 5, '', NULL, 'en attente'),
(5, 1, '2020-01-23 ', 'appartement', 5, 'maroc', 'fes', '98, av karaouinne narjis A', '2020-01-22', '2020-01-31', 6, 'dd', 3, 5, '', NULL, 'en attente');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hote` (`id_hote`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `offre`
--
ALTER TABLE `offre`
  ADD CONSTRAINT `id_hote` FOREIGN KEY (`id_hote`) REFERENCES `vendeur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
