-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2022 at 12:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

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

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_vol` int(11) NOT NULL,
  `flight_type` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `dep_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `id_user`, `id_vol`, `flight_type`, `origin`, `destination`, `dep_time`) VALUES
(38, 19, 3, '0', 'marrakech', 'bora bora', '2022-02-25 14:00:00'),
(39, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00'),
(41, 19, 9, '1', 'Italy', 'NewYork', '2022-03-19 19:01:00'),
(42, 19, 10, '0', 'Essaouira', 'Roma', '2022-02-25 00:40:00'),
(44, 19, 7, '1', 'WITMER', 'ELIDA', '2022-03-10 19:05:00'),
(45, 19, 6, '1', 'Chicago', 'Casablanca', '2022-03-10 16:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `birthday` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `user_id`, `reservation_id`, `fullname`, `birthday`) VALUES
(1, 27, 0, 'amg sou', '1994-03-03 10:29:00'),
(5, 27, 0, 'brahim h', '1991-04-20 10:34:00'),
(6, 16, 0, 'aicha n', '1968-04-27 23:59:00'),
(7, 16, 0, 'souma', '2022-02-15 14:20:00'),
(11, 16, 0, 'soma', '2022-02-12 14:31:00'),
(13, 19, 0, 'hamza gassai', '2022-03-03 20:25:00'),
(14, 19, 0, 'mahdi gliouine', '2022-03-08 20:27:00'),
(15, 19, 0, 'brad pit', '2006-02-02 21:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `vols` (
  `id` int(11) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `dep_time` datetime NOT NULL,
  `return_time` datetime NOT NULL,
  `seats` int(255) NOT NULL,
  `flighttype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vols`
--

INSERT INTO `vols` (`id`, `origin`, `destination`, `dep_time`, `return_time`, `seats`, `flighttype`) VALUES
(3, 'marrakech', 'bora bora', '2022-02-25 14:00:00', '2022-02-23 22:35:00', 10, '0'),
(6, 'Chicago', 'Casablanca', '2022-03-10 16:45:00', '2022-02-27 16:45:00', 10, '1'),
(7, 'WITMER', 'ELIDA', '2022-03-10 19:05:00', '2022-03-11 00:05:00', 300, '1'),
(9, 'Italy', 'NewYork', '2022-03-19 19:01:00', '2022-03-22 19:01:00', 20, '1'),
(10, 'Essaouira', 'Roma', '2022-02-25 00:40:00', '2023-04-24 02:41:00', 10, '0'),
(11, 'Tanger', 'Tokyo', '2022-03-09 17:37:00', '2022-03-02 23:37:00', 150, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vols`
--
ALTER TABLE `vols`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vols`
--
ALTER TABLE `vols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
