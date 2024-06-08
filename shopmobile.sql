-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2024 at 08:03 PM
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
-- Database: `shopmobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `BrandId` int NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `BrandType` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Description` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`BrandId`),
  UNIQUE KEY `BrandName` (`BrandName`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`BrandId`, `BrandName`, `BrandType`, `Description`) VALUES
(1, 'IOS', 'iphone', 'Apple'),
(3, 'Android', 'Android', 'SUMSUNG'),
(11, '15', 'app', 'Addnew'),
(12, 'new15', '245', '24424');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cumstomer`
--

DROP TABLE IF EXISTS `tbl_cumstomer`;
CREATE TABLE IF NOT EXISTS `tbl_cumstomer` (
  `CumstomID` int NOT NULL AUTO_INCREMENT,
  `CumstonName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Gender` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `POB` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `JobTitel` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Photo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`CumstomID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_cumstomer`
--

INSERT INTO `tbl_cumstomer` (`CumstomID`, `CumstonName`, `Gender`, `DOB`, `POB`, `JobTitel`, `Address`, `Phone`, `Photo`) VALUES
(4, 'General', 'male', '2023-11-05', 'PP', 'IT', 'PP', '09984832', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

DROP TABLE IF EXISTS `tbl_image`;
CREATE TABLE IF NOT EXISTS `tbl_image` (
  `imgid` int NOT NULL AUTO_INCREMENT,
  `productind` int NOT NULL,
  `imagename` varchar(100) NOT NULL,
  PRIMARY KEY (`imgid`),
  KEY `productind` (`productind`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`imgid`, `productind`, `imagename`) VALUES
(8, 6, '1703761895.jpg'),
(10, 6, '1703761895.jpg'),
(14, 12, '1705159664.jpg'),
(15, 13, '1705159720.jpg 1705159723.jpg'),
(16, 14, 'Array'),
(17, 15, '1705159952.jpg'),
(18, 26, ''),
(19, 27, '1705161930.jpg'),
(21, 45, '1705163355.jpg'),
(22, 45, '1705163355.jpg'),
(23, 45, '1705163355.jpg'),
(24, 45, '1705163355.jpg'),
(25, 49, '1705163453.jpg'),
(26, 49, '1705163461.jpg'),
(27, 49, '1705163461.jpg'),
(28, 49, '1705163461.jpg'),
(29, 49, '1705163461.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE IF NOT EXISTS `tbl_member` (
  `MemberID` int NOT NULL AUTO_INCREMENT,
  `MemberType` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Dicount` float(18,0) NOT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `ProductId` int NOT NULL AUTO_INCREMENT,
  `Productname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Barcode` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Imei` int NOT NULL,
  `BrandId` int NOT NULL,
  `Qty` int NOT NULL,
  `UnitCoust` float(18,3) NOT NULL,
  `UnitPrice` float(18,3) NOT NULL,
  `Photo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`ProductId`),
  UNIQUE KEY `Productname` (`Productname`),
  KEY `BrandId` (`BrandId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`ProductId`, `Productname`, `Barcode`, `Imei`, `BrandId`, `Qty`, `UnitCoust`, `UnitPrice`, `Photo`, `Status`) VALUES
(1, 'iphone', '444444', 4543535, 1, 0, 24000.000, 200.000, '1713973327.jpg', 'Enable'),
(2, 'OPPO', '4543534', 32535, 1, 0, 3222.000, 333.000, '1713973322.jpg', 'Disible'),
(3, 'VOVOP', '43533', 43535, 1, 0, 333.000, 33.000, '1713973125.jpg', 'Enable'),
(5, 'samsung', '53262324', 43534, 1, 0, 5500.000, 33.000, '1713973061.jpg', 'Enable'),
(6, 'dfsa', '453', 65432, 3, 0, 11.000, 111.000, '1713880118.jpg', 'Enable'),
(7, 'VIVO', '7665233423', 435535, 1, 0, 11.000, 111.000, '1713880113.jpg', 'Disible'),
(13, 'VIVO24', '34234', 55532, 3, 0, 333.000, 33.000, '1713973298.jpg', 'Enable'),
(14, 'Oppo A58', '7665233423', 1245, 3, 0, 110.000, 120.000, '1714033806.jpg', 'Enable'),
(15, 'vivonew', '22222233', 120000123, 3, 0, 2500.000, 2000.000, '1717783863.webp', 'Enable'),
(16, 'oppo24', '333322', 98766633, 3, 0, 35000.000, 3000.000, '1717783745.jpg', 'Enable'),
(17, 'endproduct', '53262324', 43534, 1, 10, 5500.000, 1000.000, '1717783814.png', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

DROP TABLE IF EXISTS `tbl_purchase`;
CREATE TABLE IF NOT EXISTS `tbl_purchase` (
  `PurchaseId` int NOT NULL AUTO_INCREMENT,
  `StaffId` int NOT NULL,
  `SupId` int NOT NULL,
  `InvoiceSup` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `PurchaseDate` date NOT NULL,
  `BeginBalane` float(18,3) NOT NULL,
  `PainAmount` float(18,3) NOT NULL,
  `DeptAmount` float(18,3) NOT NULL,
  `EndBalance` float(18,3) NOT NULL,
  `DiscountTotal` float(18,3) NOT NULL,
  PRIMARY KEY (`PurchaseId`),
  KEY `StaffId` (`StaffId`),
  KEY `SupId` (`SupId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`PurchaseId`, `StaffId`, `SupId`, `InvoiceSup`, `PurchaseDate`, `BeginBalane`, `PainAmount`, `DeptAmount`, `EndBalance`, `DiscountTotal`) VALUES
