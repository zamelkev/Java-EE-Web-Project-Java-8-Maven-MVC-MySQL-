CREATE DATABASE  IF NOT EXISTS `gestionDeAdoptar` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestionDeAdoptar`;
-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: gestionDeAdoptar
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
  `nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaNacimento` date DEFAULT NULL,
  `idTipoMascota` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mascota_tipoMascota1_idx` (`idTipoMascota`),
  CONSTRAINT `fk_mascota_tipoMascota1` FOREIGN KEY (`idTipoMascota`) REFERENCES `tipoMascota` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
INSERT INTO `mascota` VALUES (1,'Spike','2017-06-14',1),(2,'Lluvia','2018-12-06',2),(3,'Jack','2017-05-15',1),(4,'Sally','2016-06-04',2),(5,'Lucky','2016-10-17',1),(6,'Gus','2018-11-12',2),(7,'Charlie','2017-10-15',2),(8,'Legolas','2016-11-21',1),(9,'Ares','2017-12-24',1),(10,'Misifu','2018-04-29',2),(11,'Baxter','2019-01-24',1),(12,'Max','2018-02-20',2);
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
  `nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `primerApellido` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `segundoApellido` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
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
  `numero` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoTelefono` int(11) NOT NULL,
  `idPersona` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_telefono_tipoTelefono_idx` (`tipoTelefono`),
  KEY `fk_telefono_persona1_idx` (`idPersona`),
  CONSTRAINT `fk_telefono_persona1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`),
  CONSTRAINT `fk_telefono_tipoTelefono` FOREIGN KEY (`tipoTelefono`) REFERENCES `tipoTelefono` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono`
--

LOCK TABLES `telefono` WRITE;
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoMascota`
--

DROP TABLE IF EXISTS `tipoMascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoMascota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descMascota` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoMascota`
--

LOCK TABLES `tipoMascota` WRITE;
/*!40000 ALTER TABLE `tipoMascota` DISABLE KEYS */;
INSERT INTO `tipoMascota` VALUES (1,'Perro'),(2,'Gato');
/*!40000 ALTER TABLE `tipoMascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoTelefono`
--

DROP TABLE IF EXISTS `tipoTelefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoTelefono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descTipotel` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoTelefono`
--

LOCK TABLES `tipoTelefono` WRITE;
/*!40000 ALTER TABLE `tipoTelefono` DISABLE KEYS */;
INSERT INTO `tipoTelefono` VALUES (1,'Movil'),(2,'Fijo');
/*!40000 ALTER TABLE `tipoTelefono` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 12:55:51
