-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 28 jan. 2020 à 23:08
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.1.31

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
-- Structure de la table `demandeachat`
--

CREATE TABLE `demandeachat` (
  `id` int(11) NOT NULL,
  `id_vendeur` int(11) DEFAULT NULL,
  `id_demandeur` int(11) DEFAULT NULL,
  `id_offre` int(11) DEFAULT NULL,
  `date_demande` varchar(50) DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demandeachat`
--

INSERT INTO `demandeachat` (`id`, `id_vendeur`, `id_demandeur`, `id_offre`, `date_demande`, `statut`) VALUES
(1, 1, 1, 16, '2020-01-28 ', 'En attente');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `demandeachat`
--
ALTER TABLE `demandeachat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `demandeachat`
--
ALTER TABLE `demandeachat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
