# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.11)
# Database: Recipes
# Generation Time: 2020-05-11 21:48:23 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table frequency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `frequency`;

CREATE TABLE `frequency` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `recipe` varchar(255) DEFAULT NULL,
  `freq` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `frequency` WRITE;
/*!40000 ALTER TABLE `frequency` DISABLE KEYS */;

INSERT INTO `frequency` (`id`, `recipe`, `freq`)
VALUES
	(1,'Fajitas',1),
	(2,'Spaghetti and Meatballs',1),
	(3,'Jerk Chicken',1),
	(4,'Pork Stir Fry',3),
	(5,'Tofu Curry',3),
	(6,'Burritos',5),
	(7,'Hoppin John',5),
	(8,'Rice Pilaf',1),
	(9,'Singapore Noodles',2),
	(10,'Beef Randang',1),
	(11,'Pasta Putenesca',5),
	(12,'German Potato Salad',2),
	(13,'Korean Beef Soup',3),
	(14,'Cacio e Pepe',3),
	(15,'Broccoli and Gorgonzola Pasta',1),
	(16,'BBQ Ribs',1);

/*!40000 ALTER TABLE `frequency` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
