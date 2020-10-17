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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `detallePedido` */

LOCK TABLES `detallePedido` WRITE;

insert  into `detallePedido`(`idDetallepedido`,`idPedido`,`idServicio`,`cantidad`) values (140,155,1,2),(141,155,7,1),(142,156,6,1),(143,157,1,1),(145,157,5,5),(146,158,1,1),(148,159,2,1),(149,159,2,1),(150,159,2,1),(151,159,2,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

/*Data for the table `pedido` */

LOCK TABLES `pedido` WRITE;

insert  into `pedido`(`idPedido`,`idCliente`,`fechapedido`,`fechaentrega`,`estado`) values (155,2,'2020-10-15 00:00:00','2020-10-18 00:00:00','Entregado'),(156,3,'2020-10-15 00:00:00','2020-10-18 00:00:00','Entregado'),(157,3,'2020-10-15 00:00:00','2020-10-18 00:00:00','Pendiente'),(158,1,'2020-10-15 00:00:00','2020-10-18 00:00:00','Pendiente'),(159,2,'2020-10-15 00:00:00','2020-10-18 00:00:00','Pendiente');

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
