-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: limbcare
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'BIL0001','1','1',10000,'2019-01-21 14:03:53','2019-01-21 14:03:53'),(2,'BIL0002','2','1',35000,'2019-01-21 14:53:20','2019-01-21 14:53:20'),(3,'BIL0003','3','1',40000,'2019-01-21 15:27:07','2019-01-21 15:27:07'),(4,'BIL0004','4','1',100000,'2019-01-24 11:19:13','2019-01-24 11:19:13'),(5,'BIL0005','1','1',30000,'2019-01-26 13:41:42','2019-01-26 13:41:42'),(6,'BIL0006','5','1',5000,'2019-01-29 10:52:07','2019-01-29 10:52:07'),(7,'BIL0007','6','1',25000,'2019-02-05 13:11:17','2019-02-05 13:11:17'),(8,'BIL0008','7','1',260000,'2019-02-20 20:38:25','2019-02-20 20:38:25'),(9,'BIL0009','8','1',10000,'2019-02-20 21:50:34','2019-02-20 21:50:34'),(10,'BIL0010','9','1',20000,'2019-02-21 11:53:52','2019-02-21 11:53:52'),(11,'BIL0011','10','1',15000,'2019-03-03 16:06:25','2019-03-03 16:06:25'),(12,'BIL0012','11','1',150000,'2019-03-06 11:26:10','2019-03-06 11:26:10'),(13,'BIL0013','5','1',4000,'2019-03-07 14:26:15','2019-03-07 14:26:15'),(14,'BIL0014','12','1',35000,'2019-03-07 18:32:22','2019-03-07 18:32:22'),(15,'BIL0015','13','1',10000,'2019-03-18 20:30:41','2019-03-18 20:30:41'),(16,'BIL0016','14','1',22000,'2019-03-18 20:31:00','2019-03-18 20:31:00'),(17,'BIL0017','15','1',4000,'2019-03-21 11:39:31','2019-03-21 11:39:31'),(18,'BIL0018','4','1',75000,'2019-03-21 11:41:40','2019-03-21 11:41:40'),(19,'BIL0019','16','1',30000,'2019-03-23 08:19:44','2019-03-23 08:19:44'),(20,'BIL0020','12','1',30000,'2019-03-23 13:22:36','2019-03-23 13:22:36'),(21,'BIL0021','6','1',19000,'2019-03-23 13:37:48','2019-03-23 13:37:48'),(22,'BIL0022','9','1',24000,'2019-03-27 21:35:27','2019-03-27 21:35:27'),(23,'BIL0023','15','1',12000,'2019-03-27 21:37:40','2019-03-27 21:37:40'),(24,'BIL0024','17','1',10000,'2019-03-28 09:38:25','2019-03-28 09:38:25'),(25,'BIL0025','16','1',100000,'2019-03-29 19:20:50','2019-03-29 19:20:50'),(26,'BIL0026','17','1',55000,'2019-03-31 12:18:31','2019-03-31 12:18:31'),(27,'BIL0027','18','1',10000,'2019-04-01 12:49:11','2019-04-01 12:49:11'),(28,'BIL0028','19','1',5000,'2019-04-04 14:43:42','2019-04-04 14:43:42'),(29,'BIL0029','14','1',14000,'2019-04-04 22:23:59','2019-04-04 22:23:59'),(30,'BIL0030','17','1',15000,'2019-04-04 22:24:32','2019-04-04 22:24:32'),(31,'BIL0031','8','1',6000,'2019-04-04 22:29:45','2019-04-04 22:29:45'),(32,'BIL0032','10','1',3000,'2019-04-04 22:30:10','2019-04-04 22:30:10'),(33,'BIL0033','18','1',30000,'2019-04-06 20:43:40','2019-04-06 20:43:40'),(34,'BIL0034','4','1',79500,'2019-04-06 20:48:32','2019-04-06 20:48:32'),(35,'BIL0035','20','1',10000,'2019-04-06 21:08:06','2019-04-06 21:08:06'),(36,'BIL0036','21','1',80000,'2019-04-09 12:55:15','2019-04-09 12:55:15'),(37,'BIL0037','22','1',10000,'2019-04-27 11:42:45','2019-04-27 11:42:45'),(38,'BIL0038','11','1',141700,'2019-04-27 12:00:41','2019-04-27 12:00:41'),(39,'BIL0039','2','1',29200,'2019-04-27 12:01:51','2019-04-27 12:01:51'),(40,'BIL0040','24','1',20000,'2019-04-28 09:45:15','2019-04-28 09:45:15'),(41,'BIL0041','16','1',130000,'2019-06-05 11:12:07','2019-06-05 11:12:07'),(42,'BIL0042','19','1',13000,'2019-06-05 11:16:22','2019-06-05 11:16:22'),(43,'BIL0043','20','1',8000,'2019-06-05 11:17:56','2019-06-05 11:17:56'),(44,'BIL0044','22','1',1500,'2019-06-05 11:18:30','2019-06-05 11:18:30'),(45,'BIL0045','24','1',20000,'2019-06-05 11:21:20','2019-06-05 11:21:20');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnosis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patientname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hight` int(11) NOT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skech` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consultant_dr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis`
--

LOCK TABLES `diagnosis` WRITE;
/*!40000 ALTER TABLE `diagnosis` DISABLE KEYS */;
INSERT INTO `diagnosis` VALUES (2,'DIA0001','11','BK',156,'50','Liner size 23.5 \r\nFoot size 23 R/S','1sketch.jpeg','Suwarna kumara','2019-03-06 11:09:22','2019-03-06 11:09:22'),(3,'DIA0002','17','BK',155,'75','Tt amputaion','3sketch.jpeg','Dr.sereefdee','2019-03-28 09:36:35','2019-03-28 09:36:35'),(4,'DIA0003','18','Spinal',156,'50','Scoliosis \r\nLumber curve  left side\r\nCorb angle 34\r\nAge 15 \r\nNo decomposition \r\nRisser sing 3 +','4sketch.jpeg','De.prsanna gunathilaka ( buddika)','2019-04-01 12:47:18','2019-04-01 12:47:18');
/*!40000 ALTER TABLE `diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosisphoto`
--

DROP TABLE IF EXISTS `diagnosisphoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnosisphoto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `diagnosis_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosis_ID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosisphoto`
--

