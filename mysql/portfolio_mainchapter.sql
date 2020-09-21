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
-- Table structure for table `mainchapter`
--

DROP TABLE IF EXISTS `mainchapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mainchapter` (
  `mainChapter_priNum` int NOT NULL AUTO_INCREMENT,
  `mainChapter_title` varchar(255) NOT NULL,
  `mainChapter_number` varchar(50) NOT NULL,
  `mainChapter_class_code` varchar(20) NOT NULL,
  PRIMARY KEY (`mainChapter_priNum`),
  KEY `mainChapter_study_code_idx` (`mainChapter_class_code`),
  CONSTRAINT `mainChapter_study_code` FOREIGN KEY (`mainChapter_class_code`) REFERENCES `class` (`class_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainchapter`
--

LOCK TABLES `mainchapter` WRITE;
/*!40000 ALTER TABLE `mainchapter` DISABLE KEYS */;
INSERT INTO `mainchapter` VALUES (1,'a','1','3smBBohC75Z8FNtN9wa6'),(2,'b','2','3smBBohC75Z8FNtN9wa6'),(3,'c','3','3smBBohC75Z8FNtN9wa6'),(4,'d','4','3smBBohC75Z8FNtN9wa6'),(5,'환영합니다','1','Z8aLm742oHRT4q5e21Ek'),(6,'헬로월드부터시작','2','Z8aLm742oHRT4q5e21Ek');
/*!40000 ALTER TABLE `mainchapter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-21 18:26:27
