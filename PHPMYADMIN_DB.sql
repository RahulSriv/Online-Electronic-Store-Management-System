-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2020 at 06:05 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer`
--
CREATE DATABASE IF NOT EXISTS `customer` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `customer`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Contact` varchar(30) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Pincode` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Usertype` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `DOB`, `Gender`, `Email`, `Contact`, `Street`, `City`, `State`, `Pincode`, `Username`, `Usertype`, `Password`) VALUES
(NULL, 'Ram', '2000-03-03', 'M', 'ram@abc.com', '9455779455', '123 street', 'Banda', 'UP', '210012', 'Ram', 'General', 'Ram1234'),
(NULL, 'Mohan', '2010-12-08', 'M', 'mohan123@gmail.com', '9478947855', 'TT Road', 'Pune', 'Maharashtra', '500144', 'Mohan', 'General', 'Mohan1234'),
(NULL, 'Rahul', '2000-11-03', 'M', 'rahulsriv2000@gmail.com', '9455779015', 'C-521 Kareli', 'Allahabad', 'UP', '211016', 'Rahul', 'Administrator', 'rahul1234'),
(NULL, 'Rohit Gupta', '2005-02-20', 'M', 'rohit123@hotmail.com', '7788994477', 'ABC 123 Street', 'Varanasi', 'UP', '205206', 'Rohit', 'General', 'rohit1234');
--
-- Database: `record`
--
CREATE DATABASE IF NOT EXISTS `record` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `record`;

-- --------------------------------------------------------

--
-- Table structure for table `electronicitem`
--

DROP TABLE IF EXISTS `electronicitem`;
CREATE TABLE IF NOT EXISTS `electronicitem` (
  `ItemID` varchar(4) NOT NULL,
  `ItemName` varchar(30) NOT NULL,
  `BrandID` varchar(4) NOT NULL,
  `BrandName` varchar(30) NOT NULL,
  `ModelID` varchar(4) NOT NULL,
  `ModelName` varchar(30) NOT NULL,
  `DateOfManufacture` date NOT NULL,
  `price` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electronicitem`
--

INSERT INTO `electronicitem` (`ItemID`, `ItemName`, `BrandID`, `BrandName`, `ModelID`, `ModelName`, `DateOfManufacture`, `price`) VALUES
('I001', 'Mobile', 'B001', 'Samsung', 'M001', 'GalaxyS2', '2017-06-15', '10000'),
('I002', 'Laptop', 'B002', 'HP', 'M002', 'Inspiron5000', '2019-06-03', '55949'),
('I003', 'Earphones', 'B003', 'Boat', 'M003', 'Bolt101', '2018-06-01', '500'),
('I004', 'Headphones', 'B003', 'Boat', 'M004', 'Rockerz', '2019-10-11', '1549'),
('I005', 'Laptop', 'B004', 'HP', 'M005', 'Folio202', '2015-06-02', '45000'),
('I006', 'Laptop', 'B004', 'HP', 'M006', 'Pavalion', '2015-05-20', '50000'),
('I007', 'Mobile', 'B001', 'Samsung', 'M007', 'GalaxyS5', '2018-10-10', '22400'),
('I008', 'Mobile', 'B001', 'Samsung', 'M008', 'GalaxyJ7', '2015-12-01', '12500'),
('I009', 'Earphones', 'B003', 'Boat', 'M009', 'Bass', '2019-05-01', '549');
--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `id` int(11) DEFAULT NULL,
  `SubTotal` int(11) NOT NULL,
  `Pay` int(11) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `SubTotal`, `Pay`, `Balance`) VALUES
(NULL, 1500, 2000, 500),
(NULL, 1500, 2000, 500),
(NULL, 10000, 11000, 1000),
(NULL, 20000, 22000, 2000),
(NULL, 10000, 15000, 5000),
(NULL, 500, 1000, 500),
(NULL, 1500, 2000, 500),
(NULL, 1500, 2000, 500),
(NULL, 1500, 2000, 500),
(NULL, 1500, 2000, 500),
(NULL, 66000, 70000, 4000),
(NULL, 30000, 40000, 10000),
(NULL, 4500, 5000, 500),
(NULL, 4500, 5000, 500),
(NULL, 4500, 5000, 500),
(NULL, 4500, 5000, 500),
(NULL, 10000, 110000, 100000),
(NULL, 10000, 11000, 1000),
(NULL, 1500, 1500, 0),
(NULL, 1500, 1500, 0),
(NULL, 4500, 5000, 500),
(NULL, 60000, 60000, 0),
(NULL, 1500, 2000, 500),
(NULL, 1500, 2000, 500),
(NULL, 82500, 83000, 500),
(NULL, 82500, 83000, 500),
(NULL, 82500, 83000, 500),
(NULL, 1500, 2500, 1000),
(NULL, 3000, 3000, 0),
(NULL, 7500, 8000, 500);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) DEFAULT NULL,
  `ItemName` varchar(30) NOT NULL,
  `BrandName` varchar(30) NOT NULL,
  `ModelName` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `ItemName`, `BrandName`, `ModelName`, `Price`, `Quantity`, `Total`) VALUES
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 1, 1500),
(NULL, 'Mobile', 'Samsung', 'GalaxyS2', 10000, 3, 30000),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 3, 4500),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 3, 4500),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 3, 4500),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 3, 4500),
(NULL, 'Mobile', 'Samsung', 'GalaxyS2', 10000, 1, 10000),
(NULL, 'Mobile', 'Samsung', 'GalaxyS2', 10000, 1, 10000),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 0, 0),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 1, 1500),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 0, 0),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 1, 1500),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 3, 4500),
(NULL, 'Mobile', 'Samsung', 'GalaxyS2', 10000, 0, 0),
(NULL, 'Laptop', 'Dell', 'Inspiron5000', 60000, 1, 60000),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 1, 1500),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 1, 1500),
(NULL, 'Mobile', 'Samsung', 'GalaxyS2', 10000, 2, 20000),
(NULL, 'Laptop', 'Dell', 'Inspiron5000', 60000, 1, 60000),
(NULL, 'Earphones', 'Boat', 'Bolt101', 500, 2, 1000),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 1, 1500),
(NULL, 'Mobile', 'Samsung', 'GalaxyS2', 10000, 2, 20000),
(NULL, 'Laptop', 'Dell', 'Inspiron5000', 60000, 1, 60000),
(NULL, 'Earphones', 'Boat', 'Bolt101', 500, 2, 1000),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 1, 1500),
(NULL, 'Mobile', 'Samsung', 'GalaxyS2', 10000, 2, 20000),
(NULL, 'Laptop', 'Dell', 'Inspiron5000', 60000, 1, 60000),
(NULL, 'Earphones', 'Boat', 'Bolt101', 500, 2, 1000),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 1, 1500),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 1, 1500),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 2, 3000),
(NULL, 'Headphones', 'Boat', 'Rockerz', 1500, 5, 7500);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) DEFAULT NULL,
  `ItemID` varchar(4) NOT NULL,
  `ItemName` varchar(30) NOT NULL,
  `BrandName` varchar(30) NOT NULL,
  `ModelName` varchar(30) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `ItemID`, `ItemName`, `BrandName`, `ModelName`, `Quantity`, `Price`) VALUES
(1, 'I001', 'Mobile', 'Samsung', 'GalaxyS2', 2, 10000),
(2, 'I002', 'Laptop', 'Dell', 'Inspiron5000', 1, 60000),
(3, 'I003', 'Earphones', 'Boat', 'Bolt101', 3, 500),
(4, 'I004', 'Headphones', 'Boat', 'Rockerz', 1, 1500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
