-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 04:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

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
(2, 'Women <span class=\"highlight\">Fashion</span>', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit', 'Read', '#', 'banner_2_1602685631.jpg', 1, '8888-women-span-classhighlightfashionspan', '2020-10-14 14:27:11', '2020-10-14 14:27:11');

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
(8, '2020_10_07_193253_create_contact_information_table', 6);

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
(9, 'Mr. Gayle', NULL, 'gayle@gmail.com', NULL, '$2y$10$ytZU3QXJayIj1Dje4j6t9.mm6SqkzLEwDZLtmcaWQNZdQeauxIrd.', 5, NULL, '2020-09-29 14:59:34', '2020-09-29 14:59:34');

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
(5, 'Subscriber', 'subscriber', 1, '2020-09-29 15:11:44', NULL);

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
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`ci_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`sm_id`);

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
  MODIFY `ban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `basics`
--
ALTER TABLE `basics`
  MODIFY `basic_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `ci_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `sm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
