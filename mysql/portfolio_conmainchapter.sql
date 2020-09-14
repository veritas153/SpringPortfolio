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
-- Table structure for table `conmainchapter`
--

DROP TABLE IF EXISTS `conmainchapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conmainchapter` (
  `conMainChapter_priNum` int NOT NULL AUTO_INCREMENT,
  `conMainChapter_title` varchar(255) NOT NULL,
  `conMainChapter_number` int NOT NULL,
  `conMainChapter_addClass_code` varchar(20) NOT NULL,
  PRIMARY KEY (`conMainChapter_priNum`),
  KEY `conMainChapter_addClass_code_idx` (`conMainChapter_addClass_code`),
  CONSTRAINT `conMainChapter_addClass_code` FOREIGN KEY (`conMainChapter_addClass_code`) REFERENCES `addclass` (`addClass_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conmainchapter`
--

LOCK TABLES `conmainchapter` WRITE;
/*!40000 ALTER TABLE `conmainchapter` DISABLE KEYS */;
INSERT INTO `conmainchapter` VALUES (1,'a',1,'20134506938291039503'),(2,'b',2,'20134506938291039503'),(3,'c',3,'20134506938291039503'),(4,'d',4,'20134506938291039503'),(5,'a',1,'10294856940393848543'),(6,'b',2,'10294856940393848543'),(7,'c',3,'10294856940393848543'),(8,'d',4,'10294856940393848543'),(9,'e',5,'10294856940393848543'),(10,'adfa',1,'00337612268083447727'),(11,'asdfad',2,'00337612268083447727');
/*!40000 ALTER TABLE `conmainchapter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-14 18:41:16
