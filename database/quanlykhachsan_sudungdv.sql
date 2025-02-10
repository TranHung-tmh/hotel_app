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
-- Table structure for table `sudungdv`
--

DROP TABLE IF EXISTS `sudungdv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sudungdv` (
  `MaSuDungDV` int NOT NULL AUTO_INCREMENT,
  `MaKhachHang` int DEFAULT NULL,
  `MaDichVu` int DEFAULT NULL,
  `NgaySuDung` date DEFAULT NULL,
  `soluong` int DEFAULT '1',
  `tongtien` decimal(10,2) DEFAULT NULL,
  `ghiChu` varchar(255) DEFAULT NULL,
  `TrangThai` varchar(255) DEFAULT 'Chua Duoc Duyet',
  PRIMARY KEY (`MaSuDungDV`),
  KEY `MaKhachHang` (`MaKhachHang`),
  KEY `MaDichVu` (`MaDichVu`),
  CONSTRAINT `sudungdv_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  CONSTRAINT `sudungdv_ibfk_2` FOREIGN KEY (`MaDichVu`) REFERENCES `dichvu` (`MaDichVu`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sudungdv`
--

LOCK TABLES `sudungdv` WRITE;
/*!40000 ALTER TABLE `sudungdv` DISABLE KEYS */;
INSERT INTO `sudungdv` VALUES (6,2,4,'2025-01-17',2,300000.00,NULL,'Duyet'),(10,13,4,'2024-12-19',1,300000.00,NULL,'Chua Duoc Duyet'),(11,3,2,'2025-01-17',1,100000.00,NULL,'Từ Chối'),(16,3,1,'2025-01-17',1,150000.00,'don sau 7h','Duyet'),(20,3,3,'2025-01-18',1,400000.00,'',NULL),(21,3,2,'2025-01-18',1,100000.00,'','Duyệt'),(22,3,5,'2025-01-18',1,200000.00,'di ung hai san','Từ Chối'),(23,3,1,'2025-01-20',1,150000.00,'don sau 8h ','Duyệt');
/*!40000 ALTER TABLE `sudungdv` ENABLE KEYS */;
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
