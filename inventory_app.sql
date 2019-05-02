-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 08:00 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_managements`
--

CREATE TABLE `account_managements` (
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`activity_id`, `user_id`, `operations`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'Added Raw Material To The Category List', '2019-04-12 07:48:22', '2019-04-12 07:48:22', NULL),
(2, '1', 'Added Consumables To The Category List', '2019-04-12 07:55:27', '2019-04-12 07:55:27', NULL),
(3, '1', 'Added Hybrid Applications To The Category List', '2019-04-12 08:39:03', '2019-04-12 08:39:03', NULL),
(4, '1', 'Added Goke Demmy To The Supplier List', '2019-04-13 11:33:34', '2019-04-13 11:33:34', NULL),
(5, '1', 'Added Goke Demmy To The Supplier List', '2019-04-13 11:36:38', '2019-04-13 11:36:38', NULL),
(6, '1', 'Added Goke Demmy To The Supplier List', '2019-04-13 11:37:25', '2019-04-13 11:37:25', NULL),
(7, '1', 'Added Goke Demmy To The Supplier List', '2019-04-13 11:39:37', '2019-04-13 11:39:37', NULL),
(8, '1', 'Added Goke Demmy To The Supplier List', '2019-04-13 11:41:29', '2019-04-13 11:41:29', NULL),
(9, '1', 'Added Adesina Taiwo Olajide To The Supplier List', '2019-04-13 11:42:29', '2019-04-13 11:42:29', NULL),
(10, '1', 'Added Adesina Taiwo Olajide To The Supplier List', '2019-04-13 11:46:18', '2019-04-13 11:46:18', NULL),
(11, '1', 'Added Adelabu Adebayo To The Distributor List', '2019-04-13 12:25:37', '2019-04-13 12:25:37', NULL),
(12, '1', 'Added Noble Immaculate To The Distributor List', '2019-04-13 12:28:21', '2019-04-13 12:28:21', NULL),
(13, '1', 'Added Politician To The Distributor List', '2019-04-13 12:35:54', '2019-04-13 12:35:54', NULL),
(14, '1', 'Added Foodco Idiape To The Outlet List', '2019-04-13 12:57:11', '2019-04-13 12:57:11', NULL),
(15, '1', 'Added Feed Well Makola To The Outlet List', '2019-04-13 12:58:54', '2019-04-13 12:58:54', NULL),
(16, '1', 'Assigned This DistributorAdelabu Adebayo To This OutletFoodco Idiape', '2019-04-13 20:47:18', '2019-04-13 20:47:18', NULL),
(17, '1', 'Assigned This DistributorNoble Immaculate To This OutletFoodco Idiape', '2019-04-13 20:47:48', '2019-04-13 20:47:48', NULL),
(18, '1', 'Assigned This DistributorAdelabu Adebayo To This OutletFeed Well Makola', '2019-04-13 20:54:27', '2019-04-13 20:54:27', NULL),
(19, '1', 'Added Glorious Empire To The Outlet List', '2019-04-13 20:58:08', '2019-04-13 20:58:08', NULL),
(20, '1', 'Added Cadlinks Eleyele To The Outlet List', '2019-04-13 20:59:53', '2019-04-13 20:59:53', NULL),
(21, '1', 'Assigned Politician To Cadlinks Eleyele', '2019-04-13 21:00:30', '2019-04-13 21:00:30', NULL),
(22, '1', 'Assigned Adelabu Adebayo To Cadlinks Eleyele', '2019-04-15 12:00:01', '2019-04-15 12:00:01', NULL),
(23, '1', 'You Have AddedGYwith Size 20 LitresTo Raw Material', '2019-04-15 12:53:57', '2019-04-15 12:53:57', NULL),
(24, '1', 'You Have AddedGYwith Size 20 LitresTo Raw Material', '2019-04-15 12:54:26', '2019-04-15 12:54:26', NULL),
(25, '1', 'You Have AddedGYwith Size 20 LitresTo Raw Material', '2019-04-15 12:56:03', '2019-04-15 12:56:03', NULL),
(26, '1', 'You Have AddedGYwith Size 20 LitresTo Raw Material', '2019-04-15 13:01:13', '2019-04-15 13:01:13', NULL),
(27, '1', 'You Have AddedCap seal (Small and Big)with Size NullTo Consumables', '2019-04-15 13:02:11', '2019-04-15 13:02:11', NULL),
(28, '1', 'Added Desktops To The Ware House List', '2019-04-15 16:15:01', '2019-04-15 16:15:01', NULL),
(29, '1', 'Added Desktops To The Ware House List', '2019-04-15 16:15:38', '2019-04-15 16:15:38', NULL),
(30, '1', 'Added Desktops To The Ware House List', '2019-04-15 16:16:04', '2019-04-15 16:16:04', NULL),
(31, '1', 'Added Desktops To The Ware House List', '2019-04-15 16:16:31', '2019-04-15 16:16:31', NULL),
(32, '1', 'Added Desktops To The Ware House List', '2019-04-15 16:17:39', '2019-04-15 16:17:39', NULL),
(33, '1', 'Added Politician To The Ware House List', '2019-04-15 16:28:57', '2019-04-15 16:28:57', NULL),
(34, '1', 'Added Adesina Taiwo Olajide To The Ware House List', '2019-04-15 16:29:44', '2019-04-15 16:29:44', NULL),
(35, '1', 'Added Adesina Taiwo Olajide To The Distributor List', '2019-04-18 04:50:10', '2019-04-18 04:50:10', NULL),
(36, '1', 'Added Adesina Taiwo Olajide To The Distributor List', '2019-04-18 04:55:12', '2019-04-18 04:55:12', NULL),
(37, '1', 'Added Testing To The Outlet List', '2019-04-18 13:39:34', '2019-04-18 13:39:34', NULL),
(38, '1', 'Added Adesina Kolade To The Employee List', '2019-04-19 20:18:27', '2019-04-19 20:18:27', NULL),
(39, '1', 'Added Adesina Kolade To The Employee List', '2019-04-19 20:19:40', '2019-04-19 20:19:40', NULL),
(40, '1', 'Added Goke Olamide To The Employee List', '2019-04-19 20:21:43', '2019-04-19 20:21:43', NULL),
(41, '1', 'Added Raw Material To The Category List', '2019-04-20 11:49:40', '2019-04-20 11:49:40', NULL),
(42, '1', 'Added Consumables To The Category List', '2019-04-20 11:50:00', '2019-04-20 11:50:00', NULL),
(43, '1', 'You Have AddedGYwith Size 20 LitresTo Raw Material', '2019-04-20 11:50:55', '2019-04-20 11:50:55', NULL),
(44, '1', 'You Have AddedGBwith Size 25 LitresTo Raw Material', '2019-04-20 11:55:06', '2019-04-20 11:55:06', NULL),
(45, '1', 'Added Goke Demmy To The Supplier List', '2019-04-20 11:57:37', '2019-04-20 11:57:37', NULL),
(46, '1', 'Added Goke Demmy To The Supplier List', '2019-04-20 12:01:55', '2019-04-20 12:01:55', NULL),
(47, '1', 'Added Foodco Idiape To The Outlet List', '2019-04-20 12:47:04', '2019-04-20 12:47:04', NULL),
(48, '1', 'Added Bodija branch To The Outlet List', '2019-04-20 12:47:29', '2019-04-20 12:47:29', NULL),
(49, '1', 'Added Adesina Taiwo Olajide To The Supplier List', '2019-04-20 13:04:12', '2019-04-20 13:04:12', NULL),
(50, '1', 'Added Noble Immaculate To The Supplier List', '2019-04-20 13:07:14', '2019-04-20 13:07:14', NULL),
(51, '1', 'Added Noble Immaculate To The Supplier List', '2019-04-20 13:10:49', '2019-04-20 13:10:49', NULL),
(52, '1', 'Added Politician To The Supplier List', '2019-04-20 13:11:52', '2019-04-20 13:11:52', NULL),
(53, '1', 'Added Politician To The Supplier List', '2019-04-20 13:12:16', '2019-04-20 13:12:16', NULL),
(54, '1', 'Added Testing To The Category List', '2019-04-20 14:59:28', '2019-04-20 14:59:28', NULL),
(55, '1', 'Added Feed Well Makola To The Outlet List', '2019-04-20 15:14:11', '2019-04-20 15:14:11', NULL),
(56, '1', 'Added Noble Immaculate To The Distributor List', '2019-04-20 19:04:44', '2019-04-20 19:04:44', NULL),
(57, '1', 'Added Atilola Simiyu To The Distributor List', '2019-04-21 16:25:25', '2019-04-21 16:25:25', NULL),
(58, '1', 'Added Akinola Sunday To The Supplier List', '2019-04-21 16:54:00', '2019-04-21 16:54:00', NULL),
(59, '1', 'Added Adelabu Adebayo To The Supplier List', '2019-04-21 16:59:04', '2019-04-21 16:59:04', NULL),
(60, '1', 'Added Agbeleke Folake To The Supplier List', '2019-04-21 17:01:52', '2019-04-21 17:01:52', NULL),
(61, '1', 'Added Aina ola Oluwa To The Distributor List', '2019-04-21 17:10:28', '2019-04-21 17:10:28', NULL),
(62, '1', 'Added Goke Demmy To The Distributor List', '2019-04-21 17:12:48', '2019-04-21 17:12:48', NULL),
(63, '1', 'Added Adeola Sola To The Distributor List', '2019-04-21 17:18:28', '2019-04-21 17:18:28', NULL),
(64, '1', 'Added Desktops To The Ware House List', '2019-04-21 17:45:39', '2019-04-21 17:45:39', NULL),
(65, '1', 'Added Adelabu Adebayo To The Ware House List', '2019-04-21 17:53:51', '2019-04-21 17:53:51', NULL),
(66, '1', 'Added Abolade Adenike To The Employee List', '2019-04-21 18:20:29', '2019-04-21 18:20:29', NULL),
(67, '1', 'Added gokes@gmail.com To The User List', '2019-04-21 19:18:06', '2019-04-21 19:18:06', NULL),
(68, '1', 'Added gokes@gmail.com To The User List', '2019-04-21 19:18:42', '2019-04-21 19:18:42', NULL),
(69, '1', 'Added accountant@gmail.com To The User List', '2019-04-21 19:20:47', '2019-04-21 19:20:47', NULL),
(70, '1', 'You Have AddedGYNGwith Size 20 LitresTo Raw Material', '2019-04-22 17:07:18', '2019-04-22 17:07:18', NULL),
(71, '1', 'You Have AddedGYwith Size 25 LitresTo Consumables', '2019-04-22 17:08:10', '2019-04-22 17:08:10', NULL),
(72, '1', 'You Have AddedGYwith Size 25 LitresTo Consumables', '2019-04-22 17:10:04', '2019-04-22 17:10:04', NULL),
(73, '1', 'You Have AddedGYNGwith Size 25 LitresTo Consumables', '2019-04-22 17:12:46', '2019-04-22 17:12:46', NULL),
(74, '1', 'You Have AddedGYNGwith Size 25 LitresTo Consumables', '2019-04-22 17:15:46', '2019-04-22 17:15:46', NULL),
(75, '1', 'You Have AddedGYwith Size 20 LitresTo Raw Material', '2019-04-22 17:16:13', '2019-04-22 17:16:13', NULL),
(76, '1', 'You Have AddedGYwith Size 25 LitresTo Raw Material', '2019-04-22 17:17:47', '2019-04-22 17:17:47', NULL),
(77, '1', 'You Have AddedUnidentifiedwith Size 25 LitresTo Consumables', '2019-04-22 17:19:13', '2019-04-22 17:19:13', NULL),
(78, '1', 'You Have AddedGYNGwith Size 25 LitresTo Raw Material', '2019-04-22 17:22:11', '2019-04-22 17:22:11', NULL),
(79, '1', 'You Have AddedGYNGwith Size 25 LitresTo Consumables', '2019-04-22 17:22:57', '2019-04-22 17:22:57', NULL),
(80, '1', 'Added Consumable To The Category List', '2019-04-22 17:41:36', '2019-04-22 17:41:36', NULL),
(81, '1', 'Changed The Category Name From Raw Material ToRaw Materials', '2019-04-22 17:44:20', '2019-04-22 17:44:20', NULL),
(82, '1', 'Changed The Category Name From Raw Material To Raw Materials', '2019-04-22 17:46:50', '2019-04-22 17:46:50', NULL),
(83, '1', 'Changed The Category Name From Raw Materials To Raw Material', '2019-04-22 18:25:26', '2019-04-22 18:25:26', NULL),
(84, '1', 'You Have Changed The Variant name From    To GYand Size From  20 LitresTo 20 Litres', '2019-04-22 19:25:57', '2019-04-22 19:25:57', NULL),
(85, '1', 'You Have Changed The Variant name From    To GYand Size From  20 LitresTo 20 Litres', '2019-04-22 19:26:26', '2019-04-22 19:26:26', NULL),
(86, '1', 'You Have Changed The Variant name From    To Unidentifiedand Size From  25 LitresTo 20 Litres', '2019-04-22 19:28:51', '2019-04-22 19:28:51', NULL),
(87, '1', 'You Have Changed The Variant name From  Unidentified  To Unidentifiedand Size From  20 LitresTo 25 Litres', '2019-04-22 19:32:43', '2019-04-22 19:32:43', NULL),
(88, '1', 'Added Adenike Abolade To The Employee List', '2019-04-23 12:46:06', '2019-04-23 12:46:06', NULL),
(89, '1', 'Added Testing To The Supplier List', '2019-04-23 12:57:03', '2019-04-23 12:57:03', NULL),
(90, '1', 'Added Test Two To The Supplier List', '2019-04-23 13:02:37', '2019-04-23 13:02:37', NULL),
(91, '1', 'Added casio calculator From SupplierTesting To Desktops Product List', '2019-04-23 14:42:41', '2019-04-23 14:42:41', NULL),
(92, '1', 'Added casio calculator From SupplierTesting To Desktops Product List', '2019-04-23 14:44:18', '2019-04-23 14:44:18', NULL),
(93, '1', 'Added CASIO CALCULATOR From SupplierTesting To Desktops Product List', '2019-04-23 14:48:24', '2019-04-23 14:48:24', NULL),
(94, '1', 'Added CASIO CALCULATOR From SupplierTesting To Desktops Product List', '2019-04-23 14:50:15', '2019-04-23 14:50:15', NULL),
(95, '1', 'Added Wrist Watch From SupplierTest Two To Desktops Product List', '2019-04-23 14:53:03', '2019-04-23 14:53:03', NULL),
(96, '1', 'Added test product From Supplier Test Two To  Desktops Ware House Product List', '2019-04-23 14:57:28', '2019-04-23 14:57:28', NULL),
(97, '1', 'Added test product From Supplier Test Two To  Desktops Ware House Product List', '2019-04-23 15:00:16', '2019-04-23 15:00:16', NULL),
(98, '1', 'Added Smart From Supplier Test Two To  Desktops Ware House Product List', '2019-04-23 15:05:10', '2019-04-23 15:05:10', NULL),
(99, '1', 'Added School Extra From Supplier Test Two To  Desktops Ware House Product List', '2019-04-23 15:07:44', '2019-04-23 15:07:44', NULL),
(100, '1', 'Added New Product From Supplier Test Two To  Desktops Ware House Product List', '2019-04-23 18:05:51', '2019-04-23 18:05:51', NULL),
(101, '1', 'Updated NEW PRODUCT From Supplier Test Two To  Desktops Ware House Product List', '2019-04-24 07:25:13', '2019-04-24 07:25:13', NULL),
(102, '1', 'Updated NEW PRODUCT From Supplier Test Two To  Desktops Ware House Product List', '2019-04-24 07:25:58', '2019-04-24 07:25:58', NULL),
(103, '1', 'Updated NEW PRODUCT From Supplier Test Two To  Desktops Ware House Product List', '2019-04-24 07:26:40', '2019-04-24 07:26:40', NULL),
(104, '1', 'Added edit@gmail.com To The User List', '2019-04-24 08:51:06', '2019-04-24 08:51:06', NULL),
(105, '1', 'Added edit@gmail.com To The User List', '2019-04-24 08:53:02', '2019-04-24 08:53:02', NULL),
(106, '1', 'Added tolajide75@gmail.com To The User List', '2019-04-24 09:10:57', '2019-04-24 09:10:57', NULL),
(107, '1', 'Added tolajide75@gmail.com To The User List', '2019-04-24 09:14:09', '2019-04-24 09:14:09', NULL),
(108, '1', 'Added tolajide75@gmail.com To The User List', '2019-04-24 09:16:58', '2019-04-24 09:16:58', NULL),
(109, '1', 'Added Hybrid Applications To The Category List', '2019-04-24 09:26:28', '2019-04-24 09:26:28', NULL),
(110, '1', 'Changed The Category Name From Hybrid Applications To Hybrid Application', '2019-04-24 09:32:22', '2019-04-24 09:32:22', NULL),
(111, '1', 'Added tolajide75@gmail.com To The User List', '2019-04-24 09:33:34', '2019-04-24 09:33:34', NULL),
(112, '1', 'Added folake@gmail.com To The User List', '2019-04-24 09:35:03', '2019-04-24 09:35:03', NULL),
(113, '1', 'Added hope@gmail.cm To The User List', '2019-04-24 09:42:36', '2019-04-24 09:42:36', NULL),
(114, '1', 'Added Hybrid Applications To The Category List', '2019-04-24 14:41:04', '2019-04-24 14:41:04', NULL),
(115, '1', 'Added Glorious Empire To The Outlet List', '2019-04-24 14:48:25', '2019-04-24 14:48:25', NULL),
(116, '1', 'You Have AddedCooking Gas (kg)with Size 20 LitresTo Raw Material', '2019-04-24 15:06:55', '2019-04-24 15:06:55', NULL),
(117, '1', 'Added Desktops To The Supplier List', '2019-04-24 15:32:47', '2019-04-24 15:32:47', NULL),
(118, '1', 'Added Adesina Taiwo Olajide To The Supplier List', '2019-04-24 15:34:09', '2019-04-24 15:34:09', NULL),
(119, '1', 'Added Noble Immaculate To The Supplier List', '2019-04-24 15:51:03', '2019-04-24 15:51:03', NULL),
(120, '1', 'Added Noble Immaculate To The Supplier List', '2019-04-24 15:51:48', '2019-04-24 15:51:48', NULL),
(121, '1', 'Added Desktops To The Distributor List', '2019-04-24 16:12:31', '2019-04-24 16:12:31', NULL),
(122, '1', 'Added taiwos@gmail.com To The Employee List', '2019-04-24 16:49:59', '2019-04-24 16:49:59', NULL),
(123, '1', 'Added admian@gmail.com To The Employee List', '2019-04-24 16:52:07', '2019-04-24 16:52:07', NULL),
(124, '1', 'Added Noble Immaculatem mfw To The Ware House List', '2019-04-24 17:13:11', '2019-04-24 17:13:11', NULL),
(125, '1', 'Added Adelabu Adebayo To The Supplier List', '2019-04-24 17:21:12', '2019-04-24 17:21:12', NULL),
(126, '1', 'Added  To The Supplier List', '2019-04-24 21:00:06', '2019-04-24 21:00:06', NULL),
(127, '1', 'Added  To The Supplier List', '2019-04-24 21:00:50', '2019-04-24 21:00:50', NULL),
(128, '1', 'Added  To The Supplier List', '2019-04-24 21:02:48', '2019-04-24 21:02:48', NULL),
(129, '1', 'Added  To The Supplier List', '2019-04-24 21:16:51', '2019-04-24 21:16:51', NULL),
(130, '1', 'Added  To The Supplier List', '2019-04-24 21:18:09', '2019-04-24 21:18:09', NULL),
(131, '1', 'Added  To The Supplier List', '2019-04-24 21:24:53', '2019-04-24 21:24:53', NULL),
(132, '1', 'Added  To The Supplier List', '2019-04-24 21:25:51', '2019-04-24 21:25:51', NULL),
(133, '1', 'Added  To The Supplier List', '2019-04-24 21:26:42', '2019-04-24 21:26:42', NULL),
(134, '1', 'Added  To The Supplier List', '2019-04-24 21:27:48', '2019-04-24 21:27:48', NULL),
(135, '1', 'Added  To The Supplier List', '2019-04-24 21:28:32', '2019-04-24 21:28:32', NULL),
(136, '1', 'Added  To The Supplier List', '2019-04-24 21:31:14', '2019-04-24 21:31:14', NULL),
(137, '1', 'Added  To The Supplier List', '2019-04-24 21:32:04', '2019-04-24 21:32:04', NULL),
(138, '1', 'Added  To The Supplier List', '2019-04-24 21:32:57', '2019-04-24 21:32:57', NULL),
(139, '1', 'Added  To The Supplier List', '2019-04-24 21:34:08', '2019-04-24 21:34:08', NULL),
(140, '1', 'Added  To The Supplier List', '2019-04-24 21:50:40', '2019-04-24 21:50:40', NULL),
(141, '1', 'Added  To The Supplier List', '2019-04-24 21:52:45', '2019-04-24 21:52:45', NULL),
(142, '1', 'Added  To The Supplier List', '2019-04-24 21:53:45', '2019-04-24 21:53:45', NULL),
(143, '1', 'Added  To The Supplier List', '2019-04-24 21:54:51', '2019-04-24 21:54:51', NULL),
(144, '1', 'Added  To The Supplier List', '2019-04-24 22:00:19', '2019-04-24 22:00:19', NULL),
(145, '1', 'Added  To The Supplier List', '2019-04-24 22:01:00', '2019-04-24 22:01:00', NULL),
(146, '1', 'Added  To The Supplier List', '2019-04-24 22:02:12', '2019-04-24 22:02:12', NULL),
(147, '1', 'Assigned Goke Demmy To Glorious Empire', '2019-04-24 22:48:19', '2019-04-24 22:48:19', NULL),
(148, '1', 'Added  To The Supplier List', '2019-04-25 06:03:29', '2019-04-25 06:03:29', NULL),
(149, '1', 'Added  To The Supplier List', '2019-04-25 06:08:04', '2019-04-25 06:08:04', NULL),
(150, '1', 'Added  To The Supplier List', '2019-04-25 06:10:35', '2019-04-25 06:10:35', NULL),
(151, '1', 'Added  To The Supplier List', '2019-04-25 06:11:48', '2019-04-25 06:11:48', NULL),
(152, '1', 'Added  To The Supplier List', '2019-04-25 06:12:13', '2019-04-25 06:12:13', NULL),
(153, '1', 'Added  To The Supplier List', '2019-04-25 06:38:20', '2019-04-25 06:38:20', NULL),
(154, '1', 'Added  To The Supplier List', '2019-04-25 06:39:12', '2019-04-25 06:39:12', NULL),
(155, '1', 'Added  To The Supplier List', '2019-04-25 06:39:43', '2019-04-25 06:39:43', NULL),
(156, '1', 'Added  To The Supplier List', '2019-04-25 06:40:37', '2019-04-25 06:40:37', NULL),
(157, '1', 'Added  To The Supplier List', '2019-04-25 06:41:26', '2019-04-25 06:41:26', NULL),
(158, '1', 'Added  To The Supplier List', '2019-04-25 06:43:06', '2019-04-25 06:43:06', NULL),
(159, '1', 'Added  To The Supplier List', '2019-04-25 06:44:28', '2019-04-25 06:44:28', NULL),
(160, '1', 'Added  To The Supplier List', '2019-04-25 06:44:55', '2019-04-25 06:44:55', NULL),
(161, '1', 'Added  To The Supplier List', '2019-04-25 06:48:50', '2019-04-25 06:48:50', NULL),
(162, '1', 'Added  To The Supplier List', '2019-04-25 07:34:51', '2019-04-25 07:34:51', NULL),
(163, '1', 'Added  To The Supplier List', '2019-04-25 07:36:08', '2019-04-25 07:36:08', NULL),
(164, '1', 'Added  To The Supplier List', '2019-04-25 07:37:21', '2019-04-25 07:37:21', NULL),
(165, '1', 'Added  To The Supplier List', '2019-04-25 07:38:18', '2019-04-25 07:38:18', NULL),
(166, '1', 'Changed The Category name From  Raw Material  ToRaw MaterialS', '2019-04-25 11:30:03', '2019-04-25 11:30:03', NULL),
(167, '1', 'Changed The Category name From  Raw MaterialS  ToRaw Material', '2019-04-25 11:30:23', '2019-04-25 11:30:23', NULL),
(168, '1', 'Added Politician To The Supplier List', '2019-04-25 12:03:12', '2019-04-25 12:03:12', NULL),
(169, '1', 'Changed The Supplier E-Mail From  kennys@gmail.com  Tokennys@gmail.com', '2019-04-25 12:06:48', '2019-04-25 12:06:48', NULL),
(170, '1', 'Changed The Supplier E-Mail From  kennys@gmail.com  Tokennys@gmail.com', '2019-04-25 12:11:18', '2019-04-25 12:11:18', NULL),
(171, '1', 'Added doctor@gmail.com To The Distributor List', '2019-04-25 12:50:52', '2019-04-25 12:50:52', NULL),
(172, '1', 'Changed The Distributor E-Mail From  doctor@gmail.com  Todoctor@gmail.com', '2019-04-25 13:09:48', '2019-04-25 13:09:48', NULL),
(173, '1', 'Changed The Distributor E-Mail From  doctor@gmail.com  Todoctor@gmail.com', '2019-04-25 13:11:07', '2019-04-25 13:11:07', NULL),
(174, '1', 'Added laboratory@gmail.com To The Employee List', '2019-04-25 13:22:03', '2019-04-25 13:22:03', NULL),
(175, '1', 'Changed The Employee E-Mail From  laboratory@gmail.com  Tolaboratory@gmail.com', '2019-04-25 13:44:59', '2019-04-25 13:44:59', NULL),
(176, '1', 'Changed The Employee E-Mail From  laboratory@gmail.com  Tolaboratory@gmail.com', '2019-04-25 13:45:59', '2019-04-25 13:45:59', NULL),
(177, '1', 'Added kenn3y@gmail.com To The Employee List', '2019-04-25 14:02:14', '2019-04-25 14:02:14', NULL),
(178, '1', 'Changed The Employee E-Mail From  kenn3y@gmail.com  Tokenn3y@gmail.com', '2019-04-25 14:06:52', '2019-04-25 14:06:52', NULL),
(179, '1', 'Changed The Employee E-Mail From  kenn3y@gmail.com  Tokenn3y@gmail.com', '2019-04-25 14:09:59', '2019-04-25 14:09:59', NULL),
(180, '1', 'Changed The Employee E-Mail From  kenn3y@gmail.com  Tokenn3y@gmail.com', '2019-04-25 14:11:39', '2019-04-25 14:11:39', NULL),
(181, '1', 'Added account@gmail.com To The User List', '2019-04-25 14:30:43', '2019-04-25 14:30:43', NULL),
(182, '1', 'Added account@gmail.com To The User List', '2019-04-25 14:32:10', '2019-04-25 14:32:10', NULL),
(183, '1', 'Added solaa@gmail.com To The User List', '2019-04-25 14:34:12', '2019-04-25 14:34:12', NULL),
(184, '1', 'Added solaa@gmail.com To The User List', '2019-04-25 14:36:06', '2019-04-25 14:36:06', NULL),
(185, '1', 'Added solaa@gmail.com To The User List', '2019-04-25 14:36:56', '2019-04-25 14:36:56', NULL),
(186, '1', 'Deleted account@gmail.com From The User List', '2019-04-25 14:46:53', '2019-04-25 14:46:53', NULL),
(187, '1', 'Deleted admian@gmail.com From The User List', '2019-04-25 14:49:23', '2019-04-25 14:49:23', NULL),
(188, '1', 'Deleted tolajide744@gmail.com From The User List', '2019-04-25 14:50:13', '2019-04-25 14:50:13', NULL),
(189, '1', 'Deleted kenn3y@gmail.com From The User List', '2019-04-25 14:50:31', '2019-04-25 14:50:31', NULL),
(190, '1', 'Changed User Email From From taiwos@gmail.com To taiwos@gmail.com', '2019-04-25 15:24:27', '2019-04-25 15:24:27', NULL),
(191, '1', 'Changed User Email From From taiwos@gmail.com To taiwos@gmail.com', '2019-04-25 15:24:55', '2019-04-25 15:24:55', NULL),
(192, '1', 'Changed User Email From From kennys@gmail.com To kennys@gmail.com', '2019-04-25 15:25:31', '2019-04-25 15:25:31', NULL),
(193, '1', 'Changed The Employee E-Mail From  taiwos@gmail.com  Totaiwos@gmail.com', '2019-04-25 15:32:08', '2019-04-25 15:32:08', NULL),
(194, '1', 'Added Cadlinks Eleyele House To The Outlet List', '2019-04-25 15:45:25', '2019-04-25 15:45:25', NULL),
(195, '1', 'Changed The Outlet Name From  value=  \n                To Cadlinks Eleyele House', '2019-04-25 15:46:52', '2019-04-25 15:46:52', NULL),
(196, '1', 'Changed The Outlet Name From  value=  \n                To Cadlinks Eleyele House', '2019-04-25 15:47:16', '2019-04-25 15:47:16', NULL),
(197, '1', 'Changed The Outlet Name From  Cadlinks Eleyele House  \n                To Cadlinks Eleyele', '2019-04-25 15:47:53', '2019-04-25 15:47:53', NULL),
(198, '1', 'Added Testing To The Outlet List', '2019-04-25 15:49:49', '2019-04-25 15:49:49', NULL),
(199, '1', 'Changed The Outlet Name From  Testing  \n                To Testing', '2019-04-25 15:50:12', '2019-04-25 15:50:12', NULL),
(200, '1', 'You Have UpdatedUnidentifiedwith Size 25 LitresTo Raw Material', '2019-04-25 16:03:51', '2019-04-25 16:03:51', NULL),
(201, '1', 'You Have UpdatedUnidentifiedwith Size NullTo Raw Material', '2019-04-25 16:04:13', '2019-04-25 16:04:13', NULL),
(202, '1', 'Added Glorious Emp To The Ware House List', '2019-04-25 16:25:38', '2019-04-25 16:25:38', NULL),
(203, '1', 'Added Glorious Empire To The Ware House List', '2019-04-25 16:27:09', '2019-04-25 16:27:09', NULL),
(204, '1', 'Updated  Glorious Empires  Ware House Details', '2019-04-25 16:28:15', '2019-04-25 16:28:15', NULL),
(205, '1', 'Restored   adminsss@gmail.com  To The Distributor List', '2019-04-25 21:58:55', '2019-04-25 21:58:55', NULL),
(206, '1', 'Restored   doctor@gmail.com  To The Distributor List', '2019-04-25 22:01:06', '2019-04-25 22:01:06', NULL),
(207, '1', 'Restored   admins@gmail.com  To The Supplier List', '2019-04-25 22:10:53', '2019-04-25 22:10:53', NULL),
(208, '1', 'Restored   adelasbu@gmail.com  To The Supplier List', '2019-04-25 22:11:18', '2019-04-25 22:11:18', NULL),
(209, '1', 'Restored   noblens@gmail.com  To The Supplier List', '2019-04-25 22:11:41', '2019-04-25 22:11:41', NULL),
(210, '1', 'Restored   tolajide744@gmail.com  To The User List', '2019-04-25 22:19:37', '2019-04-25 22:19:37', NULL),
(211, '1', 'Restored   account@gmail.com  To The User List', '2019-04-25 22:19:52', '2019-04-25 22:19:52', NULL),
(212, '1', 'Restored     To The Distributor List', '2019-04-25 22:30:48', '2019-04-25 22:30:48', NULL),
(213, '1', 'Restored   Glorious Empires  To The Ware House List List', '2019-04-25 22:33:20', '2019-04-25 22:33:20', NULL),
(214, '1', 'Restored   Noble Immaculatem mfw  To The Ware House List List', '2019-04-25 22:33:34', '2019-04-25 22:33:34', NULL),
(215, '1', 'Restored   Feed Well Makola  To The Outlet List', '2019-04-25 22:40:28', '2019-04-25 22:40:28', NULL),
(216, '1', 'Restored   Cadlinks Eleyele  To The Outlet List', '2019-04-25 22:40:40', '2019-04-25 22:40:40', NULL),
(217, '1', 'Restored   Testing  To The Outlet List', '2019-04-25 22:41:22', '2019-04-25 22:41:22', NULL),
(218, '1', 'Restored     To The employee List', '2019-04-25 22:49:23', '2019-04-25 22:49:23', NULL),
(219, '1', 'Restored   laboratory@gmail.com  To The employee List', '2019-04-25 22:50:30', '2019-04-25 22:50:30', NULL),
(220, '1', 'Restored   Cooking Gas (kg)  To The Variant List', '2019-04-25 22:59:13', '2019-04-25 22:59:13', NULL),
(221, '1', 'Restored   GYNG  To The Variant List', '2019-04-25 22:59:27', '2019-04-25 22:59:27', NULL),
(222, '1', 'Restored   LOGO  To The Product List', '2019-04-25 23:12:18', '2019-04-25 23:12:18', NULL),
(223, '1', 'Added  To The Supplier List', '2019-04-25 23:13:24', '2019-04-25 23:13:24', NULL),
(224, '1', 'Added  To The Supplier List', '2019-04-25 23:13:53', '2019-04-25 23:13:53', NULL),
(225, '1', 'Restored   PHONE  To The Product List', '2019-04-25 23:14:48', '2019-04-25 23:14:48', NULL),
(226, '1', 'Added Order 1CA29E92F22  For Distributor Noble Immaculate', '2019-04-27 12:48:20', '2019-04-27 12:48:20', NULL),
(227, '1', 'Added Order 0EFF0D3B43469  For Distributor Noble Immaculate', '2019-04-27 12:48:42', '2019-04-27 12:48:42', NULL),
(228, '1', 'Added Order 2DC9CCA7FAAB  For Distributor Noble Immaculate', '2019-04-27 12:49:25', '2019-04-27 12:49:25', NULL),
(229, '1', 'Added Order 3546D22E29D3  For Distributor Noble Immaculate', '2019-04-27 12:55:17', '2019-04-27 12:55:17', NULL),
(230, '1', 'Added Order 3546D22E29D3  For Distributor Noble Immaculate', '2019-04-27 12:55:22', '2019-04-27 12:55:22', NULL),
(231, '1', 'Added Order 3546D22E29D3  For Distributor Noble Immaculate', '2019-04-27 12:55:24', '2019-04-27 12:55:24', NULL),
(232, '1', 'Added Order 98FF4AEB48B6  For Distributor Adeola Sola', '2019-04-27 12:58:11', '2019-04-27 12:58:11', NULL),
(233, '1', 'Added Order 98FF4AEB48B6  For Distributor Adeola Sola', '2019-04-27 12:58:12', '2019-04-27 12:58:12', NULL),
(234, '1', 'Added Order 98FF4AEB48B6  For Distributor Adeola Sola', '2019-04-27 12:58:13', '2019-04-27 12:58:13', NULL),
(235, '1', 'Added Order 0154EC42112D  For Distributor Aina ola Oluwa', '2019-04-27 13:01:26', '2019-04-27 13:01:26', NULL),
(236, '1', 'Added Order 0154EC42112D  For Distributor Aina ola Oluwa', '2019-04-27 13:01:27', '2019-04-27 13:01:27', NULL),
(237, '1', 'Added Order 0154EC42112D  For Distributor Aina ola Oluwa', '2019-04-27 13:01:28', '2019-04-27 13:01:28', NULL),
(238, '1', 'Added Order CB10FDC72808  For Distributor Distributing', '2019-04-27 13:06:50', '2019-04-27 13:06:50', NULL),
(239, '1', 'Added Order CB10FDC72808  For Distributor Distributing', '2019-04-27 13:06:51', '2019-04-27 13:06:51', NULL),
(240, '1', 'Added Order CB10FDC72808  For Distributor Distributing', '2019-04-27 13:06:51', '2019-04-27 13:06:51', NULL),
(241, '1', 'Added Order CB10FDC72808  For Distributor Distributing', '2019-04-27 13:06:52', '2019-04-27 13:06:52', NULL),
(242, '1', 'Added Order C41E76CEFF14  For Distributor Adeola Sola', '2019-04-27 13:36:03', '2019-04-27 13:36:03', NULL),
(243, '1', 'Added Order C41E76CEFF14  For Distributor Adeola Sola', '2019-04-27 13:36:03', '2019-04-27 13:36:03', NULL),
(244, '1', 'Added Order 83A2DBC2DD11  For Distributor Adeola Sola', '2019-04-27 13:36:35', '2019-04-27 13:36:35', NULL),
(245, '1', 'Added Order 83A2DBC2DD11  For Distributor Adeola Sola', '2019-04-27 13:36:36', '2019-04-27 13:36:36', NULL),
(246, '1', 'Added Order 25CF076B0EE2  For Distributor Adeola Sola', '2019-04-27 13:37:21', '2019-04-27 13:37:21', NULL),
(247, '1', 'Added Order 25CF076B0EE2  For Distributor Adeola Sola', '2019-04-27 13:37:22', '2019-04-27 13:37:22', NULL),
(248, '1', 'Added Order B40EBB37A212  For Distributor Adeola Sola', '2019-04-27 14:02:17', '2019-04-27 14:02:17', NULL),
(249, '1', 'Added Order B40EBB37A212  For Distributor Adeola Sola', '2019-04-27 14:02:17', '2019-04-27 14:02:17', NULL),
(250, '1', 'Added Order 783A23A3CF62  For Distributor Adeola Sola', '2019-04-27 14:07:06', '2019-04-27 14:07:06', NULL),
(251, '1', 'Added Order 783A23A3CF62  For Distributor Adeola Sola', '2019-04-27 14:07:07', '2019-04-27 14:07:07', NULL),
(252, '1', 'Added Order 783A23A3CF62  For Distributor Adeola Sola', '2019-04-27 14:07:09', '2019-04-27 14:07:09', NULL),
(253, '1', 'Added Order C5E914C4A057  For Distributor Distributing', '2019-04-27 14:15:52', '2019-04-27 14:15:52', NULL),
(254, '1', 'Added Order C5E914C4A057  For Distributor Distributing', '2019-04-27 14:15:53', '2019-04-27 14:15:53', NULL),
(255, '1', 'Added Order 12DC04E21D94  For Distributor Atilola Simiyu', '2019-04-27 14:31:29', '2019-04-27 14:31:29', NULL),
(256, '1', 'Added Order 12DC04E21D94  For Distributor Atilola Simiyu', '2019-04-27 14:31:31', '2019-04-27 14:31:31', NULL),
(257, '1', 'Added Order 12DC04E21D94  For Distributor Atilola Simiyu', '2019-04-27 14:31:31', '2019-04-27 14:31:31', NULL),
(258, '1', 'Added Order D78C38AB8B15  For Distributor Atilola Simiyu', '2019-04-27 14:31:56', '2019-04-27 14:31:56', NULL),
(259, '1', 'Added Order D78C38AB8B15  For Distributor Atilola Simiyu', '2019-04-27 14:31:57', '2019-04-27 14:31:57', NULL),
(260, '1', 'Added Order D78C38AB8B15  For Distributor Atilola Simiyu', '2019-04-27 14:31:58', '2019-04-27 14:31:58', NULL),
(261, '1', 'Added Order 31CE2DFC460A  For Distributor Desktops', '2019-04-28 06:45:13', '2019-04-28 06:45:13', NULL),
(262, '1', 'Added Order 31CE2DFC460A  For Distributor Desktops', '2019-04-28 06:45:14', '2019-04-28 06:45:14', NULL),
(263, '1', 'Added Order 31CE2DFC460A  For Distributor Desktops', '2019-04-28 06:45:16', '2019-04-28 06:45:16', NULL),
(264, '1', 'Added Order 31CE2DFC460A  For Distributor Desktops', '2019-04-28 06:45:17', '2019-04-28 06:45:17', NULL),
(265, '1', 'Added edit@gmail.com To The User List', '2019-04-28 15:26:19', '2019-04-28 15:26:19', NULL),
(266, '1', 'Updated  Glorious  Ware House Details', '2019-04-28 15:27:52', '2019-04-28 15:27:52', NULL),
(267, '1', 'Updated  Glorious  Ware House Details', '2019-04-28 15:31:28', '2019-04-28 15:31:28', NULL),
(268, '1', 'Added Tita Mall To The Ware House List', '2019-04-28 16:09:01', '2019-04-28 16:09:01', NULL),
(269, '1', 'Updated  Glorious  Ware House Details', '2019-04-28 16:22:50', '2019-04-28 16:22:50', NULL),
(270, '1', 'You Have UpdatedUnidentifiedwith Size NullTo Hybrid Applications', '2019-04-28 16:32:32', '2019-04-28 16:32:32', NULL),
(271, '1', 'You Have UpdatedGYwith Size 25 LitresTo Raw Material', '2019-04-28 16:33:20', '2019-04-28 16:33:20', NULL),
(272, '1', 'Added Order 7D5267706B04  For Distributor Distributing', '2019-04-28 20:02:48', '2019-04-28 20:02:48', NULL),
(273, '1', 'Added Order 7D5267706B04  For Distributor Distributing', '2019-04-28 20:02:48', '2019-04-28 20:02:48', NULL),
(274, '1', 'Added Order 7D5267706B04  For Distributor Distributing', '2019-04-28 20:02:48', '2019-04-28 20:02:48', NULL),
(275, '1', 'Added Order 7D5267706B04  For Distributor Distributing', '2019-04-28 20:02:48', '2019-04-28 20:02:48', NULL),
(276, '1', 'Added Order 1D7ED2C39B1E  For Distributor Distributing', '2019-04-28 20:09:29', '2019-04-28 20:09:29', NULL),
(277, '1', 'Added Order 1D7ED2C39B1E  For Distributor Distributing', '2019-04-28 20:09:29', '2019-04-28 20:09:29', NULL),
(278, '1', 'Added Order 1D7ED2C39B1E  For Distributor Distributing', '2019-04-28 20:09:30', '2019-04-28 20:09:30', NULL),
(279, '1', 'Added Order 1D7ED2C39B1E  For Distributor Distributing', '2019-04-28 20:09:30', '2019-04-28 20:09:30', NULL),
(280, '1', 'Added Order 8315AC1B2308  For Distributor Distributing', '2019-04-28 20:10:59', '2019-04-28 20:10:59', NULL),
(281, '1', 'Added Order 8315AC1B2308  For Distributor Distributing', '2019-04-28 20:10:59', '2019-04-28 20:10:59', NULL),
(282, '1', 'Added Order 8315AC1B2308  For Distributor Distributing', '2019-04-28 20:10:59', '2019-04-28 20:10:59', NULL),
(283, '1', 'Added Order 8315AC1B2308  For Distributor Distributing', '2019-04-28 20:11:00', '2019-04-28 20:11:00', NULL),
(284, '1', 'Added accountant@gmail.com To The User List', '2019-04-29 06:05:58', '2019-04-29 06:05:58', NULL),
(285, '1', 'Added accountant@gmail.com To The User List', '2019-04-29 06:18:28', '2019-04-29 06:18:28', NULL),
(286, '1', 'Added editor@gmail.com To The User List', '2019-04-29 08:37:13', '2019-04-29 08:37:13', NULL),
(287, '1', 'Added receptionist@gmail.com To The User List', '2019-04-29 08:37:54', '2019-04-29 08:37:54', NULL),
(288, '1', 'Added admin@gmail.com To The User List', '2019-04-29 08:38:33', '2019-04-29 08:38:33', NULL),
(289, '1', 'Added administrator@gmail.com To The User List', '2019-04-29 08:39:12', '2019-04-29 08:39:12', NULL),
(290, '34', 'Added  To The Employee List', '2019-04-30 05:19:14', '2019-04-30 05:19:14', NULL),
(291, '34', 'Added  To The Employee List', '2019-04-30 05:27:46', '2019-04-30 05:27:46', NULL),
(292, '34', 'Added  To The Employee List', '2019-04-30 05:51:27', '2019-04-30 05:51:27', NULL),
(293, '34', 'Added  To The Employee List', '2019-04-30 05:55:18', '2019-04-30 05:55:18', NULL),
(294, '34', 'Added  To The Employee List', '2019-04-30 05:57:08', '2019-04-30 05:57:08', NULL),
(295, '34', 'Added  To The Employee List', '2019-04-30 06:00:01', '2019-04-30 06:00:01', NULL),
(296, '34', 'Added  To The Employee List', '2019-04-30 06:17:23', '2019-04-30 06:17:23', NULL),
(297, '34', 'Added  To The Employee List', '2019-04-30 06:18:52', '2019-04-30 06:18:52', NULL),
(298, '34', 'Added  To The Employee List', '2019-04-30 06:34:19', '2019-04-30 06:34:19', NULL),
(299, '34', 'Updated Payment For D78C38AB8B15', '2019-04-30 08:39:32', '2019-04-30 08:39:32', NULL),
(300, '34', 'Updated Payment For D78C38AB8B15', '2019-04-30 08:40:28', '2019-04-30 08:40:28', NULL),
(301, '34', 'Updated Payment For D78C38AB8B15', '2019-04-30 08:41:35', '2019-04-30 08:41:35', NULL),
(302, '34', 'Updated Payment For D78C38AB8B15', '2019-04-30 08:43:31', '2019-04-30 08:43:31', NULL),
(303, '34', 'Updated Payment For D78C38AB8B15', '2019-04-30 08:43:58', '2019-04-30 08:43:58', NULL),
(304, '34', 'Updated Payment For D78C38AB8B15', '2019-04-30 08:44:35', '2019-04-30 08:44:35', NULL),
(305, '34', 'Updated Payment For D78C38AB8B15', '2019-04-30 08:47:03', '2019-04-30 08:47:03', NULL),
(306, '34', 'Added Payment For 31CE2DFC460A', '2019-04-30 09:38:16', '2019-04-30 09:38:16', NULL),
(307, '34', 'Added Payment For 31CE2DFC460A', '2019-04-30 09:38:46', '2019-04-30 09:38:46', NULL),
(308, '34', 'Added Payment For 31CE2DFC460A', '2019-04-30 09:41:21', '2019-04-30 09:41:21', NULL),
(309, '34', 'Added Payment For 31CE2DFC460A', '2019-04-30 09:41:59', '2019-04-30 09:41:59', NULL),
(310, '35', 'Logged Successfully', '2019-04-30 16:01:47', '2019-04-30 16:01:47', NULL),
(311, '35', 'Login Successfully', '2019-04-30 16:02:05', '2019-04-30 16:02:05', NULL),
(312, '35', 'Logged Out Successfully', '2019-04-30 16:05:53', '2019-04-30 16:05:53', NULL),
(313, '37', 'Login Successfully', '2019-04-30 16:06:12', '2019-04-30 16:06:12', NULL),
(314, '37', 'Login Successfully', '2019-04-30 16:06:41', '2019-04-30 16:06:41', NULL),
(315, '37', 'Logged Out Successfully', '2019-04-30 16:07:54', '2019-04-30 16:07:54', NULL),
(316, '37', 'Login Successfully', '2019-04-30 16:08:06', '2019-04-30 16:08:06', NULL),
(317, '37', 'Logged Out Successfully', '2019-04-30 16:08:55', '2019-04-30 16:08:55', NULL),
(318, '34', 'Login Successfully', '2019-04-30 16:09:07', '2019-04-30 16:09:07', NULL),
(319, '34', 'Logged Out Successfully', '2019-04-30 16:12:30', '2019-04-30 16:12:30', NULL),
(320, '34', 'Login Successfully', '2019-04-30 16:12:49', '2019-04-30 16:12:49', NULL),
(321, '34', 'Logged Out Successfully', '2019-04-30 16:13:27', '2019-04-30 16:13:27', NULL),
(322, '38', 'Login Successfully', '2019-04-30 16:13:42', '2019-04-30 16:13:42', NULL),
(323, '38', 'Logged Out Successfully', '2019-04-30 16:28:43', '2019-04-30 16:28:43', NULL),
(324, '38', 'Login Successfully', '2019-04-30 16:29:13', '2019-04-30 16:29:13', NULL),
(325, '38', 'Added tolajide75@gmail.com To The User List', '2019-04-30 16:30:17', '2019-04-30 16:30:17', NULL),
(326, '38', 'Logged Out Successfully', '2019-04-30 16:30:32', '2019-04-30 16:30:32', NULL),
(327, '39', 'Login Successfully', '2019-04-30 16:30:43', '2019-04-30 16:30:43', NULL),
(328, '39', 'Login Successfully', '2019-05-01 03:56:31', '2019-05-01 03:56:31', NULL),
(329, '39', 'Logged Out Successfully', '2019-05-01 04:02:14', '2019-05-01 04:02:14', NULL),
(330, '39', 'Login Successfully', '2019-05-01 04:06:51', '2019-05-01 04:06:51', NULL),
(331, '1', 'Login Successfully', '2019-05-01 06:06:33', '2019-05-01 06:06:33', NULL),
(332, '39', 'Login Successfully', '2019-05-01 09:27:43', '2019-05-01 09:27:43', NULL),
(333, '34', 'Login Successfully', '2019-05-01 14:49:52', '2019-05-01 14:49:52', NULL),
(334, '34', 'Added Credit Payment of 8000 on \n             for Atilola Simiyu', '2019-05-01 16:04:49', '2019-05-01 16:04:49', NULL),
(335, '34', 'Added Credit Payment of 8000 on \n             for Atilola Simiyu', '2019-05-01 16:05:16', '2019-05-01 16:05:16', NULL),
(336, '34', 'Added Credit Payment of 8000 on \n            D78C38AB8B15 for Atilola Simiyu', '2019-05-01 16:10:29', '2019-05-01 16:10:29', NULL),
(337, '34', 'Added Credit Payment of 8000 on \n            D78C38AB8B15 for Atilola Simiyu', '2019-05-01 16:44:08', '2019-05-01 16:44:08', NULL),
(338, '34', 'Login Successfully', '2019-05-02 04:22:45', '2019-05-02 04:22:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_outlets`
--

