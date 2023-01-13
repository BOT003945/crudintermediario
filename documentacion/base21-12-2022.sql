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
/*Table structure for table `antibioticos` */

DROP TABLE IF EXISTS `antibioticos`;

CREATE TABLE `antibioticos` (
  `idAntibiotico` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idAntibiotico`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `antibioticos` */

insert  into `antibioticos`(`idAntibiotico`,`descripcion`,`created_at`,`updated_at`) values 
(1,'Escoba','2022-12-21 19:20:12','2022-12-21 19:20:12');

/*Table structure for table `bacterias` */

DROP TABLE IF EXISTS `bacterias`;

CREATE TABLE `bacterias` (
  `idBacteria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idBacteria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `bacterias` */

/*Table structure for table `cfdi_parametros` */

DROP TABLE IF EXISTS `cfdi_parametros`;

CREATE TABLE `cfdi_parametros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CFDISUCURSAL` varchar(2) DEFAULT NULL,
  `CFDIRFC` varchar(20) DEFAULT NULL,
  `CFDIRAZON` varchar(200) DEFAULT NULL,
  `CFDITEL` varchar(100) DEFAULT NULL,
  `CFDIMAIL` varchar(100) DEFAULT NULL,
  `CFDIWEB` varchar(100) DEFAULT NULL,
  `CFDIFCALLE` varchar(20) DEFAULT NULL,
  `CFDIFNEXT` varchar(10) DEFAULT NULL,
  `CFDIFNINT` varchar(10) DEFAULT NULL,
  `CFDIFCOL` varchar(50) DEFAULT NULL,
  `CFDIFCP` int(5) DEFAULT NULL,
  `CFDIFMUNICIPIO` varchar(50) DEFAULT NULL,
  `CFDIFESTADO` varchar(50) DEFAULT NULL,
  `CFDIFPAIS` varchar(50) DEFAULT NULL,
  `CFDIFREFERENCIA` varchar(100) DEFAULT NULL,
  `CFDIECALLE` varchar(20) DEFAULT NULL,
  `CFDIENEXT` varchar(10) DEFAULT NULL,
  `CFDIENINT` varchar(10) DEFAULT NULL,
  `CFDIECOL` varchar(50) DEFAULT NULL,
  `CFDIECP` int(5) DEFAULT NULL,
  `CFDIEMUNICIPIO` varchar(50) DEFAULT NULL,
  `CFDIEESTADO` varchar(50) DEFAULT NULL,
  `CFDIEPAIS` varchar(50) DEFAULT NULL,
  `CFDIEREFERENCIA` varchar(100) DEFAULT NULL,
  `CFDIIMP` varchar(3) DEFAULT NULL,
  `CFDIURL` varchar(100) DEFAULT NULL,
  `CFDIPROVEEDOR` varchar(100) DEFAULT NULL,
  `CFDIUSUARIO` varchar(50) DEFAULT NULL,
  `CFDIPASSPAC` varchar(100) DEFAULT NULL,
  `CFDICERPAC` varchar(250) DEFAULT NULL,
  `CFDILLAVE` varchar(250) DEFAULT NULL,
  `CFDIPASSCER` varchar(50) DEFAULT NULL,
  `CFDICERCFDI` varchar(250) DEFAULT NULL,
  `CFDIFECHADESPUES` varchar(100) DEFAULT NULL,
  `CFDIFECHADESPUES1` varchar(100) DEFAULT NULL,
  `CFDIFECHAANTES` varchar(100) DEFAULT NULL,
  `CFDIFECHAANTES1` varchar(100) DEFAULT NULL,
  `CFDICERSERIAL` varchar(100) DEFAULT NULL,
  `CDFINUMAPROBACION` varchar(15) DEFAULT NULL,
  `CFDIAÑOAPROBACION` varchar(10) DEFAULT NULL,
  `CFDISERIE` varchar(5) DEFAULT NULL,
  `CFDIDESDE` int(10) DEFAULT NULL,
  `CFDIHASTA` int(10) DEFAULT NULL,
  `CFDIULTIMO` int(10) DEFAULT NULL,
  `FACTLOGO` longblob,
  `CFDIVENCIMIENTOCHK` int(1) DEFAULT NULL,
  `CFDIVENCIMIENTODATE` int(2) DEFAULT NULL,
  `CFDIPAC` varchar(40) DEFAULT NULL,
  `CFDIREGIMEN` varchar(300) DEFAULT NULL,
  `CFDIREGIMENCVESAT` varchar(3) DEFAULT NULL,
  `CFDIRUTADATA` varchar(300) DEFAULT NULL,
  `CFDIRETENCIONES` varchar(1) DEFAULT NULL COMMENT 'Activar Retenciones',
  `CFDIUSUARIOMAIL` varchar(50) DEFAULT NULL,
  `CFDICONTRASENAMAIL` varchar(20) DEFAULT NULL,
  `CFDICORREOCOPIAMAIL` varchar(300) DEFAULT NULL,
  `CFDIPUERTOMAIL` int(10) DEFAULT NULL,
  `CFDISERVIDORMAIL` varchar(100) DEFAULT NULL,
  `CFDITITULOMAIL` varchar(300) DEFAULT NULL,
  `CFDIMENSAJEMAIL` varchar(500) DEFAULT NULL,
  `CFDISMTP` int(11) DEFAULT NULL,
  `CFDIUSUARIOMASCARA` varchar(30) DEFAULT NULL,
  `CFDICOMPLEMENTO` int(11) DEFAULT NULL,
  `sucursal` varchar(2) NOT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) DEFAULT NULL,
  `eliminar` int(1) DEFAULT '0',
  `cfdiretivaprct` double(10,6) DEFAULT NULL,
  `cfdiretisrprct` double(10,6) DEFAULT NULL,
  `cfdiretisr` double(10,6) DEFAULT NULL,
  PRIMARY KEY (`id`,`sucursal`),
  KEY `NewIndex1` (`CFDIRFC`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `cfdi_parametros` */

insert  into `cfdi_parametros`(`id`,`CFDISUCURSAL`,`CFDIRFC`,`CFDIRAZON`,`CFDITEL`,`CFDIMAIL`,`CFDIWEB`,`CFDIFCALLE`,`CFDIFNEXT`,`CFDIFNINT`,`CFDIFCOL`,`CFDIFCP`,`CFDIFMUNICIPIO`,`CFDIFESTADO`,`CFDIFPAIS`,`CFDIFREFERENCIA`,`CFDIECALLE`,`CFDIENEXT`,`CFDIENINT`,`CFDIECOL`,`CFDIECP`,`CFDIEMUNICIPIO`,`CFDIEESTADO`,`CFDIEPAIS`,`CFDIEREFERENCIA`,`CFDIIMP`,`CFDIURL`,`CFDIPROVEEDOR`,`CFDIUSUARIO`,`CFDIPASSPAC`,`CFDICERPAC`,`CFDILLAVE`,`CFDIPASSCER`,`CFDICERCFDI`,`CFDIFECHADESPUES`,`CFDIFECHADESPUES1`,`CFDIFECHAANTES`,`CFDIFECHAANTES1`,`CFDICERSERIAL`,`CDFINUMAPROBACION`,`CFDIAÑOAPROBACION`,`CFDISERIE`,`CFDIDESDE`,`CFDIHASTA`,`CFDIULTIMO`,`FACTLOGO`,`CFDIVENCIMIENTOCHK`,`CFDIVENCIMIENTODATE`,`CFDIPAC`,`CFDIREGIMEN`,`CFDIREGIMENCVESAT`,`CFDIRUTADATA`,`CFDIRETENCIONES`,`CFDIUSUARIOMAIL`,`CFDICONTRASENAMAIL`,`CFDICORREOCOPIAMAIL`,`CFDIPUERTOMAIL`,`CFDISERVIDORMAIL`,`CFDITITULOMAIL`,`CFDIMENSAJEMAIL`,`CFDISMTP`,`CFDIUSUARIOMASCARA`,`CFDICOMPLEMENTO`,`sucursal`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`cfdiretivaprct`,`cfdiretisrprct`,`cfdiretisr`) values 
(1,'00','EKU9003173C9','ESCUELA KEMPER URGATE','55555555555','email@dominio.com','www.dominio.com','Venustiano Carranza','0','80','Obispado',64000,'Monterrey','Nuevo Leon','Mexico','IDCER','Las Chalupas','291','','Pedregales',65000,'a','b','c','11112222','16','https://timbradopruebas.stagefacturador.com/cancelacion.asmx','https://timbradopruebas.stagefacturador.com/timbrado.asmx','test','TEST','C:\\Users\\Aaron\\Documents\\Venware-Data\\FacturaElectronicaCFDI\\certificados\\DEM010101AB1.pfx','C:\\Users\\sopor\\Documents\\Venware-Data\\FacturaElectronicaCFDI\\certificados\\CSD_Escuela_Kemper_Urgate_EKU9003173C9_20190617_131753.key','12345678a','C:\\Users\\sopor\\Documents\\Venware-Data\\FacturaElectronicaCFDI\\certificados\\CSD_Escuela_Kemper_Urgate_EKU9003173C9_20190617_131753s.cer','17/06/2019 02:44:14 p. m.','2019/06/17','17/06/2023 02:44:14 p. m.','2023/06/17','30001000000400002434','20','','A',1,9996,30,'����\0JFIF\0\0`\0`\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0.\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0������E�����Y�U�eVa�	��+�����<\'��e����x	I!�p[�g�:u\'��iv�z��[���\0T�y��Vc��=NG5�)sj��T�W��n��Y/N���d��r�ߗZׯ�aK�3��|岁�q+���#�-���\Z�>x���o~�v����31_��#<�=y�N�*�\"�nw��4Q^w�=R�J�<U{�]�om�.�K3�����f���D����-x&[��u�76��o*��+��<V���}Útz��|�Z��#�+>� �\0PI�E�W1��@�ǈ�æ��d���͎~]�d�q�Y��c�xfH��u�i�c�Q�v�T�>�Y��oQ^V�.ѵ�Z=�x�[��\\���E(@�� q�\rz6��X�\\\Z��8��pLr+�9��Š/QT4�^�[��f�7�o�<bM���������FG�{�_i����DG��c[��9�>��\\1>��w�+0:\n+��~%�KZ�#��՗�2�F����=�,\0$�M^�|k��\rH\"յh-�#>P���PH�;=�ߢ���xf�E�ծ55���?g�O�L&7u��֧�|e�x��I�Y��n�F��z�`	9��07��*�����1j&��j\"u���s�WA��jvbx���A�)�s����r���S��h�sV��o�7�o���*�W����mb�������m|�O1��q�\0u�\Zrn���+��UEp-�Y�\ZT���Iu#���댮+��u�]N ���M\Z)��#���*n*����r��xWĭW�����i�^ڤBT�����,k���Z���f������NS��s��׳|O��a�����-u��)l�,ɉ�!�o�28��m��i�(\Z{���đ� u>�Fa�\Z�2�c���UӴ��oLK���4�F����d�B:�x����]���\Z������@�Εp��m���^��n9�pO9�N��U��jrxsN�`D���X΀�N�{�Ҵ�/{���6��7�B3y�ݮ7�r �C�U�|��?�%&�f0�+�[�^}�\0$�ş�5�����ּ����7�5�)n����j1�-�P������Mccs��,���=kq\nI۸(Ï�^y�K�x�zu�����w��0 ���g?t�}1^�y\\YO�\ZH�=F+��>j�v���t�N��^��-����(Â=~��\n��_?���K�5�+I��.��qm;<Ѷ���{��t~�;�x�T�C_\rM���a@����D��o�nl��W�LZu���m.93;)ʆg<��gR�ƽ����\\���Rߪ��=B60�(�pS�S����m�Xu`?�r�x�d��8�z�X�\0�C�Ό[�:T��O�	?��=B��j��?�/�A�?_ZO}�������T��e��\'�>�إ��\0\0��/i:�B����Q�ف�4�:�\0�9�H�(Ml���u/�-�?\r�NTXY��#�,���䚭�\\�{�ڥΚ����}AB�1��ǅ@���[�<{�e6�w\r��a��y�{w0��@�<ry�xC�J�J�Ȼ�ξ��5��7���J2�\0t��ߥL+�x���w�k\Z&�ok�VH��灷;q��v&��C�����J����В3�v������^ Դ[]*FS?�dR��PAۗ�r@�~���e��<yy�	!sXGk@��T�1�Ɲլ6�%��\r~�=CW������쑫��;��d��?ڧ�W����\r�^�ln�n�W7(V����8�#=9����_��?�0Y�f\"�+��Cp��n� �Q�Ӽ�=���U�}wS�ⲋq��O��͕ ����x��zW[�5ׅ\n\\=Γ{%��rP}���A��e^�Z��u-2�\0o��\n���,���#�n�V��<Cd<�-aZ�h�NCT�^�m��\0�\'k�����8�ߏ|�s�8����N�*Sn�����.�����/�B����99�������w�ZɎv�-��d���P��`�YA�F-\0�	_�/��jK�	��aӭ%@�/��H1��#��~�f��}I�Fu\"�ck!�+���t����z����n�v��YB�An�.�T\0�;�j�b��l����W�pG�V�,�k0�]�4j�bTw��ֲr�-s�4�k_�F���մY/�6׳[�z�>|~%LV���y��3�E���Z��W�$RK&Q��Y�?�\n}붰ӭ4�E���ˉy�ŋVbr�ܒj��op\n��}��TT�Rilz���\0|\ni��=m ?X�X��9�N��T��}\"�h��H���a\0;��u��J?i�2��4��I�Uua��%\0lo���������4e���ݙ�36\0�bI\'\0O@jw@q�:Ņ��M���j0��W��S�~̀T��~��Ni����k\\K�ih��r*�!��������#�=�����9g\Zw���hv���i�ڰ�>c��wn�R}�o4�mm߇4h/���l�������d�\'#�j�4��;�n?}(Uv$�B����=�j.��q��	��2m�Iq\Z#�	�FLcyy��#&��Gq�}\r6K2�(��g�r���կ{�k�(��y����{�\\�Sû���`��/�~L�\\��\\s�Kt�G�b�燐��%�\"�\n�<p����Fd�9�z%&(�@y��R�4��/ɎŮԤ1�}�C!]�\0��ڝeg���ks�-R\\�5F&`�~A�������z\rs�q[xmm�;�Mq�sQ�|mc#v�%�U;X��3���q���]���?�n-+H��\n���4���^�E>`<���l�W��]1��fT|#��xm�7D�pI�Ȯ��0i�jI�h��{��T�d�Wu�r���+�������',1,15,'Facturador Electrónico','601 General de Ley Personas Morales','601','','0','correo@inadware.com.mx','tu1PrEI1-!qv','a@a.com',26,'mail.inadware.com.mx','Envío de Factura Electrónica / Empresa de Prueba SA de CV.','Estimado cliente: [ ] \r\n\r\nAnexo encontrará su comprobante fiscal digital por internet (CFDI, Factura Electrónica).\r\n\r\nMisma que cumple con la reglamentación vigente del Servicio de Administración Tributaria (SAT).\r\n\r\nAtte. La Empresa de Prueba SA de CV.',0,'correo@inadware.com.mx',3,'00','2019-09-17 14:09:47','2019-09-17 14:09:47','0',0,10.666700,1.250000,0.000000);

/*Table structure for table `colainit` */

DROP TABLE IF EXISTS `colainit`;

CREATE TABLE `colainit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `procesado` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `colainit` */

/*Table structure for table `datfiscal` */

DROP TABLE IF EXISTS `datfiscal`;

CREATE TABLE `datfiscal` (
  `id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00',
  `Rfc` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Nombre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direccion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Colonia` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ciudad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Entidad` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rfc` (`Rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `datfiscal` */

/*Table structure for table `deptos` */

DROP TABLE IF EXISTS `deptos`;

CREATE TABLE `deptos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00',
  `Depto` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `depto` (`sucursal`,`Depto`),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `deptos` */

insert  into `deptos`(`id`,`sucursal`,`Depto`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`created_at`,`updated_at`) values 
(1,'00','Hematologia',NULL,NULL,NULL,0,NULL,NULL),
(2,'00','Orinas',NULL,NULL,NULL,0,NULL,NULL),
(3,'00','Departamento',NULL,NULL,NULL,0,'2022-12-21 19:53:21','2022-12-21 19:53:21');

/*Table structure for table `descred` */

DROP TABLE IF EXISTS `descred`;

CREATE TABLE `descred` (
  `id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Clave` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Nombre` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Valido` datetime DEFAULT NULL,
  `porcentaje` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`sucursal`,`Nombre`),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `descred` */

/*Table structure for table `detalle_grupo_antibioticos` */

DROP TABLE IF EXISTS `detalle_grupo_antibioticos`;

CREATE TABLE `detalle_grupo_antibioticos` (
  `idDetalleGrupoAntibiotico` int(11) NOT NULL AUTO_INCREMENT,
  `id_GrupoAntibiotico` int(11) DEFAULT NULL,
  `id_Antibiotico` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idDetalleGrupoAntibiotico`),
  KEY `id_GrupoAntibiotico` (`id_GrupoAntibiotico`),
  KEY `id_Antibiotico` (`id_Antibiotico`),
  CONSTRAINT `detalle_grupo_antibioticos_ibfk_2` FOREIGN KEY (`id_Antibiotico`) REFERENCES `antibioticos` (`idAntibiotico`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalle_grupo_antibioticos_ibfk_1` FOREIGN KEY (`id_GrupoAntibiotico`) REFERENCES `grupo_antibioticos` (`idGrupoAntibiotico`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `detalle_grupo_antibioticos` */

/*Table structure for table `doctores` */

DROP TABLE IF EXISTS `doctores`;

CREATE TABLE `doctores` (
  `idDoctor` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Paterno` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Materno` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nombre` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direccion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Especialidad1` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Especialidad2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fec_alta` datetime DEFAULT '2017-01-01 00:00:00',
  `Pacientes_Mes` int(11) DEFAULT NULL,
  `Pacientes_Acum` int(11) DEFAULT NULL,
  `Importe_mes` int(11) DEFAULT NULL,
  `Importe_Acum` int(11) DEFAULT NULL,
  `Centro` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tels` mediumtext COLLATE utf8mb4_unicode_ci,
  `Pais` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estado` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Municipio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Localidad` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Colonia` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `CedProf` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FecNac` date DEFAULT NULL,
  `Sexo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idDoctor`),
  KEY `doctor` (`doctor`),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `doctores` */

insert  into `doctores`(`idDoctor`,`sucursal`,`doctor`,`Paterno`,`Materno`,`Nombre`,`Direccion`,`Especialidad1`,`Especialidad2`,`Fec_alta`,`Pacientes_Mes`,`Pacientes_Acum`,`Importe_mes`,`Importe_Acum`,`Centro`,`Tels`,`Pais`,`Estado`,`Municipio`,`Localidad`,`cp`,`Colonia`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`CedProf`,`FecNac`,`Sexo`,`email`,`created_at`,`updated_at`) values 
(1,'00','A quien Corresponda',NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),
(2,'00','DR. Esparza',NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'00','DR. Rodriguez P.',NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL),
(4,'03','María',NULL,NULL,NULL,NULL,NULL,NULL,'2017-01-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'M',NULL,'2022-12-21 19:53:31','2022-12-21 19:53:31');

/*Table structure for table `empresas` */

DROP TABLE IF EXISTS `empresas`;

CREATE TABLE `empresas` (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nombre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fec_convenio` datetime DEFAULT NULL,
  `tipo_tarifa` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colonia` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descuento` int(11) DEFAULT NULL,
  `Pacientes_Mes` int(11) DEFAULT NULL,
  `Pacientes_Acum` int(11) DEFAULT NULL,
  `Importe_Mes` int(11) DEFAULT NULL,
  `Importe_Acum` int(11) DEFAULT NULL,
  `Saldo` int(11) DEFAULT NULL,
  `rfc` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ciudad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Entidad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo_Empresa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha_Corte` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dias_pago` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Acum_estudios` double DEFAULT NULL,
  `Cla_Ant` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UsaTarifaDe` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiUsa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`),
  KEY `nombre` (`sucursal`,`Nombre`(191)),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `empresas` */

insert  into `empresas`(`idEmpresa`,`sucursal`,`Nombre`,`cp`,`tel1`,`tel2`,`Fec_convenio`,`tipo_tarifa`,`contacto`,`colonia`,`descuento`,`Pacientes_Mes`,`Pacientes_Acum`,`Importe_Mes`,`Importe_Acum`,`Saldo`,`rfc`,`direccion`,`Ciudad`,`Entidad`,`Tipo_Empresa`,`Fecha_Corte`,`dias_pago`,`Acum_estudios`,`Cla_Ant`,`UsaTarifaDe`,`SiUsa`,`numero`,`pais`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`created_at`,`updated_at`) values 
(1,'03','Público en General',NULL,'4444444444444444',NULL,NULL,'03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2022-12-21 19:25:25'),
(2,'00','inadware',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
(3,'00','Imss',NULL,NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
(4,'03','Burger King',NULL,NULL,NULL,NULL,'03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-12-21 19:25:37','2022-12-21 19:25:37');

/*Table structure for table `estadisticas` */

DROP TABLE IF EXISTS `estadisticas`;

CREATE TABLE `estadisticas` (
  `id` int(11) NOT NULL,
  `Doctor` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Depto` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estudio` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `estadisticas` */

/*Table structure for table `estestxsol` */

DROP TABLE IF EXISTS `estestxsol`;

CREATE TABLE `estestxsol` (
  `id` int(11) NOT NULL,
  `Estudio` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tomas` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Faltantes` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Solicitud` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Importe` double DEFAULT NULL,
  `Depto` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estatus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observaciones` mediumtext COLLATE utf8mb4_unicode_ci,
  `Fecha` datetime DEFAULT NULL,
  `Imprimir` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `EstxSol` (`Estudio`,`Solicitud`,`Depto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `estestxsol` */

/*Table structure for table `estsolicitud` */

DROP TABLE IF EXISTS `estsolicitud`;

CREATE TABLE `estsolicitud` (
  `id` int(11) NOT NULL,
  `Paciente` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Doctor` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Empresa` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo_Pago` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha_Entrega` datetime DEFAULT NULL,
  `Anticipo` double DEFAULT NULL,
  `Expediente` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Importe` double DEFAULT NULL,
  `Tipo_toma` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estatus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descuento` double DEFAULT NULL,
  `Solicitud` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Facturar_a` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fur` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `porcentaje` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha_Entregado` datetime DEFAULT NULL,
  `Factura` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomCredencial` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pagos` double DEFAULT NULL,
  `NumImpResultados` int(11) DEFAULT NULL,
  `Folio` int(11) DEFAULT NULL,
  `SeFactura` int(11) DEFAULT NULL,
  `Impreso` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`Solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `estsolicitud` */

/*Table structure for table `estudios` */

DROP TABLE IF EXISTS `estudios`;

CREATE TABLE `estudios` (
  `idEstudio` int(11) NOT NULL AUTO_INCREMENT,
  `ColorTitulo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AlineacionTitulo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notas_Internas` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Indicaciones` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sexo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ventaindividual` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Codigo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dias` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Horas` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Minutos` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depto` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Abreviatura` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tomas` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Frecuencia` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipoformato` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notas` mediumtext COLLATE utf8mb4_unicode_ci,
  `TiempoProceso` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TipoMuestra` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Instrucciones` mediumtext COLLATE utf8mb4_unicode_ci,
  `DatosTecnicos` mediumtext COLLATE utf8mb4_unicode_ci,
  `Encabezado` mediumtext COLLATE utf8mb4_unicode_ci,
  `Tubo` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Noaplicadescuento` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esperfil` tinyint(1) NOT NULL DEFAULT '0',
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `SucProceso` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idEstudio`,`depto`),
  KEY `Nombre` (`sucursal`,`Nombre`),
  KEY `Abreviatura` (`sucursal`,`Abreviatura`),
  KEY `ESTUDIOSDepto` (`sucursal`,`depto`),
  KEY `fecha_act` (`fecha_act`),
  KEY `fk_estudios_deptos1_idx` (`depto`),
  CONSTRAINT `fk_estudios_deptos1` FOREIGN KEY (`depto`) REFERENCES `deptos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `estudios` */

insert  into `estudios`(`idEstudio`,`ColorTitulo`,`AlineacionTitulo`,`Notas_Internas`,`Indicaciones`,`Sexo`,`ventaindividual`,`Codigo`,`Descripcion`,`Dias`,`Horas`,`Minutos`,`depto`,`sucursal`,`Nombre`,`Abreviatura`,`Tomas`,`Frecuencia`,`Tipoformato`,`Notas`,`TiempoProceso`,`TipoMuestra`,`Instrucciones`,`DatosTecnicos`,`Encabezado`,`Tubo`,`Noaplicadescuento`,`esperfil`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`SucProceso`,`created_at`,`updated_at`) values 
(1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'00','Biometria','BM','1',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,'Rojo',NULL,0,NULL,NULL,NULL,0,'00',NULL,NULL),
(2,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'00','Examen General de Orina','Ego','1',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'Lila',NULL,0,NULL,NULL,NULL,0,'00',NULL,NULL),
(3,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'00','Quimica Sanguinea','QS1','1',NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,'Rojo',NULL,0,NULL,NULL,NULL,0,'00',NULL,NULL),
(4,'#000000','Alineado al centro',NULL,NULL,'Ambos',NULL,'ssssssssss','sssssssssssssss','1','1','1',2,'03','sssssssssssss','ssssssss',NULL,NULL,NULL,NULL,NULL,'Espectoracion',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,'03','2022-12-21 19:52:36','2022-12-21 19:52:45'),
(6,'#000000','Alineado al centro',NULL,NULL,'Ambos',NULL,'xxxxxxxx','xxxxxxxxxxxx','1','1','1',1,'03','xxxxxxxxxxxxx','xxxxxxxxx',NULL,NULL,NULL,NULL,NULL,'Espectoracion',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,'03','2022-12-21 20:00:03','2022-12-21 20:00:03');

/*Table structure for table `etiquetas` */

DROP TABLE IF EXISTS `etiquetas`;

CREATE TABLE `etiquetas` (
  `Id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solicitud` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abreviaciones` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `muestraid` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folio` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `solicitud` (`sucursal`,`solicitud`),
  KEY `muetraid` (`muestraid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `etiquetas` */

/*Table structure for table `facturas` */

DROP TABLE IF EXISTS `facturas`;

CREATE TABLE `facturas` (
  `id` int(11) NOT NULL,
  `Factura` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Paciente` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Empresa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Situacion` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaFactura` datetime DEFAULT NULL,
  `FechaEnvio` datetime DEFAULT NULL,
  `Importe` double DEFAULT NULL,
  `FormaPago` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumCheque` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaPago` datetime DEFAULT NULL,
  `PagoAcumulado` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`Factura`),
  KEY `IdCliente` (`Paciente`,`Empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `facturas` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `formatos` */

DROP TABLE IF EXISTS `formatos`;

CREATE TABLE `formatos` (
  `id_estudio` int(11) DEFAULT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFormato` int(11) NOT NULL AUTO_INCREMENT,
  `id_prueba` int(11) NOT NULL,
  `Prueba` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valor1` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Valor2` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Medida` mediumtext COLLATE utf8mb4_unicode_ci,
  `tipoFormato` mediumtext COLLATE utf8mb4_unicode_ci,
  `Orden` int(11) DEFAULT NULL,
  `ClavePrueba` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoanalizador` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TextoValores` mediumtext COLLATE utf8mb4_unicode_ci,
  `word` longtext COLLATE utf8mb4_unicode_ci,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idFormato`),
  KEY `ClavePrueba` (`sucursal`,`ClavePrueba`),
  KEY `Estudio` (`sucursal`),
  KEY `idprueba` (`sucursal`,`id_prueba`),
  KEY `FK_Estudios_Formatos` (`id_estudio`),
  KEY `FK_Pruebas_Formatos` (`id_prueba`),
  CONSTRAINT `FK_Pruebas_Formatos` FOREIGN KEY (`id_prueba`) REFERENCES `pruebas` (`idPrueba`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Estudios_Formatos` FOREIGN KEY (`id_estudio`) REFERENCES `estudios` (`idEstudio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `formatos` */

insert  into `formatos`(`id_estudio`,`sucursal`,`idFormato`,`id_prueba`,`Prueba`,`Valor1`,`Valor2`,`Medida`,`tipoFormato`,`Orden`,`ClavePrueba`,`autoanalizador`,`TextoValores`,`word`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`created_at`,`updated_at`) values 
(6,'00',9,1,'cccccccccccc',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-12-21 20:00:55','2022-12-21 20:00:55'),
(6,'00',10,1,'cccccccccccc',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-12-21 20:00:55','2022-12-21 20:00:55'),
(6,'00',11,1,'zzzzzzzzzzzzz',NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-12-21 20:00:55','2022-12-21 20:00:55');

/*Table structure for table `geho_estudio` */

DROP TABLE IF EXISTS `geho_estudio`;

CREATE TABLE `geho_estudio` (
  `id` int(11) NOT NULL,
  `ordenGeho` int(11) DEFAULT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudio` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombreEstudio` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orden` (`sucursal`,`ordenGeho`),
  KEY `estudioOrden` (`sucursal`,`ordenGeho`,`estudio`),
  KEY `estudio` (`estudio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `geho_estudio` */

/*Table structure for table `geho_ordenes` */

DROP TABLE IF EXISTS `geho_ordenes`;

CREATE TABLE `geho_ordenes` (
  `id` int(11) NOT NULL,
  `ordenGeho` int(11) DEFAULT NULL,
  `paterno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `materno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fechaNacimiento` datetime DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `edad_tipo` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fechaOrden` datetime DEFAULT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modificado` tinyint(4) DEFAULT NULL,
  `folio` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expediente` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospitalizacion` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fechaSyslabs` datetime DEFAULT NULL,
  `fechaGeho` datetime DEFAULT NULL,
  `cama` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orden` (`sucursal`,`ordenGeho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `geho_ordenes` */

/*Table structure for table `grupo_antibioticos` */

DROP TABLE IF EXISTS `grupo_antibioticos`;

CREATE TABLE `grupo_antibioticos` (
  `idGrupoAntibiotico` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varbinary(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idGrupoAntibiotico`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `grupo_antibioticos` */

insert  into `grupo_antibioticos`(`idGrupoAntibiotico`,`descripcion`,`created_at`,`updated_at`) values 
(1,'Lincosamidas','2022-12-21 19:20:20','2022-12-21 19:20:20');

/*Table structure for table `interfases` */

DROP TABLE IF EXISTS `interfases`;

CREATE TABLE `interfases` (
  `Id` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  `cveequipo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NombreEquipo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Puerto` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `velocidad` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tamano` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Paridad` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bitparada` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id` (`codigo`),
  KEY `cveequipo` (`cveequipo`),
  KEY `NombreEquipo` (`NombreEquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `interfases` */

/*Table structure for table `invfis` */

DROP TABLE IF EXISTS `invfis`;

CREATE TABLE `invfis` (
  `id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cveReact` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nombreReactivo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` double(15,2) DEFAULT NULL,
  `unidad` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factor` double(15,2) DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal` (`sucursal`,`eliminar`),
  KEY `reactivo` (`sucursal`,`cveReact`),
  KEY `eliminar` (`eliminar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `invfis` */

/*Table structure for table `metodos` */

DROP TABLE IF EXISTS `metodos`;

CREATE TABLE `metodos` (
  `idMetodo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idMetodo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `metodos` */

insert  into `metodos`(`idMetodo`,`descripcion`,`created_at`,`updated_at`) values 
(1,'A mano','2022-12-21 19:37:56','2022-12-21 19:37:56');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `movcaja` */

DROP TABLE IF EXISTS `movcaja`;

CREATE TABLE `movcaja` (
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `Consec` datetime DEFAULT NULL,
  `Caja` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cajero` int(11) DEFAULT NULL,
  `Solicitud` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Folio` int(11) DEFAULT NULL,
  `Factura` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Importe` double DEFAULT NULL,
  `Referencia` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FormaPago` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Caja` (`sucursal`,`Caja`),
  KEY `Cajero` (`sucursal`,`Cajero`),
  KEY `Consec` (`sucursal`,`Consec`),
  KEY `Solicitud` (`sucursal`,`Solicitud`),
  KEY `busqueda` (`sucursal`,`Consec`,`Solicitud`,`Referencia`),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `movcaja` */

/*Table structure for table `move_s` */

DROP TABLE IF EXISTS `move_s`;

CREATE TABLE `move_s` (
  `id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `documento` int(11) NOT NULL DEFAULT '0',
  `fecha_mov` datetime DEFAULT NULL,
  `tipo_mov` int(11) DEFAULT NULL,
  `nota` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal` (`sucursal`,`documento`),
  KEY `eliminar` (`eliminar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `move_s` */

/*Table structure for table `move_s_detalle` */

DROP TABLE IF EXISTS `move_s_detalle`;

CREATE TABLE `move_s_detalle` (
  `id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `documento` int(11) NOT NULL DEFAULT '0',
  `fecha_mov` date DEFAULT NULL,
  `tipo_mov` int(11) DEFAULT NULL,
  `cveReactivo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombreReactivo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` double(15,5) DEFAULT NULL,
  `unidad` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min` tinyint(4) DEFAULT NULL,
  `factor` double(15,5) DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal` (`sucursal`,`documento`),
  KEY `reactivo` (`sucursal`,`documento`,`cveReactivo`),
  KEY `eliminar` (`eliminar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `move_s_detalle` */

/*Table structure for table `multi` */

DROP TABLE IF EXISTS `multi`;

CREATE TABLE `multi` (
  `id` int(11) NOT NULL,
  `f_invInicial` datetime DEFAULT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cveReactivo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `existencia` double(15,2) DEFAULT NULL,
  `entradas` double(15,2) DEFAULT NULL,
  `salidas` double(15,2) DEFAULT NULL,
  `consumido` double(15,2) NOT NULL DEFAULT '0.00',
  `fisico` double(15,2) DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cvereactivo` (`sucursal`,`cveReactivo`),
  KEY `eliminar` (`eliminar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `multi` */

/*Table structure for table `pacientes` */

DROP TABLE IF EXISTS `pacientes`;

CREATE TABLE `pacientes` (
  `idPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Paciente` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Paterno` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Materno` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nombre` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FecNac` datetime DEFAULT NULL,
  `Sexo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Calle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Numero` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rfc` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estudios` int(11) DEFAULT NULL,
  `Ult_solicitud` datetime DEFAULT NULL,
  `Fec_alta` datetime DEFAULT NULL,
  `Importe` int(11) DEFAULT NULL,
  `Importe_Acum` int(11) DEFAULT NULL,
  `Saldo` int(11) DEFAULT NULL,
  `EmpresaAnt` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suc_empresa` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_Empresa` int(11) NOT NULL,
  `Foraneo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descuento` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Titular` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estado` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Municipio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Localidad` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cp` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Colonia` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Credencial` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumCredencial` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telefono` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumEmpleado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pais` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `enviarwhatsapp` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idPaciente`),
  KEY `empresa` (`suc_empresa`,`id_Empresa`),
  KEY `paciente` (`Paciente`),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB AUTO_INCREMENT=7116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pacientes` */

insert  into `pacientes`(`idPaciente`,`sucursal`,`Paciente`,`Paterno`,`Materno`,`Nombre`,`FecNac`,`Sexo`,`Calle`,`Numero`,`Rfc`,`Estudios`,`Ult_solicitud`,`Fec_alta`,`Importe`,`Importe_Acum`,`Saldo`,`EmpresaAnt`,`suc_empresa`,`id_Empresa`,`Foraneo`,`Descuento`,`Titular`,`Estado`,`Municipio`,`Localidad`,`Cp`,`Colonia`,`Credencial`,`NumCredencial`,`Telefono`,`NumEmpleado`,`Pais`,`cliente`,`email`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`enviarwhatsapp`,`created_at`,`updated_at`) values 
(1,'00','Aaron Alcocer',NULL,NULL,NULL,'2022-11-01 00:00:00','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9992006840',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(2,'00','Juan Baas',NULL,NULL,NULL,'2000-01-01 00:00:00','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9999418889',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(3,'00','Javier Balam',NULL,NULL,NULL,'2022-07-01 00:00:00','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6116,'00','Kit Cescot\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6117,'00','Hilde Dabbs\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6118,'00','Stacy Pairpoint\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6119,'00','Flory Ivanishev\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6120,'00','Nola Yukhnevich\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6121,'00','Ianthe Ellis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6122,'00','Trueman Mattersley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6123,'00','Valaree O\' Mahony\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6124,'00','Mathew Hainey`\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6125,'00','Antonella Costellow\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6126,'00','Denys Ghelerdini\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6127,'00','Hakim Hartburn\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6128,'00','Nicol Ryson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6129,'00','Shani Yegorchenkov\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6130,'00','Arnoldo Malt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6131,'00','Robinia Cheng\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6132,'00','Callean Kilday\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6133,'00','Mehetabel Neale\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6134,'00','Blythe Baldery\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6135,'00','Hyacintha Kinchin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6136,'00','Ravid Lindell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6137,'00','Una Allardyce\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6138,'00','Gusta Holtum\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6139,'00','Kele Clawson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6140,'00','Reggi Stannislawski\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6141,'00','Ainslie Jelkes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6142,'00','Shantee Gadman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6143,'00','Wren Millichap\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6144,'00','Lotta Stickells\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6145,'00','Mathe Klemencic\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6146,'00','Thomasine Ortelt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6147,'00','Elke Bavage\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6148,'00','Jake Tomini\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6149,'00','Llywellyn Paff\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6150,'00','Andria MacParland\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6151,'00','Kevina Drakes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6152,'00','Ade Gledhall\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6153,'00','Rozamond Sparshott\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6154,'00','Kirstyn Brickner\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6155,'00','Ambrosius Waldock\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6156,'00','Christopher Chopping\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6157,'00','Damita Marcinkowski\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6158,'00','Kathi Flint\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6159,'00','Errick Bigham\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6160,'00','Franni Maharg\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6161,'00','Mara Bladen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6162,'00','Yalonda Josum\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6163,'00','Meghan Keigher\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6164,'00','Violette Tevelov\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6165,'00','Elle Spatarul\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6166,'00','Sybila Harby\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6167,'00','Rene Dumbleton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6168,'00','Dino Brehaut\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6169,'00','Florina Chasmoor\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6170,'00','Umberto McElwee\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6171,'00','Karil Rubinovitsch\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6172,'00','Dannie Tuison\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6173,'00','Cris Luggar\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6174,'00','Rodrique Hamley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6175,'00','Crystal Hundell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6176,'00','Eli Lamblot\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6177,'00','Roxine Cosstick\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6178,'00','Chandra Michelet\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6179,'00','Cacilia Schollar\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6180,'00','Burnard Lytton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6181,'00','Sonia Fildes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6182,'00','Marmaduke Shieber\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6183,'00','Crissy MacCracken\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6184,'00','Meredithe Siemandl\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6185,'00','Marlon Glavias\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6186,'00','Gabriella De Carolis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6187,'00','Bengt Spinke\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6188,'00','Lonnie Cheel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6189,'00','Bary Fealy\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6190,'00','Clyve Petyanin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6191,'00','Chilton Yarnell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6192,'00','Robinetta McCreath\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6193,'00','Adiana Trumper\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6194,'00','Leola Laban\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6195,'00','Judi Chrispin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6196,'00','Cobbie Eadon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6197,'00','Jeddy Zorn\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6198,'00','Mallory Maas\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6199,'00','Ninette Dowding\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6200,'00','Laney Wroath\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6201,'00','Haven Sturrock\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6202,'00','Dario Murt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6203,'00','Teodor Tyson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6204,'00','Alessandra Creggan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6205,'00','Gray Fusco\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6206,'00','Corby Chilles\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6207,'00','Kirstyn Dolley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6208,'00','Addy Bartak\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6209,'00','Calvin Jore\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6210,'00','Latisha Barling\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6211,'00','Cart Dowding\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6212,'00','Wendel Wenderoth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6213,'00','Timothee Eixenberger\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6214,'00','Addi Liffe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6215,'00','Bobbie Coomer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6216,'00','Chancey Kubalek\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6217,'00','Otha Chong\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6218,'00','Reade Crenshaw\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6219,'00','Ethelred Rhodef\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6220,'00','Roby Patkin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6221,'00','Lewes Myton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6222,'00','Brynna Aldwick\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6223,'00','Stavro Denyakin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6224,'00','Donovan Demko\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6225,'00','Winfield Larkings\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6226,'00','Karna Easterbrook\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6227,'00','Nathanil Juggings\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6228,'00','Ashla Dorling\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6229,'00','Walsh Filippyev\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6230,'00','Valry Cranton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6231,'00','Rosemaria Cutriss\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6232,'00','Sydelle Southerell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6233,'00','Damiano Fawltey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6234,'00','Adriane MacGeaney\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6235,'00','Latrina Hansard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6236,'00','Jarid Ever\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6237,'00','Erda Pockey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6238,'00','Kirstin MacCague\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6239,'00','Brittani Fahy\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6240,'00','Jo-ann Tarbett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6241,'00','Woodie Girardez\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6242,'00','Lucio Osichev\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6243,'00','Abra Salliss\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6244,'00','Jerad Hamel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6245,'00','Avril Bidewel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6246,'00','Filmer Feaveer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6247,'00','Meara Uc\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6248,'00','Danielle Eltone\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6249,'00','Cameron Ivanchenkov\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6250,'00','Sammy Orcott\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6251,'00','Jamesy Mozzi\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6252,'00','Meaghan Nise\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6253,'00','Conrado Haquin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6254,'00','Pegeen Bouzan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6255,'00','Linn Lemmertz\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6256,'00','Pietro Titcomb\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6257,'00','Andie McCully\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6258,'00','Tomlin Jacklin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6259,'00','Kelwin Brusle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6260,'00','Eba Von Der Empten\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6261,'00','Jami Grob\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6262,'00','Delphine Giovannoni\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6263,'00','Fawne Matiebe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6264,'00','Toddie Stoad\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6265,'00','Myrta Henricsson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6266,'00','Oralle Dandie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6267,'00','Dannie Lardeux\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6268,'00','Allis Umpleby\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6269,'00','Keenan Lamerton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6270,'00','Sonni Bassam\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6271,'00','Karna Girardoni\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6272,'00','Sebastien Farnish\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6273,'00','Maynard Haysar\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6274,'00','Miguelita Mosconi\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6275,'00','Pernell Fishbourn\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6276,'00','Brina Bowness\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6277,'00','Paige Meeson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6278,'00','Robina Learmount\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6279,'00','Isidor Palfreyman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6280,'00','Bekki Klimp\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6281,'00','Orly Donohoe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6282,'00','Wenda Stallan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6283,'00','Hinze Bellenie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6284,'00','Min Pickworth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6285,'00','Debor Simonite\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6286,'00','Yorke Thurley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6287,'00','Justine Sibylla\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6288,'00','Evyn McNae\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6289,'00','Wynne Lamming\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6290,'00','Alphonso Leonida\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6291,'00','Clovis Huggard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6292,'00','Flossi Shacklady\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6293,'00','Cacilia Janc\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6294,'00','Jasen Le Gallo\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6295,'00','Eden Booker\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6296,'00','Cozmo Adamski\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6297,'00','Elliot Grigoliis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6298,'00','Giorgio Garred\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6299,'00','Lita Rampley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6300,'00','Floris Fibbitts\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6301,'00','Cammi Ponder\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6302,'00','Jeremias Scothorn\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6303,'00','Amanda Tootin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6304,'00','Darcy Redihalgh\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6305,'00','Steven Cust\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6306,'00','Debbie Meredith\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6307,'00','Myrtia Husby\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6308,'00','Brunhilde Ebbitt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6309,'00','Ondrea Brende\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6310,'00','Steffie McGuckin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6311,'00','Mallorie Forder\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6312,'00','Blinni Rahl\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6313,'00','Alie Philipart\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6314,'00','Gabbie Cuer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6315,'00','Stearne Causton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6316,'00','Vin Borwick\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6317,'00','Kimberli Lethem\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6318,'00','Constantine Pavel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6319,'00','Sancho Castro\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6320,'00','Babbie Nellen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6321,'00','Erena MacDonald\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6322,'00','Abbe Wallington\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6323,'00','Ginni MacKnocker\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6324,'00','Ferrell Sponder\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6325,'00','Mikaela Giovannardi\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6326,'00','Benyamin Boddis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6327,'00','Mollie McCluskey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6328,'00','Karolina Rickesies\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6329,'00','Davey Bryce\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6330,'00','Rea Mea\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6331,'00','Arri Chuck\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6332,'00','Bronny Lambourne\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6333,'00','Gilbert Haimes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6334,'00','Archibaldo Griffin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6335,'00','Abbott Balsom\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6336,'00','Solomon Casari\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6337,'00','Suzi Yakob\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6338,'00','Sergio Day\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6339,'00','Michel Poley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6340,'00','Debera Metzing\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6341,'00','Shaughn O Mullen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6342,'00','Charleen Sutch\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6343,'00','Russ Littlechild\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6344,'00','Boniface Portt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6345,'00','Gustavo Babon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6346,'00','Harmon Purkins\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6347,'00','Sterne Waddam\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6348,'00','Anestassia Berre\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6349,'00','Jonie Gladwin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6350,'00','Jonell Randales\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6351,'00','Carmella Layland\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6352,'00','Regina Youles\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6353,'00','Myles Pilipyak\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6354,'00','Nickolai Lonie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6355,'00','Lyle Colbert\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6356,'00','Jocelyn Hamnet\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6357,'00','Sisely Francisco\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6358,'00','Tally Braben\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6359,'00','Carmon Permain\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6360,'00','Cassandra Ney\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6361,'00','Matilda Rickword\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6362,'00','Wrennie Schrinel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6363,'00','Annissa Winnard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6364,'00','Benjamin Rogliero\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6365,'00','Elmo Cupper\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6366,'00','Artemis Greenalf\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6367,'00','Meier Tiltman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6368,'00','Thurston Gruczka\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6369,'00','Randie Haughin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6370,'00','Lockwood Braunle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6371,'00','Phelia Putland\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6372,'00','Wang Ivanchikov\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6373,'00','Katuscha McCahey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6374,'00','Elene Bernlin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6375,'00','Garek Leeves\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6376,'00','Rachel Aspey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6377,'00','Bibbie Bernardoux\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6378,'00','Lenette Baigrie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6379,'00','Mickey Lintill\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6380,'00','Etta Bissiker\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6381,'00','Burke Tremmil\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6382,'00','Rochell Arends\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6383,'00','William Dedam\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6384,'00','Kevon Puckett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6385,'00','Ted Belch\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6386,'00','Les Zealey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6387,'00','Desiri Rolston\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6388,'00','Dot Dumbreck\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6389,'00','Dyane Arnao\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6390,'00','Danya Berr\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6391,'00','Ema Van der Linde\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6392,'00','Silvan Sheppey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6393,'00','Lamond Betchley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6394,'00','Lina Gurdon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6395,'00','Thor Radclyffe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6396,'00','Shanon Hayselden\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6397,'00','Shana Van Leeuwen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6398,'00','Geoffrey Brislan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6399,'00','Myrtia Schwandt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6400,'00','Dina Carletti\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6401,'00','Leshia Fley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6402,'00','Lorette Hairsnape\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6403,'00','Joyann Chessel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6404,'00','Jude Papps\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6405,'00','Marcus Cancelier\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6406,'00','Meredith Jaegar\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6407,'00','Galven Bourgaize\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6408,'00','Federica Cornock\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6409,'00','Nels Snoddy\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6410,'00','Patric Bandiera\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6411,'00','Faber Iorillo\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6412,'00','Bobbye Zammitt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6413,'00','Blithe Doohey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6414,'00','Nonnah Lissenden\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6415,'00','Udale Van Bruggen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6416,'00','Angelica Fraschini\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6417,'00','Luther Plesing\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6418,'00','Petr Baltrushaitis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6419,'00','Kristina Singleton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6420,'00','Flory Mc Gorley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6421,'00','Brittni Ajean\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6422,'00','Venita Engelbrecht\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6423,'00','Kirk Rilston\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6424,'00','Dmitri Smallridge\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6425,'00','Delphinia Childes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6426,'00','Manuel Langelay\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6427,'00','Charlotte Fawdrie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6428,'00','Pavla O\'Flaverty\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6429,'00','Konrad Poulden\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6430,'00','Niel Jack\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6431,'00','Kerwinn McGilvray\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6432,'00','Tally Loyndon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6433,'00','Delilah Vicioso\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6434,'00','Sidney Orgee\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6435,'00','Dawn Blagdon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6436,'00','Wilma Filipiak\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6437,'00','Hurley Hannay\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6438,'00','Torin Finch\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6439,'00','Ransell Jurewicz\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6440,'00','Chilton Sent\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6441,'00','Dolf Figures\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6442,'00','Caryn Villa\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6443,'00','Jeramie Obern\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6444,'00','Ernesta McMeanma\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6445,'00','Kerwin Flanne\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6446,'00','Teddie Kelby\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6447,'00','Marsh Peyton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6448,'00','Dorthea Chawkley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6449,'00','Erny Clynter\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6450,'00','Aguie Olwen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6451,'00','Arley Newlyn\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6452,'00','Antonie Presdee\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6453,'00','Karie Hundy\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6454,'00','Rodrick Pierrepont\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6455,'00','Rois Gotfrey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6456,'00','Trix Duddy\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6457,'00','Juana Gidman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6458,'00','Stephenie Keir\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6459,'00','Bethena Gumb\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6460,'00','Thomasa Dayly\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6461,'00','Kinnie Capenor\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6462,'00','Tiffani Widdowson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6463,'00','Lowe Tinghill\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6464,'00','Robyn Avrahamoff\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6465,'00','Noreen Lucio\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6466,'00','Halsey Bladen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6467,'00','Pacorro Keys\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6468,'00','Giacobo Miklem\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6469,'00','Janine De Bernardis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6470,'00','Ernestus Menichini\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6471,'00','Sigfrid Bage\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6472,'00','Marys Meacher\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6473,'00','Vasili Colls\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6474,'00','Keriann Swigg\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6475,'00','Clemente McCay\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6476,'00','Jacquelin Acland\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6477,'00','Bengt Monksfield\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6478,'00','Pierce Penfold\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6479,'00','Catharine Mahaddy\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6480,'00','Florina Nevett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6481,'00','Dayle Tesdale\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6482,'00','Cort Sattin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6483,'00','Lorin Odeson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6484,'00','Duffy Wedlake\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6485,'00','Kelcie Dmisek\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6486,'00','Donnie Bennetto\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6487,'00','Pearline Gewer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6488,'00','Haily Demead\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6489,'00','Wilfrid Monkman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6490,'00','Maurene Macer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6491,'00','Constance Peacham\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6492,'00','Avis Auckland\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6493,'00','Waldemar Ponceford\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6494,'00','Shelby Ferraretto\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6495,'00','Tomasine Zoellner\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6496,'00','Mariya Middlebrook\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6497,'00','Bernardina Hardage\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6498,'00','Dorise Timpany\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6499,'00','Sayers Wilkinson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6500,'00','Rodie Christophle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6501,'00','Raeann MacNelly\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6502,'00','Doralynne Brient\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6503,'00','Frederich Cowlard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6504,'00','Chane Fasse\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6505,'00','Ray Kreutzer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6506,'00','Mora Martusov\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6507,'00','Sheilakathryn Heminsley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6508,'00','Dmitri Grzegorzewicz\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6509,'00','Hardy Corhard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6510,'00','Durand Bogey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6511,'00','Michelina Zecchinelli\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6512,'00','Jemimah Hendriksen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6513,'00','Laird Yegorkov\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6514,'00','Orlando Grey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6515,'00','Kellby Dewis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6516,'00','Martie Willavize\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6517,'00','Clarabelle Hadden\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6518,'00','Vere Bentham3\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6519,'00','Bibi Erratt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6520,'00','Merrill Prime\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6521,'00','Godfree Boote\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6522,'00','Anjanette Gyves\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6523,'00','Cass Ferbrache\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6524,'00','Axe Robb\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6525,'00','Estele Caso\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6526,'00','Carmine Georgins\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6527,'00','Bunni Kleisel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6528,'00','Pacorro Mityashin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6529,'00','Franklin Farge\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6530,'00','Amii Buckleigh\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6531,'00','Theobald Rizzardi\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6532,'00','Burtie Meindl\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6533,'00','Emmeline Waddams\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6534,'00','Graig Gores\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6535,'00','Clive Whorf\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6536,'00','Dee dee Walicki\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6537,'00','Ara Sushams\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6538,'00','Judd Matkin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6539,'00','Laurice Rankcom\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6540,'00','Pamela Carlill\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6541,'00','Craig Wainman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6542,'00','Katrine Jeste\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6543,'00','Davida Ondrich\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6544,'00','Clementius Craster\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6545,'00','Erika Tuckley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6546,'00','Addy Newing\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6547,'00','Olivero Staining\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6548,'00','Demetrius Kevern\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6549,'00','Gloriane Aaronsohn\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6550,'00','Claudio Maillard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6551,'00','Joey Dabel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6552,'00','Beitris Franzetti\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6553,'00','Welsh Endricci\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6554,'00','Matti Matthew\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6555,'00','Kimmie Walbrook\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6556,'00','Ambrosi Shanklin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6557,'00','Andy McNalley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6558,'00','Colette Jarrel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6559,'00','Roarke Readmire\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6560,'00','Charlie Hurtic\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6561,'00','Nathalie Howatt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6562,'00','Berty Duncklee\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6563,'00','Hilton Axe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6564,'00','Lilah Lante\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6565,'00','Yasmin Prosser\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6566,'00','Roderigo Dutton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6567,'00','Kamila McKeran\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6568,'00','Maurita Creighton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6569,'00','Wilton Janman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6570,'00','Carlyle Marlon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6571,'00','Donny Romanetti\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6572,'00','Bronny Petch\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6573,'00','Goldie Kienzle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6574,'00','Ronnie Garrick\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6575,'00','Nancee Body\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6576,'00','Selinda Cowap\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6577,'00','Auroora Fullagar\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6578,'00','Aymer Gavagan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6579,'00','Gawen Achrameev\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6580,'00','Jamaal Wroughton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6581,'00','Karina Severns\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6582,'00','Shandra Klesl\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6583,'00','Booth Pursey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6584,'00','Dehlia Esley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6585,'00','Aggi Cobson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6586,'00','Paulina Raitie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6587,'00','Oswald Bayliss\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6588,'00','Fanechka Demelt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6589,'00','Bernelle Norwich\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6590,'00','Prisca Longstreet\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6591,'00','Shandie Caselli\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6592,'00','Nickola Signoret\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6593,'00','Margaretha Baumadier\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6594,'00','Gregory Barnfield\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6595,'00','Hilton Bealton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6596,'00','Hillary Blockley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6597,'00','Murry Slyne\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6598,'00','Lee Dingle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6599,'00','Bear Satford\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6600,'00','Tracie Parsonage\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6601,'00','Miguela Beecroft\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6602,'00','Konstance Donnelly\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6603,'00','Arielle Demaine\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6604,'00','Katharine Girardetti\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6605,'00','Isabelita Rosenauer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6606,'00','Arden Suggett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6607,'00','Shaylah Artinstall\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6608,'00','Dianne Mattusevich\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6609,'00','Dulce Keuning\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6610,'00','Kristy Fairney\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6611,'00','Hayes Hawgood\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6612,'00','Chiquita Bagg\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6613,'00','Philomena Healeas\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6614,'00','Derwin Danielski\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6615,'00','Mirabelle Catonnet\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6616,'00','Portie Berrecloth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6617,'00','Cesaro Whiteson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6618,'00','Sullivan Aylott\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6619,'00','Benedikt Magson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6620,'00','Tabina Hunnicutt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6621,'00','Deb Gricks\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6622,'00','Nixie Provis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6623,'00','Giles Flann\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6624,'00','Garrot Lilley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6625,'00','Rosco Bramelt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6626,'00','Brigida Camous\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6627,'00','Monroe Harmston\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6628,'00','Boniface Lipscomb\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6629,'00','Annelise Aizkovitch\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6630,'00','Patricia Hum\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6631,'00','Sabina Leversha\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6632,'00','Tillie Chaney\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6633,'00','Estrella Presidey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6634,'00','Valentino Fisher\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6635,'00','Cinderella Shalliker\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6636,'00','Berk Marjot\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6637,'00','Marleen Baglin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6638,'00','Clerc Yvon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6639,'00','Britt Gannicott\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6640,'00','Rachel Hachard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6641,'00','Christabella Gerauld\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6642,'00','Ettie Dowdall\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6643,'00','Juan Wiltsher\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6644,'00','Levon Kirwood\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6645,'00','Scottie Dowse\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6646,'00','Alexis Cristofor\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6647,'00','Cori Milson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6648,'00','Kelsi Maypowder\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6649,'00','Sidonia Calles\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6650,'00','Aurelie Cockton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6651,'00','Si Diggens\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6652,'00','Brigitta Olanda\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6653,'00','Lillian Papworth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6654,'00','Foster MacFie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6655,'00','Osbourn Robison\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6656,'00','Finley Gostling\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6657,'00','Far Hargerie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6658,'00','Ruthanne Beasant\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6659,'00','Jazmin Gravener\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6660,'00','Marion Coombes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6661,'00','Fancy Furlonge\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6662,'00','Berkie Franciskiewicz\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6663,'00','Bathsheba Peret\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6664,'00','Sena Cicchinelli\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6665,'00','Reilly de Verson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6666,'00','Lilly Marchelli\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6667,'00','Leland Edmett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6668,'00','George Kilmister\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6669,'00','Roderich Siddons\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6670,'00','Malanie Leonardi\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6671,'00','Sunny Melbourne\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6672,'00','Kaleb Symcox\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6673,'00','Starr Agdahl\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6674,'00','Karole Skilbeck\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6675,'00','Terrance Hove\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6676,'00','Harriette Bruff\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6677,'00','Nicol Appleyard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6678,'00','Stern Trude\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6679,'00','Catriona MacConchie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6680,'00','Jeri Gail\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6681,'00','Dalis Denzey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6682,'00','Otto Travis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6683,'00','Sidonia Dallow\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6684,'00','Antonia Jeafferson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6685,'00','Daniele Murkus\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6686,'00','Colby Braime\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6687,'00','Galvan Estabrook\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6688,'00','Skylar Selcraig\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6689,'00','Constantine Bulluck\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6690,'00','Gayle Ellum\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6691,'00','Gerri Spancock\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6692,'00','Walther Reiglar\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6693,'00','Esmeralda Foxley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6694,'00','Cecile Gland\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6695,'00','Margit Village\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6696,'00','Zahara Vallery\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6697,'00','Justinn Piggrem\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6698,'00','Clim Leonarde\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6699,'00','Keriann Galletley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6700,'00','Shelli Ramsell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6701,'00','Jacinda Harbach\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6702,'00','Ardella Tedridge\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6703,'00','Ronnica McIlvoray\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6704,'00','Ravi Wedmore\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6705,'00','Karleen Lambis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6706,'00','Clive Grigolli\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6707,'00','Kiah Pettitt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6708,'00','Kalil Louw\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6709,'00','Onofredo Legonidec\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6710,'00','Griffin Batterbee\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6711,'00','Hobart Benoy\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6712,'00','Gabi Behninck\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6713,'00','Merilyn Benedettini\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6714,'00','Dolores Demonge\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6715,'00','Tabbitha Speer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6716,'00','Fleur McGarry\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6717,'00','Tudor Seifert\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6718,'00','Denice Dufall\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6719,'00','Lorilyn Oaker\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6720,'00','Cristy McCerery\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6721,'00','Lodovico Pillman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6722,'00','Gusti McLanachan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6723,'00','Julio Glaze\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6724,'00','Cece Chillcot\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6725,'00','Chico Concklin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6726,'00','Aigneis Stedman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6727,'00','Ambros Yoslowitz\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6728,'00','Derick Readhead\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6729,'00','Julius Ewence\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6730,'00','Marena Croall\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6731,'00','Carlyn Backen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6732,'00','Adlai Harbert\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6733,'00','Eberto Torrecilla\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6734,'00','Ruby Meikle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6735,'00','Reina Wenn\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6736,'00','Towny Crotty\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6737,'00','Dorey Yielding\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6738,'00','Pincus Derricoat\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6739,'00','Loutitia Bartlosz\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6740,'00','Barnabe McAvin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6741,'00','Nappie Neilly\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6742,'00','Lorianna Rosterne\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6743,'00','Gallagher Borth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6744,'00','Kippy Ottey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6745,'00','Deloris Limprecht\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6746,'00','Louisa Suffield\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6747,'00','Dallon Woodison\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6748,'00','Stephen Shyres\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6749,'00','Myrwyn MacGaughey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6750,'00','Bonnibelle Brandle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6751,'00','Mora Ropking\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6752,'00','Fons Overbury\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6753,'00','Birgitta Gadsden\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6754,'00','Velvet Willshire\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6755,'00','Agneta Cowie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6756,'00','Rozele Huzzey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6757,'00','Modesty Quinet\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6758,'00','Kimbra Cubbinelli\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6759,'00','Kimberli Wenzel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6760,'00','Ivan Halgarth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6761,'00','Chet Wrankling\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6762,'00','Yalonda Tankin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6763,'00','Katharine Skyppe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6764,'00','Wesley Boerder\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6765,'00','Cherye Whilde\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6766,'00','Adorne Fritchley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6767,'00','Den Markussen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6768,'00','Allard Truluck\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6769,'00','Bram Jadczak\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6770,'00','Darcie Finlay\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6771,'00','Peirce Locksley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6772,'00','Mallissa Van Arsdale\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6773,'00','Moses Fleckness\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6774,'00','Constanta Clouter\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6775,'00','Cletis McKinnell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6776,'00','Carina Rackam\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6777,'00','Ilysa MacClinton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6778,'00','Herb Donativo\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6779,'00','Scarlett Tummond\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6780,'00','Olenolin Shearsby\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6781,'00','Gena Revan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6782,'00','Stearn Mandry\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6783,'00','Claudine Asty\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6784,'00','Vanessa Afield\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6785,'00','Brandise Van Arsdalen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6786,'00','Nataline Rampling\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6787,'00','Sandor Thresher\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6788,'00','Brewer Gillingwater\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6789,'00','Lanie Elcum\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6790,'00','Aleece Macari\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6791,'00','Barde Chettle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6792,'00','Tull Primo\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6793,'00','Sidnee Montes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6794,'00','Codee MacNess\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6795,'00','Ansell Connerry\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6796,'00','Cary Minget\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6797,'00','Thibaud Abrehart\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6798,'00','Gustavo Brommage\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6799,'00','Stoddard Bracknall\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6800,'00','Filia Wagner\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6801,'00','Gerick Lies\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6802,'00','Starla Hardwin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6803,'00','Tabina O\'Halleghane\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6804,'00','Edmon Rakestraw\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6805,'00','Shelagh Gamage\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6806,'00','Georges Brydell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6807,'00','Persis Woodlands\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6808,'00','Carmita Roze\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6809,'00','Juana Fantham\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6810,'00','Danny Heugh\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6811,'00','Care Rogger\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6812,'00','Rakel Thowes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6813,'00','Gilburt Dies\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6814,'00','Yehudi Leyzell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6815,'00','Geri Rodell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6816,'00','Lina Falconer-Taylor\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6817,'00','Phip Stennes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6818,'00','Freddi Cazin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6819,'00','Kenna Shepherdson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6820,'00','Dacie Bradder\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6821,'00','Lemuel Knewstubb\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6822,'00','Cathy Hastilow\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6823,'00','Maribeth Gerran\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6824,'00','Joanie Ranscombe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6825,'00','Koo Jasper\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6826,'00','Elaina Spencley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6827,'00','Benson Pascow\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6828,'00','Siegfried Tremeer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6829,'00','Hallsy Lushey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6830,'00','Maddy Quimby\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6831,'00','Gherardo Nortunen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6832,'00','Collie Gaythorpe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6833,'00','Rem Lyes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6834,'00','Kitty Magowan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6835,'00','Eleanore Bril\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6836,'00','Edlin MacMillan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6837,'00','Glendon Titcumb\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6838,'00','Cloris Dando\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6839,'00','Jennifer Philipsen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6840,'00','Tiffany Follen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6841,'00','Becki Willerson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6842,'00','Nero Gallienne\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6843,'00','Beatrice Outhwaite\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6844,'00','Anabella Langfitt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6845,'00','Tallie Broadnicke\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6846,'00','Cherye Etchell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6847,'00','Geraldine Perrygo\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6848,'00','Alwyn Snooks\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6849,'00','Mirabelle Coat\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6850,'00','Andeee Eyles\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6851,'00','Lorita Chaff\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6852,'00','Kai Charlet\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6853,'00','Redford Ridd\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6854,'00','Tricia Cambridge\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6855,'00','Ricca Lenahan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6856,'00','Winslow Mullins\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6857,'00','Glenna Steaning\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6858,'00','Bert Unstead\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6859,'00','Brear Raison\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6860,'00','Stephani Lepope\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6861,'00','Arlina Form\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6862,'00','Gypsy Eble\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6863,'00','Catherina Bennen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6864,'00','Nickolaus Braxay\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6865,'00','Palmer Sharkey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6866,'00','Thain Vasyukhnov\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6867,'00','Ashlin Denning\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6868,'00','Javier Gorrick\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6869,'00','Candra Cruz\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6870,'00','Jamaal Boundey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6871,'00','Junette Deverill\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6872,'00','Freddie Cardenas\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6873,'00','Eudora Fullbrook\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6874,'00','Lutero Goodnow\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6875,'00','Zane McCluin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6876,'00','Andria Sulter\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6877,'00','Donaugh Lampke\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6878,'00','Kelsy Hallen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6879,'00','Guillermo Emms\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6880,'00','Yelena Domenc\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6881,'00','Krystalle Muino\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6882,'00','Luis Shyre\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6883,'00','Sarajane Alexandersson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6884,'00','Lyssa Heyworth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6885,'00','Judas Pamplin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6886,'00','Nikos Howley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6887,'00','Phyllys Dumper\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6888,'00','Grier Ruthven\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6889,'00','Codie Peirone\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6890,'00','Willie Arnhold\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6891,'00','Johan Robroe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6892,'00','Terrill Rosenauer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6893,'00','Michell Storer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6894,'00','Odelinda Beiderbecke\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6895,'00','Linzy Wyant\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6896,'00','Jayme Anderton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6897,'00','Keefer Jedrzejczyk\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6898,'00','Walt Rigate\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6899,'00','Agneta Given\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6900,'00','Fayre Davenhall\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6901,'00','Neils Wyndham\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6902,'00','Estevan Qualtrough\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6903,'00','Eolanda Lorenzo\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6904,'00','Maximo Sheerin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6905,'00','Wake Nethercott\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6906,'00','Arvin Sawdon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6907,'00','Rosco Menhenitt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6908,'00','Anabelle Alldritt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6909,'00','Jade Scatchard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6910,'00','Sebastien Golton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6911,'00','Cos Wilsone\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6912,'00','Donavon Lazenby\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6913,'00','Valaria McCreagh\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6914,'00','Lemar Heckle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6915,'00','Dody Bishopp\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6916,'00','Lem Springall\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6917,'00','Laurie Waterstone\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6918,'00','Ashla Grisenthwaite\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6919,'00','Valentine Gozney\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6920,'00','Harland Senecaux\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6921,'00','Monica Wyllis\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6922,'00','Anastassia Maffin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6923,'00','Erroll Licciardi\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6924,'00','Jarrett Rackham\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6925,'00','Madelaine Raincin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6926,'00','Stewart Berndtssen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6927,'00','Leontine Musicka\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6928,'00','Guntar Shovelin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6929,'00','Giacinta Carayol\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6930,'00','Nelly MacFayden\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6931,'00','Neil Witherspoon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6932,'00','Erick Williamson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6933,'00','Lennard Swatton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6934,'00','Sarita Morrid\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6935,'00','Gabbie Dickins\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6936,'00','Bennie Glabach\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6937,'00','Louise Normanvill\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6938,'00','Hamnet Stuck\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6939,'00','Moritz Blare\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6940,'00','Ty Rowett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6941,'00','Wittie Keemar\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6942,'00','Linell Woollhead\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6943,'00','Nat Putterill\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6944,'00','Royce Brock\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6945,'00','Emeline Anetts\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6946,'00','Jewel Sanday\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6947,'00','Ricky O\'Loghlen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6948,'00','Daveta Scougal\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6949,'00','Mikel Greiser\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6950,'00','Darin Logsdale\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6951,'00','Marta Olivera\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6952,'00','Drusilla Jouhan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6953,'00','Clayborn Tommei\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6954,'00','Cassaundra Cauldfield\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6955,'00','Allina Slides\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6956,'00','Starla Forryan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6957,'00','Neddy MacPaik\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6958,'00','Elijah Vernalls\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6959,'00','Pete Renish\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6960,'00','Pembroke Curdell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6961,'00','Val Butt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6962,'00','Junette Tripp\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6963,'00','Augusto Pinniger\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6964,'00','Brittne Malcolm\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6965,'00','Malissa Silverston\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6966,'00','Myrtle Scarsbrook\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6967,'00','Floria Balcombe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6968,'00','Dyana Reppaport\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6969,'00','Jandy Aldine\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6970,'00','Wanda McGahey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6971,'00','Mil Ellingford\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6972,'00','Lucais Bruggeman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6973,'00','Muffin Mollon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6974,'00','Virginia Lenney\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6975,'00','Stephanie Hairon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6976,'00','Karie Stainfield\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6977,'00','Leena Mengo\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6978,'00','Levi Regenhardt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6979,'00','Bibby Capeloff\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6980,'00','Spencer Ickovicz\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6981,'00','Annabela Zannelli\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6982,'00','Eben Beattie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6983,'00','Grover Cowsby\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6984,'00','Kori Cosbey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6985,'00','Lucie MacGarrity\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6986,'00','Beitris Ivankin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6987,'00','Jamaal Belliard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6988,'00','Gardy Tidcomb\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6989,'00','Giorgio Sherwell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6990,'00','Pedro Morales\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6991,'00','Edsel Merriott\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6992,'00','Gallard Sidebottom\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6993,'00','Jacquelin Muncey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6994,'00','Clarine Campana\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6995,'00','Carlotta Kahane\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6996,'00','Allyce Moralee\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6997,'00','Giulietta Silverman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6998,'00','Jordain Leddie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(6999,'00','Layla Grannell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7000,'00','Dollie Keal\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7001,'00','Kingsley China\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7002,'00','Carlita Mackelworth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7003,'00','Izabel Doding\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7004,'00','Belvia Mathen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7005,'00','Abbey Meron\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7006,'00','West Gligori\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7007,'00','Maddy Iglesias\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7008,'00','Nahum Pillans\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7009,'00','Bridie Bligh\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7010,'00','Elsinore Lowers\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7011,'00','Colette La Rosa\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7012,'00','Salomi Bettinson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7013,'00','Frannie Cleynman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7014,'00','Brittni Peirson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7015,'00','Dori Long\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7016,'00','Gustave Yewdall\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7017,'00','Ira Dinnage\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7018,'00','Di Piff\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7019,'00','Godiva Aggett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7020,'00','Julia Toun\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7021,'00','Alisander Meldrum\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7022,'00','Ericka Pierucci\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7023,'00','Philippa Pearle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7024,'00','Hildagard Daish\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7025,'00','Wilt Brawn\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7026,'00','Elka Kelcher\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7027,'00','Brenna Soggee\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7028,'00','Inessa Brugmann\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7029,'00','Jeniffer Gregr\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7030,'00','Avery Ferrao\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7031,'00','Edgard Dan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7032,'00','Husain Balnaves\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7033,'00','Phyllys Heifer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7034,'00','Hilary Bydaway\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7035,'00','Mattie Gauld\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7036,'00','Silvester Dumbreck\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7037,'00','Kaitlynn Merioth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7038,'00','Niccolo Philippsohn\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7039,'00','Celeste Lindback\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7040,'00','Perri Eyckelberg\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7041,'00','Borden Anslow\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7042,'00','Wylie Guyton\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7043,'00','Sile Howen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7044,'00','Carol-jean Delaprelle\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7045,'00','Andrea Cajkler\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7046,'00','Damita Ivanets\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7047,'00','Brockie Cornehl\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7048,'00','Meryl Marriner\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7049,'00','Enrica Dan\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7050,'00','Consalve Pennings\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7051,'00','Joya Pray\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7052,'00','Magdalena Malkin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7053,'00','Markus Forster\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7054,'00','Brittaney Veldstra\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7055,'00','Gallagher Fawssett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7056,'00','Aigneis Brownsett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7057,'00','Jo-ann Lapthorne\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7058,'00','Isabella Horry\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7059,'00','Farris Niess\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7060,'00','Kerrin Schulkins\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7061,'00','Lyda Carverhill\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7062,'00','Orlan Wyld\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7063,'00','Rafaelita Laxon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7064,'00','Misha Kundert\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7065,'00','Iona Jewster\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7066,'00','Dunn Klagge\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7067,'00','Clywd Jellard\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7068,'00','Doti Hugonin\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7069,'00','Berkie Jerman\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7070,'00','Caresse Tidey\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7071,'00','Sawyer Scoates\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7072,'00','Claudetta O\'Hartnedy\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7073,'00','Abbot Szwandt\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7074,'00','Maribel Stuchburie\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7075,'00','Katherine Donisthorpe\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7076,'00','Chrissie Hayworth\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7077,'00','Crosby Dakers\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7078,'00','Elva Rawnsley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7079,'00','Hendrick Reuther\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7080,'00','Fanchon Veronique\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7081,'00','Marius Hirsch\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7082,'00','Norbie Blesli\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7083,'00','Eberhard Kubalek\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7084,'00','Stacy Ashelford\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7085,'00','Maybelle Whittenbury\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7086,'00','Coletta Roblett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7087,'00','Ronna Penchen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7088,'00','Ryann Mirfield\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7089,'00','Corina Murty\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7090,'00','Kitty Bridges\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7091,'00','Bary Iredell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7092,'00','Leodora Whiteson\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7093,'00','Kacie Leyninye\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7094,'00','Jilly Fowley\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7095,'00','Gillie Brashier\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7096,'00','Justin Dishmon\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7097,'00','Coretta Radloff\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7098,'00','Feodor Gibbett\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7099,'00','Katharyn Weddup\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7100,'00','Debee Kermannes\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7101,'00','Anne-corinne Colyer\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7102,'00','Lloyd Gounel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7103,'00','Allegra Casino\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7104,'00','Kasey Attarge\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7105,'00','Andrei Stammers\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7106,'00','Abbey Physic\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7107,'00','Hans Emanuel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7108,'00','Francois Andrivel\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7109,'00','Crissy Cunniam\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7110,'00','Raynard MacCoughen\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7111,'00','Lucina Youings\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7112,'00','Sophronia Murrthum\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7113,'00','Clemente Stych\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7114,'00','Tilly Murrell\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL),
(7115,'00','Tyson Grishmanov\r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL);

/*Table structure for table `pagos` */

DROP TABLE IF EXISTS `pagos`;

CREATE TABLE `pagos` (
  `Id` int(11) NOT NULL DEFAULT '0',
  `IdFactura` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FechaPago` datetime DEFAULT NULL,
  `FormaPago` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImportePago` double DEFAULT NULL,
  `NumCheque` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notas` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Factura` (`IdFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pagos` */

/*Table structure for table `paquete_detalle` */

DROP TABLE IF EXISTS `paquete_detalle`;

CREATE TABLE `paquete_detalle` (
  `idPaqueteDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_Paquete` int(11) NOT NULL,
  `id_Estudio` int(11) NOT NULL,
  `Estudio` mediumtext COLLATE utf8_spanish2_ci,
  `Orden` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idPaqueteDetalle`),
  KEY `FK_Estudios_paquetedetalles` (`id_Estudio`),
  KEY `FK_Paquetes_paquetedetalles` (`id_Paquete`),
  CONSTRAINT `FK_Paquetes_paquetedetalles` FOREIGN KEY (`id_Paquete`) REFERENCES `paquetes` (`idPaquete`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Estudios_paquetedetalles` FOREIGN KEY (`id_Estudio`) REFERENCES `estudios` (`idEstudio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `paquete_detalle` */

insert  into `paquete_detalle`(`idPaqueteDetalle`,`id_Paquete`,`id_Estudio`,`Estudio`,`Orden`,`created_at`,`updated_at`) values 
(3,1,2,'Examen General de Orina',0,'2022-12-21 20:08:36','2022-12-21 20:08:36'),
(4,1,3,'Quimica Sanguinea',1,'2022-12-21 20:08:36','2022-12-21 20:08:36'),
(5,1,6,'xxxxxxxxxxxxx',2,'2022-12-21 20:08:36','2022-12-21 20:08:36');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idPaquete`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `paquetes` */

insert  into `paquetes`(`idPaquete`,`Abreviatura`,`Descripcion`,`indicaciones`,`notas_internas`,`Dias`,`Horas`,`Minutos`,`created_at`,`updated_at`) values 
(1,'xxxxxxxx','xxxxxxxxx','xxxxxxxxx','xxxxxxxxxxxxx','3','5','9','2022-12-21 20:08:28','2022-12-21 20:08:28');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `perfil_detalle` */

DROP TABLE IF EXISTS `perfil_detalle`;

CREATE TABLE `perfil_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudio` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`id_estudio`),
  KEY `fecha_act` (`fecha_act`),
  KEY `estudio` (`id_estudio`),
  KEY `orden` (`orden`),
  CONSTRAINT `fk_perfil_detalle_estudios1` FOREIGN KEY (`id_estudio`) REFERENCES `estudios` (`idEstudio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `perfil_detalle` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `pruebas` */

DROP TABLE IF EXISTS `pruebas`;

CREATE TABLE `pruebas` (
  `Resultado_default` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idPrueba` int(11) NOT NULL AUTO_INCREMENT,
  `valor_restringido` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo_Valor` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TipoMuestra` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notas_internas` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notas` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `antibiograma` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formula` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impr_Nota_Resultado` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imprimir_negritas` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impr_metodo_Resultado` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_Metodo` int(11) DEFAULT NULL,
  `id_Departamento` int(11) DEFAULT NULL,
  `hoja_trabajo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Decimales` int(3) DEFAULT NULL,
  `cveprueba` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abreviatura` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minutos` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horas` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dias` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicaciones` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valor_normalidad_texto` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_valor_normalidad` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00',
  `Prueba` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Medida` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TipoResultado` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Autoanalizador` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idPrueba`),
  KEY `cveprueba` (`sucursal`),
  KEY `Prueba` (`sucursal`,`Prueba`),
  KEY `Descripcion` (`sucursal`,`Descripcion`),
  KEY `fecha_act` (`fecha_act`),
  KEY `id_Departamento` (`id_Departamento`),
  KEY `id_Metodo` (`id_Metodo`),
  CONSTRAINT `pruebas_ibfk_1` FOREIGN KEY (`id_Departamento`) REFERENCES `deptos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pruebas_ibfk_2` FOREIGN KEY (`id_Metodo`) REFERENCES `metodos` (`idMetodo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pruebas` */

insert  into `pruebas`(`Resultado_default`,`idPrueba`,`valor_restringido`,`Tipo_Valor`,`TipoMuestra`,`sexo`,`notas_internas`,`notas`,`antibiograma`,`formula`,`impr_Nota_Resultado`,`imprimir_negritas`,`impr_metodo_Resultado`,`id_Metodo`,`id_Departamento`,`hoja_trabajo`,`Decimales`,`cveprueba`,`abreviatura`,`minutos`,`horas`,`dias`,`indicaciones`,`valor_normalidad_texto`,`tipo_valor_normalidad`,`sucursal`,`Prueba`,`Descripcion`,`Medida`,`TipoResultado`,`Autoanalizador`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`created_at`,`updated_at`) values 
(NULL,1,NULL,'A','Materia Fecal','Ambos',NULL,NULL,NULL,NULL,'Si','No','No',1,1,NULL,0,'cccccccccc','ccccccc','1','1','1',NULL,NULL,'Rango númerico','00','cccccccccccc','ccccccc',NULL,'1',NULL,NULL,NULL,NULL,0,'2022-12-21 19:56:33','2022-12-21 19:57:19');

/*Table structure for table `pruebas-aux` */

DROP TABLE IF EXISTS `pruebas-aux`;

CREATE TABLE `pruebas-aux` (
  `idPrueba` int(11) NOT NULL DEFAULT '0',
  `cveprueba` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prueba` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Medida` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TipoResultado` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Autoanalizador` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idPrueba`),
  KEY `cveprueba` (`cveprueba`),
  KEY `Descripcion` (`Descripcion`),
  KEY `Prueba` (`Prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pruebas-aux` */

/*Table structure for table `pruebas_interfaz` */

DROP TABLE IF EXISTS `pruebas_interfaz`;

CREATE TABLE `pruebas_interfaz` (
  `id` int(11) NOT NULL,
  `NombreInterfaz` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CveInterfaz` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CveSysLabs` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CveSysLabs` (`NombreInterfaz`,`CveSysLabs`),
  KEY `CveInterfaz` (`CveInterfaz`),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pruebas_interfaz` */

/*Table structure for table `reactivos` */

DROP TABLE IF EXISTS `reactivos`;

CREATE TABLE `reactivos` (
  `id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cveReactivo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreReactivo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipoReactivo` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presentacion` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `analizador` tinyint(4) DEFAULT NULL,
  `proveedor` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unidad` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxima` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factor` double(15,5) DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal` (`sucursal`,`eliminar`),
  KEY `reactivo` (`sucursal`,`cveReactivo`),
  KEY `nombreReactivo` (`sucursal`,`nombreReactivo`),
  KEY `flag_sucursales` (`flag_sucursales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reactivos` */

/*Table structure for table `reactxest` */

DROP TABLE IF EXISTS `reactxest`;

CREATE TABLE `reactxest` (
  `id` int(11) NOT NULL,
  `deptoestudio` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `claveEstudio` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cveReact` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cantidad` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unidad` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal` (`sucursal`,`claveEstudio`,`deptoestudio`,`eliminar`),
  KEY `reactivo` (`sucursal`,`deptoestudio`,`claveEstudio`,`cveReact`),
  KEY `sucursal1` (`sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reactxest` */

/*Table structure for table `repconteo` */

DROP TABLE IF EXISTS `repconteo`;

CREATE TABLE `repconteo` (
  `id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudio` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reactivo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contado` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factor` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `repconteo` */

/*Table structure for table `rephistorial` */

DROP TABLE IF EXISTS `rephistorial`;

CREATE TABLE `rephistorial` (
  `id` int(11) NOT NULL,
  `repTerminal` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repSucPaciente` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repCvePaciente` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repSucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repSolicitud` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repFolio` int(11) NOT NULL,
  `repFecha` date DEFAULT NULL,
  `repCveDepto` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repCveEstudio` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repCvePrueba` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repPrueba` mediumtext COLLATE utf8mb4_unicode_ci,
  `repResultado` mediumtext COLLATE utf8mb4_unicode_ci,
  `repUnidad` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repTextoValores` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repDentroLimite` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repAltoBajo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prueba` (`repTerminal`,`repSucPaciente`,`repCvePaciente`,`repCvePrueba`),
  KEY `estudio` (`repTerminal`,`repSucPaciente`,`repCvePaciente`,`repCveDepto`,`repCveEstudio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rephistorial` */

/*Table structure for table `repkardex` */

DROP TABLE IF EXISTS `repkardex`;

CREATE TABLE `repkardex` (
  `id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `cveReact` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` double(15,2) DEFAULT NULL,
  `unidad` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nota` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `repkardex` */

/*Table structure for table `represultados` */

DROP TABLE IF EXISTS `represultados`;

CREATE TABLE `represultados` (
  `Id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TextoValores` mediumtext COLLATE utf8mb4_unicode_ci,
  `Estudio` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Solicitud` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imprimir` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observaciones` mediumtext COLLATE utf8mb4_unicode_ci,
  `TipoFormato` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dentrolimite` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prueba` mediumtext COLLATE utf8mb4_unicode_ci,
  `Resultado` mediumtext COLLATE utf8mb4_unicode_ci,
  `Fecha` datetime DEFAULT NULL,
  `TipoPrueba` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Clave` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Depto` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Valores` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medida` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encabezado` mediumtext COLLATE utf8mb4_unicode_ci,
  `notas` mediumtext COLLATE utf8mb4_unicode_ci,
  `nomdepto` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terminal` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numregs` int(11) DEFAULT NULL,
  `NombrePerfil` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `altobajo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nombrepaciente` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Toma` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Clave` (`sucursal`,`Clave`),
  KEY `Dentrolimite` (`sucursal`,`Dentrolimite`),
  KEY `Estudio` (`sucursal`,`Estudio`),
  KEY `Fecha` (`sucursal`,`Fecha`,`Solicitud`),
  KEY `Solicitud` (`sucursal`,`Solicitud`),
  KEY `terminal` (`sucursal`,`terminal`),
  KEY `sucursal` (`sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `represultados` */

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('7f76yeImAQrgHt7DKOXOuVouOIyURWc2nWDYOuLI',3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMXNSWW42eUV4enhucjF6dlNYWHNUOHhBazJ0UnY5OTVxZUtUSmZHVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zb2xpY2l0dWRlcy9zb2xpY2l0dWQiO31zOjg6IlNVQ1VSU0FMIjtzOjI6IjAwIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=',1670620019),
('eDzybDgSkqt3oBk2hLth1HF0FqcNI7RQw69kp5ub',3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTWo1S2NYRzd0ZThpSWx4cXJ6OFI5Wml5NmNYeWhrVmZwcUFXQmtBTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc29saWNpdHVkZXMvc29saWNpdHVkL2V5SnBkaUk2SW1OakwycGFibTlvZDFsNFprWlJUV2N6UkRkaFlYYzlQU0lzSW5aaGJIVmxJam9pU0hkeFJrOU1RVXc0VFZkYVdVaHBSR1YxWVVkVVVUMDlJaXdpYldGaklqb2lZVEV4WTJKa1kyUm1PRE5qWkRFNVpqTTFZamt5WW1NMU4yRTJNemM0TkRsaFpERXlZalZtWW1VNFltVmhZV00wT0RVM1lUY3laakkyTldWbE5qQmhNeUlzSW5SaFp5STZJaUo5Ijt9czo4OiJTVUNVUlNBTCI7czoyOiIwMCI7czoxNDoiU1VDVVJTQUxOT01CUkUiO3M6NjoiTWF0cml6IjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=',1670702225),
('jixGnFGdzrN9BLOv8hFmWvmhsFKWJE6ZylFkQ7t3',3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46','YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTEZEWVhFNW5uazVweHJCQlVIT3ZaWWF1ZWtBcjdjVkNYUjZ6bTFrRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYWNpZW50ZXMtcGRmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6ODoiU1VDVVJTQUwiO3M6MjoiMDAiO3M6MTQ6IlNVQ1VSU0FMTk9NQlJFIjtzOjY6Ik1hdHJpeiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9',1670884842),
('lF0tIDhvdYPcBEzWVknhY0PaS5TAKaGMkNH9uSdC',3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYXlNU3F3S00wMDRLZ2F0cjlHNU5LWkptVnFweXVsOFdMWTZOMzNReCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYWNpZW50ZXMtcGRmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo4OiJTVUNVUlNBTCI7TjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDI4eGpOakxraXNEM3FkaURwMXFMb2VZMUwudHl2QkY4a01aNlFnU1lqOWtjamxyM210M1RtIjt9',1670886089),
('pPfQ2ghasDPtuk5fyRboEf5sQdiAVLnNq95F4JjG',5,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMVR1NXlQcnI3MWp2Zjc5QVE2aFY3TXpuQUJYQW1qa3JaNjdadTR4UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXF1ZXRlcyI7fXM6ODoiU1VDVVJTQUwiO3M6MjoiMDMiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkVlhpNGdpdEZOTThZRXl3WDlIN2ZpdWo5UVdnc1o0cHVSY0w4a2FoNGZtcGxmaWJVREhsSy4iO30=',1671653321);

/*Table structure for table `solicitud` */

DROP TABLE IF EXISTS `solicitud`;

CREATE TABLE `solicitud` (
  `IdSolicitud` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `id_Doctor` int(11) NOT NULL,
  `id_Empresa` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha` datetime NOT NULL,
  `Solicitud` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Folio` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suc_paciente` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suc_doctor` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suc_empresa` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo_Pago` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha_Entrega` datetime DEFAULT NULL,
  `Anticipo` double DEFAULT NULL,
  `Expediente` mediumtext COLLATE utf8mb4_unicode_ci,
  `Importe` double DEFAULT NULL,
  `Tipo_toma` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estatus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descuento` double DEFAULT NULL,
  `Facturar_a` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fur` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `porcentaje` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha_Entregado` datetime DEFAULT NULL,
  `Factura` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomCredencial` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pagos` double DEFAULT NULL,
  `NumImpResultados` int(11) DEFAULT NULL,
  `SeFactura` int(11) DEFAULT NULL,
  `Impreso` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Edad` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EdadTipo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sexo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pase` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estudios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VerificadoPor` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicionesdepago` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numcta` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SolPDF` longtext COLLATE utf8mb4_unicode_ci,
  `procesar` int(11) DEFAULT '0',
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `subtotal` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `retivaprct` double DEFAULT NULL,
  `retivaimpte` double DEFAULT NULL,
  `retisrprct` double DEFAULT NULL,
  `retisrimpte` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `aumentariva` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IdSolicitud`,`id_paciente`,`id_Doctor`,`id_Empresa`),
  KEY `Empresa` (`suc_empresa`,`id_Empresa`),
  KEY `solicitud` (`sucursal`,`Solicitud`),
  KEY `folio` (`sucursal`,`Folio`),
  KEY `Doctor` (`suc_doctor`,`id_Doctor`),
  KEY `Paciente` (`suc_paciente`,`id_paciente`),
  KEY `pase` (`sucursal`,`pase`),
  KEY `fecha` (`sucursal`,`Fecha`,`Solicitud`),
  KEY `fecha_act` (`fecha_act`),
  KEY `fk_solicitud_pacientes1_idx` (`id_paciente`),
  KEY `fk_solicitud_empresas1_idx` (`id_Empresa`),
  KEY `fk_solicitud_doctores1_idx` (`id_Doctor`),
  CONSTRAINT `fk_solicitud_doctores1` FOREIGN KEY (`id_Doctor`) REFERENCES `doctores` (`idDoctor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solicitud_empresas1` FOREIGN KEY (`id_Empresa`) REFERENCES `empresas` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solicitud_pacientes1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `solicitud` */

insert  into `solicitud`(`IdSolicitud`,`id_paciente`,`id_Doctor`,`id_Empresa`,`sucursal`,`Fecha`,`Solicitud`,`Folio`,`suc_paciente`,`suc_doctor`,`suc_empresa`,`Tipo_Pago`,`Fecha_Entrega`,`Anticipo`,`Expediente`,`Importe`,`Tipo_toma`,`Estatus`,`Descuento`,`Facturar_a`,`Fur`,`Total`,`porcentaje`,`Fecha_Entregado`,`Factura`,`NomCredencial`,`Pagos`,`NumImpResultados`,`SeFactura`,`Impreso`,`Edad`,`EdadTipo`,`Sexo`,`pase`,`tel`,`Estudios`,`VerificadoPor`,`condicionesdepago`,`numcta`,`SolPDF`,`procesar`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`subtotal`,`iva`,`retivaprct`,`retivaimpte`,`retisrprct`,`retisrimpte`,`created_at`,`updated_at`,`aumentariva`) values 
(264,1,1,3,'00','2022-11-15 15:02:58','1','20221119001','00','00','00',NULL,'2022-11-22 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,195,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18','Dias','Masculino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,195,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(265,3,1,1,'00','2022-11-19 15:07:01','1','20221119001','00','00','00',NULL,'2022-11-21 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,850,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4','Meses','Masculino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,850,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(266,1,1,3,'00','2022-11-19 15:09:55','2','20221119002','00','00','00',NULL,'2022-11-22 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,145,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18','Dias','Masculino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,145,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(267,1,1,3,'00','2022-11-21 14:40:22','1','20221121001','00','00','00',NULL,'2022-11-24 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20','Dias','Masculino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(268,1,1,3,'00','2022-11-21 15:08:18','2','20221121002','00','00','00',NULL,'2022-11-23 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20','Dias','Masculino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(269,1,1,3,'00','2022-11-21 15:20:31','3','20221121003','00','00','00',NULL,'2022-11-24 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20','Dias','Masculino',NULL,NULL,'go QS1 BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(270,2,1,2,'00','2022-11-21 15:21:37','4','20221121004','00','00','00',NULL,'2022-11-22 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'22','Años','Masculino',NULL,NULL,'Ego',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(271,3,1,3,'00','2022-11-21 15:22:14','5','20221121005','00','00','00',NULL,'2022-11-24 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4','Meses','Masculino',NULL,NULL,'BM Ego QS1',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(273,2,1,2,'00','2022-11-22 15:24:09','1','20221122001','00','00','00',NULL,'2022-11-23 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'22','Años','Masculino',NULL,NULL,'Ego',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(274,1,1,3,'00','2022-11-22 15:25:24','2','20221122002','00','00','00',NULL,'2022-11-24 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(275,3,1,1,'00','2022-11-22 15:26:09','3','20221122003','00','00','00',NULL,'2022-11-24 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4','Meses','Masculino',NULL,NULL,'BM','1',NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(276,1,1,3,'00','2022-11-22 16:21:24','4','20221122004','00','00','00',NULL,'2022-11-24 00:00:00',NULL,'Dx ayuno',NULL,'Rutina','0',9,NULL,NULL,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21','Dias','Masculino',NULL,NULL,'BM BM BM BM BM BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(277,1,1,3,'00','2022-11-23 15:10:41','1','20221123001','00','00','00',NULL,'2022-11-25 00:00:00',NULL,NULL,NULL,'Rutina','0',1.5,NULL,NULL,28.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'22','Dias','Masculino',NULL,NULL,'BM BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(278,1,1,3,'00','2022-11-25 16:43:43','1','20221125001','00','00','00',NULL,'2022-11-28 00:00:00',NULL,'dx good',NULL,'Rutina','0',8.5,NULL,NULL,76.75497449999999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM Ego QS1',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,12.24,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(279,1,1,3,'00','2022-11-25 16:50:55','2','20221125002','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',1.5,NULL,NULL,14.2199955,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.16,10.6667,NULL,10,NULL,NULL,NULL,NULL),
(280,1,1,3,'00','2022-11-25 16:54:32','3','20221125003','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',12.5,NULL,NULL,144.8332875,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM Ego',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,150,22,10.6667,NULL,10,NULL,NULL,NULL,NULL),
(281,1,1,3,'00','2022-11-25 17:00:21','4','20221125004','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',1.5,NULL,NULL,14.2199955,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,13.5,2.16,10.6667,NULL,10,NULL,NULL,NULL,NULL),
(282,1,1,3,'00','2022-11-25 17:05:07','5','20221125005','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',1.5,NULL,NULL,14.2199955,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,13.5,2.16,10.6667,NULL,10,NULL,NULL,NULL,NULL),
(283,1,1,3,'00','2022-11-25 17:08:47','6','20221125006','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',1.5,NULL,NULL,14.2199955,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,13.5,2.16,10.6667,NULL,10,NULL,NULL,NULL,NULL),
(284,1,1,3,'00','2022-11-25 17:12:48','7','20221125007','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',1.5,NULL,NULL,14.2199955,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,13.5,2.16,10.6667,NULL,10,NULL,NULL,NULL,NULL),
(285,1,1,3,'00','2022-11-25 17:14:09','8','20221125008','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',1.5,NULL,NULL,14.2199955,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,13.5,2.16,10.6667,1.4400045000000001,10,1.35,NULL,NULL,NULL),
(286,1,1,3,'00','2022-11-25 17:16:34','9','20221125009','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',0.75,NULL,NULL,15.009995250000001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,14.25,2.2800000000000002,10.6667,NULL,0,NULL,NULL,NULL,NULL),
(287,1,1,3,'00','2022-11-25 17:24:59','10','20221125010','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',4,NULL,NULL,37.919988,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM Ego',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,36,5.76,10.6667,3.8400120000000006,10,3.6,NULL,NULL,NULL),
(288,2,1,1,'00','2022-11-25 17:27:00','11','20221125011','00','00','00',NULL,'2022-11-27 00:00:00',NULL,NULL,NULL,'Rutina','0',13,NULL,NULL,200.659842,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'22','Años','Masculino',NULL,NULL,'BM Ego',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,237,37.92,10.6667,25.280079000000004,10,23.700000000000003,NULL,NULL,NULL),
(289,1,1,3,'00','2022-11-25 17:29:13','12','20221125012','00','00','00',NULL,'2022-11-28 00:00:00',NULL,NULL,NULL,'Rutina','0',29.75,NULL,NULL,46.7782965,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24','Dias','Masculino',NULL,NULL,'BM Ego QS1',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,55.25,8.84,10.6667,5.893351750000001,10,5.525,NULL,NULL,NULL),
(290,1,1,3,'00','2022-11-26 20:19:20','1','20221126001','00','00','00',NULL,'2022-11-28 00:00:00',NULL,NULL,NULL,'Rutina','0',6.5,NULL,NULL,61.6199805,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'25','Dias','Masculino',NULL,NULL,'BM Ego',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,58.5,9.36,10.6667,6.240019500000001,0,0,NULL,NULL,NULL),
(291,1,1,3,'00','2022-11-28 13:26:55','1','20221128001','00','00','00',NULL,'2022-11-30 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.799995,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'27','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,0,0,NULL,NULL,NULL),
(292,1,1,3,'00','2022-11-28 14:10:32','2','20221128002','00','00','00',NULL,'2022-11-30 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,47.399985,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'27','Dias','Masculino',NULL,NULL,'BM BM BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,45,7.2,10.6667,4.800015,0,0,NULL,NULL,NULL),
(293,1,1,3,'00','2022-11-28 14:21:40','3','20221128003','00','00','00',NULL,'2022-11-30 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.799995,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'27','Dias','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,0,0,NULL,NULL,NULL),
(303,1,1,3,'00','2022-12-01 16:59:23','1','20221201001','00','00','00',NULL,'2022-12-03 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(304,1,1,3,'00','2022-12-01 17:01:22','2','20221201002','00','00','00',NULL,'2022-12-03 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(305,1,1,3,'00','2022-12-01 17:02:23','3','20221201003','00','00','00',NULL,'2022-12-03 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(306,1,1,3,'00','2022-12-01 17:09:20','4','20221201004','00','00','00',NULL,'2022-12-03 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(307,1,1,3,'00','2022-12-01 17:12:24','5','20221201005','00','00','00',NULL,'2022-12-03 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(310,1,1,3,'00','2022-12-02 14:25:38','1','20221202001','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,0,1.25,0,NULL,NULL,NULL),
(311,1,1,3,'00','2022-12-02 14:28:35','2','20221202002','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(312,1,1,3,'00','2022-12-02 14:38:22','3','20221202003','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(313,1,1,3,'00','2022-12-02 14:38:47','4','20221202004','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(314,1,1,3,'00','2022-12-02 14:39:25','5','20221202005','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(315,1,1,3,'00','2022-12-02 14:40:48','6','20221202006','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(316,1,1,3,'00','2022-12-02 14:43:59','7','20221202007','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(317,1,1,3,'00','2022-12-02 14:44:41','8','20221202008','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(318,1,1,3,'00','2022-12-02 14:45:29','9','20221202009','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(319,1,1,3,'00','2022-12-02 14:47:04','10','20221202010','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(320,1,1,3,'00','2022-12-02 14:47:53','11','20221202011','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(321,1,1,3,'00','2022-12-02 14:48:23','12','20221202012','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(322,1,1,3,'00','2022-12-02 14:49:13','13','20221202013','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(323,1,1,3,'00','2022-12-02 15:00:21','14','20221202014','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(324,1,1,3,'00','2022-12-02 15:00:21','15','20221202015','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(325,1,1,3,'00','2022-12-02 15:00:22','16','20221202016','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(326,1,1,3,'00','2022-12-02 15:00:22','17','20221202017','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(327,1,1,3,'00','2022-12-02 15:02:49','18','20221202018','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(328,1,1,3,'00','2022-12-02 15:13:31','19','20221202019','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(329,1,1,3,'00','2022-12-02 15:17:40','20','20221202020','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(330,1,1,3,'00','2022-12-02 15:36:06','21','20221202021','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(331,1,1,3,'00','2022-12-02 15:56:33','22','20221202022','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,14.299995,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,10,1.5,NULL,NULL,NULL),
(332,1,1,3,'00','2022-12-02 16:02:39','23','20221202023','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,14.299995,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,10,1.5,NULL,NULL,NULL),
(333,1,1,3,'00','2022-12-02 16:09:53','24','20221202024','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.799995,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,0,0,NULL,NULL,NULL),
(334,1,1,3,'00','2022-12-02 16:10:14','25','20221202025','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.799995,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,0,0,NULL,NULL,NULL),
(335,1,1,3,'00','2022-12-02 16:17:21','26','20221202026','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.799995,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,0,0,NULL,NULL,NULL),
(336,1,1,3,'00','2022-12-02 16:19:47','27','20221202027','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.799995,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,0,0,NULL,NULL,NULL),
(337,1,1,3,'00','2022-12-02 16:20:09','28','20221202028','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.799995,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,0,0,NULL,NULL,NULL),
(338,1,1,3,'00','2022-12-02 16:26:41','29','20221202029','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,104.0833,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,10.6667,10.6667,1.25,1.25,NULL,NULL,NULL),
(339,1,1,3,'00','2022-12-02 16:27:39','30','20221202030','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10.6667,1.6000050000000001,1.25,0.1875,NULL,NULL,NULL),
(340,1,1,3,'00','2022-12-02 16:33:02','31','20221202031','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,114.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,10.6667,0,1.25,1.25,NULL,NULL,NULL),
(341,1,1,3,'00','2022-12-02 16:34:47','32','20221202032','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,10.6667,0,1.25,0,NULL,NULL,NULL),
(342,1,1,3,'00','2022-12-02 16:35:45','33','20221202033','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,104.0833,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,10.6667,10.6667,1.25,1.25,NULL,NULL,NULL),
(343,1,1,3,'00','2022-12-02 16:37:01','34','20221202034','00','00','00',NULL,'2022-12-04 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,105.3333,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,10.6667,10.6667,1.25,0,NULL,NULL,NULL),
(344,3,1,1,'00','2022-12-03 15:26:24','1','20221203001','00','00','00',NULL,'2022-12-05 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,90.80783792999999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,10.6667,0,1.25,0,NULL,NULL,NULL),
(345,3,1,1,'00','2022-12-03 15:40:24','2','20221203002','00','00','00',NULL,'2022-12-05 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,90.80783792999999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,10.6667,9.19576207,1.25,0,NULL,NULL,NULL),
(346,1,1,3,'00','2022-12-03 15:41:48','3','20221203003','00','00','00',NULL,'2022-12-05 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.6666625,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.5,2.5,10.6667,1.3333375,1.25,0,NULL,NULL,NULL),
(349,1,1,3,'00','2022-12-03 15:51:15','4','20221203004','00','00','00',NULL,'2022-12-05 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.619595689999999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,10.6667,1.3792043100000002,1.25,0,NULL,NULL,NULL),
(350,1,1,3,'00','2022-12-03 15:51:32','5','20221203005','00','00','00',NULL,'2022-12-05 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.619595689999999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,10.6667,1.3792043100000002,1.25,0,NULL,NULL,NULL),
(351,1,1,3,'00','2022-12-03 15:52:27','6','20221203006','00','00','00',NULL,'2022-12-05 00:00:00',NULL,NULL,NULL,'Rutina','0',1.724,NULL,NULL,16.343514827999996,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15.516,2.48256,10.6667,1.655045172,1.25,0,NULL,NULL,NULL),
(352,1,1,3,'00','2022-12-03 16:11:50','7','20221203007','00','00','00',NULL,'2022-12-05 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.619595689999999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,10.6667,1.3792043100000002,1.25,0,NULL,NULL,NULL),
(353,3,1,1,'00','2022-12-03 16:17:25','8','20221203008','00','00','00',NULL,'2022-12-05 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,98.925975,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,NULL,0,NULL,0,NULL,NULL,NULL),
(354,1,1,3,'00','2022-12-03 16:27:07','9','20221203009','00','00','00',NULL,'2022-12-05 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.45797069,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,5,0.6465000000000001,NULL,0,NULL,NULL,NULL),
(355,1,1,3,'00','2022-12-05 15:32:43','1','20221205001','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,14.3523,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,5,0.6465000000000001,NULL,0,NULL,NULL,NULL),
(356,1,1,3,'00','2022-12-05 15:33:01','2','20221205002','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.45797069,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,5,0.6465000000000001,NULL,0,NULL,NULL,NULL),
(357,1,1,3,'00','2022-12-05 15:35:17','3','20221205003','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15.612495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,0,0,NULL,0,NULL,NULL,NULL),
(358,1,1,3,'00','2022-12-05 15:36:42','4','20221205004','00','00','00',NULL,'2022-12-06 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,26.020825,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'Ego',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,25,4,10,2.5,NULL,0,NULL,NULL,NULL),
(359,3,1,1,'00','2022-12-05 16:11:29','5','20221205005','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,114.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,0,0,0,0,NULL,NULL,NULL),
(360,3,1,1,'00','2022-12-05 16:13:30','6','20221205006','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,98.925975,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,10,0,10,8.621,NULL,NULL,NULL),
(361,3,1,1,'00','2022-12-05 16:37:41','7','20221205007','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,98.925975,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,0,0,NULL,1.077625,NULL,NULL,NULL),
(362,1,1,3,'00','2022-12-05 16:39:16','8','20221205008','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,14.837174999999998,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,NULL,0,NULL,0.16162500000000002,NULL,NULL,NULL),
(363,3,1,1,'00','2022-12-05 16:39:51','9','20221205009','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,114.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,NULL,0,NULL,0,NULL,NULL,NULL),
(364,1,1,3,'00','2022-12-05 17:22:15','10','20221205010','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,12.412799999999999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,0,0,20,2.5860000000000003,NULL,NULL,NULL),
(365,1,1,3,'00','2022-12-05 17:22:41','11','20221205011','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,14.837174999999998,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,0,0,20,2.5860000000000003,NULL,NULL,NULL),
(366,1,1,3,'00','2022-12-05 22:21:55','12','20221205012','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,14.837174999999998,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,12,1.5515999999999999,NULL,0,NULL,NULL,NULL),
(367,3,1,1,'00','2022-12-05 22:22:45','13','20221205013','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,114.75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,0,0,10,10,NULL,NULL,NULL),
(368,3,1,1,'00','2022-12-05 22:27:10','14','20221205014','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,91.3826,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,0,0,10,8.621,NULL,NULL,NULL),
(369,1,1,3,'00','2022-12-05 22:28:35','15','20221205015','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,17.2125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,0,0,1.25,0.1875,NULL,NULL,NULL),
(370,1,1,3,'00','2022-12-05 22:43:10','16','20221205016','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,17.2125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,10,1.5,1.25,0.1875,NULL,NULL,NULL),
(371,1,1,3,'00','2022-12-05 22:56:08','17','20221205017','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,14.837174999999998,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,0,0,32,4.1376,NULL,NULL,NULL),
(372,3,1,1,'00','2022-12-05 23:07:02','18','20221205018','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,104.0833,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,NULL,10.6667,NULL,1.25,NULL,NULL,NULL),
(373,3,1,1,'00','2022-12-05 23:13:32','19','20221205019','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,136.4218,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,158.63,25.3808,20,31.726,10,15.863,NULL,NULL,NULL),
(374,3,1,1,'00','2022-12-05 23:28:42','20','20221205020','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,89.73021293,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,NULL,9.19576207,NULL,1.077625,NULL,NULL,NULL),
(375,3,1,1,'00','2022-12-05 23:29:46','21','20221205021','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,104.0833,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,NULL,10.6667,NULL,1.25,NULL,NULL,NULL),
(376,3,1,1,'00','2022-12-06 13:03:28','1','20221206001','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,1,NULL,0,10,0,NULL,NULL,NULL),
(377,3,1,1,'00','2022-12-06 13:05:22','2','20221206002','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,0,NULL,0,10,10,NULL,NULL,NULL),
(378,1,1,3,'00','2022-12-06 13:46:10','3','20221206003','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.45797069,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,NULL,0,NULL,0,NULL,NULL,NULL),
(379,1,1,3,'00','2022-12-06 13:55:09','4','20221206004','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.45797069,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,NULL,1.3792043100000002,NULL,0.16162500000000002,NULL,NULL,NULL),
(380,3,1,1,'00','2022-12-06 13:56:01','5','20221206005','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,104.0833,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,15,10.6667,10,1.25,NULL,NULL,NULL),
(381,3,1,1,'00','2022-12-06 14:03:22','6','20221206006','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,89.73021293,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,NULL,9.19576207,NULL,1.077625,NULL,NULL,NULL),
(382,3,1,1,'00','2022-12-06 14:24:58','7','20221206007','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,89.73021293,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,NULL,9.19576207,NULL,1.077625,NULL,NULL,NULL),
(383,1,1,3,'00','2022-12-06 15:01:24','8','20221206008','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.45797069,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,NULL,1.3792043100000002,NULL,0.16162500000000002,NULL,NULL,NULL),
(384,1,1,3,'00','2022-12-06 15:02:43','9','20221206009','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.45797069,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,NULL,1.3792043100000002,NULL,0.16162500000000002,NULL,NULL,NULL),
(385,1,1,3,'00','2022-12-06 15:11:51','10','20221206010','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.45797069,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.0688,NULL,1.3792043100000002,NULL,0.16162500000000002,NULL,NULL,NULL),
(386,1,1,3,'00','2022-12-06 15:12:25','11','20221206011','00','00','00',NULL,'2022-12-07 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,22.42995115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'Ego',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,21.55,3.4480000000000004,NULL,2.29867385,NULL,0.26937500000000003,NULL,NULL,NULL),
(387,3,1,1,'00','2022-12-06 15:17:06','12','20221206012','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,89.73021293,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.7936,NULL,9.19576207,NULL,8.621,NULL,NULL,NULL),
(389,3,1,1,'00','2022-12-07 15:32:30','1','20221207001','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',1.6653345369377348e-16,NULL,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,86.21,13.79,NULL,0,NULL,0,NULL,NULL,NULL),
(390,3,1,1,'00','2022-12-07 15:46:45','2','20221207002','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',10.35,NULL,NULL,88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,75.86,12.14,NULL,0,NULL,0,NULL,NULL,NULL),
(391,3,1,1,'00','2022-12-07 15:47:09','3','20221207003','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',2,NULL,NULL,113.68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,98,15.68,NULL,0,NULL,0,NULL,NULL,NULL),
(392,3,1,1,'00','2022-12-07 15:47:36','4','20221207004','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',12,NULL,NULL,102.08,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,88,14.08,NULL,0,NULL,0,NULL,NULL,NULL),
(393,3,1,1,'00','2022-12-07 15:48:18','5','20221207005','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',122.4,NULL,NULL,1041.22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,897.6,143.62,NULL,0,NULL,0,NULL,NULL,NULL),
(395,3,1,1,'00','2022-12-07 16:08:42','6','20221207006','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',140,NULL,NULL,478.78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM BM BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,460,73.6,NULL,49.07,NULL,5.75,NULL,NULL,NULL),
(396,1,1,3,'00','2022-12-07 16:15:10','7','20221207007','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',1.5,NULL,NULL,14.05,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,13.5,2.16,NULL,1.44,NULL,0.17,NULL,NULL,NULL),
(397,1,1,3,'00','2022-12-07 16:18:19','8','20221207008','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.07,NULL,1.38,NULL,0.16,NULL,NULL,NULL),
(398,1,1,3,'00','2022-12-07 16:19:03','9','20221207009','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.07,NULL,1.38,NULL,0.16,NULL,NULL,NULL),
(399,1,1,3,'00','2022-12-07 16:24:51','10','20221207010','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.07,NULL,1.38,NULL,0.16,NULL,NULL,NULL),
(400,1,1,3,'00','2022-12-07 16:31:35','11','20221207011','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.07,NULL,1.38,NULL,0.16,NULL,NULL,NULL),
(401,1,1,3,'00','2022-12-07 16:32:32','12','20221207012','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.07,NULL,1.38,NULL,0.16,NULL,NULL,NULL),
(402,1,1,3,'00','2022-12-07 16:43:06','13','20221207013','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.07,10.6667,1.3792043100000002,1.25,0.16162500000000002,NULL,NULL,NULL),
(403,1,1,3,'00','2022-12-07 16:46:05','14','20221207014','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.07,10.6667,1.38,1.25,0.16,NULL,NULL,NULL),
(404,1,1,3,'00','2022-12-07 16:47:00','15','20221207015','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,13.47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.07,10.65,1.38,1.15,0.15,NULL,NULL,NULL),
(405,3,1,1,'00','2022-12-07 16:52:23','16','20221207016','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,0,0,0,0,0,NULL,NULL,NULL),
(406,2,1,2,'00','2022-12-07 16:57:44','17','20221207017','00','00','00',NULL,'2022-12-08 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,44.86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'22','Años','Masculino',NULL,NULL,'Ego','1',NULL,NULL,NULL,0,NULL,NULL,NULL,0,43.1,6.9,10.6667,4.6,1.25,0.54,NULL,NULL,NULL),
(407,3,1,1,'00','2022-12-07 16:58:50','18','20221207018','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',140,NULL,NULL,478.78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM BM BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,460,73.6,10.6667,49.07,1.25,5.75,NULL,NULL,NULL),
(408,3,1,1,'00','2022-12-07 17:03:42','19','20221207019','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',140,NULL,NULL,533.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM BM BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,460,73.6,0,0,0,0,NULL,NULL,NULL),
(410,3,1,1,'00','2022-12-07 17:09:33','20','20221207020','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',140,NULL,NULL,533.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM BM BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,460,73.6,0,0,0,0,NULL,NULL,NULL),
(411,3,1,1,'00','2022-12-07 17:10:09','21','20221207021','00','00','00',NULL,'2022-12-09 00:00:00',NULL,NULL,NULL,'Rutina','0',140,NULL,NULL,533.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM BM BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,460,73.6,0,0,0,0,NULL,NULL,NULL),
(412,3,1,1,'00','2022-12-08 13:19:51','1','20221208001','00','00','00',NULL,'2022-12-10 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,100,16,0,0,0,0,NULL,NULL,NULL),
(413,1,1,3,'00','2022-12-08 13:36:11','2','20221208002','00','00','00',NULL,'2022-12-10 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,17.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,15,2.4,0,0,0,0,NULL,NULL,'1'),
(414,1,1,3,'00','2022-12-08 13:36:40','3','20221208003','00','00','00',NULL,'2022-12-10 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,12.93,2.07,0,0,0,0,NULL,NULL,NULL),
(415,1,1,3,'00','2022-12-10 13:05:18','1','20221210001','00','00','00',NULL,'2022-12-11 00:00:00',NULL,NULL,NULL,'Rutina','0',0,NULL,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Meses','Masculino',NULL,NULL,'Ego',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,25,4,0,0,0,0,NULL,NULL,'1'),
(416,3,1,1,'00','2022-12-10 13:43:37','2','20221210002','00','00','00',NULL,'2022-12-12 00:00:00',NULL,'algo',NULL,'Rutina','0',0,NULL,NULL,406,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5','Meses','Masculino',NULL,NULL,'BM Ego BM',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,350,56,0,0,0,0,NULL,NULL,'1');

/*Table structure for table `solitmp` */

DROP TABLE IF EXISTS `solitmp`;

CREATE TABLE `solitmp` (
  `id` int(11) NOT NULL,
  `Paciente` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Doctor` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Empresa` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo_Pago` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha_Entrega` datetime DEFAULT NULL,
  `Anticipo` double DEFAULT NULL,
  `Expediente` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Importe` double DEFAULT NULL,
  `Tipo_toma` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estatus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descuento` double DEFAULT NULL,
  `Solicitud` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Facturar_a` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fur` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `porcentaje` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha_Entregado` datetime DEFAULT NULL,
  `Factura` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomCredencial` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pagos` double DEFAULT NULL,
  `NumImpResultados` int(11) DEFAULT NULL,
  `Folio` int(11) DEFAULT NULL,
  `SeFactura` int(11) DEFAULT NULL,
  `Impreso` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FOLIO` (`Folio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `solitmp` */

/*Table structure for table `sucursales` */

DROP TABLE IF EXISTS `sucursales`;

CREATE TABLE `sucursales` (
  `idSucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_sync` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `propagar` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `sync_tablas` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT '1111111',
  `bloquea_edicion` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `lic_autorizado` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT '00',
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idSucursal`),
  KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sucursales` */

insert  into `sucursales`(`idSucursal`,`descripcion`,`flag_sync`,`propagar`,`sync_tablas`,`bloquea_edicion`,`lic_autorizado`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`created_at`,`updated_at`) values 
('00','Matriz','1','1','1111111','0','00',NULL,NULL,NULL,0,NULL,NULL),
('01','InadwareSoft','1','1','1111111','0','00',NULL,NULL,NULL,0,NULL,NULL),
('02','Sucursal Centro','1','1','1111111','0','00',NULL,NULL,NULL,0,NULL,NULL),
('03','Mexico','1','1','1111111','0','00',NULL,NULL,NULL,0,NULL,NULL);

/*Table structure for table `tarifas` */

DROP TABLE IF EXISTS `tarifas`;

CREATE TABLE `tarifas` (
  `idtarifa` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `id_estudio` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarifa` double DEFAULT NULL,
  `Tarifa2` double DEFAULT NULL,
  `Marcada` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idtarifa`,`id_empresa`,`id_estudio`),
  KEY `orden` (`sucursal`,`id_empresa`,`id_estudio`,`tarifa`),
  KEY `fecha_act` (`fecha_act`),
  KEY `fk_tarifas_empresas1_idx` (`id_empresa`),
  KEY `fk_tarifas_estudios1_idx` (`id_estudio`),
  CONSTRAINT `fk_tarifas_empresas1` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tarifas_estudios1` FOREIGN KEY (`id_estudio`) REFERENCES `estudios` (`idEstudio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tarifas` */

insert  into `tarifas`(`idtarifa`,`id_empresa`,`id_estudio`,`sucursal`,`tarifa`,`Tarifa2`,`Marcada`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`created_at`,`updated_at`) values 
(1,1,1,'00',100,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
(2,1,2,'00',150,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
(3,2,2,'00',50,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
(4,3,2,'00',25,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
(5,3,1,'00',15,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
(6,3,3,'00',45,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`two_factor_confirmed_at`,`remember_token`,`current_team_id`,`profile_photo_path`,`created_at`,`updated_at`) values 
(2,'Aaron','soporte2@inadware.com.mx',NULL,'$2y$10$7hA9Dg65XacYwlzH0VQOTu4TcdJZ5Z8Nf68VK17Yhso7846vLTY4i',NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-10 19:57:40','2022-10-10 19:57:40'),
(3,'aaron','aaron.alcocer@inadware.com.mx',NULL,'$2y$10$28xjNjLkisD3qdiDp1qLoeY1L.tyvBF8kMZ6QgSYj9kcjlr3mt3Tm',NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-11 18:30:33','2022-10-11 18:30:33'),
(4,'aaron','aaron_alcocer@hotmail.com',NULL,'$2y$10$5wCjH0Kr4YbkT1atCuS1AOYDbmtO7EnSf9CT6VyGAUHtaIQusPfES',NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-14 15:27:25','2022-11-14 15:27:25'),
(5,'javier','correo@12mail.com',NULL,'$2y$10$VXi4gitFNM8YEywX9H7fiuj9QWgsZ4puRcL8kah4fmplfibUDHlK.',NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-21 19:20:05','2022-12-21 19:20:05');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `Usuario` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Privilegios` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Usuario` (`sucursal`,`Usuario`),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `usuarios` */

/*Table structure for table `valoresreferencia` */

DROP TABLE IF EXISTS `valoresreferencia`;

CREATE TABLE `valoresreferencia` (
  `idValorReferencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_prueba` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sexo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Edad` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EdadMin` double DEFAULT NULL,
  `EdadMax` double(8,2) DEFAULT NULL,
  `ValMin` double DEFAULT NULL,
  `ValMax` double DEFAULT NULL,
  `TextoValores` mediumtext COLLATE utf8mb4_unicode_ci,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idValorReferencia`,`id_prueba`),
  KEY `claveprueba` (`sucursal`,`id_prueba`),
  KEY `fecha_act` (`fecha_act`),
  KEY `fk_valoresreferencia_pruebas1_idx` (`id_prueba`),
  CONSTRAINT `fk_valoresreferencia_pruebas1` FOREIGN KEY (`id_prueba`) REFERENCES `pruebas` (`idPrueba`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `valoresreferencia` */

insert  into `valoresreferencia`(`idValorReferencia`,`id_prueba`,`sucursal`,`Sexo`,`Edad`,`EdadMin`,`EdadMax`,`ValMin`,`ValMax`,`TextoValores`,`fecha_act`,`fecha_sync`,`flag_sucursales`,`eliminar`,`created_at`,`updated_at`) values 
(3,1,'00','Indistinto','Días',1,120.00,0,0,NULL,NULL,NULL,NULL,0,'2022-12-21 19:57:24','2022-12-21 19:57:24');

/*Table structure for table `variablesmemoria` */

DROP TABLE IF EXISTS `variablesmemoria`;

CREATE TABLE `variablesmemoria` (
  `id` int(11) NOT NULL,
  `sucursal` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mem_Num_Paciente` int(11) DEFAULT NULL,
  `Mem_Num_Empresa` int(11) DEFAULT NULL,
  `Mem_Num_Doctor` int(11) DEFAULT NULL,
  `Mem_Ejemplo1` mediumtext COLLATE utf8mb4_unicode_ci,
  `Mem_Ejemplo2` mediumtext COLLATE utf8mb4_unicode_ci,
  `Mem_Ejemplo3` mediumtext COLLATE utf8mb4_unicode_ci,
  `Mem_ejemplo4` mediumtext COLLATE utf8mb4_unicode_ci,
  `Mem_FolioFactura` int(11) DEFAULT NULL,
  `Mem_RazonSocial` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mem_RFC` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mem_Direccion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mem_Ciudad` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mem_Telefono` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mem_Folio_pago` int(11) DEFAULT NULL,
  `Mem_Urgencias` int(11) DEFAULT NULL,
  `Mem_Iva` double DEFAULT NULL,
  `Mem_Sucursal` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mem_Folio_Solicitud` int(11) DEFAULT NULL,
  `mem_responsable` mediumtext COLLATE utf8mb4_unicode_ci,
  `Mem_MuestraId` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regimen` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mem_Solicitud` int(11) DEFAULT NULL,
  `TipoFactura` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mem_ProcessExtern` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mem_Factura_CFDi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GWC_activo` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fecha_act` datetime DEFAULT NULL,
  `fecha_sync` datetime DEFAULT NULL,
  `flag_sucursales` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eliminar` int(11) NOT NULL DEFAULT '0',
  `SesionesActivas` int(11) NOT NULL DEFAULT '0',
  `EscribirSesionesActivas` int(11) NOT NULL DEFAULT '0',
  `Mem_Num_Moves` int(11) NOT NULL DEFAULT '0',
  `FlagInitConsec` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000000',
  `RLOCK_MEM_FOLIO_SOLICITUD` tinyint(1) NOT NULL DEFAULT '0',
  `RLOCK_MEM_NUM_PACIENTE` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`sucursal`),
  KEY `fecha_act` (`fecha_act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `variablesmemoria` */

/*Table structure for table `version-7-0-0` */

DROP TABLE IF EXISTS `version-7-0-0`;

CREATE TABLE `version-7-0-0` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `version-7-0-0` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
