-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 05 mai 2024 à 00:50
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `phone`, `address`, `email`, `description`) VALUES
(1, 'Louey Ingenieur d\'Informatique', 20558813, 'Cité Ahlem', 'louey.bouachir@gmail.com', ',hv'),
(2, 'Louey Ingenieur d\'Informatique', 20558813, 'Cité Ahlem', 'louey.bouachir@gmail.com', 'bonjoyer ji mapel');

-- --------------------------------------------------------

--
-- Structure de la table `demands`
--

CREATE TABLE `demands` (
  `demand_id` int(255) NOT NULL,
  `consumer_name` varchar(20) NOT NULL,
  `service_name` varchar(20) NOT NULL,
  `owner_name` varchar(20) NOT NULL,
  `state` varchar(20) DEFAULT 'In queue'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `demands`
--

INSERT INTO `demands` (`demand_id`, `consumer_name`, `service_name`, `owner_name`, `state`) VALUES
(2, 'mohsen', 'developer', 'ghaith', 'In queue'),
(3, 'mohsen', 'chef', 'louey', 'refused'),
(4, 'ghaith', 'plumber', 'louey', 'done'),
(15, 'louey', 'electrician', 'mohsen', 'In queue'),
(16, 'louey', 'chef', 'louey', 'accepted'),
(17, 'louey', 'plumber', 'louey', 'done'),
(18, '', 'electrician', 'mohsen', 'In queue'),
(19, 'nabli', 'electrician', 'mohsen', 'In queue'),
(27, 'aziz', 'developer', 'ghaith', 'In queue'),
(30, 'aziz', 'mechanic', 'mohsen', 'In queue'),
(32, 'aziz', 'electrician', 'mohsen', 'In queue'),
(33, 'aziz', 'electrician', 'mohsen', 'In queue'),
(34, 'aziz', 'electrician', 'louey', 'In queue'),
(35, 'aziz', 'mechanic', 'mohsen', 'In queue'),
(36, 'aziz', 'mechanic', 'mohsen', 'In queue'),
(37, 'aziz', 'plumber', 'louey', 'In queue'),
(38, 'aziz', 'mason', 'ghaith', 'In queue'),
(39, 'aziz', 'electrician', 'mohsen', 'In queue');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `service_id` int(255) NOT NULL,
  `service_name` varchar(20) DEFAULT NULL,
  `owner_name` varchar(20) DEFAULT NULL,
  `phone` int(20) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `owner_name`, `phone`, `address`) VALUES
(1, 'electrician', 'mohsen', 96548756, 'bizetre'),
(2, 'chef', 'mohsen', 45213654, 'bizetre'),
(3, 'mechanic', 'mohsen', 20314567, 'bizetre'),
(4, 'carpenter', 'aziz', 70251321, 'bizetre'),
(5, 'driver', 'aziz', 20252321, 'bizetre'),
(6, 'developer', 'ghaith', 20252321, 'bizetre'),
(7, 'mason', 'ghaith', 58456987, 'bizetre'),
(8, 'plumber', 'mohsen', 91236547, 'bizetre'),
(9, 'chef', 'hedi', 75123456, 'bizetre'),
(10, 'plumber', 'louey', 55412369, 'bizetre'),
(11, 'driver', 'aziz', 24123789, 'bizetre'),
(13, 'electrician', 'louey', 91234567, 'bizetre'),
(16, 'driver', 'louey', 45123789, 'Cité Ahlem');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`name`, `email`, `password`, `role`) VALUES
('alee', 'alee@gmail.com', '123', 'consumer'),
('aziz', 'aziz@gmail.com', 'aziz', 'consumer'),
('ghaith', 'ghaith@gmail.com', '123', 'consumer'),
('louey', 'louey.bouachir@gmail', 'louey', 'owner'),
('mohsen', 'mohsennabli321@gmail', 'mohsen', 'consumer'),
('nabli', 'nabli@gmail.com', '123', 'consumer');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Index pour la table `demands`
--
ALTER TABLE `demands`
  ADD PRIMARY KEY (`demand_id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `name_unique` (`name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `demands`
--
ALTER TABLE `demands`
  MODIFY `demand_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
