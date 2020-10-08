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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `cliente` */

LOCK TABLES `cliente` WRITE;

insert  into `cliente`(`idCliente`,`nombrecliente`,`apellidocliente`,`direccion`,`telefono`) values (1,'Emilio','Amero','los ceibales 850','3545151'),(2,'Yamila','Monti','en el medio del campo','32656565');

UNLOCK TABLES;

/*Table structure for table `detallePedido` */

DROP TABLE IF EXISTS `detallePedido`;

CREATE TABLE `detallePedido` (
  `idDetallepedido` int(11) NOT NULL AUTO_INCREMENT,
  `idPedido` int(11) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDetallepedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Data for the table `detallePedido` */

LOCK TABLES `detallePedido` WRITE;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pedido` */

LOCK TABLES `pedido` WRITE;

UNLOCK TABLES;

/*Table structure for table `servicio` */

DROP TABLE IF EXISTS `servicio`;

CREATE TABLE `servicio` (
  `idServicio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `servicio` */

LOCK TABLES `servicio` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
