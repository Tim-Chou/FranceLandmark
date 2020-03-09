CREATE DATABASE  IF NOT EXISTS `france_landmark` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `france_landmark`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: france_landmark
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `france_landmark`
--

DROP TABLE IF EXISTS `france_landmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `france_landmark` (
  `id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `map` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `france_landmark`
--

LOCK TABLES `france_landmark` WRITE;
/*!40000 ALTER TABLE `france_landmark` DISABLE KEYS */;
INSERT INTO `france_landmark` VALUES ('A01','巴黎-艾菲爾鐵塔','5 Avenue Anatole France, 75007 Paris, 法國','../images/A01.jpg','https://www.google.com.tw/maps/place/5 Avenue Anatole France, 75007 Paris, 法國'),('A02','巴黎-凱旋門','Place Charles de Gaulle, 75008 Paris, 法國','../images/A02.jpg','https://www.google.com.tw/maps/place/Place Charles de Gaulle, 75008 Paris, 法國'),('A03','巴黎-羅浮宮','Rue de Rivoli, 75001 Paris, 法國','../images/A03.jpg','https://www.google.com.tw/maps/place/Rue de Rivoli, 75001 Paris, 法國'),('A04','巴黎-巴黎歌劇院','8 Rue Scribe, 75009 Paris, 法國','../images/A04.jpg','https://www.google.com.tw/maps/place/8 Rue Scribe, 75009 Paris, 法國'),('A05','聖米歇爾山修道院','50170 Mont Saint-Michel, 法國','../images/A05.jpg','https://www.google.com.tw/maps/place/50170 Mont Saint-Michel, 法國'),('A06','雪儂梭城堡','37150 Chenonceaux, 法國','../images/A06.jpg','https://www.google.com.tw/maps/place/37150 Chenonceaux, 法國'),('A07','亞眠大教堂','30 Place Notre Dame, 80000 Amiens, 法國','../images/A07.jpg','https://www.google.com.tw/maps/place/30 Place Notre Dame, 80000 Amiens, 法國'),('A08','卡爾卡頌城堡 Château de Chenonceau','1 Rue Viollet le Duc, 11000 Carcassonne, 法國','../images/A08.jpg','https://www.google.com.tw/maps/place/1 Rue Viollet le Duc, 11000 Carcassonne, 法國'),('A09','香堤伊城堡 Château de Chantilly','7 Rue du Connétable, 60500 Chantilly, 法國','../images/A09.jpg','https://www.google.com.tw/maps/place/7 Rue du Connétable, 60500 Chantilly, 法國'),('A10','羅卡馬杜爾 Sanctuaire Notre-Dame de Rocamadour','de Rocamadour, Le Château, 46500 Rocamadour, 法國','../images/A10.jpg','https://www.google.com.tw/maps/place/de Rocamadour, Le Château, 46500 Rocamadour, 法國'),('A11','象鼻海岸Etretat','76790 Étretat, 法國','../images/A11.jpg','https://www.google.com.tw/maps/place/76790 Étretat, 法國');
/*!40000 ALTER TABLE `france_landmark` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-08 20:02:31
