-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 08:47 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `car_availability`) VALUES
(1, 'Audi A4', 'F 11', 'assets/img/cars/audi-a4.jpg', 36, 'yes'),
(2, 'Hyundai Creta', 'BKM 9241', 'assets/img/cars/creta.jpg', 22, 'yes'),
(3, 'BMW 6-Series', 'BQL 7747', 'assets/img/cars/bmw6.jpg', 39, 'yes'),
(4, 'Mercedes-Benz E-Class', 'WPL 1660', 'assets/img/cars/mcec.jpg', 45, 'yes'),
(6, 'Ford EcoSport', 'RAH 1715', 'assets/img/cars/ecosport.png', 21, 'yes'),
(7, 'Honda Amaze', 'PMC 19', 'assets/img/cars/amaze.jpg', 14, 'yes'),
(8, 'Land Rover Range Rover Sport', 'JPJ B4B1', 'assets/img/cars/rangero.jpg', 36, 'yes'),
(9, 'MG Hector', 'UPM 8055', 'assets/img/cars/mghector.jpg', 20, 'yes'),
(10, 'Honda CR-V', 'RX 230', 'assets/img/cars/hondacr.jpg', 22, 'yes'),
(11, 'Mahindra XUV 500', 'TCE 306', 'assets/img/cars/Mahindra XUV.jpg', 15, 'yes'),
(12, 'Toyota Fortuner', 'WJB 363', 'assets/img/cars/Fortuner.png', 16, 'yes'),
(13, 'Hyundai Veloster', 'DDD 554', 'assets/img/cars/hyundai0.png', 23, 'yes'),
(14, 'Jaguar XF', 'DCR 9099', 'assets/img/cars/jaguarxf.jpg', 39, 'yes'),
(15, 'Proton X50', 'X 50', 'assets/img/cars/x50.jpg', 25, 'yes'),
(17, 'Perodua Ativa', 'AAA 51', 'assets/img/cars/ativa.jpg', 20, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(1, 'admin@crs'),
(2, 'admin@crs'),
(3, 'admin@crs'),
(4, 'admin@crs'),
(6, 'admin@crs'),
(7, 'admin@crs'),
(8, 'admin@crs'),
(9, 'admin@crs'),
(10, 'admin@crs'),
(11, 'admin@crs'),
(12, 'admin@crs'),
(13, 'admin@crs'),
(14, 'admin@crs'),
(15, 'admin@crs'),
(17, 'admin@crs');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('admin@crs', 'Car Rental Service', '010-5646645', 'crs@gmail.com', 'CRS, Serdang Jaya, 43300 Seri Kembangan Selangor', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('haris@', 'Haris Harun', '0199512182', 'hrxsxv@gmail.com', 'Lot 1273', 'haris'),
('lucas', 'Lucas Rhoades', '7003658500', 'lucas@gmail.com', '2737  Fowler Avenue', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Nikhil', 'nikhil@gmail.com', 'Hope this works.');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `duration` int(255) NOT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `duration`, `total_amount`, `return_status`) VALUES
(574681292, 'lucas', 10, '2022-01-25', '2022-01-25', '2022-01-26', '2022-01-25', 22, 30, 660, 'R'),
(574681293, 'lucas', 4, '2022-01-25', '2022-01-25', '2022-01-25', '2022-01-25', 45, 5, 225, 'R'),
(574681294, 'lucas', 4, '2022-01-25', '2022-01-25', '2022-01-25', '2022-01-25', 45, 5, 225, 'R'),
(574681295, 'haris@', 15, '2022-01-25', '2022-01-27', '2022-01-27', '2022-01-25', 25, 9, 225, 'R'),
(574681296, 'haris@', 15, '2022-01-26', '2022-01-26', '2022-01-26', '2022-01-26', 25, 5, 125, 'R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681297;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
