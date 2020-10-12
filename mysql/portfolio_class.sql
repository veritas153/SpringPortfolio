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
INSERT INTO `class` VALUES ('4p330782dTfE93Uw4wVC','태비의 간단명료 비트메이킹 입문','음악','입문','이젠 나도 비트메이커!','태비','/2020/10/12/f7ffc9f9-a2bc-4baf-a99e-3878e89708f9_NS-WKMAG0730-1595944356.jpg','누구나 배울수 있는 비트메이킹 입니다!\r\n두려워 하지 말고 일단 도전하세요!',3,40000,'2020-10-12 00:00:00','N','','<p>그 어떤것도 모두 음악적이에요?</p><p>저는 그걸 발견하는 과정을 여러분에게 보여드릴께요!?</p><p><br></p><p>&nbsp;-- Contact --</p><p>✉️&nbsp; &nbsp;E - Mail&nbsp; &nbsp; : sdf2390@gmail.com</p><p>? Kakaotalk : sd2390</p><p>?&nbsp; Instagram : @gvns_taeb</p>',84,'music1',NULL),('CV5UoGxw3R0Hbh18022E','파이선 입문','프로그래밍','입문','파이선을 처음부터 차근차근 배워봅시다.','조코딩','/2020/10/07/6795e509-ab7d-4085-bd1c-ae45b67dadf6_programming1.jpg','코딩을 처음 배우시는 분,\r\n실생활에서 적용하고 싶으신 분,\r\n본격적으로 직업으로 삼고자 하는 분들을 포함해 모든 분들이 배우실 수 있습니다.\r\n',1,55000,'2020-10-08 00:00:00','N','','<p><font face=\"Roboto, Arial, sans-serif\" color=\"#3984c6\"><span style=\"font-size: 14px; white-space: pre-wrap;\"><b style=\"\">저는 조코딩입니다.</b></span></font></p><p><span style=\"font-family: Roboto, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">누구나 배울 수 있는 쉬운 코딩 채널을 만들어가는 조코딩입니다. 프로그래밍에 대해 아무것도 모르더라도 개발이 가능하도록 기초부터 차근차근 쉽게 설명해드립니다. 또한, 단순히 코딩 지식을 배우는 것을 넘어서 웹, 앱 서비스 같은 결과물을 만들고 비즈니스 모델을 만들어 수익화 하거나 업무 자동화를 하는 등 실용적인 관점에서 코딩을 교육합니다.</font></span><br></p>',28,'gemini1',NULL),('hF2DF1Ty86Z3uM455l18','비됴클래스 에프터이펙트 효과','영상/편집','초급','이번엔 좀더 깊게 배울차례!','비됴클래스','/2020/10/12/2f177ccc-03b3-48b0-b200-8c79299fd39d_tax-incentives-influenced-americas-most-popular-filming-locations.jpg','전 클래스를 들은 사람들, 그렇지 않은 사람들도 모두 환영!',5,55000,'2020-10-22 00:00:00','N','','<div class=\"plan-offer\" id=\"instructor\" style=\"padding-top: 53px; margin-top: -53px; margin-right: auto; margin-left: auto;\"><p style=\"margin-right: auto; margin-left: auto;\"><span style=\"margin-right: auto; margin-left: auto; font-family: Roboto, Arial, sans-serif; font-size: 14px; white-space: pre-wrap;\"><font color=\"#0000ff\" style=\"margin-right: auto; margin-left: auto;\">비됴클래스와 함께 표현의 한계를 넘어보세요!\r\n</font><font color=\"#000000\" style=\"margin-right: auto; margin-left: auto;\">새로운 시리즈 유캔튜브는 #유튜버 #유튜브시작 을 누구나 쉽게 어려움없이 할 수 있도록 다방면에서 도와주고 있습니다.\r\n\r\n비됴클래스는 #프리미어프로 #애프터이펙트 뿐 만 아니라 #영상편집 #촬영 등 영상 제작에 관련된 모든 것을 쉽고 재미있게 다루는 채널입니다.</font></span><br style=\"margin-right: auto; margin-left: auto;\"></p></div><div class=\"questions\" id=\"questions\" style=\"padding-top: 53px; margin-top: -53px; margin-right: auto; margin-left: auto;\"><h3 style=\"margin-right: auto; margin-left: auto;\"><br></h3></div>',140,'movie1',NULL),('K8TgjR72f964GkQNuT3Q','취미 미술 쉽게 배우기','순수미술','초급','일상 속에서 미술을 배워봅시다,','어썸클래스','/2020/10/07/794703a1-653b-43ea-9986-5f389901ff2b_arts1.jpg','기초부터 시작해 다양한 방법으로 미술을 접하도록 돕는 클래스 입니다.',1,25000,'2020-10-09 00:00:00','N','','<p><b>저는 어썸클래스입니다.</b></p><p>일상속에서 미술을 쉽게 배우는데 목적을 둔 강사입니다.</p>',28,'painter1',NULL),('m9Zb66c19N0oy46BjCH0','영상 입문자들을 위한 간단한 팁들','영상/편집','초급','처음 시작하시는 분들 주목! 여기에 다 담았다! 지금 바로 수강 신청!','비됴클래스','/2020/10/07/786fbe5e-9e83-4079-b92d-6c47e33a428a_20190908035315_umqgjmyj.jpg','유투브에 도전하고 싶은데 영상을 어떻게 찍고 편집할지 몰라서 망설인다고?\r\n여기 1인 전문가가 여러분의 영상 입문을 도와드립니다!',5,55000,'2020-10-07 00:00:00','N','','<p><span style=\"font-family: Roboto, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\"><font color=\"#0000ff\" style=\"\">비됴클래스와 함께 표현의 한계를 넘어보세요!\r\n</font><font color=\"#000000\">새로운 시리즈 유캔튜브는 #유튜버 #유튜브시작 을 누구나 쉽게 어려움없이 할 수 있도록 다방면에서 도와주고 있습니다.\r\n\r\n비됴클래스는 #프리미어프로 #애프터이펙트 뿐 만 아니라 #영상편집 #촬영 등 영상 제작에 관련된 모든 것을 쉽고 재미있게 다루는 채널입니다.</font></span><br></p>',140,'movie1',NULL),('x84eIkd6TaWk7LKR74i3','JavaScript의 기초 pt.1','프로그래밍','입문','이젠 쓸곳과 기능이 다양해지는 JavaScript를 배울차례!','생활코딩','/2020/10/12/fe417ab9-e3d7-4ad4-a87a-e785dd20343a_javascript.png','시작은 인터넷의 부속 언어였지만 이젠 그 완성도가 무시못할 수준!\r\n웹은 기본이고 이젠 자체적으로 프로그램과 앱도 구현 가능한 JavaScript을 배워봅시다.\r\n',3,1,'2020-10-26 00:00:00','N','','일반인에게 프로그래밍을 알려주는 온라인/오프라인 활동입니다.',84,'program1',NULL);
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

-- Dump completed on 2020-10-12 10:16:54
