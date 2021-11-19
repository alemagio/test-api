-- --------------------------------------------------------
-- Host:                         192.168.1.251
-- Versione server:              10.3.25-MariaDB-0+deb10u1 - Raspbian 10
-- S.O. server:                  debian-linux-gnueabihf
-- HeidiSQL Versione:            11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `lastName`, `firstName`, `username`, `password`) VALUES
	(1, 'Rossi', 'Mario', 'user', '$2a$10$yboo0QyBz4Xx.CSo9tHLxOsm8/e3qvp5g5QqyeCEQqEq3sHC79uYC'),
	(2, 'Gialli', 'Paolo', 'admin', '$2a$10$yboo0QyBz4Xx.CSo9tHLxOsm8/e3qvp5g5QqyeCEQqEq3sHC79uYC'),
	(4, 'ale', 'ale', 'ale', '$2a$10$a7K6fjxwK6rPckhqKViwz.JtTIww23i/s6sCoPk.hV2gcMIE5meie'),
	(6, 'Bartoletti', 'Cristiano', 'cb', '$2a$10$FDkjtet0XlwuzSYBes.HGO.xXxtdxNIys3YcZ8Lv7lS.eSh7/ptHe');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `dogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `breed` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` (`name`, `breed`) VALUES
	('fido', 'labrador'),
	('lampo', 'barboncino'),
	('ciuccio', 'pastore tedesco');
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
