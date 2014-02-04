-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2014 at 08:08 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `diffproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE IF NOT EXISTS `bills` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `order_id` int(11) DEFAULT '0',
  `trip_id` int(11) DEFAULT '0',
  `amount` float NOT NULL,
  `file_name` tinytext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `cerereordins`
--

CREATE TABLE IF NOT EXISTS `cerereordins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TripID` int(11) NOT NULL,
  `cci` tinytext,
  `date1` tinytext,
  `dlocality` tinytext,
  `dcountry` tinytext,
  `dscop` tinytext,
  `droute` tinytext,
  `preiod` tinytext,
  `dgo` tinytext,
  `dcome` tinytext,
  `cheltuieli` tinytext,
  `csalariale` tinytext,
  `datecreated` tinytext,
  `nrgf` tinytext,
  `namef` tinytext,
  `transpif` tinytext,
  `transpintf` tinytext,
  `diaurinaf` tinytext,
  `cazaref` tinytext,
  `taxaf` tinytext,
  `altchelf` tinytext,
  `totalf` tinytext,
  `datef` tinytext,
  `nrgd` tinytext,
  `named` tinytext,
  `tranpsid` tinytext,
  `transpintd` tinytext,
  `diaurnad` tinytext,
  `cazared` tinytext,
  `taxad` tinytext,
  `altcheld` tinytext,
  `totald` tinytext,
  `dated` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `declaratie`
--

CREATE TABLE IF NOT EXISTS `declaratie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tripid` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` tinytext NOT NULL,
  `trip_id` int(11) DEFAULT '0',
  `order_id` int(11) DEFAULT '0',
  `desription` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `global`
--

CREATE TABLE IF NOT EXISTS `global` (
  `GlobalTrip` float NOT NULL,
  `GlobalOrder` float NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `global`
--

INSERT INTO `global` (`GlobalTrip`, `GlobalOrder`, `ID`) VALUES
(9997, 10023, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Created` datetime NOT NULL,
  `UserID` int(11) NOT NULL,
  `ProvidedAmount` float NOT NULL,
  `Finalized` tinyint(1) DEFAULT '0',
  `PDF_Name` tinytext,
  `BillFileName` tinytext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` tinytext NOT NULL,
  `Price` float NOT NULL,
  `ProductURL` text NOT NULL,
  `OrderID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE IF NOT EXISTS `trips` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime DEFAULT NULL,
  `UserID` int(11) NOT NULL,
  `finalize` tinyint(1) DEFAULT '0',
  `ProvidedAmount` float DEFAULT '0',
  `destination` tinytext,
  PRIMARY KEY (`ID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(40) NOT NULL,
  `password` varchar(260) NOT NULL,
  `firstName` tinytext NOT NULL,
  `lastName` tinytext NOT NULL,
  `role` varchar(6) NOT NULL DEFAULT 'USER',
  `email` varchar(60) NOT NULL,
  `tel` tinytext,
  `university` tinytext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `userName`, `password`, `firstName`, `lastName`, `role`, `email`, `tel`, `university`) VALUES
(1, 'Admin', 'admin', 'Admin', 'Admin', 'ADMIN', 'admin@gmail.com', '0101010', 'Sapientia Matek Info');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
