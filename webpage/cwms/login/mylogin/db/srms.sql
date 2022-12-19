-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 01:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'developer', '4c56ba3f50590bbc84ff7340cefe77b6', '2022-09-15 15:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Fifth', 5, 'A', '2022-09-13 16:22:03', '2022-09-13 16:22:03'),
(2, 'Three', 3, 'A', '2022-09-13 16:22:03', '2022-09-13 16:28:09'),
(3, 'Nine', 9, 'A', '2022-09-13 16:33:01', '2022-09-13 16:33:01'),
(4, 'Nine', 9, 'B', '2022-09-13 16:33:01', '2022-09-13 16:35:46'),
(5, 'Ten', 10, 'A', '2022-09-13 16:33:13', '2022-09-13 16:33:13'),
(6, 'Ten', 10, 'B', '2022-09-13 16:33:13', '2022-09-13 16:35:27'),
(7, 'Eight', 8, 'A', '2022-09-13 16:33:26', '2022-09-13 16:33:26'),
(8, 'Eight', 8, 'B', '2022-09-13 16:33:26', '2022-09-13 16:36:00'),
(9, 'Fifth', 5, 'B', '2022-09-13 16:33:53', '2022-09-13 16:33:53'),
(10, 'Sixth', 6, 'A', '2022-09-13 16:33:53', '2022-09-13 16:34:20'),
(11, 'Four', 4, 'A', '2022-09-14 09:43:16', '2022-09-14 09:43:16'),
(13, 'Two', 2, 'A', '2022-09-14 15:52:29', '2022-09-14 15:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 1, 2, 2, 67, '2022-09-13 16:52:13', NULL),
(2, 1, 2, 1, 90, '2022-09-13 16:52:13', NULL),
(3, 4, 7, 11, 89, '2022-09-14 16:10:06', NULL),
(4, 4, 7, 1, 90, '2022-09-14 16:10:06', NULL),
(5, 4, 7, 3, 100, '2022-09-14 16:10:06', NULL),
(6, 5, 7, 11, 78, '2022-09-14 16:10:23', NULL),
(7, 5, 7, 1, 34, '2022-09-14 16:10:23', NULL),
(8, 5, 7, 3, 99, '2022-09-14 16:10:23', NULL),
(9, 3, 3, 12, 98, '2022-09-14 16:12:16', NULL),
(10, 3, 3, 2, 96, '2022-09-14 16:12:16', NULL),
(11, 3, 3, 1, 87, '2022-09-14 16:12:16', NULL),
(12, 3, 3, 3, 80, '2022-09-14 16:12:16', NULL),
(13, 6, 1, 12, 89, '2022-09-14 17:29:39', NULL),
(14, 6, 1, 2, 78, '2022-09-14 17:29:39', NULL),
(15, 6, 1, 1, 23, '2022-09-14 17:29:39', NULL),
(16, 6, 1, 3, 38, '2022-09-14 17:29:39', NULL),
(17, 6, 1, 12, 89, '2022-09-14 17:30:19', NULL),
(18, 6, 1, 2, 78, '2022-09-14 17:30:19', NULL),
(19, 6, 1, 1, 23, '2022-09-14 17:30:19', NULL),
(20, 6, 1, 3, 38, '2022-09-14 17:30:19', NULL),
(21, 2, 4, 11, 78, '2022-09-14 17:30:28', NULL),
(22, 2, 4, 11, 78, '2022-09-14 17:31:36', NULL),
(23, 9, 10, 11, 67, '2022-09-14 17:31:48', NULL),
(24, 8, 13, 12, 58, '2022-09-14 17:32:01', NULL),
(25, 7, 11, 4, 78, '2022-09-14 17:32:11', NULL),
(26, 7, 11, 3, 90, '2022-09-14 17:32:11', NULL),
(27, 7, 11, 4, 78, '2022-09-14 17:32:30', NULL),
(28, 7, 11, 3, 90, '2022-09-14 17:32:30', NULL),
(29, 7, 11, 4, 78, '2022-09-14 17:32:45', NULL),
(30, 7, 11, 3, 90, '2022-09-14 17:32:45', NULL),
(31, 10, 11, 4, 83, '2022-09-14 17:33:45', NULL),
(32, 10, 11, 3, 75, '2022-09-14 17:33:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Rose Marry', '122', 'rosemarry7@gmail.com', 'Female', '2010-03-04', 2, '2022-09-13 16:39:01', NULL, 1),
(2, 'Reema', '123', 'reema234@gmail.com', 'Female', '2007-12-05', 4, '2022-09-14 09:48:35', NULL, 1),
(3, 'Tracy Whitney', '124', 'tracyywhite@gmail.com', 'Female', '2008-05-07', 3, '2022-09-14 16:08:17', NULL, 1),
(4, 'Charles Delve', '145', 'charless66delve@gmail.com', 'Male', '2009-12-06', 7, '2022-09-14 16:08:58', NULL, 1),
(5, 'Ronnie Splain', '134', 'ronniesplain098@gmail.com', 'Male', '2010-05-23', 7, '2022-09-14 16:09:45', NULL, 1),
(6, 'MIgra Oswal', '145', 'migraos@gmail.com', 'Male', '2014-03-09', 1, '2022-09-14 17:22:41', NULL, 1),
(7, 'Hisel', '165', 'hisel89@gmail.com', 'Male', '2016-09-25', 11, '2022-09-14 17:23:58', NULL, 1),
(8, 'Karie Steve', '170', 'stevekarie@gmail.com', 'Male', '2017-07-14', 13, '2022-09-14 17:24:57', NULL, 1),
(9, 'Rohu Jess', '186', 'rohujesss02@gmail.com', 'Male', '2009-12-31', 10, '2022-09-14 17:26:00', NULL, 1),
(10, 'Yohan Dasanan', '189', 'yohandess3@gmail.com', 'Male', '2016-04-09', 11, '2022-09-14 17:26:56', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 2, 1, 1, '2022-09-13 16:51:50', '2022-09-13 16:51:50'),
(2, 2, 2, 1, '2022-09-13 16:51:56', '2022-09-13 16:51:56'),
(3, 3, 3, 1, '2022-09-14 16:06:12', '2022-09-14 16:06:12'),
(4, 3, 1, 1, '2022-09-14 16:06:19', '2022-09-14 16:06:19'),
(5, 3, 2, 1, '2022-09-14 16:06:26', '2022-09-14 16:06:26'),
(7, 3, 12, 1, '2022-09-14 16:06:45', '2022-09-14 16:06:45'),
(8, 7, 3, 1, '2022-09-14 16:06:55', '2022-09-14 16:06:55'),
(9, 7, 1, 1, '2022-09-14 16:07:03', '2022-09-14 16:07:03'),
(10, 7, 11, 1, '2022-09-14 16:07:10', '2022-09-14 16:07:10'),
(11, 1, 1, 1, '2022-09-14 17:27:31', '2022-09-14 17:27:31'),
(12, 1, 2, 1, '2022-09-14 17:27:37', '2022-09-14 17:27:37'),
(13, 1, 3, 1, '2022-09-14 17:27:43', '2022-09-14 17:27:43'),
(14, 3, 13, 1, '2022-09-14 17:27:51', '2022-09-14 17:27:51'),
(15, 1, 12, 1, '2022-09-14 17:27:57', '2022-09-14 17:27:57'),
(16, 11, 3, 1, '2022-09-14 17:28:05', '2022-09-14 17:28:05'),
(17, 13, 12, 1, '2022-09-14 17:28:10', '2022-09-14 17:28:10'),
(18, 11, 4, 1, '2022-09-14 17:28:17', '2022-09-14 17:28:17'),
(19, 10, 11, 1, '2022-09-14 17:28:23', '2022-09-14 17:28:23'),
(20, 5, 3, 1, '2022-09-14 17:29:20', '2022-09-14 17:29:20'),
(21, 4, 11, 1, '2022-09-14 17:30:10', '2022-09-14 17:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Science', '301', '2022-09-13 16:43:09', '2022-09-13 16:43:09'),
(2, 'Maths', '302', '2022-09-13 16:43:09', '2022-09-13 16:43:37'),
(3, 'Social Science', '901', '2022-09-14 15:55:55', '2022-09-14 15:57:11'),
(4, 'Drawing', '908', '2022-09-14 15:55:55', '2022-09-14 15:57:33'),
(11, 'English', '015', '2022-09-14 16:00:23', '2022-09-14 16:00:23'),
(12, 'Hindi', '204', '2022-09-14 16:02:17', '2022-09-14 16:02:17'),
(13, 'Music', '011', '2022-09-14 16:05:48', '2022-09-14 16:05:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
