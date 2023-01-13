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
/*Table structure for table `paquete_detalle` */

DROP TABLE IF EXISTS `paquete_detalle`;

CREATE TABLE `paquete_detalle` (
  `idPaqueteDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_Paquete` int(11) NOT NULL,
  `id_Estudio` int(11) NOT NULL,
  `Estudio` mediumtext COLLATE utf8_spanish2_ci,
  `Orden` int(11) DEFAULT NULL,
  `sucursal` varchar(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idPaqueteDetalle`),
  KEY `FK_Estudios_paquetedetalles` (`id_Estudio`),
  KEY `FK_Paquetes_paquetedetalles` (`id_Paquete`),
  CONSTRAINT `FK_Estudios_paquetedetalles` FOREIGN KEY (`id_Estudio`) REFERENCES `estudios` (`idEstudio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Paquetes_paquetedetalles` FOREIGN KEY (`id_Paquete`) REFERENCES `paquetes` (`idPaquete`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `paquete_detalle` */

insert  into `paquete_detalle`(`idPaqueteDetalle`,`id_Paquete`,`id_Estudio`,`Estudio`,`Orden`,`sucursal`,`created_at`,`updated_at`) values 
(3,1,2,'Examen General de Orina',0,NULL,'2022-12-21 20:08:36','2022-12-21 20:08:36'),
(4,1,3,'Quimica Sanguinea',1,NULL,'2022-12-21 20:08:36','2022-12-21 20:08:36'),
(5,1,6,'xxxxxxxxxxxxx',2,NULL,'2022-12-21 20:08:36','2022-12-21 20:08:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
