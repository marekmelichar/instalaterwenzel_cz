-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost
-- Vytvořeno: Úte 19. říj 2021, 09:35
-- Verze serveru: 5.7.32-35-log
-- Verze PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `marekmel_wp544`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_comments`
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

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_links`
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
-- Struktura tabulky `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://instalaterwenzel.cz', 'yes'),
(2, 'home', 'http://instalaterwenzel.cz', 'yes'),
(3, 'blogname', 'Instalatér Pavel Wenzel', 'yes'),
(4, 'blogdescription', 'Instalatér Pavel Wenzel', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marek@marekmelichar.cz', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:34:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml$\";s:40:\"index.php?xml_sitemap=params=$matches[2]\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml\\.gz$\";s:49:\"index.php?xml_sitemap=params=$matches[2];zip=true\";s:35:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html$\";s:50:\"index.php?xml_sitemap=params=$matches[2];html=true\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html.gz$\";s:59:\"index.php?xml_sitemap=params=$matches[2];html=true;zip=true\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:15:\"worker/init.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:31:\"easy-fancybox/easy-fancybox.php\";i:5;s:36:\"google-sitemap-generator/sitemap.php\";i:6;s:45:\"tiny-compress-images/tiny-compress-images.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:92:\"/Applications/MAMP/htdocs/wp_pavel_wenzel/wp-content/plugins/wp-lightbox-2/wp-lightbox-2.php\";i:1;s:91:\"/Applications/MAMP/htdocs/wp_pavel_wenzel/wp-content/plugins/advanced-custom-fields/acf.php\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'instalater_wenzel', 'yes'),
(41, 'stylesheet', 'instalater_wenzel', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:5:{s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";s:27:\"autoptimize/autoptimize.php\";s:21:\"autoptimize_uninstall\";s:20:\"worker/functions.php\";s:13:\"mwp_uninstall\";s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:89:\"home/customer/www/instalaterwenzel.cz/public_html/wp-content/plugins/worker/functions.php\";s:13:\"mwp_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'cron', 'a:12:{i:1634339027;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1634364305;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1634367138;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634377192;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1634379395;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634395560;a:1:{s:22:\"mwp_update_public_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634411071;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634415072;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634418903;a:1:{s:13:\"sm_ping_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634420415;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634926229;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1488913759;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(117, 'can_compress_scripts', '1', 'no'),
(136, 'recently_activated', 'a:2:{s:27:\"autoptimize/autoptimize.php\";i:1510912587;s:27:\"wp-super-cache/wp-cache.php\";i:1510912088;}', 'yes'),
(137, 'current_theme', 'Instalater Wenzel', 'yes'),
(138, 'theme_mods_instalater_wenzel', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(140, 'theme_mods_twentyfifteen', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1488663997;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(141, 'theme_mods_new_portfolio', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1488719156;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(163, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(166, 'WPLANG', '', 'yes'),
(177, 'acf_version', '4.4.12', 'yes'),
(193, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1488827603;s:7:\"version\";s:3:\"4.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(201, 'jqlb_help_text', '', 'yes'),
(202, 'jqlb_automate', '1', 'yes'),
(203, 'jqlb_comments', '1', 'yes'),
(204, 'jqlb_resize_on_demand', '0', 'yes'),
(205, 'jqlb_show_download', '0', 'yes'),
(206, 'jqlb_navbarOnTop', '0', 'yes'),
(207, 'jqlb_resize_speed', '400', 'yes'),
(234, 'theme_mods__instalater_wenzel', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1488912672;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(251, 'tinypng_api_key', 'vbyQ5VWo7DqCEd_bRIb-XOoz5G05zjhJ', 'yes'),
(252, 'tinypng_status', '43', 'yes'),
(253, 'tinypng_api_key_pending', '', 'yes'),
(254, 'tinypng_sizes', 'a:6:{s:11:\"_tiny_dummy\";s:2:\"on\";i:0;s:2:\"on\";s:9:\"thumbnail\";s:2:\"on\";s:6:\"medium\";s:2:\"on\";s:12:\"medium_large\";s:2:\"on\";s:5:\"large\";s:2:\"on\";}', 'yes'),
(255, 'tinypng_resize_original', '', 'yes'),
(256, 'tinypng_preserve_data', '', 'yes'),
(257, 'fancybox_enableImg', '1', 'yes'),
(258, 'fancybox_enableInline', '', 'yes'),
(259, 'fancybox_enablePDF', '', 'yes'),
(260, 'fancybox_enableSWF', '', 'yes'),
(261, 'fancybox_enableSVG', '', 'yes'),
(262, 'fancybox_enableYoutube', '', 'yes'),
(263, 'fancybox_enableVimeo', '', 'yes'),
(264, 'fancybox_enableDailymotion', '', 'yes'),
(265, 'fancybox_enableiFrame', '', 'yes'),
(266, 'fancybox_overlayShow', '1', 'yes'),
(267, 'fancybox_hideOnOverlayClick', '1', 'yes'),
(268, 'fancybox_overlayOpacity', '', 'yes'),
(269, 'fancybox_overlayColor', '', 'yes'),
(270, 'fancybox_overlaySpotlight', '', 'yes'),
(271, 'fancybox_showCloseButton', '1', 'yes'),
(272, 'fancybox_backgroundColor', '', 'yes'),
(273, 'fancybox_textColor', '', 'yes'),
(274, 'fancybox_titleColor', '', 'yes'),
(275, 'fancybox_paddingColor', '', 'yes'),
(276, 'fancybox_borderRadius', '', 'yes'),
(277, 'fancybox_width', '', 'yes'),
(278, 'fancybox_height', '', 'yes'),
(279, 'fancybox_padding', '', 'yes'),
(280, 'fancybox_margin', '20', 'yes'),
(281, 'fancybox_centerOnScroll', '1', 'yes'),
(282, 'fancybox_enableEscapeButton', '1', 'yes'),
(283, 'fancybox_autoScale', '1', 'yes'),
(284, 'fancybox_speedIn', '', 'yes'),
(285, 'fancybox_speedOut', '', 'yes'),
(286, 'fancybox_autoClick', '1', 'yes'),
(287, 'fancybox_delayClick', '1000', 'yes'),
(288, 'fancybox_compatIE8', '', 'yes'),
(289, 'fancybox_metaData', '', 'yes'),
(290, 'fancybox_autoAttribute', '.jpg .jpeg .png', 'yes'),
(291, 'fancybox_autoAttributeLimit', '', 'yes'),
(292, 'fancybox_classType', '', 'yes'),
(293, 'fancybox_transitionIn', 'elastic', 'yes'),
(294, 'fancybox_easingIn', 'easeOutBack', 'yes'),
(295, 'fancybox_transitionOut', 'elastic', 'yes'),
(296, 'fancybox_easingOut', 'easeInBack', 'yes'),
(297, 'fancybox_opacity', '', 'yes'),
(298, 'fancybox_hideOnContentClick', '', 'yes'),
(299, 'fancybox_titleShow', '1', 'yes'),
(300, 'fancybox_titlePosition', 'over', 'yes'),
(301, 'fancybox_titleFromAlt', '1', 'yes'),
(302, 'fancybox_autoGallery', '1', 'yes'),
(303, 'fancybox_showNavArrows', '1', 'yes'),
(304, 'fancybox_enableKeyboardNav', '1', 'yes'),
(305, 'fancybox_mouseWheel', '1', 'yes'),
(306, 'fancybox_cyclic', '', 'yes'),
(307, 'fancybox_changeSpeed', '', 'yes'),
(308, 'fancybox_changeFade', '', 'yes'),
(309, 'fancybox_autoSelector', 'div.gallery', 'yes'),
(318, 'ossdl_off_cdn_url', 'http://instalaterwenzel.cz', 'yes'),
(319, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(320, 'ossdl_off_exclude', '.php', 'yes'),
(321, 'ossdl_cname', '', 'yes'),
(323, 'wp_super_cache_index_detected', '3', 'no'),
(324, 'wpsupercache_start', '1488917345', 'yes'),
(325, 'wpsupercache_count', '0', 'yes'),
(328, 'autoptimize_version', '2.1.0', 'yes'),
(330, 'wpsupercache_gc_time', '1510823375', 'yes'),
(345, 'autoptimize_html', '', 'yes'),
(346, 'autoptimize_html_keepcomments', '', 'yes'),
(347, 'autoptimize_js', '', 'yes'),
(348, 'autoptimize_js_exclude', 'seal.js, js/jquery/jquery.js', 'yes'),
(349, 'autoptimize_js_trycatch', '', 'yes'),
(350, 'autoptimize_js_justhead', '', 'yes'),
(351, 'autoptimize_js_forcehead', '', 'yes'),
(352, 'autoptimize_js_include_inline', '', 'yes'),
(353, 'autoptimize_css', '', 'yes'),
(354, 'autoptimize_css_exclude', 'admin-bar.min.css, dashicons.min.css', 'yes'),
(355, 'autoptimize_css_justhead', '', 'yes'),
(356, 'autoptimize_css_datauris', '', 'yes'),
(357, 'autoptimize_css_defer', '', 'yes'),
(358, 'autoptimize_css_defer_inline', '', 'yes'),
(359, 'autoptimize_css_inline', '', 'yes'),
(360, 'autoptimize_css_include_inline', 'on', 'yes'),
(361, 'autoptimize_css_nogooglefont', '', 'yes'),
(362, 'autoptimize_cdn_url', '', 'yes'),
(363, 'autoptimize_cache_clean', '0', 'yes'),
(364, 'autoptimize_cache_nogzip', 'on', 'yes'),
(365, 'autoptimize_show_adv', '0', 'yes'),
(372, 'sm_rewrite_done', '$Id: sitemap-loader.php 937300 2014-06-23 18:04:11Z arnee $', 'yes'),
(373, 'supercache_stats', 'a:3:{s:9:\"generated\";i:1488998430;s:10:\"supercache\";a:5:{s:7:\"expired\";i:0;s:12:\"expired_list\";a:0:{}s:6:\"cached\";i:0;s:11:\"cached_list\";a:0:{}s:2:\"ts\";i:1488998430;}s:7:\"wpcache\";a:3:{s:6:\"cached\";i:0;s:7:\"expired\";i:0;s:5:\"fsize\";s:3:\"0KB\";}}', 'yes'),
(389, 'sm_options', 'a:52:{s:18:\"sm_b_prio_provider\";s:41:\"GoogleSitemapGeneratorPrioByCountProvider\";s:9:\"sm_b_ping\";b:1;s:10:\"sm_b_stats\";b:0;s:12:\"sm_b_pingmsn\";b:1;s:12:\"sm_b_autozip\";b:1;s:11:\"sm_b_memory\";s:0:\"\";s:9:\"sm_b_time\";i:-1;s:18:\"sm_b_style_default\";b:1;s:10:\"sm_b_style\";s:0:\"\";s:12:\"sm_b_baseurl\";s:0:\"\";s:11:\"sm_b_robots\";b:1;s:9:\"sm_b_html\";b:1;s:12:\"sm_b_exclude\";a:0:{}s:17:\"sm_b_exclude_cats\";a:0:{}s:10:\"sm_in_home\";b:1;s:11:\"sm_in_posts\";b:1;s:15:\"sm_in_posts_sub\";b:0;s:11:\"sm_in_pages\";b:1;s:10:\"sm_in_cats\";b:0;s:10:\"sm_in_arch\";b:0;s:10:\"sm_in_auth\";b:0;s:10:\"sm_in_tags\";b:0;s:9:\"sm_in_tax\";a:0:{}s:17:\"sm_in_customtypes\";a:0:{}s:13:\"sm_in_lastmod\";b:1;s:10:\"sm_cf_home\";s:5:\"daily\";s:11:\"sm_cf_posts\";s:7:\"monthly\";s:11:\"sm_cf_pages\";s:6:\"weekly\";s:10:\"sm_cf_cats\";s:6:\"weekly\";s:10:\"sm_cf_auth\";s:6:\"weekly\";s:15:\"sm_cf_arch_curr\";s:5:\"daily\";s:14:\"sm_cf_arch_old\";s:6:\"yearly\";s:10:\"sm_cf_tags\";s:6:\"weekly\";s:10:\"sm_pr_home\";d:1;s:11:\"sm_pr_posts\";d:0.59999999999999997779553950749686919152736663818359375;s:15:\"sm_pr_posts_min\";d:0.200000000000000011102230246251565404236316680908203125;s:11:\"sm_pr_pages\";d:0.59999999999999997779553950749686919152736663818359375;s:10:\"sm_pr_cats\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_arch\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_auth\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_tags\";d:0.299999999999999988897769753748434595763683319091796875;s:12:\"sm_i_donated\";b:0;s:17:\"sm_i_hide_donated\";b:0;s:17:\"sm_i_install_date\";i:1488919869;s:16:\"sm_i_hide_survey\";b:0;s:14:\"sm_i_hide_note\";b:0;s:15:\"sm_i_hide_works\";b:0;s:16:\"sm_i_hide_donors\";b:0;s:9:\"sm_i_hash\";s:20:\"ea2274659ec41bae10b7\";s:13:\"sm_i_lastping\";i:1510912297;s:16:\"sm_i_supportfeed\";b:1;s:22:\"sm_i_supportfeed_cache\";i:1634265499;}', 'yes'),
(410, 'sm_status', 'O:28:\"GoogleSitemapGeneratorStatus\":4:{s:39:\"\0GoogleSitemapGeneratorStatus\0startTime\";d:1510912296.95454502105712890625;s:37:\"\0GoogleSitemapGeneratorStatus\0endTime\";d:1510912297.2870628833770751953125;s:41:\"\0GoogleSitemapGeneratorStatus\0pingResults\";a:2:{s:6:\"google\";a:5:{s:9:\"startTime\";d:1510912296.9554460048675537109375;s:7:\"endTime\";d:1510912297.173655986785888671875;s:7:\"success\";b:1;s:3:\"url\";s:101:\"http://www.google.com/webmasters/sitemaps/ping?sitemap=http%3A%2F%2Finstalaterwenzel.cz%2Fsitemap.xml\";s:4:\"name\";s:6:\"Google\";}s:4:\"bing\";a:5:{s:9:\"startTime\";d:1510912297.1746590137481689453125;s:7:\"endTime\";d:1510912297.285121917724609375;s:7:\"success\";b:1;s:3:\"url\";s:94:\"http://www.bing.com/webmaster/ping.aspx?siteMap=http%3A%2F%2Finstalaterwenzel.cz%2Fsitemap.xml\";s:4:\"name\";s:4:\"Bing\";}}s:38:\"\0GoogleSitemapGeneratorStatus\0autoSave\";b:1;}', 'no'),
(491, 'category_children', 'a:0:{}', 'yes'),
(904, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"marek@marekmelichar.cz\";s:7:\"version\";s:5:\"4.9.1\";s:9:\"timestamp\";i:1511992729;}', 'no'),
(4335, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4336, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4337, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4338, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4339, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4349, 'new_admin_email', 'marek@marekmelichar.cz', 'yes'),
(4426, 'mwp_openssl_parameters', 'a:2:{s:4:\"time\";i:1634623324;s:7:\"working\";b:1;}', 'yes'),
(4427, 'mwp_incremental_update_active', '', 'yes'),
(4428, 'mwp_recovering', '', 'yes'),
(4429, 'mwp_core_autoupdate', '', 'yes'),
(4430, 'mwp_container_parameters', 'a:0:{}', 'yes'),
(4431, 'mwp_container_site_parameters', 'a:0:{}', 'yes'),
(4432, 'mwp_maintenace_mode', 'a:0:{}', 'yes'),
(4434, 'worker_migration_version', '2', 'yes'),
(4435, '_worker_nossl_key', '', 'yes'),
(4436, '_worker_public_key', 'LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUEwQis5Q2gvTW9CeHdLNUk1SEM0UApQb0dzMVJjY0s5T085WlBIU2xTZGpTWmRzWHJCYVZuTkpsUXZGdEtucUpicE1WZHJ1RStIZHpMK3hRTW5VRTBQCkZlUkF0bndHdVpYMGc3ZzVZUS92K3hZOEJWUkNpRFN1YmFtZngzODBTOFdvUHRLSWhJajNXeTBvUmtOVjVHVEQKVkFNb0NOOXU5VUhqZkNRU1JoVS9VV0FVblhmQ0VqaEZaUUwzdVpuSElFNGk0bkFWcHdTZXk2VEhscVNUQ3lSeQpRT0VWQUI1RHJ4dDdWRW85STFraTErejh0dSt6VVh6YUdMR0QyZ3pYR0NlS1FNaXVqZzlWVUNIZWxWS09GelVrClBsOXRmN3kyLzh2eEhiN1FLYnZHWXRBQjdRS0FtVTFjVnhJYU1DOEpRWDNJRFM2dUdMNEg5MG1YU0dBWEhqOUIKU1FJREFRQUIKLS0tLS1FTkQgUFVCTElDIEtFWS0tLS0tCg==', 'yes'),
(4438, 'mwp_worker_configuration', 'a:9:{s:10:\"master_url\";s:21:\"https://managewp.com/\";s:15:\"master_cron_url\";s:75:\"https://managewp.com/wp-content/plugins/master/mwp-notifications-handle.php\";s:20:\"noti_cache_life_time\";s:5:\"86400\";s:27:\"noti_treshold_spam_comments\";s:2:\"10\";s:30:\"noti_treshold_pending_comments\";s:1:\"0\";s:31:\"noti_treshold_approved_comments\";s:1:\"0\";s:19:\"noti_treshold_posts\";s:1:\"0\";s:20:\"noti_treshold_drafts\";s:1:\"0\";s:8:\"key_name\";s:8:\"managewp\";}', 'yes'),
(4439, 'mmb_worker_activation_time', '1511285568', 'yes'),
(4441, 'user_hit_count', 'a:26:{s:10:\"2021-08-17\";i:11;s:10:\"2021-08-19\";i:1;s:10:\"2021-08-20\";i:1;s:10:\"2021-08-22\";i:3;s:10:\"2021-08-26\";i:3;s:10:\"2021-08-30\";i:2;s:10:\"2021-09-01\";i:5;s:10:\"2021-09-03\";i:2;s:10:\"2021-09-07\";i:13;s:10:\"2021-09-09\";i:1;s:10:\"2021-09-11\";i:3;s:10:\"2021-09-13\";i:2;s:10:\"2021-09-14\";i:1;s:10:\"2021-09-16\";i:1;s:10:\"2021-09-17\";i:1;s:10:\"2021-09-19\";i:3;s:10:\"2021-09-20\";i:1;s:10:\"2021-09-21\";i:2;s:10:\"2021-09-23\";i:3;s:10:\"2021-09-30\";i:3;s:10:\"2021-10-01\";i:1;s:10:\"2021-10-05\";i:2;s:10:\"2021-10-06\";i:2;s:10:\"2021-10-07\";i:3;s:10:\"2021-10-08\";i:1;s:10:\"2021-10-15\";i:22;}', 'yes'),
(4444, 'mwp_notifications', 'a:6:{s:7:\"plugins\";i:0;s:6:\"themes\";i:0;s:2:\"wp\";i:0;s:7:\"backups\";i:0;s:3:\"url\";N;s:16:\"notification_key\";N;}', 'yes'),
(4445, 'mmb_stats_filter', 'a:10:{i:0;a:2:{i:0;s:7:\"updates\";i:1;a:4:{s:7:\"plugins\";b:1;s:6:\"themes\";b:1;s:7:\"premium\";b:0;s:12:\"translations\";b:1;}}i:1;a:2:{i:0;s:11:\"core_update\";i:1;a:1:{s:4:\"core\";b:1;}}i:2;a:2:{i:0;s:5:\"posts\";i:1;a:1:{s:11:\"numberposts\";i:5;}}i:3;a:2:{i:0;s:6:\"drafts\";i:1;a:1:{s:11:\"numberposts\";i:5;}}i:4;a:2:{i:0;s:9:\"scheduled\";i:1;a:1:{s:11:\"numberposts\";i:5;}}i:5;a:2:{i:0;s:8:\"comments\";i:1;a:1:{s:11:\"numberposts\";i:5;}}s:7:\"plugins\";a:1:{s:7:\"cleanup\";a:3:{s:8:\"overhead\";a:0:{}s:9:\"revisions\";a:1:{s:11:\"num_to_keep\";s:3:\"r_5\";}s:4:\"spam\";a:0:{}}}i:6;a:2:{i:0;s:15:\"site_statistics\";i:1;a:7:{s:5:\"users\";b:1;s:16:\"approvedComments\";b:1;s:13:\"activePlugins\";b:1;s:14:\"publishedPosts\";b:1;s:10:\"draftPosts\";b:1;s:14:\"publishedPages\";b:1;s:10:\"draftPages\";b:1;}}i:7;a:1:{i:0;s:7:\"backups\";}i:8;a:1:{i:0;s:11:\"hit_counter\";}}', 'yes'),
(5202, 'mwp_service_key', '5d606854-5a74-4b18-9a11-8a93d8a93bf0', 'yes'),
(5208, 'mwp_public_keys', 'a:8:{i:0;a:6:{s:2:\"id\";s:19:\"managewp_1632189902\";s:7:\"service\";s:8:\"managewp\";s:9:\"validFrom\";s:19:\"2021-10-06 01:26:15\";s:7:\"validTo\";s:19:\"2021-11-07 01:26:15\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6W5dkLaG6020gNQlaVfG\nAN6HArvuQ/9EQQ/30QtJipLGOxCr0g2BptuSssI3zMqy43XvzWUMkDvArFWHnwYQ\nChQ9vDanharTIZyFdsUYoBC1eMYX69Uf3JGI0BzUZz2gjEITQ+sr2UvI7hTYBHzF\nxt7oOqn4x7yx8VS9nYykABu2Hx1CA+Hb8+vAflWCpd/pZ5G/FbhhYABqYzsqtV0o\nFvtcgB2k2vysZLCzj+SJAyCxZQcDSYwNvNFjWpzmcKLfxqg8bMHOJuy/uRTdBEVK\nKFC+GtTm00LAySHu/osbUAQQsBUZkonTS09wjDnB1wWGVtMEhsKBxSJGzTCsE3HN\n0QIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:0;}i:1;a:6:{s:2:\"id\";s:23:\"managewp_dev_1632189902\";s:7:\"service\";s:12:\"managewp_dev\";s:9:\"validFrom\";s:19:\"2021-10-06 01:26:15\";s:7:\"validTo\";s:19:\"2021-11-07 01:26:15\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2xgIg0cTh41XFsXnRUQ5\nd8G0SBjqyLiL/oWHJZ5QViRmDtlbm6ner3MpCntrroIqwFjMqTLgauUBDHrWxNX1\nmFPug3kWbnvZMcQ+2EN5FY7Gs86Z+H5h9DkJU9bw+rqPy6kgrvWS7b2jOfacfP6S\njYbF+RK0yDe5EL9ox9KUTSsyQ4krt7jmcWF9oZ8ZQYm6OfteYGPOh+C6XLhrv1Np\ncFyGjD6pbigiw4LNAJGPNKzWP8K7M8z+Vdv2xde8No95whZE1xOuiK1quTueuV+g\nFJaUM72emsDj8hGhxeVYPAzup9V6ciapRfZMhMqew4zPORQKE5XA5H0AtQKa1C3g\n4QIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:0;}i:2;a:6:{s:2:\"id\";s:16:\"mwp20_1632189902\";s:7:\"service\";s:5:\"mwp20\";s:9:\"validFrom\";s:19:\"2021-10-06 01:26:15\";s:7:\"validTo\";s:19:\"2021-11-07 01:26:15\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzpgFYPp2TqLRPQONjmuY\nE7RrSj5TGwVeY1TCXxPrrcssXJC+wehJygu6QXRDace1oCx+plVh18K0ZW0wIyPC\nTgEf4Cl8BGRz80qB+OcJdt3r6l08Cck30PfgIt7+iRWExUBewJzuAFmKYAfYlnF0\naNM6RZDRcD6KSgBYtg1MXQhMNO64XZayGSjVCIUWD9YApSPJIAgBhVAKAq1JjnfO\noL1DflX4boyfnMU1StNJZTaZK620G00C9tC/OBjJxSgqA4YO1OC+pqAvF/pefUMG\nxs7K7x93L3gsIIHsFuHuH4MyuWGe0HwrKJPR6M0Ew475tlaU6w+arooIgKAiS8DX\n6wIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:3;a:6:{s:2:\"id\";s:15:\"wpps_1631797501\";s:7:\"service\";s:4:\"wpps\";s:9:\"validFrom\";s:19:\"2021-10-01 13:05:01\";s:7:\"validTo\";s:19:\"2021-11-02 13:05:01\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsfz/kbn9Il3FcbiFolo3\nT6B1+WgKTKf/Xu9VYZ29cfW6kZSiwDleMSlYF6yAwW6VV3qT0lu25cCDQeTBVorL\nSv4/A/4NZsPCtYGKqsY2h8e6raozrmv4YNoq/8okyx4PB9NhWrdvAqSES/VbNbjA\ndWXpbtBlf5XeoBDK6c9DEUnGjfSQsgDEBDOTbsWPwQXmt3kUg/RslY5OoEJXpWOY\nnoAoGJFcAfYnPWdLRquiFOti5rDWSyXhH41plw2+lX42hsX2IViCin3t+R3iGDin\ne889H3MT+kMeN1UHu6Snh/Iondawz8fpgV7eM7NOgwlpbZKa0mwYUj2DOYvVH9Dt\n6QIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:4;a:6:{s:2:\"id\";s:25:\"cookie_service_1630429502\";s:7:\"service\";s:14:\"cookie_service\";s:9:\"validFrom\";s:19:\"2021-09-15 16:27:25\";s:7:\"validTo\";s:19:\"2021-10-17 16:27:25\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtp2UM+snlo0mWWMmT801\nbojOYG+n42ycf59VHlrtYD8dXB5xRnIKJ9fA8yE5DSIQdWsugybGjs/wCvLV1VOO\nGUKPw7SMmOXYs9oq/KTPAsmjWMY3jeD8GnggIopKOFklQz9T/H8GPZT+LoN1MAsN\nhOIg3zVjr9uWDJZaS2iKFdIB9oiik0L9LzscT2Ic6Qib7vy0AQJeaWVhzWL7apaH\nSWAClR8I890PufJjvnfiTzv2fBW23HtW6mSM7wh0T4VUKOmwg/3kD2iOpyX3/0mG\nkahI5xBYSXbFoaoIBFNOLadRKw+FcwLc+N7jfK0xvc8inhJf9gTBIlZv7D38CPpy\nIwIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:5;a:6:{s:2:\"id\";s:25:\"cookie_service_1633021502\";s:7:\"service\";s:14:\"cookie_service\";s:9:\"validFrom\";s:19:\"2021-10-15 16:27:25\";s:7:\"validTo\";s:19:\"2021-11-16 16:27:25\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA/oeDzs35Gg80U1WxNStK\nVqkHkCvmnL1WWIYRPunshmLek/3Kl8fwX6OymVMv1K4K+nLd09wytQJLdI1zs/f+\nQ6fBOAj2Z34V9KnU2RPvhI8WbLjEB76Zkj8fIuQpnryVnR5qt0pbi2vbRPnYYpJt\n421kAGKohRnaxqL5axMC91s1mciMaxc8fCU4eeCWBdwCM/bhb8YVXTlF7yQuVQX0\nXmgEzQE4+4lwRprLM5qcagYKRu9RkP5kTPo6vRq+ydYq4pDDdCFAqIRy+uOW00DY\nh4iCHVL7aXUhoQuUBTd2zbsQ6TD0m1Ym7p/GRjLNvxPlWll0ZmSjbO4v0vd0c0RV\nAQIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:6;a:6:{s:2:\"id\";s:15:\"mwp1_1631887502\";s:7:\"service\";s:4:\"mwp1\";s:9:\"validFrom\";s:19:\"2021-10-02 14:05:01\";s:7:\"validTo\";s:19:\"2021-11-03 14:05:01\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyHj48acT6NEal0Ll0xqG\n0OtSLntYuxYN6pVu1thtSuJTEGraxcn0CwO0xie5vDZc3RgSb7kXeNT4EZVAsGR2\nQlwT/+wz8rfenL/b+yrHAPulYGSphyvy1z1f1hEuFM/V6ZjNon3B7qYguuYi1SI7\n9Zet4+ydTsUBhs1YLE/zDq2Dj6zw7sNUFZAnbOyGr6m3KC39gTpp70cP67s8GaN1\nUp2sYt5qxi++kOaLbQxAvMWVTVY9ZsYREAXzAFeSOdJkU+enm7WhphfDc1uRF+qs\nwjaLgqHRJtCPn8NOXu1SsF/v8roSWIynM/jAuWk6mXym5XahlrjNYM4YzlbPjaTL\nTwIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}i:7;a:6:{s:2:\"id\";s:20:\"migration_1632143102\";s:7:\"service\";s:9:\"migration\";s:9:\"validFrom\";s:19:\"2021-10-05 13:05:02\";s:7:\"validTo\";s:19:\"2021-11-06 13:05:02\";s:9:\"publicKey\";s:451:\"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA52bBoz9yG153vHJA/OPA\n3TzATWXymhecAIA88lm7+AeNKiWH1ZOBRCR3o1+Kk12X8NcNI6jBzKIvldeHNdex\n58MPrE1g/gFop5HyWlMEvV7xCDwykvo0wY7CY9kD6m0ujHnd64PFpXwl40WGbbN1\nbJFnulH8xMOrMpzdF3wJ0KWlELWhKlPk1ksdmvRlLjf3a9xRyb0/yu29h6PwM0YS\nGYR0NyxiO86dIepk1YTH6nAsA54RX7jHszd4nCtt8AhZrtzbDpJqBhYKLiEhv9z0\nTNQfPMblh+Dq2YiV9V7OtNtg3GEX8JCNb1LOE4IYvGdZ+WYVMJa25e4zW4HE318R\nHQIDAQAB\n-----END PUBLIC KEY-----\n\";s:13:\"useServiceKey\";b:1;}}', 'yes'),
(5422, 'mwp_communication_key', '866b6a28-4e79-413f-871d-1618acf514af', 'yes'),
(5423, 'mwp_potential_key', '64868e86-78c5-47f1-8930-716ca29afce9', 'yes'),
(5424, 'mwp_potential_key_time', '1634623324', 'yes'),
(5425, 'mwp_new_communication_established', '1', 'yes'),
(5951, 'easy_fancybox_version', '1.8.18', 'yes'),
(5974, 'classic-editor-replace', 'block', 'yes'),
(5975, 'classic-editor-allow-users', 'allow', 'yes'),
(6012, 'mwp_public_keys_refresh_time', '1634338469', 'yes'),
(6092, 'recovery_keys', 'a:0:{}', 'yes'),
(6785, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":4,\"critical\":0}', 'yes'),
(6880, 'auto_plugin_theme_update_emails', 'a:0:{}', 'yes'),
(7457, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(9279, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(10065, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1634338468;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(10599, '_transient_timeout_feed_d21d2a68bac70d38fb7f9a7bd3d1725e', '1634870299', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(10600, '_transient_feed_d21d2a68bac70d38fb7f9a7bd3d1725e', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n\n	\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:370:\"\n\n		\n		\n		\n				\n		\n		\n\n		\n		\n			\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n							\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WordPress.org Forums » [XML Sitemaps] Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/support/plugin/google-sitemap-generator/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Oct 2021 02:24:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://bbpress.org/?v=2.7.0-alpha-1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:30:{i:0;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/support/topic/how-do-i-correct-my-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"How do I correct my sitemap?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/support/topic/how-do-i-correct-my-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Oct 2021 18:52:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:739:\"\n						\n						<p>Replies: 1</p>\n						<p>It doesn&#8217;t seem to matter what I do. When I pull up my sitemap for this site it says that there is no style information, and it only shows 1 url. All of my other sites generate a map with plenty of links for Google to crawl. I have been struggling with this for many weeks, trying to figure out what is wrong. Do you have any suggestions?</p>\n<p>I thought it might be the theme, but I have another site on the same hosting with the same theme and its sitemap is fine. I went through my file manager and put .bak on the 2 sitemaps I found in the wp-content/uploads folder. I don&#8217;t see anything anywhere else. I just don&#8217;t understand why the sitemap is so limited. </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"amyleforge\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wordpress.org/support/topic/time-zone-36/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:130:\"&lt;span class=&quot;resolved&quot; aria-label=&quot;Resolved&quot; title=&quot;Topic is resolved.&quot;&gt;&lt;/span&gt;Time zone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wordpress.org/support/topic/time-zone-36/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Oct 2021 09:21:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:198:\"\n						\n						<p>Replies: 2</p>\n						<p>Hi, the sitemap time zone remains GMT, instead the WordPress time is GMT + 2.<br />\nIs it possible to change it in the sitemap?<br />\nThanks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"marcorroma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wordpress.org/support/topic/got-an-error-php-fatal-error-uncaught-typeerror-count/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:285:\"&lt;span class=&quot;resolved&quot; aria-label=&quot;Resolved&quot; title=&quot;Topic is resolved.&quot;&gt;&lt;/span&gt;&lt;abbr title=&quot;Not Safe For Work / Mature content&quot;&gt;[NSFW]&lt;/abbr&gt; Got an error &amp;#8220;PHP Fatal error: Uncaught TypeError: count()&amp;#8221;\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wordpress.org/support/topic/got-an-error-php-fatal-error-uncaught-typeerror-count/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Oct 2021 02:53:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3343:\"\n						\n						<p>Replies: 2</p>\n						<p>I&#8217;m running 10 WordPress sites and I&#8217;ve got following error on a few sites of them.</p>\n<pre><code>\n`[08-Oct-2021 02:37:19 UTC] PHP Fatal error:  Uncaught TypeError: count(): Argument #1 ($var) must be of type Countable|array, string given in /home/matsu/Sites/teraren.com/diary/wp-content/plugins/google-sitemap-generator/sitemap-builder.php:475\nStack trace:\n#0 /home/matsu/Sites/teraren.com/diary/wp-includes/class-wp-hook.php(303): GoogleSitemapGeneratorStandardBuilder-&gt;Index(Object(GoogleSitemapGenerator))\n#1 /home/matsu/Sites/teraren.com/diary/wp-includes/class-wp-hook.php(327): WP_Hook-&gt;apply_filters(&#039;&#039;, Array)\n#2 /home/matsu/Sites/teraren.com/diary/wp-includes/plugin.php(470): WP_Hook-&gt;do_action(Array)\n#3 /home/matsu/Sites/teraren.com/diary/wp-content/plugins/google-sitemap-generator/sitemap-core.php(1623): do_action(&#039;sm_build_index&#039;, Object(GoogleSitemapGenerator))\n#4 /home/matsu/Sites/teraren.com/diary/wp-content/plugins/google-sitemap-generator/sitemap-loader.php(327): GoogleSitemapGenerator-&gt;ShowSitemap(Array)\n#5 /home/matsu/Sites/teraren.com/diary/wp-content/plugins/google-sitemap-generator/sitemap-loader.php(202): GoogleSitemapGeneratorLoader::CallShowSitemap(&#039;params=&#039;)\n#6 /home/matsu/Sites/teraren.com/diary/wp-includes/class-wp-hook.php(301): GoogleSitemapGeneratorLoader::DoTemplateRedirect()\n#7 /home/matsu/Sites/teraren.com/diary/wp-includes/class-wp-hook.php(327): WP_Hook-&gt;apply_filters(true, Array)\n#8 /home/matsu/Sites/teraren.com/diary/wp-includes/plugin.php(470): WP_Hook-&gt;do_action(Array)\n#9 /home/matsu/Sites/teraren.com/diary/wp-includes/template-loader.php(13): do_action(&#039;template_redire...&#039;)\n#10 /home/matsu/Sites/teraren.com/diary/wp-blog-header.php(19): require_once(&#039;/home/matsu/Sit...&#039;)\n#11 /home/matsu/Sites/teraren.com/diary/index.php(17): require(&#039;/home/matsu/Sit...&#039;)\n#12 {main}\n  thrown in /home/matsu/Sites/teraren.com/diary/wp-content/plugins/google-sitemap-generator/sitemap-builder.php on line 475\n</code></pre>\n<p>I wrote a patch to avoid the error.</p>\n<pre><code>\n% diff -u /path/to/old/sitemap-builder.php /path/to/new/sitemap-builder.php\n--- /home/matsu/Sites/teraren.com/je1wfv/wp-content/plugins/google-sitemap-generator/sitemap-builder.php	2021-10-08 02:38:49.268861006 +0000\n+++ /home/matsu/Sites/teraren.com/matsu/blog/wp-content/plugins/google-sitemap-generator/sitemap-builder.php	2021-09-03 09:01:22.833828604 +0000\n@@ -472,7 +472,7 @@\n 		}\n\n 		$pages = $gsg-&gt;GetPages();\n-		if(count($pages) &gt; 0) {\n+		if(is_array($pages) &amp;&amp; count($pages) &gt; 0) {\n 			foreach($pages AS $page) {\n 				if($page instanceof GoogleSitemapGeneratorPage &amp;&amp; $page-&gt;GetUrl()) {\n 					$gsg-&gt;AddSitemap(&quot;externals&quot;, null, $blogUpdate);\n</code></pre>\n<p>Root cause is that the original code expects <code>$pages</code> is an array but the content of the variable is string.</p>\n<p>My server environment.</p>\n<pre><code>\n$ php -v\nPHP 8.0.8 (cli) (built: Jul  7 2021 17:35:32) ( NTS )\nCopyright (c) The PHP Group\nZend Engine v4.0.8, Copyright (c) Zend Technologies\n    with Zend OPcache v8.0.8, Copyright (c), by Zend Technologies\n</code></pre>\n<p>Wordpress 5.8.1</p>\n<p>I&#8217;d appriciate if the patch is merged.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"matsubobo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/support/topic/wp-5-8-1-support-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WP 5.8.1 support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/support/topic/wp-5-8-1-support-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Oct 2021 04:34:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"\n						\n						<p>Replies: 0</p>\n						<p>Hello, is there any plan to support WP 5.8.1 for <em>XML Sitemaps</em>?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"ivano098\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/support/topic/how-to-exclude-specific-authors/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"how to exclude specific authors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/support/topic/how-to-exclude-specific-authors/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Oct 2021 09:17:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"\n						\n						<p>Replies: 0</p>\n						<p>There are certain author pages that are showing up in our sitemap that aren&#8217;t actually authors (they are admins who created pages and the like). How can I exclude these from the sitemap?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"NBH707\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/support/topic/add-custom-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:140:\"&lt;span class=&quot;resolved&quot; aria-label=&quot;Resolved&quot; title=&quot;Topic is resolved.&quot;&gt;&lt;/span&gt;Add custom sitemap?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/support/topic/add-custom-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Oct 2021 06:38:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:945:\"\n						\n						<p>Replies: 1</p>\n						<p>I need to add custom sitemaps to the sitemap.xml.  I found this code (below) but this is not working.  What do I need to do to add additional custom XML sitemaps to the set?</p>\n<p>Here is the code I had found but is not working&#8230;</p>\n<pre><code>function addCustomSitemap($gsg) {\n	$sitemap = new GoogleSitemapGeneratorSitemapEntry(&#039;my-sitemap.xml&#039;);\n	$gsg-&gt;AddElement($sitemap);\n}\n\nadd_action(‘sm_build_index’, ‘addCustomSitemap’, 100, 1);</code></pre>\n\n\n<ul id=\"bbp-topic-revision-log-14937986\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-14937986-item-14937987\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 week, 2 days ago by <a href=\"https://wordpress.org/support/users/ctmartin2020/\" title=\"View ctmartin2020&#039;s profile\" class=\"bbp-author-link\"><span  class=\"bbp-author-name\">ctmartin2020</span></a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"ctmartin2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wordpress.org/support/topic/append-urls/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Append URLs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wordpress.org/support/topic/append-urls/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 Oct 2021 06:55:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:310:\"\n						\n						<p>Replies: 0</p>\n						<p>Hello,</p>\n<p>Is it possible to use this plugin to append URLs with some additional text for certain post types ?</p>\n<p>E.g. can I add &#8220;/mysuffix/&#8221; to the end of every URL in all post pages for example.</p>\n<p>Thanks in advance,<br />\nNic </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Nic Windley\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wordpress.org/support/topic/there-was-a-problem-while-notifying-google-7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"There was a problem while notifying Google.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wordpress.org/support/topic/there-was-a-problem-while-notifying-google-7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Oct 2021 02:53:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:472:\"\n						\n						<p>Replies: 1</p>\n						<p>Hello, there was a problem when i am using XML sitemap. I tried to notify google about my sitemap, but it noticed me that  &#8220;WP HTTP API Web Request failed: cURL error 7: Failed to connect to <a href=\"http://www.google.com\" rel=\"nofollow ugc\">http://www.google.com</a> port 80&#8221; . I informed that happen to my server hosting and they have no idea to fix it. Do anyone have this problem as well and fixed?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"iamwongraymond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wordpress.org/support/topic/how-to-properly-migrate-site-using-redirection-this-plugin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"How to properly migrate site using Redirection &amp;amp; this plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wordpress.org/support/topic/how-to-properly-migrate-site-using-redirection-this-plugin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Sep 2021 19:00:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1271:\"\n						\n						<p>Replies: 5</p>\n						<p>So basically I&#8217;m migrating from tomastestart.cl to .com, the page is being redirected with &#8220;Redirection&#8221; plugin but I&#8217;m getting in the google search console: ten pages &#8220;excluded by no index tags&#8221; which are gone on the newer site and two pages &#8220;indexed but not sent in sitemap&#8221; which includes the main tomastestart.com page.</p>\n<p>Should I remove for example this Google XML Sitemaps plugin from the older site or perform any extra action?</p>\n\n\n<ul id=\"bbp-topic-revision-log-14918003\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-14918003-item-14918007\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 2 weeks, 2 days ago by <a href=\"https://wordpress.org/support/users/snippet24/\" title=\"View snippet24&#039;s profile\" class=\"bbp-author-link\"><span  class=\"bbp-author-name\">snippet24</span></a>.\n	</li>\n	<li id=\"bbp-topic-revision-log-14918003-item-14918010\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 2 weeks, 2 days ago by <a href=\"https://wordpress.org/support/users/snippet24/\" title=\"View snippet24&#039;s profile\" class=\"bbp-author-link\"><span  class=\"bbp-author-name\">snippet24</span></a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"snippet24\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wordpress.org/support/topic/memory-error-64m-on-high-amount-of-pages/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Memory Error (64M) on high amount of pages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wordpress.org/support/topic/memory-error-64m-on-high-amount-of-pages/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Sep 2021 16:07:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:571:\"\n						\n						<p>Replies: 0</p>\n						<p>in my sitemap the <a href=\"https://www.wom87.de/sitemap-pt-page-2021-08.xml\" rel=\"nofollow ugc\">https://www.wom87.de/sitemap-pt-page-2021-08.xml</a> is getting an error instantly (while all others work), because there should be 14.000 pages inside. So as there is no option to split the sitemap, how to solve this, as i have also a few more website with tons of pages and posts. If sitemap not works, if there are a few more pages/posts, its useless.<br />\n64M Memory should be really enough to show a sitemap o.O</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Daniel Wom\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wordpress.org/support/topic/sitemap-can-be-read-but-has-errors-12/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"Sitemap can be read, but has errors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wordpress.org/support/topic/sitemap-can-be-read-but-has-errors-12/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Sep 2021 04:22:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:376:\"\n						\n						<p>Replies: 1</p>\n						<p>Google Search Console alert status &#8220;Error&#8221; in some sitemap</p>\n<p>&#8220;Sitemap can be read, but has errors&#8221;<br />\nMissing XML tag 1 instance<br />\nThis required tag is missing. Please add it and resubmit.</p>\n<p>Line 3<br />\nParent tag: urlset<br />\nTag: url</p>\n<p>How can I fix this?<br />\nThanks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"arnato\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://wordpress.org/support/topic/i-could-not-find-listing-category-it-is-only-for-post-category/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"I could not find listing category. It is only for post category.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://wordpress.org/support/topic/i-could-not-find-listing-category-it-is-only-for-post-category/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Sep 2021 16:43:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:289:\"\n						\n						<p>Replies: 0</p>\n						<p>I am managing yellow pages directory website. In that listing categories for each cities are very important when they search in search engines. But this plugin only supports post categories. It is not supporting listing categories.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"cpaccount\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/support/topic/like-excluded-items-for-priority/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"Like Excluded Items for priority\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/support/topic/like-excluded-items-for-priority/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Sep 2021 06:37:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"\n						\n						<p>Replies: 1</p>\n						<p>Hello,</p>\n<p>I like very much the Excluded Items based on Excluded Categories.<br />\nIn the similar way I&#8217;d like priority with Priority Categories so that I can add a &#8220;top&#8221; category with priority 0.8.<br />\nDo you think is it a good idea?</p>\n<p>fp</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Fabrizio Pivari\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wordpress.org/support/topic/how-to-send-pull-requests/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"How to send pull requests?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wordpress.org/support/topic/how-to-send-pull-requests/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Sep 2021 18:41:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:452:\"\n						\n						<p>Replies: 1</p>\n						<p>Hi I added an option to limit sitemaps generation from a specified year; This is a great optimisation for huge websites. For instance websites with 20+ years of archives could decide to limit content in the sitemaps to the last 5 years to avoid eroding their crawling budget.<br />\nLet me know how I can contribute to developing and help integrate this feature in the next release.<br />\nCheers</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"alexrah\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/support/topic/list-categories-with-no-posts-in-xml-sitemap-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"List Categories with no posts in XML Sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/support/topic/list-categories-with-no-posts-in-xml-sitemap-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 10 Sep 2021 09:50:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:191:\"\n						\n						<p>Replies: 3</p>\n						<p>Hi,</p>\n<p>The Sitemap xml only list categories with posts.<br />\nHow to also include empty categories ( 0 posts )?</p>\n<p>Thank you.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"zilchr2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/support/topic/coverage-indexed-not-submitted/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:154:\"&lt;span class=&quot;resolved&quot; aria-label=&quot;Resolved&quot; title=&quot;Topic is resolved.&quot;&gt;&lt;/span&gt;Coverage : indexed, not submitted\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/support/topic/coverage-indexed-not-submitted/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 07 Sep 2021 04:07:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:566:\"\n						\n						<p>Replies: 1</p>\n						<p>Hello :</p>\n<p>I wonder if you can help me.<br />\nI got a message in Google Search Console &#8211; Coverage regarding a sitemap issue (see screenshot <a href=\"https://monosnap.com/file/KIVsJtWREIvDsiDf196bIw6Fjr5ojz\" rel=\"nofollow ugc\">https://monosnap.com/file/KIVsJtWREIvDsiDf196bIw6Fjr5ojz</a>)<br />\n &#8220;The URL was discovered by Google and indexed. We recommend submitting all important URLs using a sitemap&#8221;.</p>\n<p>What do I need to do? How can I fix it?</p>\n<p>Thanks,<br />\nEnrique Vanegas</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"vevanegas\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/support/topic/sitemap-marks-tags-as-noindex/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"SiteMap marks Tags as NoIndex\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/support/topic/sitemap-marks-tags-as-noindex/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 05 Sep 2021 16:26:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1063:\"\n						\n						<p>Replies: 3</p>\n						<p>Hello,</p>\n<p>The XML Sitemap Generator for WordPress 4.1.1 has the following settings:</p>\n<p>Sitemap Content<br />\nWordPress standard content:<br />\n&gt; Include homepage<br />\n&gt; Include posts<br />\n&gt; Include static pages<br />\n&gt; Include categories<br />\n Include archives<br />\n Include author pages<br />\n&gt; Include tag pages<br />\nCustom taxonomies:<br />\n&gt; Include taxonomy pages for Media Tags<br />\nFurther options:<br />\n&gt; Include the last modification time.`</p>\n<p>(&gt; means checked on) </p>\n<p>it is creating the sitemap.xml file.</p>\n<p>however, google search console shows the following for all my tags:</p>\n<pre><code>Crawl\nLast crawl: Apr 19, 2021, 10:25:04 PM\nCrawled as: Googlebot smartphone\nCrawl allowed? Yes\nPage fetch: Successful\nIndexing allowed? error No: &#039;noindex&#039; detected in &#039;robots&#039; meta tag</code></pre>\n<p>I have no clue why all my tags are marked as noindex; </p>\n<p>kindly advise what may be going on and how to fix it; </p>\n<p>thanks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"wnjusa\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/support/topic/exclude-custom-categories-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Exclude custom categories\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wordpress.org/support/topic/exclude-custom-categories-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 04 Sep 2021 20:15:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:184:\"\n						\n						<p>Replies: 4</p>\n						<p>Can see the options to exclude standard post categories, but not to exclude custom post categories. Is there a way to do this?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Audiomonk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/support/topic/image-and-video-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:144:\"&lt;span class=&quot;resolved&quot; aria-label=&quot;Resolved&quot; title=&quot;Topic is resolved.&quot;&gt;&lt;/span&gt;image and video sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/support/topic/image-and-video-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 04 Sep 2021 04:53:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:268:\"\n						\n						<p>Replies: 1</p>\n						<p>Hi,</p>\n<p>I am using your plugin. and it is great. thanks.</p>\n<p>But I want to make image sitemap and video sitemap as well.</p>\n<p>Could you add the feature to this plugin in the future, please?</p>\n<p>Best </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"mrsmith11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/support/topic/xml-sitemap-40/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"xml sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/support/topic/xml-sitemap-40/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Aug 2021 15:58:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:169:\"\n						\n						<p>Replies: 0</p>\n						<p>My website is not listed for sitemaps. How can i know that my website is added with sitemap, Please check it.  </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"irshad45\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/support/topic/category-without-posts-not-show-in-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"category without posts not show in sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wordpress.org/support/topic/category-without-posts-not-show-in-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Aug 2021 11:17:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:178:\"\n						\n						<p>Replies: 1</p>\n						<p>I have empty categories (custom tax) with text information on this pages. But they doesn&#8217;t show on my sitemap.xml </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"hadoukenlol\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"https://wordpress.org/support/topic/unsafe-attempt-to-load-url-from-frame-with-url-domains-protocols-and-ports-mus/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:201:\"&lt;span class=&quot;resolved&quot; aria-label=&quot;Resolved&quot; title=&quot;Topic is resolved.&quot;&gt;&lt;/span&gt;Unsafe attempt to load URL from frame with URL. Domains, protocols and ports mus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"https://wordpress.org/support/topic/unsafe-attempt-to-load-url-from-frame-with-url-domains-protocols-and-ports-mus/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Aug 2021 07:21:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:790:\"\n						\n						<p>Replies: 1</p>\n						<p>I am having issue in sitemap.xml. My sitemap.xml (<a href=\"https://www.***.com/sitemap.xml\" rel=\"nofollow ugc\">https://www.***.com/sitemap.xml</a>) not working in chrome browser throwing the following console error and screen was blank. But the same is working in Mozilla. Kindly help me to solve this problem.</p>\n<p>error:</p>\n<p>Unsafe attempt to load URL <a href=\"https://***********.cloudfront.net/wp-content/plugins/google-sitemap-generator/sitemap.xsl\" rel=\"nofollow ugc\">https://***********.cloudfront.net/wp-content/plugins/google-sitemap-generator/sitemap.xsl</a> from frame with URL <a href=\"https://www.***.com/sitemap.xml\" rel=\"nofollow ugc\">https://www.***.com/sitemap.xml</a>. Domains, protocols and ports must match.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"hariprasad95\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/support/topic/submitted-url-not-found-404-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:150:\"&lt;span class=&quot;resolved&quot; aria-label=&quot;Resolved&quot; title=&quot;Topic is resolved.&quot;&gt;&lt;/span&gt;Submitted URL not found (404)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/support/topic/submitted-url-not-found-404-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Aug 2021 18:23:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:365:\"\n						\n						<p>Replies: 1</p>\n						<p>I am getting a lot of Submitted URL not found (404) errors on Google Search Console as my website is real estate and as listings expire they are deleted. However, Google Sitemaps is not updating the sitemaps fast enough and submitting 404 pages (deleted pages) to sitemaps.</p>\n<p>Anyway this can be fixed? </p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/support/topic/general-http-error-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"General HTTP error\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/support/topic/general-http-error-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Aug 2021 07:44:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:354:\"\n						\n						<p>Replies: 1</p>\n						<p>Hi, Today I shift Rank Math sitemap to XML sitemaps and getting General HTTP error:</p>\n<p>Check this: <a href=\"https://prnt.sc/1qje5mo\" rel=\"nofollow ugc\">https://prnt.sc/1qje5mo</a><br />\nCheck this: <a href=\"https://prnt.sc/1qje6iw\" rel=\"nofollow ugc\">https://prnt.sc/1qje6iw</a></p>\n<p>Thanks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"mira404\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wordpress.org/support/topic/sitemap-is-submiting-feed-urls-in-google-search-console/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"sitemap is submiting /feed urls in google search console\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wordpress.org/support/topic/sitemap-is-submiting-feed-urls-in-google-search-console/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Aug 2021 10:26:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"\n						\n						<p>Replies: 7</p>\n						<p>Hi,<br />\nI went through my search console seeing lots of Server Error 5XX and I can see lots of URLs ending with /feed<br />\nE.g<br />\n1. example.com/posts/feed/<br />\n2. exampe.com/todays-news/feed</p>\n<p>why is the sitemap generating /feed URLs, How do I fix this?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"godwiniheuwa\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/support/topic/xml-and-html-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"XML And HTML Sitemap\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wordpress.org/support/topic/xml-and-html-sitemap/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Aug 2021 08:53:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1142:\"\n						\n						<p>Replies: 2</p>\n						<p>Good Morning,</p>\n<p>Been using this plugin for a number of years and must say it&#8217;s a fantastic plugin!</p>\n<p>Just a quick question. We have the standard XML sitemap created with this plugin, which gets crawled and indexed without any issues, but we also have the html version of the same sitemap too. Have noticed that the html version has a noindex tag on it, and wanted to know whether it was this plugin that was putting the noindex on the html version, so that only the xml version of the sitemap gets crawled and indexed.</p>\n<p>Should both the XML and HMTL versions of the sitemap be able to be crawled without any noindex tags?</p>\n<p>Kind Regards,</p>\n<p>Andy</p>\n\n\n<ul id=\"bbp-topic-revision-log-14783281\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-14783281-item-14783286\" class=\"bbp-topic-revision-log-item\">\n		This topic was modified 1 month, 3 weeks ago by <a href=\"https://wordpress.org/support/users/andrew1977/\" title=\"View Andrew1977&#039;s profile\" class=\"bbp-author-link\"><span  class=\"bbp-author-name\">Andrew1977</span></a>.\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew1977\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/support/topic/submitted-url-marked-noindex-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Submitted URL marked ‘noindex’\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/support/topic/submitted-url-marked-noindex-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Aug 2021 09:34:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:519:\"\n						\n						<p>Replies: 2</p>\n						<p>Hi,</p>\n<p>Google Search console send me a New Coverage issue detected &#8220;Submitted URL marked ‘noindex’&#8221;</p>\n<p>The URL is the <a href=\"https://mydomainname/sitemap.html\" rel=\"nofollow ugc\">https://mydomainname/sitemap.html</a></p>\n<p>Inside the page source of sitemap.html you can see:<br />\n&lt;meta name=&#8221;robots&#8221; content=&#8221;noindex,follow&#8221;/&gt;<br />\nso they are right.</p>\n<p>Any advice, how can I fix this?<br />\nThanks</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"etna32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/support/topic/logic-of-sub-sitemaps/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Logic of sub sitemaps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/support/topic/logic-of-sub-sitemaps/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Aug 2021 07:46:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:551:\"\n						\n						<p>Replies: 0</p>\n						<p>Hi,<br />\nI&#8217;m trying out your plugin – thanks for that!</p>\n<p>I&#8217;m wordering why the sitemap is split up into sub sitemap files,<br />\nwhat is the purpose of this? Can&#8217;t find something in the support forum about that.<br />\nExample:<br />\n/sitemap-pt-page-2021-07.xml</p>\n<p>Is there a way to disable that handling?<br />\nWe (as editors on a site) want a global overview of all site links, so it would be more handy to have it on one page only.</p>\n<p>Regards<br />\nJuergen</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"jugibur\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wordpress.org/support/topic/unsafe-attempt-to-load-url-from-frame/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Unsafe attempt to load URL from frame\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wordpress.org/support/topic/unsafe-attempt-to-load-url-from-frame/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 28 Jul 2021 15:41:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1076:\"\n						\n						<p>Replies: 0</p>\n						<p>Hey guys, our website set up as &#8220;cookie-less&#8221; so we have our main subdomain</p>\n<p><a href=\"http://www.exampledomain.co.uk\" rel=\"nofollow ugc\">http://www.exampledomain.co.uk</a> that loads all of our pages and then our static (cookie free) subdomain that loads in all of our images e.t.c static.exampledomain.co.uk</p>\n<p>with this setup when using your plugin our sitemap.xml fails to load due to the following error (seen in the console)</p>\n<blockquote><p>Unsafe attempt to load URL <a href=\"https://static.****.co.uk/plugins/google-sitemap-generator/sitemap.xsl\" rel=\"nofollow ugc\">https://static.****.co.uk/plugins/google-sitemap-generator/sitemap.xsl</a> from frame with URL <a href=\"https://www.***.co.uk/sitemap.xml\" rel=\"nofollow ugc\">https://www.***.co.uk/sitemap.xml</a>. Domains, protocols and ports must match.</p></blockquote>\n<p>Any assistance in overcomming this issue would be greatly apreciated, as idealy we would really love to use your plugin for our sitemap generation.</p>\n<p>thanks.</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Lollipops\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:67:\"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/support/topic/getting-error-in-mobile-usability/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Getting error In mobile usability\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/support/topic/getting-error-in-mobile-usability/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 28 Jul 2021 12:20:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:405:\"\n						\n						<p>Replies: 0</p>\n						<p>Hey there, I am getting error in my google search console at mobile usability. This is an affected page. here is the link <a href=\"https://www.drmobilefix.fi/shop/sitemap.html\" rel=\"nofollow ugc\">https://www.drmobilefix.fi/shop/sitemap.html</a></p>\n<p>Can you please tell me why it&#8217;s showing /sitemap.html after page URL? How can I fix this?</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"devseo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:67:\"https://wordpress.org/support/plugin/google-sitemap-generator/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Fri, 15 Oct 2021 02:38:19 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:12:\"x-robots-tag\";s:15:\"noindex, follow\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20201210072618\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(10601, '_transient_timeout_feed_mod_d21d2a68bac70d38fb7f9a7bd3d1725e', '1634870299', 'no'),
(10602, '_transient_feed_mod_d21d2a68bac70d38fb7f9a7bd3d1725e', '1634265499', 'no'),
(10623, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1634623326;s:7:\"checked\";a:7:{s:17:\"instalater_wenzel\";s:1:\"1\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:14:\"twentynineteen\";s:3:\"1.0\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";s:12:\"twentytwenty\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:6:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"3.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.3.0.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.5.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(10624, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1634623329;s:8:\"response\";a:2:{s:45:\"tiny-compress-images/tiny-compress-images.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/tiny-compress-images\";s:4:\"slug\";s:20:\"tiny-compress-images\";s:6:\"plugin\";s:45:\"tiny-compress-images/tiny-compress-images.php\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/tiny-compress-images/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/tiny-compress-images.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/tiny-compress-images/assets/icon-256x256.png?rev=1088385\";s:2:\"1x\";s:73:\"https://ps.w.org/tiny-compress-images/assets/icon-128x128.png?rev=1088385\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/tiny-compress-images/assets/banner-1544x500.jpg?rev=1088297\";s:2:\"1x\";s:75:\"https://ps.w.org/tiny-compress-images/assets/banner-772x250.jpg?rev=1088297\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.4\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:27:\"autoptimize/autoptimize.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/autoptimize\";s:4:\"slug\";s:11:\"autoptimize\";s:6:\"plugin\";s:27:\"autoptimize/autoptimize.php\";s:11:\"new_version\";s:5:\"2.9.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/autoptimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/autoptimize.2.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-256X256.png?rev=2211608\";s:2:\"1x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.png?rev=1864142\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:31:\"easy-fancybox/easy-fancybox.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/easy-fancybox\";s:4:\"slug\";s:13:\"easy-fancybox\";s:6:\"plugin\";s:31:\"easy-fancybox/easy-fancybox.php\";s:11:\"new_version\";s:6:\"1.8.18\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/easy-fancybox/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/easy-fancybox.1.8.18.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:36:\"google-sitemap-generator/sitemap.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/google-sitemap-generator\";s:4:\"slug\";s:24:\"google-sitemap-generator\";s:6:\"plugin\";s:36:\"google-sitemap-generator/sitemap.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/google-sitemap-generator/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/google-sitemap-generator.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-256x256.png?rev=1701944\";s:2:\"1x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-128x128.png?rev=1701944\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/google-sitemap-generator/assets/banner-772x250.png?rev=1701944\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:15:\"worker/init.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:20:\"w.org/plugins/worker\";s:4:\"slug\";s:6:\"worker\";s:6:\"plugin\";s:15:\"worker/init.php\";s:11:\"new_version\";s:6:\"4.9.10\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/worker/\";s:7:\"package\";s:49:\"https://downloads.wordpress.org/plugin/worker.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:59:\"https://ps.w.org/worker/assets/icon-256x256.png?rev=1015191\";s:2:\"1x\";s:51:\"https://ps.w.org/worker/assets/icon.svg?rev=1015191\";s:3:\"svg\";s:51:\"https://ps.w.org/worker/assets/icon.svg?rev=1015191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/worker/assets/banner-1544x500.jpg?rev=2035974\";s:2:\"1x\";s:61:\"https://ps.w.org/worker/assets/banner-772x250.jpg?rev=2035974\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}}s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.10.2\";s:27:\"autoptimize/autoptimize.php\";s:5:\"2.9.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:45:\"tiny-compress-images/tiny-compress-images.php\";s:5:\"3.2.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.2\";s:31:\"easy-fancybox/easy-fancybox.php\";s:6:\"1.8.18\";s:36:\"google-sitemap-generator/sitemap.php\";s:5:\"4.1.1\";s:15:\"worker/init.php\";s:6:\"4.9.10\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.7.4\";}}', 'no'),
(10625, '_transient_doing_cron', '1634623324.9310998916625976562500', 'yes'),
(10664, '_site_transient_timeout_theme_roots', '1634625125', 'no'),
(10665, '_site_transient_theme_roots', 'a:7:{s:17:\"instalater_wenzel\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-home.php'),
(2, 2, '_edit_lock', '1493135720:1'),
(3, 2, '_edit_last', '1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1488923035:1'),
(6, 5, '_wp_page_template', 'page-reference.php'),
(7, 7, '_edit_last', '1'),
(8, 7, '_wp_page_template', 'page-contact.php'),
(9, 7, '_edit_lock', '1510912438:1'),
(10, 9, '_menu_item_type', 'post_type'),
(11, 9, '_menu_item_menu_item_parent', '0'),
(12, 9, '_menu_item_object_id', '7'),
(13, 9, '_menu_item_object', 'page'),
(14, 9, '_menu_item_target', ''),
(15, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 9, '_menu_item_xfn', ''),
(17, 9, '_menu_item_url', ''),
(19, 10, '_menu_item_type', 'post_type'),
(20, 10, '_menu_item_menu_item_parent', '0'),
(21, 10, '_menu_item_object_id', '5'),
(22, 10, '_menu_item_object', 'page'),
(23, 10, '_menu_item_target', ''),
(24, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 10, '_menu_item_xfn', ''),
(26, 10, '_menu_item_url', ''),
(28, 11, '_menu_item_type', 'post_type'),
(29, 11, '_menu_item_menu_item_parent', '0'),
(30, 11, '_menu_item_object_id', '2'),
(31, 11, '_menu_item_object', 'page'),
(32, 11, '_menu_item_target', ''),
(33, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 11, '_menu_item_xfn', ''),
(35, 11, '_menu_item_url', ''),
(37, 13, '_edit_last', '1'),
(38, 13, 'field_58bc64dcba792', 'a:11:{s:3:\"key\";s:19:\"field_58bc64dcba792\";s:5:\"label\";s:10:\"banner_img\";s:4:\"name\";s:10:\"banner_img\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(40, 13, 'position', 'normal'),
(41, 13, 'layout', 'default'),
(42, 13, 'hide_on_screen', ''),
(43, 13, '_edit_lock', '1488742049:1'),
(47, 15, 'banner_img', '14'),
(48, 15, '_banner_img', 'field_58bc64dcba792'),
(49, 2, 'banner_img', '72'),
(50, 2, '_banner_img', 'field_58bc64dcba792'),
(53, 13, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(54, 16, '_edit_last', '1'),
(55, 16, 'field_58bc6b028327b', 'a:13:{s:3:\"key\";s:19:\"field_58bc6b028327b\";s:5:\"label\";s:18:\"text_inside_banner\";s:4:\"name\";s:18:\"text_inside_banner\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(56, 16, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(57, 16, 'position', 'normal'),
(58, 16, 'layout', 'default'),
(59, 16, 'hide_on_screen', ''),
(60, 16, '_edit_lock', '1488743073:1'),
(61, 17, 'banner_img', '14'),
(62, 17, '_banner_img', 'field_58bc64dcba792'),
(63, 17, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(64, 17, '_text_inside_banner', 'field_58bc6b028327b'),
(65, 2, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(66, 2, '_text_inside_banner', 'field_58bc6b028327b'),
(67, 18, '_edit_last', '1'),
(68, 18, 'field_58bc6c18977a3', 'a:13:{s:3:\"key\";s:19:\"field_58bc6c18977a3\";s:5:\"label\";s:24:\"call_to_action_in_banner\";s:4:\"name\";s:24:\"call_to_action_in_banner\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(69, 18, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(70, 18, 'position', 'normal'),
(71, 18, 'layout', 'default'),
(72, 18, 'hide_on_screen', ''),
(73, 18, '_edit_lock', '1488743336:1'),
(74, 19, 'banner_img', '14'),
(75, 19, '_banner_img', 'field_58bc64dcba792'),
(76, 19, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(77, 19, '_text_inside_banner', 'field_58bc6b028327b'),
(78, 19, 'call_to_action_in_banner', '+420 123 456 789'),
(79, 19, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(80, 2, 'call_to_action_in_banner', '+420602110943 - BRNO A OKOLÍ'),
(81, 2, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(82, 20, '_edit_last', '1'),
(83, 20, 'field_58bc73650a885', 'a:11:{s:3:\"key\";s:19:\"field_58bc73650a885\";s:5:\"label\";s:9:\"offer_img\";s:4:\"name\";s:9:\"offer_img\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(84, 20, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(85, 20, 'position', 'normal'),
(86, 20, 'layout', 'default'),
(87, 20, 'hide_on_screen', ''),
(88, 20, '_edit_lock', '1488745204:1'),
(92, 22, 'banner_img', '14'),
(93, 22, '_banner_img', 'field_58bc64dcba792'),
(94, 22, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(95, 22, '_text_inside_banner', 'field_58bc6b028327b'),
(96, 22, 'call_to_action_in_banner', '+420 123 456 789'),
(97, 22, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(98, 22, 'offer_img', '21'),
(99, 22, '_offer_img', 'field_58bc73650a885'),
(100, 2, 'offer_img', '73'),
(101, 2, '_offer_img', 'field_58bc73650a885'),
(102, 23, '_edit_last', '1'),
(103, 23, 'field_58bc744dcdc72', 'a:14:{s:3:\"key\";s:19:\"field_58bc744dcdc72\";s:5:\"label\";s:12:\"offer_nadpis\";s:4:\"name\";s:12:\"offer_nadpis\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(104, 23, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(105, 23, 'position', 'normal'),
(106, 23, 'layout', 'default'),
(107, 23, 'hide_on_screen', ''),
(108, 23, '_edit_lock', '1488745454:1'),
(109, 24, '_edit_last', '1'),
(110, 24, 'field_58bc74897ff23', 'a:13:{s:3:\"key\";s:19:\"field_58bc74897ff23\";s:5:\"label\";s:10:\"offer_text\";s:4:\"name\";s:10:\"offer_text\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(111, 24, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(112, 24, 'position', 'normal'),
(113, 24, 'layout', 'default'),
(114, 24, 'hide_on_screen', ''),
(115, 24, '_edit_lock', '1488745496:1'),
(116, 25, 'offer_nadpis', 'Nabízím:'),
(117, 25, '_offer_nadpis', 'field_58bc744dcdc72'),
(118, 25, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(119, 25, '_offer_text', 'field_58bc74897ff23'),
(120, 25, 'banner_img', '14'),
(121, 25, '_banner_img', 'field_58bc64dcba792'),
(122, 25, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(123, 25, '_text_inside_banner', 'field_58bc6b028327b'),
(124, 25, 'call_to_action_in_banner', '+420 123 456 789'),
(125, 25, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(126, 25, 'offer_img', '21'),
(127, 25, '_offer_img', 'field_58bc73650a885'),
(128, 2, 'offer_nadpis', 'Nabízím:'),
(129, 2, '_offer_nadpis', 'field_58bc744dcdc72'),
(130, 2, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(131, 2, '_offer_text', 'field_58bc74897ff23'),
(132, 26, '_edit_last', '1'),
(133, 26, 'field_58bc7754bce8a', 'a:11:{s:3:\"key\";s:19:\"field_58bc7754bce8a\";s:5:\"label\";s:15:\"offer_3_cols_bg\";s:4:\"name\";s:15:\"offer_3_cols_bg\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(134, 26, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(135, 26, 'position', 'normal'),
(136, 26, 'layout', 'default'),
(137, 26, 'hide_on_screen', ''),
(138, 26, '_edit_lock', '1488746206:1'),
(142, 28, 'offer_3_cols_bg', '27'),
(143, 28, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(144, 28, 'offer_nadpis', 'Nabízím:'),
(145, 28, '_offer_nadpis', 'field_58bc744dcdc72'),
(146, 28, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(147, 28, '_offer_text', 'field_58bc74897ff23'),
(148, 28, 'banner_img', '14'),
(149, 28, '_banner_img', 'field_58bc64dcba792'),
(150, 28, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(151, 28, '_text_inside_banner', 'field_58bc6b028327b'),
(152, 28, 'call_to_action_in_banner', '+420 123 456 789'),
(153, 28, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(154, 28, 'offer_img', '21'),
(155, 28, '_offer_img', 'field_58bc73650a885'),
(156, 2, 'offer_3_cols_bg', '74'),
(157, 2, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(158, 29, '_edit_last', '1'),
(159, 29, 'field_58bc78cefa144', 'a:14:{s:3:\"key\";s:19:\"field_58bc78cefa144\";s:5:\"label\";s:21:\"offer_3_cols_nadpis_1\";s:4:\"name\";s:21:\"offer_3_cols_nadpis_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(161, 29, 'position', 'normal'),
(162, 29, 'layout', 'default'),
(163, 29, 'hide_on_screen', ''),
(164, 29, '_edit_lock', '1488747044:1'),
(165, 29, 'field_58bc78ee4560f', 'a:13:{s:3:\"key\";s:19:\"field_58bc78ee4560f\";s:5:\"label\";s:19:\"offer_3_cols_text_1\";s:4:\"name\";s:19:\"offer_3_cols_text_1\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(168, 30, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(169, 30, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(170, 30, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(171, 30, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(172, 30, 'offer_3_cols_bg', '27'),
(173, 30, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(174, 30, 'offer_nadpis', 'Nabízím:'),
(175, 30, '_offer_nadpis', 'field_58bc744dcdc72'),
(176, 30, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(177, 30, '_offer_text', 'field_58bc74897ff23'),
(178, 30, 'banner_img', '14'),
(179, 30, '_banner_img', 'field_58bc64dcba792'),
(180, 30, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(181, 30, '_text_inside_banner', 'field_58bc6b028327b'),
(182, 30, 'call_to_action_in_banner', '+420 123 456 789'),
(183, 30, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(184, 30, 'offer_img', '21'),
(185, 30, '_offer_img', 'field_58bc73650a885'),
(186, 2, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(187, 2, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(188, 2, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(189, 2, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(191, 29, 'field_58bc7a3ba7455', 'a:14:{s:3:\"key\";s:19:\"field_58bc7a3ba7455\";s:5:\"label\";s:21:\"offer_3_cols_nadpis_2\";s:4:\"name\";s:21:\"offer_3_cols_nadpis_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(192, 29, 'field_58bc7a57a7456', 'a:13:{s:3:\"key\";s:19:\"field_58bc7a57a7456\";s:5:\"label\";s:19:\"offer_3_cols_text_2\";s:4:\"name\";s:19:\"offer_3_cols_text_2\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(193, 29, 'field_58bc7a86a7457', 'a:14:{s:3:\"key\";s:19:\"field_58bc7a86a7457\";s:5:\"label\";s:21:\"offer_3_cols_nadpis_3\";s:4:\"name\";s:21:\"offer_3_cols_nadpis_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(194, 29, 'field_58bc7a9ca7458', 'a:13:{s:3:\"key\";s:19:\"field_58bc7a9ca7458\";s:5:\"label\";s:19:\"offer_3_cols_text_3\";s:4:\"name\";s:19:\"offer_3_cols_text_3\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(196, 29, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(197, 31, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(198, 31, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(199, 31, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(200, 31, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(201, 31, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(202, 31, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(203, 31, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(204, 31, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(205, 31, 'offer_3_cols_nadpis_3', ''),
(206, 31, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(207, 31, 'offer_3_cols_text_3', ''),
(208, 31, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(209, 31, 'offer_3_cols_bg', '27'),
(210, 31, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(211, 31, 'offer_nadpis', 'Nabízím:'),
(212, 31, '_offer_nadpis', 'field_58bc744dcdc72'),
(213, 31, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(214, 31, '_offer_text', 'field_58bc74897ff23'),
(215, 31, 'banner_img', '14'),
(216, 31, '_banner_img', 'field_58bc64dcba792'),
(217, 31, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(218, 31, '_text_inside_banner', 'field_58bc6b028327b'),
(219, 31, 'call_to_action_in_banner', '+420 123 456 789'),
(220, 31, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(221, 31, 'offer_img', '21'),
(222, 31, '_offer_img', 'field_58bc73650a885'),
(223, 2, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(224, 2, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(225, 2, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(226, 2, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(227, 2, 'offer_3_cols_nadpis_3', 'Plynoinstalace'),
(228, 2, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(229, 2, 'offer_3_cols_text_3', 'kompletní rozvody plynu:\r\n\r\nv bytech,\r\npanelových domech,\r\nrodinných domech,\r\nprůmyslových halách '),
(230, 2, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(231, 32, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(232, 32, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(233, 32, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(234, 32, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(235, 32, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(236, 32, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(237, 32, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(238, 32, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(239, 32, 'offer_3_cols_nadpis_3', 'Plynoinstalace'),
(240, 32, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(241, 32, 'offer_3_cols_text_3', 'kompletní rozvody plynu:\r\n\r\nv bytech,\r\npanelových domech,\r\nrodinných domech,\r\nprůmyslových halách '),
(242, 32, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(243, 32, 'offer_3_cols_bg', '27'),
(244, 32, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(245, 32, 'offer_nadpis', 'Nabízím:'),
(246, 32, '_offer_nadpis', 'field_58bc744dcdc72'),
(247, 32, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(248, 32, '_offer_text', 'field_58bc74897ff23'),
(249, 32, 'banner_img', '14'),
(250, 32, '_banner_img', 'field_58bc64dcba792'),
(251, 32, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(252, 32, '_text_inside_banner', 'field_58bc6b028327b'),
(253, 32, 'call_to_action_in_banner', '+420 123 456 789'),
(254, 32, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(255, 32, 'offer_img', '21'),
(256, 32, '_offer_img', 'field_58bc73650a885'),
(257, 33, '_edit_last', '1'),
(258, 33, 'field_58bc8523e3d67', 'a:13:{s:3:\"key\";s:19:\"field_58bc8523e3d67\";s:5:\"label\";s:15:\"other_args_text\";s:4:\"name\";s:15:\"other_args_text\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(259, 33, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(260, 33, 'position', 'normal'),
(261, 33, 'layout', 'default'),
(262, 33, 'hide_on_screen', ''),
(263, 33, '_edit_lock', '1488749740:1'),
(264, 34, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(265, 34, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(266, 34, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(267, 34, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(268, 34, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(269, 34, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(270, 34, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(271, 34, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(272, 34, 'offer_3_cols_nadpis_3', 'Plynoinstalace'),
(273, 34, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(274, 34, 'offer_3_cols_text_3', 'kompletní rozvody plynu:\r\n\r\nv bytech,\r\npanelových domech,\r\nrodinných domech,\r\nprůmyslových halách '),
(275, 34, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(276, 34, 'offer_3_cols_bg', '27'),
(277, 34, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(278, 34, 'offer_nadpis', 'Nabízím:'),
(279, 34, '_offer_nadpis', 'field_58bc744dcdc72'),
(280, 34, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(281, 34, '_offer_text', 'field_58bc74897ff23'),
(282, 34, 'other_args_text', 'Ve svém oboru se věnuji neustále nejnovějším technologiím a moderním postupům.\r\nV oboru působím od roku XXXX.\r\nPoužívám všechny aktuální moderní postupy, materiály i techniku pro splnění i nejnáročnějších požadavků.\r\nMým cílem je poskytnout nejlepší výsledek a službu, aby se zákazník v nově zrekonstruovaném prostoru\r\ncítil dobře a měl skvělý pocit z naší spolupráce.\r\nVždy se snažím najít nejlepší a nejvhodnější řešení v ohledu na finanční možnosti zákazníka.  '),
(283, 34, '_other_args_text', 'field_58bc8523e3d67'),
(284, 34, 'banner_img', '14'),
(285, 34, '_banner_img', 'field_58bc64dcba792'),
(286, 34, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(287, 34, '_text_inside_banner', 'field_58bc6b028327b'),
(288, 34, 'call_to_action_in_banner', '+420 123 456 789'),
(289, 34, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(290, 34, 'offer_img', '21'),
(291, 34, '_offer_img', 'field_58bc73650a885'),
(292, 2, 'other_args_text', 'Ve svém oboru se věnuji neustále nejnovějším technologiím a moderním postupům.\r\nV oboru působím od roku 1990.\r\nPoužívám všechny aktuální moderní postupy, materiály i techniku pro splnění i nejnáročnějších požadavků.\r\nMým cílem je poskytnout nejlepší výsledek a službu, aby se zákazník v nově zrekonstruovaném prostoru\r\ncítil dobře a měl skvělý pocit z naší spolupráce.\r\nVždy se snažím najít nejlepší a nejvhodnější řešení v ohledu na finanční možnosti zákazníka.  '),
(293, 2, '_other_args_text', 'field_58bc8523e3d67'),
(294, 44, '_form', '[text* name id:contactName placeholder \"Jméno\"]\n[email* email id:contactEmail placeholder \"E-mail\"]\n[textarea textarea id:contactText placeholder \"Vzkaz\"]\n[submit \"Odeslat\"]'),
(295, 44, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:6:\"[name]\";s:6:\"sender\";s:40:\"[email] <instalater@instalaterwenzel.cz>\";s:9:\"recipient\";s:22:\"marek@marekmelichar.cz\";s:4:\"body\";s:18:\"[textarea] zprava:\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(296, 44, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:0:\"\";s:6:\"sender\";s:0:\"\";s:9:\"recipient\";s:0:\"\";s:4:\"body\";s:0:\"\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(297, 44, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(298, 44, '_additional_settings', ''),
(299, 44, '_locale', 'en_US'),
(316, 68, '_menu_item_type', 'post_type'),
(317, 68, '_menu_item_menu_item_parent', '0'),
(318, 68, '_menu_item_object_id', '7'),
(319, 68, '_menu_item_object', 'page'),
(320, 68, '_menu_item_target', ''),
(321, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(322, 68, '_menu_item_xfn', ''),
(323, 68, '_menu_item_url', ''),
(325, 69, '_menu_item_type', 'post_type'),
(326, 69, '_menu_item_menu_item_parent', '0'),
(327, 69, '_menu_item_object_id', '5'),
(328, 69, '_menu_item_object', 'page'),
(329, 69, '_menu_item_target', ''),
(330, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(331, 69, '_menu_item_xfn', ''),
(332, 69, '_menu_item_url', ''),
(334, 70, '_menu_item_type', 'post_type'),
(335, 70, '_menu_item_menu_item_parent', '0'),
(336, 70, '_menu_item_object_id', '2'),
(337, 70, '_menu_item_object', 'page'),
(338, 70, '_menu_item_target', ''),
(339, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(340, 70, '_menu_item_xfn', ''),
(341, 70, '_menu_item_url', ''),
(344, 72, '_wp_attached_file', '2017/03/banner.jpg'),
(345, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:450;s:4:\"file\";s:18:\"2017/03/banner.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"banner-300x54.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x138.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x184.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 72, '_wp_attachment_image_alt', 'banner instalater Wenzel'),
(347, 73, '_wp_attached_file', '2017/03/offer-img.jpg'),
(348, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:542;s:6:\"height\";i:361;s:4:\"file\";s:21:\"2017/03/offer-img.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"offer-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"offer-img-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 73, '_wp_attachment_image_alt', 'Pavel Wenzel instalater Brno a okolí'),
(350, 74, '_wp_attached_file', '2017/03/3cols_offer_bg.jpg'),
(351, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:523;s:4:\"file\";s:26:\"2017/03/3cols_offer_bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"3cols_offer_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"3cols_offer_bg-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"3cols_offer_bg-768x161.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"3cols_offer_bg-1024x214.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 74, '_wp_attachment_image_alt', 'co nabizim - instalo voda topeni'),
(353, 75, 'banner_img', '72'),
(354, 75, '_banner_img', 'field_58bc64dcba792'),
(355, 75, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(356, 75, '_text_inside_banner', 'field_58bc6b028327b'),
(357, 75, 'call_to_action_in_banner', '+420 123 456 789'),
(358, 75, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(359, 75, 'offer_img', '73'),
(360, 75, '_offer_img', 'field_58bc73650a885'),
(361, 75, 'offer_nadpis', 'Nabízím:'),
(362, 75, '_offer_nadpis', 'field_58bc744dcdc72'),
(363, 75, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(364, 75, '_offer_text', 'field_58bc74897ff23'),
(365, 75, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(366, 75, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(367, 75, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(368, 75, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(369, 75, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(370, 75, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(371, 75, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(372, 75, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(373, 75, 'offer_3_cols_nadpis_3', 'Plynoinstalace'),
(374, 75, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(375, 75, 'offer_3_cols_text_3', 'kompletní rozvody plynu:\r\n\r\nv bytech,\r\npanelových domech,\r\nrodinných domech,\r\nprůmyslových halách '),
(376, 75, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(377, 75, 'offer_3_cols_bg', '74'),
(378, 75, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(379, 75, 'other_args_text', 'Ve svém oboru se věnuji neustále nejnovějším technologiím a moderním postupům.\r\nV oboru působím od roku XXXX.\r\nPoužívám všechny aktuální moderní postupy, materiály i techniku pro splnění i nejnáročnějších požadavků.\r\nMým cílem je poskytnout nejlepší výsledek a službu, aby se zákazník v nově zrekonstruovaném prostoru\r\ncítil dobře a měl skvělý pocit z naší spolupráce.\r\nVždy se snažím najít nejlepší a nejvhodnější řešení v ohledu na finanční možnosti zákazníka.  '),
(380, 75, '_other_args_text', 'field_58bc8523e3d67'),
(381, 74, 'tiny_compress_images', 'a:5:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:1120239;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:276863;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:2500;s:6:\"height\";i:523;s:5:\"ratio\";d:0.24709999999999998632205233661807142198085784912109375;}s:3:\"end\";i:1488914363;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:3356;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:2971;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:0.88529999999999997584154698415659368038177490234375;}s:3:\"end\";i:1488914364;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:3483;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:3217;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:5:\"ratio\";d:0.923599999999999976552089719916693866252899169921875;}s:3:\"end\";i:1488914365;}s:12:\"medium_large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:14635;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:14368;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:161;s:5:\"ratio\";d:0.9818000000000000060396132539608515799045562744140625;}s:3:\"end\";i:1488914366;}s:5:\"large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:22932;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:22326;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:214;s:5:\"ratio\";d:0.9736000000000000209610107049229554831981658935546875;}s:3:\"end\";i:1488914368;}}'),
(382, 73, 'tiny_compress_images', 'a:3:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:313301;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:109548;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:542;s:6:\"height\";i:361;s:5:\"ratio\";d:0.34970000000000001083577672034152783453464508056640625;}s:3:\"end\";i:1488914365;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:7367;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:7367;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488914366;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:16789;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:16789;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488914367;}}'),
(383, 72, 'tiny_compress_images', 'a:5:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:775691;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:226246;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:2500;s:6:\"height\";i:450;s:5:\"ratio\";d:0.291700000000000014832579608992091380059719085693359375;}s:3:\"end\";i:1488914367;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:5121;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:4712;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:0.92010000000000002895461648222408257424831390380859375;}s:3:\"end\";i:1488914368;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:3315;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:3100;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:54;s:5:\"ratio\";d:0.9351000000000000422772927777259610593318939208984375;}s:3:\"end\";i:1488914368;}s:12:\"medium_large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:13287;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:13287;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:138;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488914370;}s:5:\"large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:20813;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:20813;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:184;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488914371;}}'),
(384, 76, 'banner_img', '72'),
(385, 76, '_banner_img', 'field_58bc64dcba792'),
(386, 76, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?\r\nBRNO A OKOLÍ.'),
(387, 76, '_text_inside_banner', 'field_58bc6b028327b'),
(388, 76, 'call_to_action_in_banner', '+420 123 456 789'),
(389, 76, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(390, 76, 'offer_img', '73'),
(391, 76, '_offer_img', 'field_58bc73650a885'),
(392, 76, 'offer_nadpis', 'Nabízím:'),
(393, 76, '_offer_nadpis', 'field_58bc744dcdc72'),
(394, 76, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(395, 76, '_offer_text', 'field_58bc74897ff23'),
(396, 76, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(397, 76, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(398, 76, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(399, 76, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(400, 76, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(401, 76, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(402, 76, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(403, 76, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(404, 76, 'offer_3_cols_nadpis_3', 'Plynoinstalace'),
(405, 76, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(406, 76, 'offer_3_cols_text_3', 'kompletní rozvody plynu:\r\n\r\nv bytech,\r\npanelových domech,\r\nrodinných domech,\r\nprůmyslových halách '),
(407, 76, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(408, 76, 'offer_3_cols_bg', '74'),
(409, 76, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(410, 76, 'other_args_text', 'Ve svém oboru se věnuji neustále nejnovějším technologiím a moderním postupům.\r\nV oboru působím od roku XXXX.\r\nPoužívám všechny aktuální moderní postupy, materiály i techniku pro splnění i nejnáročnějších požadavků.\r\nMým cílem je poskytnout nejlepší výsledek a službu, aby se zákazník v nově zrekonstruovaném prostoru\r\ncítil dobře a měl skvělý pocit z naší spolupráce.\r\nVždy se snažím najít nejlepší a nejvhodnější řešení v ohledu na finanční možnosti zákazníka.  '),
(411, 76, '_other_args_text', 'field_58bc8523e3d67'),
(412, 77, 'banner_img', '72'),
(413, 77, '_banner_img', 'field_58bc64dcba792'),
(414, 77, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(415, 77, '_text_inside_banner', 'field_58bc6b028327b'),
(416, 77, 'call_to_action_in_banner', '+420 123 456 789'),
(417, 77, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(418, 77, 'offer_img', '73'),
(419, 77, '_offer_img', 'field_58bc73650a885'),
(420, 77, 'offer_nadpis', 'Nabízím:'),
(421, 77, '_offer_nadpis', 'field_58bc744dcdc72'),
(422, 77, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(423, 77, '_offer_text', 'field_58bc74897ff23'),
(424, 77, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(425, 77, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(426, 77, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(427, 77, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(428, 77, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(429, 77, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(430, 77, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(431, 77, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(432, 77, 'offer_3_cols_nadpis_3', 'Plynoinstalace'),
(433, 77, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(434, 77, 'offer_3_cols_text_3', 'kompletní rozvody plynu:\r\n\r\nv bytech,\r\npanelových domech,\r\nrodinných domech,\r\nprůmyslových halách '),
(435, 77, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(436, 77, 'offer_3_cols_bg', '74'),
(437, 77, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(438, 77, 'other_args_text', 'Ve svém oboru se věnuji neustále nejnovějším technologiím a moderním postupům.\r\nV oboru působím od roku XXXX.\r\nPoužívám všechny aktuální moderní postupy, materiály i techniku pro splnění i nejnáročnějších požadavků.\r\nMým cílem je poskytnout nejlepší výsledek a službu, aby se zákazník v nově zrekonstruovaném prostoru\r\ncítil dobře a měl skvělý pocit z naší spolupráce.\r\nVždy se snažím najít nejlepší a nejvhodnější řešení v ohledu na finanční možnosti zákazníka.  '),
(439, 77, '_other_args_text', 'field_58bc8523e3d67'),
(440, 78, 'banner_img', '72'),
(441, 78, '_banner_img', 'field_58bc64dcba792'),
(442, 78, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(443, 78, '_text_inside_banner', 'field_58bc6b028327b'),
(444, 78, 'call_to_action_in_banner', '+420 123 456 789 - BRNO A OKOLÍ');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(445, 78, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(446, 78, 'offer_img', '73'),
(447, 78, '_offer_img', 'field_58bc73650a885'),
(448, 78, 'offer_nadpis', 'Nabízím:'),
(449, 78, '_offer_nadpis', 'field_58bc744dcdc72'),
(450, 78, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(451, 78, '_offer_text', 'field_58bc74897ff23'),
(452, 78, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(453, 78, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(454, 78, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(455, 78, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(456, 78, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(457, 78, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(458, 78, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(459, 78, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(460, 78, 'offer_3_cols_nadpis_3', 'Plynoinstalace'),
(461, 78, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(462, 78, 'offer_3_cols_text_3', 'kompletní rozvody plynu:\r\n\r\nv bytech,\r\npanelových domech,\r\nrodinných domech,\r\nprůmyslových halách '),
(463, 78, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(464, 78, 'offer_3_cols_bg', '74'),
(465, 78, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(466, 78, 'other_args_text', 'Ve svém oboru se věnuji neustále nejnovějším technologiím a moderním postupům.\r\nV oboru působím od roku XXXX.\r\nPoužívám všechny aktuální moderní postupy, materiály i techniku pro splnění i nejnáročnějších požadavků.\r\nMým cílem je poskytnout nejlepší výsledek a službu, aby se zákazník v nově zrekonstruovaném prostoru\r\ncítil dobře a měl skvělý pocit z naší spolupráce.\r\nVždy se snažím najít nejlepší a nejvhodnější řešení v ohledu na finanční možnosti zákazníka.  '),
(467, 78, '_other_args_text', 'field_58bc8523e3d67'),
(474, 82, '_wp_attached_file', '2017/03/DSC_6648.jpg'),
(475, 82, 'tiny_compress_images', 'a:5:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:7539673;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:629095;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:5:\"ratio\";d:0.0834000000000000019095836023552692495286464691162109375;}s:3:\"end\";i:1488915119;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:7403;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:7403;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488915119;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:17181;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:17181;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488915120;}s:12:\"medium_large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:80122;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:63548;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:5:\"ratio\";d:0.79310000000000002717825964282383210957050323486328125;}s:3:\"end\";i:1488915122;}s:5:\"large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:129145;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:86665;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:5:\"ratio\";d:0.67110000000000002984279490192420780658721923828125;}s:3:\"end\";i:1488915125;}}'),
(476, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:4:\"file\";s:20:\"2017/03/DSC_6648.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_6648-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_6648-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_6648-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_6648-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON 1 J3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1456584371\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"11\";s:3:\"iso\";s:4:\"2200\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(477, 83, '_wp_attached_file', '2017/03/DSC_7270.jpg'),
(478, 83, 'tiny_compress_images', 'a:5:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:6894649;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:438245;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:5:\"ratio\";d:0.06360000000000000375255382323302910663187503814697265625;}s:3:\"end\";i:1488915216;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:5295;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:5195;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:0.98109999999999997211119762141606770455837249755859375;}s:3:\"end\";i:1488915217;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:11119;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:11119;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488915218;}s:12:\"medium_large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:54751;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:53542;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:5:\"ratio\";d:0.9778999999999999914734871708787977695465087890625;}s:3:\"end\";i:1488915220;}s:5:\"large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:91156;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:81703;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:5:\"ratio\";d:0.89629999999999998561150960085797123610973358154296875;}s:3:\"end\";i:1488915223;}}'),
(479, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:4:\"file\";s:20:\"2017/03/DSC_7270.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_7270-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_7270-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_7270-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_7270-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON 1 J3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1466930243\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"11\";s:3:\"iso\";s:4:\"3200\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(480, 83, '_wp_attachment_image_alt', 'priprava trubek do zdi'),
(481, 82, '_wp_attachment_image_alt', 'montaz zasobniku na teplou vodu'),
(482, 84, '_wp_attached_file', '2017/03/DSC_7227.jpg'),
(483, 84, 'tiny_compress_images', 'a:5:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:6175585;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:469911;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:5:\"ratio\";d:0.076100000000000000976996261670137755572795867919921875;}s:3:\"end\";i:1488915339;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:5466;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:5375;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:0.983400000000000051869619710487313568592071533203125;}s:3:\"end\";i:1488915340;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:12387;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:12387;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488915341;}s:12:\"medium_large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:56548;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:52321;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:5:\"ratio\";d:0.9252000000000000223820961764431558549404144287109375;}s:3:\"end\";i:1488915343;}s:5:\"large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:93107;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:71622;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:5:\"ratio\";d:0.76919999999999999484856516573927365243434906005859375;}s:3:\"end\";i:1488915345;}}'),
(484, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:4:\"file\";s:20:\"2017/03/DSC_7227.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_7227-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_7227-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_7227-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_7227-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON 1 J3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1466245191\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"11\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(485, 84, '_wp_attachment_image_alt', ''),
(488, 90, '_wp_attached_file', '2017/03/DSC_7968.jpg'),
(489, 90, 'tiny_compress_images', 'a:5:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:6659875;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:706354;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:5:\"ratio\";d:0.1060999999999999998667732370449812151491641998291015625;}s:3:\"end\";i:1488916949;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:5432;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:5304;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:0.97640000000000004565237077258643694221973419189453125;}s:3:\"end\";i:1488916950;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:13492;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:13492;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488916951;}s:12:\"medium_large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:70295;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:60903;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:5:\"ratio\";d:0.86639999999999994795274460557266138494014739990234375;}s:3:\"end\";i:1488916953;}s:5:\"large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:119957;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:98358;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:5:\"ratio\";d:0.81989999999999996216359932077466510236263275146484375;}s:3:\"end\";i:1488916955;}}'),
(490, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:4:\"file\";s:20:\"2017/03/DSC_7968.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_7968-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_7968-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_7968-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_7968-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON 1 J3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1472298724\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"11\";s:3:\"iso\";s:3:\"560\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(491, 91, '_wp_attached_file', '2017/03/DSC_7985.jpg'),
(492, 91, 'tiny_compress_images', 'a:5:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:7136347;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:476527;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:5:\"ratio\";d:0.0667999999999999982680520815847557969391345977783203125;}s:3:\"end\";i:1488916995;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:5435;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:5352;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:0.98470000000000001971756091734278015792369842529296875;}s:3:\"end\";i:1488916995;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:12694;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:12694;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488916996;}s:12:\"medium_large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:60117;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:49260;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:5:\"ratio\";d:0.81940000000000001723066134218242950737476348876953125;}s:3:\"end\";i:1488916998;}s:5:\"large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:98213;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:79306;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:5:\"ratio\";d:0.80749999999999999555910790149937383830547332763671875;}s:3:\"end\";i:1488917000;}}'),
(493, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:4:\"file\";s:20:\"2017/03/DSC_7985.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_7985-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_7985-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_7985-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_7985-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON 1 J3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1472748256\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"11\";s:3:\"iso\";s:4:\"3200\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(494, 92, '_wp_attached_file', '2017/03/DSC_6994.jpg'),
(495, 92, 'tiny_compress_images', 'a:5:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:7175332;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:686788;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:5:\"ratio\";d:0.09569999999999999340527523372657014988362789154052734375;}s:3:\"end\";i:1488917042;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:5590;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:5369;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:0.96050000000000002042810365310288034379482269287109375;}s:3:\"end\";i:1488917042;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:12446;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:12288;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:5:\"ratio\";d:0.98729999999999995541344333105371333658695220947265625;}s:3:\"end\";i:1488917043;}s:12:\"medium_large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:72790;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:69527;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:5:\"ratio\";d:0.955200000000000049027448767446912825107574462890625;}s:3:\"end\";i:1488917046;}s:5:\"large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:124653;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:101759;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:5:\"ratio\";d:0.8163000000000000255795384873636066913604736328125;}s:3:\"end\";i:1488917049;}}'),
(496, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:4:\"file\";s:20:\"2017/03/DSC_6994.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_6994-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_6994-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"DSC_6994-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"DSC_6994-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON 1 J3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1463825293\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"11\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(497, 93, '_wp_attached_file', '2017/03/DSC_7968-1.jpg'),
(498, 93, 'tiny_compress_images', 'a:5:{i:0;a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:6659875;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:706354;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:5:\"ratio\";d:0.1060999999999999998667732370449812151491641998291015625;}s:3:\"end\";i:1488917112;}s:9:\"thumbnail\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:5432;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:5304;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:5:\"ratio\";d:0.97640000000000004565237077258643694221973419189453125;}s:3:\"end\";i:1488917113;}s:6:\"medium\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:13492;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:13492;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:5:\"ratio\";d:1;}s:3:\"end\";i:1488917113;}s:12:\"medium_large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:70295;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:60903;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:5:\"ratio\";d:0.86639999999999994795274460557266138494014739990234375;}s:3:\"end\";i:1488917116;}s:5:\"large\";a:3:{s:5:\"input\";a:2:{s:4:\"size\";i:119957;s:4:\"type\";s:10:\"image/jpeg\";}s:6:\"output\";a:5:{s:4:\"size\";i:98358;s:4:\"type\";s:10:\"image/jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:5:\"ratio\";d:0.81989999999999996216359932077466510236263275146484375;}s:3:\"end\";i:1488917118;}}'),
(499, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3072;s:4:\"file\";s:22:\"2017/03/DSC_7968-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"DSC_7968-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"DSC_7968-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"DSC_7968-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"DSC_7968-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON 1 J3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1472298724\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"11\";s:3:\"iso\";s:3:\"560\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(500, 91, '_wp_attachment_image_alt', 'kotelna rodinneho domu'),
(501, 92, '_wp_attachment_image_alt', 'priprava rozvodu vody na rodinnem dome'),
(502, 93, '_wp_attachment_image_alt', 'podlahove rozvody na rodinnem dome'),
(503, 96, 'banner_img', '72'),
(504, 96, '_banner_img', 'field_58bc64dcba792'),
(505, 96, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(506, 96, '_text_inside_banner', 'field_58bc6b028327b'),
(507, 96, 'call_to_action_in_banner', '+420 123 456 789 - BRNO A OKOLÍ'),
(508, 96, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(509, 96, 'offer_img', '73'),
(510, 96, '_offer_img', 'field_58bc73650a885'),
(511, 96, 'offer_nadpis', 'Nabízím:'),
(512, 96, '_offer_nadpis', 'field_58bc744dcdc72'),
(513, 96, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(514, 96, '_offer_text', 'field_58bc74897ff23'),
(515, 96, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(516, 96, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(517, 96, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(518, 96, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(519, 96, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(520, 96, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(521, 96, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(522, 96, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(523, 96, 'offer_3_cols_nadpis_3', 'Plynoinstalace'),
(524, 96, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(525, 96, 'offer_3_cols_text_3', 'kompletní rozvody plynu:\r\n\r\nv bytech,\r\npanelových domech,\r\nrodinných domech,\r\nprůmyslových halách '),
(526, 96, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(527, 96, 'offer_3_cols_bg', '74'),
(528, 96, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(529, 96, 'other_args_text', 'Ve svém oboru se věnuji neustále nejnovějším technologiím a moderním postupům.\r\nV oboru působím od roku 1990.\r\nPoužívám všechny aktuální moderní postupy, materiály i techniku pro splnění i nejnáročnějších požadavků.\r\nMým cílem je poskytnout nejlepší výsledek a službu, aby se zákazník v nově zrekonstruovaném prostoru\r\ncítil dobře a měl skvělý pocit z naší spolupráce.\r\nVždy se snažím najít nejlepší a nejvhodnější řešení v ohledu na finanční možnosti zákazníka.  '),
(530, 96, '_other_args_text', 'field_58bc8523e3d67'),
(531, 97, 'banner_img', '72'),
(532, 97, '_banner_img', 'field_58bc64dcba792'),
(533, 97, 'call_to_action_in_banner', '+420602110943 - BRNO A OKOLÍ'),
(534, 97, '_call_to_action_in_banner', 'field_58bc6c18977a3'),
(535, 97, 'text_inside_banner', 'SHÁNÍTE ŠIKOVNÉHO INSTALATÉRA / TOPENÁŘE / PLYNAŘE ?\r\nPRASKLO VODOVODNÍ POTRUBÍ? NETOPÍ TOPENÍ?\r\nSTAVÍTE DŮM ČI CHCETE ZREKONSTRUOVAT VÁŠ BYT?\r\nPLÁNUJETE REKONSTRUKCI KOUPELNY?'),
(536, 97, '_text_inside_banner', 'field_58bc6b028327b'),
(537, 97, 'offer_img', '73'),
(538, 97, '_offer_img', 'field_58bc73650a885'),
(539, 97, 'offer_nadpis', 'Nabízím:'),
(540, 97, '_offer_nadpis', 'field_58bc744dcdc72'),
(541, 97, 'offer_text', 'generální opravy stávajících rozvodů,  \r\nmontáže nových rozvodů,  \r\nprovizorní rozvody,  \r\npožární vodovody,  \r\nrozvody vody v provedení plast,  měď, \r\n rekonstrukce stoupaček, \r\n výměna vodoměrů,  \r\nveškeré opravy a rekonstrukce vodovodních potrubí,  \r\nrekonstrukce koupelen,  toalet a kuchyní, \r\n drobné opravy,  \r\nporuchy a havárie,  \r\ndodávka veškerého materiálu, \r\n montáže vodovodních baterii,  \r\nmontáže: umyvadla, vany, sprchové kouty, dřezy, pisoáry,  vodovodní baterie, závěsné wc, \r\na všechny ostatní instalatérské práce'),
(542, 97, '_offer_text', 'field_58bc74897ff23'),
(543, 97, 'offer_3_cols_nadpis_1', 'Instalatérské práce'),
(544, 97, '_offer_3_cols_nadpis_1', 'field_58bc78cefa144'),
(545, 97, 'offer_3_cols_text_1', 'rekonstrukce vody\r\nrekonstrukce stoupaček\r\nmontáže vodoměrů\r\nrozsáhlé instalatérské práce\r\nmontáže, opravy, rekonstrukce\r\nvýměny WC nádržek, bidetů, pisoárů\r\nmontáže sprchových koutů\r\nmontáže van, dřezů\r\npřipojení myčky, pračky\r\n'),
(546, 97, '_offer_3_cols_text_1', 'field_58bc78ee4560f'),
(547, 97, 'offer_3_cols_nadpis_2', 'Topenářské práce'),
(548, 97, '_offer_3_cols_nadpis_2', 'field_58bc7a3ba7455'),
(549, 97, 'offer_3_cols_text_2', 'opravy, výměny, instalace topných systémů\r\nmontáže podlahového topení\r\nmontáže kotlů\r\nrekonstrukce topení\r\nopravy a výměna radiátorových termostatů\r\nmontáž radiátorových těles, žebříků\r\nopravy a čištění topných systémů\r\n'),
(550, 97, '_offer_3_cols_text_2', 'field_58bc7a57a7456'),
(551, 97, 'offer_3_cols_nadpis_3', 'Plynoinstalace'),
(552, 97, '_offer_3_cols_nadpis_3', 'field_58bc7a86a7457'),
(553, 97, 'offer_3_cols_text_3', 'kompletní rozvody plynu:\r\n\r\nv bytech,\r\npanelových domech,\r\nrodinných domech,\r\nprůmyslových halách '),
(554, 97, '_offer_3_cols_text_3', 'field_58bc7a9ca7458'),
(555, 97, 'offer_3_cols_bg', '74'),
(556, 97, '_offer_3_cols_bg', 'field_58bc7754bce8a'),
(557, 97, 'other_args_text', 'Ve svém oboru se věnuji neustále nejnovějším technologiím a moderním postupům.\r\nV oboru působím od roku 1990.\r\nPoužívám všechny aktuální moderní postupy, materiály i techniku pro splnění i nejnáročnějších požadavků.\r\nMým cílem je poskytnout nejlepší výsledek a službu, aby se zákazník v nově zrekonstruovaném prostoru\r\ncítil dobře a měl skvělý pocit z naší spolupráce.\r\nVždy se snažím najít nejlepší a nejvhodnější řešení v ohledu na finanční možnosti zákazníka.  '),
(558, 97, '_other_args_text', 'field_58bc8523e3d67'),
(561, 44, '_config_errors', 'a:1:{s:9:\"form.body\";a:1:{i:0;a:2:{s:4:\"code\";i:107;s:4:\"args\";a:3:{s:7:\"message\";s:55:\"Unavailable names (%names%) are used for form controls.\";s:6:\"params\";a:1:{s:5:\"names\";s:4:\"name\";}s:4:\"link\";s:63:\"https://contactform7.com/configuration-errors/unavailable-names\";}}}}');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_posts`
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
-- Vypisuji data pro tabulku `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-03-04 21:39:52', '2017-03-04 21:39:52', '', 'Domů', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-03-08 05:55:35', '2017-03-08 05:55:35', '', 0, 'http://instalaterwenzel.cz/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-03-05 19:04:29', '2017-03-05 19:04:29', '', 'Domu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 19:04:29', '2017-03-05 19:04:29', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2017-03-05 19:04:45', '2017-03-05 19:04:45', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"82,83,84\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"91,92,93\"]', 'Reference', '', 'publish', 'closed', 'closed', '', 'reference', '', '', '2017-03-07 21:45:59', '2017-03-07 21:45:59', '', 0, 'http://instalaterwenzel.cz/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-03-05 19:04:45', '2017-03-05 19:04:45', '', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-05 19:04:45', '2017-03-05 19:04:45', '', 5, 'http://instalaterwenzel.cz/2017/03/05/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-03-05 19:05:25', '2017-03-05 19:05:25', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>KONTAKT</strong></h1>\r\n&nbsp;\r\n<p style=\"text-align: center;\">Pavel Wenzel</p>\r\n<p style=\"text-align: center;\">Křiby 123</p>\r\n<p style=\"text-align: center;\">Tetčice</p>\r\n[contact-form-7 id=\"44\" title=\"Contact form 1\"]', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2017-11-17 09:48:24', '2017-11-17 09:48:24', '', 0, 'http://instalaterwenzel.cz/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-03-05 19:05:25', '2017-03-05 19:05:25', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-05 19:05:25', '2017-03-05 19:05:25', '', 7, 'http://instalaterwenzel.cz/2017/03/05/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-03-05 19:08:14', '2017-03-05 19:08:14', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2017-03-05 19:08:14', '2017-03-05 19:08:14', '', 0, 'http://instalaterwenzel.cz/?p=9', 3, 'nav_menu_item', '', 0),
(10, 1, '2017-03-05 19:08:14', '2017-03-05 19:08:14', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2017-03-05 19:08:14', '2017-03-05 19:08:14', '', 0, 'http://instalaterwenzel.cz/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2017-03-05 19:08:14', '2017-03-05 19:08:14', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2017-03-05 19:08:14', '2017-03-05 19:08:14', '', 0, 'http://instalaterwenzel.cz/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2017-03-05 19:13:16', '2017-03-05 19:13:16', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 19:13:16', '2017-03-05 19:13:16', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-03-05 19:20:57', '2017-03-05 19:20:57', '', 'banner_img', '', 'publish', 'closed', 'closed', '', 'acf_banner_img', '', '', '2017-03-05 19:29:19', '2017-03-05 19:29:19', '', 0, 'http://instalaterwenzel.cz/?post_type=acf&#038;p=13', 0, 'acf', '', 0),
(15, 1, '2017-03-05 19:23:08', '2017-03-05 19:23:08', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 19:23:08', '2017-03-05 19:23:08', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-03-05 19:46:53', '2017-03-05 19:46:53', '', 'text_inside_banner', '', 'publish', 'closed', 'closed', '', 'acf_text_inside_banner', '', '', '2017-03-05 19:46:53', '2017-03-05 19:46:53', '', 0, 'http://instalaterwenzel.cz/?post_type=acf&#038;p=16', 0, 'acf', '', 0),
(17, 1, '2017-03-05 19:47:12', '2017-03-05 19:47:12', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 19:47:12', '2017-03-05 19:47:12', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-03-05 19:51:16', '2017-03-05 19:51:16', '', 'call_to_action_in_banner', '', 'publish', 'closed', 'closed', '', 'acf_call_to_action_in_banner', '', '', '2017-03-05 19:51:16', '2017-03-05 19:51:16', '', 0, 'http://instalaterwenzel.cz/?post_type=acf&#038;p=18', 0, 'acf', '', 0),
(19, 1, '2017-03-05 19:51:57', '2017-03-05 19:51:57', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 19:51:57', '2017-03-05 19:51:57', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-03-05 20:22:21', '2017-03-05 20:22:21', '', 'offer_img', '', 'publish', 'closed', 'closed', '', 'acf_offer_img', '', '', '2017-03-05 20:22:21', '2017-03-05 20:22:21', '', 0, 'http://instalaterwenzel.cz/?post_type=acf&#038;p=20', 0, 'acf', '', 0),
(22, 1, '2017-03-05 20:23:50', '2017-03-05 20:23:50', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 20:23:50', '2017-03-05 20:23:50', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-03-05 20:26:28', '2017-03-05 20:26:28', '', 'offer_nadpis', '', 'publish', 'closed', 'closed', '', 'acf_offer_nadpis', '', '', '2017-03-05 20:26:28', '2017-03-05 20:26:28', '', 0, 'http://instalaterwenzel.cz/?post_type=acf&#038;p=23', 0, 'acf', '', 0),
(24, 1, '2017-03-05 20:27:15', '2017-03-05 20:27:15', '', 'offer_text', '', 'publish', 'closed', 'closed', '', 'acf_offer_text', '', '', '2017-03-05 20:27:15', '2017-03-05 20:27:15', '', 0, 'http://instalaterwenzel.cz/?post_type=acf&#038;p=24', 0, 'acf', '', 0),
(25, 1, '2017-03-05 20:29:26', '2017-03-05 20:29:26', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 20:29:26', '2017-03-05 20:29:26', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-03-05 20:39:06', '2017-03-05 20:39:06', '', 'offer_3_cols_bg', '', 'publish', 'closed', 'closed', '', 'acf_offer_3_cols_bg', '', '', '2017-03-05 20:39:06', '2017-03-05 20:39:06', '', 0, 'http://instalaterwenzel.cz/?post_type=acf&#038;p=26', 0, 'acf', '', 0),
(28, 1, '2017-03-05 20:41:19', '2017-03-05 20:41:19', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 20:41:19', '2017-03-05 20:41:19', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-03-05 20:45:25', '2017-03-05 20:45:25', '', '3 cols offer', '', 'publish', 'closed', 'closed', '', 'acf_3-cols-offer', '', '', '2017-03-05 20:53:07', '2017-03-05 20:53:07', '', 0, 'http://instalaterwenzel.cz/?post_type=acf&#038;p=29', 0, 'acf', '', 0),
(30, 1, '2017-03-05 20:49:22', '2017-03-05 20:49:22', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 20:49:22', '2017-03-05 20:49:22', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-03-05 20:57:19', '2017-03-05 20:57:19', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 20:57:19', '2017-03-05 20:57:19', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-03-05 20:58:27', '2017-03-05 20:58:27', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 20:58:27', '2017-03-05 20:58:27', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-03-05 21:38:03', '2017-03-05 21:38:03', '', 'other_args_text', '', 'publish', 'closed', 'closed', '', 'acf_other_args_text', '', '', '2017-03-05 21:38:03', '2017-03-05 21:38:03', '', 0, 'http://instalaterwenzel.cz/?post_type=acf&#038;p=33', 0, 'acf', '', 0),
(34, 1, '2017-03-05 21:42:37', '2017-03-05 21:42:37', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-05 21:42:37', '2017-03-05 21:42:37', '', 2, 'http://instalaterwenzel.cz/2017/03/05/2-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-03-06 17:37:14', '2017-03-06 17:37:14', '<h1>REFERENCE</h1>\r\n&nbsp;\r\n<ol>\r\n 	<li>reference</li>\r\n</ol>\r\n<img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 17:37:14', '2017-03-06 17:37:14', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-03-06 17:38:55', '2017-03-06 17:38:55', '<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\nreference cislo 1\r\n\r\n<img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 17:38:55', '2017-03-06 17:38:55', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-03-06 17:39:06', '2017-03-06 17:39:06', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\nreference cislo 1\r\n\r\n<img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 17:39:06', '2017-03-06 17:39:06', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-03-06 17:39:16', '2017-03-06 17:39:16', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\nreference cislo 1\r\n\r\n<img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 17:39:16', '2017-03-06 17:39:16', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-03-06 17:42:15', '2017-03-06 17:42:15', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\nreference cislo 1\r\n\r\n<img class=\"size-medium wp-image-21 alignleft\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"size-medium wp-image-21 aligncenter\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" /><img class=\"size-medium wp-image-21 alignright\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 17:42:15', '2017-03-06 17:42:15', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-03-06 17:42:35', '2017-03-06 17:42:35', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\nreference cislo 1\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-medium wp-image-21 alignnone\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 17:42:35', '2017-03-06 17:42:35', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-03-06 17:43:04', '2017-03-06 17:43:04', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-medium wp-image-21 alignnone\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />     <img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />     <img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 17:43:04', '2017-03-06 17:43:04', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-03-06 17:43:19', '2017-03-06 17:43:19', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-medium wp-image-21 alignnone\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />          <img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />          <img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 17:43:19', '2017-03-06 17:43:19', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-03-06 17:44:02', '2017-03-06 17:44:02', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-medium wp-image-21 alignnone\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />          <img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />          <img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 2\r\n\r\n<img class=\"size-medium wp-image-21 alignnone\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />          <img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />          <img class=\"alignnone size-medium wp-image-21\" src=\"http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img-300x200.jpg\" alt=\"instalaterstvi nabidka\" width=\"300\" height=\"200\" />', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 17:44:02', '2017-03-06 17:44:02', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-03-06 19:13:23', '2017-03-06 19:13:23', '[text* name id:contactName placeholder \"Jméno\"]\r\n[email* email id:contactEmail placeholder \"E-mail\"]\r\n[textarea textarea id:contactText placeholder \"Vzkaz\"]\r\n[submit \"Odeslat\"]\n1\n[name]\n[email] <instalater@instalaterwenzel.cz>\nmarek@marekmelichar.cz\n[textarea] zprava:\n\n\n\n\n\n\n\n\n\n\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-11-17 09:50:33', '2017-11-17 09:50:33', '', 0, 'http://instalaterwenzel.cz/?post_type=wpcf7_contact_form&#038;p=44', 0, 'wpcf7_contact_form', '', 0),
(45, 1, '2017-03-06 19:14:36', '2017-03-06 19:14:36', '[contact-form-7 id=\"44\" title=\"Contact form 1\"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-06 19:14:36', '2017-03-06 19:14:36', '', 7, 'http://instalaterwenzel.cz/2017/03/06/7-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-03-06 20:00:53', '2017-03-06 20:00:53', '<p style=\"text-align: left;\">Pavel Wenzel</p>\r\n<p style=\"text-align: left;\">Křiby 123</p>\r\n<p style=\"text-align: left;\">Tetčice</p>\r\n<p style=\"text-align: right;\">[contact-form-7 id=\"44\" title=\"Contact form 1\"]</p>', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-06 20:00:53', '2017-03-06 20:00:53', '', 7, 'http://instalaterwenzel.cz/2017/03/06/7-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-03-06 20:01:55', '2017-03-06 20:01:55', '<div >\n<p style=\"text-align: left;\">Pavel Wenzel</p>\n<p style=\"text-align: left;\">Křiby 123</p>\n<p style=\"text-align: left;\">Tetčice</p>\n<p style=\"text-align: right;\">[contact-form-7 id=\"44\" title=\"Contact form 1\"]</p>', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2017-03-06 20:01:55', '2017-03-06 20:01:55', '', 7, 'http://instalaterwenzel.cz/2017/03/06/7-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2017-03-06 20:02:26', '2017-03-06 20:02:26', '<div style=\"float: left;\">\r\n<p style=\"text-align: left;\">Pavel Wenzel</p>\r\n<p style=\"text-align: left;\">Křiby 123</p>\r\n<p style=\"text-align: left;\">Tetčice</p>\r\n</div>\r\n<p style=\"float: right;\">[contact-form-7 id=\"44\" title=\"Contact form 1\"]</p>', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-06 20:02:26', '2017-03-06 20:02:26', '', 7, 'http://instalaterwenzel.cz/2017/03/06/7-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-03-06 20:04:43', '2017-03-06 20:04:43', 'Pavel Wenzel\r\n\r\nKřiby 123\r\n\r\nTetčice\r\n<p>[contact-form-7 id=\"44\" title=\"Contact form 1\"]</p>', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-06 20:04:43', '2017-03-06 20:04:43', '', 7, 'http://instalaterwenzel.cz/2017/03/06/7-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-03-06 20:07:13', '2017-03-06 20:07:13', '[contact-form-7 id=\"44\" title=\"Contact form 1\"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-06 20:07:13', '2017-03-06 20:07:13', '', 7, 'http://instalaterwenzel.cz/2017/03/06/7-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2017-03-06 20:08:45', '2017-03-06 20:08:45', '<p style=\"text-align: center;\"><strong>KONTAKT</strong></p>\r\n[contact-form-7 id=\"44\" title=\"Contact form 1\"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-06 20:08:45', '2017-03-06 20:08:45', '', 7, 'http://instalaterwenzel.cz/2017/03/06/7-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-03-06 20:09:05', '2017-03-06 20:09:05', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>KONTAKT</strong></h1>\r\n[contact-form-7 id=\"44\" title=\"Contact form 1\"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-06 20:09:05', '2017-03-06 20:09:05', '', 7, 'http://instalaterwenzel.cz/2017/03/06/7-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-03-07 20:02:10', '2017-03-07 20:02:10', '<h1 style=\"text-align: center;\"></h1>\n<h1 style=\"text-align: center;\"></h1>\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\n&nbsp;\n\n&nbsp;\n\nreference cislo 1\n\n[gallery link=\"file\" size=\"medium\" ids=\"82,83,84\"]\n\n&nbsp;\n\n&nbsp;\n\nreference cislo 2\n\n&nbsp;', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2017-03-07 20:02:10', '2017-03-07 20:02:10', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-autosave-v1/', 0, 'revision', '', 0),
(58, 1, '2017-03-06 20:38:40', '2017-03-06 20:38:40', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"54,55,56\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 20:38:40', '2017-03-06 20:38:40', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-03-06 20:45:14', '2017-03-06 20:45:14', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"56,55,54\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 20:45:14', '2017-03-06 20:45:14', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-03-06 20:45:50', '2017-03-06 20:45:50', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n[gallery link=\"file\" size=\"medium\" columns=\"1\" ids=\"56,55,54\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 20:45:50', '2017-03-06 20:45:50', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-03-06 20:46:34', '2017-03-06 20:46:34', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"56,55,54\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 20:46:34', '2017-03-06 20:46:34', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-03-06 20:54:28', '2017-03-06 20:54:28', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"56,55,54\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 20:54:28', '2017-03-06 20:54:28', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-03-06 20:55:28', '2017-03-06 20:55:28', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"56,55,54\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 2\r\n\r\n&nbsp;\r\n\r\n[gallery ids=\"63,64,65\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 20:55:28', '2017-03-06 20:55:28', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-03-06 20:55:46', '2017-03-06 20:55:46', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"56,55,54\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 2\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"63,64,65\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-06 20:55:46', '2017-03-06 20:55:46', '', 5, 'http://instalaterwenzel.cz/2017/03/06/5-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-03-06 20:59:01', '2017-03-06 20:59:01', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2017-03-06 20:59:01', '2017-03-06 20:59:01', '', 0, 'http://instalaterwenzel.cz/?p=68', 3, 'nav_menu_item', '', 0),
(69, 1, '2017-03-06 20:59:01', '2017-03-06 20:59:01', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2017-03-06 20:59:01', '2017-03-06 20:59:01', '', 0, 'http://instalaterwenzel.cz/?p=69', 2, 'nav_menu_item', '', 0),
(70, 1, '2017-03-06 20:59:01', '2017-03-06 20:59:01', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2017-03-06 20:59:01', '2017-03-06 20:59:01', '', 0, 'http://instalaterwenzel.cz/?p=70', 1, 'nav_menu_item', '', 0),
(72, 1, '2017-03-07 19:12:00', '2017-03-07 19:12:00', 'banner instalater Wenzel', 'banner instalater Wenzel', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2017-03-07 19:12:15', '2017-03-07 19:12:15', '', 2, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2017-03-07 19:13:34', '2017-03-07 19:13:34', 'Pavel Wenzel instalater Brno a okolí', 'Pavel Wenzel instalater Brno a okolí', '', 'inherit', 'open', 'closed', '', 'offer-img', '', '', '2017-03-07 19:14:05', '2017-03-07 19:14:05', '', 2, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/offer-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2017-03-07 19:14:37', '2017-03-07 19:14:37', 'co nabizim - instalo voda topeni', 'co nabizim - instalo voda topeni', '', 'inherit', 'open', 'closed', '', '3cols_offer_bg', '', '', '2017-03-07 19:15:07', '2017-03-07 19:15:07', '', 2, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/3cols_offer_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2017-03-07 19:15:24', '2017-03-07 19:15:24', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-07 19:15:24', '2017-03-07 19:15:24', '', 2, 'http://instalaterwenzel.cz/2017/03/07/2-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-03-07 19:20:34', '2017-03-07 19:20:34', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-07 19:20:34', '2017-03-07 19:20:34', '', 2, 'http://instalaterwenzel.cz/2017/03/07/2-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-03-07 19:21:13', '2017-03-07 19:21:13', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-07 19:21:13', '2017-03-07 19:21:13', '', 2, 'http://instalaterwenzel.cz/2017/03/07/2-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-03-07 19:21:28', '2017-03-07 19:21:28', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-07 19:21:28', '2017-03-07 19:21:28', '', 2, 'http://instalaterwenzel.cz/2017/03/07/2-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-03-07 19:28:15', '2017-03-07 19:28:15', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 2\r\n\r\n&nbsp;', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-07 19:28:15', '2017-03-07 19:28:15', '', 5, 'http://instalaterwenzel.cz/2017/03/07/5-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-03-07 19:31:31', '2017-03-07 19:31:31', 'montaz zasobniku na teplou vodu', 'montaz zasobniku na teplou vodu', '', 'inherit', 'open', 'closed', '', 'dsc_6648', '', '', '2017-03-07 19:34:41', '2017-03-07 19:34:41', '', 0, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/DSC_6648.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2017-03-07 19:33:11', '2017-03-07 19:33:11', 'priprava trubek do zdi', 'priprava trubek do zdi', '', 'inherit', 'open', 'closed', '', 'dsc_7270', '', '', '2017-03-07 19:34:08', '2017-03-07 19:34:08', '', 5, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/DSC_7270.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2017-03-07 19:35:13', '2017-03-07 19:35:13', 'instalaterske prace na rodinnem dome Brno', 'instalaterske prace na rodinnem dome Brno', '', 'inherit', 'open', 'closed', '', 'dsc_7227', '', '', '2017-03-07 19:37:33', '2017-03-07 19:37:33', '', 5, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/DSC_7227.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2017-03-07 19:37:54', '2017-03-07 19:37:54', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"82,83,84\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 2\r\n\r\n&nbsp;', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-07 19:37:54', '2017-03-07 19:37:54', '', 5, 'http://instalaterwenzel.cz/2017/03/07/5-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-03-07 19:38:26', '2017-03-07 19:38:26', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"82,83,84\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 2\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"84,83,82\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-07 19:38:26', '2017-03-07 19:38:26', '', 5, 'http://instalaterwenzel.cz/2017/03/07/5-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-03-07 19:40:08', '2017-03-07 19:40:08', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>KONTAKT</strong></h1>\r\n&nbsp;\r\n\r\nPavel Wenzel\r\n\r\nKřiby 123\r\n\r\nTetčice\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"44\" title=\"Contact form 1\"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-07 19:40:08', '2017-03-07 19:40:08', '', 7, 'http://instalaterwenzel.cz/2017/03/07/7-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2017-03-07 19:40:42', '2017-03-07 19:40:42', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>KONTAKT</strong></h1>\r\n&nbsp;\r\n<p style=\"text-align: center;\">Pavel Wenzel</p>\r\n<p style=\"text-align: center;\">Křiby 123</p>\r\n<p style=\"text-align: center;\">Tetčice</p>\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"44\" title=\"Contact form 1\"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-07 19:40:42', '2017-03-07 19:40:42', '', 7, 'http://instalaterwenzel.cz/2017/03/07/7-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-03-07 19:41:03', '2017-03-07 19:41:03', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>KONTAKT</strong></h1>\r\n&nbsp;\r\n<p style=\"text-align: center;\">Pavel Wenzel</p>\r\n<p style=\"text-align: center;\">Křiby 123</p>\r\n<p style=\"text-align: center;\">Tetčice</p>\r\n[contact-form-7 id=\"44\" title=\"Contact form 1\"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-07 19:41:03', '2017-03-07 19:41:03', '', 7, 'http://instalaterwenzel.cz/2017/03/07/7-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2017-03-07 20:02:03', '2017-03-07 20:02:03', '', 'DSC_7968', '', 'inherit', 'open', 'closed', '', 'dsc_7968', '', '', '2017-03-07 20:02:03', '2017-03-07 20:02:03', '', 5, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/DSC_7968.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2017-03-07 20:02:48', '2017-03-07 20:02:48', 'kotelna rodinneho domu', 'kotelna rodinneho domu', '', 'inherit', 'open', 'closed', '', 'dsc_7985', '', '', '2017-03-07 20:05:33', '2017-03-07 20:05:33', '', 5, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/DSC_7985.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2017-03-07 20:03:35', '2017-03-07 20:03:35', 'priprava rozvodu vody na rodinnem dome', 'priprava rozvodu vody na rodinnem dome', '', 'inherit', 'open', 'closed', '', 'dsc_6994', '', '', '2017-03-07 20:05:43', '2017-03-07 20:05:43', '', 5, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/DSC_6994.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2017-03-07 20:04:47', '2017-03-07 20:04:47', 'podlahove rozvody na rodinnem dome', 'podlahove rozvody na rodinnem dome', '', 'inherit', 'open', 'closed', '', 'dsc_7968-2', '', '', '2017-03-07 20:06:06', '2017-03-07 20:06:06', '', 5, 'http://instalaterwenzel.cz/wp-content/uploads/2017/03/DSC_7968-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2017-03-07 20:06:16', '2017-03-07 20:06:16', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 1\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"82,83,84\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nreference cislo 2\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"91,92,93\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-07 20:06:16', '2017-03-07 20:06:16', '', 5, 'http://instalaterwenzel.cz/2017/03/07/5-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-03-07 20:06:43', '2017-03-07 20:06:43', '<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"></h1>\r\n<h1 style=\"text-align: center;\"><strong>REFERENCE</strong></h1>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"82,83,84\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[gallery link=\"file\" size=\"medium\" ids=\"91,92,93\"]', 'Reference', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-07 20:06:43', '2017-03-07 20:06:43', '', 5, 'http://instalaterwenzel.cz/2017/03/07/5-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-03-07 21:48:10', '2017-03-07 21:48:10', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-07 21:48:10', '2017-03-07 21:48:10', '', 2, 'http://instalaterwenzel.cz/2017/03/07/2-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-03-08 05:55:35', '2017-03-08 05:55:35', '', 'Domů', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-08 05:55:35', '2017-03-08 05:55:35', '', 2, 'http://instalaterwenzel.cz/2017/03/08/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header menu', 'header-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(68, 3, 0),
(69, 3, 0),
(70, 3, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_term_taxonomy`
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
-- Vypisuji data pro tabulku `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&editor_expand=on&hidetb=1&editor=tinymce'),
(17, 1, 'wp_user-settings-time', '1488830921'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '99'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:133:\"acf_13,acf_18,acf_16,acf_20,acf_23,acf_24,acf_29,acf_26,acf_33,revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_page', '2'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'default_password_nag', ''),
(25, 1, 'closedpostboxes_page', 'a:6:{i:0;s:6:\"acf_13\";i:1;s:6:\"acf_16\";i:2;s:6:\"acf_20\";i:3;s:6:\"acf_23\";i:4;s:6:\"acf_24\";i:5;s:6:\"acf_29\";}'),
(26, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(27, 1, 'wp_media_library_mode', 'list'),
(29, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"88.100.143.0\";}'),
(30, 1, 'session_tokens', 'a:1:{s:64:\"851a1ef3f224828f04665d30e3258b404e04c48f17727a34ba5ae837f7475112\";a:4:{s:10:\"expiration\";i:1512459285;s:2:\"ip\";s:14:\"88.100.143.208\";s:2:\"ua\";s:136:\"Mozilla/5.0 (iPhone; CPU iPhone OS 11_1_2 like Mac OS X) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0 Mobile/15B202 Safari/604.1\";s:5:\"login\";i:1512286485;}}');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_users`
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
-- Vypisuji data pro tabulku `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bp3UdNALuN/.tcj0.Jeg28P6RrdR8X1', 'admin', 'marek@marekmelichar.cz', '', '2017-03-04 21:39:52', '', 0, 'admin');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pro tabulku `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexy pro tabulku `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexy pro tabulku `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexy pro tabulku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pro tabulku `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexy pro tabulku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pro tabulku `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexy pro tabulku `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexy pro tabulku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexy pro tabulku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexy pro tabulku `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10666;

--
-- AUTO_INCREMENT pro tabulku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

--
-- AUTO_INCREMENT pro tabulku `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pro tabulku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pro tabulku `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
