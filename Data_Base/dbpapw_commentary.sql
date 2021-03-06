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
-- Table structure for table `commentary`
--

DROP TABLE IF EXISTS `commentary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentary` (
  `idcommentary` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `idNews` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcommentary`),
  UNIQUE KEY `idcommentary_UNIQUE` (`idcommentary`),
  KEY `fk_user_commentary_idx` (`idUser`),
  KEY `fk_news_commentary_idx` (`idNews`),
  CONSTRAINT `fk_news_commentary` FOREIGN KEY (`idNews`) REFERENCES `news` (`idnews`),
  CONSTRAINT `fk_user_commentary` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentary`
--

LOCK TABLES `commentary` WRITE;
/*!40000 ALTER TABLE `commentary` DISABLE KEYS */;
INSERT INTO `commentary` VALUES (20,'nota para borrarse xd bye bye',41,1,0,NULL,NULL,1),(24,'comentarios',41,25,0,'03:30','2020-12-28',1),(25,'Coments 1',40,30,0,'18:13','2020-12-28',0),(26,'comentario 5',40,30,0,'18:13','2020-12-28',0),(29,'otro coment',41,25,0,'02:25','2020-12-29',0),(30,'comentario anti anonimo',41,25,0,'22:56','2020-12-30',1),(34,'primis',56,28,0,'22:50','2021-01-01',1),(35,'nuevo nombre',41,589,0,'00:58','2021-01-02',0),(36,'comentar lolo',41,521,0,'01:17','2021-01-02',0),(37,'responder',41,25,23,'19:17','2021-01-02',0),(38,'comentar',59,25,0,'00:19','2021-01-04',0),(39,'con hiddens',41,25,0,'17:58','2021-01-04',0);
/*!40000 ALTER TABLE `commentary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-05 22:27:50
