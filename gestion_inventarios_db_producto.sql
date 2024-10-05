-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_inventarios_db
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `nombreProducto` varchar(100) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `cantidad` int DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `idProveedor` int DEFAULT NULL,
  `fechaCaducidad` date DEFAULT NULL,
  `fechaCreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaActualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Leche Entera 1L','Lácteos','Leche entera en envase de 1 litro',150,1.50,1,'2024-12-01','2024-10-04 17:25:56','2024-10-04 17:25:56'),(2,'Huevos (docena)','Huevos','Docena de huevos frescos',120,2.50,2,'2024-06-15','2024-10-04 17:25:56','2024-10-04 17:25:56'),(3,'Pan de Molde','Panadería','Pan de molde integral',200,1.20,3,'2024-10-05','2024-10-04 17:25:56','2024-10-04 17:25:56'),(4,'Queso Cheddar 500g','Lácteos','Queso cheddar en bloque',80,4.00,1,'2024-09-10','2024-10-04 17:25:56','2024-10-04 17:25:56'),(5,'Yogur Natural 1L','Lácteos','Yogur natural sin azúcar',100,1.80,1,'2024-11-20','2024-10-04 17:25:56','2024-10-04 17:25:56'),(6,'Aceite de Girasol 1L','Aceites','Aceite de girasol en botella de 1L',90,2.10,4,NULL,'2024-10-04 17:25:56','2024-10-04 17:25:56'),(7,'Arroz Integral 1kg','Granos','Arroz integral en paquete de 1kg',180,1.10,5,'2025-01-15','2024-10-04 17:25:56','2024-10-04 17:25:56'),(8,'Fideos Espaguetis 500g','Pasta','Fideos tipo espagueti 500g',160,0.90,6,'2024-07-30','2024-10-04 17:25:56','2024-10-04 17:25:56'),(9,'Jugo de Naranja 1L','Bebidas','Jugo de naranja sin azúcar añadido',70,2.00,4,'2024-05-25','2024-10-04 17:25:56','2024-10-04 17:25:56'),(10,'Harina de Trigo 1kg','Panadería','Harina de trigo tipo 000',250,1.00,3,'2024-08-15','2024-10-04 17:25:56','2024-10-04 17:25:56');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-04 22:12:53
