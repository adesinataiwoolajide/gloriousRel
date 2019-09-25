-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 01:07 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `statement_pal`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `spstatement` (IN `paccount` VARCHAR(50), IN `pstmt` VARCHAR(500))  BEGIN
 INSERT INTO statement(account,stmt) VALUES(paccount,pstmt);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `act_id` int(255) NOT NULL,
  `action` text NOT NULL,
  `user_details` varchar(255) NOT NULL,
  `time_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`act_id`, `action`, `user_details`, `time_added`) VALUES
(1, 'Logged Out', 'tolajide74@gmail.com', '2019-09-13 10:59:19'),
(2, 'Logged In', 'tolajide74@gmail.com', '2019-09-13 10:59:53'),
(3, 'Logged In', 'tolajide74@gmail.com', '2019-09-13 10:59:53'),
(4, 'Logged Out', 'tolajide74@gmail.com', '2019-09-13 11:01:46'),
(5, 'Logged In', 'tolajide74@gmail.com', '2019-09-13 11:02:32'),
(6, 'Logged In', 'tolajide74@gmail.com', '2019-09-13 11:02:32'),
(7, 'Logged Out', 'tolajide74@gmail.com', '2019-09-13 11:03:02'),
(8, 'Logged In', 'tolajide74@gmail.com', '2019-09-13 11:03:13'),
(9, 'Logged In', 'tolajide74@gmail.com', '2019-09-13 11:03:14'),
(10, 'Logged Out', 'tolajide74@gmail.com', '2019-09-13 11:03:23'),
(11, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:00:27'),
(12, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:00:27'),
(13, 'Logged Out', 'tolajide74@gmail.com', '2019-09-20 11:01:06'),
(14, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:02:08'),
(15, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:02:08'),
(16, 'Logged Out', 'tolajide74@gmail.com', '2019-09-20 11:03:54'),
(17, 'Retrieved Account', 'rafael.nadal@testing.com', '2019-09-20 11:04:33'),
(18, 'Update Password', 'rafael.nadal@testing.com', '2019-09-20 11:04:45'),
(19, 'Update Password', 'rafael.nadal@testing.com', '2019-09-20 11:04:45'),
(20, 'Logged Out', 'rafael.nadal@testing.com', '2019-09-20 11:10:44'),
(21, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:10:56'),
(22, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:10:56'),
(23, 'Logged Out', 'tolajide74@gmail.com', '2019-09-20 11:11:10'),
(24, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:11:13'),
(25, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:11:14'),
(26, 'Logged Out', 'tolajide74@gmail.com', '2019-09-20 11:14:35'),
(27, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:15:44'),
(28, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:15:44'),
(29, 'Logged Out', 'tolajide74@gmail.com', '2019-09-20 11:16:07'),
(30, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:16:13'),
(31, 'Logged In', 'tolajide74@gmail.com', '2019-09-20 11:16:13'),
(32, 'Logged Out', 'tolajide74@gmail.com', '2019-09-20 11:42:25'),
(33, 'Registered Account', 'local.man@nuclear.com', '2019-09-20 11:42:51'),
(34, 'Logged In', 'local.man@nuclear.com', '2019-09-20 11:46:29'),
(35, 'Logged In', 'local.man@nuclear.com', '2019-09-20 11:46:29'),
(36, 'Logged Out', 'local.man@nuclear.com', '2019-09-20 12:01:16'),
(37, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 08:30:13'),
(38, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 08:30:14'),
(39, 'Logged Out', 'tolajide74@gmail.com', '2019-09-25 08:34:37'),
(40, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 08:34:38'),
(41, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 08:34:38'),
(42, 'Logged Out', 'tolajide74@gmail.com', '2019-09-25 09:25:17'),
(43, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 09:25:43'),
(44, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 09:25:43'),
(45, 'Logged Out', 'tolajide74@gmail.com', '2019-09-25 10:01:25'),
(46, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 10:01:27'),
(47, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 10:01:27'),
(48, 'Logged Out', 'tolajide74@gmail.com', '2019-09-25 10:43:56'),
(49, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 10:44:03'),
(50, 'Logged In', 'tolajide74@gmail.com', '2019-09-25 10:44:03'),
(51, 'Logged Out', 'tolajide74@gmail.com', '2019-09-25 11:02:20'),
(52, 'Logged In', 'local.man@nuclear.com', '2019-09-25 11:04:47'),
(53, 'Logged In', 'local.man@nuclear.com', '2019-09-25 11:04:47'),
(54, 'Logged Out', 'local.man@nuclear.com', '2019-09-25 11:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `time_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`user_id`, `name`, `username`, `password`, `status`, `time_registered`) VALUES
(1, 'Adesina Taiwo Olajumoke', 'tolajide74@gmail.com', 'b63e58a251cbdb2678919dbcd79fdc519c927304', 1, '2018-12-12 08:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `registration_id` int(255) NOT NULL,
  `full_name` text NOT NULL,
  `account_number` varchar(15) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`registration_id`, `full_name`, `account_number`, `username`, `password`, `customer_id`, `created_at`) VALUES
