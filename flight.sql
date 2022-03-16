-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2022 at 09:21 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_vol` int(11) NOT NULL,
  `flight_type` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `dep_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `id_user`, `id_vol`, `flight_type`, `origin`, `destination`, `dep_time`) VALUES
(38, 19, 3, '0', 'marrakech', 'bora bora', '2022-02-25 14:00:00'),
(39, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(41, 19, 9, '1', 'Italy', 'NewYork', '2022-03-19 19:01:00'),
(42, 19, 10, '0', 'Essaouira', 'Roma', '2022-02-25 00:40:00'),
(44, 19, 7, '1', 'WITMER', 'ELIDA', '2022-03-10 19:05:00'),
(45, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(46, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(47, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(48, 19, 9, '1', 'Italy', 'NewYork', '2022-03-19 19:01:00'),
(49, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(50, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(51, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(52, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(53, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(54, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(55, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(56, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(57, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE IF NOT EXISTS `passenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `user_id`, `reservation_id`, `fullname`, `birthday`) VALUES
(1, 27, 0, 'amg sou', '1994-03-03'),
(5, 27, 0, 'brahim h', '1991-04-20'),
(6, 16, 0, 'aicha n', '1968-04-27'),
(7, 16, 0, 'souma', '2022-02-15'),
(11, 16, 0, 'soma', '2022-02-12'),
(13, 19, 0, 'hamza gassai', '2022-03-03'),
(14, 19, 0, 'mahdi gliouine', '2022-03-08'),
(15, 19, 0, 'brad pit', '2006-02-02'),
(16, 19, NULL, 'ereee', '2022-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `role`) VALUES
(10, 'soma', 'soma', '$2y$12$cD8ckMcv2135vtwo0OswMeAzWBkaoUKgJoO8xn2P7NqUrSbljvcOK', 1),
(18, 'hello1', 'hello1', '$2y$12$nm7LTLRDTjTWjwzJLtBPu.FRc2W4YjT40ICi0/JgJcMmkidr7VHXS', NULL),
(19, 'mahdi gliouine', 'mahdi111', '$2y$12$47/G1Myu1kN24OWV/.yYmejZrJmW/cGDAPE0kxq6pfxGv0PvrKYe2', NULL),
(21, 'Brahim sahbi', 'brahim123', '$2y$12$wocB6m9zEvOJMNqpO3BN6O1CQq5WEkQmgkE2heJqHKUnwvb3OQWzO', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vols`
--

DROP TABLE IF EXISTS `vols`;
CREATE TABLE IF NOT EXISTS `vols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `dep_time` datetime NOT NULL,
  `return_time` datetime NOT NULL,
  `seats` int(255) NOT NULL,
  `flighttype` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vols`
--

INSERT INTO `vols` (`id`, `origin`, `destination`, `dep_time`, `return_time`, `seats`, `flighttype`) VALUES
(3, 'marrakech', 'bora bora', '2022-02-25 14:00:00', '2022-02-23 22:35:00', 10, '0'),
(6, 'Chicago', 'Casablanca', '2022-03-10 16:45:00', '2022-02-27 16:45:00', -1, '1'),
(7, 'WITMER', 'ELIDA', '2022-03-10 19:05:00', '2022-03-11 00:05:00', 299, '1'),
(9, 'Italy', 'NewYork', '2022-03-19 19:01:00', '2022-03-22 19:01:00', 19, '1'),
(10, 'Essaouira', 'Roma', '2022-02-25 00:40:00', '2023-04-24 02:41:00', 10, '0'),
(11, 'Tanger', 'Tokyo', '2022-03-09 17:37:00', '2022-03-02 23:37:00', 150, '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
