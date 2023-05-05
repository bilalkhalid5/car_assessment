-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 04:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars_assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`) VALUES
(1, 'GM'),
(2, 'Honda'),
(3, 'BMW'),
(4, 'Audi'),
(5, 'Ford'),
(6, 'Toyota');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `vehicle_id`, `f_name`) VALUES
(1, 1, 'Preferred Equipment Group 1SL'),
(2, 1, '3.47 Final Drive Axle Ratio'),
(3, 1, 'Wheels: 30 Machined Aluminum'),
(6, 2, 'Preferred Equipment Group 1SL'),
(7, 2, '3.47 Final Drive Axle Ratio'),
(8, 2, 'Wheels: 18 Machined Aluminum'),
(9, 3, 'Front Bucket Seats'),
(10, 3, 'Perforated Leather-Appointed Seat Trim'),
(11, 3, 'Not Equipped w/Driver & Fr Passenger Heated Seats'),
(12, 4, 'Radio: Buick Infotainment System AM/FM Stereo'),
(13, 4, 'Horizontal Cargo Net (LPO)'),
(14, 4, 'Not Equipped w/Rear Park Assist'),
(15, 5, '8-Way Power Driver Seat Adjuster'),
(16, 5, 'Front Passenger 8-Way Power Seat Adjuster'),
(17, 5, 'Heated Driver & Front Passenger Seats'),
(18, 7, 'Front Bin Center Console USB Ports'),
(19, 7, 'Wireless Apple CarPlay/Wireless Android Auto'),
(20, 7, 'IntelliBeam Headlamp Control w/Auto High Beam'),
(21, 8, 'SiriusXM Radio'),
(22, 8, 'Following Distance Indicator'),
(23, 8, 'Forward Collision Alert'),
(24, 9, 'Lane Keep Assist w/Lane Departure Warning'),
(25, 9, 'Automatic Emergency Braking'),
(26, 9, 'Front Pedestrian Braking'),
(27, 10, '7-Speaker Audio System Feature w/Amplifier'),
(28, 10, 'USB Charging-Only Ports'),
(29, 10, '4-Wheel Disc Brakes'),
(30, 11, 'Air Conditioning'),
(31, 11, 'Electronic Stability Control'),
(32, 11, 'Front Center Armrest'),
(33, 12, 'Power Liftgate'),
(34, 12, 'Spoiler'),
(35, 12, 'ABS brakes'),
(36, 13, 'Adjustable head restraints: driver and passenger w/tilt'),
(37, 13, 'Alloy wheels'),
(38, 13, 'Auto-dimming door mirrors'),
(39, 14, 'Automatic temperature control'),
(40, 14, 'Brake assist'),
(41, 14, 'Bumpers: body-color'),
(42, 15, 'Delay-off headlights'),
(43, 15, 'Driver door bin'),
(44, 15, 'Driver vanity mirror');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `vehicle_id`, `image_name`, `image_title`) VALUES
(1, 1, 'frontimage.jpg', 'front image'),
(2, 1, 'backimage.jpg', 'back image'),
(3, 1, 'leftimage.jpg', 'left image'),
(4, 1, 'rightimage.jpg', 'right image'),
(5, 1, 'dashboardimage.jpg', 'dashboard image'),
(6, 1, 'backseatimage.jpg', 'backseat image'),
(7, 2, 'frontimage.jpg', 'front image'),
(8, 2, 'backimage.jpg', 'back image'),
(9, 2, 'leftimage.jpg', 'left image'),
(10, 2, 'rightimage.jpg', 'right image'),
(11, 2, 'dashboardimage.jpg', 'dashboard image'),
(12, 2, 'backseatimage.jpg', 'backseat image'),
(13, 3, 'frontimage.jpg', 'front image'),
(14, 3, 'backimage.jpg', 'back image'),
(15, 3, 'leftimage.jpg', 'left image'),
(16, 3, 'rightimage.jpg', 'right image'),
(17, 3, 'dashboardimage.jpg', 'dashboard image'),
(18, 3, 'backseatimage.jpg', 'backseat image'),
(19, 4, 'frontimage.jpg', 'front image'),
(20, 4, 'backimage.jpg', 'back image'),
(21, 4, 'leftimage.jpg', 'left image'),
(22, 4, 'rightimage.jpg', 'right image'),
(23, 4, 'dashboardimage.jpg', 'dashboard image'),
(24, 4, 'backseatimage.jpg', 'backseat image'),
(25, 5, 'frontimage.jpg', 'front image'),
(26, 5, 'backimage.png', 'back image'),
(27, 5, 'leftimage.png\r\n', 'left image'),
(28, 5, 'rightimage.png', 'right image'),
(29, 5, 'dashboardimage.png', 'dashboard image'),
(30, 5, 'backseatimage.png', 'backseat image'),
(31, 7, 'frontimage.png', 'front image'),
(32, 7, 'backimage.png', 'back image'),
(33, 7, 'leftimage.png', 'left image'),
(34, 7, 'rightimage.png', 'right image'),
(35, 7, 'dashboardimage.png', 'dashboard image'),
(36, 7, 'backseatimage.png', 'backseat image'),
(37, 8, 'frontimage.png', 'front image'),
(38, 8, 'backimage.png', 'back image'),
(39, 8, 'leftimage.png', 'left image'),
(40, 8, 'rightimage.png', 'right image'),
(41, 8, 'dashboardimage.png', 'dashboard image'),
(42, 8, 'backseatimage.png', 'backseat image'),
(43, 9, 'frontimage.png', 'front image'),
(44, 9, 'backimage.png', 'back image'),
(45, 9, 'leftimage.png', 'left image'),
(46, 9, 'rightimage.png', 'right image'),
(47, 9, 'dashboardimage.png', 'dashboard image'),
(48, 9, 'backseatimage.png', 'backseat image'),
(49, 10, 'frontimage.png', 'front image'),
(50, 10, 'backimage.png', 'back image'),
(51, 10, 'leftimage.png', 'left image'),
(52, 10, 'rightimage.png', 'right image'),
(53, 10, 'dashboardimage.png', 'dashboard image'),
(54, 10, 'backseatimage.png', 'backseat image'),
(55, 11, 'frontimage.png', 'front image'),
(56, 11, 'backimage.png', 'back image'),
(57, 11, 'leftimage.png', 'left image'),
(58, 11, 'rightimage.png', 'right image'),
(59, 11, 'dashboardimage.png', 'dashboard image'),
(60, 11, 'backseatimage.png', 'backseat image'),
(61, 12, 'frontimage.png', 'front image'),
(62, 12, 'backimage.png', 'back image'),
(63, 12, 'leftimage.png', 'left image'),
(64, 12, 'rightimage.png', 'right image'),
(65, 12, 'dashboardimage.png', 'dashboard image'),
(66, 12, 'backseatimage.png', 'backseat image'),
(67, 13, 'frontimage.png', 'front image'),
(68, 13, 'backimage.png', 'back image'),
(69, 13, 'leftimage.png', 'left image'),
(70, 13, 'rightimage.png', 'right image'),
(71, 13, 'dashboardimage.png', 'dashboard image'),
(72, 13, 'backseatimage.png', 'backseat image'),
(73, 14, 'frontimage.png', 'front image'),
(74, 14, 'backimage.png', 'back image'),
(75, 14, 'leftimage.png', 'left image'),
(76, 14, 'rightimage.png', 'right image'),
(77, 14, 'dashboardimage.png', 'dashboard image'),
(78, 14, 'backseatimage.png', 'backseat image'),
(79, 15, 'frontimage.png', 'front image'),
(80, 15, 'backimage.png', 'back image'),
(81, 15, 'leftimage.png', 'left image'),
(82, 15, 'rightimage.png', 'right image'),
(83, 15, 'dashboardimage.png', 'dashboard image'),
(84, 15, 'backseatimage.png', 'backseat image');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `model`, `company_id`) VALUES
(1, 'Sierra 1500', 1),
(2, 'CHEVROLET SILVERADO 1500', 1),
(3, 'Sedans', 2),
(5, 'Sports Activity Vehicle', 3);

-- --------------------------------------------------------

--
-- Table structure for table `morespecs`
--

CREATE TABLE `morespecs` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `extraFeature_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `morespecs`
--