CREATE TABLE `assign_outlets` (
  `assign_id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_outlets`
--

INSERT INTO `assign_outlets` (`assign_id`, `outlet_id`, `distributor_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2019-04-13 20:47:18', '2019-04-13 20:47:18', NULL),
(2, 1, 1, '2019-04-13 20:47:49', '2019-04-13 20:47:49', NULL),
(3, 2, 5, '2019-04-13 20:54:27', '2019-04-13 20:54:27', NULL),
(4, 4, 3, '2019-04-13 21:00:31', '2019-04-13 21:00:31', NULL),
(5, 4, 3, '2019-04-15 12:00:02', '2019-04-15 12:00:02', NULL),
(6, 4, 5, '2019-04-24 22:48:20', '2019-04-24 22:48:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Raw Material', '2019-04-25 11:30:23', '2019-04-20 11:49:40', NULL),
(2, 'Consumables', '2019-04-20 11:50:00', '2019-04-20 11:50:00', NULL),
(3, 'Testing', '2019-05-01 09:28:34', '2019-04-20 14:59:28', '2019-05-01 10:28:34'),
(4, 'Consumable', '2019-04-25 21:46:57', '2019-04-22 17:41:37', NULL),
(5, 'Raw Materials', '2019-04-22 17:46:08', '2019-04-22 17:44:20', '2019-04-22 18:46:08'),
(6, 'Hybrid Application', '2019-04-24 09:32:41', '2019-04-24 09:26:28', '2019-04-24 10:32:41'),
(7, 'Hybrid Applications', '2019-04-25 22:57:34', '2019-04-24 14:41:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `credit_managements`
--

CREATE TABLE `credit_managements` (
  `credit_id` int(255) NOT NULL,
  `payment_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distributor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ware_house_id` int(255) NOT NULL,
  `paid_status` int(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_managements`
--

INSERT INTO `credit_managements` (`credit_id`, `payment_number`, `distributor_id`, `credit_amount`, `ware_house_id`, `paid_status`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'D78C38AB8B15', '3', '8000', 1, 1, '2019-05-01 16:44:08', '2019-04-30 06:34:19', NULL),
(2, '31CE2DFC460A', '7', '0', 6, 0, '2019-04-30 09:41:59', '2019-04-30 09:41:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `credit_payments`
--

CREATE TABLE `credit_payments` (
  `pay_id` bigint(20) UNSIGNED NOT NULL,
  `credit_id` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `payment_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distributor_id` int(255) NOT NULL,
  `ware_house_id` int(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credit_payments`
--

INSERT INTO `credit_payments` (`pay_id`, `credit_id`, `amount_paid`, `payment_number`, `distributor_id`, `ware_house_id`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 1, 8000, 'D78C38AB8B15', 3, 1, '2019-05-01 16:10:30', '2019-05-01 16:10:30', NULL),
(2, 1, 8000, 'D78C38AB8B15', 3, 1, '2019-05-01 16:44:08', '2019-05-01 16:44:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `distributors`
--

CREATE TABLE `distributors` (
  `distributor_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_one` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_two` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_limit` int(11) NOT NULL,
  `credit_reduction_per_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributors`
--

INSERT INTO `distributors` (`distributor_id`, `name`, `phone_one`, `phone_two`, `email`, `address`, `credit_limit`, `credit_reduction_per_month`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Noble Immaculate', '08124657688', '09086474655', '', 'inuwirgsncuerwadihcsduaerh gcuizsrcbtr cusier', 10000, '1000', '2019-04-20 19:04:44', '2019-04-20 19:04:44', NULL),
(3, 'Atilola Simiyu', '09074746443', '08076468533', '', 'Fola', 10000, '1000', '2019-04-25 22:30:48', '2019-04-21 16:25:25', NULL),
(4, 'Aina ola Oluwa', '0908463738', '09085747383', 'aina@gmail.com', 'Akinola Estate', 10000, '1000', '2019-04-21 17:10:28', '2019-04-21 17:10:28', NULL),
(5, 'Goke Demmy', '09084764737', '09085758748', 'demi@gmail.com', 'Lagos High Land', 1090990, '1000', '2019-04-21 17:12:47', '2019-04-21 17:12:47', NULL),
(6, 'Adeola Sola', '090807777', '090575757', 'solad@gmail.com', 'Alafia Institute', 10000, '1000', '2019-04-21 17:18:28', '2019-04-21 17:18:28', NULL),
(7, 'Desktops', '09084743244', '08964643433', 'adminsss@gmail.com', 'Home Address', 1000, '10000', '2019-04-25 21:58:55', '2019-04-24 16:12:31', NULL),
(8, 'Distributing', '08083636733', '0908463633', 'doctor@gmail.com', 'New Estate', 1000, '100', '2019-04-25 22:01:06', '2019-04-25 12:50:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `full_name`, `address`, `phone_number`, `contract_type`, `email`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Adesina Kolade', 'Housing Esttate', '09086674637', 'Temporary', '', '2019-04-25 22:49:23', '2019-04-19 20:19:40', NULL),
(2, 'Goke Olamide', 'Lagos Highland', '01846927787', 'Contract', '', '2019-04-19 20:28:36', '2019-04-19 20:21:44', '2019-04-19 21:28:36'),
(3, 'Abolade Adenike', 'mfih ngvsygafadoihk', '09085848049', 'Contract Staff', '', '2019-04-21 18:46:28', '2019-04-21 18:20:30', '2019-04-21 19:46:28'),
(4, 'Adenike Abolade', 'hjiubyuyinyuy', '09038363277', 'Temporary Staff', '', '2019-04-23 12:46:06', '2019-04-23 12:46:06', NULL),
(5, 'Olajide Taiwo', 'kgdafn iufgidvsoji', '09084763771', 'Temporary Staff', 'taiwos@gmail.com', '2019-04-24 16:49:59', '2019-04-24 16:49:59', NULL),
(6, 'Testingf dkmd', 'kfdansihfundcsrewh', '0909746477', 'Permanant Staff', 'admian@gmail.com', '2019-04-24 16:52:07', '2019-04-24 16:52:07', NULL),
(7, 'Employeeskgjb jhkgbi', 'klfmsdn', '09087636363', 'Temporary Staff', 'laboratory@gmail.com', '2019-04-25 22:50:30', '2019-04-25 13:22:03', NULL),
(8, 'Adesina Kolade', 'nhyfyub7ing uj', '09087768667', 'Temporary Staff', 'kenn3y@gmail.com', '2019-04-25 14:02:14', '2019-04-25 14:02:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_stocks`
--

CREATE TABLE `inventory_stocks` (
  `stock_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(255) NOT NULL,
  `ware_house_id` int(255) NOT NULL,
  `variant_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_stocks`
--

INSERT INTO `inventory_stocks` (`stock_id`, `product_name`, `supplier_id`, `ware_house_id`, `variant_id`, `category_id`, `quantity`, `deleted_at`, `updated_at`, `created_at`) VALUES
(1, 'CASIO CALCULATOR', 1, 1, 2, 1, 20, NULL, '2019-04-25 06:08:04', '2019-04-25 06:08:04'),
(2, 'CASIO CALCULATOR', 1, 1, 2, 1, 494, NULL, '2019-04-25 06:10:35', '2019-04-25 06:10:35'),
(3, 'SCHOOL EXTRA', 2, 1, 6, 2, 0, NULL, '2019-04-25 06:11:47', '2019-04-25 06:11:47'),
(4, 'SCHOOL EXTRA', 2, 1, 6, 2, -2, NULL, '2019-04-25 06:12:13', '2019-04-25 06:12:13'),
(8, 'NOVEL', 1, 1, 2, 1, -5, NULL, '2019-04-25 06:40:37', '2019-04-25 06:40:37'),
(9, 'LOGO', 1, 1, 2, 1, -3, NULL, '2019-04-25 06:44:28', '2019-04-25 06:44:28'),
(10, 'PHONE', 1, 1, 1, 2, 79, NULL, '2019-04-25 23:13:23', '2019-04-25 23:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_08_143418_create_outlets_table', 1),
(4, '2019_04_08_144117_create_suppliers_table', 1),
(5, '2019_04_08_144314_create_distributors_table', 1),
(6, '2019_04_08_144513_create_products_table', 1),
(7, '2019_04_08_145017_create_orders_table', 1),
(8, '2019_04_08_145234_create_customers_table', 1),
(9, '2019_04_08_145741_create_employees_table', 1),
(10, '2019_04_08_150220_create_ware_house_managements_table', 1),
(11, '2019_04_08_151419_create_product_variants_table', 1),
(12, '2019_04_08_151907_create_account_managements_table', 1),
(13, '2019_04_08_152058_create_inventory_stocks_table', 1),
(14, '2019_04_08_152304_create_sales_table', 1),
(15, '2019_04_08_152432_create_user_roles_table', 1),
(16, '2019_04_09_034032_create_categories_table', 1),
(17, '2019_04_09_042654_create_activity_logs_table', 2),
(18, '2019_04_09_044501_add_category_id_to_products', 3),
(19, '2019_04_10_161600_create_permission_tables', 4),
(20, '2019_04_13_121032_add_status_to_users', 5),
(21, '2019_04_13_163904_create_assign_outlets_table', 6),
(22, '2019_04_17_172658_add_deleted_at_to_suppliers', 7),
(23, '2019_04_22_093307_add_email_verified_at_to_users', 8),
(24, '2019_04_27_064737_create_payments_table', 9),
(25, '2019_04_27_065322_create_credit_managements_table', 9),
(26, '2019_04_27_151937_create_order_details_table', 10),
(27, '2019_05_01_161158_create_credit_payments_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(5, 'App\\User', '0'),
(5, 'App\\User', '1'),
(6, 'App\\User', '0'),
(6, 'App\\User', '1'),
(7, 'App\\User', '0'),
(7, 'App\\User', '1'),
(8, 'App\\User', '0'),
(8, 'App\\User', '1'),
(9, 'App\\User', '1'),
(10, 'App\\User', '0'),
(10, 'App\\User', '1'),
(11, 'App\\User', '0'),
(11, 'App\\User', '1'),
(12, 'App\\User', '0'),
(12, 'App\\User', '1'),
(13, 'App\\User', '0'),
(13, 'App\\User', '1'),
(15, 'App\\User', '0'),
(15, 'App\\User', '1'),
(16, 'App\\User', '0'),
(16, 'App\\User', '1'),
(17, 'App\\User', '0'),
(17, 'App\\User', '1'),
(18, 'App\\User', '0'),
(18, 'App\\User', '1'),
(19, 'App\\User', '0'),
(19, 'App\\User', '1'),
(20, 'App\\User', '0'),
(20, 'App\\User', '1'),
(21, 'App\\User', '0'),
(21, 'App\\User', '1'),
(22, 'App\\User', '0'),
(22, 'App\\User', '1'),
(23, 'App\\User', '0'),
(23, 'App\\User', '1'),
(24, 'App\\User', '0'),
(24, 'App\\User', '1'),
(25, 'App\\User', '0'),
(25, 'App\\User', '1'),
(26, 'App\\User', '0'),
(26, 'App\\User', '1'),
(27, 'App\\User', '0'),
(27, 'App\\User', '1'),
(28, 'App\\User', '0'),
(28, 'App\\User', '1'),
(34, 'App\\User', '0'),
(34, 'App\\User', '1'),
(35, 'App\\User', '0'),
(35, 'App\\User', '1'),
(36, 'App\\User', '0'),
(36, 'App\\User', '1'),
(37, 'App\\User', '0'),
(37, 'App\\User', '1'),
(38, 'App\\User', '0'),
(38, 'App\\User', '1'),
(39, 'App\\User', '0'),
(39, 'App\\User', '1'),
(40, 'App\\User', '0'),
(40, 'App\\User', '1'),
(41, 'App\\User', '0'),
(41, 'App\\User', '1'),
(42, 'App\\User', '0'),
(42, 'App\\User', '1'),
(43, 'App\\User', '0'),
(43, 'App\\User', '1'),
(44, 'App\\User', '0'),
(44, 'App\\User', '1'),
(45, 'App\\User', '0'),
(45, 'App\\User', '1'),
(46, 'App\\User', '0'),
(46, 'App\\User', '1'),
(47, 'App\\User', '0'),
(47, 'App\\User', '1'),
(48, 'App\\User', '0'),
(48, 'App\\User', '1'),
(49, 'App\\User', '0'),
(49, 'App\\User', '1'),
(51, 'App\\User', '0'),
(51, 'App\\User', '1'),
(52, 'App\\User', '0'),
(52, 'App\\User', '1'),
(53, 'App\\User', '0'),
(53, 'App\\User', '1'),
(54, 'App\\User', '0'),
(54, 'App\\User', '1'),
(59, 'App\\User', '1'),
(70, 'App\\User', '1'),
(71, 'App\\User', '1'),
(72, 'App\\User', '34');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 0),
(1, 'App\\User', 1),
(1, 'App\\User', 33),
(1, 'App\\User', 38),
(1, 'App\\User', 39),
(2, 'App\\User', 24),
(2, 'App\\User', 28),
(2, 'App\\User', 35),
(3, 'App\\User', 29),
(3, 'App\\User', 36),
(4, 'App\\User', 7),
(4, 'App\\User', 8),
(4, 'App\\User', 12),
(4, 'App\\User', 13),
(4, 'App\\User', 19),
(4, 'App\\User', 20),
(4, 'App\\User', 25),
(5, 'App\\User', 9),
(5, 'App\\User', 18),
(5, 'App\\User', 21),
(6, 'App\\User', 28),
(6, 'App\\User', 33),
(6, 'App\\User', 34),
(7, 'App\\User', 23),
(7, 'App\\User', 28),
(7, 'App\\User', 37);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `stock_id` int(191) NOT NULL,
  `quantity` int(11) NOT NULL,
  `transaction_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distributor_id` int(191) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `stock_id`, `quantity`, `transaction_number`, `unit_amount`, `total_amount`, `distributor_id`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 8, 5, '0154EC42112D', '1000', '100000', 4, '2019-04-27 13:01:27', '2019-04-27 13:01:27', NULL),
(2, 9, 11, '0154EC42112D', '1000', '220000', 4, '2019-04-27 13:01:27', '2019-04-27 13:01:27', NULL),
(3, 10, 1, '0154EC42112D', '1000', '20000', 4, '2019-04-27 13:01:28', '2019-04-27 13:01:28', NULL),
(4, 4, 2, 'CB10FDC72808', '1000', '24000', 8, '2019-04-27 13:06:50', '2019-04-27 13:06:50', NULL),
(5, 8, 5, 'CB10FDC72808', '1000', '100000', 8, '2019-04-27 13:06:51', '2019-04-27 13:06:51', NULL),
(6, 9, 10, 'CB10FDC72808', '1000', '200000', 8, '2019-04-27 13:06:51', '2019-04-27 13:06:51', NULL),
(7, 10, 1, 'CB10FDC72808', '1000', '20000', 8, '2019-04-27 13:06:52', '2019-04-27 13:06:52', NULL),
(8, 8, 6, 'C41E76CEFF14', '1000', '120000', 6, '2019-04-27 13:36:03', '2019-04-27 13:36:03', NULL),
(9, 9, 3, 'C41E76CEFF14', '1000', '60000', 6, '2019-04-27 13:36:03', '2019-04-27 13:36:03', NULL),
(10, 8, 6, '83A2DBC2DD11', '1000', '120000', 6, '2019-04-27 13:36:35', '2019-04-27 13:36:35', NULL),
(11, 9, 3, '83A2DBC2DD11', '1000', '60000', 6, '2019-04-27 13:36:36', '2019-04-27 13:36:36', NULL),
(12, 8, 6, '25CF076B0EE2', '1000', '120000', 6, '2019-04-27 13:37:21', '2019-04-27 13:37:21', NULL),
(13, 9, 3, '25CF076B0EE2', '1000', '60000', 6, '2019-04-27 13:37:23', '2019-04-27 13:37:23', NULL),
(14, 8, 6, 'B40EBB37A212', '1000', '120000', 6, '2019-04-27 14:02:17', '2019-04-27 14:02:17', NULL),
(15, 9, 3, 'B40EBB37A212', '1000', '60000', 6, '2019-04-27 14:02:17', '2019-04-27 14:02:17', NULL),
(16, 3, 2, '783A23A3CF62', '1000', '24000', 6, '2019-04-27 14:07:06', '2019-04-27 14:07:06', NULL),
(17, 4, 1, '783A23A3CF62', '1000', '12000', 6, '2019-04-27 14:07:08', '2019-04-27 14:07:08', NULL),
(18, 8, 4, '783A23A3CF62', '1000', '80000', 6, '2019-04-27 14:07:09', '2019-04-27 14:07:09', NULL),
(19, 9, 15, 'C5E914C4A057', '1000', '300000', 8, '2019-04-27 14:15:52', '2019-04-27 14:15:52', NULL),
(20, 10, 11, 'C5E914C4A057', '1000', '220000', 8, '2019-04-27 14:15:54', '2019-04-27 14:15:54', NULL),
(21, 4, 4, '12DC04E21D94', '1000', '48000', 3, '2019-04-27 14:31:30', '2019-04-27 14:31:30', NULL),
(22, 8, 10, '12DC04E21D94', '1000', '200000', 3, '2019-04-27 14:31:31', '2019-04-27 14:31:31', NULL),
(23, 9, 12, '12DC04E21D94', '1000', '240000', 3, '2019-04-27 14:31:31', '2019-04-27 14:31:31', NULL),
(24, 4, 4, 'D78C38AB8B15', '1000', '48000', 3, '2019-04-27 14:31:56', '2019-04-27 14:31:56', NULL),
(25, 8, 10, 'D78C38AB8B15', '1000', '200000', 3, '2019-04-27 14:31:57', '2019-04-27 14:31:57', NULL),
(26, 9, 12, 'D78C38AB8B15', '1000', '240000', 3, '2019-04-27 14:31:58', '2019-04-27 14:31:58', NULL),
(27, 4, 5, '31CE2DFC460A', '1000', '60000', 7, '2019-04-28 06:45:14', '2019-04-28 06:45:14', NULL),
(28, 8, 9, '31CE2DFC460A', '1000', '180000', 7, '2019-04-28 06:45:15', '2019-04-28 06:45:15', NULL),
(29, 9, 5, '31CE2DFC460A', '1000', '100000', 7, '2019-04-28 06:45:16', '2019-04-28 06:45:16', NULL),
(30, 10, 10, '31CE2DFC460A', '1000', '200000', 7, '2019-04-28 06:45:17', '2019-04-28 06:45:17', NULL),
(31, 2, 2, '7D5267706B04', '1000', '24000', 8, '2019-04-28 20:02:48', '2019-04-28 20:02:48', NULL),
(32, 4, 3, '7D5267706B04', '1000', '36000', 8, '2019-04-28 20:02:48', '2019-04-28 20:02:48', NULL),
(33, 8, 3, '7D5267706B04', '1000', '60000', 8, '2019-04-28 20:02:48', '2019-04-28 20:02:48', NULL),
(34, 9, 13, '7D5267706B04', '1000', '260000', 8, '2019-04-28 20:02:49', '2019-04-28 20:02:49', NULL),
(35, 2, 2, '1D7ED2C39B1E', '1000', '24000', 8, '2019-04-28 20:09:29', '2019-04-28 20:09:29', NULL),
(36, 4, 3, '1D7ED2C39B1E', '1000', '36000', 8, '2019-04-28 20:09:30', '2019-04-28 20:09:30', NULL),
(37, 8, 3, '1D7ED2C39B1E', '1000', '60000', 8, '2019-04-28 20:09:30', '2019-04-28 20:09:30', NULL),
(38, 9, 13, '1D7ED2C39B1E', '1000', '260000', 8, '2019-04-28 20:09:30', '2019-04-28 20:09:30', NULL),
(39, 2, 2, '8315AC1B2308', '1000', '24000', 8, '2019-04-28 20:10:59', '2019-04-28 20:10:59', NULL),
(40, 4, 3, '8315AC1B2308', '1000', '36000', 8, '2019-04-28 20:10:59', '2019-04-28 20:10:59', NULL),
(41, 8, 3, '8315AC1B2308', '1000', '60000', 8, '2019-04-28 20:10:59', '2019-04-28 20:10:59', NULL),
(42, 9, 13, '8315AC1B2308', '1000', '260000', 8, '2019-04-28 20:11:00', '2019-04-28 20:11:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `details_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distributor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ware_house_id` int(255) NOT NULL,
  `order_status` int(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`details_id`, `transaction_number`, `distributor_id`, `invoice_number`, `ware_house_id`, `order_status`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'D78C38AB8B15', '3', 'FD45BGDS', 1, 1, '2019-04-27 14:31:59', '2019-04-27 14:31:59', NULL),
(2, '31CE2DFC460A', '7', 'E702BC', 6, 1, '2019-04-28 06:45:18', '2019-04-28 06:45:18', NULL),
(3, '8315AC1B2308', '8', '1A8F72', 1, 0, '2019-04-28 20:11:00', '2019-04-28 20:11:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `outlet_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`outlet_id`, `outlet_name`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Foodco Idiape', '2019-04-20 12:47:04', '2019-04-20 12:47:04', NULL),
(2, 'Bodija branch', '2019-04-20 12:47:29', '2019-04-20 12:47:29', NULL),
(3, 'Feed Well Makola', '2019-04-25 22:40:28', '2019-04-20 15:14:11', NULL),
(4, 'Glorious Empire', '2019-04-24 14:48:26', '2019-04-24 14:48:26', NULL),
(5, 'Cadlinks Eleyele', '2019-04-25 22:40:40', '2019-04-25 15:45:26', NULL),
(6, 'Testing', '2019-04-25 22:41:22', '2019-04-25 15:49:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tolajide75@gmail.com', '$2y$10$f.yQ5694Clbk6Khl/5SwfuNF.G/cDCbpPJG8tBYSuoehVcoQ.dWLG', '2019-05-01 09:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `details_id` int(255) NOT NULL,
  `distributor_id` int(255) NOT NULL,
  `total_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ware_house_id` int(255) NOT NULL,
  `paid_status` int(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `details_id`, `distributor_id`, `total_amount`, `paid_amount`, `credit`, `payment_number`, `ware_house_id`, `paid_status`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 1, 3, '488000', '480000', '8000', 'D78C38AB8B15', 1, 1, '2019-04-30 08:47:03', '2019-04-30 06:34:19', NULL),
(4, 2, 7, '540000', '540000', '0', '31CE2DFC460A', 6, 1, '2019-04-30 09:41:59', '2019-04-30 09:41:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2019-04-10 15:37:35', '2019-04-10 15:37:35'),
(2, 'role-create', 'web', '2019-04-10 15:37:36', '2019-04-10 15:37:36'),
(3, 'role-edit', 'web', '2019-04-10 15:37:36', '2019-04-10 15:37:36'),
(4, 'role-delete', 'web', '2019-04-10 15:37:36', '2019-04-10 15:37:36'),
(5, 'product-update', 'web', '2019-04-10 15:37:37', '2019-04-10 15:37:37'),
(6, 'product-create', 'web', '2019-04-10 15:37:39', '2019-04-10 15:37:39'),
(7, 'product-edit', 'web', '2019-04-10 15:37:40', '2019-04-10 15:37:40'),
(8, 'product-delete', 'web', '2019-04-10 15:37:41', '2019-04-10 15:37:41'),
(9, 'category-create', 'web', '2019-04-10 15:37:43', '2019-04-10 15:37:43'),
(10, 'category-edit', 'web', '2019-04-10 15:37:45', '2019-04-10 15:37:45'),
(11, 'category-delete', 'web', '2019-04-10 15:37:47', '2019-04-10 15:37:47'),
(12, 'category-update', 'web', '2019-04-10 15:37:48', '2019-04-10 15:37:48'),
(13, 'variant-create', 'web', '2019-04-10 15:37:49', '2019-04-10 15:37:49'),
(14, 'variant-edit', 'web', '2019-04-10 15:37:50', '2019-04-10 15:37:50'),
(15, 'variant-delete', 'web', '2019-04-10 15:37:50', '2019-04-10 15:37:50'),
(16, 'variant-update', 'web', '2019-04-10 15:37:50', '2019-04-10 15:37:50'),
(17, 'distributor-create', 'web', '2019-04-10 15:37:51', '2019-04-10 15:37:51'),
(18, 'distributor-edit', 'web', '2019-04-10 15:37:51', '2019-04-10 15:37:51'),
(19, 'distributor-delete', 'web', '2019-04-10 15:37:51', '2019-04-10 15:37:51'),
(20, 'distributor-update', 'web', '2019-04-10 15:37:52', '2019-04-10 15:37:52'),
(21, 'supplier-create', 'web', '2019-04-10 15:37:53', '2019-04-10 15:37:53'),
(22, 'supplier-edit', 'web', '2019-04-10 15:37:53', '2019-04-10 15:37:53'),
(23, 'supplier-delete', 'web', '2019-04-10 15:37:53', '2019-04-10 15:37:53'),
(24, 'supplier-update', 'web', '2019-04-10 15:37:53', '2019-04-10 15:37:53'),
(25, 'outlet-create', 'web', '2019-04-10 15:37:54', '2019-04-10 15:37:54'),
(26, 'outlet-edit', 'web', '2019-04-10 15:37:54', '2019-04-10 15:37:54'),
(27, 'outlet-delete', 'web', '2019-04-10 15:37:54', '2019-04-10 15:37:54'),
(28, 'outlet-update', 'web', '2019-04-10 15:37:54', '2019-04-10 15:37:54'),
(29, 'order-create', 'web', '2019-04-10 15:37:55', '2019-04-10 15:37:55'),
(30, 'order-edit', 'web', '2019-04-10 15:37:56', '2019-04-10 15:37:56'),
(31, 'order-delete', 'web', '2019-04-10 15:37:56', '2019-04-10 15:37:56'),
(32, 'order-update', 'web', '2019-04-10 15:37:56', '2019-04-10 15:37:56'),
(34, 'warehouse-create', 'web', '2019-04-15 14:50:01', '2019-04-15 14:50:01'),
(35, 'warehouse-edit', 'web', '2019-04-15 14:50:58', '2019-04-15 14:50:58'),
(36, 'warehouse-update', 'web', '2019-04-15 14:52:52', '2019-04-15 14:52:52'),
(37, 'warehouse-delete', 'web', '2019-04-15 14:53:16', '2019-04-15 14:53:16'),
(38, 'employee-create', 'web', '2019-04-19 10:16:54', '2019-04-19 10:16:54'),
(39, 'employee-delete', 'web', '2019-04-19 10:17:15', '2019-04-19 10:17:15'),
(40, 'employee-edit', 'web', '2019-04-19 20:15:35', '2019-04-19 20:15:35'),
(41, 'employee-update', 'web', '2019-04-19 20:16:43', '2019-04-19 20:16:43'),
(42, 'user-create', 'web', '2019-04-20 11:44:46', '2019-04-20 11:44:46'),
(43, 'user-delete', 'web', '2019-04-20 11:45:10', '2019-04-20 11:45:10'),
(44, 'user-update', 'web', '2019-04-20 11:45:46', '2019-04-20 11:45:46'),
(45, 'user-edit', 'web', '2019-04-20 11:46:04', '2019-04-20 11:46:04'),
(46, 'salary-create', 'web', '2019-04-20 11:48:05', '2019-04-20 11:48:05'),
(47, 'salary-delete', 'web', '2019-04-20 11:48:27', '2019-04-20 11:48:27'),
(48, 'salary-update', 'web', '2019-04-20 11:48:49', '2019-04-20 11:48:49'),
(49, 'salary-edit', 'web', '2019-04-20 11:49:11', '2019-04-20 11:49:11'),
(50, 'product-update', 'web', '2019-04-24 07:13:45', '2019-04-24 07:13:45'),
(51, 'account-delete', 'web', '2019-04-24 08:05:29', '2019-04-24 08:05:29'),
(52, 'account-create', 'web', '2019-04-24 08:12:32', '2019-04-24 08:12:32'),
(53, 'account-update', 'web', '2019-04-24 08:14:39', '2019-04-24 08:14:39'),
(54, 'account-edit', 'web', '2019-04-24 08:15:08', '2019-04-24 08:15:08'),
(55, 'sales-create', 'web', '2019-04-24 08:23:45', '2019-04-24 08:23:45'),
(56, 'sales-edit', 'web', '2019-04-24 08:24:15', '2019-04-24 08:24:15'),
(57, 'sales-update', 'web', '2019-04-24 08:24:40', '2019-04-24 08:24:40'),
(58, 'sales-delete', 'web', '2019-04-24 08:32:32', '2019-04-24 08:32:32'),
(59, 'category-restore', 'web', '2019-04-25 21:30:49', '2019-04-25 21:30:49'),
(60, 'product-restore', 'web', '2019-04-27 06:59:42', '2019-04-27 06:59:42'),
(61, 'variant-restore', 'web', '2019-04-27 07:00:04', '2019-04-27 07:00:04'),
(62, 'distributor-restore', 'web', '2019-04-27 07:00:25', '2019-04-27 07:00:25'),
(63, 'supplier-restore', 'web', '2019-04-27 07:00:47', '2019-04-27 07:00:47'),
(64, 'outlet-restore', 'web', '2019-04-27 07:01:11', '2019-04-27 07:01:11'),
(65, 'warehouse-restore', 'web', '2019-04-27 07:01:42', '2019-04-27 07:01:42'),
(66, 'employee-restore', 'web', '2019-04-27 07:02:04', '2019-04-27 07:02:04'),
(67, 'user-restore', 'web', '2019-04-27 07:02:42', '2019-04-27 07:02:42'),
(68, 'salary-restore', 'web', '2019-04-27 07:03:13', '2019-04-27 07:03:13'),
(69, 'account-restore', 'web', '2019-04-27 07:03:29', '2019-04-27 07:03:29'),
(70, 'order-invoice', 'web', '2019-04-27 13:16:28', '2019-04-27 13:16:28'),
(71, 'print-invoice', 'web', '2019-04-27 15:03:40', '2019-04-27 15:03:40'),
(72, 'payment-create', 'web', '2019-04-30 05:00:58', '2019-04-30 05:00:58'),
(73, 'payment-edit', 'web', '2019-04-30 05:01:22', '2019-04-30 05:01:22'),
(74, 'payment-update', 'web', '2019-04-30 05:01:44', '2019-04-30 05:01:44'),
(75, 'payment-delete', 'web', '2019-04-30 05:02:04', '2019-04-30 05:02:04'),
(76, 'payment-restore', 'web', '2019-04-30 05:02:15', '2019-04-30 05:02:15'),
(77, 'assign-restore', 'web', '2019-04-30 15:31:18', '2019-04-30 15:31:18'),
(78, 'assign-create', 'web', '2019-04-30 15:31:34', '2019-04-30 15:31:34'),
(79, 'assign-edit', 'web', '2019-04-30 15:31:46', '2019-04-30 15:31:46'),
(80, 'assign-update', 'web', '2019-04-30 15:32:00', '2019-04-30 15:32:00'),
(81, 'assign-delete', 'web', '2019-04-30 15:32:18', '2019-04-30 15:32:18'),
(82, 'credit-payment', 'web', '2019-05-01 15:45:42', '2019-05-01 15:45:42'),
(83, 'credit-payment-edit', 'web', '2019-05-01 15:46:35', '2019-05-01 15:46:35'),
(84, 'credit-payment-update', 'web', '2019-05-01 15:47:03', '2019-05-01 15:47:03'),
(85, 'credit-payment-delete', 'web', '2019-05-01 15:47:31', '2019-05-01 15:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `ware_house_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_slug`, `supplier_id`, `variant_id`, `amount`, `quantity`, `ware_house_id`, `category_id`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'CASIO CALCULATOR', 'casio-calculator-899', 1, 2, 6500, 20, 1, 1, '2019-04-25 06:08:04', '2019-04-25 06:08:04', NULL),
(2, 'CASIO CALCULATOR', 'casio-calculator-1798', 1, 2, 12000, 500, 1, 1, '2019-04-25 06:10:35', '2019-04-25 06:10:35', NULL),
(3, 'SCHOOL EXTRA', 'school-extra-545', 2, 6, 12000, 2, 1, 2, '2019-04-25 06:11:48', '2019-04-25 06:11:48', NULL),
(4, 'SCHOOL EXTRA', 'school-extra-1011', 2, 6, 12000, 3, 1, 2, '2019-04-25 06:12:13', '2019-04-25 06:12:13', NULL),
(5, 'NOVEL', 'novel-1531', 1, 3, 15000, 3, 1, 1, '2019-04-25 06:38:20', '2019-04-25 06:38:20', NULL),
(6, 'NOVEL', 'novel-1340', 1, 2, 20000, 2, 6, 1, '2019-04-25 06:39:12', '2019-04-25 06:39:12', NULL),
(7, 'NOVEL', 'novel-1394', 1, 2, 20000, 2, 1, 1, '2019-04-25 06:39:43', '2019-04-25 06:39:43', NULL),
(8, 'NOVEL', 'novel-1197', 1, 2, 20000, 16, 1, 1, '2019-04-25 06:40:38', '2019-04-25 06:40:38', NULL),
(9, 'NOVEL', 'novel-1351', 1, 2, 20000, 16, 6, 1, '2019-04-25 06:41:26', '2019-04-25 06:41:26', NULL),
(10, 'NOVEL', 'novel-1051', 1, 2, 20000, 160, 1, 1, '2019-04-25 06:43:06', '2019-04-25 06:43:06', NULL),
(11, 'LOGO', 'logo-976', 1, 2, 20000, 2, 1, 1, '2019-04-25 06:44:28', '2019-04-25 06:44:28', NULL),
(12, 'LOGO', 'logo-373', 1, 2, 20000, 3, 1, 1, '2019-04-25 06:44:55', '2019-04-25 06:44:55', NULL),
(13, 'LOGO', 'logo-1694', 1, 2, 700, 20, 1, 1, '2019-04-25 06:48:50', '2019-04-25 06:48:50', NULL),
(14, 'LOGO', 'logo-208', 1, 2, 700, 5, 1, 1, '2019-04-25 07:34:52', '2019-04-25 07:34:52', NULL),
(15, 'LOGO', 'logo-1414', 1, 2, 700, 10, 1, 1, '2019-04-25 07:36:09', '2019-04-25 07:36:09', NULL),
(16, 'LOGO', 'logo-1974', 1, 2, 700, 50, 1, 1, '2019-04-25 07:37:22', '2019-04-25 07:37:22', NULL),
(17, 'LOGO', 'logo-895', 1, 2, 700, 20, 1, 1, '2019-04-25 23:12:18', '2019-04-25 07:38:18', NULL),
(18, 'PHONE', 'phone-371', 1, 1, 20000, 5, 1, 2, '2019-04-25 23:14:48', '2019-04-25 23:13:24', NULL),
(19, 'PHONE', 'phone-247', 1, 1, 12000, 5, 1, 2, '2019-04-25 23:13:53', '2019-04-25 23:13:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `variant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(255) NOT NULL,
  `variant_size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`variant_id`, `variant_name`, `category_id`, `variant_size`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'GYNG', 2, '25 Litres', '2019-04-25 22:59:27', '2019-04-22 17:15:46', NULL),
(2, 'GY', 1, '20 Litres', '2019-04-22 17:16:13', '2019-04-22 17:16:13', NULL),
(3, 'GY', 1, '25 Litres', '2019-04-22 17:17:47', '2019-04-22 17:17:47', NULL),
(4, 'Unidentified', 7, 'Null', '2019-04-28 16:32:32', '2019-04-22 17:19:14', NULL),
(5, 'GYNG', 1, '25 Litres', '2019-04-22 17:22:12', '2019-04-22 17:22:12', NULL),
(6, 'GYNG', 2, '25 Litres', '2019-04-22 17:22:58', '2019-04-22 17:22:58', NULL),
(7, 'Cooking Gas (kg)', 1, '20 Litres', '2019-04-25 22:59:13', '2019-04-24 15:06:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'web', '2019-04-11 07:00:20', '2019-04-11 04:17:18'),
(2, 'Editor', 'web', '2019-04-11 14:06:57', '2019-04-11 14:06:57'),
(3, 'Receptionist', 'web', '2019-04-11 14:08:08', '2019-04-11 14:08:08'),
(4, 'Supplier', 'web', '2019-04-11 14:09:10', '2019-04-11 14:09:10'),
(5, 'Distributor', 'web', '2019-04-11 14:09:51', '2019-04-11 14:09:51'),
(6, 'Accountant', 'web', '2019-04-11 14:10:23', '2019-04-11 14:10:23'),
(7, 'Admin', 'web', '2019-04-11 14:15:43', '2019-04-11 14:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(5, 1),
(5, 3),
(5, 7),
(6, 1),
(6, 3),
(6, 7),
(7, 1),
(7, 3),
(7, 7),
(8, 1),
(8, 7),
(9, 1),
(9, 3),
(9, 7),
(10, 1),
(10, 3),
(10, 7),
(11, 1),
(11, 3),
(11, 7),
(12, 1),
(12, 3),
(12, 7),
(13, 1),
(13, 3),
(13, 7),
(14, 1),
(14, 3),
(14, 7),
(15, 1),
(15, 3),
(15, 7),
(16, 1),
(16, 3),
(16, 7),
(17, 1),
(17, 3),
(17, 7),
(18, 1),
(18, 3),
(18, 7),
(19, 1),
(19, 7),
(20, 1),
(20, 3),
(20, 7),
(21, 1),
(21, 3),
(21, 7),
(22, 1),
(22, 3),
(22, 7),
(23, 1),
(23, 7),
(24, 1),
(24, 3),
(24, 7),
(25, 1),
(25, 7),
(26, 1),
(26, 7),
(27, 1),
(27, 7),
(28, 1),
(28, 7),
(29, 1),
(29, 3),
(29, 6),
(29, 7),
(30, 1),
(30, 3),
(30, 6),
(30, 7),
(31, 1),
(31, 3),
(31, 6),
(31, 7),
(32, 1),
(32, 3),
(32, 6),
(32, 7),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(38, 7),
(39, 1),
(39, 7),
(40, 1),
(40, 7),
(41, 1),
(41, 7),
(42, 1),
(42, 7),
(43, 1),
(43, 7),
(44, 1),
(44, 7),
(45, 1),
(45, 7),
(46, 1),
(46, 6),
(46, 7),
(47, 1),
(47, 6),
(47, 7),
(48, 1),
(48, 6),
(48, 7),
(49, 1),
(49, 6),
(49, 7),
(51, 6),
(51, 7),
(52, 6),
(52, 7),
(53, 6),
(53, 7),
(54, 6),
(54, 7),
(55, 3),
(55, 6),
(55, 7),
(56, 3),
(56, 6),
(56, 7),
(57, 3),
(57, 6),
(57, 7),
(58, 3),
(58, 6),
(58, 7),
(59, 7),
(60, 7),
(61, 7),
(62, 7),
(63, 7),
(64, 7),
(65, 7),
(66, 7),
(67, 7),
(68, 7),
(69, 7),
(70, 6),
(70, 7),
(71, 7),
(72, 6),
(72, 7),
(73, 6),
(73, 7),
(74, 6),
(74, 7),
(75, 6),
(75, 7),
(76, 7),
(77, 7),
(78, 7),
(79, 7),
(80, 7),
(81, 7),
(82, 6),
(82, 7),
(83, 6),
(83, 7),
(84, 6),
(84, 7),
(85, 6),
(85, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_one` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_two` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `name`, `phone_one`, `phone_two`, `email`, `address`, `city`, `state`, `country`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Testing', '09083736366', '09083637363', 'testone@gmail.com', 'Home Address', 'Mushin', 'Delta', 'Nigeria', '2019-04-23 12:57:04', '2019-04-23 12:57:04', NULL),
(2, 'Test Two', '08083622722', '09073635377', 'testtwo@gmail.com', 'Ikirun', 'Ikirun', 'Ebonyi', 'Nigeria', '2019-04-23 13:02:37', '2019-04-23 13:02:37', NULL),
(3, 'Desktops', '09087787877', '09086463372', 'admins@gmail.com', 'Abuja Nigeria', 'Abija', 'Abuja FCT', '20 Litres', '2019-04-25 22:10:53', '2019-04-24 15:32:47', NULL),
(4, 'Adesina Taiwo Olajide', '0908944344', '09094854334', 'adelasbu@gmail.com', 'Ikere Ekiti', 'Ado Ekiti', 'Ekiti', '20 Litres', '2019-04-25 22:11:18', '2019-04-24 15:34:09', NULL),
(5, 'Noble Immaculate', '09098646702', '09034343445', 'noblens@gmail.com', 'Home Address', 'Warri', 'Delta', '20 Litres', '2019-04-25 22:11:40', '2019-04-24 15:51:48', NULL),
(6, 'Adelabu Adebayo', '09084784899', '09084332233', 'adminsssss@gmail.com', 'jadfj oofbusf', 'IBADAN', 'Adamawa', '20 Litres', '2019-04-24 17:21:32', '2019-04-24 17:21:12', '2019-04-24 18:21:32'),
(7, 'Politician', '09040430434', '09044243424', 'kennys@gmail.com', 'Favors Bodija', 'Mushin Lagos', 'Ebonyi', 'Nigeria', '2019-04-25 12:03:13', '2019-04-25 12:03:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `role`, `password`, `status`, `updated_at`, `created_at`, `deleted_at`, `email_verified_at`) VALUES
(1, 'Adesina Taiwo Olajide', 'tolajide74@gmail.com', '\"Administrator\"', '$2y$10$/HzGhIa5ALfVv4LkM5jiVuEHTa3Hq8LnRDyFWxavUVCsXMAej2kDq', 1, '2019-04-10 16:29:39', '2019-04-10 16:29:39', NULL, '2019-04-10 16:29:39'),
(34, 'New Accountant', 'accountant@gmail.com', '\"Accountant\"', '$2y$10$/G1SWEaKZ0rOb7Le06CTKeKWQfWGUdw/ew6eoYeRAnRRHdykkkEnu', 1, '2019-04-29 06:18:28', '2019-04-29 06:18:28', NULL, '2019-04-01 23:00:00'),
(35, 'Editor', 'editor@gmail.com', '\"Editor\"', '$2y$10$MfG93yAgiBzoBh.VNI4ubeK6U98yy1jLlaaDiTs4cislHjix0oswy', 1, '2019-04-29 08:37:13', '2019-04-29 08:37:13', NULL, '2019-04-06 23:00:00'),
(36, 'Receptionist', 'receptionist@gmail.com', '\"Receptionist\"', '$2y$10$6n3ymtijFM1mNoVfrJhGneV3LLxGbtkPlRDI9DFopfE3tSC60Itve', 1, '2019-04-29 08:37:54', '2019-04-29 08:37:54', NULL, '2019-04-04 23:00:00'),
(37, 'Admin User', 'admin@gmail.com', '\"Admin\"', '$2y$10$0U2R9dp42Hk5KEpPPEimCONTOD3YoWT5Pr2cyRhp1qZB3Icrb3zT6', 1, '2019-04-29 08:38:33', '2019-04-29 08:38:33', NULL, '2019-04-01 23:00:00'),
(38, 'Super Administrator', 'administrator@gmail.com', '\"Administrator\"', '$2y$10$pk17qvsG/AavWn2S6Ayx6./42WqKLutbcWjERVTjn.Dhdbjhhmd6C', 1, '2019-04-29 08:39:12', '2019-04-29 08:39:12', NULL, '2019-04-06 23:00:00'),
(39, 'Adesina Taiwo Olajide', 'tolajide75@gmail.com', '\"Administrator\"', '$2y$10$hQtFh7iNW7GoSrCvDkKVnOTLRwvaoLFOi8ynYAyPynqqai4UkIfX2', 1, '2019-04-30 16:39:57', '2019-04-30 16:30:17', NULL, '2019-04-30 16:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ware_house_managements`
--

CREATE TABLE `ware_house_managements` (
  `ware_house_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ware_house_managements`
--

INSERT INTO `ware_house_managements` (`ware_house_id`, `name`, `address`, `city`, `state`, `country`, `start_date`, `user_id`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Glorious', 'New Estate', 'Mushin', 'Adamawa', 'Nigeria', '2019-04-07', 1, '2019-04-28 16:22:50', '2019-04-21 17:45:39', NULL),
(6, 'Tita Mall', 'Bodija Estate', 'IBADAN', 'Adamawa', 'Nigeria', '2019-04-10', 23, '2019-04-28 16:09:01', '2019-04-28 16:09:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_managements`
--
ALTER TABLE `account_managements`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `assign_outlets`
--
ALTER TABLE `assign_outlets`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `credit_managements`
--
ALTER TABLE `credit_managements`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `credit_payments`
--
ALTER TABLE `credit_payments`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `distributors`
--
ALTER TABLE `distributors`
  ADD PRIMARY KEY (`distributor_id`),
  ADD UNIQUE KEY `distributors_phone_one_unique` (`phone_one`),
  ADD UNIQUE KEY `distributors_phone_two_unique` (`phone_two`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `employees_phone_number_unique` (`phone_number`);

--
-- Indexes for table `inventory_stocks`
--
ALTER TABLE `inventory_stocks`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`details_id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`outlet_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `products_product_slug_unique` (`product_slug`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`variant_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `suppliers_phone_one_unique` (`phone_one`),
  ADD UNIQUE KEY `suppliers_phone_two_unique` (`phone_two`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `user_roles_role_name_unique` (`role_name`);

--
-- Indexes for table `ware_house_managements`
--
ALTER TABLE `ware_house_managements`
  ADD PRIMARY KEY (`ware_house_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_managements`
--
ALTER TABLE `account_managements`
  MODIFY `account_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `activity_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `assign_outlets`
--
ALTER TABLE `assign_outlets`
  MODIFY `assign_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `credit_managements`
--
ALTER TABLE `credit_managements`
  MODIFY `credit_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credit_payments`
--
ALTER TABLE `credit_payments`
  MODIFY `pay_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distributors`
--
ALTER TABLE `distributors`
  MODIFY `distributor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory_stocks`
--
ALTER TABLE `inventory_stocks`
  MODIFY `stock_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `outlet_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `variant_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ware_house_managements`
--
ALTER TABLE `ware_house_managements`
  MODIFY `ware_house_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
