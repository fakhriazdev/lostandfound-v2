-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2021 at 03:44 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lostandfound`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `icon_name`) VALUES
(1, 'Electronics', 'laptop-phone.svg'),
(2, 'Backpacks', 'briefcase.svg'),
(3, 'Helms', 'helmet.svg'),
(5, 'Documents', 'postcard.svg'),
(7, 'Wallets', 'wallet.svg');

-- --------------------------------------------------------

--
-- Table structure for table `claims`
--

CREATE TABLE `claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claim_date` datetime NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `post_by` int(11) NOT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `claims`
--

INSERT INTO `claims` (`id`, `product_id`, `user_id`, `status`, `claim_date`, `answer`, `post_by`, `approved_by`, `approved_at`, `cancelled_by`, `cancelled_at`, `created_at`, `updated_at`) VALUES
(83, 5, 8, 'Approved', '2021-07-11 14:00:17', 'sadsadadad', 10, 10, '2021-07-11 14:06:23', NULL, NULL, '2021-07-11 07:00:17', '2021-07-11 07:06:23'),
(87, 18, 8, 'Approved', '2021-07-12 12:27:59', 'pertama', 12, 12, '2021-07-12 12:28:52', NULL, NULL, '2021-07-12 05:27:59', '2021-07-12 05:28:52'),
(88, 18, 8, 'Process', '2021-07-12 12:28:24', 'kedua', 12, NULL, NULL, NULL, NULL, '2021-07-12 05:28:24', '2021-07-12 05:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `claim_products`
--

CREATE TABLE `claim_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `claim_products`
--

INSERT INTO `claim_products` (`id`, `claim_id`, `product_name`, `product_image`, `question`, `product_description`, `status`, `created_at`, `updated_at`) VALUES
(40, 5, 'adadad', 'fender-guitarra-telecaster-player-mn-black_1623299080.jpg', 'adadadada', 'adadada', 'Approved', '2021-07-11 07:00:17', '2021-07-11 07:06:23'),
(41, 17, 'test 1', 'image_1626091600.jpg', 'What size this Helm?', 'tet 1', 'Approved', '2021-07-12 05:09:52', '2021-07-12 05:17:34'),
(42, 18, 'test 2', 'img1_1626091662.jpg', 'apa nama KTP di wallet tersbut', 'test2', 'Approved', '2021-07-12 05:27:59', '2021-07-12 05:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_05_06_174748_create_products_table', 1),
(4, '2021_06_02_160932_create_categories_table', 2),
(5, '2021_06_03_015924_create_users_table', 3),
(6, '2021_06_03_044224_create_locations_table', 4),
(8, '2021_06_05_074033_create_users_table', 5),
(10, '2021_06_07_070456_create_orders_table', 6),
(11, '2021_06_07_074155_create_claims_table', 7),
(12, '2021_06_07_074426_create_claim_products_table', 7),
(14, '2021_06_08_063047_create_claims_table', 8),
(15, '2021_06_08_063258_create_claim_products_table', 9),
(16, '2021_06_08_074228_create_claim_products_table', 10),
(17, '2021_06_08_121149_create_claim_products_table', 11),
(19, '2021_06_09_105312_create_claim_products_table', 12),
(20, '2021_06_10_152512_create_statuses_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `type` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `location` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_image`, `question`, `type`, `category_id`, `location`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'tuh bisa', 'adadada', 'img1_1623300483.jpg', 'what password this phone?', 2, 1, 'Campus D', 10, '2021-06-09 21:48:03', '2021-06-09 21:48:27'),
(7, 'ayam', 'lepas dikampus D', '112359_1623340001.png', 'asdadada', 2, 7, 'Campus D', 10, '2021-06-10 08:46:41', '2021-06-10 08:48:54'),
(8, 'adada', 'addaadad', '765854fcf5a350762c9f6d6cc2d9190b_1623343302.png', 'asdasdas', 2, 1, 'Campus D', 7, '2021-06-10 09:41:42', '2021-06-15 22:06:10'),
(11, 'tuh bisa', 'adada', 'image_1625510535.jpg', 'What size this Helm?', 2, 1, 'Campus D', 10, '2021-07-05 11:42:15', '2021-07-06 03:46:58'),
(12, 'acc', 'dsada', 'fender-guitarra-telecaster-player-mn-black_1625515698.jpg', 'apa nama KTP di wallet tersbut', 2, 1, 'Campus D', 10, '2021-07-05 13:08:18', '2021-07-06 03:58:28'),
(14, 'ada', 'asdad', 'system modeling_1625988804.PNG', NULL, 1, 1, 'Campus D', 8, '2021-07-11 00:33:24', '2021-07-11 00:33:24'),
(15, 'asdsadad', 'sadsadadasd', 'fender-guitarra-telecaster-player-mn-black_1626019972.jpg', 'asdasdadad', 2, 1, 'Campus E', 8, '2021-07-11 09:12:52', '2021-07-11 09:12:52'),
(16, 'Iphone X', 'Ditemukan di parkiran Kampus D', 'img1_1626185754.jpg', 'what password this phone?', 2, 1, 'Campus D', 8, '2021-07-13 07:15:55', '2021-07-13 07:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'Lost'),
(2, 'Founded');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `name`, `email`, `contact`, `photo`, `password`, `remember_token`) VALUES
(7, '2021-06-05 02:09:24', '2021-06-05 02:09:24', 'ASDASDA', 'fakhriaz29@student.gunadarma.ac.id', '0', '', '$2y$10$Z00BC.PlWr9vKSyDHR1tpOWZqy5nkbNSDk0Zlhkburt.bsxBpNuRW', NULL),
(8, '2021-06-05 07:07:21', '2021-06-05 07:07:21', 'fakhriaz', 'bigmrkt@gmail.com', '0', 'download_1626186284.jpg', '$2y$10$Po0Yj/MogQ8AgCB1V3UH7ejYT.BhRRIwPmgyFvx29tnwdfQQh.vUO', NULL),
(9, '2021-06-05 22:30:45', '2021-06-05 22:30:45', 'atika', 'atika@gmail.com', '085156114130', '', '$2y$10$6nYf0yZTh2jCuQJjxUeAHuAsf9f8lJgKhnxF2pz9fLS/Dq4Tch/ki', NULL),
(10, '2021-06-06 05:51:18', '2021-06-06 05:51:18', 'Duyung Mekar', 'duyungmekar@gmail.com', '085156114130', 'download_1626093348.jpg', '$2y$10$C4VepWua583I/LDVJlDdU.stQRgk8bsXF00d07ftCZPoR1JfdWT4e', NULL),
(12, '2021-07-12 00:45:05', '2021-07-12 00:45:05', 'ali thomas', 'aceng@gmail.com', '081717268604', '2_1626080946.PNG', '$2y$10$0lxn9X/vWRFZAoVIWLjwteqElFBqRxKZziPsMCxOGiQz3QyYzz7rC', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claims`
--
ALTER TABLE `claims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `claims_user_id_foreign` (`user_id`),
  ADD KEY `claims_approved_by_foreign` (`approved_by`),
  ADD KEY `claims_cancelled_by_foreign` (`cancelled_by`);

--
-- Indexes for table `claim_products`
--
ALTER TABLE `claim_products`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `claims`
--
ALTER TABLE `claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `claim_products`
--
ALTER TABLE `claim_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `claims`
--
ALTER TABLE `claims`
  ADD CONSTRAINT `claims_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `claims_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `claims_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
