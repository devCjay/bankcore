-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2025 at 01:36 PM
-- Server version: 8.0.40-cll-lve
-- PHP Version: 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stamfor3_kamfnd`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint NOT NULL,
  `user` int DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `device` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user`, `ip_address`, `created_at`, `updated_at`, `device`, `browser`, `os`) VALUES
(1460, 272, '105.112.220.232', '2025-03-30 09:49:34', '2025-03-30 09:49:34', 'WebKit', 'Chrome', 'Windows'),
(1461, 272, '105.112.220.232', '2025-03-30 09:49:34', '2025-03-30 09:49:34', 'WebKit', 'Chrome', 'Windows'),
(1462, 273, '102.90.47.101', '2025-03-30 11:18:30', '2025-03-30 11:18:30', 'WebKit', 'Chrome', 'Windows'),
(1463, 273, '102.90.47.101', '2025-03-30 11:18:30', '2025-03-30 11:18:30', 'WebKit', 'Chrome', 'Windows'),
(1464, 273, '102.90.47.101', '2025-03-30 14:14:23', '2025-03-30 14:14:23', 'WebKit', 'Chrome', 'Windows'),
(1465, 273, '102.90.47.101', '2025-03-30 14:14:23', '2025-03-30 14:14:23', 'WebKit', 'Chrome', 'Windows'),
(1466, 273, '102.90.47.101', '2025-03-30 14:54:24', '2025-03-30 14:54:24', 'WebKit', 'Chrome', 'Windows'),
(1467, 273, '102.90.47.101', '2025-03-30 14:54:24', '2025-03-30 14:54:24', 'WebKit', 'Chrome', 'Windows');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `firstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_2fa_expiry` datetime DEFAULT CURRENT_TIMESTAMP,
  `enable_2fa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disbaled',
  `token_2fa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_2fa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dark',
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acnt_type_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstName`, `lastName`, `email`, `email_verified_at`, `password`, `token_2fa_expiry`, `enable_2fa`, `token_2fa`, `pass_2fa`, `phone`, `dashboard_style`, `remember_token`, `password_token`, `acnt_type_active`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'manager', 'admin@mail.com', NULL, '$2a$12$CgI3EO9lp6UgCYYwpqP4T.pfnsHUJqfBxASgN9Ymkv1Ly3MAQzfOa', '2021-12-07 11:40:56', 'disabled', '16632', 'true', '34444443', 'light', NULL, NULL, 'active', 'active', 'Super Admin', '2021-03-10 18:55:53', '2025-03-29 21:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint UNSIGNED NOT NULL,
  `agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_refered` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_activated` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `earnings` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `agent`, `total_refered`, `total_activated`, `earnings`, `created_at`, `updated_at`) VALUES
