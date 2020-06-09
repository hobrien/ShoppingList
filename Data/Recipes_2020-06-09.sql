# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.11)
# Database: Recipes
# Generation Time: 2020-06-09 21:13:14 +0000
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
	(16,'BBQ Ribs',1),
	(17,'Grain Salad',1),
	(18,'Cubano',1),
	(19,'White Bean and Mushroom Gratin',1),
	(20,'Chicken Enchiladas',1),
	(21,'Bouletten',1),
	(22,'Sichuan Green Beans',3),
	(23,'Red Beans and Rice',2),
	(24,'Pad Thai',2),
	(25,'Pan Bagnat',2),
	(26,'Cucumber Carrot Pickle',1),
	(27,'Mango Hot Sauce',2),
	(28,'Panna Cotta',3),
	(29,'Slaw',2),
	(30,'Pizza',3),
	(31,'Cabbage Salad',2),
	(32,'French Potato Salad',2),
	(33,'Ramen',2),
	(34,'Peanut Noodle',3),
	(35,'Sweet Sour Eggs',1),
	(36,'Cucumber Salad',2),
	(37,'Vignole',1),
	(38,'Brown Rice Bowl with Carrots, Kale and Eggs',3),
	(39,'Fideos',2),
	(40,'Fish Tagine',1),
	(41,'Salade Lyonnaise',1),
	(42,'Brown Rice and Salmon Bowl',2);

/*!40000 ALTER TABLE `frequency` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Ingredients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Ingredients`;

CREATE TABLE `Ingredients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `recipe` varchar(255) DEFAULT NULL,
  `ingredient` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Ingredients` WRITE;
/*!40000 ALTER TABLE `Ingredients` DISABLE KEYS */;

