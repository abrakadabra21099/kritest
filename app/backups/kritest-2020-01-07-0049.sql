-- MySQL dump 10.13  Distrib 5.6.46, for Linux (x86_64)
--
-- Host: localhost    Database: kritest
-- ------------------------------------------------------
-- Server version	5.6.46

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
-- Current Database: `kritest`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `kritest` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `kritest`;

--
-- Table structure for table `T_convertation`
--

DROP TABLE IF EXISTS `T_convertation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_convertation` (
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  `source_unit` varchar(10) COLLATE utf8_bin NOT NULL,
  `result_unit` varchar(10) COLLATE utf8_bin NOT NULL,
  `k` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_convertation`
--

LOCK TABLES `T_convertation` WRITE;
/*!40000 ALTER TABLE `T_convertation` DISABLE KEYS */;
INSERT INTO `T_convertation` VALUES ('Mtce --> Mm3ng','Mtce','Mm3ng',751.4768963),('Gft3ng --> Twh','Gft3ng','Twh',0.301277062),('MMbtu --> Mj','MMbtu','Mj',1055.060005),('Bboe --> Qbtu','Bboe','Qbtu',0.58000001),('Gtoe --> Gtce','Gtoe','Gtce',1.4285714),('Gj --> Gwh','Gj','Gwh',0.000277778),('Ktoe --> Kboe','Ktoe','Kboe',6.8419054),('Gm3ng --> Gft3ng','Gm3ng','Gft3ng',35.958043);
/*!40000 ALTER TABLE `T_convertation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_convertation_optimized`
--

DROP TABLE IF EXISTS `T_convertation_optimized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_convertation_optimized` (
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  `source_unit` varchar(10) COLLATE utf8_bin NOT NULL,
  `result_unit` varchar(10) COLLATE utf8_bin NOT NULL,
  `k` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_convertation_optimized`
--

LOCK TABLES `T_convertation_optimized` WRITE;
/*!40000 ALTER TABLE `T_convertation_optimized` DISABLE KEYS */;
INSERT INTO `T_convertation_optimized` VALUES ('Mtoe --> Twh','Mtoe','Twh',11.6299995859),('Mtoe --> Mtce','Mtoe','Mtce',1.4285714),('Mtoe --> Mboe','Mtoe','Mboe',6.8419054),('Mtoe --> Mm3ng','Mtoe','Mm3ng',1073.538401814946),('Mtoe --> MMbtu','Mtoe','MMbtu',3968305.2004190534),('Mtoe --> Gft3ng','Mtoe','Gft3ng',38.60234001461311),('Mtoe --> Gj','Mtoe','Gj',4186800.104595653);
/*!40000 ALTER TABLE `T_convertation_optimized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_indicators`
--

DROP TABLE IF EXISTS `T_indicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_indicators` (
  `title` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_indicators`
--

LOCK TABLES `T_indicators` WRITE;
/*!40000 ALTER TABLE `T_indicators` DISABLE KEYS */;
INSERT INTO `T_indicators` VALUES ('Совокупное конечное энергопотребление (Total final consumption)');
/*!40000 ALTER TABLE `T_indicators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_multiplication`
--

DROP TABLE IF EXISTS `T_multiplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_multiplication` (
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  `base_unit` varchar(10) COLLATE utf8_bin NOT NULL,
  `calc_unit` varchar(10) COLLATE utf8_bin NOT NULL,
  `e` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_multiplication`
--

LOCK TABLES `T_multiplication` WRITE;
/*!40000 ALTER TABLE `T_multiplication` DISABLE KEYS */;
INSERT INTO `T_multiplication` VALUES ('Gft3ng <--> ft3ng','ft3ng','Gft3ng',-9),('Gtce <--> tce','tce','Gtce',-9),('Gtoe <--> toe','toe','Gtoe',-9),('MMbtu <--> btu','btu','MMbtu',-6),('Mj <--> j','j','Mj',-6),('Kboe <--> boe','boe','Kboe',-3),('Mtoe <--> toe','toe','Mtoe',-6),('Twh <--> wh','wh','Twh',-12),('Ktoe <--> toe','toe','Ktoe',-3),('Gj <--> j','j','Gj',-9),('Mboe <--> boe','boe','Mboe',-6),('Mtce <--> tce','tce','Mtce',-6),('Gm3ng <--> m3ng','m3ng','Gm3ng',-9),('Bboe <--> boe','boe','Bboe',-9),('Qbtu <--> btu','btu','Qbtu',-15),('Mm3ng <--> m3ng','m3ng','Mm3ng',-6),('Mft3ng <--> ft3ng','ft3ng','Mft3ng',-6),('Gwh <--> wh','wh','Gwh',-9);
/*!40000 ALTER TABLE `T_multiplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_resources`
--

DROP TABLE IF EXISTS `T_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_resources` (
  `title` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_resources`
--

LOCK TABLES `T_resources` WRITE;
/*!40000 ALTER TABLE `T_resources` DISABLE KEYS */;
INSERT INTO `T_resources` VALUES ('Природный газ (Natural gas)');
/*!40000 ALTER TABLE `T_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_values`
--

DROP TABLE IF EXISTS `T_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_values` (
  `indicator` varchar(150) COLLATE utf8_bin NOT NULL,
  `resource` varchar(150) COLLATE utf8_bin NOT NULL,
  `year` year(4) NOT NULL,
  `unit` varchar(10) COLLATE utf8_bin NOT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_values`
--

LOCK TABLES `T_values` WRITE;
/*!40000 ALTER TABLE `T_values` DISABLE KEYS */;
INSERT INTO `T_values` VALUES ('Совокупное конечное энергопотребление (Total final consumption)','Природный газ (Natural gas)',2018,'Mtoe',149.33),('Совокупное конечное энергопотребление (Total final consumption)','Природный газ (Natural gas)',2021,'Mtoe',151.33),('Совокупное конечное энергопотребление (Total final consumption)','Природный газ (Natural gas)',2017,'Mtoe',148.67),('Совокупное конечное энергопотребление (Total final consumption)','Природный газ (Natural gas)',2019,'Mtoe',150),('Совокупное конечное энергопотребление (Total final consumption)','Природный газ (Natural gas)',2020,'Mtoe',150.67);
/*!40000 ALTER TABLE `T_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_years`
--

DROP TABLE IF EXISTS `T_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `T_years` (
  `title` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_years`
--

LOCK TABLES `T_years` WRITE;
/*!40000 ALTER TABLE `T_years` DISABLE KEYS */;
INSERT INTO `T_years` VALUES (2017),(2018),(2019),(2020),(2021);
/*!40000 ALTER TABLE `T_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kritest'
--
/*!50003 DROP PROCEDURE IF EXISTS `clean` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `clean`()
BEGIN
  DROP TABLE IF EXISTS `M_based`;
  DROP TABLE IF EXISTS `M_calculated`;
  DROP TABLE IF EXISTS `M_result`;
  DROP TABLE IF EXISTS `M_values`;
  DROP TABLE IF EXISTS `P_indicators`;
  DROP TABLE IF EXISTS `P_resources`;
  DROP TABLE IF EXISTS `P_years`;
  DROP TABLE IF EXISTS `O_values`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p51` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p51`()
BEGIN 
    INSERT INTO O_values2 SELECT * FROM M_51; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p52` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p52`()
BEGIN 
    INSERT INTO O_values2 SELECT * FROM M_52; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p53` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p53`()
BEGIN 
    INSERT INTO O_values2 SELECT * FROM M_53; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-06 20:49:22
