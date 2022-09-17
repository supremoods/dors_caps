-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 07:26 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dors-website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'rome', '4462522');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `c_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`c_no`, `name`, `picture`) VALUES
(7, 'dwadawdaw', 'IMG_69794.png'),
(8, 'Collage', 'IMG_96282.png'),
(10, 'Image', 'IMG_69180.png');

-- --------------------------------------------------------

--
-- Table structure for table `client_cred`
--

CREATE TABLE `client_cred` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(120) NOT NULL,
  `mnumber` int(150) NOT NULL,
  `password` int(150) NOT NULL,
  `profilepic` varchar(100) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(100) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `concern`
--

CREATE TABLE `concern` (
  `s_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(350) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `concern`
--

INSERT INTO `concern` (`s_id`, `name`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(19, 'Reymond', 'dwadawda@dawdas', 'dwadaw', 'dawdawdawda', '2022-09-10', 0),
(20, 'Jerome', 'jeromevillajos12@gmail.com', 'Many errors', 'Daming error', '2022-09-10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `cd_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `gmap` varchar(250) NOT NULL,
  `mn1` int(30) NOT NULL,
  `mn2` int(15) NOT NULL,
  `mail` varchar(250) NOT NULL,
  `tw` varchar(250) NOT NULL,
  `fb` varchar(250) NOT NULL,
  `iframe` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`cd_id`, `address`, `gmap`, `mn1`, `mn2`, `mail`, `tw`, `fb`, `iframe`) VALUES
(1, 'Longos, Malabon', 'https://goo.gl/maps/VZomZsNYu12ehXJT7', 123456789, 0, 'diakoisangrobot12@gmail.com', 'https://www.twitter.com/', 'https://www.facebook.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3860.117569972251!2d120.95702681375505!3d14.649266879812126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397b5b6ba02957f:0x91b89c7caf3fb618!2s20 Hasa-Hasa!5e0!3m2!1sfil!2sph!4v1659932886552!5m2!1sfil!2sph');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `features` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `web-settings`
--

CREATE TABLE `web-settings` (
  `s_id` int(11) NOT NULL,
  `web_title` varchar(50) NOT NULL,
  `web_about` varchar(450) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web-settings`
--

INSERT INTO `web-settings` (`s_id`, `web_title`, `web_about`, `shutdown`) VALUES
(1, 'Rome webaa', 'dawdawdawdawd', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`c_no`);

--
-- Indexes for table `client_cred`
--
ALTER TABLE `client_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `concern`
--
ALTER TABLE `concern`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`cd_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web-settings`
--
ALTER TABLE `web-settings`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `c_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client_cred`
--
ALTER TABLE `client_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `concern`
--
ALTER TABLE `concern`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web-settings`
--
ALTER TABLE `web-settings`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
