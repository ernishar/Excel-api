-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2024 at 06:33 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `CategoryID` varchar(10) NOT NULL,
  `CategoryName` varchar(100) NOT NULL,
  UNIQUE KEY `CategoryID` (`CategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`) VALUES
('1', 'Electronics'),
('2', 'Clothing'),
('3', 'Home & Kitchen'),
('4', 'Books'),
('5', 'Sports & Outdoors'),
('6', 'Beauty & Personal Care'),
('7', 'Toys & Games'),
('8', 'Automotive'),
('9', 'Health & Wellness'),
('10', 'Grocery');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ProductName` varchar(255) DEFAULT NULL,
  `ID` int NOT NULL,
  `SKU` varchar(50) DEFAULT NULL,
  `VariantID` varchar(10) DEFAULT NULL,
  `CategoryID` int NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `DiscountPercentage` decimal(5,2) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SKU` (`SKU`),
  KEY `flk_productVariants` (`VariantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

DROP TABLE IF EXISTS `variants`;
CREATE TABLE IF NOT EXISTS `variants` (
  `VariantID` varchar(4) NOT NULL,
  `VariantName` varchar(100) NOT NULL,
  PRIMARY KEY (`VariantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `flk_productVariants` FOREIGN KEY (`VariantID`) REFERENCES `variants` (`VariantID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
