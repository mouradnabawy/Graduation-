-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 05, 2020 at 10:01 PM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

DROP TABLE IF EXISTS `mst_admin`;
CREATE TABLE IF NOT EXISTS `mst_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`, `email`) VALUES
(1, 'mourad', '123', 'mourad@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

DROP TABLE IF EXISTS `mst_question`;
CREATE TABLE IF NOT EXISTS `mst_question` (
  `que_id` int(5) NOT NULL AUTO_INCREMENT,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(47, 8, '		5 + 4?				', '7', '6', '9', '1', 3),
(48, 8, '		6 + 1?		', '9', '4', '8', '7', 4),
(49, 8, '		8 + 2? 		', '10', '3', '6', '9', 1),
(50, 19, '5 - 1?', '9', '5', '4', '1', 3),
(51, 19, '9 - 8?', '9', '8', '7', '1', 4),
(52, 19, '6 - 4?', '6', '2', '4', '1', 2),
(53, 20, '2 * 3? ', '6', '9', '4', '1', 1),
(54, 20, '9 * 2 ?', '14', '18', '16', '17', 2),
(55, 20, '4 * 2 ?', '8', '4', '9', '16', 1),
(56, 21, '8 / 2 ?', '6', '4', '11', '8', 2),
(57, 21, '4 / 2 ? ', '3', '9', '2', '4', 3),
(58, 21, '9 / 1?', '9', '5', '3', '4', 1),
(59, 22, ' 9-1 + 6 ?', '14', '6', '4', '1', 1),
(60, 22, '6+1 - 1?', '9', '6', '1', '4', 2),
(61, 22, '3 + 2 - 1?', '6', '8', '4', '3', 4),
(62, 24, '9*1 / 3 ?', '6', '3', '1', '4', 2),
(63, 24, '8*1 / 4 ?', '8', '2', '9', '10', 2),
(64, 24, '2*2 / 4 ?\r\n ', '6', '1', '4', '8', 2),
(71, 27, '8-1 ', '9', '6', '7', '5', 3),
(72, 27, '9/3', '9', '6', '3', '4', 3),
(73, 27, '7+1', '9', '7', '8', '3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

DROP TABLE IF EXISTS `mst_result`;
CREATE TABLE IF NOT EXISTS `mst_result` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_time` float DEFAULT NULL,
  `score` float DEFAULT NULL,
  `level` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`ID`, `login`, `test_id`, `test_time`, `score`, `level`) VALUES
(39, 'ola@gmail.com', 27, 1.24167, 0.666667, 0.09),
(40, 'ola@gmail.com', 21, 1.025, 0.666667, 0.65);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

DROP TABLE IF EXISTS `mst_subject`;
CREATE TABLE IF NOT EXISTS `mst_subject` (
  `sub_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(25) DEFAULT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`, `value`) VALUES
(1, 'Starter', 0.09),
(2, 'Elementary', 0.25),
(3, 'Pre-intermediate', 0.45),
(4, 'Intermediate', 0.65),
(5, 'Upper-intermediate', 0.85),
(6, 'Advanced', 0.98);

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

DROP TABLE IF EXISTS `mst_test`;
CREATE TABLE IF NOT EXISTS `mst_test` (
  `test_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL,
  `test_duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`, `test_duration`) VALUES
(8, 1, 'Math ( Addition )', '3', 120),
(19, 2, 'Math ( Subtraction )', '3', 120),
(20, 3, 'Math ( Multiplication )', '3', 120),
(21, 4, 'Math ( Division )', '3', 120),
(22, 5, 'Math (Subtraction & Addition)', '3', 120),
(24, 6, 'Math ( Multiplication & Division )', '3', 120),
(27, 1, 'Math 2', '3', 120);

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

DROP TABLE IF EXISTS `mst_user`;
CREATE TABLE IF NOT EXISTS `mst_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, 'habeba', '123', 'habeba', 'limbdi', 'limbdi', 9999, 'habeba@gmail.com'),
(2, 'khalifa', '123', 'khalifa', 'laskdjf', 'S\'nagar', 228585, 'khalifa@gmail.com'),
(3, 'ola', '123', 'ola', 'a', 'a', 0, 'ola@gmail.com'),
(15, 'ahmed', '123', 'ahmed', 'zahraa', 'cairo', 123456789, 'ahmed@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

DROP TABLE IF EXISTS `mst_useranswer`;
CREATE TABLE IF NOT EXISTS `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL,
  `test_elapsedtime` double NOT NULL,
  `test_ratio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`, `test_elapsedtime`, `test_ratio`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 0, 0),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3, 0, 0),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1, 0, 0),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1, 0, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 4, 0, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 4, 0, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 0, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 1, 7, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2, 8, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 36, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 1, 38, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 5, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2, 6, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 1, 8, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 5, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 5, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 6, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 2, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 4, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 2, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 18, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 6, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 2, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 11, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2, 13, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2, 14, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 5, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 6, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 7, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 5, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 2, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 6, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 5, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 5, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 5, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 3, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 4, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 35, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 37, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 44, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 46, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 1, 1.2, 0),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1, 1),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 0.041666666666667, 0.0416667),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2, 0.058333333333333, 0.0583333),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 0.075, 0.075),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 1, 1),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 4, 1.4, 1.4),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 7.2, 7.2),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 7.8, 7.8),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.4, 0.4),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 0.8, 0.8),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 4, 0.6, 0.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 4, 1, 1),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 4, 1, 1),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 2, 0.6, 0.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 3, 0.8, 0.8),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 17, 17),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 3, 17.6, 17.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 6.6, 6.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 7.2, 7.2),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.8, 0.8),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1, 1),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 2, 21.8, 21.8),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 4, 22.2, 22.2),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 0.8, 0.8),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 4, 0.6, 0.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 4, 0.8, 0.8),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 0.8, 0.8),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 0.041666666666667, 0.0416667),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3, 0.05, 0.05),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 4, 0.066666666666667, 0.0666667),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 3, 0.6, 0.6),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 3, 0.8, 0.8),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.8, 0.8),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1, 1),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 62.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 63.4, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1.2, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1.2, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 1, 1, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 2, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 1, 1, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1.2, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 25.2, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 25.4, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 32, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3, 32.4, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 4, 32.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.2, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 2, 0.4, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 3, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 3, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 3, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 1, 1, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 3, 0.6, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'what is your name ?', 'mourad', 'khalifa', 'habeba', 'ola', 2, 1, 0.8, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 12, 'sadasd', 'asdasd', 'adasdsa', 'dadad', 'asdasdad', 1, 2, 1, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 16, 'what is ?', 'a', 'sd', 'fs', 'cx', 4, 4, 0.1, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 16, 'where are ?', 'sad', 'c', 'v', 'b', 2, 1, 0.15, 0.333),
