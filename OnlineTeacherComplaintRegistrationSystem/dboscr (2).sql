-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 05:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dboscr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaint`
--

CREATE TABLE `tblcomplaint` (
  `number` int(120) NOT NULL,
  `tname` varchar(120) COLLATE latin1_bin NOT NULL,
  `tmobno` varchar(10) COLLATE latin1_bin NOT NULL,
  `temail` varchar(50) COLLATE latin1_bin NOT NULL,
  `uname` varchar(120) COLLATE latin1_bin NOT NULL,
  `upass` varchar(120) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tblscomplaint`
--

CREATE TABLE `tblscomplaint` (
  `number` int(120) NOT NULL,
  `tname` varchar(120) COLLATE latin1_bin NOT NULL,
  `Sname` varchar(120) COLLATE latin1_bin NOT NULL,
  `Smobno` varchar(120) COLLATE latin1_bin NOT NULL,
  `tcomplaint` varchar(120) COLLATE latin1_bin NOT NULL,
  `upaction` varchar(120) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcomplaint`
--
ALTER TABLE `tblcomplaint`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `tblscomplaint`
--
ALTER TABLE `tblscomplaint`
  ADD PRIMARY KEY (`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcomplaint`
--
ALTER TABLE `tblcomplaint`
  MODIFY `number` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tblscomplaint`
--
ALTER TABLE `tblscomplaint`
  MODIFY `number` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
