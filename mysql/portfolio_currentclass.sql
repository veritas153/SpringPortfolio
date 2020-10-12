-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
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
-- Table structure for table `currentclass`
--

DROP TABLE IF EXISTS `currentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currentclass` (
  `currentClass_priNum` int NOT NULL AUTO_INCREMENT,
  `currentClass_startDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currentClass_dueDate` datetime NOT NULL,
  `currentClass_class_title` varchar(45) NOT NULL,
  `currentClass_st_id` varchar(20) NOT NULL,
  `currentClass_class_code` varchar(20) NOT NULL,
  `currentClass_vip_code` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`currentClass_priNum`),
  KEY `currentClass_st_id_idx` (`currentClass_st_id`),
  KEY `currentClass_class_code_idx` (`currentClass_class_code`),
  KEY `currentClass_vip_code_idx` (`currentClass_vip_code`),
  CONSTRAINT `currentClass_class_code` FOREIGN KEY (`currentClass_class_code`) REFERENCES `class` (`class_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currentClass_st_id` FOREIGN KEY (`currentClass_st_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currentClass_vip_code` FOREIGN KEY (`currentClass_vip_code`) REFERENCES `vipcodelist` (`vip_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currentclass`
--

LOCK TABLES `currentclass` WRITE;
/*!40000 ALTER TABLE `currentclass` DISABLE KEYS */;
INSERT INTO `currentclass` VALUES (1,'2020-10-07 11:35:53','2020-11-04 00:00:00','파이선 입문','student1','CV5UoGxw3R0Hbh18022E',NULL),(2,'2020-10-07 12:41:55','2021-10-07 00:00:00','파이선 입문','student2','CV5UoGxw3R0Hbh18022E','9NHLfSUTghLXp6U614xg0vL5o');
/*!40000 ALTER TABLE `currentclass` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-12 10:16:51
