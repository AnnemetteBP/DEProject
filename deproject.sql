-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 07:11 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deproject`
--

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
(3, '2018_11_18_161146_create_third_party_games_table', 1),
(4, '2018_11_18_165008_create_user_levels_table', 1),
(5, '2018_11_18_165331_add_user_level_to_user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `third_party_games`
--

CREATE TABLE `third_party_games` (
  `id` int(10) UNSIGNED NOT NULL,
  `game_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` text COLLATE utf8_unicode_ci NOT NULL,
  `picture_url` text COLLATE utf8_unicode_ci NOT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `third_party_games`
--

INSERT INTO `third_party_games` (`id`, `game_name`, `html`, `picture_url`, `plays`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Ice Cream Bar', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=IceCreamBar&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/IceCreamBar/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:01:24', '2018-11-18 19:01:24'),
(4, 'Frozen Bubble', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=FrozenBubble&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/FrozenBubble/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:28:00', '2018-11-18 19:28:00'),
(5, 'Halloween Connect', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=HalloweenConnect&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/HalloweenConnect/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:29:13', '2018-11-18 19:29:13'),
(6, 'Daily Wordoku', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=DailyWordoku&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/DailyWordoku/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:30:54', '2018-11-18 19:30:54'),
(7, 'Crosswords 2', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=Crosswords2&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/Crosswords2/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:37:11', '2018-11-18 19:37:11'),
(8, 'Pizzeria', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=Pizzeria&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/Pizzeria/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:37:36', '2018-11-18 19:37:36'),
(9, 'Airport Management 2', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=AirportManagement2&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/AirportManagement2/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:38:20', '2018-11-18 19:38:20'),
(11, 'Fishing Trip', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=FishingTrip&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/FishingTrip/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:39:18', '2018-11-18 19:39:18'),
(12, 'Happy Connect', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=HappyConnect&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/HappyConnect/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:39:48', '2018-11-18 19:39:48'),
(13, 'Daily Dog Pooh', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=DailyDogPooh&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/DailyDogPooh/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:43:10', '2018-11-18 19:43:10'),
(14, 'Sheep and Wolves', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=SheepAndWolves&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/SheepAndWolves/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:44:13', '2018-11-18 19:44:13'),
(15, 'Medieval Castle Hidden Numbers', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=MedievalCastleHiddenNumbers&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/MedievalCastleHiddenNumbers/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:45:03', '2018-11-18 19:45:03'),
(16, 'Chocolate Shop', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=ChocolateShop&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/ChocolateShop/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:45:59', '2018-11-18 19:45:59'),
(17, 'Rapid Math', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=RapidMath&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/RapidMath/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:46:45', '2018-11-18 19:46:45'),
(18, 'Jolly Jong Connect', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=JollyJongConnect&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/JollyJongConnect/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:47:23', '2018-11-18 19:47:23'),
(19, 'Robot Cross Road', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=RobotCrossRoad&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/RobotCrossRoad/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 19:55:50', '2018-11-18 19:55:50'),
(26, 'Flower Shop', '<div>\r\n<script src=\"https://cdn.htmlgames.com/embed.js?game=FlowerShop&amp;width=800&amp;height=480&amp;bgcolor=white\"></script>\r\n</div>', 'https://cdn.htmlgames.com/FlowerShop/img/icon/image-300x200.jpg', 0, NULL, '2018-11-18 20:17:36', '2018-11-18 20:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_level`) VALUES
(1, 'ampirchert', 'ampirchert@gmail.com', NULL, '$2y$10$EDC3ppwT6GcmON88gnKqF.AWWFXaHTeeFidLvKsfsZVF3DnXrS.ca', '7hKGbJEYyqX2iXuywT6nDIUgqL08wQ3nrIhrhgDUPb3WfCdHBqqJX6sivVXS', NULL, NULL, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `user_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`user_level`) VALUES
('admin'),
('user');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `third_party_games`
--
ALTER TABLE `third_party_games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `third_party_games_game_name_unique` (`game_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_user_level_foreign` (`user_level`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD UNIQUE KEY `user_levels_user_level_unique` (`user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `third_party_games`
--
ALTER TABLE `third_party_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_user_level_foreign` FOREIGN KEY (`user_level`) REFERENCES `user_levels` (`user_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
