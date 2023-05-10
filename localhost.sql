-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2019 at 06:00 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `marc`
--
CREATE DATABASE `marc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `marc`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`admid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admid`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'rocky');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE IF NOT EXISTS `tbl_attendance` (
  `attd_id` int(11) NOT NULL AUTO_INCREMENT,
  `emid` int(11) NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'absent',
  `date` varchar(60) NOT NULL,
  `time` varchar(60) NOT NULL,
  PRIMARY KEY (`emid`,`date`),
  KEY `attd_id` (`attd_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=174 ;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attd_id`, `emid`, `status`, `date`, `time`) VALUES
(1, 48, 'present', '04-08-2019', '08:08:32'),
(2, 49, 'absent', '04-08-2019', '08:08:32'),
(3, 53, 'present', '04-08-2019', '08:08:32'),
(4, 44, 'present', '04-08-2019', '08:12:04'),
(5, 47, 'absent', '04-08-2019', '08:12:04'),
(6, 46, 'present', '04-08-2019', '08:12:04'),
(7, 56, 'absent', '04-08-2019', '07:31:48'),
(8, 50, 'absent', '04-08-2019', '07:31:59'),
(9, 51, 'absent', '04-08-2019', '07:31:59'),
(10, 54, 'absent', '04-08-2019', '07:31:59'),
(11, 52, 'absent', '04-08-2019', '07:32:21'),
(12, 55, 'absent', '04-08-2019', '07:32:21'),
(13, 52, 'present', '05-08-2019', '04:20:25'),
(14, 55, 'absent', '05-08-2019', '04:20:25'),
(15, 56, 'present', '05-08-2019', '04:20:41'),
(16, 50, 'absent', '05-08-2019', '04:20:44'),
(17, 51, 'present', '05-08-2019', '04:20:44'),
(18, 54, 'present', '05-08-2019', '04:20:44'),
(19, 44, 'absent', '05-08-2019', '04:21:01'),
(20, 47, 'absent', '05-08-2019', '04:21:01'),
(21, 46, 'present', '05-08-2019', '04:21:01'),
(22, 48, 'absent', '05-08-2019', '11:33:48'),
(23, 49, 'absent', '05-08-2019', '11:33:48'),
(24, 53, 'absent', '05-08-2019', '11:33:48'),
(25, 48, 'absent', '06-08-2019', '01:01:06'),
(26, 49, 'present', '06-08-2019', '01:01:06'),
(27, 53, 'absent', '06-08-2019', '01:01:06'),
(28, 44, 'present', '06-08-2019', '01:01:35'),
(29, 56, 'present', '06-08-2019', '01:01:49'),
(30, 58, 'absent', '06-08-2019', '03:59:31'),
(31, 57, 'absent', '06-08-2019', '03:59:41'),
(32, 48, 'present', '07-08-2019', '02:57:03'),
(33, 49, 'present', '07-08-2019', '02:57:03'),
(34, 53, 'present', '07-08-2019', '02:57:03'),
(35, 44, 'absent', '07-08-2019', '02:57:06'),
(36, 57, 'present', '07-08-2019', '02:57:09'),
(37, 56, 'absent', '07-08-2019', '02:57:12'),
(38, 58, 'present', '07-08-2019', '02:57:15'),
(39, 48, 'absent', '08-08-2019', '12:46:49'),
(40, 49, 'present', '08-08-2019', '12:46:49'),
(41, 53, 'present', '08-08-2019', '12:46:49'),
(42, 44, 'present', '08-08-2019', '12:46:52'),
(43, 57, 'absent', '08-08-2019', '12:46:55'),
(44, 56, 'present', '08-08-2019', '12:46:58'),
(45, 58, 'absent', '08-08-2019', '12:47:02'),
(46, 48, 'present', '09-08-2019', '12:57:15'),
(47, 49, 'present', '09-08-2019', '12:57:15'),
(48, 53, 'absent', '09-08-2019', '12:57:15'),
(49, 44, 'present', '09-08-2019', '12:57:19'),
(50, 57, 'present', '09-08-2019', '12:57:22'),
(51, 56, 'present', '09-08-2019', '12:57:25'),
(52, 58, 'absent', '09-08-2019', '12:57:29'),
(53, 48, 'absent', '10-08-2019', '07:57:43'),
(54, 49, 'present', '10-08-2019', '07:57:43'),
(55, 53, 'present', '10-08-2019', '07:57:43'),
(56, 44, 'present', '10-08-2019', '07:57:45'),
(57, 57, 'present', '10-08-2019', '07:57:49'),
(58, 56, 'present', '10-08-2019', '07:57:52'),
(59, 58, 'absent', '10-08-2019', '07:57:55'),
(60, 59, 'present', '10-08-2019', '12:14:43'),
(61, 60, 'absent', '10-08-2019', '12:14:43'),
(62, 64, 'absent', '10-08-2019', '04:22:34'),
(63, 63, 'absent', '10-08-2019', '04:22:34'),
(64, 48, 'present', '11-08-2019', '11:41:16'),
(65, 49, 'present', '11-08-2019', '11:41:16'),
(66, 61, 'present', '11-08-2019', '11:41:19'),
(67, 62, 'present', '11-08-2019', '11:41:21'),
(68, 57, 'present', '11-08-2019', '11:41:21'),
(69, 64, 'present', '11-08-2019', '11:41:25'),
(70, 63, 'present', '11-08-2019', '11:41:25'),
(71, 59, 'present', '11-08-2019', '11:41:28'),
(72, 60, 'present', '11-08-2019', '11:41:28'),
(73, 48, 'present', '12-08-2019', '09:43:46'),
(74, 49, 'present', '12-08-2019', '09:43:46'),
(75, 61, 'present', '12-08-2019', '09:43:50'),
(76, 62, 'present', '12-08-2019', '09:43:53'),
(77, 57, 'present', '12-08-2019', '09:43:53'),
(78, 64, 'present', '12-08-2019', '09:43:59'),
(79, 63, 'present', '12-08-2019', '09:43:59'),
(80, 59, 'present', '12-08-2019', '09:44:03'),
(81, 60, 'present', '12-08-2019', '09:44:03'),
(82, 48, 'present', '13-08-2019', '10:04:05'),
(83, 49, 'present', '13-08-2019', '10:04:05'),
(84, 61, 'present', '13-08-2019', '10:04:08'),
(85, 62, 'present', '13-08-2019', '10:04:10'),
(86, 57, 'present', '13-08-2019', '10:04:10'),
(87, 64, 'present', '13-08-2019', '10:04:13'),
(88, 63, 'present', '13-08-2019', '10:04:13'),
(89, 59, 'present', '13-08-2019', '10:04:16'),
(90, 60, 'present', '13-08-2019', '10:04:16'),
(91, 48, 'absent', '29-08-2019', '11:57:39'),
(92, 49, 'present', '29-08-2019', '11:57:39'),
(93, 61, 'present', '29-08-2019', '11:57:42'),
(94, 62, 'present', '29-08-2019', '11:57:46'),
(95, 57, 'present', '29-08-2019', '11:57:46'),
(96, 64, 'present', '29-08-2019', '11:57:48'),
(97, 63, 'present', '29-08-2019', '11:57:48'),
(98, 59, 'present', '29-08-2019', '11:57:51'),
(99, 60, 'present', '29-08-2019', '11:57:51'),
(100, 48, 'absent', '06-09-2019', '03:35:35'),
(101, 49, 'present', '06-09-2019', '03:35:35'),
(102, 61, 'present', '06-09-2019', '03:35:38'),
(103, 62, 'present', '06-09-2019', '03:35:41'),
(104, 57, 'present', '06-09-2019', '03:35:41'),
(105, 64, 'present', '06-09-2019', '03:35:44'),
(106, 63, 'present', '06-09-2019', '03:35:44'),
(107, 59, 'absent', '06-09-2019', '03:35:46'),
(108, 60, 'present', '06-09-2019', '03:35:46'),
(109, 48, 'present', '09-09-2019', '01:43:42'),
(110, 49, 'present', '09-09-2019', '01:43:42'),
(111, 61, 'absent', '09-09-2019', '01:43:45'),
(112, 62, 'present', '09-09-2019', '01:43:48'),
(113, 57, 'present', '09-09-2019', '01:43:48'),
(114, 64, 'present', '09-09-2019', '01:43:50'),
(115, 63, 'present', '09-09-2019', '01:43:50'),
(116, 59, 'absent', '09-09-2019', '01:43:53'),
(117, 60, 'present', '09-09-2019', '01:43:53'),
(118, 48, 'present', '13-09-2019', '12:52:38'),
(119, 49, 'absent', '13-09-2019', '12:52:38'),
(120, 61, 'present', '13-09-2019', '12:52:41'),
(121, 62, 'absent', '13-09-2019', '12:52:45'),
(122, 57, 'present', '13-09-2019', '12:52:45'),
(123, 64, 'absent', '13-09-2019', '12:52:50'),
(124, 63, 'present', '13-09-2019', '12:52:50'),
(125, 59, 'present', '13-09-2019', '12:52:53'),
(126, 60, 'absent', '13-09-2019', '12:52:53'),
(127, 48, 'present', '18-09-2019', '11:43:16'),
(128, 49, 'present', '18-09-2019', '11:43:16'),
(129, 61, 'absent', '18-09-2019', '11:43:19'),
(130, 62, 'present', '18-09-2019', '11:43:22'),
(131, 57, 'present', '18-09-2019', '11:43:22'),
(132, 64, 'present', '18-09-2019', '11:43:27'),
(133, 63, 'present', '18-09-2019', '11:43:27'),
(134, 59, 'present', '18-09-2019', '11:43:30'),
(135, 60, 'present', '18-09-2019', '11:43:30'),
(136, 48, 'present', '19-09-2019', '09:12:48'),
(137, 49, 'present', '19-09-2019', '09:12:48'),
(138, 61, 'absent', '19-09-2019', '09:12:51'),
(139, 62, 'absent', '19-09-2019', '09:12:55'),
(140, 57, 'present', '19-09-2019', '09:12:55'),
(141, 64, 'present', '19-09-2019', '09:12:57'),
(142, 63, 'present', '19-09-2019', '09:12:57'),
(143, 59, 'present', '19-09-2019', '09:13:01'),
(144, 60, 'present', '19-09-2019', '09:13:01'),
(145, 48, 'present', '22-09-2019', '04:51:27'),
(146, 49, 'present', '22-09-2019', '04:51:27'),
(147, 61, 'present', '22-09-2019', '04:51:36'),
(148, 62, 'present', '22-09-2019', '04:51:41'),
(149, 57, 'present', '22-09-2019', '04:51:41'),
(150, 64, 'present', '22-09-2019', '04:51:45'),
(151, 63, 'present', '22-09-2019', '04:51:45'),
(152, 59, 'present', '22-09-2019', '04:51:49'),
(153, 60, 'present', '22-09-2019', '04:51:49'),
(154, 48, 'present', '28-09-2019', '01:56:30'),
(155, 49, 'present', '28-09-2019', '01:56:30'),
(156, 67, 'present', '28-09-2019', '01:56:33'),
(157, 66, 'present', '28-09-2019', '01:56:33'),
(158, 61, 'present', '28-09-2019', '01:56:33'),
(159, 62, 'present', '28-09-2019', '01:56:36'),
(160, 57, 'present', '28-09-2019', '01:56:36'),
(161, 64, 'present', '28-09-2019', '01:56:40'),
(162, 63, 'present', '28-09-2019', '01:56:40'),
(163, 60, 'present', '28-09-2019', '01:56:44'),
(164, 48, 'present', '06-10-2019', '12:55:07'),
(165, 49, 'present', '06-10-2019', '12:55:07'),
(166, 67, 'present', '06-10-2019', '12:55:10'),
(167, 66, 'present', '06-10-2019', '12:55:10'),
(168, 61, 'present', '06-10-2019', '12:55:10'),
(169, 62, 'present', '06-10-2019', '12:55:11'),
(170, 57, 'present', '06-10-2019', '12:55:11'),
(171, 64, 'present', '06-10-2019', '12:55:15'),
(172, 63, 'present', '06-10-2019', '12:55:15'),
(173, 60, 'present', '06-10-2019', '12:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dpt`
--

