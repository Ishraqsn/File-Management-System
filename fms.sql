-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2018 at 08:02 AM
-- Server version: 5.6.26
-- PHP Version: 7.2.1

 use database_fms.sql SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_un` text NOT NULL,
  `admin_pw` text NOT NULL,
  `emp_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_un`, `admin_pw`, `emp_pic`) VALUES
(1, 'admin', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_answer`
--

CREATE TABLE `tbl_answer` (
  `answer_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `answer_query_id` int(11) NOT NULL,
  `answer_data` varchar(100) NOT NULL,
  `answer_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_answer`
--

INSERT INTO `tbl_answer` (`answer_id`, `emp_id`, `answer_query_id`, `answer_data`, `answer_date`) VALUES
(1, 8, 11, 'I would like to say something!! ', '2017-07-24 21:02:23'),
(2, 15, 11, 'I have got something!!', '2017-07-24 21:03:45'),
(3, 15, 11, 'What up??', '2017-07-24 21:11:54'),
(4, 15, 11, 'OK....go ahead!!', '2017-07-24 21:18:13'),
(5, 15, 6, 'Why do you post the demo query!!>???? ', '2017-07-24 21:22:16'),
(6, 8, 6, 'Because I post demo query!!', '2017-07-24 21:24:17'),
(7, 8, 10, 'YO!!', '2017-07-25 18:05:44'),
(8, 8, 11, 'jhfufv', '2017-07-26 15:34:06'),
(9, 8, 6, 'gyjg', '2017-07-27 14:34:48'),
(10, 8, 6, 'sdkjbgdfk', '2017-08-06 17:45:34'),
(11, 8, 6, 'sadkug', '2017-08-10 12:11:22'),
(12, 8, 12, 'Kindly reply!!', '2017-08-10 12:12:03'),
(13, 0, 12, 'Its Admin!!', '2017-08-10 12:12:32'),
(14, 0, 12, 'Djgj', '2017-08-10 15:21:02'),
(15, 0, 11, 'dgdhgf', '2017-08-31 10:01:28'),
(16, 0, 13, 'csgdf gkjbdfk', '2017-09-17 06:53:26'),
(17, 0, 13, 'cxdvd', '2017-09-17 06:53:32'),
(18, 8, 9, 'Fine, Thank You!!', '2017-09-19 17:21:01'),
(19, 0, 13, 'Reply\r\n', '2018-01-28 15:08:27'),
(20, 0, 14, 'sadfsdfds', '2018-01-28 15:09:12'),
(21, 8, 15, 'Reply to Demo query 1', '2018-03-19 12:25:41'),
(22, 15, 15, 'another reply to demo query1', '2018-03-19 12:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complete`
--

CREATE TABLE `tbl_complete` (
  `file_id` int(11) NOT NULL,
  `file_from` varchar(60) NOT NULL,
  `file_to` varchar(60) NOT NULL,
  `file_follow` varchar(20) NOT NULL,
  `file_remark` varchar(100) NOT NULL,
  `file_purpose` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_complete`
--

INSERT INTO `tbl_complete` (`file_id`, `file_from`, `file_to`, `file_follow`, `file_remark`, `file_purpose`) VALUES
(11, 'admin', 'admin', 'Green Line', 'Review ASAP', 'Review'),
(12, '15', '15', 'Green Line', 'Aasfdfg', 'asdas'),
(34, 'admin', 'admin', 'Normal line', 'ASAP', 'Review'),
(87, '15', '15', 'Normal line', 'Asdsa', 'rytu'),
(198, 'admin', 'admin', 'Green Line', 'ASAP', 'Review'),
(288, 'admin', 'admin', 'Green Line', 'Review the file', 'Review'),
(999, 'admin', 'admin', 'Green Line', 'asf', 'Review'),
(2132, 'admin', 'admin', 'Normal line', 'dsdv', 'Review'),
(7765, '15', '15', 'Normal line', 'asda', 'as'),
(23545, 'admin', 'admin', 'Green Line', 'Review the file ASAP', 'Review'),
(31432, 'sdvds', 'sfsdf', 'sdd', 'sdvdcv', 'sdvdv');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp`
--

CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL,
  `emp_name` text NOT NULL,
  `emp_email` text NOT NULL,
  `emp_password` text NOT NULL,
  `emp_department` text NOT NULL,
  `emp_designation` text NOT NULL,
  `emp_mobile` int(10) NOT NULL,
  `emp_pic` varchar(100) NOT NULL DEFAULT 'images/dp.png',
  `doj` text NOT NULL,
  `emp_stack` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_emp`
--

INSERT INTO `tbl_emp` (`emp_id`, `emp_name`, `emp_email`, `emp_password`, `emp_department`, `emp_designation`, `emp_mobile`, `emp_pic`, `doj`, `emp_stack`) VALUES
(1, 'Demo', 'abc@asd', 'jygjyg', 'asd', 'asf', 1234, 'images/dp.png', '2017-07-15', ''),
(8, 'Atul', 'atul1@gmail.com', '12345', 'IT', 'Developer', 0, 'images/uploads/team2.jpg', '2017-07-16', ''),
(9, 'sda', 'sdhv@efg', '34', 'aljd', 'jadb', 0, 'images/dp.png', '2017-07-17', ''),
(15, 'Gauri Shukla', 'mailbox.gauri@gmail.com', '12345', 'IT', 'Developer', 0, 'images/uploads/mailbox.gauri@gmail.comteam.jpg', '2017-07-21', ''),
(17, 'Atul Gupta', 'mailme.myplace@gmail.com', '123', 'IT', 'Developer', 0, 'images/uploads/mailme.myplace@gmail.com184-freepik.jpg', '2017-07-26', ''),
(18, 'Atul', 'developer.atul2229@gmail.com', '12345', 'IT', 'Developer', 0, 'images/uploads/developer.atul2229@gmail.com184-freepik.jpg', '2017-07-26', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pending`
--

CREATE TABLE `tbl_pending` (
  `file_id` int(11) NOT NULL,
  `file_from` varchar(60) NOT NULL,
  `file_to` varchar(60) NOT NULL,
  `file_follow` varchar(20) NOT NULL,
  `file_remark` varchar(100) NOT NULL,
  `file_purpose` varchar(100) NOT NULL,
  `file_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pending`
--

INSERT INTO `tbl_pending` (`file_id`, `file_from`, `file_to`, `file_follow`, `file_remark`, `file_purpose`, `file_date`) VALUES
(4536, 'admin', '8', 'Normal line', 'ASAP!!', 'Review', '2017-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_processing`
--

CREATE TABLE `tbl_processing` (
  `file_id` int(11) NOT NULL,
  `file_from` varchar(60) NOT NULL,
  `file_to` varchar(60) NOT NULL,
  `file_follow` varchar(20) NOT NULL,
  `file_remark` varchar(100) NOT NULL,
  `file_purpose` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_processing`
--

INSERT INTO `tbl_processing` (`file_id`, `file_from`, `file_to`, `file_follow`, `file_remark`, `file_purpose`) VALUES
(0, 'admin', '8', 'Green Line', 'ASAP', 'Review'),
(45, 'admin', '8', 'normal', 'asfsdf', 'safas'),
(1125, 'admin', '8', 'normal', 'ddasd', 'asfsd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_query`
--

CREATE TABLE `tbl_query` (
  `query_id` int(11) NOT NULL,
  `query_title` varchar(100) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `query_query` varchar(300) NOT NULL,
  `query_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_query`
--

INSERT INTO `tbl_query` (`query_id`, `query_title`, `emp_id`, `query_query`, `query_date`) VALUES
(6, 'Demo3', 8, 'Demo Query3!!', '2017-07-21 19:13:10'),
(8, 'File initiated 3 days ago!!', 15, 'What about the file I initiated to Atul 3 days ago??', '2017-07-21 22:12:50'),
(9, 'Hello!!', 15, 'How r you??', '2017-07-22 17:07:01'),
(10, 'Hello Again!!', 15, 'Sup??', '2017-07-22 17:07:18'),
(11, 'NOthing to say!!', 15, '______', '2017-07-22 17:07:41'),
(12, 'Demo5', 8, 'Who is this??', '2017-08-10 12:11:45'),
(13, 'Demo7', 0, 'What;s up??', '2017-08-10 15:21:24'),
(14, 'Demo9', 0, 'sdkjfbdskjf', '2018-01-28 15:09:03'),
(15, 'Demo Query title1', 8, 'Demo Query1', '2018-03-19 12:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_track`
--

CREATE TABLE `tbl_track` (
  `track_file_id` int(11) NOT NULL,
  `track_ini` varchar(20) NOT NULL,
  `track_to` varchar(20) NOT NULL,
  `track_forward1` varchar(20) DEFAULT NULL,
  `track_forward2` int(11) DEFAULT NULL,
  `track_date` varchar(20) NOT NULL,
  `track_date_process` varchar(20) NOT NULL,
  `track_date_forward1` varchar(20) NOT NULL,
  `track_date_forward2` varchar(20) NOT NULL,
  `track_date_submit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_track`
--

INSERT INTO `tbl_track` (`track_file_id`, `track_ini`, `track_to`, `track_forward1`, `track_forward2`, `track_date`, `track_date_process`, `track_date_forward1`, `track_date_forward2`, `track_date_submit`) VALUES
(0, 'admin', '8', NULL, NULL, '2017-09-19', '', '', '', ''),
(11, 'admin', '8', NULL, NULL, '2017-08-10', '', '', '', '2017-08-10'),
(12, '15', '8', NULL, NULL, '2017-07-26', '', '', '', ''),
(34, 'admin', '8', NULL, NULL, '2017-08-10', '', '', '', '2017-08-10'),
(288, 'admin', '8', NULL, NULL, '2018-03-19', '', '', '', '2018-03-19'),
(4536, 'admin', '8', NULL, NULL, '2017-09-19', '', '', '', ''),
(23545, 'admin', '15', NULL, NULL, '2017-07-26', '', '', '', '2017-07-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_answer`
--
ALTER TABLE `tbl_answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `tbl_complete`
--
ALTER TABLE `tbl_complete`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_emp`
--
ALTER TABLE `tbl_emp`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tbl_pending`
--
ALTER TABLE `tbl_pending`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_processing`
--
ALTER TABLE `tbl_processing`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_query`
--
ALTER TABLE `tbl_query`
  ADD PRIMARY KEY (`query_id`);

--
-- Indexes for table `tbl_track`
--
ALTER TABLE `tbl_track`
  ADD PRIMARY KEY (`track_file_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_answer`
--
ALTER TABLE `tbl_answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_emp`
--
ALTER TABLE `tbl_emp`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_query`
--
ALTER TABLE `tbl_query`
  MODIFY `query_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
