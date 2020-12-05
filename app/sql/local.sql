-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-11-23 20:57:02','2020-11-23 20:57:02','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://glozzom.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://glozzom.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Glozzom','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"services/?$\";s:27:\"index.php?post_type=service\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=service&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:35:\"crop-thumbnails/crop-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','glozzom','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','glozzom','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','9','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','7','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1621717021','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:6:{i:1607201822;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607201824;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607202012;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607202013;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607461023;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','|uW=5r-O2-`?r]EiH7]e2l:?)H9a,355R:{eLiv)g@b5w+QfJV;-?wk(ID({?H-,','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','v?JwE-LYnQ;/G}[}M+jT-gVwG9}lb815ViUuw#1YdO8j k$Iqh}gZP`ry]EFRRyj','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (118,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1607188582;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1606247926;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (142,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (145,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (160,'current_theme','Glozzom','yes');
INSERT INTO `wp_options` VALUES (161,'theme_mods_glozzom','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (162,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (163,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607188585;s:7:\"checked\";a:1:{s:7:\"glozzom\";s:3:\"0.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (167,'_transient_health-check-site-status-result','{\"good\":\"10\",\"recommended\":\"9\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (172,'recently_activated','a:2:{s:61:\"image-regenerate-select-crop/image-regenerate-select-crop.php\";i:1606343667;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:1606343592;}','yes');
INSERT INTO `wp_options` VALUES (179,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (184,'recovery_mode_email_last_sent','1606256142','yes');
INSERT INTO `wp_options` VALUES (214,'_transient_sirsc-plugin-notice_adons_notice','1','yes');
INSERT INTO `wp_options` VALUES (215,'sirsc_db_version','5.5','yes');
INSERT INTO `wp_options` VALUES (247,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (287,'_site_transient_timeout_browser_8d3fec2581d3961f3037851d5cc0039c','1607378138','no');
INSERT INTO `wp_options` VALUES (288,'_site_transient_browser_8d3fec2581d3961f3037851d5cc0039c','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.198\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (289,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1607378138','no');
INSERT INTO `wp_options` VALUES (290,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (316,'_transient_timeout_acf_plugin_updates','1607361384','no');
INSERT INTO `wp_options` VALUES (317,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";}}','no');
INSERT INTO `wp_options` VALUES (318,'_site_transient_timeout_theme_roots','1607190385','no');
INSERT INTO `wp_options` VALUES (319,'_site_transient_theme_roots','a:1:{s:7:\"glozzom\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (320,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1607188585;s:8:\"response\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"crop-thumbnails/crop-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/crop-thumbnails\";s:4:\"slug\";s:15:\"crop-thumbnails\";s:6:\"plugin\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/crop-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/crop-thumbnails.1.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";s:3:\"svg\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/crop-thumbnails/assets/banner-1544x500.jpg?rev=626571\";s:2:\"1x\";s:69:\"https://ps.w.org/crop-thumbnails/assets/banner-772x250.jpg?rev=626571\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (9,7,'_edit_lock','1606944631:1');
INSERT INTO `wp_postmeta` VALUES (10,9,'_edit_lock','1606335027:1');
INSERT INTO `wp_postmeta` VALUES (13,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (14,12,'_edit_lock','1606352713:1');
INSERT INTO `wp_postmeta` VALUES (15,19,'_wp_attached_file','2020/11/xps-uWFFw7leQNI-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (16,19,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:36:\"2020/11/xps-uWFFw7leQNI-unsplash.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"xps-uWFFw7leQNI-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"xps-uWFFw7leQNI-unsplash-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"xps-uWFFw7leQNI-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"xps-uWFFw7leQNI-unsplash-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:38:\"xps-uWFFw7leQNI-unsplash-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:5:{s:4:\"file\";s:37:\"xps-uWFFw7leQNI-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:680;s:2:\"x2\";i:1919;s:2:\"y2\";i:1135;s:14:\"original_width\";i:1920;s:15:\"original_height\";i:1282;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (17,20,'_wp_attached_file','2020/11/xps-dpbXgTh0Lac-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (18,20,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:36:\"2020/11/xps-dpbXgTh0Lac-unsplash.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"xps-dpbXgTh0Lac-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"xps-dpbXgTh0Lac-unsplash-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"xps-dpbXgTh0Lac-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"xps-dpbXgTh0Lac-unsplash-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:38:\"xps-dpbXgTh0Lac-unsplash-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:5:{s:4:\"file\";s:37:\"xps-dpbXgTh0Lac-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:588;s:2:\"x2\";i:1919;s:2:\"y2\";i:1043;s:14:\"original_width\";i:1920;s:15:\"original_height\";i:1282;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (19,21,'_wp_attached_file','2020/11/amauri-mejia-NTL6NTJ7Bjs-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (20,21,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:52:\"2020/11/amauri-mejia-NTL6NTJ7Bjs-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"amauri-mejia-NTL6NTJ7Bjs-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"amauri-mejia-NTL6NTJ7Bjs-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"amauri-mejia-NTL6NTJ7Bjs-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"amauri-mejia-NTL6NTJ7Bjs-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:47:\"amauri-mejia-NTL6NTJ7Bjs-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:47:\"amauri-mejia-NTL6NTJ7Bjs-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:5:{s:4:\"file\";s:46:\"amauri-mejia-NTL6NTJ7Bjs-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:2020;s:2:\"x2\";i:1707;s:2:\"y2\";i:2425;s:14:\"original_width\";i:1707;s:15:\"original_height\";i:2560;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:37:\"amauri-mejia-NTL6NTJ7Bjs-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (21,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (22,7,'carousel_slider_0_carousel_title','Heading One');
INSERT INTO `wp_postmeta` VALUES (23,7,'_carousel_slider_0_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (24,7,'carousel_slider_0_carousel_subtitle','Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `wp_postmeta` VALUES (25,7,'_carousel_slider_0_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (26,7,'carousel_slider_0_carousel_image','19');
INSERT INTO `wp_postmeta` VALUES (27,7,'_carousel_slider_0_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (28,7,'carousel_slider_0_carousel_button_text','Sign Up');
INSERT INTO `wp_postmeta` VALUES (29,7,'_carousel_slider_0_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (30,7,'carousel_slider_0_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (31,7,'_carousel_slider_0_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (32,7,'carousel_slider_1_carousel_title','Heading Two');
INSERT INTO `wp_postmeta` VALUES (33,7,'_carousel_slider_1_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (34,7,'carousel_slider_1_carousel_subtitle','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,');
INSERT INTO `wp_postmeta` VALUES (35,7,'_carousel_slider_1_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (36,7,'carousel_slider_1_carousel_image','20');
INSERT INTO `wp_postmeta` VALUES (37,7,'_carousel_slider_1_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (38,7,'carousel_slider_1_carousel_button_text','Learn More');
INSERT INTO `wp_postmeta` VALUES (39,7,'_carousel_slider_1_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (40,7,'carousel_slider_1_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"//localhost:3000/ \";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (41,7,'_carousel_slider_1_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (42,7,'carousel_slider_2_carousel_title','Heading Three');
INSERT INTO `wp_postmeta` VALUES (43,7,'_carousel_slider_2_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (44,7,'carousel_slider_2_carousel_subtitle','It has survived not only five centuries.');
INSERT INTO `wp_postmeta` VALUES (45,7,'_carousel_slider_2_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (46,7,'carousel_slider_2_carousel_image','21');
INSERT INTO `wp_postmeta` VALUES (47,7,'_carousel_slider_2_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (48,7,'carousel_slider_2_carousel_button_text','Join Us');
INSERT INTO `wp_postmeta` VALUES (49,7,'_carousel_slider_2_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (50,7,'carousel_slider_2_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (51,7,'_carousel_slider_2_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (52,7,'carousel_slider','3');
INSERT INTO `wp_postmeta` VALUES (53,7,'_carousel_slider','field_5fbd835225bfc');
INSERT INTO `wp_postmeta` VALUES (54,22,'carousel_slider_0_carousel_title','Heading One');
INSERT INTO `wp_postmeta` VALUES (55,22,'_carousel_slider_0_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (56,22,'carousel_slider_0_carousel_subtitle','Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `wp_postmeta` VALUES (57,22,'_carousel_slider_0_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (58,22,'carousel_slider_0_carousel_image','19');
INSERT INTO `wp_postmeta` VALUES (59,22,'_carousel_slider_0_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (60,22,'carousel_slider_0_carousel_button_text','Sign Up');
INSERT INTO `wp_postmeta` VALUES (61,22,'_carousel_slider_0_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (62,22,'carousel_slider_0_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"http://glozzom.local/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (63,22,'_carousel_slider_0_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (64,22,'carousel_slider_1_carousel_title','Heading Two');
INSERT INTO `wp_postmeta` VALUES (65,22,'_carousel_slider_1_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (66,22,'carousel_slider_1_carousel_subtitle','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,');
INSERT INTO `wp_postmeta` VALUES (67,22,'_carousel_slider_1_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (68,22,'carousel_slider_1_carousel_image','20');
INSERT INTO `wp_postmeta` VALUES (69,22,'_carousel_slider_1_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (70,22,'carousel_slider_1_carousel_button_text','Learn More');
INSERT INTO `wp_postmeta` VALUES (71,22,'_carousel_slider_1_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (72,22,'carousel_slider_1_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"http://glozzom.local/ \";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (73,22,'_carousel_slider_1_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (74,22,'carousel_slider_2_carousel_title','Heading Three');
INSERT INTO `wp_postmeta` VALUES (75,22,'_carousel_slider_2_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (76,22,'carousel_slider_2_carousel_subtitle','It has survived not only five centuries.');
INSERT INTO `wp_postmeta` VALUES (77,22,'_carousel_slider_2_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (78,22,'carousel_slider_2_carousel_image','21');
INSERT INTO `wp_postmeta` VALUES (79,22,'_carousel_slider_2_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (80,22,'carousel_slider_2_carousel_button_text','Join Us');
INSERT INTO `wp_postmeta` VALUES (81,22,'_carousel_slider_2_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (82,22,'carousel_slider_2_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"http://glozzom.local/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (83,22,'_carousel_slider_2_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (84,22,'carousel_slider','3');
INSERT INTO `wp_postmeta` VALUES (85,22,'_carousel_slider','field_5fbd835225bfc');
INSERT INTO `wp_postmeta` VALUES (86,1,'_edit_lock','1606777008:1');
INSERT INTO `wp_postmeta` VALUES (87,24,'_wp_attached_file','2020/11/laptop.png');
INSERT INTO `wp_postmeta` VALUES (88,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2800;s:6:\"height\";i:1882;s:4:\"file\";s:18:\"2020/11/laptop.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"laptop-300x202.png\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"laptop-1024x688.png\";s:5:\"width\";i:1024;s:6:\"height\";i:688;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"laptop-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"laptop-768x516.png\";s:5:\"width\";i:768;s:6:\"height\";i:516;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"laptop-1536x1032.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1032;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"laptop-2048x1377.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1377;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (89,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (90,25,'_edit_lock','1606342123:1');
INSERT INTO `wp_postmeta` VALUES (91,7,'title','Lorem Ipsum');
INSERT INTO `wp_postmeta` VALUES (92,7,'_title','field_5fbecdd20d854');
INSERT INTO `wp_postmeta` VALUES (93,7,'description','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aspernatur incidunt harum ipsa tenetur cumque asperiores excepturi nisi voluptates velit consectetur!');
INSERT INTO `wp_postmeta` VALUES (94,7,'_description','field_5fbecde90d855');
INSERT INTO `wp_postmeta` VALUES (95,7,'image','24');
INSERT INTO `wp_postmeta` VALUES (96,7,'_image','field_5fbecdf30d856');
INSERT INTO `wp_postmeta` VALUES (97,29,'carousel_slider_0_carousel_title','Heading One');
INSERT INTO `wp_postmeta` VALUES (98,29,'_carousel_slider_0_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (99,29,'carousel_slider_0_carousel_subtitle','Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `wp_postmeta` VALUES (100,29,'_carousel_slider_0_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (101,29,'carousel_slider_0_carousel_image','19');
INSERT INTO `wp_postmeta` VALUES (102,29,'_carousel_slider_0_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (103,29,'carousel_slider_0_carousel_button_text','Sign Up');
INSERT INTO `wp_postmeta` VALUES (104,29,'_carousel_slider_0_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (105,29,'carousel_slider_0_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (106,29,'_carousel_slider_0_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (107,29,'carousel_slider_1_carousel_title','Heading Two');
INSERT INTO `wp_postmeta` VALUES (108,29,'_carousel_slider_1_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (109,29,'carousel_slider_1_carousel_subtitle','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,');
INSERT INTO `wp_postmeta` VALUES (110,29,'_carousel_slider_1_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (111,29,'carousel_slider_1_carousel_image','20');
INSERT INTO `wp_postmeta` VALUES (112,29,'_carousel_slider_1_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (113,29,'carousel_slider_1_carousel_button_text','Learn More');
INSERT INTO `wp_postmeta` VALUES (114,29,'_carousel_slider_1_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (115,29,'carousel_slider_1_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"//localhost:3000/ \";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (116,29,'_carousel_slider_1_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (117,29,'carousel_slider_2_carousel_title','Heading Three');
INSERT INTO `wp_postmeta` VALUES (118,29,'_carousel_slider_2_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (119,29,'carousel_slider_2_carousel_subtitle','It has survived not only five centuries.');
INSERT INTO `wp_postmeta` VALUES (120,29,'_carousel_slider_2_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (121,29,'carousel_slider_2_carousel_image','21');
INSERT INTO `wp_postmeta` VALUES (122,29,'_carousel_slider_2_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (123,29,'carousel_slider_2_carousel_button_text','Join Us');
INSERT INTO `wp_postmeta` VALUES (124,29,'_carousel_slider_2_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (125,29,'carousel_slider_2_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (126,29,'_carousel_slider_2_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (127,29,'carousel_slider','3');
INSERT INTO `wp_postmeta` VALUES (128,29,'_carousel_slider','field_5fbd835225bfc');
INSERT INTO `wp_postmeta` VALUES (129,29,'title','Lorem Ipsum');
INSERT INTO `wp_postmeta` VALUES (130,29,'_title','field_5fbecdd20d854');
INSERT INTO `wp_postmeta` VALUES (131,29,'description','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aspernatur incidunt harum ipsa tenetur cumque asperiores excepturi nisi voluptates velit consectetur!');
INSERT INTO `wp_postmeta` VALUES (132,29,'_description','field_5fbecde90d855');
INSERT INTO `wp_postmeta` VALUES (133,29,'image','24');
INSERT INTO `wp_postmeta` VALUES (134,29,'_image','field_5fbecdf30d856');
INSERT INTO `wp_postmeta` VALUES (135,7,'info_title','Lorem Ipsum');
INSERT INTO `wp_postmeta` VALUES (136,7,'_info_title','field_5fbecdd20d854');
INSERT INTO `wp_postmeta` VALUES (137,7,'info_description','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aspernatur incidunt harum ipsa tenetur cumque asperiores excepturi nisi voluptates velit consectetur!');
INSERT INTO `wp_postmeta` VALUES (138,7,'_info_description','field_5fbecde90d855');
INSERT INTO `wp_postmeta` VALUES (139,7,'info_image','24');
INSERT INTO `wp_postmeta` VALUES (140,7,'_info_image','field_5fbecdf30d856');
INSERT INTO `wp_postmeta` VALUES (141,30,'carousel_slider_0_carousel_title','Heading One');
INSERT INTO `wp_postmeta` VALUES (142,30,'_carousel_slider_0_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (143,30,'carousel_slider_0_carousel_subtitle','Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `wp_postmeta` VALUES (144,30,'_carousel_slider_0_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (145,30,'carousel_slider_0_carousel_image','19');
INSERT INTO `wp_postmeta` VALUES (146,30,'_carousel_slider_0_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (147,30,'carousel_slider_0_carousel_button_text','Sign Up');
INSERT INTO `wp_postmeta` VALUES (148,30,'_carousel_slider_0_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (149,30,'carousel_slider_0_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (150,30,'_carousel_slider_0_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (151,30,'carousel_slider_1_carousel_title','Heading Two');
INSERT INTO `wp_postmeta` VALUES (152,30,'_carousel_slider_1_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (153,30,'carousel_slider_1_carousel_subtitle','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,');
INSERT INTO `wp_postmeta` VALUES (154,30,'_carousel_slider_1_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (155,30,'carousel_slider_1_carousel_image','20');
INSERT INTO `wp_postmeta` VALUES (156,30,'_carousel_slider_1_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (157,30,'carousel_slider_1_carousel_button_text','Learn More');
INSERT INTO `wp_postmeta` VALUES (158,30,'_carousel_slider_1_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (159,30,'carousel_slider_1_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"//localhost:3000/ \";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (160,30,'_carousel_slider_1_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (161,30,'carousel_slider_2_carousel_title','Heading Three');
INSERT INTO `wp_postmeta` VALUES (162,30,'_carousel_slider_2_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (163,30,'carousel_slider_2_carousel_subtitle','It has survived not only five centuries.');
INSERT INTO `wp_postmeta` VALUES (164,30,'_carousel_slider_2_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (165,30,'carousel_slider_2_carousel_image','21');
INSERT INTO `wp_postmeta` VALUES (166,30,'_carousel_slider_2_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (167,30,'carousel_slider_2_carousel_button_text','Join Us');
INSERT INTO `wp_postmeta` VALUES (168,30,'_carousel_slider_2_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (169,30,'carousel_slider_2_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (170,30,'_carousel_slider_2_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (171,30,'carousel_slider','3');
INSERT INTO `wp_postmeta` VALUES (172,30,'_carousel_slider','field_5fbd835225bfc');
INSERT INTO `wp_postmeta` VALUES (173,30,'title','Lorem Ipsum');
INSERT INTO `wp_postmeta` VALUES (174,30,'_title','field_5fbecdd20d854');
INSERT INTO `wp_postmeta` VALUES (175,30,'description','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aspernatur incidunt harum ipsa tenetur cumque asperiores excepturi nisi voluptates velit consectetur!');
INSERT INTO `wp_postmeta` VALUES (176,30,'_description','field_5fbecde90d855');
INSERT INTO `wp_postmeta` VALUES (177,30,'image','24');
INSERT INTO `wp_postmeta` VALUES (178,30,'_image','field_5fbecdf30d856');
INSERT INTO `wp_postmeta` VALUES (179,30,'info_title','Lorem Ipsum');
INSERT INTO `wp_postmeta` VALUES (180,30,'_info_title','field_5fbecdd20d854');
INSERT INTO `wp_postmeta` VALUES (181,30,'info_description','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aspernatur incidunt harum ipsa tenetur cumque asperiores excepturi nisi voluptates velit consectetur!');
INSERT INTO `wp_postmeta` VALUES (182,30,'_info_description','field_5fbecde90d855');
INSERT INTO `wp_postmeta` VALUES (183,30,'info_image','24');
INSERT INTO `wp_postmeta` VALUES (184,30,'_info_image','field_5fbecdf30d856');
INSERT INTO `wp_postmeta` VALUES (185,7,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.youtube.com/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (186,7,'_youtube_link','field_5fbed66773472');
INSERT INTO `wp_postmeta` VALUES (187,32,'carousel_slider_0_carousel_title','Heading One');
INSERT INTO `wp_postmeta` VALUES (188,32,'_carousel_slider_0_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (189,32,'carousel_slider_0_carousel_subtitle','Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `wp_postmeta` VALUES (190,32,'_carousel_slider_0_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (191,32,'carousel_slider_0_carousel_image','19');
INSERT INTO `wp_postmeta` VALUES (192,32,'_carousel_slider_0_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (193,32,'carousel_slider_0_carousel_button_text','Sign Up');
INSERT INTO `wp_postmeta` VALUES (194,32,'_carousel_slider_0_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (195,32,'carousel_slider_0_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (196,32,'_carousel_slider_0_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (197,32,'carousel_slider_1_carousel_title','Heading Two');
INSERT INTO `wp_postmeta` VALUES (198,32,'_carousel_slider_1_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (199,32,'carousel_slider_1_carousel_subtitle','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,');
INSERT INTO `wp_postmeta` VALUES (200,32,'_carousel_slider_1_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (201,32,'carousel_slider_1_carousel_image','20');
INSERT INTO `wp_postmeta` VALUES (202,32,'_carousel_slider_1_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (203,32,'carousel_slider_1_carousel_button_text','Learn More');
INSERT INTO `wp_postmeta` VALUES (204,32,'_carousel_slider_1_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (205,32,'carousel_slider_1_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"//localhost:3000/ \";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (206,32,'_carousel_slider_1_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (207,32,'carousel_slider_2_carousel_title','Heading Three');
INSERT INTO `wp_postmeta` VALUES (208,32,'_carousel_slider_2_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (209,32,'carousel_slider_2_carousel_subtitle','It has survived not only five centuries.');
INSERT INTO `wp_postmeta` VALUES (210,32,'_carousel_slider_2_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (211,32,'carousel_slider_2_carousel_image','21');
INSERT INTO `wp_postmeta` VALUES (212,32,'_carousel_slider_2_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (213,32,'carousel_slider_2_carousel_button_text','Join Us');
INSERT INTO `wp_postmeta` VALUES (214,32,'_carousel_slider_2_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (215,32,'carousel_slider_2_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (216,32,'_carousel_slider_2_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (217,32,'carousel_slider','3');
INSERT INTO `wp_postmeta` VALUES (218,32,'_carousel_slider','field_5fbd835225bfc');
INSERT INTO `wp_postmeta` VALUES (219,32,'title','Lorem Ipsum');
INSERT INTO `wp_postmeta` VALUES (220,32,'_title','field_5fbecdd20d854');
INSERT INTO `wp_postmeta` VALUES (221,32,'description','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aspernatur incidunt harum ipsa tenetur cumque asperiores excepturi nisi voluptates velit consectetur!');
INSERT INTO `wp_postmeta` VALUES (222,32,'_description','field_5fbecde90d855');
INSERT INTO `wp_postmeta` VALUES (223,32,'image','24');
INSERT INTO `wp_postmeta` VALUES (224,32,'_image','field_5fbecdf30d856');
INSERT INTO `wp_postmeta` VALUES (225,32,'info_title','Lorem Ipsum');
INSERT INTO `wp_postmeta` VALUES (226,32,'_info_title','field_5fbecdd20d854');
INSERT INTO `wp_postmeta` VALUES (227,32,'info_description','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aspernatur incidunt harum ipsa tenetur cumque asperiores excepturi nisi voluptates velit consectetur!');
INSERT INTO `wp_postmeta` VALUES (228,32,'_info_description','field_5fbecde90d855');
INSERT INTO `wp_postmeta` VALUES (229,32,'info_image','24');
INSERT INTO `wp_postmeta` VALUES (230,32,'_info_image','field_5fbecdf30d856');
INSERT INTO `wp_postmeta` VALUES (231,32,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.youtube.com/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (232,32,'_youtube_link','field_5fbed66773472');
INSERT INTO `wp_postmeta` VALUES (233,33,'_wp_attached_file','2020/11/jessica-lam-wUuo7WfoKS4-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (234,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:44:\"2020/11/jessica-lam-wUuo7WfoKS4-unsplash.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"jessica-lam-wUuo7WfoKS4-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"jessica-lam-wUuo7WfoKS4-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"jessica-lam-wUuo7WfoKS4-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"jessica-lam-wUuo7WfoKS4-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"jessica-lam-wUuo7WfoKS4-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (235,34,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (236,34,'_edit_lock','1606421935:1');
INSERT INTO `wp_postmeta` VALUES (237,36,'_wp_attached_file','2020/11/alexandre-boucey-2TZKBeXw47w-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (238,36,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:49:\"2020/11/alexandre-boucey-2TZKBeXw47w-unsplash.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"alexandre-boucey-2TZKBeXw47w-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"alexandre-boucey-2TZKBeXw47w-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"alexandre-boucey-2TZKBeXw47w-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"alexandre-boucey-2TZKBeXw47w-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:51:\"alexandre-boucey-2TZKBeXw47w-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:50:\"alexandre-boucey-2TZKBeXw47w-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (239,37,'_wp_attached_file','2020/11/max-ostwalt-Tsb3DJnpmUE-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (240,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:44:\"2020/11/max-ostwalt-Tsb3DJnpmUE-unsplash.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"max-ostwalt-Tsb3DJnpmUE-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"max-ostwalt-Tsb3DJnpmUE-unsplash-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"max-ostwalt-Tsb3DJnpmUE-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"max-ostwalt-Tsb3DJnpmUE-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"max-ostwalt-Tsb3DJnpmUE-unsplash-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:45:\"max-ostwalt-Tsb3DJnpmUE-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (241,38,'_wp_attached_file','2020/11/tobias-rademacher-XQrOgytqUvE-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (242,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:50:\"2020/11/tobias-rademacher-XQrOgytqUvE-unsplash.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"tobias-rademacher-XQrOgytqUvE-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"tobias-rademacher-XQrOgytqUvE-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"tobias-rademacher-XQrOgytqUvE-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"tobias-rademacher-XQrOgytqUvE-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"tobias-rademacher-XQrOgytqUvE-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:51:\"tobias-rademacher-XQrOgytqUvE-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (243,39,'_wp_attached_file','2020/11/nick-jones-R8pndnPmmCc-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (244,39,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1661;s:6:\"height\";i:2560;s:4:\"file\";s:50:\"2020/11/nick-jones-R8pndnPmmCc-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"nick-jones-R8pndnPmmCc-unsplash-195x300.jpg\";s:5:\"width\";i:195;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"nick-jones-R8pndnPmmCc-unsplash-664x1024.jpg\";s:5:\"width\";i:664;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"nick-jones-R8pndnPmmCc-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"nick-jones-R8pndnPmmCc-unsplash-768x1184.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:44:\"nick-jones-R8pndnPmmCc-unsplash-997x1536.jpg\";s:5:\"width\";i:997;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:45:\"nick-jones-R8pndnPmmCc-unsplash-1329x2048.jpg\";s:5:\"width\";i:1329;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:44:\"nick-jones-R8pndnPmmCc-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:35:\"nick-jones-R8pndnPmmCc-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (245,40,'_wp_attached_file','2020/11/samsung-memory-9sIyWXf8ITI-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (246,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:47:\"2020/11/samsung-memory-9sIyWXf8ITI-unsplash.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"samsung-memory-9sIyWXf8ITI-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"samsung-memory-9sIyWXf8ITI-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"samsung-memory-9sIyWXf8ITI-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"samsung-memory-9sIyWXf8ITI-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"samsung-memory-9sIyWXf8ITI-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:48:\"samsung-memory-9sIyWXf8ITI-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (247,41,'_wp_attached_file','2020/11/daoud-abismail-Elv0Gk2fCzo-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (248,41,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:54:\"2020/11/daoud-abismail-Elv0Gk2fCzo-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"daoud-abismail-Elv0Gk2fCzo-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"daoud-abismail-Elv0Gk2fCzo-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"daoud-abismail-Elv0Gk2fCzo-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"daoud-abismail-Elv0Gk2fCzo-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"daoud-abismail-Elv0Gk2fCzo-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:49:\"daoud-abismail-Elv0Gk2fCzo-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:48:\"daoud-abismail-Elv0Gk2fCzo-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"daoud-abismail-Elv0Gk2fCzo-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (249,42,'_wp_attached_file','2020/11/larisa-birta-BPG4Sc0OISU-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (250,42,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1708;s:6:\"height\";i:2560;s:4:\"file\";s:52:\"2020/11/larisa-birta-BPG4Sc0OISU-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"larisa-birta-BPG4Sc0OISU-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"larisa-birta-BPG4Sc0OISU-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"larisa-birta-BPG4Sc0OISU-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"larisa-birta-BPG4Sc0OISU-unsplash-768x1151.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:47:\"larisa-birta-BPG4Sc0OISU-unsplash-1025x1536.jpg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:47:\"larisa-birta-BPG4Sc0OISU-unsplash-1367x2048.jpg\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:46:\"larisa-birta-BPG4Sc0OISU-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:37:\"larisa-birta-BPG4Sc0OISU-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (251,43,'_wp_attached_file','2020/11/brittney-weng-Zd9BBBqebQc-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (252,43,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:2400;s:4:\"file\";s:46:\"2020/11/brittney-weng-Zd9BBBqebQc-unsplash.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"brittney-weng-Zd9BBBqebQc-unsplash-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"brittney-weng-Zd9BBBqebQc-unsplash-819x1024.jpg\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"brittney-weng-Zd9BBBqebQc-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"brittney-weng-Zd9BBBqebQc-unsplash-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:48:\"brittney-weng-Zd9BBBqebQc-unsplash-1229x1536.jpg\";s:5:\"width\";i:1229;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:48:\"brittney-weng-Zd9BBBqebQc-unsplash-1638x2048.jpg\";s:5:\"width\";i:1638;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:47:\"brittney-weng-Zd9BBBqebQc-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (253,44,'_wp_attached_file','2020/11/chewy-DR6wPYR2DRc-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (254,44,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:45:\"2020/11/chewy-DR6wPYR2DRc-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"chewy-DR6wPYR2DRc-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"chewy-DR6wPYR2DRc-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"chewy-DR6wPYR2DRc-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"chewy-DR6wPYR2DRc-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:40:\"chewy-DR6wPYR2DRc-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:40:\"chewy-DR6wPYR2DRc-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:39:\"chewy-DR6wPYR2DRc-unsplash-1900x450.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:30:\"chewy-DR6wPYR2DRc-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (255,7,'gallery_section','a:9:{i:0;s:2:\"36\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";i:4;s:2:\"40\";i:5;s:2:\"41\";i:6;s:2:\"42\";i:7;s:2:\"43\";i:8;s:2:\"44\";}');
INSERT INTO `wp_postmeta` VALUES (256,7,'_gallery_section','field_5fbff26ec15e6');
INSERT INTO `wp_postmeta` VALUES (257,45,'carousel_slider_0_carousel_title','Heading One');
INSERT INTO `wp_postmeta` VALUES (258,45,'_carousel_slider_0_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (259,45,'carousel_slider_0_carousel_subtitle','Lorem Ipsum is simply dummy text of the printing and typesetting industry.');
INSERT INTO `wp_postmeta` VALUES (260,45,'_carousel_slider_0_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (261,45,'carousel_slider_0_carousel_image','19');
INSERT INTO `wp_postmeta` VALUES (262,45,'_carousel_slider_0_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (263,45,'carousel_slider_0_carousel_button_text','Sign Up');
INSERT INTO `wp_postmeta` VALUES (264,45,'_carousel_slider_0_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (265,45,'carousel_slider_0_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (266,45,'_carousel_slider_0_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (267,45,'carousel_slider_1_carousel_title','Heading Two');
INSERT INTO `wp_postmeta` VALUES (268,45,'_carousel_slider_1_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (269,45,'carousel_slider_1_carousel_subtitle','Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,');
INSERT INTO `wp_postmeta` VALUES (270,45,'_carousel_slider_1_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (271,45,'carousel_slider_1_carousel_image','20');
INSERT INTO `wp_postmeta` VALUES (272,45,'_carousel_slider_1_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (273,45,'carousel_slider_1_carousel_button_text','Learn More');
INSERT INTO `wp_postmeta` VALUES (274,45,'_carousel_slider_1_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (275,45,'carousel_slider_1_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:18:\"//localhost:3000/ \";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (276,45,'_carousel_slider_1_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (277,45,'carousel_slider_2_carousel_title','Heading Three');
INSERT INTO `wp_postmeta` VALUES (278,45,'_carousel_slider_2_carousel_title','field_5fbd837025bfd');
INSERT INTO `wp_postmeta` VALUES (279,45,'carousel_slider_2_carousel_subtitle','It has survived not only five centuries.');
INSERT INTO `wp_postmeta` VALUES (280,45,'_carousel_slider_2_carousel_subtitle','field_5fbd838925bfe');
INSERT INTO `wp_postmeta` VALUES (281,45,'carousel_slider_2_carousel_image','21');
INSERT INTO `wp_postmeta` VALUES (282,45,'_carousel_slider_2_carousel_image','field_5fbd83c225bff');
INSERT INTO `wp_postmeta` VALUES (283,45,'carousel_slider_2_carousel_button_text','Join Us');
INSERT INTO `wp_postmeta` VALUES (284,45,'_carousel_slider_2_carousel_button_text','field_5fbd83ce25c00');
INSERT INTO `wp_postmeta` VALUES (285,45,'carousel_slider_2_carousel_button_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (286,45,'_carousel_slider_2_carousel_button_link','field_5fbd83f625c01');
INSERT INTO `wp_postmeta` VALUES (287,45,'carousel_slider','3');
INSERT INTO `wp_postmeta` VALUES (288,45,'_carousel_slider','field_5fbd835225bfc');
INSERT INTO `wp_postmeta` VALUES (289,45,'title','Lorem Ipsum');
INSERT INTO `wp_postmeta` VALUES (290,45,'_title','field_5fbecdd20d854');
INSERT INTO `wp_postmeta` VALUES (291,45,'description','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aspernatur incidunt harum ipsa tenetur cumque asperiores excepturi nisi voluptates velit consectetur!');
INSERT INTO `wp_postmeta` VALUES (292,45,'_description','field_5fbecde90d855');
INSERT INTO `wp_postmeta` VALUES (293,45,'image','24');
INSERT INTO `wp_postmeta` VALUES (294,45,'_image','field_5fbecdf30d856');
INSERT INTO `wp_postmeta` VALUES (295,45,'info_title','Lorem Ipsum');
INSERT INTO `wp_postmeta` VALUES (296,45,'_info_title','field_5fbecdd20d854');
INSERT INTO `wp_postmeta` VALUES (297,45,'info_description','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Aspernatur incidunt harum ipsa tenetur cumque asperiores excepturi nisi voluptates velit consectetur!');
INSERT INTO `wp_postmeta` VALUES (298,45,'_info_description','field_5fbecde90d855');
INSERT INTO `wp_postmeta` VALUES (299,45,'info_image','24');
INSERT INTO `wp_postmeta` VALUES (300,45,'_info_image','field_5fbecdf30d856');
INSERT INTO `wp_postmeta` VALUES (301,45,'youtube_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.youtube.com/\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (302,45,'_youtube_link','field_5fbed66773472');
INSERT INTO `wp_postmeta` VALUES (303,45,'gallery_section','a:9:{i:0;s:2:\"36\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";i:4;s:2:\"40\";i:5;s:2:\"41\";i:6;s:2:\"42\";i:7;s:2:\"43\";i:8;s:2:\"44\";}');
INSERT INTO `wp_postmeta` VALUES (304,45,'_gallery_section','field_5fbff26ec15e6');
INSERT INTO `wp_postmeta` VALUES (305,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (306,46,'_edit_lock','1606518219:1');
INSERT INTO `wp_postmeta` VALUES (307,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (308,49,'_edit_lock','1606515713:1');
INSERT INTO `wp_postmeta` VALUES (309,51,'_wp_attached_file','2020/11/127889078_10164391364375463_9206118827013724858_n.jpg');
INSERT INTO `wp_postmeta` VALUES (310,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:720;s:4:\"file\";s:61:\"2020/11/127889078_10164391364375463_9206118827013724858_n.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"127889078_10164391364375463_9206118827013724858_n-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"127889078_10164391364375463_9206118827013724858_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:61:\"127889078_10164391364375463_9206118827013724858_n-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:61:\"127889078_10164391364375463_9206118827013724858_n-960x450.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (311,52,'_wp_attached_file','2020/11/pierre-pavlovic-6lE5mVJ7I_o-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (312,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:441;s:4:\"file\";s:48:\"2020/11/pierre-pavlovic-6lE5mVJ7I_o-unsplash.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"pierre-pavlovic-6lE5mVJ7I_o-unsplash-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"pierre-pavlovic-6lE5mVJ7I_o-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (313,46,'about_us_image','52');
INSERT INTO `wp_postmeta` VALUES (314,46,'_about_us_image','field_5fc1758bc3e6e');
INSERT INTO `wp_postmeta` VALUES (315,53,'about_us_image','52');
INSERT INTO `wp_postmeta` VALUES (316,53,'_about_us_image','field_5fc1758bc3e6e');
INSERT INTO `wp_postmeta` VALUES (317,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (318,54,'_edit_lock','1606517062:1');
INSERT INTO `wp_postmeta` VALUES (319,46,'testimonials_0_testimonial_comment','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `wp_postmeta` VALUES (320,46,'_testimonials_0_testimonial_comment','field_5fc17b993b03b');
INSERT INTO `wp_postmeta` VALUES (321,46,'testimonials_0_testimonial_author','John Wick');
INSERT INTO `wp_postmeta` VALUES (322,46,'_testimonials_0_testimonial_author','field_5fc17ba53b03c');
INSERT INTO `wp_postmeta` VALUES (323,46,'testimonials_1_testimonial_comment','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters');
INSERT INTO `wp_postmeta` VALUES (324,46,'_testimonials_1_testimonial_comment','field_5fc17b993b03b');
INSERT INTO `wp_postmeta` VALUES (325,46,'testimonials_1_testimonial_author','Susan Smart');
INSERT INTO `wp_postmeta` VALUES (326,46,'_testimonials_1_testimonial_author','field_5fc17ba53b03c');
INSERT INTO `wp_postmeta` VALUES (327,46,'testimonials_2_testimonial_comment','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour');
INSERT INTO `wp_postmeta` VALUES (328,46,'_testimonials_2_testimonial_comment','field_5fc17b993b03b');
INSERT INTO `wp_postmeta` VALUES (329,46,'testimonials_2_testimonial_author','Jeremy Doubler');
INSERT INTO `wp_postmeta` VALUES (330,46,'_testimonials_2_testimonial_author','field_5fc17ba53b03c');
INSERT INTO `wp_postmeta` VALUES (331,46,'testimonials','3');
INSERT INTO `wp_postmeta` VALUES (332,46,'_testimonials','field_5fc17b763b039');
INSERT INTO `wp_postmeta` VALUES (333,58,'about_us_image','52');
INSERT INTO `wp_postmeta` VALUES (334,58,'_about_us_image','field_5fc1758bc3e6e');
INSERT INTO `wp_postmeta` VALUES (335,58,'testimonials_0_testimonial_comment','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `wp_postmeta` VALUES (336,58,'_testimonials_0_testimonial_comment','field_5fc17b993b03b');
INSERT INTO `wp_postmeta` VALUES (337,58,'testimonials_0_testimonial_author','John Wick');
INSERT INTO `wp_postmeta` VALUES (338,58,'_testimonials_0_testimonial_author','field_5fc17ba53b03c');
INSERT INTO `wp_postmeta` VALUES (339,58,'testimonials_1_testimonial_comment','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters');
INSERT INTO `wp_postmeta` VALUES (340,58,'_testimonials_1_testimonial_comment','field_5fc17b993b03b');
INSERT INTO `wp_postmeta` VALUES (341,58,'testimonials_1_testimonial_author','Susan Smart');
INSERT INTO `wp_postmeta` VALUES (342,58,'_testimonials_1_testimonial_author','field_5fc17ba53b03c');
INSERT INTO `wp_postmeta` VALUES (343,58,'testimonials_2_testimonial_comment','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour');
INSERT INTO `wp_postmeta` VALUES (344,58,'_testimonials_2_testimonial_comment','field_5fc17b993b03b');
INSERT INTO `wp_postmeta` VALUES (345,58,'testimonials_2_testimonial_author','Jeremy Doubler');
INSERT INTO `wp_postmeta` VALUES (346,58,'_testimonials_2_testimonial_author','field_5fc17ba53b03c');
INSERT INTO `wp_postmeta` VALUES (347,58,'testimonials','3');
INSERT INTO `wp_postmeta` VALUES (348,58,'_testimonials','field_5fc17b763b039');
INSERT INTO `wp_postmeta` VALUES (349,46,'testimonials_0_testimonial_company','Company 1');
INSERT INTO `wp_postmeta` VALUES (350,46,'_testimonials_0_testimonial_company','field_5fc181c58be65');
INSERT INTO `wp_postmeta` VALUES (351,46,'testimonials_1_testimonial_company','Company 2');
INSERT INTO `wp_postmeta` VALUES (352,46,'_testimonials_1_testimonial_company','field_5fc181c58be65');
INSERT INTO `wp_postmeta` VALUES (353,46,'testimonials_2_testimonial_company','Company 3');
INSERT INTO `wp_postmeta` VALUES (354,46,'_testimonials_2_testimonial_company','field_5fc181c58be65');
INSERT INTO `wp_postmeta` VALUES (355,60,'about_us_image','52');
INSERT INTO `wp_postmeta` VALUES (356,60,'_about_us_image','field_5fc1758bc3e6e');
INSERT INTO `wp_postmeta` VALUES (357,60,'testimonials_0_testimonial_comment','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `wp_postmeta` VALUES (358,60,'_testimonials_0_testimonial_comment','field_5fc17b993b03b');
INSERT INTO `wp_postmeta` VALUES (359,60,'testimonials_0_testimonial_author','John Wick');
INSERT INTO `wp_postmeta` VALUES (360,60,'_testimonials_0_testimonial_author','field_5fc17ba53b03c');
INSERT INTO `wp_postmeta` VALUES (361,60,'testimonials_1_testimonial_comment','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters');
INSERT INTO `wp_postmeta` VALUES (362,60,'_testimonials_1_testimonial_comment','field_5fc17b993b03b');
INSERT INTO `wp_postmeta` VALUES (363,60,'testimonials_1_testimonial_author','Susan Smart');
INSERT INTO `wp_postmeta` VALUES (364,60,'_testimonials_1_testimonial_author','field_5fc17ba53b03c');
INSERT INTO `wp_postmeta` VALUES (365,60,'testimonials_2_testimonial_comment','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour');
INSERT INTO `wp_postmeta` VALUES (366,60,'_testimonials_2_testimonial_comment','field_5fc17b993b03b');
INSERT INTO `wp_postmeta` VALUES (367,60,'testimonials_2_testimonial_author','Jeremy Doubler');
INSERT INTO `wp_postmeta` VALUES (368,60,'_testimonials_2_testimonial_author','field_5fc17ba53b03c');
INSERT INTO `wp_postmeta` VALUES (369,60,'testimonials','3');
INSERT INTO `wp_postmeta` VALUES (370,60,'_testimonials','field_5fc17b763b039');
INSERT INTO `wp_postmeta` VALUES (371,60,'testimonials_0_testimonial_company','Company 1');
INSERT INTO `wp_postmeta` VALUES (372,60,'_testimonials_0_testimonial_company','field_5fc181c58be65');
INSERT INTO `wp_postmeta` VALUES (373,60,'testimonials_1_testimonial_company','Company 2');
INSERT INTO `wp_postmeta` VALUES (374,60,'_testimonials_1_testimonial_company','field_5fc181c58be65');
INSERT INTO `wp_postmeta` VALUES (375,60,'testimonials_2_testimonial_company','Company 3');
INSERT INTO `wp_postmeta` VALUES (376,60,'_testimonials_2_testimonial_company','field_5fc181c58be65');
INSERT INTO `wp_postmeta` VALUES (377,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (378,61,'_edit_lock','1606773110:1');
INSERT INTO `wp_postmeta` VALUES (384,78,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (385,78,'_edit_lock','1606600271:1');
INSERT INTO `wp_postmeta` VALUES (386,78,'service_name','test');
INSERT INTO `wp_postmeta` VALUES (387,78,'_service_name','field_5fc2ba80dec2c');
INSERT INTO `wp_postmeta` VALUES (388,78,'service_cost','2');
INSERT INTO `wp_postmeta` VALUES (389,78,'_service_cost','field_5fc2bac8dec2d');
INSERT INTO `wp_postmeta` VALUES (390,78,'service_description','23');
INSERT INTO `wp_postmeta` VALUES (391,78,'_service_description','field_5fc2bad8dec2e');
INSERT INTO `wp_postmeta` VALUES (392,78,'service_features_0_feature','23');
INSERT INTO `wp_postmeta` VALUES (393,78,'_service_features_0_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (394,78,'service_features','1');
INSERT INTO `wp_postmeta` VALUES (395,78,'_service_features','field_5fc2bb09dec2f');
INSERT INTO `wp_postmeta` VALUES (396,78,'service_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"http://glozzom.local/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (397,78,'_service_link','field_5fc2bb47dec31');
INSERT INTO `wp_postmeta` VALUES (398,78,'service_duration','23');
INSERT INTO `wp_postmeta` VALUES (399,78,'_service_duration','field_5fc2bb59dec32');
INSERT INTO `wp_postmeta` VALUES (400,78,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (401,78,'_wp_trash_meta_time','1606600425');
INSERT INTO `wp_postmeta` VALUES (402,78,'_wp_desired_post_slug','doesnt-matter');
INSERT INTO `wp_postmeta` VALUES (403,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (404,79,'_edit_lock','1606773952:1');
INSERT INTO `wp_postmeta` VALUES (405,79,'service_name','Service Plan One');
INSERT INTO `wp_postmeta` VALUES (406,79,'_service_name','field_5fc2ba80dec2c');
INSERT INTO `wp_postmeta` VALUES (407,79,'service_cost','59.99');
INSERT INTO `wp_postmeta` VALUES (408,79,'_service_cost','field_5fc2bac8dec2d');
INSERT INTO `wp_postmeta` VALUES (409,79,'service_description','Lorem ipsum dolor sit amet consectetur adipisicing elit. Error, quisquam.');
INSERT INTO `wp_postmeta` VALUES (410,79,'_service_description','field_5fc2bad8dec2e');
INSERT INTO `wp_postmeta` VALUES (411,79,'service_features_0_feature','Feature One');
INSERT INTO `wp_postmeta` VALUES (412,79,'_service_features_0_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (413,79,'service_features_1_feature','Feature Two');
INSERT INTO `wp_postmeta` VALUES (414,79,'_service_features_1_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (415,79,'service_features_2_feature','Feature Three');
INSERT INTO `wp_postmeta` VALUES (416,79,'_service_features_2_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (417,79,'service_features_3_feature','Feature Four');
INSERT INTO `wp_postmeta` VALUES (418,79,'_service_features_3_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (419,79,'service_features_4_feature','Feature Five');
INSERT INTO `wp_postmeta` VALUES (420,79,'_service_features_4_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (421,79,'service_features','5');
INSERT INTO `wp_postmeta` VALUES (422,79,'_service_features','field_5fc2bb09dec2f');
INSERT INTO `wp_postmeta` VALUES (423,79,'service_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:17:\"//localhost:3000/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (424,79,'_service_link','field_5fc2bb47dec31');
INSERT INTO `wp_postmeta` VALUES (425,79,'service_duration','1 Year Plan');
INSERT INTO `wp_postmeta` VALUES (426,79,'_service_duration','field_5fc2bb59dec32');
INSERT INTO `wp_postmeta` VALUES (427,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (428,80,'_edit_lock','1606605793:1');
INSERT INTO `wp_postmeta` VALUES (429,80,'service_name','Service Plan Two');
INSERT INTO `wp_postmeta` VALUES (430,80,'_service_name','field_5fc2ba80dec2c');
INSERT INTO `wp_postmeta` VALUES (431,80,'service_cost','99.99');
INSERT INTO `wp_postmeta` VALUES (432,80,'_service_cost','field_5fc2bac8dec2d');
INSERT INTO `wp_postmeta` VALUES (433,80,'service_description','Lorem ipsum dolor sit amet consectetur adipisicing elit. Error, quisquam.');
INSERT INTO `wp_postmeta` VALUES (434,80,'_service_description','field_5fc2bad8dec2e');
INSERT INTO `wp_postmeta` VALUES (435,80,'service_features_0_feature','Feature One');
INSERT INTO `wp_postmeta` VALUES (436,80,'_service_features_0_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (437,80,'service_features_1_feature','Feature Two');
INSERT INTO `wp_postmeta` VALUES (438,80,'_service_features_1_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (439,80,'service_features_2_feature','Feature Three');
INSERT INTO `wp_postmeta` VALUES (440,80,'_service_features_2_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (441,80,'service_features_3_feature','Feature Four');
INSERT INTO `wp_postmeta` VALUES (442,80,'_service_features_3_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (443,80,'service_features_4_feature','Feature Five');
INSERT INTO `wp_postmeta` VALUES (444,80,'_service_features_4_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (445,80,'service_features','5');
INSERT INTO `wp_postmeta` VALUES (446,80,'_service_features','field_5fc2bb09dec2f');
INSERT INTO `wp_postmeta` VALUES (447,80,'service_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"http://glozzom.local/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (448,80,'_service_link','field_5fc2bb47dec31');
INSERT INTO `wp_postmeta` VALUES (449,80,'plan_duration','1 Year Plan');
INSERT INTO `wp_postmeta` VALUES (450,80,'_plan_duration','field_5fc2bb59dec32');
INSERT INTO `wp_postmeta` VALUES (451,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (452,81,'_edit_lock','1606605788:1');
INSERT INTO `wp_postmeta` VALUES (453,81,'service_name','Service Plan Three');
INSERT INTO `wp_postmeta` VALUES (454,81,'_service_name','field_5fc2ba80dec2c');
INSERT INTO `wp_postmeta` VALUES (455,81,'service_cost','159.99');
INSERT INTO `wp_postmeta` VALUES (456,81,'_service_cost','field_5fc2bac8dec2d');
INSERT INTO `wp_postmeta` VALUES (457,81,'service_description','Lorem ipsum dolor sit amet consectetur adipisicing elit. Error, quisquam.');
INSERT INTO `wp_postmeta` VALUES (458,81,'_service_description','field_5fc2bad8dec2e');
INSERT INTO `wp_postmeta` VALUES (459,81,'service_features_0_feature','Feature One');
INSERT INTO `wp_postmeta` VALUES (460,81,'_service_features_0_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (461,81,'service_features_1_feature','Feature Two');
INSERT INTO `wp_postmeta` VALUES (462,81,'_service_features_1_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (463,81,'service_features_2_feature','Feature Three');
INSERT INTO `wp_postmeta` VALUES (464,81,'_service_features_2_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (465,81,'service_features_3_feature','Feature Four');
INSERT INTO `wp_postmeta` VALUES (466,81,'_service_features_3_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (467,81,'service_features_4_feature','Feature Five');
INSERT INTO `wp_postmeta` VALUES (468,81,'_service_features_4_feature','field_5fc2bb1ddec30');
INSERT INTO `wp_postmeta` VALUES (469,81,'service_features','5');
INSERT INTO `wp_postmeta` VALUES (470,81,'_service_features','field_5fc2bb09dec2f');
INSERT INTO `wp_postmeta` VALUES (471,81,'service_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:21:\"http://glozzom.local/\";s:6:\"target\";s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (472,81,'_service_link','field_5fc2bb47dec31');
INSERT INTO `wp_postmeta` VALUES (473,81,'plan_duration','1 Year Plan');
INSERT INTO `wp_postmeta` VALUES (474,81,'_plan_duration','field_5fc2bb59dec32');
INSERT INTO `wp_postmeta` VALUES (475,79,'plan_duration','1 Year Plan');
INSERT INTO `wp_postmeta` VALUES (476,79,'_plan_duration','field_5fc2bb59dec32');
INSERT INTO `wp_postmeta` VALUES (477,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (478,82,'_edit_lock','1606773924:1');
INSERT INTO `wp_postmeta` VALUES (479,79,'faq_repeater_0_question','Question 1');
INSERT INTO `wp_postmeta` VALUES (480,79,'_faq_repeater_0_question','field_5fc424b050323');
INSERT INTO `wp_postmeta` VALUES (481,79,'faq_repeater_0_answer','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO `wp_postmeta` VALUES (482,79,'_faq_repeater_0_answer','field_5fc424c650324');
INSERT INTO `wp_postmeta` VALUES (483,79,'faq_repeater_1_question','Question 2');
INSERT INTO `wp_postmeta` VALUES (484,79,'_faq_repeater_1_question','field_5fc424b050323');
INSERT INTO `wp_postmeta` VALUES (485,79,'faq_repeater_1_answer','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO `wp_postmeta` VALUES (486,79,'_faq_repeater_1_answer','field_5fc424c650324');
INSERT INTO `wp_postmeta` VALUES (487,79,'faq_repeater_2_question','Question 3 ');
INSERT INTO `wp_postmeta` VALUES (488,79,'_faq_repeater_2_question','field_5fc424b050323');
INSERT INTO `wp_postmeta` VALUES (489,79,'faq_repeater_2_answer','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');
INSERT INTO `wp_postmeta` VALUES (490,79,'_faq_repeater_2_answer','field_5fc424c650324');
INSERT INTO `wp_postmeta` VALUES (503,79,'faq_repeater','3');
INSERT INTO `wp_postmeta` VALUES (504,79,'_faq_repeater','field_5fc424a250322');
INSERT INTO `wp_postmeta` VALUES (505,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (506,87,'_edit_lock','1606774347:1');
INSERT INTO `wp_postmeta` VALUES (507,88,'_wp_attached_file','2020/11/tim-hufner-UBJrRodM2Xk-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (508,88,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:43:\"2020/11/tim-hufner-UBJrRodM2Xk-unsplash.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"tim-hufner-UBJrRodM2Xk-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"tim-hufner-UBJrRodM2Xk-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (509,87,'_thumbnail_id','88');
INSERT INTO `wp_postmeta` VALUES (512,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (513,90,'_edit_lock','1606774372:1');
INSERT INTO `wp_postmeta` VALUES (514,91,'_wp_attached_file','2020/11/juniperphoton-1mElhkEG-YE-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (515,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:532;s:4:\"file\";s:46:\"2020/11/juniperphoton-1mElhkEG-YE-unsplash.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"juniperphoton-1mElhkEG-YE-unsplash-300x249.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"juniperphoton-1mElhkEG-YE-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"sliderSize\";a:4:{s:4:\"file\";s:46:\"juniperphoton-1mElhkEG-YE-unsplash-640x450.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (516,90,'_thumbnail_id','91');
INSERT INTO `wp_postmeta` VALUES (519,93,'_wp_attached_file','2020/11/david-todd-mccarty-vQdbroZL4ZY-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (520,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:51:\"2020/11/david-todd-mccarty-vQdbroZL4ZY-unsplash.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"david-todd-mccarty-vQdbroZL4ZY-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"david-todd-mccarty-vQdbroZL4ZY-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (521,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (522,1,'_thumbnail_id','93');
INSERT INTO `wp_postmeta` VALUES (525,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (526,95,'_edit_lock','1606949496:1');
INSERT INTO `wp_postmeta` VALUES (527,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (528,97,'_edit_lock','1606948512:1');
INSERT INTO `wp_postmeta` VALUES (529,95,'get_in_touch_text','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Similique, possimus.');
INSERT INTO `wp_postmeta` VALUES (530,95,'_get_in_touch_text','field_5fc807089462a');
INSERT INTO `wp_postmeta` VALUES (531,95,'adress_contact_us','450 Main st, Boston MA');
INSERT INTO `wp_postmeta` VALUES (532,95,'_adress_contact_us','field_5fc807169462b');
INSERT INTO `wp_postmeta` VALUES (533,95,'email_contact_us','glozzom@gmail.com');
INSERT INTO `wp_postmeta` VALUES (534,95,'_email_contact_us','field_5fc8072a9462c');
INSERT INTO `wp_postmeta` VALUES (535,95,'phone_contact_us','(666) 6868-202');
INSERT INTO `wp_postmeta` VALUES (536,95,'_phone_contact_us','field_5fc807369462d');
INSERT INTO `wp_postmeta` VALUES (537,102,'get_in_touch_text','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Similique, possimus.');
INSERT INTO `wp_postmeta` VALUES (538,102,'_get_in_touch_text','field_5fc807089462a');
INSERT INTO `wp_postmeta` VALUES (539,102,'adress_contact_us','450 Main st, Boston MA');
INSERT INTO `wp_postmeta` VALUES (540,102,'_adress_contact_us','field_5fc807169462b');
INSERT INTO `wp_postmeta` VALUES (541,102,'email_contact_us','glozzom@gmail.com');
INSERT INTO `wp_postmeta` VALUES (542,102,'_email_contact_us','field_5fc8072a9462c');
INSERT INTO `wp_postmeta` VALUES (543,102,'phone_contact_us','(666) 6868-202');
INSERT INTO `wp_postmeta` VALUES (544,102,'_phone_contact_us','field_5fc807369462d');
INSERT INTO `wp_postmeta` VALUES (545,103,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (546,103,'_edit_lock','1606949346:1');
INSERT INTO `wp_postmeta` VALUES (547,108,'_wp_attached_file','2020/12/person1.jpg');
INSERT INTO `wp_postmeta` VALUES (548,108,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:19:\"2020/12/person1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"person1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (549,109,'_wp_attached_file','2020/12/person2.jpg');
INSERT INTO `wp_postmeta` VALUES (550,109,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:19:\"2020/12/person2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"person2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (551,110,'_wp_attached_file','2020/12/person3.jpg');
INSERT INTO `wp_postmeta` VALUES (552,110,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:19:\"2020/12/person3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"person3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (553,111,'_wp_attached_file','2020/12/person4.jpg');
INSERT INTO `wp_postmeta` VALUES (554,111,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:19:\"2020/12/person4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"person4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (555,95,'staff_members_0_staff_name','John Swarovski');
INSERT INTO `wp_postmeta` VALUES (556,95,'_staff_members_0_staff_name','field_5fc817936c742');
INSERT INTO `wp_postmeta` VALUES (557,95,'staff_members_0_staff_position','CEO');
INSERT INTO `wp_postmeta` VALUES (558,95,'_staff_members_0_staff_position','field_5fc817ae6c743');
INSERT INTO `wp_postmeta` VALUES (559,95,'staff_members_0_staff_picture','110');
INSERT INTO `wp_postmeta` VALUES (560,95,'_staff_members_0_staff_picture','field_5fc817716c741');
INSERT INTO `wp_postmeta` VALUES (561,95,'staff_members_1_staff_name','Jane Doe');
INSERT INTO `wp_postmeta` VALUES (562,95,'_staff_members_1_staff_name','field_5fc817936c742');
INSERT INTO `wp_postmeta` VALUES (563,95,'staff_members_1_staff_position','Marketing Manager');
INSERT INTO `wp_postmeta` VALUES (564,95,'_staff_members_1_staff_position','field_5fc817ae6c743');
INSERT INTO `wp_postmeta` VALUES (565,95,'staff_members_1_staff_picture','108');
INSERT INTO `wp_postmeta` VALUES (566,95,'_staff_members_1_staff_picture','field_5fc817716c741');
INSERT INTO `wp_postmeta` VALUES (567,95,'staff_members_2_staff_name','Sara Williams');
INSERT INTO `wp_postmeta` VALUES (568,95,'_staff_members_2_staff_name','field_5fc817936c742');
INSERT INTO `wp_postmeta` VALUES (569,95,'staff_members_2_staff_position','Business Manager');
INSERT INTO `wp_postmeta` VALUES (570,95,'_staff_members_2_staff_position','field_5fc817ae6c743');
INSERT INTO `wp_postmeta` VALUES (571,95,'staff_members_2_staff_picture','109');
INSERT INTO `wp_postmeta` VALUES (572,95,'_staff_members_2_staff_picture','field_5fc817716c741');
INSERT INTO `wp_postmeta` VALUES (573,95,'staff_members_3_staff_name','Andrew Smart');
INSERT INTO `wp_postmeta` VALUES (574,95,'_staff_members_3_staff_name','field_5fc817936c742');
INSERT INTO `wp_postmeta` VALUES (575,95,'staff_members_3_staff_position','Coffee Maker');
INSERT INTO `wp_postmeta` VALUES (576,95,'_staff_members_3_staff_position','field_5fc817ae6c743');
INSERT INTO `wp_postmeta` VALUES (577,95,'staff_members_3_staff_picture','111');
INSERT INTO `wp_postmeta` VALUES (578,95,'_staff_members_3_staff_picture','field_5fc817716c741');
INSERT INTO `wp_postmeta` VALUES (579,95,'staff_members','4');
INSERT INTO `wp_postmeta` VALUES (580,95,'_staff_members','field_5fc8173a6c740');
INSERT INTO `wp_postmeta` VALUES (581,112,'get_in_touch_text','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Similique, possimus.');
INSERT INTO `wp_postmeta` VALUES (582,112,'_get_in_touch_text','field_5fc807089462a');
INSERT INTO `wp_postmeta` VALUES (583,112,'adress_contact_us','450 Main st, Boston MA');
INSERT INTO `wp_postmeta` VALUES (584,112,'_adress_contact_us','field_5fc807169462b');
INSERT INTO `wp_postmeta` VALUES (585,112,'email_contact_us','glozzom@gmail.com');
INSERT INTO `wp_postmeta` VALUES (586,112,'_email_contact_us','field_5fc8072a9462c');
INSERT INTO `wp_postmeta` VALUES (587,112,'phone_contact_us','(666) 6868-202');
INSERT INTO `wp_postmeta` VALUES (588,112,'_phone_contact_us','field_5fc807369462d');
INSERT INTO `wp_postmeta` VALUES (589,112,'staff_members_0_staff_name','John Swarovski');
INSERT INTO `wp_postmeta` VALUES (590,112,'_staff_members_0_staff_name','field_5fc817936c742');
INSERT INTO `wp_postmeta` VALUES (591,112,'staff_members_0_staff_position','CEO');
INSERT INTO `wp_postmeta` VALUES (592,112,'_staff_members_0_staff_position','field_5fc817ae6c743');
INSERT INTO `wp_postmeta` VALUES (593,112,'staff_members_0_staff_picture','110');
INSERT INTO `wp_postmeta` VALUES (594,112,'_staff_members_0_staff_picture','field_5fc817716c741');
INSERT INTO `wp_postmeta` VALUES (595,112,'staff_members_1_staff_name','Jane Doe');
INSERT INTO `wp_postmeta` VALUES (596,112,'_staff_members_1_staff_name','field_5fc817936c742');
INSERT INTO `wp_postmeta` VALUES (597,112,'staff_members_1_staff_position','Marketing Manager');
INSERT INTO `wp_postmeta` VALUES (598,112,'_staff_members_1_staff_position','field_5fc817ae6c743');
INSERT INTO `wp_postmeta` VALUES (599,112,'staff_members_1_staff_picture','108');
INSERT INTO `wp_postmeta` VALUES (600,112,'_staff_members_1_staff_picture','field_5fc817716c741');
INSERT INTO `wp_postmeta` VALUES (601,112,'staff_members_2_staff_name','Sara Williams');
INSERT INTO `wp_postmeta` VALUES (602,112,'_staff_members_2_staff_name','field_5fc817936c742');
INSERT INTO `wp_postmeta` VALUES (603,112,'staff_members_2_staff_position','Business Manager');
INSERT INTO `wp_postmeta` VALUES (604,112,'_staff_members_2_staff_position','field_5fc817ae6c743');
INSERT INTO `wp_postmeta` VALUES (605,112,'staff_members_2_staff_picture','109');
INSERT INTO `wp_postmeta` VALUES (606,112,'_staff_members_2_staff_picture','field_5fc817716c741');
INSERT INTO `wp_postmeta` VALUES (607,112,'staff_members_3_staff_name','Andrew Smart');
INSERT INTO `wp_postmeta` VALUES (608,112,'_staff_members_3_staff_name','field_5fc817936c742');
INSERT INTO `wp_postmeta` VALUES (609,112,'staff_members_3_staff_position','Coffee Maker');
INSERT INTO `wp_postmeta` VALUES (610,112,'_staff_members_3_staff_position','field_5fc817ae6c743');
INSERT INTO `wp_postmeta` VALUES (611,112,'staff_members_3_staff_picture','111');
INSERT INTO `wp_postmeta` VALUES (612,112,'_staff_members_3_staff_picture','field_5fc817716c741');
INSERT INTO `wp_postmeta` VALUES (613,112,'staff_members','4');
INSERT INTO `wp_postmeta` VALUES (614,112,'_staff_members','field_5fc8173a6c740');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-11-23 20:57:02','2020-11-23 20:57:02','<!-- wp:paragraph -->\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<!-- /wp:paragraph -->','Where can I get some?','','publish','open','open','','hello-world','','','2020-11-30 22:15:37','2020-11-30 22:15:37','',0,'http://glozzom.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (7,1,'2020-11-24 21:09:00','2020-11-24 21:09:00','','Home','','publish','closed','closed','','home','','','2020-11-26 18:25:55','2020-11-26 18:25:55','',0,'http://glozzom.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-11-24 21:09:00','2020-11-24 21:09:00','','Home','','inherit','closed','closed','','7-revision-v1','','','2020-11-24 21:09:00','2020-11-24 21:09:00','',7,'http://glozzom.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-11-24 21:09:09','2020-11-24 21:09:09','','Blog','','publish','closed','closed','','blog','','','2020-11-24 21:09:09','2020-11-24 21:09:09','',0,'http://glozzom.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-11-24 21:09:09','2020-11-24 21:09:09','','Blog','','inherit','closed','closed','','9-revision-v1','','','2020-11-24 21:09:09','2020-11-24 21:09:09','',9,'http://glozzom.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-11-24 22:07:15','2020-11-24 22:07:15','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Carousel Slider','carousel-slider','publish','closed','closed','','group_5fbd834c02a29','','','2020-11-25 23:06:09','2020-11-25 23:06:09','',0,'http://glozzom.local/?post_type=acf-field-group&#038;p=12',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-11-24 22:07:15','2020-11-24 22:07:15','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','Carousel Slider','carousel_slider','publish','closed','closed','','field_5fbd835225bfc','','','2020-11-24 22:07:15','2020-11-24 22:07:15','',12,'http://glozzom.local/?post_type=acf-field&p=13',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-11-24 22:07:15','2020-11-24 22:07:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Carousel Title','carousel_title','publish','closed','closed','','field_5fbd837025bfd','','','2020-11-24 22:07:15','2020-11-24 22:07:15','',13,'http://glozzom.local/?post_type=acf-field&p=14',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-11-24 22:07:15','2020-11-24 22:07:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Carousel Subtitle','carousel_subtitle','publish','closed','closed','','field_5fbd838925bfe','','','2020-11-24 22:07:15','2020-11-24 22:07:15','',13,'http://glozzom.local/?post_type=acf-field&p=15',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-11-24 22:07:15','2020-11-24 22:07:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Carousel Image','carousel_image','publish','closed','closed','','field_5fbd83c225bff','','','2020-11-25 23:06:09','2020-11-25 23:06:09','',13,'http://glozzom.local/?post_type=acf-field&#038;p=16',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-11-24 22:07:15','2020-11-24 22:07:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Carousel Button Text','carousel_button_text','publish','closed','closed','','field_5fbd83ce25c00','','','2020-11-24 22:07:15','2020-11-24 22:07:15','',13,'http://glozzom.local/?post_type=acf-field&p=17',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-11-24 22:07:15','2020-11-24 22:07:15','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Carousel Button Link','carousel_button_link','publish','closed','closed','','field_5fbd83f625c01','','','2020-11-24 22:07:15','2020-11-24 22:07:15','',13,'http://glozzom.local/?post_type=acf-field&p=18',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-11-24 22:10:13','2020-11-24 22:10:13','','xps-uWFFw7leQNI-unsplash','','inherit','open','closed','','xps-uwffw7leqni-unsplash','','','2020-11-24 22:10:13','2020-11-24 22:10:13','',7,'http://glozzom.local/wp-content/uploads/2020/11/xps-uWFFw7leQNI-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-11-24 22:11:24','2020-11-24 22:11:24','','xps-dpbXgTh0Lac-unsplash','','inherit','open','closed','','xps-dpbxgth0lac-unsplash','','','2020-11-24 22:11:24','2020-11-24 22:11:24','',7,'http://glozzom.local/wp-content/uploads/2020/11/xps-dpbXgTh0Lac-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-11-24 22:12:11','2020-11-24 22:12:11','','amauri-mejia-NTL6NTJ7Bjs-unsplash','','inherit','open','closed','','amauri-mejia-ntl6ntj7bjs-unsplash','','','2020-11-24 22:12:11','2020-11-24 22:12:11','',7,'http://glozzom.local/wp-content/uploads/2020/11/amauri-mejia-NTL6NTJ7Bjs-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-11-24 22:12:35','2020-11-24 22:12:35','','Home','','inherit','closed','closed','','7-revision-v1','','','2020-11-24 22:12:35','2020-11-24 22:12:35','',7,'http://glozzom.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-11-25 21:31:50','2020-11-25 21:31:50','','laptop','','inherit','open','closed','','laptop','','','2020-11-25 21:36:15','2020-11-25 21:36:15','',7,'http://glozzom.local/wp-content/uploads/2020/11/laptop.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-11-25 21:35:09','2020-11-25 21:35:09','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Info section','info-section','publish','closed','closed','','group_5fbecdcac3e6e','','','2020-11-25 22:11:04','2020-11-25 22:11:04','',0,'http://glozzom.local/?post_type=acf-field-group&#038;p=25',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-11-25 21:35:09','2020-11-25 21:35:09','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Title','info_title','publish','closed','closed','','field_5fbecdd20d854','','','2020-11-25 21:37:06','2020-11-25 21:37:06','',25,'http://glozzom.local/?post_type=acf-field&#038;p=26',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-11-25 21:35:09','2020-11-25 21:35:09','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Description','info_description','publish','closed','closed','','field_5fbecde90d855','','','2020-11-25 21:37:06','2020-11-25 21:37:06','',25,'http://glozzom.local/?post_type=acf-field&#038;p=27',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-11-25 21:35:09','2020-11-25 21:35:09','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Image','info_image','publish','closed','closed','','field_5fbecdf30d856','','','2020-11-25 21:37:06','2020-11-25 21:37:06','',25,'http://glozzom.local/?post_type=acf-field&#038;p=28',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-11-25 21:36:15','2020-11-25 21:36:15','','Home','','inherit','closed','closed','','7-revision-v1','','','2020-11-25 21:36:15','2020-11-25 21:36:15','',7,'http://glozzom.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-11-25 21:43:07','2020-11-25 21:43:07','','Home','','inherit','closed','closed','','7-revision-v1','','','2020-11-25 21:43:07','2020-11-25 21:43:07','',7,'http://glozzom.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-11-25 22:11:04','2020-11-25 22:11:04','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Youtube Link','youtube_link','publish','closed','closed','','field_5fbed66773472','','','2020-11-25 22:11:04','2020-11-25 22:11:04','',25,'http://glozzom.local/?post_type=acf-field&p=31',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-11-25 22:11:30','2020-11-25 22:11:30','','Home','','inherit','closed','closed','','7-revision-v1','','','2020-11-25 22:11:30','2020-11-25 22:11:30','',7,'http://glozzom.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-11-25 22:39:23','2020-11-25 22:39:23','','jessica-lam-wUuo7WfoKS4-unsplash','','inherit','open','closed','','jessica-lam-wuuo7wfoks4-unsplash','','','2020-11-25 22:39:23','2020-11-25 22:39:23','',0,'http://glozzom.local/wp-content/uploads/2020/11/jessica-lam-wUuo7WfoKS4-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-11-26 18:23:33','2020-11-26 18:23:33','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Gallery','gallery','publish','closed','closed','','group_5fbff2691f380','','','2020-11-26 20:21:18','2020-11-26 20:21:18','',0,'http://glozzom.local/?post_type=acf-field-group&#038;p=34',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-11-26 18:23:33','2020-11-26 18:23:33','a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Gallery Section','gallery_section','publish','closed','closed','','field_5fbff26ec15e6','','','2020-11-26 20:21:18','2020-11-26 20:21:18','',34,'http://glozzom.local/?post_type=acf-field&#038;p=35',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-11-26 18:25:07','2020-11-26 18:25:07','','alexandre-boucey-2TZKBeXw47w-unsplash','','inherit','open','closed','','alexandre-boucey-2tzkbexw47w-unsplash','','','2020-11-26 18:25:50','2020-11-26 18:25:50','',7,'http://glozzom.local/wp-content/uploads/2020/11/alexandre-boucey-2TZKBeXw47w-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-11-26 18:25:08','2020-11-26 18:25:08','','max-ostwalt-Tsb3DJnpmUE-unsplash','','inherit','open','closed','','max-ostwalt-tsb3djnpmue-unsplash','','','2020-11-26 18:25:08','2020-11-26 18:25:08','',7,'http://glozzom.local/wp-content/uploads/2020/11/max-ostwalt-Tsb3DJnpmUE-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-11-26 18:25:09','2020-11-26 18:25:09','','tobias-rademacher-XQrOgytqUvE-unsplash','','inherit','open','closed','','tobias-rademacher-xqrogytquve-unsplash','','','2020-11-26 18:25:09','2020-11-26 18:25:09','',7,'http://glozzom.local/wp-content/uploads/2020/11/tobias-rademacher-XQrOgytqUvE-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-11-26 18:25:11','2020-11-26 18:25:11','','nick-jones-R8pndnPmmCc-unsplash','','inherit','open','closed','','nick-jones-r8pndnpmmcc-unsplash','','','2020-11-26 18:25:11','2020-11-26 18:25:11','',7,'http://glozzom.local/wp-content/uploads/2020/11/nick-jones-R8pndnPmmCc-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-11-26 18:25:14','2020-11-26 18:25:14','','samsung-memory-9sIyWXf8ITI-unsplash','','inherit','open','closed','','samsung-memory-9siywxf8iti-unsplash','','','2020-11-26 18:25:14','2020-11-26 18:25:14','',7,'http://glozzom.local/wp-content/uploads/2020/11/samsung-memory-9sIyWXf8ITI-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-11-26 18:25:15','2020-11-26 18:25:15','','daoud-abismail-Elv0Gk2fCzo-unsplash','','inherit','open','closed','','daoud-abismail-elv0gk2fczo-unsplash','','','2020-11-26 18:25:15','2020-11-26 18:25:15','',7,'http://glozzom.local/wp-content/uploads/2020/11/daoud-abismail-Elv0Gk2fCzo-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-11-26 18:25:18','2020-11-26 18:25:18','','larisa-birta-BPG4Sc0OISU-unsplash','','inherit','open','closed','','larisa-birta-bpg4sc0oisu-unsplash','','','2020-11-26 18:25:18','2020-11-26 18:25:18','',7,'http://glozzom.local/wp-content/uploads/2020/11/larisa-birta-BPG4Sc0OISU-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-11-26 18:25:21','2020-11-26 18:25:21','','brittney-weng-Zd9BBBqebQc-unsplash','','inherit','open','closed','','brittney-weng-zd9bbbqebqc-unsplash','','','2020-11-26 18:25:21','2020-11-26 18:25:21','',7,'http://glozzom.local/wp-content/uploads/2020/11/brittney-weng-Zd9BBBqebQc-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-11-26 18:25:24','2020-11-26 18:25:24','','chewy-DR6wPYR2DRc-unsplash','','inherit','open','closed','','chewy-dr6wpyr2drc-unsplash','','','2020-11-26 18:25:24','2020-11-26 18:25:24','',7,'http://glozzom.local/wp-content/uploads/2020/11/chewy-DR6wPYR2DRc-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-11-26 18:25:55','2020-11-26 18:25:55','','Home','','inherit','closed','closed','','7-revision-v1','','','2020-11-26 18:25:55','2020-11-26 18:25:55','',7,'http://glozzom.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-11-27 21:23:59','2020-11-27 21:23:59','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!\r\n\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!','About Us','','publish','closed','closed','','about-us','','','2020-11-27 22:47:07','2020-11-27 22:47:07','',0,'http://glozzom.local/?page_id=46',0,'page','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-11-27 21:23:59','2020-11-27 21:23:59','','About Us','','inherit','closed','closed','','46-revision-v1','','','2020-11-27 21:23:59','2020-11-27 21:23:59','',46,'http://glozzom.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-11-27 21:52:14','2020-11-27 21:52:14','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!\r\n\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!','About Us','','inherit','closed','closed','','46-revision-v1','','','2020-11-27 21:52:14','2020-11-27 21:52:14','',46,'http://glozzom.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-11-27 21:54:36','2020-11-27 21:54:36','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"46\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','About Us Image','about-us-image','publish','closed','closed','','group_5fc1758399ab4','','','2020-11-27 21:56:53','2020-11-27 21:56:53','',0,'http://glozzom.local/?post_type=acf-field-group&#038;p=49',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-11-27 21:54:36','2020-11-27 21:54:36','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','About Us Image','about_us_image','publish','closed','closed','','field_5fc1758bc3e6e','','','2020-11-27 21:56:53','2020-11-27 21:56:53','',49,'http://glozzom.local/?post_type=acf-field&#038;p=50',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-11-27 21:55:30','2020-11-27 21:55:30','','127889078_10164391364375463_9206118827013724858_n','','inherit','open','closed','','127889078_10164391364375463_9206118827013724858_n','','','2020-11-27 21:55:30','2020-11-27 21:55:30','',46,'http://glozzom.local/wp-content/uploads/2020/11/127889078_10164391364375463_9206118827013724858_n.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-11-27 21:55:53','2020-11-27 21:55:53','','pierre-pavlovic-6lE5mVJ7I_o-unsplash','','inherit','open','closed','','pierre-pavlovic-6le5mvj7i_o-unsplash','','','2020-11-27 21:55:53','2020-11-27 21:55:53','',46,'http://glozzom.local/wp-content/uploads/2020/11/pierre-pavlovic-6lE5mVJ7I_o-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-11-27 21:55:57','2020-11-27 21:55:57','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!\r\n\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!','About Us','','inherit','closed','closed','','46-revision-v1','','','2020-11-27 21:55:57','2020-11-27 21:55:57','',46,'http://glozzom.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-11-27 22:23:41','2020-11-27 22:23:41','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"46\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Testimonials','testimonials','publish','closed','closed','','group_5fc17b70eb2fb','','','2020-11-27 22:46:44','2020-11-27 22:46:44','',0,'http://glozzom.local/?post_type=acf-field-group&#038;p=54',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-11-27 22:23:41','2020-11-27 22:23:41','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','Testimonials','testimonials','publish','closed','closed','','field_5fc17b763b039','','','2020-11-27 22:23:41','2020-11-27 22:23:41','',54,'http://glozzom.local/?post_type=acf-field&p=55',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-11-27 22:23:41','2020-11-27 22:23:41','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Testimonial','testimonial_comment','publish','closed','closed','','field_5fc17b993b03b','','','2020-11-27 22:25:14','2020-11-27 22:25:14','',55,'http://glozzom.local/?post_type=acf-field&#038;p=56',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-11-27 22:23:41','2020-11-27 22:23:41','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Author','testimonial_author','publish','closed','closed','','field_5fc17ba53b03c','','','2020-11-27 22:25:14','2020-11-27 22:25:14','',55,'http://glozzom.local/?post_type=acf-field&#038;p=57',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-11-27 22:26:14','2020-11-27 22:26:14','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!\r\n\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!','About Us','','inherit','closed','closed','','46-revision-v1','','','2020-11-27 22:26:14','2020-11-27 22:26:14','',46,'http://glozzom.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-11-27 22:46:44','2020-11-27 22:46:44','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Company','testimonial_company','publish','closed','closed','','field_5fc181c58be65','','','2020-11-27 22:46:44','2020-11-27 22:46:44','',55,'http://glozzom.local/?post_type=acf-field&p=59',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-11-27 22:47:07','2020-11-27 22:47:07','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!\r\n\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Ducimus fugit recusandae dolorum tenetur perspiciatis fuga aperiam assumenda incidunt inventore numquam! Earum quos similique, incidunt ea nemo ducimus, eveniet unde odit dolorum, esse odio rerum sed quasi. Minus perferendis ab voluptas. Debitis veritatis reiciendis eveniet itaque quos dolores est! Dolorum, reprehenderit!','About Us','','inherit','closed','closed','','46-revision-v1','','','2020-11-27 22:47:07','2020-11-27 22:47:07','',46,'http://glozzom.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-11-28 21:04:48','2020-11-28 21:04:48','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"service\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Our Services','our-services','publish','closed','closed','','group_5fc2ba54d2015','','','2020-11-28 21:56:17','2020-11-28 21:56:17','',0,'http://glozzom.local/?post_type=acf-field-group&#038;p=61',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-11-28 21:04:48','2020-11-28 21:04:48','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Service Name','service_name','publish','closed','closed','','field_5fc2ba80dec2c','','','2020-11-28 21:04:48','2020-11-28 21:04:48','',61,'http://glozzom.local/?post_type=acf-field&p=62',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-11-28 21:04:48','2020-11-28 21:04:48','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Service Cost','service_cost','publish','closed','closed','','field_5fc2bac8dec2d','','','2020-11-28 21:04:48','2020-11-28 21:04:48','',61,'http://glozzom.local/?post_type=acf-field&p=63',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-11-28 21:04:48','2020-11-28 21:04:48','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Service Description','service_description','publish','closed','closed','','field_5fc2bad8dec2e','','','2020-11-28 21:04:48','2020-11-28 21:04:48','',61,'http://glozzom.local/?post_type=acf-field&p=64',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-11-28 21:04:48','2020-11-28 21:04:48','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','Service Features','service_features','publish','closed','closed','','field_5fc2bb09dec2f','','','2020-11-28 21:04:48','2020-11-28 21:04:48','',61,'http://glozzom.local/?post_type=acf-field&p=65',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-11-28 21:04:48','2020-11-28 21:04:48','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Feature','feature','publish','closed','closed','','field_5fc2bb1ddec30','','','2020-11-28 21:04:48','2020-11-28 21:04:48','',65,'http://glozzom.local/?post_type=acf-field&p=66',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-11-28 21:04:48','2020-11-28 21:04:48','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Service Link','service_link','publish','closed','closed','','field_5fc2bb47dec31','','','2020-11-28 21:04:48','2020-11-28 21:04:48','',61,'http://glozzom.local/?post_type=acf-field&p=67',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-11-28 21:04:48','2020-11-28 21:04:48','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Plan Duration','plan_duration','publish','closed','closed','','field_5fc2bb59dec32','','','2020-11-28 21:56:17','2020-11-28 21:56:17','',61,'http://glozzom.local/?post_type=acf-field&#038;p=68',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-11-28 21:04:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-28 21:04:53','0000-00-00 00:00:00','',0,'http://glozzom.local/?post_type=service&p=69',0,'service','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-11-28 21:05:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-28 21:05:07','0000-00-00 00:00:00','',0,'http://glozzom.local/?post_type=service&p=70',0,'service','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-11-28 21:05:52','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-28 21:05:52','0000-00-00 00:00:00','',0,'http://glozzom.local/?post_type=service&p=71',0,'service','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-11-28 21:05:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-28 21:05:57','0000-00-00 00:00:00','',0,'http://glozzom.local/?post_type=service&p=72',0,'service','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-11-28 21:06:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-28 21:06:10','0000-00-00 00:00:00','',0,'http://glozzom.local/?post_type=service&p=73',0,'service','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-11-28 21:06:52','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-28 21:06:52','0000-00-00 00:00:00','',0,'http://glozzom.local/?post_type=service&p=74',0,'service','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-11-28 21:12:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-28 21:12:56','0000-00-00 00:00:00','',0,'http://glozzom.local/?post_type=service&p=76',0,'service','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-11-28 21:13:05','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-28 21:13:05','0000-00-00 00:00:00','',0,'http://glozzom.local/?post_type=service&p=77',0,'service','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-11-28 21:20:05','2020-11-28 21:20:05','','doesn\'t matter','','trash','closed','closed','','doesnt-matter__trashed','','','2020-11-28 21:53:45','2020-11-28 21:53:45','',0,'http://glozzom.local/?post_type=service&#038;p=78',0,'service','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-11-28 21:56:01','2020-11-28 21:56:01','','Service Plan One','','publish','closed','closed','','service-plan-one','','','2020-11-30 22:08:06','2020-11-30 22:08:06','',0,'http://glozzom.local/?post_type=service&#038;p=79',0,'service','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-11-28 21:57:19','2020-11-28 21:57:19','','Service Plan Two','','publish','closed','closed','','service-plan-two','','','2020-11-28 21:57:19','2020-11-28 21:57:19','',0,'http://glozzom.local/?post_type=service&#038;p=80',0,'service','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-11-28 21:58:08','2020-11-28 21:58:08','','Service Plan Three','','publish','closed','closed','','service-plan-three','','','2020-11-28 21:58:08','2020-11-28 21:58:08','',0,'http://glozzom.local/?post_type=service&#038;p=81',0,'service','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-11-29 22:46:47','2020-11-29 22:46:47','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"service\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Repeater for FAQ','repeater-for-faq','publish','closed','closed','','group_5fc4249b8a192','','','2020-11-29 22:46:47','2020-11-29 22:46:47','',0,'http://glozzom.local/?post_type=acf-field-group&#038;p=82',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-11-29 22:46:47','2020-11-29 22:46:47','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','FAQ Repeater','faq_repeater','publish','closed','closed','','field_5fc424a250322','','','2020-11-29 22:46:47','2020-11-29 22:46:47','',82,'http://glozzom.local/?post_type=acf-field&p=83',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-11-29 22:46:47','2020-11-29 22:46:47','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Question','question','publish','closed','closed','','field_5fc424b050323','','','2020-11-29 22:46:47','2020-11-29 22:46:47','',83,'http://glozzom.local/?post_type=acf-field&p=84',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-11-29 22:46:47','2020-11-29 22:46:47','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"70\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Answer','answer','publish','closed','closed','','field_5fc424c650324','','','2020-11-29 22:46:47','2020-11-29 22:46:47','',83,'http://glozzom.local/?post_type=acf-field&p=85',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-11-30 21:55:38','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-11-30 21:55:38','0000-00-00 00:00:00','',0,'http://glozzom.local/?p=86',0,'post','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-11-30 22:14:49','2020-11-30 22:14:49','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','What is Lorem Ipsum?','','publish','open','open','','what-is-lorem-ipsum','','','2020-11-30 22:14:49','2020-11-30 22:14:49','',0,'http://glozzom.local/?p=87',0,'post','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-11-30 22:14:46','2020-11-30 22:14:46','','tim-hufner-UBJrRodM2Xk-unsplash','','inherit','open','closed','','tim-hufner-ubjrrodm2xk-unsplash','','','2020-11-30 22:14:46','2020-11-30 22:14:46','',87,'http://glozzom.local/wp-content/uploads/2020/11/tim-hufner-UBJrRodM2Xk-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-11-30 22:14:49','2020-11-30 22:14:49','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','What is Lorem Ipsum?','','inherit','closed','closed','','87-revision-v1','','','2020-11-30 22:14:49','2020-11-30 22:14:49','',87,'http://glozzom.local/87-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-11-30 22:15:13','2020-11-30 22:15:13','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','Why do we use it?','','publish','open','open','','why-do-we-use-it','','','2020-11-30 22:15:13','2020-11-30 22:15:13','',0,'http://glozzom.local/?p=90',0,'post','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-11-30 22:15:10','2020-11-30 22:15:10','','juniperphoton-1mElhkEG-YE-unsplash','','inherit','open','closed','','juniperphoton-1melhkeg-ye-unsplash','','','2020-11-30 22:15:10','2020-11-30 22:15:10','',90,'http://glozzom.local/wp-content/uploads/2020/11/juniperphoton-1mElhkEG-YE-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-11-30 22:15:13','2020-11-30 22:15:13','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','Why do we use it?','','inherit','closed','closed','','90-revision-v1','','','2020-11-30 22:15:13','2020-11-30 22:15:13','',90,'http://glozzom.local/90-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-11-30 22:15:35','2020-11-30 22:15:35','','david-todd-mccarty-vQdbroZL4ZY-unsplash','','inherit','open','closed','','david-todd-mccarty-vqdbrozl4zy-unsplash','','','2020-11-30 22:15:35','2020-11-30 22:15:35','',1,'http://glozzom.local/wp-content/uploads/2020/11/david-todd-mccarty-vQdbroZL4ZY-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-11-30 22:15:37','2020-11-30 22:15:37','<!-- wp:paragraph -->\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<!-- /wp:paragraph -->','Where can I get some?','','inherit','closed','closed','','1-revision-v1','','','2020-11-30 22:15:37','2020-11-30 22:15:37','',1,'http://glozzom.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-12-02 21:20:10','2020-12-02 21:20:10','','Contact Us','','publish','closed','closed','','contact-us','','','2020-12-02 22:42:45','2020-12-02 22:42:45','',0,'http://glozzom.local/?page_id=95',0,'page','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-12-02 21:20:10','2020-12-02 21:20:10','','Contact Us','','inherit','closed','closed','','95-revision-v1','','','2020-12-02 21:20:10','2020-12-02 21:20:10','',95,'http://glozzom.local/95-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-12-02 21:29:46','2020-12-02 21:29:46','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"95\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Contact Us Info','contact-us-info','publish','closed','closed','','group_5fc806f279628','','','2020-12-02 21:31:33','2020-12-02 21:31:33','',0,'http://glozzom.local/?post_type=acf-field-group&#038;p=97',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-12-02 21:29:46','2020-12-02 21:29:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Get in touch','get_in_touch_text','publish','closed','closed','','field_5fc807089462a','','','2020-12-02 21:31:33','2020-12-02 21:31:33','',97,'http://glozzom.local/?post_type=acf-field&#038;p=98',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-12-02 21:29:46','2020-12-02 21:29:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Adress','adress_contact_us','publish','closed','closed','','field_5fc807169462b','','','2020-12-02 21:31:33','2020-12-02 21:31:33','',97,'http://glozzom.local/?post_type=acf-field&#038;p=99',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2020-12-02 21:29:46','2020-12-02 21:29:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Email','email_contact_us','publish','closed','closed','','field_5fc8072a9462c','','','2020-12-02 21:31:33','2020-12-02 21:31:33','',97,'http://glozzom.local/?post_type=acf-field&#038;p=100',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2020-12-02 21:29:46','2020-12-02 21:29:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Phone Number','phone_contact_us','publish','closed','closed','','field_5fc807369462d','','','2020-12-02 21:31:33','2020-12-02 21:31:33','',97,'http://glozzom.local/?post_type=acf-field&#038;p=101',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2020-12-02 21:30:32','2020-12-02 21:30:32','','Contact Us','','inherit','closed','closed','','95-revision-v1','','','2020-12-02 21:30:32','2020-12-02 21:30:32','',95,'http://glozzom.local/95-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2020-12-02 22:39:59','2020-12-02 22:39:59','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"95\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Staff Members','staff-members','publish','closed','closed','','group_5fc817332cf78','','','2020-12-02 22:51:15','2020-12-02 22:51:15','',0,'http://glozzom.local/?post_type=acf-field-group&#038;p=103',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2020-12-02 22:39:59','2020-12-02 22:39:59','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:16:\"Add Staff Member\";}','Staff Members','staff_members','publish','closed','closed','','field_5fc8173a6c740','','','2020-12-02 22:39:59','2020-12-02 22:39:59','',103,'http://glozzom.local/?post_type=acf-field&p=104',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2020-12-02 22:39:59','2020-12-02 22:39:59','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Picture','staff_picture','publish','closed','closed','','field_5fc817716c741','','','2020-12-02 22:51:15','2020-12-02 22:51:15','',104,'http://glozzom.local/?post_type=acf-field&#038;p=105',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2020-12-02 22:39:59','2020-12-02 22:39:59','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Name','staff_name','publish','closed','closed','','field_5fc817936c742','','','2020-12-02 22:40:28','2020-12-02 22:40:28','',104,'http://glozzom.local/?post_type=acf-field&#038;p=106',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2020-12-02 22:39:59','2020-12-02 22:39:59','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Position','staff_position','publish','closed','closed','','field_5fc817ae6c743','','','2020-12-02 22:40:28','2020-12-02 22:40:28','',104,'http://glozzom.local/?post_type=acf-field&#038;p=107',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2020-12-02 22:41:25','2020-12-02 22:41:25','','person1','','inherit','open','closed','','person1','','','2020-12-02 22:41:25','2020-12-02 22:41:25','',95,'http://glozzom.local/wp-content/uploads/2020/12/person1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (109,1,'2020-12-02 22:41:44','2020-12-02 22:41:44','','person2','','inherit','open','closed','','person2','','','2020-12-02 22:41:44','2020-12-02 22:41:44','',95,'http://glozzom.local/wp-content/uploads/2020/12/person2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (110,1,'2020-12-02 22:42:11','2020-12-02 22:42:11','','person3','','inherit','open','closed','','person3','','','2020-12-02 22:42:11','2020-12-02 22:42:11','',95,'http://glozzom.local/wp-content/uploads/2020/12/person3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (111,1,'2020-12-02 22:42:37','2020-12-02 22:42:37','','person4','','inherit','open','closed','','person4','','','2020-12-02 22:42:37','2020-12-02 22:42:37','',95,'http://glozzom.local/wp-content/uploads/2020/12/person4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (112,1,'2020-12-02 22:42:45','2020-12-02 22:42:45','','Contact Us','','inherit','closed','closed','','95-revision-v1','','','2020-12-02 22:42:45','2020-12-02 22:42:45','',95,'http://glozzom.local/95-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (87,1,0);
INSERT INTO `wp_term_relationships` VALUES (90,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"597e92bb3912d0da07fa970f55805afceae5b4ab9dca605ff6de68f8b41704ac\";a:4:{s:10:\"expiration\";i:1607116665;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\";s:5:\"login\";i:1606943865;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','86');
INSERT INTO `wp_usermeta` VALUES (18,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_dashboard','a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings','libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings-time','1606250619');
INSERT INTO `wp_usermeta` VALUES (22,1,'meta-box-order_page','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:131:\"acf-group_5fbd834c02a29,acf-group_5fbecdcac3e6e,acf-group_5fbff2691f380,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'screen_layout_page','2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$Bxx4JRxBbZWeOGfd5ZEKHsn2nidwPY0','admin','dev-email@flywheel.local','http://glozzom.local','2020-11-23 20:57:02','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-05 18:30:53
