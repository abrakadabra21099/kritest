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
-- Temporary table structure for view `M_51`
--

DROP TABLE IF EXISTS `M_51`;
/*!50001 DROP VIEW IF EXISTS `M_51`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `M_51` AS SELECT 
 1 AS `I`,
 1 AS `R`,
 1 AS `Y`,
 1 AS `calc_unit`,
 1 AS `calc_value`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `M_52`
--

DROP TABLE IF EXISTS `M_52`;
/*!50001 DROP VIEW IF EXISTS `M_52`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `M_52` AS SELECT 
 1 AS `I`,
 1 AS `R`,
 1 AS `Y`,
 1 AS `base_unit`,
 1 AS `calc_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `M_53`
--

DROP TABLE IF EXISTS `M_53`;
/*!50001 DROP VIEW IF EXISTS `M_53`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `M_53` AS SELECT 
 1 AS `I`,
 1 AS `R`,
 1 AS `Y`,
 1 AS `result_unit`,
 1 AS `result_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `M_based`
--

DROP TABLE IF EXISTS `M_based`;
/*!50001 DROP VIEW IF EXISTS `M_based`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `M_based` AS SELECT 
 1 AS `I`,
 1 AS `R`,
 1 AS `Y`,
 1 AS `base_unit`,
 1 AS `calc_unit`,
 1 AS `e`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `M_calculated`
--

DROP TABLE IF EXISTS `M_calculated`;
/*!50001 DROP VIEW IF EXISTS `M_calculated`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `M_calculated` AS SELECT 
 1 AS `I`,
 1 AS `R`,
 1 AS `Y`,
 1 AS `base_unit`,
 1 AS `calc_unit`,
 1 AS `e`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `M_result`
--

DROP TABLE IF EXISTS `M_result`;
/*!50001 DROP VIEW IF EXISTS `M_result`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `M_result` AS SELECT 
 1 AS `I`,
 1 AS `R`,
 1 AS `Y`,
 1 AS `source_unit`,
 1 AS `result_unit`,
 1 AS `k`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `M_values`
--

DROP TABLE IF EXISTS `M_values`;
/*!50001 DROP VIEW IF EXISTS `M_values`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `M_values` AS SELECT 
 1 AS `I`,
 1 AS `R`,
 1 AS `Y`,
 1 AS `unit`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `O_result`
--

DROP TABLE IF EXISTS `O_result`;
/*!50001 DROP VIEW IF EXISTS `O_result`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `O_result` AS SELECT 
 1 AS `I`,
 1 AS `R`,
 1 AS `Y`,
 1 AS `unit`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `O_values`
--

DROP TABLE IF EXISTS `O_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `O_values` (
  `indicator` varchar(150) COLLATE utf8_bin NOT NULL,
  `resource` varchar(150) COLLATE utf8_bin NOT NULL,
  `year` year(4) NOT NULL,
  `unit` varchar(10) COLLATE utf8_bin NOT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `O_values`
--

LOCK TABLES `O_values` WRITE;
/*!40000 ALTER TABLE `O_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `O_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `P_indicators`
--

DROP TABLE IF EXISTS `P_indicators`;
/*!50001 DROP VIEW IF EXISTS `P_indicators`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `P_indicators` AS SELECT 
 1 AS `I`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `P_resources`
--

DROP TABLE IF EXISTS `P_resources`;
/*!50001 DROP VIEW IF EXISTS `P_resources`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `P_resources` AS SELECT 
 1 AS `R`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `P_years`
--

DROP TABLE IF EXISTS `P_years`;
/*!50001 DROP VIEW IF EXISTS `P_years`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `P_years` AS SELECT 
 1 AS `Y`*/;
SET character_set_client = @saved_cs_client;

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
  DROP TABLE IF EXISTS `M_b`;
  DROP TABLE IF EXISTS `M_c`;
  DROP TABLE IF EXISTS `M_r`;
  DROP TABLE IF EXISTS `M_v`;
  DROP TABLE IF EXISTS `P_i`;
  DROP TABLE IF EXISTS `P_r`;
  DROP TABLE IF EXISTS `P_y`;
  DROP TABLE IF EXISTS `O_v`;
  DROP TABLE IF EXISTS `O_values`;
  CREATE TABLE `O_values` (
    `indicator` varchar(150) NOT NULL,
    `resource` varchar(150) NOT NULL,
    `year` year NOT NULL,
    `unit` varchar(10) NOT NULL,
    `value` double NOT NULL
  );
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
    INSERT INTO O_values SELECT * FROM M_51; 
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
    INSERT INTO O_values SELECT * FROM M_52; 
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
    INSERT INTO O_values SELECT * FROM M_53; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `kritest`
--

USE `kritest`;

--
-- Final view structure for view `M_51`
--

