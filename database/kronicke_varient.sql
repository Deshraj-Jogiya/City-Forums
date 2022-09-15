-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2022 at 01:35 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kronicke_varient`
--

-- --------------------------------------------------------

--
-- Table structure for table `adcategories`
--

CREATE TABLE `adcategories` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `name_slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adcategories`
--

INSERT INTO `adcategories` (`id`, `lang_id`, `name`, `name_slug`, `parent_id`, `description`, `keywords`, `color`, `created_at`) VALUES
(17, 2, 'For sale', 'for-sale', 0, 'saintdenisinfo classified ad category for sale', 'saintdenisinfo, classified, forsale', '#000000', '2022-04-06 13:35:31'),
(18, 2, ' Vehicles', 'vehicles', 0, 'saintdenisinfo classified ad category vehicles', 'saintdenisinfo, classified, vehicles', '#000000', '2022-04-06 13:37:04'),
(19, 2, ' Classes', 'classes', 0, 'saintdenisinfo classified ad category classes', 'saintdenisinfo, classified, classes', '#000000', '2022-04-06 13:42:01'),
(20, 2, 'Real estate', 'real-estate', 0, 'saintdenisinfo classified ad category real-estate', 'saintdenisinfo, classified, real-estate', '#000000', '2022-04-06 13:42:42'),
(21, 2, 'Services', 'services', 0, 'saintdenisinfo classified ad category services', 'saintdenisinfo, classified, services', '#000000', '2022-04-06 13:45:08'),
(22, 2, 'Community', 'community', 0, 'saintdenisinfo classified ad category community', 'saintdenisinfo, classified, community', '#000000', '2022-04-06 13:45:50'),
(23, 2, 'Personals', 'personals', 0, 'saintdenisinfo classified ad category personals', 'saintdenisinfo, classified , personals', '#000000', '2022-04-06 13:47:11'),
(24, 2, 'Jobs', 'jobs', 0, 'saintdenisinfo classified ad category jobs', 'saintdenisinfo, classified, jobs', '#000000', '2022-04-06 13:47:50'),
(25, 2, 'Animals', 'animals', 17, '', '', '#000000', '2022-04-06 13:59:03'),
(26, 2, 'Electronics', 'electronics', 17, '', '', '#000000', '2022-04-07 04:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `adtags`
--

CREATE TABLE `adtags` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adtags`
--

INSERT INTO `adtags` (`id`, `ad_id`, `tag`, `tag_slug`) VALUES
(1, 5, 'actual', 'actual'),
(2, 5, 'teaching', 'teaching'),
(3, 5, 'explorer', 'explorer'),
(8, 8, 'pursues', 'pursues'),
(9, 8, 'obtain', 'obtain'),
(10, 8, 'itself', 'itself'),
(20, 9, 'incommode', 'incommode'),
(21, 9, 'existence', 'existence'),
(22, 9, 'convinced', 'convinced'),
(23, 7, 'quitting', 'quitting'),
(24, 7, 'declared', 'declared'),
(25, 10, 'style', 'style'),
(26, 10, 'never', 'never'),
(27, 10, 'among', 'among'),
(28, 11, 'departure', 'departure'),
(29, 11, 'believing', 'believing'),
(30, 11, 'ourselves', 'ourselves'),
(34, 6, 'believe', 'believe'),
(35, 6, 'hearted', 'hearted'),
(36, 12, 'perceived', 'perceived'),
(37, 12, 'admitting', 'admitting'),
(38, 12, 'promotion', 'promotion'),
(39, 13, 'logical', 'logical'),
(40, 13, 'emotional', 'emotional'),
(41, 14, 'places', 'places'),
(42, 14, 'world', 'world'),
(43, 15, 'solar system', 'solar-system'),
(44, 15, 'quiz', 'quiz'),
(45, 16, 'personality', 'personality'),
(46, 16, 'quiz', 'quiz'),
(47, 17, 'breakfast', 'breakfast'),
(48, 17, 'listening', 'listening'),
(49, 17, 'offending', 'offending'),
(50, 18, 'stream', 'stream'),
(51, 18, 'water', 'water'),
(52, 18, 'video', 'video'),
(53, 19, 'sunset', 'sunset'),
(54, 19, 'during', 'during'),
(55, 19, 'sailing', 'sailing'),
(56, 19, 'video', 'video'),
(57, 20, 'boat', 'boat'),
(58, 20, 'river', 'river'),
(59, 20, 'view', 'view'),
(60, 21, 'continuing', 'continuing'),
(61, 21, 'frequently', 'frequently'),
(62, 21, 'stimulated', 'stimulated'),
(63, 22, 'design', 'design'),
(64, 22, 'entire', 'entire'),
(65, 23, 'pursues', 'pursues'),
(66, 23, 'obtain', 'obtain'),
(67, 24, 'weakness', 'weakness'),
(68, 24, 'shrinking', 'shrinking'),
(69, 24, 'saying', 'saying'),
(70, 25, 'moment', 'moment'),
(71, 25, 'pleasure', 'pleasure'),
(72, 26, 'extremity', 'extremity'),
(73, 26, 'something', 'something'),
(74, 27, 'cottage', 'cottage'),
(75, 27, 'esteems', 'esteems'),
(76, 27, 'post', 'post'),
(77, 1, 'Samsung S8 Pro', 'samsung-s8-pro'),
(78, 1, 'saintdenisinfo', 'saintdenisinfo'),
(79, 1, 'electronics', 'electronics'),
(95, 3, 'Samsung S8 Pro', 'samsung-s8-pro'),
(96, 3, 'saintdenisinfo', 'saintdenisinfo'),
(97, 3, 'electronics', 'electronics');

-- --------------------------------------------------------

--
-- Table structure for table `ad_pageviews_month`
--

CREATE TABLE `ad_pageviews_month` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `post_user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `reward_amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_pageviews_month`
--

INSERT INTO `ad_pageviews_month` (`id`, `post_id`, `post_user_id`, `ip_address`, `user_agent`, `reward_amount`, `created_at`) VALUES
(1, 1, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-11 01:39:19'),
(2, 3, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-11 09:38:29'),
(3, 3, 1, '45.113.106.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-11 21:59:49'),
(4, 3, 1, '45.113.106.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 0, '2022-04-11 22:02:02'),
(5, 1, 1, '92.184.107.192', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-12 02:56:28'),
(6, 1, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-12 06:57:39'),
(7, 1, 1, '92.184.102.250', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-13 09:52:57'),
(8, 1, 1, '92.184.123.7', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-13 23:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `ad_pageviews_week`
--

CREATE TABLE `ad_pageviews_week` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `post_user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `reward_amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_pageviews_week`
--

