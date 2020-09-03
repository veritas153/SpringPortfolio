-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addclass`
--

DROP TABLE IF EXISTS `addclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addclass` (
  `addClass_code` varchar(30) NOT NULL,
  `addclass_title` varchar(255) NOT NULL,
  `addclass_category` varchar(20) NOT NULL,
  `addclass_thumbIntro` varchar(100) NOT NULL,
  `addclass_image` varchar(255) DEFAULT NULL,
  `addclass_introduction` longtext NOT NULL,
  `addclass_monthly` int NOT NULL,
  `addclass_price` int NOT NULL,
  `addclass_hasPackage` varchar(1) NOT NULL,
  `addclass_setPackage` longtext,
  `addclass_difficulty` varchar(20) NOT NULL,
  `addclass_creator` longtext NOT NULL,
  `addclass_submitDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addclass_confirm` varchar(1) NOT NULL DEFAULT 'W',
  `addclass_openDate` datetime DEFAULT NULL,
  `addClass_st_id` varchar(20) NOT NULL,
  PRIMARY KEY (`addClass_code`),
  KEY `addClass_st_id_idx` (`addClass_st_id`),
  CONSTRAINT `addClass_st_id` FOREIGN KEY (`addClass_st_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addclass`
--

LOCK TABLES `addclass` WRITE;
/*!40000 ALTER TABLE `addclass` DISABLE KEYS */;
INSERT INTO `addclass` VALUES ('9W_L11_9[J[OMr\\S\\4lU','aaaa','프로그래밍','aaaa','/2020/09/03/60db6643-eab4-4ae6-856d-b2cc794a8571_','aaaa',1,11111,'n','','입문','<p>aaaa</p>','2020-09-03 14:59:10','W',NULL,'test1'),('r[R^U`Z4NPH\\\\QW]c\\V5','dddd','공예','dddd','/2020/09/03/a8045594-8ee5-4ea0-bf05-aedb7d33516f_arts1.jpg','dddd',1,11111,'n','','입문','<p>dddd</p>','2020-09-03 18:31:59','W',NULL,'nomal1');
/*!40000 ALTER TABLE `addclass` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-03 18:40:23
