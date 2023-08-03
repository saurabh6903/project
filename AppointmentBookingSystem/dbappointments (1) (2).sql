-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2022 at 02:05 PM
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
-- Database: `dbappointments`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblallapointments`
--

CREATE TABLE `tblallapointments` (
  `Pno` int(11) NOT NULL,
  `Pname` varchar(120) NOT NULL,
  `Pgender` varchar(20) DEFAULT NULL,
  `Page` varchar(100) DEFAULT NULL,
  `Pmobno` varchar(10) NOT NULL,
  `Pemail` varchar(120) NOT NULL,
  `Paddress` varchar(500) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Pdate` date NOT NULL,
  `Ptime` time NOT NULL,
  `Pdisease` varchar(500) NOT NULL,
  `Remark` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblallapointments`
--

INSERT INTO `tblallapointments` (`Pno`, `Pname`, `Pgender`, `Page`, `Pmobno`, `Pemail`, `Paddress`, `Pdate`, `Ptime`, `Pdisease`, `Remark`) VALUES
(16, 'sachin atole', 'Male', '30', '9011084811', 'sachinatole30@gmail.com', 'coretech computers,patil plaza, suryanagri', '2022-01-13', '20:06:00', 'Avs', 'A'),
(17, 'sachin atole', 'Male', '30', '9011084811', 'sachinatole30@gmail.com', 'coretech computers,patil plaza, suryanagri', '2022-01-13', '20:13:00', 'dfghj', 'N'),
(18, 'sachin atole', 'Male', '45', '9011084811', 'sachinatole30@gmail.com', 'coretech computers,patil plaza, suryanagri', '2022-01-28', '17:13:00', 'zxcvbnm', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tbldlogin`
--

CREATE TABLE `tbldlogin` (
  `usrname` varchar(100) NOT NULL,
  `usrpass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldlogin`
--

INSERT INTO `tbldlogin` (`usrname`, `usrpass`) VALUES
('ADMIN', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `tblrlogin`
--

CREATE TABLE `tblrlogin` (
  `username` varchar(120) NOT NULL,
  `userpassword` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrlogin`
--

INSERT INTO `tblrlogin` (`username`, `userpassword`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblallapointments`
--
ALTER TABLE `tblallapointments`
  ADD PRIMARY KEY (`Pno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblallapointments`
--
ALTER TABLE `tblallapointments`
  MODIFY `Pno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
