-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2017 at 05:20 PM
-- Server version: 5.5.55-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_case_study`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquires`
--

CREATE TABLE IF NOT EXISTS `enquires` (
  `enquiry_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `enquiry_ip` varchar(39) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `visited_date` date NOT NULL,
  `DEL_FLG` char(1) NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `enquires`
--

INSERT INTO `enquires` (`enquiry_id`, `enquiry_ip`, `name`, `email_id`, `message`, `visited_date`, `DEL_FLG`) VALUES
(4, '117.249.221.89', 'Varun Sagar V', 'sagar.varun1@gmail.com', 'Hello, this is a test mail', '2017-06-11', 'N'),
(5, '117.249.221.89', 'Varun Sagar V', 'sagar.varun1@gmail.com', 'Hello, This is Test Message', '2017-06-11', 'N'),
(6, '117.249.221.89', 'Varun Sagar V', 'sagar.varun1@gmail.com', 'Hello, Test Mail', '2017-06-11', 'N'),
(7, '49.248.73.211', 'pawan', 'sales@brumesolutions.com', 'Test Msg', '2017-06-15', 'N'),
(8, '122.172.211.78', 'Varun', 'sagar.varun1@gmail.com', 'Testing', '2017-06-20', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `login_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `google_login_id` varchar(50) DEFAULT NULL,
  `email_id` varchar(100) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `user_type` char(1) NOT NULL,
  `e_verify` char(1) NOT NULL,
  `CRTD_DT` datetime NOT NULL,
  `CRTD_IP` varchar(39) NOT NULL,
  `DEL_FLG` char(1) NOT NULL,
  PRIMARY KEY (`login_id`),
  UNIQUE KEY `email_id` (`email_id`),
  UNIQUE KEY `google_login_id` (`google_login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`login_id`, `google_login_id`, `email_id`, `mobile`, `name`, `password`, `img_url`, `user_type`, `e_verify`, `CRTD_DT`, `CRTD_IP`, `DEL_FLG`) VALUES
(1, NULL, 'admin@gmail.com', '9944467632', 'admin', '123', NULL, 'A', '', '2017-06-10 18:41:03', '1.1.1.1', 'N'),
(2, NULL, 'vvs@gmail.com', '1234657980', 'vvs', '123', NULL, 'A', 'N', '2017-06-10 19:25:24', '1.1.1.1', 'N'),
(4, NULL, 'vsv@gmail.com', '9944467623', 'vsv', '123', NULL, 'U', 'N', '2017-06-10 19:40:25', '117.209.161.94', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE IF NOT EXISTS `visitors` (
  `visitor_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_ip` varchar(39) NOT NULL,
  `views` varchar(40) NOT NULL,
  `visited_date` date NOT NULL,
  `DEL_FLG` char(1) NOT NULL,
  PRIMARY KEY (`visitor_id`),
  UNIQUE KEY `visitor_ip` (`visitor_ip`,`visited_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`visitor_id`, `visitor_ip`, `views`, `visited_date`, `DEL_FLG`) VALUES
(1, '1.1.2.3', '4', '2017-06-08', 'N'),
(2, '1.1.2.4', '1', '2017-06-08', 'N'),
(3, '117.209.166.231', '5', '2017-06-09', 'N'),
(4, '117.246.132.160', '4', '2017-06-10', 'N'),
(5, '117.246.39.244', '1', '2017-06-10', 'N'),
(6, '117.209.128.58', '8', '2017-06-10', 'N'),
(7, '117.209.161.94', '56', '2017-06-10', 'N'),
(8, '123.252.241.64', '4', '2017-06-10', 'N'),
(9, '117.209.182.171', '1', '2017-06-10', 'N'),
(10, '117.209.166.171', '3', '2017-06-10', 'N'),
(11, '117.249.221.89', '87', '2017-06-11', 'N'),
(12, '202.12.83.58', '4', '2017-06-11', 'N'),
(13, '117.219.210.212', '3', '2017-06-11', 'N'),
(14, '117.209.220.202', '1', '2017-06-11', 'N'),
(15, '117.246.200.55', '1', '2017-06-13', 'N'),
(16, '49.248.73.211', '7', '2017-06-15', 'N'),
(17, '117.246.235.99', '4', '2017-06-18', 'N'),
(18, '114.143.171.126', '11', '2017-06-19', 'N'),
(19, '122.172.211.78', '33', '2017-06-20', 'N'),
(20, '157.49.6.88', '3', '2017-06-20', 'N'),
(21, '43.254.163.110', '3', '2017-06-20', 'N'),
(22, '117.245.105.106', '42', '2017-06-20', 'N'),
(23, '157.49.5.211', '24', '2017-06-21', 'N'),
(24, '157.49.1.153', '4', '2017-06-21', 'N'),
(25, '49.248.207.166', '4', '2017-06-21', 'N'),
(26, '157.49.2.106', '1', '2017-06-23', 'N'),
(27, '117.209.241.9', '1', '2017-06-23', 'N'),
(28, '117.242.88.197', '1', '2017-06-23', 'N'),
(29, '117.209.217.120', '324', '2017-07-01', 'N'),
(30, '117.209.213.251', '201', '2017-07-02', 'N'),
(31, '117.246.78.152', '6', '2017-07-02', 'N');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
