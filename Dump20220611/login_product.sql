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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` bigint NOT NULL,
  `pin` bigint NOT NULL,
  `price` bigint DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'Electronic','Kolkata','India','iPhone 12, 128 gb, Good camera, condition: like new',6,'sumit.sarkarr@gmail.com','Sumit Sarkar',9874663789,700092,9000,'https://res.cloudinary.com/derzg6p27/image/upload/v1654691856/WhatsApp_Image_2022-06-08_at_6.06.11_PM_2_qcldr1.jpg','',_binary '','0','iPhone 12 128 gb blue color',1),(4,'House','Bengaluru','India','Spacious 1 Bhk semi furnished flat for rent in Lr Bande, flat is on 2nd floor with good interior, apartment comes with lift, car park, 24/7 water facility, 24 hours security, CCTV camera installed, and power backup, with ups facility, every flat tenant have dedicated car parking, easy access to super markets, hospitals, restaurants, clinics, banks and ATM, near by access to Manyata tech park, Hebbal and ring road, for more information please call.',11,'rammohan@gmail.com','Ram Mohan Mishra',8964372883,560045,6500,'https://res.cloudinary.com/derzg6p27/image/upload/v1654692642/1_y8zkrd.png','Karnataka',_binary '','Months','1 Bhk semi furnished flat for rent',2),(5,'Electronic','Hisar','India','Fully automatic front load washing machine',6,'nutan.kartik@yahoo.com','Nutan Kartik',8711488360,125001,2000,'https://res.cloudinary.com/derzg6p27/image/upload/v1654691905/WhatsApp_Image_2022-06-08_at_6.06.10_PM_lq08o2.jpg','Haryana',_binary '','Weeks','Washing Machine',3),(6,'Electronic','Hisar','India','I would like to rent the mixer grinder of lifelong company, interested people can contact me directly',6,'nutan.kartik@yahoo.com','Nutan Kartik',8711488360,125001,800,'https://res.cloudinary.com/derzg6p27/image/upload/v1654691878/WhatsApp_Image_2022-06-08_at_6.06.11_PM_1_oh90ot.jpg','Haryana',_binary '','Weeks','Mixer Grinder For Rent',3),(8,'Others','Ratlam','India','Classical Instrument, Harmonium for Rent, 7 years Old, Good Condition',9,'lad75@gmail.com','Madhavi Lad',8409328894,457023,2200,'https://res.cloudinary.com/derzg6p27/image/upload/v1654695801/WhatsApp_Image_2022-06-08_at_6.17.41_PM_jypo19.jpg','Madhya Pradesh',_binary '','Months','Harmonium for Rent',4),(9,'Furniture','Guwahati','India','L Shape Sofa Set with Centre glass top table in Good condition. Used for 2 yrs.',6,'alka1962@gmail.com','Alka Patil',1436274990,781032,8000,'https://res.cloudinary.com/derzg6p27/image/upload/v1654695373/WhatsApp_Image_2022-06-08_at_6.16.16_PM_ctrts5.jpg','Assam',_binary '','Months','L Shape Sofa set',5),(10,'Automobiles','Meerut','India','Owner- 3rd Mahindra bolero 2006 model',7,'osman1992@yahoo.com','Osman Mondal',6390673077,250001,1500,'https://res.cloudinary.com/derzg6p27/image/upload/v1654694996/WhatsApp_Image_2022-06-08_at_6.13.43_PM_k3yrea.jpg','Uttar Pradesh',_binary '','Days','Mahindra Bolero (2006)',6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-11 20:30:23