INSERT INTO `ad_pageviews_week` (`id`, `post_id`, `post_user_id`, `ip_address`, `user_agent`, `reward_amount`, `created_at`) VALUES
(1, 1, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-11 01:39:19'),
(2, 3, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-11 09:38:29'),
(3, 3, 1, '45.113.106.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-11 21:59:49'),
(4, 3, 1, '45.113.106.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 0, '2022-04-11 22:02:02'),
(5, 1, 1, '92.184.107.192', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-12 02:56:28'),
(6, 1, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-12 06:57:39'),
(7, 1, 1, '92.184.102.250', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-13 09:52:57'),
(8, 1, 1, '92.184.123.7', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-13 23:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `ad_spaces`
--

CREATE TABLE `ad_spaces` (
  `id` int(11) NOT NULL,
  `ad_space` text,
  `ad_code_728` text,
  `ad_code_468` text,
  `ad_code_300` text,
  `ad_code_234` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_spaces`
--

INSERT INTO `ad_spaces` (`id`, `ad_space`, `ad_code_728`, `ad_code_468`, `ad_code_300`, `ad_code_234`) VALUES
(1, 'index_top', NULL, NULL, NULL, NULL),
(2, 'index_bottom', NULL, NULL, NULL, NULL),
(3, 'post_top', NULL, NULL, NULL, NULL),
(4, 'post_bottom', NULL, NULL, NULL, NULL),
(5, 'category_top', NULL, NULL, NULL, NULL),
(6, 'category_bottom', NULL, NULL, NULL, NULL),
(7, 'tag_top', NULL, NULL, NULL, NULL),
(8, 'tag_bottom', NULL, NULL, NULL, NULL),
(9, 'search_top', NULL, NULL, NULL, NULL),
(10, 'search_bottom', NULL, NULL, NULL, NULL),
(11, 'profile_top', NULL, NULL, NULL, NULL),
(12, 'profile_bottom', NULL, NULL, NULL, NULL),
(13, 'reading_list_top', NULL, NULL, NULL, NULL),
(14, 'reading_list_bottom', NULL, NULL, NULL, NULL),
(15, 'sidebar_top', NULL, NULL, NULL, NULL),
(16, 'sidebar_bottom', NULL, NULL, NULL, NULL),
(17, 'header', NULL, NULL, NULL, NULL),
(18, 'posts_top', NULL, NULL, NULL, NULL),
(19, 'posts_bottom', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audios`
--

CREATE TABLE `audios` (
  `id` int(11) NOT NULL,
  `audio_name` varchar(255) DEFAULT NULL,
  `audio_path` varchar(255) DEFAULT NULL,
  `download_button` tinyint(1) DEFAULT '1',
  `storage` varchar(20) DEFAULT 'local',
  `user_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `name_slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `block_type` varchar(255) DEFAULT NULL,
  `category_order` int(11) DEFAULT '0',
  `show_at_homepage` tinyint(1) DEFAULT '1',
  `show_on_menu` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `lang_id`, `name`, `name_slug`, `parent_id`, `description`, `keywords`, `color`, `block_type`, `category_order`, `show_at_homepage`, `show_on_menu`, `created_at`) VALUES
(1, 2, 'Life Style', 'life-style', 0, 'Varient Category Life Style', 'varient, category, life style', '#e44e4e', 'block-4', 2, 1, 1, '2022-03-01 14:58:01'),
(2, 2, 'Fashion', 'fashion', 0, 'Varient Category Fashion', 'varient, category, fashion', '#30b333', 'block-4', 3, 1, 1, '2022-03-01 14:58:59'),
(3, 2, 'Quizzes', 'quizzes', 0, 'Varient Category Quiz', 'varient, category, quiz', '#f9ab00', 'block-4', 4, 1, 1, '2022-03-01 15:00:18'),
(4, 2, 'Travel', 'travel', 0, 'Varient Category Travel', 'varient, category, travel', '#00acd8', 'block-4', 5, 1, 1, '2022-03-01 15:03:33'),
(5, 2, 'RSS News', 'rss-news', 0, ' Varient Category RSS News', 'varient, category, rss news', '#607d8b', 'block-4', 6, 1, 1, '2022-03-01 15:04:59'),
(6, 2, 'Videos', 'videos', 0, 'Varient Category Videos', 'varient, category, videos', '#bf448e', 'block-4', 7, 1, 1, '2022-03-01 15:05:48'),
(7, 2, 'Sport', 'sport', 0, 'Varient Category Sport', 'varient, category, sport', '#656fb7', 'block-4', 9, 1, 1, '2022-03-02 06:44:29'),
(8, 2, 'Photography', 'photography', 1, 'Varient Category Photography', 'varient, category, photography', '#e44e4e', NULL, 1, NULL, 1, '2022-03-02 06:55:52'),
(9, 2, 'Business', 'business', 1, 'Varient Category Business', 'varient, category, business', '#e44e4e', NULL, 2, NULL, 1, '2022-03-02 07:43:10'),
(10, 2, 'Design', 'design', 1, 'Varient Category Design', 'varient, category, design', '#e44e4e', NULL, 3, NULL, 1, '2022-03-02 07:58:14'),
(11, 2, 'Nature', 'nature', 4, 'Varient Category Nature', 'varient, category, nature', '#00acd8', NULL, 1, NULL, 1, '2022-03-02 07:58:42'),
(12, 2, 'Places', 'places', 4, 'Varient Category Places', 'varient, category, places', '#00acd8', NULL, 2, NULL, 1, '2022-03-02 08:14:59'),
(13, 2, 'Clothes', 'clothes', 2, 'Varient Category Clothes', 'varient, category, clothes', '#30b333', NULL, 1, NULL, 1, '2022-03-02 08:15:20'),
(14, 2, 'The Independent', 'the-independent', 5, 'Varient Category The Independent', 'varient, category, the independent', '#607d8b', NULL, 1, NULL, 1, '2022-03-02 08:15:57'),
(15, 2, 'Wired', 'wired', 5, 'Varient Category Wired', 'varient, category, wired', '#607d8b', NULL, 2, NULL, 1, '2022-03-02 08:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('77a0i3u1vbvlpm7ga71c7mdqt173difg', '::1', 1649672954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637323838363b76725f7265616374696f6e5f766f74655f636f756e745f31377c693a303b76725f7265616374696f6e5f6c696b655f31377c733a313a2230223b76725f7265616374696f6e5f6469736c696b655f31377c733a313a2230223b76725f7265616374696f6e5f6c6f76655f31377c733a313a2230223b76725f7265616374696f6e5f66756e6e795f31377c733a313a2230223b76725f7265616374696f6e5f616e6772795f31377c733a313a2230223b76725f7265616374696f6e5f7361645f31377c733a313a2230223b76725f7265616374696f6e5f776f775f31377c733a313a2230223b),
('s74e76tsu20cclbf4i0eq7vn2tdrnsc6', '::1', 1649673933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637333737343b76725f736573735f757365725f69647c733a313a2231223b76725f736573735f757365725f656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b76725f736573735f757365725f726f6c657c733a353a2261646d696e223b76725f736573735f6c6f676765645f696e7c623a313b76725f736573735f757365725f70737c733a33323a223039336232333332316338653865623531383164353862333237636364343331223b76725f736573735f6170705f6b65797c733a33323a2235663633346530663733306533322d38303736353239362d3636353935393839223b),
('89b7edc2b9268085852c89cdba40dc9b2d02f688', '45.113.106.46', 1649675077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393637353037373b76725f736573735f757365725f69647c733a313a2231223b76725f736573735f757365725f656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b76725f736573735f757365725f726f6c657c733a353a2261646d696e223b76725f736573735f6c6f676765645f696e7c623a313b76725f736573735f757365725f70737c733a33323a223039336232333332316338653865623531383164353862333237636364343331223b76725f736573735f6170705f6b65797c733a33323a2235663633346530663733306533322d38303736353239362d3636353935393839223b),
('ff969204dbe9b80f63b68bbca38b812352240702', '92.184.107.231', 1649683412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393638333431313b),
('079fcc5847e562f461b7d014fc7df123ba47818a', '45.113.106.46', 1649698162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393639383036343b6572726f72737c733a303a22223b5f5f63695f766172737c613a333a7b733a363a226572726f7273223b733a333a226f6c64223b733a353a226572726f72223b733a333a226f6c64223b733a373a2273756363657373223b733a333a226f6c64223b7d6572726f727c733a303a22223b737563636573737c733a303a22223b),
('7f97ad1289e705748e9691558deafd956f2ee7b3', '45.113.106.46', 1649698582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393639383538323b),
('61270bc99741748c5b10c67890b663cb5944a4df', '91.172.14.254', 1649709360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393730393336303b),
('2d5f4855f0d8de25466e5970378138c4e91bdaeb', '91.172.14.254', 1649718640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393731383634303b),
('adc77c1cbc1ab3e886ca0431030e43714c02bcac', '91.172.14.254', 1649718641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393731383634313b),
('a29caaa3a47ada701d4813a04491a4c8468fd619', '91.172.14.254', 1649718725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393731383732343b),
('a305e1e4e027ec1e3f912392eac305a69e370797', '91.172.14.254', 1649750402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393735303430323b6f617574683273746174657c733a33323a223161363933383866356332616630616531633561613339313263376262303333223b675f6c6f67696e5f72656665727265727c733a35363a2268747470733a2f2f6b726f6e69636b6579732e636f6d2f76617269656e742f636c61737369666965642d61642f73616d73756e672d733232223b76725f736573735f757365725f69647c733a313a2234223b76725f736573735f757365725f656d61696c7c733a32343a2274617a617361696e7464656e697340676d61696c2e636f6d223b76725f736573735f757365725f726f6c657c733a343a2275736572223b76725f736573735f6c6f676765645f696e7c623a313b76725f736573735f757365725f70737c733a33323a226434316438636439386630306232303465393830303939386563663834323765223b76725f736573735f6170705f6b65797c733a33323a2235663633346530663733306533322d38303736353239362d3636353935393839223b),
('77ad818fd16f6d9f7046309c868527f0d3212e10', '91.172.14.254', 1649807681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393830373539383b66625f6c6f67696e5f72656665727265727c733a35353a22687474703a2f2f6b726f6e69636b6579732e636f6d2f76617269656e742f636c61737369666965642d61642f73616d73756e672d733232223b6f617574683273746174657c733a33323a223632663361646461303439393933643266653364656530336430366533313232223b675f6c6f67696e5f72656665727265727c733a35353a22687474703a2f2f6b726f6e69636b6579732e636f6d2f76617269656e742f636c61737369666965642d61642f73616d73756e672d733232223b76725f736573735f757365725f69647c733a313a2236223b76725f736573735f757365725f656d61696c7c733a32313a226d65686469393433303040686f746d61696c2e6672223b76725f736573735f757365725f726f6c657c733a343a2275736572223b76725f736573735f6c6f676765645f696e7c623a313b76725f736573735f757365725f70737c733a33323a223863386162663362363930386461336436663537396561633636343737623034223b76725f736573735f6170705f6b65797c733a33323a2235663633346530663733306533322d38303736353239362d3636353935393839223b76725f757365725f6f6c645f656d61696c7c733a32313a226d65686469393433303040686f746d61696c2e6672223b),
('eac7a39f4e29cb35a2c73b09804e54b5ae6f6d43', '45.113.106.46', 1649916547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393931363238383b76725f736573735f757365725f69647c733a313a2231223b76725f736573735f757365725f656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b76725f736573735f757365725f726f6c657c733a353a2261646d696e223b76725f736573735f6c6f676765645f696e7c623a313b76725f736573735f757365725f70737c733a33323a223039336232333332316338653865623531383164353862333237636364343331223b76725f736573735f6170705f6b65797c733a33323a2235663633346530663733306533322d38303736353239362d3636353935393839223b),
('2b0216c8471ede144c384ef243df793d9c241393', '92.184.107.136', 1649920905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393932303634383b76725f7265616374696f6e5f766f74655f636f756e745f39337c693a303b76725f7265616374696f6e5f6c696b655f39337c733a313a2230223b76725f7265616374696f6e5f6469736c696b655f39337c733a313a2230223b76725f7265616374696f6e5f6c6f76655f39337c733a313a2230223b76725f7265616374696f6e5f66756e6e795f39337c733a313a2230223b76725f7265616374696f6e5f616e6772795f39337c733a313a2230223b76725f7265616374696f6e5f7361645f39337c733a313a2230223b76725f7265616374696f6e5f776f775f39337c733a313a2230223b);

-- --------------------------------------------------------

--
-- Table structure for table `classifieds`
--

CREATE TABLE `classifieds` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `title_slug` varchar(500) DEFAULT NULL,
  `title_hash` varchar(500) DEFAULT NULL,
  `location` varchar(500) NOT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `summary` varchar(5000) DEFAULT NULL,
  `content` longtext,
  `category_id` int(11) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `transactional` varchar(100) NOT NULL,
  `condition_type` varchar(100) NOT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_slider` varchar(255) DEFAULT NULL,
  `image_mid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_mime` varchar(20) DEFAULT 'jpg',
  `image_storage` varchar(20) DEFAULT 'local',
  `pageviews` int(11) DEFAULT '0',
  `need_auth` tinyint(1) DEFAULT '0',
  `is_featured` tinyint(1) DEFAULT '0',
  `featured_order` tinyint(1) DEFAULT '1',
  `visibility` tinyint(1) DEFAULT '1',
  `post_type` varchar(50) DEFAULT 'post',
  `image_url` varchar(2000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `feed_id` int(11) DEFAULT NULL,
  `post_url` varchar(1000) DEFAULT NULL,
  `show_post_url` tinyint(1) DEFAULT '1',
  `image_description` varchar(500) DEFAULT NULL,
  `show_item_numbers` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classifieds`
--

INSERT INTO `classifieds` (`id`, `lang_id`, `title`, `title_slug`, `title_hash`, `location`, `keywords`, `summary`, `content`, `category_id`, `currency`, `price`, `transactional`, `condition_type`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `image_storage`, `pageviews`, `need_auth`, `is_featured`, `featured_order`, `visibility`, `post_type`, `image_url`, `user_id`, `status`, `feed_id`, `post_url`, `show_post_url`, `image_description`, `show_item_numbers`, `updated_at`, `created_at`) VALUES
(1, 2, 'Samsung S8 Pro', 'samsung-s8-pro', NULL, 'Kerens, Texas 75144, USA', 'Samsung S8 Pro, saintdenisinfo,electronics', 'Praesent vulputate est in est vulputate varius. In hac habitasse platea dictumst. Vivamus ligula lectus, tincidunt dapibus ex id, egestas elementum nisl.', '<div class=\"description\">\r\n<div class=\"text\">Praesent vulputate est in est vulputate varius. In hac habitasse platea dictumst. Vivamus ligula lectus, tincidunt dapibus ex id, egestas elementum nisl. Curabitur dolor turpis, aliquet ut dictum non, fringilla quis purus. Duis tempus ex sit amet mauris placerat, id laoreet elit placerat. Donec tellus orci, sodales ac nisi maximus, condimentum pulvinar velit. Nulla blandit, orci non tincidunt placerat, elit tortor rhoncus dolor, eu commodo risus mauris quis dui.<br /><br />Aenean pulvinar, eros ut feugiat dignissim, nulla justo varius enim, id maximus magna mi eu urna. Nulla eleifend pellentesque magna sed ultrices. Nullam eget elementum dolor. Duis mauris lorem, iaculis vel nisl eu, hendrerit pulvinar eros. Curabitur sagittis tellus quam, mollis finibus libero pellentesque eget. Suspendisse potenti. Nullam ultrices accumsan turpis, non feugiat lectus sagittis quis. Mauris tristique justo sit amet feugiat hendrerit. Donec sed nunc hendrerit, posuere tortor lacinia, pulvinar arcu. In sit amet tortor ipsum. Nulla euismod, orci pellentesque bibendum volutpat, est magna egestas nunc, ut vulputate erat nulla sit amet nisi. Aliquam feugiat vitae arcu ac euismod. Sed sagittis porttitor ante, id faucibus nunc sagittis id. Donec ut ex pharetra massa auctor ullamcorper non non lacus.</div>\r\n</div>\r\n<div class=\"custom-fields\">\r\n<h2>Attributes</h2>\r\n<div class=\"list\">\r\n<div class=\"field nameStatus valueNew\"><span class=\"name\">Status:</span><span class=\"value\">New</span></div>\r\n<div class=\"field nameMemory value128Gb\"><span class=\"name\">Memory:</span><span class=\"value\">128Gb</span></div>\r\n<div class=\"field nameScreen size value6inch\"><span class=\"name\">Screen size:</span><span class=\"value\">6inch</span></div>\r\n</div>\r\n</div>', 26, '₣', '890', 'sell', 'used', 'uploads/images/2022/04/image_750x500_624e6eb42eb93.jpg', 'uploads/images/2022/04/image_750x_624e6eb46cf0e.jpg', 'uploads/images/2022/04/image_600x460_624e6eb4a22f9.jpg', 'uploads/images/2022/04/image_380x226_624e6eb4d029f.jpg', 'uploads/images/2022/04/image_140x98_624e6eb4ec527.jpg', 'jpg', 'local', 5, 0, 0, 1, 1, 'ads', '', 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-04-07 04:42:24'),
(3, 2, 'Samsung S22', 'samsung-s22', NULL, 'Kerens, Texas 75144, USA', '', 'Praesent vulputate est in est vulputate varius. In hac habitasse platea dictumst. Vivamus ligula lectus, tincidunt dapibus ex id, egestas elementum nisl.', '<div class=\"description\">\r\n<div class=\"text\">Praesent vulputate est in est vulputate varius. In hac habitasse platea dictumst. Vivamus ligula lectus, tincidunt dapibus ex id, egestas elementum nisl. Curabitur dolor turpis, aliquet ut dictum non, fringilla quis purus. Duis tempus ex sit amet mauris placerat, id laoreet elit placerat. Donec tellus orci, sodales ac nisi maximus, condimentum pulvinar velit. Nulla blandit, orci non tincidunt placerat, elit tortor rhoncus dolor, eu commodo risus mauris quis dui.<br /><br />Aenean pulvinar, eros ut feugiat dignissim, nulla justo varius enim, id maximus magna mi eu urna. Nulla eleifend pellentesque magna sed ultrices. Nullam eget elementum dolor. Duis mauris lorem, iaculis vel nisl eu, hendrerit pulvinar eros. Curabitur sagittis tellus quam, mollis finibus libero pellentesque eget. Suspendisse potenti. Nullam ultrices accumsan turpis, non feugiat lectus sagittis quis. Mauris tristique justo sit amet feugiat hendrerit. Donec sed nunc hendrerit, posuere tortor lacinia, pulvinar arcu. In sit amet tortor ipsum. Nulla euismod, orci pellentesque bibendum volutpat, est magna egestas nunc, ut vulputate erat nulla sit amet nisi. Aliquam feugiat vitae arcu ac euismod. Sed sagittis porttitor ante, id faucibus nunc sagittis id. Donec ut ex pharetra massa auctor ullamcorper non non lacus.</div>\r\n</div>\r\n<div class=\"custom-fields\">\r\n<h2>Attributes</h2>\r\n<div class=\"list\">\r\n<div class=\"field nameStatus valueNew\"><span class=\"name\">Status:</span><span class=\"value\">New</span></div>\r\n<div class=\"field nameMemory value128Gb\"><span class=\"name\">Memory:</span><span class=\"value\">128Gb</span></div>\r\n<div class=\"field nameScreen size value6inch\"><span class=\"name\">Screen size:</span><span class=\"value\">6inch</span></div>\r\n</div>\r\n</div>', 25, '₣', '890', 'sell', 'used', 'uploads/images/2022/04/image_750x500_624e6ee2a1f58.jpg', 'uploads/images/2022/04/image_750x_624e6ee2ce730.jpg', 'uploads/images/2022/04/image_600x460_624e6ee308bcf.jpg', 'uploads/images/2022/04/image_380x226_624e6ee33eb90.jpg', 'uploads/images/2022/04/image_140x98_624e6ee359120.jpg', 'jpg', 'local', 4, 0, 1, 1, 1, 'ads', '', 1, 1, NULL, NULL, 0, '', 0, '2022-04-11 09:38:16', '2022-04-07 04:42:24'),
(4, 2, 'Test', 'Test', NULL, '', 'Test test ', 'Test test ', '<p>Test test test <span>Test test test&nbsp;</span><span>Test test test&nbsp;</span></p>', 24, '₣', '15', 'all', 'new', 'uploads/images/2022/04/image_750x500_625527e52ae1e.jpg', 'uploads/images/2022/04/image_750x_625527e54e1c9.jpg', 'uploads/images/2022/04/image_600x460_625527e567bcc.jpg', 'uploads/images/2022/04/image_380x226_625527e58224e.jpg', 'uploads/images/2022/04/image_140x98_625527e597fec.jpg', 'jpg', 'local', 0, 0, 0, 1, 0, 'ads', '', 4, 1, NULL, NULL, 0, '', 0, NULL, '2022-04-12 18:19:39'),
(5, 2, 'Classé', 'Essai', NULL, '', 'Testeur les petites annonces', 'Test classified ', '<p>Test petites annonces&nbsp;</p>\r\n<p><span>Test petites annonces&nbsp;</span></p>\r\n<p><span>Test petites annonces&nbsp;</span></p>\r\n<p><span></span></p>\r\n<p><span></span></p>', 24, '₣', '22', 'sell', 'new', 'uploads/images/2022/03/image_750x500_62420bf40c52b.jpg', 'uploads/images/2022/03/image_750x_62420bf42ac81.jpg', 'uploads/images/2022/03/image_600x460_62420bf4450d4.jpg', 'uploads/images/2022/03/image_380x226_62420bf457172.jpg', 'uploads/images/2022/03/image_140x98_62420bf462e90.jpg', 'jpg', 'local', 0, 0, 0, 1, 0, 'ads', '', 4, 1, NULL, NULL, 0, '', 0, NULL, '2022-04-13 09:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `classified_comments`
--

CREATE TABLE `classified_comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(5000) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classified_comments`
--

INSERT INTO `classified_comments` (`id`, `post_id`, `user_id`, `email`, `title`, `name`, `comment`, `ip_address`, `status`, `created_at`) VALUES
(1, 1, 1, 'test@gmail.com', 'demo', 'Test ', 'Test test ', '91.172.14.254', 1, '2022-03-16 23:27:26'),
(2, 1, 1, 'admin@admin.com', 'demo Comment', 'admin', 'Test', '::1', 1, '2022-04-08 08:07:40'),
(3, 1, 1, 'admin@admin.com', 'dummy', 'admin', 'test', '::1', 1, '2022-04-08 09:26:56'),
(4, 1, 1, 'sdfsfsd', 'sfsdfsdfs', 'fsd', 'sdffsdsdfds', '::1', 1, '2022-04-11 05:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `classified_images`
--

CREATE TABLE `classified_images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classified_images`
--

INSERT INTO `classified_images` (`id`, `post_id`, `image_big`, `image_default`, `storage`) VALUES
(1, 3, 'uploads/images/2022/03/image_750x500_6220cfd160265.jpg', 'uploads/images/2022/03/image_750x_6220cfd16b999.jpg', 'local'),
(2, 3, 'uploads/images/2022/03/image_750x500_621f9c679b8d8.jpg', 'uploads/images/2022/03/image_750x_621f9c67a8664.jpg', 'local'),
(3, 3, 'uploads/images/2022/03/image_750x500_6220ce565b678.jpg', 'uploads/images/2022/03/image_750x_6220ce56690cb.jpg', 'local');

-- --------------------------------------------------------

--
-- Table structure for table `classified_inquiries`
--

CREATE TABLE `classified_inquiries` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classified_inquiries`
--

INSERT INTO `classified_inquiries` (`id`, `post_id`, `user_id`, `email`, `phone`, `name`, `message`, `ip_address`, `status`, `created_at`) VALUES
(1, 1, 1, 'test@gmail.com', 'demo', 'Test ', 'Test test ', '91.172.14.254', 1, '2022-03-16 23:27:26'),
(2, 1, 1, 'admin@admin.com', 'demo Comment', 'admin', 'Test', '::1', 1, '2022-04-08 08:07:40'),
(3, 1, 1, 'admin@admin.com', 'dummy', 'admin', 'test', '::1', 1, '2022-04-08 09:26:56'),
(4, 1, 1, 'sdfsfsd', 'sfsdfsdfs', 'fsd', 'sdffsdsdfds', '::1', 1, '2022-04-11 05:12:00'),
(5, 1, 1, 'demo@gmail.com', '9876543210', 'ridham test', 'sdffsdsdfds', '::1', 1, '2022-04-11 05:29:54'),
(6, 1, 6, 'nabil94300@hotmail.fr', '0660959002', 'abdel', 'TES TES TEST TEST TEST', '213.203.67.148', 1, '2022-04-11 22:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(5000) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `like_count` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `post_id`, `user_id`, `email`, `name`, `comment`, `ip_address`, `like_count`, `status`, `created_at`) VALUES
(1, 0, 5, 0, 'test@gmail.com', 'Test ', 'Test test ', '91.172.14.254', 0, 1, '2022-03-16 23:27:26'),
(2, 0, 93, 1, 'admin@admin.com', 'admin', 'Test', '::1', 0, 1, '2022-04-08 08:07:40'),
(3, 0, 8, 1, 'admin@admin.com', 'admin', 'test', '::1', 0, 1, '2022-04-08 09:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `ad_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `ad_id`, `user_id`, `added_on`, `status`) VALUES
(7, '1', '1', '2022-04-10 22:28:33', 1),
(9, '3', '6', '2022-04-11 05:44:46', 1),
(11, '', '4', '2022-04-12 16:57:17', 1),
(12, '1', '6', '2022-04-12 17:54:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `following_id` int(11) DEFAULT NULL,
  `follower_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `following_id`, `follower_id`) VALUES
(2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int(11) NOT NULL,
  `font_name` varchar(255) DEFAULT NULL,
  `font_url` varchar(2000) DEFAULT NULL,
  `font_family` varchar(500) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `font_name`, `font_url`, `font_family`, `is_default`) VALUES
(1, 'Arial', NULL, 'font-family: Arial, Helvetica, sans-serif', 1),
(2, 'Arvo', '<link href=\"https://fonts.googleapis.com/css?family=Arvo:400,700&display=swap\" rel=\"stylesheet\">\r\n', 'font-family: \"Arvo\", Helvetica, sans-serif', 0),
(3, 'Averia Libre', '<link href=\"https://fonts.googleapis.com/css?family=Averia+Libre:300,400,700&display=swap\" rel=\"stylesheet\">\r\n', 'font-family: \"Averia Libre\", Helvetica, sans-serif', 0),
(4, 'Bitter', '<link href=\"https://fonts.googleapis.com/css?family=Bitter:400,400i,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Bitter\", Helvetica, sans-serif', 0),
(5, 'Cabin', '<link href=\"https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Cabin\", Helvetica, sans-serif', 0),
(6, 'Cherry Swash', '<link href=\"https://fonts.googleapis.com/css?family=Cherry+Swash:400,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Cherry Swash\", Helvetica, sans-serif', 0),
(7, 'Encode Sans', '<link href=\"https://fonts.googleapis.com/css?family=Encode+Sans:300,400,500,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Encode Sans\", Helvetica, sans-serif', 0),
(8, 'Helvetica', NULL, 'font-family: Helvetica, sans-serif', 1),
(9, 'Hind', '<link href=\"https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">', 'font-family: \"Hind\", Helvetica, sans-serif', 0),
(10, 'Josefin Sans', '<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300,400,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Josefin Sans\", Helvetica, sans-serif', 0),
(11, 'Kalam', '<link href=\"https://fonts.googleapis.com/css?family=Kalam:300,400,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Kalam\", Helvetica, sans-serif', 0),
(12, 'Khula', '<link href=\"https://fonts.googleapis.com/css?family=Khula:300,400,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Khula\", Helvetica, sans-serif', 0),
(13, 'Lato', '<link href=\"https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">', 'font-family: \"Lato\", Helvetica, sans-serif', 0),
(14, 'Lora', '<link href=\"https://fonts.googleapis.com/css?family=Lora:400,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Lora\", Helvetica, sans-serif', 0),
(15, 'Merriweather', '<link href=\"https://fonts.googleapis.com/css?family=Merriweather:300,400,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Merriweather\", Helvetica, sans-serif', 0),
(16, 'Montserrat', '<link href=\"https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Montserrat\", Helvetica, sans-serif', 0),
(17, 'Mukta', '<link href=\"https://fonts.googleapis.com/css?family=Mukta:300,400,500,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Mukta\", Helvetica, sans-serif', 0),
(18, 'Nunito', '<link href=\"https://fonts.googleapis.com/css?family=Nunito:300,400,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Nunito\", Helvetica, sans-serif', 0),
(19, 'Open Sans', '<link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">', 'font-family: \"Open Sans\", Helvetica, sans-serif', 0),
(20, 'Oswald', '<link href=\"https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">', 'font-family: \"Oswald\", Helvetica, sans-serif', 0),
(21, 'Oxygen', '<link href=\"https://fonts.googleapis.com/css?family=Oxygen:300,400,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Oxygen\", Helvetica, sans-serif', 0),
(22, 'Poppins', '<link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Poppins\", Helvetica, sans-serif', 0),
(23, 'PT Sans', '<link href=\"https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"PT Sans\", Helvetica, sans-serif', 0),
(24, 'Raleway', '<link href=\"https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Raleway\", Helvetica, sans-serif', 0),
(25, 'Roboto', '<link href=\"https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">', 'font-family: \"Roboto\", Helvetica, sans-serif', 0),
(26, 'Roboto Condensed', '<link href=\"https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Roboto Condensed\", Helvetica, sans-serif', 0),
(27, 'Roboto Slab', '<link href=\"https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Roboto Slab\", Helvetica, sans-serif', 0),
(28, 'Rokkitt', '<link href=\"https://fonts.googleapis.com/css?family=Rokkitt:300,400,500,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Rokkitt\", Helvetica, sans-serif', 0),
(29, 'Source Sans Pro', '<link href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">', 'font-family: \"Source Sans Pro\", Helvetica, sans-serif', 0),
(30, 'Titillium Web', '<link href=\"https://fonts.googleapis.com/css?family=Titillium+Web:300,400,600,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">', 'font-family: \"Titillium Web\", Helvetica, sans-serif', 0),
(31, 'Ubuntu', '<link href=\"https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext\" rel=\"stylesheet\">', 'font-family: \"Ubuntu\", Helvetica, sans-serif', 0),
(32, 'Verdana', NULL, 'font-family: Verdana, Helvetica, sans-serif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `path_big` varchar(255) DEFAULT NULL,
  `path_small` varchar(255) DEFAULT NULL,
  `is_album_cover` tinyint(1) DEFAULT '0',
  `storage` varchar(20) DEFAULT 'local',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_albums`
--

CREATE TABLE `gallery_albums` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `site_lang` int(11) NOT NULL DEFAULT '1',
  `multilingual_system` tinyint(1) DEFAULT '1',
  `show_hits` tinyint(1) DEFAULT '1',
  `show_rss` tinyint(1) DEFAULT '1',
  `show_newsticker` tinyint(1) DEFAULT '1',
  `pagination_per_page` smallint(6) DEFAULT '10',
  `google_analytics` text,
  `mail_library` varchar(100) DEFAULT 'swift',
  `mail_protocol` varchar(100) DEFAULT 'smtp',
  `mail_encryption` varchar(100) DEFAULT 'tls',
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT '587',
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `mail_title` varchar(255) DEFAULT NULL,
  `mail_reply_to` varchar(255) DEFAULT 'noreply@domain.com',
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(500) DEFAULT NULL,
  `vk_app_id` varchar(500) DEFAULT NULL,
  `vk_secure_key` varchar(500) DEFAULT NULL,
  `facebook_app_id` varchar(500) DEFAULT NULL,
  `facebook_app_secret` varchar(500) DEFAULT NULL,
  `facebook_comment` text,
  `facebook_comment_active` tinyint(1) DEFAULT '1',
  `show_featured_section` tinyint(1) DEFAULT '1',
  `show_latest_posts` tinyint(1) DEFAULT '1',
  `pwa_status` tinyint(1) DEFAULT '0',
  `registration_system` tinyint(1) DEFAULT '1',
  `comment_system` tinyint(1) DEFAULT '1',
  `comment_approval_system` tinyint(1) DEFAULT '1',
  `show_post_author` tinyint(1) DEFAULT '1',
  `show_post_date` tinyint(1) DEFAULT '1',
  `menu_limit` tinyint(4) DEFAULT '8',
  `custom_css_codes` mediumtext,
  `custom_javascript_codes` mediumtext,
  `adsense_activation_code` text,
  `vr_key` varchar(500) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `recaptcha_site_key` varchar(255) DEFAULT NULL,
  `recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `recaptcha_lang` varchar(50) DEFAULT NULL,
  `emoji_reactions` tinyint(1) DEFAULT '1',
  `mail_contact_status` tinyint(1) DEFAULT '0',
  `mail_contact` varchar(255) DEFAULT NULL,
  `cache_system` tinyint(1) DEFAULT '0',
  `cache_refresh_time` int(11) DEFAULT '1800',
  `refresh_cache_database_changes` tinyint(1) DEFAULT '0',
  `email_verification` tinyint(1) DEFAULT '0',
  `file_manager_show_files` tinyint(1) DEFAULT '1',
  `audio_download_button` tinyint(1) DEFAULT '1',
  `approve_added_user_posts` tinyint(1) DEFAULT '1',
  `approve_updated_user_posts` tinyint(1) DEFAULT '1',
  `timezone` varchar(255) DEFAULT 'America/New_York',
  `show_latest_posts_on_slider` tinyint(1) DEFAULT '0',
  `show_latest_posts_on_featured` tinyint(1) DEFAULT '0',
  `sort_slider_posts` varchar(100) DEFAULT 'by_slider_order',
  `sort_featured_posts` varchar(100) DEFAULT 'by_featured_order',
  `newsletter_status` tinyint(1) DEFAULT '1',
  `newsletter_popup` tinyint(1) DEFAULT '0',
  `show_home_link` tinyint(1) DEFAULT '1',
  `post_format_article` tinyint(1) DEFAULT '1',
  `post_format_gallery` tinyint(1) DEFAULT '1',
  `post_format_sorted_list` tinyint(1) DEFAULT '1',
  `post_format_video` tinyint(1) DEFAULT '1',
  `post_format_audio` tinyint(1) DEFAULT '1',
  `post_format_trivia_quiz` tinyint(1) DEFAULT '1',
  `post_format_personality_quiz` tinyint(1) DEFAULT '1',
  `maintenance_mode_title` varchar(500) DEFAULT 'Coming Soon!',
  `maintenance_mode_description` varchar(5000) DEFAULT NULL,
  `maintenance_mode_status` tinyint(1) DEFAULT '0',
  `sitemap_frequency` varchar(30) DEFAULT 'monthly',
  `sitemap_last_modification` varchar(30) DEFAULT 'server_response',
  `sitemap_priority` varchar(30) DEFAULT 'automatically',
  `show_user_email_on_profile` tinyint(1) DEFAULT '1',
  `reward_system_status` tinyint(1) DEFAULT '0',
  `reward_amount` double DEFAULT '1',
  `currency_name` varchar(100) DEFAULT 'US Dollar',
  `currency_symbol` varchar(10) DEFAULT '$',
  `currency_format` varchar(10) DEFAULT 'us',
  `currency_symbol_format` varchar(10) DEFAULT 'left',
  `payout_paypal_status` tinyint(1) DEFAULT '1',
  `payout_iban_status` tinyint(1) DEFAULT '1',
  `payout_swift_status` tinyint(1) DEFAULT '1',
  `storage` varchar(20) DEFAULT 'local',
  `aws_key` varchar(255) DEFAULT NULL,
  `aws_secret` varchar(255) DEFAULT NULL,
  `aws_bucket` varchar(255) DEFAULT NULL,
  `aws_region` varchar(255) DEFAULT NULL,
  `aws_base_url` varchar(255) DEFAULT NULL,
  `auto_post_deletion` tinyint(1) DEFAULT '0',
  `auto_post_deletion_days` smallint(6) DEFAULT '30',
  `auto_post_deletion_delete_all` tinyint(1) DEFAULT '0',
  `redirect_rss_posts_to_original` tinyint(1) DEFAULT '0',
  `cookie_prefix` varchar(50) DEFAULT NULL,
  `allowed_file_extensions` text,
  `last_cron_update` timestamp NULL DEFAULT NULL,
  `version` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_lang`, `multilingual_system`, `show_hits`, `show_rss`, `show_newsticker`, `pagination_per_page`, `google_analytics`, `mail_library`, `mail_protocol`, `mail_encryption`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_title`, `mail_reply_to`, `google_client_id`, `google_client_secret`, `vk_app_id`, `vk_secure_key`, `facebook_app_id`, `facebook_app_secret`, `facebook_comment`, `facebook_comment_active`, `show_featured_section`, `show_latest_posts`, `pwa_status`, `registration_system`, `comment_system`, `comment_approval_system`, `show_post_author`, `show_post_date`, `menu_limit`, `custom_css_codes`, `custom_javascript_codes`, `adsense_activation_code`, `vr_key`, `purchase_code`, `recaptcha_site_key`, `recaptcha_secret_key`, `recaptcha_lang`, `emoji_reactions`, `mail_contact_status`, `mail_contact`, `cache_system`, `cache_refresh_time`, `refresh_cache_database_changes`, `email_verification`, `file_manager_show_files`, `audio_download_button`, `approve_added_user_posts`, `approve_updated_user_posts`, `timezone`, `show_latest_posts_on_slider`, `show_latest_posts_on_featured`, `sort_slider_posts`, `sort_featured_posts`, `newsletter_status`, `newsletter_popup`, `show_home_link`, `post_format_article`, `post_format_gallery`, `post_format_sorted_list`, `post_format_video`, `post_format_audio`, `post_format_trivia_quiz`, `post_format_personality_quiz`, `maintenance_mode_title`, `maintenance_mode_description`, `maintenance_mode_status`, `sitemap_frequency`, `sitemap_last_modification`, `sitemap_priority`, `show_user_email_on_profile`, `reward_system_status`, `reward_amount`, `currency_name`, `currency_symbol`, `currency_format`, `currency_symbol_format`, `payout_paypal_status`, `payout_iban_status`, `payout_swift_status`, `storage`, `aws_key`, `aws_secret`, `aws_bucket`, `aws_region`, `aws_base_url`, `auto_post_deletion`, `auto_post_deletion_days`, `auto_post_deletion_delete_all`, `redirect_rss_posts_to_original`, `cookie_prefix`, `allowed_file_extensions`, `last_cron_update`, `version`) VALUES
(1, 2, 1, 1, 1, 1, 16, NULL, 'swift', 'smtp', 'tls', NULL, '587', NULL, NULL, 'Varient', 'noreply@domain.com', '872426063800-c2f2qf3ir5fekcqmrok4qstmrcushmb3.apps.googleusercontent.com', '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', NULL, NULL, '707172950642242', 'd1cf43abff963239f21392290b91e97c', '', 0, 1, 1, 0, 1, 1, 1, 1, 1, 10, '', '', NULL, 'NullJungle', 'NullJungle', NULL, NULL, 'en', 1, 0, NULL, 0, 1800, 0, 0, 0, 1, 1, 1, 'Asia/Karachi', 0, 0, 'by_slider_order', 'by_featured_order', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 'Coming Soon!', 'Our website is under construction. We\'ll be here soon with our new awesome site.', 0, 'hourly', 'server_response', 'automatically', 1, 0, 0.25, 'USD', '$', 'us', 'left', 1, 1, 1, 'local', NULL, NULL, NULL, NULL, NULL, 0, 30, 0, 0, '617c35e3254bc', '\"jpg\",\"jpeg\",\"png\",\"gif\",\"svg\",\"csv\",\"doc\",\"docx\",\"pdf\",\"ppt\",\"psd\",\"mp4\",\"mp3\",\"zip\"', '2022-04-14 17:04:53', '1.9');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_slider` varchar(255) DEFAULT NULL,
  `image_mid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_mime` varchar(50) DEFAULT 'jpg',
  `file_name` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `user_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `file_name`, `storage`, `user_id`) VALUES
(1, 'uploads/images/2022/03/image_750x500_621f31672606a.jpg', 'uploads/images/2022/03/image_750x_621f316795b8a.jpg', 'uploads/images/2022/03/image_600x460_621f3167a6d15.jpg', 'uploads/images/2022/03/image_380x226_621f3167b4408.jpg', 'uploads/images/2022/03/image_140x98_621f3167ba70c.jpg', 'jpg', 'image_380x226_60d674fa8f723.jpg', 'local', 1),
(2, 'uploads/images/2022/03/image_750x500_621f3207b6c61.jpg', 'uploads/images/2022/03/image_750x_621f3207c9614.jpg', 'uploads/images/2022/03/image_600x460_621f3207d9648.jpg', 'uploads/images/2022/03/image_380x226_621f3207e687b.jpg', 'uploads/images/2022/03/image_140x98_621f3207eb7eb.jpg', 'jpg', 'image_380x226_60d674fb84cd4.jpg', 'local', 1),
(3, 'uploads/images/2022/03/image_750x500_621f32ea3261d.jpg', 'uploads/images/2022/03/image_750x_621f32ea466b4.jpg', 'uploads/images/2022/03/image_600x460_621f32ea593df.jpg', 'uploads/images/2022/03/image_380x226_621f32ea6660c.jpg', 'uploads/images/2022/03/image_140x98_621f32ea6b80c.jpg', 'jpg', 'image_380x226_60d674fc48b3f.jpg', 'local', 1),
(4, 'uploads/images/2022/03/image_750x500_621f507d3ed78.jpg', 'uploads/images/2022/03/image_750x_621f507d7752a.jpg', 'uploads/images/2022/03/image_600x460_621f507d87382.jpg', 'uploads/images/2022/03/image_380x226_621f507d9567e.jpg', 'uploads/images/2022/03/image_140x98_621f507d9b8e7.jpg', 'jpg', 'image_380x226_60d674fd3ccac.jpg', 'local', 1),
(5, 'uploads/images/2022/03/image_750x500_621f90ca962b7.jpg', 'uploads/images/2022/03/image_750x_621f90caa85b8.jpg', 'uploads/images/2022/03/image_600x460_621f90cab1db1.jpg', 'uploads/images/2022/03/image_380x226_621f90caba63c.jpg', 'uploads/images/2022/03/image_140x98_621f90cabd343.jpg', 'jpg', 'image_380x226_60d8e34070f1b.jpg', 'local', 1),
(6, 'uploads/images/2022/03/image_750x500_621f918353306.jpg', 'uploads/images/2022/03/image_750x_621f918362213.jpg', 'uploads/images/2022/03/image_600x460_621f91836cde1.jpg', 'uploads/images/2022/03/image_380x226_621f9183757e9.jpg', 'uploads/images/2022/03/image_140x98_621f9183783a9.jpg', 'jpg', 'image_380x226_60d734795974f.jpg', 'local', 1),
(7, 'uploads/images/2022/03/image_750x500_621f91e3c8306.jpg', 'uploads/images/2022/03/image_750x_621f91e3d333c.jpg', 'uploads/images/2022/03/image_600x460_621f91e3dc906.jpg', 'uploads/images/2022/03/image_380x226_621f91e3e4719.jpg', 'uploads/images/2022/03/image_140x98_621f91e3e718f.jpg', 'jpg', 'image_380x226_60d7c95294bb7.jpg', 'local', 1),
(8, 'uploads/images/2022/03/image_750x500_621f92f6b79e8.jpg', 'uploads/images/2022/03/image_750x_621f92f6c406a.jpg', 'uploads/images/2022/03/image_600x460_621f92f6cd52d.jpg', 'uploads/images/2022/03/image_380x226_621f92f6d5243.jpg', 'uploads/images/2022/03/image_140x98_621f92f6d7e2e.jpg', 'jpg', 'image_380x226_60d7c7e7c6e64.jpg', 'local', 1),
(9, 'uploads/images/2022/03/image_750x500_621f94d6e8795.jpg', 'uploads/images/2022/03/image_750x_621f94d706b20.jpg', 'uploads/images/2022/03/image_600x460_621f94d7126eb.jpg', 'uploads/images/2022/03/image_380x226_621f94d71b9b6.jpg', 'uploads/images/2022/03/image_140x98_621f94d71ead1.jpg', 'jpg', 'image_380x226_60d8f1f7794a3.jpg', 'local', 1),
(10, 'uploads/images/2022/03/image_750x500_621f97e9c483c.jpg', 'uploads/images/2022/03/image_750x_621f97e9d86fc.jpg', 'uploads/images/2022/03/image_600x460_621f97e9e1ccf.jpg', 'uploads/images/2022/03/image_380x226_621f97e9eaf69.jpg', 'uploads/images/2022/03/image_140x98_621f97e9eddc8.jpg', 'jpg', 'image_380x226_60d7cb3f9eef3.jpg', 'local', 1),
(11, 'uploads/images/2022/03/image_750x500_621f9a2f8f99f.jpg', 'uploads/images/2022/03/image_750x_621f9a2fa051e.jpg', 'uploads/images/2022/03/image_600x460_621f9a2faaaec.jpg', 'uploads/images/2022/03/image_380x226_621f9a2fb62d3.jpg', 'uploads/images/2022/03/image_140x98_621f9a2fb92d4.jpg', 'jpg', 'image_380x226_60d8f16a46558.jpg', 'local', 1),
(12, 'uploads/images/2022/03/image_750x500_621f9c679b8d8.jpg', 'uploads/images/2022/03/image_750x_621f9c67a8664.jpg', 'uploads/images/2022/03/image_600x460_621f9c67b2195.jpg', 'uploads/images/2022/03/image_380x226_621f9c67ba207.jpg', 'uploads/images/2022/03/image_140x98_621f9c67bcd9a.jpg', 'jpg', 'image_380x226_60d73587b9da7.jpg', 'local', 1),
(13, 'uploads/images/2022/03/image_750x500_6220cb2d1102a.jpg', 'uploads/images/2022/03/image_750x_6220cb2d1f39e.jpg', 'uploads/images/2022/03/image_600x460_6220cb2d2890b.jpg', 'uploads/images/2022/03/image_380x226_6220cb2d30553.jpg', 'uploads/images/2022/03/image_140x98_6220cb2d32da0.jpg', 'jpg', 'image_380x226_60d8eb087edc3.jpg', 'local', 1),
(14, 'uploads/images/2022/03/image_750x500_6220cb9194ce5.jpg', 'uploads/images/2022/03/image_750x_6220cb91a7755.jpg', 'uploads/images/2022/03/image_600x460_6220cb91b1cbc.jpg', 'uploads/images/2022/03/image_380x226_6220cb91b9f90.jpg', 'uploads/images/2022/03/image_140x98_6220cb91bd1d5.jpg', 'jpg', 'image_380x226_60d8e86a94596.jpg', 'local', 1),
(15, 'uploads/images/2022/03/image_750x500_6220cc8cd93f9.jpg', 'uploads/images/2022/03/image_750x_6220cc8ce51d5.jpg', 'uploads/images/2022/03/image_600x460_6220cc8ceefb2.jpg', 'uploads/images/2022/03/image_380x226_6220cc8d036cd.jpg', 'uploads/images/2022/03/image_140x98_6220cc8d0644e.jpg', 'jpg', 'image_380x226_60d8c2be4964d.jpg', 'local', 1),
(16, 'uploads/images/2022/03/image_750x500_6220cce7699e7.jpg', 'uploads/images/2022/03/image_750x_6220cce774f35.jpg', 'uploads/images/2022/03/image_600x460_6220cce77e4e6.jpg', 'uploads/images/2022/03/image_380x226_6220cce7861b0.jpg', 'uploads/images/2022/03/image_140x98_6220cce788a31.jpg', 'jpg', 'image_380x226_60d8bfd9b8169.jpg', 'local', 1),
(17, 'uploads/images/2022/03/image_750x500_6220ce4d2baed.jpg', 'uploads/images/2022/03/image_750x_6220ce4d38751.jpg', 'uploads/images/2022/03/image_600x460_6220ce4d43595.jpg', 'uploads/images/2022/03/image_380x226_6220ce4d4bad9.jpg', 'uploads/images/2022/03/image_140x98_6220ce4d4e930.jpg', 'jpg', 'image_380x226_60d8ee82ba3cb.jpg', 'local', 1),
(18, 'uploads/images/2022/03/image_750x500_6220ce565b678.jpg', 'uploads/images/2022/03/image_750x_6220ce56690cb.jpg', 'uploads/images/2022/03/image_600x460_6220ce5674437.jpg', 'uploads/images/2022/03/image_380x226_6220ce567c2dc.jpg', 'uploads/images/2022/03/image_140x98_6220ce567eeae.jpg', 'jpg', 'image_380x226_60d8ee82ba3cb.jpg', 'local', 1),
(19, 'uploads/images/2022/03/image_750x500_6220cf94739ce.jpg', 'uploads/images/2022/03/image_750x_6220cf947e8fb.jpg', 'uploads/images/2022/03/image_600x460_6220cf9487c8a.jpg', 'uploads/images/2022/03/image_380x226_6220cf948f915.jpg', 'uploads/images/2022/03/image_140x98_6220cf94923b2.jpg', 'jpg', 'image_380x226_60d8ef184430b.jpg', 'local', 1),
(20, 'uploads/images/2022/03/image_750x500_6220cfd160265.jpg', 'uploads/images/2022/03/image_750x_6220cfd16b999.jpg', 'uploads/images/2022/03/image_600x460_6220cfd17581f.jpg', 'uploads/images/2022/03/image_380x226_6220cfd17dbfa.jpg', 'uploads/images/2022/03/image_140x98_6220cfd18098a.jpg', 'jpg', 'image_380x226_60d8ee0607734.jpg', 'local', 1),
(21, 'uploads/images/2022/03/image_750x500_6220d0103bf55.jpg', 'uploads/images/2022/03/image_750x_6220d01046865.jpg', 'uploads/images/2022/03/image_600x460_6220d0104fda1.jpg', 'uploads/images/2022/03/image_380x226_6220d01057716.jpg', 'uploads/images/2022/03/image_140x98_6220d0105a04d.jpg', 'jpg', 'image_380x226_60d7cad74459d.jpg', 'local', 1),
(22, 'uploads/images/2022/03/image_750x500_6220d0fdd4600.jpg', 'uploads/images/2022/03/image_750x_6220d0fde1b83.jpg', 'uploads/images/2022/03/image_600x460_6220d0fdeba90.jpg', 'uploads/images/2022/03/image_380x226_6220d0fdf38ec.jpg', 'uploads/images/2022/03/image_140x98_6220d0fe02253.jpg', 'jpg', 'image_380x226_60d8ef865e644.jpg', 'local', 1),
(23, 'uploads/images/2022/03/image_750x500_6220d154b26bf.jpg', 'uploads/images/2022/03/image_750x_6220d154bda54.jpg', 'uploads/images/2022/03/image_600x460_6220d154c78b0.jpg', 'uploads/images/2022/03/image_380x226_6220d154d4d69.jpg', 'uploads/images/2022/03/image_140x98_6220d154ded04.jpg', 'jpg', 'image_750x500_60d8f081560be.jpg', 'local', 1),
(24, 'uploads/images/2022/03/image_750x500_6220d191bbb8f.jpg', 'uploads/images/2022/03/image_750x_6220d191c669e.jpg', 'uploads/images/2022/03/image_600x460_6220d191cf885.jpg', 'uploads/images/2022/03/image_380x226_6220d191d7361.jpg', 'uploads/images/2022/03/image_140x98_6220d191d9aef.jpg', 'jpg', 'image_380x226_60d8e789d6e6a.jpg', 'local', 1),
(25, 'uploads/images/2022/03/image_750x500_6220d254a6a1b.jpg', 'uploads/images/2022/03/image_750x_6220d254b1bf7.jpg', 'uploads/images/2022/03/image_600x460_6220d254bb0a9.jpg', 'uploads/images/2022/03/image_380x226_6220d254c2b51.jpg', 'uploads/images/2022/03/image_140x98_6220d254c559f.jpg', 'jpg', 'image_380x226_60d8e4a949a61.jpg', 'local', 1),
(26, 'uploads/images/2022/03/image_750x500_6220d2e427dcd.jpg', 'uploads/images/2022/03/image_750x_6220d2e432f21.jpg', 'uploads/images/2022/03/image_600x460_6220d2e43c8a8.jpg', 'uploads/images/2022/03/image_380x226_6220d2e44456c.jpg', 'uploads/images/2022/03/image_140x98_6220d2e44705f.jpg', 'jpg', 'image_380x226_60d7ca579de69.jpg', 'local', 1),
(27, 'uploads/images/2022/03/image_750x500_62420bf40c52b.jpg', 'uploads/images/2022/03/image_750x_62420bf42ac81.jpg', 'uploads/images/2022/03/image_600x460_62420bf4450d4.jpg', 'uploads/images/2022/03/image_380x226_62420bf457172.jpg', 'uploads/images/2022/03/image_140x98_62420bf462e90.jpg', 'jpg', 'F143F628-B610-41AF-B366-1143FC228150.jpeg', 'local', 4),
(28, 'uploads/images/2022/04/image_750x500_62483483870e9.jpg', 'uploads/images/2022/04/image_750x_62483483ad6a3.jpg', 'uploads/images/2022/04/image_600x460_62483483d26dd.jpg', 'uploads/images/2022/04/image_380x226_62483484031aa.jpg', 'uploads/images/2022/04/image_140x98_624834842406b.jpg', 'jpg', 'screenshot.png', 'local', 5),
(29, 'uploads/images/2022/04/image_750x500_624e52aabbdb2.jpg', 'uploads/images/2022/04/image_750x_624e52ab00ff7.jpg', 'uploads/images/2022/04/image_600x460_624e52ab14725.jpg', 'uploads/images/2022/04/image_380x226_624e52ab1ff36.jpg', 'uploads/images/2022/04/image_140x98_624e52ab282a5.jpg', 'jpg', 'not-found.png', 'local', 1),
(30, 'uploads/images/2022/04/image_750x500_624e6eb42eb93.jpg', 'uploads/images/2022/04/image_750x_624e6eb46cf0e.jpg', 'uploads/images/2022/04/image_600x460_624e6eb4a22f9.jpg', 'uploads/images/2022/04/image_380x226_624e6eb4d029f.jpg', 'uploads/images/2022/04/image_140x98_624e6eb4ec527.jpg', 'jpg', '56.jpg', 'local', 1),
(31, 'uploads/images/2022/04/image_750x500_624e6ee2a1f58.jpg', 'uploads/images/2022/04/image_750x_624e6ee2ce730.jpg', 'uploads/images/2022/04/image_600x460_624e6ee308bcf.jpg', 'uploads/images/2022/04/image_380x226_624e6ee33eb90.jpg', 'uploads/images/2022/04/image_140x98_624e6ee359120.jpg', 'jpg', '57.jpg', 'local', 1),
(32, 'uploads/images/2022/04/image_750x500_625527e52ae1e.jpg', 'uploads/images/2022/04/image_750x_625527e54e1c9.jpg', 'uploads/images/2022/04/image_600x460_625527e567bcc.jpg', 'uploads/images/2022/04/image_380x226_625527e58224e.jpg', 'uploads/images/2022/04/image_140x98_625527e597fec.jpg', 'jpg', 'B367C85D-4127-4D08-AD63-B498439983CF.jpeg', 'local', 4);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_form` varchar(255) NOT NULL,
  `language_code` varchar(100) NOT NULL,
  `text_direction` varchar(50) NOT NULL,
  `text_editor_lang` varchar(30) DEFAULT 'en',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language_order` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_form`, `language_code`, `text_direction`, `text_editor_lang`, `status`, `language_order`) VALUES
(1, 'English', 'en', 'en-US', 'ltr', 'en', 1, 1),
(2, 'French', 'fr', 'fr_fr', 'ltr', 'fr_FR', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language_translations`
--

CREATE TABLE `language_translations` (
  `id` int(11) NOT NULL,
  `lang_id` smallint(6) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `translation` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_translations`
--

INSERT INTO `language_translations` (`id`, `lang_id`, `label`, `translation`) VALUES
(1, 1, 'about_me', 'About Me'),
(2, 1, 'activate', 'Activate'),
(3, 1, 'activated', 'Activated'),
(4, 1, 'active', 'Active'),
(5, 1, 'additional_images', 'Additional Images'),
(6, 1, 'address', 'Address'),
(7, 1, 'add_album', 'Add Album'),
(8, 1, 'add_answer', 'Add Answer'),
(9, 1, 'add_article', 'Add Article'),
(10, 1, 'add_audio', 'Add Audio'),
(11, 1, 'add_breaking', 'Add to Breaking'),
(12, 1, 'add_category', 'Add Category'),
(13, 1, 'add_featured', 'Add to Featured'),
(14, 1, 'add_font', 'Add Font'),
(15, 1, 'add_gallery', 'Add Gallery'),
(16, 1, 'add_iframe', 'Add Iframe'),
(17, 1, 'add_image', 'Add Image'),
(18, 1, 'add_image_url', 'Add Image Url'),
(19, 1, 'add_language', 'Add Language'),
(20, 1, 'add_link', 'Add Menu Link'),
(21, 1, 'add_new_item', 'Add New Item'),
(22, 1, 'add_page', 'Add Page'),
(23, 1, 'add_payout', 'Add Payout'),
(24, 1, 'add_personality_quiz', 'Add Personality Quiz'),
(25, 1, 'add_poll', 'Add Poll'),
(26, 1, 'add_post', 'Add Post'),
(27, 1, 'add_posts_as_draft', 'Add Posts as Draft'),
(28, 1, 'add_question', 'Add Question'),
(29, 1, 'add_quiz', 'Add Quiz'),
(30, 1, 'add_reading_list', 'Add to Reading List'),
(31, 1, 'add_recommended', 'Add to Recommended'),
(32, 1, 'add_result', 'Add Result'),
(33, 1, 'add_slider', 'Add to Slider'),
(34, 1, 'add_sorted_list', 'Add Sorted List'),
(35, 1, 'add_subcategory', 'Add Subcategory'),
(36, 1, 'add_trivia_quiz', 'Add Trivia Quiz'),
(37, 1, 'add_user', 'Add User'),
(38, 1, 'add_video', 'Add Video'),
(39, 1, 'add_widget', 'Add Widget'),
(40, 1, 'admin', 'Admin'),
(41, 1, 'administrators', 'Administrators'),
(42, 1, 'admin_panel', 'Admin Panel'),
(43, 1, 'admin_panel_link', 'Admin Panel Link'),
(44, 1, 'adsense_activation_code', 'AdSense Activation Code'),
(45, 1, 'ad_space', 'Ad Space'),
(46, 1, 'ad_spaces', 'Ad Spaces'),
(47, 1, 'ago', 'ago'),
(48, 1, 'album', 'Album'),
(49, 1, 'albums', 'Albums'),
(50, 1, 'album_cover', 'Album Cover'),
(51, 1, 'album_name', 'Album Name'),
(52, 1, 'all', 'All'),
(53, 1, 'allowed_file_extensions', 'Allowed File Extensions'),
(54, 1, 'all_permissions', 'All Permissions'),
(55, 1, 'all_posts', 'All Posts'),
(56, 1, 'all_time', 'All Time'),
(57, 1, 'all_users_can_vote', 'All Users Can Vote'),
(58, 1, 'always', 'Always'),
(59, 1, 'amount', 'Amount'),
(60, 1, 'angry', 'Angry'),
(61, 1, 'answers', 'Answers'),
(62, 1, 'answer_format', 'Answer Format'),
(63, 1, 'answer_text', 'Answer Text'),
(64, 1, 'approve', 'Approve'),
(65, 1, 'approved_comments', 'Approved Comments'),
(66, 1, 'approve_added_user_posts', 'Approve Added User Posts'),
(67, 1, 'approve_updated_user_posts', 'Approve Updated User Posts'),
(68, 1, 'app_id', 'App ID'),
(69, 1, 'app_name', 'Application Name'),
(70, 1, 'app_secret', 'App Secret'),
(71, 1, 'April', 'Apr'),
(72, 1, 'article', 'Article'),
(73, 1, 'article_post_exp', 'An article with images and embed videos'),
(74, 1, 'audio', 'Audio'),
(75, 1, 'audios', 'Audios'),
(76, 1, 'audios_exp', 'Select your audios and create your playlist'),
(77, 1, 'audio_download_button', 'Audio Download Button'),
(78, 1, 'audio_post_exp', 'Upload audios and create playlist'),
(79, 1, 'August', 'Aug'),
(80, 1, 'author', 'Author'),
(81, 1, 'auto_post_deletion', 'Auto Post Deletion'),
(82, 1, 'auto_update', 'Auto Update'),
(83, 1, 'avatar', 'Avatar'),
(84, 1, 'aws_base_url', 'AWS Base URL'),
(85, 1, 'aws_key', 'AWS Access Key'),
(86, 1, 'aws_secret', 'AWS Secret Key'),
(87, 1, 'aws_storage', 'AWS S3 Storage'),
(88, 1, 'back', 'Back'),
(89, 1, 'backup', 'Backup'),
(90, 1, 'balance', 'Balance'),
(91, 1, 'bank_account_holder_name', 'Bank Account Holder\'s Name'),
(92, 1, 'bank_branch_city', 'Bank Branch City'),
(93, 1, 'bank_branch_country', 'Bank Branch Country'),
(94, 1, 'bank_name', 'Bank Name'),
(95, 1, 'banned', 'Banned'),
(96, 1, 'banner', 'Banner'),
(97, 1, 'ban_user', 'Ban User'),
(98, 1, 'block_color', 'Top Header and Block Heads Color'),
(99, 1, 'breadcrumb_home', 'Home'),
(100, 1, 'breadcrumb_videos', 'Videos'),
(101, 1, 'breaking', 'Breaking'),
(102, 1, 'breaking_news', 'Breaking News'),
(103, 1, 'browse_files', 'Browse Files'),
(104, 1, 'btn_delete', 'Delete'),
(105, 1, 'btn_goto_home', 'Go Back to the Homepage'),
(106, 1, 'btn_like', 'Like'),
(107, 1, 'btn_reply', 'Reply'),
(108, 1, 'btn_send', 'Send'),
(109, 1, 'btn_submit', 'Submit'),
(110, 1, 'bucket_name', 'Bucket Name'),
(111, 1, 'bulk_post_upload', 'Bulk Post Upload'),
(112, 1, 'bulk_post_upload_exp', 'You can add your posts with a CSV file from this section'),
(113, 1, 'by_date', 'by Date'),
(114, 1, 'by_featured_order', 'by Featured Order'),
(115, 1, 'by_slider_order', 'by Slider Order'),
(116, 1, 'cache_refresh_time', 'Cache Refresh Time (Minute)'),
(117, 1, 'cache_refresh_time_exp', 'After this time, your cache files will be refreshed.'),
(118, 1, 'cache_system', 'Cache System'),
(119, 1, 'cancel', 'Cancel'),
(120, 1, 'categories', 'Categories'),
(121, 1, 'category', 'Category'),
(122, 1, 'category_block_style', 'Category Block Style'),
(123, 1, 'category_bottom_ad_space', 'Category (Bottom)'),
(124, 1, 'category_ids_list', 'Category Ids list'),
(125, 1, 'category_name', 'Category Name'),
(126, 1, 'category_top_ad_space', 'Category (Top)'),
(127, 1, 'change_avatar', 'Change Avatar'),
(128, 1, 'change_favicon', 'Change favicon'),
(129, 1, 'change_logo', 'Change logo'),
(130, 1, 'change_password', 'Change Password'),
(131, 1, 'change_user_role', 'Change User Role'),
(132, 1, 'choose_post_format', 'Choose a Post Format'),
(133, 1, 'city', 'City'),
(134, 1, 'client_id', 'Client ID'),
(135, 1, 'client_secret', 'Client Secret'),
(136, 1, 'close', 'Close'),
(137, 1, 'color', 'Color'),
(138, 1, 'comment', 'Comment'),
(139, 1, 'comments', 'Comments'),
(140, 1, 'comment_approval_system', 'Comment Approval System'),
(141, 1, 'comment_system', 'Comment System'),
(142, 1, 'completed', 'Completed'),
(143, 1, 'configurations', 'Configurations'),
(144, 1, 'confirmed', 'Confirmed'),
(145, 1, 'confirm_album', 'Are you sure you want to delete this album?'),
(146, 1, 'confirm_answer', 'Are you sure you want to delete this answer?'),
(147, 1, 'confirm_ban', 'Are you sure you want to ban this user?'),
(148, 1, 'confirm_category', 'Are you sure you want to delete this category?'),
(149, 1, 'confirm_comment', 'Are you sure you want to delete this comment?'),
(150, 1, 'confirm_comments', 'Are you sure you want to delete selected comments?'),
(151, 1, 'confirm_email', 'Are you sure you want to delete this email?'),
(152, 1, 'confirm_image', 'Are you sure you want to delete this image?'),
(153, 1, 'confirm_item', 'Are you sure you want to delete this item?'),
(154, 1, 'confirm_language', 'Are you sure you want to delete this language?'),
(155, 1, 'confirm_link', 'Are you sure you want to delete this link?'),
(156, 1, 'confirm_message', 'Are you sure you want to delete this message?'),
(157, 1, 'confirm_messages', 'Are you sure you want to delete selected messages?'),
(158, 1, 'confirm_page', 'Are you sure you want to delete this page?'),
(159, 1, 'confirm_poll', 'Are you sure you want to delete this poll?'),
(160, 1, 'confirm_post', 'Are you sure you want to delete this post?'),
(161, 1, 'confirm_posts', 'Are you sure you want to delete selected posts?'),
(162, 1, 'confirm_question', 'Are you sure you want to delete this question?'),
(163, 1, 'confirm_record', 'Are you sure you want to delete this record?'),
(164, 1, 'confirm_remove_ban', 'Are you sure you want to remove ban for this user?'),
(165, 1, 'confirm_result', 'Are you sure you want to delete this result?'),
(166, 1, 'confirm_rss', 'Are you sure you want to delete this feed?'),
(167, 1, 'confirm_user', 'Are you sure you want to delete this user?'),
(168, 1, 'confirm_user_email', 'Confirm User Email'),
(169, 1, 'confirm_widget', 'Are you sure you want to delete this widget?'),
(170, 1, 'confirm_your_email', 'Confirm Your Email'),
(171, 1, 'connect_with_facebook', 'Connect with Facebook'),
(172, 1, 'connect_with_google', 'Connect with Google'),
(173, 1, 'connect_with_vk', 'Connect with VK'),
(174, 1, 'contact', 'Contact'),
(175, 1, 'contact_message', 'Contact Message'),
(176, 1, 'contact_messages', 'Contact Messages'),
(177, 1, 'contact_messages_will_send', 'Contact messages will be sent to this email.'),
(178, 1, 'contact_settings', 'Contact Settings'),
(179, 1, 'contact_text', 'Contact Text'),
(180, 1, 'content', 'Content'),
(181, 1, 'cookies_warning', 'Cookies Warning'),
(182, 1, 'cookie_prefix', 'Cookie Prefix'),
(183, 1, 'copyright', 'Copyright'),
(184, 1, 'correct', 'Correct'),
(185, 1, 'correct_answer', 'Correct Answer'),
(186, 1, 'country', 'Country'),
(187, 1, 'create_account', 'Create an Account'),
(188, 1, 'currency', 'Currency'),
(189, 1, 'currency_format', 'Currency Format'),
(190, 1, 'currency_name', 'Currency Name'),
(191, 1, 'currency_symbol', 'Currency Symbol'),
(192, 1, 'currency_symbol_format', 'Currency Symbol Format'),
(193, 1, 'custom', 'Custom'),
(194, 1, 'custom_css_codes', 'Custom CSS Codes'),
(195, 1, 'custom_css_codes_exp', 'These codes will be added to the header of the site.'),
(196, 1, 'custom_javascript_codes', 'Custom JavaScript Codes'),
(197, 1, 'custom_javascript_codes_exp', 'These codes will be added to the footer of the site.'),
(198, 1, 'daily', 'Daily'),
(199, 1, 'dark_mode', 'Dark Mode'),
(200, 1, 'dashboard', 'Dashboard'),
(201, 1, 'data_type', 'Data Type'),
(202, 1, 'date', 'Date'),
(203, 1, 'date_added', 'Date Added'),
(204, 1, 'date_publish', 'Date Published'),
(205, 1, 'day', 'day'),
(206, 1, 'days', 'days'),
(207, 1, 'days_remaining', 'Days Remaining'),
(208, 1, 'December', 'Dec'),
(209, 1, 'default', 'Default'),
(210, 1, 'default_language', 'Default Language'),
(211, 1, 'delete', 'Delete'),
(212, 1, 'delete_account', 'Delete Account'),
(213, 1, 'delete_account_confirm', 'Deleting your account is permanent and will remove all content including comments, avatars and profile settings. Are you sure you want to delete your account?'),
(214, 1, 'delete_all_posts', 'Delete All Posts'),
(215, 1, 'delete_only_rss_posts', 'Delete only RSS Posts'),
(216, 1, 'delete_reading_list', 'Remove from Reading List'),
(217, 1, 'description', 'Description'),
(218, 1, 'disable', 'Disable'),
(219, 1, 'disable_reward_system', 'Disable Reward System'),
(220, 1, 'dislike', 'Dislike'),
(221, 1, 'documentation', 'Documentation'),
(222, 1, 'dont_add_menu', 'Don\'t Add to Menu'),
(223, 1, 'dont_want_receive_emails', 'Don\'t want receive these emails?'),
(224, 1, 'download_button', 'Download Button'),
(225, 1, 'download_csv_example', 'Download CSV Example'),
(226, 1, 'download_csv_template', 'Download CSV Template'),
(227, 1, 'download_database_backup', 'Download Database Backup'),
(228, 1, 'download_images_my_server', 'Download Images to My Server'),
(229, 1, 'drafts', 'Drafts'),
(230, 1, 'drag_drop_files_here', 'Drag and drop files here or'),
(231, 1, 'drag_drop_file_here', 'Drag and drop file here or'),
(232, 1, 'earnings', 'Earnings'),
(233, 1, 'edit', 'Edit'),
(234, 1, 'edit_phrases', 'Edit Phrases'),
(235, 1, 'edit_role', 'Edit Role'),
(236, 1, 'edit_translations', 'Edit Translations'),
(237, 1, 'email', 'Email'),
(238, 1, 'email_reset_password', 'Please click on the button below to reset your password.'),
(239, 1, 'email_settings', 'Email Settings'),
(240, 1, 'email_status', 'Email Status'),
(241, 1, 'email_verification', 'Email Verification'),
(242, 1, 'embed_media', 'Embed Media'),
(243, 1, 'emoji_reactions', 'Emoji Reactions'),
(244, 1, 'enable', 'Enable'),
(245, 1, 'enable_reward_system', 'Enable Reward System'),
(246, 1, 'encryption', 'Encryption'),
(247, 1, 'enter_email_address', 'Enter your email address'),
(248, 1, 'enter_new_password', 'Enter your new password'),
(249, 1, 'example', 'Example'),
(250, 1, 'export', 'Export'),
(251, 1, 'facebook', 'Facebook'),
(252, 1, 'facebook_comments', 'Facebook Comments'),
(253, 1, 'facebook_comments_code', 'Facebook Comments Plugin Code'),
(254, 1, 'favicon', 'Favicon'),
(255, 1, 'featured', 'Featured'),
(256, 1, 'featured_order', 'Featured Order'),
(257, 1, 'featured_posts', 'Featured Posts'),
(258, 1, 'February', 'Feb'),
(259, 1, 'feed', 'Feed'),
(260, 1, 'feed_name', 'Feed Name'),
(261, 1, 'feed_url', 'Feed URL'),
(262, 1, 'field', 'Field'),
(263, 1, 'files', 'Files'),
(264, 1, 'files_exp', 'Downloadable additional files (.pdf, .docx, .zip etc..)'),
(265, 1, 'file_extensions', 'File Extensions'),
(266, 1, 'file_manager', 'File Manager'),
(267, 1, 'file_upload', 'File Upload'),
(268, 1, 'filter', 'Filter'),
(269, 1, 'folder_name', 'Folder Name'),
(270, 1, 'follow', 'Follow'),
(271, 1, 'followers', 'Followers'),
(272, 1, 'following', 'Following'),
(273, 1, 'fonts', 'Fonts'),
(274, 1, 'font_family', 'Font Family'),
(275, 1, 'font_settings', 'Font Settings'),
(276, 1, 'footer', 'Footer'),
(277, 1, 'footer_about_section', 'Footer About Section'),
(278, 1, 'footer_follow', 'Social Media'),
(279, 1, 'footer_random_posts', 'Random Posts'),
(280, 1, 'forgot_password', 'Forgot Password'),
(281, 1, 'form_confirm_password', 'Confirm Password'),
(282, 1, 'form_email', 'Email'),
(283, 1, 'form_old_password', 'Old Password'),
(284, 1, 'form_password', 'Password'),
(285, 1, 'form_username', 'Username'),
(286, 1, 'form_validation_is_unique', 'The {field} field must contain a unique value.'),
(287, 1, 'form_validation_matches', 'The {field} field does not match the {param} field.'),
(288, 1, 'form_validation_max_length', 'The {field} field cannot exceed {param} characters in length.'),
(289, 1, 'form_validation_min_length', 'The {field} field must be at least {param} characters in length.'),
(290, 1, 'form_validation_required', 'The {field} field is required.'),
(291, 1, 'frequency', 'Frequency'),
(292, 1, 'frequency_exp', 'This value indicates how frequently the content at a particular URL is likely to change'),
(293, 1, 'full_name', 'Full Name'),
(294, 1, 'funny', 'Funny'),
(295, 1, 'gallery', 'Gallery'),
(296, 1, 'gallery_albums', 'Gallery Albums'),
(297, 1, 'gallery_categories', 'Gallery Categories'),
(298, 1, 'gallery_post', 'Gallery Post'),
(299, 1, 'gallery_post_exp', 'A collection of images'),
(300, 1, 'gallery_post_items', 'Gallery Post Items'),
(301, 1, 'general', 'General'),
(302, 1, 'general_settings', 'General Settings'),
(303, 1, 'generate', 'Generate'),
(304, 1, 'generated_sitemaps', 'Generated Sitemaps'),
(305, 1, 'generate_keywords_from_title', 'Generate Keywords from Title'),
(306, 1, 'generate_sitemap', 'Generate Sitemap'),
(307, 1, 'get_video', 'Get Video'),
(308, 1, 'get_video_from_url', 'Get Video from URL'),
(309, 1, 'google', 'Google'),
(310, 1, 'google_analytics', 'Google Analytics'),
(311, 1, 'google_analytics_code', 'Google Analytics Code'),
(312, 1, 'google_recaptcha', 'Google reCAPTCHA'),
(313, 1, 'header_top_ad_space', 'Header'),
(314, 1, 'help_documents', 'Help Documents'),
(315, 1, 'help_documents_exp', 'You can use these documents to generate your CSV file'),
(316, 1, 'hide', 'Hide'),
(317, 1, 'hit', 'Hit'),
(318, 1, 'home', 'Home'),
(319, 1, 'homepage', 'Homepage'),
(320, 1, 'home_title', 'Home Title'),
(321, 1, 'horizontal', 'Horizontal'),
(322, 1, 'hour', 'hour'),
(323, 1, 'hourly', 'Hourly'),
(324, 1, 'hours', 'hours'),
(325, 1, 'iban', 'IBAN'),
(326, 1, 'iban_long', 'International Bank Account Number'),
(327, 1, 'id', 'Id'),
(328, 1, 'image', 'Image'),
(329, 1, 'images', 'Images'),
(330, 1, 'image_description', 'Image Description'),
(331, 1, 'image_for_video', 'Image for video'),
(332, 1, 'importing_posts', 'Importing posts...'),
(333, 1, 'import_language', 'Import Language'),
(334, 1, 'import_rss_feed', 'Import RSS Feed'),
(335, 1, 'inactive', 'Inactive'),
(336, 1, 'index', 'Index'),
(337, 1, 'index_bottom_ad_space', 'Index (Bottom)'),
(338, 1, 'index_top_ad_space', 'Index (Top)'),
(339, 1, 'insufficient_balance', 'Insufficient balance!'),
(340, 1, 'invalid', 'Invalid!'),
(341, 1, 'invalid_feed_url', 'Invalid feed URL!'),
(342, 1, 'invalid_file_type', 'Invalid file type!'),
(343, 1, 'invalid_url', 'Invalid URL!'),
(344, 1, 'ip_address', 'Ip Address'),
(345, 1, 'item_order', 'Item Order'),
(346, 1, 'January', 'Jan'),
(347, 1, 'join_newsletter', 'Join Our Newsletter'),
(348, 1, 'json_language_file', 'JSON Language File'),
(349, 1, 'July', 'Jul'),
(350, 1, 'June', 'Jun'),
(351, 1, 'just_now', 'Just Now'),
(352, 1, 'keywords', 'Keywords'),
(353, 1, 'label', 'Label'),
(354, 1, 'label_video', 'Video'),
(355, 1, 'language', 'Language'),
(356, 1, 'languages', 'Languages'),
(357, 1, 'language_code', 'Language Code'),
(358, 1, 'language_name', 'Language Name'),
(359, 1, 'language_settings', 'Language Settings'),
(360, 1, 'last_comments', 'Latest Comments'),
(361, 1, 'last_contact_messages', 'Latest Contact Messages'),
(362, 1, 'last_modification', 'Last Modification'),
(363, 1, 'last_modification_exp', 'The time the URL was last modified'),
(364, 1, 'last_seen', 'Last seen:'),
(365, 1, 'latest_posts', 'Latest Posts'),
(366, 1, 'latest_users', 'Latest Users'),
(367, 1, 'leave_message', 'Send a Message'),
(368, 1, 'leave_reply', 'Leave a Reply'),
(369, 1, 'left', 'Left'),
(370, 1, 'left_to_right', 'Left to Right'),
(371, 1, 'like', 'Like'),
(372, 1, 'link', 'Link'),
(373, 1, 'load_more', 'Load More'),
(374, 1, 'load_more_comments', 'Load More Comments'),
(375, 1, 'local_storage', 'Local Storage'),
(376, 1, 'location', 'Location'),
(377, 1, 'login', 'Login'),
(378, 1, 'login_error', 'Wrong username or password!'),
(379, 1, 'logo', 'Logo'),
(380, 1, 'logout', 'Logout'),
(381, 1, 'logo_email', 'Logo Email'),
(382, 1, 'logo_footer', 'Logo Footer'),
(383, 1, 'love', 'Love'),
(384, 1, 'mail', 'Mail'),
(385, 1, 'mail_host', 'Mail Host'),
(386, 1, 'mail_is_being_sent', 'Mail is being sent. Please do not close this page until the process is finished!'),
(387, 1, 'mail_library', 'Mail Library'),
(388, 1, 'mail_password', 'Mail Password'),
(389, 1, 'mail_port', 'Mail Port'),
(390, 1, 'mail_protocol', 'Mail Protocol'),
(391, 1, 'mail_title', 'Mail Title'),
(392, 1, 'mail_username', 'Mail Username'),
(393, 1, 'maintenance_mode', 'Maintenance Mode'),
(394, 1, 'main_menu', 'Main Menu'),
(395, 1, 'main_navigation', 'MAIN NAVIGATION'),
(396, 1, 'main_post_image', 'Main post image'),
(397, 1, 'manage_all_posts', 'Manage All Posts'),
(398, 1, 'March', 'Mar'),
(399, 1, 'max', 'Max'),
(400, 1, 'May', 'May'),
(401, 1, 'member_since', 'Member since'),
(402, 1, 'menu_limit', 'Menu Limit '),
(403, 1, 'message', 'Message'),
(404, 1, 'message_ban_error', 'Your account has been banned!'),
(405, 1, 'message_change_password_error', 'There was a problem changing your password!'),
(406, 1, 'message_change_password_success', 'Your password has been successfully changed!'),
(407, 1, 'message_comment_delete', 'Are you sure you want to delete this comment?'),
(408, 1, 'message_contact_error', 'There was a problem sending your message!'),
(409, 1, 'message_contact_success', 'Your message has been successfully sent!'),
(410, 1, 'message_email_unique_error', 'The email has already been taken.'),
(411, 1, 'message_invalid_email', 'Invalid email address!'),
(412, 1, 'message_newsletter_error', 'Your email address is already registered!'),
(413, 1, 'message_newsletter_success', 'Your email address has been successfully added!'),
(414, 1, 'message_page_auth', 'You must be logged in to view this page!'),
(415, 1, 'message_post_auth', 'You must be logged in to view this post!'),
(416, 1, 'message_profile_success', 'Your profile has been successfully updated!'),
(417, 1, 'message_register_error', 'There was a problem during registration. Please try again!'),
(418, 1, 'meta_tag', 'Meta Tag'),
(419, 1, 'min', 'Min'),
(420, 1, 'minute', 'minute'),
(421, 1, 'minutes', 'minutes'),
(422, 1, 'month', 'month'),
(423, 1, 'monthly', 'Monthly'),
(424, 1, 'months', 'months'),
(425, 1, 'more_info', 'More info'),
(426, 1, 'more_main_images', 'More main images (slider will be active)'),
(427, 1, 'msg_added', 'Item successfully added!'),
(428, 1, 'msg_add_breaking', 'Post added to breaking news!'),
(429, 1, 'msg_add_featured', 'Post added to featured posts!'),
(430, 1, 'msg_add_recommended', 'Post added to recommended posts!'),
(431, 1, 'msg_add_slider', 'Post added to slider!'),
(432, 1, 'msg_ban_removed', 'User ban successfully removed!'),
(433, 1, 'msg_beforeunload', 'You have unsaved changes! Are you sure you want to leave this page?'),
(434, 1, 'msg_comment_approved', 'Comment successfully approved!'),
(435, 1, 'msg_comment_sent_successfully', 'Your comment has been sent. It will be published after being reviewed by the site management.'),
(436, 1, 'msg_confirmation_email', 'Please confirm your email address by clicking the button below.'),
(437, 1, 'msg_confirmed', 'Your email address has been successfully confirmed!'),
(438, 1, 'msg_confirmed_required', 'Please verify your email address!'),
(439, 1, 'msg_cron_feed', 'With this URL you can automatically update your feeds.'),
(440, 1, 'msg_cron_scheduled', 'If you want to automatically publish scheduled posts, you should create a Cron Job function with this URL. For more information, please read the documentation.'),
(441, 1, 'msg_cron_sitemap', 'With this URL you can automatically update your sitemap.'),
(442, 1, 'msg_deleted', 'Item successfully deleted!'),
(443, 1, 'msg_delete_album', 'Please delete categories belonging to this album first!'),
(444, 1, 'msg_delete_images', 'Please delete images belonging to this category first!'),
(445, 1, 'msg_delete_posts', 'Please delete posts belonging to this category first!'),
(446, 1, 'msg_delete_subcategories', 'Please delete subcategories belonging to this category first!'),
(447, 1, 'msg_delete_subpages', 'Please delete subpages/sublinks first!'),
(448, 1, 'msg_email_sent', 'Email successfully sent!'),
(449, 1, 'msg_error', 'An error occurred please try again!'),
(450, 1, 'msg_language_delete', 'Default language cannot be deleted!'),
(451, 1, 'msg_not_authorized', 'You are not authorized to perform this operation!'),
(452, 1, 'msg_page_delete', 'Default pages cannot be deleted!'),
(453, 1, 'msg_payout_added', 'Payout has been successfully added!'),
(454, 1, 'msg_post_approved', 'Post approved!'),
(455, 1, 'msg_published', 'Post successfully published!'),
(456, 1, 'msg_recaptcha', 'Please confirm that you are not a robot!'),
(457, 1, 'msg_remove_breaking', 'Post removed from breaking news!'),
(458, 1, 'msg_remove_featured', 'Post removed from featured posts!'),
(459, 1, 'msg_remove_recommended', 'Post removed from recommended posts!'),
(460, 1, 'msg_remove_slider', 'Post removed from slider!'),
(461, 1, 'msg_reset_cache', 'All cache files have been deleted!'),
(462, 1, 'msg_role_changed', 'User role successfully changed!'),
(463, 1, 'msg_rss_warning', 'If you chose to download the images to your server, adding posts will take more time and will use more resources. If you see any problems, increase \'max_execution_time\' and \'memory_limit\' values from your server settings.'),
(464, 1, 'msg_send_confirmation_email', 'A confirmation email has been sent to your email address for activation. Please confirm your account.'),
(465, 1, 'msg_slug_used', 'The slug you entered is being used by another user!'),
(466, 1, 'msg_suc_added', 'successfully added!'),
(467, 1, 'msg_suc_deleted', 'successfully deleted!'),
(468, 1, 'msg_suc_updated', 'successfully updated!'),
(469, 1, 'msg_unsubscribe', 'You will no longer receive emails from us!'),
(470, 1, 'msg_updated', 'Changes successfully saved!'),
(471, 1, 'msg_username_unique_error', 'The username has already been taken.'),
(472, 1, 'msg_user_added', 'User successfully added!'),
(473, 1, 'msg_user_banned', 'User successfully banned!'),
(474, 1, 'msg_widget_delete', 'Default widgets cannot be deleted!'),
(475, 1, 'msg_wrong_password', 'Wrong Password!'),
(476, 1, 'multilingual_system', 'Multilingual System'),
(477, 1, 'musician', 'Musician'),
(478, 1, 'name', 'Name'),
(479, 1, 'navigation', 'Navigation'),
(480, 1, 'navigation_exp', 'You can manage the navigation by dragging and dropping menu items.'),
(481, 1, 'nav_drag_warning', 'You cannot drag a category below a page or a page below a category link!'),
(482, 1, 'nav_home', 'Home'),
(483, 1, 'nav_login', 'Login'),
(484, 1, 'nav_register', 'Register'),
(485, 1, 'nav_reset_password', 'Reset Password'),
(486, 1, 'never', 'Never'),
(487, 1, 'newsletter', 'Newsletter'),
(488, 1, 'newsletter_desc', 'Join our subscribers list to get the latest news, updates and special offers directly in your inbox'),
(489, 1, 'newsletter_email_error', 'Select email addresses that you want to send mail!'),
(490, 1, 'newsletter_popup', 'Newsletter Popup'),
(491, 1, 'newsletter_send_many_exp', 'Some servers do not allow mass mailing. Therefore, instead of sending your mails to all subscribers at once, you can send them part by part (Example: 50 subscribers at once). If your mail server stops sending mail, the sending process will also stop.'),
(492, 1, 'new_password', 'New Password'),
(493, 1, 'next', 'Next'),
(494, 1, 'next_article', 'Next Article'),
(495, 1, 'next_video', 'Next Video'),
(496, 1, 'no', 'No'),
(497, 1, 'none', 'None'),
(498, 1, 'November', 'Nov'),
(499, 1, 'no_records_found', 'No records found.'),
(500, 1, 'no_thanks', 'No, thanks'),
(501, 1, 'number_of_correct_answers', 'Number of Correct Answers'),
(502, 1, 'number_of_correct_answers_range', 'The range of correct answers to show this result'),
(503, 1, 'number_of_days', 'Number of Days'),
(504, 1, 'number_of_days_exp', 'If you add 30 here, the system will delete posts older than 30 days'),
(505, 1, 'number_of_links_in_menu', 'The number of links that appear in the menu'),
(506, 1, 'number_of_posts_import', 'Number of Posts to Import'),
(507, 1, 'October', 'Oct'),
(508, 1, 'ok', 'OK'),
(509, 1, 'online', 'online'),
(510, 1, 'only_registered', 'Only Registered'),
(511, 1, 'optional', 'Optional'),
(512, 1, 'optional', 'Optional'),
(513, 1, 'optional_url', 'Optional URL'),
(514, 1, 'optional_url_name', 'Post Optional URL Button Name'),
(515, 1, 'options', 'Options'),
(516, 1, 'option_1', 'Option 1'),
(517, 1, 'option_10', 'Option 10'),
(518, 1, 'option_2', 'Option 2'),
(519, 1, 'option_3', 'Option 3'),
(520, 1, 'option_4', 'Option 4'),
(521, 1, 'option_5', 'Option 5'),
(522, 1, 'option_6', 'Option 6'),
(523, 1, 'option_7', 'Option 7'),
(524, 1, 'option_8', 'Option 8'),
(525, 1, 'option_9', 'Option 9'),
(526, 1, 'or', 'or'),
(527, 1, 'order', 'Menu Order'),
(528, 1, 'order_1', 'Order'),
(529, 1, 'or_login_with_email', 'Or login with email'),
(530, 1, 'or_register_with_email', 'Or register with email'),
(531, 1, 'page', 'Page'),
(532, 1, 'pages', 'Pages'),
(533, 1, 'pageviews', 'Pageviews'),
(534, 1, 'pageviews', 'Pageviews'),
(535, 1, 'page_not_found', 'Page not found'),
(536, 1, 'page_not_found_sub', 'The page you are looking for doesn\'t exist.'),
(537, 1, 'page_type', 'Page Type'),
(538, 1, 'pagination_number_posts', 'Number of Posts Per Page (Pagination)'),
(539, 1, 'panel', 'Panel'),
(540, 1, 'parent_category', 'Parent Category'),
(541, 1, 'parent_link', 'Parent Link'),
(542, 1, 'paste_ad_code', 'Ad Code'),
(543, 1, 'paste_ad_url', 'Ad URL'),
(544, 1, 'payouts', 'Payouts'),
(545, 1, 'payouts', 'Payouts'),
(546, 1, 'payout_method', 'Payout Method'),
(547, 1, 'payout_methods', 'Payout Methods'),
(548, 1, 'paypal', 'PayPal'),
(549, 1, 'paypal_email_address', 'PayPal Email Address'),
(550, 1, 'pending_comments', 'Pending Comments'),
(551, 1, 'pending_posts', 'Pending Posts'),
(552, 1, 'permissions', 'Permissions'),
(553, 1, 'personality_quiz', 'Personality Quiz'),
(554, 1, 'personality_quiz_exp', 'Quizzes with custom results'),
(555, 1, 'phone', 'Phone'),
(556, 1, 'phrase', 'Phrase'),
(557, 1, 'phrases', 'Phrases'),
(558, 1, 'placeholder_about_me', 'About Me'),
(559, 1, 'placeholder_comment', 'Comment...'),
(560, 1, 'placeholder_confirm_password', 'Confirm Password'),
(561, 1, 'placeholder_email', 'Email Address'),
(562, 1, 'placeholder_message', 'Message'),
(563, 1, 'placeholder_old_password', 'Old Password'),
(564, 1, 'placeholder_password', 'Password'),
(565, 1, 'placeholder_search', 'Search...'),
(566, 1, 'placeholder_username', 'Username'),
(567, 1, 'play_again', 'Play Again'),
(568, 1, 'play_list_empty', 'Playlist is empty.'),
(569, 1, 'please_select_option', 'Please select an option!'),
(570, 1, 'poll', 'Poll'),
(571, 1, 'polls', 'Polls'),
(572, 1, 'popular_posts', 'Popular Posts'),
(573, 1, 'post', 'Post'),
(574, 1, 'postcode', 'Postcode'),
(575, 1, 'posts', 'Posts'),
(576, 1, 'posts_bottom_ad_space', 'Posts (Bottom)'),
(577, 1, 'posts_top_ad_space', 'Posts (Top)'),
(578, 1, 'post_bottom_ad_space', 'Post Details (Bottom)'),
(579, 1, 'post_comment', 'Post Comment'),
(580, 1, 'post_details', 'Post Details'),
(581, 1, 'post_formats', 'Post Formats'),
(582, 1, 'post_list_style', 'Post Item List Style'),
(583, 1, 'post_options', 'Post Options'),
(584, 1, 'post_owner', 'Post Owner'),
(585, 1, 'post_tags', 'Tags:'),
(586, 1, 'post_top_ad_space', 'Post Details (Top)'),
(587, 1, 'post_type', 'Post Type'),
(588, 1, 'preferences', 'Preferences'),
(589, 1, 'preview', 'Preview'),
(590, 1, 'previous', 'Previous'),
(591, 1, 'previous_article', 'Previous Article'),
(592, 1, 'previous_video', 'Previous Video'),
(593, 1, 'primary_font', 'Primary Font (Main)'),
(594, 1, 'priority', 'Priority'),
(595, 1, 'priority_exp', 'The priority of a particular URL relative to other pages on the same site'),
(596, 1, 'priority_none', 'Automatically Calculated Priority'),
(597, 1, 'profile', 'Profile'),
(598, 1, 'profile_bottom_ad_space', 'Profile &#40;Bottom&#41;'),
(599, 1, 'profile_top_ad_space', 'Profile &#40;Top&#41;'),
(600, 1, 'publish', 'Publish'),
(601, 1, 'pwa_warning', 'If you enable PWA option, read \'Progressive Web App (PWA)\' section from our documentation to make the necessary settings.'),
(602, 1, 'question', 'Question'),
(603, 1, 'questions', 'Questions'),
(604, 1, 'quiz_images', 'Quiz Images'),
(605, 1, 'random_posts', 'Random Posts'),
(606, 1, 'reading_list', 'Reading List'),
(607, 1, 'reading_list_bottom_ad_space', 'Reading List (Bottom)'),
(608, 1, 'reading_list_top_ad_space', 'Reading List (Top)'),
(609, 1, 'read_more_button_text', 'Read More Button Text'),
(610, 1, 'recently_added_comments', 'Recently added comments'),
(611, 1, 'recently_added_contact_messages', 'Recently added contact messages'),
(612, 1, 'recently_added_unapproved_comments', 'Recently added unapproved comments'),
(613, 1, 'recently_registered_users', 'Recently registered users'),
(614, 1, 'recommended', 'Recommended'),
(615, 1, 'recommended_posts', 'Recommended Posts'),
(616, 1, 'redirect_rss_posts_to_original', 'Redirect RSS Posts to the Original Site'),
(617, 1, 'refresh_cache_database_changes', 'Refresh Cache Files When Database Changes'),
(618, 1, 'region', 'Region'),
(619, 1, 'register', 'Register'),
(620, 1, 'registered_emails', 'Registered Emails'),
(621, 1, 'registered_users_can_vote', 'Only Registered Users Can Vote'),
(622, 1, 'registration_system', 'Registration System'),
(623, 1, 'related_posts', 'Related Posts'),
(624, 1, 'related_videos', 'Related Videos'),
(625, 1, 'remember_me', 'Remember Me'),
(626, 1, 'remove_ban', 'Remove Ban'),
(627, 1, 'remove_breaking', 'Remove from Breaking'),
(628, 1, 'remove_featured', 'Remove from Featured'),
(629, 1, 'remove_recommended', 'Remove from Recommended'),
(630, 1, 'remove_slider', 'Remove from Slider'),
(631, 1, 'reply_to', 'Reply-To'),
(632, 1, 'required', 'Required'),
(633, 1, 'resend_activation_email', 'Resend Activation Email'),
(634, 1, 'reset', 'Reset'),
(635, 1, 'reset_cache', 'Reset Cache'),
(636, 1, 'reset_password', 'Reset Password'),
(637, 1, 'reset_password_error', 'We can\'t find a user with that e-mail address!'),
(638, 1, 'reset_password_success', 'We\'ve sent an email for resetting your password to your email address. Please check your email for next steps.'),
(639, 1, 'result', 'Result'),
(640, 1, 'results', 'Results'),
(641, 1, 'reward_amount', 'Reward Amount for 1000 Pageviews'),
(642, 1, 'reward_system', 'Reward System'),
(643, 1, 'right', 'Right'),
(644, 1, 'right_to_left', 'Right to Left'),
(645, 1, 'role', 'Role'),
(646, 1, 'roles_permissions', 'Roles & Permissions'),
(647, 1, 'role_name', 'Role Name'),
(648, 1, 'route_settings', 'Route Settings'),
(649, 1, 'route_settings_warning', 'You cannot use special characters in routes. If your language contains special characters, please be careful when editing routes. If you enter an invalid route, you will not be able to access the related page.'),
(650, 1, 'rss', 'RSS'),
(651, 1, 'rss_feeds', 'RSS Feeds'),
(652, 1, 'sad', 'Sad'),
(653, 1, 'save', 'Save'),
(654, 1, 'save_changes', 'Save Changes'),
(655, 1, 'save_draft', 'Save as Draft'),
(656, 1, 'scheduled_post', 'Scheduled Post'),
(657, 1, 'scheduled_posts', 'Scheduled Posts'),
(658, 1, 'search', 'Search'),
(659, 1, 'search_bottom_ad_space', 'Search (Bottom)'),
(660, 1, 'search_noresult', 'No results found.'),
(661, 1, 'search_top_ad_space', 'Search (Top)'),
(662, 1, 'secondary_font', 'Secondary Font (Titles)'),
(663, 1, 'secret_key', 'Secret Key'),
(664, 1, 'secure_key', 'Secure Key'),
(665, 1, 'select', 'Select'),
(666, 1, 'select_ad_spaces', 'Select Ad Space'),
(667, 1, 'select_an_option', 'Select an option'),
(668, 1, 'select_audio', 'Select Audio'),
(669, 1, 'select_a_result', 'Select a result'),
(670, 1, 'select_category', 'Select a category'),
(671, 1, 'select_file', 'Select File'),
(672, 1, 'select_image', 'Select Image'),
(673, 1, 'select_multiple_images', 'You can select multiple images.'),
(674, 1, 'select_video', 'Select Video'),
(675, 1, 'send_contact_to_mail', 'Send Contact Messages to Email Address'),
(676, 1, 'send_email', 'Send Email'),
(677, 1, 'send_email_registered', 'Send Email to Registered Emails'),
(678, 1, 'send_email_subscriber', 'Send Email to Subscriber'),
(679, 1, 'send_email_subscribers', 'Send Email to Subscribers'),
(680, 1, 'send_test_email', 'Send Test Email'),
(681, 1, 'send_test_email_exp', 'You can send a test mail to check if your mail server is working.'),
(682, 1, 'seo_options', 'Seo options'),
(683, 1, 'seo_tools', 'SEO Tools'),
(684, 1, 'September', 'Sep'),
(685, 1, 'server_response', 'Server\'s Response'),
(686, 1, 'settings', 'Settings'),
(687, 1, 'settings_language', 'Settings Language'),
(688, 1, 'set_as_album_cover', 'Set as Album Cover'),
(689, 1, 'set_as_default', 'Set as Default'),
(690, 1, 'set_default_payment_account', 'Set as Default Payment Account'),
(691, 1, 'set_payout_account', 'Set Payout Account'),
(692, 1, 'share', 'Share'),
(693, 1, 'shared', 'Shared'),
(694, 1, 'short_form', 'Short Form'),
(695, 1, 'show', 'Show'),
(696, 1, 'show_all_files', 'Show all Files'),
(697, 1, 'show_at_homepage', 'Show on Homepage'),
(698, 1, 'show_breadcrumb', 'Show Breadcrumb'),
(699, 1, 'show_cookies_warning', 'Show Cookies Warning'),
(700, 1, 'show_email_on_profile', 'Show Email on Profile Page'),
(701, 1, 'show_featured_section', 'Show Featured Section'),
(702, 1, 'show_images_from_original_source', 'Show Images from Original Source'),
(703, 1, 'show_item_numbers', 'Show Item Numbers in Post Details Page'),
(704, 1, 'show_latest_posts_homepage', 'Show Latest Posts on Homepage'),
(705, 1, 'show_latest_posts_on_featured', 'Show Latest Posts on Featured Posts'),
(706, 1, 'show_latest_posts_on_slider', 'Show Latest Posts on Slider'),
(707, 1, 'show_news_ticker', 'Show News Ticker'),
(708, 1, 'show_only_own_files', 'Show Only Users Own Files'),
(709, 1, 'show_only_registered', 'Show Only to Registered Users'),
(710, 1, 'show_on_menu', 'Show on Menu'),
(711, 1, 'show_post_author', 'Show Post Author'),
(712, 1, 'show_post_dates', 'Show Post Date'),
(713, 1, 'show_post_view_counts', 'Show Post View Count'),
(714, 1, 'show_read_more_button', 'Show Read More Button'),
(715, 1, 'show_right_column', 'Show Right Column'),
(716, 1, 'show_title', 'Show Title'),
(717, 1, 'show_user_email_profile', 'Show User\'s Email on Profile'),
(718, 1, 'sidebar_bottom_ad_space', 'Sidebar (Bottom)'),
(719, 1, 'sidebar_top_ad_space', 'Sidebar (Top)'),
(720, 1, 'sitemap', 'Sitemap'),
(721, 1, 'sitemap_generate_exp', 'If your site has more than 50,000 links, the sitemap.xml file will be created in parts.'),
(722, 1, 'site_color', 'Site Color'),
(723, 1, 'site_description', 'Site Description'),
(724, 1, 'site_font', 'Site Font'),
(725, 1, 'site_key', 'Site Key'),
(726, 1, 'site_title', 'Site Title'),
(727, 1, 'slider', 'Slider'),
(728, 1, 'slider_order', 'Slider Order'),
(729, 1, 'slider_posts', 'Slider Posts'),
(730, 1, 'slug', 'Slug'),
(731, 1, 'slug_exp', 'If you leave it blank, it will be generated automatically.'),
(732, 1, 'smtp', 'SMTP'),
(733, 1, 'social_accounts', 'Social Accounts'),
(734, 1, 'social_login_configuration', 'Social Login Configuration'),
(735, 1, 'social_media_settings', 'Social Media Settings'),
(736, 1, 'sorted_list', 'Sorted List'),
(737, 1, 'sorted_list_exp', 'A list based article'),
(738, 1, 'sorted_list_items', 'Sorted List Items'),
(739, 1, 'sort_featured_posts', 'Sort Featured Posts'),
(740, 1, 'sort_slider_posts', 'Sort Slider Posts'),
(741, 1, 'state', 'State'),
(742, 1, 'status', 'Status'),
(743, 1, 'storage', 'Storage'),
(744, 1, 'style', 'Style'),
(745, 1, 'subcategories', 'Subcategories'),
(746, 1, 'subcategory', 'Subcategory'),
(747, 1, 'subject', 'Subject'),
(748, 1, 'subscribe', 'Subscribe'),
(749, 1, 'subscribers', 'Subscribers'),
(750, 1, 'summary', 'Summary'),
(751, 1, 'swift', 'SWIFT'),
(752, 1, 'swift_code', 'SWIFT Code'),
(753, 1, 'swift_iban', 'Bank Account Number/IBAN'),
(754, 1, 'tag', 'Tag'),
(755, 1, 'tags', 'Tags'),
(756, 1, 'tag_bottom_ad_space', 'Tag (Bottom)'),
(757, 1, 'tag_top_ad_space', 'Tag (Top)'),
(758, 1, 'terms_conditions', 'Terms & Conditions'),
(759, 1, 'terms_conditions_exp', 'I have read and agree to the'),
(760, 1, 'tertiary_font', 'Tertiary Font (Post & Page Text)'),
(761, 1, 'text_direction', 'Text Direction'),
(762, 1, 'text_editor_language', 'Text Editor Language'),
(763, 1, 'text_list_empty', 'Your reading list is empty.'),
(764, 1, 'themes', 'Themes'),
(765, 1, 'the_operation_completed', 'The operation completed successfully!'),
(766, 1, 'this_month', 'This Month'),
(767, 1, 'this_week', 'This Week'),
(768, 1, 'timezone', 'Timezone'),
(769, 1, 'title', 'Title'),
(770, 1, 'to', 'To:'),
(771, 1, 'top_menu', 'Top Menu'),
(772, 1, 'total_pageviews', 'Total Pageviews'),
(773, 1, 'total_vote', 'Total Vote:'),
(774, 1, 'translation', 'Translation'),
(775, 1, 'trivia_quiz', 'Trivia Quiz'),
(776, 1, 'trivia_quiz_exp', 'Quizzes with right and wrong answers'),
(777, 1, 'twitter', 'Twitter'),
(778, 1, 'txt_processing', 'Processing...'),
(779, 1, 'type', 'Type'),
(780, 1, 'type_tag', 'Type tag and hit enter'),
(781, 1, 'unconfirmed', 'Unconfirmed'),
(782, 1, 'unfollow', 'Unfollow'),
(783, 1, 'unsubscribe', 'Unsubscribe'),
(784, 1, 'unsubscribe_successful', 'Unsubscribe Successful!'),
(785, 1, 'update', 'Update'),
(786, 1, 'updated', 'Updated'),
(787, 1, 'update_album', 'Update Album'),
(788, 1, 'update_article', 'Update Article'),
(789, 1, 'update_audio', 'Update Audio'),
(790, 1, 'update_category', 'Update Category'),
(791, 1, 'update_font', 'Update Font'),
(792, 1, 'update_gallery', 'Update Gallery'),
(793, 1, 'update_image', 'Update Image'),
(794, 1, 'update_language', 'Update Language'),
(795, 1, 'update_link', 'Update Menu Link'),
(796, 1, 'update_page', 'Update Page'),
(797, 1, 'update_personality_quiz', 'Update Personality Quiz'),
(798, 1, 'update_poll', 'Update Poll'),
(799, 1, 'update_post', 'Update Post'),
(800, 1, 'update_profile', 'Update Profile'),
(801, 1, 'update_rss_feed', 'Update RSS Feed'),
(802, 1, 'update_sorted_list', 'Update Sorted List'),
(803, 1, 'update_subcategory', 'Update Subcategory'),
(804, 1, 'update_trivia_quiz', 'Update Trivia Quiz'),
(805, 1, 'update_video', 'Update Video'),
(806, 1, 'update_widget', 'Update Widget'),
(807, 1, 'upload', 'Upload'),
(808, 1, 'uploading', 'Uploading...'),
(809, 1, 'upload_csv_file', 'Upload CSV File'),
(810, 1, 'upload_image', 'Upload Image'),
(811, 1, 'upload_video', 'Upload Video'),
(812, 1, 'upload_your_banner', 'Create Ad Code'),
(813, 1, 'url', 'URL'),
(814, 1, 'user', 'User'),
(815, 1, 'username', 'Username'),
(816, 1, 'users', 'Users'),
(817, 1, 'user_agent', 'User-Agent'),
(818, 1, 'user_agreement', 'User Agreement'),
(819, 1, 'user_id', 'User Id'),
(820, 1, 'vertical', 'Vertical'),
(821, 1, 'video', 'Video'),
(822, 1, 'videos', 'Videos'),
(823, 1, 'video_embed_code', 'Video Embed Code'),
(824, 1, 'video_file', 'Video File'),
(825, 1, 'video_name', 'Video Name'),
(826, 1, 'video_post_exp', 'Upload or embed videos'),
(827, 1, 'video_thumbnails', 'Video Thumbnail'),
(828, 1, 'video_url', 'Video URL'),
(829, 1, 'view_all', 'View All'),
(830, 1, 'view_all_posts', 'View All Posts'),
(831, 1, 'view_options', 'View Options'),
(832, 1, 'view_result', 'View Results'),
(833, 1, 'view_results', 'View Results'),
(834, 1, 'view_site', 'View Site'),
(835, 1, 'visibility', 'Visibility'),
(836, 1, 'visual_settings', 'Visual Settings'),
(837, 1, 'vkontakte', 'VKontakte'),
(838, 1, 'vote', 'Vote'),
(839, 1, 'voted_message', 'You already voted this poll before.'),
(840, 1, 'vote_permission', 'Vote Permission'),
(841, 1, 'warning', 'Warning'),
(842, 1, 'warning_default_payout_account', 'Your earnings will be sent to your default payout account.'),
(843, 1, 'weekly', 'Weekly'),
(844, 1, 'whats_your_reaction', 'What\'s Your Reaction?'),
(845, 1, 'widget', 'Widget'),
(846, 1, 'widgets', 'Widgets'),
(847, 1, 'wow', 'Wow'),
(848, 1, 'wrong_answer', 'Wrong Answer'),
(849, 1, 'wrong_password_error', 'Wrong old password!'),
(850, 1, 'year', 'year'),
(851, 1, 'yearly', 'Yearly'),
(852, 1, 'years', 'years'),
(853, 1, 'yes', 'Yes'),
(854, 2, 'about_me', 'About Me'),
(855, 2, 'activate', 'Activate'),
(856, 2, 'activated', 'Activated'),
(857, 2, 'active', 'Active'),
(858, 2, 'additional_images', 'Additional Images'),
(859, 2, 'address', 'Address'),
(860, 2, 'add_album', 'Add Album'),
(861, 2, 'add_answer', 'Add Answer'),
(862, 2, 'add_article', 'Add Article'),
(863, 2, 'add_audio', 'Add Audio'),
(864, 2, 'add_breaking', 'Add to Breaking'),
(865, 2, 'add_category', 'Add Category'),
(866, 2, 'add_featured', 'Add to Featured'),
(867, 2, 'add_font', 'Add Font'),
(868, 2, 'add_gallery', 'Add Gallery'),
(869, 2, 'add_iframe', 'Add Iframe'),
(870, 2, 'add_image', 'Add Image'),
(871, 2, 'add_image_url', 'Add Image Url'),
(872, 2, 'add_language', 'Add Language'),
(873, 2, 'add_link', 'Add Menu Link'),
(874, 2, 'add_new_item', 'Add New Item'),
(875, 2, 'add_page', 'Add Page'),
(876, 2, 'add_payout', 'Add Payout'),
(877, 2, 'add_personality_quiz', 'Add Personality Quiz'),
(878, 2, 'add_poll', 'Add Poll'),
(879, 2, 'add_post', 'Add Post'),
(880, 2, 'add_posts_as_draft', 'Add Posts as Draft'),
(881, 2, 'add_question', 'Add Question'),
(882, 2, 'add_quiz', 'Add Quiz'),
(883, 2, 'add_reading_list', 'Add to Reading List'),
(884, 2, 'add_recommended', 'Add to Recommended'),
(885, 2, 'add_result', 'Add Result'),
(886, 2, 'add_slider', 'Add to Slider'),
(887, 2, 'add_sorted_list', 'Add Sorted List'),
(888, 2, 'add_subcategory', 'Add Subcategory'),
(889, 2, 'add_trivia_quiz', 'Add Trivia Quiz'),
(890, 2, 'add_user', 'Add User'),
(891, 2, 'add_video', 'Add Video'),
(892, 2, 'add_widget', 'Add Widget'),
(893, 2, 'admin', 'Admin'),
(894, 2, 'administrators', 'Administrators'),
(895, 2, 'admin_panel', 'Admin Panel'),
(896, 2, 'admin_panel_link', 'Admin Panel Link'),
(897, 2, 'adsense_activation_code', 'AdSense Activation Code'),
(898, 2, 'ad_space', 'Ad Space'),
(899, 2, 'ad_spaces', 'Ad Spaces'),
(900, 2, 'ago', 'ago'),
(901, 2, 'album', 'Album'),
(902, 2, 'albums', 'Albums'),
(903, 2, 'album_cover', 'Album Cover'),
(904, 2, 'album_name', 'Album Name'),
(905, 2, 'all', 'All'),
(906, 2, 'allowed_file_extensions', 'Allowed File Extensions'),
(907, 2, 'all_permissions', 'All Permissions'),
(908, 2, 'all_posts', 'All Posts'),
(909, 2, 'all_time', 'All Time'),
(910, 2, 'all_users_can_vote', 'All Users Can Vote'),
(911, 2, 'always', 'Always'),
(912, 2, 'amount', 'Amount'),
(913, 2, 'angry', 'Angry'),
(914, 2, 'answers', 'Answers'),
(915, 2, 'answer_format', 'Answer Format'),
(916, 2, 'answer_text', 'Answer Text'),
(917, 2, 'approve', 'Approve'),
(918, 2, 'approved_comments', 'Approved Comments'),
(919, 2, 'approve_added_user_posts', 'Approve Added User Posts'),
(920, 2, 'approve_updated_user_posts', 'Approve Updated User Posts'),
(921, 2, 'app_id', 'App ID'),
(922, 2, 'app_name', 'Application Name'),
(923, 2, 'app_secret', 'App Secret'),
(924, 2, 'April', 'Apr'),
(925, 2, 'article', 'Article'),
(926, 2, 'article_post_exp', 'An article with images and embed videos'),
(927, 2, 'audio', 'Audio'),
(928, 2, 'audios', 'Audios'),
(929, 2, 'audios_exp', 'Select your audios and create your playlist'),
(930, 2, 'audio_download_button', 'Audio Download Button'),
(931, 2, 'audio_post_exp', 'Upload audios and create playlist'),
(932, 2, 'August', 'Aug'),
(933, 2, 'author', 'Author'),
(934, 2, 'auto_post_deletion', 'Auto Post Deletion'),
(935, 2, 'auto_update', 'Auto Update'),
(936, 2, 'avatar', 'Avatar'),
(937, 2, 'aws_base_url', 'AWS Base URL'),
(938, 2, 'aws_key', 'AWS Access Key'),
(939, 2, 'aws_secret', 'AWS Secret Key'),
(940, 2, 'aws_storage', 'AWS S3 Storage'),
(941, 2, 'back', 'Back'),
(942, 2, 'backup', 'Backup'),
(943, 2, 'balance', 'Balance'),
(944, 2, 'bank_account_holder_name', 'Bank Account Holder\'s Name'),
(945, 2, 'bank_branch_city', 'Bank Branch City'),
(946, 2, 'bank_branch_country', 'Bank Branch Country'),
(947, 2, 'bank_name', 'Bank Name'),
(948, 2, 'banned', 'Banned'),
(949, 2, 'banner', 'Banner'),
(950, 2, 'ban_user', 'Ban User'),
(951, 2, 'block_color', 'Top Header and Block Heads Color'),
(952, 2, 'breadcrumb_home', 'Home'),
(953, 2, 'breadcrumb_videos', 'Videos'),
(954, 2, 'breaking', 'Breaking'),
(955, 2, 'breaking_news', 'Breaking News'),
(956, 2, 'browse_files', 'Browse Files'),
(957, 2, 'btn_delete', 'Delete'),
(958, 2, 'btn_goto_home', 'Go Back to the Homepage'),
(959, 2, 'btn_like', 'Like'),
(960, 2, 'btn_reply', 'Reply'),
(961, 2, 'btn_send', 'Send'),
(962, 2, 'btn_submit', 'Submit'),
(963, 2, 'bucket_name', 'Bucket Name'),
(964, 2, 'bulk_post_upload', 'Bulk Post Upload'),
(965, 2, 'bulk_post_upload_exp', 'You can add your posts with a CSV file from this section'),
(966, 2, 'by_date', 'by Date'),
(967, 2, 'by_featured_order', 'by Featured Order'),
(968, 2, 'by_slider_order', 'by Slider Order'),
(969, 2, 'cache_refresh_time', 'Cache Refresh Time (Minute)'),
(970, 2, 'cache_refresh_time_exp', 'After this time, your cache files will be refreshed.'),
(971, 2, 'cache_system', 'Cache System'),
(972, 2, 'cancel', 'Cancel'),
(973, 2, 'categories', 'Categories'),
(974, 2, 'category', 'Category'),
(975, 2, 'category_block_style', 'Category Block Style'),
(976, 2, 'category_bottom_ad_space', 'Category (Bottom)'),
(977, 2, 'category_ids_list', 'Category Ids list'),
(978, 2, 'category_name', 'Category Name'),
(979, 2, 'category_top_ad_space', 'Category (Top)'),
(980, 2, 'change_avatar', 'Change Avatar'),
(981, 2, 'change_favicon', 'Change favicon'),
(982, 2, 'change_logo', 'Change logo'),
(983, 2, 'change_password', 'Change Password'),
(984, 2, 'change_user_role', 'Change User Role'),
(985, 2, 'choose_post_format', 'Choose a Post Format'),
(986, 2, 'city', 'City'),
(987, 2, 'client_id', 'Client ID'),
(988, 2, 'client_secret', 'Client Secret'),
(989, 2, 'close', 'Close'),
(990, 2, 'color', 'Color'),
(991, 2, 'comment', 'Comment'),
(992, 2, 'comments', 'Comments'),
(993, 2, 'comment_approval_system', 'Comment Approval System'),
(994, 2, 'comment_system', 'Comment System'),
(995, 2, 'completed', 'Completed'),
(996, 2, 'configurations', 'Configurations'),
(997, 2, 'confirmed', 'Confirmed'),
(998, 2, 'confirm_album', 'Are you sure you want to delete this album?'),
(999, 2, 'confirm_answer', 'Are you sure you want to delete this answer?'),
(1000, 2, 'confirm_ban', 'Are you sure you want to ban this user?'),
(1001, 2, 'confirm_category', 'Are you sure you want to delete this category?'),
(1002, 2, 'confirm_comment', 'Are you sure you want to delete this comment?'),
(1003, 2, 'confirm_comments', 'Are you sure you want to delete selected comments?'),
(1004, 2, 'confirm_email', 'Are you sure you want to delete this email?'),
(1005, 2, 'confirm_image', 'Are you sure you want to delete this image?'),
(1006, 2, 'confirm_item', 'Are you sure you want to delete this item?'),
(1007, 2, 'confirm_language', 'Are you sure you want to delete this language?'),
(1008, 2, 'confirm_link', 'Are you sure you want to delete this link?'),
(1009, 2, 'confirm_message', 'Are you sure you want to delete this message?'),
(1010, 2, 'confirm_messages', 'Are you sure you want to delete selected messages?'),
(1011, 2, 'confirm_page', 'Are you sure you want to delete this page?'),
(1012, 2, 'confirm_poll', 'Are you sure you want to delete this poll?'),
(1013, 2, 'confirm_post', 'Are you sure you want to delete this post?'),
(1014, 2, 'confirm_posts', 'Are you sure you want to delete selected posts?'),
(1015, 2, 'confirm_question', 'Are you sure you want to delete this question?'),
(1016, 2, 'confirm_record', 'Are you sure you want to delete this record?'),
(1017, 2, 'confirm_remove_ban', 'Are you sure you want to remove ban for this user?'),
(1018, 2, 'confirm_result', 'Are you sure you want to delete this result?'),
(1019, 2, 'confirm_rss', 'Are you sure you want to delete this feed?'),
(1020, 2, 'confirm_user', 'Are you sure you want to delete this user?'),
(1021, 2, 'confirm_user_email', 'Confirm User Email'),
(1022, 2, 'confirm_widget', 'Are you sure you want to delete this widget?'),
(1023, 2, 'confirm_your_email', 'Confirm Your Email'),
(1024, 2, 'connect_with_facebook', 'Connect with Facebook'),
(1025, 2, 'connect_with_google', 'Connect with Google'),
(1026, 2, 'connect_with_vk', 'Connect with VK'),
(1027, 2, 'contact', 'Contact'),
(1028, 2, 'contact_message', 'Contact Message'),
(1029, 2, 'contact_messages', 'Contact Messages'),
(1030, 2, 'contact_messages_will_send', 'Contact messages will be sent to this email.'),
(1031, 2, 'contact_settings', 'Contact Settings'),
(1032, 2, 'contact_text', 'Contact Text'),
(1033, 2, 'content', 'Content'),
(1034, 2, 'cookies_warning', 'Cookies Warning'),
(1035, 2, 'cookie_prefix', 'Cookie Prefix'),
(1036, 2, 'copyright', 'Copyright'),
(1037, 2, 'correct', 'Correct'),
(1038, 2, 'correct_answer', 'Correct Answer'),
(1039, 2, 'country', 'Country'),
(1040, 2, 'create_account', 'Create an Account'),
(1041, 2, 'currency', 'Currency'),
(1042, 2, 'currency_format', 'Currency Format'),
(1043, 2, 'currency_name', 'Currency Name'),
(1044, 2, 'currency_symbol', 'Currency Symbol'),
(1045, 2, 'currency_symbol_format', 'Currency Symbol Format'),
(1046, 2, 'custom', 'Custom'),
(1047, 2, 'custom_css_codes', 'Custom CSS Codes'),
(1048, 2, 'custom_css_codes_exp', 'These codes will be added to the header of the site.'),
(1049, 2, 'custom_javascript_codes', 'Custom JavaScript Codes'),
(1050, 2, 'custom_javascript_codes_exp', 'These codes will be added to the footer of the site.'),
(1051, 2, 'daily', 'Daily'),
(1052, 2, 'dark_mode', 'Dark Mode'),
(1053, 2, 'dashboard', 'Dashboard'),
(1054, 2, 'data_type', 'Data Type'),
(1055, 2, 'date', 'Date'),
(1056, 2, 'date_added', 'Date Added'),
(1057, 2, 'date_publish', 'Date Published'),
(1058, 2, 'day', 'day'),
(1059, 2, 'days', 'days'),
(1060, 2, 'days_remaining', 'Days Remaining'),
(1061, 2, 'December', 'Dec'),
(1062, 2, 'default', 'Default'),
(1063, 2, 'default_language', 'Default Language'),
(1064, 2, 'delete', 'Delete'),
(1065, 2, 'delete_account', 'Delete Account'),
(1066, 2, 'delete_account_confirm', 'Deleting your account is permanent and will remove all content including comments, avatars and profile settings. Are you sure you want to delete your account?'),
(1067, 2, 'delete_all_posts', 'Delete All Posts'),
(1068, 2, 'delete_only_rss_posts', 'Delete only RSS Posts'),
(1069, 2, 'delete_reading_list', 'Remove from Reading List');
INSERT INTO `language_translations` (`id`, `lang_id`, `label`, `translation`) VALUES
(1070, 2, 'description', 'Description'),
(1071, 2, 'disable', 'Disable'),
(1072, 2, 'disable_reward_system', 'Disable Reward System'),
(1073, 2, 'dislike', 'Dislike'),
(1074, 2, 'documentation', 'Documentation'),
(1075, 2, 'dont_add_menu', 'Don\'t Add to Menu'),
(1076, 2, 'dont_want_receive_emails', 'Don\'t want receive these emails?'),
(1077, 2, 'download_button', 'Download Button'),
(1078, 2, 'download_csv_example', 'Download CSV Example'),
(1079, 2, 'download_csv_template', 'Download CSV Template'),
(1080, 2, 'download_database_backup', 'Download Database Backup'),
(1081, 2, 'download_images_my_server', 'Download Images to My Server'),
(1082, 2, 'drafts', 'Drafts'),
(1083, 2, 'drag_drop_files_here', 'Drag and drop files here or'),
(1084, 2, 'drag_drop_file_here', 'Drag and drop file here or'),
(1085, 2, 'earnings', 'Earnings'),
(1086, 2, 'edit', 'Edit'),
(1087, 2, 'edit_phrases', 'Edit Phrases'),
(1088, 2, 'edit_role', 'Edit Role'),
(1089, 2, 'edit_translations', 'Edit Translations'),
(1090, 2, 'email', 'Email'),
(1091, 2, 'email_reset_password', 'Please click on the button below to reset your password.'),
(1092, 2, 'email_settings', 'Email Settings'),
(1093, 2, 'email_status', 'Email Status'),
(1094, 2, 'email_verification', 'Email Verification'),
(1095, 2, 'embed_media', 'Embed Media'),
(1096, 2, 'emoji_reactions', 'Emoji Reactions'),
(1097, 2, 'enable', 'Enable'),
(1098, 2, 'enable_reward_system', 'Enable Reward System'),
(1099, 2, 'encryption', 'Encryption'),
(1100, 2, 'enter_email_address', 'Enter your email address'),
(1101, 2, 'enter_new_password', 'Enter your new password'),
(1102, 2, 'example', 'Example'),
(1103, 2, 'export', 'Export'),
(1104, 2, 'facebook', 'Facebook'),
(1105, 2, 'facebook_comments', 'Facebook Comments'),
(1106, 2, 'facebook_comments_code', 'Facebook Comments Plugin Code'),
(1107, 2, 'favicon', 'Favicon'),
(1108, 2, 'featured', 'Featured'),
(1109, 2, 'featured_order', 'Featured Order'),
(1110, 2, 'featured_posts', 'Featured Posts'),
(1111, 2, 'February', 'Feb'),
(1112, 2, 'feed', 'Feed'),
(1113, 2, 'feed_name', 'Feed Name'),
(1114, 2, 'feed_url', 'Feed URL'),
(1115, 2, 'field', 'Field'),
(1116, 2, 'files', 'Files'),
(1117, 2, 'files_exp', 'Downloadable additional files (.pdf, .docx, .zip etc..)'),
(1118, 2, 'file_extensions', 'File Extensions'),
(1119, 2, 'file_manager', 'File Manager'),
(1120, 2, 'file_upload', 'File Upload'),
(1121, 2, 'filter', 'Filter'),
(1122, 2, 'folder_name', 'Folder Name'),
(1123, 2, 'follow', 'Follow'),
(1124, 2, 'followers', 'Followers'),
(1125, 2, 'following', 'Following'),
(1126, 2, 'fonts', 'Fonts'),
(1127, 2, 'font_family', 'Font Family'),
(1128, 2, 'font_settings', 'Font Settings'),
(1129, 2, 'footer', 'Footer'),
(1130, 2, 'footer_about_section', 'Footer About Section'),
(1131, 2, 'footer_follow', 'Social Media'),
(1132, 2, 'footer_random_posts', 'Random Posts'),
(1133, 2, 'forgot_password', 'Forgot Password'),
(1134, 2, 'form_confirm_password', 'Confirm Password'),
(1135, 2, 'form_email', 'Email'),
(1136, 2, 'form_old_password', 'Old Password'),
(1137, 2, 'form_password', 'Password'),
(1138, 2, 'form_username', 'Username'),
(1139, 2, 'form_validation_is_unique', 'The {field} field must contain a unique value.'),
(1140, 2, 'form_validation_matches', 'The {field} field does not match the {param} field.'),
(1141, 2, 'form_validation_max_length', 'The {field} field cannot exceed {param} characters in length.'),
(1142, 2, 'form_validation_min_length', 'The {field} field must be at least {param} characters in length.'),
(1143, 2, 'form_validation_required', 'The {field} field is required.'),
(1144, 2, 'frequency', 'Frequency'),
(1145, 2, 'frequency_exp', 'This value indicates how frequently the content at a particular URL is likely to change'),
(1146, 2, 'full_name', 'Full Name'),
(1147, 2, 'funny', 'Funny'),
(1148, 2, 'gallery', 'Gallery'),
(1149, 2, 'gallery_albums', 'Gallery Albums'),
(1150, 2, 'gallery_categories', 'Gallery Categories'),
(1151, 2, 'gallery_post', 'Gallery Post'),
(1152, 2, 'gallery_post_exp', 'A collection of images'),
(1153, 2, 'gallery_post_items', 'Gallery Post Items'),
(1154, 2, 'general', 'General'),
(1155, 2, 'general_settings', 'General Settings'),
(1156, 2, 'generate', 'Generate'),
(1157, 2, 'generated_sitemaps', 'Generated Sitemaps'),
(1158, 2, 'generate_keywords_from_title', 'Generate Keywords from Title'),
(1159, 2, 'generate_sitemap', 'Generate Sitemap'),
(1160, 2, 'get_video', 'Get Video'),
(1161, 2, 'get_video_from_url', 'Get Video from URL'),
(1162, 2, 'google', 'Google'),
(1163, 2, 'google_analytics', 'Google Analytics'),
(1164, 2, 'google_analytics_code', 'Google Analytics Code'),
(1165, 2, 'google_recaptcha', 'Google reCAPTCHA'),
(1166, 2, 'header_top_ad_space', 'Header'),
(1167, 2, 'help_documents', 'Help Documents'),
(1168, 2, 'help_documents_exp', 'You can use these documents to generate your CSV file'),
(1169, 2, 'hide', 'Hide'),
(1170, 2, 'hit', 'Hit'),
(1171, 2, 'home', 'Home'),
(1172, 2, 'homepage', 'Homepage'),
(1173, 2, 'home_title', 'Home Title'),
(1174, 2, 'horizontal', 'Horizontal'),
(1175, 2, 'hour', 'hour'),
(1176, 2, 'hourly', 'Hourly'),
(1177, 2, 'hours', 'hours'),
(1178, 2, 'iban', 'IBAN'),
(1179, 2, 'iban_long', 'International Bank Account Number'),
(1180, 2, 'id', 'Id'),
(1181, 2, 'image', 'Image'),
(1182, 2, 'images', 'Images'),
(1183, 2, 'image_description', 'Image Description'),
(1184, 2, 'image_for_video', 'Image for video'),
(1185, 2, 'importing_posts', 'Importing posts...'),
(1186, 2, 'import_language', 'Import Language'),
(1187, 2, 'import_rss_feed', 'Import RSS Feed'),
(1188, 2, 'inactive', 'Inactive'),
(1189, 2, 'index', 'Index'),
(1190, 2, 'index_bottom_ad_space', 'Index (Bottom)'),
(1191, 2, 'index_top_ad_space', 'Index (Top)'),
(1192, 2, 'insufficient_balance', 'Insufficient balance!'),
(1193, 2, 'invalid', 'Invalid!'),
(1194, 2, 'invalid_feed_url', 'Invalid feed URL!'),
(1195, 2, 'invalid_file_type', 'Invalid file type!'),
(1196, 2, 'invalid_url', 'Invalid URL!'),
(1197, 2, 'ip_address', 'Ip Address'),
(1198, 2, 'item_order', 'Item Order'),
(1199, 2, 'January', 'Jan'),
(1200, 2, 'join_newsletter', 'Join Our Newsletter'),
(1201, 2, 'json_language_file', 'JSON Language File'),
(1202, 2, 'July', 'Jul'),
(1203, 2, 'June', 'Jun'),
(1204, 2, 'just_now', 'Just Now'),
(1205, 2, 'keywords', 'Keywords'),
(1206, 2, 'label', 'Label'),
(1207, 2, 'label_video', 'Video'),
(1208, 2, 'language', 'Language'),
(1209, 2, 'languages', 'Languages'),
(1210, 2, 'language_code', 'Language Code'),
(1211, 2, 'language_name', 'Language Name'),
(1212, 2, 'language_settings', 'Language Settings'),
(1213, 2, 'last_comments', 'Latest Comments'),
(1214, 2, 'last_contact_messages', 'Latest Contact Messages'),
(1215, 2, 'last_modification', 'Last Modification'),
(1216, 2, 'last_modification_exp', 'The time the URL was last modified'),
(1217, 2, 'last_seen', 'Last seen:'),
(1218, 2, 'latest_posts', 'Latest Posts'),
(1219, 2, 'latest_users', 'Latest Users'),
(1220, 2, 'leave_message', 'Send a Message'),
(1221, 2, 'leave_reply', 'Leave a Reply'),
(1222, 2, 'left', 'Left'),
(1223, 2, 'left_to_right', 'Left to Right'),
(1224, 2, 'like', 'Like'),
(1225, 2, 'link', 'Link'),
(1226, 2, 'load_more', 'Load More'),
(1227, 2, 'load_more_comments', 'Load More Comments'),
(1228, 2, 'local_storage', 'Local Storage'),
(1229, 2, 'location', 'Location'),
(1230, 2, 'login', 'Login'),
(1231, 2, 'login_error', 'Wrong username or password!'),
(1232, 2, 'logo', 'Logo'),
(1233, 2, 'logout', 'Logout'),
(1234, 2, 'logo_email', 'Logo Email'),
(1235, 2, 'logo_footer', 'Logo Footer'),
(1236, 2, 'love', 'Love'),
(1237, 2, 'mail', 'Mail'),
(1238, 2, 'mail_host', 'Mail Host'),
(1239, 2, 'mail_is_being_sent', 'Mail is being sent. Please do not close this page until the process is finished!'),
(1240, 2, 'mail_library', 'Mail Library'),
(1241, 2, 'mail_password', 'Mail Password'),
(1242, 2, 'mail_port', 'Mail Port'),
(1243, 2, 'mail_protocol', 'Mail Protocol'),
(1244, 2, 'mail_title', 'Mail Title'),
(1245, 2, 'mail_username', 'Mail Username'),
(1246, 2, 'maintenance_mode', 'Maintenance Mode'),
(1247, 2, 'main_menu', 'Main Menu'),
(1248, 2, 'main_navigation', 'MAIN NAVIGATION'),
(1249, 2, 'main_post_image', 'Main post image'),
(1250, 2, 'manage_all_posts', 'Manage All Posts'),
(1251, 2, 'March', 'Mar'),
(1252, 2, 'max', 'Max'),
(1253, 2, 'May', 'May'),
(1254, 2, 'member_since', 'Member since'),
(1255, 2, 'menu_limit', 'Menu Limit '),
(1256, 2, 'message', 'Message'),
(1257, 2, 'message_ban_error', 'Your account has been banned!'),
(1258, 2, 'message_change_password_error', 'There was a problem changing your password!'),
(1259, 2, 'message_change_password_success', 'Your password has been successfully changed!'),
(1260, 2, 'message_comment_delete', 'Are you sure you want to delete this comment?'),
(1261, 2, 'message_contact_error', 'There was a problem sending your message!'),
(1262, 2, 'message_contact_success', 'Your message has been successfully sent!'),
(1263, 2, 'message_email_unique_error', 'The email has already been taken.'),
(1264, 2, 'message_invalid_email', 'Invalid email address!'),
(1265, 2, 'message_newsletter_error', 'Your email address is already registered!'),
(1266, 2, 'message_newsletter_success', 'Your email address has been successfully added!'),
(1267, 2, 'message_page_auth', 'You must be logged in to view this page!'),
(1268, 2, 'message_post_auth', 'You must be logged in to view this post!'),
(1269, 2, 'message_profile_success', 'Your profile has been successfully updated!'),
(1270, 2, 'message_register_error', 'There was a problem during registration. Please try again!'),
(1271, 2, 'meta_tag', 'Meta Tag'),
(1272, 2, 'min', 'Min'),
(1273, 2, 'minute', 'minute'),
(1274, 2, 'minutes', 'minutes'),
(1275, 2, 'month', 'month'),
(1276, 2, 'monthly', 'Monthly'),
(1277, 2, 'months', 'months'),
(1278, 2, 'more_info', 'More info'),
(1279, 2, 'more_main_images', 'More main images (slider will be active)'),
(1280, 2, 'msg_added', 'Item successfully added!'),
(1281, 2, 'msg_add_breaking', 'Post added to breaking news!'),
(1282, 2, 'msg_add_featured', 'Post added to featured posts!'),
(1283, 2, 'msg_add_recommended', 'Post added to recommended posts!'),
(1284, 2, 'msg_add_slider', 'Post added to slider!'),
(1285, 2, 'msg_ban_removed', 'User ban successfully removed!'),
(1286, 2, 'msg_beforeunload', 'You have unsaved changes! Are you sure you want to leave this page?'),
(1287, 2, 'msg_comment_approved', 'Comment successfully approved!'),
(1288, 2, 'msg_comment_sent_successfully', 'Your comment has been sent. It will be published after being reviewed by the site management.'),
(1289, 2, 'msg_confirmation_email', 'Please confirm your email address by clicking the button below.'),
(1290, 2, 'msg_confirmed', 'Your email address has been successfully confirmed!'),
(1291, 2, 'msg_confirmed_required', 'Please verify your email address!'),
(1292, 2, 'msg_cron_feed', 'With this URL you can automatically update your feeds.'),
(1293, 2, 'msg_cron_scheduled', 'If you want to automatically publish scheduled posts, you should create a Cron Job function with this URL. For more information, please read the documentation.'),
(1294, 2, 'msg_cron_sitemap', 'With this URL you can automatically update your sitemap.'),
(1295, 2, 'msg_deleted', 'Item successfully deleted!'),
(1296, 2, 'msg_delete_album', 'Please delete categories belonging to this album first!'),
(1297, 2, 'msg_delete_images', 'Please delete images belonging to this category first!'),
(1298, 2, 'msg_delete_posts', 'Please delete posts belonging to this category first!'),
(1299, 2, 'msg_delete_subcategories', 'Please delete subcategories belonging to this category first!'),
(1300, 2, 'msg_delete_subpages', 'Please delete subpages/sublinks first!'),
(1301, 2, 'msg_email_sent', 'Email successfully sent!'),
(1302, 2, 'msg_error', 'An error occurred please try again!'),
(1303, 2, 'msg_language_delete', 'Default language cannot be deleted!'),
(1304, 2, 'msg_not_authorized', 'You are not authorized to perform this operation!'),
(1305, 2, 'msg_page_delete', 'Default pages cannot be deleted!'),
(1306, 2, 'msg_payout_added', 'Payout has been successfully added!'),
(1307, 2, 'msg_post_approved', 'Post approved!'),
(1308, 2, 'msg_published', 'Post successfully published!'),
(1309, 2, 'msg_recaptcha', 'Please confirm that you are not a robot!'),
(1310, 2, 'msg_remove_breaking', 'Post removed from breaking news!'),
(1311, 2, 'msg_remove_featured', 'Post removed from featured posts!'),
(1312, 2, 'msg_remove_recommended', 'Post removed from recommended posts!'),
(1313, 2, 'msg_remove_slider', 'Post removed from slider!'),
(1314, 2, 'msg_reset_cache', 'All cache files have been deleted!'),
(1315, 2, 'msg_role_changed', 'User role successfully changed!'),
(1316, 2, 'msg_rss_warning', 'If you chose to download the images to your server, adding posts will take more time and will use more resources. If you see any problems, increase \'max_execution_time\' and \'memory_limit\' values from your server settings.'),
(1317, 2, 'msg_send_confirmation_email', 'A confirmation email has been sent to your email address for activation. Please confirm your account.'),
(1318, 2, 'msg_slug_used', 'The slug you entered is being used by another user!'),
(1319, 2, 'msg_suc_added', 'successfully added!'),
(1320, 2, 'msg_suc_deleted', 'successfully deleted!'),
(1321, 2, 'msg_suc_updated', 'successfully updated!'),
(1322, 2, 'msg_unsubscribe', 'You will no longer receive emails from us!'),
(1323, 2, 'msg_updated', 'Changes successfully saved!'),
(1324, 2, 'msg_username_unique_error', 'The username has already been taken.'),
(1325, 2, 'msg_user_added', 'User successfully added!'),
(1326, 2, 'msg_user_banned', 'User successfully banned!'),
(1327, 2, 'msg_widget_delete', 'Default widgets cannot be deleted!'),
(1328, 2, 'msg_wrong_password', 'Wrong Password!'),
(1329, 2, 'multilingual_system', 'Multilingual System'),
(1330, 2, 'musician', 'Musician'),
(1331, 2, 'name', 'Name'),
(1332, 2, 'navigation', 'Navigation'),
(1333, 2, 'navigation_exp', 'You can manage the navigation by dragging and dropping menu items.'),
(1334, 2, 'nav_drag_warning', 'You cannot drag a category below a page or a page below a category link!'),
(1335, 2, 'nav_home', 'Home'),
(1336, 2, 'nav_login', 'Login'),
(1337, 2, 'nav_register', 'Register'),
(1338, 2, 'nav_reset_password', 'Reset Password'),
(1339, 2, 'never', 'Never'),
(1340, 2, 'newsletter', 'Newsletter'),
(1341, 2, 'newsletter_desc', 'Join our subscribers list to get the latest news, updates and special offers directly in your inbox'),
(1342, 2, 'newsletter_email_error', 'Select email addresses that you want to send mail!'),
(1343, 2, 'newsletter_popup', 'Newsletter Popup'),
(1344, 2, 'newsletter_send_many_exp', 'Some servers do not allow mass mailing. Therefore, instead of sending your mails to all subscribers at once, you can send them part by part (Example: 50 subscribers at once). If your mail server stops sending mail, the sending process will also stop.'),
(1345, 2, 'new_password', 'New Password'),
(1346, 2, 'next', 'Next'),
(1347, 2, 'next_article', 'Next Article'),
(1348, 2, 'next_video', 'Next Video'),
(1349, 2, 'no', 'No'),
(1350, 2, 'none', 'None'),
(1351, 2, 'November', 'Nov'),
(1352, 2, 'no_records_found', 'No records found.'),
(1353, 2, 'no_thanks', 'No, thanks'),
(1354, 2, 'number_of_correct_answers', 'Number of Correct Answers'),
(1355, 2, 'number_of_correct_answers_range', 'The range of correct answers to show this result'),
(1356, 2, 'number_of_days', 'Number of Days'),
(1357, 2, 'number_of_days_exp', 'If you add 30 here, the system will delete posts older than 30 days'),
(1358, 2, 'number_of_links_in_menu', 'The number of links that appear in the menu'),
(1359, 2, 'number_of_posts_import', 'Number of Posts to Import'),
(1360, 2, 'October', 'Oct'),
(1361, 2, 'ok', 'OK'),
(1362, 2, 'online', 'online'),
(1363, 2, 'only_registered', 'Only Registered'),
(1364, 2, 'optional', 'Optional'),
(1365, 2, 'optional', 'Optional'),
(1366, 2, 'optional_url', 'Optional URL'),
(1367, 2, 'optional_url_name', 'Post Optional URL Button Name'),
(1368, 2, 'options', 'Options'),
(1369, 2, 'option_1', 'Option 1'),
(1370, 2, 'option_10', 'Option 10'),
(1371, 2, 'option_2', 'Option 2'),
(1372, 2, 'option_3', 'Option 3'),
(1373, 2, 'option_4', 'Option 4'),
(1374, 2, 'option_5', 'Option 5'),
(1375, 2, 'option_6', 'Option 6'),
(1376, 2, 'option_7', 'Option 7'),
(1377, 2, 'option_8', 'Option 8'),
(1378, 2, 'option_9', 'Option 9'),
(1379, 2, 'or', 'or'),
(1380, 2, 'order', 'Menu Order'),
(1381, 2, 'order_1', 'Order'),
(1382, 2, 'or_login_with_email', 'Or login with email'),
(1383, 2, 'or_register_with_email', 'Or register with email'),
(1384, 2, 'page', 'Page'),
(1385, 2, 'pages', 'Pages'),
(1386, 2, 'pageviews', 'Pageviews'),
(1387, 2, 'pageviews', 'Pageviews'),
(1388, 2, 'page_not_found', 'Page not found'),
(1389, 2, 'page_not_found_sub', 'The page you are looking for doesn\'t exist.'),
(1390, 2, 'page_type', 'Page Type'),
(1391, 2, 'pagination_number_posts', 'Number of Posts Per Page (Pagination)'),
(1392, 2, 'panel', 'Panel'),
(1393, 2, 'parent_category', 'Parent Category'),
(1394, 2, 'parent_link', 'Parent Link'),
(1395, 2, 'paste_ad_code', 'Ad Code'),
(1396, 2, 'paste_ad_url', 'Ad URL'),
(1397, 2, 'payouts', 'Payouts'),
(1398, 2, 'payouts', 'Payouts'),
(1399, 2, 'payout_method', 'Payout Method'),
(1400, 2, 'payout_methods', 'Payout Methods'),
(1401, 2, 'paypal', 'PayPal'),
(1402, 2, 'paypal_email_address', 'PayPal Email Address'),
(1403, 2, 'pending_comments', 'Pending Comments'),
(1404, 2, 'pending_posts', 'Pending Posts'),
(1405, 2, 'permissions', 'Permissions'),
(1406, 2, 'personality_quiz', 'Personality Quiz'),
(1407, 2, 'personality_quiz_exp', 'Quizzes with custom results'),
(1408, 2, 'phone', 'Phone'),
(1409, 2, 'phrase', 'Phrase'),
(1410, 2, 'phrases', 'Phrases'),
(1411, 2, 'placeholder_about_me', 'About Me'),
(1412, 2, 'placeholder_comment', 'Comment...'),
(1413, 2, 'placeholder_confirm_password', 'Confirm Password'),
(1414, 2, 'placeholder_email', 'Email Address'),
(1415, 2, 'placeholder_message', 'Message'),
(1416, 2, 'placeholder_old_password', 'Old Password'),
(1417, 2, 'placeholder_password', 'Password'),
(1418, 2, 'placeholder_search', 'Search...'),
(1419, 2, 'placeholder_username', 'Username'),
(1420, 2, 'play_again', 'Play Again'),
(1421, 2, 'play_list_empty', 'Playlist is empty.'),
(1422, 2, 'please_select_option', 'Please select an option!'),
(1423, 2, 'poll', 'Poll'),
(1424, 2, 'polls', 'Polls'),
(1425, 2, 'popular_posts', 'Popular Posts'),
(1426, 2, 'post', 'Post'),
(1427, 2, 'postcode', 'Postcode'),
(1428, 2, 'posts', 'Posts'),
(1429, 2, 'posts_bottom_ad_space', 'Posts (Bottom)'),
(1430, 2, 'posts_top_ad_space', 'Posts (Top)'),
(1431, 2, 'post_bottom_ad_space', 'Post Details (Bottom)'),
(1432, 2, 'post_comment', 'Post Comment'),
(1433, 2, 'post_details', 'Post Details'),
(1434, 2, 'post_formats', 'Post Formats'),
(1435, 2, 'post_list_style', 'Post Item List Style'),
(1436, 2, 'post_options', 'Post Options'),
(1437, 2, 'post_owner', 'Post Owner'),
(1438, 2, 'post_tags', 'Tags:'),
(1439, 2, 'post_top_ad_space', 'Post Details (Top)'),
(1440, 2, 'post_type', 'Post Type'),
(1441, 2, 'preferences', 'Preferences'),
(1442, 2, 'preview', 'Preview'),
(1443, 2, 'previous', 'Previous'),
(1444, 2, 'previous_article', 'Previous Article'),
(1445, 2, 'previous_video', 'Previous Video'),
(1446, 2, 'primary_font', 'Primary Font (Main)'),
(1447, 2, 'priority', 'Priority'),
(1448, 2, 'priority_exp', 'The priority of a particular URL relative to other pages on the same site'),
(1449, 2, 'priority_none', 'Automatically Calculated Priority'),
(1450, 2, 'profile', 'Profile'),
(1451, 2, 'profile_bottom_ad_space', 'Profile &#40;Bottom&#41;'),
(1452, 2, 'profile_top_ad_space', 'Profile &#40;Top&#41;'),
(1453, 2, 'publish', 'Publish'),
(1454, 2, 'pwa_warning', 'If you enable PWA option, read \'Progressive Web App (PWA)\' section from our documentation to make the necessary settings.'),
(1455, 2, 'question', 'Question'),
(1456, 2, 'questions', 'Questions'),
(1457, 2, 'quiz_images', 'Quiz Images'),
(1458, 2, 'random_posts', 'Random Posts'),
(1459, 2, 'reading_list', 'Reading List'),
(1460, 2, 'reading_list_bottom_ad_space', 'Reading List (Bottom)'),
(1461, 2, 'reading_list_top_ad_space', 'Reading List (Top)'),
(1462, 2, 'read_more_button_text', 'Read More Button Text'),
(1463, 2, 'recently_added_comments', 'Recently added comments'),
(1464, 2, 'recently_added_contact_messages', 'Recently added contact messages'),
(1465, 2, 'recently_added_unapproved_comments', 'Recently added unapproved comments'),
(1466, 2, 'recently_registered_users', 'Recently registered users'),
(1467, 2, 'recommended', 'Recommended'),
(1468, 2, 'recommended_posts', 'Recommended Posts'),
(1469, 2, 'redirect_rss_posts_to_original', 'Redirect RSS Posts to the Original Site'),
(1470, 2, 'refresh_cache_database_changes', 'Refresh Cache Files When Database Changes'),
(1471, 2, 'region', 'Region'),
(1472, 2, 'register', 'Register'),
(1473, 2, 'registered_emails', 'Registered Emails'),
(1474, 2, 'registered_users_can_vote', 'Only Registered Users Can Vote'),
(1475, 2, 'registration_system', 'Registration System'),
(1476, 2, 'related_posts', 'Related Posts'),
(1477, 2, 'related_videos', 'Related Videos'),
(1478, 2, 'remember_me', 'Remember Me'),
(1479, 2, 'remove_ban', 'Remove Ban'),
(1480, 2, 'remove_breaking', 'Remove from Breaking'),
(1481, 2, 'remove_featured', 'Remove from Featured'),
(1482, 2, 'remove_recommended', 'Remove from Recommended'),
(1483, 2, 'remove_slider', 'Remove from Slider'),
(1484, 2, 'reply_to', 'Reply-To'),
(1485, 2, 'required', 'Required'),
(1486, 2, 'resend_activation_email', 'Resend Activation Email'),
(1487, 2, 'reset', 'Reset'),
(1488, 2, 'reset_cache', 'Reset Cache'),
(1489, 2, 'reset_password', 'Reset Password'),
(1490, 2, 'reset_password_error', 'We can\'t find a user with that e-mail address!'),
(1491, 2, 'reset_password_success', 'We\'ve sent an email for resetting your password to your email address. Please check your email for next steps.'),
(1492, 2, 'result', 'Result'),
(1493, 2, 'results', 'Results'),
(1494, 2, 'reward_amount', 'Reward Amount for 1000 Pageviews'),
(1495, 2, 'reward_system', 'Reward System'),
(1496, 2, 'right', 'Right'),
(1497, 2, 'right_to_left', 'Right to Left'),
(1498, 2, 'role', 'Role'),
(1499, 2, 'roles_permissions', 'Roles & Permissions'),
(1500, 2, 'role_name', 'Role Name'),
(1501, 2, 'route_settings', 'Route Settings'),
(1502, 2, 'route_settings_warning', 'You cannot use special characters in routes. If your language contains special characters, please be careful when editing routes. If you enter an invalid route, you will not be able to access the related page.'),
(1503, 2, 'rss', 'RSS'),
(1504, 2, 'rss_feeds', 'RSS Feeds'),
(1505, 2, 'sad', 'Sad'),
(1506, 2, 'save', 'Save'),
(1507, 2, 'save_changes', 'Save Changes'),
(1508, 2, 'save_draft', 'Save as Draft'),
(1509, 2, 'scheduled_post', 'Scheduled Post'),
(1510, 2, 'scheduled_posts', 'Scheduled Posts'),
(1511, 2, 'search', 'Search'),
(1512, 2, 'search_bottom_ad_space', 'Search (Bottom)'),
(1513, 2, 'search_noresult', 'No results found.'),
(1514, 2, 'search_top_ad_space', 'Search (Top)'),
(1515, 2, 'secondary_font', 'Secondary Font (Titles)'),
(1516, 2, 'secret_key', 'Secret Key'),
(1517, 2, 'secure_key', 'Secure Key'),
(1518, 2, 'select', 'Select'),
(1519, 2, 'select_ad_spaces', 'Select Ad Space'),
(1520, 2, 'select_an_option', 'Select an option'),
(1521, 2, 'select_audio', 'Select Audio'),
(1522, 2, 'select_a_result', 'Select a result'),
(1523, 2, 'select_category', 'Select a category'),
(1524, 2, 'select_file', 'Select File'),
(1525, 2, 'select_image', 'Select Image'),
(1526, 2, 'select_multiple_images', 'You can select multiple images.'),
(1527, 2, 'select_video', 'Select Video'),
(1528, 2, 'send_contact_to_mail', 'Send Contact Messages to Email Address'),
(1529, 2, 'send_email', 'Send Email'),
(1530, 2, 'send_email_registered', 'Send Email to Registered Emails'),
(1531, 2, 'send_email_subscriber', 'Send Email to Subscriber'),
(1532, 2, 'send_email_subscribers', 'Send Email to Subscribers'),
(1533, 2, 'send_test_email', 'Send Test Email'),
(1534, 2, 'send_test_email_exp', 'You can send a test mail to check if your mail server is working.'),
(1535, 2, 'seo_options', 'Seo options'),
(1536, 2, 'seo_tools', 'SEO Tools'),
(1537, 2, 'September', 'Sep'),
(1538, 2, 'server_response', 'Server\'s Response'),
(1539, 2, 'settings', 'Settings'),
(1540, 2, 'settings_language', 'Settings Language'),
(1541, 2, 'set_as_album_cover', 'Set as Album Cover'),
(1542, 2, 'set_as_default', 'Set as Default'),
(1543, 2, 'set_default_payment_account', 'Set as Default Payment Account'),
(1544, 2, 'set_payout_account', 'Set Payout Account'),
(1545, 2, 'share', 'Share'),
(1546, 2, 'shared', 'Shared'),
(1547, 2, 'short_form', 'Short Form'),
(1548, 2, 'show', 'Show'),
(1549, 2, 'show_all_files', 'Show all Files'),
(1550, 2, 'show_at_homepage', 'Show on Homepage'),
(1551, 2, 'show_breadcrumb', 'Show Breadcrumb'),
(1552, 2, 'show_cookies_warning', 'Show Cookies Warning'),
(1553, 2, 'show_email_on_profile', 'Show Email on Profile Page'),
(1554, 2, 'show_featured_section', 'Show Featured Section'),
(1555, 2, 'show_images_from_original_source', 'Show Images from Original Source'),
(1556, 2, 'show_item_numbers', 'Show Item Numbers in Post Details Page'),
(1557, 2, 'show_latest_posts_homepage', 'Show Latest Posts on Homepage'),
(1558, 2, 'show_latest_posts_on_featured', 'Show Latest Posts on Featured Posts'),
(1559, 2, 'show_latest_posts_on_slider', 'Show Latest Posts on Slider'),
(1560, 2, 'show_news_ticker', 'Show News Ticker'),
(1561, 2, 'show_only_own_files', 'Show Only Users Own Files'),
(1562, 2, 'show_only_registered', 'Show Only to Registered Users'),
(1563, 2, 'show_on_menu', 'Show on Menu'),
(1564, 2, 'show_post_author', 'Show Post Author'),
(1565, 2, 'show_post_dates', 'Show Post Date'),
(1566, 2, 'show_post_view_counts', 'Show Post View Count'),
(1567, 2, 'show_read_more_button', 'Show Read More Button'),
(1568, 2, 'show_right_column', 'Show Right Column'),
(1569, 2, 'show_title', 'Show Title'),
(1570, 2, 'show_user_email_profile', 'Show User\'s Email on Profile'),
(1571, 2, 'sidebar_bottom_ad_space', 'Sidebar (Bottom)'),
(1572, 2, 'sidebar_top_ad_space', 'Sidebar (Top)'),
(1573, 2, 'sitemap', 'Sitemap'),
(1574, 2, 'sitemap_generate_exp', 'If your site has more than 50,000 links, the sitemap.xml file will be created in parts.'),
(1575, 2, 'site_color', 'Site Color'),
(1576, 2, 'site_description', 'Site Description'),
(1577, 2, 'site_font', 'Site Font'),
(1578, 2, 'site_key', 'Site Key'),
(1579, 2, 'site_title', 'Site Title'),
(1580, 2, 'slider', 'Slider'),
(1581, 2, 'slider_order', 'Slider Order'),
(1582, 2, 'slider_posts', 'Slider Posts'),
(1583, 2, 'slug', 'Slug'),
(1584, 2, 'slug_exp', 'If you leave it blank, it will be generated automatically.'),
(1585, 2, 'smtp', 'SMTP'),
(1586, 2, 'social_accounts', 'Social Accounts'),
(1587, 2, 'social_login_configuration', 'Social Login Configuration'),
(1588, 2, 'social_media_settings', 'Social Media Settings'),
(1589, 2, 'sorted_list', 'Sorted List'),
(1590, 2, 'sorted_list_exp', 'A list based article'),
(1591, 2, 'sorted_list_items', 'Sorted List Items'),
(1592, 2, 'sort_featured_posts', 'Sort Featured Posts'),
(1593, 2, 'sort_slider_posts', 'Sort Slider Posts'),
(1594, 2, 'state', 'State'),
(1595, 2, 'status', 'Status'),
(1596, 2, 'storage', 'Storage'),
(1597, 2, 'style', 'Style'),
(1598, 2, 'subcategories', 'Subcategories'),
(1599, 2, 'subcategory', 'Subcategory'),
(1600, 2, 'subject', 'Subject'),
(1601, 2, 'subscribe', 'Subscribe'),
(1602, 2, 'subscribers', 'Subscribers'),
(1603, 2, 'summary', 'Summary'),
(1604, 2, 'swift', 'SWIFT'),
(1605, 2, 'swift_code', 'SWIFT Code'),
(1606, 2, 'swift_iban', 'Bank Account Number/IBAN'),
(1607, 2, 'tag', 'Tag'),
(1608, 2, 'tags', 'Tags'),
(1609, 2, 'tag_bottom_ad_space', 'Tag (Bottom)'),
(1610, 2, 'tag_top_ad_space', 'Tag (Top)'),
(1611, 2, 'terms_conditions', 'Terms & Conditions'),
(1612, 2, 'terms_conditions_exp', 'I have read and agree to the'),
(1613, 2, 'tertiary_font', 'Tertiary Font (Post & Page Text)'),
(1614, 2, 'text_direction', 'Text Direction'),
(1615, 2, 'text_editor_language', 'Text Editor Language'),
(1616, 2, 'text_list_empty', 'Your reading list is empty.'),
(1617, 2, 'themes', 'Themes'),
(1618, 2, 'the_operation_completed', 'The operation completed successfully!'),
(1619, 2, 'this_month', 'This Month'),
(1620, 2, 'this_week', 'This Week'),
(1621, 2, 'timezone', 'Timezone'),
(1622, 2, 'title', 'Title'),
(1623, 2, 'to', 'To:'),
(1624, 2, 'top_menu', 'Top Menu'),
(1625, 2, 'total_pageviews', 'Total Pageviews'),
(1626, 2, 'total_vote', 'Total Vote:'),
(1627, 2, 'translation', 'Translation'),
(1628, 2, 'trivia_quiz', 'Trivia Quiz'),
(1629, 2, 'trivia_quiz_exp', 'Quizzes with right and wrong answers'),
(1630, 2, 'twitter', 'Twitter'),
(1631, 2, 'txt_processing', 'Processing...'),
(1632, 2, 'type', 'Type'),
(1633, 2, 'type_tag', 'Type tag and hit enter'),
(1634, 2, 'unconfirmed', 'Unconfirmed'),
(1635, 2, 'unfollow', 'Unfollow'),
(1636, 2, 'unsubscribe', 'Unsubscribe'),
(1637, 2, 'unsubscribe_successful', 'Unsubscribe Successful!'),
(1638, 2, 'update', 'Update'),
(1639, 2, 'updated', 'Updated'),
(1640, 2, 'update_album', 'Update Album'),
(1641, 2, 'update_article', 'Update Article'),
(1642, 2, 'update_audio', 'Update Audio'),
(1643, 2, 'update_category', 'Update Category'),
(1644, 2, 'update_font', 'Update Font'),
(1645, 2, 'update_gallery', 'Update Gallery'),
(1646, 2, 'update_image', 'Update Image'),
(1647, 2, 'update_language', 'Update Language'),
(1648, 2, 'update_link', 'Update Menu Link'),
(1649, 2, 'update_page', 'Update Page'),
(1650, 2, 'update_personality_quiz', 'Update Personality Quiz'),
(1651, 2, 'update_poll', 'Update Poll'),
(1652, 2, 'update_post', 'Update Post'),
(1653, 2, 'update_profile', 'Update Profile'),
(1654, 2, 'update_rss_feed', 'Update RSS Feed'),
(1655, 2, 'update_sorted_list', 'Update Sorted List'),
(1656, 2, 'update_subcategory', 'Update Subcategory'),
(1657, 2, 'update_trivia_quiz', 'Update Trivia Quiz'),
(1658, 2, 'update_video', 'Update Video'),
(1659, 2, 'update_widget', 'Update Widget'),
(1660, 2, 'upload', 'Upload'),
(1661, 2, 'uploading', 'Uploading...'),
(1662, 2, 'upload_csv_file', 'Upload CSV File'),
(1663, 2, 'upload_image', 'Upload Image'),
(1664, 2, 'upload_video', 'Upload Video'),
(1665, 2, 'upload_your_banner', 'Create Ad Code'),
(1666, 2, 'url', 'URL'),
(1667, 2, 'user', 'User'),
(1668, 2, 'username', 'Username'),
(1669, 2, 'users', 'Users'),
(1670, 2, 'user_agent', 'User-Agent'),
(1671, 2, 'user_agreement', 'User Agreement'),
(1672, 2, 'user_id', 'User Id'),
(1673, 2, 'vertical', 'Vertical'),
(1674, 2, 'video', 'Video'),
(1675, 2, 'videos', 'Videos'),
(1676, 2, 'video_embed_code', 'Video Embed Code'),
(1677, 2, 'video_file', 'Video File'),
(1678, 2, 'video_name', 'Video Name'),
(1679, 2, 'video_post_exp', 'Upload or embed videos'),
(1680, 2, 'video_thumbnails', 'Video Thumbnail'),
(1681, 2, 'video_url', 'Video URL'),
(1682, 2, 'view_all', 'View All'),
(1683, 2, 'view_all_posts', 'View All Posts'),
(1684, 2, 'view_options', 'View Options'),
(1685, 2, 'view_result', 'View Results'),
(1686, 2, 'view_results', 'View Results'),
(1687, 2, 'view_site', 'View Site'),
(1688, 2, 'visibility', 'Visibility'),
(1689, 2, 'visual_settings', 'Visual Settings'),
(1690, 2, 'vkontakte', 'VKontakte'),
(1691, 2, 'vote', 'Vote'),
(1692, 2, 'voted_message', 'You already voted this poll before.'),
(1693, 2, 'vote_permission', 'Vote Permission'),
(1694, 2, 'warning', 'Warning'),
(1695, 2, 'warning_default_payout_account', 'Your earnings will be sent to your default payout account.'),
(1696, 2, 'weekly', 'Weekly'),
(1697, 2, 'whats_your_reaction', 'What\'s Your Reaction?'),
(1698, 2, 'widget', 'Widget'),
(1699, 2, 'widgets', 'Widgets'),
(1700, 2, 'wow', 'Wow'),
(1701, 2, 'wrong_answer', 'Wrong Answer'),
(1702, 2, 'wrong_password_error', 'Wrong old password!'),
(1703, 2, 'year', 'year'),
(1704, 2, 'yearly', 'Yearly'),
(1705, 2, 'years', 'years'),
(1706, 2, 'yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `is_custom` tinyint(1) DEFAULT '1',
  `page_default_name` varchar(100) DEFAULT NULL,
  `page_content` mediumtext,
  `page_order` smallint(6) DEFAULT '1',
  `visibility` tinyint(1) DEFAULT '1',
  `title_active` tinyint(1) DEFAULT '1',
  `breadcrumb_active` tinyint(1) DEFAULT '1',
  `right_column_active` tinyint(1) DEFAULT '1',
  `need_auth` tinyint(1) DEFAULT '0',
  `location` varchar(255) DEFAULT 'top',
  `link` varchar(1000) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `page_type` varchar(50) DEFAULT 'page',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `lang_id`, `title`, `slug`, `description`, `keywords`, `is_custom`, `page_default_name`, `page_content`, `page_order`, `visibility`, `title_active`, `breadcrumb_active`, `right_column_active`, `need_auth`, `location`, `link`, `parent_id`, `page_type`, `created_at`) VALUES
(1, 1, 'Contact', 'contact', 'Varient Contact Page', 'varient, contact, page', 0, 'contact', NULL, 1, 1, 1, 1, 0, 0, 'top', NULL, 0, 'page', '2020-02-18 11:09:21'),
(2, 1, 'Gallery', 'gallery', 'Varient Gallery Page', 'varient, gallery, page', 0, 'gallery', NULL, 8, 1, 1, 1, 0, 0, 'main', NULL, 0, 'page', '2020-02-18 11:11:40'),
(3, 1, 'Terms & Conditions', 'terms-conditions', 'Varient Terms Conditions Page', 'Terms, Conditions, Varient', 0, 'terms_conditions', NULL, 1, 1, 1, 1, 0, 0, 'footer', NULL, 0, 'page', '2020-02-18 11:12:40'),
(4, 2, 'Classified Ads', 'classified-ads', NULL, NULL, 1, NULL, NULL, 10, 1, 1, 1, 1, 0, 'main', '/varient/classified-ads', 0, 'link', '2022-04-02 21:39:22'),
(5, 2, 'Gallery', 'gallery', 'Varient Gallery Page', 'varient, gallery , page', 0, 'gallery', '', 2, 1, 1, 1, 0, 0, 'main', '', 0, 'page', '2022-04-06 03:53:49'),
(6, 2, 'Contact', 'contact', 'Varient Contact Page', 'varient, contact, page', 0, 'contact', '', 1, 1, 1, 1, 0, 0, 'top', '', 0, 'page', '2022-04-06 03:53:49'),
(7, 2, 'Terms & Conditions', 'terms-conditions', 'Varient Terms Conditions Page', 'varient, terms, conditions', 0, 'terms_conditions', '', 1, 1, 1, 1, 0, 0, 'footer', '', 0, 'page', '2022-04-06 03:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL,
  `payout_method` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `option5` text,
  `option6` text,
  `option7` text,
  `option8` text,
  `option9` text,
  `option10` text,
  `status` tinyint(1) DEFAULT '1',
  `vote_permission` varchar(50) DEFAULT 'all',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `poll_votes`
--

CREATE TABLE `poll_votes` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vote` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `title_slug` varchar(500) DEFAULT NULL,
  `title_hash` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `summary` varchar(5000) DEFAULT NULL,
  `content` longtext,
  `category_id` int(11) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_slider` varchar(255) DEFAULT NULL,
  `image_mid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_mime` varchar(20) DEFAULT 'jpg',
  `image_storage` varchar(20) DEFAULT 'local',
  `optional_url` varchar(1000) DEFAULT NULL,
  `pageviews` int(11) DEFAULT '0',
  `need_auth` tinyint(1) DEFAULT '0',
  `is_slider` tinyint(1) DEFAULT '0',
  `slider_order` tinyint(1) DEFAULT '1',
  `is_featured` tinyint(1) DEFAULT '0',
  `featured_order` tinyint(1) DEFAULT '1',
  `is_recommended` tinyint(1) DEFAULT '0',
  `is_breaking` tinyint(1) DEFAULT '1',
  `is_scheduled` tinyint(1) DEFAULT '0',
  `visibility` tinyint(1) DEFAULT '1',
  `show_right_column` tinyint(1) DEFAULT '1',
  `post_type` varchar(50) DEFAULT 'post',
  `video_path` varchar(255) DEFAULT NULL,
  `video_storage` varchar(20) DEFAULT 'local',
  `image_url` varchar(2000) DEFAULT NULL,
  `video_url` varchar(2000) DEFAULT NULL,
  `video_embed_code` varchar(2000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `feed_id` int(11) DEFAULT NULL,
  `post_url` varchar(1000) DEFAULT NULL,
  `show_post_url` tinyint(1) DEFAULT '1',
  `image_description` varchar(500) DEFAULT NULL,
  `show_item_numbers` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `lang_id`, `title`, `title_slug`, `title_hash`, `keywords`, `summary`, `content`, `category_id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `image_storage`, `optional_url`, `pageviews`, `need_auth`, `is_slider`, `slider_order`, `is_featured`, `featured_order`, `is_recommended`, `is_breaking`, `is_scheduled`, `visibility`, `show_right_column`, `post_type`, `video_path`, `video_storage`, `image_url`, `video_url`, `video_embed_code`, `user_id`, `status`, `feed_id`, `post_url`, `show_post_url`, `image_description`, `show_item_numbers`, `updated_at`, `created_at`) VALUES
(1, 2, 'An Observatory Spied on LA’s Carbon Emissions—From Space', 'an-observatory-spied-on-las-carbon-emissionsfrom-space-1', NULL, ', Observatory, Spied, LA’s, Carbon, Emissions—From, Space', 'The instrument reads sunlight intensity to determine carbon dioxide in Earth’s atmosphere. Its findings could help reduce our carbon footprint.', '<p>The instrument reads sunlight intensity to determine carbon dioxide in Earth&rsquo;s atmosphere. Its findings could help reduce our carbon footprint.</p>', 15, 'uploads/images/2022/03/image_750x500_621f31672606a.jpg', 'uploads/images/2022/03/image_750x_621f316795b8a.jpg', 'uploads/images/2022/03/image_600x460_621f3167a6d15.jpg', 'uploads/images/2022/03/image_380x226_621f3167b4408.jpg', 'uploads/images/2022/03/image_140x98_621f3167ba70c.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-02 08:27:43'),
(2, 2, 'Ranked Choice Voting Reveals the Weird Math of Elections', 'ranked-choice-voting-reveals-the-weird-math-of-elections', NULL, 'Ranked, Choice, Voting, Reveals, the, Weird, Math, Elections', 'The New York City mayoral race could show whether a new way of measuring voter desires can actually be an alternate timeline for democracy.', '<p>The New York City mayoral race could show whether a new way of measuring voter desires can actually be an alternate timeline for democracy.</p>', 15, 'uploads/images/2022/03/image_750x500_621f3207b6c61.jpg', 'uploads/images/2022/03/image_750x_621f3207c9614.jpg', 'uploads/images/2022/03/image_600x460_621f3207d9648.jpg', 'uploads/images/2022/03/image_380x226_621f3207e687b.jpg', 'uploads/images/2022/03/image_140x98_621f3207eb7eb.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-02 08:30:01'),
(3, 2, 'Northern Farms Are Releasing Massive Amounts of Carbon', 'samsung-s8-pro-3', NULL, 'Northern, Farms, Are, Releasing, Massive, Amounts, Carbon', 'Humans have been draining peatlands to grow crops for centuries. It\'s a huge, underestimated source of greenhouse gas, scientists say.', '<p>Humans have been draining peatlands to grow crops for centuries. It\'s a huge, underestimated source of greenhouse gas, scientists say.</p>', 15, '', '', '', '', '', 'jpg', 'local', '', 3, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-02 08:33:44'),
(4, 2, 'No, Covid-19 Vaccines Won\'t Make You Magnetic. Here\'s Why', 'nocovid-19-vaccines-wont-make-you-magnetic-heres-why', NULL, 'No, Covid-19, Vaccines, Wont, Make, You, Magnetic., Heres, Why', 'No matter how many videos you’ve seen of people sticking spoons to their faces, that’s just not how magnets work.', '<p>No matter how many videos you&rsquo;ve seen of people sticking spoons to their faces, that&rsquo;s just not how magnets work.</p>', 15, 'uploads/images/2022/03/image_750x500_621f507d3ed78.jpg', 'uploads/images/2022/03/image_750x_621f507d7752a.jpg', 'uploads/images/2022/03/image_600x460_621f507d87382.jpg', 'uploads/images/2022/03/image_380x226_621f507d9567e.jpg', 'uploads/images/2022/03/image_140x98_621f507d9b8e7.jpg', 'jpg', 'local', '', 4, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 17:00:27', '2022-03-02 10:39:54'),
(5, 2, 'Expound the actual teachings of the great explorer of the truth', 'expound-the-actual-teachings-of-the-great-explorer-of-the-truth', NULL, 'actual, teachings, explorer', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally ', '', 8, 'uploads/images/2022/03/image_750x500_621f90ca962b7.jpg', 'uploads/images/2022/03/image_750x_621f90caa85b8.jpg', 'uploads/images/2022/03/image_600x460_621f90cab1db1.jpg', 'uploads/images/2022/03/image_380x226_621f90caba63c.jpg', 'uploads/images/2022/03/image_140x98_621f90cabd343.jpg', 'jpg', 'local', '', 4, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-03 03:44:18'),
(6, 2, 'Greatly hearted has who believe', 'greatly-hearted-has-who-believe', NULL, 'believe, hearted', 'Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>', 8, 'uploads/images/2022/03/image_750x500_621f918353306.jpg', 'uploads/images/2022/03/image_750x_621f918362213.jpg', 'uploads/images/2022/03/image_600x460_621f91836cde1.jpg', 'uploads/images/2022/03/image_380x226_621f9183757e9.jpg', 'uploads/images/2022/03/image_140x98_621f9183783a9.jpg', 'jpg', 'local', '', 4, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 16:59:58', '2022-03-03 03:47:21'),
(7, 2, 'Carriage quitting securing be appetite it clared', 'carriage-quitting-securing-be-appetite-it-clared', NULL, '', 'Randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 8, 'uploads/images/2022/03/image_750x500_621f91e3c8306.jpg', 'uploads/images/2022/03/image_750x_621f91e3d333c.jpg', 'uploads/images/2022/03/image_600x460_621f91e3dc906.jpg', 'uploads/images/2022/03/image_380x226_621f91e3e4719.jpg', 'uploads/images/2022/03/image_140x98_621f91e3e718f.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:25', '2022-03-03 03:51:28'),
(8, 2, 'Anyone who loves or pursues or desires to obtain pain of itself', 'anyone-who-loves-or-pursues-or-desires-to-obtain-pain-of-itself', NULL, 'pursues, obtain, itself', 'Every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains</p>\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 8, 'uploads/images/2022/03/image_750x500_621f92f6b79e8.jpg', 'uploads/images/2022/03/image_750x_621f92f6c406a.jpg', 'uploads/images/2022/03/image_600x460_621f92f6cd52d.jpg', 'uploads/images/2022/03/image_380x226_621f92f6d5243.jpg', 'uploads/images/2022/03/image_140x98_621f92f6d7e2e.jpg', 'jpg', 'local', '', 7, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-03 03:53:33'),
(9, 2, 'Cordially convinced did incommode existence', 'cordially-convinced-did-incommode-existence', NULL, 'incommode, existence, convinced', 'Easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best', '<p>That they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 2, 'uploads/images/2022/03/image_750x500_621f94d6e8795.jpg', 'uploads/images/2022/03/image_750x_621f94d706b20.jpg', 'uploads/images/2022/03/image_600x460_621f94d7126eb.jpg', 'uploads/images/2022/03/image_380x226_621f94d71b9b6.jpg', 'uploads/images/2022/03/image_140x98_621f94d71ead1.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:01', '2022-03-03 04:01:36'),
(10, 2, 'Style never met and those among great', 'style-never-met-and-those-among-great', NULL, 'style, never, among', 'It will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always', '<p>Righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 13, 'uploads/images/2022/03/image_750x500_621f97e9c483c.jpg', 'uploads/images/2022/03/image_750x_621f97e9d86fc.jpg', 'uploads/images/2022/03/image_600x460_621f97e9e1ccf.jpg', 'uploads/images/2022/03/image_380x226_621f97e9eaf69.jpg', 'uploads/images/2022/03/image_140x98_621f97e9eddc8.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'These cases are perfectly simple and easy to distinguish', 0, NULL, '2022-03-03 04:15:13'),
(11, 2, 'At ourselves direction believing do the departure', 'at-ourselves-direction-believing-do-the-departure', NULL, 'departure, believing, ourselves', ' Can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>When our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds.</p>', 2, 'uploads/images/2022/03/image_750x500_621f9a2f8f99f.jpg', 'uploads/images/2022/03/image_750x_621f9a2fa051e.jpg', 'uploads/images/2022/03/image_600x460_621f9a2faaaec.jpg', 'uploads/images/2022/03/image_380x226_621f9a2fb62d3.jpg', 'uploads/images/2022/03/image_140x98_621f9a2fb92d4.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise', 0, NULL, '2022-03-03 04:24:23'),
(12, 2, 'Situation admitting promotion at or to perceived be', 'situation-admitting-promotion-at-or-to-perceived-be', NULL, 'perceived, admitting, promotion', 'Denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded', '<p>Weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has</p>', 13, 'uploads/images/2022/03/image_750x500_621f9c679b8d8.jpg', 'uploads/images/2022/03/image_750x_621f9c67a8664.jpg', 'uploads/images/2022/03/image_600x460_621f9c67b2195.jpg', 'uploads/images/2022/03/image_380x226_621f9c67ba207.jpg', 'uploads/images/2022/03/image_140x98_621f9c67bcd9a.jpg', 'jpg', 'local', '', 7, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 17:00:12', '2022-03-03 04:33:51'),
(13, 2, 'Are you logical or emotional?', 'are-you-logical-or-emotional', NULL, 'logical, emotional', 'Cras ultricies ac urna in sollicitudin. Quisque pretium sapien in molestie eleifend. Fusce diam nisi, rhoncus in laoreet pulvinar', '', 3, 'uploads/images/2022/03/image_750x500_6220cb2d1102a.jpg', 'uploads/images/2022/03/image_750x_6220cb2d1f39e.jpg', 'uploads/images/2022/03/image_600x460_6220cb2d2890b.jpg', 'uploads/images/2022/03/image_380x226_6220cb2d30553.jpg', 'uploads/images/2022/03/image_140x98_6220cb2d32da0.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:05:39'),
(14, 2, 'How well do you know the famous places in the world?', 'how-well-do-you-know-the-famous-places-in-the-world', NULL, 'places, world', 'Sed bibendum gravida ipsum ac mattis. Morbi id felis a tellus faucibus tempor. Pellentesque tellus justo', '', 3, 'uploads/images/2022/03/image_750x500_6220cb9194ce5.jpg', 'uploads/images/2022/03/image_750x_6220cb91a7755.jpg', 'uploads/images/2022/03/image_600x460_6220cb91b1cbc.jpg', 'uploads/images/2022/03/image_380x226_6220cb91b9f90.jpg', 'uploads/images/2022/03/image_140x98_6220cb91bd1d5.jpg', 'jpg', 'local', '', 3, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:07:57'),
(15, 2, 'How much do you know the Solar System?', 'how-much-do-you-know-the-solar-system', NULL, 'solar system, quiz', 'Phasellus eleifend lorem at velit congue rutrum. Maecenas eu tortor nec arcu dictum rutrum sed nec lacus', '', 3, 'uploads/images/2022/03/image_750x500_6220cc8cd93f9.jpg', 'uploads/images/2022/03/image_750x_6220cc8ce51d5.jpg', 'uploads/images/2022/03/image_600x460_6220cc8ceefb2.jpg', 'uploads/images/2022/03/image_380x226_6220cc8d036cd.jpg', 'uploads/images/2022/03/image_140x98_6220cc8d0644e.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:11:31'),
(16, 2, 'What kind of personality do you have?', 'what-kind-of-personality-do-you-have', NULL, 'personality, quiz', 'Donec ut ipsum lectus. In commodo neque pellentesque neque cursus, et rutrum nunc viverra', '', 3, 'uploads/images/2022/03/image_750x500_6220cce7699e7.jpg', 'uploads/images/2022/03/image_750x_6220cce774f35.jpg', 'uploads/images/2022/03/image_600x460_6220cce77e4e6.jpg', 'uploads/images/2022/03/image_380x226_6220cce7861b0.jpg', 'uploads/images/2022/03/image_140x98_6220cce788a31.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:13:54'),
(17, 2, 'Sportsman do offending supported extremity breakfast by listening', 'sportsman-do-offending-supported-extremity-breakfast-by-listening', NULL, 'breakfast, listening, offending', 'Decisively advantages nor expression unpleasing she led met. Estate was tended ten boy nearer seemed', '<p>Avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.</p>\r\n<p>These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains</p>', 6, 'uploads/images/2022/03/image_750x500_6220ce4d2baed.jpg', 'uploads/images/2022/03/image_750x_6220ce4d38751.jpg', 'uploads/images/2022/03/image_600x460_6220ce4d43595.jpg', 'uploads/images/2022/03/image_380x226_6220ce4d4bad9.jpg', 'uploads/images/2022/03/image_140x98_6220ce4d4e930.jpg', 'jpg', 'local', '', 4, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be303b67457e.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:19:12'),
(18, 2, 'From above video of water stream', 'from-above-video-of-water-stream', NULL, 'stream, water', 'Who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances', '<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum</p>', 6, '', '', '', '', '', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'video', NULL, NULL, 'https://img.youtube.com/vi/WnMsO8mXvAY/maxresdefault.jpg', 'https://www.youtube.com/watch?v=WnMsO8mXvAY&feature=emb_logo', 'https://www.youtube.com/embed/WnMsO8mXvAY?feature=emb_logo', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:20:32'),
(19, 2, 'Sailboat sailing during sunset', 'sailboat-sailing-during-sunset', NULL, 'sunset, during, sailing', 'Obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always', '<p>Integer volutpat lacinia est, cursus elementum mauris fermentum ut. Ut arcu nisi, gravida ut nibh quis, convallis consectetur sem. Donec malesuada erat condimentum libero convallis, ac consectetur libero rutrum. Phasellus quis tellus eu justo tempus dapibus. Proin ullamcorper mollis pellentesque. Curabitur dapibus ante odio, id pellentesque metus vulputate quis. Pellentesque turpis leo, rutrum porta ex consequat, tempus ornare lorem. Ut iaculis pellentesque vehicula. Cras pellentesque nunc eget risus gravida, in venenatis turpis pharetra.</p>\r\n<p>Maecenas vestibulum iaculis venenatis. Cras eget nunc mi. Aliquam vitae sem et est dictum dapibus. Proin ac iaculis risus. Maecenas ornare eros eu sapien porttitor, ac vestibulum dolor sodales. Vivamus ac erat eu leo tincidunt vulputate. Curabitur sed ex id ligula fringilla venenatis eu ut purus. Suspendisse imperdiet cursus scelerisque. Integer imperdiet at turpis quis hendrerit. Integer aliquam mauris eu vulputate aliquet. In finibus neque quis blandit aliquam. Phasellus pulvinar interdum congue. Maecenas nec lorem est.</p>\r\n<p>Vestibulum a tempus metus. Fusce felis ligula, tempus blandit enim nec, sollicitudin sagittis turpis. Praesent vitae blandit diam, vitae gravida leo. Mauris ornare non purus a tempus. Nullam semper erat consequat, maximus dui ac, ultricies ex. Sed tincidunt at lorem at suscipit. Donec ac ipsum sit amet lorem varius tempus.</p>', 6, '', '', '', '', '', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'video', NULL, NULL, 'https://img.youtube.com/vi/V9ypxcc0TpI/maxresdefault.jpg', 'https://www.youtube.com/watch?v=V9ypxcc0TpI&feature=emb_logo', 'https://www.youtube.com/embed/V9ypxcc0TpI?feature=emb_logo', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:21:27'),
(20, 2, 'View Of River From Boat', 'view-of-river-from-boat', NULL, 'boat, river, view', 'We like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing ', '<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 6, '', '', '', '', '', 'jpg', 'local', '', 3, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'video', NULL, NULL, 'https://img.youtube.com/vi/lh5TdeDDsbI/maxresdefault.jpg', 'https://www.youtube.com/watch?v=lh5TdeDDsbI&feature=emb_logo', 'https://www.youtube.com/embed/lh5TdeDDsbI?feature=emb_logo', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:22:15'),
(21, 2, 'Announcing it me stimulated frequently continuing', 'announcing-it-me-stimulated-frequently-continuing', NULL, 'continuing, frequently, stimulated', 'Occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>Denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.</p>\r\n<p>Quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 7, 'uploads/images/2022/03/image_750x500_6220cf94739ce.jpg', 'uploads/images/2022/03/image_750x_6220cf947e8fb.jpg', 'uploads/images/2022/03/image_600x460_6220cf9487c8a.jpg', 'uploads/images/2022/03/image_380x226_6220cf948f915.jpg', 'uploads/images/2022/03/image_140x98_6220cf94923b2.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it', 0, NULL, '2022-03-04 02:24:33'),
(22, 2, 'Are own design entire former get should', 'are-own-design-entire-former-get-should', NULL, 'design, entire', 'To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it', '<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has.</p>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.&nbsp;</p>\r\n<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 7, 'uploads/images/2022/03/image_750x500_6220cfd160265.jpg', 'uploads/images/2022/03/image_750x_6220cfd16b999.jpg', 'uploads/images/2022/03/image_600x460_6220cfd17581f.jpg', 'uploads/images/2022/03/image_380x226_6220cfd17dbfa.jpg', 'uploads/images/2022/03/image_140x98_6220cfd18098a.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:25:36'),
(23, 2, 'Lose away off why half led have near bed', 'lose-away-off-why-half-led-have-near-bed', NULL, 'pursues, obtain', 'There anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur', '<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.</p>\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 7, 'uploads/images/2022/03/image_750x500_6220d0103bf55.jpg', 'uploads/images/2022/03/image_750x_6220d01046865.jpg', 'uploads/images/2022/03/image_600x460_6220d0104fda1.jpg', 'uploads/images/2022/03/image_380x226_6220d01057716.jpg', 'uploads/images/2022/03/image_140x98_6220d0105a04d.jpg', 'jpg', 'local', '', 3, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:26:32'),
(24, 2, 'Through weakness of will, which is the same as saying through', 'through-weakness-of-will-which-is-the-same-as-saying-through', NULL, 'weakness, shrinking, saying', 'There anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil', '', 11, 'uploads/images/2022/03/image_750x500_6220d0fdd4600.jpg', 'uploads/images/2022/03/image_750x_6220d0fde1b83.jpg', 'uploads/images/2022/03/image_600x460_6220d0fdeba90.jpg', 'uploads/images/2022/03/image_380x226_6220d0fdf38ec.jpg', 'uploads/images/2022/03/image_140x98_6220d0fe02253.jpg', 'jpg', 'local', '', 3, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'gallery', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 1, NULL, '2022-03-04 02:32:00'),
(25, 2, 'Charms of pleasure of the moment', 'charms-of-pleasure-of-the-moment', NULL, 'moment, pleasure', 'We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>', 11, 'uploads/images/2022/03/image_750x500_6220d191bbb8f.jpg', 'uploads/images/2022/03/image_750x_6220d191c669e.jpg', 'uploads/images/2022/03/image_600x460_6220d191cf885.jpg', 'uploads/images/2022/03/image_380x226_6220d191d7361.jpg', 'uploads/images/2022/03/image_140x98_6220d191d9aef.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'audio', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:33:48'),
(26, 2, 'Far concluded not his something extremity', 'far-concluded-not-his-something-extremity', NULL, 'extremity, something', 'Far concluded not his something extremity', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.</p>\r\n<p>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>', 12, 'uploads/images/2022/03/image_750x500_6220d254a6a1b.jpg', 'uploads/images/2022/03/image_750x_6220d254b1bf7.jpg', 'uploads/images/2022/03/image_600x460_6220d254bb0a9.jpg', 'uploads/images/2022/03/image_380x226_6220d254c2b51.jpg', 'uploads/images/2022/03/image_140x98_6220d254c559f.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be3005b109f4.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:36:42'),
(27, 2, 'Society excited by cottage private an it esteems', 'society-excited-by-cottage-private-an-it-esteems', NULL, 'cottage, esteems, post', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 11, 'uploads/images/2022/03/image_750x500_6220d2e427dcd.jpg', 'uploads/images/2022/03/image_750x_6220d2e432f21.jpg', 'uploads/images/2022/03/image_600x460_6220d2e43c8a8.jpg', 'uploads/images/2022/03/image_380x226_6220d2e44456c.jpg', 'uploads/images/2022/03/image_140x98_6220d2e44705f.jpg', 'jpg', 'local', '', 3, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:38:32'),
(28, 2, 'Greatly hearted has who believe', 'greatly-hearted-has-who-believe', NULL, 'believe, hearted', 'Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>', 8, 'uploads/images/2022/03/image_750x500_621f918353306.jpg', 'uploads/images/2022/03/image_750x_621f918362213.jpg', 'uploads/images/2022/03/image_600x460_621f91836cde1.jpg', 'uploads/images/2022/03/image_380x226_621f9183757e9.jpg', 'uploads/images/2022/03/image_140x98_621f9183783a9.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 16:59:58', '2022-03-03 03:47:21'),
(29, 2, 'Expound the actual teachings of the great explorer of the truth', 'expound-the-actual-teachings-of-the-great-explorer-of-the-truth', NULL, 'actual, teachings, explorer', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally ', '', 8, 'uploads/images/2022/03/image_750x500_621f90ca962b7.jpg', 'uploads/images/2022/03/image_750x_621f90caa85b8.jpg', 'uploads/images/2022/03/image_600x460_621f90cab1db1.jpg', 'uploads/images/2022/03/image_380x226_621f90caba63c.jpg', 'uploads/images/2022/03/image_140x98_621f90cabd343.jpg', 'jpg', 'local', '', 2, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-03 03:44:18'),
(30, 2, 'Greatly hearted has who believe', 'greatly-hearted-has-who-believe', NULL, 'believe, hearted', 'Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.</p>', 8, 'uploads/images/2022/03/image_750x500_621f918353306.jpg', 'uploads/images/2022/03/image_750x_621f918362213.jpg', 'uploads/images/2022/03/image_600x460_621f91836cde1.jpg', 'uploads/images/2022/03/image_380x226_621f9183757e9.jpg', 'uploads/images/2022/03/image_140x98_621f9183783a9.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 16:59:58', '2022-03-03 03:47:21'),
(31, 2, 'Carriage quitting securing be appetite it clared', 'carriage-quitting-securing-be-appetite-it-clared', NULL, '', 'Randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 8, 'uploads/images/2022/03/image_750x500_621f91e3c8306.jpg', 'uploads/images/2022/03/image_750x_621f91e3d333c.jpg', 'uploads/images/2022/03/image_600x460_621f91e3dc906.jpg', 'uploads/images/2022/03/image_380x226_621f91e3e4719.jpg', 'uploads/images/2022/03/image_140x98_621f91e3e718f.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:25', '2022-03-03 03:51:28');
INSERT INTO `posts` (`id`, `lang_id`, `title`, `title_slug`, `title_hash`, `keywords`, `summary`, `content`, `category_id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `image_storage`, `optional_url`, `pageviews`, `need_auth`, `is_slider`, `slider_order`, `is_featured`, `featured_order`, `is_recommended`, `is_breaking`, `is_scheduled`, `visibility`, `show_right_column`, `post_type`, `video_path`, `video_storage`, `image_url`, `video_url`, `video_embed_code`, `user_id`, `status`, `feed_id`, `post_url`, `show_post_url`, `image_description`, `show_item_numbers`, `updated_at`, `created_at`) VALUES
(32, 2, 'Anyone who loves or pursues or desires to obtain pain of itself', 'anyone-who-loves-or-pursues-or-desires-to-obtain-pain-of-itself', NULL, 'pursues, obtain, itself', 'Every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains</p>\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 8, 'uploads/images/2022/03/image_750x500_621f92f6b79e8.jpg', 'uploads/images/2022/03/image_750x_621f92f6c406a.jpg', 'uploads/images/2022/03/image_600x460_621f92f6cd52d.jpg', 'uploads/images/2022/03/image_380x226_621f92f6d5243.jpg', 'uploads/images/2022/03/image_140x98_621f92f6d7e2e.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-03 03:53:33'),
(33, 2, 'An Observatory Spied on LA’s Carbon Emissions—From Space', 'an-observatory-spied-on-las-carbon-emissionsfrom-space', NULL, ', Observatory, Spied, LA’s, Carbon, Emissions—From, Space', 'The instrument reads sunlight intensity to determine carbon dioxide in Earth’s atmosphere. Its findings could help reduce our carbon footprint.', '<p>The instrument reads sunlight intensity to determine carbon dioxide in Earth&rsquo;s atmosphere. Its findings could help reduce our carbon footprint.</p>', 15, 'uploads/images/2022/03/image_750x500_621f31672606a.jpg', 'uploads/images/2022/03/image_750x_621f316795b8a.jpg', 'uploads/images/2022/03/image_600x460_621f3167a6d15.jpg', 'uploads/images/2022/03/image_380x226_621f3167b4408.jpg', 'uploads/images/2022/03/image_140x98_621f3167ba70c.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-02 08:27:43'),
(34, 2, 'Ranked Choice Voting Reveals the Weird Math of Elections', 'ranked-choice-voting-reveals-the-weird-math-of-elections', NULL, 'Ranked, Choice, Voting, Reveals, the, Weird, Math, Elections', 'The New York City mayoral race could show whether a new way of measuring voter desires can actually be an alternate timeline for democracy.', '<p>The New York City mayoral race could show whether a new way of measuring voter desires can actually be an alternate timeline for democracy.</p>', 15, 'uploads/images/2022/03/image_750x500_621f3207b6c61.jpg', 'uploads/images/2022/03/image_750x_621f3207c9614.jpg', 'uploads/images/2022/03/image_600x460_621f3207d9648.jpg', 'uploads/images/2022/03/image_380x226_621f3207e687b.jpg', 'uploads/images/2022/03/image_140x98_621f3207eb7eb.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-02 08:30:01'),
(35, 2, 'Northern Farms Are Releasing Massive Amounts of Carbon', 'northern-farms-are-releasing-massive-amounts-of-carbon', NULL, 'Northern, Farms, Are, Releasing, Massive, Amounts, Carbon', 'Humans have been draining peatlands to grow crops for centuries. It\'s a huge, underestimated source of greenhouse gas, scientists say.', '<p>Humans have been draining peatlands to grow crops for centuries. It\'s a huge, underestimated source of greenhouse gas, scientists say.</p>', 15, 'uploads/images/2022/03/image_750x500_621f32ea3261d.jpg', 'uploads/images/2022/03/image_750x_621f32ea466b4.jpg', 'uploads/images/2022/03/image_600x460_621f32ea593df.jpg', 'uploads/images/2022/03/image_380x226_621f32ea6660c.jpg', 'uploads/images/2022/03/image_140x98_621f32ea6b80c.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-02 08:33:44'),
(36, 2, 'No, Covid-19 Vaccines Won\'t Make You Magnetic. Here\'s Why', 'nocovid-19-vaccines-wont-make-you-magnetic-heres-why', NULL, 'No, Covid-19, Vaccines, Wont, Make, You, Magnetic., Heres, Why', 'No matter how many videos you’ve seen of people sticking spoons to their faces, that’s just not how magnets work.', '<p>No matter how many videos you&rsquo;ve seen of people sticking spoons to their faces, that&rsquo;s just not how magnets work.</p>', 15, 'uploads/images/2022/03/image_750x500_621f507d3ed78.jpg', 'uploads/images/2022/03/image_750x_621f507d7752a.jpg', 'uploads/images/2022/03/image_600x460_621f507d87382.jpg', 'uploads/images/2022/03/image_380x226_621f507d9567e.jpg', 'uploads/images/2022/03/image_140x98_621f507d9b8e7.jpg', 'jpg', 'local', '', 3, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 17:00:27', '2022-03-02 10:39:54'),
(37, 2, 'Through weakness of will, which is the same as saying through', 'through-weakness-of-will-which-is-the-same-as-saying-through', NULL, 'weakness, shrinking, saying', 'There anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil', '', 11, 'uploads/images/2022/03/image_750x500_6220d0fdd4600.jpg', 'uploads/images/2022/03/image_750x_6220d0fde1b83.jpg', 'uploads/images/2022/03/image_600x460_6220d0fdeba90.jpg', 'uploads/images/2022/03/image_380x226_6220d0fdf38ec.jpg', 'uploads/images/2022/03/image_140x98_6220d0fe02253.jpg', 'jpg', 'local', '', 2, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'gallery', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 1, NULL, '2022-03-04 02:32:00'),
(38, 2, 'Charms of pleasure of the moment', 'charms-of-pleasure-of-the-moment', NULL, 'moment, pleasure', 'We denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>', 11, 'uploads/images/2022/03/image_750x500_6220d191bbb8f.jpg', 'uploads/images/2022/03/image_750x_6220d191c669e.jpg', 'uploads/images/2022/03/image_600x460_6220d191cf885.jpg', 'uploads/images/2022/03/image_380x226_6220d191d7361.jpg', 'uploads/images/2022/03/image_140x98_6220d191d9aef.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'audio', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:33:48'),
(39, 2, 'Society excited by cottage private an it esteems', 'society-excited-by-cottage-private-an-it-esteems', NULL, 'cottage, esteems, post', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 11, 'uploads/images/2022/03/image_750x500_6220d2e427dcd.jpg', 'uploads/images/2022/03/image_750x_6220d2e432f21.jpg', 'uploads/images/2022/03/image_600x460_6220d2e43c8a8.jpg', 'uploads/images/2022/03/image_380x226_6220d2e44456c.jpg', 'uploads/images/2022/03/image_140x98_6220d2e44705f.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:38:32'),
(40, 2, 'Style never met and those among great', 'style-never-met-and-those-among-great', NULL, 'style, never, among', 'It will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always', '<p>Righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 13, 'uploads/images/2022/03/image_750x500_621f97e9c483c.jpg', 'uploads/images/2022/03/image_750x_621f97e9d86fc.jpg', 'uploads/images/2022/03/image_600x460_621f97e9e1ccf.jpg', 'uploads/images/2022/03/image_380x226_621f97e9eaf69.jpg', 'uploads/images/2022/03/image_140x98_621f97e9eddc8.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'These cases are perfectly simple and easy to distinguish', 0, NULL, '2022-03-03 04:15:13'),
(41, 2, 'Situation admitting promotion at or to perceived be', 'situation-admitting-promotion-at-or-to-perceived-be', NULL, 'perceived, admitting, promotion', 'Denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded', '<p>Weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has</p>', 13, 'uploads/images/2022/03/image_750x500_621f9c679b8d8.jpg', 'uploads/images/2022/03/image_750x_621f9c67a8664.jpg', 'uploads/images/2022/03/image_600x460_621f9c67b2195.jpg', 'uploads/images/2022/03/image_380x226_621f9c67ba207.jpg', 'uploads/images/2022/03/image_140x98_621f9c67bcd9a.jpg', 'jpg', 'local', '', 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 17:00:12', '2022-03-03 04:33:51'),
(42, 2, 'Cordially convinced did incommode existence', 'cordially-convinced-did-incommode-existence', NULL, 'incommode, existence, convinced', 'Easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best', '<p>That they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 2, 'uploads/images/2022/03/image_750x500_621f94d6e8795.jpg', 'uploads/images/2022/03/image_750x_621f94d706b20.jpg', 'uploads/images/2022/03/image_600x460_621f94d7126eb.jpg', 'uploads/images/2022/03/image_380x226_621f94d71b9b6.jpg', 'uploads/images/2022/03/image_140x98_621f94d71ead1.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:01', '2022-03-03 04:01:36'),
(43, 2, 'At ourselves direction believing do the departure', 'at-ourselves-direction-believing-do-the-departure', NULL, 'departure, believing, ourselves', ' Can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>When our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds.</p>', 2, 'uploads/images/2022/03/image_750x500_621f9a2f8f99f.jpg', 'uploads/images/2022/03/image_750x_621f9a2fa051e.jpg', 'uploads/images/2022/03/image_600x460_621f9a2faaaec.jpg', 'uploads/images/2022/03/image_380x226_621f9a2fb62d3.jpg', 'uploads/images/2022/03/image_140x98_621f9a2fb92d4.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise', 0, NULL, '2022-03-03 04:24:23'),
(44, 2, 'Cordially convinced did incommode existence', 'cordially-convinced-did-incommode-existence', NULL, 'incommode, existence, convinced', 'Easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best', '<p>That they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 2, 'uploads/images/2022/03/image_750x500_621f94d6e8795.jpg', 'uploads/images/2022/03/image_750x_621f94d706b20.jpg', 'uploads/images/2022/03/image_600x460_621f94d7126eb.jpg', 'uploads/images/2022/03/image_380x226_621f94d71b9b6.jpg', 'uploads/images/2022/03/image_140x98_621f94d71ead1.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:01', '2022-03-03 04:01:36'),
(45, 2, 'At ourselves direction believing do the departure', 'at-ourselves-direction-believing-do-the-departure', NULL, 'departure, believing, ourselves', ' Can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>When our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds.</p>', 2, 'uploads/images/2022/03/image_750x500_621f9a2f8f99f.jpg', 'uploads/images/2022/03/image_750x_621f9a2fa051e.jpg', 'uploads/images/2022/03/image_600x460_621f9a2faaaec.jpg', 'uploads/images/2022/03/image_380x226_621f9a2fb62d3.jpg', 'uploads/images/2022/03/image_140x98_621f9a2fb92d4.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise', 0, NULL, '2022-03-03 04:24:23'),
(46, 2, 'Cordially convinced did incommode existence', 'cordially-convinced-did-incommode-existence', NULL, 'incommode, existence, convinced', 'Easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best', '<p>That they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 2, 'uploads/images/2022/03/image_750x500_621f94d6e8795.jpg', 'uploads/images/2022/03/image_750x_621f94d706b20.jpg', 'uploads/images/2022/03/image_600x460_621f94d7126eb.jpg', 'uploads/images/2022/03/image_380x226_621f94d71b9b6.jpg', 'uploads/images/2022/03/image_140x98_621f94d71ead1.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:01', '2022-03-03 04:01:36'),
(47, 2, 'At ourselves direction believing do the departure', 'at-ourselves-direction-believing-do-the-departure', NULL, 'departure, believing, ourselves', ' Can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>When our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds.</p>', 2, 'uploads/images/2022/03/image_750x500_621f9a2f8f99f.jpg', 'uploads/images/2022/03/image_750x_621f9a2fa051e.jpg', 'uploads/images/2022/03/image_600x460_621f9a2faaaec.jpg', 'uploads/images/2022/03/image_380x226_621f9a2fb62d3.jpg', 'uploads/images/2022/03/image_140x98_621f9a2fb92d4.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise', 0, NULL, '2022-03-03 04:24:23'),
(48, 2, 'Are you logical or emotional?', 'are-you-logical-or-emotional', NULL, 'logical, emotional', 'Cras ultricies ac urna in sollicitudin. Quisque pretium sapien in molestie eleifend. Fusce diam nisi, rhoncus in laoreet pulvinar', '', 3, 'uploads/images/2022/03/image_750x500_6220cb2d1102a.jpg', 'uploads/images/2022/03/image_750x_6220cb2d1f39e.jpg', 'uploads/images/2022/03/image_600x460_6220cb2d2890b.jpg', 'uploads/images/2022/03/image_380x226_6220cb2d30553.jpg', 'uploads/images/2022/03/image_140x98_6220cb2d32da0.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:05:39'),
(49, 2, 'How well do you know the famous places in the world?', 'how-well-do-you-know-the-famous-places-in-the-world', NULL, 'places, world', 'Sed bibendum gravida ipsum ac mattis. Morbi id felis a tellus faucibus tempor. Pellentesque tellus justo', '', 3, 'uploads/images/2022/03/image_750x500_6220cb9194ce5.jpg', 'uploads/images/2022/03/image_750x_6220cb91a7755.jpg', 'uploads/images/2022/03/image_600x460_6220cb91b1cbc.jpg', 'uploads/images/2022/03/image_380x226_6220cb91b9f90.jpg', 'uploads/images/2022/03/image_140x98_6220cb91bd1d5.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:07:57'),
(50, 2, 'How much do you know the Solar System?', 'how-much-do-you-know-the-solar-system', NULL, 'solar system, quiz', 'Phasellus eleifend lorem at velit congue rutrum. Maecenas eu tortor nec arcu dictum rutrum sed nec lacus', '', 3, 'uploads/images/2022/03/image_750x500_6220cc8cd93f9.jpg', 'uploads/images/2022/03/image_750x_6220cc8ce51d5.jpg', 'uploads/images/2022/03/image_600x460_6220cc8ceefb2.jpg', 'uploads/images/2022/03/image_380x226_6220cc8d036cd.jpg', 'uploads/images/2022/03/image_140x98_6220cc8d0644e.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:11:31'),
(51, 2, 'What kind of personality do you have?', 'what-kind-of-personality-do-you-have', NULL, 'personality, quiz', 'Donec ut ipsum lectus. In commodo neque pellentesque neque cursus, et rutrum nunc viverra', '', 3, 'uploads/images/2022/03/image_750x500_6220cce7699e7.jpg', 'uploads/images/2022/03/image_750x_6220cce774f35.jpg', 'uploads/images/2022/03/image_600x460_6220cce77e4e6.jpg', 'uploads/images/2022/03/image_380x226_6220cce7861b0.jpg', 'uploads/images/2022/03/image_140x98_6220cce788a31.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:13:54'),
(52, 2, 'Cordially convinced did incommode existence', 'cordially-convinced-did-incommode-existence', NULL, 'incommode, existence, convinced', 'Easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best', '<p>That they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 2, 'uploads/images/2022/03/image_750x500_621f94d6e8795.jpg', 'uploads/images/2022/03/image_750x_621f94d706b20.jpg', 'uploads/images/2022/03/image_600x460_621f94d7126eb.jpg', 'uploads/images/2022/03/image_380x226_621f94d71b9b6.jpg', 'uploads/images/2022/03/image_140x98_621f94d71ead1.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:01', '2022-03-03 04:01:36'),
(53, 2, 'At ourselves direction believing do the departure', 'at-ourselves-direction-believing-do-the-departure', NULL, 'departure, believing, ourselves', ' Can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>When our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds.</p>', 2, 'uploads/images/2022/03/image_750x500_621f9a2f8f99f.jpg', 'uploads/images/2022/03/image_750x_621f9a2fa051e.jpg', 'uploads/images/2022/03/image_600x460_621f9a2faaaec.jpg', 'uploads/images/2022/03/image_380x226_621f9a2fb62d3.jpg', 'uploads/images/2022/03/image_140x98_621f9a2fb92d4.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise', 0, NULL, '2022-03-03 04:24:23'),
(54, 2, 'Cordially convinced did incommode existence', 'cordially-convinced-did-incommode-existence', NULL, 'incommode, existence, convinced', 'Easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best', '<p>That they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 2, 'uploads/images/2022/03/image_750x500_621f94d6e8795.jpg', 'uploads/images/2022/03/image_750x_621f94d706b20.jpg', 'uploads/images/2022/03/image_600x460_621f94d7126eb.jpg', 'uploads/images/2022/03/image_380x226_621f94d71b9b6.jpg', 'uploads/images/2022/03/image_140x98_621f94d71ead1.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:01', '2022-03-03 04:01:36'),
(55, 2, 'At ourselves direction believing do the departure', 'at-ourselves-direction-believing-do-the-departure', NULL, 'departure, believing, ourselves', ' Can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>When our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds.</p>', 2, 'uploads/images/2022/03/image_750x500_621f9a2f8f99f.jpg', 'uploads/images/2022/03/image_750x_621f9a2fa051e.jpg', 'uploads/images/2022/03/image_600x460_621f9a2faaaec.jpg', 'uploads/images/2022/03/image_380x226_621f9a2fb62d3.jpg', 'uploads/images/2022/03/image_140x98_621f9a2fb92d4.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise', 0, NULL, '2022-03-03 04:24:23'),
(56, 2, 'Cordially convinced did incommode existence', 'cordially-convinced-did-incommode-existence', NULL, 'incommode, existence, convinced', 'Easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best', '<p>That they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 2, 'uploads/images/2022/03/image_750x500_621f94d6e8795.jpg', 'uploads/images/2022/03/image_750x_621f94d706b20.jpg', 'uploads/images/2022/03/image_600x460_621f94d7126eb.jpg', 'uploads/images/2022/03/image_380x226_621f94d71b9b6.jpg', 'uploads/images/2022/03/image_140x98_621f94d71ead1.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:01', '2022-03-03 04:01:36'),
(57, 2, 'At ourselves direction believing do the departure', 'at-ourselves-direction-believing-do-the-departure', NULL, 'departure, believing, ourselves', ' Can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>When our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds.</p>', 2, 'uploads/images/2022/03/image_750x500_621f9a2f8f99f.jpg', 'uploads/images/2022/03/image_750x_621f9a2fa051e.jpg', 'uploads/images/2022/03/image_600x460_621f9a2faaaec.jpg', 'uploads/images/2022/03/image_380x226_621f9a2fb62d3.jpg', 'uploads/images/2022/03/image_140x98_621f9a2fb92d4.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise', 0, NULL, '2022-03-03 04:24:23'),
(58, 2, 'Cordially convinced did incommode existence', 'cordially-convinced-did-incommode-existence', NULL, 'incommode, existence, convinced', 'Easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best', '<p>That they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 2, 'uploads/images/2022/03/image_750x500_621f94d6e8795.jpg', 'uploads/images/2022/03/image_750x_621f94d706b20.jpg', 'uploads/images/2022/03/image_600x460_621f94d7126eb.jpg', 'uploads/images/2022/03/image_380x226_621f94d71b9b6.jpg', 'uploads/images/2022/03/image_140x98_621f94d71ead1.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 04:13:01', '2022-03-03 04:01:36'),
(59, 2, 'At ourselves direction believing do the departure', 'at-ourselves-direction-believing-do-the-departure', NULL, 'departure, believing, ourselves', ' Can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>When our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds.</p>', 2, 'uploads/images/2022/03/image_750x500_621f9a2f8f99f.jpg', 'uploads/images/2022/03/image_750x_621f9a2fa051e.jpg', 'uploads/images/2022/03/image_600x460_621f9a2faaaec.jpg', 'uploads/images/2022/03/image_380x226_621f9a2fb62d3.jpg', 'uploads/images/2022/03/image_140x98_621f9a2fb92d4.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise', 0, NULL, '2022-03-03 04:24:23'),
(60, 2, 'Are you logical or emotional?', 'are-you-logical-or-emotional', NULL, 'logical, emotional', 'Cras ultricies ac urna in sollicitudin. Quisque pretium sapien in molestie eleifend. Fusce diam nisi, rhoncus in laoreet pulvinar', '', 3, 'uploads/images/2022/03/image_750x500_6220cb2d1102a.jpg', 'uploads/images/2022/03/image_750x_6220cb2d1f39e.jpg', 'uploads/images/2022/03/image_600x460_6220cb2d2890b.jpg', 'uploads/images/2022/03/image_380x226_6220cb2d30553.jpg', 'uploads/images/2022/03/image_140x98_6220cb2d32da0.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:05:39'),
(61, 2, 'How well do you know the famous places in the world?', 'how-well-do-you-know-the-famous-places-in-the-world', NULL, 'places, world', 'Sed bibendum gravida ipsum ac mattis. Morbi id felis a tellus faucibus tempor. Pellentesque tellus justo', '', 3, 'uploads/images/2022/03/image_750x500_6220cb9194ce5.jpg', 'uploads/images/2022/03/image_750x_6220cb91a7755.jpg', 'uploads/images/2022/03/image_600x460_6220cb91b1cbc.jpg', 'uploads/images/2022/03/image_380x226_6220cb91b9f90.jpg', 'uploads/images/2022/03/image_140x98_6220cb91bd1d5.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:07:57'),
(62, 2, 'How much do you know the Solar System?', 'how-much-do-you-know-the-solar-system', NULL, 'solar system, quiz', 'Phasellus eleifend lorem at velit congue rutrum. Maecenas eu tortor nec arcu dictum rutrum sed nec lacus', '', 3, 'uploads/images/2022/03/image_750x500_6220cc8cd93f9.jpg', 'uploads/images/2022/03/image_750x_6220cc8ce51d5.jpg', 'uploads/images/2022/03/image_600x460_6220cc8ceefb2.jpg', 'uploads/images/2022/03/image_380x226_6220cc8d036cd.jpg', 'uploads/images/2022/03/image_140x98_6220cc8d0644e.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:11:31');
INSERT INTO `posts` (`id`, `lang_id`, `title`, `title_slug`, `title_hash`, `keywords`, `summary`, `content`, `category_id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `image_storage`, `optional_url`, `pageviews`, `need_auth`, `is_slider`, `slider_order`, `is_featured`, `featured_order`, `is_recommended`, `is_breaking`, `is_scheduled`, `visibility`, `show_right_column`, `post_type`, `video_path`, `video_storage`, `image_url`, `video_url`, `video_embed_code`, `user_id`, `status`, `feed_id`, `post_url`, `show_post_url`, `image_description`, `show_item_numbers`, `updated_at`, `created_at`) VALUES
(63, 2, 'What kind of personality do you have?', 'what-kind-of-personality-do-you-have', NULL, 'personality, quiz', 'Donec ut ipsum lectus. In commodo neque pellentesque neque cursus, et rutrum nunc viverra', '', 3, 'uploads/images/2022/03/image_750x500_6220cce7699e7.jpg', 'uploads/images/2022/03/image_750x_6220cce774f35.jpg', 'uploads/images/2022/03/image_600x460_6220cce77e4e6.jpg', 'uploads/images/2022/03/image_380x226_6220cce7861b0.jpg', 'uploads/images/2022/03/image_140x98_6220cce788a31.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:13:54'),
(64, 2, 'Are you logical or emotional?', 'are-you-logical-or-emotional', NULL, 'logical, emotional', 'Cras ultricies ac urna in sollicitudin. Quisque pretium sapien in molestie eleifend. Fusce diam nisi, rhoncus in laoreet pulvinar', '', 3, 'uploads/images/2022/03/image_750x500_6220cb2d1102a.jpg', 'uploads/images/2022/03/image_750x_6220cb2d1f39e.jpg', 'uploads/images/2022/03/image_600x460_6220cb2d2890b.jpg', 'uploads/images/2022/03/image_380x226_6220cb2d30553.jpg', 'uploads/images/2022/03/image_140x98_6220cb2d32da0.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:05:39'),
(65, 2, 'How well do you know the famous places in the world?', 'how-well-do-you-know-the-famous-places-in-the-world', NULL, 'places, world', 'Sed bibendum gravida ipsum ac mattis. Morbi id felis a tellus faucibus tempor. Pellentesque tellus justo', '', 3, 'uploads/images/2022/03/image_750x500_6220cb9194ce5.jpg', 'uploads/images/2022/03/image_750x_6220cb91a7755.jpg', 'uploads/images/2022/03/image_600x460_6220cb91b1cbc.jpg', 'uploads/images/2022/03/image_380x226_6220cb91b9f90.jpg', 'uploads/images/2022/03/image_140x98_6220cb91bd1d5.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:07:57'),
(66, 2, 'How much do you know the Solar System?', 'how-much-do-you-know-the-solar-system', NULL, 'solar system, quiz', 'Phasellus eleifend lorem at velit congue rutrum. Maecenas eu tortor nec arcu dictum rutrum sed nec lacus', '', 3, 'uploads/images/2022/03/image_750x500_6220cc8cd93f9.jpg', 'uploads/images/2022/03/image_750x_6220cc8ce51d5.jpg', 'uploads/images/2022/03/image_600x460_6220cc8ceefb2.jpg', 'uploads/images/2022/03/image_380x226_6220cc8d036cd.jpg', 'uploads/images/2022/03/image_140x98_6220cc8d0644e.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:11:31'),
(67, 2, 'What kind of personality do you have?', 'what-kind-of-personality-do-you-have', NULL, 'personality, quiz', 'Donec ut ipsum lectus. In commodo neque pellentesque neque cursus, et rutrum nunc viverra', '', 3, 'uploads/images/2022/03/image_750x500_6220cce7699e7.jpg', 'uploads/images/2022/03/image_750x_6220cce774f35.jpg', 'uploads/images/2022/03/image_600x460_6220cce77e4e6.jpg', 'uploads/images/2022/03/image_380x226_6220cce7861b0.jpg', 'uploads/images/2022/03/image_140x98_6220cce788a31.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'personality_quiz', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:13:54'),
(68, 2, 'Sportsman do offending supported extremity breakfast by listening', 'sportsman-do-offending-supported-extremity-breakfast-by-listening', NULL, 'breakfast, listening, offending', 'Decisively advantages nor expression unpleasing she led met. Estate was tended ten boy nearer seemed', '<p>Avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.</p>\r\n<p>These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains</p>', 6, 'uploads/images/2022/03/image_750x500_6220ce4d2baed.jpg', 'uploads/images/2022/03/image_750x_6220ce4d38751.jpg', 'uploads/images/2022/03/image_600x460_6220ce4d43595.jpg', 'uploads/images/2022/03/image_380x226_6220ce4d4bad9.jpg', 'uploads/images/2022/03/image_140x98_6220ce4d4e930.jpg', 'jpg', 'local', '', 2, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be303b67457e.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:19:12'),
(69, 2, 'From above video of water stream', 'from-above-video-of-water-stream', NULL, 'stream, water', 'Who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances', '<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum</p>', 6, '', '', '', '', '', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'video', NULL, NULL, 'https://img.youtube.com/vi/WnMsO8mXvAY/maxresdefault.jpg', 'https://www.youtube.com/watch?v=WnMsO8mXvAY&feature=emb_logo', 'https://www.youtube.com/embed/WnMsO8mXvAY?feature=emb_logo', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:20:32'),
(70, 2, 'Sailboat sailing during sunset', 'sailboat-sailing-during-sunset', NULL, 'sunset, during, sailing', 'Obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always', '<p>Integer volutpat lacinia est, cursus elementum mauris fermentum ut. Ut arcu nisi, gravida ut nibh quis, convallis consectetur sem. Donec malesuada erat condimentum libero convallis, ac consectetur libero rutrum. Phasellus quis tellus eu justo tempus dapibus. Proin ullamcorper mollis pellentesque. Curabitur dapibus ante odio, id pellentesque metus vulputate quis. Pellentesque turpis leo, rutrum porta ex consequat, tempus ornare lorem. Ut iaculis pellentesque vehicula. Cras pellentesque nunc eget risus gravida, in venenatis turpis pharetra.</p>\r\n<p>Maecenas vestibulum iaculis venenatis. Cras eget nunc mi. Aliquam vitae sem et est dictum dapibus. Proin ac iaculis risus. Maecenas ornare eros eu sapien porttitor, ac vestibulum dolor sodales. Vivamus ac erat eu leo tincidunt vulputate. Curabitur sed ex id ligula fringilla venenatis eu ut purus. Suspendisse imperdiet cursus scelerisque. Integer imperdiet at turpis quis hendrerit. Integer aliquam mauris eu vulputate aliquet. In finibus neque quis blandit aliquam. Phasellus pulvinar interdum congue. Maecenas nec lorem est.</p>\r\n<p>Vestibulum a tempus metus. Fusce felis ligula, tempus blandit enim nec, sollicitudin sagittis turpis. Praesent vitae blandit diam, vitae gravida leo. Mauris ornare non purus a tempus. Nullam semper erat consequat, maximus dui ac, ultricies ex. Sed tincidunt at lorem at suscipit. Donec ac ipsum sit amet lorem varius tempus.</p>', 6, '', '', '', '', '', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'video', NULL, NULL, 'https://img.youtube.com/vi/V9ypxcc0TpI/maxresdefault.jpg', 'https://www.youtube.com/watch?v=V9ypxcc0TpI&feature=emb_logo', 'https://www.youtube.com/embed/V9ypxcc0TpI?feature=emb_logo', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:21:27'),
(71, 2, 'View Of River From Boat', 'view-of-river-from-boat', NULL, 'boat, river, view', 'We like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing ', '<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure</p>', 6, '', '', '', '', '', 'jpg', 'local', '', 2, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'video', NULL, NULL, 'https://img.youtube.com/vi/lh5TdeDDsbI/maxresdefault.jpg', 'https://www.youtube.com/watch?v=lh5TdeDDsbI&feature=emb_logo', 'https://www.youtube.com/embed/lh5TdeDDsbI?feature=emb_logo', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:22:15'),
(72, 2, 'Announcing it me stimulated frequently continuing', 'announcing-it-me-stimulated-frequently-continuing', NULL, 'continuing, frequently, stimulated', 'Occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>Denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.</p>\r\n<p>Quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 7, 'uploads/images/2022/03/image_750x500_6220cf94739ce.jpg', 'uploads/images/2022/03/image_750x_6220cf947e8fb.jpg', 'uploads/images/2022/03/image_600x460_6220cf9487c8a.jpg', 'uploads/images/2022/03/image_380x226_6220cf948f915.jpg', 'uploads/images/2022/03/image_140x98_6220cf94923b2.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it', 0, NULL, '2022-03-04 02:24:33'),
(73, 2, 'Are own design entire former get should', 'are-own-design-entire-former-get-should', NULL, 'design, entire', 'To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it', '<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has.</p>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.&nbsp;</p>\r\n<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 7, 'uploads/images/2022/03/image_750x500_6220cfd160265.jpg', 'uploads/images/2022/03/image_750x_6220cfd16b999.jpg', 'uploads/images/2022/03/image_600x460_6220cfd17581f.jpg', 'uploads/images/2022/03/image_380x226_6220cfd17dbfa.jpg', 'uploads/images/2022/03/image_140x98_6220cfd18098a.jpg', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:25:36'),
(74, 2, 'Lose away off why half led have near bed', 'lose-away-off-why-half-led-have-near-bed', NULL, 'pursues, obtain', 'There anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur', '<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.</p>\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 7, 'uploads/images/2022/03/image_750x500_6220d0103bf55.jpg', 'uploads/images/2022/03/image_750x_6220d01046865.jpg', 'uploads/images/2022/03/image_600x460_6220d0104fda1.jpg', 'uploads/images/2022/03/image_380x226_6220d01057716.jpg', 'uploads/images/2022/03/image_140x98_6220d0105a04d.jpg', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:26:32'),
(75, 2, 'Far concluded not his something extremity', 'far-concluded-not-his-something-extremity', NULL, 'extremity, something', 'Far concluded not his something extremity', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.</p>\r\n<p>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>', 12, 'uploads/images/2022/03/image_750x500_6220d254a6a1b.jpg', 'uploads/images/2022/03/image_750x_6220d254b1bf7.jpg', 'uploads/images/2022/03/image_600x460_6220d254bb0a9.jpg', 'uploads/images/2022/03/image_380x226_6220d254c2b51.jpg', 'uploads/images/2022/03/image_140x98_6220d254c559f.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be3005b109f4.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:36:42'),
(76, 2, 'Style never met and those among great', 'style-never-met-and-those-among-great', NULL, 'style, never, among', 'It will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always', '<p>Righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 13, 'uploads/images/2022/03/image_750x500_621f97e9c483c.jpg', 'uploads/images/2022/03/image_750x_621f97e9d86fc.jpg', 'uploads/images/2022/03/image_600x460_621f97e9e1ccf.jpg', 'uploads/images/2022/03/image_380x226_621f97e9eaf69.jpg', 'uploads/images/2022/03/image_140x98_621f97e9eddc8.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'These cases are perfectly simple and easy to distinguish', 0, NULL, '2022-03-03 04:15:13'),
(77, 2, 'Situation admitting promotion at or to perceived be', 'situation-admitting-promotion-at-or-to-perceived-be', NULL, 'perceived, admitting, promotion', 'Denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded', '<p>Weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has</p>', 13, 'uploads/images/2022/03/image_750x500_621f9c679b8d8.jpg', 'uploads/images/2022/03/image_750x_621f9c67a8664.jpg', 'uploads/images/2022/03/image_600x460_621f9c67b2195.jpg', 'uploads/images/2022/03/image_380x226_621f9c67ba207.jpg', 'uploads/images/2022/03/image_140x98_621f9c67bcd9a.jpg', 'jpg', 'local', '', 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 17:00:12', '2022-03-03 04:33:51'),
(78, 2, 'Style never met and those among great', 'style-never-met-and-those-among-great', NULL, 'style, never, among', 'It will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always', '<p>Righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 13, 'uploads/images/2022/03/image_750x500_621f97e9c483c.jpg', 'uploads/images/2022/03/image_750x_621f97e9d86fc.jpg', 'uploads/images/2022/03/image_600x460_621f97e9e1ccf.jpg', 'uploads/images/2022/03/image_380x226_621f97e9eaf69.jpg', 'uploads/images/2022/03/image_140x98_621f97e9eddc8.jpg', 'jpg', 'local', '', 2, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'These cases are perfectly simple and easy to distinguish', 0, NULL, '2022-03-03 04:15:13'),
(79, 2, 'Situation admitting promotion at or to perceived be', 'situation-admitting-promotion-at-or-to-perceived-be', NULL, 'perceived, admitting, promotion', 'Denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded', '<p>Weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has</p>', 13, 'uploads/images/2022/03/image_750x500_621f9c679b8d8.jpg', 'uploads/images/2022/03/image_750x_621f9c67a8664.jpg', 'uploads/images/2022/03/image_600x460_621f9c67b2195.jpg', 'uploads/images/2022/03/image_380x226_621f9c67ba207.jpg', 'uploads/images/2022/03/image_140x98_621f9c67bcd9a.jpg', 'jpg', 'local', '', 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, '2022-03-03 17:00:12', '2022-03-03 04:33:51'),
(80, 2, 'Far concluded not his something extremity', 'far-concluded-not-his-something-extremity', NULL, 'extremity, something', 'Far concluded not his something extremity', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.</p>\r\n<p>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>', 12, 'uploads/images/2022/03/image_750x500_6220d254a6a1b.jpg', 'uploads/images/2022/03/image_750x_6220d254b1bf7.jpg', 'uploads/images/2022/03/image_600x460_6220d254bb0a9.jpg', 'uploads/images/2022/03/image_380x226_6220d254c2b51.jpg', 'uploads/images/2022/03/image_140x98_6220d254c559f.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be3005b109f4.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:36:42'),
(81, 2, 'Far concluded not his something extremity', 'far-concluded-not-his-something-extremity', NULL, 'extremity, something', 'Far concluded not his something extremity', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.</p>\r\n<p>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>', 12, 'uploads/images/2022/03/image_750x500_6220d254a6a1b.jpg', 'uploads/images/2022/03/image_750x_6220d254b1bf7.jpg', 'uploads/images/2022/03/image_600x460_6220d254bb0a9.jpg', 'uploads/images/2022/03/image_380x226_6220d254c2b51.jpg', 'uploads/images/2022/03/image_140x98_6220d254c559f.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be3005b109f4.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:36:42'),
(82, 2, 'Far concluded not his something extremity', 'far-concluded-not-his-something-extremity', NULL, 'extremity, something', 'Far concluded not his something extremity', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.</p>\r\n<p>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>', 12, 'uploads/images/2022/03/image_750x500_6220d254a6a1b.jpg', 'uploads/images/2022/03/image_750x_6220d254b1bf7.jpg', 'uploads/images/2022/03/image_600x460_6220d254bb0a9.jpg', 'uploads/images/2022/03/image_380x226_6220d254c2b51.jpg', 'uploads/images/2022/03/image_140x98_6220d254c559f.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be3005b109f4.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:36:42'),
(83, 2, 'Far concluded not his something extremity', 'far-concluded-not-his-something-extremity', NULL, 'extremity, something', 'Far concluded not his something extremity', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.</p>\r\n<p>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>', 12, 'uploads/images/2022/03/image_750x500_6220d254a6a1b.jpg', 'uploads/images/2022/03/image_750x_6220d254b1bf7.jpg', 'uploads/images/2022/03/image_600x460_6220d254bb0a9.jpg', 'uploads/images/2022/03/image_380x226_6220d254c2b51.jpg', 'uploads/images/2022/03/image_140x98_6220d254c559f.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be3005b109f4.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:36:42'),
(84, 2, 'Far concluded not his something extremity', 'far-concluded-not-his-something-extremity', NULL, 'extremity, something', 'Far concluded not his something extremity', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.</p>\r\n<p>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>', 12, 'uploads/images/2022/03/image_750x500_6220d254a6a1b.jpg', 'uploads/images/2022/03/image_750x_6220d254b1bf7.jpg', 'uploads/images/2022/03/image_600x460_6220d254bb0a9.jpg', 'uploads/images/2022/03/image_380x226_6220d254c2b51.jpg', 'uploads/images/2022/03/image_140x98_6220d254c559f.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be3005b109f4.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:36:42'),
(85, 2, 'Far concluded not his something extremity', 'far-concluded-not-his-something-extremity', NULL, 'extremity, something', 'Far concluded not his something extremity', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.</p>\r\n<p>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>', 12, 'uploads/images/2022/03/image_750x500_6220d254a6a1b.jpg', 'uploads/images/2022/03/image_750x_6220d254b1bf7.jpg', 'uploads/images/2022/03/image_600x460_6220d254bb0a9.jpg', 'uploads/images/2022/03/image_380x226_6220d254c2b51.jpg', 'uploads/images/2022/03/image_140x98_6220d254c559f.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 'video', 'uploads/videos/2022/03/video_5be3005b109f4.mp4', 'local', '', '', '', 1, 1, NULL, NULL, 0, NULL, 0, NULL, '2022-03-04 02:36:42'),
(86, 2, 'Announcing it me stimulated frequently continuing', 'announcing-it-me-stimulated-frequently-continuing', NULL, 'continuing, frequently, stimulated', 'Occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>Denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.</p>\r\n<p>Quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 7, 'uploads/images/2022/03/image_750x500_6220cf94739ce.jpg', 'uploads/images/2022/03/image_750x_6220cf947e8fb.jpg', 'uploads/images/2022/03/image_600x460_6220cf9487c8a.jpg', 'uploads/images/2022/03/image_380x226_6220cf948f915.jpg', 'uploads/images/2022/03/image_140x98_6220cf94923b2.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it', 0, NULL, '2022-03-04 02:24:33'),
(87, 2, 'Are own design entire former get should', 'are-own-design-entire-former-get-should', NULL, 'design, entire', 'To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it', '<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has.</p>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.&nbsp;</p>\r\n<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 7, 'uploads/images/2022/03/image_750x500_6220cfd160265.jpg', 'uploads/images/2022/03/image_750x_6220cfd16b999.jpg', 'uploads/images/2022/03/image_600x460_6220cfd17581f.jpg', 'uploads/images/2022/03/image_380x226_6220cfd17dbfa.jpg', 'uploads/images/2022/03/image_140x98_6220cfd18098a.jpg', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:25:36'),
(88, 2, 'Lose away off why half led have near bed', 'lose-away-off-why-half-led-have-near-bed', NULL, 'pursues, obtain', 'There anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur', '<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.</p>\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 7, 'uploads/images/2022/03/image_750x500_6220d0103bf55.jpg', 'uploads/images/2022/03/image_750x_6220d01046865.jpg', 'uploads/images/2022/03/image_600x460_6220d0104fda1.jpg', 'uploads/images/2022/03/image_380x226_6220d01057716.jpg', 'uploads/images/2022/03/image_140x98_6220d0105a04d.jpg', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:26:32');
INSERT INTO `posts` (`id`, `lang_id`, `title`, `title_slug`, `title_hash`, `keywords`, `summary`, `content`, `category_id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `image_storage`, `optional_url`, `pageviews`, `need_auth`, `is_slider`, `slider_order`, `is_featured`, `featured_order`, `is_recommended`, `is_breaking`, `is_scheduled`, `visibility`, `show_right_column`, `post_type`, `video_path`, `video_storage`, `image_url`, `video_url`, `video_embed_code`, `user_id`, `status`, `feed_id`, `post_url`, `show_post_url`, `image_description`, `show_item_numbers`, `updated_at`, `created_at`) VALUES
(89, 2, 'Announcing it me stimulated frequently continuing', 'announcing-it-me-stimulated-frequently-continuing', NULL, 'continuing, frequently, stimulated', 'Occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes', '<p>Denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure.</p>\r\n<p>Quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</p>', 7, 'uploads/images/2022/03/image_750x500_6220cf94739ce.jpg', 'uploads/images/2022/03/image_750x_6220cf947e8fb.jpg', 'uploads/images/2022/03/image_600x460_6220cf9487c8a.jpg', 'uploads/images/2022/03/image_380x226_6220cf948f915.jpg', 'uploads/images/2022/03/image_140x98_6220cf94923b2.jpg', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, 'To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it', 0, NULL, '2022-03-04 02:24:33'),
(90, 2, 'Are own design entire former get should', 'are-own-design-entire-former-get-should', NULL, 'design, entire', 'To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it', '<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has.</p>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.&nbsp;</p>\r\n<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 7, 'uploads/images/2022/03/image_750x500_6220cfd160265.jpg', 'uploads/images/2022/03/image_750x_6220cfd16b999.jpg', 'uploads/images/2022/03/image_600x460_6220cfd17581f.jpg', 'uploads/images/2022/03/image_380x226_6220cfd17dbfa.jpg', 'uploads/images/2022/03/image_140x98_6220cfd18098a.jpg', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:25:36'),
(91, 2, 'Lose away off why half led have near bed', 'lose-away-off-why-half-led-have-near-bed', NULL, 'pursues, obtain', 'There anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur', '<p>In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.</p>\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 7, 'uploads/images/2022/03/image_750x500_6220d0103bf55.jpg', 'uploads/images/2022/03/image_750x_6220d01046865.jpg', 'uploads/images/2022/03/image_600x460_6220d0104fda1.jpg', 'uploads/images/2022/03/image_380x226_6220d01057716.jpg', 'uploads/images/2022/03/image_140x98_6220d0105a04d.jpg', 'jpg', 'local', '', 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, '', 0, NULL, '2022-03-04 02:26:32'),
(92, 2, 'Test', 'test', NULL, '', '', '<p><img src=\"https://kronickeys.com/varient/uploads/images/2022/04/image_750x_625527e54e1c9.jpg\" alt=\"\" /></p>', 4, '', '', '', '', '', 'jpg', 'local', '', 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 'video', NULL, NULL, '', '', '', 4, 1, NULL, NULL, 0, NULL, 0, '2022-04-13 06:16:39', '2022-03-29 06:27:54'),
(93, 2, 'What is Lorem Ipsum?', 'greatly-hearted-has-who-believe-93', NULL, 'varient, category, life style', '', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p><img src=\"https://kronickeys.com/varient/uploads/images/2022/04/image_750x_62483483ad6a3.jpg\" alt=\"\" /></p>\r\n</div>', 13, 'uploads/images/2022/04/image_750x500_62483483870e9.jpg', 'uploads/images/2022/04/image_750x_62483483ad6a3.jpg', 'uploads/images/2022/04/image_600x460_62483483d26dd.jpg', 'uploads/images/2022/04/image_380x226_62483484031aa.jpg', 'uploads/images/2022/04/image_140x98_624834842406b.jpg', 'jpg', 'local', '', 5, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 5, 1, NULL, NULL, 0, '', 0, '2022-04-07 02:37:34', '2022-04-02 22:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `post_audios`
--

CREATE TABLE `post_audios` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `audio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post_files`
--

CREATE TABLE `post_files` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post_gallery_items`
--

CREATE TABLE `post_gallery_items` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `image_large` varchar(255) DEFAULT NULL,
  `image_description` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `item_order` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_gallery_items`
--

INSERT INTO `post_gallery_items` (`id`, `post_id`, `title`, `content`, `image`, `image_large`, `image_description`, `storage`, `item_order`) VALUES
(1, 24, 'These cases are perfectly simple and easy to distinguish', '<p>These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>', 'uploads/images/2022/03/image_750x500_6220d0fdd4600.jpg', 'uploads/images/2022/03/image_750x_6220d0fde1b83.jpg', '', 'local', 1),
(2, 24, 'Which is the same as saying through shrinking from', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'uploads/images/2022/03/image_750x500_621f90ca962b7.jpg', 'uploads/images/2022/03/image_750x_621f90caa85b8.jpg', '', 'local', 2),
(3, 24, 'These cases are perfectly simple and easy to distinguish', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Vestibulum sagittis lobortis enim, feugiat suscipit ex imperdiet in. Duis ultrices quam ut mi laoreet elementum. Curabitur erat quam, varius et diam quis, tempus pulvinar enim. Mauris commodo egestas nulla, at pulvinar ex bibendum eget. Pellentesque purus dolor, auctor sit amet tortor a, efficitur congue metus. Pellentesque finibus porttitor cursus. Proin vitae facilisis justo. Vivamus vel sapien purus. Nunc cursus a leo posuere cursus.</span></p>', 'uploads/images/2022/03/image_750x500_6220d154b26bf.jpg', 'uploads/images/2022/03/image_750x_6220d154bda54.jpg', '', 'local', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id`, `post_id`, `image_big`, `image_default`, `storage`) VALUES
(1, 93, 'uploads/images/2022/03/image_750x500_6220cfd160265.jpg', 'uploads/images/2022/03/image_750x_6220cfd16b999.jpg', 'local'),
(2, 93, 'uploads/images/2022/03/image_750x500_621f9c679b8d8.jpg', 'uploads/images/2022/03/image_750x_621f9c67a8664.jpg', 'local'),
(3, 93, 'uploads/images/2022/03/image_750x500_6220ce565b678.jpg', 'uploads/images/2022/03/image_750x_6220ce56690cb.jpg', 'local');

-- --------------------------------------------------------

--
-- Table structure for table `post_pageviews_month`
--

CREATE TABLE `post_pageviews_month` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `post_user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `reward_amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_pageviews_month`
--

INSERT INTO `post_pageviews_month` (`id`, `post_id`, `post_user_id`, `ip_address`, `user_agent`, `reward_amount`, `created_at`) VALUES
(31, 27, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-16 01:21:29'),
(32, 21, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-16 22:00:22'),
(33, 8, 1, '45.113.106.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, '2022-03-16 23:54:42'),
(34, 2, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-18 05:48:20'),
(35, 20, 1, '91.172.14.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-20 14:23:08'),
(36, 9, 1, '92.184.105.223', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-22 06:24:12'),
(37, 17, 1, '45.113.106.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 0, '2022-03-22 16:36:12'),
(38, 24, 1, '45.113.106.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 0, '2022-03-22 19:17:23'),
(39, 16, 1, '92.184.107.207', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 00:38:10'),
(40, 8, 1, '92.184.107.207', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 01:11:36'),
(41, 5, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 01:16:05'),
(42, 6, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 01:16:09'),
(43, 8, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 01:18:53'),
(44, 12, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 01:19:15'),
(45, 26, 1, '92.184.107.220', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 05:48:10'),
(46, 6, 1, '209.205.197.133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 0, '2022-03-23 06:01:56'),
(47, 8, 1, '92.184.107.220', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 06:09:41'),
(48, 12, 1, '92.184.107.220', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 06:10:36'),
(49, 23, 1, '45.113.106.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', 0, '2022-03-23 06:22:34'),
(50, 20, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-23 08:38:43'),
(51, 17, 1, '45.113.106.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', 0, '2022-03-23 21:50:56'),
(52, 5, 1, '45.113.106.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', 0, '2022-03-23 21:51:15'),
(53, 12, 1, '45.113.106.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', 0, '2022-03-23 21:51:45'),
(54, 4, 1, '92.184.98.213', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-24 09:22:38'),
(55, 12, 1, '92.184.98.129', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-24 11:32:54'),
(56, 12, 1, '45.113.106.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 0, '2022-03-25 04:10:15'),
(57, 23, 1, '92.184.104.162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-03-29 22:26:38'),
(58, 3, 1, '213.203.67.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 0, '2022-03-31 21:06:21'),
(59, 22, 1, '213.203.67.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 0, '2022-04-01 19:26:20'),
(60, 12, 1, '213.203.67.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 0, '2022-04-01 19:27:14'),
(61, 1, 1, '213.203.67.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 0, '2022-04-01 19:27:32'),
(62, 27, 1, '213.203.67.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 0, '2022-04-01 20:53:46'),
(63, 93, 5, '45.113.106.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 0, '2022-04-02 22:36:10'),
(64, 23, 1, '45.113.106.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 0, '2022-04-02 22:48:01'),
(65, 93, 5, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-03 03:59:27'),
(66, 92, 4, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-03 04:00:04'),
(67, 93, 5, '74.114.154.12', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-03 04:00:50'),
(68, 27, 1, '31.13.127.10', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', 0, '2022-04-03 04:04:51'),
(69, 3, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-03 04:05:02'),
(70, 93, 5, '91.172.14.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 0, '2022-04-04 11:07:24'),
(71, 8, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 0, '2022-04-07 08:47:11'),
(72, 14, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 0, '2022-04-07 09:04:20'),
(73, 93, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-08 08:07:08'),
(74, 17, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-11 09:53:30'),
(75, 35, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-12 07:44:30'),
(76, 6, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-13 02:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `post_pageviews_week`
--

CREATE TABLE `post_pageviews_week` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `post_user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `reward_amount` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_pageviews_week`
--

INSERT INTO `post_pageviews_week` (`id`, `post_id`, `post_user_id`, `ip_address`, `user_agent`, `reward_amount`, `created_at`) VALUES
(73, 93, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-08 08:07:08'),
(74, 17, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 0, '2022-04-11 09:53:30'),
(75, 35, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-12 07:44:30'),
(76, 6, 1, '91.172.14.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', 0, '2022-04-13 02:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `post_sorted_list_items`
--

CREATE TABLE `post_sorted_list_items` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `image_large` varchar(255) DEFAULT NULL,
  `image_description` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `item_order` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `image_storage` varchar(20) DEFAULT 'local',
  `answer_text` varchar(500) DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `assigned_result_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_answers`
--

INSERT INTO `quiz_answers` (`id`, `question_id`, `image_path`, `image_storage`, `answer_text`, `is_correct`, `assigned_result_id`) VALUES
(1, 1, '', '', '', 0, 0),
(2, 1, '', '', '', 0, 0),
(3, 2, '', '', '', 0, 0),
(4, 2, '', '', '', 0, 0),
(5, 3, '', '', '', 0, 0),
(6, 3, '', '', '', 0, 0),
(7, 4, 'uploads/quiz/2022/03/image_370_6220cc16e016c.jpg', 'local', 'Jupiter', 0, 0),
(8, 4, 'uploads/quiz/2022/03/image_370_6220cc2a8bb87.jpg', 'local', 'Saturn', 0, 0),
(9, 4, 'uploads/quiz/2022/03/image_370_6220cc3f6a45f.jpg', 'local', 'Venus', 0, 0),
(10, 5, '', '', '', 0, 0),
(11, 5, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_images`
--

CREATE TABLE `quiz_images` (
  `id` int(11) NOT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `image_mime` varchar(20) DEFAULT 'jpg',
  `storage` varchar(20) DEFAULT 'local',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_images`
--

INSERT INTO `quiz_images` (`id`, `image_default`, `image_small`, `file_name`, `image_mime`, `storage`, `user_id`) VALUES
(1, 'uploads/quiz/2022/03/image_750x_6220ca405a440.jpg', 'uploads/quiz/2022/03/image_370_6220ca406d3c7.jpg', 'image_750x_60d8eb2d3729c.jpg', 'jpg', 'local', 1),
(2, 'uploads/quiz/2022/03/image_750x_6220ca70a1d96.jpg', 'uploads/quiz/2022/03/image_370_6220ca70b0855.jpg', 'image_750x_60d8eb3e7bbe6.jpg', 'jpg', 'local', 1),
(3, 'uploads/quiz/2022/03/image_750x_6220cadfa15db.jpg', 'uploads/quiz/2022/03/image_370_6220cadfb2cb0.jpg', 'image_750x_60d8eb36116e5.jpg', 'jpg', 'local', 1),
(4, 'uploads/quiz/2022/03/image_750x_6220cbb6939bc.jpg', 'uploads/quiz/2022/03/image_370_6220cbb6a30e3.jpg', 'image_750x_60d8e89b38be3.jpg', 'jpg', 'local', 1),
(5, 'uploads/quiz/2022/03/image_750x_6220cc16d407c.jpg', 'uploads/quiz/2022/03/image_370_6220cc16e016c.jpg', 'image_370_60d8c2d5145f0.jpg', 'jpg', 'local', 1),
(6, 'uploads/quiz/2022/03/image_750x_6220cc2a7bcc9.jpg', 'uploads/quiz/2022/03/image_370_6220cc2a8bb87.jpg', 'image_370_60d8c2d8a3d92.jpg', 'jpg', 'local', 1),
(7, 'uploads/quiz/2022/03/image_750x_6220cc3f5ea30.jpg', 'uploads/quiz/2022/03/image_370_6220cc3f6a45f.jpg', 'image_370_60d8c2d9f2c7d.jpg', 'jpg', 'local', 1),
(8, 'uploads/quiz/2022/03/image_750x_6220ccd8ac57a.jpg', 'uploads/quiz/2022/03/image_370_6220ccd8b8b18.jpg', 'image_750x_60d8c038a5c00.jpg', 'jpg', 'local', 1),
(9, 'uploads/quiz/2022/03/image_750x_6220cd1450155.jpg', 'uploads/quiz/2022/03/image_370_6220cd145c2ce.jpg', 'image_750x_60d8c03658ead.jpg', 'jpg', 'local', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `image_storage` varchar(20) DEFAULT 'local',
  `description` text,
  `question_order` int(11) DEFAULT '1',
  `answer_format` varchar(30) DEFAULT 'small_image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `post_id`, `question`, `image_path`, `image_storage`, `description`, `question_order`, `answer_format`) VALUES
(1, 13, 'What would you do if you were fired from your favorite job?', 'uploads/quiz/2022/03/image_750x_6220cadfa15db.jpg', 'local', '', 1, 'small_image'),
(2, 14, 'What is the name of this ancient city carved into sandstone?', 'uploads/quiz/2022/03/image_750x_6220cbb6939bc.jpg', 'local', '', 1, 'small_image'),
(3, 15, 'Which of the following is the largest planet in the solar system?', '', '', '', 1, 'small_image'),
(4, 15, '', '', '', '', 2, 'small_image'),
(5, 16, '', '', '', '', 1, 'small_image');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `result_title` varchar(500) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `image_storage` varchar(20) DEFAULT 'local',
  `description` text,
  `min_correct_count` mediumint(9) DEFAULT NULL,
  `max_correct_count` mediumint(9) DEFAULT NULL,
  `result_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`id`, `post_id`, `result_title`, `image_path`, `image_storage`, `description`, `min_correct_count`, `max_correct_count`, `result_order`) VALUES
(1, 13, 'You are logical!', 'uploads/quiz/2022/03/image_750x_6220ca405a440.jpg', 'local', '<p><span>In laoreet ante lorem, rhoncus molestie mauris vulputate ut. Donec tincidunt eros risus, sed maximus ipsum scelerisque ac. Praesent malesuada, risus id laoreet dapibus, mi turpis fringilla tellus, sit amet pretium erat turpis in diam. Proin congue maximus ipsum. Cras sit amet tincidunt est. Donec semper, eros at sollicitudin maximus, mi orci feugiat odio, vestibulum rhoncus felis purus eu quam. Sed malesuada sem ac leo ullamcorper vulputate. Vivamus sed eros vel nisl posuere finibus. Nam elementum elit dolor, a egestas nisl accumsan et.</span></p>', 0, 0, 1),
(2, 13, 'You are emotional!', 'uploads/quiz/2022/03/image_750x_6220ca70a1d96.jpg', 'local', '<p><span>Sed eget sapien at nisl feugiat dictum quis at lorem. Nullam lobortis porttitor justo. Aenean bibendum leo mi, sit amet suscipit orci pretium quis. Phasellus eu urna eu lectus fermentum pellentesque. Maecenas ac sapien eu quam dictum egestas quis non tortor. Nullam facilisis sodales efficitur. In malesuada nulla a imperdiet congue. Vivamus sollicitudin mauris vel dolor lacinia, at elementum sapien aliquam. Suspendisse potenti. Mauris vehicula augue sed nunc euismod cursus.</span></p>', 0, 0, 2),
(3, 16, 'The Competitor', 'uploads/quiz/2022/03/image_750x_6220ccd8ac57a.jpg', 'local', '<p>You love all forms of competition, has fun keeping score.</p>', 0, 0, 1),
(4, 16, 'The Explorer', 'uploads/quiz/2022/03/image_750x_6220cd1450155.jpg', 'local', '<p>You are going to new places, meet new people, seeks out new experiences (physically or mentally).</p>', 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `re_like` int(11) DEFAULT '0',
  `re_dislike` int(11) DEFAULT '0',
  `re_love` int(11) DEFAULT '0',
  `re_funny` int(11) DEFAULT '0',
  `re_angry` int(11) DEFAULT '0',
  `re_sad` int(11) DEFAULT '0',
  `re_wow` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reactions`
--

INSERT INTO `reactions` (`id`, `post_id`, `re_like`, `re_dislike`, `re_love`, `re_funny`, `re_angry`, `re_sad`, `re_wow`) VALUES
(1, 4, 0, 0, 0, 0, 0, 0, 0),
(2, 6, 0, 0, 0, 0, 0, 0, 0),
(3, 9, 0, 0, 0, 0, 0, 0, 0),
(4, 7, 0, 0, 0, 0, 0, 0, 0),
(5, 3, 0, 0, 0, 0, 0, 0, 0),
(6, 5, 0, 0, 0, 0, 0, 0, 0),
(7, 1, 0, 0, 0, 0, 0, 0, 0),
(8, 10, 0, 0, 0, 0, 0, 0, 0),
(9, 2, 0, 0, 0, 0, 0, 0, 0),
(10, 14, 0, 0, 0, 0, 0, 0, 0),
(11, 15, 0, 0, 0, 0, 0, 0, 0),
(12, 8, 0, 0, 0, 0, 0, 0, 0),
(13, 11, 0, 0, 0, 0, 0, 0, 0),
(14, 25, 0, 0, 0, 0, 0, 0, 0),
(15, 26, 0, 0, 0, 0, 0, 0, 0),
(16, 24, 0, 0, 0, 0, 0, 0, 0),
(17, 20, 0, 0, 0, 0, 0, 0, 0),
(18, 16, 0, 0, 0, 0, 0, 0, 0),
(19, 12, 0, 0, 0, 0, 0, 0, 0),
(20, 13, 0, 0, 0, 0, 0, 0, 0),
(21, 17, 0, 0, 0, 0, 0, 0, 0),
(22, 27, 0, 0, 0, 0, 0, 0, 0),
(23, 21, 0, 0, 0, 0, 0, 0, 0),
(24, 23, 0, 1, 0, 0, 0, 0, 0),
(25, 22, 0, 0, 0, 0, 0, 0, 0),
(26, 93, 0, 0, 0, 0, 0, 0, 0),
(27, 92, 0, 0, 0, 0, 0, 0, 0),
(28, 35, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reading_lists`
--

CREATE TABLE `reading_lists` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reading_lists`
--

INSERT INTO `reading_lists` (`id`, `post_id`, `user_id`, `created_at`) VALUES
(1, 23, 5, '2022-04-03 04:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `admin_panel` tinyint(1) DEFAULT NULL,
  `add_post` tinyint(1) DEFAULT NULL,
  `add_classified_ad` tinyint(1) DEFAULT NULL,
  `classified_categories` tinyint(1) DEFAULT NULL,
  `manage_all_posts` tinyint(1) DEFAULT NULL,
  `manage_all_ads` int(11) NOT NULL,
  `navigation` tinyint(1) DEFAULT NULL,
  `pages` tinyint(1) DEFAULT NULL,
  `rss_feeds` tinyint(1) DEFAULT NULL,
  `categories` tinyint(1) DEFAULT NULL,
  `widgets` tinyint(1) DEFAULT NULL,
  `polls` tinyint(1) DEFAULT NULL,
  `gallery` tinyint(1) DEFAULT NULL,
  `comments_contact` tinyint(1) DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `ad_spaces` tinyint(1) DEFAULT NULL,
  `users` tinyint(1) DEFAULT NULL,
  `seo_tools` tinyint(1) DEFAULT NULL,
  `settings` tinyint(1) DEFAULT NULL,
  `reward_system` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role`, `role_name`, `admin_panel`, `add_post`, `add_classified_ad`, `classified_categories`, `manage_all_posts`, `manage_all_ads`, `navigation`, `pages`, `rss_feeds`, `categories`, `widgets`, `polls`, `gallery`, `comments_contact`, `newsletter`, `ad_spaces`, `users`, `seo_tools`, `settings`, `reward_system`) VALUES
(1, 'admin', 'Admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'moderator', 'Moderator', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(3, 'author', 'Author', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'user', 'User', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `admin` varchar(100) DEFAULT 'admin',
  `profile` varchar(100) DEFAULT 'profile',
  `tag` varchar(100) DEFAULT 'tag',
  `classified_ad` varchar(100) DEFAULT 'classified-ad',
  `adcategory` varchar(100) DEFAULT 'adcategory',
  `reading_list` varchar(100) DEFAULT 'reading-list',
  `settings` varchar(100) DEFAULT 'settings',
  `social_accounts` varchar(100) DEFAULT 'social-accounts',
  `preferences` varchar(100) DEFAULT 'preferences',
  `visual_settings` varchar(100) DEFAULT 'visual-settings',
  `change_password` varchar(100) DEFAULT 'change-password',
  `forgot_password` varchar(100) DEFAULT 'forgot-password',
  `reset_password` varchar(100) DEFAULT 'reset-password',
  `delete_account` varchar(100) DEFAULT 'delete-account',
  `register` varchar(100) DEFAULT 'register',
  `posts` varchar(100) DEFAULT 'posts',
  `search` varchar(100) DEFAULT 'search',
  `rss_feeds` varchar(100) DEFAULT 'rss-feeds',
  `gallery_album` varchar(100) DEFAULT 'gallery-album',
  `earnings` varchar(100) DEFAULT 'earnings',
  `payouts` varchar(100) DEFAULT 'payouts',
  `set_payout_account` varchar(100) DEFAULT 'set-payout-account',
  `logout` varchar(100) DEFAULT 'logout'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `admin`, `profile`, `tag`, `classified_ad`, `adcategory`, `reading_list`, `settings`, `social_accounts`, `preferences`, `visual_settings`, `change_password`, `forgot_password`, `reset_password`, `delete_account`, `register`, `posts`, `search`, `rss_feeds`, `gallery_album`, `earnings`, `payouts`, `set_payout_account`, `logout`) VALUES
(1, 'admin', 'profile', 'tag', 'classified-ad', 'adcategory', 'reading-list', 'settings', 'social-accounts', 'preferences', 'visual-settings', 'change-password', 'forgot-password', 'reset-password', 'delete-account', 'register', 'posts', 'search', 'rss-feeds', 'gallery-album', 'earnings', 'payouts', 'set-payout-account', 'logout');

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `feed_name` varchar(500) DEFAULT NULL,
  `feed_url` varchar(1000) DEFAULT NULL,
  `post_limit` smallint(6) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image_saving_method` varchar(30) DEFAULT 'url',
  `auto_update` tinyint(1) DEFAULT '1',
  `read_more_button` tinyint(1) DEFAULT '1',
  `read_more_button_text` varchar(255) DEFAULT 'Read More',
  `user_id` int(11) DEFAULT NULL,
  `add_posts_as_draft` tinyint(1) DEFAULT '0',
  `is_cron_updated` tinyint(1) DEFAULT '0',
  `generate_keywords_from_title` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '1',
  `site_title` varchar(255) DEFAULT NULL,
  `home_title` varchar(255) DEFAULT 'Index',
  `site_description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `application_name` varchar(255) DEFAULT NULL,
  `primary_font` smallint(6) DEFAULT '19',
  `secondary_font` smallint(6) DEFAULT '25',
  `tertiary_font` smallint(6) DEFAULT '32',
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `telegram_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `optional_url_button_name` varchar(500) DEFAULT 'Click Here To See More',
  `about_footer` varchar(1000) DEFAULT NULL,
  `contact_text` text,
  `contact_address` varchar(500) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `copyright` varchar(500) DEFAULT NULL,
  `cookies_warning` tinyint(1) DEFAULT '0',
  `cookies_warning_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `lang_id`, `site_title`, `home_title`, `site_description`, `keywords`, `application_name`, `primary_font`, `secondary_font`, `tertiary_font`, `facebook_url`, `twitter_url`, `instagram_url`, `pinterest_url`, `linkedin_url`, `vk_url`, `telegram_url`, `youtube_url`, `optional_url_button_name`, `about_footer`, `contact_text`, `contact_address`, `contact_email`, `contact_phone`, `copyright`, `cookies_warning`, `cookies_warning_text`) VALUES
(1, 1, 'Saint Denis Info', 'Index', 'Saint Denis Info Index Page', 'index, home, saintdenisinfo', 'SaintDenisInfo', 19, 25, 32, '', '', '', '', '', '', '', '', 'Click Here To See More', '', '', '', '', '', 'Copyright 2022 SaintDenisInfo - All Rights Reserved.', 0, '<p>This site uses cookies. By continuing to browse the site you are agreeing to our use of cookies.</p>'),
(2, 2, 'Saint Denis Info', 'Index', 'Saint Denis Info', 'index, home, saintdenisinfo', 'SaintDenisInfo', 19, 25, 32, '', '', '', '', '', '', '', '', 'Click Here To See More', '', '', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'tazasaintdenis@hotmail.fr', NULL, '2022-03-23 08:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `post_id`, `tag`, `tag_slug`) VALUES
(1, 5, 'actual', 'actual'),
(2, 5, 'teaching', 'teaching'),
(3, 5, 'explorer', 'explorer'),
(8, 8, 'pursues', 'pursues'),
(9, 8, 'obtain', 'obtain'),
(10, 8, 'itself', 'itself'),
(20, 9, 'incommode', 'incommode'),
(21, 9, 'existence', 'existence'),
(22, 9, 'convinced', 'convinced'),
(23, 7, 'quitting', 'quitting'),
(24, 7, 'declared', 'declared'),
(25, 10, 'style', 'style'),
(26, 10, 'never', 'never'),
(27, 10, 'among', 'among'),
(28, 11, 'departure', 'departure'),
(29, 11, 'believing', 'believing'),
(30, 11, 'ourselves', 'ourselves'),
(34, 6, 'believe', 'believe'),
(35, 6, 'hearted', 'hearted'),
(36, 12, 'perceived', 'perceived'),
(37, 12, 'admitting', 'admitting'),
(38, 12, 'promotion', 'promotion'),
(39, 13, 'logical', 'logical'),
(40, 13, 'emotional', 'emotional'),
(41, 14, 'places', 'places'),
(42, 14, 'world', 'world'),
(43, 15, 'solar system', 'solar-system'),
(44, 15, 'quiz', 'quiz'),
(45, 16, 'personality', 'personality'),
(46, 16, 'quiz', 'quiz'),
(47, 17, 'breakfast', 'breakfast'),
(48, 17, 'listening', 'listening'),
(49, 17, 'offending', 'offending'),
(50, 18, 'stream', 'stream'),
(51, 18, 'water', 'water'),
(52, 18, 'video', 'video'),
(53, 19, 'sunset', 'sunset'),
(54, 19, 'during', 'during'),
(55, 19, 'sailing', 'sailing'),
(56, 19, 'video', 'video'),
(57, 20, 'boat', 'boat'),
(58, 20, 'river', 'river'),
(59, 20, 'view', 'view'),
(60, 21, 'continuing', 'continuing'),
(61, 21, 'frequently', 'frequently'),
(62, 21, 'stimulated', 'stimulated'),
(63, 22, 'design', 'design'),
(64, 22, 'entire', 'entire'),
(65, 23, 'pursues', 'pursues'),
(66, 23, 'obtain', 'obtain'),
(67, 24, 'weakness', 'weakness'),
(68, 24, 'shrinking', 'shrinking'),
(69, 24, 'saying', 'saying'),
(70, 25, 'moment', 'moment'),
(71, 25, 'pleasure', 'pleasure'),
(72, 26, 'extremity', 'extremity'),
(73, 26, 'something', 'something'),
(74, 27, 'cottage', 'cottage'),
(75, 27, 'esteems', 'esteems'),
(76, 27, 'post', 'post');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT 'name@domain.com',
  `email_status` tinyint(1) DEFAULT '0',
  `phone` varchar(100) DEFAULT NULL,
  `phone_status` varchar(100) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(100) DEFAULT 'user',
  `user_type` varchar(50) DEFAULT 'registered',
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `vk_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `about_me` varchar(5000) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `telegram_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `show_email_on_profile` tinyint(1) DEFAULT '1',
  `show_rss_feeds` tinyint(1) DEFAULT '1',
  `reward_system_enabled` tinyint(1) DEFAULT '0',
  `balance` double DEFAULT '0',
  `total_pageviews` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `email`, `email_status`, `phone`, `phone_status`, `token`, `password`, `role`, `user_type`, `google_id`, `facebook_id`, `vk_id`, `avatar`, `status`, `about_me`, `facebook_url`, `twitter_url`, `instagram_url`, `pinterest_url`, `linkedin_url`, `vk_url`, `telegram_url`, `youtube_url`, `last_seen`, `show_email_on_profile`, `show_rss_feeds`, `reward_system_enabled`, `balance`, `total_pageviews`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 1, '+991231232', '1', '617c35e3254ac9-93402286-83660036', '$2a$08$AunoljMdR/cg6rGFCdxyueKKIy0wWoPtgGpU2moffMVi2jgwx4ipu', 'admin', 'registered', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-14 17:09:07', 1, 1, 0, 0, 0, '2021-10-29 17:56:51'),
(2, 'Abdel', 'abdel', 'tazasaintdenis@hotmail.fr', 0, '+991231232', '1', '621fa0e8e3d5c3-47905185-41383135', '$2a$08$93zaBwWzl7IaR2fNoPD6.OeUZHMJVw.tbqaNwIZi4ggAOEq6BA9US', 'user', 'registered', NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-03 23:37:52', 1, 1, 0, 0, 0, '2022-03-03 04:52:56'),
(3, 'Abderrazak Ed-douib', 'abderrazak-ed-douib', 'abderrazak.eddouib@gmail.com', 1, '+991231232', '1', '6241b6fe8d12c8-30908338-73182243', NULL, 'user', 'google', '100393994419127516302', NULL, NULL, 'uploads/profile/avatar_0_6241b6febe238.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-29 04:44:24', 1, 1, 0, 0, 0, '2022-03-29 00:24:14'),
(4, 'Toz', 'Toz-toz', 'tazasaintdenis@gmail.com', 1, '+991231232', '1', '6241f5b64c5289-90014716-97528911', NULL, 'user', 'google', '108230437745577827860', NULL, NULL, 'uploads/profile/avatar_4_6241f607e7a02.jpg', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 22:59:41', 1, 1, 0, 0, 0, '2022-03-29 04:51:50'),
(5, 'Ridham Developer', 'ridham-developer', 'itridham.developer@gmail.com', 1, '+991231232', '1', '624831bd364394-64620624-99209193', NULL, 'user', 'google', '112002329475642768229', NULL, NULL, 'uploads/profile/avatar_0_624831bd68702.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-03 05:48:23', 1, 1, 0, 0, 0, '2022-04-02 22:21:33'),
(6, 'tictoc', 'tictoc', 'mehdi94300@hotmail.fr', 0, NULL, NULL, '62541495a03156-22106541-87866475', '$2a$08$CGttidXaCG0wkAd.jL2.sux7/DXs2LC3HWueiDzVpG9A7LHmaWVUO', 'user', 'registered', NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-13 10:54:41', 1, 1, 0, 0, 0, '2022-04-11 22:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_payout_accounts`
--

CREATE TABLE `user_payout_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payout_paypal_email` varchar(255) DEFAULT NULL,
  `iban_full_name` varchar(255) DEFAULT NULL,
  `iban_country` varchar(100) DEFAULT NULL,
  `iban_bank_name` varchar(255) DEFAULT NULL,
  `iban_number` varchar(500) DEFAULT NULL,
  `swift_full_name` varchar(255) DEFAULT NULL,
  `swift_address` varchar(500) DEFAULT NULL,
  `swift_state` varchar(255) DEFAULT NULL,
  `swift_city` varchar(255) DEFAULT NULL,
  `swift_postcode` varchar(100) DEFAULT NULL,
  `swift_country` varchar(100) DEFAULT NULL,
  `swift_bank_account_holder_name` varchar(255) DEFAULT NULL,
  `swift_iban` varchar(255) DEFAULT NULL,
  `swift_code` varchar(255) DEFAULT NULL,
  `swift_bank_name` varchar(255) DEFAULT NULL,
  `swift_bank_branch_city` varchar(255) DEFAULT NULL,
  `swift_bank_branch_country` varchar(100) DEFAULT NULL,
  `default_payout_account` varchar(30) NOT NULL DEFAULT 'paypal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `user_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_name`, `video_path`, `storage`, `user_id`) VALUES
(1, 'video_5be303b67457e.mp4', 'uploads/videos/2022/03/video_5be303b67457e.mp4', 'local', 1),
(2, 'video_5be3005b109f4.mp4', 'uploads/videos/2022/03/video_5be3005b109f4.mp4', 'local', 1),
(3, 'img_5938.mp4', 'uploads/videos/2022/03/img_5938.mp4', 'local', 4);

-- --------------------------------------------------------

--
-- Table structure for table `visual_settings`
--

CREATE TABLE `visual_settings` (
  `id` int(11) NOT NULL,
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `post_list_style` varchar(100) NOT NULL DEFAULT 'vertical',
  `site_color` varchar(100) DEFAULT '#1abc9c',
  `site_block_color` varchar(100) DEFAULT '#161616',
  `logo` varchar(255) DEFAULT NULL,
  `logo_footer` varchar(255) DEFAULT NULL,
  `logo_email` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visual_settings`
--

INSERT INTO `visual_settings` (`id`, `dark_mode`, `post_list_style`, `site_color`, `site_block_color`, `logo`, `logo_footer`, `logo_email`, `favicon`) VALUES
(1, 0, 'vertical', '#26a7df', '#9d1f62', 'uploads/logo/logo_623c9db7304ad.png', 'uploads/logo/logo_623ca2d32719e.png', NULL, 'uploads/logo/logo_623ca3866f972.png');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `type` varchar(100) DEFAULT NULL,
  `widget_order` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `is_custom` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `lang_id`, `title`, `content`, `type`, `widget_order`, `visibility`, `is_custom`, `created_at`) VALUES
(1, 1, 'Follow Us', NULL, 'follow-us', 2, 1, 0, '2020-02-18 12:54:39'),
(2, 1, 'Popular Posts', NULL, 'popular-posts', 1, 1, 0, '2020-02-18 12:54:39'),
(3, 1, 'Recommended Posts', NULL, 'recommended-posts', 3, 1, 0, '2020-02-18 12:54:39'),
(4, 1, 'Random Posts', NULL, 'random-slider-posts', 4, 1, 0, '2020-02-18 12:54:39'),
(5, 1, 'Tags', NULL, 'tags', 5, 1, 0, '2020-02-18 12:54:39'),
(6, 1, 'Voting Poll', NULL, 'poll', 6, 1, 0, '2020-02-18 12:54:39'),
(7, 2, 'Follow Us', '', 'follow-us', 1, 1, 0, '2022-04-06 03:53:48'),
(8, 2, 'Popular Posts', '', 'popular-posts', 2, 1, 0, '2022-04-06 03:53:48'),
(9, 2, 'Recommended Posts', '', 'recommended-posts', 3, 1, 0, '2022-04-06 03:53:48'),
(10, 2, 'Random Posts', '', 'random-slider-posts', 4, 1, 0, '2022-04-06 03:53:48'),
(11, 2, 'Tags', '', 'tags', 5, 1, 0, '2022-04-06 03:53:48'),
(12, 2, 'Voting Poll', '', 'poll', 6, 1, 0, '2022-04-06 03:53:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adcategories`
--
ALTER TABLE `adcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adtags`
--
ALTER TABLE `adtags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`ad_id`);

--
-- Indexes for table `ad_pageviews_month`
--
ALTER TABLE `ad_pageviews_month`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `ad_pageviews_week`
--
ALTER TABLE `ad_pageviews_week`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `ad_spaces`
--
ALTER TABLE `ad_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `classifieds`
--
ALTER TABLE `classifieds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_is_featured` (`is_featured`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_lang_id` (`lang_id`),
  ADD KEY `idx_visibility` (`visibility`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `classified_comments`
--
ALTER TABLE `classified_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `classified_images`
--
ALTER TABLE `classified_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classified_inquiries`
--
ALTER TABLE `classified_inquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_id` (`parent_id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_translations`
--
ALTER TABLE `language_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lang_id` (`lang_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_is_slider` (`is_slider`),
  ADD KEY `idx_is_featured` (`is_featured`),
  ADD KEY `idx_is_recommended` (`is_recommended`),
  ADD KEY `idx_is_breaking` (`is_breaking`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_lang_id` (`lang_id`),
  ADD KEY `idx_is_scheduled` (`is_scheduled`),
  ADD KEY `idx_visibility` (`visibility`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `post_audios`
--
ALTER TABLE `post_audios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_files`
--
ALTER TABLE `post_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_gallery_items`
--
ALTER TABLE `post_gallery_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_pageviews_month`
--
ALTER TABLE `post_pageviews_month`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `post_pageviews_week`
--
ALTER TABLE `post_pageviews_week`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `post_sorted_list_items`
--
ALTER TABLE `post_sorted_list_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_images`
--
ALTER TABLE `quiz_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reading_lists`
--
ALTER TABLE `reading_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_payout_accounts`
--
ALTER TABLE `user_payout_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visual_settings`
--
ALTER TABLE `visual_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adcategories`
--
ALTER TABLE `adcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `adtags`
--
ALTER TABLE `adtags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `ad_pageviews_month`
--
ALTER TABLE `ad_pageviews_month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ad_pageviews_week`
--
ALTER TABLE `ad_pageviews_week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ad_spaces`
--
ALTER TABLE `ad_spaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `audios`
--
ALTER TABLE `audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `classifieds`
--
ALTER TABLE `classifieds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `classified_comments`
--
ALTER TABLE `classified_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `classified_images`
--
ALTER TABLE `classified_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classified_inquiries`
--
ALTER TABLE `classified_inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_translations`
--
ALTER TABLE `language_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1707;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_votes`
--
ALTER TABLE `poll_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `post_audios`
--
ALTER TABLE `post_audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_files`
--
ALTER TABLE `post_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_gallery_items`
--
ALTER TABLE `post_gallery_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_pageviews_month`
--
ALTER TABLE `post_pageviews_month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `post_pageviews_week`
--
ALTER TABLE `post_pageviews_week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `post_sorted_list_items`
--
ALTER TABLE `post_sorted_list_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz_images`
--
ALTER TABLE `quiz_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reading_lists`
--
ALTER TABLE `reading_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_payout_accounts`
--
ALTER TABLE `user_payout_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visual_settings`
--
ALTER TABLE `visual_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
