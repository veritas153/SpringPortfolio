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
  `st_vip` varchar(25) DEFAULT NULL,
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
INSERT INTO `student` VALUES ('admin1','$2a$10$4xFqfLPNZbq.hGCA1aZL/.mNUlTlkL2MMfLUC5lZBnILSEydZYQQ6','관리자1','관리자1','00000000','2020-09-01 16:49:55','aaa@aaa.net',NULL,NULL,'ADMIN'),('gemini1','$2a$10$Q67LteL.ZxR8ETKdQ8V2KOO6ZZ866OLSk5IkWWXWm51sPjMyQhXUq','홍길동','조코딩','01000000000','2020-10-07 03:25:49','gemini1@naver.com',NULL,NULL,'CREATOR'),('movie1','$2a$10$6BHjeQGRRpF3MXiYmkCvFu5d0VQ3hN2xIVMZ9O01g1DPBl.I9iWoe','임권택','비됴클래스','01044444444','2020-10-07 14:51:19','movie1@hotmail.com',NULL,NULL,'CREATOR'),('music1','$2a$10$Dcld79DbPz8x.dPbV1YBrOODNFtCV9L4oBCaYfDqyJ20wor/XGNHa','금난새','태비','01055555555','2020-10-12 08:40:02','music1@hotmail.com',NULL,NULL,'CREATOR'),('painter1','$2a$10$VVPXkTuylo27KpQ.ZPG8fu1U05RPMDA3gNIOfD3Na1PnlIxyDgO.q','장승엽','어썸클래스','01011111111','2020-10-07 04:08:09','painter1@hotmail.com',NULL,NULL,'CREATOR'),('program1','$2a$10$TcUniy4cReXPbu0B.zgV7uDU4Qba6Hkep1i1UVisRBK1LjE/c8Ngq','김샘물','생활코딩','01066666666','2020-10-12 08:58:58','program1@naver.com',NULL,NULL,'CREATOR'),('student1','$2a$10$w9ee6IcePiquTUPiV6zLjuG5Qr7W4H5xwxZ202TSYXIpqUzZrNf.y','이순신',NULL,'01022222222','2020-10-07 11:33:28','student1@hanmail.net',NULL,NULL,'STUDENT'),('student2','$2a$10$OAPzgsu5VopjbWfkDfwvRePYMr0SLXA8KGOFbEeFpmlDXjJ.lpbjO','임꺽정',NULL,'01033333333','2020-10-07 12:14:09','student2@naver.com',NULL,NULL,'STUDENT');
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

-- Dump completed on 2020-10-12 10:16:51
