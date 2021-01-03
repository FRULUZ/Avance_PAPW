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
  `fecha` date DEFAULT NULL,
  `corta` varchar(45) DEFAULT NULL,
  `PathImage` varchar(90) DEFAULT NULL,
  `PathImage2` varchar(90) DEFAULT NULL,
  `PathImage3` varchar(90) DEFAULT NULL,
  `video` varchar(90) DEFAULT NULL,
  `aprobada` int(11) DEFAULT NULL,
  `user_news` int(11) DEFAULT NULL,
  PRIMARY KEY (`idnews`),
  UNIQUE KEY `idnews_UNIQUE` (`idnews`),
  KEY `fk_news_category_idx` (`category`),
  KEY `fk_user_noticia_idx` (`user_news`),
  CONSTRAINT `fk_news_category` FOREIGN KEY (`category`) REFERENCES `category` (`idcategory`),
  CONSTRAINT `fk_user_noticia` FOREIGN KEY (`user_news`) REFERENCES `user` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (40,'Spider obtiene nuevo comic','Walk bird harness wet nose meow harness grooming water dog lol catz water bedding toys bird seed fetch lazy cat. Parakeet scratcher brush biscuit lick dog tooth walk food lazy cat biscuit. Cockatiel Snowball kitten Rover ferret puppy.',1,'2020-12-20','Se lanzarÃ¡n nuevos comics','Assets/images/image1608509778698.jpg','Assets/images/image21608509778700.jpg','Assets/images/image31608509778703.jpg','Assets/images/video1608509778705.mp4',0,NULL),(41,'Prueba de nulos','nulo',2,'2020-12-22','a ver si funciona','Assets/images/image1608677042321.jpg','Assets/images/image21608677042324.jpg','Assets/images/image31608677042326.jpg','Assets/images/video1608677042329.mp4',1,NULL),(48,'perros','no hay perritos',3,'2020-12-23','perritos','Assets/images/image1608784467335.jpg','Assets/images/image21608784467338.jpg','Assets/images/image31608784467340.jpg','Assets/images/video1608784467346.mp4',0,30),(53,'Modifica new','no se ha modifiado el texto.',1,'2020-12-29','modificar esto','Assets/images/image1609222651062.jpg','Assets/images/image21609222651065.jpg','Assets/images/image31609222651070.jpg','Assets/images/video1609222651073.mp4',1,25),(55,'nose','a ver si jala',1,'2015-12-17','ya :c','choc.png','profile.png','nose.jpg','choco.mp4',2,25),(56,'a ver la hora carnal','porfa ya:CCC',2,'2021-01-01','en espera','Assets/images/image1609562975873.jpg','Assets/images/image21609562975875.jpg','Assets/images/image31609562975878.jpg','Assets/images/video1609562975880.mp4',1,28),(57,'Otra','prueba 2555',2,'2021-01-01','esperate porfis','Assets/images/image1609563176452.jpg','Assets/images/image21609563176455.jpg','Assets/images/image31609563176457.jpg','Assets/images/video1609563176459.mp4',0,28);
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

-- Dump completed on 2021-01-03  3:31:59
