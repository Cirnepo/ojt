-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2025 at 02:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comsci`
--

-- --------------------------------------------------------

--
-- Table structure for table `cs`
--

CREATE TABLE `cs` (
  `id` int(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `yearr` int(225) NOT NULL,
  `author` varchar(220) NOT NULL,
  `pdate` date NOT NULL,
  `pstat` varchar(225) NOT NULL,
  `fdef` date NOT NULL,
  `fstat` varchar(225) NOT NULL,
  `hb` date NOT NULL,
  `hbdate` varchar(225) NOT NULL,
  `file_name` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cs`
--

INSERT INTO `cs` (`id`, `title`, `yearr`, `author`, `pdate`, `pstat`, `fdef`, `fstat`, `hb`, `hbdate`, `file_name`) VALUES
(1, 'ChatBot', 2019, 'War', '2019-11-15', 'Complete', '2020-01-22', 'Complete', '2020-01-28', 'Complete', './uploads/1-COVER-PAGE - ARMINAL.pdf'),
(2, 'W3bs1te', 2024, 'Abbey', '2024-11-11', 'Complete', '2024-12-15', 'Complete', '2025-01-05', 'Complete', './uploads/caVsu.png'),
(3, 'Inst0x', 2021, 'Cir', '2023-02-15', 'Complete', '2022-12-15', 'Complete', '2022-03-01', 'Complete', './uploads/caVsu.png');

-- --------------------------------------------------------

--
-- Table structure for table `cs1`
--

CREATE TABLE `cs1` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `yearr` date NOT NULL,
  `author` varchar(220) NOT NULL,
  `pdate` date NOT NULL,
  `pstat` varchar(225) NOT NULL,
  `fdef` date NOT NULL,
  `fstat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `csfinal`
--

CREATE TABLE `csfinal` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `yearr` date NOT NULL,
  `author` varchar(220) NOT NULL,
  `pdate` date NOT NULL,
  `pstat` varchar(225) NOT NULL,
  `fdef` date NOT NULL,
  `fstat` varchar(225) NOT NULL,
  `hb` date NOT NULL,
  `hbdate` varchar(225) NOT NULL,
  `file_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hb`
--

CREATE TABLE `hb` (
  `id` int(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `yearr` int(225) NOT NULL,
  `author` varchar(220) NOT NULL,
  `hb` date NOT NULL,
  `hbdate` varchar(225) NOT NULL,
  `file_name` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hb`
--

INSERT INTO `hb` (`id`, `title`, `yearr`, `author`, `hb`, `hbdate`, `file_name`) VALUES
(1, 'ChatGpt', 2024, 'Unknown', '2024-11-11', 'Complete', './uploads/1-COVER-PAGE - ARMINAL.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `it`
--

CREATE TABLE `it` (
  `id` int(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `yearr` int(225) NOT NULL,
  `author` varchar(220) NOT NULL,
  `pdate` date NOT NULL,
  `pstat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `it1`
--

CREATE TABLE `it1` (
  `id` int(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `yearr` int(225) NOT NULL,
  `author` varchar(220) NOT NULL,
  `pdate` date NOT NULL,
  `pstat` varchar(210) NOT NULL,
  `fdef` date NOT NULL,
  `fstat` varchar(210) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `itfinal`
--

CREATE TABLE `itfinal` (
  `id` int(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `yearr` int(225) NOT NULL,
  `author` varchar(220) NOT NULL,
  `pdate` date NOT NULL,
  `pstat` varchar(225) NOT NULL,
  `fdef` date NOT NULL,
  `fstat` varchar(225) NOT NULL,
  `hb` date NOT NULL,
  `hbdate` varchar(225) NOT NULL,
  `file_name` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itfinal`
--

INSERT INTO `itfinal` (`id`, `title`, `yearr`, `author`, `pdate`, `pstat`, `fdef`, `fstat`, `hb`, `hbdate`, `file_name`) VALUES
(1, 'ChatGpt', 2024, 'Unknown', '2024-11-11', 'Passed', '2024-11-11', 'Passed', '2024-11-11', 'Complete', './uploads/1-COVER-PAGE - ARMINAL.pdf'),
(3, 'ChatGpt', 2024, 'Unknown', '0000-00-00', '', '2024-10-17', '', '0000-00-00', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cs`
--
ALTER TABLE `cs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cs1`
--
ALTER TABLE `cs1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `csfinal`
--
ALTER TABLE `csfinal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hb`
--
ALTER TABLE `hb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it`
--
ALTER TABLE `it`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it1`
--
ALTER TABLE `it1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itfinal`
--
ALTER TABLE `itfinal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cs`
--
ALTER TABLE `cs`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cs1`
--
ALTER TABLE `cs1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `csfinal`
--
ALTER TABLE `csfinal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hb`
--
ALTER TABLE `hb`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `it`
--
ALTER TABLE `it`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `it1`
--
ALTER TABLE `it1`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `itfinal`
--
ALTER TABLE `itfinal`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
