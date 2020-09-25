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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_code` varchar(50) NOT NULL,
  `class_title` varchar(255) NOT NULL,
  `class_category` varchar(20) NOT NULL,
  `class_difficulty` varchar(10) NOT NULL,
  `class_thumbIntro` varchar(100) NOT NULL,
  `class_creatorName` varchar(20) NOT NULL,
  `class_image` varchar(255) NOT NULL,
  `class_introduction` longtext NOT NULL,
  `class_monthlyPay` int NOT NULL,
  `class_price` int NOT NULL,
  `class_openDate` datetime NOT NULL,
  `class_hasPackage` varchar(1) NOT NULL,
  `class_packageSet` longtext,
  `class_creatorDescription` longtext NOT NULL,
  `class_studyDay` int NOT NULL,
  `class_st_id` varchar(20) NOT NULL,
  `class_package_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`class_code`),
  KEY `class_st_id_idx` (`class_st_id`),
  CONSTRAINT `class_st_id` FOREIGN KEY (`class_st_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('3smBBohC75Z8FNtN9wa6','aaaaa','순수미술','입문','aaaaaaaaa','adfd','/2020/09/07/c9d9280b-9af8-476a-85a3-cdb8d50b2d3f_programming1.jpg','aaaaaaaaaa',1,0,'2020-09-14 00:00:00','N','','<p>adfa</p>',28,'test1',NULL),('Z8aLm742oHRT4q5e21Ek','파이선 입문','프로그래밍','입문','파이선 제대로 시작!','조코딩','/2020/09/16/641c215a-94e3-4418-80d5-31864b706044_programming1.jpg','한번 제대로 배워봐요',5,55000,'2020-09-16 00:00:00','N','','<p>이 클래스는 파이선 입문자가 들으시면 됩니다.</p>',140,'chester2',NULL);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-25 18:48:13
