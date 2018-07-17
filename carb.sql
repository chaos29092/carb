/*
Navicat MySQL Data Transfer

Source Server         : localhost_33060
Source Server Version : 50717
Source Host           : localhost:33060
Source Database       : carb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-17 13:57:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
INSERT INTO `article_tag` VALUES ('1', '4', '1');
INSERT INTO `article_tag` VALUES ('2', '4', '2');
INSERT INTO `article_tag` VALUES ('3', '1', '1');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '1', 'article 1', 'Carbolite Gero have recently re-engineered their range of floor-standing High Temperature In-dustrial Chamber Furnaces (HTF).', '<p>The new HTF models range from 64 to 514 useable litres and all feature &lsquo;up and away&rsquo; parallel opening doors for improved operator safety. The maximum cham-ber temperature is 1600&deg;C, 1700&deg;C or 1800&deg;C depending on requirements. Carbo-lite Gero&rsquo;s high purity chamber insulation material provides excellent resistance to thermal stresses while the fan assisted air flow and double shell construction ensures the outer case conforms to the BS EN 61010 workplace safety requirements. For unattended operation over-temperature protection is fitted as standard.&nbsp;</p>\r\n<p>These high-quality robust furnaces use free radiating molybdenum disilicide Kanthal Super heating elements to ensure rapid heating. This creates the perfect solution for applications including the heat treatment of technical ceramic materials, testing the thermal stability of semi-conductor materials and the sintering of metal (technical) ceramic composite materials.</p>\r\n<p>When debinding is required prior to the sintering process, Carbolite Gero offers a debinding package especially for the HTF range with a propane gas afterburner. This ensures that all gaseous by-products that are generated during the debinding process are burnt off. Once the debinding process is complete the HTF temperature automatically increases to begin the sintering process.</p>\r\n<p>The Carbolite Gero HTF range can be fitted with one of a range of sophisticated digital controllers, multi-segment programmers and data loggers which can be fitted with RS232, RS485 or Ethernet communications. These options deliver precise repeatable temperatures with ramps, dwells and cooling.&nbsp;</p>', 'articles/July2018/6HGEskBoIZygyJweReOt.jpg', 'article-1', '1', '2018-06-25 00:00:00', 'article 1', 'article 1', 'article 1', '2018-06-25 09:04:00', '2018-07-04 05:35:50');
INSERT INTO `articles` VALUES ('2', '1', 'article 2', 'article 2', '<p>article 2&nbsp;article 2</p>', 'articles/July2018/fe5mKHr1ljTBm8kB4XKj.jpg', 'article-2', '0', '2018-06-25 00:00:00', 'article 2', 'article 2', 'article 2', '2018-06-25 09:05:00', '2018-07-04 06:19:00');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(4) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '1', 'News', 'News', '', null, null, null, '2018-06-25 08:59:35', '2018-07-04 05:20:43');

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
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
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
INSERT INTO `data_rows` VALUES ('1', '1', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('2', '1', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('3', '1', 'email', 'text', 'Email', '1', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('4', '1', 'password', 'password', 'Password', '1', '0', '0', '1', '1', '0', '', '4');
INSERT INTO `data_rows` VALUES ('5', '1', 'remember_token', 'text', 'Remember Token', '0', '0', '0', '0', '0', '0', '', '5');
INSERT INTO `data_rows` VALUES ('6', '1', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', '', '6');
INSERT INTO `data_rows` VALUES ('7', '1', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '7');
INSERT INTO `data_rows` VALUES ('8', '1', 'avatar', 'image', 'Avatar', '0', '1', '1', '1', '1', '1', '', '8');
INSERT INTO `data_rows` VALUES ('9', '1', 'user_belongsto_role_relationship', 'relationship', 'Role', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', '10');
INSERT INTO `data_rows` VALUES ('10', '1', 'user_belongstomany_role_relationship', 'relationship', 'Roles', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', '11');
INSERT INTO `data_rows` VALUES ('11', '1', 'locale', 'text', 'Locale', '0', '1', '1', '1', '1', '0', '', '12');
INSERT INTO `data_rows` VALUES ('12', '1', 'settings', 'hidden', 'Settings', '0', '0', '0', '0', '0', '0', '', '12');
INSERT INTO `data_rows` VALUES ('13', '2', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('14', '2', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('15', '2', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '', '3');
INSERT INTO `data_rows` VALUES ('16', '2', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '4');
INSERT INTO `data_rows` VALUES ('17', '3', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('18', '3', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('19', '3', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '', '3');
INSERT INTO `data_rows` VALUES ('20', '3', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '4');
INSERT INTO `data_rows` VALUES ('21', '3', 'display_name', 'text', 'Display Name', '1', '1', '1', '1', '1', '1', '', '5');
INSERT INTO `data_rows` VALUES ('22', '1', 'role_id', 'text', 'Role', '1', '1', '1', '1', '1', '1', '', '9');
INSERT INTO `data_rows` VALUES ('23', '4', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('24', '4', 'category_id', 'select_dropdown', 'Category Id', '0', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('25', '4', 'name', 'text', '标题', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:articles,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '6');
INSERT INTO `data_rows` VALUES ('26', '4', 'excerpt', 'text_area', '简介', '0', '0', '1', '1', '1', '1', null, '10');
INSERT INTO `data_rows` VALUES ('27', '4', 'body', 'rich_text_box', '正文', '0', '0', '1', '1', '1', '1', null, '11');
INSERT INTO `data_rows` VALUES ('28', '4', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"180\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"description\":\"news宽度最大180px\"}', '9');
INSERT INTO `data_rows` VALUES ('29', '4', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"4\"},\"validation\":{\"rule\":\"required|unique:articles,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '7');
INSERT INTO `data_rows` VALUES ('30', '4', 'featured', 'checkbox', '是否重要', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"1\"}}', '8');
INSERT INTO `data_rows` VALUES ('31', '4', 'published_at', 'date', '发布时间', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', '5');
INSERT INTO `data_rows` VALUES ('32', '4', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '12');
INSERT INTO `data_rows` VALUES ('33', '4', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '13');
INSERT INTO `data_rows` VALUES ('34', '4', 'meta_keywords', 'text_area', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '14');
INSERT INTO `data_rows` VALUES ('35', '4', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '15');
INSERT INTO `data_rows` VALUES ('36', '4', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '16');
INSERT INTO `data_rows` VALUES ('37', '4', 'article_belongsto_category_relationship', 'relationship', '分类', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', '2');
INSERT INTO `data_rows` VALUES ('38', '5', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('39', '5', 'order', 'text', '排序', '1', '1', '1', '1', '1', '1', '{\"default\":1,\"display\":{\"width\":\"1\"}}', '2');
INSERT INTO `data_rows` VALUES ('40', '5', 'name', 'text', '分类名称', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:categories,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('41', '5', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:categories,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '4');
INSERT INTO `data_rows` VALUES ('42', '5', 'image', 'image', '主图', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"600\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"标注下最佳尺寸\"}', '5');
INSERT INTO `data_rows` VALUES ('43', '5', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '6');
INSERT INTO `data_rows` VALUES ('44', '5', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('45', '5', 'meta_keywords', 'text_area', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('46', '5', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '9');
INSERT INTO `data_rows` VALUES ('47', '5', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '10');
INSERT INTO `data_rows` VALUES ('48', '6', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('49', '6', 'order', 'text', '排序', '0', '1', '1', '1', '1', '1', '{\"default\":1,\"display\":{\"width\":\"1\"}}', '5');
INSERT INTO `data_rows` VALUES ('50', '6', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:galleries,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '6');
INSERT INTO `data_rows` VALUES ('51', '6', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:galleries,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '7');
INSERT INTO `data_rows` VALUES ('52', '6', 'gallery_category_id', 'text', 'Gallery Category Id', '0', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('53', '6', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"400\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"像素备注\",\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"200\",\"height\":\"200\"}}]}', '8');
INSERT INTO `data_rows` VALUES ('54', '6', 'body', 'rich_text_box', 'Body', '0', '0', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('55', '6', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '10');
INSERT INTO `data_rows` VALUES ('56', '6', 'meta_description', 'text', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '11');
INSERT INTO `data_rows` VALUES ('57', '6', 'meta_keywords', 'text', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '12');
INSERT INTO `data_rows` VALUES ('58', '6', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '13');
INSERT INTO `data_rows` VALUES ('59', '6', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '14');
INSERT INTO `data_rows` VALUES ('60', '6', 'gallery_belongsto_gallery_category_relationship', 'relationship', '分类', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\GalleryCategory\",\"table\":\"gallery_categories\",\"type\":\"belongsTo\",\"column\":\"gallery_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', '2');
INSERT INTO `data_rows` VALUES ('61', '7', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('62', '7', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:gallery_categories,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('63', '7', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:gallery_categories,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '4');
INSERT INTO `data_rows` VALUES ('64', '7', 'order', 'text', 'Order', '0', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"1\"},\"default\":1}', '2');
INSERT INTO `data_rows` VALUES ('65', '7', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '6');
INSERT INTO `data_rows` VALUES ('66', '7', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '7');
INSERT INTO `data_rows` VALUES ('67', '8', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('68', '8', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('69', '8', 'email', 'text', 'Email', '0', '1', '1', '1', '1', '1', null, '3');
INSERT INTO `data_rows` VALUES ('70', '8', 'phone', 'text', 'Phone', '0', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('71', '8', 'subject', 'text', 'Subject', '0', '1', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('72', '8', 'message', 'text_area', 'Message', '0', '1', '1', '1', '1', '1', null, '6');
INSERT INTO `data_rows` VALUES ('73', '8', 'url', 'text', 'Url', '0', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('74', '8', 'clientId', 'text', 'ClientId', '0', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('75', '8', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '1', null, '9');
INSERT INTO `data_rows` VALUES ('76', '8', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '10');
INSERT INTO `data_rows` VALUES ('77', '9', 'id', 'number', 'Id', '1', '1', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('78', '9', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:pages,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '2');
INSERT INTO `data_rows` VALUES ('79', '9', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:pages,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('80', '9', 'excerpt', 'text', 'Excerpt', '0', '0', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('81', '9', 'body', 'rich_text_box', 'Body', '0', '0', '1', '1', '1', '1', null, '6');
INSERT INTO `data_rows` VALUES ('82', '9', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('83', '9', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('84', '9', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('85', '9', 'meta_keywords', 'text', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('86', '9', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '10');
INSERT INTO `data_rows` VALUES ('87', '9', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '11');
INSERT INTO `data_rows` VALUES ('88', '10', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('89', '10', 'product_category_id', 'text', 'Product Category Id', '1', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('90', '10', 'name', 'text', '品名', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"4\"},\"validation\":{\"rule\":\"required|unique:products,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '5');
INSERT INTO `data_rows` VALUES ('91', '10', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required|unique:products,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '10');
INSERT INTO `data_rows` VALUES ('92', '10', 'featured', 'checkbox', '是否重要', '0', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"1\"}}', '8');
INSERT INTO `data_rows` VALUES ('93', '10', 'order', 'text', '排序', '0', '1', '1', '1', '1', '1', '{\"default\":1,\"display\":{\"width\":\"1\"},\"description\":\"小->大\"}', '9');
INSERT INTO `data_rows` VALUES ('94', '10', 'product_code', 'text', '产品代码', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required|unique:products,product_code\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '6');
INSERT INTO `data_rows` VALUES ('95', '10', 'price', 'text', '价值', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}},\"description\":\"平均价格*成交率\"}', '7');
INSERT INTO `data_rows` VALUES ('96', '10', 'image', 'image', '分类页主图', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"300\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"3:4,原大小：300:400\"}', '11');
INSERT INTO `data_rows` VALUES ('97', '10', 'excerpt', 'text', '简介', '0', '0', '1', '1', '1', '1', null, '13');
INSERT INTO `data_rows` VALUES ('98', '10', 'body', 'rich_text_box', '正文', '0', '0', '1', '1', '1', '1', null, '14');
INSERT INTO `data_rows` VALUES ('99', '10', 'parameter', 'rich_text_box', '参数', '0', '0', '1', '1', '1', '1', null, '15');
INSERT INTO `data_rows` VALUES ('100', '10', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '16');
INSERT INTO `data_rows` VALUES ('101', '10', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '17');
INSERT INTO `data_rows` VALUES ('102', '10', 'meta_keywords', 'text', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '18');
INSERT INTO `data_rows` VALUES ('103', '10', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '19');
INSERT INTO `data_rows` VALUES ('104', '10', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '20');
INSERT INTO `data_rows` VALUES ('105', '10', 'product_belongsto_product_category_relationship', 'relationship', '产品分类', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsTo\",\"column\":\"product_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', '2');
INSERT INTO `data_rows` VALUES ('106', '11', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('107', '11', 'parent_id', 'select_dropdown', '父分类', '0', '0', '1', '1', '1', '1', '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', '2');
INSERT INTO `data_rows` VALUES ('108', '11', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:product_categories,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '4');
INSERT INTO `data_rows` VALUES ('109', '11', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:product_categories,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '5');
INSERT INTO `data_rows` VALUES ('110', '11', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"288\",\"height\":\"190\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"3:2较好，288:190\"}', '6');
INSERT INTO `data_rows` VALUES ('111', '11', 'order', 'text', 'Order', '0', '1', '1', '1', '1', '1', '{\"default\":1,\"display\":{\"width\":\"1\"},\"description\":\"小->大\"}', '3');
INSERT INTO `data_rows` VALUES ('112', '11', 'excerpt', 'text_area', 'Excerpt', '0', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('113', '11', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('114', '11', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '10');
INSERT INTO `data_rows` VALUES ('115', '11', 'meta_keywords', 'text', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '11');
INSERT INTO `data_rows` VALUES ('116', '11', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '12');
INSERT INTO `data_rows` VALUES ('117', '11', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '13');
INSERT INTO `data_rows` VALUES ('119', '12', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('120', '12', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"7\"},\"validation\":{\"rule\":\"required|unique:tags,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '2');
INSERT INTO `data_rows` VALUES ('121', '12', 'description', 'text_area', 'Description', '0', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('122', '12', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '5');
INSERT INTO `data_rows` VALUES ('123', '12', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '6');
INSERT INTO `data_rows` VALUES ('124', '12', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:tags,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('125', '4', 'article_belongstomany_tag_relationship', 'relationship', 'tags', '0', '0', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', '3');
INSERT INTO `data_rows` VALUES ('126', '13', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('127', '13', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"7\"},\"validation\":{\"rule\":\"required|unique:gallery_tags,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '2');
INSERT INTO `data_rows` VALUES ('128', '13', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:gallery_tags,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('129', '13', 'description', 'text_area', 'Description', '0', '0', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('130', '13', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '5');
INSERT INTO `data_rows` VALUES ('131', '13', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '6');
INSERT INTO `data_rows` VALUES ('132', '6', 'gallery_belongstomany_gallery_tag_relationship', 'relationship', 'gallery_tags', '0', '0', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\GalleryTag\",\"table\":\"gallery_tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"gallery_gallery_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', '3');
INSERT INTO `data_rows` VALUES ('133', '14', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('134', '14', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"7\"},\"validation\":{\"rule\":\"required|unique:product_tags,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '2');
INSERT INTO `data_rows` VALUES ('135', '14', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:product_tags,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('136', '14', 'description', 'rich_text_box', 'Description', '0', '0', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('137', '14', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '6');
INSERT INTO `data_rows` VALUES ('138', '14', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '7');
INSERT INTO `data_rows` VALUES ('139', '10', 'product_belongstomany_product_tag_relationship', 'relationship', 'product_tags', '0', '0', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\ProductTag\",\"table\":\"product_tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_product_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', '3');
INSERT INTO `data_rows` VALUES ('140', '11', 'sub_title', 'text', 'Sub Title', '0', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('141', '10', 'images', 'multiple_images', '产品多图', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"700\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"description\":\"700px宽以上\"}', '12');
INSERT INTO `data_rows` VALUES ('142', '7', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"240\",\"height\":\"158\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"240*158\"}', '5');
INSERT INTO `data_rows` VALUES ('143', '14', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"1920\",\"height\":\"350\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"1920*350\",\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"240\",\"height\":\"158\"}}]}', '4');

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES ('1', 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', '1', '0', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `data_types` VALUES ('2', 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', null, '', '', '1', '0', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `data_types` VALUES ('3', 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', null, '', '', '1', '0', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `data_types` VALUES ('4', 'articles', 'articles', 'Article', 'Articles', null, 'App\\Models\\Article', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 08:49:41', '2018-06-25 08:49:41');
INSERT INTO `data_types` VALUES ('5', 'categories', 'categories', 'Category', 'Categories', null, 'App\\Models\\Category', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 08:56:19', '2018-06-25 08:56:19');
INSERT INTO `data_types` VALUES ('6', 'galleries', 'galleries', 'Gallery', 'Galleries', null, 'App\\Models\\Gallery', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:29:13', '2018-06-26 01:29:13');
INSERT INTO `data_types` VALUES ('7', 'gallery_categories', 'gallery-categories', 'Gallery Category', 'Gallery Categories', null, 'App\\Models\\GalleryCategory', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:34:23', '2018-06-26 01:34:23');
INSERT INTO `data_types` VALUES ('8', 'orders', 'orders', 'Order', 'Orders', null, 'App\\Models\\Order', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:48:20', '2018-06-26 01:48:20');
INSERT INTO `data_types` VALUES ('9', 'pages', 'pages', 'Page', 'Pages', null, 'App\\Models\\Page', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:55:44', '2018-06-26 01:55:44');
INSERT INTO `data_types` VALUES ('10', 'products', 'products', 'Product', 'Products', null, 'App\\Models\\Product', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 02:50:42', '2018-06-26 02:50:42');
INSERT INTO `data_types` VALUES ('11', 'product_categories', 'product-categories', 'Product Category', 'Product Categories', null, 'App\\Models\\ProductCategory', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 03:02:50', '2018-06-26 03:02:50');
INSERT INTO `data_types` VALUES ('12', 'tags', 'tags', 'Tag', 'Tags', null, 'App\\Models\\Tag', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 05:57:48', '2018-06-26 05:57:48');
INSERT INTO `data_types` VALUES ('13', 'gallery_tags', 'gallery-tags', 'Gallery Tag', 'Gallery Tags', null, 'App\\Models\\GalleryTag', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `data_types` VALUES ('14', 'product_tags', 'product-tags', 'Product Tag', 'Product Tags', null, 'App\\Models\\ProductTag', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 08:10:23', '2018-06-26 08:10:23');

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `galleries_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES ('1', '1', 'Gallery 1', 'gallery-1', '1', null, '<p><strong>Annealing</strong> is the process of controlled heating and cooling of a material with the objective of altering the microstructure to remove stress, or change properties such as hardness, strength or ductility. <br /><br /> The most frequent applications of annealing are in metals to remove stresses induced by cold working.<br /><br /><strong> Non-ferrous metals:</strong> mostly Al alloys, normally carried out at between 150-250&deg;C, followed by air cooling, (not quenching in a media tank). <br /><br /><strong> Ferrous metals:</strong> normally carried out at between 350-600&deg;C, followed by air cooling, (not quenching in a media tank).</p>', null, null, null, '2018-06-26 07:57:47', '2018-07-04 08:40:15');
INSERT INTO `galleries` VALUES ('2', '1', 'gallery 2', 'gallery-2', '1', null, null, null, null, null, '2018-07-04 07:30:40', '2018-07-04 07:30:40');
INSERT INTO `galleries` VALUES ('3', '1', 'gallery 3', 'gallery-3', '2', null, null, null, null, null, '2018-07-04 08:18:18', '2018-07-04 08:18:18');

-- ----------------------------
-- Table structure for gallery_categories
-- ----------------------------
DROP TABLE IF EXISTS `gallery_categories`;
CREATE TABLE `gallery_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gallery_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gallery_categories
-- ----------------------------
INSERT INTO `gallery_categories` VALUES ('1', 'heating applications', 'heating-applications', '1', '2018-06-26 03:23:43', '2018-07-04 07:11:16', 'gallery-categories/July2018/Ya60ViMlMToxotG3bLOX.jpg');
INSERT INTO `gallery_categories` VALUES ('2', 'industries', 'industries', '1', '2018-06-26 03:24:00', '2018-07-04 07:13:19', 'gallery-categories/July2018/aRkHSkhnYTbI0nNkybb4.jpg');

-- ----------------------------
-- Table structure for gallery_gallery_tag
-- ----------------------------
DROP TABLE IF EXISTS `gallery_gallery_tag`;
CREATE TABLE `gallery_gallery_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `gallery_tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gallery_gallery_tag
-- ----------------------------
INSERT INTO `gallery_gallery_tag` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for gallery_tags
-- ----------------------------
DROP TABLE IF EXISTS `gallery_tags`;
CREATE TABLE `gallery_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gallery_tags_name_unique` (`name`),
  UNIQUE KEY `gallery_tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gallery_tags
-- ----------------------------
INSERT INTO `gallery_tags` VALUES ('1', 'Gallery Tag 1', 'gallery-tag-1', 'Gallery Tag 1', '2018-06-26 07:56:23', '2018-06-26 07:56:23');
INSERT INTO `gallery_tags` VALUES ('2', 'Gallery Tag 2', 'gallery-tag-2', 'Gallery Tag 2', '2018-06-26 07:56:38', '2018-06-26 07:56:38');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
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
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES ('1', '1', 'Dashboard', '', '_self', 'voyager-boat', null, null, '1', '2018-06-25 06:49:25', '2018-06-25 06:49:25', 'voyager.dashboard', null);
INSERT INTO `menu_items` VALUES ('2', '1', 'Media', '', '_self', 'voyager-images', null, null, '4', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.media.index', null);
INSERT INTO `menu_items` VALUES ('3', '1', 'Users', '', '_self', 'voyager-person', null, null, '3', '2018-06-25 06:49:25', '2018-06-25 06:49:25', 'voyager.users.index', null);
INSERT INTO `menu_items` VALUES ('4', '1', 'Roles', '', '_self', 'voyager-lock', null, null, '2', '2018-06-25 06:49:25', '2018-06-25 06:49:25', 'voyager.roles.index', null);
INSERT INTO `menu_items` VALUES ('5', '1', 'Tools', '', '_self', 'voyager-tools', null, null, '7', '2018-06-25 06:49:25', '2018-06-27 05:27:48', null, null);
INSERT INTO `menu_items` VALUES ('6', '1', 'Menu Builder', '', '_self', 'voyager-list', null, '5', '1', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.menus.index', null);
INSERT INTO `menu_items` VALUES ('7', '1', 'Database', '', '_self', 'voyager-data', null, '5', '2', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.database.index', null);
INSERT INTO `menu_items` VALUES ('8', '1', 'Compass', '', '_self', 'voyager-compass', null, '5', '3', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.compass.index', null);
INSERT INTO `menu_items` VALUES ('9', '1', 'BREAD', '', '_self', 'voyager-bread', null, '5', '4', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.bread.index', null);
INSERT INTO `menu_items` VALUES ('10', '1', 'Settings', '', '_self', 'voyager-settings', null, null, '8', '2018-06-25 06:49:25', '2018-06-27 05:27:48', 'voyager.settings.index', null);
INSERT INTO `menu_items` VALUES ('11', '1', 'Hooks', '', '_self', 'voyager-hook', null, '5', '5', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.hooks', null);
INSERT INTO `menu_items` VALUES ('12', '1', '缓存清理', '/cache_clear', '_self', 'voyager-brush', '#000000', null, '9', '2018-06-25 08:18:13', '2018-06-27 05:27:48', null, '');
INSERT INTO `menu_items` VALUES ('13', '1', '文章', '', '_self', 'voyager-file-text', '#000000', '24', '4', '2018-06-25 08:49:43', '2018-06-27 05:26:24', 'voyager.articles.index', 'null');
INSERT INTO `menu_items` VALUES ('14', '1', '文章分类', '', '_self', 'voyager-file-text', '#000000', '24', '5', '2018-06-25 08:56:21', '2018-06-27 05:26:41', 'voyager.categories.index', 'null');
INSERT INTO `menu_items` VALUES ('15', '1', '图库或案例', '', '_self', 'voyager-images', '#000000', '24', '7', '2018-06-26 01:29:15', '2018-06-27 05:26:11', 'voyager.galleries.index', 'null');
INSERT INTO `menu_items` VALUES ('16', '1', '案例分类', '', '_self', 'voyager-images', '#000000', '24', '8', '2018-06-26 01:34:24', '2018-06-27 05:26:11', 'voyager.gallery-categories.index', 'null');
INSERT INTO `menu_items` VALUES ('17', '1', '订单/留言', '', '_self', 'voyager-heart', '#000000', null, '6', '2018-06-26 01:48:22', '2018-06-27 05:27:48', 'voyager.orders.index', 'null');
INSERT INTO `menu_items` VALUES ('18', '1', '主要页面', '', '_self', 'voyager-file-text', '#000000', '24', '10', '2018-06-26 01:55:45', '2018-06-27 05:27:21', 'voyager.pages.index', 'null');
INSERT INTO `menu_items` VALUES ('19', '1', '产品', '', '_self', 'voyager-shop', '#000000', '24', '1', '2018-06-26 02:50:43', '2018-06-27 05:22:21', 'voyager.products.index', 'null');
INSERT INTO `menu_items` VALUES ('20', '1', '产品分类', '', '_self', 'voyager-shop', '#000000', '24', '2', '2018-06-26 03:02:52', '2018-06-27 05:22:36', 'voyager.product-categories.index', 'null');
INSERT INTO `menu_items` VALUES ('21', '1', '文章标签', '', '_self', 'voyager-file-text', '#000000', '24', '6', '2018-06-26 05:57:49', '2018-06-27 05:26:57', 'voyager.tags.index', 'null');
INSERT INTO `menu_items` VALUES ('22', '1', '案例标签', '', '_self', 'voyager-images', '#000000', '24', '9', '2018-06-26 07:50:42', '2018-06-27 05:26:12', 'voyager.gallery-tags.index', 'null');
INSERT INTO `menu_items` VALUES ('23', '1', '产品标签', '', '_self', 'voyager-shop', '#000000', '24', '3', '2018-06-26 08:10:24', '2018-06-27 05:22:51', 'voyager.product-tags.index', 'null');
INSERT INTO `menu_items` VALUES ('24', '1', '发布管理', '', '_self', 'voyager-folder', '#000000', null, '5', '2018-06-27 05:21:28', '2018-06-27 05:27:36', null, '');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'admin', '2018-06-25 06:49:25', '2018-06-25 06:49:25');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_01_000000_add_voyager_user_fields', '1');
INSERT INTO `migrations` VALUES ('4', '2016_01_01_000000_create_data_types_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_05_19_173453_create_menu_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_10_21_190000_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_10_21_190000_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('8', '2016_11_30_135954_create_permission_table', '1');
INSERT INTO `migrations` VALUES ('9', '2016_11_30_141208_create_permission_role_table', '1');
INSERT INTO `migrations` VALUES ('10', '2016_12_26_201236_data_types__add__server_side', '1');
INSERT INTO `migrations` VALUES ('11', '2017_01_13_000000_add_route_to_menu_items_table', '1');
INSERT INTO `migrations` VALUES ('12', '2017_01_14_005015_create_translations_table', '1');
INSERT INTO `migrations` VALUES ('13', '2017_01_15_000000_make_table_name_nullable_in_permissions_table', '1');
INSERT INTO `migrations` VALUES ('14', '2017_03_06_000000_add_controller_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('15', '2017_04_21_000000_add_order_to_data_rows_table', '1');
INSERT INTO `migrations` VALUES ('16', '2017_07_05_210000_add_policyname_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('17', '2017_08_05_000000_add_group_to_settings_table', '1');
INSERT INTO `migrations` VALUES ('18', '2017_11_26_013050_add_user_role_relationship', '1');
INSERT INTO `migrations` VALUES ('19', '2017_11_26_015000_create_user_roles_table', '1');
INSERT INTO `migrations` VALUES ('20', '2018_03_11_000000_add_user_settings', '1');
INSERT INTO `migrations` VALUES ('21', '2018_03_14_000000_add_details_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('22', '2018_03_16_000000_make_settings_value_nullable', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clientId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Index', 'index', null, null, null, 'Index seo title', 'Index description 1', 'keyword 1 2 3', '2018-06-26 03:19:00', '2018-07-05 08:00:09');
INSERT INTO `pages` VALUES ('2', 'products', 'products', null, null, 'pages/June2018/btRFRBjZXnwZ2Sra2TeX.jpg', 'products seo title', 'products products', 'products products products', '2018-06-28 07:01:58', '2018-06-28 07:01:58');
INSERT INTO `pages` VALUES ('3', 'Contact & Service', 'contact-and-service', null, '<div id=\"c90093\" class=\"csc-default csc-space-after-20\">\r\n<div>Carbolite Gero products in the UK are distributed directly by Carbolite Gero Ltd. and in Germany directly by Carbolite Gero GmbH &amp; Co. KG. (the two manufacturing sites). In all other countries Carbolite Gero operates through&nbsp;a wide network of Verder Scientific daughter companies and fully trained distributors. <br /><br />Please choose your country from the map to find your local contact or simply fill out the contact form below. <br />We will get in touch with you right away.</div>\r\n</div>\r\n<div id=\"c91860\" class=\"csc-default\">&nbsp;</div>\r\n<div id=\"c122570\" class=\"csc-default csc-space-after-20\">\r\n<div><strong> If you have a service or spare parts request, please use our <a class=\"internal-link\" href=\"http://www.carbolite-gero.com/contact-service/service-spare-parts/\">Service &amp; Spare Parts Request</a> form for quick processing.</strong></div>\r\n</div>', 'pages/July2018/uTQS1IEuP4VdJC6fbgyt.jpg', null, null, null, '2018-07-02 09:05:55', '2018-07-02 09:05:55');
INSERT INTO `pages` VALUES ('4', 'Company History & Profile', 'company-history-and-profile', null, '<div><strong>The CARBOLITE&nbsp;GERO&nbsp;brand is synonymous with high quality, leading heat technology in the design and manufacture of laboratory and industrial ovens and furnaces ranging from 30 &deg;C to 3000 &deg;C and sold globally to over 100 countries. </strong><br /><br /> On 1st January 2016 Carbolite (UK) and Carbolite Gero (Germany) joined to become one company under the name of CARBOLITE GERO. With the combined product lines the company will strengthen its market position locally and globally. In the past, both companies gained strong, established reputations for engineering expertise in applied heating technology.<br /><br /> CARBOLITE&nbsp;GERO&nbsp;has two manufacturing and sales sites. One is based in Derbyshire, United Kingdom, where Carbolite has been manufacturing laboratory and industrial ovens and furnaces up to 1800 &deg;C since 1938; the second facility is located in Neuhausen, southern Germany, where high temperature furnaces up to 3000 &deg;C with a large variety of solutions for vacuum and other modified atmospheres have been manufactured since 1982.<br /><br /> In addition to the wide range of standard products, CARBOLITE&nbsp;GERO&nbsp;is an expert in the development of customized equipment for complex heat treatment processes. Solving customers&rsquo; individual application requirements has given Carbolite Gero an important place in aerospace, engineering, materials science, medical, bioscience and contract testing laboratories globally to name a few. <br /><br />Not only can CARBOLITE GERO&nbsp;supply products with Standards-compliant furnace and oven designs (eg, Nadcap heat treatment processes (AMS2750E)), but also fully traceable certification for control, measurement, recording and data acquisition devices, issued by an independent UKAS accredited laboratory.</div>', 'pages/July2018/DjuVmB67e1LZFfu3lWF5.jpg', null, null, null, '2018-07-04 01:18:33', '2018-07-04 01:18:33');
INSERT INTO `pages` VALUES ('5', 'Contact form successfully completed', 'contact-form-successfully-completed', null, '<p><strong>Thank you for your enquiry!</strong></p>\r\n<p>Your email has been successfully sent and will be processed as quickly as possible.</p>', 'pages/July2018/uY1z9B25aaQ9qRPbCGFB.jpg', 'Contact form successfully completed', 'Contact form successfully completed', null, '2018-07-04 01:33:09', '2018-07-04 01:33:34');
INSERT INTO `pages` VALUES ('6', 'News', 'news', null, null, 'pages/July2018/JaaVk4W1OmY4NTeyQL42.jpg', null, null, null, '2018-07-04 01:50:59', '2018-07-04 01:50:59');
INSERT INTO `pages` VALUES ('7', 'Applications', 'applications', 'Heat treatment applications up to 3000°C', '<p>Carbolite Gero laboratory and industrial furnaces are suitable for a wide range of different heat treatment applications. Out of our more than 400 standard models, numerous options and our database of customised solutions we have realised in the past, we are able to find the suitable product for you. Contact us for a consultation!&nbsp;</p>\r\n<p>Below you find some examples of heat treatment applications possible with our furnaces, products for specific industries as well as selected application reports.</p>', null, null, null, null, '2018-07-04 07:19:19', '2018-07-04 07:19:19');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '1');
INSERT INTO `permission_role` VALUES ('1', '2');
INSERT INTO `permission_role` VALUES ('2', '1');
INSERT INTO `permission_role` VALUES ('3', '1');
INSERT INTO `permission_role` VALUES ('4', '1');
INSERT INTO `permission_role` VALUES ('5', '1');
INSERT INTO `permission_role` VALUES ('6', '1');
INSERT INTO `permission_role` VALUES ('7', '1');
INSERT INTO `permission_role` VALUES ('8', '1');
INSERT INTO `permission_role` VALUES ('9', '1');
INSERT INTO `permission_role` VALUES ('10', '1');
INSERT INTO `permission_role` VALUES ('11', '1');
INSERT INTO `permission_role` VALUES ('12', '1');
INSERT INTO `permission_role` VALUES ('13', '1');
INSERT INTO `permission_role` VALUES ('14', '1');
INSERT INTO `permission_role` VALUES ('15', '1');
INSERT INTO `permission_role` VALUES ('16', '1');
INSERT INTO `permission_role` VALUES ('17', '1');
INSERT INTO `permission_role` VALUES ('18', '1');
INSERT INTO `permission_role` VALUES ('19', '1');
INSERT INTO `permission_role` VALUES ('20', '1');
INSERT INTO `permission_role` VALUES ('21', '1');
INSERT INTO `permission_role` VALUES ('21', '2');
INSERT INTO `permission_role` VALUES ('22', '1');
INSERT INTO `permission_role` VALUES ('22', '2');
INSERT INTO `permission_role` VALUES ('23', '1');
INSERT INTO `permission_role` VALUES ('23', '2');
INSERT INTO `permission_role` VALUES ('24', '1');
INSERT INTO `permission_role` VALUES ('25', '1');
INSERT INTO `permission_role` VALUES ('26', '1');
INSERT INTO `permission_role` VALUES ('27', '1');
INSERT INTO `permission_role` VALUES ('27', '2');
INSERT INTO `permission_role` VALUES ('28', '1');
INSERT INTO `permission_role` VALUES ('28', '2');
INSERT INTO `permission_role` VALUES ('29', '1');
INSERT INTO `permission_role` VALUES ('29', '2');
INSERT INTO `permission_role` VALUES ('30', '1');
INSERT INTO `permission_role` VALUES ('30', '2');
INSERT INTO `permission_role` VALUES ('31', '1');
INSERT INTO `permission_role` VALUES ('31', '2');
INSERT INTO `permission_role` VALUES ('32', '1');
INSERT INTO `permission_role` VALUES ('32', '2');
INSERT INTO `permission_role` VALUES ('33', '1');
INSERT INTO `permission_role` VALUES ('33', '2');
INSERT INTO `permission_role` VALUES ('34', '1');
INSERT INTO `permission_role` VALUES ('34', '2');
INSERT INTO `permission_role` VALUES ('35', '1');
INSERT INTO `permission_role` VALUES ('35', '2');
INSERT INTO `permission_role` VALUES ('36', '1');
INSERT INTO `permission_role` VALUES ('36', '2');
INSERT INTO `permission_role` VALUES ('37', '1');
INSERT INTO `permission_role` VALUES ('37', '2');
INSERT INTO `permission_role` VALUES ('38', '1');
INSERT INTO `permission_role` VALUES ('38', '2');
INSERT INTO `permission_role` VALUES ('39', '1');
INSERT INTO `permission_role` VALUES ('39', '2');
INSERT INTO `permission_role` VALUES ('40', '1');
INSERT INTO `permission_role` VALUES ('40', '2');
INSERT INTO `permission_role` VALUES ('41', '1');
INSERT INTO `permission_role` VALUES ('41', '2');
INSERT INTO `permission_role` VALUES ('42', '1');
INSERT INTO `permission_role` VALUES ('42', '2');
INSERT INTO `permission_role` VALUES ('43', '1');
INSERT INTO `permission_role` VALUES ('43', '2');
INSERT INTO `permission_role` VALUES ('44', '1');
INSERT INTO `permission_role` VALUES ('44', '2');
INSERT INTO `permission_role` VALUES ('45', '1');
INSERT INTO `permission_role` VALUES ('45', '2');
INSERT INTO `permission_role` VALUES ('46', '1');
INSERT INTO `permission_role` VALUES ('46', '2');
INSERT INTO `permission_role` VALUES ('47', '1');
INSERT INTO `permission_role` VALUES ('47', '2');
INSERT INTO `permission_role` VALUES ('48', '1');
INSERT INTO `permission_role` VALUES ('48', '2');
INSERT INTO `permission_role` VALUES ('49', '1');
INSERT INTO `permission_role` VALUES ('50', '1');
INSERT INTO `permission_role` VALUES ('51', '1');
INSERT INTO `permission_role` VALUES ('52', '1');
INSERT INTO `permission_role` VALUES ('52', '2');
INSERT INTO `permission_role` VALUES ('53', '1');
INSERT INTO `permission_role` VALUES ('53', '2');
INSERT INTO `permission_role` VALUES ('54', '1');
INSERT INTO `permission_role` VALUES ('54', '2');
INSERT INTO `permission_role` VALUES ('55', '1');
INSERT INTO `permission_role` VALUES ('56', '1');
INSERT INTO `permission_role` VALUES ('57', '1');
INSERT INTO `permission_role` VALUES ('57', '2');
INSERT INTO `permission_role` VALUES ('58', '1');
INSERT INTO `permission_role` VALUES ('58', '2');
INSERT INTO `permission_role` VALUES ('59', '1');
INSERT INTO `permission_role` VALUES ('59', '2');
INSERT INTO `permission_role` VALUES ('60', '1');
INSERT INTO `permission_role` VALUES ('60', '2');
INSERT INTO `permission_role` VALUES ('61', '1');
INSERT INTO `permission_role` VALUES ('61', '2');
INSERT INTO `permission_role` VALUES ('62', '1');
INSERT INTO `permission_role` VALUES ('62', '2');
INSERT INTO `permission_role` VALUES ('63', '1');
INSERT INTO `permission_role` VALUES ('63', '2');
INSERT INTO `permission_role` VALUES ('64', '1');
INSERT INTO `permission_role` VALUES ('64', '2');
INSERT INTO `permission_role` VALUES ('65', '1');
INSERT INTO `permission_role` VALUES ('65', '2');
INSERT INTO `permission_role` VALUES ('66', '1');
INSERT INTO `permission_role` VALUES ('66', '2');
INSERT INTO `permission_role` VALUES ('67', '1');
INSERT INTO `permission_role` VALUES ('68', '1');
INSERT INTO `permission_role` VALUES ('69', '1');
INSERT INTO `permission_role` VALUES ('70', '1');
INSERT INTO `permission_role` VALUES ('71', '1');
INSERT INTO `permission_role` VALUES ('72', '1');
INSERT INTO `permission_role` VALUES ('73', '1');
INSERT INTO `permission_role` VALUES ('74', '1');
INSERT INTO `permission_role` VALUES ('75', '1');
INSERT INTO `permission_role` VALUES ('76', '1');
INSERT INTO `permission_role` VALUES ('77', '1');
INSERT INTO `permission_role` VALUES ('78', '1');
INSERT INTO `permission_role` VALUES ('79', '1');
INSERT INTO `permission_role` VALUES ('80', '1');
INSERT INTO `permission_role` VALUES ('81', '1');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'browse_admin', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('2', 'browse_bread', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('3', 'browse_database', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('4', 'browse_media', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('5', 'browse_compass', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('6', 'browse_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('7', 'read_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('8', 'edit_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('9', 'add_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('10', 'delete_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('11', 'browse_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('12', 'read_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('13', 'edit_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('14', 'add_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('15', 'delete_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('16', 'browse_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('17', 'read_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('18', 'edit_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('19', 'add_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('20', 'delete_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('21', 'browse_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('22', 'read_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('23', 'edit_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('24', 'add_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('25', 'delete_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('26', 'browse_hooks', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('27', 'browse_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('28', 'read_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('29', 'edit_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('30', 'add_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('31', 'delete_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('32', 'browse_categories', 'categories', '2018-06-25 08:56:20', '2018-06-25 08:56:20');
INSERT INTO `permissions` VALUES ('33', 'read_categories', 'categories', '2018-06-25 08:56:20', '2018-06-25 08:56:20');
INSERT INTO `permissions` VALUES ('34', 'edit_categories', 'categories', '2018-06-25 08:56:21', '2018-06-25 08:56:21');
INSERT INTO `permissions` VALUES ('35', 'add_categories', 'categories', '2018-06-25 08:56:21', '2018-06-25 08:56:21');
INSERT INTO `permissions` VALUES ('36', 'delete_categories', 'categories', '2018-06-25 08:56:21', '2018-06-25 08:56:21');
INSERT INTO `permissions` VALUES ('37', 'browse_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('38', 'read_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('39', 'edit_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('40', 'add_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('41', 'delete_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('42', 'browse_gallery_categories', 'gallery_categories', '2018-06-26 01:34:23', '2018-06-26 01:34:23');
INSERT INTO `permissions` VALUES ('43', 'read_gallery_categories', 'gallery_categories', '2018-06-26 01:34:23', '2018-06-26 01:34:23');
INSERT INTO `permissions` VALUES ('44', 'edit_gallery_categories', 'gallery_categories', '2018-06-26 01:34:23', '2018-06-26 01:34:23');
INSERT INTO `permissions` VALUES ('45', 'add_gallery_categories', 'gallery_categories', '2018-06-26 01:34:24', '2018-06-26 01:34:24');
INSERT INTO `permissions` VALUES ('46', 'delete_gallery_categories', 'gallery_categories', '2018-06-26 01:34:24', '2018-06-26 01:34:24');
INSERT INTO `permissions` VALUES ('47', 'browse_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21');
INSERT INTO `permissions` VALUES ('48', 'read_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21');
INSERT INTO `permissions` VALUES ('49', 'edit_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21');
INSERT INTO `permissions` VALUES ('50', 'add_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21');
INSERT INTO `permissions` VALUES ('51', 'delete_orders', 'orders', '2018-06-26 01:48:22', '2018-06-26 01:48:22');
INSERT INTO `permissions` VALUES ('52', 'browse_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('53', 'read_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('54', 'edit_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('55', 'add_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('56', 'delete_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('57', 'browse_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('58', 'read_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('59', 'edit_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('60', 'add_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('61', 'delete_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('62', 'browse_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('63', 'read_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('64', 'edit_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('65', 'add_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('66', 'delete_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('67', 'browse_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('68', 'read_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('69', 'edit_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('70', 'add_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('71', 'delete_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('72', 'browse_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('73', 'read_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('74', 'edit_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('75', 'add_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('76', 'delete_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('77', 'browse_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');
INSERT INTO `permissions` VALUES ('78', 'read_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');
INSERT INTO `permissions` VALUES ('79', 'edit_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');
INSERT INTO `permissions` VALUES ('80', 'add_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');
INSERT INTO `permissions` VALUES ('81', 'delete_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `order` tinyint(3) unsigned DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
INSERT INTO `product_categories` VALUES ('1', null, 'category 1', 'category-1', 'product-categories/June2018/gtnj77CfPzlnTjYEwEZI.jpg', '1', 'Carbolite Gero stocks a range of laboratory ovens for routine lab applications.  <br>\r\n\r\nThe laboratory oven models are ideal for general laboratory work and routine heat applications. They all provide excellent temperature uniformity and comply with safety standard BS EN 61010-2-010:2003.  <br>\r\n\r\nEach laboratory oven may be equipped with a number of options to meet customer requirements. This includes, for example, over-temperature protection, individual shelves and runners for different lab applications, digital timers or more advanced laboratory oven temperature control and programmer systems.', null, null, null, '2018-06-26 03:09:56', '2018-06-28 06:09:42', 'Max. temp. up to 750°C');
INSERT INTO `product_categories` VALUES ('2', null, 'category 2', 'category-2', 'product-categories/June2018/mQ8YPLZeEdHe5ro7XZuC.jpg', '1', 'category excerpt', null, null, null, '2018-06-26 03:11:00', '2018-07-02 03:02:42', 'Max. temp. up to 750°C');
INSERT INTO `product_categories` VALUES ('3', '1', 'category_1_1', 'category-1-1', 'product-categories/July2018/XgukzB4IULXnIpPcHh9C.jpg', '1', null, null, null, null, '2018-07-02 02:55:41', '2018-07-02 02:55:41', null);
INSERT INTO `product_categories` VALUES ('4', '1', 'category_1_2', 'category-1-2', 'product-categories/July2018/uq69LLmkS1331C0Y6utd.jpg', '1', null, null, null, null, '2018-07-02 02:56:11', '2018-07-02 02:56:11', null);

-- ----------------------------
-- Table structure for product_product_tag
-- ----------------------------
DROP TABLE IF EXISTS `product_product_tag`;
CREATE TABLE `product_product_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_product_tag
-- ----------------------------
INSERT INTO `product_product_tag` VALUES ('1', '1', '1');
INSERT INTO `product_product_tag` VALUES ('2', '2', '1');

-- ----------------------------
-- Table structure for product_tags
-- ----------------------------
DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE `product_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_tags_name_unique` (`name`),
  UNIQUE KEY `product_tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_tags
-- ----------------------------
INSERT INTO `product_tags` VALUES ('1', 'Product Tag 1', 'product-tag-1', '<p>Carbolite Gero&rsquo;s 80 years of experience and reputation for quality and reliability are invaluable in the aerospace industry. Furnaces and ovens from Carbolite Gero are the first choice for many of the aerospace industry&rsquo;s most respected companies for the heat treatment of aircraft components.&nbsp;</p>\r\n<p>Equipment is available for both initial manufacture and MRO (maintenance, repair and overhaul) to AMS 2750E within a Nadcap environment. Carbolite Gero products are already widely used by leading aerospace manufacturers and as a result we are able to offer excellent references.</p>', '2018-06-26 08:11:55', '2018-07-04 09:15:12', 'product-tags/July2018/SSdH9P7ikkZDZJIyKktl.jpg');
INSERT INTO `product_tags` VALUES ('2', 'Product Tag 2', 'product-tag-2', null, '2018-06-26 08:12:11', '2018-06-26 08:12:11', null);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `images` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  UNIQUE KEY `products_product_code_unique` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '3', 'products 1', 'products-1', '0', '1', 'p-1', '100', 'products/June2018/6uD9mlHahkZzxhKxR0bV.jpg', '<li>Max temp: 300 °C</li> <li>Min temp: Ambient +30°C</li> <li>Volume: 27 to 215  litres</li>', '<p><strong>The Graphite Furnace HTK GR operates with rough/fine vacuum, protective gases such as Nitrogen/Argon, and reactive gases like Hydrogen and Carbon Monoxide. The Graphite Furnace HTK GR cannot operate in an Oxygen atmosphere due to the Graphite insulation. </strong><br /><br /> The rectangular design with a front door allows for easy loading and unloading. The HTK GR range is available in up to six different sizes. The smallest designs with a capacity of 8 litres and 25 litres are typically employed by laboratories for research and development. The 80 litre, 220 litre, 400 litre or 600 litre furnaces are predominantly used as pilot manufacturing systems or large scale production. <br /><br /> The HTK GR is based on Graphite insulation material, as well as graphite heating elements. With maximum temperatures up to 2200 &deg;C, the HTK GR is suited for extreme heat treatment needs. Upon request, the system can be equipped with a Graphite retort that is capable of a defined gas guiding flow within the unit and improves temperature uniformity to &lt; &plusmn; 10 &deg;C. For processes with strong outgassing, the retort protects the heating elements and increases the lifetime of the furnace.</p>\r\n<h2>Application Examples</h2>\r\n<p>graphiting, pyrolysis, siliconization, sintering, technical ceramics</p>\r\n<h2>Standard features</h2>\r\n<ul>\r\n<li>Graphite furnace, offering the highest possible temperatures</li>\r\n<li>Hydrogen partial pressure operation if requested</li>\r\n<li>Precisely controlled vacuum pumping speeds appropriate for powders</li>\r\n<li>Data recording for quality management</li>\r\n</ul>\r\n<h2 id=\"functionPrinciple\">Technical details</h2>\r\n<p><br /><strong>View inside of the HTK Graphite Furnace</strong></p>\r\n<ol>\r\n<li>frame</li>\r\n<li>water cooled vessel</li>\r\n<li>heating cassette</li>\r\n<li>groove for the sealing</li>\r\n<li>front door</li>\r\n<li>graphite insulation</li>\r\n</ol>\r\n<p><br /> Inside the chamber, heating elements are positioned at the bottom, left, right, and top sides of the furnace chamber allowing for improved temperature uniformity. For larger volumes, the back wall and front are equipped with heating elements to maintain excellent temperature uniformity. The HTK W, HTK MO, HTK GR and HTK KE furnaces are surrounded by a water cooled vessel; thus classifying, the HTK systems as a cold wall furnace. The cooling water is guided through the double walled vessel. <br /><br /> Upon request, the HTK GR can be operated up to 3000 &deg;C. For operation at 3000 &deg;C, the furnace is specially designed with a specific isolation thickness, optimal positioning of the heating elements, and a pyrometer for temperature measurement and control. The pyrometer directly measures the heat radiation by optical methods via a window inside the furnace and is not directly inserted into the furnace. <br /><br /> This measurement principle only works if a sufficient amount of radiation is emitted. The needed radiation is only generated at temperatures exceeding 400 &deg;C. For lower temperatures, a sliding thermocouple is used to control the lower temperatures. <br /><br /> Because of the increasing vapor pressure of graphite, 3000 &deg;C operation is only possible under inert gas atmosphere. Additionally, the high vapor pressure also results in carbon being released to the atmosphere. For carbon sensitive samples, a <a class=\"internal-link\" href=\"http://www.carbolite-gero.com/\">metallic furnace high temperature furnace</a> must be used.</p>\r\n<p><small>Content may be subject to modifications or corrections1</small></p>', '<h2>AX30</h2>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Max temp (&deg;C)</td>\r\n<td>250</td>\r\n</tr>\r\n<tr>\r\n<td>Min temp (&deg;C)</td>\r\n<td>Ambient +30</td>\r\n</tr>\r\n<tr>\r\n<td>Temp uniformity (&deg;C)</td>\r\n<td>&plusmn;5.0 @ 250&deg;C</td>\r\n</tr>\r\n<tr>\r\n<td>Heat-up time (mins)</td>\r\n<td>23</td>\r\n</tr>\r\n<tr>\r\n<td>Recovery time (mins)</td>\r\n<td>3</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />Internal H x W x D (mm)</td>\r\n<td>295 x 300 x 320</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />External H x W x D (mm)</td>\r\n<td>440 x 590 x 465</td>\r\n</tr>\r\n<tr>\r\n<td>Shelves fitted / accepted</td>\r\n<td>2 / 4</td>\r\n</tr>\r\n<tr>\r\n<td>Shelf loading each / total (kg)</td>\r\n<td>10 / 20</td>\r\n</tr>\r\n<tr>\r\n<td>Volume (litres)</td>\r\n<td>28</td>\r\n</tr>\r\n<tr>\r\n<td>Air changes / hr</td>\r\n<td>65</td>\r\n</tr>\r\n<tr>\r\n<td>Max power (W)</td>\r\n<td>1000</td>\r\n</tr>\r\n<tr>\r\n<td>Holding power (W)</td>\r\n<td>342</td>\r\n</tr>\r\n<tr>\r\n<td>Weight (kg)</td>\r\n<td>24</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>AX60</h2>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Max temp (&deg;C)</td>\r\n<td>250</td>\r\n</tr>\r\n<tr>\r\n<td>Min temp (&deg;C)</td>\r\n<td>Ambient +30</td>\r\n</tr>\r\n<tr>\r\n<td>Temp uniformity (&deg;C)</td>\r\n<td>&plusmn;5.0 @ 250&deg;C</td>\r\n</tr>\r\n<tr>\r\n<td>Heat-up time (mins)</td>\r\n<td>25</td>\r\n</tr>\r\n<tr>\r\n<td>Recovery time (mins)</td>\r\n<td>3</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />Internal H x W x D (mm)</td>\r\n<td>395 x 400 x 420</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />External H x W x D (mm)</td>\r\n<td>540 x 690 x 565</td>\r\n</tr>\r\n<tr>\r\n<td>Shelves fitted / accepted</td>\r\n<td>2 / 6</td>\r\n</tr>\r\n<tr>\r\n<td>Shelf loading each / total (kg)</td>\r\n<td>10 / 30</td>\r\n</tr>\r\n<tr>\r\n<td>Volume (litres)</td>\r\n<td>66</td>\r\n</tr>\r\n<tr>\r\n<td>Air changes / hr</td>\r\n<td>28</td>\r\n</tr>\r\n<tr>\r\n<td>Max power (W)</td>\r\n<td>1500</td>\r\n</tr>\r\n<tr>\r\n<td>Holding power (W)</td>\r\n<td>465</td>\r\n</tr>\r\n<tr>\r\n<td>Weight (kg)</td>\r\n<td>37</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>AX120</h2>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Max temp (&deg;C)</td>\r\n<td>250</td>\r\n</tr>\r\n<tr>\r\n<td>Min temp (&deg;C)</td>\r\n<td>Ambient +30</td>\r\n</tr>\r\n<tr>\r\n<td>Temp uniformity (&deg;C)</td>\r\n<td>&plusmn;5.0 @ 250</td>\r\n</tr>\r\n<tr>\r\n<td>Heat-up time (mins)</td>\r\n<td>26</td>\r\n</tr>\r\n<tr>\r\n<td>Recovery time (mins)</td>\r\n<td>3</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />Internal H x W x D (mm)</td>\r\n<td>495 x 500 x 520</td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions:<br />External H x W x D (mm)</td>\r\n<td>640 x 790 x 665</td>\r\n</tr>\r\n<tr>\r\n<td>Shelves fitted / accepted</td>\r\n<td>2 / 8</td>\r\n</tr>\r\n<tr>\r\n<td>Shelf loading each / total (kg)</td>\r\n<td>10 / 40</td>\r\n</tr>\r\n<tr>\r\n<td>Volume (litres)</td>\r\n<td>128</td>\r\n</tr>\r\n<tr>\r\n<td>Air changes / hr</td>\r\n<td>14</td>\r\n</tr>\r\n<tr>\r\n<td>Max power (W)</td>\r\n<td>2000</td>\r\n</tr>\r\n<tr>\r\n<td>Holding power (W)</td>\r\n<td>622</td>\r\n</tr>\r\n<tr>\r\n<td>Weight (kg)</td>\r\n<td>55</td>\r\n</tr>\r\n</tbody>\r\n</table>', null, null, null, '2018-06-26 03:16:00', '2018-07-04 06:34:45', '[\"products\\/June2018\\/RUoLtDsm5377RK715SrT.jpg\",\"products\\/June2018\\/Bs9SIMs1Y8SKL92CBhZm.jpg\"]');
INSERT INTO `products` VALUES ('2', '3', 'product 2', 'product-1', '1', '1', '11', '100', 'products/June2018/5Y8pdSYBogL9nlzaJFGe.jpg', '<li>Max temp: 300 °C</li> <li>Min temp: Ambient +30°C</li> <li>Volume: 27 to 215  litres</li>', null, null, null, null, null, '2018-06-26 03:26:00', '2018-07-06 07:29:26', null);
INSERT INTO `products` VALUES ('3', '3', 'product 3', 'product-3', '0', '1', 'p3', '20', null, null, null, null, null, null, null, '2018-07-06 06:39:14', '2018-07-06 06:39:14', null);
INSERT INTO `products` VALUES ('4', '3', 'product 4', 'product-4', '0', '1', 'p4', '222', null, null, null, null, null, null, null, '2018-07-06 06:39:38', '2018-07-06 06:39:38', null);
INSERT INTO `products` VALUES ('5', '3', 'product 5', 'product-5', '0', '1', 'p5', '52', null, null, null, null, null, null, null, '2018-07-06 06:40:23', '2018-07-06 06:40:23', null);
INSERT INTO `products` VALUES ('6', '3', 'product 6', 'product-6', '0', '1', 'p6', '56', null, null, null, null, null, null, null, '2018-07-06 06:40:58', '2018-07-06 06:40:58', null);
INSERT INTO `products` VALUES ('7', '3', 'product 7', 'product-7', '0', '1', 'p7', '63', null, null, null, null, null, null, null, '2018-07-06 06:41:27', '2018-07-06 06:41:27', null);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', 'Administrator', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `roles` VALUES ('2', 'Editors', 'Editors', '2018-06-25 06:49:25', '2018-06-26 05:32:53');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'site.title', 'Site Title', 'Site Title', '', 'text', '1', 'Site');
INSERT INTO `settings` VALUES ('2', 'site.description', 'Site Description', 'Site Description', '', 'text', '2', 'Site');
INSERT INTO `settings` VALUES ('3', 'site.logo', 'Site Logo', 'settings/July2018/apFeaiJAoIBwNQPVWAfm.png', '', 'image', '3', 'Site');
INSERT INTO `settings` VALUES ('4', 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', null, '', 'text', '4', 'Site');
INSERT INTO `settings` VALUES ('5', 'admin.bg_image', 'Admin Background Image', '', '', 'image', '5', 'Admin');
INSERT INTO `settings` VALUES ('6', 'admin.title', 'Admin Title', 'Voyager', '', 'text', '1', 'Admin');
INSERT INTO `settings` VALUES ('7', 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel1', '', 'text', '2', 'Admin');
INSERT INTO `settings` VALUES ('8', 'admin.loader', 'Admin Loader', '', '', 'image', '3', 'Admin');
INSERT INTO `settings` VALUES ('9', 'admin.icon_image', 'Admin Icon Image', '', '', 'image', '4', 'Admin');
INSERT INTO `settings` VALUES ('10', 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', null, '', 'text', '1', 'Admin');
INSERT INTO `settings` VALUES ('11', 'banner.banner_1_title', 'banner 1 title', 'I am Banner 1 <br> huanghang', null, 'text', '6', 'banner');
INSERT INTO `settings` VALUES ('12', 'banner.banner_1_excerpt', 'banner 1 excerpt', 'Oven and furnace systems designed for full <br>AMS2750E and CQI-9 compliance', null, 'text', '7', 'banner');
INSERT INTO `settings` VALUES ('13', 'banner.banner_1_image', 'banner 1 image', 'settings/June2018/4xW553QPaa4nvnn6ReET.jpg', null, 'image', '8', 'banner');
INSERT INTO `settings` VALUES ('14', 'banner.banner_2_title', 'banner 2 title', 'banner 2 2 2', null, 'text', '9', 'banner');
INSERT INTO `settings` VALUES ('15', 'banner.banner_2_excerpt', 'banner 2 excerpt', '<br> banner 2 2 2 excerpt', null, 'text', '10', 'banner');
INSERT INTO `settings` VALUES ('17', 'banner.banner_2_image', 'banner 2 image', 'settings/June2018/Us1Bw23Fdin2tDJHKCMB.jpg', null, 'image', '11', 'banner');
INSERT INTO `settings` VALUES ('18', 'banner.banner_3_title', 'banner 3 title', 'banner 3 title', null, 'text', '12', 'banner');
INSERT INTO `settings` VALUES ('19', 'banner.banner_3_excerpt', 'banner 3 excerpt', '<br> banner 3 excerpt', null, 'text', '13', 'banner');
INSERT INTO `settings` VALUES ('20', 'banner.banner_3_image', 'banner 3 image', 'settings/June2018/IlTr4pWted6aVeiFPvqu.jpg', null, 'image', '14', 'banner');
INSERT INTO `settings` VALUES ('21', 'index.about_us_title', 'About Us Title', 'GG - laboratory & industrial furnaces up to 3000°C', null, 'text', '15', 'index');
INSERT INTO `settings` VALUES ('22', 'index.about_us_excerpt', 'About Us Excerpt', 'CG is a leading manufacturer of high temperature furnaces and ovens from 30°C to 3000°C with a focus on vacuum and special atmosphere technology. With more than 80 years of experience in thermal engineering our products are used in research laboratories, pilot plants and manufacturing sites worldwide.', null, 'text_area', '16', 'index');
INSERT INTO `settings` VALUES ('23', 'index.footer_left_content', 'footer left content', '<b>Carbolite Gero Limited</b><br> Parsons Lane, Hope, <br> Hope Valley, S33 6RB, UK<br> Tel: +44 (0)\r\n                1433 620011<br> <a href=\"mailto:info@carbolite-gero.com\" class=\"mail\"\r\n                                   alt=\"Opens window for sending email\">info@carbolite-gero.com</a>', null, 'text_area', '17', 'index');
INSERT INTO `settings` VALUES ('24', 'index.footer_content_title', 'footer content title', 'Verder Scientific - Science for Solids', null, 'text', '18', 'index');
INSERT INTO `settings` VALUES ('25', 'index.footer_content_excerpt', 'footer_content_excerpt', 'The Scientific Division of the family owned VERDER Group sets standards in high-tech equipment for\r\n                    quality control, research and development of solid matter. The fields of activity cover sample\r\n                    preparation of solids as well as analyzing technologies. <br><br> Our well-known brands have served\r\n                    research institutions, analytical laboratories as well as manufacturing companies in quality control\r\n                    and\r\n                    process applications for many decades with ever more sophisticated and reliable products which offer\r\n                    the\r\n                    solution to their individual task.', null, 'text_area', '19', 'index');
INSERT INTO `settings` VALUES ('26', 'index.footer_content_image', 'footer_content_image', 'settings/June2018/Cm2x0F4z3QC9S5c03AWh.jpg', null, 'image', '20', 'index');
INSERT INTO `settings` VALUES ('27', 'index.footer_content_url', 'footer_content_url', '/', null, 'text', '21', 'index');
INSERT INTO `settings` VALUES ('28', 'news.newsletter_registration', 'Newsletter Registration', 'settings/July2018/GwIz7SBPcINWcLzGhkQc.jpg', null, 'image', '22', 'news');
INSERT INTO `settings` VALUES ('29', 'product.note', 'Note', '<p><strong>Please note:</strong><br /> <small>- Uniformity is measured in an empty chamber with vents closed, after a stabilisation period<br />- Shelf loadings are based on evenly distributed weight<br />- Maximum power and heat up times based on a 240V supply<br />- The uniform volume is smaller than the total chamber volume<br />- Minimum operating temperature is ambient +30&deg;C </small></p>\r\n<p><small>Content may be subject to modifications or corrections</small></p>', null, 'rich_text_box', '23', 'product');
INSERT INTO `settings` VALUES ('30', 'product.tags', 'Product Tags Image', 'settings/July2018/cFAsbYhtItxLEVHdtnuQ.jpg', null, 'image', '24', 'product');
INSERT INTO `settings` VALUES ('33', 'site.favicon', 'favicon', 'settings/July2018/5ur8baTTmujGmwQCwJ2n.png', null, 'image', '25', 'Site');
INSERT INTO `settings` VALUES ('34', 'indexnews.title_1', '标题 1', '1111111111111', null, 'text', '26', 'indexNews');
INSERT INTO `settings` VALUES ('35', 'indexnews.url_1', '链接 1', '/', null, 'text', '27', 'indexNews');
INSERT INTO `settings` VALUES ('36', 'indexnews.image_1', '图片 1 (300*200)', 'settings/July2018/yEz5izxVSZ4hSwe3ibdN.jpg', null, 'image', '28', 'indexNews');
INSERT INTO `settings` VALUES ('37', 'indexnews.title_2', '标题 2', '2222222222222', null, 'text', '29', 'indexNews');
INSERT INTO `settings` VALUES ('40', 'indexnews.url_2', '链接 2', '/', null, 'text', '30', 'indexNews');
INSERT INTO `settings` VALUES ('41', 'indexnews.image_2', '图片 2 (300*200)', 'settings/July2018/Nyu9Eaapgw6qIcZW2VC5.jpg', null, 'image', '31', 'indexNews');
INSERT INTO `settings` VALUES ('42', 'indexnews.title_3', '标题 3', '333333333333333333333333333333 <br>33333333333333333333', null, 'text', '32', 'indexNews');
INSERT INTO `settings` VALUES ('43', 'indexnews.url_3', '链接 3', '/', null, 'text', '33', 'indexNews');
INSERT INTO `settings` VALUES ('44', 'indexnews.image_3', '图片 3 (300*200)', 'settings/July2018/XTBgm1ZjTnSiEawuxXdx.jpg', null, 'image', '34', 'indexNews');
INSERT INTO `settings` VALUES ('45', 'indexnews.title_4', '标题 4', '44444444444444444444444444 <br> 44444444444444444444444444444', null, 'text', '35', 'indexNews');
INSERT INTO `settings` VALUES ('46', 'indexnews.url_4', '链接 4', '/', null, 'text', '36', 'indexNews');
INSERT INTO `settings` VALUES ('47', 'indexnews.image_4', '图片 4', 'settings/July2018/416mYOWAo4JeK6xBxCBn.jpg', null, 'image', '37', 'indexNews');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'tag 1', 'tag 1 tag 1', '2018-06-26 06:04:43', '2018-06-26 06:04:43', 'tag-1');
INSERT INTO `tags` VALUES ('2', 'tag 2', 'tag 2 tag 2', '2018-06-26 06:04:58', '2018-06-26 06:04:58', 'tag-2');
INSERT INTO `tags` VALUES ('3', 'tag 3', 'tag 3 tag 3', '2018-06-26 06:05:15', '2018-06-26 06:05:15', 'tag-3');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'chaos', 'chaos29092@gmail.com', 'users/June2018/V9TR4wa2PcmqvZsPGfo3.jpg', '$2y$10$RcPyBnrElDyjxxAgX6C9XONCyA.Ql147EK35QKhCMkoE8/oCw6xI6', 'RtoNhiyFHJIqIi5Hmz7zOeoXlNvXavHqZCAFDPlK2V5UNM5rS0NzQvrjmCsu', '{\"locale\":\"en\"}', '2018-06-25 06:51:25', '2018-06-25 08:10:01');
INSERT INTO `users` VALUES ('2', '2', 'editor', 'editor@email.com', 'users/June2018/rlYXTKUjEOiH9hQWdAhE.jpg', '$2y$10$RIoP6CgjR8hVpZauVKNFU.0XT/H2LwS284f0y3ngX/GfcOaTXoniC', null, '{\"locale\":\"en\"}', '2018-06-26 05:47:32', '2018-06-26 05:47:32');
