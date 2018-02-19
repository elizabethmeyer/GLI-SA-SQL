-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.30-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for gli-test
DROP DATABASE IF EXISTS `gli-test`;
CREATE DATABASE IF NOT EXISTS `gli-test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gli-test`;

-- Dumping structure for table gli-test.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table gli-test.customers: ~4 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`customer_id`, `name`) VALUES
	(1, 'John Smith'),
	(2, 'Johnas Smith'),
	(3, 'Joanna Smit'),
	(4, 'Mark Smiths');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table gli-test.customer_products
DROP TABLE IF EXISTS `customer_products`;
CREATE TABLE IF NOT EXISTS `customer_products` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table gli-test.customer_products: ~4 rows (approximately)
/*!40000 ALTER TABLE `customer_products` DISABLE KEYS */;
REPLACE INTO `customer_products` (`customer_id`, `product_id`, `purchase_date`) VALUES
	(1, 1, '12-12-2016'),
	(1, 3, '13-12-2016'),
	(2, 4, '12-12-2016'),
	(4, 2, '14-12-2016'),
	(1, 1, '12-12-2016');
/*!40000 ALTER TABLE `customer_products` ENABLE KEYS */;

-- Dumping structure for table gli-test.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(254) NOT NULL,
  `product_category` varchar(254) NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table gli-test.products: ~4 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
REPLACE INTO `products` (`product_id`, `product_name`, `product_category`, `cost`) VALUES
	(1, 'Green mouse', 'Personal computers', 5),
	(2, 'Blue cup', 'Kitchen essentials', 10),
	(3, 'Tea bags', 'Kitchen essentials', 8),
	(4, 'Smart phone', 'Mobile phones', 50);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
