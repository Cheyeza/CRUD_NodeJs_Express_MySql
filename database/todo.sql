-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2022 at 11:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(255) NOT NULL,
  `weekday` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `names` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `weekday`, `product`, `names`) VALUES
(1, 'Tuesday', 'Bread', 'Teck'),
(2, 'Tuesday', 'Breaddddd', 'Teckner'),
(17, 'Wednesday', 'Still Bread', 'Chenna'),
(22, 'Thursday', 'Hot wings', 'Cheyeza'),
(41, '[object Object]', '[object Object]', '[object Object]'),
(42, '[object Object]', '[object Object]', '[object Object]'),
(43, '[object Object]', '[object Object]', '[object Object]'),
(44, 'undefined', 'undefined', 'undefined'),
(45, 'undefined', 'undefined', 'undefined'),
(46, 'undefined', 'undefined', 'undefined'),
(47, 'undefined', 'undefined', 'undefined'),
(48, 'undefined', 'undefined', 'undefined'),
(49, 'undefined', 'undefined', 'undefined'),
(50, 'Monday', 'Pizza', 'Cheyeza'),
(51, 'Tuesday', 'Bread', 'Teckner'),
(52, 'Shandukani', 'Vhenda', 'DA'),
(53, 'Friday', 'dip', 'Cheyeza M'),
(54, 'Thursday', 'Mbhalati', 'Teck');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
