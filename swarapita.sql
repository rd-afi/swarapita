-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 09:47 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '10406c1d7b7421b1a56f0d951e952a95');

-- --------------------------------------------------------

--
-- Table structure for table `data_kpu`
--

CREATE TABLE `data_kpu` (
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kpu`
--

INSERT INTO `data_kpu` (`nik`, `nama`, `lokasi`) VALUES
('321', 'dika gaharu', 'tps 62'),
('461', 'begeng', 'lokasi 82 bekasi');

-- --------------------------------------------------------

--
-- Table structure for table `reg_districts`
--

CREATE TABLE `reg_districts` (
  `id` char(8) NOT NULL,
  `regency_id` char(5) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_districts`
--

INSERT INTO `reg_districts` (`id`, `regency_id`, `name`) VALUES
('327501', '3275', 'Bekasi Timur'),
('327502', '3275', 'Bekasi Barat'),
('327503', '3275', 'Bekasi Utara'),
('327504', '3275', 'Bekasi Selatan'),
('327505', '3275', 'Rawalumbu'),
('327506', '3275', 'Medansatria'),
('327507', '3275', 'Bantargebang'),
('327508', '3275', 'Pondokgede'),
('327509', '3275', 'Jatiasih'),
('327510', '3275', 'Jatisampurna'),
('327511', '3275', 'Mustikajaya'),
('327512', '3275', 'Pondokmelati'),
('327601', '3276', 'Pancoran Mas'),
('327602', '3276', 'Cimanggis'),
('327603', '3276', 'Sawangan'),
('327604', '3276', 'Limo'),
('327605', '3276', 'Sukmajaya'),
('327606', '3276', 'Beji'),
('327607', '3276', 'Cipayung'),
('327608', '3276', 'Cilodong'),
('327609', '3276', 'Cinere'),
('327610', '3276', 'Tapos'),
('327611', '3276', 'Bojongsari');

-- --------------------------------------------------------

--
-- Table structure for table `reg_provinces`
--

CREATE TABLE `reg_provinces` (
  `id` char(2) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_provinces`
--

INSERT INTO `reg_provinces` (`id`, `name`) VALUES
('32', 'JAWA BARAT');

-- --------------------------------------------------------

--
-- Table structure for table `reg_regencies`
--

CREATE TABLE `reg_regencies` (
  `id` char(5) NOT NULL,
  `province_id` char(2) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_regencies`
--

INSERT INTO `reg_regencies` (`id`, `province_id`, `name`) VALUES
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK');

-- --------------------------------------------------------

--
-- Table structure for table `reg_villages`
--

CREATE TABLE `reg_villages` (
  `id` char(13) NOT NULL,
  `district_id` char(8) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_villages`
--

INSERT INTO `reg_villages` (`id`, `district_id`, `name`) VALUES
('3275011001', '327501', 'Bekasijaya'),
('3275011002', '327501', 'Margahayu'),
('3275011003', '327501', 'Durenjaya'),
('3275011004', '327501', 'Arenjaya'),
('3275021001', '327502', 'Bintara'),
('3275021002', '327502', 'Kranji'),
('3275021003', '327502', 'Kotabaru'),
('3275021004', '327502', 'Bintarajaya'),
('3275021005', '327502', 'Jakasampurna'),
('3275031001', '327503', 'Kaliabang Tengah'),
('3275031002', '327503', 'Perwira'),
('3275031003', '327503', 'Harapanbaru'),
('3275031004', '327503', 'Teluk Pucung'),
('3275031005', '327503', 'Margamulya'),
('3275031006', '327503', 'Harapanjaya'),
('3275041001', '327504', 'Pekayonjaya'),
('3275041002', '327504', 'Margajaya'),
('3275041003', '327504', 'Jakamulya'),
('3275041004', '327504', 'Jakasetia'),
('3275041005', '327504', 'Kayuringinjaya'),
('3275051001', '327505', 'Bojong Rawalumbu'),
('3275051002', '327505', 'Pengasinan'),
('3275051003', '327505', 'Sepanjangjaya'),
('3275051004', '327505', 'Bojongmenteng'),
('3275061001', '327506', 'Medansatria'),
('3275061002', '327506', 'Harapanmulya'),
('3275061003', '327506', 'Pejuang'),
('3275061004', '327506', 'Kalibaru'),
('3275071003', '327507', 'Bantargebang'),
('3275071004', '327507', 'Cikiwul'),
('3275071007', '327507', 'Ciketingudik'),
('3275071008', '327507', 'Sumurbatu'),
('3275081001', '327508', 'Jatiwaringin'),
('3275081002', '327508', 'Jatibening'),
('3275081003', '327508', 'Jatimakmur'),
('3275081006', '327508', 'Jatibening Baru'),
('3275081007', '327508', 'Jaticempaka'),
('3275091001', '327509', 'Jatimekar'),
('3275091002', '327509', 'Jatiasih'),
('3275091003', '327509', 'Jatikramat'),
('3275091004', '327509', 'Jatirasa'),
('3275091005', '327509', 'Jatiluhur'),
('3275091006', '327509', 'Jatisari'),
('3275101001', '327510', 'Jatisampurna'),
('3275101002', '327510', 'Jatikarya'),
('3275101003', '327510', 'Jatiranggon'),
('3275101004', '327510', 'Jatirangga'),
('3275101005', '327510', 'Jatiraden'),
('3275111001', '327511', 'Padurenan'),
('3275111002', '327511', 'Cimuning'),
('3275111003', '327511', 'Mustikajaya'),
('3275111004', '327511', 'Mustikasari'),
('3275121001', '327512', 'Jatirahayu'),
('3275121002', '327512', 'Jatiwarna'),
('3275121003', '327512', 'Jatimelati'),
('3275121004', '327512', 'Jatimurni'),
('3276011006', '327601', 'Depok'),
('3276011007', '327601', 'Depok Jaya'),
('3276011008', '327601', 'Pancoran Mas'),
('3276011009', '327601', 'Mampang'),
('3276011010', '327601', 'Rangkapan Jaya Baru'),
('3276011011', '327601', 'Rangkapan Jaya'),
('3276021007', '327602', 'Harjamukti'),
('3276021008', '327602', 'Curug'),
('3276021009', '327602', 'Tugu'),
('3276021010', '327602', 'Mekarsari'),
('3276021011', '327602', 'Pasir Gunung Selatan'),
('3276021012', '327602', 'Cisalak Pasar'),
('3276031001', '327603', 'Pasir Putih'),
('3276031002', '327603', 'Bedahan'),
('3276031003', '327603', 'Pengasinan'),
('3276031009', '327603', 'Cinangka'),
('3276031010', '327603', 'Sawangan'),
('3276031011', '327603', 'Sawangan Baru'),
('3276031012', '327603', 'Kedaung'),
('3276041001', '327604', 'Maruyung'),
('3276041002', '327604', 'Grogol'),
('3276041003', '327604', 'Krukut'),
('3276041004', '327604', 'Limo'),
('3276051001', '327605', 'Sukmajaya'),
('3276051003', '327605', 'Abadi Jaya'),
('3276051004', '327605', 'Mekar Jaya'),
('3276051005', '327605', 'Baktijaya'),
('3276051008', '327605', 'Cisalak'),
('3276051010', '327605', 'Tirtajaya'),
('3276061001', '327606', 'Beji'),
('3276061002', '327606', 'Kukusan'),
('3276061003', '327606', 'Tanah Baru'),
('3276061004', '327606', 'Kemiri Muka'),
('3276061005', '327606', 'Pondok Cina'),
('3276061006', '327606', 'Beji Timur'),
('3276071001', '327607', 'Cipayung'),
('3276071002', '327607', 'Cipayung Jaya'),
('3276071003', '327607', 'Ratu Jaya'),
('3276071004', '327607', 'Bojong Pondok Terong'),
('3276071005', '327607', 'Pondok Jaya'),
('3276081001', '327608', 'Sukamaju'),
('3276081002', '327608', 'Cilodong'),
('3276081003', '327608', 'Kalibaru'),
('3276081004', '327608', 'Kalimulya'),
('3276081005', '327608', 'Jatimulya'),
('3276091001', '327609', 'Cinere'),
('3276091002', '327609', 'Gandul'),
('3276091003', '327609', 'Pangkalan Jati'),
('3276091004', '327609', 'Pangkalan Jati Baru'),
('3276101001', '327610', 'Tapos'),
('3276101002', '327610', 'Leuwinanggung'),
('3276101003', '327610', 'Sukatani'),
('3276101004', '327610', 'Sukamaju Baru'),
('3276101005', '327610', 'Jatijajar'),
('3276101006', '327610', 'Cilangkap'),
('3276101007', '327610', 'Cimpaeun'),
('3276111001', '327611', 'Bojongsari'),
('3276111002', '327611', 'Bojongsari Baru'),
('3276111003', '327611', 'Serua'),
('3276111004', '327611', 'Pondok Petir'),
('3276111005', '327611', 'Curug'),
('3276111006', '327611', 'Duren Mekar'),
('3276111007', '327611', 'Duren Seribu');

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
  `rt` varchar(11) NOT NULL,
  `rw` varchar(11) NOT NULL,
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
('2713981278901237', 'aklsdoaksdjads', 'askndlaskdn', 1, '2021-12-16', 'dssdadsasdaasd', '2', '2', 32, 3275, 3275011001, 327501, '123132123', 1, 'form', '2022-03-08 03:47:20', NULL, 'admin'),
('321', 'dika coba', 'medan', 1, '2021-12-08', 'jalan mekatani', '11', '1', 32, 3275, 3275011001, 327501, '08116051721', 1, 'form', '2022-03-08 03:32:03', '2022-03-08 03:34:26', 'admin'),
('333333333', 'dsdasdas', 'asdasdasdasd', 2, '2022-03-10', 'asdasddas', '123', '123', 32, 3275, 3275011001, 327501, '312123312', 1, 'form', '2022-03-08 03:46:26', NULL, NULL),
('461', 'begeng', 'mandalika', 1, '2021-12-08', 'jasklasnk', '01', '21', 32, 3276, 3276011006, 327601, '0811122321', 1, 'form', '2022-03-08 03:33:23', NULL, 'admin'),
('8813', 'Dasdo Purba', 'medan', 1, '2021-09-09', 'Jalan Mekatani GG syukur no 238E', '031', '001', 32, 3275, 3275011001, 327501, '08116061811', 1, 'form', '2022-03-08 03:13:14', NULL, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `reg_districts`
--
ALTER TABLE `reg_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_regency_id_index` (`regency_id`) USING BTREE;

--
-- Indexes for table `reg_provinces`
--
ALTER TABLE `reg_provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_regencies`
--
ALTER TABLE `reg_regencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regencies_province_id_index` (`province_id`) USING BTREE;

--
-- Indexes for table `reg_villages`
--
ALTER TABLE `reg_villages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `villages_district_id_index` (`district_id`);

--
-- Indexes for table `relawan`
--
ALTER TABLE `relawan`
  ADD UNIQUE KEY `nik_2` (`nik`),
  ADD KEY `nik` (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reg_districts`
--
ALTER TABLE `reg_districts`
  ADD CONSTRAINT `district_regency_foreign` FOREIGN KEY (`regency_id`) REFERENCES `reg_regencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reg_regencies`
--
ALTER TABLE `reg_regencies`
  ADD CONSTRAINT `regency_province_foreign` FOREIGN KEY (`province_id`) REFERENCES `reg_provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reg_villages`
--
ALTER TABLE `reg_villages`
  ADD CONSTRAINT `village_district_foreign` FOREIGN KEY (`district_id`) REFERENCES `reg_districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
