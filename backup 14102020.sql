/*
SQLyog Community Edition- MySQL GUI v8.05 
MySQL - 5.7.27-0ubuntu0.18.04.1 : Database - lavanderia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`lavanderia` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `lavanderia`;

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecliente` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `apellidocliente` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `cliente` */

LOCK TABLES `cliente` WRITE;

insert  into `cliente`(`idCliente`,`nombrecliente`,`apellidocliente`,`direccion`,`telefono`) values (1,'Emilio','Amero','los ceibales 850','3545151'),(2,'Yamila','Monti','en el medio del campo','32656565'),(3,'Raul','Borda','paraisos 620','198191199'),(4,'Micael','Levrino','salta 230','35342488'),(5,'Nahuel ','Gallotti','san juan 25','8547555'),(6,'Tomas','Rinaldi','catamarca 1547','335844'),(7,'Renato','Lombardi','fresnos 478','14788');

UNLOCK TABLES;

/*Table structure for table `detallePedido` */

DROP TABLE IF EXISTS `detallePedido`;

CREATE TABLE `detallePedido` (
  `idDetallepedido` int(11) NOT NULL AUTO_INCREMENT,
  `idPedido` int(11) DEFAULT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDetallepedido`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `detallePedido` */

LOCK TABLES `detallePedido` WRITE;

insert  into `detallePedido`(`idDetallepedido`,`idPedido`,`idServicio`,`cantidad`) values (1,39,1,1),(2,40,1,1),(3,40,1,1),(4,42,1,1),(5,43,1,1),(6,44,1,1),(7,45,1,1),(8,46,1,1),(9,48,1,1),(10,49,1,1),(11,50,1,1),(12,51,1,1),(13,52,1,1),(14,54,1,1),(15,55,1,1),(16,56,1,1),(17,56,2,1),(18,58,1,2),(19,58,2,1),(20,62,1,1),(21,62,3,3),(22,63,1,1),(23,63,2,1),(24,63,2,1),(25,64,1,1),(26,64,1,1),(27,64,1,1),(28,64,1,1),(29,64,1,1),(30,64,1,1),(31,64,1,1),(32,64,1,1),(33,64,2,1),(34,64,2,1),(35,65,1,1),(36,65,1,1),(37,66,1,1),(38,66,1,3),(39,66,1,5),(40,67,1,2),(41,70,1,NULL),(42,70,3,1),(43,71,1,1),(44,72,1,1),(45,72,1,1),(46,72,1,1),(47,72,1,1),(48,72,1,1),(49,72,1,1),(50,73,1,4),(51,75,1,1),(52,76,1,1),(53,76,5,2),(54,82,1,1),(55,85,1,1),(56,85,1,1),(57,85,4,3),(58,86,1,1),(59,87,1,1),(60,91,1,1),(61,92,NULL,NULL),(62,92,1,1),(63,93,1,1),(64,93,4,5),(65,93,4,5),(66,93,4,5),(67,93,4,5),(68,93,4,5),(69,93,4,5),(70,93,4,5),(71,93,4,5),(72,93,4,5),(73,93,4,5),(74,93,4,5),(75,93,4,5),(76,93,4,5),(77,93,4,5),(78,93,4,5),(79,93,4,5),(80,93,4,5),(81,93,4,5),(82,93,4,5),(83,93,4,5),(84,93,4,5),(85,94,1,1),(86,95,1,1),(87,96,1,1),(88,98,1,1),(90,101,3,2),(109,109,NULL,NULL),(110,111,1,1),(111,112,0,0),(112,112,2,2),(113,114,1,1),(114,123,1,1),(115,123,1,1),(116,123,1,1),(117,123,1,1),(118,123,1,1),(119,123,1,1);

UNLOCK TABLES;

/*Table structure for table `pedido` */

DROP TABLE IF EXISTS `pedido`;

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) DEFAULT NULL,
  `fechapedido` datetime DEFAULT NULL,
  `fechaentrega` datetime DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

/*Data for the table `pedido` */

LOCK TABLES `pedido` WRITE;

insert  into `pedido`(`idPedido`,`idCliente`,`fechapedido`,`fechaentrega`,`estado`) values (1,2,NULL,NULL,NULL),(2,1,NULL,NULL,NULL),(3,1,NULL,NULL,NULL),(4,1,NULL,NULL,NULL),(5,1,NULL,NULL,NULL),(6,2,NULL,NULL,NULL),(7,2,NULL,NULL,NULL),(8,2,NULL,NULL,NULL),(9,1,NULL,NULL,NULL),(10,1,'2020-10-12 00:00:00',NULL,'Pendiente'),(11,1,'2020-10-12 00:00:00',NULL,'Pendiente'),(12,2,'2020-10-12 00:00:00',NULL,'Pendiente'),(13,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(14,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(15,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(16,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(17,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(18,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(19,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(20,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(21,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(22,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(23,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(24,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(25,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(26,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(27,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(28,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(29,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(30,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(31,2,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(32,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(33,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(34,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(35,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(36,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(37,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(38,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(39,1,'2020-10-12 00:00:00','2020-10-15 00:00:00','Pendiente'),(40,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(41,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(42,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(43,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(44,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(45,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(46,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(47,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(48,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(49,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(50,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(51,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(52,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(53,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(54,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(55,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(56,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(57,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(58,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(59,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(60,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(61,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(62,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(63,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(64,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(65,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(66,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(67,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(68,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(69,2,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(70,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(71,1,'2020-10-13 00:00:00','2020-10-16 00:00:00','Pendiente'),(72,3,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(73,3,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(74,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(75,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(76,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(77,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(78,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(79,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(80,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(81,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(82,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(83,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(84,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(85,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(86,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(87,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(88,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(89,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(90,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(91,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(92,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(93,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(94,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(95,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(96,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(97,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(98,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(99,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(100,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(101,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(102,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(103,2,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(104,2,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(105,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(106,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(107,3,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(108,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(109,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(110,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(111,2,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(112,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(113,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(114,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(115,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(116,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(117,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(118,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(119,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(120,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(121,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(122,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(123,3,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(124,2,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(125,2,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(126,2,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(127,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente'),(128,1,'2020-10-14 00:00:00','2020-10-17 00:00:00','Pendiente');

UNLOCK TABLES;

/*Table structure for table `servicio` */

DROP TABLE IF EXISTS `servicio`;

CREATE TABLE `servicio` (
  `idServicio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idServicio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `servicio` */

LOCK TABLES `servicio` WRITE;

insert  into `servicio`(`idServicio`,`Nombre`,`precio`) values (1,'Lavado+Secado Colcha 1 plaza',100),(2,'Lavado+Secado Colcha 2 Plaza',200),(3,'Lavado+Secado Colcha king ',250),(4,'Lavado+Secado Canasto 5 Kg',130),(5,'Secado Canasto 5 Kg',50),(6,'Planchado Canasto 5 Kg',130),(7,'Secado+Planchado 5 Kg',160);

UNLOCK TABLES;

/* Function  structure for function  `FCalculaTotalPedido` */

/*!50003 DROP FUNCTION IF EXISTS `FCalculaTotalPedido` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`userTP`@`%` FUNCTION `FCalculaTotalPedido`(fnidPedido int ) RETURNS decimal(10,0)
BEGIN
	declare total decimal;
	set total=(SELECT SUM(cantidad*precio) FROM VDetallepedido WHERE idpedido=fnidPedido);
	return total;
    END */$$
DELIMITER ;

/*Table structure for table `VDetallepedido` */

DROP TABLE IF EXISTS `VDetallepedido`;

/*!50001 DROP VIEW IF EXISTS `VDetallepedido` */;
/*!50001 DROP TABLE IF EXISTS `VDetallepedido` */;

/*!50001 CREATE TABLE `VDetallepedido` (
  `idDetallepedido` int(11) NOT NULL DEFAULT '0',
  `idPedido` int(11) DEFAULT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `total` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */;

/*Table structure for table `VPedido` */

DROP TABLE IF EXISTS `VPedido`;

/*!50001 DROP VIEW IF EXISTS `VPedido` */;
/*!50001 DROP TABLE IF EXISTS `VPedido` */;

/*!50001 CREATE TABLE `VPedido` (
  `total` decimal(10,0) DEFAULT NULL,
  `nombrecliente` varchar(201) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `idPedido` int(11) NOT NULL DEFAULT '0',
  `idCliente` int(11) DEFAULT NULL,
  `fechapedido` datetime DEFAULT NULL,
  `fechaentrega` datetime DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */;

/*View structure for view VDetallepedido */

/*!50001 DROP TABLE IF EXISTS `VDetallepedido` */;
/*!50001 DROP VIEW IF EXISTS `VDetallepedido` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userTP`@`%` SQL SECURITY DEFINER VIEW `VDetallepedido` AS (select `det`.`idDetallepedido` AS `idDetallepedido`,`det`.`idPedido` AS `idPedido`,`det`.`idServicio` AS `idServicio`,`det`.`cantidad` AS `cantidad`,`ser`.`Nombre` AS `nombre`,`ser`.`precio` AS `precio`,(`det`.`cantidad` * `ser`.`precio`) AS `total` from (`detallePedido` `det` join `servicio` `ser` on((`det`.`idServicio` = `ser`.`idServicio`)))) */;

/*View structure for view VPedido */

/*!50001 DROP TABLE IF EXISTS `VPedido` */;
/*!50001 DROP VIEW IF EXISTS `VPedido` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userTP`@`%` SQL SECURITY DEFINER VIEW `VPedido` AS (select `FCalculaTotalPedido`(`ped`.`idPedido`) AS `total`,concat(`cli`.`nombrecliente`,' ',`cli`.`apellidocliente`) AS `nombrecliente`,`ped`.`idPedido` AS `idPedido`,`ped`.`idCliente` AS `idCliente`,`ped`.`fechapedido` AS `fechapedido`,`ped`.`fechaentrega` AS `fechaentrega`,`ped`.`estado` AS `estado` from (`pedido` `ped` join `cliente` `cli` on((`ped`.`idCliente` = `cli`.`idCliente`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
