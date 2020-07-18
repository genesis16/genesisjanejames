
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `z6y0_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z6y0_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=554 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `z6y0_options` WRITE;
/*!40000 ALTER TABLE `z6y0_options` DISABLE KEYS */;
INSERT INTO `z6y0_options` VALUES (1,'siteurl','http://jane-james.com.au/blog','yes'),(2,'home','http://jane-james.com.au/blog','yes'),(3,'blogname','Jane james','yes'),(4,'blogdescription','freelance wordpress developer','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','janeleeshian@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','6','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:7:{i:0;s:30:\"atomic-blocks/atomicblocks.php\";i:1;s:33:\"genesis-enews-extended/plugin.php\";i:2;s:43:\"instant-ide-manager/instant-ide-manager.php\";i:3;s:17:\"revisr/revisr.php\";i:4;s:43:\"simple-social-icons/simple-social-icons.php\";i:5;s:25:\"themer-pro/themer-pro.php\";i:6;s:24:\"wpforms-lite/wpforms.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','genesis','yes'),(41,'stylesheet','genesis-jane-james','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','47018','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','/home/theal029/jane-james.com.au/blog/wp-content/uploads','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','page','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:13:{s:12:\"_multiwidget\";i:1;i:1;a:4:{s:5:\"title\";s:6:\"Design\";s:4:\"text\";s:175:\"<p>With an emphasis on typography, white space, and mobile-optimized design, your website will look absolutely breathtaking.</p><p><a href=\"#\">Learn more about design</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:2;a:4:{s:5:\"title\";s:7:\"Content\";s:4:\"text\";s:180:\"<p>Our team will teach you the art of writing audience-focused content that will help you achieve the success you truly deserve.</p><p><a href=\"#\">Learn more about content</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"Strategy\";s:4:\"text\";s:182:\"<p>We help creative entrepreneurs build their digital business by focusing on three key elements of a successful online platform.</p><p><a href=\"#\">Learn more about strategy</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:4;a:4:{s:5:\"title\";s:6:\"Design\";s:4:\"text\";s:175:\"<p>With an emphasis on typography, white space, and mobile-optimized design, your website will look absolutely breathtaking.</p><p><a href=\"#\">Learn more about design</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:5;a:4:{s:5:\"title\";s:7:\"Content\";s:4:\"text\";s:180:\"<p>Our team will teach you the art of writing audience-focused content that will help you achieve the success you truly deserve.</p><p><a href=\"#\">Learn more about content</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:6;a:4:{s:5:\"title\";s:8:\"Strategy\";s:4:\"text\";s:182:\"<p>We help creative entrepreneurs build their digital business by focusing on three key elements of a successful online platform.</p><p><a href=\"#\">Learn more about strategy</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:7;a:4:{s:5:\"title\";s:6:\"Design\";s:4:\"text\";s:175:\"<p>With an emphasis on typography, white space, and mobile-optimized design, your website will look absolutely breathtaking.</p><p><a href=\"#\">Learn more about design</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:8;a:4:{s:5:\"title\";s:7:\"Content\";s:4:\"text\";s:180:\"<p>Our team will teach you the art of writing audience-focused content that will help you achieve the success you truly deserve.</p><p><a href=\"#\">Learn more about content</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:9;a:4:{s:5:\"title\";s:8:\"Strategy\";s:4:\"text\";s:182:\"<p>We help creative entrepreneurs build their digital business by focusing on three key elements of a successful online platform.</p><p><a href=\"#\">Learn more about strategy</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:10;a:4:{s:5:\"title\";s:6:\"Design\";s:4:\"text\";s:175:\"<p>With an emphasis on typography, white space, and mobile-optimized design, your website will look absolutely breathtaking.</p><p><a href=\"#\">Learn more about design</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:11;a:4:{s:5:\"title\";s:7:\"Content\";s:4:\"text\";s:180:\"<p>Our team will teach you the art of writing audience-focused content that will help you achieve the success you truly deserve.</p><p><a href=\"#\">Learn more about content</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"Strategy\";s:4:\"text\";s:182:\"<p>We help creative entrepreneurs build their digital business by focusing on three key elements of a successful online platform.</p><p><a href=\"#\">Learn more about strategy</a>.</p>\";s:6:\"filter\";i:1;s:6:\"visual\";i:1;}}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:1:{s:43:\"simple-social-icons/simple-social-icons.php\";a:2:{i:0;s:26:\"Simple_Social_Icons_Widget\";i:1;s:16:\"plugin_uninstall\";}}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','47','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'admin_email_lifespan','1610151354','yes'),(94,'initial_db_version','47018','yes'),(95,'z6y0_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(96,'fresh_site','0','yes'),(97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'sidebars_widgets','a:7:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:6:\"text-1\";i:1;s:6:\"text-2\";i:2;s:6:\"text-3\";i:3;s:6:\"text-4\";i:4;s:6:\"text-5\";i:5;s:6:\"text-6\";i:6;s:6:\"text-7\";i:7;s:6:\"text-8\";i:8;s:6:\"text-9\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"after-entry\";a:0:{}s:13:\"array_version\";i:3;s:8:\"footer-1\";a:1:{i:0;s:7:\"text-10\";}s:8:\"footer-2\";a:1:{i:0;s:7:\"text-11\";}s:8:\"footer-3\";a:1:{i:0;s:7:\"text-12\";}}','yes'),(110,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'WPLANG','','yes'),(113,'cron','a:10:{i:1595039410;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1595042155;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1595074555;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1595117755;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595117772;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595117774;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595125701;a:1:{s:11:\"revisr_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595253600;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1595290555;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594599576;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),(115,'recovery_keys','a:0:{}','yes'),(144,'new_admin_email','janeleeshian@gmail.com','yes'),(147,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1595039372;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}','no'),(118,'_transient_update_plugins','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:0;}','yes'),(174,'edd_sl_a1d9365ee3974e8253d3d4b0a47409d8','a:2:{s:7:\"timeout\";i:1594610467;s:5:\"value\";s:977:\"{\"new_version\":\"1.4.1\",\"stable_version\":\"1.4.1\",\"name\":\"Themer Pro\",\"slug\":\"themer-pro\",\"url\":\"https:\\/\\/cobaltapps.com\\/downloads\\/themer-pro-plugin\\/?changelog=1\",\"last_updated\":\"2020-07-09 14:38:16\",\"homepage\":\"https:\\/\\/cobaltapps.com\\/downloads\\/themer-pro-plugin\\/\",\"package\":\"\",\"download_link\":\"\",\"sections\":{\"description\":\"\",\"changelog\":\"<p>Themer Pro 1.4.1 Changelog<\\/p>\\n<ul>\\n<li>Updated the Cobalt Apps Admin Bar Menu to include Extender Pro Extender Blocks page and remove redundant Instant IDE page.<\\/li>\\n<li>Updated the Easy Digital Downloads Plugin updater script to the latest version.<\\/li>\\n<\\/ul>\\n\"},\"banners\":{\"high\":\"\",\"low\":\"\"},\"icons\":[],\"description\":[\"\"],\"changelog\":[\"<p>Themer Pro 1.4.1 Changelog<\\/p>\\n<ul>\\n<li>Updated the Cobalt Apps Admin Bar Menu to include Extender Pro Extender Blocks page and remove redundant Instant IDE page.<\\/li>\\n<li>Updated the Easy Digital Downloads Plugin updater script to the latest version.<\\/li>\\n<\\/ul>\\n\"]}\";}','no'),(155,'theme_mods_genesis-sample','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594606034;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:6:\"text-1\";i:1;s:6:\"text-2\";i:2;s:6:\"text-3\";i:3;s:6:\"text-4\";i:4;s:6:\"text-5\";i:5;s:6:\"text-6\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"after-entry\";a:0:{}s:8:\"footer-1\";a:1:{i:0;s:6:\"text-7\";}s:8:\"footer-2\";a:1:{i:0;s:6:\"text-8\";}s:8:\"footer-3\";a:1:{i:0;s:6:\"text-9\";}}}s:18:\"custom_css_post_id\";i:-1;}','yes'),(156,'theme_switched','','yes'),(157,'widget_featured-page','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(158,'widget_featured-post','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(159,'widget_user-profile','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(160,'genesis-settings','a:33:{s:6:\"update\";i:1;s:20:\"update_email_address\";s:0:\"\";s:10:\"blog_title\";s:4:\"text\";s:15:\"style_selection\";s:0:\"\";s:11:\"site_layout\";s:15:\"content-sidebar\";s:9:\"superfish\";i:0;s:15:\"breadcrumb_home\";i:0;s:21:\"breadcrumb_front_page\";i:0;s:21:\"breadcrumb_posts_page\";i:0;s:17:\"breadcrumb_single\";i:0;s:15:\"breadcrumb_page\";i:0;s:18:\"breadcrumb_archive\";i:0;s:14:\"breadcrumb_404\";i:0;s:21:\"breadcrumb_attachment\";i:0;s:14:\"comments_pages\";i:0;s:14:\"comments_posts\";i:1;s:25:\"entry_meta_before_content\";s:67:\"[post_date] by [post_author_posts_link] [post_comments] [post_edit]\";s:24:\"entry_meta_after_content\";s:29:\"[post_categories] [post_tags]\";s:16:\"trackbacks_pages\";i:0;s:16:\"trackbacks_posts\";i:1;s:15:\"content_archive\";s:4:\"full\";s:21:\"content_archive_limit\";i:0;s:25:\"content_archive_thumbnail\";i:0;s:10:\"image_size\";s:23:\"genesis-singular-images\";s:15:\"image_alignment\";s:11:\"aligncenter\";s:9:\"posts_nav\";s:7:\"numeric\";s:14:\"header_scripts\";s:0:\"\";s:14:\"footer_scripts\";s:0:\"\";s:11:\"footer_text\";s:203:\"[footer_copyright before=\"Copyright \"] · [footer_childtheme_link before=\"\" after=\" on\"] [footer_genesis_link url=\"https://www.studiopress.com/\" before=\"\"] · [footer_wordpress_link] · [footer_loginout]\";s:13:\"theme_version\";s:5:\"3.3.2\";s:10:\"db_version\";s:4:\"3301\";s:13:\"first_version\";s:5:\"3.3.2\";s:12:\"blog_cat_num\";i:6;}','yes'),(552,'_site_transient_timeout_theme_roots','1595041172','no'),(553,'_site_transient_theme_roots','a:6:{s:18:\"genesis-jane-james\";s:7:\"/themes\";s:14:\"genesis-sample\";s:7:\"/themes\";s:7:\"genesis\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no'),(173,'themer_pro_version_number','1.4.1','yes'),(122,'_transient_update_themes','O:8:\"stdClass\":2:{s:12:\"last_checked\";i:0;s:8:\"response\";N;}','yes'),(172,'themer_pro_settings','a:11:{s:25:\"enable_frontend_dev_tools\";i:0;s:25:\"enable_frontend_hooks_map\";i:0;s:26:\"enable_parent_theme_editor\";i:0;s:23:\"parent_editor_read_only\";i:1;s:25:\"enable_child_theme_editor\";i:1;s:36:\"enable_advanced_file_editor_controls\";i:0;s:26:\"enable_child_image_manager\";i:0;s:35:\"enable_ace_editor_syntax_validation\";i:1;s:23:\"ace_editor_key_bindings\";s:3:\"ace\";s:20:\"ace_editor_font_size\";s:2:\"13\";s:16:\"ace_editor_theme\";s:23:\"tomorrow_night_eighties\";}','yes'),(124,'_site_transient_timeout_browser_2d4cefde95ee1bbf0057df911acb677b','1595204173','no'),(125,'_site_transient_browser_2d4cefde95ee1bbf0057df911acb677b','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"83.0.4103.116\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(126,'_site_transient_timeout_php_check_0b33beef925141e64ee7657dbe3ef273','1595204174','no'),(127,'_site_transient_php_check_0b33beef925141e64ee7657dbe3ef273','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),(129,'can_compress_scripts','0','no'),(103,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(551,'_transient_doing_cron','1595039371.3162300586700439453125','yes'),(522,'category_children','a:0:{}','yes'),(154,'current_theme','Genesis jane james','yes'),(161,'genesis-seo-settings','a:25:{s:17:\"append_site_title\";i:0;s:12:\"doctitle_sep\";s:3:\"–\";s:20:\"doctitle_seplocation\";s:5:\"right\";s:23:\"append_description_home\";i:1;s:10:\"home_h1_on\";s:5:\"title\";s:13:\"home_doctitle\";s:0:\"\";s:16:\"home_description\";s:0:\"\";s:13:\"home_keywords\";s:0:\"\";s:12:\"home_noindex\";i:0;s:13:\"home_nofollow\";i:0;s:14:\"home_noarchive\";i:0;s:28:\"head_adjacent_posts_rel_link\";i:0;s:21:\"head_wlwmanifest_link\";i:0;s:14:\"head_shortlink\";i:0;s:19:\"noindex_cat_archive\";i:1;s:19:\"noindex_tag_archive\";i:1;s:22:\"noindex_author_archive\";i:1;s:20:\"noindex_date_archive\";i:1;s:22:\"noindex_search_archive\";i:1;s:21:\"noarchive_cat_archive\";i:0;s:21:\"noarchive_tag_archive\";i:0;s:24:\"noarchive_author_archive\";i:0;s:22:\"noarchive_date_archive\";i:0;s:24:\"noarchive_search_archive\";i:0;s:9:\"noarchive\";i:0;}','yes'),(165,'recently_activated','a:0:{}','yes'),(421,'_site_transient_browser_15ac63e08719ae211450f1d09642aa06','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"83.0.4103.116\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(422,'wpforms_activated','a:1:{s:4:\"lite\";i:1594770318;}','yes'),(169,'themer_pro_license_status','invalid','yes'),(180,'instant_ide_manager_access_pin','','yes'),(181,'instant_ide_manager_access_status','locked','yes'),(182,'instant_ide_manager_version_number','1.7.1','yes'),(183,'edd_sl_58c564f863ee9ab3476eda13413530e4','a:2:{s:7:\"timeout\";i:1594610506;s:5:\"value\";s:1647:\"{\"new_version\":\"1.7.1\",\"stable_version\":\"1.7.1\",\"name\":\"Instant IDE Manager\",\"slug\":\"instant-ide-manager\",\"url\":\"https:\\/\\/cobaltapps.com\\/downloads\\/instant-ide-manager-plugin\\/?changelog=1\",\"last_updated\":\"2020-07-09 14:36:07\",\"homepage\":\"https:\\/\\/cobaltapps.com\\/downloads\\/instant-ide-manager-plugin\\/\",\"package\":\"\",\"download_link\":\"\",\"sections\":{\"description\":\"\",\"changelog\":\"<p>Instant IDE 1.7.1 Change Log<\\/p>\\n<ul>\\n<li>Replaced Community Forum \\\"Help\\\" links with the Cobalt Apps YouTube Channel and Cobalt Apps Support links.<\\/li>\\n<li>Updated Font Awesome style link to latest version.<\\/li>\\n<\\/ul>\\n<p>Instant IDE Manager 1.7.1 Change Log<\\/p>\\n<ul>\\n<li>Updated the Instant IDE files to latest version.<\\/li>\\n<li>\\n<p>Updated the Cobalt Apps Admin Bar Menu to include Extender Pro Extender Blocks page and remove redundant Instant IDE page.\\n<\\/li>\\n<li>\\n<p>Updated the Easy Digital Downloads Plugin updater script to the latest version.\\n<\\/li>\\n<\\/ul>\\n\"},\"banners\":{\"high\":\"\",\"low\":\"\"},\"icons\":[],\"description\":[\"\"],\"changelog\":[\"<p>Instant IDE 1.7.1 Change Log<\\/p>\\n<ul>\\n<li>Replaced Community Forum \\\"Help\\\" links with the Cobalt Apps YouTube Channel and Cobalt Apps Support links.<\\/li>\\n<li>Updated Font Awesome style link to latest version.<\\/li>\\n<\\/ul>\\n<p>Instant IDE Manager 1.7.1 Change Log<\\/p>\\n<ul>\\n<li>Updated the Instant IDE files to latest version.<\\/li>\\n<li>\\n<p>Updated the Cobalt Apps Admin Bar Menu to include Extender Pro Extender Blocks page and remove redundant Instant IDE page.\\n<\\/li>\\n<li>\\n<p>Updated the Easy Digital Downloads Plugin updater script to the latest version.\\n<\\/li>\\n<\\/ul>\\n\"]}\";}','no'),(177,'instant_ide_manager_license_status','invalid','yes'),(196,'widget_enews-ext','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(212,'wpforms_review','a:2:{s:4:\"time\";i:1594599870;s:9:\"dismissed\";b:0;}','yes'),(549,'genesis_expiring_setting_update_expiration','1595103080','no'),(550,'genesis_expiring_setting_update','a:5:{s:5:\"theme\";s:7:\"genesis\";s:3:\"url\";s:41:\"https://my.studiopress.com/themes/genesis\";s:11:\"new_version\";s:5:\"3.3.2\";s:7:\"package\";s:61:\"https://api.genesistheme.com/download/?file=genesis.3.3.2.zip\";s:13:\"changelog_url\";s:63:\"https://studiopress.github.io/genesis/changelog/?TB_iframe=true\";}','no'),(296,'genesis_onboarding_chosen_pack','color','no'),(219,'wpforms_notifications','a:4:{s:6:\"update\";i:1594770318;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes'),(220,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1595039374;s:7:\"checked\";a:6:{s:18:\"genesis-jane-james\";s:3:\"1.0\";s:14:\"genesis-sample\";s:5:\"3.3.0\";s:7:\"genesis\";s:5:\"3.3.2\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no'),(188,'theme_mods_genesis-jane-james','a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:5;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594601171;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"text-1\";i:1;s:6:\"text-2\";i:2;s:6:\"text-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"after-entry\";a:0:{}s:8:\"footer-1\";a:1:{i:0;s:6:\"text-4\";}s:8:\"footer-2\";a:1:{i:0;s:6:\"text-5\";}s:8:\"footer-3\";a:1:{i:0;s:6:\"text-6\";}}}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:62;}','yes'),(194,'widget_simple-social-icons','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(198,'action_scheduler_hybrid_store_demarkation','6','yes'),(199,'schema-ActionScheduler_StoreSchema','3.0.1594599790','yes'),(200,'schema-ActionScheduler_LoggerSchema','2.0.1594599790','yes'),(201,'action_scheduler_lock_async-request-runner','1594793674','yes'),(202,'wpforms_version_lite','1.6.1','yes'),(203,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(207,'genesis_onboarding_wpforms_id','16','no'),(208,'genesis_onboarding_imported_post_ids','a:5:{s:8:\"homepage\";i:47;s:6:\"blocks\";i:48;s:5:\"about\";i:49;s:7:\"contact\";i:51;s:7:\"landing\";i:52;}','no'),(210,'action_scheduler_migration_status','complete','yes'),(420,'_site_transient_timeout_browser_15ac63e08719ae211450f1d09642aa06','1595375117','no'),(404,'_transient_health-check-site-status-result','{\"good\":\"8\",\"recommended\":\"8\",\"critical\":\"0\"}','yes'),(303,'revisr_general_settings','a:5:{s:8:\"username\";s:9:\"genesis16\";s:5:\"email\";s:22:\"janeleeshian@gmail.com\";s:8:\"git_path\";s:49:\"https://github.com/genesis16/genesisjanejames.git\";s:9:\"gitignore\";s:0:\"\";s:17:\"automatic_backups\";s:5:\"daily\";}','yes'),(301,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1595039372;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:30:\"atomic-blocks/atomicblocks.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/atomic-blocks\";s:4:\"slug\";s:13:\"atomic-blocks\";s:6:\"plugin\";s:30:\"atomic-blocks/atomicblocks.php\";s:11:\"new_version\";s:5:\"2.8.5\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/atomic-blocks/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/atomic-blocks.2.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/atomic-blocks/assets/icon-256x256.jpg?rev=1914921\";s:2:\"1x\";s:66:\"https://ps.w.org/atomic-blocks/assets/icon-128x128.jpg?rev=1914920\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/atomic-blocks/assets/banner-1544x500.jpg?rev=1843088\";s:2:\"1x\";s:68:\"https://ps.w.org/atomic-blocks/assets/banner-772x250.jpg?rev=1843087\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"genesis-enews-extended/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/genesis-enews-extended\";s:4:\"slug\";s:22:\"genesis-enews-extended\";s:6:\"plugin\";s:33:\"genesis-enews-extended/plugin.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/genesis-enews-extended/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/genesis-enews-extended.2.1.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:66:\"https://s.w.org/plugins/geopattern-icon/genesis-enews-extended.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:17:\"revisr/revisr.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/revisr\";s:4:\"slug\";s:6:\"revisr\";s:6:\"plugin\";s:17:\"revisr/revisr.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/revisr/\";s:7:\"package\";s:49:\"https://downloads.wordpress.org/plugin/revisr.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/revisr/assets/icon-256x256.png?rev=1274453\";s:2:\"1x\";s:59:\"https://ps.w.org/revisr/assets/icon-128x128.png?rev=1274453\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/revisr/assets/banner-1544x500.png?rev=1274453\";s:2:\"1x\";s:61:\"https://ps.w.org/revisr/assets/banner-772x250.png?rev=1274453\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"simple-social-icons/simple-social-icons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/simple-social-icons\";s:4:\"slug\";s:19:\"simple-social-icons\";s:6:\"plugin\";s:43:\"simple-social-icons/simple-social-icons.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/simple-social-icons/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/simple-social-icons.3.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/simple-social-icons/assets/icon-256x256.png?rev=1335655\";s:2:\"1x\";s:72:\"https://ps.w.org/simple-social-icons/assets/icon-128x128.png?rev=1335655\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/simple-social-icons/assets/banner-1544x500.png?rev=1587503\";s:2:\"1x\";s:74:\"https://ps.w.org/simple-social-icons/assets/banner-772x250.png?rev=1587503\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(300,'revisr_db_version','2.0','yes'),(311,'revisr_remote_settings','a:5:{s:11:\"remote_name\";s:6:\"origin\";s:10:\"remote_url\";s:68:\"https://genesis16:jlsw1982@github.com/genesis16/genesisjanejames.git\";s:11:\"webhook_url\";s:0:\"\";s:9:\"auto_push\";s:2:\"on\";s:9:\"auto_pull\";s:2:\"on\";}','yes'),(317,'_transient_revisr_error_details','a:1:{i:0;s:48:\"fatal: I don\'t handle protocol \'git clone https\'\";}','yes'),(382,'themer_pro_license_key','8b7ba5d00af248afa67b5a1d70c59524','yes');
/*!40000 ALTER TABLE `z6y0_options` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

