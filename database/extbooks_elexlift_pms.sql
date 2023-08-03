-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2023 at 12:04 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `extbooks_elexlift_pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `AttachmentID` int(11) NOT NULL,
  `InvoiceNo` varchar(25) DEFAULT NULL,
  `FileName` varchar(75) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `CompanyID` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TRN` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'tax registration no',
  `Currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` text COLLATE utf8mb4_unicode_ci,
  `Logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BackgroundLogo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DigitalSignature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EstimateInvoiceTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SaleInvoiceTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeliveryChallanTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreditNoteTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PurchaseInvoiceTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DebitNoteTitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`CompanyID`, `Name`, `Name2`, `TRN`, `Currency`, `Mobile`, `Contact`, `Email`, `Website`, `Address`, `Logo`, `BackgroundLogo`, `Signature`, `DigitalSignature`, `EstimateInvoiceTitle`, `SaleInvoiceTitle`, `DeliveryChallanTitle`, `CreditNoteTitle`, `PurchaseInvoiceTitle`, `DebitNoteTitle`, `created_at`, `updated_at`) VALUES
(1, 'ELEXLIFT', 'ELEVATOR & COMPONENTS', '123456789', 'AED', NULL, '+971 58 890 9073', 'info@gmail.com', 'https://elexlift.com/', 'Office #1807 Clover Bay Tower, Business Bay - Dubai5 Street - Ras Al Khor Industrial Area 1 Dubai - United Arab Emirates5 Street - Ras Al Khor Industrial Area 1 Dubai - United Arab Emirates', '1690966338.png', '1690966338.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-28 09:46:01', '2023-07-28 09:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyID` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `Name2` varchar(255) DEFAULT NULL,
  `TRN` varchar(150) DEFAULT NULL COMMENT 'tax registration no',
  `Currency` varchar(3) DEFAULT NULL,
  `Mobile` varchar(75) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL,
  `BackgroundLogo` varchar(255) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Signature` varchar(255) DEFAULT NULL,
  `DigitalSignature` varchar(255) DEFAULT NULL,
  `EstimateInvoiceTitle` varchar(150) DEFAULT NULL,
  `SaleInvoiceTitle` varchar(150) DEFAULT NULL,
  `DeliveryChallanTitle` varchar(150) DEFAULT NULL,
  `CreditNoteTitle` varchar(150) DEFAULT NULL,
  `PurchaseInvoiceTitle` varchar(150) DEFAULT NULL,
  `DebitNoteTitle` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `Name`, `Name2`, `TRN`, `Currency`, `Mobile`, `Contact`, `Email`, `Website`, `Address`, `Logo`, `BackgroundLogo`, `CreatedDate`, `UpdatedDate`, `Signature`, `DigitalSignature`, `EstimateInvoiceTitle`, `SaleInvoiceTitle`, `DeliveryChallanTitle`, `CreditNoteTitle`, `PurchaseInvoiceTitle`, `DebitNoteTitle`) VALUES
(1, 'Extensive IT Services', '(PVT) LTD', '123456789', 'AED', NULL, '+971 4 584 8310', 'info@eits.ae', 'www.eits.ae', 'Office #1807 Clover Bay Tower, Business Bay - Dubai', '1680632089.png', '1680632089.png', '2023-04-04 18:14:49', '2023-04-04 18:14:49', '1680632089.png', '<h2><strong>Finance Director,</strong></h2>\r\n\r\n<p><strong>Kashif</strong></p>', 'Quotation', 'Sale Inoice by', 'Delivery Note', 'Credit Note', 'Purchase Bill', 'Debit Note');

-- --------------------------------------------------------

--
-- Table structure for table `estimate_detail`
--

CREATE TABLE `estimate_detail` (
  `EstimateDetailID` int(11) NOT NULL,
  `EstimateMasterID` int(11) NOT NULL,
  `EstimateNo` varchar(10) DEFAULT NULL,
  `EstimateDate` date DEFAULT NULL,
  `ItemID` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `DiscountType` double(8,2) DEFAULT NULL,
  `Gross` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL,
  `DiscountAmountItem` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `estimate_detail`
--

INSERT INTO `estimate_detail` (`EstimateDetailID`, `EstimateMasterID`, `EstimateNo`, `EstimateDate`, `ItemID`, `Description`, `Qty`, `Rate`, `TaxPer`, `Tax`, `Discount`, `DiscountType`, `Gross`, `Total`, `DiscountAmountItem`) VALUES
(1, 1, 'EST-00001', '2022-09-08', 10, 'fsdfsdf', 1, 100.00, 5.00, 5.00, NULL, NULL, NULL, 105.00, NULL),
(2, 2, 'EST-00002', '2022-09-10', 17, NULL, 25, 1017.00, 5.00, 50.85, NULL, NULL, NULL, 25475.85, NULL),
(3, 2, 'EST-00002', '2022-09-10', 9, NULL, 1, 99.00, 5.00, 4.95, NULL, NULL, NULL, 103.95, NULL),
(4, 2, 'EST-00002', '2022-09-10', 9, NULL, 1, 99.00, 5.00, 4.95, NULL, NULL, NULL, 103.95, NULL),
(5, 3, 'EST-00003', '2022-10-25', 7, NULL, 1, 55.00, 4.76, 2.62, NULL, NULL, NULL, 55.00, NULL),
(6, 3, 'EST-00003', '2022-10-25', NULL, NULL, 1, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL),
(7, 4, 'EST-00004', '2022-10-25', 7, NULL, 1, 55.00, 4.76, 2.62, NULL, NULL, NULL, 55.00, NULL),
(11, 5, 'EST-00005', NULL, 9, NULL, 1, 99.00, 4.76, 4.71, 0.00, 1.00, 99.00, 99.00, 0.00),
(12, 5, 'EST-00005', NULL, 12, NULL, 1, 1012.00, 4.76, 48.17, 0.00, 1.00, 1012.00, 963.83, 0.00),
(13, 8, 'EST-00006', '2023-04-04', 22, NULL, 1, 100.00, 0.00, 0.00, 0.00, 1.00, 100.00, 100.00, 0.00),
(14, 9, 'EST-00007', '2023-04-04', 22, NULL, 1, 100.00, 4.76, 4.76, 0.00, 1.00, 100.00, 100.00, 0.00),
(15, 10, 'EST-00008', '2023-04-04', 25, NULL, 1, 36.00, 0.00, 0.00, 0.00, 1.00, 36.00, 36.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `estimate_master`
--

CREATE TABLE `estimate_master` (
  `EstimateMasterID` int(11) NOT NULL,
  `EstimateNo` varchar(10) DEFAULT NULL,
  `PartyID` int(11) DEFAULT NULL,
  `WalkinCustomerName` varchar(55) DEFAULT NULL,
  `PlaceOfSupply` varchar(25) DEFAULT NULL,
  `ReferenceNo` varchar(25) DEFAULT NULL,
  `EstimateDate` date DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `SubTotal` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `TaxType` varchar(25) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Shipping` double(8,2) DEFAULT NULL,
  `GrandTotal` double(8,2) DEFAULT NULL,
  `CustomerNotes` varchar(255) DEFAULT NULL,
  `DescriptionNotes` varchar(255) DEFAULT NULL,
  `TermAndCondition` varchar(255) DEFAULT NULL,
  `File` varchar(75) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estimate_master`
--

INSERT INTO `estimate_master` (`EstimateMasterID`, `EstimateNo`, `PartyID`, `WalkinCustomerName`, `PlaceOfSupply`, `ReferenceNo`, `EstimateDate`, `Date`, `ExpiryDate`, `SubTotal`, `TaxPer`, `Tax`, `TaxType`, `Total`, `DiscountPer`, `Discount`, `Shipping`, `GrandTotal`, `CustomerNotes`, `DescriptionNotes`, `TermAndCondition`, `File`, `UserID`, `Subject`) VALUES
(1, 'EST-00001', 1002, '0', NULL, '3434', '2022-09-08', '2022-09-08', '2022-09-08', 105.00, 0.00, 5.00, 'TaxInclusive', 105.00, 0.00, 0.00, 0.00, 105.00, 'Thanks for your business.', NULL, NULL, NULL, 1, 'sdf'),
(2, 'EST-00002', 1002, '0', NULL, '12654', '2022-09-10', '2022-09-10', '2022-09-11', 25683.75, 0.00, 60.75, 'TaxExclusive', 25183.75, 1.95, 500.00, 0.00, 25683.75, 'Thanks for your business.', NULL, NULL, NULL, 1, 'abc'),
(3, 'EST-00003', 1002, NULL, NULL, NULL, '2022-10-25', '2022-10-25', '2022-10-25', 52.38, NULL, 2.62, NULL, 49.38, 5.73, 3.00, 0.00, 52.00, 'Thanks for your business.', NULL, NULL, NULL, 1, NULL),
(4, 'EST-00004', 1002, NULL, NULL, NULL, '2022-10-25', '2022-10-25', '2022-10-25', 55.00, NULL, 2.62, 'TaxExclusive', 55.00, 0.00, 0.00, 0.00, 57.62, 'Thanks for your business.', NULL, NULL, NULL, 1, NULL),
(5, 'EST-00005', 1, NULL, NULL, NULL, '2022-10-25', '2022-10-25', '2022-10-25', 1062.83, NULL, 52.88, 'TaxInclusive', 961.33, 9.55, 101.50, 0.00, 1014.21, 'Thanks for your business.', NULL, NULL, NULL, 1, NULL),
(6, 'EST-00006', 1002, '564', NULL, NULL, '2023-04-04', '2023-04-04', '2023-04-04', 100.00, NULL, 0.00, 'TaxExclusive', 100.00, 0.00, 0.00, 0.00, 100.00, 'Thanks for your business.', NULL, NULL, NULL, 1, ';dssdf'),
(8, 'EST-00006', 1002, '564', NULL, NULL, '2023-04-04', '2023-04-04', '2023-04-04', 100.00, NULL, 0.00, 'TaxExclusive', 100.00, 0.00, 0.00, 0.00, 100.00, 'Thanks for your business.', NULL, NULL, NULL, 1, ';dssdf'),
(9, 'EST-00007', 2214, NULL, NULL, NULL, '2023-04-04', '2023-04-04', '2023-04-04', 100.00, NULL, 4.76, 'TaxExclusive', 100.00, 0.00, 0.00, 0.00, 104.76, 'Thanks for your business.', NULL, NULL, NULL, 1, NULL),
(10, 'EST-00008', 1002, NULL, NULL, NULL, '2023-04-04', '2023-04-04', '2023-04-04', 36.00, NULL, 0.00, 'TaxExclusive', 36.00, 0.00, 0.00, 0.00, 36.00, 'Thanks for your business.', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` int(11) NOT NULL,
  `ItemType` varchar(55) DEFAULT NULL,
  `ItemCode` varchar(5) DEFAULT NULL,
  `ItemName` varchar(55) DEFAULT NULL,
  `UnitName` varchar(10) DEFAULT NULL,
  `Taxable` varchar(10) DEFAULT NULL,
  `Percentage` double(8,2) DEFAULT NULL,
  `CostPrice` double(8,2) DEFAULT NULL,
  `CostChartofAccountID` int(11) DEFAULT NULL,
  `CostDescription` varchar(255) DEFAULT NULL,
  `SellingPrice` double(8,2) DEFAULT NULL,
  `SellingChartofAccountID` int(11) DEFAULT NULL,
  `SellingDescription` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `ItemType`, `ItemCode`, `ItemName`, `UnitName`, `Taxable`, `Percentage`, `CostPrice`, `CostChartofAccountID`, `CostDescription`, `SellingPrice`, `SellingChartofAccountID`, `SellingDescription`, `updated_at`, `created_at`) VALUES
