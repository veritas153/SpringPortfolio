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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `st_id` varchar(20) NOT NULL,
  `st_password` varchar(255) NOT NULL,
  `st_name` varchar(40) NOT NULL,
  `st_creator` varchar(20) DEFAULT NULL,
  `st_phoneNumber` varchar(13) NOT NULL,
  `st_joinDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `st_email` varchar(50) NOT NULL,
  `st_vip` varchar(255) DEFAULT NULL,
  `st_vipDue` datetime DEFAULT NULL,
  `st_value` varchar(20) NOT NULL DEFAULT 'STUDENT',
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('admin1','$2a$10$4xFqfLPNZbq.hGCA1aZL/.mNUlTlkL2MMfLUC5lZBnILSEydZYQQ6','관리자1',NULL,'00000000','2020-09-01 16:49:55','aaa@aaa.net',NULL,NULL,'ADMIN'),('chester1','$2a$10$LfXLiOIveGsEyjVAaGbIdOP3dmyo.3nMF3F5sCbawQHZIcEhEpr2.','본좌',NULL,'01000000000','2020-08-24 17:15:43','naver@naver.com',NULL,NULL,'STUDENT'),('nanana','$2a$10$jrcprk0kEaE3U8YGqJkGcOPo3/ieSDe131v0Ga2WMes0ASJ3zsNCu','김김김','나나나','00000000000','2020-09-04 16:44:26','nanana@naver.com',NULL,NULL,'CREATOR'),('nomal1','$2a$10$5hBf4TZieBLP5zxRG/zpvOLnUWtd7Ndo8Qm0Z6SO2NjoTRRGbHg..','김무스',NULL,'11111111111','2020-08-25 10:00:01','musu@naver.com',NULL,NULL,'CREATOR'),('test1','$2a$10$TneaLIK7GJbqDi6SXPPmqOeUdjmhWnQ2z2rASmnaUrSf2UHs8DBky','김김김','adfd','0000000','2020-08-26 12:47:15','djdj@naver.com',NULL,NULL,'CREATOR');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-04 17:52:53
