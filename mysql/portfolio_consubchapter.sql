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
-- Table structure for table `consubchapter`
--

DROP TABLE IF EXISTS `consubchapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consubchapter` (
  `conSubChapter_priNum` int NOT NULL AUTO_INCREMENT,
  `conSubChapter_title` varchar(255) NOT NULL,
  `conSubChapter_number` int NOT NULL,
  `conSubChapter_content` longtext,
  `conSubChapter_conMainChapter_priNum` int NOT NULL,
  PRIMARY KEY (`conSubChapter_priNum`),
  KEY `conSubChapter_conMainChapter_priNum_idx` (`conSubChapter_conMainChapter_priNum`),
  CONSTRAINT `conSubchapter_conMainChapter_priNum` FOREIGN KEY (`conSubChapter_conMainChapter_priNum`) REFERENCES `conmainchapter` (`conMainChapter_priNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consubchapter`
--

LOCK TABLES `consubchapter` WRITE;
/*!40000 ALTER TABLE `consubchapter` DISABLE KEYS */;
INSERT INTO `consubchapter` VALUES (1,'a1',1,'<p>adfsa</p>',1),(2,'a2',2,'<p>adfsa</p>',1),(3,'a3',3,'<p>adsfa</p>',1),(4,'a4',4,'<p>dadsfa</p>',1),(5,'a5',5,'<p>dafas</p>',1),(6,'b1',1,'<p>adfassfd</p>',2),(7,'c1',1,'<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/tYM4oISacwY\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></p>',3),(8,'c2',2,'<p>adfsf</p>',3),(9,'c3',3,'<p>asfdsaf</p>',3),(10,'d1',1,'<p>adfas</p>',4),(11,'d2',2,'<p>adsfsa</p>',4),(12,'a1',1,NULL,5),(13,'a2',2,NULL,5),(14,'b1',1,NULL,6),(15,'b2',2,NULL,6),(16,'b3',3,NULL,6),(17,'b4',4,NULL,6),(18,'b5',5,NULL,6),(19,'c1',1,NULL,7),(20,'d1',1,NULL,8),(21,'d2',2,NULL,8),(22,'d3',3,NULL,8),(23,'e1',1,NULL,9),(24,'aaaaaa',1,NULL,10),(25,'bbbbbb',2,NULL,10),(26,'ccccccc',3,NULL,10),(27,'aaaaa',1,NULL,11),(28,'bbbbb',2,NULL,11),(29,'aaaaaa',1,NULL,12),(30,'파이선은 무엇?',1,'<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/yytWGELNeOI\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></p>',13),(31,'설치',2,'<p>ㅇㅇㅇ</p>',13),(32,'구동',3,'<p>ㅇㅇㅇ</p>',13),(33,'헬로월드',1,'<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/3R6vFdb7YI4\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></p>',14),(34,'덧셈도 추가',2,'<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/2FBX-JcZ2ks\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></p>',14);
/*!40000 ALTER TABLE `consubchapter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-28  7:40:41
