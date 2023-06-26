-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2023 at 12:51 PM
-- Server version: 5.7.42-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reho`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'olaolumide', 'olajesujuwon@gmail.com', '$2y$10$BEdFhxJw8HVCdc13Dg/lg.1ofL6I7I6iZz15LP1re/hX0a679PF3m', '2023-05-21 15:21:33'),
(3, 'rehomax', 'support@rehomax.com', '$2y$10$gqubdr91Unm9HK/.ZGXNgebq/tLqet96lUcRQFI4OeKBIAsoD5iia', '2023-05-21 17:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `uid` varchar(225) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` text NOT NULL,
  `description` text,
  `link` text,
  `category` varchar(25) NOT NULL,
  `price` varchar(11) NOT NULL DEFAULT '0',
  `sold` enum('no','yes') NOT NULL,
  `blockchain` varchar(25) DEFAULT 'ETH',
  `gasPaid` enum('no','yes') NOT NULL,
  `gasFee` varchar(11) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `boughtBy` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `uid`, `name`, `image`, `description`, `link`, `category`, `price`, `sold`, `blockchain`, `gasPaid`, `gasFee`, `created_by`, `boughtBy`, `created_at`, `updated_at`) VALUES
(1, '1212017488', 'Dynamik', 'https://api.urbancube.net/Storage/assets/9c7363590c9f61b1ecb2e9628f5395d8.png', 'null', NULL, 'collectibles', '5', 'no', 'ETH', 'yes', '1.5', 'olaolumide', NULL, '2023-04-09 16:02:51', '2023-04-09 16:02:51'),
(3, '783912606', 'Cool face', 'https://api.urbancube.net/Storage/assets/b1b247cc3e0b0c23ff0aeaf67dad3f58.png', 'null', NULL, 'art', '2', 'yes', 'ETH', 'yes', '0.6', 'olaolumide', 'jhay', '2023-04-09 16:13:30', '2023-04-09 16:13:30'),
(4, '1167072338', 'Inner Lady', 'https://api.urbancube.net/Storage/assets/e71741642b8a0f7e74fadcda54c1f2ce.png', 'null', NULL, 'art', '3', 'no', 'ETH', 'yes', '0.9', 'olaolumide', NULL, '2023-04-09 16:15:12', '2023-04-09 16:15:12'),
(5, '1730438833', 'Solitary', 'https://api.urbancube.net/Storage/assets/57d585ba4ce90f51f9a36d3e365cfa91.webp', 'null', NULL, 'photography', '30', 'no', 'ETH', 'yes', '9', 'olaolumide', NULL, '2023-04-09 16:18:19', '2023-04-09 16:18:19'),
(6, '1110906960', 'Anonymous 2wedf', 'https://api.urbancube.net/Storage/assets/4f2edbafb6940aebfb925b12b0c907f8.webp', 'null', NULL, 'photography', '90', 'no', 'ETH', 'yes', '27', 'olaolumide', NULL, '2023-04-09 16:20:18', '2023-04-09 16:20:18'),
(8, '1853745314', 'Art', 'https://api.urbancube.net/Storage/assets/19253019bf0a3f2caa29a0c07293bda2.jpeg', 'Art', NULL, 'music', '0.8', 'no', 'ETH', 'no', '0.24', 'Victor98', NULL, '2023-04-10 12:07:29', '2023-04-10 12:07:29'),
(9, '86206313', 'Recruit', 'https://api.urbancube.net/Storage/assets/1d3b66d487eb583ec7f09f22003d934e.png', 'null', NULL, 'art', '12', 'yes', 'ETH', 'yes', '3.6', 'olaolumide', 'jhay', '2023-04-17 08:56:44', '2023-04-17 08:56:44'),
(17, '64372955199867fc9b838d9fb690fe26', 'Fire, Earth, Water, Air', 'https://api.urbancube.net/Storage/assets/aaca0f5eb4d2d98a6ce6dffa99f8254b.webp', 'Master of all four elements...\r\n\r\nAVATAR', NULL, 'art', '1000', 'no', 'ETH', 'no', '300', 'olaolumide', NULL, '2023-04-17 12:46:41', '2023-04-17 12:46:41'),
(18, 'c37debf9eb238dfa203526deb4200fea', 'Avatar Solar', 'https://api.urbancube.net/Storage/assets/57d585ba4ce90f51f9a36d3e365cfa91.webp', 'null', NULL, 'art', '4', 'yes', 'ETH', 'yes', '1.2', 'jhay', 'olaolumide', '2023-04-17 13:34:12', '2023-04-17 13:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` varchar(22) NOT NULL,
  `created_by` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `name`, `image`, `product_id`, `username`, `created_at`, `updated_at`, `price`, `created_by`) VALUES