/*!50001 DROP VIEW IF EXISTS `M_51`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `M_51` AS select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_calculated`.`calc_unit` AS `calc_unit`,(`M_values`.`value` * pow(10,`M_calculated`.`e`)) AS `calc_value`,`M_values`.`value` AS `value` from (`M_values` join `M_calculated`) where ((`M_values`.`I` = `M_calculated`.`I`) and (`M_values`.`R` = `M_calculated`.`R`) and (`M_values`.`Y` = `M_calculated`.`Y`) and (`M_values`.`unit` = `M_calculated`.`base_unit`) and (`M_values`.`unit` <> `M_calculated`.`calc_unit`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `M_52`
--

/*!50001 DROP VIEW IF EXISTS `M_52`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `M_52` AS select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_based`.`base_unit` AS `base_unit`,(`M_values`.`value` * pow(10,-(`M_based`.`e`))) AS `calc_value` from (`M_values` join `M_based`) where ((`M_values`.`I` = `M_based`.`I`) and (`M_values`.`R` = `M_based`.`R`) and (`M_values`.`Y` = `M_based`.`Y`) and (`M_values`.`unit` = `M_based`.`calc_unit`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `M_53`
--

/*!50001 DROP VIEW IF EXISTS `M_53`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `M_53` AS select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_result`.`result_unit` AS `result_unit`,(`M_values`.`value` * `M_result`.`k`) AS `result_value` from (`M_values` join `M_result`) where ((`M_values`.`I` = `M_result`.`I`) and (`M_values`.`R` = `M_result`.`R`) and (`M_values`.`Y` = `M_result`.`Y`) and (`M_values`.`unit` = `M_result`.`source_unit`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `M_based`
--

/*!50001 DROP VIEW IF EXISTS `M_based`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `M_based` AS select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`T_multiplication`.`base_unit` AS `base_unit`,`T_multiplication`.`calc_unit` AS `calc_unit`,`T_multiplication`.`e` AS `e` from (`T_multiplication` join `M_values`) where ((`T_multiplication`.`calc_unit` = `M_values`.`unit`) and (`T_multiplication`.`base_unit` <> `M_values`.`unit`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `M_calculated`
--

/*!50001 DROP VIEW IF EXISTS `M_calculated`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `M_calculated` AS select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`T_multiplication`.`base_unit` AS `base_unit`,`T_multiplication`.`calc_unit` AS `calc_unit`,`T_multiplication`.`e` AS `e` from (`T_multiplication` join `M_values`) where ((`T_multiplication`.`base_unit` = `M_values`.`unit`) and (`T_multiplication`.`calc_unit` <> `M_values`.`unit`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `M_result`
--

/*!50001 DROP VIEW IF EXISTS `M_result`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `M_result` AS select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`T_convertation`.`source_unit` AS `source_unit`,`T_convertation`.`result_unit` AS `result_unit`,`T_convertation`.`k` AS `k` from (`T_convertation` join `M_values`) where ((`T_convertation`.`source_unit` = `M_values`.`unit`) and (`T_convertation`.`result_unit` <> `M_values`.`unit`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `M_values`
--

/*!50001 DROP VIEW IF EXISTS `M_values`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `M_values` AS select `T_values`.`indicator` AS `I`,`T_values`.`resource` AS `R`,`T_values`.`year` AS `Y`,`T_values`.`unit` AS `unit`,`T_values`.`value` AS `value` from (((`T_values` join `P_indicators`) join `P_resources`) join `P_years`) where ((`T_values`.`indicator` = `P_indicators`.`I`) and (`T_values`.`resource` = `P_resources`.`R`) and (`T_values`.`year` = `P_years`.`Y`)) union all select `O_values`.`indicator` AS `I`,`O_values`.`resource` AS `R`,`O_values`.`year` AS `Y`,`O_values`.`unit` AS `unit`,`O_values`.`value` AS `value` from (((`O_values` join `P_indicators`) join `P_resources`) join `P_years`) where ((`O_values`.`indicator` = `P_indicators`.`I`) and (`O_values`.`resource` = `P_resources`.`R`) and (`O_values`.`year` = `P_years`.`Y`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `O_result`
--

/*!50001 DROP VIEW IF EXISTS `O_result`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `O_result` AS select `M_values`.`I` AS `I`,`M_values`.`R` AS `R`,`M_values`.`Y` AS `Y`,`M_values`.`unit` AS `unit`,`M_values`.`value` AS `value` from `M_values` where (`M_values`.`unit` in ('Mtoe','Gwh','Twh')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `P_indicators`
--

/*!50001 DROP VIEW IF EXISTS `P_indicators`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `P_indicators` AS select `T_indicators`.`title` AS `I` from `T_indicators` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `P_resources`
--

/*!50001 DROP VIEW IF EXISTS `P_resources`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `P_resources` AS select `T_resources`.`title` AS `R` from `T_resources` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `P_years`
--

/*!50001 DROP VIEW IF EXISTS `P_years`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `P_years` AS select `T_years`.`title` AS `Y` from `T_years` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-05 22:42:05
