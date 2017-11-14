-- MySQL dump 10.13  Distrib 5.5.42, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `geo_objs`
--

DROP TABLE IF EXISTS `geo_objs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_objs` (
  `id` int(10) unsigned NOT NULL,
  `obj_name` text CHARACTER SET utf8 NOT NULL,
  `coord_left` point NOT NULL,
  `coord_right` point NOT NULL,
  `create_t` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_objs`
--

LOCK TABLES `geo_objs` WRITE;
/*!40000 ALTER TABLE `geo_objs` DISABLE KEYS */;
INSERT INTO `geo_objs` VALUES (53152804,'Россия, Санкт-Петербург','\0\0\0\0\0\0\0nk�K�M@((E+�\n>@','\0\0\0\0\0\0\0�£N@��}�>@','2017-11-13 08:10:37',3261824066),(53105313,'Россия, Ульяновск','\0\0\0\0\0\0\0�m�K@H¾�DH@','\0\0\0\0\0\0\0����5K@\"��u�\\H@','2017-11-13 07:49:39',3166608593),(53105316,'Россия, Самара','\0\0\0\0\0\0\0Y�8�ŋJ@Eׅ��H@','\0\0\0\0\0\0\0����J@\Z8�2I@','2017-11-13 07:47:52',3166608593),(53105262,'Россия, Самарская область, Тольятти','\0\0\0\0\0\0\0�h�\"�J@Su�l��H@','\0\0\0\0\0\0\0t��gy�J@�5���H@','2017-11-13 07:48:15',3166608593),(53000094,'Россия, Москва','\0\0\0\0\0\0\0gC��A�K@ܛ�0�fB@','\0\0\0\0\0\0\0Xc\'�L@�v�\0��B@','2017-11-13 07:46:58',3261824066),(53105269,'Россия, Самарская область, Жигулёвск','\0\0\0\0\0\0\0������J@�?Qٰ�H@','\0\0\0\0\0\0\0/m8,\r�J@Lm����H@','2017-11-13 07:48:27',3166608593),(53104416,'Россия, Ульяновская область, Димитровград','\0\0\0\0\0\0\0X�x�K@��1>��H@','\0\0\0\0\0\0\0>x�҆%K@��e�H@','2017-11-13 07:49:28',3166608593);
/*!40000 ALTER TABLE `geo_objs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-14  7:49:28
