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
/*Table structure for table `paquetes` */

DROP TABLE IF EXISTS `paquetes`;

CREATE TABLE `paquetes` (
  `idPaquete` int(11) NOT NULL AUTO_INCREMENT,
  `Abreviatura` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `indicaciones` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `notas_internas` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Dias` varchar(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Horas` varchar(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Minutos` varchar(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `sucursal` varchar(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idPaquete`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `paquetes` */

insert  into `paquetes`(`idPaquete`,`Abreviatura`,`Descripcion`,`indicaciones`,`notas_internas`,`Dias`,`Horas`,`Minutos`,`sucursal`,`created_at`,`updated_at`) values 
(1,'xxxxxxxx','xxxxxxxxx','xxxxxxxxx','xxxxxxxxxxxxx','3','5','9',NULL,'2022-12-21 20:08:28','2022-12-21 20:08:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
