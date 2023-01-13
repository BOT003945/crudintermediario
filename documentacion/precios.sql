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
/*Table structure for table `precios` */

DROP TABLE IF EXISTS `precios`;

CREATE TABLE `precios` (
  `idPrecio` int(11) NOT NULL AUTO_INCREMENT,
  `Abreviatura` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `Descripcion` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `sucursal` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idPrecio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `precios` */

insert  into `precios`(`idPrecio`,`Abreviatura`,`Descripcion`,`sucursal`,`created_at`,`updated_at`) values 
(2,'PN','Precios de navidad','02','2022-12-23 10:15:34','2022-12-23 16:15:34'),
(3,'DN','Descuentos navideños','02','2022-12-23 17:45:23','2022-12-23 17:45:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
