-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 10:38 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hireme`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `name`, `password`, `address`) VALUES
('imam@gmail.com', 'imam', '963852', 'comilla'),
('proma@gmail.com', 'proma', '456123', 'dhaka'),
('shaque@gmail.com', 'shahriar', '12345', 'pabna'),
('sharif@gmail.com', 'king', '741852', 'pabna');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `email` char(50) NOT NULL,
  `pickup_station` char(10) DEFAULT NULL,
  `preferable_station` char(10) DEFAULT NULL,
  `preferable_days` date DEFAULT NULL,
  `license_photo` blob,
  `how_many_days` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking1`
--

CREATE TABLE `booking1` (
  `email` varchar(30) NOT NULL,
  `car_name` varchar(30) DEFAULT NULL,
  `pickup_station` varchar(30) DEFAULT NULL,
  `preferable_station` varchar(30) DEFAULT NULL,
  `preferable_date` date DEFAULT NULL,
  `how_many_days` int(3) DEFAULT NULL,
  `license_photo` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking1`
--

INSERT INTO `booking1` (`email`, `car_name`, `pickup_station`, `preferable_station`, `preferable_date`, `how_many_days`, `license_photo`) VALUES
('mahfuz@gmail.com', 'x-noah', 'dhaka', 'pabna', '2018-11-29', 4, NULL),
('maria@gmail.com', NULL, 'dhaka', 'sylhet', '2018-09-29', 3, NULL),
('sdsadsa@gmail.com', NULL, 'pabna', 'dhaka', '2016-06-29', 3, NULL),
('shahriarhaque@gmail.com', 'premio', 'dhaka', 'sylhet', '2017-07-28', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking2`
--

CREATE TABLE `booking2` (
  `id` int(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `car_name` varchar(30) DEFAULT NULL,
  `pickup_station` varchar(30) DEFAULT NULL,
  `preferable_station` varchar(30) DEFAULT NULL,
  `preferable_date` date DEFAULT NULL,
  `how_many_days` int(3) DEFAULT NULL,
  `license_photo` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking2`
--

INSERT INTO `booking2` (`id`, `email`, `car_name`, `pickup_station`, `preferable_station`, `preferable_date`, `how_many_days`, `license_photo`) VALUES
(1, 'shahriardot@gmail.com', 'audi', 'dhaka', 'pabna', '2018-10-22', 2, 0x33383439303835375f3531363038343238353531343331305f363330333637313636383637333837313837325f6e2e6a7067),
(2, 'mariakhondoker@gmail.com', 'mastang', 'sylhet', 'comillah', '2018-10-16', 3, 0x33383439303835375f3531363038343238353531343331305f363330333637313636383637333837313837325f6e2e6a7067),
(3, 'sharif@gmail.com', 'toyota', 'gulshan-2', 'gulshan', '2020-03-09', 3, 0x77616c6c7061706572666c6172652e636f6d5f77616c6c70617065722e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `business_term`
--

CREATE TABLE `business_term` (
  `license_number` int(20) NOT NULL,
  `email` char(50) DEFAULT NULL,
  `car_name` char(10) DEFAULT NULL,
  `car_model` char(10) DEFAULT NULL,
  `certificate_photo` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_term1`
--

CREATE TABLE `business_term1` (
  `license_number` int(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `car_name` varchar(30) DEFAULT NULL,
  `car_model` varchar(30) DEFAULT NULL,
  `certificate_photo` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_term1`
--

INSERT INTO `business_term1` (`license_number`, `email`, `car_name`, `car_model`, `certificate_photo`) VALUES
(0, 'sharif@gmail.com', 'mustang', 'gt200', 0x77616c6c7061706572666c6172652e636f6d5f77616c6c70617065722e6a7067),
(456789, 'mariakhondoker@gmail.com', 'premio', 'a9', 0x443a68697265206d652046696e616c2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `email` char(50) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `subject` char(30) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `serial_no` int(10) NOT NULL,
  `email` char(50) DEFAULT NULL,
  `car_name` char(20) DEFAULT NULL,
  `airport_transfer` int(5) DEFAULT NULL,
  `rent_car_sylhet` int(5) DEFAULT NULL,
  `rent_car_chittagong` int(5) DEFAULT NULL,
  `rent_car_coxsbazar` int(5) DEFAULT NULL,
  `rent_car_sajek` int(5) DEFAULT NULL,
  `daytour_near_dhaka` int(6) DEFAULT NULL,
  `fuel_cost` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`serial_no`, `email`, `car_name`, `airport_transfer`, `rent_car_sylhet`, `rent_car_chittagong`, `rent_car_coxsbazar`, `rent_car_sajek`, `daytour_near_dhaka`, `fuel_cost`) VALUES
(239853, NULL, 'Toyota Hiace', 1750, 28000, 42000, 32000, 22000, 1200, 600),
(239874, NULL, 'Toyota Hiace', 1750, 28000, 42000, 32000, 22000, 1200, 600),
(239875, NULL, 'X-Noah', 2500, 28000, 50000, 35000, 30000, 10000, 600),
(267838, NULL, 'Toyota Hiace', 1750, 28000, 42000, 32000, 22000, 1200, 600),
(293845, NULL, 'Sedan Car', 1500, 22000, 38000, 25000, 20000, 7000, 600),
(293874, NULL, 'X-Noah', 2500, 28000, 50000, 35000, 30000, 10000, 600),
(294857, NULL, 'Premio', 2000, 25000, 40000, 30000, 25000, 8000, 600),
(329010, NULL, 'X-Noah', 2500, 28000, 50000, 35000, 30000, 10000, 600),
(384759, NULL, 'Premio', 2000, 25000, 40000, 30000, 25000, 8000, 600),
(458923, NULL, 'Sedan Car', 1500, 22000, 38000, 25000, 20000, 7000, 600),
(473628, NULL, 'X-Noah', 2500, 28000, 50000, 35000, 30000, 10000, 600),
(473658, NULL, 'Premio', 2000, 25000, 40000, 30000, 25000, 8000, 600),
(672948, NULL, 'Sedan Car', 1500, 22000, 38000, 25000, 20000, 7000, 600),
(6545342, NULL, 'Toyota Hiace', 1750, 28000, 42000, 32000, 22000, 1200, 600);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `car_number` int(9) NOT NULL,
  `email` char(50) DEFAULT NULL,
  `car_name` char(20) DEFAULT NULL,
  `daily_car_rent_inside_dhaka` int(5) DEFAULT NULL,
  `daily_car_rent_outside_dhaka` int(5) DEFAULT NULL,
  `hourly_car_rent` int(6) DEFAULT NULL,
  `weekly_car_rent` int(6) DEFAULT NULL,
  `monthly_car_rent` int(6) DEFAULT NULL,
  `fuel_cost` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`car_number`, `email`, `car_name`, `daily_car_rent_inside_dhaka`, `daily_car_rent_outside_dhaka`, `hourly_car_rent`, `weekly_car_rent`, `monthly_car_rent`, `fuel_cost`) VALUES
(12345, NULL, 'Toyota Axio', 2500, 3000, 0, 12000, 50000, 600),
(78901, NULL, 'Toyota Axio', 2500, 4500, 0, 12000, 55000, 600),
(89012, NULL, 'Toyota Axio', 2500, 3000, NULL, 12000, 55000, 600),
(90123, NULL, 'Toyota Axio', 2500, 3000, NULL, 12000, 55000, 600),
(98234, NULL, 'Allion', 3500, 4000, 2000, 8000, NULL, 600),
(102938, NULL, 'Premio', 4000, 3500, NULL, NULL, 65000, 600),
(123456, NULL, 'Toyota Axio', 2500, 3000, NULL, 12000, 55000, 600),
(123890, NULL, 'Allion', 3500, 4000, 2000, 8000, NULL, 600),
(135792, NULL, 'X-Noah', 4000, 3500, 3000, 15000, 58000, 600),
(234567, NULL, 'Allion', 3500, 4000, 2000, 8000, NULL, 600),
(246801, NULL, 'X-Noah', 4000, 3500, 15000, 3000, 58000, 600),
(256983, NULL, 'Premio', 4000, 3500, NULL, NULL, 65000, 600),
(321890, NULL, 'Premio', 4000, 3500, NULL, NULL, 65000, 600),
(345098, NULL, 'Allion', 3500, 4000, 2000, 8000, NULL, 600),
(357912, NULL, 'X-Noah', 4000, 3500, 15000, 3000, 58000, 600),
(468013, NULL, 'X-Noah', 4000, 3500, 15000, 3000, 58000, 600),
(564738, NULL, 'Premio', 4000, 3500, NULL, NULL, 65000, 600),
(567890, NULL, 'Allion', 3500, 4000, 2000, 8000, NULL, 600),
(678098, NULL, 'Premio', 4000, 4500, NULL, NULL, 65000, 600);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_no` int(20) DEFAULT NULL,
  `email` char(50) NOT NULL,
  `rating` int(5) DEFAULT NULL,
  `commentbox` tinytext,
  `date` date DEFAULT NULL,
  `time` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `email` char(50) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `mobile_number` int(12) DEFAULT NULL,
  `city` char(10) DEFAULT NULL,
  `national_id` int(20) DEFAULT NULL,
  `address` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`email`, `name`, `password`, `mobile_number`, `city`, `national_id`, `address`) VALUES
('ahnaf123@gamil.com', 'Ahnaf Rahman', '27364', 1672536475, 'Dhaka', 657364758, 'Mirpur'),
('ami@gmail.com', 'ami', 'asdsadas', 123456789, 'asdasda', 0, 'asdasa'),
('arik354@gamil.com', 'Arik Islam', '56723', 1823459386, 'Dhaka', 456274296, 'Mohammadpur'),
('armankhan@gamil.com', 'Arman Khan', '36475', 1718273645, 'Dhaka', 238475921, 'Dhanmondi'),
('hakim@gmail.com', 'hakim', 'hakim', 1798452546, 'impala', 1, 'pecado,miramar'),
('hasancse@gamil.com', 'Hasan Khan', '43857', 1682736456, 'Dhaka', 453281798, 'Uttara'),
('kamal234@gmail.com', 'Kamal Ahmed', '56784', 1923746389, 'Dhaka', 273648576, 'notun Bazar,badda'),
('kkkkkkk@gmail.com', 'kkkkkkk', '963258', 1717179933, 'Pabna', 0, 'Mohammadpur Bus stand , chand mia housing, Dhaka 1'),
('kuhu90@gamil.com', 'Kuhu Ahmad', '26289', 1915736284, 'Dhaka', 546730283, 'Rupnagar'),
('lamiarah@gamil.com', 'Lamia Rahman', '68724', 1671293845, 'Dhaka', 283746591, 'Dhanmondi'),
('maliha879@gamil.com', 'Maliha Rahman', '23649', 1528394856, 'Dhaka', 473629573, 'Motijhil'),
('mariakhondokar@gmail.com', 'mariakhondokar', '890414', 123456789, 'pabna', 0, 'kalachadpara,pabna'),
('morjina@gmail.com', 'morjina', '123', 123456789, 'Pabna', 0, 'asdf'),
('moshtarin453@gamil.com', 'Moshtarin Islam', '78946', 1814628375, 'Dhaka', 384726401, 'khilgaon'),
('shahriardot@gamil.com', 'Shahriar Haque', '01234', 1758158224, 'pabna', 706943506, 'Pabna Sadar'),
('sharif@gmail.com', 'shariful', '425425', 123456789, 'dhaka', 0, 'gulshan-2,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `booking1`
--
ALTER TABLE `booking1`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `booking2`
--
ALTER TABLE `booking2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_term`
--
ALTER TABLE `business_term`
  ADD PRIMARY KEY (`license_number`),
  ADD KEY `fk5` (`email`);

--
-- Indexes for table `business_term1`
--
ALTER TABLE `business_term1`
  ADD PRIMARY KEY (`license_number`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`serial_no`),
  ADD KEY `fk8` (`email`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`car_number`),
  ADD KEY `fk1` (`email`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking2`
--
ALTER TABLE `booking2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk3` FOREIGN KEY (`email`) REFERENCES `userinfo` (`email`);

--
-- Constraints for table `business_term`
--
ALTER TABLE `business_term`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`email`) REFERENCES `userinfo` (`email`);

--
-- Constraints for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`email`) REFERENCES `userinfo` (`email`);

--
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `fk8` FOREIGN KEY (`email`) REFERENCES `userinfo` (`email`);

--
-- Constraints for table `pricing`
--
ALTER TABLE `pricing`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`email`) REFERENCES `userinfo` (`email`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk7` FOREIGN KEY (`email`) REFERENCES `userinfo` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
