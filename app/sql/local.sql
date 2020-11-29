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
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1606607824;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1606640224;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1606683422;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606683612;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606683613;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606856223;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
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
INSERT INTO `wp_options` VALUES (118,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1606597094;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1606247926;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (125,'_site_transient_timeout_browser_8d3fec2581d3961f3037851d5cc0039c','1606770013','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_browser_8d3fec2581d3961f3037851d5cc0039c','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.198\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (127,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1606770013','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (142,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (145,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (160,'current_theme','Glozzom','yes');
INSERT INTO `wp_options` VALUES (161,'theme_mods_glozzom','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (162,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (163,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606595682;s:7:\"checked\";a:1:{s:7:\"glozzom\";s:3:\"0.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (167,'_transient_health-check-site-status-result','{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (172,'recently_activated','a:2:{s:61:\"image-regenerate-select-crop/image-regenerate-select-crop.php\";i:1606343667;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:1606343592;}','yes');
INSERT INTO `wp_options` VALUES (179,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (184,'recovery_mode_email_last_sent','1606256142','yes');
INSERT INTO `wp_options` VALUES (214,'_transient_sirsc-plugin-notice_adons_notice','1','yes');
INSERT INTO `wp_options` VALUES (215,'sirsc_db_version','5.5','yes');
INSERT INTO `wp_options` VALUES (235,'_transient_timeout_acf_plugin_updates','1606678132','no');
INSERT INTO `wp_options` VALUES (236,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";}}','no');
INSERT INTO `wp_options` VALUES (247,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (252,'_site_transient_timeout_theme_roots','1606597482','no');
INSERT INTO `wp_options` VALUES (253,'_site_transient_theme_roots','a:1:{s:7:\"glozzom\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (257,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606597095;s:7:\"checked\";a:4:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:5:\"1.2.6\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.4\";}s:8:\"response\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"crop-thumbnails/crop-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/crop-thumbnails\";s:4:\"slug\";s:15:\"crop-thumbnails\";s:6:\"plugin\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/crop-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/crop-thumbnails.1.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";s:3:\"svg\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/crop-thumbnails/assets/banner-1544x500.jpg?rev=626571\";s:2:\"1x\";s:69:\"https://ps.w.org/crop-thumbnails/assets/banner-772x250.jpg?rev=626571\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (259,'_site_transient_timeout_available_translations','1606609132','no');
INSERT INTO `wp_options` VALUES (260,'_site_transient_available_translations','a:123:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 09:12:13\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-19 22:22:36\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-20 14:09:40\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.15/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.14/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-17 11:59:40\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-08 12:06:49\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.6\";s:7:\"updated\";s:19:\"2020-11-09 10:17:46\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.6/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-03 15:53:24\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-04 08:37:35\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-18 15:16:43\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.5.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-09 20:03:47\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.5.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-09 20:03:38\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-13 17:09:13\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-18 15:16:12\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-29 22:02:24\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.3/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 21:05:09\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-29 21:22:19\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-21 09:12:52\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 06:42:25\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 06:41:38\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-03-31 22:29:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 15:08:45\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 08:02:09\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-09 14:15:48\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-23 23:51:44\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-23 16:46:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.6/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 04:17:12\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-05 20:10:42\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 00:34:20\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 08:01:38\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:3:\"5.5\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-18 20:57:04\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-31 06:59:34\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 06:32:01\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-12 12:13:10\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-17 01:24:25\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-07 19:09:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 13:48:06\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-31 08:27:42\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-22 11:45:01\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-29 22:03:17\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.3/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-06 06:33:52\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-06 02:34:31\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-21 20:41:14\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-31 23:32:33\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2020-11-04 09:27:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-01 12:32:21\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2020-09-30 14:08:59\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.15/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.6\";s:7:\"updated\";s:19:\"2020-10-31 10:30:54\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.6/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-05 20:43:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.3/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.7\";s:7:\"updated\";s:19:\"2020-07-14 08:45:32\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.7/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-14 08:34:14\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.14/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-29 21:52:18\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-06 12:54:53\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-22 23:35:28\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-22 23:34:36\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.5.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-09 08:59:32\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-29 21:58:23\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-26 22:32:41\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-03 15:42:46\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.5.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-01 11:09:51\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-16 19:28:30\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-16 15:36:25\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 07:28:51\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-13 06:50:55\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-02 11:57:25\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"5.5\";s:7:\"updated\";s:19:\"2020-08-12 14:55:13\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-28 19:47:24\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-22 08:23:03\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-04 09:34:27\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-17 15:30:03\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:6:\"5.0.10\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0.10/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-13 09:29:34\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-29 21:56:52\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-11-27 13:01:48\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (9,7,'_edit_lock','1606513473:1');
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
INSERT INTO `wp_postmeta` VALUES (86,1,'_edit_lock','1606257024:1');
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
INSERT INTO `wp_postmeta` VALUES (378,61,'_edit_lock','1606602087:1');
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
INSERT INTO `wp_postmeta` VALUES (404,79,'_edit_lock','1606605817:1');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-11-23 20:57:02','2020-11-23 20:57:02','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-11-23 20:57:02','2020-11-23 20:57:02','',0,'http://glozzom.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (4,1,'2020-11-23 21:00:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-11-23 21:00:13','0000-00-00 00:00:00','',0,'http://glozzom.local/?p=4',0,'post','',0);
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
INSERT INTO `wp_posts` VALUES (23,1,'2020-11-24 22:14:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-24 22:14:34','0000-00-00 00:00:00','',0,'http://glozzom.local/?page_id=23',0,'page','',0);
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
INSERT INTO `wp_posts` VALUES (79,1,'2020-11-28 21:56:01','2020-11-28 21:56:01','','Service Plan One','','publish','closed','closed','','service-plan-one','','','2020-11-28 23:25:50','2020-11-28 23:25:50','',0,'http://glozzom.local/?post_type=service&#038;p=79',0,'service','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-11-28 21:57:19','2020-11-28 21:57:19','','Service Plan Two','','publish','closed','closed','','service-plan-two','','','2020-11-28 21:57:19','2020-11-28 21:57:19','',0,'http://glozzom.local/?post_type=service&#038;p=80',0,'service','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-11-28 21:58:08','2020-11-28 21:58:08','','Service Plan Three','','publish','closed','closed','','service-plan-three','','','2020-11-28 21:58:08','2020-11-28 21:58:08','',0,'http://glozzom.local/?post_type=service&#038;p=81',0,'service','',0);
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
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
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
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"59ee79433da21870f1fa86e79f4eef6cf43e4f3c559b48b665b8e2f3b1b1f5ae\";a:4:{s:10:\"expiration\";i:1606678454;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\";s:5:\"login\";i:1606505654;}s:64:\"18adfaec00f8295fc6db6b8fcdaeb4d35f3513c560fbcacdbab6b67378a2a827\";a:4:{s:10:\"expiration\";i:1606769712;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\";s:5:\"login\";i:1606596912;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
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

-- Dump completed on 2020-11-29  2:18:29
