-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2023 at 10:46 AM
-- Server version: 8.0.27
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `extbooks_worksuite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int NOT NULL,
  `FullName` varchar(75) DEFAULT NULL,
  `Email` varchar(75) DEFAULT NULL,
  `Password` varchar(55) DEFAULT NULL,
  `Active` varchar(10) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `FullName`, `Email`, `Password`, `Active`) VALUES
(1, 'Kashif', 'kashif@inu.edu.pk', '123456', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `AirLineID` int NOT NULL,
  `AirLineName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`AirLineID`, `AirLineName`) VALUES
(1, 'AKBAR TRAVEL'),
(2, 'AIR BLUE'),
(3, 'AL DIYAFA');

-- --------------------------------------------------------

--
-- Table structure for table `allowance_list`
--

CREATE TABLE `allowance_list` (
  `AllowanceListID` int NOT NULL,
  `AllowanceTitle` varchar(75) DEFAULT NULL,
  `AllowanceType` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowance_list`
--

INSERT INTO `allowance_list` (`AllowanceListID`, `AllowanceTitle`, `AllowanceType`) VALUES
(1, 'Basic Salary', 'Basic'),
(2, 'Home Rent Allowance', 'Allowance'),
(3, 'Transport Allowance', 'Allowance'),
(4, 'Other Allowance', 'Other'),
(5, 'Increment', 'Salary'),
(6, 'Bonus/Comission', 'Bonus');

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `AttachmentID` int NOT NULL,
  `InvoiceNo` varchar(25) DEFAULT NULL,
  `FileName` varchar(75) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` (`AttachmentID`, `InvoiceNo`, `FileName`, `eDate`) VALUES
(200, 'BP23030001', '3892381680082481.png', '2023-03-29 09:34:41'),
(201, NULL, '3069121680520397.png', '2023-04-03 11:13:17'),
(202, 'DC-00004', '9700861680590423.png', '2023-04-04 06:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint UNSIGNED NOT NULL,
  `EmployeeID` int NOT NULL,
  `EmployeeName` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Department` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateTime` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `EmployeeID`, `EmployeeName`, `Department`, `Status`, `DateTime`, `created_at`, `updated_at`) VALUES
(1066, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-01 08:47:18', NULL, NULL),
(1067, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:15:18', NULL, NULL),
(1068, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:15:22', NULL, NULL),
(1069, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-02 08:37:21', NULL, NULL),
(1070, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:47', NULL, NULL),
(1071, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-03 08:39:35', NULL, NULL),
(1072, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-04 08:28:31', NULL, NULL),
(1073, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-04 20:52:39', NULL, NULL),
(1074, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:10:52', NULL, NULL),
(1075, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:30', NULL, NULL),
(1076, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:10:03', NULL, NULL),
(1077, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:01:57', NULL, NULL),
(1078, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:16:51', NULL, NULL),
(1079, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-09 08:57:58', NULL, NULL),
(1080, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:12:33', NULL, NULL),
(1081, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-09 19:12:43', NULL, NULL),
(1082, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:07:38', NULL, NULL),
(1083, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-11 08:45:05', NULL, NULL),
(1084, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:15:20', NULL, NULL),
(1085, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:55:23', NULL, NULL),
(1086, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:13:00', NULL, NULL),
(1087, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-01 08:57:31', NULL, NULL),
(1088, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:15:03', NULL, NULL),
(1089, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:15:12', NULL, NULL),
(1090, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:03:52', NULL, NULL),
(1091, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:14', NULL, NULL),
(1092, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:25', NULL, NULL),
(1093, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:29', NULL, NULL),
(1094, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:43', NULL, NULL),
(1095, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:02:47', NULL, NULL),
(1096, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:13:15', NULL, NULL),
(1097, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:00:38', NULL, NULL),
(1098, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:43', NULL, NULL),
(1099, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:50', NULL, NULL),
(1100, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-06 13:54:08', NULL, NULL),
(1101, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:01:09', NULL, NULL),
(1102, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-08 08:56:13', NULL, NULL),
(1103, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:11:58', NULL, NULL),
(1104, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:01:59', NULL, NULL),
(1105, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:12:46', NULL, NULL),
(1106, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-10 08:57:14', NULL, NULL),
(1107, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:02:11', NULL, NULL),
(1108, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:15:09', NULL, NULL),
(1109, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:15:16', NULL, NULL),
(1110, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:01:21', NULL, NULL),
(1111, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:15:22', NULL, NULL),
(1112, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-16 08:57:50', NULL, NULL),
(1113, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:01:52', NULL, NULL),
(1114, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-17 08:49:57', NULL, NULL),
(1115, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-17 19:02:14', NULL, NULL),
(1116, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-18 08:53:59', NULL, NULL),
(1117, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:05:20', NULL, NULL),
(1118, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:34:56', NULL, NULL),
(1119, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:01:21', NULL, NULL),
(1120, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:50:19', NULL, NULL),
(1121, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:37:35', NULL, NULL),
(1122, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:10:58', NULL, NULL),
(1123, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:36:35', NULL, NULL),
(1124, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:02:04', NULL, NULL),
(1125, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:37:50', NULL, NULL),
(1126, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:02:24', NULL, NULL),
(1127, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-06 13:44:28', NULL, NULL),
(1128, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:01:17', NULL, NULL),
(1129, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:25:48', NULL, NULL),
(1130, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:05:07', NULL, NULL),
(1131, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:47:57', NULL, NULL),
(1132, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:48:11', NULL, NULL),
(1133, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:02:38', NULL, NULL),
(1134, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:24:58', NULL, NULL),
(1135, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:08:35', NULL, NULL),
(1136, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:32:12', NULL, NULL),
(1137, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:07:55', NULL, NULL),
(1138, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:41:12', NULL, NULL),
(1139, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:01:37', NULL, NULL),
(1140, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:45:00', NULL, NULL),
(1141, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-17 19:09:49', NULL, NULL),
(1142, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:45:47', NULL, NULL),
(1143, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:12:15', NULL, NULL),
(1144, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-01 18:52:15', NULL, NULL),
(1145, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:20:48', NULL, NULL),
(1146, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:06:06', NULL, NULL),
(1147, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:06:35', NULL, NULL),
(1148, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:02:49', NULL, NULL),
(1149, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:21:33', NULL, NULL),
(1150, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-04 18:55:34', NULL, NULL),
(1151, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:11:45', NULL, NULL),
(1152, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-05 18:56:05', NULL, NULL),
(1153, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:33:47', NULL, NULL),
(1154, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-08 18:55:37', NULL, NULL),
(1155, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-09 10:03:50', NULL, NULL),
(1156, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:02:31', NULL, NULL),
(1157, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:25:12', NULL, NULL),
(1158, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-10 18:59:25', NULL, NULL),
(1159, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:48:03', NULL, NULL),
(1160, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:08:00', NULL, NULL),
(1161, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-12 08:43:28', NULL, NULL),
(1162, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-12 18:59:39', NULL, NULL),
(1163, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:11:56', NULL, NULL),
(1164, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-16 18:56:17', NULL, NULL),
(1165, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-17 08:50:14', NULL, NULL),
(1166, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-17 19:20:16', NULL, NULL),
(1167, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-18 08:59:16', NULL, NULL),
(1168, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-18 18:56:13', NULL, NULL),
(1169, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:43:52', NULL, NULL),
(1170, 45, 'OLIVE', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:26:53', NULL, NULL),
(1171, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:55:33', NULL, NULL),
(1172, 45, 'OLIVE', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:18', NULL, NULL),
(1173, 45, 'OLIVE', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:23', NULL, NULL),
(1174, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-06 14:31:24', NULL, NULL),
(1175, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-06 14:31:33', NULL, NULL),
(1176, 45, 'OLIVE', 'FCB/SIMBA', 'Check-out', '2021-08-06 16:34:51', NULL, NULL),
(1177, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:55:25', NULL, NULL),
(1178, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:03:14', NULL, NULL),
(1179, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:03:18', NULL, NULL),
(1180, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:40:15', NULL, NULL),
(1181, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:05:07', NULL, NULL),
(1182, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:45:15', NULL, NULL),
(1183, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:05:21', NULL, NULL),
(1184, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:05:26', NULL, NULL),
(1185, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:31:59', NULL, NULL),
(1186, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:30', NULL, NULL),
(1187, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:35', NULL, NULL),
(1188, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:57:54', NULL, NULL),
(1189, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:07:04', NULL, NULL),
(1190, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:39:04', NULL, NULL),
(1191, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:07:29', NULL, NULL),
(1192, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-09 11:51:06', NULL, NULL),
(1193, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:17:46', NULL, NULL),
(1194, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:40:30', NULL, NULL),
(1195, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:43:18', NULL, NULL),
(1196, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:43:24', NULL, NULL),
(1197, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:39:23', NULL, NULL),
(1198, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:07:03', NULL, NULL),
(1199, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:34:07', NULL, NULL),
(1200, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:47:50', NULL, NULL),
(1201, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:24:50', NULL, NULL),
(1202, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-out', '2021-08-10 20:07:57', NULL, NULL),
(1203, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:43:27', NULL, NULL),
(1204, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:07:47', NULL, NULL),
(1205, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-16 10:30:49', NULL, NULL),
(1206, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:19:40', NULL, NULL),
(1207, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:43:44', NULL, NULL),
(1208, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:43:49', NULL, NULL),
(1209, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:02:40', NULL, NULL),
(1210, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:43:51', NULL, NULL),
(1211, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:14:21', NULL, NULL),
(1212, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:14:25', NULL, NULL),
(1213, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:41:03', NULL, NULL),
(1214, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:21:01', NULL, NULL),
(1215, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:38:41', NULL, NULL),
(1216, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:41:52', NULL, NULL),
(1217, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:01:15', NULL, NULL),
(1218, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:36:58', NULL, NULL),
(1219, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:19:01', NULL, NULL),
(1220, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:41:26', NULL, NULL),
(1221, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-12 11:17:35', NULL, NULL),
(1222, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:12:01', NULL, NULL),
(1223, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:45:03', NULL, NULL),
(1224, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:29:09', NULL, NULL),
(1225, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:39:11', NULL, NULL),
(1226, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:11:16', NULL, NULL),
(1227, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-01 10:00:00', NULL, NULL),
(1228, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:07:14', NULL, NULL),
(1229, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:51:20', NULL, NULL),
(1230, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:55:45', NULL, NULL),
(1231, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:05:30', NULL, NULL),
(1232, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:52:41', NULL, NULL),
(1233, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:43', NULL, NULL),
(1234, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:57:33', NULL, NULL),
(1235, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:10:07', NULL, NULL),
(1236, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:55:19', NULL, NULL),
(1237, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:55:22', NULL, NULL),
(1238, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:28:08', NULL, NULL),
(1239, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:53:18', NULL, NULL),
(1240, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:50:39', NULL, NULL),
(1241, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:06:03', NULL, NULL),
(1242, 50, 'YASHA', 'FCB/SIMBA', 'Overtime-Out', '2021-08-11 09:53:41', NULL, NULL),
(1243, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:53:45', NULL, NULL),
(1244, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:09:56', NULL, NULL),
(1245, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-12 10:02:30', NULL, NULL),
(1246, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:03:10', NULL, NULL),
(1247, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-17 19:42:21', NULL, NULL),
(1248, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-18 10:02:23', NULL, NULL),
(1249, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:05:13', NULL, NULL),
(1250, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:05:16', NULL, NULL),
(1251, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:53:44', NULL, NULL),
(1252, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:53:49', NULL, NULL),
(1253, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:53:54', NULL, NULL),
(1254, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:07:08', NULL, NULL),
(1255, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:07:29', NULL, NULL),
(1256, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:50:10', NULL, NULL),
(1257, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:06:42', NULL, NULL),
(1258, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:52:24', NULL, NULL),
(1259, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:45:56', NULL, NULL),
(1260, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:04:57', NULL, NULL),
(1261, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:51:56', NULL, NULL),
(1262, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:55', NULL, NULL),
(1263, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:59', NULL, NULL),
(1264, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-06 13:36:30', NULL, NULL),
(1265, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-06 19:03:22', NULL, NULL),
(1266, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:47:38', NULL, NULL),
(1267, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:47:43', NULL, NULL),
(1268, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:05:00', NULL, NULL),
(1269, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:47:40', NULL, NULL),
(1270, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:07:41', NULL, NULL),
(1271, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:48:36', NULL, NULL),
(1272, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:08:25', NULL, NULL),
(1273, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:56:26', NULL, NULL),
(1274, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:01:15', NULL, NULL),
(1275, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:48:42', NULL, NULL),
(1276, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:05:44', NULL, NULL),
(1277, 51, 'PALLAVI', 'FCB/SIMBA', 'Overtime-Out', '2021-08-17 19:05:12', NULL, NULL),
(1278, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:44:54', NULL, NULL),
(1279, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:03:33', NULL, NULL),
(1280, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:53:57', NULL, NULL),
(1281, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:49:31', NULL, NULL),
(1282, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:49:34', NULL, NULL),
(1283, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:34:08', NULL, NULL),
(1284, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:31:09', NULL, NULL),
(1285, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:26:42', NULL, NULL),
(1286, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:26:45', NULL, NULL),
(1287, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-03 20:06:51', NULL, NULL),
(1288, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:41:02', NULL, NULL),
(1289, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-06 14:31:35', NULL, NULL),
(1290, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:41', NULL, NULL),
(1291, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:46', NULL, NULL),
(1292, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:48', NULL, NULL),
(1293, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:51', NULL, NULL),
(1294, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:25:28', NULL, NULL),
(1295, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:25:37', NULL, NULL),
(1296, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:23:19', NULL, NULL),
(1297, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:23:21', NULL, NULL),
(1298, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:08', NULL, NULL),
(1299, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:12', NULL, NULL),
(1300, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-10 11:42:10', NULL, NULL),
(1301, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:45:48', NULL, NULL),
(1302, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:45:50', NULL, NULL),
(1303, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:38:12', NULL, NULL),
(1304, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:38:14', NULL, NULL),
(1305, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:39:28', NULL, NULL),
(1306, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:39:32', NULL, NULL),
(1307, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:17:59', NULL, NULL),
(1308, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:18:02', NULL, NULL),
(1309, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:18:04', NULL, NULL),
(1310, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:18:07', NULL, NULL),
(1311, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:31:07', NULL, NULL),
(1312, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:35:23', NULL, NULL),
(1313, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:11:38', NULL, NULL),
(1314, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:11:43', NULL, NULL),
(1315, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-18 10:00:11', NULL, NULL),
(1316, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-18 20:14:58', NULL, NULL),
(1317, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-18 20:15:00', NULL, NULL),
(1318, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:47:12', NULL, NULL),
(1319, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:49:53', NULL, NULL),
(1320, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:57:48', NULL, NULL),
(1321, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:30:56', NULL, NULL),
(1322, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:31:05', NULL, NULL),
(1323, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:44:53', NULL, NULL),
(1324, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-03 20:06:46', NULL, NULL),
(1325, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:43:29', NULL, NULL),
(1326, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:47:42', NULL, NULL),
(1327, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:49:08', NULL, NULL),
(1328, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:12:04', NULL, NULL),
(1329, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-06 14:30:44', NULL, NULL),
(1330, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:37', NULL, NULL),
(1331, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:57:50', NULL, NULL),
(1332, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:25:42', NULL, NULL),
(1333, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:48:35', NULL, NULL),
(1334, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:06', NULL, NULL),
(1335, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:54', NULL, NULL),
(1336, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:44:06', NULL, NULL),
(1337, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:33:16', NULL, NULL),
(1338, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-11 13:29:35', NULL, NULL),
(1339, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-11 13:29:40', NULL, NULL),
(1340, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:23:44', NULL, NULL),
(1341, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-16 10:03:00', NULL, NULL),
(1342, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-17 09:59:37', NULL, NULL),
(1343, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:11:34', NULL, NULL),
(1344, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:11:47', NULL, NULL),
(1345, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:59:15', NULL, NULL),
(1346, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-18 20:13:29', NULL, NULL),
(1347, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-01 18:31:21', NULL, NULL),
(1348, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:28:47', NULL, NULL),
(1349, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-02 18:37:50', NULL, NULL),
(1350, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-03 10:48:07', NULL, NULL),
(1351, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:36:02', NULL, NULL),
(1352, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:38:38', NULL, NULL),
(1353, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:27:16', NULL, NULL),
(1354, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-05 18:36:12', NULL, NULL),
(1355, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:38:28', NULL, NULL),
(1356, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:28:19', NULL, NULL),
(1357, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-09 18:36:30', NULL, NULL),
(1358, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:38:41', NULL, NULL),
(1359, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-10 18:33:51', NULL, NULL),
(1360, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:34:41', NULL, NULL),
(1361, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:33:11', NULL, NULL),
(1362, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-16 18:30:06', NULL, NULL),
(1363, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-17 18:32:23', NULL, NULL),
(1364, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:25:52', NULL, NULL),
(1365, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-18 18:35:38', NULL, NULL),
(1366, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:43:47', NULL, NULL),
(1367, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:22:02', NULL, NULL),
(1368, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:27:30', NULL, NULL),
(1369, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:30:13', NULL, NULL),
(1370, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:50:20', NULL, NULL),
(1371, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:33:20', NULL, NULL),
(1372, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:40:14', NULL, NULL),
(1373, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:27:09', NULL, NULL),
(1374, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:27:13', NULL, NULL),
(1375, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:09:33', NULL, NULL),
(1376, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-06 15:04:22', NULL, NULL),
(1377, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-06 21:03:12', NULL, NULL),
(1378, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:35:44', NULL, NULL),
(1379, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:11:38', NULL, NULL),
(1380, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:11:52', NULL, NULL),
(1381, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:24:47', NULL, NULL),
(1382, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:46', NULL, NULL),
(1383, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:50', NULL, NULL),
(1384, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:25:24', NULL, NULL),
(1385, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:29:07', NULL, NULL),
(1386, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-11 21:05:16', NULL, NULL),
(1387, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:39:43', NULL, NULL),
(1388, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:35:09', NULL, NULL),
(1389, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:35:21', NULL, NULL),
(1390, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:42:07', NULL, NULL),
(1391, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:44:50', NULL, NULL),
(1392, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:14:55', NULL, NULL),
(1393, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-18 20:00:58', NULL, NULL),
(1394, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:01:13', NULL, NULL),
(1395, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:39:15', NULL, NULL),
(1396, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:02:11', NULL, NULL),
(1397, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:34:23', NULL, NULL),
(1398, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:01:58', NULL, NULL),
(1399, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:39:28', NULL, NULL),
(1400, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:48', NULL, NULL),
(1401, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:51', NULL, NULL),
(1402, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-06 13:44:20', NULL, NULL),
(1403, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:46:35', NULL, NULL),
(1404, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:01:07', NULL, NULL),
(1405, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:01:12', NULL, NULL),
(1406, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:01:58', NULL, NULL),
(1407, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:48:14', NULL, NULL),
(1408, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:00:30', NULL, NULL),
(1409, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:56:45', NULL, NULL),
(1410, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:00:18', NULL, NULL),
(1411, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-11 10:11:17', NULL, NULL),
(1412, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:50:35', NULL, NULL),
(1413, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:35:37', NULL, NULL),
(1414, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:08:36', NULL, NULL),
(1415, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:49:59', NULL, NULL),
(1416, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-16 20:10:34', NULL, NULL),
(1417, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:38:41', NULL, NULL),
(1418, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:01:07', NULL, NULL),
(1419, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:50:13', NULL, NULL),
(1420, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:10:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `InvoiceDetailID` int NOT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `InvoiceNo` varchar(10) DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`InvoiceDetailID`, `InvoiceMasterID`, `InvoiceNo`, `ItemID`, `Description`, `SupplierID`, `PartyID`, `Qty`, `Rate`, `TaxPer`, `Tax`, `Total`) VALUES
(274, 133, 'TAX-00001', 9, NULL, NULL, 1002, 1, 99.00, 5.00, 4.95, 103.95),
(275, 134, 'TAX-00002', 10, NULL, NULL, 1002, 1, 100.00, 5.00, 5.00, 105.00),
(276, 135, 'TAX-00003', 10, 'dasd', NULL, 1002, 1, 100.00, 5.00, 5.00, 105.00),
(279, 137, 'CN-00001', 12, NULL, NULL, 1, 1, 1012.00, NULL, NULL, 1012.00),
(280, 138, 'TAX-00002', 10, NULL, NULL, 1002, 1, 100.00, 0.00, 0.00, 105.00),
(281, 139, 'TAX-00001', 10, NULL, NULL, 1002, 1, 100.00, 0.00, 0.00, 105.00),
(282, 140, 'TAX-00002', 11, NULL, NULL, 1002, 1, 1011.00, 0.00, 0.00, 1061.55);

-- --------------------------------------------------------

--
-- Table structure for table `bill_master`
--

CREATE TABLE `bill_master` (
  `InvoiceMasterID` int NOT NULL,
  `InvoiceNo` varchar(10) DEFAULT NULL,
  `InvoiceType` varchar(30) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `WalkinCustomerName` varchar(155) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `ReferenceNo` varchar(35) DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL,
  `PaymentDetails` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `DescriptionNotes` varchar(255) DEFAULT NULL,
  `CustomerNotes` varchar(255) DEFAULT NULL,
  `SubTotal` double(8,2) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL,
  `DiscountAmount` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Shipping` double(8,2) DEFAULT NULL,
  `GrandTotal` double(8,2) DEFAULT NULL,
  `Paid` double(8,2) DEFAULT NULL,
  `Balance` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_master`
--

INSERT INTO `bill_master` (`InvoiceMasterID`, `InvoiceNo`, `InvoiceType`, `Date`, `DueDate`, `PartyID`, `WalkinCustomerName`, `SupplierID`, `ReferenceNo`, `UserID`, `PaymentMode`, `PaymentDetails`, `Subject`, `DescriptionNotes`, `CustomerNotes`, `SubTotal`, `DiscountPer`, `Total`, `DiscountAmount`, `TaxPer`, `Tax`, `Shipping`, `GrandTotal`, `Paid`, `Balance`) VALUES
(127, 'BILL-00001', NULL, '2022-08-25', '2022-08-25', NULL, '0', 1029, '2500', 1, 'Cash', NULL, 'light expense', NULL, 'Thanks for your business.', 105.00, 0.00, 105.00, 0.00, 0.00, 5.00, 0.00, 105.00, 0.00, NULL),
(129, 'BILL-00002', NULL, '2022-08-27', '2022-08-27', NULL, '0', 1023, NULL, 1, 'Cash', NULL, NULL, NULL, 'Thanks for your business.', 1875.00, 0.00, 1875.00, 0.00, 0.00, 0.00, 0.00, 1875.00, 0.00, NULL),
(130, 'LPO-00001', NULL, '2022-08-30', '2022-08-30', NULL, 'ASDASD', 1, 'ASDASD', 1, NULL, NULL, NULL, NULL, 'Thanks for your business.', 92.40, 0.00, 92.40, 0.00, 0.00, 4.40, 0.00, 92.40, 0.00, NULL),
(131, 'LPO-00001', NULL, '2022-08-31', '2022-08-31', NULL, '0', 1002, 'sfd', 1, NULL, NULL, 'sdf', 'sdf', 'Thanks for your business.sdf', 103.95, 0.00, 103.95, 0.00, 0.00, 4.95, 0.00, 103.95, 0.00, NULL),
(137, 'CN-00001', NULL, '2022-10-01', '2022-10-01', 1, 'sdf', NULL, 'sdf', 1, 'Cheque', 'sdf', 'sdf', NULL, 'Thanks for your business.', 1012.00, 10.00, 910.80, 101.20, 0.00, 0.00, 0.00, 910.80, 0.00, NULL),
(139, 'TAX-00001', 'Tax Invoice', '2022-10-05', '2022-10-05', 1002, '0', NULL, 'sdf', 1, 'Credit', NULL, 'sdf', NULL, 'Thanks for your business.', 105.00, 0.00, 105.00, 0.00, 0.00, 0.00, 0.00, 105.00, 105.00, 0.00),
(140, 'TAX-00002', 'Tax Invoice', '2022-10-05', '2022-10-05', 1002, '0', NULL, 'sdf', 1, 'Cash', NULL, 'sdf', NULL, 'Thanks for your business.', 1061.55, 0.00, 1061.55, 0.00, 0.00, 0.00, 0.00, 1061.55, 1061.55, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BranchID` int NOT NULL,
  `BranchName` varchar(150) DEFAULT NULL,
  `BranchContact` varchar(50) DEFAULT NULL,
  `BranchEmail` varchar(50) DEFAULT NULL,
  `BranchAddress` varchar(150) DEFAULT NULL,
  `BranchLogo` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BranchID`, `BranchName`, `BranchContact`, `BranchEmail`, `BranchAddress`, `BranchLogo`, `CreatedDate`, `UpdatedDate`) VALUES
(1, 'Dubai', '+971 4 584 8310', 'info@eits.ae', 'Office #1807 Clover Bay Tower, Business Bay - Dubai', '1677651045.png', '2023-03-01 06:10:45', '2023-03-01 06:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `challan_detail`
--

CREATE TABLE `challan_detail` (
  `ChallanDetailID` int NOT NULL,
  `ChallanMasterID` int NOT NULL,
  `ChallanNo` varchar(10) DEFAULT NULL,
  `ChallanDate` date DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `TaxAmount` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `challan_detail`
--

INSERT INTO `challan_detail` (`ChallanDetailID`, `ChallanMasterID`, `ChallanNo`, `ChallanDate`, `PartyID`, `Description`, `ItemID`, `Qty`, `Rate`, `TaxAmount`, `TaxPer`, `Discount`, `Total`) VALUES
(1, 1, 'DC-00001', NULL, 1002, NULL, 15, 1, 1015.00, NULL, NULL, NULL, 1015.00),
(3, 2, NULL, NULL, 1002, 'sdfsdf', 17, 1, 1017.00, NULL, NULL, NULL, 1017.00),
(4, 3, 'DC-00003', NULL, 1, NULL, 28, 1, 250.00, NULL, NULL, NULL, 250.00),
(5, 4, 'DC-00004', NULL, 2214, NULL, 27, 2, 48.00, NULL, NULL, NULL, 96.00),
(6, 5, 'DC-00005', NULL, 1002, NULL, 22, 1, 100.00, NULL, NULL, NULL, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `challan_master`
--

CREATE TABLE `challan_master` (
  `ChallanMasterID` int NOT NULL,
  `ChallanNo` varchar(10) DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `WalkinCustomerName` varchar(75) DEFAULT NULL,
  `PlaceOfSupply` varchar(25) DEFAULT NULL,
  `ReferenceNo` varchar(25) DEFAULT NULL,
  `ChallanDate` date DEFAULT NULL,
  `ChallanType` varchar(25) DEFAULT NULL,
  `CustomerNotes` varchar(255) DEFAULT NULL,
  `DescriptionNotes` varchar(255) DEFAULT NULL,
  `TermAndCondition` varchar(255) DEFAULT NULL,
  `File` varchar(75) DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `SubTotal` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `DiscountAmount` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Shipping` double(8,2) DEFAULT NULL,
  `GrandTotal` double(8,2) DEFAULT NULL,
  `Paid` double(8,2) DEFAULT NULL,
  `Balance` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challan_master`
--

INSERT INTO `challan_master` (`ChallanMasterID`, `ChallanNo`, `PartyID`, `WalkinCustomerName`, `PlaceOfSupply`, `ReferenceNo`, `ChallanDate`, `ChallanType`, `CustomerNotes`, `DescriptionNotes`, `TermAndCondition`, `File`, `UserID`, `Subject`, `SubTotal`, `Total`, `DiscountPer`, `DiscountAmount`, `TaxPer`, `Tax`, `Shipping`, `GrandTotal`, `Paid`, `Balance`) VALUES
(1, 'DC-00001', 1002, '0', 'sdf', 'sdf', '2022-09-08', 'Supply of Goods', 'Thanks for your business.', NULL, NULL, NULL, 1, 'edfsdf', 1015.00, 1015.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1015.00, 0.00, NULL),
(2, 'DC-00002', 1002, '0', 'sdf', 'sdf', '2022-10-01', 'Supply of Goods', 'Thanks for your business.', NULL, NULL, NULL, 1, 'sdf', 1017.00, 1017.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1017.00, 0.00, NULL),
(3, 'DC-00003', 1, NULL, NULL, NULL, '2023-04-04', 'Supply of Goods', 'Thanks for your business.', NULL, NULL, NULL, 1, NULL, 250.00, 250.00, 0.00, 0.00, 17.00, 42.50, 0.00, 292.50, 0.00, 292.50),
(4, 'DC-00004', 2214, '0', 'dubai', '654654', '2023-04-04', 'Supply of Goods', 'Thanks for your business.', NULL, NULL, NULL, 1, 'shipmnet to  client', 96.00, 96.00, 0.00, 0.00, 5.00, 4.80, 0.00, 100.80, 0.00, 96.00),
(5, 'DC-00005', 1002, '0', 'dd', '333', '2023-04-04', 'Supply of Goods', 'Thanks for your business.', NULL, NULL, NULL, 1, 'dd', 100.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, 0.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `challan_type`
--

CREATE TABLE `challan_type` (
  `ChallanTypeID` int NOT NULL,
  `ChallanTypeName` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challan_type`
--

INSERT INTO `challan_type` (`ChallanTypeID`, `ChallanTypeName`) VALUES
(2, 'Supply of Goods'),
(3, 'Job Work'),
(4, 'Supply on Approval'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `chartofaccount`
--

CREATE TABLE `chartofaccount` (
  `ChartOfAccountID` int NOT NULL,
  `CODE` varchar(15) DEFAULT NULL,
  `ChartOfAccountName` varchar(75) DEFAULT NULL,
  `OpenDebit` int DEFAULT NULL,
  `OpenCredit` int DEFAULT NULL,
  `L1` int DEFAULT NULL,
  `L2` int DEFAULT NULL,
  `L3` int DEFAULT NULL,
  `Category` varchar(55) DEFAULT NULL,
  `Level` int DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chartofaccount`
--

INSERT INTO `chartofaccount` (`ChartOfAccountID`, `CODE`, `ChartOfAccountName`, `OpenDebit`, `OpenCredit`, `L1`, `L2`, `L3`, `Category`, `Level`, `Status`) VALUES
(100000, 'A', 'ASSETS', NULL, NULL, 100000, 100000, 100000, NULL, 1, 'LOCK'),
(110000, 'A', 'CURRENT ASSETS', NULL, NULL, 100000, 110000, 110000, NULL, 2, NULL),
(110200, 'A', 'BANK DEPOSITS.', NULL, NULL, 100000, 110000, 110200, '0', 3, NULL),
(110201, 'A', 'ADCB BANK', NULL, NULL, 100000, 110000, 110200, 'BANK', 3, 'LOCK'),
(110400, 'A', 'ACCOUNT RECEIVABLES', NULL, NULL, 100000, 110000, 110400, 'AR', 3, 'LOCK'),
(110401, 'A', 'PARTY A/C.', NULL, NULL, 100000, 110000, 110400, '', 3, NULL),
(110402, 'A', 'OTHER RECEIVABLES', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110490, 'A', 'BAD DEBTS', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110600, 'A', 'MISC. ADJUSTMENTS', NULL, NULL, 100000, 110000, 110600, NULL, 3, NULL),
(110700, 'A', 'STOCK INVENTORY', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110900, 'A', 'curent - asset-child', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(111000, 'A', 'Cash in Bank - Mashreq', NULL, NULL, 100000, 110000, 110000, 'BANK', 3, 'LOCK'),
(111100, 'A', 'Cash in Bank - ADCB 12387035920001', NULL, NULL, 100000, 110000, 110000, 'BANK', 3, 'LOCK'),
(111200, 'A', 'Refundable Deposit', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111300, 'A', 'PETTY CASH', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111400, 'A', 'Security Deposit', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111500, 'A', 'Credit Card Account', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111600, 'A', 'Computer & Accessories', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111700, 'A', 'Accum. Dep- Furniture & Equipment', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111800, 'A', 'Accounts Receivables', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111900, 'A', 'Accum. Dep- Computer Equip & Acces', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(112000, 'A', 'Accum. Dep- Office Equipment', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(112100, 'A', 'Petty Cash- Anne', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(112200, 'A', 'Staff Advance', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(112300, 'A', 'Prepaid Rent Expense', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(120000, 'A', 'FIXED ASSETS', NULL, NULL, 100000, 120000, 120000, NULL, 3, NULL),
(120101, 'A', 'ACCUMULATED DEPRECIATION', NULL, NULL, 100000, 120000, 120000, '0', 3, NULL),
(120125, 'A', 'VEHICLES', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120227, 'A', 'FURNITURE AND EQUIPMENT', NULL, NULL, 100000, 120000, 120000, '0', 3, NULL),
(120327, 'A', 'Office Equipment', NULL, NULL, 100000, 120000, 120000, '0', 3, NULL),
(130000, 'A', 'OTHER ASSETS', NULL, NULL, 100000, 130000, 130000, NULL, 3, NULL),
(130300, 'A', 'PREPAID LICENSE FEE', NULL, NULL, 100000, 130000, 130000, '0', 3, NULL),
(130400, 'A', 'PREPAID EXPENSES', NULL, NULL, 100000, 130000, 130000, '0', 3, NULL),
(140100, 'A', 'DEFERRED ASSETS', NULL, NULL, 100000, 140000, 140100, NULL, 3, NULL),
(140200, 'A', 'DEPOSITS', NULL, NULL, 100000, 140000, 140200, NULL, 3, NULL),
(140300, 'A', 'LEASEHOLD IMPROV.NET', NULL, NULL, 100000, 140000, 140300, NULL, 3, NULL),
(140400, 'A', 'Prepaid Medical Insurance', NULL, NULL, 100000, 140000, 140000, '0', 3, NULL),
(150200, 'A', 'Prepaid Visa Expense', NULL, NULL, 100000, 150000, 150000, '0', 3, NULL),
(160000, 'A', 'asst-test', NULL, NULL, 100000, 160000, 160000, NULL, 3, NULL),
(160100, 'A', 'asset-test-child', NULL, NULL, 100000, 160000, 160000, NULL, 3, NULL),
(170000, 'A', 'ahsan level 2', NULL, NULL, 100000, 170000, 170000, NULL, 2, NULL),
(170001, 'A', 'ahsan level  33', NULL, NULL, 100000, 170000, 170001, '0', 3, NULL),
(200000, 'L', 'LIABILITIES', NULL, NULL, 200000, 200000, 200000, NULL, 2, NULL),
(200100, 'L', 'PAYABLE TO MR. KALEEM', NULL, NULL, 200000, 200000, 200000, '0', 3, 'LOCK'),
(200200, 'L', 'Friends Commodity Brokerage LLC', NULL, NULL, 200000, 200000, 200000, '0', 3, 'LOCK'),
(200300, 'L', 'SALARY PAYABLE', NULL, NULL, 200000, 23000, 200300, NULL, 3, 'LOCK'),
(200500, 'L', 'PDC Payable', NULL, NULL, 200000, 200000, 200000, '0', 3, NULL),
(200600, 'L', 'Staff Gratuity Payable', NULL, NULL, 200000, 200000, 200000, '0', 3, NULL),
(200700, 'L', 'Telephone & Internet Payable', NULL, NULL, 200000, 200000, 200000, '0', 3, NULL),
(200800, 'L', 'UTILITIES PAYABLE', NULL, NULL, 200000, 200000, 200000, NULL, 3, NULL),
(210100, 'L', 'A/C PAYABLE', NULL, NULL, 200000, 210000, 210100, 'A/P', 3, 'LOCK'),
(210102, 'L', 'OTHER PAYABLES', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210302, 'L', 'MARKETING COMMISSION PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210303, 'L', 'TAKAFAL PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210403, 'L', 'PAYABLE TO MR. ASIM', NULL, NULL, 200000, 210000, 210000, '0', 3, NULL),
(220000, 'L', 'SECURITIES', NULL, NULL, 200000, 220000, 220000, NULL, 2, NULL),
(220100, 'L', 'Cooling Charges Payable', NULL, NULL, 200000, 220000, 220000, '0', 3, NULL),
(230000, 'L', 'STAFF PAYABLE', NULL, NULL, 200000, 230000, 230000, NULL, 2, NULL),
(230100, 'L', 'VAT-OUTPUT TAX', NULL, NULL, 200000, 230000, 230000, NULL, 3, NULL),
(230200, 'L', 'VAT-INPUT TAX', NULL, NULL, 200000, 230000, 230000, NULL, 3, NULL),
(230300, 'L', 'STAFF ANNUAL LEAVE PAYABLE', NULL, NULL, 200000, 230000, 230000, '0', 3, NULL),
(230400, 'L', 'STAFF END OF SERVICE PAYABLE', NULL, NULL, 200000, 230000, 230000, '0', 3, NULL),
(240000, 'L', 'Rent Payable', NULL, NULL, 200000, 240000, 240000, NULL, 2, NULL),
(250000, 'L', 'STAFF PAYABLE', NULL, NULL, 200000, 250000, 250000, NULL, 2, NULL),
(300000, 'C', 'STOCKHOLDERS EQUITY', NULL, NULL, 300000, 300000, 300000, NULL, 1, 'LOCK'),
(300100, 'C', 'Share Capital Investment - Mr. Babar', NULL, NULL, 300000, 300000, 310000, '0', 2, NULL),
(310000, 'C', 'CAPITAL INVESTMENT', NULL, NULL, 300000, 310000, 310000, NULL, 2, NULL),
(310100, 'C', 'CAPITAL STOCK.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310102, 'C', 'PROFIT AND LOSS A/C.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310103, 'C', 'CURRENT PERIOD PROF/LOSS.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310104, 'C', 'MUHAMMAD ASIM JAN', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310105, 'C', 'MUHAMMAD FAISAL', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310205, 'C', 'Partner Current Account - Mr. Babar', NULL, NULL, 300000, 310000, 310000, '0', 3, NULL),
(320000, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320000, NULL, 2, NULL),
(320100, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320100, NULL, 3, NULL),
(400000, 'R', 'REVENUES', NULL, NULL, 400000, 400000, 400000, NULL, 1, 'LOCK'),
(410000, 'R', 'SALES:-', NULL, NULL, 400000, 410000, 410000, NULL, 2, 'LOCK'),
(410100, 'R', 'SALES:-', NULL, NULL, 400000, 410000, 410100, NULL, 3, 'LOCK'),
(410101, 'R', 'COMMISSION.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410150, 'R', 'SALE OF TICKET', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410151, 'R', 'INCOME FROM REPAIR', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410152, 'R', 'DISCOUNT RECEIVED', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410155, 'R', 'SALES DISCOUNTS', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410172, 'R', 'FREIGHT CHARGES', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410173, 'R', 'INCOME SALE COMMISSION.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410175, 'R', 'SALE RETURNS.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410180, 'R', 'SALE RETURN DISCOUNT.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410185, 'R', 'SALE RETURN FREIGHT', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410200, 'R', 'OTHER INCOME', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(410201, 'R', 'MISC. INCOME', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(410205, 'R', 'OTHER SALES.', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(420000, 'R', 'OTHER REVENUES', NULL, NULL, 400000, 420000, 420000, NULL, 2, NULL),
(420100, 'R', 'OTHER INCOME', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420101, 'R', 'OTHER INCOME 2', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420104, 'R', 'PENDING/TARGET INCOME', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420105, 'R', 'SERVICE CHARGES', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420200, 'R', 'OTHER INCOME', NULL, NULL, 400000, 420000, 420200, NULL, 3, NULL),
(500000, 'E', 'TOTAL EXPENSES', NULL, NULL, 500000, 500000, 500000, NULL, 1, 'LOCK'),
(500100, 'E', 'Shipping Expenses', NULL, NULL, 500000, 500000, 500000, NULL, 2, NULL),
(500200, 'E', 'COST OF SALES', NULL, NULL, 500000, 500000, 500000, NULL, 2, NULL),
(500300, 'E', 'Car Repair & Maintenance Expense', NULL, NULL, 500000, 500000, 500000, '0', 2, NULL),
(500400, 'E', 'Water & Electricity Expense', NULL, NULL, 500000, 500000, 500000, '0', 2, NULL),
(500500, 'E', 'Bonus/ Commission Expense', NULL, NULL, 500000, 500000, 500000, '0', 2, NULL),
(500600, 'E', 'Meals & Entertainment Expense', NULL, NULL, 500000, 500000, 500000, '0', 2, NULL),
(500700, 'E', 'Medical Insurance Expense', NULL, NULL, 500000, 500000, 500000, '0', 2, NULL),
(510000, 'E', 'COST OF GOODS SOLD.', NULL, NULL, 500000, 510000, 510000, NULL, 2, NULL),
(510101, 'E', 'OPENING STOCK.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510102, 'E', 'PURCHASES', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510103, 'E', 'PURCHASE OF TICKET', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510104, 'E', 'DISCOUNT ALLOWED', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510105, 'E', 'PURCHASE DISCOUNTS', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510107, 'E', 'PURCHASE LOADING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510109, 'E', 'PURCHASE UNLOADING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510110, 'E', 'PURCHASE RETURN.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510117, 'E', 'ZAKAT ACCOUNT.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510120, 'E', 'PURCHASES MISC. ADJ.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510122, 'E', 'PURCHASE BENDING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510145, 'E', 'STOCK EXPENSES', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510200, 'E', 'PACKING MATERIAL EXPENS.', NULL, NULL, 500000, 510000, 510200, NULL, 3, NULL),
(510400, 'E', 'MARKETING EXPENSES', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510441, 'E', 'MARKETING SALARIES', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510451, 'E', 'MARKETING PHONE/MOB EXP.', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510461, 'E', 'ENTERTAINMENT', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510661, 'E', 'SALARY', NULL, NULL, 500000, 510000, 510000, '0', 3, NULL),
(510761, 'E', 'Staff & Welfare Expense', NULL, NULL, 500000, 510000, 510000, '0', 3, NULL),
(520000, 'E', 'GEN & ADMIN EXPENSES', NULL, NULL, 500000, 520000, 520000, NULL, 2, NULL),
(520100, 'E', 'Depreciation', NULL, NULL, 500000, 520000, 520000, '0', 3, NULL),
(530100, 'E', 'PAYROLL EXPENSES', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530107, 'E', 'GM PAY:-', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530108, 'E', 'YASEEN SALARY', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530109, 'E', 'BABAR SALARY', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530110, 'E', 'STAFF ANNUAL LEAVE EXPENSE', NULL, NULL, 500000, 530000, 530110, NULL, 3, NULL),
(530111, 'E', 'STAFF END OF SERVICE EXPENSE', NULL, NULL, 500000, 530000, 530111, NULL, 3, NULL),
(530200, 'E', 'ASSETS INSURANCE', NULL, NULL, 500000, 530000, 530200, NULL, 3, NULL),
(540000, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540000, NULL, 2, NULL),
(540100, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540110, 'E', 'R/M VEHICLE.', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540111, 'E', 'R/M FURNITURE & FIXTURE', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540112, 'E', 'R/M EQUIPMENT / COMPUTER', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540130, 'E', 'GIFT ACCOUNT.', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(550000, 'E', 'OFFICE EXPENSES', NULL, NULL, 500000, 550000, 550000, NULL, 2, NULL),
(550115, 'E', 'LICENCE EXPENSE.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550120, 'E', 'WATER BILLS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550121, 'E', 'ELECTRIC BILL.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550123, 'E', 'HOME EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550126, 'E', 'TEA & FOOD EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550134, 'E', 'MISC. EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550136, 'E', 'CHARITY & DONATIONS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550138, 'E', 'NEWS PAPERS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550140, 'E', 'MEMBERSHIP FEE', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550240, 'E', 'Rent Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550340, 'E', 'Office Supplies', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550440, 'E', 'BONUS EXPENSE', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550540, 'E', 'COOLING CHARGES', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550740, 'E', 'TELEPHONE & INTERNET EXPENSE', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550840, 'E', 'Car Repair & Maintenance Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550940, 'E', 'Legal & Statutory Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(551040, 'E', 'Transportation Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(551140, 'E', 'Cooling Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(560100, 'E', 'FINANCIAL EXPENSES', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560110, 'E', 'BANK CHARGES', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560111, 'E', 'FEE CHARGED', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560211, 'E', 'Visit Visa Expense', NULL, NULL, 500000, 560000, 560000, '0', 3, NULL),
(570000, 'E', 'DEPRECIATION', NULL, NULL, 500000, 570000, 570000, NULL, 2, NULL),
(570100, 'E', 'DEPRECIATION', NULL, NULL, 500000, 570000, 570100, NULL, 3, NULL),
(580000, 'E', 'TAXES:-', NULL, NULL, 500000, 580000, 580000, NULL, 2, NULL),
(580100, 'E', 'TAXES:-', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580120, 'E', 'TAX PAYABLE', NULL, NULL, 500000, 580000, 580120, NULL, 3, NULL),
(580130, 'E', 'SALES TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580135, 'E', 'INCOME TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580140, 'E', 'PROFESSIONAL TAX (EXCISE)', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580145, 'E', 'TOLL TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580245, 'E', 'test in tax', NULL, NULL, 500000, 580000, 580000, NULL, 3, NULL),
(590100, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590101, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590104, 'E', 'OFFICE EXPENCE.', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590106, 'E', 'COMPUTER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590107, 'E', 'BAD DEBTS ', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590108, 'E', 'CASH SHORT /EXCESS', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590109, 'E', 'PREVIOUS PERIOD P&L.', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590209, 'E', 'Office Rent Expense', NULL, NULL, 500000, 590000, 590000, '0', 3, NULL),
(600000, 'S', 'SUSPENSE', NULL, NULL, 600000, 600000, 600000, NULL, 1, 'LOCK'),
(610000, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610000, NULL, 2, NULL),
(610100, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610101, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610102, 'S', 'CLEARING ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610103, 'S', 'CHEQUE ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610104, 'S', 'EXCESS & SHORT ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chartofaccount_test`
--

CREATE TABLE `chartofaccount_test` (
  `ChartOfAccountID` int NOT NULL,
  `CODE` varchar(15) DEFAULT NULL,
  `ChartOfAccountName` varchar(75) DEFAULT NULL,
  `OpenDebit` int DEFAULT NULL,
  `OpenCredit` int DEFAULT NULL,
  `L1` int DEFAULT NULL,
  `L2` int DEFAULT NULL,
  `L3` int DEFAULT NULL,
  `Category` varchar(55) DEFAULT NULL,
  `Level` int DEFAULT NULL,
  `Status` varchar(15) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chartofaccount_test`
--

INSERT INTO `chartofaccount_test` (`ChartOfAccountID`, `CODE`, `ChartOfAccountName`, `OpenDebit`, `OpenCredit`, `L1`, `L2`, `L3`, `Category`, `Level`, `Status`) VALUES
(100000, 'A', 'ASSETS', NULL, NULL, 100000, 100000, 100000, NULL, 1, 'Lock'),
(110000, 'A', 'Current Asset', NULL, NULL, 100000, 110000, 110000, NULL, 2, ''),
(110100, 'A', 'CASH IN HAND', NULL, NULL, 100000, 110000, 110100, 'BANK', 3, ''),
(110200, 'A', 'BANK', NULL, NULL, 100000, 110000, 110200, 'BANK', 3, ''),
(110300, 'A', 'CREDIT CARD', NULL, NULL, 100000, 110000, 110300, 'CARD', 3, ''),
(120000, 'A', 'FIXED ASSET', NULL, NULL, 100000, 120000, 120000, NULL, 2, ''),
(200000, 'L', 'LIABILITIES', NULL, NULL, 200000, 200000, 200000, '0', 1, 'Lock'),
(210000, 'L', 'l1 1111', NULL, NULL, 200000, 210000, 210000, '0', 2, ''),
(210100, 'L', 'l1 1 1', NULL, NULL, 200000, 210000, 210100, '0', 3, ''),
(220000, 'L', 'l2 22222', NULL, NULL, 200000, 220000, 220000, '0', 2, ''),
(220100, 'L', 'l2 2 2', NULL, NULL, 200000, 220000, 220100, '0', 3, ''),
(300000, 'C', 'STOCKHOLDERS EQUITY', NULL, NULL, 300000, 300000, 300000, NULL, 1, 'Lock'),
(400000, 'R', 'REVENUES', NULL, NULL, 400000, 400000, 400000, NULL, 1, 'Lock'),
(500000, 'E', 'TOTAL EXPENSES', NULL, NULL, 500000, 500000, 500000, NULL, 1, 'Lock'),
(600000, 'S', 'SUSPENSE', NULL, NULL, 600000, 600000, 600000, NULL, 1, 'Lock');

-- --------------------------------------------------------

--
-- Table structure for table `chartofaccount_working`
--

CREATE TABLE `chartofaccount_working` (
  `ChartOfAccountID` int NOT NULL,
  `CODE` varchar(15) DEFAULT NULL,
  `ChartOfAccountName` varchar(75) DEFAULT NULL,
  `OpenDebit` int DEFAULT NULL,
  `OpenCredit` int DEFAULT NULL,
  `L1` int DEFAULT NULL,
  `L2` int DEFAULT NULL,
  `L3` int DEFAULT NULL,
  `Category` varchar(55) DEFAULT NULL,
  `Level` int DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chartofaccount_working`
--

INSERT INTO `chartofaccount_working` (`ChartOfAccountID`, `CODE`, `ChartOfAccountName`, `OpenDebit`, `OpenCredit`, `L1`, `L2`, `L3`, `Category`, `Level`, `Status`) VALUES
(100000, 'A', 'ASSETS', NULL, NULL, 100000, 100000, 100000, NULL, 1, 'LOCK'),
(110000, 'A', 'CURRENT ASSET', NULL, NULL, 100000, 100000, 110000, NULL, 2, NULL),
(110100, 'A', 'CASH ACCOUNT', NULL, NULL, 100000, 110000, 110100, NULL, 3, NULL),
(110101, 'A', 'CASH IN HAND', NULL, NULL, 100000, 110000, 110100, 'CASH', 3, NULL),
(110106, 'A', 'PETTY CASH', NULL, NULL, 100000, 110000, 110100, NULL, 3, NULL),
(110200, 'A', 'BANK DEPOSITS', NULL, NULL, 100000, 110000, 110200, NULL, 3, NULL),
(110201, 'A', 'BANK1', NULL, NULL, 100000, 110000, 110200, 'BANK', 3, NULL),
(110202, 'A', 'BANK2', NULL, NULL, 100000, 110000, 110200, 'BANK', 3, NULL),
(110250, 'A', 'Credit Card ACCOUNT.', NULL, NULL, 100000, 110000, 110200, 'CARD', 3, NULL),
(110300, 'A', 'JAYLIN PAY.', NULL, NULL, 100000, 110000, 110200, NULL, 3, NULL),
(110400, 'A', 'A/C RECEIVABLE.', NULL, NULL, 100000, 110000, 110400, 'AR', 3, NULL),
(110401, 'A', 'PARTY A/C.', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110402, 'A', 'OTHER RECEIVABLES', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110420, 'A', 'STAFF ADVANCES.', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110430, 'A', 'OTHER ADVANCES', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110490, 'A', 'BAD DEBTS', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110500, 'A', 'INVENTORY', NULL, NULL, 100000, 110000, 110500, NULL, 3, NULL),
(110501, 'A', 'STOCK IN HAND', NULL, NULL, 100000, 110000, 110500, NULL, 3, NULL),
(110600, 'A', 'MISC. ADJUSTMENTS', NULL, NULL, 100000, 110000, 110600, NULL, 3, NULL),
(110700, 'A', 'STOCK INVENTORY', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110800, 'A', 'TAX ON PURCHASES', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110900, 'A', 'PREPAID RENT', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110901, 'A', 'EMPLOYEE SALAYR ADVANCE', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110902, 'A', 'PREPAID VISA', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110903, 'A', 'INPUT EXCISE TAX', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110904, 'A', 'INPUT VAT', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110905, 'A', 'PREPAID LEGAL FEES', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110906, 'A', 'PREPAID OTHERS', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110907, 'A', 'PREPAID INSURANCE', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110908, 'A', 'SECURITY DEPOSIT', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110909, 'A', 'OFFICE SUPPLIES', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(120000, 'A', 'FIXED ASSETS', NULL, NULL, 100000, 120000, 120000, NULL, 2, NULL),
(120100, 'A', 'FIXED ASSETS', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120101, 'A', 'ACCUMULATED DESPRECIATION', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120103, 'A', 'OFFICE EQUIPMENT', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120104, 'A', 'MACHINERY & EQUIPMENT', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120105, 'A', 'LAND & BUILDING', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120106, 'A', 'GOOD WILL', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120125, 'A', 'VEHICLES', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120127, 'A', 'PREMISES(SHOP)', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(130000, 'A', 'OTHER ASSETS', NULL, NULL, 100000, 130000, 130000, NULL, 2, NULL),
(130100, 'A', 'PREPAID EXPENSES', NULL, NULL, 100000, 130000, 130100, NULL, 3, NULL),
(130200, 'A', 'LONG TERM INVESTMENTS', NULL, NULL, 100000, 130000, 130200, NULL, 3, NULL),
(140000, 'A', 'DEFERRED ASSETS', NULL, NULL, 100000, 140000, 140000, NULL, 3, NULL),
(140100, 'A', 'DEFERRED ASSETS', NULL, NULL, 100000, 140000, 140100, NULL, 3, NULL),
(140200, 'A', 'DEPOSITS', NULL, NULL, 100000, 140000, 140200, NULL, 3, NULL),
(140300, 'A', 'LEASEHOLD IMPROV.NET', NULL, NULL, 100000, 140000, 140300, NULL, 3, NULL),
(200000, 'L', 'LIABILITIES', NULL, NULL, 200000, 200000, 200000, NULL, 1, 'LOCK'),
(210000, 'L', 'ACCOUNTS PAYABLE', NULL, NULL, 200000, 210000, 210000, NULL, 2, NULL),
(210100, 'L', 'A/C PAYABLE', NULL, NULL, 200000, 210000, 210100, 'AP', 3, NULL),
(210101, 'L', 'ADVANCE PAYMENT', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210102, 'L', 'OTHER PAYABLES', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210103, 'L', 'BALANCE ADJUSTMENT', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210104, 'L', 'RENT PAYABLE', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210105, 'L', 'TELEPHONE EXPENSE PAYABLE', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210106, 'L', 'PDC PAYABLE', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210107, 'L', 'WATER & ELECTRICITY PAYABLE', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210108, 'L', 'SALARY PAYABLE', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210109, 'L', 'EXCISE TAX PAYABLE', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210110, 'L', 'OUTPUT VAT', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210111, 'L', 'OTHER EXCISE TAX', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210112, 'L', 'VAT PAYABLE', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210113, 'L', 'UNEARNED REVENUE', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210114, 'L', 'PROFESSIONAL FEE PAYABLE', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210115, 'L', 'ACCRUED EXPENSE', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210300, 'L', 'TAX PAYABLES', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210301, 'L', 'W/H TAX Deductions', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210302, 'L', 'MARKETING COMMISSION PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210303, 'L', 'TAKAFAL PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(220000, 'L', 'SECURITIES', NULL, NULL, 200000, 220000, 220000, NULL, 3, NULL),
(220100, 'L', 'SECURITIES', NULL, NULL, 200000, 220000, 220100, NULL, 3, NULL),
(230000, 'L', 'VAT A/C', NULL, NULL, 200000, 230000, 230000, NULL, 2, NULL),
(230100, 'L', 'VAT-OUTPUT TAX', NULL, NULL, 200000, 230000, 230000, NULL, 3, NULL),
(230200, 'L', 'VAT-INPUT TAX', NULL, NULL, 200000, 230000, 230000, NULL, 3, NULL),
(240000, 'L', 'LONG TERM LIABILITY', NULL, NULL, 200000, 200000, 240000, NULL, 2, NULL),
(240100, 'L', 'ANNUAL LEAVE PAYABLE', NULL, NULL, 200000, 240000, 240000, NULL, 3, NULL),
(240101, 'L', 'END OF SERVICE BENEFITS', NULL, NULL, 200000, 240000, 240101, NULL, 3, NULL),
(240102, 'L', 'STAFFAIR TICKET PAYABLE', NULL, NULL, 200000, 240000, 240102, NULL, 3, NULL),
(300000, 'C', 'STOCKHOLDERS EQUITY', NULL, NULL, 300000, 300000, 300000, NULL, 1, 'LOCK'),
(310000, 'C', 'STOCKHOLDERS EQUITY', NULL, NULL, 300000, 310000, 310000, NULL, 2, NULL),
(310100, 'C', 'CAPITAL STOCK.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310101, 'C', 'CAPITAL A/C.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310102, 'C', 'PROFIT AND LOSS A/C.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310103, 'C', 'CURRENT PERIOD PROF/LOSS.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310104, 'C', 'PARTNERS WITHDRAWAL', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310105, 'C', 'SHARE CPAITAL ACCOUNT', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310106, 'C', 'SHAREHOLDERS\'S CURRENT ACCOUNT', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310107, 'C', 'RETAINED EARNINGS', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310108, 'C', 'OWNERS EQUITY', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(320000, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320000, NULL, 2, NULL),
(320100, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320100, NULL, 3, NULL),
(400000, 'R', 'REVENUES', NULL, NULL, 400000, 400000, 400000, NULL, 1, 'LOCK'),
(410000, 'R', 'SALES', NULL, NULL, 400000, 410000, 410000, NULL, 2, NULL),
(410100, 'R', 'SALES', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410101, 'R', 'COMMISSION.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410150, 'R', 'SALE OF TICKET', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410151, 'R', 'INCOME FROM REPAIR', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410152, 'R', 'DISCOUNT RECEIVED', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410155, 'R', 'SALES DISCOUNTS', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410172, 'R', 'FREIGHT CHARGES', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410173, 'R', 'INCOME SALE COMMISSION.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410175, 'R', 'SALE RETURNS.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410180, 'R', 'SALE RETURN DISCOUNT.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410185, 'R', 'SALE RETURN FREIGHT', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410200, 'R', 'OTHER INCOME', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(410201, 'R', 'MISC. INCOME', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(410205, 'R', 'OTHER SALES.', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(420000, 'R', 'OTHER REVENUES', NULL, NULL, 400000, 420000, 420000, NULL, 2, NULL),
(420100, 'R', 'OTHER INCOME', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420101, 'R', 'OTHER INCOME 2', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420104, 'R', 'PENDING/TARGET INCOME', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420105, 'R', 'SERVICE CHARGES', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420200, 'R', 'OTHER INCOME', NULL, NULL, 400000, 420000, 420200, NULL, 3, NULL),
(420201, 'R', 'GENERAL INCOME', NULL, NULL, 400000, 420000, 420200, NULL, 3, NULL),
(420202, 'R', 'INTEREST INCOME', NULL, NULL, 400000, 420000, 420200, NULL, 3, NULL),
(420203, 'R', 'LATE FEE INCOME', NULL, NULL, 400000, 420000, 420200, NULL, 3, NULL),
(420204, 'R', 'DISCOUNT', NULL, NULL, 400000, 420000, 420200, NULL, 3, NULL),
(420205, 'R', 'OTHER CHARGES', NULL, NULL, 400000, 420000, 420200, NULL, 3, NULL),
(500000, 'E', 'TOTAL EXPENSES', NULL, NULL, 500000, 500000, 500000, NULL, 1, 'LOCK'),
(510000, 'E', 'COST OF GOODS SOLD.', NULL, NULL, 500000, 510000, 510000, NULL, 2, NULL),
(510100, 'E', 'MATERIAL INVENTORY', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510101, 'E', 'OPENING STOCK.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510102, 'E', 'PURCHASES', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510103, 'E', 'PURCHASE OF TICKET', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510104, 'E', 'DISCOUNT ALLOWED', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510105, 'E', 'PURCHASE DISCOUNTS', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510107, 'E', 'PURCHASE LOADING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510109, 'E', 'PURCHASE UNLOADING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510110, 'E', 'PURCHASE RETURN.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510117, 'E', 'ZAKAT ACCOUNT.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510120, 'E', 'PURCHASES MISC. ADJ.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510122, 'E', 'PURCHASE BENDING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510140, 'E', 'ADNAN PAY.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510145, 'E', 'STOCK EXPENSES', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510200, 'E', 'PACKING MATERIAL EXPENS.', NULL, NULL, 500000, 510000, 510200, NULL, 3, NULL),
(510300, 'E', 'POWER:-', NULL, NULL, 500000, 510000, 510300, NULL, 3, NULL),
(510400, 'E', 'MARKETING EXPENSES', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510441, 'E', 'MARKETING SALARIES', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510451, 'E', 'MARKETING PHONE/MOB EXP.', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510461, 'E', 'ENTERTAINMENT', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(520000, 'E', 'GEN & ADMIN EXPENSES', NULL, NULL, 500000, 520000, 520000, NULL, 2, NULL),
(520100, 'E', 'PAYROLL EXPENSES', NULL, NULL, 500000, 520000, 520100, NULL, 3, NULL),
(520200, 'E', 'MAINTENANCE', NULL, NULL, 500000, 520000, 520200, NULL, 3, NULL),
(530000, 'E', 'ORGANISATION EXPENSE.', NULL, NULL, 500000, 530000, 530000, NULL, 2, NULL),
(530100, 'E', 'PAYROLL EXPENSES', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530200, 'E', 'ASSETS INSURANCE', NULL, NULL, 500000, 530000, 530200, NULL, 3, NULL),
(540000, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540000, NULL, 2, NULL),
(540100, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540110, 'E', 'R/M VEHICLE.', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540111, 'E', 'R/M FURNITURE & FIXTURE', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540112, 'E', 'R/M EQUIPMENT / COMPUTER', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540130, 'E', 'GIFT ACCOUNT.', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(550000, 'E', 'OFFICE EXPENSES', NULL, NULL, 500000, 550000, 550000, NULL, 2, NULL),
(550100, 'E', 'OFFICE EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550110, 'E', 'PRINTING & STATIONARY', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550114, 'E', 'VEHICLE EXP.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550115, 'E', 'LICENCE EXPENSE.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550116, 'E', 'TELEPHONE BILLS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550120, 'E', 'WATER BILLS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550121, 'E', 'ELECTRIC BILL.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550123, 'E', 'HOME EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550124, 'E', 'ROOM RENT.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550125, 'E', 'TRAVELLING EXP.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550126, 'E', 'TEA & FOOD EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550130, 'E', 'POL VEHICLE.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550132, 'E', 'LEGAL & PROFESSIONAL', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550134, 'E', 'MISC. EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550136, 'E', 'CHARITY & DONATIONS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550138, 'E', 'NEWS PAPERS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550140, 'E', 'MEMBERSHIP FEE', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(560000, 'E', 'FINANCIAL EXPENSES', NULL, NULL, 500000, 560000, 560000, NULL, 2, NULL),
(560100, 'E', 'FINANCIAL EXPENSES', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560110, 'E', 'BANK CHARGES', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560111, 'E', 'FEE CHARGED', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(570000, 'E', 'DEPRICIATION', NULL, NULL, 500000, 570000, 570000, NULL, 2, NULL),
(570100, 'E', 'DEPRICIATION', NULL, NULL, 500000, 570000, 570100, NULL, 3, NULL),
(580100, 'E', 'TAXES:-', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580120, 'E', 'TAX PAYABLE', NULL, NULL, 500000, 580000, 580120, NULL, 3, NULL),
(580130, 'E', 'SALES TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580135, 'E', 'INCOME TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580140, 'E', 'PROFESSIONAL TAX (EXCISE)', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580145, 'E', 'TOLL TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(590000, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590000, NULL, 2, NULL),
(590100, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590101, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590104, 'E', 'OFFICE EXPENCE.', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590105, 'E', 'OFFICE RENT.', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590106, 'E', 'COMPUTER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590107, 'E', 'BAD DEBTS ', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590108, 'E', 'CASH SHORT /EXCESS', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590109, 'E', 'PREVIOUS PERIOD P&L.', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(600000, 'S', 'SUSPENSE', NULL, NULL, 600000, 600000, 600000, NULL, 1, 'LOCK'),
(610000, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610000, NULL, 2, NULL),
(610101, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610102, 'S', 'CLEARING ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610103, 'S', 'CHEQUE ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610104, 'S', 'EXCESS & SHORT ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610105, 'S', '55', NULL, NULL, 600000, 610000, 610105, '0', 3, NULL),
(620000, 'S', 's2 main', NULL, NULL, 600000, 620000, 620000, NULL, 2, NULL),
(620001, 'S', 's2 child', NULL, NULL, 600000, 620000, 620001, '0', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientID` int NOT NULL,
  `AID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `FTDAmount` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Compliant` varchar(25) DEFAULT NULL,
  `KYCSent` varchar(25) DEFAULT NULL,
  `DailerList` int DEFAULT NULL,
  `UpdateBy` varchar(30) DEFAULT NULL,
  `UDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyID` int NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
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
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryID` int NOT NULL,
  `CountryName` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryID`, `CountryName`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Democratic Republic of the Congo'),
(50, 'Republic of Congo'),
(51, 'Cook Islands'),
(52, 'Costa Rica'),
(53, 'Croatia (Hrvatska)'),
(54, 'Cuba'),
(55, 'Cyprus'),
(56, 'Czech Republic'),
(57, 'Denmark'),
(58, 'Djibouti'),
(59, 'Dominica'),
(60, 'Dominican Republic'),
(61, 'East Timor'),
(62, 'Ecuador'),
(63, 'Egypt'),
(64, 'El Salvador'),
(65, 'Equatorial Guinea'),
(66, 'Eritrea'),
(67, 'Estonia'),
(68, 'Ethiopia'),
(69, 'Falkland Islands (Malvinas)'),
(70, 'Faroe Islands'),
(71, 'Fiji'),
(72, 'Finland'),
(73, 'France'),
(74, 'France, Metropolitan'),
(75, 'French Guiana'),
(76, 'French Polynesia'),
(77, 'French Southern Territories'),
(78, 'Gabon'),
(79, 'Gambia'),
(80, 'Georgia'),
(81, 'Germany'),
(82, 'Ghana'),
(83, 'Gibraltar'),
(84, 'Guernsey'),
(85, 'Greece'),
(86, 'Greenland'),
(87, 'Grenada'),
(88, 'Guadeloupe'),
(89, 'Guam'),
(90, 'Guatemala'),
(91, 'Guinea'),
(92, 'Guinea-Bissau'),
(93, 'Guyana'),
(94, 'Haiti'),
(95, 'Heard and Mc Donald Islands'),
(96, 'Honduras'),
(97, 'Hong Kong'),
(98, 'Hungary'),
(99, 'Iceland'),
(100, 'India'),
(101, 'Isle of Man'),
(102, 'Indonesia'),
(103, 'Iran (Islamic Republic of)'),
(104, 'Iraq'),
(105, 'Ireland'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Ivory Coast'),
(109, 'Jersey'),
(110, 'Jamaica'),
(111, 'Japan'),
(112, 'Jordan'),
(113, 'Kazakhstan'),
(114, 'Kenya'),
(115, 'Kiribati'),
(116, 'Korea, Democratic People\'s Republic of'),
(117, 'Korea, Republic of'),
(118, 'Kosovo'),
(119, 'Kuwait'),
(120, 'Kyrgyzstan'),
(121, 'Lao People\'s Democratic Republic'),
(122, 'Latvia'),
(123, 'Lebanon'),
(124, 'Lesotho'),
(125, 'Liberia'),
(126, 'Libyan Arab Jamahiriya'),
(127, 'Liechtenstein'),
(128, 'Lithuania'),
(129, 'Luxembourg'),
(130, 'Macau'),
(131, 'North Macedonia'),
(132, 'Madagascar'),
(133, 'Malawi'),
(134, 'Malaysia'),
(135, 'Maldives'),
(136, 'Mali'),
(137, 'Malta'),
(138, 'Marshall Islands'),
(139, 'Martinique'),
(140, 'Mauritania'),
(141, 'Mauritius'),
(142, 'Mayotte'),
(143, 'Mexico'),
(144, 'Micronesia, Federated States of'),
(145, 'Moldova, Republic of'),
(146, 'Monaco'),
(147, 'Mongolia'),
(148, 'Montenegro'),
(149, 'Montserrat'),
(150, 'Morocco'),
(151, 'Mozambique'),
(152, 'Myanmar'),
(153, 'Namibia'),
(154, 'Nauru'),
(155, 'Nepal'),
(156, 'Netherlands'),
(157, 'Netherlands Antilles'),
(158, 'New Caledonia'),
(159, 'New Zealand'),
(160, 'Nicaragua'),
(161, 'Niger'),
(162, 'Nigeria'),
(163, 'Niue'),
(164, 'Norfolk Island'),
(165, 'Northern Mariana Islands'),
(166, 'Norway'),
(167, 'Oman'),
(168, 'Pakistan'),
(169, 'Palau'),
(170, 'Palestine'),
(171, 'Panama'),
(172, 'Papua New Guinea'),
(173, 'Paraguay'),
(174, 'Peru'),
(175, 'Philippines'),
(176, 'Pitcairn'),
(177, 'Poland'),
(178, 'Portugal'),
(179, 'Puerto Rico'),
(180, 'Qatar'),
(181, 'Reunion'),
(182, 'Romania'),
(183, 'Russian Federation'),
(184, 'Rwanda'),
(185, 'Saint Kitts and Nevis'),
(186, 'Saint Lucia'),
(187, 'Saint Vincent and the Grenadines'),
(188, 'Samoa'),
(189, 'San Marino'),
(190, 'Sao Tome and Principe'),
(191, 'Saudi Arabia'),
(192, 'Senegal'),
(193, 'Serbia'),
(194, 'Seychelles'),
(195, 'Sierra Leone'),
(196, 'Singapore'),
(197, 'Slovakia'),
(198, 'Slovenia'),
(199, 'Solomon Islands'),
(200, 'Somalia'),
(201, 'South Africa'),
(202, 'South Georgia South Sandwich Islands'),
(203, 'South Sudan'),
(204, 'Spain'),
(205, 'Sri Lanka'),
(206, 'St. Helena'),
(207, 'St. Pierre and Miquelon'),
(208, 'Sudan'),
(209, 'Suriname'),
(210, 'Svalbard and Jan Mayen Islands'),
(211, 'Eswatini'),
(212, 'Sweden'),
(213, 'Switzerland'),
(214, 'Syrian Arab Republic'),
(215, 'Taiwan'),
(216, 'Tajikistan'),
(217, 'Tanzania, United Republic of'),
(218, 'Thailand'),
(219, 'Togo'),
(220, 'Tokelau'),
(221, 'Tonga'),
(222, 'Trinidad and Tobago'),
(223, 'Tunisia'),
(224, 'Turkey'),
(225, 'Turkmenistan'),
(226, 'Turks and Caicos Islands'),
(227, 'Tuvalu'),
(228, 'Uganda'),
(229, 'Ukraine'),
(230, 'United Arab Emirates'),
(231, 'United Kingdom'),
(232, 'United States'),
(233, 'United States minor outlying islands'),
(234, 'Uruguay'),
(235, 'Uzbekistan'),
(236, 'Vanuatu'),
(237, 'Vatican City State'),
(238, 'Venezuela'),
(239, 'Vietnam'),
(240, 'Virgin Islands (British)'),
(241, 'Virgin Islands (U.S.)'),
(242, 'Wallis and Futuna Islands'),
(243, 'Western Sahara'),
(244, 'Yemen'),
(245, 'Zambia'),
(246, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `daily_report`
--

CREATE TABLE `daily_report` (
  `DailyReportID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Title` longtext,
  `Detail` longtext,
  `SupervisorComments` longtext,
  `File` varchar(100) DEFAULT '',
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `daily_report`
--

INSERT INTO `daily_report` (`DailyReportID`, `EmployeeID`, `Date`, `Title`, `Detail`, `SupervisorComments`, `File`, `eDate`) VALUES
(13, 118, '2023-01-25', 'sdf', 'sdf', 'ddddd', '', '2023-01-25 06:56:57'),
(14, 118, '2023-01-25', 'sdf', 'sdf', 'perfect', '', '2023-01-25 07:26:05'),
(15, 118, '2023-01-25', 'sdf', 'sdf', 'nice', '', '2023-01-25 10:57:51'),
(16, 118, '2023-01-30', 'kia kia hai', 'aslkdjflaskdjf l;askjdf ;lsakdjf ;laskdjf ;lsakjdf', 'perf3ect job done', '1675062905.png', '2023-01-30 07:15:05'),
(17, 118, '2023-01-31', 'hello', 'toay salkfj lsakdjf l;sakdjf', 'not satisfied do it again', '1675151443.png', '2023-01-31 07:50:43'),
(18, 118, '2023-02-20', 'sdf', 'efsef', 'TTT', '1676892344.jpg', '2023-02-20 11:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE `deal` (
  `DealID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `Phone` varchar(150) DEFAULT NULL,
  `ExpectedCloserDate` date DEFAULT NULL,
  `DealValue` varchar(150) DEFAULT NULL,
  `DealStatus` varchar(150) DEFAULT NULL,
  `Notes` longtext,
  `Date` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deduction_list`
--

CREATE TABLE `deduction_list` (
  `DeductionListID` int NOT NULL,
  `DeductionTitle` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'Sales'),
(2, 'Finance'),
(40, 'Amazon'),
(41, 'Market Place'),
(42, 'App Developer'),
(43, 'Web Developer'),
(44, 'HR'),
(45, 'Administration');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `DocumentID` int NOT NULL,
  `DocumentCategoryID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `FileName` varchar(55) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `Cost` varchar(55) DEFAULT '',
  `File` varchar(55) DEFAULT NULL,
  `FileSize` varchar(12) DEFAULT NULL,
  `MimeType` varchar(55) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`DocumentID`, `DocumentCategoryID`, `EmployeeID`, `FileName`, `StartDate`, `ExpiryDate`, `Cost`, `File`, `FileSize`, `MimeType`, `eDate`) VALUES
(42, NULL, 111, 'zxcz', NULL, NULL, '', '1667466808.jpg', NULL, NULL, '2022-11-03 09:13:28'),
(43, NULL, 111, 'dfsdf', NULL, NULL, '', '1667469250.jpg', NULL, NULL, '2022-11-03 09:54:10'),
(44, NULL, 111, 'dfsdf', NULL, NULL, '', '1667469447.png', NULL, NULL, '2022-11-03 09:57:27'),
(45, NULL, 111, 'dsfs', NULL, NULL, '', '1667469462.jpg', '33294', NULL, '2022-11-03 09:57:42'),
(46, NULL, 111, 'sdf', NULL, NULL, '', '1667469496.jpg', '212.72 KB', NULL, '2022-11-03 09:58:16'),
(47, 9, NULL, '55', '2002-12-12', NULL, '25', '1680589306.png', '92.34 KB', 'image', '2023-04-04 06:21:46'),
(48, 10, NULL, '123', NULL, NULL, NULL, '1680591801.png', '95.79 KB', 'image', '2023-04-04 07:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `document_category`
--

CREATE TABLE `document_category` (
  `DocumentCategoryID` int NOT NULL,
  `DocumentCategoryName` varchar(175) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_category`
--

INSERT INTO `document_category` (`DocumentCategoryID`, `DocumentCategoryName`, `eDate`) VALUES
(1, 'Office Document', '2022-10-27 02:07:40'),
(2, 'Staff Document', '2022-10-27 02:07:43'),
(3, 'Vehicle Document', '2022-10-27 02:07:48'),
(9, 'abc', '2023-04-04 06:21:18'),
(10, 'ashan', '2023-04-04 07:02:57'),
(11, 'test 2', '2023-04-04 18:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `educationlevel`
--

CREATE TABLE `educationlevel` (
  `EducationLevelID` int NOT NULL,
  `EducationLevelName` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educationlevel`
--

INSERT INTO `educationlevel` (`EducationLevelID`, `EducationLevelName`) VALUES
(1, 'FA/FSC '),
(2, 'Bachelor'),
(3, 'Master'),
(4, 'MS/MPIL/PHD');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL,
  `BranchID` int DEFAULT NULL,
  `Title` varchar(75) DEFAULT NULL,
  `IsSupervisor` varchar(3) DEFAULT NULL,
  `FirstName` varchar(88) DEFAULT NULL,
  `MiddleName` varchar(88) DEFAULT NULL,
  `LastName` varchar(88) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `VisaIssueDate` date DEFAULT NULL,
  `VisaExpiryDate` date DEFAULT NULL,
  `PassportNo` varchar(88) DEFAULT NULL,
  `PassportExpiry` date DEFAULT NULL,
  `EidNo` varchar(75) DEFAULT NULL,
  `EidExpiry` date DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `MobileNo` varchar(35) DEFAULT NULL,
  `HomePhone` varchar(35) DEFAULT NULL,
  `Email` varchar(35) DEFAULT NULL,
  `Nationality` varchar(35) DEFAULT NULL,
  `Gender` varchar(35) DEFAULT NULL,
  `SSNorGID` varchar(35) DEFAULT NULL,
  `MaritalStatus` varchar(35) DEFAULT NULL,
  `SpouseName` varchar(50) DEFAULT NULL,
  `SpouseEmployer` varchar(52) DEFAULT NULL,
  `SpouseWorkPhone` varchar(33) DEFAULT NULL,
  `JobTitleID` varchar(33) DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `SupervisorID` int DEFAULT NULL,
  `WorkLocation` varchar(55) DEFAULT NULL,
  `EmailOffical` varchar(55) DEFAULT NULL,
  `WorkPhone` varchar(55) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `Salary` double(10,2) DEFAULT NULL,
  `ExtraComission` double(10,2) DEFAULT NULL,
  `SalaryRemarks` longtext,
  `NextofKinName` varchar(75) DEFAULT NULL,
  `NextofKinAddress` varchar(255) DEFAULT NULL,
  `NextofKinPhone` varchar(55) DEFAULT NULL,
  `NextofKinRelationship` varchar(55) DEFAULT NULL,
  `EducationLevel` varchar(55) DEFAULT NULL,
  `LastDegree` varchar(75) DEFAULT NULL,
  `Picture` varchar(75) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `uDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `StaffType` varchar(25) DEFAULT NULL,
  `Password` varchar(25) DEFAULT '123456',
  `BankName` varchar(155) DEFAULT NULL,
  `IBAN` varchar(100) DEFAULT NULL,
  `AccountTitle` varchar(100) DEFAULT NULL,
  `SalaryType` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `BranchID`, `Title`, `IsSupervisor`, `FirstName`, `MiddleName`, `LastName`, `DateOfBirth`, `VisaIssueDate`, `VisaExpiryDate`, `PassportNo`, `PassportExpiry`, `EidNo`, `EidExpiry`, `FullAddress`, `MobileNo`, `HomePhone`, `Email`, `Nationality`, `Gender`, `SSNorGID`, `MaritalStatus`, `SpouseName`, `SpouseEmployer`, `SpouseWorkPhone`, `JobTitleID`, `DepartmentID`, `SupervisorID`, `WorkLocation`, `EmailOffical`, `WorkPhone`, `StartDate`, `Salary`, `ExtraComission`, `SalaryRemarks`, `NextofKinName`, `NextofKinAddress`, `NextofKinPhone`, `NextofKinRelationship`, `EducationLevel`, `LastDegree`, `Picture`, `eDate`, `uDate`, `StaffType`, `Password`, `BankName`, `IBAN`, `AccountTitle`, `SalaryType`) VALUES
(118, 1, 'Mr.', 'Yes', 'Demo Firstname', 'd', 'demo last name', '2001-01-31', NULL, '1970-01-01', NULL, '1970-01-01', NULL, '1970-01-01', NULL, NULL, NULL, 'demo@extbooks.com', 'Afghanistan', 'Male', NULL, 'Single', NULL, NULL, NULL, '1', 1, 118, NULL, NULL, NULL, '2022-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FA/FSC', NULL, NULL, '2023-01-17 09:46:00', '2023-03-02 05:43:04', 'Regular', '123456', NULL, NULL, NULL, NULL),
(119, 1, 'Mrs.', 'No', 'montasser', 'salah', 'ahmed', '1984-01-25', '2024-01-25', '2024-01-25', '3333', '2024-01-25', '772827898', '2024-01-25', NULL, '888888', NULL, 'M0508929777@GMAIL.COM', 'Afghanistan', 'Male', NULL, 'Single', NULL, NULL, NULL, '3', 1, NULL, NULL, NULL, NULL, '2020-01-25', 5000.00, 0.00, NULL, NULL, NULL, NULL, NULL, 'FA/FSC', NULL, NULL, '2023-03-04 18:11:42', NULL, 'Regular', '123456', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_allowance`
--

CREATE TABLE `emp_allowance` (
  `EmployeeAllowanceID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `AllowanceListID` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Active` varchar(3) DEFAULT 'Y',
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_deduction`
--

CREATE TABLE `emp_deduction` (
  `EmployeeDeductionID` int NOT NULL,
  `EmployeeSalaryID` int DEFAULT NULL,
  `DeductionListID` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Active` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary`
--

CREATE TABLE `emp_salary` (
  `EmployeeAllowanceID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `AllowanceListID` int DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Active` varchar(3) DEFAULT 'Y',
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_salary`
--

INSERT INTO `emp_salary` (`EmployeeAllowanceID`, `EmployeeID`, `AllowanceListID`, `Amount`, `Active`, `eDate`) VALUES
(1, 118, 1, 2000, 'Yes', '2023-01-31 07:45:55'),
(2, 118, 2, 1000, 'Yes', '2023-01-31 07:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary____`
--

CREATE TABLE `emp_salary____` (
  `EmployeeSalaryID` int NOT NULL,
  `AllowanceTypeID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Salary` int DEFAULT NULL,
  `Active` varchar(3) DEFAULT 'Y',
  `Remarks` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_detail`
--

CREATE TABLE `estimate_detail` (
  `EstimateDetailID` int NOT NULL,
  `EstimateMasterID` int NOT NULL,
  `EstimateNo` varchar(10) DEFAULT NULL,
  `EstimateDate` date DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
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
  `EstimateMasterID` int NOT NULL,
  `EstimateNo` varchar(10) DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
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
  `UserID` int DEFAULT NULL,
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
-- Table structure for table `eu`
--

CREATE TABLE `eu` (
  `EuID` int NOT NULL,
  `MonthName` varchar(25) DEFAULT NULL,
  `BranchID` int DEFAULT NULL,
  `No` int DEFAULT NULL,
  `Sum` int DEFAULT NULL,
  `NetDeposit` int DEFAULT NULL,
  `FTD` int DEFAULT NULL,
  `Per` int DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_detail`
--

CREATE TABLE `expense_detail` (
  `ExpenseDetailID` int NOT NULL,
  `ExpenseMasterID` int DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Amount` double(8,2) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_detail`
--

INSERT INTO `expense_detail` (`ExpenseDetailID`, `ExpenseMasterID`, `ChartOfAccountID`, `Notes`, `TaxPer`, `Tax`, `Amount`, `Date`) VALUES
(99, 43, 520100, 'dssdfsdf', 5.00, 5.00, 100.00, '2022-09-21 17:18:43'),
(100, 43, 110106, NULL, 5.00, 12.50, 250.00, '2022-09-21 17:18:43'),
(104, 44, 110100, 'sdfsdf', 5.00, 15.00, 300.00, '2022-09-30 07:47:18'),
(105, 44, 110101, 'ddd', 5.00, 15.00, 300.00, '2022-09-30 07:47:18'),
(109, 2, 550121, 'Jul 2023', 4.76, 25.00, 125.00, '2023-04-04 06:49:39'),
(110, 3, 550121, NULL, 4.76, 5.00, 105.00, '2023-04-04 18:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `expense_master`
--

CREATE TABLE `expense_master` (
  `ExpenseMasterID` int NOT NULL,
  `ExpenseNo` varchar(55) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `ReferenceNo` varchar(55) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `GrantTotal` double(8,2) DEFAULT NULL,
  `Paid` double(8,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_master`
--

INSERT INTO `expense_master` (`ExpenseMasterID`, `ExpenseNo`, `Date`, `ChartOfAccountID`, `SupplierID`, `ReferenceNo`, `Tax`, `GrantTotal`, `Paid`, `eDate`) VALUES
(2, 'EXP-00001', '2023-04-04', 110201, 2215, '64654', 25.00, 125.00, 0.00, '2023-04-04 06:49:39'),
(3, 'EXP-00002', '2023-04-04', 110201, 2215, 'dd', 5.00, 105.00, 0.00, '2023-04-04 18:16:35');

--
-- Triggers `expense_master`
--
DELIMITER $$
CREATE TRIGGER `after delete expense` AFTER DELETE ON `expense_master` FOR EACH ROW begin

delete from expense_detail where ExpenseMasterID = old.ExpenseMasterID;
delete from journal where ExpenseMasterID = old.ExpenseMasterID;

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fcb`
--

CREATE TABLE `fcb` (
  `FCBID` int NOT NULL,
  `BranchID` int DEFAULT NULL,
  `ID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `FTDAmount` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Compliant` varchar(25) DEFAULT NULL,
  `KYCSent` varchar(25) DEFAULT NULL,
  `Dialer` int DEFAULT NULL,
  `Remarks` longtext,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_detail`
--

CREATE TABLE `fleet_detail` (
  `FleetDetailID` int NOT NULL,
  `FleetMasterID` int NOT NULL,
  `RegistrationStartDate` date DEFAULT NULL,
  `RegistrationEndDate` date DEFAULT NULL,
  `InsuranceStartDate` date DEFAULT NULL,
  `InsuranceEndDate` date DEFAULT NULL,
  `InsuranceCompanyName` varchar(255) DEFAULT NULL,
  `OilChangeDate` date DEFAULT NULL,
  `LastReading` varchar(255) DEFAULT NULL,
  `OilDueDate` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_master`
--

CREATE TABLE `fleet_master` (
  `FleetMasterID` int NOT NULL,
  `VehicleModel` varchar(155) DEFAULT NULL,
  `OwnerName` varchar(255) DEFAULT NULL,
  `Picure` varchar(255) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `InvoiceDetailID` int NOT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `InvoiceNo` varchar(10) DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `DiscountType` double(8,2) DEFAULT NULL,
  `DiscountAmountItem` double(10,2) DEFAULT NULL,
  `Gross` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`InvoiceDetailID`, `InvoiceMasterID`, `InvoiceNo`, `ItemID`, `Description`, `SupplierID`, `PartyID`, `Qty`, `Rate`, `TaxPer`, `Tax`, `Discount`, `DiscountType`, `DiscountAmountItem`, `Gross`, `Total`) VALUES
(361, 175, 'TAX-00001', 25, NULL, NULL, 1002, 1, 36.00, 0.00, 0.00, 0.00, 1.00, 0.00, 36.00, 36.00),
(362, 176, 'TAX-00002', 22, NULL, NULL, 1002, 20, 100.00, 5.00, 100.00, 0.00, 1.00, 0.00, 2000.00, 2000.00),
(363, 176, 'TAX-00002', 24, NULL, NULL, 1002, 20, 80.00, 0.00, 0.00, 0.00, 1.00, 0.00, 1600.00, 1600.00),
(364, 177, 'TAX-00003', 24, NULL, NULL, 1, 1, 80.00, 0.00, 0.00, 0.00, 1.00, 0.00, 80.00, 80.00),
(367, 180, 'TAX-00004', 22, NULL, NULL, 2214, 20, 100.00, 5.00, 100.00, 0.00, 1.00, 0.00, 2000.00, 2000.00),
(368, 180, 'TAX-00004', 23, NULL, NULL, 2214, 20, 5500.00, 0.00, 0.00, 0.00, 1.00, 0.00, 110000.00, 110000.00),
(369, 181, 'CN-00001', 22, NULL, NULL, 2214, 1, 100.00, NULL, NULL, NULL, NULL, NULL, NULL, 100.00),
(370, 182, 'BILL-00001', 23, NULL, 2214, NULL, 1, 5000.00, 4.76, 238.00, NULL, NULL, NULL, NULL, 5238.00),
(371, 183, 'DN-00001', 23, NULL, 2214, NULL, 1, 5500.00, NULL, NULL, NULL, NULL, NULL, NULL, 5500.00),
(372, 184, 'TAX-00005', 23, NULL, NULL, 1002, 1, 5500.00, 0.00, 0.00, 0.00, 1.00, 0.00, 5500.00, 5500.00),
(373, 184, 'TAX-00005', 24, NULL, NULL, 1002, 1, 80.00, 0.00, 0.00, 0.00, 1.00, 0.00, 80.00, 80.00);

--
-- Triggers `invoice_detail`
--
DELIMITER $$
CREATE TRIGGER `invoice-detail-before-update` AFTER UPDATE ON `invoice_detail` FOR EACH ROW begin

INSERT INTO invoice_detail_audit values (null, InvoiceDetailID, old.InvoiceMasterID, old.InvoiceNo, old.ItemID, old.Description, old.SupplierID, old.PartyID, old.Qty, old.Rate, old.TaxPer, old.Tax, old.Discount, old.DiscountType, old.DiscountAmountItem, old.Gross, old.Total) ;

end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `invoice-update-before-delete` BEFORE DELETE ON `invoice_detail` FOR EACH ROW begin

INSERT INTO invoice_detail_audit values (null, InvoiceDetailID, old.InvoiceMasterID, old.InvoiceNo, old.ItemID, old.Description, old.SupplierID, old.PartyID, old.Qty, old.Rate, old.TaxPer, old.Tax, old.Discount, old.DiscountType, old.DiscountAmountItem, old.Gross, old.Total) ;

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail_audit`
--

CREATE TABLE `invoice_detail_audit` (
  `id` int NOT NULL,
  `InvoiceDetailID` int NOT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `InvoiceNo` varchar(10) DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `DiscountType` double(8,2) DEFAULT NULL,
  `DiscountAmountItem` double(10,2) DEFAULT NULL,
  `Gross` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_detail_audit`
--

INSERT INTO `invoice_detail_audit` (`id`, `InvoiceDetailID`, `InvoiceMasterID`, `InvoiceNo`, `ItemID`, `Description`, `SupplierID`, `PartyID`, `Qty`, `Rate`, `TaxPer`, `Tax`, `Discount`, `DiscountType`, `DiscountAmountItem`, `Gross`, `Total`) VALUES
(359, 0, 174, 'TAX-00001', 24, NULL, NULL, 1002, 1, 80.00, 0.00, 0.00, 0.00, 1.00, 0.00, 80.00, 80.00),
(360, 0, 174, 'TAX-00001', 25, NULL, NULL, 1002, 20, 36.00, 0.00, 0.00, 0.00, 1.00, 0.00, 720.00, 720.00),
(361, 0, 178, 'CN-00001', 27, NULL, NULL, 1, 1, 48.00, NULL, NULL, NULL, NULL, NULL, NULL, 48.00),
(362, 0, 179, 'BILL-00001', 24, NULL, 1002, NULL, 1, 80.00, 4.76, 3.81, NULL, NULL, NULL, NULL, 83.81);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_master`
--

CREATE TABLE `invoice_master` (
  `InvoiceMasterID` int NOT NULL,
  `InvoiceNo` varchar(10) DEFAULT NULL,
  `InvoiceType` varchar(30) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `WalkinCustomerName` varchar(155) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `ReferenceNo` varchar(35) DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL,
  `PaymentDetails` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `TaxType` varchar(55) DEFAULT NULL,
  `DescriptionNotes` varchar(255) DEFAULT NULL,
  `CustomerNotes` varchar(255) DEFAULT NULL,
  `SubTotal` double(10,2) DEFAULT NULL,
  `DiscountPer` double(10,2) DEFAULT NULL,
  `Total` double(10,2) DEFAULT NULL,
  `DiscountAmount` double(10,2) DEFAULT NULL,
  `TaxPer` double(10,2) DEFAULT NULL,
  `Tax` double(10,2) DEFAULT NULL,
  `Shipping` double(10,2) DEFAULT NULL,
  `GrandTotal` double(10,2) DEFAULT NULL,
  `Paid` double(10,2) DEFAULT NULL,
  `Balance` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_master`
--

INSERT INTO `invoice_master` (`InvoiceMasterID`, `InvoiceNo`, `InvoiceType`, `Date`, `DueDate`, `PartyID`, `WalkinCustomerName`, `SupplierID`, `ReferenceNo`, `UserID`, `PaymentMode`, `PaymentDetails`, `Subject`, `TaxType`, `DescriptionNotes`, `CustomerNotes`, `SubTotal`, `DiscountPer`, `Total`, `DiscountAmount`, `TaxPer`, `Tax`, `Shipping`, `GrandTotal`, `Paid`, `Balance`) VALUES
(175, 'TAX-00001', 'Tax Invoice', '2023-04-01', '2023-04-01', 1002, '0', NULL, NULL, 1, 'Cash', NULL, NULL, 'TaxExclusive', NULL, 'Thanks for your business.', 36.00, 0.00, 36.00, 0.00, NULL, 0.00, 0.00, 36.00, 36.00, 0.00),
(176, 'TAX-00002', 'Tax Invoice', '2023-04-03', '2023-04-03', 1002, '0', NULL, NULL, 1, 'Cash', NULL, NULL, 'TaxExclusive', NULL, 'Thanks for your business.', 3600.00, 0.00, 3600.00, 0.00, NULL, 100.00, 0.00, 3700.00, 3700.00, 0.00),
(177, 'TAX-00003', 'Tax Invoice', '2023-04-04', '2023-04-04', 1, NULL, NULL, NULL, 1, 'Cash', NULL, NULL, 'TaxExclusive', NULL, 'Thanks for your business.', 80.00, 0.00, 80.00, 0.00, NULL, 0.00, 0.00, 80.00, 0.00, NULL),
(180, 'TAX-00004', 'Tax Invoice', '2023-04-04', '2023-04-04', 2214, '0', NULL, NULL, 1, 'Cash', NULL, NULL, 'TaxExclusive', NULL, 'Thanks for your business.', 112000.00, 0.00, 112000.00, 0.00, NULL, 100.00, 0.00, 112100.00, 0.00, NULL),
(181, 'CN-00001', NULL, '2023-04-04', '2023-04-04', 2214, NULL, NULL, NULL, 1, 'Cash', NULL, NULL, NULL, NULL, 'Thanks for your business.', 100.00, 0.00, 100.00, 0.00, 0.00, 0.00, 0.00, 100.00, 0.00, 100.00),
(182, 'BILL-00001', NULL, '2023-04-04', '2023-04-04', NULL, '0', 2214, 'po-00001', 1, 'Cash', NULL, NULL, NULL, NULL, 'Thanks for your business.', 5000.00, 0.00, 5000.00, 0.00, 0.00, 238.00, 0.00, 5238.00, 0.00, NULL),
(183, 'DN-00001', NULL, '2023-04-04', '2023-04-04', NULL, NULL, 2214, NULL, 1, 'Cash', NULL, 'return', NULL, NULL, 'Thanks for your business.', 5500.00, 0.00, 5500.00, 0.00, 0.00, 0.00, 0.00, 5500.00, 0.00, 5500.00),
(184, 'TAX-00005', 'Tax Invoice', '2023-04-04', '2023-04-04', 1002, '0', NULL, NULL, 1, 'Cash', NULL, NULL, 'TaxExclusive', NULL, 'Thanks for your business.', 5580.00, 0.00, 5580.00, 0.00, NULL, 0.00, 0.00, 5580.00, 0.00, NULL);

--
-- Triggers `invoice_master`
--
DELIMITER $$
CREATE TRIGGER `after delete` AFTER DELETE ON `invoice_master` FOR EACH ROW begin

delete from invoice_detail where InvoiceMasterID = old.InvoiceMasterID;
delete from journal where InvoiceMasterID = old.InvoiceMasterID;

end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `invoice-mst-before-delete` BEFORE DELETE ON `invoice_master` FOR EACH ROW begin

INSERT INTO invoice_master_audit values (null,old.InvoiceMasterID, old.InvoiceNo, old.InvoiceType, old.Date,old.DueDate,old.PartyID,old.WalkinCustomerName,old.SupplierID,old.ReferenceNo,old.UserID,old.PaymentMode,old.PaymentDetails,old.Subject,old.TaxType,old.DescriptionNotes,old.CustomerNotes,old.SubTotal,old.DiscountPer,old.Total,old.DiscountAmount,old.TaxPer,old.Tax,old.Shipping,old.GrandTotal,old.Paid,old.Balance,sysdate(),'Before-Delete');

end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `invoice-mst-before-update` BEFORE UPDATE ON `invoice_master` FOR EACH ROW begin

INSERT INTO invoice_master_audit values (null,old.InvoiceMasterID, old.InvoiceNo, old.InvoiceType, old.Date,old.DueDate,old.PartyID,old.WalkinCustomerName,old.SupplierID,old.ReferenceNo,old.UserID,old.PaymentMode,old.PaymentDetails,old.Subject,old.TaxType,old.DescriptionNotes,old.CustomerNotes,old.SubTotal,old.DiscountPer,old.Total,old.DiscountAmount,old.TaxPer,old.Tax,old.Shipping,old.GrandTotal,old.Paid,old.Balance,sysdate(),'Before-Update');

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_master_audit`
--

CREATE TABLE `invoice_master_audit` (
  `id` int NOT NULL,
  `InvoiceMasterID` int NOT NULL,
  `InvoiceNo` varchar(10) DEFAULT NULL,
  `InvoiceType` varchar(30) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `WalkinCustomerName` varchar(155) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `ReferenceNo` varchar(35) DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL,
  `PaymentDetails` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `TaxType` varchar(55) DEFAULT NULL,
  `DescriptionNotes` varchar(255) DEFAULT NULL,
  `CustomerNotes` varchar(255) DEFAULT NULL,
  `SubTotal` double(10,2) DEFAULT NULL,
  `DiscountPer` double(10,2) DEFAULT NULL,
  `Total` double(10,2) DEFAULT NULL,
  `DiscountAmount` double(10,2) DEFAULT NULL,
  `TaxPer` double(10,2) DEFAULT NULL,
  `Tax` double(10,2) DEFAULT NULL,
  `Shipping` double(10,2) DEFAULT NULL,
  `GrandTotal` double(10,2) DEFAULT NULL,
  `Paid` double(10,2) DEFAULT NULL,
  `Balance` double(10,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ActionPerformed` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_master_audit`
--

INSERT INTO `invoice_master_audit` (`id`, `InvoiceMasterID`, `InvoiceNo`, `InvoiceType`, `Date`, `DueDate`, `PartyID`, `WalkinCustomerName`, `SupplierID`, `ReferenceNo`, `UserID`, `PaymentMode`, `PaymentDetails`, `Subject`, `TaxType`, `DescriptionNotes`, `CustomerNotes`, `SubTotal`, `DiscountPer`, `Total`, `DiscountAmount`, `TaxPer`, `Tax`, `Shipping`, `GrandTotal`, `Paid`, `Balance`, `eDate`, `ActionPerformed`) VALUES
(15, 174, 'TAX-00001', 'Tax Invoice', '2023-03-29', '2023-03-29', 1002, '0', NULL, 'addd', 1, 'Cash', NULL, 'abc', 'TaxExclusive', NULL, 'Thanks for your business.', 800.00, 0.00, 800.00, 0.00, NULL, 0.00, 0.00, 800.00, 0.00, NULL, '2023-03-29 05:47:37', 'Before-Update'),
(16, 175, 'TAX-00001', 'Tax Invoice', '2023-04-01', '2023-04-01', 1002, '0', NULL, NULL, 1, 'Cash', NULL, NULL, 'TaxExclusive', NULL, 'Thanks for your business.', 36.00, 0.00, 36.00, 0.00, NULL, 0.00, 0.00, 36.00, 0.00, NULL, '2023-04-04 05:59:03', 'Before-Update'),
(17, 176, 'TAX-00002', 'Tax Invoice', '2023-04-03', '2023-04-03', 1002, '0', NULL, NULL, 1, 'Cash', NULL, NULL, 'TaxExclusive', NULL, 'Thanks for your business.', 3600.00, 0.00, 3600.00, 0.00, NULL, 100.00, 0.00, 3700.00, 0.00, NULL, '2023-04-04 05:59:03', 'Before-Update'),
(18, 178, 'CN-00001', NULL, '2023-04-04', '2023-04-04', 1, NULL, NULL, NULL, 1, 'Cash', NULL, NULL, NULL, NULL, 'Thanks for your business.', 48.00, 0.00, 48.00, 0.00, 0.00, 0.00, 0.00, 48.00, 0.00, 48.00, '2023-04-04 06:46:50', 'Before-Delete'),
(19, 179, 'BILL-00001', NULL, '2023-04-04', '2023-04-04', NULL, '0', 1002, NULL, 1, 'Cash', NULL, NULL, NULL, NULL, 'Thanks for your business.', 80.00, 0.00, 80.00, 0.00, 0.00, 3.81, 0.00, 83.81, 0.00, NULL, '2023-04-04 06:50:46', 'Before-Delete');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_type`
--

CREATE TABLE `invoice_type` (
  `InvoiceTypeID` int NOT NULL,
  `InvoiceType` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_type`
--

INSERT INTO `invoice_type` (`InvoiceTypeID`, `InvoiceType`) VALUES
(1, 'Tax Invoice'),
(2, 'Invoice'),
(3, 'Proforma Invoice');

-- --------------------------------------------------------

--
-- Table structure for table `issue_letter`
--

CREATE TABLE `issue_letter` (
  `IssueLetterID` int NOT NULL,
  `LetterID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` longtext,
  `UserID` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_letter`
--

INSERT INTO `issue_letter` (`IssueLetterID`, `LetterID`, `EmployeeID`, `Title`, `Content`, `UserID`, `eDate`) VALUES
(1, 1, 118, 'Offer Letter', '<p><strong>d d </strong><br />Filipino Passport:</p>\r\n<p>Dear d;</p>\r\n<p align=\"center\"><strong><u>EMPLOYMENT OFFER</u></strong></p>\r\n<p>We are glad to offer you employment in our company on the following terms and conditions:</p>\r\n<table style=\"height: 288px;\" border=\"0\" width=\"1056\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\" width=\"25\">1.</td>\r\n<td style=\"height: 18px;\" valign=\"top\" width=\"213\">Position&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\" width=\"818\">: Sale Manager</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">2.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Location</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: Jhelum</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">3.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Total Monthly Salary</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: PKR:</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">4.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Bonus/Commission</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: Upon company discretion</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">5.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Accommodation</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: to be arranged by Employee</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">6.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Transportation</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: to be arranged by Employee</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">7.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Contract period</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: Two years, UNLIMITED</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">8.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Probation period</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: (6) months</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">9.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Working hours</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: 8 hours/day, 6 days/week</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">10.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Vacation</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: 30 days per year</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">11.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Increment after probation</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: PKR 1,000</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">12.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Air Ticket</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: Upon renewal the contract you can take returned ticket from DXB to your home country.</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\">&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: If you will not renew you can only avail returned ticket to your home country</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">13.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Medical, Insurance</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: As per PAK. Labor Law</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">14.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">End of Service Benefits</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: As per PAK. Labor Law</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\" valign=\"top\">&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\">&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Should you accept our offer based on the above conditions, please sign and return copy of this letter as a token of your acceptance. The joining date will be on July 17th and if failed to come this offer will be null and void.</p>\r\n<p>This Offer is subject to your visa approval, medical fitness and you&rsquo;re reporting to duty on agreed date.</p>\r\n<p>This Offer is valid for 7 days from date of issuing.</p>\r\n<p>We welcome you to <strong>Shah Corporation</strong> and wish you good luck.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\"><strong>Manager HR</strong></td>\r\n<td width=\"50%\"><em>Accepted: _____________________</em></td>\r\n</tr>\r\n<tr>\r\n<td width=\"50%\"><em>Managing Director</em></td>\r\n<td width=\"50%\"><em>Date:</em></td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, '2023-01-31 07:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` int NOT NULL,
  `ItemType` varchar(55) DEFAULT NULL,
  `ItemCode` varchar(5) DEFAULT NULL,
  `ItemName` varchar(55) DEFAULT NULL,
  `UnitName` varchar(10) DEFAULT NULL,
  `Taxable` varchar(10) DEFAULT NULL,
  `Percentage` double(8,2) DEFAULT NULL,
  `CostPrice` double(8,2) DEFAULT NULL,
  `CostChartofAccountID` int DEFAULT NULL,
  `CostDescription` varchar(255) DEFAULT NULL,
  `SellingPrice` double(8,2) DEFAULT NULL,
  `SellingChartofAccountID` int DEFAULT NULL,
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
-- Table structure for table `item__`
--

CREATE TABLE `item__` (
  `ItemID` int NOT NULL,
  `ItemType` varchar(55) DEFAULT NULL,
  `ItemCode` varchar(5) DEFAULT NULL,
  `ItemName` varchar(55) DEFAULT NULL,
  `UnitName` varchar(10) DEFAULT NULL,
  `Taxable` varchar(10) DEFAULT NULL,
  `Percentage` double(8,2) DEFAULT NULL,
  `CostPrice` double(8,2) DEFAULT NULL,
  `CostChartofAccountID` int DEFAULT NULL,
  `CostDescription` varchar(255) DEFAULT NULL,
  `SellingPrice` double(8,2) DEFAULT NULL,
  `SellingChartofAccountID` int DEFAULT NULL,
  `SellingDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item__`
--

INSERT INTO `item__` (`ItemID`, `ItemType`, `ItemCode`, `ItemName`, `UnitName`, `Taxable`, `Percentage`, `CostPrice`, `CostChartofAccountID`, `CostDescription`, `SellingPrice`, `SellingChartofAccountID`, `SellingDescription`) VALUES
(7, 'Service', NULL, 'Approval', 'lb', 'Yes', 4.76, 56.00, NULL, NULL, 55.00, NULL, NULL),
(8, 'Service', 'CO', 'Covid Test', NULL, 'No', 4.76, NULL, NULL, NULL, 88.00, NULL, NULL),
(9, 'Service', 'V1', 'Dubai Visa 1 Month', NULL, 'No', 4.76, NULL, NULL, NULL, 99.00, NULL, NULL),
(10, 'Service', 'V2', 'Dubai Visa 3 Months', NULL, 'No', 4.76, NULL, NULL, NULL, 100.00, NULL, NULL),
(11, 'Service', 'V3', 'Dubai Visa 30 Days Inside', NULL, 'No', 4.76, NULL, NULL, NULL, 1011.00, NULL, NULL),
(12, 'Service', 'V4', 'Dubai Visa 90 Days Inside', NULL, 'Yes', 4.76, NULL, NULL, NULL, 1012.00, NULL, NULL),
(13, 'Service', 'FR', 'Freelance', NULL, 'No', 4.76, NULL, NULL, NULL, 1013.00, NULL, NULL),
(14, 'Service', 'H', 'Hotel Booking', NULL, 'Yes', 4.76, 11.00, NULL, '321', 1014.00, NULL, '68'),
(15, 'Service', 'KS', 'KSA', NULL, 'No', 4.76, NULL, NULL, NULL, 1015.00, NULL, NULL),
(16, 'Service', 'S', 'Safari', NULL, 'No', 4.76, NULL, NULL, NULL, 1016.00, NULL, NULL),
(17, 'Service', 'T', 'Ticket Charges', NULL, 'No', 4.76, NULL, NULL, NULL, 1017.00, NULL, NULL),
(18, 'Service', 'V', 'Visa 30 Days', NULL, 'No', 4.76, NULL, NULL, NULL, 1018.00, NULL, NULL),
(19, NULL, 'DD', 'DD', NULL, 'No', 4.76, NULL, NULL, NULL, 1019.00, NULL, NULL),
(20, NULL, 'DD', 'DDDD', NULL, 'No', 4.76, NULL, NULL, NULL, 2000.00, NULL, NULL),
(21, NULL, NULL, 'Totex Hair Mask  Keratine 500 ML', NULL, 'Yes', 4.76, NULL, NULL, NULL, 1800.00, NULL, NULL),
(22, NULL, NULL, 'Pepsi 1 Ltr', NULL, 'Yes', 4.76, 80.00, NULL, NULL, 100.00, NULL, NULL),
(23, NULL, NULL, '16mm silver', NULL, 'No', NULL, 33.00, NULL, NULL, 42.00, NULL, NULL),
(24, NULL, NULL, '16mm Gold', NULL, 'No', NULL, 56.00, NULL, NULL, 56.00, NULL, NULL),
(25, NULL, NULL, '16mm Gold', NULL, 'No', NULL, 56.00, NULL, NULL, 56.00, NULL, NULL),
(26, NULL, NULL, '16mm Gold', NULL, 'No', NULL, 56.00, NULL, NULL, 56.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobtitle`
--

CREATE TABLE `jobtitle` (
  `JobTitleID` int NOT NULL,
  `JobTitleName` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobtitle`
--

INSERT INTO `jobtitle` (`JobTitleID`, `JobTitleName`) VALUES
(1, 'Sale Manager'),
(2, 'Software Engineering'),
(3, 'Web Developer'),
(4, 'Mobile App Developer'),
(5, 'Digital Marketing'),
(6, 'Amazon');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `JournalID` int NOT NULL,
  `VHNO` varchar(15) DEFAULT NULL,
  `JournalType` varchar(10) DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `VoucherMstID` int DEFAULT NULL,
  `PettyMstID` int DEFAULT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `ExpenseMasterID` int DEFAULT NULL,
  `PaymentMasterID` int DEFAULT NULL,
  `PurchasePaymentMasterID` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Dr` double(10,2) DEFAULT NULL,
  `Cr` double(10,2) DEFAULT NULL,
  `Trace` decimal(10,0) DEFAULT NULL,
  `BankReconcile` varchar(15) DEFAULT NULL,
  `ReconcileDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`JournalID`, `VHNO`, `JournalType`, `ChartOfAccountID`, `PartyID`, `SupplierID`, `VoucherMstID`, `PettyMstID`, `InvoiceMasterID`, `ExpenseMasterID`, `PaymentMasterID`, `PurchasePaymentMasterID`, `Narration`, `Date`, `Dr`, `Cr`, `Trace`, `BankReconcile`, `ReconcileDate`) VALUES
(1276, 'BP23030001', 'BP', 111500, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, 'test', '2023-03-29', 250.00, NULL, NULL, NULL, NULL),
(1277, 'BP23030001', 'BP', 110201, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, 'test', '2023-03-29', NULL, 250.00, NULL, NULL, NULL),
(1278, 'TAX-00001', NULL, 110400, 1002, NULL, NULL, NULL, 175, NULL, NULL, NULL, NULL, '2023-04-01', 36.00, NULL, '123', NULL, NULL),
(1279, 'TAX-00001', NULL, 410100, 1002, NULL, NULL, NULL, 175, NULL, NULL, NULL, NULL, '2023-04-01', NULL, 36.00, '12345', NULL, NULL),
(1280, 'TAX-00002', NULL, 110400, 1002, NULL, NULL, NULL, 176, NULL, NULL, NULL, NULL, '2023-04-03', 3700.00, NULL, '123', NULL, NULL),
(1281, 'TAX-00002', NULL, 410100, 1002, NULL, NULL, NULL, 176, NULL, NULL, NULL, NULL, '2023-04-03', NULL, 3600.00, '12345', NULL, NULL),
(1282, 'TAX-00002', NULL, 210300, 1002, NULL, NULL, NULL, 176, NULL, NULL, NULL, NULL, '2023-04-03', NULL, 100.00, '12346', NULL, NULL),
(1283, 'TAX-00003', NULL, 110400, 1, NULL, NULL, NULL, 177, NULL, NULL, NULL, NULL, '2023-04-04', 80.00, NULL, '123', NULL, NULL),
(1284, 'TAX-00003', NULL, 410100, 1, NULL, NULL, NULL, 177, NULL, NULL, NULL, NULL, '2023-04-04', NULL, 80.00, '12345', NULL, NULL),
(1311, 'TAX-00004', NULL, 110400, 2214, NULL, NULL, NULL, 180, NULL, NULL, NULL, NULL, '2023-04-04', 112100.00, NULL, '123', NULL, NULL),
(1312, 'TAX-00004', NULL, 410100, 2214, NULL, NULL, NULL, 180, NULL, NULL, NULL, NULL, '2023-04-04', NULL, 112000.00, '12345', NULL, NULL),
(1313, 'TAX-00004', NULL, 210300, 2214, NULL, NULL, NULL, 180, NULL, NULL, NULL, NULL, '2023-04-04', NULL, 100.00, '12346', NULL, NULL),
(1314, 'PAY-1', 'CP', 110101, 2214, NULL, NULL, NULL, 180, NULL, 1, NULL, 'Payment made with payment refno 1', '2023-04-04', 100000.00, NULL, '514', NULL, NULL),
(1315, 'PAY-1', 'CP', 110400, 2214, NULL, NULL, NULL, 180, NULL, 1, NULL, 'Payment made with payment refno 1', '2023-04-04', NULL, 100000.00, '515', NULL, NULL),
(1316, 'PAY-2', 'CP', 110101, 2214, NULL, NULL, NULL, 180, NULL, 2, NULL, 'Payment made with payment refno 2', '2023-04-04', 12100.00, NULL, '514', NULL, NULL),
(1317, 'PAY-2', 'CP', 110400, 2214, NULL, NULL, NULL, 180, NULL, 2, NULL, 'Payment made with payment refno 2', '2023-04-04', NULL, 12100.00, '515', NULL, NULL),
(1322, 'CN-00001', NULL, 410175, 2214, NULL, NULL, NULL, 181, NULL, NULL, NULL, NULL, '2023-04-04', 100.00, NULL, '2123', NULL, NULL),
(1323, 'CN-00001', NULL, 110400, 2214, NULL, NULL, NULL, 181, NULL, NULL, NULL, NULL, '2023-04-04', NULL, 100.00, '2123', NULL, NULL),
(1324, 'EXP-00001', NULL, 110201, NULL, 2215, NULL, NULL, NULL, 2, NULL, NULL, '', '2023-04-04', NULL, 125.00, '614', NULL, NULL),
(1325, 'EXP-00001', NULL, 550121, NULL, 2215, NULL, NULL, NULL, 2, NULL, NULL, '', '2023-04-04', 100.00, NULL, '615', NULL, NULL),
(1326, 'EXP-00001', NULL, 210300, NULL, 2215, NULL, NULL, NULL, 2, NULL, NULL, '', '2023-04-04', 25.00, NULL, '617', NULL, NULL),
(1327, 'BILL-00001', NULL, 510102, NULL, 2214, NULL, NULL, 182, NULL, NULL, NULL, NULL, '2023-04-04', 5000.00, NULL, '111', NULL, NULL),
(1328, 'BILL-00001', NULL, 110800, NULL, 2214, NULL, NULL, 182, NULL, NULL, NULL, NULL, '2023-04-04', 238.00, NULL, '11112', NULL, NULL),
(1329, 'BILL-00001', NULL, 210100, NULL, 2214, NULL, NULL, 182, NULL, NULL, NULL, NULL, '2023-04-04', NULL, 5238.00, '11114', NULL, NULL),
(1332, 'DN-00001', NULL, 110400, NULL, 2214, NULL, NULL, 183, NULL, NULL, NULL, 'return', '2023-04-04', 5500.00, NULL, '22221', NULL, NULL),
(1333, 'DN-00001', NULL, 410100, NULL, 2214, NULL, NULL, 183, NULL, NULL, NULL, 'return', '2023-04-04', 5500.00, NULL, '22223', NULL, NULL),
(1334, 'BP23040002', 'BP', 110400, 2214, NULL, 25, NULL, NULL, NULL, NULL, NULL, 'paryt= acc rec\r\n\r\nsupplier = acc payable', '2023-04-04', 25.00, NULL, NULL, 'YES', NULL),
(1335, 'BP23040002', 'BP', 110201, 2214, NULL, 25, NULL, NULL, NULL, NULL, NULL, 'paryt= acc rec\r\n\r\nsupplier = acc payable', '2023-04-04', NULL, 25.00, NULL, 'YES', NULL),
(1336, 'BP23040002', 'BP', 210100, NULL, 2214, 25, NULL, NULL, NULL, NULL, NULL, 'paryt= acc rec\r\n\r\nsupplier = acc payable', '2023-04-04', 50.00, NULL, NULL, NULL, NULL),
(1337, 'BP23040002', 'BP', 110201, NULL, 2214, 25, NULL, NULL, NULL, NULL, NULL, 'paryt= acc rec\r\n\r\nsupplier = acc payable', '2023-04-04', NULL, 50.00, NULL, NULL, NULL),
(1338, 'BR23040001', 'BR', 110201, 2214, NULL, 26, NULL, NULL, NULL, NULL, NULL, 'rec from ahsan customer', '2023-04-04', 25.00, NULL, NULL, NULL, NULL),
(1339, 'BR23040001', 'BR', 110400, 2214, NULL, 26, NULL, NULL, NULL, NULL, NULL, 'rec from ahsan customer', '2023-04-04', NULL, 25.00, NULL, NULL, NULL),
(1340, 'TAX-00005', NULL, 110400, 1002, NULL, NULL, NULL, 184, NULL, NULL, NULL, NULL, '2023-04-04', 5580.00, NULL, '123', NULL, NULL),
(1341, 'TAX-00005', NULL, 410100, 1002, NULL, NULL, NULL, 184, NULL, NULL, NULL, NULL, '2023-04-04', NULL, 5580.00, '12345', NULL, NULL),
(1342, 'PAY-3', 'CP', 110101, 1002, NULL, NULL, NULL, 175, NULL, 3, NULL, 'Payment made with payment refno 3', '2023-04-04', 36.00, NULL, '514', NULL, NULL),
(1343, 'PAY-3', 'CP', 110400, 1002, NULL, NULL, NULL, 175, NULL, 3, NULL, 'Payment made with payment refno 3', '2023-04-04', NULL, 36.00, '515', NULL, NULL),
(1344, 'EXP-00002', NULL, 110201, NULL, 2215, NULL, NULL, NULL, 3, NULL, NULL, '', '2023-04-04', NULL, 105.00, '614', NULL, NULL),
(1345, 'EXP-00002', NULL, 550121, NULL, 2215, NULL, NULL, NULL, 3, NULL, NULL, '', '2023-04-04', 100.00, NULL, '615', NULL, NULL),
(1346, 'EXP-00002', NULL, 210300, NULL, 2215, NULL, NULL, NULL, 3, NULL, NULL, '', '2023-04-04', 5.00, NULL, '617', NULL, NULL),
(1347, 'BILLPAY-1', 'BP', 210100, NULL, 2214, NULL, NULL, 182, NULL, NULL, 1, 'Payment made with payment refno 1', '2023-04-04', 5238.00, NULL, '515', NULL, NULL),
(1348, 'BILLPAY-1', 'BP', 110201, NULL, 2214, NULL, NULL, 182, NULL, NULL, 1, 'Payment made with payment refno 1', '2023-04-04', NULL, 5238.00, '514', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `LeadID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Phone` varchar(75) DEFAULT NULL,
  `Email` varchar(75) DEFAULT NULL,
  `CompanyName` varchar(255) DEFAULT NULL,
  `BusinessType` varchar(255) DEFAULT NULL,
  `LeadStage` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `LeaveID` int NOT NULL,
  `LeaveTypeID` int DEFAULT NULL,
  `BranchID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `FromDate` date DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `ToTime` time DEFAULT NULL,
  `Reason` longtext,
  `DaysApproved` int DEFAULT NULL,
  `DaysRemaining` int DEFAULT NULL,
  `OMStatus` varchar(20) DEFAULT 'Pending',
  `OMStatusDate` timestamp NULL DEFAULT NULL,
  `OMRemarks` longtext,
  `HRStatus` varchar(20) DEFAULT 'Pending',
  `HRStatusDate` timestamp NULL DEFAULT NULL,
  `HRRemarks` longtext,
  `GMStatus` varchar(20) DEFAULT 'Pending',
  `GMRemarks` longtext,
  `GMStatusDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`LeaveID`, `LeaveTypeID`, `BranchID`, `EmployeeID`, `FromDate`, `ToDate`, `FromTime`, `ToTime`, `Reason`, `DaysApproved`, `DaysRemaining`, `OMStatus`, `OMStatusDate`, `OMRemarks`, `HRStatus`, `HRStatusDate`, `HRRemarks`, `GMStatus`, `GMRemarks`, `GMStatusDate`) VALUES
(89, 2, 1, 118, '2023-05-13', '2023-05-13', '12:00:00', '16:00:00', 'urgent piece of work', NULL, NULL, 'Pending', NULL, NULL, 'Pending', NULL, NULL, 'Yes', 'approved.', '2023-05-13 06:00:00'),
(90, 3, 1, 118, '2023-05-15', '2023-05-15', '00:00:00', '00:00:00', 'sick leave', NULL, NULL, 'Pending', NULL, NULL, 'Pending', NULL, NULL, 'Pending', NULL, NULL);

--
-- Triggers `leave`
--
DELIMITER $$
CREATE TRIGGER `afterdeleteleave` AFTER DELETE ON `leave` FOR EACH ROW begin

delete from leave_detail where LeaveID = old.LeaveID;


end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `leave_detail`
--

CREATE TABLE `leave_detail` (
  `LeaveDetailID` int NOT NULL,
  `LeaveID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `LeaveTypeID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `ToTime` time DEFAULT NULL,
  `PaymentStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `leave_detail`
--

INSERT INTO `leave_detail` (`LeaveDetailID`, `LeaveID`, `EmployeeID`, `LeaveTypeID`, `Date`, `FromTime`, `ToTime`, `PaymentStatus`) VALUES
(260, 89, 118, 2, '2023-05-13', '12:00:00', '16:00:00', '0'),
(261, 90, 118, 3, '2023-05-15', '00:00:00', '00:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `leave_status`
--

CREATE TABLE `leave_status` (
  `LeaveStatusID` int NOT NULL,
  `LeaveStatus` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_status`
--

INSERT INTO `leave_status` (`LeaveStatusID`, `LeaveStatus`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `LeaveTypeID` int NOT NULL,
  `LeaveTypeName` varchar(35) DEFAULT NULL,
  `DaysAllowed` varchar(255) DEFAULT NULL,
  `NoOfDays` int DEFAULT NULL,
  `Points` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`LeaveTypeID`, `LeaveTypeName`, `DaysAllowed`, `NoOfDays`, `Points`) VALUES
(1, 'Annual Leave', '30 days', 30, 1.00),
(2, 'Short Leave', '7 days', 7, 0.50),
(3, 'Sick Leave', '15 days\' full pay, 15 days half pay, 45 days unpaid', 15, 1.00),
(4, 'Maternity', '60 days', 45, 1.00),
(5, 'Bereavement', '10 days for blood relation', 3, 1.00),
(6, 'Study ', '10 days per year ', 10, 1.00),
(7, 'Emergency', '7 days', 7, 1.00),
(8, 'Paternity', '5 days', 5, 1.00),
(9, 'Emergency', '7 days without pay', 7, 1.00),
(10, 'Unpaid', '7 days without pay', 7, 1.00),
(11, 'Casual Leave', '7 days without pay', 7, 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `letter`
--

CREATE TABLE `letter` (
  `LetterID` int NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` longtext,
  `UserID` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letter`
--

INSERT INTO `letter` (`LetterID`, `Title`, `Content`, `UserID`, `eDate`) VALUES
(1, 'Offer Letter', '<p><strong>^FullName^</strong><br />Filipino Passport: <strong>^Passport^</strong></p>\r\n<p>Dear ^FirstName^;</p>\r\n<p align=\"center\"><strong><u>EMPLOYMENT OFFER</u></strong></p>\r\n<p>We are glad to offer you employment in our company on the following terms and conditions:</p>\r\n<table border=\"0\" width=\"1056\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"25\">1.</td>\r\n<td valign=\"top\" width=\"213\">Position&nbsp;</td>\r\n<td valign=\"top\" width=\"818\">: ^Designation^</td>\r\n</tr>\r\n<tr>\r\n<td>2.</td>\r\n<td valign=\"top\">Location</td>\r\n<td valign=\"top\">: ^Location^</td>\r\n</tr>\r\n<tr>\r\n<td>3.</td>\r\n<td valign=\"top\">Total Monthly Salary</td>\r\n<td valign=\"top\">: PKR: ^Salary^</td>\r\n</tr>\r\n<tr>\r\n<td>4.</td>\r\n<td valign=\"top\">Bonus/Commission</td>\r\n<td valign=\"top\">: Upon company discretion</td>\r\n</tr>\r\n<tr>\r\n<td>5.</td>\r\n<td valign=\"top\">Accommodation</td>\r\n<td valign=\"top\">: to be arranged by Employee</td>\r\n</tr>\r\n<tr>\r\n<td>6.</td>\r\n<td valign=\"top\">Transportation</td>\r\n<td valign=\"top\">: to be arranged by Employee</td>\r\n</tr>\r\n<tr>\r\n<td>7.</td>\r\n<td valign=\"top\">Contract period</td>\r\n<td valign=\"top\">: Two years, UNLIMITED</td>\r\n</tr>\r\n<tr>\r\n<td>8.</td>\r\n<td valign=\"top\">Probation period</td>\r\n<td valign=\"top\">: (6) months</td>\r\n</tr>\r\n<tr>\r\n<td>9.</td>\r\n<td valign=\"top\">Working hours</td>\r\n<td valign=\"top\">: 8 hours/day, 6 days/week</td>\r\n</tr>\r\n<tr>\r\n<td>10.</td>\r\n<td valign=\"top\">Vacation</td>\r\n<td valign=\"top\">: 30 days per year</td>\r\n</tr>\r\n<tr>\r\n<td>11.</td>\r\n<td valign=\"top\">Increment after probation</td>\r\n<td valign=\"top\">: PKR 1,000</td>\r\n</tr>\r\n<tr>\r\n<td>12.</td>\r\n<td valign=\"top\">Air Ticket</td>\r\n<td valign=\"top\">: Upon renewal the contract you can take returned ticket from DXB to your home country.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td valign=\"top\">&nbsp;</td>\r\n<td valign=\"top\">: If you will not renew you can only avail returned ticket to your home country</td>\r\n</tr>\r\n<tr>\r\n<td>13.</td>\r\n<td valign=\"top\">Medical, Insurance</td>\r\n<td valign=\"top\">: As per PAK. Labor Law</td>\r\n</tr>\r\n<tr>\r\n<td>14.</td>\r\n<td valign=\"top\">End of Service Benefits</td>\r\n<td valign=\"top\">: As per PAK. Labor Law</td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">&nbsp;</td>\r\n<td valign=\"top\">&nbsp;</td>\r\n<td valign=\"top\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Should you accept our offer based on the above conditions, please sign and return copy of this letter as a token of your acceptance. The joining date will be on July 17th and if failed to come this offer will be null and void.</p>\r\n<p>This Offer is subject to your visa approval, medical fitness and you&rsquo;re reporting to duty on agreed date.</p>\r\n<p>This Offer is valid for 7 days from date of issuing.</p>\r\n<p>We welcome you to <strong>Shah Corporation</strong> and wish you good luck.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\"><strong>Manager HR</strong></td>\r\n<td width=\"50%\"><em>Accepted: _____________________</em></td>\r\n</tr>\r\n<tr>\r\n<td width=\"50%\"><em>Managing Director</em></td>\r\n<td width=\"50%\"><em>Date:</em></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-12-02 06:30:41'),
(3, 'Increment Letter', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\">Ref: SHAH/L/2021-82&nbsp;</td>\r\n<td width=\"50%\">\r\n<div align=\"right\">Date: May 23, 2021</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p align=\"center\">&nbsp;</p>\r\n<p>^FullName^,<br />Passport No: ^Passport^<br />Nationality: ^Nationality^<br />^Designation^<br />Friends Commodities Brokerage LLC</p>\r\n<p>&nbsp;</p>\r\n<p>Subject: <strong><u>Employee Appreciation and performance bonus</u></strong></p>\r\n<p>Dear ^FirstName^,</p>\r\n<p>After reviewing your performance in the last three months carefully, the management of Friends Commodities Brokerage is glad to offer you an increment for achieving the sales targets as expected. The effective date of this increase is August 1, 2021 and the increase will appear as follow;</p>\r\n<p>We hope this will encourage you to perform even better, and please note that the company will have the complete right to halt the bonus at any time in case your performances fall.</p>\r\n<p>Thank you for your commitment and dedication. Keep up the good work.</p>\r\n<p>&nbsp;</p>\r\n<p>Sincerely,</p>\r\n<p>Approved By:</p>\r\n<p>&nbsp;</p>\r\n<p>HR Administrator&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : ___________________</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>I have read, fully understand and accept the terms and conditions mentioned herein<br />Full Name: _____________________________<br />Signature: _____________________________Date: ______________________</p>', NULL, '2022-12-02 06:33:18'),
(5, 'Salary Letter', '<p class=\"style1\" align=\"center\">Salary Certificate</p>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\">Ref: SHAH/L/2021-82&nbsp;</td>\r\n<td width=\"50%\">\r\n<div align=\"right\">Date: May 23, 2021</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p align=\"center\">&nbsp;</p>\r\n<p>To whom it may concern;<br />This is to certify that <strong>^FullName^ </strong>holding Passport number <strong>^Passport^</strong> is working with our reputed company <strong>Friends Commodity Brokerage LLC</strong> as a Marketing Specialist. He has been working with us since 1st August 2019 and proved to be a very dedicated resource that has been very loyal to the company.<br />We are issuing this letter on the request of <strong>^FullName^ </strong>and do not hold any liability on behalf of this letter or part of this letter on our company.<br />This certificate can be used for the purpose of opening bank accounts only.<br />His salary particulars are given below:</p>\r\n<p>Basic Salary&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PKR 5000.00<br />House Rent Allowance&nbsp; &nbsp; &nbsp;PKR 3000.00<br /><u>Transport Allowance&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PKR 2000.00</u><br /><strong>Net Salary&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PKR 10,000.00</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Sincerely yours,</p>\r\n<p><em><u>HR Administrator</u></em><br /><em><u>04- 580 7617</u></em></p>', NULL, '2022-12-02 06:32:35'),
(6, 'Warning Letter', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\">Name of Employee: <strong>&nbsp;^FullName^</strong></td>\r\n<td width=\"50%\">\r\n<div align=\"right\">Date: May 23, 2021</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Passport No: <strong>^Passport^</strong></td>\r\n<td>\r\n<div align=\"right\">Ref: SHAH/L/2021-82&nbsp;</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Nationality: ^Nationality^</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><strong>Subject :</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><u>Third Written Warning</u></strong><strong><u> </u></strong></p>\r\n<p>&nbsp;</p>\r\n<p>Dear <strong>^FirstName^</strong>,<br />The management has been observing your performance for a couple of months, and unfortunately we noticed that you were not able to meet the minimum target which has been set for you. &nbsp;We are very clear and you were informed beforehand that accomplishment of daily targets by each employee has a huge importance to the company&rsquo;s growth.</p>\r\n<p><br />You are advised to achieve a desired sales target of at least <strong>10 Million from today until the 22nd day of the month of September.</strong><br />Please be reminded that your performance would be strictly evaluated at the end of this month and <strong><em>failure to comply with the said target may lead into corrective action up to termination</em></strong>. So kindly do all your best and hoping that you will achieve the sales target required by the management.</p>\r\n<p>This is for your kind information.</p>\r\n<p>Sincerely yours;</p>\r\n<p>&nbsp;</p>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\">&nbsp;</td>\r\n<td width=\"50%\"><strong>Acknowledge By: ______________</strong><strong>___</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"50%\"><strong>HR Administrator</strong>&nbsp;&nbsp;</td>\r\n<td width=\"50%\"><strong>^FirstName^</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-12-02 06:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `LoanID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `RequestDate` date DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `DateAccepted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LoanID`, `EmployeeID`, `RequestDate`, `Amount`, `Remarks`, `DateAccepted`) VALUES
(4, 117, '2022-12-15', 15000, 'loan for home', NULL),
(5, 118, '2023-01-04', 15000, 'for home contrstuction', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_deduction`
--

CREATE TABLE `loan_deduction` (
  `LoanDeductionID` int NOT NULL,
  `LoanID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `LoanDeductionDate` date DEFAULT NULL,
  `Amount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_deduction`
--

INSERT INTO `loan_deduction` (`LoanDeductionID`, `LoanID`, `EmployeeID`, `LoanDeductionDate`, `Amount`) VALUES
(43, 4, 117, '2022-12-18', 1250),
(44, 4, 117, '2023-01-18', 1250),
(45, 4, 117, '2023-02-18', 1250),
(46, 4, 117, '2023-03-18', 1250),
(47, 4, 117, '2023-04-18', 1250),
(48, 4, 117, '2023-05-18', 1250),
(49, 4, 117, '2023-06-18', 1250),
(50, 4, 117, '2023-07-18', 1250),
(51, 4, 117, '2023-08-18', 1250),
(52, 4, 117, '2023-09-18', 1250),
(53, 4, 117, '2023-10-18', 1250),
(54, 4, 117, '2023-11-18', 1250),
(55, 5, 118, '2023-02-01', 1500),
(56, 5, 118, '2023-03-01', 1500),
(57, 5, 118, '2023-04-01', 1500),
(58, 5, 118, '2023-05-01', 1500),
(59, 5, 118, '2023-06-01', 1500),
(60, 5, 118, '2023-07-01', 1500),
(61, 5, 118, '2023-08-01', 1500),
(62, 5, 118, '2023-09-01', 1500),
(63, 5, 118, '2023-10-01', 1500),
(64, 5, 118, '2023-11-01', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_10_10_143303_create_attendances_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthname`
--

CREATE TABLE `monthname` (
  `MonthID` int NOT NULL,
  `MonthName` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthname`
--

INSERT INTO `monthname` (`MonthID`, `MonthName`) VALUES
(10, 'Oct-2021'),
(11, 'Nov-2021'),
(12, 'Dec-2021'),
(13, 'Jan-2022'),
(14, 'Feb-2022'),
(15, 'Mar-2022'),
(16, 'Apr-2022'),
(17, 'May-2022'),
(18, 'Jun-2022'),
(19, 'Jul-2022'),
(20, 'Aug-2022'),
(21, 'Sep-2022'),
(22, 'Oct-2022'),
(23, 'Nov-2022'),
(24, 'Dec-2022'),
(25, 'Jan-2023'),
(26, 'Feb-2023'),
(27, 'Mar-2023'),
(28, 'Apr-2023'),
(29, 'May-2023'),
(30, 'Jun-2023'),
(31, 'Jul-2023'),
(32, 'Aug-2023'),
(33, 'Sep-2023'),
(34, 'Oct-2023'),
(35, 'Nov-2023'),
(36, 'Dec-2023');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `NoticeBoardID` int NOT NULL,
  `Title` longtext,
  `Detail` longtext,
  `Status` varchar(25) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT NULL,
  `uDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`NoticeBoardID`, `Title`, `Detail`, `Status`, `Date`, `eDate`, `uDate`) VALUES
(1, 'New Title', '<p>Authorities say lender &lsquo;changed its mind&rsquo; on at least four prior actions<br />\n  &bull; Officials hint at &lsquo;1998-like situation&rsquo;, say foreign capitals working for Pakistan&rsquo;s &lsquo;meltdown&rsquo;<br />\n  &bull; Despite its pro-poor mantra, sources claim Fund pushing measures that may hit low-income groups</p>\n<p>ISLAMABAD: The government has been trying to put on a brave face in its struggle to unlock critical funding from the IMF, but background discussions with officials reveal the administration is quite nervous beneath its confident exterior, as it finds it increasingly difficult to convince the Fund to release a loan instalment.</p>\n<p>The International Monetary Fund (IMF) has changed interpretations of at least four prior actions ahead of rea&shy;ching a staff-level agreement (SLA) on the direly needed economic bailout.</p>\n<p>Sources say the authorities are extremely annoyed at the latest situation, describing it as &lsquo;maltreatment&rsquo;.</p>', 'Publish', '2023-02-01', NULL, '2023-03-01 04:28:10'),
(2, 'Pakistan, IMF resume talks to revive stalled bailout', '  &bull; Officials hint at &lsquo;1998-like situation&rsquo;, say foreign capitals working for Pakistan&rsquo;s &lsquo;meltdown&rsquo;<br />', NULL, '2023-02-01', NULL, '2023-03-01 04:27:19'),
(3, 'sdfsdf', '  &bull; Despite its pro-poor mantra, sources claim Fund pushing measures that may hit low-income groups</p>', 'Draft', '2023-02-01', NULL, '2023-03-01 04:27:19'),
(4, 'dfsdfsd', '<p>ISLAMABAD: The government has been trying to put on a brave face in its struggle to unlock critical funding from the IMF, but background discussions with officials reveal the administration is quite nervous beneath its confident exterior, as it finds it increasingly difficult to convince the Fund to release a loan instalment.</p>', 'Draft', '2023-02-01', NULL, '2023-03-01 04:27:19'),
(5, 'ali', '<p>The International Monetary Fund (IMF) has changed interpretations of at least four prior actions ahead of rea&shy;ching a staff-level agreement (SLA) on the direly needed economic bailout.</p>', 'Publish', '2023-02-15', NULL, '2023-03-01 04:27:19'),
(6, NULL, '<p>Sources say the authorities are extremely annoyed at the latest situation, describing it as &lsquo;maltreatment&rsquo;.</p>', NULL, NULL, NULL, NULL),
(7, 'SHSJSHGHJH', '<p>DJHDJDHJD</p>\r\n<p>DMNMDI,KPO KLOOE</p>', 'Draft', '2023-03-04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notice_seen`
--

CREATE TABLE `notice_seen` (
  `NoticeSeenID` int NOT NULL,
  `NoticeBoardID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `PartyID` int NOT NULL,
  `PartyName` varchar(150) DEFAULT NULL,
  `TRN` varchar(150) DEFAULT '',
  `Address` varchar(75) DEFAULT NULL,
  `City` varchar(175) DEFAULT NULL,
  `Mobile` varchar(150) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Website` varchar(150) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `InvoiceDueDays` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`PartyID`, `PartyName`, `TRN`, `Address`, `City`, `Mobile`, `Phone`, `Email`, `Website`, `Active`, `InvoiceDueDays`, `eDate`) VALUES
(1, 'Walkin Customer', '1234', '000000', 'Peshawar', '0000', '00000', '00000', '0000', 'Yes', 0, '2022-07-08 04:12:14'),
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
-- Table structure for table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `PaymentDetailID` int NOT NULL,
  `PaymentMasterID` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `Payment` double(8,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_detail`
--

INSERT INTO `payment_detail` (`PaymentDetailID`, `PaymentMasterID`, `PaymentDate`, `InvoiceMasterID`, `Payment`, `eDate`) VALUES
(56, 1, '2023-04-04', 180, 100000.00, '2023-04-04 06:44:28'),
(57, 2, '2023-04-04', 180, 12100.00, '2023-04-04 06:44:58'),
(60, 3, '2023-04-04', 175, 36.00, '2023-04-04 18:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `payment_master`
--

CREATE TABLE `payment_master` (
  `PaymentMasterID` int NOT NULL,
  `PartyID` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaymentAmount` double(8,2) DEFAULT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `ReferenceNo` varchar(35) DEFAULT NULL,
  `File` varchar(35) DEFAULT NULL,
  `Notes` longtext,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_master`
--

INSERT INTO `payment_master` (`PaymentMasterID`, `PartyID`, `PaymentDate`, `PaymentAmount`, `PaymentMode`, `ChartOfAccountID`, `ReferenceNo`, `File`, `Notes`, `eDate`) VALUES
(1, 2214, '2023-04-04', 100000.00, 'Cash', 110400, 'TAX-00004', NULL, NULL, '2023-04-04 06:44:28'),
(2, 2214, '2023-04-04', 12100.00, 'Cash', 110400, NULL, NULL, NULL, '2023-04-04 06:44:58'),
(3, 1002, '2023-04-04', 36.00, 'Cash', 110400, 'TAX-00001', NULL, NULL, '2023-04-04 18:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `ID` int NOT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_mode`
--

INSERT INTO `payment_mode` (`ID`, `PaymentMode`) VALUES
(1, 'Cash'),
(2, 'Bank Transfer'),
(3, 'Cheque'),
(4, 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `pettycash_detail`
--

CREATE TABLE `pettycash_detail` (
  `PettyDetID` int NOT NULL,
  `PettyMstID` int DEFAULT NULL,
  `PettyVoucher` varchar(12) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Invoice` varchar(35) DEFAULT NULL,
  `RefNo` varchar(35) DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `FromChOfAcc` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pettycash_detail`
--

INSERT INTO `pettycash_detail` (`PettyDetID`, `PettyMstID`, `PettyVoucher`, `SupplierID`, `Date`, `ChOfAcc`, `Narration`, `Invoice`, `RefNo`, `Debit`, `FromChOfAcc`) VALUES
(1, 1, 'PC23050001', NULL, '2023-05-10', 110201, NULL, '100', NULL, NULL, 110400),
(2, 1, 'PC23050001', NULL, '2023-05-10', 110200, NULL, NULL, NULL, NULL, 110400),
(3, 2, 'PC23050002', NULL, '2023-05-11', 210302, 'Paid Hatim Legal Notive', '1233', NULL, NULL, 111300),
(4, 3, 'PC23050002', NULL, '2023-05-11', 210302, 'Paid Hatim Legal Notive', '1233', NULL, NULL, 111300);

-- --------------------------------------------------------

--
-- Table structure for table `pettycash_master`
--

CREATE TABLE `pettycash_master` (
  `PettyMstID` int NOT NULL,
  `PettyVoucher` varchar(11) DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pettycash_master`
--

INSERT INTO `pettycash_master` (`PettyMstID`, `PettyVoucher`, `ChOfAcc`, `Date`, `Narration`, `Credit`) VALUES
(1, 'PC23050001', 110400, '2023-05-10', NULL, NULL),
(2, 'PC23050002', 111300, '2023-05-11', 'Paid Hatim Legal Notive', NULL),
(3, 'PC23050002', 111300, '2023-05-11', 'Paid Hatim Legal Notive', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `price` varchar(55) DEFAULT NULL,
  `details` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `details`) VALUES
(1, 'Kashif', '55', '55'),
(2, 'Mu', '55', '66'),
(3, 'usma', NULL, NULL),
(4, 'khan', NULL, NULL),
(5, 'pakistna', NULL, NULL),
(6, 'india', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `progress_report`
--

CREATE TABLE `progress_report` (
  `ID` bigint NOT NULL,
  `Date` date DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Subject` longtext,
  `Location` varchar(255) DEFAULT NULL,
  `MeetingRemarks` longtext,
  `Picture` varchar(255) DEFAULT NULL,
  `SupervisorComments` longtext,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchasepayment_detail`
--

CREATE TABLE `purchasepayment_detail` (
  `PurchasePaymentDetailID` int NOT NULL,
  `PurchasePaymentMasterID` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `Payment` double(8,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasepayment_detail`
--

INSERT INTO `purchasepayment_detail` (`PurchasePaymentDetailID`, `PurchasePaymentMasterID`, `PaymentDate`, `InvoiceMasterID`, `Payment`, `eDate`) VALUES
(9, 1, '2023-04-04', 182, 5238.00, '2023-04-04 18:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `purchasepayment_master`
--

CREATE TABLE `purchasepayment_master` (
  `PurchasePaymentMasterID` int NOT NULL,
  `SupplierID` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaymentAmount` double(8,2) DEFAULT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `ReferenceNo` varchar(35) DEFAULT NULL,
  `File` varchar(35) DEFAULT NULL,
  `Notes` longtext,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasepayment_master`
--

INSERT INTO `purchasepayment_master` (`PurchasePaymentMasterID`, `SupplierID`, `PaymentDate`, `PaymentAmount`, `PaymentMode`, `ChartOfAccountID`, `ReferenceNo`, `File`, `Notes`, `eDate`) VALUES
(1, 2214, '2023-04-04', 5238.00, '110201', 210100, NULL, NULL, NULL, '2023-04-04 18:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_detail`
--

CREATE TABLE `purchase_order_detail` (
  `PurchaseOrderDetailID` int NOT NULL,
  `PurchaseOrderMasterID` int NOT NULL,
  `Date` date DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `Qty` varchar(10) DEFAULT NULL,
  `Unit` varchar(10) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Amount` double(8,2) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `purchase_order_detail`
--

INSERT INTO `purchase_order_detail` (`PurchaseOrderDetailID`, `PurchaseOrderMasterID`, `Date`, `ItemID`, `Description`, `Rate`, `Qty`, `Unit`, `DiscountPer`, `Discount`, `Tax`, `TaxPer`, `Amount`, `Remarks`) VALUES
(8, 15, '2022-09-05', 10, 'dfsf', 100.00, '1', NULL, NULL, NULL, 5.00, 5.00, 105.00, '1'),
(15, 17, '2022-12-26', 22, NULL, 100.00, '1', NULL, NULL, NULL, 0.00, 0.00, 100.00, NULL),
(16, 17, '2022-12-26', 22, NULL, 100.00, '1', NULL, NULL, NULL, 0.00, 0.00, 100.00, NULL),
(17, 17, '2022-12-26', NULL, NULL, 250.00, '1', NULL, NULL, NULL, 0.00, 0.00, 100.00, NULL),
(35, 18, '2022-12-27', 22, NULL, 100.00, '1', NULL, NULL, NULL, 0.00, 0.00, 100.00, NULL),
(36, 18, '2022-12-27', 24, NULL, 80.00, '1', NULL, NULL, NULL, 0.00, 0.00, 80.00, NULL),
(37, 18, '2022-12-27', 25, NULL, 36.00, '1', NULL, NULL, NULL, 0.00, 0.00, 36.00, NULL),
(38, 18, '2022-12-27', 26, NULL, 36.00, '1', NULL, NULL, NULL, 0.00, 0.00, 36.00, NULL),
(39, 18, '2022-12-27', 22, NULL, 100.00, '1', NULL, NULL, NULL, 0.00, 0.00, 100.00, NULL),
(40, 18, '2022-12-27', 24, NULL, 80.00, '1', NULL, NULL, NULL, 0.00, 0.00, 80.00, NULL),
(47, 10, '2022-09-05', 10, '32132312', 250.00, '1', NULL, NULL, NULL, 12.50, 5.00, 262.50, NULL),
(48, 10, '2022-09-05', 11, 'dfsdfsdf', 250.00, '1', NULL, NULL, NULL, 12.50, 5.00, 262.50, NULL),
(49, 11, '2022-09-05', 22, NULL, 100.00, '1', NULL, NULL, NULL, 5.00, 5.00, 105.00, NULL),
(50, 19, '2023-04-04', 24, NULL, 80.00, '1', NULL, NULL, NULL, 3.80, 4.76, 83.99, NULL),
(51, 19, '2023-04-04', 27, NULL, 48.00, '1', NULL, NULL, NULL, 2.28, 4.76, 50.28, NULL),
(52, 20, '2023-04-04', 23, NULL, 5500.00, '1', NULL, NULL, NULL, 0.00, 0.00, 5500.00, NULL),
(53, 21, '2023-04-04', 22, NULL, 100.00, '1', NULL, NULL, NULL, 5.00, 5.00, 105.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_master`
--

CREATE TABLE `purchase_order_master` (
  `PurchaseOrderMasterID` int NOT NULL,
  `PON` varchar(10) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `ReferenceNo` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `PONotes` varchar(255) DEFAULT NULL,
  `DeliveryNotes` longtext,
  `UserID` int DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `SubTotal` double(8,2) DEFAULT NULL,
  `GrandTotal` double(8,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order_master`
--

INSERT INTO `purchase_order_master` (`PurchaseOrderMasterID`, `PON`, `SupplierID`, `ReferenceNo`, `Date`, `DeliveryDate`, `PONotes`, `DeliveryNotes`, `UserID`, `Subject`, `DiscountPer`, `Discount`, `Tax`, `SubTotal`, `GrandTotal`, `eDate`) VALUES
(10, 'PON-00001', 1002, NULL, '2022-09-05', NULL, 'Thanks for your business.', NULL, 1, 'zxczxc', NULL, NULL, 25.00, NULL, 525.00, '2022-12-30 05:21:48'),
(11, 'PON-00011', 1002, NULL, '2022-09-05', NULL, 'Thanks for your business.', NULL, 1, NULL, NULL, NULL, 5.00, NULL, 105.00, '2022-12-30 05:22:17'),
(12, 'PON-00011', 1, NULL, '2022-09-05', '2022-09-05', 'Thanks for your business.', NULL, NULL, NULL, NULL, NULL, 5.00, NULL, NULL, '2022-09-05 07:50:53'),
(13, 'PON-00013', 1, NULL, '2022-09-05', '2022-09-05', 'Thanks for your business.', NULL, NULL, NULL, NULL, NULL, 4.95, NULL, NULL, '2022-09-05 07:51:55'),
(14, 'PON-00014', 1, NULL, '2022-09-05', '2022-09-05', 'Thanks for your business.', NULL, NULL, NULL, NULL, NULL, 5.00, NULL, NULL, '2022-09-05 07:52:28'),
(15, 'PON-00014', 1, NULL, '2022-09-05', '2022-09-05', 'Thanks for your business.', NULL, NULL, NULL, NULL, NULL, 5.00, NULL, NULL, '2022-09-05 07:52:41'),
(16, 'PON-00016', 1002, NULL, '2022-09-05', NULL, NULL, NULL, NULL, 'xcv', NULL, NULL, NULL, NULL, NULL, '2022-09-05 08:02:03'),
(17, 'PON-00017', 1002, NULL, '2022-12-26', NULL, 'Thanks for your business.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-26 06:40:22'),
(18, 'PON-00018', 1002, NULL, '2022-12-27', NULL, 'Thanks for your business.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-27 09:11:32'),
(19, 'PON-00019', 1002, NULL, '2023-04-04', '2023-04-04', 'Thanks for your business.', NULL, 1, '654654', NULL, NULL, 6.09, NULL, NULL, '2023-04-04 06:13:09'),
(20, 'PON-00020', 2214, NULL, '2023-04-04', '2023-04-04', 'Thanks for your business.', NULL, 1, '654', NULL, NULL, 0.00, NULL, NULL, '2023-04-04 06:50:35'),
(21, 'PON-00021', 1002, NULL, '2023-04-04', '2023-04-04', 'Thanks for your business.', NULL, 1, NULL, NULL, NULL, 5.00, NULL, NULL, '2023-04-04 18:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` int NOT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `Table`, `Action`, `Allow`) VALUES
(1, 'Invoice', 'List', 'Y'),
(12, 'Invoice', 'Create', 'Y'),
(13, 'Invoice', 'Update', 'Y'),
(14, 'Invoice', 'Delete', 'Y'),
(15, 'Invoice', 'View', 'Y'),
(16, 'Invoice', 'PDF', 'Y'),
(63, 'Voucher', 'List', 'Y'),
(64, 'Voucher', 'Create', 'Y'),
(65, 'Voucher', 'Update', 'Y'),
(66, 'Voucher', 'Delete', 'Y'),
(67, 'Voucher', 'View', 'Y'),
(68, 'Petty Cash', 'List', 'Y'),
(69, 'Petty Cash', 'Create', 'Y'),
(70, 'Petty Cash', 'Update', 'Y'),
(71, 'Petty Cash', 'Delete', 'Y'),
(72, 'Petty Cash', 'View', 'Y'),
(73, 'Adjustment Balance', 'Create', 'Y'),
(74, 'Chart of Account', 'List / Create', 'Y'),
(75, 'Chart of Account', 'Update', 'Y'),
(76, 'Chart of Account', 'Delete', 'Y'),
(77, 'Item/Inventory', 'List / Create', 'Y'),
(78, 'Item/Inventory', 'Update', 'Y'),
(79, 'Item/Inventory', 'Delete', 'Y'),
(80, 'Party / Customers', 'List / Create', 'Y'),
(81, 'Party / Customers', 'Update', 'Y'),
(82, 'Party / Customers', 'Delete', 'Y'),
(83, 'Supplier', 'List / Create', 'Y'),
(84, 'Supplier', 'Update', 'Y'),
(85, 'Supplier', 'Delete', 'Y'),
(86, 'User', 'List / Create', 'Y'),
(87, 'User', 'Update', 'Y'),
(88, 'User', 'Delete', 'Y'),
(89, 'User Rights', 'Assign', 'Y'),
(90, 'Party Ledger', 'View', 'Y'),
(91, 'Party Ledger', 'PDF', 'Y'),
(92, 'Party Balance', 'View', 'Y'),
(93, 'Party Balance', 'PDF', 'Y'),
(94, 'Yearly Report', 'View', 'Y'),
(95, 'Yearly Report', 'PDF', 'Y'),
(96, 'Ageing Report', 'View', 'Y'),
(97, 'Ageing Report', 'PDF', 'Y'),
(98, 'Party Analysis', 'View', 'Y'),
(99, 'Party Analysis', 'PDF', 'Y'),
(100, 'Party List', 'View', 'Y'),
(101, 'Party List', 'PDF', 'Y'),
(102, 'Outstanding Invoices', 'View', 'Y'),
(103, 'Outstanding Invoices', 'PDF', 'Y'),
(104, 'Supplier Ledger', 'View', 'Y'),
(105, 'Supplier Ledger', 'PDF', 'Y'),
(106, 'Supplier Balance', 'View', 'Y'),
(107, 'Supplier Balance', 'PDF', 'Y'),
(108, 'Sale Invoice', 'View', 'Y'),
(109, 'Sale Invoice', 'PDF', 'Y'),
(110, 'Ticket Register', 'View', 'Y'),
(111, 'Ticket Register', 'PDF', 'Y'),
(112, 'Airline Summary', 'View', 'Y'),
(113, 'Airline Summary', 'PDF', 'Y'),
(114, 'Sale Man Report', 'View', 'Y'),
(115, 'Sale Man Report', 'PDF', 'Y'),
(116, 'Tax Report', 'View', 'Y'),
(117, 'Tax Report', 'PDF', 'Y'),
(118, 'Sales Report', 'View', 'Y'),
(119, 'Sales Report', 'PDF', 'Y'),
(120, 'Voucher Report', 'View', 'Y'),
(121, 'Voucher Report', 'PDF', 'Y'),
(122, 'Cash Book', 'View', 'Y'),
(123, 'Cash Book', 'PDF', 'Y'),
(124, 'Day Book', 'View', 'Y'),
(125, 'Day Book', 'PDF', 'Y'),
(126, 'General Ledger', 'View', 'Y'),
(127, 'General Ledger', 'PDF', 'Y'),
(128, 'Trial Balance', 'View', 'Y'),
(129, 'Trial Balance', 'PDF', 'Y'),
(130, 'Trial with Activity', 'View', 'Y'),
(131, 'Trial with Activity', 'PDF', 'Y'),
(132, 'Yearly Summary', 'View', 'Y'),
(133, 'Yearly Summary', 'PDF', 'Y'),
(134, 'Profit & Loss ', 'View', 'Y'),
(135, 'Profit & Loss ', 'PDF', 'Y'),
(136, 'Balance Sheet', 'View', 'Y'),
(137, 'Balance Sheet', 'PDF', 'Y'),
(138, 'Invoice Summary', 'View', 'Y'),
(139, 'Invoice Summary', 'PDF', 'Y'),
(140, 'Party Wise Sale', 'View', 'Y'),
(141, 'Party Wise Sale', 'PDF', 'Y'),
(142, 'Employee', 'View', 'Y'),
(143, 'Employee', 'Create', 'Y'),
(144, 'Employee', 'Update', 'Y'),
(145, 'Employee', 'Delete', 'Y'),
(146, 'Employee', 'List', 'Y'),
(147, 'Employee', 'Detail', 'Y'),
(148, 'Import Attendance', 'Import', 'Y'),
(149, 'Salary', 'Make', 'Y'),
(150, 'Search Salary', 'List', 'Y'),
(151, 'Search Salary', 'Delete', 'Y'),
(152, 'Operation Manager', 'List/Create', 'Y'),
(153, 'Operation Manager', 'Update', 'Y'),
(154, 'Operation Manager', 'Delete', 'Y'),
(155, 'Operation Manager', 'View', 'Y'),
(156, 'Branch', 'Create/List', 'Y'),
(157, 'Branch', 'Update', 'Y'),
(158, 'Branch', 'Delete', 'Y'),
(159, 'Department', 'Create/List', 'Y'),
(160, 'Department', 'Update', 'Y'),
(161, 'Department', 'Delete', 'Y'),
(162, 'Job Title', 'Create/List', 'Y'),
(163, 'Job Title', 'Update', 'Y'),
(164, 'Job Title', 'Delete', 'Y'),
(165, 'Letter Template', 'Create / List', 'Y'),
(166, 'Letter Template', 'Update', 'Y'),
(167, 'Letter Template', 'Delete', 'Y'),
(168, 'Team Structure', 'List', 'Y'),
(169, 'Users', 'Create / List', 'Y'),
(170, 'Users', 'Update', 'Y'),
(171, 'Users', 'Delete', 'Y'),
(172, 'Employee Detail', 'List', 'Y'),
(173, 'Employee Detail', 'Files Upload/List', 'Y'),
(174, 'Employee Detail', 'File Delete', 'Y'),
(175, 'Employee Detail', 'Salary View', 'Y'),
(176, 'Employee Detail', 'Salary Commission View', 'Y'),
(177, 'Employee Detail', 'Letter Issue / Letter Issued', 'Y'),
(178, 'Employee Detail', 'Delete Issued Letter', 'Y'),
(179, 'Employee Detail', 'Print Issued Letter', 'Y'),
(180, 'Employee Detail', 'Leave Create / List', 'Y'),
(181, 'Employee Detail', 'Leave Delete', 'Y'),
(182, 'Employee Detail', 'Leave Edit', 'Y'),
(183, 'Employee Detail', 'Attendance View', 'Y'),
(184, 'Employee Detail', 'Warning Letter List', 'Y'),
(185, 'Employee Detail', 'Deposit', 'Y'),
(186, 'Employee Detail', 'Supervising', 'Y'),
(187, 'Team Hierarchy', 'View', 'Y'),
(188, 'Employee Detail', 'Issued Letter Update', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `runtotaltestdata`
--

CREATE TABLE `runtotaltestdata` (
  `id` int NOT NULL,
  `value` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `runtotaltestdata`
--

INSERT INTO `runtotaltestdata` (`id`, `value`) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 7),
(5, 9),
(6, 12),
(7, 13),
(8, 16),
(9, 22),
(10, 42),
(11, 57),
(12, 58),
(13, 59),
(14, 60);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `SalaryID` int NOT NULL,
  `BranchID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `EmployeeName` varchar(75) DEFAULT NULL,
  `JobTitle` varchar(75) DEFAULT NULL,
  `Department` varchar(75) DEFAULT NULL,
  `MonthName` varchar(255) DEFAULT NULL,
  `StaffType` varchar(25) DEFAULT NULL,
  `DaysPresent` double(12,2) DEFAULT NULL,
  `LWPay` double(12,2) DEFAULT NULL,
  `PerDay` double(12,2) DEFAULT NULL,
  `BasicSalary` double(12,2) DEFAULT NULL,
  `HRA` double(12,2) DEFAULT NULL,
  `Transport` double(12,2) DEFAULT NULL,
  `OtherAllowance` double(12,2) DEFAULT NULL,
  `AdvanceLoan` double(12,2) DEFAULT NULL,
  `LeaveDeduction` double(12,2) DEFAULT NULL,
  `TotalDeduction` double(12,2) DEFAULT NULL,
  `GrandSalary` double(12,2) DEFAULT NULL,
  `NetSalary` double(12,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `uDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UserID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`SalaryID`, `BranchID`, `EmployeeID`, `EmployeeName`, `JobTitle`, `Department`, `MonthName`, `StaffType`, `DaysPresent`, `LWPay`, `PerDay`, `BasicSalary`, `HRA`, `Transport`, `OtherAllowance`, `AdvanceLoan`, `LeaveDeduction`, `TotalDeduction`, `GrandSalary`, `NetSalary`, `eDate`, `uDate`, `UserID`) VALUES
(210, 1, 116, 'Kashif  Mushtaq', 'Web Developer', 'Web Developer', 'Oct-2021', 'Regular', 31.00, 0.00, 1210.00, 25000.00, 2500.00, 2500.00, 7500.00, 0.00, 0.00, 0.00, 37500.00, 37500.00, '2022-12-02 06:52:02', NULL, 1),
(211, 1, 116, 'Kashif  Mushtaq', 'Web Developer', 'Web Developer', 'Nov-2021', 'Regular', 30.00, 0.00, 1250.00, 25000.00, 2500.00, 2500.00, 7500.00, 0.00, 0.00, 0.00, 37500.00, 37500.00, '2022-12-02 11:04:48', NULL, 1),
(212, 1, 117, 'kHALIQ  ABDUL', 'Sale Manager', 'Sales', 'Nov-2021', 'Regular', 30.00, 1.00, 1000.00, 25000.00, 2500.00, 2500.00, 0.00, 0.00, 1000.00, 1000.00, 30000.00, 29000.00, '2022-12-02 11:04:48', NULL, 1),
(213, 1, 118, 'd d', 'Sale Manager', 'Sales', 'Feb-2022', 'Regular', 31.00, 5.00, 97.00, 2000.00, 1000.00, 0.00, 0.00, 0.00, 485.00, 485.00, 3000.00, 2515.00, '2023-01-31 07:49:03', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stafftype_____`
--

CREATE TABLE `stafftype_____` (
  `StaffTypeID` int NOT NULL,
  `StaffType` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stafftype_____`
--

INSERT INTO `stafftype_____` (`StaffTypeID`, `StaffType`) VALUES
(1, 'Agent'),
(2, 'Closer'),
(3, 'Floor Manager'),
(4, 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `StaffTypeID` int NOT NULL,
  `StaffType` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`StaffTypeID`, `StaffType`) VALUES
(4, 'Regular'),
(5, 'HR'),
(6, 'GM'),
(7, 'OM'),
(8, 'Inactive'),
(10, 'Admin'),
(11, 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int NOT NULL,
  `SupplierName` varchar(150) DEFAULT NULL,
  `TRN` varchar(75) DEFAULT NULL COMMENT 'tax regsitration no',
  `Address` varchar(75) DEFAULT NULL,
  `Mobile` varchar(150) DEFAULT NULL,
  `Phone` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Website` varchar(150) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `InvoiceDueDays` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `TRN`, `Address`, `Mobile`, `Phone`, `Email`, `Website`, `Active`, `InvoiceDueDays`, `eDate`) VALUES
(1, 'Walkin Supplier', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2022-07-20 18:35:02'),
(1002, 'RAHAT TRAVEL AGENT', '1256789999', 'Kashif House, Khyber colony No 1, Tehkal Payan', '03349047993', '22', 'kashif@inu.edu.pk', 'home.com', 'No', 5, '2022-01-16 17:59:43'),
(1012, 'SAJID SB PAK', NULL, 'Kashif House, Khyber colony No 1, Tehkal Payan', NULL, '+923349047993', 'kashif@inu.edu.pk', NULL, 'Yes', 90, '2022-01-16 17:59:49'),
(1023, 'LIGHT SPEED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:58'),
(1029, 'AL DIYAFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:02'),
(1030, 'AKBAR TRAVEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:57:57'),
(1032, 'PIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:36'),
(1033, 'AIR BLUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:57:49'),
(1043, 'STATIONERY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:54'),
(1044, 'MALIK MAQSOOD AGENT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:20'),
(1053, 'SADAF TRAVELS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:46'),
(1076, 'FCB LOAN AC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:29'),
(1094, 'HADAF TRAVEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:45'),
(1172, 'AMR  TRAVEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:08'),
(1309, 'FREELANCE VISAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:33'),
(1410, 'HOTEL BOOKINGS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:49'),
(1576, 'COZMO  TRAVEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:23'),
(1665, 'DGRFA APPROVAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:40'),
(1666, 'MARSHAL TRAVEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:26'),
(1680, 'KSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:55'),
(1700, 'MESSZAN TRV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:59:34'),
(1735, 'COVID REST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:12'),
(1790, 'ISB TRV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:53'),
(2072, 'AL HIND TRV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:05'),
(2211, 'DUMMY TICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:58:26'),
(2212, 'test2', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2022-03-28 12:46:42'),
(2213, 'DD', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2022-04-11 06:55:00'),
(2214, 'ahsan supplier', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2023-04-04 06:48:08'),
(2215, 'Electricity', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2023-04-04 06:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_category`
--

CREATE TABLE `supplier_category` (
  `SupplierCatID` int NOT NULL,
  `SupplierCode` varchar(10) DEFAULT NULL,
  `SupplierCategory` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_category`
--

INSERT INTO `supplier_category` (`SupplierCatID`, `SupplierCode`, `SupplierCategory`) VALUES
(1, 'C', 'Customer'),
(2, 'VC', 'Airline Customer'),
(3, 'EC', 'Employee'),
(4, 'X', 'Discontinued'),
(5, 'XC', 'Bad Debds'),
(6, 'VS', 'Supplier'),
(7, 'BC', 'Old Bad Debts');

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

CREATE TABLE `t1` (
  `EmployeeID` int DEFAULT NULL,
  `EmployeeName` varchar(55) DEFAULT NULL,
  `CheckIn` varchar(10) DEFAULT NULL,
  `CheckOut` varchar(10) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t2`
--

CREATE TABLE `t2` (
  `EmployeeID` int DEFAULT NULL,
  `EmployeeName` varchar(55) DEFAULT NULL,
  `CheckIn` time(6) DEFAULT NULL,
  `CheckOut` time(6) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `FinalTime` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `target`
--

CREATE TABLE `target` (
  `TargetID` int NOT NULL,
  `DepartmentID` int DEFAULT NULL,
  `TargetType` varchar(150) DEFAULT NULL,
  `TargetName` varchar(150) DEFAULT NULL,
  `TargetPeriod` varchar(150) DEFAULT NULL,
  `Detail` longtext,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `target`
--

INSERT INTO `target` (`TargetID`, `DepartmentID`, `TargetType`, `TargetName`, `TargetPeriod`, `Detail`, `StartDate`, `EndDate`, `Date`, `eDate`) VALUES
(1, 1, 'Weekly', 'Amazone Orders', NULL, 'orders', '2023-01-28', '2023-01-31', '2023-01-25', '2023-01-28 02:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `target_reply`
--

CREATE TABLE `target_reply` (
  `TargetReplyID` int NOT NULL,
  `TargetID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Detail` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `target_reply`
--

INSERT INTO `target_reply` (`TargetReplyID`, `TargetID`, `EmployeeID`, `Date`, `Detail`) VALUES
(7, 1, 118, '2023-03-01', 'DFG');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `TaxID` int NOT NULL,
  `TaxPer` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Section` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `TitleID` int NOT NULL,
  `Title` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`TitleID`, `Title`) VALUES
(1, 'Mr.'),
(2, 'Mrs.'),
(3, 'Miss.'),
(4, 'Ms.');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `UnitID` int NOT NULL,
  `UnitName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`UnitID`, `UnitName`) VALUES
(1, 'box'),
(2, 'cm'),
(3, 'dz'),
(4, 'ft'),
(5, 'g'),
(6, 'in'),
(7, 'kg'),
(8, 'km'),
(9, 'lb'),
(10, 'mg'),
(11, 'm'),
(12, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int NOT NULL,
  `BranchID` int DEFAULT NULL,
  `FullName` varchar(55) DEFAULT NULL,
  `Email` varchar(55) DEFAULT NULL,
  `Password` varchar(75) DEFAULT NULL,
  `UserType` varchar(25) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Active` varchar(5) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `BranchID`, `FullName`, `Email`, `Password`, `UserType`, `eDate`, `Active`) VALUES
(1, 1, 'Kashif Mushtaq', 'demo@extbooks.com', '123456', 'Admin', '2023-05-19 11:28:36', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `RoleId` int NOT NULL,
  `BranchID` int DEFAULT NULL,
  `UserID` int DEFAULT NULL,
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
-- Table structure for table `voucher_detail`
--

CREATE TABLE `voucher_detail` (
  `VoucherDetID` int NOT NULL,
  `VoucherMstID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(75) DEFAULT NULL,
  `RefNo` varchar(75) DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_detail`
--

INSERT INTO `voucher_detail` (`VoucherDetID`, `VoucherMstID`, `Date`, `Voucher`, `ChOfAcc`, `PartyID`, `SupplierID`, `Narration`, `InvoiceNo`, `RefNo`, `Debit`, `Credit`) VALUES
(123, 24, '2023-03-29', 'BP23030001', 111500, NULL, NULL, 'test', NULL, NULL, 250.00, NULL),
(124, 24, '2023-03-29', 'BP23030001', 110201, NULL, NULL, 'test', NULL, NULL, NULL, 250.00),
(125, 25, '2023-04-04', 'BP23040002', 110400, 2214, NULL, 'paryt= acc rec\r\n\r\nsupplier = acc payable', NULL, NULL, 25.00, NULL),
(126, 25, '2023-04-04', 'BP23040002', 110201, 2214, NULL, 'paryt= acc rec\r\n\r\nsupplier = acc payable', NULL, NULL, NULL, 25.00),
(127, 25, '2023-04-04', 'BP23040002', 210100, NULL, 2214, 'paryt= acc rec\r\n\r\nsupplier = acc payable', NULL, NULL, 50.00, NULL),
(128, 25, '2023-04-04', 'BP23040002', 110201, NULL, 2214, 'paryt= acc rec\r\n\r\nsupplier = acc payable', NULL, NULL, NULL, 50.00),
(129, 26, '2023-04-04', 'BR23040001', 110201, 2214, NULL, 'rec from ahsan customer', NULL, NULL, 25.00, NULL),
(130, 26, '2023-04-04', 'BR23040001', 110400, 2214, NULL, 'rec from ahsan customer', NULL, NULL, NULL, 25.00);

--
-- Triggers `voucher_detail`
--
DELIMITER $$
CREATE TRIGGER `after insert voucher detail` AFTER INSERT ON `voucher_detail` FOR EACH ROW begin
 
INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,SupplierID,VoucherMstID,Narration,Date,Dr,Cr,PartyID) 
values (new.Voucher,SUBSTRING(new.Voucher,1,2),new.ChOfAcc,new.SupplierID,new.VoucherMstID,new.Narration,new.Date,new.Debit,new.Credit,new.PartyID);
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before-voucher-deletail-delete` BEFORE DELETE ON `voucher_detail` FOR EACH ROW begin
INSERT INTO voucher_detail_audit values ( null,old.VoucherDetID, old.VoucherMstID, old.Date, old.Voucher,  old.ChOfAcc, old.PartyID, old.SupplierID, old.Narration,old.InvoiceNo, old.RefNo, old.Debit, old.Credit,sysdate(),'Before-Delete');
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before-voucher-detail-update` BEFORE UPDATE ON `voucher_detail` FOR EACH ROW begin
INSERT INTO voucher_detail_audit values ( null,old.VoucherDetID, old.VoucherMstID, old.Date, old.Voucher,  old.ChOfAcc, old.PartyID, old.SupplierID, old.Narration,old.InvoiceNo, old.RefNo, old.Debit, old.Credit,sysdate(),'Before-Update');
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_detail_audit`
--

CREATE TABLE `voucher_detail_audit` (
  `id` int NOT NULL,
  `VoucherDetID` int NOT NULL,
  `VoucherMstID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(75) DEFAULT NULL,
  `RefNo` varchar(75) DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT NULL,
  `ActionPerformed` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_detail_audit`
--

INSERT INTO `voucher_detail_audit` (`id`, `VoucherDetID`, `VoucherMstID`, `Date`, `Voucher`, `ChOfAcc`, `PartyID`, `SupplierID`, `Narration`, `InvoiceNo`, `RefNo`, `Debit`, `Credit`, `eDate`, `ActionPerformed`) VALUES
(59, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 109, 25, '2023-01-23', 'CR23010001', 110101, 2214, NULL, 'advance for payment from al sahaladvance for payment', '209', NULL, 250.00, NULL, '2023-03-28 19:09:44', 'Before-Update'),
(63, 110, 25, '2023-01-23', 'CR23010001', 110400, 2214, NULL, 'advance for payment from al sahaladvance for payment', '209', NULL, NULL, 250.00, '2023-03-28 19:10:27', 'Before-Delete'),
(64, 111, 26, '2023-01-23', 'CR23010002', 110101, 1002, NULL, 'advance payment from kashifadvance payment from kashif', NULL, NULL, 150.00, NULL, '2023-03-29 05:22:42', 'Before-Delete'),
(65, 112, 26, '2023-01-23', 'CR23010002', 110400, 1002, NULL, 'advance payment from kashifadvance payment from kashif', NULL, NULL, NULL, 150.00, '2023-03-29 05:22:42', 'Before-Delete'),
(66, 113, 27, '2023-01-23', 'BR23010001', 110202, 2214, NULL, 'payment rec from client al sahalpayment rec from client al sahal', NULL, '654654', 1000.00, NULL, '2023-03-29 05:22:42', 'Before-Delete'),
(67, 114, 27, '2023-01-23', 'BR23010001', 110400, 2214, NULL, 'payment rec from client al sahalpayment rec from client al sahal', NULL, '654654', NULL, 1000.00, '2023-03-29 05:22:42', 'Before-Delete'),
(68, 115, 28, '2023-01-23', 'JV23010001', 310101, 2218, NULL, NULL, NULL, NULL, NULL, 3500.00, '2023-03-29 05:22:42', 'Before-Delete'),
(69, 116, 28, '2023-01-23', 'JV23010001', 110400, 2218, NULL, NULL, NULL, NULL, 3500.00, NULL, '2023-03-29 05:22:42', 'Before-Delete'),
(70, 117, 29, '2023-01-23', 'CP23010002', 550100, NULL, NULL, 'office expenseoffice expense', NULL, NULL, 2000.00, NULL, '2023-03-29 05:22:42', 'Before-Delete'),
(71, 118, 29, '2023-01-23', 'CP23010002', 110101, NULL, NULL, 'office expenseoffice expense', NULL, NULL, NULL, 2000.00, '2023-03-29 05:22:42', 'Before-Delete'),
(72, 119, 30, '2023-01-23', 'BP23010002', 110101, NULL, NULL, 'cash withdraw from bank for office expensecash withdraw from bank', NULL, NULL, 5000.00, NULL, '2023-03-29 05:22:42', 'Before-Delete'),
(73, 120, 30, '2023-01-23', 'BP23010002', 110201, NULL, NULL, 'cash withdraw from bank for office expensecash withdraw from bank', NULL, NULL, NULL, 5000.00, '2023-03-29 05:22:42', 'Before-Delete'),
(74, 121, 31, '2023-01-23', 'CP23010003', 590104, NULL, NULL, 'office expenseoffice expense', NULL, NULL, 4000.00, NULL, '2023-03-29 05:22:42', 'Before-Delete'),
(75, 122, 31, '2023-01-23', 'CP23010003', 110101, NULL, NULL, 'office expenseoffice expense', NULL, NULL, NULL, 4000.00, '2023-03-29 05:22:42', 'Before-Delete');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_master`
--

CREATE TABLE `voucher_master` (
  `VoucherMstID` int NOT NULL,
  `VoucherCodeID` int DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_master`
--

INSERT INTO `voucher_master` (`VoucherMstID`, `VoucherCodeID`, `Voucher`, `Date`, `Narration`) VALUES
(24, 1, 'BP23030001', '2023-03-29', 'test'),
(25, 1, 'BP23040002', '2023-04-04', 'paryt= acc rec\r\n\r\nsupplier = acc payable'),
(26, 2, 'BR23040001', '2023-04-04', 'rec from ahsan customer');

--
-- Triggers `voucher_master`
--
DELIMITER $$
CREATE TRIGGER `after delete voucher` AFTER DELETE ON `voucher_master` FOR EACH ROW begin


delete from voucher_detail where VoucherMstID = old.VoucherMstID;
delete from journal where VoucherMstID = old.VoucherMstID;

end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before update voucher` BEFORE UPDATE ON `voucher_master` FOR EACH ROW begin
INSERT INTO voucher_master_audit values ( null,old.VoucherMstID, old.VoucherCodeID, old.Voucher, old.Date, old.Narration,sysdate(),'Before-Update');
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before voucher delete` BEFORE DELETE ON `voucher_master` FOR EACH ROW begin

INSERT INTO voucher_master_audit values ( null,old.VoucherMstID, old.VoucherCodeID, old.Voucher, old.Date, old.Narration,sysdate(),'Before-Delete');


end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_master_audit`
--

CREATE TABLE `voucher_master_audit` (
  `id` int NOT NULL,
  `VoucherMstID` int NOT NULL,
  `VoucherCodeID` int DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ActionPerformed` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_master_audit`
--

INSERT INTO `voucher_master_audit` (`id`, `VoucherMstID`, `VoucherCodeID`, `Voucher`, `Date`, `Narration`, `eDate`, `ActionPerformed`) VALUES
(19, 22, 4, 'CP23010001', '2023-01-12', 'cash spent for office expense', '2023-03-28 19:02:41', 'Before-Delete'),
(20, 10, 7, 'JV23030001', '2023-03-02', 'adjustment entry', '2023-03-28 19:05:05', 'Before-Delete'),
(21, 9, 1, 'BP23030002', '2023-03-02', 'pay to mr. xyz', '2023-03-28 19:07:28', 'Before-Update'),
(22, 23, 1, 'BP23030002', '2023-03-02', 'pay to mr. xyz', '2023-03-28 19:07:37', 'Before-Delete'),
(23, 8, 1, 'BP23010001', '2023-01-31', 'oiffice expense', '2023-03-29 05:22:56', 'Before-Delete');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_type`
--

CREATE TABLE `voucher_type` (
  `VoucherTypeID` int NOT NULL,
  `VoucherCode` varchar(35) DEFAULT NULL,
  `VoucherTypeName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_type`
--

INSERT INTO `voucher_type` (`VoucherTypeID`, `VoucherCode`, `VoucherTypeName`) VALUES
(1, 'BP', 'BANK PAYMENT'),
(2, 'BR', 'BANK RECEIPT'),
(3, 'CN', 'CREDIT NOTE'),
(4, 'CP', 'CASH PAYMENT'),
(5, 'CR', 'CASH RECEIPT'),
(6, 'DN', 'DEBIT NOTES'),
(7, 'JV', 'JOURNAL VOUCHER'),
(8, 'CC', 'CREDIT CARD');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vvv`
-- (See below for the actual view)
--
CREATE TABLE `vvv` (
`EmployeeID` int
,`CheckIn` varchar(10)
,`CheckOut` varchar(10)
,`Date` varchar(10)
,`EmployeeName` varchar(55)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_agent_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_agent_salary` (
`BranchID` int
,`EmployeeID` int
,`FTDAmount` decimal(32,0)
,`MonthName` varchar(37)
,`SupervisorID` int
,`Total` bigint
,`StaffType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_alerts`
-- (See below for the actual view)
--
CREATE TABLE `v_alerts` (
`VisaExpiry` bigint
,`PassportExpiry` bigint
,`BranchID` int
,`EmployeeID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_attendance`
-- (See below for the actual view)
--
CREATE TABLE `v_attendance` (
`EmployeeID` int
,`CheckIn` varchar(10)
,`CheckOut` varchar(10)
,`Date` varchar(10)
,`EmployeeName` varchar(55)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_bill_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_bill_balance` (
`InvoiceMasterID` int
,`INVOICE` double(19,2)
,`Payment` double(19,2)
,`Remaining` double(22,2)
,`SupplierID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_cashflow`
-- (See below for the actual view)
--
CREATE TABLE `v_cashflow` (
`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
,`MonthName` varchar(37)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_challan_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_challan_detail` (
`ChallanDetailID` int
,`ChallanMasterID` int
,`ChallanNo` varchar(10)
,`ChallanDate` date
,`ItemID` int
,`Qty` int
,`Rate` double(8,2)
,`TaxAmount` double(8,2)
,`TaxPer` double(8,2)
,`Discount` double(8,2)
,`Total` double(8,2)
,`ItemType` varchar(55)
,`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`UnitName` varchar(10)
,`Description` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_challan_master`
-- (See below for the actual view)
--
CREATE TABLE `v_challan_master` (
`ChallanMasterID` int
,`ChallanNo` varchar(10)
,`PartyID` int
,`PartyName` varchar(150)
,`PlaceOfSupply` varchar(25)
,`ReferenceNo` varchar(25)
,`ChallanDate` varchar(10)
,`ChallanType` varchar(25)
,`Total` double(8,2)
,`CustomerNotes` varchar(255)
,`TermAndCondition` varchar(255)
,`File` varchar(75)
,`TRN` varchar(150)
,`Address` varchar(75)
,`Mobile` varchar(150)
,`Phone` varchar(25)
,`Email` varchar(25)
,`Website` varchar(150)
,`Active` varchar(3)
,`InvoiceDueDays` int
,`eDate` timestamp
,`Subject` varchar(255)
,`DescriptionNotes` varchar(255)
,`WalkinCustomerName` varchar(75)
,`DiscountPer` double(8,2)
,`SubTotal` double(8,2)
,`DiscountAmount` double(8,2)
,`TaxPer` double(8,2)
,`Tax` double(8,2)
,`Shipping` double(8,2)
,`GrandTotal` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_chartofaccount`
-- (See below for the actual view)
--
CREATE TABLE `v_chartofaccount` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`CODE` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_chartofaccount_mini`
-- (See below for the actual view)
--
CREATE TABLE `v_chartofaccount_mini` (
`ChartOfAccountID` int
,`CODE` varchar(15)
,`ChartOfAccountName` varchar(75)
,`OpenDebit` int
,`OpenCredit` int
,`L1` int
,`L2` int
,`L3` int
,`Category` varchar(55)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_closer_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_closer_salary` (
`BranchID` int
,`EmployeeID` int
,`FTDAmount` decimal(54,0)
,`MonthName` varchar(37)
,`SupervisorID` int
,`Total` decimal(42,0)
,`StaffType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_daily_report`
-- (See below for the actual view)
--
CREATE TABLE `v_daily_report` (
`SupervisorID` int
,`DailyReportID` int
,`EmployeeID` int
,`Date` date
,`Title` longtext
,`Detail` longtext
,`SupervisorComments` longtext
,`File` varchar(100)
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_delivery_challan`
-- (See below for the actual view)
--
CREATE TABLE `v_delivery_challan` (
`ChallanMasterID` int
,`ChallanNo` varchar(10)
,`PartyID` int
,`PlaceOfSupply` varchar(25)
,`ReferenceNo` varchar(25)
,`ChallanDate` date
,`ChallanType` varchar(25)
,`Total` double(8,2)
,`CustomerNotes` varchar(255)
,`TermAndCondition` varchar(255)
,`File` varchar(75)
,`UserID` int
,`PartyName` varchar(150)
,`Address` varchar(75)
,`Phone` varchar(25)
,`Email` varchar(25)
,`Active` varchar(3)
,`InvoiceDueDays` int
,`TRN` varchar(150)
,`Mobile` varchar(150)
,`Website` varchar(150)
,`eDate` timestamp
,`Subject` varchar(255)
,`DescriptionNotes` varchar(255)
,`WalkinCustomerName` varchar(75)
,`SubTotal` double(8,2)
,`DiscountPer` double(8,2)
,`DiscountAmount` double(8,2)
,`TaxPer` double(8,2)
,`Tax` double(8,2)
,`Shipping` double(8,2)
,`GrandTotal` double(8,2)
,`Paid` double(8,2)
,`Balance` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_documents`
-- (See below for the actual view)
--
CREATE TABLE `v_documents` (
`DocumentID` int
,`EmployeeID` int
,`FileName` varchar(55)
,`File` varchar(55)
,`FileSize` varchar(12)
,`eDate` varchar(23)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_employee`
-- (See below for the actual view)
--
CREATE TABLE `v_employee` (
`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`JobTitleName` varchar(99)
,`DepartmentName` varchar(75)
,`BranchName` varchar(150)
,`EmployeeID` int
,`Picture` varchar(75)
,`Email` varchar(35)
,`MobileNo` varchar(35)
,`BranchID` int
,`IsSupervisor` varchar(3)
,`DateOfBirth` date
,`VisaIssueDate` date
,`VisaExpiryDate` date
,`PassportNo` varchar(88)
,`PassportExpiry` date
,`EidNo` varchar(75)
,`EidExpiry` date
,`FullAddress` varchar(255)
,`HomePhone` varchar(35)
,`Gender` varchar(35)
,`SSNorGID` varchar(35)
,`MaritalStatus` varchar(35)
,`SpouseName` varchar(50)
,`SpouseEmployer` varchar(52)
,`SpouseWorkPhone` varchar(33)
,`JobTitleID` varchar(33)
,`DepartmentID` int
,`SupervisorID` int
,`WorkLocation` varchar(55)
,`EmailOffical` varchar(55)
,`WorkPhone` varchar(55)
,`StartDate` date
,`Salary` double(10,2)
,`NextofKinName` varchar(75)
,`NextofKinAddress` varchar(255)
,`NextofKinPhone` varchar(55)
,`NextofKinRelationship` varchar(55)
,`EducationLevel` varchar(55)
,`LastDegree` varchar(75)
,`eDate` timestamp
,`uDate` timestamp
,`Title` varchar(75)
,`ExtraComission` double(10,2)
,`SalaryRemarks` longtext
,`StaffType` varchar(25)
,`Nationality` varchar(35)
,`Password` varchar(25)
,`BankName` varchar(155)
,`IBAN` varchar(100)
,`AccountTitle` varchar(100)
,`SalaryType` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_emp_allowance`
-- (See below for the actual view)
--
CREATE TABLE `v_emp_allowance` (
`EmployeeAllowanceID` int
,`EmployeeID` int
,`AllowanceListID` int
,`Amount` int
,`Active` varchar(3)
,`eDate` timestamp
,`AllowanceTitle` varchar(75)
,`AllowanceType` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_emp_leave`
-- (See below for the actual view)
--
CREATE TABLE `v_emp_leave` (
`LeaveID` int
,`EmployeeID` int
,`FromDate` date
,`ToDate` date
,`NoOfDays` int
,`Reason` longtext
,`DaysApproved` int
,`DaysRemaining` int
,`OMStatus` varchar(20)
,`HRStatus` varchar(20)
,`GMStatus` varchar(20)
,`BranchID` int
,`LeaveTypeID` int
,`LeaveTypeName` varchar(35)
,`DaysAllowed` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_emp_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_emp_salary` (
`AllowanceTitle` varchar(75)
,`AllowanceType` varchar(15)
,`EmployeeAllowanceID` int
,`EmployeeID` int
,`AllowanceListID` int
,`Amount` int
,`Active` varchar(3)
,`eDate` timestamp
,`eDate1` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_emp_salary_structure`
-- (See below for the actual view)
--
CREATE TABLE `v_emp_salary_structure` (
`EmployeeID` int
,`Basic` decimal(32,0)
,`HRA` decimal(32,0)
,`Transport` decimal(32,0)
,`OtherAllowance` decimal(32,0)
,`TotalSalary` decimal(35,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_estimate_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_estimate_detail` (
`EstimateDetailID` int
,`EstimateMasterID` int
,`EstimateNo` varchar(10)
,`EstimateDate` date
,`ItemID` int
,`ItemName` varchar(55)
,`Qty` int
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
`EstimateMasterID` int
,`EstimateNo` varchar(10)
,`PartyID` int
,`PartyName` varchar(150)
,`PlaceOfSupply` varchar(25)
,`ReferenceNo` varchar(25)
,`EstimateDate` date
,`Total` double(8,2)
,`CustomerNotes` varchar(255)
,`TermAndCondition` varchar(255)
,`File` varchar(75)
,`UserID` int
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
,`InvoiceDueDays` int
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense`
-- (See below for the actual view)
--
CREATE TABLE `v_expense` (
`ExpenseMasterID` int
,`Date` date
,`Date1` varchar(10)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`SupplierID` int
,`SupplierName` varchar(150)
,`ReferenceNo` varchar(55)
,`ExpenseNo` varchar(55)
,`GrantTotal` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_expense_chart` (
`MonthName` varchar(69)
,`Balance` double(22,2)
,`ChartOfAccountName` varchar(75)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_expense_detail` (
`ExpenseNo` varchar(55)
,`Date` date
,`ChartOfAccountName` varchar(75)
,`ExpenseDetailID` int
,`ExpenseMasterID` int
,`ChartOfAccountID` int
,`Notes` varchar(255)
,`TaxPer` double(8,2)
,`Tax` double(8,2)
,`Amount` double(8,2)
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense_master`
-- (See below for the actual view)
--
CREATE TABLE `v_expense_master` (
`Date` date
,`ExpenseNo` varchar(55)
,`ChartOfAccountName` varchar(75)
,`ReferenceNo` varchar(55)
,`SupplierName` varchar(150)
,`GrantTotal` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_fcb`
-- (See below for the actual view)
--
CREATE TABLE `v_fcb` (
`FCBID` int
,`ID` int
,`FTDAmount` int
,`Date` varchar(10)
,`MonthName` varchar(37)
,`Compliant` varchar(25)
,`KYCSent` varchar(25)
,`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`Dialer` int
,`EmployeeID` int
,`BranchID` int
,`Remarks` longtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_fcb_summary`
-- (See below for the actual view)
--
CREATE TABLE `v_fcb_summary` (
`BranchID` int
,`EmployeeID` int
,`FTDAmount` int
,`MonthName` varchar(37)
,`Total` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_floor_manager_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_floor_manager_salary` (
`BranchID` int
,`EmployeeID` int
,`FTDAmount` decimal(54,0)
,`MonthName` varchar(37)
,`SupervisorID` int
,`Total` decimal(42,0)
,`StaffType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_income_exp_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_income_exp_chart` (
`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
,`MonthName` varchar(37)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_inventory`
-- (See below for the actual view)
--
CREATE TABLE `v_inventory` (
`ItemID` int
,`ItemName` varchar(55)
,`UnitName` varchar(10)
,`SaleReturn` decimal(32,0)
,`QtyIn` decimal(32,0)
,`QtyOut` decimal(32,0)
,`Balance` decimal(34,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_inventory_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_inventory_detail` (
`ItemID` int
,`ItemName` varchar(55)
,`UnitName` varchar(10)
,`SaleReturn` bigint
,`QtyIn` bigint
,`QtyOut` bigint
,`Date` date
,`InvoiceNo` varchar(10)
,`InvoiceMasterID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_bal`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_bal` (
`PartyID` int
,`InvoiceMasterID` int
,`INVOICE` double(19,2)
,`PAID` double(19,2)
,`due` double(22,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_balance` (
`InvoiceMasterID` int
,`PartyID` int
,`InvoiceNo` varchar(10)
,`INVOICE` double(19,2)
,`PAID` double(19,2)
,`BALANCE` double(19,2)
,`Date` date
,`DueDate` date
,`ReferenceNo` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_both`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_both` (
`InvoiceMasterID` int
,`Date` date
,`UserID` int
,`PaymentMode` varchar(25)
,`Total` double(10,2)
,`Paid` double(10,2)
,`Balance` double(22,2)
,`DueDate` date
,`PartyName` varchar(150)
,`Address` varchar(75)
,`Phone` varchar(25)
,`Email` varchar(25)
,`InvoiceNo` varchar(10)
,`CustomerNotes` varchar(255)
,`Subject` varchar(255)
,`ReferenceNo` varchar(35)
,`SupplierID` int
,`PartyID` int
,`SubTotal` double(10,2)
,`DiscountPer` double(10,2)
,`DiscountAmount` double(10,2)
,`InvoiceType` varchar(30)
,`WalkinCustomerName` varchar(155)
,`DescriptionNotes` varchar(255)
,`TaxPer` double(10,2)
,`Tax` double(10,2)
,`Shipping` double(10,2)
,`GrandTotal` double(10,2)
,`Mobile` varchar(150)
,`TRN` varchar(150)
,`Website` varchar(150)
,`Active` varchar(3)
,`InvoiceDueDays` int
,`eDate` timestamp
,`PaymentDetails` varchar(255)
,`FullName` varchar(55)
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail` (
`InvoiceNo` varchar(10)
,`Date` date
,`InvoiceDetailID` int
,`InvoiceMasterID` int
,`ItemID` int
,`SupplierID` int
,`PartyID` int
,`Qty` int
,`Rate` double(8,2)
,`Total` double(8,2)
,`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`Description` varchar(255)
,`TaxPer` double(8,2)
,`Tax` double(8,2)
,`InvoiceType` varchar(30)
,`Discount` double(8,2)
,`DiscountType` double(8,2)
,`DiscountAmountItem` double(10,2)
,`Gross` double(8,2)
,`PartyName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_master`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_master` (
`InvoiceMasterID` int
,`Date` date
,`UserID` int
,`PaymentMode` varchar(25)
,`Total` double(10,2)
,`Paid` double(10,2)
,`Balance` double(22,2)
,`DueDate` date
,`PartyName` varchar(150)
,`Address` varchar(75)
,`Phone` varchar(25)
,`Email` varchar(25)
,`InvoiceNo` varchar(10)
,`CustomerNotes` varchar(255)
,`Subject` varchar(255)
,`ReferenceNo` varchar(35)
,`SupplierID` int
,`PartyID` int
,`SubTotal` double(10,2)
,`DiscountPer` double(10,2)
,`DiscountAmount` double(10,2)
,`InvoiceType` varchar(30)
,`WalkinCustomerName` varchar(155)
,`DescriptionNotes` varchar(255)
,`TaxPer` double(10,2)
,`Tax` double(10,2)
,`Shipping` double(10,2)
,`GrandTotal` double(10,2)
,`Mobile` varchar(150)
,`TRN` varchar(150)
,`Website` varchar(150)
,`Active` varchar(3)
,`InvoiceDueDays` int
,`eDate` timestamp
,`PaymentDetails` varchar(255)
,`FullName` varchar(55)
,`TaxType` varchar(55)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_master_supplier`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_master_supplier` (
`InvoiceMasterID` int
,`Date` date
,`UserID` int
,`PaymentMode` varchar(25)
,`Total` double(10,2)
,`DueDate` date
,`InvoiceNo` varchar(10)
,`CustomerNotes` varchar(255)
,`Subject` varchar(255)
,`ReferenceNo` varchar(35)
,`SupplierID` int
,`PartyID` int
,`SubTotal` double(10,2)
,`DiscountPer` double(10,2)
,`DiscountAmount` double(10,2)
,`SupplierName` varchar(150)
,`Address` varchar(75)
,`Phone` varchar(150)
,`Email` varchar(150)
,`Active` varchar(3)
,`InvoiceDueDays` int
,`WalkinCustomerName` varchar(155)
,`PaymentDetails` varchar(255)
,`DescriptionNotes` varchar(255)
,`GrandTotal` double(10,2)
,`Shipping` double(10,2)
,`Tax` double(10,2)
,`TaxPer` double(10,2)
,`TRN` varchar(75)
,`Remaining` double(19,2)
,`Payment` double(19,2)
,`Paid` double(19,2)
,`Balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_party_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_party_balance` (
`PartyID` int
,`BALANCE` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_inv_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_inv_balance` (
`InvoiceMasterID` int
,`Balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_inv_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_inv_detail` (
`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`ItemID` int
,`SupplierID` int
,`Qty` int
,`Rate` double(8,2)
,`ItemName` varchar(55)
,`Gross` double(8,2)
,`Total` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_itemwise_sale`
-- (See below for the actual view)
--
CREATE TABLE `v_itemwise_sale` (
`ItemID` int
,`PartyID` int
,`Qty` decimal(32,0)
,`Rate` double(8,2)
,`Total` double(19,2)
,`ItemCode` varchar(5)
,`ItemName` varchar(55)
,`Discount` double(8,2)
,`DiscountType` double(8,2)
,`DiscountAmountItem` double(19,2)
,`Gross` double(19,2)
,`PartyName` varchar(150)
,`City` varchar(175)
,`Date` date
,`InvoiceNo` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_journal`
-- (See below for the actual view)
--
CREATE TABLE `v_journal` (
`VHNO` varchar(15)
,`JournalType` varchar(10)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`SupplierID` int
,`VoucherMstID` int
,`PettyMstID` int
,`InvoiceMasterID` int
,`Date` date
,`Dr` double(10,2)
,`Cr` double(10,2)
,`PartyID` int
,`Narration` varchar(255)
,`L1` int
,`L2` int
,`L3` int
,`CODE` varchar(15)
,`Trace` decimal(10,0)
,`BankReconcile` varchar(15)
,`ReconcileDate` timestamp
,`JournalID` int
,`Category` varchar(55)
,`ExpenseMasterID` int
,`PaymentMasterID` int
,`PurchasePaymentMasterID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_journal_report`
-- (See below for the actual view)
--
CREATE TABLE `v_journal_report` (
`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`Date` date
,`INVOICE` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_leave`
-- (See below for the actual view)
--
CREATE TABLE `v_leave` (
`LeaveID` int
,`BranchName` varchar(150)
,`EmployeeID` int
,`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`JobTitleName` varchar(99)
,`DepartmentName` varchar(75)
,`FromDate` date
,`ToDate` date
,`NoOfDays` int
,`Reason` longtext
,`DaysApproved` int
,`DaysRemaining` int
,`OMStatus` varchar(20)
,`HRStatus` varchar(20)
,`GMStatus` varchar(20)
,`BranchID` int
,`LeaveTypeID` int
,`LeaveTypeName` varchar(35)
,`DaysAllowed` varchar(255)
,`FromTime` time
,`ToTime` time
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_leave_summary`
-- (See below for the actual view)
--
CREATE TABLE `v_leave_summary` (
`EmployeeID` int
,`LeaveTypeID` int
,`Total` decimal(24,1)
,`MonthName` varchar(69)
,`LeaveTypeName` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_partywise_sale`
-- (See below for the actual view)
--
CREATE TABLE `v_partywise_sale` (
`PartyID` int
,`PartyName` varchar(150)
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`InvoiceType` varchar(30)
,`Date` date
,`DueDate` date
,`WalkinCustomerName` varchar(155)
,`SupplierID` int
,`ReferenceNo` varchar(35)
,`UserID` int
,`PaymentMode` varchar(25)
,`PaymentDetails` varchar(255)
,`Subject` varchar(255)
,`DescriptionNotes` varchar(255)
,`CustomerNotes` varchar(255)
,`SubTotal` double(10,2)
,`DiscountPer` double(10,2)
,`Total` double(10,2)
,`DiscountAmount` double(10,2)
,`TaxPer` double(10,2)
,`Tax` double(10,2)
,`Shipping` double(10,2)
,`GrandTotal` double(10,2)
,`Paid` double(10,2)
,`Balance` double(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_aging`
-- (See below for the actual view)
--
CREATE TABLE `v_party_aging` (
`PartyID` int
,`age7Days` double(19,2)
,`age15Days` double(19,2)
,`age30Days` double(19,2)
,`age60Days` double(19,2)
,`age90Days` double(19,2)
,`age90plusDays` double(19,2)
,`Total` double(19,2)
,`PartyName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_party_balance` (
`VHNO` varchar(15)
,`JournalType` varchar(10)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`SupplierID` int
,`VoucherMstID` int
,`PettyMstID` int
,`InvoiceMasterID` int
,`Date` date
,`Dr` double(10,2)
,`Cr` double(10,2)
,`PartyID` int
,`Narration` varchar(255)
,`PartyName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_montly_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_party_montly_balance` (
`Date` varchar(37)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
,`PartyID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_passportexpiry`
-- (See below for the actual view)
--
CREATE TABLE `v_passportexpiry` (
`Total` bigint
,`BranchID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_passport_expiry_list`
-- (See below for the actual view)
--
CREATE TABLE `v_passport_expiry_list` (
`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`DepartmentName` varchar(75)
,`BranchName` varchar(150)
,`EmployeeID` int
,`Picture` varchar(75)
,`Email` varchar(35)
,`MobileNo` varchar(35)
,`BranchID` int
,`IsSupervisor` varchar(3)
,`DateOfBirth` date
,`VisaIssueDate` date
,`VisaExpiryDate` date
,`PassportNo` varchar(88)
,`PassportExpiry` date
,`EidNo` varchar(75)
,`EidExpiry` date
,`FullAddress` varchar(255)
,`HomePhone` varchar(35)
,`Gender` varchar(35)
,`SSNorGID` varchar(35)
,`MaritalStatus` varchar(35)
,`SpouseName` varchar(50)
,`SpouseEmployer` varchar(52)
,`SpouseWorkPhone` varchar(33)
,`JobTitleID` varchar(33)
,`DepartmentID` int
,`SupervisorID` int
,`WorkLocation` varchar(55)
,`EmailOffical` varchar(55)
,`WorkPhone` varchar(55)
,`StartDate` date
,`Salary` double(10,2)
,`NextofKinName` varchar(75)
,`NextofKinAddress` varchar(255)
,`NextofKinPhone` varchar(55)
,`NextofKinRelationship` varchar(55)
,`EducationLevel` varchar(55)
,`LastDegree` varchar(75)
,`eDate` timestamp
,`uDate` timestamp
,`Title` varchar(75)
,`ExtraComission` double(10,2)
,`SalaryRemarks` longtext
,`StaffType` varchar(25)
,`Nationality` varchar(35)
,`JobTitleName` varchar(99)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_payment`
-- (See below for the actual view)
--
CREATE TABLE `v_payment` (
`PaymentMasterID` int
,`PartyID` int
,`PartyName` varchar(150)
,`PaymentDate` date
,`PaymentAmount` double(8,2)
,`PaymentMode` varchar(25)
,`ChartOfAccountID` int
,`ReferenceNo` varchar(35)
,`File` varchar(35)
,`Notes` longtext
,`eDate` timestamp
,`TRN` varchar(150)
,`Address` varchar(75)
,`Mobile` varchar(150)
,`Phone` varchar(25)
,`Email` varchar(25)
,`Website` varchar(150)
,`Active` varchar(3)
,`InvoiceDueDays` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_payment_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_payment_detail` (
`InvoiceNo` varchar(10)
,`PaymentDetailID` int
,`PaymentMasterID` int
,`PaymentDate` date
,`InvoiceMasterID` int
,`Payment` double(8,2)
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_payment_summary`
-- (See below for the actual view)
--
CREATE TABLE `v_payment_summary` (
`InvoiceMasterID` int
,`Paid` double(19,2)
,`PaymentMasterID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pettycash_master`
-- (See below for the actual view)
--
CREATE TABLE `v_pettycash_master` (
`PettyMstID` int
,`PettyVoucher` varchar(11)
,`ChartOfAccountID` int
,`CODE` varchar(15)
,`ChartOfAccountName` varchar(75)
,`Date` date
,`Narration` varchar(255)
,`Credit` double(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_order_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_order_detail` (
`PurchaseOrderDetailID` int
,`PurchaseOrderMasterID` int
,`Date` date
,`ItemID` int
,`Description` varchar(255)
,`Rate` double(8,2)
,`Qty` varchar(10)
,`Unit` varchar(10)
,`DiscountPer` double(8,2)
,`Discount` double(8,2)
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`Amount` double(8,2)
,`Remarks` varchar(255)
,`ItemName` varchar(55)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_order_master`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_order_master` (
`PurchaseOrderMasterID` int
,`PON` varchar(10)
,`SupplierID` int
,`Date` date
,`PONotes` varchar(255)
,`UserID` int
,`Subject` varchar(255)
,`SupplierName` varchar(150)
,`TRN` varchar(75)
,`Address` varchar(75)
,`Mobile` varchar(150)
,`Phone` varchar(150)
,`Email` varchar(150)
,`Website` varchar(150)
,`Active` varchar(3)
,`InvoiceDueDays` int
,`ReferenceNo` varchar(255)
,`Tax` double(8,2)
,`GrandTotal` double(8,2)
,`eDate` timestamp
,`DeliveryDate` date
,`DeliveryNotes` longtext
,`SubTotal` double(8,2)
,`Discount` double(8,2)
,`DiscountPer` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_payment`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_payment` (
`PurchasePaymentMasterID` int
,`SupplierID` int
,`PaymentDate` date
,`PaymentAmount` double(8,2)
,`PaymentMode` varchar(25)
,`ChartOfAccountID` int
,`ReferenceNo` varchar(35)
,`File` varchar(35)
,`Notes` longtext
,`eDate` timestamp
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_payment_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_payment_detail` (
`PurchasePaymentDetailID` int
,`PurchasePaymentMasterID` int
,`PaymentDate` date
,`InvoiceMasterID` int
,`Payment` double(8,2)
,`eDate` timestamp
,`InvoiceNo` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_payment_master`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_payment_master` (
`PurchasePaymentMasterID` int
,`SupplierID` int
,`PaymentDate` date
,`PaymentAmount` double(8,2)
,`PaymentMode` varchar(25)
,`ChartOfAccountID` int
,`ReferenceNo` varchar(35)
,`File` varchar(35)
,`Notes` longtext
,`eDate` timestamp
,`SupplierName` varchar(150)
,`Address` varchar(75)
,`Phone` varchar(150)
,`Email` varchar(150)
,`Active` varchar(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_receivabledetail`
-- (See below for the actual view)
--
CREATE TABLE `v_receivabledetail` (
`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`Date` date
,`ReferenceNo` varchar(35)
,`InvoiceDetailID` int
,`ItemID` int
,`Qty` int
,`Total` double(10,2)
,`Paid` double(10,2)
,`Balance` double(10,2)
,`PartyName` varchar(150)
,`Address` varchar(75)
,`PartyID` int
,`SubTotal` double(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_rev_exp`
-- (See below for the actual view)
--
CREATE TABLE `v_rev_exp` (
`Rev` double(22,2)
,`Exp` int
,`DATE_FORMAT(date,'%M-%Y')` varchar(69)
,`date_format(``v_journal``.``Date``,'%m-%Y')` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_rev_exp_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_rev_exp_chart` (
`Rev` double
,`Exp` decimal(33,0)
,`MonthName` varchar(69)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_salary` (
`BranchID` int
,`MonthName` varchar(255)
,`eDate` timestamp
,`UserID` int
,`SalaryID` int
,`EmployeeID` int
,`EmployeeName` varchar(75)
,`JobTitle` varchar(75)
,`Department` varchar(75)
,`StaffType` varchar(25)
,`DaysPresent` double(12,2)
,`LWPay` double(12,2)
,`PerDay` double(12,2)
,`BasicSalary` double(12,2)
,`HRA` double(12,2)
,`Transport` double(12,2)
,`OtherAllowance` double(12,2)
,`AdvanceLoan` double(12,2)
,`LeaveDeduction` double(12,2)
,`TotalDeduction` double(12,2)
,`GrandSalary` double(12,2)
,`NetSalary` double(12,2)
,`uDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supervisor`
-- (See below for the actual view)
--
CREATE TABLE `v_supervisor` (
`EmployeeID` int
,`IsSupervisor` varchar(3)
,`Title` varchar(75)
,`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`BranchID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier` (
`SupplierID` int
,`SupplierName` varchar(150)
,`TRN` varchar(75)
,`Address` varchar(75)
,`Mobile` varchar(150)
,`Phone` varchar(150)
,`Email` varchar(150)
,`Website` varchar(150)
,`Active` varchar(3)
,`InvoiceDueDays` int
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier_balance` (
`SupplierID` int
,`Date` varchar(37)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier_outstanding`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier_outstanding` (
`InvoiceMasterID` int
,`PartyID` int
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`InvoiceNo` varchar(10)
,`Date` date
,`DueDate` date
,`PAID` double(19,2)
,`BALANCE` double(22,2)
,`SupplierID` int
,`GrandTotal` double(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier_over_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier_over_balance` (
`SupplierID` int
,`BALANCE` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_target`
-- (See below for the actual view)
--
CREATE TABLE `v_target` (
`TargetID` int
,`DepartmentID` int
,`DepartmentName` varchar(75)
,`TargetType` varchar(150)
,`TargetName` varchar(150)
,`TargetPeriod` varchar(150)
,`Detail` longtext
,`StartDate` date
,`EndDate` date
,`Date` date
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_test`
-- (See below for the actual view)
--
CREATE TABLE `v_test` (
`ItemID` int
,`ItemName` varchar(55)
,`T1` int
,`InvoiceMasterID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trial`
-- (See below for the actual view)
--
CREATE TABLE `v_trial` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trialreport`
-- (See below for the actual view)
--
CREATE TABLE `v_trialreport` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Dr` double(19,2)
,`Cr` double(19,2)
,`Balance` double(22,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trial_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_trial_balance` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Dr` double(22,2)
,`Cr` double(22,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_union_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_union_salary` (
`BranchID` int
,`EmployeeID` int
,`FTDAmount` decimal(54,0)
,`MonthName` varchar(37)
,`SupervisorID` int
,`Total` decimal(42,0)
,`StaffType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_users`
-- (See below for the actual view)
--
CREATE TABLE `v_users` (
`UserID` int
,`BranchID` int
,`FullName` varchar(55)
,`Email` varchar(55)
,`Password` varchar(75)
,`UserType` varchar(25)
,`eDate` timestamp
,`Active` varchar(5)
,`BranchName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_visaexpiry`
-- (See below for the actual view)
--
CREATE TABLE `v_visaexpiry` (
`Total` bigint
,`BranchID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_visa_expiry_list`
-- (See below for the actual view)
--
CREATE TABLE `v_visa_expiry_list` (
`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`JobTitleName` varchar(99)
,`DepartmentName` varchar(75)
,`BranchName` varchar(150)
,`EmployeeID` int
,`Picture` varchar(75)
,`Email` varchar(35)
,`MobileNo` varchar(35)
,`BranchID` int
,`IsSupervisor` varchar(3)
,`DateOfBirth` date
,`VisaIssueDate` date
,`VisaExpiryDate` date
,`PassportNo` varchar(88)
,`PassportExpiry` date
,`EidNo` varchar(75)
,`EidExpiry` date
,`FullAddress` varchar(255)
,`HomePhone` varchar(35)
,`Gender` varchar(35)
,`SSNorGID` varchar(35)
,`MaritalStatus` varchar(35)
,`SpouseName` varchar(50)
,`SpouseEmployer` varchar(52)
,`SpouseWorkPhone` varchar(33)
,`JobTitleID` varchar(33)
,`DepartmentID` int
,`SupervisorID` int
,`WorkLocation` varchar(55)
,`EmailOffical` varchar(55)
,`WorkPhone` varchar(55)
,`StartDate` date
,`Salary` double(10,2)
,`NextofKinName` varchar(75)
,`NextofKinAddress` varchar(255)
,`NextofKinPhone` varchar(55)
,`NextofKinRelationship` varchar(55)
,`EducationLevel` varchar(55)
,`LastDegree` varchar(75)
,`eDate` timestamp
,`uDate` timestamp
,`Title` varchar(75)
,`ExtraComission` double(10,2)
,`SalaryRemarks` longtext
,`StaffType` varchar(25)
,`Nationality` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher` (
`VoucherMstID` int
,`VoucherCode` varchar(35)
,`VoucherTypeName` varchar(35)
,`Voucher` varchar(15)
,`Date` date
,`Narration` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_detail` (
`VoucherMstID` int
,`VoucherCodeID` int
,`Voucher` varchar(15)
,`NarrationMaster` varchar(255)
,`Date` date
,`ChOfAcc` int
,`ChartOfAccountName` varchar(75)
,`Debit` double(10,2)
,`Credit` double(10,2)
,`InvoiceNo` varchar(75)
,`Narration` varchar(255)
,`SupplierID` int
,`PartyID` int
,`RefNo` varchar(75)
,`PartyName` varchar(150)
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_master`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_master` (
`VoucherMstID` int
,`VoucherCodeID` int
,`Voucher` varchar(15)
,`Date` date
,`Narration` varchar(255)
,`VoucherTypeID` int
,`VoucherCode` varchar(35)
,`VoucherTypeName` varchar(35)
,`PartyID` int
,`PartyName` varchar(150)
,`Debit` double(10,2)
,`Credit` double(10,2)
,`SupplierID` int
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `YearID` int NOT NULL,
  `YearName` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`YearID`, `YearName`) VALUES
(1, 2021),
(2, 2022),
(3, 2023),
(4, 2024),
(5, 2025),
(6, 2026),
(7, 2027),
(8, 2028),
(9, 2029),
(10, 2030);

-- --------------------------------------------------------

--
-- Structure for view `vvv`
--
DROP TABLE IF EXISTS `vvv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vvv`  AS SELECT `v_attendance`.`EmployeeID` AS `EmployeeID`, `v_attendance`.`CheckIn` AS `CheckIn`, `v_attendance`.`CheckOut` AS `CheckOut`, `v_attendance`.`Date` AS `Date`, `v_attendance`.`EmployeeName` AS `EmployeeName` FROM `v_attendance` WHERE (`v_attendance`.`EmployeeID` = 41) GROUP BY `v_attendance`.`EmployeeID`, `v_attendance`.`CheckIn`, `v_attendance`.`CheckOut`, `v_attendance`.`Date`, `v_attendance`.`EmployeeName` ORDER BY `v_attendance`.`Date` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_agent_salary`
--
DROP TABLE IF EXISTS `v_agent_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_agent_salary`  AS SELECT `fcb`.`BranchID` AS `BranchID`, `fcb`.`EmployeeID` AS `EmployeeID`, sum(`fcb`.`FTDAmount`) AS `FTDAmount`, date_format(`fcb`.`Date`,'%b-%Y') AS `MonthName`, `employee`.`SupervisorID` AS `SupervisorID`, count(`fcb`.`FCBID`) AS `Total`, `employee`.`StaffType` AS `StaffType` FROM (`employee` join `fcb` on((`fcb`.`EmployeeID` = `employee`.`EmployeeID`))) WHERE ((`employee`.`StaffType` = 'Agent') AND (`fcb`.`Compliant` = 'YES') AND (`fcb`.`KYCSent` = 'YES')) GROUP BY `employee`.`SupervisorID`, `fcb`.`BranchID`, `fcb`.`EmployeeID`, date_format(`fcb`.`Date`,'%b-%Y'), `employee`.`StaffType`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_alerts`
--
DROP TABLE IF EXISTS `v_alerts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_alerts`  AS SELECT timestampdiff(DAY,sysdate(),`employee`.`VisaExpiryDate`) AS `VisaExpiry`, timestampdiff(DAY,sysdate(),`employee`.`PassportExpiry`) AS `PassportExpiry`, `employee`.`BranchID` AS `BranchID`, `employee`.`EmployeeID` AS `EmployeeID` FROM `employee`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_attendance`
--
DROP TABLE IF EXISTS `v_attendance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_attendance`  AS SELECT `attendance`.`EmployeeID` AS `EmployeeID`, if((`attendance`.`Status` = 'Check-in'),date_format(`attendance`.`DateTime`,'%H:%i'),0) AS `CheckIn`, if((`attendance`.`Status` = 'Check-out'),date_format(`attendance`.`DateTime`,'%H:%i'),0) AS `CheckOut`, date_format(`attendance`.`DateTime`,'%d-%m-%Y') AS `Date`, `attendance`.`EmployeeName` AS `EmployeeName` FROM `attendance` GROUP BY `attendance`.`EmployeeID`, `attendance`.`EmployeeName`, `attendance`.`DateTime`, `attendance`.`Status`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_bill_balance`
--
DROP TABLE IF EXISTS `v_bill_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bill_balance`  AS SELECT `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, sum(ifnull(`journal`.`Cr`,0)) AS `INVOICE`, sum(ifnull(`journal`.`Dr`,0)) AS `Payment`, (sum(ifnull(`journal`.`Cr`,0)) - sum(ifnull(`journal`.`Dr`,0))) AS `Remaining`, `journal`.`SupplierID` AS `SupplierID` FROM `journal` WHERE (`journal`.`ChartOfAccountID` = 210100) GROUP BY `journal`.`SupplierID`, `journal`.`InvoiceMasterID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_cashflow`
--
DROP TABLE IF EXISTS `v_cashflow`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cashflow`  AS SELECT sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, date_format(`journal`.`Date`,'%b-%Y') AS `MonthName` FROM `journal` WHERE (`journal`.`ChartOfAccountID` in (110201,110250,110101,110200)) GROUP BY date_format(`journal`.`Date`,'%b-%Y') ORDER BY date_format(`journal`.`Date`,'%b-%Y') ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_challan_detail`
--
DROP TABLE IF EXISTS `v_challan_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_challan_detail`  AS SELECT `challan_detail`.`ChallanDetailID` AS `ChallanDetailID`, `challan_detail`.`ChallanMasterID` AS `ChallanMasterID`, `challan_detail`.`ChallanNo` AS `ChallanNo`, `challan_detail`.`ChallanDate` AS `ChallanDate`, `challan_detail`.`ItemID` AS `ItemID`, `challan_detail`.`Qty` AS `Qty`, `challan_detail`.`Rate` AS `Rate`, `challan_detail`.`TaxAmount` AS `TaxAmount`, `challan_detail`.`TaxPer` AS `TaxPer`, `challan_detail`.`Discount` AS `Discount`, `challan_detail`.`Total` AS `Total`, `item`.`ItemType` AS `ItemType`, `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `item`.`UnitName` AS `UnitName`, `challan_detail`.`Description` AS `Description` FROM (`challan_detail` join `item` on((`challan_detail`.`ItemID` = `item`.`ItemID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_challan_master`
--
DROP TABLE IF EXISTS `v_challan_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_challan_master`  AS SELECT `challan_master`.`ChallanMasterID` AS `ChallanMasterID`, `challan_master`.`ChallanNo` AS `ChallanNo`, `challan_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `challan_master`.`PlaceOfSupply` AS `PlaceOfSupply`, `challan_master`.`ReferenceNo` AS `ReferenceNo`, date_format(`challan_master`.`ChallanDate`,'%d/%m/%Y') AS `ChallanDate`, `challan_master`.`ChallanType` AS `ChallanType`, `challan_master`.`Total` AS `Total`, `challan_master`.`CustomerNotes` AS `CustomerNotes`, `challan_master`.`TermAndCondition` AS `TermAndCondition`, `challan_master`.`File` AS `File`, `party`.`TRN` AS `TRN`, `party`.`Address` AS `Address`, `party`.`Mobile` AS `Mobile`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate`, `challan_master`.`Subject` AS `Subject`, `challan_master`.`DescriptionNotes` AS `DescriptionNotes`, `challan_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `challan_master`.`DiscountPer` AS `DiscountPer`, `challan_master`.`SubTotal` AS `SubTotal`, `challan_master`.`DiscountAmount` AS `DiscountAmount`, `challan_master`.`TaxPer` AS `TaxPer`, `challan_master`.`Tax` AS `Tax`, `challan_master`.`Shipping` AS `Shipping`, `challan_master`.`GrandTotal` AS `GrandTotal` FROM (`challan_master` join `party` on((`challan_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_chartofaccount`
--
DROP TABLE IF EXISTS `v_chartofaccount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_chartofaccount`  AS SELECT `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `chartofaccount`.`CODE` AS `CODE` FROM `chartofaccount` WHERE ((right(`chartofaccount`.`ChartOfAccountID`,5) = 0) AND (`chartofaccount`.`ChartOfAccountName` is not null))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_chartofaccount_mini`
--
DROP TABLE IF EXISTS `v_chartofaccount_mini`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_chartofaccount_mini`  AS SELECT `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`CODE` AS `CODE`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `chartofaccount`.`OpenDebit` AS `OpenDebit`, `chartofaccount`.`OpenCredit` AS `OpenCredit`, `chartofaccount`.`L1` AS `L1`, `chartofaccount`.`L2` AS `L2`, `chartofaccount`.`L3` AS `L3`, `chartofaccount`.`Category` AS `Category` FROM `chartofaccount` WHERE (`chartofaccount`.`Category` in ('CASH','CARD','BANK','AR'))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_closer_salary`
--
DROP TABLE IF EXISTS `v_closer_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_closer_salary`  AS SELECT `employee`.`BranchID` AS `BranchID`, `employee`.`EmployeeID` AS `EmployeeID`, sum(`v_agent_salary`.`FTDAmount`) AS `FTDAmount`, `v_agent_salary`.`MonthName` AS `MonthName`, `employee`.`SupervisorID` AS `SupervisorID`, sum(`v_agent_salary`.`Total`) AS `Total`, `employee`.`StaffType` AS `StaffType` FROM (`employee` join `v_agent_salary` on((`employee`.`EmployeeID` = `v_agent_salary`.`SupervisorID`))) WHERE (`employee`.`StaffType` = 'Closer') GROUP BY `employee`.`EmployeeID`, `employee`.`BranchID`, `v_agent_salary`.`MonthName`, `employee`.`StaffType`, `employee`.`SupervisorID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_daily_report`
--
DROP TABLE IF EXISTS `v_daily_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_daily_report`  AS SELECT `employee`.`SupervisorID` AS `SupervisorID`, `daily_report`.`DailyReportID` AS `DailyReportID`, `daily_report`.`EmployeeID` AS `EmployeeID`, `daily_report`.`Date` AS `Date`, `daily_report`.`Title` AS `Title`, `daily_report`.`Detail` AS `Detail`, `daily_report`.`SupervisorComments` AS `SupervisorComments`, `daily_report`.`File` AS `File`, `daily_report`.`eDate` AS `eDate` FROM (`daily_report` join `employee` on((`daily_report`.`EmployeeID` = `employee`.`EmployeeID`))) WHERE (`daily_report`.`SupervisorComments` is null)  ;

-- --------------------------------------------------------

--
-- Structure for view `v_delivery_challan`
--
DROP TABLE IF EXISTS `v_delivery_challan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_delivery_challan`  AS SELECT `challan_master`.`ChallanMasterID` AS `ChallanMasterID`, `challan_master`.`ChallanNo` AS `ChallanNo`, `challan_master`.`PartyID` AS `PartyID`, `challan_master`.`PlaceOfSupply` AS `PlaceOfSupply`, `challan_master`.`ReferenceNo` AS `ReferenceNo`, `challan_master`.`ChallanDate` AS `ChallanDate`, `challan_master`.`ChallanType` AS `ChallanType`, `challan_master`.`Total` AS `Total`, `challan_master`.`CustomerNotes` AS `CustomerNotes`, `challan_master`.`TermAndCondition` AS `TermAndCondition`, `challan_master`.`File` AS `File`, `challan_master`.`UserID` AS `UserID`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`TRN` AS `TRN`, `party`.`Mobile` AS `Mobile`, `party`.`Website` AS `Website`, `party`.`eDate` AS `eDate`, `challan_master`.`Subject` AS `Subject`, `challan_master`.`DescriptionNotes` AS `DescriptionNotes`, `challan_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `challan_master`.`SubTotal` AS `SubTotal`, `challan_master`.`DiscountPer` AS `DiscountPer`, `challan_master`.`DiscountAmount` AS `DiscountAmount`, `challan_master`.`TaxPer` AS `TaxPer`, `challan_master`.`Tax` AS `Tax`, `challan_master`.`Shipping` AS `Shipping`, `challan_master`.`GrandTotal` AS `GrandTotal`, `challan_master`.`Paid` AS `Paid`, `challan_master`.`Balance` AS `Balance` FROM (`challan_master` join `party` on((`challan_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_documents`
--
DROP TABLE IF EXISTS `v_documents`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_documents`  AS SELECT `documents`.`DocumentID` AS `DocumentID`, `documents`.`EmployeeID` AS `EmployeeID`, `documents`.`FileName` AS `FileName`, `documents`.`File` AS `File`, `documents`.`FileSize` AS `FileSize`, date_format(`documents`.`eDate`,'%d-%m-%Y,  %H:%i') AS `eDate` FROM `documents`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_employee`
--
DROP TABLE IF EXISTS `v_employee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_employee`  AS SELECT `employee`.`FirstName` AS `FirstName`, `employee`.`MiddleName` AS `MiddleName`, `employee`.`LastName` AS `LastName`, `jobtitle`.`JobTitleName` AS `JobTitleName`, `department`.`DepartmentName` AS `DepartmentName`, `branch`.`BranchName` AS `BranchName`, `employee`.`EmployeeID` AS `EmployeeID`, `employee`.`Picture` AS `Picture`, `employee`.`Email` AS `Email`, `employee`.`MobileNo` AS `MobileNo`, `employee`.`BranchID` AS `BranchID`, `employee`.`IsSupervisor` AS `IsSupervisor`, `employee`.`DateOfBirth` AS `DateOfBirth`, `employee`.`VisaIssueDate` AS `VisaIssueDate`, `employee`.`VisaExpiryDate` AS `VisaExpiryDate`, `employee`.`PassportNo` AS `PassportNo`, `employee`.`PassportExpiry` AS `PassportExpiry`, `employee`.`EidNo` AS `EidNo`, `employee`.`EidExpiry` AS `EidExpiry`, `employee`.`FullAddress` AS `FullAddress`, `employee`.`HomePhone` AS `HomePhone`, `employee`.`Gender` AS `Gender`, `employee`.`SSNorGID` AS `SSNorGID`, `employee`.`MaritalStatus` AS `MaritalStatus`, `employee`.`SpouseName` AS `SpouseName`, `employee`.`SpouseEmployer` AS `SpouseEmployer`, `employee`.`SpouseWorkPhone` AS `SpouseWorkPhone`, `employee`.`JobTitleID` AS `JobTitleID`, `employee`.`DepartmentID` AS `DepartmentID`, `employee`.`SupervisorID` AS `SupervisorID`, `employee`.`WorkLocation` AS `WorkLocation`, `employee`.`EmailOffical` AS `EmailOffical`, `employee`.`WorkPhone` AS `WorkPhone`, `employee`.`StartDate` AS `StartDate`, `employee`.`Salary` AS `Salary`, `employee`.`NextofKinName` AS `NextofKinName`, `employee`.`NextofKinAddress` AS `NextofKinAddress`, `employee`.`NextofKinPhone` AS `NextofKinPhone`, `employee`.`NextofKinRelationship` AS `NextofKinRelationship`, `employee`.`EducationLevel` AS `EducationLevel`, `employee`.`LastDegree` AS `LastDegree`, `employee`.`eDate` AS `eDate`, `employee`.`uDate` AS `uDate`, `employee`.`Title` AS `Title`, `employee`.`ExtraComission` AS `ExtraComission`, `employee`.`SalaryRemarks` AS `SalaryRemarks`, `employee`.`StaffType` AS `StaffType`, `employee`.`Nationality` AS `Nationality`, `employee`.`Password` AS `Password`, `employee`.`BankName` AS `BankName`, `employee`.`IBAN` AS `IBAN`, `employee`.`AccountTitle` AS `AccountTitle`, `employee`.`SalaryType` AS `SalaryType` FROM (((`employee` left join `jobtitle` on((`employee`.`JobTitleID` = `jobtitle`.`JobTitleID`))) left join `department` on((`employee`.`DepartmentID` = `department`.`DepartmentID`))) left join `branch` on((`employee`.`BranchID` = `branch`.`BranchID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_emp_allowance`
--
DROP TABLE IF EXISTS `v_emp_allowance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_emp_allowance`  AS SELECT `emp_allowance`.`EmployeeAllowanceID` AS `EmployeeAllowanceID`, `emp_allowance`.`EmployeeID` AS `EmployeeID`, `emp_allowance`.`AllowanceListID` AS `AllowanceListID`, `emp_allowance`.`Amount` AS `Amount`, `emp_allowance`.`Active` AS `Active`, `emp_allowance`.`eDate` AS `eDate`, `allowance_list`.`AllowanceTitle` AS `AllowanceTitle`, `allowance_list`.`AllowanceType` AS `AllowanceType` FROM (`allowance_list` join `emp_allowance` on((`emp_allowance`.`AllowanceListID` = `allowance_list`.`AllowanceListID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_emp_leave`
--
DROP TABLE IF EXISTS `v_emp_leave`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_emp_leave`  AS SELECT `leave`.`LeaveID` AS `LeaveID`, `leave`.`EmployeeID` AS `EmployeeID`, `leave`.`FromDate` AS `FromDate`, `leave`.`ToDate` AS `ToDate`, (to_days(`leave`.`ToDate`) - to_days(`leave`.`FromDate`)) AS `NoOfDays`, `leave`.`Reason` AS `Reason`, `leave`.`DaysApproved` AS `DaysApproved`, `leave`.`DaysRemaining` AS `DaysRemaining`, `leave`.`OMStatus` AS `OMStatus`, `leave`.`HRStatus` AS `HRStatus`, `leave`.`GMStatus` AS `GMStatus`, `leave`.`BranchID` AS `BranchID`, `leave`.`LeaveTypeID` AS `LeaveTypeID`, `leave_type`.`LeaveTypeName` AS `LeaveTypeName`, `leave_type`.`DaysAllowed` AS `DaysAllowed` FROM (`leave` join `leave_type` on((`leave`.`LeaveTypeID` = `leave_type`.`LeaveTypeID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_emp_salary`
--
DROP TABLE IF EXISTS `v_emp_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_emp_salary`  AS SELECT `allowance_list`.`AllowanceTitle` AS `AllowanceTitle`, `allowance_list`.`AllowanceType` AS `AllowanceType`, `emp_salary`.`EmployeeAllowanceID` AS `EmployeeAllowanceID`, `emp_salary`.`EmployeeID` AS `EmployeeID`, `emp_salary`.`AllowanceListID` AS `AllowanceListID`, `emp_salary`.`Amount` AS `Amount`, `emp_salary`.`Active` AS `Active`, `emp_salary`.`eDate` AS `eDate`, date_format(`emp_salary`.`eDate`,'%d/%m/%Y') AS `eDate1` FROM (`allowance_list` join `emp_salary` on((`allowance_list`.`AllowanceListID` = `emp_salary`.`AllowanceListID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_emp_salary_structure`
--
DROP TABLE IF EXISTS `v_emp_salary_structure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_emp_salary_structure`  AS SELECT `emp_salary`.`EmployeeID` AS `EmployeeID`, sum(if((`emp_salary`.`AllowanceListID` = 1),`emp_salary`.`Amount`,0)) AS `Basic`, sum(if((`emp_salary`.`AllowanceListID` = 2),`emp_salary`.`Amount`,0)) AS `HRA`, sum(if((`emp_salary`.`AllowanceListID` = 3),`emp_salary`.`Amount`,0)) AS `Transport`, sum(if((`emp_salary`.`AllowanceListID` = 4),`emp_salary`.`Amount`,0)) AS `OtherAllowance`, (((sum(if((`emp_salary`.`AllowanceListID` = 1),`emp_salary`.`Amount`,0)) + sum(if((`emp_salary`.`AllowanceListID` = 2),`emp_salary`.`Amount`,0))) + sum(if((`emp_salary`.`AllowanceListID` = 3),`emp_salary`.`Amount`,0))) + sum(if((`emp_salary`.`AllowanceListID` = 4),`emp_salary`.`Amount`,0))) AS `TotalSalary` FROM `emp_salary` GROUP BY `emp_salary`.`EmployeeID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_estimate_detail`
--
DROP TABLE IF EXISTS `v_estimate_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_estimate_detail`  AS SELECT `estimate_detail`.`EstimateDetailID` AS `EstimateDetailID`, `estimate_detail`.`EstimateMasterID` AS `EstimateMasterID`, `estimate_detail`.`EstimateNo` AS `EstimateNo`, `estimate_detail`.`EstimateDate` AS `EstimateDate`, `estimate_detail`.`ItemID` AS `ItemID`, `item`.`ItemName` AS `ItemName`, `estimate_detail`.`Qty` AS `Qty`, `estimate_detail`.`Rate` AS `Rate`, `estimate_detail`.`Total` AS `Total`, `estimate_detail`.`Description` AS `Description`, `estimate_detail`.`TaxPer` AS `TaxPer`, `estimate_detail`.`Tax` AS `Tax` FROM (`estimate_detail` join `item` on((`estimate_detail`.`ItemID` = `item`.`ItemID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_estimate_master`
--
DROP TABLE IF EXISTS `v_estimate_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_estimate_master`  AS SELECT `estimate_master`.`EstimateMasterID` AS `EstimateMasterID`, `estimate_master`.`EstimateNo` AS `EstimateNo`, `estimate_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `estimate_master`.`PlaceOfSupply` AS `PlaceOfSupply`, `estimate_master`.`ReferenceNo` AS `ReferenceNo`, `estimate_master`.`EstimateDate` AS `EstimateDate`, `estimate_master`.`Total` AS `Total`, `estimate_master`.`CustomerNotes` AS `CustomerNotes`, `estimate_master`.`TermAndCondition` AS `TermAndCondition`, `estimate_master`.`File` AS `File`, `estimate_master`.`UserID` AS `UserID`, `estimate_master`.`Subject` AS `Subject`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `estimate_master`.`Date` AS `Date`, `estimate_master`.`SubTotal` AS `SubTotal`, `estimate_master`.`TaxPer` AS `TaxPer`, `estimate_master`.`Tax` AS `Tax`, `estimate_master`.`DiscountPer` AS `DiscountPer`, `estimate_master`.`Discount` AS `Discount`, `estimate_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `estimate_master`.`Shipping` AS `Shipping`, `estimate_master`.`DescriptionNotes` AS `DescriptionNotes`, `estimate_master`.`ExpiryDate` AS `ExpiryDate`, `estimate_master`.`GrandTotal` AS `GrandTotal`, `party`.`TRN` AS `TRN`, `party`.`Mobile` AS `Mobile`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate` FROM (`estimate_master` join `party` on((`estimate_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense`
--
DROP TABLE IF EXISTS `v_expense`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_expense`  AS SELECT `expense_master`.`ExpenseMasterID` AS `ExpenseMasterID`, `expense_master`.`Date` AS `Date`, date_format(`expense_master`.`Date`,'%d-%m-%Y') AS `Date1`, `expense_master`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `expense_master`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `expense_master`.`ReferenceNo` AS `ReferenceNo`, `expense_master`.`ExpenseNo` AS `ExpenseNo`, `expense_master`.`GrantTotal` AS `GrantTotal` FROM ((`expense_master` join `chartofaccount` on((`expense_master`.`ChartOfAccountID` = `chartofaccount`.`ChartOfAccountID`))) join `supplier` on((`expense_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense_chart`
--
DROP TABLE IF EXISTS `v_expense_chart`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_expense_chart`  AS SELECT date_format(`v_journal`.`Date`,'%M-%Y') AS `MonthName`, (sum(if((`v_journal`.`Dr` is null),0,`v_journal`.`Dr`)) - sum(if((`v_journal`.`Cr` is null),0,`v_journal`.`Cr`))) AS `Balance`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName` FROM `v_journal` WHERE (`v_journal`.`CODE` = 'E') GROUP BY date_format(`v_journal`.`Date`,'%M-%Y'), `v_journal`.`ChartOfAccountName`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense_detail`
--
DROP TABLE IF EXISTS `v_expense_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_expense_detail`  AS SELECT `expense_master`.`ExpenseNo` AS `ExpenseNo`, `expense_master`.`Date` AS `Date`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `expense_detail`.`ExpenseDetailID` AS `ExpenseDetailID`, `expense_detail`.`ExpenseMasterID` AS `ExpenseMasterID`, `expense_detail`.`ChartOfAccountID` AS `ChartOfAccountID`, `expense_detail`.`Notes` AS `Notes`, `expense_detail`.`TaxPer` AS `TaxPer`, `expense_detail`.`Tax` AS `Tax`, `expense_detail`.`Amount` AS `Amount`, `supplier`.`SupplierName` AS `SupplierName` FROM (((`expense_detail` join `expense_master` on((`expense_master`.`ExpenseMasterID` = `expense_detail`.`ExpenseMasterID`))) join `chartofaccount` on((`expense_detail`.`ChartOfAccountID` = `chartofaccount`.`ChartOfAccountID`))) join `supplier` on((`expense_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense_master`
--
DROP TABLE IF EXISTS `v_expense_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_expense_master`  AS SELECT `expense_master`.`Date` AS `Date`, `expense_master`.`ExpenseNo` AS `ExpenseNo`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `expense_master`.`ReferenceNo` AS `ReferenceNo`, `supplier`.`SupplierName` AS `SupplierName`, `expense_master`.`GrantTotal` AS `GrantTotal` FROM ((`expense_master` join `chartofaccount` on((`expense_master`.`ChartOfAccountID` = `chartofaccount`.`ChartOfAccountID`))) join `supplier` on((`expense_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_fcb`
--
DROP TABLE IF EXISTS `v_fcb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fcb`  AS SELECT `fcb`.`FCBID` AS `FCBID`, `fcb`.`ID` AS `ID`, `fcb`.`FTDAmount` AS `FTDAmount`, date_format(`fcb`.`Date`,'%d/%m/%Y') AS `Date`, date_format(`fcb`.`Date`,'%b-%Y') AS `MonthName`, `fcb`.`Compliant` AS `Compliant`, `fcb`.`KYCSent` AS `KYCSent`, `employee`.`FirstName` AS `FirstName`, `employee`.`MiddleName` AS `MiddleName`, `employee`.`LastName` AS `LastName`, `fcb`.`Dialer` AS `Dialer`, `fcb`.`EmployeeID` AS `EmployeeID`, `fcb`.`BranchID` AS `BranchID`, `fcb`.`Remarks` AS `Remarks` FROM (`fcb` join `employee` on((`fcb`.`EmployeeID` = `employee`.`EmployeeID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_fcb_summary`
--
DROP TABLE IF EXISTS `v_fcb_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fcb_summary`  AS SELECT `fcb`.`BranchID` AS `BranchID`, `fcb`.`EmployeeID` AS `EmployeeID`, `fcb`.`FTDAmount` AS `FTDAmount`, date_format(`fcb`.`Date`,'%b-%Y') AS `MonthName`, count(`fcb`.`FCBID`) AS `Total` FROM `fcb` GROUP BY `fcb`.`BranchID`, `fcb`.`EmployeeID`, date_format(`fcb`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_floor_manager_salary`
--
DROP TABLE IF EXISTS `v_floor_manager_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_floor_manager_salary`  AS SELECT `employee`.`BranchID` AS `BranchID`, `employee`.`EmployeeID` AS `EmployeeID`, `v_closer_salary`.`FTDAmount` AS `FTDAmount`, `v_closer_salary`.`MonthName` AS `MonthName`, `v_closer_salary`.`SupervisorID` AS `SupervisorID`, `v_closer_salary`.`Total` AS `Total`, `employee`.`StaffType` AS `StaffType` FROM (`v_closer_salary` join `employee` on((`employee`.`EmployeeID` = `v_closer_salary`.`SupervisorID`))) WHERE (`employee`.`StaffType` = 'Floor Manager') GROUP BY `employee`.`StaffType`, `employee`.`SupervisorID`, `employee`.`BranchID`, `employee`.`EmployeeID`, `v_closer_salary`.`FTDAmount`, `v_closer_salary`.`MonthName`, `v_closer_salary`.`SupervisorID`, `v_closer_salary`.`Total`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_income_exp_chart`
--
DROP TABLE IF EXISTS `v_income_exp_chart`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_income_exp_chart`  AS SELECT sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, date_format(`journal`.`Date`,'%b-%Y') AS `MonthName` FROM `journal` WHERE (`journal`.`ChartOfAccountID` in (110201,110250,110101,110200)) GROUP BY date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_inventory`
--
DROP TABLE IF EXISTS `v_inventory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_inventory`  AS SELECT `invoice_detail`.`ItemID` AS `ItemID`, `item`.`ItemName` AS `ItemName`, `item`.`UnitName` AS `UnitName`, sum(if((left(`invoice_detail`.`InvoiceNo`,2) = 'CN'),`invoice_detail`.`Qty`,0)) AS `SaleReturn`, sum(if((left(`invoice_detail`.`InvoiceNo`,3) = 'BIL'),`invoice_detail`.`Qty`,0)) AS `QtyIn`, sum(if((left(`invoice_detail`.`InvoiceNo`,3) = 'TAX'),`invoice_detail`.`Qty`,0)) AS `QtyOut`, (sum((if((left(`invoice_detail`.`InvoiceNo`,3) = 'BIL'),`invoice_detail`.`Qty`,0) + if((left(`invoice_detail`.`InvoiceNo`,2) = 'CN'),`invoice_detail`.`Qty`,0))) - sum(if((left(`invoice_detail`.`InvoiceNo`,3) = 'TAX'),`invoice_detail`.`Qty`,0))) AS `Balance` FROM (`invoice_detail` join `item` on((`invoice_detail`.`ItemID` = `item`.`ItemID`))) GROUP BY `invoice_detail`.`ItemID`, `item`.`ItemName`, `item`.`UnitName`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_inventory_detail`
--
DROP TABLE IF EXISTS `v_inventory_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_inventory_detail`  AS SELECT `invoice_detail`.`ItemID` AS `ItemID`, `item`.`ItemName` AS `ItemName`, `item`.`UnitName` AS `UnitName`, if((left(`invoice_detail`.`InvoiceNo`,2) = 'CN'),`invoice_detail`.`Qty`,0) AS `SaleReturn`, if((left(`invoice_detail`.`InvoiceNo`,3) = 'BIL'),`invoice_detail`.`Qty`,0) AS `QtyIn`, if((left(`invoice_detail`.`InvoiceNo`,3) = 'TAX'),`invoice_detail`.`Qty`,0) AS `QtyOut`, `invoice_master`.`Date` AS `Date`, `invoice_detail`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID` FROM ((`invoice_detail` join `item` on((`invoice_detail`.`ItemID` = `item`.`ItemID`))) join `invoice_master` on((`invoice_master`.`InvoiceMasterID` = `invoice_detail`.`InvoiceMasterID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_bal`
--
DROP TABLE IF EXISTS `v_invoice_bal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_bal`  AS SELECT `journal`.`PartyID` AS `PartyID`, `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, sum(ifnull(`journal`.`Dr`,0)) AS `INVOICE`, sum(ifnull(`journal`.`Cr`,0)) AS `PAID`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `due` FROM `journal` WHERE (`journal`.`ChartOfAccountID` = 110400) GROUP BY `journal`.`PartyID`, `journal`.`InvoiceMasterID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_balance`
--
DROP TABLE IF EXISTS `v_invoice_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_balance`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_invoice_bal`.`PartyID` AS `PartyID`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `v_invoice_bal`.`INVOICE` AS `INVOICE`, `v_invoice_bal`.`PAID` AS `PAID`, `v_invoice_bal`.`due` AS `BALANCE`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`DueDate` AS `DueDate`, `invoice_master`.`ReferenceNo` AS `ReferenceNo` FROM (`invoice_master` join `v_invoice_bal` on((`invoice_master`.`InvoiceMasterID` = `v_invoice_bal`.`InvoiceMasterID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_both`
--
DROP TABLE IF EXISTS `v_invoice_both`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_both`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, (`invoice_master`.`GrandTotal` - `invoice_master`.`Paid`) AS `Balance`, `invoice_master`.`DueDate` AS `DueDate`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`CustomerNotes` AS `CustomerNotes`, `invoice_master`.`Subject` AS `Subject`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_master`.`SupplierID` AS `SupplierID`, `invoice_master`.`PartyID` AS `PartyID`, `invoice_master`.`SubTotal` AS `SubTotal`, `invoice_master`.`DiscountPer` AS `DiscountPer`, `invoice_master`.`DiscountAmount` AS `DiscountAmount`, `invoice_master`.`InvoiceType` AS `InvoiceType`, `invoice_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `invoice_master`.`DescriptionNotes` AS `DescriptionNotes`, `invoice_master`.`TaxPer` AS `TaxPer`, `invoice_master`.`Tax` AS `Tax`, `invoice_master`.`Shipping` AS `Shipping`, `invoice_master`.`GrandTotal` AS `GrandTotal`, `party`.`Mobile` AS `Mobile`, `party`.`TRN` AS `TRN`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate`, `invoice_master`.`PaymentDetails` AS `PaymentDetails`, `user`.`FullName` AS `FullName`, `supplier`.`SupplierName` AS `SupplierName` FROM (((`invoice_master` left join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) left join `user` on((`invoice_master`.`UserID` = `user`.`UserID`))) left join `supplier` on((`invoice_master`.`SupplierID` = `supplier`.`SupplierID`))) ORDER BY `invoice_master`.`InvoiceMasterID` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail`
--
DROP TABLE IF EXISTS `v_invoice_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_detail`  AS SELECT `invoice_detail`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`Date` AS `Date`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `invoice_detail`.`PartyID` AS `PartyID`, `invoice_detail`.`Qty` AS `Qty`, `invoice_detail`.`Rate` AS `Rate`, `invoice_detail`.`Total` AS `Total`, `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`Description` AS `Description`, `invoice_detail`.`TaxPer` AS `TaxPer`, `invoice_detail`.`Tax` AS `Tax`, `invoice_master`.`InvoiceType` AS `InvoiceType`, `invoice_detail`.`Discount` AS `Discount`, `invoice_detail`.`DiscountType` AS `DiscountType`, `invoice_detail`.`DiscountAmountItem` AS `DiscountAmountItem`, `invoice_detail`.`Gross` AS `Gross`, `party`.`PartyName` AS `PartyName` FROM (((`invoice_detail` join `invoice_master` on((`invoice_master`.`InvoiceMasterID` = `invoice_detail`.`InvoiceMasterID`))) join `item` on((`invoice_detail`.`ItemID` = `item`.`ItemID`))) left join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_master`
--
DROP TABLE IF EXISTS `v_invoice_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_master`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, (`invoice_master`.`GrandTotal` - `invoice_master`.`Paid`) AS `Balance`, `invoice_master`.`DueDate` AS `DueDate`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`CustomerNotes` AS `CustomerNotes`, `invoice_master`.`Subject` AS `Subject`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_master`.`SupplierID` AS `SupplierID`, `invoice_master`.`PartyID` AS `PartyID`, `invoice_master`.`SubTotal` AS `SubTotal`, `invoice_master`.`DiscountPer` AS `DiscountPer`, `invoice_master`.`DiscountAmount` AS `DiscountAmount`, `invoice_master`.`InvoiceType` AS `InvoiceType`, `invoice_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `invoice_master`.`DescriptionNotes` AS `DescriptionNotes`, `invoice_master`.`TaxPer` AS `TaxPer`, `invoice_master`.`Tax` AS `Tax`, `invoice_master`.`Shipping` AS `Shipping`, `invoice_master`.`GrandTotal` AS `GrandTotal`, `party`.`Mobile` AS `Mobile`, `party`.`TRN` AS `TRN`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate`, `invoice_master`.`PaymentDetails` AS `PaymentDetails`, `user`.`FullName` AS `FullName`, `invoice_master`.`TaxType` AS `TaxType` FROM ((`invoice_master` join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) left join `user` on((`invoice_master`.`UserID` = `user`.`UserID`))) ORDER BY `invoice_master`.`InvoiceMasterID` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_master_supplier`
--
DROP TABLE IF EXISTS `v_invoice_master_supplier`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_master_supplier`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`DueDate` AS `DueDate`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`CustomerNotes` AS `CustomerNotes`, `invoice_master`.`Subject` AS `Subject`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_master`.`SupplierID` AS `SupplierID`, `invoice_master`.`PartyID` AS `PartyID`, `invoice_master`.`SubTotal` AS `SubTotal`, `invoice_master`.`DiscountPer` AS `DiscountPer`, `invoice_master`.`DiscountAmount` AS `DiscountAmount`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`Address` AS `Address`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Active` AS `Active`, `supplier`.`InvoiceDueDays` AS `InvoiceDueDays`, `invoice_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `invoice_master`.`PaymentDetails` AS `PaymentDetails`, `invoice_master`.`DescriptionNotes` AS `DescriptionNotes`, `invoice_master`.`GrandTotal` AS `GrandTotal`, `invoice_master`.`Shipping` AS `Shipping`, `invoice_master`.`Tax` AS `Tax`, `invoice_master`.`TaxPer` AS `TaxPer`, `supplier`.`TRN` AS `TRN`, `v_bill_balance`.`Remaining` AS `Remaining`, `v_bill_balance`.`Payment` AS `Payment`, `v_bill_balance`.`Remaining` AS `Paid`, `v_bill_balance`.`Payment` AS `Balance` FROM ((`invoice_master` join `supplier` on((`invoice_master`.`SupplierID` = `supplier`.`SupplierID`))) left join `v_bill_balance` on((`invoice_master`.`InvoiceMasterID` = `v_bill_balance`.`InvoiceMasterID`))) ORDER BY `invoice_master`.`InvoiceMasterID` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_party_balance`
--
DROP TABLE IF EXISTS `v_invoice_party_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_party_balance`  AS SELECT `v_invoice_balance`.`PartyID` AS `PartyID`, sum(`v_invoice_balance`.`BALANCE`) AS `BALANCE` FROM `v_invoice_balance` GROUP BY `v_invoice_balance`.`PartyID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_inv_balance`
--
DROP TABLE IF EXISTS `v_inv_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_inv_balance`  AS SELECT `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, sum(`journal`.`Dr`) AS `Balance` FROM `journal` WHERE (left(`journal`.`VHNO`,3) = 'PAY') GROUP BY `journal`.`InvoiceMasterID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_inv_detail`
--
DROP TABLE IF EXISTS `v_inv_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_inv_detail`  AS SELECT `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`InvoiceNo` AS `InvoiceNo`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `invoice_detail`.`Qty` AS `Qty`, `invoice_detail`.`Rate` AS `Rate`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`Gross` AS `Gross`, `invoice_detail`.`Total` AS `Total` FROM (`invoice_detail` join `item` on((`invoice_detail`.`ItemID` = `item`.`ItemID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_itemwise_sale`
--
DROP TABLE IF EXISTS `v_itemwise_sale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_itemwise_sale`  AS SELECT `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`PartyID` AS `PartyID`, sum(`invoice_detail`.`Qty`) AS `Qty`, `invoice_detail`.`Rate` AS `Rate`, sum(`invoice_detail`.`Total`) AS `Total`, `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`Discount` AS `Discount`, `invoice_detail`.`DiscountType` AS `DiscountType`, sum(`invoice_detail`.`DiscountAmountItem`) AS `DiscountAmountItem`, sum(`invoice_detail`.`Gross`) AS `Gross`, `party`.`PartyName` AS `PartyName`, `party`.`City` AS `City`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`InvoiceNo` AS `InvoiceNo` FROM (((`invoice_detail` join `invoice_master` on((`invoice_master`.`InvoiceMasterID` = `invoice_detail`.`InvoiceMasterID`))) join `item` on((`invoice_detail`.`ItemID` = `item`.`ItemID`))) left join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) GROUP BY `invoice_detail`.`ItemID`, `invoice_detail`.`PartyID`, `invoice_detail`.`Rate`, `item`.`ItemCode`, `item`.`ItemName`, `invoice_detail`.`Discount`, `invoice_detail`.`DiscountType`, `party`.`PartyName`, `party`.`City`, `invoice_master`.`Date`, `invoice_master`.`InvoiceNo`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_journal`
--
DROP TABLE IF EXISTS `v_journal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_journal`  AS SELECT `journal`.`VHNO` AS `VHNO`, `journal`.`JournalType` AS `JournalType`, `journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `journal`.`SupplierID` AS `SupplierID`, `journal`.`VoucherMstID` AS `VoucherMstID`, `journal`.`PettyMstID` AS `PettyMstID`, `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `journal`.`Date` AS `Date`, `journal`.`Dr` AS `Dr`, `journal`.`Cr` AS `Cr`, `journal`.`PartyID` AS `PartyID`, `journal`.`Narration` AS `Narration`, `chartofaccount`.`L1` AS `L1`, `chartofaccount`.`L2` AS `L2`, `chartofaccount`.`L3` AS `L3`, `chartofaccount`.`CODE` AS `CODE`, `journal`.`Trace` AS `Trace`, `journal`.`BankReconcile` AS `BankReconcile`, `journal`.`ReconcileDate` AS `ReconcileDate`, `journal`.`JournalID` AS `JournalID`, `chartofaccount`.`Category` AS `Category`, `journal`.`ExpenseMasterID` AS `ExpenseMasterID`, `journal`.`PaymentMasterID` AS `PaymentMasterID`, `journal`.`PurchasePaymentMasterID` AS `PurchasePaymentMasterID` FROM (`chartofaccount` join `journal` on((`chartofaccount`.`ChartOfAccountID` = `journal`.`ChartOfAccountID`))) ORDER BY `journal`.`JournalID` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_journal_report`
--
DROP TABLE IF EXISTS `v_journal_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_journal_report`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`Date` AS `Date`, 'INVOICE' AS `INVOICE` FROM `invoice_master`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_leave`
--
DROP TABLE IF EXISTS `v_leave`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_leave`  AS SELECT `leave`.`LeaveID` AS `LeaveID`, `branch`.`BranchName` AS `BranchName`, `leave`.`EmployeeID` AS `EmployeeID`, `v_employee`.`FirstName` AS `FirstName`, `v_employee`.`MiddleName` AS `MiddleName`, `v_employee`.`LastName` AS `LastName`, `v_employee`.`JobTitleName` AS `JobTitleName`, `v_employee`.`DepartmentName` AS `DepartmentName`, `leave`.`FromDate` AS `FromDate`, `leave`.`ToDate` AS `ToDate`, (to_days(`leave`.`ToDate`) - to_days(`leave`.`FromDate`)) AS `NoOfDays`, `leave`.`Reason` AS `Reason`, `leave`.`DaysApproved` AS `DaysApproved`, `leave`.`DaysRemaining` AS `DaysRemaining`, `leave`.`OMStatus` AS `OMStatus`, `leave`.`HRStatus` AS `HRStatus`, `leave`.`GMStatus` AS `GMStatus`, `leave`.`BranchID` AS `BranchID`, `leave`.`LeaveTypeID` AS `LeaveTypeID`, `leave_type`.`LeaveTypeName` AS `LeaveTypeName`, `leave_type`.`DaysAllowed` AS `DaysAllowed`, `leave`.`FromTime` AS `FromTime`, `leave`.`ToTime` AS `ToTime` FROM (((`leave` join `branch` on((`leave`.`BranchID` = `branch`.`BranchID`))) join `v_employee` on((`leave`.`EmployeeID` = `v_employee`.`EmployeeID`))) join `leave_type` on((`leave`.`LeaveTypeID` = `leave_type`.`LeaveTypeID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_leave_summary`
--
DROP TABLE IF EXISTS `v_leave_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_leave_summary`  AS SELECT `leave_detail`.`EmployeeID` AS `EmployeeID`, `leave_detail`.`LeaveTypeID` AS `LeaveTypeID`, sum(if((`leave_detail`.`LeaveTypeID` <> 2),1,0.5)) AS `Total`, date_format(`leave_detail`.`Date`,'%M-%Y') AS `MonthName`, `leave_type`.`LeaveTypeName` AS `LeaveTypeName` FROM (`leave_detail` join `leave_type` on((`leave_detail`.`LeaveTypeID` = `leave_type`.`LeaveTypeID`))) GROUP BY `leave_detail`.`EmployeeID`, `leave_detail`.`LeaveTypeID`, date_format(`leave_detail`.`Date`,'%M-%Y'), `leave_type`.`LeaveTypeName`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_partywise_sale`
--
DROP TABLE IF EXISTS `v_partywise_sale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_partywise_sale`  AS SELECT `invoice_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`InvoiceType` AS `InvoiceType`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`DueDate` AS `DueDate`, `invoice_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `invoice_master`.`SupplierID` AS `SupplierID`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`PaymentDetails` AS `PaymentDetails`, `invoice_master`.`Subject` AS `Subject`, `invoice_master`.`DescriptionNotes` AS `DescriptionNotes`, `invoice_master`.`CustomerNotes` AS `CustomerNotes`, `invoice_master`.`SubTotal` AS `SubTotal`, `invoice_master`.`DiscountPer` AS `DiscountPer`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`DiscountAmount` AS `DiscountAmount`, `invoice_master`.`TaxPer` AS `TaxPer`, `invoice_master`.`Tax` AS `Tax`, `invoice_master`.`Shipping` AS `Shipping`, `invoice_master`.`GrandTotal` AS `GrandTotal`, `invoice_master`.`Paid` AS `Paid`, `invoice_master`.`Balance` AS `Balance` FROM (`invoice_master` join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_aging`
--
DROP TABLE IF EXISTS `v_party_aging`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_party_aging`  AS SELECT `invoice_master`.`PartyID` AS `PartyID`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 1 and 7),`invoice_master`.`GrandTotal`,0)) AS `age7Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 8 and 16),`invoice_master`.`GrandTotal`,0)) AS `age15Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 17 and 30),`invoice_master`.`GrandTotal`,0)) AS `age30Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 31 and 60),`invoice_master`.`GrandTotal`,0)) AS `age60Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 61 and 90),`invoice_master`.`GrandTotal`,0)) AS `age90Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) > 90),`invoice_master`.`GrandTotal`,0)) AS `age90plusDays`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) > 0),`invoice_master`.`GrandTotal`,0)) AS `Total`, `party`.`PartyName` AS `PartyName` FROM (`invoice_master` join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) WHERE (`invoice_master`.`Paid` = 0) GROUP BY `invoice_master`.`PartyID`, `party`.`PartyName`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_balance`
--
DROP TABLE IF EXISTS `v_party_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_party_balance`  AS SELECT `v_journal`.`VHNO` AS `VHNO`, `v_journal`.`JournalType` AS `JournalType`, `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, `v_journal`.`SupplierID` AS `SupplierID`, `v_journal`.`VoucherMstID` AS `VoucherMstID`, `v_journal`.`PettyMstID` AS `PettyMstID`, `v_journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_journal`.`Date` AS `Date`, `v_journal`.`Dr` AS `Dr`, `v_journal`.`Cr` AS `Cr`, `v_journal`.`PartyID` AS `PartyID`, `v_journal`.`Narration` AS `Narration`, `party`.`PartyName` AS `PartyName` FROM (`v_journal` join `party` on((`v_journal`.`PartyID` = `party`.`PartyID`))) WHERE (`v_journal`.`ChartOfAccountID` = 110400)  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_montly_balance`
--
DROP TABLE IF EXISTS `v_party_montly_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_party_montly_balance`  AS SELECT date_format(`journal`.`Date`,'%b-%Y') AS `Date`, sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, `journal`.`PartyID` AS `PartyID` FROM `journal` WHERE ((`journal`.`ChartOfAccountID` = 110400) AND (`journal`.`PartyID` is not null)) GROUP BY `journal`.`PartyID`, date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_passportexpiry`
--
DROP TABLE IF EXISTS `v_passportexpiry`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_passportexpiry`  AS SELECT count(`v_alerts`.`PassportExpiry`) AS `Total`, `v_alerts`.`BranchID` AS `BranchID` FROM `v_alerts` WHERE (`v_alerts`.`PassportExpiry` <= 30) GROUP BY `v_alerts`.`BranchID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_passport_expiry_list`
--
DROP TABLE IF EXISTS `v_passport_expiry_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_passport_expiry_list`  AS SELECT `v_employee`.`FirstName` AS `FirstName`, `v_employee`.`MiddleName` AS `MiddleName`, `v_employee`.`LastName` AS `LastName`, `v_employee`.`DepartmentName` AS `DepartmentName`, `v_employee`.`BranchName` AS `BranchName`, `v_employee`.`EmployeeID` AS `EmployeeID`, `v_employee`.`Picture` AS `Picture`, `v_employee`.`Email` AS `Email`, `v_employee`.`MobileNo` AS `MobileNo`, `v_employee`.`BranchID` AS `BranchID`, `v_employee`.`IsSupervisor` AS `IsSupervisor`, `v_employee`.`DateOfBirth` AS `DateOfBirth`, `v_employee`.`VisaIssueDate` AS `VisaIssueDate`, `v_employee`.`VisaExpiryDate` AS `VisaExpiryDate`, `v_employee`.`PassportNo` AS `PassportNo`, `v_employee`.`PassportExpiry` AS `PassportExpiry`, `v_employee`.`EidNo` AS `EidNo`, `v_employee`.`EidExpiry` AS `EidExpiry`, `v_employee`.`FullAddress` AS `FullAddress`, `v_employee`.`HomePhone` AS `HomePhone`, `v_employee`.`Gender` AS `Gender`, `v_employee`.`SSNorGID` AS `SSNorGID`, `v_employee`.`MaritalStatus` AS `MaritalStatus`, `v_employee`.`SpouseName` AS `SpouseName`, `v_employee`.`SpouseEmployer` AS `SpouseEmployer`, `v_employee`.`SpouseWorkPhone` AS `SpouseWorkPhone`, `v_employee`.`JobTitleID` AS `JobTitleID`, `v_employee`.`DepartmentID` AS `DepartmentID`, `v_employee`.`SupervisorID` AS `SupervisorID`, `v_employee`.`WorkLocation` AS `WorkLocation`, `v_employee`.`EmailOffical` AS `EmailOffical`, `v_employee`.`WorkPhone` AS `WorkPhone`, `v_employee`.`StartDate` AS `StartDate`, `v_employee`.`Salary` AS `Salary`, `v_employee`.`NextofKinName` AS `NextofKinName`, `v_employee`.`NextofKinAddress` AS `NextofKinAddress`, `v_employee`.`NextofKinPhone` AS `NextofKinPhone`, `v_employee`.`NextofKinRelationship` AS `NextofKinRelationship`, `v_employee`.`EducationLevel` AS `EducationLevel`, `v_employee`.`LastDegree` AS `LastDegree`, `v_employee`.`eDate` AS `eDate`, `v_employee`.`uDate` AS `uDate`, `v_employee`.`Title` AS `Title`, `v_employee`.`ExtraComission` AS `ExtraComission`, `v_employee`.`SalaryRemarks` AS `SalaryRemarks`, `v_employee`.`StaffType` AS `StaffType`, `v_employee`.`Nationality` AS `Nationality`, `v_employee`.`JobTitleName` AS `JobTitleName` FROM `v_employee` WHERE (timestampdiff(DAY,sysdate(),`v_employee`.`PassportExpiry`) <= 3030)  ;

-- --------------------------------------------------------

--
-- Structure for view `v_payment`
--
DROP TABLE IF EXISTS `v_payment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_payment`  AS SELECT `payment_master`.`PaymentMasterID` AS `PaymentMasterID`, `payment_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `payment_master`.`PaymentDate` AS `PaymentDate`, `payment_master`.`PaymentAmount` AS `PaymentAmount`, `payment_master`.`PaymentMode` AS `PaymentMode`, `payment_master`.`ChartOfAccountID` AS `ChartOfAccountID`, `payment_master`.`ReferenceNo` AS `ReferenceNo`, `payment_master`.`File` AS `File`, `payment_master`.`Notes` AS `Notes`, `payment_master`.`eDate` AS `eDate`, `party`.`TRN` AS `TRN`, `party`.`Address` AS `Address`, `party`.`Mobile` AS `Mobile`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays` FROM (`payment_master` join `party` on((`payment_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_payment_detail`
--
DROP TABLE IF EXISTS `v_payment_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_payment_detail`  AS SELECT `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `payment_detail`.`PaymentDetailID` AS `PaymentDetailID`, `payment_detail`.`PaymentMasterID` AS `PaymentMasterID`, `payment_detail`.`PaymentDate` AS `PaymentDate`, `payment_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `payment_detail`.`Payment` AS `Payment`, `payment_detail`.`eDate` AS `eDate` FROM (`payment_detail` join `invoice_master` on((`invoice_master`.`InvoiceMasterID` = `payment_detail`.`InvoiceMasterID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_payment_summary`
--
DROP TABLE IF EXISTS `v_payment_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_payment_summary`  AS SELECT `payment_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, sum(`payment_detail`.`Payment`) AS `Paid`, `payment_detail`.`PaymentMasterID` AS `PaymentMasterID` FROM `payment_detail` GROUP BY `payment_detail`.`InvoiceMasterID`, `payment_detail`.`PaymentMasterID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_pettycash_master`
--
DROP TABLE IF EXISTS `v_pettycash_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pettycash_master`  AS SELECT `pettycash_master`.`PettyMstID` AS `PettyMstID`, `pettycash_master`.`PettyVoucher` AS `PettyVoucher`, `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`CODE` AS `CODE`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `pettycash_master`.`Date` AS `Date`, `pettycash_master`.`Narration` AS `Narration`, `pettycash_master`.`Credit` AS `Credit` FROM (`chartofaccount` join `pettycash_master` on((`chartofaccount`.`ChartOfAccountID` = `pettycash_master`.`ChOfAcc`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_order_detail`
--
DROP TABLE IF EXISTS `v_purchase_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_order_detail`  AS SELECT `purchase_order_detail`.`PurchaseOrderDetailID` AS `PurchaseOrderDetailID`, `purchase_order_detail`.`PurchaseOrderMasterID` AS `PurchaseOrderMasterID`, `purchase_order_detail`.`Date` AS `Date`, `purchase_order_detail`.`ItemID` AS `ItemID`, `purchase_order_detail`.`Description` AS `Description`, `purchase_order_detail`.`Rate` AS `Rate`, `purchase_order_detail`.`Qty` AS `Qty`, `purchase_order_detail`.`Unit` AS `Unit`, `purchase_order_detail`.`DiscountPer` AS `DiscountPer`, `purchase_order_detail`.`Discount` AS `Discount`, `purchase_order_detail`.`Tax` AS `Tax`, `purchase_order_detail`.`TaxPer` AS `TaxPer`, `purchase_order_detail`.`Amount` AS `Amount`, `purchase_order_detail`.`Remarks` AS `Remarks`, `item`.`ItemName` AS `ItemName` FROM (`purchase_order_detail` join `item` on((`purchase_order_detail`.`ItemID` = `item`.`ItemID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_order_master`
--
DROP TABLE IF EXISTS `v_purchase_order_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_order_master`  AS SELECT `purchase_order_master`.`PurchaseOrderMasterID` AS `PurchaseOrderMasterID`, `purchase_order_master`.`PON` AS `PON`, `purchase_order_master`.`SupplierID` AS `SupplierID`, `purchase_order_master`.`Date` AS `Date`, `purchase_order_master`.`PONotes` AS `PONotes`, `purchase_order_master`.`UserID` AS `UserID`, `purchase_order_master`.`Subject` AS `Subject`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`TRN` AS `TRN`, `supplier`.`Address` AS `Address`, `supplier`.`Mobile` AS `Mobile`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Website` AS `Website`, `supplier`.`Active` AS `Active`, `supplier`.`InvoiceDueDays` AS `InvoiceDueDays`, `purchase_order_master`.`ReferenceNo` AS `ReferenceNo`, `purchase_order_master`.`Tax` AS `Tax`, `purchase_order_master`.`GrandTotal` AS `GrandTotal`, `purchase_order_master`.`eDate` AS `eDate`, `purchase_order_master`.`DeliveryDate` AS `DeliveryDate`, `purchase_order_master`.`DeliveryNotes` AS `DeliveryNotes`, `purchase_order_master`.`SubTotal` AS `SubTotal`, `purchase_order_master`.`Discount` AS `Discount`, `purchase_order_master`.`DiscountPer` AS `DiscountPer` FROM (`purchase_order_master` join `supplier` on((`purchase_order_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_payment`
--
DROP TABLE IF EXISTS `v_purchase_payment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_payment`  AS SELECT `purchasepayment_master`.`PurchasePaymentMasterID` AS `PurchasePaymentMasterID`, `purchasepayment_master`.`SupplierID` AS `SupplierID`, `purchasepayment_master`.`PaymentDate` AS `PaymentDate`, `purchasepayment_master`.`PaymentAmount` AS `PaymentAmount`, `purchasepayment_master`.`PaymentMode` AS `PaymentMode`, `purchasepayment_master`.`ChartOfAccountID` AS `ChartOfAccountID`, `purchasepayment_master`.`ReferenceNo` AS `ReferenceNo`, `purchasepayment_master`.`File` AS `File`, `purchasepayment_master`.`Notes` AS `Notes`, `purchasepayment_master`.`eDate` AS `eDate`, `supplier`.`SupplierName` AS `SupplierName` FROM (`purchasepayment_master` join `supplier` on((`purchasepayment_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_payment_detail`
--
DROP TABLE IF EXISTS `v_purchase_payment_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_payment_detail`  AS SELECT `purchasepayment_detail`.`PurchasePaymentDetailID` AS `PurchasePaymentDetailID`, `purchasepayment_detail`.`PurchasePaymentMasterID` AS `PurchasePaymentMasterID`, `purchasepayment_detail`.`PaymentDate` AS `PaymentDate`, `purchasepayment_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `purchasepayment_detail`.`Payment` AS `Payment`, `purchasepayment_detail`.`eDate` AS `eDate`, `invoice_master`.`InvoiceNo` AS `InvoiceNo` FROM (`purchasepayment_detail` join `invoice_master` on((`purchasepayment_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_payment_master`
--
DROP TABLE IF EXISTS `v_purchase_payment_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_payment_master`  AS SELECT `purchasepayment_master`.`PurchasePaymentMasterID` AS `PurchasePaymentMasterID`, `purchasepayment_master`.`SupplierID` AS `SupplierID`, `purchasepayment_master`.`PaymentDate` AS `PaymentDate`, `purchasepayment_master`.`PaymentAmount` AS `PaymentAmount`, `purchasepayment_master`.`PaymentMode` AS `PaymentMode`, `purchasepayment_master`.`ChartOfAccountID` AS `ChartOfAccountID`, `purchasepayment_master`.`ReferenceNo` AS `ReferenceNo`, `purchasepayment_master`.`File` AS `File`, `purchasepayment_master`.`Notes` AS `Notes`, `purchasepayment_master`.`eDate` AS `eDate`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`Address` AS `Address`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Active` AS `Active` FROM (`purchasepayment_master` join `supplier` on((`purchasepayment_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_receivabledetail`
--
DROP TABLE IF EXISTS `v_receivabledetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_receivabledetail`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`Qty` AS `Qty`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, `invoice_master`.`Balance` AS `Balance`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`PartyID` AS `PartyID`, `invoice_master`.`SubTotal` AS `SubTotal` FROM ((`invoice_master` join `invoice_detail` on((`invoice_master`.`InvoiceMasterID` = `invoice_detail`.`InvoiceMasterID`))) join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_rev_exp`
--
DROP TABLE IF EXISTS `v_rev_exp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rev_exp`  AS SELECT (sum(if((`v_journal`.`Cr` is null),0,`v_journal`.`Cr`)) - sum(if((`v_journal`.`Dr` is null),0,`v_journal`.`Dr`))) AS `Rev`, 0 AS `Exp`, date_format(`v_journal`.`Date`,'%M-%Y') AS `DATE_FORMAT(date,'%M-%Y')`, date_format(`v_journal`.`Date`,'%m-%Y') AS `date_format(``v_journal``.``Date``,'%m-%Y')` FROM `v_journal` WHERE (`v_journal`.`CODE` = 'r') GROUP BY date_format(`v_journal`.`Date`,'%M-%Y'), date_format(`v_journal`.`Date`,'%m-%Y'), `v_journal`.`CODE`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_rev_exp_chart`
--
DROP TABLE IF EXISTS `v_rev_exp_chart`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rev_exp_chart`  AS SELECT abs(round(sum(`v_rev_exp`.`Rev`),0)) AS `Rev`, abs(round(sum(`v_rev_exp`.`Exp`),0)) AS `Exp`, `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` AS `MonthName` FROM `v_rev_exp` GROUP BY `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` ORDER BY `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_salary`
--
DROP TABLE IF EXISTS `v_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_salary`  AS SELECT `salary`.`BranchID` AS `BranchID`, `salary`.`MonthName` AS `MonthName`, `salary`.`eDate` AS `eDate`, `salary`.`UserID` AS `UserID`, `salary`.`SalaryID` AS `SalaryID`, `salary`.`EmployeeID` AS `EmployeeID`, `salary`.`EmployeeName` AS `EmployeeName`, `salary`.`JobTitle` AS `JobTitle`, `salary`.`Department` AS `Department`, `salary`.`StaffType` AS `StaffType`, `salary`.`DaysPresent` AS `DaysPresent`, `salary`.`LWPay` AS `LWPay`, `salary`.`PerDay` AS `PerDay`, `salary`.`BasicSalary` AS `BasicSalary`, `salary`.`HRA` AS `HRA`, `salary`.`Transport` AS `Transport`, `salary`.`OtherAllowance` AS `OtherAllowance`, `salary`.`AdvanceLoan` AS `AdvanceLoan`, `salary`.`LeaveDeduction` AS `LeaveDeduction`, `salary`.`TotalDeduction` AS `TotalDeduction`, `salary`.`GrandSalary` AS `GrandSalary`, `salary`.`NetSalary` AS `NetSalary`, `salary`.`uDate` AS `uDate` FROM `salary`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supervisor`
--
DROP TABLE IF EXISTS `v_supervisor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supervisor`  AS SELECT `employee`.`EmployeeID` AS `EmployeeID`, `employee`.`IsSupervisor` AS `IsSupervisor`, `employee`.`Title` AS `Title`, `employee`.`FirstName` AS `FirstName`, `employee`.`MiddleName` AS `MiddleName`, `employee`.`LastName` AS `LastName`, `employee`.`BranchID` AS `BranchID` FROM `employee` WHERE (`employee`.`IsSupervisor` = 'Yes')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier`
--
DROP TABLE IF EXISTS `v_supplier`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supplier`  AS SELECT `supplier`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`TRN` AS `TRN`, `supplier`.`Address` AS `Address`, `supplier`.`Mobile` AS `Mobile`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Website` AS `Website`, `supplier`.`Active` AS `Active`, `supplier`.`InvoiceDueDays` AS `InvoiceDueDays`, `supplier`.`eDate` AS `eDate` FROM `supplier`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier_balance`
--
DROP TABLE IF EXISTS `v_supplier_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supplier_balance`  AS SELECT `journal`.`SupplierID` AS `SupplierID`, date_format(`journal`.`Date`,'%b-%Y') AS `Date`, sum(if((`journal`.`Dr` is null),0,`journal`.`Dr`)) AS `Dr`, sum(if((`journal`.`Cr` is null),0,`journal`.`Cr`)) AS `Cr`, sum((if((`journal`.`Dr` is null),0,`journal`.`Dr`) - if((`journal`.`Cr` is null),0,`journal`.`Cr`))) AS `Balance` FROM `journal` WHERE (`journal`.`ChartOfAccountID` = 210100) GROUP BY `journal`.`SupplierID`, date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier_outstanding`
--
DROP TABLE IF EXISTS `v_supplier_outstanding`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supplier_outstanding`  AS SELECT `v_journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_journal`.`PartyID` AS `PartyID`, `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`DueDate` AS `DueDate`, sum(ifnull(`v_journal`.`Dr`,0)) AS `PAID`, abs((sum(ifnull(`v_journal`.`Dr`,0)) - sum(ifnull(`v_journal`.`Cr`,0)))) AS `BALANCE`, `v_journal`.`SupplierID` AS `SupplierID`, `invoice_master`.`GrandTotal` AS `GrandTotal` FROM (`v_journal` join `invoice_master` on((`invoice_master`.`InvoiceMasterID` = `v_journal`.`InvoiceMasterID`))) WHERE (((`v_journal`.`VHNO` like 'BILL%') OR (`v_journal`.`VHNO` like 'BILLPAY%')) AND (`v_journal`.`ChartOfAccountID` = 210100)) GROUP BY `v_journal`.`InvoiceMasterID`, `v_journal`.`PartyID`, `v_journal`.`ChartOfAccountID`, `v_journal`.`ChartOfAccountName`, `invoice_master`.`InvoiceNo`, `invoice_master`.`Date`, `invoice_master`.`DueDate`, `invoice_master`.`GrandTotal`, `v_journal`.`SupplierID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier_over_balance`
--
DROP TABLE IF EXISTS `v_supplier_over_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supplier_over_balance`  AS SELECT `v_supplier_outstanding`.`SupplierID` AS `SupplierID`, sum(`v_supplier_outstanding`.`BALANCE`) AS `BALANCE` FROM `v_supplier_outstanding` GROUP BY `v_supplier_outstanding`.`SupplierID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_target`
--
DROP TABLE IF EXISTS `v_target`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_target`  AS SELECT `target`.`TargetID` AS `TargetID`, `target`.`DepartmentID` AS `DepartmentID`, `department`.`DepartmentName` AS `DepartmentName`, `target`.`TargetType` AS `TargetType`, `target`.`TargetName` AS `TargetName`, `target`.`TargetPeriod` AS `TargetPeriod`, `target`.`Detail` AS `Detail`, `target`.`StartDate` AS `StartDate`, `target`.`EndDate` AS `EndDate`, `target`.`Date` AS `Date`, `target`.`eDate` AS `eDate` FROM (`department` join `target` on((`department`.`DepartmentID` = `target`.`DepartmentID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_test`
--
DROP TABLE IF EXISTS `v_test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_test`  AS SELECT `item`.`ItemID` AS `ItemID`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`ItemID` AS `T1`, `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID` FROM ((`item` join `invoice_detail` on((`item`.`ItemID` = `invoice_detail`.`ItemID`))) join `invoice_master` on((`invoice_master`.`InvoiceMasterID` = `invoice_detail`.`InvoiceMasterID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_trial`
--
DROP TABLE IF EXISTS `v_trial`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trial`  AS SELECT `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, sum(ifnull(`v_journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`v_journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`v_journal`.`Dr`,0)) - sum(ifnull(`v_journal`.`Cr`,0))) AS `Balance` FROM `v_journal` GROUP BY `v_journal`.`ChartOfAccountID`, `v_journal`.`ChartOfAccountName` ORDER BY `v_journal`.`ChartOfAccountName` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_trialreport`
--
DROP TABLE IF EXISTS `v_trialreport`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trialreport`  AS SELECT `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, sum(ifnull(`v_journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`v_journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`v_journal`.`Dr`,0)) - sum(ifnull(`v_journal`.`Cr`,0))) AS `Balance` FROM `v_journal` GROUP BY `v_journal`.`ChartOfAccountID`, `v_journal`.`ChartOfAccountName` ORDER BY `v_journal`.`ChartOfAccountName` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_trial_balance`
--
DROP TABLE IF EXISTS `v_trial_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trial_balance`  AS SELECT `v_trial`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_trial`.`ChartOfAccountName` AS `ChartOfAccountName`, if((`v_trial`.`Balance` >= 0),`v_trial`.`Balance`,0) AS `Dr`, if((`v_trial`.`Balance` < 0),abs(`v_trial`.`Balance`),0) AS `Cr` FROM `v_trial`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_union_salary`
--
DROP TABLE IF EXISTS `v_union_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_union_salary`  AS SELECT `v_agent_salary`.`BranchID` AS `BranchID`, `v_agent_salary`.`EmployeeID` AS `EmployeeID`, `v_agent_salary`.`FTDAmount` AS `FTDAmount`, `v_agent_salary`.`MonthName` AS `MonthName`, `v_agent_salary`.`SupervisorID` AS `SupervisorID`, `v_agent_salary`.`Total` AS `Total`, `v_agent_salary`.`StaffType` AS `StaffType` FROM `v_agent_salary` union select `v_closer_salary`.`BranchID` AS `BranchID`,`v_closer_salary`.`EmployeeID` AS `EmployeeID`,`v_closer_salary`.`FTDAmount` AS `FTDAmount`,`v_closer_salary`.`MonthName` AS `MonthName`,`v_closer_salary`.`SupervisorID` AS `SupervisorID`,`v_closer_salary`.`Total` AS `total`,`v_closer_salary`.`StaffType` AS `StaffType` from `v_closer_salary` union select `v_floor_manager_salary`.`BranchID` AS `BranchID`,`v_floor_manager_salary`.`EmployeeID` AS `EmployeeID`,`v_floor_manager_salary`.`FTDAmount` AS `FTDAmount`,`v_floor_manager_salary`.`MonthName` AS `MonthName`,`v_floor_manager_salary`.`SupervisorID` AS `SupervisorID`,`v_floor_manager_salary`.`Total` AS `total`,`v_floor_manager_salary`.`StaffType` AS `StaffType` from `v_floor_manager_salary`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_users`
--
DROP TABLE IF EXISTS `v_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_users`  AS SELECT `user`.`UserID` AS `UserID`, `user`.`BranchID` AS `BranchID`, `user`.`FullName` AS `FullName`, `user`.`Email` AS `Email`, `user`.`Password` AS `Password`, `user`.`UserType` AS `UserType`, `user`.`eDate` AS `eDate`, `user`.`Active` AS `Active`, `branch`.`BranchName` AS `BranchName` FROM (`user` join `branch` on((`user`.`BranchID` = `branch`.`BranchID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_visaexpiry`
--
DROP TABLE IF EXISTS `v_visaexpiry`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_visaexpiry`  AS SELECT count(`v_alerts`.`VisaExpiry`) AS `Total`, `v_alerts`.`BranchID` AS `BranchID` FROM `v_alerts` WHERE (`v_alerts`.`VisaExpiry` <= 30) GROUP BY `v_alerts`.`BranchID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_visa_expiry_list`
--
DROP TABLE IF EXISTS `v_visa_expiry_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_visa_expiry_list`  AS SELECT `v_employee`.`FirstName` AS `FirstName`, `v_employee`.`MiddleName` AS `MiddleName`, `v_employee`.`LastName` AS `LastName`, `v_employee`.`JobTitleName` AS `JobTitleName`, `v_employee`.`DepartmentName` AS `DepartmentName`, `v_employee`.`BranchName` AS `BranchName`, `v_employee`.`EmployeeID` AS `EmployeeID`, `v_employee`.`Picture` AS `Picture`, `v_employee`.`Email` AS `Email`, `v_employee`.`MobileNo` AS `MobileNo`, `v_employee`.`BranchID` AS `BranchID`, `v_employee`.`IsSupervisor` AS `IsSupervisor`, `v_employee`.`DateOfBirth` AS `DateOfBirth`, `v_employee`.`VisaIssueDate` AS `VisaIssueDate`, `v_employee`.`VisaExpiryDate` AS `VisaExpiryDate`, `v_employee`.`PassportNo` AS `PassportNo`, `v_employee`.`PassportExpiry` AS `PassportExpiry`, `v_employee`.`EidNo` AS `EidNo`, `v_employee`.`EidExpiry` AS `EidExpiry`, `v_employee`.`FullAddress` AS `FullAddress`, `v_employee`.`HomePhone` AS `HomePhone`, `v_employee`.`Gender` AS `Gender`, `v_employee`.`SSNorGID` AS `SSNorGID`, `v_employee`.`MaritalStatus` AS `MaritalStatus`, `v_employee`.`SpouseName` AS `SpouseName`, `v_employee`.`SpouseEmployer` AS `SpouseEmployer`, `v_employee`.`SpouseWorkPhone` AS `SpouseWorkPhone`, `v_employee`.`JobTitleID` AS `JobTitleID`, `v_employee`.`DepartmentID` AS `DepartmentID`, `v_employee`.`SupervisorID` AS `SupervisorID`, `v_employee`.`WorkLocation` AS `WorkLocation`, `v_employee`.`EmailOffical` AS `EmailOffical`, `v_employee`.`WorkPhone` AS `WorkPhone`, `v_employee`.`StartDate` AS `StartDate`, `v_employee`.`Salary` AS `Salary`, `v_employee`.`NextofKinName` AS `NextofKinName`, `v_employee`.`NextofKinAddress` AS `NextofKinAddress`, `v_employee`.`NextofKinPhone` AS `NextofKinPhone`, `v_employee`.`NextofKinRelationship` AS `NextofKinRelationship`, `v_employee`.`EducationLevel` AS `EducationLevel`, `v_employee`.`LastDegree` AS `LastDegree`, `v_employee`.`eDate` AS `eDate`, `v_employee`.`uDate` AS `uDate`, `v_employee`.`Title` AS `Title`, `v_employee`.`ExtraComission` AS `ExtraComission`, `v_employee`.`SalaryRemarks` AS `SalaryRemarks`, `v_employee`.`StaffType` AS `StaffType`, `v_employee`.`Nationality` AS `Nationality` FROM `v_employee` WHERE (timestampdiff(DAY,sysdate(),`v_employee`.`VisaExpiryDate`) <= 3030)  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher`
--
DROP TABLE IF EXISTS `v_voucher`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_voucher`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_type`.`VoucherCode` AS `VoucherCode`, `voucher_type`.`VoucherTypeName` AS `VoucherTypeName`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Date` AS `Date`, `voucher_master`.`Narration` AS `Narration` FROM (`voucher_master` join `voucher_type` on((`voucher_master`.`VoucherCodeID` = `voucher_type`.`VoucherTypeID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_detail`
--
DROP TABLE IF EXISTS `v_voucher_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_voucher_detail`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_master`.`VoucherCodeID` AS `VoucherCodeID`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Narration` AS `NarrationMaster`, `voucher_detail`.`Date` AS `Date`, `voucher_detail`.`ChOfAcc` AS `ChOfAcc`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `voucher_detail`.`Debit` AS `Debit`, `voucher_detail`.`Credit` AS `Credit`, `voucher_detail`.`InvoiceNo` AS `InvoiceNo`, `voucher_detail`.`Narration` AS `Narration`, `voucher_detail`.`SupplierID` AS `SupplierID`, `voucher_detail`.`PartyID` AS `PartyID`, `voucher_detail`.`RefNo` AS `RefNo`, `party`.`PartyName` AS `PartyName`, `supplier`.`SupplierName` AS `SupplierName` FROM ((((`voucher_detail` join `voucher_master` on((`voucher_master`.`VoucherMstID` = `voucher_detail`.`VoucherMstID`))) join `chartofaccount` on((`chartofaccount`.`ChartOfAccountID` = `voucher_detail`.`ChOfAcc`))) left join `party` on((`voucher_detail`.`PartyID` = `party`.`PartyID`))) left join `supplier` on((`voucher_detail`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_master`
--
DROP TABLE IF EXISTS `v_voucher_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_voucher_master`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_master`.`VoucherCodeID` AS `VoucherCodeID`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Date` AS `Date`, `voucher_master`.`Narration` AS `Narration`, `voucher_type`.`VoucherTypeID` AS `VoucherTypeID`, `voucher_type`.`VoucherCode` AS `VoucherCode`, `voucher_type`.`VoucherTypeName` AS `VoucherTypeName`, `voucher_detail`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `voucher_detail`.`Debit` AS `Debit`, `voucher_detail`.`Credit` AS `Credit`, `voucher_detail`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName` FROM ((((`voucher_master` join `voucher_type` on((`voucher_master`.`VoucherCodeID` = `voucher_type`.`VoucherTypeID`))) join `voucher_detail` on((`voucher_master`.`VoucherMstID` = `voucher_detail`.`VoucherMstID`))) left join `party` on((`voucher_detail`.`PartyID` = `party`.`PartyID`))) left join `supplier` on((`voucher_detail`.`SupplierID` = `supplier`.`SupplierID`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`AirLineID`);

--
-- Indexes for table `allowance_list`
--
ALTER TABLE `allowance_list`
  ADD PRIMARY KEY (`AllowanceListID`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`AttachmentID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`InvoiceDetailID`);

--
-- Indexes for table `bill_master`
--
ALTER TABLE `bill_master`
  ADD PRIMARY KEY (`InvoiceMasterID`),
  ADD KEY `InvoiceTypeID` (`InvoiceNo`),
  ADD KEY `invoice_master_ibfk_2` (`PartyID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `challan_detail`
--
ALTER TABLE `challan_detail`
  ADD PRIMARY KEY (`ChallanDetailID`);

--
-- Indexes for table `challan_master`
--
ALTER TABLE `challan_master`
  ADD PRIMARY KEY (`ChallanMasterID`);

--
-- Indexes for table `challan_type`
--
ALTER TABLE `challan_type`
  ADD PRIMARY KEY (`ChallanTypeID`);

--
-- Indexes for table `chartofaccount`
--
ALTER TABLE `chartofaccount`
  ADD PRIMARY KEY (`ChartOfAccountID`);

--
-- Indexes for table `chartofaccount_test`
--
ALTER TABLE `chartofaccount_test`
  ADD PRIMARY KEY (`ChartOfAccountID`);

--
-- Indexes for table `chartofaccount_working`
--
ALTER TABLE `chartofaccount_working`
  ADD PRIMARY KEY (`ChartOfAccountID`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `daily_report`
--
ALTER TABLE `daily_report`
  ADD PRIMARY KEY (`DailyReportID`);

--
-- Indexes for table `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`DealID`);

--
-- Indexes for table `deduction_list`
--
ALTER TABLE `deduction_list`
  ADD PRIMARY KEY (`DeductionListID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`DocumentID`);

--
-- Indexes for table `document_category`
--
ALTER TABLE `document_category`
  ADD PRIMARY KEY (`DocumentCategoryID`);

--
-- Indexes for table `educationlevel`
--
ALTER TABLE `educationlevel`
  ADD PRIMARY KEY (`EducationLevelID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `emp_allowance`
--
ALTER TABLE `emp_allowance`
  ADD PRIMARY KEY (`EmployeeAllowanceID`);

--
-- Indexes for table `emp_deduction`
--
ALTER TABLE `emp_deduction`
  ADD PRIMARY KEY (`EmployeeDeductionID`);

--
-- Indexes for table `emp_salary`
--
ALTER TABLE `emp_salary`
  ADD PRIMARY KEY (`EmployeeAllowanceID`);

--
-- Indexes for table `emp_salary____`
--
ALTER TABLE `emp_salary____`
  ADD PRIMARY KEY (`EmployeeSalaryID`);

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
-- Indexes for table `eu`
--
ALTER TABLE `eu`
  ADD PRIMARY KEY (`EuID`);

--
-- Indexes for table `expense_detail`
--
ALTER TABLE `expense_detail`
  ADD PRIMARY KEY (`ExpenseDetailID`);

--
-- Indexes for table `expense_master`
--
ALTER TABLE `expense_master`
  ADD PRIMARY KEY (`ExpenseMasterID`);

--
-- Indexes for table `fcb`
--
ALTER TABLE `fcb`
  ADD PRIMARY KEY (`FCBID`);

--
-- Indexes for table `fleet_detail`
--
ALTER TABLE `fleet_detail`
  ADD PRIMARY KEY (`FleetDetailID`);

--
-- Indexes for table `fleet_master`
--
ALTER TABLE `fleet_master`
  ADD PRIMARY KEY (`FleetMasterID`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`InvoiceDetailID`);

--
-- Indexes for table `invoice_detail_audit`
--
ALTER TABLE `invoice_detail_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD PRIMARY KEY (`InvoiceMasterID`),
  ADD KEY `InvoiceTypeID` (`InvoiceNo`),
  ADD KEY `invoice_master_ibfk_2` (`PartyID`);

--
-- Indexes for table `invoice_master_audit`
--
ALTER TABLE `invoice_master_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `InvoiceTypeID` (`InvoiceNo`),
  ADD KEY `invoice_master_ibfk_2` (`PartyID`);

--
-- Indexes for table `invoice_type`
--
ALTER TABLE `invoice_type`
  ADD PRIMARY KEY (`InvoiceTypeID`);

--
-- Indexes for table `issue_letter`
--
ALTER TABLE `issue_letter`
  ADD PRIMARY KEY (`IssueLetterID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `item__`
--
ALTER TABLE `item__`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `jobtitle`
--
ALTER TABLE `jobtitle`
  ADD PRIMARY KEY (`JobTitleID`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`JournalID`),
  ADD KEY `VoucherMstID` (`VoucherMstID`),
  ADD KEY `PettyMstID` (`PettyMstID`);

--
-- Indexes for table `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`LeadID`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`LeaveID`);

--
-- Indexes for table `leave_detail`
--
ALTER TABLE `leave_detail`
  ADD PRIMARY KEY (`LeaveDetailID`);

--
-- Indexes for table `leave_status`
--
ALTER TABLE `leave_status`
  ADD PRIMARY KEY (`LeaveStatusID`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`LeaveTypeID`);

--
-- Indexes for table `letter`
--
ALTER TABLE `letter`
  ADD PRIMARY KEY (`LetterID`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`LoanID`);

--
-- Indexes for table `loan_deduction`
--
ALTER TABLE `loan_deduction`
  ADD PRIMARY KEY (`LoanDeductionID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthname`
--
ALTER TABLE `monthname`
  ADD PRIMARY KEY (`MonthID`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`NoticeBoardID`);

--
-- Indexes for table `notice_seen`
--
ALTER TABLE `notice_seen`
  ADD PRIMARY KEY (`NoticeSeenID`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`PartyID`);

--
-- Indexes for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`PaymentDetailID`);

--
-- Indexes for table `payment_master`
--
ALTER TABLE `payment_master`
  ADD PRIMARY KEY (`PaymentMasterID`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  ADD PRIMARY KEY (`PettyDetID`),
  ADD KEY `PettyMstID` (`PettyMstID`);

--
-- Indexes for table `pettycash_master`
--
ALTER TABLE `pettycash_master`
  ADD PRIMARY KEY (`PettyMstID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progress_report`
--
ALTER TABLE `progress_report`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `purchasepayment_detail`
--
ALTER TABLE `purchasepayment_detail`
  ADD PRIMARY KEY (`PurchasePaymentDetailID`);

--
-- Indexes for table `purchasepayment_master`
--
ALTER TABLE `purchasepayment_master`
  ADD PRIMARY KEY (`PurchasePaymentMasterID`);

--
-- Indexes for table `purchase_order_detail`
--
ALTER TABLE `purchase_order_detail`
  ADD PRIMARY KEY (`PurchaseOrderDetailID`);

--
-- Indexes for table `purchase_order_master`
--
ALTER TABLE `purchase_order_master`
  ADD PRIMARY KEY (`PurchaseOrderMasterID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `runtotaltestdata`
--
ALTER TABLE `runtotaltestdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`SalaryID`);

--
-- Indexes for table `stafftype_____`
--
ALTER TABLE `stafftype_____`
  ADD PRIMARY KEY (`StaffTypeID`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`StaffTypeID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `supplier_category`
--
ALTER TABLE `supplier_category`
  ADD PRIMARY KEY (`SupplierCatID`);

--
-- Indexes for table `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`TargetID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `target_reply`
--
ALTER TABLE `target_reply`
  ADD PRIMARY KEY (`TargetReplyID`),
  ADD KEY `TargetID` (`TargetID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`TaxID`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`TitleID`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`UnitID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  ADD PRIMARY KEY (`VoucherDetID`),
  ADD KEY `VoucherMstID` (`VoucherMstID`);

--
-- Indexes for table `voucher_detail_audit`
--
ALTER TABLE `voucher_detail_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `VoucherMstID` (`VoucherMstID`);

--
-- Indexes for table `voucher_master`
--
ALTER TABLE `voucher_master`
  ADD PRIMARY KEY (`VoucherMstID`);

--
-- Indexes for table `voucher_master_audit`
--
ALTER TABLE `voucher_master_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_type`
--
ALTER TABLE `voucher_type`
  ADD PRIMARY KEY (`VoucherTypeID`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`YearID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `AirLineID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `allowance_list`
--
ALTER TABLE `allowance_list`
  MODIFY `AllowanceListID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `AttachmentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1421;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `InvoiceDetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `bill_master`
--
ALTER TABLE `bill_master`
  MODIFY `InvoiceMasterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `BranchID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `challan_detail`
--
ALTER TABLE `challan_detail`
  MODIFY `ChallanDetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `challan_master`
--
ALTER TABLE `challan_master`
  MODIFY `ChallanMasterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `DocumentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `document_category`
--
ALTER TABLE `document_category`
  MODIFY `DocumentCategoryID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `estimate_detail`
--
ALTER TABLE `estimate_detail`
  MODIFY `EstimateDetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `estimate_master`
--
ALTER TABLE `estimate_master`
  MODIFY `EstimateMasterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expense_detail`
--
ALTER TABLE `expense_detail`
  MODIFY `ExpenseDetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `expense_master`
--
ALTER TABLE `expense_master`
  MODIFY `ExpenseMasterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `InvoiceDetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `invoice_detail_audit`
--
ALTER TABLE `invoice_detail_audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `invoice_master`
--
ALTER TABLE `invoice_master`
  MODIFY `InvoiceMasterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `invoice_master_audit`
--
ALTER TABLE `invoice_master_audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `invoice_type`
--
ALTER TABLE `invoice_type`
  MODIFY `InvoiceTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `item__`
--
ALTER TABLE `item__`
  MODIFY `ItemID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `JournalID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1349;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `PartyID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2216;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `PaymentDetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `payment_master`
--
ALTER TABLE `payment_master`
  MODIFY `PaymentMasterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_mode`
--
ALTER TABLE `payment_mode`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  MODIFY `PettyDetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pettycash_master`
--
ALTER TABLE `pettycash_master`
  MODIFY `PettyMstID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchasepayment_detail`
--
ALTER TABLE `purchasepayment_detail`
  MODIFY `PurchasePaymentDetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchasepayment_master`
--
ALTER TABLE `purchasepayment_master`
  MODIFY `PurchasePaymentMasterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_order_detail`
--
ALTER TABLE `purchase_order_detail`
  MODIFY `PurchaseOrderDetailID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `purchase_order_master`
--
ALTER TABLE `purchase_order_master`
  MODIFY `PurchaseOrderMasterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `runtotaltestdata`
--
ALTER TABLE `runtotaltestdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2216;

--
-- AUTO_INCREMENT for table `supplier_category`
--
ALTER TABLE `supplier_category`
  MODIFY `SupplierCatID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `TaxID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `UnitID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `RoleId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  MODIFY `VoucherDetID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `voucher_detail_audit`
--
ALTER TABLE `voucher_detail_audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `voucher_master`
--
ALTER TABLE `voucher_master`
  MODIFY `VoucherMstID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `voucher_master_audit`
--
ALTER TABLE `voucher_master_audit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `voucher_type`
--
ALTER TABLE `voucher_type`
  MODIFY `VoucherTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`VoucherMstID`) REFERENCES `voucher_master` (`VoucherMstID`) ON DELETE CASCADE,
  ADD CONSTRAINT `journal_ibfk_2` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE;

--
-- Constraints for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  ADD CONSTRAINT `pettycash_detail_ibfk_1` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
