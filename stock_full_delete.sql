-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: stock
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `stock`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `stock` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `stock`;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,'Чтение'),(2,'Добавление'),(3,'Редактирование'),(4,'Удаление');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ages`
--

DROP TABLE IF EXISTS `ages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ages`
--

LOCK TABLES `ages` WRITE;
/*!40000 ALTER TABLE `ages` DISABLE KEYS */;
INSERT INTO `ages` VALUES (1,'Взрослые (М)','Взрослые мужчины'),(2,'Мужское 2','170-176 '),(3,'Женские','168'),(4,'Мужское 1','164-168'),(5,'Мужское 3','182-188');
/*!40000 ALTER TABLE `ages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothoperations`
--

DROP TABLE IF EXISTS `clothoperations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothoperations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operationId` int NOT NULL,
  `packageId` int NOT NULL,
  `priceId` int NOT NULL,
  `isEnded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `operationId` (`operationId`),
  KEY `packageId` (`packageId`),
  KEY `priceId` (`priceId`),
  CONSTRAINT `clothoperations_ibfk_1` FOREIGN KEY (`operationId`) REFERENCES `operations` (`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `clothoperations_ibfk_2` FOREIGN KEY (`packageId`) REFERENCES `packages` (`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `clothoperations_ibfk_3` FOREIGN KEY (`priceId`) REFERENCES `prices` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothoperations`
--

LOCK TABLES `clothoperations` WRITE;
/*!40000 ALTER TABLE `clothoperations` DISABLE KEYS */;
INSERT INTO `clothoperations` VALUES (1,1,1,11,1),(2,4,1,46,0),(3,1,2,5,0),(4,4,2,6,0),(5,1,3,7,0),(6,4,3,8,0),(7,1,4,9,0),(8,4,4,10,0),(9,1,6,13,0),(10,4,6,14,0),(11,1,7,15,0),(12,4,7,16,0),(13,1,8,17,0),(14,4,8,18,0),(15,1,9,19,0),(16,4,9,20,0),(17,1,18,21,0),(18,4,18,22,0),(19,1,19,23,0),(20,4,19,24,0),(21,1,20,25,0),(22,4,20,26,0),(23,1,21,27,0),(24,4,21,28,0),(25,1,22,29,0),(26,4,22,30,0),(27,1,28,31,0),(28,4,28,32,0),(29,1,29,33,0),(30,4,29,34,0),(31,1,30,35,0),(32,4,30,36,0),(33,1,31,79,1),(34,4,31,80,1),(35,1,32,40,0),(36,4,32,41,0),(37,1,33,42,0),(38,4,33,43,0),(39,1,34,44,0),(40,4,34,45,0),(42,1,35,48,0),(43,4,35,49,0),(44,1,36,50,0),(45,4,36,51,0),(46,1,37,52,0),(47,4,37,53,0),(48,1,38,54,0),(49,4,38,55,0),(50,1,39,56,0),(51,4,39,57,0),(52,1,40,58,0),(53,4,40,59,0),(54,1,41,60,0),(55,4,41,61,0),(56,1,42,62,0),(57,4,42,63,0),(58,1,43,64,0),(59,4,43,65,0),(60,1,44,66,0),(61,4,44,67,0),(62,5,44,68,0),(63,1,45,69,0),(64,4,45,70,0),(65,5,45,71,0),(66,1,46,72,0),(67,4,46,73,0),(68,5,46,74,0),(69,1,47,75,0),(70,4,47,76,0),(71,5,47,77,0),(72,1,51,87,1),(73,4,51,91,1),(74,1,52,92,1),(75,4,52,84,0),(76,1,53,85,0),(77,4,53,86,0),(78,3,53,88,0),(79,1,63,97,0),(80,4,63,98,0),(81,1,64,99,0),(82,4,64,100,0),(83,1,65,143,1),(84,5,65,103,0),(85,4,65,102,0),(86,1,66,105,0),(87,4,66,104,0),(88,5,66,106,0),(89,4,67,107,0),(90,5,67,108,0),(91,1,67,109,0),(92,1,68,110,0),(93,4,68,111,0),(94,5,68,112,0),(95,1,69,113,0),(96,4,69,114,0),(97,5,69,115,0),(98,1,70,116,0),(99,4,70,117,0),(100,5,70,118,0),(101,1,71,119,0),(102,4,71,120,0),(103,5,71,121,0),(104,1,72,122,0),(105,4,72,123,0),(106,5,72,124,0),(107,1,73,125,0),(108,4,73,126,0),(109,1,74,128,0),(110,5,73,127,0),(111,5,74,129,0),(112,4,74,130,0),(113,1,75,131,0),(114,2,75,132,0),(115,4,75,133,0),(116,1,76,134,0),(117,2,76,135,0),(118,4,76,136,0),(119,1,77,137,0),(120,4,78,139,0),(121,2,77,138,0),(122,2,78,142,0),(123,1,78,141,0),(124,4,77,140,0),(125,1,79,144,0),(126,2,79,145,0),(127,4,80,146,0),(128,2,80,147,0),(129,1,80,148,0),(130,4,79,149,0),(131,1,81,150,0),(132,4,81,152,0),(133,1,82,154,0),(134,2,82,153,0),(135,1,83,156,0),(136,4,83,158,0),(137,4,82,157,0),(138,2,83,155,0),(139,2,81,151,0),(140,1,88,170,1),(141,4,88,162,0),(142,5,88,163,0),(143,1,89,164,0),(144,4,89,165,0),(145,5,89,166,0),(146,5,90,202,1),(147,2,90,193,1),(148,3,90,226,1),(149,4,90,178,0),(150,1,91,179,1),(151,2,91,180,0),(152,3,91,181,0),(153,4,91,182,0),(154,1,92,183,0),(155,2,92,184,0),(156,3,92,185,0),(157,4,92,186,0),(158,1,93,187,0),(159,2,93,188,0),(160,3,93,189,0),(161,4,93,190,0),(162,2,94,194,0),(163,4,94,195,0),(164,2,95,196,0),(165,4,95,197,0),(166,2,96,198,0),(167,4,96,199,0),(168,2,97,200,0),(169,4,97,201,0),(170,1,98,205,1),(171,2,98,225,1),(172,3,98,207,0),(173,4,98,208,0),(174,1,99,209,0),(175,2,99,210,0),(176,3,99,211,0),(177,4,99,212,0),(178,1,100,213,0),(179,2,100,214,0),(180,3,100,215,0),(181,4,100,216,0),(182,1,101,217,0),(183,2,101,218,0),(184,3,101,219,0),(185,4,101,220,0),(186,1,102,221,0),(187,2,102,222,0),(188,3,102,223,0),(189,4,102,224,0),(190,1,103,230,0),(191,2,103,231,0),(192,4,103,232,0),(193,5,103,233,0),(194,1,104,234,1),(195,2,104,250,1),(196,4,104,236,0),(197,5,104,237,0),(198,1,105,238,0),(199,2,105,239,0),(200,4,105,240,0),(201,5,105,241,0),(202,1,106,242,0),(203,2,106,243,0),(204,4,106,244,0),(205,5,106,245,0),(206,1,107,246,0),(207,2,107,247,0),(208,4,107,248,0),(209,5,107,249,0),(210,3,104,252,1),(211,1,108,253,0),(212,2,108,254,0),(213,4,108,255,0),(214,2,109,256,0),(215,5,108,257,0),(216,1,109,258,0),(217,4,109,259,0),(218,5,109,260,0),(219,1,110,261,0),(220,2,110,262,0),(221,4,110,263,0),(222,5,110,264,0);
/*!40000 ALTER TABLE `clothoperations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothoperationspersons`
--

DROP TABLE IF EXISTS `clothoperationspersons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothoperationspersons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `personId` int NOT NULL,
  `clothOperationId` int NOT NULL,
  `dateStart` datetime NOT NULL,
  `isEnded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `personId` (`personId`),
  KEY `clothOperationId` (`clothOperationId`),
  CONSTRAINT `clothoperationspersons_ibfk_1` FOREIGN KEY (`personId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `clothoperationspersons_ibfk_2` FOREIGN KEY (`clothOperationId`) REFERENCES `clothoperations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothoperationspersons`
--

LOCK TABLES `clothoperationspersons` WRITE;
/*!40000 ALTER TABLE `clothoperationspersons` DISABLE KEYS */;
INSERT INTO `clothoperationspersons` VALUES (1,3,1,'2023-11-27 16:00:07',1),(2,3,2,'2023-11-30 05:00:11',0),(7,1,33,'2023-12-05 15:35:39',1),(8,1,72,'2024-01-09 05:30:16',1),(9,3,73,'2024-01-07 21:00:00',1),(10,2,73,'2024-01-22 21:00:00',1),(11,1,74,'2024-01-24 21:00:00',1),(12,1,73,'2024-01-09 21:00:00',1),(13,2,92,'2024-02-04 15:26:24',1),(14,3,140,'2024-03-04 04:47:50',1),(15,1,146,'2024-04-04 21:00:00',1),(16,4,146,'2024-04-06 08:28:45',1),(17,3,170,'2024-04-04 21:00:00',1),(18,1,170,'2024-04-06 21:00:00',1),(19,1,148,'2024-04-06 21:00:00',1),(20,1,148,'2024-04-07 21:00:00',1),(21,1,150,'2024-04-06 21:00:00',1),(22,1,149,'2024-04-23 21:00:00',0),(23,1,147,'2024-04-23 21:00:00',1),(24,2,194,'2024-04-06 09:51:09',1),(25,4,195,'2024-04-07 21:00:00',1);
/*!40000 ALTER TABLE `clothoperationspersons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `histories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `personId` int NOT NULL,
  `actionId` int NOT NULL,
  `tableName` varchar(30) NOT NULL,
  `value` varchar(100) NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personId` (`personId`),
  KEY `actionId` (`actionId`),
  CONSTRAINT `histories_ibfk_1` FOREIGN KEY (`personId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `histories_ibfk_2` FOREIGN KEY (`actionId`) REFERENCES `actions` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `uid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'Шелк','Описание шелка','SH'),(2,'Кулир ',' ',' '),(3,'Бархат','Описание Бархата','B'),(4,'Материал','Описание материала','M');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeloperations`
--

DROP TABLE IF EXISTS `modeloperations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modeloperations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modelId` int NOT NULL,
  `operationId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `modeloperations_modelId_operationId_unique` (`modelId`,`operationId`),
  KEY `operationId` (`operationId`),
  CONSTRAINT `modeloperations_ibfk_1` FOREIGN KEY (`modelId`) REFERENCES `models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `modeloperations_ibfk_2` FOREIGN KEY (`operationId`) REFERENCES `operations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeloperations`
--

LOCK TABLES `modeloperations` WRITE;
/*!40000 ALTER TABLE `modeloperations` DISABLE KEYS */;
INSERT INTO `modeloperations` VALUES (10,1,2),(2,1,4),(3,2,1),(4,2,4),(5,2,5),(9,3,1),(13,3,2),(15,3,3),(14,3,4),(16,4,1),(17,4,2),(19,4,3),(18,4,4),(20,5,1),(21,5,2),(23,5,4),(22,5,5);
/*!40000 ALTER TABLE `modeloperations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelprices`
--

DROP TABLE IF EXISTS `modelprices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelprices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modelId` int NOT NULL,
  `priceId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `modelprices_modelId_priceId_unique` (`modelId`,`priceId`),
  KEY `priceId` (`priceId`),
  CONSTRAINT `modelprices_ibfk_1` FOREIGN KEY (`modelId`) REFERENCES `models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `modelprices_ibfk_2` FOREIGN KEY (`priceId`) REFERENCES `prices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelprices`
--

LOCK TABLES `modelprices` WRITE;
/*!40000 ALTER TABLE `modelprices` DISABLE KEYS */;
INSERT INTO `modelprices` VALUES (7,1,171),(8,1,172),(3,2,12),(4,2,37),(9,3,173),(10,3,174),(11,4,203),(12,4,204),(13,5,227),(14,5,228),(15,5,229);
/*!40000 ALTER TABLE `modelprices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `models` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `codeVendor` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'Пижамные штаны тонкие','Пижамные штаны тонкие'),(2,'Боксеры муж','Боксеры муж'),(3,'Футболка дет однотон','Футболка дет однотон'),(4,'Модель 1','M'),(5,'Модель 2','M2');
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `percent` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (1,'Over','Overlock','Особая строчка',1.5),(2,'YN','Универсальная','Univer',20),(3,'PL','Плоская','Плоская машина',20),(4,'GL','Глажка','Глажка описание',20),(5,' ','Бейка',' ',2.6);
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `personId` int NOT NULL,
  `partyId` int NOT NULL,
  `sizeId` int NOT NULL,
  `count` int NOT NULL,
  `materialId` int NOT NULL,
  `isEnded` tinyint(1) NOT NULL DEFAULT '0',
  `isRepeat` tinyint(1) NOT NULL DEFAULT '0',
  `isUpdated` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `personId` (`personId`),
  KEY `partyId` (`partyId`),
  KEY `sizeId` (`sizeId`),
  KEY `materialId` (`materialId`),
  CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`personId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `packages_ibfk_2` FOREIGN KEY (`partyId`) REFERENCES `parties` (`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `packages_ibfk_3` FOREIGN KEY (`sizeId`) REFERENCES `sizes` (`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `packages_ibfk_4` FOREIGN KEY (`materialId`) REFERENCES `materials` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` VALUES (1,1,1,1,21,1,1,0,1,'2023-11-27 15:59:31'),(2,1,1,1,23,1,0,0,0,'2023-11-27 15:59:31'),(3,1,1,1,23,1,0,0,0,'2023-11-27 15:59:31'),(4,1,1,1,23,1,0,0,0,'2023-11-27 15:59:31'),(6,1,6,1,21,1,0,0,0,'2023-11-29 17:14:33'),(7,1,6,1,21,1,0,0,0,'2023-11-29 17:14:33'),(8,1,6,1,21,1,0,0,0,'2023-11-29 17:14:33'),(9,1,6,1,21,1,0,0,0,'2023-11-29 17:14:33'),(18,1,9,1,21,1,0,0,0,'2023-11-29 17:55:34'),(19,1,9,1,21,1,0,0,0,'2023-11-29 17:55:34'),(20,1,9,1,21,1,0,0,0,'2023-11-29 17:55:34'),(21,1,9,1,21,1,0,0,0,'2023-11-29 17:55:34'),(22,1,9,1,21,1,0,0,0,'2023-11-29 17:55:34'),(28,1,1,1,21,1,0,0,0,'2023-11-29 18:18:46'),(29,1,1,1,21,1,0,0,0,'2023-11-29 18:18:46'),(30,1,1,1,21,1,0,0,0,'2023-11-29 18:18:46'),(31,1,10,1,12,1,0,1,1,'2023-11-30 04:58:13'),(32,1,10,1,106,1,0,0,1,'2023-11-30 04:58:13'),(33,1,10,1,15,1,1,0,1,'2023-11-30 04:58:13'),(34,1,10,1,17,1,0,0,0,'2023-11-30 04:58:13'),(35,1,11,1,15,1,0,0,0,'2023-11-30 05:10:35'),(36,1,11,1,16,1,0,0,0,'2023-11-30 05:10:35'),(37,1,12,1,12,1,0,0,0,'2023-11-30 05:11:58'),(38,1,12,1,21,1,0,0,0,'2023-11-30 05:11:58'),(39,1,12,1,23,1,0,0,0,'2023-11-30 05:11:58'),(40,1,13,3,15,2,0,0,0,'2023-11-30 05:22:48'),(41,1,13,3,26,2,0,0,0,'2023-11-30 05:22:48'),(42,1,13,3,14,2,0,0,1,'2023-11-30 05:22:48'),(43,1,13,3,14,2,0,0,0,'2023-11-30 05:22:48'),(44,1,14,3,21,1,0,0,0,'2023-12-06 09:55:54'),(45,1,14,3,21,1,0,0,0,'2023-12-06 09:55:54'),(46,1,14,3,21,1,0,0,0,'2023-12-06 09:55:54'),(47,1,14,3,21,1,0,0,0,'2023-12-06 09:55:54'),(48,1,6,2,21,2,0,0,0,'2024-01-07 13:06:48'),(49,1,6,2,22,2,0,0,0,'2024-01-07 13:06:48'),(50,1,6,2,23,2,0,0,0,'2024-01-07 13:06:48'),(51,1,16,1,1,2,1,0,1,'2024-01-09 05:29:39'),(52,1,16,1,1,2,0,0,0,'2024-01-09 05:29:39'),(53,1,16,2,1,2,0,0,1,'2024-01-09 05:29:39'),(54,1,1,1,12,1,0,0,0,'2024-01-22 14:02:03'),(55,1,1,1,12,2,0,0,0,'2024-01-22 14:02:03'),(56,1,1,1,12,2,0,0,0,'2024-01-22 14:02:03'),(57,1,1,1,12,1,0,0,0,'2024-01-22 14:02:03'),(58,1,17,2,21,2,0,0,0,'2024-01-22 14:03:04'),(59,1,17,2,21,2,0,0,0,'2024-01-22 14:03:04'),(60,1,17,2,21,1,0,0,0,'2024-01-22 14:03:04'),(61,1,1,1,21,2,0,0,0,'2024-02-04 12:14:38'),(62,1,1,1,21,2,0,0,0,'2024-02-04 12:14:38'),(63,1,1,1,21,2,0,0,0,'2024-02-04 12:17:01'),(64,1,1,1,21,2,0,0,0,'2024-02-04 12:17:01'),(65,1,18,3,21,2,0,0,0,'2024-02-04 12:20:24'),(66,1,18,3,32,2,0,0,0,'2024-02-04 12:20:24'),(67,1,18,3,21,2,0,0,0,'2024-02-04 12:20:24'),(68,2,18,3,21,1,0,0,0,'2024-02-04 15:17:11'),(69,3,18,3,21,2,0,0,0,'2024-02-04 15:17:11'),(70,2,18,3,21,2,0,0,0,'2024-02-05 13:04:50'),(71,1,18,3,21,2,0,0,0,'2024-02-05 13:04:50'),(72,4,18,3,21,1,0,0,0,'2024-02-05 13:04:50'),(73,1,18,1,21,2,0,0,0,'2024-02-05 13:10:10'),(74,1,18,1,23,1,0,0,0,'2024-02-05 13:10:10'),(75,2,19,1,21,1,0,0,0,'2024-02-13 03:39:42'),(76,2,19,1,23,2,0,0,0,'2024-02-13 03:39:42'),(77,1,19,1,21,2,0,0,0,'2024-02-13 03:43:06'),(78,1,19,1,46,1,0,0,0,'2024-02-13 03:43:06'),(79,1,19,1,5,2,0,0,0,'2024-02-13 03:49:03'),(80,1,19,1,5,1,0,0,0,'2024-02-13 03:49:03'),(81,1,19,1,21,1,0,0,0,'2024-02-13 03:49:03'),(82,1,19,1,22,1,0,0,0,'2024-02-13 03:49:03'),(83,1,19,1,5,1,0,0,0,'2024-02-13 03:49:03'),(88,3,22,1,21,2,1,0,1,'2024-03-04 04:46:36'),(89,2,22,1,21,2,0,0,0,'2024-03-04 04:46:36'),(90,1,23,10,42,1,0,0,0,'2024-04-06 08:27:43'),(91,3,23,10,23,3,0,0,0,'2024-04-06 08:27:43'),(92,3,23,10,23,1,0,0,0,'2024-04-06 08:27:43'),(93,2,23,10,23,3,0,0,0,'2024-04-06 08:27:43'),(94,4,24,1,21,2,0,0,0,'2024-04-06 08:37:42'),(95,3,24,1,21,3,0,0,0,'2024-04-06 08:37:42'),(96,2,24,1,21,3,0,0,0,'2024-04-06 08:37:42'),(97,3,24,1,21,2,0,0,0,'2024-04-06 08:37:42'),(98,2,25,1,21,2,1,0,1,'2024-04-06 09:21:39'),(99,3,25,1,23,3,0,1,1,'2024-04-06 09:21:39'),(100,2,25,1,24,4,0,0,1,'2024-04-06 09:21:39'),(101,3,25,1,23,4,0,0,0,'2024-04-06 09:21:39'),(102,4,25,1,23,4,0,0,0,'2024-04-06 09:21:39'),(103,2,26,1,42,2,0,1,1,'2024-04-06 09:50:29'),(104,3,26,1,42,1,1,0,1,'2024-04-06 09:50:29'),(105,1,26,1,42,2,0,0,1,'2024-04-06 09:50:29'),(106,4,26,1,43,1,0,0,1,'2024-04-06 09:50:29'),(107,4,26,1,42,1,0,0,0,'2024-04-06 09:50:29'),(108,1,26,3,24,4,0,0,0,'2024-04-06 11:15:13'),(109,1,26,3,26,4,0,0,0,'2024-04-06 11:15:13'),(110,1,26,3,28,2,0,0,0,'2024-04-06 11:15:13');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modelId` int NOT NULL,
  `personId` int NOT NULL,
  `priceId` int NOT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date DEFAULT NULL,
  `cutNumber` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modelId` (`modelId`),
  KEY `personId` (`personId`),
  KEY `priceId` (`priceId`),
  CONSTRAINT `parties_ibfk_1` FOREIGN KEY (`modelId`) REFERENCES `models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `parties_ibfk_2` FOREIGN KEY (`personId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `parties_ibfk_3` FOREIGN KEY (`priceId`) REFERENCES `prices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;
INSERT INTO `parties` VALUES (1,1,1,1,'2023-11-01','2023-11-01','1.11'),(6,2,1,12,'2023-11-01','2023-11-01','2.11'),(9,1,1,1,'2023-11-01','2023-11-01','3.11'),(10,2,2,37,'2023-12-01','2023-12-01','1.12'),(11,1,4,2,'2023-02-01','2023-02-01','2.12'),(12,1,4,1,'2023-12-01','2023-12-01','3.12'),(13,2,4,37,'2023-11-01','2023-11-01','07,11'),(14,2,2,37,'2023-11-01','2023-11-01','2.33'),(15,1,2,1,'2023-12-01','2023-12-31','211.12'),(16,1,1,1,'2024-01-01','2024-01-01','1.01'),(17,3,2,89,'2024-01-01','2024-01-01','1.01'),(18,2,2,12,'2024-02-01','2024-02-29','1000.2'),(19,3,1,89,'2024-02-01','2024-02-01','22.21'),(20,2,1,37,'2024-03-01','2024-03-01','211'),(21,2,1,37,'2024-03-01','2024-03-01','1111'),(22,2,3,37,'2024-03-01','2024-03-01','1/11'),(23,3,2,173,'2024-04-01','2024-04-30','4.11'),(24,1,4,172,'2024-04-01','2024-04-30','4.12'),(25,4,3,203,'2024-04-01','2024-04-30','4.13'),(26,5,2,227,'2024-04-01','2024-04-30','3.122');
/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `personId` int NOT NULL,
  `postId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_postId_personId_unique` (`personId`,`postId`),
  KEY `postId` (`postId`),
  CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`personId`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permissions_ibfk_2` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,3),(6,3,1),(7,4,1),(8,4,3);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `lastName` varchar(40) NOT NULL,
  `firstName` varchar(40) NOT NULL,
  `patronymic` varchar(50) DEFAULT NULL,
  `birthDay` date NOT NULL,
  `uid` varchar(20) NOT NULL,
  `dateRegistration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'anna_fetisova@gmail.com','242ca47ff134998060a83cc17ebc6b40a60288740bec34c1789473c0b11c65e8','Фетисова','Анна','Николаевна','1987-10-10','anna','2023-11-11 00:00:00'),(2,'vogistv@gmail.com','242ca47ff134998060a83cc17ebc6b40a60288740bec34c1789473c0b11c65e8','Степанов','Виталий','Викторович','2003-12-01','vita','2023-11-30 04:00:49'),(3,'second@mail.ru','242ca47ff134998060a83cc17ebc6b40a60288740bec34c1789473c0b11c65e8','Амельи ','Катя',' ','2023-11-30','К','2023-11-30 05:09:01');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'EMPLOYEE','Работник'),(2,'ADMIN','Администратор данных'),(3,'CUTTER','Кройщик');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` float NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,1200,'2023-11-27 15:58:00'),(2,1300,'2023-11-27 15:58:00'),(3,240,'2023-11-27 15:59:31'),(4,240,'2023-11-27 15:59:32'),(5,240,'2023-11-27 15:59:32'),(6,240,'2023-11-27 15:59:33'),(7,240,'2023-11-27 15:59:33'),(8,240,'2023-11-27 15:59:34'),(9,240,'2023-11-27 15:59:34'),(10,240,'2023-11-27 15:59:35'),(11,240,'2023-11-28 02:49:57'),(12,23,'2023-11-29 17:07:02'),(13,4.6,'2023-11-29 17:14:33'),(14,4.6,'2023-11-29 17:14:33'),(15,4.6,'2023-11-29 17:14:34'),(16,4.6,'2023-11-29 17:14:34'),(17,4.6,'2023-11-29 17:14:35'),(18,4.6,'2023-11-29 17:14:35'),(19,4.6,'2023-11-29 17:14:35'),(20,4.6,'2023-11-29 17:14:36'),(21,240,'2023-11-29 17:55:50'),(22,240,'2023-11-29 17:55:51'),(23,240,'2023-11-29 17:55:51'),(24,240,'2023-11-29 17:55:51'),(25,240,'2023-11-29 17:55:52'),(26,240,'2023-11-29 17:55:52'),(27,240,'2023-11-29 17:55:53'),(28,240,'2023-11-29 17:55:53'),(29,240,'2023-11-29 17:55:54'),(30,240,'2023-11-29 17:55:54'),(31,240,'2023-11-29 18:18:47'),(32,240,'2023-11-29 18:18:47'),(33,240,'2023-11-29 18:18:48'),(34,240,'2023-11-29 18:18:48'),(35,240,'2023-11-29 18:18:49'),(36,240,'2023-11-29 18:18:49'),(37,500,'2023-11-30 04:56:20'),(38,100,'2023-11-30 04:58:13'),(39,100,'2023-11-30 04:58:14'),(40,100,'2023-11-30 04:58:14'),(41,100,'2023-11-30 04:58:15'),(42,100,'2023-11-30 04:58:15'),(43,100,'2023-11-30 04:58:15'),(44,100,'2023-11-30 04:58:16'),(45,100,'2023-11-30 04:58:16'),(46,240,'2023-11-30 04:59:52'),(47,240,'2023-11-30 05:00:02'),(48,260,'2023-11-30 05:10:35'),(49,260,'2023-11-30 05:10:36'),(50,260,'2023-11-30 05:10:36'),(51,260,'2023-11-30 05:10:36'),(52,240,'2023-11-30 05:11:58'),(53,240,'2023-11-30 05:11:59'),(54,240,'2023-11-30 05:11:59'),(55,240,'2023-11-30 05:12:00'),(56,240,'2023-11-30 05:12:00'),(57,240,'2023-11-30 05:12:01'),(58,100,'2023-11-30 05:22:48'),(59,100,'2023-11-30 05:22:49'),(60,100,'2023-11-30 05:22:49'),(61,100,'2023-11-30 05:22:50'),(62,100,'2023-11-30 05:22:50'),(63,100,'2023-11-30 05:22:51'),(64,100,'2023-11-30 05:22:51'),(65,100,'2023-11-30 05:22:51'),(66,100,'2023-12-06 09:55:54'),(67,100,'2023-12-06 09:55:55'),(68,10,'2023-12-06 09:55:55'),(69,100,'2023-12-06 09:55:56'),(70,100,'2023-12-06 09:55:56'),(71,10,'2023-12-06 09:55:56'),(72,100,'2023-12-06 09:55:57'),(73,100,'2023-12-06 09:55:57'),(74,10,'2023-12-06 09:55:58'),(75,100,'2023-12-06 09:55:58'),(76,100,'2023-12-06 09:55:59'),(77,10,'2023-12-06 09:55:59'),(78,100,'2023-12-06 11:21:52'),(79,100,'2023-12-06 11:21:58'),(80,100,'2023-12-06 11:37:07'),(81,240,'2024-01-09 05:29:39'),(82,240,'2024-01-09 05:29:40'),(83,240,'2024-01-09 05:29:41'),(84,240,'2024-01-09 05:29:41'),(85,240,'2024-01-09 05:29:41'),(86,240,'2024-01-09 05:29:42'),(87,240,'2024-01-09 05:30:28'),(88,240,'2024-01-22 13:11:16'),(89,231,'2024-01-22 13:15:42'),(90,500,'2024-01-22 13:17:52'),(91,240,'2024-01-22 13:44:40'),(92,240,'2024-01-22 13:53:35'),(93,240,'2024-02-04 09:14:39'),(94,240,'2024-02-04 09:14:39'),(95,240,'2024-02-04 09:14:39'),(96,240,'2024-02-04 09:14:39'),(97,240,'2024-02-04 09:17:02'),(98,240,'2024-02-04 09:17:02'),(99,240,'2024-02-04 09:17:02'),(100,240,'2024-02-04 09:17:02'),(101,4.6,'2024-02-04 09:20:24'),(102,4.6,'2024-02-04 09:20:25'),(103,0.598,'2024-02-04 09:20:25'),(104,4.6,'2024-02-04 09:20:25'),(105,4.6,'2024-02-04 09:20:25'),(106,0.598,'2024-02-04 09:20:25'),(107,4.6,'2024-02-04 09:20:25'),(108,0.598,'2024-02-04 09:20:25'),(109,4.6,'2024-02-04 09:20:25'),(110,4.6,'2024-02-04 15:17:11'),(111,4.6,'2024-02-04 15:17:11'),(112,0.598,'2024-02-04 15:17:12'),(113,4.6,'2024-02-04 15:17:12'),(114,4.6,'2024-02-04 15:17:12'),(115,0.598,'2024-02-04 15:17:13'),(116,4.6,'2024-02-05 13:04:50'),(117,4.6,'2024-02-05 13:04:51'),(118,0.598,'2024-02-05 13:04:51'),(119,4.6,'2024-02-05 13:04:52'),(120,4.6,'2024-02-05 13:04:52'),(121,0.598,'2024-02-05 13:04:52'),(122,4.6,'2024-02-05 13:04:53'),(123,4.6,'2024-02-05 13:04:53'),(124,0.598,'2024-02-05 13:04:54'),(125,4.6,'2024-02-05 10:10:07'),(126,4.6,'2024-02-05 10:10:07'),(127,0.598,'2024-02-05 10:10:07'),(128,4.6,'2024-02-05 10:10:07'),(129,0.598,'2024-02-05 10:10:07'),(130,4.6,'2024-02-05 10:10:07'),(131,46.2,'2024-02-13 03:39:42'),(132,46.2,'2024-02-13 03:39:43'),(133,46.2,'2024-02-13 03:39:43'),(134,46.2,'2024-02-13 03:39:44'),(135,46.2,'2024-02-13 03:39:44'),(136,46.2,'2024-02-13 03:39:45'),(137,46.2,'2024-02-13 07:43:06'),(138,46.2,'2024-02-13 07:43:06'),(139,46.2,'2024-02-13 07:43:06'),(140,46.2,'2024-02-13 07:43:06'),(141,46.2,'2024-02-13 07:43:06'),(142,46.2,'2024-02-13 07:43:06'),(143,4.6,'2024-02-13 03:46:21'),(144,46.2,'2024-02-13 07:49:03'),(145,46.2,'2024-02-13 07:49:03'),(146,46.2,'2024-02-13 07:49:03'),(147,46.2,'2024-02-13 07:49:03'),(148,46.2,'2024-02-13 07:49:03'),(149,46.2,'2024-02-13 07:49:03'),(150,46.2,'2024-02-13 07:49:03'),(151,46.2,'2024-02-13 07:49:03'),(152,46.2,'2024-02-13 07:49:03'),(153,46.2,'2024-02-13 07:49:03'),(154,46.2,'2024-02-13 07:49:03'),(155,46.2,'2024-02-13 07:49:03'),(156,46.2,'2024-02-13 07:49:03'),(157,46.2,'2024-02-13 07:49:03'),(158,46.2,'2024-02-13 07:49:03'),(159,100,'2024-03-04 04:40:35'),(160,100,'2024-03-04 04:44:00'),(161,100,'2024-03-04 04:46:36'),(162,100,'2024-03-04 04:46:37'),(163,13,'2024-03-04 04:46:37'),(164,100,'2024-03-04 04:46:37'),(165,100,'2024-03-04 04:46:38'),(166,13,'2024-03-04 04:46:38'),(167,100,'2024-03-04 04:47:56'),(168,100,'2024-03-04 04:49:26'),(169,100,'2024-03-04 04:49:41'),(170,100,'2024-03-04 04:53:06'),(171,1200,'2024-04-06 03:18:41'),(172,1300,'2024-04-06 03:18:47'),(173,1000,'2024-04-06 03:18:56'),(174,2100,'2024-04-06 03:19:02'),(175,200,'2024-04-06 08:27:43'),(176,200,'2024-04-06 08:27:43'),(177,200,'2024-04-06 08:27:44'),(178,200,'2024-04-06 08:27:44'),(179,200,'2024-04-06 08:27:44'),(180,200,'2024-04-06 08:27:45'),(181,200,'2024-04-06 08:27:45'),(182,200,'2024-04-06 08:27:46'),(183,200,'2024-04-06 08:27:46'),(184,200,'2024-04-06 08:27:46'),(185,200,'2024-04-06 08:27:47'),(186,200,'2024-04-06 08:27:47'),(187,200,'2024-04-06 08:27:48'),(188,200,'2024-04-06 08:27:48'),(189,200,'2024-04-06 08:27:48'),(190,200,'2024-04-06 08:27:49'),(191,26,'2024-04-06 08:29:30'),(192,26,'2024-04-06 08:29:39'),(193,200,'2024-04-06 08:29:42'),(194,260,'2024-04-06 08:37:43'),(195,260,'2024-04-06 08:37:43'),(196,260,'2024-04-06 08:37:43'),(197,260,'2024-04-06 08:37:44'),(198,260,'2024-04-06 08:37:44'),(199,260,'2024-04-06 08:37:45'),(200,260,'2024-04-06 08:37:45'),(201,260,'2024-04-06 08:37:46'),(202,26,'2024-04-06 08:58:20'),(203,1200,'2024-04-06 09:20:04'),(204,1400,'2024-04-06 09:20:04'),(205,240,'2024-04-06 09:21:39'),(206,240,'2024-04-06 09:21:40'),(207,240,'2024-04-06 09:21:40'),(208,240,'2024-04-06 09:21:40'),(209,240,'2024-04-06 09:21:41'),(210,240,'2024-04-06 09:21:41'),(211,240,'2024-04-06 09:21:42'),(212,240,'2024-04-06 09:21:42'),(213,240,'2024-04-06 09:21:43'),(214,240,'2024-04-06 09:21:43'),(215,240,'2024-04-06 09:21:43'),(216,240,'2024-04-06 09:21:44'),(217,240,'2024-04-06 09:21:44'),(218,240,'2024-04-06 09:21:45'),(219,240,'2024-04-06 09:21:45'),(220,240,'2024-04-06 09:21:45'),(221,240,'2024-04-06 09:21:46'),(222,240,'2024-04-06 09:21:46'),(223,240,'2024-04-06 09:21:47'),(224,240,'2024-04-06 09:21:47'),(225,240,'2024-04-06 09:23:07'),(226,200,'2024-04-06 09:32:34'),(227,1200,'2024-04-06 09:49:08'),(228,1300,'2024-04-06 09:49:08'),(229,1400,'2024-04-06 09:49:08'),(230,18,'2024-04-06 09:50:29'),(231,240,'2024-04-06 09:50:29'),(232,240,'2024-04-06 09:50:30'),(233,31.2,'2024-04-06 09:50:30'),(234,18,'2024-04-06 09:50:30'),(235,240,'2024-04-06 09:50:31'),(236,240,'2024-04-06 09:50:31'),(237,31.2,'2024-04-06 09:50:32'),(238,18,'2024-04-06 09:50:32'),(239,240,'2024-04-06 09:50:32'),(240,240,'2024-04-06 09:50:33'),(241,31.2,'2024-04-06 09:50:33'),(242,18,'2024-04-06 09:50:34'),(243,240,'2024-04-06 09:50:34'),(244,240,'2024-04-06 09:50:35'),(245,31.2,'2024-04-06 09:50:35'),(246,18,'2024-04-06 09:50:36'),(247,240,'2024-04-06 09:50:36'),(248,240,'2024-04-06 09:50:36'),(249,31.2,'2024-04-06 09:50:37'),(250,240,'2024-04-06 09:51:40'),(251,240,'2024-04-06 09:51:46'),(252,240,'2024-04-06 09:51:50'),(253,18,'2024-04-06 15:15:13'),(254,240,'2024-04-06 15:15:13'),(255,240,'2024-04-06 15:15:13'),(256,240,'2024-04-06 15:15:13'),(257,31.2,'2024-04-06 15:15:13'),(258,18,'2024-04-06 15:15:13'),(259,240,'2024-04-06 15:15:13'),(260,31.2,'2024-04-06 15:15:13'),(261,18,'2024-04-06 15:15:13'),(262,240,'2024-04-06 15:15:13'),(263,240,'2024-04-06 15:15:13'),(264,31.2,'2024-04-06 15:15:13');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(10) NOT NULL,
  `ageId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ageId` (`ageId`),
  CONSTRAINT `sizes_ibfk_1` FOREIGN KEY (`ageId`) REFERENCES `ages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'42',1),(2,'44',2),(3,'46',2),(10,'40-42',3),(11,'42-44',3),(12,'44-46',3);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-07 18:36:16

CREATE TABLE `links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rel` varchar(10) NOT NULL,
  `href` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
);