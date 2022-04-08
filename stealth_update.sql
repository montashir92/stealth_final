-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 12:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stealth_update`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `name`, `image`, `save_by`, `update_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Bike Fuel Tank Cap With Lock', 'uploads/accessories/motorcycle_6231603821508.jpg', '1', NULL, '127.0.0.1', NULL, '2022-03-15 21:57:44', '2022-03-15 21:57:44'),
(2, 'Bike N Moped Wheel Spokes', 'uploads/accessories/motorcycle1_6231608df1e51.jpg', '1', NULL, '127.0.0.1', NULL, '2022-03-15 21:59:09', '2022-03-15 21:59:09'),
(3, 'Bullet Alloy Wheels', 'uploads/accessories/bullet_623160d13c6ef.jpg', '1', NULL, '127.0.0.1', NULL, '2022-03-15 22:00:17', '2022-03-15 22:00:17'),
(4, 'Bike Rolon Timing Chain', 'uploads/accessories/bike-rolon_623160f9f33a0.jpg', '1', NULL, '127.0.0.1', NULL, '2022-03-15 22:00:57', '2022-03-15 22:00:57'),
(5, 'Bajaj 3/W Magnet / Self Gear', 'uploads/accessories/prod_6231612146b0f.jpg', '1', NULL, '127.0.0.1', NULL, '2022-03-15 22:01:37', '2022-03-15 22:01:37'),
(6, 'Gear Primary Drive Hero Motor Corp', 'uploads/accessories/product_62316144c4516.jpg', '1', NULL, '127.0.0.1', NULL, '2022-03-15 22:02:12', '2022-03-15 22:02:12'),
(7, 'Hero Bike Spare Parts', 'uploads/accessories/hero-bike_6231616e98bc5.png', '1', NULL, '127.0.0.1', NULL, '2022-03-15 22:02:54', '2022-03-15 22:02:54'),
(8, 'Front Fork Assembly For Electric Vehicles', 'uploads/accessories/front-fork_6231619e51293.jpg', '1', NULL, '127.0.0.1', NULL, '2022-03-15 22:03:42', '2022-03-15 22:03:42'),
(9, 'Universal Handle Weight', 'uploads/accessories/product1_623161c5c9c61.jpg', '1', NULL, '127.0.0.1', NULL, '2022-03-15 22:04:21', '2022-03-15 22:04:21'),
(10, 'Dirt Bike Fork', 'uploads/accessories/dirt-bike_6231620b915cc.jpg', '1', '1', '127.0.0.1', NULL, '2022-03-15 22:05:31', '2022-03-15 22:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'd',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `image`, `position`, `status`, `save_by`, `updated_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'left small', 'uploads/ad/alpha-matt-poster-6-500x500_6210bea7e0219.png', NULL, 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-26 06:27:58', '2022-02-19 03:55:51'),
(2, '30', 'uploads/ad/alpha-matt-black-poster-500x500_6210be43e58cb.png', 'Right-(335*320)', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-26 06:28:19', '2022-02-19 03:54:11'),
(3, 'vavv', 'uploads/ad/Web-01_62303cd2e54be.jpg', 'Center-(425*145)', 'a', '1', NULL, '175.29.197.185', NULL, '2021-10-26 06:28:35', '2022-03-15 01:14:26'),
(4, 'uiuiu', 'uploads/ad/F70-EN_6210bb269ed2b.jpg', 'Full-(785*180)', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-26 06:28:54', '2022-02-19 03:40:54'),
(5, 'dfgdfg', 'uploads/ad/Helmets-banner_Tech-Nuggets_6210c591bdcb3.jpg', 'Center-(450*150)', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-26 06:29:17', '2022-02-19 04:25:21'),
(6, '50%', 'uploads/ad/banner_left2_617fab1621e4c.jpg', 'Right-(335*320)', 'a', '1', NULL, '127.0.0.1', NULL, '2021-11-01 02:53:42', '2022-02-19 04:00:49'),
(7, '59', 'uploads/ad/banner_shop_617fab2d12299.jpg', 'Left-(245*320)', 'a', '1', NULL, '127.0.0.1', NULL, '2021-11-01 02:54:05', '2022-02-19 03:56:44'),
(8, 'r', 'uploads/ad/hjc helmet banner_6210bb7927ad6.jpg', 'Center-(450*150)', 'a', '1', NULL, '127.0.0.1', NULL, '2021-11-01 02:54:18', '2022-02-19 03:59:14'),
(9, 'ss', 'uploads/ad/Airoh-Valor-Motorcycle-Helmet-Web-Banner_6210bb6d4bede.jpg', 'Center-(425*145)', 'a', '1', NULL, '127.0.0.1', NULL, '2021-11-01 02:54:37', '2022-02-19 03:47:46'),
(10, 'ddd', 'uploads/ad/banner_shop_617fab597811d.jpg', 'Left-(245*320)', 'a', '1', NULL, '127.0.0.1', NULL, '2021-11-01 02:54:49', '2022-02-19 03:56:31'),
(11, 'sdsds', 'uploads/ad/Airoh-Valor-Motorcycle-Helmet-Web-Banner_6210bb476979b.jpg', 'Full-(785*180)', 'a', '1', NULL, '127.0.0.1', NULL, '2021-11-01 02:55:40', '2022-03-15 01:32:00'),
(12, 'Stealth', 'uploads/ad/pinki_62303fa4204ca.jpg', NULL, 'a', '1', NULL, '175.29.197.185', NULL, '2022-03-15 01:11:07', '2022-03-15 01:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mymensingh', NULL, '2021-12-07 00:42:39', '2021-12-07 00:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_link` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `offer_name`, `short_details`, `offer_link`, `image`, `status`, `save_by`, `updated_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'উইন24 অনলাইন শপিং', 'ফ্রি হোমডেলিভারি', '<p>সারাদেশে&nbsp;</p>', 'ফ্রি হোমডেলিভারি', 'uploads/banner/FB_IMG_1638649110341_61abcd87eacbb.jpg', 'a', '1', '1', '37.111.200.60', '2021-12-05 01:21:16', '2021-12-05 01:20:23', '2021-12-05 01:21:16'),
(2, 'উইন24', 'ফ্রি হোমডেলিভারি', NULL, 'ফ্রি হোমডেলিভারি', 'uploads/banner/images (13)_1637351322609_61abdb64b3715.jpeg', 'a', '1', '1', '37.111.200.60', '2021-12-05 02:20:43', '2021-12-05 02:19:32', '2021-12-05 02:20:43'),
(3, 'WIN24 ONLINE LTD.', 'Free Home Delivery', '<h3><i><strong>20%</strong></i></h3>', 'https://win24online.com/product-details/win24-mosquito-coil-1638819173', 'uploads/banner/46_61ae6927c8c51.jpg', 'a', '1', '1', '37.111.195.238', '2021-12-07 00:55:27', '2021-12-07 00:48:55', '2021-12-07 00:55:27'),
(4, 'off road Motocross enthusiast.', '50% Offer', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rid</p>', 'http://127.0.0.1:8000/', 'uploads/banner/glidershelmet-banner-2_6210c092a264f.jpg', 'a', '1', '1', '127.0.0.1', '2022-03-09 01:18:39', '2022-02-19 04:04:02', '2022-03-09 01:18:39'),
(5, 'Full Face Helmet', '10% Offer', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rid</p>', 'https://www.google.com/', 'uploads/banner/glidershelmet-banner-1_6210c0efa27c5.jpg', 'a', '1', '1', '127.0.0.1', '2022-03-09 01:18:33', '2022-02-19 04:05:35', '2022-03-09 01:18:33'),
(6, '812 Stealth Robotics', 'Best Deal', '<h2>Stealth</h2>', 'Best Deal', 'uploads/banner/WhatsApp Image 2022-02-01 at 12.05.18 PM_6228559d99eb5.jpeg', 'a', '1', '1', '175.29.197.185', '2022-03-14 08:23:10', '2022-03-09 01:22:05', '2022-03-14 08:23:10'),
(7, '812 Stealth Robotics', 'pink', '<p>aaa</p>', 'Best Deal', 'uploads/category/90060639_114847186790424_6149132152588992512_n_622f55ce5b13c.jpg', 'a', '1', '1', '175.29.197.185', '2022-03-15 02:59:44', '2022-03-09 01:22:07', '2022-03-15 02:59:44'),
(8, '807', 'Speedy', NULL, 'Best Deal', 'uploads/category/299_622f5ac6f2d65.jpeg', 'a', '1', '1', '175.29.197.185', '2022-03-15 02:59:41', '2022-03-09 01:22:07', '2022-03-15 02:59:41'),
(9, 'Shark', 'Danger', '<p>aaa</p>', '131308007_202096614732147_1173818975519550477_n', 'uploads/category/131308007_202096614732147_1173818975519550477_n_622f52fae0386.jpg', 'a', '1', '1', '175.29.197.185', NULL, '2022-03-14 08:22:47', '2022-03-14 08:36:42'),
(10, 'Hi', 'Hi', '<p>Hi</p>', 'Hi', 'uploads/banner/stealth-helmet-logo_622f5035060c0.jpg', 'a', '1', '1', '103.148.148.18', '2022-03-14 08:31:35', '2022-03-14 08:24:53', '2022-03-14 08:31:35'),
(11, 'asdfsad', '10% Offer', '<p>asdfasdf</p>', 'https://www.google.com/', 'uploads/banner/clothing-offers_62305574f296c.jpg', 'a', '1', '1', '127.0.0.1', '2022-03-15 02:59:48', '2022-03-15 02:59:32', '2022-03-15 02:59:48'),
(12, 'sadfsadf', NULL, NULL, NULL, 'uploads/banner/f1 (1)_623057bc6d680.png', 'a', '1', '1', '127.0.0.1', '2022-03-15 03:10:32', '2022-03-15 03:09:16', '2022-03-15 03:10:32'),
(13, 'sdfsdf', NULL, NULL, NULL, 'uploads/banner/flipkart-fashion-offers_6230581838afc.png', 'a', '1', '1', '127.0.0.1', NULL, '2022-03-15 03:10:48', '2022-03-15 03:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `description`, `date`, `image`, `save_by`, `updated_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'These are the helmets that the big daddy’s of pro biking choose to use', 'Britt-Justice', 'These are the helmets that the big daddy’s of pro biking choose to use. These helmets are specifically designed to be more aerodynamic and are approved by the DOT rating, which a far higher safety rating system than the Indian ISI mark. Biker’ with 650cc and up use these helmets considering their protection properties and aerodynamic design for the high speeds that the bikers cruise at. These helmets will set you back by a huge margin with prices starting at Rs. 10,000/- onwards. Popular brands of these helmets include Arai, Shoei, Bell and so on. But remember these helmets are not ISI marked which is mandatory for all helmets sold in the country', '2022-12-17', 'uploads/blog/67834e08-50f1-4502-8874-eea66a28a9d6_6210ac7a7017f.jfif', '1', '1', '127.0.0.1', NULL, '2021-10-27 04:52:05', '2022-02-19 02:38:18'),
(2, 'These are the helmets that the big daddy’s of pro biking choose to use', 'Burton-Butler', 'These are the helmets that the big daddy’s of pro biking choose to useThese are the helmets that the big daddy’s of pro biking choose to useThese are the helmets that the big daddy’s of pro biking choose to useThese are the helmets that the big daddy’s of pro biking choose to useThese are the helmets that the big daddy’s of pro biking choose to use', '2016-07-19', 'uploads/blog/dfc3a68c-391a-40f6-8781-aa62aeb3c041_6210aca785f51.jfif', '1', '1', '127.0.0.1', NULL, '2021-10-27 04:52:23', '2022-02-19 02:39:03'),
(3, 'These are the helmets that the big daddy’s of pro biking choose to use', 'dara-downs-1635591216', 'These are the helmets that the big daddy’s of pro biking choose to useThese are the helmets that the big daddy’s of pro biking choose to useThese are the helmets that the big daddy’s of pro biking choose to useThese are the helmets that the big daddy’s of pro biking choose to use', '2019-02-27', 'uploads/blog/81888d95-7ee7-4c02-8ad0-7ecfdc515c97_6210ac94c58a2.jfif', '1', '1', '127.0.0.1', NULL, '2021-10-30 04:53:36', '2022-02-19 02:38:44'),
(4, 'These are the helmets that the big daddy’s of pro biking choose to use', 'uin24-szampu-1638648067', 'These are the helmets that the big daddy’s of pro biking choose to useThese are the helmets that the big daddy’s of pro biking choose to useThese are the helmets that the big daddy’s of pro biking choose to use', '2021-12-05', 'uploads/blog/8c9a9b12-01ec-4c50-bd81-1278327911f1_6210ac884e218.jfif', '1', '1', '127.0.0.1', NULL, '2021-12-05 01:01:07', '2022-02-19 02:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `details`, `image`, `status`, `save_by`, `updated_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Drinks Up', 'drinks-up-1635249892', 'To become an unquestioning advocate for a group, cause, or belief. [Middle English drinken, from Old English drincan; see dhreg- in Indo-European roots ...', 'uploads/category/23567.jpg', 'a', '1', NULL, '127.0.0.1', '2022-02-19 02:36:59', '2021-10-26 06:04:52', '2022-02-19 02:36:59'),
(2, 'Baby Helmet', 'baby-helmet-1646809419', 'To become an unquestioning advocate for a group, cause, or belief. [Middle English drinken, from Old English drincan; see dhreg- in Indo-European roots ...', 'uploads/category/WhatsApp Image 2022-02-17 at 4.23.27 PM_6210ab6b7c503.jpeg', 'a', '1', NULL, '175.29.197.185', NULL, '2021-10-26 06:05:10', '2022-03-09 01:03:39'),
(3, 'Other', 'other-1645259807', 'To become an unquestioning advocate for a group, cause, or belief. [Middle English drinken, from Old English drincan; see dhreg- in Indo-European roots ...', 'uploads/category/eb300488-e3bd-470f-8f37-2402a59a857a_6210ac1f762a9.jfif', 'a', '1', NULL, '127.0.0.1', '2022-03-09 01:01:22', '2021-10-26 06:05:26', '2022-03-09 01:01:22'),
(4, 'Off-Road Helmets', 'off-road-helmets-1645259603', 'To become an unquestioning advocate for a group, cause, or belief. [Middle English drinken, from Old English drincan; see dhreg- in Indo-European roots ...', 'uploads/category/WhatsApp Image 2022-02-17 at 4.26.11 PM_6210ab5357798.jpeg', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-26 06:05:46', '2022-02-19 02:33:23'),
(5, 'Health And Beauty', 'health-and-beauty-1635250094', 'To become an unquestioning advocate for a group, cause, or belief. [Middle English drinken, from Old English drincan; see dhreg- in Indo-European roots ...', 'uploads/category/78774.jpg', 'a', '1', NULL, '127.0.0.1', '2022-03-09 01:00:59', '2021-10-26 06:08:14', '2022-03-09 01:00:59'),
(6, 'Cap Helmet', 'cap-helmet-1646809375', 'To become an unquestioning advocate for a group, cause, or belief. [Middle English drinken, from Old English drincan; see dhreg- in Indo-European roots ...', 'uploads/category/WhatsApp Image 2022-02-17 at 4.26.14 PM_6210ab4283b7f.jpeg', 'a', '1', NULL, '175.29.197.185', NULL, '2021-10-26 06:08:34', '2022-03-09 01:02:55'),
(7, 'Modular Helmet', 'modular-helmet-1645259569', 'To become an unquestioning advocate for a group, cause, or belief. [Middle English drinken, from Old English drincan; see dhreg- in Indo-European roots ...', 'uploads/category/WhatsApp Image 2022-02-17 at 4.23.26 PM_6210ab3149d50.jpeg', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-26 06:09:00', '2022-02-19 02:32:49'),
(8, 'Half Face Helmet', 'half-face-helmet-1645259537', 'To become an unquestioning advocate for a group, cause, or belief. [Middle English drinken, from Old English drincan; see dhreg- in Indo-European roots ...', 'uploads/category/WhatsApp Image 2022-02-17 at 4.23.08 PM_6210ab112df06.jpeg', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-26 06:09:22', '2022-02-19 02:32:17'),
(9, 'Full Face Helmet', 'full-face-helmet-1645259497', 'To become an unquestioning advocate for a group, cause, or belief. [Middle English drinken, from Old English drincan; see dhreg- in Indo-European roots ...', 'uploads/category/WhatsApp Image 2022-02-17 at 4.27.25 PM_6210aae9d97e1.jpeg', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-26 06:09:38', '2022-02-19 02:31:37'),
(10, 'sazzat', 'sazzat-1637493001', 'sadafs', 'uploads/category/89339.png', 'a', '1', NULL, '113.11.37.172', '2021-11-21 11:10:06', '2021-11-21 11:10:01', '2021-11-21 11:10:06'),
(12, 'accessories', 'accessories-1646744645', 'ff', 'uploads/category/70991.jpeg', 'a', '1', NULL, '103.154.158.46', NULL, '2022-02-19 04:11:11', '2022-03-08 07:04:05'),
(13, 'Ladies Helmet', 'ladies-helmet-1647271281', NULL, 'uploads/category/49590.jpg', 'a', '1', NULL, '175.29.197.185', NULL, '2022-03-09 01:16:58', '2022-03-14 09:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Off White', NULL, '2022-03-09 00:18:00', '2022-03-09 00:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_headline` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_shipping` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashback` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_vision_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_vision` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trams_condition_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trams_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `company_name`, `slogan`, `phone_1`, `phone_2`, `email`, `address`, `logo`, `news_headline`, `about_title`, `about_description`, `about_image`, `office_time`, `free_shipping`, `cashback`, `facebook`, `youtube`, `linkedin`, `instagram`, `welcome_title`, `welcome_note`, `welcome_image`, `mission_vision_title`, `mission_vision`, `trams_condition_title`, `trams_condition`, `faq_title`, `faq_details`, `refund_title`, `refund_details`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Stealth Industries Ltd.', NULL, '01835602089', NULL, 'info@Stealth.Industries.Ltd.com', 'House 70/cha\r\nRupayan Millennium Square\r\nFlate: E7,F7', 'uploads/logo//I85e737f (1)_6228769b09070.jpg', 'Stealth Industries Ltd. এর পক্ষ থেকে আপনাকে জানাচ্ছি অভিনন্দন... ভরসা রাখুন, পাশে থাকুন..', 'About Stealth Industries Ltd.', '<p><strong>Stealth</strong> is established in <strong>2019</strong> with the aim of providing safety to the two-wheelers running on Bangladeshi road. Our continuous hard work, passion, and drive for excellence define STEALTH Limited.</p><p>Our sharp focus on <strong>excellence and quality </strong>has helped us bring the <strong>latest cutting-edge</strong> helmets in Bangladesh</p><p>At <strong>STEALTH</strong>, the mantra is, innovate continually, never settle for anything but the best, and lead by example. Our vast range of high-quality helmets are a reflection of our commitment to this philosophy in providing quality products in Bangladesh.</p>', 'uploads/about//WhatsApp Image 2022-02-17 at 4.26.09 PM_6210b70d4f668.jpeg', 'Saturday- Thursday: 10.00am - 07.00pm', 'On order over 1000', 'Within 30 Days after delivery', 'https://www.Facebook.com/', 'https://www.youtube.com/c/', 'https://www.linkedin.com/in/', 'https://www.instagram.com/', 'Stealth', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', 'uploads/welcome/WhatsApp Image 2022-02-17 at 4.23.26 PM_6210b684ecba1.jpeg', 'Mission And Vission', NULL, 'Term\'s and condition', '<p>Every time someone somewhere in Bangladesh wears a <strong>STEALTH</strong> <strong>helmet</strong>, we believe that there is trust riding on the <strong>wheels</strong>, we believe that there is <strong>life riding </strong>on the two-wheels and there are hopes and aspirations riding on the <strong>protection</strong> that we are providing through <strong>STEALTH</strong>. For us, <strong>quality</strong> is a lot more than a buzz word since it is a matter of life for the user of our product. We practice the same <strong>commitment</strong> in all our dealings, with our people and with all our business associates.</p><p>&nbsp;</p><p>We at <strong>STEALTH</strong> blend <strong>state-of-the-art technology </strong>with traditional values. For us, the <strong>value</strong> of our word is sacrosanct. For us, the most important thing is to walk the talk.</p><p>&nbsp;</p><p>For us, it is not corporate spiel but a <strong>way of life</strong>. A way of life that touches a million lives every year, with a genuine heartfelt feeling of <strong>trust, caring and protection.</strong></p><p>&nbsp;</p><p>We have a <strong>vision</strong> to be the <strong>best helmets producer </strong>ever in <strong>Bangladesh</strong> with the assurance of <strong>quality</strong> and other benefits needed for the <strong>safety</strong> of our riders.&nbsp;</p>', 'faq_title', '<p><strong>1</strong> Prices are as per our published list price from time to time. Trams reserves the right to change its prices prior to delivery due to changes in market conditions, and at any time to correct errors or misprints. All prices exclude delivery costs which will be charged at the rate prevailing at the time. All prices and delivery costs exclude VAT.</p><p><strong>2</strong> Unless otherwise specified by Trams in writing, payment is required in cleared funds at the time of order. To open a credit account with Trams, you will need to complete a signed credit account application form. The opening of a credit account is subject to credit checks and satisfactory references being provided.</p><p><strong>3</strong> If Trams grant you credit you must adhere to Trams’ payment terms – which is payment strictly within 30 days from the date of invoice. Trams reserves the right at any time to stop supplying goods and services to you at Trams’ absolute discretion.</p><p><strong>4</strong> Payment is required in £ Sterling unless otherwise agreed. Time of payment is of the essence. Payment must be made in full without any deduction or set off. Overdue amounts may incur interest at a rate of 3% above Barclay Bank Plc’s annual base rate from time to time (to accrue from day to day) after as well as before any judgment and you shall indemnify Trams against the cost of recovering any outstanding amounts.</p>', 'refund_title', '<p><strong>1</strong> Prices are as per our published list price from time to time. Trams reserves the right to change its prices prior to delivery due to changes in market conditions, and at any time to correct errors or misprints. All prices exclude delivery costs which will be charged at the rate prevailing at the time. All prices and delivery costs exclude VAT.</p><p><strong>2</strong> Unless otherwise specified by Trams in writing, payment is required in cleared funds at the time of order. To open a credit account with Trams, you will need to complete a signed credit account application form. The opening of a credit account is subject to credit checks and satisfactory references being provided.</p><p><strong>3</strong> If Trams grant you credit you must adhere to Trams’ payment terms – which is payment strictly within 30 days from the date of invoice. Trams reserves the right at any time to stop supplying goods and services to you at Trams’ absolute discretion.</p><p><strong>4</strong> Payment is required in £ Sterling unless otherwise agreed. Time of payment is of the essence. Payment must be made in full without any deduction or set off. Overdue amounts may incur interest at a rate of 3% above Barclay Bank Plc’s annual base rate from time to time (to accrue from day to day) after as well as before any judgment and you shall indemnify Trams against the cost of recovering any outstanding amounts.</p>', '1', NULL, '2021-10-26 05:29:24', '2022-03-14 09:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_id` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thum_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `save_by` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `code`, `name`, `phone`, `email`, `address`, `country_id`, `area_id`, `profile_picture`, `thum_picture`, `username`, `password`, `status`, `save_by`, `updated_by`, `deleted_at`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'C000001', 'MD Sazzat Hossain', '01706755815', 'sazzat@linktechbd.com', 'Mirpur -6, Dhakadsdsd', NULL, NULL, 'uploads/customer/banner_static_top6_6180051e50d44.jpg', NULL, '01706755815', '$2y$10$P9YnYlHj2MftBed5097zVOzyWtQyUZh1U/gzCe3xlFitv80eVuIXm', 'p', '127.0.0.1', '1', NULL, '127.0.0.1', '2021-10-26 06:33:12', '2021-11-01 09:21:42'),
(2, 'C000002', 'Mostafiz', '01706755816', 'mostafiz@gmail.com', 'dhaka', NULL, NULL, NULL, NULL, '01706755816', '$2y$10$edvbae7mkKEZ5f8YT.BVf.sRT41ZxQwf2dRDhUHexaQsWDF6USd7y', 'p', '2', '2', NULL, '127.0.0.1', '2021-10-27 01:05:29', '2021-11-03 00:03:12'),
(3, 'C000003', 'sazzat', '01706755123', 'sazzat@linktechbd.comdd', 'Mirpur 10', NULL, NULL, NULL, NULL, '01706755123', '$2y$10$7XPhTeizH5Iu5x0g4umuzeqH1TG.RVnAJbC4qgM4qCFv4/OOPpmY6', 'p', '127.0.0.1', '127.0.0.1', NULL, '127.0.0.1', '2021-11-01 07:17:26', '2021-11-01 07:17:26'),
(4, 'C000004', 'MD Sazzat Hossain2', '01604354752', 'sazzat@fg.c', 'Sit provident repre', NULL, NULL, 'uploads/customer/banner_static2_617ff610c709d.jpg', NULL, '01604354752', '$2y$10$ngwwmHin0lH9ymfpPAoKK.doBesA1k2oLf92BfdsT0ev06CU4ZQCu', 'p', '127.0.0.1', '4', NULL, '127.0.0.1', '2021-11-01 07:53:34', '2021-11-01 09:14:30'),
(5, 'C000005', 'Win24', '01788894249', 'info.win24@gmail.com', 'edrwetery', NULL, NULL, NULL, NULL, '01788894249', '$2y$10$QkBTqjInb7lMzx4Fka0UFOV77phH1QyIS3ybULVYPQNMNBYRdGq9.', 'p', '103.112.166.147', '103.112.166.147', NULL, '103.112.166.147', '2021-11-05 04:50:07', '2021-11-05 04:50:07'),
(6, 'C000006', 'Doremon', '01977933335', 'hasannahian91@gmail.com', 'Shikago', NULL, NULL, NULL, NULL, '01977933335', '$2y$10$42tp5yXw3huVV8w8UkRlFOkXcsWuz7mDnPYjwi7uTVQKJOPzjqqqe', 'p', '113.11.37.172', '113.11.37.172', NULL, '113.11.37.172', '2021-11-06 06:12:49', '2021-11-06 06:12:49'),
(7, 'C000007', 'Bappa RAj', '01714545454', 'b@gmail.com', 'fdfsfgfd', NULL, NULL, NULL, NULL, '01714545454', '$2y$10$W6h4ik76ZThVDgH3SUReRu07AJQMRwC6PR1TN0M3j7NokXrJVz9h.', 'p', '113.11.37.172', '113.11.37.172', NULL, '113.11.37.172', '2021-11-06 06:19:10', '2021-11-06 06:19:10'),
(8, 'C000008', 'Omar Sani', '01725363555', 'bl@gmail.com', 'FDC', NULL, NULL, NULL, NULL, '01725363555', '$2y$10$xBoSTdLffXpuB51Q7BXfGO/Ro2eKg4cQGubefuwNMmVyHIQqfic8S', 'p', '113.11.37.172', '113.11.37.172', NULL, '113.11.37.172', '2021-11-06 10:10:53', '2021-11-06 10:10:53'),
(9, 'C000009', 'Md. Shamim Miah', '01774266791', 'shamim@linktechbd.com', 'Mirpur-10,Dhaka-1216', NULL, NULL, NULL, NULL, '01774266791', '$2y$10$1Z6M7w8n5YEiPUwT.9XMwu7DrBCdFWCRAOUSCwYyA6miLxnoUzYAa', 'p', '113.11.37.172', '113.11.37.172', NULL, '113.11.37.172', '2021-11-13 03:24:17', '2021-11-13 03:24:17'),
(10, 'C000010', 'shamim hasan', '01707866715', 'sazat@df.c', 'dgahka', NULL, NULL, NULL, NULL, '01707866715', '$2y$10$hCfdToHwVEJxriPFxjJTuOJ5SDTZpBcuyahAfSbhbN4Igdnq.aed6', 'p', '113.11.37.172', '113.11.37.172', NULL, '113.11.37.172', '2021-11-14 06:45:25', '2021-11-14 06:45:25'),
(11, 'C000011', 'Sumon Ahammed', '01946979797', 'info.win24@gmail.com', 'Mirpur', NULL, NULL, NULL, NULL, '01946979797', '$2y$10$.8qHJySl8sxAMMBoyM2bPezkGM0Yxd9cJHJ7ttQ8LtubEaxhE73OG', 'p', '119.30.38.113', '119.30.38.113', NULL, '119.30.38.113', '2021-11-14 15:18:48', '2021-11-14 15:18:48'),
(12, 'C000012', 'Md. Shamim Miah', '01774266792', 'shamim@linktechbd.com', 'Mirpur-10,Dhaka-1216', NULL, NULL, NULL, NULL, '01774266792', '$2y$10$zvblqe5FmNcZzEghV1kW/Ou5QUB8CTyHAVp8piupXHg5JgJ.zqIYO', 'p', '113.11.37.172', '113.11.37.172', NULL, '113.11.37.172', '2021-11-15 10:32:45', '2021-11-15 10:32:45'),
(13, 'C000013', 'majedur rahman', '01715626329', 'Majedurvideo1@gmail.com', 'tangail', NULL, NULL, NULL, NULL, '01715626329', '$2y$10$kP7VfxmAoijsH/y/nI4jzenXF8GG/k7d8Sk1TemDwQT/avf8HTjDm', 'p', '37.111.197.216', '37.111.197.216', NULL, '37.111.197.216', '2021-12-02 20:03:15', '2021-12-02 20:03:15'),
(14, 'C000014', 'Mosharaf Bin Abdul Kahar', '01712624251', 'mosharaf24.com@gmail.com', 'mosharaf24.com@gmail.com', NULL, NULL, NULL, NULL, '01712624251', '$2y$10$t14BI0KTGNXIgIjS5AKl0OIJoQe9hpfod4QHyUHjKUAUCSax3..12', 'p', '42.0.4.239', '42.0.4.239', NULL, '42.0.4.239', '2021-12-03 09:10:20', '2021-12-03 09:10:20'),
(15, 'C000015', 'MD.RAFIQUL ISLAM', '01724834779', 'rafiqbtv30@gmail.com', 'Btv aquya mymensingh', NULL, NULL, 'uploads/customer/217391644_1245957709194782_6264230651158994788_n-removebg-preview (2)_61aa43092d835.png', NULL, '01724834779', '$2y$10$r5D/ZOMh8.ZGhlVj.mBPYuRENOqgSvgVqyzErLZYnXH/8ybb5UvZG', 'p', '37.111.219.64', '15', NULL, '103.119.94.42', '2021-12-03 12:10:20', '2021-12-03 21:17:13'),
(16, 'C000016', 'Israt jahan swarna', '01742456614', 'isratswarna33669@gmail.com', 'Kuchijuly,mymensingh', NULL, NULL, NULL, NULL, '01742456614', '$2y$10$g.EGm4Sby3gwi2V716iEYu829xpd1XhhscL3lQPQX8oDKapZD5DgO', 'p', '103.122.251.207', '103.122.251.207', NULL, '103.122.251.207', '2021-12-05 11:36:53', '2021-12-05 11:36:53'),
(17, 'C000017', 'Md. Tofayel', '01872576649', 'tofayelalam81@gmail.com', 'Mohila College road,  Baparipara, Haluaghat, Mymensingh', NULL, NULL, NULL, NULL, '01872576649', '$2y$10$Ygdbs.w.Mfl7fzATkVOZ9u1mFJa7k68t.Nfolh/y44Hax3VaMdi1W', 'p', '42.0.7.245', '42.0.7.245', NULL, '42.0.7.245', '2021-12-09 17:16:28', '2021-12-09 17:16:28'),
(18, 'C000018', 'SOBUJ SIKDER', '01779102927', 'Sobujsikder2927@gmail.com', 'Tangail', NULL, NULL, NULL, NULL, '01779102927', '$2y$10$WZioT12zXDfhOkEIMamKUugJdiFrsA5rh/uHIXLFd72B4ZvWXHFPu', 'p', '37.111.203.44', '37.111.203.44', NULL, '37.111.203.44', '2021-12-17 06:52:00', '2021-12-17 06:52:00'),
(19, 'C000019', 'Khayching Kheyang', '01852239620', 'Kheyangk@gmail.com', 'Anowara', NULL, NULL, NULL, NULL, '01852239620', '$2y$10$nkQ2e98ABVAlryFursMv5.XtraXHwrNtm8d86rHxURKGTM.Ft6pTC', 'p', '103.242.23.179', '103.242.23.179', NULL, '103.242.23.179', '2021-12-26 10:10:00', '2021-12-26 10:10:00'),
(20, 'C000020', 'Khayching Kheyang', '01882981285', 'Kheyangk@gmail.com', 'Anowara,ctg', NULL, NULL, NULL, NULL, '01882981285', '$2y$10$X5VIMqZtxngNgkJf3vIIBewgqmd2QWaz81Ps9vn9p5giOU2aXIsxm', 'p', '103.242.23.191', '103.242.23.191', NULL, '103.242.23.191', '2021-12-27 07:55:48', '2021-12-27 07:55:48'),
(21, 'C000021', 'Monem Hasan', '01970005625', 'monemhasan343@gmail.com', 'Bangladesh', NULL, NULL, NULL, NULL, '01970005625', '$2y$10$pVadM6DWDxdegLRvBnXHlehjMz5U98XgWl4OVlojpmG6zhI2agiFa', 'p', '42.0.4.228', '42.0.4.228', NULL, '42.0.4.228', '2021-12-29 21:44:45', '2021-12-29 21:44:45'),
(22, 'C000022', 'Joyti Chakma', '01935364049', 'joytichakma7@gmail.com', 'Rangamati jurachari', NULL, NULL, NULL, NULL, '01935364049', '$2y$10$B9wGDHkZb.xv.Y5D8xXJYOM/pHUfIxtIZKNlmI5AyAOLF6K4L32wa', 'p', '119.10.175.98', '119.10.175.98', NULL, '119.10.175.98', '2021-12-29 21:56:26', '2021-12-29 21:56:26'),
(23, 'C000023', 'Md burhanAhmed', '01730245918', 'mdburhana@gmail.com', 'Md burhanAhmed', NULL, NULL, NULL, NULL, '01730245918', '$2y$10$DF7yu6zvo6LhrrSVUhXn7uWJnMPPxgkV1So6J2FOT1Jb32nhgxoUi', 'p', '37.111.213.169', '37.111.213.169', NULL, '37.111.213.169', '2022-01-03 13:12:00', '2022-01-03 13:12:00'),
(24, 'C000024', 'Md aminul islam', '01756736572', 'Aminulislamtme@gmail.com', 'Fokirapul,118 dhaka', NULL, NULL, NULL, NULL, '01756736572', '$2y$10$u03v5ZZZtcjKCoGFeB7JQeBw7CewoWLRHgwWX997CysTdD886zJ6u', 'p', '37.111.211.232', '37.111.211.232', NULL, '37.111.211.232', '2022-01-05 11:26:17', '2022-01-05 11:26:17'),
(25, 'C000025', 'masum billa', '01313249927', 'md9097210@com', 'Gazipur', NULL, NULL, NULL, NULL, '01313249927', '$2y$10$9ILoGCJ4WHG8IOCealbe0egmzlyErAQULdfMMFi6yWL/Vv1VW32fu', 'p', '59.152.11.130', '59.152.11.130', NULL, '59.152.11.130', '2022-01-05 18:27:08', '2022-01-05 18:27:08'),
(26, 'C000026', 'Rayhan', '01706488763', 'lamiya507islam@gmail.com', 'Gazipur', NULL, NULL, NULL, NULL, '01706488763', '$2y$10$S958rfgKbYuTuon1LBZvaOJriPayxLvutjweiDQub4g2TjnfCZqcG', 'p', '37.111.197.3', '37.111.197.3', NULL, '37.111.197.3', '2022-01-05 23:04:12', '2022-01-05 23:04:12'),
(27, 'C000027', 'MD Sachin alom', '01993519750', 'mdsahinalom9765@gmail.com', '01993519750', NULL, NULL, NULL, NULL, '01993519750', '$2y$10$.qmaQJ9Iw6LApWr0pOsZvOL/dTgYBWNHV/rsLrdMk5QX.b4oCWno.', 'p', '141.0.9.19', '141.0.9.19', NULL, '141.0.9.19', '2022-01-12 03:05:06', '2022-01-12 03:05:06'),
(28, 'C000028', 'Durk.Badsha', '01979043935', 'mdshobuj77754@gmail.com', 'Savar 1', NULL, NULL, NULL, NULL, '01979043935', '$2y$10$RI4VVzB/CxhMt3J0gHdJCeLKhBlnjFDwsyidupwB6Oq4D3sRjolWW', 'p', '182.48.72.207', '182.48.72.207', NULL, '182.48.72.207', '2022-01-12 09:59:35', '2022-01-12 09:59:35'),
(29, 'C000029', 'Md Ripon khan', '01742727090', 'riponkhan5971@gmail.com', 'Dhaka Bangladesh', NULL, NULL, 'uploads/customer/IMG_20220108_125940_61e287a0736e5.jpg', NULL, '01742727090', '$2y$10$jgoxD0yyc6NWEmhtfMfJy./Yq.e/Ko9FGAvLynAzYIjKMRSzH65/m', 'p', '202.134.14.135', '29', NULL, '202.134.14.135', '2022-01-15 13:35:54', '2022-01-15 13:36:48'),
(30, 'C000030', 'Mehedi hasan', '01778398214', 'Mahedyhassanmunna@gmail.com', 'Munna22558800', NULL, NULL, NULL, NULL, '01778398214', '$2y$10$OUJ1s009h2b5DNcq7pUHquIhwDg8AH7nuiWslBlAwn1qSG9z7Yiou', 'p', '103.150.65.37', '103.150.65.37', NULL, '103.150.65.37', '2022-01-16 16:45:25', '2022-01-16 16:45:25'),
(31, 'C000031', 'Md forhad islam', '01739305281', 'mdforhadislam000111@gmail.com', 'Shazadpur', NULL, NULL, NULL, NULL, '01739305281', '$2y$10$3G6IsNrhKTfEhEBO/raH8.tzl6Abti50WRQ4uXG8u1LUjDb.zWtyS', 'p', '37.111.231.9', '37.111.231.9', NULL, '37.111.231.9', '2022-01-16 17:29:16', '2022-01-16 17:29:16'),
(32, 'C000032', 'Hridoy tcg', '01861225018', 'hridoytanchangya4@gmail.com', 'Vashundhara', NULL, NULL, NULL, NULL, '01861225018', '$2y$10$mnFZhkYNnsHHFNqsYATy4umDh9Vsky2V0UnTrP57kHQR18cM.wRvO', 'p', '110.76.128.66', '110.76.128.66', NULL, '110.76.128.66', '2022-01-16 17:56:03', '2022-01-16 17:56:03'),
(33, 'C000033', 'Md Likhon Khondokar', '01763345002', 'mdlikhon.kst@gmail.com', 'Allardorga, Dulatpur', NULL, NULL, NULL, NULL, '01763345002', '$2y$10$MbcpjbViROQTXP6toTEZ8uAwvFo.g5hkCA.Kd0BzyNcMhyKdeYBQC', 'p', '103.88.141.82', '103.88.141.82', NULL, '103.88.141.82', '2022-01-16 23:29:11', '2022-01-16 23:29:11'),
(34, 'C000034', 'MD Tarikol Islam shihab', '01402715190', 'sobyemdsoboy@gmail.com', 'Gazipor', NULL, NULL, NULL, NULL, '01402715190', '$2y$10$cWkJpRCfI3qzPA5TfHEC7OjY0LEz1JGrWa01kv8qoxxGtqkk.CCZu', 'p', '103.67.159.14', '103.67.159.14', NULL, '103.67.159.14', '2022-01-17 07:11:28', '2022-01-17 07:11:28'),
(35, 'C000035', 'Sheikh Torikul islam', '01760313595', 'torikulisalm76@gmail.com', 'Natore', NULL, NULL, NULL, NULL, '01760313595', '$2y$10$L0xYCU2r/JYVSVfc3QKhpegqmthqKDtMRiFNpKVgZAYOQ8OA3dZTu', 'p', '37.111.223.36', '37.111.223.36', NULL, '37.111.223.36', '2022-01-17 09:05:03', '2022-01-17 09:05:03'),
(36, 'C000036', 'Jahid khan', '01611179842', 'jahidmahammud4@gmail.com', 'Rajshahi', NULL, NULL, NULL, NULL, '01611179842', '$2y$10$QJrQHHyDYR59jn14Q.3gxOi.UqIuQ0LgtOOcPZ9Ra3nVAW/XjvAvC', 'p', '103.147.163.204', '103.147.163.204', NULL, '103.147.163.204', '2022-01-17 12:12:40', '2022-01-17 12:12:40'),
(37, 'C000037', 'Jamil', '01840895349', 'jamil37669@gmil.com', 'jamil37669@gmil.com', NULL, NULL, NULL, NULL, '01840895349', '$2y$10$1XDfHeNGOEmHAX96Y.j56uIUawL/9IYp3z5AWhWhlX.zufhnNVHWe', 'p', '42.0.7.253', '42.0.7.253', NULL, '42.0.7.253', '2022-01-17 12:54:52', '2022-01-17 12:54:52'),
(38, 'C000038', 'Farhan', '01953451129', 'ayaansj67890@gmail.com', 'Khulna', NULL, NULL, NULL, NULL, '01953451129', '$2y$10$LhRFfCkJD6VyTnT9fCbB7eUJ2gMgBxlQ3oVzizlkOWzDH0C2lbaD6', 'p', '37.111.216.61', '37.111.216.61', NULL, '37.111.216.61', '2022-01-17 14:36:08', '2022-01-17 14:36:08'),
(39, 'C000039', 'Habibur Rahman Imran', '01882433867', 'rahmanimranh@gmail.com', 'Gulshan shahjadpur', NULL, NULL, NULL, NULL, '01882433867', '$2y$10$Ly1s7KM3rEQ6oTJPpH9zuuW7sW49t7k8HZN4U5FQxQm7vwMjlrViy', 'p', '59.152.105.74', '59.152.105.74', NULL, '59.152.105.74', '2022-01-17 15:54:06', '2022-01-17 15:54:06'),
(40, 'C000040', 'Moniruzzaman', '01734088221', 'Poloklungi@gmail.com', 'pabna', NULL, NULL, NULL, NULL, '01734088221', '$2y$10$6EdwJYNT6c/ShGVOK7yUv.EC2bkHsHkvD288DgNqPSyPpWWBqSCB.', 'p', '103.25.248.230', '103.25.248.230', NULL, '103.25.248.230', '2022-01-17 17:00:04', '2022-01-17 17:00:04'),
(41, 'C000041', 'Md al amin mia', '01785982250', 'alaminamz98@gmail.com', 'alaminamz98@gmail.com', NULL, NULL, NULL, NULL, '01785982250', '$2y$10$RXOCJZr4aWmVzQch.Cl6su0Rm7ZfhB5ofvDpobymUT87y0HzqT7e2', 'p', '37.111.212.95', '37.111.212.95', NULL, '37.111.212.95', '2022-01-17 18:23:08', '2022-01-17 18:23:08'),
(42, 'C000042', 'Ab ceramic', '01770680253', 'muktarmunna64@gmil.com', 'Kaziparar', NULL, NULL, NULL, NULL, '01770680253', '$2y$10$BPWLaHI69ZQ.hdVFgIyHYeTMLQ6DVt8ccvBXqROTDeFzuhl/6i2Yq', 'p', '37.111.232.167', '37.111.232.167', NULL, '37.111.232.167', '2022-01-17 23:01:11', '2022-01-17 23:01:11'),
(43, 'C000043', 'Md.Mostafa kamal', '01826700045', 'mdmostafa018267@gmail.com', 'Chittagong', NULL, NULL, NULL, NULL, '01826700045', '$2y$10$iDy6xB9l/pPnIapDLbFF6eFjp8D2tIvS0dhcEixO8fhMqwM0/QUja', 'p', '144.48.151.202', '144.48.151.202', NULL, '144.48.151.202', '2022-01-18 11:11:34', '2022-01-18 11:11:34'),
(44, 'C000044', 'Shamim AL mamun', '01718458250', 'nasrinalmamun286@gmail.com', 'Gazipur', NULL, NULL, NULL, NULL, '01718458250', '$2y$10$MArIDZSB1i.ROWgpd3pk/uh6Au0VLKTM7YwXytN7S6C.bzApc5BzC', 'p', '51.79.241.193', '51.79.241.193', NULL, '51.79.241.193', '2022-01-18 11:18:08', '2022-01-18 11:18:08'),
(45, 'C000045', 'Md bulbul islam', '01319318853', 'mdbulbulislam2022@gmail.com', 'Jamalpur', NULL, NULL, NULL, NULL, '01319318853', '$2y$10$Qx45fSyYHwXs5MJIaHke2erbzp8jQez2YyVmjQb85R1zd8gwhgV1W', 'p', '8.30.234.135', '8.30.234.135', NULL, '8.30.234.135', '2022-01-24 20:38:53', '2022-01-24 20:38:53'),
(46, 'C000046', 'Sagor', '01517366031', 'sagorraju3@gmail.com', 'Rajshahi', NULL, NULL, NULL, NULL, '01517366031', '$2y$10$0C2q9H8CzwSQlwp48quo0uriNgZVg8r7klkcrZii9Dfdz9U.ed1ku', 'p', '103.139.18.55', '103.139.18.55', NULL, '103.139.18.55', '2022-01-25 21:42:46', '2022-01-25 21:42:46'),
(47, 'C000047', 'Md Fariduzzaman', '01792182463', 'farid746762@gmail.com', 'Rupgonj,Molla para.Masumdia bazar,aminpur', NULL, NULL, NULL, NULL, '01792182463', '$2y$10$XlJglzxgWJXwZG.yKGUSUufMvfpKhsTR7MucOAgxJ1vtiZgPP4xW.', 'p', '118.179.119.114', '118.179.119.114', NULL, '118.179.119.114', '2022-01-26 21:03:29', '2022-01-26 21:03:29'),
(48, 'C000048', 'Teresa', '01925450024', 'teresasoni03@gmail.com', 'Mirzapur', NULL, NULL, NULL, NULL, '01925450024', '$2y$10$S8Ek3PRPMPLGUzGAihXNH..iy.BWitpf584Wb0QefJtRGoo1B/LCm', 'p', '103.152.142.242', '103.152.142.242', NULL, '103.152.142.242', '2022-01-26 21:26:24', '2022-01-26 21:26:24'),
(49, 'C000049', 'hafizur', '01711362180', 'dalowerkhanbd@gmail.com', 'Vill: Toilkundo.  Post: Bonkola. Upajala:Sujanajer. Dis: pabna', NULL, NULL, NULL, NULL, '01711362180', '$2y$10$Etkqq6whvOdAl/s9Zbf.Ne.SQfFKUfxO2PpOxsj7/u/SNsVrFItZO', 'p', '103.100.234.42', '103.100.234.42', NULL, '103.100.234.42', '2022-01-26 21:40:33', '2022-01-26 21:40:33'),
(50, 'C000050', 'MDOLIAHOMOD', '01713909160', 'kornel909160@gmail.com', 'Faridpur', NULL, NULL, NULL, NULL, '01713909160', '$2y$10$olUBD0SeD5mNxLe2Bt.iA.Aq9uzL6R.vU8.qup74CtrmufmJAX.TG', 'p', '37.111.226.207', '37.111.226.207', NULL, '37.111.226.207', '2022-01-31 00:09:42', '2022-01-31 00:09:42'),
(51, 'C000051', 'NK Nur Mohammad', '01733673039', 'nknurmohammad05@gmail.com', 'নিতপুর পোরশা নওগাঁ রাজশাহী', NULL, NULL, NULL, NULL, '01733673039', '$2y$10$2.raidFNYQB6Ssv/yMqPwe.UfJiOstglhZIE6WApRYjkZDHmz6KQG', 'p', '37.111.203.158', '37.111.203.158', NULL, '37.111.203.158', '2022-01-31 18:52:16', '2022-01-31 18:52:16'),
(52, 'C000052', 'Sajjad Hossen', '01795937004', 'mdsajjadvaia@gmail.com', 'Chandanaish, Chittagong', NULL, NULL, NULL, NULL, '01795937004', '$2y$10$xIQTtt7t46MLnRL.BaY2kubQzOlAt3zKXXOn.OXI8ddgxpqHVVMSK', 'p', '119.30.32.147', '119.30.32.147', NULL, '119.30.32.147', '2022-02-01 16:30:44', '2022-02-01 16:30:44'),
(53, 'C000053', 'Rony vai', '01905838414', 'ronyvai980@gamil.com', 'Mymensingh', NULL, NULL, NULL, NULL, '01905838414', '$2y$10$sB9VBfZC6AaUhQC1ct9HnOo7cLICeeIOqG.YUSnXFp5uvn0/5oNwi', 'p', '116.58.201.188', '116.58.201.188', NULL, '116.58.201.188', '2022-02-01 17:32:01', '2022-02-01 17:32:01'),
(54, 'C000054', 'Sagar hossen', '01644231368', 'sagarhossen1810rs@gmail.com', 'Munsigonj', NULL, NULL, NULL, NULL, '01644231368', '$2y$10$HybseHf322Xp3zcHTG.XVu7s71kQuy/b9Dr/z6SpmyPOKkNg/4J8C', 'p', '202.134.14.139', '202.134.14.139', NULL, '202.134.14.139', '2022-02-02 20:09:02', '2022-02-02 20:09:02'),
(55, 'C000055', 'MD Baizid Bustami', '01887096533', 'baizidbaizid410@gmail.com', 'Pabna', NULL, NULL, NULL, NULL, '01887096533', '$2y$10$1WxYATFjcaQdqabdydn3xOfJpPyUlkVIJdg3HcReqKtb2CE1e2rM2', 'p', '37.111.221.127', '37.111.221.127', NULL, '37.111.221.127', '2022-02-03 05:42:54', '2022-02-03 05:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`id`, `name`, `designation`, `facebook`, `twitter`, `linkedin`, `instagram`, `image`, `status`, `save_by`, `updated_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Rasel Sarkar', 'Manager,Operation & Finance', 'https://www.qufaz.org.au', 'https://www.fanelury.in', 'https://www.tojyby.org.uk', 'https://www.cuhavew.biz', 'uploads/management/handsome-man-black-suit-white-shirt-posing-studio-attractive-guy-fashion-hairstyle-confident-man-short-beard-125019349_6210b6313ed30.jpg', '1', '1', '1', '127.0.0.1', '2022-03-14 08:56:21', '2021-10-31 09:51:42', '2022-03-14 08:56:21'),
(2, 'Niyamot Islam Nur', 'Finance Director', 'https://www.fojohipakymuqo.mobi', 'https://www.vyribaw.tv', 'https://www.botaz.mobi', 'https://www.lyse.ca', 'uploads/management/FB_IMG_1638647202741_61abc617a47c8.jpg', '1', '1', '1', '37.111.200.60', '2021-12-05 00:52:46', '2021-10-31 09:52:02', '2021-12-05 00:52:46'),
(3, 'Nazmus Sakive Zubair', 'Nazmus Sakive Zubair', 'https://www.facebook.com/', NULL, NULL, NULL, 'uploads/management/pexels-photo-2379005_6210b60bd688b.jpeg', '1', '1', '1', '127.0.0.1', '2022-03-14 08:56:27', '2021-10-31 22:32:10', '2022-03-14 08:56:27'),
(4, 'AGM Sabbir', 'Managing Director', 'https://www.facebook.com/', NULL, 'https://www.linkedin.com/in/', 'https://www.instagram.com/', 'uploads/management/depositphotos_44309759-stock-photo-young-indian-man-outdoors_6210b5c7db337.jpg', '1', '1', '1', '127.0.0.1', '2022-03-14 08:56:33', '2021-10-31 22:32:46', '2022-03-14 08:56:33'),
(5, 'Senior Marketing Manager', 'Chairman', 'https://www.Facebook.com/', NULL, NULL, NULL, 'uploads/management/handsome-man-black-suit-white-shirt-posing-studio-attractive-guy-fashion-hairstyle-confident-man-short-beard-125019349_6210b59fd5f7c.jpg', '1', '1', '1', '127.0.0.1', '2022-03-14 08:56:14', '2021-12-05 00:35:54', '2022-03-14 08:56:14'),
(6, 'Md Ratan Mia', 'Director Communication', NULL, NULL, NULL, NULL, 'uploads/management/IMG_20211205_013917_61abc6c14bf74.jpg', '1', '1', NULL, '37.111.200.60', '2021-12-05 00:52:33', '2021-12-05 00:51:29', '2021-12-05 00:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_name`, `phone`, `email`, `subject`, `message`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Amelia Sexton', '0160435475', 'vodicagy@asamailinator.com', 'Eligendi ipsum numqu', 'erertre', '127.0.0.1', NULL, '2021-10-30 03:33:31', '2021-10-30 03:33:31'),
(2, 'Amelia Sexton', '0160435475', 'vodicagy@asamailinator.com', 'Eligendi ipsum numqu', 'dsfds', '127.0.0.1', NULL, '2021-10-30 03:34:49', '2021-10-30 03:34:49'),
(3, 'Amelia Sexton', '0160435475', 'vodicagy@mailinator.com', 'Eligendi ipsum numqu', 'dasda', '127.0.0.1', NULL, '2021-10-30 03:36:30', '2021-10-30 03:36:30'),
(4, 'Ethan Burton', '0160435475', 'guqifoped@mailinator.com', 'Nam provident volup', 'dsfsdf', '127.0.0.1', NULL, '2021-10-30 03:37:54', '2021-10-30 03:37:54'),
(5, 'Piper Ramirez', '0160435475', 'jagi@mailinator.com', 'Quas vero dolore exc', 'Aute fugiat est Nam', '127.0.0.1', NULL, '2021-10-30 03:38:20', '2021-10-30 03:38:20'),
(6, 'Vladimir Jackson', '01706755815', 'lexet@mailinator.com', 'Commodo nihil nobis', 'Voluptas sequi volup', '127.0.0.1', NULL, '2021-10-30 03:39:10', '2021-10-30 03:39:10'),
(7, 'Marah Mitchell', '01706755815', 'weke@mailinator.com', 'Et aut rem incidunt', 'Ut quos assumenda pe', '127.0.0.1', NULL, '2021-10-30 03:39:24', '2021-10-30 03:39:24'),
(8, 'Rinah Petty', '01706755815', 'badus@mailinator.com', 'Officiis qui Nam exp', 'Cum iste architecto', '127.0.0.1', NULL, '2021-10-30 03:40:11', '2021-10-30 03:40:11'),
(9, 'Omor1', '01919230438', 'farukkhan562338@gmail.com', 'Warke list', NULL, '119.30.39.159', NULL, '2021-12-03 14:25:25', '2021-12-03 14:25:25'),
(10, 'Estelle Picard', '419-543-8151', 'picard.estelle@hotmail.com', NULL, 'Add your site to all 35 of our business directories with one click here-> https://bit.ly/submityourwebsite', '212.102.33.216', NULL, '2021-12-24 13:38:20', '2021-12-24 13:38:20'),
(11, 'NataRes', '82581115268', 'woodthighgire1988@gmail.com', 'Hello Admin!', 'Hey handsome! I\'m a sexy girl. Ready to fulfill all your fantasies https://localchicks3.com/?u=41nkd08&o=8dhpkzk', '185.85.162.242', NULL, '2021-12-25 04:24:26', '2021-12-25 04:24:26'),
(12, 'NataRes', '89748245872', 'woodthighgire1988@gmail.com', 'Hello Admin!', 'Hi! If you want to pull me on your stick, then message me where we can meet https://localchicks3.com/?u=41nkd08&o=8dhpkzk', '185.85.162.242', NULL, '2021-12-26 04:11:57', '2021-12-26 04:11:57'),
(13, 'Bus', '83882933987', 'lkn08l4t@gmail.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/y3wqw2fo', '190.2.132.128', NULL, '2022-01-04 12:40:49', '2022-01-04 12:40:49'),
(14, 'Bus', '88316458246', '3706yoaz@hotmail.com', 'I promised.', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/y2oqhq7x', '192.40.57.57', NULL, '2022-01-05 04:09:33', '2022-01-05 04:09:33'),
(15, 'Bus', '84318116783', 'i9axv0ja@yahoo.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y466lwdk', '192.40.57.57', NULL, '2022-01-05 22:31:13', '2022-01-05 22:31:13'),
(16, 'Bus', '84137348443', 'kn3df9kf@icloud.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y69y8pab', '46.166.187.72', NULL, '2022-01-11 12:32:51', '2022-01-11 12:32:51'),
(17, 'amupeni', '87596694229', '9vxtmli0@yahoo.com', 'I promised.', 'Cryptocurrency rates are breaking records, which means you have the opportunity to make money on cryptocurrencies. Join our system and start making money with us. Go to system: https://tinyurl.com/y2gqkhto', '185.107.95.212', NULL, '2022-01-12 11:44:57', '2022-01-12 11:44:57'),
(18, 'Olivia Pointon', '02079460433', 'avaolivia2747@gmail.com', 'Explainer Videos', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site win24online.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=ivTmAwuli14\r\nhttps://www.youtube.com/watch?v=uywKJQvfeAM\r\nhttps://www.youtube.com/watch?v=oPNdmMo40pI\r\nhttps://www.youtube.com/watch?v=6gRb-HPo_ck\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $449\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to get in touch.\r\nIf you are not interested, simply delete this message and we won\'t contact you again.\r\n\r\nKind Regards,\r\nOlivia', '23.106.219.44', NULL, '2022-01-13 18:04:38', '2022-01-13 18:04:38'),
(19, 'Kylie Hart', '0688 908 93 85', 'kyliehartila@yahoo.com', 'DA50 Backlink to win24online.com', 'Hi, \r\n\r\nWe\'re wondering if you\'d be interested in a \'dofollow\' backlink to win24online.com from our website that has a Moz Domain Authority of 50?\r\n\r\nWe charge just $50 (USD) to be paid via Paypal, card, or Payoneer. This is a one-time fee, so there are no extra charges and the link is permanent.\r\n\r\nIf you\'d like to know more about the site, please reply to this email and we can discuss further.\r\n\r\nKind Regards,\r\nKylie', '23.80.97.232', NULL, '2022-01-14 17:54:56', '2022-01-14 17:54:56'),
(20, 'Mark Brown', '02079460433', 'markbrown3049@gmail.com', 'Brand New Logo for win24online.com', 'Hi,\r\n\r\nWe\'d like to introduce to you our logo design service that we feel would benefit your site win24online.com.\r\n\r\nYou can view some of our previously designed logos here:\r\nhttps://imgur.com/a/39n0lTz\r\n\r\nWe design a wide range of logo styles including, abstract, 3D, animated, branding, plus several more. We can also do logos for your social media profiles such as Facebook, Twitter and Instagram.\r\n\r\nIf this is something you may be interested in, reply and we can discuss further.\r\n\r\nKind Regards,\r\nMark', '23.106.219.94', NULL, '2022-01-18 21:07:01', '2022-01-18 21:07:01'),
(21, 'Bus', '83955633686', '94qqrzmu@yahoo.com', 'Free Spins Below', 'Play for free and win real money! Claim (3) Free Spins Below https://tinyurl.com/ybcn5fw4', '85.159.237.75', NULL, '2022-01-22 01:42:39', '2022-01-22 01:42:39'),
(22, 'num92314flebno', '84378865665', 'kiddgeerarddo@gmail.com', 'tup92314hyerge', 'mss92314errtbh EWh6P9S fuGu CVPWwTq', '185.107.80.193', NULL, '2022-01-22 22:17:04', '2022-01-22 22:17:04'),
(23, 'Forexheipida', '88762169933', 'chalice@pochtampt.com', 'Forex ea builder free', 'Tosaitheoirí cúrsa trádála forex ar líne saor in aisce. https://ie.system-forex.com', '176.106.247.22', NULL, '2022-01-23 17:48:23', '2022-01-23 17:48:23'),
(24, 'AnnaFex', '+1 2496334567', 'annaFex@mail.com', 'I want to meet serious man :)', 'Hello all, guys! I know, my message may be too specific, \r\nBut my sister found nice man here and they married, so how about me?! :) \r\nI am 27 years old, Maria, from Romania, know English and Russian languages also \r\nAnd... I have specific disease, named nymphomania. Who know what is this, can understand me (better to say it immediately) \r\nAh yes, I cook very tasty! and I love not only cook ;)) \r\nIm real girl, not prostitute, and looking for serious and hot relationship... \r\nAnyway, you can find my profile here: http://lemasunc.tk/chk/1', '138.199.36.154', NULL, '2022-01-24 13:06:24', '2022-01-24 13:06:24'),
(25, 'Bus', '83432157123', 'o8uoxhzr@yahoo.com', 'I promised.', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/y77gtryf', '46.166.182.115', NULL, '2022-01-25 19:00:30', '2022-01-25 19:00:30'),
(26, 'Nancy Gupta', '4158541495', 'nancy@hirevirtualtalent.com', 'Looking to Outsource?', 'Hi There,\r\n\r\nThis is Nancy from Hire Virtual Talent. We are a Business outsourcing agency with 50+ Team Members.\r\n\r\nWe specialize in Multiple Business Services mentioned below:\r\nVirtual Assistance || Data Entry || E-Commerce || Admin/Back-Office || HR || Transcription\r\nCustomer Service || Telemarketing || Content Writing || Website Development\r\nMobile App Development || Social Media Postings || Bookkeeping\r\n\r\nOur Costing: $12/hr\r\n\r\nPAY AFTER WORK IS DELIVERED || NO OBLIGATION\r\n\r\nWhy should you work with us?\r\n1. Worked with 300+ Clients\r\n2. Long Term Happy Clients working with us.\r\n3. We provide support in all business departments\r\n4. 12+ Year Experience\r\n5. Worked on 200+ Type of different projects\r\n\r\nDo you have any requirements right now?\r\n\r\nThanks & Regards,\r\nNancy Gupta\r\nEmail Marketing Executive\r\nHire Virtual Talent\r\nPh: +1 415 429 6711\r\nEmail: Nancy@HireVirtualTalent.com\r\nWebsite: HireVirtualTalent.com', '185.230.126.20', NULL, '2022-01-27 17:48:25', '2022-01-27 17:48:25'),
(27, 'Chase Cowlishaw', '0324 6887056', 'chase@bestpaleoreviews.com', 'website error', 'Hey, are you still in business? It seems like there\'s an error on your website. You can see a free report of the problem I found at https://wdsantabarbara.com/report', '173.213.85.228', NULL, '2022-02-06 07:19:04', '2022-02-06 07:19:04'),
(28, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Who needs eyeballs, you need BUSINESS', 'My name’s Eric and I just came across your website - win24online.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like win24online.com will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=win24online.com', '172.255.80.171', NULL, '2022-02-07 19:21:27', '2022-02-07 19:21:27'),
(29, 'Bus', '83837331656', '7qyaspzh@gmail.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y9o3lq8b', '190.2.132.157', NULL, '2022-02-08 01:25:47', '2022-02-08 01:25:47'),
(30, 'Brain Latham', '06-86677729', 'brain.latham@googlemail.com', NULL, 'You can submit your site to over 30 different business directories for free with one click https://bit.ly/submityourwebsite', '212.102.33.82', NULL, '2022-02-08 14:47:52', '2022-02-08 14:47:52'),
(31, 'Eric Jones', '555-555-1212', 'eric.jones.z.mail@gmail.com', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my name’s Eric and I just ran across your website at win24online.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=win24online.com', '191.102.151.193', NULL, '2022-02-09 21:14:19', '2022-02-09 21:14:19'),
(32, 'Anita Gro', '0390 4301564', 'anitagro44@gmail.com', 'Guest Post Query', 'Hi,\r\n\r\nHow are you doing? \r\n\r\nWill you be interested in doing a high-quality guest post on your site? It is a 3 step process where:\r\n\r\n1. I will send you three amazing topic ideas for a post.\r\n2. You need to choose one out of those.\r\n3. I will then send a high-quality, SEO Friendly article on that chosen topic to get it published on your website with one do-follow link to my site.\r\n\r\nLet me know if I shall start with step 1?\r\n\r\nBest,\r\nAnita Gro', '107.173.248.149', NULL, '2022-02-12 04:41:37', '2022-02-12 04:41:37'),
(33, 'Brenda Reynolds', '787-289-2380', 'BRogers12@gmail.com', 'Fix issue with your website', 'I was looking at your website and noticed it appears the word \"tempore\" is spelled wrong.  I had similar problems on my site until someone mentioned it to me and I also now use software from SpellPerfect.com to keep my site error free.', '167.114.172.180', NULL, '2022-02-14 02:17:42', '2022-02-14 02:17:42'),
(34, 'Bus', '84872193199', 'p6qktzv5@yahoo.com', 'I promised.', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/ybd9kh6a', '185.107.95.214', NULL, '2022-02-16 16:09:46', '2022-02-16 16:09:46'),
(35, 'Mallory Horton', '09421 84 88 39', 'umonircio@joinm3.com', NULL, 'You can submit your site to over 1000 different business/advertising directories for free with one click https://bit.ly/submityoursite1000', '212.102.33.86', NULL, '2022-02-16 22:39:46', '2022-02-16 22:39:46'),
(36, 'Borysko', 'Ns gbqu Cv', 'mboryski@gmail.com', 'help us get out of eastern ukraine', 'help sir/ma,\r\n\r\nplease I am desperate to get my family out of eastern Ukraine town of Stanytsia Luhanska.\r\n\r\nplease there is sporadic but heavy artillery gun shelling, and my kid\'s kindergarten was hit.\r\n\r\nplease, send me any amount you can to help me bribe the authorities to smuggle us out. i cannot watch my wife and kids go through this agony any more.\r\n\r\nplease whatever you can, send as bitcoin. They say that is the only currency they will accept.\r\n\r\nhere is the wallet address:\r\n1ff7maSdBYLuRKADQVEDLgz23LV7yEXMa\r\n\r\nplease pray for our safety.\r\nhurry, hurry, hurry\r\nplease the above is not my email address, do not reply.\r\n\r\nGod bless you.\r\nBorysko\r\n(translated with google translate)', '104.144.245.217', NULL, '2022-02-19 10:34:59', '2022-02-19 10:34:59');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_19_101530_create_categories_table', 1),
(6, '2021_09_19_102209_create_customers_table', 1),
(7, '2021_09_19_135805_create_sub_categories_table', 1),
(8, '2021_09_20_041645_create_orders_table', 1),
(9, '2021_09_20_093723_create_products_table', 1),
(10, '2021_09_20_094505_create_order_details_table', 1),
(11, '2021_09_20_102013_create_product_images_table', 1),
(12, '2021_09_20_102416_create_services_table', 1),
(13, '2021_09_20_103113_create_banners_table', 1),
(14, '2021_09_20_125332_create_messages_table', 1),
(15, '2021_09_20_133359_create_company_profiles_table', 1),
(16, '2021_09_21_110416_create_photo_galleries_table', 1),
(17, '2021_09_21_114832_create_video_galleries_table', 1),
(18, '2021_09_21_115025_create_subscribers_table', 1),
(19, '2021_09_27_095651_create_teams_table', 1),
(20, '2021_09_27_104005_create_areas_table', 1),
(21, '2021_09_27_110946_create_management_table', 1),
(22, '2021_09_28_031648_create_countries_table', 1),
(23, '2021_09_28_114857_create_colors_table', 1),
(24, '2021_09_28_115236_create_sizes_table', 1),
(27, '2021_10_21_041936_create_ads_table', 1),
(28, '2021_10_21_091842_create_partners_table', 1),
(29, '2021_10_21_100011_create_blogs_table', 1),
(41, '2022_03_15_110732_create_accessories_table', 3),
(44, '2021_09_29_090045_create_pages_table', 4),
(45, '2021_09_30_045712_create_permissions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(18,2) DEFAULT NULL,
  `discount_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `service_charge` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(18,2) NOT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `invoice_no`, `customer_name`, `customer_mobile`, `customer_email`, `shipping_address`, `billing_address`, `vat_amount`, `shipping_cost`, `discount_amount`, `service_charge`, `total_amount`, `order_note`, `updated_by`, `status`, `deleted_at`, `created_at`, `updated_at`, `ip_address`) VALUES
(1, 1, '211104000001', 'MD Sazzat Hossain', '01706755815', 'sazzat@linktechbd.com', 'Mirpur -6, Dhakadsdsd', 'Mirpur -6, Dhakadsdsd', '0.00', '70.00', '0.00', '0.00', '2398.00', NULL, NULL, 'd', NULL, '2021-11-04 04:40:06', '2021-11-04 05:55:48', '127.0.0.1'),
(2, 1, '211104000002', 'MD Sazzat Hossain', '01706755815', 'sazzat@linktechbd.com', 'Mirpur -6, Dhakadsdsd', 'Mirpur -6, Dhakadsdsd', '0.00', '70.00', '0.00', '0.00', '462.00', NULL, NULL, 'd', NULL, '2021-11-04 04:40:35', '2021-11-04 05:51:42', '127.0.0.1'),
(3, 6, '211106000001', 'Doremon', '01977933335', 'hasannahian91@gmail.com', 'Shikago', 'Shikago', '0.00', '70.00', '0.00', '0.00', '55987.84', NULL, NULL, 'd', NULL, '2021-11-06 06:13:31', '2021-11-06 06:15:35', '113.11.37.172'),
(4, 7, '211106000002', 'Bappa RAj', '01714545454', 'b@gmail.com', 'fdfsfgfd', 'fdfsfgfd', '0.00', '70.00', '0.00', '0.00', '510.00', NULL, NULL, 'p', NULL, '2021-11-06 06:21:36', '2022-01-05 13:41:24', '113.11.37.172'),
(5, 8, '211106000003', 'Omar Sani', '01725363555', 'bl@gmail.com', 'FDC', 'FDC', '0.00', '70.00', '0.00', '0.00', '7666.05', NULL, NULL, 'p', NULL, '2021-11-06 10:11:28', '2022-01-05 13:41:46', '113.11.37.172'),
(6, 9, '211113000001', 'Md. Shamim Miah', '01774266791', 'shamim@linktechbd.com', 'Mirpur-10,Dhaka-1216', 'Mirpur-10,Dhaka-1216', '0.00', '70.00', '0.00', '0.00', '452.80', NULL, NULL, 'p', NULL, '2021-11-13 03:25:04', '2022-01-05 13:41:44', '113.11.37.172'),
(7, 9, '211113000002', 'Md. Shamim Miah', '01774266791', 'shamim@linktechbd.com', 'Mirpur-10,Dhaka-1216', 'Mirpur-10,Dhaka-1216', '0.00', '70.00', '0.00', '0.00', '56732.80', NULL, NULL, 'p', NULL, '2021-11-13 04:36:15', '2022-01-05 13:41:41', '113.11.37.172'),
(8, 11, '211114000001', 'Sumon Ahammed', '01946979797', 'info.win24@gmail.com', 'Mirpur', 'Mirpur', '0.00', '70.00', '0.00', '0.00', '814.96', NULL, NULL, 'd', NULL, '2021-11-14 15:19:40', '2021-11-14 15:22:42', '119.30.38.113'),
(9, 1, '211116000001', 'MD Sazzat Hossain', '01706755815', 'sazzat@linktechbd.com', 'Mirpur -6, Dhakadsdsd', 'Mirpur -6, Dhakadsdsd', '0.00', '70.00', '0.00', '0.00', '347.32', 'sdfasdfas', NULL, 'p', NULL, '2021-11-16 11:39:23', '2022-01-05 13:41:37', '113.11.37.172'),
(10, 11, '211117000001', 'Sumon Ahammed', '01946979797', 'info.win24@gmail.com', 'sherpur', 'Mirpur', '0.00', '70.00', '0.00', '0.00', '452.80', 'black lagbe', NULL, 'p', NULL, '2021-11-17 12:28:56', '2022-01-05 13:41:35', '103.112.166.145'),
(11, 1, '211121000001', 'MD Sazzat Hossain', '01706755815', 'sazzat@linktechbd.com', 'Mirpur -6, Dhakadsdsd', 'Mirpur -6, Dhakadsdsd', '0.00', '70.00', '0.00', '0.00', '1607.76', NULL, NULL, 'p', NULL, '2021-11-21 12:22:52', '2022-01-05 13:41:33', '113.11.37.172'),
(12, 1, '211122000001', 'MD Sazzat Hossain', '01706755815', 'sazzat@linktechbd.com', 'Mirpur -6, Dhakadsdsd', 'Mirpur -6, Dhakadsdsd', '0.00', '70.00', '0.00', '0.00', '846.00', NULL, NULL, 'p', NULL, '2021-11-22 10:26:01', '2022-01-05 13:41:29', '113.11.37.172');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `color_id` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` decimal(18,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `product_name`, `price`, `quantity`, `color_id`, `size_id`, `total_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'Side Bag', '776.00', 3, NULL, NULL, '2328.00', NULL, '2021-11-04 04:40:06', '2021-11-04 04:40:06'),
(2, 6, 2, 'Watch', '392.00', 1, NULL, NULL, '392.00', NULL, '2021-11-04 04:40:35', '2021-11-04 04:40:35'),
(3, 7, 3, 'Mobile', '55917.84', 1, NULL, NULL, '55917.84', NULL, '2021-11-06 06:13:31', '2021-11-06 06:13:31'),
(4, 9, 4, 'Pran up', '48.00', 1, NULL, NULL, '48.00', NULL, '2021-11-06 06:21:36', '2021-11-06 06:21:36'),
(5, 6, 4, 'Watch', '392.00', 1, NULL, NULL, '392.00', NULL, '2021-11-06 06:21:36', '2021-11-06 06:21:36'),
(6, 2, 5, 'Apple keyboard', '7596.05', 1, NULL, NULL, '7596.05', NULL, '2021-11-06 10:11:28', '2021-11-06 10:11:28'),
(7, 8, 6, 'Tablet', '382.80', 1, NULL, NULL, '382.80', NULL, '2021-11-13 03:25:04', '2021-11-13 03:25:04'),
(8, 7, 7, 'Mobile', '55917.84', 1, NULL, NULL, '55917.84', '2021-11-21 11:18:59', '2021-11-13 04:36:15', '2021-11-21 11:18:59'),
(9, 5, 7, 'shoos', '744.96', 1, NULL, NULL, '744.96', NULL, '2021-11-13 04:36:15', '2021-11-13 04:36:15'),
(10, 5, 8, 'shoos', '744.96', 1, NULL, NULL, '744.96', NULL, '2021-11-14 15:19:40', '2021-11-14 15:19:40'),
(11, 10, 9, 'sazzat', '229.32', 1, NULL, NULL, '229.32', NULL, '2021-11-16 11:39:23', '2021-11-16 11:39:23'),
(12, 9, 9, 'Pran up', '48.00', 1, NULL, NULL, '48.00', NULL, '2021-11-16 11:39:23', '2021-11-16 11:39:23'),
(13, 8, 10, 'Tablet', '382.80', 1, NULL, NULL, '382.80', '2021-11-21 11:18:35', '2021-11-17 12:28:56', '2021-11-21 11:18:35'),
(14, 5, 11, 'shoos', '744.96', 1, NULL, NULL, '744.96', NULL, '2021-11-21 12:22:52', '2021-11-21 12:22:52'),
(15, 3, 11, 'Beg', '744.80', 1, NULL, NULL, '744.80', NULL, '2021-11-21 12:22:52', '2021-11-21 12:22:52'),
(16, 9, 11, 'Pran up', '48.00', 1, NULL, NULL, '48.00', NULL, '2021-11-21 12:22:52', '2021-11-21 12:22:52'),
(17, 4, 12, 'Side Bag', '776.00', 1, NULL, NULL, '776.00', NULL, '2021-11-22 10:26:01', '2021-11-22 10:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `display_name`, `group_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'order.index', 'Pending Order View', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(2, 'order.onProcess', 'Order OnProcess', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(3, 'order.way', 'Order on the way', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(4, 'order.delivary', 'Order Delivery', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(5, 'sales.report', 'Sales Report', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(6, 'order.pending', 'Order Pending', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(7, 'order.process', 'Order Process', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(8, 'order.details.edit', 'Order details Edit', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(9, 'order.print', 'Order Print', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(10, 'order.edit', 'Order Edit', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(11, 'product.order.cancel', 'Product Order Cancel', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(12, 'order.all.update', 'Order Update', '1', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(13, 'product.create', 'Product Entry', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(14, 'product.index', 'Product List', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(15, 'product.edit', 'Product Edit', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(16, 'category.index', 'Category Create', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(17, 'category.edit', 'Category Edit', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(18, 'category.list', 'Category List', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(19, 'subcategory.index', 'Sub Category Create', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(20, 'subcategory.edit', 'Sub Category Edit', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(21, 'subcategory.list', 'SubCategory List', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(22, 'color.index', 'Color Entry', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(23, 'color.edit', 'Color Edit', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(24, 'size.index', 'Size Entry', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(25, 'size.edit', 'Size Edit', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(26, 'accessories.index', 'Accessories Entry', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(27, 'accessories.edit', 'Accessories Edit', '2', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(28, 'welcome', 'Company Welcome', '3', '1', NULL, '2022-03-15 21:50:18', '2022-03-15 21:50:18'),
(29, 'service.index', 'Service Entry', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(30, 'company.banner', 'Banner Create', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(31, 'banner.all', 'Banner All', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(32, 'banner.edit', 'Banner Edit', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(33, 'photo-gallery.index', 'photo Gallery', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(34, 'video.index', 'video gallery', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(35, 'about.us', ' About Us', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(36, 'mission', 'Mission Vission', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(37, 'faq', 'FAQ', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(38, 'refund', 'Refund', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(39, 'management.index', 'Management Entry', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(40, 'management.edit', 'Management Edit', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(41, 'team.index', 'Team Entry', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(42, 'team.edit', 'Management Edit', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(43, 'ad.index', 'Advatize Entry', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(44, 'ad.edit', 'Advatize Edit', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(45, 'partner.index', 'Partner Entry', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(46, 'partner.edit', 'Partner Edit', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(47, 'blog.index', 'Blog Entry', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(48, 'blog.edit', 'Blog Edit', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(49, 'service.edit', 'Service Edit', '3', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(50, 'profile.edit', 'Company Profle edit', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(51, 'profile.update', 'Company Data update', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(52, 'country.all', 'Country.create', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(53, 'country.edit', 'Country Edit', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(54, 'area.index', 'Area Create', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(55, 'area.edit', 'Area Edit', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(56, 'page.list', ' Page Setting', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(57, 'sms.sending', 'SMS Sending', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(58, 'sms.all', 'All SMS View', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(59, 'page', 'All Page List', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(60, 'permission.index', 'Permission', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(61, 'user.index', 'User Create', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(62, 'user.edit', 'user Edit', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(63, 'permission.edit', 'Permission Edit', '4', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(64, 'customer', 'Customer Entry', '5', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(65, 'customer.all', 'Customer List', '5', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(66, 'customer.edit', 'Customer Edit', '5', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(67, 'customer.pending', 'Customer Pending', '5', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(68, 'customer.list', 'Customer List', '5', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(69, 'public.sms', 'Public SMS', '6', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(70, 'subscriber.list', 'Subscriber List', '6', '1', NULL, '2022-03-15 21:50:19', '2022-03-15 21:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `save_by`, `updated_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hero Motors', 'uploads/ad/download (1)_622f492658912.png', '1', '1', '175.29.197.185', NULL, '2021-11-13 15:56:00', '2022-03-14 07:54:46'),
(2, 'Rancon Motors', 'uploads/ad/download_622f49a41b47c.png', '1', '1', '175.29.197.185', NULL, '2021-11-13 15:56:41', '2022-03-14 07:56:52'),
(3, 'Fortune Barishal', 'uploads/ad/download_622f495492f55.jpg', '1', '1', '175.29.197.185', NULL, '2021-11-13 15:57:09', '2022-03-14 07:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(2, 1, 2, 1, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(3, 1, 3, 1, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(4, 1, 4, 1, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(5, 1, 5, 1, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(6, 1, 6, 1, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(7, 1, 7, 1, '2022-03-15 21:50:19', '2022-03-15 21:50:19'),
(8, 1, 8, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(9, 1, 9, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(10, 1, 10, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(11, 1, 11, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(12, 1, 12, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(13, 1, 13, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(14, 1, 14, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(15, 1, 15, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(16, 1, 16, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(17, 1, 17, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(18, 1, 18, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(19, 1, 19, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(20, 1, 20, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(21, 1, 21, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(22, 1, 22, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(23, 1, 23, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(24, 1, 24, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(25, 1, 25, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(26, 1, 26, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(27, 1, 27, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(28, 1, 28, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(29, 1, 29, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(30, 1, 30, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(31, 1, 31, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(32, 1, 32, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(33, 1, 33, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(34, 1, 34, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(35, 1, 35, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(36, 1, 36, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(37, 1, 37, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(38, 1, 38, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(39, 1, 39, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(40, 1, 40, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(41, 1, 41, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(42, 1, 42, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(43, 1, 43, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(44, 1, 44, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(45, 1, 45, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(46, 1, 46, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(47, 1, 47, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(48, 1, 48, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(49, 1, 49, 1, '2022-03-15 21:50:20', '2022-03-15 21:50:20'),
(50, 1, 50, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(51, 1, 51, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(52, 1, 52, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(53, 1, 53, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(54, 1, 54, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(55, 1, 55, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(56, 1, 56, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(57, 1, 57, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(58, 1, 58, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(59, 1, 59, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(60, 1, 60, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(61, 1, 61, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(62, 1, 62, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(63, 1, 63, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(64, 1, 64, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(65, 1, 65, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(66, 1, 66, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(67, 1, 67, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(68, 1, 68, 1, '2022-03-15 21:50:21', '2022-03-15 21:50:21'),
(69, 1, 69, 1, '2022-03-15 21:50:22', '2022-03-15 21:50:22'),
(70, 1, 70, 1, '2022-03-15 21:50:22', '2022-03-15 21:50:22');

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_galleries`
--

CREATE TABLE `photo_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo_galleries`
--

INSERT INTO `photo_galleries` (`id`, `title`, `image`, `save_by`, `update_by`, `deleted_at`, `created_at`, `updated_at`, `ip_address`) VALUES
(1, 'name', 'uploads/gallery/prod_623163dacc73b.jpg', '1', NULL, NULL, '2022-03-15 22:13:14', '2022-03-15 22:13:14', '127.0.0.1'),
(2, 'name', 'uploads/gallery/product1_6231711228c04.jpg', '1', NULL, NULL, '2022-03-15 23:09:38', '2022-03-15 23:09:38', '127.0.0.1'),
(3, 'name', 'uploads/gallery/front-fork_6231711a15d4e.jpg', '1', NULL, NULL, '2022-03-15 23:09:46', '2022-03-15 23:09:46', '127.0.0.1'),
(4, 'name', 'uploads/gallery/hero-bike_623171238d893.png', '1', NULL, NULL, '2022-03-15 23:09:55', '2022-03-15 23:09:55', '127.0.0.1'),
(5, 'name', 'uploads/gallery/product_6231712c6f3cc.jpg', '1', NULL, NULL, '2022-03-15 23:10:04', '2022-03-15 23:10:04', '127.0.0.1'),
(6, 'name', 'uploads/gallery/bike-rolon_623171337f32f.jpg', '1', NULL, NULL, '2022-03-15 23:10:11', '2022-03-15 23:10:11', '127.0.0.1'),
(7, 'name', 'uploads/gallery/bullet_6231713cbe3dc.jpg', '1', NULL, NULL, '2022-03-15 23:10:20', '2022-03-15 23:10:20', '127.0.0.1'),
(8, 'name', 'uploads/gallery/motorcycle1_623171434985f.jpg', '1', NULL, NULL, '2022-03-15 23:10:27', '2022-03-15 23:10:27', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(18,2) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thum_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` decimal(18,2) DEFAULT NULL,
  `product_size` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_offer` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_upcoming` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `slug`, `category_id`, `sub_category_id`, `price`, `image`, `thum_image`, `discount`, `product_size`, `color`, `short_details`, `description`, `is_featured`, `is_offer`, `is_upcoming`, `status`, `save_by`, `update_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'P000001', 'Hp 6100 TU', 'hp-6100-tu-1635250559', 9, 3, '34534.00', 'p-16352504946177f13ee25d751TdkJSqeQL._SX679_.jpg', 'thumb-16352504946177f13ee25da51TdkJSqeQL._SX679_.jpg', '5.00', NULL, NULL, '<ul><li>MPN: 2R0D9PA</li><li>Model: 15s-du1087TU</li><li>Intel Celeron Processor N4020 (4M Cache, up to 2.80 GHz)</li><li>4GB DDR4 RAM + 1TB HDD</li><li>15.6 inch Full HD 1920x1080 Display</li><li>Windows 10 Home</li></ul>', '<ul><li>MPN: 2R0D9PA</li><li>Model: 15s-du1087TU</li><li>Intel Celeron Processor N4020 (4M Cache, up to 2.80 GHz)</li><li>4GB DDR4 RAM + 1TB HDD</li><li>15.6 inch Full HD 1920x1080 Display</li><li>Windows 10 Home</li></ul>', NULL, '1', NULL, 'A', '1', NULL, '127.0.0.1', '2022-02-19 02:53:39', '2021-10-26 06:14:54', '2022-02-19 02:53:39'),
(2, 'P000002', 'Apple keyboard', 'apple-keyboard-1635749620', 8, 5, '9865.00', 'p-16352506736177f1f15440eproduct-img5.jpg', 'thumb-16352506736177f1f154412product-img5.jpg', '23.00', NULL, NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, '1', NULL, 'A', '1', NULL, '127.0.0.1', '2022-02-19 02:53:54', '2021-10-26 06:17:53', '2022-02-19 02:53:54'),
(3, 'P000003', 'Beg', 'beg-1635250774', 2, 8, '760.00', 'p-16352507746177f2567c9a7product-b-4.jpg', 'thumb-16352507746177f2567c9abproduct-b-4.jpg', '2.00', 'Large', 'pink', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', '2022-02-19 02:53:43', '2021-10-26 06:19:34', '2022-02-19 02:53:43'),
(4, 'P000004', 'Side Bag', 'side-bag-1635250817', 2, 8, '800.00', 'p-16352508176177f281cb25bproduct-b-1.jpg', 'thumb-16352508176177f281cb25fproduct-b-1.jpg', '3.00', NULL, NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', '2022-02-19 02:53:50', '2021-10-26 06:20:17', '2022-02-19 02:53:50'),
(5, 'P000005', 'shoos', 'shoos-1635250914', 2, 8, '776.00', 'p-16352509146177f2e27cd79product-s-2.jpg', 'thumb-16352509146177f2e27cd7dproduct-s-2.jpg', '4.00', 'Mediam', 'pink', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', '2022-02-19 02:53:47', '2021-10-26 06:21:54', '2022-02-19 02:53:47'),
(6, 'P000006', 'Watch', 'watch-1637122898', 8, 5, '400.00', 'p-16352510066177f33e5a630product-details-img2.jpg', 'thumb-16352510066177f33e5a634product-details-img2.jpg', '2.00', 'Mediam', 'pink', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '1', '1', NULL, 'A', '1', NULL, '113.11.37.172', '2022-02-19 02:53:35', '2021-10-26 06:23:26', '2022-02-19 02:53:35'),
(7, 'P000007', 'Mobile', 'mobile-1635749607', 9, 3, '63543.00', 'p-16352511166177f3ac995a8product-details-img3.jpg', 'thumb-16352511166177f3ac995acproduct-details-img3.jpg', '12.00', 'Mediam', 'pink', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', '2022-02-19 02:30:27', '2021-10-26 06:25:16', '2022-02-19 02:30:27'),
(8, 'P000008', 'Tablet', 'tablet-1635749598', 9, 3, '435.00', 'p-16352511686177f3e031259product-img6.jpg', 'thumb-16352511686177f3e03125eproduct-img6.jpg', '12.00', 'Mediam', 'pink', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, '1', NULL, 'A', '1', NULL, '127.0.0.1', '2022-02-19 02:30:24', '2021-10-26 06:26:08', '2022-02-19 02:30:24'),
(9, 'P000009', 'Pran up', 'pran-up-1635749175', 1, 1, '50.00', 'p-16352515396177f55375206pran-up1000ml-pack-of-12.jpg', 'thumb-16352515396177f5537520apran-up1000ml-pack-of-12.jpg', '4.00', NULL, 'red', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, '1', NULL, 'A', '1', NULL, '127.0.0.1', '2022-02-19 02:30:21', '2021-10-26 06:32:19', '2022-02-19 02:30:21'),
(10, 'P000010', 'sazzat', 'sazzat-1636873187', 2, 8, '234.00', 'p-16368731876190b3e3a3379freeconvertany-7fdb6f1c0c10da9239dde4c81dee04e8.png', 'thumb-16368731876190b3e3a337efreeconvertany-7fdb6f1c0c10da9239dde4c81dee04e8.png', '2.00', 'Large', 'red', '<p><i><strong>Connected successfully</strong></i></p>', '<p>sazzat</p>', '0', '1', NULL, 'A', '1', NULL, '113.11.37.172', '2021-12-02 02:52:57', '2021-11-14 06:59:47', '2021-12-02 02:52:57'),
(11, 'P000010', 'Win24 Mosquito Coil', 'win24-mosquito-coil-1638819173', 6, NULL, '50.00', 'p-163881888361ae6443a5f74tl (1).png', 'thumb-163881888361ae6443a5f7atl (1).png', '10.00', NULL, 'red', NULL, NULL, NULL, '1', NULL, 'A', '1', NULL, '37.111.195.238', '2022-02-19 02:30:19', '2021-12-07 00:28:03', '2022-02-19 02:30:19'),
(12, 'P000011', 'Win24 Spirulina Capsul', 'win24-spirulina-capsul-1643220914', 5, NULL, '1000.00', 'p-164321980561f18b5d2b61atl (9).png', 'thumb-164321980561f18b5d2b626tl (9).png', '20.00', 'Large', NULL, NULL, NULL, '1', '1', NULL, 'A', '1', NULL, '37.111.207.24', '2022-02-19 02:30:17', '2022-01-26 22:56:45', '2022-02-19 02:30:17'),
(13, 'P000012', 'Win24 Masala Package', 'win24-masala-package-1643219981', 6, NULL, '695.00', 'p-164321998161f18c0d428e6tl (7).png', 'thumb-164321998161f18c0d428ectl (7).png', '10.00', NULL, 'red', NULL, NULL, '1', '1', NULL, 'A', '1', NULL, '37.111.211.173', '2022-02-19 02:30:15', '2022-01-26 22:59:41', '2022-02-19 02:30:15'),
(14, 'P000013', 'Win24 Dish Wash', 'win24-dish-wash-1643220131', 6, NULL, '100.00', 'p-164322013161f18ca3203eetl (4).png', 'thumb-164322013161f18ca3203f9tl (4).png', '5.00', NULL, NULL, NULL, NULL, '1', '1', NULL, 'A', '1', NULL, '37.111.211.173', '2022-02-19 02:30:12', '2022-01-26 23:02:11', '2022-02-19 02:30:12'),
(15, 'P000014', 'Win24 Toilet Cleaner', 'win24-toilet-cleaner-1643220266', 6, NULL, '100.00', 'p-164322026661f18d2a1ef9ftl (5).png', 'thumb-164322026661f18d2a1efa9tl (5).png', '5.00', 'Mediam', NULL, NULL, NULL, '1', '1', NULL, 'A', '1', NULL, '37.111.211.173', '2022-02-19 02:30:10', '2022-01-26 23:04:26', '2022-02-19 02:30:10'),
(16, 'P000015', 'Win24 Love Forever', 'win24-love-forever-1643220431', 5, NULL, '1300.00', 'p-164322043161f18dcfcb8a5tl (6).png', 'thumb-164322043161f18dcfcb8actl (6).png', '10.00', NULL, NULL, NULL, NULL, '0', '1', NULL, 'A', '1', NULL, '37.111.211.173', '2022-02-19 02:30:07', '2022-01-26 23:07:11', '2022-02-19 02:30:07'),
(17, 'P000007', 'Full Face Helmet', 'full-face-helmet-1645261104', 2, 2, '1445.00', 'p-16452611046210b13021045WhatsApp Image 2022-02-17 at 4.27.29 PM.jpeg', 'thumb-16452611046210b1302104aWhatsApp Image 2022-02-17 at 4.27.29 PM.jpeg', '12.00', 'Mediam', 'red', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', NULL, '2022-02-19 02:51:57', '2022-02-19 02:58:24'),
(18, 'P000002', 'Half Shell Helmet', 'half-shell-helmet-1645261049', 6, NULL, '3445.00', 'p-16452608886210b05892b25WhatsApp Image 2022-02-17 at 4.26.10 PM.jpeg', 'thumb-16452608886210b05892b29WhatsApp Image 2022-02-17 at 4.26.10 PM.jpeg', '14.00', 'Mediam', NULL, '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', NULL, '2022-02-19 02:54:48', '2022-02-19 02:57:29'),
(19, 'P000003', 'Firefighter\'s helmet', 'firefighters-helmet-1645261041', 7, NULL, '2445.00', 'p-16452609886210b0bc259c9WhatsApp Image 2022-02-17 at 4.27.27 PM.jpeg', 'thumb-16452609886210b0bc259ccWhatsApp Image 2022-02-17 at 4.27.27 PM.jpeg', NULL, 'Large', 'red', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', NULL, '2022-02-19 02:56:28', '2022-02-19 02:57:21'),
(20, 'P000004', 'Hard hat', 'hard-hat-1645261204', 9, 6, '4500.00', 'p-16452612046210b1946c411WhatsApp Image 2022-02-17 at 4.27.26 PM.jpeg', 'thumb-16452612046210b1946c415WhatsApp Image 2022-02-17 at 4.27.26 PM.jpeg', '5.00', 'Large', NULL, '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', NULL, '2022-02-19 03:00:04', '2022-02-19 03:00:04'),
(21, 'P000005', 'Lacrosse helmet', 'lacrosse-helmet-1645261271', 7, NULL, '780.00', 'p-16452612716210b1d7c3d0aWhatsApp Image 2022-02-17 at 4.26.14 PM.jpeg', 'thumb-16452612716210b1d7c3d0eWhatsApp Image 2022-02-17 at 4.26.14 PM.jpeg', '3.00', NULL, NULL, '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '0', '1', NULL, 'A', '1', NULL, '127.0.0.1', NULL, '2022-02-19 03:01:12', '2022-02-19 03:01:12'),
(22, 'P000006', 'Magbo helmet mask for Oro society', 'magbo-helmet-mask-for-oro-society-1645261418', 4, 1, '1587.00', 'p-16452614186210b26a0cf8cWhatsApp Image 2022-02-17 at 4.23.28 PM.jpeg', 'thumb-16452614186210b26a0cf90WhatsApp Image 2022-02-17 at 4.23.28 PM.jpeg', '2.00', 'Mediam', 'red', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '0', '1', NULL, 'A', '1', NULL, '127.0.0.1', NULL, '2022-02-19 03:03:38', '2022-02-19 03:03:38'),
(23, 'P000007', 'Racing helmet', 'racing-helmet-1645261617', 2, 8, '2100.00', 'p-16452616176210b33194461WhatsApp Image 2022-02-17 at 4.26.12 PM.jpeg', 'thumb-16452616176210b33194464WhatsApp Image 2022-02-17 at 4.26.12 PM.jpeg', '7.00', 'Large', 'red', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', NULL, '2022-02-19 03:06:57', '2022-02-19 03:06:57'),
(24, 'P000008', 'Winged helmet', 'winged-helmet-1645261897', 4, NULL, '2098.00', 'p-16452618976210b449516c4WhatsApp Image 2022-02-17 at 4.26.14 PM (1).jpeg', 'thumb-16452618976210b449516c8WhatsApp Image 2022-02-17 at 4.26.14 PM (1).jpeg', NULL, 'Mediam', 'red', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '<p>A full face helmet is the most ideal helmet for your riding. Full face helmets cover the rider’s face and the entire head. It offers the most protection to the rider and will save you from sustaining serious injuries to your head and skull. Full face helmets also stop wind blowing off your face, and will also keep noise levels to minimum,</p>', '1', '1', NULL, 'A', '1', NULL, '127.0.0.1', NULL, '2022-02-19 03:11:37', '2022-02-19 03:11:37'),
(25, 'P000009', 'Men\'s Helmet', 'mens-helmet-1647270774', 12, 9, '1500.00', 'p-1646798586622826fa98e9bistockphoto-691430036-612x612.jpg', 'thumb-1646798586622826fa98ea0istockphoto-691430036-612x612.jpg', '10.00', NULL, NULL, NULL, NULL, '1', '1', NULL, 'A', '1', NULL, '175.29.197.185', NULL, '2022-03-08 22:03:06', '2022-03-14 09:12:54'),
(26, 'P000010', '809', '809-1647336216', 12, 9, '3550.00', 'p-1647270911622f5bff01196Bolt Black Helmet.jpg', 'thumb-1647270911622f5bff011a4Bolt Black Helmet.jpg', NULL, NULL, 'red', '<p>XXL</p>', '<p>XXL</p>', '1', NULL, '1', 'A', '1', NULL, '127.0.0.1', '2022-03-15 03:25:53', '2022-03-09 00:18:22', '2022-03-15 03:25:53'),
(27, 'P000011', 'test product', 'test-product-1647336335', 2, 2, '34.00', 'p-164733633562305b8f207a82b397fb19468c0bba133e9f91a5d4982.jpg', 'thumb-164733633562305b8f207ab2b397fb19468c0bba133e9f91a5d4982.jpg', NULL, NULL, NULL, '<p>assdfsad</p>', '<p>asdfd</p>', '1', '0', '1', 'A', '1', NULL, '127.0.0.1', '2022-03-16 04:09:12', '2022-03-15 03:25:35', '2022-03-16 04:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `otherImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `otherImage`, `created_at`, `updated_at`) VALUES
(42, 17, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.11 PM_6210afad2a1ab.jpeg', '2022-02-19 02:51:57', '2022-02-19 02:51:57'),
(43, 17, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.12 PM (1)_6210afad2a4ec.jpeg', '2022-02-19 02:51:57', '2022-02-19 02:51:57'),
(44, 17, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.12 PM_6210afad2a682.jpeg', '2022-02-19 02:51:57', '2022-02-19 02:51:57'),
(45, 17, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.15 PM_6210afad2a7fe.jpeg', '2022-02-19 02:51:57', '2022-02-19 02:51:57'),
(46, 18, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.09 PM_6210b058d85ee.jpeg', '2022-02-19 02:54:48', '2022-02-19 02:54:48'),
(47, 18, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.10 PM_6210b058d88fb.jpeg', '2022-02-19 02:54:49', '2022-02-19 02:54:49'),
(48, 18, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.11 PM_6210b058d8a87.jpeg', '2022-02-19 02:54:49', '2022-02-19 02:54:49'),
(49, 19, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.27.28 PM_6210b0bc71cee.jpeg', '2022-02-19 02:56:28', '2022-02-19 02:56:28'),
(50, 19, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.27.27 PM (1)_6210b0bc71f80.jpeg', '2022-02-19 02:56:28', '2022-02-19 02:56:28'),
(51, 19, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.27.27 PM_6210b0bc72125.jpeg', '2022-02-19 02:56:28', '2022-02-19 02:56:28'),
(52, 19, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.27.26 PM_6210b0bc7239a.jpeg', '2022-02-19 02:56:28', '2022-02-19 02:56:28'),
(53, 20, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.23.08 PM (2)_6210b194b6763.jpeg', '2022-02-19 03:00:04', '2022-02-19 03:00:04'),
(54, 20, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.23.08 PM (1)_6210b194b6aaa.jpeg', '2022-02-19 03:00:04', '2022-02-19 03:00:04'),
(55, 20, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.23.08 PM_6210b194b6c52.jpeg', '2022-02-19 03:00:04', '2022-02-19 03:00:04'),
(56, 21, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.14 PM (1)_6210b1d815d1b.jpeg', '2022-02-19 03:01:12', '2022-02-19 03:01:12'),
(57, 21, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.14 PM_6210b1d815fab.jpeg', '2022-02-19 03:01:12', '2022-02-19 03:01:12'),
(58, 21, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.15 PM_6210b1d81614c.jpeg', '2022-02-19 03:01:12', '2022-02-19 03:01:12'),
(59, 22, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.23.27 PM_6210b26a44243.jpeg', '2022-02-19 03:03:38', '2022-02-19 03:03:38'),
(60, 22, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.23.28 PM_6210b26a445bd.jpeg', '2022-02-19 03:03:38', '2022-02-19 03:03:38'),
(61, 23, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.11 PM_6210b331d66a3.jpeg', '2022-02-19 03:06:57', '2022-02-19 03:06:57'),
(62, 23, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.12 PM (1)_6210b331d6bbb.jpeg', '2022-02-19 03:06:57', '2022-02-19 03:06:57'),
(63, 23, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.12 PM_6210b331d6d54.jpeg', '2022-02-19 03:06:58', '2022-02-19 03:06:58'),
(64, 24, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.09 PM_6210b44997d6f.jpeg', '2022-02-19 03:11:37', '2022-02-19 03:11:37'),
(65, 24, 'uploads/otherImage/WhatsApp Image 2022-02-17 at 4.26.10 PM_6210b44998070.jpeg', '2022-02-19 03:11:37', '2022-02-19 03:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `short_details`, `details`, `image`, `status`, `save_by`, `update_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Free Service', '<p>company_name</p>', '<p>company_name</p>', 'uploads/service/banner_static1_61791fa61af74.jpg', 'a', '1', NULL, '127.0.0.1', '2021-10-27 03:47:15', '2021-10-27 03:45:10', '2021-10-27 03:47:15'),
(2, 'FREE SHIPPING', '<p>&nbsp;e-commerce template with endless possibilities.</p>', '<p>&nbsp;e-commerce template with endless possibilities.Amadea Shop is a very slick and clean e-commerce template with endless possibilities.Amadea Shop is a very slick and clean e-commerce template with endless possibilities.</p>', 'uploads/service/1924454_617f77a9caeac.png', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-27 03:47:07', '2022-02-19 03:37:07'),
(3, 'FAST DELIVERY', '<p>&nbsp;e-commerce template with endless possibilities.</p>', '<p>e-commerce template with endless possibilities.Amadea Shop is a very slick and clean e-commerce template with endless possibilities.</p>', 'uploads/service/3632552_617f75b2915c1.png', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-31 23:05:54', '2022-02-19 03:36:54'),
(4, 'CUSTOMERS SUPPORT', '<p>slick and clean e-commerce template with endless possibilities.</p>', '<p>clean e-commerce template with endless possibilities.Win24online s a very slick and clean e-commerce template with endless possibilities.</p>', 'uploads/service/1835948_617f7653f1445.png', 'a', '1', NULL, '127.0.0.1', NULL, '2021-10-31 23:08:35', '2022-02-19 03:36:39'),
(5, 'fff', '<p>fff</p>', '<p>ff</p>', 'uploads/service/banner_static1_617f78891156a.jpg', 'a', '1', NULL, '127.0.0.1', '2021-10-31 23:18:06', '2021-10-31 23:18:01', '2021-10-31 23:18:06'),
(6, 'sdfdsf', '<p>sdfdsf</p>', '<p>sdfdsf</p>', 'uploads/service/pexels-photo-9436715_617f790ee7322.jpeg', 'a', '1', NULL, '127.0.0.1', '2021-10-31 23:20:21', '2021-10-31 23:20:14', '2021-10-31 23:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'xxl', NULL, '2022-03-09 03:28:28', '2022-03-09 03:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `name`, `phone`, `email`, `deleted_at`, `created_at`, `updated_at`, `ip_address`) VALUES
(1, NULL, NULL, 'sazzzat@g.c', NULL, '2021-10-30 23:30:05', '2021-10-30 23:30:05', '127.0.0.1'),
(2, NULL, NULL, 'sumonnalita@gmail.com', NULL, '2021-11-13 13:28:27', '2021-11-13 13:28:27', '37.111.206.182'),
(3, NULL, NULL, 'rafiqbtv30@gmail.com', NULL, '2021-12-03 12:17:09', '2021-12-03 12:17:09', '37.111.219.64'),
(4, NULL, NULL, 'isratswarna33669@gamil.com', NULL, '2021-12-05 11:45:02', '2021-12-05 11:45:02', '103.122.251.207'),
(5, NULL, NULL, 'bassmessi401@gmail.com', NULL, '2021-12-16 15:10:04', '2021-12-16 15:10:04', '116.58.203.19'),
(6, NULL, NULL, 'mdshobuj77754@gmail.com', NULL, '2022-01-12 10:05:04', '2022-01-12 10:05:04', '182.48.72.207'),
(7, NULL, NULL, 'riponkhan5971@gmail.com', NULL, '2022-01-15 13:38:40', '2022-01-15 13:38:40', '202.134.14.135'),
(8, NULL, NULL, 'mdforhadislam000111@gmail.com', NULL, '2022-01-16 17:26:06', '2022-01-16 17:26:06', '37.111.231.9'),
(9, NULL, NULL, 'mdforhadislam000111@gmail.com', NULL, '2022-01-16 17:26:07', '2022-01-16 17:26:07', '37.111.231.9'),
(10, NULL, NULL, 'sobyemdsoboy@gmail.com', NULL, '2022-01-17 07:14:35', '2022-01-17 07:14:35', '103.67.159.14'),
(11, NULL, NULL, 'jamil37669@gamil.com', NULL, '2022-01-17 12:55:27', '2022-01-17 12:55:27', '42.0.7.253'),
(12, NULL, NULL, 'jahedatwary225@gmail.com', NULL, '2022-01-17 20:14:09', '2022-01-17 20:14:09', '103.156.177.106'),
(13, NULL, NULL, 'mdmostafa123@gmail.com', NULL, '2022-01-18 11:14:57', '2022-01-18 11:14:57', '144.48.151.202'),
(14, NULL, NULL, 'nasrinalmamun286@gmail.com', NULL, '2022-01-18 11:43:11', '2022-01-18 11:43:11', '51.79.241.193'),
(15, NULL, NULL, 'jakirhossainbsl92@gamil.com', NULL, '2022-01-18 13:14:38', '2022-01-18 13:14:38', '110.76.129.194'),
(16, NULL, NULL, 'baizidbaizid410@gmail.com', NULL, '2022-02-03 05:40:54', '2022-02-03 05:40:54', '37.111.221.127'),
(17, NULL, NULL, 'baizidbaizid410@gmail.com', NULL, '2022-02-03 05:41:14', '2022-02-03 05:41:14', '37.111.221.127'),
(18, NULL, NULL, 'baizidbaizid410@gmail.com', NULL, '2022-02-03 05:43:08', '2022-02-03 05:43:08', '37.111.221.127'),
(19, NULL, NULL, 'sagarhossen1810rs@gmail.com', NULL, '2022-02-08 16:12:43', '2022-02-08 16:12:43', '202.134.10.140'),
(20, NULL, NULL, 'mdnazmul61924333@gmail.com', NULL, '2022-02-11 18:07:26', '2022-02-11 18:07:26', '58.145.187.228'),
(21, NULL, NULL, 'sazzat@g.c', NULL, '2022-02-19 03:13:18', '2022-02-19 03:13:18', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `save_by` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `image`, `status`, `save_by`, `updated_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 4, 'Pith helmet', 'pith-helmet-1645260395', 'uploads/subcategory/WhatsApp Image 2022-02-17 at 4.26.10 PM_6210ae6b88454.jpeg', 'a', '1', '1', '127.0.0.1', NULL, '2021-10-26 06:11:27', '2022-02-19 02:46:35'),
(2, 2, 'Combat helmets‎', 'combat-helmets-1645260368', 'uploads/subcategory/WhatsApp Image 2022-02-17 at 4.26.15 PM_6210ae507cb2a.jpeg', 'a', '1', '1', '127.0.0.1', NULL, '2021-10-26 06:11:45', '2022-02-19 02:46:08'),
(3, 9, 'Ancient helmets‎', 'ancient-helmets-1645260257', 'uploads/subcategory/WhatsApp Image 2022-02-17 at 4.26.15 PM_6210ade1b4c8c.jpeg', 'a', '1', '1', '127.0.0.1', NULL, '2021-10-26 06:12:29', '2022-02-19 02:44:17'),
(4, 9, 'By Cycle Helmet', 'by-cycle-helmet-1645260211', 'uploads/subcategory/WhatsApp Image 2022-02-17 at 4.26.14 PM_6210adb39cd79.jpeg', 'a', '1', '1', '127.0.0.1', NULL, '2021-10-26 06:12:44', '2022-02-19 02:43:31'),
(5, 8, 'By Cycle Helmet', 'by-cycle-helmet-1645260190', 'uploads/subcategory/WhatsApp Image 2022-02-17 at 4.26.12 PM_6210ad9e43716.jpeg', 'a', '1', '1', '127.0.0.1', NULL, '2021-10-26 06:13:11', '2022-02-19 02:43:10'),
(6, 9, 'Face Helmet', 'face-helmet-1645260157', 'uploads/subcategory/WhatsApp Image 2022-02-17 at 4.23.26 PM_6210ad7dac414.jpeg', 'a', '1', '1', '127.0.0.1', NULL, '2021-10-26 06:13:26', '2022-02-19 02:42:37'),
(7, 9, 'Byke Helmet', 'byke-helmet-1645260133', 'uploads/subcategory/WhatsApp Image 2022-02-17 at 4.26.12 PM_6210ad651d456.jpeg', 'a', '1', '1', '127.0.0.1', NULL, '2021-10-26 06:15:10', '2022-02-19 02:42:13'),
(8, 2, 'Hjc Helmet', 'hjc-helmet-1645260104', 'uploads/subcategory/88ffb2c5-3e2e-4f0e-9080-6a3633a7ac3c_6210ad48dc3c1.jfif', 'a', '1', '1', '127.0.0.1', NULL, '2021-10-26 06:18:33', '2022-02-19 02:41:44'),
(9, 12, 'Sub accessories', 'sub-accessories-1646798014', 'uploads/subcategory/istockphoto-691430036-612x612_622824be47d71.jpg', 'a', '1', NULL, '103.154.158.46', NULL, '2022-03-08 21:53:34', '2022-03-08 21:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `facebook`, `twitter`, `linkedin`, `instagram`, `image`, `status`, `save_by`, `updated_by`, `ip_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Md. Ibrahim Mia', 'Assistant General Manager (AGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/IMG_20211112_185542_618e6544dd597.jpg', '1', '1', '1', '103.112.166.147', '2022-02-06 12:55:23', '2021-11-02 03:46:53', '2022-02-06 12:55:23'),
(2, 'Md. Amirul Islam Bipul', 'Deputy General Manager (DGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/FB_IMG_1636721472517_618e641f126c6.jpg', '1', '1', '1', '103.112.166.144', '2022-02-19 03:27:29', '2021-11-02 03:47:04', '2022-02-19 03:27:29'),
(3, 'Md. Ismail Hossain', 'Deputy General Manager (DGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/IMG_20211112_185220_618e63d867837.jpg', '1', '1', '1', '103.112.166.144', '2022-02-19 03:27:34', '2021-11-02 04:39:39', '2022-02-19 03:27:34'),
(4, 'Mosharaf Bin A. Kahar', 'Deputy General  Manager (DGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/FB_IMG_1636720512558_618e620eeaa63.jpg', '1', '1', '1', '103.112.166.147', '2022-02-19 03:27:39', '2021-11-02 04:40:01', '2022-02-19 03:27:39'),
(5, 'Md. Rofikul Alam', 'General Manager (GM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/FB_IMG_1636720345486_618e61d06a82c.jpg', '1', '1', '1', '103.112.166.147', '2022-02-19 03:27:43', '2021-11-02 04:40:21', '2022-02-19 03:27:43'),
(6, 'Md. Jahangir Alam', 'Deputy General Manager (DGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/IMG_20211112_182659_618e5dbfb2567.jpg', '1', '1', '1', '103.112.166.147', '2022-02-19 03:27:47', '2021-11-02 04:41:01', '2022-02-19 03:27:47'),
(7, 'Md. Majedur Rahman', 'General Manager (GM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/f6e474a0-136b-4574-8693-0d903bb5291a-removebg-preview_61b0ac8ee0b1b.png', '1', '1', '1', '103.112.166.144', '2022-02-19 03:27:51', '2021-11-12 12:41:15', '2022-02-19 03:27:51'),
(8, 'Md. Rohul Amin', 'Deputy General Manager (DGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/IMG_20211205_020833_61abcaf4f2785.jpg', '1', '1', '1', '103.112.166.144', '2022-02-19 03:27:56', '2021-12-05 01:09:24', '2022-02-19 03:27:56'),
(9, 'Mst. Sanjida Akter', 'Assistant General Manager (AGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/SAVE_20211126_021239_61abcb4e2c0c1.jpg', '1', '1', '1', '103.112.166.147', '2022-02-06 12:58:08', '2021-12-05 01:10:54', '2022-02-06 12:58:08'),
(10, 'Md. abdul Hamed Salim', 'Deputy General Manager (DGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/WhatsApp Image 2021-12-24 at 10.58.27 PM_61c5fdbe5edf4.jpeg', '1', '1', '1', '103.112.166.144', '2022-02-19 03:28:00', '2021-12-24 22:05:02', '2022-02-19 03:28:00'),
(11, 'Md. Oli Ahad', 'Assistant General Manager (AGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/132997179_858115238286373_4196410888585481788_n_61c5fdef2cb7b.png', '1', '1', '1', '103.112.166.147', '2022-02-06 12:57:47', '2021-12-24 22:05:51', '2022-02-06 12:57:47'),
(12, 'Rezaul Karim Rubel', 'General Manager (GM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/151939563_2254071968058172_7056088824491237418_n-removebg-preview_61d5626376ba7.png', '1', '1', '1', '103.112.166.144', '2022-02-19 03:28:04', '2022-01-05 14:18:27', '2022-02-19 03:28:04'),
(13, 'Mst. Maksuda Rina', 'Assistant General Manager (AGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/WhatsApp Image 2022-01-05 at 3.34.49 PM_61d56b99da939.jpeg', '1', '1', NULL, '103.112.166.147', '2022-02-06 12:57:22', '2022-01-05 14:57:45', '2022-02-06 12:57:22'),
(14, 'Mst. Khalada Yasmin', 'Assistant General Manager (AGM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/5106_IMG_20211217_155600_61d56d2eb0aa9.jpg', '1', '1', NULL, '103.112.166.147', '2022-02-06 12:57:12', '2022-01-05 15:04:30', '2022-02-06 12:57:12'),
(15, 'Md. Masudul Karim', 'General Manager (GM)', 'https://www.facebook.com/win24bd', 'https://twitter.com/MDWIN24', 'https://www.linkedin.com/in/sumon-ahammad-b08362218', 'https://www.instagram.com/win24_official', 'uploads/team/WhatsApp Image 2022-01-05 at 4.15.28 PM_61d57041a061d.jpeg', '1', '1', '1', '103.112.166.144', '2022-02-19 03:28:09', '2022-01-05 15:17:37', '2022-02-19 03:28:09'),
(16, 'MD SAZZAT HOSSAIN', 'Programmer Linkup Technology', 'https://www.Facebook.com/', NULL, NULL, NULL, 'uploads/team/09front_5a83d73e0988d._beetel-mens-formal-office-wear-shirt-grey-by-corporate-club-code-bettel-02-_6210b969f1bc6.jpg', '1', '1', NULL, '127.0.0.1', '2022-03-14 07:49:54', '2022-02-19 03:33:29', '2022-03-14 07:49:54'),
(17, 'MD Azharul Islam Masud', 'Programmer Linkup Technology', NULL, NULL, NULL, NULL, 'uploads/team/depositphotos_44309759-stock-photo-young-indian-man-outdoors_6210b99a7c369.jpg', '1', '1', NULL, '127.0.0.1', '2022-03-14 07:49:50', '2022-02-19 03:34:18', '2022-03-14 07:49:50'),
(18, 'MD Arif Hossain', 'Programmer Linkup Technology', NULL, NULL, NULL, NULL, 'uploads/team/cb782bd9da27e7b6dcd7974d2bb3a42e_6210b9a77728a.jpg', '1', '1', NULL, '127.0.0.1', '2022-03-14 07:49:46', '2022-02-19 03:34:31', '2022-03-14 07:49:46'),
(19, 'MD Jakirul Islam', 'Programmer Linkup Technology', 'https://www.Facebook.com/', NULL, NULL, NULL, 'uploads/team/men-corporate-shirt-500x500_6210b9b9692e2.jpg', '1', '1', NULL, '127.0.0.1', '2022-03-14 07:49:40', '2022-02-19 03:34:49', '2022-03-14 07:49:40'),
(20, 'MD Mustafizur Rahman', 'Programmer Linkup Technology', NULL, NULL, NULL, NULL, 'uploads/team/Zakir-Khan-Ny_6210b9db09dc1.jpg', '1', '1', NULL, '127.0.0.1', '2022-03-14 07:49:35', '2022-02-19 03:35:23', '2022-03-14 07:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thum_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `image`, `thum_image`, `role`, `password`, `status`, `save_by`, `updated_by`, `ip_address`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'MD Sazzat Hossain', 'admin', 'admin@gmail.com', NULL, 'uploads/user/images (19)_61791bedaa289.jpg', NULL, '1', '$2y$10$3IERJrbuKdCxHS0volWcQ.HDYzMamS1X0QWkixMq60ROX7Ek0YH8m', '1', NULL, '1', '127.0.0.1', NULL, NULL, '2021-10-26 05:29:22', '2021-12-02 03:25:39'),
(2, 'Md. shamim Miah', 'admin2', 'admin2@gmail.com', NULL, 'uploads/user/images (18)_61791bfb4ceb2.jpg', NULL, '1', '$2y$10$CgufDwYLRyvZWYtG5B15r.0cO6Hz.02e1z6GVNNW0RnQ//QBkOdua', '1', NULL, '1', '127.0.0.1', NULL, NULL, '2021-10-26 05:29:22', '2021-10-27 03:29:31'),
(3, 'sazzat hossain', 'admin33', 'admin@g.c', NULL, 'uploads/user/aboutus_banner_61824d2cd559d.jpg', NULL, '3', '$2y$10$0MHOx0McaMu0R1P0zyBNf.fS89xOWxFqMhb01TBR9R9F0DGNvoAGy', '1', '1', NULL, '127.0.0.1', NULL, NULL, '2021-11-03 02:49:48', '2021-11-03 02:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `video_galleries`
--

CREATE TABLE `video_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_galleries`
--

INSERT INTO `video_galleries` (`id`, `title`, `youtube_link`, `save_by`, `update_by`, `deleted_at`, `created_at`, `updated_at`, `ip_address`) VALUES
(1, 'asdfsadf', 'https://www.youtube.com/embed/wTQ2N2P3Cr4', '1', '1', NULL, '2022-03-15 02:58:25', '2022-03-15 23:58:10', '127.0.0.1'),
(2, 'hellow', 'https://www.youtube.com/embed/okbByPWS1Xc', '1', '1', NULL, '2022-03-15 03:26:23', '2022-03-15 23:52:46', '127.0.0.1'),
(3, 'tyty', 'https://www.youtube.com/embed/o9NckLXvYT8', '1', '1', NULL, '2022-03-15 23:58:42', '2022-03-16 00:00:25', '127.0.0.1'),
(4, 'trtret', 'https://www.youtube.com/embed/w9rMUlcM2X8', '1', NULL, NULL, '2022-03-16 00:01:27', '2022-03-16 00:01:27', '127.0.0.1'),
(5, 'gffhfh', 'https://www.youtube.com/embed/87p6-5hWHJQ', '1', '1', NULL, '2022-03-16 00:02:06', '2022-03-16 00:03:44', '127.0.0.1'),
(6, 'gfhgdfdf', 'https://www.youtube.com/embed/nV7BKKUgFjU', '1', NULL, NULL, '2022-03-16 00:04:57', '2022-03-16 00:04:57', '127.0.0.1'),
(7, 'sdfsdfsdf', 'https://www.youtube.com/embed/KU9K80IAl9A', '1', NULL, NULL, '2022-03-16 00:05:43', '2022-03-16 00:05:43', '127.0.0.1'),
(8, 'dfdd', 'https://www.youtube.com/embed/bstZOOtKUHQ', '1', '1', NULL, '2022-03-16 00:06:39', '2022-03-16 00:12:29', '127.0.0.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
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
  ADD KEY `permissions_user_id_foreign` (`user_id`),
  ADD KEY `permissions_page_id_foreign` (`page_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video_galleries`
--
ALTER TABLE `video_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
