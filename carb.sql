-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: 2018-10-26 09:13:06
-- 服务器版本： 5.7.23
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carb`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `published_at` datetime NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `name`, `excerpt`, `body`, `image`, `slug`, `featured`, `published_at`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 1, 'article 1', 'Carbolite Gero have recently re-engineered their range of floor-standing High Temperature In-dustrial Chamber Furnaces (HTF).', '<p>The new HTF models range from 64 to 514 useable litres and all feature &lsquo;up and away&rsquo; parallel opening doors for improved operator safety. The maximum cham-ber temperature is 1600&deg;C, 1700&deg;C or 1800&deg;C depending on requirements. Carbo-lite Gero&rsquo;s high purity chamber insulation material provides excellent resistance to thermal stresses while the fan assisted air flow and double shell construction ensures the outer case conforms to the BS EN 61010 workplace safety requirements. For unattended operation over-temperature protection is fitted as standard.&nbsp;</p>\r\n<p>These high-quality robust furnaces use free radiating molybdenum disilicide Kanthal Super heating elements to ensure rapid heating. This creates the perfect solution for applications including the heat treatment of technical ceramic materials, testing the thermal stability of semi-conductor materials and the sintering of metal (technical) ceramic composite materials.</p>\r\n<p>When debinding is required prior to the sintering process, Carbolite Gero offers a debinding package especially for the HTF range with a propane gas afterburner. This ensures that all gaseous by-products that are generated during the debinding process are burnt off. Once the debinding process is complete the HTF temperature automatically increases to begin the sintering process.</p>\r\n<p>The Carbolite Gero HTF range can be fitted with one of a range of sophisticated digital controllers, multi-segment programmers and data loggers which can be fitted with RS232, RS485 or Ethernet communications. These options deliver precise repeatable temperatures with ramps, dwells and cooling.&nbsp;</p>', 'articles/July2018/6HGEskBoIZygyJweReOt.jpg', 'article-1', 1, '2018-06-25 00:00:00', 'article 1', 'article 1', 'article 1', '2018-06-25 09:04:00', '2018-07-04 05:35:50'),
(2, 1, 'article 2', 'article 2', '<p>article 2&nbsp;article 2</p>', 'articles/July2018/fe5mKHr1ljTBm8kB4XKj.jpg', 'article-2', 0, '2018-06-25 00:00:00', 'article 2', 'article 2', 'article 2', '2018-06-25 09:05:00', '2018-07-04 06:19:00');

-- --------------------------------------------------------

--
-- 表的结构 `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `categories`
--

INSERT INTO `categories` (`id`, `order`, `name`, `slug`, `image`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 1, 'News', 'News', '', NULL, NULL, NULL, '2018-06-25 08:59:35', '2018-07-04 05:20:43');

-- --------------------------------------------------------

