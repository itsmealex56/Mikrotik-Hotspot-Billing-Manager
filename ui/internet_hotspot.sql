-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2018 at 01:40 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internet_hotspot`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appconfig`
--

CREATE TABLE `tbl_appconfig` (
  `id` int(11) NOT NULL,
  `setting` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_appconfig`
--

INSERT INTO `tbl_appconfig` (`id`, `setting`, `value`) VALUES
(1, 'CompanyName', 'ITEA SOLUTIONS INTERNET SERVICES'),
(2, 'theme', 'default'),
(3, 'currency_code', 'PHP'),
(4, 'language', 'english'),
(5, 'show-logo', '1'),
(6, 'nstyle', 'blue'),
(7, 'timezone', 'Asia/Manila'),
(8, 'dec_point', ','),
(9, 'thousands_sep', '.'),
(10, 'rtl', '0'),
(11, 'address', 'ZAMBOANGA CITY\r\nPHILIPPINES 7000'),
(12, 'phone', '0912-345-6789'),
(13, 'date_format', 'd M Y'),
(14, 'note', 'Thank you for your patronage!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bandwidth`
--

CREATE TABLE `tbl_bandwidth` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_bw` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate_down` int(10) UNSIGNED NOT NULL,
  `rate_down_unit` enum('Kbps','Mbps') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate_up` int(10) UNSIGNED NOT NULL,
  `rate_up_unit` enum('Kbps','Mbps') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bandwidth`
--

INSERT INTO `tbl_bandwidth` (`id`, `name_bw`, `rate_down`, `rate_down_unit`, `rate_up`, `rate_up_unit`) VALUES
(1, '2 Mbps', 2, 'Mbps', 1, 'Mbps'),
(2, '5 Mbps', 5, 'Mbps', 3, 'Mbps');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(10) NOT NULL,
  `username` varchar(45) CHARACTER SET latin1 NOT NULL,
  `password` varchar(45) CHARACTER SET latin1 NOT NULL,
  `fullname` varchar(45) CHARACTER SET latin1 NOT NULL,
  `address` text CHARACTER SET latin1,
  `phonenumber` varchar(20) CHARACTER SET latin1 DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `folder` varchar(32) NOT NULL,
  `author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `folder`, `author`) VALUES
(1, 'Indonesia', 'indonesia', 'Ismail Marzuqi'),
(2, 'English', 'english', 'Ismail Marzuqi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`) VALUES
(1, '2018-02-21 14:28:40', 'Admin', 'admin Login Successful', 1, '::1'),
(2, '2018-02-21 14:29:42', 'Admin', '[admin]: Settings Saved Successfully', 1, '::1'),
(3, '2018-02-21 14:30:11', 'Admin', '[admin]: Settings Saved Successfully', 1, '::1'),
(4, '2018-02-21 15:51:43', 'Admin', 'admin Login Successful', 1, '::1'),
(5, '2018-02-21 16:12:18', 'Admin', 'admin Login Successful', 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(10) NOT NULL,
  `from_user` varchar(32) CHARACTER SET latin1 NOT NULL,
  `to_user` varchar(32) CHARACTER SET latin1 NOT NULL,
  `title` varchar(60) CHARACTER SET latin1 NOT NULL,
  `message` text CHARACTER SET latin1 NOT NULL,
  `status` enum('0','1') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plans`
--

CREATE TABLE `tbl_plans` (
  `id` int(10) NOT NULL,
  `name_plan` varchar(40) CHARACTER SET latin1 NOT NULL,
  `id_bw` int(10) NOT NULL,
  `price` varchar(40) CHARACTER SET latin1 NOT NULL,
  `type` enum('Hotspot','PPPOE') CHARACTER SET latin1 NOT NULL,
  `typebp` enum('Unlimited','Limited') CHARACTER SET latin1 DEFAULT NULL,
  `limit_type` enum('Time_Limit','Data_Limit','Both_Limit') CHARACTER SET latin1 DEFAULT NULL,
  `time_limit` int(10) UNSIGNED DEFAULT NULL,
  `time_unit` enum('Mins','Hrs') CHARACTER SET latin1 DEFAULT NULL,
  `data_limit` int(10) UNSIGNED DEFAULT NULL,
  `data_unit` enum('MB','GB') CHARACTER SET latin1 DEFAULT NULL,
  `validity` int(10) NOT NULL,
  `validity_unit` enum('Days','Months') CHARACTER SET latin1 NOT NULL,
  `shared_users` int(10) DEFAULT NULL,
  `routers` varchar(32) CHARACTER SET latin1 NOT NULL,
  `pool` varchar(40) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pool`
--

CREATE TABLE `tbl_pool` (
  `id` int(10) NOT NULL,
  `pool_name` varchar(40) NOT NULL,
  `range_ip` varchar(40) NOT NULL,
  `routers` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_routers`
--

CREATE TABLE `tbl_routers` (
  `id` int(10) NOT NULL,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `ip_address` varchar(128) CHARACTER SET latin1 NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(60) CHARACTER SET latin1 NOT NULL,
  `description` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_routers`
--

INSERT INTO `tbl_routers` (`id`, `name`, `ip_address`, `username`, `password`, `description`) VALUES
(1, 'HapMini', '192.168.88.1', 'admin', '', 'wifi-xtreme.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id` int(10) NOT NULL,
  `invoice` varchar(25) NOT NULL,
  `username` varchar(32) NOT NULL,
  `plan_name` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `recharged_on` date NOT NULL,
  `expiration` date NOT NULL,
  `time` time NOT NULL,
  `method` enum('voucher','admin') NOT NULL,
  `routers` varchar(32) NOT NULL,
  `type` enum('Hotspot','PPPOE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `fullname` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `password` text CHARACTER SET latin1 NOT NULL,
  `user_type` enum('Admin','Sales') CHARACTER SET latin1 NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET latin1 NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `creationdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `fullname`, `password`, `user_type`, `status`, `last_login`, `creationdate`) VALUES
(1, 'admin', 'Administrator', '$1$W44.ns/.$MUnR0NeBH9xAcXm0Oku2h1', 'Admin', 'Active', '2018-02-21 16:12:17', '2014-06-23 01:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_recharges`
--

CREATE TABLE `tbl_user_recharges` (
  `id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `username` varchar(32) CHARACTER SET latin1 NOT NULL,
  `plan_id` int(10) NOT NULL,
  `namebp` varchar(40) CHARACTER SET latin1 NOT NULL,
  `recharged_on` date NOT NULL,
  `expiration` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 NOT NULL,
  `method` enum('voucher','admin') CHARACTER SET latin1 NOT NULL,
  `routers` varchar(32) CHARACTER SET latin1 NOT NULL,
  `type` varchar(15) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher`
--

CREATE TABLE `tbl_voucher` (
  `id` int(10) NOT NULL,
  `type` enum('Hotspot','PPPOE') CHARACTER SET latin1 NOT NULL,
  `routers` varchar(32) CHARACTER SET latin1 NOT NULL,
  `id_plan` int(10) NOT NULL,
  `code` varchar(55) CHARACTER SET latin1 NOT NULL,
  `user` varchar(45) CHARACTER SET latin1 NOT NULL,
  `status` varchar(25) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_appconfig`
--
ALTER TABLE `tbl_appconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bandwidth`
--
ALTER TABLE `tbl_bandwidth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plans`
--
ALTER TABLE `tbl_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pool`
--
ALTER TABLE `tbl_pool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_routers`
--
ALTER TABLE `tbl_routers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_recharges`
--
ALTER TABLE `tbl_user_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_appconfig`
--
ALTER TABLE `tbl_appconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_bandwidth`
--
ALTER TABLE `tbl_bandwidth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_plans`
--
ALTER TABLE `tbl_plans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pool`
--
ALTER TABLE `tbl_pool`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_routers`
--
ALTER TABLE `tbl_routers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user_recharges`
--
ALTER TABLE `tbl_user_recharges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