INSERT INTO `Ingredients` (`id`, `recipe`, `ingredient`, `amount`)
VALUES
	(1,'Fajitas','skirt steak',0.5),
	(2,'Fajitas','peppers',3),
	(3,'Fajitas','limes',1),
	(4,'Fajitas','red onions',2),
	(5,'Fajitas','tortillas',2),
	(6,'Fajitas','sour cream',0.25),
	(7,'Spaghetti and Meatballs','canned tomatoes',4),
	(8,'Spaghetti and Meatballs','buttermilk',1),
	(9,'Korean Beef Soup','beef brisket',0.5),
	(10,'Korean Beef Soup','scallions',3),
	(11,'Jerk Chicken','chicken',1),
	(12,'Hoppin John','black eyed peas',3),
	(13,'Hoppin John','parsley',0.25),
	(14,'Hoppin John','bacon',0.5),
	(15,'Singapore Noodles','rice vermicelli',6),
	(16,'Singapore Noodles','shrimp',1),
	(17,'Tofu Curry','tofu',1),
	(18,'Tofu Curry','snow peas',1),
	(19,'Tofu Curry','red onions',1),
	(20,'Tofu Curry','peppers',2),
	(21,'Fajitas','chillies',4),
	(22,'Pork Stir Fry','pork fillet',1),
	(23,'Cacio e Pepe','romano cheese',0.5),
	(24,'Cacio e Pepe','spaghetti',1),
	(25,'Korean Beef Soup','garlic',1),
	(26,'Broccoli and Gorgonzola Pasta','broccoli',1),
	(27,'Broccoli and Gorgonzola Pasta','gorgonzola cheese',1),
	(28,'Broccoli and Gorgonzola Pasta','cream',1),
	(29,'BBQ Ribs','spare ribs',1),
	(30,'Slaw','cabbage',1),
	(31,'German Potato Salad','vivaldi potatoes',2),
	(32,'German Potato Salad','bacon',0.5),
	(33,'German Potato Salad','apples',2),
	(34,'German Potato Salad','eggs',4),
	(35,'Broccoli and Gorgonzola Pasta','fusilli',1),
	(36,'Pasta Putenesca','spaghetti',1),
	(37,'Pasta Putenesca','olives',2),
	(38,'Pasta Putenesca','capers',0.5),
	(39,'Pasta Putenesca','anchovies',0.5),
	(40,'Pasta Putenesca','canned tomatoes',2),
	(41,'Pasta Putenesca','parmesan cheese',0.5),
	(42,'Beef Randang','beef chuck',1),
	(43,'Cucumber Carrot Pickle','cucumbers',1),
	(44,'Cucumber Carrot Pickle','carrots',2),
	(45,'Cucumber Carrot Pickle','green thai chilies',2),
	(46,'Beef Randang','nutmeg',1),
	(47,'Beef Randang','shallots',6),
	(48,'Cucumber Carrot Pickle','shallots',3),
	(49,'Beef Randang','red thai chilies',10),
	(50,'Beef Randang','canned coconut milk',2),
	(51,'Beef Randang','lemongrass',3),
	(52,'Beef Randang','cinnamon stick',1),
	(53,'Beef Randang','galangal',2),
	(54,'Singapore Noodles','curry powder',2),
	(55,'Singapore Noodles','eggs',4),
	(56,'Singapore Noodles','scallions',0.5),
	(57,'Singapore Noodles','peppers',1),
	(58,'Singapore Noodles','chicken stock',0.5),
	(59,'Singapore Noodles','limes',1),
	(60,'Singapore Noodles','shallots',2),
	(61,'Rice Pilaf','basmati rice',1.5),
	(62,'Burritos','dried black beans',1),
	(63,'Burritos','tortillas',2),
	(64,'Burritos','sour cream',0.5),
	(65,'Burritos','scallions',1),
	(66,'Burritos','chillies',2),
	(67,'Burritos','peppers',2),
	(68,'Burritos','lettuce',0.5),
	(69,'Pork Stir Fry','peppers',2),
	(70,'Pork Stir Fry','ginger',1),
	(71,'Jerk Chicken','scallions',1),
	(72,'Jerk Chicken','habanero chilies',2),
	(73,'Mango Hot Sauce','habanero chilies',3),
	(74,'Mango Hot Sauce','mangos',1),
	(75,'German Potato Salad','cornichons',2),
	(76,'Panna Cotta','cream',1),
	(77,'Panna Cotta','buttermilk',1),
	(78,'Spaghetti and Meatballs','pork mince',250),
	(79,'Spaghetti and Meatballs','beef mince',0.75),
	(80,'Spaghetti and Meatballs','parsley',0.25),
	(81,'Spaghetti and Meatballs','parmesan cheese',0.25),
	(82,'Spaghetti and Meatballs','eggs',1),
	(83,'Spaghetti and Meatballs','basil',1),
	(84,'Spaghetti and Meatballs','spaghetti',1),
	(85,'Korean Beef Soup','eggs',2),
	(86,'Grain Salad','farrow',1),
	(87,'Grain Salad','lentils',1),
	(88,'Grain Salad','cucumbers',1),
	(89,'Grain Salad','capers',0.5),
	(90,'Grain Salad','pomegranate',1),
	(91,'Grain Salad','carrots',3),
	(92,'Grain Salad','olives',2),
	(93,'Grain Salad','parsley',0.5),
	(94,'Grain Salad','raisins',1),
	(95,'Grain Salad','shallots',1),
	(96,'Grain Salad','lemons',0.5),
	(97,'Cubano','pork loin',1),
	(98,'Cubano','gherkins',0.25),
	(99,'Cubano','emental cheese',0.25),
	(100,'Cubano','ciabatta rolls',4),
	(101,'White Bean and Mushroom Gratin','canned white beans',2),
	(102,'White Bean and Mushroom Gratin','mushrooms',0.5),
	(103,'White Bean and Mushroom Gratin','bread',0.25),
	(104,'White Bean and Mushroom Gratin','parsley',0.25),
	(105,'White Bean and Mushroom Gratin','onions',1),
	(106,'White Bean and Mushroom Gratin','carrots',3),
	(107,'White Bean and Mushroom Gratin','sherry',0.1),
	(108,'Chicken Enchiladas','onions',1),
	(109,'Chicken Enchiladas','tomato sauce',1),
	(110,'Chicken Enchiladas','cilantro',0.5),
	(111,'Chicken Enchiladas','cheddar cheese',1),
	(112,'Chicken Enchiladas','pickled peppers',1),
	(113,'Chicken Enchiladas','chicken thighs',4),
	(114,'Chicken Enchiladas','tortillas',2),
	(115,'Bouletten','pork mince',0.75),
	(116,'Bouletten','eggs',1),
	(117,'Bouletten','carrots',4),
	(118,'Bouletten','frozen peas',0.25),
	(119,'Bouletten','parsley',0.25),
	(120,'Bouletten','bread crumbs',0.25),
	(121,'Sichuan Green Beans','green beans',4),
	(122,'Sichuan Green Beans','pork mince',0.25),
	(123,'Sichuan Green Beans','scallions',0.5),
	(124,'Sichuan Green Beans','peppers',2),
	(125,'Pan Bagnat','tomatoes',1),
	(126,'Pan Bagnat','red onions',1),
	(127,'Pan Bagnat','baguette',1),
	(128,'Pan Bagnat','olives',3),
	(129,'Pan Bagnat','parsley',0.5),
	(130,'Pan Bagnat','capers',0.5),
	(131,'Pan Bagnat','anchovies',0.5),
	(132,'Pan Bagnat','ventresca tuna',2),
	(133,'Pan Bagnat','eggs',3),
	(134,'Pad Thai','eggs',4),
	(135,'Pad Thai','bean sprouts',1),
	(136,'Pad Thai','rice noddles',1),
	(137,'Pad Thai','chillies',2),
	(138,'Pad Thai','radishes',0.5),
	(139,'Pad Thai','peanuts',0.25),
	(140,'Pad Thai','shrimp',1),
	(141,'Pad Thai','limes',1),
	(142,'Red Beans and Rice','kidney beans',1),
	(143,'Red Beans and Rice','ham hock',1),
	(144,'Red Beans and Rice','peppers',2),
	(145,'Red Beans and Rice','celery',0.25),
	(146,'Red Beans and Rice','chillies',2),
	(147,'Red Beans and Rice','red onions',1),
	(148,'Pizza','red onions',1),
	(149,'Pizza','peppers',2),
	(150,'Pizza','mozarella',3),
	(151,'Pizza','canned tomatoes',1),
	(152,'Pizza','pepperoni',1),
	(153,'Pizza','chorizo',1),
	(154,'Pizza','chillies',2),
	(155,'Cabbage Salad','cabbage',1),
	(156,'Cabbage Salad','avocados',3),
	(157,'Cabbage Salad','feta cheese',1),
	(158,'Sweet Sour Eggs','vivaldi potatoes',1),
	(160,'Sweet Sour Eggs','eggs',4),
	(161,'Sweet Sour Eggs','bacon',0.5),
	(162,'Sweet Sour Eggs','cornichons',1),
	(163,'Cucumber Salad','vivaldi potatoes',2),
	(164,'Cucumber Salad','cucumbers',3),
	(165,'Cucumber Salad','dill',1),
	(166,'Cucumber Salad','sour cream',0.33),
	(167,'Cucumber Salad','onions',1),
	(168,'Sweet Sour Eggs','onions',1),
	(169,'French Potato Salad','cornichons',0.5),
	(170,'French Potato Salad','vivaldi potatoes',2),
	(171,'French Potato Salad','shallots',1),
	(172,'French Potato Salad','capers',0.5),
	(173,'French Potato Salad','radishes',1),
	(174,'Vignole','artichokes',8),
	(175,'Vignole','shelled peas',1),
	(176,'Vignole','broad beans',1),
	(177,'Vignole','red onions',1),
	(178,'Brown Rice Bowl with Carrots, Kale and Eggs','carrots',5),
	(179,'Brown Rice Bowl with Carrots, Kale and Eggs','kale',1),
	(180,'Brown Rice Bowl with Carrots, Kale and Eggs','shallots',1),
	(181,'Brown Rice Bowl with Carrots, Kale and Eggs','eggs',4),
	(182,'Brown Rice Bowl with Carrots, Kale and Eggs','brown rice',0.25),
	(183,'Fideos','onions',1),
	(184,'Fideos','vermicelli',0.5),
	(185,'Fideos','canned tomatoes',1),
	(186,'Fideos','chick peas',1),
	(187,'Fideos','eggs',2),
	(188,'Fideos','lemons',0.5),
	(189,'Fish Tagine','lemons',5),
	(190,'Fish Tagine','onions',1),
	(191,'Fish Tagine','canned tomatoes',1),
	(192,'Fish Tagine','carrots',1),
	(193,'Ramen','oyster mushrooms',0.33),
	(194,'White Bean and Mushroom Gratin','sherry',0.1),
	(195,'Ramen','chillies',2),
	(196,'Ramen','eggs',2),
	(197,'Ramen','scallions',0.5),
	(198,'Ramen','ginger',1),
	(199,'Vignole','prosciutto',1),
	(200,'Fish Tagine','haddock',1),
	(201,'Fish Tagine','cilantro',0.5),
	(202,'Fish Tagine','green peppers',1),
	(203,'Fish Tagine','green olives',1),
	(204,'Salade Lyonnaise','eggs',4),
	(205,'Salade Lyonnaise','pancetta',1),
	(206,'Brown Rice and Salmon Bowl','scallions',0.5),
	(207,'Brown Rice and Salmon Bowl','ginger',1),
	(208,'Brown Rice and Salmon Bowl','cucumbers',1),
	(209,'Brown Rice and Salmon Bowl','brown rice',0.25),
	(210,'Brown Rice and Salmon Bowl','shiitake mushrooms',0.5),
	(211,'Brown Rice and Salmon Bowl','salmon',0.5);

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
	(9,'Panna Cotta','Cooks Illustrated MAY/JUNE 2020','https://www.cooksillustrated.com/articles/2184-buttermilk-panna-cotta'),
	(10,'Grain Salad','Splendid Table','https://www.splendidtable.org/recipes/grain-salad-with-many-flavors'),
	(11,'Cubano','Cooks Illustrated','https://www.cooksillustrated.com/recipes/9079-cuban-style-sandwiches-cubano-with-smoked-pork-loin'),
	(12,'White Bean and Mushroom Gratin','Cooks Illustrated','https://www.cooksillustrated.com/recipes/11234-white-bean-and-mushroom-gratin'),
	(13,'Chicken Enchiladas','The Best Chicken Recipes, p.288',NULL),
	(14,'Sichuan Green Beans','Cooks Illustrated MAY/JUNE 2016','https://www.cooksillustrated.com/recipes/3330-stir-fried-sichuan-green-beans'),
	(15,'Pan Bagnat','Cooks Illustrated MAY/JUNE 2020','https://www.cooksillustrated.com/recipes/12580-pan-bagnat-provencal-tuna-sandwich'),
	(16,'Pad Thai','Cooks Illustrated NOVEMBER/DECEMBER 2016','https://www.cooksillustrated.com/recipes/9251-everyday-pad-thai'),
	(17,'Hoppin John','American Classics p. 99',NULL),
	(18,'Red Beans and Rice','American Classics p. 97',NULL),
	(19,'Pizza','Cooks Illustrated JANUARY/FEBRUARY 2011','https://www.cooksillustrated.com/recipes/6316-thin-crust-pizza'),
	(20,'French Potato Salad','Complete Vegetarian Cookbook p. 271',NULL),
	(21,'Vignole','The Guardian','https://www.theguardian.com/lifeandstyle/allotment/2010/apr/06/gardens'),
	(22,'Brown Rice Bowl with Carrots, Kale and Eggs','Complete Vegetarian Cookbook p. 166',''),
	(23,'Fideos','Complete Vegetarian Cookbook p. 133',''),
	(24,'Fish Tagine','Cooks Illustrated JULY/AUGUST 2020','https://www.cooksillustrated.com/recipes/12828-moroccan-fish-tagine'),
	(25,'Salade Lyonnaise','Cooks Illustrated MAY/JUNE 2020','https://www.cooksillustrated.com/recipes/12594-salade-lyonnaise'),
	(26,'Brown Rice and Salmon Bowl','Cooks Illustrated JANUARY/FEBRUARY 2019','https://www.cooksillustrated.com/recipes/11312-brown-rice-bowl-with-vegetables-and-salmon');

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
	(4,'grapefruit juice','2'),
	(5,'oranges','7'),
	(6,'apples','15'),
	(7,'flour','2'),
	(8,'greek yogurt','1'),
	(9,'flavoured yogurt','8'),
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
	(34,'tangarines','7'),
	(35,'mozarella','1');

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
	(3,'apples','','produce'),
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
	(22,'cornichons','350g jar','canned goods'),
	(23,'cream','300ml tub','dairy'),
	(24,'cucumbers','','produce'),
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
	(76,'butter','250g pack','dairy'),
	(77,'haddock','500g pack','frozen food'),
	(78,'lemons','','produce'),
	(79,'coffee','250g pack','dried goods'),
	(80,'kefir','500ml carton','dairy'),
	(81,'soup noodles','500g pack','dried goods'),
	(82,'onions','','produce'),
	(83,'farrow','cup','dried goods'),
	(84,'lentils','cup','dried goods'),
	(85,'pomegranate','','produce'),
	(86,'raisins','cup','dried goods'),
	(87,'ciabatta rolls','','bakery'),
	(88,'emental cheese','250g wedge','dairy'),
	(89,'gherkins','350g jar','canned goods'),
	(90,'canned white beans','14oz tin','canned goods'),
	(91,'mushrooms','kg','produce'),
	(92,'sherry','1L bottle','alcohol'),
	(93,'tomato sauce','500g jar','canned goods'),
	(94,'pickled peppers','200g jar','canned goods'),
	(95,'chicken thighs','','meat'),
	(96,'frozen peas','900g pack','frozen food'),
	(97,'bread crumbs','300g pack','dried goods'),
	(98,'green beans','200g pack','produce'),
	(99,'tomatoes','','produce'),
	(100,'baguette','','bakery'),
	(101,'ventresca tuna','115g can','canned goods'),
	(102,'bean sprouts','400g pack','produce'),
	(103,'rice noddles','200g pack','dried goods'),
	(104,'radishes','200g pack','produce'),
	(105,'peanuts','250g pack','dried goods'),
	(106,'ham hock','','meat'),
	(107,'kidney beans','500g pack','dried goods'),
	(108,'celery','bunch','produce'),
	(109,'pork loin','kg','meat'),
	(110,'mozarella','125g pack','dairy'),
	(111,'pepperoni','100g pack','meat'),
	(112,'chorizo','225g pack','meat'),
	(113,'avocados','','produce'),
	(114,'feta cheese','200g pack','dairy'),
	(115,'dill','bunch','produce'),
	(116,'artichokes','','produce'),
	(117,'shelled peas','160g pack','produce'),
	(118,'broad beans','750g pack','frozen food'),
	(119,'kale','200g pack','produce'),
	(120,'brown rice','kg','dried goods'),
	(121,'vermicelli','500g pack','dried goods'),
	(122,'chick peas','14oz tin','canned goods'),
	(123,'prosciutto','80g pack','meat'),
	(124,'green peppers','','produce'),
	(125,'green olives','70g pack','canned goods'),
	(126,'oyster mushrooms','kg','produce'),
	(127,'pancetta','200g pack','meat'),
	(128,'shiitake mushrooms','kg','produce'),
	(129,'salmon','kg','meat');

/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
