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
  `addClass_adminComment` longtext,
  `addClass_finalSubmit` varchar(1) DEFAULT NULL,
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
INSERT INTO `addclass` VALUES ('00337612268083447727','adfa','프로그래밍','adfaf','/2020/09/11/be2f8d37-84ef-4f44-9a03-6ccd64c25f99_programming2.png','adafdsf',3,11111,'n','','입문','<p>adfadsfa</p>','2020-09-11 12:08:18','W',NULL,NULL,NULL,'nanana'),('10294856940393848543','python 심화','프로그래밍','ㅁㅁㅁㅁ','/2020/09/11/be2f8d37-84ef-4f44-9a03-6ccd64c25f99_programming2.png','ㅇㅁㄻㅇㄻ',1,1111,'y','<p>1111</p><p>2222</p><p>3333</p><p>4444</p>','입문','<p>adfafdsfa</p>','2020-09-07 15:27:52','N','adfafdafrfew',NULL,NULL,'nanana'),('20134506938291039503','aaaaa','순수미술','aaaaaaaaa','/2020/09/07/c9d9280b-9af8-476a-85a3-cdb8d50b2d3f_programming1.jpg','aaaaaaaaaa',1,1,'n','','입문','<p>adfa</p>','2020-09-07 15:21:14','Y','컨텐츠 추가하세요','W',NULL,'test1');
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

-- Dump completed on 2020-09-11 18:06:07
