-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: pkkp
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrasi`
--

DROP TABLE IF EXISTS `administrasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrasi` (
  `id_seleksi` int(11) NOT NULL AUTO_INCREMENT,
  `no_pkkp` varchar(13) NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`id_seleksi`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrasi`
--

LOCK TABLES `administrasi` WRITE;
/*!40000 ALTER TABLE `administrasi` DISABLE KEYS */;
INSERT INTO `administrasi` VALUES (65,'pkkp001','Lolos'),(66,'pkkp002','Lolos'),(67,'pkkp003','Lolos'),(68,'pkkp007','Lolos'),(69,'pkkp008','Lolos'),(70,'pkkp009','Lolos'),(71,'pkkp011','Lolos'),(72,'pkkp012','Lolos');
/*!40000 ALTER TABLE `administrasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_kec`
--

DROP TABLE IF EXISTS `data_kec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_kec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kota` int(11) NOT NULL,
  `nama_kec` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_kec`
--

LOCK TABLES `data_kec` WRITE;
/*!40000 ALTER TABLE `data_kec` DISABLE KEYS */;
INSERT INTO `data_kec` VALUES (1,1,'Bawen'),(2,1,'Bergas'),(3,1,'Ambarawa'),(4,2,'Gunung Pati'),(5,2,'Tembalang'),(6,2,'Banyumanik'),(7,3,'Guntur'),(8,4,'Tingkir'),(9,5,'Grobogan'),(10,2,'Semarang Barat');
/*!40000 ALTER TABLE `data_kec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_kel`
--

DROP TABLE IF EXISTS `data_kel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_kel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kec` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `nama_kel` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_kel`
--

LOCK TABLES `data_kel` WRITE;
/*!40000 ALTER TABLE `data_kel` DISABLE KEYS */;
INSERT INTO `data_kel` VALUES (1,3,1,'Kupang'),(2,2,1,'Randugunting'),(3,2,1,'Jati Jajar'),(4,1,1,'Doplang'),(5,1,1,'Harjosari'),(6,4,2,'Sukorejo'),(7,5,2,'Tembalang'),(8,5,2,'Kedungmundu'),(9,6,2,'Pundak Payung'),(10,7,3,'Bakalrejo'),(11,8,4,'Tingkir Tengah'),(12,9,5,'Rejosari'),(13,10,2,'Kembang Arum');
/*!40000 ALTER TABLE `data_kel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_kota`
--

DROP TABLE IF EXISTS `data_kota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_kota`
--

LOCK TABLES `data_kota` WRITE;
/*!40000 ALTER TABLE `data_kota` DISABLE KEYS */;
INSERT INTO `data_kota` VALUES (1,'Kab Semarang'),(2,'Semarang'),(3,'Kab Demak'),(4,'Salatiga'),(5,'kab Grobogan');
/*!40000 ALTER TABLE `data_kota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_peserta`
--

DROP TABLE IF EXISTS `data_peserta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_peserta` (
  `no_pkkp` varchar(13) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_kec` int(11) NOT NULL,
  `id_kel` int(11) NOT NULL,
  `usia` int(3) DEFAULT NULL,
  `ipk` double DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `skk` varchar(10) DEFAULT NULL,
  `skck` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`no_pkkp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_peserta`
--

LOCK TABLES `data_peserta` WRITE;
/*!40000 ALTER TABLE `data_peserta` DISABLE KEYS */;
INSERT INTO `data_peserta` VALUES ('pkkp001','johan',1,2,2,23,3.9,'08950','johan@mail.com','Ada','Ada'),('pkkp002','jono',1,1,4,24,3.5,'08998','joni@mail.com','Ada','Ada'),('pkkp003','joni',2,6,9,26,3.6,'08885','joni@mail.co','Ada','Ada'),('pkkp004','adi',1,3,1,23,3.2,'08774','aditok@mail.co','Ada','Ada'),('pkkp005','anis',2,5,8,22,2.8,'08753','anisno1@mail.co','Tidak Ada','Ada'),('pkkp006','yanto',1,2,2,25,3,'08887','yanto@mail.com','Ada','Ada'),('pkkp007','reja',5,9,12,26,3.8,'08977','reja@mail.com','Ada','Ada'),('pkkp008','aufa',4,8,11,23,3.7,'08757','auf@mail.co','Ada','Ada'),('pkkp009','nabil',3,7,10,23,3.8,'08879','nabil@mail.co','Ada','Ada'),('pkkp010','denis',5,9,12,28,2.5,'08976','denis@mail.co','Ada','Tidak Ada'),('pkkp011','ardian',2,5,8,24,3.9,'08978','arcu@mail.co','Ada','Ada'),('pkkp012','reifal',4,8,11,23,3.6,'08456','reirei@mail.co','Ada','Ada');
/*!40000 ALTER TABLE `data_peserta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kuota`
--

DROP TABLE IF EXISTS `kuota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kuota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thn_pelaksanaan` date NOT NULL,
  `jml_kuota` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kuota`
--

LOCK TABLES `kuota` WRITE;
/*!40000 ALTER TABLE `kuota` DISABLE KEYS */;
INSERT INTO `kuota` VALUES (1,'2024-07-14',2),(2,'2024-07-14',4),(3,'2024-07-14',5),(4,'2024-07-14',6),(5,'2024-07-14',2),(6,'2024-07-15',5),(7,'2024-07-15',10),(8,'2024-07-15',5),(9,'2024-07-15',10),(10,'2024-07-15',5),(11,'2024-07-15',5),(12,'2024-07-15',5),(13,'2024-07-15',5),(14,'2024-07-15',5),(15,'2024-07-15',5),(16,'2024-07-16',35);
/*!40000 ALTER TABLE `kuota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `no_pkkp` varchar(13) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kabko` varchar(30) NOT NULL,
  `ipk` double NOT NULL,
  `nilai_tulis` int(3) NOT NULL,
  `niltulper` int(11) NOT NULL,
  `nilai_wawancara` int(3) NOT NULL,
  `nilwaper` int(11) NOT NULL,
  `nilai_akhir` double NOT NULL,
  PRIMARY KEY (`no_pkkp`),
  CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`no_pkkp`) REFERENCES `data_peserta` (`no_pkkp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES ('pkkp001','johan','Kab Semarang',3.9,95,40,90,60,92),('pkkp002','jono','Kab Semarang',3.5,80,40,95,60,89),('pkkp004','adi','Kab Semarang',3.2,80,40,70,60,74),('pkkp006','yanto','Kab Semarang',3,80,40,90,60,86),('pkkp007','reja','Grobogan',3.8,85,40,80,60,82),('pkkp008','aufa','Salatiga',3.7,80,40,90,60,86),('pkkp009','nabil','Kab Demak',3.8,90,40,90,60,90),('pkkp011','ardian','Semarang',3.9,85,40,80,60,82);
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3'),(2,'johan','81dc9bdb52d04dc20036dbd8313ed055'),(3,'nabil','81dc9bdb52d04dc20036dbd8313ed055'),(4,'jujung','2b605066dcf57748cf41ffd1eeb7bb06'),(5,'reja','461990f826c12319b8016f34f219f7ef');
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

-- Dump completed on 2024-07-16 13:47:52