(2, 'ADESOLA KOLA', '1000818831', 'tolajide74@gmail.com', 'b63e58a251cbdb2678919dbcd79fdc519c927304', '727592', '2019-09-11 11:43:20'),
(3, 'MOSUNMOLA SHOMUYIWA', '1000797096', 'rafael.nadal@testing.com', 'aa6cef64bf4323cdc10b0d375d7150ce8ed768eb', '684462', '2019-09-20 11:04:45'),
(4, 'CHIMAEZE ADAOBI', '1000818832', 'local.man@nuclear.com', '01bb55cd385274c2b3a16e62e0edaab704673397', '727592', '2019-09-20 11:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `statement`
--

CREATE TABLE `statement` (
  `id` int(11) NOT NULL,
  `account` varchar(50) DEFAULT NULL,
  `stmt` text NOT NULL,
  `customerid` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statement`
--

INSERT INTO `statement` (`id`, `account`, `stmt`, `customerid`, `customer_name`, `email`) VALUES
(1, '1000818832', '{acctid:1000818832,stmtid:183002558339788.020001,currency:NGN,vdate:20180118,bdate:20180124,amt:-200000,description:,transref:AAACT1802499846F1C,exchangerate:,inputter:N.PHILOMINA,authorizer:N.PHILOMINA,datetime:20180206,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 727592, 'CHIMAEZE ADAOBI', 'local.man@nuclear.com'),
(2, '1000818832', '{acctid:1000818832,stmtid:183002558339788.040001,currency:NGN,vdate:20180118,bdate:20180124,amt:-4000,description:,transref:AAACT1802499846F4P,exchangerate:,inputter:N.PHILOMINA,authorizer:N.PHILOMINA,datetime:20180206,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 727592, 'CHIMAEZE ADAOBI', 'local.man@nuclear.com'),
(3, '1000818832', '{acctid:1000818832,stmtid:183002558339788.060001,currency:NGN,vdate:20180118,bdate:20180124,amt:-200,description:,transref:AAACT1802499846F4R,exchangerate:,inputter:N.PHILOMINA,authorizer:N.PHILOMINA,datetime:20180206,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 727592, 'CHIMAEZE ADAOBI', 'local.man@nuclear.com'),
(4, '1000818832', '{acctid:1000818832,stmtid:183000915539846.000001,currency:NGN,vdate:20180118,bdate:20180124,amt:4000,description:,transref:AAACT180243B4XSHSR,exchangerate:,inputter:N.PHILOMINA,authorizer:N.PHILOMINA,datetime:20180206,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 727592, 'CHIMAEZE ADAOBI', 'local.man@nuclear.com'),
(5, '1000818832', '{acctid:1000818832,stmtid:183000915539846.000002,currency:NGN,vdate:20180118,bdate:20180124,amt:200,description:,transref:AAACT180243B4XSHSR,exchangerate:,inputter:N.PHILOMINA,authorizer:N.PHILOMINA,datetime:20180206,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 727592, 'CHIMAEZE ADAOBI', 'local.man@nuclear.com'),
(6, '1000797096', '{acctid:1000797096,stmtid:182961532662239.020001,currency:NGN,vdate:20180115,bdate:20180119,amt:-150000,description:,transref:AAACT180195KPHKN0P,exchangerate:,inputter:A.DAVID,authorizer:A.DAVID,datetime:20180202,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 684462, 'MOSUNMOLA SHOMUYIWA', 'rafael.nadal@testing.com'),
(7, '1000797096', '{acctid:1000797096,stmtid:182961532662240.000001,currency:NGN,vdate:20180115,bdate:20180119,amt:-3000,description:,transref:AAACT180195KPHKN3V,exchangerate:,inputter:A.DAVID,authorizer:A.DAVID,datetime:20180202,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 684462, 'MOSUNMOLA SHOMUYIWA', 'rafael.nadal@testing.com'),
(8, '1000797096', '{acctid:1000797096,stmtid:182961532662240.020001,currency:NGN,vdate:20180115,bdate:20180119,amt:-200,description:,transref:AAACT180195KPHKN70,exchangerate:,inputter:A.DAVID,authorizer:A.DAVID,datetime:20180202,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 684462, 'MOSUNMOLA SHOMUYIWA', 'rafael.nadal@testing.com'),
(9, '1000797096', '{acctid:1000797096,stmtid:182967678762357.030001,currency:NGN,vdate:20180115,bdate:20180119,amt:3000,description:,transref:AAACT18019WX6GXFTN,exchangerate:,inputter:A.DAVID,authorizer:A.DAVID,datetime:20180202,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 684462, 'MOSUNMOLA SHOMUYIWA', 'rafael.nadal@testing.com'),
(10, '1000797096', '{acctid:1000797096,stmtid:182967678762357.030002,currency:NGN,vdate:20180115,bdate:20180119,amt:200,description:,transref:AAACT18019WX6GXFTN,exchangerate:,inputter:A.DAVID,authorizer:A.DAVID,datetime:20180202,companyname:GROOMING CENTRE,fcyamt:,fcyccy:}', 684462, 'MOSUNMOLA SHOMUYIWA', 'rafael.nadal@testing.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`act_id`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`registration_id`);

--
-- Indexes for table `statement`
--
ALTER TABLE `statement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `act_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `registration_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statement`
--
ALTER TABLE `statement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
