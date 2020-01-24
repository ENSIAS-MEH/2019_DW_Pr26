-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 24 jan. 2020 à 21:03
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
  `id_hote` int(11) DEFAULT NULL,
  `date_offre` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `categorie` varchar(555) DEFAULT NULL,
  `nombre_personne` int(11) DEFAULT NULL,
  `pays` varchar(555) DEFAULT NULL,
  `ville` varchar(555) DEFAULT NULL,
  `adresse` varchar(555) DEFAULT NULL,
  `date_debut` varchar(555) DEFAULT NULL,
  `date_fin` varchar(555) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `devise` varchar(555) DEFAULT NULL,
  `salle_bain` int(11) DEFAULT 0,
  `nb_chambre` int(11) DEFAULT 0,
  `description` varchar(555) DEFAULT NULL,
  `photo` longblob DEFAULT NULL,
  `etat` varchar(30) DEFAULT 'en attente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
