-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_metadata`
--

DROP TABLE IF EXISTS `product_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_metadata`
--

LOCK TABLES `product_metadata` WRITE;
/*!40000 ALTER TABLE `product_metadata` DISABLE KEYS */;
INSERT INTO `product_metadata` VALUES (1,'Girlds','Babies','BG-419110951'),(2,'Girlds','Babies','BG-419110952'),(3,'Girlds','Babies','BG-419110953'),(4,'Babyom','Babies','BB-2144746855'),(5,'Babyom','Babies','BB-2144746856'),(6,'Babyom','Babies','BB-2144746857'),(7,'Mommers','Babies','BM-1173639537'),(8,'Mommers','Babies','BM-1173639538'),(9,'Mommers','Babies','BM-1173639539'),(10,'Childer','Babies','BC-989301223'),(11,'Childer','Babies','BC-989301224'),(12,'Childer','Babies','BC-989301225'),(13,'Milkcask','Milk','MM-749337358'),(14,'Milkcask','Milk','MM-749337359'),(15,'Milkcask','Milk','MM-749337360'),(16,'Juice','Milk','MJ-373746709'),(17,'Juice','Milk','MJ-373746710'),(18,'Juice','Milk','MJ-373746711'),(19,'Dairylounge','Milk','MD-543564695'),(20,'Dairylounge','Milk','MD-543564696'),(21,'Dairylounge','Milk','MD-543564697'),(22,'Berrycow','Milk','MB-2093193397'),(23,'Berrycow','Milk','MB-2093193398'),(24,'Berrycow','Milk','MB-2093193399'),(25,'Trand','Sports','ST-348265157'),(26,'Trand','Sports','ST-348265158'),(27,'Trand','Sports','ST-348265159'),(28,'Ballshop','Sports','SB-51995577'),(29,'Ballshop','Sports','SB-51995578'),(30,'Ballshop','Sports','SB-51995579'),(31,'Crumyard','Sports','SC-860550237'),(32,'Crumyard','Sports','SC-860550238'),(33,'Crumyard','Sports','SC-860550239'),(34,'Sportf','Sports','SS-1529984359'),(35,'Sportf','Sports','SS-1529984360'),(36,'Sportf','Sports','SS-1529984361'),(37,'Veganoid','Vegan','VV-1280808854'),(38,'Veganoid','Vegan','VV-1280808855'),(39,'Veganoid','Vegan','VV-1280808856'),(40,'Tarcrop','Vegan','VT-246442909'),(41,'Tarcrop','Vegan','VT-246442910'),(42,'Tarcrop','Vegan','VT-246442911'),(43,'Beanut','Vegan','VB-1890577306'),(44,'Beanut','Vegan','VB-1890577307'),(45,'Beanut','Vegan','VB-1890577308'),(46,'Avocadow','Vegan','VA-1329167330'),(47,'Avocadow','Vegan','VA-1329167331'),(48,'Avocadow','Vegan','VA-1329167332');
/*!40000 ALTER TABLE `product_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopper_list`
--

DROP TABLE IF EXISTS `shopper_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shopper_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shopper_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopper_list`
--

LOCK TABLES `shopper_list` WRITE;
/*!40000 ALTER TABLE `shopper_list` DISABLE KEYS */;
INSERT INTO `shopper_list` VALUES (1,'S-1000'),(2,'S-1001'),(3,'S-1002'),(4,'S-1003'),(5,'S-1004');
/*!40000 ALTER TABLE `shopper_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopper_list_shelf`
--

DROP TABLE IF EXISTS `shopper_list_shelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shopper_list_shelf` (
  `shopper_list_id` bigint(20) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `relevancy_score` double NOT NULL,
  KEY `FKcp0r7r0egr1j6w4bym13iea1d` (`shopper_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopper_list_shelf`
--

LOCK TABLES `shopper_list_shelf` WRITE;
/*!40000 ALTER TABLE `shopper_list_shelf` DISABLE KEYS */;
INSERT INTO `shopper_list_shelf` VALUES (1,'MB-2093193398',31.089209569320897),(1,'VV-1280808856',55.16626010671777),(1,'MD-543564697',73.01492966268303),(1,'BB-2144746855',4.465418091552332),(1,'MB-2093193397',81.86596372052234),(1,'SC-860550238',80.39179367642213),(1,'BG-419110952',17.06951788069343),(1,'BM-1173639537',67.02308880778921),(1,'MJ-373746710',5.732323263667915),(1,'SS-1529984359',82.6173683756812),(1,'MJ-373746711',83.6325837366619),(1,'BC-989301224',6.778058627746741),(1,'BB-2144746857',85.39314011525776),(1,'VA-1329167330',67.76365858050977),(1,'SB-51995577',46.014451739635916),(2,'MD-543564695',64.9399444667783),(2,'BB-2144746857',53.57797793220851),(2,'VT-246442909',21.288534107744482),(2,'VA-1329167330',27.014437875539265),(2,'SS-1529984359',62.1324134409292),(2,'BM-1173639539',44.137367556050236),(2,'MM-749337360',6.856912727184749),(2,'ST-348265157',39.775934624141605),(2,'VB-1890577308',96.8131613220743),(2,'BG-419110953',4.430050876459301),(2,'VT-246442911',99.38024632323383),(2,'VV-1280808854',2.4611321887394677),(2,'MM-749337358',24.346224227541345),(2,'MM-749337359',58.574240950900524),(2,'MD-543564696',37.505474308360355),(3,'VA-1329167330',19.492734899351294),(3,'BB-2144746855',52.970581137195005),(3,'SB-51995577',71.96790001671006),(3,'SC-860550238',43.95637045922845),(3,'ST-348265158',63.53588332610439),(3,'VB-1890577306',28.318408103977355),(3,'MD-543564697',96.8270084353957),(3,'VV-1280808855',9.605985097277658),(3,'MM-749337358',51.47881070494537),(3,'MB-2093193399',97.79320043226103),(3,'BC-989301223',22.951332705537688),(3,'BG-419110953',42.45475417967195),(3,'MD-543564695',81.82907115868066),(3,'SS-1529984359',20.116106438128845),(3,'MB-2093193398',91.64193020313606),(4,'MM-749337359',9.285784508856453),(4,'VB-1890577308',42.69865877013647),(4,'BB-2144746855',51.652597645133206),(4,'VB-1890577306',53.549240984667016),(4,'BG-419110952',60.062975207288915),(4,'BM-1173639539',63.844337249273266),(4,'SC-860550238',12.045177782886729),(4,'MM-749337360',62.348573774809225),(4,'VT-246442911',19.421445338673916),(4,'SB-51995578',50.23350517638963),(4,'BC-989301225',76.10965733312545),(4,'BB-2144746856',3.668377020508895),(4,'BM-1173639537',65.53309644268158),(4,'MM-749337358',99.01865852867185),(4,'BC-989301223',1.0846539140113576),(4,'BG-1162366999',30.737805376096695),(5,'BM-1173639537',87.44404516029063),(5,'VB-1890577307',82.79179867042755),(5,'VT-246442909',73.9644416081247),(5,'BB-2144746855',69.42747936618181),(5,'VB-1890577308',25.81144046082404),(5,'ST-348265157',80.35799873926712),(5,'MB-2093193397',38.30020871138008),(5,'MD-543564696',53.008430263420216),(5,'MJ-373746709',38.108616670630326),(5,'VA-1329167332',31.61708483693215),(5,'SS-1529984359',36.0226464541305),(5,'MB-2093193399',66.72664648565359),(5,'BC-989301225',2.5494342826014704),(5,'MD-543564695',91.11862453341534),(5,'SC-860550237',18.570109269156355),(5,'SC-860550237',30.737805376096695);
/*!40000 ALTER TABLE `shopper_list_shelf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'assignment'
--

--
-- Dumping routines for database 'assignment'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18  0:26:44