INSERT INTO `morespecs` (`id`, `vehicle_id`, `extraFeature_name`) VALUES
(1, 1, '2.0L Turbocharged'),
(2, 1, '9-Speed Automatic'),
(3, 1, '4D Sport Utility'),
(4, 2, '2.0L Turbocharged'),
(5, 2, '9-Speed Automatic'),
(6, 2, '4D Sport Utility'),
(7, 3, '2.0L Turbocharged'),
(8, 3, '9-Speed Automatic'),
(9, 3, '4D Sport Utility'),
(10, 4, '2.0L Turbocharged'),
(11, 4, '9-Speed Automatic'),
(12, 4, '4D Sport Utility'),
(13, 5, '2.0L Turbocharged'),
(14, 5, '9-Speed Automatic'),
(15, 5, '4D Sport Utility'),
(16, 7, '2.0L Turbocharged'),
(17, 7, '9-Speed Automatic'),
(18, 7, '4D Sport Utility'),
(19, 8, '2.0L Turbocharged'),
(20, 8, '9-Speed Automatic'),
(21, 8, '4D Sport Utility'),
(22, 9, '2.0L Turbocharged'),
(23, 9, '9-Speed Automatic'),
(24, 9, '4D Sport Utility'),
(25, 10, '2.0L Turbocharged'),
(26, 10, '9-Speed Automatic'),
(27, 10, '4D Sport Utility'),
(28, 11, '2.0L Turbocharged'),
(29, 11, '9-Speed Automatic'),
(30, 11, '4D Sport Utility'),
(31, 12, '2.0L Turbocharged'),
(32, 12, '9-Speed Automatic'),
(33, 12, '4D Sport Utility'),
(34, 13, '2.0L Turbocharged'),
(35, 13, '9-Speed Automatic'),
(36, 13, '4D Sport Utility'),
(37, 14, '2.0L Turbocharged'),
(38, 14, '9-Speed Automatic'),
(39, 14, '4D Sport Utility'),
(40, 15, '2.0L Turbocharged'),
(41, 15, '9-Speed Automatic'),
(42, 15, '4D Sport Utility');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'car');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`) VALUES
(1, 'martin@gmail.com', 'martin123', '2023-05-03 21:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `vehicle_name` varchar(191) NOT NULL,
  `retail_price` double DEFAULT NULL,
  `sales_price` double DEFAULT NULL,
  `exterior_color` varchar(255) NOT NULL,
  `interior_color` varchar(255) NOT NULL,
  `stock` varchar(50) NOT NULL,
  `VIN` varchar(255) NOT NULL,
  `dealer_dot` varchar(255) NOT NULL,
  `mileage` int(11) NOT NULL,
  `vehicle_type` int(11) DEFAULT NULL,
  `condition` varchar(255) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `company_id`, `model_id`, `vehicle_name`, `retail_price`, `sales_price`, `exterior_color`, `interior_color`, `stock`, `VIN`, `dealer_dot`, `mileage`, `vehicle_type`, `condition`, `year`) VALUES
(1, 1, 1, 'Buick', 78495, 78495, 'Sapphire Metallic', 'Ebony Seats', '157617', 'LRBFZNR45PD024590', 'Long Chevrolet Buick GMC', 10, 1, 'New', 2023),
(2, 1, 2, 'CHEVROLET', 66890, 65761, 'Sapphire Metallic', 'Ebony Seats', '160074', 'AACFZNR45PD024599', 'Long Chevrolet Buick GMC', 4, 1, 'New', 2022),
(3, 1, 2, 'CHEVROLET TRAVERSE', 37360, 35860, 'Sapphire Metallic', 'Ebony Seats', '156162', 'BNDAQNR45PD024590', 'Long Chevrolet Buick GMC', 8, 1, 'New', 2023),
(4, 1, 2, 'CHEVROLET CAMARO', 33070, 32435, 'Sapphire Metallic', 'Ebony Seats', '156012', 'LRBFZNR45PD024199', 'Long Chevrolet Buick GMC', 12, 1, 'New', 2023),
(5, 1, 2, 'CHEVROLET MALIBU', 66890, 65342, 'Sapphire Metallic', 'Ebony Seats', '182172', 'AZXQZNR45PD024590', 'Long Chevrolet Buick GMC', 6, 1, 'New', 2023),
(7, 2, 3, 'Civic Sedan', 29795, 27880, 'Sapphire Metallic', 'Ebony Seats', '074388', 'AMPFZNR45PD024590', 'Long Chevrolet Buick GMC', 7, 1, 'Old', 2022),
(8, 2, 3, 'Accord Sedan', 88890, 87544, 'Sapphire Metallic', 'Ebony Seats', '456541', 'AAVFZNR45PD024590', 'Long Chevrolet Buick GMC', 8, 1, 'New', 2023),
(9, 2, 3, 'Civic Si Sedan', 42360, 41860, 'Sapphire Metallic', 'Ebony Seats', '156564', 'AAAFZNR45PD024590', 'Long Chevrolet Buick GMC', 5, 1, 'Old', 2022),
(10, 2, 3, 'Xvg Sedan', 67070, 65123, 'Sapphire Metallic', 'Ebony Seats', '156000', 'ZQGFZNR45PD024590', 'Long Chevrolet Buick GMC', 6, 1, 'New', 2023),
(11, 3, 5, 'X1 Sports Activity Vehicle', 29245, 27245, 'Sapphire Metallic', 'Ebony Seats', '345331', 'LQOIZNR45PD024590', 'Long Chevrolet Buick GMC', 7, 1, 'New', 2023),
(12, 3, 5, 'X3 Sports Activity Vehicle', 67245, 65245, 'Sapphire Metallic', 'Ebony Seats', '343243', 'QTRFZNR45PD024590', 'Long Chevrolet Buick GMC', 5, 1, 'New', 2023),
(13, 3, 5, 'X3 M Sports Activity Vehicle', 34543, 32546, 'Sapphire Metallic', 'Ebony Seats', '113243', 'CRQFZNR45PD024590', 'Long Chevrolet Buick GMC', 5, 1, 'New', 2023),
(14, 3, 5, 'X4 M Sports Activity Coupe®', 89432, 88000, 'Sapphire Metallic', 'Ebony Seats', '324221', 'QPLFZNR45PD024590', 'Long Chevrolet Buick GMC', 8, 1, 'New', 2023),
(15, 3, 5, 'X5 Sports Activity Vehicle', 54231, 52341, 'Sapphire Metallic', 'Ebony Seats', '321211', 'MPBFZNR45PD024590', 'Long Chevrolet Buick GMC', 5, 1, 'New', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `embedded_url` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `vehicle_id`, `embedded_url`) VALUES
(1, 1, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(2, 2, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(3, 3, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(4, 4, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(5, 5, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(6, 7, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(7, 8, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(8, 9, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(9, 10, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(10, 11, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(11, 12, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(12, 13, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(13, 14, 'https://www.youtube.com/embed/Fmdoxfhj6vk'),
(14, 15, 'https://www.youtube.com/embed/Fmdoxfhj6vk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `morespecs`
--
ALTER TABLE `morespecs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `morespecs`
--
ALTER TABLE `morespecs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
