-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 09:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project01`
--

-- --------------------------------------------------------

--
-- Table structure for table `bullet journal`
--

CREATE TABLE `bullet journal` (
  `B_ID` int(11) NOT NULL,
  `date` text NOT NULL,
  `writing` text NOT NULL,
  `b_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_ID` int(11) NOT NULL,
  `emoji` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `Note_ID` int(11) NOT NULL,
  `name_note` text NOT NULL,
  `writing` text NOT NULL,
  `Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `to do list`
--

CREATE TABLE `to do list` (
  `to do_ID` int(11) NOT NULL,
  `Nane_to do` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Users_Nuber` int(11) NOT NULL,
  `F_name` text NOT NULL,
  `L_name` text NOT NULL,
  `Sex` text NOT NULL,
  `Email` text NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bullet journal`
--
ALTER TABLE `bullet journal`
  ADD PRIMARY KEY (`B_ID`),
  ADD KEY `date` (`date`(768)),
  ADD KEY `writing` (`writing`(768)),
  ADD KEY `b_name` (`b_name`(768));

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_ID`),
  ADD KEY `emoji` (`emoji`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`Note_ID`),
  ADD KEY `name_note` (`name_note`(768)),
  ADD KEY `writing` (`writing`(768)),
  ADD KEY `Type` (`Type`(768));

--
-- Indexes for table `to do list`
--
ALTER TABLE `to do list`
  ADD PRIMARY KEY (`to do_ID`),
  ADD KEY `Nane_to do` (`Nane_to do`(768));

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Users_Nuber`),
  ADD KEY `F_name` (`F_name`(768)),
  ADD KEY `L_name` (`L_name`(768)),
  ADD KEY `Sex` (`Sex`(768)),
  ADD KEY `Email` (`Email`(768)),
  ADD KEY `Password` (`Password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