('u9mi1v6g4l6s501qvriacuvk9d', 16, 'when ?', 'ahmed', 'ali', 'sara', 'zara', 1, 4, 0.2, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 0.15, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2, 0.175, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 0.2, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4, 1, 0.6, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4, 3, 1.0666666666667, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 2, 1.1666666666667, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 3, 1.2666666666667, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 0.29166666666667, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 1, 0.33333333333333, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 0.35833333333333, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 4.825, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2, 4.8666666666667, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 4, 4.9, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 5.525, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 4, 5.55, 0.333),
('a2b7665cs5a14862jl4n8qr5no', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 1, 5.575, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 3, 0.34166666666667, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 1, 0.40833333333333, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2, 0.425, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 3.5916666666667, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3, 3.625, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2, 3.7333333333333, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4, 2, 7.9666666666667, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4, 2, 8, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 2, 8.0666666666667, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 1, 8.0916666666667, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 0.375, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2, 0.40833333333333, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 0.44166666666667, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 0.68333333333333, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3, 0.70833333333333, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 4, 0.725, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 2.0833333333333, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 1, 2.1166666666667, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 1, 2.1583333333333, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 3.5083333333333, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3, 3.5333333333333, 0.333),
('2nuohbc6ihbbppnhh90afa5ui0', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 1, 3.55, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 2.15, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2, 2.1833333333333, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 2.2, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 10.2, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 1, 10.225, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 10.233333333333, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 2.05, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3, 2.075, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 1, 2.125, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 6.65, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2, 6.6666666666667, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 6.6833333333333, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 0.475, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3, 0.5, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 4, 0.50833333333333, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 1.2666666666667, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 4, 1.2833333333333, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 1, 1.3, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 2.3916666666667, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 4, 2.4083333333333, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 1, 2.5333333333333, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2, 7.1416666666667, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 1, 7.1583333333333, 0.333),
('teu13u5ipdclvfvodlg3seks06', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3, 7.175, 0.333),
('5riesb90jki4503kltqh95guea', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 0.925, 0.333),
('5riesb90jki4503kltqh95guea', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 1, 0.95, 0.333),
('5riesb90jki4503kltqh95guea', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2, 0.98333333333333, 0.333),
('5riesb90jki4503kltqh95guea', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1, 3.25, 0.333),
('5riesb90jki4503kltqh95guea', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 1, 3.2916666666667, 0.333),
('5riesb90jki4503kltqh95guea', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 4, 3.3333333333333, 0.333),
('mh1et5dum29lteu5noaka1p24k', 27, '8-1 ', '9', '6', '7', '5', 3, 1, 1.1666666666667, 0.333),
('mh1et5dum29lteu5noaka1p24k', 27, '9/3', '9', '6', '3', '4', 3, 3, 1.2083333333333, 0.333),
('mh1et5dum29lteu5noaka1p24k', 27, '7+1', '9', '7', '8', '3', 3, 3, 1.2416666666667, 0.333),
('mh1et5dum29lteu5noaka1p24k', 21, '8 / 2 ?', '6', '4', '11', '8', 2, 1, 0.975, 0.333),
('mh1et5dum29lteu5noaka1p24k', 21, '4 / 2 ? ', '3', '9', '2', '4', 3, 3, 0.99166666666667, 0.333),
('mh1et5dum29lteu5noaka1p24k', 21, '9 / 1?', '9', '5', '3', '4', 1, 1, 1.025, 0.333);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