--
-- 表的结构 `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'category_id', 'select_dropdown', 'Category Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(25, 4, 'name', 'text', '标题', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:articles,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 6),
(26, 4, 'excerpt', 'text_area', '简介', 0, 0, 1, 1, 1, 1, NULL, 10),
(27, 4, 'body', 'rich_text_box', '正文', 0, 0, 1, 1, 1, 1, NULL, 11),
(28, 4, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"180\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"description\":\"news宽度最大180px\"}', 9),
(29, 4, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"4\"},\"validation\":{\"rule\":\"required|unique:articles,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 7),
(30, 4, 'featured', 'checkbox', '是否重要', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\"}}', 8),
(31, 4, 'published_at', 'date', '发布时间', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 5),
(32, 4, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, NULL, 12),
(33, 4, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 13),
(34, 4, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 14),
(35, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 15),
(36, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 16),
(37, 4, 'article_belongsto_category_relationship', 'relationship', '分类', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(38, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(39, 5, 'order', 'text', '排序', 1, 1, 1, 1, 1, 1, '{\"default\":1,\"display\":{\"width\":\"1\"}}', 2),
(40, 5, 'name', 'text', '分类名称', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:categories,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 3),
(41, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:categories,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 4),
(42, 5, 'image', 'image', '主图', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"600\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"标注下最佳尺寸\"}', 5),
(43, 5, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, NULL, 6),
(44, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 7),
(45, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 8),
(46, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 9),
(47, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(48, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(49, 6, 'order', 'text', '排序', 0, 1, 1, 1, 1, 1, '{\"default\":1,\"display\":{\"width\":\"1\"}}', 5),
(50, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:galleries,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 6),
(51, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:galleries,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 7),
(52, 6, 'gallery_category_id', 'text', 'Gallery Category Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(53, 6, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"400\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"像素备注\",\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"200\",\"height\":\"200\"}}]}', 8),
(54, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 9),
(55, 6, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, NULL, 10),
(56, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 11),
(57, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 12),
(58, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 13),
(59, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(60, 6, 'gallery_belongsto_gallery_category_relationship', 'relationship', '分类', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\GalleryCategory\",\"table\":\"gallery_categories\",\"type\":\"belongsTo\",\"column\":\"gallery_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(61, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(62, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:gallery_categories,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 3),
(63, 7, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:gallery_categories,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 4),
(64, 7, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\"},\"default\":1}', 2),
(65, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 6),
(66, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(67, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(68, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(69, 8, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, NULL, 3),
(70, 8, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, NULL, 4),
(71, 8, 'subject', 'text', 'Subject', 0, 1, 1, 1, 1, 1, NULL, 5),
(72, 8, 'message', 'text_area', 'Message', 0, 1, 1, 1, 1, 1, NULL, 6),
(73, 8, 'url', 'text', 'Url', 0, 0, 1, 1, 1, 1, NULL, 7),
(74, 8, 'clientId', 'text', 'ClientId', 0, 0, 1, 1, 1, 1, NULL, 8),
(75, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, NULL, 9),
(76, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(77, 9, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, NULL, 1),
(78, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:pages,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 2),
(79, 9, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:pages,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 3),
(80, 9, 'excerpt', 'text', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(81, 9, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 6),
(82, 9, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, NULL, 4),
(83, 9, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, NULL, 7),
(84, 9, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 8),
(85, 9, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 9),
(86, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 10),
(87, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(88, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(89, 10, 'product_category_id', 'text', 'Product Category Id', 1, 1, 1, 1, 1, 1, NULL, 4),
(90, 10, 'name', 'text', '品名', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"},\"validation\":{\"rule\":\"required|unique:products,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 5),
(91, 10, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required|unique:products,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 10),
(92, 10, 'featured', 'checkbox', '是否重要', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\"}}', 8),
(93, 10, 'order', 'text', '排序', 0, 1, 1, 1, 1, 1, '{\"default\":1,\"display\":{\"width\":\"1\"},\"description\":\"小->大\"}', 9),
(94, 10, 'product_code', 'text', '产品代码', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required|unique:products,product_code\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 6),
(95, 10, 'price', 'text', '价值', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}},\"description\":\"平均价格*成交率\"}', 7),
(96, 10, 'image', 'image', '分类页主图', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"300\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"3:4,原大小：300:400\"}', 11),
(97, 10, 'excerpt', 'text', '简介', 0, 0, 1, 1, 1, 1, NULL, 13),
(98, 10, 'body', 'rich_text_box', '正文', 0, 0, 1, 1, 1, 1, NULL, 14),
(99, 10, 'parameter', 'rich_text_box', '参数', 0, 0, 1, 1, 1, 1, NULL, 15),
(100, 10, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, NULL, 16),
(101, 10, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 17),
(102, 10, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 18),
(103, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 19),
(104, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 20),
(105, 10, 'product_belongsto_product_category_relationship', 'relationship', '产品分类', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsTo\",\"column\":\"product_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(106, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(107, 11, 'parent_id', 'select_dropdown', '父分类', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(108, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:product_categories,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 4),
(109, 11, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:product_categories,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 5),
(110, 11, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"288\",\"height\":\"190\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"3:2较好，288:190\"}', 6),
(111, 11, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{\"default\":1,\"display\":{\"width\":\"1\"},\"description\":\"小->大\"}', 3),
(112, 11, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 8),
(113, 11, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, NULL, 9),
(114, 11, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 10),
(115, 11, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 11),
(116, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 12),
(117, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(119, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(120, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"7\"},\"validation\":{\"rule\":\"required|unique:tags,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 2),
(121, 12, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, NULL, 4),
(122, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 5),
(123, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(124, 12, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:tags,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 3),
(125, 4, 'article_belongstomany_tag_relationship', 'relationship', 'tags', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 3),
(126, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(127, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"7\"},\"validation\":{\"rule\":\"required|unique:gallery_tags,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 2),
(128, 13, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:gallery_tags,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 3),
(129, 13, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, NULL, 4),
(130, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 5),
(131, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(132, 6, 'gallery_belongstomany_gallery_tag_relationship', 'relationship', 'gallery_tags', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\GalleryTag\",\"table\":\"gallery_tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"gallery_gallery_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 3),
(133, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(134, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"7\"},\"validation\":{\"rule\":\"required|unique:product_tags,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 2),
(135, 14, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:product_tags,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', 3),
(136, 14, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, NULL, 5),
(137, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, NULL, 6),
(138, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(139, 10, 'product_belongstomany_product_tag_relationship', 'relationship', 'product_tags', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductTag\",\"table\":\"product_tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_product_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 3),
(140, 11, 'sub_title', 'text', 'Sub Title', 0, 0, 1, 1, 1, 1, NULL, 7),
(141, 10, 'images', 'multiple_images', '产品多图', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"700\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"description\":\"700px宽以上\"}', 12),
(142, 7, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"240\",\"height\":\"158\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"240*158\"}', 5),
(143, 14, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1920\",\"height\":\"350\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"1920*350\",\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"240\",\"height\":\"158\"}}]}', 4);

-- --------------------------------------------------------

--
-- 表的结构 `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(4, 'articles', 'articles', 'Article', 'Articles', NULL, 'App\\Models\\Article', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 08:49:41', '2018-06-25 08:49:41'),
(5, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 08:56:19', '2018-06-25 08:56:19'),
(6, 'galleries', 'galleries', 'Gallery', 'Galleries', NULL, 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:29:13', '2018-06-26 01:29:13'),
(7, 'gallery_categories', 'gallery-categories', 'Gallery Category', 'Gallery Categories', NULL, 'App\\Models\\GalleryCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:34:23', '2018-06-26 01:34:23'),
(8, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Models\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:48:20', '2018-06-26 01:48:20'),
(9, 'pages', 'pages', 'Page', 'Pages', NULL, 'App\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:55:44', '2018-06-26 01:55:44'),
(10, 'products', 'products', 'Product', 'Products', NULL, 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 02:50:42', '2018-06-26 02:50:42'),
(11, 'product_categories', 'product-categories', 'Product Category', 'Product Categories', NULL, 'App\\Models\\ProductCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 03:02:50', '2018-06-26 03:02:50'),
(12, 'tags', 'tags', 'Tag', 'Tags', NULL, 'App\\Models\\Tag', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 05:57:48', '2018-06-26 05:57:48'),
(13, 'gallery_tags', 'gallery-tags', 'Gallery Tag', 'Gallery Tags', NULL, 'App\\Models\\GalleryTag', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 07:50:41', '2018-06-26 07:50:41'),
(14, 'product_tags', 'product-tags', 'Product Tag', 'Product Tags', NULL, 'App\\Models\\ProductTag', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 08:10:23', '2018-06-26 08:10:23');

-- --------------------------------------------------------

--
-- 表的结构 `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(11) DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_category_id` tinyint(4) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `galleries`
--

INSERT INTO `galleries` (`id`, `order`, `name`, `slug`, `gallery_category_id`, `image`, `body`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gallery 1', 'gallery-1', 1, NULL, '<p><strong>Annealing</strong> is the process of controlled heating and cooling of a material with the objective of altering the microstructure to remove stress, or change properties such as hardness, strength or ductility. <br /><br /> The most frequent applications of annealing are in metals to remove stresses induced by cold working.<br /><br /><strong> Non-ferrous metals:</strong> mostly Al alloys, normally carried out at between 150-250&deg;C, followed by air cooling, (not quenching in a media tank). <br /><br /><strong> Ferrous metals:</strong> normally carried out at between 350-600&deg;C, followed by air cooling, (not quenching in a media tank).</p>', NULL, NULL, NULL, '2018-06-26 07:57:47', '2018-07-04 08:40:15'),
(2, 1, 'gallery 2', 'gallery-2', 1, NULL, NULL, NULL, NULL, NULL, '2018-07-04 07:30:40', '2018-07-04 07:30:40'),
(3, 1, 'gallery 3', 'gallery-3', 2, NULL, NULL, NULL, NULL, NULL, '2018-07-04 08:18:18', '2018-07-04 08:18:18');

-- --------------------------------------------------------

--
-- 表的结构 `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `slug`, `order`, `created_at`, `updated_at`, `image`) VALUES
(1, 'heating applications', 'heating-applications', 1, '2018-06-26 03:23:43', '2018-07-04 07:11:16', 'gallery-categories/July2018/Ya60ViMlMToxotG3bLOX.jpg'),
(2, 'industries', 'industries', 1, '2018-06-26 03:24:00', '2018-07-04 07:13:19', 'gallery-categories/July2018/aRkHSkhnYTbI0nNkybb4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `gallery_gallery_tag`
--

CREATE TABLE `gallery_gallery_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `gallery_tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `gallery_gallery_tag`
--

INSERT INTO `gallery_gallery_tag` (`id`, `gallery_id`, `gallery_tag_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gallery_tags`
--

CREATE TABLE `gallery_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `gallery_tags`
--

INSERT INTO `gallery_tags` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Gallery Tag 1', 'gallery-tag-1', 'Gallery Tag 1', '2018-06-26 07:56:23', '2018-06-26 07:56:23'),
(2, 'Gallery Tag 2', 'gallery-tag-2', 'Gallery Tag 2', '2018-06-26 07:56:38', '2018-06-26 07:56:38');

-- --------------------------------------------------------

--
-- 表的结构 `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-06-25 06:49:25', '2018-06-25 06:49:25');

-- --------------------------------------------------------

--
-- 表的结构 `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-06-25 06:49:25', '2018-06-25 06:49:25', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-06-25 06:49:25', '2018-06-25 06:49:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-06-25 06:49:25', '2018-06-25 06:49:25', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2018-06-25 06:49:25', '2018-06-27 05:27:48', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2018-06-25 06:49:25', '2018-06-27 05:27:48', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.hooks', NULL),
(12, 1, '缓存清理', '/cache_clear', '_self', 'voyager-brush', '#000000', NULL, 9, '2018-06-25 08:18:13', '2018-06-27 05:27:48', NULL, ''),
(13, 1, '文章', '', '_self', 'voyager-file-text', '#000000', 24, 4, '2018-06-25 08:49:43', '2018-06-27 05:26:24', 'voyager.articles.index', 'null'),
(14, 1, '文章分类', '', '_self', 'voyager-file-text', '#000000', 24, 5, '2018-06-25 08:56:21', '2018-06-27 05:26:41', 'voyager.categories.index', 'null'),
(15, 1, '图库或案例', '', '_self', 'voyager-images', '#000000', 24, 7, '2018-06-26 01:29:15', '2018-06-27 05:26:11', 'voyager.galleries.index', 'null'),
(16, 1, '案例分类', '', '_self', 'voyager-images', '#000000', 24, 8, '2018-06-26 01:34:24', '2018-06-27 05:26:11', 'voyager.gallery-categories.index', 'null'),
(17, 1, '订单/留言', '', '_self', 'voyager-heart', '#000000', NULL, 6, '2018-06-26 01:48:22', '2018-06-27 05:27:48', 'voyager.orders.index', 'null'),
(18, 1, '主要页面', '', '_self', 'voyager-file-text', '#000000', 24, 10, '2018-06-26 01:55:45', '2018-06-27 05:27:21', 'voyager.pages.index', 'null'),
(19, 1, '产品', '', '_self', 'voyager-shop', '#000000', 24, 1, '2018-06-26 02:50:43', '2018-06-27 05:22:21', 'voyager.products.index', 'null'),
(20, 1, '产品分类', '', '_self', 'voyager-shop', '#000000', 24, 2, '2018-06-26 03:02:52', '2018-06-27 05:22:36', 'voyager.product-categories.index', 'null'),
(21, 1, '文章标签', '', '_self', 'voyager-file-text', '#000000', 24, 6, '2018-06-26 05:57:49', '2018-06-27 05:26:57', 'voyager.tags.index', 'null'),
(22, 1, '案例标签', '', '_self', 'voyager-images', '#000000', 24, 9, '2018-06-26 07:50:42', '2018-06-27 05:26:12', 'voyager.gallery-tags.index', 'null'),
(23, 1, '产品标签', '', '_self', 'voyager-shop', '#000000', 24, 3, '2018-06-26 08:10:24', '2018-06-27 05:22:51', 'voyager.product-tags.index', 'null'),
(24, 1, '发布管理', '', '_self', 'voyager-folder', '#000000', NULL, 5, '2018-06-27 05:21:28', '2018-06-27 05:27:36', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clientId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `excerpt`, `body`, `image`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Index', 'index', NULL, NULL, NULL, 'Index seo title', 'Index description 1', 'keyword 1 2 3', '2018-06-26 03:19:00', '2018-07-05 08:00:09'),
(2, 'products', 'products', NULL, NULL, 'pages/June2018/btRFRBjZXnwZ2Sra2TeX.jpg', 'products seo title', 'products products', 'products products products', '2018-06-28 07:01:58', '2018-06-28 07:01:58'),
(3, 'Contact & Service', 'contact-and-service', NULL, '<div id=\"c90093\" class=\"csc-default csc-space-after-20\">\r\n<div>Carbolite Gero products in the UK are distributed directly by Carbolite Gero Ltd. and in Germany directly by Carbolite Gero GmbH &amp; Co. KG. (the two manufacturing sites). In all other countries Carbolite Gero operates through&nbsp;a wide network of Verder Scientific daughter companies and fully trained distributors. <br /><br />Please choose your country from the map to find your local contact or simply fill out the contact form below. <br />We will get in touch with you right away.</div>\r\n</div>\r\n<div id=\"c91860\" class=\"csc-default\">&nbsp;</div>\r\n<div id=\"c122570\" class=\"csc-default csc-space-after-20\">\r\n<div><strong> If you have a service or spare parts request, please use our <a class=\"internal-link\" href=\"http://www.carbolite-gero.com/contact-service/service-spare-parts/\">Service &amp; Spare Parts Request</a> form for quick processing.</strong></div>\r\n</div>', 'pages/July2018/uTQS1IEuP4VdJC6fbgyt.jpg', NULL, NULL, NULL, '2018-07-02 09:05:55', '2018-07-02 09:05:55'),
(4, 'Company History & Profile', 'company-history-and-profile', NULL, '<div><strong>The CARBOLITE&nbsp;GERO&nbsp;brand is synonymous with high quality, leading heat technology in the design and manufacture of laboratory and industrial ovens and furnaces ranging from 30 &deg;C to 3000 &deg;C and sold globally to over 100 countries. </strong><br /><br /> On 1st January 2016 Carbolite (UK) and Carbolite Gero (Germany) joined to become one company under the name of CARBOLITE GERO. With the combined product lines the company will strengthen its market position locally and globally. In the past, both companies gained strong, established reputations for engineering expertise in applied heating technology.<br /><br /> CARBOLITE&nbsp;GERO&nbsp;has two manufacturing and sales sites. One is based in Derbyshire, United Kingdom, where Carbolite has been manufacturing laboratory and industrial ovens and furnaces up to 1800 &deg;C since 1938; the second facility is located in Neuhausen, southern Germany, where high temperature furnaces up to 3000 &deg;C with a large variety of solutions for vacuum and other modified atmospheres have been manufactured since 1982.<br /><br /> In addition to the wide range of standard products, CARBOLITE&nbsp;GERO&nbsp;is an expert in the development of customized equipment for complex heat treatment processes. Solving customers&rsquo; individual application requirements has given Carbolite Gero an important place in aerospace, engineering, materials science, medical, bioscience and contract testing laboratories globally to name a few. <br /><br />Not only can CARBOLITE GERO&nbsp;supply products with Standards-compliant furnace and oven designs (eg, Nadcap heat treatment processes (AMS2750E)), but also fully traceable certification for control, measurement, recording and data acquisition devices, issued by an independent UKAS accredited laboratory.</div>', 'pages/July2018/DjuVmB67e1LZFfu3lWF5.jpg', NULL, NULL, NULL, '2018-07-04 01:18:33', '2018-07-04 01:18:33'),
(5, 'Contact form successfully completed', 'contact-form-successfully-completed', NULL, '<p><strong>Thank you for your enquiry!</strong></p>\r\n<p>Your email has been successfully sent and will be processed as quickly as possible.</p>', 'pages/July2018/uY1z9B25aaQ9qRPbCGFB.jpg', 'Contact form successfully completed', 'Contact form successfully completed', NULL, '2018-07-04 01:33:09', '2018-07-04 01:33:34'),
(6, 'News', 'news', NULL, NULL, 'pages/July2018/JaaVk4W1OmY4NTeyQL42.jpg', NULL, NULL, NULL, '2018-07-04 01:50:59', '2018-07-04 01:50:59'),
(7, 'Applications', 'applications', 'Heat treatment applications up to 3000°C', '<p>Carbolite Gero laboratory and industrial furnaces are suitable for a wide range of different heat treatment applications. Out of our more than 400 standard models, numerous options and our database of customised solutions we have realised in the past, we are able to find the suitable product for you. Contact us for a consultation!&nbsp;</p>\r\n<p>Below you find some examples of heat treatment applications possible with our furnaces, products for specific industries as well as selected application reports.</p>', NULL, NULL, NULL, NULL, '2018-07-04 07:19:19', '2018-07-04 07:19:19');

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(2, 'browse_bread', NULL, '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(3, 'browse_database', NULL, '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(4, 'browse_media', NULL, '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(5, 'browse_compass', NULL, '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(6, 'browse_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(7, 'read_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(8, 'edit_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(9, 'add_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(10, 'delete_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(11, 'browse_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(12, 'read_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(13, 'edit_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(14, 'add_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(15, 'delete_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(16, 'browse_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(17, 'read_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(18, 'edit_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(19, 'add_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(20, 'delete_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(21, 'browse_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(22, 'read_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(23, 'edit_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(24, 'add_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(25, 'delete_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(26, 'browse_hooks', NULL, '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(27, 'browse_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42'),
(28, 'read_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42'),
(29, 'edit_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42'),
(30, 'add_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42'),
(31, 'delete_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42'),
(32, 'browse_categories', 'categories', '2018-06-25 08:56:20', '2018-06-25 08:56:20'),
(33, 'read_categories', 'categories', '2018-06-25 08:56:20', '2018-06-25 08:56:20'),
(34, 'edit_categories', 'categories', '2018-06-25 08:56:21', '2018-06-25 08:56:21'),
(35, 'add_categories', 'categories', '2018-06-25 08:56:21', '2018-06-25 08:56:21'),
(36, 'delete_categories', 'categories', '2018-06-25 08:56:21', '2018-06-25 08:56:21'),
(37, 'browse_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15'),
(38, 'read_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15'),
(39, 'edit_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15'),
(40, 'add_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15'),
(41, 'delete_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15'),
(42, 'browse_gallery_categories', 'gallery_categories', '2018-06-26 01:34:23', '2018-06-26 01:34:23'),
(43, 'read_gallery_categories', 'gallery_categories', '2018-06-26 01:34:23', '2018-06-26 01:34:23'),
(44, 'edit_gallery_categories', 'gallery_categories', '2018-06-26 01:34:23', '2018-06-26 01:34:23'),
(45, 'add_gallery_categories', 'gallery_categories', '2018-06-26 01:34:24', '2018-06-26 01:34:24'),
(46, 'delete_gallery_categories', 'gallery_categories', '2018-06-26 01:34:24', '2018-06-26 01:34:24'),
(47, 'browse_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21'),
(48, 'read_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21'),
(49, 'edit_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21'),
(50, 'add_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21'),
(51, 'delete_orders', 'orders', '2018-06-26 01:48:22', '2018-06-26 01:48:22'),
(52, 'browse_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45'),
(53, 'read_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45'),
(54, 'edit_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45'),
(55, 'add_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45'),
(56, 'delete_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45'),
(57, 'browse_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43'),
(58, 'read_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43'),
(59, 'edit_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43'),
(60, 'add_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43'),
(61, 'delete_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43'),
(62, 'browse_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52'),
(63, 'read_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52'),
(64, 'edit_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52'),
(65, 'add_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52'),
(66, 'delete_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52'),
(67, 'browse_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49'),
(68, 'read_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49'),
(69, 'edit_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49'),
(70, 'add_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49'),
(71, 'delete_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49'),
(72, 'browse_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41'),
(73, 'read_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41'),
(74, 'edit_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41'),
(75, 'add_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41'),
(76, 'delete_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41'),
(77, 'browse_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24'),
(78, 'read_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24'),
(79, 'edit_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24'),
(80, 'add_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24'),
(81, 'delete_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');

-- --------------------------------------------------------

--
-- 表的结构 `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(56, 1),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1);

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_category_id` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT '1',
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `parameter` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `product_category_id`, `name`, `slug`, `featured`, `order`, `product_code`, `price`, `image`, `excerpt`, `body`, `parameter`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `images`) VALUES
(1, 3, 'products 1', 'products-1', 0, 1, 'p-1', 100, 'products/June2018/6uD9mlHahkZzxhKxR0bV.jpg', '<li>Max temp: 300 °C</li> <li>Min temp: Ambient +30°C</li> <li>Volume: 27 to 215  litres</li>', '<p><strong>The Graphite Furnace HTK GR operates with rough/fine vacuum, protective gases such as Nitrogen/Argon, and reactive gases like Hydrogen and Carbon Monoxide. The Graphite Furnace HTK GR cannot operate in an Oxygen atmosphere due to the Graphite insulation. </strong><br /><br /> The rectangular design with a front door allows for easy loading and unloading. The HTK GR range is available in up to six different sizes. The smallest designs with a capacity of 8 litres and 25 litres are typically employed by laboratories for research and development. The 80 litre, 220 litre, 400 litre or 600 litre furnaces are predominantly used as pilot manufacturing systems or large scale production. <br /><br /> The HTK GR is based on Graphite insulation material, as well as graphite heating elements. With maximum temperatures up to 2200 &deg;C, the HTK GR is suited for extreme heat treatment needs. Upon request, the system can be equipped with a Graphite retort that is capable of a defined gas guiding flow within the unit and improves temperature uniformity to &lt; &plusmn; 10 &deg;C. For processes with strong outgassing, the retort protects the heating elements and increases the lifetime of the furnace.</p>\r\n<h2>Application Examples</h2>\r\n<p>graphiting, pyrolysis, siliconization, sintering, technical ceramics</p>\r\n<h2>Standard features</h2>\r\n<ul>\r\n<li>Graphite furnace, offering the highest possible temperatures</li>\r\n<li>Hydrogen partial pressure operation if requested</li>\r\n<li>Precisely controlled vacuum pumping speeds appropriate for powders</li>\r\n<li>Data recording for quality management</li>\r\n</ul>\r\n<h2 id=\"functionPrinciple\">Technical details</h2>\r\n<p><br /><strong>View inside of the HTK Graphite Furnace</strong></p>\r\n<ol>\r\n<li>frame</li>\r\n<li>water cooled vessel</li>\r\n<li>heating cassette</li>\r\n<li>groove for the sealing</li>\r\n<li>front door</li>\r\n<li>graphite insulation</li>\r\n</ol>\r\n<p><br /> Inside the chamber, heating elements are positioned at the bottom, left, right, and top sides of the furnace chamber allowing for improved temperature uniformity. For larger volumes, the back wall and front are equipped with heating elements to maintain excellent temperature uniformity. The HTK W, HTK MO, HTK GR and HTK KE furnaces are surrounded by a water cooled vessel; thus classifying, the HTK systems as a cold wall furnace. The cooling water is guided through the double walled vessel. <br /><br /> Upon request, the HTK GR can be operated up to 3000 &deg;C. For operation at 3000 &deg;C, the furnace is specially designed with a specific isolation thickness, optimal positioning of the heating elements, and a pyrometer for temperature measurement and control. The pyrometer directly measures the heat radiation by optical methods via a window inside the furnace and is not directly inserted into the furnace. <br /><br /> This measurement principle only works if a sufficient amount of radiation is emitted. The needed radiation is only generated at temperatures exceeding 400 &deg;C. For lower temperatures, a sliding thermocouple is used to control the lower temperatures. <br /><br /> Because of the increasing vapor pressure of graphite, 3000 &deg;C operation is only possible under inert gas atmosphere. Additionally, the high vapor pressure also results in carbon being released to the atmosphere. For carbon sensitive samples, a <a class=\"internal-link\" href=\"http://www.carbolite-gero.com/\">metallic furnace high temperature furnace</a> must be used.</p>\r\n<p><small>Content may be subject to modifications or corrections1</small></p>', '<h2>AX30</h2>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Max temp (&deg;C)</td>\r\n<td>250</td>\r\n</tr>\r\n<tr>\r\n<td>Min temp (&deg;C)</td>\r\n<td>Ambient +30</td>\r\n</tr>\r\n<tr>\r\n<td>Temp uniformity (&deg;C)</td>\r\n<td>&plusmn;5.0 @ 250&deg;C</td>\r\n</tr>\r\n<tr>\r\n<td>Heat-up time (mins)</td>\r\n<td>23</td>\r\n</tr>\r\n<tr>\r\n<td>Recovery time (mins)</td>\r\n<td>3</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />Internal H x W x D (mm)</td>\r\n<td>295 x 300 x 320</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />External H x W x D (mm)</td>\r\n<td>440 x 590 x 465</td>\r\n</tr>\r\n<tr>\r\n<td>Shelves fitted / accepted</td>\r\n<td>2 / 4</td>\r\n</tr>\r\n<tr>\r\n<td>Shelf loading each / total (kg)</td>\r\n<td>10 / 20</td>\r\n</tr>\r\n<tr>\r\n<td>Volume (litres)</td>\r\n<td>28</td>\r\n</tr>\r\n<tr>\r\n<td>Air changes / hr</td>\r\n<td>65</td>\r\n</tr>\r\n<tr>\r\n<td>Max power (W)</td>\r\n<td>1000</td>\r\n</tr>\r\n<tr>\r\n<td>Holding power (W)</td>\r\n<td>342</td>\r\n</tr>\r\n<tr>\r\n<td>Weight (kg)</td>\r\n<td>24</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>AX60</h2>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Max temp (&deg;C)</td>\r\n<td>250</td>\r\n</tr>\r\n<tr>\r\n<td>Min temp (&deg;C)</td>\r\n<td>Ambient +30</td>\r\n</tr>\r\n<tr>\r\n<td>Temp uniformity (&deg;C)</td>\r\n<td>&plusmn;5.0 @ 250&deg;C</td>\r\n</tr>\r\n<tr>\r\n<td>Heat-up time (mins)</td>\r\n<td>25</td>\r\n</tr>\r\n<tr>\r\n<td>Recovery time (mins)</td>\r\n<td>3</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />Internal H x W x D (mm)</td>\r\n<td>395 x 400 x 420</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />External H x W x D (mm)</td>\r\n<td>540 x 690 x 565</td>\r\n</tr>\r\n<tr>\r\n<td>Shelves fitted / accepted</td>\r\n<td>2 / 6</td>\r\n</tr>\r\n<tr>\r\n<td>Shelf loading each / total (kg)</td>\r\n<td>10 / 30</td>\r\n</tr>\r\n<tr>\r\n<td>Volume (litres)</td>\r\n<td>66</td>\r\n</tr>\r\n<tr>\r\n<td>Air changes / hr</td>\r\n<td>28</td>\r\n</tr>\r\n<tr>\r\n<td>Max power (W)</td>\r\n<td>1500</td>\r\n</tr>\r\n<tr>\r\n<td>Holding power (W)</td>\r\n<td>465</td>\r\n</tr>\r\n<tr>\r\n<td>Weight (kg)</td>\r\n<td>37</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>AX120</h2>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Max temp (&deg;C)</td>\r\n<td>250</td>\r\n</tr>\r\n<tr>\r\n<td>Min temp (&deg;C)</td>\r\n<td>Ambient +30</td>\r\n</tr>\r\n<tr>\r\n<td>Temp uniformity (&deg;C)</td>\r\n<td>&plusmn;5.0 @ 250</td>\r\n</tr>\r\n<tr>\r\n<td>Heat-up time (mins)</td>\r\n<td>26</td>\r\n</tr>\r\n<tr>\r\n<td>Recovery time (mins)</td>\r\n<td>3</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />Internal H x W x D (mm)</td>\r\n<td>495 x 500 x 520</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />External H x W x D (mm)</td>\r\n<td>640 x 790 x 665</td>\r\n</tr>\r\n<tr>\r\n<td>Shelves fitted / accepted</td>\r\n<td>2 / 8</td>\r\n</tr>\r\n<tr>\r\n<td>Shelf loading each / total (kg)</td>\r\n<td>10 / 40</td>\r\n</tr>\r\n<tr>\r\n<td>Volume (litres)</td>\r\n<td>128</td>\r\n</tr>\r\n<tr>\r\n<td>Air changes / hr</td>\r\n<td>14</td>\r\n</tr>\r\n<tr>\r\n<td>Max power (W)</td>\r\n<td>2000</td>\r\n</tr>\r\n<tr>\r\n<td>Holding power (W)</td>\r\n<td>622</td>\r\n</tr>\r\n<tr>\r\n<td>Weight (kg)</td>\r\n<td>55</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, '2018-06-26 03:16:00', '2018-07-04 06:34:45', '[\"products\\/June2018\\/RUoLtDsm5377RK715SrT.jpg\",\"products\\/June2018\\/Bs9SIMs1Y8SKL92CBhZm.jpg\"]'),
(2, 3, 'product 2', 'product-1', 1, 1, '11', 100, 'products/June2018/5Y8pdSYBogL9nlzaJFGe.jpg', '<li>Max temp: 300 °C</li> <li>Min temp: Ambient +30°C</li> <li>Volume: 27 to 215  litres</li>', NULL, NULL, NULL, NULL, NULL, '2018-06-26 03:26:00', '2018-07-06 07:29:26', NULL),
(3, 3, 'product 3', 'product-3', 0, 1, 'p3', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-06 06:39:14', '2018-07-06 06:39:14', NULL),
(4, 3, 'product 4', 'product-4', 0, 1, 'p4', 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-06 06:39:38', '2018-07-06 06:39:38', NULL),
(5, 3, 'product 5', 'product-5', 0, 1, 'p5', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-06 06:40:23', '2018-07-06 06:40:23', NULL),
(6, 3, 'product 6', 'product-6', 0, 1, 'p6', 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-06 06:40:58', '2018-07-06 06:40:58', NULL),
(7, 3, 'product 7', 'product-7', 0, 1, 'p7', 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-06 06:41:27', '2018-07-06 06:41:27', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `order` tinyint(3) UNSIGNED DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `name`, `slug`, `image`, `order`, `excerpt`, `seo_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `sub_title`) VALUES
(1, NULL, 'category 1', 'category-1', 'product-categories/June2018/gtnj77CfPzlnTjYEwEZI.jpg', 1, 'Carbolite Gero stocks a range of laboratory ovens for routine lab applications.  <br>\r\n\r\nThe laboratory oven models are ideal for general laboratory work and routine heat applications. They all provide excellent temperature uniformity and comply with safety standard BS EN 61010-2-010:2003.  <br>\r\n\r\nEach laboratory oven may be equipped with a number of options to meet customer requirements. This includes, for example, over-temperature protection, individual shelves and runners for different lab applications, digital timers or more advanced laboratory oven temperature control and programmer systems.', NULL, NULL, NULL, '2018-06-26 03:09:56', '2018-06-28 06:09:42', 'Max. temp. up to 750°C'),
(2, NULL, 'category 2', 'category-2', 'product-categories/June2018/mQ8YPLZeEdHe5ro7XZuC.jpg', 1, 'category excerpt', NULL, NULL, NULL, '2018-06-26 03:11:00', '2018-07-02 03:02:42', 'Max. temp. up to 750°C'),
(3, 1, 'category_1_1', 'category-1-1', 'product-categories/July2018/XgukzB4IULXnIpPcHh9C.jpg', 1, NULL, NULL, NULL, NULL, '2018-07-02 02:55:41', '2018-07-02 02:55:41', NULL),
(4, 1, 'category_1_2', 'category-1-2', 'product-categories/July2018/uq69LLmkS1331C0Y6utd.jpg', 1, NULL, NULL, NULL, NULL, '2018-07-02 02:56:11', '2018-07-02 02:56:11', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `product_product_tag`
--

CREATE TABLE `product_product_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `product_product_tag`
--

INSERT INTO `product_product_tag` (`id`, `product_id`, `product_tag_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `product_tags`
--

INSERT INTO `product_tags` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Product Tag 1', 'product-tag-1', '<p>Carbolite Gero&rsquo;s 80 years of experience and reputation for quality and reliability are invaluable in the aerospace industry. Furnaces and ovens from Carbolite Gero are the first choice for many of the aerospace industry&rsquo;s most respected companies for the heat treatment of aircraft components.&nbsp;</p>\r\n<p>Equipment is available for both initial manufacture and MRO (maintenance, repair and overhaul) to AMS 2750E within a Nadcap environment. Carbolite Gero products are already widely used by leading aerospace manufacturers and as a result we are able to offer excellent references.</p>', '2018-06-26 08:11:55', '2018-07-04 09:15:12', 'product-tags/July2018/SSdH9P7ikkZDZJIyKktl.jpg'),
(2, 'Product Tag 2', 'product-tag-2', NULL, '2018-06-26 08:12:11', '2018-06-26 08:12:11', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-06-25 06:49:25', '2018-06-25 06:49:25'),
(2, 'Editors', 'Editors', '2018-06-25 06:49:25', '2018-06-26 05:32:53');

-- --------------------------------------------------------

--
-- 表的结构 `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/July2018/apFeaiJAoIBwNQPVWAfm.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel1', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'banner.banner_1_title', 'banner 1 title', 'I am Banner 1 <br> huanghang', NULL, 'text', 6, 'banner'),
(12, 'banner.banner_1_excerpt', 'banner 1 excerpt', 'Oven and furnace systems designed for full <br>AMS2750E and CQI-9 compliance', NULL, 'text', 7, 'banner'),
(13, 'banner.banner_1_image', 'banner 1 image', 'settings/June2018/4xW553QPaa4nvnn6ReET.jpg', NULL, 'image', 8, 'banner'),
(14, 'banner.banner_2_title', 'banner 2 title', 'banner 2 2 2', NULL, 'text', 9, 'banner'),
(15, 'banner.banner_2_excerpt', 'banner 2 excerpt', '<br> banner 2 2 2 excerpt', NULL, 'text', 10, 'banner'),
(17, 'banner.banner_2_image', 'banner 2 image', 'settings/June2018/Us1Bw23Fdin2tDJHKCMB.jpg', NULL, 'image', 11, 'banner'),
(18, 'banner.banner_3_title', 'banner 3 title', 'banner 3 title', NULL, 'text', 12, 'banner'),
(19, 'banner.banner_3_excerpt', 'banner 3 excerpt', '<br> banner 3 excerpt', NULL, 'text', 13, 'banner'),
(20, 'banner.banner_3_image', 'banner 3 image', 'settings/June2018/IlTr4pWted6aVeiFPvqu.jpg', NULL, 'image', 14, 'banner'),
(21, 'index.about_us_title', 'About Us Title', 'GG - laboratory & industrial furnaces up to 3000°C', NULL, 'text', 15, 'index'),
(22, 'index.about_us_excerpt', 'About Us Excerpt', 'CG is a leading manufacturer of high temperature furnaces and ovens from 30°C to 3000°C with a focus on vacuum and special atmosphere technology. With more than 80 years of experience in thermal engineering our products are used in research laboratories, pilot plants and manufacturing sites worldwide.', NULL, 'text_area', 16, 'index'),
(23, 'index.footer_left_content', 'footer left content', '<b>Carbolite Gero Limited</b><br> Parsons Lane, Hope, <br> Hope Valley, S33 6RB, UK<br> Tel: +44 (0)\r\n                1433 620011<br> <a href=\"mailto:info@carbolite-gero.com\" class=\"mail\"\r\n                                   alt=\"Opens window for sending email\">info@carbolite-gero.com</a>', NULL, 'text_area', 17, 'index'),
(24, 'index.footer_content_title', 'footer content title', 'Verder Scientific - Science for Solids', NULL, 'text', 18, 'index'),
(25, 'index.footer_content_excerpt', 'footer_content_excerpt', 'The Scientific Division of the family owned VERDER Group sets standards in high-tech equipment for\r\n                    quality control, research and development of solid matter. The fields of activity cover sample\r\n                    preparation of solids as well as analyzing technologies. <br><br> Our well-known brands have served\r\n                    research institutions, analytical laboratories as well as manufacturing companies in quality control\r\n                    and\r\n                    process applications for many decades with ever more sophisticated and reliable products which offer\r\n                    the\r\n                    solution to their individual task.', NULL, 'text_area', 19, 'index'),
(26, 'index.footer_content_image', 'footer_content_image', 'settings/June2018/Cm2x0F4z3QC9S5c03AWh.jpg', NULL, 'image', 20, 'index'),
(27, 'index.footer_content_url', 'footer_content_url', '/', NULL, 'text', 21, 'index'),
(28, 'news.newsletter_registration', 'Newsletter Registration', 'settings/July2018/GwIz7SBPcINWcLzGhkQc.jpg', NULL, 'image', 22, 'news'),
(29, 'product.note', 'Note', '<p><strong>Please note:</strong><br /> <small>- Uniformity is measured in an empty chamber with vents closed, after a stabilisation period<br />- Shelf loadings are based on evenly distributed weight<br />- Maximum power and heat up times based on a 240V supply<br />- The uniform volume is smaller than the total chamber volume<br />- Minimum operating temperature is ambient +30&deg;C </small></p>\r\n<p><small>Content may be subject to modifications or corrections</small></p>', NULL, 'rich_text_box', 23, 'product'),
(30, 'product.tags', 'Product Tags Image', 'settings/July2018/cFAsbYhtItxLEVHdtnuQ.jpg', NULL, 'image', 24, 'product'),
(33, 'site.favicon', 'favicon', 'settings/July2018/5ur8baTTmujGmwQCwJ2n.png', NULL, 'image', 25, 'Site'),
(34, 'indexnews.title_1', '标题 1', '1111111111111', NULL, 'text', 26, 'indexNews'),
(35, 'indexnews.url_1', '链接 1', '/', NULL, 'text', 27, 'indexNews'),
(36, 'indexnews.image_1', '图片 1 (300*200)', 'settings/July2018/yEz5izxVSZ4hSwe3ibdN.jpg', NULL, 'image', 28, 'indexNews'),
(37, 'indexnews.title_2', '标题 2', '2222222222222', NULL, 'text', 29, 'indexNews'),
(40, 'indexnews.url_2', '链接 2', '/', NULL, 'text', 30, 'indexNews'),
(41, 'indexnews.image_2', '图片 2 (300*200)', 'settings/July2018/Nyu9Eaapgw6qIcZW2VC5.jpg', NULL, 'image', 31, 'indexNews'),
(42, 'indexnews.title_3', '标题 3', '333333333333333333333333333333 <br>33333333333333333333', NULL, 'text', 32, 'indexNews'),
(43, 'indexnews.url_3', '链接 3', '/', NULL, 'text', 33, 'indexNews'),
(44, 'indexnews.image_3', '图片 3 (300*200)', 'settings/July2018/XTBgm1ZjTnSiEawuxXdx.jpg', NULL, 'image', 34, 'indexNews'),
(45, 'indexnews.title_4', '标题 4', '44444444444444444444444444 <br> 44444444444444444444444444444', NULL, 'text', 35, 'indexNews'),
(46, 'indexnews.url_4', '链接 4', '/', NULL, 'text', 36, 'indexNews'),
(47, 'indexnews.image_4', '图片 4', 'settings/July2018/416mYOWAo4JeK6xBxCBn.jpg', NULL, 'image', 37, 'indexNews');

-- --------------------------------------------------------

--
-- 表的结构 `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `tags`
--

INSERT INTO `tags` (`id`, `name`, `description`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'tag 1', 'tag 1 tag 1', '2018-06-26 06:04:43', '2018-06-26 06:04:43', 'tag-1'),
(2, 'tag 2', 'tag 2 tag 2', '2018-06-26 06:04:58', '2018-06-26 06:04:58', 'tag-2'),
(3, 'tag 3', 'tag 3 tag 3', '2018-06-26 06:05:15', '2018-06-26 06:05:15', 'tag-3');

-- --------------------------------------------------------

--
-- 表的结构 `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'chaos', 'chaos29092@gmail.com', 'users/June2018/V9TR4wa2PcmqvZsPGfo3.jpg', '$2y$10$RcPyBnrElDyjxxAgX6C9XONCyA.Ql147EK35QKhCMkoE8/oCw6xI6', 'RtoNhiyFHJIqIi5Hmz7zOeoXlNvXavHqZCAFDPlK2V5UNM5rS0NzQvrjmCsu', '{\"locale\":\"en\"}', '2018-06-25 06:51:25', '2018-06-25 08:10:01'),
(2, 2, 'editor', 'editor@email.com', 'users/June2018/rlYXTKUjEOiH9hQWdAhE.jpg', '$2y$10$RIoP6CgjR8hVpZauVKNFU.0XT/H2LwS284f0y3ngX/GfcOaTXoniC', NULL, '{\"locale\":\"en\"}', '2018-06-26 05:47:32', '2018-06-26 05:47:32');

-- --------------------------------------------------------

--
-- 表的结构 `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `galleries_slug_unique` (`slug`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gallery_categories_slug_unique` (`slug`);

--
-- Indexes for table `gallery_gallery_tag`
--
ALTER TABLE `gallery_gallery_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_tags`
--
ALTER TABLE `gallery_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gallery_tags_name_unique` (`name`),
  ADD UNIQUE KEY `gallery_tags_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_slug_unique` (`slug`);

--
-- Indexes for table `product_product_tag`
--
ALTER TABLE `product_product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_tags_name_unique` (`name`),
  ADD UNIQUE KEY `product_tags_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- 使用表AUTO_INCREMENT `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `gallery_gallery_tag`
--
ALTER TABLE `gallery_gallery_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `gallery_tags`
--
ALTER TABLE `gallery_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- 使用表AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `product_product_tag`
--
ALTER TABLE `product_product_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用表AUTO_INCREMENT `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 限制导出的表
--

--
-- 限制表 `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- 限制表 `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- 限制表 `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- 限制表 `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