CREATE TABLE IF NOT EXISTS `tbl_dpt` (
  `dptid` int(11) NOT NULL AUTO_INCREMENT,
  `Department` varchar(60) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`dptid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `tbl_dpt`
--

INSERT INTO `tbl_dpt` (`dptid`, `Department`, `date`) VALUES
(33, 'Account', '2019-08-03 15:57:11'),
(31, 'Marketing', '2019-08-02 20:41:43'),
(36, 'Inventry', '2019-08-04 22:59:09'),
(28, 'HR', '2019-08-02 20:41:27'),
(37, 'Workshop', '2019-08-04 22:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_empy`
--

CREATE TABLE IF NOT EXISTS `tbl_empy` (
  `emid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dptid` varchar(30) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  PRIMARY KEY (`emid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `tbl_empy`
--

INSERT INTO `tbl_empy` (`emid`, `name`, `fname`, `gender`, `dob`, `email`, `mobile`, `password`, `address`, `dptid`, `photo`, `date`) VALUES
(64, ' rohan', ' ram', 'male', '2019-08-13', 'rohan@gmail.com', '6398912034', '123456', 'Agra', '28', 'Mentor.jpg', '2019-08-10'),
(48, 'rocky maurya', 's.m', 'male', '2019-08-14', 'r@gmail.com', '8528930513', '123456', 'saidaraja', '33', 'user48.png', '2019-08-03'),
(49, 'ram', 'raman', 'male', '2019-08-07', 'ram@gmail.com', '8528930513', '258963', 'Agra rambag', '33', 'user32.png', '2019-08-03'),
(50, 'rampoojan', 'krishna', 'male', '2019-08-14', 'rp@gmail.com', '8956321478', '147852', 'vfdv', '29', 'Usericon.jpg', '2019-08-03'),
(51, 'ronny', 'homan', 'male', '2019-08-14', 'ronny@gmail.com', '589653214', '45682', 'chandauli', '29', 'Usericon.jpg', '2019-08-03'),
(62, ' ronny maurya', 'sarojmaurya', 'male', '2019-02-13', 'ronny@gmail.com', '6398912034', 'ronny', 'chandauli', '36', 'Mentor.jpg', '2019-08-10'),
(63, ' rohan', ' ram', 'male', '2019-08-13', 'rohan@gmail.com', '6398912034', '123456', 'Agra', '28', 'Mentor.jpg', '2019-08-10'),
(54, 'lavyadav', 'tripsthi', 'male', '2019-08-20', 'lav@gmail.com', '2511365152', '45661', 'varansi', '29', 'Usericon.jpg', '2019-08-03'),
(55, 'ajeet', 'sharma', 'male', '2019-08-20', 'ajeet@gmail.com', '9865321452', 'ajeet', 'gorakhpur', '30', 'user48.png', '2019-08-03'),
(67, 'Krishna', 'GP yadav', 'male', '2018-10-16', 'krishna@gmail.com', '9719705117', 'Krishna', 'patana', '31', 'adityaphpoto.jpg', '2019-09-23'),
(66, 'prince', 'omprakash', 'male', '2019-02-19', 'kapil@gamil.com', '9518523210', 'kapil', 'agra', '31', 'adityaphpoto.jpg', '2019-09-22'),
(60, ' manjeet maurya', 'Saroj maurya', 'male', '2013-11-11', 'manjeet@gmail.com', '6398912034', 'Manjeet', ' Saidaraja', '37', 'PHOTO.jpg', '2019-08-10'),
(68, 'rajan  ', ' rohan', 'male', '2016-07-06', 'rajan@gmail.com', '6398912034', 'Rajan@123', 'aligarh', '31', 'Screenshot_2018-03-04-11-07-20-342_com.whatsapp.png', '2019-10-06'),
(69, 'ranjeet maurya', 'saroj maurya', 'male', '2018-10-15', 'ranjeet@gmail.com', '6398912034', 'Ranjeet@123', 'chandauli up 232110', '28', 'IMG_20180225_124518.jpg', '2019-10-06'),
(61, ' rohan', ' S.m', 'male', '2018-08-14', 'rohan@gmail.com', '8528930513', 'rohan', 'varanasi', '31', 'Teamlead.jpg', '2019-08-10'),
(57, 'vikesh chauhan', 'vivek singh', 'female', '2018-06-21', 'vekesh@gmail.com', '8956235148', '123', 'patana', '36', 'Usericon.jpg', '2019-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave`
--

CREATE TABLE IF NOT EXISTS `tbl_leave` (
  `leaveid` int(11) NOT NULL AUTO_INCREMENT,
  `emid` int(11) NOT NULL,
  `dfrom` varchar(10) NOT NULL,
  `dto` varchar(10) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `doa` varchar(10) NOT NULL,
  PRIMARY KEY (`leaveid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_leave`
--

INSERT INTO `tbl_leave` (`leaveid`, `emid`, `dfrom`, `dto`, `reason`, `status`, `doa`) VALUES
(1, 57, '2019-08-08', '2019-08-16', 'birthday', 'Y', '2019-08-06'),
(7, 55, '2019-08-12', '2019-08-24', 'birthday', 'Y', '2019-08-09'),
(6, 55, '2019-08-20', '2019-08-30', 'fever', 'Y', '2019-08-09'),
(5, 57, '', '', 'heretrqwerty 2q3wreth wer erhm 12er ereqwefd qwergn ', 'Y', '2019-08-07'),
(8, 55, '2019-08-12', '2019-09-26', 'my sister marriage', 'Y', '2019-08-09'),
(9, 48, '2019-08-12', '2019-08-20', 'fever', 'Y', '2019-08-09'),
(10, 49, '2019-08-13', '2019-08-22', 'my birthday', 'N', '2019-08-09'),
(11, 59, '2019-08-22', '2019-08-25', 'fever', 'Y', '2019-08-11'),
(12, 60, '2019-10-06', '2019-10-10', 'durgapooja&dasahara', 'Y', '2019-10-06'),
(13, 60, '2019-10-25', '2019-10-29', 'Dipawali', 'N', '2019-10-06'),
(14, 60, '2019-10-01', '2019-10-03', 'fiver', 'Y', '2019-10-06'),
(15, 60, '2019-10-16', '2019-10-16', 'df', 'N', '2019-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_noti`
--

CREATE TABLE IF NOT EXISTS `tbl_noti` (
  `notid` int(11) NOT NULL AUTO_INCREMENT,
  `notic` varchar(60) NOT NULL,
  `date` varchar(60) NOT NULL,
  PRIMARY KEY (`notid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_noti`
--

INSERT INTO `tbl_noti` (`notid`, `notic`, `date`) VALUES
(2, ' holiday', '2019-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary`
--

CREATE TABLE IF NOT EXISTS `tbl_salary` (
  `sal_id` int(11) NOT NULL AUTO_INCREMENT,
  `dptid` int(11) NOT NULL,
  `paygrade` varchar(60) NOT NULL,
  `basic` varchar(60) NOT NULL,
  PRIMARY KEY (`sal_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_salary`
--

INSERT INTO `tbl_salary` (`sal_id`, `dptid`, `paygrade`, `basic`) VALUES
(1, 33, '500', '15000'),
(2, 31, '600', '18000'),
(4, 36, '5000', '150000'),
(5, 28, '2000', '60000'),
(6, 37, '700', '21000');
