-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2014 at 04:38 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hewis`
--

-- --------------------------------------------------------

--
-- Table structure for table `vn_commentmeta`
--

CREATE TABLE IF NOT EXISTS `vn_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vn_comments`
--

CREATE TABLE IF NOT EXISTS `vn_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vn_comments`
--

INSERT INTO `vn_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-09-15 06:48:41', '2014-09-15 06:48:41', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vn_links`
--

CREATE TABLE IF NOT EXISTS `vn_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vn_options`
--

CREATE TABLE IF NOT EXISTS `vn_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=422 ;

--
-- Dumping data for table `vn_options`
--

INSERT INTO `vn_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://hewis.vn/vn', 'yes'),
(2, 'home', 'http://hewis.vn/vn', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tainerdev@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:21:"megamenu/megamenu.php";i:1;s:23:"ml-slider/ml-slider.php";i:2;s:41:"shortcode-exec-php/shortcode-exec-php.php";i:3;s:37:"tinymce-advanced/tinymce-advanced.php";i:4;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'twentythirteen', 'yes'),
(42, 'stylesheet', 'twentythirteen', 'yes'),
(43, 'comment_whitelist', '', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:7:{i:1;a:0:{}i:3;a:5:{s:17:"mega_menu_columns";i:2;s:24:"mega_menu_parent_menu_id";i:20;s:5:"title";s:0:"";s:4:"text";s:10:"slide here";s:6:"filter";b:0;}i:4;a:5:{s:17:"mega_menu_columns";i:1;s:24:"mega_menu_parent_menu_id";i:45;s:5:"title";s:6:"LOẠI";s:4:"text";s:267:"<ul><li><a title="quan ao" href="/san-pham/thoi-trang-nam/quan-ao-nam/">Quần áo</a></li>\r\n<li><a title="Giay" href="/san-pham/thoi-trang-nam/giay-nam/">Giày</a></li>\r\n<li><a title="Phu kien" href="/san-pham/thoi-trang-nam/phu-kien-nam/">Phụ kiện</a></li></ul>";s:6:"filter";b:0;}i:6;a:5:{s:17:"mega_menu_columns";i:5;s:24:"mega_menu_parent_menu_id";i:45;s:5:"title";s:0:"";s:4:"text";s:1698:"<a href="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46J9BBB6-0224_IS.jpg" style="float: left;"><img class="alignnone size-full wp-image-53" src="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46J9BBB6-0224_IS.jpg" alt="CF46J9BBB6-0224_IS" width="135" height="153" /></a><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46JBE06K-0243_IS.jpg" style="float: left;"><img class="alignnone size-medium wp-image-54" src="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46JBE06K-0243_IS.jpg" alt="CF46JBE06K-0243_IS" width="135" height="153" /></a><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/CF48C300BZ-0001_IS-Copy.jpg" style="float: left;"><img class="alignnone size-medium wp-image-55" src="http://hewis.vn/vn/wp-content/uploads/2014/09/CF48C300BZ-0001_IS-Copy.jpg" alt="CF48C300BZ-0001_IS - Copy" width="135" height="153" /></a><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46J9BBB6-0224_IS.jpg" style="float: left;"><img class="alignnone size-full wp-image-53" src="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46J9BBB6-0224_IS.jpg" alt="CF46J9BBB6-0224_IS" width="135" height="153" /></a><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46JBE06K-0243_IS.jpg" style="float: left;"><img class="alignnone size-medium wp-image-54" src="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46JBE06K-0243_IS.jpg" alt="CF46JBE06K-0243_IS" width="135" height="153" /></a><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/CF48C300BZ-0001_IS-Copy.jpg" style="float: left;"><img class="alignnone size-medium wp-image-55" src="http://hewis.vn/vn/wp-content/uploads/2014/09/CF48C300BZ-0001_IS-Copy.jpg" alt="CF48C300BZ-0001_IS - Copy" width="135" height="153" /></a>";s:6:"filter";b:0;}i:7;a:5:{s:17:"mega_menu_columns";i:2;s:24:"mega_menu_parent_menu_id";i:50;s:5:"title";s:6:"LOẠI";s:4:"text";s:775:"<ul class="subcat-menu"><li><a title="Quần áo" href="/san-pham/thoi-trang-nu/quan-ao-nu/">Quần áo nữ</a></li><li><a title="Quần áo" href="/san-pham/thoi-trang-nu/quan-ao-nu/">Quần áo nữ</a></li><li><a title="Quần áo" href="/san-pham/thoi-trang-nu/quan-ao-nu/">Quần áo nữ</a></li><li><a title="Quần áo" href="/san-pham/thoi-trang-nu/quan-ao-nu/">Quần áo nữ</a></li><li><a title="Quần áo" href="/san-pham/thoi-trang-nu/quan-ao-nu/">Quần áo nữ</a></li><li><a title="Quần áo" href="/san-pham/thoi-trang-nu/quan-ao-nu/">Quần áo nữ</a></li><li><a title="Quần áo" href="/san-pham/thoi-trang-nu/quan-ao-nu/">Quần áo nữ</a></li><li><a title="Quần áo" href="/san-pham/thoi-trang-nu/quan-ao-nu/">Quần áo nữ</a></li>\r\n</ul>";s:6:"filter";b:0;}i:8;a:5:{s:17:"mega_menu_columns";i:4;s:24:"mega_menu_parent_menu_id";i:50;s:5:"title";s:0:"";s:4:"text";s:229:"<div style="width:100%">\r\n<a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png" alt="men (1)" width="100%"/></a>\r\n</div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '10', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'vn_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:6:{i:0;s:6:"meta-2";i:1;s:12:"categories-2";i:2;s:10:"archives-2";i:3;s:17:"recent-comments-2";i:4;s:14:"recent-posts-2";i:5;s:8:"search-2";}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"mega-menu";a:6:{i:0;s:32:"woocommerce_product_categories-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-6";i:4;s:6:"text-7";i:5;s:6:"text-8";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:9:{i:1410924163;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1410936532;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1410936533;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1410936546;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1410938580;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1410939449;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1410954046;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1410998400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1410899130;s:15:"version_checked";s:3:"4.0";s:12:"translations";a:0:{}}', 'yes'),
(106, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1410899142;s:7:"checked";a:2:{s:10:"html5blank";s:5:"1.4.3";s:14:"twentythirteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(107, '_transient_random_seed', 'ab223845a35c811a7ea1920280918cff', 'yes'),
(108, '_site_transient_timeout_browser_efdd8e8dfc89de8875254f2e96f2eeb2', '1411368547', 'yes'),
(109, '_site_transient_browser_efdd8e8dfc89de8875254f2e96f2eeb2', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"32.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(111, 'can_compress_scripts', '1', 'yes'),
(124, '_transient_timeout_plugin_slugs', '1410872180', 'no'),
(125, '_transient_plugin_slugs', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:21:"megamenu/megamenu.php";i:3;s:23:"ml-slider/ml-slider.php";i:4;s:41:"shortcode-exec-php/shortcode-exec-php.php";i:5;s:37:"tinymce-advanced/tinymce-advanced.php";i:6;s:27:"woocommerce/woocommerce.php";}', 'no'),
(128, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1410763755;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(129, 'current_theme', 'Twenty Thirteen', 'yes'),
(130, 'theme_mods_twentythirteen', 'a:4:{i:0;b:0;s:16:"header_textcolor";s:5:"blank";s:12:"header_image";s:13:"remove-header";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:23;}}', 'yes'),
(131, 'theme_switched', '', 'yes'),
(132, 'recently_activated', 'a:0:{}', 'yes'),
(136, 'scep_codewidth', '600', 'yes'),
(137, 'scep_codeheight', '200', 'yes'),
(138, 'scep_names', 'a:1:{i:0;s:16:"add-homepage-css";}', 'yes'),
(143, 'scep_tinymce_cap', 'edit_posts', 'yes'),
(144, 'scep_author_cap', 'edit_posts', 'yes'),
(148, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes'),
(149, 'woocommerce_default_country', 'VN', 'yes'),
(150, 'woocommerce_allowed_countries', 'specific', 'yes'),
(151, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"VN";}', 'yes'),
(152, 'woocommerce_demo_store', 'no', 'yes'),
(153, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes — no orders shall be fulfilled.', 'no'),
(154, 'woocommerce_api_enabled', 'yes', 'yes'),
(155, 'woocommerce_currency', 'VND', 'yes'),
(156, 'woocommerce_currency_pos', 'right', 'yes'),
(157, 'woocommerce_price_thousand_sep', ',', 'yes'),
(158, 'woocommerce_price_decimal_sep', '.', 'yes'),
(159, 'woocommerce_price_num_decimals', '2', 'yes'),
(160, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(161, 'woocommerce_enable_chosen', 'yes', 'no'),
(162, 'woocommerce_shop_page_id', '6', 'yes'),
(163, 'woocommerce_shop_page_display', '', 'yes'),
(164, 'woocommerce_category_archive_display', '', 'yes'),
(165, 'woocommerce_default_catalog_orderby', 'title', 'yes'),
(166, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(167, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(168, 'woocommerce_weight_unit', 'kg', 'yes'),
(169, 'woocommerce_dimension_unit', 'cm', 'yes'),
(170, 'woocommerce_enable_review_rating', 'yes', 'no'),
(171, 'woocommerce_review_rating_required', 'yes', 'no'),
(172, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(173, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(174, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";b:1;}', 'yes'),
(175, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(176, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"90";s:6:"height";s:2:"90";s:4:"crop";i:1;}', 'yes'),
(177, 'woocommerce_file_download_method', 'force', 'no'),
(178, 'woocommerce_downloads_require_login', 'no', 'no'),
(179, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(180, 'woocommerce_manage_stock', 'yes', 'yes'),
(181, 'woocommerce_hold_stock_minutes', '60', 'no'),
(182, 'woocommerce_notify_low_stock', 'yes', 'no'),
(183, 'woocommerce_notify_no_stock', 'yes', 'no'),
(184, 'woocommerce_stock_email_recipient', 'tainerdev@gmail.com', 'no'),
(185, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(186, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(187, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(188, 'woocommerce_stock_format', '', 'yes'),
(189, 'woocommerce_calc_taxes', 'no', 'yes'),
(190, 'woocommerce_prices_include_tax', 'no', 'yes'),
(191, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(192, 'woocommerce_default_customer_address', 'base', 'yes'),
(193, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(194, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(195, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(196, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(197, 'woocommerce_price_display_suffix', '', 'yes'),
(198, 'woocommerce_tax_display_cart', 'excl', 'no'),
(199, 'woocommerce_tax_total_display', 'itemized', 'no'),
(200, 'woocommerce_enable_coupons', 'yes', 'no'),
(201, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(202, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(203, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(204, 'woocommerce_cart_page_id', '7', 'yes'),
(205, 'woocommerce_checkout_page_id', '8', 'yes'),
(206, 'woocommerce_terms_page_id', '', 'no'),
(207, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(208, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(209, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(210, 'woocommerce_calc_shipping', 'yes', 'yes'),
(211, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(212, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(213, 'woocommerce_shipping_method_format', '', 'no'),
(214, 'woocommerce_ship_to_destination', 'shipping', 'no'),
(215, 'woocommerce_ship_to_countries', '', 'yes'),
(216, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(217, 'woocommerce_myaccount_page_id', '9', 'yes'),
(218, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(219, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(220, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(221, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(222, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(223, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(224, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(225, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(226, 'woocommerce_registration_generate_username', 'yes', 'no'),
(227, 'woocommerce_registration_generate_password', 'no', 'no'),
(228, 'woocommerce_email_from_name', 'hewis.vn', 'no'),
(229, 'woocommerce_email_from_address', 'tainerdev@gmail.com', 'no'),
(230, 'woocommerce_email_header_image', '', 'no'),
(231, 'woocommerce_email_footer_text', 'hewis.vn - Powered by WooCommerce', 'no'),
(232, 'woocommerce_email_base_color', '#557da1', 'no'),
(233, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(234, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(235, 'woocommerce_email_text_color', '#505050', 'no'),
(236, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(237, 'woocommerce_db_version', '2.2.2', 'yes'),
(238, 'woocommerce_version', '2.2.2', 'yes'),
(243, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(245, '_transient_timeout_woocommerce_contributors', '1410770477', 'no');
INSERT INTO `vn_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(246, '_transient_woocommerce_contributors', 'a:30:{i:0;O:8:"stdClass":18:{s:5:"login";s:10:"mikejolley";s:2:"id";i:90977;s:10:"avatar_url";s:49:"https://avatars.githubusercontent.com/u/90977?v=2";s:11:"gravatar_id";s:32:"9b87f99f47e30735e1136c5141531fdf";s:3:"url";s:39:"https://api.github.com/users/mikejolley";s:8:"html_url";s:29:"https://github.com/mikejolley";s:13:"followers_url";s:49:"https://api.github.com/users/mikejolley/followers";s:13:"following_url";s:62:"https://api.github.com/users/mikejolley/following{/other_user}";s:9:"gists_url";s:55:"https://api.github.com/users/mikejolley/gists{/gist_id}";s:11:"starred_url";s:62:"https://api.github.com/users/mikejolley/starred{/owner}{/repo}";s:17:"subscriptions_url";s:53:"https://api.github.com/users/mikejolley/subscriptions";s:17:"organizations_url";s:44:"https://api.github.com/users/mikejolley/orgs";s:9:"repos_url";s:45:"https://api.github.com/users/mikejolley/repos";s:10:"events_url";s:56:"https://api.github.com/users/mikejolley/events{/privacy}";s:19:"received_events_url";s:55:"https://api.github.com/users/mikejolley/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:5315;}i:1;O:8:"stdClass":18:{s:5:"login";s:10:"coenjacobs";s:2:"id";i:245703;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/245703?v=2";s:11:"gravatar_id";s:32:"02d8d08659627b225a6cd955693b22c0";s:3:"url";s:39:"https://api.github.com/users/coenjacobs";s:8:"html_url";s:29:"https://github.com/coenjacobs";s:13:"followers_url";s:49:"https://api.github.com/users/coenjacobs/followers";s:13:"following_url";s:62:"https://api.github.com/users/coenjacobs/following{/other_user}";s:9:"gists_url";s:55:"https://api.github.com/users/coenjacobs/gists{/gist_id}";s:11:"starred_url";s:62:"https://api.github.com/users/coenjacobs/starred{/owner}{/repo}";s:17:"subscriptions_url";s:53:"https://api.github.com/users/coenjacobs/subscriptions";s:17:"organizations_url";s:44:"https://api.github.com/users/coenjacobs/orgs";s:9:"repos_url";s:45:"https://api.github.com/users/coenjacobs/repos";s:10:"events_url";s:56:"https://api.github.com/users/coenjacobs/events{/privacy}";s:19:"received_events_url";s:55:"https://api.github.com/users/coenjacobs/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:606;}i:2;O:8:"stdClass":18:{s:5:"login";s:12:"claudiosmweb";s:2:"id";i:1264099;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/1264099?v=2";s:11:"gravatar_id";s:32:"7dbfeb13cfda599022477203fb141ae2";s:3:"url";s:41:"https://api.github.com/users/claudiosmweb";s:8:"html_url";s:31:"https://github.com/claudiosmweb";s:13:"followers_url";s:51:"https://api.github.com/users/claudiosmweb/followers";s:13:"following_url";s:64:"https://api.github.com/users/claudiosmweb/following{/other_user}";s:9:"gists_url";s:57:"https://api.github.com/users/claudiosmweb/gists{/gist_id}";s:11:"starred_url";s:64:"https://api.github.com/users/claudiosmweb/starred{/owner}{/repo}";s:17:"subscriptions_url";s:55:"https://api.github.com/users/claudiosmweb/subscriptions";s:17:"organizations_url";s:46:"https://api.github.com/users/claudiosmweb/orgs";s:9:"repos_url";s:47:"https://api.github.com/users/claudiosmweb/repos";s:10:"events_url";s:58:"https://api.github.com/users/claudiosmweb/events{/privacy}";s:19:"received_events_url";s:57:"https://api.github.com/users/claudiosmweb/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:413;}i:3;O:8:"stdClass":18:{s:5:"login";s:11:"jameskoster";s:2:"id";i:846565;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/846565?v=2";s:11:"gravatar_id";s:32:"babdd787a9577a0e615246ac79cf2826";s:3:"url";s:40:"https://api.github.com/users/jameskoster";s:8:"html_url";s:30:"https://github.com/jameskoster";s:13:"followers_url";s:50:"https://api.github.com/users/jameskoster/followers";s:13:"following_url";s:63:"https://api.github.com/users/jameskoster/following{/other_user}";s:9:"gists_url";s:56:"https://api.github.com/users/jameskoster/gists{/gist_id}";s:11:"starred_url";s:63:"https://api.github.com/users/jameskoster/starred{/owner}{/repo}";s:17:"subscriptions_url";s:54:"https://api.github.com/users/jameskoster/subscriptions";s:17:"organizations_url";s:45:"https://api.github.com/users/jameskoster/orgs";s:9:"repos_url";s:46:"https://api.github.com/users/jameskoster/repos";s:10:"events_url";s:57:"https://api.github.com/users/jameskoster/events{/privacy}";s:19:"received_events_url";s:56:"https://api.github.com/users/jameskoster/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:392;}i:4;O:8:"stdClass":18:{s:5:"login";s:7:"maxrice";s:2:"id";i:1579862;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/1579862?v=2";s:11:"gravatar_id";s:32:"32b07d9370cb057bed6b990010a7908c";s:3:"url";s:36:"https://api.github.com/users/maxrice";s:8:"html_url";s:26:"https://github.com/maxrice";s:13:"followers_url";s:46:"https://api.github.com/users/maxrice/followers";s:13:"following_url";s:59:"https://api.github.com/users/maxrice/following{/other_user}";s:9:"gists_url";s:52:"https://api.github.com/users/maxrice/gists{/gist_id}";s:11:"starred_url";s:59:"https://api.github.com/users/maxrice/starred{/owner}{/repo}";s:17:"subscriptions_url";s:50:"https://api.github.com/users/maxrice/subscriptions";s:17:"organizations_url";s:41:"https://api.github.com/users/maxrice/orgs";s:9:"repos_url";s:42:"https://api.github.com/users/maxrice/repos";s:10:"events_url";s:53:"https://api.github.com/users/maxrice/events{/privacy}";s:19:"received_events_url";s:52:"https://api.github.com/users/maxrice/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:194;}i:5;O:8:"stdClass":18:{s:5:"login";s:7:"GeertDD";s:2:"id";i:38326;s:10:"avatar_url";s:49:"https://avatars.githubusercontent.com/u/38326?v=2";s:11:"gravatar_id";s:32:"de161c04bab3dc59f3890bab750c843d";s:3:"url";s:36:"https://api.github.com/users/GeertDD";s:8:"html_url";s:26:"https://github.com/GeertDD";s:13:"followers_url";s:46:"https://api.github.com/users/GeertDD/followers";s:13:"following_url";s:59:"https://api.github.com/users/GeertDD/following{/other_user}";s:9:"gists_url";s:52:"https://api.github.com/users/GeertDD/gists{/gist_id}";s:11:"starred_url";s:59:"https://api.github.com/users/GeertDD/starred{/owner}{/repo}";s:17:"subscriptions_url";s:50:"https://api.github.com/users/GeertDD/subscriptions";s:17:"organizations_url";s:41:"https://api.github.com/users/GeertDD/orgs";s:9:"repos_url";s:42:"https://api.github.com/users/GeertDD/repos";s:10:"events_url";s:53:"https://api.github.com/users/GeertDD/events{/privacy}";s:19:"received_events_url";s:52:"https://api.github.com/users/GeertDD/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:176;}i:6;O:8:"stdClass":18:{s:5:"login";s:9:"thenbrent";s:2:"id";i:235523;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/235523?v=2";s:11:"gravatar_id";s:32:"5ecaa75cfaa9f359c001705a999e8e99";s:3:"url";s:38:"https://api.github.com/users/thenbrent";s:8:"html_url";s:28:"https://github.com/thenbrent";s:13:"followers_url";s:48:"https://api.github.com/users/thenbrent/followers";s:13:"following_url";s:61:"https://api.github.com/users/thenbrent/following{/other_user}";s:9:"gists_url";s:54:"https://api.github.com/users/thenbrent/gists{/gist_id}";s:11:"starred_url";s:61:"https://api.github.com/users/thenbrent/starred{/owner}{/repo}";s:17:"subscriptions_url";s:52:"https://api.github.com/users/thenbrent/subscriptions";s:17:"organizations_url";s:43:"https://api.github.com/users/thenbrent/orgs";s:9:"repos_url";s:44:"https://api.github.com/users/thenbrent/repos";s:10:"events_url";s:55:"https://api.github.com/users/thenbrent/events{/privacy}";s:19:"received_events_url";s:54:"https://api.github.com/users/thenbrent/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:148;}i:7;O:8:"stdClass":18:{s:5:"login";s:8:"Ramoonus";s:2:"id";i:77956;s:10:"avatar_url";s:49:"https://avatars.githubusercontent.com/u/77956?v=2";s:11:"gravatar_id";s:32:"5bc54c4b774184a64bb9c92cc7f79446";s:3:"url";s:37:"https://api.github.com/users/Ramoonus";s:8:"html_url";s:27:"https://github.com/Ramoonus";s:13:"followers_url";s:47:"https://api.github.com/users/Ramoonus/followers";s:13:"following_url";s:60:"https://api.github.com/users/Ramoonus/following{/other_user}";s:9:"gists_url";s:53:"https://api.github.com/users/Ramoonus/gists{/gist_id}";s:11:"starred_url";s:60:"https://api.github.com/users/Ramoonus/starred{/owner}{/repo}";s:17:"subscriptions_url";s:51:"https://api.github.com/users/Ramoonus/subscriptions";s:17:"organizations_url";s:42:"https://api.github.com/users/Ramoonus/orgs";s:9:"repos_url";s:43:"https://api.github.com/users/Ramoonus/repos";s:10:"events_url";s:54:"https://api.github.com/users/Ramoonus/events{/privacy}";s:19:"received_events_url";s:53:"https://api.github.com/users/Ramoonus/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:122;}i:8;O:8:"stdClass":18:{s:5:"login";s:5:"kloon";s:2:"id";i:271630;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/271630?v=2";s:11:"gravatar_id";s:32:"e5aff129655270463bb81a469440e5fc";s:3:"url";s:34:"https://api.github.com/users/kloon";s:8:"html_url";s:24:"https://github.com/kloon";s:13:"followers_url";s:44:"https://api.github.com/users/kloon/followers";s:13:"following_url";s:57:"https://api.github.com/users/kloon/following{/other_user}";s:9:"gists_url";s:50:"https://api.github.com/users/kloon/gists{/gist_id}";s:11:"starred_url";s:57:"https://api.github.com/users/kloon/starred{/owner}{/repo}";s:17:"subscriptions_url";s:48:"https://api.github.com/users/kloon/subscriptions";s:17:"organizations_url";s:39:"https://api.github.com/users/kloon/orgs";s:9:"repos_url";s:40:"https://api.github.com/users/kloon/repos";s:10:"events_url";s:51:"https://api.github.com/users/kloon/events{/privacy}";s:19:"received_events_url";s:50:"https://api.github.com/users/kloon/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:111;}i:9;O:8:"stdClass":18:{s:5:"login";s:15:"splashingpixels";s:2:"id";i:2132595;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/2132595?v=2";s:11:"gravatar_id";s:32:"a9b24d6cf0bc2c36bed28e62f67ba005";s:3:"url";s:44:"https://api.github.com/users/splashingpixels";s:8:"html_url";s:34:"https://github.com/splashingpixels";s:13:"followers_url";s:54:"https://api.github.com/users/splashingpixels/followers";s:13:"following_url";s:67:"https://api.github.com/users/splashingpixels/following{/other_user}";s:9:"gists_url";s:60:"https://api.github.com/users/splashingpixels/gists{/gist_id}";s:11:"starred_url";s:67:"https://api.github.com/users/splashingpixels/starred{/owner}{/repo}";s:17:"subscriptions_url";s:58:"https://api.github.com/users/splashingpixels/subscriptions";s:17:"organizations_url";s:49:"https://api.github.com/users/splashingpixels/orgs";s:9:"repos_url";s:50:"https://api.github.com/users/splashingpixels/repos";s:10:"events_url";s:61:"https://api.github.com/users/splashingpixels/events{/privacy}";s:19:"received_events_url";s:60:"https://api.github.com/users/splashingpixels/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:88;}i:10;O:8:"stdClass":18:{s:5:"login";s:7:"BFTrick";s:2:"id";i:1065372;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/1065372?v=2";s:11:"gravatar_id";s:32:"d4398e14879a394a9feabd6871d6bbaa";s:3:"url";s:36:"https://api.github.com/users/BFTrick";s:8:"html_url";s:26:"https://github.com/BFTrick";s:13:"followers_url";s:46:"https://api.github.com/users/BFTrick/followers";s:13:"following_url";s:59:"https://api.github.com/users/BFTrick/following{/other_user}";s:9:"gists_url";s:52:"https://api.github.com/users/BFTrick/gists{/gist_id}";s:11:"starred_url";s:59:"https://api.github.com/users/BFTrick/starred{/owner}{/repo}";s:17:"subscriptions_url";s:50:"https://api.github.com/users/BFTrick/subscriptions";s:17:"organizations_url";s:41:"https://api.github.com/users/BFTrick/orgs";s:9:"repos_url";s:42:"https://api.github.com/users/BFTrick/repos";s:10:"events_url";s:53:"https://api.github.com/users/BFTrick/events{/privacy}";s:19:"received_events_url";s:52:"https://api.github.com/users/BFTrick/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:75;}i:11;O:8:"stdClass":18:{s:5:"login";s:11:"shivapoudel";s:2:"id";i:3774827;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/3774827?v=2";s:11:"gravatar_id";s:32:"e9dc23ec1d082dea70cd219c04dcff17";s:3:"url";s:40:"https://api.github.com/users/shivapoudel";s:8:"html_url";s:30:"https://github.com/shivapoudel";s:13:"followers_url";s:50:"https://api.github.com/users/shivapoudel/followers";s:13:"following_url";s:63:"https://api.github.com/users/shivapoudel/following{/other_user}";s:9:"gists_url";s:56:"https://api.github.com/users/shivapoudel/gists{/gist_id}";s:11:"starred_url";s:63:"https://api.github.com/users/shivapoudel/starred{/owner}{/repo}";s:17:"subscriptions_url";s:54:"https://api.github.com/users/shivapoudel/subscriptions";s:17:"organizations_url";s:45:"https://api.github.com/users/shivapoudel/orgs";s:9:"repos_url";s:46:"https://api.github.com/users/shivapoudel/repos";s:10:"events_url";s:57:"https://api.github.com/users/shivapoudel/events{/privacy}";s:19:"received_events_url";s:56:"https://api.github.com/users/shivapoudel/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:72;}i:12;O:8:"stdClass":18:{s:5:"login";s:7:"jjoeris";s:2:"id";i:850243;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/850243?v=2";s:11:"gravatar_id";s:32:"df3937298f7036b07afe40a33307ce96";s:3:"url";s:36:"https://api.github.com/users/jjoeris";s:8:"html_url";s:26:"https://github.com/jjoeris";s:13:"followers_url";s:46:"https://api.github.com/users/jjoeris/followers";s:13:"following_url";s:59:"https://api.github.com/users/jjoeris/following{/other_user}";s:9:"gists_url";s:52:"https://api.github.com/users/jjoeris/gists{/gist_id}";s:11:"starred_url";s:59:"https://api.github.com/users/jjoeris/starred{/owner}{/repo}";s:17:"subscriptions_url";s:50:"https://api.github.com/users/jjoeris/subscriptions";s:17:"organizations_url";s:41:"https://api.github.com/users/jjoeris/orgs";s:9:"repos_url";s:42:"https://api.github.com/users/jjoeris/repos";s:10:"events_url";s:53:"https://api.github.com/users/jjoeris/events{/privacy}";s:19:"received_events_url";s:52:"https://api.github.com/users/jjoeris/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:58;}i:13;O:8:"stdClass":18:{s:5:"login";s:6:"tivnet";s:2:"id";i:1696330;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/1696330?v=2";s:11:"gravatar_id";s:32:"f4c4574e37cc9c3382987678c0d48e9d";s:3:"url";s:35:"https://api.github.com/users/tivnet";s:8:"html_url";s:25:"https://github.com/tivnet";s:13:"followers_url";s:45:"https://api.github.com/users/tivnet/followers";s:13:"following_url";s:58:"https://api.github.com/users/tivnet/following{/other_user}";s:9:"gists_url";s:51:"https://api.github.com/users/tivnet/gists{/gist_id}";s:11:"starred_url";s:58:"https://api.github.com/users/tivnet/starred{/owner}{/repo}";s:17:"subscriptions_url";s:49:"https://api.github.com/users/tivnet/subscriptions";s:17:"organizations_url";s:40:"https://api.github.com/users/tivnet/orgs";s:9:"repos_url";s:41:"https://api.github.com/users/tivnet/repos";s:10:"events_url";s:52:"https://api.github.com/users/tivnet/events{/privacy}";s:19:"received_events_url";s:51:"https://api.github.com/users/tivnet/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:53;}i:14;O:8:"stdClass":18:{s:5:"login";s:7:"ragulka";s:2:"id";i:593267;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/593267?v=2";s:11:"gravatar_id";s:32:"4c907e332d3527576edb3ad9ee291a17";s:3:"url";s:36:"https://api.github.com/users/ragulka";s:8:"html_url";s:26:"https://github.com/ragulka";s:13:"followers_url";s:46:"https://api.github.com/users/ragulka/followers";s:13:"following_url";s:59:"https://api.github.com/users/ragulka/following{/other_user}";s:9:"gists_url";s:52:"https://api.github.com/users/ragulka/gists{/gist_id}";s:11:"starred_url";s:59:"https://api.github.com/users/ragulka/starred{/owner}{/repo}";s:17:"subscriptions_url";s:50:"https://api.github.com/users/ragulka/subscriptions";s:17:"organizations_url";s:41:"https://api.github.com/users/ragulka/orgs";s:9:"repos_url";s:42:"https://api.github.com/users/ragulka/repos";s:10:"events_url";s:53:"https://api.github.com/users/ragulka/events{/privacy}";s:19:"received_events_url";s:52:"https://api.github.com/users/ragulka/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:53;}i:15;O:8:"stdClass":18:{s:5:"login";s:11:"franticpsyx";s:2:"id";i:1783726;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/1783726?v=2";s:11:"gravatar_id";s:32:"479b32749ad1f1921f9ac05a5fef9d91";s:3:"url";s:40:"https://api.github.com/users/franticpsyx";s:8:"html_url";s:30:"https://github.com/franticpsyx";s:13:"followers_url";s:50:"https://api.github.com/users/franticpsyx/followers";s:13:"following_url";s:63:"https://api.github.com/users/franticpsyx/following{/other_user}";s:9:"gists_url";s:56:"https://api.github.com/users/franticpsyx/gists{/gist_id}";s:11:"starred_url";s:63:"https://api.github.com/users/franticpsyx/starred{/owner}{/repo}";s:17:"subscriptions_url";s:54:"https://api.github.com/users/franticpsyx/subscriptions";s:17:"organizations_url";s:45:"https://api.github.com/users/franticpsyx/orgs";s:9:"repos_url";s:46:"https://api.github.com/users/franticpsyx/repos";s:10:"events_url";s:57:"https://api.github.com/users/franticpsyx/events{/privacy}";s:19:"received_events_url";s:56:"https://api.github.com/users/franticpsyx/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:47;}i:16;O:8:"stdClass":18:{s:5:"login";s:13:"scottbasgaard";s:2:"id";i:91581;s:10:"avatar_url";s:49:"https://avatars.githubusercontent.com/u/91581?v=2";s:11:"gravatar_id";s:32:"c11f04eee71dfd0f49132786c34ea4ff";s:3:"url";s:42:"https://api.github.com/users/scottbasgaard";s:8:"html_url";s:32:"https://github.com/scottbasgaard";s:13:"followers_url";s:52:"https://api.github.com/users/scottbasgaard/followers";s:13:"following_url";s:65:"https://api.github.com/users/scottbasgaard/following{/other_user}";s:9:"gists_url";s:58:"https://api.github.com/users/scottbasgaard/gists{/gist_id}";s:11:"starred_url";s:65:"https://api.github.com/users/scottbasgaard/starred{/owner}{/repo}";s:17:"subscriptions_url";s:56:"https://api.github.com/users/scottbasgaard/subscriptions";s:17:"organizations_url";s:47:"https://api.github.com/users/scottbasgaard/orgs";s:9:"repos_url";s:48:"https://api.github.com/users/scottbasgaard/repos";s:10:"events_url";s:59:"https://api.github.com/users/scottbasgaard/events{/privacy}";s:19:"received_events_url";s:58:"https://api.github.com/users/scottbasgaard/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:45;}i:17;O:8:"stdClass":18:{s:5:"login";s:12:"ChromeOrange";s:2:"id";i:130777;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/130777?v=2";s:11:"gravatar_id";s:32:"8026a390d28369f7a2befcaeb9557359";s:3:"url";s:41:"https://api.github.com/users/ChromeOrange";s:8:"html_url";s:31:"https://github.com/ChromeOrange";s:13:"followers_url";s:51:"https://api.github.com/users/ChromeOrange/followers";s:13:"following_url";s:64:"https://api.github.com/users/ChromeOrange/following{/other_user}";s:9:"gists_url";s:57:"https://api.github.com/users/ChromeOrange/gists{/gist_id}";s:11:"starred_url";s:64:"https://api.github.com/users/ChromeOrange/starred{/owner}{/repo}";s:17:"subscriptions_url";s:55:"https://api.github.com/users/ChromeOrange/subscriptions";s:17:"organizations_url";s:46:"https://api.github.com/users/ChromeOrange/orgs";s:9:"repos_url";s:47:"https://api.github.com/users/ChromeOrange/repos";s:10:"events_url";s:58:"https://api.github.com/users/ChromeOrange/events{/privacy}";s:19:"received_events_url";s:57:"https://api.github.com/users/ChromeOrange/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:44;}i:18;O:8:"stdClass":18:{s:5:"login";s:8:"pmgarman";s:2:"id";i:502720;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/502720?v=2";s:11:"gravatar_id";s:32:"25301bdb527e5665782958948a627b65";s:3:"url";s:37:"https://api.github.com/users/pmgarman";s:8:"html_url";s:27:"https://github.com/pmgarman";s:13:"followers_url";s:47:"https://api.github.com/users/pmgarman/followers";s:13:"following_url";s:60:"https://api.github.com/users/pmgarman/following{/other_user}";s:9:"gists_url";s:53:"https://api.github.com/users/pmgarman/gists{/gist_id}";s:11:"starred_url";s:60:"https://api.github.com/users/pmgarman/starred{/owner}{/repo}";s:17:"subscriptions_url";s:51:"https://api.github.com/users/pmgarman/subscriptions";s:17:"organizations_url";s:42:"https://api.github.com/users/pmgarman/orgs";s:9:"repos_url";s:43:"https://api.github.com/users/pmgarman/repos";s:10:"events_url";s:54:"https://api.github.com/users/pmgarman/events{/privacy}";s:19:"received_events_url";s:53:"https://api.github.com/users/pmgarman/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:35;}i:19;O:8:"stdClass":18:{s:5:"login";s:9:"tamarazuk";s:2:"id";i:3422554;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/3422554?v=2";s:11:"gravatar_id";s:32:"c525c099c8c55187480eccbcf37ea59b";s:3:"url";s:38:"https://api.github.com/users/tamarazuk";s:8:"html_url";s:28:"https://github.com/tamarazuk";s:13:"followers_url";s:48:"https://api.github.com/users/tamarazuk/followers";s:13:"following_url";s:61:"https://api.github.com/users/tamarazuk/following{/other_user}";s:9:"gists_url";s:54:"https://api.github.com/users/tamarazuk/gists{/gist_id}";s:11:"starred_url";s:61:"https://api.github.com/users/tamarazuk/starred{/owner}{/repo}";s:17:"subscriptions_url";s:52:"https://api.github.com/users/tamarazuk/subscriptions";s:17:"organizations_url";s:43:"https://api.github.com/users/tamarazuk/orgs";s:9:"repos_url";s:44:"https://api.github.com/users/tamarazuk/repos";s:10:"events_url";s:55:"https://api.github.com/users/tamarazuk/events{/privacy}";s:19:"received_events_url";s:54:"https://api.github.com/users/tamarazuk/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:33;}i:20;O:8:"stdClass":18:{s:5:"login";s:11:"justinstern";s:2:"id";i:1084112;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/1084112?v=2";s:11:"gravatar_id";s:32:"34f592f40b4af5881d0ecaa651f4f110";s:3:"url";s:40:"https://api.github.com/users/justinstern";s:8:"html_url";s:30:"https://github.com/justinstern";s:13:"followers_url";s:50:"https://api.github.com/users/justinstern/followers";s:13:"following_url";s:63:"https://api.github.com/users/justinstern/following{/other_user}";s:9:"gists_url";s:56:"https://api.github.com/users/justinstern/gists{/gist_id}";s:11:"starred_url";s:63:"https://api.github.com/users/justinstern/starred{/owner}{/repo}";s:17:"subscriptions_url";s:54:"https://api.github.com/users/justinstern/subscriptions";s:17:"organizations_url";s:45:"https://api.github.com/users/justinstern/orgs";s:9:"repos_url";s:46:"https://api.github.com/users/justinstern/repos";s:10:"events_url";s:57:"https://api.github.com/users/justinstern/events{/privacy}";s:19:"received_events_url";s:56:"https://api.github.com/users/justinstern/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:31;}i:21;O:8:"stdClass":18:{s:5:"login";s:8:"krbvroc1";s:2:"id";i:1335118;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/1335118?v=2";s:11:"gravatar_id";s:32:"9a1b895d4c25116fd83e6fe266211933";s:3:"url";s:37:"https://api.github.com/users/krbvroc1";s:8:"html_url";s:27:"https://github.com/krbvroc1";s:13:"followers_url";s:47:"https://api.github.com/users/krbvroc1/followers";s:13:"following_url";s:60:"https://api.github.com/users/krbvroc1/following{/other_user}";s:9:"gists_url";s:53:"https://api.github.com/users/krbvroc1/gists{/gist_id}";s:11:"starred_url";s:60:"https://api.github.com/users/krbvroc1/starred{/owner}{/repo}";s:17:"subscriptions_url";s:51:"https://api.github.com/users/krbvroc1/subscriptions";s:17:"organizations_url";s:42:"https://api.github.com/users/krbvroc1/orgs";s:9:"repos_url";s:43:"https://api.github.com/users/krbvroc1/repos";s:10:"events_url";s:54:"https://api.github.com/users/krbvroc1/events{/privacy}";s:19:"received_events_url";s:53:"https://api.github.com/users/krbvroc1/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:28;}i:22;O:8:"stdClass":18:{s:5:"login";s:14:"helgatheviking";s:2:"id";i:507025;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/507025?v=2";s:11:"gravatar_id";s:32:"e59280745b3f6f86a4cc6fad485647e9";s:3:"url";s:43:"https://api.github.com/users/helgatheviking";s:8:"html_url";s:33:"https://github.com/helgatheviking";s:13:"followers_url";s:53:"https://api.github.com/users/helgatheviking/followers";s:13:"following_url";s:66:"https://api.github.com/users/helgatheviking/following{/other_user}";s:9:"gists_url";s:59:"https://api.github.com/users/helgatheviking/gists{/gist_id}";s:11:"starred_url";s:66:"https://api.github.com/users/helgatheviking/starred{/owner}{/repo}";s:17:"subscriptions_url";s:57:"https://api.github.com/users/helgatheviking/subscriptions";s:17:"organizations_url";s:48:"https://api.github.com/users/helgatheviking/orgs";s:9:"repos_url";s:49:"https://api.github.com/users/helgatheviking/repos";s:10:"events_url";s:60:"https://api.github.com/users/helgatheviking/events{/privacy}";s:19:"received_events_url";s:59:"https://api.github.com/users/helgatheviking/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:27;}i:23;O:8:"stdClass":18:{s:5:"login";s:10:"toddlahman";s:2:"id";i:3452849;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/3452849?v=2";s:11:"gravatar_id";s:32:"2d355831d599d06f495dd868c89bb601";s:3:"url";s:39:"https://api.github.com/users/toddlahman";s:8:"html_url";s:29:"https://github.com/toddlahman";s:13:"followers_url";s:49:"https://api.github.com/users/toddlahman/followers";s:13:"following_url";s:62:"https://api.github.com/users/toddlahman/following{/other_user}";s:9:"gists_url";s:55:"https://api.github.com/users/toddlahman/gists{/gist_id}";s:11:"starred_url";s:62:"https://api.github.com/users/toddlahman/starred{/owner}{/repo}";s:17:"subscriptions_url";s:53:"https://api.github.com/users/toddlahman/subscriptions";s:17:"organizations_url";s:44:"https://api.github.com/users/toddlahman/orgs";s:9:"repos_url";s:45:"https://api.github.com/users/toddlahman/repos";s:10:"events_url";s:56:"https://api.github.com/users/toddlahman/events{/privacy}";s:19:"received_events_url";s:55:"https://api.github.com/users/toddlahman/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:24;}i:24;O:8:"stdClass":18:{s:5:"login";s:13:"warrendholmes";s:2:"id";i:995473;s:10:"avatar_url";s:50:"https://avatars.githubusercontent.com/u/995473?v=2";s:11:"gravatar_id";s:32:"3c06eaae9d1d5e8d31d24e2298237def";s:3:"url";s:42:"https://api.github.com/users/warrendholmes";s:8:"html_url";s:32:"https://github.com/warrendholmes";s:13:"followers_url";s:52:"https://api.github.com/users/warrendholmes/followers";s:13:"following_url";s:65:"https://api.github.com/users/warrendholmes/following{/other_user}";s:9:"gists_url";s:58:"https://api.github.com/users/warrendholmes/gists{/gist_id}";s:11:"starred_url";s:65:"https://api.github.com/users/warrendholmes/starred{/owner}{/repo}";s:17:"subscriptions_url";s:56:"https://api.github.com/users/warrendholmes/subscriptions";s:17:"organizations_url";s:47:"https://api.github.com/users/warrendholmes/orgs";s:9:"repos_url";s:48:"https://api.github.com/users/warrendholmes/repos";s:10:"events_url";s:59:"https://api.github.com/users/warrendholmes/events{/privacy}";s:19:"received_events_url";s:58:"https://api.github.com/users/warrendholmes/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:23;}i:25;O:8:"stdClass":18:{s:5:"login";s:3:"rnt";s:2:"id";i:29663;s:10:"avatar_url";s:49:"https://avatars.githubusercontent.com/u/29663?v=2";s:11:"gravatar_id";s:32:"723a79ef75dc8214a3a7e4f3885f61b1";s:3:"url";s:32:"https://api.github.com/users/rnt";s:8:"html_url";s:22:"https://github.com/rnt";s:13:"followers_url";s:42:"https://api.github.com/users/rnt/followers";s:13:"following_url";s:55:"https://api.github.com/users/rnt/following{/other_user}";s:9:"gists_url";s:48:"https://api.github.com/users/rnt/gists{/gist_id}";s:11:"starred_url";s:55:"https://api.github.com/users/rnt/starred{/owner}{/repo}";s:17:"subscriptions_url";s:46:"https://api.github.com/users/rnt/subscriptions";s:17:"organizations_url";s:37:"https://api.github.com/users/rnt/orgs";s:9:"repos_url";s:38:"https://api.github.com/users/rnt/repos";s:10:"events_url";s:49:"https://api.github.com/users/rnt/events{/privacy}";s:19:"received_events_url";s:48:"https://api.github.com/users/rnt/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:20;}i:26;O:8:"stdClass":18:{s:5:"login";s:10:"afurculita";s:2:"id";i:3129631;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/3129631?v=2";s:11:"gravatar_id";s:32:"b4da0d64640b95814aea8190a88b424e";s:3:"url";s:39:"https://api.github.com/users/afurculita";s:8:"html_url";s:29:"https://github.com/afurculita";s:13:"followers_url";s:49:"https://api.github.com/users/afurculita/followers";s:13:"following_url";s:62:"https://api.github.com/users/afurculita/following{/other_user}";s:9:"gists_url";s:55:"https://api.github.com/users/afurculita/gists{/gist_id}";s:11:"starred_url";s:62:"https://api.github.com/users/afurculita/starred{/owner}{/repo}";s:17:"subscriptions_url";s:53:"https://api.github.com/users/afurculita/subscriptions";s:17:"organizations_url";s:44:"https://api.github.com/users/afurculita/orgs";s:9:"repos_url";s:45:"https://api.github.com/users/afurculita/repos";s:10:"events_url";s:56:"https://api.github.com/users/afurculita/events{/privacy}";s:19:"received_events_url";s:55:"https://api.github.com/users/afurculita/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:18;}i:27;O:8:"stdClass":18:{s:5:"login";s:10:"barrykooij";s:2:"id";i:2846594;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/2846594?v=2";s:11:"gravatar_id";s:32:"4de34227dab8710fc6040b81a3b2a5dc";s:3:"url";s:39:"https://api.github.com/users/barrykooij";s:8:"html_url";s:29:"https://github.com/barrykooij";s:13:"followers_url";s:49:"https://api.github.com/users/barrykooij/followers";s:13:"following_url";s:62:"https://api.github.com/users/barrykooij/following{/other_user}";s:9:"gists_url";s:55:"https://api.github.com/users/barrykooij/gists{/gist_id}";s:11:"starred_url";s:62:"https://api.github.com/users/barrykooij/starred{/owner}{/repo}";s:17:"subscriptions_url";s:53:"https://api.github.com/users/barrykooij/subscriptions";s:17:"organizations_url";s:44:"https://api.github.com/users/barrykooij/orgs";s:9:"repos_url";s:45:"https://api.github.com/users/barrykooij/repos";s:10:"events_url";s:56:"https://api.github.com/users/barrykooij/events{/privacy}";s:19:"received_events_url";s:55:"https://api.github.com/users/barrykooij/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:18;}i:28;O:8:"stdClass":18:{s:5:"login";s:7:"corsonr";s:2:"id";i:1649788;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/1649788?v=2";s:11:"gravatar_id";s:32:"48bead2a300403a96417013e9344ac54";s:3:"url";s:36:"https://api.github.com/users/corsonr";s:8:"html_url";s:26:"https://github.com/corsonr";s:13:"followers_url";s:46:"https://api.github.com/users/corsonr/followers";s:13:"following_url";s:59:"https://api.github.com/users/corsonr/following{/other_user}";s:9:"gists_url";s:52:"https://api.github.com/users/corsonr/gists{/gist_id}";s:11:"starred_url";s:59:"https://api.github.com/users/corsonr/starred{/owner}{/repo}";s:17:"subscriptions_url";s:50:"https://api.github.com/users/corsonr/subscriptions";s:17:"organizations_url";s:41:"https://api.github.com/users/corsonr/orgs";s:9:"repos_url";s:42:"https://api.github.com/users/corsonr/repos";s:10:"events_url";s:53:"https://api.github.com/users/corsonr/events{/privacy}";s:19:"received_events_url";s:52:"https://api.github.com/users/corsonr/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:18;}i:29;O:8:"stdClass":18:{s:5:"login";s:9:"arhipaiva";s:2:"id";i:3075757;s:10:"avatar_url";s:51:"https://avatars.githubusercontent.com/u/3075757?v=2";s:11:"gravatar_id";s:32:"c0f6c90c74a0a7fdef9df1d9a6fa35e8";s:3:"url";s:38:"https://api.github.com/users/arhipaiva";s:8:"html_url";s:28:"https://github.com/arhipaiva";s:13:"followers_url";s:48:"https://api.github.com/users/arhipaiva/followers";s:13:"following_url";s:61:"https://api.github.com/users/arhipaiva/following{/other_user}";s:9:"gists_url";s:54:"https://api.github.com/users/arhipaiva/gists{/gist_id}";s:11:"starred_url";s:61:"https://api.github.com/users/arhipaiva/starred{/owner}{/repo}";s:17:"subscriptions_url";s:52:"https://api.github.com/users/arhipaiva/subscriptions";s:17:"organizations_url";s:43:"https://api.github.com/users/arhipaiva/orgs";s:9:"repos_url";s:44:"https://api.github.com/users/arhipaiva/repos";s:10:"events_url";s:55:"https://api.github.com/users/arhipaiva/events{/privacy}";s:19:"received_events_url";s:54:"https://api.github.com/users/arhipaiva/received_events";s:4:"type";s:4:"User";s:10:"site_admin";b:0;s:13:"contributions";i:17;}}', 'no'),
(247, 'woocommerce_frontend_css_colors', 'a:5:{s:7:"primary";s:7:"#ad74a2";s:9:"secondary";s:7:"#f7f6f7";s:9:"highlight";s:7:"#85ad74";s:10:"content_bg";s:7:"#ffffff";s:7:"subtext";s:7:"#777777";}', 'yes'),
(248, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=7";i:1;s:3:"p=8";i:2;s:3:"p=9";i:3;s:5:"/cart";i:4;s:9:"/checkout";i:5;s:11:"/my-account";}', 'yes'),
(252, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"options";s:35:"advlist,contextmenu,advlink,menubar";s:7:"plugins";s:134:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist,link,importcss,contextmenu";}', 'yes'),
(253, 'tadv_admin_settings', 'a:2:{s:7:"options";s:22:"importcss,paste_images";s:16:"disabled_plugins";s:0:"";}', 'yes'),
(254, 'tadv_version', '4000', 'yes'),
(257, 'theme_mods_html5blank', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1410780045;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:13:"widget-area-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"widget-area-2";a:0:{}}}}', 'yes'),
(258, 'woocommerce_admin_notices', 'a:2:{i:0;s:14:"template_files";i:1;s:13:"theme_support";}', 'yes'),
(264, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(265, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(266, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(267, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(268, 'widget_woocommerce_widget_cart', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(269, 'widget_woocommerce_products', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(270, 'widget_woocommerce_layered_nav', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(271, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(272, 'widget_woocommerce_price_filter', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(273, 'widget_woocommerce_product_categories', 'a:3:{i:1;a:0:{}i:2;a:8:{s:17:"mega_menu_columns";i:2;s:24:"mega_menu_parent_menu_id";i:20;s:5:"title";s:10:"CATEGORIES";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:0;s:18:"show_children_only";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'widget_woocommerce_product_search', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_woocommerce_product_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(276, 'widget_woocommerce_recent_reviews', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_woocommerce_top_rated_products', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_metaslider_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(281, 'scep_deleted', '0', 'yes'),
(282, 'scep_enabled_add-homepage-css', '1', 'yes'),
(283, 'scep_buffer_add-homepage-css', '1', 'yes'),
(284, 'scep_description_add-homepage-css', 'Example', 'yes'),
(285, 'scep_phpcode_add-homepage-css', 'echo ''<link rel="stylesheet" type="text/css" href="''. get_template_directory_uri() .''/css/homepage.css">'';\n', 'yes'),
(286, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:8:"san-pham";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:3:"/sp";}', 'yes'),
(322, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');
INSERT INTO `vn_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(334, 'rewrite_rules', 'a:166:{s:22:"^wc-api/v([1-2]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-2]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:47:"san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:42:"san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:35:"san-pham/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:17:"san-pham/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:30:"sp/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"sp/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"sp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"sp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"sp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:23:"sp/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:43:"sp/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:38:"sp/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:31:"sp/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:38:"sp/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:28:"sp/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:34:"sp/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:45:"sp/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:23:"sp/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:19:"sp/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:29:"sp/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:49:"sp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:44:"sp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:44:"sp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"product_variation/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"shop_order_refund/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=10&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(337, 'ml-slider_children', 'a:0:{}', 'yes'),
(340, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1410796558', 'yes'),
(341, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4587";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2848";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2785";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2284";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2189";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1792";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1587";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1563";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1529";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1519";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1448";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1411";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1350";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1209";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1153";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1121";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1044";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1001";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"995";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"823";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"811";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"798";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"793";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"789";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"730";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"693";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"691";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"661";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"638";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"618";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"609";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"607";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"601";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"593";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"587";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"546";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"544";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"543";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"536";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"534";}}', 'yes'),
(344, 'megamenu_version', '1.3.2', 'yes'),
(348, '_transient_product_query-transient-version', '1410786003', 'yes'),
(349, '_transient_timeout_wc_uf_pid_1d3ffdd78bac7c4f19ff76703888cb2b', '1442322003', 'no'),
(350, '_transient_wc_uf_pid_1d3ffdd78bac7c4f19ff76703888cb2b', 'a:0:{}', 'no'),
(355, 'megamenu_settings', 'a:1:{s:7:"primary";a:4:{s:7:"enabled";s:1:"1";s:5:"event";s:5:"hover";s:6:"effect";s:4:"fade";s:5:"theme";s:7:"default";}}', 'yes'),
(356, '_transient_timeout_wc_term_counts', '1442416282', 'no'),
(357, '_transient_wc_term_counts', 'a:17:{i:9;s:0:"";i:14;s:0:"";i:19;s:0:"";i:10;s:0:"";i:15;s:0:"";i:20;s:0:"";i:11;s:0:"";i:16;s:0:"";i:21;s:0:"";i:8;s:0:"";i:7;s:0:"";i:13;s:0:"";i:18;s:0:"";i:24;s:0:"";i:25;s:0:"";i:26;s:0:"";i:28;s:0:"";}', 'no'),
(358, '_site_transient_megamenu_css', '#mega-menu-wrap-primary-23, #mega-menu-wrap-primary-23 #mega-menu-primary-23, #mega-menu-wrap-primary-23 #mega-menu-primary-23 ul, #mega-menu-wrap-primary-23 #mega-menu-primary-23 li, #mega-menu-wrap-primary-23 #mega-menu-primary-23 p, #mega-menu-wrap-primary-23 #mega-menu-primary-23 img, #mega-menu-wrap-primary-23 #mega-menu-primary-23 div, #mega-menu-wrap-primary-23 #mega-menu-primary-23 a {\n  background: none;\n  border: 0;\n  -webkit-border-radius: 0 0 0 0;\n  -moz-border-radius: 0 0 0 0;\n  -ms-border-radius: 0 0 0 0;\n  -o-border-radius: 0 0 0 0;\n  border-radius: 0 0 0 0;\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  margin: 0;\n  opacity: 1;\n  padding: 0;\n  position: relative;\n  right: auto;\n  top: auto;\n  bottom: auto;\n  left: auto;\n  text-align: left;\n  text-transform: none;\n  vertical-align: baseline;\n  -webkit-box-shadow: none;\n  -moz-box-shadow: none;\n  -ms-box-shadow: none;\n  -o-box-shadow: none;\n  box-shadow: none;\n  list-style-type: none;\n  line-height: 1.7;\n  box-sizing: border-box;\n  float: none;\n  visibility: visible;\n  overflow: visible;\n  display: block;\n  -webkit-transition: none;\n  -moz-transition: none;\n  -o-transition: none;\n  transition: none;\n  text-decoration: none;\n  width: auto;\n  clip: auto;\n  height: auto;\n  outline: none;\n}\n#mega-menu-wrap-primary-23:before, #mega-menu-wrap-primary-23 #mega-menu-primary-23:before, #mega-menu-wrap-primary-23 #mega-menu-primary-23 ul:before, #mega-menu-wrap-primary-23 #mega-menu-primary-23 li:before, #mega-menu-wrap-primary-23 #mega-menu-primary-23 p:before, #mega-menu-wrap-primary-23 #mega-menu-primary-23 img:before, #mega-menu-wrap-primary-23 #mega-menu-primary-23 div:before, #mega-menu-wrap-primary-23 #mega-menu-primary-23 a:before, #mega-menu-wrap-primary-23:after, #mega-menu-wrap-primary-23 #mega-menu-primary-23:after, #mega-menu-wrap-primary-23 #mega-menu-primary-23 ul:after, #mega-menu-wrap-primary-23 #mega-menu-primary-23 li:after, #mega-menu-wrap-primary-23 #mega-menu-primary-23 p:after, #mega-menu-wrap-primary-23 #mega-menu-primary-23 img:after, #mega-menu-wrap-primary-23 #mega-menu-primary-23 div:after, #mega-menu-wrap-primary-23 #mega-menu-primary-23 a:after {\n  display: none;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 a {\n  display: inline;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 table, #mega-menu-wrap-primary-23 #mega-menu-primary-23 td, #mega-menu-wrap-primary-23 #mega-menu-primary-23 tr, #mega-menu-wrap-primary-23 #mega-menu-primary-23 th {\n  border: 0;\n  margin: 0;\n  padding: 0;\n  background: none;\n}\n#mega-menu-wrap-primary-23 {\n  background: #222;\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 {\n  padding: 0px 0px 0px 0px;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 .mega-menu-clear {\n  clear: left;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 p {\n  margin-bottom: 10px;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 input, #mega-menu-wrap-primary-23 #mega-menu-primary-23 img {\n  max-width: 100%;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-item.mega-toggle-on > a, #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-item:hover > a {\n  background: #333;\n  color: #fff;\n  font-weight: normal;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-item > ul.mega-sub-menu, #mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout li.mega-menu-item ul.mega-sub-menu {\n  display: none;\n  visibility: visible;\n  opacity: 1;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23.mega-no-js li.mega-menu-item:hover > ul.mega-sub-menu, #mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-toggle-on > ul.mega-sub-menu {\n  display: block;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-item a:before {\n  display: inline-block;\n  font: inherit;\n  font-family: dashicons;\n  position: static;\n  margin: 0 6px 0 0px;\n  vertical-align: top;\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-align-bottom-left.mega-toggle-on > a {\n  -webkit-border-radius: 0px 0px 0 0;\n  -moz-border-radius: 0px 0px 0 0;\n  -ms-border-radius: 0px 0px 0 0;\n  -o-border-radius: 0px 0px 0 0;\n  border-radius: 0px 0px 0 0;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-align-bottom-right > ul.mega-sub-menu {\n  right: 0;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-align-bottom-right.mega-toggle-on > a {\n  -webkit-border-radius: 0px 0px 0 0;\n  -moz-border-radius: 0px 0px 0 0;\n  -ms-border-radius: 0px 0px 0 0;\n  -o-border-radius: 0px 0px 0 0;\n  border-radius: 0px 0px 0 0;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu.mega-menu-item {\n  position: static;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-item {\n  margin: 0 0px 0 0;\n  display: inline-block;\n  height: auto;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-item {\n    display: list-item;\n    margin: 0 0 0px 0;\n    clear: both;\n  }\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-item > a {\n  outline: none;\n  text-decoration: none;\n  padding: 0px 10px 0px 10px;\n  line-height: 40px;\n  font-weight: normal;\n  height: 40px;\n  vertical-align: baseline;\n  text-align: left;\n  width: auto;\n  display: block;\n  color: #fff;\n  text-transform: normal;\n  background: transparent;\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n  font-family: inherit;\n  font-size: 14px;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu {\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n  background: #f1f1f1;\n  padding: 0px 0px 0px 0px;\n  position: absolute;\n  width: 100%;\n  z-index: 999;\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 0px solid #fff;\n  left: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu {\n    float: left;\n    position: static;\n    width: 100%;\n  }\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-1 {\n  width: 16.66667%;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-2 {\n  width: 33.33333%;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-3 {\n  width: 50%;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-4 {\n  width: 66.66667%;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-5 {\n  width: 83.33333%;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-6 {\n  width: 100%;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-1 {\n    width: 50%;\n    clear: none;\n  }\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-2 {\n    width: 50%;\n    clear: none;\n  }\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-3 {\n    width: 50%;\n    clear: none;\n  }\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-4 {\n    width: 50%;\n    clear: none;\n  }\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-5 {\n    width: 50%;\n    clear: none;\n  }\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-columns-6 {\n    width: 50%;\n    clear: none;\n  }\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li:nth-child(odd) {\n    clear: left;\n  }\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li ul.mega-sub-menu li ul.mega-sub-menu {\n  margin-left: 10px;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item {\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  display: block;\n  float: left;\n  padding: 15px 15px 15px 15px;\n  vertical-align: top;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > a, #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-megamenu > ul.mega-sub-menu > li.mega-menu-item > h4.mega-block-title {\n  color: #555;\n  font-family: inherit;\n  font-size: 16px;\n  text-transform: uppercase;\n  font-weight: bold;\n  margin: 0;\n  padding: 0px 0px 5px 0px;\n  vertical-align: top;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu {\n  display: none;\n  position: absolute;\n  width: auto;\n  z-index: 999;\n  width: 150px;\n  border-top: 0px solid #fff;\n  border-left: 0px solid #fff;\n  border-right: 0px solid #fff;\n  border-bottom: 0px solid #fff;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu {\n    float: left;\n    position: static;\n    width: 100%;\n  }\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu > li.mega-menu-columns-1 {\n  width: 100%;\n  clear: both;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu > li.mega-menu-columns-2 {\n  width: 100%;\n  clear: both;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu > li.mega-menu-columns-3 {\n  width: 100%;\n  clear: both;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu > li.mega-menu-columns-4 {\n  width: 100%;\n  clear: both;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu > li.mega-menu-columns-5 {\n  width: 100%;\n  clear: both;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu > li.mega-menu-columns-6 {\n  width: 100%;\n  clear: both;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a {\n  display: block;\n  background: #f1f1f1;\n  color: #666;\n  font-family: inherit;\n  font-size: 14px;\n  font-weight: normal;\n  padding: 0px 10px 0px 10px;\n  line-height: 35px;\n  vertical-align: baseline;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item a:hover {\n  background: #ddd;\n  font-weight: normal;\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  position: absolute;\n  left: 100%;\n  top: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n    position: static;\n    left: 0;\n    width: 100%;\n  }\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu a {\n    padding-left: 20px;\n  }\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout.mega-menu-item-has-children > a:after, #mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout li.mega-menu-item-has-children > a:after, #mega-menu-wrap-primary-23 #mega-menu-primary-23 > li.mega-menu-item-has-children > a:after {\n  content: ''\\f140'';\n  display: inline-block;\n  font: inherit;\n  font-family: dashicons;\n  margin: 0 0 0 6px;\n  vertical-align: top;\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n  -webkit-transform: rotate(0);\n  -moz-transform: rotate(0);\n  -ms-transform: rotate(0);\n  -o-transform: rotate(0);\n  transform: rotate(0);\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-item li.mega-menu-item-has-children > a:after {\n  content: ''\\f139'';\n  float: right;\n  margin: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-item li.mega-menu-item-has-children > a:after {\n    content: ''\\f140'';\n  }\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout.mega-align-bottom-right li a {\n  text-align: right;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout.mega-align-bottom-right li a {\n    text-align: left;\n  }\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout.mega-align-bottom-right li a:before {\n  float: right;\n  margin: 0 0 0 6px;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout.mega-align-bottom-right li a:before {\n    float: left;\n    margin: 0 6px 0 0;\n  }\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item-has-children > a:after {\n  content: ''\\f141'';\n  float: left;\n  margin: 0;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout.mega-align-bottom-right li.mega-menu-item-has-children > a:after {\n    content: ''\\f140'';\n    float: right;\n  }\n}\n#mega-menu-wrap-primary-23 #mega-menu-primary-23 li.mega-menu-flyout.mega-align-bottom-right ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {\n  left: -100%;\n  top: 0;\n}\n#mega-menu-wrap-primary-23 .mega-menu-toggle {\n  display: none;\n}\n#mega-menu-wrap-primary-23 .mega-menu-toggle + label, #mega-menu-wrap-primary-23 .mega-menu-toggle + label:active, #mega-menu-wrap-primary-23 .mega-menu-toggle + label:focus {\n  border: none;\n  outline: none;\n  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\n  -webkit-touch-callout: none;\n  -webkit-user-select: none;\n  -khtml-user-select: none;\n  -moz-user-select: none;\n  -ms-user-select: none;\n  user-select: none;\n}\n#mega-menu-wrap-primary-23 .mega-menu-toggle + label {\n  float: right;\n  cursor: pointer;\n  position: relative;\n  z-index: 1;\n  display: none;\n  width: 100%;\n  text-align: right;\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 .mega-menu-toggle + label {\n    display: block;\n  }\n}\n#mega-menu-wrap-primary-23 .mega-menu-toggle + label:after {\n  content: "\\f333";\n  color: #fff;\n  display: block;\n  line-height: 40px;\n  font-family: ''dashicons'';\n  font-size: 24px;\n  background: #222;\n  -webkit-border-radius: 0px 0px 0px 0px;\n  -moz-border-radius: 0px 0px 0px 0px;\n  -ms-border-radius: 0px 0px 0px 0px;\n  -o-border-radius: 0px 0px 0px 0px;\n  border-radius: 0px 0px 0px 0px;\n  padding-right: 5px;\n}\n#mega-menu-wrap-primary-23 .mega-menu-toggle:checked + label:after {\n  content: "\\f153";\n}\n@media only screen and (max-width: 600px) {\n  #mega-menu-wrap-primary-23 .mega-menu-toggle ~ #mega-menu-primary-23 {\n    display: none;\n  }\n  #mega-menu-wrap-primary-23 .mega-menu-toggle:checked ~ #mega-menu-primary-23 {\n    display: block;\n  }\n}\n#mega-menu-wrap-primary-23 {\n  clear: both;\n}\n\n/** Dynamic CSS generated in 0.1450 seconds **/\n/** Cached CSS generated by MaxMenu on Monday 15th of September 2014 01:01:58 PM **/', 'yes'),
(360, '_transient_timeout_wc_uf_pid_5380c497daadda60d4d55c1d5f008077', '1442324299', 'no'),
(361, '_transient_wc_uf_pid_5380c497daadda60d4d55c1d5f008077', 'a:0:{}', 'no'),
(362, 'category_children', 'a:0:{}', 'yes'),
(376, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1410897986', 'no');
INSERT INTO `vn_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(377, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 Sep 2014 08:00:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"http://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"arnee";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"http://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:104:"Supercharge your WordPress site with powerful features previously only available to WordPress.com users.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"MailPoet Newsletters";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wysija-newsletters/#post-32629";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Dec 2011 17:09:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"32629@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:94:"Send newsletters, post notifications or autoresponders from WordPress easily, and beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"MailPoet Staff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"The easiest, most effective way to secure WordPress in seconds.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-Optimize";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://wordpress.org/plugins/wp-optimize/#post-8691";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Jan 2009 04:28:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8691@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Simple but effective plugin allows you to extensively clean up your WordPress database and optimize it without doing manual queries.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:45:"http://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 16 Sep 2014 08:06:26 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Thu, 01 Jan 2009 20:34:44 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130910210210";}', 'no'),
(378, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1410897986', 'no'),
(379, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1410854786', 'no'),
(380, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1410897986', 'no'),
(381, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 10000 milliseconds with 75708 bytes received</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 9922 milliseconds with 171044 out of 205924 bytes received</p></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''http://wordpress.org/plugins/better-wp-security/'' class=''dashboard-news-plugin-link''>iThemes Security (formerly Better WP Security)</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=better-wp-security&amp;_wpnonce=0ba775c894&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''iThemes Security (formerly Better WP Security)''>Install</a>)</span></li></ul></div>', 'no'),
(383, '_transient_timeout_wc_admin_report', '1410963846', 'no'),
(384, '_transient_wc_admin_report', 'a:1:{s:32:"e2c2e2f16905c4d7a433081b3f597020";a:0:{}}', 'no'),
(393, 'product_cat_children', 'a:2:{i:8;a:5:{i:0;i:9;i:1;i:10;i:2;i:11;i:3;i:13;i:4;i:25;}i:7;a:5:{i:0;i:19;i:1;i:20;i:2;i:21;i:3;i:26;i:4;i:28;}}', 'yes'),
(415, '_site_transient_timeout_theme_roots', '1410900932', 'yes'),
(416, '_site_transient_theme_roots', 'a:2:{s:10:"html5blank";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(419, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1410899142;s:8:"response";a:1:{s:27:"woocommerce/woocommerce.php";O:8:"stdClass":7:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.2.3";s:14:"upgrade_notice";s:253:"2.2 is a major update. Test extensions and your theme prior to updating, ensure extensions are up to date and 2.2 compatible, and ensure that you keep backups. Developers should catch up with develop.woothemes.com to see what has been happening in core.";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.2.3.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:21:"megamenu/megamenu.php";O:8:"stdClass":6:{s:2:"id";s:5:"51496";s:4:"slug";s:8:"megamenu";s:6:"plugin";s:21:"megamenu/megamenu.php";s:11:"new_version";s:5:"1.3.2";s:3:"url";s:39:"https://wordpress.org/plugins/megamenu/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/megamenu.1.3.2.zip";}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"38583";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:5:"3.0.1";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/ml-slider.3.0.1.zip";}s:41:"shortcode-exec-php/shortcode-exec-php.php";O:8:"stdClass":7:{s:2:"id";s:5:"13674";s:4:"slug";s:18:"shortcode-exec-php";s:6:"plugin";s:41:"shortcode-exec-php/shortcode-exec-php.php";s:11:"new_version";s:4:"1.51";s:14:"upgrade_notice";s:21:"Made pro feature free";s:3:"url";s:49:"https://wordpress.org/plugins/shortcode-exec-php/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/shortcode-exec-php.1.51.zip";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:3:"731";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.1.1";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.1.1.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `vn_postmeta`
--

CREATE TABLE IF NOT EXISTS `vn_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=230 ;

--
-- Dumping data for table `vn_postmeta`
--

INSERT INTO `vn_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://hewis.vn/vn/'),
(10, 4, '_menu_item_orphaned', '1410766859'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1410766860'),
(20, 10, '_edit_last', '1'),
(21, 10, '_edit_lock', '1410785053:1'),
(22, 12, '_menu_item_type', 'custom'),
(23, 12, '_menu_item_menu_item_parent', '0'),
(24, 12, '_menu_item_object_id', '12'),
(25, 12, '_menu_item_object', 'custom'),
(26, 12, '_menu_item_target', ''),
(27, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 12, '_menu_item_xfn', ''),
(29, 12, '_menu_item_url', 'http://hewis.vn/vn/'),
(30, 12, '_menu_item_orphaned', '1410782500'),
(31, 13, '_menu_item_type', 'post_type'),
(32, 13, '_menu_item_menu_item_parent', '0'),
(33, 13, '_menu_item_object_id', '7'),
(34, 13, '_menu_item_object', 'page'),
(35, 13, '_menu_item_target', ''),
(36, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 13, '_menu_item_xfn', ''),
(38, 13, '_menu_item_url', ''),
(39, 13, '_menu_item_orphaned', '1410782500'),
(40, 14, '_menu_item_type', 'post_type'),
(41, 14, '_menu_item_menu_item_parent', '0'),
(42, 14, '_menu_item_object_id', '8'),
(43, 14, '_menu_item_object', 'page'),
(44, 14, '_menu_item_target', ''),
(45, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 14, '_menu_item_xfn', ''),
(47, 14, '_menu_item_url', ''),
(48, 14, '_menu_item_orphaned', '1410782500'),
(58, 16, '_menu_item_type', 'post_type'),
(59, 16, '_menu_item_menu_item_parent', '0'),
(60, 16, '_menu_item_object_id', '9'),
(61, 16, '_menu_item_object', 'page'),
(62, 16, '_menu_item_target', ''),
(63, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 16, '_menu_item_xfn', ''),
(65, 16, '_menu_item_url', ''),
(66, 16, '_menu_item_orphaned', '1410782501'),
(67, 17, '_menu_item_type', 'post_type'),
(68, 17, '_menu_item_menu_item_parent', '0'),
(69, 17, '_menu_item_object_id', '2'),
(70, 17, '_menu_item_object', 'page'),
(71, 17, '_menu_item_target', ''),
(72, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 17, '_menu_item_xfn', ''),
(74, 17, '_menu_item_url', ''),
(75, 17, '_menu_item_orphaned', '1410782501'),
(76, 18, '_menu_item_type', 'post_type'),
(77, 18, '_menu_item_menu_item_parent', '0'),
(78, 18, '_menu_item_object_id', '6'),
(79, 18, '_menu_item_object', 'page'),
(80, 18, '_menu_item_target', ''),
(81, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 18, '_menu_item_xfn', ''),
(83, 18, '_menu_item_url', ''),
(84, 18, '_menu_item_orphaned', '1410782501'),
(85, 19, '_menu_item_type', 'custom'),
(86, 19, '_menu_item_menu_item_parent', '0'),
(87, 19, '_menu_item_object_id', '19'),
(88, 19, '_menu_item_object', 'custom'),
(89, 19, '_menu_item_target', ''),
(90, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 19, '_menu_item_xfn', ''),
(92, 19, '_menu_item_url', 'http://hewis.vn/vn'),
(112, 22, '_menu_item_type', 'taxonomy'),
(113, 22, '_menu_item_menu_item_parent', '0'),
(114, 22, '_menu_item_object_id', '14'),
(115, 22, '_menu_item_object', 'product_cat'),
(116, 22, '_menu_item_target', ''),
(117, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 22, '_menu_item_xfn', ''),
(119, 22, '_menu_item_url', ''),
(121, 23, '_menu_item_type', 'taxonomy'),
(122, 23, '_menu_item_menu_item_parent', '0'),
(123, 23, '_menu_item_object_id', '15'),
(124, 23, '_menu_item_object', 'product_cat'),
(125, 23, '_menu_item_target', ''),
(126, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 23, '_menu_item_xfn', ''),
(128, 23, '_menu_item_url', ''),
(130, 24, '_menu_item_type', 'taxonomy'),
(131, 24, '_menu_item_menu_item_parent', '0'),
(132, 24, '_menu_item_object_id', '16'),
(133, 24, '_menu_item_object', 'product_cat'),
(134, 24, '_menu_item_target', ''),
(135, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(136, 24, '_menu_item_xfn', ''),
(137, 24, '_menu_item_url', ''),
(148, 26, '_menu_item_type', 'taxonomy'),
(149, 26, '_menu_item_menu_item_parent', '0'),
(150, 26, '_menu_item_object_id', '18'),
(151, 26, '_menu_item_object', 'product_cat'),
(152, 26, '_menu_item_target', ''),
(153, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(154, 26, '_menu_item_xfn', ''),
(155, 26, '_menu_item_url', ''),
(157, 27, '_menu_item_type', 'taxonomy'),
(158, 27, '_menu_item_menu_item_parent', '0'),
(159, 27, '_menu_item_object_id', '24'),
(160, 27, '_menu_item_object', 'product_cat'),
(161, 27, '_menu_item_target', ''),
(162, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(163, 27, '_menu_item_xfn', ''),
(164, 27, '_menu_item_url', ''),
(166, 28, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"nivo";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"700";s:6:"height";s:3:"300";s:3:"spw";s:1:"7";s:3:"sph";s:1:"5";s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:6:"random";s:10:"navigation";s:5:"false";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";s:2:"15";s:6:"center";s:4:"true";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";i:5;s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:4:"true";s:10:"noConflict";s:5:"false";s:12:"smoothHeight";s:5:"false";}'),
(167, 29, '_wp_attached_file', '2014/09/collection.png'),
(168, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1350;s:6:"height";i:662;s:4:"file";s:22:"2014/09/collection.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"collection-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"collection-300x147.png";s:5:"width";i:300;s:6:"height";i:147;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:23:"collection-1024x502.png";s:5:"width";i:1024;s:6:"height";i:502;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"collection-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"collection-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:22:"collection-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"collection-604x270.png";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(169, 30, '_wp_attached_file', '2014/09/slider.png'),
(170, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1349;s:6:"height";i:788;s:4:"file";s:18:"2014/09/slider.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slider-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"slider-300x175.png";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:19:"slider-1024x598.png";s:5:"width";i:1024;s:6:"height";i:598;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"slider-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"slider-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:18:"slider-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"slider-604x270.png";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(171, 29, 'ml-slider_type', 'image'),
(172, 30, 'ml-slider_type', 'image'),
(173, 29, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:79:"H:xampp-1.8.3htdocshewis.vnvn/wp-content/uploads/2014/09/collection-700x300.png";s:4:"file";s:22:"collection-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}'),
(174, 30, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:75:"H:xampp-1.8.3htdocshewis.vnvn/wp-content/uploads/2014/09/slider-700x300.png";s:4:"file";s:18:"slider-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}'),
(175, 29, 'ml-slider_crop_position', 'center-center'),
(176, 29, '_wp_attachment_image_alt', ''),
(177, 30, 'ml-slider_crop_position', 'center-center'),
(178, 30, '_wp_attachment_image_alt', ''),
(179, 19, '_megamenu', 'a:3:{s:4:"type";s:6:"flyout";s:5:"align";s:11:"bottom-left";s:4:"icon";s:8:"disabled";}'),
(182, 26, '_megamenu', 'a:3:{s:4:"type";s:6:"flyout";s:5:"align";s:11:"bottom-left";s:4:"icon";s:8:"disabled";}'),
(183, 22, '_megamenu', 'a:3:{s:4:"type";s:6:"flyout";s:5:"align";s:11:"bottom-left";s:4:"icon";s:8:"disabled";}'),
(184, 27, '_megamenu', 'a:3:{s:4:"type";s:6:"flyout";s:5:"align";s:11:"bottom-left";s:4:"icon";s:8:"disabled";}'),
(185, 23, '_megamenu', 'a:3:{s:4:"type";s:6:"flyout";s:5:"align";s:11:"bottom-left";s:4:"icon";s:8:"disabled";}'),
(186, 24, '_megamenu', 'a:3:{s:4:"type";s:6:"flyout";s:5:"align";s:11:"bottom-left";s:4:"icon";s:8:"disabled";}'),
(187, 8, '_edit_lock', '1410877340:1'),
(188, 32, '_edit_last', '1'),
(189, 32, '_edit_lock', '1410880258:1'),
(190, 35, '_wp_attached_file', '2014/09/men-1.png'),
(191, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:650;s:4:"file";s:17:"2014/09/men-1.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"men-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"men-1-300x135.png";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:18:"men-1-1024x462.png";s:5:"width";i:1024;s:6:"height";i:462;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"men-1-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"men-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:17:"men-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"men-1-604x270.png";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(192, 36, '_wp_attached_file', '2014/09/men-2.png'),
(193, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:700;s:4:"file";s:17:"2014/09/men-2.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"men-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"men-2-300x145.png";s:5:"width";i:300;s:6:"height";i:145;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:18:"men-2-1024x497.png";s:5:"width";i:1024;s:6:"height";i:497;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"men-2-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"men-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:17:"men-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"men-2-604x270.png";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(194, 37, '_wp_attached_file', '2014/09/men-3.png'),
(195, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:650;s:4:"file";s:17:"2014/09/men-3.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"men-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"men-3-300x135.png";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:18:"men-3-1024x462.png";s:5:"width";i:1024;s:6:"height";i:462;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"men-3-90x90.png";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"men-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:17:"men-3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"men-3-604x270.png";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(196, 45, '_menu_item_type', 'custom'),
(197, 45, '_menu_item_menu_item_parent', '0'),
(198, 45, '_menu_item_object_id', '45'),
(199, 45, '_menu_item_object', 'custom'),
(200, 45, '_menu_item_target', ''),
(201, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(202, 45, '_menu_item_xfn', ''),
(203, 45, '_menu_item_url', 'http://hewis.vn/vn/thoi-trang-nam/'),
(205, 45, '_megamenu', 'a:3:{s:4:"type";s:8:"megamenu";s:5:"align";s:11:"bottom-left";s:4:"icon";s:8:"disabled";}'),
(206, 46, '_edit_last', '1'),
(207, 46, '_edit_lock', '1410890365:1'),
(208, 47, '_wp_attached_file', '2014/09/LP_WOMEN_1_1440_700.jpg'),
(209, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:700;s:4:"file";s:31:"2014/09/LP_WOMEN_1_1440_700.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"LP_WOMEN_1_1440_700-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"LP_WOMEN_1_1440_700-300x145.jpg";s:5:"width";i:300;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"LP_WOMEN_1_1440_700-1024x497.jpg";s:5:"width";i:1024;s:6:"height";i:497;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"LP_WOMEN_1_1440_700-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"LP_WOMEN_1_1440_700-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"LP_WOMEN_1_1440_700-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"LP_WOMEN_1_1440_700-604x270.jpg";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(210, 48, '_wp_attached_file', '2014/09/LP_WOMEN_2_1440_650.jpg'),
(211, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:650;s:4:"file";s:31:"2014/09/LP_WOMEN_2_1440_650.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"LP_WOMEN_2_1440_650-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"LP_WOMEN_2_1440_650-300x135.jpg";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"LP_WOMEN_2_1440_650-1024x462.jpg";s:5:"width";i:1024;s:6:"height";i:462;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"LP_WOMEN_2_1440_650-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"LP_WOMEN_2_1440_650-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:31:"LP_WOMEN_2_1440_650-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"LP_WOMEN_2_1440_650-604x270.jpg";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(212, 50, '_menu_item_type', 'custom'),
(213, 50, '_menu_item_menu_item_parent', '0'),
(214, 50, '_menu_item_object_id', '50'),
(215, 50, '_menu_item_object', 'custom'),
(216, 50, '_menu_item_target', ''),
(217, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 50, '_menu_item_xfn', ''),
(219, 50, '_menu_item_url', '/vn/thoi-trang-nu/'),
(221, 50, '_megamenu', 'a:3:{s:4:"type";s:8:"megamenu";s:5:"align";s:11:"bottom-left";s:4:"icon";s:8:"disabled";}'),
(222, 53, '_wp_attached_file', '2014/09/CF46J9BBB6-0224_IS.jpg'),
(223, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:135;s:6:"height";i:153;s:4:"file";s:30:"2014/09/CF46J9BBB6-0224_IS.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"CF46J9BBB6-0224_IS-135x150.jpg";s:5:"width";i:135;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"CF46J9BBB6-0224_IS-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"CF46J9BBB6-0224_IS-135x150.jpg";s:5:"width";i:135;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(224, 54, '_wp_attached_file', '2014/09/CF46JBE06K-0243_IS.jpg'),
(225, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:135;s:6:"height";i:153;s:4:"file";s:30:"2014/09/CF46JBE06K-0243_IS.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"CF46JBE06K-0243_IS-135x150.jpg";s:5:"width";i:135;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"CF46JBE06K-0243_IS-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"CF46JBE06K-0243_IS-135x150.jpg";s:5:"width";i:135;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(226, 55, '_wp_attached_file', '2014/09/CF48C300BZ-0001_IS-Copy.jpg'),
(227, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:135;s:6:"height";i:153;s:4:"file";s:35:"2014/09/CF48C300BZ-0001_IS-Copy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"CF48C300BZ-0001_IS-Copy-135x150.jpg";s:5:"width";i:135;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"CF48C300BZ-0001_IS-Copy-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"CF48C300BZ-0001_IS-Copy-135x150.jpg";s:5:"width";i:135;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(228, 51, '_edit_last', '1'),
(229, 51, '_edit_lock', '1410882711:1');

-- --------------------------------------------------------

--
-- Table structure for table `vn_posts`
--

CREATE TABLE IF NOT EXISTS `vn_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `vn_posts`
--

INSERT INTO `vn_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-09-15 06:48:41', '2014-09-15 06:48:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-09-15 06:48:41', '2014-09-15 06:48:41', '', 0, 'http://hewis.vn/vn/?p=1', 0, 'post', '', 1),
(2, 1, '2014-09-15 06:48:41', '2014-09-15 06:48:41', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://hewis.vn/vn/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-09-15 06:48:41', '2014-09-15 06:48:41', '', 0, 'http://hewis.vn/vn/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-09-15 06:49:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-09-15 06:49:07', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?p=3', 0, 'post', '', 0),
(4, 1, '2014-09-15 07:40:59', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2014-09-15 07:40:59', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2014-09-15 07:40:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-09-15 07:40:59', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2014-09-15 07:41:04', '2014-09-15 07:41:04', '', 'Shop', '', 'publish', 'closed', 'open', '', 'shop', '', '', '2014-09-15 07:41:04', '2014-09-15 07:41:04', '', 0, 'http://hewis.vn/vn/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-09-15 07:41:05', '2014-09-15 07:41:05', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'open', '', 'cart', '', '', '2014-09-15 07:41:05', '2014-09-15 07:41:05', '', 0, 'http://hewis.vn/vn/?page_id=7', 0, 'page', '', 0),
(8, 1, '2014-09-15 07:41:05', '2014-09-15 07:41:05', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'open', '', 'checkout', '', '', '2014-09-15 07:41:05', '2014-09-15 07:41:05', '', 0, 'http://hewis.vn/vn/?page_id=8', 0, 'page', '', 0),
(9, 1, '2014-09-15 07:41:05', '2014-09-15 07:41:05', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'open', '', 'my-account', '', '', '2014-09-15 07:41:05', '2014-09-15 07:41:05', '', 0, 'http://hewis.vn/vn/?page_id=9', 0, 'page', '', 0),
(10, 1, '2014-09-15 11:51:33', '2014-09-15 11:51:33', '[add-homepage-css][metaslider id=28]', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-09-15 12:45:49', '2014-09-15 12:45:49', '', 0, 'http://hewis.vn/vn/?page_id=10', 0, 'page', '', 0),
(11, 1, '2014-09-15 11:51:33', '2014-09-15 11:51:33', '[add-homepage-css]', 'Home', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-09-15 11:51:33', '2014-09-15 11:51:33', '', 10, 'http://hewis.vn/vn/?p=11', 0, 'revision', '', 0),
(12, 1, '2014-09-15 12:01:39', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2014-09-15 12:01:39', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2014-09-15 12:01:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-09-15 12:01:40', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2014-09-15 12:01:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-09-15 12:01:40', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?p=14', 1, 'nav_menu_item', '', 0),
(16, 1, '2014-09-15 12:01:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-09-15 12:01:40', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2014-09-15 12:01:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-09-15 12:01:41', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2014-09-15 12:01:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-09-15 12:01:41', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2014-09-15 12:09:38', '2014-09-15 12:09:38', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-09-16 15:59:43', '2014-09-16 15:59:43', '', 0, 'http://hewis.vn/vn/?p=19', 1, 'nav_menu_item', '', 0),
(22, 1, '2014-09-15 12:09:39', '2014-09-15 12:09:39', ' ', '', '', 'publish', 'open', 'open', '', '22', '', '', '2014-09-16 15:59:43', '2014-09-16 15:59:43', '', 0, 'http://hewis.vn/vn/?p=22', 5, 'nav_menu_item', '', 0),
(23, 1, '2014-09-15 12:09:39', '2014-09-15 12:09:39', ' ', '', '', 'publish', 'open', 'open', '', '23', '', '', '2014-09-16 15:59:43', '2014-09-16 15:59:43', '', 0, 'http://hewis.vn/vn/?p=23', 7, 'nav_menu_item', '', 0),
(24, 1, '2014-09-15 12:09:39', '2014-09-15 12:09:39', ' ', '', '', 'publish', 'open', 'open', '', '24', '', '', '2014-09-16 15:59:43', '2014-09-16 15:59:43', '', 0, 'http://hewis.vn/vn/?p=24', 8, 'nav_menu_item', '', 0),
(26, 1, '2014-09-15 12:09:38', '2014-09-15 12:09:38', ' ', '', '', 'publish', 'open', 'open', '', '26', '', '', '2014-09-16 15:59:43', '2014-09-16 15:59:43', '', 0, 'http://hewis.vn/vn/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2014-09-15 12:11:54', '2014-09-15 12:11:54', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2014-09-16 15:59:43', '2014-09-16 15:59:43', '', 0, 'http://hewis.vn/vn/?p=27', 6, 'nav_menu_item', '', 0),
(28, 1, '2014-09-15 12:43:37', '2014-09-15 12:43:37', '', 'New Slider', '', 'publish', 'closed', 'open', '', 'new-slider', '', '', '2014-09-15 12:46:57', '2014-09-15 12:46:57', '', 0, 'http://hewis.vn/vn/?post_type=ml-slider&#038;p=28', 0, 'ml-slider', '', 0),
(29, 1, '2014-09-15 12:45:04', '2014-09-15 12:45:04', '', 'collection', '', 'inherit', 'closed', 'open', '', 'collection', '', '', '2014-09-15 12:46:57', '2014-09-15 12:46:57', '', 0, 'http://hewis.vn/vn/wp-content/uploads/2014/09/collection.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2014-09-15 12:45:06', '2014-09-15 12:45:06', '', 'slider', '', 'inherit', 'closed', 'open', '', 'slider', '', '', '2014-09-15 12:46:57', '2014-09-15 12:46:57', '', 0, 'http://hewis.vn/vn/wp-content/uploads/2014/09/slider.png', 1, 'attachment', 'image/png', 0),
(31, 1, '2014-09-15 12:45:49', '2014-09-15 12:45:49', '[add-homepage-css][metaslider id=28]', 'Home', '', 'inherit', 'closed', 'open', '', '10-revision-v1', '', '', '2014-09-15 12:45:49', '2014-09-15 12:45:49', '', 10, 'http://hewis.vn/vn/10-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2014-09-16 14:31:18', '2014-09-16 14:31:18', '<style>\r\nimg.alignnone {\r\nmargin: 0;\r\n}\r\n</style>\r\n<div style="margin-top: 40px;"><a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png" alt="men (1)" width="100%"/></a></div><div><a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-37" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png" alt="men (3)" width="100%" /></a></div><div><a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-36" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png" alt="men (2)" width="100%" /></a></div>', 'Thời trang nam', '', 'publish', 'closed', 'open', '', 'thoi-trang-nam', '', '', '2014-09-16 14:57:32', '2014-09-16 14:57:32', '', 0, 'http://hewis.vn/vn/?page_id=32', 0, 'page', '', 0),
(33, 1, '2014-09-16 14:31:18', '2014-09-16 14:31:18', '<div class="theme white">\r\n	  <div class="row splash_landing image-1">\r\n		<div class="column col-12">\r\n		  <a href="/men/watches/_/N-0Z286m?icid=men|MAIN1|watches">\r\n		       <img alt="TIMELESS APPEAL" src="/img/MKBusiness/en-US/refreshes/091614/assets/landing/LP_MENS_1_1440x700.png">\r\n          </a>\r\n		</div>\r\n	  </div>\r\n\r\n	  <div class="row splash_landing">\r\n		<div class="column col-12">\r\n           \r\n		  <a href="/men/accessories/tech/_/N-286y?icid=men|MAIN2|tech"> \r\n		  	 <img width="1440" height="652" alt="POWER PLAYER" data-original="/img/MKBusiness/en-US/refreshes/091614/assets/landing/LP_MENS_2_1440x700.png" class="lazy" src="/img/MKBusiness/en-US/refreshes/091614/assets/landing/LP_MENS_2_1440x700.png" style="display: block;">\r\n          </a>\r\n		  \r\n		</div>\r\n	  </div>\r\n\r\n      <div class="row splash_landing image-3">\r\n		<div class="column col-12">\r\n          <a href="/men/clothing/_/N-2862?icid=men|MAIN3|mnclothing"> \r\n		  	 <img width="1440" height="652" alt="BLACK OUT" data-original="/img/MKBusiness/en-US/refreshes/091614/assets/landing/LP_MENS_3_1440x700.png" class="lazy" src="/img/MKBusiness/en-US/refreshes/091614/assets/landing/LP_MENS_3_1440x700.png" style="display: block;">\r\n          </a>\r\n		 \r\n		</div>\r\n	  </div>\r\n  </div>', 'Thời trang nam', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2014-09-16 14:31:18', '2014-09-16 14:31:18', '', 32, 'http://hewis.vn/vn/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2014-09-16 14:46:46', '2014-09-16 14:46:46', '<style>\nimg.alignnone {\n\n}\n</style>\n<div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png" alt="men (1)" width="100%"/></a></div><div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png"><img class="alignnone size-medium wp-image-37" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png" alt="men (3)" width="100%" /></a></div><div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png"><img class="alignnone size-medium wp-image-36" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png" alt="men (2)" width="100%" /></a></div>', 'Thời trang nam', '', 'inherit', 'closed', 'open', '', '32-autosave-v1', '', '', '2014-09-16 14:46:46', '2014-09-16 14:46:46', '', 32, 'http://hewis.vn/vn/32-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2014-09-16 14:40:38', '2014-09-16 14:40:38', '', 'men (1)', '', 'inherit', 'closed', 'open', '', 'men-1', '', '', '2014-09-16 14:40:38', '2014-09-16 14:40:38', '', 32, 'http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2014-09-16 14:40:40', '2014-09-16 14:40:40', '', 'men (2)', '', 'inherit', 'closed', 'open', '', 'men-2', '', '', '2014-09-16 14:40:40', '2014-09-16 14:40:40', '', 32, 'http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2014-09-16 14:40:43', '2014-09-16 14:40:43', '', 'men (3)', '', 'inherit', 'closed', 'open', '', 'men-3', '', '', '2014-09-16 14:40:43', '2014-09-16 14:40:43', '', 32, 'http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2014-09-16 14:41:17', '2014-09-16 14:41:17', '<a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1-300x135.png" alt="men (1)" width="300" height="135" /></a>  <a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png"><img class="alignnone size-medium wp-image-37" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3-300x135.png" alt="men (3)" width="300" height="135" /></a><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png"><img class="alignnone size-medium wp-image-36" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2-300x145.png" alt="men (2)" width="300" height="145" /></a>', 'Thời trang nam', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2014-09-16 14:41:17', '2014-09-16 14:41:17', '', 32, 'http://hewis.vn/vn/32-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2014-09-16 14:43:45', '2014-09-16 14:43:45', '<div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1-300x135.png" alt="men (1)" width="100%"/></a></div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png"><img class="alignnone size-medium wp-image-37" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3-300x135.png" alt="men (3)" width="100%" /></a><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png"><img class="alignnone size-medium wp-image-36" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2-300x145.png" alt="men (2)" width="100%" /></a>', 'Thời trang nam', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2014-09-16 14:43:45', '2014-09-16 14:43:45', '', 32, 'http://hewis.vn/vn/32-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2014-09-16 14:44:18', '2014-09-16 14:44:18', '<div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1-300x135.png" alt="men (1)" width="100%"/></a></div><div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png"><img class="alignnone size-medium wp-image-37" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3-300x135.png" alt="men (3)" width="100%" /></a></div><div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png"><img class="alignnone size-medium wp-image-36" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2-300x145.png" alt="men (2)" width="100%" /></a></div>', 'Thời trang nam', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2014-09-16 14:44:18', '2014-09-16 14:44:18', '', 32, 'http://hewis.vn/vn/32-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2014-09-16 14:45:43', '2014-09-16 14:45:43', '<div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png" alt="men (1)" width="100%"/></a></div><div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png"><img class="alignnone size-medium wp-image-37" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png" alt="men (3)" width="100%" /></a></div><div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png"><img class="alignnone size-medium wp-image-36" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png" alt="men (2)" width="100%" /></a></div>', 'Thời trang nam', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2014-09-16 14:45:43', '2014-09-16 14:45:43', '', 32, 'http://hewis.vn/vn/32-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2014-09-16 14:47:03', '2014-09-16 14:47:03', '<style>\r\nimg.alignnone {\r\nmargin: 0;\r\n}\r\n</style>\r\n<div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png" alt="men (1)" width="100%"/></a></div><div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png"><img class="alignnone size-medium wp-image-37" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png" alt="men (3)" width="100%" /></a></div><div><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png"><img class="alignnone size-medium wp-image-36" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png" alt="men (2)" width="100%" /></a></div>', 'Thời trang nam', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2014-09-16 14:47:03', '2014-09-16 14:47:03', '', 32, 'http://hewis.vn/vn/32-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2014-09-16 14:52:16', '2014-09-16 14:52:16', '<style>\r\nimg.alignnone {\r\nmargin: 0;\r\n}\r\n</style>\r\n<div><a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png" alt="men (1)" width="100%"/></a></div><div><a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-37" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png" alt="men (3)" width="100%" /></a></div><div><a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-36" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png" alt="men (2)" width="100%" /></a></div>', 'Thời trang nam', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2014-09-16 14:52:16', '2014-09-16 14:52:16', '', 32, 'http://hewis.vn/vn/32-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2014-09-16 14:57:32', '2014-09-16 14:57:32', '<style>\r\nimg.alignnone {\r\nmargin: 0;\r\n}\r\n</style>\r\n<div style="margin-top: 40px;"><a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-35" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-1.png" alt="men (1)" width="100%"/></a></div><div><a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-37" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-3.png" alt="men (3)" width="100%" /></a></div><div><a href="http://hewis.vn/vn/san-pham/thoi-trang-nam/"><img class="alignnone size-medium wp-image-36" src="http://hewis.vn/vn/wp-content/uploads/2014/09/men-2.png" alt="men (2)" width="100%" /></a></div>', 'Thời trang nam', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2014-09-16 14:57:32', '2014-09-16 14:57:32', '', 32, 'http://hewis.vn/vn/32-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2014-09-16 15:11:42', '2014-09-16 15:11:42', '', 'Thời trang nam', '', 'publish', 'closed', 'open', '', 'thoi-trang-nam', '', '', '2014-09-16 15:59:43', '2014-09-16 15:59:43', '', 0, 'http://hewis.vn/vn/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2014-09-16 15:34:48', '2014-09-16 15:34:48', '<style>\r\nimg.alignnone {\r\nmargin: 0;\r\n}\r\n</style>\r\n<div style="margin-top: 40px;"><a href="http://hewis.vn/vn/san-pham/thoi-trang-nu/"><img src="http://hewis.vn/vn/wp-content/uploads/2014/09/LP_WOMEN_1_1440_700.jpg" alt="LP_WOMEN_1_1440_700" width="100%" class="alignnone size-full wp-image-47" /></a></div><div><a href="http://hewis.vn/vn/san-pham/thoi-trang-nu/"><img src="http://hewis.vn/vn/wp-content/uploads/2014/09/LP_WOMEN_2_1440_650.jpg" alt="LP_WOMEN_2_1440_650" width="100%" class="alignnone size-full wp-image-48" /></a></div>', 'Thời trang nữ', '', 'publish', 'closed', 'open', '', 'thoi-trang-nu', '', '', '2014-09-16 18:01:45', '2014-09-16 18:01:45', '', 0, 'http://hewis.vn/vn/?page_id=46', 0, 'page', '', 0),
(47, 1, '2014-09-16 15:32:10', '2014-09-16 15:32:10', '', 'LP_WOMEN_1_1440_700', '', 'inherit', 'closed', 'open', '', 'lp_women_1_1440_700', '', '', '2014-09-16 15:32:10', '2014-09-16 15:32:10', '', 46, 'http://hewis.vn/vn/wp-content/uploads/2014/09/LP_WOMEN_1_1440_700.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2014-09-16 15:32:11', '2014-09-16 15:32:11', '', 'LP_WOMEN_2_1440_650', '', 'inherit', 'closed', 'open', '', 'lp_women_2_1440_650', '', '', '2014-09-16 15:32:11', '2014-09-16 15:32:11', '', 46, 'http://hewis.vn/vn/wp-content/uploads/2014/09/LP_WOMEN_2_1440_650.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2014-09-16 15:34:48', '2014-09-16 15:34:48', '<style>\r\nimg.alignnone {\r\nmargin: 0;\r\n}\r\n</style>\r\n<div style="margin-top: 40px;"><a href="http://hewis.vn/vn/san-pham/thoi-trang-nu/"><img src="http://hewis.vn/vn/wp-content/uploads/2014/09/LP_WOMEN_1_1440_700.jpg" alt="LP_WOMEN_1_1440_700" width="100%" class="alignnone size-full wp-image-47" /></a></div><div><a href="http://hewis.vn/vn/san-pham/thoi-trang-nu/"><img src="http://hewis.vn/vn/wp-content/uploads/2014/09/LP_WOMEN_2_1440_650.jpg" alt="LP_WOMEN_2_1440_650" width="100%" class="alignnone size-full wp-image-48" /></a></div>', 'Thời trang nữ', '', 'inherit', 'closed', 'open', '', '46-revision-v1', '', '', '2014-09-16 15:34:48', '2014-09-16 15:34:48', '', 46, 'http://hewis.vn/vn/46-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2014-09-16 15:35:32', '2014-09-16 15:35:32', '', 'Thời trang nữ', '', 'publish', 'closed', 'open', '', 'thoi-trang-nu', '', '', '2014-09-16 15:59:43', '2014-09-16 15:59:43', '', 0, 'http://hewis.vn/vn/?p=50', 3, 'nav_menu_item', '', 0),
(51, 1, '2014-09-16 15:51:51', '0000-00-00 00:00:00', '<a href="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46J9BBB6-0224_IS.jpg"><img class="alignnone size-full wp-image-53" src="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46J9BBB6-0224_IS.jpg" alt="CF46J9BBB6-0224_IS" width="135" height="153" /></a><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46JBE06K-0243_IS.jpg"><img class="alignnone size-medium wp-image-54" src="http://hewis.vn/vn/wp-content/uploads/2014/09/CF46JBE06K-0243_IS.jpg" alt="CF46JBE06K-0243_IS" width="135" height="153" /></a><a href="http://hewis.vn/vn/wp-content/uploads/2014/09/CF48C300BZ-0001_IS-Copy.jpg"><img class="alignnone size-medium wp-image-55" src="http://hewis.vn/vn/wp-content/uploads/2014/09/CF48C300BZ-0001_IS-Copy.jpg" alt="CF48C300BZ-0001_IS - Copy" width="135" height="153" /></a>', '', '', 'draft', 'closed', 'open', '', '', '', '', '2014-09-16 15:51:51', '2014-09-16 15:51:51', '', 0, 'http://hewis.vn/vn/?page_id=51', 0, 'page', '', 0),
(52, 1, '2014-09-16 15:45:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2014-09-16 15:45:50', '0000-00-00 00:00:00', '', 0, 'http://hewis.vn/vn/?page_id=52', 0, 'page', '', 0),
(53, 1, '2014-09-16 15:46:08', '2014-09-16 15:46:08', '', 'CF46J9BBB6-0224_IS', '', 'inherit', 'closed', 'open', '', 'cf46j9bbb6-0224_is', '', '', '2014-09-16 15:46:08', '2014-09-16 15:46:08', '', 51, 'http://hewis.vn/vn/wp-content/uploads/2014/09/CF46J9BBB6-0224_IS.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2014-09-16 15:46:09', '2014-09-16 15:46:09', '', 'CF46JBE06K-0243_IS', '', 'inherit', 'closed', 'open', '', 'cf46jbe06k-0243_is', '', '', '2014-09-16 15:46:09', '2014-09-16 15:46:09', '', 51, 'http://hewis.vn/vn/wp-content/uploads/2014/09/CF46JBE06K-0243_IS.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2014-09-16 15:46:10', '2014-09-16 15:46:10', '', 'CF48C300BZ-0001_IS - Copy', '', 'inherit', 'closed', 'open', '', 'cf48c300bz-0001_is-copy', '', '', '2014-09-16 15:46:10', '2014-09-16 15:46:10', '', 51, 'http://hewis.vn/vn/wp-content/uploads/2014/09/CF48C300BZ-0001_IS-Copy.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vn_terms`
--

CREATE TABLE IF NOT EXISTS `vn_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `vn_terms`
--

INSERT INTO `vn_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(7, 'Thời trang nữ', 'thoi-trang-nu', 0),
(8, 'Thời trang nam', 'thoi-trang-nam', 0),
(9, 'Giày', 'giay-nam', 0),
(10, 'Phụ kiện', 'phu-kien-nam', 0),
(11, 'Quà tặng', 'qua-tang-nam', 0),
(13, 'Túi xách', 'tui-xach-nam', 0),
(14, 'Giày', 'giay', 0),
(15, 'Phụ kiện', 'phu-kien', 0),
(16, 'Quà tặng', 'qua-tang', 0),
(18, 'Túi xách', 'tui-xach', 0),
(19, 'Giày', 'giay-nu', 0),
(20, 'Phụ kiện', 'phu-kien-nu', 0),
(21, 'Quà tặng', 'qua-tang-nu', 0),
(23, 'top-menu', 'top-menu', 0),
(24, 'Đồng hồ', 'dong-ho', 0),
(25, 'Đồng hồ', 'dong-ho-nam', 0),
(26, 'Đồng hồ', 'dong-ho-nu', 0),
(27, '28', '28', 0),
(28, 'Quần áo', 'quan-ao-nu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vn_term_relationships`
--

CREATE TABLE IF NOT EXISTS `vn_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vn_term_relationships`
--

INSERT INTO `vn_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 23, 0),
(22, 23, 0),
(23, 23, 0),
(24, 23, 0),
(26, 23, 0),
(27, 23, 0),
(29, 27, 0),
(30, 27, 0),
(45, 23, 0),
(50, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vn_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `vn_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `vn_term_taxonomy`
--

INSERT INTO `vn_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(7, 7, 'product_cat', '', 0, 0),
(8, 8, 'product_cat', '', 0, 0),
(9, 9, 'product_cat', '', 8, 0),
(10, 10, 'product_cat', '', 8, 0),
(11, 11, 'product_cat', '', 8, 0),
(13, 13, 'product_cat', '', 8, 0),
(14, 14, 'product_cat', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0),
(18, 18, 'product_cat', '', 0, 0),
(19, 19, 'product_cat', '', 7, 0),
(20, 20, 'product_cat', '', 7, 0),
(21, 21, 'product_cat', '', 7, 0),
(23, 23, 'nav_menu', '', 0, 8),
(24, 24, 'product_cat', '', 0, 0),
(25, 25, 'product_cat', '', 8, 0),
(26, 26, 'product_cat', '', 7, 0),
(27, 27, 'ml-slider', '', 0, 0),
(28, 28, 'product_cat', '', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vn_usermeta`
--

CREATE TABLE IF NOT EXISTS `vn_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `vn_usermeta`
--

INSERT INTO `vn_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'tainerdev@gmail.com'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'vn_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'vn_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'vn_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'vn_user-settings', 'editor=html&libraryContent=browse&mfold=o&dfw_width=626'),
(17, 1, 'vn_user-settings-time', '1410882431'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:15:"add-product_tag";}'),
(20, 1, 'edit_product_per_page', '20'),
(21, 1, 'nav_menu_recently_edited', '23'),
(22, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'manageedit-commentscolumnshidden', 'a:4:{i:0;s:6:"author";i:1;s:8:"response";i:2;s:0:"";i:3;s:0:"";}'),
(25, 1, 'session_tokens', 'a:1:{s:64:"58ab954f438dcbb79abfb7d6930ad922537fe27245eb18d74ae404c287db49c2";i:1412087044;}');

-- --------------------------------------------------------

--
-- Table structure for table `vn_users`
--

CREATE TABLE IF NOT EXISTS `vn_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vn_users`
--

INSERT INTO `vn_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'tainerdev@gmail.com', '$P$Bg2Epi.mu8GnoOtU2oawMmR4h4OQOP.', 'tainerdevgmail-com', 'tainerdev@gmail.com', '', '2014-09-15 06:48:40', '', 0, 'tainerdev@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vn_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `vn_woocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vn_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `vn_woocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vn_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `vn_woocommerce_order_itemmeta` (
`meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vn_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `vn_woocommerce_order_items` (
`order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vn_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `vn_woocommerce_tax_rates` (
`tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vn_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `vn_woocommerce_tax_rate_locations` (
`location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vn_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `vn_woocommerce_termmeta` (
`meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `vn_woocommerce_termmeta`
--

INSERT INTO `vn_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(4, 7, 'order', '0'),
(5, 7, 'display_type', ''),
(6, 7, 'thumbnail_id', '0'),
(7, 8, 'order', '0'),
(8, 8, 'display_type', ''),
(9, 8, 'thumbnail_id', '0'),
(10, 9, 'order', '0'),
(11, 9, 'display_type', ''),
(12, 9, 'thumbnail_id', '0'),
(13, 10, 'order', '0'),
(14, 10, 'display_type', ''),
(15, 10, 'thumbnail_id', '0'),
(16, 11, 'order', '0'),
(17, 11, 'display_type', ''),
(18, 11, 'thumbnail_id', '0'),
(22, 13, 'order', '0'),
(23, 13, 'display_type', ''),
(24, 13, 'thumbnail_id', '0'),
(25, 14, 'order', '0'),
(26, 14, 'display_type', ''),
(27, 14, 'thumbnail_id', '0'),
(28, 15, 'order', '0'),
(29, 15, 'display_type', ''),
(30, 15, 'thumbnail_id', '0'),
(31, 16, 'order', '0'),
(32, 16, 'display_type', ''),
(33, 16, 'thumbnail_id', '0'),
(37, 18, 'order', '0'),
(38, 18, 'display_type', ''),
(39, 18, 'thumbnail_id', '0'),
(40, 19, 'order', '0'),
(41, 19, 'display_type', ''),
(42, 19, 'thumbnail_id', '0'),
(43, 20, 'order', '0'),
(44, 20, 'display_type', ''),
(45, 20, 'thumbnail_id', '0'),
(46, 21, 'order', '0'),
(47, 21, 'display_type', ''),
(48, 21, 'thumbnail_id', '0'),
(52, 24, 'order', '0'),
(53, 24, 'display_type', ''),
(54, 24, 'thumbnail_id', '0'),
(55, 25, 'order', '0'),
(56, 25, 'display_type', ''),
(57, 25, 'thumbnail_id', '0'),
(58, 26, 'order', '0'),
(59, 26, 'display_type', ''),
(60, 26, 'thumbnail_id', '0'),
(61, 28, 'order', '0'),
(62, 28, 'display_type', ''),
(63, 28, 'thumbnail_id', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vn_commentmeta`
--
ALTER TABLE `vn_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `vn_comments`
--
ALTER TABLE `vn_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `vn_links`
--
ALTER TABLE `vn_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `vn_options`
--
ALTER TABLE `vn_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `vn_postmeta`
--
ALTER TABLE `vn_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `vn_posts`
--
ALTER TABLE `vn_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `vn_terms`
--
ALTER TABLE `vn_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `vn_term_relationships`
--
ALTER TABLE `vn_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `vn_term_taxonomy`
--
ALTER TABLE `vn_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `vn_usermeta`
--
ALTER TABLE `vn_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `vn_users`
--
ALTER TABLE `vn_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `vn_woocommerce_attribute_taxonomies`
--
ALTER TABLE `vn_woocommerce_attribute_taxonomies`
 ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`);

--
-- Indexes for table `vn_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `vn_woocommerce_downloadable_product_permissions`
 ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`,`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `vn_woocommerce_order_itemmeta`
--
ALTER TABLE `vn_woocommerce_order_itemmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `vn_woocommerce_order_items`
--
ALTER TABLE `vn_woocommerce_order_items`
 ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `vn_woocommerce_tax_rates`
--
ALTER TABLE `vn_woocommerce_tax_rates`
 ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`), ADD KEY `tax_rate_state` (`tax_rate_state`), ADD KEY `tax_rate_class` (`tax_rate_class`), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `vn_woocommerce_tax_rate_locations`
--
ALTER TABLE `vn_woocommerce_tax_rate_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`);

--
-- Indexes for table `vn_woocommerce_termmeta`
--
ALTER TABLE `vn_woocommerce_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `woocommerce_term_id` (`woocommerce_term_id`), ADD KEY `meta_key` (`meta_key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vn_commentmeta`
--
ALTER TABLE `vn_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vn_comments`
--
ALTER TABLE `vn_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vn_links`
--
ALTER TABLE `vn_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vn_options`
--
ALTER TABLE `vn_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=422;
--
-- AUTO_INCREMENT for table `vn_postmeta`
--
ALTER TABLE `vn_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `vn_posts`
--
ALTER TABLE `vn_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `vn_terms`
--
ALTER TABLE `vn_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `vn_term_taxonomy`
--
ALTER TABLE `vn_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `vn_usermeta`
--
ALTER TABLE `vn_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `vn_users`
--
ALTER TABLE `vn_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vn_woocommerce_attribute_taxonomies`
--
ALTER TABLE `vn_woocommerce_attribute_taxonomies`
MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vn_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `vn_woocommerce_downloadable_product_permissions`
MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vn_woocommerce_order_itemmeta`
--
ALTER TABLE `vn_woocommerce_order_itemmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vn_woocommerce_order_items`
--
ALTER TABLE `vn_woocommerce_order_items`
MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vn_woocommerce_tax_rates`
--
ALTER TABLE `vn_woocommerce_tax_rates`
MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vn_woocommerce_tax_rate_locations`
--
ALTER TABLE `vn_woocommerce_tax_rate_locations`
MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vn_woocommerce_termmeta`
--
ALTER TABLE `vn_woocommerce_termmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
