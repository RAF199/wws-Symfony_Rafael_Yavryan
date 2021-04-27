-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: symfony1
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `avis_general`
--

DROP TABLE IF EXISTS `avis_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avis_general` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) DEFAULT NULL,
  `avis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avis_general`
--

LOCK TABLES `avis_general` WRITE;
/*!40000 ALTER TABLE `avis_general` DISABLE KEYS */;
INSERT INTO `avis_general` VALUES (1,'Yavryan','Rafael',21,'Je suis l\'administrateur du site et je trouve genial que je peux accèder à ma page admin et de gérer mes articles '),(2,'','Gregory',41,'J\'adore , très coloré '),(3,'Dubois','Valentin',NULL,'Très peu de fonctionalitées '),(4,'Hamon','Elise',NULL,'J\'aime la possiblité de choisir par couleur les pochettes '),(5,'','Melissa',15,'Ah Genial , On voit nos avis dans la partie les Avis'),(6,'','Damien',NULL,'Je suis un web designer , je peux vous donner quelques conseils ;)');
/*!40000 ALTER TABLE `avis_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracteristique`
--

DROP TABLE IF EXISTS `caracteristique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caracteristique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `couleur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristique`
--

LOCK TABLES `caracteristique` WRITE;
/*!40000 ALTER TABLE `caracteristique` DISABLE KEYS */;
INSERT INTO `caracteristique` VALUES (1,'rouge'),(2,'bleu'),(3,'gris'),(4,'marron'),(5,'orange'),(6,'violet'),(7,'blanc'),(8,'jaune'),(9,'noir'),(10,'rose'),(12,'vert');
/*!40000 ALTER TABLE `caracteristique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20200426141235','2020-04-26 14:12:44'),('20200428154421','2020-04-28 15:44:28'),('20200428165116','2020-04-28 16:51:28');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pochette`
--

DROP TABLE IF EXISTS `pochette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pochette` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pochette`
--

LOCK TABLES `pochette` WRITE;
/*!40000 ALTER TABLE `pochette` DISABLE KEYS */;
INSERT INTO `pochette` VALUES (1,'Motif arménien','1.jpg','La grenade symbole de l\'Arménie avec les motifs traditionnels',25),(2,'L\'éclat d\'un sciècle','2.jpg','Inspiré par le roman de Victor Hugo cette pochette nous transmet l\'état d\'esprit des personnages',15),(3,'Cubisme de Picasso','3.jpg','A-t-on droit d\'imaginer. Cette pochette nous transmet dans l\'état d\'esprit de Picasso.',25),(4,'La fleur du mal','4.jpg','Le poète Charles Baudelaire nous transmet ces émotions par les poèmes, nous vous transmettons chaque jour ces émotions si vous prenez cette pochette',23),(5,'Pierre à croix','5.jpg','Pierre à croix en arménien Khatchkar est le symbole religieux de l\'Arménie. Le tissu vient de ce pays.',30),(6,'You are a girly','6.jpg','Souhaitez-vous briller pendant vos sorties, alors cette pochette est faite pour vous',15),(8,'Sky blue','7.jpg','Vous le souhaitez le marier cette pochette avec vos robes de soirée, alors vous pouvez le faire',15),(9,'Marron glacé','8.jpg','Je vous laisse admirer ces couleurs brillantes et épater chaque personne qui passera à côté de vous',20),(10,'Black & Whrite','9.jpg','Cette pochette classique, mais aussi élégant cera votre coup de coeur d\'aujourd\'hui',23);
/*!40000 ALTER TABLE `pochette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pochette_caracteristique`
--

DROP TABLE IF EXISTS `pochette_caracteristique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pochette_caracteristique` (
  `pochette_id` int(11) NOT NULL,
  `caracteristique_id` int(11) NOT NULL,
  PRIMARY KEY (`pochette_id`,`caracteristique_id`),
  KEY `IDX_D87164C133ECB04` (`pochette_id`),
  KEY `IDX_D87164C11704EEB7` (`caracteristique_id`),
  CONSTRAINT `FK_D87164C11704EEB7` FOREIGN KEY (`caracteristique_id`) REFERENCES `caracteristique` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D87164C133ECB04` FOREIGN KEY (`pochette_id`) REFERENCES `pochette` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pochette_caracteristique`
--

LOCK TABLES `pochette_caracteristique` WRITE;
/*!40000 ALTER TABLE `pochette_caracteristique` DISABLE KEYS */;
INSERT INTO `pochette_caracteristique` VALUES (1,1),(1,3),(1,7),(1,12),(2,5),(2,8),(2,9),(2,10),(2,12),(3,1),(3,7),(3,8),(3,12),(4,1),(4,8),(4,9),(4,12),(5,1),(5,8),(5,9),(5,12),(6,1),(6,10),(8,2),(8,7),(9,4),(9,7),(9,8),(9,9),(10,3),(10,7),(10,9);
/*!40000 ALTER TABLE `pochette_caracteristique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'admin','$2y$12$3..xNJYut7BU1gHAdC2JJu.RDYi5P0rJxVVaenhZPMO35p9O00i0G');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29 17:43:29
