-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2019 at 01:43 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notification_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Notification One', 'Notification One Description', '2019-03-07 04:11:00', '2019-03-07 04:11:00'),
(2, 1, 'Notification One', 'Notification One Description', '2019-03-07 04:11:38', '2019-03-07 04:11:38'),
(3, 2, 'Notification One', 'Notification One Description', '2019-03-09 02:01:29', '2019-03-09 02:01:29'),
(4, 2, 'Notification One', 'Notification One Description', '2019-03-09 02:02:16', '2019-03-09 02:02:16'),
(5, 2, 'Notification One', 'Notification One Description', '2019-03-09 02:04:50', '2019-03-09 02:04:50'),
(6, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:01:08', '2019-03-09 04:01:08'),
(7, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:44:08', '2019-03-09 04:44:08'),
(8, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:48:15', '2019-03-09 04:48:15'),
(9, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:48:30', '2019-03-09 04:48:30'),
(10, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:48:36', '2019-03-09 04:48:36'),
(11, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:54:48', '2019-03-09 04:54:48'),
(12, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:56:12', '2019-03-09 04:56:12'),
(13, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:56:53', '2019-03-09 04:56:53'),
(14, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:57:43', '2019-03-09 04:57:43'),
(15, 2, 'Notification One', 'Notification One Description', '2019-03-09 04:58:01', '2019-03-09 04:58:01'),
(16, 1, 'Notification One', 'Notification One Description', '2019-03-09 05:01:08', '2019-03-09 05:01:08'),
(17, 1, 'Notification One', 'Notification One Description', '2019-03-09 05:01:35', '2019-03-09 05:01:35'),
(18, 1, 'Notification One', 'Notification One Description', '2019-03-09 05:01:53', '2019-03-09 05:01:53'),
(19, 1, 'Notification One', 'Notification One Description', '2019-03-09 05:02:28', '2019-03-09 05:02:28'),
(20, 1, 'Notification One', 'Notification One Description', '2019-03-09 05:02:34', '2019-03-09 05:02:34'),
(21, 1, 'Notification One', 'Notification One Description', '2019-03-09 05:13:41', '2019-03-09 05:13:41'),
(22, 1, 'Notification One', 'Notification One Description', '2019-03-09 05:30:54', '2019-03-09 05:30:54'),
(23, 1, 'Notification One', 'Notification One Description', '2019-03-09 06:03:58', '2019-03-09 06:03:58'),
(24, 1, 'Notification One', 'Notification One Description', '2019-03-09 06:04:30', '2019-03-09 06:04:30'),
(25, 1, 'Notification One', 'Notification One Description', '2019-03-09 06:04:35', '2019-03-09 06:04:35'),
(26, 1, 'Notification One', 'Notification One Description', '2019-03-09 06:04:38', '2019-03-09 06:04:38'),
(27, 1, 'Notification One', 'Notification One Description', '2019-03-09 06:05:25', '2019-03-09 06:05:25'),
(28, 1, 'Notification One', 'Notification One Description', '2019-03-09 06:37:48', '2019-03-09 06:37:48');

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
(3, '2019_03_07_094550_create_notifications_table', 1),
(4, '2019_03_07_094702_create_lessons_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00a7f357-4a66-47ac-b6a0-3202c9a841e1', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":3,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 08:01:29\",\"updated_at\":\"2019-03-09 08:01:29\"}}', NULL, '2019-03-09 02:01:29', '2019-03-09 02:01:29'),
('0903e488-76fb-44a6-9844-ebda5848ec70', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":7,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:44:08\",\"updated_at\":\"2019-03-09 10:44:08\"}}', NULL, '2019-03-09 04:44:08', '2019-03-09 04:44:08'),
('12908253-0bce-4ba8-a65c-5730b8470d59', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":16,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:01:08\",\"updated_at\":\"2019-03-09 11:01:08\"}}', '2019-03-09 06:15:37', '2019-03-09 05:01:08', '2019-03-09 06:15:37'),
('163fa358-d853-482f-a47e-647490d43ee4', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":26,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:04:38\",\"updated_at\":\"2019-03-09 12:04:38\"}}', '2019-03-09 06:18:35', '2019-03-09 06:04:38', '2019-03-09 06:18:35'),
('23793af1-f5cd-4d48-9abb-0d65a67a8cd2', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":10,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:48:36\",\"updated_at\":\"2019-03-09 10:48:36\"}}', '2019-03-09 06:18:35', '2019-03-09 04:48:36', '2019-03-09 06:18:35'),
('24aeca1b-d733-4bc7-b90b-92429e2025e7', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":13,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:56:53\",\"updated_at\":\"2019-03-09 10:56:53\"}}', NULL, '2019-03-09 04:56:53', '2019-03-09 04:56:53'),
('2e453d52-2d81-428f-bd49-e0100b93cc1b', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":27,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:05:25\",\"updated_at\":\"2019-03-09 12:05:25\"}}', '2019-03-09 06:18:35', '2019-03-09 06:05:26', '2019-03-09 06:18:35'),
('3d3f7ac1-f070-46c3-870d-f789364cd0ab', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":9,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:48:30\",\"updated_at\":\"2019-03-09 10:48:30\"}}', '2019-03-09 06:18:35', '2019-03-09 04:48:30', '2019-03-09 06:18:35'),
('43bd8c59-5df6-4648-be73-a2dfba4fe041', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":25,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:04:35\",\"updated_at\":\"2019-03-09 12:04:35\"}}', '2019-03-09 06:18:35', '2019-03-09 06:04:35', '2019-03-09 06:18:35'),
('4ec73673-0947-4227-8ff9-f1b5aa64233a', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":17,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:01:35\",\"updated_at\":\"2019-03-09 11:01:35\"}}', '2019-03-09 06:18:35', '2019-03-09 05:01:36', '2019-03-09 06:18:35'),
('51f7f187-44ba-4b80-9db2-28013f95e64a', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":18,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:01:53\",\"updated_at\":\"2019-03-09 11:01:53\"}}', '2019-03-09 06:18:35', '2019-03-09 05:01:53', '2019-03-09 06:18:35'),
('544f1dc6-dfc2-4c1e-ad42-0c011836a5d0', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":23,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:03:58\",\"updated_at\":\"2019-03-09 12:03:58\"}}', '2019-03-09 06:04:44', '2019-03-09 06:03:58', '2019-03-09 06:04:44'),
('5ca9dd1b-5da3-4469-b30d-ef55f214a60b', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":23,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:03:58\",\"updated_at\":\"2019-03-09 12:03:58\"}}', '2019-03-09 06:18:35', '2019-03-09 06:03:59', '2019-03-09 06:18:35'),
('5d1a8d9c-8a3a-490c-b280-e63204483809', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":14,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:57:43\",\"updated_at\":\"2019-03-09 10:57:43\"}}', '2019-03-09 06:18:35', '2019-03-09 04:57:43', '2019-03-09 06:18:35'),
('6f4848b9-fee4-4154-8d22-f5580ea0edf7', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":3,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 08:01:29\",\"updated_at\":\"2019-03-09 08:01:29\"}}', '2019-03-09 06:18:35', '2019-03-09 02:01:30', '2019-03-09 06:18:35'),
('728c6c91-3bf0-4cf8-8bdc-cd7f5e8e26ef', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":8,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:48:15\",\"updated_at\":\"2019-03-09 10:48:15\"}}', NULL, '2019-03-09 04:48:16', '2019-03-09 04:48:16'),
('72a801fe-af41-4b7e-98b4-d01c55beb8e2', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":22,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:30:54\",\"updated_at\":\"2019-03-09 11:30:54\"}}', '2019-03-09 05:52:14', '2019-03-09 05:30:54', '2019-03-09 05:52:14'),
('72e82154-24b2-4a0b-a040-274708e3321b', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":2,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-07 10:11:38\",\"updated_at\":\"2019-03-07 10:11:38\"}}', '2019-03-09 06:18:35', '2019-03-07 04:11:38', '2019-03-09 06:18:35'),
('74e27edc-4da2-401a-b6d4-7fe7b0598c2b', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":14,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:57:43\",\"updated_at\":\"2019-03-09 10:57:43\"}}', NULL, '2019-03-09 04:57:43', '2019-03-09 04:57:43'),
('78972ac9-8664-49fc-b52c-94ee23764da3', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":28,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:37:48\",\"updated_at\":\"2019-03-09 12:37:48\"}}', NULL, '2019-03-09 06:37:48', '2019-03-09 06:37:48'),
('7bab60dc-b6af-4b9d-9e39-298f262aaa5d', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":18,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:01:53\",\"updated_at\":\"2019-03-09 11:01:53\"}}', '2019-03-09 06:15:37', '2019-03-09 05:01:53', '2019-03-09 06:15:37'),
('7f3ffde3-9a0f-4577-9560-cd6db31f7b06', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":6,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:01:08\",\"updated_at\":\"2019-03-09 10:01:08\"}}', '2019-03-09 06:18:35', '2019-03-09 04:01:10', '2019-03-09 06:18:35'),
('8a30b7cb-0a87-43ca-86bf-ce0fd54f5b27', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":13,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:56:53\",\"updated_at\":\"2019-03-09 10:56:53\"}}', '2019-03-09 06:18:35', '2019-03-09 04:56:53', '2019-03-09 06:18:35'),
('8aa46b4a-3772-453e-a917-659037c09469', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":24,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:04:30\",\"updated_at\":\"2019-03-09 12:04:30\"}}', '2019-03-09 06:18:35', '2019-03-09 06:04:31', '2019-03-09 06:18:35'),
('8d194b81-813d-4d0a-a2d7-aa7d371d697b', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":6,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:01:08\",\"updated_at\":\"2019-03-09 10:01:08\"}}', NULL, '2019-03-09 04:01:08', '2019-03-09 04:01:08'),
('8edf4901-a59c-4f20-a542-0f413a20423c', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":16,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:01:08\",\"updated_at\":\"2019-03-09 11:01:08\"}}', '2019-03-09 06:18:35', '2019-03-09 05:01:09', '2019-03-09 06:18:35'),
('8f84b5ef-2eb6-4903-b3af-0773ee0d0259', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":11,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:54:48\",\"updated_at\":\"2019-03-09 10:54:48\"}}', NULL, '2019-03-09 04:54:48', '2019-03-09 04:54:48'),
('8fa62bc6-029f-4685-85d7-72dd826722db', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":15,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:58:01\",\"updated_at\":\"2019-03-09 10:58:01\"}}', '2019-03-09 06:18:35', '2019-03-09 04:58:02', '2019-03-09 06:18:35'),
('921acb63-ec6b-48e8-a689-36804944535c', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":2,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-07 10:11:38\",\"updated_at\":\"2019-03-07 10:11:38\"}}', '2019-03-09 05:56:20', '2019-03-07 04:11:38', '2019-03-09 05:56:20'),
('9283bfaa-f69a-4921-9a55-31c1d40884c4', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":9,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:48:30\",\"updated_at\":\"2019-03-09 10:48:30\"}}', NULL, '2019-03-09 04:48:30', '2019-03-09 04:48:30'),
('96d5e2bc-1df9-4b05-b51d-188b6ba2b6ee', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":10,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:48:36\",\"updated_at\":\"2019-03-09 10:48:36\"}}', NULL, '2019-03-09 04:48:36', '2019-03-09 04:48:36'),
('9db2dfc4-e729-414b-b58e-7ed768a15ede', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":8,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:48:15\",\"updated_at\":\"2019-03-09 10:48:15\"}}', '2019-03-09 06:18:35', '2019-03-09 04:48:16', '2019-03-09 06:18:35'),
('9df959e5-f233-4fa5-bb94-c0f22ce22d50', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":15,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:58:01\",\"updated_at\":\"2019-03-09 10:58:01\"}}', NULL, '2019-03-09 04:58:01', '2019-03-09 04:58:01'),
('9ebac46c-fcf8-477f-b0e1-066a4afd443c', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":11,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:54:48\",\"updated_at\":\"2019-03-09 10:54:48\"}}', '2019-03-09 06:18:35', '2019-03-09 04:54:49', '2019-03-09 06:18:35'),
('9efadf03-b676-4bcd-88a5-3322c6ee9672', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":28,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:37:48\",\"updated_at\":\"2019-03-09 12:37:48\"}}', '2019-03-09 06:41:28', '2019-03-09 06:37:48', '2019-03-09 06:41:28'),
('a0e9a55b-8879-4c03-b4ad-087686d43d44', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":5,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 08:04:50\",\"updated_at\":\"2019-03-09 08:04:50\"}}', '2019-03-09 06:18:35', '2019-03-09 02:04:50', '2019-03-09 06:18:35'),
('a6c0133e-43f8-49d1-aa92-7246fff1c0a0', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":17,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:01:35\",\"updated_at\":\"2019-03-09 11:01:35\"}}', '2019-03-09 06:15:37', '2019-03-09 05:01:35', '2019-03-09 06:15:37'),
('aa67849e-3e37-442d-90e4-979ace965182', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":22,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:30:54\",\"updated_at\":\"2019-03-09 11:30:54\"}}', '2019-03-09 06:18:35', '2019-03-09 05:30:55', '2019-03-09 06:18:35'),
('afc6b3cc-3362-444d-9dff-783ba374b8ee', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":4,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 08:02:16\",\"updated_at\":\"2019-03-09 08:02:16\"}}', NULL, '2019-03-09 02:02:16', '2019-03-09 02:02:16'),
('b236d111-6bba-4a33-bc40-1e2394444f89', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":20,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:02:34\",\"updated_at\":\"2019-03-09 11:02:34\"}}', '2019-03-09 05:52:36', '2019-03-09 05:02:34', '2019-03-09 05:52:36'),
('bd1f482b-c3be-4807-95f7-234f773227a6', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":5,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 08:04:50\",\"updated_at\":\"2019-03-09 08:04:50\"}}', NULL, '2019-03-09 02:04:50', '2019-03-09 02:04:50'),
('bee320e1-d77e-4ca3-af3c-3e4b8253ca5d', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":26,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:04:38\",\"updated_at\":\"2019-03-09 12:04:38\"}}', '2019-03-09 06:04:50', '2019-03-09 06:04:38', '2019-03-09 06:04:50'),
('c4b2c78f-0d5b-4771-b769-1f0ba1496e2e', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":25,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:04:35\",\"updated_at\":\"2019-03-09 12:04:35\"}}', '2019-03-09 06:05:44', '2019-03-09 06:04:35', '2019-03-09 06:05:44'),
('cb2239af-982b-464d-8a85-af646d208072', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":7,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:44:08\",\"updated_at\":\"2019-03-09 10:44:08\"}}', '2019-03-09 06:18:35', '2019-03-09 04:44:09', '2019-03-09 06:18:35'),
('d346f672-00be-495b-b052-6d0e140a6cdf', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":12,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:56:12\",\"updated_at\":\"2019-03-09 10:56:12\"}}', '2019-03-09 06:18:35', '2019-03-09 04:56:13', '2019-03-09 06:18:35'),
('ddd6a502-2634-4a75-a7f0-1b442fe85263', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":24,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:04:30\",\"updated_at\":\"2019-03-09 12:04:30\"}}', '2019-03-09 06:15:36', '2019-03-09 06:04:30', '2019-03-09 06:15:36'),
('e35f14a9-9448-4399-afac-6c233229f8f2', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":27,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 12:05:25\",\"updated_at\":\"2019-03-09 12:05:25\"}}', '2019-03-09 06:15:36', '2019-03-09 06:05:25', '2019-03-09 06:15:36'),
('e5ae8daf-ab83-40d2-8304-05867eca25b3', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":21,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:13:41\",\"updated_at\":\"2019-03-09 11:13:41\"}}', '2019-03-09 06:18:35', '2019-03-09 05:13:41', '2019-03-09 06:18:35'),
('edcd75a2-c92f-4d15-8e48-d3ba031f7cdd', 'App\\Notifications\\NewLessonNotification', 'App\\User', 1, '{\"lesson\":{\"id\":12,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 10:56:12\",\"updated_at\":\"2019-03-09 10:56:12\"}}', NULL, '2019-03-09 04:56:12', '2019-03-09 04:56:12'),
('f49e105d-8b3b-48e0-bc9c-f081e126b841', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":19,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:02:28\",\"updated_at\":\"2019-03-09 11:02:28\"}}', '2019-03-09 06:15:36', '2019-03-09 05:02:28', '2019-03-09 06:15:36'),
('f6ccba84-43b1-4a8f-9f16-078b9340ea63', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":4,\"user_id\":2,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 08:02:16\",\"updated_at\":\"2019-03-09 08:02:16\"}}', '2019-03-09 06:18:35', '2019-03-09 02:02:17', '2019-03-09 06:18:35'),
('f74f49dc-9c58-4da1-b209-8ae7e6219da6', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":19,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:02:28\",\"updated_at\":\"2019-03-09 11:02:28\"}}', '2019-03-09 06:18:35', '2019-03-09 05:02:28', '2019-03-09 06:18:35'),
('faac139a-b0d1-4332-96ad-113d38620e1c', 'App\\Notifications\\NewLessonNotification', 'App\\User', 2, '{\"lesson\":{\"id\":21,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:13:41\",\"updated_at\":\"2019-03-09 11:13:41\"}}', '2019-03-09 05:52:26', '2019-03-09 05:13:41', '2019-03-09 05:52:26'),
('fed5362e-263c-4b90-8b48-05e7c21ff530', 'App\\Notifications\\NewLessonNotification', 'App\\User', 3, '{\"lesson\":{\"id\":20,\"user_id\":1,\"title\":\"Notification One\",\"body\":\"Notification One Description\",\"created_at\":\"2019-03-09 11:02:34\",\"updated_at\":\"2019-03-09 11:02:34\"}}', '2019-03-09 06:18:35', '2019-03-09 05:02:34', '2019-03-09 06:18:35');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User One', 'user1@gmail.com', NULL, '$2y$10$gJ6lajI0kszLOJf2U2Sl2OJR.V704Nlor5f0tehtmqRD43PTBaCDK', NULL, '2019-03-07 03:51:54', '2019-03-07 03:51:54'),
(2, 'User Two', 'user2@gmail.com', NULL, '$2y$10$h587ff.gTn4QGGM.z7Pjxu4PkS2gJvsxi1042vz1sQJqwykNdKEY2', NULL, '2019-03-07 03:52:35', '2019-03-07 03:52:35'),
(3, 'User Three', 'user3@gmail.com', NULL, '$2y$10$nNDijzooNhzsSkiTvP.9C.9qPq49cTA.G8d.dwooPUk5txfETqNWi', NULL, '2019-03-07 03:53:05', '2019-03-07 03:53:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
