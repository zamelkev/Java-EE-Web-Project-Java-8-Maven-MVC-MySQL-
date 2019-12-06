CREATE DATABASE  IF NOT EXISTS `gestiondeadoptar` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestiondeadoptar`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestiondeadoptar
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adopcion`
--

DROP TABLE IF EXISTS `adopcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adopcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` int(11) NOT NULL,
  `idMascota` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_adopcion_mascota1_idx` (`idMascota`),
  KEY `fk_adopcion_persona1_idx` (`idPersona`),
  CONSTRAINT `fk_adopcion_mascota1` FOREIGN KEY (`idMascota`) REFERENCES `mascota` (`id`),
  CONSTRAINT `fk_adopcion_persona1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adopcion`
--

LOCK TABLES `adopcion` WRITE;
/*!40000 ALTER TABLE `adopcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `adopcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascota`
--

DROP TABLE IF EXISTS `mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fechaNacimento` date DEFAULT NULL,
  `idTipoMascota` int(11) NOT NULL,
  `images` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mascota_tipoMascota1_idx` (`idTipoMascota`),
  CONSTRAINT `fk_mascota_tipoMascota1` FOREIGN KEY (`idTipoMascota`) REFERENCES `tipomascota` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
INSERT INTO `mascota` VALUES (1,'Spike','2017-06-14',1,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Ryan%20Profile_0.jpg?itok=krntw5wg'),(2,'Lluvia','2018-12-06',2,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Felix%20Thumbnail.jpg?itok=E60YPQDJ'),(3,'Jack','2017-05-15',1,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Rosie%20Profile.jpg?itok=KNdHsnnW'),(4,'Sally','2016-06-04',2,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Chonly%20Thumbnail.jpg?itok=OBBqhJey'),(5,'Lucky','2016-10-17',1,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Zakai_600x600.jpg?itok=IBkm8vZ-'),(6,'Gus','2018-11-12',2,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Lamiya%20Thumbnail.jpg?itok=kFJqAxSP'),(7,'Charlie','2017-10-15',2,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Tofland%20Thumbnail.jpg?itok=xrfkGxs2'),(8,'Legolas','2016-11-21',1,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Fon%20Pram%20Thumb.jpg?itok=rhZh6EgB'),(9,'Ares','2017-12-24',1,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Brownie_600x600.jpg?itok=3nxT4JO4'),(10,'Misifu','2018-04-29',2,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Vikram%20thumbnail.jpg?itok=5jvcRskb'),(11,'Baxter','2019-01-24',1,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/alsostar.jpg?itok=jBSVfhu9'),(12,'Max','2018-02-20',2,'https://www.soidog.org/sites/default/files/styles/medium/public/soidog-adopt-image/Sugarmelon%20Thumbnail.jpg?itok=YdeIhItg');
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `primerApellido` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `segundoApellido` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_UNIQUE` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Christian','Omerenna','Omerenna','Calle Alcalde DÃ­az Zafra,10A MÃ¡laga','ekdrama12@gmail.com','chris1','boy'),(2,'Christian','Ekene','Omerenna','Calle Alcalde DÃ­az Zafra,10A MÃ¡laga','ekdr@gmail.com','calle','admin'),(11,'Christian','Ekene','Omerenna','Calle Alcalde DÃ­az Zafra,10A castellon','ekdram2@gmail.com','kev','kev'),(12,'Christian','Pablo','Omerenna','Calle del Romani 8 , 7G','christiansand@outllok.com','kev','ball'),(13,'Pablo','Omerenna','Omerenna','Calle del Romani 8 , 7G','christiansand91@outllok.com','chri','kev');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono`
--

DROP TABLE IF EXISTS `telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `idTipoTelefono` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_telefono_tipoTelefono_idx` (`idTipoTelefono`),
  KEY `fk_telefono_persona1_idx` (`idPersona`),
  CONSTRAINT `fk_telefono_persona1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`),
  CONSTRAINT `fk_telefono_tipoTelefono` FOREIGN KEY (`idTipoTelefono`) REFERENCES `tipotelefono` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
INSERT INTO `telefono` VALUES (1,'643862874',2,13);
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomascota`
--

DROP TABLE IF EXISTS `tipomascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipomascota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descMascota` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomascota`
--

LOCK TABLES `tipomascota` WRITE;
/*!40000 ALTER TABLE `tipomascota` DISABLE KEYS */;
INSERT INTO `tipomascota` VALUES (1,'Perro'),(2,'Gato');
/*!40000 ALTER TABLE `tipomascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipotelefono`
--

DROP TABLE IF EXISTS `tipotelefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipotelefono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descTipotel` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipotelefono`
--

LOCK TABLES `tipotelefono` WRITE;
/*!40000 ALTER TABLE `tipotelefono` DISABLE KEYS */;
INSERT INTO `tipotelefono` VALUES (1,'Movil'),(2,'Fijo');
/*!40000 ALTER TABLE `tipotelefono` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06 20:08:55
