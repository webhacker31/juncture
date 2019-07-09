-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2019 at 01:20 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `junctur1_274`
--

-- --------------------------------------------------------

--
-- Table structure for table `274_commentmeta`
--

CREATE TABLE `274_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `274_comments`
--

CREATE TABLE `274_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `274_comments`
--

INSERT INTO `274_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-02 04:00:27', '2019-06-02 04:00:27', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 162, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-04-07 13:31:55', '2019-04-07 13:31:55', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\" rel=\"nofollow\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `274_links`
--

CREATE TABLE `274_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `274_options`
--

CREATE TABLE `274_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `274_options`
--

INSERT INTO `274_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://juncture.global', 'yes'),
(2, 'home', 'https://juncture.global', 'yes'),
(3, 'blogname', 'Juncture PH', 'yes'),
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
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=99&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:\"jetpack/jetpack.php\";i:1;s:47:\"mojo-marketplace-wp-plugin/mojo-marketplace.php\";i:3;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
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
(69, 'close_comments_for_old_posts', '1', 'yes'),
(70, 'close_comments_days_old', '28', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '20', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
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
(94, '274_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(192, 'recently_activated', 'a:1:{s:33:\"w3-total-cache/w3-total-cache.php\";i:1560250167;}', 'yes'),
(155, 'mm_cron', 'a:3:{s:6:\"weekly\";a:1:{s:10:\"wp_version\";a:4:{s:1:\"t\";s:5:\"event\";s:2:\"ec\";s:9:\"scheduled\";s:2:\"ea\";s:10:\"wp_version\";s:2:\"el\";s:5:\"5.2.1\";}}s:5:\"daily\";a:1:{s:14:\"plugin_version\";a:4:{s:1:\"t\";s:5:\"event\";s:2:\"ec\";s:9:\"scheduled\";s:2:\"ea\";s:14:\"plugin_version\";s:2:\"el\";s:5:\"1.4.6\";}}s:7:\"monthly\";a:4:{s:11:\"php_version\";a:4:{s:1:\"t\";s:5:\"event\";s:2:\"ec\";s:9:\"scheduled\";s:2:\"ea\";s:11:\"php_version\";s:2:\"el\";s:6:\"7.0.33\";}s:12:\"plugin_count\";a:4:{s:1:\"t\";s:5:\"event\";s:2:\"ec\";s:9:\"scheduled\";s:2:\"ea\";s:12:\"plugin_count\";s:2:\"el\";i:3;}s:11:\"theme_count\";a:4:{s:1:\"t\";s:5:\"event\";s:2:\"ec\";s:9:\"scheduled\";s:2:\"ea\";s:11:\"theme_count\";s:2:\"el\";i:4;}s:13:\"current_theme\";a:4:{s:1:\"t\";s:5:\"event\";s:2:\"ec\";s:9:\"scheduled\";s:2:\"ea\";s:13:\"current_theme\";s:2:\"el\";s:20:\"twentynineteen-child\";}}}', 'yes'),
(153, 'do_activate', '0', 'yes'),
(102, 'cron', 'a:12:{i:1562313628;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1562313639;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1562314227;a:1:{s:14:\"mm_cron_hourly\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1562342428;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1562343027;a:1:{s:18:\"mm_cron_twicedaily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1562385627;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562386227;a:1:{s:13:\"mm_cron_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562386228;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562386229;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562472627;a:1:{s:14:\"mm_cron_weekly\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1564287027;a:1:{s:15:\"mm_cron_monthly\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2419200;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'auto_update_theme', 'true', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1559448643;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.2-partial-1.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1562308648;s:15:\"version_checked\";s:5:\"5.2.1\";s:12:\"translations\";a:0:{}}', 'no'),
(3522, '_transient_timeout_mm_api_calls', '1562392599', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1562301836;s:7:\"checked\";a:4:{s:20:\"twentynineteen-child\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, 'allow_major_auto_core_updates', 'true', 'yes'),
(123, 'mm_host', 'b7119342-0c17-11e2-8b3b-0030483370c8', 'yes'),
(124, 'allow_minor_auto_core_updates', 'true', 'yes'),
(125, 'mm_coming_soon', 'true', 'yes'),
(126, 'auto_update_translation', 'true', 'yes'),
(127, 'auto_update_plugin', 'true', 'yes'),
(128, 'mm_brand', 'BlueHost', 'yes'),
(129, 'mm_install_date', '2019-06-02', 'yes'),
(140, 'jetpack_sync_settings_disable', '0', 'yes'),
(3537, '_transient_timeout_jetpack_idc_allowed', '1562313022', 'no'),
(3538, '_transient_jetpack_idc_allowed', '1', 'no'),
(527, '_mm_refresh_token', '5cebec5d-a9e0-43fd-ba3e-78be0a141f3c', 'yes'),
(135, 'jetpack_activated', '1', 'yes'),
(138, 'jetpack_activation_source', 'a:2:{i:0;s:6:\"wp-cli\";i:1;N;}', 'yes'),
(139, 'jetpack_options', 'a:2:{s:7:\"version\";s:16:\"7.3.1:1559448039\";s:11:\"old_version\";s:16:\"7.3.1:1559448039\";}', 'yes'),
(166, 'jetpack_ab_connect_banner_green_bar', 'b', 'yes'),
(693, '_transient_user_id_000018', '000018', 'yes'),
(3535, '_site_transient_timeout_theme_roots', '1562310446', 'no'),
(3536, '_site_transient_theme_roots', 'a:4:{s:20:\"twentynineteen-child\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(973, 'mm_cache_settings', 'a:2:{s:4:\"page\";s:7:\"enabled\";s:7:\"browser\";s:7:\"enabled\";}', 'yes'),
(944, 'w3tc_state', '{\"common.install\":1560250048,\"license.status\":\"no_key\",\"license.next_check\":1560682048,\"license.terms\":\"\",\"license.community_terms\":\"accept\"}', 'no'),
(952, 'w3tc_generic_widgetservices', '{\"content\":{\"items\":[{\"name\":\"Premium Support Response (Usually <1h First Response)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Premium Support Response (Usually <1h First Response)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Plugin Configuration\",\"parameter_name\":\"field4\",\"parameter_value\":\"Plugin Configuration\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"SSL Performance Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"SSL Performance Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Full Site Delivery Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"Full Site Delivery Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Hosting Environment Troubleshooting\",\"parameter_name\":\"field4\",\"parameter_value\":\"Hosting Environment Troubleshooting\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Monitoring\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Monitoring\",\"form_hash\":\"m5pom8z0qy59rm\"}],\"ui_strings\":{\"cdn.maxcdn.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.maxcdn.signUpAndSave.description\":\"MaxCDN is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"cdn.stackpath.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now and save!\",\"cdn.stackpath2.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath2.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"minify.general.header\":\"Reduce load time by decreasing the size and number of <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym> and <acronym title=\'JavaScript\'>JS<\\/acronym> files. Automatically remove unncessary data from <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym>, <acronym title=\'JavaScript\'>JS<\\/acronym>, feed, page and post <acronym title=\'Hypertext Markup Language\'>HTML<\\/acronym>.\",\"newrelic.general.header\":\"New Relic may not be installed or not active on this server. <a href=\'%s\' target=\'_blank\'>Sign up for a (free) account<\\/a>. Visit <a href=\'%s\' target=\'_blank\'>New Relic<\\/a> for installation instructions.\",\"reverseproxy.general.header\":\"A reverse proxy adds scale to an server by handling requests before WordPress does. Purge settings are set on the <a href=\'%s\'>Page Cache settings<\\/a> page and <a href=\'%s\'>Browser Cache settings<\\/a> are set on the browser cache settings page.\",\"cdnfsd.general.header\":\"Host the entire website with your compatible <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> provider to reduce page load time.\",\"cdn.general.header\":\"Host static files with your <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> to reduce page load time.\",\"cdn.stackpath.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.works_magically\":\"StackPath works magically with W3 Total Cache.\",\"cdn.stackpath.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\",\"cdn.stackpath2.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\"}},\"expires\":1560854876}', 'no'),
(975, 'endurance_cache_level', '0', 'yes'),
(981, 'WPLANG', '', 'yes'),
(982, 'new_admin_email', 'ninojoevelz@yahoo.com', 'yes'),
(3408, '_transient_timeout_mm_spam_4ad7964d5325c14655fd6ef9751d13c2', '1562304472', 'no'),
(3409, '_transient_mm_spam_4ad7964d5325c14655fd6ef9751d13c2', 'no', 'no'),
(3413, '_transient_timeout_mm_spam_b9f0d4b044034a4f0085bddd0c50232f', '1562308186', 'no'),
(3414, '_transient_mm_spam_b9f0d4b044034a4f0085bddd0c50232f', 'no', 'no'),
(3418, '_transient_timeout_mm_spam_5c1c7bfdb2f3ea010ce88f7f3bbef6a5', '1562311962', 'no'),
(3419, '_transient_mm_spam_5c1c7bfdb2f3ea010ce88f7f3bbef6a5', 'no', 'no'),
(3423, '_transient_timeout_mm_spam_03a9575832db116d3dd9834dbe846456', '1562315800', 'no'),
(3424, '_transient_mm_spam_03a9575832db116d3dd9834dbe846456', 'no', 'no'),
(3429, '_transient_timeout_jetpack_file_data_7.4', '1564741820', 'no');
INSERT INTO `274_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3430, '_transient_jetpack_file_data_7.4', 'a:62:{s:32:\"c22c48d7cfe9d38dff2864cfea64636a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"933d4f6d290580156e0652ce850af1b2\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"fb5c4814ddc3946a3f22cc838fcb2af3\";a:15:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5813eda53235a9a81a69b1f6a4a15db6\";a:15:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7ef4ca32a1c84fc10ef50c8293cae5df\";a:15:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c5331bfc2648dfeeebe486736d79a72c\";a:15:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"275642ae868612fff9f668ce23aef464\";a:15:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:53:\"Copy an existing post\'s content into a new draft post\";s:14:\"jumpstart_desc\";s:53:\"Copy an existing post\'s content into a new draft post\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"707c77d2e8cb0c12d094e5423c8beda8\";a:15:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cd499b1678cfe3aabfc8ca0d3eb7e8b9\";a:15:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d266d6546645f42cf52a66387699c50\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d436678d5e010ac6b0f157aa1021554\";a:15:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c9ff765b826940496a65c0f927a594a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"092b94702bb483a5472578283c2103d6\";a:15:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"6bd77e09440df2b63044cf8cb7963773\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ee1a10e2ef5733ab19eb1eb552d5ecb3\";a:15:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"284c08538b0bdc266315b2cf80b9c044\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0ce5c3ac630dea9f41215e48bb0f52f3\";a:15:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"87da2858d4f9cadb6a44fdcf32e8d2b5\";a:15:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"004962cb7cb9ec2b64769ac4df509217\";a:15:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:75:\"Use the LaTeX markup language to write mathematical equations and formulas.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7f408184bee8850d439c01322867e72c\";a:15:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:14:\"jumpstart_desc\";s:164:\"Lazy-loading images improve your site\'s speed and create a smoother viewing experience. Images will load as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ad914b747f382ae918ed3b37077d4a1\";a:15:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b347263e3470979442ebf0514e41e893\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"589982245aa6f495b72ab7cf57a1a48e\";a:15:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3bec8e063d637bc285018241b783725\";a:15:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6ab1c3e749bcfba2dedbaebe6c9fc614\";a:15:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b7be7da643ec641511839ecc6afb6def\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d54f83ff429a8a37ace796de98459411\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0f8b373fa12c825162c0b0bc20b8bbdd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d7b0750cb34a4a72a44fa67790de639\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f07fde8db279ffb0116c727df72c6374\";a:15:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"136a5445a49150db75472862f3d3aefb\";a:15:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"395d8ae651afabb54d1e98440674b384\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0b7b5e3ff80355a67c5485b0d00cd1a2\";a:15:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4484ac68583fbbaab0ef698cdc986950\";a:15:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"509aac35e28ac722a331f67613cd27ec\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6f30193afa5b1360e3fa2676501b5e3a\";a:15:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"3e9f8bd3755d92e8e5d06966a957beb8\";a:15:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:135:\"Protect yourself from brute force and distributed brute force attacks, which are the most common way for hackers to get into your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0cacc8ab2145ad11cb54d181a98aa550\";a:15:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a528c2f803a92c5c2effa67cd33ab33a\";a:15:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"329b8efce059081d46936ece0c6736b3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5fdd42d482712fbdaf000b28ea7adce9\";a:15:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c5096ef610018e98a8bcccfbea4471e\";a:15:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:87:\"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"0d81dd7df3ad2f245e84fd4fb66bf829\";a:15:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"32aaa676b3b6c9f3ef22430e1e0bca24\";a:15:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"948472b453cda59b38bb7c37af889af0\";a:15:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d00a6ca0a79fbe893275aaf6ed6ae42\";a:15:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"372e711395f23c466e04d4fd07f73099\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ea687cec293289a2a3e5f0459e79768\";a:15:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2fe9dc2c7389d4f0825a0b23bc8b19d1\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e7cf8a7e0f151ccf7cbdc6d8f118f316\";a:15:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"34fb073ed896af853ed48bd5739240cb\";a:15:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8de0dfff24a17cf0fa0011dfc691a3f3\";a:15:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4744f348db095538d3edcacb0ed99c89\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d89db0d934b39f86065ff58e73594070\";a:15:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"01987a7ba5e19786f2992501add8181a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"20459cc462babfc5a82adf6b34f6e8b1\";a:15:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"836245eb0a8f0c5272542305a88940c1\";a:15:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e94397a5c47c1be995eff613e65a674f\";a:15:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"032cd76e08467c732ccb026efda0c9cd\";a:15:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9b3e84beedf2e96f1ac5dd6498d2b1aa\";a:15:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7724fd9600745cf93e37cc09282e1a37\";a:15:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}s:32:\"5b8f8e5b5a1887e3c0393cb78d5143a3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(3528, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1562301837;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:19:\"jetpack/jetpack.php\";s:3:\"7.4\";s:47:\"mojo-marketplace-wp-plugin/mojo-marketplace.php\";s:5:\"1.4.6\";s:33:\"w3-total-cache/w3-total-cache.php\";s:7:\"0.9.7.5\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";}s:8:\"response\";a:1:{s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"7.5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.7.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"w3-total-cache/w3-total-cache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/w3-total-cache\";s:4:\"slug\";s:14:\"w3-total-cache\";s:6:\"plugin\";s:33:\"w3-total-cache/w3-total-cache.php\";s:11:\"new_version\";s:7:\"0.9.7.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/w3-total-cache/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/w3-total-cache.0.9.7.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806\";s:2:\"1x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-128x128.png?rev=1041806\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(3344, '_transient_user_id_000002', '000002', 'yes'),
(2758, '_transient_timeout_mm_icon_hash', '1562317280', 'no'),
(2759, '_transient_mm_icon_hash', 'PHN2ZyBpZD0iTGF5ZXJfMSIgZGF0YS1uYW1lPSJMYXllciAxIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA1OC4wMyA1OC4xMyI+PGRlZnM+PHN0eWxlPi5jbHMtMXtmaWxsOiNmZmY7fTwvc3R5bGU+PC9kZWZzPjx0aXRsZT5iaC13aGl0ZTwvdGl0bGU+PGcgaWQ9Il9Hcm91cF8iIGRhdGEtbmFtZT0iJmx0O0dyb3VwJmd0OyI+PGcgaWQ9Il9Hcm91cF8yIiBkYXRhLW5hbWU9IiZsdDtHcm91cCZndDsiPjxnIGlkPSJfR3JvdXBfMyIgZGF0YS1uYW1lPSImbHQ7R3JvdXAmZ3Q7Ij48cmVjdCBpZD0iX1BhdGhfIiBkYXRhLW5hbWU9IiZsdDtQYXRoJmd0OyIgY2xhc3M9ImNscy0xIiB3aWR0aD0iMTYuMiIgaGVpZ2h0PSIxNi4yMSIvPjxyZWN0IGlkPSJfUGF0aF8yIiBkYXRhLW5hbWU9IiZsdDtQYXRoJmd0OyIgY2xhc3M9ImNscy0xIiB4PSIyMC45MSIgd2lkdGg9IjE2LjIxIiBoZWlnaHQ9IjE2LjIxIi8+PHJlY3QgaWQ9Il9QYXRoXzMiIGRhdGEtbmFtZT0iJmx0O1BhdGgmZ3Q7IiBjbGFzcz0iY2xzLTEiIHg9IjQxLjgyIiB3aWR0aD0iMTYuMjEiIGhlaWdodD0iMTYuMjEiLz48cmVjdCBpZD0iX1BhdGhfNCIgZGF0YS1uYW1lPSImbHQ7UGF0aCZndDsiIGNsYXNzPSJjbHMtMSIgeT0iMjAuOTYiIHdpZHRoPSIxNi4yIiBoZWlnaHQ9IjE2LjIxIi8+PHJlY3QgaWQ9Il9QYXRoXzUiIGRhdGEtbmFtZT0iJmx0O1BhdGgmZ3Q7IiBjbGFzcz0iY2xzLTEiIHg9IjIwLjkxIiB5PSIyMC45NiIgd2lkdGg9IjE2LjIxIiBoZWlnaHQ9IjE2LjIxIi8+PHJlY3QgaWQ9Il9QYXRoXzYiIGRhdGEtbmFtZT0iJmx0O1BhdGgmZ3Q7IiBjbGFzcz0iY2xzLTEiIHg9IjQxLjgyIiB5PSIyMC45NiIgd2lkdGg9IjE2LjIxIiBoZWlnaHQ9IjE2LjIxIi8+PHJlY3QgaWQ9Il9QYXRoXzciIGRhdGEtbmFtZT0iJmx0O1BhdGgmZ3Q7IiBjbGFzcz0iY2xzLTEiIHk9IjQxLjkyIiB3aWR0aD0iMTYuMiIgaGVpZ2h0PSIxNi4yMSIvPjxyZWN0IGlkPSJfUGF0aF84IiBkYXRhLW5hbWU9IiZsdDtQYXRoJmd0OyIgY2xhc3M9ImNscy0xIiB4PSIyMC45MSIgeT0iNDEuOTIiIHdpZHRoPSIxNi4yMSIgaGVpZ2h0PSIxNi4yMSIvPjxyZWN0IGlkPSJfUGF0aF85IiBkYXRhLW5hbWU9IiZsdDtQYXRoJmd0OyIgY2xhc3M9ImNscy0xIiB4PSI0MS44MiIgeT0iNDEuOTIiIHdpZHRoPSIxNi4yMSIgaGVpZ2h0PSIxNi4yMSIvPjwvZz48L2c+PC9nPjwvc3ZnPg==', 'no'),
(2764, '_site_transient_timeout_browser_bcf1814caa6afe84eeebef28ff236a7f', '1562317280', 'no'),
(2765, '_site_transient_browser_bcf1814caa6afe84eeebef28ff236a7f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2766, '_site_transient_timeout_php_check_8706d9e16ec2aa6542c624d1e3c9facd', '1562317280', 'no'),
(2767, '_site_transient_php_check_8706d9e16ec2aa6542c624d1e3c9facd', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(1649, '_transient_user_id_000023', '000023', 'yes'),
(1519, '_transient_user_id_000107', '000107', 'yes'),
(1719, '_transient_user_id_000001', '000001', 'yes'),
(1603, '_transient_user_id_000065', '000065', 'yes'),
(3295, '_transient_user_id_000097', '000097', 'yes'),
(3301, '_transient_user_id_000083', '000083', 'yes'),
(3383, '_transient_timeout_mm_test', '1564632798', 'no'),
(3384, '_transient_mm_test', 'a:1:{s:3:\"key\";s:4:\"none\";}', 'no'),
(1672, '_transient_user_id_000035', '000035', 'yes'),
(1687, '_transient_user_id_000090', '000090', 'yes'),
(1737, '_transient_user_id_000041', '000041', 'yes'),
(2070, '_transient_user_id_000093', '000093', 'yes'),
(2870, '_transient_user_id_000078', '000078', 'yes'),
(2203, '_transient_user_id_000091', '000091', 'yes'),
(3431, '_transient_timeout_mm_spam_26e64ed78522f7efb6b9f57535aa4ef5', '1562323096', 'no'),
(3432, '_transient_mm_spam_26e64ed78522f7efb6b9f57535aa4ef5', 'no', 'no'),
(3439, '_transient_timeout_mm_spam_b048df6a0e15090a27f252a88761df85', '1562326873', 'no'),
(3440, '_transient_mm_spam_b048df6a0e15090a27f252a88761df85', 'no', 'no'),
(3442, '_transient_timeout_mm_spam_6ec3b19b73c53c017b7056f8c3f6a672', '1562329091', 'no'),
(3443, '_transient_mm_spam_6ec3b19b73c53c017b7056f8c3f6a672', 'no', 'no'),
(3446, '_transient_timeout_mm_spam_098304dd700803195d375b2aba6be4c5', '1562330737', 'no'),
(3447, '_transient_mm_spam_098304dd700803195d375b2aba6be4c5', 'no', 'no'),
(3454, '_transient_timeout_mm_spam_4dfc4a4a6f9a341e3965900c2c0ed510', '1562338452', 'no'),
(3455, '_transient_mm_spam_4dfc4a4a6f9a341e3965900c2c0ed510', 'no', 'no');
INSERT INTO `274_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3467, '_transient_timeout_mm_spam_50252c1ca4e530ecab4c4a8f46d2a997', '1562347417', 'no'),
(3468, '_transient_mm_spam_50252c1ca4e530ecab4c4a8f46d2a997', 'no', 'no'),
(3476, '_transient_timeout_mm_spam_1296c41002909fe12cd2f8e871ff7bc9', '1562353720', 'no'),
(3477, '_transient_mm_spam_1296c41002909fe12cd2f8e871ff7bc9', 'no', 'no'),
(3481, '_transient_timeout_mm_spam_38e4da1fcb9f893691fe939410897a56', '1562357588', 'no'),
(3482, '_transient_mm_spam_38e4da1fcb9f893691fe939410897a56', 'no', 'no'),
(3486, '_transient_timeout_mm_spam_91441895c417155787f1a3a86c22928d', '1562361336', 'no'),
(3487, '_transient_mm_spam_91441895c417155787f1a3a86c22928d', 'no', 'no'),
(3494, '_transient_timeout_mm_spam_26d02e2daad015caa2db59163adf06e9', '1562368953', 'no'),
(3495, '_transient_mm_spam_26d02e2daad015caa2db59163adf06e9', 'no', 'no'),
(3497, '_transient_timeout_mm_spam_24e44f05d81eeb940d550e5af3570d77', '1562371730', 'no'),
(3498, '_transient_mm_spam_24e44f05d81eeb940d550e5af3570d77', 'no', 'no'),
(3505, '_transient_timeout_mm_spam_88f25d725173ef1ab30746c9844f05c8', '1562376699', 'no'),
(3506, '_transient_mm_spam_88f25d725173ef1ab30746c9844f05c8', 'no', 'no'),
(3510, '_transient_timeout_mm_spam_5d12761a8141c8e355b32c3db90a1411', '1562380454', 'no'),
(3511, '_transient_mm_spam_5d12761a8141c8e355b32c3db90a1411', 'no', 'no'),
(3516, '_transient_timeout_mm_spam_45e5c214ee267e04a2991affe7ad0f29', '1562384385', 'no'),
(3517, '_transient_mm_spam_45e5c214ee267e04a2991affe7ad0f29', 'no', 'no'),
(3533, '_transient_timeout_mm_spam_01e65db5b9e1f64a7ab285e714306796', '1562394514', 'no'),
(3534, '_transient_mm_spam_01e65db5b9e1f64a7ab285e714306796', 'no', 'no'),
(3539, '_transient_timeout_mm_spam_5be8d528d5fea08eb10a397e1c1d11a1', '1562395822', 'no'),
(3540, '_transient_mm_spam_5be8d528d5fea08eb10a397e1c1d11a1', 'no', 'no'),
(176, 'can_compress_scripts', '0', 'no'),
(185, 'current_theme', 'Twenty Nineteen Child', 'yes'),
(186, 'theme_mods_twentynineteen-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(187, 'theme_switched', '', 'yes'),
(257, 'category_children', 'a:0:{}', 'yes'),
(260, 'jetpack_available_modules', 'a:1:{s:3:\"7.4\";a:43:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(1136, '_transient_user_id_000004', '000004', 'yes'),
(2785, '_transient_user_id_000120', '000120', 'yes'),
(2805, '_transient_user_id_000130', '000130', 'yes'),
(3236, '_transient_user_id_000061', '000061', 'yes'),
(3299, '_transient_user_id_000067', '000067', 'yes'),
(3192, '_transient_user_id_000108', '000108', 'yes'),
(3302, '_transient_user_id_000016', '000016', 'yes'),
(3523, '_transient_mm_api_calls', 'a:2:{s:32:\"8b6414ea1a1f66f96e32726bc72b5763\";a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:12:\"nginx/1.10.3\";s:4:\"date\";s:29:\"Fri, 05 Jul 2019 04:43:54 GMT\";s:12:\"content-type\";s:16:\"application/json\";s:14:\"content-length\";s:3:\"539\";s:13:\"last-modified\";s:29:\"Mon, 17 Jul 2017 20:22:48 GMT\";s:4:\"etag\";s:14:\"\"596d1c98-21b\"\";s:13:\"accept-ranges\";s:5:\"bytes\";s:4:\"vary\";s:6:\"Origin\";s:10:\"set-cookie\";s:19:\"WEBSVR=w0n3; path=/\";}}s:4:\"body\";s:539:\"{\n   \"BlueHost\":\"bluehost\",\n   \"BlueHost_for_Education\":\"bluehost\",\n   \"BlueHost_Optimized_for_WordPress\":\"bluehost\",\n   \"Bluehost_QI\":\"bluehost\",\n   \"Bluehost_India\":\"bluehost-india\",\n   \"Just_Host\":\"default\",\n   \"Just_Host_QI\":\"default\",\n   \"HostMonster\":\"default\",\n   \"Hostmonster_QI\":\"default\",\n   \"HostGator_QI\":\"default\",\n   \"HostGator_com_for_Resellers\":\"default\",\n   \"Hostgator_Com_LLC\":\"default\",\n   \"HostGatorSG\":\"default\",\n   \"Hostgator_India\":\"hostgator-india\",\n   \"iPower\":\"ipower\",\n   \"iPage\":\"ipage\",\n   \"FatCow\":\"fatcow\"\n}\n\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:1:{i:0;O:14:\"WP_Http_Cookie\":6:{s:4:\"name\";s:6:\"WEBSVR\";s:5:\"value\";s:4:\"w0n3\";s:7:\"expires\";N;s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:23:\"www.mojomarketplace.com\";s:9:\"host_only\";b:1;}}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:539:\"{\n   \"BlueHost\":\"bluehost\",\n   \"BlueHost_for_Education\":\"bluehost\",\n   \"BlueHost_Optimized_for_WordPress\":\"bluehost\",\n   \"Bluehost_QI\":\"bluehost\",\n   \"Bluehost_India\":\"bluehost-india\",\n   \"Just_Host\":\"default\",\n   \"Just_Host_QI\":\"default\",\n   \"HostMonster\":\"default\",\n   \"Hostmonster_QI\":\"default\",\n   \"HostGator_QI\":\"default\",\n   \"HostGator_com_for_Resellers\":\"default\",\n   \"Hostgator_Com_LLC\":\"default\",\n   \"HostGatorSG\":\"default\",\n   \"Hostgator_India\":\"hostgator-india\",\n   \"iPower\":\"ipower\",\n   \"iPage\":\"ipage\",\n   \"FatCow\":\"fatcow\"\n}\n\";s:3:\"raw\";s:826:\"HTTP/1.1 200 OK\r\nServer: nginx/1.10.3\r\nDate: Fri, 05 Jul 2019 04:43:54 GMT\r\nContent-Type: application/json\r\nContent-Length: 539\r\nLast-Modified: Mon, 17 Jul 2017 20:22:48 GMT\r\nConnection: close\r\nETag: \"596d1c98-21b\"\r\nAccept-Ranges: bytes\r\nVary: Origin\r\nSet-Cookie: WEBSVR=w0n3; path=/\r\n\r\n{\n   \"BlueHost\":\"bluehost\",\n   \"BlueHost_for_Education\":\"bluehost\",\n   \"BlueHost_Optimized_for_WordPress\":\"bluehost\",\n   \"Bluehost_QI\":\"bluehost\",\n   \"Bluehost_India\":\"bluehost-india\",\n   \"Just_Host\":\"default\",\n   \"Just_Host_QI\":\"default\",\n   \"HostMonster\":\"default\",\n   \"Hostmonster_QI\":\"default\",\n   \"HostGator_QI\":\"default\",\n   \"HostGator_com_for_Resellers\":\"default\",\n   \"Hostgator_Com_LLC\":\"default\",\n   \"HostGatorSG\":\"default\",\n   \"Hostgator_India\":\"hostgator-india\",\n   \"iPower\":\"ipower\",\n   \"iPage\":\"ipage\",\n   \"FatCow\":\"fatcow\"\n}\n\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";a:1:{i:0;s:12:\"nginx/1.10.3\";}s:4:\"date\";a:1:{i:0;s:29:\"Fri, 05 Jul 2019 04:43:54 GMT\";}s:12:\"content-type\";a:1:{i:0;s:16:\"application/json\";}s:14:\"content-length\";a:1:{i:0;s:3:\"539\";}s:13:\"last-modified\";a:1:{i:0;s:29:\"Mon, 17 Jul 2017 20:22:48 GMT\";}s:4:\"etag\";a:1:{i:0;s:14:\"\"596d1c98-21b\"\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}s:4:\"vary\";a:1:{i:0;s:6:\"Origin\";}s:10:\"set-cookie\";a:1:{i:0;s:19:\"WEBSVR=w0n3; path=/\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.100000000000000088817841970012523233890533447265625;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:69:\"https://www.mojomarketplace.com/mojo-plugin-assets/json/branding.json\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:1:{s:6:\"WEBSVR\";O:15:\"Requests_Cookie\":5:{s:4:\"name\";s:6:\"WEBSVR\";s:5:\"value\";s:4:\"w0n3\";s:10:\"attributes\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:2:{s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:23:\"www.mojomarketplace.com\";}}s:5:\"flags\";a:4:{s:8:\"creation\";i:1562301834;s:11:\"last-access\";i:1562301834;s:10:\"persistent\";b:0;s:9:\"host-only\";b:1;}s:14:\"reference_time\";i:1562301834;}}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}s:32:\"99eab8a7940f4bd7a84e271be47c4532\";a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:6:{s:6:\"server\";s:12:\"nginx/1.10.1\";s:4:\"date\";s:29:\"Fri, 05 Jul 2019 05:56:39 GMT\";s:12:\"content-type\";s:24:\"text/html; charset=UTF-8\";s:12:\"x-powered-by\";s:10:\"PHP/5.6.22\";s:10:\"set-cookie\";a:2:{i:0;s:135:\"SESSION=31b92onsv6p1jtdl7kd37tac77; expires=Fri, 05-Jul-2019 05:57:39 GMT; Max-Age=60; path=/; domain=www.mojomarketplace.com; HttpOnly\";i:1;s:19:\"APISVR=a0n3; path=/\";}s:4:\"vary\";s:6:\"Origin\";}}s:4:\"body\";s:0:\"\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:1:{i:0;O:14:\"WP_Http_Cookie\":6:{s:4:\"name\";s:6:\"APISVR\";s:5:\"value\";s:4:\"a0n3\";s:7:\"expires\";N;s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:23:\"api.mojomarketplace.com\";s:9:\"host_only\";b:1;}}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:0:\"\";s:3:\"raw\";s:387:\"HTTP/1.1 200 OK\r\nServer: nginx/1.10.1\r\nDate: Fri, 05 Jul 2019 05:56:39 GMT\r\nContent-Type: text/html; charset=UTF-8\r\nTransfer-Encoding: chunked\r\nConnection: close\r\nX-Powered-By: PHP/5.6.22\r\nSet-Cookie: SESSION=31b92onsv6p1jtdl7kd37tac77; expires=Fri, 05-Jul-2019 05:57:39 GMT; Max-Age=60; path=/; domain=www.mojomarketplace.com; HttpOnly\r\nVary: Origin\r\nSet-Cookie: APISVR=a0n3; path=/\r\n\r\n\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:6:{s:6:\"server\";a:1:{i:0;s:12:\"nginx/1.10.1\";}s:4:\"date\";a:1:{i:0;s:29:\"Fri, 05 Jul 2019 05:56:39 GMT\";}s:12:\"content-type\";a:1:{i:0;s:24:\"text/html; charset=UTF-8\";}s:12:\"x-powered-by\";a:1:{i:0;s:10:\"PHP/5.6.22\";}s:10:\"set-cookie\";a:2:{i:0;s:135:\"SESSION=31b92onsv6p1jtdl7kd37tac77; expires=Fri, 05-Jul-2019 05:57:39 GMT; Max-Age=60; path=/; domain=www.mojomarketplace.com; HttpOnly\";i:1;s:19:\"APISVR=a0n3; path=/\";}s:4:\"vary\";a:1:{i:0;s:6:\"Origin\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.100000000000000088817841970012523233890533447265625;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:56:\"https://api.mojomarketplace.com/api/v1/meta/landing_page\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:1:{s:6:\"APISVR\";O:15:\"Requests_Cookie\":5:{s:4:\"name\";s:6:\"APISVR\";s:5:\"value\";s:4:\"a0n3\";s:10:\"attributes\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:2:{s:4:\"path\";s:1:\"/\";s:6:\"domain\";s:23:\"api.mojomarketplace.com\";}}s:5:\"flags\";a:4:{s:8:\"creation\";i:1562306199;s:11:\"last-access\";i:1562306199;s:10:\"persistent\";b:0;s:9:\"host-only\";b:1;}s:14:\"reference_time\";i:1562306199;}}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}}', 'no'),
(3524, '_transient_timeout_mm_spam_b7ccc4e99693ceeb8966947274c8148a', '1562388234', 'no'),
(3525, '_transient_mm_spam_b7ccc4e99693ceeb8966947274c8148a', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `274_postmeta`
--

CREATE TABLE `274_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `274_postmeta`
--

INSERT INTO `274_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(32, 143, '_edit_lock', '1559448846:1'),
(31, 157, '_edit_lock', '1559448706:1'),
(5, 9, '_wp_page_template', 'template/home.php'),
(6, 11, '_wp_page_template', 'template/dashboard.php'),
(7, 89, '_wp_page_template', 'template/_404.php'),
(8, 93, '_wp_page_template', 'template/register.php'),
(9, 96, '_wp_page_template', 'template/binary.php'),
(10, 99, '_wp_page_template', 'template/login.php'),
(11, 102, '_wp_page_template', 'template/users.php'),
(12, 104, '_wp_page_template', 'template/transactions.php'),
(13, 106, '_wp_page_template', 'template/withdrawals.php'),
(14, 113, '_wp_page_template', 'template/earnings.php'),
(15, 143, '_wp_page_template', 'template/__request_login.php'),
(16, 145, '_wp_page_template', 'template/__request_session.php'),
(17, 147, '_wp_page_template', 'template/__request_logout.php'),
(18, 149, '_wp_page_template', 'template/__request_admin-add-user.php'),
(19, 151, '_wp_page_template', 'template/__request_admin-add-withdrawal.php'),
(20, 153, '_wp_page_template', 'template/__request_admin-delete-user.php'),
(21, 155, '_wp_page_template', 'template/__request_admin-transactions.php'),
(22, 157, '_wp_page_template', 'template/__request_admin-users.php'),
(23, 159, '_wp_page_template', 'template/__request_admin-withdrawals.php'),
(24, 161, '_wp_page_template', 'template/__request_regular-earnings.php'),
(25, 163, '_wp_page_template', 'template/__request_regular-pairing.php'),
(26, 165, '_wp_page_template', 'template/__request_regular-transactions.php'),
(27, 167, '_wp_page_template', 'template/__request_regular-withdrawals.php'),
(28, 169, '_wp_page_template', 'template/__request_update-user.php'),
(29, 171, '_wp_page_template', 'template/__request_update-withdrawal.php'),
(30, 173, '_wp_page_template', 'template/__request_user-downline.php'),
(33, 176, '_edit_lock', '1561027750:1'),
(34, 176, '_wp_page_template', 'template/settings.php'),
(35, 178, '_edit_lock', '1561027814:1'),
(36, 178, '_wp_page_template', 'template/__request_update-main-settings.php'),
(40, 149, '_edit_lock', '1562236180:1'),
(38, 181, '_edit_lock', '1561028141:1'),
(39, 181, '_wp_page_template', 'template/__request_admin-main-settings.php'),
(41, 184, '_edit_lock', '1562238080:1');

-- --------------------------------------------------------

--
-- Table structure for table `274_posts`
--

CREATE TABLE `274_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `274_posts`
--

INSERT INTO `274_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-02 04:00:27', '2019-06-02 04:00:27', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-06-02 04:00:27', '2019-06-02 04:00:27', '', 0, 'https://juncture.global/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-02 04:00:27', '2019-06-02 04:00:27', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://juncture.global/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-06-02 04:00:27', '2019-06-02 04:00:27', '', 0, 'https://juncture.global/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-02 04:00:27', '2019-06-02 04:00:27', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://juncture.global.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-06-02 04:00:27', '2019-06-02 04:00:27', '', 0, 'https://juncture.global/?page_id=3', 0, 'page', '', 0),
(184, 1, '2019-07-04 10:32:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-04 10:32:33', '0000-00-00 00:00:00', '', 0, 'https://juncture.global/?page_id=184', 0, 'page', '', 0),
(176, 1, '2019-06-20 10:51:29', '2019-06-20 10:51:29', '', 'Main Settings', '', 'publish', 'closed', 'closed', '', 'main-settings', '', '', '2019-06-20 10:51:29', '2019-06-20 10:51:29', '', 11, 'https://juncture.global/?page_id=176', 0, 'page', '', 0),
(177, 1, '2019-06-20 10:51:29', '2019-06-20 10:51:29', '', 'Main Settings', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2019-06-20 10:51:29', '2019-06-20 10:51:29', '', 176, 'https://juncture.global/176-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-04-07 14:35:25', '2019-04-07 14:35:25', '\n						', 'Home', '\n						', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-04-07 14:35:25', '2019-04-07 14:35:25', '', 0, 'http://localhost/juncture/?page_id=9', 0, 'page', '', 0),
(11, 1, '2019-04-08 05:43:17', '2019-04-08 05:43:17', '\n						', 'Dashboard', '\n						', 'publish', 'closed', 'closed', '', 'dashboard', '', '', '2019-04-08 05:43:17', '2019-04-08 05:43:17', '', 0, 'http://localhost/juncture/?page_id=11', 0, 'page', '', 0),
(89, 1, '2019-04-08 10:09:14', '2019-04-08 10:09:14', '\n						', 'Page Error', '\n						', 'publish', 'closed', 'closed', '', 'page-error', '', '', '2019-04-08 10:09:14', '2019-04-08 10:09:14', '', 0, 'http://localhost/juncture/?page_id=89', 0, 'page', '', 0),
(93, 1, '2019-04-08 10:25:07', '2019-04-08 10:25:07', '\n						', 'Register', '\n						', 'publish', 'closed', 'closed', '', 'register', '', '', '2019-04-08 10:25:07', '2019-04-08 10:25:07', '', 0, 'http://localhost/juncture/?page_id=93', 0, 'page', '', 0),
(96, 1, '2019-04-14 12:15:04', '2019-04-14 12:15:04', '\n						', 'Binary', '\n						', 'publish', 'closed', 'closed', '', 'binary', '', '', '2019-04-14 12:15:04', '2019-04-14 12:15:04', '', 11, 'http://localhost/juncture/?page_id=96', 0, 'page', '', 0),
(99, 1, '2019-05-01 03:24:15', '2019-05-01 03:24:15', '\n						', 'Login', '\n						', 'publish', 'closed', 'closed', '', 'login', '', '', '2019-05-01 03:24:15', '2019-05-01 03:24:15', '', 0, 'http://localhost/juncture/?page_id=99', 0, 'page', '', 0),
(102, 1, '2019-05-07 02:36:32', '2019-05-07 02:36:32', '\n						', 'Users', '\n						', 'publish', 'closed', 'closed', '', 'users', '', '', '2019-05-07 02:36:32', '2019-05-07 02:36:32', '', 11, 'http://localhost/juncture/?page_id=102', 0, 'page', '', 0),
(104, 1, '2019-05-08 06:33:28', '2019-05-08 06:33:28', '\n						', 'Transactions', '\n						', 'publish', 'closed', 'closed', '', 'transactions', '', '', '2019-05-08 06:33:28', '2019-05-08 06:33:28', '', 11, 'http://localhost/juncture/?page_id=104', 0, 'page', '', 0),
(106, 1, '2019-05-08 06:47:50', '2019-05-08 06:47:50', '\n						', 'Withdrawals', '\n						', 'publish', 'closed', 'closed', '', 'withdrawals', '', '', '2019-05-08 06:47:50', '2019-05-08 06:47:50', '', 11, 'http://localhost/juncture/?page_id=106', 0, 'page', '', 0),
(113, 1, '2019-05-12 05:21:43', '2019-05-12 05:21:43', '\n						', 'Earnings', '\n						', 'publish', 'closed', 'closed', '', 'earnings', '', '', '2019-05-12 05:21:43', '2019-05-12 05:21:43', '', 11, 'http://localhost/juncture/?page_id=113', 0, 'page', '', 0),
(139, 1, '2019-06-01 14:30:21', '2019-06-01 14:30:21', '\n						', 'Request', '\n						', 'publish', 'closed', 'closed', '', 'request', '', '', '2019-06-01 14:30:21', '2019-06-01 14:30:21', '', 0, 'http://localhost/juncture/?page_id=139', 0, 'page', '', 0),
(143, 1, '2019-06-01 14:49:43', '2019-06-01 14:49:43', '\n						', 'Login', '\n						', 'publish', 'closed', 'closed', '', 'login', '', '', '2019-06-01 14:49:43', '2019-06-01 14:49:43', '', 139, 'http://localhost/juncture/?page_id=143', 0, 'page', '', 0),
(145, 1, '2019-06-01 14:50:10', '2019-06-01 14:50:10', '\n						', 'Session', '\n						', 'publish', 'closed', 'closed', '', 'session', '', '', '2019-06-01 14:50:10', '2019-06-01 14:50:10', '', 139, 'http://localhost/juncture/?page_id=145', 0, 'page', '', 0),
(147, 1, '2019-06-02 00:28:30', '2019-06-02 00:28:30', '\n						', 'Logout', '\n						', 'publish', 'closed', 'closed', '', 'logout', '', '', '2019-06-02 00:28:30', '2019-06-02 00:28:30', '', 139, 'http://localhost/juncture/?page_id=147', 0, 'page', '', 0),
(149, 1, '2019-06-02 00:29:10', '2019-06-02 00:29:10', '\n						', 'Admin Add User', '\n						', 'publish', 'closed', 'closed', '', 'admin-add-user', '', '', '2019-06-02 00:29:10', '2019-06-02 00:29:10', '', 139, 'http://localhost/juncture/?page_id=149', 0, 'page', '', 0),
(151, 1, '2019-06-02 00:29:39', '2019-06-02 00:29:39', '\n						', 'Admin Add Withdrawal', '\n						', 'publish', 'closed', 'closed', '', 'admin-add-withdrawal', '', '', '2019-06-02 00:29:39', '2019-06-02 00:29:39', '', 139, 'http://localhost/juncture/?page_id=151', 0, 'page', '', 0),
(153, 1, '2019-06-02 00:30:03', '2019-06-02 00:30:03', '\n						', 'Admin Delete User', '\n						', 'publish', 'closed', 'closed', '', 'admin-delete-user', '', '', '2019-06-02 00:30:03', '2019-06-02 00:30:03', '', 139, 'http://localhost/juncture/?page_id=153', 0, 'page', '', 0),
(155, 1, '2019-06-02 00:30:30', '2019-06-02 00:30:30', '\n						', 'Admin Transactions', '\n						', 'publish', 'closed', 'closed', '', 'admin-transactions', '', '', '2019-06-02 00:30:30', '2019-06-02 00:30:30', '', 139, 'http://localhost/juncture/?page_id=155', 0, 'page', '', 0),
(157, 1, '2019-06-02 00:30:49', '2019-06-02 00:30:49', '\n						', 'Admin Users', '\n						', 'publish', 'closed', 'closed', '', 'admin-users', '', '', '2019-06-02 00:30:49', '2019-06-02 00:30:49', '', 139, 'http://localhost/juncture/?page_id=157', 0, 'page', '', 0),
(159, 1, '2019-06-02 00:31:09', '2019-06-02 00:31:09', '\n						', 'Admin Withdrawals', '\n						', 'publish', 'closed', 'closed', '', 'admin-withdrawals', '', '', '2019-06-02 00:31:09', '2019-06-02 00:31:09', '', 139, 'http://localhost/juncture/?page_id=159', 0, 'page', '', 0),
(161, 1, '2019-06-02 00:31:28', '2019-06-02 00:31:28', '\n						', 'Regular Earnings', '\n						', 'publish', 'closed', 'closed', '', 'regular-earnings', '', '', '2019-06-02 00:31:28', '2019-06-02 00:31:28', '', 139, 'http://localhost/juncture/?page_id=161', 0, 'page', '', 0),
(162, 1, '2019-04-07 13:31:55', '2019-04-07 13:31:55', '\n				<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->		', 'Hello world!', '\n						', 'publish', 'open', 'open', '', 'hello-world-2', '', '', '2019-04-07 13:31:55', '2019-04-07 13:31:55', '', 0, 'http://localhost/juncture/?p=1', 0, 'post', '', 1),
(163, 1, '2019-06-02 00:31:49', '2019-06-02 00:31:49', '\n						', 'Regular Pairing', '\n						', 'publish', 'closed', 'closed', '', 'regular-pairing', '', '', '2019-06-02 00:31:49', '2019-06-02 00:31:49', '', 139, 'http://localhost/juncture/?page_id=163', 0, 'page', '', 0),
(165, 1, '2019-06-02 00:32:09', '2019-06-02 00:32:09', '\n						', 'Regular Transactions', '\n						', 'publish', 'closed', 'closed', '', 'regular-transactions', '', '', '2019-06-02 00:32:09', '2019-06-02 00:32:09', '', 139, 'http://localhost/juncture/?page_id=165', 0, 'page', '', 0),
(167, 1, '2019-06-02 00:32:29', '2019-06-02 00:32:29', '\n						', 'Regular Withdrawals', '\n						', 'publish', 'closed', 'closed', '', 'regular-withdrawals', '', '', '2019-06-02 00:32:29', '2019-06-02 00:32:29', '', 139, 'http://localhost/juncture/?page_id=167', 0, 'page', '', 0),
(169, 1, '2019-06-02 00:32:55', '2019-06-02 00:32:55', '\n						', 'Update User', '\n						', 'publish', 'closed', 'closed', '', 'update-user', '', '', '2019-06-02 00:32:55', '2019-06-02 00:32:55', '', 139, 'http://localhost/juncture/?page_id=169', 0, 'page', '', 0),
(171, 1, '2019-06-02 00:33:16', '2019-06-02 00:33:16', '\n						', 'Update Withdrawal', '\n						', 'publish', 'closed', 'closed', '', 'update-withdrawal', '', '', '2019-06-02 00:33:16', '2019-06-02 00:33:16', '', 139, 'http://localhost/juncture/?page_id=171', 0, 'page', '', 0),
(173, 1, '2019-06-02 00:33:32', '2019-06-02 00:33:32', '\n						', 'User Downline', '\n						', 'publish', 'closed', 'closed', '', 'user-downline', '', '', '2019-06-02 00:33:32', '2019-06-02 00:33:32', '', 139, 'http://localhost/juncture/?page_id=173', 0, 'page', '', 0),
(178, 1, '2019-06-20 10:52:16', '2019-06-20 10:52:16', '', 'Update Main Settings', '', 'publish', 'closed', 'closed', '', 'update-main-settings', '', '', '2019-06-20 10:52:16', '2019-06-20 10:52:16', '', 139, 'https://juncture.global/?page_id=178', 0, 'page', '', 0),
(179, 1, '2019-06-20 10:52:16', '2019-06-20 10:52:16', '', 'Update Main Settings', '', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2019-06-20 10:52:16', '2019-06-20 10:52:16', '', 178, 'https://juncture.global/178-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2019-06-28 09:01:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-28 09:01:20', '0000-00-00 00:00:00', '', 0, 'https://juncture.global/?p=183', 0, 'post', '', 0),
(181, 1, '2019-06-20 10:58:02', '2019-06-20 10:58:02', '', 'Main Settings', '', 'publish', 'closed', 'closed', '', 'main-settings', '', '', '2019-06-20 10:58:02', '2019-06-20 10:58:02', '', 139, 'https://juncture.global/?page_id=181', 0, 'page', '', 0),
(182, 1, '2019-06-20 10:58:02', '2019-06-20 10:58:02', '', 'Main Settings', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2019-06-20 10:58:02', '2019-06-20 10:58:02', '', 181, 'https://juncture.global/181-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `274_termmeta`
--

CREATE TABLE `274_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `274_terms`
--

CREATE TABLE `274_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `274_terms`
--

INSERT INTO `274_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `274_term_relationships`
--

CREATE TABLE `274_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `274_term_relationships`
--

INSERT INTO `274_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(162, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `274_term_taxonomy`
--

CREATE TABLE `274_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `274_term_taxonomy`
--

INSERT INTO `274_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `274_usermeta`
--

CREATE TABLE `274_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `274_usermeta`
--

INSERT INTO `274_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ninojoevelz'),
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
(12, 1, '274_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, '274_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(20, 1, 'session_tokens', 'a:1:{s:64:\"a3a68c0e98ae3e32de96714bc658e333e0dbd0b5b4d82f11bb917cf9764e6b35\";a:4:{s:10:\"expiration\";i:1562386396;s:2:\"ip\";s:14:\"222.127.48.223\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1562213596;}}'),
(17, 1, '274_dashboard_quick_press_last_post_id', '183'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"222.127.48.0\";}'),
(19, 1, 'default_password_nag', '');

-- --------------------------------------------------------

--
-- Table structure for table `274_users`
--

CREATE TABLE `274_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `274_users`
--

INSERT INTO `274_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ninojoevelz', '$P$BD0jU33mE86/UNuuswZuoBt3azn1fY.', 'ninojoevelz', 'ninojoevelz@yahoo.com', '', '2019-06-02 04:00:27', '', 0, 'ninojoevelz');

-- --------------------------------------------------------

--
-- Table structure for table `j_main_settings`
--

CREATE TABLE `j_main_settings` (
  `id` int(11) NOT NULL,
  `set_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `j_main_settings`
--

INSERT INTO `j_main_settings` (`id`, `set_name`, `set_value`) VALUES
(1, 'pairing_bonus', '500'),
(2, 'travel_incentive', '100'),
(3, 'processing_fee', '50'),
(4, 'tax_fee', '10');

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
(000005),
(000011),
(000012),
(000013),
(000014),
(000015),
(000016),
(000017),
(000018),
(000019),
(000020),
(000021),
(000022),
(000023),
(000024),
(000025),
(000026),
(000027),
(000028),
(000029),
(000030),
(000031),
(000032),
(000033),
(000034),
(000035),
(000036),
(000037),
(000038),
(000039),
(000040),
(000041),
(000042),
(000043),
(000044),
(000045),
(000046),
(000047),
(000048),
(000049),
(000050),
(000051),
(000052),
(000053),
(000054),
(000061),
(000062),
(000063),
(000064),
(000065),
(000066),
(000067),
(000068),
(000069),
(000070),
(000071),
(000072),
(000073),
(000074),
(000075),
(000076),
(000077),
(000078),
(000079),
(000080),
(000081),
(000082),
(000083),
(000084),
(000085),
(000086),
(000087),
(000088),
(000089),
(000090),
(000091),
(000092),
(000093),
(000094),
(000095),
(000096),
(000097),
(000098),
(000099),
(000100),
(000101),
(000102),
(000103),
(000104),
(000105),
(000106),
(000107),
(000108),
(000110),
(000111),
(000112),
(000113),
(000114),
(000115),
(000116),
(000117),
(000118),
(000119),
(000120),
(000121),
(000122),
(000123),
(000124),
(000125),
(000126),
(000127),
(000128),
(000129),
(000130),
(000131);

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
(1, 1, '000083', '000084', '000085', 'Pairing', '500', '2019-06-18 07:36:09'),
(2, 1, '000083', '000086', '000089', 'Pairing', '500', '2019-06-18 07:36:09'),
(3, 1, '000083', '000087', '000088', 'Pairing', '500', '2019-06-18 07:36:09');

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
('000001', 'adminjuncture', 'adminjuncture', 'ADMIN', '', '', '', '', ''),
('000002', 'admindev', 'admindev', 'ADMIN', '', '', '', '000003', ''),
('000003', 'JUNCTURE01', 'juncture2019', 'DISTRIBUTOR', '000002', 'RIGHT', '000005', '000011', 'zZfsaRF8m9'),
('000005', 'JUNCTURE02', 'juncture2019', 'DISTRIBUTOR', '000003', 'LEFT', '000012', '000013', 'K4H6mxw5Jt'),
('000011', 'JUNCTURE03', 'juncture2019', 'DISTRIBUTOR', '000003', 'RIGHT', '000014', '000015', 'Xq69ybD7Wu'),
('000012', 'JUNCTURE04', 'juncture2019', 'DISTRIBUTOR', '000005', 'LEFT', '000016', '', '8V4vUqjDL2'),
('000013', 'JUNCTURE05', 'juncture2019', 'DISTRIBUTOR', '000005', 'RIGHT', '000048', '', 'nMt4WnEVzU'),
('000014', 'JUNCTURE06', 'juncture2019', 'DISTRIBUTOR', '000011', 'LEFT', '000108', '000109', 'WQcZPNXAdA'),
('000015', 'JUNCTURE07', 'juncture2019', 'DISTRIBUTOR', '000011', 'RIGHT', '000067', '', '9jNxZHjDwW'),
('000016', 'JUNEBERTDAGUM', 'diakono', 'DISTRIBUTOR', '000012', 'LEFT', '000017', '000018', 'PHzLrNkzLB'),
('000017', 'JUNBERTDAGUM', 'diakono', 'DISTRIBUTOR', '000016', 'LEFT', '000019', '000020', 'aghHAUPcsk'),
('000018', 'JUNEBERTDAGUM', 'diakono', 'DISTRIBUTOR', '000016', 'RIGHT', '000021', '000022', 'vowVH1EdwH'),
('000019', 'JUNEBERTDAGUM', 'diakono', 'DISTRIBUTOR', '000017', 'LEFT', '000023', '', '09Jyk9VFCM'),
('000020', 'JUNEBERTDAGUM', 'diakono', 'DISTRIBUTOR', '000017', 'RIGHT', '', '', 'cuCeZPxfBY'),
('000021', 'JUNBERTDAGUM', 'diakono', 'DISTRIBUTOR', '000018', 'LEFT', '000120', '', 'H6OVcJ1oc6'),
('000022', 'JUNBERTDAGUM', 'diakono', 'DISTRIBUTOR', '000018', 'RIGHT', '', '000061', 'mWis7cddnQ'),
('000023', 'MICHAELRESURRECCION', '123', 'DISTRIBUTOR', '000019', 'LEFT', '000024', '000025', '71gK8zmxcT'),
('000024', 'MICHAELRESURRECCION', '123', 'DISTRIBUTOR', '000023', 'LEFT', '000026', '000027', 'T9kg2lSvzX'),
('000025', 'MICAHELRESURRECCION', '123', 'DISTRIBUTOR', '000023', 'RIGHT', '000028', '000029', 'EGftmiOo7n'),
('000026', 'MICHAELRESURRECCION', '123', 'DISTRIBUTOR', '000024', 'LEFT', '000030', '', 'aq4Mmr5tZo'),
('000027', 'MICHAELRESURRECCION', '123', 'DISTRIBUTOR', '000024', 'RIGHT', '', '', 'G5QTTkuDdC'),
('000028', 'MICHAELRESURRECCION', '123', 'DISTRIBUTOR', '000025', 'LEFT', '', '', 'Zc1FacAyOc'),
('000029', 'MICHAELRESURRECCION', '123', 'DISTRIBUTOR', '000025', 'RIGHT', '', '000044', 'TRd4vliuA8'),
('000030', 'NINARESURRECCION', '123', 'DISTRIBUTOR', '000026', 'LEFT', '000031', '', 'SvkUcfhj6x'),
('000031', 'NINARESSURRECCION', '123', 'DISTRIBUTOR', '000030', 'LEFT', '000032', '', 'qLTlx3XWV4'),
('000032', 'CLYFORDALLEGO', '123', 'DISTRIBUTOR', '000031', 'LEFT', '000033', '', 'czt9H3qLJD'),
('000033', 'CLYFORDALLEGO', '123', 'DISTRIBUTOR', '000032', 'LEFT', '000034', '', '6lzI1mssWK'),
('000034', 'CLYFORDALLEGO', '123', 'DISTRIBUTOR', '000033', 'LEFT', '000035', '', 'dskZQq4XUm'),
('000035', 'JOEMARANGANA', '123', 'DISTRIBUTOR', '000034', 'LEFT', '000036', '', 'EvD8ikLjgI'),
('000036', 'JOEMARANGANA', '123', 'DISTRIBUTOR', '000035', 'LEFT', '000037', '', 'vyENYxR6iA'),
('000037', 'JOEMARANGANA', '123', 'DISTRIBUTOR', '000036', 'LEFT', '000038', '', '8xKwWGfDWL'),
('000038', 'ORLANDSIPALAY', '123', 'DISTRIBUTOR', '000037', 'LEFT', '000039', '', 'hSUpKzdtVT'),
('000039', 'ORLANDSIPALAY', '123', 'DISTRIBUTOR', '000038', 'LEFT', '000040', '', 'yg5DlgNOk9'),
('000040', 'ORLANDSIPALAY', '123', 'DISTRIBUTOR', '000039', 'LEFT', '000041', '', 'eLp5bY6LVR'),
('000041', 'RAYMUNDTUGADO', '123', 'DISTRIBUTOR', '000040', 'LEFT', '000042', '', 'ILngQTcwDc'),
('000042', 'RAYMUNDTUGADO', '123', 'DISTRIBUTOR', '000041', 'LEFT', '000043', '', 'MrSinCnNgq'),
('000043', 'RAYMUNDTUGADO', '123', 'DISTRIBUTOR', '000042', 'LEFT', '', '', 'j0inwRvSyX'),
('000044', 'SWITCHERJOHN', 'haddes', 'DISTRIBUTOR', '000029', 'RIGHT', '', '000045', 'A7OTK5ljvs'),
('000045', 'SWITCHERJOHN', 'haddes', 'DISTRIBUTOR', '000044', 'RIGHT', '', '000046', '0XSz6szelP'),
('000046', 'SWITCHERJOHN', 'haddes', 'DISTRIBUTOR', '000045', 'RIGHT', '', '000047', 'cRiGM8YYTJ'),
('000047', 'MARYJOYESCANILLAN', '123', 'DISTRIBUTOR', '000046', 'RIGHT', '', '', 'EgIlLBSr53'),
('000048', 'RHETTBENSONPOGOY', '05131998', 'DISTRIBUTOR', '000013', 'LEFT', '000049', '000050', 'VEvXOShAX1'),
('000049', 'RHETTBENSONPOGOY', '05131998', 'DISTRIBUTOR', '000048', 'LEFT', '000051', '000052', 'xOVf87NSbu'),
('000050', 'RHETTBENSONPOGOY', '05131998', 'DISTRIBUTOR', '000048', 'RIGHT', '000053', '000054', 'gCG2bwNt1Q'),
('000051', 'RHETTBENSONPOGOY', '05131998', 'DISTRIBUTOR', '000049', 'LEFT', '000106', '', 'QMPzU05qgu'),
('000052', 'RHETTBENSONPOGOY', '05131998', 'DISTRIBUTOR', '000049', 'RIGHT', '', '', 'kpbDjc0P2Y'),
('000053', 'RHETTBENSONPOGOY', '05131998', 'DISTRIBUTOR', '000050', 'LEFT', '', '', '9zchJiyeUs'),
('000054', 'RHETTBENSONPOGOY', '05131998', 'DISTRIBUTOR', '000050', 'RIGHT', '', '', 'MH7cDxsGbd'),
('000061', 'CIRILOALINSONORIN', '123', 'DISTRIBUTOR', '000022', 'RIGHT', '', '000062', 'ZmHoIzSQmu'),
('000062', 'CIRILOALINSONORIN', '123', 'DISTRIBUTOR', '000061', 'RIGHT', '', '000063', 'gSqvOB9pW2'),
('000063', 'CIRILOALINSONORIN', '123', 'DISTRIBUTOR', '000062', 'RIGHT', '', '000064', 'NVMOAHfKtV'),
('000064', 'MERLINDAROSOS', '123', 'DISTRIBUTOR', '000063', 'RIGHT', '', '000065', 'CYVOk1ep9Q'),
('000065', 'MERLINDAROSOS', '123', 'DISTRIBUTOR', '000064', 'RIGHT', '', '000066', 'xjRSGM9rrm'),
('000066', 'MERLINDAROSOS', '123', 'DISTRIBUTOR', '000065', 'RIGHT', '', '000116', 'kNTQZbxu1E'),
('000067', 'EDWINTORREJOS', '012345', 'DISTRIBUTOR', '000015', 'LEFT', '000068', '000069', 'rBEiYVAHa2'),
('000068', 'EDWINTORREJOS', '012345', 'DISTRIBUTOR', '000067', 'LEFT', '000070', '000071', 'm2Z8LLnOdC'),
('000069', 'EDWINTORREJOS', '012345', 'DISTRIBUTOR', '000067', 'RIGHT', '000072', '000073', 'APredlYX9b'),
('000070', 'EDWINTORREJOS', '012345', 'DISTRIBUTOR', '000068', 'LEFT', '000093', '', '7OS76BFbFJ'),
('000071', 'EDWINTORREJOS', '012345', 'DISTRIBUTOR', '000068', 'RIGHT', '', '', 'EBnKavvdam'),
('000072', 'EDWINTORREJOS', '012345', 'DISTRIBUTOR', '000069', 'LEFT', '', '', 'BBa1qfp953'),
('000073', 'EDWINTORREJOS', '012345', 'DISTRIBUTOR', '000069', 'RIGHT', '000074', '', '67OxgiQfse'),
('000074', 'JUNEEARLPANGATUNGAN', '123', 'DISTRIBUTOR', '000073', 'LEFT', '000075', '000076', 'OH3iyAiGkw'),
('000075', 'JUNEEARLPANGATUNGAN', '123', 'DISTRIBUTOR', '000074', 'LEFT', '', '', 'pCRjKCQatx'),
('000076', 'JUNEEARLPANGATUNGAN', '123', 'DISTRIBUTOR', '000074', 'RIGHT', '', '000077', 'yh7iBE82UK'),
('000077', 'JUNEEARLPANGATUNGAN', '123', 'DISTRIBUTOR', '000076', 'RIGHT', '', '000078', 'vDD4dlt9NS'),
('000078', 'JEFFREYSAYSON', '123', 'DISTRIBUTOR', '000077', 'RIGHT', '000079', '000080', 'hvXLmu6236'),
('000079', 'JEFFREYSAYSON', '123', 'DISTRIBUTOR', '000078', 'LEFT', '', '', 'qBPcP4rIDN'),
('000080', 'JEFFREYSAYSON', '123', 'DISTRIBUTOR', '000078', 'RIGHT', '000081', '000082', 'wcAGFAqwgg'),
('000081', 'JEFFREYSAYSON', '123', 'DISTRIBUTOR', '000080', 'LEFT', '', '', 'YAjgAsEWnh'),
('000082', 'JEFFREYSAYSON', '123', 'DISTRIBUTOR', '000080', 'RIGHT', '', '000083', 'BST8m9PkWp'),
('000083', 'RODEOVILLEGAS', '123', 'DISTRIBUTOR', '000082', 'RIGHT', '000084', '000085', 'vHHErG48GG'),
('000084', 'RODEOVILLEGAS', '123', 'DISTRIBUTOR', '000083', 'LEFT', '000086', '000087', '9epAUudjUG'),
('000085', 'RODEOVILLEGAS', '123', 'DISTRIBUTOR', '000083', 'RIGHT', '000088', '000089', 'v9yZ26Hn6X'),
('000086', 'RODEOVILLEGAS', '123', 'DISTRIBUTOR', '000084', 'LEFT', '', '', 'M12gTptq2c'),
('000087', 'RODEOVILLEGAS', '123', 'DISTRIBUTOR', '000084', 'RIGHT', '', '', 'ZsjBm4O3kd'),
('000088', 'RODEOVILLEGAS', '123', 'DISTRIBUTOR', '000085', 'LEFT', '', '', 'xocd75khjg'),
('000089', 'RODEOVILLEGAS', '123', 'DISTRIBUTOR', '000085', 'RIGHT', '', '000090', '0PA6ePs8kS'),
('000090', 'KENNMATEDIOS', '123', 'DISTRIBUTOR', '000089', 'RIGHT', '', '000091', 'msfzYBQQAV'),
('000091', 'IVONIESIAROT', '123', 'DISTRIBUTOR', '000090', 'RIGHT', '', '000092', 'j2a8KkLEl1'),
('000092', 'JUNASUMAYANG', '123', 'DISTRIBUTOR', '000091', 'RIGHT', '', '', 'rfzy9k3QGy'),
('000093', 'JOSEPHINEESTRELLA', '123', 'DISTRIBUTOR', '000070', 'LEFT', '000094', '', 'tGCA4TvHoq'),
('000094', 'GISRELESTRELLA', '123', 'DISTRIBUTOR', '000093', 'LEFT', '000095', '000096', 'SafUgtK7fg'),
('000095', 'GISRELESTRELLA', '123', 'DISTRIBUTOR', '000094', 'LEFT', '000097', '', 'CH9O5KnWBq'),
('000096', 'CEPRIANOTORREJOS', '123', 'DISTRIBUTOR', '000094', 'RIGHT', '', '', 'e7KwyHF94E'),
('000097', 'CONSTANCIABERTULDO', '123', 'DISTRIBUTOR', '000095', 'LEFT', '000098', '000099', 'TuJhMQ6esR'),
('000098', 'CONSTANCIABERTULDO', '123', 'DISTRIBUTOR', '000097', 'LEFT', '000100', '000101', 'ArpUtsehNI'),
('000099', 'CONSTANCIABERTULDO', '123', 'DISTRIBUTOR', '000097', 'RIGHT', '000102', '000103', 'aFWOrhsl4n'),
('000100', 'CONSTANCIABERTULDO', '123', 'DISTRIBUTOR', '000098', 'LEFT', '000105', '', 'rNlnlhUM95'),
('000101', 'CONSTANCIABERTULDO', '123', 'DISTRIBUTOR', '000098', 'RIGHT', '', '', 'AgXJYmVEfu'),
('000102', 'CONSTANCIABERTULDO', '123', 'DISTRIBUTOR', '000099', 'LEFT', '', '', 'Vq9qm0Sxom'),
('000103', 'CONSTANCIABERTULDO', '123', 'DISTRIBUTOR', '000099', 'RIGHT', '', '', 'RDh0AN838R'),
('000105', 'CRISPINOTOM', '123', 'DISTRIBUTOR', '000100', 'LEFT', '', '', 'iDTCWuXVTR'),
('000106', 'ALEMARPOGOY', '123', 'DISTRIBUTOR', '000051', 'LEFT', '000107', '', 'TaEeTsF6Um'),
('000107', 'MILLIONAIREGURL', 'Encantadia', 'DISTRIBUTOR', '000106', 'LEFT', '', '', 'YSjRbz37Dd'),
('000108', 'ROWELAUGUSTO', 'pinakagwapo', 'DISTRIBUTOR', '000014', 'LEFT', '000110', '000111', 'QYo00DRZox'),
('000110', 'ROWELAUGUSTO', 'pinakagwapo', 'DISTRIBUTOR', '000108', 'LEFT', '000112', '000113', 'swDbYv0d8K'),
('000111', 'ROWELAUGUTO', 'pinakagwapo', 'DISTRIBUTOR', '000108', 'RIGHT', '000114', '000115', 'g7BPVBILvB'),
('000112', 'ROWELAUGUSTO', 'pinakatisoy', 'DISTRIBUTOR', '000110', 'LEFT', '000131', '', 'J6gJhxHVXb'),
('000113', 'ROWELAUGUSTO', 'pinakatisoy', 'DISTRIBUTOR', '000110', 'RIGHT', '', '', 'TMsJuLHBIB'),
('000114', 'ROWELAUGUSTO', 'pinakagwapo', 'DISTRIBUTOR', '000111', 'LEFT', '', '', 'VpXLDCF5yT'),
('000115', 'ROWELAUGUSTO', 'pinakagwapo', 'DISTRIBUTOR', '000111', 'RIGHT', '', '', 'YGsTSCSQBO'),
('000116', 'LOUIGERAYA', '123', 'DISTRIBUTOR', '000066', 'RIGHT', '', '000117', '4g37tGynZV'),
('000117', 'JHAYARSILAYA', '123', 'DISTRIBUTOR', '000116', 'RIGHT', '', '000118', 'cDNgvgSjjl'),
('000118', 'JHAYARSILAYA', '123', 'DISTRIBUTOR', '000117', 'RIGHT', '', '000119', 'CGOVRQWPpG'),
('000119', 'JHAYARSILAYA', '123', 'DISTRIBUTOR', '000118', 'RIGHT', '', '', 'cKPYQl1O3G'),
('000120', 'MARVINCARILLAS', '123', 'DISTRIBUTOR', '000021', 'LEFT', '000121', '000122', '5fbfV3YZFw'),
('000121', 'MARVINCARILLAS', '123', 'DISTRIBUTOR', '000120', 'LEFT', '000123', '000124', 'M0e4Pq0Ust'),
('000122', 'MARVINCARILLAS', '123', 'DISTRIBUTOR', '000120', 'RIGHT', '000125', '000126', 'g56xgnoNvQ'),
('000123', 'MARVINCARILLAS', '123', 'DISTRIBUTOR', '000121', 'LEFT', '000127', '', '6bJmfJKKzc'),
('000124', 'MARVINCARILLAS', '123', 'DISTRIBUTOR', '000121', 'RIGHT', '', '', 'ca0bGLgiNf'),
('000125', 'MARVINCARILLAS', '123', 'DISTRIBUTOR', '000122', 'LEFT', '', '', 'ZaGHw0qk4U'),
('000126', 'MARVINCARILLAS', '123', 'DISTRIBUTOR', '000122', 'RIGHT', '', '000129', 'cLVVR13Di2'),
('000127', 'MERRYROSEARRIESGADO', '123', 'DISTRIBUTOR', '000123', 'LEFT', '000128', '', 'BMZ58gaW1k'),
('000128', 'VINEDIVINAGRACIA', '123', 'DISTRIBUTOR', '000127', 'LEFT', '', '', 'oO0Kw1w06L'),
('000129', 'DANILOUGSANG', '123', 'DISTRIBUTOR', '000126', 'RIGHT', '', '000130', '8OxT9EiIjO'),
('000130', 'MARKANTHONYAUGUSTO', '123', 'DISTRIBUTOR', '000129', 'RIGHT', '', '', 'uCr1ZaxZzK'),
('000131', 'RUELICOY', 'DU7LEG', 'DISTRIBUTOR', '000112', 'LEFT', '', '', 'ThgvwwGOgW');

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
(1, 1, '000083', '1020', 'WITHDRAWAL', '2019-06-18 07:38:18');

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
(1, '000083', 1020, '2019-06-18 07:38:18', 'APPROVED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `274_commentmeta`
--
ALTER TABLE `274_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `274_comments`
--
ALTER TABLE `274_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `274_links`
--
ALTER TABLE `274_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `274_options`
--
ALTER TABLE `274_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `274_postmeta`
--
ALTER TABLE `274_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `274_posts`
--
ALTER TABLE `274_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `274_termmeta`
--
ALTER TABLE `274_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `274_terms`
--
ALTER TABLE `274_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `274_term_relationships`
--
ALTER TABLE `274_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `274_term_taxonomy`
--
ALTER TABLE `274_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `274_usermeta`
--
ALTER TABLE `274_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `274_users`
--
ALTER TABLE `274_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `j_main_settings`
--
ALTER TABLE `j_main_settings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `274_commentmeta`
--
ALTER TABLE `274_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `274_comments`
--
ALTER TABLE `274_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `274_links`
--
ALTER TABLE `274_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `274_options`
--
ALTER TABLE `274_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3542;

--
-- AUTO_INCREMENT for table `274_postmeta`
--
ALTER TABLE `274_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `274_posts`
--
ALTER TABLE `274_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `274_termmeta`
--
ALTER TABLE `274_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `274_terms`
--
ALTER TABLE `274_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `274_term_taxonomy`
--
ALTER TABLE `274_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `274_usermeta`
--
ALTER TABLE `274_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `274_users`
--
ALTER TABLE `274_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `j_main_settings`
--
ALTER TABLE `j_main_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `j_users`
--
ALTER TABLE `j_users`
  MODIFY `user_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `j_users_earnings`
--
ALTER TABLE `j_users_earnings`
  MODIFY `earning_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `j_users_transactions`
--
ALTER TABLE `j_users_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `j_users_withdrawal_status`
--
ALTER TABLE `j_users_withdrawal_status`
  MODIFY `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
