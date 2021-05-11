-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2021 at 11:23 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teamhwxi_oyika`
--

-- --------------------------------------------------------

--
-- Table structure for table `checklists`
--

CREATE TABLE `checklists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(20) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nearby` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plate_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cleaned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brake` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `battery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mirror` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scratch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tire_pressure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sticker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle_bar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vandalism` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helmet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `damage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checklists`
--

INSERT INTO `checklists` (`id`, `user_id`, `location`, `nearby`, `plate_no`, `cleaned`, `indicator`, `brake`, `battery`, `mirror`, `crash`, `scratch`, `tire_pressure`, `sticker`, `handle_bar`, `noise`, `vandalism`, `helmet`, `damage`, `comments`, `created_at`, `updated_at`) VALUES
(7, 1, '11.587298795787717, 104.91794484987456', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1001', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'problem', 'problem', 'problem', 'ok', '[\"mudguard\",\"rear_end\"]', 'ok', '1', '[\"handle_bar\",\"front_panel\"]', 'test', '2021-02-14 00:41:43', '2021-02-23 15:05:35'),
(8, 1, '11.58733675584179, 104.91802196320658', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1010', 'fixed', 'problem', 'problem', 'battery_changed', 'ok', 'ok', 'ok', 'problem', 'problem', 'ok', '[\"mudguard\",\"rear_end\"]', 'ok', '2', '[\"mudguard\",\"seat\"]', 'test', '2021-02-14 00:43:13', '2021-02-23 15:05:36'),
(10, 1, '11.58736061982843, 104.91778467464867', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1111', 'ok', 'ok', 'ok', 'battery_changed', 'problem', 'ok', 'ok', 'problem', 'problem', 'ok', '[\"rear_wheel\"]', 'problem', '1', '[\"mudguard\"]', 'Test', '2021-02-17 13:33:09', '2021-02-23 15:05:37'),
(11, 1, '11.587348959414669, 104.9178612379377', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1030', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '1', NULL, '123', '2021-02-17 13:34:03', '2021-02-23 15:05:38'),
(12, 1, '11.5872918, 104.9180347', 'Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant, ចាន់អ៉ីមលក់បាយព្រឹក', '1073', 'ok', 'problem', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'problem', '2', NULL, 'Okay', '2021-02-17 13:34:17', '2021-02-23 15:05:41'),
(13, 1, '11.587348959414669, 104.9178612379377', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1030', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '1', NULL, '123', '2021-02-17 13:35:01', '2021-02-23 15:05:42'),
(14, 1, '1.2897, 103.8501', 'Hotel Swissôtel Merchant Court, JUMBO Seafood - The Riverwalk, Timbre X S.E.A, ikigai izakaya @ the riverwalk', '1111', 'fixed', 'ok', 'problem', 'ok', 'problem', 'problem', 'problem', 'problem', 'ok', 'ok', NULL, 'problem', '1', '[\"rear_end\"]', '1', '2021-02-17 16:30:43', '2021-02-23 15:05:43'),
(15, 1, '1.3373859, 103.704405', 'Din Tai Fung, Subway, Dian Xiao Er, Pizza Hut Jurong Point II', '1122', 'fixed', 'ok', 'problem', 'ok', 'ok', 'problem', 'ok', 'problem', 'ok', 'problem', NULL, 'ok', '2', NULL, '*', '2021-02-17 16:33:37', '2021-02-23 15:05:45'),
(16, 1, '1.2897, 103.8501', 'Hotel Swissôtel Merchant Court, JUMBO Seafood - The Riverwalk, Timbre X S.E.A, ikigai izakaya @ the riverwalk', '1122', 'fixed', 'ok', 'problem', 'ok', 'ok', 'problem', 'ok', 'problem', 'ok', 'problem', NULL, 'ok', '2', NULL, '*', '2021-02-17 16:33:55', '2021-02-23 15:05:48'),
(17, 1, '30.7987, 76.9182', 'AV2 Hotel & Restaurant, Sharma Fast Food (Lalli ), Gautam Sweets, Haryana Tourism Restaurant', '12396', 'fixed', 'problem', 'ok', 'ok', 'problem', 'ok', 'ok', 'problem', 'problem', 'ok', '[\"handle_bar\",\"front_panel\",\"side_panel\",\"rear_wheel\",\"seat\"]', 'problem', '2', '[\"front_wheel\",\"foot_panel\",\"rear_end\",\"seat\"]', 'test', '2021-02-17 18:17:55', '2021-02-23 15:05:50'),
(18, 1, '30.751144900000003, 76.9758274', 'DLF Valley Club House', '12396', 'fixed', 'problem', 'ok', 'ok', 'problem', 'problem', 'problem', 'ok', 'problem', 'problem', '[\"handle_bar\",\"foot_panel\",\"seat\"]', 'problem', '2', '[\"front_panel\",\"foot_panel\",\"side_panel\"]', 'test', '2021-02-17 18:22:27', '2021-02-23 15:05:51'),
(19, 1, '30.751144900000003, 76.9758274', 'DLF Valley Club House', '12396', 'ok', 'ok', 'problem', 'ok', 'ok', 'problem', 'problem', 'ok', 'ok', 'ok', '[\"foot_panel\",\"side_panel\",\"seat\"]', 'ok', '1', '[\"handle_bar\",\"side_panel\",\"seat\"]', 'test', '2021-02-17 18:35:07', '2021-02-23 15:05:52'),
(20, 1, '1.3374123, 103.70443619999999', 'Din Tai Fung, Subway, Dian Xiao Er, Pizza Hut Jurong Point II', '1923', 'ok', 'problem', 'ok', 'battery_changed', 'ok', 'problem', 'ok', 'problem', 'ok', 'problem', '[\"handle_bar\"]', 'problem', '2', NULL, '1', '2021-02-17 18:35:44', '2021-02-23 15:05:53'),
(21, 1, '11.586998061075711, 104.91799099118359', 'Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant, Hong sells cow soup', '1023', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '0', NULL, 'Vhhh', '2021-02-17 18:35:47', '2021-02-23 15:05:54'),
(22, 1, '11.586998061075711, 104.91799099118359', 'Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant, Hong sells cow soup', '1023', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '0', NULL, 'Vhhh', '2021-02-17 18:35:49', '2021-02-23 15:05:57'),
(23, 1, '11.5620583, 104.9157783', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Urban, De Bokor - Food & Drink', '1001', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, 'Okay', '2021-02-17 18:44:15', '2021-02-23 15:05:59'),
(24, 1, '1.2897, 103.8501', 'Hotel Swissôtel Merchant Court, JUMBO Seafood - The Riverwalk, Timbre X S.E.A, ikigai izakaya @ the riverwalk', '1111', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '1', NULL, NULL, '2021-02-17 21:35:55', '2021-02-23 15:06:00'),
(25, 1, '30.7987, 76.9182', 'AV2 Hotel & Restaurant, Sharma Fast Food (Lalli ), Gautam Sweets, Haryana Tourism Restaurant', '12396', 'ok', 'problem', 'problem', 'battery_changed', 'ok', 'ok', 'problem', 'fixed', 'problem', 'ok', '[\"side_panel\",\"seat\"]', 'problem', '2', '[\"side_panel\",\"seat\"]', 'test', '2021-02-18 18:17:46', '2021-02-23 15:06:00'),
(26, 1, '11.5499081, 104.9314021', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Bonchon, KFC Aeon Mall, Bar.B.Q Plaza (Aeon Mall)', '1072', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '0', NULL, '395925', '2021-02-19 17:24:23', '2021-02-23 15:06:04'),
(27, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1017', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392187', '2021-02-19 19:10:47', '2021-02-23 15:06:05'),
(28, 1, '11.587468539375427, 104.91823883736964', 'មីហឹរ Seoul មីហឹរ៧យ៉ាង, Chaktomuk, Hong sells cow soup, Deam Tek Dors Restaurant', '1029', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '0', NULL, '388344', '2021-02-19 20:10:34', '2021-02-23 15:06:06'),
(29, 6, '1.3394851, 103.7071502', 'Din Tai Fung, Subway, Dian Xiao Er, Pizza Hut Jurong Point II', '9999', 'fixed', 'problem', 'problem', 'ok', 'problem', 'problem', 'problem', 'ok', 'problem', 'problem', '[\"front_panel\",\"rear_wheel\",\"rear_end\"]', 'problem', '2', '[\"foot_panel\"]', NULL, '2021-02-19 21:21:08', '2021-02-23 15:06:07'),
(30, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1057', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426183', '2021-02-19 23:23:56', '2021-02-23 15:06:08'),
(31, 6, '11.5658551, 104.9282107', 'The Big Easy Phnom Penh, Lone Star Saloon and Guest House, White River II, Blue Dolphin Motel', '1059', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387955', '2021-02-19 23:31:12', '2021-02-23 15:06:10'),
(32, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1045', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-19 23:52:45', '2021-02-23 15:06:11'),
(33, 6, '11.546969, 104.9082634', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1044', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426615', '2021-02-19 23:59:29', '2021-02-23 15:06:12'),
(34, 6, '11.5362041, 104.9141699', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1062', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '0', NULL, '391718', '2021-02-20 00:07:11', '2021-02-23 15:06:13'),
(35, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1051', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-20 00:24:31', '2021-02-23 15:06:16'),
(36, 6, '11.5362672, 104.9141731', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1068', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426456', '2021-02-20 00:25:31', '2021-02-23 15:06:17'),
(37, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1003', 'fixed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-20 00:36:26', '2021-02-23 15:06:18'),
(38, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1019', 'fixed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-20 00:46:51', '2021-02-23 15:06:18'),
(39, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1085', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '424337', '2021-02-20 00:54:50', '2021-02-23 15:06:19'),
(40, 6, '11.5683262, 104.9139562', 'The Spoon, gyu raku, ផាកកាហ្វេ, Orussey Restaurant', '1072', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388391', '2021-02-20 01:19:26', '2021-02-23 15:06:20'),
(41, 6, '11.5683262, 104.9139562', 'The Spoon, gyu raku, ផាកកាហ្វេ, Orussey Restaurant', '1063', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', NULL, NULL, '426381', '2021-02-20 01:21:25', '2021-02-23 15:06:21'),
(42, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1045', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-20 01:41:22', '2021-02-23 15:06:23'),
(43, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1069', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-20 01:57:25', '2021-02-23 15:06:24'),
(44, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1052', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '394035', '2021-02-20 02:07:07', '2021-02-23 15:06:25'),
(45, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1011', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391890', '2021-02-20 02:11:16', '2021-02-23 15:06:26'),
(46, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1021', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '0', NULL, '392039', '2021-02-20 12:00:10', '2021-02-23 15:06:28'),
(47, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1021', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '0', NULL, '392039', '2021-02-20 12:00:20', '2021-02-23 15:06:30'),
(48, 1, '11.5619859, 104.9288417', 'Artillery Arts Cafe, KFC Norodom, Fat Passion Restaurant, La Pergola', '1003', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '0', NULL, '388417', '2021-02-20 12:31:45', '2021-02-23 15:06:31'),
(49, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1057', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '0', NULL, '388540', '2021-02-20 12:48:45', '2021-02-23 15:06:32'),
(50, 1, '11.550144, 104.925586', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1019', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388698', '2021-02-20 13:13:33', '2021-02-23 15:06:33'),
(51, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1036', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393425', '2021-02-20 13:14:36', '2021-02-23 15:06:33'),
(52, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1051', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '417059', '2021-02-20 13:15:49', '2021-02-23 15:06:34'),
(53, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1085', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '1', NULL, '400857', '2021-02-20 13:16:40', '2021-02-23 15:06:36'),
(54, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1057', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '395925', '2021-02-20 13:41:02', '2021-02-23 15:06:38'),
(55, 6, '11.5414173, 104.9153418', 'KFC, Vibe, Tonle Bassac Restaurant, ស៊ីសេម នូដល បា', '1035', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391692', '2021-02-20 13:50:30', '2021-02-23 15:06:39'),
(56, 6, '11.5506533, 104.9300367', 'Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, The Village, Namaste India Restaurant', '1029', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393870', '2021-02-20 14:11:09', '2021-02-23 15:06:40'),
(57, 6, '11.5506599, 104.9306665', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Namaste India Restaurant', '1017', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388300', '2021-02-20 14:19:48', '2021-02-23 15:06:41'),
(58, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1069', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391684', '2021-02-20 14:55:52', '2021-02-23 15:06:43'),
(59, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1069', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391684', '2021-02-20 14:56:12', '2021-02-23 15:06:43'),
(60, 6, '11.5712387, 104.9265294', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1059', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392187', '2021-02-21 12:18:30', '2021-02-23 15:06:45'),
(61, 6, '11.5506183, 104.9310371', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Bonchon', '1030', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426530', '2021-02-21 14:03:39', '2021-02-23 15:06:46'),
(62, 6, '11.5480246, 104.9205679', 'Coin Cafe & Bar, ABC, ភោជនីយដ្ឋាន ជប់លាប, Tbal Khmer', '1019', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388391', '2021-02-21 14:14:24', '2021-02-23 15:06:47'),
(63, 6, '11.5486599, 104.9181984', 'Deluxe Chicken, Deluxe Chicken, 350 BBQ Cafe, មីហឹរ7កម្រិត', '1013', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392229', '2021-02-21 14:17:40', '2021-02-23 15:06:49'),
(64, 6, '11.5113023, 104.9322257', 'ផ្ទះកែងបាយមាន់ស្រែផ្សារចាក់អង្រែ, ផ្ទះកែងបាយមាន់ស្រែ, គុយទាវទូកថៃ, អាហារដ្ឋាន ត្រជាក់ចិត្ត', '1034', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388102', '2021-02-21 14:41:58', '2021-02-23 15:06:51'),
(65, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1067', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388540', '2021-02-21 14:43:14', '2021-02-23 15:06:53'),
(66, 6, '11.5374803, 104.911327', 'The Pizza Company - Sonsam Kosal, L\'Orchidee Restaurant, De Magic Noodle (L\'Orchidee Restaurant), Waffle Magic', '1069', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391304', '2021-02-21 15:18:07', '2021-02-23 15:06:54'),
(67, 6, '11.5351133, 104.9107905', 'The Pizza Company - Sonsam Kosal, ហាងចេកអាំទឹកជ្រលក់ពិសេស168, មីឥួយលីជ, បងសូត', '1055', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '394753', '2021-02-21 16:16:25', '2021-02-23 15:06:56'),
(68, 6, '11.5351133, 104.9107905', 'The Pizza Company - Sonsam Kosal, ហាងចេកអាំទឹកជ្រលក់ពិសេស168, មីឥួយលីជ, បងសូត', '1055', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '394753', '2021-02-21 16:17:18', '2021-02-23 15:06:57'),
(69, 6, '11.5351133, 104.9107905', 'The Pizza Company - Sonsam Kosal, ហាងចេកអាំទឹកជ្រលក់ពិសេស168, មីឥួយលីជ, បងសូត', '1055', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '394753', '2021-02-21 16:17:56', '2021-02-23 15:06:58'),
(70, 6, '11.5351133, 104.9107905', 'The Pizza Company - Sonsam Kosal, ហាងចេកអាំទឹកជ្រលក់ពិសេស168, មីឥួយលីជ, បងសូត', '1055', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '394753', '2021-02-21 16:17:56', '2021-02-23 15:06:59'),
(71, 6, '11.5746412, 104.9273803', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1068', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392047', '2021-02-21 16:44:29', '2021-02-23 15:07:00'),
(72, 6, '11.5506864, 104.9307069', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Namaste India Restaurant', '1058', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '403455', '2021-02-21 16:58:53', '2021-02-23 15:07:01'),
(73, 6, '11.5523495, 104.9044641', 'Kakasuki, Thymonysasa, kuyteavtoukhos, គុយទាវទូកហោះ', '1056', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392120', '2021-02-21 18:32:22', '2021-02-23 15:07:03'),
(74, 6, '11.542044, 104.9152424', 'KFC, Vibe, Tonle Bassac Restaurant, Fresh Pizza', '1060', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391999', '2021-02-21 18:40:50', '2021-02-23 15:07:04'),
(75, 6, '11.5479428, 104.9058333', 'Thymonysasa, The Pizza Company Mao Tse Toung, អាហាដ្ឋាន មី.ទា សុវណ្ណា (Duck Noodle), Banh Chev YeaySok TaSom', '1075', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392104', '2021-02-21 19:02:48', '2021-02-23 15:07:05'),
(76, 6, '11.5479428, 104.9058333', 'Thymonysasa, The Pizza Company Mao Tse Toung, អាហាដ្ឋាន មី.ទា សុវណ្ណា (Duck Noodle), Banh Chev YeaySok TaSom', '1075', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392104', '2021-02-21 19:03:23', '2021-02-23 15:07:06'),
(77, 6, '11.56353, 104.9137738', 'The Pizza Company - PPIU, iFood(Hot Pot 먹는 집), ផាកកាហ្វេ, MasterSukiSoup (Bak Touk)', '1063', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391684', '2021-02-21 19:15:00', '2021-02-23 15:07:07'),
(78, 6, '11.5712588, 104.9266621', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1021', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '404883', '2021-02-21 19:44:22', '2021-02-23 15:07:08'),
(79, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1044', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388144', '2021-02-22 12:07:14', '2021-02-23 15:07:10'),
(80, 6, '11.5746275, 104.927358', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1044', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388344', '2021-02-22 12:09:01', '2021-02-23 15:07:11'),
(81, 6, '11.5501629, 104.9256175', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1053', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387955', '2021-02-22 12:21:20', '2021-02-23 15:07:12'),
(82, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1085', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392070', '2021-02-22 12:23:07', '2021-02-23 15:07:13'),
(83, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1051', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '424337', '2021-02-22 12:26:11', '2021-02-23 15:07:14'),
(84, 6, '11.5341967, 104.9225445', 'Fumanlou Restaurant, Pizza Factory Delivery & Takeaway, Hotel De L\'Homme, ឈួន សឿង លក់ គ្រឿង សង្ហារឹម', '1036', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426209', '2021-02-22 12:45:56', '2021-02-23 15:07:16'),
(85, 6, '11.5410718, 104.9153418', 'ស្រែ​អំបិល​, KFC, Vibe, ស៊ីសេម នូដល បា', '1057', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '419055', '2021-02-22 12:57:40', '2021-02-23 15:07:17'),
(86, 6, '11.5508402, 104.9153855', 'The Street Cambodia BKK Branch, Boklahong yok Tbal, Beer Urban House, 350 BBQ Cafe', '1073', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392088', '2021-02-22 13:25:09', '2021-02-23 15:07:18'),
(87, 6, '11.5496371, 104.9301983', 'The Village, Celeste Revolving Skybar, Bonchon, S&P Thai Restaurant & Bakery Aeon Mall Branch', '1030', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387963', '2021-02-22 17:20:17', '2021-02-23 15:07:19'),
(88, 6, '11.5496371, 104.9301983', 'The Village, Celeste Revolving Skybar, Bonchon, S&P Thai Restaurant & Bakery Aeon Mall Branch', '1030', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387963', '2021-02-22 17:21:14', '2021-02-23 15:07:19'),
(89, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1013', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391585', '2021-02-22 17:27:53', '2021-02-23 15:07:20'),
(90, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1019', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '417059', '2021-02-22 17:36:54', '2021-02-23 15:07:23'),
(91, 6, '11.5446586, 104.9118734', 'Tonle Bassac Restaurant, Fresh Pizza, The Habit Burger Grill Mao Tse Toung, Park Cafe The Point', '1058', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393425', '2021-02-22 17:42:36', '2021-02-23 15:07:24'),
(92, 6, '11.5479332, 104.9180813', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1036', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388060', '2021-02-22 18:07:30', '2021-02-23 15:07:25'),
(93, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1035', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '383202', '2021-02-22 18:11:51', '2021-02-23 15:07:25'),
(94, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1057', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '400857', '2021-02-22 18:13:56', '2021-02-23 15:07:26'),
(95, 6, '11.5672897, 104.8920401', 'KIMMO RUPP (មីហឹរកូរ៉េ៧កំរិតគីមម៉ូ សាខាសាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ), Ajisen Ramen, Domino\'s Pizza - IFL, មីទាញតុងយ៉ាំ', '1014', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '421879', '2021-02-22 18:45:03', '2021-02-23 15:07:27'),
(96, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1041', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388300', '2021-02-22 18:46:39', '2021-02-23 15:07:30'),
(97, 6, '11.5679444, 104.9188122', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1064', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388680', '2021-02-22 19:03:04', '2021-02-23 15:07:30'),
(98, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1010', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393870', '2021-02-22 19:04:39', '2021-02-23 15:07:31'),
(99, 6, '11.5678748, 104.9304919', 'Le Grand Mekong, Golden House International, The Big Easy Phnom Penh, Sugar \'n Spice Café', '1061', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391544', '2021-02-22 19:15:28', '2021-02-23 15:07:32'),
(100, 6, '11.560932459709246, 104.9269185563899', 'Secret Villa, KFC Norodom, Khéma Pasteur, Mara Steak, Wok & Wine', '1057', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426241', '2021-02-23 13:16:28', '2021-02-23 15:07:33'),
(101, 6, '11.560933861831671, 104.92690490864624', 'Secret Villa, KFC Norodom, Khéma Pasteur, Mara Steak, Wok & Wine', '1070', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388326', '2021-02-23 13:20:44', '2021-02-23 15:07:34'),
(102, 6, '11.560933861831671, 104.92690490864624', 'Secret Villa, KFC Norodom, Khéma Pasteur, Mara Steak, Wok & Wine', '1070', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388326', '2021-02-23 13:20:46', '2021-02-23 15:07:36'),
(103, 6, '11.571248287195171, 104.92667303344537', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1059', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '397186', '2021-02-23 13:28:35', '2021-02-23 15:07:37'),
(104, 6, '11.571248287195171, 104.92667303344537', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1059', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '397186', '2021-02-23 13:28:35', '2021-02-23 15:07:38'),
(105, 6, '11.536245684468643, 104.91561913012336', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1034', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391544', '2021-02-23 14:15:10', '2021-02-23 15:07:39'),
(106, 6, '11.536245684468643, 104.91561913012336', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1034', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391544', '2021-02-23 14:15:11', '2021-02-23 15:07:41'),
(107, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1003', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392039', '2021-02-23 14:23:19', '2021-02-23 15:07:43'),
(108, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1003', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392039', '2021-02-23 14:23:20', '2021-02-23 15:07:47'),
(109, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1001', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387872', '2021-02-23 15:29:04', '2021-02-23 15:07:48'),
(110, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1001', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387872', '2021-02-23 15:29:04', '2021-02-23 15:07:51'),
(111, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1045', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392120', '2021-02-23 15:31:01', '2021-02-23 15:07:52'),
(112, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1036', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '420228', '2021-02-23 17:54:50', '2021-02-23 15:07:53'),
(113, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1036', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '420228', '2021-02-23 17:54:50', '2021-02-23 15:07:54'),
(114, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1036', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '420228', '2021-02-23 17:57:10', '2021-02-23 15:07:57'),
(115, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1036', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '420228', '2021-02-23 17:57:47', '2021-02-23 15:07:58'),
(116, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1019', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391882', '2021-02-23 18:02:33', '2021-02-23 15:07:59'),
(117, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1019', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391882', '2021-02-23 18:02:33', '2021-02-23 15:08:00'),
(118, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1035', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '419055', '2021-02-23 18:07:04', '2021-02-23 15:08:01'),
(119, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1035', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '419055', '2021-02-23 18:07:04', '2021-02-23 15:08:04'),
(120, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1013', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426423', '2021-02-23 18:20:40', '2021-02-23 15:08:05'),
(121, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1013', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426423', '2021-02-23 18:20:40', '2021-02-23 15:08:05'),
(122, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1013', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426423', '2021-02-23 18:20:47', '2021-02-23 15:08:07'),
(123, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1051', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388581', '2021-02-23 18:28:36', '2021-02-23 15:08:08'),
(124, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1051', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388581', '2021-02-23 18:28:38', '2021-02-23 15:08:10'),
(125, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1060', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391387', '2021-02-23 18:45:01', '2021-02-23 15:08:11'),
(126, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1060', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391387', '2021-02-23 18:45:01', '2021-02-23 15:08:13'),
(127, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1060', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391387', '2021-02-23 18:45:06', '2021-02-23 15:08:15'),
(128, 6, '11.587402613289601, 104.9178729312978', 'មីហឹរ Seoul មីហឹរ៧យ៉ាង, ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ', '1010', 'ok', 'ok', 'problem', 'ok', 'ok', 'problem', 'problem', 'problem', 'problem', 'problem', '[\"mudguard\",\"foot_panel\",\"rear_wheel\"]', 'problem', '1', '[\"rear_end\"]', 'Test', '2021-02-23 22:22:47', '2021-02-23 15:08:17'),
(129, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1045', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', '[\"seat\"]', 'ok', '0', '[\"seat\"]', NULL, '2021-02-23 23:32:29', '2021-02-23 15:08:18'),
(130, 6, '11.58738727243981, 104.91793621705908', 'មីហឹរ Seoul មីហឹរ៧យ៉ាង, ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ', '1111', 'ok', 'ok', 'ok', 'ok', 'problem', 'problem', 'problem', 'ok', 'problem', 'problem', '[\"rear_end\"]', 'problem', '1', NULL, NULL, '2021-02-23 23:33:37', '2021-02-23 15:08:19'),
(131, 6, '11.587351991347537, 104.91781797534982', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1050', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'problem', 'ok', 'problem', 'problem', '[\"rear_wheel\"]', 'ok', '0', '[\"mudguard\"]', 'Test', '2021-02-23 23:36:36', '2021-02-23 15:08:20'),
(132, 6, '11.58734218412079, 104.91793172129348', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1060', 'ok', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', '[\"rear_wheel\"]', 'problem', '2', '[\"front_wheel\"]', 'Test', '2021-02-23 23:36:42', '2021-02-23 15:08:22'),
(133, 6, '11.587351991347537, 104.91781797534982', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1050', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'problem', 'ok', 'problem', 'problem', '[\"rear_wheel\"]', 'ok', '0', '[\"mudguard\"]', 'Test', '2021-02-23 23:37:12', '2021-02-23 15:08:24'),
(134, 6, '11.587351991347537, 104.91781797534982', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1050', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'problem', 'ok', 'problem', 'problem', '[\"rear_wheel\"]', 'ok', '0', '[\"mudguard\"]', 'Test', '2021-02-23 23:37:13', '2021-02-23 15:08:25'),
(135, 6, '11.587351991347537, 104.91781797534982', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1050', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'problem', 'ok', 'problem', 'problem', '[\"rear_wheel\"]', 'ok', '0', '[\"mudguard\"]', 'Test', '2021-02-23 23:37:14', '2021-02-23 15:08:27'),
(136, 6, '11.58734218412079, 104.91793172129348', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1060', 'ok', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', '[\"rear_wheel\"]', 'problem', '2', '[\"front_wheel\"]', 'Test', '2021-02-23 23:38:33', '2021-02-23 15:08:28'),
(137, 1, '11.587319653903071, 104.91782900981526', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1111', 'ok', 'problem', 'problem', 'ok', 'problem', 'problem', 'problem', 'fixed', 'problem', 'problem', NULL, 'problem', '1', NULL, NULL, '2021-02-23 23:41:29', '2021-02-23 15:08:30'),
(144, 1, '1.3373819, 103.7044222', 'Din Tai Fung, Subway, Dian Xiao Er, Pizza Hut Jurong Point II', '111', 'fixed', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', '[\"seat\"]', 'problem', '2', '[\"foot_panel\"]', NULL, '2021-02-24 07:44:34', '2021-02-24 07:44:34'),
(145, 6, '11.5712541, 104.9268111', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1059', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392047', '2021-02-24 12:04:30', '2021-02-24 12:04:30'),
(146, 6, '11.5673532, 104.8920504', 'KIMMO RUPP (មីហឹរកូរ៉េ៧កំរិតគីមម៉ូ សាខាសាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ), Ajisen Ramen, Domino\'s Pizza - IFL, មីទាញតុងយ៉ាំ', '1014', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387880', '2021-02-24 13:01:25', '2021-02-24 13:01:25'),
(147, 6, '11.5502747, 104.9160072', 'The Street Cambodia BKK Branch, 350 BBQ Cafe, Boklahong yok Tbal, Beer Urban House', '1031', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388300', '2021-02-24 13:27:34', '2021-02-24 13:27:34'),
(148, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1021', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426480', '2021-02-24 13:43:11', '2021-02-24 13:43:11'),
(149, 6, '11.5480036, 104.9180367', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1056', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426241', '2021-02-24 13:59:59', '2021-02-24 13:59:59'),
(150, 6, '11.5480036, 104.9180367', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1056', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426241', '2021-02-24 13:59:59', '2021-02-24 13:59:59'),
(151, 6, '11.5480036, 104.9180367', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1056', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426241', '2021-02-24 14:00:00', '2021-02-24 14:00:00'),
(152, 6, '11.5470421, 104.9082211', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1055', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391882', '2021-02-24 14:12:30', '2021-02-24 14:12:30'),
(153, 6, '11.5343603, 104.9224535', 'Fumanlou Restaurant, Pizza Factory Delivery & Takeaway, Hotel De L\'Homme, ឈួន សឿង លក់ គ្រឿង សង្ហារឹម', '1036', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388177', '2021-02-24 14:26:48', '2021-02-24 14:26:48'),
(154, 6, '11.5093003, 104.9315561', 'Tek Kmes Shop, គុយទាវទូកថៃ, អាហារដ្ឋាន ត្រជាក់ចិត្ត, Home dom', '1011', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391304', '2021-02-24 14:42:52', '2021-02-24 14:42:52'),
(155, 6, '11.5093003, 104.9315561', 'Tek Kmes Shop, គុយទាវទូកថៃ, អាហារដ្ឋាន ត្រជាក់ចិត្ត, Home dom', '1058', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391544', '2021-02-24 14:43:38', '2021-02-24 14:43:38'),
(156, 6, '11.5362975, 104.9142318', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1067', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391999', '2021-02-24 15:42:06', '2021-02-24 15:42:06'),
(157, 6, '11.5362116, 104.9140977', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1003', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387914', '2021-02-24 15:44:31', '2021-02-24 15:44:31'),
(158, 6, '11.5373976, 104.9141256', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, De Magic Noodle (L\'Orchidee Restaurant), Waffle Magic', '1029', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391627', '2021-02-24 16:53:06', '2021-02-24 16:53:06'),
(159, 6, '11.5506839, 104.9306395', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Namaste India Restaurant', '1051', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426209', '2021-02-24 18:41:05', '2021-02-24 18:41:05'),
(160, 6, '11.5501056, 104.9255532', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1013', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391833', '2021-02-24 18:46:25', '2021-02-24 18:46:25'),
(161, 6, '11.548661, 104.9187301', 'Deluxe Chicken, Deluxe Chicken, Coin Cafe & Bar, 350 BBQ Cafe', '1056', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426548', '2021-02-24 18:50:42', '2021-02-24 18:50:42'),
(162, 6, '11.5746337, 104.9273839', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1044', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426456', '2021-02-24 19:10:04', '2021-02-24 19:10:04'),
(163, 6, '11.5745137, 104.927325', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1053', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388573', '2021-02-24 19:16:35', '2021-02-24 19:16:35'),
(164, 6, '11.5568225, 104.9082182', 'Koreno Restaurant, Domino\'s Pizza - City Mall, Kakasuki, ផ្សារ​ទំនើប ស៊ីធីម៉ល', '1019', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388219', '2021-02-24 19:45:01', '2021-02-24 19:45:01'),
(165, 6, '11.5746578, 104.9273658', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1010', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426415', '2021-02-24 19:55:53', '2021-02-24 19:55:53'),
(166, 6, '11.571253558810085, 104.92667290638857', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1070', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'fixed', 'problem', 'problem', NULL, 'problem', '2', NULL, '393615(night)', '2021-02-24 23:43:41', '2021-02-24 23:43:41'),
(167, 6, '11.550681731009863, 104.93056793646372', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Namaste India Restaurant', '1051', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '426241(night)', '2021-02-25 00:05:49', '2021-02-25 00:05:49'),
(168, 6, '11.542127570545402, 104.91532599254673', 'KFC, Vibe, Tonle Bassac Restaurant, Fresh Pizza', '1068', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '391395(night)', '2021-02-25 00:18:09', '2021-02-25 00:18:09'),
(169, 6, '11.542127570545402, 104.91532599254673', 'KFC, Vibe, Tonle Bassac Restaurant, Fresh Pizza', '1068', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '391395(night)', '2021-02-25 00:18:09', '2021-02-25 00:18:09'),
(170, 6, '11.542058414763623, 104.91527599889504', 'KFC, Vibe, Tonle Bassac Restaurant, Fresh Pizza', '1013', 'problem', 'problem', 'problem', 'ok', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, 'Night', '2021-02-25 00:23:40', '2021-02-25 00:23:40'),
(171, 6, '11.536251832447352, 104.91419700400098', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1034', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', '[\"front_wheel\"]', 'problem', '2', NULL, '426423(night)', '2021-02-25 00:28:52', '2021-02-25 00:28:52'),
(172, 6, '11.536246434236636, 104.91416717843396', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1011', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', '[\"front_wheel\"]', 'problem', '2', NULL, '388417(night)', '2021-02-25 00:35:19', '2021-02-25 00:35:19'),
(173, 6, '11.536324573518447, 104.91417895110175', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1072', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '391718(night)', '2021-02-25 00:50:55', '2021-02-25 00:50:55'),
(174, 6, '11.546947574554718, 104.90833452094404', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1067', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '388581(night)', '2021-02-25 01:11:48', '2021-02-25 01:11:48'),
(175, 6, '11.550138127201636, 104.92551595535174', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1003', 'fixed', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '420228(night)', '2021-02-25 01:23:10', '2021-02-25 01:23:10'),
(176, 6, '11.55019722116524, 104.92552808170964', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1053', 'fixed', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '388540(night)', '2021-02-25 01:36:11', '2021-02-25 01:36:11'),
(177, 6, '11.563597431820035, 104.91390317392401', 'The Pizza Company - PPIU, iFood(Hot Pot 먹는 집), ផាកកាហ្វេ, MasterSukiSoup (Bak Touk)', '1056', 'problem', 'problem', 'problem', 'ok', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '(Night)', '2021-02-25 01:47:02', '2021-02-25 01:47:02'),
(178, 6, '11.567775908270603, 104.9189097597315', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1064', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '419055(night)', '2021-02-25 01:53:47', '2021-02-25 01:53:47'),
(179, 6, '11.571295464829829, 104.92665968073706', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1059', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '388326(night)', '2021-02-25 01:59:38', '2021-02-25 01:59:38'),
(180, 6, '11.550135950042339, 104.92548862414367', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1070', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '393425(night)', '2021-02-25 02:43:59', '2021-02-25 02:43:59'),
(181, 6, '11.567883968589175, 104.91880342997187', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1014', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '392088(night)', '2021-02-25 02:55:05', '2021-02-25 02:55:05'),
(182, 6, '11.571262220913317, 104.92660322931584', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1044', 'problem', 'problem', 'problem', 'battery_changed', 'problem', 'problem', 'problem', 'problem', 'problem', 'problem', NULL, 'problem', '2', NULL, '392054(night)', '2021-02-25 03:03:36', '2021-02-25 03:03:36'),
(183, 6, '11.5746341, 104.9273011', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1060', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 11:50:56', '2021-02-25 11:50:56'),
(184, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1057', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 11:51:28', '2021-02-25 11:51:28'),
(185, 6, '11.5712777, 104.926634', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1044', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 11:56:43', '2021-02-25 11:56:43');
INSERT INTO `checklists` (`id`, `user_id`, `location`, `nearby`, `plate_no`, `cleaned`, `indicator`, `brake`, `battery`, `mirror`, `crash`, `scratch`, `tire_pressure`, `sticker`, `handle_bar`, `noise`, `vandalism`, `helmet`, `damage`, `comments`, `created_at`, `updated_at`) VALUES
(186, 6, '11.5712777, 104.926634', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1010', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 11:57:17', '2021-02-25 11:57:17'),
(187, 6, '11.5678625, 104.9188551', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1052', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388680', '2021-02-25 12:06:32', '2021-02-25 12:06:32'),
(188, 6, '11.5678625, 104.9188551', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1064', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 12:06:59', '2021-02-25 12:06:59'),
(189, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1014', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 12:07:32', '2021-02-25 12:07:32'),
(190, 6, '11.5636158, 104.9139044', 'The Pizza Company - PPIU, iFood(Hot Pot 먹는 집), ផាកកាហ្វេ, MasterSukiSoup (Bak Touk)', '1021', 'fixed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 12:14:14', '2021-02-25 12:14:14'),
(191, 6, '11.5636158, 104.9139044', 'The Pizza Company - PPIU, iFood(Hot Pot 먹는 집), ផាកកាហ្វេ, MasterSukiSoup (Bak Touk)', '1056', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'ok', 'ok', NULL, 'ok', '2', '[\"rear_wheel\"]', NULL, '2021-02-25 12:16:08', '2021-02-25 12:16:08'),
(192, 6, '11.5527048, 104.9236974', 'Anise Hotel and Restaurant, DNAK Square, Porkei Seafood Restaurant Cambodia (ភោជនីយដ្ឋាន​ ប៉ោកី), Sonoma Oyster', '1075', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426456', '2021-02-25 12:30:41', '2021-02-25 12:30:41'),
(193, 6, '11.5500769, 104.9255167', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1070', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 12:37:06', '2021-02-25 12:37:06'),
(194, 6, '11.5500633, 104.9255183', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1073', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 12:37:30', '2021-02-25 12:37:30'),
(195, 6, '11.5500633, 104.9255183', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1051', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 12:37:53', '2021-02-25 12:37:53'),
(196, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1003', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 12:38:24', '2021-02-25 12:38:24'),
(197, 6, '11.5500633, 104.9255183', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1085', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393615', '2021-02-25 12:39:00', '2021-02-25 12:39:00'),
(198, 6, '11.5479722, 104.9178561', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1029', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 12:54:56', '2021-02-25 12:54:56'),
(199, 6, '11.5479766, 104.9178582', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1056', 'fixed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 12:55:23', '2021-02-25 12:55:23'),
(200, 6, '11.5418286, 104.9152109', 'KFC, Vibe, Tonle Bassac Restaurant, Fresh Pizza', '1068', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 13:01:57', '2021-02-25 13:01:57'),
(201, 6, '11.5418286, 104.9152109', 'KFC, Vibe, Tonle Bassac Restaurant, Fresh Pizza', '1013', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387914', '2021-02-25 13:02:31', '2021-02-25 13:02:31'),
(202, 6, '11.5340966, 104.9224179', 'Fumanlou Restaurant, Pizza Factory Delivery & Takeaway, Hotel De L\'Homme, ឈួន សឿង លក់ គ្រឿង សង្ហារឹម', '1036', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388045', '2021-02-25 13:11:26', '2021-02-25 13:11:26'),
(203, 6, '11.5342065, 104.9187501', 'Domino\'s Pizza - Phsar Doeum Thkov, Mr. Mab, ស្រែ​អំបិល​, Waffle Magic', '1011', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '424915', '2021-02-25 13:18:23', '2021-02-25 13:18:23'),
(204, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1017', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 13:18:52', '2021-02-25 13:18:52'),
(205, 6, '11.5342065, 104.9187501', 'Domino\'s Pizza - Phsar Doeum Thkov, Mr. Mab, ស្រែ​អំបិល​, Waffle Magic', '1034', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 13:19:19', '2021-02-25 13:19:19'),
(206, 6, '11.5470299, 104.9081666', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1069', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 13:28:08', '2021-02-25 13:28:08'),
(207, 6, '11.5469083, 104.9080033', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1067', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 13:28:36', '2021-02-25 13:28:36'),
(208, 6, '11.5467926, 104.9077966', 'The Pizza Company Mao Tse Toung, Thymonysasa, Tong Sin Fooddrink, Cupbop Mao Tse Tong', '1030', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 13:29:03', '2021-02-25 13:29:03'),
(209, 6, '11.5584333, 104.887105', 'គុយទាវទូកប៉ាវចិនជិតផ្សារហេងលី, កាហ្វេ ភូមិ, TCK, អារីណែមនឿង រសជាតិបែបថៃ', '1001', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391601', '2021-02-25 15:16:51', '2021-02-25 15:16:51'),
(210, 6, '11.55773, 104.8873302', 'Happy Family shop គ្រួសាររីករាយ, Eat & Drink, Food, TCK', '1045', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '395925', '2021-02-25 15:17:27', '2021-02-25 15:17:27'),
(211, 1, '11.587382858669335, 104.91782847031892', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1111', 'fixed', 'ok', 'problem', 'ok', 'problem', 'problem', 'problem', 'fixed', 'ok', 'problem', NULL, 'problem', '2', NULL, NULL, '2021-02-25 15:36:06', '2021-02-25 15:36:06'),
(212, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1010', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392047', '2021-02-25 15:41:04', '2021-02-25 15:41:04'),
(213, 1, '11.587329060273461, 104.91789288853434', 'ចាន់អ៉ីមលក់បាយព្រឹក, Hang Bakery, ស៊ុបតារ៉ា ឆ្នាំងភ្លោះ, Deam Tek Dors Restaurant', '1111', 'fixed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'fixed', 'problem', 'problem', NULL, NULL, '1', NULL, NULL, '2021-02-25 16:04:24', '2021-02-25 16:04:24'),
(214, 6, '11.5760134, 104.9263706', 'Mao\'s Bar, MK HALAL- Food, Sundance Riverside & Bar Oz, Hummus House', '1034', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387963', '2021-02-25 16:37:37', '2021-02-25 16:37:37'),
(215, 6, '11.5712456, 104.9266737', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1019', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426530', '2021-02-25 16:42:13', '2021-02-25 16:42:13'),
(216, 6, '11.5708081, 104.9268177', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, The Big Easy Phnom Penh', '1031', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426209', '2021-02-25 16:50:49', '2021-02-25 16:50:49'),
(217, 6, '11.5503963, 104.9316599', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Bonchon, Bar.B.Q Plaza (Aeon Mall), KFC Aeon Mall', '1061', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-25 17:05:56', '2021-02-25 17:05:56'),
(218, 6, '11.5503963, 104.9316599', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Bonchon, Bar.B.Q Plaza (Aeon Mall), KFC Aeon Mall', '1053', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393870', '2021-02-25 17:06:33', '2021-02-25 17:06:33'),
(219, 6, '11.5362481, 104.9142422', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1017', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392070', '2021-02-25 17:37:19', '2021-02-25 17:37:19'),
(220, 6, '11.574840308275254, 104.92709635727442', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1016', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'problem', 'ok', 'ok', NULL, 'ok', '2', NULL, '392237(night)', '2021-02-25 23:44:20', '2021-02-25 23:44:20'),
(221, 6, '11.57448867407346, 104.92752158246799', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1060', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'fixed', 'ok', 'ok', NULL, 'ok', '2', NULL, '436423(night)', '2021-02-25 23:50:14', '2021-02-25 23:50:14'),
(222, 6, '11.571411502872925, 104.92664786601759', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1057', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388391(night)', '2021-02-25 23:56:33', '2021-02-25 23:56:33'),
(223, 6, '11.571368151105368, 104.92662761937743', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1013', 'problem', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, 'Night', '2021-02-26 00:01:17', '2021-02-26 00:01:17'),
(224, 6, '11.550610773228755, 104.93072648229219', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Namaste India Restaurant', '1059', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388177(night)', '2021-02-26 00:11:48', '2021-02-26 00:11:48'),
(225, 6, '11.550592047798348, 104.93067189699863', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, The Village', '1035', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '381321(night)', '2021-02-26 00:22:35', '2021-02-26 00:22:35'),
(226, 6, '11.54801306354107, 104.91804122046055', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1061', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388300(night)', '2021-02-26 00:34:15', '2021-02-26 00:34:15'),
(227, 6, '11.541868779661742, 104.9152762904024', 'KFC, Vibe, Tonle Bassac Restaurant, Fresh Pizza', '1053', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388219(night)', '2021-02-26 00:52:19', '2021-02-26 00:52:19'),
(228, 6, '11.541869547297306, 104.91527511624254', 'KFC, Vibe, Tonle Bassac Restaurant, Fresh Pizza', '1044', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388540(night)', '2021-02-26 01:00:57', '2021-02-26 01:00:57'),
(229, 6, '11.546980653499457, 104.90827572549827', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1069', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392229(night)', '2021-02-26 01:16:27', '2021-02-26 01:16:27'),
(230, 6, '11.536285755054646, 104.91416416400162', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1067', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391999(night)', '2021-02-26 01:28:14', '2021-02-26 01:28:14'),
(231, 6, '11.57444613750379, 104.92761508484881', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1031', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388417(night)', '2021-02-26 01:53:39', '2021-02-26 01:53:39'),
(232, 6, '11.563522639294838, 104.91381971948566', 'The Pizza Company - PPIU, iFood(Hot Pot 먹는 집), ផាកកាហ្វេ, MasterSukiSoup (Bak Touk)', '1075', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '591890(night)', '2021-02-26 02:06:48', '2021-02-26 02:06:48'),
(233, 6, '11.571312606021255, 104.92665620846465', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1031', 'problem', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, 'Night', '2021-02-26 03:18:10', '2021-02-26 03:18:10'),
(234, 6, '11.5746327, 104.9273903', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1034', 'fixed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 11:58:03', '2021-02-26 11:58:03'),
(235, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1016', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 11:58:49', '2021-02-26 11:58:49'),
(236, 6, '11.5746679, 104.9273563', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1060', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 11:59:15', '2021-02-26 11:59:15'),
(237, 6, '11.5713083, 104.9266445', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1057', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:09:14', '2021-02-26 12:09:14'),
(238, 6, '11.5712762, 104.926601', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1019', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:09:37', '2021-02-26 12:09:37'),
(239, 6, '11.5712762, 104.926601', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1013', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:10:01', '2021-02-26 12:10:01'),
(240, 6, '11.5712762, 104.926601', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1031', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:10:20', '2021-02-26 12:10:20'),
(241, 6, '11.5500584, 104.9256144', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1085', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391692', '2021-02-26 12:16:23', '2021-02-26 12:16:23'),
(242, 6, '11.5500584, 104.9256144', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1073', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426456', '2021-02-26 12:17:56', '2021-02-26 12:17:56'),
(243, 6, '11.5501885, 104.9255438', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1003', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:18:34', '2021-02-26 12:18:34'),
(244, 6, '11.5501885, 104.9255438', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1051', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:19:38', '2021-02-26 12:19:38'),
(245, 6, '11.5679073, 104.9188624', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1014', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:21:55', '2021-02-26 12:21:55'),
(246, 6, '11.567876, 104.9188609', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1064', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:22:21', '2021-02-26 12:22:21'),
(247, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1052', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:22:49', '2021-02-26 12:22:49'),
(248, 6, '11.5603093, 104.9291346', 'Artillery Arts Cafe, KFC Norodom, Sleuk Chhouk Restaurant ភោជនីយដ្ឋាន ស្លឹកឈូក, Mara Steak, Wok & Wine', '1029', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426209', '2021-02-26 12:31:50', '2021-02-26 12:31:50'),
(249, 6, '11.5668389, 104.9182617', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1075', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:34:42', '2021-02-26 12:34:42'),
(250, 6, '11.5668389, 104.9182617', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1010', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:35:07', '2021-02-26 12:35:07'),
(251, 6, '11.5668389, 104.9182617', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1021', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 12:35:28', '2021-02-26 12:35:28'),
(252, 6, '11.574638, 104.9273511', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1013', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391387', '2021-02-26 12:41:28', '2021-02-26 12:41:28'),
(253, 6, '11.552529, 104.9236435', 'Anise Hotel and Restaurant, Porkei Seafood Restaurant Cambodia (ភោជនីយដ្ឋាន​ ប៉ោកី), DNAK Square, Sonoma Oyster', '1017', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426183', '2021-02-26 12:47:23', '2021-02-26 12:47:23'),
(254, 6, '11.5363221, 104.9141601', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1011', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393870', '2021-02-26 13:05:51', '2021-02-26 13:05:51'),
(255, 6, '11.5342156, 104.9225242', 'Fumanlou Restaurant, Pizza Factory Delivery & Takeaway, Hotel De L\'Homme, ឈួន សឿង លក់ គ្រឿង សង្ហារឹម', '1036', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '386460', '2021-02-26 13:11:01', '2021-02-26 13:11:01'),
(256, 6, '11.5095494, 104.9313693', 'Tek Kmes Shop, គុយទាវទូកថៃ, Home dom, អាហារដ្ឋាន ត្រជាក់ចិត្ត', '1070', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391833', '2021-02-26 13:35:53', '2021-02-26 13:35:53'),
(257, 6, '11.5095649, 104.9314494', 'Tek Kmes Shop, គុយទាវទូកថៃ, អាហារដ្ឋាន ត្រជាក់ចិត្ត, Home dom', '1058', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388185', '2021-02-26 13:36:30', '2021-02-26 13:36:30'),
(258, 6, '11.5470157, 104.9082089', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1072', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '421874', '2021-02-26 14:01:52', '2021-02-26 14:01:52'),
(259, 6, '11.5479259, 104.9180163', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1055', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '424337', '2021-02-26 14:14:36', '2021-02-26 14:14:36'),
(260, 6, '11.547199, 104.9083036', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1030', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393425', '2021-02-26 15:28:44', '2021-02-26 15:28:44'),
(261, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1072', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 15:29:06', '2021-02-26 15:29:06'),
(262, 6, '11.5479538, 104.9181261', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1056', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391973', '2021-02-26 17:31:28', '2021-02-26 17:31:28'),
(263, 6, '11.5486193, 104.9187', 'Deluxe Chicken, Deluxe Chicken, Coin Cafe & Bar, 350 BBQ Cafe', '1055', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392120', '2021-02-26 17:33:29', '2021-02-26 17:33:29'),
(264, 6, '11.5459893, 104.9093847', 'The Pizza Company Mao Tse Toung, Guang hong, គុយទាវកាត់999, ភោជនីយដ្ឋាន ផ្កាថ្ម', '1069', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391882', '2021-02-26 17:50:32', '2021-02-26 17:50:32'),
(265, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1069', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '403455', '2021-02-26 23:34:10', '2021-02-26 23:34:10'),
(266, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1055', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-26 23:48:06', '2021-02-26 23:48:06'),
(267, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1035', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387914', '2021-02-26 23:56:45', '2021-02-26 23:56:45'),
(268, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1068', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388144', '2021-02-27 00:04:02', '2021-02-27 00:04:02'),
(269, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1060', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387880', '2021-02-27 00:14:15', '2021-02-27 00:14:15'),
(270, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1067', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388714', '2021-02-27 00:24:32', '2021-02-27 00:24:32'),
(271, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1011', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426308', '2021-02-27 00:43:24', '2021-02-27 00:43:24'),
(272, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1051', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '1', NULL, '388326', '2021-02-27 00:52:47', '2021-02-27 00:52:47'),
(273, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1053', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388011', '2021-02-27 01:01:03', '2021-02-27 01:01:03'),
(274, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1017', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, NULL, '2', NULL, '391718', '2021-02-27 01:36:59', '2021-02-27 01:36:59'),
(275, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1044', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-27 01:47:20', '2021-02-27 01:47:20'),
(276, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1011', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-27 01:48:13', '2021-02-27 01:48:13'),
(277, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1059', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392187', '2021-02-27 02:15:50', '2021-02-27 02:15:50'),
(278, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1029', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393615', '2021-02-27 02:19:29', '2021-02-27 02:19:29'),
(279, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1034', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391882', '2021-02-27 02:24:43', '2021-02-27 02:24:43'),
(280, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1013', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '425953', '2021-02-27 02:26:00', '2021-02-27 02:26:00'),
(281, 1, '11.5746929, 104.9273596', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1019', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393870', '2021-02-27 12:15:16', '2021-02-27 12:15:16'),
(282, 1, '11.5602674, 104.9291057', 'Artillery Arts Cafe, KFC Norodom, Sleuk Chhouk Restaurant ភោជនីយដ្ឋាន ស្លឹកឈូក, Mara Steak, Wok & Wine', '1061', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426530', '2021-02-27 12:42:13', '2021-02-27 12:42:13'),
(283, 1, '11.5677918, 104.9189233', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1014', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388581', '2021-02-27 12:55:08', '2021-02-27 12:55:08'),
(284, 1, '11.5677498, 104.918933', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1064', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391544', '2021-02-27 12:55:55', '2021-02-27 12:55:55'),
(285, 1, '11.5678431, 104.918902', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1052', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '394035', '2021-02-27 12:56:58', '2021-02-27 12:56:58'),
(286, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1021', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426183', '2021-02-27 13:06:58', '2021-02-27 13:06:58'),
(287, 1, '11.5480927, 104.9180115', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1054', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388177', '2021-02-27 13:21:12', '2021-02-27 13:21:12'),
(288, 1, '11.5480913, 104.9180179', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1011', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391999', '2021-02-27 13:47:09', '2021-02-27 13:47:09'),
(289, 1, '11.5479984, 104.9180126', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1060', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392070', '2021-02-27 13:58:52', '2021-02-27 13:58:52'),
(290, 1, '11.5508753, 104.9172381', 'Beer Urban House, Boklahong yok Tbal, 350 BBQ Cafe, The Street Cambodia BKK Branch', '1036', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388060', '2021-02-27 14:17:29', '2021-02-27 14:17:29'),
(291, 1, '11.5559498, 104.9261248', 'Anise Hotel and Restaurant, Jaru Korean Restaurant, India Western Khmer - Angkor India, Terrazza', '1059', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-02-27 14:28:11', '2021-02-27 14:28:11'),
(292, 1, '11.5711681, 104.9265405', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1055', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '381321', '2021-02-27 14:32:42', '2021-02-27 14:32:42'),
(293, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1016', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426423', '2021-02-27 14:40:51', '2021-02-27 14:40:51'),
(294, 1, '11.5444322, 104.9102933', 'Tonle Bassac Restaurant, Fresh Pizza, The Pizza Company Mao Tse Toung, បងប្អូនខ្ញុំ', '1017', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388300', '2021-02-27 17:44:20', '2021-02-27 17:44:20'),
(295, 1, '11.5335982, 104.9143084', 'Domino\'s Pizza - Phsar Doeum Thkov, The Pizza Company - Sonsam Kosal, Waffle Magic, L\'Orchidee Restaurant', '1054', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426480', '2021-02-27 17:52:40', '2021-02-27 17:52:40'),
(296, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1073', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '383202', '2021-02-27 18:06:02', '2021-02-27 18:06:02'),
(297, 1, '11.548768, 104.9300088', 'Celeste Revolving Skybar, The Village, Bonchon, KFC Aeon Mall', '1051', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426308', '2021-02-27 19:49:20', '2021-02-27 19:49:20'),
(298, 1, '11.5586064, 104.9288481', 'La Rose Suites, Artillery Arts Cafe, Sleuk Chhouk Restaurant ភោជនីយដ្ឋាន ស្លឹកឈូក, Lone Pine Café', '1029', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387880', '2021-02-27 19:58:48', '2021-02-27 19:58:48'),
(299, 6, '11.574568675085503, 104.92741492981935', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1034', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', '[\"front_wheel\"]', 'ok', '2', NULL, '393615(night)', '2021-02-27 23:43:54', '2021-02-27 23:43:54'),
(300, 6, '11.57458136985184, 104.92750652152073', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1017', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426381(night)', '2021-02-27 23:47:56', '2021-02-27 23:47:56'),
(301, 6, '11.571246497044642, 104.92669250958971', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1055', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, 'Night', '2021-02-27 23:52:51', '2021-02-27 23:52:51'),
(302, 6, '11.55065904635142, 104.93054782585347', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Namaste India Restaurant', '1051', 'problem', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, 'Night', '2021-02-28 00:04:10', '2021-02-28 00:04:10'),
(303, 6, '11.550185026480868, 104.92546733662415', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1044', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388144(night)', '2021-02-28 00:15:42', '2021-02-28 00:15:42'),
(304, 6, '11.547938218670268, 104.91810259471039', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1059', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426456(night)', '2021-02-28 00:25:27', '2021-02-28 00:25:27'),
(305, 6, '11.542022876959987, 104.91528714258122', 'KFC, Vibe, Fresh Pizza, ស៊ីសេម នូដល បា', '1073', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '386270(night)', '2021-02-28 00:30:47', '2021-02-28 00:30:47'),
(306, 6, '11.54204296593725, 104.91526862528941', 'KFC, Vibe, Fresh Pizza, ស៊ីសេម នូដល បា', '1019', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388177(night)', '2021-02-28 00:33:13', '2021-02-28 00:33:13'),
(307, 6, '11.536373972726613, 104.91419261765282', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1016', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388680(night)', '2021-02-28 00:43:06', '2021-02-28 00:43:06'),
(308, 6, '11.536443675797264, 104.91420808273776', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1067', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391718(night)', '2021-02-28 00:46:13', '2021-02-28 00:46:13'),
(309, 6, '11.536353438646797, 104.91415730710997', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1011', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '342237(night)', '2021-02-28 00:52:08', '2021-02-28 00:52:08'),
(310, 6, '11.54714718620665, 104.90808485288338', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1030', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '386460(night)', '2021-02-28 01:00:58', '2021-02-28 01:00:58'),
(311, 6, '11.54726979452443, 104.9080289008952', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1041', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '397186(night)', '2021-02-28 01:17:42', '2021-02-28 01:17:42'),
(312, 6, '11.547908443985941, 104.91807014019766', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1061', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '403455(night)', '2021-02-28 02:06:34', '2021-02-28 02:06:34'),
(313, 6, '11.567387618062336, 104.89194141106975', 'KIMMO RUPP (មីហឹរកូរ៉េ៧កំរិតគីមម៉ូ សាខាសាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ), Ajisen Ramen, Domino\'s Pizza - IFL, មីទាញតុងយ៉ាំ', '1017', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393664(night)', '2021-02-28 02:27:00', '2021-02-28 02:27:00'),
(314, 6, '11.574439900865025, 104.92762327951745', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1041', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '404883(night)', '2021-02-28 03:13:16', '2021-02-28 03:13:16'),
(315, 6, '11.574607102039435, 104.92738553017897', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1013', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392187(night)', '2021-02-28 03:23:45', '2021-02-28 03:23:45'),
(316, 1, '11.571584, 104.9266568', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1003', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '397186', '2021-02-28 13:25:18', '2021-02-28 13:25:18'),
(317, 1, '11.5547843, 104.9306721', 'La Rose Suites, Sovanna Hotel, ភោជនីយដ្ឋាន​ ស្លឹកត្នោត​ (Sleuk Tnort Restaurant), Banana Tree Restaurant', '1085', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '425953', '2021-02-28 13:49:51', '2021-02-28 13:49:51'),
(318, 1, '11.5547843, 104.9306721', 'La Rose Suites, Sovanna Hotel, ភោជនីយដ្ឋាន​ ស្លឹកត្នោត​ (Sleuk Tnort Restaurant), Banana Tree Restaurant', '1035', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388680', '2021-02-28 13:52:11', '2021-02-28 13:52:11'),
(319, 1, '11.550207, 104.9255546', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1059', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391882', '2021-02-28 14:02:24', '2021-02-28 14:02:24'),
(320, 1, '11.5496532, 104.8952498', 'The Pizza Company, អាហារដ្ឋាន ដេីមច័ន្ទ, អាហារដ្ឋានធម្មជាតិ, គ្រឿងសមុទ្រអាំង271', '1045', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426456', '2021-02-28 14:25:03', '2021-02-28 14:25:03'),
(321, 1, '11.5494322, 104.9268689', 'Super Muu Cambodia BBQ Shop, Farm To Table, Eleven One Kitchen - BKK1, The Village', '1045', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388540', '2021-02-28 14:27:02', '2021-02-28 14:27:02'),
(322, 1, '11.5494322, 104.9268689', 'Super Muu Cambodia BBQ Shop, Farm To Table, Eleven One Kitchen - BKK1, The Village', '1001', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391387', '2021-02-28 14:28:50', '2021-02-28 14:28:50'),
(323, 1, '11.5469757, 104.9082121', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1054', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388714', '2021-02-28 17:20:05', '2021-02-28 17:20:05'),
(324, 1, '11.5223435, 104.9055115', 'Borey Phnommeas, Teas bro vid, Vic\'s Cafe, Leap Monorom Restaurant', '1031', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426381', '2021-02-28 17:34:26', '2021-02-28 17:34:26'),
(325, 1, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1075', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426423', '2021-02-28 18:05:57', '2021-02-28 18:05:57'),
(326, 1, '11.5494815, 104.9300625', 'The Village, Celeste Revolving Skybar, Bonchon, Super Muu Cambodia BBQ Shop', '1070', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '420228', '2021-02-28 19:47:53', '2021-02-28 19:47:53'),
(327, 1, '11.5636906, 104.9336491', 'Mealea Restaurant: Fine Dining Traditional Khmer Cuisine, Backyard Cafe, Chabad Cambodia - Jewish Center בית חבד קמבודיה, Bonchon Riverside', '1029', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387915', '2021-02-28 20:05:17', '2021-02-28 20:05:17'),
(328, 1, '11.5636906, 104.9336491', 'Mealea Restaurant: Fine Dining Traditional Khmer Cuisine, Backyard Cafe, Chabad Cambodia - Jewish Center בית חבד קמבודיה, Bonchon Riverside', '1055', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '428361', '2021-02-28 20:09:14', '2021-02-28 20:09:14'),
(329, 1, '11.5684742, 104.9282067', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, The Big Easy Phnom Penh', '1029', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 00:41:47', '2021-03-01 00:41:47'),
(330, 1, '11.5684742, 104.9282067', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, The Big Easy Phnom Penh', '1013', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '381321', '2021-03-01 00:55:31', '2021-03-01 00:55:31'),
(331, 6, '11.5679454, 104.9154413', 'Thing Thing Restaurant, Orussey Restaurant, Sam Too Restaurant, The Spoon', '1059', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '419386', '2021-03-01 01:07:38', '2021-03-01 01:07:38'),
(332, 6, '11.5362978, 104.9143275', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1016', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391890', '2021-03-01 01:30:34', '2021-03-01 01:30:34'),
(333, 6, '11.5362961, 104.9143279', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1061', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 01:31:08', '2021-03-01 01:31:08'),
(334, 6, '11.5363015, 104.914201', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1011', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388417', '2021-03-01 01:34:00', '2021-03-01 01:34:00'),
(335, 6, '11.5364071, 104.9142098', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1030', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391692', '2021-03-01 01:56:20', '2021-03-01 01:56:20'),
(336, 6, '11.5469439, 104.9087721', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, The Love Cake & Ice Cream', '1017', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393425', '2021-03-01 02:30:28', '2021-03-01 02:30:28'),
(337, 6, '11.5737535, 104.9248318', 'Monsoon Boutique Hotel & Spa, Mao\'s Bar, MK HALAL- Food, Armand\'s', '1041', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388011', '2021-03-01 03:02:41', '2021-03-01 03:02:41'),
(338, 6, '11.5746596, 104.9274774', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '41', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 11:50:50', '2021-03-01 11:50:50'),
(339, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1034', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 11:51:15', '2021-03-01 11:51:15'),
(340, 6, '11.5712461, 104.9266159', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1029', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 12:12:44', '2021-03-01 12:12:44'),
(341, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1003', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 12:13:10', '2021-03-01 12:13:10'),
(342, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1055', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 12:13:37', '2021-03-01 12:13:37'),
(343, 6, '11.5621952, 104.9157473', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Urban, De Bokor - Food & Drink', '1021', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '417059', '2021-03-01 12:37:09', '2021-03-01 12:37:09'),
(344, 6, '11.5623263, 104.9143566', 'iFood(Hot Pot 먹는 집), The Pizza Company - PPIU, ផាកកាហ្វេ, Old Guy Noodle', '1010', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'problem', 'ok', 'ok', NULL, 'ok', '2', NULL, '404883', '2021-03-01 12:40:22', '2021-03-01 12:40:22'),
(345, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1013', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 12:41:05', '2021-03-01 12:41:05'),
(346, 6, '11.5680132, 104.9188502', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1014', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392021', '2021-03-01 12:54:57', '2021-03-01 12:54:57'),
(347, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '64', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '419055', '2021-03-01 12:55:28', '2021-03-01 12:55:28'),
(348, 6, '11.5479643, 104.9180204', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1075', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 13:20:49', '2021-03-01 13:20:49'),
(349, 6, '11.5481761, 104.9182617', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1070', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 13:21:17', '2021-03-01 13:21:17'),
(350, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1059', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 13:21:41', '2021-03-01 13:21:41'),
(351, 6, '11.5342564, 104.922575', 'Fumanlou Restaurant, Pizza Factory Delivery & Takeaway, Hotel De L\'Homme, ឈួន សឿង លក់ គ្រឿង សង្ហារឹម', '1044', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391882', '2021-03-01 13:32:34', '2021-03-01 13:32:34'),
(352, 6, '11.5095389, 104.9313766', 'Tek Kmes Shop, គុយទាវទូកថៃ, Sokunoundom sloy zin, Home dom', '1035', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392187', '2021-03-01 13:48:28', '2021-03-01 13:48:28'),
(353, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1058', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391825', '2021-03-01 13:49:00', '2021-03-01 13:49:00'),
(354, 6, '11.5417049, 104.913983', 'KFC, Vibe, Fresh Pizza, ស៊ីសេម នូដល បា', '1051', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388300', '2021-03-01 14:33:08', '2021-03-01 14:33:08'),
(355, 6, '11.5580401, 104.887483', 'TCK, Happy Family shop គ្រួសាររីករាយ, គុយទាវ​ប៉ាវ ចិន ភ្នំពេញ​, គុយទាវទូកប៉ាវចិនជិតផ្សារហេងលី', '1001', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 14:57:15', '2021-03-01 14:57:15'),
(356, 6, '11.5580401, 104.887483', 'TCK, Happy Family shop គ្រួសាររីករាយ, គុយទាវ​ប៉ាវ ចិន ភ្នំពេញ​, គុយទាវទូកប៉ាវចិនជិតផ្សារហេងលី', '1045', 'fixed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 14:57:47', '2021-03-01 14:57:47'),
(357, 6, '11.5453833, 104.9056767', 'The Pizza Company Mao Tse Toung, Thymonysasa, អាហាដ្ឋាន មី.ទា សុវណ្ណា (Duck Noodle), Grab Chicken', '1044', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392237', '2021-03-01 18:10:08', '2021-03-01 18:10:08'),
(358, 6, '11.5469697, 104.9082156', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1031', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393664', '2021-03-01 18:23:52', '2021-03-01 18:23:52'),
(359, 6, '11.5502419, 104.9255719', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1056', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426480', '2021-03-01 18:36:06', '2021-03-01 18:36:06'),
(360, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1036', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'problem', NULL, 'ok', '2', NULL, '392047', '2021-03-01 18:36:44', '2021-03-01 18:36:44'),
(361, 6, '11.5502419, 104.9255719', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1060', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391395', '2021-03-01 18:37:20', '2021-03-01 18:37:20'),
(362, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1085', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-01 18:37:43', '2021-03-01 18:37:43'),
(363, 6, '11.5496116, 104.9302599', 'The Village, Celeste Revolving Skybar, Bonchon, KFC Aeon Mall', '1061', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388219', '2021-03-01 19:02:57', '2021-03-01 19:02:57'),
(364, 6, '11.5750698, 104.9278082', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1041', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388078', '2021-03-01 19:17:26', '2021-03-01 19:17:26');
INSERT INTO `checklists` (`id`, `user_id`, `location`, `nearby`, `plate_no`, `cleaned`, `indicator`, `brake`, `battery`, `mirror`, `crash`, `scratch`, `tire_pressure`, `sticker`, `handle_bar`, `noise`, `vandalism`, `helmet`, `damage`, `comments`, `created_at`, `updated_at`) VALUES
(365, 6, '11.574701640062496, 104.92734725062', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1075', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387807(night)', '2021-03-01 23:41:39', '2021-03-01 23:41:39'),
(366, 6, '11.574480650020694, 104.9275446912106', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1034', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', '[\"front_wheel\"]', 'ok', '2', NULL, '388011(night)', '2021-03-01 23:47:20', '2021-03-01 23:47:20'),
(367, 6, '11.571218318068771, 104.92676708153171', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1053', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391973(night)', '2021-03-01 23:54:08', '2021-03-01 23:54:08'),
(368, 6, '11.571219964407579, 104.9267747179325', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1068', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391833(night)', '2021-03-02 00:08:41', '2021-03-02 00:08:41'),
(369, 6, '11.547925586859778, 104.91807718977253', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1054', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426381(night)', '2021-03-02 00:24:09', '2021-03-02 00:24:09'),
(370, 6, '11.550158442118299, 104.92561785675507', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1051', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '386860(night)', '2021-03-02 00:28:21', '2021-03-02 00:28:21'),
(371, 6, '11.550117610133313, 104.9256250415281', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1055', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '417562(night)', '2021-03-02 00:29:47', '2021-03-02 00:29:47'),
(372, 6, '11.536258437137581, 104.91427562953729', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1059', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '394753(night)', '2021-03-02 00:59:10', '2021-03-02 00:59:10'),
(373, 6, '11.546987565006729, 104.90826539611496', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1044', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391544(night)', '2021-03-02 01:17:58', '2021-03-02 01:17:58'),
(374, 6, '11.54701162779388, 104.90823627855721', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1017', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388573(night)', '2021-03-02 01:19:54', '2021-03-02 01:19:54'),
(375, 6, '11.546997635300729, 104.90824121858523', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1016', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '425590(night)', '2021-03-02 01:26:27', '2021-03-02 01:26:27'),
(376, 6, '11.563559088482378, 104.91389050601187', 'iFood(Hot Pot 먹는 집), The Pizza Company - PPIU, ផាកកាហ្វេ, MasterSukiSoup (Bak Touk)', '1068', 'problem', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, 'Night', '2021-03-02 01:46:31', '2021-03-02 01:46:31'),
(377, 6, '11.550338329735817, 104.92549578114271', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, Genki Sushi', '1041', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '419050(night)', '2021-03-02 02:00:32', '2021-03-02 02:00:32'),
(378, 6, '11.542044885109794, 104.9153055070346', 'KFC, Vibe, Fresh Pizza, ស៊ីសេម នូដល បា', '1019', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '394035(night)', '2021-03-02 02:09:14', '2021-03-02 02:09:14'),
(379, 6, '11.574640401164963, 104.92731772512957', 'Monsoon Boutique Hotel & Spa, Golden House International, Mao\'s Bar, MK HALAL- Food', '1060', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388714(night)', '2021-03-02 03:11:30', '2021-03-02 03:11:30'),
(380, 6, '11.5711965, 104.9265675', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1075', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 11:59:07', '2021-03-02 11:59:07'),
(381, 6, '11.5711965, 104.9265675', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1034', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 11:59:35', '2021-03-02 11:59:35'),
(382, 6, '11.5712219, 104.9265658', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1060', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 12:00:06', '2021-03-02 12:00:06'),
(383, 6, '11.5619541, 104.9288197', 'Artillery Arts Cafe, KFC Norodom, Fat Passion Restaurant, La Pergola', '1003', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 12:15:33', '2021-03-02 12:15:33'),
(384, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1053', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 12:16:27', '2021-03-02 12:16:27'),
(385, 6, '11.5620563, 104.9288491', 'Artillery Arts Cafe, KFC Norodom, Fat Passion Restaurant, La Pergola', '1029', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 12:16:52', '2021-03-02 12:16:52'),
(386, 6, '11.5620563, 104.9288491', 'Artillery Arts Cafe, KFC Norodom, Fat Passion Restaurant, La Pergola', '1056', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 12:30:24', '2021-03-02 12:30:24'),
(387, 6, '11.5502119, 104.9255782', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1055', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 12:30:53', '2021-03-02 12:30:53'),
(388, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1051', 'fixed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 12:31:24', '2021-03-02 12:31:24'),
(389, 6, '11.5502037, 104.925554', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1036', 'fixed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, NULL, '2021-03-02 12:32:04', '2021-03-02 12:32:04'),
(390, 6, '11.5502037, 104.925554', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1070', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391890', '2021-03-02 12:38:51', '2021-03-02 12:38:51'),
(391, 6, '11.5480132, 104.9180079', 'Cocina Cartel, Deluxe Chicken, Deluxe Chicken, មីហឹរ7កម្រិត', '1072', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391395', '2021-03-02 12:40:07', '2021-03-02 12:40:07'),
(392, 6, '11.5469801, 104.9081346', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1044', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '426308', '2021-03-02 13:00:09', '2021-03-02 13:00:09'),
(393, 6, '11.542075, 104.9152279', 'KFC, Vibe, Fresh Pizza, ស៊ីសេម នូដល បា', '1041', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388698', '2021-03-02 13:09:31', '2021-03-02 13:09:31'),
(394, 6, '11.542075, 104.9152279', 'KFC, Vibe, Fresh Pizza, ស៊ីសេម នូដល បា', '1021', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '383202', '2021-03-02 13:28:00', '2021-03-02 13:28:00'),
(395, 6, '11.5768533, 104.9172756', 'Raffles Hotel Le Royal, The Eighty8 Phnom Penh, New Pho Paris, Restaurant Le Royal', '1050', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388011', '2021-03-02 16:03:56', '2021-03-02 16:03:56'),
(396, 6, '11.567826, 104.918642', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1052', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '397963', '2021-03-02 16:13:41', '2021-03-02 16:13:41'),
(397, 6, '11.5625, 104.916', 'iFood(Hot Pot 먹는 집), G Mekong Hotel, Pho de Paris Restaurant, Urban', '1014', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '419386', '2021-03-02 16:15:40', '2021-03-02 16:15:40'),
(398, 6, '11.5498718, 104.9302793', 'The Village, Celeste Revolving Skybar, S&P Thai Restaurant & Bakery Aeon Mall Branch, Bonchon', '1062', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391957', '2021-03-02 16:56:57', '2021-03-02 16:56:57'),
(399, 6, '11.5506397, 104.9307212', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Namaste India Restaurant', '1035', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '417059', '2021-03-02 17:06:53', '2021-03-02 17:06:53'),
(400, 6, '11.5506519, 104.9305479', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Namaste India Restaurant', '1085', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388078', '2021-03-02 17:11:52', '2021-03-02 17:11:52'),
(401, 6, '11.5577917, 104.8874221', 'Happy Family shop គ្រួសាររីករាយ, Eat & Drink, Food, TCK', '1001', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388326', '2021-03-02 17:20:20', '2021-03-02 17:20:20'),
(402, 6, '11.5577917, 104.8874221', 'Happy Family shop គ្រួសាររីករាយ, Eat & Drink, Food, TCK', '1045', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388060', '2021-03-02 17:20:54', '2021-03-02 17:20:54'),
(403, 6, '11.5394776, 104.9169316', 'ស្រែ​អំបិល​, KFC, L\'Orchidee Restaurant, ស៊ីសេម នូដល បា', '1011', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388144', '2021-03-02 17:35:53', '2021-03-02 17:35:53'),
(404, 6, '11.5362123, 104.9141782', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1067', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388177', '2021-03-02 17:36:25', '2021-03-02 17:36:25'),
(405, 6, '11.5386687, 104.9141057', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, KFC, De Magic Noodle (L\'Orchidee Restaurant)', '1061', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393615', '2021-03-02 17:43:42', '2021-03-02 17:43:42'),
(406, 6, '11.5422544, 104.9142886', 'KFC, Vibe, Fresh Pizza, ស៊ីសេម នូដល បា', '1033', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393870', '2021-03-02 18:01:10', '2021-03-02 18:01:10'),
(407, 6, '11.5477803, 104.9143951', 'មីហឹរ7កម្រិត, Fresh Pizza, 350 BBQ Cafe, Deluxe Chicken', '1031', 'ok', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '419055', '2021-03-02 19:29:38', '2021-03-02 19:29:38'),
(408, 6, '11.571246196209074, 104.92662459089027', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1003', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392021(night)', '2021-03-02 23:43:36', '2021-03-02 23:43:36'),
(409, 6, '11.550106520540494, 104.92555939533533', 'DNAK Square, Eleven One Kitchen - BKK1, The Heli Boutique Hotel, E&M Coffee', '1016', 'fixed', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392153(night)', '2021-03-02 23:59:52', '2021-03-02 23:59:52'),
(410, 6, '11.550115984040508, 104.9255620793302', 'DNAK Square, Eleven One Kitchen - BKK1, E&M Coffee, The Heli Boutique Hotel', '1053', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '393664(night night)', '2021-03-03 00:03:35', '2021-03-03 00:03:35'),
(411, 6, '11.542047389651293, 104.91530377665511', 'KFC, Vibe, Fresh Pizza, ស៊ីសេម នូដល បា', '1061', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391601(night)', '2021-03-03 00:16:33', '2021-03-03 00:16:33'),
(412, 6, '11.536281024464621, 104.91421800032468', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1059', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '386460(night )', '2021-03-03 00:22:40', '2021-03-03 00:22:40'),
(413, 6, '11.536300366198494, 104.91420947200685', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1013', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388417(night)', '2021-03-03 00:28:29', '2021-03-03 00:28:29'),
(414, 6, '11.536294926808813, 104.91415527566512', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1011', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '392120(night)', '2021-03-03 00:33:27', '2021-03-03 00:33:27'),
(415, 6, '11.54679541051067, 104.90807181276536', 'The Pizza Company Mao Tse Toung, Thymonysasa, Cupbop Mao Tse Tong, Tong Sin Fooddrink', '1067', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '391544(night)', '2021-03-03 00:48:43', '2021-03-03 00:48:43'),
(416, 6, '11.536336928115515, 104.9143376524046', 'ស្រែ​អំបិល​, L\'Orchidee Restaurant, Waffle Magic, De Magic Noodle (L\'Orchidee Restaurant)', '1019', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', '[\"front_wheel\"]', 'ok', '2', NULL, '420228(night)', '2021-03-03 00:57:55', '2021-03-03 00:57:55'),
(417, 6, '11.550655007014894, 104.93054234316375', 'S&P Thai Restaurant & Bakery Aeon Mall Branch, Mama Wong\'s Dumpling and Noodle House, Bistrot Bassac, Namaste India Restaurant', '1021', 'problem', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, 'Night', '2021-03-03 01:11:53', '2021-03-03 01:11:53'),
(418, 6, '11.563564763589882, 104.91385083763785', 'The Pizza Company - PPIU, iFood(Hot Pot 먹는 집), ផាកកាហ្វេ, MasterSukiSoup (Bak Touk)', '1041', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388219', '2021-03-03 01:26:16', '2021-03-03 01:26:16'),
(419, 6, '11.567364509823184, 104.89203861851252', 'KIMMO RUPP (មីហឹរកូរ៉េ៧កំរិតគីមម៉ូ សាខាសាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ), Ajisen Ramen, Domino\'s Pizza - IFL, មីទាញតុងយ៉ាំ', '1031', 'problem', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, 'Night', '2021-03-03 01:39:59', '2021-03-03 01:39:59'),
(420, 6, '11.567782904564064, 104.91881204654909', 'Thing Thing Restaurant, Sorya Restaurant, Sam Too Restaurant, Orussey Restaurant', '1035', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '388011(night)', '2021-03-03 01:51:26', '2021-03-03 01:51:26'),
(421, 6, '11.571163397416319, 104.92667259056746', 'Monsoon Boutique Hotel & Spa, Le Grand Mekong, Golden House International, Fatboy Sub & Sandwich', '1075', 'problem', 'ok', 'ok', 'battery_changed', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', NULL, 'ok', '2', NULL, '387872(night)', '2021-03-03 01:59:41', '2021-03-03 01:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_01_22_090653_roles', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', '[\"security\", \"analytics\"]', '2021-01-21 18:30:00', '2021-01-21 18:30:00'),
(3, 'employee', '[\"Checklist\"]', '2021-02-18 18:37:44', '2021-02-18 18:37:44'),
(4, 'test test', '[\"Checklist\"]', '2021-02-18 18:45:59', '2021-02-18 18:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(10) DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@gmail.com', NULL, '$2y$10$TaoS32/rxD81SvQoYGjO1OyEfBN6B2LK2y08r1Ri5WHNLsKJ1aiJ2', 1, NULL, NULL, NULL),
(3, NULL, 'Albert', 'albert@oyika.com', NULL, '$2y$10$2o7LAKaYLNgGFohWhE96IuMo9t.1n5aVt2evOwpdN6Q0O2NZ4KdQ2', 1, NULL, '2021-01-29 17:49:40', '2021-01-29 17:49:40'),
(4, NULL, 'Albert', 'albertsoerjonoto98@gmail.com', NULL, '$2y$10$2o7LAKaYLNgGFohWhE96IuMo9t.1n5aVt2evOwpdN6Q0O2NZ4KdQ2', 1, NULL, '2021-01-29 17:50:11', '2021-01-29 17:50:11'),
(5, 3, 'test test', 'test@gmail.com', NULL, '$2y$10$nyc4nPXPZ4w3pNtKGb8M/uyftHobnk..KravF9vVq8EvvjP4.33cG', 1, NULL, '2021-02-05 16:22:45', '2021-02-18 18:44:47'),
(6, 3, 'employee1', 'e1@gmail.com', NULL, '$2y$10$HWqJi59OvSy6eSQJFhrnme48ITf3jNUxGnSy1cD6GQ13jieZg9zre', 1, NULL, '2021-02-18 18:39:07', '2021-02-18 18:39:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checklists`
--
ALTER TABLE `checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checklists`
--
ALTER TABLE `checklists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
