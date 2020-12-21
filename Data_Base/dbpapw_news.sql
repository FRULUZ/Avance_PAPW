-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dbpapw
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `idnews` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `description` text,
  `category` int(11) DEFAULT NULL,
  `aprobada` tinyint(4) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `corta` varchar(45) DEFAULT NULL,
  `PathImage` varchar(90) DEFAULT NULL,
  `PathImage2` varchar(90) DEFAULT NULL,
  `PathImage3` varchar(90) DEFAULT NULL,
  `video` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`idnews`),
  UNIQUE KEY `idnews_UNIQUE` (`idnews`),
  KEY `fk_news_category_idx` (`category`),
  CONSTRAINT `fk_news_category` FOREIGN KEY (`category`) REFERENCES `category` (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (39,'Cyber punk 2077 con retrasos','Dinnertime fetch throw feathers fleas tongue lazy cat lick throw kitten parrot hamster wag tail aquarium chew heel good boy lick feathers cockatiel. Wet Nose food ferret vaccine finch vaccination Scooby snacks string wagging barky tail head good boy pet gate meow good boy. ',2,NULL,'2020-12-20','se han puesto muchos bugs','Assets/images/image1608507777266.jpg','Assets/images/image21608507777267.jpg','Assets/images/image31608507777271.jpg','Assets/images/video1608507777275.mp4'),(40,'Spider obtiene nuevo comic','Walk bird harness wet nose meow harness grooming water dog lol catz water bedding toys bird seed fetch lazy cat. Parakeet scratcher brush biscuit lick dog tooth walk food lazy cat biscuit. Cockatiel Snowball kitten Rover ferret puppy.',1,NULL,'2020-12-20','Se lanzarÃ¡n nuevos comics','Assets/images/image1608509778698.jpg','Assets/images/image21608509778700.jpg','Assets/images/image31608509778703.jpg','Assets/images/video1608509778705.mp4');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-21  2:48:02
