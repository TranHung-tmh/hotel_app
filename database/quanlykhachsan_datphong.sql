-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quanlykhachsan
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `datphong`
--

DROP TABLE IF EXISTS `datphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datphong` (
  `MaDatPhong` int NOT NULL AUTO_INCREMENT,
  `NgayDat` date DEFAULT NULL,
  `NgayNhan` date DEFAULT NULL,
  `NgayTra` date DEFAULT NULL,
  `maphong` int DEFAULT NULL,
  `makhachhang` int DEFAULT NULL,
  PRIMARY KEY (`MaDatPhong`),
  KEY `fk_maphong` (`maphong`),
  KEY `fk_makhachhang` (`makhachhang`),
  CONSTRAINT `fk_makhachhang` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`MaKhachHang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_maphong` FOREIGN KEY (`maphong`) REFERENCES `phong` (`MaPhong`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datphong`
--

LOCK TABLES `datphong` WRITE;
/*!40000 ALTER TABLE `datphong` DISABLE KEYS */;
INSERT INTO `datphong` VALUES (1,'2024-12-15','2024-12-20','2024-12-25',1,2),(2,'2024-12-16','2024-12-21','2024-12-26',3,4),(3,'2024-12-17','2024-12-22','2024-12-27',2,5),(4,'2024-05-12','2024-08-12','2024-12-20',2,1),(5,'2024-05-12','2024-08-12','2024-12-20',6,3),(6,'2025-01-17','2025-01-18','2025-01-20',6,5),(10,'2025-01-17','2025-01-18','2025-01-19',4,5),(11,'2025-01-17','2025-01-20','2025-01-22',6,3),(12,'2025-01-17','2025-01-18','2025-01-19',6,3),(13,'2025-01-20','2025-01-23','2025-01-24',3,3),(14,'2025-01-10','2025-01-21','2025-01-24',18,16);
/*!40000 ALTER TABLE `datphong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10 19:56:06
