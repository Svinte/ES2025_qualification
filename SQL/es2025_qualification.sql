-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22.08.2024 klo 14:18
-- Palvelimen versio: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `es2025_qualification`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `customers`
--

INSERT INTO `customers` (`id`, `email`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'lawson.labadie@morissette.com', 'Dr.', 'Quigley', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(2, 'qbecker@hotmail.com', 'Prof.', 'Blanda', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(3, 'gail.lowe@simonis.org', 'Alison', 'Stehr', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(4, 'durgan.philip@schmitt.net', 'Guiseppe', 'Bartell', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(5, 'gordon.gutmann@yahoo.com', 'Dr.', 'Zboncak', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(6, 'chandler.robel@wilkinson.com', 'Rogelio', 'Crawford', '2024-08-22 09:10:53', '2024-08-22 09:10:53');

-- --------------------------------------------------------

--
-- Rakenne taululle `failed_jobs`
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
-- Rakenne taululle `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `symbol_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `items`
--

INSERT INTO `items` (`id`, `order_id`, `product_id`, `symbol_id`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 7, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(2, 10, 5, 4, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(3, 8, 1, 9, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(4, 7, 2, 12, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(5, 3, 5, 3, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(6, 1, 6, 8, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(7, 2, 1, 8, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(8, 9, 2, 11, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(9, 1, 1, 4, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(10, 1, 5, 3, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(11, 5, 3, 9, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(12, 4, 5, 3, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(13, 8, 3, 3, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(14, 7, 2, 7, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(15, 6, 5, 11, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(16, 8, 5, 7, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(17, 6, 2, 1, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(18, 2, 4, 4, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(19, 7, 1, 10, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(20, 8, 3, 8, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(21, 9, 2, 12, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(22, 6, 1, 4, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(23, 1, 2, 5, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(24, 8, 4, 9, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(25, 5, 1, 7, '2024-08-22 09:10:53', '2024-08-22 09:10:53');

-- --------------------------------------------------------

--
-- Rakenne taululle `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_22_070826_create_orders_table', 1),
(5, '2024_08_22_073918_create_customers_table', 1),
(6, '2024_08_22_075512_create_symbols_table', 1),
(7, '2024_08_22_075550_create_products_table', 1),
(8, '2024_08_22_090848_create_items_table', 1);

-- --------------------------------------------------------

--
-- Rakenne taululle `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `orders`
--

INSERT INTO `orders` (`id`, `status`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'prepared', 3, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(2, 'open', 6, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(3, 'prepared', 4, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(4, 'open', 6, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(5, 'delivered', 6, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(6, 'delivered', 2, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(7, 'prepared', 6, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(8, 'delivered', 4, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(9, 'delivered', 2, '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(10, 'prepared', 3, '2024-08-22 09:10:53', '2024-08-22 09:10:53');

-- --------------------------------------------------------

--
-- Rakenne taululle `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `path`, `created_at`, `updated_at`) VALUES
(1, 'cup-blue', 'accessories', 'cup-blue.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(2, 'cup-white', 'accessories', 'cup-white.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(3, 'cup-yellow', 'accessories', 'cup-yellow.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(4, 'tshirt-blue', 'tshirt', 'tshirt-blue.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(5, 'tshirt-white', 'tshirt', 'tshirt-white.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(6, 'tshirt-yellow', 'tshirt', 'tshirt-yellow.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53');

-- --------------------------------------------------------

--
-- Rakenne taululle `sessions`
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
-- Vedos taulusta `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('sOSr3ngwbFjKNapCAERwXZtvRRUa7P4AsQAMaFHr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnNiN2FrQTBPRVNOTGd1bDVrbm9tOFFVbFd1bzhibnFIb0ZSQ0t5QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXIvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1724328734);

-- --------------------------------------------------------

--
-- Rakenne taululle `symbols`
--

CREATE TABLE `symbols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `symbols`
--

INSERT INTO `symbols` (`id`, `path`, `created_at`, `updated_at`) VALUES
(1, 'iconmonstr-american-football-2-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(2, 'iconmonstr-basketball-2-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(3, 'iconmonstr-candy-24-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(4, 'iconmonstr-construction-14-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(5, 'iconmonstr-construction-17-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(6, 'iconmonstr-control-panel-23-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(7, 'iconmonstr-crown-19-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(8, 'iconmonstr-fast-food-18-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(9, 'iconmonstr-keyboard-15-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(10, 'iconmonstr-marketing-4-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(11, 'iconmonstr-trash-can-28-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53'),
(12, 'iconmonstr-umbrella-15-240.png', '2024-08-22 09:10:53', '2024-08-22 09:10:53');

-- --------------------------------------------------------

--
-- Rakenne taululle `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shop Admin', 'test@example.com', '2024-08-22 09:10:52', '$2y$12$M6zahqZG5otc7Y4MBde.oOxbV4Xfj9vMxPazyQ4m7lRy7RbSC25gS', 'tgFc7heHeV', '2024-08-22 09:10:53', '2024-08-22 09:10:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

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
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `symbols`
--
ALTER TABLE `symbols`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `symbols`
--
ALTER TABLE `symbols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
