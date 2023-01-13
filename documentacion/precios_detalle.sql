/*
SQLyog Community v13.1.8 (64 bit)
MySQL - 5.5.12-log : Database - syslabsplus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `precios_detalle` */

DROP TABLE IF EXISTS `precios_detalle`;

CREATE TABLE `precios_detalle` (
  `idPrecioDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_Precio` int(11) NOT NULL,
  `id_Estudio` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idPrecioDetalle`),
  KEY `FK_Estudios_paquetedetalle` (`id_Estudio`),
  KEY `FK_Precios_paquetedetalle` (`id_Precio`),
  CONSTRAINT `FK_Estudios_paquetedetalle` FOREIGN KEY (`id_Estudio`) REFERENCES `estudios` (`idEstudio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Precios_paquetedetalle` FOREIGN KEY (`id_Precio`) REFERENCES `precios` (`idPrecio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `precios_detalle` */

insert  into `precios_detalle`(`idPrecioDetalle`,`id_Precio`,`id_Estudio`,`sucursal`,`precio`,`created_at`,`updated_at`) values 
(1,2,2,'02',50,'2022-12-23 17:00:55','2022-12-23 17:00:55'),
(2,2,2,'02',65,'2022-12-23 17:01:20','2022-12-23 18:54:39'),
(3,2,3,'02',30,'2022-12-23 17:01:38','2022-12-23 17:53:48'),
(4,2,3,'02',100,'2022-12-23 17:02:21','2022-12-23 18:41:25'),
(5,2,4,'02',5,'2022-12-23 17:02:27','2022-12-23 17:58:11'),
(6,3,1,'02',100,'2022-12-23 17:45:48','2022-12-23 18:31:58'),
(7,3,6,'02',58,'2022-12-23 18:50:35','2022-12-23 18:55:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
