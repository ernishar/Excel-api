-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 11:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductName` varchar(255) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `SKU` varchar(50) DEFAULT NULL,
  `VariantID` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `DiscountPercentage` decimal(5,2) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductName`, `ID`, `SKU`, `VariantID`, `Price`, `DiscountPercentage`, `Description`) VALUES
('Product', 1, 'SKU001', 101, 50.00, 10.00, 'Description'),
('Product', 2, 'SKU002', 102, 75.00, 15.00, 'Description'),
('Product', 3, 'SKU003', 103, 100.00, 20.00, 'Description'),
('Product', 4, 'SKU004', 104, 25.00, 5.00, 'Description'),
('Product', 5, 'SKU005', 105, 150.00, 25.00, 'Description'),
('Product', 6, 'SKU006', 106, 80.00, 10.00, 'Description'),
('Product', 7, 'SKU007', 107, 90.00, 0.00, 'Description'),
('Product', 8, 'SKU008', 108, 120.00, 30.00, 'Description'),
('Product', 9, 'SKU009', 109, 70.00, 15.00, 'Description'),
('Product', 10, 'SKU010', 110, 200.00, 40.00, 'Description'),
('Product', 11, 'SKU011', 111, 60.00, 10.00, 'Description'),
('Product', 12, 'SKU012', 112, 180.00, 20.00, 'Description'),
('Product', 13, 'SKU013', 113, 40.00, 5.00, 'Description'),
('Product', 14, 'SKU014', 114, 110.00, 15.00, 'Description'),
('Product', 15, 'SKU015', 115, 95.00, 10.00, 'Description'),
('Product', 16, 'SKU016', 116, 130.00, 25.00, 'Description'),
('Product', 17, 'SKU017', 117, 55.00, 5.00, 'Description'),
('Product', 18, 'SKU018', 118, 85.00, 20.00, 'Description'),
('Product', 19, 'SKU019', 119, 140.00, 30.00, 'Description'),
('Product', 20, 'SKU020', 120, 65.00, 15.00, 'Description');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
