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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainchapter`
--

LOCK TABLES `mainchapter` WRITE;
/*!40000 ALTER TABLE `mainchapter` DISABLE KEYS */;
INSERT INTO `mainchapter` VALUES (1,'환영합니다!','1','CV5UoGxw3R0Hbh18022E'),(2,'파이선 기초','2','CV5UoGxw3R0Hbh18022E'),(3,'파이선 입력과 출력','3','CV5UoGxw3R0Hbh18022E'),(4,'마무리','4','CV5UoGxw3R0Hbh18022E'),(5,'그림 잘 그리는 법','1','K8TgjR72f964GkQNuT3Q'),(6,'기타 등등','2','K8TgjR72f964GkQNuT3Q'),(7,'일단 환영합니다!','1','m9Zb66c19N0oy46BjCH0'),(8,'영상 제작','2','m9Zb66c19N0oy46BjCH0'),(9,'영상 제작 요소들','3','m9Zb66c19N0oy46BjCH0'),(10,'1부 마무리','4','m9Zb66c19N0oy46BjCH0'),(11,'신디사이징 기초','1','4p330782dTfE93Uw4wVC'),(12,'소개','1','hF2DF1Ty86Z3uM455l18'),(13,'모션 그래픽','2','hF2DF1Ty86Z3uM455l18'),(14,'간단팁들','3','hF2DF1Ty86Z3uM455l18'),(15,'시작','1','x84eIkd6TaWk7LKR74i3'),(16,'자바스크립트 실행','2','x84eIkd6TaWk7LKR74i3'),(17,'숫자와 문자','3','x84eIkd6TaWk7LKR74i3');
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

-- Dump completed on 2020-10-12 10:16:56
