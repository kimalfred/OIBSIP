-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2024 at 02:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `emp_id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `emp_id`, `name`, `email`, `password`) VALUES
(2, 31345, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cnum` int(100) NOT NULL,
  `flight` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `seat` varchar(100) NOT NULL,
  `passenger` int(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `pnr` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `email`, `name`, `cnum`, `flight`, `date`, `seat`, `passenger`, `price`, `pnr`) VALUES
(24, 'kanor@email.com', 'Mang Kanor', 63453, 'MNL --> TKY  Phillipine Airlines', '2024-02-15', 'Premium Economy Class Seats', 3, '3721', 41951),
(25, 'ken@email.com', 'ken molina', 9831, 'MNL --> TKY  Phillipine Airlines', '2024-02-16', 'Economy Class Seats', 5, '3372', 52815),
(26, 'kim@email.com', 'Kim Molina', 12312, 'IND --> JPN  Indian Airlines', '2024-02-16', 'Economy Class Seats', 4, '3598', 94357),
(27, 'pedro@email.com', 'Mang Pedro', 443634, 'MNL --> DUB  American Airlines', '2024-02-14', 'Business Class Seats', 4, '4101', 97798);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cnum` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `cnum`, `email`, `password`) VALUES
(1, 'Ava Harris', 901231, 'ava@email.com', 'harris'),
(23657, 'Kim Molina', 1224, 'kim@email.com', 'kim1224'),
(23660, 'ken molina', 9831, 'ken@email.com', 'ken'),
(23662, 'Mang Pedro', 443634, 'pedro@email.com', 'pedro'),
(23664, 'Juan Dela Cruz', 85313, 'juan@email.com', 'juan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23665;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
