-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2023 at 10:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommercepro`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `quantity`, `price`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(59, 'user', 'user@gmail.com', '12345678901', 'Dhaka', 'Frog', '1', '150', '1686903829.png', '4', '1', '2023-08-30 12:40:59', '2023-08-30 12:40:59'),
(60, 'user', 'user@gmail.com', '12345678901', 'Dhaka', 'Dress', '1', '320', '1686838308.png', '7', '1', '2023-08-30 12:41:01', '2023-08-30 12:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catagory_name`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', '2023-06-09 13:53:21', '2023-06-09 13:53:21'),
(2, 'Toy', '2023-06-09 14:00:27', '2023-06-09 14:00:27'),
(3, 'Mobile', '2023-06-09 14:03:32', '2023-06-09 14:03:32'),
(11, 'Dress', '2023-06-15 02:09:38', '2023-06-15 02:09:38'),
(13, 'Jaket', '2023-08-16 12:14:11', '2023-08-16 12:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_09_052520_create_sessions_table', 1),
(7, '2023_06_09_193746_create_catagories_table', 2),
(8, '2023_06_13_175737_create_products_table', 3),
(9, '2023_06_16_141308_create_carts_table', 4),
(10, '2023_06_17_065007_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(7, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Dress', '3', '280', '1686897025.png', '8', 'cash on delivery', 'delivered', '2023-06-17 03:28:09', '2023-06-17 12:56:32'),
(8, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Dress', '3', '960', '1686838308.png', '7', 'cash on delivery', 'delivered', '2023-06-17 03:28:09', '2023-06-17 12:56:44'),
(9, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Lehenga', '1', '200', '1686897064.png', '9', 'paid', 'delivered', '2023-06-17 03:28:09', '2023-06-17 13:03:54'),
(10, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Shirt', '1', '175', '1686897110.png', '10', 'cash on delivery', 'delivered', '2023-06-17 03:29:39', '2023-06-17 13:00:23'),
(11, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Half Shirt', '1', '150', '1686897152.png', '11', 'cash on delivery', 'You canceled the order', '2023-06-17 03:33:06', '2023-08-12 15:24:45'),
(12, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Lehenga', '4', '800', '1686897064.png', '9', 'Paid', 'You canceled the order', '2023-06-17 09:38:23', '2023-08-12 15:24:43'),
(13, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Half Shirt', '1', '220', '1686923277.png', '12', 'paid', 'delivered', '2023-06-17 09:51:22', '2023-08-10 11:42:48'),
(14, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Half Shirt', '1', '150', '1686897152.png', '11', 'Paid', 'delivered', '2023-06-17 09:51:22', '2023-06-17 13:01:48'),
(15, 'Tanbir Hossain', 'tanbir@gmail.com', '01909371713', 'Dhaka Uttara', '4', 'Dress', '2', '560', '1686897025.png', '8', 'Paid', 'processing', '2023-06-17 12:43:41', '2023-06-17 12:43:41'),
(16, 'Tanbir Hossain', 'tanbir@gmail.com', '01909371713', 'Dhaka Uttara', '4', 'Frog', '1', '150', '1686903829.png', '4', 'Paid', 'processing', '2023-06-17 12:43:41', '2023-06-17 12:43:41'),
(17, 'Tanbir Hossain', 'tanbir@gmail.com', '01909371713', 'Dhaka Uttara', '4', 'Half Shirt', '1', '220', '1686923277.png', '12', 'Paid', 'processing', '2023-06-17 12:43:41', '2023-06-17 12:43:41'),
(18, 'Tanbir Hossain', 'tanbir@gmail.com', '01909371713', 'Dhaka Uttara', '4', 'Frog', '1', '150', '1686903829.png', '4', 'Paid', 'processing', '2023-06-17 12:43:41', '2023-06-17 12:43:41'),
(19, 'Tanbir Hossain', 'tanbir@gmail.com', '01909371713', 'Dhaka Uttara', '4', 'Dress', '3', '840', '1686897025.png', '8', 'Paid', 'processing', '2023-06-17 12:43:41', '2023-06-17 12:43:41'),
(32, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Half Shirt', '1', '150', '1686897152.png', '11', 'paid', 'delivered', '2023-08-15 23:17:47', '2023-08-15 23:18:43'),
(33, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Frog', '1', '150', '1686903829.png', '4', 'Paid', 'processing', '2023-08-16 10:51:46', '2023-08-16 10:51:46'),
(34, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Frog', '1', '150', '1686903829.png', '4', 'cash on delivery', 'processing', '2023-08-16 11:32:08', '2023-08-16 11:32:08'),
(35, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Lehenga', '1', '200', '1686897064.png', '9', 'cash on delivery', 'You canceled the order', '2023-08-16 11:32:08', '2023-08-16 11:32:21'),
(36, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Lehenga', '1', '200', '1686897064.png', '9', 'Paid', 'processing', '2023-08-16 21:14:11', '2023-08-16 21:14:11'),
(37, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Frog', '1', '150', '1686903829.png', '4', 'Paid', 'processing', '2023-08-16 21:14:11', '2023-08-16 21:14:11'),
(38, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Frog', '1', '150', '1686903829.png', '4', 'cash on delivery', 'You canceled the order', '2023-08-16 21:14:33', '2023-08-16 21:14:42'),
(39, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Frog', '1', '150', '1686903829.png', '4', 'cash on delivery', 'processing', '2023-08-16 21:41:19', '2023-08-16 21:41:19'),
(40, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Frog', '4', '600', '1686903829.png', '4', 'cash on delivery', 'processing', '2023-08-16 21:41:19', '2023-08-16 21:41:19'),
(41, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Shirt', '1', '70', '1691764582.png', '1', 'Paid', 'processing', '2023-08-16 21:42:20', '2023-08-16 21:42:20'),
(42, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Frog', '1', '150', '1686903829.png', '4', 'cash on delivery', 'processing', '2023-08-16 22:13:56', '2023-08-16 22:13:56'),
(43, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Dress', '1', '320', '1686838308.png', '7', 'cash on delivery', 'processing', '2023-08-16 22:13:56', '2023-08-16 22:13:56'),
(44, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Shirt', '1', '70', '1691764582.png', '1', 'cash on delivery', 'processing', '2023-08-16 22:13:56', '2023-08-16 22:13:56'),
(45, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Frog', '1', '150', '1686903829.png', '4', 'cash on delivery', 'You canceled the order', '2023-08-16 22:13:56', '2023-08-16 22:14:10'),
(46, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Dress', '1', '280', '1686897025.png', '8', 'cash on delivery', 'processing', '2023-08-29 09:37:12', '2023-08-29 09:37:12'),
(47, 'user', 'user@gmail.com', '12345678901', 'Dhaka', '1', 'Shirt', '1', '70', '1691764582.png', '1', 'cash on delivery', 'processing', '2023-08-29 09:37:12', '2023-08-29 09:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `catagory` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `catagory`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', 'This is a Unique Shirt', '1691764582.png', 'Shirt', '10', '90', '70', '2023-06-14 11:49:09', '2023-08-11 08:36:22'),
(4, 'Frog', 'cool feelings', '1686903829.png', 'Dress', '30', '200', '150', '2023-06-15 02:10:23', '2023-06-16 02:23:49'),
(7, 'Dress', 'Stylish', '1686838308.png', 'Dress', '25', '350', '320', '2023-06-15 08:11:48', '2023-06-15 08:11:48'),
(8, 'Dress', 'Fashionable', '1686897025.png', 'Dress', '30', '280', NULL, '2023-06-16 00:30:25', '2023-06-16 00:30:25'),
(9, 'Lehenga', 'Stylish', '1686897064.png', 'Dress', '10', '230', '200', '2023-06-16 00:31:04', '2023-06-16 00:31:04'),
(10, 'Shirt', 'Style for man', '1686897110.png', 'Shirt', '20', '200', '175', '2023-06-16 00:31:50', '2023-06-16 00:31:50'),
(11, 'Half Shirt', 'Cool', '1686897152.png', 'Shirt', '30', '150', NULL, '2023-06-16 00:32:32', '2023-06-16 00:32:32'),
(12, 'Half Shirt', 'Summer Product', '1686923277.png', 'Shirt', '10', '220', NULL, '2023-06-16 07:47:22', '2023-06-16 07:47:57'),
(13, 'Shirt', 'Good Quality', '1687022386.png', 'Shirt', '20', '200', NULL, '2023-06-17 11:19:46', '2023-06-17 11:19:46'),
(14, 'style shirt', 'good Product', '1691763975.png', 'Shirt', '10', '70', '65', '2023-08-11 08:26:15', '2023-08-11 08:26:15'),
(15, 'Jaket', 'Good For Winter', '1692209701.png', 'Jaket', '30', '220', '200', '2023-08-16 12:15:01', '2023-08-16 12:15:01'),
(16, 'Winter Jaket', 'good for Winter', '1692209750.jpeg', 'Jaket', '25', '300', '250', '2023-08-16 12:15:50', '2023-08-16 12:15:50'),
(17, 'shirt', 'good for style', '1692242248.png', 'Shirt', '30', '399', NULL, '2023-08-16 21:17:28', '2023-08-16 21:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HR15oba9Te9cEqUPf00XP5WCWvComXdiGzmhNhuQ', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Safari/605.1.15', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU1N5Q0o2UExUMlQzV2ZSQ3hFVXRHS3lueHZJR0Q4SXFoamZWNWtvSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9zaG93X29yZGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1693470691);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '12345678901', 'Dhaka', NULL, '$2y$10$YMeJVr9mqHJVEYisQRI6C.gX0UdqxfTY57EBAjy0oEoXhSPJ6Hs7W', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 00:07:05', '2023-06-09 00:07:05'),
(5, 'Tanbir', 'tanbir@gmail.com', '1', '01909371713', 'Dhaka', NULL, '$2y$10$G.sW/29M0.zRB73cbTq/7eZ3G45VJEEt4J65xDxb2N2Z0UjSH.X4u', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-10 11:41:54', '2023-08-11 03:17:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
