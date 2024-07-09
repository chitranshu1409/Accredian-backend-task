-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql12.freesqldatabase.com
-- Generation Time: Jul 09, 2024 at 05:07 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql12718956`
--

-- --------------------------------------------------------

--
-- Table structure for table `referals`
--

CREATE TABLE `referals` (
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `refereeEmail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referals`
--

INSERT INTO `referals` (`firstname`, `lastname`, `email`, `refereeEmail`) VALUES
('chitranshu', 'arya', 'chitranshu.arya9873@gmail.com', 'chitranshu.arya.ug22@nsut.ac.in'),
('chitranshu', 'arya', 'chitranshu.arya9873@gmail.com', 'chitranshu.arya.ug22@nsut.ac.in'),
('chitranshu', 'arya', 'chitranshu.arya9873@gmail.com', 'shitiz.solanki135@gmail.com'),
('chitranshu', 'arya', 'chitranshu.arya9873@gmail.com', 'rajeev22214@gmail.com'),
('chitranshu', 'arya', 'chitranshu.arya9873@gmail.com', 'infobesthomeloan191@gmail.com'),
('rajeev', 'kumar', 'ramap.s12@gmail.com', 'nobilgautam007@gmail.com'),
('aarti', 'rani', 'shitiz.solanki135@gmail.com', 'aarti.rani4627@gmail.com'),
('kanisk', 'jha', 'Kanishkjha004@gmail.com', 'shitiz.solanki29@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