(1, 1, 2, 'new', '2024-01-31', 2000.000, 2300.000, 4300.000, 4300.000, 5.000),
(2, 1, 1, '', '2024-03-30', 0.000, 0.000, 0.000, 0.000, 0.000),
(6, 1, 1, '', '2024-03-30', 0.000, 0.000, 0.000, 0.000, 0.000),
(7, 1, 1, '', '2024-03-30', 0.000, 0.000, 0.000, 0.000, 0.000),
(8, 1, 1, '', '2024-03-30', 0.000, 0.000, 0.000, 0.000, 0.000),
(9, 3, 4, '', '2024-04-24', 0.000, 0.000, 0.000, 0.000, 0.000),
(10, 1, 1, '', '2024-03-30', 0.000, 0.000, 0.000, 0.000, 0.000),
(11, 1, 1, '', '2024-03-30', 0.000, 0.000, 0.000, 0.000, 0.000),
(12, 2, 4, '', '2024-03-30', 0.000, 0.000, 0.000, 0.000, 0.000),
(13, 2, 4, '', '2024-03-30', 0.000, 0.000, 0.000, 0.000, 0.000),
(14, 2, 4, '34242', '2024-03-30', 2343.000, 3424.000, 342.000, 234.000, 342.000),
(15, 1, 1, '', '2024-06-07', 0.000, 0.000, 0.000, 0.000, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_detail`
--

DROP TABLE IF EXISTS `tbl_purchase_detail`;
CREATE TABLE IF NOT EXISTS `tbl_purchase_detail` (
  `PurchaseId` int NOT NULL AUTO_INCREMENT,
  `ProductId` int NOT NULL,
  `PurchaseQty` int NOT NULL,
  `PurchasePrice` float(18,3) NOT NULL,
  `Saleprice` float(18,3) NOT NULL,
  `Discount` float(18,3) NOT NULL,
  `StorageId` int NOT NULL,
  PRIMARY KEY (`PurchaseId`),
  KEY `ProductId` (`ProductId`),
  KEY `StorageId` (`StorageId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_detail`
--

DROP TABLE IF EXISTS `tbl_sale_detail`;
CREATE TABLE IF NOT EXISTS `tbl_sale_detail` (
  `SaleID` int NOT NULL AUTO_INCREMENT,
  `ProductID` int NOT NULL,
  `Imei` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Qty` double NOT NULL,
  `SaleQty` double NOT NULL,
  `PriceOut` float(18,3) NOT NULL,
  `Discount` float(18,3) NOT NULL,
  PRIMARY KEY (`SaleID`),
  KEY `tbl_sale_detail_ibfk_2` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sell`
--

DROP TABLE IF EXISTS `tbl_sell`;
CREATE TABLE IF NOT EXISTS `tbl_sell` (
  `SellID` int NOT NULL AUTO_INCREMENT,
  `StaffID` int NOT NULL,
  `CumstomID` int NOT NULL,
  `SaleDate` date NOT NULL,
  `ProductID` int NOT NULL,
  `Qty` int NOT NULL,
  `PaidPrice` float(18,3) NOT NULL,
  `DepPrice` float(18,3) NOT NULL,
  `Discount` int NOT NULL,
  PRIMARY KEY (`SellID`),
  KEY `StaffID` (`StaffID`),
  KEY `CumstomID` (`CumstomID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_sell`
--

INSERT INTO `tbl_sell` (`SellID`, `StaffID`, `CumstomID`, `SaleDate`, `ProductID`, `Qty`, `PaidPrice`, `DepPrice`, `Discount`) VALUES
(1, 3, 4, '2024-05-28', 17, 1, 23000.000, 200.000, 5),
(2, 1, 4, '2024-05-27', 17, 2, 22.000, 22.000, 2),
(3, 5, 4, '2024-05-31', 17, 2, 22.000, 22.000, 22),
(4, 1, 4, '0000-00-00', 17, 2, 22.000, 2.000, 22),
(5, 1, 4, '0000-00-00', 17, 5, 44.000, 44.000, 44),
(6, 3, 4, '0000-00-00', 17, 3, 33.000, 33.000, 33),
(7, 3, 4, '0000-00-00', 17, 3, 33.000, 33.000, 33),
(8, 4, 4, '2024-05-27', 17, 4, 333.000, 333.000, 33),
(9, 2, 4, '2024-05-26', 17, 2, 233.000, 23.000, 3),
(10, 1, 4, '2024-06-14', 17, 2, 22.000, 22.000, 2),
(11, 1, 4, '2024-06-14', 17, 2, 22.000, 22.000, 2),
(12, 1, 4, '2024-05-27', 17, 2, 33.000, 33.000, 33),
(13, 1, 4, '0000-00-00', 17, 2, 222.000, 22.000, 4),
(14, 1, 4, '0000-00-00', 17, 2, 222.000, 22.000, 4),
(15, 4, 4, '0000-00-00', 17, 2, 222.000, 22.000, 4),
(16, 1, 4, '2024-05-28', 17, 3, 334.000, 3434.000, 0),
(17, 1, 4, '2024-05-28', 17, 3, 334.000, 3434.000, 4),
(18, 1, 4, '2024-05-28', 17, 4, 3.000, 33.000, 0),
(19, 1, 4, '2024-06-02', 17, 3, 33.000, 33.000, 33),
(20, 1, 4, '2024-05-27', 17, 3, 33.000, 33.000, 0),
(21, 1, 4, '2024-06-02', 17, 1, 11.000, 11.000, 2),
(22, 4, 4, '2024-05-27', 17, 1, 111.000, 111.000, 1),
(23, 1, 4, '2024-05-26', 17, 1, 22.000, 22.000, 22),
(24, 1, 4, '2024-05-26', 17, 1, 22.000, 22.000, 22),
(25, 1, 4, '2024-06-13', 17, 2, 22.000, 0.000, 0),
(26, 1, 4, '2024-05-27', 17, 2, 0.000, 0.000, 0),
(27, 1, 4, '2024-05-28', 17, 2, 0.000, 0.000, 0),
(28, 2, 4, '2024-05-26', 17, 3, 33.000, 33.000, 3),
(29, 1, 4, '2024-05-27', 17, 2, 22.000, 22.000, 22),
(30, 4, 4, '2024-05-27', 17, 3, 222.000, 22.000, 0),
(31, 1, 4, '2024-06-01', 17, 2, 0.000, 0.000, 0),
(32, 1, 4, '2024-05-26', 17, 2, 222.000, 22.000, 22),
(33, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(34, 1, 4, '0000-00-00', 6, 1, 0.000, 0.000, 0),
(35, 1, 4, '0000-00-00', 6, 1, 0.000, 0.000, 0),
(36, 1, 4, '0000-00-00', 6, 1, 0.000, 0.000, 0),
(37, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(38, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(39, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(40, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(41, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(42, 4, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(43, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(44, 1, 4, '0000-00-00', 17, 22, 0.000, 0.000, 0),
(45, 1, 4, '0000-00-00', 17, 23, 0.000, 0.000, 0),
(46, 1, 4, '0000-00-00', 17, 23, 0.000, 0.000, 0),
(47, 1, 4, '0000-00-00', 17, 23, 0.000, 0.000, 0),
(48, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(49, 5, 4, '2024-05-28', 17, 3, 333.000, 33.000, 333),
(50, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(51, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(52, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(53, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(54, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(55, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(56, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(57, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(58, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(59, 1, 4, '0000-00-00', 17, 11, 0.000, 11.000, 0),
(60, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(61, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(62, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(63, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0),
(64, 1, 4, '0000-00-00', 17, 1, 0.000, 0.000, 0),
(65, 1, 4, '0000-00-00', 17, 2, 0.000, 0.000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

DROP TABLE IF EXISTS `tbl_staff`;
CREATE TABLE IF NOT EXISTS `tbl_staff` (
  `StaffId` int NOT NULL AUTO_INCREMENT,
  `Staffname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sex` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `POB` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Jobtitle` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Photo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`StaffId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`StaffId`, `Staffname`, `sex`, `DOB`, `POB`, `Jobtitle`, `Address`, `Phone`, `Email`, `Photo`, `Username`, `Password`, `Status`) VALUES
(1, 'vann', 'Male', '2024-02-14', 'bmc', 'IT', ' bmc', '09386622', 'vann@gmail.com', '1708533372.jpg', 'admin', 'd41d8cd98f00b204e9800998ecf8427e', 'Enable'),
(2, 'phearom', 'Male', '2024-01-29', 'BMC', 'IT', ' BMC', '09886783', 'phearoum', '1708533237.jpg', 'admin', 'd41d8cd98f00b204e9800998ecf8427e', 'Disable'),
(3, 'ddd', 'Male', '2024-04-23', 'dd', 'it', ' dd', '0897', 'ddd', '1708746414.jpg', 'admin', '202cb962ac59075b964b07152d234b70', 'Enable'),
(4, 'vannak123', 'Male', '2024-04-09', 'PP', 'IT', ' PP', '098765', 'vannak@gmail.coom', '1715414446.jpg', 'vannakbtb', 'd41d8cd98f00b204e9800998ecf8427e', 'Enable'),
(5, 'vannak', 'Male', '2024-04-29', 'BMC', 'IT', ' BMC', '098765434567', 'vannak@gmail.com', '1715675007.png', 'vannak', 'd41d8cd98f00b204e9800998ecf8427e', 'Enable'),
(6, 'newname', 'Male', '2024-05-26', 'BTB', 'IT', ' BTB', '09886783', 'new@gmail.com', '1717783897.png', 'newname', 'd41d8cd98f00b204e9800998ecf8427e', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_storage`
--

DROP TABLE IF EXISTS `tbl_storage`;
CREATE TABLE IF NOT EXISTS `tbl_storage` (
  `StorageId` int NOT NULL AUTO_INCREMENT,
  `Storage` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Ram` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `color` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Status` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`StorageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_storage`
--

INSERT INTO `tbl_storage` (`StorageId`, `Storage`, `Ram`, `color`, `Status`) VALUES
(1, '128', '8', 'white', ''),
(2, '64', '32', 'Black', ''),
(3, '512', '64', 'pink', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

DROP TABLE IF EXISTS `tbl_supplier`;
CREATE TABLE IF NOT EXISTS `tbl_supplier` (
  `Supid` int NOT NULL AUTO_INCREMENT,
  `Supname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Sex` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `POB` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Jobtitle` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Companyname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Photo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Supid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`Supid`, `Supname`, `Sex`, `DOB`, `POB`, `Jobtitle`, `Companyname`, `Address`, `Phone`, `Email`, `Photo`) VALUES
(1, 'david', 'Male', '2024-01-14', 'BMC', 'IT support', 'apple', 'BMC', '098794556', 'gmail.com', '1705975290.jpg'),
(2, 'mey', 'Female', '2024-01-07', 'android', 'it', 'OPPO', 'BMC', '099977433', '@gmail.com', '1705975402.jpg'),
(3, 'mey', 'Male', '2024-01-07', 'android', 'it', 'OPPO', 'BMC', '099977433', '@gmail.com', '1705975657.jpg'),
(4, 'david', 'Female', '2024-01-07', 'android', 'it', 'OPPO', 'BMC', '099977433', '@gmail.com', '1717779136.png'),
(5, 'david', 'Female', '2024-01-07', 'android', 'it', 'OPPO', 'BMC', '099977433', '@gmail.com', '1717765256.jpg'),
(6, 'New', 'Male', '2024-01-15', 'BMC', 'IT support', 'VIVO', 'BMC', '0896784465', '@gmail.com', '1713973216.png'),
(7, 'dfsa', 'Female', '2024-01-07', 'dfsa', 'dfsa', 'sadf', 'dfas', '45335', '@gmail.com', '1713973205.png'),
(10, 'Newname', 'Female', '2024-05-26', 'BTB', 'IT', 'IOS', 'BTB', '09978686', 'newname@gmail.com', '1717766030.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `U_name` varchar(50) NOT NULL,
  `U_email` varchar(100) NOT NULL,
  `U_pass` varchar(100) NOT NULL,
  `U_type` varchar(50) NOT NULL,
  `U_ip` int NOT NULL,
  `code` int NOT NULL,
  `status` int NOT NULL,
  `timelogin` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `U_name`, `U_email`, `U_pass`, `U_type`, `U_ip`, `code`, `status`, `timelogin`) VALUES
(1, 'david', 'david@gamail.com', '123', 'admin', 1, 123, 0, '2024-02-19'),
(2, 'kimlon', 'kimlon@gamail.com', '123', '', 0, 0, 0, '0000-00-00'),
(3, 'kimlon', 'kimlon@gamail.com', '123', '', 0, 0, 0, '0000-00-00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`BrandId`) REFERENCES `tbl_brand` (`BrandId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD CONSTRAINT `tbl_purchase_ibfk_1` FOREIGN KEY (`StaffId`) REFERENCES `tbl_staff` (`StaffId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_purchase_ibfk_2` FOREIGN KEY (`SupId`) REFERENCES `tbl_supplier` (`Supid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  ADD CONSTRAINT `tbl_purchase_detail_ibfk_1` FOREIGN KEY (`PurchaseId`) REFERENCES `tbl_purchase` (`PurchaseId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_purchase_detail_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `tbl_product` (`ProductId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_purchase_detail_ibfk_3` FOREIGN KEY (`StorageId`) REFERENCES `tbl_storage` (`StorageId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbl_sale_detail`
--
ALTER TABLE `tbl_sale_detail`
  ADD CONSTRAINT `tbl_sale_detail_ibfk_1` FOREIGN KEY (`SaleID`) REFERENCES `tbl_sell` (`SellID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_sale_detail_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `tbl_product` (`ProductId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbl_sell`
--
ALTER TABLE `tbl_sell`
  ADD CONSTRAINT `tbl_sell_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `tbl_staff` (`StaffId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_sell_ibfk_2` FOREIGN KEY (`CumstomID`) REFERENCES `tbl_cumstomer` (`CumstomID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
