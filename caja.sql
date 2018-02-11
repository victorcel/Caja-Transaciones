# Host: 127.0.0.1  (Version 5.7.19)
# Date: 2018-02-11 15:47:07
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "bancos"
#

DROP TABLE IF EXISTS `bancos`;
CREATE TABLE `bancos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `banco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "bancos"
#

INSERT INTO `bancos` VALUES (1,'BBVA','2018-02-11 19:26:55',NULL),(2,'BANCOLOMBIA','2018-02-11 20:39:50','2018-02-11 20:47:00'),(3,'COLPATRIA','2018-02-11 20:45:31',NULL);

#
# Structure for table "clientes"
#

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "clientes"
#

INSERT INTO `clientes` VALUES (1,'VICTOR','BARRERA',12345,'2018-02-11 19:27:47',NULL),(2,'ELIAS','BARRERA',54321,'2018-02-11 20:13:16',NULL),(3,'jose','martinez',1047325365,'2018-02-11 20:37:41',NULL);

#
# Structure for table "cms_apicustom"
#

DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_apicustom"
#


#
# Structure for table "cms_apikey"
#

DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_apikey"
#


#
# Structure for table "cms_dashboard"
#

DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_dashboard"
#


#
# Structure for table "cms_email_queues"
#

DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `email_attachments` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_email_queues"
#


#
# Structure for table "cms_email_templates"
#

DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_email_templates"
#

