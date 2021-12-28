-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 12:24 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demointeriew`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(111, 9, 'Kellen Leuschke', 'mohr.dayne@example.com', '2021-12-28 03:46:33', '2021-12-28 03:46:33'),
(112, 12, 'Jude Gorczany', 'arne88@example.net', '2021-12-28 03:46:33', '2021-12-28 03:46:33'),
(114, 7, 'Mrs. Anya Simonis I', 'jaqueline22@example.org', '2021-12-28 03:46:33', '2021-12-28 03:46:33'),
(115, 1, 'Ulises Larson', 'khill@example.org', '2021-12-28 03:46:33', '2021-12-28 03:46:33'),
(116, 12, 'Brigitte Wiegand', 'zoila.leuschke@example.net', '2021-12-28 03:46:33', '2021-12-28 03:46:33'),
(117, 9, 'Prof. Elmore Reichel MD', 'hveum@example.org', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(118, 8, 'Francisco Medhurst I', 'just test', '2021-12-28 03:46:34', '2021-12-28 04:13:47'),
(119, 9, 'Prof. Avery Bartoletti', 'archibald.pouros@example.net', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(120, 10, 'Prof. Ryley Moen', 'nicola.kulas@example.org', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(121, 13, 'Turner Zemlak', 'alexandria73@example.com', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(122, 3, 'Miss Erna Kovacek IV', 'blanda.garrett@example.com', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(123, 9, 'Odie Metz', 'rogers.flatley@example.org', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(124, 10, 'Rosetta Herzog', 'dweimann@example.net', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(125, 8, 'Merl Kassulke', 'stephan53@example.com', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(126, 8, 'Velda Sauer MD', 'okeefe.robbie@example.org', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(127, 7, 'Bert Yundt', 'schimmel.missouri@example.com', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(128, 13, 'Mrs. Jaqueline Wilderman', 'quitzon.easton@example.net', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(129, 3, 'Lupe Bartoletti I', 'wisozk.dawson@example.net', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(130, 13, 'Chandler Kulas', 'daron91@example.com', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(131, 11, 'Carlo Kunde MD', 'trudie.roberts@example.com', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(132, 5, 'Deangelo Russel', 'graham.okeefe@example.org', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(133, 5, 'Dedric Wuckert', 'jabshire@example.com', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(134, 3, 'Fiona Barton', 'vladimir76@example.org', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(135, 1, 'Evangeline Welch', 'rowena.murazik@example.com', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(136, 13, 'Dr. Frances Hintz', 'loy.terry@example.net', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(137, 1, 'Prof. Tiara Ward', 'elda22@example.org', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(138, 1, 'Trace Bosco', 'elsa.marks@example.net', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(139, 4, 'Jacynthe Corkery MD', 'mbled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versio', '2021-12-28 03:46:34', '2021-12-28 04:09:34'),
(140, 2, 'Clifton Baumbach', 'just test', '2021-12-28 03:46:34', '2021-12-28 04:20:48'),
(141, 13, 'Ms. Estrella Goyette I', 'delaney06@example.net', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(142, 4, 'Prof. Caesar Cremin', '000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '2021-12-28 03:46:34', '2021-12-28 04:09:53'),
(143, 5, 'Prof. Percy Larson Sr.', 'koch.olga@example.com', '2021-12-28 03:46:34', '2021-12-28 03:46:34'),
(144, 12, 'Dr. Riley Torp', 'jaiden15@example.com', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(145, 8, 'Bernardo Monahan IV', 'aufderhar.vivian@example.net', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(146, 12, 'Hilma Corwin IV', 'alittel@example.org', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(148, 5, 'Ahmed Fahey', 'georgiana.lynch@example.org', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(149, 9, 'Jimmy Murray', 'justine.lynch@example.net', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(150, 3, 'Noble Larkin Jr.', 'odie.wilkinson@example.org', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(151, 11, 'Arjun Rice', 'hahn.gerda@example.org', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(152, 5, 'Pete Williamson', 'gene94@example.net', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(153, 10, 'Dr. Myron Homenick DVM', 'dorian.lindgren@example.net', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(154, 4, 'Mr. Davonte Bode I', 'y have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum ge', '2021-12-28 03:46:35', '2021-12-28 04:10:01'),
(155, 8, 'Prof. Chelsey Becker III', 'rosendo.mclaughlin@example.org', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(156, 8, 'Jamal Ferry', 'schumm.dariana@example.com', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(157, 1, 'Rosie Williamson', 'alfreda.hyatt@example.net', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(158, 12, 'Dora Welch', 'spencer.mayer@example.org', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(159, 9, 'Myrl Bosco', 'rosemary.bruen@example.net', '2021-12-28 03:46:35', '2021-12-28 03:46:35'),
(160, 1, 'Miss Tatyana Rutherford IV', 'florida.larkin@example.com', '2021-12-28 03:46:35', '2021-12-28 03:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_12_28_070957_create_jobs_table', 2),
(4, '2021_12_28_083839_create_blogs_table', 3);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=>Deactive  1=>Active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `dob`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jayesh', 'jayesh123@gmail.com', '$2y$10$Okhw9F9HftYL3HXvZalE3.7DNnw0PmCeDf/zl..9rZXDUayY6XwJq', '2021-12-09', 1, '5f7IGD8iMscGOEusyLm2TlhWpVBCCsZa6nMj28BmWIMXJ9lrALnvHciHUYgJ', '2021-12-28 01:42:58', '2021-12-28 02:30:06'),
(2, 'ac', 'sdf@gmail.com', '$2y$10$eRYt7pBqM30lw3P7DdEfuOeI.gDdSHMdIfsRuteU6zI5jv6hTiS8O', '2021-12-10', 1, 'JEZUlXzf7fREOeNEyjRajblDP7AbKCnUdbPFuy9teFNHtmefalqmQjKdzN9Y', '2021-12-28 01:45:25', '2021-12-28 04:19:41'),
(3, 'ac', 'acs@gmail.com', '$2y$10$pe8EWYuYzWWSzBVUQ.WXt.7i4ndbU2.3cTCuQ3UM0pcLqqwQpXp.e', '2021-12-10', 1, 'bwnMb1zaQA8OW3XdcasA71tuFk7cMjak0duE9NNtQoosKB0w55XvUr9Qr0eJ', '2021-12-28 01:48:45', '2021-12-28 02:43:27'),
(4, 'test12', 'test123@gmail.com', '$2y$10$uLwu5nn1UiscSA0Wr208t.sCdnVpKic7FyTOi8KfrJab/uB39/oI2', '2021-12-15', 0, 'Fdul6UuzbCArugtjWm6esn84i4BCiMXZ8PetYbETmH3ARfoLxp2Y0GHjZrAf', '2021-12-28 01:51:45', '2021-12-28 03:04:40'),
(5, 'kl', 'kl@gmail.com', '$2y$10$qSqqJQhTS1ohXxAe4uIt0eCYVTVDhvaK/VRgYH4jRlZQkM.fZaLQm', '2021-12-15', 1, 'g3cW5EUqt7PUHNb7gfh3NLwIccFciagZ3ss4qfitCqgncNAIkhPibVWpHhCr', '2021-12-28 01:55:46', '2021-12-28 02:40:58'),
(6, 'rahu', 'rahu@gmail.com', '$2y$10$IyxsQ4ciT0aS/wOaa64h1OrUBj1DhnBNIG.2aZ8yMLix6vtIVy8hq', '2021-12-14', 0, 'iigDBrBzPDofVKYR3OynT080zy0rFRpU6UXcPAND41cMGGdQYQTX8cAx12DH', '2021-12-28 01:59:30', '2021-12-28 01:59:30'),
(7, 'rahu', 'rahu1@gmail.com', '$2y$10$36zIRsbH8Ijn558xfhHxTenxJN6jmsObtRqVoa1cYPQyOPqxNVsGq', '2021-12-14', 0, 'QFrp9FfXNdXWRvFkOSZ3K1Nq9z5YV7h15guaEdQkAqr7KvExk9o9PfVkgB3F', '2021-12-28 02:00:37', '2021-12-28 02:00:37'),
(8, 'new', 'new@gmail.com', '$2y$10$xE2gxBKQkjMGbFWt92DE9O3HQKHJGCx5fWy4OKcgvUSfiATwABSp.', '2021-12-11', 0, 'YxFVH3DCxHZcjmpdTAfjk64uKxPNtiWKeE3uNU6WR0Tuj83m3suK9HXgGFvS', '2021-12-28 02:01:36', '2021-12-28 02:01:36'),
(9, 'new1', 'new123@gmail.com', '$2y$10$CfW6LuB2XlBjHHVu2Ib77.DZfAEnY6ZJ.6IcrkqlU0v87cj8pppV6', '2021-12-02', 0, NULL, '2021-12-28 02:03:22', '2021-12-28 02:03:22'),
(10, 'new1', 'new1234@gmail.com', '$2y$10$uCQQKpEy1FiEyS128AhlhOI0vVNXA1Ki/kzW6l8dQMSBKZg6Sz5ou', '2021-12-02', 0, 'AikVtRr5H0C3ZmF7FMIuD8PdzGdXbXXCyw8U1pzSGGP96HOYkHtHjooAieYM', '2021-12-28 02:03:48', '2021-12-28 02:03:48'),
(11, 'jay', 'jay56@gmail.com', '$2y$10$pQlWu8nT8/kpJ14iuQ1TaOz259nh4eNpUegdTQErtbm1sdRX00rze', '2021-12-18', 0, '2YD3zi8DWbJGbTYz2bPQmZBccqJzJxow5gC9IevS7n1zuLyyRetYxAe2KR2h', '2021-12-28 02:05:22', '2021-12-28 02:05:22'),
(12, 'jk', 'jk@gmail.com', '$2y$10$ZOACZ5R33uYXfieR59dC/.w.OjJYICAy05CMJ4A72hZPQy8s0ArrK', '2021-12-04', 1, 'CUVbQ0tG8Hewr2VD5Onang4FneRZRwPG36CRFoPz9QwOwEmO3nVT17gcDDP9', '2021-12-28 02:07:40', '2021-12-28 02:07:40'),
(13, 'lk', 'lkq@gmail.com', '$2y$10$AGly0aQD4i0yCUYeoYgL0uBGVKTsEThHlUyA/wMOQZEDN/oCFj6SG', '2021-12-04', 1, 'PnmPWuA0jc33Nmz9b60brNkA2f5uQmCeWw1ddsNyD0Xt5rX4mpMhd7BIzmni', '2021-12-28 02:10:03', '2021-12-28 02:10:03'),
(14, 'Julia', 'julia@gmail.com', '$2y$10$JQ5CHD90bOE.XcbGyicHkev8w1NfyenIjrhygLcvQs/bgs7/RbVAO', '2021-12-03', 0, NULL, '2021-12-28 04:26:43', '2021-12-28 04:26:43'),
(15, 'Julia', 'julia123@gmail.com', '$2y$10$8kR8oVpykFEimVkDb3hojuW5xhkAyDYrY/Z6VInFDpnXtyiOpyetu', '2021-12-03', 0, NULL, '2021-12-28 04:27:20', '2021-12-28 04:27:20'),
(16, 'Julia', 'julia1234@gmail.com', '$2y$10$2Iu1uJjicbHTTwVAd78.p.ogHMcDV4tQqso7uMztWSeGNIIqeWCBO', '2021-12-03', 0, 'CSeQRuZkgu20QiGbsAbudd70n7CttK4HA5sVsdQOVtqnZa6OzSbJasQ5Hhma', '2021-12-28 04:29:16', '2021-12-28 04:29:16'),
(17, 'aarti', 'arti@gmail.com', '$2y$10$t9moQjK6PhVs0c5iOzKJ5ecvnnGM7HvUGonbU9tGhvlj4WMWP2RP.', '2021-12-03', 0, 'xwt2JJPsiKFQqpQ2mH1sP8qaKAoczVSN3HzZrpodXUps6N774PuDBCmwJbPY', '2021-12-28 04:32:21', '2021-12-28 04:32:21'),
(18, 'Hiren', 'hiren@gmail.com', '$2y$10$Bni4vGkB6IoPYn39nJVY7.2GVI0iQyB/XRerEnFFW52a2B77tHUYu', '2021-12-04', 0, '0QHvu1Gsw82u1J10kO48R3dGi6TaxdaTnaOPsqNLmEcvoQX5M56lmmIDLSk6', '2021-12-28 04:47:18', '2021-12-28 04:47:18'),
(19, 'kiran', 'kiran@gmail.com', '$2y$10$Y.9f50a2mfKn2jvMCCFzb.N6V7249gt1abx3I7I2m5I1AMS7Cw4ra', '2021-12-03', 0, 'ePtgcvQJ7yKiI5tAZnjMxOLtVX57ZWGRYWCeZrwjFteGRwnWsduKtv8qZ0ne', '2021-12-28 05:06:40', '2021-12-28 05:06:40'),
(20, 'vijan', 'vi12@gmail.com', '$2y$10$KjUgDZJPvF/jsAoiu1sEZ.AGKo07tw5bAGc55A7sKVbAtzQSwt7tG', '2021-12-07', 0, 'rbyRppLqCBFLYVJlX6js0htaqjRBI3CG342lgmLxmUMpP06C4bYPZgRGxB5k', '2021-12-28 05:08:26', '2021-12-28 05:08:26'),
(21, 'vishal', 'vishal@gmail.com', '$2y$10$cdjuAI6v01JkEk99Q6ZF8uLGC4et9vYI/8RnPvStdL38YStaymJN6', '2021-12-03', 0, 'scPpM7qYCMYeHbxBsIk6SfT7192RXtVRPSg1LATZgsbmP2f93FThOSmZCI7I', '2021-12-28 05:36:39', '2021-12-28 05:36:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
