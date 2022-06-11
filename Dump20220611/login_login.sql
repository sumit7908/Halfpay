-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: login
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mob_no` bigint DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pin` bigint NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `image_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK3cs7dxhnine2f6x5ic4741s6e` (`email`),
  KEY `FKs788hkmyr7cx2fi47kqhv7cyx` (`image_id`),
  CONSTRAINT `FKs788hkmyr7cx2fi47kqhv7cyx` FOREIGN KEY (`image_id`) REFERENCES `image_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'60 Tuni Road, Ma Apartments, Flat-6','Kolkata','India','sumit.sarkarr@gmail.com','Sumit','Sarkar',19874663789,'111111',700019,'West Bengal',2),(2,'16 Gurukul Road','Ahmedabad','India','rammohan@gmail.com','Ram Mohan','Mishra',8964372883,'123456',380007,'Gujrat',3),(3,'60 Amir Apartments, NamitaGunj','Hisar','India','nutan.kartik@yahoo.com','Nutan','Kartik',8711488360,'nutan123',125001,'Haryana',5),(4,'53 Animesh Heights Aundh ','Ratlam','India','lad75@gmail.com','Madhavi','Lad',8409328894,'lad123',457023,'Madhya Pradesh',12),(5,'93 Piyali Phukan Road, Mahatma Villa','Guwahati','India','alka1962@gmail.com','Alka ','Patil',1436274990,'alka12345',781032,'Assam',14),(6,'1st Floor, Star Plaza, Hapur Road','Meerut','India','osman1992@yahoo.com','Osman','Mondal',6390673077,'mondal',250002,'Uttar Pradesh',17);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-11 20:30:27