INSERT INTO `cms_email_templates` VALUES (1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2018-02-11 14:26:41',NULL);

#
# Structure for table "cms_logs"
#

DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_logs"
#

INSERT INTO `cms_logs` VALUES (1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/login','Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1','',1,'2018-02-11 14:27:46',NULL),(2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/tarjetas/add-save','Añadir nueva información 1 en Tarjetas','',1,'2018-02-11 15:29:04',NULL),(3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/orders/add-save','Añadir nueva información 1 en Transacciones','',1,'2018-02-11 15:29:25',NULL),(4,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/users/edit-save/1','Actualizar información Super Admin en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-02/sundreams.jpg</td></tr><tr><td>password</td><td>$2y$10$Lt1r84RqVYenghVDJ68LNu2RG82NFx/Hyo/9Awdin3JWbww5Lo.qi</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2018-02-11 15:35:44',NULL),(5,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/users/edit-save/1','Actualizar información Super Admin en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$Lt1r84RqVYenghVDJ68LNu2RG82NFx/Hyo/9Awdin3JWbww5Lo.qi</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>',1,'2018-02-11 15:35:47',NULL),(6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/logout','admin@admin.com se desconectó','',1,'2018-02-11 15:35:56',NULL),(7,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/login','Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1','',1,'2018-02-11 15:36:07',NULL),(8,'10.43.1.46','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36','http://10.43.88.22/caja/public/admin/login','Ingreso de admin@admin.com desde la Dirección IP 10.43.1.46','',1,'2018-02-11 15:49:58',NULL),(9,'10.43.1.46','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36','http://10.43.88.22/caja/public/admin/tarjetas/add-save','Añadir nueva información 2 en Tarjetas','',1,'2018-02-11 15:52:34',NULL),(10,'10.43.1.46','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36','http://10.43.88.22/caja/public/admin/orders/add-save','Añadir nueva información 2 en Transacciones','',1,'2018-02-11 15:54:55',NULL),(11,'10.43.1.46','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36','http://10.43.88.22/caja/public/admin/logout','admin@admin.com se desconectó','',1,'2018-02-11 16:01:54',NULL),(12,'10.43.1.46','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36','http://10.43.88.22/caja/public/admin/login','Ingreso de admin@admin.com desde la Dirección IP 10.43.1.46','',1,'2018-02-11 16:02:09',NULL),(13,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/add-save','Añadir nueva información Tarjetas en Gestión de Menús','',1,'2018-02-11 18:50:01',NULL),(14,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/2','Actualizar información Crear Tarjeta en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tarjetas</td><td>Crear Tarjeta</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>',1,'2018-02-11 18:50:47',NULL),(15,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/6','Actualizar información Crear Banco en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Bancos</td><td>Crear Banco</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-bank</td><td>fa fa-credit-card</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-11 19:15:20',NULL),(16,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/6','Actualizar información Crear Banco en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-credit-card</td><td>fa fa-bank</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-11 19:15:42',NULL),(17,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/5','Actualizar información Crear Franquicia en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-credit-card</td><td>fa fa-money</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2018-02-11 19:16:52',NULL),(18,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/logout','admin@admin.com se desconectó',NULL,1,'2018-02-11 19:20:14',NULL),(19,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/login','Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1',NULL,1,'2018-02-11 19:20:20',NULL),(20,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/bancos/add-save','Añadir nueva información 1 en Bancos','',1,'2018-02-11 19:26:55',NULL),(21,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/franquicia/add-save','Añadir nueva información 1 en Crear Franquicia','',1,'2018-02-11 19:27:05',NULL),(22,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/franquicia/edit-save/1','Actualizar información  en Crear Franquicia','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tarjeta</td><td>visa</td><td>VISA</td></tr></tbody></table>',1,'2018-02-11 19:27:24',NULL),(23,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/clientes/add-save','Añadir nueva información VICTOR en Clientes','',1,'2018-02-11 19:27:47',NULL),(24,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/tarjetas/add-save','Añadir nueva información 1 en Tarjetas','',1,'2018-02-11 19:34:58',NULL),(25,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/tarjetas/add-save','Añadir nueva información 2 en Tarjetas','',1,'2018-02-11 19:36:55',NULL),(26,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/tarjetas/delete/1','Eliminar información 1 en Tarjetas','',1,'2018-02-11 19:37:51',NULL),(27,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/tarjetas/delete/2','Eliminar información 2 en Tarjetas','',1,'2018-02-11 19:41:51',NULL),(28,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/tarjetas/add-save','Añadir nueva información 1 en Tarjetas','',1,'2018-02-11 19:48:01',NULL),(29,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/tarjetas/add-save','Añadir nueva información 2 en Tarjetas','',1,'2018-02-11 20:09:13',NULL),(30,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/orders/add-save','Añadir nueva información 1 en Transacciones','',1,'2018-02-11 20:09:32',NULL),(31,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/clientes/add-save','Añadir nueva información ELIAS en Clientes','',1,'2018-02-11 20:13:16',NULL),(32,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/users/add-save','Añadir nueva información Cajeros en Gestión de usuarios','',1,'2018-02-11 20:26:19',NULL),(33,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/logout','admin@admin.com se desconectó','',1,'2018-02-11 20:26:24',NULL),(34,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/login','Ingreso de caja@sundreams.com desde la Dirección IP 127.0.0.1','',2,'2018-02-11 20:26:28',NULL),(35,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/logout','caja@sundreams.com se desconectó','',2,'2018-02-11 20:26:38',NULL),(36,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/login','Ingreso de admin@admin.com desde la Dirección IP 127.0.0.1','',1,'2018-02-11 20:26:44',NULL),(37,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/4','Actualizar información Tarjetas en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',1,'2018-02-11 20:26:59',NULL),(38,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/2','Actualizar información Crear Tarjeta en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-credit-card</td><td>fa fa-credit-card-alt</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>',1,'2018-02-11 20:27:08',NULL),(39,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/5','Actualizar información Crear Franquicia en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-money</td><td>fa fa-credit-card-alt</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2018-02-11 20:27:14',NULL),(40,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/6','Actualizar información Crear Banco en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-bank</td><td>fa fa-credit-card-alt</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-11 20:27:21',NULL),(41,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/1','Actualizar información Clientes en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-users</td><td>fa fa-credit-card-alt</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2018-02-11 20:27:28',NULL),(42,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/3','Actualizar información Transacciones en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-cart-plus</td><td>fa fa-credit-card-alt</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-11 20:27:35',NULL),(43,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/1','Actualizar información Clientes en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-credit-card-alt</td><td>fa fa-users</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',1,'2018-02-11 20:28:12',NULL),(44,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/3','Actualizar información Transacciones en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-credit-card-alt</td><td>fa fa-cc-mastercard</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-11 20:29:01',NULL),(45,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/menu_management/edit-save/6','Actualizar información Crear Banco en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-credit-card-alt</td><td>fa fa-bank</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',1,'2018-02-11 20:29:22',NULL),(46,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/logout','admin@admin.com se desconectó','',1,'2018-02-11 20:29:32',NULL),(47,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/login','Ingreso de caja@sundreams.com desde la Dirección IP 127.0.0.1','',2,'2018-02-11 20:29:36',NULL),(48,'10.43.1.11','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; Tablet PC 2.0)','http://10.43.1.14/caja/public/admin/login','Ingreso de caja@sundreams.com desde la Dirección IP 10.43.1.11','',2,'2018-02-11 20:34:24',NULL),(49,'10.43.1.11','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; Tablet PC 2.0)','http://10.43.1.14/caja/public/admin/login','Ingreso de caja@sundreams.com desde la Dirección IP 10.43.1.11','',2,'2018-02-11 20:34:24',NULL),(50,'10.43.1.11','Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; Tablet PC 2.0)','http://10.43.1.14/caja/public/admin/login','Ingreso de caja@sundreams.com desde la Dirección IP 10.43.1.11','',2,'2018-02-11 20:34:24',NULL),(51,'10.43.1.11','Mozilla/5.0 (Windows NT 6.1; rv:58.0) Gecko/20100101 Firefox/58.0','http://10.43.1.14/caja/public/admin/login','Ingreso de caja@sundreams.com desde la Dirección IP 10.43.1.11','',2,'2018-02-11 20:36:05',NULL),(52,'10.43.1.11','Mozilla/5.0 (Windows NT 6.1; rv:58.0) Gecko/20100101 Firefox/58.0','http://10.43.1.14/caja/public/admin/clientes/add-save','Añadir nueva información jose en Clientes','',2,'2018-02-11 20:37:41',NULL),(53,'10.43.1.11','Mozilla/5.0 (Windows NT 6.1; rv:58.0) Gecko/20100101 Firefox/58.0','http://10.43.1.14/caja/public/admin/franquicia/add-save','Añadir nueva información 2 en Crear Franquicia','',2,'2018-02-11 20:38:53',NULL),(54,'10.43.1.11','Mozilla/5.0 (Windows NT 6.1; rv:58.0) Gecko/20100101 Firefox/58.0','http://10.43.1.14/caja/public/admin/bancos/add-save','Añadir nueva información 2 en Bancos','',2,'2018-02-11 20:39:50',NULL),(55,'10.43.1.11','Mozilla/5.0 (Windows NT 6.1; rv:58.0) Gecko/20100101 Firefox/58.0','http://10.43.1.14/caja/public/admin/tarjetas/add-save','Añadir nueva información 3 en Tarjetas','',2,'2018-02-11 20:41:55',NULL),(56,'10.43.1.11','Mozilla/5.0 (Windows NT 6.1; rv:58.0) Gecko/20100101 Firefox/58.0','http://10.43.1.14/caja/public/admin/orders/add-save','Añadir nueva información 2 en Transacciones','',2,'2018-02-11 20:42:51',NULL),(57,'10.43.1.11','Mozilla/5.0 (Windows NT 6.1; rv:58.0) Gecko/20100101 Firefox/58.0','http://10.43.1.14/caja/public/admin/orders/add-save','Añadir nueva información 3 en Transacciones','',2,'2018-02-11 20:43:42',NULL),(58,'10.43.1.11','Mozilla/5.0 (Windows NT 6.1; rv:58.0) Gecko/20100101 Firefox/58.0','http://10.43.1.14/caja/public/admin/bancos/add-save','Añadir nueva información 3 en Bancos','',2,'2018-02-11 20:45:31',NULL),(59,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','http://caja.dev/admin/tarjetas/add-save','Añadir nueva información 4 en Tarjetas','',2,'2018-02-11 20:45:34',NULL),(60,'10.43.1.11','Mozilla/5.0 (Windows NT 6.1; rv:58.0) Gecko/20100101 Firefox/58.0','http://10.43.1.14/caja/public/admin/bancos/edit-save/2','Actualizar información  en Bancos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>banco</td><td>bancolombia</td><td>BANCOLOMBIA</td></tr></tbody></table>',2,'2018-02-11 20:47:00',NULL);

#
# Structure for table "cms_menus"
#

DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_menus"
#

INSERT INTO `cms_menus` VALUES (1,'Clientes','Route','AdminClientesControllerGetIndex','normal','fa fa-users',0,1,0,1,2,'2018-02-11 14:31:07','2018-02-11 20:28:11'),(2,'Crear Tarjeta','Route','AdminTarjetasControllerGetIndex','normal','fa fa-credit-card-alt',4,1,0,1,1,'2018-02-11 15:18:10','2018-02-11 20:27:07'),(3,'Transacciones','Route','AdminOrdersControllerGetIndex','normal','fa fa-cc-mastercard',0,1,0,1,3,'2018-02-11 15:25:37','2018-02-11 20:29:00'),(4,'Tarjetas','URL','#','normal','fa fa-credit-card-alt',0,1,0,1,1,'2018-02-11 18:50:01','2018-02-11 20:26:59'),(5,'Crear Franquicia','Route','AdminFranquiciaControllerGetIndex','normal','fa fa-credit-card-alt',4,1,0,1,2,'2018-02-11 18:51:29','2018-02-11 20:27:14'),(6,'Crear Banco','Route','AdminBancosControllerGetIndex','normal','fa fa-bank',4,1,0,1,3,'2018-02-11 19:14:43','2018-02-11 20:29:21');

#
# Structure for table "cms_menus_privileges"
#

DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_menus_privileges"
#

INSERT INTO `cms_menus_privileges` VALUES (9,4,2),(10,4,1),(11,2,2),(12,2,1),(13,5,2),(14,5,1),(21,1,2),(22,1,1),(23,3,2),(24,3,1),(25,6,2),(26,6,1);

#
# Structure for table "cms_moduls"
#

DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_moduls"
#

INSERT INTO `cms_moduls` VALUES (1,'Notificaciones','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2018-02-11 14:26:40',NULL,NULL),(2,'Privilegios','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2018-02-11 14:26:40',NULL,NULL),(3,'Privilegios & Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2018-02-11 14:26:40',NULL,NULL),(4,'Gestión de usuarios','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2018-02-11 14:26:40',NULL,NULL),(5,'Ajustes','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2018-02-11 14:26:40',NULL,NULL),(6,'Generador de Módulos','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2018-02-11 14:26:40',NULL,NULL),(7,'Gestión de Menús','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2018-02-11 14:26:40',NULL,NULL),(8,'Plantillas de Correo','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2018-02-11 14:26:40',NULL,NULL),(9,'Generador de Estadísticas','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2018-02-11 14:26:40',NULL,NULL),(10,'Generador de API','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2018-02-11 14:26:40',NULL,NULL),(11,'Log de Accesos (Usuarios)','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2018-02-11 14:26:40',NULL,NULL),(12,'Clientes','fa fa-users','clientes','clientes','AdminClientesController',0,0,'2018-02-11 14:31:07',NULL,NULL),(13,'Tarjetas','fa fa-credit-card','tarjetas','tarjetas','AdminTarjetasController',0,0,'2018-02-11 15:18:10',NULL,NULL),(14,'Transacciones','fa fa-cart-plus','orders','orders','AdminOrdersController',0,0,'2018-02-11 15:25:37',NULL,NULL),(15,'Crear Franquicia','fa fa-credit-card','franquicia','franquicia','AdminFranquiciaController',0,0,'2018-02-11 18:51:29',NULL,NULL),(16,'Bancos','fa fa-bank','bancos','bancos','AdminBancosController',0,0,'2018-02-11 19:14:42',NULL,NULL);

#
# Structure for table "cms_notifications"
#

DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_notifications"
#


#
# Structure for table "cms_privileges"
#

DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_privileges"
#

INSERT INTO `cms_privileges` VALUES (1,'Super Administrator',1,'skin-red','2018-02-11 14:26:40',NULL),(2,'Cajeros',0,'skin-purple',NULL,NULL);

#
# Structure for table "cms_privileges_roles"
#

DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_privileges_roles"
#

INSERT INTO `cms_privileges_roles` VALUES (1,1,0,0,0,0,1,1,'2018-02-11 14:26:40',NULL),(2,1,1,1,1,1,1,2,'2018-02-11 14:26:40',NULL),(3,0,1,1,1,1,1,3,'2018-02-11 14:26:40',NULL),(4,1,1,1,1,1,1,4,'2018-02-11 14:26:40',NULL),(5,1,1,1,1,1,1,5,'2018-02-11 14:26:40',NULL),(6,1,1,1,1,1,1,6,'2018-02-11 14:26:40',NULL),(7,1,1,1,1,1,1,7,'2018-02-11 14:26:40',NULL),(8,1,1,1,1,1,1,8,'2018-02-11 14:26:40',NULL),(9,1,1,1,1,1,1,9,'2018-02-11 14:26:40',NULL),(10,1,1,1,1,1,1,10,'2018-02-11 14:26:40',NULL),(11,1,0,1,0,1,1,11,'2018-02-11 14:26:40',NULL),(12,1,1,1,1,1,1,12,NULL,NULL),(13,1,1,1,1,1,1,13,NULL,NULL),(14,1,1,1,1,1,1,14,NULL,NULL),(15,1,1,1,1,1,1,15,NULL,NULL),(16,1,1,1,1,1,1,16,NULL,NULL),(17,1,1,1,1,0,2,16,NULL,NULL),(18,1,1,1,1,0,2,12,NULL,NULL),(19,1,1,1,1,0,2,15,NULL,NULL),(20,1,1,1,1,0,2,4,NULL,NULL),(21,1,1,1,1,0,2,13,NULL,NULL),(22,1,1,1,1,0,2,14,NULL,NULL);

#
# Structure for table "cms_settings"
#

DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_settings"
#

INSERT INTO `cms_settings` VALUES (1,'login_background_color',NULL,'text',NULL,'Input hexacode','2018-02-11 14:26:40',NULL,'Estilo de página de registro','Login Background Color'),(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2018-02-11 14:26:40',NULL,'Estilo de página de registro','Login Font Color'),(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2018-02-11 14:26:40',NULL,'Estilo de página de registro','Login Background Image'),(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Correo','Email Sender'),(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Correo','Mail Driver'),(6,'smtp_host','','text',NULL,NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Correo','SMTP Host'),(7,'smtp_port','25','text',NULL,'default 25','2018-02-11 14:26:40',NULL,'Ajustes de Correo','SMTP Port'),(8,'smtp_username','','text',NULL,NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Correo','SMTP Username'),(9,'smtp_password','','text',NULL,NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Correo','SMTP Password'),(10,'appname','Caja Transaciones','text',NULL,NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Aplicaciones','Application Name'),(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2018-02-11 14:26:40',NULL,'Ajustes de Aplicaciones','Default Paper Print Size'),(12,'logo','uploads/2018-02/2bb6514fc00d8b432231a537332f7ce2.jpg','upload_image',NULL,NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Aplicaciones','Logo'),(13,'favicon',NULL,'upload_image',NULL,NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Aplicaciones','Favicon'),(14,'api_debug_mode','true','select','true,false',NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Aplicaciones','API Debug Mode'),(15,'google_api_key',NULL,'text',NULL,NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Aplicaciones','Google API Key'),(16,'google_fcm_key',NULL,'text',NULL,NULL,'2018-02-11 14:26:40',NULL,'Ajustes de Aplicaciones','Google FCM Key');

#
# Structure for table "cms_statistic_components"
#

DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_statistic_components"
#


#
# Structure for table "cms_statistics"
#

DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_statistics"
#


#
# Structure for table "cms_users"
#

DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "cms_users"
#

INSERT INTO `cms_users` VALUES (1,'Super Admin','uploads/1/2018-02/sundreams.jpg','admin@admin.com','$2y$10$Lt1r84RqVYenghVDJ68LNu2RG82NFx/Hyo/9Awdin3JWbww5Lo.qi',1,'2018-02-11 14:26:40','2018-02-11 15:35:47','Active'),(2,'Cajeros','uploads/1/2018-02/cajeros.jpg','caja@sundreams.com','$2y$10$gqgMOicdEM42RJgYfhSh9.u4ANSDAGIvrIsuSUclKrsFZnSjlnK0a',2,'2018-02-11 20:26:19',NULL,NULL);

#
# Structure for table "franquicia"
#

DROP TABLE IF EXISTS `franquicia`;
CREATE TABLE `franquicia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tarjeta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comision` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "franquicia"
#

INSERT INTO `franquicia` VALUES (1,'VISA',2.19,'2018-02-11 19:27:05','2018-02-11 19:27:24'),(2,'master',1.16,'2018-02-11 20:38:53',NULL);

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2016_08_07_145904_add_table_cms_apicustom',1),(2,'2016_08_07_150834_add_table_cms_dashboard',1),(3,'2016_08_07_151210_add_table_cms_logs',1),(4,'2016_08_07_151211_add_details_cms_logs',1),(5,'2016_08_07_152014_add_table_cms_privileges',1),(6,'2016_08_07_152214_add_table_cms_privileges_roles',1),(7,'2016_08_07_152320_add_table_cms_settings',1),(8,'2016_08_07_152421_add_table_cms_users',1),(9,'2016_08_07_154624_add_table_cms_menus_privileges',1),(10,'2016_08_07_154624_add_table_cms_moduls',1),(11,'2016_08_17_225409_add_status_cms_users',1),(12,'2016_08_20_125418_add_table_cms_notifications',1),(13,'2016_09_04_033706_add_table_cms_email_queues',1),(14,'2016_09_16_035347_add_group_setting',1),(15,'2016_09_16_045425_add_label_setting',1),(16,'2016_09_17_104728_create_nullable_cms_apicustom',1),(17,'2016_10_01_141740_add_method_type_apicustom',1),(18,'2016_10_01_141846_add_parameters_apicustom',1),(19,'2016_10_01_141934_add_responses_apicustom',1),(20,'2016_10_01_144826_add_table_apikey',1),(21,'2016_11_14_141657_create_cms_menus',1),(22,'2016_11_15_132350_create_cms_email_templates',1),(23,'2016_11_15_190410_create_cms_statistics',1),(24,'2016_11_17_102740_create_cms_statistic_components',1),(25,'2017_06_06_164501_add_deleted_at_cms_moduls',1),(37,'2018_02_01_121844_create_clientes_table',2),(38,'2018_02_01_164700_create_franquicia_table',2),(39,'2018_02_01_185338_create_bancos_table',2),(42,'2018_02_03_130459_create_tarjetas_table',3),(43,'2018_02_03_161152_create_orders_table',3);

#
# Structure for table "tarjetas"
#

DROP TABLE IF EXISTS `tarjetas`;
CREATE TABLE `tarjetas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` int(10) unsigned NOT NULL,
  `numero_tarj` bigint(20) NOT NULL,
  `franquicia_id` int(10) unsigned NOT NULL,
  `banco_id` int(10) unsigned NOT NULL,
  `tipo` enum('Debito','Credito') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tarjetas_numero_tarj_unique` (`numero_tarj`),
  KEY `tarjetas_cliente_id_foreign` (`cliente_id`),
  KEY `tarjetas_franquicia_id_foreign` (`franquicia_id`),
  KEY `tarjetas_banco_id_foreign` (`banco_id`),
  CONSTRAINT `tarjetas_banco_id_foreign` FOREIGN KEY (`banco_id`) REFERENCES `bancos` (`id`),
  CONSTRAINT `tarjetas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `tarjetas_franquicia_id_foreign` FOREIGN KEY (`franquicia_id`) REFERENCES `franquicia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "tarjetas"
#

INSERT INTO `tarjetas` VALUES (1,1,987654321,1,1,'Debito','2018-02-11 19:48:01',NULL),(2,1,9876543211,1,1,'Debito','2018-02-11 20:09:13',NULL),(3,3,2525251102552,2,2,'Credito','2018-02-11 20:41:55',NULL),(4,3,34343456756,2,1,'Debito','2018-02-11 20:45:34',NULL);

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `cliente_id` int(10) unsigned NOT NULL,
  `tarjeta_id` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_cliente_id_foreign` (`cliente_id`),
  KEY `orders_tarjeta_id_foreign` (`tarjeta_id`),
  CONSTRAINT `orders_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `orders_tarjeta_id_foreign` FOREIGN KEY (`tarjeta_id`) REFERENCES `tarjetas` (`id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `cms_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (1,1,1,1,500000,'2018-02-11 20:09:32',NULL),(2,2,3,3,500000,'2018-02-11 20:42:51',NULL),(3,2,3,3,1000000,'2018-02-11 20:43:42',NULL);
