# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.11)
# Database: Recipes
# Generation Time: 2020-05-13 11:01:49 +0000
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


# Dump of table Ingredients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Ingredients`;

CREATE TABLE `Ingredients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `recipe` varchar(255) DEFAULT NULL,
  `ingredient` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Ingredients` WRITE;
/*!40000 ALTER TABLE `Ingredients` DISABLE KEYS */;

INSERT INTO `Ingredients` (`id`, `recipe`, `ingredient`, `unit`, `amount`)
VALUES
	(1,'Fajitas','skirt steak','grams',0.5),
	(2,'Fajitas','peppers','',3),
	(3,'Fajitas','limes','',1),
	(4,'Fajitas','red onions','',2),
	(5,'Fajitas','tortillas','6 pack',2),
	(6,'Fajitas','sour cream','300 ml tub',0.25),
	(7,'Spaghetti and Meatballs','canned tomatoes','16 oz can',4),
	(8,'Spaghetti and Meatballs','buttermilk','300 ml tub',1),
	(9,'Korean Beef Soup','beef brisket','grams',0.5),
	(10,'Korean Beef Soup','scallions','bunch',3),
	(11,'Jerk Chicken','chicken','',1),
	(12,'Hoppin John','black eyed peas','16 oz can',3),
	(13,'Hoppin John','parsley','bunch',0.25),
	(14,'Hoppin John','bacon','pack',0.5),
	(15,'Singapore Noodles','rice vermicelli','pack',6),
	(16,'Singapore Noodles','shrimp','pack',1),
	(17,'Tofu Curry','tofu','pack',1),
	(18,'Tofu Curry','snow peas','pack',1),
	(19,'Tofu Curry','red onions','',1),
	(20,'Tofu Curry','peppers','',2),
	(21,'Fajitas','chillies','',4),
	(22,'Pork Stir Fry','pork fillet','',1),
	(23,'Cacio e Pepe','romano cheese','wedge',0.5),
	(24,'Cacio e Pepe','spaghetti','pack',1),
	(25,'Korean Beef Soup','garlic','head',1),
	(26,'Broccoli and Gorgonzola Pasta','broccoli','head',1),
	(27,'Broccoli and Gorgonzola Pasta','gorgonzola cheese','wedge',1),
	(28,'Broccoli and Gorgonzola Pasta','cream','300 ml tub',1),
	(29,'BBQ Ribs','spare ribs','rack',1),
	(30,'Slaw','cabbage','head',1),
	(31,'German Potato Salad','vivaldi potatoes','kg',2),
	(32,'German Potato Salad','bacon','pack',0.5),
	(33,'German Potato Salad','apples','',2),
	(34,'German Potato Salad','eggs','',4),
	(35,'Broccoli and Gorgonzola Pasta','fusilli','pack',1),
	(36,'Pasta Putenesca','spaghetti','pack',1),
	(37,'Pasta Putenesca','olives','pack',3),
	(38,'Pasta Putenesca','capers','jar',0.5),
	(39,'Pasta Putenesca','anchovies','tin',0.5),
	(40,'Pasta Putenesca','canned tomatoes','16 oz can',2),
	(41,'Pasta Putenesca','parmesan cheese','wedge',0.5),
	(42,'Beef Randang','beef chuck','g',1),
	(43,'Cucumber Carrot Pickle','cucumber','',1),
	(44,'Cucumber Carrot Pickle','carrots','',2),
	(45,'Cucumber Carrot Pickle','green thai chilies','',2),
	(46,'Beef Randang','nutmeg','',1),
	(47,'Beef Randang','shallots','',6),
	(48,'Cucumber Carrot Pickle','shallots','',3),
	(49,'Beef Randang','red thai chilies','',10),
	(50,'Beef Randang','canned coconut milk','16 oz can',1),
	(51,'Beef Randang','lemongrass','',3),
	(52,'Beef Randang','cinnamon stick','',1),
	(53,'Beef Randang','galangal','inches',2),
	(54,'Singapore Noodles','curry powder','tbsp',2),
	(55,'Singapore Noodles','eggs','',4),
	(56,'Singapore Noodles','scallions','bunch',0.5),
	(57,'Singapore Noodles','peppers','',1),
	(58,'Singapore Noodles','chicken stock','500 ml pack',0.5),
	(59,'Singapore Noodles','limes','',1),
	(60,'Singapore Noodles','shallots','',2),
	(61,'Rice Pilaf','basmati rice','cups',1.5),
	(62,'Burritos','dried black beans','500 g pack',1),
	(63,'Burritos','tortillas','6 pack',2),
	(64,'Burritos','sour cream','300 ml tub',0.5),
	(65,'Burritos','scallions','bunch',1),
	(66,'Burritos','chillies','',2),
	(67,'Burritos','peppers','',2),
	(68,'Burritos','lettuce','head',0.5),
	(69,'Pork Stir Fry','peppers','',2),
	(70,'Pork Stir Fry','peppers','',1),
	(71,'Jerk Chicken','scallions','bunch',1),
	(72,'Jerk Chicken','habanero chilies','',2),
	(73,'Mango Hot Sauce','habanero chilies','',3),
	(74,'Mango Hot Sauce','mango','',1),
	(75,'German Potato Salad','cornichon','jar',2),
	(76,'Panna Cotta','cream','300 ml tub',1),
	(77,'Panna Cotta','buttermilk','300 ml tub',1),
	(78,'Spaghetti and Meatballs','pork mince','grams',250),
	(79,'Spaghetti and Meatballs','beef mince','grams',0.75),
	(80,'Spaghetti and Meatballs','parsley','bunch',0.25),
	(81,'Spaghetti and Meatballs','parmesan cheese','wedge',0.25),
	(82,'Spaghetti and Meatballs','eggs','',1),
	(83,'Spaghetti and Meatballs','basil','bunch',1),
	(84,'Spaghetti and Meatballs','spaghetti','pack',1),
	(85,'Korean Beef Soup','eggs','',2);

