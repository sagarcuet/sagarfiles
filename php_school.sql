-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2014 at 06:52 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `php_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE IF NOT EXISTS `admission` (
  `admission_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`admission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`admission_id`, `student_id`, `remarks`) VALUES
(20, 0, ''),
(21, 0, ''),
(22, 9, ''),
(23, 10, ''),
(24, 11, 'aaaaaaaaaaaaaaa'),
(25, 12, 'aaaaaaaaaaaaaaa'),
(26, 13, 'aaaaaaaaaaaaaaa'),
(27, 14, 'shhh');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(50) NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classid`, `classname`) VALUES
(1, 'Class Six'),
(2, 'Class Seven'),
(3, 'Class Eight'),
(4, 'Class Nine');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentid` int(11) NOT NULL AUTO_INCREMENT,
  `studentroll` int(11) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `mothername` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `registationno` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `dateofbrith` date NOT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `studentroll`, `studentname`, `fathername`, `mothername`, `address`, `registationno`, `image`, `dateofbrith`) VALUES
(1, 101, 'subrata', 'sssssssssss', 'ttttttttttttttt', 'dk', 11, '', '0000-00-00'),
(7, 102, 'subrata chakaraborty', 'kkkkkkkkkkkkk', 'ttttttttttttt', 'jhfjdjkgh', 121, '', '0000-00-00'),
(8, 102, 'subrata chakaraborty', 'kkkkkkkkkkkkk', 'ttttttttttttt', 'jhfjdjkgh', 121, '', '0000-00-00'),
(9, 102, 'subrata chakaraborty', 'kkkkkkkkkkkkk', 'ttttttttttttt', 'jhfjdjkgh', 121, '', '0000-00-00'),
(10, 102, 'subrata chakaraborty', 'kkkkkkkkkkkkk', 'ttttttttttttt', 'jhfjdjkgh', 121, '', '0000-00-00'),
(11, 55, 'subrata', 'itigcjhvkj', 'gcjgfiguikhi', 'hjbjgbhbki', 444, '', '0000-00-00'),
(12, 55, 'subrata', 'itigcjhvkj', 'gcjgfiguikhi', 'hjbjgbhbki', 444, '', '0000-00-00'),
(13, 55, 'subrata', 'itigcjhvkj', 'gcjgfiguikhi', 'hjbjgbhbki', 444, '', '0000-00-00'),
(14, 20, 'sagar', 'jjjjj', 'gggggggg', 'my', 205, '', '0000-00-00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
