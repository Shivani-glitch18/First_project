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
-- Database: `cwms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_list`
--

CREATE TABLE `article_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `short_description` text NOT NULL,
  `content_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article_list`
--

INSERT INTO `article_list` (`id`, `title`, `short_description`, `content_path`, `status`, `delete_flag`, `user_id`, `date_created`, `date_updated`) VALUES
(1, 'Article No: 02', 'This article is written by XYZ. It is sample article.', 'pages/articles/sample_article_101.html', 1, 0, 1, '2022-02-28 14:08:59', '2022-09-13 23:11:01'),
(2, 'test', 'test', 'pages/articles/test.html', 0, 1, 1, '2022-02-28 14:22:44', '2022-02-28 14:23:31'),
(3, 'Article No: 01', 'This article tells us about the need for extracurricular activities in school life.', 'pages/articles/sample_article.html', 1, 0, 8, '2022-02-28 15:50:59', '2022-09-13 23:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `class_list`
--

CREATE TABLE `class_list` (
  `class I-V` varchar(500) NOT NULL,
  `class VI-X` varchar(500) NOT NULL,
  `class XI -XII` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`id`, `department_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(23, 2, 'tesrt', 'test', 0, 1, '2022-02-28 11:24:40', '2022-02-28 11:24:47'),
(30, 9, 'Play', 'Play School', 1, 0, '2022-09-14 23:45:33', NULL),
(31, 10, 'Primary School', 'Std. I-V : English, Hindi, Mathematics, Science, Social Science.', 1, 0, '2022-09-14 23:46:09', NULL),
(32, 11, 'Secondary School', 'Std. VI-X : English, Hindi, Mathematics, Science, Social Science, Sanskrit, Computer Science.', 1, 0, '2022-09-14 23:46:37', NULL),
(33, 14, 'Higher Secondary School', 'Commerce : Accountancy, Business Studies, Economics, English, Informatics Practices.', 1, 0, '2022-09-14 23:47:26', NULL),
(34, 13, 'Higher Secondary School PCB', 'PCB : Physics, Chemistry, Biology, English, Physical Education.', 1, 0, '2022-09-14 23:49:39', NULL),
(35, 12, 'Higher Secondary School PCM', 'PCM : Physics, Chemistry, Mathematics, English, Computer Science.', 1, 0, '2022-09-14 23:50:20', NULL),
(36, 15, 'Higher Secondary School Humanity', 'Humanity : Economics, History, Political Science, Geography, Sociology', 1, 0, '2022-09-14 23:51:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(2, 'College of Arts and Sciences', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas pretium quam nec dignissim vestibulum. Donec interdum velit vel erat sodales, ut volutpat risus molestie. Sed tincidunt condimentum neque sed dictum. Vivamus fermentum urna sed ligula tincidunt, vitae hendrerit quam blandit. Sed elementum sit amet nisl sit amet pellentesque. Cras molestie nisi dolor. Curabitur at venenatis lacus. Sed efficitur, libero vel varius auctor, nisl dui auctor urna, ac gravida nibh sem at odio.', 1, 1, '2022-02-28 10:48:12', '2022-09-14 16:30:03'),
(4, 'College of Business Management and Accountancy', 'Fusce laoreet arcu et sollicitudin varius. Vestibulum posuere venenatis ex, vel imperdiet metus luctus at. Aenean eros diam, suscipit vel consectetur sed, porta id tortor. Donec tempor porta mi, vehicula aliquam felis molestie sed. Quisque placerat, ligula ac lobortis interdum, odio odio mollis libero, quis dictum orci sem vehicula nibh. Aliquam tincidunt nunc eu vestibulum ultrices. Sed placerat arcu sed nunc imperdiet facilisis. Vestibulum placerat lectus urna, in finibus metus porttitor sit amet. Integer fringilla elit nunc, eu pulvinar sem aliquet in. Nullam rutrum enim orci, et elementum orci malesuada ac. Morbi tempor dapibus tincidunt. Sed ornare, velit nec ullamcorper bibendum, ipsum urna finibus tellus, sed fringilla mi nunc eu tortor. Integer dapibus arcu quis aliquet pulvinar. Nunc finibus risus diam, eget malesuada est efficitur eu. Curabitur vel mauris faucibus, vestibulum dolor sed, cursus orci.', 1, 1, '2022-02-28 10:51:17', '2022-09-14 23:04:23'),
(7, 'Sample', 'Test', 1, 1, '2022-02-28 10:54:28', '2022-02-28 10:55:14'),
(9, 'LKG-UKG', 'This section contains play, nursery school', 1, 0, '2022-09-14 23:39:58', '2022-09-14 23:40:21'),
(10, 'Std I-V', 'This section contains primary school', 1, 0, '2022-09-14 23:41:00', '2022-09-14 23:41:45'),
(11, 'Std VI-X', 'This section contains secondary school', 1, 0, '2022-09-14 23:41:34', NULL),
(12, 'Std XI-XII ( PCM )', 'This section contains Higher Secondary School . It is for the student pursuing PCM', 1, 0, '2022-09-14 23:42:56', NULL),
(13, 'Std XI-XII ( PCB )', 'This section contains higher secondary school for PCB Students', 1, 0, '2022-09-14 23:43:48', NULL),
(14, 'Std XI-XII ( Commerce )', 'This section contains higher secondary school for Commerce Students', 1, 0, '2022-09-14 23:44:15', NULL),
(15, 'Std XI-XII ( Humanity )', 'This section contains higher secondary school for Humanity Students', 1, 0, '2022-09-14 23:44:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Kendriya Vidyalaya'),
(6, 'short_name', 'KV-PHP'),
(11, 'logo', 'uploads/logo-1663092751.jpg?v=1663092751'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1646012157.jpg?v=1646012159'),
(20, 'school_address', 'BN street, National Highway 52A, Itanagar, Arunachal Pradesh 791111'),
(21, 'school_tel_no', ' 0360 220 3509'),
(22, 'school_mobile', '+91 123456789'),
(23, 'school_email', 'ppl.itanagarno2@kvs.gov.in'),
(24, 'map_coords', '27.074847072280445, 93.59507152623104');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1646034408', NULL, 1, '2021-01-20 14:02:37', '2022-02-28 15:46:48'),
(7, 'Bamin', '', 'bamin', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatars/7.png?v=1646034368', NULL, 1, '2022-02-28 15:46:08', '2022-09-13 23:34:06'),
(8, 'Shivani', 'Agrawal', 'shivani', '0c4635c5af0f173c26b0d85b6c9b398b', NULL, NULL, 1, '2022-02-28 15:49:53', '2022-09-13 23:33:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_list`
--
ALTER TABLE `article_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_list`
--
ALTER TABLE `article_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_list`
--
ALTER TABLE `article_list`
  ADD CONSTRAINT `article_user_id_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `course_list`
--
ALTER TABLE `course_list`
  ADD CONSTRAINT `course_department_id_FK` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