(4, '93698749', 'Inner Lady', 'https://api.urbancube.net/Storage/assets/e71741642b8a0f7e74fadcda54c1f2ce.png', '1167072338', 'Jenad', '2023-04-18 14:29:00', '2023-04-18 14:29:00', '3', 'olaolumide');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `profile_banner` varchar(255) DEFAULT '/dp.jpg',
  `profile_image` varchar(255) DEFAULT '/dp.jpg',
  `wallet_address` text,
  `gasPrice` int(11) NOT NULL DEFAULT '0',
  `floorPrice` int(11) NOT NULL DEFAULT '0',
  `gasFee` int(11) NOT NULL DEFAULT '0',
  `firstWithdrawal` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `password`, `balance`, `profile_banner`, `profile_image`, `wallet_address`, `gasPrice`, `floorPrice`, `gasFee`, `firstWithdrawal`, `created_at`, `updated_at`) VALUES
(1, 'olaolumide', 'olajesujuwon@gmail.com', '$2y$10$K1syYJ.Rs/EcFzwnFyzasORBfSPIdUV4ow9by7zSq5xD/x6dtaIeu', 0, 'https://api.urbancube.net/Storage/banners/4009ceab174f605b24b3592c96333008.png', 'https://api.urbancube.net/Storage/avatars/aaca0f5eb4d2d98a6ce6dffa99f8254b.webp', '0x474e61713e0284B914EBB67F7b367bd63E53273b', 0, 142, 0, 0, '2023-04-04 11:06:33', '2023-04-04 11:06:33'),
(2, 'Test', 'test@gmail.com', '$2y$10$3p//ludpMSWtZ3gRFH8ObudVPu1i26HIy88bK87CkDx60.0wMLvcS', 0, '\'\\\'/dp.jpg\\\'\'', 'https://api.urbancube.net/Storage/avatars/3e5ca178944df11bc928029cba159691.png', NULL, 0, 0, 0, 1, '2023-04-10 11:44:17', '2023-04-10 11:44:17'),
(3, 'Victor98', 'victortom58@yahoo.com', '$2y$10$eie8KElHJ54fprjxJ6F2u.Z2hjWnUKDk3ZMQIBLDthtmF7HFOyUUe', 0, 'https://api.urbancube.net/Storage/banners/8322ae0ddd3aafec3024fe866a1d6d50.png', 'https://api.urbancube.net/Storage/avatars/9f428e753854543696a57f316292fae6.jpeg', NULL, 0, 0, 0, 1, '2023-04-10 12:03:11', '2023-04-10 12:03:11'),
(4, 'jhay', 'engrolaolumide@gmail.com', '$2y$10$UThTkdhpEwkMnfIJkgpydeHboDqs3bkox0CDjP9LXnWcEHZZNtoQC', 77, 'https://api.urbancube.net/Storage/banners/732cfe05044dd4efec08d52f2d3bba11.png', 'https://api.urbancube.net/Storage/avatars/e366983c94663a462b46039758756d94.jpg', NULL, 0, 4, 0, 0, '2023-04-17 12:53:09', '2023-04-17 12:53:09'),
(5, 'Jenad', 'wisdomak7@gmail.com', '$2y$10$7XvyVOvJZUidtJYdsEk7H.IIAITuIhte4A6kA/2bnsxbNLjgkv4ZG', 0, 'https://api.urbancube.net/Storage/banners/bb8163ba5e82b561deac8f0c5fca6cb1.png', 'https://api.urbancube.net/Storage/avatars/d1493005affd52f9e340ee5efe5712cf.png', 'Xrtrr', 0, 0, 0, 1, '2023-04-17 19:03:01', '2023-04-17 19:03:01'),
(6, 'Tom98', 'victortom98@gmail.com', '$2y$10$wfNjhaunrx9CbKSFt6mQf.KNOiJYl12/WRbLqbcvSWcG.lVQmgmxK', 0, '/dp.jpg', '/dp.jpg', NULL, 0, 0, 0, 1, '2023-05-24 15:29:01', '2023-05-24 15:29:01'),
(7, 'Taliss', 'support@cozmospaxe.com', '$2y$10$rNVAXbOYROJCaNp48IcewO.rRMf3Cd0ZEGaxvr2F5Yb/mcFlRiDn2', 0, '/dp.jpg', '/dp.jpg', 'Fgghxhxhhxhchxjxj', 0, 0, 0, 1, '2023-05-27 06:44:54', '2023-05-27 06:44:54'),
(8, 'Victor77', 'vicortom98@gmail.com', '$2y$10$YczjRpPddU4pbp7/jab7fO0X1sjhlIrMEvrko1Kh90C3MM3l3Ggu.', 0, '/dp.jpg', '/dp.jpg', NULL, 0, 0, 0, 1, '2023-05-28 18:49:58', '2023-05-28 18:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `funding`
--

CREATE TABLE `funding` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `account` varchar(50) NOT NULL,
  `transaction_id` varchar(225) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'processing',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funding`
--

INSERT INTO `funding` (`id`, `username`, `amount`, `account`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jenad', '1', 'Xrtrr', '16502a4cf8df1e74ac06b2721c25bcbd', 'processing', '2023-04-18 14:37:58', '2023-04-18 14:37:58'),
(2, 'Jenad', '100', 'Xrtrr', '0d34d9de3cacf8f3e526b35304a8aa9e', 'processing', '2023-04-25 19:07:45', '2023-04-25 19:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `uid` text NOT NULL,
  `user` varchar(25) NOT NULL,
  `offer` varchar(25) NOT NULL,
  `duration` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `uid`, `user`, `offer`, `duration`, `status`, `updated_at`, `created_at`) VALUES
(1, '783912606', 'jhay', '25', '72', 'accepted', '2023-04-17 13:30:12', '2023-04-17 13:30:12'),
(2, 'c37debf9eb238dfa203526deb4200fea', 'olaolumide', '50', '72', 'accepted', '2023-04-17 13:35:14', '2023-04-17 13:35:14'),
(3, '1110906960', 'Test', '100', '72', 'awaiting response', '2023-04-17 17:59:09', '2023-04-17 17:59:09'),
(4, '1212017488', 'Jenad', '3.5', '72', 'awaiting response', '2023-04-18 14:53:51', '2023-04-18 14:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `phrases`
--

CREATE TABLE `phrases` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `phrase` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phrases`
--

INSERT INTO `phrases` (`id`, `username`, `phrase`, `created_at`) VALUES
(1, 'jhay', 'qw  qw  qw  qw  qw  qw  qw  qw  qw  qw  qw  qw  ', '2023-05-21 17:03:11'),
(2, 'jhay', '1  W  E  R  T  Y  U  I  O  P  A  S  ', '2023-05-21 17:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `transaction_id` varchar(225) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'processing',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`id`, `username`, `amount`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'jhay', '77', '02a1dbec6a789d3401f16c77c4b8c46f', 'declined', '2023-04-17 13:53:01', '2023-04-17 13:53:01'),
(2, 'jhay', '77', '37aa91343dae0d10131c561cc0342756', 'declined', '2023-04-17 13:53:37', '2023-04-17 13:53:37'),
(3, 'olaolumide', '141', 'fc8529edd2e3de3e016bcdf52d01eda8', 'declined', '2023-05-21 16:46:53', '2023-05-21 16:46:53'),
(4, 'olaolumide', '141', '8de95a8df7320ab56f3558e3da727d1e', 'approved', '2023-05-21 16:50:31', '2023-05-21 16:50:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `funding`
--
ALTER TABLE `funding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phrases`
--
ALTER TABLE `phrases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `funding`
--
ALTER TABLE `funding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phrases`
--
ALTER TABLE `phrases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
