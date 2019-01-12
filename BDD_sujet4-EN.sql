-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 22 Janvier 2017 à 19:21
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `app2`
--

-- --------------------------------------------------------

--
-- Structure de la table `airport`
--

CREATE TABLE `airport` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `name` text NOT NULL,
  `country` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `airport`
--

INSERT INTO `airport` (`id`, `code`, `name`, `country`) VALUES
(1, 'CDG', 'Aéroport de Paris-Charles-de-Gaulle', 'France'),
(2, 'ORY', 'Aéroport de Paris-Orly', 'France'),
(3, 'LAX', 'Los Angeles International Airport', 'USA'),
(4, 'SYD', 'Sydney - Kingsford Smith international airport', 'Australia');

-- --------------------------------------------------------

--
-- Structure de la table `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `companyName` text NOT NULL,
  `flightNumber` int(11) NOT NULL,
  `idDeparture` int(11) NOT NULL,
  `idArrival` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `flight`
--

INSERT INTO `flight` (`id`, `companyName`, `flightNumber`, `idDeparture`, `idArrival`, `date`, `time`) VALUES
(1, 'Oceanic', 815, 4, 3, '2004-09-22', '14:15:00'),
(2, 'AirFrance', 123, 1, 3, '2017-01-04', '06:37:00'),
(3, 'AirFrance', 456, 1, 3, '2017-01-01', '12:00:00'),
(4, 'American Airlines', 321, 3, 1, '2017-01-13', '13:00:00'),
(5, 'AirFrance', 789, 2, 4, '2017-01-08', '19:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`) VALUES
(1, 'JackShephard', '1f01d922befc46a6db797af113079ed91661f173'),
(2, 'JohnLocke', 'd92a80a7fd7b2bbdec26d5fb0e00612940b6872b');

-- --------------------------------------------------------

--
-- Structure de la table `user_flight`
--

CREATE TABLE `user_flight` (
  `id` int(11) NOT NULL,
  `idFlight` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user_flight`
--

INSERT INTO `user_flight` (`id`, `idFlight`, `idUser`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_flight`
--
ALTER TABLE `user_flight`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `airport`
--
ALTER TABLE `airport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `user_flight`
--
ALTER TABLE `user_flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
