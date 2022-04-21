-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2022 at 06:58 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rsms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `contact`, `email`, `address`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'sonnet', 'D', 'sarker', '09123456789', 'sonnet@sample.com', 'mohammadpur', 0, '2021-12-27 10:10:55', NULL),
(2, 'Naimur ', '', 'Rahman', '09123456789', 'Rahman@sample.com', 'Sukkrabad', 0, '2021-12-27 10:33:18', NULL),
(3, 'joy', 'd', 'sarker', '0988877122', 'joy@sample.com', 'dhanmondi', 0, '2022-04-14 22:54:12', NULL),
(4, 'kanak', 't', 'sarker', '0158885544', 'kanak@sample.com', 'mohammadpur', 0, '2022-04-14 23:23:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_list`
--

CREATE TABLE `message_list` (
  `id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_list`
--

INSERT INTO `message_list` (`id`, `fullname`, `contact`, `email`, `message`, `status`, `date_created`) VALUES
(2, 'Naimur Rahman', '017889522', 'Rahman@gmail.com', 'hello', 1, '2022-04-15 12:07:21'),
(3, 'joy  sarker', '000011445', 'joy@gmail.com', 'Only Service Charge', 0, '2022-04-15 12:15:21'),
(4, 'Biswambar', '01788120636', 'biswambar@gmail.com', 'hello....', 1, '2022-04-18 12:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `repair_list`
--

CREATE TABLE `repair_list` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `client_id` int(30) NOT NULL,
  `remarks` text DEFAULT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unpaid, 1= paid',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1= Approved, 2 = In-Progress, 3 = Checking, 4 = Done, 5= Cancelled ',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updadted` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repair_list`
--

INSERT INTO `repair_list` (`id`, `code`, `client_id`, `remarks`, `total_amount`, `payment_status`, `status`, `date_created`, `date_updadted`) VALUES
(1, 'RSMS-2021120001', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum faucibus id tellus in molestie. Integer risus diam, bibendum vitae imperdiet id, feugiat in dolor. Praesent porta bibendum lobortis. Praesent quis venenatis nibh. Nunc mattis, enim non placerat placerat, elit mi semper diam, et convallis leo est non ex. Sed et malesuada sapien. Proin risus orci, vulputate aliquet sapien eu, tempus ultricies nibh. Etiam varius turpis vitae placerat feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque et interdum enim, ac rutrum dui. Fusce faucibus diam nec mauris dictum tempus ut eu turpis.', 3400, 1, 3, '2021-12-27 14:37:53', '2021-12-27 16:02:39'),
(4, 'RSMS-2022040001', 1, '', 250, 0, 0, '2022-04-14 22:48:28', NULL),
(5, 'RSMS-2022040002', 1, '', 250, 0, 0, '2022-04-14 22:48:40', NULL),
(6, 'RSMS-2022040003', 1, '', 1200, 0, 0, '2022-04-14 22:48:53', NULL),
(7, 'RSMS-2022040004', 3, '', 250, 0, 0, '2022-04-14 22:54:30', NULL),
(8, 'RSMS-2022040005', 4, 'hhh', 260, 1, 2, '2022-04-14 23:23:43', NULL),
(9, 'RSMS-2022040006', 4, 'hhh', 260, 1, 1, '2022-04-14 23:23:59', NULL),
(10, 'RSMS-2022040007', 4, 'hhh', 260, 1, 1, '2022-04-14 23:24:05', NULL),
(11, 'RSMS-2022040008', 4, 'hhh', 260, 1, 1, '2022-04-14 23:24:09', NULL),
(12, 'RSMS-2022040009', 3, '', 10, 1, 4, '2022-04-14 23:26:55', NULL),
(13, 'RSMS-2022040010', 3, '', 290, 0, 3, '2022-04-15 00:36:52', NULL),
(14, 'RSMS-2022040011', 3, 'm', 290, 0, 3, '2022-04-15 00:36:58', NULL),
(15, 'RSMS-2022040012', 3, 'm', 290, 1, 3, '2022-04-15 00:37:04', NULL),
(16, 'RSMS-2022040013', 3, 'kkkk', 290, 1, 5, '2022-04-15 00:37:22', NULL),
(17, 'RSMS-2022040014', 3, 'kkkk', 290, 1, 1, '2022-04-15 00:37:27', NULL),
(18, 'RSMS-2022040015', 3, 'kkkk', 290, 1, 1, '2022-04-15 00:37:39', NULL),
(19, 'RSMS-2022040016', 3, 'k', 250, 0, 0, '2022-04-15 00:47:16', NULL),
(20, 'RSMS-2022040017', 2, 'dd', 350, 1, 1, '2022-04-15 12:01:39', NULL),
(21, 'RSMS-2022040018', 2, 'dhfdkn ', 1850, 1, 2, '2022-04-15 12:09:30', NULL),
(22, 'RSMS-2022040019', 2, 'dhfdkn ', 1850, 0, 2, '2022-04-15 12:09:38', NULL),
(23, 'RSMS-2022040020', 2, 'dhfdkn ', 1850, 0, 3, '2022-04-15 12:09:48', NULL),
(24, 'RSMS-2022040021', 2, 'dhfdkn ', 1850, 0, 0, '2022-04-15 12:09:52', NULL),
(25, 'RSMS-2022040022', 2, 'dhfdkn ', 1850, 1, 0, '2022-04-15 12:10:02', NULL),
(26, 'RSMS-2022040023', 2, 'd', 1850, 1, 0, '2022-04-15 12:10:20', NULL),
(27, 'RSMS-2022040024', 2, 'hello', 1850, 1, 1, '2022-04-15 12:10:34', NULL),
(29, 'RSMS-2022040025', 3, 'ffhuhn', 1300, 0, 0, '2022-04-15 12:11:28', NULL),
(30, 'RSMS-2022040026', 3, 'ffhuhn', 1300, 1, 0, '2022-04-15 12:11:40', NULL),
(31, 'RSMS-2022040027', 3, 'ffhuhn', 1200, 1, 2, '2022-04-15 12:11:45', '2022-04-15 12:12:11'),
(32, 'RSMS-2022040028', 3, '', 2700, 1, 2, '2022-04-18 12:58:00', '2022-04-18 12:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `repair_materials`
--

CREATE TABLE `repair_materials` (
  `repair_id` int(30) NOT NULL,
  `material` text NOT NULL,
  `cost` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repair_materials`
--

INSERT INTO `repair_materials` (`repair_id`, `material`, `cost`) VALUES
(1, 'Material 101', 1850);

-- --------------------------------------------------------

--
-- Table structure for table `repair_services`
--

CREATE TABLE `repair_services` (
  `repair_id` int(30) NOT NULL,
  `service_id` int(30) NOT NULL,
  `fee` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repair_services`
--

INSERT INTO `repair_services` (`repair_id`, `service_id`, `fee`, `status`) VALUES
(1, 1, 350, 0),
(1, 4, 1200, 0),
(4, 2, 250, 0),
(5, 3, 250, 0),
(6, 4, 1200, 0),
(7, 2, 250, 0),
(8, 2, 250, 0),
(9, 2, 250, 0),
(10, 2, 250, 0),
(11, 2, 250, 0),
(12, 5, 10, 0),
(13, 2, 250, 0),
(14, 2, 250, 0),
(15, 2, 250, 0),
(16, 2, 250, 0),
(17, 2, 250, 0),
(18, 2, 250, 0),
(19, 2, 250, 0),
(20, 1, 350, 0),
(21, 7, 1500, 0),
(21, 2, 250, 0),
(22, 7, 1500, 0),
(22, 2, 250, 0),
(23, 7, 1500, 0),
(23, 2, 250, 0),
(24, 7, 1500, 0),
(24, 2, 250, 0),
(25, 7, 1500, 0),
(25, 2, 250, 0),
(26, 7, 1500, 0),
(26, 2, 250, 0),
(27, 7, 1500, 0),
(27, 2, 250, 0),
(29, 8, 1200, 0),
(30, 8, 1200, 0),
(31, 8, 1200, 0),
(32, 8, 1200, 0),
(32, 7, 1500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `cost` float NOT NULL DEFAULT 0,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Active, 1 = Delete',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `cost`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Hardware Cleaning', 'Cleaning hardware such as the CPUs. ', 350, 0, '2021-12-27 09:39:51', NULL),
(2, 'Mobile Reformatting', 'Mobile Reformatting', 250, 0, '2021-12-27 09:40:21', NULL),
(3, 'Mobile Reprogram', 'Mobile Reprogram', 250, 0, '2021-12-27 09:40:41', NULL),
(4, 'W10 OS Installation', 'Installing Licensed Windows 10 Operating System', 1200, 0, '2021-12-27 09:50:26', NULL),
(5, 'AC Servicing', ' sample com', 3000, 0, '2022-04-14 23:26:37', NULL),
(6, 'Refrigerator Repair Services', 'Service Features', 1000, 0, '2022-04-14 23:31:36', NULL),
(7, 'LCD/LED/SMART TV Repair Services', 'LCD/LED TV Repair Services, TV Wall Mount Installation', 1500, 0, '2022-04-15 12:04:14', NULL),
(8, 'Desktop Services', 'Solution to any Hardware (e.g. Motherboard, Hard Drive, Power Supply Unit etc.)', 1200, 0, '2022-04-15 12:05:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Digital Home Electronic Services'),
(6, 'short_name', 'DHES'),
(11, 'logo', 'uploads/logo-1640568131.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1640568272.png'),
(15, 'content', 'Array'),
(16, 'email', 'electronicservice@gmail.com'),
(17, 'contact', '01880000000'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Sukkrabad, Dhanmondi, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-14 15:47:08'),
(5, 'Naimur', NULL, 'Rahman', 'NRahman', '827ccb0eea8a706c4c34a16891f84e7b', 'uploads/avatar-2.png?v=1639468007', NULL, 2, 1, '2022-04-15 00:34:54', '2022-04-15 12:16:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_list`
--
ALTER TABLE `message_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repair_list`
--
ALTER TABLE `repair_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `repair_materials`
--
ALTER TABLE `repair_materials`
  ADD KEY `repair_id` (`repair_id`);

--
-- Indexes for table `repair_services`
--
ALTER TABLE `repair_services`
  ADD KEY `repair_id` (`repair_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `repair_list`
--
ALTER TABLE `repair_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `repair_list`
--
ALTER TABLE `repair_list`
  ADD CONSTRAINT `repair_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `repair_materials`
--
ALTER TABLE `repair_materials`
  ADD CONSTRAINT `repair_materials_ibfk_1` FOREIGN KEY (`repair_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `repair_services`
--
ALTER TABLE `repair_services`
  ADD CONSTRAINT `repair_services_ibfk_1` FOREIGN KEY (`repair_id`) REFERENCES `repair_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `repair_services_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
