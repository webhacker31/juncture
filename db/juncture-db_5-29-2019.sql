-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 02:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `juncture`
--

-- --------------------------------------------------------

--
-- Table structure for table `j_users`
--

CREATE TABLE `j_users` (
  `user_id` int(6) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_users`
--

INSERT INTO `j_users` (`user_id`) VALUES
(000001),
(000002),
(000003),
(000004),
(000005),
(000006),
(000007),
(000008),
(000009),
(000010),
(000011),
(000012),
(000013),
(000014),
(000015);

-- --------------------------------------------------------

--
-- Table structure for table `j_users_earnings`
--

CREATE TABLE `j_users_earnings` (
  `earning_id` int(11) NOT NULL,
  `withdrawal_id` int(11) NOT NULL,
  `user_info_id` varchar(6) NOT NULL,
  `earning_pair_left` text NOT NULL,
  `earning_pair_right` text NOT NULL,
  `earning_type` text NOT NULL,
  `earning_amount` text NOT NULL,
  `earning_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_users_earnings`
--

INSERT INTO `j_users_earnings` (`earning_id`, `withdrawal_id`, `user_info_id`, `earning_pair_left`, `earning_pair_right`, `earning_type`, `earning_amount`, `earning_date`) VALUES
(4, 2, '000001', '000002', '000003', 'Pairing', '500', '2019-06-01 08:26:22'),
(5, 2, '000001', '000004', '000007', 'Pairing', '500', '2019-06-01 08:26:22'),
(6, 2, '000001', '000005', '000010', 'Pairing', '500', '2019-06-01 08:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `j_users_info`
--

CREATE TABLE `j_users_info` (
  `user_info_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_upline_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_position` text NOT NULL,
  `user_dl_left_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_dl_right_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_authentication_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_users_info`
--

INSERT INTO `j_users_info` (`user_info_id`, `user_username`, `user_password`, `user_role`, `user_upline_id`, `user_position`, `user_dl_left_id`, `user_dl_right_id`, `user_authentication_code`) VALUES
('000001', 'firstuser', 'firstuser', 'REGULAR', '', '', '000002', '000003', ''),
('000002', 'dev1', 'dev1', 'ADMIN', '000001', '', '000004', '', ''),
('000003', 'regular', 'regular', 'REGULAR', '000002', '', '000006', '000007', ''),
('000004', 'ERT', 'ERT', 'REGULAR', '000000', '', '000005', '', ''),
('000005', 'RTY', 'RTY', 'REGULAR', '000001', '', '', '000010', ''),
('000006', 'ZXC', 'ZXC', 'REGULAR', '000002', '', '000011', '000012', ''),
('000007', 'ASD', 'ASD', 'REGULAR', '000000', '', '', '', ''),
('000008', 'ZABATENINO', '1234', 'REGULAR', '000007', '', '000015', '', 'Lj3nPfNWLK'),
('000009', 'SAMPLEANOTHER', '1234', 'REGULAR', '000005', 'Left', '', '', 'nvXKEbvqnS'),
('000010', 'ANOTHERSAMPLE', '1234', 'REGULAR', '000005', 'user_dl_right_id', '000014', '', '1IbGoxx9n2'),
('000011', 'WHOYOU', '1234', 'REGULAR', '000006', 'LEFT', '', '', 'tBYTrmHVLE'),
('000012', 'HEARME', '123454567', 'REGULAR', '000006', 'RIGHT', '', '', 'LPoxvV7XJn'),
('000013', 'HELLOISTHIS', '1234', 'REGULAR', '000008', 'LEFT', '', '', 'smZp9fVJhp'),
('000014', 'FIRSTNAMELASTNAME', '1234', 'REGULAR', '000010', 'LEFT', '', '', 'kiH7SGHJb9'),
('000015', 'QWE', '123', 'REGULAR', '000008', 'LEFT', '', '', 'Ni18CMB6Ll');

-- --------------------------------------------------------

--
-- Table structure for table `j_users_transactions`
--

CREATE TABLE `j_users_transactions` (
  `transaction_id` int(11) NOT NULL,
  `withdrawal_id` int(11) NOT NULL,
  `user_info_id` varchar(6) NOT NULL,
  `transaction_amount` text NOT NULL,
  `transaction_type` text NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_users_transactions`
--

INSERT INTO `j_users_transactions` (`transaction_id`, `withdrawal_id`, `user_info_id`, `transaction_amount`, `transaction_type`, `transaction_date`) VALUES
(1, 2, '000001', '1020', 'WITHDRAWAL', '2019-06-02 00:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `j_users_withdrawal_status`
--

CREATE TABLE `j_users_withdrawal_status` (
  `withdrawal_id` int(11) NOT NULL,
  `user_info_id` varchar(6) NOT NULL,
  `withdrawal_amount` int(11) NOT NULL,
  `withdrawal_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `withdrawal_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_users_withdrawal_status`
--

INSERT INTO `j_users_withdrawal_status` (`withdrawal_id`, `user_info_id`, `withdrawal_amount`, `withdrawal_time`, `withdrawal_status`) VALUES
(2, '000001', 1020, '2019-06-02 00:44:13', 'APPROVED');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-04-07 13:31:55', '2019-04-07 13:31:55', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/juncture', 'yes'),
(2, 'home', 'http://localhost/juncture', 'yes'),
(3, 'blogname', 'Juncture', 'yes'),
(4, 'blogdescription', 'Health and Wellness', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ninojoevelz@yahoo.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=99&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'twentynineteen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '99', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1559465824;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1559482319;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1559482340;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559482344;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1554647389;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1559442740;s:15:\"version_checked\";s:5:\"5.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Twenty Nineteen Child', 'yes'),
(141, 'theme_mods_twentynineteen-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(166, 'WPLANG', '', 'yes'),
(167, 'new_admin_email', 'ninojoevelz@yahoo.com', 'yes'),
(223, 'recently_activated', 'a:0:{}', 'yes'),
(224, 'sm_session_db_version', '0.2', 'no'),
(420, 'w3tc_state', '{\"common.install\":1557467766,\"license.status\":\"no_key\",\"license.next_check\":1557899766,\"license.terms\":\"\",\"license.community_terms\":\"accept\"}', 'no'),
(423, 'w3tc_generic_widgetservices', '{\"content\":{\"items\":[{\"name\":\"Premium Support Response (Usually <1h First Response)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Premium Support Response (Usually <1h First Response)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Plugin Configuration\",\"parameter_name\":\"field4\",\"parameter_value\":\"Plugin Configuration\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"SSL Performance Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"SSL Performance Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Full Site Delivery Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"Full Site Delivery Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Hosting Environment Troubleshooting\",\"parameter_name\":\"field4\",\"parameter_value\":\"Hosting Environment Troubleshooting\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Monitoring\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Monitoring\",\"form_hash\":\"m5pom8z0qy59rm\"}],\"ui_strings\":{\"cdn.maxcdn.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.maxcdn.signUpAndSave.description\":\"MaxCDN is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"cdn.stackpath.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now and save!\",\"cdn.stackpath2.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath2.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"minify.general.header\":\"Reduce load time by decreasing the size and number of <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym> and <acronym title=\'JavaScript\'>JS<\\/acronym> files. Automatically remove unncessary data from <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym>, <acronym title=\'JavaScript\'>JS<\\/acronym>, feed, page and post <acronym title=\'Hypertext Markup Language\'>HTML<\\/acronym>.\",\"newrelic.general.header\":\"New Relic may not be installed or not active on this server. <a href=\'%s\' target=\'_blank\'>Sign up for a (free) account<\\/a>. Visit <a href=\'%s\' target=\'_blank\'>New Relic<\\/a> for installation instructions.\",\"reverseproxy.general.header\":\"A reverse proxy adds scale to an server by handling requests before WordPress does. Purge settings are set on the <a href=\'%s\'>Page Cache settings<\\/a> page and <a href=\'%s\'>Browser Cache settings<\\/a> are set on the browser cache settings page.\",\"cdnfsd.general.header\":\"Host the entire website with your compatible <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> provider to reduce page load time.\",\"cdn.general.header\":\"Host static files with your <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> to reduce page load time.\",\"cdn.stackpath.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.works_magically\":\"StackPath works magically with W3 Total Cache.\",\"cdn.stackpath.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\",\"cdn.stackpath2.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\"}},\"expires\":1558167080}', 'no'),
(653, '_site_transient_timeout_browser_fd1885f00291b83c2cb49a9bbb9a909a', '1559558233', 'no'),
(654, '_site_transient_browser_fd1885f00291b83c2cb49a9bbb9a909a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.169\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(655, '_site_transient_timeout_php_check_b210b8aa09c12dbcb4a182813622790b', '1559558234', 'no'),
(656, '_site_transient_php_check_b210b8aa09c12dbcb4a182813622790b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(677, 'acf_version', '5.8.0', 'yes'),
(727, '_transient_user_id_', '', 'yes'),
(742, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1559438296', 'no'),
(743, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2019.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2019-06-20 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Berlin, Germany\";s:7:\"country\";s:2:\"DE\";s:8:\"latitude\";d:52.50697;s:9:\"longitude\";d:13.2843064;}}}}', 'no'),
(777, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1559442756;s:7:\"checked\";a:4:{s:20:\"twentynineteen-child\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.3\";s:15:\"twentyseventeen\";s:3:\"2.1\";s:13:\"twentysixteen\";s:3:\"1.9\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(778, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1559442755;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:33:\"w3-total-cache/w3-total-cache.php\";s:7:\"0.9.7.4\";s:41:\"wp-session-manager/wp-session-manager.php\";s:5:\"4.2.0\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"w3-total-cache/w3-total-cache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/w3-total-cache\";s:4:\"slug\";s:14:\"w3-total-cache\";s:6:\"plugin\";s:33:\"w3-total-cache/w3-total-cache.php\";s:11:\"new_version\";s:7:\"0.9.7.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/w3-total-cache/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/w3-total-cache.0.9.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806\";s:2:\"1x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-128x128.png?rev=1041806\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wp-session-manager/wp-session-manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wp-session-manager\";s:4:\"slug\";s:18:\"wp-session-manager\";s:6:\"plugin\";s:41:\"wp-session-manager/wp-session-manager.php\";s:11:\"new_version\";s:5:\"4.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-session-manager/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wp-session-manager.4.2.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:69:\"https://s.w.org/plugins/geopattern-icon/wp-session-manager_272e38.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wp-session-manager/assets/banner-772x250.png?rev=632899\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(780, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1559478463', 'no'),
(781, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10000 milliseconds</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 bytes received</p></div>', 'no'),
(785, '_site_transient_timeout_theme_roots', '1559444555', 'no'),
(786, '_site_transient_theme_roots', 'a:4:{s:20:\"twentynineteen-child\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(797, '_transient_user_id_000002', '000002', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(11, 9, '_edit_lock', '1559375214:1'),
(12, 9, '_wp_page_template', 'template/home.php'),
(13, 11, '_edit_lock', '1557550768:1'),
(14, 11, '_wp_page_template', 'template/dashboard.php'),
(17, 89, '_edit_lock', '1554718519:1'),
(18, 89, '_wp_page_template', 'template/_404.php'),
(19, 93, '_edit_lock', '1554719022:1'),
(20, 93, '_wp_page_template', 'template/register.php'),
(24, 96, '_edit_lock', '1557638338:1'),
(25, 96, '_wp_page_template', 'template/binary.php'),
(26, 99, '_edit_lock', '1556680914:1'),
(27, 99, '_wp_page_template', 'template/login.php'),
(28, 102, '_edit_lock', '1557638286:1'),
(29, 102, '_wp_page_template', 'template/users.php'),
(30, 104, '_edit_lock', '1557624232:1'),
(31, 104, '_wp_page_template', 'template/transactions.php'),
(32, 106, '_edit_lock', '1559448597:1'),
(33, 106, '_wp_page_template', 'template/withdrawals.php'),
(38, 113, '_edit_lock', '1557645876:1'),
(39, 113, '_wp_page_template', 'template/earnings.php'),
(40, 117, '_wp_attached_file', '2019/06/logo-final.jpg'),
(41, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2888;s:6:\"height\";i:1681;s:4:\"file\";s:22:\"2019/06/logo-final.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-final-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo-final-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"logo-final-768x447.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:447;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"logo-final-1024x596.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:596;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-final-1568x913.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:913;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:5:\"Rowel\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1552350044\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 117, '_edit_lock', '1559371874:1'),
(43, 118, '_edit_last', '1'),
(44, 118, '_edit_lock', '1559374796:1'),
(55, 139, '_edit_lock', '1559400422:1'),
(56, 141, '_edit_lock', '1559399299:1'),
(57, 142, '_edit_lock', '1559399322:1'),
(58, 143, '_edit_lock', '1559435876:1'),
(59, 143, '_wp_page_template', 'template/__request_login.php'),
(60, 145, '_edit_lock', '1559435955:1'),
(61, 145, '_wp_page_template', 'template/__request_session.php'),
(62, 147, '_edit_lock', '1559436030:1'),
(63, 147, '_wp_page_template', 'template/__request_logout.php'),
(64, 149, '_edit_lock', '1559435974:1'),
(65, 149, '_wp_page_template', 'template/__request_admin-add-user.php'),
(66, 151, '_edit_lock', '1559435979:1'),
(67, 151, '_wp_page_template', 'template/__request_admin-add-withdrawal.php'),
(68, 153, '_edit_lock', '1559435985:1'),
(69, 153, '_wp_page_template', 'template/__request_admin-delete-user.php'),
(70, 155, '_edit_lock', '1559435990:1'),
(71, 155, '_wp_page_template', 'template/__request_admin-transactions.php'),
(72, 157, '_edit_lock', '1559435994:1'),
(73, 157, '_wp_page_template', 'template/__request_admin-users.php'),
(74, 159, '_edit_lock', '1559435999:1'),
(75, 159, '_wp_page_template', 'template/__request_admin-withdrawals.php'),
(76, 161, '_edit_lock', '1559436031:1'),
(77, 161, '_wp_page_template', 'template/__request_regular-earnings.php'),
(78, 163, '_edit_lock', '1559436032:1'),
(79, 163, '_wp_page_template', 'template/__request_regular-pairing.php'),
(80, 165, '_edit_lock', '1559436033:1'),
(81, 165, '_wp_page_template', 'template/__request_regular-transactions.php'),
(82, 167, '_edit_lock', '1559436060:1'),
(83, 167, '_wp_page_template', 'template/__request_regular-withdrawals.php'),
(84, 169, '_edit_lock', '1559436061:1'),
(85, 169, '_wp_page_template', 'template/__request_update-user.php'),
(86, 171, '_edit_lock', '1559436062:1'),
(87, 171, '_wp_page_template', 'template/__request_update-withdrawal.php'),
(88, 173, '_edit_lock', '1559444487:1'),
(89, 173, '_wp_page_template', 'template/__request_user-downline.php'),
(91, 177, '_edit_last', '1'),
(92, 177, '_edit_lock', '1559442844:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-04-07 13:31:55', '2019-04-07 13:31:55', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-04-07 13:31:55', '2019-04-07 13:31:55', '', 0, 'http://localhost/juncture/?p=1', 0, 'post', '', 1),
(9, 1, '2019-04-07 14:35:25', '2019-04-07 14:35:25', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-04-30 02:39:59', '2019-04-30 02:39:59', '', 0, 'http://localhost/juncture/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-04-07 14:35:25', '2019-04-07 14:35:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-04-07 14:35:25', '2019-04-07 14:35:25', '', 9, 'http://localhost/juncture/2019/04/07/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-04-08 05:43:17', '2019-04-08 05:43:17', '', 'Dashboard', '', 'publish', 'closed', 'closed', '', 'dashboard', '', '', '2019-05-11 05:01:35', '2019-05-11 05:01:35', '', 0, 'http://localhost/juncture/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-04-08 05:43:17', '2019-04-08 05:43:17', '', 'Dashboard', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-04-08 05:43:17', '2019-04-08 05:43:17', '', 11, 'http://localhost/juncture/2019/04/08/11-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-04-08 10:09:14', '2019-04-08 10:09:14', '', 'Page Error', '', 'publish', 'closed', 'closed', '', 'page-error', '', '', '2019-04-08 10:17:26', '2019-04-08 10:17:26', '', 0, 'http://localhost/juncture/?page_id=89', 0, 'page', '', 0),
(90, 1, '2019-04-08 10:09:14', '2019-04-08 10:09:14', '', '404', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-04-08 10:09:14', '2019-04-08 10:09:14', '', 89, 'http://localhost/juncture/2019/04/08/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-04-08 10:15:18', '2019-04-08 10:15:18', '', 'Page Error', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-04-08 10:15:18', '2019-04-08 10:15:18', '', 89, 'http://localhost/juncture/89-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-04-08 10:25:07', '2019-04-08 10:25:07', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2019-04-08 10:25:07', '2019-04-08 10:25:07', '', 0, 'http://localhost/juncture/?page_id=93', 0, 'page', '', 0),
(94, 1, '2019-04-08 10:25:07', '2019-04-08 10:25:07', '', 'Register', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-04-08 10:25:07', '2019-04-08 10:25:07', '', 93, 'http://localhost/juncture/93-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-04-14 12:15:04', '2019-04-14 12:15:04', '', 'Binary', '', 'publish', 'closed', 'closed', '', 'binary', '', '', '2019-05-12 05:21:21', '2019-05-12 05:21:21', '', 11, 'http://localhost/juncture/?page_id=96', 0, 'page', '', 0),
(97, 1, '2019-04-14 12:15:04', '2019-04-14 12:15:04', '', 'Binary', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2019-04-14 12:15:04', '2019-04-14 12:15:04', '', 96, 'http://localhost/juncture/96-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-05-01 03:24:15', '2019-05-01 03:24:15', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2019-05-01 03:24:15', '2019-05-01 03:24:15', '', 0, 'http://localhost/juncture/?page_id=99', 0, 'page', '', 0),
(100, 1, '2019-05-01 03:24:15', '2019-05-01 03:24:15', '', 'Login', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2019-05-01 03:24:15', '2019-05-01 03:24:15', '', 99, 'http://localhost/juncture/99-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-05-07 02:36:32', '2019-05-07 02:36:32', '', 'Users', '', 'publish', 'closed', 'closed', '', 'users', '', '', '2019-05-12 04:34:33', '2019-05-12 04:34:33', '', 11, 'http://localhost/juncture/?page_id=102', 0, 'page', '', 0),
(103, 1, '2019-05-07 02:36:32', '2019-05-07 02:36:32', '', 'Users', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2019-05-07 02:36:32', '2019-05-07 02:36:32', '', 102, 'http://localhost/juncture/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-05-08 06:33:28', '2019-05-08 06:33:28', '', 'Transactions', '', 'publish', 'closed', 'closed', '', 'transactions', '', '', '2019-05-12 01:26:12', '2019-05-12 01:26:12', '', 11, 'http://localhost/juncture/?page_id=104', 0, 'page', '', 0),
(105, 1, '2019-05-08 06:33:28', '2019-05-08 06:33:28', '', 'Transactions', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-05-08 06:33:28', '2019-05-08 06:33:28', '', 104, 'http://localhost/juncture/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-05-08 06:47:50', '2019-05-08 06:47:50', '', 'Withdrawals', '', 'publish', 'closed', 'closed', '', 'withdrawals', '', '', '2019-05-12 01:26:07', '2019-05-12 01:26:07', '', 11, 'http://localhost/juncture/?page_id=106', 0, 'page', '', 0),
(107, 1, '2019-05-08 06:47:50', '2019-05-08 06:47:50', '', 'Withdrawals', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-05-08 06:47:50', '2019-05-08 06:47:50', '', 106, 'http://localhost/juncture/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-05-10 06:45:08', '2019-05-10 06:45:08', '', 'Admin Dashboard', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-05-10 06:45:08', '2019-05-10 06:45:08', '', 11, 'http://localhost/juncture/11-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2019-05-10 06:45:47', '2019-05-10 06:45:47', '', 'Dashboard', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-05-10 06:45:47', '2019-05-10 06:45:47', '', 11, 'http://localhost/juncture/11-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-05-12 05:21:43', '2019-05-12 05:21:43', '', 'Earnings', '', 'publish', 'closed', 'closed', '', 'earnings', '', '', '2019-05-12 05:21:43', '2019-05-12 05:21:43', '', 11, 'http://localhost/juncture/?page_id=113', 0, 'page', '', 0),
(114, 1, '2019-05-12 05:21:43', '2019-05-12 05:21:43', '', 'Earnings', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2019-05-12 05:21:43', '2019-05-12 05:21:43', '', 113, 'http://localhost/juncture/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-05-27 10:37:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-27 10:37:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/juncture/?p=115', 0, 'post', '', 0),
(116, 1, '2019-06-01 06:46:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-01 06:46:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/juncture/?post_type=acf-field-group&p=116', 0, 'acf-field-group', '', 0),
(117, 1, '2019-06-01 06:51:48', '2019-06-01 06:51:48', '', 'logo final', '', 'inherit', 'open', 'closed', '', 'logo-final', '', '', '2019-06-01 06:51:48', '2019-06-01 06:51:48', '', 0, 'http://localhost/juncture/wp-content/uploads/2019/06/logo-final.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2019-06-01 07:33:16', '2019-06-01 07:33:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5cf225d659935', '', '', '2019-06-01 07:33:17', '2019-06-01 07:33:17', '', 0, 'http://localhost/juncture/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(119, 1, '2019-06-01 07:33:16', '2019-06-01 07:33:16', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Header Carousel', 'header_carousel', 'publish', 'closed', 'closed', '', 'field_5cf225db69604', '', '', '2019-06-01 07:33:16', '2019-06-01 07:33:16', '', 118, 'http://localhost/juncture/?post_type=acf-field&p=119', 0, 'acf-field', '', 0),
(120, 1, '2019-06-01 07:33:16', '2019-06-01 07:33:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'carousel_image', 'carousel_image', 'publish', 'closed', 'closed', '', 'field_5cf2269569605', '', '', '2019-06-01 07:33:16', '2019-06-01 07:33:16', '', 119, 'http://localhost/juncture/?post_type=acf-field&p=120', 0, 'acf-field', '', 0),
(121, 1, '2019-06-01 07:33:16', '2019-06-01 07:33:16', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'carousel_text', 'carousel_text', 'publish', 'closed', 'closed', '', 'field_5cf226b569606', '', '', '2019-06-01 07:33:16', '2019-06-01 07:33:16', '', 119, 'http://localhost/juncture/?post_type=acf-field&p=121', 1, 'acf-field', '', 0),
(122, 1, '2019-06-01 07:33:16', '2019-06-01 07:33:16', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Second Section', 'second_section', 'publish', 'closed', 'closed', '', 'field_5cf226ff69607', '', '', '2019-06-01 07:33:16', '2019-06-01 07:33:16', '', 118, 'http://localhost/juncture/?post_type=acf-field&p=122', 1, 'acf-field', '', 0),
(123, 1, '2019-06-01 07:33:16', '2019-06-01 07:33:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'item_image', 'item_image', 'publish', 'closed', 'closed', '', 'field_5cf2275469608', '', '', '2019-06-01 07:33:16', '2019-06-01 07:33:16', '', 122, 'http://localhost/juncture/?post_type=acf-field&p=123', 0, 'acf-field', '', 0),
(124, 1, '2019-06-01 07:33:16', '2019-06-01 07:33:16', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Item Text', 'item_text', 'publish', 'closed', 'closed', '', 'field_5cf2276a69609', '', '', '2019-06-01 07:33:16', '2019-06-01 07:33:16', '', 122, 'http://localhost/juncture/?post_type=acf-field&p=124', 1, 'acf-field', '', 0),
(125, 1, '2019-06-01 07:33:17', '2019-06-01 07:33:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Item Button Link', 'item_button_link', 'publish', 'closed', 'closed', '', 'field_5cf227876960a', '', '', '2019-06-01 07:33:17', '2019-06-01 07:33:17', '', 122, 'http://localhost/juncture/?post_type=acf-field&p=125', 2, 'acf-field', '', 0),
(126, 1, '2019-06-01 07:33:17', '2019-06-01 07:33:17', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Third Section', 'third_section', 'publish', 'closed', 'closed', '', 'field_5cf227d36960b', '', '', '2019-06-01 07:33:17', '2019-06-01 07:33:17', '', 118, 'http://localhost/juncture/?post_type=acf-field&p=126', 2, 'acf-field', '', 0),
(127, 1, '2019-06-01 07:33:17', '2019-06-01 07:33:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Header Text', 'header_text', 'publish', 'closed', 'closed', '', 'field_5cf227de6960c', '', '', '2019-06-01 07:33:17', '2019-06-01 07:33:17', '', 126, 'http://localhost/juncture/?post_type=acf-field&p=127', 0, 'acf-field', '', 0),
(128, 1, '2019-06-01 07:33:17', '2019-06-01 07:33:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Content Text', 'content_text', 'publish', 'closed', 'closed', '', 'field_5cf227e86960d', '', '', '2019-06-01 07:33:17', '2019-06-01 07:33:17', '', 126, 'http://localhost/juncture/?post_type=acf-field&p=128', 1, 'acf-field', '', 0),
(129, 1, '2019-06-01 07:33:17', '2019-06-01 07:33:17', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Fourth Section', 'fourth_section', 'publish', 'closed', 'closed', '', 'field_5cf228676960e', '', '', '2019-06-01 07:33:17', '2019-06-01 07:33:17', '', 118, 'http://localhost/juncture/?post_type=acf-field&p=129', 3, 'acf-field', '', 0),
(130, 1, '2019-06-01 07:33:17', '2019-06-01 07:33:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Product Image', 'product_image', 'publish', 'closed', 'closed', '', 'field_5cf228826960f', '', '', '2019-06-01 07:33:17', '2019-06-01 07:33:17', '', 129, 'http://localhost/juncture/?post_type=acf-field&p=130', 0, 'acf-field', '', 0),
(131, 1, '2019-06-01 07:33:17', '2019-06-01 07:33:17', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Product Description', 'product_description', 'publish', 'closed', 'closed', '', 'field_5cf2289769610', '', '', '2019-06-01 07:33:17', '2019-06-01 07:33:17', '', 129, 'http://localhost/juncture/?post_type=acf-field&p=131', 1, 'acf-field', '', 0),
(133, 1, '2019-06-01 07:49:22', '2019-06-01 07:49:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2019-06-01 07:49:22', '2019-06-01 07:49:22', '', 9, 'http://localhost/juncture/9-autosave-v1/', 0, 'revision', '', 0),
(139, 1, '2019-06-01 14:30:21', '2019-06-01 14:30:21', '', 'Request', '', 'publish', 'closed', 'closed', '', 'request', '', '', '2019-06-01 14:31:24', '2019-06-01 14:31:24', '', 0, 'http://localhost/juncture/?page_id=139', 0, 'page', '', 0),
(140, 1, '2019-06-01 14:30:21', '2019-06-01 14:30:21', '', 'Request', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2019-06-01 14:30:21', '2019-06-01 14:30:21', '', 139, 'http://localhost/juncture/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2019-06-01 14:30:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-01 14:30:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/juncture/?page_id=141', 0, 'page', '', 0),
(142, 1, '2019-06-01 14:30:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-01 14:30:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/juncture/?page_id=142', 0, 'page', '', 0),
(143, 1, '2019-06-01 14:49:43', '2019-06-01 14:49:43', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2019-06-02 00:40:18', '2019-06-02 00:40:18', '', 139, 'http://localhost/juncture/?page_id=143', 0, 'page', '', 0),
(144, 1, '2019-06-01 14:49:43', '2019-06-01 14:49:43', '', 'Login', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2019-06-01 14:49:43', '2019-06-01 14:49:43', '', 143, 'http://localhost/juncture/143-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2019-06-01 14:50:10', '2019-06-01 14:50:10', '', 'Session', '', 'publish', 'closed', 'closed', '', 'session', '', '', '2019-06-02 00:40:31', '2019-06-02 00:40:31', '', 139, 'http://localhost/juncture/?page_id=145', 0, 'page', '', 0),
(146, 1, '2019-06-01 14:50:10', '2019-06-01 14:50:10', '', 'Session', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2019-06-01 14:50:10', '2019-06-01 14:50:10', '', 145, 'http://localhost/juncture/145-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-06-02 00:28:30', '2019-06-02 00:28:30', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2019-06-02 00:42:41', '2019-06-02 00:42:41', '', 139, 'http://localhost/juncture/?page_id=147', 0, 'page', '', 0),
(148, 1, '2019-06-02 00:28:30', '2019-06-02 00:28:30', '', 'Logout', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2019-06-02 00:28:30', '2019-06-02 00:28:30', '', 147, 'http://localhost/juncture/147-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2019-06-02 00:29:10', '2019-06-02 00:29:10', '', 'Admin Add User', '', 'publish', 'closed', 'closed', '', 'admin-add-user', '', '', '2019-06-02 00:41:55', '2019-06-02 00:41:55', '', 139, 'http://localhost/juncture/?page_id=149', 0, 'page', '', 0),
(150, 1, '2019-06-02 00:29:10', '2019-06-02 00:29:10', '', 'Admin Add User', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2019-06-02 00:29:10', '2019-06-02 00:29:10', '', 149, 'http://localhost/juncture/149-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-06-02 00:29:39', '2019-06-02 00:29:39', '', 'Admin Add Withdrawal', '', 'publish', 'closed', 'closed', '', 'admin-add-withdrawal', '', '', '2019-06-02 00:42:03', '2019-06-02 00:42:03', '', 139, 'http://localhost/juncture/?page_id=151', 0, 'page', '', 0),
(152, 1, '2019-06-02 00:29:39', '2019-06-02 00:29:39', '', 'Admin Add Withdrawal', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-06-02 00:29:39', '2019-06-02 00:29:39', '', 151, 'http://localhost/juncture/151-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-06-02 00:30:03', '2019-06-02 00:30:03', '', 'Admin Delete User', '', 'publish', 'closed', 'closed', '', 'admin-delete-user', '', '', '2019-06-02 00:42:08', '2019-06-02 00:42:08', '', 139, 'http://localhost/juncture/?page_id=153', 0, 'page', '', 0),
(154, 1, '2019-06-02 00:30:03', '2019-06-02 00:30:03', '', 'Admin Delete User', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2019-06-02 00:30:03', '2019-06-02 00:30:03', '', 153, 'http://localhost/juncture/153-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-06-02 00:30:30', '2019-06-02 00:30:30', '', 'Admin Transactions', '', 'publish', 'closed', 'closed', '', 'admin-transactions', '', '', '2019-06-02 00:42:13', '2019-06-02 00:42:13', '', 139, 'http://localhost/juncture/?page_id=155', 0, 'page', '', 0),
(156, 1, '2019-06-02 00:30:30', '2019-06-02 00:30:30', '', 'Admin Transactions', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2019-06-02 00:30:30', '2019-06-02 00:30:30', '', 155, 'http://localhost/juncture/155-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2019-06-02 00:30:49', '2019-06-02 00:30:49', '', 'Admin Users', '', 'publish', 'closed', 'closed', '', 'admin-users', '', '', '2019-06-02 00:42:18', '2019-06-02 00:42:18', '', 139, 'http://localhost/juncture/?page_id=157', 0, 'page', '', 0),
(158, 1, '2019-06-02 00:30:49', '2019-06-02 00:30:49', '', 'Admin Users', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2019-06-02 00:30:49', '2019-06-02 00:30:49', '', 157, 'http://localhost/juncture/157-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2019-06-02 00:31:09', '2019-06-02 00:31:09', '', 'Admin Withdrawals', '', 'publish', 'closed', 'closed', '', 'admin-withdrawals', '', '', '2019-06-02 00:42:23', '2019-06-02 00:42:23', '', 139, 'http://localhost/juncture/?page_id=159', 0, 'page', '', 0),
(160, 1, '2019-06-02 00:31:09', '2019-06-02 00:31:09', '', 'Admin Withdrawals', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2019-06-02 00:31:09', '2019-06-02 00:31:09', '', 159, 'http://localhost/juncture/159-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2019-06-02 00:31:28', '2019-06-02 00:31:28', '', 'Regular Earnings', '', 'publish', 'closed', 'closed', '', 'regular-earnings', '', '', '2019-06-02 00:42:46', '2019-06-02 00:42:46', '', 139, 'http://localhost/juncture/?page_id=161', 0, 'page', '', 0),
(162, 1, '2019-06-02 00:31:28', '2019-06-02 00:31:28', '', 'Regular Earnings', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2019-06-02 00:31:28', '2019-06-02 00:31:28', '', 161, 'http://localhost/juncture/161-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2019-06-02 00:31:49', '2019-06-02 00:31:49', '', 'Regular Pairing', '', 'publish', 'closed', 'closed', '', 'regular-pairing', '', '', '2019-06-02 00:42:49', '2019-06-02 00:42:49', '', 139, 'http://localhost/juncture/?page_id=163', 0, 'page', '', 0),
(164, 1, '2019-06-02 00:31:49', '2019-06-02 00:31:49', '', 'Regular Pairing', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2019-06-02 00:31:49', '2019-06-02 00:31:49', '', 163, 'http://localhost/juncture/163-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2019-06-02 00:32:09', '2019-06-02 00:32:09', '', 'Regular Transactions', '', 'publish', 'closed', 'closed', '', 'regular-transactions', '', '', '2019-06-02 00:42:53', '2019-06-02 00:42:53', '', 139, 'http://localhost/juncture/?page_id=165', 0, 'page', '', 0),
(166, 1, '2019-06-02 00:32:09', '2019-06-02 00:32:09', '', 'Regular Transactions', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2019-06-02 00:32:09', '2019-06-02 00:32:09', '', 165, 'http://localhost/juncture/165-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2019-06-02 00:32:29', '2019-06-02 00:32:29', '', 'Regular Withdrawals', '', 'publish', 'closed', 'closed', '', 'regular-withdrawals', '', '', '2019-06-02 00:43:10', '2019-06-02 00:43:10', '', 139, 'http://localhost/juncture/?page_id=167', 0, 'page', '', 0),
(168, 1, '2019-06-02 00:32:29', '2019-06-02 00:32:29', '', 'Regular Withdrawals', '', 'inherit', 'closed', 'closed', '', '167-revision-v1', '', '', '2019-06-02 00:32:29', '2019-06-02 00:32:29', '', 167, 'http://localhost/juncture/167-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2019-06-02 00:32:55', '2019-06-02 00:32:55', '', 'Update User', '', 'publish', 'closed', 'closed', '', 'update-user', '', '', '2019-06-02 00:43:15', '2019-06-02 00:43:15', '', 139, 'http://localhost/juncture/?page_id=169', 0, 'page', '', 0),
(170, 1, '2019-06-02 00:32:55', '2019-06-02 00:32:55', '', 'Update User', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2019-06-02 00:32:55', '2019-06-02 00:32:55', '', 169, 'http://localhost/juncture/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2019-06-02 00:33:16', '2019-06-02 00:33:16', '', 'Update Withdrawal', '', 'publish', 'closed', 'closed', '', 'update-withdrawal', '', '', '2019-06-02 00:43:18', '2019-06-02 00:43:18', '', 139, 'http://localhost/juncture/?page_id=171', 0, 'page', '', 0),
(172, 1, '2019-06-02 00:33:16', '2019-06-02 00:33:16', '', 'Update Withdrawal', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2019-06-02 00:33:16', '2019-06-02 00:33:16', '', 171, 'http://localhost/juncture/171-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-06-02 00:33:32', '2019-06-02 00:33:32', '', 'User Downline', '', 'publish', 'closed', 'closed', '', 'user-downline', '', '', '2019-06-02 00:43:22', '2019-06-02 00:43:22', '', 139, 'http://localhost/juncture/?page_id=173', 0, 'page', '', 0),
(174, 1, '2019-06-02 00:33:32', '2019-06-02 00:33:32', '', 'User Downline', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-06-02 00:33:32', '2019-06-02 00:33:32', '', 173, 'http://localhost/juncture/173-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2019-06-02 02:36:21', '2019-06-02 02:36:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"175\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Withdrawal Settings', 'withdrawal-settings', 'publish', 'closed', 'closed', '', 'group_5cf335dd743c6', '', '', '2019-06-02 02:36:21', '2019-06-02 02:36:21', '', 0, 'http://localhost/juncture/?post_type=acf-field-group&#038;p=177', 0, 'acf-field-group', '', 0),
(178, 1, '2019-06-02 02:36:21', '2019-06-02 02:36:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tax', 'tax', 'publish', 'closed', 'closed', '', 'field_5cf335eb939f5', '', '', '2019-06-02 02:36:21', '2019-06-02 02:36:21', '', 177, 'http://localhost/juncture/?post_type=acf-field&p=178', 0, 'acf-field', '', 0),
(179, 1, '2019-06-02 02:36:21', '2019-06-02 02:36:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Travel Incentives', 't', 'publish', 'closed', 'closed', '', 'field_5cf335f1939f6', '', '', '2019-06-02 02:36:21', '2019-06-02 02:36:21', '', 177, 'http://localhost/juncture/?post_type=acf-field&p=179', 1, 'acf-field', '', 0),
(180, 1, '2019-06-02 02:36:21', '2019-06-02 02:36:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Processing Fee', 'processing_fee', 'publish', 'closed', 'closed', '', 'field_5cf33611939f7', '', '', '2019-06-02 02:36:21', '2019-06-02 02:36:21', '', 177, 'http://localhost/juncture/?post_type=acf-field&p=180', 2, 'acf-field', '', 0),
(181, 1, '2019-06-02 03:52:21', '2019-06-02 03:52:21', '', 'Withdrawals', '', 'inherit', 'closed', 'closed', '', '106-autosave-v1', '', '', '2019-06-02 03:52:21', '2019-06-02 03:52:21', '', 106, 'http://localhost/juncture/106-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sm_sessions`
--

CREATE TABLE `wp_sm_sessions` (
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'user_dev'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"2d2d7f90cf6e7fd34268ca992d60439c58378cd0be537c319b0dc2d9d99a50b3\";a:4:{s:10:\"expiration\";i:1559544291;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1559371491;}s:64:\"7d8365057ea13522541b899cec1fedbb7f78d0e45621382eacbc40214a6fece3\";a:4:{s:10:\"expiration\";i:1559608038;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1559435238;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '115'),
(18, 2, 'session_tokens', 'a:2:{s:64:\"221ce6198b93f2a0a0e8dc464432be38112af583e0a63af54693bb81725ae807\";a:3:{s:10:\"expiration\";i:1556288926;s:2:\"ip\";s:3:\"::1\";s:5:\"login\";i:1555079326;}s:64:\"ea9809c43171516cc7b06bd321eaedaf1181402bcec87ce677f4b809cf201053\";a:3:{s:10:\"expiration\";i:1556289184;s:2:\"ip\";s:3:\"::1\";s:5:\"login\";i:1555079584;}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1559371967'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}'),
(23, 1, 'edit_page_per_page', '30');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'user_dev', '$P$Bshb4SzNqcqqt/Mm2I5erbDnhF.Jee.', 'user_dev', 'ninojoevelz@yahoo.com', '', '2019-04-07 13:31:54', '', 0, 'user_dev');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `j_users`
--
ALTER TABLE `j_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `j_users_earnings`
--
ALTER TABLE `j_users_earnings`
  ADD PRIMARY KEY (`earning_id`);

--
-- Indexes for table `j_users_info`
--
ALTER TABLE `j_users_info`
  ADD PRIMARY KEY (`user_info_id`);

--
-- Indexes for table `j_users_transactions`
--
ALTER TABLE `j_users_transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `j_users_withdrawal_status`
--
ALTER TABLE `j_users_withdrawal_status`
  ADD PRIMARY KEY (`withdrawal_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_sm_sessions`
--
ALTER TABLE `wp_sm_sessions`
  ADD PRIMARY KEY (`session_key`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `j_users`
--
ALTER TABLE `j_users`
  MODIFY `user_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `j_users_earnings`
--
ALTER TABLE `j_users_earnings`
  MODIFY `earning_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `j_users_transactions`
--
ALTER TABLE `j_users_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `j_users_withdrawal_status`
--
ALTER TABLE `j_users_withdrawal_status`
  MODIFY `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
