-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2021 at 07:05 PM
-- Server version: 8.0.13
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netcorp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `agi_log`
--

CREATE TABLE IF NOT EXISTS `agi_log` (
  `vehicle_id` int(10) unsigned NOT NULL,
  `local_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `engine` tinyint(4) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `speed` smallint(6) DEFAULT NULL,
  `direction` smallint(6) DEFAULT NULL,
  `agi_load_kilo` mediumint(9) DEFAULT NULL,
  `agi_water_meter` mediumint(9) DEFAULT NULL,
  `agi_barrel_rpm` smallint(6) DEFAULT NULL,
  `agi_comm_rpm` smallint(6) DEFAULT NULL,
  `PSI` smallint(6) DEFAULT NULL,
  `FLL` tinyint(3) unsigned DEFAULT NULL,
  `TFU` mediumint(8) unsigned DEFAULT NULL,
  `TVD` mediumint(8) unsigned DEFAULT NULL,
  `TRC` int(10) unsigned DEFAULT NULL,
  `engine_hours` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `agi_log`
--

INSERT INTO `agi_log` (`vehicle_id`, `local_time`, `engine`, `lat`, `lng`, `speed`, `direction`, `agi_load_kilo`, `agi_water_meter`, `agi_barrel_rpm`, `agi_comm_rpm`, `PSI`, `FLL`, `TFU`, `TVD`, `TRC`, `engine_hours`) VALUES
(98, '2021-11-12 02:18:03', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:17:33', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:17:53', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:17:13', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:17:43', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:17:23', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:16:53', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:17:03', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:16:23', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:16:33', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:16:43', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:16:13', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:15:33', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:16:03', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:15:53', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:15:23', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:15:13', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:15:43', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:14:34', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:15:03', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:14:54', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:14:24', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:14:44', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:14:14', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0),
(98, '2021-11-12 02:13:44', 1, -33.920358, 150.966063, 0, 58, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 612, 0);


-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE IF NOT EXISTS `drivers` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'James', '2021-11-20 14:12:47', NULL),
(2, 'Evelyn', '2021-11-20 14:12:47', NULL),
(3, 'Harpe', '2021-11-20 14:12:47', NULL),
(4, 'Mason', '2021-11-20 14:12:47', NULL),
(5, 'Ella', '2021-11-20 14:12:47', NULL),
(6, 'Jackson', '2021-11-20 14:12:47', NULL),
(7, 'Avery', '2021-11-20 14:12:47', NULL),
(8, 'Scarlett', '2021-11-20 14:12:47', NULL),
(9, 'Jack', '2021-11-20 14:12:47', NULL),
(10, 'Eleanor', '2021-11-20 14:12:47', NULL),
(11, 'Madison', '2021-11-20 14:12:47', NULL),
(12, 'Ellie', '2021-11-20 14:12:47', NULL),
(13, 'James', '2021-11-20 14:13:08', NULL),
(14, 'Evelyn', '2021-11-20 14:13:08', NULL),
(15, 'Harpe', '2021-11-20 14:13:08', NULL),
(16, 'Mason', '2021-11-20 14:13:08', NULL),
(17, 'Ella', '2021-11-20 14:13:08', NULL),
(18, 'Jackson', '2021-11-20 14:13:08', NULL),
(19, 'Avery', '2021-11-20 14:13:08', NULL),
(20, 'Scarlett', '2021-11-20 14:13:08', NULL),
(21, 'Jack', '2021-11-20 14:13:08', NULL),
(22, 'Eleanor', '2021-11-20 14:13:08', NULL),
(23, 'Madison', '2021-11-20 14:13:08', NULL),
(24, 'Ellie', '2021-11-20 14:13:08', NULL),
(25, 'James', '2021-11-20 14:14:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE IF NOT EXISTS `permission_user` (
  `id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2021-03-31 11:20:29', '2021-03-31 11:20:29', NULL),
(2, 'User', 'user', 'User Role', 1, '2021-03-31 11:20:29', '2021-03-31 11:20:29', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, '2021-12-03 15:48:08', '2021-12-03 15:48:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `last_login_at`, `email_verified_at`, `status`, `deleted`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Dilan Withanachchi', 'dilan.net@gmail.com', '$2y$10$TugTSf6VaPn4nDtqlreuPuOuGcUxMarb3DirUXhSPSwwsdpRNmlXi', NULL, NULL, NULL, 1, 0, '2021-12-03 15:48:07', '2021-12-03 15:48:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(10) unsigned NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `manufacture_year` smallint(6) DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `make` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `vehicle_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_agidrive` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_speed` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `initial_mileage` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `accumulated_mileage` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_mileage` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_weight` int(11) DEFAULT NULL,
  `fuel_level_adjustment` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_group_id` int(10) unsigned NOT NULL,
  `data_retention_period` int(11) DEFAULT NULL,
  `app_last_active` datetime DEFAULT NULL,
  `app_last_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` varchar(511) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `speed_source` smallint(6) NOT NULL DEFAULT '1' COMMENT '1:CAN & GPS, 2:CAN Only, 3:GPS Only',
  `vehicle_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownership` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `install_date` date DEFAULT NULL,
  `tech_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `scale_type` smallint(6) DEFAULT '0' COMMENT '0:No Scales, 1:Single Axle Scales, 2:Multi Axle Scales',
  `installed_gps_tracker` tinyint(1) DEFAULT NULL,
  `installed_black_box` tinyint(1) DEFAULT NULL,
  `installed_tablet_cradle` tinyint(1) DEFAULT NULL,
  `installed_canbus` tinyint(1) DEFAULT NULL,
  `installed_barrel_sensor` tinyint(1) DEFAULT NULL,
  `installed_scales` tinyint(1) DEFAULT NULL,
  `installed_mdvr` tinyint(1) DEFAULT NULL,
  `installed_dashcam` tinyint(1) DEFAULT NULL,
  `installed_other` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `company_id`, `name`, `description`, `model`, `manufacture_year`, `color`, `make`, `owner`, `department`, `note`, `vehicle_no`, `is_agidrive`, `post_speed`, `initial_mileage`, `accumulated_mileage`, `target_mileage`, `max_weight`, `fuel_level_adjustment`, `created_at`, `updated_at`, `deleted_at`, `status`, `icon`, `icon_color`, `security_group_id`, `data_retention_period`, `app_last_active`, `app_last_status`, `admin_note`, `speed_source`, `vehicle_type`, `ownership`, `install_date`, `tech_name`, `site_name`, `scale_type`, `installed_gps_tracker`, `installed_black_box`, `installed_tablet_cradle`, `installed_canbus`, `installed_barrel_sensor`, `installed_scales`, `installed_mdvr`, `installed_dashcam`, `installed_other`) VALUES
(40, 1, 'Test Car1', '', '1234', NULL, 'Black or White', '', '12314', '', '', '', 'on', 'on', '', NULL, NULL, 0, 0, '2019-08-27 23:13:40', '2019-10-02 06:35:03', '2019-10-02 06:35:03', 'enabled', 'car', 'blue', 1, NULL, NULL, NULL, 'Admin Note Test\r\nLine 2\r\nLine 3', 2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 1, 'Test MDVR Simulator1', '', '', NULL, '', '', '', '', '', '', 'on', 'on', '', '0.401', NULL, 0, 0, '2019-10-31 02:46:20', '2019-12-02 21:16:14', '2019-12-02 21:16:14', 'enabled', 'car', 'blue', 1, NULL, NULL, NULL, '', 1, 'Mini Agitruck', 'Contractor', NULL, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(46, 1, 'Truck 2827', '', '', NULL, '', '', '', '', '', '', 'on', NULL, NULL, '4784.83', NULL, 0, 0, '2020-02-06 00:46:01', '2020-07-20 02:33:47', '2020-07-20 02:33:47', 'enabled', 'car', 'blue', 1, NULL, NULL, NULL, 'Testing netcorp “blackbox”', 3, '', 'Owned', NULL, '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(56, 1, 'Jerome Office', '', '', NULL, '', '', '', '', '', '', 'on', NULL, NULL, '3999.361', NULL, 0, 0, '2020-04-07 01:04:30', '2021-11-11 11:00:03', NULL, 'enabled', 'truck', 'blue', 1, NULL, NULL, NULL, '', 1, 'Agitruck', 'Owned', NULL, '', '', 0, 1, 1, 0, 0, 0, 1, 0, 0, ''),
(71, 1, 'MDVR2014 Ian Yates', '', '', NULL, '', '', '', '', '', '', 'on', NULL, NULL, '17872.114', NULL, 0, 0, '2020-04-27 05:02:30', '2021-06-06 23:15:21', '2021-06-06 23:15:21', 'enabled', 'car', 'blue', 1, NULL, NULL, NULL, '', 1, '', 'Owned', NULL, '', '', 0, 0, 0, 0, 0, 0, 0, 1, 0, ''),
(74, 1, 'MDVR2827', '', '', NULL, '', '', '', '', '', '', 'on', NULL, NULL, '16680.422', NULL, 0, 0, '2020-05-01 03:02:53', '2021-06-06 23:15:34', '2021-06-06 23:15:34', 'enabled', 'car', 'blue', 1, NULL, NULL, NULL, '', 1, '', 'Owned', NULL, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(81, 1, 'Jerome Home', '', '', NULL, '', '', '', '', '', '', 'on', NULL, NULL, '103.871', NULL, 0, 0, '2020-09-01 06:28:35', '2021-11-11 11:00:03', NULL, 'enabled', 'car', 'blue', 1, NULL, NULL, NULL, '', 1, 'Car', 'Owned', '2020-09-01', 'Jerome Pitt', '', 0, 1, 1, 0, 0, 1, 1, 0, 0, ''),
(82, 1, 'MDVR DEMO BENCH U1 ', '', '', NULL, '', '', '', '', '', '', 'on', NULL, NULL, '73.23', NULL, 0, 0, '2020-09-15 06:47:22', '2021-11-11 11:00:03', NULL, 'enabled', 'car', 'blue', 1, NULL, NULL, NULL, '', 1, '', 'Owned', NULL, '', '', 0, 0, 0, 0, 0, 0, 0, 1, 0, '');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `agi_log`
--
ALTER TABLE `agi_log`
  ADD KEY `agi_log_vehicle_id_local_time_index` (`vehicle_id`,`local_time`),
  ADD KEY `agi_log_vehicle_id_index` (`vehicle_id`),
  ADD KEY `agi_log_local_time_index` (`local_time`),
  ADD KEY `local_time` (`local_time`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_name_index` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