/*!40000 ALTER TABLE `Ingredients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sources`;

CREATE TABLE `sources` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `recipe` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sources` WRITE;
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;

INSERT INTO `sources` (`id`, `recipe`, `source`, `link`)
VALUES
	(1,'Cacio e Pepe','Serious Eats','https://www.seriouseats.com/recipes/2016/02/spaghetti-cacio-e-pepe-recipe.html'),
	(2,'Cucumber Carrot Pickle','Cradle of Flavor p. 132',NULL),
	(3,'Beef Randang','Cradle of Flavor p. 304',NULL),
	(4,'Singapore Noodles','Cooks illustrated JULY/AUGUST 2014','https://www.cooksillustrated.com/recipes/7976-singapore-noodles'),
	(5,'Rice Pilaf','Cooks Illustrated MARCH/APRIL 2000','https://www.cooksillustrated.com/recipes/516-basic-rice-pilaf'),
	(6,'Pork Stir Fry','Serious Eats','https://www.seriouseats.com/recipes/2011/04/sichuan-chicken-with-peppercorns-and-chile-recipe.html'),
	(7,'Jerk Chicken','Slowcooker revolution p. 152',NULL),
	(8,'Spaghetti and Meatballs','Cooks Illustrated','https://www.cooksillustrated.com/recipes/762-classic-spaghetti-and-meatballs'),
	(9,'Panna Cotta','Cooks Illustrated MAY/JUNE 2020','https://www.cooksillustrated.com/articles/2184-buttermilk-panna-cotta');

/*!40000 ALTER TABLE `sources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staples
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staples`;

CREATE TABLE `staples` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ingredient` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `staples` WRITE;
/*!40000 ALTER TABLE `staples` DISABLE KEYS */;

INSERT INTO `staples` (`id`, `ingredient`, `amount`)
VALUES
	(1,'onions','6'),
	(2,'cheddar cheese','2'),
	(3,'bananas','15'),
	(4,'grapefruit Juice','2'),
	(5,'oranges','7'),
	(6,'apples','15'),
	(7,'flour','2'),
	(8,'greek yogurt','1'),
	(9,'flavoured yogurt','12'),
	(10,'garlic','4'),
	(11,'ginger','10'),
	(12,'milk','2'),
	(13,'sugar','1'),
	(14,'coconut milk','2'),
	(15,'coconut water','1'),
	(19,'fusilli','1'),
	(20,'eggs','12'),
	(22,'limes','6'),
	(23,'butter','2'),
	(24,'haddock','1'),
	(25,'lemons','2'),
	(27,'coffee','1'),
	(30,'bread','1'),
	(32,'kefir','2'),
	(33,'soup noodles','1'),
	(34,'tangarines','7');