LOCK TABLES `diagnosisphoto` WRITE;
/*!40000 ALTER TABLE `diagnosisphoto` DISABLE KEYS */;
/*!40000 ALTER TABLE `diagnosisphoto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_initial_salary`
--

DROP TABLE IF EXISTS `employee_initial_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_initial_salary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` double NOT NULL,
  `overdue` double DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_initial_salary`
--

LOCK TABLES `employee_initial_salary` WRITE;
/*!40000 ALTER TABLE `employee_initial_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_initial_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'EMP0001','Buddika asanka','894564123','administrator ','1pic.jpeg ','1988-08-24','Ampara','2019-01-21 08:05:18','2019-01-21 08:05:18','admin.laravel@labs64.com','0713450257 ');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `income` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,10000,'2019-01-21 14:03:53','2019-01-21 14:03:53'),(2,35000,'2019-01-21 14:53:20','2019-01-21 14:53:20'),(3,40000,'2019-01-21 15:27:07','2019-01-21 15:27:07'),(4,100000,'2019-01-24 11:19:13','2019-01-24 11:19:13'),(5,30000,'2019-01-26 13:41:42','2019-01-26 13:41:42'),(6,5000,'2019-01-29 10:52:07','2019-01-29 10:52:07'),(7,25000,'2019-02-05 13:11:17','2019-02-05 13:11:17'),(8,260000,'2019-02-20 20:38:24','2019-02-20 20:38:24'),(9,10000,'2019-02-20 21:50:34','2019-02-20 21:50:34'),(10,20000,'2019-02-21 11:53:52','2019-02-21 11:53:52'),(11,15000,'2019-03-03 16:06:25','2019-03-03 16:06:25'),(12,150000,'2019-03-06 11:26:10','2019-03-06 11:26:10'),(13,4000,'2019-03-07 14:26:15','2019-03-07 14:26:15'),(14,35000,'2019-03-07 18:32:22','2019-03-07 18:32:22'),(15,10000,'2019-03-18 20:30:41','2019-03-18 20:30:41'),(16,22000,'2019-03-18 20:31:00','2019-03-18 20:31:00'),(17,4000,'2019-03-21 11:39:31','2019-03-21 11:39:31'),(18,75000,'2019-03-21 11:41:40','2019-03-21 11:41:40'),(19,30000,'2019-03-23 08:19:44','2019-03-23 08:19:44'),(20,30000,'2019-03-23 13:22:36','2019-03-23 13:22:36'),(21,19000,'2019-03-23 13:37:48','2019-03-23 13:37:48'),(22,24000,'2019-03-27 21:35:26','2019-03-27 21:35:26'),(23,12000,'2019-03-27 21:37:40','2019-03-27 21:37:40'),(24,10000,'2019-03-28 09:38:25','2019-03-28 09:38:25'),(25,100000,'2019-03-29 19:20:50','2019-03-29 19:20:50'),(26,55000,'2019-03-31 12:18:31','2019-03-31 12:18:31'),(27,10000,'2019-04-01 12:49:11','2019-04-01 12:49:11'),(28,5000,'2019-04-04 14:43:42','2019-04-04 14:43:42'),(29,14000,'2019-04-04 22:23:59','2019-04-04 22:23:59'),(30,15000,'2019-04-04 22:24:32','2019-04-04 22:24:32'),(31,6000,'2019-04-04 22:29:45','2019-04-04 22:29:45'),(32,3000,'2019-04-04 22:30:10','2019-04-04 22:30:10'),(33,30000,'2019-04-06 20:43:40','2019-04-06 20:43:40'),(34,79500,'2019-04-06 20:48:32','2019-04-06 20:48:32'),(35,10000,'2019-04-06 21:08:06','2019-04-06 21:08:06'),(36,80000,'2019-04-09 12:55:15','2019-04-09 12:55:15'),(37,10000,'2019-04-27 11:42:45','2019-04-27 11:42:45'),(38,141700,'2019-04-27 12:00:41','2019-04-27 12:00:41'),(39,29200,'2019-04-27 12:01:51','2019-04-27 12:01:51'),(40,20000,'2019-04-28 09:45:15','2019-04-28 09:45:15'),(41,130000,'2019-06-05 11:12:07','2019-06-05 11:12:07'),(42,13000,'2019-06-05 11:16:22','2019-06-05 11:16:22'),(43,8000,'2019-06-05 11:17:56','2019-06-05 11:17:56'),(44,1500,'2019-06-05 11:18:30','2019-06-05 11:18:30'),(45,20000,'2019-06-05 11:21:20','2019-06-05 11:21:20');
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `remaining_amount` int(11) NOT NULL,
  `patient_ID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'INV0001',40000,0,'1','2019-01-21 14:03:02','2019-01-21 14:03:02','1'),(2,'INV0002',64200,0,'2','2019-01-21 14:35:13','2019-01-21 14:35:13','3'),(3,'INV0003',40000,0,'3','2019-01-21 15:26:42','2019-01-21 15:26:42','1'),(4,'INV0004',254500,0,'4','2019-01-24 11:18:28','2019-01-24 11:18:28','1'),(5,'INV0005',9000,0,'5','2019-01-29 10:51:37','2019-01-29 10:51:37','5'),(6,'INV0006',44000,0,'6','2019-02-05 13:10:49','2019-02-05 13:10:49','7'),(7,'INV0007',260000,0,'7','2019-02-20 20:37:47','2019-02-20 20:37:47','4'),(8,'INV0008',16000,0,'8','2019-02-20 21:49:48','2019-02-20 21:49:48','5'),(9,'INV0009',44000,0,'9','2019-02-21 11:53:20','2019-02-21 11:53:20','7'),(10,'INV0010',18000,0,'10','2019-03-03 16:05:41','2019-03-03 16:05:41','8'),(11,'INV0011',291700,0,'11','2019-03-06 11:07:12','2019-03-06 11:07:12','4'),(12,'INV0012',65000,0,'12','2019-03-07 18:31:48','2019-03-07 18:31:48','3'),(13,'INV0013',84500,74500,'13','2019-03-18 20:29:38','2019-03-18 20:29:38','10'),(14,'INV0014',36000,0,'14','2019-03-18 20:30:00','2019-03-18 20:30:00','1'),(15,'INV0015',16000,0,'15','2019-03-21 11:39:00','2019-03-21 11:39:00','5'),(16,'INV0016',260000,0,'16','2019-03-23 08:19:22','2019-03-23 08:19:22','4'),(17,'INV0017',80000,0,'17','2019-03-28 09:38:01','2019-03-28 09:38:01','4'),(18,'INV0018',40000,0,'18','2019-04-01 12:48:40','2019-04-01 12:48:40','1'),(19,'INV0019',18000,0,'19','2019-04-03 13:55:06','2019-04-03 13:55:06','5'),(20,'INV0020',18000,0,'20','2019-04-06 21:07:40','2019-04-06 21:07:40','5'),(21,'INV0021',80000,0,'21','2019-04-09 12:54:42','2019-04-09 12:54:42','3'),(22,'INV0022',11500,0,'22','2019-04-27 11:42:07','2019-04-27 11:42:07','5'),(23,'INV0023',400000,400000,'23','2019-04-28 09:39:20','2019-04-28 09:39:20','1'),(24,'INV0024',40000,0,'24','2019-04-28 09:44:43','2019-04-28 09:44:43','1');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2017_04_10_000000_create_users_table',1),(2,'2017_04_10_000001_create_password_resets_table',1),(3,'2017_04_10_000002_create_social_accounts_table',1),(4,'2017_04_10_000003_create_roles_table',1),(5,'2017_04_10_000004_create_users_roles_table',1),(6,'2017_06_16_000005_create_protection_validations_table',1),(7,'2017_06_16_000006_create_protection_shop_tokens_table',1),(8,'2018_08_16_105906_employees',1),(9,'2018_08_24_000008_create_diagnosis_table',1),(10,'2018_08_24_000009_create_bill_payment_table',1),(11,'2018_08_24_000009_create_other_payment_table',1),(12,'2018_08_24_000009_create_question_table',1),(13,'2018_08_24_000009_create_salary_payment_table',1),(14,'2018_08_24_000009_create_store_table',1),(15,'2018_08_26_062737_create_doctors_table',1),(16,'2018_08_26_231742_appointments',1),(17,'2018_09_02_014117_create_patient_table',1),(18,'2018_09_03_052534_create_income_table',1),(19,'2018_09_03_062031_create_outcome_table',1),(20,'2018_09_21_144523_create_email_and_contact_fields',1),(21,'2018_09_21_153655_create_usertype_fields',1),(22,'2018_09_22_1059010_service',1),(23,'2018_09_22_161023_create_reply_table',1),(24,'2018_09_22_162134_create_invoice_table',1),(25,'2018_09_24_105919_employees_initial_salary_table',1),(26,'2018_09_24_114656_employee_initial_salary_disable_column',1),(27,'2018_09_24_120014_employee_email_make_unique',1),(28,'2018_09_26_132856_change_appointment_time_column_type',1),(29,'2018_09_26_174848_notification_table',1),(30,'2018_09_26_202401_create_dianosis_photo',1),(31,'2018_10_18_202401_create_Reset',1),(32,'2018_10_18_202401_create_question',1),(33,'2019_01_18_020047_addservice',1),(34,'2019_02_25_015845_create_quotation_table',2),(35,'2019_08_01_151005_create_service_video_table',3),(36,'2019_08_01_151023_create_service_photo_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otherpay`
--

DROP TABLE IF EXISTS `otherpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otherpay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descrption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otherpay`
--

LOCK TABLES `otherpay` WRITE;
/*!40000 ALTER TABLE `otherpay` DISABLE KEYS */;
INSERT INTO `otherpay` VALUES (1,'DEVI Trading POP powuder','outcome',11300),(2,'Lanka Bell Internet bill R68/125863 (18/01/19)','outcome',1950),(3,'DHL','outcome',300),(4,'House RENT 20/01/19','outcome',35000),(5,'Alps locking liner (exceed)','outcome',34550),(6,'Exceed 6mm EVA 1800955','outcome',2900),(7,'Exceed 6mm EVA 1800955','outcome',2900),(8,'TT TANFER FOR AFKAR HASSN','outcome',121000),(9,'February house rent','outcome',35000),(10,'POP bandage 12 exceed  invoice no.1901014','outcome',4620),(11,'Salary Miss mallika','outcome',17000),(12,'Shares 05/03/2019','outcome',150000),(13,'Synergy life POP bandage 06/03/3019 RF.N 2091','outcome',37000),(14,'Keels Electricity bill 06/03/2019 Rf.n 3015339','outcome',2020),(15,'Keels watter bill 06/03/2019 Rf.n 3015338','outcome',1020),(16,'Keels TEa material bill 06/03/2019 Rf.n 3170579','outcome',626),(17,'Mulltibond 4/3/3019 Sl273300','outcome',1090),(18,'Clearing charges silicon glove 05/03/2019 Rf.n.INV17818','outcome',12266),(19,'Synergy life silicon 2 finger 00003060. ( 23/01/2019)','outcome',50000),(20,'ASG paint multi bond 18321 (17/03/19)','outcome',1150),(21,'Akram trading glue (17/03/1','outcome',4500),(22,'Glorchem recleen  (22/03/19','outcome',2500),(23,'Rado textile  15m verali (22/03/19','outcome',2025),(24,'Keels TEa iterm  (23/03/19','outcome',1249),(25,'House rent  (23/03/19','outcome',35000),(26,'Miss mallika salary on March','outcome',17000),(27,'Chamara salary on March','outcome',52000),(28,'Mr.Buddika salary on March','outcome',130000),(29,'Liner oder from India 2019/03/28','outcome',91450),(30,'Keels washing iterm','outcome',560),(31,'Devi POP powder 7pack 04/04/2019','outcome',12300),(32,'Compornets oder from Nobel china DHL and clearing charge','outcome',46000),(33,'Shares 08/04/2919(harsha,wila,nipu,Amanda,buddika) boc bank','outcome',75000),(34,'Plastic exceed 09/04/2019','outcome',182986),(35,'Cutting dice sumeeco hardwhere 09/04/2019','outcome',180),(36,'New central Idal','outcome',200),(37,'Kells milk powder','outcome',315),(38,'Delivery charge from china sample hand','outcome',10000),(39,'Office rent 26/04/2019 (APRIL)','outcome',35000),(40,'Makola Oil Market','outcome',5345),(41,'05/4 - ELectric Item - Summco - 575','outcome',1090),(42,'05/25 - Susnidhu - Nails - 1135','outcome',200),(43,'05/5 - Tea Item - 97 - 325','outcome',325),(44,'05/12 - Tea Item Keels - 1179716 -','outcome',350),(45,'05/14 - Electricity Bill - 1019598','outcome',4000),(46,'05/14 - Water Bill - 1019599','outcome',1000),(47,'05/14 - Tea Item - 1180197','outcome',735),(48,'05/14 - Summco - Nails - 653','outcome',105),(49,'05/14 - Sarath - Side Bars','outcome',13000),(50,'05/25 - Rent','outcome',35000);
/*!40000 ALTER TABLE `otherpay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outcome`
--

DROP TABLE IF EXISTS `outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outcome` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outcome`
--

LOCK TABLES `outcome` WRITE;
/*!40000 ALTER TABLE `outcome` DISABLE KEYS */;
INSERT INTO `outcome` VALUES (1,11300,'2019-01-21 15:11:33','2019-01-21 15:11:33'),(2,1950,'2019-01-21 15:16:38','2019-01-21 15:16:38'),(3,300,'2019-01-21 15:19:57','2019-01-21 15:19:57'),(4,35000,'2019-01-21 15:21:38','2019-01-21 15:21:38'),(5,34550,'2019-01-24 11:46:11','2019-01-24 11:46:11'),(6,2900,'2019-01-24 13:41:57','2019-01-24 13:41:57'),(7,2900,'2019-01-24 13:41:58','2019-01-24 13:41:58'),(8,121000,'2019-02-20 21:57:10','2019-02-20 21:57:10'),(9,35000,'2019-02-21 11:55:49','2019-02-21 11:55:49'),(10,4620,'2019-02-23 16:55:33','2019-02-23 16:55:33'),(11,130000,'2019-03-05 18:29:07','2019-03-05 18:29:07'),(12,17000,'2019-03-05 18:30:47','2019-03-05 18:30:47'),(13,150000,'2019-03-05 20:32:51','2019-03-05 20:32:51'),(14,37000,'2019-03-06 12:00:14','2019-03-06 12:00:14'),(15,2020,'2019-03-06 12:01:29','2019-03-06 12:01:29'),(16,1020,'2019-03-06 12:01:55','2019-03-06 12:01:55'),(17,626,'2019-03-06 12:02:59','2019-03-06 12:02:59'),(18,1090,'2019-03-06 12:04:34','2019-03-06 12:04:34'),(19,12266,'2019-03-06 14:02:05','2019-03-06 14:02:05'),(20,50000,'2019-03-23 13:41:13','2019-03-23 13:41:13'),(21,1150,'2019-03-23 13:42:38','2019-03-23 13:42:38'),(22,4500,'2019-03-23 13:43:30','2019-03-23 13:43:30'),(23,2500,'2019-03-23 13:44:21','2019-03-23 13:44:21'),(24,2025,'2019-03-23 13:45:16','2019-03-23 13:45:16'),(25,1249,'2019-03-23 13:46:19','2019-03-23 13:46:19'),(26,35000,'2019-03-23 13:46:54','2019-03-23 13:46:54'),(27,17000,'2019-03-28 12:05:15','2019-03-28 12:05:15'),(28,52000,'2019-03-28 12:05:42','2019-03-28 12:05:42'),(29,130000,'2019-03-28 12:06:13','2019-03-28 12:06:13'),(30,91450,'2019-03-29 19:22:31','2019-03-29 19:22:31'),(31,560,'2019-03-31 12:11:15','2019-03-31 12:11:15'),(32,12300,'2019-04-06 20:28:29','2019-04-06 20:28:29'),(33,46000,'2019-04-06 20:32:08','2019-04-06 20:32:08'),(34,75000,'2019-04-09 12:56:53','2019-04-09 12:56:53'),(35,182986,'2019-04-09 13:00:05','2019-04-09 13:00:05'),(36,180,'2019-04-09 13:28:32','2019-04-09 13:28:32'),(37,200,'2019-04-09 13:31:17','2019-04-09 13:31:17'),(38,315,'2019-04-09 13:32:04','2019-04-09 13:32:04'),(39,10000,'2019-04-27 12:04:51','2019-04-27 12:04:51'),(40,35000,'2019-04-27 12:41:48','2019-04-27 12:41:48'),(41,5345,'2019-06-05 11:38:47','2019-06-05 11:38:47'),(42,1090,'2019-06-05 11:41:33','2019-06-05 11:41:33'),(43,200,'2019-06-05 11:42:44','2019-06-05 11:42:44'),(44,325,'2019-06-05 11:43:52','2019-06-05 11:43:52'),(45,350,'2019-06-05 11:45:55','2019-06-05 11:45:55'),(46,4000,'2019-06-05 11:48:08','2019-06-05 11:48:08'),(47,1000,'2019-06-05 11:49:18','2019-06-05 11:49:18'),(48,735,'2019-06-05 11:50:28','2019-06-05 11:50:28'),(49,105,'2019-06-05 11:52:51','2019-06-05 11:52:51'),(50,13000,'2019-06-05 11:55:13','2019-06-05 11:55:13'),(51,35000,'2019-06-05 11:56:56','2019-06-05 11:56:56');
/*!40000 ALTER TABLE `outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pat_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'PAT0001','Suwetha Rajapaksa','suwetha@gamil.com','Female','111111111','0718507462','Gamini K motoers,1 Ela,\r\nHasalaka','1pic.jpeg','2019-01-21 13:54:54',NULL),(2,'PAT0002','Thiluni Dahamsara','thiluni@gmail.com','Female','222222222','0713076340/0776597119','Verahera Alabada Gama','2pic.jpeg','2019-01-21 14:15:42',NULL),(3,'PAT0003','Miss.Sewumini','sewumini@gmail.com','Female','111111112','0112249829/0716772490','jeala','3pic.jpeg','2019-01-21 15:25:49',NULL),(4,'PAT0004','A.H.M Afkar','afkar347#gmail.com','Male','951213098','0777996052','118 SM para,dhargatown','4pic.jpeg','2019-01-24 11:02:53',NULL),(5,'PAT0005','Baby sathmi Disanayaka','Sathmi@gmail.com','Female','555555421','0778136266','413 bathanahena waththa kelaniya','5pic.jpeg','2019-01-29 10:47:10',NULL),(6,'PAT0006','Dulkith Saul bathiya','Saul@gmail.com','Male','666766777','0718065015','No 89,manikwela,sewanapitiya,polonnaruwa','6pic.jpeg','2019-02-05 11:14:11',NULL),(7,'PAT0007','MR Ananda','Tt@gmail.com','Male','782371050','0714545535','No.ddd','7pic.jpeg','2019-02-20 20:36:31','2019-02-21 15:48:46'),(8,'PAT0008','RONARA BANDARA','Ronara@gmail.com','Female','727777777','0718184635/9719900014','1/10/b ranwali place kandy road yakkla','8pic.jpeg','2019-02-20 21:48:44',NULL),(9,'PAT0009','A.B.Ananda Kissiri','Ananda@ gmail.com','Male','841161424','0412224189/0714489964','135/E ,Nedun uyana,veraduwa mathara','9pic.jpeg','2019-02-21 11:04:24',NULL),(10,'PAT0010','Mohamad imran','Imran.ali2004425@ gmail.com','Male','098765432','0334950146/0710172761','43c,ochard watts,nittabuwa','10pic.jpeg','2019-03-03 10:23:27',NULL),(11,'PAT0011','Surangi Thakshila','Thakshila@gmail.com','Female','917063664','0765484797/0779958835','URALA,PHARA,WADURAWA,GALLE.','11pic.jpeg','2019-03-06 11:04:32',NULL),(12,'PAT0012','Mr Udaya kumar','Udaya@gmail.com','Male','787102348','0773912646','Kelaniya','12pic.jpeg','2019-03-07 18:30:39',NULL),(13,'PAT0013','Mr.pubudu mayantha','Pubudumayantha@gmail.com','Male','943313903','0754431172  0770435877','No 95 yowungama,wataeaka,meegoda','13pic.jpeg','2019-03-18 10:10:29',NULL),(14,'PAT0014','Tyani perera','Tyani@ gmail.com','Female','140000000','0718512511','99/c forth road,hedala,','14pic.jpeg','2019-03-18 20:28:39',NULL),(15,'PAT0015','H.S .dandeniya','Sakarox1@gamill.com','Male','881932547','0771115520','T47/20    forbas lane,maeadana colombo 10','15pic.jpeg','2019-03-21 10:36:37',NULL),(16,'PAT0016','Usury udayanga lokuwithana','Isuruudayanga649@gmail.com','Male','950302780','0776155798 0712506009','No:352 ambagala horana','16pic.jpeg','2019-03-23 08:18:20',NULL),(17,'PAT0017','Miss srimathi senathilaka','Srimath@gmail.com','Female','396060221','0112868023. 0777846423','No 9A,harichchandra mawatha,beddegama,pitakotte','17pic.jpeg','2019-03-28 09:34:56',NULL),(18,'PAT0018','S.m hashini','Hasini@gmail.com','Female','180000000','0776332058 0777217774','No 4 A seqlar road ereramulla,ambalamgoda','18pic.jpeg','2019-04-01 12:40:33',NULL),(19,'PAT0019','W.witon','Wilton@gmail.com','Male','653643993','0713656928','40,janapadaya,bayahira,eranavila','19pic.jpeg','2019-04-03 13:51:17',NULL),(20,'PAT0020','Miss.shithmi Roshada','Shithmi@gmail.com','Female','160000000','0773936884','50/29,Amunupitiya,thorathota road,welisaea','20pic.jpeg','2019-04-06 21:05:59',NULL),(21,'PAT0021','Mr.surendaran','Surendara@gmail.com','Male','946786587','0713245687','Colombo','21pic.jpeg','2019-04-09 12:53:55',NULL),(22,'PAT0022','Damsith Amarasena','Damsith@ gmail.com','Male','122344823','0714473752','48,senandreews road ,kadawatha','22pic.jpeg','2019-04-27 11:41:13',NULL),(24,'PAT0023','Dahami akarsha','Dahami@gmail.com','Female','111111110','0773917161  0771509841','150 Alwis town hadala wattala','23pic.jpeg','2019-04-28 09:43:47',NULL);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protection_shop_tokens`
--

DROP TABLE IF EXISTS `protection_shop_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protection_shop_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `success_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pst_unique` (`user_id`,`success_url`,`cancel_url`),
  KEY `protection_shop_tokens_number_index` (`number`),
  KEY `protection_shop_tokens_expires_index` (`expires`),
  CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protection_shop_tokens`
--

LOCK TABLES `protection_shop_tokens` WRITE;
/*!40000 ALTER TABLE `protection_shop_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `protection_shop_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protection_validations`
--

DROP TABLE IF EXISTS `protection_validations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protection_validations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `validation_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user` (`user_id`),
  KEY `protection_validations_ttl_index` (`ttl`),
  CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protection_validations`
--

LOCK TABLES `protection_validations` WRITE;
/*!40000 ALTER TABLE `protection_validations` DISABLE KEYS */;
/*!40000 ALTER TABLE `protection_validations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionAsk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionPic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pronounced` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliverydate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricevalidity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentmethod` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
INSERT INTO `quotations` VALUES (1,'QUT0001','03.09.2018','Mr','Sir','Ishara Hettiarachchi','2/1 katawala lewla\r\nKandy','Above elbow myoelectric hand prosthesis','above elbow amputation','Four channel myoelectric hand for above elbow','6 month warranty','6 weeks after','980000','30 days','50 % advance','2019-02-25 10:33:16','2019-02-25 10:33:16'),(2,'QUT0002','2019/ 08/2','Mr','Sir','Buddika','Naka','Tf','Amputation','Ansjjsjs','1','1 month','2344r','30','Full','2019-02-25 10:45:12','2019-02-25 10:45:12'),(3,'QUT0003','08.08.2019','Mr','Sir','Palitha premalal','Sri lanka','Above prosthesis kiyala dala','Above prosthesis kiyala dala','Above prosthesis kiyala dala','1 year','4 week','95000.00','nul','Cash','2019-08-08 14:40:01','2019-08-08 14:40:01');
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `replay` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `replay_pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replier_ID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reset`
--

DROP TABLE IF EXISTS `reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reset` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Q1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Q1A` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Q2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Q2A` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Q3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Q3A` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reset`
--

LOCK TABLES `reset` WRITE;
/*!40000 ALTER TABLE `reset` DISABLE KEYS */;
INSERT INTO `reset` VALUES (1,'admin.laravel@labs64.com','What is the first and last name of your first boyfriend or girlfriend?','nipuni','In what city were you born?','ampara','What is your mother maiden name?','suwarnalatha','2019-01-21 11:38:04','2019-01-21 11:38:04');
/*!40000 ALTER TABLE `reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resetquestion`
--

DROP TABLE IF EXISTS `resetquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resetquestion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resetquestion`
--

LOCK TABLES `resetquestion` WRITE;
/*!40000 ALTER TABLE `resetquestion` DISABLE KEYS */;
INSERT INTO `resetquestion` VALUES (1,'What is the first and last name of your first boyfriend or girlfriend?','1',NULL,NULL),(2,'Which phone number do you remember most from your childhood?','1',NULL,NULL),(3,'What was your favorite place to visit as a child?','1',NULL,NULL),(4,'What is the name of your favorite pet?','2',NULL,NULL),(5,'In what city were you born?','2',NULL,NULL),(6,'What high school did you attend?','2',NULL,NULL),(7,'What is your mother maiden name?','3',NULL,NULL),(8,'What is your father middle name?','3',NULL,NULL),(9,'What is the name of your first grade teacher?','3',NULL,NULL);
/*!40000 ALTER TABLE `resetquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'administrator',0),(2,'authenticated',0),(3,'Receptionist',0),(4,'PNO',0),(5,'Director',0),(6,'Doctor',0),(7,'Patient',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarypay`
--

DROP TABLE IF EXISTS `salarypay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salarypay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarypay`
--

LOCK TABLES `salarypay` WRITE;
/*!40000 ALTER TABLE `salarypay` DISABLE KEYS */;
INSERT INTO `salarypay` VALUES (1,'1',130000,'2019-02-28','2019-03-05 18:29:07','2019-03-05 18:29:07');
/*!40000 ALTER TABLE `salarypay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Did` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataenterID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataupdaterID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'SER0001','1item.jpeg','Spinal Orthosis','Spinal Orthosis (SO) is device applied to trunk or the bust of the body. It used to control spinal deformities such as structural or non-structural. The cause of these conditions can be birth defect, infection or a disease related to neuromuscular conditions such as Muscular Dystropy, Celebral Palsy. Common deformity is found in the spine called, scoliosis which develops a curve in the normal spine. This can also be due to a condition like shortening of a one leg or sometimes the cause is unknown. The root of the problem must be identified and treated. Ultimate goal of the treatment will be to stabilize the curve, balance the spine and prevent deformity. \r\nSpinal Bracing is one of the treatments used to correct deformities in the spine and promote good muscle strength. Custom bracing is used in individuals with scoliosis specially. Appropriate force application is necessary ensure the required correction of the spine. Skilled and experienced services under certified medical personal must be obtained in treating patients with spinal conditions due to sensitive structures involved in the trunk.','orthosis','1','1','2019-01-21 13:58:31','2019-03-03 17:25:09'),(3,'SER0002','2item.jpeg','silicon  prosthesis','For partial prostheses, the Custom silicone prosthesis tapers into your existing limb to create a realistic, natural looking prosthesis. Don’t worry about unnatural lines or raised skin—the silicone blends for a natural look.','cosmetic','1',NULL,'2019-01-21 14:32:50','2019-01-21 14:32:50'),(4,'SER0003','4item.jpeg','BK prosthesis (TT)','BK prosthesis follows an amputation of the leg below the knee level. Trans-tibial prosthesis is prescribed when the amputation has carried out through the Tibial bone. \r\nThe amputation may caused due to road traffic accidents or work related accidents, diabetes, bone cancers, blasts and etc. The type of the device that is recommended is mostly depends on the cause of the amputation. Therefore the choice of components, liners and socket design should be given a careful consideration before prescribing. \r\nA trans tibial prosthesis is consist with a custom made socket, socket interface, shank, foot and a cosmetic cover. Upon the choice of the foot amputee can experience various walking patterns and change of shoes with different heel heights.','prosthesis','1','1','2019-01-24 11:14:50','2019-03-07 05:46:38'),(5,'SER0004','5item.jpeg','Ankle foot orthosis','Medical Definition of Ankle-foot orthosis. Ankle-foot orthosis: A brace, usually made of plastic, that is worn on the lower leg and foot to support the ankle, hold the foot and ankle in the correct position and correct foot drop. Abbreviated AFO. Also known as foot drop brace.','orthosis','1',NULL,'2019-01-29 10:50:57','2019-01-29 10:50:57'),(6,'SER0005','6item.png','Orthoses for Stroke Rehabilitation','Stroke survivors can experience various forms of disability. Including cognitive issues and physiological issues. In severe cases they may ended up with hemiplegia. The common complications of stroke are hypertonia, muscle tightness and contracture in both upper and lower limbs. These complications should be addressed and managed as early as possible with orthotics, physiotherapy and occupational therapy. \r\nUsual orthotic treatments are Wrist Hand Orthoses to aid in hand function and Ankle Foot Orthoses to aid in walking basically to assist with ground clearing. Please refer to orthoses in our services section to have a better understanding of Wrist Hand Orthoses and Ankle Foot Orthoses.','orthosis','1','1','2019-02-05 12:01:09','2019-02-05 12:04:14'),(7,'SER0006','7item.jpeg','Knee Ankle Foot Orthoses','Knee Ankle Foot Orthosis is a brace that encloses the knee, ankle and foot. This use to control knee, ankle and foot. KAFOs are made of plastic, metal leather or fabric. KAFOs play very important role in Osteoarthritis conditions, Joint laxities, Fractures and other pathological or neuromuscular conditions that  affects knee. \r\nKAFOs can be made with different types of knee joints regarding the the type of the control required at the knee. \r\nSingle axis knee ankle foot orthosis\r\nLock knee ankle foot orthosis\r\nStance control knee ankle foot orthosis are basic types of KAFOs are in use commonly.','orthosis','1','1','2019-02-05 12:50:13','2019-02-05 18:38:03'),(8,'SER0007','8item.jpeg','Foot Orthoses','Foot Orthosis (FO) is a device applied to the foot below the ankle. it is used in various pathological conditions in the foot such as metatarsalgia, flat foot, high arches, toe deformities. Nowadays, FOs are commonly used in Diabetes, Rheumatoid Arthritis in the foot. \r\nIt functions to control the joints of the foot, support the arches, apply corrective forces to correct deformities. Further, in diabetes FOs are used to distribute pressure, offload ulcers, as a protective layer encloses the foot.\r\nFO classified into 3 groups such as rigid, semi-rigid and soft FO and made of 3 layers which depends on the requirements of the FO.','orthosis','1','1','2019-03-03 16:03:22','2019-03-04 05:44:03'),(10,'SER0008','9item.png','Partial Foot Prostheses','Partial Foot Prosthesis is indicated following partial foot amputation ( surgery had done to remove a part of the foot below the ankle level. There are several reasons that will lead to partial foot amputation such as, uncontrolled/ unprotected diabetic ulcer on the foot, road traffic accidents, work related accidents. \r\nSeveral designs of Partial Foot Prosthesis are available to treat these type of amputations but the cause for the amputation is very important in treating partial foot amputees. Various causes of the amputation will affect the foot biomechanics differently and the restoration of these lost properties must be given a serious consideration under the care of trained and licensed CPO. \r\nBasically there are 2 types of main PFP prescriptions are available including below ankle partial foot prosthesis (BA-PFP), above ankle partial foot prosthesis (AA-PFP). Designs can be vary due to treatment goals of the individual.','prosthesis','1','1','2019-03-18 18:39:37','2019-03-18 18:53:46'),(11,'SER0009','11item.jpeg','BK prosthesis','Below knee prosthesis with advance technology','prosthesis','1',NULL,'2019-08-03 18:38:04','2019-08-03 18:38:04');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_photo`
--

DROP TABLE IF EXISTS `service_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serviceID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_photo`
--

LOCK TABLES `service_photo` WRITE;
/*!40000 ALTER TABLE `service_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_video`
--

DROP TABLE IF EXISTS `service_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serviceID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_video`
--

LOCK TABLES `service_video` WRITE;
/*!40000 ALTER TABLE `service_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`),
  CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iteamname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iteam_quantity` int(11) NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iteam_max` int(11) DEFAULT NULL,
  `iteam_min` int(11) DEFAULT NULL,
  `quantity_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_entry_ID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_update_ID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `confirmation_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin.laravel@labs64.com','$2y$10$8EczO78qTznFlM.XcP/1tu.GX/Myd/ub4NHDhAgcaHkfA9p6xplVq',1,'501965f2-eca6-4ad4-9261-3d4ce6326612',1,'qAY2XJXSprlw3yEni0JAKjUDu5S8XlGwkIyMUl4vil1d3bwxZuy3wrOphMID','2019-01-21 08:05:18','2019-01-21 08:05:18',NULL,'administrator'),(2,'Admin2','sdd@labs64.com','$2y$10$j84ZcN11XRbn9orA2Qrl1u37eokz4EH3htg0dl9jwuBm545vgSiru',1,'851d73ee-cc63-4a19-8199-68d78eb24bcd',1,NULL,'2019-01-21 08:05:18','2019-01-21 08:05:18',NULL,'administrator'),(3,'Demo','demo.laravel@labs64.com','$2y$10$Q5OmQh11tQEQM6YXvjug8.hFX8KehjQxgWhdUfeHeiafsEcjn0A2m',1,'52593c62-270f-4123-903a-a94159e9393a',1,NULL,'2019-01-21 08:05:18','2019-01-21 08:05:18',NULL,'receptionist'),(4,'Suwetha Rajapaksa','suwetha@gamil.com','$2y$10$zFcGkMpLaMbBVycdgZ0Iye.slkc.MsLlZeXLaW4sduviYp/JrRLua',1,'2e4c6445-7373-47ef-97b8-17f5bbc96dc8',1,NULL,'2019-01-21 13:54:55','2019-01-21 13:54:55',NULL,'Patient'),(5,'Thiluni Dahamsara','thiluni@gmail.com','$2y$10$1u2zUxXXDkC0p43TcTrHiezj8SmLKOI8HFplTJXN50Q7n1M4UtbtC',1,'d4aab590-3317-4263-a1dd-540f1328ec6a',1,NULL,'2019-01-21 14:15:42','2019-01-21 14:15:42',NULL,'Patient'),(6,'Miss.Sewumini','sewumini@gmail.com','$2y$10$WtN0gQIbM5oEboO1ZVcrSe92g.0EhTUW/KN8lK6Zf5N4rcCAgcIcq',1,'3b01ce2a-fedb-43ae-bf39-4cd5245bc9dc',1,NULL,'2019-01-21 15:25:49','2019-01-21 15:25:49',NULL,'Patient'),(7,'A.H.M Afkar','afkar347#gmail.com','$2y$10$m8biNwY2Njc1VSBnBOV3sutsQr3idS8EOC9HxuB5jhb3rruerPOLq',1,'faf7f7c6-28c4-462e-b6af-394db99ee25d',1,NULL,'2019-01-24 11:02:53','2019-01-24 11:02:53',NULL,'Patient'),(8,'Baby sathmi Disanayaka','Sathmi@gmail.com','$2y$10$rSvlM38tFZdvAqMNf.lHXerea/WYzsgMK0fnt2JN0LdUiv6M4V0/e',1,'08206d06-94fe-4d5b-a8cf-090df10a298b',1,NULL,'2019-01-29 10:47:11','2019-01-29 10:47:11',NULL,'Patient'),(9,'Dulkith Saul bathiya','Saul@gmail.com','$2y$10$XTU7Ku/ynXKV7U5OwyDgxuHYwSgx2gwC7H1Xd0xiXUQta7Jw71GA2',1,'bf5ebcdb-45f2-4d55-b4f1-544c3d79ac5a',1,NULL,'2019-02-05 11:14:11','2019-02-05 11:14:11',NULL,'Patient'),(10,'TT PATINET','Tt@gmail.com','$2y$10$/dlxD.hU7Ll6jeLHh9OcR.Bi45lnHKJvg3a0LBQ1tNMSner/Q876W',1,'c1a57de4-ae36-4e8e-aa1c-c7e5f9a9ede3',1,NULL,'2019-02-20 20:36:31','2019-02-20 20:36:31',NULL,'Patient'),(11,'RONARA BANDARA','Ronara@gmail.com','$2y$10$BdYtwtFAbh1m3SL44TmVvOkqPclRC5Cfm047Aw.sqeOlIBXSWCiwW',1,'e4c48485-5676-4cee-b397-0d54c4030175',1,NULL,'2019-02-20 21:48:44','2019-02-20 21:48:44',NULL,'Patient'),(12,'A.B.Ananda Kissiri','Ananda@ gmail.com','$2y$10$CIW0.aC5KpzWbPU5UFPeKOhDVR8.P8tcjGl2lG.92yucK.xMylg.u',1,'fcfc7c14-281b-446b-8d32-6183d922f302',1,NULL,'2019-02-21 11:04:24','2019-02-21 11:04:24',NULL,'Patient'),(13,'Mohamad imran','Imran.ali2004425@ gmail.com','$2y$10$vNfAKyTL25o0ot3Da6L4zOLQDHKex7CxXGi81aDKnKByexUVZTizy',1,'a9d685b0-52a7-4460-809b-1df1722cfb25',1,NULL,'2019-03-03 10:23:27','2019-03-03 10:23:27',NULL,'Patient'),(14,'Surangi Thakshila','Thakshila@gmail.com','$2y$10$WE6XlOQVdVEq5.71yyejx.CopNahFpVoDdd/ruX5NkX.MMmtCJIX2',1,'ed4e1a4c-585f-4efe-8b42-0710f0ae496e',1,NULL,'2019-03-06 11:04:32','2019-03-06 11:04:32',NULL,'Patient'),(15,'Mr Udaya kumar','Udaya@gmail.com','$2y$10$z63Tdi8lA0jrrEO2ZwwMZeCVVEIMkc6xS3XEoVuSS/YKoG7Lx0mna',1,'cf873bfc-c88c-4565-8b04-d4eaf63e8709',1,NULL,'2019-03-07 18:30:39','2019-03-07 18:30:39',NULL,'Patient'),(16,'Mr.pubudu mayantha','Pubudumayantha@gmail.com','$2y$10$6VVrNZFPLAFObpm6O2Dllu0FroW9LmXrD/4tRkWbG9G5Mj3T6YJI.',1,'9d02a099-5c12-4b05-b71d-c7ed22dae2e2',1,NULL,'2019-03-18 10:10:29','2019-03-18 10:10:29',NULL,'Patient'),(17,'Tyani perera','Tyani@ gmail.com','$2y$10$QS5/rR5Cpc5C0/F0zBm7fO6NiatdPzKTAnRjajzRRWKP1IxsElkXW',1,'81af2612-130a-4e99-9b45-d401a606eedc',1,NULL,'2019-03-18 20:28:39','2019-03-18 20:28:39',NULL,'Patient'),(18,'H.S .dandeniya','Sakarox1@gamill.com','$2y$10$mdoXXVml48jnkCw/sOlVEuHQAFg1pvlkcoiXy1mLf6Cg3ewBKSUwO',1,'d116bcc5-4f52-4784-adba-19ff24902ce2',1,NULL,'2019-03-21 10:36:37','2019-03-21 10:36:37',NULL,'Patient'),(19,'Usury udayanga lokuwithana','Isuruudayanga649@gmail.com','$2y$10$ijLVwaHS/ueNG5YtvG6wDuFvMeH2xG6k21S.Epi6r9aaGmeILQ5Ci',1,'29b4da04-2ce3-4d25-a4c1-17e901e0b596',1,NULL,'2019-03-23 08:18:20','2019-03-23 08:18:20',NULL,'Patient'),(20,'Miss srimathi senathilaka','Srimath@gmail.com','$2y$10$4ZR6zM/Livltba5ogqZHG.4L5fB6iEk8oOCGYXGUT7da4XDDtObjC',1,'6d46c648-67a3-4575-9677-60fd626d8a29',1,NULL,'2019-03-28 09:34:56','2019-03-28 09:34:56',NULL,'Patient'),(21,'S.m hashini','Hasini@gmail.com','$2y$10$hRN0nv7n.sl0yj0mt2bDYODiL3CXJm47FvWCD5kJmhq6AnNHvF1Nu',1,'9ed6f8df-c179-48f5-beaa-96e98e667d1d',1,NULL,'2019-04-01 12:40:33','2019-04-01 12:40:33',NULL,'Patient'),(22,'W.witon','Wilton@gmail.com','$2y$10$0hd33EjdlC6rf4YeMLmM8uAjHCnrAN/cbzwCHq1N6FG8Ctpe/dRby',1,'463b60ac-5b02-4743-a57a-faad50637955',1,NULL,'2019-04-03 13:51:17','2019-04-03 13:51:17',NULL,'Patient'),(23,'Miss.shithmi Roshada','Shithmi@gmail.com','$2y$10$g6sAToX9TgcYZ7tzaEhMqOGufXIkZWX9QN5cGnxuJyaHxFcc68MuO',1,'cf795300-ae4a-4a00-a4aa-0b554c42e70b',1,NULL,'2019-04-06 21:05:59','2019-04-06 21:05:59',NULL,'Patient'),(24,'Mr.surendaran','Surendara@gmail.com','$2y$10$WVC3filLVjBPPCmCX6jwiOIH/pHJxHkwcfwd0ET2OuuqkF1C27H22',1,'f13a37d6-fe8b-4182-b494-f4dcde2dd773',1,NULL,'2019-04-09 12:53:55','2019-04-09 12:53:55',NULL,'Patient'),(25,'Damsith Amarasena','Damsith@ gmail.com','$2y$10$3UAZJrdXYmHr/RkwJCjC/.oZWAUDDtzWeHS6L.CoD5/i.boPIyC5m',1,'1f5cd57f-f3a3-4f61-a68e-ea2305a989a7',1,NULL,'2019-04-27 11:41:13','2019-04-27 11:41:13',NULL,'Patient'),(27,'Dahami akarsha','Dahami@gmail.com','$2y$10$COZ4TuvuZVNz58EmzoYduOHEOwlLS.hrFSSvPhIHAsWTqxbWbzctu',1,'f5b5335d-78c7-4f0d-9ec0-a11ffcf56b8a',1,NULL,'2019-04-28 09:43:48','2019-04-28 09:43:48',NULL,'Patient');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  KEY `foreign_role` (`role_id`),
  CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(1,2),(3,2),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),(11,7),(12,7),(13,7),(14,7),(15,7),(16,7),(17,7),(18,7),(19,7),(20,7),(21,7),(22,7),(23,7),(24,7),(25,7),(27,7);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-28 23:09:23
