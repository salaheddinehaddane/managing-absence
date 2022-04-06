-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2022 at 02:59 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absence`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

CREATE TABLE `absence` (
  `id` int(11) NOT NULL,
  `heure_debut` int(11) NOT NULL,
  `heure_fin` int(11) NOT NULL,
  `motif` varchar(255) DEFAULT NULL,
  `personne_mat` varchar(255) DEFAULT NULL,
  `tache_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `mat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`password`, `user_name`, `mat`) VALUES
('1234', 'salaheddine', 'A123456'),
('1234', 'amine', 'A123457'),
('1234', 'oussama', 'A123458');

-- --------------------------------------------------------

--
-- Table structure for table `enseignent`
--

CREATE TABLE `enseignent` (
  `mat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enseignent`
--

INSERT INTO `enseignent` (`mat`) VALUES
('E202201'),
('E202202'),
('E202203'),
('E202204'),
('E202205');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `mat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`mat`) VALUES
('G202201'),
('G202202'),
('G202203'),
('G202204'),
('G202205'),
('G202206'),
('G202207'),
('G202208'),
('G202209'),
('G202210');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
  `role` varchar(31) NOT NULL,
  `mat` varchar(255) NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personne`
--

INSERT INTO `personne` (`role`, `mat`, `nom`) VALUES
('admin', 'A123456', 'Salah Eddine'),
('admin', 'A123457', 'Amine'),
('admin', 'A123458', 'Oussama'),
('enseignent', 'E202201', 'Zahi jarir'),
('enseignent', 'E202202', 'Hajar lazar'),
('enseignent', 'E202203', 'Rachida hanane'),
('enseignent', 'E202204', 'Tarik agouti '),
('enseignent', 'E202205', 'Ahmed oirrak'),
('etudiant', 'G202201', 'salah eddine haddane'),
('etudiant', 'G202202', 'Amine mazza'),
('etudiant', 'G202203', 'Oussama akhatar'),
('etudiant', 'G202204', 'Khadija benchlih'),
('etudiant', 'G202205', 'Abdssamad rahhaoui'),
('etudiant', 'G202206', 'Latifa abaragh'),
('etudiant', 'G202207', 'salma adimi'),
('etudiant', 'G202208', 'Khoula yamik'),
('etudiant', 'G202209', 'Said nossri'),
('etudiant', 'G202210', 'Rachid abraim');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `nom_service` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `nom_service`) VALUES
(1, 'informatique'),
(2, 'physique'),
(3, 'chimie');

-- --------------------------------------------------------

--
-- Table structure for table `tache`
--

CREATE TABLE `tache` (
  `id` int(11) NOT NULL,
  `nom_tache` varchar(255) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tache`
--

INSERT INTO `tache` (`id`, `nom_tache`, `service_id`) VALUES
(1, 'développement web', 1),
(2, 'Réseaux', 1),
(3, 'système d\'information', 1),
(4, 'Énergétique', 2),
(5, 'Électronique', 2),
(6, 'Automatique', 2),
(7, 'Electrochimie', 3),
(8, 'Chimie théorique', 3),
(9, 'Chimie Organique', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKa91galpymhdb6xm4xibdu39xb` (`personne_mat`),
  ADD KEY `FK962ag0u1cii5ogj2ov5np8vj7` (`tache_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`mat`);

--
-- Indexes for table `enseignent`
--
ALTER TABLE `enseignent`
  ADD PRIMARY KEY (`mat`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`mat`);

--
-- Indexes for table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`mat`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tache`
--
ALTER TABLE `tache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6ukdn7fo645c4lunnc8ylan4p` (`service_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `FK962ag0u1cii5ogj2ov5np8vj7` FOREIGN KEY (`tache_id`) REFERENCES `tache` (`id`),
  ADD CONSTRAINT `FKa91galpymhdb6xm4xibdu39xb` FOREIGN KEY (`personne_mat`) REFERENCES `personne` (`mat`);

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `FK5og2x5mkaqotke3xgpvn0s9n6` FOREIGN KEY (`mat`) REFERENCES `personne` (`mat`);

--
-- Constraints for table `enseignent`
--
ALTER TABLE `enseignent`
  ADD CONSTRAINT `FKt28k6ek9d443noyvsyb782x8r` FOREIGN KEY (`mat`) REFERENCES `personne` (`mat`);

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `FKlieie57r3782331hxx2cr3ixu` FOREIGN KEY (`mat`) REFERENCES `personne` (`mat`);

--
-- Constraints for table `tache`
--
ALTER TABLE `tache`
  ADD CONSTRAINT `FK6ukdn7fo645c4lunnc8ylan4p` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
