-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2020 at 05:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `ban_id` bigint(20) UNSIGNED NOT NULL,
  `ban_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ban_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_button` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_status` int(11) NOT NULL DEFAULT 1,
  `ban_slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`ban_id`, `ban_title`, `ban_subtitle`, `ban_button`, `ban_url`, `ban_image`, `ban_status`, `ban_slug`, `created_at`, `updated_at`) VALUES
(1, 'New Collections', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'View More', '#', 'banner_1_1602685571.jpg', 1, '1440-new-collections', '2020-10-14 14:26:11', '2020-10-14 14:26:11'),
(2, 'Women <span class=\"highlight\">Fashion</span>', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit', 'Read', '#', 'banner_2_1602685631.jpg', 1, '8888-women-span-classhighlightfashionspan', '2020-10-14 14:27:11', '2020-10-14 14:27:11'),
(3, 'Desert Riding Turning So much Flowery', 'This is the best website', 'click me', 'https://learnhunter.live/', NULL, 1, '3414-desert-riding-turning-so-much-flowery', '2020-10-20 15:27:14', NULL),
(4, 'Desert Riding Turning So much Flowery', 'This is the best website', 'click me', 'https://learnhunter.live/', 'banner_4_1603207650.PNG', 1, '484-desert-riding-turning-so-much-flowery', '2020-10-20 15:27:30', '2020-10-20 15:27:32'),
(5, 'Desert Riding Turning So much Flowery', 'This is the best website', 'click me', 'https://learnhunter.live/', 'banner_5_1603207724.PNG', 1, '5800-desert-riding-turning-so-much-flowery', '2020-10-20 15:28:44', '2020-10-20 15:28:44'),
(6, 'Desert Riding Turning So much Flowery', 'This is the best website', 'click me', 'https://learnhunter.live/', 'banner_6_1603207749.PNG', 1, '7713-desert-riding-turning-so-much-flowery', '2020-10-20 15:29:09', '2020-10-20 15:29:09'),
(7, 'Desert Riding Turning So much Flowery', 'This is the best website', 'click me', 'https://learnhunter.live/', 'banner_7_1603208005.PNG', 1, '5511-desert-riding-turning-so-much-flowery', '2020-10-20 15:33:24', '2020-10-20 15:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `basics`
--

CREATE TABLE `basics` (
  `basic_id` bigint(20) UNSIGNED NOT NULL,
  `basic_title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_flogo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basics`
--

INSERT INTO `basics` (`basic_id`, `basic_title`, `basic_subtitle`, `basic_details`, `basic_logo`, `basic_favicon`, `basic_flogo`, `basic_status`, `created_at`, `updated_at`) VALUES
(1, 'Flipmart', 'International Software Company', 'Very Good by Testing.', 'logo_1602684228.png', 'flogo_1601994438.jpg', 'flogo_1601994469.png', 1, '2020-10-06 14:06:14', '2020-10-14 14:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Phone', 'fa fa-phone', 'phone', 'public/uploads/category/Cat_1603642376.PNG', 0, '2020-10-25 16:12:56', '2020-10-25 17:12:12'),
(2, 'Mobile Phone', 'fa fa-phone', 'mobile-phone', 'public/uploads/category/Cat_1603642878.PNG', 1, '2020-10-25 16:21:18', '2020-11-01 14:54:09'),
(3, 'dgdfg', 'gfdgdfgdfg', 'dgdfg', NULL, 1, '2020-10-28 15:22:22', '2020-10-28 15:22:22'),
(4, 'Amazon Music', '', 'amazon-music', '', 1, '2020-11-07 15:40:08', '2020-11-07 15:40:08'),
(5, 'Echo & Alexa', '', 'echo-alexa', '', 1, '2020-11-07 15:40:09', '2020-11-07 15:40:09'),
(6, 'Fire Tablets', '', 'fire-tablets', '', 1, '2020-11-07 15:40:09', '2020-11-07 15:40:09'),
(7, 'Fire TV', '', 'fire-tv', '', 1, '2020-11-07 15:40:09', '2020-11-07 15:40:09'),
(8, 'Kindle E-readers & Books', '', 'kindle-e-readers-books', '', 1, '2020-11-07 15:40:09', '2020-11-07 15:40:09'),
(9, 'Appstore for Android', '', 'appstore-for-android', '', 1, '2020-11-07 15:40:10', '2020-11-07 15:40:10'),
(10, 'Subscribe & Save', '', 'subscribe-save', '', 1, '2020-11-07 15:40:10', '2020-11-07 15:40:10'),
(11, 'Smart Home', '', 'smart-home', '', 1, '2020-11-07 15:40:10', '2020-11-07 15:40:10'),
(12, 'Amazon Physical Stores', '', 'amazon-physical-stores', '', 1, '2020-11-07 15:40:10', '2020-11-07 15:40:10'),
(13, 'Amazon Subscription Boxes', '', 'amazon-subscription-boxes', '', 1, '2020-11-07 15:40:10', '2020-11-07 15:40:10'),
(14, 'Amazon Live', '', 'amazon-live', '', 1, '2020-11-07 15:40:10', '2020-11-07 15:40:10'),
(15, 'International Shopping', '', 'international-shopping', '', 1, '2020-11-07 15:40:10', '2020-11-07 15:40:10'),
(16, 'Pet supplies', '', 'pet-supplies', '', 1, '2020-11-07 15:40:10', '2020-11-07 15:40:10'),
(17, 'Sports and Outdoors', '', 'sports-and-outdoors', '', 1, '2020-11-07 15:40:10', '2020-11-07 15:40:10'),
(18, 'Baby', '', 'baby', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(19, 'Automotive', '', 'automotive', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(20, 'Arts & Crafts', '', 'arts-crafts', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(21, 'Beauty and personal care', '', 'beauty-and-personal-care', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(22, 'Computers', '', 'computers', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(23, 'Electronics', '', 'electronics', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(24, 'Womens Fashion', '', 'womens-fashion', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(25, 'Mens Fashion', '', 'mens-fashion', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(26, 'Girls Fashion', '', 'girls-fashion', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(27, 'Boys Fashion', '', 'boys-fashion', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(28, 'Health and Household', '', 'health-and-household', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(29, 'Home and Kitchen', '', 'home-and-kitchen', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(30, 'Industrial and Scientific', '', 'industrial-and-scientific', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(31, 'Luggage', '', 'luggage', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(32, 'Movies & Television', '', 'movies-television', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(33, 'Software', '', 'software', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(34, 'Tools & Home Improvement', '', 'tools-home-improvement', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(35, 'Toys and Games', '', 'toys-and-games', '', 1, '2020-11-07 15:40:11', '2020-11-07 15:40:11'),
(36, 'Video Games', '', 'video-games', '', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `ci_id` bigint(20) UNSIGNED NOT NULL,
  `ci_phone1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_phone2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_phone3` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_phone4` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email4` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_add1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_add2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_add3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_add4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`ci_id`, `ci_phone1`, `ci_phone2`, `ci_phone3`, `ci_phone4`, `ci_email1`, `ci_email2`, `ci_email3`, `ci_email4`, `ci_add1`, `ci_add2`, `ci_add3`, `ci_add4`, `ci_status`, `created_at`, `updated_at`) VALUES
(1, '01710726035', '+(888) 456-7890', NULL, NULL, 'uzzalbd.creative@gmail.com', NULL, NULL, NULL, 'ThemesGround, 789 Main rd, Anytown, CA 12345 USA', NULL, NULL, NULL, '1', NULL, '2020-10-14 14:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'farukhaider', '90', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_09_03_142347_create_banners_table', 2),
(5, '2020_09_29_210237_create_user_roles_table', 3),
(6, '2020_10_06_195615_create_basics_table', 4),
(7, '2020_10_07_191732_create_social_media_table', 5),
(8, '2020_10_07_193253_create_contact_information_table', 6),
(9, '2020_10_25_205529_create_categories_table', 7),
(10, '2020_10_25_210431_create_sub_categories_table', 8),
(11, '2020_10_25_210449_create_child_categories_table', 9),
(12, '2020_11_01_205755_create_products_table', 9),
(13, '2020_11_21_205042_create_coupons_table', 10),
(14, '2020_11_25_213952_create_orders_table', 11),
(15, '2020_11_25_221859_create_order_details_table', 12),
(16, '2020_12_12_223105_create_settings_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `return_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `email`, `name`, `address`, `city`, `zip`, `phone`, `amount`, `transaction_id`, `currency`, `payment_id`, `payment_type`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `order_number`, `subtotal`, `shipping`, `vat`, `total`, `status`, `return_order`, `month`, `date`, `year`, `status_code`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'card_1HrQs6C7T5M9E4iCZCXHiIOj', 'stripe', '5731', 'txn_1HrQs7C7T5M9E4iCEZDGb9yb', '5fbe86703b57f', NULL, '5641', NULL, '0', '5731.00', 'Pending', '0', 'November', '25-11-20', '2020', '293948', '2020-11-25 16:29:37', '2020-11-25 16:29:37'),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'card_1HrQt6C7T5M9E4iCzfXx5SDV', 'stripe', '5731', 'txn_1HrQt7C7T5M9E4iCXbfgGCvD', '5fbe86ae0c10f', NULL, '5641', NULL, '0', '5731.00', 'Completed', '0', 'November', '25-11-20', '2020', '445952', '2020-11-25 16:30:39', '2020-12-08 15:51:08'),
(3, 1, 'farukhaidar3@gmail.com', 'Faruk Haidar', NULL, 'Dhaka', '1207', '01949796940', '200.00', NULL, NULL, 'card_1HrQxZC7T5M9E4iCRba1xAuO', 'stripe', '200', 'txn_1HrQxaC7T5M9E4iCrhhM5DU5', '5fbe87c2f1fa3', '1684330437', '200.00', NULL, '0', '200.00', 'Cancle', '0', 'November', '25-11-20', '2020', '721542', '2020-11-25 16:35:16', '2020-12-08 15:52:19'),
(4, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc268eb41d08', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Completed', '0', NULL, NULL, NULL, NULL, NULL, '2020-12-08 15:52:41'),
(5, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc268eb41d08', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Processing', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc269724c972', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Processing', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc2697248f41', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 'farukhaidar3@gmail.com', 'Faruk Haidar', NULL, 'San Leandro', '1207', '2097370298', '1000.00', NULL, NULL, 'card_1Htwf3C7T5M9E4iCLM8f5WdY', 'stripe', '1000', 'txn_1Htwf4C7T5M9E4iCzT5IWzFg', '5fc7a9b7b3c16', '701229025', '1000.00', NULL, '0', '1000.00', '0', '0', 'December', '02-12-20', '2020', '956240', '2020-12-02 14:50:34', '2020-12-02 14:50:34'),
(9, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc7aa7cf20db', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc7acc7b45a1', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc7acc7b45a1', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc7ad2f01d59', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Processing', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc7ad2f01a25', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc7adfa44f0f', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '10', '5fc7adfa4527d', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '2200.00', '5fc7afb9abb32', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Processing', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '2200.00', '5fc7afb9b12e6', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '0.00', '5fc7b18c1611c', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Failed', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '0.00', '5fc7b18c1b294', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fcf8f68c31c4', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fcf8f68c9af4', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fcf908c7bfd6', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fcf908c9664d', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fcf922273430', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fcf922273408', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fcf9457ace74', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Processing', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fcf9457b2f97', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '0.00', '5fcf949014bc2', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Failed', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '0.00', '5fcf94901a351', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '0.00', '5fcf94bea4353', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '0.00', '5fcf94bea643a', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Failed', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fcf9505702eb', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 1, 'farukhaidar3@gmail.com', 'Faruk Haidar', NULL, 'Dhaka', '1207', '01949796940', '400.00', NULL, NULL, 'card_1Hw93zC7T5M9E4iCamWDlyIF', 'stripe', '400', 'txn_1Hw941C7T5M9E4iCZOA3yGpA', '5fcfa9e2abd3a', '831202616', '400.00', NULL, '0', '400.00', '0', '0', 'December', '08-12-20', '2020', '885128', '2020-12-08 16:29:26', '2020-12-08 16:29:26'),
(34, 1, 'farukhaidar3@gmail.com', 'Faruk Haidar', NULL, 'Dhaka', '1207', '01949796940', '400.00', NULL, NULL, 'card_1Hw95yC7T5M9E4iCBirVfRkx', 'stripe', '400', 'txn_1Hw95zC7T5M9E4iCT4SrbHky', '5fcfaa5d89779', '680978061', '400.00', NULL, '0', '400.00', '0', '0', 'December', '08-12-20', '2020', '678358', '2020-12-08 16:31:26', '2020-12-08 16:31:26'),
(35, 1, 'farukhaidar3@gmail.com', 'Faruk Haidar', NULL, 'Dhaka', '1207', '01949796940', '400.00', NULL, NULL, 'card_1Hw97NC7T5M9E4iCyPe1kjIG', 'stripe', '400', 'txn_1Hw97OC7T5M9E4iCUS2s0XSp', '5fcfaab441abd', '1939747058', '400.00', NULL, '0', '400.00', '0', '0', 'December', '08-12-20', '2020', '356056', '2020-12-08 16:32:53', '2020-12-08 16:32:53'),
(36, 1, 'farukhaidar3@gmail.com', 'Faruk Haidar', NULL, 'Dhaka', '1207', '01949796940', '200.00', NULL, NULL, 'card_1Hw9ACC7T5M9E4iCSqJiiBSb', 'stripe', '200', 'txn_1Hw9AEC7T5M9E4iCQgPbwIfL', '5fcfab636d3ad', '140748375', '200.00', NULL, '0', '200.00', '0', '0', 'December', '08-12-20', '2020', '999352', '2020-12-08 16:35:49', '2020-12-08 16:35:49'),
(37, 1, 'farukhaidar3@gmail.com', 'Faruk Haidar', NULL, 'Dhaka', '1207', '01949796940', '200.00', NULL, NULL, 'card_1Hw9CyC7T5M9E4iCPry4insh', 'stripe', '200', 'txn_1Hw9CzC7T5M9E4iCgexduy5m', '5fcfac0f55f94', '1501723827', '200.00', NULL, '0', '200.00', '0', '0', 'December', '08-12-20', '2020', '934496', '2020-12-08 16:38:40', '2020-12-08 16:38:40'),
(38, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fd0e1105ff96', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 'customer@mail.com', 'Customer Name', 'Customer Address', NULL, NULL, '8801XXXXXXXXX', '200.00', '5fd0e1105ffa6', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 'you@example.com', 'John Doe', '93 B, New Eskaton Road', NULL, NULL, '01711xxxxxx', '1200', '5fd4dd6890282', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Processing', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, 'you@example.com', 'John Doe', '93 B, New Eskaton Road', NULL, NULL, '01711xxxxxx', '1200', '5fd4dd6890f18', 'BDT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pending', '0', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Computer Tutorial', 'dfsfsd', 'sfsdfsdf', '12', '200', '2400', '2020-11-25 16:30:39', '2020-11-25 16:30:39'),
(2, 2, 13, 'Guido Tillman', 'silver', 'yjKW7SL', '1', '3331', '3331', '2020-11-25 16:30:39', '2020-11-25 16:30:39'),
(3, 3, 1, 'Computer Tutorial', 'dfsfsd', 'sfsdfsdf', '1', '200', '200', '2020-11-25 16:35:16', '2020-11-25 16:35:16'),
(4, 8, 1, 'Computer Tutorial', 'dfsfsd', 'sfsdfsdf', '5', '200', '1000', '2020-12-02 14:50:34', '2020-12-02 14:50:34'),
(5, 33, 1, 'Computer Tutorial', 'dfsfsd', 'sfsdfsdf', '2', '200', '400', '2020-12-08 16:29:26', '2020-12-08 16:29:26'),
(6, 34, 1, 'Computer Tutorial', 'dfsfsd', 'sfsdfsdf', '2', '200', '400', '2020-12-08 16:31:26', '2020-12-08 16:31:26'),
(7, 35, 1, 'Computer Tutorial', 'dfsfsd', 'sfsdfsdf', '2', '200', '400', '2020-12-08 16:32:53', '2020-12-08 16:32:53'),
(8, 36, 1, 'Computer Tutorial', 'dfsfsd', 'sfsdfsdf', '1', '200', '200', '2020-12-08 16:35:49', '2020-12-08 16:35:49'),
(9, 37, 1, 'Computer Tutorial', 'dfsfsd', 'sfsdfsdf', '1', '200', '200', '2020-12-08 16:38:40', '2020-12-08 16:38:40');

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
('uzzalbd.creative@gmail.com', '$2y$10$qeI4nhC0logYOTI.1Om3QenKNJOlyXRLUF2InDG0r7qsum8Btq8Va', '2020-12-18 15:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `buyone_getone` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `code`, `slug`, `qty`, `details`, `color`, `size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `buyone_getone`, `image_one`, `image_two`, `image_three`, `status`, `stock`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Computer Tutorial', 'UTXcg', 'computer-tutorial', '4', 'fsdfsd\r\nfsd\r\nfsd\r\nfs\r\nf', 'dfsfsd,fsdf,sf', 'sfsdfsdf,dfsd,f', '240', '200', 'https://www.konga.com/product/computer-desk-with-single-drawer-key-board-casing-cpu-and-ups-3984944', 1, 1, NULL, 1, NULL, NULL, NULL, 'public/uploads/product/1682446624384246.png', 'public/uploads/product/1682178664013462.jpg', 'public/uploads/product/1682178664063326.jpg', 1, 'Available', '2020-11-01 17:09:47', '2020-11-04 16:08:56'),
(2, 3, 87, 'Owen Willms', 'B078GNCWR9', 'owen-willms', '34', 'Soluta animi ratione blanditiis. Corporis fugiat ab voluptas qui iure. Sit maxime ut delectus officiis qui.', 'purple', '0wCa2SL', '4392', '3999', 'http://www.wisozk.com/corporis-sed-sit-perspiciatis', 0, 1, 0, 1, 1, 1, 0, 'public/uploads/product/1.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:17', '2020-11-07 15:42:17'),
(3, 5, 56, 'Aaron Kulas IV', 'B078MPY2JP', 'aaron-kulas-iv', '37', 'Dolores quia incidunt occaecati aut quam laboriosam. Minus aut aut deserunt dolorem perspiciatis vel deserunt. Expedita sed eum non ea ullam quod voluptas.', 'olive', 'eqpJGSL', '9080', '2528', 'http://bogan.biz/ea-reprehenderit-aut-accusamus-voluptates-minus-quia-itaque', 0, 0, 1, 0, 0, 0, 0, 'public/uploads/product/2.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:17', '2020-11-07 15:42:17'),
(4, 15, 70, 'Dorcas McKenzie', 'B078N35NNN', 'dorcas-mckenzie', '30', 'Molestias repellendus eaque aut facilis et sequi. Nihil et excepturi consequatur odio quia sed aut a.', 'teal', 'EkjsnSL', '278', '4002', 'http://www.lockman.com/', 1, 0, 0, 1, 1, 0, 0, 'public/uploads/product/3.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:17', '2020-11-07 15:42:17'),
(5, 7, 70, 'Art Schumm', 'B078SQK9XK', 'art-schumm', '22', 'Impedit at labore in adipisci id doloribus id. Harum aliquam modi fuga eius odio. Culpa qui quod autem id. Quis error eos voluptatem illum pariatur praesentium.', 'black', 'o5xreSL', '7073', '1297', 'http://abshire.com/omnis-eligendi-alias-ipsam-expedita-doloribus-soluta', 1, 0, 0, 1, 0, 0, 0, 'public/uploads/product/4.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:17', '2020-11-07 15:42:17'),
(6, 23, 62, 'Prof. Chyna Crooks', 'B078XRF6GV', 'prof-chyna-crooks', '36', 'Nesciunt aut nihil veritatis. Deleniti impedit sit ratione impedit facere sit. Omnis enim qui atque consequuntur quo eveniet quo.', 'silver', 'zJsxTSL', '3135', '3853', 'http://www.zboncak.com/deserunt-eaque-suscipit-consequatur-earum-qui-ipsa-sint', 1, 0, 1, 0, 1, 0, 1, 'public/uploads/product/5.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:18', '2020-11-07 15:42:18'),
(7, 21, 70, 'Prof. Kaylin Bahringer', 'B078YXYSJQ', 'prof-kaylin-bahringer', '38', 'Saepe consequatur ut non omnis. Rerum ab quia officiis. Commodi sed rerum labore. Ut ut eligendi sit ex voluptatem quo omnis.', 'lime', '1GkvYSL', '7314', '459', 'http://cartwright.net/perspiciatis-recusandae-totam-numquam-aut-velit-eum.html', 1, 0, 1, 0, 1, 1, 0, 'public/uploads/product/6.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:18', '2020-11-07 15:42:18'),
(8, 25, 82, 'Dr. Dario Schneider', 'B0791H17YW', 'dr-dario-schneider', '42', 'Sunt porro ad rerum quaerat maxime. Perspiciatis fuga esse quia voluptas iste magni aperiam. Incidunt maxime qui non illum reprehenderit voluptate.', 'teal', '6DNSdSL', '8837', '4803', 'http://www.ebert.com/iusto-quae-et-sit-assumenda-quidem-est-vero', 0, 1, 1, 1, 0, 1, 0, 'public/uploads/product/7.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:18', '2020-11-07 15:42:18'),
(9, 9, 31, 'Camryn Berge', 'B079226K35', 'camryn-berge', '38', 'Consequatur iusto voluptate aperiam sint quis illo ut sed. Unde assumenda quis dolor asperiores adipisci. Doloribus cum provident omnis ea ipsam nihil iusto. Omnis voluptas voluptates ea.', 'purple', 'GoVS9SL', '4992', '2668', 'http://paucek.com/velit-voluptatibus-nesciunt-vero-omnis-magni', 1, 0, 0, 0, 0, 1, 0, 'public/uploads/product/8.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:19', '2020-11-07 15:42:19'),
(10, 11, 64, 'Ms. Simone Mayert PhD', 'B079H46Y7Z', 'ms-simone-mayert-phd', '34', 'Dignissimos aut accusamus eos ipsam. Incidunt beatae et maxime est nulla molestiae ut. Et eaque culpa voluptas consectetur amet eum voluptatibus.', 'navy', 'ykY8PSL', '1123', '1272', 'https://bernhard.com/quas-dolorem-sed-accusamus-inventore-est-commodi-delectus.html', 1, 0, 1, 1, 1, 0, 1, 'public/uploads/product/9.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:19', '2020-11-07 15:42:19'),
(11, 11, 59, 'Prof. Reyes Daugherty', 'B079KB8L5K', 'prof-reyes-daugherty', '26', 'Aliquam aliquid dolores saepe et nam. Numquam quidem non voluptatibus consequuntur.', 'purple', 'rrzxgSL', '761', '914', 'http://blick.info/rem-possimus-et-odio-aut-ratione.html', 0, 0, 0, 0, 0, 1, 0, 'public/uploads/product/10.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:19', '2020-11-07 15:42:19'),
(12, 14, 65, 'Ethan Purdy III', 'B079KVKNF7', 'ethan-purdy-iii', '38', 'Totam magni dolor numquam similique eum deserunt. Rerum minus id et velit et non. Sapiente doloremque aut dolore consectetur dolorem ut voluptatum.', 'green', 'M31W2SL', '1552', '1402', 'http://white.com/nostrum-et-dolorem-saepe-tenetur-quo-quo', 1, 0, 0, 0, 0, 1, 0, 'public/uploads/product/11.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:19', '2020-11-07 15:42:19'),
(13, 19, 44, 'Guido Tillman', 'B079M32BXX', 'guido-tillman', '32', 'Deserunt ullam illo culpa. Autem nesciunt repellendus sed qui quidem provident omnis perferendis. Laborum aut doloremque ut aut et ut qui. Nulla voluptatem perferendis consequuntur minus blanditiis qui vero.', 'silver', 'yjKW7SL', '1226', '3331', 'https://armstrong.net/et-quisquam-et-explicabo-laudantium-error-voluptatum-tempora-nisi.html', 0, 1, 1, 1, 0, 1, 0, 'public/uploads/product/12.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:19', '2020-11-07 15:42:19'),
(14, 25, 28, 'Prof. Lily Kuphal I', 'B07BFRWH1L', 'prof-lily-kuphal-i', '21', 'Sint culpa voluptatum accusantium. Earum saepe incidunt rerum. Non labore autem sit veritatis totam ullam mollitia.', 'lime', 'MrmfySL', '6835', '448', 'https://www.feest.net/animi-unde-nemo-laudantium-excepturi-laudantium-voluptates', 0, 0, 1, 1, 0, 1, 0, 'public/uploads/product/13.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:19', '2020-11-07 15:42:19'),
(15, 3, 79, 'Marge Monahan', 'B07BGGYYPX', 'marge-monahan', '33', 'Nemo magni doloremque et repellat accusantium. Corporis tenetur temporibus iusto earum incidunt cumque. Assumenda porro tenetur eos nobis modi beatae non. Sint ut eum dicta incidunt voluptas.', 'blue', 'QiLJ9SL', '9268', '1364', 'http://www.schoen.biz/atque-fugiat-autem-cum-corrupti-qui', 1, 1, 1, 1, 1, 1, 1, 'public/uploads/product/14.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:20', '2020-11-07 15:42:20'),
(16, 12, 64, 'Georgette Hilpert', 'B07BN8X5L9', 'georgette-hilpert', '23', 'Repudiandae qui in est consequatur vel. Harum hic iusto consequatur nihil similique impedit saepe. Earum consequatur sed inventore qui. Molestias voluptates voluptates rem totam debitis. Qui nesciunt assumenda id qui assumenda libero rem nostrum.', 'black', 'bFBNrSL', '1349', '4785', 'http://www.kihn.com/enim-culpa-illum-eligendi-dignissimos-non-eaque-ratione-dolor', 0, 1, 0, 0, 1, 0, 0, 'public/uploads/product/15.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:20', '2020-11-07 15:42:20'),
(17, 9, 28, 'Tyrique D\'Amore IV', 'B07BQDHCT7', 'tyrique-damore-iv', '40', 'Rerum quibusdam repudiandae ut facere eaque quasi aperiam. Laboriosam libero eius dignissimos recusandae. Doloribus sed eius ullam. Animi natus aliquid fuga ea quasi dolor.', 'lime', 'MGRHFSL', '4082', '4444', 'http://www.farrell.biz/corrupti-modi-ducimus-et-inventore-ut-ut-alias.html', 0, 0, 0, 1, 0, 0, 1, 'public/uploads/product/16.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:20', '2020-11-07 15:42:20'),
(18, 6, 21, 'Lowell Koch', 'B07BWDBB7L', 'lowell-koch', '43', 'Accusamus rerum consequuntur ab deleniti. Rerum eligendi sed maxime. Quo mollitia sunt modi eos.', 'blue', 'zXDpWSL', '1708', '4449', 'http://www.batz.info/error-consequatur-et-corrupti-aut-iure', 1, 1, 0, 1, 1, 0, 1, 'public/uploads/product/17.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:20', '2020-11-07 15:42:20'),
(19, 15, 84, 'Kattie Haley', 'B07BWFPL9W', 'kattie-haley', '48', 'Reiciendis libero tempora repellendus soluta aliquid aspernatur. Delectus odit distinctio est aliquam est pariatur dignissimos. Nihil voluptatem quos dicta suscipit ut sunt nam.', 'olive', 'uqQy2SL', '5071', '2137', 'https://shields.com/voluptatibus-magnam-nobis-atque-nesciunt-nihil-at-sunt.html', 0, 0, 0, 1, 0, 0, 0, 'public/uploads/product/18.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:20', '2020-11-07 15:42:20'),
(20, 15, 51, 'Miss Lia Emmerich I', 'B07BZQ7X84', 'miss-lia-emmerich-i', '28', 'Sapiente sint animi aut quos omnis asperiores ab. Blanditiis enim accusamus a fuga harum aperiam. Odit tenetur ratione ad voluptatem dolores. Sit aut vitae culpa voluptatem nihil aut consequatur.', 'lime', 'K20WHSL', '9975', '1068', 'http://brekke.com/voluptas-ut-quidem-enim-reprehenderit-non-eos-accusantium', 0, 1, 1, 1, 1, 0, 1, 'public/uploads/product/19.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:20', '2020-11-07 15:42:20'),
(21, 23, 44, 'Lilyan Greenfelder', 'B07C16MKYH', 'lilyan-greenfelder', '20', 'Culpa iure delectus aliquam sunt. Eos dolores nemo vel eveniet. Eaque hic beatae dignissimos cum.', 'purple', 'fESM4SL', '6494', '503', 'http://gislason.com/esse-sed-aliquid-cum', 1, 0, 1, 0, 1, 0, 1, 'public/uploads/product/20.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:20', '2020-11-07 15:42:20'),
(22, 18, 68, 'Carolanne Harris', 'B07C1H3MC6', 'carolanne-harris', '42', 'Mollitia quo neque libero pariatur nesciunt. Cupiditate ut alias asperiores omnis dolorem maxime. Omnis suscipit omnis aut dolor voluptas. Odio odio ea voluptatem minima amet qui facere. Modi consequatur quo eos et eum quis.', 'navy', 'ATcm3SL', '936', '3037', 'https://labadie.info/consequatur-est-molestiae-hic-inventore-laboriosam-dolorum.html', 0, 0, 1, 0, 1, 0, 1, 'public/uploads/product/21.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:20', '2020-11-07 15:42:20'),
(23, 16, 65, 'Kelli Wintheiser', 'B07C25TVVB', 'kelli-wintheiser', '49', 'Aperiam laboriosam vel corporis exercitationem. Amet est minus explicabo architecto. Laudantium numquam odio quos eos ab tempore. Quia amet incidunt harum libero.', 'aqua', 'AHxz8SL', '8131', '1207', 'http://lehner.com/voluptatem-provident-accusamus-tempora-fugit-iure-explicabo', 1, 1, 1, 0, 0, 1, 1, 'public/uploads/product/22.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:21', '2020-11-07 15:42:21'),
(24, 20, 31, 'Ms. Paula McDermott', 'B07C2S9CWW', 'ms-paula-mcdermott', '31', 'Repellendus repellendus rerum autem repellat perferendis animi mollitia. Sit aliquid aut culpa recusandae nam. Sequi cumque ipsam qui et ab.', 'white', 'AEqffSL', '4755', '2603', 'http://lind.biz/labore-nobis-fugiat-sequi-dolorem-praesentium', 0, 0, 1, 1, 0, 1, 0, 'public/uploads/product/23.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:21', '2020-11-07 15:42:21'),
(25, 2, 12, 'Matteo Reichert', 'B07C35RCZ1', 'matteo-reichert', '34', 'Officiis neque cupiditate aut provident magni non. Quam cupiditate ut sit aspernatur blanditiis voluptatem. Earum et aliquam laborum et impedit iste labore. Porro unde a vitae sit.', 'white', '1UxzcSL', '2366', '1788', 'http://zemlak.com/nisi-aliquid-explicabo-id-unde-consequatur-autem.html', 1, 0, 0, 0, 1, 0, 1, 'public/uploads/product/24.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:21', '2020-11-07 15:42:21'),
(26, 6, 67, 'Ms. Kassandra Dickens', 'B07C6F95KZ', 'ms-kassandra-dickens', '24', 'Tenetur rerum culpa est eius nesciunt. Voluptatibus asperiores cupiditate quaerat accusamus voluptas minus. Et tenetur laboriosam consequatur aut illum. Aliquid quis rerum id.', 'green', 'RHCYRSL', '9402', '3524', 'http://www.mann.com/expedita-aut-voluptatem-quia-ullam-voluptatem-nostrum', 0, 0, 1, 0, 1, 1, 1, 'public/uploads/product/25.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:21', '2020-11-07 15:42:21'),
(27, 11, 60, 'Anastacio Lubowitz', 'B07C6RFXTP', 'anastacio-lubowitz', '35', 'Pariatur qui est occaecati. Maxime nam laborum voluptatem doloribus sit voluptas harum. Aspernatur repellat dolorem saepe quo quo quis nihil.', 'yellow', 'nLoCvSL', '2295', '1918', 'http://www.hudson.com/', 1, 1, 1, 0, 1, 0, 1, 'public/uploads/product/26.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:21', '2020-11-07 15:42:21'),
(28, 2, 32, 'Yvonne Labadie', 'B07C73WL89', 'yvonne-labadie', '49', 'Officiis nisi quia et quo. Incidunt magni repellendus tempore. Et iure tempora et asperiores voluptatem.', 'aqua', '6WczVSL', '6571', '2248', 'http://www.braun.com/', 0, 1, 0, 1, 0, 1, 0, 'public/uploads/product/27.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:21', '2020-11-07 15:42:21'),
(29, 2, 80, 'Prof. Korey Kilback', 'B07C7MQD6S', 'prof-korey-kilback', '22', 'Perspiciatis dolorem natus id quia corporis voluptatem id. Qui voluptas fugiat quia dolores repudiandae mollitia qui itaque. Iusto earum porro accusamus repudiandae sit. Provident minus necessitatibus praesentium aperiam voluptate ut doloribus.', 'teal', 'nZVxZSL', '5887', '2130', 'http://collins.com/ea-deleniti-voluptas-sit-possimus-aliquam-harum-ullam.html', 0, 0, 0, 0, 0, 1, 1, 'public/uploads/product/28.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:21', '2020-11-07 15:42:21'),
(30, 24, 30, 'Prof. Jena Stracke', 'B07C91F97P', 'prof-jena-stracke', '31', 'Sequi praesentium amet rerum in. Iusto exercitationem quibusdam laudantium a et. Molestiae aut pariatur natus aut vitae ut animi. Est ad sunt ut aut assumenda ducimus et voluptatem.', 'white', 'N5zLvSL', '8273', '3847', 'http://www.rolfson.biz/atque-velit-et-non-eligendi-incidunt-provident', 0, 1, 1, 1, 1, 0, 1, 'public/uploads/product/29.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:21', '2020-11-07 15:42:21'),
(31, 2, 15, 'Verna Kohler', 'B07CC941JZ', 'verna-kohler', '35', 'Nemo facilis iusto eos nemo fuga quia explicabo. Hic doloribus qui illum sit sed quae rerum. Aliquam alias aut fugit maiores reprehenderit minus necessitatibus maxime.', 'navy', 'iEfsRSL', '9832', '4578', 'https://www.russel.com/a-omnis-quam-amet-facere', 0, 0, 0, 0, 0, 0, 1, 'public/uploads/product/30.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:21', '2020-11-07 15:42:21'),
(32, 6, 2, 'Prof. Darby Skiles I', 'B07CCHNHDP', 'prof-darby-skiles-i', '33', 'Dolorem nostrum explicabo odit eos rerum velit molestias. Et nulla molestiae libero et.', 'aqua', 'ww6YkSL', '1273', '2236', 'http://keebler.com/ut-laborum-illo-aut-qui-quia.html', 0, 0, 0, 0, 1, 0, 1, 'public/uploads/product/31.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:22', '2020-11-07 15:42:22'),
(33, 13, 79, 'Fatima Runte', 'B07CJGLJK6', 'fatima-runte', '28', 'Voluptatibus adipisci enim debitis explicabo deserunt minima iure. Nam et consequatur quia. Eveniet est ut odio et. Quis esse natus doloribus aliquid necessitatibus rerum eos. Ipsum laborum maxime enim repellat reiciendis non consequatur velit.', 'silver', '5YigJSL', '6600', '388', 'http://www.ferry.com/laboriosam-quam-sapiente-quo-assumenda-beatae-perferendis.html', 1, 1, 0, 1, 1, 1, 1, 'public/uploads/product/32.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:23', '2020-11-07 15:42:23'),
(34, 17, 88, 'Geoffrey Auer', 'B07CJHBYJ3', 'geoffrey-auer', '34', 'Debitis voluptatem illum veritatis tempore repellendus inventore placeat. Quia enim vel reprehenderit odit. Maxime vel incidunt labore totam soluta. Vero similique non ut animi doloribus. Itaque minus officia voluptatem aut aperiam fuga inventore.', 'lime', 'yVLqYSL', '7954', '3163', 'http://www.gottlieb.com/eaque-corporis-voluptatum-enim-cum.html', 1, 1, 0, 1, 1, 1, 1, 'public/uploads/product/33.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:23', '2020-11-07 15:42:23'),
(35, 13, 25, 'Jimmie Walsh', 'B07CMZVT6T', 'jimmie-walsh', '23', 'Sed qui sunt dicta aut recusandae eveniet. Cum veniam consequatur saepe dolorem odio ut sed. Est qui sit et fugiat.', 'blue', 'G05NrSL', '6878', '2688', 'http://gusikowski.com/dignissimos-ut-aliquam-sapiente-corporis-nam-numquam-dolores.html', 1, 1, 0, 1, 0, 0, 1, 'public/uploads/product/34.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:23', '2020-11-07 15:42:23'),
(36, 1, 13, 'Albina Gorczany', 'B07CPX7FW5', 'albina-gorczany', '31', 'Architecto ut voluptas tempore sed. Natus quo vitae et animi quidem eum voluptatem. Eum deleniti unde architecto harum.', 'blue', 'r3rULSL', '7766', '2094', 'http://www.wolf.com/', 1, 0, 0, 1, 1, 0, 0, 'public/uploads/product/35.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:23', '2020-11-07 15:42:23'),
(37, 21, 88, 'Bud Jerde DVM', 'B07CSHVTSH', 'bud-jerde-dvm', '33', 'Qui quos nesciunt rerum delectus. Sit voluptates veniam doloribus qui. Quo non necessitatibus voluptate architecto vero. Excepturi itaque nesciunt necessitatibus nisi sit quisquam consectetur fuga.', 'maroon', 'SbhlWSL', '1697', '230', 'http://okuneva.com/omnis-veniam-reiciendis-tempora-vel-error-culpa-molestiae.html', 1, 0, 0, 1, 1, 1, 1, 'public/uploads/product/36.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:23', '2020-11-07 15:42:23'),
(38, 21, 19, 'Maximo Moen', 'B07CSL8668', 'maximo-moen', '34', 'Nam laboriosam sed minus cumque error ut quos. Est a aliquam quae dolores. Corporis aut provident qui non debitis et. Laborum veniam qui labore dignissimos quis suscipit necessitatibus.', 'aqua', 'qunqhSL', '714', '3969', 'http://www.toy.com/illum-dolor-et-perspiciatis-non-iusto-omnis-vero.html', 1, 1, 0, 1, 0, 0, 0, 'public/uploads/product/37.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:23', '2020-11-07 15:42:23'),
(39, 23, 16, 'Erik Bosco', 'B07CVD1P77', 'erik-bosco', '40', 'Aut debitis minus dolorem corrupti maiores. Maxime sint voluptatem aliquam rerum ea provident. Eius rerum sunt ut eos. Eum enim enim sed dolore voluptas voluptatibus.', 'olive', '5GiqQSL', '9450', '678', 'http://rice.com/fugit-consectetur-quasi-quo-reiciendis', 1, 1, 1, 1, 1, 0, 0, 'public/uploads/product/38.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:23', '2020-11-07 15:42:23'),
(40, 11, 70, 'Miss Deanna Streich', 'B07CWLXHJB', 'miss-deanna-streich', '47', 'In sed provident quisquam labore aut. In repellendus quae pariatur et autem. Similique repudiandae quam quibusdam repudiandae voluptatem.', 'purple', 'GWmc1SL', '7630', '2308', 'http://www.mitchell.com/', 1, 1, 0, 0, 0, 1, 0, 'public/uploads/product/39.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:23', '2020-11-07 15:42:23'),
(41, 13, 78, 'Curt Tremblay III', 'B07CZXN3J5', 'curt-tremblay-iii', '39', 'Quae tempora laudantium earum aliquam qui ut. Rerum iusto aut eligendi unde libero. Corporis aut optio temporibus voluptatem. Fugit assumenda omnis necessitatibus iure autem sint. Nihil placeat debitis ut modi.', 'olive', 'dT1HwSL', '7623', '2323', 'http://dare.com/', 0, 1, 0, 1, 1, 0, 1, 'public/uploads/product/40.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(42, 22, 80, 'Ebba Towne I', 'B07D1KJMLL', 'ebba-towne-i', '38', 'In officiis cum nulla voluptates qui qui maxime quibusdam. Facilis fugiat amet quas est corporis qui. Nobis veniam qui nesciunt molestias et occaecati laudantium harum. Quia magni quo ab rerum consequatur nulla temporibus.', 'white', 'X3KVJSL', '4525', '679', 'http://www.kuhic.org/', 1, 1, 1, 0, 1, 0, 0, 'public/uploads/product/41.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(43, 3, 71, 'Fernando Klein', 'B07D35PZBG', 'fernando-klein', '29', 'Sit est asperiores dolores quam sed natus sint. Asperiores eos consequatur sit eos vel ea. Provident quis inventore maiores debitis harum dolorum est dolor. Non repudiandae molestias nihil voluptates aut.', 'teal', 'zdNHVSL', '3813', '3010', 'http://www.schmeler.com/quis-temporibus-expedita-sit-veniam-eius-dolor', 0, 1, 1, 0, 1, 0, 1, 'public/uploads/product/42.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(44, 19, 77, 'Connor Brown', 'B07D3NHF6V', 'connor-brown', '41', 'Beatae ad ut aut perspiciatis. Sint delectus unde quam numquam. A est odio ipsam et. Et eius maxime ea distinctio sint. Qui consequuntur eius rerum alias est iste illo deserunt.', 'yellow', 'C7vtgSL', '9847', '560', 'http://huels.net/', 0, 0, 0, 1, 1, 1, 0, 'public/uploads/product/43.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(45, 7, 15, 'Joy West', 'B07D974VN5', 'joy-west', '26', 'Et voluptatem molestias beatae facilis necessitatibus. Tenetur quia quaerat quibusdam inventore quis et dolorem. Dolore et adipisci molestias consectetur ut debitis cum. Provident et dicta pariatur nulla voluptas odit.', 'gray', 'dbijeSL', '2150', '3400', 'http://www.bruen.biz/', 0, 1, 0, 1, 1, 0, 1, 'public/uploads/product/44.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(46, 20, 30, 'Eva Hahn', 'B07DC13MV7', 'eva-hahn', '21', 'Earum in harum qui et quia est dolores. Eligendi nihil eveniet quos nam consectetur temporibus harum. Eaque qui ex voluptatem beatae et. Doloribus magni ex provident reiciendis deserunt impedit.', 'fuchsia', 'rzdKiSL', '4982', '2589', 'http://www.walker.net/facilis-voluptatem-corrupti-dolorem-dolorem-eum-deserunt', 1, 1, 0, 1, 1, 1, 0, 'public/uploads/product/45.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(47, 4, 91, 'Dr. Destiny Swaniawski I', 'B0000536EY', 'dr-destiny-swaniawski-i', '20', 'Voluptatem fugiat enim quia id. Quidem quis vel rerum laborum quaerat sunt numquam. Enim sapiente tempora sed laborum ea totam. Eaque aut occaecati est dolor molestiae. Quos autem animi repudiandae quaerat.', 'lime', 'uN2q2SL', '1479', '3436', 'http://bauch.com/', 0, 0, 0, 0, 0, 0, 0, 'public/uploads/product/46.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(48, 6, 11, 'Camryn Grimes DVM', 'B00006ANDK', 'camryn-grimes-dvm', '36', 'Et quo iste quo facilis dolorem voluptate aut. Nihil ab et voluptatem qui impedit. Tempore eos nobis nihil possimus aut nihil. Molestiae voluptatibus eum illo.', 'fuchsia', '9lSGRSL', '2690', '3996', 'http://moore.biz/qui-itaque-voluptatem-eos-minus-perspiciatis-molestiae-sed', 1, 0, 0, 0, 0, 0, 0, 'public/uploads/product/47.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(49, 23, 88, 'Prof. Colin Lowe', 'B00016XJ4M', 'prof-colin-lowe', '47', 'Et mollitia qui velit provident. Exercitationem dolorum incidunt vel itaque. Est illum id suscipit omnis.', 'blue', 'dtiIZSL', '4872', '1249', 'http://waelchi.org/', 1, 0, 1, 1, 0, 1, 0, 'public/uploads/product/48.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(50, 4, 56, 'Raymond Kris Jr.', 'B0007V6PK6', 'raymond-kris-jr', '24', 'Deleniti aut et nihil ea aut quis totam sit. Enim sed perspiciatis alias incidunt qui quos modi debitis.', 'fuchsia', 'B7vMHSL', '6875', '3999', 'https://www.satterfield.com/aut-odio-corporis-id-et', 0, 0, 0, 1, 1, 0, 1, 'public/uploads/product/49.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(51, 5, 12, 'Ima Berge I', 'B0009RF8G0', 'ima-berge-i', '26', 'Eum quas fugiat neque soluta consequatur ut minima. Consequatur sit voluptatem iste reiciendis et consequatur natus. Sed voluptate sapiente culpa mollitia aut exercitationem quae. Quis sed nulla consectetur sapiente non.', 'white', 'C5jdQSL', '8481', '2615', 'http://www.ritchie.net/', 0, 0, 1, 0, 0, 0, 0, 'public/uploads/product/50.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(52, 19, 33, 'Karen Ankunding', 'B000JNQSIQ', 'karen-ankunding', '34', 'Natus sit ut aut nobis. Soluta dignissimos aperiam qui.', 'black', 'CrjF2SL', '9866', '2044', 'http://www.mohr.com/', 0, 1, 0, 1, 0, 1, 1, 'public/uploads/product/51.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:24', '2020-11-07 15:42:24'),
(53, 25, 11, 'Max Robel', 'B000NWGCZ2', 'max-robel', '46', 'Voluptatem optio vero voluptatum. Provident sed fugit officia ducimus sapiente cupiditate quaerat. Eius amet in neque et et.', 'silver', 'HshF2SL', '4266', '4782', 'http://mitchell.net/modi-ea-dolor-debitis-perspiciatis-quas-qui-esse-dolorem.html', 0, 0, 0, 0, 1, 1, 1, 'public/uploads/product/52.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:25', '2020-11-07 15:42:25'),
(54, 10, 3, 'Abagail Auer', 'B000YJ2SLG', 'abagail-auer', '39', 'Et id nulla ad facere molestias perferendis. Nihil eius sed exercitationem at minima soluta.', 'lime', 'bGsUVSL', '6073', '240', 'http://terry.org/', 1, 0, 1, 0, 0, 0, 1, 'public/uploads/product/53.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:25', '2020-11-07 15:42:25'),
(55, 13, 69, 'Camila Wolff', 'B0016DK48C', 'camila-wolff', '45', 'Nisi error aliquid hic. Nemo et excepturi deleniti voluptas. Consequatur fuga recusandae nulla inventore deserunt officiis.', 'maroon', 'RpFOdSL', '7073', '3924', 'http://www.wisozk.com/eius-aperiam-tempora-praesentium-magnam-sint', 1, 0, 0, 0, 1, 0, 1, 'public/uploads/product/54.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:25', '2020-11-07 15:42:25'),
(56, 18, 52, 'Prof. Alena O\'Keefe', 'B0013MTHWQ', 'prof-alena-okeefe', '40', 'Explicabo consequatur tempora molestiae est minima autem dolor. Vero tenetur eum et ea. Fugit sint sunt culpa adipisci quia dolor.', 'black', '6MNeqSL', '6537', '2676', 'https://yundt.com/quaerat-dolor-fugit-quas-pariatur.html', 0, 1, 0, 1, 1, 0, 0, 'public/uploads/product/55.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:25', '2020-11-07 15:42:25'),
(57, 15, 29, 'Glenna Blick', 'B001459IEE', 'glenna-blick', '26', 'Ex officiis quas tempore et distinctio. Ut qui minus tempora. Aut placeat et in blanditiis sequi illum.', 'navy', 'hBpFySL', '1917', '3148', 'http://hodkiewicz.biz/qui-odit-nihil-culpa-et-molestiae.html', 1, 0, 1, 1, 0, 0, 0, 'public/uploads/product/56.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:25', '2020-11-07 15:42:25'),
(58, 3, 74, 'Victor Stiedemann', 'B00194Q7BC', 'victor-stiedemann', '20', 'Nam nostrum sit deleniti et quas nihil. Iure quo omnis hic nostrum fugiat. At quae dolores ut.', 'teal', '236klSL', '5857', '979', 'http://kassulke.info/temporibus-quam-rerum-quae-repellendus-sed', 1, 1, 1, 0, 0, 0, 1, 'public/uploads/product/57.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:25', '2020-11-07 15:42:25'),
(59, 25, 37, 'Rachel West', 'B001ECQ4US', 'rachel-west', '26', 'Aut nemo iure quia quam. Id veritatis hic labore ipsa qui. Qui sed at labore hic. Accusantium et deserunt non tempora et.', 'silver', 'DPApWSL', '901', '3938', 'http://www.barrows.info/aut-sint-corporis-et-ut-cum-distinctio-ut.html', 0, 1, 1, 0, 0, 1, 1, 'public/uploads/product/58.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:25', '2020-11-07 15:42:25'),
(60, 10, 93, 'Rahsaan Ortiz', 'B001OOLLVS', 'rahsaan-ortiz', '43', 'Incidunt ex voluptas deleniti ducimus fuga vero. Eos libero et in dolores corrupti. Soluta porro ut et explicabo.', 'fuchsia', 't6IQrSL', '3613', '531', 'http://mante.biz/optio-aut-molestias-velit-impedit-ut', 1, 1, 1, 1, 0, 1, 0, 'public/uploads/product/59.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:26', '2020-11-07 15:42:26'),
(61, 22, 51, 'Finn Kuphal', 'B001P92FMG', 'finn-kuphal', '30', 'Tempore id fugit perferendis perspiciatis. Fugiat saepe voluptatum quam molestiae.', 'navy', 'JmLrGSL', '3873', '1717', 'http://roberts.info/', 0, 0, 1, 0, 1, 0, 1, 'public/uploads/product/60.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:26', '2020-11-07 15:42:26'),
(62, 12, 55, 'Annabel Runolfsson', 'B00240UWGG', 'annabel-runolfsson', '50', 'Fugit sint a vero ad ipsa rem inventore. Unde repellat magnam quia dolorum doloremque veritatis.', 'blue', 'qNVGSSL', '9891', '752', 'http://www.hessel.com/', 1, 1, 0, 1, 1, 1, 1, 'public/uploads/product/61.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:26', '2020-11-07 15:42:26'),
(63, 25, 52, 'Mrs. Eve Swaniawski', 'B002LC9OES', 'mrs-eve-swaniawski', '44', 'Magni occaecati est repellat quis itaque qui. Dolores iure est velit ut tempore non eos aut.', 'navy', 'LsNaqSL', '7875', '4425', 'http://www.klein.com/', 0, 1, 1, 0, 1, 0, 1, 'public/uploads/product/62.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:26', '2020-11-07 15:42:26'),
(64, 2, 16, 'Trudie McGlynn', 'B003QWG0IA', 'trudie-mcglynn', '28', 'Doloribus neque voluptatem eum saepe laboriosam. Veniam sit fugiat quia pariatur hic id. Aut fuga quia illum aspernatur distinctio.', 'fuchsia', 'zUFVXSL', '1337', '737', 'https://www.hane.info/accusamus-totam-sed-voluptatem-autem-libero-excepturi', 0, 1, 1, 0, 0, 0, 0, 'public/uploads/product/63.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:26', '2020-11-07 15:42:26'),
(65, 13, 14, 'Prof. Roel Schneider Sr.', 'B0049LUI9O', 'prof-roel-schneider-sr', '47', 'Sequi qui illum minus possimus unde vitae vitae. Labore est aut aut vero et quo aut est. Numquam quo rem voluptatem. Amet voluptatem deleniti dolorum consequuntur sint magni eum.', 'green', 'JdAe1SL', '8452', '4323', 'http://botsford.com/vel-et-assumenda-facilis-ratione-eius-aliquam-enim', 1, 0, 1, 0, 0, 1, 0, 'public/uploads/product/64.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:26', '2020-11-07 15:42:26'),
(66, 16, 17, 'Shirley Fadel V', 'B004BCXAM8', 'shirley-fadel-v', '45', 'Id dolore quia aut deleniti incidunt id iure. Enim iusto similique ut suscipit nobis dolores repellat. Adipisci rerum adipisci quidem assumenda et exercitationem.', 'aqua', 'TMWguSL', '775', '4530', 'http://schmidt.info/voluptatibus-repudiandae-corrupti-labore-debitis-in', 1, 0, 1, 0, 1, 0, 1, 'public/uploads/product/65.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:27', '2020-11-07 15:42:27'),
(67, 13, 21, 'Bridgette Little', 'B004D2DR0Q', 'bridgette-little', '48', 'Et molestiae excepturi hic atque quidem voluptas. Totam nihil officiis quia ut. Repellat aperiam omnis dolore esse itaque. Et tenetur sed est dolores.', 'lime', 'QVt3TSL', '881', '3060', 'https://www.sawayn.net/similique-quae-sed-quidem-adipisci-eum-voluptates-aliquid', 0, 0, 0, 1, 0, 0, 0, 'public/uploads/product/66.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:27', '2020-11-07 15:42:27'),
(68, 21, 40, 'Manley Trantow', 'B004N7DQHA', 'manley-trantow', '44', 'Voluptatem quia non qui dolores sint eius harum. Modi quia nulla recusandae deserunt ea. Dignissimos ex id illum fugiat quam. Est possimus quidem laborum placeat autem quod.', 'teal', 'KtmRkSL', '6539', '795', 'http://www.altenwerth.com/consequatur-quae-pariatur-et-consequatur-veritatis-est', 1, 1, 1, 0, 0, 1, 1, 'public/uploads/product/67.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:27', '2020-11-07 15:42:27'),
(69, 17, 53, 'Mollie Connelly DDS', 'B004UH74DA', 'mollie-connelly-dds', '29', 'Et eum blanditiis sapiente et quaerat minima consectetur. Quasi facere reprehenderit ipsum sequi. Nam qui in sequi et quasi. Ullam omnis et autem odio.', 'yellow', 'gqnWqSL', '5047', '754', 'http://www.ledner.com/', 1, 1, 1, 1, 0, 0, 1, 'public/uploads/product/68.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:27', '2020-11-07 15:42:27'),
(70, 19, 16, 'Berta Jenkins', 'B0050QJHTO', 'berta-jenkins', '22', 'Aperiam ullam explicabo nihil. Sint rem iusto accusamus ab sint nemo. Praesentium sint perferendis sit voluptate laborum fugiat atque.', 'purple', 'tHV0QSL', '3549', '3354', 'http://torphy.org/sed-et-ut-aperiam', 0, 1, 0, 1, 0, 1, 0, 'public/uploads/product/69.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:27', '2020-11-07 15:42:27'),
(71, 5, 17, 'Dorris Kautzer', 'B0054LHI5A', 'dorris-kautzer', '24', 'Ipsum dolor et ea facere error et. Et nulla et voluptate autem provident ea animi debitis. Saepe veniam asperiores natus molestias quo nobis.', 'black', 'qygcJSL', '7036', '778', 'https://www.kshlerin.com/aut-autem-quidem-cum-et', 1, 0, 0, 1, 0, 0, 1, 'public/uploads/product/70.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:27', '2020-11-07 15:42:27'),
(72, 19, 40, 'Rosario Walter', 'B005PLQIQ4', 'rosario-walter', '37', 'Qui ea possimus qui neque. Neque aspernatur qui tempore asperiores distinctio.', 'green', 'GxdgoSL', '7303', '2004', 'http://lueilwitz.com/non-quaerat-odit-dolores-modi.html', 1, 0, 0, 1, 0, 1, 1, 'public/uploads/product/71.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:27', '2020-11-07 15:42:27'),
(73, 2, 6, 'Susie Beatty', 'B0061JPJ28', 'susie-beatty', '26', 'Non rerum omnis non aliquid corporis. Assumenda sed voluptas enim. Odit dolorem nam atque similique quibusdam vel ex. Et reiciendis ea reprehenderit facere non assumenda.', 'green', 'NDrcuSL', '2354', '4288', 'http://daniel.com/fugiat-culpa-pariatur-quas-sapiente-explicabo-ut', 0, 1, 1, 1, 0, 0, 0, 'public/uploads/product/72.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:28', '2020-11-07 15:42:28'),
(74, 13, 82, 'Laurianne Connelly', 'B0065ZTKWS', 'laurianne-connelly', '24', 'Ea a ut asperiores nobis et in. Temporibus aut architecto sunt culpa vel. Eos itaque vel quo nostrum ex non doloribus. Rerum quo quis ab nemo tenetur aspernatur corporis.', 'yellow', '259C9SL', '9169', '843', 'http://www.carter.org/non-harum-autem-mollitia-ea-eaque-officiis-minima-et', 1, 1, 1, 1, 0, 1, 1, 'public/uploads/product/73.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:28', '2020-11-07 15:42:28'),
(75, 20, 61, 'Douglas Friesen', 'B007KA7V5U', 'douglas-friesen', '44', 'Tempora temporibus dignissimos quam nesciunt. Ipsa rem eos aliquam sit ab sint dolores accusamus. Velit repudiandae ad velit qui occaecati quisquam.', 'purple', 'PQa3pSL', '1152', '277', 'http://reilly.com/qui-non-aut-ab-sed-molestiae', 1, 1, 1, 0, 1, 0, 1, 'public/uploads/product/74.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:28', '2020-11-07 15:42:28'),
(76, 9, 83, 'Ilene Yost', 'B007TIM8A6', 'ilene-yost', '29', 'Esse illo ducimus dolor quasi voluptatibus sequi pariatur quam. Aut ullam minima labore delectus eos. Rem sit dicta sint aliquam quia. Porro minus odit temporibus perferendis aut.', 'silver', 'On89ZSL', '314', '3191', 'https://www.corkery.com/soluta-corporis-explicabo-quis-nam-cupiditate-est', 0, 0, 1, 0, 0, 1, 1, 'public/uploads/product/75.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:28', '2020-11-07 15:42:28'),
(77, 4, 77, 'Casimer Schultz MD', 'B0080EEMCA', 'casimer-schultz-md', '45', 'Pariatur rerum recusandae iusto rem voluptatem nobis. Dolor odit dolorem aliquam est natus nam repellat pariatur. Eos et necessitatibus omnis architecto eum nostrum ea.', 'black', 'HikYaSL', '2498', '2225', 'http://schaefer.biz/ratione-autem-quibusdam-tempore-soluta-suscipit-similique-libero-velit', 0, 1, 0, 0, 1, 1, 1, 'public/uploads/product/76.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:28', '2020-11-07 15:42:28'),
(78, 17, 13, 'Mrs. Taya Wisozk I', 'B00AHAWWO0', 'mrs-taya-wisozk-i', '50', 'Reprehenderit perferendis consequatur minus et recusandae nostrum hic. Ut pariatur modi omnis dolores suscipit non quo. Corporis qui culpa non reprehenderit excepturi.', 'fuchsia', 'wBTaKSL', '2236', '3980', 'http://www.lehner.com/', 1, 1, 0, 0, 1, 1, 0, 'public/uploads/product/77.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:28', '2020-11-07 15:42:28'),
(79, 11, 30, 'Prof. Darwin Fahey I', 'B00AINMFAC', 'prof-darwin-fahey-i', '29', 'Qui inventore voluptatibus vel voluptatem in maxime autem. Dolorum aut iusto est architecto dolore repellendus dolorum. Facilis est autem ex dolorem rem. Sed nulla nesciunt reiciendis vero ut.', 'fuchsia', '3zvgJSL', '3019', '4578', 'http://prohaska.com/', 0, 1, 1, 0, 1, 0, 0, 'public/uploads/product/78.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:29', '2020-11-07 15:42:29'),
(80, 15, 81, 'Lew Schultz', 'B00BOYA2M2', 'lew-schultz', '23', 'Odit aliquid officiis vitae veritatis cum architecto minima. Tempore earum occaecati vel veritatis iusto quas qui modi. Aperiam atque eaque consequuntur quo ut ducimus qui. Distinctio blanditiis ut sequi illo adipisci repudiandae voluptates deleniti. Qui quidem earum dolores omnis optio hic voluptatibus.', 'purple', 'aHg1vSL', '7172', '3114', 'https://trantow.com/id-unde-tempore-et-est-eveniet.html', 0, 1, 1, 0, 1, 0, 0, 'public/uploads/product/79.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:29', '2020-11-07 15:42:29'),
(81, 8, 51, 'Billie Walter', 'B00DM14TYC', 'billie-walter', '43', 'Voluptatem veniam id ipsum. Sunt et similique magnam debitis nihil unde. At reprehenderit magnam doloribus placeat blanditiis. Qui nisi molestias mollitia sunt magnam eum occaecati illum.', 'yellow', 'w9s6GSL', '1210', '1301', 'https://www.hegmann.com/aut-aut-iste-voluptas-eius-sit', 0, 1, 1, 1, 1, 1, 0, 'public/uploads/product/80.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:30', '2020-11-07 15:42:30'),
(82, 11, 52, 'Alison Murray', 'B00GMZUS2M', 'alison-murray', '46', 'Temporibus sapiente reprehenderit sunt maiores ut consectetur ut. Explicabo voluptate sit odit animi voluptatem. Voluptatem labore ipsam possimus dolorum magni sit.', 'teal', 'skhZrSL', '2375', '1205', 'http://jacobson.com/quidem-eligendi-et-amet-impedit-quia', 0, 1, 0, 0, 0, 1, 1, 'public/uploads/product/81.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:30', '2020-11-07 15:42:30'),
(83, 17, 68, 'Torey Swaniawski', 'B00H33ZP3O', 'torey-swaniawski', '44', 'Nulla soluta rem incidunt. Nihil dolores architecto recusandae.', 'fuchsia', 'ltBEmSL', '257', '4334', 'http://dibbert.biz/', 1, 1, 1, 0, 1, 0, 0, 'public/uploads/product/82.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:30', '2020-11-07 15:42:30'),
(84, 16, 25, 'Niko King', 'B00HSE4WJG', 'niko-king', '45', 'Sunt et deserunt est molestiae earum omnis ea earum. Deleniti facilis in quis quas ducimus laudantium architecto. Consequatur neque sint hic quis sunt magnam.', 'purple', 'C0Fp8SL', '8091', '3849', 'http://murazik.com/iusto-quam-similique-molestias-culpa', 1, 1, 0, 1, 1, 1, 1, 'public/uploads/product/83.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:30', '2020-11-07 15:42:30'),
(85, 17, 52, 'Asa Friesen', 'B00JUJ1BCS', 'asa-friesen', '35', 'Praesentium incidunt laudantium saepe iusto voluptatem. Qui nostrum est iste magni enim. Consectetur sit laborum velit eaque. Et vel et iure ut qui veniam.', 'navy', 'xTUNFSL', '649', '145', 'http://www.kemmer.net/impedit-nesciunt-corrupti-tenetur-occaecati', 1, 0, 1, 1, 0, 1, 1, 'public/uploads/product/84.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:30', '2020-11-07 15:42:30'),
(86, 8, 18, 'Milan Langosh', 'B00JUJ1E0W', 'milan-langosh', '34', 'Alias maxime ratione aut voluptatibus harum possimus cumque. Necessitatibus ut aut labore a a. Sit minus rerum et alias atque ea qui.', 'yellow', 'Cx5x4SL', '8296', '4883', 'http://schuppe.com/', 0, 1, 1, 1, 0, 1, 1, 'public/uploads/product/85.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:30', '2020-11-07 15:42:30'),
(87, 4, 89, 'Prof. Rosalind Hill', 'B00LIBEBTG', 'prof-rosalind-hill', '45', 'Quia minima voluptas vitae aut saepe. Atque dolor velit sunt animi aut quisquam odio. Voluptas perspiciatis nostrum molestias fugiat. Vel sed fuga nihil et.', 'silver', 'HnUKbSL', '2721', '3693', 'https://www.cassin.net/ut-vel-esse-animi-molestiae-sapiente-neque', 0, 1, 1, 0, 1, 1, 0, 'public/uploads/product/86.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:31', '2020-11-07 15:42:31'),
(88, 3, 8, 'Lester Rau', 'B00LV5NY3I', 'lester-rau', '42', 'Saepe voluptatem ipsam repellendus saepe tenetur qui alias similique. Consequatur modi assumenda ut ea dolor possimus. Quia amet voluptates et dolorem. Quis ad voluptatem qui nemo magni ut.', 'olive', 'sPS6NSL', '879', '3910', 'http://www.effertz.com/', 1, 1, 0, 1, 1, 0, 1, 'public/uploads/product/87.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:31', '2020-11-07 15:42:31'),
(89, 20, 90, 'D\'angelo Ruecker', 'B00LV6VDG2', 'dangelo-ruecker', '24', 'Aspernatur sit deleniti soluta ut ab libero sed. Sed omnis nostrum aperiam totam. Et recusandae optio laborum nulla odio at. Maxime exercitationem ipsam possimus sed dolores eum.', 'blue', 'vMlpaSL', '9269', '954', 'https://www.kling.com/nostrum-atque-repellendus-animi-soluta-quod-quia-rerum-sit', 0, 0, 1, 0, 0, 0, 0, 'public/uploads/product/88.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:31', '2020-11-07 15:42:31'),
(90, 11, 90, 'Osborne Herzog', 'B00MLBPDQ2', 'osborne-herzog', '40', 'Voluptatem laudantium a ratione non enim omnis non nobis. Temporibus id laboriosam cum a ea. Eveniet necessitatibus nobis quos sint labore et voluptate. Maiores hic qui ipsum culpa quos et.', 'green', 'lUdA9SL', '1643', '4285', 'http://www.schamberger.com/quos-occaecati-iusto-quidem-et-sunt-sed', 1, 1, 1, 0, 1, 0, 0, 'public/uploads/product/89.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:31', '2020-11-07 15:42:31'),
(91, 25, 7, 'Mr. Justus Feil Sr.', 'B00MWI2IS0', 'mr-justus-feil-sr', '46', 'Accusantium eveniet ut dolor reprehenderit odit quidem ex. Dolorem optio quis velit est accusantium. Iure explicabo ad quia quasi alias itaque temporibus minima.', 'white', 'D65YFSL', '5405', '3031', 'http://www.trantow.com/', 0, 0, 0, 0, 1, 0, 0, 'public/uploads/product/90.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:32', '2020-11-07 15:42:32'),
(92, 19, 16, 'Celine Franecki', 'B00NR1YQHM', 'celine-franecki', '23', 'Voluptatum quasi repellendus cupiditate deserunt consequatur. Et iusto vero quas et incidunt pariatur. Mollitia ut minima quo alias. Aut iure atque ab quis.', 'navy', 'wdV56SL', '1909', '3986', 'http://www.stehr.org/dolorum-quia-provident-sed-eum-et', 1, 1, 1, 1, 1, 1, 1, 'public/uploads/product/91.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:32', '2020-11-07 15:42:32'),
(93, 21, 47, 'Brennan Schuster', 'B00PGQYEUK', 'brennan-schuster', '33', 'Eum exercitationem itaque autem dolorem vero. Provident earum est autem magnam. Eveniet voluptas aut sint harum ratione velit et quos. Ad quos dolor asperiores expedita. Qui id voluptates inventore consectetur omnis.', 'olive', 'oewfDSL', '4403', '2901', 'http://bahringer.com/voluptates-et-dolor-amet-neque-facilis.html', 0, 1, 1, 0, 0, 1, 1, 'public/uploads/product/92.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:32', '2020-11-07 15:42:32'),
(94, 18, 78, 'Sammie Heaney', 'B00PLUIR2C', 'sammie-heaney', '43', 'Sed corporis suscipit cum id officia at commodi. Ea et quia magni qui sint temporibus placeat. Ullam perspiciatis eum magni magnam blanditiis. Eum adipisci veniam in numquam quo.', 'green', 'TOgY6SL', '8056', '1702', 'http://gaylord.com/dolor-deserunt-corporis-blanditiis-ipsam-reprehenderit-similique.html', 0, 0, 1, 0, 0, 0, 0, 'public/uploads/product/93.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:32', '2020-11-07 15:42:32'),
(95, 16, 66, 'Ocie Skiles', 'B00PMR3QF2', 'ocie-skiles', '44', 'Et aut accusantium sit est. Aut earum quod similique ipsa in saepe. Suscipit quae nesciunt nulla officiis quam excepturi. Ipsa deleniti doloribus sit voluptatem assumenda ducimus aspernatur.', 'fuchsia', 'k9MRQSL', '5056', '264', 'http://kihn.com/sapiente-sequi-consectetur-et-tenetur-autem-est-ipsum.html', 1, 0, 1, 0, 0, 0, 0, 'public/uploads/product/94.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:32', '2020-11-07 15:42:32'),
(96, 16, 85, 'Jacquelyn Quitzon', 'B00PO7GKLM', 'jacquelyn-quitzon', '44', 'Quis sapiente et dicta voluptate odio consequatur. Quia perferendis repellat architecto vel. Nulla nihil non doloribus delectus.', 'teal', 'WG8HKSL', '3111', '3272', 'http://kreiger.com/quidem-dolorum-reiciendis-sequi-voluptas', 1, 1, 1, 1, 0, 0, 0, 'public/uploads/product/95.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:32', '2020-11-07 15:42:32'),
(97, 20, 21, 'Torrey Schimmel II', 'B00QZ67ODE', 'torrey-schimmel-ii', '46', 'Animi recusandae numquam alias qui in molestiae sed. Qui rerum quia voluptas sed voluptas facere ut. Ut eaque ex quas saepe perspiciatis tempore ut.', 'yellow', 'o2uQtSL', '7818', '4281', 'http://harber.com/', 1, 0, 0, 0, 0, 0, 1, 'public/uploads/product/96.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:32', '2020-11-07 15:42:32');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `code`, `slug`, `qty`, `details`, `color`, `size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `buyone_getone`, `image_one`, `image_two`, `image_three`, `status`, `stock`, `created_at`, `updated_at`) VALUES
(98, 3, 74, 'Ruthe Huels', 'B00SNM5US4', 'ruthe-huels', '36', 'Libero et voluptatibus fugiat. Nam et eveniet veritatis. Adipisci cupiditate non illo labore quo corporis.', 'black', 'KlpgVSL', '3335', '982', 'http://www.koss.org/earum-velit-quae-placeat-officiis-doloremque-tenetur-sed.html', 0, 1, 1, 0, 1, 0, 1, 'public/uploads/product/97.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:32', '2020-11-07 15:42:32'),
(99, 23, 53, 'Dallas Kreiger DVM', 'B00TKS5Y3Q', 'dallas-kreiger-dvm', '31', 'Quis assumenda et nobis minima. Maxime dolorem iste dignissimos voluptas eum reprehenderit amet. Ut fugit pariatur beatae rem hic et. Ipsa et fuga optio libero vel est.', 'fuchsia', 'ZhurHSL', '8211', '2457', 'https://www.steuber.com/fuga-in-modi-et-nobis-tempora-saepe-fugit', 0, 0, 0, 0, 1, 1, 1, 'public/uploads/product/98.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:33', '2020-11-07 15:42:33'),
(100, 6, 36, 'Remington Mante', 'B00TTD9BRC', 'remington-mante', '48', 'Facilis placeat nihil a aut veniam quis. Blanditiis id maiores eius eos veniam accusamus quo. Sit ratione est perspiciatis aut adipisci iure.', 'white', 'pVxY9SL', '2951', '1081', 'http://mann.com/necessitatibus-laudantium-et-dignissimos-doloremque-qui.html', 1, 0, 1, 0, 1, 1, 0, 'public/uploads/product/99.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:33', '2020-11-07 15:42:33'),
(101, 23, 70, 'Mr. Demarco Zboncak Sr.', 'B00XPRRHYW', 'mr-demarco-zboncak-sr', '44', 'Voluptas rem quia nihil dicta distinctio. Inventore quis consequuntur qui eaque non sunt facilis.', 'maroon', 'hpg3uSL', '5312', '1252', 'http://wisoky.com/quis-laudantium-perferendis-sit', 0, 1, 0, 0, 0, 1, 1, 'public/uploads/product/100.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:33', '2020-11-07 15:42:33'),
(102, 4, 12, 'Christina Leannon', 'B00YE3CPW0', 'christina-leannon', '32', 'Dolor magni amet quidem tenetur assumenda. Nesciunt aliquid magnam optio et esse a similique impedit. Vitae molestiae rem dolore cum repudiandae fugit.', 'gray', 'cPv5ESL', '8546', '1257', 'http://www.breitenberg.com/quia-et-occaecati-voluptas-ratione-qui-velit', 0, 1, 1, 0, 1, 0, 0, 'public/uploads/product/101.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:33', '2020-11-07 15:42:33'),
(103, 14, 28, 'Darrell Considine', 'B00Z75ZDAU', 'darrell-considine', '26', 'Provident voluptatem nostrum possimus velit. Iure iusto aliquid officia numquam eaque quibusdam enim. Unde rerum necessitatibus ea et animi. Qui iste ipsam sit necessitatibus inventore sit magni. Adipisci et quod aliquid nobis similique.', 'purple', 'LEVgMSL', '7812', '4872', 'http://zulauf.net/nostrum-ut-laboriosam-iste-et-est', 0, 1, 1, 0, 1, 0, 0, 'public/uploads/product/102.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:33', '2020-11-07 15:42:33'),
(104, 22, 92, 'Darryl Fadel', 'B0107QP1VE', 'darryl-fadel', '22', 'Laudantium qui molestiae quisquam nisi dolore molestias est dolor. Velit repudiandae exercitationem quam alias voluptatem. Soluta et qui rerum.', 'lime', 'AACLDSL', '9586', '4331', 'https://kertzmann.com/aspernatur-rem-iure-inventore-ut-veniam-minima-provident.html', 0, 0, 0, 1, 0, 0, 0, 'public/uploads/product/103.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:33', '2020-11-07 15:42:33'),
(105, 19, 73, 'Pierre Turner Jr.', 'B015HTI3UC', 'pierre-turner-jr', '25', 'Mollitia velit numquam natus porro consectetur sit. Laudantium unde magni doloribus quia aut quos. Quaerat nostrum ea aut et. Neque consequatur sint eos laborum.', 'purple', 'rUxnVSL', '9948', '2835', 'http://www.bins.com/dolor-ullam-quae-officiis-rerum', 1, 0, 1, 1, 1, 1, 1, 'public/uploads/product/104.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:34', '2020-11-07 15:42:34'),
(106, 4, 59, 'Werner Jacobi', 'B018YOVQSI', 'werner-jacobi', '43', 'Rem ea et dolore facilis aut voluptatibus. Rerum fugiat quibusdam tenetur itaque. Eveniet velit assumenda nihil.', 'purple', 'oIuBOSL', '582', '4054', 'http://waelchi.com/vel-iste-iure-iusto-cum-nemo-rerum-vitae.html', 0, 1, 0, 0, 1, 0, 1, 'public/uploads/product/105.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:34', '2020-11-07 15:42:34'),
(107, 17, 27, 'Ms. Darlene Waelchi', 'B019FGCM00', 'ms-darlene-waelchi', '20', 'Minus voluptas odit omnis eveniet quaerat nesciunt sed. Voluptatem quaerat vel minus. Quia excepturi earum saepe est ullam quas voluptatem.', 'purple', 'wBsKcSL', '3216', '160', 'http://okuneva.net/est-sunt-et-quasi-recusandae-quibusdam-exercitationem', 0, 1, 0, 1, 1, 0, 0, 'public/uploads/product/106.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:34', '2020-11-07 15:42:34'),
(108, 15, 43, 'Harvey Yundt', 'B019SVHLEY', 'harvey-yundt', '28', 'Ut ab distinctio minus in. In maiores consectetur illo sapiente quasi modi. Est et tenetur ipsa ea. Animi qui eaque eos dolorem vero.', 'maroon', 'eH5Q1SL', '7694', '1214', 'http://lindgren.com/dolore-iusto-molestias-velit-modi-occaecati-itaque', 1, 1, 1, 0, 0, 1, 0, 'public/uploads/product/107.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:34', '2020-11-07 15:42:34'),
(109, 20, 34, 'Marques Grant', 'B01BJOY2LS', 'marques-grant', '40', 'Quos adipisci ut omnis laudantium iste eius dolorem. Consectetur voluptas ut totam quis pariatur. Illo perspiciatis rerum eos at aut explicabo ut. Mollitia harum maxime et quo.', 'maroon', 'LslzSSL', '789', '2247', 'http://carter.com/cupiditate-ipsa-sed-suscipit-maiores-repudiandae', 0, 0, 0, 0, 1, 0, 0, 'public/uploads/product/108.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:34', '2020-11-07 15:42:34'),
(110, 17, 35, 'Prof. Abel Hauck Sr.', 'B01BSB56OY', 'prof-abel-hauck-sr', '31', 'Autem modi numquam voluptates rerum necessitatibus. Culpa repellat quis et aut incidunt dignissimos. Reiciendis modi neque est velit reiciendis quis iure magnam. Et temporibus non quod.', 'fuchsia', 'rV6GiSL', '4200', '389', 'http://barton.com/ad-et-laudantium-possimus-quisquam-minus-aut-odit.html', 1, 1, 0, 0, 1, 1, 0, 'public/uploads/product/109.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:34', '2020-11-07 15:42:34'),
(111, 2, 49, 'Cruz Schmeler III', 'B01CYDXMSW', 'cruz-schmeler-iii', '47', 'Necessitatibus consequatur eum eligendi enim. Unde aut vel qui. Dolores nulla animi voluptas sint quibusdam modi eum.', 'teal', 'HZ6BUSL', '2259', '3826', 'http://hirthe.org/blanditiis-ut-consectetur-recusandae-sed.html', 1, 1, 0, 1, 1, 0, 1, 'public/uploads/product/110.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:34', '2020-11-07 15:42:34'),
(112, 25, 17, 'Jonathon Hudson MD', 'B01EBB291G', 'jonathon-hudson-md', '26', 'Officia amet nam qui voluptas omnis ipsam. Maiores voluptas quos amet adipisci. Magni fugit consectetur mollitia ipsum officia recusandae.', 'green', '80rgKSL', '1075', '375', 'https://www.gibson.info/numquam-dicta-nihil-non-fugiat-dicta-ut-ab', 1, 0, 1, 0, 0, 1, 1, 'public/uploads/product/111.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(113, 6, 15, 'London Hagenes', 'B01EIQQ096', 'london-hagenes', '44', 'Illum libero eligendi quia iure commodi et. Est dicta illum dolorum et amet impedit enim. Fugit voluptas iusto quia dicta ipsa nisi qui. Autem odit explicabo laborum. Corrupti ea et sed quibusdam optio alias architecto.', 'navy', 'JH4PKSL', '2409', '3000', 'http://aufderhar.com/in-numquam-ex-fuga-fugiat', 0, 1, 0, 0, 0, 1, 0, 'public/uploads/product/112.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(114, 17, 74, 'Ms. Lacy Krajcik', 'B01JGG5CH4', 'ms-lacy-krajcik', '24', 'Alias asperiores quisquam ad non eum numquam. Consequatur reprehenderit odit architecto porro blanditiis consequatur tempore ipsa. Sunt doloribus eveniet saepe eos et. Aut saepe facilis ut assumenda.', 'fuchsia', '3HRGCSL', '5265', '208', 'https://www.balistreri.info/voluptatem-similique-iure-repellendus-tenetur-necessitatibus-doloribus-doloremque-est', 1, 0, 1, 0, 1, 1, 0, 'public/uploads/product/113.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(115, 16, 44, 'Randall Goodwin', 'B01KZOTRG8', 'randall-goodwin', '37', 'Architecto distinctio sed quia quo et illum. Eius et reiciendis saepe ipsam consequatur. Numquam et dignissimos sint.', 'purple', 'nhHshSL', '2583', '3388', 'http://jerde.biz/quasi-et-modi-expedita-est-adipisci-occaecati', 1, 0, 0, 0, 1, 0, 0, 'public/uploads/product/114.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(116, 1, 22, 'Alvera Bashirian', 'B01LZ3RLPC', 'alvera-bashirian', '28', 'Nihil eaque quia necessitatibus veniam soluta voluptatem possimus. Quia beatae est mollitia. Voluptatem perspiciatis possimus sit officiis aut. In mollitia quis quidem sint. Ut accusamus placeat vel et.', 'blue', '74YfuSL', '8555', '3856', 'http://www.miller.com/', 0, 0, 1, 1, 1, 0, 0, 'public/uploads/product/115.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(117, 13, 49, 'Hobart Roberts', 'B01M0PB8DZ', 'hobart-roberts', '40', 'Animi repellat ea necessitatibus id rerum quis est. Quisquam sed quae est. A ut qui voluptatem optio. Ea assumenda dolores dolore sed. Quam quis repellendus minima omnis.', 'black', 'UdxWNSL', '6339', '2884', 'http://brown.info/', 0, 0, 0, 0, 1, 0, 0, 'public/uploads/product/116.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(118, 22, 75, 'Albert Ankunding', 'B01M5KZQF6', 'albert-ankunding', '39', 'Soluta vitae molestiae nihil facilis. Qui voluptatem dolorem rerum nihil est ullam. Quos esse libero exercitationem quibusdam dolorem. Aut et soluta sequi necessitatibus mollitia.', 'aqua', 'Ngv33SL', '5594', '967', 'http://www.bartoletti.org/', 0, 1, 1, 1, 0, 0, 0, 'public/uploads/product/117.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(119, 7, 27, 'Eveline Strosin', 'B01MFGN8S5', 'eveline-strosin', '47', 'Ipsa ullam adipisci sapiente tempore quis molestiae delectus ullam. Rem architecto in sit ut perspiciatis ut. Inventore ut corrupti voluptas dolore.', 'white', '18sMwSL', '2557', '4769', 'http://www.lebsack.biz/est-repellendus-laboriosam-ipsam-velit-rem', 0, 0, 0, 1, 1, 0, 1, 'public/uploads/product/118.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(120, 12, 83, 'Dr. Clement Murphy Jr.', 'B01MSSDEPK', 'dr-clement-murphy-jr', '43', 'Consequatur sunt laudantium officiis non est. Beatae tempora perspiciatis voluptates corrupti natus. Dolores consequatur et quibusdam voluptatem numquam.', 'lime', 'nJ21gSL', '1497', '1185', 'http://www.halvorson.net/id-quo-sit-quasi-rerum-molestias-doloremque-enim-doloribus.html', 0, 1, 1, 0, 0, 1, 0, 'public/uploads/product/119.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(121, 10, 64, 'Cordie Kris', 'B01MXGP5DM', 'cordie-kris', '29', 'Neque accusamus deserunt harum quisquam saepe. Occaecati et quia commodi excepturi eum sequi. Nobis maxime ipsum earum officia veniam.', 'fuchsia', 'C6s2PSL', '6758', '4208', 'http://www.moore.com/sunt-beatae-recusandae-voluptatem-nesciunt-animi', 0, 1, 1, 0, 0, 0, 1, 'public/uploads/product/120.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(122, 24, 34, 'Mr. Ashton Abshire', 'B06VTPNVJZ', 'mr-ashton-abshire', '21', 'Fugiat vel nulla voluptatem. Rerum repellendus magnam est. Asperiores recusandae et ut provident aliquam. Quam iusto soluta earum pariatur officia beatae. Totam cum id commodi non recusandae.', 'maroon', 'D2keFSL', '5619', '4062', 'http://pagac.com/sit-et-totam-est-quis-libero-doloremque-libero.html', 1, 1, 1, 1, 0, 0, 0, 'public/uploads/product/121.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:35', '2020-11-07 15:42:35'),
(123, 22, 49, 'Kayley Corkery DDS', 'B06WP3N89Z', 'kayley-corkery-dds', '36', 'Magni non iste delectus est at. Tempora laborum earum qui. Quam perferendis totam accusantium odit. Officiis quasi et itaque eos velit. A dolores provident et.', 'purple', 'XjJTHSL', '6322', '4430', 'https://cole.com/occaecati-dolore-dolorem-minus-hic-voluptatem-quos-ipsam.html', 1, 1, 0, 1, 1, 1, 1, 'public/uploads/product/122.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:36', '2020-11-07 15:42:36'),
(124, 17, 82, 'Aracely Cole', 'B06X9PM3GJ', 'aracely-cole', '29', 'In odio id sequi sequi eos qui esse. Voluptas nam mollitia quo neque reprehenderit.', 'maroon', 'eMxL5SL', '1004', '4171', 'http://www.armstrong.com/dolore-sed-voluptas-est-alias-aut-illum-doloribus', 1, 1, 0, 0, 0, 1, 0, 'public/uploads/product/123.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:36', '2020-11-07 15:42:36'),
(125, 24, 70, 'Carroll Hagenes III', 'B06XFBCP2D', 'carroll-hagenes-iii', '23', 'Sunt omnis quas debitis accusantium tenetur blanditiis. Sed occaecati ut maiores nemo. Ipsam temporibus necessitatibus est.', 'olive', '11dA0SL', '2656', '2281', 'http://beahan.com/rerum-tempora-voluptatem-dolores-voluptatem-et-saepe-consequatur', 1, 1, 0, 0, 0, 1, 1, 'public/uploads/product/124.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:36', '2020-11-07 15:42:36'),
(126, 8, 6, 'Louvenia Parker DVM', 'B0711BR3TC', 'louvenia-parker-dvm', '48', 'Est qui corporis ut nihil distinctio. Vero aliquam et est impedit repellendus deleniti ex aut. Est quas consequatur inventore ab assumenda saepe.', 'lime', 'Vl8QvSL', '6067', '1284', 'http://parker.com/eos-odio-dolorem-praesentium-ea-sapiente-illum-sit', 0, 1, 0, 0, 0, 1, 1, 'public/uploads/product/125.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:36', '2020-11-07 15:42:36'),
(127, 20, 19, 'Elenor Larson', 'B071YSXJ2Y', 'elenor-larson', '43', 'Quidem enim iusto odio eveniet nihil. Cumque rem maiores sit consequatur aut magnam ea. Non alias ipsum ut asperiores facere. Eaque dignissimos non dolores nulla.', 'maroon', '1xIUUSL', '3894', '860', 'https://www.effertz.biz/dolorum-sit-illum-accusantium-aut-qui-tempora-dolorem', 1, 1, 1, 1, 0, 0, 0, 'public/uploads/product/126.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:37', '2020-11-07 15:42:37'),
(128, 5, 27, 'Pinkie Treutel', 'B073VD4YFV', 'pinkie-treutel', '48', 'Sit et id nesciunt cum. Reiciendis animi sit aut rerum. Consequatur temporibus nam eius nulla. Saepe doloremque repellat placeat consectetur.', 'teal', 'vtRo3SL', '4371', '988', 'http://www.lemke.com/dolores-voluptatibus-autem-minima-nemo-voluptatem-sunt', 1, 1, 0, 1, 0, 1, 1, 'public/uploads/product/127.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:37', '2020-11-07 15:42:37'),
(129, 12, 58, 'Theo Jacobson', 'B074MNF659', 'theo-jacobson', '34', 'Maiores laborum quod id facilis maiores dolore. Animi ex rerum assumenda. Sit labore sit ab dolores minus quia cum sapiente. Et magnam ratione dolor et.', 'blue', 'RzYaUSL', '3148', '3419', 'https://huel.com/atque-placeat-unde-ullam-pariatur.html', 1, 1, 0, 0, 1, 1, 0, 'public/uploads/product/128.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:37', '2020-11-07 15:42:37'),
(130, 6, 80, 'Patience Stiedemann DVM', 'B074N4FCB4', 'patience-stiedemann-dvm', '40', 'Commodi rerum provident non. Rerum fugiat necessitatibus quibusdam rerum aliquam quidem est. Aut in blanditiis dolorem.', 'olive', 'iN9MXSL', '7109', '324', 'http://sipes.net/', 0, 1, 0, 1, 0, 1, 1, 'public/uploads/product/129.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:37', '2020-11-07 15:42:37'),
(131, 1, 12, 'Ms. Katelyn Ratke', 'B074V3NCB1', 'ms-katelyn-ratke', '23', 'Blanditiis iste voluptatem quaerat tempore. Soluta eveniet ea reiciendis esse officia illum incidunt. Harum vero optio numquam modi a eum pariatur soluta. Est quia reiciendis placeat a dolore odio quae.', 'yellow', 'Tw5CLSL', '2457', '4517', 'https://www.cassin.net/dolor-ipsum-et-quae-est', 1, 1, 0, 1, 1, 1, 1, 'public/uploads/product/130.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:37', '2020-11-07 15:42:37'),
(132, 9, 47, 'Prof. Cullen Jacobson IV', 'B074XDLHNJ', 'prof-cullen-jacobson-iv', '44', 'Eligendi ad facilis illum doloremque iusto aliquam repudiandae. Quia est et illo vitae quos. Cumque minus et aperiam non debitis. Fugiat ut quod distinctio et voluptatibus repellendus. Aliquam esse voluptatem ducimus eaque.', 'lime', 'M3Pd2SL', '8840', '2310', 'https://www.bartell.com/nesciunt-saepe-et-exercitationem-suscipit-expedita-iure-voluptate', 1, 1, 0, 1, 0, 0, 1, 'public/uploads/product/131.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:37', '2020-11-07 15:42:37'),
(133, 4, 64, 'Prof. Ona Turcotte', 'B074ZB7LWJ', 'prof-ona-turcotte', '26', 'Eveniet impedit sed provident at cupiditate sit doloremque. Eveniet a aut tempore illum recusandae nemo facere. Voluptate officiis sunt molestiae qui dolorem earum. Sit ipsa vel repellat modi animi vel dolores. Facere qui voluptas et repudiandae.', 'yellow', 'At712SL', '9445', '4242', 'http://www.cassin.com/accusantium-architecto-nobis-voluptates-nemo-vitae-illum-consequatur.html', 0, 0, 0, 1, 1, 1, 1, 'public/uploads/product/132.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:37', '2020-11-07 15:42:37'),
(134, 11, 15, 'Ardith Bartell', 'B075KHM8CF', 'ardith-bartell', '39', 'Et voluptas officiis quod et est. Error eveniet minus quam dignissimos eligendi dolores quos. Est sed non aut reiciendis ratione.', 'gray', 'Q2RNhSL', '5368', '1028', 'http://www.wunsch.com/hic-exercitationem-beatae-molestias', 0, 1, 1, 0, 0, 1, 0, 'public/uploads/product/133.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:37', '2020-11-07 15:42:37'),
(135, 5, 55, 'Mr. Coy Fritsch Jr.', 'B075VPZ6MK', 'mr-coy-fritsch-jr', '37', 'Eaque amet et minus sit et omnis. Dolores officiis quas enim ullam. Rerum et quos consequuntur iure eaque.', 'teal', 'RBfCLSL', '5683', '2143', 'http://emard.net/voluptas-rem-sequi-dolores-deserunt-occaecati-id-explicabo-ut', 1, 0, 0, 0, 0, 1, 1, 'public/uploads/product/134.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:38', '2020-11-07 15:42:38'),
(136, 8, 66, 'Mckenzie Rath', 'B0762LYFKP', 'mckenzie-rath', '26', 'Veniam omnis deserunt facilis voluptatem neque. Nihil similique voluptas earum non. Nisi dolorem vel reiciendis quod voluptatem itaque. Dolorem rerum similique eos blanditiis.', 'maroon', 'kYc1qSL', '8536', '1444', 'http://wyman.biz/ullam-enim-iure-natus-qui.html', 0, 0, 1, 0, 1, 1, 1, 'public/uploads/product/135.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:38', '2020-11-07 15:42:38'),
(137, 17, 33, 'Ephraim Gulgowski', 'B07663BXQ5', 'ephraim-gulgowski', '38', 'Asperiores eius a illo dolore natus debitis. Veniam voluptates et totam dignissimos non vitae voluptatem. Enim non et et ipsa.', 'teal', 'Qh3AfSL', '4534', '2376', 'https://hermiston.com/omnis-provident-sit-nobis-accusantium.html', 1, 1, 1, 0, 1, 0, 1, 'public/uploads/product/136.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:38', '2020-11-07 15:42:38'),
(138, 11, 21, 'Jadon Abbott', 'B076B9CBVZ', 'jadon-abbott', '27', 'Repellat vitae porro dolores quia. Quas ea reprehenderit ut in ut. Et perspiciatis possimus cupiditate optio doloremque.', 'green', 'iQxYnSL', '8214', '3903', 'http://rosenbaum.com/corrupti-dicta-reiciendis-eos-aspernatur-unde-nisi-recusandae.html', 0, 0, 1, 1, 1, 1, 1, 'public/uploads/product/137.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:38', '2020-11-07 15:42:38'),
(139, 8, 20, 'Ward Herzog', 'B076JGK2KK', 'ward-herzog', '35', 'Minus facilis non iusto rerum eos. Sequi consequatur non occaecati quia animi commodi et cupiditate. Possimus eveniet distinctio aut saepe. Officiis amet tempore magnam labore et adipisci.', 'maroon', 'Vgd4JSL', '6488', '2642', 'http://www.hansen.com/aut-aut-accusantium-aperiam-et.html', 1, 0, 1, 0, 0, 1, 0, 'public/uploads/product/138.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:38', '2020-11-07 15:42:38'),
(140, 2, 91, 'Yesenia Franecki', 'B076RW5LKG', 'yesenia-franecki', '35', 'Ab rerum a amet quia consectetur. Laudantium fugit placeat iure quia. Qui illum doloremque non dicta saepe quos. Sapiente tempore expedita reiciendis.', 'lime', 'qUwurSL', '9563', '1249', 'https://www.lind.org/id-expedita-ut-cum-nam-adipisci-vero-ipsam', 1, 1, 1, 1, 0, 1, 0, 'public/uploads/product/139.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:38', '2020-11-07 15:42:38'),
(141, 18, 29, 'Avis Corwin', 'B077YCC84H', 'avis-corwin', '46', 'Consequatur id tempore dolor quae consequatur. Esse eum et perferendis dolor fuga. Atque harum suscipit ut commodi consequuntur nemo vitae. Aperiam omnis accusantium quibusdam itaque aut.', 'purple', 'sqbjaSL', '5328', '370', 'http://www.gleason.com/eaque-illum-ullam-iure-dolores.html', 1, 0, 0, 0, 0, 1, 1, 'public/uploads/product/140.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:38', '2020-11-07 15:42:38'),
(142, 20, 37, 'Damian Rempel', 'B078SLLTYS', 'damian-rempel', '28', 'Aut omnis autem est inventore voluptas deleniti. Ducimus sed omnis non incidunt omnis. Odit totam velit enim laudantium occaecati quia.', 'yellow', '5tAadSL', '2122', '3288', 'http://www.zemlak.biz/alias-eum-ullam-autem-laborum-et.html', 1, 1, 0, 0, 0, 0, 0, 'public/uploads/product/141.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:38', '2020-11-07 15:42:38'),
(143, 25, 11, 'Jade Schaefer', 'B0797TPBPQ', 'jade-schaefer', '26', 'Qui totam et qui explicabo dolores sit. Quis et rerum aspernatur laudantium necessitatibus et. Impedit porro a itaque et.', 'maroon', 'fpJVMSL', '2963', '3445', 'http://www.casper.com/', 0, 0, 0, 0, 1, 0, 0, 'public/uploads/product/142.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:38', '2020-11-07 15:42:38'),
(144, 14, 92, 'Fiona Beatty MD', 'B0798P4ZHT', 'fiona-beatty-md', '35', 'Veritatis ullam occaecati ducimus iure. In minus et neque est consequatur quis ab. Quis nisi sequi quas neque unde. Est qui reiciendis facere et et quae.', 'maroon', 't6AlDSL', '4257', '435', 'http://deckow.com/rerum-vero-expedita-nesciunt-consequatur', 0, 1, 0, 0, 0, 0, 0, 'public/uploads/product/143.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:39', '2020-11-07 15:42:39'),
(145, 3, 52, 'Tabitha Stehr V', 'B079HNJLRC', 'tabitha-stehr-v', '31', 'Nihil quod sit accusantium dolor qui id similique. Fugit aliquam inventore omnis vel consequatur perspiciatis dolore eligendi. Expedita beatae sit provident.', 'maroon', 'u8soSSL', '6845', '2820', 'http://batz.biz/et-quis-eum-aut-ea-non-quaerat.html', 1, 0, 1, 0, 0, 0, 1, 'public/uploads/product/144.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:39', '2020-11-07 15:42:39'),
(146, 4, 39, 'Marvin Jones', 'B079HP8774', 'marvin-jones', '50', 'Nesciunt voluptas quaerat rerum perspiciatis sint earum recusandae unde. Ea minus illo sed animi. Facilis optio in nostrum expedita qui non doloremque.', 'olive', 'eQWvwSL', '722', '4966', 'https://rice.com/sit-et-natus-rerum-repudiandae-nulla-fuga-qui.html', 0, 1, 1, 1, 1, 1, 1, 'public/uploads/product/145.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:39', '2020-11-07 15:42:39'),
(147, 21, 22, 'Prof. King Anderson II', 'B079L3TT1L', 'prof-king-anderson-ii', '30', 'Ea molestiae quia nam enim in deserunt quia. Eveniet illum est debitis aperiam dolores dolorem. Nostrum ipsa sit occaecati quae perferendis. Est laudantium itaque est ea quia quisquam eos.', 'olive', 'TzX3iSL', '5981', '442', 'http://schaden.com/', 0, 1, 0, 1, 0, 0, 1, 'public/uploads/product/146.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:40', '2020-11-07 15:42:40'),
(148, 21, 91, 'Dr. Mathilde Wiegand', 'B079Y7RCZ6', 'dr-mathilde-wiegand', '37', 'Quidem sequi nam illum sit. Non voluptatem deleniti repellendus. Voluptates ut molestias repellendus ut dolorem. Similique iure autem qui natus laboriosam.', 'navy', 'JlDWWSL', '4505', '3454', 'http://www.hermiston.com/ipsum-laudantium-est-commodi', 0, 1, 0, 0, 1, 0, 0, 'public/uploads/product/147.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:40', '2020-11-07 15:42:40'),
(149, 14, 27, 'Ethyl Gleason', 'B079Z4VJS7', 'ethyl-gleason', '26', 'Quibusdam rerum voluptatem cumque deleniti atque nam. Eveniet sint provident rerum ipsum natus.', 'olive', 'CVj34SL', '5761', '2854', 'http://www.waelchi.com/doloribus-pariatur-non-sint-aut-natus-vel-tenetur', 1, 1, 1, 0, 1, 1, 1, 'public/uploads/product/148.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:40', '2020-11-07 15:42:40'),
(150, 23, 3, 'Reggie Moore', 'B07BB3FK19', 'reggie-moore', '33', 'Quia cupiditate sint ratione ut eos. Tempore aut ut tenetur illum nisi. Reprehenderit in et facilis eos quisquam iste dolorum.', 'maroon', 'l8dynSL', '530', '248', 'http://www.beer.biz/doloremque-a-illo-dicta-qui.html', 0, 0, 1, 1, 0, 1, 0, 'public/uploads/product/149.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:40', '2020-11-07 15:42:40'),
(151, 16, 3, 'Sasha Langworth MD', 'B07BC63XGB', 'sasha-langworth-md', '29', 'Optio molestiae soluta nihil nam at quia ipsam officia. Molestiae est ab deleniti omnis corporis vero vitae. Doloremque aspernatur dolor quo.', 'maroon', 'T6QBISL', '6664', '4131', 'http://www.considine.com/', 0, 1, 0, 1, 1, 1, 1, 'public/uploads/product/150.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:40', '2020-11-07 15:42:40'),
(152, 8, 46, 'Dr. Levi Skiles IV', 'B07BC6R1M4', 'dr-levi-skiles-iv', '22', 'Eos consequatur autem consectetur eaque. Explicabo aut est sed. Totam atque qui velit voluptatem. Voluptates minus perspiciatis odit ex.', 'maroon', '1KFazSL', '623', '3492', 'http://www.bosco.org/nobis-voluptatem-saepe-minima-distinctio-nostrum-amet', 1, 1, 0, 1, 0, 1, 0, 'public/uploads/product/151.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:41', '2020-11-07 15:42:41'),
(153, 25, 65, 'Riley Kerluke', 'B07BFTTF4D', 'riley-kerluke', '33', 'Necessitatibus explicabo omnis laborum voluptatum doloribus sequi occaecati. Beatae nihil non dolor non est est et. Fugit deserunt commodi quisquam quaerat. Est ut quidem culpa quia.', 'lime', 'EKKHTSL', '5954', '1641', 'http://www.hartmann.com/voluptates-fuga-sed-atque-sint-quae-in-quidem', 0, 0, 1, 1, 1, 0, 1, 'public/uploads/product/152.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:41', '2020-11-07 15:42:41'),
(154, 17, 59, 'Mireille Adams Sr.', 'B07BGVBV8D', 'mireille-adams-sr', '44', 'Molestiae quos et eos labore ducimus. Autem non eos harum voluptate perferendis nisi aut ipsa. Repellendus minus rem ipsum autem dolorem. Eaque autem in officia voluptate consequuntur vitae ut.', 'aqua', '6RVFDSL', '7794', '2137', 'http://aufderhar.com/laudantium-modi-non-quidem-autem-in-nisi-et', 0, 0, 1, 1, 1, 0, 0, 'public/uploads/product/153.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:41', '2020-11-07 15:42:41'),
(155, 17, 39, 'Beulah Gleichner', 'B07BN1H7GW', 'beulah-gleichner', '50', 'Voluptatum consequatur non libero qui doloribus laudantium est est. Molestiae rerum sit mollitia voluptas quam voluptas repudiandae optio. Reprehenderit dignissimos sed qui. Eum et et recusandae molestiae. Earum similique quis laborum suscipit omnis cumque molestiae.', 'maroon', 'LJbbfSL', '3813', '4808', 'http://koepp.info/fugit-possimus-aut-et-dolore-perspiciatis-totam-dicta', 1, 1, 0, 1, 0, 0, 1, 'public/uploads/product/154.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:41', '2020-11-07 15:42:41'),
(156, 6, 28, 'Noemy Stiedemann', 'B07BP4HX5Y', 'noemy-stiedemann', '37', 'Deserunt aut quasi mollitia sed facere velit. Rerum unde aut occaecati dolorem libero. Dolores nemo assumenda dolorem recusandae porro eum voluptatem. Amet quod sed soluta et ullam.', 'fuchsia', 'DsWmVSL', '9359', '3016', 'http://vandervort.com/', 1, 1, 1, 0, 1, 1, 0, 'public/uploads/product/155.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:41', '2020-11-07 15:42:41'),
(157, 4, 7, 'Dr. Bettie McLaughlin', 'B07BPC6F3C', 'dr-bettie-mclaughlin', '32', 'Repellat sapiente esse accusantium ipsa et. In maiores aut enim dolor doloremque quasi. Consequatur tenetur amet dolores maiores commodi nesciunt tempora. Odit non illo rem eligendi quam expedita.', 'aqua', 'bZmA8SL', '5606', '3255', 'https://oconnell.com/nemo-vel-iusto-quasi-dicta-omnis-dolor-et.html', 1, 0, 0, 0, 0, 1, 1, 'public/uploads/product/156.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:44', '2020-11-07 15:42:44'),
(158, 12, 51, 'Marie Fisher', 'B07BRB3XG3', 'marie-fisher', '30', 'Nemo qui dolorem et in et modi esse. Eum praesentium repellat nulla rerum qui. Cum ipsam autem quo quia nesciunt dolorum maiores voluptatibus.', 'navy', 'LxsVfSL', '7283', '3808', 'https://schimmel.biz/ut-amet-ullam-a-accusamus.html', 1, 1, 0, 0, 1, 1, 0, 'public/uploads/product/157.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:44', '2020-11-07 15:42:44'),
(159, 4, 8, 'Mrs. Alta Mraz', 'B07BSHR4KQ', 'mrs-alta-mraz', '33', 'Adipisci similique inventore veniam a qui a voluptatibus dolorum. Libero amet sit sint assumenda consequatur. Dolores qui enim perferendis tenetur iure sequi.', 'yellow', 'srniKSL', '3687', '939', 'http://www.lockman.com/harum-et-vitae-libero-dolor-dicta-qui-accusamus', 1, 1, 1, 1, 1, 0, 1, 'public/uploads/product/158.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:44', '2020-11-07 15:42:44'),
(160, 8, 42, 'Miss Emily Russel', 'B07BSYV84S', 'miss-emily-russel', '46', 'Itaque a in et repellendus ut ipsa ut debitis. Facere laborum repellat doloremque aliquam vel voluptates iusto. Unde dolorem et molestias culpa facilis in ut. Qui cupiditate placeat autem eos molestiae.', 'maroon', 'BwxkKSL', '4456', '2201', 'http://www.lemke.net/', 1, 1, 0, 1, 1, 0, 0, 'public/uploads/product/159.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:45', '2020-11-07 15:42:45'),
(161, 5, 90, 'Nettie Lynch', 'B07BT9C5YP', 'nettie-lynch', '42', 'Dolorem libero ipsam culpa laboriosam enim nesciunt similique ad. Laborum quis nesciunt nihil aspernatur qui a distinctio et. Cum vel nihil eius eaque dolor qui. Maiores eveniet quia natus corrupti explicabo vero non.', 'green', 'YkjNQSL', '9317', '4989', 'https://www.huel.com/nisi-quae-quia-perspiciatis-sint-explicabo-soluta-mollitia', 1, 1, 1, 1, 1, 1, 0, 'public/uploads/product/160.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:45', '2020-11-07 15:42:45'),
(162, 3, 17, 'Alisa Barrows', 'B07BTWQ2QY', 'alisa-barrows', '45', 'Quos sint sunt inventore eum cumque corrupti modi odit. Dolores harum incidunt qui atque. Qui enim eum est voluptas atque qui consequatur provident. Dolorum qui reprehenderit adipisci occaecati. Officiis sunt unde amet eos porro.', 'navy', 'JcWMdSL', '9147', '4197', 'http://www.jacobson.com/', 1, 0, 1, 0, 0, 1, 1, 'public/uploads/product/161.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:45', '2020-11-07 15:42:45'),
(163, 21, 76, 'Khalil Feeney IV', 'B07BVQ55T6', 'khalil-feeney-iv', '40', 'Animi sequi et temporibus voluptatibus ut autem. Et enim ullam consectetur ea aperiam quidem quo nobis. Minus ipsum dolor assumenda beatae sit.', 'aqua', 'LvyAXSL', '5117', '2621', 'http://www.waters.net/', 1, 1, 1, 1, 0, 0, 0, 'public/uploads/product/162.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:45', '2020-11-07 15:42:45'),
(164, 2, 30, 'Ms. Abbey Smitham', 'B07BVQTYJK', 'ms-abbey-smitham', '42', 'Molestias nesciunt distinctio nam rem vel rerum. Molestiae voluptas corporis consequatur minus.', 'maroon', 'EVS69SL', '7051', '2515', 'http://waelchi.com/sit-magnam-tempora-porro-placeat', 0, 1, 0, 0, 1, 1, 1, 'public/uploads/product/163.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:46', '2020-11-07 15:42:46'),
(165, 22, 23, 'Matilde Kiehn', 'B07BW41B14', 'matilde-kiehn', '22', 'Laboriosam itaque optio sunt repellendus. Sint quaerat reiciendis ipsum adipisci nesciunt suscipit. Veritatis voluptatem dolor dolorem sed quis beatae nobis. Dolorem iure et necessitatibus fuga tempora.', 'gray', 'P5OaNSL', '6098', '808', 'http://pagac.com/eum-libero-iure-illo-quaerat-consequatur', 1, 1, 1, 1, 0, 0, 1, 'public/uploads/product/164.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:46', '2020-11-07 15:42:46'),
(166, 19, 86, 'Katharina Spinka', 'B07BXGKQDZ', 'katharina-spinka', '26', 'Soluta repellat quia voluptas quasi eos occaecati. Assumenda dolorum corrupti quisquam cumque. Itaque exercitationem inventore vero rem eum.', 'lime', 'JTCA8SL', '5169', '1491', 'https://www.altenwerth.com/accusantium-enim-similique-sunt-laudantium-rem-ex-fuga', 0, 1, 0, 1, 1, 1, 0, 'public/uploads/product/165.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:46', '2020-11-07 15:42:46'),
(167, 22, 83, 'Marshall Medhurst', 'B07BYJF7L7', 'marshall-medhurst', '33', 'Sit nam aut molestiae soluta cupiditate nesciunt. Ducimus animi delectus maiores ducimus incidunt praesentium. Nihil delectus velit culpa facere.', 'silver', 'OzkixSL', '2834', '4318', 'https://bogisich.com/rerum-ad-voluptatem-qui-nesciunt-quo.html', 0, 1, 1, 1, 1, 1, 0, 'public/uploads/product/166.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:46', '2020-11-07 15:42:46'),
(168, 11, 47, 'Queen Schuppe', 'B07BYLVT71', 'queen-schuppe', '25', 'Consequatur velit explicabo vero repellendus qui. Ipsa rerum assumenda explicabo quam nesciunt dolorum ut est.', 'purple', 'MQetXSL', '7752', '4383', 'http://www.eichmann.net/labore-quod-maxime-nostrum-in.html', 0, 1, 1, 1, 1, 0, 1, 'public/uploads/product/167.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:46', '2020-11-07 15:42:46'),
(169, 12, 66, 'Breanna Fadel', 'B07C1H7W1L', 'breanna-fadel', '30', 'Id debitis qui voluptate. Deserunt illum odio sunt ut. Aut quis nobis qui voluptatem quaerat. Ut aut quibusdam optio quidem. Voluptate voluptas et quod provident.', 'white', 'EwtNmSL', '3240', '4849', 'https://www.sauer.net/sint-quidem-iste-et-est-illum', 0, 1, 0, 1, 0, 1, 1, 'public/uploads/product/168.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:46', '2020-11-07 15:42:46'),
(170, 23, 12, 'Madge Parker', 'B07C1J5FNV', 'madge-parker', '26', 'Ad voluptas dolor similique necessitatibus et quaerat maxime. Autem libero ut repellat aut. Voluptatem et assumenda et adipisci suscipit officiis quam quia. Consequatur ut magni deserunt omnis impedit sunt sit.', 'gray', '3zyxVSL', '5983', '1445', 'http://www.klein.biz/nostrum-quaerat-temporibus-qui-facere-minus-sunt-quos-quidem.html', 0, 0, 1, 0, 0, 1, 1, 'public/uploads/product/169.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:47', '2020-11-07 15:42:47'),
(171, 14, 62, 'Dillan Emard', 'B07C1N3Y8L', 'dillan-emard', '20', 'Voluptas magni aut in dolores dolor. Et id corporis impedit tempore saepe atque et aspernatur. Nam aut et ea et labore. Nihil officiis itaque omnis error.', 'silver', '5mNdBSL', '1626', '2237', 'http://bogan.com/aut-pariatur-eligendi-non-natus', 1, 1, 0, 0, 1, 0, 1, 'public/uploads/product/170.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:47', '2020-11-07 15:42:47'),
(172, 2, 63, 'Shaun Heathcote', 'B07C2S3DMV', 'shaun-heathcote', '49', 'Repellendus laudantium iusto at atque nihil. Corrupti quasi velit repellat exercitationem est expedita minus ex. Omnis beatae at cum fugiat magnam rem.', 'navy', 'WWuGTSL', '8709', '1314', 'http://prohaska.com/fugit-ipsam-quisquam-ullam-nihil-nihil-ipsa.html', 0, 0, 1, 1, 0, 1, 0, 'public/uploads/product/171.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:48', '2020-11-07 15:42:48'),
(173, 17, 39, 'Karson Goyette', 'B07C2SPXMH', 'karson-goyette', '42', 'Enim et sit repellendus. Autem vero sapiente dolorem vero tempore sit. Dolores qui voluptatem alias et architecto.', 'olive', 'kNqU5SL', '2257', '2811', 'http://witting.biz/', 0, 1, 1, 0, 0, 1, 0, 'public/uploads/product/172.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:48', '2020-11-07 15:42:48'),
(174, 2, 30, 'Kaley Kassulke', 'B07C2VR54L', 'kaley-kassulke', '48', 'Id amet excepturi maiores atque ut. Nesciunt rerum repellat et molestiae quo consequuntur officiis. Suscipit et reprehenderit reiciendis perspiciatis in. Nihil rerum occaecati hic recusandae a et praesentium corrupti.', 'fuchsia', 'hUzfeSL', '965', '4023', 'http://www.cruickshank.com/sed-est-rerum-animi-atque-voluptatum-ut-laudantium-earum.html', 1, 0, 0, 0, 0, 1, 1, 'public/uploads/product/173.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:48', '2020-11-07 15:42:48'),
(175, 12, 22, 'Ivory Osinski', 'B07C336J4Q', 'ivory-osinski', '22', 'Alias cumque ea voluptate magnam. Nam iusto laudantium omnis rerum consequatur beatae. Aut dolores molestiae quia. Et rerum non est voluptatem rerum ea nam.', 'green', '0hBP1SL', '8830', '876', 'http://www.dicki.org/accusamus-dignissimos-autem-voluptatum-ipsam-et-sit', 0, 0, 1, 0, 1, 0, 1, 'public/uploads/product/174.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:49', '2020-11-07 15:42:49'),
(176, 12, 58, 'Justus Jones', 'B07C3WCDLL', 'justus-jones', '22', 'Nulla nobis consequatur aut commodi impedit. Possimus sit nesciunt et in voluptatem quod. Nam quis ea et est voluptatem dolor. Iste mollitia impedit recusandae inventore recusandae ex.', 'gray', 'GxjASSL', '7952', '960', 'http://www.dubuque.org/', 1, 1, 1, 0, 1, 1, 0, 'public/uploads/product/175.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:49', '2020-11-07 15:42:49'),
(177, 24, 67, 'Mac Reynolds', 'B07C4PK9MX', 'mac-reynolds', '34', 'Maiores modi voluptates aperiam architecto ipsa eligendi quo. Maxime sed sunt vitae rerum cum. Quos eaque sit molestiae at consequatur quia magnam aspernatur.', 'yellow', '3eGFTSL', '7516', '4179', 'http://herman.info/', 1, 1, 0, 0, 1, 1, 1, 'public/uploads/product/176.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:49', '2020-11-07 15:42:49'),
(178, 6, 30, 'Prof. Rhianna Prosacco', 'B07C5GR9FW', 'prof-rhianna-prosacco', '34', 'Id ullam repellendus est cum et ea vero. Error est ut eligendi dicta distinctio dolores. Et minus provident assumenda. Unde cum culpa fuga eligendi doloribus nihil dolor consequatur.', 'aqua', 'HMBziSL', '8862', '1759', 'http://braun.com/minima-rerum-unde-possimus-non-quaerat-quia-similique', 0, 0, 0, 1, 1, 1, 0, 'public/uploads/product/177.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:49', '2020-11-07 15:42:49'),
(179, 9, 14, 'Maxine Schroeder', 'B07C69T8W6', 'maxine-schroeder', '40', 'Repudiandae perferendis voluptatem aut ipsum molestias eius. Ipsum voluptatum aspernatur et quo occaecati libero dolore. Maxime facere accusantium voluptatem. Soluta aliquam soluta et.', 'yellow', 'rTN4kSL', '8869', '2418', 'http://www.dickinson.com/et-rerum-quos-placeat', 1, 0, 0, 0, 0, 0, 0, 'public/uploads/product/178.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:50', '2020-11-07 15:42:50'),
(180, 22, 55, 'Hank Wiegand', 'B07C6ZB5QG', 'hank-wiegand', '43', 'Libero et et magnam laboriosam et sint. Deleniti sint vel odio ut dicta. Iste in minus provident dolor voluptatem totam. Eius eos soluta qui dignissimos sit laboriosam.', 'yellow', 'mH9F2SL', '2248', '4371', 'http://www.jakubowski.info/', 1, 0, 1, 0, 1, 1, 0, 'public/uploads/product/179.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:50', '2020-11-07 15:42:50'),
(181, 22, 69, 'Addison Flatley', 'B07C7LSGHS', 'addison-flatley', '25', 'Rem aut aut placeat praesentium saepe nulla. Eum omnis et ut accusantium.', 'navy', 'FIHPiSL', '895', '656', 'http://mccullough.com/qui-et-placeat-ducimus-et-expedita-aut.html', 1, 1, 1, 1, 0, 1, 1, 'public/uploads/product/180.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:50', '2020-11-07 15:42:50'),
(182, 4, 69, 'Prof. Brice Crist Jr.', 'B07C7PM7JX', 'prof-brice-crist-jr', '46', 'Voluptatem sit ea tempora placeat. Corporis esse ipsam similique et quae doloribus vero. Dolore repellendus alias pariatur quia. Iste ab ea asperiores recusandae.', 'green', 'eMfFsSL', '6927', '596', 'https://kling.com/et-beatae-est-ut.html', 0, 1, 1, 1, 1, 0, 1, 'public/uploads/product/181.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:50', '2020-11-07 15:42:50'),
(183, 16, 19, 'Russell Kohler', 'B07C7SF5Q8', 'russell-kohler', '30', 'Sit et similique autem repudiandae illum et libero et. Accusamus corporis magnam non qui beatae et quia at. Et quis at accusantium. Sint saepe sed explicabo dolores architecto eum ut.', 'navy', 'pPHh6SL', '3704', '4376', 'http://www.kuhic.com/dolores-delectus-ut-molestias-a-rerum-ea-eius-molestiae.html', 0, 0, 0, 0, 0, 0, 1, 'public/uploads/product/182.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:51', '2020-11-07 15:42:51'),
(184, 24, 7, 'Ila Davis', 'B07C8XGF63', 'ila-davis', '25', 'Eaque commodi quia provident iusto. Nihil quia id repellat. Qui non aspernatur aperiam magnam ipsum quo.', 'aqua', 'PL2JMSL', '5965', '2969', 'http://wisoky.com/est-at-sunt-dolorum-hic', 0, 0, 1, 1, 0, 0, 0, 'public/uploads/product/183.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:51', '2020-11-07 15:42:51'),
(185, 12, 66, 'Jakob O\'Keefe Sr.', 'B07C96N7TM', 'jakob-okeefe-sr', '28', 'Laboriosam et assumenda tenetur deleniti. Quos autem dolor fuga nesciunt sequi sit. Maiores quia impedit consequatur nemo magnam et libero.', 'purple', 'X6Bc8SL', '3866', '4064', 'http://www.okeefe.biz/pariatur-magni-qui-vitae-autem-dolorem-quod.html', 1, 1, 1, 0, 1, 1, 0, 'public/uploads/product/184.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:51', '2020-11-07 15:42:51'),
(186, 5, 44, 'Will Ledner', 'B07C9L2MD2', 'will-ledner', '21', 'Et magnam nostrum ipsam ipsum qui pariatur eius. Vero beatae vitae quod nesciunt illum. Nemo et laboriosam ipsum eligendi et quia. Illo voluptatum adipisci architecto quia facilis expedita.', 'fuchsia', 'xuqMQSL', '6772', '4216', 'http://www.rodriguez.info/et-sunt-maiores-sit-aspernatur-nam', 1, 1, 1, 0, 0, 0, 0, 'public/uploads/product/185.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:51', '2020-11-07 15:42:51'),
(187, 3, 86, 'Ryley Trantow', 'B07CBBD9GJ', 'ryley-trantow', '31', 'Porro vitae distinctio temporibus aperiam laboriosam similique. Quam et voluptatum dolorem facere veniam sint ut.', 'yellow', 'fkgTTSL', '2675', '3684', 'http://www.effertz.org/enim-velit-repudiandae-laudantium-magni', 1, 0, 1, 1, 0, 0, 0, 'public/uploads/product/186.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:51', '2020-11-07 15:42:51'),
(188, 5, 58, 'King Donnelly', 'B07CC5KFF3', 'king-donnelly', '45', 'Cupiditate suscipit dolorem nesciunt harum et et. Ad quia et nihil quo excepturi architecto. Quis deserunt quisquam odio repudiandae quae. Odit amet harum distinctio aliquid.', 'black', 'MCKSYSL', '8383', '3218', 'http://purdy.com/sed-accusantium-voluptas-dolorum-beatae', 1, 0, 0, 0, 0, 1, 0, 'public/uploads/product/187.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:51', '2020-11-07 15:42:51'),
(189, 20, 19, 'Mrs. Margarette Krajcik I', 'B07CG5X4DV', 'mrs-margarette-krajcik-i', '21', 'Facere et est maiores non. Sed et minima ut recusandae recusandae ab.', 'yellow', '29hMoSL', '3939', '768', 'http://runolfsson.net/non-dolores-ab-debitis-hic-cum-numquam-perferendis.html', 0, 1, 1, 1, 1, 0, 0, 'public/uploads/product/188.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:52', '2020-11-07 15:42:52'),
(190, 6, 18, 'Mr. Lula Bradtke', 'B07CL5RH6S', 'mr-lula-bradtke', '49', 'Inventore officia doloribus necessitatibus qui. Labore sunt eum qui quis aut ut. Eveniet nesciunt tempore molestias explicabo maiores vel.', 'maroon', '4vv1sSL', '9065', '3848', 'http://ortiz.com/voluptatem-rerum-vitae-similique-et-sit-voluptas', 0, 1, 0, 0, 1, 0, 1, 'public/uploads/product/189.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:52', '2020-11-07 15:42:52'),
(191, 20, 16, 'Mr. Kameron Stiedemann DVM', 'B07CMC3TBW', 'mr-kameron-stiedemann-dvm', '29', 'Porro eum molestias et ad. Quia provident id aut itaque praesentium. Eius iste sequi ipsum accusamus. Asperiores aliquam alias magni.', 'fuchsia', 'y6xN0SL', '8943', '1549', 'http://moore.com/', 1, 1, 1, 0, 1, 0, 0, 'public/uploads/product/190.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:52', '2020-11-07 15:42:52'),
(192, 7, 58, 'Prof. Kasandra Stark', 'B07CMYXVF6', 'prof-kasandra-stark', '46', 'Quis quod possimus repudiandae et pariatur in. Recusandae illum magni non tenetur doloremque harum sapiente. Accusantium voluptatibus autem aperiam sint enim. Magni dolores sunt odit explicabo.', 'black', 'QEqAiSL', '5073', '4028', 'http://www.quigley.com/', 0, 1, 0, 1, 1, 1, 0, 'public/uploads/product/191.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:52', '2020-11-07 15:42:52');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `code`, `slug`, `qty`, `details`, `color`, `size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `buyone_getone`, `image_one`, `image_two`, `image_three`, `status`, `stock`, `created_at`, `updated_at`) VALUES
(193, 20, 12, 'Pearline Durgan V', 'B07CNRZ41H', 'pearline-durgan-v', '33', 'Quasi dolorem id nemo odit quisquam facere accusantium. Ullam dolorum ut nisi. Tenetur ullam consequatur voluptas ut nihil itaque. Voluptatibus est ut nisi rem ratione reprehenderit dolor.', 'fuchsia', '5NbIvSL', '6439', '800', 'http://schimmel.info/velit-exercitationem-blanditiis-illum-enim-aspernatur', 0, 1, 1, 0, 0, 1, 0, 'public/uploads/product/192.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(194, 8, 10, 'Prof. Pete Ruecker MD', 'B07CRT1T99', 'prof-pete-ruecker-md', '37', 'Ex repellat suscipit excepturi fugit molestiae. Ipsa aut rerum ea ut vel recusandae. Ipsa ratione sint architecto fuga pariatur odio cum.', 'navy', 'jp8CASL', '9812', '952', 'http://block.com/', 1, 1, 1, 1, 1, 0, 1, 'public/uploads/product/193.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(195, 9, 90, 'Sincere Koelpin', 'B07CSLBFVC', 'sincere-koelpin', '49', 'Tempora architecto aut est temporibus perferendis alias iste. Eum inventore placeat cupiditate repudiandae. Accusantium omnis rerum et.', 'blue', '5H6z4SL', '5936', '4516', 'https://www.kovacek.com/nemo-possimus-ducimus-ut-voluptatem-ut-enim-aliquid', 0, 0, 1, 1, 1, 1, 0, 'public/uploads/product/194.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(196, 8, 69, 'Mrs. Teagan Emard V', 'B07CSMGKPW', 'mrs-teagan-emard-v', '46', 'Necessitatibus enim officia et quae. Debitis excepturi ad ut vel non est delectus. Sit facilis aperiam vel similique deleniti. Dolorum dignissimos a quae quia hic occaecati error aut.', 'blue', 'y1P5vSL', '9429', '1527', 'http://conroy.com/', 1, 0, 1, 1, 1, 0, 1, 'public/uploads/product/195.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(197, 17, 37, 'Braeden Bednar', 'B07CX4VT8B', 'braeden-bednar', '43', 'In distinctio iste dolores ducimus ducimus. Est ex asperiores et quasi. Quibusdam accusamus beatae natus autem. Ut dolor voluptatum quasi non nisi.', 'maroon', 'w8XtDSL', '5446', '3685', 'http://www.ankunding.biz/', 0, 1, 1, 1, 0, 1, 1, 'public/uploads/product/196.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(198, 21, 5, 'Lesley Ondricka', 'B07CXYXCLT', 'lesley-ondricka', '22', 'Velit nobis et sunt labore. Aut voluptas dicta beatae blanditiis culpa quidem quia. Dolores minus qui rerum officiis praesentium aut placeat.', 'fuchsia', '5ddG8SL', '3033', '4414', 'https://www.kirlin.info/ut-enim-qui-velit-expedita-vel-qui', 1, 0, 1, 1, 1, 1, 1, 'public/uploads/product/197.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(199, 2, 6, 'Alexandra Lynch', 'B07CXZQSDZ', 'alexandra-lynch', '45', 'Consequuntur laborum doloremque exercitationem possimus id quos omnis. Magni vitae aliquid quam enim incidunt. Nulla deleniti eos dolorem et perferendis in optio. Earum et omnis et odio rerum est deserunt.', 'navy', '5snQeSL', '3733', '4171', 'http://terry.org/', 1, 1, 1, 0, 0, 1, 1, 'public/uploads/product/198.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(200, 3, 59, 'Mr. Lorenz Wisoky', 'B07D2CRJKX', 'mr-lorenz-wisoky', '50', 'Numquam quia qui ut odit consectetur error. Ut non repellendus laudantium consequatur. Voluptatem dolorem dolores reiciendis provident quisquam distinctio voluptatem voluptatem. Corrupti quibusdam voluptatum recusandae expedita rerum.', 'blue', 'WkHJgSL', '6948', '4126', 'http://carroll.com/et-suscipit-voluptas-consectetur-quo-quod', 1, 1, 0, 1, 0, 1, 1, 'public/uploads/product/199.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(201, 22, 38, 'Horacio Rodriguez', 'B07D4C2DZ7', 'horacio-rodriguez', '45', 'In sunt saepe quasi. Ut cupiditate expedita non delectus. Deserunt sed doloremque voluptatibus numquam perferendis optio.', 'olive', 'fFmBKSL', '5072', '3561', 'http://www.dooley.com/', 0, 0, 0, 0, 0, 0, 0, 'public/uploads/product/200.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(202, 16, 84, 'Gussie Littel', 'B07D4CJGNG', 'gussie-littel', '28', 'Repudiandae nulla accusantium enim quas quod aut. Dicta suscipit maxime rerum deleniti necessitatibus. Voluptatibus magnam suscipit mollitia quis sint ut. Voluptatem est tempore dolorem beatae voluptatem similique omnis quia.', 'aqua', 'zm9kPSL', '2796', '1750', 'https://cremin.org/ipsam-sed-asperiores-ex-eaque-et.html', 0, 1, 0, 0, 1, 1, 1, 'public/uploads/product/201.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:53', '2020-11-07 15:42:53'),
(203, 19, 1, 'Mr. Rowan Kreiger PhD', 'B07D6DDQYG', 'mr-rowan-kreiger-phd', '47', 'Ullam error vero ut repudiandae voluptatem aliquid in. Odit provident nobis et quia nihil. Ex nihil nihil veniam ut at. Tempore voluptas cumque tempore. Sunt corporis ut suscipit quam doloremque corrupti porro.', 'silver', 'XnvrbSL', '683', '1488', 'http://adams.info/omnis-sed-accusamus-adipisci-et-qui-et.html', 0, 1, 1, 0, 1, 1, 1, 'public/uploads/product/202.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:54', '2020-11-07 15:42:54'),
(204, 2, 30, 'Mr. Samir Robel', 'B07D9GG444', 'mr-samir-robel', '24', 'Est quaerat incidunt fugiat qui. Similique consequatur dignissimos explicabo culpa. Ex pariatur maxime voluptate repellat.', 'silver', 'V25odSL', '8359', '1136', 'https://johns.com/amet-aut-voluptas-molestiae-possimus-accusantium.html', 1, 0, 1, 0, 0, 0, 0, 'public/uploads/product/203.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:54', '2020-11-07 15:42:54'),
(205, 9, 93, 'Ronny Dietrich I', 'B07DD458VN', 'ronny-dietrich-i', '35', 'Eius magnam iure maxime dolore rerum. Enim non consequatur et velit. Eos praesentium odit aperiam laborum voluptatem eligendi.', 'navy', '2j6TgSL', '4771', '4504', 'https://www.bauch.com/non-accusantium-sequi-tempore-aut-dolores-itaque-distinctio-et', 0, 0, 0, 0, 1, 1, 0, 'public/uploads/product/204.jpg', 'public/uploads/product/two.jpg', 'public/uploads/product/three.jpg', 1, 'Available', '2020-11-07 15:42:55', '2020-11-07 15:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'E-Commerce Application', '2020-12-12 16:51:56', '2020-12-12 16:51:56'),
(2, 'site_title', 'E-Commerce', '2020-12-12 16:51:56', '2020-12-12 16:51:56'),
(3, 'default_email_address', 'admin@admin.com', '2020-12-12 16:51:56', '2020-12-12 16:51:56'),
(4, 'currency_code', 'BDT', '2020-12-12 16:51:56', '2020-12-12 16:51:56'),
(5, 'currency_symbol', 'Tk', '2020-12-12 16:51:56', '2020-12-12 16:51:56'),
(6, 'site_logo', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(7, 'site_favicon', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(8, 'footer_copyright_text', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(9, 'seo_meta_title', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(10, 'seo_meta_description', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(11, 'social_facebook', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(12, 'social_twitter', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(13, 'social_instagram', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(14, 'social_linkedin', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(15, 'google_analytics', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(16, 'facebook_pixels', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(17, 'stripe_payment_method', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(18, 'stripe_key', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(19, 'stripe_secret_key', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(20, 'paypal_payment_method', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(21, 'paypal_client_id', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(22, 'paypal_secret_id', '', '2020-12-12 16:51:57', '2020-12-12 16:51:57'),
(23, 'homepage_header', 'Online Ecommerce', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `sm_id` bigint(20) UNSIGNED NOT NULL,
  `sm_facebook` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_twitter` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_linkedin` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_google` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_pinterest` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_youtube` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_vimeo` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_flickr` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_whatsapp` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_skype` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`sm_id`, `sm_facebook`, `sm_twitter`, `sm_linkedin`, `sm_google`, `sm_pinterest`, `sm_youtube`, `sm_vimeo`, `sm_flickr`, `sm_whatsapp`, `sm_skype`, `sm_status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/uzzalbd.creative', 'https://twitter.com/CreativeSysLtd', 'https://www.linkedin.com/in/creativesystemltd/', '#', '#', '#', NULL, NULL, NULL, NULL, 1, '2020-10-07 12:21:18', '2020-10-14 14:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `icon`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Smartphone', 'fa fa-phone', 'public/uploads/category/SubCat_1603900170.jpg', 'smartphone', 1, '2020-10-28 15:49:31', '2020-10-28 16:13:59'),
(2, 2, 'Nokia', 'fa fa-phone', NULL, NULL, 1, '2020-10-28 16:57:27', '2020-10-28 16:57:27'),
(3, 6, 'Car Care', '', '', 'car-care', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(4, 18, 'Car Electronics & Accessories', '', '', 'car-electronics-accessories', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(5, 6, 'Exterior Accessories', '', '', 'exterior-accessories', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(6, 6, 'Interior Accessories', '', '', 'interior-accessories', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(7, 25, 'Lights & Lighting Accessories', '', '', 'lights-lighting-accessories', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(8, 6, 'Motorcycle & Powersports', '', '', 'motorcycle-powersports', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(9, 17, 'Oils & Fluids', '', '', 'oils-fluids', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(10, 7, 'Paint & Paint Supplies', '', '', 'paint-paint-supplies', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(11, 6, 'Performance Parts & Accessories', '', '', 'performance-parts-accessories', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(12, 22, 'Replacement Parts', '', '', 'replacement-parts', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(13, 8, 'RV Parts & Accessories', '', '', 'rv-parts-accessories', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(14, 17, 'Tires & Wheels', '', '', 'tires-wheels', 1, '2020-11-07 15:40:12', '2020-11-07 15:40:12'),
(15, 17, 'Tools & Equipment', '', '', 'tools-equipment', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(16, 13, 'Automotive Enthusiast Merchandise', '', '', 'automotive-enthusiast-merchandise', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(17, 21, 'Heavy Duty & Commercial Vehicle Equipment', '', '', 'heavy-duty-commercial-vehicle-equipment', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(18, 5, 'Clothing', '', '', 'clothing', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(19, 22, 'Shoes', '', '', 'shoes', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(20, 7, 'Watches', '', '', 'watches', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(21, 12, 'Accessories', '', '', 'accessories', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(22, 18, 'Womens Fashion', '', '', 'womens-fashion', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(23, 4, 'Girls Fashion', '', '', 'girls-fashion', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(24, 2, 'Boys Fashion', '', '', 'boys-fashion', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(25, 22, 'Carryons', '', '', 'carryons', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(26, 13, 'Backpacks', '', '', 'backpacks', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(27, 22, 'Garment bags', '', '', 'garment-bags', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(28, 8, 'Travel Totes', '', '', 'travel-totes', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(29, 15, 'Luggage Sets', '', '', 'luggage-sets', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(30, 9, 'Laptop Bags', '', '', 'laptop-bags', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(31, 10, 'Suitcases', '', '', 'suitcases', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(32, 3, 'Kids Luggage', '', '', 'kids-luggage', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(33, 11, 'Messenger Bags', '', '', 'messenger-bags', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(34, 8, 'Umbrellas', '', '', 'umbrellas', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(35, 12, 'Duffles', '', '', 'duffles', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(36, 6, 'Travel Accessories', '', '', 'travel-accessories', 1, '2020-11-07 15:40:13', '2020-11-07 15:40:13'),
(37, 11, 'Clothing', '', '', 'clothing', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(38, 22, 'Shoes', '', '', 'shoes', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(39, 24, 'Jewelry', '', '', 'jewelry', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(40, 9, 'Watches', '', '', 'watches', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(41, 6, 'Accessories', '', '', 'accessories', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(42, 20, 'School Uniforms', '', '', 'school-uniforms', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(43, 15, 'Womens Fashion', '', '', 'womens-fashion', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(44, 4, 'Mens Fashion', '', '', 'mens-fashion', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(45, 22, 'Girls Fashion', '', '', 'girls-fashion', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(46, 6, 'Baby & Child Care', '', '', 'baby-child-care', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(47, 4, 'Health Care', '', '', 'health-care', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(48, 11, 'Household Supplies', '', '', 'household-supplies', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(49, 16, 'Medical Supplies & Equipment', '', '', 'medical-supplies-equipment', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(50, 10, 'Oral Care', '', '', 'oral-care', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(51, 2, 'Personal Care', '', '', 'personal-care', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(52, 6, 'Sexual Wellness', '', '', 'sexual-wellness', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(53, 7, 'Sports Nutrition', '', '', 'sports-nutrition', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(54, 8, 'Stationery & Gift Wrapping Supplies', '', '', 'stationery-gift-wrapping-supplies', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(55, 3, 'Vision Care', '', '', 'vision-care', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(56, 3, 'Vitamins & Dietary Supplements', '', '', 'vitamins-dietary-supplements', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(57, 20, 'Wellness & Relaxation', '', '', 'wellness-relaxation', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(58, 25, 'Computer Accessories & Peripherals', '', '', 'computer-accessories-peripherals', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(59, 23, 'Computer Components', '', '', 'computer-components', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(60, 1, 'Computers & Tablets', '', '', 'computers-tablets', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(61, 5, 'Data Storage', '', '', 'data-storage', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(62, 17, 'External Components', '', '', 'external-components', 1, '2020-11-07 15:40:14', '2020-11-07 15:40:14'),
(63, 18, 'Laptop Accessories', '', '', 'laptop-accessories', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(64, 9, 'Monitors', '', '', 'monitors', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(65, 19, 'Networking Products', '', '', 'networking-products', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(66, 9, 'Power Strips & Surge Protectors', '', '', 'power-strips-surge-protectors', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(67, 6, 'Printers', '', '', 'printers', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(68, 11, 'Scanners', '', '', 'scanners', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(69, 11, 'Servers', '', '', 'servers', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(70, 23, 'Tablet Accessories', '', '', 'tablet-accessories', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(71, 19, 'Tablet Replacement Parts', '', '', 'tablet-replacement-parts', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(72, 20, 'Warranties & Services', '', '', 'warranties-services', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(73, 14, 'Accessories & Supplies', '', '', 'accessories-supplies', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(74, 11, 'Camera & Photo', '', '', 'camera-photo', 1, '2020-11-07 15:40:15', '2020-11-07 15:40:15'),
(75, 22, 'Car & Vehicle Electronics', '', '', 'car-vehicle-electronics', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(76, 12, 'Cell Phones & Accessories', '', '', 'cell-phones-accessories', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(77, 16, 'Computers & Accessories', '', '', 'computers-accessories', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(78, 22, 'GPS & Navigation', '', '', 'gps-navigation', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(79, 3, 'Headphones', '', '', 'headphones', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(80, 18, 'Home Audio', '', '', 'home-audio', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(81, 11, 'Office Electronics', '', '', 'office-electronics', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(82, 14, 'Portable Audio & Video', '', '', 'portable-audio-video', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(83, 9, 'Security & Surveillance', '', '', 'security-surveillance', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(84, 23, 'Service Plans', '', '', 'service-plans', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(85, 23, 'Television & Video', '', '', 'television-video', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(86, 5, 'Video Game Consoles & Accessories', '', '', 'video-game-consoles-accessories', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(87, 18, 'Video Projectors', '', '', 'video-projectors', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(88, 20, 'Wearable Technology', '', '', 'wearable-technology', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(89, 18, 'eBook Readers & Accessories', '', '', 'ebook-readers-accessories', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(90, 2, 'Activity & Entertainment', '', '', 'activity-entertainment', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(91, 15, 'Apparel & Accessories', '', '', 'apparel-accessories', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(92, 19, 'Baby & Toddler Toys', '', '', 'baby-toddler-toys', 1, '2020-11-07 15:40:16', '2020-11-07 15:40:16'),
(93, 4, 'Baby Care', '', '', 'baby-care', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(94, 22, 'Baby Stationery', '', '', 'baby-stationery', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(95, 9, 'Car Seats & Accessories', '', '', 'car-seats-accessories', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(96, 7, 'Diapering', '', '', 'diapering', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(97, 3, 'Feeding', '', '', 'feeding', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(98, 23, 'Gifts', '', '', 'gifts', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(99, 20, 'Nursery', '', '', 'nursery', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(100, 19, 'Potty Training', '', '', 'potty-training', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(101, 20, 'Pregnancy & Maternity', '', '', 'pregnancy-maternity', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(102, 17, 'Safety', '', '', 'safety', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(103, 1, 'Strollers & Accessories', '', '', 'strollers-accessories', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17'),
(104, 9, 'Travel Gear', '', '', 'travel-gear', 1, '2020-11-07 15:40:17', '2020-11-07 15:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 5,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saidul Islam Uzzal', NULL, 'uzzalbd.creative@gmail.com', NULL, '$2y$10$8Gk4QRWCBe32pzWKoq/7t./Ms0S1NFhWNsJuRekQWue7VCyc74v1S', 1, NULL, '2020-07-09 07:49:33', '2020-07-09 07:49:33'),
(2, 'Rafi Islam', NULL, 'rafi@yahoo.com', NULL, '$2y$10$sL6Jn3ek.VStB.tJsT7cpeVZ1/ZZOn32QonC8FqkarvT.PL1ZzSm6', 4, NULL, '2020-08-31 08:20:06', '2020-08-31 08:20:06'),
(3, 'Musaddik Habib Maruf', NULL, 'maruf@gmail.com', NULL, '$2y$10$HHCe8J/K0kfAJlpgJwPY6.Wsfv/LzAzoEcsGD63X9ZLZ7s9WHXMhy', 3, NULL, '2020-08-31 08:20:58', '2020-08-31 08:20:58'),
(4, 'Rana Khan', NULL, 'khan@gmail.com', NULL, '$2y$10$bQeioAuPQT5SKSPvOGSN8uC16Aj5XggIAmZNfKvx1jwyW4r.Fzow.', 2, NULL, '2020-08-31 08:21:39', '2020-08-31 08:21:39'),
(5, 'Rasel Ahamed', NULL, 'rasel@gmail.com', NULL, '$2y$10$/0Ny2rM.jbKV8HopZeAyWOKJ/vkUs50H6tTtt2FkQUKWBUWjq0Wh.', 3, NULL, '2020-08-31 08:25:29', '2020-08-31 08:25:29'),
(6, 'Mr. Saddam', NULL, 'saddam@gmail.com', NULL, '$2y$12$vM7.vXoxuWylMxHym7HZuevaG9wTsA2fG0L9pHq1hGXAbL4pddD.6', 5, NULL, '2020-09-29 14:48:28', NULL),
(7, 'Musa Bin Somsher', NULL, 'musa@gmail.com', NULL, '$2y$10$yhGz7lAHB.rw4O66rM2UEuj5hNuu5DYZlD9CLwLxmQXMwsqfUGv6S', 4, NULL, '2020-09-29 14:51:06', NULL),
(8, 'Mr. Rock', '01711221133', 'rock@gmail.com', NULL, '$2y$10$ZH2pvMYFquuFODe.wHIvI.KEe3.RFDKAVq5dB4HytQCDBCClkuoYy', 1, NULL, '2020-09-29 14:58:09', NULL),
(9, 'Mr. Gayle', NULL, 'gayle@gmail.com', NULL, '$2y$10$ytZU3QXJayIj1Dje4j6t9.mm6SqkzLEwDZLtmcaWQNZdQeauxIrd.', 5, NULL, '2020-09-29 14:59:34', '2020-09-29 14:59:34'),
(10, 'Faruk Haidar', '01949796940', 'admin@admin.com', NULL, '$2y$10$9Q1hfvpZ9fvAcUMifklmseKM9vFaZjtLW7wAiRlzClTDYKA57KiBm', 6, NULL, '2020-12-09 15:23:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `role_slug`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'superadmin', 1, '2020-09-29 15:06:14', NULL),
(2, 'Admin', 'admin', 1, '2020-09-29 15:11:14', NULL),
(3, 'Author', 'author', 1, '2020-09-29 15:10:46', NULL),
(4, 'Editor', 'editor', 1, '2020-09-29 15:10:47', NULL),
(5, 'Subscriber', 'subscriber', 1, '2020-09-29 15:11:44', NULL),
(6, 'Customer', 'customer', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`ban_id`),
  ADD UNIQUE KEY `ban_slug` (`ban_slug`);

--
-- Indexes for table `basics`
--
ALTER TABLE `basics`
  ADD PRIMARY KEY (`basic_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`ci_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `user_roles_role_name_unique` (`role_name`),
  ADD UNIQUE KEY `user_roles_role_slug_unique` (`role_slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `ban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `basics`
--
ALTER TABLE `basics`
  MODIFY `basic_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `ci_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `sm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
