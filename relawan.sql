-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 08:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swarapita`
--

-- --------------------------------------------------------

--
-- Table structure for table `relawan`
--

CREATE TABLE `relawan` (
  `nik` varchar(256) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `tempat_lahir` varchar(256) NOT NULL,
  `jk` int(11) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `provinsi` int(11) NOT NULL,
  `kabupaten` int(11) NOT NULL,
  `kelurahan` bigint(20) NOT NULL,
  `kecamatan` int(11) NOT NULL,
  `hpwa` varchar(256) NOT NULL,
  `as_koor` int(11) NOT NULL,
  `source` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `penginput` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relawan`
--

INSERT INTO `relawan` (`nik`, `nama`, `tempat_lahir`, `jk`, `tgl_lahir`, `alamat`, `rt`, `rw`, `provinsi`, `kabupaten`, `kelurahan`, `kecamatan`, `hpwa`, `as_koor`, `source`, `created_at`, `updated_at`, `penginput`) VALUES
('2713981278901237', 'aklsdoaksdjads', 'askndlaskdn', 1, '2021-12-16', 'dssdadsasdaasd', 2, 2, 32, 3275, 3275011001, 327501, '123132123', 1, 'form', '2022-03-08 03:47:20', NULL, 'admin'),
('321', 'dika coba', 'medan', 1, '2021-12-08', 'jalan mekatani', 11, 1, 32, 3275, 3275011001, 327501, '08116051721', 1, 'form', '2022-03-08 03:32:03', '2022-03-08 03:34:26', 'budi'),
('333333333', 'dsdasdas', 'asdasdasdasd', 2, '2022-03-10', 'asdasddas', 123, 123, 32, 3275, 3275011001, 327501, '312123312', 1, 'form', '2022-03-08 03:46:26', NULL, NULL),
('461', 'begeng', 'mandalika', 1, '2021-12-08', 'jasklasnk', 1, 21, 32, 3276, 3276011006, 327601, '0811122321', 1, 'form', '2022-03-08 03:33:23', NULL, 'dika'),
('8813', 'Dasdo Purba', 'medan', 1, '2021-09-09', 'Jalan Mekatani GG syukur no 238E', 31, 1, 32, 3275, 3275011001, 327501, '08116061811', 1, 'form', '2022-03-08 03:13:14', NULL, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `relawan`
--
ALTER TABLE `relawan`
  ADD UNIQUE KEY `nik_2` (`nik`),
  ADD KEY `nik` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