(4, '17', '8', '0', '0', '2021-04-14 14:45:06', '2021-11-22 14:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `appearance_settings`
--

CREATE TABLE `appearance_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `primary_color` varchar(255) NOT NULL DEFAULT '#0ea5e9',
  `primary_color_dark` varchar(255) NOT NULL DEFAULT '#0369a1',
  `primary_color_light` varchar(255) NOT NULL DEFAULT '#38bdf8',
  `secondary_color` varchar(255) NOT NULL DEFAULT '#14b8a6',
  `secondary_color_dark` varchar(255) NOT NULL DEFAULT '#0f766e',
  `secondary_color_light` varchar(255) NOT NULL DEFAULT '#5eead4',
  `text_color` varchar(255) NOT NULL DEFAULT '#111827',
  `bg_color` varchar(255) NOT NULL DEFAULT '#f9fafb',
  `sidebar_bg_color` varchar(255) NOT NULL DEFAULT '#1e293b',
  `sidebar_text_color` varchar(255) NOT NULL DEFAULT '#ffffff',
  `card_bg_color` varchar(255) NOT NULL DEFAULT '#ffffff',
  `use_gradient` tinyint(1) NOT NULL DEFAULT '1',
  `gradient_direction` varchar(255) NOT NULL DEFAULT 'to right',
  `custom_css` text,
  `disable_animations` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appearance_settings`
--

INSERT INTO `appearance_settings` (`id`, `primary_color`, `primary_color_dark`, `primary_color_light`, `secondary_color`, `secondary_color_dark`, `secondary_color_light`, `text_color`, `bg_color`, `sidebar_bg_color`, `sidebar_text_color`, `card_bg_color`, `use_gradient`, `gradient_direction`, `custom_css`, `disable_animations`, `notes`, `created_at`, `updated_at`) VALUES
(1, '#0ea5e9', '#0369a1', '#38bdf8', '#14b8a6', '#0f766e', '#5eead4', '#111827', '#f9fafb', '#1e293b', '#ffffff', '#ffffff', 1, 'to right', NULL, 0, 'Default appearance settings', '2025-03-24 19:24:23', '2025-03-30 03:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `autologin_tokens`
--

CREATE TABLE `autologin_tokens` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bnc_transactions`
--

CREATE TABLE `bnc_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `prepay_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bnc_transactions`
--

INSERT INTO `bnc_transactions` (`id`, `user_id`, `prepay_id`, `deposit_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 93, '167699391154495488', NULL, 'Deposit', 'Pending', '2022-06-23 16:00:05', '2022-06-23 16:00:05'),
(2, 93, '167703773979492352', NULL, 'Deposit', 'PAID', '2022-06-23 16:34:04', '2022-06-23 18:30:22'),
(3, 93, '167706013804937216', NULL, 'Deposit', 'Pending', '2022-06-23 16:51:28', '2022-06-23 16:51:28'),
(4, 93, '167709121213775872', NULL, 'Deposit', 'PAID', '2022-06-23 17:15:34', '2022-06-23 18:08:48'),
(5, 93, '167717543820550144', NULL, 'Deposit', 'Pending', '2022-06-23 18:20:57', '2022-06-23 18:20:57'),
(6, 93, '167841863929143296', NULL, 'Deposit', 'Pending', '2022-06-24 10:25:50', '2022-06-24 10:25:50'),
(7, 93, '168543279060443136', NULL, 'Deposit', 'Pending', '2022-06-28 05:09:48', '2022-06-28 05:09:48'),
(8, 93, '171959846135930880', NULL, 'Deposit', 'Pending', '2022-07-16 15:07:07', '2022-07-16 15:07:07'),
(9, 93, '194899603708616704', NULL, 'Deposit', 'Pending', '2022-11-17 03:24:20', '2022-11-17 03:24:20'),
(10, 93, '196417178992926720', NULL, 'Deposit', 'Pending', '2022-11-24 19:37:56', '2022-11-24 19:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `card_number` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_month` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_year` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'visa, mastercard, etc.',
  `card_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'standard, platinum, gold, etc.',
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `balance` decimal(13,2) NOT NULL DEFAULT '0.00',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'pending, active, inactive, blocked, rejected',
  `last_four` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bank Identification Number (first 6 digits)',
  `card_pan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Full card number (encrypted)',
  `card_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_date` timestamp NULL DEFAULT NULL,
  `approval_date` timestamp NULL DEFAULT NULL,
  `rejection_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `billing_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `daily_limit` decimal(13,2) DEFAULT NULL,
  `monthly_limit` decimal(13,2) DEFAULT NULL,
  `is_virtual` tinyint(1) NOT NULL DEFAULT '1',
  `is_physical` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `user_id`, `card_number`, `card_holder_name`, `expiry_month`, `expiry_year`, `cvv`, `card_type`, `card_level`, `currency`, `balance`, `status`, `last_four`, `bin`, `card_pan`, `card_token`, `reference_id`, `application_date`, `approval_date`, `rejection_reason`, `billing_address`, `daily_limit`, `monthly_limit`, `is_virtual`, `is_physical`, `created_at`, `updated_at`) VALUES
(5, 273, '5118369804820067', 'Abdul', '03', '2028', '466', 'mastercard', 'platinum', 'USD', 7000.00, 'active', '0067', '511836', 'NTExODM2OTgwNDgyMDA2Nw==', '8b80126a4c6a73b3210822802cb5313e', 'CARDBAYNFU2EAU', '2025-03-30 07:44:41', NULL, NULL, 'Along Asco Avenu No 23 behind City Camp', 1000.00, NULL, 1, 0, '2025-03-30 07:44:41', '2025-03-30 07:46:43'),
(6, 273, '4821527478961353', 'Abdul', '03', '2028', '376', 'visa', 'black', 'EUR', 9000.00, 'active', '1353', '482152', 'NDgyMTUyNzQ3ODk2MTM1Mw==', 'f54377c0213b6c37696db275475fd768', 'CARDU8LTXHUTUS', '2025-03-30 08:02:38', NULL, NULL, 'American Express Way, camp No: 004', 9000.00, NULL, 1, 0, '2025-03-30 08:02:38', '2025-03-30 08:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `card_settings`
--

CREATE TABLE `card_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `standard_fee` decimal(10,2) NOT NULL DEFAULT '5.00',
  `gold_fee` decimal(10,2) NOT NULL DEFAULT '15.00',
  `platinum_fee` decimal(10,2) NOT NULL DEFAULT '25.00',
  `black_fee` decimal(10,2) NOT NULL DEFAULT '50.00',
  `monthly_fee` decimal(10,2) NOT NULL DEFAULT '2.00',
  `topup_fee_percentage` decimal(5,2) NOT NULL DEFAULT '1.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `max_daily_limit` decimal(10,2) NOT NULL DEFAULT '10000.00',
  `min_daily_limit` decimal(10,2) NOT NULL DEFAULT '100.00',
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_settings`
--

INSERT INTO `card_settings` (`id`, `standard_fee`, `gold_fee`, `platinum_fee`, `black_fee`, `monthly_fee`, `topup_fee_percentage`, `is_enabled`, `max_daily_limit`, `min_daily_limit`, `description`, `created_at`, `updated_at`) VALUES
(1, 5.00, 15.00, 25.00, 50.00, 2.00, 1.00, 1, 10000.00, 1000.00, 'Default card settings', '2025-03-24 17:02:02', '2025-03-24 16:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `card_transactions`
--

CREATE TABLE `card_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `card_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'purchase, refund, fee, etc.',
  `transaction_reference` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'completed' COMMENT 'pending, completed, failed, disputed',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `transaction_date` timestamp NULL DEFAULT NULL,
  `settlement_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `card_transactions`
--

INSERT INTO `card_transactions` (`id`, `card_id`, `user_id`, `amount`, `currency`, `transaction_type`, `transaction_reference`, `merchant_name`, `merchant_category`, `merchant_city`, `merchant_country`, `status`, `description`, `transaction_date`, `settlement_date`, `created_at`, `updated_at`) VALUES
(6, 5, 273, 25.00, 'USD', 'fee', 'FEES7YIJX8G', 'Stamford City Bank', NULL, NULL, NULL, 'completed', 'Card issuance fee for Platinum card', '2025-03-30 07:44:41', NULL, '2025-03-30 07:44:41', '2025-03-30 07:44:41'),
(7, 5, 273, 7000.00, 'USD', 'topup', 'TOP17433388036364', 'Stamford City Bank', NULL, NULL, NULL, 'completed', 'Admin card top-up', '2025-03-30 07:46:43', NULL, '2025-03-30 07:46:43', '2025-03-30 07:46:43'),
(8, 6, 273, 50.00, 'EUR', 'fee', 'FEEFIPORDIB', 'Stamford City Bank', NULL, NULL, NULL, 'completed', 'Card issuance fee for Black card', '2025-03-30 08:02:38', NULL, '2025-03-30 08:02:38', '2025-03-30 08:02:38'),
(9, 6, 273, 9000.00, 'EUR', 'topup', 'TOP17433402219208', 'Stamford City Bank', NULL, NULL, NULL, 'completed', 'Admin card top-up', '2025-03-30 08:10:21', NULL, '2025-03-30 08:10:21', '2025-03-30 08:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int NOT NULL,
  `ref_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `ref_key`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, 'SMsJr1', 'What our Customer says!', 'Don\'t take our word for it, here\'s what some of our clients have to say about us', '2020-08-22 11:13:00', '2021-10-27 09:59:35'),
(11, 'anvs8c', 'About Us', 'About us header', '2020-08-22 11:32:29', '2021-10-27 10:21:22'),
(12, 'epJ4LI', 'Who we are', 'online trade \r\n                            is a solution for creating an investment management platform. It is suited for\r\n                            hedge or mutual fund managers and also Forex, stocks, bonds and cryptocurrency traders who\r\n                            are looking at runing pool trading system. Onlinetrader simplifies the investment,\r\n                            monitoring and management process. With a secure and compelling mobile-first design,\r\n                            together with a default front-end design, it takes few minutes to setup your own investment\r\n                            management or pool trading platform.', '2020-08-22 11:33:32', '2021-10-27 10:24:01'),
(13, '5hbB6X', 'Get Started', 'How to get started ?', '2020-08-22 11:33:55', '2021-10-27 10:25:09'),
(14, 'Zrhm3I', 'Create an Account', 'Create an account with us using your preffered email/username', '2020-08-22 11:34:11', '2021-10-27 10:25:29'),
(15, 'yTKhlt', 'Make a Deposit', 'Make A deposit with any of your preffered currency', '2020-08-22 11:34:26', '2021-10-27 10:25:52'),
(16, 'u0Ervr', 'Start Trading/Investing', 'Start trading with Indices commodities e.tc', '2020-08-22 11:34:56', '2021-10-27 10:26:12'),
(23, 'vr6Xw0', 'Our Investment Packages', 'Choose how you want to invest with us', '2020-08-22 11:37:43', '2021-10-27 09:58:51'),
(30, '52GPRA', 'Address', 'No 10 Mission Road, Nigeria', '2020-08-22 11:40:19', '2020-08-22 11:40:19'),
(31, '0EXbji', 'Phone Number', '+234 9xxxxxxxx', '2020-08-22 11:40:36', '2020-09-14 10:13:57'),
(32, 'HLgyaQ', 'Email', 'support@brynamics.xyz', '2020-08-22 11:41:14', '2020-08-22 12:23:55'),
(35, 'Mnag31', 'The Better Way to Trade & Invest', 'Online Trade helps over 2 million customers achieve their financial goals by helping them trade and invest with ease', '2021-10-27 09:42:23', '2022-11-10 18:42:38'),
(36, 'rXJ7JQ', 'Trade Invest stock, and Bond', 'Home page text', '2021-10-27 09:45:17', '2021-10-27 09:45:17'),
(37, 'J23T0Y', 'Security Comes First', 'Security Comes first', '2021-10-27 09:53:15', '2021-10-27 09:54:52'),
(38, '9HOR1z', 'Security', 'Online Trade uses the highest levels of Internet Security, and it is secured by 256 bits SSL security encryption to ensure that your information is completely protected from fraud.', '2021-10-27 09:56:13', '2021-10-27 09:56:13'),
(39, '7DH2G9', 'Two Factor Auth', 'Two-factor authentication (2FA) by default on all Online Trade accounts, to securely protect you from unauthorised access and impersonation.', '2021-10-27 09:56:26', '2021-10-27 09:56:26'),
(40, '5Vg32I', 'Explore Our Services', 'It’s our mission to provide you with a delightful and a successful trading experience!', '2021-10-27 09:56:38', '2021-10-27 09:56:38'),
(41, 'Vg6Gy7', 'Powerful Trading Platforms', 'Online Trade offers multiple platform options to cover the needs of each type of trader and investors .', '2021-10-27 09:56:53', '2021-10-27 09:56:53'),
(42, '1Sx1dl', 'High leverage', 'Chance to magnify your investment and really win big with super-low spreads to further up your profits', '2021-10-27 09:57:06', '2021-10-27 09:57:06'),
(43, 'YYqKx3', 'Fast execution', 'Super-fast trading software, so you never suffer slippage.', '2021-10-27 09:57:20', '2021-10-27 09:57:20'),
(44, 'yGg8xI', 'Ultimate Security', 'With advanced security systems, we keep your account always protected.', '2021-10-27 09:57:35', '2021-10-27 09:57:35'),
(45, 'xEWMho', '24/7 live chat Support', 'Connect with our 24/7 support and Market Analyst on-demand.', '2021-10-27 09:57:48', '2021-10-27 09:57:48'),
(46, '9SOtK1', 'Always on the go? Mobile trading is easier than ever with Online Trade!', 'Get your hands on our customized Trading Platform with the comfort of freely trading on the move, to experience truly liberating trading sessions.', '2021-10-27 09:58:05', '2021-10-27 09:58:05'),
(47, 'wOS1ve', 'Cryptocurrency', 'Trade and invest Top Cryptocurrency', '2021-10-27 09:59:07', '2021-10-27 09:59:07'),
(48, 'wuZlis', 'Hello!, How can we help you?', 'Hello!, How can we help you?', '2021-10-27 10:32:12', '2021-10-27 10:32:12'),
(49, '1TYkw0', 'Find the help you need', 'Launch your campaign and benefit from our expertise on designing and managing conversion centered bootstrap4 html page.', '2021-10-27 10:32:33', '2021-10-27 10:32:33'),
(50, 'rK6Yhn', 'FAQs', 'Due to its widespread use as filler text for layouts, non-readability is of great importance.', '2021-10-27 10:32:49', '2021-10-27 10:32:49'),
(51, 'HBHBLo', 'Guides / Support', 'Due to its widespread use as filler text for layouts, non-readability is of great importance.', '2021-10-27 10:33:03', '2021-10-27 10:33:03'),
(52, 'rCTDQh', 'Support Request', 'Due to its widespread use as filler text for layouts, non-readability is of great importance.', '2021-10-27 10:33:14', '2021-10-27 10:33:14'),
(53, 'kMsswR', 'Get Started', 'Launch your campaign and benefit from our expertise on designing and managing conversion centered bootstrap4 html page.', '2021-10-27 10:33:28', '2021-10-27 10:33:28'),
(54, 'EOUU7R', 'Get in Touch !', 'This is required when, for text is not yet available.', '2021-10-27 10:33:56', '2021-10-27 10:33:56'),
(56, 'ROu4q6', 'Contact Us', 'Contact Us', '2021-10-27 10:47:41', '2021-10-27 10:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `cp_transactions`
--

CREATE TABLE `cp_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Item_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_paid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_tele_id` int DEFAULT NULL,
  `amount1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_p_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_pv_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_m_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_ipn_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_debug_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cp_transactions`
--

INSERT INTO `cp_transactions` (`id`, `txn_id`, `item_name`, `Item_number`, `amount_paid`, `user_plan`, `user_id`, `user_tele_id`, `amount1`, `amount2`, `currency1`, `currency2`, `status`, `status_text`, `type`, `cp_p_key`, `cp_pv_key`, `cp_m_id`, `cp_ipn_secret`, `cp_debug_email`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 'sefef', 'Heloosjjsnnij2878u2i', 'tes@dd.gb', '2021-03-11 18:46:45', '2022-07-21 04:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_accounts`
--

CREATE TABLE `crypto_accounts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `btc` float DEFAULT NULL,
  `eth` float DEFAULT NULL,
  `ltc` float DEFAULT NULL,
  `xrp` float DEFAULT NULL,
  `link` float DEFAULT NULL,
  `bnb` float DEFAULT NULL,
  `aave` float DEFAULT NULL,
  `usdt` float DEFAULT NULL,
  `xlm` float DEFAULT NULL,
  `bch` float DEFAULT NULL,
  `ada` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crypto_accounts`
--

INSERT INTO `crypto_accounts` (`id`, `user_id`, `btc`, `eth`, `ltc`, `xrp`, `link`, `bnb`, `aave`, `usdt`, `xlm`, `bch`, `ada`, `created_at`, `updated_at`) VALUES
(1, 93, 0.276921, 0.145275, 0.0223845, NULL, NULL, 0.499336, NULL, 182.225, NULL, NULL, 864.996, '2021-10-31 17:25:53', '2022-03-23 15:20:53'),
(2, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 14:15:27', '2022-02-14 14:15:27'),
(3, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 14:32:58', '2022-02-14 14:32:58'),
(4, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 18:47:58', '2022-03-25 18:47:58'),
(5, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11 13:58:53', '2022-04-11 13:58:53'),
(6, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 13:16:21', '2022-04-13 13:16:21'),
(7, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-29 09:26:45', '2022-04-29 09:26:45'),
(8, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 12:00:30', '2022-05-24 12:00:30'),
(9, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 14:32:55', '2022-07-05 14:32:55'),
(10, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 15:13:02', '2022-07-07 15:13:02'),
(11, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16 06:22:44', '2022-08-16 06:22:44'),
(12, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:26:48', '2022-08-30 09:26:48'),
(13, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:29:04', '2022-08-30 09:29:04'),
(14, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:31:31', '2022-08-30 09:31:31'),
(15, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:33:13', '2022-08-30 09:33:13'),
(16, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:33:57', '2022-08-30 09:33:57'),
(17, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:34:29', '2022-08-30 09:34:29'),
(18, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:38:07', '2022-08-30 09:38:07'),
(19, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:40:53', '2022-08-30 09:40:53'),
(20, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:43:20', '2022-08-30 09:43:20'),
(21, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:46:13', '2022-08-30 09:46:13'),
(22, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-30 09:50:37', '2022-08-30 09:50:37'),
(23, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-13 18:25:04', '2023-02-13 18:25:04'),
(24, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-13 20:17:17', '2023-02-13 20:17:17'),
(25, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23 15:52:59', '2023-02-23 15:52:59'),
(26, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23 20:38:18', '2023-02-23 20:38:18'),
(27, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 15:19:22', '2023-03-09 15:19:22'),
(28, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 13:57:19', '2023-03-10 13:57:19'),
(29, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10 14:03:15', '2023-03-10 14:03:15'),
(30, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 00:41:06', '2023-03-13 00:41:06'),
(31, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 12:04:58', '2023-03-15 12:04:58'),
(32, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 12:39:37', '2023-03-15 12:39:37'),
(33, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 12:41:31', '2023-03-15 12:41:31'),
(34, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 12:44:23', '2023-03-15 12:44:23'),
(35, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 17:56:48', '2023-03-15 17:56:48'),
(36, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-15 20:59:59', '2023-03-15 20:59:59'),
(37, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 15:02:38', '2023-03-17 15:02:38'),
(38, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 22:29:56', '2023-03-17 22:29:56'),
(39, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-19 05:06:37', '2023-03-19 05:06:37'),
(40, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-22 12:21:09', '2023-03-22 12:21:09'),
(41, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-26 09:24:57', '2023-03-26 09:24:57'),
(42, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 01:06:16', '2023-03-27 01:06:16'),
(43, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 13:45:31', '2023-03-27 13:45:31'),
(44, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-27 13:57:04', '2023-03-27 13:57:04'),
(45, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-29 13:03:36', '2023-03-29 13:03:36'),
(46, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-29 19:45:16', '2023-03-29 19:45:16'),
(47, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-30 22:07:02', '2023-03-30 22:07:02'),
(48, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-30 23:21:56', '2023-03-30 23:21:56'),
(49, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-03 10:09:40', '2023-04-03 10:09:40'),
(50, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-03 19:15:43', '2023-04-03 19:15:43'),
(51, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 01:53:49', '2023-04-10 01:53:49'),
(52, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11 08:19:44', '2023-04-11 08:19:44'),
(53, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-25 13:38:23', '2023-04-25 13:38:23'),
(54, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-03 17:44:16', '2023-08-03 17:44:16'),
(55, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 10:30:13', '2023-08-06 10:30:13'),
(56, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-08 13:09:20', '2023-08-08 13:09:20'),
(57, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-11 00:41:03', '2023-08-11 00:41:03'),
(58, 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-11 15:30:28', '2023-08-11 15:30:28'),
(59, 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-12 01:04:21', '2023-08-12 01:04:21'),
(60, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-12 12:03:15', '2023-08-12 12:03:15'),
(61, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-13 20:30:33', '2023-08-13 20:30:33'),
(62, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 08:12:43', '2023-08-14 08:12:43'),
(63, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 08:32:26', '2023-08-14 08:32:26'),
(64, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 09:26:47', '2023-08-14 09:26:47'),
(65, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 10:48:21', '2023-08-14 10:48:21'),
(66, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 10:50:48', '2023-08-14 10:50:48'),
(67, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 10:54:53', '2023-08-14 10:54:53'),
(68, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 11:09:54', '2023-08-14 11:09:54'),
(69, 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 11:49:21', '2023-08-14 11:49:21'),
(70, 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-16 13:49:47', '2023-08-16 13:49:47'),
(71, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-17 00:59:53', '2023-08-17 00:59:53'),
(72, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-17 16:41:44', '2023-08-17 16:41:44'),
(73, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-17 20:20:56', '2023-08-17 20:20:56'),
(74, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-18 05:16:38', '2023-08-18 05:16:38'),
(75, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-18 08:16:31', '2023-08-18 08:16:31'),
(76, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-23 06:42:02', '2023-08-23 06:42:02'),
(77, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-23 07:22:39', '2023-08-23 07:22:39'),
(78, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-17 12:55:58', '2025-03-17 12:55:58'),
(79, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-17 20:54:06', '2025-03-17 20:54:06'),
(80, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 18:06:17', '2025-03-19 18:06:17'),
(81, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-19 21:24:02', '2025-03-19 21:24:02'),
(82, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-20 13:48:29', '2025-03-20 13:48:29'),
(83, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-20 14:44:49', '2025-03-20 14:44:49'),
(84, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-21 09:40:13', '2025-03-21 09:40:13'),
(85, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-21 11:21:12', '2025-03-21 11:21:12'),
(86, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-21 11:38:35', '2025-03-21 11:38:35'),
(87, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-21 16:39:30', '2025-03-21 16:39:30'),
(88, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-21 19:21:01', '2025-03-21 19:21:01'),
(89, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-22 06:26:18', '2025-03-22 06:26:18'),
(90, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-23 12:12:58', '2025-03-23 12:12:58'),
(91, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-23 14:42:31', '2025-03-23 14:42:31'),
(92, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-24 00:01:51', '2025-03-24 00:01:51'),
(93, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-25 02:08:07', '2025-03-25 02:08:07'),
(94, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-25 04:17:23', '2025-03-25 04:17:23'),
(95, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-25 10:13:42', '2025-03-25 10:13:42'),
(96, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-25 13:42:35', '2025-03-25 13:42:35'),
(97, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-25 14:10:54', '2025-03-25 14:10:54'),
(98, 257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-25 14:19:39', '2025-03-25 14:19:39'),
(99, 258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-25 14:36:48', '2025-03-25 14:36:48'),
(100, 259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-25 14:44:10', '2025-03-25 14:44:10'),
(101, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 12:46:34', '2025-03-27 12:46:34'),
(102, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 12:49:18', '2025-03-27 12:49:18'),
(103, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 13:09:15', '2025-03-27 13:09:15'),
(104, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 14:26:40', '2025-03-27 14:26:40'),
(105, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 14:31:59', '2025-03-27 14:31:59'),
(106, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 14:39:11', '2025-03-27 14:39:11'),
(107, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 14:45:25', '2025-03-27 14:45:25'),
(108, 267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 14:58:06', '2025-03-27 14:58:06'),
(109, 268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 14:58:45', '2025-03-27 14:58:45'),
(110, 269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 15:04:07', '2025-03-27 15:04:07'),
(111, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-27 15:39:38', '2025-03-27 15:39:38'),
(112, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-29 21:23:11', '2025-03-29 21:23:11'),
(113, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-29 21:27:19', '2025-03-29 21:27:19'),
(114, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-30 06:18:50', '2025-03-30 06:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_records`
--

CREATE TABLE `crypto_records` (
  `id` bigint UNSIGNED NOT NULL,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crypto_records`
--

INSERT INTO `crypto_records` (`id`, `source`, `dest`, `amount`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'BTC', 'USD', 0.00, 107.58, '2022-05-24 10:21:07', '2022-05-24 10:21:07'),
(2, 'USD', 'BNB', 50.00, 0.15, '2022-05-24 11:26:55', '2022-05-24 11:26:55'),
(3, 'BTC', 'USD', 0.21, 6219.48, '2022-05-24 11:31:53', '2022-05-24 11:31:53'),
(4, 'USD', 'ETH', 100.00, 0.05, '2022-05-24 11:36:30', '2022-05-24 11:36:30'),
(5, 'USD', 'BTC', 60.00, 0.00, '2022-06-09 08:09:48', '2022-06-09 08:09:48'),
(6, 'BTC', 'USD', 0.10, 2841.35, '2022-06-12 06:36:40', '2022-06-12 06:36:40'),
(7, 'USD', 'BTC', 300.00, 0.01, '2022-07-16 15:18:29', '2022-07-16 15:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` int DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Cryptocurrency Funding',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Credit',
  `accountname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `plan` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `ref_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `ref_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `ref_key`, `title`, `description`, `img_path`, `created_at`, `updated_at`) VALUES
(8, 'DPd1Kn', 'Testimonial 1', 'Testimonial 1', 'SIu0JZ01.jpg1635329714', '2020-08-23 12:24:52', '2021-10-27 10:15:14'),
(9, 'ZqCgDz', 'Testimonial 2', 'Testimonial 2', 'photos/2O5A1PaPNEG6J92eybtWfyawbw8KYvCneD5VCZVM.jpg', '2020-08-23 12:25:07', '2022-02-17 10:01:28'),
(14, 'b9158B', 'Home Image', 'The image at the home page', 'photos/eQZW9KTA66MfDXmmsM7VzwfBuleCSRBpoyjaivei.jpg', '2021-10-27 09:48:42', '2022-02-16 15:32:47'),
(15, 'iAwfKe', 'About image', 'The image in the about page', 'photos/O424fd54I3OWdTvNZNDAFuVCMG1oVUMuCgbwxzeT.png', '2021-10-27 10:22:20', '2022-02-16 15:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddresses`
--

CREATE TABLE `ipaddresses` (
  `id` int UNSIGNED NOT NULL,
  `ipaddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `irs_refunds`
--

CREATE TABLE `irs_refunds` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `ssn` varchar(255) NOT NULL,
  `idme_email` varchar(255) NOT NULL,
  `idme_password` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `filing_id` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `admin_notes` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irs_refund_settings`
--

CREATE TABLE `irs_refund_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `min_amount` decimal(10,2) DEFAULT '0.00',
  `max_amount` decimal(10,2) DEFAULT '10000.00',
  `processing_fee` decimal(5,2) DEFAULT '0.00',
  `processing_time` int DEFAULT '5',
  `instructions` text,
  `enable_refunds` tinyint(1) DEFAULT '1',
  `require_verification` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontimg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `backimg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `statenumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accounttype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kinname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kinaddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_09_142220_create_sessions_table', 1),
(7, '2021_03_10_082445_create_admins_table', 2),
(8, '2021_03_10_082519_create_agents_table', 2),
(9, '2021_03_10_082715_create_assets_table', 2),
(10, '2021_03_10_082817_create_contents_table', 2),
(11, '2021_03_10_083110_create_cp_transactions_table', 2),
(12, '2021_03_10_083324_create_deposits_table', 2),
(13, '2021_03_10_083400_create_faqs_table', 2),
(14, '2021_03_10_083510_create_images_table', 2),
(15, '2021_03_10_083557_create_mt4_details_table', 2),
(16, '2021_03_10_083627_create_notifications_table', 2),
(17, '2021_03_10_083824_create_plans_table', 2),
(18, '2021_03_10_083850_create_settings_table', 2),
(19, '2021_03_10_083936_create_testimonies_table', 2),
(20, '2021_03_10_084009_create_tp__transactions_table', 2),
(21, '2021_03_10_084031_create_upgrades_table', 2),
(22, '2021_03_10_084120_create_userlogs_table', 2),
(23, '2021_03_10_084140_create_user_plans_table', 2),
(24, '2021_03_10_084235_create_wdmethods_table', 2),
(25, '2021_03_10_084300_create_withdrawals_table', 2),
(26, '2021_04_06_083043_create_tasks_table', 3),
(27, '2021_04_23_110006_create_exchanges_table', 4),
(28, '2021_04_23_114622_create_coin_transactions_table', 5),
(29, '2021_04_27_080945_create_currencies_table', 6),
(30, '2021_04_29_110349_create_c_withdrawals_table', 7),
(31, '2021_10_07_112653_create_ipaddresses_table', 8),
(32, '2021_10_27_114829_create_terms_privacies_table', 9),
(33, '2021_10_31_131124_create_crypto_accounts_table', 10),
(34, '2021_10_31_132849_create_settings_conts_table', 11),
(35, '2022_01_24_123921_create_copy_trade_accounts_table', 12),
(36, '2022_02_03_131113_create_tasks_table', 13),
(37, '2022_03_16_135903_create_adverts_table', 14),
(38, '2022_03_17_114728_create_orders_p2ps_table', 15),
(39, '2022_05_23_215802_create_crypto_records_table', 16),
(40, '2022_06_13_220336_create_kycs_table', 17),
(41, '2022_06_23_030303_create_bnc_transactions_table', 18),
(42, '2022_09_02_074542_create_courses_table', 19),
(43, '2022_09_02_074626_create_course_lessons_table', 20),
(44, '2022_09_02_074608_create_course_categories_table', 21),
(45, '2022_09_06_165000_create_user_courses_table', 22),
(46, '2014_01_28_232217_create_autologin_tokens_table', 23),
(47, '2014_02_07_004118_add_unique_index_to_autologin_tokens_table', 24),
(48, '2014_03_02_162640_add_count_to_autologin_tokens_table', 25),
(53, '2022_09_19_142955_create_master_accounts_table', 26),
(54, '2022_09_29_153351_create_signal_tbs_table', 27),
(55, '2022_09_29_175703_create_signal_subscribers_table', 28);

-- --------------------------------------------------------

--
-- Table structure for table `mt4_details`
--

CREATE TABLE `mt4_details` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` int DEFAULT NULL,
  `mt4_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mt4_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leverage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `reminded_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'info',
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `type`, `icon`, `link`, `is_read`, `data`, `created_at`, `updated_at`) VALUES
(36, 273, 'Card Application Approved', 'Your Black Visa card has been approved and is now ready for use.', 'success', 'check-circle', 'https://bank.stamfordscity.online/dashboard/cards/6', 0, NULL, '2025-03-30 08:07:49', '2025-03-30 08:07:49'),
(37, 273, 'Card Top-up', 'Your Black Visa card has been credited with EUR9000.', 'success', 'trending-up', 'https://bank.stamfordscity.online/dashboard/cards/6', 0, NULL, '2025-03-30 08:10:21', '2025-03-30 08:10:21'),
(35, 273, 'Card Application Submitted', 'Your card application has been submitted and is awaiting approval. You will be notified when the status changes.', 'info', 'credit-card', 'https://bank.stamfordscity.online/dashboard/cards/6', 0, NULL, '2025-03-30 08:02:38', '2025-03-30 08:02:38'),
(33, 273, 'Card Application Approved', 'Your Platinum Mastercard card has been approved and is now ready for use.', 'success', 'check-circle', 'https://bank.stamfordscity.online/dashboard/cards/5', 0, NULL, '2025-03-30 07:46:14', '2025-03-30 07:46:14'),
(34, 273, 'Card Top-up', 'Your Platinum Mastercard card has been credited with USD7000.', 'success', 'trending-up', 'https://bank.stamfordscity.online/dashboard/cards/5', 0, NULL, '2025-03-30 07:46:43', '2025-03-30 07:46:43'),
(32, 273, 'Card Application Submitted', 'Your card application has been submitted and is awaiting approval. You will be notified when the status changes.', 'info', 'credit-card', 'https://bank.stamfordscity.online/dashboard/cards/5', 0, NULL, '2025-03-30 07:44:41', '2025-03-30 07:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nulledtechy@gmail.com', '$2y$10$EJG4pLsftbEPKXKUNMyvQOPuUAPRdHwgzko0ndDN97vWH8idrmLT2', '2023-08-08 12:16:55'),
('evakovac929@gmail.com', '$2y$10$CQzk6/AyQBEMTRvE0oQsUednJNi3aZbLC2on976eDoeQrEJtIElAe', '2023-08-16 21:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `paystacks`
--

CREATE TABLE `paystacks` (
  `id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paystack_public_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paystack_secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paystack_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paystacks`
--

INSERT INTO `paystacks` (`id`, `created_at`, `updated_at`, `paystack_public_key`, `paystack_secret_key`, `paystack_url`, `paystack_email`) VALUES
(1, '2021-10-07 15:26:10', '2023-02-13 20:26:29', NULL, NULL, 'https://api.paystack.co', 'test@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_return` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `increment_interval` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `increment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `increment_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `min_price`, `max_price`, `minr`, `maxr`, `gift`, `expected_return`, `type`, `increment_interval`, `increment_type`, `increment_amount`, `expiration`, `created_at`, `updated_at`) VALUES
(10, 'AMATUER AI', '200', '200', '20000', '2', '3', '0', NULL, 'Main', 'Every 10 Minutes', 'Percentage', '20', '6 Days', '2022-07-05 14:34:25', '2023-04-25 10:00:53'),
(11, 'PROFESSIONAL AI', '30000', '30000', '90000', '3', '3', '0', NULL, 'Main', 'Daily', 'Percentage', '3', '20 Days', '2022-11-25 13:10:14', '2023-04-24 22:40:06'),
(12, 'VARIETY AI', '100000', '100000', '1000000000', '80', '80', '0', NULL, 'Main', 'Daily', 'Percentage', '80', '30 Days', '2023-02-23 15:39:21', '2023-04-24 22:40:53'),
(13, 'FIXED AI', '50000', '50000', '5000000000000', '80', '80', '0', NULL, 'Main', 'Daily', 'Percentage', '80', '60 Days', '2023-02-23 15:40:59', '2023-04-24 22:41:36'),
(14, 'SUPERIOR AI', '100000', '100000', '100000000', '50', '50', '0', NULL, 'Main', 'Daily', 'Percentage', '50', '20 Days', '2023-03-09 15:42:12', '2023-04-24 22:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0mOmQkMbu99Jc4uQfDDtXbFYOdaFfbbX0JRT1cWS', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUNOM3NWeVFxUWhnendXd2J1UUppcDJxbUlyUlNjWWRGQklCMXc2WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333678),
('0WaAG7zfDU0BTvmOluVLBAjZus2xrktXb70JoyqN', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMENhUXpwa0U1MnlTdDdYbnF5Sk85MEZqUkM5R2tmZzJKZ29VWVRJSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743340113),
('1ap6HvZQ3tNSoki5FC5MWqoepSFywitQaqEeXLVe', NULL, '188.165.87.110', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnpZRGFUY2xBUDhGWlZDUnJNOWlJQWFnT2gyVWF6cXFHUmpkSGpQcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743373106),
('1eRlaN38xMcp2iGc6WK1FzIZBD2pI8b79uVW9gVl', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjk2SHhmYzJXemZkcDFTbDZ6d1ozeFdpSVJEN0xNbFlvQ0hLaUlNbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334418),
('1VI2ougRQ091JdeHmX7G4GsfMca45UPOXNnZM0E0', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEtFdDZTMnFjNVo3V25ReXV0Qk1kMTZrSVp6Ulp6TUxCeEVJMnJ2WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743329170),
('1Wd6QCTIjMKfE0mf6jQc5MxBjIx32ZiiCCLdMICI', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVVwUTlxSE5rczcxcmE0T2xEeGJLYWpZRWpCb0pVOTRaMzhHMXFVRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743343568),
('1xqeNnQ2fxrB8Qj8olZA5i6Znlp7fo3ztPSm5omN', NULL, '94.139.226.118', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGVmY05HdHU5OEhlOEcwU0xEMmtzRU51YWt4ZEFCb0xvUEpreUE5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743351103),
('2Mo2l6aSCMidTW2EagTY7wnrkz0Qz3JVR1DFL33d', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlJPelFob2dqeG5PYjBldlJWUGpVRU0yYnJweEtRNlBlSVZIT1ZQMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743328171),
('2Qcfo8q2YsXrOnxsZgQu66AlE7vOvB9L7BSnYg00', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0kxUHVIWHo2M1Vaa0RueEZxVmsyRHZuN3NseWx5NHlhS1M5ZXJyYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346451),
('2R0Q4GvDAwadWqpybdy2zdXEwjbCyouphFqKhC8A', NULL, '105.112.103.54', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTJxWU1uY1V5UkRjRDJjTExWNFlCc0VLMmtDSGRUMUxkVlU3b3RSbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743405090),
('2usTntHUlzl97FkkW63xWqV71yTHRZ7TQLvNMfEL', NULL, '157.245.65.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlUzdXM2cm1lVVVmZHF6Q05FcEY3R1hsOFVaTnNHSmlBSEZDbHcwNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743355102),
('2Wyvo4IklCg8pCFSpAcSKaOkEILPtlTV4MoZ25zA', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnpSQThDNGQ4cmhDVUJMRkRtMTRtb0h2YnZGdzV6aElBbE1KMjVlWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346547),
('3LbQx3nzZ0E0s9th3n3WR3tXJ8Djj8Lpx0FCOpKV', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam0yZTVETVd2ajZHMHRVWWFJbGJQSGVqTEFBZ3VJbTN0dGQ3ektxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743345982),
('3MyGZYgqLHoZKSTVt0qr1V64vcJjbMiydiNwO3NU', NULL, '178.46.69.121', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDkyVWRjRVdsb2dpNkhPOEE1ZXlYSmhZOVF5d2ZKQjRhZXdXSE8ybiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743378488),
('47cxHv0GUFE08qxBdZP6KiiicmmFNnwUXztRzcXI', NULL, '138.199.60.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDZ0c0NmellmQlUxN2pkbldoc0c4NWd0S0hYSTY1VXNaTjBxc0RLSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743391842),
('484UdZlNTRtMTHUDTpwGdPo3nMnEmUedoJ8U9nnR', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVA4WWVaSndjbnVxaUlpU05xaFRoOGNCYWFoZndpdlJMQTZBMU9EQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743343568),
('4AXXbHKOx8o7ALHEkaPrCSS1LoeX2zFgS5b3zz78', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUwzZTdqSEdhUzdIZDZ3WEpyaUVLZUp3aXVwd3prMDcweDhDM1VUcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338539),
('5Npb1I5nLgyJHBrTFwo8gE2lnSkNxXyqRVslO6KJ', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1VVOWV4ZVptNzYyUlZwMDNpUzJ2RWZqTWJOMzlXck12QUwzUFBTQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333700),
('64aGOjmYykiivDQqrmegX9fz5XfzH7mVmJ5JhoK7', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFNuMUhkcjNEeVY4WVY1YUhibXdRUnJhbUlSeFlOYkdSaXpyQ0piZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338724),
('6P7J2XSDMN62eKBwoxqiP5EoZTKoEtcPgFOtSA2U', NULL, '92.211.147.5', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.8 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2MwQTZ1cGFqTjF0ZTV4VFBkaUVjY3JFekh2Q25tS1g5OFVxOFRCeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743329191),
('7AzPtCXzFqpwWHSzGTehRdsCkncZBAqsRnxxYMRB', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnljTTBSVUExbTlNY0t1dUVId2F5b2dYcW95am5aYXhwR0VhVUZnQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743337247),
('7btGRSXG4FYlEsyXuAgCHhzXxdt20IDCNdFJlzK6', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0hmamxsdjVxSTBnV3A4QUpmT1lRY1NDelVPVE1TQnJaYVp6WlFqaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743335021),
('7iMQCuGMl23FbXoY55DoRMr9zwsx1pOGB2bOhyDw', NULL, '188.165.87.105', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2V3bElxcU5qWUoxdUtZRlFhTHFLR3hDbVh5eHBBUG1wdkhLSERnWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743372769),
('7nDXLCDE1UHm1KWQL8j1JwYVujhiSdpAiFvdEPGT', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3VyVDUwTTNaSzUyMDlHY1ZlMHd5YXA1RWdSOW9lYUgxQXI0MGp0aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743344111),
('7riLItnsS1PKBvfxNHj7FQY50WcB0GeIOBt1S0Jp', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlBGUmtGR1RzMW04dzVBV0lncFZ1TGJTakVDaUowU3AxRk4yMkxLdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743344066),
('7ydsu311YKWplEbLyU54UFfrkSCRZMVMZYpIB4w5', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXBhOFpQaE9wRWw2YUZ0WXBUNmxOeUdhQjVzQkNPNU01UGpYTTJkVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334315),
('8LR8cBMNnxbSts5wvup4eaTaIlwpM2feiUEkwKKt', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicE00VWNnQU9hVVhkTnNFMGZWU0xjaXF0QVRvU0ZVR3l4V2RWelA5RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743337246),
('8RtLcJsoNKyLI3zzqj9r8jg64ED1AcLaKYhxeAV6', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclNuZk5UUFRSNXV2NkV2TUYxUzhyRlJiV2tMRERETkt6a3habjU2RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743344067),
('8ygOC2SbELdgwXytTttU5Bq7EwirQqG0Rr21Tn7j', NULL, '3.88.55.121', 'Apache-HttpClient/4.5.2 (Java/21.0.5)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGdkNUF2ekp1cENwUEtjRWVTVzdkeTRJVVVzSFNvUFR1eDZtcVAwcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352585),
('9bb5yhtzv3bSczA1sSI48E1edAiPBexS4BalYohL', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTms5czU5OTdvb0pDcEdwTDVmZk1qZ1JTaDUxU0NaNVZIYkk0c1ZFVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334674),
('9F9g0ewonyWEeEEIvKXbg0eI5MQuaIXlJX7afSUP', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFVJbnF2Um5wa05xRmFZSDRUbzlPOGhNeWxoOEFHZDI3eVFySFhTQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334152),
('aBTV0JqKJTmA7JcKWoDHak7ItCaFgZu4J9z8GuTQ', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRk4xSnd3OFFoSXcyVFhiSHpCRFRzYVVUa0RBd0JxRXZuQlhJc1BCQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743339617),
('aEad4EXUb511ntTHh1p01MOSSS9O0616qeFjI4Ur', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWm5iY1QwWDhDbVp2WnJpbnZNM1BHSzRpZG1hak1JWjdqZ0laUVlPUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743339625),
('akpzlvKqIMXJLZIxmtv9l08B1XqDJizfRDAcBisX', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0dNNG4zdWdoY20yUG1sdWN0aXd5aU5BWERnVGZMcXhodU9JcVRtbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334927),
('ateAyJ0NVGpuSUEMHVk8qfDen6jEXg05E5kRYVUg', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFdleXA4NFNLMzR5Qm5VVldZQ0hnMTZoYXE2RTZaUkE2Q21rWERyaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334674),
('AyVSx3whDJtjQQreel49bNNgCpOikTDGqHSOWdXo', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVRDSFVBMlBiRU5ZVVRyeElwdlBuQUtuR1hpRnVTZXpxVXBYclVaTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346466),
('azavXR9cMBxscPp7xqR9Xqe4noXFbQGBAhGw8hAv', NULL, '197.210.227.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2Jpb3BrREtSYXFFTW5FM0g5NDR0WnJPOUJGbmo2NUJnNmlTZjVOayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743405687),
('b3Mw1fp9LlQtgafcsxSMSaxbRXJuDuCuDnb8iboR', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjdLZUNMeUdveGVScVhna0JLRFJUZXlwbFJLWGtHdmJ0aElWU0lFRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346490),
('baHaieWlhLXzoHzaQX0MFtWwFawmlBPwIl7tK7k1', NULL, '172.111.15.17', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYURrRVZmUlhYelpETFVuRE9BOFh1MGxHT2d0MDBtdUlKTVNFd2RQUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352246),
('bC1wjZBENMUJoxBLlnGBgklbLb8VrDmgcCC1E3fw', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVd3Q0taYkVOSFBpU3BZbVlRazk2b0xHeTJXbWpJSTRzaTdUMGtRaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333533),
('buGwYtiDkAhlwuFUzz52FP3pEMnH3CfD2lONecuT', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkxDV2JDSjJJanpxcXdWZERZOGFuemdGZlVJREJYU090NHB1dVRxRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334139),
('BVEcvdpgokfghx8MYIiyPo7NX8WhLfoiFc3CxnDN', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHBxMkhJeDFkclpSaHR4MDRKb0VqSHU5bDgzWGhlS1BZRDFSekk4WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743328189),
('BZKFEjCvFeN1sN9IMNzqQbarR7qxWjpz1P29BFas', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVFjTjBQdjhzWmZ6MlZqUjJLU0I2eXk4WWtZNkRJdWxYcGVSbzdnciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334470),
('CBfHiOpRfaaJ7AYbSpmTzntNBi1ETGjdnSOQyGTE', 273, '197.210.227.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoicDY3N3g1YmtlTVJoOWkwM2lFSkdYWE9CZmxkRWt6cVlEWEFvZlA4UyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9vZmZsaW5lIjt9czo4OiJnZXRBbm91YyI7czo0OiJ0cnVlIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyNzM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRhM21KMUprZmNGWmNLRzlMUi9lMDB1SFN0NTV5ZkxEamUyOVd6U0ZuQVlOWlRNU3ZNRmlEUyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkYTNtSjFKa2ZjRlpjS0c5TFIvZTAwdUhTdDU1eWZMRGplMjlXelNGbkFZTlpUTVN2TUZpRFMiO3M6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1743405687),
('Ce8nNNfAvgjWUJTJZacDEZVQQ2KmLsLa7wejJgSx', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHVoSGk2bVVhT3hxVFlyTG1oSlJNSjZ2eWZRQnVjQlBxV3h6OGhhcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743345364),
('CG7w2P0HGyUNoMQx4EtqKO4IYZBAk5zxF7tIETKC', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWxNS2FGVzRKbzhBSVVqaGdXc2lmaUxOZkVNQ2dPa2VvY0VsakU4YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346466),
('CIWOJ2BkSd5fcxGRjBY99FdGLMWp5xmvdPXTSDbV', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmpSYzI2ZEQ0RVFrUjVJOEFpb3Y3Q3lnTDVibEdRYmU2a1cwSEhmbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333454),
('D08ObzkWlLBPKXM2fE96vk8UGvlUwC62El1d7ADP', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNURhWW5HaEl1OVBpTjBtY2hrV3R6R0lzS3FCRnZYeG9CQ2hSckJIOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743344033),
('d67ZyH1UD1R3krtXVG9dq0QgQXBa1Q4bAwWgsAAh', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEt4b3V5Q1h1ZXFFamRCeVJHS21yaldDMTk5Yk9oNTJ6SzJyQUlIcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333800),
('DeVzhGZhNx6WeFgsp5DzflFh0slSao4M2WqgCPCm', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienRyMEpIZjhLRDlqQ3pDUnIwbnM3MjVsZ3RPZ0JXM1J5S3dtZTR3RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346588),
('DWGHrOWlq6JOqIgsiQ2km8Zj06zvvFBdtDndUl0b', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOG1GWTZsMHhHck9uVENvNjVYaGtrT0d5dkg5OEdGeEwwQjc2RzBXWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338683),
('DXKtKy5Q32SuuZ8xUPzw0DyKFY66myQsPccoTlvZ', NULL, '105.112.103.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzhNS1lXY3p0aUxOV2hRMGgyRW5CWUJYdHJCaVhQa2VkemtlYkZ4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743404061),
('dXywiniPq3DQKA1BlcT2p5dZ60uAdP5LTW1nrrcx', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2x4ekRybnpQSTZ5eE9xZXB6Q3VKblA1b1dibFVCRWhZNXlFcjNLZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346489),
('DyGWIamQEqb2TSeaQ7SfRC7Tfb2dBaa9nq9GbjId', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickJrZ0gyMnFwdk01bk1hOWRqNjFBZmxsWWRzdGdMQXF6c1k3QVZKTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334123),
('dZcjbC4UmdkKoaZITGyLKLFQsSnY9yiEw2DwJMdl', NULL, '172.111.15.5', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:69.0) Gecko/20100101 Firefox/69.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0RxdDhVU0dCZ0lqbkdVb29sZ2FTeEpabWtqQnJwczdQb0tpTW9DcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352635),
('e1DP8e5VctxGDNl8GEy05IdCBkk8QuFz0ZCpynyP', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmRQREtvT3BvMFRSR2FJTkh0TUhDTlk5WlFXajRLNlNTVHAwdnlVOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338872),
('E55Ah6CSzgftcjg6gQLsS8yW1l0epLLUIXifsKEi', NULL, '94.139.230.127', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:69.0) Gecko/20100101 Firefox/69.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUQ2bWdIVmc0aUtPdnFpdnN1WEFlbklWYVFNb3RRdWJ5aUxORmRYZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352622),
('E95gK7xPss8pika7bUjYQESezKl5tRvbwTaW4CFk', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjF4ZmNMb2hDSmZmMUttOVVLcUNrNFduWFJEa2hKMXFyaFhBNVRsSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743345984),
('eE1iZ1lCgZG8StAkaKF4mUniOLBI4ib0PO76koP8', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajA0Y2t4cE5uelVuVTFrRXM0T0lNTlhqT1pIR2NVQm5TeEtlZTNFOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743328188),
('EZ4xmSDuictFZY2ElgADBx03ehN00iD0frog7Y1Q', NULL, '197.210.227.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXBNcEc0Ym5ldTJNRFlVTXA3RXo1aE16T0MyUHoyS1hubE1SbzJKdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743405687),
('F0SJcdaoanpXBU2dLYDr2HoDc5RCpjH8NwGwSbct', NULL, '54.162.161.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0FoQlpWQktVaTB0TFdvNWFZcUlqQXBGcFRObEg5QlVINFhYSlcyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352379),
('fBIxXt7XVkDhbJS4jMXCwoV8laERViTtTSYNxwg6', NULL, '143.110.163.222', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmRTVExla05WMEtjVEJuNnBKWVZMVEdJdTI1M0gzQVNVTUVEenZXYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743386427),
('fJgE7c7AB2tK8tK1YrxikGKy2dYgG6zq3sAFc8F0', NULL, '105.112.103.54', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGs5WUVrU1dWY0UzZms0NDg1STB1T0FVRjVMQlFmMlZ3Q0ZiZ0daUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743405678),
('FP3BJrmr0wkce6fudid2rZxrNZqNj060FOscTGGl', NULL, '197.210.227.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibk9tMUJPNjF2cksyTDJDNXZ3VUZ6V2NkOGFJbFU2T200SEpTU0UwRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743405682),
('FRFlcEMqQI7AwSckNCD0JgZ4RLtyNXiKpBdBGUua', NULL, '149.57.180.197', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3FGdWk0SDk3TzNiNkpSZkdEVWVRZ2dRUGhKd0pWZEZ3cFNRVTFudCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743365395),
('FXgB3qwHGRpZTjCKuUVoXumWX3W22oU1VAZlkYI6', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFJVMTY2Q1hyb0JLSHpIM2JCcTBPSGNoYmJ2NVNONGl6Wm0yeHpxayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743343488),
('Fxhc1q4XPjX4BhexhbJ5QVisLzcPOaOo3WWiqKPw', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGN2dzdJS1BGaGNlZXVIRHBlaERxUjhoSlRTZDdOenRWQ3lvc0NhTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743337454),
('gGP8lg1Ek8sYpOdZsiMiBrent8AbGD10AopaWH0j', NULL, '105.112.103.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU9ETm1UTFpqS2phOURvZW5OaEJTb3JlM2FxNmp1ejVLcFFIRU1UYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743404062),
('gpWF0KAQYNs9eDz1YJq9gZK0x8vzvtyrbXDajeRg', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUJKSXVKQXF0UERaR0xlTlRwSzBoSllzeHVXY1NXUW4xekNUN2V0TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743345277),
('GUNsovMrFMG4Hdjj9mavlBKkkqKUkbo6LJEQC2f1', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODhTdUIxMGR6UW9lMUhGV2hFZHlqczJjMXJlSVBrNWFMdHo1UE5mYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338683),
('GxcA1jlpnzllT0RWWDFZNISAnoXSMWrl2XJAUsM6', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWNmTWVldGFsblpUN1Z4RHhoZDNDRmxRdGxmN0tLdm4wbjczV3E2UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743328120),
('h3Yg3v7zMOwRmdyNtIqSgxbvX5rh7hYMONr0ZGgy', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDRyMXNTWWRZMlJnbG5oZTFPUk1MTWl3WUQyVGc5MWNBQm1lMjFtYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743343994),
('HctNNcSaHpewxvjBuxXqLq9D9ei4qAgGgwKdJkzr', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWlGN1hLcE03TWZ0QkJGR3JrbXlDR25sN0lBVnR6SnBKa2lUdlIxWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743339768),
('HFTQ2FYa7NZotdbNYog1xiaab39asJNOMP6TNo51', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakZ6UnUxVTlmekt2ZDZpeU9ZemMyN0toV0E2Q0JjV09ud09JZGpjdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334418),
('hgbCiTzl9TbYjhUCiyz5ZJthvePtjR5U6NAQKNJ9', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHFPaVpRTk1weDJpdVpLTUNwU2ZvRnRtOVQyS2FWWkpQR3NXSEdiVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333514),
('HHNTJtjPJZYXbVEnXJEP9gJYHIqOjSM4g32gKOi1', NULL, '172.111.15.64', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWpNNkZKcW5Oa1dWanNVOURHTDJwcWptUGxGdWlaY0dsaTIxeGczdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352484),
('HMDig30CfiE1nCs5FD7YQ3IS8yr3Rd3wD6RO4rLz', NULL, '149.57.180.132', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1p0dGZKbDBSUUY4TGZMZHhCVVJCaGdTR002TmdTYlNiSTI4amVRYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743362063),
('hTJzrFwPTUgSdrS9toKaH3hDq0diKvQBP2apcxoO', NULL, '37.140.254.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlBmajkxM2s2S3laR1ZKVllvY3FxdTNyUm5TWTJ2aFgyZ3ZDVDRqMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743341166),
('HUQrtlGKP3kgraMf2s6VGSmmJOyRLzfA0XVww1Pj', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDFaQ3dDcFpHWlVTUlJOYk9QS1ZZVWlpNnpWYnJ1YnJMTlcwYnNqSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338874),
('HV54eGQM2ddZvALOvfSSGqAOSTeigjFQxcFkRufz', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmlUelBEU1I3U0RENHFEMWdjREVrTFhsQWNEMXh4d1RyRXQwamdINyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743335022),
('HViRWVn5UzB2ksrntC9loksFZr4BsYiccrSjqduK', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzYzd0RKZlpyTzNtOFBLd3BxbUtQYWtLWmh2MjJmZ0NzTWJtbFdEZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334150),
('hvmYRoSavh6ZOCGymhQVYEzYS33QN49iFBdokTYi', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTlMZGFpSzFOMWFUclhjbldrVzNEOHF2eU5hZDRGSzJpSXNOUGl1eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743340007),
('HXgorJab1SQLVmroDxPWq8uSnHxoIRYUiVrEHsXA', NULL, '105.112.103.54', 'WhatsApp/2.2509.4 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3Qzb3JQUUpZQ21na1ZtUmtsZDJiZVpLcEJKUFU4aml6eUlWU01yViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743404791),
('IBLKQv6Gxb6tkmYqyQBtmPiFVfvNCjSUKwsIX8DH', NULL, '172.111.15.130', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHljdlZ0NWNQaXRJRFMwZlRNRzVaWUp4SHd6MnFFNHo1ejgzYnBCayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352257),
('ICfLuElsxjX1g8fcXPspgwFaLfMtCDpPfgdxp352', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDJlOHhrR0JwTmwzbWFsbkJqMHM5bUxBNDVVTGpXRjRxa3hoTndiVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334069),
('iCuWJpmUZnATZoSfXRrDtHfpj1peljk1nDVNDsA7', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3RTdnlxSmJpb0dWZlFXbTlIMUpLbnVqZ3RnME8yTnd5NXVVb3ByViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334137),
('ifIpzLmydRaJFfA7ZLmitx7oFeKFhj9LpnRwS08o', NULL, '91.90.40.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFMwOG5WQzVyeDZXb0x2aUFLUEV6VzdOT0cwVEtHQ3ZiSGRTWU9EUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743393422),
('ikrTjJUQSLWoyrvVTEWP0Ehx1spv5hFRdnUNFpLj', NULL, '23.27.145.34', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDBzcmhWRDNaTDhVb1o5TlVRY3cxNVdzc1NabWVBUFBreTJpOHIyaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743362228),
('ilWtv9sbXzffS5Ndh0P8xoUy8sHrVPlcxXVky0Ri', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU21aNGdiR1VHWjRBZW1xVGJxNjg2QUd0ckZsQTE0NUF4U2RNdmZnbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333454),
('iz7GtcbzgsP9Du3ZQL8gwqa5qbcCJr49DoIfLc0F', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjk5SFhXTjIxNmRBelExUU5laVBhODVKNEM1ZG9aMDVvUnZKUWpZMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338340),
('iZeydcuyFzcVaWrRz2LBAssYLalHmp6Nyr340ceW', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkF6SEYxb1NidnJUSEdZSTFIVndkbEg4M1ZDTFVsQ0xpUWprYVVPeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743344034),
('JjYIcdtgFpRxXCxPFfZSdHNhPdxEhHfX0lApWg27', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU29GRGVTdDdad2QzSnZSWlZWbGVPU041VkhIOFFuQWVhTFRZM3ViNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346547),
('JqAtOmZZP3irs4dISHU6mCHGb6ni7yLiG2yFgDiC', NULL, '188.19.33.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRk9tR3ZSY3I2NXhBbUV5Y2d0b1J3SHVabTZxNW81WUQ2ZG84NGtjeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743368696),
('Kuqwc3qn7z7o4WIwMpmz8BeXKgiYnJqv4fO6YH8T', NULL, '23.27.145.129', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXd1cGJ5YnBuZHZOdkpseEJabzAzTEhGeEViRDU0MHFmZkJVOUs4QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743365365),
('kZaWXQbEAoEuvaowdhax1bqkcnKIXu9OjTkKHOeu', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVdNQmpqNm9sR0xERXV3OGtNTGtNR0hnTFVwT3NUYmFpTUdwc3B5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346451),
('l3lIx4WUSgNfhKyW5iwoT5JSQunk7yJx6fxynq9M', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlJDaThEVWUyaVFHYjRqQlNMVEJzV1M5ZTJLSHAwTmhIbWRCQUhteiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333677),
('LaACv096Tf0pnXoWp3ZgtgxflaPRBFbWycNs29Cj', NULL, '3.88.35.90', 'Apache-HttpClient/4.5.2 (Java/21.0.5)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUNjYjFtczc0dmJwdHIyeFh3aWNiSXg1bkZTb2NqYWowZ0t6MnFHQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352598),
('Lcsuk50NzuBBC77tkjrLPELRTNwoahNQaMF6B9EK', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUIzVWJsTDhwcGphbDFlOGgyQ3I4YXZMRllNVkVna3hYZmRHcGxrSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333700),
('lDqdhK2xKwfx0Obo1887kU5cU7b98JbITO43qot7', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmk1ejVGQWMzQkNrMzFRUGdvU0ZkcTZ6YWwwWHptUGxtWGNxMjdmciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334470),
('lrhrieWqxvqg3l0WKRsmvhQFtpL6qYubIkgaQhfW', NULL, '193.142.132.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic05TSTZadUdCdmhxVGwxeGJ4OVg1WnhtQkZpVG1yd3hWbFBFNmowZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352600),
('LuRlrRbBspdEoWBgg4ABrwqFwJDbIdxg1l9H3C98', NULL, '66.249.83.9', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXo5VnZhSEpuYmZTRVFlSHhtazNPTlVHbHBKZ0FITjRTZW5hYUpZVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743404830),
('LxxdmbRNjzjT6mPpTmM2xwFc9F0mbWCFdIY451Od', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlc4TFlZSks3M01LN3FyT0NXRGxWSUM4SDRmV2R6djFjbENOVHBWcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334885),
('m0nwuZFywjg1URc3oDdjUnXDWxXzjZnzjsnFCM4Z', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXVLS0EwakFBSktSR0pwOTdYdVpmTDg4ZHpOU0pud3dYSXBZVU5qRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338340);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('mGl5tnTktomQ3LEzSQO7Fz9WizSRKDJXoLPwhBCT', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1N1OFRuRzl6RWJuWHNNVGNMbFFxZVNZWVpJZWg4NTlmdWV3MWFIVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743344112),
('Mvtfzo8lwQEZAEq7XZPBYnec47gQ0FoSWLJZaLxe', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQU5wM1hGNzNsUDVMQ2Z0N0R2TGk2SEVKalh5d3o0MkZUckpTUUpBMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743329170),
('MyBg1m70Mo8Tw2mVTFLDYX17RUsoxEebItuQXuId', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0ozakJrWldpSTFvNHprUGE1bEpQS0dEckk5TEZPVEtIZEY0U3V6bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743337454),
('n7A0AbKkmREW5xufTtpR83Xs63s2p8fgudiLpPwn', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekpySDdsZFBkWHdYMUNFUVQzM0h0ZDA5QU1jMWZqa0psOWN0RGRSWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743328120),
('N9V4Ss8jl1op17y0PfHIrGBdND13jveq370DGevV', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2pEYUtHTlJTTVJUS2xmNlRWRTBRQUh0a3ZZWVRIVjRDc2lXSThEVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743328176),
('ne2YAPHb7wn6RBfJpFIh5vRh804ikP00dk35aVFf', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXh3T3lEbHZQeGVVSUt2NTVROWtaTUlkNTI4ZHBtSEVlZGlRN2U5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333513),
('nRbyb86p4MwVbug18swHKi7UFcQeaxDOu4kBPgVk', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVBtcGpSUVpZUTAzcldJb091NjBqMUlOQmJyVWxJNUpFQ3Q4dHloUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743337483),
('nSDvNw0zoE4zjkmGWSfQT5LJWjh4ApBcvHh27y9O', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHc3UG9MZDh2NXZramV4ajBzMXRMeFh0UHhXZjVxNHNsRnF3ellybyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743332230),
('O1UJLo343LJdumFilNi0XQFwKQPepzroZbBLPty0', NULL, '172.111.15.17', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVdCNURNOTVoN2tCYVVmSXJ3SVdKT2RaaDU5Z2dBaTliWXVPR3p6VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352335),
('O8xghnsTFcWgm0wR7O9uIswEqVx9mMHj4YjBLWiJ', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVY2eVd4MHlPSktna0lpenRHeVhsc1JKR3hsTHFUMTJ5OEQ5cWFCZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338840),
('OHRvqgG2SYYJl5W7dTy5AdvxBK1JsdrTdj0pSIus', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGhveGtKN1BtZktlZk83dTNwNENlRlV6dWp3YWRPVEJ2S28xRklvSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743340081),
('ONU6GbwTSaFLPwNBwevsGXAdZrjBDYR0CoNilOEm', NULL, '66.249.83.1', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEJtSmVFeldWWGxMZkpvZ3ZjUDNqakY4cDJzb0xQZ1p2RUQxR0tRMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743404831),
('P46Q6zgz3YoVrdUYBruzrbP70QcnXobkCNPtoaql', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXRGZEFkbXR0TlJUMWtYVUhuaFB4NzBra2x5TnVKdjFER29hWGlBTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334199),
('p4tIhcc9FVrUN6W01Yp3qzreBSnCjn43ps52n4ns', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkVyMGpJTlNRdnpFRk5kSXNJZXNpMjU1TGVOeXNuOXhsUUo0bUtqbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743343994),
('PitihsKPUsRQKfzqH1rydKWigZwviucbMLgqrSIP', NULL, '161.123.2.135', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:69.0) Gecko/20100101 Firefox/69.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUJPQzIxczNzNm4xQjI4cDJpWHdPYjBJZ0hhUWZVWFBSNkdRUlFyMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352625),
('ps6ND1hjRICgP3dBxOstlTBjNTQeXMBijztlxldx', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnlCZTVVdWkxU3lmQU1NZDlSb3lKRnhPSzAxRmpIbHJHM1h0M2tWTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743340260),
('pXAPc7MuS0mccP7gRpWwoqUMu1n9fkuan5ys0tXv', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3BzYm5ia0xaOVFGbXhGYms4V0lXOEJURVZhZ21STmZYamhPbEx5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334929),
('PxjUhPPugCe7LqfPMCEoANmowkxoM42URLvEnqy4', NULL, '54.226.1.249', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZU9pQjdRWmF5aGZSM3FzRThScnIwVTE3cUsxT3ZkMnNER21pdGlZSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352345),
('q1rFHz0TgMzb9jd7glmo8VE2CKx2SqIk8SxVX8aD', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlI5SWc2aTZHbzczbkg0Ulo2a3dGZFhFSHN6T1V2VDVDTElZTkpZNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743339185),
('QeChc0FjvCFotjvEVw3aXnA2IJDOQCxzV2BMCPRh', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmhCemxxa0lMQzkwc1RBZVVkSmdVS05maUhVWGR6TGJFSDZlbElJZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743340007),
('qKKSIIjhnkGrFvUWEZddvpJXMN1lp8Hbf8qtlrJt', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0thQlpIUFpjUk9DNTVJall1a1hmZXBXcEVoYlV5OFlWRnlndjdsZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338840),
('QMhyEvQnrxokLqxkXzPqgYTpMHABUaHTCdQV4Xjl', NULL, '157.245.65.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3VtRm1wWndIam43RHlXRGh6aHNBeWxTNzZackhFbGVHejhibkd6ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743355102),
('qqpNseVrmkBgF0XpQfsvZ4dtMDxQseQ7evUGuzfi', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVB4S2JxYnA3ZHB3UzNGM1luYVJDTVFaTWZTS1dXOVZkWEhQWUZPcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743345277),
('Qrr0Co477apRZwslnoRSE0SVWkSajn7DFMZHjvvf', NULL, '197.210.227.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYk1NTU5nVVlydElZS1J0dW15bjE0akQxcTlrMHZPNWFKcm1SV0pVNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743405682),
('qT0THBO6RDcmdQjpIFlcgPWstiXvtXXMU26ooxKT', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm1ISEZDVWNpaWxOSlRWb1NlbDRZTUNlTDh1cTRuMEFxWGZQRmFFRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743340262),
('qT5XD7Ddyn56qpPWMJwMrwYKckMgBWPXelU9yFGn', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGhKYUVJaE5NZlJnaU40OWh1MjVNMmRKeWFxZG1pU25mQ0tpWUxmRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743343488),
('QtaRNkySdScaeqVZxkMdw2Iw7IcH1ItrIu2I1TxB', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmdDTTRqYjdqQ1M1TW13cklGb0pRNDh6SVZZVUx1TVAzME9KSTJCOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334069),
('QTIJHh6ZZgJ2vBBa7jQE5LDulLONpaRwPohqC1QI', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGVISktmNXNQam54NW81QTFTQzlValRYZFppaW5qUk5Ma3RqakZKcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338539),
('QvwZ45Jtd3KIHEciQf6Y3b61SzUslyjU2G0BJluw', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlBaWk0wVHdsRTl6Wlk3SkxWdnFHUk84Vlp3ZkZ2ZlhBNmxJYldoYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334885),
('R4OmPKTFhl4EOyGXoBmkJEpwr1Kl9wDHOKFjPDER', NULL, '172.111.15.113', 'Mozilla/5.0 (iPad; CPU OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFBYejhjb3dIb0NiS1BUR0pVeHhXMmhsQk1DYlFHSnJoR1FFd1g2OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743351099),
('rIA2qnPfccMCxO1M4lsG3vrk5VJCuFbvrICFqMkx', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2lNU1pWaFJDdGkzbE40ZllCUVUzOXVQc2FSMjlBOWVIVlQ3b1h3ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743332230),
('RjkYbQeOztRtKyH2OFT5Jg2xqbdNgLkciSCD9YrI', NULL, '15.223.67.30', 'Mozilla/5.0 (Windows; U; MSIE 7.0; Linux i386; Trident/4.0; X11)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2R2SzAxUWNtUDhRbEtGaUJsV09ETnk4akdLM1AyeTZoYmVxOXNUYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743333127),
('rs8IinHW0LUqhJ3ZamHKvNrCa80TBIjNmaTLoBhG', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmtZUUdsVVVzV0hiVjZCcG90MGRNOG5kOFVmQVZTUVV3Nzl5WWF3ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743339185),
('RT6pKHVymHD2G5podQH4OLUYxBXanTbEh16Hhl53', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW9KOHVqYm1MS3hndjRmWHRZY0lucWI5cFg2cUMyMVFCMllGSzF5WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346589),
('SEfMuSIpJewryFBvNt4nojGPmpmyxS0Q5Ce5p5HI', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakdUTlFvVzFOZE1DQmJhcGhqSUdpc0NqNFd5Wm81M005SkxQcEVjRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743328171),
('sm71tyZWai3qlUgylbtruGPwQHT6Smn1AVF4AHqZ', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnA3T3N0NFFTeDhlajVLVFl4QnJWODNuUFZIOHRVZHliS1U3SExueiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743344051),
('snl7dxuVai0NqgJv6LVpBZG34MuaCvImhyBUkR5i', NULL, '45.90.62.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNExnWXVEN3hDbGlYYzJ5V1RMa3VmZDdzQVdMTzZwb0ExamxjSTVJWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743382637),
('sVSdD4fSrrCbLlyd3s6sn8nKFv69I0iSUbxS6cOC', NULL, '193.142.132.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2dZbUFGUFp5MmcxS01oZ1dDYUl5T25Bb1RvbjlOUUJYZjJqaGJ4RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352587),
('sYJTlHtBf5NqkIzGet8ajRdnxQBNPu7qGfoXXA4o', NULL, '102.90.47.101', 'WhatsApp/2.2509.4 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnkxOGhRdFY2N3Fhc0dFTWxxcnZPT0g5ckk0RjlHU1hpaFIzSkNMaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743344330),
('T06bgGU6xHtnqdfBj8WZ4I3PdhJ311yAfO6QN8wk', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDlUNjQyMTE1NWxxZkN3N1gxbTROZFczVzExb1p6TEo0ZjY3a0lqQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338724),
('T3eBGam6LocEWYmW9nYtuPFhHbi4p6bIllIMnvti', NULL, '92.114.110.218', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3VqUXhtelB2clFUVzZ3aTd2TEZlMWNqYVlRQjNqSXpuenBkV0NvYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352407),
('tbJoGKA48l3g1U6FtbzSCkTGLzusgoVCU3OBRcJs', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV290TVpDb1dCZGQwbTNGNXNsU21NTGgzRE9JdHhiMGFCYmhEdjMwaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743339350),
('TciXThZbDfN2SeDNHgKtBToUhMku2OXBurDItJTw', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWV3MjhlVVp4S3dXWnE2RGdUNVdjOFRDYmpDcHJUbWN5N2xtTlVtVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743340112),
('TiOrC1qODntCwM5Cji3dgahzyURQVgd7ZUrpSGLJ', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHZMalBoRWdVMkFEZ0p5NTRrV3hIeDRZbVB3VHpvbVBNZTFTRk1kbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743344050),
('tLT3F3StFqnNencLGen30ki9VvnEa5VadpgMBZPd', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXBORFh2TG5kZFJGam1uRHJwaXZjaFU0SjBOTzlaWkJpVlRCNDBLNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334315),
('TYRLqmPz1XcxeR4Dss9n0ohzflm3Ei05lDC6jIj7', NULL, '66.249.83.1', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmszOWRNaklGSk1LZkVsNVZPbEFBRTA1VzBIb05YdzZQejAwSVRxRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743404831),
('UVhr6LQalqCxZIDuQUOkLLvZmmgWGJd9roqLpPAb', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWE9HVGxuMzdqM1JTSUd1TzllWVB4WXVhNnJFOUlMOE1iNHRBWXZ5UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743339624),
('uzv2xRKNmtyf816MW0EaVZsap72sQGTM25wpY31E', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHFyd1pWRUh1VWtsVXI5WllTZUxNa3NEYXM3SjM5TklJZkZ0aXlTdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333814),
('v2aM9lMACLwg9keBcLcEA150fvpzajsTALfpVoU4', NULL, '105.112.220.232', 'WhatsApp/2.2509.4 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0R4NFM2QlR3czBMTVJOaE5vSFhFYVhDQ3NIWXJvdkF2aEM1WW5MTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743329074),
('V3sFcCms1ZnSs1rn2kWvXtwBUChyYvfxMrCTsIEN', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazVrdTJDQ0hxZEV6SkllTElqNTBiNUZXcEcwOWdDTVFzcG02Q29yRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743337483),
('VCmyuJBxKHBXKsfObRjQnO00Ubz9Pxvex6fCzmOJ', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVdUdEtFMmNVY1RvZXJjNUdxTnJXenVQZkxqblEyR2c4UjNkNVh3ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334195),
('vGftCQYaiu0zVmsCHCRbqFHUc7Wea58BiaOKlXVV', NULL, '105.112.220.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmhQQzZKSXN5d2FNN1FHeWFseDhPQUVRR21nejFSTWtnazNBSlNPeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743328175),
('VIcXnLszR3tCmouNqDyRQewrizHjwU51TszL5MuY', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWE9xRHJnMjhMcG5id3BuY01Cb2hwZ1lqeTJ6cXU1czJGUGF2UmRPSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743339768),
('vKjsVaqUS7JEpcCEQ1ALiCSQavcdSc3GdVSJ1gpu', NULL, '172.111.15.32', 'Mozilla/5.0 (iPad; CPU OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUE53aDRwdnJDdDVMZnBydjczME1PV09aSUtJMVh2UXVITGJJcGM5OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743351099),
('vnpbelhRY5WwEJLnIUWSLe56a5goTHd78CMH0FAV', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnlKOW1rQzdtSnNsWUtIZGZDYkdBMkI3T2ZYekdOVnFrbmFnZUhWYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338749),
('vtmLti7YBAADh4EBIACdwpUtFWXBWo7lGsSQ6qmi', NULL, '172.111.15.192', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmdxRjBYWG9UNlJ0Tks5cDJkNU9mall3RmIzYzZZMjNRMXBRZzFSMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352292),
('vwNsrEjgQ3SPTbsSGd7xCLNcCP75rR8gMjTERj0y', NULL, '93.119.193.12', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajU1TTZyR3JwQkNVdDh3S1gyZnlFZVVBcHRMOXA2MmlIaUVMZnFzRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352511),
('Vxzdq5pU3gIcfGSXZRDybr89S5jUCqCvMcndu7Nn', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGNwT2VhS0IydXV0b1BibVZ1bVhOcGVFMjlUNTdLcDBpb3BmQlBYQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334075),
('W1rTnQpUdI6H2LdNxDQR1PJdOolgzNMKyV5uGJ0j', NULL, '3.88.35.90', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamRoczJhWkFaWGhXNUhtN3h4WGlZT3hZRnR1WGlmOW5DaUFCdkxUcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743352333),
('WFsI1MrDOk8WVYqfxYtEMsCqcZkloD776QxVgs2M', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTlnWEZvYks1OXJ2blpPSElicUR2OWxSS2FNWndXZDJqSVZLaFFHNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743339617),
('wJtbbd6CWhh56SjXmzp3YEo2IEtvjDdg41n4hubo', NULL, '94.139.232.146', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:69.0) Gecko/20100101 Firefox/69.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmZVMHRsUDhQUWNWSmhyMDZFSzhnaEVsZTZTYUZVVW9JcnVXUktGdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352633),
('x5x84XUMInbQYORbi3nkGYRPLOAKjuGvlefu5ZsF', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVJXc29DRlAyNHB1N1hYNzBJaUk1VFBnN3RFMEJFTGp4U2VrUTlmVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334122),
('X98pzVLVXQcDb5MKoFCfSnsmOn6PAOxLVfP8BJLi', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0luSmdVSlc2YWYxVHd2dlN6cWJ2RVRQVm9UZlhEdnlxUHFsUUR5NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743340080),
('XA6xsN7HeYdTXEWicPne6daQZ6qBCgVNEMIVXALu', NULL, '13.216.240.152', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzVGNHF1TGpjN01GUzduZVNjR1pxSlgzVGI5YVVpQzVqRVlGN29XWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352290),
('xgDqOo8V8tz6xkN1g3chOcsE0c9AydFrgPypHAZx', NULL, '103.187.97.123', 'Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzBHeUhIbEdiSUEwSkhFZU50dkREWjhnZXF1QklPM3dJT0oxcXNMdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743406928),
('XujuB59yQzTMuAIo3tkLGI9Z2OmcIKvujnWgvtkz', NULL, '105.112.103.54', 'WhatsApp/2.2509.4 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSW1pbjBTTTNkelEzMzZDa1MxSXpvYzdlV3A4ZENMbU1qWDVKeGpMRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743404800),
('xwDKKYotbhLtKkDvUf4EdoyL4AGGHfFECvFDvNd9', NULL, '185.198.240.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazVyelNpeFpwY1J4dmp4cjgycU9tMXl1RENnZlpGZ0c0Mk80V21TYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743341166),
('XzzHQkjyBFbUx9Bce5LgcfVNV6nyJ1fFOanRIKSM', NULL, '45.90.61.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2d1dE1KbktVSEJQOGtZeXU2V2FBTk4wYWRZY0tDUlo5UzNFSDJ5RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743386865),
('y763SofhfeH55f8uaSRKxV4XzOtgIsFnamGeycqT', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzdqMkJPaXZ5S3VKRzZyaDdDNVBLY2xRSnllblBpZ25RZ1FIY1pPQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743345364),
('YHiCLhF3qwEW1fnhSvnffJvjkfhWAvO0OyE4wTSc', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTlMZThzQ3dZSGlSODRvN041T1JMSjFvMmVJWHRSbFZWWEt0dGNPQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743338748),
('YS38M2l4btenACkC16GV8WdqQy6aliPXJRDHtyoa', NULL, '94.139.239.253', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUc3cVZlTjl5NElRZDRqaG15QUptOFhpMHA5eng1QUVEcnd5ZDFGZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743351103),
('yu6nhpYq3uJsJ5qi65VROsjijn2uhgGwuAxXwZOp', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWFsMU5OM1NESDloN3A2N0Q5d2RCN0dpN2Y4MmJ3RkJsS2FjY0hZZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743334076),
('Yzd8XsoO9eUVUP2AovwRuGnVlKOOtQqBCbGvb4uZ', NULL, '188.19.46.52', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.49 YaBrowser/24.4.6.49.00 SA/3 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG0za2FudE80Zk5Oem9QUXdvNGpRcjdCOXpqQlNkNTZsZDdaYWhxSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743371231),
('zEkvNLzW5PRcNLuD9gasWoZ4rlZq6GFPRfVPamOx', NULL, '172.111.15.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTh6eURicWdUTE43emV2dWdPNzNCb1cxT1RkOGU0Q1F4S3hsTllxUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743352369),
('ZeMDMJayj5ovO4ijsNGxUYzxraBKZBRplZwKKEGm', NULL, '45.90.62.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamF4UDRqYWxGN2F5VmpoS2NpeExkQml2R1VjbHdENGtydTVxTzhOZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmJhbmsuc3RhbWZvcmRzY2l0eS5vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743340094),
('ziC0qUGYq6yLRexwkbtdH8nNez0U97nPiYnEjIlB', NULL, '45.90.63.80', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3U4ZDdGUDJVZlRtanZWMmlIY09iR3gxVlBaN0RuMU9pNENqdm95QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743339892),
('zJZPeKUnar3gDXiWROCeZ2oC7tGMKwhny7bDNFBv', NULL, '102.90.47.101', 'WhatsApp/2.23.20.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidW1PVWFtN2JCMlZGandoZnduZkNWbkNHV3JaTFZRSk1qSEVYQnUwMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743344347),
('zpqrIjhgd1brZXqKJoFd2U7ADH2hWmNLv40W3kdR', NULL, '102.90.47.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 YaBrowser/25.2.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnJDU2NyempCMnRONFhBTTZmcUc1V3B3Znl1MXU3QVVQVmxKSmJCZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vYmFuay5zdGFtZm9yZHNjaXR5Lm9ubGluZS9tYW5pZmVzdC5qc29uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743333530);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `site_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code1` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code2` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code3` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code4` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `code1status` int DEFAULT '1',
  `code2status` int DEFAULT '1',
  `code3status` int DEFAULT '1',
  `otp` int DEFAULT '0',
  `sms` int DEFAULT '0',
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intreast` int DEFAULT NULL,
  `s_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capt_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capt_sitekey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_s_k` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_p_k` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pp_cs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pp_ci` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_translate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekend_trade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_server` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailfrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailfromname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_encrypt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_commission5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_bonus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_bonus` int DEFAULT NULL,
  `tawk_to` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enable_2fa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `enable_kyc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `enable_kyc_registration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_with` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_verification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `enable_social_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawal_option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `deposit_option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_merchant_option` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Coinpayment',
  `dashboard_option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_annoc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_service` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `captcha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_capital` tinyint(1) DEFAULT '1',
  `tido` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_o` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_cancel_plan` tinyint(1) DEFAULT '1',
  `commission_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_fee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthlyfee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quarterlyfee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yearlyfee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newupdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modules` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `redirect_url` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website_theme` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'purpose.css',
  `credit_card_provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Paystack',
  `deduction_option` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'userRequest',
  `welcome_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `install_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_key` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code1message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `code2message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `code3message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `code1`, `code2`, `code3`, `code4`, `description`, `code1status`, `code2status`, `code3status`, `otp`, `sms`, `currency`, `intreast`, `s_currency`, `capt_secret`, `capt_sitekey`, `payment_mode`, `location`, `s_s_k`, `s_p_k`, `pp_cs`, `pp_ci`, `keywords`, `site_title`, `site_address`, `logo`, `favicon`, `trade_mode`, `google_translate`, `weekend_trade`, `contact_email`, `timezone`, `mail_server`, `emailfrom`, `emailfromname`, `smtp_host`, `smtp_port`, `smtp_encrypt`, `smtp_user`, `smtp_password`, `google_secret`, `google_id`, `google_redirect`, `referral_commission`, `referral_commission1`, `referral_commission2`, `referral_commission3`, `referral_commission4`, `referral_commission5`, `signup_bonus`, `deposit_bonus`, `tawk_to`, `enable_2fa`, `enable_kyc`, `enable_kyc_registration`, `enable_with`, `enable_verification`, `enable_social_login`, `withdrawal_option`, `deposit_option`, `auto_merchant_option`, `dashboard_option`, `enable_annoc`, `subscription_service`, `captcha`, `return_capital`, `tido`, `address_o`, `whatsapp`, `should_cancel_plan`, `commission_type`, `commission_fee`, `monthlyfee`, `quarterlyfee`, `yearlyfee`, `newupdate`, `modules`, `redirect_url`, `address`, `website_theme`, `credit_card_provider`, `deduction_option`, `welcome_message`, `install_type`, `merchant_key`, `created_at`, `updated_at`, `code1message`, `code2message`, `code3message`) VALUES
(1, 'Stamford City Bank', 'IMF', 'SWIFT', 'COT', NULL, NULL, 1, 0, 1, 0, 0, '$', 40, 'USD', NULL, NULL, '123567', NULL, 'sk_test_51M1VmfFSYdH5XTaEZgPwZLfrbZIXIf7ZgWaIXORzlJnESfX2ymtoS5wSdDmJcDwF3vuwGNVrUPBKOqhP9806DvZA00B0ExUbHc', 'pk_test_51M1VmfFSYdH5XTaE2qnAXCOOzKMcxvcMBKtAYxpZGWA00flDsxLPtBLtSfGRQve0C2BAGXNCVp71ytpNgUQYbnyy00nICYCfDT', 'jijdjkdkdk', 'iidjdjdj', 'Online bank', 'Welcome to Stamford City Bank', 'https://bank.stamfordscity.online', 'photos/XEUdXKK0i1Z3aV3dv9tcg5pwmfRVwfSOadwBD6RW.png', 'photos/6qHvE5jpWyJEl3XiuUnPPTKyB9aNOG79697Gazmv.png', NULL, NULL, NULL, 'support@stamfordscity.online', 'Pacific/Wallis', 'sendmail', 'support@stamfordscity.online', 'Stamford City Bank', 'stamfordscity.online', '465', 'ssl', 'support@stamfordscity.online', 'Raziboy11*', NULL, NULL, 'http://yoursite.com/auth/google/callback', '5', '30', '20', '10', '5', '1', NULL, 0, '', 'no', 'no', 'no', NULL, 'false', NULL, 'manual', 'manual', 'Binance', 'dark', NULL, 'on', NULL, 0, NULL, '55 Aylmer Road, East Finchley, London, United Kingdom, N2 0AT', NULL, NULL, NULL, NULL, '30', '40', '80', NULL, '{\"signal\":false,\"cryptoswap\":false,\"investment\":true,\"membership\":false,\"subscription\":true}', NULL, '301 East Water Street, Charlottesville, VA 22904 Virginia', 'blue.css', 'Stripe', 'userRequest', NULL, 'Sub-Domain', NULL, NULL, '2025-03-30 09:46:06', 'The IMF code is required to enable you to continue with this transaction. Please contact  our online customer care on representative with  the live chat: they will help you with the appropriate IMF code for this transaction.', 'The Federal SWIFT code is required for this transaction can be completed successfully. Please contact  our online customer care representative with  the live chat: for more details of the for this transaction.', 'The COT code is required to enable you to continue with this transaction. Please contact  our online customer care on representative with  the live chat: they will help you with the appropriate COT code for this transaction.');

-- --------------------------------------------------------

--
-- Table structure for table `settings_conts`
--

CREATE TABLE `settings_conts` (
  `id` bigint UNSIGNED NOT NULL,
  `use_crypto_feature` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `fee` float DEFAULT '0',
  `btc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `eth` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `ltc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `link` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `bnb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `aave` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'enabled',
  `usdt` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `bch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `xlm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `xrp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `ada` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `currency_rate` int DEFAULT NULL,
  `minamt` int DEFAULT NULL,
  `use_transfer` tinyint(1) DEFAULT '1',
  `min_transfer` int DEFAULT '0',
  `purchase_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'xxxxxx',
  `transfer_charges` int DEFAULT '0',
  `bnc_secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bnc_api_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flw_secret_hash` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flw_secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flw_public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_p2p` float DEFAULT NULL,
  `enable_p2p` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_bot_api` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings_conts`
--

INSERT INTO `settings_conts` (`id`, `use_crypto_feature`, `fee`, `btc`, `eth`, `ltc`, `link`, `bnb`, `aave`, `usdt`, `bch`, `xlm`, `xrp`, `ada`, `currency_rate`, `minamt`, `use_transfer`, `min_transfer`, `purchase_code`, `transfer_charges`, `bnc_secret_key`, `bnc_api_key`, `flw_secret_hash`, `flw_secret_key`, `flw_public_key`, `local_currency`, `commission_p2p`, `enable_p2p`, `base_currency`, `telegram_bot_api`, `created_at`, `updated_at`) VALUES
(1, 'false', 2, 'enabled', 'enabled', 'enabled', 'enabled', 'enabled', 'enabled', 'enabled', 'enabled', 'enabled', 'enabled', 'enabled', 500, 50, 1, 50, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'NGN', 0, 'false', NULL, '5797628824:AAFZ7AeMeVRivSL0h5wr1tU3u_MmNip3mb8', '2021-10-31 18:32:30', '2023-08-06 14:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms_privacies`
--

CREATE TABLE `terms_privacies` (
  `id` int UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `useterms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_privacies`
--

INSERT INTO `terms_privacies` (`id`, `description`, `useterms`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Our Commitment to You:</strong></p>\r\n\r\n<p>Thank you for showing interest in our service. In order for us to provide you with our service, we are required to collect and process certain personal data about you and your activity.</p>\r\n\r\n<p>By entrusting us with your personal data, we would like to assure you of our commitment to keep such information private and to operate in accordance with all regulatory laws and all EU data protection laws, including General Data Protection Regulation (GDPR) 679/2016 (EU).</p>\r\n\r\n<p>We have taken measurable steps to protect the confidentiality, security and integrity of this data. We encourage you to review the following information carefully.</p>\r\n\r\n<p><strong>Grounds for data collection:</strong></p>\r\n\r\n<p>Processing of your personal information (meaning, any data which may potentially allow your identification with reasonable means; hereinafter &ldquo;Personal Data&rdquo;) is necessary for the performance of our contractual obligations towards you and providing you with our services, to protect our legitimate interests and for compliance with legal and financial regulatory obligations to which we are subject.</p>\r\n\r\n<p>When you use our services, you consent to the collection, storage, use, disclosure and other uses of your Personal Data as described in this Privacy Policy.</p>\r\n\r\n<p><strong>How do we receive data about you?</strong></p>\r\n\r\n<p>We receive your Personal Data from various sources:</p>\r\n\r\n<ol>\r\n	<li>When you voluntarily provide us with your personal details in order to create an account (for example, your name and email address)</li>\r\n	<li>When you use or access our site and services, in connection with your use of our services (for example, your financial transactions)</li>\r\n	<li>&nbsp;</li>\r\n</ol>\r\n\r\n<p><strong>What type of data we collect?</strong></p>\r\n\r\n<p>In order to open an account, and in order to provide you with our services we will need you to collect the following data:</p>\r\n\r\n<p><strong>Personal Data<br />\r\nWe collect the following Personal Data about you:</strong></p>\r\n\r\n<ul>\r\n	<li><em>Registration data</em>&nbsp;&ndash; your name, email address, phone number, occupation, country of residence, and your age (in order to verify you are over 18 years of age and eligible to participate in our service).</li>\r\n	<li><em>Voluntary data</em>&nbsp;&ndash; when you communicate with us (for example when you send us an email or use a &ldquo;contact us&rdquo; form on our site) we collect the personal data you provided us with.</li>\r\n	<li><em>Financial data</em>&nbsp;&ndash; by its nature, your use of our services includes financial transactions, thus requiring us to obtain your financial details, which includes, but not limited to your payment details (such as bank account details and financial transactions performed through our services).</li>\r\n	<li><em>Technical data</em>&nbsp;&ndash; we collect certain technical data that is automatically recorded when you use our services, such as your IP address, MAC address, device approximate location</li>\r\n	<li>Non Personal Data</li>\r\n</ul>\r\n\r\n<p>We record and collect data from or about your device (for example your computer or your mobile device) when you access our services and visit our site. This includes, but not limited to: your login credentials, UDID, Google advertising ID, IDFA, cookie identifiers, and may include other identifiers such your operating system version, browser type, language preferences, time zone, referring domains and the duration of your visits. This will facilitate our ability to improve our service and personalize your experience with us.<br />\r\nIf we combine Personal Data with non-Personal Data about you, the combined data will be treated as Personal Data for as long as it remains combined.</p>\r\n\r\n<p><strong>Tracking Technologies</strong></p>\r\n\r\n<p>When you visit or access our services we use (and authorize 3rd parties to use) pixels, cookies, events and other technologies (&ldquo;Tracking Technologies&ldquo;). Those allow us to automatically collect data about you, your device and your online behavior, in order to enhance your navigation in our services, improve our site&rsquo;s performance, perform analytics and customize your experience on it. In addition, we may merge data we have with data collected through said tracking technologies with data we may obtain from other sources and, as a result, such data may become Personal Data.<br />\r\nCookie Policy page.</p>\r\n\r\n<p><strong>How do we use the data We collect?</strong></p>\r\n\r\n<ul>\r\n	<li>Provision of service &ndash; we will use your Personal Data you provide us for the provision and improvement of our services to you.</li>\r\n	<li>Marketing purposes &ndash; we will use your Personal Data (such as your email address or phone number). For example, by subscribing to our newsletter you will receive tips and announcements straight to your email account. We may also send you promotional material concerning our services or our partners&rsquo; services (which we believe may interest you), including but not limited to, by building an automated profile based on your Personal Data, for marketing purposes. You may choose not to receive our promotional or marketing emails (all or any part thereof) by clicking on the &ldquo;unsubscribe&rdquo; link in the emails that you receive from us. Please note that even if you unsubscribe from our newsletter, we may continue to send you service-related updates and notifications or reply to your queries and feedback you provide us.</li>\r\n	<li>Opt-out of receiving marketing materials &ndash; If you do not want us to use or share your personal data for marketing purposes, you may opt-out in accordance with this &ldquo;Opt-out&rdquo; section. Please note that even if you opt-out, we may still use and share your personal information with third parties for non-marketing purposes (for example to fulfill your requests, communicate with you and respond to your inquiries, etc.). In such cases, the companies with whom we share your personal data are authorized to use your Personal Data only as necessary to provide these non-marketing services.</li>\r\n	<li>Analytics, surveys and research &ndash; we are always trying to improve our services and think of new and exciting features for our users. From time to time, we may conduct surveys or test features, and analyze the information we have to develop, evaluate and improve these features.</li>\r\n	<li>Protecting our interests &ndash; we use your Personal Data when we believe it&rsquo;s necessary in order to take precautions against liabilities, investigate and defend ourselves against any third-party claims or allegations, investigate and protect ourselves from fraud, protect the security or integrity of our services and protect the rights and property of the company, its users and/or partners.</li>\r\n	<li>Enforcing of policies &ndash; we use your Personal Data in order to enforce our policies, including but limited to our Terms &amp; Conditions.</li>\r\n	<li>Compliance with legal and regulatory requirements &ndash; we also use your Personal Data to investigate violations and prevent money laundering and perform due-diligence checks, and as required by law, regulation or other governmental authority, or to comply with a subpoena or similar legal process.</li>\r\n</ul>\r\n\r\n<p><strong>With whom do we share your Personal Data</strong></p>\r\n\r\n<ul>\r\n	<li>Internal concerned parties &ndash; we share your data with companies in our group, as well as our employees limited to those employees or partners who need to know the information in order to provide you with our services.</li>\r\n	<li>Financial providers and payment processors &ndash; we share your financial data about you for purposes of accepting deposits or performing risk analysis.</li>\r\n	<li>Business partners &ndash; we share your data with business partners, such as storage providers and analytics providers who help us provide you with our service.</li>\r\n	<li>Legal and regulatory entities &ndash; we may disclose any data in case we believe, in good faith, that such disclosure is necessary in order to enforce our Terms &amp; Conditions take precautions against liabilities, investigate and defend ourselves against any third party claims or allegations, protect the security or integrity of the site and our servers and protect the rights and property, our users and/or partners. We may also disclose your personal data where requested any other regulatory authority having control or jurisdiction over us, you or our associates or in the territories we have clients or providers, as a broker.</li>\r\n	<li>Merger and acquisitions &ndash; we may share your data if we enter into a business transaction such as a merger, acquisition, reorganization, bankruptcy, or sale of some or all of our assets. Any party that acquires our assets as part of such a transaction may continue to use your data in accordance with the terms of this Privacy Policy.</li>\r\n</ul>\r\n\r\n<p><strong>Transfer of data outside the EEA</strong></p>\r\n\r\n<p>Please note that some data recipients may be located outside the EEA. In such cases, we will transfer your data only to such countries as approved by the European Commission as providing an adequate level of data protection or enter into legal agreements ensuring an adequate level of data protection.</p>\r\n\r\n<p><strong>How we protect your data</strong></p>\r\n\r\n<p>We have implemented administrative, technical, and physical safeguards to help prevent unauthorized access, use, or disclosure of your personal data. Your data is stored on secure servers and isn&rsquo;t publicly available. We limit access of your data only to those employees or partners that need to know the information in order to enable the carrying out of the agreement between us.</p>\r\n\r\n<p>You need to help us prevent unauthorized access to your account by protecting your password appropriately and limiting access to your account (for example, by signing off after you have finished accessing your account). You will be solely responsible for keeping your password confidential and for all use of your password and your account, including any unauthorized use.</p>\r\n\r\n<p>While we seek to protect your data to ensure that it is kept confidential, we cannot absolutely guarantee its security. You should be aware that there is always some risk involved in transmitting data over the internet. While we strive to protect your Personal Data, we cannot ensure or warrant the security and privacy of your personal Data or other content you transmit using the service, and you do so at your own risk.</p>\r\n\r\n<p><strong>Retention</strong></p>\r\n\r\n<p>We will retain your personal data for as long as necessary to provide our services, and as necessary to comply with our legal obligations, resolve disputes, and enforce our policies. Retention periods will be determined taking into account the type of data that is collected and the purpose for which it is collected, bearing in mind the requirements applicable to the situation and the need to destroy outdated, unused data at the earliest reasonable time. Under applicable regulations, we will keep records containing client personal data, trading information, account opening documents, communications and anything else as required by applicable laws and regulations.</p>\r\n\r\n<p><strong>User Rights</strong></p>\r\n\r\n<ol>\r\n	<li>Receive confirmation as to whether or not personal data concerning you is being processed, and access your stored personal data, together with supplementary data.</li>\r\n	<li>Receive a copy of personal data you directly volunteer to us in a structured, commonly used and machine-readable format.</li>\r\n	<li>Request rectification of your personal data that is in our control.</li>\r\n	<li>Request erasure of your personal data.</li>\r\n	<li>Object to the processing of personal data by us.</li>\r\n	<li>Request to restrict processing of your personal data by us.</li>\r\n</ol>\r\n\r\n<p>However, please note that these rights are not absolute, and may be subject to our own legitimate interests and regulatory requirements.</p>\r\n\r\n<p><strong>How to Contact us?</strong></p>\r\n\r\n<p>If you wish to exercise any of the aforementioned rights, or receive more information, please contact our General Data Protection Officer (&ldquo;GDPO&rdquo;) using the details provided below:</p>\r\n\r\n<p>Email: support@onlintrade.com</p>\r\n\r\n<p>Attn. GDPO Compliance Officer</p>\r\n\r\n<p>If you decide to terminate your account, you may do so by emailing us at support@onlintrade.com. If you terminate your account, please be aware that personal information that you have provided us may still be maintained for legal and regulatory reasons (as described above), but it will no longer be accessible via your account.</p>\r\n\r\n<p><strong>Updates to this Policy</strong></p>\r\n\r\n<p>This Privacy Policy is subject to changes from time to time, at our sole discretion. The most current version will always be posted on our website (as reflected in the &ldquo;Last Updated&rdquo; heading). You are advised to check for updates regularly. In the event of material changes, we will provide you with a notice. By continuing to access or use our services after any revisions become effective, you agree to be bound by the updated Privacy Policy.</p>', 'no', '2020-12-14 15:39:57', '2022-07-05 11:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `testimonies`
--

CREATE TABLE `testimonies` (
  `id` bigint UNSIGNED NOT NULL,
  `ref_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_is_said` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tp__transactions`
--

CREATE TABLE `tp__transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `plan` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_plan_id` int DEFAULT NULL,
  `user` int DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp__transactions`
--

INSERT INTO `tp__transactions` (`id`, `plan`, `user_plan_id`, `user`, `amount`, `type`, `created_at`, `updated_at`) VALUES
(112, 'Standard', 18, 93, '0.046', 'ROI', '2022-08-09 10:29:04', '2022-08-09 10:29:04'),
(113, 'Standard', 18, 93, '0.046', 'ROI', '2022-08-09 10:52:59', '2022-08-09 10:52:59'),
(115, 'Standard', NULL, 93, '200', 'Investment capital', '2022-08-09 11:22:42', '2022-08-09 11:22:42'),
(116, 'SignUp Bonus', NULL, 93, '5', 'Bonus', '2022-08-16 06:27:32', '2022-08-16 06:27:32'),
(117, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-08-30 06:13:40', '2022-08-30 06:13:40'),
(118, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-08-30 06:13:40', '2022-08-30 06:13:40'),
(119, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-08-30 08:14:20', '2022-08-30 08:14:20'),
(120, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-08-30 08:14:20', '2022-08-30 08:14:20'),
(121, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-08-30 08:43:51', '2022-08-30 08:43:51'),
(122, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-08-30 08:43:51', '2022-08-30 08:43:51'),
(123, 'Credit', NULL, 158, '200', 'balance', '2022-08-30 10:32:05', '2022-08-30 10:32:05'),
(124, 'Credit reversal', NULL, 158, '100', 'balance', '2022-08-30 10:32:27', '2022-08-30 10:32:27'),
(125, 'Subscribed MT4 Trading', NULL, 93, '30', 'MT4 Trading', '2022-08-31 05:19:19', '2022-08-31 05:19:19'),
(126, 'Subscribed MT4 Trading', NULL, 93, '40', 'MT4 Trading', '2022-08-31 09:01:26', '2022-08-31 09:01:26'),
(127, 'Standard', NULL, 93, '200', 'Plan purchase', '2022-09-02 15:22:41', '2022-09-02 15:22:41'),
(128, 'Standard', NULL, 93, '200', 'Investment capital', '2022-09-02 16:44:49', '2022-09-02 16:44:49'),
(129, 'Standard', NULL, 93, '200', 'Plan purchase', '2022-09-02 18:02:31', '2022-09-02 18:02:31'),
(130, 'Subscribed MT4 Trading', NULL, 93, NULL, 'MT4 Trading', '2022-09-20 01:40:02', '2022-09-20 01:40:02'),
(131, 'Subscribed MT4 Trading', NULL, 93, '30', 'MT4 Trading', '2022-09-20 09:26:40', '2022-09-20 09:26:40'),
(132, 'Subscribed MT4 Trading', NULL, 93, '30', 'MT4 Trading', '2022-09-21 00:14:49', '2022-09-21 00:14:49'),
(133, 'Credit', NULL, 156, '200000', 'Profit', '2022-10-28 05:59:52', '2022-10-28 05:59:52'),
(134, 'Credit reversal', NULL, 156, '200000', 'balance', '2022-10-28 06:00:20', '2022-10-28 06:00:20'),
(135, 'Credit reversal', NULL, 156, '200000', 'Profit', '2022-10-28 06:00:34', '2022-10-28 06:00:34'),
(136, 'Credit', NULL, 156, '200000', 'balance', '2022-10-28 06:01:01', '2022-10-28 06:01:01'),
(137, 'Credit', NULL, 156, '200', 'balance', '2022-10-28 06:01:17', '2022-10-28 06:01:17'),
(138, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-10-28 06:05:21', '2022-10-28 06:05:21'),
(139, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-10-28 06:05:21', '2022-10-28 06:05:21'),
(140, 'Credit', NULL, 158, '100', 'balance', '2022-10-29 00:26:45', '2022-10-29 00:26:45'),
(141, 'Credit', NULL, 93, '100', 'balance', '2022-11-04 06:43:24', '2022-11-04 06:43:24'),
(142, 'Credit', NULL, 93, '100', 'Profit', '2022-11-04 06:43:56', '2022-11-04 06:43:56'),
(143, 'Credit', NULL, 93, '100', 'Ref_Bonus', '2022-11-04 06:44:45', '2022-11-04 06:44:45'),
(144, 'Credit', NULL, 93, '100', 'Bonus', '2022-11-04 06:45:11', '2022-11-04 06:45:11'),
(145, 'Credit', NULL, 93, '100', 'Profit', '2022-11-04 06:46:01', '2022-11-04 06:46:01'),
(146, 'Credit', NULL, 93, '100', 'Profit', '2022-11-04 06:47:18', '2022-11-04 06:47:18'),
(147, 'Debit', NULL, 93, '100', 'Bonus', '2022-11-04 06:47:38', '2022-11-04 06:47:38'),
(148, 'Debit', NULL, 93, '100', 'Ref_Bonus', '2022-11-04 06:47:58', '2022-11-04 06:47:58'),
(149, 'Debit', NULL, 93, '100', 'Profit', '2022-11-04 06:48:22', '2022-11-04 06:48:22'),
(150, 'Debit', NULL, 93, '100', 'balance', '2022-11-04 06:48:38', '2022-11-04 06:48:38'),
(151, 'Credit', NULL, 93, '100', 'Deposit', '2022-11-04 06:48:52', '2022-11-04 06:48:52'),
(152, 'Debit', NULL, 93, '100', 'Deposit', '2022-11-04 06:49:11', '2022-11-04 06:49:11'),
(153, 'Credit', NULL, 93, '100', 'Ref_Bonus', '2022-11-05 01:26:44', '2022-11-05 01:26:44'),
(154, 'Credit', NULL, 156, '100', 'balance', '2022-11-05 01:36:03', '2022-11-05 01:36:03'),
(155, 'Credit', NULL, 158, '100', 'balance', '2022-11-05 01:36:03', '2022-11-05 01:36:03'),
(156, 'Debit', NULL, 93, '100', 'balance', '2022-11-05 01:36:27', '2022-11-05 01:36:27'),
(157, 'Debit', NULL, 156, '100', 'balance', '2022-11-05 01:36:27', '2022-11-05 01:36:27'),
(158, 'Debit', NULL, 158, '100', 'balance', '2022-11-05 01:36:27', '2022-11-05 01:36:27'),
(159, 'Purchase Course', NULL, 93, '2000', 'Education', '2022-11-05 03:23:24', '2022-11-05 03:23:24'),
(160, 'Standard', NULL, 93, '200', 'Plan purchase', '2022-11-10 05:17:43', '2022-11-10 05:17:43'),
(161, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-11-10 05:53:37', '2022-11-10 05:53:37'),
(162, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-11-10 05:53:37', '2022-11-10 05:53:37'),
(163, 'Credit', NULL, 93, '100', 'balance', '2022-11-10 07:09:20', '2022-11-10 07:09:20'),
(164, 'Credit', NULL, 156, '100', 'balance', '2022-11-10 07:09:20', '2022-11-10 07:09:20'),
(165, 'Credit', NULL, 158, '100', 'balance', '2022-11-10 07:09:20', '2022-11-10 07:09:20'),
(166, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-11-11 02:28:03', '2022-11-11 02:28:03'),
(167, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-11-11 02:36:46', '2022-11-11 02:36:46'),
(168, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-11-11 02:36:46', '2022-11-11 02:36:46'),
(169, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-11-11 02:40:38', '2022-11-11 02:40:38'),
(170, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-11-11 02:40:38', '2022-11-11 02:40:38'),
(171, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-11-11 02:40:49', '2022-11-11 02:40:49'),
(172, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-11-11 02:40:49', '2022-11-11 02:40:49'),
(173, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-11-11 02:42:13', '2022-11-11 02:42:13'),
(174, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-11-11 02:42:13', '2022-11-11 02:42:13'),
(175, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-11-11 02:47:09', '2022-11-11 02:47:09'),
(176, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-11-11 02:47:09', '2022-11-11 02:47:09'),
(177, 'Deposit Bonus for $ 100 deposited', NULL, 93, '2', 'Bonus', '2022-11-17 03:20:39', '2022-11-17 03:20:39'),
(178, 'Credit', NULL, 151, '40', 'Ref_bonus', '2022-11-17 03:20:39', '2022-11-17 03:20:39'),
(179, 'Standard', NULL, 93, '200', 'Investment capital for cancelled plan', '2022-11-25 12:47:05', '2022-11-25 12:47:05'),
(180, 'Standard', NULL, 170, '200', 'Plan purchase', '2023-02-13 19:14:24', '2023-02-13 19:14:24'),
(181, 'Standard', 22, 170, '80', 'ROI', '2023-02-13 20:10:14', '2023-02-13 20:10:14'),
(182, 'Standard', 22, 170, '80', 'ROI', '2023-02-13 21:05:44', '2023-02-13 21:05:44'),
(183, 'Standard', 22, 170, '80', 'ROI', '2023-02-13 22:00:42', '2023-02-13 22:00:42'),
(184, 'Standard', 22, 170, '80', 'ROI', '2023-02-13 22:50:28', '2023-02-13 22:50:28'),
(185, 'Standard', NULL, 170, '200', 'Investment capital', '2023-02-13 23:15:34', '2023-02-13 23:15:34'),
(186, 'Credit', NULL, 172, '500', 'Profit', '2023-02-23 15:53:52', '2023-02-23 15:53:52'),
(187, 'Credit', NULL, 171, '2006', 'Profit', '2023-02-23 18:04:19', '2023-02-23 18:04:19'),
(188, 'Credit', NULL, 171, '1000', 'Deposit', '2023-02-23 18:04:34', '2023-02-23 18:04:34'),
(189, 'Credit', NULL, 171, '200', 'balance', '2023-02-23 18:04:49', '2023-02-23 18:04:49'),
(190, 'Credit', NULL, 171, '2006', 'balance', '2023-02-23 18:05:02', '2023-02-23 18:05:02'),
(191, 'Credit', NULL, 181, '7000', 'Deposit', '2023-03-15 12:59:00', '2023-03-15 12:59:00'),
(192, 'Credit', NULL, 181, '906677', 'Profit', '2023-03-15 12:59:23', '2023-03-15 12:59:23'),
(193, 'Credit', NULL, 178, '5000.00', 'Profit', '2023-03-27 01:02:28', '2023-03-27 01:02:28'),
(194, 'Credit', NULL, 190, '400000', 'Profit', '2023-03-27 13:56:00', '2023-03-27 13:56:00'),
(195, 'Credit', NULL, 197, '5000.00', 'Deposit', '2023-04-03 19:15:38', '2023-04-03 19:15:38'),
(196, 'Credit', NULL, 199, '700', 'Profit', '2023-04-11 15:15:24', '2023-04-11 15:15:24'),
(197, 'Basic Plan', NULL, 197, '200', 'Plan purchase', '2023-04-20 11:35:36', '2023-04-20 11:35:36'),
(198, 'Basic Plan', NULL, 197, '300', 'Plan purchase', '2023-04-24 21:36:53', '2023-04-24 21:36:53'),
(199, 'Basic Plan', NULL, 197, '300', 'Plan purchase', '2023-04-24 21:40:35', '2023-04-24 21:40:35'),
(200, 'AMATUER AI', NULL, 197, '200', 'Plan purchase', '2023-04-24 23:02:27', '2023-04-24 23:02:27'),
(201, 'Credit', NULL, 197, '200', 'Profit', '2023-04-25 01:34:48', '2023-04-25 01:34:48'),
(202, 'Credit', NULL, 197, '300', 'Profit', '2023-04-25 01:39:45', '2023-04-25 01:39:45'),
(203, 'Credit reversal', NULL, 197, '2000', 'balance', '2023-04-25 01:56:33', '2023-04-25 01:56:33'),
(204, 'Credit', NULL, 199, '500', 'Bonus', '2023-04-25 06:29:58', '2023-04-25 06:29:58'),
(205, 'AMATUER AI', 23, 197, '4', 'ROI', '2023-04-25 09:59:17', '2023-04-25 09:59:17'),
(206, 'AMATUER AI', 24, 197, '6', 'ROI', '2023-04-25 09:59:22', '2023-04-25 09:59:22'),
(207, 'AMATUER AI', 25, 197, '6', 'ROI', '2023-04-25 09:59:23', '2023-04-25 09:59:23'),
(208, 'AMATUER AI', 26, 197, '4', 'ROI', '2023-04-25 09:59:24', '2023-04-25 09:59:24'),
(209, 'AMATUER AI', 23, 197, '4', 'ROI', '2023-04-25 09:59:47', '2023-04-25 09:59:47'),
(210, 'AMATUER AI', 23, 197, '4', 'ROI', '2023-04-25 10:00:11', '2023-04-25 10:00:11'),
(211, 'AMATUER AI', NULL, 197, '500', 'Plan purchase', '2023-04-25 10:03:58', '2023-04-25 10:03:58'),
(212, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:05:09', '2023-04-25 10:05:09'),
(213, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 10:05:15', '2023-04-25 10:05:15'),
(214, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:10:12', '2023-04-25 10:10:12'),
(215, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:15:10', '2023-04-25 10:15:10'),
(216, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 10:15:19', '2023-04-25 10:15:19'),
(217, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:20:10', '2023-04-25 10:20:10'),
(218, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 10:20:17', '2023-04-25 10:20:17'),
(219, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:25:10', '2023-04-25 10:25:10'),
(220, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 10:25:18', '2023-04-25 10:25:18'),
(221, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:30:13', '2023-04-25 10:30:13'),
(222, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:35:10', '2023-04-25 10:35:10'),
(223, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 10:35:18', '2023-04-25 10:35:18'),
(224, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:40:10', '2023-04-25 10:40:10'),
(225, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 10:40:20', '2023-04-25 10:40:20'),
(226, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:45:09', '2023-04-25 10:45:09'),
(227, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:50:11', '2023-04-25 10:50:11'),
(228, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 10:50:20', '2023-04-25 10:50:20'),
(229, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 10:55:08', '2023-04-25 10:55:08'),
(230, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 10:55:14', '2023-04-25 10:55:14'),
(231, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:00:10', '2023-04-25 11:00:10'),
(232, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 11:00:20', '2023-04-25 11:00:20'),
(233, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:05:11', '2023-04-25 11:05:11'),
(234, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:10:13', '2023-04-25 11:10:13'),
(235, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 11:10:22', '2023-04-25 11:10:22'),
(236, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:15:10', '2023-04-25 11:15:10'),
(237, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 11:15:19', '2023-04-25 11:15:19'),
(238, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:20:11', '2023-04-25 11:20:11'),
(239, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:25:12', '2023-04-25 11:25:12'),
(240, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 11:25:19', '2023-04-25 11:25:19'),
(241, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:30:10', '2023-04-25 11:30:10'),
(242, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 11:30:20', '2023-04-25 11:30:20'),
(243, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:35:12', '2023-04-25 11:35:12'),
(244, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 11:35:21', '2023-04-25 11:35:21'),
(245, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:40:12', '2023-04-25 11:40:12'),
(246, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:45:10', '2023-04-25 11:45:10'),
(247, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 11:45:18', '2023-04-25 11:45:18'),
(248, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:50:10', '2023-04-25 11:50:10'),
(249, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 11:50:12', '2023-04-25 11:50:12'),
(250, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 11:55:10', '2023-04-25 11:55:10'),
(251, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:00:14', '2023-04-25 12:00:14'),
(252, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 12:00:21', '2023-04-25 12:00:21'),
(253, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:05:11', '2023-04-25 12:05:11'),
(254, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 12:05:19', '2023-04-25 12:05:19'),
(255, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:10:13', '2023-04-25 12:10:13'),
(256, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 12:10:18', '2023-04-25 12:10:18'),
(257, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:15:10', '2023-04-25 12:15:10'),
(258, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:20:11', '2023-04-25 12:20:11'),
(259, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 12:20:18', '2023-04-25 12:20:18'),
(260, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:25:12', '2023-04-25 12:25:12'),
(261, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 12:25:21', '2023-04-25 12:25:21'),
(262, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:30:13', '2023-04-25 12:30:13'),
(263, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:35:10', '2023-04-25 12:35:10'),
(264, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 12:35:18', '2023-04-25 12:35:18'),
(265, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:40:11', '2023-04-25 12:40:11'),
(266, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 12:40:19', '2023-04-25 12:40:19'),
(267, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:45:10', '2023-04-25 12:45:10'),
(268, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 12:45:15', '2023-04-25 12:45:15'),
(269, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:50:10', '2023-04-25 12:50:10'),
(270, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 12:55:12', '2023-04-25 12:55:12'),
(271, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 12:55:18', '2023-04-25 12:55:18'),
(272, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 13:00:12', '2023-04-25 13:00:12'),
(273, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 13:00:21', '2023-04-25 13:00:21'),
(274, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 13:05:10', '2023-04-25 13:05:10'),
(275, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 13:10:11', '2023-04-25 13:10:11'),
(276, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 13:10:16', '2023-04-25 13:10:16'),
(277, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 13:15:11', '2023-04-25 13:15:11'),
(278, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 13:15:15', '2023-04-25 13:15:15'),
(279, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 13:20:12', '2023-04-25 13:20:12'),
(280, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 13:20:19', '2023-04-25 13:20:19'),
(281, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 13:25:12', '2023-04-25 13:25:12'),
(282, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 13:30:12', '2023-04-25 13:30:12'),
(283, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 13:30:20', '2023-04-25 13:30:20'),
(284, 'AMATUER AI', 23, 197, '40', 'ROI', '2023-04-25 13:35:13', '2023-04-25 13:35:13'),
(285, 'AMATUER AI', 27, 197, '100', 'ROI', '2023-04-25 13:35:21', '2023-04-25 13:35:21'),
(286, 'Credit', NULL, 197, '700', 'balance', '2023-08-07 11:20:38', '2023-08-07 11:20:38'),
(287, 'Credit', NULL, 197, '700', 'balance', '2023-08-07 11:24:17', '2023-08-07 11:24:17'),
(288, 'Credit', NULL, 197, '700', 'balance', '2023-08-07 11:33:46', '2023-08-07 11:33:46'),
(289, 'Credit', NULL, 197, '450.00', 'balance', '2023-08-07 11:34:54', '2023-08-07 11:34:54'),
(290, 'Credit', NULL, 197, '200', 'balance', '2023-08-07 11:40:17', '2023-08-07 11:40:17'),
(291, 'Credit reversal', NULL, 197, '200', 'balance', '2023-08-07 11:42:17', '2023-08-07 11:42:17'),
(292, 'Credit', NULL, 197, '7000', 'balance', '2023-08-07 11:46:51', '2023-08-07 11:46:51'),
(293, 'Credit', NULL, 197, '450.00', 'balance', '2023-08-07 11:48:38', '2023-08-07 11:48:38'),
(294, 'Credit reversal', NULL, 197, '45000', 'balance', '2023-08-07 11:49:52', '2023-08-07 11:49:52'),
(295, 'Credit', NULL, 210, '70000', 'balance', '2023-08-09 01:34:51', '2023-08-09 01:34:51'),
(296, 'Credit', NULL, 212, '500', 'balance', '2023-08-13 18:11:50', '2023-08-13 18:11:50'),
(297, 'Credit', NULL, 220, '500', 'balance', '2023-08-14 11:05:19', '2023-08-14 11:05:19'),
(298, 'Credit', NULL, 218, '500', 'balance', '2023-08-14 12:20:43', '2023-08-14 12:20:43'),
(299, 'Credit', NULL, 218, '5000', 'balance', '2023-08-14 12:23:41', '2023-08-14 12:23:41'),
(300, 'Credit', NULL, 219, '5000', 'balance', '2023-08-14 12:34:55', '2023-08-14 12:34:55'),
(301, 'Credit', NULL, 222, '500', 'balance', '2023-08-14 12:35:48', '2023-08-14 12:35:48'),
(302, 'Credit', NULL, 221, '5000', 'balance', '2023-08-14 12:36:18', '2023-08-14 12:36:18'),
(303, 'Credit', NULL, 221, '500', 'balance', '2023-08-14 12:37:05', '2023-08-14 12:37:05'),
(304, 'Credit', NULL, 223, '5000', 'balance', '2023-08-14 12:40:38', '2023-08-14 12:40:38'),
(305, 'Credit', NULL, 222, '4500', 'balance', '2023-08-14 13:05:14', '2023-08-14 13:05:14'),
(306, 'Credit', NULL, 226, '200', 'balance', '2023-08-17 19:28:18', '2023-08-17 19:28:18'),
(307, 'Credit', NULL, 218, '200', 'balance', '2023-08-23 06:11:15', '2023-08-23 06:11:15'),
(308, 'Credit', NULL, 218, '500', 'balance', '2023-08-23 11:03:11', '2023-08-23 11:03:11'),
(309, 'Credit', NULL, 218, '50', 'balance', '2023-08-23 11:06:08', '2023-08-23 11:06:08'),
(310, 'Credit', NULL, 236, '300700', 'balance', '2025-03-17 12:43:46', '2025-03-17 12:43:46'),
(311, 'Credit', NULL, 246, '2100.000', 'balance', '2025-03-21 19:54:04', '2025-03-21 19:54:04'),
(312, 'Credit', NULL, 246, '2100.00000', 'balance', '2025-03-21 19:55:17', '2025-03-21 19:55:17'),
(313, 'Credit', NULL, 246, '210000', 'balance', '2025-03-21 20:03:39', '2025-03-21 20:03:39'),
(314, 'Credit reversal', NULL, 246, '210000', 'balance', '2025-03-21 20:04:58', '2025-03-21 20:04:58'),
(315, 'Credit reversal', NULL, 246, '210000', 'balance', '2025-03-21 20:05:24', '2025-03-21 20:05:24'),
(316, 'Credit', NULL, 246, '21000', 'balance', '2025-03-21 20:06:39', '2025-03-21 20:06:39'),
(317, 'Credit reversal', NULL, 246, '9000', 'balance', '2025-03-21 20:08:52', '2025-03-21 20:08:52'),
(318, 'Credit reversal', NULL, 246, '100000', 'balance', '2025-03-21 20:10:32', '2025-03-21 20:10:32'),
(319, NULL, NULL, 246, '2.10000', 'balance', '2025-03-21 20:13:47', '2025-03-21 20:13:47'),
(320, 'Credit', NULL, 246, '100', 'balance', '2025-03-21 20:17:11', '2025-03-21 20:17:11'),
(321, 'Credit reversal', NULL, 246, '93700', 'balance', '2025-03-21 20:17:58', '2025-03-21 20:17:58'),
(322, 'Credit reversal', NULL, 246, '5000', 'balance', '2025-03-21 20:19:11', '2025-03-21 20:19:11'),
(323, NULL, NULL, 243, '5000', 'Bonus', '2025-03-21 20:21:29', '2025-03-21 20:21:29'),
(324, 'Credit', NULL, 246, '01000', 'balance', '2025-03-22 04:26:14', '2025-03-22 04:26:14'),
(325, 'Credit reversal', NULL, 246, '1500', 'balance', '2025-03-22 04:26:51', '2025-03-22 04:26:51'),
(326, 'Credit reversal', NULL, 246, '1500', 'balance', '2025-03-22 04:27:23', '2025-03-22 04:27:23'),
(327, 'Credit reversal', NULL, 246, '3000', 'balance', '2025-03-22 04:27:53', '2025-03-22 04:27:53'),
(328, 'Credit reversal', NULL, 246, '10000', 'balance', '2025-03-22 04:30:06', '2025-03-22 04:30:06'),
(329, 'Credit', NULL, 246, '2000000', 'balance', '2025-03-22 04:32:10', '2025-03-22 04:32:10'),
(330, 'Credit', NULL, 246, '100000', 'balance', '2025-03-22 04:32:53', '2025-03-22 04:32:53'),
(331, 'Credit', NULL, 246, '20000', 'balance', '2025-03-22 04:33:25', '2025-03-22 04:33:25'),
(332, 'Credit', NULL, 246, '20000', 'balance', '2025-03-22 04:33:57', '2025-03-22 04:33:57'),
(333, 'Credit', NULL, 246, '30000', 'balance', '2025-03-22 04:34:18', '2025-03-22 04:34:18'),
(334, 'Credit', NULL, 246, '15000', 'balance', '2025-03-22 04:34:55', '2025-03-22 04:34:55'),
(335, 'Credit', NULL, 246, '30000', 'balance', '2025-03-22 04:35:30', '2025-03-22 04:35:30'),
(336, 'Credit', NULL, 246, '30000', 'balance', '2025-03-22 04:35:57', '2025-03-22 04:35:57'),
(337, 'Credit', NULL, 246, '40000', 'balance', '2025-03-22 04:36:22', '2025-03-22 04:36:22'),
(338, 'Credit', NULL, 246, '50000', 'balance', '2025-03-22 04:36:44', '2025-03-22 04:36:44'),
(339, 'Credit', NULL, 246, '10000', 'balance', '2025-03-22 04:37:06', '2025-03-22 04:37:06'),
(340, 'Credit', NULL, 246, '20000', 'balance', '2025-03-22 04:37:32', '2025-03-22 04:37:32'),
(341, 'Credit', NULL, 246, '15000', 'balance', '2025-03-22 04:37:57', '2025-03-22 04:37:57'),
(342, 'Credit', NULL, 246, '15000', 'balance', '2025-03-22 04:38:15', '2025-03-22 04:38:15'),
(343, 'Credit', NULL, 246, '15000', 'balance', '2025-03-22 04:38:38', '2025-03-22 04:38:38'),
(344, 'Credit', NULL, 246, '10000', 'balance', '2025-03-22 04:39:06', '2025-03-22 04:39:06'),
(345, 'Credit', NULL, 246, '15000', 'balance', '2025-03-22 04:39:27', '2025-03-22 04:39:27'),
(346, 'Credit', NULL, 246, '20000', 'balance', '2025-03-22 04:39:52', '2025-03-22 04:39:52'),
(347, 'Credit', NULL, 246, '500000', 'balance', '2025-03-22 04:40:16', '2025-03-22 04:40:16'),
(348, 'Credit reversal', NULL, 246, '30000', 'balance', '2025-03-22 04:40:54', '2025-03-22 04:40:54'),
(349, 'Credit reversal', NULL, 246, '20000', 'balance', '2025-03-22 04:41:21', '2025-03-22 04:41:21'),
(350, 'Credit reversal', NULL, 246, '20000', 'balance', '2025-03-22 04:41:41', '2025-03-22 04:41:41'),
(351, 'Credit reversal', NULL, 246, '35000', 'balance', '2025-03-22 04:42:03', '2025-03-22 04:42:03'),
(352, 'Credit reversal', NULL, 246, '40000', 'balance', '2025-03-22 04:42:23', '2025-03-22 04:42:23'),
(353, 'Credit reversal', NULL, 246, '35000', 'balance', '2025-03-22 04:42:46', '2025-03-22 04:42:46'),
(354, 'Credit reversal', NULL, 246, '40000', 'balance', '2025-03-22 04:43:04', '2025-03-22 04:43:04'),
(355, 'Credit reversal', NULL, 246, '30000', 'balance', '2025-03-22 04:43:40', '2025-03-22 04:43:40'),
(356, 'Credit reversal', NULL, 246, '30000', 'balance', '2025-03-22 04:44:14', '2025-03-22 04:44:14'),
(357, 'Credit reversal', NULL, 246, '40000', 'balance', '2025-03-22 04:44:32', '2025-03-22 04:44:32'),
(358, 'Credit reversal', NULL, 246, '40000', 'balance', '2025-03-22 04:44:53', '2025-03-22 04:44:53'),
(359, 'Credit reversal', NULL, 246, '38000', 'balance', '2025-03-22 04:45:16', '2025-03-22 04:45:16'),
(360, 'Credit reversal', NULL, 246, '20000', 'balance', '2025-03-22 04:45:40', '2025-03-22 04:45:40'),
(361, 'Credit reversal', NULL, 246, '15000', 'balance', '2025-03-22 04:45:57', '2025-03-22 04:45:57'),
(362, 'Credit reversal', NULL, 246, '10000', 'balance', '2025-03-22 04:46:32', '2025-03-22 04:46:32'),
(363, 'Credit reversal', NULL, 246, '5000', 'balance', '2025-03-22 04:47:09', '2025-03-22 04:47:09'),
(364, 'Credit', NULL, 246, '1000', 'balance', '2025-03-22 04:47:44', '2025-03-22 04:47:44'),
(365, 'Credit reversal', NULL, 246, '600', 'balance', '2025-03-22 04:48:34', '2025-03-22 04:48:34'),
(366, NULL, NULL, 243, '50000', 'balance', '2025-03-22 04:50:12', '2025-03-22 04:50:12'),
(367, NULL, NULL, 243, '5000', 'balance', '2025-03-22 04:53:20', '2025-03-22 04:53:20'),
(368, 'Credit', NULL, 243, '400000', 'balance', '2025-03-23 10:16:36', '2025-03-23 10:16:36'),
(369, 'Credit', NULL, 250, '3500000', 'balance', '2025-03-24 00:03:53', '2025-03-24 00:03:53'),
(370, 'Loan', NULL, 240, '500000', 'Loan Credit', '2025-03-24 12:29:55', '2025-03-24 12:29:55'),
(371, 'Credit', NULL, 251, '600000000', 'balance', '2025-03-25 02:16:35', '2025-03-25 02:16:35'),
(372, 'Credit', NULL, 251, '400000000', 'balance', '2025-03-25 12:41:20', '2025-03-25 12:41:20'),
(373, 'Credit', NULL, 240, '656000', 'balance', '2025-03-27 10:27:53', '2025-03-27 10:27:53'),
(374, 'Credit', NULL, 272, '97000', 'balance', '2025-03-29 21:31:13', '2025-03-29 21:31:13'),
(375, 'Credit', NULL, 272, '58000', 'balance', '2025-03-29 21:34:37', '2025-03-29 21:34:37'),
(376, 'Credit', NULL, 272, '5000', 'balance', '2025-03-30 04:15:31', '2025-03-30 04:15:31'),
(377, 'Credit', NULL, 273, '346000', 'balance', '2025-03-30 06:16:43', '2025-03-30 06:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `kyc_id` int DEFAULT NULL,
  `irs_filing_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middlename` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `usernumber` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinstatus` int DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` int DEFAULT '500000',
  `accounttype` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowtransfer` int DEFAULT '0',
  `transferaction` int DEFAULT '0',
  `code1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code2` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codestatus` int DEFAULT NULL,
  `signalstatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dob` date DEFAULT NULL,
  `cstatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userupdate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `assign_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` int DEFAULT NULL,
  `swift_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acnt_type_active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eth_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ltc_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usdt_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_bal` float NOT NULL DEFAULT '0',
  `roi` float DEFAULT NULL,
  `bonus` float DEFAULT NULL,
  `ref_bonus` float DEFAULT NULL,
  `signup_bonus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_trade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus_released` int NOT NULL DEFAULT '0',
  `ref_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_verify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entered_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `account_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `trade_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `act_session` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawotp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sendotpemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `sendroiemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `sendpromoemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `sendinvplanemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `kyc_id`, `irs_filing_id`, `name`, `lastname`, `middlename`, `amount`, `usernumber`, `pin`, `pinstatus`, `action`, `limit`, `accounttype`, `allowtransfer`, `transferaction`, `code1`, `code2`, `code3`, `codestatus`, `signalstatus`, `email`, `username`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `dob`, `cstatus`, `userupdate`, `assign_to`, `address`, `country`, `phone`, `dashboard_style`, `bank_name`, `account_name`, `account_number`, `swift_code`, `acnt_type_active`, `btc_address`, `eth_address`, `ltc_address`, `usdt_address`, `plan`, `user_plan`, `account_bal`, `roi`, `bonus`, `ref_bonus`, `signup_bonus`, `auto_trade`, `bonus_released`, `ref_by`, `ref_link`, `account_verify`, `entered_at`, `activated_at`, `last_growth`, `account_status`, `status`, `trade_mode`, `act_session`, `remember_token`, `current_team_id`, `profile_photo_path`, `withdrawotp`, `sendotpemail`, `sendroiemail`, `sendpromoemail`, `sendinvplanemail`, `created_at`, `updated_at`) VALUES
(273, NULL, '199222', 'Abdul', 'Ogene', 'Razak', NULL, '33062930508', '1992', 0, NULL, 800000, 'Savings Account', 0, 1, '199222', '199222', '199222', NULL, NULL, 'codedmedia360@gmail.com', 'atmyfacebookchat@gmail.com', '2025-03-30 06:12:41', '$2y$10$a3mJ1JkfcFZcKG9LR/e00uHSt55yfLDje29WzSFnAYNZTMSvMFiDS', NULL, NULL, '1992-02-25', NULL, NULL, NULL, 'City Camp Avenue No 4885', 'Austria', '0916146885', 'light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 338925, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'https://bank.stamfordscity.online/ref/atmyfacebookchat@gmail.com', 'Verified', NULL, NULL, NULL, 'active', 'active', 'on', NULL, NULL, NULL, '306788profiles33.png1743333161', NULL, 'Yes', 'Yes', 'Yes', 'Yes', '2025-03-30 06:12:41', '2025-03-30 09:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `plan` int DEFAULT NULL,
  `user` int DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inv_duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `last_growth` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profit_earned` float DEFAULT NULL,
  `facility` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `income` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_plans`
--

INSERT INTO `user_plans` (`id`, `plan`, `user`, `amount`, `active`, `inv_duration`, `expire_date`, `activated_at`, `last_growth`, `created_at`, `updated_at`, `profit_earned`, `facility`, `duration`, `purpose`, `income`) VALUES
(41, NULL, 240, '500000', 'Processed', '12', NULL, '2025-03-24 13:03:47', '2025-03-24 13:03:47', '2025-03-24 12:03:47', '2025-03-24 12:29:55', NULL, 'Operational Vehicles', '12', 'car', '2,000-5,000');

-- --------------------------------------------------------

--
-- Table structure for table `wdmethods`
--

CREATE TABLE `wdmethods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bankname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `barcode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `network` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `methodtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultpay` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wdmethods`
--

INSERT INTO `wdmethods` (`id`, `name`, `minimum`, `maximum`, `charges_amount`, `charges_type`, `duration`, `img_url`, `bankname`, `account_name`, `account_number`, `swift_code`, `wallet_address`, `barcode`, `network`, `methodtype`, `type`, `status`, `defaultpay`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin', '50', '10003445566', '0', 'percentage', 'Instant', 'data:image/png;base64,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', NULL, NULL, NULL, NULL, 'bc1qep6feen644je9lryt23cwe4mp5ee99ldlrg0sg', '938893993', 'Bitcoin', 'crypto', 'both', 'enabled', 'yes', '2021-03-11 17:53:32', '2023-03-12 23:10:56'),
(2, 'Ethereum', '10', '2100', '0', 'percentage', 'Instant', 'https://lulo.com', NULL, NULL, NULL, NULL, 'dddddddddddddddddddddddd', '938893993', 'Erc', 'crypto', 'withdrawal', 'disabled', 'yes', '2021-03-22 15:36:03', '2023-02-23 12:28:34'),
(3, 'Litecoin', '100', '10000', '0', '0', 'Instant', 'https://lulo.com', NULL, NULL, NULL, NULL, 'hhhhhhhhhhhhhhhhhhhhhhh', 'hhhhhhhhhhh', 'Erc', 'crypto', 'both', 'disabled', 'yes', '2021-03-22 15:36:33', '2023-02-23 12:28:54'),
(10, 'Paypal', '10', '10000', '0', 'percentage', 'Instant Payment', 'https://lulo.com', 'Automatic', 'Automatic', '99388383', NULL, NULL, NULL, NULL, 'currency', 'deposit', 'enabled', 'yes', '2021-10-07 13:56:14', '2025-03-24 00:09:50'),
(12, 'Bank Transfer', '100', '1000000000000000000', '0', 'percentage', 'Instant Payment', NULL, 'Mining Bank', 'Miller lauren', '99388383', '3222ASD', NULL, NULL, NULL, 'currency', 'both', 'enabled', 'yes', '2021-10-11 16:35:35', '2023-03-27 02:02:51'),
(21, 'USDT', '0', '1000000000', '0', 'percentage', 'Instant Payment', NULL, NULL, NULL, NULL, NULL, 'TPCRRGUkpsnFM3r5cu9JfdeXBvhZoygbRnr correct wallet address here', NULL, 'TRC20', 'crypto', 'both', 'disabled', 'yes', '2021-04-14 14:45:06', '2023-03-12 23:08:46'),
(23, 'BUSD', '0', '1000', '0', 'percentage', NULL, NULL, NULL, NULL, NULL, NULL, 'Enter your correct wallet address here', NULL, 'ERC20', 'crypto', 'withdrawal', 'disabled', 'yes', '2022-06-28 04:25:41', '2023-02-23 12:31:17'),
(24, 'Credit Card', '0', '0', '0', 'percentage', 'Instant Payment', NULL, '-', '-', '0', NULL, NULL, NULL, NULL, 'currency', 'deposit', 'disabled', 'yes', '2022-07-20 17:02:29', '2023-03-27 02:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp(6) NULL DEFAULT NULL,
  `user` int DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columns` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bankname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Accounttype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bankaddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swiftcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_deduct` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paydetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `crypto_currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto_network` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wise_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wise_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wise_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skrill_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skrill_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venmo_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venmo_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zelle_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zelle_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zelle_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_app_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_app_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revolut_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revolut_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revolut_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alipay_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alipay_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wechat_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wechat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `txn_id`, `date`, `user`, `amount`, `columns`, `bal`, `accountname`, `type`, `accountnumber`, `bankname`, `Accounttype`, `Description`, `bankaddress`, `country`, `swiftcode`, `iban`, `to_deduct`, `status`, `payment_mode`, `paydetails`, `created_at`, `updated_at`, `crypto_currency`, `crypto_network`, `wallet_address`, `paypal_email`, `wise_fullname`, `wise_email`, `wise_country`, `skrill_email`, `skrill_fullname`, `venmo_username`, `venmo_phone`, `zelle_email`, `zelle_phone`, `zelle_name`, `cash_app_tag`, `cash_app_fullname`, `revolut_fullname`, `revolut_email`, `revolut_phone`, `alipay_id`, `alipay_fullname`, `wechat_id`, `wechat_name`) VALUES
(310, 'STAM/Q4H2F3LB-2025', NULL, 273, '346000', NULL, NULL, 'Self', 'Credit', '33062930508', 'Stamford City Bank', 'Savings Account', 'Payment', '301 East Water Street, Charlottesville, VA 22904 Virginia', 'Andorra', NULL, NULL, NULL, 'Processed', 'International transfer', NULL, '2024-06-05 07:16:00', '2025-03-30 06:16:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'STAM/EUEBX2TV-2025', '2025-03-30 06:34:45.000000', 273, '7000', NULL, '339000', 'Robin Carter', 'Debit', '19865774329', 'City Trust Bank', 'Savings Account', 'Payment', 'City Camp Avenue No 4885', 'United States', '098878', '009865', '7000', 'Pending', 'International Wire Transfer', NULL, '2025-03-30 06:34:45', '2025-03-30 06:34:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appearance_settings`
--
ALTER TABLE `appearance_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autologin_tokens`
--
ALTER TABLE `autologin_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `autologin_tokens_token_unique` (`token`);

--
-- Indexes for table `bnc_transactions`
--
ALTER TABLE `bnc_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_user_id_foreign` (`user_id`),
  ADD KEY `cards_status_index` (`status`),
  ADD KEY `cards_card_type_index` (`card_type`);

--
-- Indexes for table `card_settings`
--
ALTER TABLE `card_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_transactions`
--
ALTER TABLE `card_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_transactions_card_id_foreign` (`card_id`),
  ADD KEY `card_transactions_user_id_foreign` (`user_id`),
  ADD KEY `card_transactions_transaction_type_index` (`transaction_type`),
  ADD KEY `card_transactions_status_index` (`status`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_transactions`
--
ALTER TABLE `cp_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_accounts`
--
ALTER TABLE `crypto_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_records`
--
ALTER TABLE `crypto_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipaddresses`
--
ALTER TABLE `ipaddresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irs_refunds`
--
ALTER TABLE `irs_refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `irs_refund_settings`
--
ALTER TABLE `irs_refund_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kycs_email_unique` (`zipcode`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt4_details`
--
ALTER TABLE `mt4_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paystacks`
--
ALTER TABLE `paystacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_conts`
--
ALTER TABLE `settings_conts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_privacies`
--
ALTER TABLE `terms_privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonies`
--
ALTER TABLE `testimonies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp__transactions`
--
ALTER TABLE `tp__transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `usernumber` (`usernumber`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wdmethods`
--
ALTER TABLE `wdmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1468;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appearance_settings`
--
ALTER TABLE `appearance_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `autologin_tokens`
--
ALTER TABLE `autologin_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bnc_transactions`
--
ALTER TABLE `bnc_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `card_settings`
--
ALTER TABLE `card_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `card_transactions`
--
ALTER TABLE `card_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `cp_transactions`
--
ALTER TABLE `cp_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crypto_accounts`
--
ALTER TABLE `crypto_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `crypto_records`
--
ALTER TABLE `crypto_records`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ipaddresses`
--
ALTER TABLE `ipaddresses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `irs_refunds`
--
ALTER TABLE `irs_refunds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `irs_refund_settings`
--
ALTER TABLE `irs_refund_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `mt4_details`
--
ALTER TABLE `mt4_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `paystacks`
--
ALTER TABLE `paystacks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_conts`
--
ALTER TABLE `settings_conts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms_privacies`
--
ALTER TABLE `terms_privacies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonies`
--
ALTER TABLE `testimonies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tp__transactions`
--
ALTER TABLE `tp__transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wdmethods`
--
ALTER TABLE `wdmethods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `card_transactions`
--
ALTER TABLE `card_transactions`
  ADD CONSTRAINT `card_transactions_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `card_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