(22, NULL, NULL, 'HANDLING', NULL, 'Yes', 5.00, 80.00, NULL, NULL, 100.00, NULL, NULL, NULL, NULL),
(23, NULL, NULL, 'Malaysia Silver Pkg', NULL, 'No', NULL, 5000.00, NULL, NULL, 5500.00, NULL, NULL, NULL, NULL),
(24, NULL, NULL, 'Sales', NULL, 'No', NULL, 80.00, NULL, NULL, 80.00, NULL, NULL, NULL, NULL),
(25, NULL, NULL, '16mm Silver', NULL, 'No', NULL, 42.00, NULL, NULL, 36.00, NULL, NULL, NULL, NULL),
(26, NULL, NULL, '16mm Golden', NULL, 'No', NULL, 42.00, NULL, NULL, 36.00, NULL, NULL, NULL, NULL),
(27, NULL, NULL, '17mm Silver', NULL, 'No', NULL, 56.00, NULL, NULL, 48.00, NULL, NULL, NULL, NULL),
(28, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-02 23:58:42', '2023-02-02 23:58:42'),
(29, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03 00:09:37', '2023-02-03 00:09:37'),
(30, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03 00:12:07', '2023-02-03 00:12:07'),
(31, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03 00:12:13', '2023-02-03 00:12:13'),
(32, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03 00:12:15', '2023-02-03 00:12:15'),
(33, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03 00:12:18', '2023-02-03 00:12:18'),
(34, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03 00:12:19', '2023-02-03 00:12:19'),
(35, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03 00:12:24', '2023-02-03 00:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `EstimateNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_steps` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overspeed_governer_voltage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brake_voltage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encoder_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_entrance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `door_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_materials` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_details` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','in-active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `JobStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `EstimateNo`, `name`, `controller_type`, `no_of_steps`, `overspeed_governer_voltage`, `brake_voltage`, `moter`, `encoder_type`, `no_of_entrance`, `resue`, `delivery_date`, `door_type`, `file`, `other_materials`, `additional_details`, `status`, `JobStatus`, `created_by`, `created_at`, `updated_at`) VALUES
(5, 'EST-00001', 'Ahsan Elahi', 'MR', '2', '48V AC', 'Brake Voltage', 'Moter', 'ECN 1313', '2', 'with', '2023-07-31', 'Fermator', '1691041544.pdf', '[\"Intercom\",\"Load sensor\"]', 'EstimateNo', 'active', 'In-Progress', 1, '2023-07-29 05:28:56', '2023-07-29 05:28:56'),
(6, 'EST-00002', 'Meeting with Sale Team', 'MRL', '2', '48V AC', 'Brake Voltage', 'Moter', 'ECN 1313', '1', 'with', '2023-07-29', 'Fermator', '1690631067.jpg', '[\"4 NO (sdfs up,sdfs dn,RLV,DZ)\",\"1 NC (EM)\",\"2 Magnet 120cm\"]', 'Their Comments', 'active', 'Pending', 1, '2023-07-29 17:44:27', '2023-07-29 17:44:27'),
(7, 'EST-00002', 'Move 10 Kg from Place A to B', 'MRL', '2', '48V AC', 'Brake Voltage', 'Moter', 'ECN 1313', '1', 'with', '2023-08-09', 'Fermator', '1690803711.jpg', '[\"2 limit switch (final limit)\",\"2 Magnet 120cm\"]', 'Additional Details Additional Details*', 'active', 'Pending', 1, '2023-07-31 17:41:51', '2023-07-31 17:41:51'),
(8, 'EST-00004', 'Meeting on PMS', 'MRL', '3', '48V AC', 'Brake Voltage', 'Moter', 'ECN 1313', '1', 'with', '2023-08-07', 'Fermator', '1690889021.jpg', '[\"2 bistable (eos up,dn)\",\"2 limit switch (eos up,dn)\",\"2 limit switch (final limit)\"]', 'Additional Details Additional Details', 'active', 'Reviewed', 1, '2023-08-01 17:23:41', '2023-08-01 17:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `LabelID` int(11) NOT NULL,
  `OrderNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ClientName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerOrderDate` date DEFAULT NULL,
  `UnitNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LabelDeails` text COLLATE utf8_unicode_ci NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`LabelID`, `OrderNumber`, `ClientName`, `Content`, `CustomerOrderDate`, `UnitNumber`, `Description`, `LabelDeails`, `CreatedAt`) VALUES
(1, '123123123', 'Ahsan El;ah', 'Genrating Barcode', '2023-08-02', '00998', 'Checking the first phase of Label', '123123123\r\nAhsan El;ah\r\nGenrating Barcode\r\n2023-08-02\r\n00998\r\nChecking the first phase of Label', '2023-08-02 10:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_07_22_073017_create_jobs_table', 1),
(4, '2023_07_24_140422_create_user_jobs_table', 1),
(5, '2023_07_24_145348_create_notifications_table', 1),
(6, '2023_07_28_125134_create_companies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `job_id`, `type`, `read`, `created_at`, `updated_at`) VALUES
(7, 2, 5, 'New Job Assigned to You', 1, '2023-07-29 05:28:56', '2023-07-29 17:39:34'),
(8, 1, 5, 'Status Updated to In Progress', 1, '2023-07-29 17:40:18', '2023-07-29 17:40:45'),
(9, 2, 6, 'New Job Assigned to You', 1, '2023-07-29 17:44:27', '2023-07-29 17:45:13'),
(10, 1, 5, 'Status Updated to In-Progress', 0, '2023-07-31 17:39:26', '2023-07-31 17:39:26'),
(11, 3, 7, 'New Job Assigned to You', 0, '2023-07-31 17:41:51', '2023-07-31 17:41:51'),
(12, 2, 8, 'New Job Assigned to You', 1, '2023-08-01 17:23:41', '2023-08-01 17:26:31'),
(13, 1, 8, 'Status Updated to In-Progress', 1, '2023-08-01 17:28:41', '2023-08-01 17:29:03'),
(14, 1, 8, 'Status Updated to Reviewed', 0, '2023-08-01 17:36:15', '2023-08-01 17:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `PartyID` int(11) NOT NULL,
  `PartyName` varchar(150) DEFAULT NULL,
  `TRN` varchar(150) DEFAULT '',
  `Address` varchar(75) DEFAULT NULL,
  `City` varchar(175) DEFAULT NULL,
  `Mobile` varchar(150) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Website` varchar(150) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `InvoiceDueDays` int(11) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`PartyID`, `PartyName`, `TRN`, `Address`, `City`, `Mobile`, `Phone`, `Email`, `Website`, `Active`, `InvoiceDueDays`, `eDate`) VALUES
(1002, 'kashif mushtaq', '6789', 'Kashif House, Khyber colony No 1, Tehkal Payan', 'Peshawar', '+923349047993', '+923349047993', 'kashif@inu.edu.pk', 'teqholic.com', 'No', 5, '2022-01-16 17:59:43'),
(1012, 'SAJID SB PAK', '1256', 'Kashif House, Khyber colony No 1, Tehkal Payan', 'Peshawar', NULL, '+923349047993', 'kashif@inu.edu.pk', NULL, 'Yes', 90, '2022-01-16 17:59:49'),
(1023, 'LIGHT SPEED', '1256', NULL, 'Peshawar', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:58'),
(1044, 'MALIK MAQSOOD AGENT', '1256', NULL, 'Peshawar', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:20'),
(1053, 'SADAF TRAVELS', '1256', NULL, 'Peshawar', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:46'),
(1576, 'COZMO  TRAVEL', '1256', NULL, 'Peshawar', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:23'),
(1680, 'KSA', '1256', NULL, 'Peshawar', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:55'),
(1700, 'MESSZAN TRV', '1256', NULL, 'PAF', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:34'),
(2213, 'Kamal Mehmood', '1256', 'Kashif House, Khyber colony No 1, Tehkal Payan', 'PAF', NULL, '+923349047993', 'kashif@inu.edu.pk', NULL, 'Yes', NULL, '2022-03-06 04:14:26'),
(2214, 'ahsan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2023-04-04 06:38:19'),
(2215, 'Hungry At Home DMCC', NULL, 'DXB', 'Dubai', NULL, NULL, NULL, NULL, 'Yes', NULL, '2023-05-11 11:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sticker`
--

CREATE TABLE `sticker` (
  `stickerid` int(11) NOT NULL,
  `itemid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `TaxID` int(11) NOT NULL,
  `TaxPer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Section` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`TaxID`, `TaxPer`, `Description`, `Section`) VALUES
(1, '0', '[0%] Tax ', 'Invoice'),
(2, '5', '[4.76%] Tax', 'Invoice'),
(3, '0', '[0%] Tax ', 'Estimate'),
(4, '4.76', '[5%] Tax', 'Estimate');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` bigint(20) UNSIGNED NOT NULL,
  `FullName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `FullName`, `Email`, `Password`, `UserType`, `Active`, `eDate`) VALUES
(1, 'Kashif Mushtaq', 'demo@extbooks.com', '123456', 'Admin', 'Yes', NULL),
(2, 'User 1', 'user@extbooks.com', '123456', 'User', 'Yes', NULL),
(3, 'User 2', 'user2@extbooks.com', '123456', 'User', 'Yes', NULL),
(4, 'User 3', 'user3@extbooks.com', '123456', 'User', 'Yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_jobs`
--

CREATE TABLE `user_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','in-progress','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `reply` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_jobs`
--

INSERT INTO `user_jobs` (`id`, `user_id`, `job_id`, `status`, `reply`, `created_at`, `updated_at`) VALUES
(5, 2, 5, 'pending', NULL, NULL, NULL),
(6, 2, 6, 'pending', NULL, NULL, NULL),
(7, 3, 7, 'pending', NULL, NULL, NULL),
(8, 2, 8, 'pending', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_job_reply`
--

CREATE TABLE `user_job_reply` (
  `ReplyID` int(11) NOT NULL,
  `JobID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `UserReply` text COLLATE utf8mb4_unicode_ci,
  `UserJobStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_job_reply`
--

INSERT INTO `user_job_reply` (`ReplyID`, `JobID`, `UserID`, `UserReply`, `UserJobStatus`, `CreatedAt`) VALUES
(5, 4, 2, NULL, 'In-Progress', '2023-07-29 14:24:40'),
(4, 2, 2, NULL, 'In-Progress', '2023-07-29 13:09:05'),
(6, 5, 2, NULL, 'In-Progress', '2023-07-29 05:40:18'),
(7, 5, 2, NULL, 'In-Progress', '2023-07-31 05:39:26'),
(8, 8, 2, NULL, 'In-Progress', '2023-08-01 05:28:41'),
(9, 8, 2, NULL, 'Reviewed', '2023-08-01 05:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `RoleId` int(11) NOT NULL,
  `BranchID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(10) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`RoleId`, `BranchID`, `UserID`, `Table`, `Action`, `Allow`) VALUES
(1, 1, 1, 'Invoice', 'List', 'Y'),
(2, 1, 1, 'Invoice', 'Create', 'Y'),
(3, 1, 1, 'Invoice', 'Update', 'Y'),
(4, 1, 1, 'Invoice', 'Delete', 'Y'),
(5, 1, 1, 'Invoice', 'View', 'Y'),
(6, 1, 1, 'Invoice', 'PDF', 'Y'),
(7, 1, 1, 'Voucher', 'List', 'Y'),
(8, 1, 1, 'Voucher', 'Create', 'Y'),
(9, 1, 1, 'Voucher', 'Update', 'Y'),
(10, 1, 1, 'Voucher', 'Delete', 'Y'),
(11, 1, 1, 'Voucher', 'View', 'Y'),
(12, 1, 1, 'Petty Cash', 'List', 'Y'),
(13, 1, 1, 'Petty Cash', 'Create', 'Y'),
(14, 1, 1, 'Petty Cash', 'Update', 'Y'),
(15, 1, 1, 'Petty Cash', 'Delete', 'Y'),
(16, 1, 1, 'Petty Cash', 'View', 'Y'),
(17, 1, 1, 'Adjustment Balance', 'Create', 'Y'),
(18, 1, 1, 'Chart of Account', 'List / Create', 'Y'),
(19, 1, 1, 'Chart of Account', 'Update', 'Y'),
(20, 1, 1, 'Chart of Account', 'Delete', 'Y'),
(21, 1, 1, 'Item/Inventory', 'List / Create', 'Y'),
(22, 1, 1, 'Item/Inventory', 'Update', 'Y'),
(23, 1, 1, 'Item/Inventory', 'Delete', 'Y'),
(24, 1, 1, 'Party / Customers', 'List / Create', 'Y'),
(25, 1, 1, 'Party / Customers', 'Update', 'Y'),
(26, 1, 1, 'Party / Customers', 'Delete', 'Y'),
(27, 1, 1, 'Supplier', 'List / Create', 'Y'),
(28, 1, 1, 'Supplier', 'Update', 'Y'),
(29, 1, 1, 'Supplier', 'Delete', 'Y'),
(30, 1, 1, 'User', 'List / Create', 'Y'),
(31, 1, 1, 'User', 'Update', 'Y'),
(32, 1, 1, 'User', 'Delete', 'Y'),
(33, 1, 1, 'User Rights', 'Assign', 'Y'),
(34, 1, 1, 'Party Ledger', 'View', 'Y'),
(35, 1, 1, 'Party Ledger', 'PDF', 'Y'),
(36, 1, 1, 'Party Balance', 'View', 'Y'),
(37, 1, 1, 'Party Balance', 'PDF', 'Y'),
(38, 1, 1, 'Yearly Report', 'View', 'Y'),
(39, 1, 1, 'Yearly Report', 'PDF', 'Y'),
(40, 1, 1, 'Ageing Report', 'View', 'Y'),
(41, 1, 1, 'Ageing Report', 'PDF', 'Y'),
(42, 1, 1, 'Party Analysis', 'View', 'Y'),
(43, 1, 1, 'Party Analysis', 'PDF', 'Y'),
(44, 1, 1, 'Party List', 'View', 'Y'),
(45, 1, 1, 'Party List', 'PDF', 'Y'),
(46, 1, 1, 'Outstanding Invoices', 'View', 'Y'),
(47, 1, 1, 'Outstanding Invoices', 'PDF', 'Y'),
(48, 1, 1, 'Supplier Ledger', 'View', 'Y'),
(49, 1, 1, 'Supplier Ledger', 'PDF', 'Y'),
(50, 1, 1, 'Supplier Balance', 'View', 'Y'),
(51, 1, 1, 'Supplier Balance', 'PDF', 'Y'),
(52, 1, 1, 'Sale Invoice', 'View', 'Y'),
(53, 1, 1, 'Sale Invoice', 'PDF', 'Y'),
(54, 1, 1, 'Ticket Register', 'View', 'Y'),
(55, 1, 1, 'Ticket Register', 'PDF', 'Y'),
(56, 1, 1, 'Airline Summary', 'View', 'Y'),
(57, 1, 1, 'Airline Summary', 'PDF', 'Y'),
(58, 1, 1, 'Sale Man Report', 'View', 'Y'),
(59, 1, 1, 'Sale Man Report', 'PDF', 'Y'),
(60, 1, 1, 'Tax Report', 'View', 'Y'),
(61, 1, 1, 'Tax Report', 'PDF', 'Y'),
(62, 1, 1, 'Sales Report', 'View', 'Y'),
(63, 1, 1, 'Sales Report', 'PDF', 'Y'),
(64, 1, 1, 'Voucher Report', 'View', 'Y'),
(65, 1, 1, 'Voucher Report', 'PDF', 'Y'),
(66, 1, 1, 'Cash Book', 'View', 'Y'),
(67, 1, 1, 'Cash Book', 'PDF', 'Y'),
(68, 1, 1, 'Day Book', 'View', 'Y'),
(69, 1, 1, 'Day Book', 'PDF', 'Y'),
(70, 1, 1, 'General Ledger', 'View', 'Y'),
(71, 1, 1, 'General Ledger', 'PDF', 'Y'),
(72, 1, 1, 'Trial Balance', 'View', 'Y'),
(73, 1, 1, 'Trial Balance', 'PDF', 'Y'),
(74, 1, 1, 'Trial with Activity', 'View', 'Y'),
(75, 1, 1, 'Trial with Activity', 'PDF', 'Y'),
(76, 1, 1, 'Yearly Summary', 'View', 'Y'),
(77, 1, 1, 'Yearly Summary', 'PDF', 'Y'),
(78, 1, 1, 'Profit & Loss', 'View', 'Y'),
(79, 1, 1, 'Profit & Loss', 'PDF', 'Y'),
(80, 1, 1, 'Balance Sheet', 'View', 'Y'),
(81, 1, 1, 'Balance Sheet', 'PDF', 'Y'),
(82, 1, 1, 'Invoice Summary', 'View', 'Y'),
(83, 1, 1, 'Invoice Summary', 'PDF', 'Y'),
(84, 1, 1, 'Party Wise Sale', 'View', 'Y'),
(85, 1, 1, 'Party Wise Sale', 'PDF', 'Y'),
(86, 1, 1, 'Employee', 'View', 'Y'),
(87, 1, 1, 'Employee', 'Create', 'Y'),
(88, 1, 1, 'Employee', 'Update', 'Y'),
(89, 1, 1, 'Employee', 'Delete', 'Y'),
(90, 1, 1, 'Employee', 'List', 'Y'),
(91, 1, 1, 'Employee', 'Detail', 'Y'),
(92, 1, 1, 'Import Attendance', 'Import', 'Y'),
(93, 1, 1, 'Salary', 'Make', 'Y'),
(94, 1, 1, 'Search Salary', 'List', 'Y'),
(95, 1, 1, 'Search Salary', 'Delete', 'Y'),
(96, 1, 1, 'Operation Manager', 'List/Create', 'Y'),
(97, 1, 1, 'Operation Manager', 'Update', 'Y'),
(98, 1, 1, 'Operation Manager', 'Delete', 'Y'),
(99, 1, 1, 'Operation Manager', 'View', 'Y'),
(100, 1, 1, 'Branch', 'Create/List', 'Y'),
(101, 1, 1, 'Branch', 'Update', 'Y'),
(102, 1, 1, 'Branch', 'Delete', 'Y'),
(103, 1, 1, 'Department', 'Create/List', 'Y'),
(104, 1, 1, 'Department', 'Update', 'Y'),
(105, 1, 1, 'Department', 'Delete', 'Y'),
(106, 1, 1, 'Job Title', 'Create/List', 'Y'),
(107, 1, 1, 'Job Title', 'Update', 'Y'),
(108, 1, 1, 'Job Title', 'Delete', 'Y'),
(109, 1, 1, 'Letter Template', 'Create / List', 'Y'),
(110, 1, 1, 'Letter Template', 'Update', 'Y'),
(111, 1, 1, 'Letter Template', 'Delete', 'Y'),
(112, 1, 1, 'Team Structure', 'List', 'Y'),
(113, 1, 1, 'Users', 'Create / List', 'Y'),
(114, 1, 1, 'Users', 'Update', 'Y'),
(115, 1, 1, 'Users', 'Delete', 'Y'),
(116, 1, 1, 'Employee Detail', 'List', 'Y'),
(117, 1, 1, 'Employee Detail', 'Files Upload/List', 'Y'),
(118, 1, 1, 'Employee Detail', 'File Delete', 'Y'),
(119, 1, 1, 'Employee Detail', 'Salary View', 'Y'),
(120, 1, 1, 'Employee Detail', 'Salary Commission View', 'Y'),
(121, 1, 1, 'Employee Detail', 'Letter Issue / Letter Issued', 'Y'),
(122, 1, 1, 'Employee Detail', 'Delete Issued Letter', 'Y'),
(123, 1, 1, 'Employee Detail', 'Print Issued Letter', 'Y'),
(124, 1, 1, 'Employee Detail', 'Leave Create / List', 'Y'),
(125, 1, 1, 'Employee Detail', 'Leave Delete', 'Y'),
(126, 1, 1, 'Employee Detail', 'Leave Edit', 'Y'),
(127, 1, 1, 'Employee Detail', 'Attendance View', 'Y'),
(128, 1, 1, 'Employee Detail', 'Warning Letter List', 'Y'),
(129, 1, 1, 'Employee Detail', 'Deposit', 'Y'),
(130, 1, 1, 'Employee Detail', 'Supervising', 'Y'),
(131, 1, 1, 'Employee Detail', 'Issued Letter Update', 'Y'),
(132, 1, 1, 'Team Hierarchy', 'View', 'Y');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_estimate_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_estimate_detail` (
`EstimateDetailID` int(11)
,`EstimateMasterID` int(11)
,`EstimateNo` varchar(10)
,`EstimateDate` date
,`ItemID` int(11)
,`ItemName` varchar(55)
,`Qty` int(11)
,`Rate` double(8,2)
,`Total` double(8,2)
,`Description` varchar(255)
,`TaxPer` double(8,2)
,`Tax` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_estimate_master`
-- (See below for the actual view)
--
CREATE TABLE `v_estimate_master` (
`EstimateMasterID` int(11)
,`EstimateNo` varchar(10)
,`PartyID` int(11)
,`PartyName` varchar(150)
,`PlaceOfSupply` varchar(25)
,`ReferenceNo` varchar(25)
,`EstimateDate` date
,`Total` double(8,2)
,`CustomerNotes` varchar(255)
,`TermAndCondition` varchar(255)
,`File` varchar(75)
,`UserID` int(11)
,`Subject` varchar(255)
,`Address` varchar(75)
,`Phone` varchar(25)
,`Email` varchar(25)
,`Date` date
,`SubTotal` double(8,2)
,`TaxPer` double(8,2)
,`Tax` double(8,2)
,`DiscountPer` double(8,2)
,`Discount` double(8,2)
,`WalkinCustomerName` varchar(55)
,`Shipping` double(8,2)
,`DescriptionNotes` varchar(255)
,`ExpiryDate` date
,`GrandTotal` double(8,2)
,`TRN` varchar(150)
,`Mobile` varchar(150)
,`Website` varchar(150)
,`Active` varchar(3)
,`InvoiceDueDays` int(11)
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_sticker`
-- (See below for the actual view)
--
CREATE TABLE `v_sticker` (
`qty` decimal(32,0)
,`OrderNumber` varchar(255)
,`ClientName` varchar(255)
,`Content` varchar(255)
,`CustomerOrderDate` date
,`UnitNumber` varchar(255)
,`Description` varchar(255)
,`LabelDeails` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_users`
-- (See below for the actual view)
--
CREATE TABLE `v_users` (
`UserID` bigint(20) unsigned
,`FullName` varchar(191)
,`Email` varchar(191)
,`Password` varchar(191)
,`UserType` varchar(191)
,`eDate` timestamp
,`Active` varchar(191)
);

-- --------------------------------------------------------

--
-- Structure for view `v_estimate_detail`
--
DROP TABLE IF EXISTS `v_estimate_detail`;

Create Or Replace VIEW `v_estimate_detail`  AS SELECT `estimate_detail`.`EstimateDetailID` AS `EstimateDetailID`, `estimate_detail`.`EstimateMasterID` AS `EstimateMasterID`, `estimate_detail`.`EstimateNo` AS `EstimateNo`, `estimate_detail`.`EstimateDate` AS `EstimateDate`, `estimate_detail`.`ItemID` AS `ItemID`, `item`.`ItemName` AS `ItemName`, `estimate_detail`.`Qty` AS `Qty`, `estimate_detail`.`Rate` AS `Rate`, `estimate_detail`.`Total` AS `Total`, `estimate_detail`.`Description` AS `Description`, `estimate_detail`.`TaxPer` AS `TaxPer`, `estimate_detail`.`Tax` AS `Tax` FROM (`estimate_detail` join `item` on((`estimate_detail`.`ItemID` = `item`.`ItemID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_estimate_master`
--
DROP TABLE IF EXISTS `v_estimate_master`;

Create Or Replace VIEW `v_estimate_master`  AS SELECT `estimate_master`.`EstimateMasterID` AS `EstimateMasterID`, `estimate_master`.`EstimateNo` AS `EstimateNo`, `estimate_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `estimate_master`.`PlaceOfSupply` AS `PlaceOfSupply`, `estimate_master`.`ReferenceNo` AS `ReferenceNo`, `estimate_master`.`EstimateDate` AS `EstimateDate`, `estimate_master`.`Total` AS `Total`, `estimate_master`.`CustomerNotes` AS `CustomerNotes`, `estimate_master`.`TermAndCondition` AS `TermAndCondition`, `estimate_master`.`File` AS `File`, `estimate_master`.`UserID` AS `UserID`, `estimate_master`.`Subject` AS `Subject`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `estimate_master`.`Date` AS `Date`, `estimate_master`.`SubTotal` AS `SubTotal`, `estimate_master`.`TaxPer` AS `TaxPer`, `estimate_master`.`Tax` AS `Tax`, `estimate_master`.`DiscountPer` AS `DiscountPer`, `estimate_master`.`Discount` AS `Discount`, `estimate_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `estimate_master`.`Shipping` AS `Shipping`, `estimate_master`.`DescriptionNotes` AS `DescriptionNotes`, `estimate_master`.`ExpiryDate` AS `ExpiryDate`, `estimate_master`.`GrandTotal` AS `GrandTotal`, `party`.`TRN` AS `TRN`, `party`.`Mobile` AS `Mobile`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate` FROM (`estimate_master` join `party` on((`estimate_master`.`PartyID` = `party`.`PartyID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_sticker`
--
DROP TABLE IF EXISTS `v_sticker`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_ex0ajzd6qq`@`localhost` SQL SECURITY DEFINER VIEW `v_sticker`  AS SELECT sum(`sticker`.`qty`) AS `qty`, `labels`.`OrderNumber` AS `OrderNumber`, `labels`.`ClientName` AS `ClientName`, `labels`.`Content` AS `Content`, `labels`.`CustomerOrderDate` AS `CustomerOrderDate`, `labels`.`UnitNumber` AS `UnitNumber`, `labels`.`Description` AS `Description`, `labels`.`LabelDeails` AS `LabelDeails` FROM (`sticker` join `labels` on((`sticker`.`itemid` = `labels`.`OrderNumber`))) GROUP BY `sticker`.`itemid`, `labels`.`LabelID`, `labels`.`OrderNumber` ;

-- --------------------------------------------------------

--
-- Structure for view `v_users`
--
DROP TABLE IF EXISTS `v_users`;

Create Or Replace VIEW `v_users`  AS SELECT `user`.`UserID` AS `UserID`, `user`.`FullName` AS `FullName`, `user`.`Email` AS `Email`, `user`.`Password` AS `Password`, `user`.`UserType` AS `UserType`, `user`.`eDate` AS `eDate`, `user`.`Active` AS `Active` FROM `user` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`AttachmentID`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `estimate_detail`
--
ALTER TABLE `estimate_detail`
  ADD PRIMARY KEY (`EstimateDetailID`);

--
-- Indexes for table `estimate_master`
--
ALTER TABLE `estimate_master`
  ADD PRIMARY KEY (`EstimateMasterID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_created_by_foreign` (`created_by`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`LabelID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_job_id_foreign` (`job_id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`PartyID`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sticker`
--
ALTER TABLE `sticker`
  ADD PRIMARY KEY (`stickerid`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`TaxID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `user_email_unique` (`Email`);

--
-- Indexes for table `user_jobs`
--
ALTER TABLE `user_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_jobs_user_id_foreign` (`user_id`),
  ADD KEY `user_jobs_job_id_foreign` (`job_id`);

--
-- Indexes for table `user_job_reply`
--
ALTER TABLE `user_job_reply`
  ADD PRIMARY KEY (`ReplyID`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`RoleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `AttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `CompanyID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estimate_detail`
--
ALTER TABLE `estimate_detail`
  MODIFY `EstimateDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `estimate_master`
--
ALTER TABLE `estimate_master`
  MODIFY `EstimateMasterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `LabelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `PartyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2216;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sticker`
--
ALTER TABLE `sticker`
  MODIFY `stickerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `TaxID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_jobs`
--
ALTER TABLE `user_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_job_reply`
--
ALTER TABLE `user_job_reply`
  MODIFY `ReplyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `RoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
