-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2022 at 06:14 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frontdesk_users`
--

CREATE TABLE `tbl_frontdesk_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frontdesk_users`
--

INSERT INTO `tbl_frontdesk_users` (`id`, `username`, `pwd`, `bdate`) VALUES
(1, 'tousif', '*1D72DAFB953E3606E84902DB8C521C98EC46266E', '2016-08-22 16:20:12'),
(2, 'mark', '*3C792B587BE4C8A08A067FED1D36302941BC7633', '2016-08-22 16:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `date`, `reason`, `bdate`) VALUES
(5, '2022-03-25', 'Assembly Program', '2022-03-13 12:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservations`
--

CREATE TABLE `tbl_reservations` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `ucount` int(10) NOT NULL,
  `rdate` varchar(100) NOT NULL,
  `Event_Name` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reservations`
--

INSERT INTO `tbl_reservations` (`id`, `uid`, `ucount`, `rdate`, `Event_Name`, `status`, `comments`, `bdate`) VALUES
(3, 11, 2, '2016-08-10 20:10', 'asdasd', 'APPROVED', '', '2016-08-22 01:09:53'),
(5, 13, 12, '2016-08-02 10:10', 'qweqweqwe', 'APPROVED', '', '2016-08-25 18:45:04'),
(7, 14, 21, '2022-03-29 02:09', 'adada', 'PENDING', '', '2022-03-13 02:46:49'),
(8, 17, 25, '2022-03-18 02:00', 'Program', 'PENDING', '', '2022-03-13 12:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `pwd`, `address`, `phone`, `email`, `type`, `status`, `bdate`) VALUES
(16, 'Administrator', 'admin', 'Saint Paul University Students', '09207493641', 'spus@spus.edu.ph', 'admin', 'active', '2022-03-13 12:03:25'),
(17, 'Junrel', 'H8UOY3MQ', 'Surigao State College of Technology', '09354597695', 'jednalig@ssct.edu.ph', 'student', 'active', '2022-03-13 12:04:15'),
(18, 'Teacher', 'KQADWNVW', 'Saint Paul University', '09876543211', 'teacher@spus.edu.ph', 'teacher', 'active', '2022-03-13 12:16:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
