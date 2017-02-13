-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 09, 2017 at 10:13 AM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `hyresvarlden`
--

-- --------------------------------------------------------

--
-- Table structure for table `bokabastu`
--

CREATE TABLE `bokabastu` (
  `bastuID` int(11) NOT NULL,
  `bastuDatum` date NOT NULL,
  `bastuTid` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `bokabastu`
--

INSERT INTO `bokabastu` (`bastuID`, `bastuDatum`, `bastuTid`) VALUES
(1, '2017-02-05', '09:00:00'),
(2, '2017-02-05', '12:00:00'),
(3, '2017-02-05', '15:00:00'),
(4, '2017-02-05', '18:00:00'),
(5, '2017-02-05', '21:00:00'),
(6, '2017-02-06', '09:00:00'),
(7, '2017-02-06', '12:00:00'),
(8, '2017-02-06', '15:00:00'),
(9, '2017-02-06', '18:00:00'),
(10, '2017-02-06', '21:00:00'),
(11, '2017-02-07', '09:00:00'),
(12, '2017-02-07', '12:00:00'),
(13, '2017-02-07', '15:00:00'),
(14, '2017-02-07', '18:00:00'),
(15, '2017-02-07', '21:00:00'),
(16, '2017-02-08', '09:00:00'),
(17, '2017-02-08', '12:00:00'),
(18, '2017-02-08', '15:00:00'),
(19, '2017-02-08', '18:00:00'),
(20, '2017-02-08', '21:00:00'),
(21, '2017-02-09', '09:00:00'),
(22, '2017-02-09', '12:00:00'),
(23, '2017-02-09', '15:00:00'),
(24, '2017-02-09', '18:00:00'),
(25, '2017-02-09', '21:00:00'),
(26, '2017-02-10', '09:00:00'),
(27, '2017-02-10', '12:00:00'),
(28, '2017-02-10', '15:00:00'),
(29, '2017-02-10', '18:00:00'),
(30, '2017-02-10', '21:00:00'),
(31, '2017-02-11', '09:00:00'),
(32, '2017-02-11', '12:00:00'),
(33, '2017-02-11', '15:00:00'),
(34, '2017-02-11', '18:00:00'),
(35, '2017-02-11', '21:00:00'),
(36, '2017-02-12', '09:00:00'),
(37, '2017-02-12', '12:00:00'),
(38, '2017-02-12', '15:00:00'),
(39, '2017-02-12', '18:00:00'),
(40, '2017-02-12', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bokacyklar`
--

CREATE TABLE `bokacyklar` (
  `cykelID` int(11) NOT NULL,
  `cykelVard` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `cykelPris` float NOT NULL,
  `cykelDatum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `bokacyklar`
--

INSERT INTO `bokacyklar` (`cykelID`, `cykelVard`, `cykelPris`, `cykelDatum`) VALUES
(1, 'Malins cyklar', 299, '2017-02-08'),
(2, 'Marias cyklar', 399, '2017-02-07'),
(3, 'Malins cyklar', 455, '2017-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `bokaslapkarra`
--

CREATE TABLE `bokaslapkarra` (
  `slapkarraID` int(11) NOT NULL,
  `karraDatum` date NOT NULL,
  `karraStrl` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `karraPris` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `bokaslapkarra`
--

INSERT INTO `bokaslapkarra` (`slapkarraID`, `karraDatum`, `karraStrl`, `karraPris`) VALUES
(1, '2017-02-10', 'liten', 200),
(2, '2017-02-09', 'stor', 220);

-- --------------------------------------------------------

--
-- Table structure for table `bokatvattid`
--

CREATE TABLE `bokatvattid` (
  `tvattID` int(11) NOT NULL,
  `tvattDatum` date NOT NULL,
  `tvattTid` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `bokatvattid`
--

INSERT INTO `bokatvattid` (`tvattID`, `tvattDatum`, `tvattTid`) VALUES
(1, '2017-02-06', '06:00:00'),
(2, '2017-02-06', '12:00:00'),
(3, '2017-02-06', '18:00:00'),
(4, '2017-02-07', '06:00:00'),
(5, '2017-02-07', '12:00:00'),
(6, '2017-02-07', '18:00:00'),
(7, '2017-02-08', '06:00:00'),
(8, '2017-02-08', '12:00:00'),
(9, '2017-02-08', '18:00:00'),
(10, '2017-02-09', '06:00:00'),
(11, '2017-02-09', '12:00:00'),
(12, '2017-02-09', '18:00:00'),
(13, '2017-02-10', '12:00:00'),
(14, '2017-02-10', '18:00:00'),
(15, '2017-02-10', '06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gastinlogg`
--

CREATE TABLE `gastinlogg` (
  `ID` int(11) NOT NULL,
  `pwd` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `epost` varchar(254) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `gastinlogg`
--

INSERT INTO `gastinlogg` (`ID`, `pwd`, `epost`) VALUES
(1, 'hast1', 'hast@hast1.se'),
(2, 'valpen', 'valpen@valp1.se'),
(3, 'test123', 'test@test.se');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bokabastu`
--
ALTER TABLE `bokabastu`
  ADD PRIMARY KEY (`bastuID`);

--
-- Indexes for table `bokacyklar`
--
ALTER TABLE `bokacyklar`
  ADD PRIMARY KEY (`cykelID`);

--
-- Indexes for table `bokaslapkarra`
--
ALTER TABLE `bokaslapkarra`
  ADD PRIMARY KEY (`slapkarraID`);

--
-- Indexes for table `bokatvattid`
--
ALTER TABLE `bokatvattid`
  ADD PRIMARY KEY (`tvattID`);

--
-- Indexes for table `gastinlogg`
--
ALTER TABLE `gastinlogg`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bokabastu`
--
ALTER TABLE `bokabastu`
  MODIFY `bastuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `bokacyklar`
--
ALTER TABLE `bokacyklar`
  MODIFY `cykelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bokaslapkarra`
--
ALTER TABLE `bokaslapkarra`
  MODIFY `slapkarraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bokatvattid`
--
ALTER TABLE `bokatvattid`
  MODIFY `tvattID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `gastinlogg`
--
ALTER TABLE `gastinlogg`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;