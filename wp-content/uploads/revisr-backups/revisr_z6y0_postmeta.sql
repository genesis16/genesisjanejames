
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
DROP TABLE IF EXISTS `z6y0_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z6y0_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `z6y0_postmeta` WRITE;
/*!40000 ALTER TABLE `z6y0_postmeta` DISABLE KEYS */;
INSERT INTO `z6y0_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,5,'_wp_attached_file','2020/07/Genesis.zip'),(4,5,'_wp_attachment_context','upgrader'),(14,10,'_genesis_hide_title','1'),(15,10,'_genesis_hide_breadcrumbs','1'),(13,10,'_genesis_layout','full-width-content'),(16,10,'_genesis_hide_singular_image','1'),(17,11,'_genesis_layout','full-width-content'),(18,12,'_genesis_layout','full-width-content'),(19,12,'_genesis_hide_singular_image','1'),(20,13,'_wp_attached_file','2020/07/about.jpg'),(21,13,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:999;s:4:\"file\";s:17:\"2020/07/about.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"about-1024x511.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"about-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"about-1536x767.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sidebar-featured\";a:4:{s:4:\"file\";s:15:\"about-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"genesis-singular-images\";a:4:{s:4:\"file\";s:17:\"about-702x526.jpg\";s:5:\"width\";i:702;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ab-block-post-grid-landscape\";a:4:{s:4:\"file\";s:17:\"about-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"ab-block-post-grid-square\";a:4:{s:4:\"file\";s:17:\"about-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(22,12,'_thumbnail_id','13'),(23,15,'_genesis_layout','full-width-content'),(24,15,'_genesis_hide_breadcrumbs','1'),(25,15,'_genesis_hide_singular_image','1'),(26,15,'_genesis_hide_footer_widgets','1'),(27,15,'_wp_page_template','page-templates/landing.php'),(28,18,'_menu_item_type','post_type'),(29,18,'_menu_item_menu_item_parent','0'),(30,18,'_menu_item_object_id','10'),(31,18,'_menu_item_object','page'),(32,18,'_menu_item_target',''),(33,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(34,18,'_menu_item_xfn',''),(35,18,'_menu_item_url',''),(36,19,'_menu_item_type','post_type'),(37,19,'_menu_item_menu_item_parent','0'),(38,19,'_menu_item_object_id','12'),(39,19,'_menu_item_object','page'),(40,19,'_menu_item_target',''),(41,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(42,19,'_menu_item_xfn',''),(43,19,'_menu_item_url',''),(44,20,'_menu_item_type','post_type'),(45,20,'_menu_item_menu_item_parent','0'),(46,20,'_menu_item_object_id','14'),(47,20,'_menu_item_object','page'),(48,20,'_menu_item_target',''),(49,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(50,20,'_menu_item_xfn',''),(51,20,'_menu_item_url',''),(52,21,'_menu_item_type','post_type'),(53,21,'_menu_item_menu_item_parent','0'),(54,21,'_menu_item_object_id','11'),(55,21,'_menu_item_object','page'),(56,21,'_menu_item_target',''),(57,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(58,21,'_menu_item_xfn',''),(59,21,'_menu_item_url',''),(60,22,'_menu_item_type','post_type'),(61,22,'_menu_item_menu_item_parent','0'),(62,22,'_menu_item_object_id','15'),(63,22,'_menu_item_object','page'),(64,22,'_menu_item_target',''),(65,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(66,22,'_menu_item_xfn',''),(67,22,'_menu_item_url',''),(68,23,'_genesis_layout','full-width-content'),(69,23,'_genesis_hide_title','1'),(70,23,'_genesis_hide_breadcrumbs','1'),(71,23,'_genesis_hide_singular_image','1'),(72,24,'_genesis_layout','full-width-content'),(73,25,'_genesis_layout','full-width-content'),(74,25,'_genesis_hide_singular_image','1'),(75,26,'_wp_attached_file','2020/07/about-1.jpg'),(76,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:999;s:4:\"file\";s:19:\"2020/07/about-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"about-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"about-1-1024x511.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"about-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"about-1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"about-1-1536x767.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sidebar-featured\";a:4:{s:4:\"file\";s:17:\"about-1-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"genesis-singular-images\";a:4:{s:4:\"file\";s:19:\"about-1-702x526.jpg\";s:5:\"width\";i:702;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ab-block-post-grid-landscape\";a:4:{s:4:\"file\";s:19:\"about-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"ab-block-post-grid-square\";a:4:{s:4:\"file\";s:19:\"about-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(77,25,'_thumbnail_id','26'),(78,28,'_genesis_layout','full-width-content'),(79,28,'_genesis_hide_breadcrumbs','1'),(80,28,'_genesis_hide_singular_image','1'),(81,28,'_genesis_hide_footer_widgets','1'),(82,28,'_wp_page_template','page-templates/landing.php'),(83,30,'_menu_item_type','post_type'),(84,30,'_menu_item_menu_item_parent','0'),(85,30,'_menu_item_object_id','23'),(86,30,'_menu_item_object','page'),(87,30,'_menu_item_target',''),(88,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(89,30,'_menu_item_xfn',''),(90,30,'_menu_item_url',''),(91,31,'_menu_item_type','post_type'),(92,31,'_menu_item_menu_item_parent','0'),(93,31,'_menu_item_object_id','25'),(94,31,'_menu_item_object','page'),(95,31,'_menu_item_target',''),(96,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(97,31,'_menu_item_xfn',''),(98,31,'_menu_item_url',''),(99,32,'_menu_item_type','post_type'),(100,32,'_menu_item_menu_item_parent','0'),(101,32,'_menu_item_object_id','27'),(102,32,'_menu_item_object','page'),(103,32,'_menu_item_target',''),(104,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(105,32,'_menu_item_xfn',''),(106,32,'_menu_item_url',''),(107,33,'_menu_item_type','post_type'),(108,33,'_menu_item_menu_item_parent','0'),(109,33,'_menu_item_object_id','24'),(110,33,'_menu_item_object','page'),(111,33,'_menu_item_target',''),(112,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(113,33,'_menu_item_xfn',''),(114,33,'_menu_item_url',''),(115,34,'_menu_item_type','post_type'),(116,34,'_menu_item_menu_item_parent','0'),(117,34,'_menu_item_object_id','28'),(118,34,'_menu_item_object','page'),(119,34,'_menu_item_target',''),(120,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(121,34,'_menu_item_xfn',''),(122,34,'_menu_item_url',''),(123,35,'_genesis_layout','full-width-content'),(124,35,'_genesis_hide_title','1'),(125,35,'_genesis_hide_breadcrumbs','1'),(126,35,'_genesis_hide_singular_image','1'),(127,36,'_genesis_layout','full-width-content'),(128,37,'_genesis_layout','full-width-content'),(129,37,'_genesis_hide_singular_image','1'),(130,38,'_wp_attached_file','2020/07/about-2.jpg'),(131,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:999;s:4:\"file\";s:19:\"2020/07/about-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"about-2-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"about-2-1024x511.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"about-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"about-2-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"about-2-1536x767.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sidebar-featured\";a:4:{s:4:\"file\";s:17:\"about-2-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"genesis-singular-images\";a:4:{s:4:\"file\";s:19:\"about-2-702x526.jpg\";s:5:\"width\";i:702;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ab-block-post-grid-landscape\";a:4:{s:4:\"file\";s:19:\"about-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"ab-block-post-grid-square\";a:4:{s:4:\"file\";s:19:\"about-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(132,37,'_thumbnail_id','38'),(133,40,'_genesis_layout','full-width-content'),(134,40,'_genesis_hide_breadcrumbs','1'),(135,40,'_genesis_hide_singular_image','1'),(136,40,'_genesis_hide_footer_widgets','1'),(137,40,'_wp_page_template','page-templates/landing.php'),(138,42,'_menu_item_type','post_type'),(139,42,'_menu_item_menu_item_parent','0'),(140,42,'_menu_item_object_id','35'),(141,42,'_menu_item_object','page'),(142,42,'_menu_item_target',''),(143,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(144,42,'_menu_item_xfn',''),(145,42,'_menu_item_url',''),(146,43,'_menu_item_type','post_type'),(147,43,'_menu_item_menu_item_parent','0'),(148,43,'_menu_item_object_id','37'),(149,43,'_menu_item_object','page'),(150,43,'_menu_item_target',''),(151,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(152,43,'_menu_item_xfn',''),(153,43,'_menu_item_url',''),(154,44,'_menu_item_type','post_type'),(155,44,'_menu_item_menu_item_parent','0'),(156,44,'_menu_item_object_id','39'),(157,44,'_menu_item_object','page'),(158,44,'_menu_item_target',''),(159,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(160,44,'_menu_item_xfn',''),(161,44,'_menu_item_url',''),(162,45,'_menu_item_type','post_type'),(163,45,'_menu_item_menu_item_parent','0'),(164,45,'_menu_item_object_id','36'),(165,45,'_menu_item_object','page'),(166,45,'_menu_item_target',''),(167,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(168,45,'_menu_item_xfn',''),(169,45,'_menu_item_url',''),(170,46,'_menu_item_type','post_type'),(171,46,'_menu_item_menu_item_parent','0'),(172,46,'_menu_item_object_id','40'),(173,46,'_menu_item_object','page'),(174,46,'_menu_item_target',''),(175,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(176,46,'_menu_item_xfn',''),(177,46,'_menu_item_url',''),(178,47,'_genesis_layout','full-width-content'),(179,47,'_genesis_hide_title','1'),(180,47,'_genesis_hide_breadcrumbs','1'),(181,47,'_genesis_hide_singular_image','1'),(182,48,'_genesis_layout','full-width-content'),(183,49,'_genesis_layout','full-width-content'),(184,49,'_genesis_hide_singular_image','1'),(185,50,'_wp_attached_file','2020/07/about-3.jpg'),(186,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:999;s:4:\"file\";s:19:\"2020/07/about-3.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"about-3-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"about-3-1024x511.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"about-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"about-3-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"about-3-1536x767.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"sidebar-featured\";a:4:{s:4:\"file\";s:17:\"about-3-75x75.jpg\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"genesis-singular-images\";a:4:{s:4:\"file\";s:19:\"about-3-702x526.jpg\";s:5:\"width\";i:702;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ab-block-post-grid-landscape\";a:4:{s:4:\"file\";s:19:\"about-3-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"ab-block-post-grid-square\";a:4:{s:4:\"file\";s:19:\"about-3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(187,49,'_thumbnail_id','50'),(188,52,'_genesis_layout','full-width-content'),(189,52,'_genesis_hide_breadcrumbs','1'),(190,52,'_genesis_hide_singular_image','1'),(191,52,'_genesis_hide_footer_widgets','1'),(192,52,'_wp_page_template','page-templates/landing.php'),(193,54,'_menu_item_type','post_type'),(194,54,'_menu_item_menu_item_parent','0'),(195,54,'_menu_item_object_id','47'),(196,54,'_menu_item_object','page'),(197,54,'_menu_item_target',''),(198,54,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(199,54,'_menu_item_xfn',''),(200,54,'_menu_item_url',''),(201,55,'_menu_item_type','post_type'),(202,55,'_menu_item_menu_item_parent','0'),(203,55,'_menu_item_object_id','49'),(204,55,'_menu_item_object','page'),(205,55,'_menu_item_target',''),(206,55,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(207,55,'_menu_item_xfn',''),(208,55,'_menu_item_url',''),(209,56,'_menu_item_type','post_type'),(210,56,'_menu_item_menu_item_parent','0'),(211,56,'_menu_item_object_id','51'),(212,56,'_menu_item_object','page'),(213,56,'_menu_item_target',''),(214,56,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(215,56,'_menu_item_xfn',''),(216,56,'_menu_item_url',''),(217,57,'_menu_item_type','post_type'),(218,57,'_menu_item_menu_item_parent','0'),(219,57,'_menu_item_object_id','48'),(220,57,'_menu_item_object','page'),(221,57,'_menu_item_target',''),(222,57,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(223,57,'_menu_item_xfn',''),(224,57,'_menu_item_url',''),(225,58,'_menu_item_type','post_type'),(226,58,'_menu_item_menu_item_parent','0'),(227,58,'_menu_item_object_id','52'),(228,58,'_menu_item_object','page'),(229,58,'_menu_item_target',''),(230,58,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(231,58,'_menu_item_xfn',''),(232,58,'_menu_item_url','');
/*!40000 ALTER TABLE `z6y0_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

