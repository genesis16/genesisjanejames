
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
DROP TABLE IF EXISTS `z6y0_revisr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z6y0_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text DEFAULT NULL,
  `event` varchar(42) NOT NULL,
  `user` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `z6y0_revisr` WRITE;
/*!40000 ALTER TABLE `z6y0_revisr` DISABLE KEYS */;
INSERT INTO `z6y0_revisr` VALUES (1,'2020-07-13 02:13:09','Successfully created a new repository.','init','jane james'),(2,'2020-07-13 02:15:30','Successfully backed up the database.','backup','jane james'),(3,'2020-07-13 02:15:30','Committed <a href=\"http://jane-james.com.au/blog/wp-admin/admin.php?page=revisr_view_commit&commit=bb4bc27&success=true\">#bb4bc27</a> to the local repository.','commit','jane james'),(4,'2020-07-13 02:15:30','Successfully backed up the database.','backup','jane james'),(5,'2020-07-13 02:15:30','Committed <a href=\"http://jane-james.com.au/blog/wp-admin/admin.php?page=revisr_view_commit&commit=ab1b66c&success=true\">#ab1b66c</a> to the local repository.','commit','jane james'),(6,'2020-07-13 02:15:30','Error pushing changes to the remote repository.','error','jane james'),(7,'2020-07-13 02:15:31','Error pushing changes to the remote repository.','error','jane james'),(8,'2020-07-13 02:16:51','Successfully backed up the database.','backup','jane james'),(9,'2020-07-13 02:17:25','Committed <a href=\"http://jane-james.com.au/blog/wp-admin/admin.php?page=revisr_view_commit&commit=a718009&success=true\">#a718009</a> to the local repository.','commit','jane james'),(10,'2020-07-13 02:17:26','Error pushing changes to the remote repository.','error','jane james'),(11,'2020-07-13 02:20:52','Committed <a href=\"http://jane-james.com.au/blog/wp-admin/admin.php?page=revisr_view_commit&commit=48e9b76&success=true\">#48e9b76</a> to the local repository.','commit','jane james'),(12,'2020-07-13 02:20:53','Error pushing changes to the remote repository.','error','jane james'),(13,'2020-07-13 02:22:18','Error pushing changes to the remote repository.','error','jane james'),(14,'2020-07-13 02:22:56','Error pushing changes to the remote repository.','error','jane james'),(15,'2020-07-13 02:23:25','Error pushing changes to the remote repository.','error','jane james'),(16,'2020-07-13 02:24:17','Error pushing changes to the remote repository.','error','jane james'),(17,'2020-07-13 02:24:51','Error pushing changes to the remote repository.','error','jane james'),(18,'2020-07-13 02:25:15','Error pushing changes to the remote repository.','error','jane james'),(19,'2020-07-13 02:28:03','Error pushing changes to the remote repository.','error','jane james'),(20,'2020-07-13 02:28:21','Error pushing changes to the remote repository.','error','jane james'),(21,'2020-07-13 02:28:26','Successfully backed up the database.','backup','Revisr Bot'),(22,'2020-07-13 02:28:27','Error pushing changes to the remote repository.','error','Revisr Bot'),(23,'2020-07-13 02:28:27','The daily backup was successful.','backup','Revisr Bot'),(24,'2020-07-13 02:29:50','Error pushing changes to the remote repository.','error','jane james'),(25,'2020-07-13 02:30:33','Error pushing changes to the remote repository.','error','jane james'),(26,'2020-07-13 02:33:29','Successfully pushed 5 commits to origin/master.','push','jane james'),(27,'2020-07-14 04:05:59','Successfully backed up the database.','backup','Revisr Bot'),(28,'2020-07-14 04:06:05','Successfully pushed 2 commits to origin/master.','push','Revisr Bot'),(29,'2020-07-14 04:06:05','The daily backup was successful.','backup','Revisr Bot'),(30,'2020-07-15 02:46:12','Successfully backed up the database.','backup','Revisr Bot'),(31,'2020-07-15 02:46:19','Successfully pushed 2 commits to origin/master.','push','Revisr Bot'),(32,'2020-07-15 02:46:19','The daily backup was successful.','backup','Revisr Bot');
/*!40000 ALTER TABLE `z6y0_revisr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