/*!40000 ALTER TABLE `staples` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table units
# ------------------------------------------------------------

DROP TABLE IF EXISTS `units`;

CREATE TABLE `units` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ingredient` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT '',
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;

INSERT INTO `units` (`id`, `ingredient`, `unit`, `category`)
VALUES
	(1,'skirt steak','kg','meat'),
	(2,'anchovies','50g tin','canned goods'),
	(3,'apple','','produce'),
	(4,'bacon','300g pack','meat'),
	(5,'basil','bunch','produce'),
	(6,'basmati rice','cup','dried goods'),
	(7,'beef brisket','kg','meat'),
	(8,'beef chuck','kg','meat'),
	(9,'beef mince','kg','meat'),
	(10,'black eyed peas','14oz tin','canned goods'),
	(11,'broccoli','','produce'),
	(12,'buttermilk','300ml tub','dairy'),
	(13,'cabbage','','produce'),
	(14,'canned tomatoes','14oz tin','canned goods'),
	(15,'capers','200g jar','canned goods'),
	(17,'chicken','','meat'),
	(18,'canned coconut milk','14oz tin','canned goods'),
	(19,'chillies','','produce'),
	(20,'chicken stock','500ml pack','canned goods'),
	(21,'cinnamon stick','','spices'),
	(22,'cornichon','350g jar','canned goods'),
	(23,'cream','300ml tub','produce'),
	(24,'cucumber','','produce'),
	(25,'curry powder','tbsp','spices'),
	(26,'dried black beans','500g pack','dried goods'),
	(27,'eggs','','dried goods'),
	(28,'fusilli','500g pack','dried goods'),
	(29,'galangal','inch','asian market'),
	(30,'ginger','inch','produce'),
	(31,'garlic','head','produce'),
	(32,'gorgonzola cheese','200g wedge','dairy'),
	(33,'green thai chilies','','produce'),
	(34,'habanero chilies','','produce'),
	(35,'lemongrass','stalk','produce'),
	(36,'lettuce','head','produce'),
	(37,'limes','','produce'),
	(38,'mangos','','produce'),
	(39,'milk','4pint carton','dairy'),
	(40,'coconut milk','1L carton','dairy'),
	(41,'grapefruit juice','1L carton','dairy'),
	(42,'coconut water','1L carton','dairy'),
	(43,'nutmeg','','spices'),
	(44,'olives','70g pack','canned goods'),
	(45,'parmesan cheese','200g wedge','dairy'),
	(46,'parsley','bunch','produce'),
	(47,'peppers','','produce'),
	(48,'cilantro','bunch','produce'),
	(49,'pork fillet','','meat'),
	(50,'carrots','','produce'),
	(51,'pork mince','kg','meat'),
	(52,'red thai chilies','','produce'),
	(53,'red onions','','produce'),
	(54,'rice vermicelli','oz','asian market'),
	(55,'romano cheese','200g wedge','dairy'),
	(56,'scallions','bunch','produce'),
	(57,'shallots','','produce'),
	(58,'shrimp','225g pack','frozen food'),
	(59,'snow peas','200g pack','produce'),
	(60,'bread','','bakery'),
	(61,'flour','kg','dried goods'),
	(62,'sour cream','300ml tub','produce'),
	(63,'spaghetti','500g pack','dried goods'),
	(64,'spare ribs','rack','meat'),
	(65,'tofu','350g pack','asian market'),
	(66,'tortillas','6-pack','bakery'),
	(67,'vivaldi potatoes','kg','produce'),
	(68,'cheddar cheese','400g pack','dairy'),
	(69,'bananas','','produce'),
	(70,'oranges','','produce'),
	(71,'tangarines','','produce'),
	(72,'greek yogurt','1kg tub','dairy'),
	(73,'flavoured yogurt','100g tub','dairy'),
	(74,'sugar','kg','dried goods'),
	(75,'limes','','produce'),
	(76,'butter','250g pack','dairy'),
	(77,'haddock','500g pack','frozen food'),
	(78,'lemons','','produce'),
	(79,'coffee','250g pack','dried goods'),
	(80,'kefir','500ml carton','dairy'),
	(81,'soup noodles','500g pack','dried goods');

/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
