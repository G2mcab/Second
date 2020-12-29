-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 10:50 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbiims`
--
CREATE DATABASE IF NOT EXISTS `wbiims` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wbiims`;

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

DROP TABLE IF EXISTS `accident`;
CREATE TABLE `accident` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(256) NOT NULL,
  `reason` varchar(2048) NOT NULL,
  `location` varchar(256) NOT NULL,
  `accidentDate` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accident`
--

INSERT INTO `accident` (`id`, `userId`, `type`, `reason`, `location`, `accidentDate`, `status`) VALUES
(1, 1, 'Car Accident', 'Collision', 'A.A', '2020-03-23', 1),
(2, 2, 'Car Accident', 'Drunk', 'A.A', '2020-03-23', 1),
(3, 2, 'Car Accident', 'Drinking', 'A.A', '2020-09-02', 1),
(4, 1, 'Car Accident', 'Overspeeding', 'A.A', '2020-10-14', 1),
(5, 1, 'Car Accident', 'Vvv', 'A.A', '2020-11-02', 1),
(6, 1, 'Motor Cycle', 'Collision', 'A.A', '2020-11-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `accidenttype`
--

DROP TABLE IF EXISTS `accidenttype`;
CREATE TABLE `accidenttype` (
  `act` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accidenttype`
--

INSERT INTO `accidenttype` (`act`) VALUES
('Car Accident'),
('Motor Cycle');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `contactPerson` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `zone` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `kebele` varchar(256) NOT NULL,
  `phonenumber` varchar(30) NOT NULL,
  `username` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `sex`, `contactPerson`, `country`, `region`, `zone`, `city`, `kebele`, `phonenumber`, `username`) VALUES
(1, 'Alex', 'Solomon', 'male', 'Mohammed', 'Ethiopia', '14', '14', 'A.A', 'Kolfe', '0905122654', 'A/1');

-- --------------------------------------------------------

--
-- Table structure for table `advertisment`
--

DROP TABLE IF EXISTS `advertisment`;
CREATE TABLE `advertisment` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `addDate` int(11) NOT NULL,
  `addImage` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisment`
--

INSERT INTO `advertisment` (`id`, `title`, `description`, `addDate`, `addImage`) VALUES
(1, 'Biscuit Factory', 'It taste sweet!', 1584947865, '401e2926def2160317ff8b9dabc71211.jpg'),
(2, 'Water', 'Taste the feeling', 1584948422, 'd096903007db272074bba0f2754e03da.jpg'),
(3, 'New Insurance Policy', 'Best offer', 1604325031, '34eadec2726a7d947a850b5a4acfe28b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
CREATE TABLE `cashier` (
  `id` int(11) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `contactPerson` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `zone` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `kebele` varchar(256) NOT NULL,
  `phonenumber` varchar(30) NOT NULL,
  `username` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`id`, `fname`, `lname`, `sex`, `contactPerson`, `country`, `region`, `zone`, `city`, `kebele`, `phonenumber`, `username`) VALUES
(1, 'Alex', 'Solomon', 'male', 'Elias', 'Ethiopia', '14', '14', 'A.A', 'Kolfe', '0905122654', 'C/1');

-- --------------------------------------------------------

--
-- Table structure for table `insurancetype`
--

DROP TABLE IF EXISTS `insurancetype`;
CREATE TABLE `insurancetype` (
  `it` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurancetype`
--

INSERT INTO `insurancetype` (`it`) VALUES
('Car Insurance'),
('Fire Insurance');

-- --------------------------------------------------------

--
-- Table structure for table `insured`
--

DROP TABLE IF EXISTS `insured`;
CREATE TABLE `insured` (
  `id` int(11) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `contactPerson` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `zone` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `kebele` varchar(256) NOT NULL,
  `phonenumber` varchar(30) NOT NULL,
  `insuranceType` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insured`
--

INSERT INTO `insured` (`id`, `fname`, `lname`, `sex`, `contactPerson`, `country`, `region`, `zone`, `city`, `kebele`, `phonenumber`, `insuranceType`, `username`) VALUES
(1, 'Fatuma', 'Mohammed', 'female', 'Mohammed', 'Ethiopia', '14', '14', 'A.A', 'Kolfe Keranio', '0905122654', 'Car Insurance', 'I/1'),
(2, 'Abenezer ', 'Elias', 'male', 'Elias', 'Ethiopia', '14', '14', 'A.A', 'Nifas Silk', '0905122654', 'Car Insurance', 'I/2');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `insuredId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(2048) NOT NULL,
  `messageDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`insuredId`, `title`, `message`, `messageDate`) VALUES
(1, 'please update', 'Time is running out!', '2020-10-31'),
(1, 'please update', 'Come to office quickly', '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `title` varchar(256) NOT NULL,
  `notification` varchar(2048) NOT NULL,
  `notDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`title`, `notification`, `notDate`) VALUES
('Please come to office', 'Please come to office', '2020-10-31'),
('New Discount', 'New Discount', '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `operationoffice`
--

DROP TABLE IF EXISTS `operationoffice`;
CREATE TABLE `operationoffice` (
  `id` int(11) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `contactPerson` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `region` varchar(256) NOT NULL,
  `zone` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `kebele` varchar(256) NOT NULL,
  `phonenumber` varchar(30) NOT NULL,
  `username` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operationoffice`
--

INSERT INTO `operationoffice` (`id`, `fname`, `lname`, `sex`, `contactPerson`, `country`, `region`, `zone`, `city`, `kebele`, `phonenumber`, `username`) VALUES
(1, 'Alex', 'Hailu', 'male', 'Elias', 'Ethiopia', '14', '14', 'A.A', 'Kolfe', '0905122654', 'O/1');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payerId` int(11) NOT NULL,
  `paymentAmount` int(11) NOT NULL,
  `insuranceType` varchar(256) NOT NULL,
  `paymentDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payerId`, `paymentAmount`, `insuranceType`, `paymentDate`) VALUES
(1, 1, 100, 'Car Insurance', '2020-03-23'),
(2, 2, 200, 'Car Insurance', '2020-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `policyagreement`
--

DROP TABLE IF EXISTS `policyagreement`;
CREATE TABLE `policyagreement` (
  `policy` varchar(2048) NOT NULL,
  `uDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policyagreement`
--

INSERT INTO `policyagreement` (`policy`, `uDate`) VALUES
('									The policy is a mandate!																														', '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `reportType` varchar(256) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `reportDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `userId`, `reportType`, `description`, `reportDate`) VALUES
(1, 1, 'Complain', 'Am not', '2020-03-23'),
(2, 2, 'Complain', 'Am hapy', '2020-03-23'),
(3, 1, 'Complain', 'Lack of organization', '2020-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `reporttype`
--

DROP TABLE IF EXISTS `reporttype`;
CREATE TABLE `reporttype` (
  `rt` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporttype`
--

INSERT INTO `reporttype` (`rt`) VALUES
('Complain'),
('FEEDBACK');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(256) NOT NULL,
  `password` varchar(2048) NOT NULL,
  `role` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `role`) VALUES
('I/1', '25d55ad283aa400af464c76d713c07ad', 'insured'),
('I/2', '25d55ad283aa400af464c76d713c07ad', 'insured'),
('A/1', '25d55ad283aa400af464c76d713c07ad', 'admin'),
('C/1', '25d55ad283aa400af464c76d713c07ad', 'cashier'),
('O/1', '25d55ad283aa400af464c76d713c07ad', 'oo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
