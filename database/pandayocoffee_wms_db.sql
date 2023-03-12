-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 05:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pandayocoffee_wms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `unit` varchar(250) NOT NULL DEFAULT 'pcs',
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `unit`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Vegetables', 'pcs', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mi tellus, vehicula in aliquet quis, euismod id est. Vestibulum eget tellus eros. ', 1, 0, '2023-02-05 09:24:50', '2023-02-22 20:08:36'),
(2, 'Seasoning', 'pcs', 'Sed aliquet neque diam, sit amet fringilla ante tincidunt quis. Suspendisse porta, neque eget pellentesque elementum, augue ex aliquet justo, vel bibendum risus neque in urna. In feugiat sapien vel felis finibus, vitae congue ipsum efficitur', 1, 0, '2023-02-05 09:25:52', '2023-02-05 09:25:52'),
(3, 'Dairy Products', 'pcs', 'Aliquam in sollicitudin eros. Fusce tortor massa, pulvinar ac nunc non, maximus elementum nunc.', 1, 0, '2023-02-05 09:28:35', '2023-02-05 09:28:35'),
(4, 'Meat', 'pcs', 'Curabitur et ornare nisl. Sed non nulla urna. Etiam imperdiet sem turpis, nec cursus mauris malesuada quis.', 1, 0, '2023-02-05 09:30:40', '2023-02-05 09:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE `item_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `unit` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_expiration` date NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`id`, `category_id`, `name`, `unit`, `description`, `status`, `date_expiration`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 'Onion Large', 'pcs', 'Duis nec nulla egestas, porta nibh vitae, interdum massa. Duis blandit quam mauris, vel fermentum libero pulvinar ac. Sed vel tempor urna.', 1, '0000-00-00', 0, '2022-05-28 09:56:19', '2023-02-18 09:56:19'),
(2, 1, 'String Onions', 'pcs', 'Morbi ligula lorem, blandit ac nisl non, facilisis eleifend nunc. Nunc placerat sem dolor, eu bibendum mauris tincidunt et. Suspendisse est ex, vehicula sed cursus nec, pulvinar eu massa.', 1, '0000-00-00', 0, '2022-05-28 09:57:51', '2023-02-18 09:57:51'),
(3, 1, 'Garlic Large', 'pcs', 'Sed sollicitudin, est at semper pellentesque, arcu elit malesuada ex, vel pulvinar nisi quam sed ante.', 1, '0000-00-00', 0, '2022-05-28 09:59:26', '2023-02-19 20:44:55'),
(4, 2, 'Black Pepper (Powder)', 'Pack', 'Praesent posuere tortor sit amet faucibus commodo. Ut luctus sem sit amet turpis ullamcorper, ut ultricies tortor sollicitudin.', 1, '0000-00-00', 0, '2022-05-28 10:00:05', '2023-02-18 10:00:05'),
(8, 4, 'Beef steak', 'Pack ', 'Raw meat ', 1, '0000-00-00', 0, '2023-02-20 18:20:26', '2023-02-20 18:20:26'),
(9, 3, 'Soy beans', '(Pack)', 'sample 1 ', 1, '0000-00-00', 0, '2023-02-20 23:23:00', '2023-02-20 23:23:00'),
(18, 3, 'Coffee blackhole', 'kg', 'dsdczeqw', 1, '0000-00-00', 0, '2023-02-24 23:54:18', '2023-03-03 16:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `stockin_list`
--

CREATE TABLE `stockin_list` (
  `id` int(30) NOT NULL,
  `item_id` int(30) NOT NULL,
  `quantity` float(12,2) NOT NULL DEFAULT 0.00,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockin_list`
--

INSERT INTO `stockin_list` (`id`, `item_id`, `quantity`, `remarks`, `date_created`, `date_updated`, `date`, `expire_date`) VALUES
(2, 4, 25.00, 'Sample', '2022-05-28 10:48:35', '2023-02-20 10:50:30', '2022-05-28', '0000-00-00'),
(4, 4, 35.00, 'Test #101', '2022-05-28 10:57:15', '2023-02-20 10:57:15', '2022-05-13', '0000-00-00'),
(5, 3, 35.00, 'Sample', '2022-05-28 11:27:48', '2023-02-20 11:27:48', '2022-05-19', '0000-00-00'),
(6, 4, 5.00, 'goods', '2023-02-19 18:28:25', '2023-02-19 18:28:25', '2023-02-19', '0000-00-00'),
(7, 3, 5.00, 'add new 5 garlic', '2023-02-19 20:43:25', '2023-02-19 20:43:25', '2023-02-19', '0000-00-00'),
(8, 8, 10.00, 'Fresh Beef Steak (4 pcs/Pack)', '2023-02-20 20:19:13', '2023-02-20 20:19:13', '2023-02-20', '0000-00-00'),
(9, 3, 100.00, 'add fresh', '2023-02-24 23:05:56', '2023-02-24 23:05:56', '2023-02-24', '0000-00-00'),
(11, 1, 5.00, 'zs', '2023-02-25 10:48:10', '2023-02-25 10:48:10', '2023-02-25', '0000-00-00'),
(61, 18, 50.00, 'sdfsfs', '2023-03-10 11:48:16', '2023-03-10 11:48:16', '2023-01-01', '2023-02-02'),
(62, 18, 100.00, 'sdasd', '2023-03-10 11:48:29', '2023-03-10 11:48:29', '2023-01-01', '2023-02-02'),
(63, 18, 150.00, 'sadsdf', '2023-03-10 11:48:38', '2023-03-10 11:48:38', '2023-01-01', '2023-02-02'),
(64, 18, 200.00, 'fdsfs', '2023-03-10 11:48:47', '2023-03-10 11:48:47', '2023-01-01', '2023-02-02'),
(65, 18, 250.00, 'sdfsd', '2023-03-10 11:48:55', '2023-03-10 11:48:55', '2023-01-01', '2023-02-02'),
(66, 18, 250.00, 'asdsd', '2023-03-10 11:49:05', '2023-03-10 11:49:05', '2023-01-01', '2023-02-02'),
(67, 18, 400.00, 'dsfsfser', '2023-03-10 11:49:15', '2023-03-10 11:49:15', '2023-01-01', '2023-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `stockin_list_deleted`
--

CREATE TABLE `stockin_list_deleted` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `remarks` text DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockin_list_deleted`
--

INSERT INTO `stockin_list_deleted` (`id`, `item_id`, `quantity`, `remarks`, `date_created`, `date_updated`, `date`, `expire_date`) VALUES
(40, 18, '20.00', 'SDF', '2023-03-10 10:23:49', '2023-03-10 10:23:49', '2023-01-01', '2023-02-02'),
(41, 18, '200.00', 'ADSAS', '2023-03-10 10:24:00', '2023-03-10 10:24:00', '2023-01-01', '2023-02-02'),
(43, 18, '100.00', 'sdfs', '2023-03-10 10:38:50', '2023-03-10 10:38:50', '2023-01-01', '2023-02-02'),
(44, 18, '100.00', 'sf', '2023-03-10 10:39:41', '2023-03-10 10:39:41', '2023-01-01', '2023-02-02'),
(45, 18, '100.00', 'SDFSD', '2023-03-10 10:40:04', '2023-03-10 10:40:04', '2023-01-01', '2023-02-02'),
(46, 18, '100.00', 'DFSDF', '2023-03-10 10:40:49', '2023-03-10 10:40:49', '2023-01-01', '2023-02-02'),
(47, 18, '500.00', 'DFSDF', '2023-03-10 10:41:01', '2023-03-10 10:41:01', '2023-01-01', '2023-02-02'),
(48, 18, '100.00', 'SDFSD', '2023-03-10 10:45:51', '2023-03-10 10:45:51', '2023-01-01', '2023-02-02'),
(49, 18, '100.00', 'sdfs', '2023-03-10 10:53:50', '2023-03-10 10:53:50', '2023-01-01', '2023-02-02'),
(50, 18, '1000.00', 'sdf', '2023-03-10 10:54:33', '2023-03-10 10:54:33', '2023-01-01', '2023-02-02'),
(51, 18, '100.00', 'sdfs', '2023-03-10 10:55:44', '2023-03-10 10:55:44', '2023-01-01', '2023-02-02'),
(52, 18, '10000.00', 'stockin remarks', '2023-03-10 10:57:03', '2023-03-10 10:57:03', '2023-01-01', '2023-02-03'),
(53, 18, '100.00', 'STOCKIN', '2023-03-10 10:58:00', '2023-03-10 10:58:00', '2023-01-01', '2023-02-08'),
(54, 18, '100.00', 'sdfsdfsdfsdf', '2023-03-10 10:59:07', '2023-03-10 10:59:07', '2023-01-01', '2023-02-02'),
(55, 9, '5000.00', 'STOCKINNN', '2023-03-10 11:00:06', '2023-03-10 11:00:06', '2023-01-29', '2023-03-09'),
(56, 18, '12345.00', 'fixxxx', '2023-03-10 11:01:41', '2023-03-10 11:01:41', '2023-01-01', '2023-02-02'),
(57, 18, '20000.00', 'TANGENAAAMM', '2023-03-10 11:35:24', '2023-03-10 11:35:24', '2023-01-09', '2023-03-09'),
(58, 18, '1.00', 'sef', '2023-03-10 11:39:14', '2023-03-10 11:39:14', '2023-01-01', '2023-02-02'),
(59, 18, '2.00', 'sdfs', '2023-03-10 11:40:48', '2023-03-10 11:40:48', '2023-01-01', '2023-02-02'),
(60, 18, '3.00', 'sdfsdfsdasdfsercwerwa4t34', '2023-03-10 11:44:31', '2023-03-10 11:44:31', '2023-01-01', '2023-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `stockout_list`
--

CREATE TABLE `stockout_list` (
  `id` int(30) NOT NULL,
  `item_id` int(30) NOT NULL,
  `date` date NOT NULL,
  `quantity` float(12,2) NOT NULL DEFAULT 0.00,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockout_list`
--

INSERT INTO `stockout_list` (`id`, `item_id`, `date`, `quantity`, `remarks`, `date_created`, `date_updated`) VALUES
(2, 4, '2022-05-28', 10.00, 'Used', '2023-02-20 10:59:58', '2023-02-20 10:59:58'),
(3, 3, '2022-05-27', 2.00, 'test', '2023-02-20 11:27:58', '2023-02-20 11:27:58'),
(4, 4, '2023-02-19', 10.00, 'sample', '2023-02-19 15:07:36', '2023-02-20 15:07:36'),
(5, 3, '2023-02-19', 3.00, 'Expired yung tatlo', '2023-02-19 20:42:22', '2023-02-19 20:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `stock_notif`
--

CREATE TABLE `stock_notif` (
  `id` int(11) NOT NULL,
  `min_stock` int(11) NOT NULL,
  `max_stock` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_notif`
--

INSERT INTO `stock_notif` (`id`, `min_stock`, `max_stock`, `date_updated`) VALUES
(1, 50, 100, '2023-02-27 08:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Pandayo Coffee WMS'),
(6, 'short_name', 'Pandayo Coffee - WMS'),
(11, 'logo', 'uploads/logo.png?v=1676774105'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1676810350'),
(17, 'phone', '456-987-1231'),
(18, 'mobile', '09123456987 / 094563212222 '),
(19, 'email', 'info@musicschool.com'),
(20, 'address', 'Here St, Down There City, Anywhere Here, 2306 -updated');

-- --------------------------------------------------------

--
-- Table structure for table `users_list`
--

CREATE TABLE `users_list` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='2';

--
-- Dumping data for table `users_list`
--

INSERT INTO `users_list` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Manager', '', 'User', 'manager', '0795151defba7a4b5dfa89170de46277', 'uploads/avatars/1.png?v=1676554601', NULL, 1, '2023-01-20 14:02:37', '2023-02-22 20:04:44'),
(2, 'John Carlo', '', 'Moral', 'john', '1254737c076cf867dc53d60a0364f38e', 'uploads/avatars/2.png?v=1676554943', NULL, 2, '2023-05-28 13:17:24', '2023-02-22 20:05:27'),
(6, 'testadmin', 'testadmin2', 'testadmin3', 'testadmin', '54f822514144d7bb14d70ca0ca1e5fa3', NULL, NULL, 1, '2023-02-17 01:49:30', '2023-02-17 01:49:30'),
(7, 'Darryl', '', 'Panis', 'darryl123', '0a1871d3d800c50075a6b8806d05c0e2', NULL, NULL, 2, '2023-02-17 02:02:04', '2023-02-17 02:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `waste_list`
--

CREATE TABLE `waste_list` (
  `id` int(30) NOT NULL,
  `item_id` int(30) NOT NULL,
  `date` date NOT NULL,
  `quantity` float(12,2) NOT NULL DEFAULT 0.00,
  `remarks` text NOT NULL,
  `expire_date` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waste_list`
--

INSERT INTO `waste_list` (`id`, `item_id`, `date`, `quantity`, `remarks`, `expire_date`, `date_created`, `date_updated`) VALUES
(52, 18, '2023-01-01', 10000.00, 'stockin remarks', '2023-02-03', '2023-03-10 10:57:03', '2023-03-10 10:57:03'),
(53, 18, '2023-01-01', 100.00, 'exp', '2023-02-08', '2023-03-10 10:58:00', '2023-03-10 10:58:00'),
(54, 18, '2023-01-01', 100.00, 'new', '2023-02-02', '2023-03-10 10:59:07', '2023-03-10 10:59:07'),
(55, 9, '2023-01-29', 5000.00, 'dapat sa expired', '2023-03-09', '2023-03-10 11:00:06', '2023-03-10 11:00:06'),
(56, 18, '2023-01-01', 12345.00, 'not fixxx', '2023-02-02', '2023-03-10 11:01:41', '2023-03-10 11:01:41'),
(57, 18, '2023-01-09', 20000.00, 'TANGENAAMMMMMMMMMM', '2023-03-09', '2023-03-10 11:35:24', '2023-03-10 11:35:24'),
(58, 18, '2023-01-01', 1.00, 'sefff', '2023-02-02', '2023-03-10 11:39:14', '2023-03-10 11:39:14'),
(59, 18, '2023-01-01', 2.00, 'w', '2023-02-02', '2023-03-10 11:40:48', '2023-03-10 11:40:48'),
(60, 18, '2023-01-01', 3.00, 'tang', '2023-02-02', '2023-03-10 11:44:31', '2023-03-10 11:44:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_list`
--
ALTER TABLE `item_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `stockin_list`
--
ALTER TABLE `stockin_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `stockin_list_deleted`
--
ALTER TABLE `stockin_list_deleted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockout_list`
--
ALTER TABLE `stockout_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `stock_notif`
--
ALTER TABLE `stock_notif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_list`
--
ALTER TABLE `users_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waste_list`
--
ALTER TABLE `waste_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_list`
--
ALTER TABLE `item_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `stockin_list`
--
ALTER TABLE `stockin_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `stockin_list_deleted`
--
ALTER TABLE `stockin_list_deleted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `stockout_list`
--
ALTER TABLE `stockout_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_notif`
--
ALTER TABLE `stock_notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_list`
--
ALTER TABLE `users_list`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `waste_list`
--
ALTER TABLE `waste_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_list`
--
ALTER TABLE `item_list`
  ADD CONSTRAINT `category_id_fk_il` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stockin_list`
--
ALTER TABLE `stockin_list`
  ADD CONSTRAINT `item_id_fk_sl` FOREIGN KEY (`item_id`) REFERENCES `item_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stockout_list`
--
ALTER TABLE `stockout_list`
  ADD CONSTRAINT `item_id_fk_sol` FOREIGN KEY (`item_id`) REFERENCES `item_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `waste_list`
--
ALTER TABLE `waste_list`
  ADD CONSTRAINT `item_id_fk_wl` FOREIGN KEY (`item_id`) REFERENCES `item_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
